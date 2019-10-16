; ModuleID = '../binary/test.mcsema.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_4004d0__init_type = type <{ [23 x i8] }>
%seg_4004f0__plt_type = type <{ [96 x i8] }>
%seg_400550__text_type = type <{ [2786 x i8] }>
%seg_401034__fini_type = type <{ [9 x i8] }>
%seg_401040__rodata_type = type <{ [80 x i8], [53 x i8], [31 x i8], [31 x i8], [31 x i8] }>
%seg_401124__eh_frame_hdr_type = type <{ [156 x i8] }>
%seg_4011c0__eh_frame_type = type <{ [592 x i8] }>
%seg_601df0__init_array_type = type <{ i64, i64 }>
%seg_601ff0__got_type = type <{ i64, i64 }>
%seg_602000__got_plt_type = type <{ [24 x i8], i64, i64, i64, i64, i64 }>
%seg_602040__data_type = type <{ [16 x i8] }>
%Version_type = type <{ [4 x i8] }>
%seg_602060__bss_type = type <{ [16 x i8] }>
%Char1Glob_type = type <{ [8 x i8] }>
%PtrGlb_type = type <{ [8 x i8] }>
%Array2Glob_type = type <{ [20816 x i8] }>
%Array1Glob_type = type <{ [408 x i8] }>
%IntGlob_type = type <{ [8 x i8] }>
%BoolGlob_type = type <{ [4 x i8] }>
%Char2Glob_type = type <{ [4 x i8] }>
%PtrGlbNext_type = type <{ [8 x i8] }>
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
@seg_4004d0__init = internal constant %seg_4004d0__init_type <{ [23 x i8] c"H\83\EC\08H\8B\05\1D\1B \00H\85\C0t\02\FF\D0H\83\C4\08\C3" }>
@seg_4004f0__plt = internal constant %seg_4004f0__plt_type <{ [96 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF%\12\1B \00\00\00\00\00\00\00\00\00\00\00\FF%\0A\1B \00\00\00\00\00\00\00\00\00\00\00\FF%\02\1B \00\00\00\00\00\00\00\00\00\00\00\FF%\FA\1A \00\00\00\00\00\00\00\00\00\00\00\FF%\F2\1A \00\00\00\00\00\00\00\00\00\00\00" }>
@seg_400550__text = internal constant %seg_400550__text_type <{ [2786 x i8] c"1\EDI\89\D1^H\89\E2H\83\E4\F0PTI\C7\C00\10@\00H\C7\C1\C0\0F@\00H\C7\C7@\06@\00\FF\15v\1A \00\F4\0F\1FD\00\00\F3\C3f.\0F\1F\84\00\00\00\00\00\0F\1F@\00U\B8X `\00H=X `\00H\89\E5t\17\B8\00\00\00\00H\85\C0t\0D]\BFX `\00\FF\E0\0F\1FD\00\00]\C3f\0F\1FD\00\00\BEX `\00UH\81\EEX `\00H\89\E5H\C1\FE\03H\89\F0H\C1\E8?H\01\C6H\D1\FEt\15\B8\00\00\00\00H\85\C0t\0B]\BFX `\00\FF\E0\0F\1F\00]\C3f\0F\1FD\00\00\80=Y\1A \00\00u\17UH\89\E5\E8~\FF\FF\FF\C6\05G\1A \00\01]\C3\0F\1FD\00\00\F3\C3\0F\1F@\00f.\0F\1F\84\00\00\00\00\00UH\89\E5]\EB\89f\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC H\B8\90\10@\00\00\00\00\00\B9\08\00\00\00\89\CA\C7E\FC\00\00\00\00\89}\F8H\89u\F0H\89\C7H\89\D6\B0\00\E8\AC\FE\FF\FF\89E\EC\E8\14\00\00\001\C9\89E\E8\89\C8H\83\C4 ]\C3\0F\1F\80\00\00\00\00UH\89\E5H\81\EC\F0\00\00\00\E8p\FE\FF\FFH\89E\80\C7E\8C\00\00\00\00\81}\8C\00\E1\F5\05\0F\83\13\00\00\00\E9\00\00\00\00\8BE\8C\83\C0\01\89E\8C\E9\E0\FF\FF\FF\E8@\FE\FF\FF\B98\00\00\00\89\CFH+E\80H\89\85p\FF\FF\FF\E8Y\FE\FF\FF\B98\00\00\00\89\CFH\89\04%xs`\00\E8E\FE\FF\FF\F2\0F\10\05E\09\00\00H\8D}\B0\F2\0F\10\0DA\09\00\00H\89\04%x `\00H\8B\04%xs`\00H\8B\14%x `\00H\89\02H\8B\04%x `\00\C7@\08\00\00\00\00H\8B\04%x `\00\C7@\0C\11'\00\00H\8B\04%x `\00\F2\0F\11H\10H\8B\04%x `\00H\83\C0\18\B9\C5\10@\00\89\CEH\89\BDh\FF\FF\FFH\89\C7\F2\0F\11\85`\FF\FF\FF\E8\81\FD\FF\FF\B9\E4\10@\00\89\CEH\8B\BDh\FF\FF\FFH\89\85X\FF\FF\FF\E8g\FD\FF\FF\F2\0F\10\85`\FF\FF\FF\F2\0F\11\04%x-`\00H\89\85P\FF\FF\FF\E8Z\FD\FF\FFH\89E\80\C7E\8C\00\00\00\00\81}\8C\00\E1\F5\05\0F\83\E2\01\00\00\E8\ED\01\00\00\89\85L\FF\FF\FF\E8\02\02\00\00H\8DM\90H\8D}\B0\F2\0F\10\05j\08\00\00\F2\0F\10\0Dj\08\00\00\F2\0F\11M\F0\F2\0F\11E\E8\BA\03\11@\00\89\D6H\89\BD@\FF\FF\FFH\89\CF\89\85<\FF\FF\FFH\89\8D0\FF\FF\FF\E8\DD\FC\FF\FF\C7E\D8\10'\00\00H\8B\BD@\FF\FF\FFH\8B\B50\FF\FF\FFH\89\85(\FF\FF\FF\E8\DC\01\00\00\83\F8\00A\0F\95\C0A\80\F0\FFA\80\E0\01A\0F\B6\C0\89\04%ps`\00\F2\0F\10E\F0\F2\0F\10M\E8f\0F.\C8\0F\86G\00\00\00H\8D}\E0\F2\0F\10\05\FA\07\00\00\F2\0FYE\F0\F2\0F\5CE\E8\F2\0F\11E\E0\F2\0F\10E\F0\F2\0F\10M\E8\E8\84\02\00\00\F2\0F\10\05\CC\07\00\00\F2\0FXE\F0\F2\0F\11E\F0\89\85$\FF\FF\FF\E9\A5\FF\FF\FFH\BF\D0q`\00\00\00\00\00H\BE\80 `\00\00\00\00\00\F2\0F\10E\F0\F2\0F\10M\E0\E8\84\02\00\00H\8B<%x `\00\89\85 \FF\FF\FF\E8\E1\03\00\00\C6E\DEA\89\85\1C\FF\FF\FF\0F\BEE\DE\0F\BE\0C%ts`\009\C8\0F\8FH\00\00\00\BEC\00\00\00\8BE\D8\0F\BE}\DE\89\85\18\FF\FF\FF\E8\FC\03\00\00\8B\B5\18\FF\FF\FF9\C6\0F\85\11\00\00\001\FFH\8Du\D8\E83\04\00\00\89\85\14\FF\FF\FF\E9\00\00\00\00\8AE\DE\04\01\88E\DE\E9\A4\FF\FF\FFH\8D}\F0\F2\0F\10\05\07\07\00\00\F2\0F\10M\E8\F2\0FYM\F0\F2\0F\11M\E0\F2\0F\10M\E0\F2\0F^M\F0\F2\0F\11M\E8\F2\0F\10M\E0\F2\0F\5CM\E8\F2\0FY\C1\F2\0F\5CE\F0\F2\0F\11E\E8\E8\E4\04\00\00\89\85\10\FF\FF\FF\8BE\8C\83\C0\01\89E\8C\E9\11\FE\FF\FF\8BE\FCH\81\C4\F0\00\00\00]\C3\0F\1F@\00UH\89\E5\C6\04%p `\00A\C7\04%ps`\00\00\00\00\00\8BE\FC]\C3\0F\1F@\00UH\89\E5\0F\BE\04%p `\00\83\F8A\0F\94\C1\80\E1\01\0F\B6\C1\89E\F8\8B\04%ps`\00\0BE\F8\89E\F8\C6\04%ts`\00B\8BE\FC]\C3ff.\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC0\F2\0F\10\05@\06\00\00H\89}\F0H\89u\E8\F2\0F\11E\E0\F2\0F\10\05+\06\00\00f\0F.E\E0\0F\82L\00\00\00H\8BE\F0\F2\0F,M\E0Hc\D1\0F\BE<\10H\8BE\E8\F2\0F,M\E0\83\C1\01Hc\D1\0F\BE4\10\E8\A8\02\00\00\83\F8\00\0F\85\16\00\00\00\F2\0F\10\05\E7\05\00\00\C6E\DFA\F2\0FXE\E0\F2\0F\11E\E0\E9\A1\FF\FF\FF\0F\BEE\DF\83\F8W\0F\8C\1A\00\00\00\0F\BEE\DF\83\F8Z\0F\8F\0D\00\00\00\F2\0F\10\05\AA\05\00\00\F2\0F\11E\E0\0F\BEE\DF\83\F8X\0F\85\0C\00\00\00\C7E\FC\01\00\00\00\E9;\00\00\00H\8B}\F0H\8Bu\E8\E8G\FA\FF\FF\83\F8\00\0F\8E\1E\00\00\00\F2\0F\10\05n\05\00\00\F2\0FXE\E0\F2\0F\11E\E0\C7E\FC\01\00\00\00\E9\07\00\00\00\C7E\FC\00\00\00\00\8BE\FCH\83\C40]\C3UH\89\E5\F2\0F\10\154\05\00\00\F2\0F\11E\F0\F2\0F\11M\E8H\89}\E0\F2\0FXU\F0\F2\0F\11U\D8\F2\0F\10E\E8\F2\0FXE\D8H\8B}\E0\F2\0F\11\07\8BE\FC]\C3\0F\1FD\00\00UH\89\E5\F2\0F\10\15\0C\05\00\00H\89}\F0H\89u\E8\F2\0F\11E\E0\F2\0F\11M\D8\F2\0FXU\E0\F2\0F\11U\D0\F2\0F\10E\D8H\8Bu\F0\F2\0F,E\D0Hc\F8\F2\0F\11\04\FEH\8Bu\F0\F2\0F,E\D0Hc\F8\F2\0F\10\04\FEH\8Bu\F0\F2\0F,E\D0\83\C0\01Hc\F8\F2\0F\11\04\FE\F2\0F\10E\D0H\8Bu\F0\F2\0F,E\D0\83\C0\1EHc\F8\F2\0F\11\04\FE\F2\0F\10E\D0\F2\0F\11E\C8\F2\0F\10\05\82\04\00\00\F2\0F\10M\C8\F2\0FXE\D0f\0F.\C1\0F\82?\00\00\00\F2\0F\10E\D0H\8BE\E8\F2\0F,M\D0Hc\D1Hi\D2\98\01\00\00H\01\D0\F2\0F,M\C8Hc\D1\F2\0F\11\04\D0\F2\0F\10\05>\04\00\00\F2\0FXE\C8\F2\0F\11E\C8\E9\A5\FF\FF\FF\F2\0F\10\05/\04\00\00\F2\0F\10\0D\1F\04\00\00H\8BE\E8\F2\0F,M\D0Hc\D1Hi\D2\98\01\00\00H\01\D0\F2\0F,M\D0\83\E9\01Hc\D1\F2\0FX\0C\D0\F2\0F\11\0C\D0H\8BE\F0\F2\0F,M\D0Hc\D1\F2\0F\10\0C\D0H\8BE\E8\F2\0F,M\D0\83\C1\14Hc\D1Hi\D2\98\01\00\00H\01\D0\F2\0F,M\D0Hc\D1\F2\0F\11\0C\D0\F2\0F\11\04%hs`\00\8BE\FC]\C3ffffff.\0F\1F\84\00\00\00\00\00UH\89\E5\F2\0F\10\05\9C\03\00\00H\89}\F0H\8B}\F0\F2\0F\11G\10H\8B}\F0\F2\0F\10G\10H\8B}\F0H\8B?\F2\0F\11G\10H\8B}\F0H\8B?H\8BE\F0H\8B\00H\898\8BE\FC]\C3fff.\0F\1F\84\00\00\00\00\00UH\89\E5@\88\F8@\88\F1\88E\FB\88M\FA\8AE\FB\88E\F9\8AE\F9\88E\F8\0F\BEu\F8\0F\BE}\FA9\FE\0F\84\0C\00\00\00\C7E\FC\00\00\00\00\E9\07\00\00\00\C7E\FC\10'\00\00\8BE\FC]\C3fff.\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC0\89}\F8H\89u\F0\8B}\F8H\8Bu\F0\89>\8B}\F8\E8p\01\00\00\83\F8\00\0F\85\0A\00\00\00H\8BE\F0\C7\00\12'\00\00\8BE\F8\85\C0\89E\EC\0F\84]\00\00\00\E9\00\00\00\00\8BE\EC-\10'\00\00\89E\E8\0F\84V\00\00\00\E9\00\00\00\00\8BE\EC-\11'\00\00\89E\E4\0F\84y\00\00\00\E9\00\00\00\00\8BE\EC-\12'\00\00\89E\E0\0F\84r\00\00\00\E9\00\00\00\00\8BE\EC-\13'\00\00\89E\DC\0F\84a\00\00\00\E9f\00\00\00H\8BE\F0\C7\00\00\00\00\00\E9W\00\00\00\F2\0F\10\05[\02\00\00\F2\0F\10\0C%hs`\00f\0F.\C8\0F\86\0F\00\00\00H\8BE\F0\C7\00\00\00\00\00\E9\0A\00\00\00H\8BE\F0\C7\00\12'\00\00\E9\1E\00\00\00H\8BE\F0\C7\00\10'\00\00\E9\0F\00\00\00\E9\0A\00\00\00H\8BE\F0\C7\00\11'\00\00\8BE\FCH\83\C40]\C3\0F\1F\00UH\89\E5\F2\0F\10\05\BC\01\00\00H\89}\F0H\8B}\F0\F2\0FX\07\F2\0F\11E\E8\0F\BE\04%p `\00\83\F8A\0F\85/\00\00\00\F2\0F\10\05\D2\01\00\00\F2\0FXE\E8\F2\0F\11E\E8\F2\0F\10E\E8\F2\0F\5C\04%hs`\00H\8BE\F0\F2\0F\11\00\C7E\E4\00\00\00\00\83}\E4\00\0F\85\05\00\00\00\E9\05\00\00\00\E9\AC\FF\FF\FF\8BE\FC]\C3f.\0F\1F\84\00\00\00\00\00UH\89\E5\89}\F8\8B}\F8\89}\F4\81}\F4\11'\00\00\0F\85\0C\00\00\00\C7E\FC\01\00\00\00\E9\07\00\00\00\C7E\FC\00\00\00\00\8BE\FC]\C3fffff.\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC H\89}\F0H\83<%x `\00\00\0F\84\17\00\00\00H\8B\04%x `\00H\8B\00H\8BM\F0H\89\01\E9\11\00\00\00\F2\0F\10\05\06\01\00\00\F2\0F\11\04%hs`\00\BF\0A\00\00\00\F2\0F\10\04%hs`\00H\8B\04%x `\00H\83\C0\10H\89\C6\B0\01\E8y\FB\FF\FF\8B}\FC\89E\EC\89\F8H\83\C4 ]\C3f.\0F\1F\84\00\00\00\00\00\90AWAVI\89\D7AUATL\8D%\1E\0E \00UH\8D-\1E\0E \00SA\89\FDI\89\F6L)\E5H\83\EC\08H\C1\FD\03\E8\DF\F4\FF\FFH\85\EDt 1\DB\0F\1F\84\00\00\00\00\00L\89\FAL\89\F6D\89\EFA\FF\14\DCH\83\C3\01H9\DDu\EAH\83\C4\08[]A\5CA]A^A_\C3\90f.\0F\1F\84\00\00\00\00\00\F3\C3" }>
@seg_401034__fini = internal constant %seg_401034__fini_type <{ [9 x i8] c"H\83\EC\08H\83\C4\08\C3" }>
@seg_401040__rodata = internal constant %seg_401040__rodata_type <{ [80 x i8] c"\01\00\02\00\00\00\00\00\00\00\00\00\00\00$@\00\00\00\00\00\00D@\00\00\00\00\00\00\08@\00\00\00\00\00\00\00@\00\00\00\00\00\00\1C@\00\00\00\00\00\00\F0?\00\00\00\00\00\00\14@\00\00\00\00\00\00Y@\00\00\00\00\00\00\F0\BF", [53 x i8] c"calculate floating dhrystones using doubles size %d\0A\00", [31 x i8] c"DHRYSTONE PROGRAM, SOME STRING\00", [31 x i8] c"DHRYSTONE PROGRAM, 1'ST STRING\00", [31 x i8] c"DHRYSTONE PROGRAM, 2'ND STRING\00" }>
@seg_401124__eh_frame_hdr = internal constant %seg_401124__eh_frame_hdr_type <{ [156 x i8] c"\01\1B\03;\98\00\00\00\12\00\00\00\CC\F3\FF\FF\F4\00\00\00,\F4\FF\FF\B4\00\00\00\5C\F4\FF\FF\E0\00\00\00\1C\F5\FF\FF\1C\01\00\00l\F5\FF\FF8\01\00\00\9C\F8\FF\FFT\01\00\00\BC\F8\FF\FFp\01\00\00\FC\F8\FF\FF\8C\01\00\00\FC\F9\FF\FF\A8\01\00\00<\FA\FF\FF\C4\01\00\00\AC\FB\FF\FF\E0\01\00\00\FC\FB\FF\FF\FC\01\00\00L\FC\FF\FF\18\02\00\00\5C\FD\FF\FF4\02\00\00\DC\FD\FF\FFP\02\00\00\1C\FE\FF\FFl\02\00\00\9C\FE\FF\FF\8C\02\00\00\0C\FF\FF\FF\D4\02\00\00" }>
@seg_4011c0__eh_frame = internal constant %seg_4011c0__eh_frame_type <{ [592 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00p\F3\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00t\F3\FF\FF\02\00\00\00\00\00\00\00$\00\00\000\00\00\00\D0\F2\FF\FF`\00\00\00\00\0E\10F\0E\18J\0F\0Bw\08\80\00?\1A;*3$\22\00\00\00\00\18\00\00\00X\00\00\00\F8\F3\FF\FFI\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00t\00\00\00,\F4\FF\FF,\03\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\90\00\00\00@\F7\FF\FF\1C\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\AC\00\00\00D\F7\FF\FF5\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\C8\00\00\00h\F7\FF\FF\00\01\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\E4\00\00\00L\F8\FF\FF;\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\00\01\00\00p\F8\FF\FFa\01\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\1C\01\00\00\C4\F9\FF\FFD\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\01\00\00\F8\F9\FF\FFD\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00T\01\00\00,\FA\FF\FF\0D\01\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00p\01\00\00 \FB\FF\FFv\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\8C\01\00\00\84\FB\FF\FF2\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\1C\00\00\00\A8\01\00\00\A8\FB\FF\FFu\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00D\00\00\00\C8\01\00\00\08\FC\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\10\02\00\000\FC\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@seg_601df0__init_array = internal global %seg_601df0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_400630_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_400600___do_global_dtors_aux to i64) }>
@seg_601ff0__got = internal global %seg_601ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@seg_602000__got_plt = internal global %seg_602000__got_plt_type <{ [24 x i8] zeroinitializer, i64 ptrtoint (i64 (i64, i64)* @strcpy to i64), i64 ptrtoint (i64 ()* @clock to i64), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), i64 ptrtoint (i64 (i64)* @malloc to i64) }>
@seg_602040__data = internal global %seg_602040__data_type zeroinitializer
@Version = global %Version_type <{ [4 x i8] c"1.1\00" }>
@seg_602060__bss = internal global %seg_602060__bss_type zeroinitializer
@Char1Glob = global %Char1Glob_type zeroinitializer
@PtrGlb = global %PtrGlb_type zeroinitializer
@Array2Glob = global %Array2Glob_type zeroinitializer
@Array1Glob = global %Array1Glob_type zeroinitializer
@IntGlob = global %IntGlob_type zeroinitializer
@BoolGlob = global %BoolGlob_type zeroinitializer
@Char2Glob = global %Char2Glob_type zeroinitializer
@PtrGlbNext = global %PtrGlbNext_type zeroinitializer
@0 = internal global i1 false
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400630_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400600___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401030___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400fc0___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @Func3_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @Proc2_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @Proc4_wrapper
@10 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @Func2_wrapper
@11 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @Proc5_wrapper
@12 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @Proc3_wrapper
@13 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @Proc7_wrapper
@14 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @Proc0_wrapper
@15 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @Func1_wrapper
@16 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @Proc6_wrapper
@17 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@18 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@19 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @Proc8_wrapper
@20 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @Proc1_wrapper
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
declare extern_weak x86_64_sysvcc i64 @clock() #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @malloc(i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @strcpy(i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @strcmp(i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #13

; Function Attrs: noinline
define %struct.Memory* @sub_400f00_Func3(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400f00:
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDI = bitcast %union.anon* %8 to i32*
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
  %31 = load i64, i64* %RBP
  %32 = sub i64 %31, 8
  %33 = load i32, i32* %EDI
  %34 = zext i32 %33 to i64
  %35 = load i64, i64* %PC
  %36 = add i64 %35, 3
  store i64 %36, i64* %PC
  %37 = inttoptr i64 %32 to i32*
  store i32 %33, i32* %37
  %38 = load i64, i64* %RBP
  %39 = sub i64 %38, 8
  %40 = load i64, i64* %PC
  %41 = add i64 %40, 3
  store i64 %41, i64* %PC
  %42 = inttoptr i64 %39 to i32*
  %43 = load i32, i32* %42
  %44 = zext i32 %43 to i64
  store i64 %44, i64* %RDI, align 8, !tbaa !2428
  %45 = load i64, i64* %RBP
  %46 = sub i64 %45, 12
  %47 = load i32, i32* %EDI
  %48 = zext i32 %47 to i64
  %49 = load i64, i64* %PC
  %50 = add i64 %49, 3
  store i64 %50, i64* %PC
  %51 = inttoptr i64 %46 to i32*
  store i32 %47, i32* %51
  %52 = load i64, i64* %RBP
  %53 = sub i64 %52, 12
  %54 = load i64, i64* %PC
  %55 = add i64 %54, 7
  store i64 %55, i64* %PC
  %56 = inttoptr i64 %53 to i32*
  %57 = load i32, i32* %56
  %58 = sub i32 %57, 10001
  %59 = icmp ult i32 %57, 10001
  %60 = zext i1 %59 to i8
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %60, i8* %61, align 1, !tbaa !2432
  %62 = and i32 %58, 255
  %63 = call i32 @llvm.ctpop.i32(i32 %62) #16
  %64 = trunc i32 %63 to i8
  %65 = and i8 %64, 1
  %66 = xor i8 %65, 1
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %66, i8* %67, align 1, !tbaa !2446
  %68 = xor i32 %57, 10001
  %69 = xor i32 %68, %58
  %70 = lshr i32 %69, 4
  %71 = trunc i32 %70 to i8
  %72 = and i8 %71, 1
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %72, i8* %73, align 1, !tbaa !2447
  %74 = icmp eq i32 %58, 0
  %75 = zext i1 %74 to i8
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %75, i8* %76, align 1, !tbaa !2448
  %77 = lshr i32 %58, 31
  %78 = trunc i32 %77 to i8
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %78, i8* %79, align 1, !tbaa !2449
  %80 = lshr i32 %57, 31
  %81 = xor i32 %77, %80
  %82 = add nuw nsw i32 %81, %80
  %83 = icmp eq i32 %82, 2
  %84 = zext i1 %83 to i8
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %84, i8* %85, align 1, !tbaa !2450
  %86 = load i64, i64* %PC
  %87 = add i64 %86, 18
  %88 = load i64, i64* %PC
  %89 = add i64 %88, 6
  %90 = load i64, i64* %PC
  %91 = add i64 %90, 6
  store i64 %91, i64* %PC
  %92 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %93 = load i8, i8* %92, align 1, !tbaa !2448
  %94 = icmp eq i8 %93, 0
  %95 = zext i1 %94 to i8
  store i8 %95, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %97 = select i1 %94, i64 %87, i64 %89
  store i64 %97, i64* %96, align 8, !tbaa !2428
  %98 = load i8, i8* %BRANCH_TAKEN
  %99 = icmp eq i8 %98, 1
  %100 = load i64, i64* %RBP
  %101 = sub i64 %100, 4
  %102 = load i64, i64* %PC
  %103 = add i64 %102, 7
  store i64 %103, i64* %PC
  br i1 %99, label %block_400f26, label %block_400f1a

block_400f26:                                     ; preds = %block_400f00
  %104 = inttoptr i64 %101 to i32*
  store i32 0, i32* %104
  br label %block_400f2d

block_400f1a:                                     ; preds = %block_400f00
  %105 = inttoptr i64 %101 to i32*
  store i32 1, i32* %105
  %106 = load i64, i64* %PC
  %107 = add i64 %106, 12
  %108 = load i64, i64* %PC
  %109 = add i64 %108, 5
  store i64 %109, i64* %PC
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %107, i64* %110, align 8, !tbaa !2428
  br label %block_400f2d

block_400f2d:                                     ; preds = %block_400f1a, %block_400f26
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400f26 ], [ %2, %block_400f1a ]
  %111 = load i64, i64* %RBP
  %112 = sub i64 %111, 4
  %113 = load i64, i64* %PC
  %114 = add i64 %113, 3
  store i64 %114, i64* %PC
  %115 = inttoptr i64 %112 to i32*
  %116 = load i32, i32* %115
  %117 = zext i32 %116 to i64
  store i64 %117, i64* %RAX, align 8, !tbaa !2428
  %118 = load i64, i64* %PC
  %119 = add i64 %118, 1
  store i64 %119, i64* %PC
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %121 = load i64, i64* %120, align 8, !tbaa !2428
  %122 = add i64 %121, 8
  %123 = inttoptr i64 %121 to i64*
  %124 = load i64, i64* %123
  store i64 %124, i64* %RBP, align 8, !tbaa !2428
  store i64 %122, i64* %120, align 8, !tbaa !2428
  %125 = load i64, i64* %PC
  %126 = add i64 %125, 1
  store i64 %126, i64* %PC
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %129 = load i64, i64* %128, align 8, !tbaa !2428
  %130 = inttoptr i64 %129 to i64*
  %131 = load i64, i64* %130
  store i64 %131, i64* %127, align 8, !tbaa !2428
  %132 = add i64 %129, 8
  store i64 %132, i64* %128, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0
}

; Function Attrs: noinline
define %struct.Memory* @sub_400e80_Proc2(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %22 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %21, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %22 to %"class.std::bitset"*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %24 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %23, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %24 to %union.vec128_t*
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
  %35 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %36 = load i64, i64* %PC
  %37 = add i64 %36, 8
  store i64 %37, i64* %PC
  %38 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401040__rodata_type* @seg_401040__rodata to i64), i64 8) to double*)
  %39 = bitcast i8* %35 to double*
  store double %38, double* %39, align 1, !tbaa !2452
  %40 = getelementptr inbounds i8, i8* %35, i64 8
  %41 = bitcast i8* %40 to double*
  store double 0.000000e+00, double* %41, align 1, !tbaa !2452
  %42 = load i64, i64* %RBP
  %43 = sub i64 %42, 16
  %44 = load i64, i64* %RDI
  %45 = load i64, i64* %PC
  %46 = add i64 %45, 4
  store i64 %46, i64* %PC
  %47 = inttoptr i64 %43 to i64*
  store i64 %44, i64* %47
  %48 = load i64, i64* %RBP
  %49 = sub i64 %48, 16
  %50 = load i64, i64* %PC
  %51 = add i64 %50, 4
  store i64 %51, i64* %PC
  %52 = inttoptr i64 %49 to i64*
  %53 = load i64, i64* %52
  store i64 %53, i64* %RDI, align 8, !tbaa !2428
  %54 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %55 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %56 = load i64, i64* %RDI
  %57 = load i64, i64* %PC
  %58 = add i64 %57, 4
  store i64 %58, i64* %PC
  %59 = bitcast i8* %55 to double*
  %60 = load double, double* %59, align 1
  %61 = getelementptr inbounds i8, i8* %55, i64 8
  %62 = bitcast i8* %61 to i64*
  %63 = load i64, i64* %62, align 1
  %64 = inttoptr i64 %56 to double*
  %65 = load double, double* %64
  %66 = fadd double %60, %65
  %67 = bitcast i8* %54 to double*
  store double %66, double* %67, align 1, !tbaa !2452
  %68 = getelementptr inbounds i8, i8* %54, i64 8
  %69 = bitcast i8* %68 to i64*
  store i64 %63, i64* %69, align 1, !tbaa !2452
  %70 = load i64, i64* %RBP
  %71 = sub i64 %70, 24
  %72 = bitcast %union.vec128_t* %XMM0 to i8*
  %73 = load i64, i64* %PC
  %74 = add i64 %73, 5
  store i64 %74, i64* %PC
  %75 = bitcast i8* %72 to double*
  %76 = load double, double* %75, align 1
  %77 = inttoptr i64 %71 to double*
  store double %76, double* %77
  br label %block_400e9d

block_400edd:                                     ; preds = %block_400eae, %block_400e9d
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.1, %block_400e9d ], [ %MEMORY.1, %block_400eae ]
  %78 = load i64, i64* %RBP
  %79 = sub i64 %78, 28
  %80 = load i64, i64* %PC
  %81 = add i64 %80, 4
  store i64 %81, i64* %PC
  %82 = inttoptr i64 %79 to i32*
  %83 = load i32, i32* %82
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %84, align 1, !tbaa !2432
  %85 = and i32 %83, 255
  %86 = call i32 @llvm.ctpop.i32(i32 %85) #16
  %87 = trunc i32 %86 to i8
  %88 = and i8 %87, 1
  %89 = xor i8 %88, 1
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %89, i8* %90, align 1, !tbaa !2446
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %91, align 1, !tbaa !2447
  %92 = icmp eq i32 %83, 0
  %93 = zext i1 %92 to i8
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %93, i8* %94, align 1, !tbaa !2448
  %95 = lshr i32 %83, 31
  %96 = trunc i32 %95 to i8
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %96, i8* %97, align 1, !tbaa !2449
  %98 = lshr i32 %83, 31
  %99 = xor i32 %95, %98
  %100 = add nuw nsw i32 %99, %98
  %101 = icmp eq i32 %100, 2
  %102 = zext i1 %101 to i8
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %102, i8* %103, align 1, !tbaa !2450
  %104 = load i64, i64* %PC
  %105 = add i64 %104, 11
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
  %118 = load i64, i64* %PC
  br i1 %117, label %block_400eec, label %block_400ee7

block_400e9d:                                     ; preds = %block_400eec, %block_400e80
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_400e80 ], [ %MEMORY.0, %block_400eec ]
  %119 = load i64, i64* %PC
  %120 = add i64 %119, 8
  store i64 %120, i64* %PC
  %121 = load i8, i8* getelementptr inbounds (%Char1Glob_type, %Char1Glob_type* @Char1Glob, i32 0, i32 0, i32 0)
  %122 = sext i8 %121 to i64
  %123 = and i64 %122, 4294967295
  store i64 %123, i64* %RAX, align 8, !tbaa !2428
  %124 = load i32, i32* %EAX
  %125 = zext i32 %124 to i64
  %126 = load i64, i64* %PC
  %127 = add i64 %126, 3
  store i64 %127, i64* %PC
  %128 = sub i32 %124, 65
  %129 = icmp ult i32 %124, 65
  %130 = zext i1 %129 to i8
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %130, i8* %131, align 1, !tbaa !2432
  %132 = and i32 %128, 255
  %133 = call i32 @llvm.ctpop.i32(i32 %132) #16
  %134 = trunc i32 %133 to i8
  %135 = and i8 %134, 1
  %136 = xor i8 %135, 1
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %136, i8* %137, align 1, !tbaa !2446
  %138 = xor i64 65, %125
  %139 = trunc i64 %138 to i32
  %140 = xor i32 %139, %128
  %141 = lshr i32 %140, 4
  %142 = trunc i32 %141 to i8
  %143 = and i8 %142, 1
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %143, i8* %144, align 1, !tbaa !2447
  %145 = icmp eq i32 %128, 0
  %146 = zext i1 %145 to i8
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %146, i8* %147, align 1, !tbaa !2448
  %148 = lshr i32 %128, 31
  %149 = trunc i32 %148 to i8
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %149, i8* %150, align 1, !tbaa !2449
  %151 = lshr i32 %124, 31
  %152 = xor i32 %148, %151
  %153 = add nuw nsw i32 %152, %151
  %154 = icmp eq i32 %153, 2
  %155 = zext i1 %154 to i8
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %155, i8* %156, align 1, !tbaa !2450
  %157 = load i64, i64* %PC
  %158 = add i64 %157, 53
  %159 = load i64, i64* %PC
  %160 = add i64 %159, 6
  %161 = load i64, i64* %PC
  %162 = add i64 %161, 6
  store i64 %162, i64* %PC
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %164 = load i8, i8* %163, align 1, !tbaa !2448
  %165 = icmp eq i8 %164, 0
  %166 = zext i1 %165 to i8
  store i8 %166, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %168 = select i1 %165, i64 %158, i64 %160
  store i64 %168, i64* %167, align 8, !tbaa !2428
  %169 = load i8, i8* %BRANCH_TAKEN
  %170 = icmp eq i8 %169, 1
  br i1 %170, label %block_400edd, label %block_400eae

block_400eae:                                     ; preds = %block_400e9d
  %171 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %172 = load i64, i64* %PC
  %173 = add i64 %172, 8
  store i64 %173, i64* %PC
  %174 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401040__rodata_type* @seg_401040__rodata to i64), i64 72) to double*)
  %175 = bitcast i8* %171 to double*
  store double %174, double* %175, align 1, !tbaa !2452
  %176 = getelementptr inbounds i8, i8* %171, i64 8
  %177 = bitcast i8* %176 to double*
  store double 0.000000e+00, double* %177, align 1, !tbaa !2452
  %178 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %179 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %180 = load i64, i64* %RBP
  %181 = sub i64 %180, 24
  %182 = load i64, i64* %PC
  %183 = add i64 %182, 5
  store i64 %183, i64* %PC
  %184 = bitcast i8* %179 to double*
  %185 = load double, double* %184, align 1
  %186 = getelementptr inbounds i8, i8* %179, i64 8
  %187 = bitcast i8* %186 to i64*
  %188 = load i64, i64* %187, align 1
  %189 = inttoptr i64 %181 to double*
  %190 = load double, double* %189
  %191 = fadd double %185, %190
  %192 = bitcast i8* %178 to double*
  store double %191, double* %192, align 1, !tbaa !2452
  %193 = getelementptr inbounds i8, i8* %178, i64 8
  %194 = bitcast i8* %193 to i64*
  store i64 %188, i64* %194, align 1, !tbaa !2452
  %195 = load i64, i64* %RBP
  %196 = sub i64 %195, 24
  %197 = bitcast %union.vec128_t* %XMM0 to i8*
  %198 = load i64, i64* %PC
  %199 = add i64 %198, 5
  store i64 %199, i64* %PC
  %200 = bitcast i8* %197 to double*
  %201 = load double, double* %200, align 1
  %202 = inttoptr i64 %196 to double*
  store double %201, double* %202
  %203 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %204 = load i64, i64* %RBP
  %205 = sub i64 %204, 24
  %206 = load i64, i64* %PC
  %207 = add i64 %206, 5
  store i64 %207, i64* %PC
  %208 = inttoptr i64 %205 to double*
  %209 = load double, double* %208
  %210 = bitcast i8* %203 to double*
  store double %209, double* %210, align 1, !tbaa !2452
  %211 = getelementptr inbounds i8, i8* %203, i64 8
  %212 = bitcast i8* %211 to double*
  store double 0.000000e+00, double* %212, align 1, !tbaa !2452
  %213 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %214 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %215 = load i64, i64* %PC
  %216 = add i64 %215, 9
  store i64 %216, i64* %PC
  %217 = bitcast i8* %214 to double*
  %218 = load double, double* %217, align 1
  %219 = getelementptr inbounds i8, i8* %214, i64 8
  %220 = bitcast i8* %219 to i64*
  %221 = load i64, i64* %220, align 1
  %222 = load double, double* bitcast (%IntGlob_type* @IntGlob to double*)
  %223 = fsub double %218, %222
  %224 = bitcast i8* %213 to double*
  store double %223, double* %224, align 1, !tbaa !2452
  %225 = getelementptr inbounds i8, i8* %213, i64 8
  %226 = bitcast i8* %225 to i64*
  store i64 %221, i64* %226, align 1, !tbaa !2452
  %227 = load i64, i64* %RBP
  %228 = sub i64 %227, 16
  %229 = load i64, i64* %PC
  %230 = add i64 %229, 4
  store i64 %230, i64* %PC
  %231 = inttoptr i64 %228 to i64*
  %232 = load i64, i64* %231
  store i64 %232, i64* %RAX, align 8, !tbaa !2428
  %233 = load i64, i64* %RAX
  %234 = bitcast %union.vec128_t* %XMM0 to i8*
  %235 = load i64, i64* %PC
  %236 = add i64 %235, 4
  store i64 %236, i64* %PC
  %237 = bitcast i8* %234 to double*
  %238 = load double, double* %237, align 1
  %239 = inttoptr i64 %233 to double*
  store double %238, double* %239
  %240 = load i64, i64* %RBP
  %241 = sub i64 %240, 28
  %242 = load i64, i64* %PC
  %243 = add i64 %242, 7
  store i64 %243, i64* %PC
  %244 = inttoptr i64 %241 to i32*
  store i32 0, i32* %244
  br label %block_400edd

block_400eec:                                     ; preds = %block_400edd
  %245 = sub i64 %118, 79
  %246 = load i64, i64* %PC
  %247 = add i64 %246, 5
  store i64 %247, i64* %PC
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %245, i64* %248, align 8, !tbaa !2428
  br label %block_400e9d

block_400ee7:                                     ; preds = %block_400edd
  %249 = add i64 %118, 10
  %250 = load i64, i64* %PC
  %251 = add i64 %250, 5
  store i64 %251, i64* %PC
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %249, i64* %252, align 8, !tbaa !2428
  %253 = load i64, i64* %RBP
  %254 = sub i64 %253, 4
  %255 = load i64, i64* %PC
  %256 = add i64 %255, 3
  store i64 %256, i64* %PC
  %257 = inttoptr i64 %254 to i32*
  %258 = load i32, i32* %257
  %259 = zext i32 %258 to i64
  store i64 %259, i64* %RAX, align 8, !tbaa !2428
  %260 = load i64, i64* %PC
  %261 = add i64 %260, 1
  store i64 %261, i64* %PC
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %263 = load i64, i64* %262, align 8, !tbaa !2428
  %264 = add i64 %263, 8
  %265 = inttoptr i64 %263 to i64*
  %266 = load i64, i64* %265
  store i64 %266, i64* %RBP, align 8, !tbaa !2428
  store i64 %264, i64* %262, align 8, !tbaa !2428
  %267 = load i64, i64* %PC
  %268 = add i64 %267, 1
  store i64 %268, i64* %PC
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %271 = load i64, i64* %270, align 8, !tbaa !2428
  %272 = inttoptr i64 %271 to i64*
  %273 = load i64, i64* %272
  store i64 %273, i64* %269, align 8, !tbaa !2428
  %274 = add i64 %271, 8
  store i64 %274, i64* %270, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0
}

; Function Attrs: noinline
define %struct.Memory* @sub_400550__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400550:
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
  store i64 ptrtoint (void ()* @callback_sub_401030___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  %108 = load i64, i64* %PC
  %109 = add i64 %108, 7
  store i64 %109, i64* %PC
  store i64 ptrtoint (void ()* @callback_sub_400fc0___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
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
  %123 = call %struct.Memory* @ext_607398___libc_start_main(%struct.State* %0, i64 %122, %struct.Memory* %2)
  %124 = load i64, i64* %PC
  %125 = add i64 %124, 1
  store i64 %125, i64* %PC
  %126 = load i64, i64* %PC
  %127 = tail call %struct.Memory* @__remill_error(%struct.State* %0, i64 %126, %struct.Memory* %123)
  ret %struct.Memory* %127
}

; Function Attrs: noinline
define %struct.Memory* @sub_400580__dl_relocate_static_pie(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400580:
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
define %struct.Memory* @sub_401030___libc_csu_fini(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_401030:
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
define %struct.Memory* @sub_4005c0_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  br i1 %189, label %block_4005f8, label %block_4005e3

block_4005fa:                                     ; preds = %block_4005ed
  %190 = load i64, i64* %RAX
  %191 = load i64, i64* %RAX
  %192 = add i64 %191, %190
  %193 = load i16, i16* %AX
  %194 = zext i16 %193 to i64
  %195 = load i64, i64* %PC
  %196 = add i64 %195, 6
  store i64 %196, i64* %PC
  %197 = load i64, i64* %PC
  %198 = tail call %struct.Memory* @sub_400600___do_global_dtors_aux(%struct.State* %0, i64 %197, %struct.Memory* %2)
  ret %struct.Memory* %198

block_4005f5:                                     ; preds = %block_4005ed
  %199 = load i64, i64* %RAX
  %200 = load i32, i32* %EAX
  %201 = zext i32 %200 to i64
  %202 = load i64, i64* %PC
  %203 = add i64 %202, 3
  store i64 %203, i64* %PC
  br label %block_4005f8

block_4005ed:                                     ; preds = %block_4005e3
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
  store i64 6299736, i64* %RDI, align 8, !tbaa !2428
  %213 = load i64, i64* %RAX
  %214 = load i64, i64* %PC
  %215 = add i64 %214, 2
  store i64 %215, i64* %PC
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %213, i64* %216, align 8, !tbaa !2428
  %217 = load i64, i64* %PC
  switch i64 %217, label %269 [
    i64 4195834, label %block_4005fa
    i64 4195829, label %block_4005f5
  ]

block_4005f8:                                     ; preds = %block_4005e3, %block_4005f5, %block_4005c0
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4005c0 ], [ %2, %block_4005e3 ], [ %2, %block_4005f5 ]
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

block_4005e3:                                     ; preds = %block_4005c0
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
  br i1 %268, label %block_4005f8, label %block_4005ed

; <label>:269:                                    ; preds = %block_4005ed
  %270 = load i64, i64* %PC
  %271 = tail call %struct.Memory* @__remill_jump(%struct.State* %0, i64 %270, %struct.Memory* %2)
  ret %struct.Memory* %271
}

; Function Attrs: noinline
define %struct.Memory* @sub_400b20_Proc7(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400b20:
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
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %19 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %18, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %19 to %"class.std::bitset"*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %21 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %20, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %21 to %"class.std::bitset"*
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %23 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %22, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %23 to %union.vec128_t*
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %25 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %24, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %25 to %union.vec128_t*
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %27 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %26, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %27 to %union.vec128_t*
  %28 = load i64, i64* %RBP
  %29 = load i64, i64* %PC
  %30 = add i64 %29, 1
  store i64 %30, i64* %PC
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %32 = load i64, i64* %31, align 8, !tbaa !2428
  %33 = add i64 %32, -8
  %34 = inttoptr i64 %33 to i64*
  store i64 %28, i64* %34
  store i64 %33, i64* %31, align 8, !tbaa !2428
  %35 = load i64, i64* %RSP
  %36 = load i64, i64* %PC
  %37 = add i64 %36, 3
  store i64 %37, i64* %PC
  store i64 %35, i64* %RBP, align 8, !tbaa !2428
  %38 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %39 = load i64, i64* %PC
  %40 = add i64 %39, 8
  store i64 %40, i64* %PC
  %41 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401040__rodata_type* @seg_401040__rodata to i64), i64 32) to double*)
  %42 = bitcast i8* %38 to double*
  store double %41, double* %42, align 1, !tbaa !2452
  %43 = getelementptr inbounds i8, i8* %38, i64 8
  %44 = bitcast i8* %43 to double*
  store double 0.000000e+00, double* %44, align 1, !tbaa !2452
  %45 = load i64, i64* %RBP
  %46 = sub i64 %45, 16
  %47 = bitcast %union.vec128_t* %XMM0 to i8*
  %48 = load i64, i64* %PC
  %49 = add i64 %48, 5
  store i64 %49, i64* %PC
  %50 = bitcast i8* %47 to double*
  %51 = load double, double* %50, align 1
  %52 = inttoptr i64 %46 to double*
  store double %51, double* %52
  %53 = load i64, i64* %RBP
  %54 = sub i64 %53, 24
  %55 = bitcast %union.vec128_t* %XMM1 to i8*
  %56 = load i64, i64* %PC
  %57 = add i64 %56, 5
  store i64 %57, i64* %PC
  %58 = bitcast i8* %55 to double*
  %59 = load double, double* %58, align 1
  %60 = inttoptr i64 %54 to double*
  store double %59, double* %60
  %61 = load i64, i64* %RBP
  %62 = sub i64 %61, 32
  %63 = load i64, i64* %RDI
  %64 = load i64, i64* %PC
  %65 = add i64 %64, 4
  store i64 %65, i64* %PC
  %66 = inttoptr i64 %62 to i64*
  store i64 %63, i64* %66
  %67 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %68 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %69 = load i64, i64* %RBP
  %70 = sub i64 %69, 16
  %71 = load i64, i64* %PC
  %72 = add i64 %71, 5
  store i64 %72, i64* %PC
  %73 = bitcast i8* %68 to double*
  %74 = load double, double* %73, align 1
  %75 = getelementptr inbounds i8, i8* %68, i64 8
  %76 = bitcast i8* %75 to i64*
  %77 = load i64, i64* %76, align 1
  %78 = inttoptr i64 %70 to double*
  %79 = load double, double* %78
  %80 = fadd double %74, %79
  %81 = bitcast i8* %67 to double*
  store double %80, double* %81, align 1, !tbaa !2452
  %82 = getelementptr inbounds i8, i8* %67, i64 8
  %83 = bitcast i8* %82 to i64*
  store i64 %77, i64* %83, align 1, !tbaa !2452
  %84 = load i64, i64* %RBP
  %85 = sub i64 %84, 40
  %86 = bitcast %union.vec128_t* %XMM2 to i8*
  %87 = load i64, i64* %PC
  %88 = add i64 %87, 5
  store i64 %88, i64* %PC
  %89 = bitcast i8* %86 to double*
  %90 = load double, double* %89, align 1
  %91 = inttoptr i64 %85 to double*
  store double %90, double* %91
  %92 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %93 = load i64, i64* %RBP
  %94 = sub i64 %93, 24
  %95 = load i64, i64* %PC
  %96 = add i64 %95, 5
  store i64 %96, i64* %PC
  %97 = inttoptr i64 %94 to double*
  %98 = load double, double* %97
  %99 = bitcast i8* %92 to double*
  store double %98, double* %99, align 1, !tbaa !2452
  %100 = getelementptr inbounds i8, i8* %92, i64 8
  %101 = bitcast i8* %100 to double*
  store double 0.000000e+00, double* %101, align 1, !tbaa !2452
  %102 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %103 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %104 = load i64, i64* %RBP
  %105 = sub i64 %104, 40
  %106 = load i64, i64* %PC
  %107 = add i64 %106, 5
  store i64 %107, i64* %PC
  %108 = bitcast i8* %103 to double*
  %109 = load double, double* %108, align 1
  %110 = getelementptr inbounds i8, i8* %103, i64 8
  %111 = bitcast i8* %110 to i64*
  %112 = load i64, i64* %111, align 1
  %113 = inttoptr i64 %105 to double*
  %114 = load double, double* %113
  %115 = fadd double %109, %114
  %116 = bitcast i8* %102 to double*
  store double %115, double* %116, align 1, !tbaa !2452
  %117 = getelementptr inbounds i8, i8* %102, i64 8
  %118 = bitcast i8* %117 to i64*
  store i64 %112, i64* %118, align 1, !tbaa !2452
  %119 = load i64, i64* %RBP
  %120 = sub i64 %119, 32
  %121 = load i64, i64* %PC
  %122 = add i64 %121, 4
  store i64 %122, i64* %PC
  %123 = inttoptr i64 %120 to i64*
  %124 = load i64, i64* %123
  store i64 %124, i64* %RDI, align 8, !tbaa !2428
  %125 = load i64, i64* %RDI
  %126 = bitcast %union.vec128_t* %XMM0 to i8*
  %127 = load i64, i64* %PC
  %128 = add i64 %127, 4
  store i64 %128, i64* %PC
  %129 = bitcast i8* %126 to double*
  %130 = load double, double* %129, align 1
  %131 = inttoptr i64 %125 to double*
  store double %130, double* %131
  %132 = load i64, i64* %RBP
  %133 = sub i64 %132, 4
  %134 = load i64, i64* %PC
  %135 = add i64 %134, 3
  store i64 %135, i64* %PC
  %136 = inttoptr i64 %133 to i32*
  %137 = load i32, i32* %136
  %138 = zext i32 %137 to i64
  store i64 %138, i64* %RAX, align 8, !tbaa !2428
  %139 = load i64, i64* %PC
  %140 = add i64 %139, 1
  store i64 %140, i64* %PC
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %142 = load i64, i64* %141, align 8, !tbaa !2428
  %143 = add i64 %142, 8
  %144 = inttoptr i64 %142 to i64*
  %145 = load i64, i64* %144
  store i64 %145, i64* %RBP, align 8, !tbaa !2428
  store i64 %143, i64* %141, align 8, !tbaa !2428
  %146 = load i64, i64* %PC
  %147 = add i64 %146, 1
  store i64 %147, i64* %PC
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %150 = load i64, i64* %149, align 8, !tbaa !2428
  %151 = inttoptr i64 %150 to i64*
  %152 = load i64, i64* %151
  store i64 %152, i64* %148, align 8, !tbaa !2428
  %153 = add i64 %150, 8
  store i64 %153, i64* %149, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_400690_Proc0(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 17
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %R8B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
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
  %27 = getelementptr inbounds %struct.GPR, %struct.GPR* %26, i32 0, i32 11
  %28 = getelementptr inbounds %struct.Reg, %struct.Reg* %27, i32 0, i32 0
  %EDI = bitcast %union.anon* %28 to i32*
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %RAX = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 5
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RCX = bitcast %union.anon* %34 to i64*
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %36 = getelementptr inbounds %struct.GPR, %struct.GPR* %35, i32 0, i32 7
  %37 = getelementptr inbounds %struct.Reg, %struct.Reg* %36, i32 0, i32 0
  %RDX = bitcast %union.anon* %37 to i64*
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %39 = getelementptr inbounds %struct.GPR, %struct.GPR* %38, i32 0, i32 9
  %40 = getelementptr inbounds %struct.Reg, %struct.Reg* %39, i32 0, i32 0
  %RSI = bitcast %union.anon* %40 to i64*
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %42 = getelementptr inbounds %struct.GPR, %struct.GPR* %41, i32 0, i32 11
  %43 = getelementptr inbounds %struct.Reg, %struct.Reg* %42, i32 0, i32 0
  %RDI = bitcast %union.anon* %43 to i64*
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %45 = getelementptr inbounds %struct.GPR, %struct.GPR* %44, i32 0, i32 13
  %46 = getelementptr inbounds %struct.Reg, %struct.Reg* %45, i32 0, i32 0
  %RSP = bitcast %union.anon* %46 to i64*
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %48 = getelementptr inbounds %struct.GPR, %struct.GPR* %47, i32 0, i32 15
  %49 = getelementptr inbounds %struct.Reg, %struct.Reg* %48, i32 0, i32 0
  %RBP = bitcast %union.anon* %49 to i64*
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %51 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %50, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %51 to %"class.std::bitset"*
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %53 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %52, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %53 to %"class.std::bitset"*
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %55 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %54, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %55 to %union.vec128_t*
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %57 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %56, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %57 to %union.vec128_t*
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
  %70 = add i64 %69, 7
  store i64 %70, i64* %PC
  %71 = sub i64 %68, 240
  store i64 %71, i64* %RSP, align 8, !tbaa !2428
  %72 = icmp ult i64 %68, 240
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
  %82 = xor i64 240, %68
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
  %101 = sub i64 %100, 395
  %102 = load i64, i64* %PC
  %103 = add i64 %102, 5
  %104 = load i64, i64* %PC
  %105 = add i64 %104, 5
  store i64 %105, i64* %PC
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %107 = load i64, i64* %106, align 8, !tbaa !2428
  %108 = add i64 %107, -8
  %109 = inttoptr i64 %108 to i64*
  store i64 %103, i64* %109
  store i64 %108, i64* %106, align 8, !tbaa !2428
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %101, i64* %110, align 8, !tbaa !2428
  %111 = load i64, i64* %PC
  %112 = call %struct.Memory* @ext_6073b8_clock(%struct.State* %0, i64 %111, %struct.Memory* %2)
  %113 = load i64, i64* %RBP
  %114 = sub i64 %113, 128
  %115 = load i64, i64* %RAX
  %116 = load i64, i64* %PC
  %117 = add i64 %116, 4
  store i64 %117, i64* %PC
  %118 = inttoptr i64 %114 to i64*
  store i64 %115, i64* %118
  %119 = load i64, i64* %RBP
  %120 = sub i64 %119, 116
  %121 = load i64, i64* %PC
  %122 = add i64 %121, 7
  store i64 %122, i64* %PC
  %123 = inttoptr i64 %120 to i32*
  store i32 0, i32* %123
  br label %block_4006ab

block_40085e:                                     ; preds = %block_4007ce, %block_400872
  %MEMORY.0 = phi %struct.Memory* [ %878, %block_4007ce ], [ %685, %block_400872 ]
  %124 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %125 = load i64, i64* %RBP
  %126 = sub i64 %125, 16
  %127 = load i64, i64* %PC
  %128 = add i64 %127, 5
  store i64 %128, i64* %PC
  %129 = inttoptr i64 %126 to double*
  %130 = load double, double* %129
  %131 = bitcast i8* %124 to double*
  store double %130, double* %131, align 1, !tbaa !2452
  %132 = getelementptr inbounds i8, i8* %124, i64 8
  %133 = bitcast i8* %132 to double*
  store double 0.000000e+00, double* %133, align 1, !tbaa !2452
  %134 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %135 = load i64, i64* %RBP
  %136 = sub i64 %135, 24
  %137 = load i64, i64* %PC
  %138 = add i64 %137, 5
  store i64 %138, i64* %PC
  %139 = inttoptr i64 %136 to double*
  %140 = load double, double* %139
  %141 = bitcast i8* %134 to double*
  store double %140, double* %141, align 1, !tbaa !2452
  %142 = getelementptr inbounds i8, i8* %134, i64 8
  %143 = bitcast i8* %142 to double*
  store double 0.000000e+00, double* %143, align 1, !tbaa !2452
  %144 = bitcast %union.vec128_t* %XMM1 to i8*
  %145 = bitcast %union.vec128_t* %XMM0 to i8*
  %146 = load i64, i64* %PC
  %147 = add i64 %146, 4
  store i64 %147, i64* %PC
  %148 = bitcast i8* %144 to double*
  %149 = load double, double* %148, align 1
  %150 = bitcast i8* %145 to double*
  %151 = load double, double* %150, align 1
  %152 = fcmp uno double %149, %151
  br i1 %152, label %153, label %165

; <label>:153:                                    ; preds = %block_40085e
  %154 = fadd double %149, %151
  %155 = bitcast double %154 to i64
  %156 = and i64 %155, 9221120237041090560
  %157 = icmp eq i64 %156, 9218868437227405312
  %158 = and i64 %155, 2251799813685247
  %159 = icmp ne i64 %158, 0
  %160 = and i1 %157, %159
  br i1 %160, label %161, label %171

; <label>:161:                                    ; preds = %153
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %163 = load i64, i64* %162, align 8, !tbaa !2428
  %164 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %163, %struct.Memory* %MEMORY.0) #17
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:165:                                    ; preds = %block_40085e
  %166 = fcmp ogt double %149, %151
  br i1 %166, label %171, label %167

; <label>:167:                                    ; preds = %165
  %168 = fcmp olt double %149, %151
  br i1 %168, label %171, label %169

; <label>:169:                                    ; preds = %167
  %170 = fcmp oeq double %149, %151
  br i1 %170, label %171, label %178

; <label>:171:                                    ; preds = %169, %167, %165, %153
  %172 = phi i8 [ 0, %165 ], [ 0, %167 ], [ 1, %169 ], [ 1, %153 ]
  %173 = phi i8 [ 0, %165 ], [ 0, %167 ], [ 0, %169 ], [ 1, %153 ]
  %174 = phi i8 [ 0, %165 ], [ 1, %167 ], [ 0, %169 ], [ 1, %153 ]
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %172, i8* %175, align 1, !tbaa !2451
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %173, i8* %176, align 1, !tbaa !2451
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %174, i8* %177, align 1, !tbaa !2451
  br label %178

; <label>:178:                                    ; preds = %171, %169
  %179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %179, align 1, !tbaa !2451
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %180, align 1, !tbaa !2451
  %181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %181, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %161, %178
  %182 = phi %struct.Memory* [ %164, %161 ], [ %MEMORY.0, %178 ]
  %183 = load i64, i64* %PC
  %184 = add i64 %183, 77
  %185 = load i64, i64* %PC
  %186 = add i64 %185, 6
  %187 = load i64, i64* %PC
  %188 = add i64 %187, 6
  store i64 %188, i64* %PC
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %190 = load i8, i8* %189, align 1, !tbaa !2432
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %192 = load i8, i8* %191, align 1, !tbaa !2448
  %193 = or i8 %192, %190
  %194 = icmp ne i8 %193, 0
  %195 = zext i1 %194 to i8
  store i8 %195, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %197 = select i1 %194, i64 %184, i64 %186
  store i64 %197, i64* %196, align 8, !tbaa !2428
  %198 = load i8, i8* %BRANCH_TAKEN
  %199 = icmp eq i8 %198, 1
  br i1 %199, label %block_4008b9, label %block_400872

block_400955:                                     ; preds = %block_4008f9
  %200 = load i64, i64* %RBP
  %201 = sub i64 %200, 16
  %202 = load i64, i64* %PC
  %203 = add i64 %202, 4
  store i64 %203, i64* %PC
  store i64 %201, i64* %RDI, align 8, !tbaa !2428
  %204 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %205 = load i64, i64* %PC
  %206 = add i64 %205, 8
  store i64 %206, i64* %PC
  %207 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401040__rodata_type* @seg_401040__rodata to i64), i64 40) to double*)
  %208 = bitcast i8* %204 to double*
  store double %207, double* %208, align 1, !tbaa !2452
  %209 = getelementptr inbounds i8, i8* %204, i64 8
  %210 = bitcast i8* %209 to double*
  store double 0.000000e+00, double* %210, align 1, !tbaa !2452
  %211 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %212 = load i64, i64* %RBP
  %213 = sub i64 %212, 24
  %214 = load i64, i64* %PC
  %215 = add i64 %214, 5
  store i64 %215, i64* %PC
  %216 = inttoptr i64 %213 to double*
  %217 = load double, double* %216
  %218 = bitcast i8* %211 to double*
  store double %217, double* %218, align 1, !tbaa !2452
  %219 = getelementptr inbounds i8, i8* %211, i64 8
  %220 = bitcast i8* %219 to double*
  store double 0.000000e+00, double* %220, align 1, !tbaa !2452
  %221 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %222 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %223 = load i64, i64* %RBP
  %224 = sub i64 %223, 16
  %225 = load i64, i64* %PC
  %226 = add i64 %225, 5
  store i64 %226, i64* %PC
  %227 = bitcast i8* %222 to double*
  %228 = load double, double* %227, align 1
  %229 = getelementptr inbounds i8, i8* %222, i64 8
  %230 = bitcast i8* %229 to i64*
  %231 = load i64, i64* %230, align 1
  %232 = inttoptr i64 %224 to double*
  %233 = load double, double* %232
  %234 = fmul double %228, %233
  %235 = bitcast i8* %221 to double*
  store double %234, double* %235, align 1, !tbaa !2452
  %236 = getelementptr inbounds i8, i8* %221, i64 8
  %237 = bitcast i8* %236 to i64*
  store i64 %231, i64* %237, align 1, !tbaa !2452
  %238 = load i64, i64* %RBP
  %239 = sub i64 %238, 32
  %240 = bitcast %union.vec128_t* %XMM1 to i8*
  %241 = load i64, i64* %PC
  %242 = add i64 %241, 5
  store i64 %242, i64* %PC
  %243 = bitcast i8* %240 to double*
  %244 = load double, double* %243, align 1
  %245 = inttoptr i64 %239 to double*
  store double %244, double* %245
  %246 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %247 = load i64, i64* %RBP
  %248 = sub i64 %247, 32
  %249 = load i64, i64* %PC
  %250 = add i64 %249, 5
  store i64 %250, i64* %PC
  %251 = inttoptr i64 %248 to double*
  %252 = load double, double* %251
  %253 = bitcast i8* %246 to double*
  store double %252, double* %253, align 1, !tbaa !2452
  %254 = getelementptr inbounds i8, i8* %246, i64 8
  %255 = bitcast i8* %254 to double*
  store double 0.000000e+00, double* %255, align 1, !tbaa !2452
  %256 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %257 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %258 = load i64, i64* %RBP
  %259 = sub i64 %258, 16
  %260 = load i64, i64* %PC
  %261 = add i64 %260, 5
  store i64 %261, i64* %PC
  %262 = bitcast i8* %257 to double*
  %263 = load double, double* %262, align 1
  %264 = getelementptr inbounds i8, i8* %257, i64 8
  %265 = bitcast i8* %264 to i64*
  %266 = load i64, i64* %265, align 1
  %267 = inttoptr i64 %259 to double*
  %268 = load double, double* %267
  %269 = fdiv double %263, %268
  %270 = bitcast i8* %256 to double*
  store double %269, double* %270, align 1, !tbaa !2452
  %271 = getelementptr inbounds i8, i8* %256, i64 8
  %272 = bitcast i8* %271 to i64*
  store i64 %266, i64* %272, align 1, !tbaa !2452
  %273 = load i64, i64* %RBP
  %274 = sub i64 %273, 24
  %275 = bitcast %union.vec128_t* %XMM1 to i8*
  %276 = load i64, i64* %PC
  %277 = add i64 %276, 5
  store i64 %277, i64* %PC
  %278 = bitcast i8* %275 to double*
  %279 = load double, double* %278, align 1
  %280 = inttoptr i64 %274 to double*
  store double %279, double* %280
  %281 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %282 = load i64, i64* %RBP
  %283 = sub i64 %282, 32
  %284 = load i64, i64* %PC
  %285 = add i64 %284, 5
  store i64 %285, i64* %PC
  %286 = inttoptr i64 %283 to double*
  %287 = load double, double* %286
  %288 = bitcast i8* %281 to double*
  store double %287, double* %288, align 1, !tbaa !2452
  %289 = getelementptr inbounds i8, i8* %281, i64 8
  %290 = bitcast i8* %289 to double*
  store double 0.000000e+00, double* %290, align 1, !tbaa !2452
  %291 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %292 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %293 = load i64, i64* %RBP
  %294 = sub i64 %293, 24
  %295 = load i64, i64* %PC
  %296 = add i64 %295, 5
  store i64 %296, i64* %PC
  %297 = bitcast i8* %292 to double*
  %298 = load double, double* %297, align 1
  %299 = getelementptr inbounds i8, i8* %292, i64 8
  %300 = bitcast i8* %299 to i64*
  %301 = load i64, i64* %300, align 1
  %302 = inttoptr i64 %294 to double*
  %303 = load double, double* %302
  %304 = fsub double %298, %303
  %305 = bitcast i8* %291 to double*
  store double %304, double* %305, align 1, !tbaa !2452
  %306 = getelementptr inbounds i8, i8* %291, i64 8
  %307 = bitcast i8* %306 to i64*
  store i64 %301, i64* %307, align 1, !tbaa !2452
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
  %320 = fmul double %314, %319
  %321 = bitcast i8* %308 to double*
  store double %320, double* %321, align 1, !tbaa !2452
  %322 = getelementptr inbounds i8, i8* %308, i64 8
  %323 = bitcast i8* %322 to i64*
  store i64 %317, i64* %323, align 1, !tbaa !2452
  %324 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %325 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %326 = load i64, i64* %RBP
  %327 = sub i64 %326, 16
  %328 = load i64, i64* %PC
  %329 = add i64 %328, 5
  store i64 %329, i64* %PC
  %330 = bitcast i8* %325 to double*
  %331 = load double, double* %330, align 1
  %332 = getelementptr inbounds i8, i8* %325, i64 8
  %333 = bitcast i8* %332 to i64*
  %334 = load i64, i64* %333, align 1
  %335 = inttoptr i64 %327 to double*
  %336 = load double, double* %335
  %337 = fsub double %331, %336
  %338 = bitcast i8* %324 to double*
  store double %337, double* %338, align 1, !tbaa !2452
  %339 = getelementptr inbounds i8, i8* %324, i64 8
  %340 = bitcast i8* %339 to i64*
  store i64 %334, i64* %340, align 1, !tbaa !2452
  %341 = load i64, i64* %RBP
  %342 = sub i64 %341, 24
  %343 = bitcast %union.vec128_t* %XMM0 to i8*
  %344 = load i64, i64* %PC
  %345 = add i64 %344, 5
  store i64 %345, i64* %PC
  %346 = bitcast i8* %343 to double*
  %347 = load double, double* %346, align 1
  %348 = inttoptr i64 %342 to double*
  store double %347, double* %348
  %349 = load i64, i64* %PC
  %350 = add i64 %349, 1257
  %351 = load i64, i64* %PC
  %352 = add i64 %351, 5
  %353 = load i64, i64* %PC
  %354 = add i64 %353, 5
  store i64 %354, i64* %PC
  %355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %356 = load i64, i64* %355, align 8, !tbaa !2428
  %357 = add i64 %356, -8
  %358 = inttoptr i64 %357 to i64*
  store i64 %352, i64* %358
  store i64 %357, i64* %355, align 8, !tbaa !2428
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %350, i64* %359, align 8, !tbaa !2428
  %360 = load i64, i64* %PC
  %361 = call %struct.Memory* @sub_400e80_Proc2(%struct.State* %0, i64 %360, %struct.Memory* %MEMORY.1)
  %362 = load i64, i64* %RBP
  %363 = sub i64 %362, 240
  %364 = load i32, i32* %EAX
  %365 = zext i32 %364 to i64
  %366 = load i64, i64* %PC
  %367 = add i64 %366, 6
  store i64 %367, i64* %PC
  %368 = inttoptr i64 %363 to i32*
  store i32 %364, i32* %368
  %369 = load i64, i64* %RBP
  %370 = sub i64 %369, 116
  %371 = load i64, i64* %PC
  %372 = add i64 %371, 3
  store i64 %372, i64* %PC
  %373 = inttoptr i64 %370 to i32*
  %374 = load i32, i32* %373
  %375 = zext i32 %374 to i64
  store i64 %375, i64* %RAX, align 8, !tbaa !2428
  %376 = load i64, i64* %RAX
  %377 = load i64, i64* %PC
  %378 = add i64 %377, 3
  store i64 %378, i64* %PC
  %379 = trunc i64 %376 to i32
  %380 = add i32 1, %379
  %381 = zext i32 %380 to i64
  store i64 %381, i64* %RAX, align 8, !tbaa !2428
  %382 = icmp ult i32 %380, %379
  %383 = icmp ult i32 %380, 1
  %384 = or i1 %382, %383
  %385 = zext i1 %384 to i8
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %385, i8* %386, align 1, !tbaa !2432
  %387 = and i32 %380, 255
  %388 = call i32 @llvm.ctpop.i32(i32 %387) #16
  %389 = trunc i32 %388 to i8
  %390 = and i8 %389, 1
  %391 = xor i8 %390, 1
  %392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %391, i8* %392, align 1, !tbaa !2446
  %393 = xor i64 1, %376
  %394 = trunc i64 %393 to i32
  %395 = xor i32 %394, %380
  %396 = lshr i32 %395, 4
  %397 = trunc i32 %396 to i8
  %398 = and i8 %397, 1
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %398, i8* %399, align 1, !tbaa !2447
  %400 = icmp eq i32 %380, 0
  %401 = zext i1 %400 to i8
  %402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %401, i8* %402, align 1, !tbaa !2448
  %403 = lshr i32 %380, 31
  %404 = trunc i32 %403 to i8
  %405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %404, i8* %405, align 1, !tbaa !2449
  %406 = lshr i32 %379, 31
  %407 = xor i32 %403, %406
  %408 = add nuw nsw i32 %407, %403
  %409 = icmp eq i32 %408, 2
  %410 = zext i1 %409 to i8
  %411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %410, i8* %411, align 1, !tbaa !2450
  %412 = load i64, i64* %RBP
  %413 = sub i64 %412, 116
  %414 = load i32, i32* %EAX
  %415 = zext i32 %414 to i64
  %416 = load i64, i64* %PC
  %417 = add i64 %416, 3
  store i64 %417, i64* %PC
  %418 = inttoptr i64 %413 to i32*
  store i32 %414, i32* %418
  %419 = load i64, i64* %PC
  %420 = sub i64 %419, 490
  %421 = load i64, i64* %PC
  %422 = add i64 %421, 5
  store i64 %422, i64* %PC
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %420, i64* %423, align 8, !tbaa !2428
  br label %block_4007c1

block_4008f9:                                     ; preds = %block_4008b9, %block_400943
  %MEMORY.1 = phi %struct.Memory* [ %1221, %block_4008b9 ], [ %MEMORY.2, %block_400943 ]
  %424 = load i64, i64* %RBP
  %425 = sub i64 %424, 34
  %426 = load i64, i64* %PC
  %427 = add i64 %426, 4
  store i64 %427, i64* %PC
  %428 = inttoptr i64 %425 to i8*
  %429 = load i8, i8* %428
  %430 = sext i8 %429 to i64
  %431 = and i64 %430, 4294967295
  store i64 %431, i64* %RAX, align 8, !tbaa !2428
  %432 = load i64, i64* %PC
  %433 = add i64 %432, 8
  store i64 %433, i64* %PC
  %434 = load i8, i8* getelementptr inbounds (%Char2Glob_type, %Char2Glob_type* @Char2Glob, i32 0, i32 0, i32 0)
  %435 = sext i8 %434 to i64
  %436 = and i64 %435, 4294967295
  store i64 %436, i64* %RCX, align 8, !tbaa !2428
  %437 = load i32, i32* %EAX
  %438 = zext i32 %437 to i64
  %439 = load i32, i32* %ECX
  %440 = zext i32 %439 to i64
  %441 = load i64, i64* %PC
  %442 = add i64 %441, 2
  store i64 %442, i64* %PC
  %443 = sub i32 %437, %439
  %444 = icmp ult i32 %437, %439
  %445 = zext i1 %444 to i8
  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %445, i8* %446, align 1, !tbaa !2432
  %447 = and i32 %443, 255
  %448 = call i32 @llvm.ctpop.i32(i32 %447) #16
  %449 = trunc i32 %448 to i8
  %450 = and i8 %449, 1
  %451 = xor i8 %450, 1
  %452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %451, i8* %452, align 1, !tbaa !2446
  %453 = xor i64 %440, %438
  %454 = trunc i64 %453 to i32
  %455 = xor i32 %454, %443
  %456 = lshr i32 %455, 4
  %457 = trunc i32 %456 to i8
  %458 = and i8 %457, 1
  %459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %458, i8* %459, align 1, !tbaa !2447
  %460 = icmp eq i32 %443, 0
  %461 = zext i1 %460 to i8
  %462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %461, i8* %462, align 1, !tbaa !2448
  %463 = lshr i32 %443, 31
  %464 = trunc i32 %463 to i8
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %464, i8* %465, align 1, !tbaa !2449
  %466 = lshr i32 %437, 31
  %467 = lshr i32 %439, 31
  %468 = xor i32 %467, %466
  %469 = xor i32 %463, %466
  %470 = add nuw nsw i32 %469, %468
  %471 = icmp eq i32 %470, 2
  %472 = zext i1 %471 to i8
  %473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %472, i8* %473, align 1, !tbaa !2450
  %474 = load i64, i64* %PC
  %475 = add i64 %474, 78
  %476 = load i64, i64* %PC
  %477 = add i64 %476, 6
  %478 = load i64, i64* %PC
  %479 = add i64 %478, 6
  store i64 %479, i64* %PC
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %481 = load i8, i8* %480, align 1, !tbaa !2448
  %482 = icmp eq i8 %481, 0
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %484 = load i8, i8* %483, align 1, !tbaa !2449
  %485 = icmp ne i8 %484, 0
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %487 = load i8, i8* %486, align 1, !tbaa !2450
  %488 = icmp ne i8 %487, 0
  %489 = xor i1 %485, %488
  %490 = xor i1 %489, true
  %491 = and i1 %482, %490
  %492 = zext i1 %491 to i8
  store i8 %492, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %494 = select i1 %491, i64 %475, i64 %477
  store i64 %494, i64* %493, align 8, !tbaa !2428
  %495 = load i8, i8* %BRANCH_TAKEN
  %496 = icmp eq i8 %495, 1
  br i1 %496, label %block_400955, label %block_40090d

block_400932:                                     ; preds = %block_40090d
  %497 = load i64, i64* %RDI
  %498 = load i32, i32* %EDI
  %499 = zext i32 %498 to i64
  %500 = load i64, i64* %PC
  %501 = add i64 %500, 2
  store i64 %501, i64* %PC
  %502 = xor i64 %499, %497
  %503 = trunc i64 %502 to i32
  %504 = and i64 %502, 4294967295
  store i64 %504, i64* %RDI, align 8, !tbaa !2428
  %505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %505, align 1, !tbaa !2432
  %506 = and i32 %503, 255
  %507 = call i32 @llvm.ctpop.i32(i32 %506) #16
  %508 = trunc i32 %507 to i8
  %509 = and i8 %508, 1
  %510 = xor i8 %509, 1
  %511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %510, i8* %511, align 1, !tbaa !2446
  %512 = icmp eq i32 %503, 0
  %513 = zext i1 %512 to i8
  %514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %513, i8* %514, align 1, !tbaa !2448
  %515 = lshr i32 %503, 31
  %516 = trunc i32 %515 to i8
  %517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %516, i8* %517, align 1, !tbaa !2449
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %518, align 1, !tbaa !2450
  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %519, align 1, !tbaa !2447
  %520 = load i64, i64* %RBP
  %521 = sub i64 %520, 40
  %522 = load i64, i64* %PC
  %523 = add i64 %522, 4
  store i64 %523, i64* %PC
  store i64 %521, i64* %RSI, align 8, !tbaa !2428
  %524 = load i64, i64* %PC
  %525 = add i64 %524, 1080
  %526 = load i64, i64* %PC
  %527 = add i64 %526, 5
  %528 = load i64, i64* %PC
  %529 = add i64 %528, 5
  store i64 %529, i64* %PC
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %531 = load i64, i64* %530, align 8, !tbaa !2428
  %532 = add i64 %531, -8
  %533 = inttoptr i64 %532 to i64*
  store i64 %527, i64* %533
  store i64 %532, i64* %530, align 8, !tbaa !2428
  %534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %525, i64* %534, align 8, !tbaa !2428
  %535 = load i64, i64* %PC
  %536 = call %struct.Memory* @sub_400d70_Proc6(%struct.State* %0, i64 %535, %struct.Memory* %995)
  %537 = load i64, i64* %RBP
  %538 = sub i64 %537, 236
  %539 = load i32, i32* %EAX
  %540 = zext i32 %539 to i64
  %541 = load i64, i64* %PC
  %542 = add i64 %541, 6
  store i64 %542, i64* %PC
  %543 = inttoptr i64 %538 to i32*
  store i32 %539, i32* %543
  br label %block_400943

block_400943:                                     ; preds = %block_40090d, %block_400932
  %MEMORY.2 = phi %struct.Memory* [ %995, %block_40090d ], [ %536, %block_400932 ]
  %544 = load i64, i64* %PC
  %545 = add i64 %544, 5
  %546 = load i64, i64* %PC
  %547 = add i64 %546, 5
  store i64 %547, i64* %PC
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %545, i64* %548, align 8, !tbaa !2428
  %549 = load i64, i64* %RBP
  %550 = sub i64 %549, 34
  %551 = load i64, i64* %PC
  %552 = add i64 %551, 3
  store i64 %552, i64* %PC
  %553 = inttoptr i64 %550 to i8*
  %554 = load i8, i8* %553
  store i8 %554, i8* %AL, align 1, !tbaa !2451
  %555 = load i8, i8* %AL
  %556 = zext i8 %555 to i64
  %557 = load i64, i64* %PC
  %558 = add i64 %557, 2
  store i64 %558, i64* %PC
  %559 = add i8 1, %555
  store i8 %559, i8* %AL, align 1, !tbaa !2451
  %560 = icmp ult i8 %559, %555
  %561 = icmp ult i8 %559, 1
  %562 = or i1 %560, %561
  %563 = zext i1 %562 to i8
  %564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %563, i8* %564, align 1, !tbaa !2432
  %565 = zext i8 %559 to i32
  %566 = call i32 @llvm.ctpop.i32(i32 %565) #16
  %567 = trunc i32 %566 to i8
  %568 = and i8 %567, 1
  %569 = xor i8 %568, 1
  %570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %569, i8* %570, align 1, !tbaa !2446
  %571 = xor i64 1, %556
  %572 = trunc i64 %571 to i8
  %573 = xor i8 %572, %559
  %574 = lshr i8 %573, 4
  %575 = and i8 %574, 1
  %576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %575, i8* %576, align 1, !tbaa !2447
  %577 = icmp eq i8 %559, 0
  %578 = zext i1 %577 to i8
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %578, i8* %579, align 1, !tbaa !2448
  %580 = lshr i8 %559, 7
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %580, i8* %581, align 1, !tbaa !2449
  %582 = lshr i8 %555, 7
  %583 = xor i8 %580, %582
  %584 = add nuw nsw i8 %583, %580
  %585 = icmp eq i8 %584, 2
  %586 = zext i1 %585 to i8
  %587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %586, i8* %587, align 1, !tbaa !2450
  %588 = load i64, i64* %RBP
  %589 = sub i64 %588, 34
  %590 = load i8, i8* %AL
  %591 = zext i8 %590 to i64
  %592 = load i64, i64* %PC
  %593 = add i64 %592, 3
  store i64 %593, i64* %PC
  %594 = inttoptr i64 %589 to i8*
  store i8 %590, i8* %594
  %595 = load i64, i64* %PC
  %596 = sub i64 %595, 87
  %597 = load i64, i64* %PC
  %598 = add i64 %597, 5
  store i64 %598, i64* %PC
  %599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %596, i64* %599, align 8, !tbaa !2428
  br label %block_4008f9

block_400872:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit
  %600 = load i64, i64* %RBP
  %601 = sub i64 %600, 32
  %602 = load i64, i64* %PC
  %603 = add i64 %602, 4
  store i64 %603, i64* %PC
  store i64 %601, i64* %RDI, align 8, !tbaa !2428
  %604 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %605 = load i64, i64* %PC
  %606 = add i64 %605, 8
  store i64 %606, i64* %PC
  %607 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401040__rodata_type* @seg_401040__rodata to i64), i64 56) to double*)
  %608 = bitcast i8* %604 to double*
  store double %607, double* %608, align 1, !tbaa !2452
  %609 = getelementptr inbounds i8, i8* %604, i64 8
  %610 = bitcast i8* %609 to double*
  store double 0.000000e+00, double* %610, align 1, !tbaa !2452
  %611 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %612 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %613 = load i64, i64* %RBP
  %614 = sub i64 %613, 16
  %615 = load i64, i64* %PC
  %616 = add i64 %615, 5
  store i64 %616, i64* %PC
  %617 = bitcast i8* %612 to double*
  %618 = load double, double* %617, align 1
  %619 = getelementptr inbounds i8, i8* %612, i64 8
  %620 = bitcast i8* %619 to i64*
  %621 = load i64, i64* %620, align 1
  %622 = inttoptr i64 %614 to double*
  %623 = load double, double* %622
  %624 = fmul double %618, %623
  %625 = bitcast i8* %611 to double*
  store double %624, double* %625, align 1, !tbaa !2452
  %626 = getelementptr inbounds i8, i8* %611, i64 8
  %627 = bitcast i8* %626 to i64*
  store i64 %621, i64* %627, align 1, !tbaa !2452
  %628 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %629 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %630 = load i64, i64* %RBP
  %631 = sub i64 %630, 24
  %632 = load i64, i64* %PC
  %633 = add i64 %632, 5
  store i64 %633, i64* %PC
  %634 = bitcast i8* %629 to double*
  %635 = load double, double* %634, align 1
  %636 = getelementptr inbounds i8, i8* %629, i64 8
  %637 = bitcast i8* %636 to i64*
  %638 = load i64, i64* %637, align 1
  %639 = inttoptr i64 %631 to double*
  %640 = load double, double* %639
  %641 = fsub double %635, %640
  %642 = bitcast i8* %628 to double*
  store double %641, double* %642, align 1, !tbaa !2452
  %643 = getelementptr inbounds i8, i8* %628, i64 8
  %644 = bitcast i8* %643 to i64*
  store i64 %638, i64* %644, align 1, !tbaa !2452
  %645 = load i64, i64* %RBP
  %646 = sub i64 %645, 32
  %647 = bitcast %union.vec128_t* %XMM0 to i8*
  %648 = load i64, i64* %PC
  %649 = add i64 %648, 5
  store i64 %649, i64* %PC
  %650 = bitcast i8* %647 to double*
  %651 = load double, double* %650, align 1
  %652 = inttoptr i64 %646 to double*
  store double %651, double* %652
  %653 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %654 = load i64, i64* %RBP
  %655 = sub i64 %654, 16
  %656 = load i64, i64* %PC
  %657 = add i64 %656, 5
  store i64 %657, i64* %PC
  %658 = inttoptr i64 %655 to double*
  %659 = load double, double* %658
  %660 = bitcast i8* %653 to double*
  store double %659, double* %660, align 1, !tbaa !2452
  %661 = getelementptr inbounds i8, i8* %653, i64 8
  %662 = bitcast i8* %661 to double*
  store double 0.000000e+00, double* %662, align 1, !tbaa !2452
  %663 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %664 = load i64, i64* %RBP
  %665 = sub i64 %664, 24
  %666 = load i64, i64* %PC
  %667 = add i64 %666, 5
  store i64 %667, i64* %PC
  %668 = inttoptr i64 %665 to double*
  %669 = load double, double* %668
  %670 = bitcast i8* %663 to double*
  store double %669, double* %670, align 1, !tbaa !2452
  %671 = getelementptr inbounds i8, i8* %663, i64 8
  %672 = bitcast i8* %671 to double*
  store double 0.000000e+00, double* %672, align 1, !tbaa !2452
  %673 = load i64, i64* %PC
  %674 = add i64 %673, 649
  %675 = load i64, i64* %PC
  %676 = add i64 %675, 5
  %677 = load i64, i64* %PC
  %678 = add i64 %677, 5
  store i64 %678, i64* %PC
  %679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %680 = load i64, i64* %679, align 8, !tbaa !2428
  %681 = add i64 %680, -8
  %682 = inttoptr i64 %681 to i64*
  store i64 %676, i64* %682
  store i64 %681, i64* %679, align 8, !tbaa !2428
  %683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %674, i64* %683, align 8, !tbaa !2428
  %684 = load i64, i64* %PC
  %685 = call %struct.Memory* @sub_400b20_Proc7(%struct.State* %0, i64 %684, %struct.Memory* %182)
  %686 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %687 = load i64, i64* %PC
  %688 = add i64 %687, 8
  store i64 %688, i64* %PC
  %689 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401040__rodata_type* @seg_401040__rodata to i64), i64 48) to double*)
  %690 = bitcast i8* %686 to double*
  store double %689, double* %690, align 1, !tbaa !2452
  %691 = getelementptr inbounds i8, i8* %686, i64 8
  %692 = bitcast i8* %691 to double*
  store double 0.000000e+00, double* %692, align 1, !tbaa !2452
  %693 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %694 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %695 = load i64, i64* %RBP
  %696 = sub i64 %695, 16
  %697 = load i64, i64* %PC
  %698 = add i64 %697, 5
  store i64 %698, i64* %PC
  %699 = bitcast i8* %694 to double*
  %700 = load double, double* %699, align 1
  %701 = getelementptr inbounds i8, i8* %694, i64 8
  %702 = bitcast i8* %701 to i64*
  %703 = load i64, i64* %702, align 1
  %704 = inttoptr i64 %696 to double*
  %705 = load double, double* %704
  %706 = fadd double %700, %705
  %707 = bitcast i8* %693 to double*
  store double %706, double* %707, align 1, !tbaa !2452
  %708 = getelementptr inbounds i8, i8* %693, i64 8
  %709 = bitcast i8* %708 to i64*
  store i64 %703, i64* %709, align 1, !tbaa !2452
  %710 = load i64, i64* %RBP
  %711 = sub i64 %710, 16
  %712 = bitcast %union.vec128_t* %XMM0 to i8*
  %713 = load i64, i64* %PC
  %714 = add i64 %713, 5
  store i64 %714, i64* %PC
  %715 = bitcast i8* %712 to double*
  %716 = load double, double* %715, align 1
  %717 = inttoptr i64 %711 to double*
  store double %716, double* %717
  %718 = load i64, i64* %RBP
  %719 = sub i64 %718, 220
  %720 = load i32, i32* %EAX
  %721 = zext i32 %720 to i64
  %722 = load i64, i64* %PC
  %723 = add i64 %722, 6
  store i64 %723, i64* %PC
  %724 = inttoptr i64 %719 to i32*
  store i32 %720, i32* %724
  %725 = load i64, i64* %PC
  %726 = sub i64 %725, 86
  %727 = load i64, i64* %PC
  %728 = add i64 %727, 5
  store i64 %728, i64* %PC
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %726, i64* %729, align 8, !tbaa !2428
  br label %block_40085e

block_4007ce:                                     ; preds = %block_4007c1
  %730 = load i64, i64* %PC
  %731 = add i64 %730, 498
  %732 = load i64, i64* %PC
  %733 = add i64 %732, 5
  %734 = load i64, i64* %PC
  %735 = add i64 %734, 5
  store i64 %735, i64* %PC
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %737 = load i64, i64* %736, align 8, !tbaa !2428
  %738 = add i64 %737, -8
  %739 = inttoptr i64 %738 to i64*
  store i64 %733, i64* %739
  store i64 %738, i64* %736, align 8, !tbaa !2428
  %740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %731, i64* %740, align 8, !tbaa !2428
  %741 = load i64, i64* %PC
  %742 = call %struct.Memory* @sub_4009c0_Proc5(%struct.State* %0, i64 %741, %struct.Memory* %MEMORY.4)
  %743 = load i64, i64* %RBP
  %744 = sub i64 %743, 180
  %745 = load i32, i32* %EAX
  %746 = zext i32 %745 to i64
  %747 = load i64, i64* %PC
  %748 = add i64 %747, 6
  store i64 %748, i64* %PC
  %749 = inttoptr i64 %744 to i32*
  store i32 %745, i32* %749
  %750 = load i64, i64* %PC
  %751 = add i64 %750, 519
  %752 = load i64, i64* %PC
  %753 = add i64 %752, 5
  %754 = load i64, i64* %PC
  %755 = add i64 %754, 5
  store i64 %755, i64* %PC
  %756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %757 = load i64, i64* %756, align 8, !tbaa !2428
  %758 = add i64 %757, -8
  %759 = inttoptr i64 %758 to i64*
  store i64 %753, i64* %759
  store i64 %758, i64* %756, align 8, !tbaa !2428
  %760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %751, i64* %760, align 8, !tbaa !2428
  %761 = load i64, i64* %PC
  %762 = call %struct.Memory* @sub_4009e0_Proc4(%struct.State* %0, i64 %761, %struct.Memory* %742)
  %763 = load i64, i64* %RBP
  %764 = sub i64 %763, 112
  %765 = load i64, i64* %PC
  %766 = add i64 %765, 4
  store i64 %766, i64* %PC
  store i64 %764, i64* %RCX, align 8, !tbaa !2428
  %767 = load i64, i64* %RBP
  %768 = sub i64 %767, 80
  %769 = load i64, i64* %PC
  %770 = add i64 %769, 4
  store i64 %770, i64* %PC
  store i64 %768, i64* %RDI, align 8, !tbaa !2428
  %771 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %772 = load i64, i64* %PC
  %773 = add i64 %772, 8
  store i64 %773, i64* %PC
  %774 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401040__rodata_type* @seg_401040__rodata to i64), i64 24) to double*)
  %775 = bitcast i8* %771 to double*
  store double %774, double* %775, align 1, !tbaa !2452
  %776 = getelementptr inbounds i8, i8* %771, i64 8
  %777 = bitcast i8* %776 to double*
  store double 0.000000e+00, double* %777, align 1, !tbaa !2452
  %778 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %779 = load i64, i64* %PC
  %780 = add i64 %779, 8
  store i64 %780, i64* %PC
  %781 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401040__rodata_type* @seg_401040__rodata to i64), i64 32) to double*)
  %782 = bitcast i8* %778 to double*
  store double %781, double* %782, align 1, !tbaa !2452
  %783 = getelementptr inbounds i8, i8* %778, i64 8
  %784 = bitcast i8* %783 to double*
  store double 0.000000e+00, double* %784, align 1, !tbaa !2452
  %785 = load i64, i64* %RBP
  %786 = sub i64 %785, 16
  %787 = bitcast %union.vec128_t* %XMM1 to i8*
  %788 = load i64, i64* %PC
  %789 = add i64 %788, 5
  store i64 %789, i64* %PC
  %790 = bitcast i8* %787 to double*
  %791 = load double, double* %790, align 1
  %792 = inttoptr i64 %786 to double*
  store double %791, double* %792
  %793 = load i64, i64* %RBP
  %794 = sub i64 %793, 24
  %795 = bitcast %union.vec128_t* %XMM0 to i8*
  %796 = load i64, i64* %PC
  %797 = add i64 %796, 5
  store i64 %797, i64* %PC
  %798 = bitcast i8* %795 to double*
  %799 = load double, double* %798, align 1
  %800 = inttoptr i64 %794 to double*
  store double %799, double* %800
  %801 = load i64, i64* %PC
  %802 = add i64 %801, 5
  store i64 %802, i64* %PC
  store i64 and (i64 add (i64 ptrtoint (%seg_401040__rodata_type* @seg_401040__rodata to i64), i64 195), i64 4294967295), i64* %RDX, align 8, !tbaa !2428
  %803 = load i32, i32* %EDX
  %804 = zext i32 %803 to i64
  %805 = load i64, i64* %PC
  %806 = add i64 %805, 2
  store i64 %806, i64* %PC
  %807 = and i64 %804, 4294967295
  store i64 %807, i64* %RSI, align 8, !tbaa !2428
  %808 = load i64, i64* %RBP
  %809 = sub i64 %808, 192
  %810 = load i64, i64* %RDI
  %811 = load i64, i64* %PC
  %812 = add i64 %811, 7
  store i64 %812, i64* %PC
  %813 = inttoptr i64 %809 to i64*
  store i64 %810, i64* %813
  %814 = load i64, i64* %RCX
  %815 = load i64, i64* %PC
  %816 = add i64 %815, 3
  store i64 %816, i64* %PC
  store i64 %814, i64* %RDI, align 8, !tbaa !2428
  %817 = load i64, i64* %RBP
  %818 = sub i64 %817, 196
  %819 = load i32, i32* %EAX
  %820 = zext i32 %819 to i64
  %821 = load i64, i64* %PC
  %822 = add i64 %821, 6
  store i64 %822, i64* %PC
  %823 = inttoptr i64 %818 to i32*
  store i32 %819, i32* %823
  %824 = load i64, i64* %RBP
  %825 = sub i64 %824, 208
  %826 = load i64, i64* %RCX
  %827 = load i64, i64* %PC
  %828 = add i64 %827, 7
  store i64 %828, i64* %PC
  %829 = inttoptr i64 %825 to i64*
  store i64 %826, i64* %829
  %830 = load i64, i64* %PC
  %831 = sub i64 %830, 798
  %832 = load i64, i64* %PC
  %833 = add i64 %832, 5
  %834 = load i64, i64* %PC
  %835 = add i64 %834, 5
  store i64 %835, i64* %PC
  %836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %837 = load i64, i64* %836, align 8, !tbaa !2428
  %838 = add i64 %837, -8
  %839 = inttoptr i64 %838 to i64*
  store i64 %833, i64* %839
  store i64 %838, i64* %836, align 8, !tbaa !2428
  %840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %831, i64* %840, align 8, !tbaa !2428
  %841 = load i64, i64* %PC
  %842 = call %struct.Memory* @ext_6073b0_strcpy(%struct.State* %0, i64 %841, %struct.Memory* %762)
  %843 = load i64, i64* %RBP
  %844 = sub i64 %843, 40
  %845 = load i64, i64* %PC
  %846 = add i64 %845, 7
  store i64 %846, i64* %PC
  %847 = inttoptr i64 %844 to i32*
  store i32 10000, i32* %847
  %848 = load i64, i64* %RBP
  %849 = sub i64 %848, 192
  %850 = load i64, i64* %PC
  %851 = add i64 %850, 7
  store i64 %851, i64* %PC
  %852 = inttoptr i64 %849 to i64*
  %853 = load i64, i64* %852
  store i64 %853, i64* %RDI, align 8, !tbaa !2428
  %854 = load i64, i64* %RBP
  %855 = sub i64 %854, 208
  %856 = load i64, i64* %PC
  %857 = add i64 %856, 7
  store i64 %857, i64* %PC
  %858 = inttoptr i64 %855 to i64*
  %859 = load i64, i64* %858
  store i64 %859, i64* %RSI, align 8, !tbaa !2428
  %860 = load i64, i64* %RBP
  %861 = sub i64 %860, 216
  %862 = load i64, i64* %RAX
  %863 = load i64, i64* %PC
  %864 = add i64 %863, 7
  store i64 %864, i64* %PC
  %865 = inttoptr i64 %861 to i64*
  store i64 %862, i64* %865
  %866 = load i64, i64* %PC
  %867 = add i64 %866, 481
  %868 = load i64, i64* %PC
  %869 = add i64 %868, 5
  %870 = load i64, i64* %PC
  %871 = add i64 %870, 5
  store i64 %871, i64* %PC
  %872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %873 = load i64, i64* %872, align 8, !tbaa !2428
  %874 = add i64 %873, -8
  %875 = inttoptr i64 %874 to i64*
  store i64 %869, i64* %875
  store i64 %874, i64* %872, align 8, !tbaa !2428
  %876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %867, i64* %876, align 8, !tbaa !2428
  %877 = load i64, i64* %PC
  %878 = call %struct.Memory* @sub_400a20_Func2(%struct.State* %0, i64 %877, %struct.Memory* %842)
  %879 = load i32, i32* %EAX
  %880 = zext i32 %879 to i64
  %881 = load i64, i64* %PC
  %882 = add i64 %881, 3
  store i64 %882, i64* %PC
  %883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %883, align 1, !tbaa !2432
  %884 = and i32 %879, 255
  %885 = call i32 @llvm.ctpop.i32(i32 %884) #16
  %886 = trunc i32 %885 to i8
  %887 = and i8 %886, 1
  %888 = xor i8 %887, 1
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %888, i8* %889, align 1, !tbaa !2446
  %890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %890, align 1, !tbaa !2447
  %891 = icmp eq i32 %879, 0
  %892 = zext i1 %891 to i8
  %893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %892, i8* %893, align 1, !tbaa !2448
  %894 = lshr i32 %879, 31
  %895 = trunc i32 %894 to i8
  %896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %895, i8* %896, align 1, !tbaa !2449
  %897 = lshr i32 %879, 31
  %898 = xor i32 %894, %897
  %899 = add nuw nsw i32 %898, %897
  %900 = icmp eq i32 %899, 2
  %901 = zext i1 %900 to i8
  %902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %901, i8* %902, align 1, !tbaa !2450
  %903 = load i64, i64* %PC
  %904 = add i64 %903, 4
  store i64 %904, i64* %PC
  %905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %906 = load i8, i8* %905, align 1, !tbaa !2448
  %907 = icmp eq i8 %906, 0
  %908 = zext i1 %907 to i8
  store i8 %908, i8* %R8B, align 1, !tbaa !2451
  %909 = load i8, i8* %R8B
  %910 = zext i8 %909 to i64
  %911 = load i64, i64* %PC
  %912 = add i64 %911, 4
  store i64 %912, i64* %PC
  %913 = xor i64 255, %910
  %914 = trunc i64 %913 to i8
  store i8 %914, i8* %R8B, align 1, !tbaa !2451
  %915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %915, align 1, !tbaa !2432
  %916 = trunc i64 %913 to i32
  %917 = and i32 %916, 255
  %918 = call i32 @llvm.ctpop.i32(i32 %917) #16
  %919 = trunc i32 %918 to i8
  %920 = and i8 %919, 1
  %921 = xor i8 %920, 1
  %922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %921, i8* %922, align 1, !tbaa !2446
  %923 = icmp eq i8 %914, 0
  %924 = zext i1 %923 to i8
  %925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %924, i8* %925, align 1, !tbaa !2448
  %926 = lshr i8 %914, 7
  %927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %926, i8* %927, align 1, !tbaa !2449
  %928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %928, align 1, !tbaa !2450
  %929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %929, align 1, !tbaa !2447
  %930 = load i8, i8* %R8B
  %931 = zext i8 %930 to i64
  %932 = load i64, i64* %PC
  %933 = add i64 %932, 4
  store i64 %933, i64* %PC
  %934 = and i64 1, %931
  %935 = trunc i64 %934 to i8
  store i8 %935, i8* %R8B, align 1, !tbaa !2451
  %936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %936, align 1, !tbaa !2432
  %937 = trunc i64 %934 to i32
  %938 = and i32 %937, 255
  %939 = call i32 @llvm.ctpop.i32(i32 %938) #16
  %940 = trunc i32 %939 to i8
  %941 = and i8 %940, 1
  %942 = xor i8 %941, 1
  %943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %942, i8* %943, align 1, !tbaa !2446
  %944 = icmp eq i8 %935, 0
  %945 = zext i1 %944 to i8
  %946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %945, i8* %946, align 1, !tbaa !2448
  %947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %947, align 1, !tbaa !2449
  %948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %948, align 1, !tbaa !2450
  %949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %949, align 1, !tbaa !2447
  %950 = load i8, i8* %R8B
  %951 = zext i8 %950 to i64
  %952 = load i64, i64* %PC
  %953 = add i64 %952, 4
  store i64 %953, i64* %PC
  %954 = and i64 %951, 255
  store i64 %954, i64* %RAX, align 8, !tbaa !2428
  %955 = load i32, i32* %EAX
  %956 = zext i32 %955 to i64
  %957 = load i64, i64* %PC
  %958 = add i64 %957, 7
  store i64 %958, i64* %PC
  store i32 %955, i32* bitcast (%BoolGlob_type* @BoolGlob to i32*)
  br label %block_40085e

block_40090d:                                     ; preds = %block_4008f9
  %959 = load i64, i64* %PC
  %960 = add i64 %959, 5
  store i64 %960, i64* %PC
  store i64 67, i64* %RSI, align 8, !tbaa !2428
  %961 = load i64, i64* %RBP
  %962 = sub i64 %961, 40
  %963 = load i64, i64* %PC
  %964 = add i64 %963, 3
  store i64 %964, i64* %PC
  %965 = inttoptr i64 %962 to i32*
  %966 = load i32, i32* %965
  %967 = zext i32 %966 to i64
  store i64 %967, i64* %RAX, align 8, !tbaa !2428
  %968 = load i64, i64* %RBP
  %969 = sub i64 %968, 34
  %970 = load i64, i64* %PC
  %971 = add i64 %970, 4
  store i64 %971, i64* %PC
  %972 = inttoptr i64 %969 to i8*
  %973 = load i8, i8* %972
  %974 = sext i8 %973 to i64
  %975 = and i64 %974, 4294967295
  store i64 %975, i64* %RDI, align 8, !tbaa !2428
  %976 = load i64, i64* %RBP
  %977 = sub i64 %976, 232
  %978 = load i32, i32* %EAX
  %979 = zext i32 %978 to i64
  %980 = load i64, i64* %PC
  %981 = add i64 %980, 6
  store i64 %981, i64* %PC
  %982 = inttoptr i64 %977 to i32*
  store i32 %978, i32* %982
  %983 = load i64, i64* %PC
  %984 = add i64 %983, 1025
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
  %995 = call %struct.Memory* @sub_400d20_Func1(%struct.State* %0, i64 %994, %struct.Memory* %MEMORY.1)
  %996 = load i64, i64* %RBP
  %997 = sub i64 %996, 232
  %998 = load i64, i64* %PC
  %999 = add i64 %998, 6
  store i64 %999, i64* %PC
  %1000 = inttoptr i64 %997 to i32*
  %1001 = load i32, i32* %1000
  %1002 = zext i32 %1001 to i64
  store i64 %1002, i64* %RSI, align 8, !tbaa !2428
  %1003 = load i32, i32* %ESI
  %1004 = zext i32 %1003 to i64
  %1005 = load i32, i32* %EAX
  %1006 = zext i32 %1005 to i64
  %1007 = load i64, i64* %PC
  %1008 = add i64 %1007, 2
  store i64 %1008, i64* %PC
  %1009 = sub i32 %1003, %1005
  %1010 = icmp ult i32 %1003, %1005
  %1011 = zext i1 %1010 to i8
  %1012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1011, i8* %1012, align 1, !tbaa !2432
  %1013 = and i32 %1009, 255
  %1014 = call i32 @llvm.ctpop.i32(i32 %1013) #16
  %1015 = trunc i32 %1014 to i8
  %1016 = and i8 %1015, 1
  %1017 = xor i8 %1016, 1
  %1018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1017, i8* %1018, align 1, !tbaa !2446
  %1019 = xor i64 %1006, %1004
  %1020 = trunc i64 %1019 to i32
  %1021 = xor i32 %1020, %1009
  %1022 = lshr i32 %1021, 4
  %1023 = trunc i32 %1022 to i8
  %1024 = and i8 %1023, 1
  %1025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1024, i8* %1025, align 1, !tbaa !2447
  %1026 = icmp eq i32 %1009, 0
  %1027 = zext i1 %1026 to i8
  %1028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1027, i8* %1028, align 1, !tbaa !2448
  %1029 = lshr i32 %1009, 31
  %1030 = trunc i32 %1029 to i8
  %1031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1030, i8* %1031, align 1, !tbaa !2449
  %1032 = lshr i32 %1003, 31
  %1033 = lshr i32 %1005, 31
  %1034 = xor i32 %1033, %1032
  %1035 = xor i32 %1029, %1032
  %1036 = add nuw nsw i32 %1035, %1034
  %1037 = icmp eq i32 %1036, 2
  %1038 = zext i1 %1037 to i8
  %1039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1038, i8* %1039, align 1, !tbaa !2450
  %1040 = load i64, i64* %PC
  %1041 = add i64 %1040, 23
  %1042 = load i64, i64* %PC
  %1043 = add i64 %1042, 6
  %1044 = load i64, i64* %PC
  %1045 = add i64 %1044, 6
  store i64 %1045, i64* %PC
  %1046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1047 = load i8, i8* %1046, align 1, !tbaa !2448
  %1048 = icmp eq i8 %1047, 0
  %1049 = zext i1 %1048 to i8
  store i8 %1049, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1051 = select i1 %1048, i64 %1041, i64 %1043
  store i64 %1051, i64* %1050, align 8, !tbaa !2428
  %1052 = load i8, i8* %BRANCH_TAKEN
  %1053 = icmp eq i8 %1052, 1
  br i1 %1053, label %block_400943, label %block_400932

block_4006ab:                                     ; preds = %block_4006b8, %block_400690
  %MEMORY.3 = phi %struct.Memory* [ %112, %block_400690 ], [ %MEMORY.3, %block_4006b8 ]
  %1054 = load i64, i64* %RBP
  %1055 = sub i64 %1054, 116
  %1056 = load i64, i64* %PC
  %1057 = add i64 %1056, 7
  store i64 %1057, i64* %PC
  %1058 = inttoptr i64 %1055 to i32*
  %1059 = load i32, i32* %1058
  %1060 = sub i32 %1059, 100000000
  %1061 = icmp ult i32 %1059, 100000000
  %1062 = zext i1 %1061 to i8
  %1063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1062, i8* %1063, align 1, !tbaa !2432
  %1064 = and i32 %1060, 255
  %1065 = call i32 @llvm.ctpop.i32(i32 %1064) #16
  %1066 = trunc i32 %1065 to i8
  %1067 = and i8 %1066, 1
  %1068 = xor i8 %1067, 1
  %1069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1068, i8* %1069, align 1, !tbaa !2446
  %1070 = xor i32 %1059, 100000000
  %1071 = xor i32 %1070, %1060
  %1072 = lshr i32 %1071, 4
  %1073 = trunc i32 %1072 to i8
  %1074 = and i8 %1073, 1
  %1075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1074, i8* %1075, align 1, !tbaa !2447
  %1076 = icmp eq i32 %1060, 0
  %1077 = zext i1 %1076 to i8
  %1078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1077, i8* %1078, align 1, !tbaa !2448
  %1079 = lshr i32 %1060, 31
  %1080 = trunc i32 %1079 to i8
  %1081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1080, i8* %1081, align 1, !tbaa !2449
  %1082 = lshr i32 %1059, 31
  %1083 = xor i32 %1079, %1082
  %1084 = add nuw nsw i32 %1083, %1082
  %1085 = icmp eq i32 %1084, 2
  %1086 = zext i1 %1085 to i8
  %1087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1086, i8* %1087, align 1, !tbaa !2450
  %1088 = load i64, i64* %PC
  %1089 = add i64 %1088, 25
  %1090 = load i64, i64* %PC
  %1091 = add i64 %1090, 6
  %1092 = load i64, i64* %PC
  %1093 = add i64 %1092, 6
  store i64 %1093, i64* %PC
  %1094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1095 = load i8, i8* %1094, align 1, !tbaa !2432
  %1096 = icmp eq i8 %1095, 0
  %1097 = zext i1 %1096 to i8
  store i8 %1097, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1099 = select i1 %1096, i64 %1089, i64 %1091
  store i64 %1099, i64* %1098, align 8, !tbaa !2428
  %1100 = load i8, i8* %BRANCH_TAKEN
  %1101 = icmp eq i8 %1100, 1
  %1102 = load i64, i64* %PC
  br i1 %1101, label %block_4006cb, label %block_4006b8

block_4006b8:                                     ; preds = %block_4006ab
  %1103 = add i64 %1102, 5
  %1104 = load i64, i64* %PC
  %1105 = add i64 %1104, 5
  store i64 %1105, i64* %PC
  %1106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1103, i64* %1106, align 8, !tbaa !2428
  %1107 = load i64, i64* %RBP
  %1108 = sub i64 %1107, 116
  %1109 = load i64, i64* %PC
  %1110 = add i64 %1109, 3
  store i64 %1110, i64* %PC
  %1111 = inttoptr i64 %1108 to i32*
  %1112 = load i32, i32* %1111
  %1113 = zext i32 %1112 to i64
  store i64 %1113, i64* %RAX, align 8, !tbaa !2428
  %1114 = load i64, i64* %RAX
  %1115 = load i64, i64* %PC
  %1116 = add i64 %1115, 3
  store i64 %1116, i64* %PC
  %1117 = trunc i64 %1114 to i32
  %1118 = add i32 1, %1117
  %1119 = zext i32 %1118 to i64
  store i64 %1119, i64* %RAX, align 8, !tbaa !2428
  %1120 = icmp ult i32 %1118, %1117
  %1121 = icmp ult i32 %1118, 1
  %1122 = or i1 %1120, %1121
  %1123 = zext i1 %1122 to i8
  %1124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1123, i8* %1124, align 1, !tbaa !2432
  %1125 = and i32 %1118, 255
  %1126 = call i32 @llvm.ctpop.i32(i32 %1125) #16
  %1127 = trunc i32 %1126 to i8
  %1128 = and i8 %1127, 1
  %1129 = xor i8 %1128, 1
  %1130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1129, i8* %1130, align 1, !tbaa !2446
  %1131 = xor i64 1, %1114
  %1132 = trunc i64 %1131 to i32
  %1133 = xor i32 %1132, %1118
  %1134 = lshr i32 %1133, 4
  %1135 = trunc i32 %1134 to i8
  %1136 = and i8 %1135, 1
  %1137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1136, i8* %1137, align 1, !tbaa !2447
  %1138 = icmp eq i32 %1118, 0
  %1139 = zext i1 %1138 to i8
  %1140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1139, i8* %1140, align 1, !tbaa !2448
  %1141 = lshr i32 %1118, 31
  %1142 = trunc i32 %1141 to i8
  %1143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1142, i8* %1143, align 1, !tbaa !2449
  %1144 = lshr i32 %1117, 31
  %1145 = xor i32 %1141, %1144
  %1146 = add nuw nsw i32 %1145, %1141
  %1147 = icmp eq i32 %1146, 2
  %1148 = zext i1 %1147 to i8
  %1149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1148, i8* %1149, align 1, !tbaa !2450
  %1150 = load i64, i64* %RBP
  %1151 = sub i64 %1150, 116
  %1152 = load i32, i32* %EAX
  %1153 = zext i32 %1152 to i64
  %1154 = load i64, i64* %PC
  %1155 = add i64 %1154, 3
  store i64 %1155, i64* %PC
  %1156 = inttoptr i64 %1151 to i32*
  store i32 %1152, i32* %1156
  %1157 = load i64, i64* %PC
  %1158 = sub i64 %1157, 27
  %1159 = load i64, i64* %PC
  %1160 = add i64 %1159, 5
  store i64 %1160, i64* %PC
  %1161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1158, i64* %1161, align 8, !tbaa !2428
  br label %block_4006ab

block_4008b9:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit
  %1162 = load i64, i64* %PC
  %1163 = add i64 %1162, 10
  store i64 %1163, i64* %PC
  store i64 ptrtoint (%Array1Glob_type* @Array1Glob to i64), i64* %RDI, align 8, !tbaa !2428
  %1164 = load i64, i64* %PC
  %1165 = add i64 %1164, 10
  store i64 %1165, i64* %PC
  store i64 ptrtoint (%Array2Glob_type* @Array2Glob to i64), i64* %RSI, align 8, !tbaa !2428
  %1166 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1167 = load i64, i64* %RBP
  %1168 = sub i64 %1167, 16
  %1169 = load i64, i64* %PC
  %1170 = add i64 %1169, 5
  store i64 %1170, i64* %PC
  %1171 = inttoptr i64 %1168 to double*
  %1172 = load double, double* %1171
  %1173 = bitcast i8* %1166 to double*
  store double %1172, double* %1173, align 1, !tbaa !2452
  %1174 = getelementptr inbounds i8, i8* %1166, i64 8
  %1175 = bitcast i8* %1174 to double*
  store double 0.000000e+00, double* %1175, align 1, !tbaa !2452
  %1176 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1177 = load i64, i64* %RBP
  %1178 = sub i64 %1177, 32
  %1179 = load i64, i64* %PC
  %1180 = add i64 %1179, 5
  store i64 %1180, i64* %PC
  %1181 = inttoptr i64 %1178 to double*
  %1182 = load double, double* %1181
  %1183 = bitcast i8* %1176 to double*
  store double %1182, double* %1183, align 1, !tbaa !2452
  %1184 = getelementptr inbounds i8, i8* %1176, i64 8
  %1185 = bitcast i8* %1184 to double*
  store double 0.000000e+00, double* %1185, align 1, !tbaa !2452
  %1186 = load i64, i64* %PC
  %1187 = add i64 %1186, 649
  %1188 = load i64, i64* %PC
  %1189 = add i64 %1188, 5
  %1190 = load i64, i64* %PC
  %1191 = add i64 %1190, 5
  store i64 %1191, i64* %PC
  %1192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1193 = load i64, i64* %1192, align 8, !tbaa !2428
  %1194 = add i64 %1193, -8
  %1195 = inttoptr i64 %1194 to i64*
  store i64 %1189, i64* %1195
  store i64 %1194, i64* %1192, align 8, !tbaa !2428
  %1196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1187, i64* %1196, align 8, !tbaa !2428
  %1197 = load i64, i64* %PC
  %1198 = call %struct.Memory* @sub_400b60_Proc8(%struct.State* %0, i64 %1197, %struct.Memory* %182)
  %1199 = load i64, i64* %PC
  %1200 = add i64 %1199, 8
  store i64 %1200, i64* %PC
  %1201 = load i64, i64* bitcast (%PtrGlb_type* @PtrGlb to i64*)
  store i64 %1201, i64* %RDI, align 8, !tbaa !2428
  %1202 = load i64, i64* %RBP
  %1203 = sub i64 %1202, 224
  %1204 = load i32, i32* %EAX
  %1205 = zext i32 %1204 to i64
  %1206 = load i64, i64* %PC
  %1207 = add i64 %1206, 6
  store i64 %1207, i64* %PC
  %1208 = inttoptr i64 %1203 to i32*
  store i32 %1204, i32* %1208
  %1209 = load i64, i64* %PC
  %1210 = add i64 %1209, 998
  %1211 = load i64, i64* %PC
  %1212 = add i64 %1211, 5
  %1213 = load i64, i64* %PC
  %1214 = add i64 %1213, 5
  store i64 %1214, i64* %PC
  %1215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1216 = load i64, i64* %1215, align 8, !tbaa !2428
  %1217 = add i64 %1216, -8
  %1218 = inttoptr i64 %1217 to i64*
  store i64 %1212, i64* %1218
  store i64 %1217, i64* %1215, align 8, !tbaa !2428
  %1219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1210, i64* %1219, align 8, !tbaa !2428
  %1220 = load i64, i64* %PC
  %1221 = call %struct.Memory* @sub_400cd0_Proc1(%struct.State* %0, i64 %1220, %struct.Memory* %1198)
  %1222 = load i64, i64* %RBP
  %1223 = sub i64 %1222, 34
  %1224 = load i64, i64* %PC
  %1225 = add i64 %1224, 4
  store i64 %1225, i64* %PC
  %1226 = inttoptr i64 %1223 to i8*
  store i8 65, i8* %1226
  %1227 = load i64, i64* %RBP
  %1228 = sub i64 %1227, 228
  %1229 = load i32, i32* %EAX
  %1230 = zext i32 %1229 to i64
  %1231 = load i64, i64* %PC
  %1232 = add i64 %1231, 6
  store i64 %1232, i64* %PC
  %1233 = inttoptr i64 %1228 to i32*
  store i32 %1229, i32* %1233
  br label %block_4008f9

block_4009b0:                                     ; preds = %block_4007c1
  %1234 = load i64, i64* %RBP
  %1235 = sub i64 %1234, 4
  %1236 = load i64, i64* %PC
  %1237 = add i64 %1236, 3
  store i64 %1237, i64* %PC
  %1238 = inttoptr i64 %1235 to i32*
  %1239 = load i32, i32* %1238
  %1240 = zext i32 %1239 to i64
  store i64 %1240, i64* %RAX, align 8, !tbaa !2428
  %1241 = load i64, i64* %RSP
  %1242 = load i64, i64* %PC
  %1243 = add i64 %1242, 7
  store i64 %1243, i64* %PC
  %1244 = add i64 240, %1241
  store i64 %1244, i64* %RSP, align 8, !tbaa !2428
  %1245 = icmp ult i64 %1244, %1241
  %1246 = icmp ult i64 %1244, 240
  %1247 = or i1 %1245, %1246
  %1248 = zext i1 %1247 to i8
  %1249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1248, i8* %1249, align 1, !tbaa !2432
  %1250 = trunc i64 %1244 to i32
  %1251 = and i32 %1250, 255
  %1252 = call i32 @llvm.ctpop.i32(i32 %1251) #16
  %1253 = trunc i32 %1252 to i8
  %1254 = and i8 %1253, 1
  %1255 = xor i8 %1254, 1
  %1256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1255, i8* %1256, align 1, !tbaa !2446
  %1257 = xor i64 240, %1241
  %1258 = xor i64 %1257, %1244
  %1259 = lshr i64 %1258, 4
  %1260 = trunc i64 %1259 to i8
  %1261 = and i8 %1260, 1
  %1262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1261, i8* %1262, align 1, !tbaa !2447
  %1263 = icmp eq i64 %1244, 0
  %1264 = zext i1 %1263 to i8
  %1265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1264, i8* %1265, align 1, !tbaa !2448
  %1266 = lshr i64 %1244, 63
  %1267 = trunc i64 %1266 to i8
  %1268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1267, i8* %1268, align 1, !tbaa !2449
  %1269 = lshr i64 %1241, 63
  %1270 = xor i64 %1266, %1269
  %1271 = add nuw nsw i64 %1270, %1266
  %1272 = icmp eq i64 %1271, 2
  %1273 = zext i1 %1272 to i8
  %1274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1273, i8* %1274, align 1, !tbaa !2450
  %1275 = load i64, i64* %PC
  %1276 = add i64 %1275, 1
  store i64 %1276, i64* %PC
  %1277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1278 = load i64, i64* %1277, align 8, !tbaa !2428
  %1279 = add i64 %1278, 8
  %1280 = inttoptr i64 %1278 to i64*
  %1281 = load i64, i64* %1280
  store i64 %1281, i64* %RBP, align 8, !tbaa !2428
  store i64 %1279, i64* %1277, align 8, !tbaa !2428
  %1282 = load i64, i64* %PC
  %1283 = add i64 %1282, 1
  store i64 %1283, i64* %PC
  %1284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1286 = load i64, i64* %1285, align 8, !tbaa !2428
  %1287 = inttoptr i64 %1286 to i64*
  %1288 = load i64, i64* %1287
  store i64 %1288, i64* %1284, align 8, !tbaa !2428
  %1289 = add i64 %1286, 8
  store i64 %1289, i64* %1285, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.4

block_4006cb:                                     ; preds = %block_4006ab
  %1290 = sub i64 %1102, 443
  %1291 = load i64, i64* %PC
  %1292 = add i64 %1291, 5
  %1293 = load i64, i64* %PC
  %1294 = add i64 %1293, 5
  store i64 %1294, i64* %PC
  %1295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1296 = load i64, i64* %1295, align 8, !tbaa !2428
  %1297 = add i64 %1296, -8
  %1298 = inttoptr i64 %1297 to i64*
  store i64 %1292, i64* %1298
  store i64 %1297, i64* %1295, align 8, !tbaa !2428
  %1299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1290, i64* %1299, align 8, !tbaa !2428
  %1300 = load i64, i64* %PC
  %1301 = call %struct.Memory* @ext_6073b8_clock(%struct.State* %0, i64 %1300, %struct.Memory* %MEMORY.3)
  %1302 = load i64, i64* %PC
  %1303 = add i64 %1302, 5
  store i64 %1303, i64* %PC
  store i64 56, i64* %RCX, align 8, !tbaa !2428
  %1304 = load i32, i32* %ECX
  %1305 = zext i32 %1304 to i64
  %1306 = load i64, i64* %PC
  %1307 = add i64 %1306, 2
  store i64 %1307, i64* %PC
  %1308 = and i64 %1305, 4294967295
  store i64 %1308, i64* %RDI, align 8, !tbaa !2428
  %1309 = load i64, i64* %RAX
  %1310 = load i64, i64* %RBP
  %1311 = sub i64 %1310, 128
  %1312 = load i64, i64* %PC
  %1313 = add i64 %1312, 4
  store i64 %1313, i64* %PC
  %1314 = inttoptr i64 %1311 to i64*
  %1315 = load i64, i64* %1314
  %1316 = sub i64 %1309, %1315
  store i64 %1316, i64* %RAX, align 8, !tbaa !2428
  %1317 = icmp ugt i64 %1315, %1309
  %1318 = zext i1 %1317 to i8
  %1319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1318, i8* %1319, align 1, !tbaa !2432
  %1320 = trunc i64 %1316 to i32
  %1321 = and i32 %1320, 255
  %1322 = call i32 @llvm.ctpop.i32(i32 %1321) #16
  %1323 = trunc i32 %1322 to i8
  %1324 = and i8 %1323, 1
  %1325 = xor i8 %1324, 1
  %1326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1325, i8* %1326, align 1, !tbaa !2446
  %1327 = xor i64 %1315, %1309
  %1328 = xor i64 %1327, %1316
  %1329 = lshr i64 %1328, 4
  %1330 = trunc i64 %1329 to i8
  %1331 = and i8 %1330, 1
  %1332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1331, i8* %1332, align 1, !tbaa !2447
  %1333 = icmp eq i64 %1316, 0
  %1334 = zext i1 %1333 to i8
  %1335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1334, i8* %1335, align 1, !tbaa !2448
  %1336 = lshr i64 %1316, 63
  %1337 = trunc i64 %1336 to i8
  %1338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1337, i8* %1338, align 1, !tbaa !2449
  %1339 = lshr i64 %1309, 63
  %1340 = lshr i64 %1315, 63
  %1341 = xor i64 %1340, %1339
  %1342 = xor i64 %1336, %1339
  %1343 = add nuw nsw i64 %1342, %1341
  %1344 = icmp eq i64 %1343, 2
  %1345 = zext i1 %1344 to i8
  %1346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1345, i8* %1346, align 1, !tbaa !2450
  %1347 = load i64, i64* %RBP
  %1348 = sub i64 %1347, 144
  %1349 = load i64, i64* %RAX
  %1350 = load i64, i64* %PC
  %1351 = add i64 %1350, 7
  store i64 %1351, i64* %PC
  %1352 = inttoptr i64 %1348 to i64*
  store i64 %1349, i64* %1352
  %1353 = load i64, i64* %PC
  %1354 = sub i64 %1353, 418
  %1355 = load i64, i64* %PC
  %1356 = add i64 %1355, 5
  %1357 = load i64, i64* %PC
  %1358 = add i64 %1357, 5
  store i64 %1358, i64* %PC
  %1359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1360 = load i64, i64* %1359, align 8, !tbaa !2428
  %1361 = add i64 %1360, -8
  %1362 = inttoptr i64 %1361 to i64*
  store i64 %1356, i64* %1362
  store i64 %1361, i64* %1359, align 8, !tbaa !2428
  %1363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1354, i64* %1363, align 8, !tbaa !2428
  %1364 = load i64, i64* %PC
  %1365 = call %struct.Memory* @ext_6073a8_malloc(%struct.State* %0, i64 %1364, %struct.Memory* %1301)
  %1366 = load i64, i64* %PC
  %1367 = add i64 %1366, 5
  store i64 %1367, i64* %PC
  store i64 56, i64* %RCX, align 8, !tbaa !2428
  %1368 = load i32, i32* %ECX
  %1369 = zext i32 %1368 to i64
  %1370 = load i64, i64* %PC
  %1371 = add i64 %1370, 2
  store i64 %1371, i64* %PC
  %1372 = and i64 %1369, 4294967295
  store i64 %1372, i64* %RDI, align 8, !tbaa !2428
  %1373 = load i64, i64* %RAX
  %1374 = load i64, i64* %PC
  %1375 = add i64 %1374, 8
  store i64 %1375, i64* %PC
  store i64 %1373, i64* bitcast (%PtrGlbNext_type* @PtrGlbNext to i64*)
  %1376 = load i64, i64* %PC
  %1377 = sub i64 %1376, 438
  %1378 = load i64, i64* %PC
  %1379 = add i64 %1378, 5
  %1380 = load i64, i64* %PC
  %1381 = add i64 %1380, 5
  store i64 %1381, i64* %PC
  %1382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1383 = load i64, i64* %1382, align 8, !tbaa !2428
  %1384 = add i64 %1383, -8
  %1385 = inttoptr i64 %1384 to i64*
  store i64 %1379, i64* %1385
  store i64 %1384, i64* %1382, align 8, !tbaa !2428
  %1386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1377, i64* %1386, align 8, !tbaa !2428
  %1387 = load i64, i64* %PC
  %1388 = call %struct.Memory* @ext_6073a8_malloc(%struct.State* %0, i64 %1387, %struct.Memory* %1365)
  %1389 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1390 = load i64, i64* %PC
  %1391 = add i64 %1390, 8
  store i64 %1391, i64* %PC
  %1392 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401040__rodata_type* @seg_401040__rodata to i64), i64 8) to double*)
  %1393 = bitcast i8* %1389 to double*
  store double %1392, double* %1393, align 1, !tbaa !2452
  %1394 = getelementptr inbounds i8, i8* %1389, i64 8
  %1395 = bitcast i8* %1394 to double*
  store double 0.000000e+00, double* %1395, align 1, !tbaa !2452
  %1396 = load i64, i64* %RBP
  %1397 = sub i64 %1396, 80
  %1398 = load i64, i64* %PC
  %1399 = add i64 %1398, 4
  store i64 %1399, i64* %PC
  store i64 %1397, i64* %RDI, align 8, !tbaa !2428
  %1400 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1401 = load i64, i64* %PC
  %1402 = add i64 %1401, 8
  store i64 %1402, i64* %PC
  %1403 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401040__rodata_type* @seg_401040__rodata to i64), i64 16) to double*)
  %1404 = bitcast i8* %1400 to double*
  store double %1403, double* %1404, align 1, !tbaa !2452
  %1405 = getelementptr inbounds i8, i8* %1400, i64 8
  %1406 = bitcast i8* %1405 to double*
  store double 0.000000e+00, double* %1406, align 1, !tbaa !2452
  %1407 = load i64, i64* %RAX
  %1408 = load i64, i64* %PC
  %1409 = add i64 %1408, 8
  store i64 %1409, i64* %PC
  store i64 %1407, i64* bitcast (%PtrGlb_type* @PtrGlb to i64*)
  %1410 = load i64, i64* %PC
  %1411 = add i64 %1410, 8
  store i64 %1411, i64* %PC
  %1412 = load i64, i64* bitcast (%PtrGlbNext_type* @PtrGlbNext to i64*)
  store i64 %1412, i64* %RAX, align 8, !tbaa !2428
  %1413 = load i64, i64* %PC
  %1414 = add i64 %1413, 8
  store i64 %1414, i64* %PC
  %1415 = load i64, i64* bitcast (%PtrGlb_type* @PtrGlb to i64*)
  store i64 %1415, i64* %RDX, align 8, !tbaa !2428
  %1416 = load i64, i64* %RDX
  %1417 = load i64, i64* %RAX
  %1418 = load i64, i64* %PC
  %1419 = add i64 %1418, 3
  store i64 %1419, i64* %PC
  %1420 = inttoptr i64 %1416 to i64*
  store i64 %1417, i64* %1420
  %1421 = load i64, i64* %PC
  %1422 = add i64 %1421, 8
  store i64 %1422, i64* %PC
  %1423 = load i64, i64* bitcast (%PtrGlb_type* @PtrGlb to i64*)
  store i64 %1423, i64* %RAX, align 8, !tbaa !2428
  %1424 = load i64, i64* %RAX
  %1425 = add i64 %1424, 8
  %1426 = load i64, i64* %PC
  %1427 = add i64 %1426, 7
  store i64 %1427, i64* %PC
  %1428 = inttoptr i64 %1425 to i32*
  store i32 0, i32* %1428
  %1429 = load i64, i64* %PC
  %1430 = add i64 %1429, 8
  store i64 %1430, i64* %PC
  %1431 = load i64, i64* bitcast (%PtrGlb_type* @PtrGlb to i64*)
  store i64 %1431, i64* %RAX, align 8, !tbaa !2428
  %1432 = load i64, i64* %RAX
  %1433 = add i64 %1432, 12
  %1434 = load i64, i64* %PC
  %1435 = add i64 %1434, 7
  store i64 %1435, i64* %PC
  %1436 = inttoptr i64 %1433 to i32*
  store i32 10001, i32* %1436
  %1437 = load i64, i64* %PC
  %1438 = add i64 %1437, 8
  store i64 %1438, i64* %PC
  %1439 = load i64, i64* bitcast (%PtrGlb_type* @PtrGlb to i64*)
  store i64 %1439, i64* %RAX, align 8, !tbaa !2428
  %1440 = load i64, i64* %RAX
  %1441 = add i64 %1440, 16
  %1442 = bitcast %union.vec128_t* %XMM1 to i8*
  %1443 = load i64, i64* %PC
  %1444 = add i64 %1443, 5
  store i64 %1444, i64* %PC
  %1445 = bitcast i8* %1442 to double*
  %1446 = load double, double* %1445, align 1
  %1447 = inttoptr i64 %1441 to double*
  store double %1446, double* %1447
  %1448 = load i64, i64* %PC
  %1449 = add i64 %1448, 8
  store i64 %1449, i64* %PC
  %1450 = load i64, i64* bitcast (%PtrGlb_type* @PtrGlb to i64*)
  store i64 %1450, i64* %RAX, align 8, !tbaa !2428
  %1451 = load i64, i64* %RAX
  %1452 = load i64, i64* %PC
  %1453 = add i64 %1452, 4
  store i64 %1453, i64* %PC
  %1454 = add i64 24, %1451
  store i64 %1454, i64* %RAX, align 8, !tbaa !2428
  %1455 = icmp ult i64 %1454, %1451
  %1456 = icmp ult i64 %1454, 24
  %1457 = or i1 %1455, %1456
  %1458 = zext i1 %1457 to i8
  %1459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1458, i8* %1459, align 1, !tbaa !2432
  %1460 = trunc i64 %1454 to i32
  %1461 = and i32 %1460, 255
  %1462 = call i32 @llvm.ctpop.i32(i32 %1461) #16
  %1463 = trunc i32 %1462 to i8
  %1464 = and i8 %1463, 1
  %1465 = xor i8 %1464, 1
  %1466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1465, i8* %1466, align 1, !tbaa !2446
  %1467 = xor i64 24, %1451
  %1468 = xor i64 %1467, %1454
  %1469 = lshr i64 %1468, 4
  %1470 = trunc i64 %1469 to i8
  %1471 = and i8 %1470, 1
  %1472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1471, i8* %1472, align 1, !tbaa !2447
  %1473 = icmp eq i64 %1454, 0
  %1474 = zext i1 %1473 to i8
  %1475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1474, i8* %1475, align 1, !tbaa !2448
  %1476 = lshr i64 %1454, 63
  %1477 = trunc i64 %1476 to i8
  %1478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1477, i8* %1478, align 1, !tbaa !2449
  %1479 = lshr i64 %1451, 63
  %1480 = xor i64 %1476, %1479
  %1481 = add nuw nsw i64 %1480, %1476
  %1482 = icmp eq i64 %1481, 2
  %1483 = zext i1 %1482 to i8
  %1484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1483, i8* %1484, align 1, !tbaa !2450
  %1485 = load i64, i64* %PC
  %1486 = add i64 %1485, 5
  store i64 %1486, i64* %PC
  store i64 and (i64 add (i64 ptrtoint (%seg_401040__rodata_type* @seg_401040__rodata to i64), i64 133), i64 4294967295), i64* %RCX, align 8, !tbaa !2428
  %1487 = load i32, i32* %ECX
  %1488 = zext i32 %1487 to i64
  %1489 = load i64, i64* %PC
  %1490 = add i64 %1489, 2
  store i64 %1490, i64* %PC
  %1491 = and i64 %1488, 4294967295
  store i64 %1491, i64* %RSI, align 8, !tbaa !2428
  %1492 = load i64, i64* %RBP
  %1493 = sub i64 %1492, 152
  %1494 = load i64, i64* %RDI
  %1495 = load i64, i64* %PC
  %1496 = add i64 %1495, 7
  store i64 %1496, i64* %PC
  %1497 = inttoptr i64 %1493 to i64*
  store i64 %1494, i64* %1497
  %1498 = load i64, i64* %RAX
  %1499 = load i64, i64* %PC
  %1500 = add i64 %1499, 3
  store i64 %1500, i64* %PC
  store i64 %1498, i64* %RDI, align 8, !tbaa !2428
  %1501 = load i64, i64* %RBP
  %1502 = sub i64 %1501, 160
  %1503 = bitcast %union.vec128_t* %XMM0 to i8*
  %1504 = load i64, i64* %PC
  %1505 = add i64 %1504, 8
  store i64 %1505, i64* %PC
  %1506 = bitcast i8* %1503 to double*
  %1507 = load double, double* %1506, align 1
  %1508 = inttoptr i64 %1502 to double*
  store double %1507, double* %1508
  %1509 = load i64, i64* %PC
  %1510 = sub i64 %1509, 634
  %1511 = load i64, i64* %PC
  %1512 = add i64 %1511, 5
  %1513 = load i64, i64* %PC
  %1514 = add i64 %1513, 5
  store i64 %1514, i64* %PC
  %1515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1516 = load i64, i64* %1515, align 8, !tbaa !2428
  %1517 = add i64 %1516, -8
  %1518 = inttoptr i64 %1517 to i64*
  store i64 %1512, i64* %1518
  store i64 %1517, i64* %1515, align 8, !tbaa !2428
  %1519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1510, i64* %1519, align 8, !tbaa !2428
  %1520 = load i64, i64* %PC
  %1521 = call %struct.Memory* @ext_6073b0_strcpy(%struct.State* %0, i64 %1520, %struct.Memory* %1388)
  %1522 = load i64, i64* %PC
  %1523 = add i64 %1522, 5
  store i64 %1523, i64* %PC
  store i64 and (i64 add (i64 ptrtoint (%seg_401040__rodata_type* @seg_401040__rodata to i64), i64 164), i64 4294967295), i64* %RCX, align 8, !tbaa !2428
  %1524 = load i32, i32* %ECX
  %1525 = zext i32 %1524 to i64
  %1526 = load i64, i64* %PC
  %1527 = add i64 %1526, 2
  store i64 %1527, i64* %PC
  %1528 = and i64 %1525, 4294967295
  store i64 %1528, i64* %RSI, align 8, !tbaa !2428
  %1529 = load i64, i64* %RBP
  %1530 = sub i64 %1529, 152
  %1531 = load i64, i64* %PC
  %1532 = add i64 %1531, 7
  store i64 %1532, i64* %PC
  %1533 = inttoptr i64 %1530 to i64*
  %1534 = load i64, i64* %1533
  store i64 %1534, i64* %RDI, align 8, !tbaa !2428
  %1535 = load i64, i64* %RBP
  %1536 = sub i64 %1535, 168
  %1537 = load i64, i64* %RAX
  %1538 = load i64, i64* %PC
  %1539 = add i64 %1538, 7
  store i64 %1539, i64* %PC
  %1540 = inttoptr i64 %1536 to i64*
  store i64 %1537, i64* %1540
  %1541 = load i64, i64* %PC
  %1542 = sub i64 %1541, 660
  %1543 = load i64, i64* %PC
  %1544 = add i64 %1543, 5
  %1545 = load i64, i64* %PC
  %1546 = add i64 %1545, 5
  store i64 %1546, i64* %PC
  %1547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1548 = load i64, i64* %1547, align 8, !tbaa !2428
  %1549 = add i64 %1548, -8
  %1550 = inttoptr i64 %1549 to i64*
  store i64 %1544, i64* %1550
  store i64 %1549, i64* %1547, align 8, !tbaa !2428
  %1551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1542, i64* %1551, align 8, !tbaa !2428
  %1552 = load i64, i64* %PC
  %1553 = call %struct.Memory* @ext_6073b0_strcpy(%struct.State* %0, i64 %1552, %struct.Memory* %1521)
  %1554 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1555 = load i64, i64* %RBP
  %1556 = sub i64 %1555, 160
  %1557 = load i64, i64* %PC
  %1558 = add i64 %1557, 8
  store i64 %1558, i64* %PC
  %1559 = inttoptr i64 %1556 to double*
  %1560 = load double, double* %1559
  %1561 = bitcast i8* %1554 to double*
  store double %1560, double* %1561, align 1, !tbaa !2452
  %1562 = getelementptr inbounds i8, i8* %1554, i64 8
  %1563 = bitcast i8* %1562 to double*
  store double 0.000000e+00, double* %1563, align 1, !tbaa !2452
  %1564 = bitcast %union.vec128_t* %XMM0 to i8*
  %1565 = load i64, i64* %PC
  %1566 = add i64 %1565, 9
  store i64 %1566, i64* %PC
  %1567 = bitcast i8* %1564 to double*
  %1568 = load double, double* %1567, align 1
  store double %1568, double* inttoptr (i64 add (i64 ptrtoint (%Array2Glob_type* @Array2Glob to i64), i64 3320) to double*)
  %1569 = load i64, i64* %RBP
  %1570 = sub i64 %1569, 176
  %1571 = load i64, i64* %RAX
  %1572 = load i64, i64* %PC
  %1573 = add i64 %1572, 7
  store i64 %1573, i64* %PC
  %1574 = inttoptr i64 %1570 to i64*
  store i64 %1571, i64* %1574
  %1575 = load i64, i64* %PC
  %1576 = sub i64 %1575, 673
  %1577 = load i64, i64* %PC
  %1578 = add i64 %1577, 5
  %1579 = load i64, i64* %PC
  %1580 = add i64 %1579, 5
  store i64 %1580, i64* %PC
  %1581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1582 = load i64, i64* %1581, align 8, !tbaa !2428
  %1583 = add i64 %1582, -8
  %1584 = inttoptr i64 %1583 to i64*
  store i64 %1578, i64* %1584
  store i64 %1583, i64* %1581, align 8, !tbaa !2428
  %1585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1576, i64* %1585, align 8, !tbaa !2428
  %1586 = load i64, i64* %PC
  %1587 = call %struct.Memory* @ext_6073b8_clock(%struct.State* %0, i64 %1586, %struct.Memory* %1553)
  %1588 = load i64, i64* %RBP
  %1589 = sub i64 %1588, 128
  %1590 = load i64, i64* %RAX
  %1591 = load i64, i64* %PC
  %1592 = add i64 %1591, 4
  store i64 %1592, i64* %PC
  %1593 = inttoptr i64 %1589 to i64*
  store i64 %1590, i64* %1593
  %1594 = load i64, i64* %RBP
  %1595 = sub i64 %1594, 116
  %1596 = load i64, i64* %PC
  %1597 = add i64 %1596, 7
  store i64 %1597, i64* %PC
  %1598 = inttoptr i64 %1595 to i32*
  store i32 0, i32* %1598
  br label %block_4007c1

block_4007c1:                                     ; preds = %block_4006cb, %block_400955
  %MEMORY.4 = phi %struct.Memory* [ %1587, %block_4006cb ], [ %361, %block_400955 ]
  %1599 = load i64, i64* %RBP
  %1600 = sub i64 %1599, 116
  %1601 = load i64, i64* %PC
  %1602 = add i64 %1601, 7
  store i64 %1602, i64* %PC
  %1603 = inttoptr i64 %1600 to i32*
  %1604 = load i32, i32* %1603
  %1605 = sub i32 %1604, 100000000
  %1606 = icmp ult i32 %1604, 100000000
  %1607 = zext i1 %1606 to i8
  %1608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1607, i8* %1608, align 1, !tbaa !2432
  %1609 = and i32 %1605, 255
  %1610 = call i32 @llvm.ctpop.i32(i32 %1609) #16
  %1611 = trunc i32 %1610 to i8
  %1612 = and i8 %1611, 1
  %1613 = xor i8 %1612, 1
  %1614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1613, i8* %1614, align 1, !tbaa !2446
  %1615 = xor i32 %1604, 100000000
  %1616 = xor i32 %1615, %1605
  %1617 = lshr i32 %1616, 4
  %1618 = trunc i32 %1617 to i8
  %1619 = and i8 %1618, 1
  %1620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1619, i8* %1620, align 1, !tbaa !2447
  %1621 = icmp eq i32 %1605, 0
  %1622 = zext i1 %1621 to i8
  %1623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1622, i8* %1623, align 1, !tbaa !2448
  %1624 = lshr i32 %1605, 31
  %1625 = trunc i32 %1624 to i8
  %1626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1625, i8* %1626, align 1, !tbaa !2449
  %1627 = lshr i32 %1604, 31
  %1628 = xor i32 %1624, %1627
  %1629 = add nuw nsw i32 %1628, %1627
  %1630 = icmp eq i32 %1629, 2
  %1631 = zext i1 %1630 to i8
  %1632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1631, i8* %1632, align 1, !tbaa !2450
  %1633 = load i64, i64* %PC
  %1634 = add i64 %1633, 488
  %1635 = load i64, i64* %PC
  %1636 = add i64 %1635, 6
  %1637 = load i64, i64* %PC
  %1638 = add i64 %1637, 6
  store i64 %1638, i64* %PC
  %1639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1640 = load i8, i8* %1639, align 1, !tbaa !2432
  %1641 = icmp eq i8 %1640, 0
  %1642 = zext i1 %1641 to i8
  store i8 %1642, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1644 = select i1 %1641, i64 %1634, i64 %1636
  store i64 %1644, i64* %1643, align 8, !tbaa !2428
  %1645 = load i8, i8* %BRANCH_TAKEN
  %1646 = icmp eq i8 %1645, 1
  br i1 %1646, label %block_4009b0, label %block_4007ce
}

; Function Attrs: noinline
define %struct.Memory* @sub_400590_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  br i1 %80, label %block_4005b8, label %block_4005a1

block_4005b8:                                     ; preds = %block_4005a1, %block_4005b3, %block_400590
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400590 ], [ %2, %block_4005a1 ], [ %2, %block_4005b3 ]
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

block_4005ba:                                     ; preds = %block_4005ab
  %96 = load i64, i64* %RAX
  %97 = load i64, i64* %RAX
  %98 = add i64 %97, %96
  %99 = load i16, i16* %AX
  %100 = zext i16 %99 to i64
  %101 = load i64, i64* %PC
  %102 = add i64 %101, 6
  store i64 %102, i64* %PC
  %103 = load i64, i64* %PC
  %104 = tail call %struct.Memory* @sub_4005c0_register_tm_clones(%struct.State* %0, i64 %103, %struct.Memory* %2)
  ret %struct.Memory* %104

block_4005b3:                                     ; preds = %block_4005ab
  %105 = load i64, i64* %RAX
  %106 = load i64, i64* %RAX
  %107 = add i64 %106, %105
  %108 = load i32, i32* %EAX
  %109 = zext i32 %108 to i64
  %110 = load i64, i64* %PC
  %111 = add i64 %110, 5
  store i64 %111, i64* %PC
  br label %block_4005b8

block_4005ab:                                     ; preds = %block_4005a1
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
  store i64 6299736, i64* %RDI, align 8, !tbaa !2428
  %121 = load i64, i64* %RAX
  %122 = load i64, i64* %PC
  %123 = add i64 %122, 2
  store i64 %123, i64* %PC
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %121, i64* %124, align 8, !tbaa !2428
  %125 = load i64, i64* %PC
  switch i64 %125, label %162 [
    i64 4195770, label %block_4005ba
    i64 4195763, label %block_4005b3
  ]

block_4005a1:                                     ; preds = %block_400590
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
  br i1 %161, label %block_4005b8, label %block_4005ab

; <label>:162:                                    ; preds = %block_4005ab
  %163 = load i64, i64* %PC
  %164 = tail call %struct.Memory* @__remill_jump(%struct.State* %0, i64 %163, %struct.Memory* %2)
  ret %struct.Memory* %164
}

; Function Attrs: noinline
define %struct.Memory* @sub_400d70_Proc6(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  %30 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %29, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %30 to %"class.std::bitset"*
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %32 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %31, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %32 to %union.vec128_t*
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %34 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %33, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %34 to %union.vec128_t*
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
  %48 = sub i64 %45, 48
  store i64 %48, i64* %RSP, align 8, !tbaa !2428
  %49 = icmp ult i64 %45, 48
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
  %59 = xor i64 48, %45
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
  %77 = load i64, i64* %RBP
  %78 = sub i64 %77, 8
  %79 = load i32, i32* %EDI
  %80 = zext i32 %79 to i64
  %81 = load i64, i64* %PC
  %82 = add i64 %81, 3
  store i64 %82, i64* %PC
  %83 = inttoptr i64 %78 to i32*
  store i32 %79, i32* %83
  %84 = load i64, i64* %RBP
  %85 = sub i64 %84, 16
  %86 = load i64, i64* %RSI
  %87 = load i64, i64* %PC
  %88 = add i64 %87, 4
  store i64 %88, i64* %PC
  %89 = inttoptr i64 %85 to i64*
  store i64 %86, i64* %89
  %90 = load i64, i64* %RBP
  %91 = sub i64 %90, 8
  %92 = load i64, i64* %PC
  %93 = add i64 %92, 3
  store i64 %93, i64* %PC
  %94 = inttoptr i64 %91 to i32*
  %95 = load i32, i32* %94
  %96 = zext i32 %95 to i64
  store i64 %96, i64* %RDI, align 8, !tbaa !2428
  %97 = load i64, i64* %RBP
  %98 = sub i64 %97, 16
  %99 = load i64, i64* %PC
  %100 = add i64 %99, 4
  store i64 %100, i64* %PC
  %101 = inttoptr i64 %98 to i64*
  %102 = load i64, i64* %101
  store i64 %102, i64* %RSI, align 8, !tbaa !2428
  %103 = load i64, i64* %RSI
  %104 = load i32, i32* %EDI
  %105 = zext i32 %104 to i64
  %106 = load i64, i64* %PC
  %107 = add i64 %106, 2
  store i64 %107, i64* %PC
  %108 = inttoptr i64 %103 to i32*
  store i32 %104, i32* %108
  %109 = load i64, i64* %RBP
  %110 = sub i64 %109, 8
  %111 = load i64, i64* %PC
  %112 = add i64 %111, 3
  store i64 %112, i64* %PC
  %113 = inttoptr i64 %110 to i32*
  %114 = load i32, i32* %113
  %115 = zext i32 %114 to i64
  store i64 %115, i64* %RDI, align 8, !tbaa !2428
  %116 = load i64, i64* %PC
  %117 = add i64 %116, 373
  %118 = load i64, i64* %PC
  %119 = add i64 %118, 5
  %120 = load i64, i64* %PC
  %121 = add i64 %120, 5
  store i64 %121, i64* %PC
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %123 = load i64, i64* %122, align 8, !tbaa !2428
  %124 = add i64 %123, -8
  %125 = inttoptr i64 %124 to i64*
  store i64 %119, i64* %125
  store i64 %124, i64* %122, align 8, !tbaa !2428
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %117, i64* %126, align 8, !tbaa !2428
  %127 = load i64, i64* %PC
  %128 = call %struct.Memory* @sub_400f00_Func3(%struct.State* %0, i64 %127, %struct.Memory* %2)
  %129 = load i32, i32* %EAX
  %130 = zext i32 %129 to i64
  %131 = load i64, i64* %PC
  %132 = add i64 %131, 3
  store i64 %132, i64* %PC
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %133, align 1, !tbaa !2432
  %134 = and i32 %129, 255
  %135 = call i32 @llvm.ctpop.i32(i32 %134) #16
  %136 = trunc i32 %135 to i8
  %137 = and i8 %136, 1
  %138 = xor i8 %137, 1
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %138, i8* %139, align 1, !tbaa !2446
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %140, align 1, !tbaa !2447
  %141 = icmp eq i32 %129, 0
  %142 = zext i1 %141 to i8
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %142, i8* %143, align 1, !tbaa !2448
  %144 = lshr i32 %129, 31
  %145 = trunc i32 %144 to i8
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %145, i8* %146, align 1, !tbaa !2449
  %147 = lshr i32 %129, 31
  %148 = xor i32 %144, %147
  %149 = add nuw nsw i32 %148, %147
  %150 = icmp eq i32 %149, 2
  %151 = zext i1 %150 to i8
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %151, i8* %152, align 1, !tbaa !2450
  %153 = load i64, i64* %PC
  %154 = add i64 %153, 16
  %155 = load i64, i64* %PC
  %156 = add i64 %155, 6
  %157 = load i64, i64* %PC
  %158 = add i64 %157, 6
  store i64 %158, i64* %PC
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %160 = load i8, i8* %159, align 1, !tbaa !2448
  %161 = icmp eq i8 %160, 0
  %162 = zext i1 %161 to i8
  store i8 %162, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %164 = select i1 %161, i64 %154, i64 %156
  store i64 %164, i64* %163, align 8, !tbaa !2428
  %165 = load i8, i8* %BRANCH_TAKEN
  %166 = icmp eq i8 %165, 1
  br i1 %166, label %block_400da3, label %block_400d99

block_400e74:                                     ; preds = %block_400e09, %block_400e65, %block_400e0e, %block_400e6a, %block_400e51, %block_400e56
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.1, %block_400e0e ], [ %MEMORY.2, %block_400e51 ], [ %MEMORY.1, %block_400e56 ], [ %MEMORY.1, %block_400e65 ], [ %MEMORY.1, %block_400e6a ], [ %MEMORY.1, %block_400e09 ]
  %167 = load i64, i64* %RBP
  %168 = sub i64 %167, 4
  %169 = load i64, i64* %PC
  %170 = add i64 %169, 3
  store i64 %170, i64* %PC
  %171 = inttoptr i64 %168 to i32*
  %172 = load i32, i32* %171
  %173 = zext i32 %172 to i64
  store i64 %173, i64* %RAX, align 8, !tbaa !2428
  %174 = load i64, i64* %RSP
  %175 = load i64, i64* %PC
  %176 = add i64 %175, 4
  store i64 %176, i64* %PC
  %177 = add i64 48, %174
  store i64 %177, i64* %RSP, align 8, !tbaa !2428
  %178 = icmp ult i64 %177, %174
  %179 = icmp ult i64 %177, 48
  %180 = or i1 %178, %179
  %181 = zext i1 %180 to i8
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %181, i8* %182, align 1, !tbaa !2432
  %183 = trunc i64 %177 to i32
  %184 = and i32 %183, 255
  %185 = call i32 @llvm.ctpop.i32(i32 %184) #16
  %186 = trunc i32 %185 to i8
  %187 = and i8 %186, 1
  %188 = xor i8 %187, 1
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %188, i8* %189, align 1, !tbaa !2446
  %190 = xor i64 48, %174
  %191 = xor i64 %190, %177
  %192 = lshr i64 %191, 4
  %193 = trunc i64 %192 to i8
  %194 = and i8 %193, 1
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %194, i8* %195, align 1, !tbaa !2447
  %196 = icmp eq i64 %177, 0
  %197 = zext i1 %196 to i8
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %197, i8* %198, align 1, !tbaa !2448
  %199 = lshr i64 %177, 63
  %200 = trunc i64 %199 to i8
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %200, i8* %201, align 1, !tbaa !2449
  %202 = lshr i64 %174, 63
  %203 = xor i64 %199, %202
  %204 = add nuw nsw i64 %203, %199
  %205 = icmp eq i64 %204, 2
  %206 = zext i1 %205 to i8
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %206, i8* %207, align 1, !tbaa !2450
  %208 = load i64, i64* %PC
  %209 = add i64 %208, 1
  store i64 %209, i64* %PC
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %211 = load i64, i64* %210, align 8, !tbaa !2428
  %212 = add i64 %211, 8
  %213 = inttoptr i64 %211 to i64*
  %214 = load i64, i64* %213
  store i64 %214, i64* %RBP, align 8, !tbaa !2428
  store i64 %212, i64* %210, align 8, !tbaa !2428
  %215 = load i64, i64* %PC
  %216 = add i64 %215, 1
  store i64 %216, i64* %PC
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %219 = load i64, i64* %218, align 8, !tbaa !2428
  %220 = inttoptr i64 %219 to i64*
  %221 = load i64, i64* %220
  store i64 %221, i64* %217, align 8, !tbaa !2428
  %222 = add i64 %219, 8
  store i64 %222, i64* %218, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_400ddd:                                     ; preds = %block_400dc7
  %223 = load i64, i64* %PC
  %224 = add i64 %223, 5
  %225 = load i64, i64* %PC
  %226 = add i64 %225, 5
  store i64 %226, i64* %PC
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %224, i64* %227, align 8, !tbaa !2428
  %228 = load i64, i64* %RBP
  %229 = sub i64 %228, 20
  %230 = load i64, i64* %PC
  %231 = add i64 %230, 3
  store i64 %231, i64* %PC
  %232 = inttoptr i64 %229 to i32*
  %233 = load i32, i32* %232
  %234 = zext i32 %233 to i64
  store i64 %234, i64* %RAX, align 8, !tbaa !2428
  %235 = load i64, i64* %RAX
  %236 = load i64, i64* %PC
  %237 = add i64 %236, 5
  store i64 %237, i64* %PC
  %238 = trunc i64 %235 to i32
  %239 = sub i32 %238, 10002
  %240 = zext i32 %239 to i64
  store i64 %240, i64* %RAX, align 8, !tbaa !2428
  %241 = icmp ult i32 %238, 10002
  %242 = zext i1 %241 to i8
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %242, i8* %243, align 1, !tbaa !2432
  %244 = and i32 %239, 255
  %245 = call i32 @llvm.ctpop.i32(i32 %244) #16
  %246 = trunc i32 %245 to i8
  %247 = and i8 %246, 1
  %248 = xor i8 %247, 1
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %248, i8* %249, align 1, !tbaa !2446
  %250 = xor i64 10002, %235
  %251 = trunc i64 %250 to i32
  %252 = xor i32 %251, %239
  %253 = lshr i32 %252, 4
  %254 = trunc i32 %253 to i8
  %255 = and i8 %254, 1
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %255, i8* %256, align 1, !tbaa !2447
  %257 = icmp eq i32 %239, 0
  %258 = zext i1 %257 to i8
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %258, i8* %259, align 1, !tbaa !2448
  %260 = lshr i32 %239, 31
  %261 = trunc i32 %260 to i8
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %261, i8* %262, align 1, !tbaa !2449
  %263 = lshr i32 %238, 31
  %264 = xor i32 %260, %263
  %265 = add nuw nsw i32 %264, %263
  %266 = icmp eq i32 %265, 2
  %267 = zext i1 %266 to i8
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %267, i8* %268, align 1, !tbaa !2450
  %269 = load i64, i64* %RBP
  %270 = sub i64 %269, 32
  %271 = load i32, i32* %EAX
  %272 = zext i32 %271 to i64
  %273 = load i64, i64* %PC
  %274 = add i64 %273, 3
  store i64 %274, i64* %PC
  %275 = inttoptr i64 %270 to i32*
  store i32 %271, i32* %275
  %276 = load i64, i64* %PC
  %277 = add i64 %276, 120
  %278 = load i64, i64* %PC
  %279 = add i64 %278, 6
  %280 = load i64, i64* %PC
  %281 = add i64 %280, 6
  store i64 %281, i64* %PC
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %283 = load i8, i8* %282, align 1, !tbaa !2448
  store i8 %283, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %285 = icmp ne i8 %283, 0
  %286 = select i1 %285, i64 %277, i64 %279
  store i64 %286, i64* %284, align 8, !tbaa !2428
  %287 = load i8, i8* %BRANCH_TAKEN
  %288 = icmp eq i8 %287, 1
  %289 = load i64, i64* %PC
  br i1 %288, label %block_400e65, label %block_400df3

block_400e56:                                     ; preds = %block_400dc7
  %290 = load i64, i64* %RBP
  %291 = sub i64 %290, 16
  %292 = load i64, i64* %PC
  %293 = add i64 %292, 4
  store i64 %293, i64* %PC
  %294 = inttoptr i64 %291 to i64*
  %295 = load i64, i64* %294
  store i64 %295, i64* %RAX, align 8, !tbaa !2428
  %296 = load i64, i64* %RAX
  %297 = load i64, i64* %PC
  %298 = add i64 %297, 6
  store i64 %298, i64* %PC
  %299 = inttoptr i64 %296 to i32*
  store i32 10000, i32* %299
  %300 = load i64, i64* %PC
  %301 = add i64 %300, 20
  %302 = load i64, i64* %PC
  %303 = add i64 %302, 5
  store i64 %303, i64* %PC
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %301, i64* %304, align 8, !tbaa !2428
  br label %block_400e74

block_400df3:                                     ; preds = %block_400ddd
  %305 = add i64 %289, 5
  %306 = load i64, i64* %PC
  %307 = add i64 %306, 5
  store i64 %307, i64* %PC
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %305, i64* %308, align 8, !tbaa !2428
  %309 = load i64, i64* %RBP
  %310 = sub i64 %309, 20
  %311 = load i64, i64* %PC
  %312 = add i64 %311, 3
  store i64 %312, i64* %PC
  %313 = inttoptr i64 %310 to i32*
  %314 = load i32, i32* %313
  %315 = zext i32 %314 to i64
  store i64 %315, i64* %RAX, align 8, !tbaa !2428
  %316 = load i64, i64* %RAX
  %317 = load i64, i64* %PC
  %318 = add i64 %317, 5
  store i64 %318, i64* %PC
  %319 = trunc i64 %316 to i32
  %320 = sub i32 %319, 10003
  %321 = zext i32 %320 to i64
  store i64 %321, i64* %RAX, align 8, !tbaa !2428
  %322 = icmp ult i32 %319, 10003
  %323 = zext i1 %322 to i8
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %323, i8* %324, align 1, !tbaa !2432
  %325 = and i32 %320, 255
  %326 = call i32 @llvm.ctpop.i32(i32 %325) #16
  %327 = trunc i32 %326 to i8
  %328 = and i8 %327, 1
  %329 = xor i8 %328, 1
  %330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %329, i8* %330, align 1, !tbaa !2446
  %331 = xor i64 10003, %316
  %332 = trunc i64 %331 to i32
  %333 = xor i32 %332, %320
  %334 = lshr i32 %333, 4
  %335 = trunc i32 %334 to i8
  %336 = and i8 %335, 1
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %336, i8* %337, align 1, !tbaa !2447
  %338 = icmp eq i32 %320, 0
  %339 = zext i1 %338 to i8
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %339, i8* %340, align 1, !tbaa !2448
  %341 = lshr i32 %320, 31
  %342 = trunc i32 %341 to i8
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %342, i8* %343, align 1, !tbaa !2449
  %344 = lshr i32 %319, 31
  %345 = xor i32 %341, %344
  %346 = add nuw nsw i32 %345, %344
  %347 = icmp eq i32 %346, 2
  %348 = zext i1 %347 to i8
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %348, i8* %349, align 1, !tbaa !2450
  %350 = load i64, i64* %RBP
  %351 = sub i64 %350, 36
  %352 = load i32, i32* %EAX
  %353 = zext i32 %352 to i64
  %354 = load i64, i64* %PC
  %355 = add i64 %354, 3
  store i64 %355, i64* %PC
  %356 = inttoptr i64 %351 to i32*
  store i32 %352, i32* %356
  %357 = load i64, i64* %PC
  %358 = add i64 %357, 103
  %359 = load i64, i64* %PC
  %360 = add i64 %359, 6
  %361 = load i64, i64* %PC
  %362 = add i64 %361, 6
  store i64 %362, i64* %PC
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %364 = load i8, i8* %363, align 1, !tbaa !2448
  store i8 %364, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %366 = icmp ne i8 %364, 0
  %367 = select i1 %366, i64 %358, i64 %360
  store i64 %367, i64* %365, align 8, !tbaa !2428
  %368 = load i8, i8* %BRANCH_TAKEN
  %369 = icmp eq i8 %368, 1
  br i1 %369, label %block_400e6a, label %block_400e09

block_400e38:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit
  %370 = inttoptr i64 %569 to i32*
  store i32 0, i32* %370
  %371 = load i64, i64* %PC
  %372 = add i64 %371, 15
  %373 = load i64, i64* %PC
  %374 = add i64 %373, 5
  store i64 %374, i64* %PC
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %372, i64* %375, align 8, !tbaa !2428
  br label %block_400e51

block_400db1:                                     ; preds = %block_400da3
  %376 = load i64, i64* %PC
  %377 = add i64 %376, 5
  %378 = load i64, i64* %PC
  %379 = add i64 %378, 5
  store i64 %379, i64* %PC
  %380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %377, i64* %380, align 8, !tbaa !2428
  %381 = load i64, i64* %RBP
  %382 = sub i64 %381, 20
  %383 = load i64, i64* %PC
  %384 = add i64 %383, 3
  store i64 %384, i64* %PC
  %385 = inttoptr i64 %382 to i32*
  %386 = load i32, i32* %385
  %387 = zext i32 %386 to i64
  store i64 %387, i64* %RAX, align 8, !tbaa !2428
  %388 = load i64, i64* %RAX
  %389 = load i64, i64* %PC
  %390 = add i64 %389, 5
  store i64 %390, i64* %PC
  %391 = trunc i64 %388 to i32
  %392 = sub i32 %391, 10000
  %393 = zext i32 %392 to i64
  store i64 %393, i64* %RAX, align 8, !tbaa !2428
  %394 = icmp ult i32 %391, 10000
  %395 = zext i1 %394 to i8
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %395, i8* %396, align 1, !tbaa !2432
  %397 = and i32 %392, 255
  %398 = call i32 @llvm.ctpop.i32(i32 %397) #16
  %399 = trunc i32 %398 to i8
  %400 = and i8 %399, 1
  %401 = xor i8 %400, 1
  %402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %401, i8* %402, align 1, !tbaa !2446
  %403 = xor i64 10000, %388
  %404 = trunc i64 %403 to i32
  %405 = xor i32 %404, %392
  %406 = lshr i32 %405, 4
  %407 = trunc i32 %406 to i8
  %408 = and i8 %407, 1
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %408, i8* %409, align 1, !tbaa !2447
  %410 = icmp eq i32 %392, 0
  %411 = zext i1 %410 to i8
  %412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %411, i8* %412, align 1, !tbaa !2448
  %413 = lshr i32 %392, 31
  %414 = trunc i32 %413 to i8
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %414, i8* %415, align 1, !tbaa !2449
  %416 = lshr i32 %391, 31
  %417 = xor i32 %413, %416
  %418 = add nuw nsw i32 %417, %416
  %419 = icmp eq i32 %418, 2
  %420 = zext i1 %419 to i8
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %420, i8* %421, align 1, !tbaa !2450
  %422 = load i64, i64* %RBP
  %423 = sub i64 %422, 24
  %424 = load i32, i32* %EAX
  %425 = zext i32 %424 to i64
  %426 = load i64, i64* %PC
  %427 = add i64 %426, 3
  store i64 %427, i64* %PC
  %428 = inttoptr i64 %423 to i32*
  store i32 %424, i32* %428
  %429 = load i64, i64* %PC
  %430 = add i64 %429, 92
  %431 = load i64, i64* %PC
  %432 = add i64 %431, 6
  %433 = load i64, i64* %PC
  %434 = add i64 %433, 6
  store i64 %434, i64* %PC
  %435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %436 = load i8, i8* %435, align 1, !tbaa !2448
  store i8 %436, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %438 = icmp ne i8 %436, 0
  %439 = select i1 %438, i64 %430, i64 %432
  store i64 %439, i64* %437, align 8, !tbaa !2428
  %440 = load i8, i8* %BRANCH_TAKEN
  %441 = icmp eq i8 %440, 1
  br i1 %441, label %block_400e1d, label %block_400dc7

block_400e47:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit
  %442 = inttoptr i64 %569 to i32*
  store i32 10002, i32* %442
  br label %block_400e51

block_400da3:                                     ; preds = %block_400d99, %block_400d70
  %MEMORY.1 = phi %struct.Memory* [ %128, %block_400d70 ], [ %128, %block_400d99 ]
  %443 = load i64, i64* %RBP
  %444 = sub i64 %443, 8
  %445 = load i64, i64* %PC
  %446 = add i64 %445, 3
  store i64 %446, i64* %PC
  %447 = inttoptr i64 %444 to i32*
  %448 = load i32, i32* %447
  %449 = zext i32 %448 to i64
  store i64 %449, i64* %RAX, align 8, !tbaa !2428
  %450 = load i32, i32* %EAX
  %451 = zext i32 %450 to i64
  %452 = load i32, i32* %EAX
  %453 = zext i32 %452 to i64
  %454 = load i64, i64* %PC
  %455 = add i64 %454, 2
  store i64 %455, i64* %PC
  %456 = and i64 %453, %451
  %457 = trunc i64 %456 to i32
  %458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %458, align 1, !tbaa !2432
  %459 = and i32 %457, 255
  %460 = call i32 @llvm.ctpop.i32(i32 %459) #16
  %461 = trunc i32 %460 to i8
  %462 = and i8 %461, 1
  %463 = xor i8 %462, 1
  %464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %463, i8* %464, align 1, !tbaa !2446
  %465 = icmp eq i32 %457, 0
  %466 = zext i1 %465 to i8
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %466, i8* %467, align 1, !tbaa !2448
  %468 = lshr i32 %457, 31
  %469 = trunc i32 %468 to i8
  %470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %469, i8* %470, align 1, !tbaa !2449
  %471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %471, align 1, !tbaa !2450
  %472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %472, align 1, !tbaa !2447
  %473 = load i64, i64* %RBP
  %474 = sub i64 %473, 20
  %475 = load i32, i32* %EAX
  %476 = zext i32 %475 to i64
  %477 = load i64, i64* %PC
  %478 = add i64 %477, 3
  store i64 %478, i64* %PC
  %479 = inttoptr i64 %474 to i32*
  store i32 %475, i32* %479
  %480 = load i64, i64* %PC
  %481 = add i64 %480, 99
  %482 = load i64, i64* %PC
  %483 = add i64 %482, 6
  %484 = load i64, i64* %PC
  %485 = add i64 %484, 6
  store i64 %485, i64* %PC
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %487 = load i8, i8* %486, align 1, !tbaa !2448
  store i8 %487, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %489 = icmp ne i8 %487, 0
  %490 = select i1 %489, i64 %481, i64 %483
  store i64 %490, i64* %488, align 8, !tbaa !2428
  %491 = load i8, i8* %BRANCH_TAKEN
  %492 = icmp eq i8 %491, 1
  br i1 %492, label %block_400e0e, label %block_400db1

block_400e1d:                                     ; preds = %block_400db1
  %493 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %494 = load i64, i64* %PC
  %495 = add i64 %494, 8
  store i64 %495, i64* %PC
  %496 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401040__rodata_type* @seg_401040__rodata to i64), i64 64) to double*)
  %497 = bitcast i8* %493 to double*
  store double %496, double* %497, align 1, !tbaa !2452
  %498 = getelementptr inbounds i8, i8* %493, i64 8
  %499 = bitcast i8* %498 to double*
  store double 0.000000e+00, double* %499, align 1, !tbaa !2452
  %500 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %501 = load i64, i64* %PC
  %502 = add i64 %501, 9
  store i64 %502, i64* %PC
  %503 = load double, double* bitcast (%IntGlob_type* @IntGlob to double*)
  %504 = bitcast i8* %500 to double*
  store double %503, double* %504, align 1, !tbaa !2452
  %505 = getelementptr inbounds i8, i8* %500, i64 8
  %506 = bitcast i8* %505 to double*
  store double 0.000000e+00, double* %506, align 1, !tbaa !2452
  %507 = bitcast %union.vec128_t* %XMM1 to i8*
  %508 = bitcast %union.vec128_t* %XMM0 to i8*
  %509 = load i64, i64* %PC
  %510 = add i64 %509, 4
  store i64 %510, i64* %PC
  %511 = bitcast i8* %507 to double*
  %512 = load double, double* %511, align 1
  %513 = bitcast i8* %508 to double*
  %514 = load double, double* %513, align 1
  %515 = fcmp uno double %512, %514
  br i1 %515, label %516, label %528

; <label>:516:                                    ; preds = %block_400e1d
  %517 = fadd double %512, %514
  %518 = bitcast double %517 to i64
  %519 = and i64 %518, 9221120237041090560
  %520 = icmp eq i64 %519, 9218868437227405312
  %521 = and i64 %518, 2251799813685247
  %522 = icmp ne i64 %521, 0
  %523 = and i1 %520, %522
  br i1 %523, label %524, label %534

; <label>:524:                                    ; preds = %516
  %525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %526 = load i64, i64* %525, align 8, !tbaa !2428
  %527 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %526, %struct.Memory* %MEMORY.1) #17
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:528:                                    ; preds = %block_400e1d
  %529 = fcmp ogt double %512, %514
  br i1 %529, label %534, label %530

; <label>:530:                                    ; preds = %528
  %531 = fcmp olt double %512, %514
  br i1 %531, label %534, label %532

; <label>:532:                                    ; preds = %530
  %533 = fcmp oeq double %512, %514
  br i1 %533, label %534, label %541

; <label>:534:                                    ; preds = %532, %530, %528, %516
  %535 = phi i8 [ 0, %528 ], [ 0, %530 ], [ 1, %532 ], [ 1, %516 ]
  %536 = phi i8 [ 0, %528 ], [ 0, %530 ], [ 0, %532 ], [ 1, %516 ]
  %537 = phi i8 [ 0, %528 ], [ 1, %530 ], [ 0, %532 ], [ 1, %516 ]
  %538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %535, i8* %538, align 1, !tbaa !2451
  %539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %536, i8* %539, align 1, !tbaa !2451
  %540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %537, i8* %540, align 1, !tbaa !2451
  br label %541

; <label>:541:                                    ; preds = %534, %532
  %542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %542, align 1, !tbaa !2451
  %543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %543, align 1, !tbaa !2451
  %544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %544, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %524, %541
  %545 = phi %struct.Memory* [ %527, %524 ], [ %MEMORY.1, %541 ]
  %546 = load i64, i64* %PC
  %547 = add i64 %546, 21
  %548 = load i64, i64* %PC
  %549 = add i64 %548, 6
  %550 = load i64, i64* %PC
  %551 = add i64 %550, 6
  store i64 %551, i64* %PC
  %552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %553 = load i8, i8* %552, align 1, !tbaa !2432
  %554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %555 = load i8, i8* %554, align 1, !tbaa !2448
  %556 = or i8 %555, %553
  %557 = icmp ne i8 %556, 0
  %558 = zext i1 %557 to i8
  store i8 %558, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %560 = select i1 %557, i64 %547, i64 %549
  store i64 %560, i64* %559, align 8, !tbaa !2428
  %561 = load i8, i8* %BRANCH_TAKEN
  %562 = icmp eq i8 %561, 1
  %563 = load i64, i64* %RBP
  %564 = sub i64 %563, 16
  %565 = load i64, i64* %PC
  %566 = add i64 %565, 4
  store i64 %566, i64* %PC
  %567 = inttoptr i64 %564 to i64*
  %568 = load i64, i64* %567
  store i64 %568, i64* %RAX, align 8, !tbaa !2428
  %569 = load i64, i64* %RAX
  %570 = load i64, i64* %PC
  %571 = add i64 %570, 6
  store i64 %571, i64* %PC
  br i1 %562, label %block_400e47, label %block_400e38

block_400e51:                                     ; preds = %block_400e47, %block_400e38
  %MEMORY.2 = phi %struct.Memory* [ %545, %block_400e47 ], [ %545, %block_400e38 ]
  %572 = load i64, i64* %PC
  %573 = add i64 %572, 35
  %574 = load i64, i64* %PC
  %575 = add i64 %574, 5
  store i64 %575, i64* %PC
  %576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %573, i64* %576, align 8, !tbaa !2428
  br label %block_400e74

block_400dc7:                                     ; preds = %block_400db1
  %577 = load i64, i64* %PC
  %578 = add i64 %577, 5
  %579 = load i64, i64* %PC
  %580 = add i64 %579, 5
  store i64 %580, i64* %PC
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %578, i64* %581, align 8, !tbaa !2428
  %582 = load i64, i64* %RBP
  %583 = sub i64 %582, 20
  %584 = load i64, i64* %PC
  %585 = add i64 %584, 3
  store i64 %585, i64* %PC
  %586 = inttoptr i64 %583 to i32*
  %587 = load i32, i32* %586
  %588 = zext i32 %587 to i64
  store i64 %588, i64* %RAX, align 8, !tbaa !2428
  %589 = load i64, i64* %RAX
  %590 = load i64, i64* %PC
  %591 = add i64 %590, 5
  store i64 %591, i64* %PC
  %592 = trunc i64 %589 to i32
  %593 = sub i32 %592, 10001
  %594 = zext i32 %593 to i64
  store i64 %594, i64* %RAX, align 8, !tbaa !2428
  %595 = icmp ult i32 %592, 10001
  %596 = zext i1 %595 to i8
  %597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %596, i8* %597, align 1, !tbaa !2432
  %598 = and i32 %593, 255
  %599 = call i32 @llvm.ctpop.i32(i32 %598) #16
  %600 = trunc i32 %599 to i8
  %601 = and i8 %600, 1
  %602 = xor i8 %601, 1
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %602, i8* %603, align 1, !tbaa !2446
  %604 = xor i64 10001, %589
  %605 = trunc i64 %604 to i32
  %606 = xor i32 %605, %593
  %607 = lshr i32 %606, 4
  %608 = trunc i32 %607 to i8
  %609 = and i8 %608, 1
  %610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %609, i8* %610, align 1, !tbaa !2447
  %611 = icmp eq i32 %593, 0
  %612 = zext i1 %611 to i8
  %613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %612, i8* %613, align 1, !tbaa !2448
  %614 = lshr i32 %593, 31
  %615 = trunc i32 %614 to i8
  %616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %615, i8* %616, align 1, !tbaa !2449
  %617 = lshr i32 %592, 31
  %618 = xor i32 %614, %617
  %619 = add nuw nsw i32 %618, %617
  %620 = icmp eq i32 %619, 2
  %621 = zext i1 %620 to i8
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %621, i8* %622, align 1, !tbaa !2450
  %623 = load i64, i64* %RBP
  %624 = sub i64 %623, 28
  %625 = load i32, i32* %EAX
  %626 = zext i32 %625 to i64
  %627 = load i64, i64* %PC
  %628 = add i64 %627, 3
  store i64 %628, i64* %PC
  %629 = inttoptr i64 %624 to i32*
  store i32 %625, i32* %629
  %630 = load i64, i64* %PC
  %631 = add i64 %630, 127
  %632 = load i64, i64* %PC
  %633 = add i64 %632, 6
  %634 = load i64, i64* %PC
  %635 = add i64 %634, 6
  store i64 %635, i64* %PC
  %636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %637 = load i8, i8* %636, align 1, !tbaa !2448
  store i8 %637, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %639 = icmp ne i8 %637, 0
  %640 = select i1 %639, i64 %631, i64 %633
  store i64 %640, i64* %638, align 8, !tbaa !2428
  %641 = load i8, i8* %BRANCH_TAKEN
  %642 = icmp eq i8 %641, 1
  br i1 %642, label %block_400e56, label %block_400ddd

block_400d99:                                     ; preds = %block_400d70
  %643 = load i64, i64* %RBP
  %644 = sub i64 %643, 16
  %645 = load i64, i64* %PC
  %646 = add i64 %645, 4
  store i64 %646, i64* %PC
  %647 = inttoptr i64 %644 to i64*
  %648 = load i64, i64* %647
  store i64 %648, i64* %RAX, align 8, !tbaa !2428
  %649 = load i64, i64* %RAX
  %650 = load i64, i64* %PC
  %651 = add i64 %650, 6
  store i64 %651, i64* %PC
  %652 = inttoptr i64 %649 to i32*
  store i32 10002, i32* %652
  br label %block_400da3

block_400e6a:                                     ; preds = %block_400df3
  %653 = load i64, i64* %RBP
  %654 = sub i64 %653, 16
  %655 = load i64, i64* %PC
  %656 = add i64 %655, 4
  store i64 %656, i64* %PC
  %657 = inttoptr i64 %654 to i64*
  %658 = load i64, i64* %657
  store i64 %658, i64* %RAX, align 8, !tbaa !2428
  %659 = load i64, i64* %RAX
  %660 = load i64, i64* %PC
  %661 = add i64 %660, 6
  store i64 %661, i64* %PC
  %662 = inttoptr i64 %659 to i32*
  store i32 10001, i32* %662
  br label %block_400e74

block_400e0e:                                     ; preds = %block_400da3
  %663 = load i64, i64* %RBP
  %664 = sub i64 %663, 16
  %665 = load i64, i64* %PC
  %666 = add i64 %665, 4
  store i64 %666, i64* %PC
  %667 = inttoptr i64 %664 to i64*
  %668 = load i64, i64* %667
  store i64 %668, i64* %RAX, align 8, !tbaa !2428
  %669 = load i64, i64* %RAX
  %670 = load i64, i64* %PC
  %671 = add i64 %670, 6
  store i64 %671, i64* %PC
  %672 = inttoptr i64 %669 to i32*
  store i32 0, i32* %672
  %673 = load i64, i64* %PC
  %674 = add i64 %673, 92
  %675 = load i64, i64* %PC
  %676 = add i64 %675, 5
  store i64 %676, i64* %PC
  %677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %674, i64* %677, align 8, !tbaa !2428
  br label %block_400e74

block_400e65:                                     ; preds = %block_400ddd
  %678 = add i64 %289, 15
  %679 = load i64, i64* %PC
  %680 = add i64 %679, 5
  store i64 %680, i64* %PC
  %681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %678, i64* %681, align 8, !tbaa !2428
  br label %block_400e74

block_400e09:                                     ; preds = %block_400df3
  %682 = load i64, i64* %PC
  %683 = add i64 %682, 107
  %684 = load i64, i64* %PC
  %685 = add i64 %684, 5
  store i64 %685, i64* %PC
  %686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %683, i64* %686, align 8, !tbaa !2428
  br label %block_400e74
}

; Function Attrs: noinline
define %struct.Memory* @sub_400640_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400640:
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
  %17 = getelementptr inbounds %struct.GPR, %struct.GPR* %16, i32 0, i32 11
  %18 = getelementptr inbounds %struct.Reg, %struct.Reg* %17, i32 0, i32 0
  %EDI = bitcast %union.anon* %18 to i32*
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %20 = getelementptr inbounds %struct.GPR, %struct.GPR* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.Reg, %struct.Reg* %20, i32 0, i32 0
  %RAX = bitcast %union.anon* %21 to i64*
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %23 = getelementptr inbounds %struct.GPR, %struct.GPR* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.Reg, %struct.Reg* %23, i32 0, i32 0
  %RCX = bitcast %union.anon* %24 to i64*
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %26 = getelementptr inbounds %struct.GPR, %struct.GPR* %25, i32 0, i32 7
  %27 = getelementptr inbounds %struct.Reg, %struct.Reg* %26, i32 0, i32 0
  %RDX = bitcast %union.anon* %27 to i64*
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
  %82 = load i64, i64* %PC
  %83 = add i64 %82, 10
  store i64 %83, i64* %PC
  store i64 add (i64 ptrtoint (%seg_401040__rodata_type* @seg_401040__rodata to i64), i64 80), i64* %RAX, align 8, !tbaa !2428
  %84 = load i64, i64* %PC
  %85 = add i64 %84, 5
  store i64 %85, i64* %PC
  store i64 8, i64* %RCX, align 8, !tbaa !2428
  %86 = load i32, i32* %ECX
  %87 = zext i32 %86 to i64
  %88 = load i64, i64* %PC
  %89 = add i64 %88, 2
  store i64 %89, i64* %PC
  %90 = and i64 %87, 4294967295
  store i64 %90, i64* %RDX, align 8, !tbaa !2428
  %91 = load i64, i64* %RBP
  %92 = sub i64 %91, 4
  %93 = load i64, i64* %PC
  %94 = add i64 %93, 7
  store i64 %94, i64* %PC
  %95 = inttoptr i64 %92 to i32*
  store i32 0, i32* %95
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
  %109 = load i64, i64* %RAX
  %110 = load i64, i64* %PC
  %111 = add i64 %110, 3
  store i64 %111, i64* %PC
  store i64 %109, i64* %RDI, align 8, !tbaa !2428
  %112 = load i64, i64* %RDX
  %113 = load i64, i64* %PC
  %114 = add i64 %113, 3
  store i64 %114, i64* %PC
  store i64 %112, i64* %RSI, align 8, !tbaa !2428
  %115 = load i64, i64* %PC
  %116 = add i64 %115, 2
  store i64 %116, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %117 = load i64, i64* %PC
  %118 = sub i64 %117, 335
  %119 = load i64, i64* %PC
  %120 = add i64 %119, 5
  %121 = load i64, i64* %PC
  %122 = add i64 %121, 5
  store i64 %122, i64* %PC
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %124 = load i64, i64* %123, align 8, !tbaa !2428
  %125 = add i64 %124, -8
  %126 = inttoptr i64 %125 to i64*
  store i64 %120, i64* %126
  store i64 %125, i64* %123, align 8, !tbaa !2428
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %118, i64* %127, align 8, !tbaa !2428
  %128 = load i64, i64* %PC
  %129 = call %struct.Memory* @ext_400520_printf(%struct.State* %0, i64 %128, %struct.Memory* %2)
  %130 = load i64, i64* %RBP
  %131 = sub i64 %130, 20
  %132 = load i32, i32* %EAX
  %133 = zext i32 %132 to i64
  %134 = load i64, i64* %PC
  %135 = add i64 %134, 3
  store i64 %135, i64* %PC
  %136 = inttoptr i64 %131 to i32*
  store i32 %132, i32* %136
  %137 = load i64, i64* %PC
  %138 = add i64 %137, 25
  %139 = load i64, i64* %PC
  %140 = add i64 %139, 5
  %141 = load i64, i64* %PC
  %142 = add i64 %141, 5
  store i64 %142, i64* %PC
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %144 = load i64, i64* %143, align 8, !tbaa !2428
  %145 = add i64 %144, -8
  %146 = inttoptr i64 %145 to i64*
  store i64 %140, i64* %146
  store i64 %145, i64* %143, align 8, !tbaa !2428
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %138, i64* %147, align 8, !tbaa !2428
  %148 = load i64, i64* %PC
  %149 = call %struct.Memory* @sub_400690_Proc0(%struct.State* %0, i64 %148, %struct.Memory* %129)
  %150 = load i64, i64* %RCX
  %151 = load i32, i32* %ECX
  %152 = zext i32 %151 to i64
  %153 = load i64, i64* %PC
  %154 = add i64 %153, 2
  store i64 %154, i64* %PC
  %155 = xor i64 %152, %150
  %156 = trunc i64 %155 to i32
  %157 = and i64 %155, 4294967295
  store i64 %157, i64* %RCX, align 8, !tbaa !2428
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %158, align 1, !tbaa !2432
  %159 = and i32 %156, 255
  %160 = call i32 @llvm.ctpop.i32(i32 %159) #16
  %161 = trunc i32 %160 to i8
  %162 = and i8 %161, 1
  %163 = xor i8 %162, 1
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %163, i8* %164, align 1, !tbaa !2446
  %165 = icmp eq i32 %156, 0
  %166 = zext i1 %165 to i8
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %166, i8* %167, align 1, !tbaa !2448
  %168 = lshr i32 %156, 31
  %169 = trunc i32 %168 to i8
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %169, i8* %170, align 1, !tbaa !2449
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %171, align 1, !tbaa !2450
  %172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %172, align 1, !tbaa !2447
  %173 = load i64, i64* %RBP
  %174 = sub i64 %173, 24
  %175 = load i32, i32* %EAX
  %176 = zext i32 %175 to i64
  %177 = load i64, i64* %PC
  %178 = add i64 %177, 3
  store i64 %178, i64* %PC
  %179 = inttoptr i64 %174 to i32*
  store i32 %175, i32* %179
  %180 = load i32, i32* %ECX
  %181 = zext i32 %180 to i64
  %182 = load i64, i64* %PC
  %183 = add i64 %182, 2
  store i64 %183, i64* %PC
  %184 = and i64 %181, 4294967295
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
  ret %struct.Memory* %149
}

; Function Attrs: noinline
define %struct.Memory* @sub_401034__term_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_401034:
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
define %struct.Memory* @sub_4009c0_Proc5(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4009c0:
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 1
  store i64 %17, i64* %PC
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %19 = load i64, i64* %18, align 8, !tbaa !2428
  %20 = add i64 %19, -8
  %21 = inttoptr i64 %20 to i64*
  store i64 %15, i64* %21
  store i64 %20, i64* %18, align 8, !tbaa !2428
  %22 = load i64, i64* %RSP
  %23 = load i64, i64* %PC
  %24 = add i64 %23, 3
  store i64 %24, i64* %PC
  store i64 %22, i64* %RBP, align 8, !tbaa !2428
  %25 = load i64, i64* %PC
  %26 = add i64 %25, 8
  store i64 %26, i64* %PC
  store i8 65, i8* getelementptr inbounds (%Char1Glob_type, %Char1Glob_type* @Char1Glob, i32 0, i32 0, i32 0)
  %27 = load i64, i64* %PC
  %28 = add i64 %27, 11
  store i64 %28, i64* %PC
  store i32 0, i32* bitcast (%BoolGlob_type* @BoolGlob to i32*)
  %29 = load i64, i64* %RBP
  %30 = sub i64 %29, 4
  %31 = load i64, i64* %PC
  %32 = add i64 %31, 3
  store i64 %32, i64* %PC
  %33 = inttoptr i64 %30 to i32*
  %34 = load i32, i32* %33
  %35 = zext i32 %34 to i64
  store i64 %35, i64* %RAX, align 8, !tbaa !2428
  %36 = load i64, i64* %PC
  %37 = add i64 %36, 1
  store i64 %37, i64* %PC
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %39 = load i64, i64* %38, align 8, !tbaa !2428
  %40 = add i64 %39, 8
  %41 = inttoptr i64 %39 to i64*
  %42 = load i64, i64* %41
  store i64 %42, i64* %RBP, align 8, !tbaa !2428
  store i64 %40, i64* %38, align 8, !tbaa !2428
  %43 = load i64, i64* %PC
  %44 = add i64 %43, 1
  store i64 %44, i64* %PC
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %47 = load i64, i64* %46, align 8, !tbaa !2428
  %48 = inttoptr i64 %47 to i64*
  %49 = load i64, i64* %48
  store i64 %49, i64* %45, align 8, !tbaa !2428
  %50 = add i64 %47, 8
  store i64 %50, i64* %46, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_400fc0___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400fc0:
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
  %200 = sub i64 %199, 2844
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
  %211 = call %struct.Memory* @sub_4004d0__init_proc(%struct.State* %0, i64 %210, %struct.Memory* %2)
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
  br i1 %245, label %block_401016, label %block_400ff6

block_401016:                                     ; preds = %block_401000, %block_400fc0
  %MEMORY.0 = phi %struct.Memory* [ %211, %block_400fc0 ], [ %387, %block_401000 ]
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

block_400ff6:                                     ; preds = %block_400fc0
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
  br label %block_401000

block_401000:                                     ; preds = %block_401000, %block_400ff6
  %MEMORY.1 = phi %struct.Memory* [ %211, %block_400ff6 ], [ %387, %block_401000 ]
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
  br i1 %470, label %block_401000, label %block_401016
}

; Function Attrs: noinline
define %struct.Memory* @sub_4004d0__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4004d0:
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
  br i1 %80, label %block_4004e2, label %block_4004e0

block_4004e0:                                     ; preds = %block_4004d0
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
  br label %block_4004e2

block_4004e2:                                     ; preds = %block_4004e0, %block_4004d0
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4004d0 ], [ %92, %block_4004e0 ]
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
define %struct.Memory* @sub_400630_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400630:
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
  %35 = tail call %struct.Memory* @sub_4005c0_register_tm_clones(%struct.State* %0, i64 %34, %struct.Memory* %2)
  ret %struct.Memory* %35
}

; Function Attrs: noinline
define %struct.Memory* @sub_4009e0_Proc4(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4009e0:
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
  %17 = getelementptr inbounds %struct.GPR, %struct.GPR* %16, i32 0, i32 13
  %18 = getelementptr inbounds %struct.Reg, %struct.Reg* %17, i32 0, i32 0
  %RSP = bitcast %union.anon* %18 to i64*
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %20 = getelementptr inbounds %struct.GPR, %struct.GPR* %19, i32 0, i32 15
  %21 = getelementptr inbounds %struct.Reg, %struct.Reg* %20, i32 0, i32 0
  %RBP = bitcast %union.anon* %21 to i64*
  %22 = load i64, i64* %RBP
  %23 = load i64, i64* %PC
  %24 = add i64 %23, 1
  store i64 %24, i64* %PC
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %26 = load i64, i64* %25, align 8, !tbaa !2428
  %27 = add i64 %26, -8
  %28 = inttoptr i64 %27 to i64*
  store i64 %22, i64* %28
  store i64 %27, i64* %25, align 8, !tbaa !2428
  %29 = load i64, i64* %RSP
  %30 = load i64, i64* %PC
  %31 = add i64 %30, 3
  store i64 %31, i64* %PC
  store i64 %29, i64* %RBP, align 8, !tbaa !2428
  %32 = load i64, i64* %PC
  %33 = add i64 %32, 8
  store i64 %33, i64* %PC
  %34 = load i8, i8* getelementptr inbounds (%Char1Glob_type, %Char1Glob_type* @Char1Glob, i32 0, i32 0, i32 0)
  %35 = sext i8 %34 to i64
  %36 = and i64 %35, 4294967295
  store i64 %36, i64* %RAX, align 8, !tbaa !2428
  %37 = load i32, i32* %EAX
  %38 = zext i32 %37 to i64
  %39 = load i64, i64* %PC
  %40 = add i64 %39, 3
  store i64 %40, i64* %PC
  %41 = sub i32 %37, 65
  %42 = icmp ult i32 %37, 65
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %43, i8* %44, align 1, !tbaa !2432
  %45 = and i32 %41, 255
  %46 = call i32 @llvm.ctpop.i32(i32 %45) #16
  %47 = trunc i32 %46 to i8
  %48 = and i8 %47, 1
  %49 = xor i8 %48, 1
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %49, i8* %50, align 1, !tbaa !2446
  %51 = xor i64 65, %38
  %52 = trunc i64 %51 to i32
  %53 = xor i32 %52, %41
  %54 = lshr i32 %53, 4
  %55 = trunc i32 %54 to i8
  %56 = and i8 %55, 1
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %56, i8* %57, align 1, !tbaa !2447
  %58 = icmp eq i32 %41, 0
  %59 = zext i1 %58 to i8
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %59, i8* %60, align 1, !tbaa !2448
  %61 = lshr i32 %41, 31
  %62 = trunc i32 %61 to i8
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %62, i8* %63, align 1, !tbaa !2449
  %64 = lshr i32 %37, 31
  %65 = xor i32 %61, %64
  %66 = add nuw nsw i32 %65, %64
  %67 = icmp eq i32 %66, 2
  %68 = zext i1 %67 to i8
  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %68, i8* %69, align 1, !tbaa !2450
  %70 = load i64, i64* %PC
  %71 = add i64 %70, 3
  store i64 %71, i64* %PC
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %73 = load i8, i8* %72, align 1, !tbaa !2448
  store i8 %73, i8* %CL, align 1, !tbaa !2451
  %74 = load i8, i8* %CL
  %75 = zext i8 %74 to i64
  %76 = load i64, i64* %PC
  %77 = add i64 %76, 3
  store i64 %77, i64* %PC
  %78 = and i64 1, %75
  %79 = trunc i64 %78 to i8
  store i8 %79, i8* %CL, align 1, !tbaa !2451
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %80, align 1, !tbaa !2432
  %81 = trunc i64 %78 to i32
  %82 = and i32 %81, 255
  %83 = call i32 @llvm.ctpop.i32(i32 %82) #16
  %84 = trunc i32 %83 to i8
  %85 = and i8 %84, 1
  %86 = xor i8 %85, 1
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %86, i8* %87, align 1, !tbaa !2446
  %88 = icmp eq i8 %79, 0
  %89 = zext i1 %88 to i8
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %89, i8* %90, align 1, !tbaa !2448
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %91, align 1, !tbaa !2449
  %92 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %92, align 1, !tbaa !2450
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %93, align 1, !tbaa !2447
  %94 = load i8, i8* %CL
  %95 = zext i8 %94 to i64
  %96 = load i64, i64* %PC
  %97 = add i64 %96, 3
  store i64 %97, i64* %PC
  %98 = and i64 %95, 255
  store i64 %98, i64* %RAX, align 8, !tbaa !2428
  %99 = load i64, i64* %RBP
  %100 = sub i64 %99, 8
  %101 = load i32, i32* %EAX
  %102 = zext i32 %101 to i64
  %103 = load i64, i64* %PC
  %104 = add i64 %103, 3
  store i64 %104, i64* %PC
  %105 = inttoptr i64 %100 to i32*
  store i32 %101, i32* %105
  %106 = load i64, i64* %PC
  %107 = add i64 %106, 7
  store i64 %107, i64* %PC
  %108 = load i32, i32* bitcast (%BoolGlob_type* @BoolGlob to i32*)
  %109 = zext i32 %108 to i64
  store i64 %109, i64* %RAX, align 8, !tbaa !2428
  %110 = load i64, i64* %RAX
  %111 = load i64, i64* %RBP
  %112 = sub i64 %111, 8
  %113 = load i64, i64* %PC
  %114 = add i64 %113, 3
  store i64 %114, i64* %PC
  %115 = trunc i64 %110 to i32
  %116 = inttoptr i64 %112 to i32*
  %117 = load i32, i32* %116
  %118 = or i32 %117, %115
  %119 = zext i32 %118 to i64
  store i64 %119, i64* %RAX, align 8, !tbaa !2428
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %120, align 1, !tbaa !2432
  %121 = and i32 %118, 255
  %122 = call i32 @llvm.ctpop.i32(i32 %121) #16
  %123 = trunc i32 %122 to i8
  %124 = and i8 %123, 1
  %125 = xor i8 %124, 1
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %125, i8* %126, align 1, !tbaa !2446
  %127 = icmp eq i32 %118, 0
  %128 = zext i1 %127 to i8
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %128, i8* %129, align 1, !tbaa !2448
  %130 = lshr i32 %118, 31
  %131 = trunc i32 %130 to i8
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %131, i8* %132, align 1, !tbaa !2449
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %133, align 1, !tbaa !2450
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %134, align 1, !tbaa !2447
  %135 = load i64, i64* %RBP
  %136 = sub i64 %135, 8
  %137 = load i32, i32* %EAX
  %138 = zext i32 %137 to i64
  %139 = load i64, i64* %PC
  %140 = add i64 %139, 3
  store i64 %140, i64* %PC
  %141 = inttoptr i64 %136 to i32*
  store i32 %137, i32* %141
  %142 = load i64, i64* %PC
  %143 = add i64 %142, 8
  store i64 %143, i64* %PC
  store i8 66, i8* getelementptr inbounds (%Char2Glob_type, %Char2Glob_type* @Char2Glob, i32 0, i32 0, i32 0)
  %144 = load i64, i64* %RBP
  %145 = sub i64 %144, 4
  %146 = load i64, i64* %PC
  %147 = add i64 %146, 3
  store i64 %147, i64* %PC
  %148 = inttoptr i64 %145 to i32*
  %149 = load i32, i32* %148
  %150 = zext i32 %149 to i64
  store i64 %150, i64* %RAX, align 8, !tbaa !2428
  %151 = load i64, i64* %PC
  %152 = add i64 %151, 1
  store i64 %152, i64* %PC
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %154 = load i64, i64* %153, align 8, !tbaa !2428
  %155 = add i64 %154, 8
  %156 = inttoptr i64 %154 to i64*
  %157 = load i64, i64* %156
  store i64 %157, i64* %RBP, align 8, !tbaa !2428
  store i64 %155, i64* %153, align 8, !tbaa !2428
  %158 = load i64, i64* %PC
  %159 = add i64 %158, 1
  store i64 %159, i64* %PC
  %160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %162 = load i64, i64* %161, align 8, !tbaa !2428
  %163 = inttoptr i64 %162 to i64*
  %164 = load i64, i64* %163
  store i64 %164, i64* %160, align 8, !tbaa !2428
  %165 = add i64 %162, 8
  store i64 %165, i64* %161, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_400f40_Proc3(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400f40:
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
  %23 = getelementptr inbounds %struct.GPR, %struct.GPR* %22, i32 0, i32 9
  %24 = getelementptr inbounds %struct.Reg, %struct.Reg* %23, i32 0, i32 0
  %RSI = bitcast %union.anon* %24 to i64*
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
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %35 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %34, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %35 to %"class.std::bitset"*
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %37 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %36, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %37 to %union.vec128_t*
  %38 = load i64, i64* %RBP
  %39 = load i64, i64* %PC
  %40 = add i64 %39, 1
  store i64 %40, i64* %PC
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %42 = load i64, i64* %41, align 8, !tbaa !2428
  %43 = add i64 %42, -8
  %44 = inttoptr i64 %43 to i64*
  store i64 %38, i64* %44
  store i64 %43, i64* %41, align 8, !tbaa !2428
  %45 = load i64, i64* %RSP
  %46 = load i64, i64* %PC
  %47 = add i64 %46, 3
  store i64 %47, i64* %PC
  store i64 %45, i64* %RBP, align 8, !tbaa !2428
  %48 = load i64, i64* %RSP
  %49 = load i64, i64* %PC
  %50 = add i64 %49, 4
  store i64 %50, i64* %PC
  %51 = sub i64 %48, 32
  store i64 %51, i64* %RSP, align 8, !tbaa !2428
  %52 = icmp ult i64 %48, 32
  %53 = zext i1 %52 to i8
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %53, i8* %54, align 1, !tbaa !2432
  %55 = trunc i64 %51 to i32
  %56 = and i32 %55, 255
  %57 = call i32 @llvm.ctpop.i32(i32 %56) #16
  %58 = trunc i32 %57 to i8
  %59 = and i8 %58, 1
  %60 = xor i8 %59, 1
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %60, i8* %61, align 1, !tbaa !2446
  %62 = xor i64 32, %48
  %63 = xor i64 %62, %51
  %64 = lshr i64 %63, 4
  %65 = trunc i64 %64 to i8
  %66 = and i8 %65, 1
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %66, i8* %67, align 1, !tbaa !2447
  %68 = icmp eq i64 %51, 0
  %69 = zext i1 %68 to i8
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %69, i8* %70, align 1, !tbaa !2448
  %71 = lshr i64 %51, 63
  %72 = trunc i64 %71 to i8
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %72, i8* %73, align 1, !tbaa !2449
  %74 = lshr i64 %48, 63
  %75 = xor i64 %71, %74
  %76 = add nuw nsw i64 %75, %74
  %77 = icmp eq i64 %76, 2
  %78 = zext i1 %77 to i8
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %78, i8* %79, align 1, !tbaa !2450
  %80 = load i64, i64* %RBP
  %81 = sub i64 %80, 16
  %82 = load i64, i64* %RDI
  %83 = load i64, i64* %PC
  %84 = add i64 %83, 4
  store i64 %84, i64* %PC
  %85 = inttoptr i64 %81 to i64*
  store i64 %82, i64* %85
  %86 = load i64, i64* %PC
  %87 = add i64 %86, 9
  store i64 %87, i64* %PC
  %88 = load i64, i64* bitcast (%PtrGlb_type* @PtrGlb to i64*)
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %89, align 1, !tbaa !2432
  %90 = trunc i64 %88 to i32
  %91 = and i32 %90, 255
  %92 = call i32 @llvm.ctpop.i32(i32 %91) #16
  %93 = trunc i32 %92 to i8
  %94 = and i8 %93, 1
  %95 = xor i8 %94, 1
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %95, i8* %96, align 1, !tbaa !2446
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %97, align 1, !tbaa !2447
  %98 = icmp eq i64 %88, 0
  %99 = zext i1 %98 to i8
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %99, i8* %100, align 1, !tbaa !2448
  %101 = lshr i64 %88, 63
  %102 = trunc i64 %101 to i8
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %102, i8* %103, align 1, !tbaa !2449
  %104 = lshr i64 %88, 63
  %105 = xor i64 %101, %104
  %106 = add nuw nsw i64 %105, %104
  %107 = icmp eq i64 %106, 2
  %108 = zext i1 %107 to i8
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %108, i8* %109, align 1, !tbaa !2450
  %110 = load i64, i64* %PC
  %111 = add i64 %110, 29
  %112 = load i64, i64* %PC
  %113 = add i64 %112, 6
  %114 = load i64, i64* %PC
  %115 = add i64 %114, 6
  store i64 %115, i64* %PC
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %117 = load i8, i8* %116, align 1, !tbaa !2448
  store i8 %117, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %119 = icmp ne i8 %117, 0
  %120 = select i1 %119, i64 %111, i64 %113
  store i64 %120, i64* %118, align 8, !tbaa !2428
  %121 = load i8, i8* %BRANCH_TAKEN
  %122 = icmp eq i8 %121, 1
  br i1 %122, label %block_400f72, label %block_400f5b

block_400f83:                                     ; preds = %block_400f72, %block_400f5b
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400f72 ], [ %2, %block_400f5b ]
  %123 = load i64, i64* %PC
  %124 = add i64 %123, 5
  store i64 %124, i64* %PC
  store i64 10, i64* %RDI, align 8, !tbaa !2428
  %125 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %126 = load i64, i64* %PC
  %127 = add i64 %126, 9
  store i64 %127, i64* %PC
  %128 = load double, double* bitcast (%IntGlob_type* @IntGlob to double*)
  %129 = bitcast i8* %125 to double*
  store double %128, double* %129, align 1, !tbaa !2452
  %130 = getelementptr inbounds i8, i8* %125, i64 8
  %131 = bitcast i8* %130 to double*
  store double 0.000000e+00, double* %131, align 1, !tbaa !2452
  %132 = load i64, i64* %PC
  %133 = add i64 %132, 8
  store i64 %133, i64* %PC
  %134 = load i64, i64* bitcast (%PtrGlb_type* @PtrGlb to i64*)
  store i64 %134, i64* %RAX, align 8, !tbaa !2428
  %135 = load i64, i64* %RAX
  %136 = load i64, i64* %PC
  %137 = add i64 %136, 4
  store i64 %137, i64* %PC
  %138 = add i64 16, %135
  store i64 %138, i64* %RAX, align 8, !tbaa !2428
  %139 = icmp ult i64 %138, %135
  %140 = icmp ult i64 %138, 16
  %141 = or i1 %139, %140
  %142 = zext i1 %141 to i8
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %142, i8* %143, align 1, !tbaa !2432
  %144 = trunc i64 %138 to i32
  %145 = and i32 %144, 255
  %146 = call i32 @llvm.ctpop.i32(i32 %145) #16
  %147 = trunc i32 %146 to i8
  %148 = and i8 %147, 1
  %149 = xor i8 %148, 1
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %149, i8* %150, align 1, !tbaa !2446
  %151 = xor i64 16, %135
  %152 = xor i64 %151, %138
  %153 = lshr i64 %152, 4
  %154 = trunc i64 %153 to i8
  %155 = and i8 %154, 1
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %155, i8* %156, align 1, !tbaa !2447
  %157 = icmp eq i64 %138, 0
  %158 = zext i1 %157 to i8
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %158, i8* %159, align 1, !tbaa !2448
  %160 = lshr i64 %138, 63
  %161 = trunc i64 %160 to i8
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %161, i8* %162, align 1, !tbaa !2449
  %163 = lshr i64 %135, 63
  %164 = xor i64 %160, %163
  %165 = add nuw nsw i64 %164, %160
  %166 = icmp eq i64 %165, 2
  %167 = zext i1 %166 to i8
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %167, i8* %168, align 1, !tbaa !2450
  %169 = load i64, i64* %RAX
  %170 = load i64, i64* %PC
  %171 = add i64 %170, 3
  store i64 %171, i64* %PC
  store i64 %169, i64* %RSI, align 8, !tbaa !2428
  %172 = load i64, i64* %PC
  %173 = add i64 %172, 2
  store i64 %173, i64* %PC
  store i8 1, i8* %AL, align 1, !tbaa !2451
  %174 = load i64, i64* %PC
  %175 = sub i64 %174, 1154
  %176 = load i64, i64* %PC
  %177 = add i64 %176, 5
  %178 = load i64, i64* %PC
  %179 = add i64 %178, 5
  store i64 %179, i64* %PC
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %181 = load i64, i64* %180, align 8, !tbaa !2428
  %182 = add i64 %181, -8
  %183 = inttoptr i64 %182 to i64*
  store i64 %177, i64* %183
  store i64 %182, i64* %180, align 8, !tbaa !2428
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %175, i64* %184, align 8, !tbaa !2428
  %185 = load i64, i64* %PC
  %186 = call %struct.Memory* @sub_400b20_Proc7(%struct.State* %0, i64 %185, %struct.Memory* %MEMORY.0)
  %187 = load i64, i64* %RBP
  %188 = sub i64 %187, 4
  %189 = load i64, i64* %PC
  %190 = add i64 %189, 3
  store i64 %190, i64* %PC
  %191 = inttoptr i64 %188 to i32*
  %192 = load i32, i32* %191
  %193 = zext i32 %192 to i64
  store i64 %193, i64* %RDI, align 8, !tbaa !2428
  %194 = load i64, i64* %RBP
  %195 = sub i64 %194, 20
  %196 = load i32, i32* %EAX
  %197 = zext i32 %196 to i64
  %198 = load i64, i64* %PC
  %199 = add i64 %198, 3
  store i64 %199, i64* %PC
  %200 = inttoptr i64 %195 to i32*
  store i32 %196, i32* %200
  %201 = load i32, i32* %EDI
  %202 = zext i32 %201 to i64
  %203 = load i64, i64* %PC
  %204 = add i64 %203, 2
  store i64 %204, i64* %PC
  %205 = and i64 %202, 4294967295
  store i64 %205, i64* %RAX, align 8, !tbaa !2428
  %206 = load i64, i64* %RSP
  %207 = load i64, i64* %PC
  %208 = add i64 %207, 4
  store i64 %208, i64* %PC
  %209 = add i64 32, %206
  store i64 %209, i64* %RSP, align 8, !tbaa !2428
  %210 = icmp ult i64 %209, %206
  %211 = icmp ult i64 %209, 32
  %212 = or i1 %210, %211
  %213 = zext i1 %212 to i8
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %213, i8* %214, align 1, !tbaa !2432
  %215 = trunc i64 %209 to i32
  %216 = and i32 %215, 255
  %217 = call i32 @llvm.ctpop.i32(i32 %216) #16
  %218 = trunc i32 %217 to i8
  %219 = and i8 %218, 1
  %220 = xor i8 %219, 1
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %220, i8* %221, align 1, !tbaa !2446
  %222 = xor i64 32, %206
  %223 = xor i64 %222, %209
  %224 = lshr i64 %223, 4
  %225 = trunc i64 %224 to i8
  %226 = and i8 %225, 1
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %226, i8* %227, align 1, !tbaa !2447
  %228 = icmp eq i64 %209, 0
  %229 = zext i1 %228 to i8
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %229, i8* %230, align 1, !tbaa !2448
  %231 = lshr i64 %209, 63
  %232 = trunc i64 %231 to i8
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %232, i8* %233, align 1, !tbaa !2449
  %234 = lshr i64 %206, 63
  %235 = xor i64 %231, %234
  %236 = add nuw nsw i64 %235, %231
  %237 = icmp eq i64 %236, 2
  %238 = zext i1 %237 to i8
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %238, i8* %239, align 1, !tbaa !2450
  %240 = load i64, i64* %PC
  %241 = add i64 %240, 1
  store i64 %241, i64* %PC
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %243 = load i64, i64* %242, align 8, !tbaa !2428
  %244 = add i64 %243, 8
  %245 = inttoptr i64 %243 to i64*
  %246 = load i64, i64* %245
  store i64 %246, i64* %RBP, align 8, !tbaa !2428
  store i64 %244, i64* %242, align 8, !tbaa !2428
  %247 = load i64, i64* %PC
  %248 = add i64 %247, 1
  store i64 %248, i64* %PC
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %251 = load i64, i64* %250, align 8, !tbaa !2428
  %252 = inttoptr i64 %251 to i64*
  %253 = load i64, i64* %252
  store i64 %253, i64* %249, align 8, !tbaa !2428
  %254 = add i64 %251, 8
  store i64 %254, i64* %250, align 8, !tbaa !2428
  ret %struct.Memory* %186

block_400f5b:                                     ; preds = %block_400f40
  %255 = load i64, i64* %PC
  %256 = add i64 %255, 8
  store i64 %256, i64* %PC
  %257 = load i64, i64* bitcast (%PtrGlb_type* @PtrGlb to i64*)
  store i64 %257, i64* %RAX, align 8, !tbaa !2428
  %258 = load i64, i64* %RAX
  %259 = load i64, i64* %PC
  %260 = add i64 %259, 3
  store i64 %260, i64* %PC
  %261 = inttoptr i64 %258 to i64*
  %262 = load i64, i64* %261
  store i64 %262, i64* %RAX, align 8, !tbaa !2428
  %263 = load i64, i64* %RBP
  %264 = sub i64 %263, 16
  %265 = load i64, i64* %PC
  %266 = add i64 %265, 4
  store i64 %266, i64* %PC
  %267 = inttoptr i64 %264 to i64*
  %268 = load i64, i64* %267
  store i64 %268, i64* %RCX, align 8, !tbaa !2428
  %269 = load i64, i64* %RCX
  %270 = load i64, i64* %RAX
  %271 = load i64, i64* %PC
  %272 = add i64 %271, 3
  store i64 %272, i64* %PC
  %273 = inttoptr i64 %269 to i64*
  store i64 %270, i64* %273
  %274 = load i64, i64* %PC
  %275 = add i64 %274, 22
  %276 = load i64, i64* %PC
  %277 = add i64 %276, 5
  store i64 %277, i64* %PC
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %275, i64* %278, align 8, !tbaa !2428
  br label %block_400f83

block_400f72:                                     ; preds = %block_400f40
  %279 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %280 = load i64, i64* %PC
  %281 = add i64 %280, 8
  store i64 %281, i64* %PC
  %282 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401040__rodata_type* @seg_401040__rodata to i64), i64 64) to double*)
  %283 = bitcast i8* %279 to double*
  store double %282, double* %283, align 1, !tbaa !2452
  %284 = getelementptr inbounds i8, i8* %279, i64 8
  %285 = bitcast i8* %284 to double*
  store double 0.000000e+00, double* %285, align 1, !tbaa !2452
  %286 = bitcast %union.vec128_t* %XMM0 to i8*
  %287 = load i64, i64* %PC
  %288 = add i64 %287, 9
  store i64 %288, i64* %PC
  %289 = bitcast i8* %286 to double*
  %290 = load double, double* %289, align 1
  store double %290, double* bitcast (%IntGlob_type* @IntGlob to double*)
  br label %block_400f83
}

; Function Attrs: noinline
define %struct.Memory* @sub_400b60_Proc8(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400b60:
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
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %34 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %33, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %34 to %"class.std::bitset"*
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %36 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %35, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %36 to %"class.std::bitset"*
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %38 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %37, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %38 to %"class.std::bitset"*
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %40 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %39, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %40 to %union.vec128_t*
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %42 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %41, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %42 to %union.vec128_t*
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %44 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %43, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %44 to %union.vec128_t*
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
  %55 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %56 = load i64, i64* %PC
  %57 = add i64 %56, 8
  store i64 %57, i64* %PC
  %58 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401040__rodata_type* @seg_401040__rodata to i64), i64 56) to double*)
  %59 = bitcast i8* %55 to double*
  store double %58, double* %59, align 1, !tbaa !2452
  %60 = getelementptr inbounds i8, i8* %55, i64 8
  %61 = bitcast i8* %60 to double*
  store double 0.000000e+00, double* %61, align 1, !tbaa !2452
  %62 = load i64, i64* %RBP
  %63 = sub i64 %62, 16
  %64 = load i64, i64* %RDI
  %65 = load i64, i64* %PC
  %66 = add i64 %65, 4
  store i64 %66, i64* %PC
  %67 = inttoptr i64 %63 to i64*
  store i64 %64, i64* %67
  %68 = load i64, i64* %RBP
  %69 = sub i64 %68, 24
  %70 = load i64, i64* %RSI
  %71 = load i64, i64* %PC
  %72 = add i64 %71, 4
  store i64 %72, i64* %PC
  %73 = inttoptr i64 %69 to i64*
  store i64 %70, i64* %73
  %74 = load i64, i64* %RBP
  %75 = sub i64 %74, 32
  %76 = bitcast %union.vec128_t* %XMM0 to i8*
  %77 = load i64, i64* %PC
  %78 = add i64 %77, 5
  store i64 %78, i64* %PC
  %79 = bitcast i8* %76 to double*
  %80 = load double, double* %79, align 1
  %81 = inttoptr i64 %75 to double*
  store double %80, double* %81
  %82 = load i64, i64* %RBP
  %83 = sub i64 %82, 40
  %84 = bitcast %union.vec128_t* %XMM1 to i8*
  %85 = load i64, i64* %PC
  %86 = add i64 %85, 5
  store i64 %86, i64* %PC
  %87 = bitcast i8* %84 to double*
  %88 = load double, double* %87, align 1
  %89 = inttoptr i64 %83 to double*
  store double %88, double* %89
  %90 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %91 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %92 = load i64, i64* %RBP
  %93 = sub i64 %92, 32
  %94 = load i64, i64* %PC
  %95 = add i64 %94, 5
  store i64 %95, i64* %PC
  %96 = bitcast i8* %91 to double*
  %97 = load double, double* %96, align 1
  %98 = getelementptr inbounds i8, i8* %91, i64 8
  %99 = bitcast i8* %98 to i64*
  %100 = load i64, i64* %99, align 1
  %101 = inttoptr i64 %93 to double*
  %102 = load double, double* %101
  %103 = fadd double %97, %102
  %104 = bitcast i8* %90 to double*
  store double %103, double* %104, align 1, !tbaa !2452
  %105 = getelementptr inbounds i8, i8* %90, i64 8
  %106 = bitcast i8* %105 to i64*
  store i64 %100, i64* %106, align 1, !tbaa !2452
  %107 = load i64, i64* %RBP
  %108 = sub i64 %107, 48
  %109 = bitcast %union.vec128_t* %XMM2 to i8*
  %110 = load i64, i64* %PC
  %111 = add i64 %110, 5
  store i64 %111, i64* %PC
  %112 = bitcast i8* %109 to double*
  %113 = load double, double* %112, align 1
  %114 = inttoptr i64 %108 to double*
  store double %113, double* %114
  %115 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %116 = load i64, i64* %RBP
  %117 = sub i64 %116, 40
  %118 = load i64, i64* %PC
  %119 = add i64 %118, 5
  store i64 %119, i64* %PC
  %120 = inttoptr i64 %117 to double*
  %121 = load double, double* %120
  %122 = bitcast i8* %115 to double*
  store double %121, double* %122, align 1, !tbaa !2452
  %123 = getelementptr inbounds i8, i8* %115, i64 8
  %124 = bitcast i8* %123 to double*
  store double 0.000000e+00, double* %124, align 1, !tbaa !2452
  %125 = load i64, i64* %RBP
  %126 = sub i64 %125, 16
  %127 = load i64, i64* %PC
  %128 = add i64 %127, 4
  store i64 %128, i64* %PC
  %129 = inttoptr i64 %126 to i64*
  %130 = load i64, i64* %129
  store i64 %130, i64* %RSI, align 8, !tbaa !2428
  %131 = load i64, i64* %RBP
  %132 = sub i64 %131, 48
  %133 = load i64, i64* %PC
  %134 = add i64 %133, 5
  store i64 %134, i64* %PC
  %135 = inttoptr i64 %132 to double*
  %136 = load double, double* %135
  %137 = call double @llvm.trunc.f64(double %136) #16
  %138 = call double @llvm.fabs.f64(double %137) #16
  %139 = fcmp ogt double %138, 0x41DFFFFFFFC00000
  %140 = fptosi double %137 to i32
  %141 = zext i32 %140 to i64
  %142 = select i1 %139, i64 2147483648, i64 %141
  store i64 %142, i64* %RAX, align 8, !tbaa !2428
  %143 = load i32, i32* %EAX
  %144 = zext i32 %143 to i64
  %145 = load i64, i64* %PC
  %146 = add i64 %145, 3
  store i64 %146, i64* %PC
  %147 = shl i64 %144, 32
  %148 = ashr exact i64 %147, 32
  store i64 %148, i64* %RDI, align 8, !tbaa !2428
  %149 = load i64, i64* %RSI
  %150 = load i64, i64* %RDI
  %151 = mul i64 %150, 8
  %152 = add i64 %151, %149
  %153 = bitcast %union.vec128_t* %XMM0 to i8*
  %154 = load i64, i64* %PC
  %155 = add i64 %154, 5
  store i64 %155, i64* %PC
  %156 = bitcast i8* %153 to double*
  %157 = load double, double* %156, align 1
  %158 = inttoptr i64 %152 to double*
  store double %157, double* %158
  %159 = load i64, i64* %RBP
  %160 = sub i64 %159, 16
  %161 = load i64, i64* %PC
  %162 = add i64 %161, 4
  store i64 %162, i64* %PC
  %163 = inttoptr i64 %160 to i64*
  %164 = load i64, i64* %163
  store i64 %164, i64* %RSI, align 8, !tbaa !2428
  %165 = load i64, i64* %RBP
  %166 = sub i64 %165, 48
  %167 = load i64, i64* %PC
  %168 = add i64 %167, 5
  store i64 %168, i64* %PC
  %169 = inttoptr i64 %166 to double*
  %170 = load double, double* %169
  %171 = call double @llvm.trunc.f64(double %170) #16
  %172 = call double @llvm.fabs.f64(double %171) #16
  %173 = fcmp ogt double %172, 0x41DFFFFFFFC00000
  %174 = fptosi double %171 to i32
  %175 = zext i32 %174 to i64
  %176 = select i1 %173, i64 2147483648, i64 %175
  store i64 %176, i64* %RAX, align 8, !tbaa !2428
  %177 = load i32, i32* %EAX
  %178 = zext i32 %177 to i64
  %179 = load i64, i64* %PC
  %180 = add i64 %179, 3
  store i64 %180, i64* %PC
  %181 = shl i64 %178, 32
  %182 = ashr exact i64 %181, 32
  store i64 %182, i64* %RDI, align 8, !tbaa !2428
  %183 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %184 = load i64, i64* %RSI
  %185 = load i64, i64* %RDI
  %186 = mul i64 %185, 8
  %187 = add i64 %186, %184
  %188 = load i64, i64* %PC
  %189 = add i64 %188, 5
  store i64 %189, i64* %PC
  %190 = inttoptr i64 %187 to double*
  %191 = load double, double* %190
  %192 = bitcast i8* %183 to double*
  store double %191, double* %192, align 1, !tbaa !2452
  %193 = getelementptr inbounds i8, i8* %183, i64 8
  %194 = bitcast i8* %193 to double*
  store double 0.000000e+00, double* %194, align 1, !tbaa !2452
  %195 = load i64, i64* %RBP
  %196 = sub i64 %195, 16
  %197 = load i64, i64* %PC
  %198 = add i64 %197, 4
  store i64 %198, i64* %PC
  %199 = inttoptr i64 %196 to i64*
  %200 = load i64, i64* %199
  store i64 %200, i64* %RSI, align 8, !tbaa !2428
  %201 = load i64, i64* %RBP
  %202 = sub i64 %201, 48
  %203 = load i64, i64* %PC
  %204 = add i64 %203, 5
  store i64 %204, i64* %PC
  %205 = inttoptr i64 %202 to double*
  %206 = load double, double* %205
  %207 = call double @llvm.trunc.f64(double %206) #16
  %208 = call double @llvm.fabs.f64(double %207) #16
  %209 = fcmp ogt double %208, 0x41DFFFFFFFC00000
  %210 = fptosi double %207 to i32
  %211 = zext i32 %210 to i64
  %212 = select i1 %209, i64 2147483648, i64 %211
  store i64 %212, i64* %RAX, align 8, !tbaa !2428
  %213 = load i64, i64* %RAX
  %214 = load i64, i64* %PC
  %215 = add i64 %214, 3
  store i64 %215, i64* %PC
  %216 = trunc i64 %213 to i32
  %217 = add i32 1, %216
  %218 = zext i32 %217 to i64
  store i64 %218, i64* %RAX, align 8, !tbaa !2428
  %219 = icmp ult i32 %217, %216
  %220 = icmp ult i32 %217, 1
  %221 = or i1 %219, %220
  %222 = zext i1 %221 to i8
  %223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %222, i8* %223, align 1, !tbaa !2432
  %224 = and i32 %217, 255
  %225 = call i32 @llvm.ctpop.i32(i32 %224) #16
  %226 = trunc i32 %225 to i8
  %227 = and i8 %226, 1
  %228 = xor i8 %227, 1
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %228, i8* %229, align 1, !tbaa !2446
  %230 = xor i64 1, %213
  %231 = trunc i64 %230 to i32
  %232 = xor i32 %231, %217
  %233 = lshr i32 %232, 4
  %234 = trunc i32 %233 to i8
  %235 = and i8 %234, 1
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %235, i8* %236, align 1, !tbaa !2447
  %237 = icmp eq i32 %217, 0
  %238 = zext i1 %237 to i8
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %238, i8* %239, align 1, !tbaa !2448
  %240 = lshr i32 %217, 31
  %241 = trunc i32 %240 to i8
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %241, i8* %242, align 1, !tbaa !2449
  %243 = lshr i32 %216, 31
  %244 = xor i32 %240, %243
  %245 = add nuw nsw i32 %244, %240
  %246 = icmp eq i32 %245, 2
  %247 = zext i1 %246 to i8
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %247, i8* %248, align 1, !tbaa !2450
  %249 = load i32, i32* %EAX
  %250 = zext i32 %249 to i64
  %251 = load i64, i64* %PC
  %252 = add i64 %251, 3
  store i64 %252, i64* %PC
  %253 = shl i64 %250, 32
  %254 = ashr exact i64 %253, 32
  store i64 %254, i64* %RDI, align 8, !tbaa !2428
  %255 = load i64, i64* %RSI
  %256 = load i64, i64* %RDI
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
  %267 = sub i64 %266, 48
  %268 = load i64, i64* %PC
  %269 = add i64 %268, 5
  store i64 %269, i64* %PC
  %270 = inttoptr i64 %267 to double*
  %271 = load double, double* %270
  %272 = bitcast i8* %265 to double*
  store double %271, double* %272, align 1, !tbaa !2452
  %273 = getelementptr inbounds i8, i8* %265, i64 8
  %274 = bitcast i8* %273 to double*
  store double 0.000000e+00, double* %274, align 1, !tbaa !2452
  %275 = load i64, i64* %RBP
  %276 = sub i64 %275, 16
  %277 = load i64, i64* %PC
  %278 = add i64 %277, 4
  store i64 %278, i64* %PC
  %279 = inttoptr i64 %276 to i64*
  %280 = load i64, i64* %279
  store i64 %280, i64* %RSI, align 8, !tbaa !2428
  %281 = load i64, i64* %RBP
  %282 = sub i64 %281, 48
  %283 = load i64, i64* %PC
  %284 = add i64 %283, 5
  store i64 %284, i64* %PC
  %285 = inttoptr i64 %282 to double*
  %286 = load double, double* %285
  %287 = call double @llvm.trunc.f64(double %286) #16
  %288 = call double @llvm.fabs.f64(double %287) #16
  %289 = fcmp ogt double %288, 0x41DFFFFFFFC00000
  %290 = fptosi double %287 to i32
  %291 = zext i32 %290 to i64
  %292 = select i1 %289, i64 2147483648, i64 %291
  store i64 %292, i64* %RAX, align 8, !tbaa !2428
  %293 = load i64, i64* %RAX
  %294 = load i64, i64* %PC
  %295 = add i64 %294, 3
  store i64 %295, i64* %PC
  %296 = trunc i64 %293 to i32
  %297 = add i32 30, %296
  %298 = zext i32 %297 to i64
  store i64 %298, i64* %RAX, align 8, !tbaa !2428
  %299 = icmp ult i32 %297, %296
  %300 = icmp ult i32 %297, 30
  %301 = or i1 %299, %300
  %302 = zext i1 %301 to i8
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %302, i8* %303, align 1, !tbaa !2432
  %304 = and i32 %297, 255
  %305 = call i32 @llvm.ctpop.i32(i32 %304) #16
  %306 = trunc i32 %305 to i8
  %307 = and i8 %306, 1
  %308 = xor i8 %307, 1
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %308, i8* %309, align 1, !tbaa !2446
  %310 = xor i64 30, %293
  %311 = trunc i64 %310 to i32
  %312 = xor i32 %311, %297
  %313 = lshr i32 %312, 4
  %314 = trunc i32 %313 to i8
  %315 = and i8 %314, 1
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %315, i8* %316, align 1, !tbaa !2447
  %317 = icmp eq i32 %297, 0
  %318 = zext i1 %317 to i8
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %318, i8* %319, align 1, !tbaa !2448
  %320 = lshr i32 %297, 31
  %321 = trunc i32 %320 to i8
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %321, i8* %322, align 1, !tbaa !2449
  %323 = lshr i32 %296, 31
  %324 = xor i32 %320, %323
  %325 = add nuw nsw i32 %324, %320
  %326 = icmp eq i32 %325, 2
  %327 = zext i1 %326 to i8
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %327, i8* %328, align 1, !tbaa !2450
  %329 = load i32, i32* %EAX
  %330 = zext i32 %329 to i64
  %331 = load i64, i64* %PC
  %332 = add i64 %331, 3
  store i64 %332, i64* %PC
  %333 = shl i64 %330, 32
  %334 = ashr exact i64 %333, 32
  store i64 %334, i64* %RDI, align 8, !tbaa !2428
  %335 = load i64, i64* %RSI
  %336 = load i64, i64* %RDI
  %337 = mul i64 %336, 8
  %338 = add i64 %337, %335
  %339 = bitcast %union.vec128_t* %XMM0 to i8*
  %340 = load i64, i64* %PC
  %341 = add i64 %340, 5
  store i64 %341, i64* %PC
  %342 = bitcast i8* %339 to double*
  %343 = load double, double* %342, align 1
  %344 = inttoptr i64 %338 to double*
  store double %343, double* %344
  %345 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %346 = load i64, i64* %RBP
  %347 = sub i64 %346, 48
  %348 = load i64, i64* %PC
  %349 = add i64 %348, 5
  store i64 %349, i64* %PC
  %350 = inttoptr i64 %347 to double*
  %351 = load double, double* %350
  %352 = bitcast i8* %345 to double*
  store double %351, double* %352, align 1, !tbaa !2452
  %353 = getelementptr inbounds i8, i8* %345, i64 8
  %354 = bitcast i8* %353 to double*
  store double 0.000000e+00, double* %354, align 1, !tbaa !2452
  %355 = load i64, i64* %RBP
  %356 = sub i64 %355, 56
  %357 = bitcast %union.vec128_t* %XMM0 to i8*
  %358 = load i64, i64* %PC
  %359 = add i64 %358, 5
  store i64 %359, i64* %PC
  %360 = bitcast i8* %357 to double*
  %361 = load double, double* %360, align 1
  %362 = inttoptr i64 %356 to double*
  store double %361, double* %362
  br label %block_400be6

block_400be6:                                     ; preds = %block_400c02, %block_400b60
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400b60 ], [ %435, %block_400c02 ]
  %363 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %364 = load i64, i64* %PC
  %365 = add i64 %364, 8
  store i64 %365, i64* %PC
  %366 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401040__rodata_type* @seg_401040__rodata to i64), i64 48) to double*)
  %367 = bitcast i8* %363 to double*
  store double %366, double* %367, align 1, !tbaa !2452
  %368 = getelementptr inbounds i8, i8* %363, i64 8
  %369 = bitcast i8* %368 to double*
  store double 0.000000e+00, double* %369, align 1, !tbaa !2452
  %370 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %371 = load i64, i64* %RBP
  %372 = sub i64 %371, 56
  %373 = load i64, i64* %PC
  %374 = add i64 %373, 5
  store i64 %374, i64* %PC
  %375 = inttoptr i64 %372 to double*
  %376 = load double, double* %375
  %377 = bitcast i8* %370 to double*
  store double %376, double* %377, align 1, !tbaa !2452
  %378 = getelementptr inbounds i8, i8* %370, i64 8
  %379 = bitcast i8* %378 to double*
  store double 0.000000e+00, double* %379, align 1, !tbaa !2452
  %380 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %381 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %382 = load i64, i64* %RBP
  %383 = sub i64 %382, 48
  %384 = load i64, i64* %PC
  %385 = add i64 %384, 5
  store i64 %385, i64* %PC
  %386 = bitcast i8* %381 to double*
  %387 = load double, double* %386, align 1
  %388 = getelementptr inbounds i8, i8* %381, i64 8
  %389 = bitcast i8* %388 to i64*
  %390 = load i64, i64* %389, align 1
  %391 = inttoptr i64 %383 to double*
  %392 = load double, double* %391
  %393 = fadd double %387, %392
  %394 = bitcast i8* %380 to double*
  store double %393, double* %394, align 1, !tbaa !2452
  %395 = getelementptr inbounds i8, i8* %380, i64 8
  %396 = bitcast i8* %395 to i64*
  store i64 %390, i64* %396, align 1, !tbaa !2452
  %397 = bitcast %union.vec128_t* %XMM0 to i8*
  %398 = bitcast %union.vec128_t* %XMM1 to i8*
  %399 = load i64, i64* %PC
  %400 = add i64 %399, 4
  store i64 %400, i64* %PC
  %401 = bitcast i8* %397 to double*
  %402 = load double, double* %401, align 1
  %403 = bitcast i8* %398 to double*
  %404 = load double, double* %403, align 1
  %405 = fcmp uno double %402, %404
  br i1 %405, label %406, label %418

; <label>:406:                                    ; preds = %block_400be6
  %407 = fadd double %402, %404
  %408 = bitcast double %407 to i64
  %409 = and i64 %408, 9221120237041090560
  %410 = icmp eq i64 %409, 9218868437227405312
  %411 = and i64 %408, 2251799813685247
  %412 = icmp ne i64 %411, 0
  %413 = and i1 %410, %412
  br i1 %413, label %414, label %424

; <label>:414:                                    ; preds = %406
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %416 = load i64, i64* %415, align 8, !tbaa !2428
  %417 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %416, %struct.Memory* %MEMORY.0) #17
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:418:                                    ; preds = %block_400be6
  %419 = fcmp ogt double %402, %404
  br i1 %419, label %424, label %420

; <label>:420:                                    ; preds = %418
  %421 = fcmp olt double %402, %404
  br i1 %421, label %424, label %422

; <label>:422:                                    ; preds = %420
  %423 = fcmp oeq double %402, %404
  br i1 %423, label %424, label %431

; <label>:424:                                    ; preds = %422, %420, %418, %406
  %425 = phi i8 [ 0, %418 ], [ 0, %420 ], [ 1, %422 ], [ 1, %406 ]
  %426 = phi i8 [ 0, %418 ], [ 0, %420 ], [ 0, %422 ], [ 1, %406 ]
  %427 = phi i8 [ 0, %418 ], [ 1, %420 ], [ 0, %422 ], [ 1, %406 ]
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %425, i8* %428, align 1, !tbaa !2451
  %429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %426, i8* %429, align 1, !tbaa !2451
  %430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %427, i8* %430, align 1, !tbaa !2451
  br label %431

; <label>:431:                                    ; preds = %424, %422
  %432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %432, align 1, !tbaa !2451
  %433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %433, align 1, !tbaa !2451
  %434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %434, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %414, %431
  %435 = phi %struct.Memory* [ %417, %414 ], [ %MEMORY.0, %431 ]
  %436 = load i64, i64* %PC
  %437 = add i64 %436, 69
  %438 = load i64, i64* %PC
  %439 = add i64 %438, 6
  %440 = load i64, i64* %PC
  %441 = add i64 %440, 6
  store i64 %441, i64* %PC
  %442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %443 = load i8, i8* %442, align 1, !tbaa !2432
  store i8 %443, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %445 = icmp ne i8 %443, 0
  %446 = select i1 %445, i64 %437, i64 %439
  store i64 %446, i64* %444, align 8, !tbaa !2428
  %447 = load i8, i8* %BRANCH_TAKEN
  %448 = icmp eq i8 %447, 1
  %449 = bitcast %"class.std::bitset"* %YMM0 to i8*
  br i1 %448, label %block_400c41, label %block_400c02

block_400c02:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit
  %450 = load i64, i64* %RBP
  %451 = sub i64 %450, 48
  %452 = load i64, i64* %PC
  %453 = add i64 %452, 5
  store i64 %453, i64* %PC
  %454 = inttoptr i64 %451 to double*
  %455 = load double, double* %454
  %456 = bitcast i8* %449 to double*
  store double %455, double* %456, align 1, !tbaa !2452
  %457 = getelementptr inbounds i8, i8* %449, i64 8
  %458 = bitcast i8* %457 to double*
  store double 0.000000e+00, double* %458, align 1, !tbaa !2452
  %459 = load i64, i64* %RBP
  %460 = sub i64 %459, 24
  %461 = load i64, i64* %PC
  %462 = add i64 %461, 4
  store i64 %462, i64* %PC
  %463 = inttoptr i64 %460 to i64*
  %464 = load i64, i64* %463
  store i64 %464, i64* %RAX, align 8, !tbaa !2428
  %465 = load i64, i64* %RBP
  %466 = sub i64 %465, 48
  %467 = load i64, i64* %PC
  %468 = add i64 %467, 5
  store i64 %468, i64* %PC
  %469 = inttoptr i64 %466 to double*
  %470 = load double, double* %469
  %471 = call double @llvm.trunc.f64(double %470) #16
  %472 = call double @llvm.fabs.f64(double %471) #16
  %473 = fcmp ogt double %472, 0x41DFFFFFFFC00000
  %474 = fptosi double %471 to i32
  %475 = zext i32 %474 to i64
  %476 = select i1 %473, i64 2147483648, i64 %475
  store i64 %476, i64* %RCX, align 8, !tbaa !2428
  %477 = load i32, i32* %ECX
  %478 = zext i32 %477 to i64
  %479 = load i64, i64* %PC
  %480 = add i64 %479, 3
  store i64 %480, i64* %PC
  %481 = shl i64 %478, 32
  %482 = ashr exact i64 %481, 32
  store i64 %482, i64* %RDX, align 8, !tbaa !2428
  %483 = load i64, i64* %RDX
  %484 = load i64, i64* %PC
  %485 = add i64 %484, 7
  store i64 %485, i64* %PC
  %486 = sext i64 %483 to i128
  %487 = and i128 %486, -18446744073709551616
  %488 = zext i64 %483 to i128
  %489 = or i128 %487, %488
  %490 = mul nsw i128 408, %489
  %491 = trunc i128 %490 to i64
  store i64 %491, i64* %RDX, align 8, !tbaa !2428
  %492 = sext i64 %491 to i128
  %493 = icmp ne i128 %492, %490
  %494 = zext i1 %493 to i8
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %494, i8* %495, align 1, !tbaa !2432
  %496 = trunc i128 %490 to i32
  %497 = and i32 %496, 255
  %498 = call i32 @llvm.ctpop.i32(i32 %497) #16
  %499 = trunc i32 %498 to i8
  %500 = and i8 %499, 1
  %501 = xor i8 %500, 1
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %501, i8* %502, align 1, !tbaa !2446
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %503, align 1, !tbaa !2447
  %504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %504, align 1, !tbaa !2448
  %505 = lshr i64 %491, 63
  %506 = trunc i64 %505 to i8
  %507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %506, i8* %507, align 1, !tbaa !2449
  %508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %494, i8* %508, align 1, !tbaa !2450
  %509 = load i64, i64* %RAX
  %510 = load i64, i64* %RDX
  %511 = load i64, i64* %PC
  %512 = add i64 %511, 3
  store i64 %512, i64* %PC
  %513 = add i64 %510, %509
  store i64 %513, i64* %RAX, align 8, !tbaa !2428
  %514 = icmp ult i64 %513, %509
  %515 = icmp ult i64 %513, %510
  %516 = or i1 %514, %515
  %517 = zext i1 %516 to i8
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %517, i8* %518, align 1, !tbaa !2432
  %519 = trunc i64 %513 to i32
  %520 = and i32 %519, 255
  %521 = call i32 @llvm.ctpop.i32(i32 %520) #16
  %522 = trunc i32 %521 to i8
  %523 = and i8 %522, 1
  %524 = xor i8 %523, 1
  %525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %524, i8* %525, align 1, !tbaa !2446
  %526 = xor i64 %510, %509
  %527 = xor i64 %526, %513
  %528 = lshr i64 %527, 4
  %529 = trunc i64 %528 to i8
  %530 = and i8 %529, 1
  %531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %530, i8* %531, align 1, !tbaa !2447
  %532 = icmp eq i64 %513, 0
  %533 = zext i1 %532 to i8
  %534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %533, i8* %534, align 1, !tbaa !2448
  %535 = lshr i64 %513, 63
  %536 = trunc i64 %535 to i8
  %537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %536, i8* %537, align 1, !tbaa !2449
  %538 = lshr i64 %509, 63
  %539 = lshr i64 %510, 63
  %540 = xor i64 %535, %538
  %541 = xor i64 %535, %539
  %542 = add nuw nsw i64 %540, %541
  %543 = icmp eq i64 %542, 2
  %544 = zext i1 %543 to i8
  %545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %544, i8* %545, align 1, !tbaa !2450
  %546 = load i64, i64* %RBP
  %547 = sub i64 %546, 56
  %548 = load i64, i64* %PC
  %549 = add i64 %548, 5
  store i64 %549, i64* %PC
  %550 = inttoptr i64 %547 to double*
  %551 = load double, double* %550
  %552 = call double @llvm.trunc.f64(double %551) #16
  %553 = call double @llvm.fabs.f64(double %552) #16
  %554 = fcmp ogt double %553, 0x41DFFFFFFFC00000
  %555 = fptosi double %552 to i32
  %556 = zext i32 %555 to i64
  %557 = select i1 %554, i64 2147483648, i64 %556
  store i64 %557, i64* %RCX, align 8, !tbaa !2428
  %558 = load i32, i32* %ECX
  %559 = zext i32 %558 to i64
  %560 = load i64, i64* %PC
  %561 = add i64 %560, 3
  store i64 %561, i64* %PC
  %562 = shl i64 %559, 32
  %563 = ashr exact i64 %562, 32
  store i64 %563, i64* %RDX, align 8, !tbaa !2428
  %564 = load i64, i64* %RAX
  %565 = load i64, i64* %RDX
  %566 = mul i64 %565, 8
  %567 = add i64 %566, %564
  %568 = bitcast %union.vec128_t* %XMM0 to i8*
  %569 = load i64, i64* %PC
  %570 = add i64 %569, 5
  store i64 %570, i64* %PC
  %571 = bitcast i8* %568 to double*
  %572 = load double, double* %571, align 1
  %573 = inttoptr i64 %567 to double*
  store double %572, double* %573
  %574 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %575 = load i64, i64* %PC
  %576 = add i64 %575, 8
  store i64 %576, i64* %PC
  %577 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401040__rodata_type* @seg_401040__rodata to i64), i64 48) to double*)
  %578 = bitcast i8* %574 to double*
  store double %577, double* %578, align 1, !tbaa !2452
  %579 = getelementptr inbounds i8, i8* %574, i64 8
  %580 = bitcast i8* %579 to double*
  store double 0.000000e+00, double* %580, align 1, !tbaa !2452
  %581 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %582 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %583 = load i64, i64* %RBP
  %584 = sub i64 %583, 56
  %585 = load i64, i64* %PC
  %586 = add i64 %585, 5
  store i64 %586, i64* %PC
  %587 = bitcast i8* %582 to double*
  %588 = load double, double* %587, align 1
  %589 = getelementptr inbounds i8, i8* %582, i64 8
  %590 = bitcast i8* %589 to i64*
  %591 = load i64, i64* %590, align 1
  %592 = inttoptr i64 %584 to double*
  %593 = load double, double* %592
  %594 = fadd double %588, %593
  %595 = bitcast i8* %581 to double*
  store double %594, double* %595, align 1, !tbaa !2452
  %596 = getelementptr inbounds i8, i8* %581, i64 8
  %597 = bitcast i8* %596 to i64*
  store i64 %591, i64* %597, align 1, !tbaa !2452
  %598 = load i64, i64* %RBP
  %599 = sub i64 %598, 56
  %600 = bitcast %union.vec128_t* %XMM0 to i8*
  %601 = load i64, i64* %PC
  %602 = add i64 %601, 5
  store i64 %602, i64* %PC
  %603 = bitcast i8* %600 to double*
  %604 = load double, double* %603, align 1
  %605 = inttoptr i64 %599 to double*
  store double %604, double* %605
  %606 = load i64, i64* %PC
  %607 = sub i64 %606, 86
  %608 = load i64, i64* %PC
  %609 = add i64 %608, 5
  store i64 %609, i64* %PC
  %610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %607, i64* %610, align 8, !tbaa !2428
  br label %block_400be6

block_400c41:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit
  %611 = load i64, i64* %PC
  %612 = add i64 %611, 8
  store i64 %612, i64* %PC
  %613 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401040__rodata_type* @seg_401040__rodata to i64), i64 56) to double*)
  %614 = bitcast i8* %449 to double*
  store double %613, double* %614, align 1, !tbaa !2452
  %615 = getelementptr inbounds i8, i8* %449, i64 8
  %616 = bitcast i8* %615 to double*
  store double 0.000000e+00, double* %616, align 1, !tbaa !2452
  %617 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %618 = load i64, i64* %PC
  %619 = add i64 %618, 8
  store i64 %619, i64* %PC
  %620 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401040__rodata_type* @seg_401040__rodata to i64), i64 48) to double*)
  %621 = bitcast i8* %617 to double*
  store double %620, double* %621, align 1, !tbaa !2452
  %622 = getelementptr inbounds i8, i8* %617, i64 8
  %623 = bitcast i8* %622 to double*
  store double 0.000000e+00, double* %623, align 1, !tbaa !2452
  %624 = load i64, i64* %RBP
  %625 = sub i64 %624, 24
  %626 = load i64, i64* %PC
  %627 = add i64 %626, 4
  store i64 %627, i64* %PC
  %628 = inttoptr i64 %625 to i64*
  %629 = load i64, i64* %628
  store i64 %629, i64* %RAX, align 8, !tbaa !2428
  %630 = load i64, i64* %RBP
  %631 = sub i64 %630, 48
  %632 = load i64, i64* %PC
  %633 = add i64 %632, 5
  store i64 %633, i64* %PC
  %634 = inttoptr i64 %631 to double*
  %635 = load double, double* %634
  %636 = call double @llvm.trunc.f64(double %635) #16
  %637 = call double @llvm.fabs.f64(double %636) #16
  %638 = fcmp ogt double %637, 0x41DFFFFFFFC00000
  %639 = fptosi double %636 to i32
  %640 = zext i32 %639 to i64
  %641 = select i1 %638, i64 2147483648, i64 %640
  store i64 %641, i64* %RCX, align 8, !tbaa !2428
  %642 = load i32, i32* %ECX
  %643 = zext i32 %642 to i64
  %644 = load i64, i64* %PC
  %645 = add i64 %644, 3
  store i64 %645, i64* %PC
  %646 = shl i64 %643, 32
  %647 = ashr exact i64 %646, 32
  store i64 %647, i64* %RDX, align 8, !tbaa !2428
  %648 = load i64, i64* %RDX
  %649 = load i64, i64* %PC
  %650 = add i64 %649, 7
  store i64 %650, i64* %PC
  %651 = sext i64 %648 to i128
  %652 = and i128 %651, -18446744073709551616
  %653 = zext i64 %648 to i128
  %654 = or i128 %652, %653
  %655 = mul nsw i128 408, %654
  %656 = trunc i128 %655 to i64
  store i64 %656, i64* %RDX, align 8, !tbaa !2428
  %657 = sext i64 %656 to i128
  %658 = icmp ne i128 %657, %655
  %659 = zext i1 %658 to i8
  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %659, i8* %660, align 1, !tbaa !2432
  %661 = trunc i128 %655 to i32
  %662 = and i32 %661, 255
  %663 = call i32 @llvm.ctpop.i32(i32 %662) #16
  %664 = trunc i32 %663 to i8
  %665 = and i8 %664, 1
  %666 = xor i8 %665, 1
  %667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %666, i8* %667, align 1, !tbaa !2446
  %668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %668, align 1, !tbaa !2447
  %669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %669, align 1, !tbaa !2448
  %670 = lshr i64 %656, 63
  %671 = trunc i64 %670 to i8
  %672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %671, i8* %672, align 1, !tbaa !2449
  %673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %659, i8* %673, align 1, !tbaa !2450
  %674 = load i64, i64* %RAX
  %675 = load i64, i64* %RDX
  %676 = load i64, i64* %PC
  %677 = add i64 %676, 3
  store i64 %677, i64* %PC
  %678 = add i64 %675, %674
  store i64 %678, i64* %RAX, align 8, !tbaa !2428
  %679 = icmp ult i64 %678, %674
  %680 = icmp ult i64 %678, %675
  %681 = or i1 %679, %680
  %682 = zext i1 %681 to i8
  %683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %682, i8* %683, align 1, !tbaa !2432
  %684 = trunc i64 %678 to i32
  %685 = and i32 %684, 255
  %686 = call i32 @llvm.ctpop.i32(i32 %685) #16
  %687 = trunc i32 %686 to i8
  %688 = and i8 %687, 1
  %689 = xor i8 %688, 1
  %690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %689, i8* %690, align 1, !tbaa !2446
  %691 = xor i64 %675, %674
  %692 = xor i64 %691, %678
  %693 = lshr i64 %692, 4
  %694 = trunc i64 %693 to i8
  %695 = and i8 %694, 1
  %696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %695, i8* %696, align 1, !tbaa !2447
  %697 = icmp eq i64 %678, 0
  %698 = zext i1 %697 to i8
  %699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %698, i8* %699, align 1, !tbaa !2448
  %700 = lshr i64 %678, 63
  %701 = trunc i64 %700 to i8
  %702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %701, i8* %702, align 1, !tbaa !2449
  %703 = lshr i64 %674, 63
  %704 = lshr i64 %675, 63
  %705 = xor i64 %700, %703
  %706 = xor i64 %700, %704
  %707 = add nuw nsw i64 %705, %706
  %708 = icmp eq i64 %707, 2
  %709 = zext i1 %708 to i8
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %709, i8* %710, align 1, !tbaa !2450
  %711 = load i64, i64* %RBP
  %712 = sub i64 %711, 48
  %713 = load i64, i64* %PC
  %714 = add i64 %713, 5
  store i64 %714, i64* %PC
  %715 = inttoptr i64 %712 to double*
  %716 = load double, double* %715
  %717 = call double @llvm.trunc.f64(double %716) #16
  %718 = call double @llvm.fabs.f64(double %717) #16
  %719 = fcmp ogt double %718, 0x41DFFFFFFFC00000
  %720 = fptosi double %717 to i32
  %721 = zext i32 %720 to i64
  %722 = select i1 %719, i64 2147483648, i64 %721
  store i64 %722, i64* %RCX, align 8, !tbaa !2428
  %723 = load i64, i64* %RCX
  %724 = load i64, i64* %PC
  %725 = add i64 %724, 3
  store i64 %725, i64* %PC
  %726 = trunc i64 %723 to i32
  %727 = sub i32 %726, 1
  %728 = zext i32 %727 to i64
  store i64 %728, i64* %RCX, align 8, !tbaa !2428
  %729 = icmp ult i32 %726, 1
  %730 = zext i1 %729 to i8
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %730, i8* %731, align 1, !tbaa !2432
  %732 = and i32 %727, 255
  %733 = call i32 @llvm.ctpop.i32(i32 %732) #16
  %734 = trunc i32 %733 to i8
  %735 = and i8 %734, 1
  %736 = xor i8 %735, 1
  %737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %736, i8* %737, align 1, !tbaa !2446
  %738 = xor i64 1, %723
  %739 = trunc i64 %738 to i32
  %740 = xor i32 %739, %727
  %741 = lshr i32 %740, 4
  %742 = trunc i32 %741 to i8
  %743 = and i8 %742, 1
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %743, i8* %744, align 1, !tbaa !2447
  %745 = icmp eq i32 %727, 0
  %746 = zext i1 %745 to i8
  %747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %746, i8* %747, align 1, !tbaa !2448
  %748 = lshr i32 %727, 31
  %749 = trunc i32 %748 to i8
  %750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %749, i8* %750, align 1, !tbaa !2449
  %751 = lshr i32 %726, 31
  %752 = xor i32 %748, %751
  %753 = add nuw nsw i32 %752, %751
  %754 = icmp eq i32 %753, 2
  %755 = zext i1 %754 to i8
  %756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %755, i8* %756, align 1, !tbaa !2450
  %757 = load i32, i32* %ECX
  %758 = zext i32 %757 to i64
  %759 = load i64, i64* %PC
  %760 = add i64 %759, 3
  store i64 %760, i64* %PC
  %761 = shl i64 %758, 32
  %762 = ashr exact i64 %761, 32
  store i64 %762, i64* %RDX, align 8, !tbaa !2428
  %763 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %764 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %765 = load i64, i64* %RAX
  %766 = load i64, i64* %RDX
  %767 = mul i64 %766, 8
  %768 = add i64 %767, %765
  %769 = load i64, i64* %PC
  %770 = add i64 %769, 5
  store i64 %770, i64* %PC
  %771 = bitcast i8* %764 to double*
  %772 = load double, double* %771, align 1
  %773 = getelementptr inbounds i8, i8* %764, i64 8
  %774 = bitcast i8* %773 to i64*
  %775 = load i64, i64* %774, align 1
  %776 = inttoptr i64 %768 to double*
  %777 = load double, double* %776
  %778 = fadd double %772, %777
  %779 = bitcast i8* %763 to double*
  store double %778, double* %779, align 1, !tbaa !2452
  %780 = getelementptr inbounds i8, i8* %763, i64 8
  %781 = bitcast i8* %780 to i64*
  store i64 %775, i64* %781, align 1, !tbaa !2452
  %782 = load i64, i64* %RAX
  %783 = load i64, i64* %RDX
  %784 = mul i64 %783, 8
  %785 = add i64 %784, %782
  %786 = bitcast %union.vec128_t* %XMM1 to i8*
  %787 = load i64, i64* %PC
  %788 = add i64 %787, 5
  store i64 %788, i64* %PC
  %789 = bitcast i8* %786 to double*
  %790 = load double, double* %789, align 1
  %791 = inttoptr i64 %785 to double*
  store double %790, double* %791
  %792 = load i64, i64* %RBP
  %793 = sub i64 %792, 16
  %794 = load i64, i64* %PC
  %795 = add i64 %794, 4
  store i64 %795, i64* %PC
  %796 = inttoptr i64 %793 to i64*
  %797 = load i64, i64* %796
  store i64 %797, i64* %RAX, align 8, !tbaa !2428
  %798 = load i64, i64* %RBP
  %799 = sub i64 %798, 48
  %800 = load i64, i64* %PC
  %801 = add i64 %800, 5
  store i64 %801, i64* %PC
  %802 = inttoptr i64 %799 to double*
  %803 = load double, double* %802
  %804 = call double @llvm.trunc.f64(double %803) #16
  %805 = call double @llvm.fabs.f64(double %804) #16
  %806 = fcmp ogt double %805, 0x41DFFFFFFFC00000
  %807 = fptosi double %804 to i32
  %808 = zext i32 %807 to i64
  %809 = select i1 %806, i64 2147483648, i64 %808
  store i64 %809, i64* %RCX, align 8, !tbaa !2428
  %810 = load i32, i32* %ECX
  %811 = zext i32 %810 to i64
  %812 = load i64, i64* %PC
  %813 = add i64 %812, 3
  store i64 %813, i64* %PC
  %814 = shl i64 %811, 32
  %815 = ashr exact i64 %814, 32
  store i64 %815, i64* %RDX, align 8, !tbaa !2428
  %816 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %817 = load i64, i64* %RAX
  %818 = load i64, i64* %RDX
  %819 = mul i64 %818, 8
  %820 = add i64 %819, %817
  %821 = load i64, i64* %PC
  %822 = add i64 %821, 5
  store i64 %822, i64* %PC
  %823 = inttoptr i64 %820 to double*
  %824 = load double, double* %823
  %825 = bitcast i8* %816 to double*
  store double %824, double* %825, align 1, !tbaa !2452
  %826 = getelementptr inbounds i8, i8* %816, i64 8
  %827 = bitcast i8* %826 to double*
  store double 0.000000e+00, double* %827, align 1, !tbaa !2452
  %828 = load i64, i64* %RBP
  %829 = sub i64 %828, 24
  %830 = load i64, i64* %PC
  %831 = add i64 %830, 4
  store i64 %831, i64* %PC
  %832 = inttoptr i64 %829 to i64*
  %833 = load i64, i64* %832
  store i64 %833, i64* %RAX, align 8, !tbaa !2428
  %834 = load i64, i64* %RBP
  %835 = sub i64 %834, 48
  %836 = load i64, i64* %PC
  %837 = add i64 %836, 5
  store i64 %837, i64* %PC
  %838 = inttoptr i64 %835 to double*
  %839 = load double, double* %838
  %840 = call double @llvm.trunc.f64(double %839) #16
  %841 = call double @llvm.fabs.f64(double %840) #16
  %842 = fcmp ogt double %841, 0x41DFFFFFFFC00000
  %843 = fptosi double %840 to i32
  %844 = zext i32 %843 to i64
  %845 = select i1 %842, i64 2147483648, i64 %844
  store i64 %845, i64* %RCX, align 8, !tbaa !2428
  %846 = load i64, i64* %RCX
  %847 = load i64, i64* %PC
  %848 = add i64 %847, 3
  store i64 %848, i64* %PC
  %849 = trunc i64 %846 to i32
  %850 = add i32 20, %849
  %851 = zext i32 %850 to i64
  store i64 %851, i64* %RCX, align 8, !tbaa !2428
  %852 = icmp ult i32 %850, %849
  %853 = icmp ult i32 %850, 20
  %854 = or i1 %852, %853
  %855 = zext i1 %854 to i8
  %856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %855, i8* %856, align 1, !tbaa !2432
  %857 = and i32 %850, 255
  %858 = call i32 @llvm.ctpop.i32(i32 %857) #16
  %859 = trunc i32 %858 to i8
  %860 = and i8 %859, 1
  %861 = xor i8 %860, 1
  %862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %861, i8* %862, align 1, !tbaa !2446
  %863 = xor i64 20, %846
  %864 = trunc i64 %863 to i32
  %865 = xor i32 %864, %850
  %866 = lshr i32 %865, 4
  %867 = trunc i32 %866 to i8
  %868 = and i8 %867, 1
  %869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %868, i8* %869, align 1, !tbaa !2447
  %870 = icmp eq i32 %850, 0
  %871 = zext i1 %870 to i8
  %872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %871, i8* %872, align 1, !tbaa !2448
  %873 = lshr i32 %850, 31
  %874 = trunc i32 %873 to i8
  %875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %874, i8* %875, align 1, !tbaa !2449
  %876 = lshr i32 %849, 31
  %877 = xor i32 %873, %876
  %878 = add nuw nsw i32 %877, %873
  %879 = icmp eq i32 %878, 2
  %880 = zext i1 %879 to i8
  %881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %880, i8* %881, align 1, !tbaa !2450
  %882 = load i32, i32* %ECX
  %883 = zext i32 %882 to i64
  %884 = load i64, i64* %PC
  %885 = add i64 %884, 3
  store i64 %885, i64* %PC
  %886 = shl i64 %883, 32
  %887 = ashr exact i64 %886, 32
  store i64 %887, i64* %RDX, align 8, !tbaa !2428
  %888 = load i64, i64* %RDX
  %889 = load i64, i64* %PC
  %890 = add i64 %889, 7
  store i64 %890, i64* %PC
  %891 = sext i64 %888 to i128
  %892 = and i128 %891, -18446744073709551616
  %893 = zext i64 %888 to i128
  %894 = or i128 %892, %893
  %895 = mul nsw i128 408, %894
  %896 = trunc i128 %895 to i64
  store i64 %896, i64* %RDX, align 8, !tbaa !2428
  %897 = sext i64 %896 to i128
  %898 = icmp ne i128 %897, %895
  %899 = zext i1 %898 to i8
  %900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %899, i8* %900, align 1, !tbaa !2432
  %901 = trunc i128 %895 to i32
  %902 = and i32 %901, 255
  %903 = call i32 @llvm.ctpop.i32(i32 %902) #16
  %904 = trunc i32 %903 to i8
  %905 = and i8 %904, 1
  %906 = xor i8 %905, 1
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %906, i8* %907, align 1, !tbaa !2446
  %908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %908, align 1, !tbaa !2447
  %909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %909, align 1, !tbaa !2448
  %910 = lshr i64 %896, 63
  %911 = trunc i64 %910 to i8
  %912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %911, i8* %912, align 1, !tbaa !2449
  %913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %899, i8* %913, align 1, !tbaa !2450
  %914 = load i64, i64* %RAX
  %915 = load i64, i64* %RDX
  %916 = load i64, i64* %PC
  %917 = add i64 %916, 3
  store i64 %917, i64* %PC
  %918 = add i64 %915, %914
  store i64 %918, i64* %RAX, align 8, !tbaa !2428
  %919 = icmp ult i64 %918, %914
  %920 = icmp ult i64 %918, %915
  %921 = or i1 %919, %920
  %922 = zext i1 %921 to i8
  %923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %922, i8* %923, align 1, !tbaa !2432
  %924 = trunc i64 %918 to i32
  %925 = and i32 %924, 255
  %926 = call i32 @llvm.ctpop.i32(i32 %925) #16
  %927 = trunc i32 %926 to i8
  %928 = and i8 %927, 1
  %929 = xor i8 %928, 1
  %930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %929, i8* %930, align 1, !tbaa !2446
  %931 = xor i64 %915, %914
  %932 = xor i64 %931, %918
  %933 = lshr i64 %932, 4
  %934 = trunc i64 %933 to i8
  %935 = and i8 %934, 1
  %936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %935, i8* %936, align 1, !tbaa !2447
  %937 = icmp eq i64 %918, 0
  %938 = zext i1 %937 to i8
  %939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %938, i8* %939, align 1, !tbaa !2448
  %940 = lshr i64 %918, 63
  %941 = trunc i64 %940 to i8
  %942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %941, i8* %942, align 1, !tbaa !2449
  %943 = lshr i64 %914, 63
  %944 = lshr i64 %915, 63
  %945 = xor i64 %940, %943
  %946 = xor i64 %940, %944
  %947 = add nuw nsw i64 %945, %946
  %948 = icmp eq i64 %947, 2
  %949 = zext i1 %948 to i8
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %949, i8* %950, align 1, !tbaa !2450
  %951 = load i64, i64* %RBP
  %952 = sub i64 %951, 48
  %953 = load i64, i64* %PC
  %954 = add i64 %953, 5
  store i64 %954, i64* %PC
  %955 = inttoptr i64 %952 to double*
  %956 = load double, double* %955
  %957 = call double @llvm.trunc.f64(double %956) #16
  %958 = call double @llvm.fabs.f64(double %957) #16
  %959 = fcmp ogt double %958, 0x41DFFFFFFFC00000
  %960 = fptosi double %957 to i32
  %961 = zext i32 %960 to i64
  %962 = select i1 %959, i64 2147483648, i64 %961
  store i64 %962, i64* %RCX, align 8, !tbaa !2428
  %963 = load i32, i32* %ECX
  %964 = zext i32 %963 to i64
  %965 = load i64, i64* %PC
  %966 = add i64 %965, 3
  store i64 %966, i64* %PC
  %967 = shl i64 %964, 32
  %968 = ashr exact i64 %967, 32
  store i64 %968, i64* %RDX, align 8, !tbaa !2428
  %969 = load i64, i64* %RAX
  %970 = load i64, i64* %RDX
  %971 = mul i64 %970, 8
  %972 = add i64 %971, %969
  %973 = bitcast %union.vec128_t* %XMM1 to i8*
  %974 = load i64, i64* %PC
  %975 = add i64 %974, 5
  store i64 %975, i64* %PC
  %976 = bitcast i8* %973 to double*
  %977 = load double, double* %976, align 1
  %978 = inttoptr i64 %972 to double*
  store double %977, double* %978
  %979 = bitcast %union.vec128_t* %XMM0 to i8*
  %980 = load i64, i64* %PC
  %981 = add i64 %980, 9
  store i64 %981, i64* %PC
  %982 = bitcast i8* %979 to double*
  %983 = load double, double* %982, align 1
  store double %983, double* bitcast (%IntGlob_type* @IntGlob to double*)
  %984 = load i64, i64* %RBP
  %985 = sub i64 %984, 4
  %986 = load i64, i64* %PC
  %987 = add i64 %986, 3
  store i64 %987, i64* %PC
  %988 = inttoptr i64 %985 to i32*
  %989 = load i32, i32* %988
  %990 = zext i32 %989 to i64
  store i64 %990, i64* %RAX, align 8, !tbaa !2428
  %991 = load i64, i64* %PC
  %992 = add i64 %991, 1
  store i64 %992, i64* %PC
  %993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %994 = load i64, i64* %993, align 8, !tbaa !2428
  %995 = add i64 %994, 8
  %996 = inttoptr i64 %994 to i64*
  %997 = load i64, i64* %996
  store i64 %997, i64* %RBP, align 8, !tbaa !2428
  store i64 %995, i64* %993, align 8, !tbaa !2428
  %998 = load i64, i64* %PC
  %999 = add i64 %998, 1
  store i64 %999, i64* %PC
  %1000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1002 = load i64, i64* %1001, align 8, !tbaa !2428
  %1003 = inttoptr i64 %1002 to i64*
  %1004 = load i64, i64* %1003
  store i64 %1004, i64* %1000, align 8, !tbaa !2428
  %1005 = add i64 %1002, 8
  store i64 %1005, i64* %1001, align 8, !tbaa !2428
  ret %struct.Memory* %435
}

; Function Attrs: noinline
define %struct.Memory* @sub_400600___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400600:
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
  %14 = load i8, i8* getelementptr inbounds (%seg_602060__bss_type, %seg_602060__bss_type* @seg_602060__bss, i32 0, i32 0, i32 0)
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
  br i1 %47, label %block_400620, label %block_400609

block_400620:                                     ; preds = %block_400600
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

block_400609:                                     ; preds = %block_400600
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
  %78 = call %struct.Memory* @sub_400590_deregister_tm_clones(%struct.State* %0, i64 %77, %struct.Memory* %2)
  %79 = load i64, i64* %PC
  %80 = add i64 %79, 7
  store i64 %80, i64* %PC
  store i8 1, i8* getelementptr inbounds (%seg_602060__bss_type, %seg_602060__bss_type* @seg_602060__bss, i32 0, i32 0, i32 0)
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
define %struct.Memory* @sub_400d20_Func1(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400d20:
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
  %15 = getelementptr inbounds %struct.GPR, %struct.GPR* %14, i32 0, i32 9
  %16 = getelementptr inbounds %struct.Reg, %struct.Reg* %15, i32 0, i32 0
  %17 = bitcast %union.anon* %16 to %struct.anon.2*
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %17, i32 0, i32 0
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %19 = getelementptr inbounds %struct.GPR, %struct.GPR* %18, i32 0, i32 11
  %20 = getelementptr inbounds %struct.Reg, %struct.Reg* %19, i32 0, i32 0
  %21 = bitcast %union.anon* %20 to %struct.anon.2*
  %DIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %21, i32 0, i32 0
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %23 = getelementptr inbounds %struct.GPR, %struct.GPR* %22, i32 0, i32 9
  %24 = getelementptr inbounds %struct.Reg, %struct.Reg* %23, i32 0, i32 0
  %ESI = bitcast %union.anon* %24 to i32*
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %26 = getelementptr inbounds %struct.GPR, %struct.GPR* %25, i32 0, i32 11
  %27 = getelementptr inbounds %struct.Reg, %struct.Reg* %26, i32 0, i32 0
  %EDI = bitcast %union.anon* %27 to i32*
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %29 = getelementptr inbounds %struct.GPR, %struct.GPR* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.Reg, %struct.Reg* %29, i32 0, i32 0
  %RAX = bitcast %union.anon* %30 to i64*
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
  %43 = load i64, i64* %RBP
  %44 = load i64, i64* %PC
  %45 = add i64 %44, 1
  store i64 %45, i64* %PC
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %47 = load i64, i64* %46, align 8, !tbaa !2428
  %48 = add i64 %47, -8
  %49 = inttoptr i64 %48 to i64*
  store i64 %43, i64* %49
  store i64 %48, i64* %46, align 8, !tbaa !2428
  %50 = load i64, i64* %RSP
  %51 = load i64, i64* %PC
  %52 = add i64 %51, 3
  store i64 %52, i64* %PC
  store i64 %50, i64* %RBP, align 8, !tbaa !2428
  %53 = load i8, i8* %DIL
  %54 = zext i8 %53 to i64
  %55 = load i64, i64* %PC
  %56 = add i64 %55, 3
  store i64 %56, i64* %PC
  store i8 %53, i8* %AL, align 1, !tbaa !2451
  %57 = load i8, i8* %SIL
  %58 = zext i8 %57 to i64
  %59 = load i64, i64* %PC
  %60 = add i64 %59, 3
  store i64 %60, i64* %PC
  store i8 %57, i8* %CL, align 1, !tbaa !2451
  %61 = load i64, i64* %RBP
  %62 = sub i64 %61, 5
  %63 = load i8, i8* %AL
  %64 = zext i8 %63 to i64
  %65 = load i64, i64* %PC
  %66 = add i64 %65, 3
  store i64 %66, i64* %PC
  %67 = inttoptr i64 %62 to i8*
  store i8 %63, i8* %67
  %68 = load i64, i64* %RBP
  %69 = sub i64 %68, 6
  %70 = load i8, i8* %CL
  %71 = zext i8 %70 to i64
  %72 = load i64, i64* %PC
  %73 = add i64 %72, 3
  store i64 %73, i64* %PC
  %74 = inttoptr i64 %69 to i8*
  store i8 %70, i8* %74
  %75 = load i64, i64* %RBP
  %76 = sub i64 %75, 5
  %77 = load i64, i64* %PC
  %78 = add i64 %77, 3
  store i64 %78, i64* %PC
  %79 = inttoptr i64 %76 to i8*
  %80 = load i8, i8* %79
  store i8 %80, i8* %AL, align 1, !tbaa !2451
  %81 = load i64, i64* %RBP
  %82 = sub i64 %81, 7
  %83 = load i8, i8* %AL
  %84 = zext i8 %83 to i64
  %85 = load i64, i64* %PC
  %86 = add i64 %85, 3
  store i64 %86, i64* %PC
  %87 = inttoptr i64 %82 to i8*
  store i8 %83, i8* %87
  %88 = load i64, i64* %RBP
  %89 = sub i64 %88, 7
  %90 = load i64, i64* %PC
  %91 = add i64 %90, 3
  store i64 %91, i64* %PC
  %92 = inttoptr i64 %89 to i8*
  %93 = load i8, i8* %92
  store i8 %93, i8* %AL, align 1, !tbaa !2451
  %94 = load i64, i64* %RBP
  %95 = sub i64 %94, 8
  %96 = load i8, i8* %AL
  %97 = zext i8 %96 to i64
  %98 = load i64, i64* %PC
  %99 = add i64 %98, 3
  store i64 %99, i64* %PC
  %100 = inttoptr i64 %95 to i8*
  store i8 %96, i8* %100
  %101 = load i64, i64* %RBP
  %102 = sub i64 %101, 8
  %103 = load i64, i64* %PC
  %104 = add i64 %103, 4
  store i64 %104, i64* %PC
  %105 = inttoptr i64 %102 to i8*
  %106 = load i8, i8* %105
  %107 = sext i8 %106 to i64
  %108 = and i64 %107, 4294967295
  store i64 %108, i64* %RSI, align 8, !tbaa !2428
  %109 = load i64, i64* %RBP
  %110 = sub i64 %109, 6
  %111 = load i64, i64* %PC
  %112 = add i64 %111, 4
  store i64 %112, i64* %PC
  %113 = inttoptr i64 %110 to i8*
  %114 = load i8, i8* %113
  %115 = sext i8 %114 to i64
  %116 = and i64 %115, 4294967295
  store i64 %116, i64* %RDI, align 8, !tbaa !2428
  %117 = load i32, i32* %ESI
  %118 = zext i32 %117 to i64
  %119 = load i32, i32* %EDI
  %120 = zext i32 %119 to i64
  %121 = load i64, i64* %PC
  %122 = add i64 %121, 2
  store i64 %122, i64* %PC
  %123 = sub i32 %117, %119
  %124 = icmp ult i32 %117, %119
  %125 = zext i1 %124 to i8
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %125, i8* %126, align 1, !tbaa !2432
  %127 = and i32 %123, 255
  %128 = call i32 @llvm.ctpop.i32(i32 %127) #16
  %129 = trunc i32 %128 to i8
  %130 = and i8 %129, 1
  %131 = xor i8 %130, 1
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %131, i8* %132, align 1, !tbaa !2446
  %133 = xor i64 %120, %118
  %134 = trunc i64 %133 to i32
  %135 = xor i32 %134, %123
  %136 = lshr i32 %135, 4
  %137 = trunc i32 %136 to i8
  %138 = and i8 %137, 1
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %138, i8* %139, align 1, !tbaa !2447
  %140 = icmp eq i32 %123, 0
  %141 = zext i1 %140 to i8
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %141, i8* %142, align 1, !tbaa !2448
  %143 = lshr i32 %123, 31
  %144 = trunc i32 %143 to i8
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %144, i8* %145, align 1, !tbaa !2449
  %146 = lshr i32 %117, 31
  %147 = lshr i32 %119, 31
  %148 = xor i32 %147, %146
  %149 = xor i32 %143, %146
  %150 = add nuw nsw i32 %149, %148
  %151 = icmp eq i32 %150, 2
  %152 = zext i1 %151 to i8
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %152, i8* %153, align 1, !tbaa !2450
  %154 = load i64, i64* %PC
  %155 = add i64 %154, 18
  %156 = load i64, i64* %PC
  %157 = add i64 %156, 6
  %158 = load i64, i64* %PC
  %159 = add i64 %158, 6
  store i64 %159, i64* %PC
  %160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %161 = load i8, i8* %160, align 1, !tbaa !2448
  store i8 %161, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %163 = icmp ne i8 %161, 0
  %164 = select i1 %163, i64 %155, i64 %157
  store i64 %164, i64* %162, align 8, !tbaa !2428
  %165 = load i8, i8* %BRANCH_TAKEN
  %166 = icmp eq i8 %165, 1
  %167 = load i64, i64* %RBP
  %168 = sub i64 %167, 4
  %169 = load i64, i64* %PC
  %170 = add i64 %169, 7
  store i64 %170, i64* %PC
  br i1 %166, label %block_400d58, label %block_400d4c

block_400d5f:                                     ; preds = %block_400d58, %block_400d4c
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400d58 ], [ %2, %block_400d4c ]
  %171 = load i64, i64* %RBP
  %172 = sub i64 %171, 4
  %173 = load i64, i64* %PC
  %174 = add i64 %173, 3
  store i64 %174, i64* %PC
  %175 = inttoptr i64 %172 to i32*
  %176 = load i32, i32* %175
  %177 = zext i32 %176 to i64
  store i64 %177, i64* %RAX, align 8, !tbaa !2428
  %178 = load i64, i64* %PC
  %179 = add i64 %178, 1
  store i64 %179, i64* %PC
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %181 = load i64, i64* %180, align 8, !tbaa !2428
  %182 = add i64 %181, 8
  %183 = inttoptr i64 %181 to i64*
  %184 = load i64, i64* %183
  store i64 %184, i64* %RBP, align 8, !tbaa !2428
  store i64 %182, i64* %180, align 8, !tbaa !2428
  %185 = load i64, i64* %PC
  %186 = add i64 %185, 1
  store i64 %186, i64* %PC
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %189 = load i64, i64* %188, align 8, !tbaa !2428
  %190 = inttoptr i64 %189 to i64*
  %191 = load i64, i64* %190
  store i64 %191, i64* %187, align 8, !tbaa !2428
  %192 = add i64 %189, 8
  store i64 %192, i64* %188, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_400d4c:                                     ; preds = %block_400d20
  %193 = inttoptr i64 %168 to i32*
  store i32 0, i32* %193
  %194 = load i64, i64* %PC
  %195 = add i64 %194, 12
  %196 = load i64, i64* %PC
  %197 = add i64 %196, 5
  store i64 %197, i64* %PC
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %195, i64* %198, align 8, !tbaa !2428
  br label %block_400d5f

block_400d58:                                     ; preds = %block_400d20
  %199 = inttoptr i64 %168 to i32*
  store i32 10000, i32* %199
  br label %block_400d5f
}

; Function Attrs: noinline
define %struct.Memory* @sub_400cd0_Proc1(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400cd0:
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
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %19 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %18, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %19 to %"class.std::bitset"*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %21 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %20, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %21 to %union.vec128_t*
  %22 = load i64, i64* %RBP
  %23 = load i64, i64* %PC
  %24 = add i64 %23, 1
  store i64 %24, i64* %PC
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %26 = load i64, i64* %25, align 8, !tbaa !2428
  %27 = add i64 %26, -8
  %28 = inttoptr i64 %27 to i64*
  store i64 %22, i64* %28
  store i64 %27, i64* %25, align 8, !tbaa !2428
  %29 = load i64, i64* %RSP
  %30 = load i64, i64* %PC
  %31 = add i64 %30, 3
  store i64 %31, i64* %PC
  store i64 %29, i64* %RBP, align 8, !tbaa !2428
  %32 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %33 = load i64, i64* %PC
  %34 = add i64 %33, 8
  store i64 %34, i64* %PC
  %35 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401040__rodata_type* @seg_401040__rodata to i64), i64 56) to double*)
  %36 = bitcast i8* %32 to double*
  store double %35, double* %36, align 1, !tbaa !2452
  %37 = getelementptr inbounds i8, i8* %32, i64 8
  %38 = bitcast i8* %37 to double*
  store double 0.000000e+00, double* %38, align 1, !tbaa !2452
  %39 = load i64, i64* %RBP
  %40 = sub i64 %39, 16
  %41 = load i64, i64* %RDI
  %42 = load i64, i64* %PC
  %43 = add i64 %42, 4
  store i64 %43, i64* %PC
  %44 = inttoptr i64 %40 to i64*
  store i64 %41, i64* %44
  %45 = load i64, i64* %RBP
  %46 = sub i64 %45, 16
  %47 = load i64, i64* %PC
  %48 = add i64 %47, 4
  store i64 %48, i64* %PC
  %49 = inttoptr i64 %46 to i64*
  %50 = load i64, i64* %49
  store i64 %50, i64* %RDI, align 8, !tbaa !2428
  %51 = load i64, i64* %RDI
  %52 = add i64 %51, 16
  %53 = bitcast %union.vec128_t* %XMM0 to i8*
  %54 = load i64, i64* %PC
  %55 = add i64 %54, 5
  store i64 %55, i64* %PC
  %56 = bitcast i8* %53 to double*
  %57 = load double, double* %56, align 1
  %58 = inttoptr i64 %52 to double*
  store double %57, double* %58
  %59 = load i64, i64* %RBP
  %60 = sub i64 %59, 16
  %61 = load i64, i64* %PC
  %62 = add i64 %61, 4
  store i64 %62, i64* %PC
  %63 = inttoptr i64 %60 to i64*
  %64 = load i64, i64* %63
  store i64 %64, i64* %RDI, align 8, !tbaa !2428
  %65 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %66 = load i64, i64* %RDI
  %67 = add i64 %66, 16
  %68 = load i64, i64* %PC
  %69 = add i64 %68, 5
  store i64 %69, i64* %PC
  %70 = inttoptr i64 %67 to double*
  %71 = load double, double* %70
  %72 = bitcast i8* %65 to double*
  store double %71, double* %72, align 1, !tbaa !2452
  %73 = getelementptr inbounds i8, i8* %65, i64 8
  %74 = bitcast i8* %73 to double*
  store double 0.000000e+00, double* %74, align 1, !tbaa !2452
  %75 = load i64, i64* %RBP
  %76 = sub i64 %75, 16
  %77 = load i64, i64* %PC
  %78 = add i64 %77, 4
  store i64 %78, i64* %PC
  %79 = inttoptr i64 %76 to i64*
  %80 = load i64, i64* %79
  store i64 %80, i64* %RDI, align 8, !tbaa !2428
  %81 = load i64, i64* %RDI
  %82 = load i64, i64* %PC
  %83 = add i64 %82, 3
  store i64 %83, i64* %PC
  %84 = inttoptr i64 %81 to i64*
  %85 = load i64, i64* %84
  store i64 %85, i64* %RDI, align 8, !tbaa !2428
  %86 = load i64, i64* %RDI
  %87 = add i64 %86, 16
  %88 = bitcast %union.vec128_t* %XMM0 to i8*
  %89 = load i64, i64* %PC
  %90 = add i64 %89, 5
  store i64 %90, i64* %PC
  %91 = bitcast i8* %88 to double*
  %92 = load double, double* %91, align 1
  %93 = inttoptr i64 %87 to double*
  store double %92, double* %93
  %94 = load i64, i64* %RBP
  %95 = sub i64 %94, 16
  %96 = load i64, i64* %PC
  %97 = add i64 %96, 4
  store i64 %97, i64* %PC
  %98 = inttoptr i64 %95 to i64*
  %99 = load i64, i64* %98
  store i64 %99, i64* %RDI, align 8, !tbaa !2428
  %100 = load i64, i64* %RDI
  %101 = load i64, i64* %PC
  %102 = add i64 %101, 3
  store i64 %102, i64* %PC
  %103 = inttoptr i64 %100 to i64*
  %104 = load i64, i64* %103
  store i64 %104, i64* %RDI, align 8, !tbaa !2428
  %105 = load i64, i64* %RBP
  %106 = sub i64 %105, 16
  %107 = load i64, i64* %PC
  %108 = add i64 %107, 4
  store i64 %108, i64* %PC
  %109 = inttoptr i64 %106 to i64*
  %110 = load i64, i64* %109
  store i64 %110, i64* %RAX, align 8, !tbaa !2428
  %111 = load i64, i64* %RAX
  %112 = load i64, i64* %PC
  %113 = add i64 %112, 3
  store i64 %113, i64* %PC
  %114 = inttoptr i64 %111 to i64*
  %115 = load i64, i64* %114
  store i64 %115, i64* %RAX, align 8, !tbaa !2428
  %116 = load i64, i64* %RAX
  %117 = load i64, i64* %RDI
  %118 = load i64, i64* %PC
  %119 = add i64 %118, 3
  store i64 %119, i64* %PC
  %120 = inttoptr i64 %116 to i64*
  store i64 %117, i64* %120
  %121 = load i64, i64* %RBP
  %122 = sub i64 %121, 4
  %123 = load i64, i64* %PC
  %124 = add i64 %123, 3
  store i64 %124, i64* %PC
  %125 = inttoptr i64 %122 to i32*
  %126 = load i32, i32* %125
  %127 = zext i32 %126 to i64
  store i64 %127, i64* %RAX, align 8, !tbaa !2428
  %128 = load i64, i64* %PC
  %129 = add i64 %128, 1
  store i64 %129, i64* %PC
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %131 = load i64, i64* %130, align 8, !tbaa !2428
  %132 = add i64 %131, 8
  %133 = inttoptr i64 %131 to i64*
  %134 = load i64, i64* %133
  store i64 %134, i64* %RBP, align 8, !tbaa !2428
  store i64 %132, i64* %130, align 8, !tbaa !2428
  %135 = load i64, i64* %PC
  %136 = add i64 %135, 1
  store i64 %136, i64* %PC
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %139 = load i64, i64* %138, align 8, !tbaa !2428
  %140 = inttoptr i64 %139 to i64*
  %141 = load i64, i64* %140
  store i64 %141, i64* %137, align 8, !tbaa !2428
  %142 = add i64 %139, 8
  store i64 %142, i64* %138, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_400a20_Func2(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400a20:
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
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %34 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %33, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %34 to %"class.std::bitset"*
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %36 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %35, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %36 to %union.vec128_t*
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
  %50 = sub i64 %47, 48
  store i64 %50, i64* %RSP, align 8, !tbaa !2428
  %51 = icmp ult i64 %47, 48
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
  %61 = xor i64 48, %47
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
  %79 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %80 = load i64, i64* %PC
  %81 = add i64 %80, 8
  store i64 %81, i64* %PC
  %82 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401040__rodata_type* @seg_401040__rodata to i64), i64 48) to double*)
  %83 = bitcast i8* %79 to double*
  store double %82, double* %83, align 1, !tbaa !2452
  %84 = getelementptr inbounds i8, i8* %79, i64 8
  %85 = bitcast i8* %84 to double*
  store double 0.000000e+00, double* %85, align 1, !tbaa !2452
  %86 = load i64, i64* %RBP
  %87 = sub i64 %86, 16
  %88 = load i64, i64* %RDI
  %89 = load i64, i64* %PC
  %90 = add i64 %89, 4
  store i64 %90, i64* %PC
  %91 = inttoptr i64 %87 to i64*
  store i64 %88, i64* %91
  %92 = load i64, i64* %RBP
  %93 = sub i64 %92, 24
  %94 = load i64, i64* %RSI
  %95 = load i64, i64* %PC
  %96 = add i64 %95, 4
  store i64 %96, i64* %PC
  %97 = inttoptr i64 %93 to i64*
  store i64 %94, i64* %97
  %98 = load i64, i64* %RBP
  %99 = sub i64 %98, 32
  %100 = bitcast %union.vec128_t* %XMM0 to i8*
  %101 = load i64, i64* %PC
  %102 = add i64 %101, 5
  store i64 %102, i64* %PC
  %103 = bitcast i8* %100 to double*
  %104 = load double, double* %103, align 1
  %105 = inttoptr i64 %99 to double*
  store double %104, double* %105
  br label %block_400a3d

block_400b10:                                     ; preds = %block_400adc
  %106 = load i64, i64* %RBP
  %107 = sub i64 %106, 4
  %108 = load i64, i64* %PC
  %109 = add i64 %108, 7
  store i64 %109, i64* %PC
  %110 = inttoptr i64 %107 to i32*
  store i32 0, i32* %110
  br label %block_400b17

block_400b17:                                     ; preds = %block_400ad0, %block_400af2, %block_400b10
  %MEMORY.0 = phi %struct.Memory* [ %408, %block_400b10 ], [ %408, %block_400af2 ], [ %MEMORY.1, %block_400ad0 ]
  %111 = load i64, i64* %RBP
  %112 = sub i64 %111, 4
  %113 = load i64, i64* %PC
  %114 = add i64 %113, 3
  store i64 %114, i64* %PC
  %115 = inttoptr i64 %112 to i32*
  %116 = load i32, i32* %115
  %117 = zext i32 %116 to i64
  store i64 %117, i64* %RAX, align 8, !tbaa !2428
  %118 = load i64, i64* %RSP
  %119 = load i64, i64* %PC
  %120 = add i64 %119, 4
  store i64 %120, i64* %PC
  %121 = add i64 48, %118
  store i64 %121, i64* %RSP, align 8, !tbaa !2428
  %122 = icmp ult i64 %121, %118
  %123 = icmp ult i64 %121, 48
  %124 = or i1 %122, %123
  %125 = zext i1 %124 to i8
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %125, i8* %126, align 1, !tbaa !2432
  %127 = trunc i64 %121 to i32
  %128 = and i32 %127, 255
  %129 = call i32 @llvm.ctpop.i32(i32 %128) #16
  %130 = trunc i32 %129 to i8
  %131 = and i8 %130, 1
  %132 = xor i8 %131, 1
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %132, i8* %133, align 1, !tbaa !2446
  %134 = xor i64 48, %118
  %135 = xor i64 %134, %121
  %136 = lshr i64 %135, 4
  %137 = trunc i64 %136 to i8
  %138 = and i8 %137, 1
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %138, i8* %139, align 1, !tbaa !2447
  %140 = icmp eq i64 %121, 0
  %141 = zext i1 %140 to i8
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %141, i8* %142, align 1, !tbaa !2448
  %143 = lshr i64 %121, 63
  %144 = trunc i64 %143 to i8
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %144, i8* %145, align 1, !tbaa !2449
  %146 = lshr i64 %118, 63
  %147 = xor i64 %143, %146
  %148 = add nuw nsw i64 %147, %143
  %149 = icmp eq i64 %148, 2
  %150 = zext i1 %149 to i8
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %150, i8* %151, align 1, !tbaa !2450
  %152 = load i64, i64* %PC
  %153 = add i64 %152, 1
  store i64 %153, i64* %PC
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %155 = load i64, i64* %154, align 8, !tbaa !2428
  %156 = add i64 %155, 8
  %157 = inttoptr i64 %155 to i64*
  %158 = load i64, i64* %157
  store i64 %158, i64* %RBP, align 8, !tbaa !2428
  store i64 %156, i64* %154, align 8, !tbaa !2428
  %159 = load i64, i64* %PC
  %160 = add i64 %159, 1
  store i64 %160, i64* %PC
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %163 = load i64, i64* %162, align 8, !tbaa !2428
  %164 = inttoptr i64 %163 to i64*
  %165 = load i64, i64* %164
  store i64 %165, i64* %161, align 8, !tbaa !2428
  %166 = add i64 %163, 8
  store i64 %166, i64* %162, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_400a50:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %167 = sub i64 %693, 16
  %168 = load i64, i64* %PC
  %169 = add i64 %168, 4
  store i64 %169, i64* %PC
  %170 = inttoptr i64 %167 to i64*
  %171 = load i64, i64* %170
  store i64 %171, i64* %RAX, align 8, !tbaa !2428
  %172 = load i64, i64* %RBP
  %173 = sub i64 %172, 32
  %174 = load i64, i64* %PC
  %175 = add i64 %174, 5
  store i64 %175, i64* %PC
  %176 = inttoptr i64 %173 to double*
  %177 = load double, double* %176
  %178 = call double @llvm.trunc.f64(double %177) #16
  %179 = call double @llvm.fabs.f64(double %178) #16
  %180 = fcmp ogt double %179, 0x41DFFFFFFFC00000
  %181 = fptosi double %178 to i32
  %182 = zext i32 %181 to i64
  %183 = select i1 %180, i64 2147483648, i64 %182
  store i64 %183, i64* %RCX, align 8, !tbaa !2428
  %184 = load i32, i32* %ECX
  %185 = zext i32 %184 to i64
  %186 = load i64, i64* %PC
  %187 = add i64 %186, 3
  store i64 %187, i64* %PC
  %188 = shl i64 %185, 32
  %189 = ashr exact i64 %188, 32
  store i64 %189, i64* %RDX, align 8, !tbaa !2428
  %190 = load i64, i64* %RAX
  %191 = load i64, i64* %RDX
  %192 = add i64 %191, %190
  %193 = load i64, i64* %PC
  %194 = add i64 %193, 4
  store i64 %194, i64* %PC
  %195 = inttoptr i64 %192 to i8*
  %196 = load i8, i8* %195
  %197 = sext i8 %196 to i64
  %198 = and i64 %197, 4294967295
  store i64 %198, i64* %RDI, align 8, !tbaa !2428
  %199 = load i64, i64* %RBP
  %200 = sub i64 %199, 24
  %201 = load i64, i64* %PC
  %202 = add i64 %201, 4
  store i64 %202, i64* %PC
  %203 = inttoptr i64 %200 to i64*
  %204 = load i64, i64* %203
  store i64 %204, i64* %RAX, align 8, !tbaa !2428
  %205 = load i64, i64* %RBP
  %206 = sub i64 %205, 32
  %207 = load i64, i64* %PC
  %208 = add i64 %207, 5
  store i64 %208, i64* %PC
  %209 = inttoptr i64 %206 to double*
  %210 = load double, double* %209
  %211 = call double @llvm.trunc.f64(double %210) #16
  %212 = call double @llvm.fabs.f64(double %211) #16
  %213 = fcmp ogt double %212, 0x41DFFFFFFFC00000
  %214 = fptosi double %211 to i32
  %215 = zext i32 %214 to i64
  %216 = select i1 %213, i64 2147483648, i64 %215
  store i64 %216, i64* %RCX, align 8, !tbaa !2428
  %217 = load i64, i64* %RCX
  %218 = load i64, i64* %PC
  %219 = add i64 %218, 3
  store i64 %219, i64* %PC
  %220 = trunc i64 %217 to i32
  %221 = add i32 1, %220
  %222 = zext i32 %221 to i64
  store i64 %222, i64* %RCX, align 8, !tbaa !2428
  %223 = icmp ult i32 %221, %220
  %224 = icmp ult i32 %221, 1
  %225 = or i1 %223, %224
  %226 = zext i1 %225 to i8
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %226, i8* %227, align 1, !tbaa !2432
  %228 = and i32 %221, 255
  %229 = call i32 @llvm.ctpop.i32(i32 %228) #16
  %230 = trunc i32 %229 to i8
  %231 = and i8 %230, 1
  %232 = xor i8 %231, 1
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %232, i8* %233, align 1, !tbaa !2446
  %234 = xor i64 1, %217
  %235 = trunc i64 %234 to i32
  %236 = xor i32 %235, %221
  %237 = lshr i32 %236, 4
  %238 = trunc i32 %237 to i8
  %239 = and i8 %238, 1
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %239, i8* %240, align 1, !tbaa !2447
  %241 = icmp eq i32 %221, 0
  %242 = zext i1 %241 to i8
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %242, i8* %243, align 1, !tbaa !2448
  %244 = lshr i32 %221, 31
  %245 = trunc i32 %244 to i8
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %245, i8* %246, align 1, !tbaa !2449
  %247 = lshr i32 %220, 31
  %248 = xor i32 %244, %247
  %249 = add nuw nsw i32 %248, %244
  %250 = icmp eq i32 %249, 2
  %251 = zext i1 %250 to i8
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %251, i8* %252, align 1, !tbaa !2450
  %253 = load i32, i32* %ECX
  %254 = zext i32 %253 to i64
  %255 = load i64, i64* %PC
  %256 = add i64 %255, 3
  store i64 %256, i64* %PC
  %257 = shl i64 %254, 32
  %258 = ashr exact i64 %257, 32
  store i64 %258, i64* %RDX, align 8, !tbaa !2428
  %259 = load i64, i64* %RAX
  %260 = load i64, i64* %RDX
  %261 = add i64 %260, %259
  %262 = load i64, i64* %PC
  %263 = add i64 %262, 4
  store i64 %263, i64* %PC
  %264 = inttoptr i64 %261 to i8*
  %265 = load i8, i8* %264
  %266 = sext i8 %265 to i64
  %267 = and i64 %266, 4294967295
  store i64 %267, i64* %RSI, align 8, !tbaa !2428
  %268 = load i64, i64* %PC
  %269 = add i64 %268, 685
  %270 = load i64, i64* %PC
  %271 = add i64 %270, 5
  %272 = load i64, i64* %PC
  %273 = add i64 %272, 5
  store i64 %273, i64* %PC
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %275 = load i64, i64* %274, align 8, !tbaa !2428
  %276 = add i64 %275, -8
  %277 = inttoptr i64 %276 to i64*
  store i64 %271, i64* %277
  store i64 %276, i64* %274, align 8, !tbaa !2428
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %269, i64* %278, align 8, !tbaa !2428
  %279 = load i64, i64* %PC
  %280 = call %struct.Memory* @sub_400d20_Func1(%struct.State* %0, i64 %279, %struct.Memory* %679)
  %281 = load i32, i32* %EAX
  %282 = zext i32 %281 to i64
  %283 = load i64, i64* %PC
  %284 = add i64 %283, 3
  store i64 %284, i64* %PC
  %285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %285, align 1, !tbaa !2432
  %286 = and i32 %281, 255
  %287 = call i32 @llvm.ctpop.i32(i32 %286) #16
  %288 = trunc i32 %287 to i8
  %289 = and i8 %288, 1
  %290 = xor i8 %289, 1
  %291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %290, i8* %291, align 1, !tbaa !2446
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %292, align 1, !tbaa !2447
  %293 = icmp eq i32 %281, 0
  %294 = zext i1 %293 to i8
  %295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %294, i8* %295, align 1, !tbaa !2448
  %296 = lshr i32 %281, 31
  %297 = trunc i32 %296 to i8
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %297, i8* %298, align 1, !tbaa !2449
  %299 = lshr i32 %281, 31
  %300 = xor i32 %296, %299
  %301 = add nuw nsw i32 %300, %299
  %302 = icmp eq i32 %301, 2
  %303 = zext i1 %302 to i8
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %303, i8* %304, align 1, !tbaa !2450
  %305 = load i64, i64* %PC
  %306 = add i64 %305, 28
  %307 = load i64, i64* %PC
  %308 = add i64 %307, 6
  %309 = load i64, i64* %PC
  %310 = add i64 %309, 6
  store i64 %310, i64* %PC
  %311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %312 = load i8, i8* %311, align 1, !tbaa !2448
  %313 = icmp eq i8 %312, 0
  %314 = zext i1 %313 to i8
  store i8 %314, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %316 = select i1 %313, i64 %306, i64 %308
  store i64 %316, i64* %315, align 8, !tbaa !2428
  %317 = load i8, i8* %BRANCH_TAKEN
  %318 = icmp eq i8 %317, 1
  br i1 %318, label %block_400a97, label %block_400a81

block_400ab6:                                     ; preds = %block_400aa9
  %319 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %320 = load i64, i64* %PC
  %321 = add i64 %320, 8
  store i64 %321, i64* %PC
  %322 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401040__rodata_type* @seg_401040__rodata to i64), i64 40) to double*)
  %323 = bitcast i8* %319 to double*
  store double %322, double* %323, align 1, !tbaa !2452
  %324 = getelementptr inbounds i8, i8* %319, i64 8
  %325 = bitcast i8* %324 to double*
  store double 0.000000e+00, double* %325, align 1, !tbaa !2452
  %326 = load i64, i64* %RBP
  %327 = sub i64 %326, 32
  %328 = bitcast %union.vec128_t* %XMM0 to i8*
  %329 = load i64, i64* %PC
  %330 = add i64 %329, 5
  store i64 %330, i64* %PC
  %331 = bitcast i8* %328 to double*
  %332 = load double, double* %331, align 1
  %333 = inttoptr i64 %327 to double*
  store double %332, double* %333
  br label %block_400ac3

block_400af2:                                     ; preds = %block_400adc
  %334 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %335 = load i64, i64* %PC
  %336 = add i64 %335, 8
  store i64 %336, i64* %PC
  %337 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401040__rodata_type* @seg_401040__rodata to i64), i64 40) to double*)
  %338 = bitcast i8* %334 to double*
  store double %337, double* %338, align 1, !tbaa !2452
  %339 = getelementptr inbounds i8, i8* %334, i64 8
  %340 = bitcast i8* %339 to double*
  store double 0.000000e+00, double* %340, align 1, !tbaa !2452
  %341 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %342 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %343 = load i64, i64* %RBP
  %344 = sub i64 %343, 32
  %345 = load i64, i64* %PC
  %346 = add i64 %345, 5
  store i64 %346, i64* %PC
  %347 = bitcast i8* %342 to double*
  %348 = load double, double* %347, align 1
  %349 = getelementptr inbounds i8, i8* %342, i64 8
  %350 = bitcast i8* %349 to i64*
  %351 = load i64, i64* %350, align 1
  %352 = inttoptr i64 %344 to double*
  %353 = load double, double* %352
  %354 = fadd double %348, %353
  %355 = bitcast i8* %341 to double*
  store double %354, double* %355, align 1, !tbaa !2452
  %356 = getelementptr inbounds i8, i8* %341, i64 8
  %357 = bitcast i8* %356 to i64*
  store i64 %351, i64* %357, align 1, !tbaa !2452
  %358 = load i64, i64* %RBP
  %359 = sub i64 %358, 32
  %360 = bitcast %union.vec128_t* %XMM0 to i8*
  %361 = load i64, i64* %PC
  %362 = add i64 %361, 5
  store i64 %362, i64* %PC
  %363 = bitcast i8* %360 to double*
  %364 = load double, double* %363, align 1
  %365 = inttoptr i64 %359 to double*
  store double %364, double* %365
  %366 = load i64, i64* %RBP
  %367 = sub i64 %366, 4
  %368 = load i64, i64* %PC
  %369 = add i64 %368, 7
  store i64 %369, i64* %PC
  %370 = inttoptr i64 %367 to i32*
  store i32 1, i32* %370
  %371 = load i64, i64* %PC
  %372 = add i64 %371, 12
  %373 = load i64, i64* %PC
  %374 = add i64 %373, 5
  store i64 %374, i64* %PC
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %372, i64* %375, align 8, !tbaa !2428
  br label %block_400b17

block_400ad0:                                     ; preds = %block_400ac3
  %376 = sub i64 %574, 4
  %377 = load i64, i64* %PC
  %378 = add i64 %377, 7
  store i64 %378, i64* %PC
  %379 = inttoptr i64 %376 to i32*
  store i32 1, i32* %379
  %380 = load i64, i64* %PC
  %381 = add i64 %380, 64
  %382 = load i64, i64* %PC
  %383 = add i64 %382, 5
  store i64 %383, i64* %PC
  %384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %381, i64* %384, align 8, !tbaa !2428
  br label %block_400b17

block_400adc:                                     ; preds = %block_400ac3
  %385 = sub i64 %574, 16
  %386 = load i64, i64* %PC
  %387 = add i64 %386, 4
  store i64 %387, i64* %PC
  %388 = inttoptr i64 %385 to i64*
  %389 = load i64, i64* %388
  store i64 %389, i64* %RDI, align 8, !tbaa !2428
  %390 = load i64, i64* %RBP
  %391 = sub i64 %390, 24
  %392 = load i64, i64* %PC
  %393 = add i64 %392, 4
  store i64 %393, i64* %PC
  %394 = inttoptr i64 %391 to i64*
  %395 = load i64, i64* %394
  store i64 %395, i64* %RSI, align 8, !tbaa !2428
  %396 = load i64, i64* %PC
  %397 = sub i64 %396, 1460
  %398 = load i64, i64* %PC
  %399 = add i64 %398, 5
  %400 = load i64, i64* %PC
  %401 = add i64 %400, 5
  store i64 %401, i64* %PC
  %402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %403 = load i64, i64* %402, align 8, !tbaa !2428
  %404 = add i64 %403, -8
  %405 = inttoptr i64 %404 to i64*
  store i64 %399, i64* %405
  store i64 %404, i64* %402, align 8, !tbaa !2428
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %397, i64* %406, align 8, !tbaa !2428
  %407 = load i64, i64* %PC
  %408 = call %struct.Memory* @ext_6073d0_strcmp(%struct.State* %0, i64 %407, %struct.Memory* %MEMORY.1)
  %409 = load i32, i32* %EAX
  %410 = zext i32 %409 to i64
  %411 = load i64, i64* %PC
  %412 = add i64 %411, 3
  store i64 %412, i64* %PC
  %413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %413, align 1, !tbaa !2432
  %414 = and i32 %409, 255
  %415 = call i32 @llvm.ctpop.i32(i32 %414) #16
  %416 = trunc i32 %415 to i8
  %417 = and i8 %416, 1
  %418 = xor i8 %417, 1
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %418, i8* %419, align 1, !tbaa !2446
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %420, align 1, !tbaa !2447
  %421 = icmp eq i32 %409, 0
  %422 = zext i1 %421 to i8
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %422, i8* %423, align 1, !tbaa !2448
  %424 = lshr i32 %409, 31
  %425 = trunc i32 %424 to i8
  %426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %425, i8* %426, align 1, !tbaa !2449
  %427 = lshr i32 %409, 31
  %428 = xor i32 %424, %427
  %429 = add nuw nsw i32 %428, %427
  %430 = icmp eq i32 %429, 2
  %431 = zext i1 %430 to i8
  %432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %431, i8* %432, align 1, !tbaa !2450
  %433 = load i64, i64* %PC
  %434 = add i64 %433, 36
  %435 = load i64, i64* %PC
  %436 = add i64 %435, 6
  %437 = load i64, i64* %PC
  %438 = add i64 %437, 6
  store i64 %438, i64* %PC
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %440 = load i8, i8* %439, align 1, !tbaa !2448
  %441 = icmp ne i8 %440, 0
  %442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %443 = load i8, i8* %442, align 1, !tbaa !2449
  %444 = icmp ne i8 %443, 0
  %445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %446 = load i8, i8* %445, align 1, !tbaa !2450
  %447 = icmp ne i8 %446, 0
  %448 = xor i1 %444, %447
  %449 = or i1 %441, %448
  %450 = zext i1 %449 to i8
  store i8 %450, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %452 = select i1 %449, i64 %434, i64 %436
  store i64 %452, i64* %451, align 8, !tbaa !2428
  %453 = load i8, i8* %BRANCH_TAKEN
  %454 = icmp eq i8 %453, 1
  br i1 %454, label %block_400b10, label %block_400af2

block_400aa9:                                     ; preds = %block_400a9c
  %455 = load i64, i64* %RBP
  %456 = sub i64 %455, 33
  %457 = load i64, i64* %PC
  %458 = add i64 %457, 4
  store i64 %458, i64* %PC
  %459 = inttoptr i64 %456 to i8*
  %460 = load i8, i8* %459
  %461 = sext i8 %460 to i64
  %462 = and i64 %461, 4294967295
  store i64 %462, i64* %RAX, align 8, !tbaa !2428
  %463 = load i32, i32* %EAX
  %464 = zext i32 %463 to i64
  %465 = load i64, i64* %PC
  %466 = add i64 %465, 3
  store i64 %466, i64* %PC
  %467 = sub i32 %463, 90
  %468 = icmp ult i32 %463, 90
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
  %477 = xor i64 90, %464
  %478 = trunc i64 %477 to i32
  %479 = xor i32 %478, %467
  %480 = lshr i32 %479, 4
  %481 = trunc i32 %480 to i8
  %482 = and i8 %481, 1
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %482, i8* %483, align 1, !tbaa !2447
  %484 = icmp eq i32 %467, 0
  %485 = zext i1 %484 to i8
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %485, i8* %486, align 1, !tbaa !2448
  %487 = lshr i32 %467, 31
  %488 = trunc i32 %487 to i8
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %488, i8* %489, align 1, !tbaa !2449
  %490 = lshr i32 %463, 31
  %491 = xor i32 %487, %490
  %492 = add nuw nsw i32 %491, %490
  %493 = icmp eq i32 %492, 2
  %494 = zext i1 %493 to i8
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %494, i8* %495, align 1, !tbaa !2450
  %496 = load i64, i64* %PC
  %497 = add i64 %496, 19
  %498 = load i64, i64* %PC
  %499 = add i64 %498, 6
  %500 = load i64, i64* %PC
  %501 = add i64 %500, 6
  store i64 %501, i64* %PC
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %503 = load i8, i8* %502, align 1, !tbaa !2448
  %504 = icmp eq i8 %503, 0
  %505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %506 = load i8, i8* %505, align 1, !tbaa !2449
  %507 = icmp ne i8 %506, 0
  %508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %509 = load i8, i8* %508, align 1, !tbaa !2450
  %510 = icmp ne i8 %509, 0
  %511 = xor i1 %507, %510
  %512 = xor i1 %511, true
  %513 = and i1 %504, %512
  %514 = zext i1 %513 to i8
  store i8 %514, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %516 = select i1 %513, i64 %497, i64 %499
  store i64 %516, i64* %515, align 8, !tbaa !2428
  %517 = load i8, i8* %BRANCH_TAKEN
  %518 = icmp eq i8 %517, 1
  br i1 %518, label %block_400ac3, label %block_400ab6

block_400ac3:                                     ; preds = %block_400a9c, %block_400aa9, %block_400ab6
  %MEMORY.1 = phi %struct.Memory* [ %679, %block_400a9c ], [ %679, %block_400aa9 ], [ %679, %block_400ab6 ]
  %519 = load i64, i64* %RBP
  %520 = sub i64 %519, 33
  %521 = load i64, i64* %PC
  %522 = add i64 %521, 4
  store i64 %522, i64* %PC
  %523 = inttoptr i64 %520 to i8*
  %524 = load i8, i8* %523
  %525 = sext i8 %524 to i64
  %526 = and i64 %525, 4294967295
  store i64 %526, i64* %RAX, align 8, !tbaa !2428
  %527 = load i32, i32* %EAX
  %528 = zext i32 %527 to i64
  %529 = load i64, i64* %PC
  %530 = add i64 %529, 3
  store i64 %530, i64* %PC
  %531 = sub i32 %527, 88
  %532 = icmp ult i32 %527, 88
  %533 = zext i1 %532 to i8
  %534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %533, i8* %534, align 1, !tbaa !2432
  %535 = and i32 %531, 255
  %536 = call i32 @llvm.ctpop.i32(i32 %535) #16
  %537 = trunc i32 %536 to i8
  %538 = and i8 %537, 1
  %539 = xor i8 %538, 1
  %540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %539, i8* %540, align 1, !tbaa !2446
  %541 = xor i64 88, %528
  %542 = trunc i64 %541 to i32
  %543 = xor i32 %542, %531
  %544 = lshr i32 %543, 4
  %545 = trunc i32 %544 to i8
  %546 = and i8 %545, 1
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %546, i8* %547, align 1, !tbaa !2447
  %548 = icmp eq i32 %531, 0
  %549 = zext i1 %548 to i8
  %550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %549, i8* %550, align 1, !tbaa !2448
  %551 = lshr i32 %531, 31
  %552 = trunc i32 %551 to i8
  %553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %552, i8* %553, align 1, !tbaa !2449
  %554 = lshr i32 %527, 31
  %555 = xor i32 %551, %554
  %556 = add nuw nsw i32 %555, %554
  %557 = icmp eq i32 %556, 2
  %558 = zext i1 %557 to i8
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %558, i8* %559, align 1, !tbaa !2450
  %560 = load i64, i64* %PC
  %561 = add i64 %560, 18
  %562 = load i64, i64* %PC
  %563 = add i64 %562, 6
  %564 = load i64, i64* %PC
  %565 = add i64 %564, 6
  store i64 %565, i64* %PC
  %566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %567 = load i8, i8* %566, align 1, !tbaa !2448
  %568 = icmp eq i8 %567, 0
  %569 = zext i1 %568 to i8
  store i8 %569, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %571 = select i1 %568, i64 %561, i64 %563
  store i64 %571, i64* %570, align 8, !tbaa !2428
  %572 = load i8, i8* %BRANCH_TAKEN
  %573 = icmp eq i8 %572, 1
  %574 = load i64, i64* %RBP
  br i1 %573, label %block_400adc, label %block_400ad0

block_400a9c:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %575 = sub i64 %693, 33
  %576 = load i64, i64* %PC
  %577 = add i64 %576, 4
  store i64 %577, i64* %PC
  %578 = inttoptr i64 %575 to i8*
  %579 = load i8, i8* %578
  %580 = sext i8 %579 to i64
  %581 = and i64 %580, 4294967295
  store i64 %581, i64* %RAX, align 8, !tbaa !2428
  %582 = load i32, i32* %EAX
  %583 = zext i32 %582 to i64
  %584 = load i64, i64* %PC
  %585 = add i64 %584, 3
  store i64 %585, i64* %PC
  %586 = sub i32 %582, 87
  %587 = icmp ult i32 %582, 87
  %588 = zext i1 %587 to i8
  %589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %588, i8* %589, align 1, !tbaa !2432
  %590 = and i32 %586, 255
  %591 = call i32 @llvm.ctpop.i32(i32 %590) #16
  %592 = trunc i32 %591 to i8
  %593 = and i8 %592, 1
  %594 = xor i8 %593, 1
  %595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %594, i8* %595, align 1, !tbaa !2446
  %596 = xor i64 87, %583
  %597 = trunc i64 %596 to i32
  %598 = xor i32 %597, %586
  %599 = lshr i32 %598, 4
  %600 = trunc i32 %599 to i8
  %601 = and i8 %600, 1
  %602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %601, i8* %602, align 1, !tbaa !2447
  %603 = icmp eq i32 %586, 0
  %604 = zext i1 %603 to i8
  %605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %604, i8* %605, align 1, !tbaa !2448
  %606 = lshr i32 %586, 31
  %607 = trunc i32 %606 to i8
  %608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %607, i8* %608, align 1, !tbaa !2449
  %609 = lshr i32 %582, 31
  %610 = xor i32 %606, %609
  %611 = add nuw nsw i32 %610, %609
  %612 = icmp eq i32 %611, 2
  %613 = zext i1 %612 to i8
  %614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %613, i8* %614, align 1, !tbaa !2450
  %615 = load i64, i64* %PC
  %616 = add i64 %615, 32
  %617 = load i64, i64* %PC
  %618 = add i64 %617, 6
  %619 = load i64, i64* %PC
  %620 = add i64 %619, 6
  store i64 %620, i64* %PC
  %621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %622 = load i8, i8* %621, align 1, !tbaa !2449
  %623 = icmp ne i8 %622, 0
  %624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %625 = load i8, i8* %624, align 1, !tbaa !2450
  %626 = icmp ne i8 %625, 0
  %627 = xor i1 %623, %626
  %628 = zext i1 %627 to i8
  store i8 %628, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %630 = select i1 %627, i64 %616, i64 %618
  store i64 %630, i64* %629, align 8, !tbaa !2428
  %631 = load i8, i8* %BRANCH_TAKEN
  %632 = icmp eq i8 %631, 1
  br i1 %632, label %block_400ac3, label %block_400aa9

block_400a3d:                                     ; preds = %block_400a97, %block_400a20
  %MEMORY.2 = phi %struct.Memory* [ %2, %block_400a20 ], [ %MEMORY.3, %block_400a97 ]
  %633 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %634 = load i64, i64* %PC
  %635 = add i64 %634, 8
  store i64 %635, i64* %PC
  %636 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401040__rodata_type* @seg_401040__rodata to i64), i64 48) to double*)
  %637 = bitcast i8* %633 to double*
  store double %636, double* %637, align 1, !tbaa !2452
  %638 = getelementptr inbounds i8, i8* %633, i64 8
  %639 = bitcast i8* %638 to double*
  store double 0.000000e+00, double* %639, align 1, !tbaa !2452
  %640 = bitcast %union.vec128_t* %XMM0 to i8*
  %641 = load i64, i64* %RBP
  %642 = sub i64 %641, 32
  %643 = load i64, i64* %PC
  %644 = add i64 %643, 5
  store i64 %644, i64* %PC
  %645 = bitcast i8* %640 to double*
  %646 = load double, double* %645, align 1
  %647 = inttoptr i64 %642 to double*
  %648 = load double, double* %647
  %649 = fcmp uno double %646, %648
  br i1 %649, label %650, label %662

; <label>:650:                                    ; preds = %block_400a3d
  %651 = fadd double %646, %648
  %652 = bitcast double %651 to i64
  %653 = and i64 %652, 9221120237041090560
  %654 = icmp eq i64 %653, 9218868437227405312
  %655 = and i64 %652, 2251799813685247
  %656 = icmp ne i64 %655, 0
  %657 = and i1 %654, %656
  br i1 %657, label %658, label %668

; <label>:658:                                    ; preds = %650
  %659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %660 = load i64, i64* %659, align 8, !tbaa !2428
  %661 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %660, %struct.Memory* %MEMORY.2) #17
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:662:                                    ; preds = %block_400a3d
  %663 = fcmp ogt double %646, %648
  br i1 %663, label %668, label %664

; <label>:664:                                    ; preds = %662
  %665 = fcmp olt double %646, %648
  br i1 %665, label %668, label %666

; <label>:666:                                    ; preds = %664
  %667 = fcmp oeq double %646, %648
  br i1 %667, label %668, label %675

; <label>:668:                                    ; preds = %666, %664, %662, %650
  %669 = phi i8 [ 0, %662 ], [ 0, %664 ], [ 1, %666 ], [ 1, %650 ]
  %670 = phi i8 [ 0, %662 ], [ 0, %664 ], [ 0, %666 ], [ 1, %650 ]
  %671 = phi i8 [ 0, %662 ], [ 1, %664 ], [ 0, %666 ], [ 1, %650 ]
  %672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %669, i8* %672, align 1, !tbaa !2451
  %673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %670, i8* %673, align 1, !tbaa !2451
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %671, i8* %674, align 1, !tbaa !2451
  br label %675

; <label>:675:                                    ; preds = %668, %666
  %676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %676, align 1, !tbaa !2451
  %677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %677, align 1, !tbaa !2451
  %678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %678, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %658, %675
  %679 = phi %struct.Memory* [ %661, %658 ], [ %MEMORY.2, %675 ]
  %680 = load i64, i64* %PC
  %681 = add i64 %680, 82
  %682 = load i64, i64* %PC
  %683 = add i64 %682, 6
  %684 = load i64, i64* %PC
  %685 = add i64 %684, 6
  store i64 %685, i64* %PC
  %686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %687 = load i8, i8* %686, align 1, !tbaa !2432
  store i8 %687, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %689 = icmp ne i8 %687, 0
  %690 = select i1 %689, i64 %681, i64 %683
  store i64 %690, i64* %688, align 8, !tbaa !2428
  %691 = load i8, i8* %BRANCH_TAKEN
  %692 = icmp eq i8 %691, 1
  %693 = load i64, i64* %RBP
  br i1 %692, label %block_400a9c, label %block_400a50

block_400a81:                                     ; preds = %block_400a50
  %694 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %695 = load i64, i64* %PC
  %696 = add i64 %695, 8
  store i64 %696, i64* %PC
  %697 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401040__rodata_type* @seg_401040__rodata to i64), i64 48) to double*)
  %698 = bitcast i8* %694 to double*
  store double %697, double* %698, align 1, !tbaa !2452
  %699 = getelementptr inbounds i8, i8* %694, i64 8
  %700 = bitcast i8* %699 to double*
  store double 0.000000e+00, double* %700, align 1, !tbaa !2452
  %701 = load i64, i64* %RBP
  %702 = sub i64 %701, 33
  %703 = load i64, i64* %PC
  %704 = add i64 %703, 4
  store i64 %704, i64* %PC
  %705 = inttoptr i64 %702 to i8*
  store i8 65, i8* %705
  %706 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %707 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %708 = load i64, i64* %RBP
  %709 = sub i64 %708, 32
  %710 = load i64, i64* %PC
  %711 = add i64 %710, 5
  store i64 %711, i64* %PC
  %712 = bitcast i8* %707 to double*
  %713 = load double, double* %712, align 1
  %714 = getelementptr inbounds i8, i8* %707, i64 8
  %715 = bitcast i8* %714 to i64*
  %716 = load i64, i64* %715, align 1
  %717 = inttoptr i64 %709 to double*
  %718 = load double, double* %717
  %719 = fadd double %713, %718
  %720 = bitcast i8* %706 to double*
  store double %719, double* %720, align 1, !tbaa !2452
  %721 = getelementptr inbounds i8, i8* %706, i64 8
  %722 = bitcast i8* %721 to i64*
  store i64 %716, i64* %722, align 1, !tbaa !2452
  %723 = load i64, i64* %RBP
  %724 = sub i64 %723, 32
  %725 = bitcast %union.vec128_t* %XMM0 to i8*
  %726 = load i64, i64* %PC
  %727 = add i64 %726, 5
  store i64 %727, i64* %PC
  %728 = bitcast i8* %725 to double*
  %729 = load double, double* %728, align 1
  %730 = inttoptr i64 %724 to double*
  store double %729, double* %730
  br label %block_400a97

block_400a97:                                     ; preds = %block_400a81, %block_400a50
  %MEMORY.3 = phi %struct.Memory* [ %280, %block_400a50 ], [ %280, %block_400a81 ]
  %731 = load i64, i64* %PC
  %732 = sub i64 %731, 90
  %733 = load i64, i64* %PC
  %734 = add i64 %733, 5
  store i64 %734, i64* %PC
  %735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %732, i64* %735, align 8, !tbaa !2428
  br label %block_400a3d
}

; Function Attrs: noinline
declare void @__mcsema_attach_call() #13

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400630_frame_dummy() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400630;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @1, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_400630_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400630_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400600___do_global_dtors_aux() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400600;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @3, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_400600___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400600___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_401030___libc_csu_fini() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x401030;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @4, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_401030___libc_csu_fini_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_401030___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400fc0___libc_csu_init() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400fc0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @5, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_400fc0___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400fc0___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @main() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400640;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @6, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400640_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_607398___libc_start_main(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6073b8_clock(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 ()* @clock to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6073b0_strcpy(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @strcpy to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6073a8_malloc(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_400520_printf(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6073d0_strcmp(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @Func3() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400f00;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @7, void ()** @2)
  ret void
}

define internal %struct.Memory* @Func3_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400f00_Func3(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @Proc2() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400e80;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @8, void ()** @2)
  ret void
}

define internal %struct.Memory* @Proc2_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400e80_Proc2(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @Proc4() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4009e0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @9, void ()** @2)
  ret void
}

define internal %struct.Memory* @Proc4_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_4009e0_Proc4(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @Func2() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400a20;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @10, void ()** @2)
  ret void
}

define internal %struct.Memory* @Func2_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400a20_Func2(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @Proc5() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4009c0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @11, void ()** @2)
  ret void
}

define internal %struct.Memory* @Proc5_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_4009c0_Proc5(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @Proc3() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400f40;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @12, void ()** @2)
  ret void
}

define internal %struct.Memory* @Proc3_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400f40_Proc3(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @Proc7() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400b20;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @13, void ()** @2)
  ret void
}

define internal %struct.Memory* @Proc7_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400b20_Proc7(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @Proc0() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400690;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @14, void ()** @2)
  ret void
}

define internal %struct.Memory* @Proc0_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400690_Proc0(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @Func1() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400d20;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @15, void ()** @2)
  ret void
}

define internal %struct.Memory* @Func1_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400d20_Func1(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @Proc6() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400d70;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @16, void ()** @2)
  ret void
}

define internal %struct.Memory* @Proc6_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400d70_Proc6(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.init_proc() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4004d0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @17, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_4004d0__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.term_proc() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x401034;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @18, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_401034__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @Proc8() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400b60;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @19, void ()** @2)
  ret void
}

define internal %struct.Memory* @Proc8_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400b60_Proc8(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @Proc1() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400cd0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @20, void ()** @2)
  ret void
}

define internal %struct.Memory* @Proc1_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400cd0_Proc1(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

define internal void @__mcsema_destructor() {
  call void @callback_sub_401030___libc_csu_fini()
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
  call void @callback_sub_400fc0___libc_csu_init()
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
