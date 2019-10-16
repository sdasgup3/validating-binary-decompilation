; ModuleID = '../binary/test.mcsema.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_4005e8__init_type = type <{ [23 x i8] }>
%seg_400600__plt_type = type <{ [160 x i8] }>
%seg_4006a0__text_type = type <{ [2546 x i8] }>
%seg_401094__fini_type = type <{ [9 x i8] }>
%seg_4010a0__rodata_type = type <{ [44 x i8], [30 x i8], [31 x i8], [43 x i8], [75 x i8], [32 x i8] }>
%seg_4011a0__eh_frame_hdr_type = type <{ [92 x i8] }>
%seg_401200__eh_frame_type = type <{ [368 x i8] }>
%seg_601df0__init_array_type = type <{ i64, i64 }>
%seg_601ff0__got_type = type <{ i64, i64 }>
%seg_602000__got_plt_type = type <{ [24 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64 }>
%seg_602060__data_type = type <{ [16 x i8] }>
%__bss_start_type = type <{ [4 x i8] }>
%reg_len_type = type <{ [4 x i8] }>
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
@seg_4005e8__init = internal constant %seg_4005e8__init_type <{ [23 x i8] c"H\83\EC\08H\8B\05\05\1A \00H\85\C0t\02\FF\D0H\83\C4\08\C3" }>
@seg_400600__plt = internal constant %seg_400600__plt_type <{ [160 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF%\02\1A \00\00\00\00\00\00\00\00\00\00\00\FF%\FA\19 \00\00\00\00\00\00\00\00\00\00\00\FF%\F2\19 \00\00\00\00\00\00\00\00\00\00\00\FF%\EA\19 \00\00\00\00\00\00\00\00\00\00\00\FF%\E2\19 \00\00\00\00\00\00\00\00\00\00\00\FF%\DA\19 \00\00\00\00\00\00\00\00\00\00\00\FF%\D2\19 \00\00\00\00\00\00\00\00\00\00\00\FF%\CA\19 \00\00\00\00\00\00\00\00\00\00\00\FF%\C2\19 \00\00\00\00\00\00\00\00\00\00\00" }>
@seg_4006a0__text = internal constant %seg_4006a0__text_type <{ [2546 x i8] c"1\EDI\89\D1^H\89\E2H\83\E4\F0PTI\C7\C0\90\10@\00H\C7\C1 \10@\00H\C7\C7\90\07@\00\FF\15&\19 \00\F4\0F\1FD\00\00\F3\C3f.\0F\1F\84\00\00\00\00\00\0F\1F@\00U\B8p `\00H=p `\00H\89\E5t\17\B8\00\00\00\00H\85\C0t\0D]\BFp `\00\FF\E0\0F\1FD\00\00]\C3f\0F\1FD\00\00\BEp `\00UH\81\EEp `\00H\89\E5H\C1\FE\03H\89\F0H\C1\E8?H\01\C6H\D1\FEt\15\B8\00\00\00\00H\85\C0t\0B]\BFp `\00\FF\E0\0F\1F\00]\C3f\0F\1FD\00\00\80=\19\19 \00\00u\17UH\89\E5\E8~\FF\FF\FF\C6\05\07\19 \00\01]\C3\0F\1FD\00\00\F3\C3\0F\1F@\00f.\0F\1F\84\00\00\00\00\00UH\89\E5]\EB\89f\0F\1F\84\00\00\00\00\00UH\89\E5SH\81\EC\F8\00\00\00\F2\0F\10\05\04\09\00\00\C7E\F4\00\00\00\00\89}\F0H\89u\E8\C7E\D4\0A\00\00\00\C7\04%t `\00\0A\00\00\00\F2\0F\11E\C0\C7E\D0\A0\86\01\00\83}\F0\06\0F\8E \00\00\00H\8D\BDP\FF\FF\FFH\8BE\E8H\8Bp0\E82\FE\FF\FFH\89\85@\FF\FF\FF\E9H\00\00\00\C7E\C8\01\00\00\00\8BE\C8;\04%t `\00\0F\8D\1A\00\00\00HcE\C8\C6\84\05P\FF\FF\FF0\8BE\C8\83\C0\01\89E\C8\E9\D6\FF\FF\FF\C6\85P\FF\FF\FF1Hc\04%t `\00\C6\84\05P\FF\FF\FF\00\83}\F0\07\0F\8E+\00\00\00H\BE\C8\10@\00\00\00\00\00H\8D\95J\FF\FF\FFH\8BE\E8H\8Bx8\B0\00\E8\14\FE\FF\FF\89\85<\FF\FF\FF\E9\09\00\00\00f\C7\85J\FF\FF\FF\01\00\83}\F0\08\0F\8E2\00\00\00H\BE\C8\10@\00\00\00\00\00H\8D\85J\FF\FF\FFH\8BM\E8H\8By@H\83\C0\02H\89\C2\B0\00\E8\CF\FD\FF\FF\89\858\FF\FF\FF\E9\09\00\00\00f\C7\85L\FF\FF\FF\00\00\83}\F0\09\0F\8E2\00\00\00H\BE\C8\10@\00\00\00\00\00H\8D\85J\FF\FF\FFH\8BM\E8H\8ByHH\83\C0\04H\89\C2\B0\00\E8\8A\FD\FF\FF\89\854\FF\FF\FF\E9\09\00\00\00f\C7\85N\FF\FF\FF\00\00\83<%t `\00d\0F\8E(\00\00\00H\BF\CC\10@\00\00\00\00\00\BEd\00\00\00\B0\00\E8\12\FD\FF\FF\C7E\F4\02\00\00\00\89\850\FF\FF\FF\E9\F3\01\00\00\F2\0F\10\05h\07\00\00\F2\0F\10M\C0f\0F.\C8\0F\87\0E\00\00\00\0FW\C0f\0F.E\C0\0F\86#\00\00\00H\BF\EA\10@\00\00\00\00\00\B0\00\E8\CA\FC\FF\FF\C7E\F4\03\00\00\00\89\85,\FF\FF\FF\E9\AB\01\00\00H\8D\BDP\FF\FF\FF\E8\9C\FC\FF\FFHc<%t `\00H9\F8\0F\84#\00\00\00H\BF\09\11@\00\00\00\00\00\B0\00\E8\8A\FC\FF\FF\C7E\F4\04\00\00\00\89\85(\FF\FF\FF\E9k\01\00\00H\8D\BDJ\FF\FF\FF\E8\8C\FC\FF\FFH\8D}\D8H\89\85 \FF\FF\FF\E8\5C\01\00\00\C7E\CC\00\00\00\00\83}\D4\00\0F\84M\00\00\00\C7E\C8\00\00\00\00\8BE\C8;E\D0\0F\8D5\00\00\00H\8D}\D8\E8\CF\01\00\00H\8Du\D8H\8D\95P\FF\FF\FF\8B}\D4\F2\0F\10E\C0\E8\F7\01\00\00\03E\CC\89E\CC\8BE\C8\83\C0\01\89E\C8\E9\BF\FF\FF\FF\E9o\00\00\00H\8D}\D8\E8\95\01\00\00\BF\10'\00\00H\8Du\D8H\8D\95P\FF\FF\FF\F2\0F\10E\C0\E8\BB\01\00\00\C7E\C8\00\00\00\00\89\85\1C\FF\FF\FF\8BE\C8;E\D0\0F\8D.\00\00\00\BF\01\00\00\00H\8Du\D8H\8D\95P\FF\FF\FF\F2\0F\10E\C0\E8\88\01\00\00\03E\CC\89E\CC\8BE\C8\83\C0\01\89E\C8\E9\C6\FF\FF\FF\E9\00\00\00\00H\BF4\11@\00\00\00\00\00\B0\00\E8~\FB\FF\FFH\BF\7F\11@\00\00\00\00\00L\8D\85P\FF\FF\FF\8B4%t `\00\8BU\D4\F2\0F\10E\C0\8BM\D0D\0F\B7\8DJ\FF\FF\FFD\0F\B7\95L\FF\FF\FFD\0F\B7\9DN\FF\FF\FF\8B]\D0+]\CC\F2\0F*\CB\F2\0F*U\D0\F2\0F^\CAD\89\14$D\89\5C$\08\89\85\18\FF\FF\FF\B0\02\E8\1A\FB\FF\FF\C7E\F4\00\00\00\00\89\85\14\FF\FF\FF\8BE\F4H\81\C4\F8\00\00\00[]\C3UH\89\E5H\83\EC 1\F6\B8\10\00\00\00\89\C2H\89}\F8H\8B}\F8\E8\F2\FA\FF\FFH\8BU\F8H\89U\E0\C7E\F4\00\00\00\00\8BE\F4\8B\0C%t `\00\83\C1\019\C8\0F\8DW\00\00\00\B8\10\00\00\00\89\C7\E8\E2\FA\FF\FFH\89E\E8H\8BE\E8\C7\00\01\00\00\00H\8BE\E8\C7@\04\01\00\00\00H\8BE\E8H\C7@\08\00\00\00\00H\8BE\E8H\8B}\E0H\89G\08H\8BE\E0H\8B@\08H\89E\E0\8BE\F4\83\C0\01\89E\F4\E9\94\FF\FF\FFH\83\C4 ]\C3\90UH\89\E5H\89}\F8H\8BE\F8H\83x\08\00\0F\84\1E\00\00\00H\8BE\F8\8B\08H\8BE\F8\89H\04H\8BE\F8H\8B@\08H\89E\F8\E9\D3\FF\FF\FF]\C3f\0F\1F\84\00\00\00\00\00UH\89\E5H\81\EC\80\00\00\00\B8\1F\00\00\00\89}\FCH\89u\F0\F2\0F\11E\E8H\89U\E0\C7E\D4\00\00\00\00\8B<%t `\00\83\EF\01\89E\A4\89\F8\99\8B}\A4\F7\FF\89E\C4\8B\04%t `\00\83\E8\01\99\F7\FF\89U\C8H\8Bu\F0H\89u\D8\C7E\C0\00\00\00\00\8BE\C0;E\FC\0F\8D\EE\02\00\00\C7E\D0\00\00\00\00\C7E\CC\00\00\00\00\C7E\BC\00\00\00\00\8BE\BC;E\C4\0F\8D\0A\01\00\00\E8\E0\F9\FF\FFH\89E\B0\C7E\B8\00\00\00\00\83}\B8\1F\0F\8D\DD\00\00\00H\8BE\E0kM\BC\1F\03M\B8Hc\D1\0F\BE\0C\10\83\F91\0F\85\19\00\00\00H\8BE\D8\8B\08\03M\D0\89M\D0H\8BE\D8\8BH\04\03M\CC\89M\CCH\8BE\D8H\8B@\08Hc\00H\03E\B0H\83\E0\01\89\C1H\8BE\D8\89\08\E8w\F9\FF\FF\F2\0F\10\05\9F\03\00\00\B9\E8\03\00\00\89\CAH\89U\98H\99H\8Bu\98H\F7\FE\F2H\0F*\CA\F2\0F^\C8\F2\0F\11M\A8\F2\0F\10E\E8f\0F.E\A8\0F\86\0C\00\00\00H\8BE\B0H\83\F0\01H\89E\B0H\8BE\D8H\8B@\08Hc@\04H\03E\B0H\83\E0\01\89\C1H\8BE\D8\89H\04H\8BE\D8H\8B@\08H\89E\D8H\8BE\B0H\C1\F8\01H\89E\B0\8BE\B8\83\C0\01\89E\B8\E9\19\FF\FF\FF\E9\00\00\00\00\8BE\BC\83\C0\01\89E\BC\E9\EA\FE\FF\FF\E8\D6\F8\FF\FFH\89E\B0\C7E\B8\00\00\00\00\8BE\B8;E\C8\0F\8D\DD\00\00\00H\8BE\E0kM\C4\1F\03M\B8Hc\D1\0F\BE\0C\10\83\F91\0F\85\19\00\00\00H\8BE\D8\8B\08\03M\D0\89M\D0H\8BE\D8\8BH\04\03M\CC\89M\CCH\8BE\D8H\8B@\08Hc\00H\03E\B0H\83\E0\01\89\C1H\8BE\D8\89\08\E8k\F8\FF\FF\F2\0F\10\05\93\02\00\00\B9\E8\03\00\00\89\CAH\89U\90H\99H\8Bu\90H\F7\FE\F2H\0F*\CA\F2\0F^\C8\F2\0F\11M\A8\F2\0F\10E\E8f\0F.E\A8\0F\86\0C\00\00\00H\8BE\B0H\83\F0\01H\89E\B0H\8BE\D8H\8B@\08Hc@\04H\03E\B0H\83\E0\01\89\C1H\8BE\D8\89H\04H\8BE\D8H\8B@\08H\89E\D8H\8BE\B0H\C1\F8\01H\89E\B0\8BE\B8\83\C0\01\89E\B8\E9\17\FF\FF\FF\E8\DD\F7\FF\FFH\89E\B0H\8BE\E0\8B\0C%t `\00\83\E9\01Hc\D1\0F\BE\0C\10\83\F91\0F\85\19\00\00\00H\8BE\D8\8B\08\03M\D0\89M\D0H\8BE\D8\8BH\04\03M\CC\89M\CCHcE\D0H\03E\B0H\83\E0\01\89\C1H\8BE\D8\89\08\E8\89\F7\FF\FF\F2\0F\10\05\A9\01\00\00\B9\10'\00\00\89\CAH\89U\88H\99H\8Bu\88H\F7\FE\F2H\0F*\CA\F2\0F^\C8\F2\0F\11M\A8\F2\0F\10E\E8f\0F.E\A8\0F\86\0C\00\00\00H\8BE\B0H\83\F0\01H\89E\B0HcE\CCH\03E\B0H\83\E0\01\89\C1H\8BE\D8\89H\04H\8BE\F0H\89E\D8\8BE\C0\83\C0\01\89E\C0\E9\06\FD\FF\FF\C7E\BC\00\00\00\00\8BE\BC;\04%t `\00\0F\8D4\00\00\00H\8BE\D8\8B\08H\8BE\D8;H\04\0F\84\07\00\00\00\C7E\D4\01\00\00\00H\8BE\D8H\8B@\08H\89E\D8\8BE\BC\83\C0\01\89E\BC\E9\BC\FF\FF\FF\8BE\D4H\81\C4\80\00\00\00]\C3\90UH\89\E5H\83\EC\10H\89}\F8H\83}\F8\00\0F\84%\00\00\00H\8BE\F8H\8B@\08H\89E\F0H\8BE\F8H\89\C7\E8\11\F6\FF\FFH\8BE\F0H\89E\F8\E9\D0\FF\FF\FFH\83\C4\10]\C3f.\0F\1F\84\00\00\00\00\00\0F\1F@\00AWAVI\89\D7AUATL\8D%\BE\0D \00UH\8D-\BE\0D \00SA\89\FDI\89\F6L)\E5H\83\EC\08H\C1\FD\03\E8\97\F5\FF\FFH\85\EDt 1\DB\0F\1F\84\00\00\00\00\00L\89\FAL\89\F6D\89\EFA\FF\14\DCH\83\C3\01H9\DDu\EAH\83\C4\08[]A\5CA]A^A_\C3\90f.\0F\1F\84\00\00\00\00\00\F3\C3" }>
@seg_401094__fini = internal constant %seg_401094__fini_type <{ [9 x i8] c"H\83\EC\08H\83\C4\08\C3" }>
@seg_4010a0__rodata = internal constant %seg_4010a0__rodata_type <{ [44 x i8] c"\01\00\02\00\00\00\00\00\00\00\00\00\00\00\D0?\00\00\00\00\00\00\F0?\00\00\00\00\00\88\C3@\00\00\00\00\00@\8F@%hu\00", [30 x i8] c"Register too long; Max. = %d\0A\00", [31 x i8] c"Prob. out of range 0=<Prob>=1\0A\00", [43 x i8] c"Structure does not match Register length:\0A\00", [75 x i8] c"reg_len\09#_vect\09prob      #_tms\09struct\09seed1\09seed2\09seed3\09Prob same output\0A \00", [32 x i8] c"%d\09%d\09%.3e %d\09%s\09%d\09%d\09%d\09%.8e\0A\00" }>
@seg_4011a0__eh_frame_hdr = internal constant %seg_4011a0__eh_frame_hdr_type <{ [92 x i8] c"\01\1B\03;\5C\00\00\00\0A\00\00\00`\F4\FF\FF\B8\00\00\00\00\F5\FF\FFx\00\00\000\F5\FF\FF\A4\00\00\00\F0\F5\FF\FF\E0\00\00\00\A0\F9\FF\FF\FC\00\00\00@\FA\FF\FF\18\01\00\00\80\FA\FF\FF4\01\00\000\FE\FF\FFP\01\00\00\80\FE\FF\FFp\01\00\00\F0\FE\FF\FF\B8\01\00\00" }>
@seg_401200__eh_frame = internal constant %seg_401200__eh_frame_type <{ [368 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00\80\F4\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00\84\F4\FF\FF\02\00\00\00\00\00\00\00$\00\00\000\00\00\00\A0\F3\FF\FF\A0\00\00\00\00\0E\10F\0E\18J\0F\0Bw\08\80\00?\1A;*3$\22\00\00\00\00\18\00\00\00X\00\00\00\08\F5\FF\FF\B0\03\00\00\00A\0E\10\86\02C\0D\06H\83\03\18\00\00\00t\00\00\00\9C\F8\FF\FF\9F\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\90\00\00\00 \F9\FF\FF7\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\AC\00\00\00D\F9\FF\FF\AF\03\00\00\00A\0E\10\86\02C\0D\06\00\00\00\1C\00\00\00\C8\00\00\00\D8\FC\FF\FFB\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00D\00\00\00\E8\00\00\00\08\FD\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\000\01\00\000\FD\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@seg_601df0__init_array = internal global %seg_601df0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_400780_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_400750___do_global_dtors_aux to i64) }>
@seg_601ff0__got = internal global %seg_601ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@seg_602000__got_plt = internal global %seg_602000__got_plt_type <{ [24 x i8] zeroinitializer, i64 ptrtoint (i64 (i64)* @free to i64), i64 ptrtoint (i64 (i64, i64)* @strcpy to i64), i64 ptrtoint (i64 (i64)* @strlen to i64), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), i64 ptrtoint (i64 (i64)* @seed48 to i64), i64 ptrtoint (i64 (i64)* @malloc to i64), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @__isoc99_sscanf to i64), i64 ptrtoint (i64 ()* @lrand48 to i64) }>
@seg_602060__data = internal global %seg_602060__data_type zeroinitializer
@__bss_start = global %__bss_start_type zeroinitializer
@reg_len = global %reg_len_type zeroinitializer
@0 = internal global i1 false
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400780_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400750___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401090___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401020___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @simulate_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@10 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @create_link_list_wrapper
@11 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @init_wrapper
@12 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @kill_list_wrapper
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
declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @seed48(i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @free(i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__isoc99_sscanf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @memset(i64, i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @lrand48() #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @strcpy(i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @strlen(i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @malloc(i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #13

; Function Attrs: noinline
define %struct.Memory* @sub_4006a0__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4006a0:
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
  store i8 %52, i8* %53, align 1, !tbaa !2447
  %54 = lshr i32 %42, 31
  %55 = trunc i32 %54 to i8
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %55, i8* %56, align 1, !tbaa !2448
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %57, align 1, !tbaa !2449
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %58, align 1, !tbaa !2450
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
  store i8 %85, i8* %86, align 1, !tbaa !2447
  %87 = lshr i64 %75, 63
  %88 = trunc i64 %87 to i8
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %88, i8* %89, align 1, !tbaa !2448
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %90, align 1, !tbaa !2449
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %91, align 1, !tbaa !2450
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
  store i64 ptrtoint (void ()* @callback_sub_401090___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  %108 = load i64, i64* %PC
  %109 = add i64 %108, 7
  store i64 %109, i64* %PC
  store i64 ptrtoint (void ()* @callback_sub_401020___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
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
  %123 = call %struct.Memory* @ext_6020a0___libc_start_main(%struct.State* %0, i64 %122, %struct.Memory* %2)
  %124 = load i64, i64* %PC
  %125 = add i64 %124, 1
  store i64 %125, i64* %PC
  %126 = load i64, i64* %PC
  %127 = tail call %struct.Memory* @__remill_error(%struct.State* %0, i64 %126, %struct.Memory* %123)
  ret %struct.Memory* %127
}

; Function Attrs: noinline
define %struct.Memory* @sub_401094__term_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_401094:
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
  store i8 %27, i8* %28, align 1, !tbaa !2450
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
  store i8 %61, i8* %62, align 1, !tbaa !2450
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
  %79 = load i64, i64* %78, align 8, !tbaa !2428
  %80 = inttoptr i64 %79 to i64*
  %81 = load i64, i64* %80
  store i64 %81, i64* %77, align 8, !tbaa !2428
  %82 = add i64 %79, 8
  store i64 %82, i64* %78, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_400780_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  %35 = tail call %struct.Memory* @sub_400710_register_tm_clones(%struct.State* %0, i64 %34, %struct.Memory* %2)
  ret %struct.Memory* %35
}

; Function Attrs: noinline
define %struct.Memory* @sub_400c20_simulate(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  %57 = load i64, i64* %RSP
  %58 = load i64, i64* %PC
  %59 = add i64 %58, 7
  store i64 %59, i64* %PC
  %60 = sub i64 %57, 128
  store i64 %60, i64* %RSP, align 8, !tbaa !2428
  %61 = icmp ult i64 %57, 128
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
  %71 = xor i64 128, %57
  %72 = xor i64 %71, %60
  %73 = lshr i64 %72, 4
  %74 = trunc i64 %73 to i8
  %75 = and i8 %74, 1
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %75, i8* %76, align 1, !tbaa !2450
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
  %89 = load i64, i64* %PC
  %90 = add i64 %89, 5
  store i64 %90, i64* %PC
  store i64 31, i64* %RAX, align 8, !tbaa !2428
  %91 = load i64, i64* %RBP
  %92 = sub i64 %91, 4
  %93 = load i32, i32* %EDI
  %94 = zext i32 %93 to i64
  %95 = load i64, i64* %PC
  %96 = add i64 %95, 3
  store i64 %96, i64* %PC
  %97 = inttoptr i64 %92 to i32*
  store i32 %93, i32* %97
  %98 = load i64, i64* %RBP
  %99 = sub i64 %98, 16
  %100 = load i64, i64* %RSI
  %101 = load i64, i64* %PC
  %102 = add i64 %101, 4
  store i64 %102, i64* %PC
  %103 = inttoptr i64 %99 to i64*
  store i64 %100, i64* %103
  %104 = load i64, i64* %RBP
  %105 = sub i64 %104, 24
  %106 = bitcast %union.vec128_t* %XMM0 to i8*
  %107 = load i64, i64* %PC
  %108 = add i64 %107, 5
  store i64 %108, i64* %PC
  %109 = bitcast i8* %106 to double*
  %110 = load double, double* %109, align 1
  %111 = inttoptr i64 %105 to double*
  store double %110, double* %111
  %112 = load i64, i64* %RBP
  %113 = sub i64 %112, 32
  %114 = load i64, i64* %RDX
  %115 = load i64, i64* %PC
  %116 = add i64 %115, 4
  store i64 %116, i64* %PC
  %117 = inttoptr i64 %113 to i64*
  store i64 %114, i64* %117
  %118 = load i64, i64* %RBP
  %119 = sub i64 %118, 44
  %120 = load i64, i64* %PC
  %121 = add i64 %120, 7
  store i64 %121, i64* %PC
  %122 = inttoptr i64 %119 to i32*
  store i32 0, i32* %122
  %123 = load i64, i64* %PC
  %124 = add i64 %123, 7
  store i64 %124, i64* %PC
  %125 = load i32, i32* bitcast (%reg_len_type* @reg_len to i32*)
  %126 = zext i32 %125 to i64
  store i64 %126, i64* %RDI, align 8, !tbaa !2428
  %127 = load i64, i64* %RDI
  %128 = load i64, i64* %PC
  %129 = add i64 %128, 3
  store i64 %129, i64* %PC
  %130 = trunc i64 %127 to i32
  %131 = sub i32 %130, 1
  %132 = zext i32 %131 to i64
  store i64 %132, i64* %RDI, align 8, !tbaa !2428
  %133 = icmp ult i32 %130, 1
  %134 = zext i1 %133 to i8
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %134, i8* %135, align 1, !tbaa !2432
  %136 = and i32 %131, 255
  %137 = call i32 @llvm.ctpop.i32(i32 %136) #16
  %138 = trunc i32 %137 to i8
  %139 = and i8 %138, 1
  %140 = xor i8 %139, 1
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %140, i8* %141, align 1, !tbaa !2446
  %142 = xor i64 1, %127
  %143 = trunc i64 %142 to i32
  %144 = xor i32 %143, %131
  %145 = lshr i32 %144, 4
  %146 = trunc i32 %145 to i8
  %147 = and i8 %146, 1
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %147, i8* %148, align 1, !tbaa !2450
  %149 = icmp eq i32 %131, 0
  %150 = zext i1 %149 to i8
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %150, i8* %151, align 1, !tbaa !2447
  %152 = lshr i32 %131, 31
  %153 = trunc i32 %152 to i8
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %153, i8* %154, align 1, !tbaa !2448
  %155 = lshr i32 %130, 31
  %156 = xor i32 %152, %155
  %157 = add nuw nsw i32 %156, %155
  %158 = icmp eq i32 %157, 2
  %159 = zext i1 %158 to i8
  %160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %159, i8* %160, align 1, !tbaa !2449
  %161 = load i64, i64* %RBP
  %162 = sub i64 %161, 92
  %163 = load i32, i32* %EAX
  %164 = zext i32 %163 to i64
  %165 = load i64, i64* %PC
  %166 = add i64 %165, 3
  store i64 %166, i64* %PC
  %167 = inttoptr i64 %162 to i32*
  store i32 %163, i32* %167
  %168 = load i32, i32* %EDI
  %169 = zext i32 %168 to i64
  %170 = load i64, i64* %PC
  %171 = add i64 %170, 2
  store i64 %171, i64* %PC
  %172 = and i64 %169, 4294967295
  store i64 %172, i64* %RAX, align 8, !tbaa !2428
  %173 = load i64, i64* %PC
  %174 = add i64 %173, 1
  store i64 %174, i64* %PC
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %177 = bitcast %union.anon* %176 to i32*
  %178 = load i32, i32* %177, align 8, !tbaa !2451
  %179 = sext i32 %178 to i64
  %180 = lshr i64 %179, 32
  store i64 %180, i64* %175, align 8, !tbaa !2428
  %181 = load i64, i64* %RBP
  %182 = sub i64 %181, 92
  %183 = load i64, i64* %PC
  %184 = add i64 %183, 3
  store i64 %184, i64* %PC
  %185 = inttoptr i64 %182 to i32*
  %186 = load i32, i32* %185
  %187 = zext i32 %186 to i64
  store i64 %187, i64* %RDI, align 8, !tbaa !2428
  %188 = load i32, i32* %EDI
  %189 = zext i32 %188 to i64
  %190 = load i64, i64* %PC
  %191 = add i64 %190, 2
  store i64 %191, i64* %PC
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %193 = bitcast %union.anon* %192 to i32*
  %194 = load i32, i32* %193, align 8, !tbaa !2451
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %197 = bitcast %union.anon* %196 to i32*
  %198 = load i32, i32* %197, align 8, !tbaa !2451
  %199 = zext i32 %198 to i64
  %200 = shl i64 %189, 32
  %201 = ashr exact i64 %200, 32
  %202 = shl nuw i64 %199, 32
  %203 = or i64 %202, %195
  %204 = sdiv i64 %203, %201
  %205 = shl i64 %204, 32
  %206 = ashr exact i64 %205, 32
  %207 = icmp eq i64 %204, %206
  br i1 %207, label %212, label %208

; <label>:208:                                    ; preds = %block_400c20
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %210 = load i64, i64* %209, align 8, !tbaa !2428
  %211 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %210, %struct.Memory* %2) #17
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit5

; <label>:212:                                    ; preds = %block_400c20
  %213 = srem i64 %203, %201
  %214 = getelementptr inbounds %union.anon, %union.anon* %192, i64 0, i32 0
  %215 = and i64 %204, 4294967295
  store i64 %215, i64* %214, align 8, !tbaa !2428
  %216 = getelementptr inbounds %union.anon, %union.anon* %196, i64 0, i32 0
  %217 = and i64 %213, 4294967295
  store i64 %217, i64* %216, align 8, !tbaa !2428
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %218, align 1, !tbaa !2432
  %219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %219, align 1, !tbaa !2446
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %220, align 1, !tbaa !2450
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %221, align 1, !tbaa !2447
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %222, align 1, !tbaa !2448
  %223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %223, align 1, !tbaa !2449
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit5

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit5: ; preds = %208, %212
  %224 = phi %struct.Memory* [ %211, %208 ], [ %2, %212 ]
  %225 = load i64, i64* %RBP
  %226 = sub i64 %225, 60
  %227 = load i32, i32* %EAX
  %228 = zext i32 %227 to i64
  %229 = load i64, i64* %PC
  %230 = add i64 %229, 3
  store i64 %230, i64* %PC
  %231 = inttoptr i64 %226 to i32*
  store i32 %227, i32* %231
  %232 = load i64, i64* %PC
  %233 = add i64 %232, 7
  store i64 %233, i64* %PC
  %234 = load i32, i32* bitcast (%reg_len_type* @reg_len to i32*)
  %235 = zext i32 %234 to i64
  store i64 %235, i64* %RAX, align 8, !tbaa !2428
  %236 = load i64, i64* %RAX
  %237 = load i64, i64* %PC
  %238 = add i64 %237, 3
  store i64 %238, i64* %PC
  %239 = trunc i64 %236 to i32
  %240 = sub i32 %239, 1
  %241 = zext i32 %240 to i64
  store i64 %241, i64* %RAX, align 8, !tbaa !2428
  %242 = icmp ult i32 %239, 1
  %243 = zext i1 %242 to i8
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %243, i8* %244, align 1, !tbaa !2432
  %245 = and i32 %240, 255
  %246 = call i32 @llvm.ctpop.i32(i32 %245) #16
  %247 = trunc i32 %246 to i8
  %248 = and i8 %247, 1
  %249 = xor i8 %248, 1
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %249, i8* %250, align 1, !tbaa !2446
  %251 = xor i64 1, %236
  %252 = trunc i64 %251 to i32
  %253 = xor i32 %252, %240
  %254 = lshr i32 %253, 4
  %255 = trunc i32 %254 to i8
  %256 = and i8 %255, 1
  %257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %256, i8* %257, align 1, !tbaa !2450
  %258 = icmp eq i32 %240, 0
  %259 = zext i1 %258 to i8
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %259, i8* %260, align 1, !tbaa !2447
  %261 = lshr i32 %240, 31
  %262 = trunc i32 %261 to i8
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %262, i8* %263, align 1, !tbaa !2448
  %264 = lshr i32 %239, 31
  %265 = xor i32 %261, %264
  %266 = add nuw nsw i32 %265, %264
  %267 = icmp eq i32 %266, 2
  %268 = zext i1 %267 to i8
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %268, i8* %269, align 1, !tbaa !2449
  %270 = load i64, i64* %PC
  %271 = add i64 %270, 1
  store i64 %271, i64* %PC
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %274 = bitcast %union.anon* %273 to i32*
  %275 = load i32, i32* %274, align 8, !tbaa !2451
  %276 = sext i32 %275 to i64
  %277 = lshr i64 %276, 32
  store i64 %277, i64* %272, align 8, !tbaa !2428
  %278 = load i32, i32* %EDI
  %279 = zext i32 %278 to i64
  %280 = load i64, i64* %PC
  %281 = add i64 %280, 2
  store i64 %281, i64* %PC
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %283 = bitcast %union.anon* %282 to i32*
  %284 = load i32, i32* %283, align 8, !tbaa !2451
  %285 = zext i32 %284 to i64
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %287 = bitcast %union.anon* %286 to i32*
  %288 = load i32, i32* %287, align 8, !tbaa !2451
  %289 = zext i32 %288 to i64
  %290 = shl i64 %279, 32
  %291 = ashr exact i64 %290, 32
  %292 = shl nuw i64 %289, 32
  %293 = or i64 %292, %285
  %294 = sdiv i64 %293, %291
  %295 = shl i64 %294, 32
  %296 = ashr exact i64 %295, 32
  %297 = icmp eq i64 %294, %296
  br i1 %297, label %302, label %298

; <label>:298:                                    ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit5
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %300 = load i64, i64* %299, align 8, !tbaa !2428
  %301 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %300, %struct.Memory* %224) #17
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:302:                                    ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit5
  %303 = srem i64 %293, %291
  %304 = getelementptr inbounds %union.anon, %union.anon* %282, i64 0, i32 0
  %305 = and i64 %294, 4294967295
  store i64 %305, i64* %304, align 8, !tbaa !2428
  %306 = getelementptr inbounds %union.anon, %union.anon* %286, i64 0, i32 0
  %307 = and i64 %303, 4294967295
  store i64 %307, i64* %306, align 8, !tbaa !2428
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %308, align 1, !tbaa !2432
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %309, align 1, !tbaa !2446
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %310, align 1, !tbaa !2450
  %311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %311, align 1, !tbaa !2447
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %312, align 1, !tbaa !2448
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %313, align 1, !tbaa !2449
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %298, %302
  %314 = phi %struct.Memory* [ %301, %298 ], [ %224, %302 ]
  %315 = load i64, i64* %RBP
  %316 = sub i64 %315, 56
  %317 = load i32, i32* %EDX
  %318 = zext i32 %317 to i64
  %319 = load i64, i64* %PC
  %320 = add i64 %319, 3
  store i64 %320, i64* %PC
  %321 = inttoptr i64 %316 to i32*
  store i32 %317, i32* %321
  %322 = load i64, i64* %RBP
  %323 = sub i64 %322, 16
  %324 = load i64, i64* %PC
  %325 = add i64 %324, 4
  store i64 %325, i64* %PC
  %326 = inttoptr i64 %323 to i64*
  %327 = load i64, i64* %326
  store i64 %327, i64* %RSI, align 8, !tbaa !2428
  %328 = load i64, i64* %RBP
  %329 = sub i64 %328, 40
  %330 = load i64, i64* %RSI
  %331 = load i64, i64* %PC
  %332 = add i64 %331, 4
  store i64 %332, i64* %PC
  %333 = inttoptr i64 %329 to i64*
  store i64 %330, i64* %333
  %334 = load i64, i64* %RBP
  %335 = sub i64 %334, 64
  %336 = load i64, i64* %PC
  %337 = add i64 %336, 7
  store i64 %337, i64* %PC
  %338 = inttoptr i64 %335 to i32*
  store i32 0, i32* %338
  br label %block_400c7e

block_400fa2:                                     ; preds = %block_400f8f
  %339 = load i64, i64* %RBP
  %340 = sub i64 %339, 44
  %341 = load i64, i64* %PC
  %342 = add i64 %341, 7
  store i64 %342, i64* %PC
  %343 = inttoptr i64 %340 to i32*
  store i32 1, i32* %343
  br label %block_400fa9

block_400f7f:                                     ; preds = %block_400fa9, %block_400f78
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.3, %block_400f78 ], [ %MEMORY.7, %block_400fa9 ]
  %344 = load i64, i64* %RBP
  %345 = sub i64 %344, 68
  %346 = load i64, i64* %PC
  %347 = add i64 %346, 3
  store i64 %347, i64* %PC
  %348 = inttoptr i64 %345 to i32*
  %349 = load i32, i32* %348
  %350 = zext i32 %349 to i64
  store i64 %350, i64* %RAX, align 8, !tbaa !2428
  %351 = load i32, i32* %EAX
  %352 = zext i32 %351 to i64
  %353 = load i64, i64* %PC
  %354 = add i64 %353, 7
  store i64 %354, i64* %PC
  %355 = load i32, i32* bitcast (%reg_len_type* @reg_len to i32*)
  %356 = sub i32 %351, %355
  %357 = icmp ult i32 %351, %355
  %358 = zext i1 %357 to i8
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %358, i8* %359, align 1, !tbaa !2432
  %360 = and i32 %356, 255
  %361 = call i32 @llvm.ctpop.i32(i32 %360) #16
  %362 = trunc i32 %361 to i8
  %363 = and i8 %362, 1
  %364 = xor i8 %363, 1
  %365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %364, i8* %365, align 1, !tbaa !2446
  %366 = xor i32 %355, %351
  %367 = xor i32 %366, %356
  %368 = lshr i32 %367, 4
  %369 = trunc i32 %368 to i8
  %370 = and i8 %369, 1
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %370, i8* %371, align 1, !tbaa !2450
  %372 = icmp eq i32 %356, 0
  %373 = zext i1 %372 to i8
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %373, i8* %374, align 1, !tbaa !2447
  %375 = lshr i32 %356, 31
  %376 = trunc i32 %375 to i8
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %376, i8* %377, align 1, !tbaa !2448
  %378 = lshr i32 %351, 31
  %379 = lshr i32 %355, 31
  %380 = xor i32 %379, %378
  %381 = xor i32 %375, %378
  %382 = add nuw nsw i32 %381, %380
  %383 = icmp eq i32 %382, 2
  %384 = zext i1 %383 to i8
  %385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %384, i8* %385, align 1, !tbaa !2449
  %386 = load i64, i64* %PC
  %387 = add i64 %386, 58
  %388 = load i64, i64* %PC
  %389 = add i64 %388, 6
  %390 = load i64, i64* %PC
  %391 = add i64 %390, 6
  store i64 %391, i64* %PC
  %392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %393 = load i8, i8* %392, align 1, !tbaa !2448
  %394 = icmp ne i8 %393, 0
  %395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %396 = load i8, i8* %395, align 1, !tbaa !2449
  %397 = icmp ne i8 %396, 0
  %398 = xor i1 %394, %397
  %399 = xor i1 %398, true
  %400 = zext i1 %399 to i8
  store i8 %400, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %402 = select i1 %398, i64 %389, i64 %387
  store i64 %402, i64* %401, align 8, !tbaa !2428
  %403 = load i8, i8* %BRANCH_TAKEN
  %404 = icmp eq i8 %403, 1
  %405 = load i64, i64* %RBP
  br i1 %404, label %block_400fc3, label %block_400f8f

block_400f78:                                     ; preds = %block_400c7e
  %406 = sub i64 %908, 68
  %407 = load i64, i64* %PC
  %408 = add i64 %407, 7
  store i64 %408, i64* %PC
  %409 = inttoptr i64 %406 to i32*
  store i32 0, i32* %409
  br label %block_400f7f

block_400eee:                                     ; preds = %block_400eae, %block_400ed5
  %MEMORY.1 = phi %struct.Memory* [ %1768, %block_400eae ], [ %1768, %block_400ed5 ]
  %410 = load i64, i64* %RBP
  %411 = sub i64 %410, 48
  %412 = load i64, i64* %PC
  %413 = add i64 %412, 4
  store i64 %413, i64* %PC
  %414 = inttoptr i64 %411 to i32*
  %415 = load i32, i32* %414
  %416 = sext i32 %415 to i64
  store i64 %416, i64* %RAX, align 8, !tbaa !2428
  %417 = load i64, i64* %RAX
  %418 = load i64, i64* %RBP
  %419 = sub i64 %418, 80
  %420 = load i64, i64* %PC
  %421 = add i64 %420, 4
  store i64 %421, i64* %PC
  %422 = inttoptr i64 %419 to i64*
  %423 = load i64, i64* %422
  %424 = add i64 %423, %417
  store i64 %424, i64* %RAX, align 8, !tbaa !2428
  %425 = icmp ult i64 %424, %417
  %426 = icmp ult i64 %424, %423
  %427 = or i1 %425, %426
  %428 = zext i1 %427 to i8
  %429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %428, i8* %429, align 1, !tbaa !2432
  %430 = trunc i64 %424 to i32
  %431 = and i32 %430, 255
  %432 = call i32 @llvm.ctpop.i32(i32 %431) #16
  %433 = trunc i32 %432 to i8
  %434 = and i8 %433, 1
  %435 = xor i8 %434, 1
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %435, i8* %436, align 1, !tbaa !2446
  %437 = xor i64 %423, %417
  %438 = xor i64 %437, %424
  %439 = lshr i64 %438, 4
  %440 = trunc i64 %439 to i8
  %441 = and i8 %440, 1
  %442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %441, i8* %442, align 1, !tbaa !2450
  %443 = icmp eq i64 %424, 0
  %444 = zext i1 %443 to i8
  %445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %444, i8* %445, align 1, !tbaa !2447
  %446 = lshr i64 %424, 63
  %447 = trunc i64 %446 to i8
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %447, i8* %448, align 1, !tbaa !2448
  %449 = lshr i64 %417, 63
  %450 = lshr i64 %423, 63
  %451 = xor i64 %446, %449
  %452 = xor i64 %446, %450
  %453 = add nuw nsw i64 %451, %452
  %454 = icmp eq i64 %453, 2
  %455 = zext i1 %454 to i8
  %456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %455, i8* %456, align 1, !tbaa !2449
  %457 = load i64, i64* %RAX
  %458 = load i64, i64* %PC
  %459 = add i64 %458, 4
  store i64 %459, i64* %PC
  %460 = and i64 1, %457
  store i64 %460, i64* %RAX, align 8, !tbaa !2428
  %461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %461, align 1, !tbaa !2432
  %462 = trunc i64 %460 to i32
  %463 = and i32 %462, 255
  %464 = call i32 @llvm.ctpop.i32(i32 %463) #16
  %465 = trunc i32 %464 to i8
  %466 = and i8 %465, 1
  %467 = xor i8 %466, 1
  %468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %467, i8* %468, align 1, !tbaa !2446
  %469 = icmp eq i64 %460, 0
  %470 = zext i1 %469 to i8
  %471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %470, i8* %471, align 1, !tbaa !2447
  %472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %472, align 1, !tbaa !2448
  %473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %473, align 1, !tbaa !2449
  %474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %474, align 1, !tbaa !2450
  %475 = load i32, i32* %EAX
  %476 = zext i32 %475 to i64
  %477 = load i64, i64* %PC
  %478 = add i64 %477, 2
  store i64 %478, i64* %PC
  %479 = and i64 %476, 4294967295
  store i64 %479, i64* %RCX, align 8, !tbaa !2428
  %480 = load i64, i64* %RBP
  %481 = sub i64 %480, 40
  %482 = load i64, i64* %PC
  %483 = add i64 %482, 4
  store i64 %483, i64* %PC
  %484 = inttoptr i64 %481 to i64*
  %485 = load i64, i64* %484
  store i64 %485, i64* %RAX, align 8, !tbaa !2428
  %486 = load i64, i64* %RAX
  %487 = load i32, i32* %ECX
  %488 = zext i32 %487 to i64
  %489 = load i64, i64* %PC
  %490 = add i64 %489, 2
  store i64 %490, i64* %PC
  %491 = inttoptr i64 %486 to i32*
  store i32 %487, i32* %491
  %492 = load i64, i64* %PC
  %493 = sub i64 %492, 2162
  %494 = load i64, i64* %PC
  %495 = add i64 %494, 5
  %496 = load i64, i64* %PC
  %497 = add i64 %496, 5
  store i64 %497, i64* %PC
  %498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %499 = load i64, i64* %498, align 8, !tbaa !2428
  %500 = add i64 %499, -8
  %501 = inttoptr i64 %500 to i64*
  store i64 %495, i64* %501
  store i64 %500, i64* %498, align 8, !tbaa !2428
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %493, i64* %502, align 8, !tbaa !2428
  %503 = load i64, i64* %PC
  %504 = call %struct.Memory* @ext_602110_lrand48(%struct.State* %0, i64 %503, %struct.Memory* %MEMORY.1)
  %505 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %506 = load i64, i64* %PC
  %507 = add i64 %506, 8
  store i64 %507, i64* %PC
  %508 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4010a0__rodata_type* @seg_4010a0__rodata to i64), i64 24) to double*)
  %509 = bitcast i8* %505 to double*
  store double %508, double* %509, align 1, !tbaa !2453
  %510 = getelementptr inbounds i8, i8* %505, i64 8
  %511 = bitcast i8* %510 to double*
  store double 0.000000e+00, double* %511, align 1, !tbaa !2453
  %512 = load i64, i64* %PC
  %513 = add i64 %512, 5
  store i64 %513, i64* %PC
  store i64 10000, i64* %RCX, align 8, !tbaa !2428
  %514 = load i32, i32* %ECX
  %515 = zext i32 %514 to i64
  %516 = load i64, i64* %PC
  %517 = add i64 %516, 2
  store i64 %517, i64* %PC
  %518 = and i64 %515, 4294967295
  store i64 %518, i64* %RDX, align 8, !tbaa !2428
  %519 = load i64, i64* %RBP
  %520 = sub i64 %519, 120
  %521 = load i64, i64* %RDX
  %522 = load i64, i64* %PC
  %523 = add i64 %522, 4
  store i64 %523, i64* %PC
  %524 = inttoptr i64 %520 to i64*
  store i64 %521, i64* %524
  %525 = load i64, i64* %PC
  %526 = add i64 %525, 2
  store i64 %526, i64* %PC
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %529 = load i64, i64* %528, align 8, !tbaa !2428
  %530 = ashr i64 %529, 63
  store i64 %530, i64* %527, align 8, !tbaa !2428
  %531 = load i64, i64* %RBP
  %532 = sub i64 %531, 120
  %533 = load i64, i64* %PC
  %534 = add i64 %533, 4
  store i64 %534, i64* %PC
  %535 = inttoptr i64 %532 to i64*
  %536 = load i64, i64* %535
  store i64 %536, i64* %RSI, align 8, !tbaa !2428
  %537 = load i64, i64* %RSI
  %538 = load i64, i64* %PC
  %539 = add i64 %538, 3
  store i64 %539, i64* %PC
  %540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %541 = load i64, i64* %540, align 8, !tbaa !2428
  %542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %543 = load i64, i64* %542, align 8, !tbaa !2428
  %544 = sext i64 %537 to i128
  %545 = and i128 %544, -18446744073709551616
  %546 = zext i64 %543 to i128
  %547 = shl nuw i128 %546, 64
  %548 = zext i64 %541 to i128
  %549 = or i128 %547, %548
  %550 = zext i64 %537 to i128
  %551 = or i128 %545, %550
  %552 = sdiv i128 %549, %551
  %553 = trunc i128 %552 to i64
  %554 = and i128 %552, 18446744073709551615
  %555 = sext i64 %553 to i128
  %556 = and i128 %555, -18446744073709551616
  %557 = or i128 %556, %554
  %558 = icmp eq i128 %552, %557
  br i1 %558, label %563, label %559

; <label>:559:                                    ; preds = %block_400eee
  %560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %561 = load i64, i64* %560, align 8, !tbaa !2428
  %562 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %561, %struct.Memory* %504) #17
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit4

; <label>:563:                                    ; preds = %block_400eee
  %564 = srem i128 %549, %551
  %565 = trunc i128 %564 to i64
  store i64 %553, i64* %540, align 8, !tbaa !2428
  store i64 %565, i64* %542, align 8, !tbaa !2428
  %566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %566, align 1, !tbaa !2432
  %567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %567, align 1, !tbaa !2446
  %568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %568, align 1, !tbaa !2450
  %569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %569, align 1, !tbaa !2447
  %570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %570, align 1, !tbaa !2448
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %571, align 1, !tbaa !2449
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit4

_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit4: ; preds = %559, %563
  %572 = phi %struct.Memory* [ %562, %559 ], [ %504, %563 ]
  %573 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %574 = load i64, i64* %RDX
  %575 = load i64, i64* %PC
  %576 = add i64 %575, 5
  store i64 %576, i64* %PC
  %577 = sitofp i64 %574 to double
  %578 = bitcast i8* %573 to double*
  store double %577, double* %578, align 1, !tbaa !2453
  %579 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %580 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %581 = bitcast %union.vec128_t* %XMM0 to i8*
  %582 = load i64, i64* %PC
  %583 = add i64 %582, 4
  store i64 %583, i64* %PC
  %584 = bitcast i8* %580 to double*
  %585 = load double, double* %584, align 1
  %586 = getelementptr inbounds i8, i8* %580, i64 8
  %587 = bitcast i8* %586 to i64*
  %588 = load i64, i64* %587, align 1
  %589 = bitcast i8* %581 to double*
  %590 = load double, double* %589, align 1
  %591 = fdiv double %585, %590
  %592 = bitcast i8* %579 to double*
  store double %591, double* %592, align 1, !tbaa !2453
  %593 = getelementptr inbounds i8, i8* %579, i64 8
  %594 = bitcast i8* %593 to i64*
  store i64 %588, i64* %594, align 1, !tbaa !2453
  %595 = load i64, i64* %RBP
  %596 = sub i64 %595, 88
  %597 = bitcast %union.vec128_t* %XMM1 to i8*
  %598 = load i64, i64* %PC
  %599 = add i64 %598, 5
  store i64 %599, i64* %PC
  %600 = bitcast i8* %597 to double*
  %601 = load double, double* %600, align 1
  %602 = inttoptr i64 %596 to double*
  store double %601, double* %602
  %603 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %604 = load i64, i64* %RBP
  %605 = sub i64 %604, 24
  %606 = load i64, i64* %PC
  %607 = add i64 %606, 5
  store i64 %607, i64* %PC
  %608 = inttoptr i64 %605 to double*
  %609 = load double, double* %608
  %610 = bitcast i8* %603 to double*
  store double %609, double* %610, align 1, !tbaa !2453
  %611 = getelementptr inbounds i8, i8* %603, i64 8
  %612 = bitcast i8* %611 to double*
  store double 0.000000e+00, double* %612, align 1, !tbaa !2453
  %613 = bitcast %union.vec128_t* %XMM0 to i8*
  %614 = load i64, i64* %RBP
  %615 = sub i64 %614, 88
  %616 = load i64, i64* %PC
  %617 = add i64 %616, 5
  store i64 %617, i64* %PC
  %618 = bitcast i8* %613 to double*
  %619 = load double, double* %618, align 1
  %620 = inttoptr i64 %615 to double*
  %621 = load double, double* %620
  %622 = fcmp uno double %619, %621
  br i1 %622, label %623, label %635

; <label>:623:                                    ; preds = %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit4
  %624 = fadd double %619, %621
  %625 = bitcast double %624 to i64
  %626 = and i64 %625, 9221120237041090560
  %627 = icmp eq i64 %626, 9218868437227405312
  %628 = and i64 %625, 2251799813685247
  %629 = icmp ne i64 %628, 0
  %630 = and i1 %627, %629
  br i1 %630, label %631, label %641

; <label>:631:                                    ; preds = %623
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %633 = load i64, i64* %632, align 8, !tbaa !2428
  %634 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %633, %struct.Memory* %572) #17
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit3

; <label>:635:                                    ; preds = %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit4
  %636 = fcmp ogt double %619, %621
  br i1 %636, label %641, label %637

; <label>:637:                                    ; preds = %635
  %638 = fcmp olt double %619, %621
  br i1 %638, label %641, label %639

; <label>:639:                                    ; preds = %637
  %640 = fcmp oeq double %619, %621
  br i1 %640, label %641, label %648

; <label>:641:                                    ; preds = %639, %637, %635, %623
  %642 = phi i8 [ 0, %635 ], [ 0, %637 ], [ 1, %639 ], [ 1, %623 ]
  %643 = phi i8 [ 0, %635 ], [ 0, %637 ], [ 0, %639 ], [ 1, %623 ]
  %644 = phi i8 [ 0, %635 ], [ 1, %637 ], [ 0, %639 ], [ 1, %623 ]
  %645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %642, i8* %645, align 1, !tbaa !2452
  %646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %643, i8* %646, align 1, !tbaa !2452
  %647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %644, i8* %647, align 1, !tbaa !2452
  br label %648

; <label>:648:                                    ; preds = %641, %639
  %649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %649, align 1, !tbaa !2452
  %650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %650, align 1, !tbaa !2452
  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %651, align 1, !tbaa !2452
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit3

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit3: ; preds = %631, %648
  %652 = phi %struct.Memory* [ %634, %631 ], [ %572, %648 ]
  %653 = load i64, i64* %PC
  %654 = add i64 %653, 18
  %655 = load i64, i64* %PC
  %656 = add i64 %655, 6
  %657 = load i64, i64* %PC
  %658 = add i64 %657, 6
  store i64 %658, i64* %PC
  %659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %660 = load i8, i8* %659, align 1, !tbaa !2432
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %662 = load i8, i8* %661, align 1, !tbaa !2447
  %663 = or i8 %662, %660
  %664 = icmp ne i8 %663, 0
  %665 = zext i1 %664 to i8
  store i8 %665, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %667 = select i1 %664, i64 %654, i64 %656
  store i64 %667, i64* %666, align 8, !tbaa !2428
  %668 = load i8, i8* %BRANCH_TAKEN
  %669 = icmp eq i8 %668, 1
  br i1 %669, label %block_400f4d, label %block_400f41

block_400cbb:                                     ; preds = %block_400cab, %block_400d5f
  %MEMORY.2 = phi %struct.Memory* [ %2347, %block_400cab ], [ %MEMORY.5, %block_400d5f ]
  %670 = load i64, i64* %RBP
  %671 = sub i64 %670, 72
  %672 = load i64, i64* %PC
  %673 = add i64 %672, 4
  store i64 %673, i64* %PC
  %674 = inttoptr i64 %671 to i32*
  %675 = load i32, i32* %674
  %676 = sub i32 %675, 31
  %677 = icmp ult i32 %675, 31
  %678 = zext i1 %677 to i8
  %679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %678, i8* %679, align 1, !tbaa !2432
  %680 = and i32 %676, 255
  %681 = call i32 @llvm.ctpop.i32(i32 %680) #16
  %682 = trunc i32 %681 to i8
  %683 = and i8 %682, 1
  %684 = xor i8 %683, 1
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %684, i8* %685, align 1, !tbaa !2446
  %686 = xor i32 %675, 31
  %687 = xor i32 %686, %676
  %688 = lshr i32 %687, 4
  %689 = trunc i32 %688 to i8
  %690 = and i8 %689, 1
  %691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %690, i8* %691, align 1, !tbaa !2450
  %692 = icmp eq i32 %676, 0
  %693 = zext i1 %692 to i8
  %694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %693, i8* %694, align 1, !tbaa !2447
  %695 = lshr i32 %676, 31
  %696 = trunc i32 %695 to i8
  %697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %696, i8* %697, align 1, !tbaa !2448
  %698 = lshr i32 %675, 31
  %699 = xor i32 %695, %698
  %700 = add nuw nsw i32 %699, %698
  %701 = icmp eq i32 %700, 2
  %702 = zext i1 %701 to i8
  %703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %702, i8* %703, align 1, !tbaa !2449
  %704 = load i64, i64* %PC
  %705 = add i64 %704, 227
  %706 = load i64, i64* %PC
  %707 = add i64 %706, 6
  %708 = load i64, i64* %PC
  %709 = add i64 %708, 6
  store i64 %709, i64* %PC
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %711 = load i8, i8* %710, align 1, !tbaa !2448
  %712 = icmp ne i8 %711, 0
  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %714 = load i8, i8* %713, align 1, !tbaa !2449
  %715 = icmp ne i8 %714, 0
  %716 = xor i1 %712, %715
  %717 = xor i1 %716, true
  %718 = zext i1 %717 to i8
  store i8 %718, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %720 = select i1 %716, i64 %707, i64 %705
  store i64 %720, i64* %719, align 8, !tbaa !2428
  %721 = load i8, i8* %BRANCH_TAKEN
  %722 = icmp eq i8 %721, 1
  br i1 %722, label %block_400da2, label %block_400cc5

block_400ce0:                                     ; preds = %block_400cc5
  %723 = load i64, i64* %RBP
  %724 = sub i64 %723, 40
  %725 = load i64, i64* %PC
  %726 = add i64 %725, 4
  store i64 %726, i64* %PC
  %727 = inttoptr i64 %724 to i64*
  %728 = load i64, i64* %727
  store i64 %728, i64* %RAX, align 8, !tbaa !2428
  %729 = load i64, i64* %RAX
  %730 = load i64, i64* %PC
  %731 = add i64 %730, 2
  store i64 %731, i64* %PC
  %732 = inttoptr i64 %729 to i32*
  %733 = load i32, i32* %732
  %734 = zext i32 %733 to i64
  store i64 %734, i64* %RCX, align 8, !tbaa !2428
  %735 = load i64, i64* %RCX
  %736 = load i64, i64* %RBP
  %737 = sub i64 %736, 48
  %738 = load i64, i64* %PC
  %739 = add i64 %738, 3
  store i64 %739, i64* %PC
  %740 = trunc i64 %735 to i32
  %741 = inttoptr i64 %737 to i32*
  %742 = load i32, i32* %741
  %743 = add i32 %742, %740
  %744 = zext i32 %743 to i64
  store i64 %744, i64* %RCX, align 8, !tbaa !2428
  %745 = icmp ult i32 %743, %740
  %746 = icmp ult i32 %743, %742
  %747 = or i1 %745, %746
  %748 = zext i1 %747 to i8
  %749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %748, i8* %749, align 1, !tbaa !2432
  %750 = and i32 %743, 255
  %751 = call i32 @llvm.ctpop.i32(i32 %750) #16
  %752 = trunc i32 %751 to i8
  %753 = and i8 %752, 1
  %754 = xor i8 %753, 1
  %755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %754, i8* %755, align 1, !tbaa !2446
  %756 = xor i32 %742, %740
  %757 = xor i32 %756, %743
  %758 = lshr i32 %757, 4
  %759 = trunc i32 %758 to i8
  %760 = and i8 %759, 1
  %761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %760, i8* %761, align 1, !tbaa !2450
  %762 = icmp eq i32 %743, 0
  %763 = zext i1 %762 to i8
  %764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %763, i8* %764, align 1, !tbaa !2447
  %765 = lshr i32 %743, 31
  %766 = trunc i32 %765 to i8
  %767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %766, i8* %767, align 1, !tbaa !2448
  %768 = lshr i32 %740, 31
  %769 = lshr i32 %742, 31
  %770 = xor i32 %765, %768
  %771 = xor i32 %765, %769
  %772 = add nuw nsw i32 %770, %771
  %773 = icmp eq i32 %772, 2
  %774 = zext i1 %773 to i8
  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %774, i8* %775, align 1, !tbaa !2449
  %776 = load i64, i64* %RBP
  %777 = sub i64 %776, 48
  %778 = load i32, i32* %ECX
  %779 = zext i32 %778 to i64
  %780 = load i64, i64* %PC
  %781 = add i64 %780, 3
  store i64 %781, i64* %PC
  %782 = inttoptr i64 %777 to i32*
  store i32 %778, i32* %782
  %783 = load i64, i64* %RBP
  %784 = sub i64 %783, 40
  %785 = load i64, i64* %PC
  %786 = add i64 %785, 4
  store i64 %786, i64* %PC
  %787 = inttoptr i64 %784 to i64*
  %788 = load i64, i64* %787
  store i64 %788, i64* %RAX, align 8, !tbaa !2428
  %789 = load i64, i64* %RAX
  %790 = add i64 %789, 4
  %791 = load i64, i64* %PC
  %792 = add i64 %791, 3
  store i64 %792, i64* %PC
  %793 = inttoptr i64 %790 to i32*
  %794 = load i32, i32* %793
  %795 = zext i32 %794 to i64
  store i64 %795, i64* %RCX, align 8, !tbaa !2428
  %796 = load i64, i64* %RCX
  %797 = load i64, i64* %RBP
  %798 = sub i64 %797, 52
  %799 = load i64, i64* %PC
  %800 = add i64 %799, 3
  store i64 %800, i64* %PC
  %801 = trunc i64 %796 to i32
  %802 = inttoptr i64 %798 to i32*
  %803 = load i32, i32* %802
  %804 = add i32 %803, %801
  %805 = zext i32 %804 to i64
  store i64 %805, i64* %RCX, align 8, !tbaa !2428
  %806 = icmp ult i32 %804, %801
  %807 = icmp ult i32 %804, %803
  %808 = or i1 %806, %807
  %809 = zext i1 %808 to i8
  %810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %809, i8* %810, align 1, !tbaa !2432
  %811 = and i32 %804, 255
  %812 = call i32 @llvm.ctpop.i32(i32 %811) #16
  %813 = trunc i32 %812 to i8
  %814 = and i8 %813, 1
  %815 = xor i8 %814, 1
  %816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %815, i8* %816, align 1, !tbaa !2446
  %817 = xor i32 %803, %801
  %818 = xor i32 %817, %804
  %819 = lshr i32 %818, 4
  %820 = trunc i32 %819 to i8
  %821 = and i8 %820, 1
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %821, i8* %822, align 1, !tbaa !2450
  %823 = icmp eq i32 %804, 0
  %824 = zext i1 %823 to i8
  %825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %824, i8* %825, align 1, !tbaa !2447
  %826 = lshr i32 %804, 31
  %827 = trunc i32 %826 to i8
  %828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %827, i8* %828, align 1, !tbaa !2448
  %829 = lshr i32 %801, 31
  %830 = lshr i32 %803, 31
  %831 = xor i32 %826, %829
  %832 = xor i32 %826, %830
  %833 = add nuw nsw i32 %831, %832
  %834 = icmp eq i32 %833, 2
  %835 = zext i1 %834 to i8
  %836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %835, i8* %836, align 1, !tbaa !2449
  %837 = load i64, i64* %RBP
  %838 = sub i64 %837, 52
  %839 = load i32, i32* %ECX
  %840 = zext i32 %839 to i64
  %841 = load i64, i64* %PC
  %842 = add i64 %841, 3
  store i64 %842, i64* %PC
  %843 = inttoptr i64 %838 to i32*
  store i32 %839, i32* %843
  br label %block_400cf9

block_400c7e:                                     ; preds = %block_400f4d, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit
  %MEMORY.3 = phi %struct.Memory* [ %314, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ], [ %MEMORY.4, %block_400f4d ]
  %844 = load i64, i64* %RBP
  %845 = sub i64 %844, 64
  %846 = load i64, i64* %PC
  %847 = add i64 %846, 3
  store i64 %847, i64* %PC
  %848 = inttoptr i64 %845 to i32*
  %849 = load i32, i32* %848
  %850 = zext i32 %849 to i64
  store i64 %850, i64* %RAX, align 8, !tbaa !2428
  %851 = load i32, i32* %EAX
  %852 = zext i32 %851 to i64
  %853 = load i64, i64* %RBP
  %854 = sub i64 %853, 4
  %855 = load i64, i64* %PC
  %856 = add i64 %855, 3
  store i64 %856, i64* %PC
  %857 = inttoptr i64 %854 to i32*
  %858 = load i32, i32* %857
  %859 = sub i32 %851, %858
  %860 = icmp ult i32 %851, %858
  %861 = zext i1 %860 to i8
  %862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %861, i8* %862, align 1, !tbaa !2432
  %863 = and i32 %859, 255
  %864 = call i32 @llvm.ctpop.i32(i32 %863) #16
  %865 = trunc i32 %864 to i8
  %866 = and i8 %865, 1
  %867 = xor i8 %866, 1
  %868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %867, i8* %868, align 1, !tbaa !2446
  %869 = xor i32 %858, %851
  %870 = xor i32 %869, %859
  %871 = lshr i32 %870, 4
  %872 = trunc i32 %871 to i8
  %873 = and i8 %872, 1
  %874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %873, i8* %874, align 1, !tbaa !2450
  %875 = icmp eq i32 %859, 0
  %876 = zext i1 %875 to i8
  %877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %876, i8* %877, align 1, !tbaa !2447
  %878 = lshr i32 %859, 31
  %879 = trunc i32 %878 to i8
  %880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %879, i8* %880, align 1, !tbaa !2448
  %881 = lshr i32 %851, 31
  %882 = lshr i32 %858, 31
  %883 = xor i32 %882, %881
  %884 = xor i32 %878, %881
  %885 = add nuw nsw i32 %884, %883
  %886 = icmp eq i32 %885, 2
  %887 = zext i1 %886 to i8
  %888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %887, i8* %888, align 1, !tbaa !2449
  %889 = load i64, i64* %PC
  %890 = add i64 %889, 756
  %891 = load i64, i64* %PC
  %892 = add i64 %891, 6
  %893 = load i64, i64* %PC
  %894 = add i64 %893, 6
  store i64 %894, i64* %PC
  %895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %896 = load i8, i8* %895, align 1, !tbaa !2448
  %897 = icmp ne i8 %896, 0
  %898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %899 = load i8, i8* %898, align 1, !tbaa !2449
  %900 = icmp ne i8 %899, 0
  %901 = xor i1 %897, %900
  %902 = xor i1 %901, true
  %903 = zext i1 %902 to i8
  store i8 %903, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %905 = select i1 %901, i64 %892, i64 %890
  store i64 %905, i64* %904, align 8, !tbaa !2428
  %906 = load i8, i8* %BRANCH_TAKEN
  %907 = icmp eq i8 %906, 1
  %908 = load i64, i64* %RBP
  br i1 %907, label %block_400f78, label %block_400c8a

block_400e5f:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %909 = load i64, i64* %RBP
  %910 = sub i64 %909, 80
  %911 = load i64, i64* %PC
  %912 = add i64 %911, 4
  store i64 %912, i64* %PC
  %913 = inttoptr i64 %910 to i64*
  %914 = load i64, i64* %913
  store i64 %914, i64* %RAX, align 8, !tbaa !2428
  %915 = load i64, i64* %RAX
  %916 = load i64, i64* %PC
  %917 = add i64 %916, 4
  store i64 %917, i64* %PC
  %918 = xor i64 1, %915
  store i64 %918, i64* %RAX, align 8, !tbaa !2428
  %919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %919, align 1, !tbaa !2432
  %920 = trunc i64 %918 to i32
  %921 = and i32 %920, 255
  %922 = call i32 @llvm.ctpop.i32(i32 %921) #16
  %923 = trunc i32 %922 to i8
  %924 = and i8 %923, 1
  %925 = xor i8 %924, 1
  %926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %925, i8* %926, align 1, !tbaa !2446
  %927 = icmp eq i64 %918, 0
  %928 = zext i1 %927 to i8
  %929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %928, i8* %929, align 1, !tbaa !2447
  %930 = lshr i64 %918, 63
  %931 = trunc i64 %930 to i8
  %932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %931, i8* %932, align 1, !tbaa !2448
  %933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %933, align 1, !tbaa !2449
  %934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %934, align 1, !tbaa !2450
  %935 = load i64, i64* %RBP
  %936 = sub i64 %935, 80
  %937 = load i64, i64* %RAX
  %938 = load i64, i64* %PC
  %939 = add i64 %938, 4
  store i64 %939, i64* %PC
  %940 = inttoptr i64 %936 to i64*
  store i64 %937, i64* %940
  br label %block_400e6b

block_400ed5:                                     ; preds = %block_400eae
  %941 = load i64, i64* %RBP
  %942 = sub i64 %941, 40
  %943 = load i64, i64* %PC
  %944 = add i64 %943, 4
  store i64 %944, i64* %PC
  %945 = inttoptr i64 %942 to i64*
  %946 = load i64, i64* %945
  store i64 %946, i64* %RAX, align 8, !tbaa !2428
  %947 = load i64, i64* %RAX
  %948 = load i64, i64* %PC
  %949 = add i64 %948, 2
  store i64 %949, i64* %PC
  %950 = inttoptr i64 %947 to i32*
  %951 = load i32, i32* %950
  %952 = zext i32 %951 to i64
  store i64 %952, i64* %RCX, align 8, !tbaa !2428
  %953 = load i64, i64* %RCX
  %954 = load i64, i64* %RBP
  %955 = sub i64 %954, 48
  %956 = load i64, i64* %PC
  %957 = add i64 %956, 3
  store i64 %957, i64* %PC
  %958 = trunc i64 %953 to i32
  %959 = inttoptr i64 %955 to i32*
  %960 = load i32, i32* %959
  %961 = add i32 %960, %958
  %962 = zext i32 %961 to i64
  store i64 %962, i64* %RCX, align 8, !tbaa !2428
  %963 = icmp ult i32 %961, %958
  %964 = icmp ult i32 %961, %960
  %965 = or i1 %963, %964
  %966 = zext i1 %965 to i8
  %967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %966, i8* %967, align 1, !tbaa !2432
  %968 = and i32 %961, 255
  %969 = call i32 @llvm.ctpop.i32(i32 %968) #16
  %970 = trunc i32 %969 to i8
  %971 = and i8 %970, 1
  %972 = xor i8 %971, 1
  %973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %972, i8* %973, align 1, !tbaa !2446
  %974 = xor i32 %960, %958
  %975 = xor i32 %974, %961
  %976 = lshr i32 %975, 4
  %977 = trunc i32 %976 to i8
  %978 = and i8 %977, 1
  %979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %978, i8* %979, align 1, !tbaa !2450
  %980 = icmp eq i32 %961, 0
  %981 = zext i1 %980 to i8
  %982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %981, i8* %982, align 1, !tbaa !2447
  %983 = lshr i32 %961, 31
  %984 = trunc i32 %983 to i8
  %985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %984, i8* %985, align 1, !tbaa !2448
  %986 = lshr i32 %958, 31
  %987 = lshr i32 %960, 31
  %988 = xor i32 %983, %986
  %989 = xor i32 %983, %987
  %990 = add nuw nsw i32 %988, %989
  %991 = icmp eq i32 %990, 2
  %992 = zext i1 %991 to i8
  %993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %992, i8* %993, align 1, !tbaa !2449
  %994 = load i64, i64* %RBP
  %995 = sub i64 %994, 48
  %996 = load i32, i32* %ECX
  %997 = zext i32 %996 to i64
  %998 = load i64, i64* %PC
  %999 = add i64 %998, 3
  store i64 %999, i64* %PC
  %1000 = inttoptr i64 %995 to i32*
  store i32 %996, i32* %1000
  %1001 = load i64, i64* %RBP
  %1002 = sub i64 %1001, 40
  %1003 = load i64, i64* %PC
  %1004 = add i64 %1003, 4
  store i64 %1004, i64* %PC
  %1005 = inttoptr i64 %1002 to i64*
  %1006 = load i64, i64* %1005
  store i64 %1006, i64* %RAX, align 8, !tbaa !2428
  %1007 = load i64, i64* %RAX
  %1008 = add i64 %1007, 4
  %1009 = load i64, i64* %PC
  %1010 = add i64 %1009, 3
  store i64 %1010, i64* %PC
  %1011 = inttoptr i64 %1008 to i32*
  %1012 = load i32, i32* %1011
  %1013 = zext i32 %1012 to i64
  store i64 %1013, i64* %RCX, align 8, !tbaa !2428
  %1014 = load i64, i64* %RCX
  %1015 = load i64, i64* %RBP
  %1016 = sub i64 %1015, 52
  %1017 = load i64, i64* %PC
  %1018 = add i64 %1017, 3
  store i64 %1018, i64* %PC
  %1019 = trunc i64 %1014 to i32
  %1020 = inttoptr i64 %1016 to i32*
  %1021 = load i32, i32* %1020
  %1022 = add i32 %1021, %1019
  %1023 = zext i32 %1022 to i64
  store i64 %1023, i64* %RCX, align 8, !tbaa !2428
  %1024 = icmp ult i32 %1022, %1019
  %1025 = icmp ult i32 %1022, %1021
  %1026 = or i1 %1024, %1025
  %1027 = zext i1 %1026 to i8
  %1028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1027, i8* %1028, align 1, !tbaa !2432
  %1029 = and i32 %1022, 255
  %1030 = call i32 @llvm.ctpop.i32(i32 %1029) #16
  %1031 = trunc i32 %1030 to i8
  %1032 = and i8 %1031, 1
  %1033 = xor i8 %1032, 1
  %1034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1033, i8* %1034, align 1, !tbaa !2446
  %1035 = xor i32 %1021, %1019
  %1036 = xor i32 %1035, %1022
  %1037 = lshr i32 %1036, 4
  %1038 = trunc i32 %1037 to i8
  %1039 = and i8 %1038, 1
  %1040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1039, i8* %1040, align 1, !tbaa !2450
  %1041 = icmp eq i32 %1022, 0
  %1042 = zext i1 %1041 to i8
  %1043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1042, i8* %1043, align 1, !tbaa !2447
  %1044 = lshr i32 %1022, 31
  %1045 = trunc i32 %1044 to i8
  %1046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1045, i8* %1046, align 1, !tbaa !2448
  %1047 = lshr i32 %1019, 31
  %1048 = lshr i32 %1021, 31
  %1049 = xor i32 %1044, %1047
  %1050 = xor i32 %1044, %1048
  %1051 = add nuw nsw i32 %1049, %1050
  %1052 = icmp eq i32 %1051, 2
  %1053 = zext i1 %1052 to i8
  %1054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1053, i8* %1054, align 1, !tbaa !2449
  %1055 = load i64, i64* %RBP
  %1056 = sub i64 %1055, 52
  %1057 = load i32, i32* %ECX
  %1058 = zext i32 %1057 to i64
  %1059 = load i64, i64* %PC
  %1060 = add i64 %1059, 3
  store i64 %1060, i64* %PC
  %1061 = inttoptr i64 %1056 to i32*
  store i32 %1057, i32* %1061
  br label %block_400eee

block_400d53:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1
  %1062 = load i64, i64* %RBP
  %1063 = sub i64 %1062, 80
  %1064 = load i64, i64* %PC
  %1065 = add i64 %1064, 4
  store i64 %1065, i64* %PC
  %1066 = inttoptr i64 %1063 to i64*
  %1067 = load i64, i64* %1066
  store i64 %1067, i64* %RAX, align 8, !tbaa !2428
  %1068 = load i64, i64* %RAX
  %1069 = load i64, i64* %PC
  %1070 = add i64 %1069, 4
  store i64 %1070, i64* %PC
  %1071 = xor i64 1, %1068
  store i64 %1071, i64* %RAX, align 8, !tbaa !2428
  %1072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1072, align 1, !tbaa !2432
  %1073 = trunc i64 %1071 to i32
  %1074 = and i32 %1073, 255
  %1075 = call i32 @llvm.ctpop.i32(i32 %1074) #16
  %1076 = trunc i32 %1075 to i8
  %1077 = and i8 %1076, 1
  %1078 = xor i8 %1077, 1
  %1079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1078, i8* %1079, align 1, !tbaa !2446
  %1080 = icmp eq i64 %1071, 0
  %1081 = zext i1 %1080 to i8
  %1082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1081, i8* %1082, align 1, !tbaa !2447
  %1083 = lshr i64 %1071, 63
  %1084 = trunc i64 %1083 to i8
  %1085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1084, i8* %1085, align 1, !tbaa !2448
  %1086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1086, align 1, !tbaa !2449
  %1087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1087, align 1, !tbaa !2450
  %1088 = load i64, i64* %RBP
  %1089 = sub i64 %1088, 80
  %1090 = load i64, i64* %RAX
  %1091 = load i64, i64* %PC
  %1092 = add i64 %1091, 4
  store i64 %1092, i64* %PC
  %1093 = inttoptr i64 %1089 to i64*
  store i64 %1090, i64* %1093
  br label %block_400d5f

block_400dd1:                                     ; preds = %block_400dc5
  %1094 = load i64, i64* %RBP
  %1095 = sub i64 %1094, 32
  %1096 = load i64, i64* %PC
  %1097 = add i64 %1096, 4
  store i64 %1097, i64* %PC
  %1098 = inttoptr i64 %1095 to i64*
  %1099 = load i64, i64* %1098
  store i64 %1099, i64* %RAX, align 8, !tbaa !2428
  %1100 = load i64, i64* %RBP
  %1101 = sub i64 %1100, 60
  %1102 = load i64, i64* %PC
  %1103 = add i64 %1102, 4
  store i64 %1103, i64* %PC
  %1104 = inttoptr i64 %1101 to i32*
  %1105 = load i32, i32* %1104
  %1106 = sext i32 %1105 to i64
  %1107 = mul nsw i64 %1106, 31
  %1108 = trunc i64 %1107 to i32
  %1109 = and i64 %1107, 4294967295
  store i64 %1109, i64* %RCX, align 8, !tbaa !2428
  %1110 = shl i64 %1107, 32
  %1111 = ashr exact i64 %1110, 32
  %1112 = icmp ne i64 %1111, %1107
  %1113 = zext i1 %1112 to i8
  %1114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1113, i8* %1114, align 1, !tbaa !2432
  %1115 = and i32 %1108, 255
  %1116 = call i32 @llvm.ctpop.i32(i32 %1115) #16
  %1117 = trunc i32 %1116 to i8
  %1118 = and i8 %1117, 1
  %1119 = xor i8 %1118, 1
  %1120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1119, i8* %1120, align 1, !tbaa !2446
  %1121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1121, align 1, !tbaa !2450
  %1122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1122, align 1, !tbaa !2447
  %1123 = lshr i32 %1108, 31
  %1124 = trunc i32 %1123 to i8
  %1125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1124, i8* %1125, align 1, !tbaa !2448
  %1126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1113, i8* %1126, align 1, !tbaa !2449
  %1127 = load i64, i64* %RCX
  %1128 = load i64, i64* %RBP
  %1129 = sub i64 %1128, 72
  %1130 = load i64, i64* %PC
  %1131 = add i64 %1130, 3
  store i64 %1131, i64* %PC
  %1132 = trunc i64 %1127 to i32
  %1133 = inttoptr i64 %1129 to i32*
  %1134 = load i32, i32* %1133
  %1135 = add i32 %1134, %1132
  %1136 = zext i32 %1135 to i64
  store i64 %1136, i64* %RCX, align 8, !tbaa !2428
  %1137 = icmp ult i32 %1135, %1132
  %1138 = icmp ult i32 %1135, %1134
  %1139 = or i1 %1137, %1138
  %1140 = zext i1 %1139 to i8
  %1141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1140, i8* %1141, align 1, !tbaa !2432
  %1142 = and i32 %1135, 255
  %1143 = call i32 @llvm.ctpop.i32(i32 %1142) #16
  %1144 = trunc i32 %1143 to i8
  %1145 = and i8 %1144, 1
  %1146 = xor i8 %1145, 1
  %1147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1146, i8* %1147, align 1, !tbaa !2446
  %1148 = xor i32 %1134, %1132
  %1149 = xor i32 %1148, %1135
  %1150 = lshr i32 %1149, 4
  %1151 = trunc i32 %1150 to i8
  %1152 = and i8 %1151, 1
  %1153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1152, i8* %1153, align 1, !tbaa !2450
  %1154 = icmp eq i32 %1135, 0
  %1155 = zext i1 %1154 to i8
  %1156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1155, i8* %1156, align 1, !tbaa !2447
  %1157 = lshr i32 %1135, 31
  %1158 = trunc i32 %1157 to i8
  %1159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1158, i8* %1159, align 1, !tbaa !2448
  %1160 = lshr i32 %1132, 31
  %1161 = lshr i32 %1134, 31
  %1162 = xor i32 %1157, %1160
  %1163 = xor i32 %1157, %1161
  %1164 = add nuw nsw i32 %1162, %1163
  %1165 = icmp eq i32 %1164, 2
  %1166 = zext i1 %1165 to i8
  %1167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1166, i8* %1167, align 1, !tbaa !2449
  %1168 = load i32, i32* %ECX
  %1169 = zext i32 %1168 to i64
  %1170 = load i64, i64* %PC
  %1171 = add i64 %1170, 3
  store i64 %1171, i64* %PC
  %1172 = shl i64 %1169, 32
  %1173 = ashr exact i64 %1172, 32
  store i64 %1173, i64* %RDX, align 8, !tbaa !2428
  %1174 = load i64, i64* %RAX
  %1175 = load i64, i64* %RDX
  %1176 = add i64 %1175, %1174
  %1177 = load i64, i64* %PC
  %1178 = add i64 %1177, 4
  store i64 %1178, i64* %PC
  %1179 = inttoptr i64 %1176 to i8*
  %1180 = load i8, i8* %1179
  %1181 = sext i8 %1180 to i64
  %1182 = and i64 %1181, 4294967295
  store i64 %1182, i64* %RCX, align 8, !tbaa !2428
  %1183 = load i32, i32* %ECX
  %1184 = zext i32 %1183 to i64
  %1185 = load i64, i64* %PC
  %1186 = add i64 %1185, 3
  store i64 %1186, i64* %PC
  %1187 = sub i32 %1183, 49
  %1188 = icmp ult i32 %1183, 49
  %1189 = zext i1 %1188 to i8
  %1190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1189, i8* %1190, align 1, !tbaa !2432
  %1191 = and i32 %1187, 255
  %1192 = call i32 @llvm.ctpop.i32(i32 %1191) #16
  %1193 = trunc i32 %1192 to i8
  %1194 = and i8 %1193, 1
  %1195 = xor i8 %1194, 1
  %1196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1195, i8* %1196, align 1, !tbaa !2446
  %1197 = xor i64 49, %1184
  %1198 = trunc i64 %1197 to i32
  %1199 = xor i32 %1198, %1187
  %1200 = lshr i32 %1199, 4
  %1201 = trunc i32 %1200 to i8
  %1202 = and i8 %1201, 1
  %1203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1202, i8* %1203, align 1, !tbaa !2450
  %1204 = icmp eq i32 %1187, 0
  %1205 = zext i1 %1204 to i8
  %1206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1205, i8* %1206, align 1, !tbaa !2447
  %1207 = lshr i32 %1187, 31
  %1208 = trunc i32 %1207 to i8
  %1209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1208, i8* %1209, align 1, !tbaa !2448
  %1210 = lshr i32 %1183, 31
  %1211 = xor i32 %1207, %1210
  %1212 = add nuw nsw i32 %1211, %1210
  %1213 = icmp eq i32 %1212, 2
  %1214 = zext i1 %1213 to i8
  %1215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1214, i8* %1215, align 1, !tbaa !2449
  %1216 = load i64, i64* %PC
  %1217 = add i64 %1216, 31
  %1218 = load i64, i64* %PC
  %1219 = add i64 %1218, 6
  %1220 = load i64, i64* %PC
  %1221 = add i64 %1220, 6
  store i64 %1221, i64* %PC
  %1222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1223 = load i8, i8* %1222, align 1, !tbaa !2447
  %1224 = icmp eq i8 %1223, 0
  %1225 = zext i1 %1224 to i8
  store i8 %1225, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %1226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1227 = select i1 %1224, i64 %1217, i64 %1219
  store i64 %1227, i64* %1226, align 8, !tbaa !2428
  %1228 = load i8, i8* %BRANCH_TAKEN
  %1229 = icmp eq i8 %1228, 1
  br i1 %1229, label %block_400e05, label %block_400dec

block_400f4d:                                     ; preds = %block_400f41, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit3
  %MEMORY.4 = phi %struct.Memory* [ %652, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit3 ], [ %652, %block_400f41 ]
  %1230 = load i64, i64* %RBP
  %1231 = sub i64 %1230, 52
  %1232 = load i64, i64* %PC
  %1233 = add i64 %1232, 4
  store i64 %1233, i64* %PC
  %1234 = inttoptr i64 %1231 to i32*
  %1235 = load i32, i32* %1234
  %1236 = sext i32 %1235 to i64
  store i64 %1236, i64* %RAX, align 8, !tbaa !2428
  %1237 = load i64, i64* %RAX
  %1238 = load i64, i64* %RBP
  %1239 = sub i64 %1238, 80
  %1240 = load i64, i64* %PC
  %1241 = add i64 %1240, 4
  store i64 %1241, i64* %PC
  %1242 = inttoptr i64 %1239 to i64*
  %1243 = load i64, i64* %1242
  %1244 = add i64 %1243, %1237
  store i64 %1244, i64* %RAX, align 8, !tbaa !2428
  %1245 = icmp ult i64 %1244, %1237
  %1246 = icmp ult i64 %1244, %1243
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
  %1257 = xor i64 %1243, %1237
  %1258 = xor i64 %1257, %1244
  %1259 = lshr i64 %1258, 4
  %1260 = trunc i64 %1259 to i8
  %1261 = and i8 %1260, 1
  %1262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1261, i8* %1262, align 1, !tbaa !2450
  %1263 = icmp eq i64 %1244, 0
  %1264 = zext i1 %1263 to i8
  %1265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1264, i8* %1265, align 1, !tbaa !2447
  %1266 = lshr i64 %1244, 63
  %1267 = trunc i64 %1266 to i8
  %1268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1267, i8* %1268, align 1, !tbaa !2448
  %1269 = lshr i64 %1237, 63
  %1270 = lshr i64 %1243, 63
  %1271 = xor i64 %1266, %1269
  %1272 = xor i64 %1266, %1270
  %1273 = add nuw nsw i64 %1271, %1272
  %1274 = icmp eq i64 %1273, 2
  %1275 = zext i1 %1274 to i8
  %1276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1275, i8* %1276, align 1, !tbaa !2449
  %1277 = load i64, i64* %RAX
  %1278 = load i64, i64* %PC
  %1279 = add i64 %1278, 4
  store i64 %1279, i64* %PC
  %1280 = and i64 1, %1277
  store i64 %1280, i64* %RAX, align 8, !tbaa !2428
  %1281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1281, align 1, !tbaa !2432
  %1282 = trunc i64 %1280 to i32
  %1283 = and i32 %1282, 255
  %1284 = call i32 @llvm.ctpop.i32(i32 %1283) #16
  %1285 = trunc i32 %1284 to i8
  %1286 = and i8 %1285, 1
  %1287 = xor i8 %1286, 1
  %1288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1287, i8* %1288, align 1, !tbaa !2446
  %1289 = icmp eq i64 %1280, 0
  %1290 = zext i1 %1289 to i8
  %1291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1290, i8* %1291, align 1, !tbaa !2447
  %1292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1292, align 1, !tbaa !2448
  %1293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1293, align 1, !tbaa !2449
  %1294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1294, align 1, !tbaa !2450
  %1295 = load i32, i32* %EAX
  %1296 = zext i32 %1295 to i64
  %1297 = load i64, i64* %PC
  %1298 = add i64 %1297, 2
  store i64 %1298, i64* %PC
  %1299 = and i64 %1296, 4294967295
  store i64 %1299, i64* %RCX, align 8, !tbaa !2428
  %1300 = load i64, i64* %RBP
  %1301 = sub i64 %1300, 40
  %1302 = load i64, i64* %PC
  %1303 = add i64 %1302, 4
  store i64 %1303, i64* %PC
  %1304 = inttoptr i64 %1301 to i64*
  %1305 = load i64, i64* %1304
  store i64 %1305, i64* %RAX, align 8, !tbaa !2428
  %1306 = load i64, i64* %RAX
  %1307 = add i64 %1306, 4
  %1308 = load i32, i32* %ECX
  %1309 = zext i32 %1308 to i64
  %1310 = load i64, i64* %PC
  %1311 = add i64 %1310, 3
  store i64 %1311, i64* %PC
  %1312 = inttoptr i64 %1307 to i32*
  store i32 %1308, i32* %1312
  %1313 = load i64, i64* %RBP
  %1314 = sub i64 %1313, 16
  %1315 = load i64, i64* %PC
  %1316 = add i64 %1315, 4
  store i64 %1316, i64* %PC
  %1317 = inttoptr i64 %1314 to i64*
  %1318 = load i64, i64* %1317
  store i64 %1318, i64* %RAX, align 8, !tbaa !2428
  %1319 = load i64, i64* %RBP
  %1320 = sub i64 %1319, 40
  %1321 = load i64, i64* %RAX
  %1322 = load i64, i64* %PC
  %1323 = add i64 %1322, 4
  store i64 %1323, i64* %PC
  %1324 = inttoptr i64 %1320 to i64*
  store i64 %1321, i64* %1324
  %1325 = load i64, i64* %RBP
  %1326 = sub i64 %1325, 64
  %1327 = load i64, i64* %PC
  %1328 = add i64 %1327, 3
  store i64 %1328, i64* %PC
  %1329 = inttoptr i64 %1326 to i32*
  %1330 = load i32, i32* %1329
  %1331 = zext i32 %1330 to i64
  store i64 %1331, i64* %RAX, align 8, !tbaa !2428
  %1332 = load i64, i64* %RAX
  %1333 = load i64, i64* %PC
  %1334 = add i64 %1333, 3
  store i64 %1334, i64* %PC
  %1335 = trunc i64 %1332 to i32
  %1336 = add i32 1, %1335
  %1337 = zext i32 %1336 to i64
  store i64 %1337, i64* %RAX, align 8, !tbaa !2428
  %1338 = icmp ult i32 %1336, %1335
  %1339 = icmp ult i32 %1336, 1
  %1340 = or i1 %1338, %1339
  %1341 = zext i1 %1340 to i8
  %1342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1341, i8* %1342, align 1, !tbaa !2432
  %1343 = and i32 %1336, 255
  %1344 = call i32 @llvm.ctpop.i32(i32 %1343) #16
  %1345 = trunc i32 %1344 to i8
  %1346 = and i8 %1345, 1
  %1347 = xor i8 %1346, 1
  %1348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1347, i8* %1348, align 1, !tbaa !2446
  %1349 = xor i64 1, %1332
  %1350 = trunc i64 %1349 to i32
  %1351 = xor i32 %1350, %1336
  %1352 = lshr i32 %1351, 4
  %1353 = trunc i32 %1352 to i8
  %1354 = and i8 %1353, 1
  %1355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1354, i8* %1355, align 1, !tbaa !2450
  %1356 = icmp eq i32 %1336, 0
  %1357 = zext i1 %1356 to i8
  %1358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1357, i8* %1358, align 1, !tbaa !2447
  %1359 = lshr i32 %1336, 31
  %1360 = trunc i32 %1359 to i8
  %1361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1360, i8* %1361, align 1, !tbaa !2448
  %1362 = lshr i32 %1335, 31
  %1363 = xor i32 %1359, %1362
  %1364 = add nuw nsw i32 %1363, %1359
  %1365 = icmp eq i32 %1364, 2
  %1366 = zext i1 %1365 to i8
  %1367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1366, i8* %1367, align 1, !tbaa !2449
  %1368 = load i64, i64* %RBP
  %1369 = sub i64 %1368, 64
  %1370 = load i32, i32* %EAX
  %1371 = zext i32 %1370 to i64
  %1372 = load i64, i64* %PC
  %1373 = add i64 %1372, 3
  store i64 %1373, i64* %PC
  %1374 = inttoptr i64 %1369 to i32*
  store i32 %1370, i32* %1374
  %1375 = load i64, i64* %PC
  %1376 = sub i64 %1375, 757
  %1377 = load i64, i64* %PC
  %1378 = add i64 %1377, 5
  store i64 %1378, i64* %PC
  %1379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1376, i64* %1379, align 8, !tbaa !2428
  br label %block_400c7e

block_400fc3:                                     ; preds = %block_400f7f
  %1380 = sub i64 %405, 44
  %1381 = load i64, i64* %PC
  %1382 = add i64 %1381, 3
  store i64 %1382, i64* %PC
  %1383 = inttoptr i64 %1380 to i32*
  %1384 = load i32, i32* %1383
  %1385 = zext i32 %1384 to i64
  store i64 %1385, i64* %RAX, align 8, !tbaa !2428
  %1386 = load i64, i64* %RSP
  %1387 = load i64, i64* %PC
  %1388 = add i64 %1387, 7
  store i64 %1388, i64* %PC
  %1389 = add i64 128, %1386
  store i64 %1389, i64* %RSP, align 8, !tbaa !2428
  %1390 = icmp ult i64 %1389, %1386
  %1391 = icmp ult i64 %1389, 128
  %1392 = or i1 %1390, %1391
  %1393 = zext i1 %1392 to i8
  %1394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1393, i8* %1394, align 1, !tbaa !2432
  %1395 = trunc i64 %1389 to i32
  %1396 = and i32 %1395, 255
  %1397 = call i32 @llvm.ctpop.i32(i32 %1396) #16
  %1398 = trunc i32 %1397 to i8
  %1399 = and i8 %1398, 1
  %1400 = xor i8 %1399, 1
  %1401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1400, i8* %1401, align 1, !tbaa !2446
  %1402 = xor i64 128, %1386
  %1403 = xor i64 %1402, %1389
  %1404 = lshr i64 %1403, 4
  %1405 = trunc i64 %1404 to i8
  %1406 = and i8 %1405, 1
  %1407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1406, i8* %1407, align 1, !tbaa !2450
  %1408 = icmp eq i64 %1389, 0
  %1409 = zext i1 %1408 to i8
  %1410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1409, i8* %1410, align 1, !tbaa !2447
  %1411 = lshr i64 %1389, 63
  %1412 = trunc i64 %1411 to i8
  %1413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1412, i8* %1413, align 1, !tbaa !2448
  %1414 = lshr i64 %1386, 63
  %1415 = xor i64 %1411, %1414
  %1416 = add nuw nsw i64 %1415, %1411
  %1417 = icmp eq i64 %1416, 2
  %1418 = zext i1 %1417 to i8
  %1419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1418, i8* %1419, align 1, !tbaa !2449
  %1420 = load i64, i64* %PC
  %1421 = add i64 %1420, 1
  store i64 %1421, i64* %PC
  %1422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1423 = load i64, i64* %1422, align 8, !tbaa !2428
  %1424 = add i64 %1423, 8
  %1425 = inttoptr i64 %1423 to i64*
  %1426 = load i64, i64* %1425
  store i64 %1426, i64* %RBP, align 8, !tbaa !2428
  store i64 %1424, i64* %1422, align 8, !tbaa !2428
  %1427 = load i64, i64* %PC
  %1428 = add i64 %1427, 1
  store i64 %1428, i64* %PC
  %1429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1431 = load i64, i64* %1430, align 8, !tbaa !2428
  %1432 = inttoptr i64 %1431 to i64*
  %1433 = load i64, i64* %1432
  store i64 %1433, i64* %1429, align 8, !tbaa !2428
  %1434 = add i64 %1431, 8
  store i64 %1434, i64* %1430, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_400f41:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit3
  %1435 = load i64, i64* %RBP
  %1436 = sub i64 %1435, 80
  %1437 = load i64, i64* %PC
  %1438 = add i64 %1437, 4
  store i64 %1438, i64* %PC
  %1439 = inttoptr i64 %1436 to i64*
  %1440 = load i64, i64* %1439
  store i64 %1440, i64* %RAX, align 8, !tbaa !2428
  %1441 = load i64, i64* %RAX
  %1442 = load i64, i64* %PC
  %1443 = add i64 %1442, 4
  store i64 %1443, i64* %PC
  %1444 = xor i64 1, %1441
  store i64 %1444, i64* %RAX, align 8, !tbaa !2428
  %1445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1445, align 1, !tbaa !2432
  %1446 = trunc i64 %1444 to i32
  %1447 = and i32 %1446, 255
  %1448 = call i32 @llvm.ctpop.i32(i32 %1447) #16
  %1449 = trunc i32 %1448 to i8
  %1450 = and i8 %1449, 1
  %1451 = xor i8 %1450, 1
  %1452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1451, i8* %1452, align 1, !tbaa !2446
  %1453 = icmp eq i64 %1444, 0
  %1454 = zext i1 %1453 to i8
  %1455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1454, i8* %1455, align 1, !tbaa !2447
  %1456 = lshr i64 %1444, 63
  %1457 = trunc i64 %1456 to i8
  %1458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1457, i8* %1458, align 1, !tbaa !2448
  %1459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1459, align 1, !tbaa !2449
  %1460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1460, align 1, !tbaa !2450
  %1461 = load i64, i64* %RBP
  %1462 = sub i64 %1461, 80
  %1463 = load i64, i64* %RAX
  %1464 = load i64, i64* %PC
  %1465 = add i64 %1464, 4
  store i64 %1465, i64* %PC
  %1466 = inttoptr i64 %1462 to i64*
  store i64 %1463, i64* %1466
  br label %block_400f4d

block_400d5f:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1, %block_400d53
  %MEMORY.5 = phi %struct.Memory* [ %2680, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1 ], [ %2680, %block_400d53 ]
  %1467 = load i64, i64* %RBP
  %1468 = sub i64 %1467, 40
  %1469 = load i64, i64* %PC
  %1470 = add i64 %1469, 4
  store i64 %1470, i64* %PC
  %1471 = inttoptr i64 %1468 to i64*
  %1472 = load i64, i64* %1471
  store i64 %1472, i64* %RAX, align 8, !tbaa !2428
  %1473 = load i64, i64* %RAX
  %1474 = add i64 %1473, 8
  %1475 = load i64, i64* %PC
  %1476 = add i64 %1475, 4
  store i64 %1476, i64* %PC
  %1477 = inttoptr i64 %1474 to i64*
  %1478 = load i64, i64* %1477
  store i64 %1478, i64* %RAX, align 8, !tbaa !2428
  %1479 = load i64, i64* %RAX
  %1480 = add i64 %1479, 4
  %1481 = load i64, i64* %PC
  %1482 = add i64 %1481, 4
  store i64 %1482, i64* %PC
  %1483 = inttoptr i64 %1480 to i32*
  %1484 = load i32, i32* %1483
  %1485 = sext i32 %1484 to i64
  store i64 %1485, i64* %RAX, align 8, !tbaa !2428
  %1486 = load i64, i64* %RAX
  %1487 = load i64, i64* %RBP
  %1488 = sub i64 %1487, 80
  %1489 = load i64, i64* %PC
  %1490 = add i64 %1489, 4
  store i64 %1490, i64* %PC
  %1491 = inttoptr i64 %1488 to i64*
  %1492 = load i64, i64* %1491
  %1493 = add i64 %1492, %1486
  store i64 %1493, i64* %RAX, align 8, !tbaa !2428
  %1494 = icmp ult i64 %1493, %1486
  %1495 = icmp ult i64 %1493, %1492
  %1496 = or i1 %1494, %1495
  %1497 = zext i1 %1496 to i8
  %1498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1497, i8* %1498, align 1, !tbaa !2432
  %1499 = trunc i64 %1493 to i32
  %1500 = and i32 %1499, 255
  %1501 = call i32 @llvm.ctpop.i32(i32 %1500) #16
  %1502 = trunc i32 %1501 to i8
  %1503 = and i8 %1502, 1
  %1504 = xor i8 %1503, 1
  %1505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1504, i8* %1505, align 1, !tbaa !2446
  %1506 = xor i64 %1492, %1486
  %1507 = xor i64 %1506, %1493
  %1508 = lshr i64 %1507, 4
  %1509 = trunc i64 %1508 to i8
  %1510 = and i8 %1509, 1
  %1511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1510, i8* %1511, align 1, !tbaa !2450
  %1512 = icmp eq i64 %1493, 0
  %1513 = zext i1 %1512 to i8
  %1514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1513, i8* %1514, align 1, !tbaa !2447
  %1515 = lshr i64 %1493, 63
  %1516 = trunc i64 %1515 to i8
  %1517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1516, i8* %1517, align 1, !tbaa !2448
  %1518 = lshr i64 %1486, 63
  %1519 = lshr i64 %1492, 63
  %1520 = xor i64 %1515, %1518
  %1521 = xor i64 %1515, %1519
  %1522 = add nuw nsw i64 %1520, %1521
  %1523 = icmp eq i64 %1522, 2
  %1524 = zext i1 %1523 to i8
  %1525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1524, i8* %1525, align 1, !tbaa !2449
  %1526 = load i64, i64* %RAX
  %1527 = load i64, i64* %PC
  %1528 = add i64 %1527, 4
  store i64 %1528, i64* %PC
  %1529 = and i64 1, %1526
  store i64 %1529, i64* %RAX, align 8, !tbaa !2428
  %1530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1530, align 1, !tbaa !2432
  %1531 = trunc i64 %1529 to i32
  %1532 = and i32 %1531, 255
  %1533 = call i32 @llvm.ctpop.i32(i32 %1532) #16
  %1534 = trunc i32 %1533 to i8
  %1535 = and i8 %1534, 1
  %1536 = xor i8 %1535, 1
  %1537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1536, i8* %1537, align 1, !tbaa !2446
  %1538 = icmp eq i64 %1529, 0
  %1539 = zext i1 %1538 to i8
  %1540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1539, i8* %1540, align 1, !tbaa !2447
  %1541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1541, align 1, !tbaa !2448
  %1542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1542, align 1, !tbaa !2449
  %1543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1543, align 1, !tbaa !2450
  %1544 = load i32, i32* %EAX
  %1545 = zext i32 %1544 to i64
  %1546 = load i64, i64* %PC
  %1547 = add i64 %1546, 2
  store i64 %1547, i64* %PC
  %1548 = and i64 %1545, 4294967295
  store i64 %1548, i64* %RCX, align 8, !tbaa !2428
  %1549 = load i64, i64* %RBP
  %1550 = sub i64 %1549, 40
  %1551 = load i64, i64* %PC
  %1552 = add i64 %1551, 4
  store i64 %1552, i64* %PC
  %1553 = inttoptr i64 %1550 to i64*
  %1554 = load i64, i64* %1553
  store i64 %1554, i64* %RAX, align 8, !tbaa !2428
  %1555 = load i64, i64* %RAX
  %1556 = add i64 %1555, 4
  %1557 = load i32, i32* %ECX
  %1558 = zext i32 %1557 to i64
  %1559 = load i64, i64* %PC
  %1560 = add i64 %1559, 3
  store i64 %1560, i64* %PC
  %1561 = inttoptr i64 %1556 to i32*
  store i32 %1557, i32* %1561
  %1562 = load i64, i64* %RBP
  %1563 = sub i64 %1562, 40
  %1564 = load i64, i64* %PC
  %1565 = add i64 %1564, 4
  store i64 %1565, i64* %PC
  %1566 = inttoptr i64 %1563 to i64*
  %1567 = load i64, i64* %1566
  store i64 %1567, i64* %RAX, align 8, !tbaa !2428
  %1568 = load i64, i64* %RAX
  %1569 = add i64 %1568, 8
  %1570 = load i64, i64* %PC
  %1571 = add i64 %1570, 4
  store i64 %1571, i64* %PC
  %1572 = inttoptr i64 %1569 to i64*
  %1573 = load i64, i64* %1572
  store i64 %1573, i64* %RAX, align 8, !tbaa !2428
  %1574 = load i64, i64* %RBP
  %1575 = sub i64 %1574, 40
  %1576 = load i64, i64* %RAX
  %1577 = load i64, i64* %PC
  %1578 = add i64 %1577, 4
  store i64 %1578, i64* %PC
  %1579 = inttoptr i64 %1575 to i64*
  store i64 %1576, i64* %1579
  %1580 = load i64, i64* %RBP
  %1581 = sub i64 %1580, 80
  %1582 = load i64, i64* %PC
  %1583 = add i64 %1582, 4
  store i64 %1583, i64* %PC
  %1584 = inttoptr i64 %1581 to i64*
  %1585 = load i64, i64* %1584
  store i64 %1585, i64* %RAX, align 8, !tbaa !2428
  %1586 = load i64, i64* %RAX
  %1587 = load i64, i64* %PC
  %1588 = add i64 %1587, 4
  store i64 %1588, i64* %PC
  %1589 = trunc i64 %1586 to i8
  %1590 = and i8 %1589, 1
  %1591 = ashr i64 %1586, 1
  store i64 %1591, i64* %RAX, align 8, !tbaa !2428
  %1592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1590, i8* %1592, align 1, !tbaa !2452
  %1593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1594 = trunc i64 %1591 to i32
  %1595 = and i32 %1594, 255
  %1596 = call i32 @llvm.ctpop.i32(i32 %1595) #16
  %1597 = trunc i32 %1596 to i8
  %1598 = and i8 %1597, 1
  %1599 = xor i8 %1598, 1
  store i8 %1599, i8* %1593, align 1, !tbaa !2452
  %1600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1600, align 1, !tbaa !2452
  %1601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1602 = icmp eq i64 %1591, 0
  %1603 = zext i1 %1602 to i8
  store i8 %1603, i8* %1601, align 1, !tbaa !2452
  %1604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1605 = lshr i64 %1591, 63
  %1606 = trunc i64 %1605 to i8
  store i8 %1606, i8* %1604, align 1, !tbaa !2452
  %1607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1607, align 1, !tbaa !2452
  %1608 = load i64, i64* %RBP
  %1609 = sub i64 %1608, 80
  %1610 = load i64, i64* %RAX
  %1611 = load i64, i64* %PC
  %1612 = add i64 %1611, 4
  store i64 %1612, i64* %PC
  %1613 = inttoptr i64 %1609 to i64*
  store i64 %1610, i64* %1613
  %1614 = load i64, i64* %RBP
  %1615 = sub i64 %1614, 72
  %1616 = load i64, i64* %PC
  %1617 = add i64 %1616, 3
  store i64 %1617, i64* %PC
  %1618 = inttoptr i64 %1615 to i32*
  %1619 = load i32, i32* %1618
  %1620 = zext i32 %1619 to i64
  store i64 %1620, i64* %RAX, align 8, !tbaa !2428
  %1621 = load i64, i64* %RAX
  %1622 = load i64, i64* %PC
  %1623 = add i64 %1622, 3
  store i64 %1623, i64* %PC
  %1624 = trunc i64 %1621 to i32
  %1625 = add i32 1, %1624
  %1626 = zext i32 %1625 to i64
  store i64 %1626, i64* %RAX, align 8, !tbaa !2428
  %1627 = icmp ult i32 %1625, %1624
  %1628 = icmp ult i32 %1625, 1
  %1629 = or i1 %1627, %1628
  %1630 = zext i1 %1629 to i8
  %1631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1630, i8* %1631, align 1, !tbaa !2432
  %1632 = and i32 %1625, 255
  %1633 = call i32 @llvm.ctpop.i32(i32 %1632) #16
  %1634 = trunc i32 %1633 to i8
  %1635 = and i8 %1634, 1
  %1636 = xor i8 %1635, 1
  %1637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1636, i8* %1637, align 1, !tbaa !2446
  %1638 = xor i64 1, %1621
  %1639 = trunc i64 %1638 to i32
  %1640 = xor i32 %1639, %1625
  %1641 = lshr i32 %1640, 4
  %1642 = trunc i32 %1641 to i8
  %1643 = and i8 %1642, 1
  %1644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1643, i8* %1644, align 1, !tbaa !2450
  %1645 = icmp eq i32 %1625, 0
  %1646 = zext i1 %1645 to i8
  %1647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1646, i8* %1647, align 1, !tbaa !2447
  %1648 = lshr i32 %1625, 31
  %1649 = trunc i32 %1648 to i8
  %1650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1649, i8* %1650, align 1, !tbaa !2448
  %1651 = lshr i32 %1624, 31
  %1652 = xor i32 %1648, %1651
  %1653 = add nuw nsw i32 %1652, %1648
  %1654 = icmp eq i32 %1653, 2
  %1655 = zext i1 %1654 to i8
  %1656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1655, i8* %1656, align 1, !tbaa !2449
  %1657 = load i64, i64* %RBP
  %1658 = sub i64 %1657, 72
  %1659 = load i32, i32* %EAX
  %1660 = zext i32 %1659 to i64
  %1661 = load i64, i64* %PC
  %1662 = add i64 %1661, 3
  store i64 %1662, i64* %PC
  %1663 = inttoptr i64 %1658 to i32*
  store i32 %1659, i32* %1663
  %1664 = load i64, i64* %PC
  %1665 = sub i64 %1664, 226
  %1666 = load i64, i64* %PC
  %1667 = add i64 %1666, 5
  store i64 %1667, i64* %PC
  %1668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1665, i64* %1668, align 8, !tbaa !2428
  br label %block_400cbb

block_400dc5:                                     ; preds = %block_400e6b, %block_400db5
  %MEMORY.6 = phi %struct.Memory* [ %1744, %block_400db5 ], [ %MEMORY.10, %block_400e6b ]
  %1669 = load i64, i64* %RBP
  %1670 = sub i64 %1669, 72
  %1671 = load i64, i64* %PC
  %1672 = add i64 %1671, 3
  store i64 %1672, i64* %PC
  %1673 = inttoptr i64 %1670 to i32*
  %1674 = load i32, i32* %1673
  %1675 = zext i32 %1674 to i64
  store i64 %1675, i64* %RAX, align 8, !tbaa !2428
  %1676 = load i32, i32* %EAX
  %1677 = zext i32 %1676 to i64
  %1678 = load i64, i64* %RBP
  %1679 = sub i64 %1678, 56
  %1680 = load i64, i64* %PC
  %1681 = add i64 %1680, 3
  store i64 %1681, i64* %PC
  %1682 = inttoptr i64 %1679 to i32*
  %1683 = load i32, i32* %1682
  %1684 = sub i32 %1676, %1683
  %1685 = icmp ult i32 %1676, %1683
  %1686 = zext i1 %1685 to i8
  %1687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1686, i8* %1687, align 1, !tbaa !2432
  %1688 = and i32 %1684, 255
  %1689 = call i32 @llvm.ctpop.i32(i32 %1688) #16
  %1690 = trunc i32 %1689 to i8
  %1691 = and i8 %1690, 1
  %1692 = xor i8 %1691, 1
  %1693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1692, i8* %1693, align 1, !tbaa !2446
  %1694 = xor i32 %1683, %1676
  %1695 = xor i32 %1694, %1684
  %1696 = lshr i32 %1695, 4
  %1697 = trunc i32 %1696 to i8
  %1698 = and i8 %1697, 1
  %1699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1698, i8* %1699, align 1, !tbaa !2450
  %1700 = icmp eq i32 %1684, 0
  %1701 = zext i1 %1700 to i8
  %1702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1701, i8* %1702, align 1, !tbaa !2447
  %1703 = lshr i32 %1684, 31
  %1704 = trunc i32 %1703 to i8
  %1705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1704, i8* %1705, align 1, !tbaa !2448
  %1706 = lshr i32 %1676, 31
  %1707 = lshr i32 %1683, 31
  %1708 = xor i32 %1707, %1706
  %1709 = xor i32 %1703, %1706
  %1710 = add nuw nsw i32 %1709, %1708
  %1711 = icmp eq i32 %1710, 2
  %1712 = zext i1 %1711 to i8
  %1713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1712, i8* %1713, align 1, !tbaa !2449
  %1714 = load i64, i64* %PC
  %1715 = add i64 %1714, 227
  %1716 = load i64, i64* %PC
  %1717 = add i64 %1716, 6
  %1718 = load i64, i64* %PC
  %1719 = add i64 %1718, 6
  store i64 %1719, i64* %PC
  %1720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1721 = load i8, i8* %1720, align 1, !tbaa !2448
  %1722 = icmp ne i8 %1721, 0
  %1723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1724 = load i8, i8* %1723, align 1, !tbaa !2449
  %1725 = icmp ne i8 %1724, 0
  %1726 = xor i1 %1722, %1725
  %1727 = xor i1 %1726, true
  %1728 = zext i1 %1727 to i8
  store i8 %1728, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %1729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1730 = select i1 %1726, i64 %1717, i64 %1715
  store i64 %1730, i64* %1729, align 8, !tbaa !2428
  %1731 = load i8, i8* %BRANCH_TAKEN
  %1732 = icmp eq i8 %1731, 1
  br i1 %1732, label %block_400eae, label %block_400dd1

block_400db5:                                     ; preds = %block_400c9f
  %1733 = sub i64 %2335, 1829
  %1734 = load i64, i64* %PC
  %1735 = add i64 %1734, 5
  %1736 = load i64, i64* %PC
  %1737 = add i64 %1736, 5
  store i64 %1737, i64* %PC
  %1738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1739 = load i64, i64* %1738, align 8, !tbaa !2428
  %1740 = add i64 %1739, -8
  %1741 = inttoptr i64 %1740 to i64*
  store i64 %1735, i64* %1741
  store i64 %1740, i64* %1738, align 8, !tbaa !2428
  %1742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1733, i64* %1742, align 8, !tbaa !2428
  %1743 = load i64, i64* %PC
  %1744 = call %struct.Memory* @ext_602110_lrand48(%struct.State* %0, i64 %1743, %struct.Memory* %MEMORY.8)
  %1745 = load i64, i64* %RBP
  %1746 = sub i64 %1745, 80
  %1747 = load i64, i64* %RAX
  %1748 = load i64, i64* %PC
  %1749 = add i64 %1748, 4
  store i64 %1749, i64* %PC
  %1750 = inttoptr i64 %1746 to i64*
  store i64 %1747, i64* %1750
  %1751 = load i64, i64* %RBP
  %1752 = sub i64 %1751, 72
  %1753 = load i64, i64* %PC
  %1754 = add i64 %1753, 7
  store i64 %1754, i64* %PC
  %1755 = inttoptr i64 %1752 to i32*
  store i32 0, i32* %1755
  br label %block_400dc5

block_400eae:                                     ; preds = %block_400dc5
  %1756 = load i64, i64* %PC
  %1757 = sub i64 %1756, 2078
  %1758 = load i64, i64* %PC
  %1759 = add i64 %1758, 5
  %1760 = load i64, i64* %PC
  %1761 = add i64 %1760, 5
  store i64 %1761, i64* %PC
  %1762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1763 = load i64, i64* %1762, align 8, !tbaa !2428
  %1764 = add i64 %1763, -8
  %1765 = inttoptr i64 %1764 to i64*
  store i64 %1759, i64* %1765
  store i64 %1764, i64* %1762, align 8, !tbaa !2428
  %1766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1757, i64* %1766, align 8, !tbaa !2428
  %1767 = load i64, i64* %PC
  %1768 = call %struct.Memory* @ext_602110_lrand48(%struct.State* %0, i64 %1767, %struct.Memory* %MEMORY.6)
  %1769 = load i64, i64* %RBP
  %1770 = sub i64 %1769, 80
  %1771 = load i64, i64* %RAX
  %1772 = load i64, i64* %PC
  %1773 = add i64 %1772, 4
  store i64 %1773, i64* %PC
  %1774 = inttoptr i64 %1770 to i64*
  store i64 %1771, i64* %1774
  %1775 = load i64, i64* %RBP
  %1776 = sub i64 %1775, 32
  %1777 = load i64, i64* %PC
  %1778 = add i64 %1777, 4
  store i64 %1778, i64* %PC
  %1779 = inttoptr i64 %1776 to i64*
  %1780 = load i64, i64* %1779
  store i64 %1780, i64* %RAX, align 8, !tbaa !2428
  %1781 = load i64, i64* %PC
  %1782 = add i64 %1781, 7
  store i64 %1782, i64* %PC
  %1783 = load i32, i32* bitcast (%reg_len_type* @reg_len to i32*)
  %1784 = zext i32 %1783 to i64
  store i64 %1784, i64* %RCX, align 8, !tbaa !2428
  %1785 = load i64, i64* %RCX
  %1786 = load i64, i64* %PC
  %1787 = add i64 %1786, 3
  store i64 %1787, i64* %PC
  %1788 = trunc i64 %1785 to i32
  %1789 = sub i32 %1788, 1
  %1790 = zext i32 %1789 to i64
  store i64 %1790, i64* %RCX, align 8, !tbaa !2428
  %1791 = icmp ult i32 %1788, 1
  %1792 = zext i1 %1791 to i8
  %1793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1792, i8* %1793, align 1, !tbaa !2432
  %1794 = and i32 %1789, 255
  %1795 = call i32 @llvm.ctpop.i32(i32 %1794) #16
  %1796 = trunc i32 %1795 to i8
  %1797 = and i8 %1796, 1
  %1798 = xor i8 %1797, 1
  %1799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1798, i8* %1799, align 1, !tbaa !2446
  %1800 = xor i64 1, %1785
  %1801 = trunc i64 %1800 to i32
  %1802 = xor i32 %1801, %1789
  %1803 = lshr i32 %1802, 4
  %1804 = trunc i32 %1803 to i8
  %1805 = and i8 %1804, 1
  %1806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1805, i8* %1806, align 1, !tbaa !2450
  %1807 = icmp eq i32 %1789, 0
  %1808 = zext i1 %1807 to i8
  %1809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1808, i8* %1809, align 1, !tbaa !2447
  %1810 = lshr i32 %1789, 31
  %1811 = trunc i32 %1810 to i8
  %1812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1811, i8* %1812, align 1, !tbaa !2448
  %1813 = lshr i32 %1788, 31
  %1814 = xor i32 %1810, %1813
  %1815 = add nuw nsw i32 %1814, %1813
  %1816 = icmp eq i32 %1815, 2
  %1817 = zext i1 %1816 to i8
  %1818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1817, i8* %1818, align 1, !tbaa !2449
  %1819 = load i32, i32* %ECX
  %1820 = zext i32 %1819 to i64
  %1821 = load i64, i64* %PC
  %1822 = add i64 %1821, 3
  store i64 %1822, i64* %PC
  %1823 = shl i64 %1820, 32
  %1824 = ashr exact i64 %1823, 32
  store i64 %1824, i64* %RDX, align 8, !tbaa !2428
  %1825 = load i64, i64* %RAX
  %1826 = load i64, i64* %RDX
  %1827 = add i64 %1826, %1825
  %1828 = load i64, i64* %PC
  %1829 = add i64 %1828, 4
  store i64 %1829, i64* %PC
  %1830 = inttoptr i64 %1827 to i8*
  %1831 = load i8, i8* %1830
  %1832 = sext i8 %1831 to i64
  %1833 = and i64 %1832, 4294967295
  store i64 %1833, i64* %RCX, align 8, !tbaa !2428
  %1834 = load i32, i32* %ECX
  %1835 = zext i32 %1834 to i64
  %1836 = load i64, i64* %PC
  %1837 = add i64 %1836, 3
  store i64 %1837, i64* %PC
  %1838 = sub i32 %1834, 49
  %1839 = icmp ult i32 %1834, 49
  %1840 = zext i1 %1839 to i8
  %1841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1840, i8* %1841, align 1, !tbaa !2432
  %1842 = and i32 %1838, 255
  %1843 = call i32 @llvm.ctpop.i32(i32 %1842) #16
  %1844 = trunc i32 %1843 to i8
  %1845 = and i8 %1844, 1
  %1846 = xor i8 %1845, 1
  %1847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1846, i8* %1847, align 1, !tbaa !2446
  %1848 = xor i64 49, %1835
  %1849 = trunc i64 %1848 to i32
  %1850 = xor i32 %1849, %1838
  %1851 = lshr i32 %1850, 4
  %1852 = trunc i32 %1851 to i8
  %1853 = and i8 %1852, 1
  %1854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1853, i8* %1854, align 1, !tbaa !2450
  %1855 = icmp eq i32 %1838, 0
  %1856 = zext i1 %1855 to i8
  %1857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1856, i8* %1857, align 1, !tbaa !2447
  %1858 = lshr i32 %1838, 31
  %1859 = trunc i32 %1858 to i8
  %1860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1859, i8* %1860, align 1, !tbaa !2448
  %1861 = lshr i32 %1834, 31
  %1862 = xor i32 %1858, %1861
  %1863 = add nuw nsw i32 %1862, %1861
  %1864 = icmp eq i32 %1863, 2
  %1865 = zext i1 %1864 to i8
  %1866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1865, i8* %1866, align 1, !tbaa !2449
  %1867 = load i64, i64* %PC
  %1868 = add i64 %1867, 31
  %1869 = load i64, i64* %PC
  %1870 = add i64 %1869, 6
  %1871 = load i64, i64* %PC
  %1872 = add i64 %1871, 6
  store i64 %1872, i64* %PC
  %1873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1874 = load i8, i8* %1873, align 1, !tbaa !2447
  %1875 = icmp eq i8 %1874, 0
  %1876 = zext i1 %1875 to i8
  store i8 %1876, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %1877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1878 = select i1 %1875, i64 %1868, i64 %1870
  store i64 %1878, i64* %1877, align 8, !tbaa !2428
  %1879 = load i8, i8* %BRANCH_TAKEN
  %1880 = icmp eq i8 %1879, 1
  br i1 %1880, label %block_400eee, label %block_400ed5

block_400cc5:                                     ; preds = %block_400cbb
  %1881 = load i64, i64* %RBP
  %1882 = sub i64 %1881, 32
  %1883 = load i64, i64* %PC
  %1884 = add i64 %1883, 4
  store i64 %1884, i64* %PC
  %1885 = inttoptr i64 %1882 to i64*
  %1886 = load i64, i64* %1885
  store i64 %1886, i64* %RAX, align 8, !tbaa !2428
  %1887 = load i64, i64* %RBP
  %1888 = sub i64 %1887, 68
  %1889 = load i64, i64* %PC
  %1890 = add i64 %1889, 4
  store i64 %1890, i64* %PC
  %1891 = inttoptr i64 %1888 to i32*
  %1892 = load i32, i32* %1891
  %1893 = sext i32 %1892 to i64
  %1894 = mul nsw i64 %1893, 31
  %1895 = trunc i64 %1894 to i32
  %1896 = and i64 %1894, 4294967295
  store i64 %1896, i64* %RCX, align 8, !tbaa !2428
  %1897 = shl i64 %1894, 32
  %1898 = ashr exact i64 %1897, 32
  %1899 = icmp ne i64 %1898, %1894
  %1900 = zext i1 %1899 to i8
  %1901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1900, i8* %1901, align 1, !tbaa !2432
  %1902 = and i32 %1895, 255
  %1903 = call i32 @llvm.ctpop.i32(i32 %1902) #16
  %1904 = trunc i32 %1903 to i8
  %1905 = and i8 %1904, 1
  %1906 = xor i8 %1905, 1
  %1907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1906, i8* %1907, align 1, !tbaa !2446
  %1908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1908, align 1, !tbaa !2450
  %1909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1909, align 1, !tbaa !2447
  %1910 = lshr i32 %1895, 31
  %1911 = trunc i32 %1910 to i8
  %1912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1911, i8* %1912, align 1, !tbaa !2448
  %1913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1900, i8* %1913, align 1, !tbaa !2449
  %1914 = load i64, i64* %RCX
  %1915 = load i64, i64* %RBP
  %1916 = sub i64 %1915, 72
  %1917 = load i64, i64* %PC
  %1918 = add i64 %1917, 3
  store i64 %1918, i64* %PC
  %1919 = trunc i64 %1914 to i32
  %1920 = inttoptr i64 %1916 to i32*
  %1921 = load i32, i32* %1920
  %1922 = add i32 %1921, %1919
  %1923 = zext i32 %1922 to i64
  store i64 %1923, i64* %RCX, align 8, !tbaa !2428
  %1924 = icmp ult i32 %1922, %1919
  %1925 = icmp ult i32 %1922, %1921
  %1926 = or i1 %1924, %1925
  %1927 = zext i1 %1926 to i8
  %1928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1927, i8* %1928, align 1, !tbaa !2432
  %1929 = and i32 %1922, 255
  %1930 = call i32 @llvm.ctpop.i32(i32 %1929) #16
  %1931 = trunc i32 %1930 to i8
  %1932 = and i8 %1931, 1
  %1933 = xor i8 %1932, 1
  %1934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1933, i8* %1934, align 1, !tbaa !2446
  %1935 = xor i32 %1921, %1919
  %1936 = xor i32 %1935, %1922
  %1937 = lshr i32 %1936, 4
  %1938 = trunc i32 %1937 to i8
  %1939 = and i8 %1938, 1
  %1940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1939, i8* %1940, align 1, !tbaa !2450
  %1941 = icmp eq i32 %1922, 0
  %1942 = zext i1 %1941 to i8
  %1943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1942, i8* %1943, align 1, !tbaa !2447
  %1944 = lshr i32 %1922, 31
  %1945 = trunc i32 %1944 to i8
  %1946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1945, i8* %1946, align 1, !tbaa !2448
  %1947 = lshr i32 %1919, 31
  %1948 = lshr i32 %1921, 31
  %1949 = xor i32 %1944, %1947
  %1950 = xor i32 %1944, %1948
  %1951 = add nuw nsw i32 %1949, %1950
  %1952 = icmp eq i32 %1951, 2
  %1953 = zext i1 %1952 to i8
  %1954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1953, i8* %1954, align 1, !tbaa !2449
  %1955 = load i32, i32* %ECX
  %1956 = zext i32 %1955 to i64
  %1957 = load i64, i64* %PC
  %1958 = add i64 %1957, 3
  store i64 %1958, i64* %PC
  %1959 = shl i64 %1956, 32
  %1960 = ashr exact i64 %1959, 32
  store i64 %1960, i64* %RDX, align 8, !tbaa !2428
  %1961 = load i64, i64* %RAX
  %1962 = load i64, i64* %RDX
  %1963 = add i64 %1962, %1961
  %1964 = load i64, i64* %PC
  %1965 = add i64 %1964, 4
  store i64 %1965, i64* %PC
  %1966 = inttoptr i64 %1963 to i8*
  %1967 = load i8, i8* %1966
  %1968 = sext i8 %1967 to i64
  %1969 = and i64 %1968, 4294967295
  store i64 %1969, i64* %RCX, align 8, !tbaa !2428
  %1970 = load i32, i32* %ECX
  %1971 = zext i32 %1970 to i64
  %1972 = load i64, i64* %PC
  %1973 = add i64 %1972, 3
  store i64 %1973, i64* %PC
  %1974 = sub i32 %1970, 49
  %1975 = icmp ult i32 %1970, 49
  %1976 = zext i1 %1975 to i8
  %1977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1976, i8* %1977, align 1, !tbaa !2432
  %1978 = and i32 %1974, 255
  %1979 = call i32 @llvm.ctpop.i32(i32 %1978) #16
  %1980 = trunc i32 %1979 to i8
  %1981 = and i8 %1980, 1
  %1982 = xor i8 %1981, 1
  %1983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1982, i8* %1983, align 1, !tbaa !2446
  %1984 = xor i64 49, %1971
  %1985 = trunc i64 %1984 to i32
  %1986 = xor i32 %1985, %1974
  %1987 = lshr i32 %1986, 4
  %1988 = trunc i32 %1987 to i8
  %1989 = and i8 %1988, 1
  %1990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1989, i8* %1990, align 1, !tbaa !2450
  %1991 = icmp eq i32 %1974, 0
  %1992 = zext i1 %1991 to i8
  %1993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1992, i8* %1993, align 1, !tbaa !2447
  %1994 = lshr i32 %1974, 31
  %1995 = trunc i32 %1994 to i8
  %1996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1995, i8* %1996, align 1, !tbaa !2448
  %1997 = lshr i32 %1970, 31
  %1998 = xor i32 %1994, %1997
  %1999 = add nuw nsw i32 %1998, %1997
  %2000 = icmp eq i32 %1999, 2
  %2001 = zext i1 %2000 to i8
  %2002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2001, i8* %2002, align 1, !tbaa !2449
  %2003 = load i64, i64* %PC
  %2004 = add i64 %2003, 31
  %2005 = load i64, i64* %PC
  %2006 = add i64 %2005, 6
  %2007 = load i64, i64* %PC
  %2008 = add i64 %2007, 6
  store i64 %2008, i64* %PC
  %2009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2010 = load i8, i8* %2009, align 1, !tbaa !2447
  %2011 = icmp eq i8 %2010, 0
  %2012 = zext i1 %2011 to i8
  store i8 %2012, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %2013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2014 = select i1 %2011, i64 %2004, i64 %2006
  store i64 %2014, i64* %2013, align 8, !tbaa !2428
  %2015 = load i8, i8* %BRANCH_TAKEN
  %2016 = icmp eq i8 %2015, 1
  br i1 %2016, label %block_400cf9, label %block_400ce0

block_400fa9:                                     ; preds = %block_400f8f, %block_400fa2
  %MEMORY.7 = phi %struct.Memory* [ %MEMORY.0, %block_400f8f ], [ %MEMORY.0, %block_400fa2 ]
  %2017 = load i64, i64* %RBP
  %2018 = sub i64 %2017, 40
  %2019 = load i64, i64* %PC
  %2020 = add i64 %2019, 4
  store i64 %2020, i64* %PC
  %2021 = inttoptr i64 %2018 to i64*
  %2022 = load i64, i64* %2021
  store i64 %2022, i64* %RAX, align 8, !tbaa !2428
  %2023 = load i64, i64* %RAX
  %2024 = add i64 %2023, 8
  %2025 = load i64, i64* %PC
  %2026 = add i64 %2025, 4
  store i64 %2026, i64* %PC
  %2027 = inttoptr i64 %2024 to i64*
  %2028 = load i64, i64* %2027
  store i64 %2028, i64* %RAX, align 8, !tbaa !2428
  %2029 = load i64, i64* %RBP
  %2030 = sub i64 %2029, 40
  %2031 = load i64, i64* %RAX
  %2032 = load i64, i64* %PC
  %2033 = add i64 %2032, 4
  store i64 %2033, i64* %PC
  %2034 = inttoptr i64 %2030 to i64*
  store i64 %2031, i64* %2034
  %2035 = load i64, i64* %RBP
  %2036 = sub i64 %2035, 68
  %2037 = load i64, i64* %PC
  %2038 = add i64 %2037, 3
  store i64 %2038, i64* %PC
  %2039 = inttoptr i64 %2036 to i32*
  %2040 = load i32, i32* %2039
  %2041 = zext i32 %2040 to i64
  store i64 %2041, i64* %RAX, align 8, !tbaa !2428
  %2042 = load i64, i64* %RAX
  %2043 = load i64, i64* %PC
  %2044 = add i64 %2043, 3
  store i64 %2044, i64* %PC
  %2045 = trunc i64 %2042 to i32
  %2046 = add i32 1, %2045
  %2047 = zext i32 %2046 to i64
  store i64 %2047, i64* %RAX, align 8, !tbaa !2428
  %2048 = icmp ult i32 %2046, %2045
  %2049 = icmp ult i32 %2046, 1
  %2050 = or i1 %2048, %2049
  %2051 = zext i1 %2050 to i8
  %2052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2051, i8* %2052, align 1, !tbaa !2432
  %2053 = and i32 %2046, 255
  %2054 = call i32 @llvm.ctpop.i32(i32 %2053) #16
  %2055 = trunc i32 %2054 to i8
  %2056 = and i8 %2055, 1
  %2057 = xor i8 %2056, 1
  %2058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2057, i8* %2058, align 1, !tbaa !2446
  %2059 = xor i64 1, %2042
  %2060 = trunc i64 %2059 to i32
  %2061 = xor i32 %2060, %2046
  %2062 = lshr i32 %2061, 4
  %2063 = trunc i32 %2062 to i8
  %2064 = and i8 %2063, 1
  %2065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2064, i8* %2065, align 1, !tbaa !2450
  %2066 = icmp eq i32 %2046, 0
  %2067 = zext i1 %2066 to i8
  %2068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2067, i8* %2068, align 1, !tbaa !2447
  %2069 = lshr i32 %2046, 31
  %2070 = trunc i32 %2069 to i8
  %2071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2070, i8* %2071, align 1, !tbaa !2448
  %2072 = lshr i32 %2045, 31
  %2073 = xor i32 %2069, %2072
  %2074 = add nuw nsw i32 %2073, %2069
  %2075 = icmp eq i32 %2074, 2
  %2076 = zext i1 %2075 to i8
  %2077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2076, i8* %2077, align 1, !tbaa !2449
  %2078 = load i64, i64* %RBP
  %2079 = sub i64 %2078, 68
  %2080 = load i32, i32* %EAX
  %2081 = zext i32 %2080 to i64
  %2082 = load i64, i64* %PC
  %2083 = add i64 %2082, 3
  store i64 %2083, i64* %PC
  %2084 = inttoptr i64 %2079 to i32*
  store i32 %2080, i32* %2084
  %2085 = load i64, i64* %PC
  %2086 = sub i64 %2085, 63
  %2087 = load i64, i64* %PC
  %2088 = add i64 %2087, 5
  store i64 %2088, i64* %PC
  %2089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2086, i64* %2089, align 8, !tbaa !2428
  br label %block_400f7f

block_400dec:                                     ; preds = %block_400dd1
  %2090 = load i64, i64* %RBP
  %2091 = sub i64 %2090, 40
  %2092 = load i64, i64* %PC
  %2093 = add i64 %2092, 4
  store i64 %2093, i64* %PC
  %2094 = inttoptr i64 %2091 to i64*
  %2095 = load i64, i64* %2094
  store i64 %2095, i64* %RAX, align 8, !tbaa !2428
  %2096 = load i64, i64* %RAX
  %2097 = load i64, i64* %PC
  %2098 = add i64 %2097, 2
  store i64 %2098, i64* %PC
  %2099 = inttoptr i64 %2096 to i32*
  %2100 = load i32, i32* %2099
  %2101 = zext i32 %2100 to i64
  store i64 %2101, i64* %RCX, align 8, !tbaa !2428
  %2102 = load i64, i64* %RCX
  %2103 = load i64, i64* %RBP
  %2104 = sub i64 %2103, 48
  %2105 = load i64, i64* %PC
  %2106 = add i64 %2105, 3
  store i64 %2106, i64* %PC
  %2107 = trunc i64 %2102 to i32
  %2108 = inttoptr i64 %2104 to i32*
  %2109 = load i32, i32* %2108
  %2110 = add i32 %2109, %2107
  %2111 = zext i32 %2110 to i64
  store i64 %2111, i64* %RCX, align 8, !tbaa !2428
  %2112 = icmp ult i32 %2110, %2107
  %2113 = icmp ult i32 %2110, %2109
  %2114 = or i1 %2112, %2113
  %2115 = zext i1 %2114 to i8
  %2116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2115, i8* %2116, align 1, !tbaa !2432
  %2117 = and i32 %2110, 255
  %2118 = call i32 @llvm.ctpop.i32(i32 %2117) #16
  %2119 = trunc i32 %2118 to i8
  %2120 = and i8 %2119, 1
  %2121 = xor i8 %2120, 1
  %2122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2121, i8* %2122, align 1, !tbaa !2446
  %2123 = xor i32 %2109, %2107
  %2124 = xor i32 %2123, %2110
  %2125 = lshr i32 %2124, 4
  %2126 = trunc i32 %2125 to i8
  %2127 = and i8 %2126, 1
  %2128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2127, i8* %2128, align 1, !tbaa !2450
  %2129 = icmp eq i32 %2110, 0
  %2130 = zext i1 %2129 to i8
  %2131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2130, i8* %2131, align 1, !tbaa !2447
  %2132 = lshr i32 %2110, 31
  %2133 = trunc i32 %2132 to i8
  %2134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2133, i8* %2134, align 1, !tbaa !2448
  %2135 = lshr i32 %2107, 31
  %2136 = lshr i32 %2109, 31
  %2137 = xor i32 %2132, %2135
  %2138 = xor i32 %2132, %2136
  %2139 = add nuw nsw i32 %2137, %2138
  %2140 = icmp eq i32 %2139, 2
  %2141 = zext i1 %2140 to i8
  %2142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2141, i8* %2142, align 1, !tbaa !2449
  %2143 = load i64, i64* %RBP
  %2144 = sub i64 %2143, 48
  %2145 = load i32, i32* %ECX
  %2146 = zext i32 %2145 to i64
  %2147 = load i64, i64* %PC
  %2148 = add i64 %2147, 3
  store i64 %2148, i64* %PC
  %2149 = inttoptr i64 %2144 to i32*
  store i32 %2145, i32* %2149
  %2150 = load i64, i64* %RBP
  %2151 = sub i64 %2150, 40
  %2152 = load i64, i64* %PC
  %2153 = add i64 %2152, 4
  store i64 %2153, i64* %PC
  %2154 = inttoptr i64 %2151 to i64*
  %2155 = load i64, i64* %2154
  store i64 %2155, i64* %RAX, align 8, !tbaa !2428
  %2156 = load i64, i64* %RAX
  %2157 = add i64 %2156, 4
  %2158 = load i64, i64* %PC
  %2159 = add i64 %2158, 3
  store i64 %2159, i64* %PC
  %2160 = inttoptr i64 %2157 to i32*
  %2161 = load i32, i32* %2160
  %2162 = zext i32 %2161 to i64
  store i64 %2162, i64* %RCX, align 8, !tbaa !2428
  %2163 = load i64, i64* %RCX
  %2164 = load i64, i64* %RBP
  %2165 = sub i64 %2164, 52
  %2166 = load i64, i64* %PC
  %2167 = add i64 %2166, 3
  store i64 %2167, i64* %PC
  %2168 = trunc i64 %2163 to i32
  %2169 = inttoptr i64 %2165 to i32*
  %2170 = load i32, i32* %2169
  %2171 = add i32 %2170, %2168
  %2172 = zext i32 %2171 to i64
  store i64 %2172, i64* %RCX, align 8, !tbaa !2428
  %2173 = icmp ult i32 %2171, %2168
  %2174 = icmp ult i32 %2171, %2170
  %2175 = or i1 %2173, %2174
  %2176 = zext i1 %2175 to i8
  %2177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2176, i8* %2177, align 1, !tbaa !2432
  %2178 = and i32 %2171, 255
  %2179 = call i32 @llvm.ctpop.i32(i32 %2178) #16
  %2180 = trunc i32 %2179 to i8
  %2181 = and i8 %2180, 1
  %2182 = xor i8 %2181, 1
  %2183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2182, i8* %2183, align 1, !tbaa !2446
  %2184 = xor i32 %2170, %2168
  %2185 = xor i32 %2184, %2171
  %2186 = lshr i32 %2185, 4
  %2187 = trunc i32 %2186 to i8
  %2188 = and i8 %2187, 1
  %2189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2188, i8* %2189, align 1, !tbaa !2450
  %2190 = icmp eq i32 %2171, 0
  %2191 = zext i1 %2190 to i8
  %2192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2191, i8* %2192, align 1, !tbaa !2447
  %2193 = lshr i32 %2171, 31
  %2194 = trunc i32 %2193 to i8
  %2195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2194, i8* %2195, align 1, !tbaa !2448
  %2196 = lshr i32 %2168, 31
  %2197 = lshr i32 %2170, 31
  %2198 = xor i32 %2193, %2196
  %2199 = xor i32 %2193, %2197
  %2200 = add nuw nsw i32 %2198, %2199
  %2201 = icmp eq i32 %2200, 2
  %2202 = zext i1 %2201 to i8
  %2203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2202, i8* %2203, align 1, !tbaa !2449
  %2204 = load i64, i64* %RBP
  %2205 = sub i64 %2204, 52
  %2206 = load i32, i32* %ECX
  %2207 = zext i32 %2206 to i64
  %2208 = load i64, i64* %PC
  %2209 = add i64 %2208, 3
  store i64 %2209, i64* %PC
  %2210 = inttoptr i64 %2205 to i32*
  store i32 %2206, i32* %2210
  br label %block_400e05

block_400da2:                                     ; preds = %block_400cbb
  %2211 = load i64, i64* %PC
  %2212 = add i64 %2211, 5
  %2213 = load i64, i64* %PC
  %2214 = add i64 %2213, 5
  store i64 %2214, i64* %PC
  %2215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2212, i64* %2215, align 8, !tbaa !2428
  %2216 = load i64, i64* %RBP
  %2217 = sub i64 %2216, 68
  %2218 = load i64, i64* %PC
  %2219 = add i64 %2218, 3
  store i64 %2219, i64* %PC
  %2220 = inttoptr i64 %2217 to i32*
  %2221 = load i32, i32* %2220
  %2222 = zext i32 %2221 to i64
  store i64 %2222, i64* %RAX, align 8, !tbaa !2428
  %2223 = load i64, i64* %RAX
  %2224 = load i64, i64* %PC
  %2225 = add i64 %2224, 3
  store i64 %2225, i64* %PC
  %2226 = trunc i64 %2223 to i32
  %2227 = add i32 1, %2226
  %2228 = zext i32 %2227 to i64
  store i64 %2228, i64* %RAX, align 8, !tbaa !2428
  %2229 = icmp ult i32 %2227, %2226
  %2230 = icmp ult i32 %2227, 1
  %2231 = or i1 %2229, %2230
  %2232 = zext i1 %2231 to i8
  %2233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2232, i8* %2233, align 1, !tbaa !2432
  %2234 = and i32 %2227, 255
  %2235 = call i32 @llvm.ctpop.i32(i32 %2234) #16
  %2236 = trunc i32 %2235 to i8
  %2237 = and i8 %2236, 1
  %2238 = xor i8 %2237, 1
  %2239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2238, i8* %2239, align 1, !tbaa !2446
  %2240 = xor i64 1, %2223
  %2241 = trunc i64 %2240 to i32
  %2242 = xor i32 %2241, %2227
  %2243 = lshr i32 %2242, 4
  %2244 = trunc i32 %2243 to i8
  %2245 = and i8 %2244, 1
  %2246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2245, i8* %2246, align 1, !tbaa !2450
  %2247 = icmp eq i32 %2227, 0
  %2248 = zext i1 %2247 to i8
  %2249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2248, i8* %2249, align 1, !tbaa !2447
  %2250 = lshr i32 %2227, 31
  %2251 = trunc i32 %2250 to i8
  %2252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2251, i8* %2252, align 1, !tbaa !2448
  %2253 = lshr i32 %2226, 31
  %2254 = xor i32 %2250, %2253
  %2255 = add nuw nsw i32 %2254, %2250
  %2256 = icmp eq i32 %2255, 2
  %2257 = zext i1 %2256 to i8
  %2258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2257, i8* %2258, align 1, !tbaa !2449
  %2259 = load i64, i64* %RBP
  %2260 = sub i64 %2259, 68
  %2261 = load i32, i32* %EAX
  %2262 = zext i32 %2261 to i64
  %2263 = load i64, i64* %PC
  %2264 = add i64 %2263, 3
  store i64 %2264, i64* %PC
  %2265 = inttoptr i64 %2260 to i32*
  store i32 %2261, i32* %2265
  %2266 = load i64, i64* %PC
  %2267 = sub i64 %2266, 273
  %2268 = load i64, i64* %PC
  %2269 = add i64 %2268, 5
  store i64 %2269, i64* %PC
  %2270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2267, i64* %2270, align 8, !tbaa !2428
  br label %block_400c9f

block_400c9f:                                     ; preds = %block_400c8a, %block_400da2
  %MEMORY.8 = phi %struct.Memory* [ %MEMORY.3, %block_400c8a ], [ %MEMORY.2, %block_400da2 ]
  %2271 = load i64, i64* %RBP
  %2272 = sub i64 %2271, 68
  %2273 = load i64, i64* %PC
  %2274 = add i64 %2273, 3
  store i64 %2274, i64* %PC
  %2275 = inttoptr i64 %2272 to i32*
  %2276 = load i32, i32* %2275
  %2277 = zext i32 %2276 to i64
  store i64 %2277, i64* %RAX, align 8, !tbaa !2428
  %2278 = load i32, i32* %EAX
  %2279 = zext i32 %2278 to i64
  %2280 = load i64, i64* %RBP
  %2281 = sub i64 %2280, 60
  %2282 = load i64, i64* %PC
  %2283 = add i64 %2282, 3
  store i64 %2283, i64* %PC
  %2284 = inttoptr i64 %2281 to i32*
  %2285 = load i32, i32* %2284
  %2286 = sub i32 %2278, %2285
  %2287 = icmp ult i32 %2278, %2285
  %2288 = zext i1 %2287 to i8
  %2289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2288, i8* %2289, align 1, !tbaa !2432
  %2290 = and i32 %2286, 255
  %2291 = call i32 @llvm.ctpop.i32(i32 %2290) #16
  %2292 = trunc i32 %2291 to i8
  %2293 = and i8 %2292, 1
  %2294 = xor i8 %2293, 1
  %2295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2294, i8* %2295, align 1, !tbaa !2446
  %2296 = xor i32 %2285, %2278
  %2297 = xor i32 %2296, %2286
  %2298 = lshr i32 %2297, 4
  %2299 = trunc i32 %2298 to i8
  %2300 = and i8 %2299, 1
  %2301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2300, i8* %2301, align 1, !tbaa !2450
  %2302 = icmp eq i32 %2286, 0
  %2303 = zext i1 %2302 to i8
  %2304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2303, i8* %2304, align 1, !tbaa !2447
  %2305 = lshr i32 %2286, 31
  %2306 = trunc i32 %2305 to i8
  %2307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2306, i8* %2307, align 1, !tbaa !2448
  %2308 = lshr i32 %2278, 31
  %2309 = lshr i32 %2285, 31
  %2310 = xor i32 %2309, %2308
  %2311 = xor i32 %2305, %2308
  %2312 = add nuw nsw i32 %2311, %2310
  %2313 = icmp eq i32 %2312, 2
  %2314 = zext i1 %2313 to i8
  %2315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2314, i8* %2315, align 1, !tbaa !2449
  %2316 = load i64, i64* %PC
  %2317 = add i64 %2316, 272
  %2318 = load i64, i64* %PC
  %2319 = add i64 %2318, 6
  %2320 = load i64, i64* %PC
  %2321 = add i64 %2320, 6
  store i64 %2321, i64* %PC
  %2322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2323 = load i8, i8* %2322, align 1, !tbaa !2448
  %2324 = icmp ne i8 %2323, 0
  %2325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2326 = load i8, i8* %2325, align 1, !tbaa !2449
  %2327 = icmp ne i8 %2326, 0
  %2328 = xor i1 %2324, %2327
  %2329 = xor i1 %2328, true
  %2330 = zext i1 %2329 to i8
  store i8 %2330, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %2331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2332 = select i1 %2328, i64 %2319, i64 %2317
  store i64 %2332, i64* %2331, align 8, !tbaa !2428
  %2333 = load i8, i8* %BRANCH_TAKEN
  %2334 = icmp eq i8 %2333, 1
  %2335 = load i64, i64* %PC
  br i1 %2334, label %block_400db5, label %block_400cab

block_400cab:                                     ; preds = %block_400c9f
  %2336 = sub i64 %2335, 1563
  %2337 = load i64, i64* %PC
  %2338 = add i64 %2337, 5
  %2339 = load i64, i64* %PC
  %2340 = add i64 %2339, 5
  store i64 %2340, i64* %PC
  %2341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2342 = load i64, i64* %2341, align 8, !tbaa !2428
  %2343 = add i64 %2342, -8
  %2344 = inttoptr i64 %2343 to i64*
  store i64 %2338, i64* %2344
  store i64 %2343, i64* %2341, align 8, !tbaa !2428
  %2345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2336, i64* %2345, align 8, !tbaa !2428
  %2346 = load i64, i64* %PC
  %2347 = call %struct.Memory* @ext_602110_lrand48(%struct.State* %0, i64 %2346, %struct.Memory* %MEMORY.8)
  %2348 = load i64, i64* %RBP
  %2349 = sub i64 %2348, 80
  %2350 = load i64, i64* %RAX
  %2351 = load i64, i64* %PC
  %2352 = add i64 %2351, 4
  store i64 %2352, i64* %PC
  %2353 = inttoptr i64 %2349 to i64*
  store i64 %2350, i64* %2353
  %2354 = load i64, i64* %RBP
  %2355 = sub i64 %2354, 72
  %2356 = load i64, i64* %PC
  %2357 = add i64 %2356, 7
  store i64 %2357, i64* %PC
  %2358 = inttoptr i64 %2355 to i32*
  store i32 0, i32* %2358
  br label %block_400cbb

block_400f8f:                                     ; preds = %block_400f7f
  %2359 = sub i64 %405, 40
  %2360 = load i64, i64* %PC
  %2361 = add i64 %2360, 4
  store i64 %2361, i64* %PC
  %2362 = inttoptr i64 %2359 to i64*
  %2363 = load i64, i64* %2362
  store i64 %2363, i64* %RAX, align 8, !tbaa !2428
  %2364 = load i64, i64* %RAX
  %2365 = load i64, i64* %PC
  %2366 = add i64 %2365, 2
  store i64 %2366, i64* %PC
  %2367 = inttoptr i64 %2364 to i32*
  %2368 = load i32, i32* %2367
  %2369 = zext i32 %2368 to i64
  store i64 %2369, i64* %RCX, align 8, !tbaa !2428
  %2370 = load i64, i64* %RBP
  %2371 = sub i64 %2370, 40
  %2372 = load i64, i64* %PC
  %2373 = add i64 %2372, 4
  store i64 %2373, i64* %PC
  %2374 = inttoptr i64 %2371 to i64*
  %2375 = load i64, i64* %2374
  store i64 %2375, i64* %RAX, align 8, !tbaa !2428
  %2376 = load i32, i32* %ECX
  %2377 = zext i32 %2376 to i64
  %2378 = load i64, i64* %RAX
  %2379 = add i64 %2378, 4
  %2380 = load i64, i64* %PC
  %2381 = add i64 %2380, 3
  store i64 %2381, i64* %PC
  %2382 = inttoptr i64 %2379 to i32*
  %2383 = load i32, i32* %2382
  %2384 = sub i32 %2376, %2383
  %2385 = icmp ult i32 %2376, %2383
  %2386 = zext i1 %2385 to i8
  %2387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2386, i8* %2387, align 1, !tbaa !2432
  %2388 = and i32 %2384, 255
  %2389 = call i32 @llvm.ctpop.i32(i32 %2388) #16
  %2390 = trunc i32 %2389 to i8
  %2391 = and i8 %2390, 1
  %2392 = xor i8 %2391, 1
  %2393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2392, i8* %2393, align 1, !tbaa !2446
  %2394 = xor i32 %2383, %2376
  %2395 = xor i32 %2394, %2384
  %2396 = lshr i32 %2395, 4
  %2397 = trunc i32 %2396 to i8
  %2398 = and i8 %2397, 1
  %2399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2398, i8* %2399, align 1, !tbaa !2450
  %2400 = icmp eq i32 %2384, 0
  %2401 = zext i1 %2400 to i8
  %2402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2401, i8* %2402, align 1, !tbaa !2447
  %2403 = lshr i32 %2384, 31
  %2404 = trunc i32 %2403 to i8
  %2405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2404, i8* %2405, align 1, !tbaa !2448
  %2406 = lshr i32 %2376, 31
  %2407 = lshr i32 %2383, 31
  %2408 = xor i32 %2407, %2406
  %2409 = xor i32 %2403, %2406
  %2410 = add nuw nsw i32 %2409, %2408
  %2411 = icmp eq i32 %2410, 2
  %2412 = zext i1 %2411 to i8
  %2413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2412, i8* %2413, align 1, !tbaa !2449
  %2414 = load i64, i64* %PC
  %2415 = add i64 %2414, 13
  %2416 = load i64, i64* %PC
  %2417 = add i64 %2416, 6
  %2418 = load i64, i64* %PC
  %2419 = add i64 %2418, 6
  store i64 %2419, i64* %PC
  %2420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2421 = load i8, i8* %2420, align 1, !tbaa !2447
  store i8 %2421, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %2422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2423 = icmp ne i8 %2421, 0
  %2424 = select i1 %2423, i64 %2415, i64 %2417
  store i64 %2424, i64* %2422, align 8, !tbaa !2428
  %2425 = load i8, i8* %BRANCH_TAKEN
  %2426 = icmp eq i8 %2425, 1
  br i1 %2426, label %block_400fa9, label %block_400fa2

block_400cf9:                                     ; preds = %block_400cc5, %block_400ce0
  %MEMORY.9 = phi %struct.Memory* [ %MEMORY.2, %block_400cc5 ], [ %MEMORY.2, %block_400ce0 ]
  %2427 = load i64, i64* %RBP
  %2428 = sub i64 %2427, 40
  %2429 = load i64, i64* %PC
  %2430 = add i64 %2429, 4
  store i64 %2430, i64* %PC
  %2431 = inttoptr i64 %2428 to i64*
  %2432 = load i64, i64* %2431
  store i64 %2432, i64* %RAX, align 8, !tbaa !2428
  %2433 = load i64, i64* %RAX
  %2434 = add i64 %2433, 8
  %2435 = load i64, i64* %PC
  %2436 = add i64 %2435, 4
  store i64 %2436, i64* %PC
  %2437 = inttoptr i64 %2434 to i64*
  %2438 = load i64, i64* %2437
  store i64 %2438, i64* %RAX, align 8, !tbaa !2428
  %2439 = load i64, i64* %RAX
  %2440 = load i64, i64* %PC
  %2441 = add i64 %2440, 3
  store i64 %2441, i64* %PC
  %2442 = inttoptr i64 %2439 to i32*
  %2443 = load i32, i32* %2442
  %2444 = sext i32 %2443 to i64
  store i64 %2444, i64* %RAX, align 8, !tbaa !2428
  %2445 = load i64, i64* %RAX
  %2446 = load i64, i64* %RBP
  %2447 = sub i64 %2446, 80
  %2448 = load i64, i64* %PC
  %2449 = add i64 %2448, 4
  store i64 %2449, i64* %PC
  %2450 = inttoptr i64 %2447 to i64*
  %2451 = load i64, i64* %2450
  %2452 = add i64 %2451, %2445
  store i64 %2452, i64* %RAX, align 8, !tbaa !2428
  %2453 = icmp ult i64 %2452, %2445
  %2454 = icmp ult i64 %2452, %2451
  %2455 = or i1 %2453, %2454
  %2456 = zext i1 %2455 to i8
  %2457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2456, i8* %2457, align 1, !tbaa !2432
  %2458 = trunc i64 %2452 to i32
  %2459 = and i32 %2458, 255
  %2460 = call i32 @llvm.ctpop.i32(i32 %2459) #16
  %2461 = trunc i32 %2460 to i8
  %2462 = and i8 %2461, 1
  %2463 = xor i8 %2462, 1
  %2464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2463, i8* %2464, align 1, !tbaa !2446
  %2465 = xor i64 %2451, %2445
  %2466 = xor i64 %2465, %2452
  %2467 = lshr i64 %2466, 4
  %2468 = trunc i64 %2467 to i8
  %2469 = and i8 %2468, 1
  %2470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2469, i8* %2470, align 1, !tbaa !2450
  %2471 = icmp eq i64 %2452, 0
  %2472 = zext i1 %2471 to i8
  %2473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2472, i8* %2473, align 1, !tbaa !2447
  %2474 = lshr i64 %2452, 63
  %2475 = trunc i64 %2474 to i8
  %2476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2475, i8* %2476, align 1, !tbaa !2448
  %2477 = lshr i64 %2445, 63
  %2478 = lshr i64 %2451, 63
  %2479 = xor i64 %2474, %2477
  %2480 = xor i64 %2474, %2478
  %2481 = add nuw nsw i64 %2479, %2480
  %2482 = icmp eq i64 %2481, 2
  %2483 = zext i1 %2482 to i8
  %2484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2483, i8* %2484, align 1, !tbaa !2449
  %2485 = load i64, i64* %RAX
  %2486 = load i64, i64* %PC
  %2487 = add i64 %2486, 4
  store i64 %2487, i64* %PC
  %2488 = and i64 1, %2485
  store i64 %2488, i64* %RAX, align 8, !tbaa !2428
  %2489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2489, align 1, !tbaa !2432
  %2490 = trunc i64 %2488 to i32
  %2491 = and i32 %2490, 255
  %2492 = call i32 @llvm.ctpop.i32(i32 %2491) #16
  %2493 = trunc i32 %2492 to i8
  %2494 = and i8 %2493, 1
  %2495 = xor i8 %2494, 1
  %2496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2495, i8* %2496, align 1, !tbaa !2446
  %2497 = icmp eq i64 %2488, 0
  %2498 = zext i1 %2497 to i8
  %2499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2498, i8* %2499, align 1, !tbaa !2447
  %2500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2500, align 1, !tbaa !2448
  %2501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2501, align 1, !tbaa !2449
  %2502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2502, align 1, !tbaa !2450
  %2503 = load i32, i32* %EAX
  %2504 = zext i32 %2503 to i64
  %2505 = load i64, i64* %PC
  %2506 = add i64 %2505, 2
  store i64 %2506, i64* %PC
  %2507 = and i64 %2504, 4294967295
  store i64 %2507, i64* %RCX, align 8, !tbaa !2428
  %2508 = load i64, i64* %RBP
  %2509 = sub i64 %2508, 40
  %2510 = load i64, i64* %PC
  %2511 = add i64 %2510, 4
  store i64 %2511, i64* %PC
  %2512 = inttoptr i64 %2509 to i64*
  %2513 = load i64, i64* %2512
  store i64 %2513, i64* %RAX, align 8, !tbaa !2428
  %2514 = load i64, i64* %RAX
  %2515 = load i32, i32* %ECX
  %2516 = zext i32 %2515 to i64
  %2517 = load i64, i64* %PC
  %2518 = add i64 %2517, 2
  store i64 %2518, i64* %PC
  %2519 = inttoptr i64 %2514 to i32*
  store i32 %2515, i32* %2519
  %2520 = load i64, i64* %PC
  %2521 = sub i64 %2520, 1668
  %2522 = load i64, i64* %PC
  %2523 = add i64 %2522, 5
  %2524 = load i64, i64* %PC
  %2525 = add i64 %2524, 5
  store i64 %2525, i64* %PC
  %2526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2527 = load i64, i64* %2526, align 8, !tbaa !2428
  %2528 = add i64 %2527, -8
  %2529 = inttoptr i64 %2528 to i64*
  store i64 %2523, i64* %2529
  store i64 %2528, i64* %2526, align 8, !tbaa !2428
  %2530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2521, i64* %2530, align 8, !tbaa !2428
  %2531 = load i64, i64* %PC
  %2532 = call %struct.Memory* @ext_602110_lrand48(%struct.State* %0, i64 %2531, %struct.Memory* %MEMORY.9)
  %2533 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2534 = load i64, i64* %PC
  %2535 = add i64 %2534, 8
  store i64 %2535, i64* %PC
  %2536 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4010a0__rodata_type* @seg_4010a0__rodata to i64), i64 32) to double*)
  %2537 = bitcast i8* %2533 to double*
  store double %2536, double* %2537, align 1, !tbaa !2453
  %2538 = getelementptr inbounds i8, i8* %2533, i64 8
  %2539 = bitcast i8* %2538 to double*
  store double 0.000000e+00, double* %2539, align 1, !tbaa !2453
  %2540 = load i64, i64* %PC
  %2541 = add i64 %2540, 5
  store i64 %2541, i64* %PC
  store i64 1000, i64* %RCX, align 8, !tbaa !2428
  %2542 = load i32, i32* %ECX
  %2543 = zext i32 %2542 to i64
  %2544 = load i64, i64* %PC
  %2545 = add i64 %2544, 2
  store i64 %2545, i64* %PC
  %2546 = and i64 %2543, 4294967295
  store i64 %2546, i64* %RDX, align 8, !tbaa !2428
  %2547 = load i64, i64* %RBP
  %2548 = sub i64 %2547, 104
  %2549 = load i64, i64* %RDX
  %2550 = load i64, i64* %PC
  %2551 = add i64 %2550, 4
  store i64 %2551, i64* %PC
  %2552 = inttoptr i64 %2548 to i64*
  store i64 %2549, i64* %2552
  %2553 = load i64, i64* %PC
  %2554 = add i64 %2553, 2
  store i64 %2554, i64* %PC
  %2555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %2557 = load i64, i64* %2556, align 8, !tbaa !2428
  %2558 = ashr i64 %2557, 63
  store i64 %2558, i64* %2555, align 8, !tbaa !2428
  %2559 = load i64, i64* %RBP
  %2560 = sub i64 %2559, 104
  %2561 = load i64, i64* %PC
  %2562 = add i64 %2561, 4
  store i64 %2562, i64* %PC
  %2563 = inttoptr i64 %2560 to i64*
  %2564 = load i64, i64* %2563
  store i64 %2564, i64* %RSI, align 8, !tbaa !2428
  %2565 = load i64, i64* %RSI
  %2566 = load i64, i64* %PC
  %2567 = add i64 %2566, 3
  store i64 %2567, i64* %PC
  %2568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %2569 = load i64, i64* %2568, align 8, !tbaa !2428
  %2570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2571 = load i64, i64* %2570, align 8, !tbaa !2428
  %2572 = sext i64 %2565 to i128
  %2573 = and i128 %2572, -18446744073709551616
  %2574 = zext i64 %2571 to i128
  %2575 = shl nuw i128 %2574, 64
  %2576 = zext i64 %2569 to i128
  %2577 = or i128 %2575, %2576
  %2578 = zext i64 %2565 to i128
  %2579 = or i128 %2573, %2578
  %2580 = sdiv i128 %2577, %2579
  %2581 = trunc i128 %2580 to i64
  %2582 = and i128 %2580, 18446744073709551615
  %2583 = sext i64 %2581 to i128
  %2584 = and i128 %2583, -18446744073709551616
  %2585 = or i128 %2584, %2582
  %2586 = icmp eq i128 %2580, %2585
  br i1 %2586, label %2591, label %2587

; <label>:2587:                                   ; preds = %block_400cf9
  %2588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2589 = load i64, i64* %2588, align 8, !tbaa !2428
  %2590 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2589, %struct.Memory* %2532) #17
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit2

; <label>:2591:                                   ; preds = %block_400cf9
  %2592 = srem i128 %2577, %2579
  %2593 = trunc i128 %2592 to i64
  store i64 %2581, i64* %2568, align 8, !tbaa !2428
  store i64 %2593, i64* %2570, align 8, !tbaa !2428
  %2594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2594, align 1, !tbaa !2432
  %2595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %2595, align 1, !tbaa !2446
  %2596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2596, align 1, !tbaa !2450
  %2597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2597, align 1, !tbaa !2447
  %2598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2598, align 1, !tbaa !2448
  %2599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2599, align 1, !tbaa !2449
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit2

_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit2: ; preds = %2587, %2591
  %2600 = phi %struct.Memory* [ %2590, %2587 ], [ %2532, %2591 ]
  %2601 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %2602 = load i64, i64* %RDX
  %2603 = load i64, i64* %PC
  %2604 = add i64 %2603, 5
  store i64 %2604, i64* %PC
  %2605 = sitofp i64 %2602 to double
  %2606 = bitcast i8* %2601 to double*
  store double %2605, double* %2606, align 1, !tbaa !2453
  %2607 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %2608 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %2609 = bitcast %union.vec128_t* %XMM0 to i8*
  %2610 = load i64, i64* %PC
  %2611 = add i64 %2610, 4
  store i64 %2611, i64* %PC
  %2612 = bitcast i8* %2608 to double*
  %2613 = load double, double* %2612, align 1
  %2614 = getelementptr inbounds i8, i8* %2608, i64 8
  %2615 = bitcast i8* %2614 to i64*
  %2616 = load i64, i64* %2615, align 1
  %2617 = bitcast i8* %2609 to double*
  %2618 = load double, double* %2617, align 1
  %2619 = fdiv double %2613, %2618
  %2620 = bitcast i8* %2607 to double*
  store double %2619, double* %2620, align 1, !tbaa !2453
  %2621 = getelementptr inbounds i8, i8* %2607, i64 8
  %2622 = bitcast i8* %2621 to i64*
  store i64 %2616, i64* %2622, align 1, !tbaa !2453
  %2623 = load i64, i64* %RBP
  %2624 = sub i64 %2623, 88
  %2625 = bitcast %union.vec128_t* %XMM1 to i8*
  %2626 = load i64, i64* %PC
  %2627 = add i64 %2626, 5
  store i64 %2627, i64* %PC
  %2628 = bitcast i8* %2625 to double*
  %2629 = load double, double* %2628, align 1
  %2630 = inttoptr i64 %2624 to double*
  store double %2629, double* %2630
  %2631 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2632 = load i64, i64* %RBP
  %2633 = sub i64 %2632, 24
  %2634 = load i64, i64* %PC
  %2635 = add i64 %2634, 5
  store i64 %2635, i64* %PC
  %2636 = inttoptr i64 %2633 to double*
  %2637 = load double, double* %2636
  %2638 = bitcast i8* %2631 to double*
  store double %2637, double* %2638, align 1, !tbaa !2453
  %2639 = getelementptr inbounds i8, i8* %2631, i64 8
  %2640 = bitcast i8* %2639 to double*
  store double 0.000000e+00, double* %2640, align 1, !tbaa !2453
  %2641 = bitcast %union.vec128_t* %XMM0 to i8*
  %2642 = load i64, i64* %RBP
  %2643 = sub i64 %2642, 88
  %2644 = load i64, i64* %PC
  %2645 = add i64 %2644, 5
  store i64 %2645, i64* %PC
  %2646 = bitcast i8* %2641 to double*
  %2647 = load double, double* %2646, align 1
  %2648 = inttoptr i64 %2643 to double*
  %2649 = load double, double* %2648
  %2650 = fcmp uno double %2647, %2649
  br i1 %2650, label %2651, label %2663

; <label>:2651:                                   ; preds = %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit2
  %2652 = fadd double %2647, %2649
  %2653 = bitcast double %2652 to i64
  %2654 = and i64 %2653, 9221120237041090560
  %2655 = icmp eq i64 %2654, 9218868437227405312
  %2656 = and i64 %2653, 2251799813685247
  %2657 = icmp ne i64 %2656, 0
  %2658 = and i1 %2655, %2657
  br i1 %2658, label %2659, label %2669

; <label>:2659:                                   ; preds = %2651
  %2660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2661 = load i64, i64* %2660, align 8, !tbaa !2428
  %2662 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2661, %struct.Memory* %2600) #17
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1

; <label>:2663:                                   ; preds = %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit2
  %2664 = fcmp ogt double %2647, %2649
  br i1 %2664, label %2669, label %2665

; <label>:2665:                                   ; preds = %2663
  %2666 = fcmp olt double %2647, %2649
  br i1 %2666, label %2669, label %2667

; <label>:2667:                                   ; preds = %2665
  %2668 = fcmp oeq double %2647, %2649
  br i1 %2668, label %2669, label %2676

; <label>:2669:                                   ; preds = %2667, %2665, %2663, %2651
  %2670 = phi i8 [ 0, %2663 ], [ 0, %2665 ], [ 1, %2667 ], [ 1, %2651 ]
  %2671 = phi i8 [ 0, %2663 ], [ 0, %2665 ], [ 0, %2667 ], [ 1, %2651 ]
  %2672 = phi i8 [ 0, %2663 ], [ 1, %2665 ], [ 0, %2667 ], [ 1, %2651 ]
  %2673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2670, i8* %2673, align 1, !tbaa !2452
  %2674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2671, i8* %2674, align 1, !tbaa !2452
  %2675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2672, i8* %2675, align 1, !tbaa !2452
  br label %2676

; <label>:2676:                                   ; preds = %2669, %2667
  %2677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2677, align 1, !tbaa !2452
  %2678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2678, align 1, !tbaa !2452
  %2679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2679, align 1, !tbaa !2452
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1: ; preds = %2659, %2676
  %2680 = phi %struct.Memory* [ %2662, %2659 ], [ %2600, %2676 ]
  %2681 = load i64, i64* %PC
  %2682 = add i64 %2681, 18
  %2683 = load i64, i64* %PC
  %2684 = add i64 %2683, 6
  %2685 = load i64, i64* %PC
  %2686 = add i64 %2685, 6
  store i64 %2686, i64* %PC
  %2687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2688 = load i8, i8* %2687, align 1, !tbaa !2432
  %2689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2690 = load i8, i8* %2689, align 1, !tbaa !2447
  %2691 = or i8 %2690, %2688
  %2692 = icmp ne i8 %2691, 0
  %2693 = zext i1 %2692 to i8
  store i8 %2693, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %2694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2695 = select i1 %2692, i64 %2682, i64 %2684
  store i64 %2695, i64* %2694, align 8, !tbaa !2428
  %2696 = load i8, i8* %BRANCH_TAKEN
  %2697 = icmp eq i8 %2696, 1
  br i1 %2697, label %block_400d5f, label %block_400d53

block_400e6b:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit, %block_400e5f
  %MEMORY.10 = phi %struct.Memory* [ %3167, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit ], [ %3167, %block_400e5f ]
  %2698 = load i64, i64* %RBP
  %2699 = sub i64 %2698, 40
  %2700 = load i64, i64* %PC
  %2701 = add i64 %2700, 4
  store i64 %2701, i64* %PC
  %2702 = inttoptr i64 %2699 to i64*
  %2703 = load i64, i64* %2702
  store i64 %2703, i64* %RAX, align 8, !tbaa !2428
  %2704 = load i64, i64* %RAX
  %2705 = add i64 %2704, 8
  %2706 = load i64, i64* %PC
  %2707 = add i64 %2706, 4
  store i64 %2707, i64* %PC
  %2708 = inttoptr i64 %2705 to i64*
  %2709 = load i64, i64* %2708
  store i64 %2709, i64* %RAX, align 8, !tbaa !2428
  %2710 = load i64, i64* %RAX
  %2711 = add i64 %2710, 4
  %2712 = load i64, i64* %PC
  %2713 = add i64 %2712, 4
  store i64 %2713, i64* %PC
  %2714 = inttoptr i64 %2711 to i32*
  %2715 = load i32, i32* %2714
  %2716 = sext i32 %2715 to i64
  store i64 %2716, i64* %RAX, align 8, !tbaa !2428
  %2717 = load i64, i64* %RAX
  %2718 = load i64, i64* %RBP
  %2719 = sub i64 %2718, 80
  %2720 = load i64, i64* %PC
  %2721 = add i64 %2720, 4
  store i64 %2721, i64* %PC
  %2722 = inttoptr i64 %2719 to i64*
  %2723 = load i64, i64* %2722
  %2724 = add i64 %2723, %2717
  store i64 %2724, i64* %RAX, align 8, !tbaa !2428
  %2725 = icmp ult i64 %2724, %2717
  %2726 = icmp ult i64 %2724, %2723
  %2727 = or i1 %2725, %2726
  %2728 = zext i1 %2727 to i8
  %2729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2728, i8* %2729, align 1, !tbaa !2432
  %2730 = trunc i64 %2724 to i32
  %2731 = and i32 %2730, 255
  %2732 = call i32 @llvm.ctpop.i32(i32 %2731) #16
  %2733 = trunc i32 %2732 to i8
  %2734 = and i8 %2733, 1
  %2735 = xor i8 %2734, 1
  %2736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2735, i8* %2736, align 1, !tbaa !2446
  %2737 = xor i64 %2723, %2717
  %2738 = xor i64 %2737, %2724
  %2739 = lshr i64 %2738, 4
  %2740 = trunc i64 %2739 to i8
  %2741 = and i8 %2740, 1
  %2742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2741, i8* %2742, align 1, !tbaa !2450
  %2743 = icmp eq i64 %2724, 0
  %2744 = zext i1 %2743 to i8
  %2745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2744, i8* %2745, align 1, !tbaa !2447
  %2746 = lshr i64 %2724, 63
  %2747 = trunc i64 %2746 to i8
  %2748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2747, i8* %2748, align 1, !tbaa !2448
  %2749 = lshr i64 %2717, 63
  %2750 = lshr i64 %2723, 63
  %2751 = xor i64 %2746, %2749
  %2752 = xor i64 %2746, %2750
  %2753 = add nuw nsw i64 %2751, %2752
  %2754 = icmp eq i64 %2753, 2
  %2755 = zext i1 %2754 to i8
  %2756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2755, i8* %2756, align 1, !tbaa !2449
  %2757 = load i64, i64* %RAX
  %2758 = load i64, i64* %PC
  %2759 = add i64 %2758, 4
  store i64 %2759, i64* %PC
  %2760 = and i64 1, %2757
  store i64 %2760, i64* %RAX, align 8, !tbaa !2428
  %2761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2761, align 1, !tbaa !2432
  %2762 = trunc i64 %2760 to i32
  %2763 = and i32 %2762, 255
  %2764 = call i32 @llvm.ctpop.i32(i32 %2763) #16
  %2765 = trunc i32 %2764 to i8
  %2766 = and i8 %2765, 1
  %2767 = xor i8 %2766, 1
  %2768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2767, i8* %2768, align 1, !tbaa !2446
  %2769 = icmp eq i64 %2760, 0
  %2770 = zext i1 %2769 to i8
  %2771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2770, i8* %2771, align 1, !tbaa !2447
  %2772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2772, align 1, !tbaa !2448
  %2773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2773, align 1, !tbaa !2449
  %2774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2774, align 1, !tbaa !2450
  %2775 = load i32, i32* %EAX
  %2776 = zext i32 %2775 to i64
  %2777 = load i64, i64* %PC
  %2778 = add i64 %2777, 2
  store i64 %2778, i64* %PC
  %2779 = and i64 %2776, 4294967295
  store i64 %2779, i64* %RCX, align 8, !tbaa !2428
  %2780 = load i64, i64* %RBP
  %2781 = sub i64 %2780, 40
  %2782 = load i64, i64* %PC
  %2783 = add i64 %2782, 4
  store i64 %2783, i64* %PC
  %2784 = inttoptr i64 %2781 to i64*
  %2785 = load i64, i64* %2784
  store i64 %2785, i64* %RAX, align 8, !tbaa !2428
  %2786 = load i64, i64* %RAX
  %2787 = add i64 %2786, 4
  %2788 = load i32, i32* %ECX
  %2789 = zext i32 %2788 to i64
  %2790 = load i64, i64* %PC
  %2791 = add i64 %2790, 3
  store i64 %2791, i64* %PC
  %2792 = inttoptr i64 %2787 to i32*
  store i32 %2788, i32* %2792
  %2793 = load i64, i64* %RBP
  %2794 = sub i64 %2793, 40
  %2795 = load i64, i64* %PC
  %2796 = add i64 %2795, 4
  store i64 %2796, i64* %PC
  %2797 = inttoptr i64 %2794 to i64*
  %2798 = load i64, i64* %2797
  store i64 %2798, i64* %RAX, align 8, !tbaa !2428
  %2799 = load i64, i64* %RAX
  %2800 = add i64 %2799, 8
  %2801 = load i64, i64* %PC
  %2802 = add i64 %2801, 4
  store i64 %2802, i64* %PC
  %2803 = inttoptr i64 %2800 to i64*
  %2804 = load i64, i64* %2803
  store i64 %2804, i64* %RAX, align 8, !tbaa !2428
  %2805 = load i64, i64* %RBP
  %2806 = sub i64 %2805, 40
  %2807 = load i64, i64* %RAX
  %2808 = load i64, i64* %PC
  %2809 = add i64 %2808, 4
  store i64 %2809, i64* %PC
  %2810 = inttoptr i64 %2806 to i64*
  store i64 %2807, i64* %2810
  %2811 = load i64, i64* %RBP
  %2812 = sub i64 %2811, 80
  %2813 = load i64, i64* %PC
  %2814 = add i64 %2813, 4
  store i64 %2814, i64* %PC
  %2815 = inttoptr i64 %2812 to i64*
  %2816 = load i64, i64* %2815
  store i64 %2816, i64* %RAX, align 8, !tbaa !2428
  %2817 = load i64, i64* %RAX
  %2818 = load i64, i64* %PC
  %2819 = add i64 %2818, 4
  store i64 %2819, i64* %PC
  %2820 = trunc i64 %2817 to i8
  %2821 = and i8 %2820, 1
  %2822 = ashr i64 %2817, 1
  store i64 %2822, i64* %RAX, align 8, !tbaa !2428
  %2823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2821, i8* %2823, align 1, !tbaa !2452
  %2824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2825 = trunc i64 %2822 to i32
  %2826 = and i32 %2825, 255
  %2827 = call i32 @llvm.ctpop.i32(i32 %2826) #16
  %2828 = trunc i32 %2827 to i8
  %2829 = and i8 %2828, 1
  %2830 = xor i8 %2829, 1
  store i8 %2830, i8* %2824, align 1, !tbaa !2452
  %2831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2831, align 1, !tbaa !2452
  %2832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2833 = icmp eq i64 %2822, 0
  %2834 = zext i1 %2833 to i8
  store i8 %2834, i8* %2832, align 1, !tbaa !2452
  %2835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2836 = lshr i64 %2822, 63
  %2837 = trunc i64 %2836 to i8
  store i8 %2837, i8* %2835, align 1, !tbaa !2452
  %2838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2838, align 1, !tbaa !2452
  %2839 = load i64, i64* %RBP
  %2840 = sub i64 %2839, 80
  %2841 = load i64, i64* %RAX
  %2842 = load i64, i64* %PC
  %2843 = add i64 %2842, 4
  store i64 %2843, i64* %PC
  %2844 = inttoptr i64 %2840 to i64*
  store i64 %2841, i64* %2844
  %2845 = load i64, i64* %RBP
  %2846 = sub i64 %2845, 72
  %2847 = load i64, i64* %PC
  %2848 = add i64 %2847, 3
  store i64 %2848, i64* %PC
  %2849 = inttoptr i64 %2846 to i32*
  %2850 = load i32, i32* %2849
  %2851 = zext i32 %2850 to i64
  store i64 %2851, i64* %RAX, align 8, !tbaa !2428
  %2852 = load i64, i64* %RAX
  %2853 = load i64, i64* %PC
  %2854 = add i64 %2853, 3
  store i64 %2854, i64* %PC
  %2855 = trunc i64 %2852 to i32
  %2856 = add i32 1, %2855
  %2857 = zext i32 %2856 to i64
  store i64 %2857, i64* %RAX, align 8, !tbaa !2428
  %2858 = icmp ult i32 %2856, %2855
  %2859 = icmp ult i32 %2856, 1
  %2860 = or i1 %2858, %2859
  %2861 = zext i1 %2860 to i8
  %2862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2861, i8* %2862, align 1, !tbaa !2432
  %2863 = and i32 %2856, 255
  %2864 = call i32 @llvm.ctpop.i32(i32 %2863) #16
  %2865 = trunc i32 %2864 to i8
  %2866 = and i8 %2865, 1
  %2867 = xor i8 %2866, 1
  %2868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2867, i8* %2868, align 1, !tbaa !2446
  %2869 = xor i64 1, %2852
  %2870 = trunc i64 %2869 to i32
  %2871 = xor i32 %2870, %2856
  %2872 = lshr i32 %2871, 4
  %2873 = trunc i32 %2872 to i8
  %2874 = and i8 %2873, 1
  %2875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2874, i8* %2875, align 1, !tbaa !2450
  %2876 = icmp eq i32 %2856, 0
  %2877 = zext i1 %2876 to i8
  %2878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2877, i8* %2878, align 1, !tbaa !2447
  %2879 = lshr i32 %2856, 31
  %2880 = trunc i32 %2879 to i8
  %2881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2880, i8* %2881, align 1, !tbaa !2448
  %2882 = lshr i32 %2855, 31
  %2883 = xor i32 %2879, %2882
  %2884 = add nuw nsw i32 %2883, %2879
  %2885 = icmp eq i32 %2884, 2
  %2886 = zext i1 %2885 to i8
  %2887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2886, i8* %2887, align 1, !tbaa !2449
  %2888 = load i64, i64* %RBP
  %2889 = sub i64 %2888, 72
  %2890 = load i32, i32* %EAX
  %2891 = zext i32 %2890 to i64
  %2892 = load i64, i64* %PC
  %2893 = add i64 %2892, 3
  store i64 %2893, i64* %PC
  %2894 = inttoptr i64 %2889 to i32*
  store i32 %2890, i32* %2894
  %2895 = load i64, i64* %PC
  %2896 = sub i64 %2895, 228
  %2897 = load i64, i64* %PC
  %2898 = add i64 %2897, 5
  store i64 %2898, i64* %PC
  %2899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2896, i64* %2899, align 8, !tbaa !2428
  br label %block_400dc5

block_400c8a:                                     ; preds = %block_400c7e
  %2900 = sub i64 %908, 48
  %2901 = load i64, i64* %PC
  %2902 = add i64 %2901, 7
  store i64 %2902, i64* %PC
  %2903 = inttoptr i64 %2900 to i32*
  store i32 0, i32* %2903
  %2904 = load i64, i64* %RBP
  %2905 = sub i64 %2904, 52
  %2906 = load i64, i64* %PC
  %2907 = add i64 %2906, 7
  store i64 %2907, i64* %PC
  %2908 = inttoptr i64 %2905 to i32*
  store i32 0, i32* %2908
  %2909 = load i64, i64* %RBP
  %2910 = sub i64 %2909, 68
  %2911 = load i64, i64* %PC
  %2912 = add i64 %2911, 7
  store i64 %2912, i64* %PC
  %2913 = inttoptr i64 %2910 to i32*
  store i32 0, i32* %2913
  br label %block_400c9f

block_400e05:                                     ; preds = %block_400dec, %block_400dd1
  %MEMORY.11 = phi %struct.Memory* [ %MEMORY.6, %block_400dd1 ], [ %MEMORY.6, %block_400dec ]
  %2914 = load i64, i64* %RBP
  %2915 = sub i64 %2914, 40
  %2916 = load i64, i64* %PC
  %2917 = add i64 %2916, 4
  store i64 %2917, i64* %PC
  %2918 = inttoptr i64 %2915 to i64*
  %2919 = load i64, i64* %2918
  store i64 %2919, i64* %RAX, align 8, !tbaa !2428
  %2920 = load i64, i64* %RAX
  %2921 = add i64 %2920, 8
  %2922 = load i64, i64* %PC
  %2923 = add i64 %2922, 4
  store i64 %2923, i64* %PC
  %2924 = inttoptr i64 %2921 to i64*
  %2925 = load i64, i64* %2924
  store i64 %2925, i64* %RAX, align 8, !tbaa !2428
  %2926 = load i64, i64* %RAX
  %2927 = load i64, i64* %PC
  %2928 = add i64 %2927, 3
  store i64 %2928, i64* %PC
  %2929 = inttoptr i64 %2926 to i32*
  %2930 = load i32, i32* %2929
  %2931 = sext i32 %2930 to i64
  store i64 %2931, i64* %RAX, align 8, !tbaa !2428
  %2932 = load i64, i64* %RAX
  %2933 = load i64, i64* %RBP
  %2934 = sub i64 %2933, 80
  %2935 = load i64, i64* %PC
  %2936 = add i64 %2935, 4
  store i64 %2936, i64* %PC
  %2937 = inttoptr i64 %2934 to i64*
  %2938 = load i64, i64* %2937
  %2939 = add i64 %2938, %2932
  store i64 %2939, i64* %RAX, align 8, !tbaa !2428
  %2940 = icmp ult i64 %2939, %2932
  %2941 = icmp ult i64 %2939, %2938
  %2942 = or i1 %2940, %2941
  %2943 = zext i1 %2942 to i8
  %2944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2943, i8* %2944, align 1, !tbaa !2432
  %2945 = trunc i64 %2939 to i32
  %2946 = and i32 %2945, 255
  %2947 = call i32 @llvm.ctpop.i32(i32 %2946) #16
  %2948 = trunc i32 %2947 to i8
  %2949 = and i8 %2948, 1
  %2950 = xor i8 %2949, 1
  %2951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2950, i8* %2951, align 1, !tbaa !2446
  %2952 = xor i64 %2938, %2932
  %2953 = xor i64 %2952, %2939
  %2954 = lshr i64 %2953, 4
  %2955 = trunc i64 %2954 to i8
  %2956 = and i8 %2955, 1
  %2957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2956, i8* %2957, align 1, !tbaa !2450
  %2958 = icmp eq i64 %2939, 0
  %2959 = zext i1 %2958 to i8
  %2960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2959, i8* %2960, align 1, !tbaa !2447
  %2961 = lshr i64 %2939, 63
  %2962 = trunc i64 %2961 to i8
  %2963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2962, i8* %2963, align 1, !tbaa !2448
  %2964 = lshr i64 %2932, 63
  %2965 = lshr i64 %2938, 63
  %2966 = xor i64 %2961, %2964
  %2967 = xor i64 %2961, %2965
  %2968 = add nuw nsw i64 %2966, %2967
  %2969 = icmp eq i64 %2968, 2
  %2970 = zext i1 %2969 to i8
  %2971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2970, i8* %2971, align 1, !tbaa !2449
  %2972 = load i64, i64* %RAX
  %2973 = load i64, i64* %PC
  %2974 = add i64 %2973, 4
  store i64 %2974, i64* %PC
  %2975 = and i64 1, %2972
  store i64 %2975, i64* %RAX, align 8, !tbaa !2428
  %2976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2976, align 1, !tbaa !2432
  %2977 = trunc i64 %2975 to i32
  %2978 = and i32 %2977, 255
  %2979 = call i32 @llvm.ctpop.i32(i32 %2978) #16
  %2980 = trunc i32 %2979 to i8
  %2981 = and i8 %2980, 1
  %2982 = xor i8 %2981, 1
  %2983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2982, i8* %2983, align 1, !tbaa !2446
  %2984 = icmp eq i64 %2975, 0
  %2985 = zext i1 %2984 to i8
  %2986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2985, i8* %2986, align 1, !tbaa !2447
  %2987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2987, align 1, !tbaa !2448
  %2988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2988, align 1, !tbaa !2449
  %2989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2989, align 1, !tbaa !2450
  %2990 = load i32, i32* %EAX
  %2991 = zext i32 %2990 to i64
  %2992 = load i64, i64* %PC
  %2993 = add i64 %2992, 2
  store i64 %2993, i64* %PC
  %2994 = and i64 %2991, 4294967295
  store i64 %2994, i64* %RCX, align 8, !tbaa !2428
  %2995 = load i64, i64* %RBP
  %2996 = sub i64 %2995, 40
  %2997 = load i64, i64* %PC
  %2998 = add i64 %2997, 4
  store i64 %2998, i64* %PC
  %2999 = inttoptr i64 %2996 to i64*
  %3000 = load i64, i64* %2999
  store i64 %3000, i64* %RAX, align 8, !tbaa !2428
  %3001 = load i64, i64* %RAX
  %3002 = load i32, i32* %ECX
  %3003 = zext i32 %3002 to i64
  %3004 = load i64, i64* %PC
  %3005 = add i64 %3004, 2
  store i64 %3005, i64* %PC
  %3006 = inttoptr i64 %3001 to i32*
  store i32 %3002, i32* %3006
  %3007 = load i64, i64* %PC
  %3008 = sub i64 %3007, 1936
  %3009 = load i64, i64* %PC
  %3010 = add i64 %3009, 5
  %3011 = load i64, i64* %PC
  %3012 = add i64 %3011, 5
  store i64 %3012, i64* %PC
  %3013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3014 = load i64, i64* %3013, align 8, !tbaa !2428
  %3015 = add i64 %3014, -8
  %3016 = inttoptr i64 %3015 to i64*
  store i64 %3010, i64* %3016
  store i64 %3015, i64* %3013, align 8, !tbaa !2428
  %3017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3008, i64* %3017, align 8, !tbaa !2428
  %3018 = load i64, i64* %PC
  %3019 = call %struct.Memory* @ext_602110_lrand48(%struct.State* %0, i64 %3018, %struct.Memory* %MEMORY.11)
  %3020 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %3021 = load i64, i64* %PC
  %3022 = add i64 %3021, 8
  store i64 %3022, i64* %PC
  %3023 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4010a0__rodata_type* @seg_4010a0__rodata to i64), i64 32) to double*)
  %3024 = bitcast i8* %3020 to double*
  store double %3023, double* %3024, align 1, !tbaa !2453
  %3025 = getelementptr inbounds i8, i8* %3020, i64 8
  %3026 = bitcast i8* %3025 to double*
  store double 0.000000e+00, double* %3026, align 1, !tbaa !2453
  %3027 = load i64, i64* %PC
  %3028 = add i64 %3027, 5
  store i64 %3028, i64* %PC
  store i64 1000, i64* %RCX, align 8, !tbaa !2428
  %3029 = load i32, i32* %ECX
  %3030 = zext i32 %3029 to i64
  %3031 = load i64, i64* %PC
  %3032 = add i64 %3031, 2
  store i64 %3032, i64* %PC
  %3033 = and i64 %3030, 4294967295
  store i64 %3033, i64* %RDX, align 8, !tbaa !2428
  %3034 = load i64, i64* %RBP
  %3035 = sub i64 %3034, 112
  %3036 = load i64, i64* %RDX
  %3037 = load i64, i64* %PC
  %3038 = add i64 %3037, 4
  store i64 %3038, i64* %PC
  %3039 = inttoptr i64 %3035 to i64*
  store i64 %3036, i64* %3039
  %3040 = load i64, i64* %PC
  %3041 = add i64 %3040, 2
  store i64 %3041, i64* %PC
  %3042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3044 = load i64, i64* %3043, align 8, !tbaa !2428
  %3045 = ashr i64 %3044, 63
  store i64 %3045, i64* %3042, align 8, !tbaa !2428
  %3046 = load i64, i64* %RBP
  %3047 = sub i64 %3046, 112
  %3048 = load i64, i64* %PC
  %3049 = add i64 %3048, 4
  store i64 %3049, i64* %PC
  %3050 = inttoptr i64 %3047 to i64*
  %3051 = load i64, i64* %3050
  store i64 %3051, i64* %RSI, align 8, !tbaa !2428
  %3052 = load i64, i64* %RSI
  %3053 = load i64, i64* %PC
  %3054 = add i64 %3053, 3
  store i64 %3054, i64* %PC
  %3055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3056 = load i64, i64* %3055, align 8, !tbaa !2428
  %3057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3058 = load i64, i64* %3057, align 8, !tbaa !2428
  %3059 = sext i64 %3052 to i128
  %3060 = and i128 %3059, -18446744073709551616
  %3061 = zext i64 %3058 to i128
  %3062 = shl nuw i128 %3061, 64
  %3063 = zext i64 %3056 to i128
  %3064 = or i128 %3062, %3063
  %3065 = zext i64 %3052 to i128
  %3066 = or i128 %3060, %3065
  %3067 = sdiv i128 %3064, %3066
  %3068 = trunc i128 %3067 to i64
  %3069 = and i128 %3067, 18446744073709551615
  %3070 = sext i64 %3068 to i128
  %3071 = and i128 %3070, -18446744073709551616
  %3072 = or i128 %3071, %3069
  %3073 = icmp eq i128 %3067, %3072
  br i1 %3073, label %3078, label %3074

; <label>:3074:                                   ; preds = %block_400e05
  %3075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3076 = load i64, i64* %3075, align 8, !tbaa !2428
  %3077 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3076, %struct.Memory* %3019) #17
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

; <label>:3078:                                   ; preds = %block_400e05
  %3079 = srem i128 %3064, %3066
  %3080 = trunc i128 %3079 to i64
  store i64 %3068, i64* %3055, align 8, !tbaa !2428
  store i64 %3080, i64* %3057, align 8, !tbaa !2428
  %3081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3081, align 1, !tbaa !2432
  %3082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %3082, align 1, !tbaa !2446
  %3083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3083, align 1, !tbaa !2450
  %3084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3084, align 1, !tbaa !2447
  %3085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3085, align 1, !tbaa !2448
  %3086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3086, align 1, !tbaa !2449
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit: ; preds = %3074, %3078
  %3087 = phi %struct.Memory* [ %3077, %3074 ], [ %3019, %3078 ]
  %3088 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %3089 = load i64, i64* %RDX
  %3090 = load i64, i64* %PC
  %3091 = add i64 %3090, 5
  store i64 %3091, i64* %PC
  %3092 = sitofp i64 %3089 to double
  %3093 = bitcast i8* %3088 to double*
  store double %3092, double* %3093, align 1, !tbaa !2453
  %3094 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %3095 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %3096 = bitcast %union.vec128_t* %XMM0 to i8*
  %3097 = load i64, i64* %PC
  %3098 = add i64 %3097, 4
  store i64 %3098, i64* %PC
  %3099 = bitcast i8* %3095 to double*
  %3100 = load double, double* %3099, align 1
  %3101 = getelementptr inbounds i8, i8* %3095, i64 8
  %3102 = bitcast i8* %3101 to i64*
  %3103 = load i64, i64* %3102, align 1
  %3104 = bitcast i8* %3096 to double*
  %3105 = load double, double* %3104, align 1
  %3106 = fdiv double %3100, %3105
  %3107 = bitcast i8* %3094 to double*
  store double %3106, double* %3107, align 1, !tbaa !2453
  %3108 = getelementptr inbounds i8, i8* %3094, i64 8
  %3109 = bitcast i8* %3108 to i64*
  store i64 %3103, i64* %3109, align 1, !tbaa !2453
  %3110 = load i64, i64* %RBP
  %3111 = sub i64 %3110, 88
  %3112 = bitcast %union.vec128_t* %XMM1 to i8*
  %3113 = load i64, i64* %PC
  %3114 = add i64 %3113, 5
  store i64 %3114, i64* %PC
  %3115 = bitcast i8* %3112 to double*
  %3116 = load double, double* %3115, align 1
  %3117 = inttoptr i64 %3111 to double*
  store double %3116, double* %3117
  %3118 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %3119 = load i64, i64* %RBP
  %3120 = sub i64 %3119, 24
  %3121 = load i64, i64* %PC
  %3122 = add i64 %3121, 5
  store i64 %3122, i64* %PC
  %3123 = inttoptr i64 %3120 to double*
  %3124 = load double, double* %3123
  %3125 = bitcast i8* %3118 to double*
  store double %3124, double* %3125, align 1, !tbaa !2453
  %3126 = getelementptr inbounds i8, i8* %3118, i64 8
  %3127 = bitcast i8* %3126 to double*
  store double 0.000000e+00, double* %3127, align 1, !tbaa !2453
  %3128 = bitcast %union.vec128_t* %XMM0 to i8*
  %3129 = load i64, i64* %RBP
  %3130 = sub i64 %3129, 88
  %3131 = load i64, i64* %PC
  %3132 = add i64 %3131, 5
  store i64 %3132, i64* %PC
  %3133 = bitcast i8* %3128 to double*
  %3134 = load double, double* %3133, align 1
  %3135 = inttoptr i64 %3130 to double*
  %3136 = load double, double* %3135
  %3137 = fcmp uno double %3134, %3136
  br i1 %3137, label %3138, label %3150

; <label>:3138:                                   ; preds = %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit
  %3139 = fadd double %3134, %3136
  %3140 = bitcast double %3139 to i64
  %3141 = and i64 %3140, 9221120237041090560
  %3142 = icmp eq i64 %3141, 9218868437227405312
  %3143 = and i64 %3140, 2251799813685247
  %3144 = icmp ne i64 %3143, 0
  %3145 = and i1 %3142, %3144
  br i1 %3145, label %3146, label %3156

; <label>:3146:                                   ; preds = %3138
  %3147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3148 = load i64, i64* %3147, align 8, !tbaa !2428
  %3149 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3148, %struct.Memory* %3087) #17
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:3150:                                   ; preds = %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit
  %3151 = fcmp ogt double %3134, %3136
  br i1 %3151, label %3156, label %3152

; <label>:3152:                                   ; preds = %3150
  %3153 = fcmp olt double %3134, %3136
  br i1 %3153, label %3156, label %3154

; <label>:3154:                                   ; preds = %3152
  %3155 = fcmp oeq double %3134, %3136
  br i1 %3155, label %3156, label %3163

; <label>:3156:                                   ; preds = %3154, %3152, %3150, %3138
  %3157 = phi i8 [ 0, %3150 ], [ 0, %3152 ], [ 1, %3154 ], [ 1, %3138 ]
  %3158 = phi i8 [ 0, %3150 ], [ 0, %3152 ], [ 0, %3154 ], [ 1, %3138 ]
  %3159 = phi i8 [ 0, %3150 ], [ 1, %3152 ], [ 0, %3154 ], [ 1, %3138 ]
  %3160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3157, i8* %3160, align 1, !tbaa !2452
  %3161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3158, i8* %3161, align 1, !tbaa !2452
  %3162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3159, i8* %3162, align 1, !tbaa !2452
  br label %3163

; <label>:3163:                                   ; preds = %3156, %3154
  %3164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3164, align 1, !tbaa !2452
  %3165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3165, align 1, !tbaa !2452
  %3166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3166, align 1, !tbaa !2452
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %3146, %3163
  %3167 = phi %struct.Memory* [ %3149, %3146 ], [ %3087, %3163 ]
  %3168 = load i64, i64* %PC
  %3169 = add i64 %3168, 18
  %3170 = load i64, i64* %PC
  %3171 = add i64 %3170, 6
  %3172 = load i64, i64* %PC
  %3173 = add i64 %3172, 6
  store i64 %3173, i64* %PC
  %3174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3175 = load i8, i8* %3174, align 1, !tbaa !2432
  %3176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3177 = load i8, i8* %3176, align 1, !tbaa !2447
  %3178 = or i8 %3177, %3175
  %3179 = icmp ne i8 %3178, 0
  %3180 = zext i1 %3179 to i8
  store i8 %3180, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %3181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3182 = select i1 %3179, i64 %3169, i64 %3171
  store i64 %3182, i64* %3181, align 8, !tbaa !2428
  %3183 = load i8, i8* %BRANCH_TAKEN
  %3184 = icmp eq i8 %3183, 1
  br i1 %3184, label %block_400e6b, label %block_400e5f
}

; Function Attrs: noinline
define %struct.Memory* @sub_400710_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400710:
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
  store i8 %54, i8* %55, align 1, !tbaa !2450
  %56 = icmp eq i64 %39, 0
  %57 = zext i1 %56 to i8
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %57, i8* %58, align 1, !tbaa !2447
  %59 = lshr i64 %39, 63
  %60 = trunc i64 %59 to i8
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %60, i8* %61, align 1, !tbaa !2448
  %62 = lshr i64 %36, 63
  %63 = xor i64 lshr (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 63), %62
  %64 = xor i64 %59, %62
  %65 = add nuw nsw i64 %64, %63
  %66 = icmp eq i64 %65, 2
  %67 = zext i1 %66 to i8
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %67, i8* %68, align 1, !tbaa !2449
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
  store i8 %77, i8* %79, align 1, !tbaa !2452
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %81 = trunc i64 %78 to i32
  %82 = and i32 %81, 255
  %83 = call i32 @llvm.ctpop.i32(i32 %82) #16
  %84 = trunc i32 %83 to i8
  %85 = and i8 %84, 1
  %86 = xor i8 %85, 1
  store i8 %86, i8* %80, align 1, !tbaa !2452
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %87, align 1, !tbaa !2452
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %89 = icmp eq i64 %78, 0
  %90 = zext i1 %89 to i8
  store i8 %90, i8* %88, align 1, !tbaa !2452
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %92 = lshr i64 %78, 63
  %93 = trunc i64 %92 to i8
  store i8 %93, i8* %91, align 1, !tbaa !2452
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %94, align 1, !tbaa !2452
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
  store i8 %103, i8* %105, align 1, !tbaa !2452
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %107 = trunc i64 %104 to i32
  %108 = and i32 %107, 255
  %109 = call i32 @llvm.ctpop.i32(i32 %108) #16
  %110 = trunc i32 %109 to i8
  %111 = and i8 %110, 1
  %112 = xor i8 %111, 1
  store i8 %112, i8* %106, align 1, !tbaa !2452
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %113, align 1, !tbaa !2452
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %115 = icmp eq i64 %104, 0
  %116 = zext i1 %115 to i8
  store i8 %116, i8* %114, align 1, !tbaa !2452
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %117, align 1, !tbaa !2452
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %118, align 1, !tbaa !2452
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
  store i8 %140, i8* %141, align 1, !tbaa !2450
  %142 = icmp eq i64 %123, 0
  %143 = zext i1 %142 to i8
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %143, i8* %144, align 1, !tbaa !2447
  %145 = lshr i64 %123, 63
  %146 = trunc i64 %145 to i8
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %146, i8* %147, align 1, !tbaa !2448
  %148 = lshr i64 %119, 63
  %149 = lshr i64 %120, 63
  %150 = xor i64 %145, %148
  %151 = xor i64 %145, %149
  %152 = add nuw nsw i64 %150, %151
  %153 = icmp eq i64 %152, 2
  %154 = zext i1 %153 to i8
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %154, i8* %155, align 1, !tbaa !2449
  %156 = load i64, i64* %RSI
  %157 = load i64, i64* %PC
  %158 = add i64 %157, 3
  store i64 %158, i64* %PC
  %159 = trunc i64 %156 to i8
  %160 = and i8 %159, 1
  %161 = ashr i64 %156, 1
  store i64 %161, i64* %RSI, align 8, !tbaa !2428
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %160, i8* %162, align 1, !tbaa !2452
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %164 = trunc i64 %161 to i32
  %165 = and i32 %164, 255
  %166 = call i32 @llvm.ctpop.i32(i32 %165) #16
  %167 = trunc i32 %166 to i8
  %168 = and i8 %167, 1
  %169 = xor i8 %168, 1
  store i8 %169, i8* %163, align 1, !tbaa !2452
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %170, align 1, !tbaa !2452
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %172 = icmp eq i64 %161, 0
  %173 = zext i1 %172 to i8
  store i8 %173, i8* %171, align 1, !tbaa !2452
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %175 = lshr i64 %161, 63
  %176 = trunc i64 %175 to i8
  store i8 %176, i8* %174, align 1, !tbaa !2452
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %177, align 1, !tbaa !2452
  %178 = load i64, i64* %PC
  %179 = add i64 %178, 23
  %180 = load i64, i64* %PC
  %181 = add i64 %180, 2
  %182 = load i64, i64* %PC
  %183 = add i64 %182, 2
  store i64 %183, i64* %PC
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %185 = load i8, i8* %184, align 1, !tbaa !2447
  store i8 %185, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %187 = icmp ne i8 %185, 0
  %188 = select i1 %187, i64 %179, i64 %181
  store i64 %188, i64* %186, align 8, !tbaa !2428
  %189 = load i8, i8* %BRANCH_TAKEN
  %190 = icmp eq i8 %189, 1
  br i1 %190, label %block_400748, label %block_400733

block_40073d:                                     ; preds = %block_400733
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
    i64 4196170, label %block_40074a
    i64 4196165, label %block_400745
  ]

block_40074a:                                     ; preds = %block_40073d
  %205 = load i64, i64* %RAX
  %206 = load i64, i64* %RAX
  %207 = add i64 %206, %205
  %208 = load i16, i16* %AX
  %209 = zext i16 %208 to i64
  %210 = load i64, i64* %PC
  %211 = add i64 %210, 6
  store i64 %211, i64* %PC
  %212 = load i64, i64* %PC
  %213 = tail call %struct.Memory* @sub_400750___do_global_dtors_aux(%struct.State* %0, i64 %212, %struct.Memory* %2)
  ret %struct.Memory* %213

block_400733:                                     ; preds = %block_400710
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
  store i8 %230, i8* %231, align 1, !tbaa !2447
  %232 = lshr i64 %220, 63
  %233 = trunc i64 %232 to i8
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %233, i8* %234, align 1, !tbaa !2448
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %235, align 1, !tbaa !2449
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %236, align 1, !tbaa !2450
  %237 = load i64, i64* %PC
  %238 = add i64 %237, 13
  %239 = load i64, i64* %PC
  %240 = add i64 %239, 2
  %241 = load i64, i64* %PC
  %242 = add i64 %241, 2
  store i64 %242, i64* %PC
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %244 = load i8, i8* %243, align 1, !tbaa !2447
  store i8 %244, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %246 = icmp ne i8 %244, 0
  %247 = select i1 %246, i64 %238, i64 %240
  store i64 %247, i64* %245, align 8, !tbaa !2428
  %248 = load i8, i8* %BRANCH_TAKEN
  %249 = icmp eq i8 %248, 1
  br i1 %249, label %block_400748, label %block_40073d

block_400748:                                     ; preds = %block_400745, %block_400733, %block_400710
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400710 ], [ %2, %block_400733 ], [ %2, %block_400745 ]
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

block_400745:                                     ; preds = %block_40073d
  %265 = load i64, i64* %RAX
  %266 = load i32, i32* %EAX
  %267 = zext i32 %266 to i64
  %268 = load i64, i64* %PC
  %269 = add i64 %268, 3
  store i64 %269, i64* %PC
  br label %block_400748

; <label>:270:                                    ; preds = %block_40073d
  %271 = load i64, i64* %PC
  %272 = tail call %struct.Memory* @__remill_jump(%struct.State* %0, i64 %271, %struct.Memory* %2)
  ret %struct.Memory* %272
}

; Function Attrs: noinline
define %struct.Memory* @sub_4005e8__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4005e8:
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
  store i8 %30, i8* %31, align 1, !tbaa !2450
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
  store i8 %61, i8* %62, align 1, !tbaa !2447
  %63 = lshr i64 %51, 63
  %64 = trunc i64 %63 to i8
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %64, i8* %65, align 1, !tbaa !2448
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %66, align 1, !tbaa !2449
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %67, align 1, !tbaa !2450
  %68 = load i64, i64* %PC
  %69 = add i64 %68, 4
  %70 = load i64, i64* %PC
  %71 = add i64 %70, 2
  %72 = load i64, i64* %PC
  %73 = add i64 %72, 2
  store i64 %73, i64* %PC
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %75 = load i8, i8* %74, align 1, !tbaa !2447
  store i8 %75, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %77 = icmp ne i8 %75, 0
  %78 = select i1 %77, i64 %69, i64 %71
  store i64 %78, i64* %76, align 8, !tbaa !2428
  %79 = load i8, i8* %BRANCH_TAKEN
  %80 = icmp eq i8 %79, 1
  br i1 %80, label %block_4005fa, label %block_4005f8

block_4005f8:                                     ; preds = %block_4005e8
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
  br label %block_4005fa

block_4005fa:                                     ; preds = %block_4005f8, %block_4005e8
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4005e8 ], [ %92, %block_4005f8 ]
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
  store i8 %113, i8* %114, align 1, !tbaa !2450
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
  %131 = load i64, i64* %130, align 8, !tbaa !2428
  %132 = inttoptr i64 %131 to i64*
  %133 = load i64, i64* %132
  store i64 %133, i64* %129, align 8, !tbaa !2428
  %134 = add i64 %131, 8
  store i64 %134, i64* %130, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0
}

; Function Attrs: noinline
define %struct.Memory* @sub_400790_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400790:
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
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %EBX = bitcast %union.anon* %15 to i32*
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %17 = getelementptr inbounds %struct.GPR, %struct.GPR* %16, i32 0, i32 11
  %18 = getelementptr inbounds %struct.Reg, %struct.Reg* %17, i32 0, i32 0
  %EDI = bitcast %union.anon* %18 to i32*
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %20 = getelementptr inbounds %struct.GPR, %struct.GPR* %19, i32 0, i32 19
  %21 = getelementptr inbounds %struct.Reg, %struct.Reg* %20, i32 0, i32 0
  %R9D = bitcast %union.anon* %21 to i32*
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %23 = getelementptr inbounds %struct.GPR, %struct.GPR* %22, i32 0, i32 21
  %24 = getelementptr inbounds %struct.Reg, %struct.Reg* %23, i32 0, i32 0
  %R10D = bitcast %union.anon* %24 to i32*
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %26 = getelementptr inbounds %struct.GPR, %struct.GPR* %25, i32 0, i32 23
  %27 = getelementptr inbounds %struct.Reg, %struct.Reg* %26, i32 0, i32 0
  %R11D = bitcast %union.anon* %27 to i32*
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %29 = getelementptr inbounds %struct.GPR, %struct.GPR* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.Reg, %struct.Reg* %29, i32 0, i32 0
  %RAX = bitcast %union.anon* %30 to i64*
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %32 = getelementptr inbounds %struct.GPR, %struct.GPR* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.Reg, %struct.Reg* %32, i32 0, i32 0
  %RBX = bitcast %union.anon* %33 to i64*
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %35 = getelementptr inbounds %struct.GPR, %struct.GPR* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.Reg, %struct.Reg* %35, i32 0, i32 0
  %RCX = bitcast %union.anon* %36 to i64*
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %38 = getelementptr inbounds %struct.GPR, %struct.GPR* %37, i32 0, i32 7
  %39 = getelementptr inbounds %struct.Reg, %struct.Reg* %38, i32 0, i32 0
  %RDX = bitcast %union.anon* %39 to i64*
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %41 = getelementptr inbounds %struct.GPR, %struct.GPR* %40, i32 0, i32 9
  %42 = getelementptr inbounds %struct.Reg, %struct.Reg* %41, i32 0, i32 0
  %RSI = bitcast %union.anon* %42 to i64*
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %44 = getelementptr inbounds %struct.GPR, %struct.GPR* %43, i32 0, i32 11
  %45 = getelementptr inbounds %struct.Reg, %struct.Reg* %44, i32 0, i32 0
  %RDI = bitcast %union.anon* %45 to i64*
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %47 = getelementptr inbounds %struct.GPR, %struct.GPR* %46, i32 0, i32 13
  %48 = getelementptr inbounds %struct.Reg, %struct.Reg* %47, i32 0, i32 0
  %RSP = bitcast %union.anon* %48 to i64*
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %50 = getelementptr inbounds %struct.GPR, %struct.GPR* %49, i32 0, i32 15
  %51 = getelementptr inbounds %struct.Reg, %struct.Reg* %50, i32 0, i32 0
  %RBP = bitcast %union.anon* %51 to i64*
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %53 = getelementptr inbounds %struct.GPR, %struct.GPR* %52, i32 0, i32 17
  %54 = getelementptr inbounds %struct.Reg, %struct.Reg* %53, i32 0, i32 0
  %R8 = bitcast %union.anon* %54 to i64*
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %56 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %55, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %56 to %"class.std::bitset"*
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %58 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %57, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %58 to %"class.std::bitset"*
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %60 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %59, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %60 to %"class.std::bitset"*
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %62 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %61, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %62 to %union.vec128_t*
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %64 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %63, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %64 to %union.vec128_t*
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %66 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %65, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %66 to %union.vec128_t*
  %67 = load i64, i64* %RBP
  %68 = load i64, i64* %PC
  %69 = add i64 %68, 1
  store i64 %69, i64* %PC
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %71 = load i64, i64* %70, align 8, !tbaa !2428
  %72 = add i64 %71, -8
  %73 = inttoptr i64 %72 to i64*
  store i64 %67, i64* %73
  store i64 %72, i64* %70, align 8, !tbaa !2428
  %74 = load i64, i64* %RSP
  %75 = load i64, i64* %PC
  %76 = add i64 %75, 3
  store i64 %76, i64* %PC
  store i64 %74, i64* %RBP, align 8, !tbaa !2428
  %77 = load i64, i64* %RBX
  %78 = load i64, i64* %PC
  %79 = add i64 %78, 1
  store i64 %79, i64* %PC
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %81 = load i64, i64* %80, align 8, !tbaa !2428
  %82 = add i64 %81, -8
  %83 = inttoptr i64 %82 to i64*
  store i64 %77, i64* %83
  store i64 %82, i64* %80, align 8, !tbaa !2428
  %84 = load i64, i64* %RSP
  %85 = load i64, i64* %PC
  %86 = add i64 %85, 7
  store i64 %86, i64* %PC
  %87 = sub i64 %84, 248
  store i64 %87, i64* %RSP, align 8, !tbaa !2428
  %88 = icmp ult i64 %84, 248
  %89 = zext i1 %88 to i8
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %89, i8* %90, align 1, !tbaa !2432
  %91 = trunc i64 %87 to i32
  %92 = and i32 %91, 255
  %93 = call i32 @llvm.ctpop.i32(i32 %92) #16
  %94 = trunc i32 %93 to i8
  %95 = and i8 %94, 1
  %96 = xor i8 %95, 1
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %96, i8* %97, align 1, !tbaa !2446
  %98 = xor i64 248, %84
  %99 = xor i64 %98, %87
  %100 = lshr i64 %99, 4
  %101 = trunc i64 %100 to i8
  %102 = and i8 %101, 1
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %102, i8* %103, align 1, !tbaa !2450
  %104 = icmp eq i64 %87, 0
  %105 = zext i1 %104 to i8
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %105, i8* %106, align 1, !tbaa !2447
  %107 = lshr i64 %87, 63
  %108 = trunc i64 %107 to i8
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %108, i8* %109, align 1, !tbaa !2448
  %110 = lshr i64 %84, 63
  %111 = xor i64 %107, %110
  %112 = add nuw nsw i64 %111, %110
  %113 = icmp eq i64 %112, 2
  %114 = zext i1 %113 to i8
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %114, i8* %115, align 1, !tbaa !2449
  %116 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %117 = load i64, i64* %PC
  %118 = add i64 %117, 8
  store i64 %118, i64* %PC
  %119 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4010a0__rodata_type* @seg_4010a0__rodata to i64), i64 8) to double*)
  %120 = bitcast i8* %116 to double*
  store double %119, double* %120, align 1, !tbaa !2453
  %121 = getelementptr inbounds i8, i8* %116, i64 8
  %122 = bitcast i8* %121 to double*
  store double 0.000000e+00, double* %122, align 1, !tbaa !2453
  %123 = load i64, i64* %RBP
  %124 = sub i64 %123, 12
  %125 = load i64, i64* %PC
  %126 = add i64 %125, 7
  store i64 %126, i64* %PC
  %127 = inttoptr i64 %124 to i32*
  store i32 0, i32* %127
  %128 = load i64, i64* %RBP
  %129 = sub i64 %128, 16
  %130 = load i32, i32* %EDI
  %131 = zext i32 %130 to i64
  %132 = load i64, i64* %PC
  %133 = add i64 %132, 3
  store i64 %133, i64* %PC
  %134 = inttoptr i64 %129 to i32*
  store i32 %130, i32* %134
  %135 = load i64, i64* %RBP
  %136 = sub i64 %135, 24
  %137 = load i64, i64* %RSI
  %138 = load i64, i64* %PC
  %139 = add i64 %138, 4
  store i64 %139, i64* %PC
  %140 = inttoptr i64 %136 to i64*
  store i64 %137, i64* %140
  %141 = load i64, i64* %RBP
  %142 = sub i64 %141, 44
  %143 = load i64, i64* %PC
  %144 = add i64 %143, 7
  store i64 %144, i64* %PC
  %145 = inttoptr i64 %142 to i32*
  store i32 10, i32* %145
  %146 = load i64, i64* %PC
  %147 = add i64 %146, 11
  store i64 %147, i64* %PC
  store i32 10, i32* bitcast (%reg_len_type* @reg_len to i32*)
  %148 = load i64, i64* %RBP
  %149 = sub i64 %148, 64
  %150 = bitcast %union.vec128_t* %XMM0 to i8*
  %151 = load i64, i64* %PC
  %152 = add i64 %151, 5
  store i64 %152, i64* %PC
  %153 = bitcast i8* %150 to double*
  %154 = load double, double* %153, align 1
  %155 = inttoptr i64 %149 to double*
  store double %154, double* %155
  %156 = load i64, i64* %RBP
  %157 = sub i64 %156, 48
  %158 = load i64, i64* %PC
  %159 = add i64 %158, 7
  store i64 %159, i64* %PC
  %160 = inttoptr i64 %157 to i32*
  store i32 100000, i32* %160
  %161 = load i64, i64* %RBP
  %162 = sub i64 %161, 16
  %163 = load i64, i64* %PC
  %164 = add i64 %163, 4
  store i64 %164, i64* %PC
  %165 = inttoptr i64 %162 to i32*
  %166 = load i32, i32* %165
  %167 = sub i32 %166, 6
  %168 = icmp ult i32 %166, 6
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
  %177 = xor i32 %166, 6
  %178 = xor i32 %177, %167
  %179 = lshr i32 %178, 4
  %180 = trunc i32 %179 to i8
  %181 = and i8 %180, 1
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %181, i8* %182, align 1, !tbaa !2450
  %183 = icmp eq i32 %167, 0
  %184 = zext i1 %183 to i8
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %184, i8* %185, align 1, !tbaa !2447
  %186 = lshr i32 %167, 31
  %187 = trunc i32 %186 to i8
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %187, i8* %188, align 1, !tbaa !2448
  %189 = lshr i32 %166, 31
  %190 = xor i32 %186, %189
  %191 = add nuw nsw i32 %190, %189
  %192 = icmp eq i32 %191, 2
  %193 = zext i1 %192 to i8
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %193, i8* %194, align 1, !tbaa !2449
  %195 = load i64, i64* %PC
  %196 = add i64 %195, 38
  %197 = load i64, i64* %PC
  %198 = add i64 %197, 6
  %199 = load i64, i64* %PC
  %200 = add i64 %199, 6
  store i64 %200, i64* %PC
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %202 = load i8, i8* %201, align 1, !tbaa !2447
  %203 = icmp ne i8 %202, 0
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %205 = load i8, i8* %204, align 1, !tbaa !2448
  %206 = icmp ne i8 %205, 0
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %208 = load i8, i8* %207, align 1, !tbaa !2449
  %209 = icmp ne i8 %208, 0
  %210 = xor i1 %206, %209
  %211 = or i1 %203, %210
  %212 = zext i1 %211 to i8
  store i8 %212, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %214 = select i1 %211, i64 %196, i64 %198
  store i64 %214, i64* %213, align 8, !tbaa !2428
  %215 = load i8, i8* %BRANCH_TAKEN
  %216 = icmp eq i8 %215, 1
  %217 = load i64, i64* %RBP
  br i1 %216, label %block_4007fa, label %block_4007da

block_400a7e:                                     ; preds = %block_400a72
  store i64 %430, i64* %PC
  store i64 1, i64* %RDI, align 8, !tbaa !2428
  %218 = load i64, i64* %RBP
  %219 = sub i64 %218, 40
  %220 = load i64, i64* %PC
  %221 = add i64 %220, 4
  store i64 %221, i64* %PC
  store i64 %219, i64* %RSI, align 8, !tbaa !2428
  %222 = load i64, i64* %RBP
  %223 = sub i64 %222, 176
  %224 = load i64, i64* %PC
  %225 = add i64 %224, 7
  store i64 %225, i64* %PC
  store i64 %223, i64* %RDX, align 8, !tbaa !2428
  %226 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %227 = load i64, i64* %RBP
  %228 = sub i64 %227, 64
  %229 = load i64, i64* %PC
  %230 = add i64 %229, 5
  store i64 %230, i64* %PC
  %231 = inttoptr i64 %228 to double*
  %232 = load double, double* %231
  %233 = bitcast i8* %226 to double*
  store double %232, double* %233, align 1, !tbaa !2453
  %234 = getelementptr inbounds i8, i8* %226, i64 8
  %235 = bitcast i8* %234 to double*
  store double 0.000000e+00, double* %235, align 1, !tbaa !2453
  %236 = load i64, i64* %PC
  %237 = add i64 %236, 397
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
  %248 = call %struct.Memory* @sub_400c20_simulate(%struct.State* %0, i64 %247, %struct.Memory* %MEMORY.0)
  %249 = load i64, i64* %RAX
  %250 = load i64, i64* %RBP
  %251 = sub i64 %250, 52
  %252 = load i64, i64* %PC
  %253 = add i64 %252, 3
  store i64 %253, i64* %PC
  %254 = trunc i64 %249 to i32
  %255 = inttoptr i64 %251 to i32*
  %256 = load i32, i32* %255
  %257 = add i32 %256, %254
  %258 = zext i32 %257 to i64
  store i64 %258, i64* %RAX, align 8, !tbaa !2428
  %259 = icmp ult i32 %257, %254
  %260 = icmp ult i32 %257, %256
  %261 = or i1 %259, %260
  %262 = zext i1 %261 to i8
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %262, i8* %263, align 1, !tbaa !2432
  %264 = and i32 %257, 255
  %265 = call i32 @llvm.ctpop.i32(i32 %264) #16
  %266 = trunc i32 %265 to i8
  %267 = and i8 %266, 1
  %268 = xor i8 %267, 1
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %268, i8* %269, align 1, !tbaa !2446
  %270 = xor i32 %256, %254
  %271 = xor i32 %270, %257
  %272 = lshr i32 %271, 4
  %273 = trunc i32 %272 to i8
  %274 = and i8 %273, 1
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %274, i8* %275, align 1, !tbaa !2450
  %276 = icmp eq i32 %257, 0
  %277 = zext i1 %276 to i8
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %277, i8* %278, align 1, !tbaa !2447
  %279 = lshr i32 %257, 31
  %280 = trunc i32 %279 to i8
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %280, i8* %281, align 1, !tbaa !2448
  %282 = lshr i32 %254, 31
  %283 = lshr i32 %256, 31
  %284 = xor i32 %279, %282
  %285 = xor i32 %279, %283
  %286 = add nuw nsw i32 %284, %285
  %287 = icmp eq i32 %286, 2
  %288 = zext i1 %287 to i8
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %288, i8* %289, align 1, !tbaa !2449
  %290 = load i64, i64* %RBP
  %291 = sub i64 %290, 52
  %292 = load i32, i32* %EAX
  %293 = zext i32 %292 to i64
  %294 = load i64, i64* %PC
  %295 = add i64 %294, 3
  store i64 %295, i64* %PC
  %296 = inttoptr i64 %291 to i32*
  store i32 %292, i32* %296
  %297 = load i64, i64* %RBP
  %298 = sub i64 %297, 56
  %299 = load i64, i64* %PC
  %300 = add i64 %299, 3
  store i64 %300, i64* %PC
  %301 = inttoptr i64 %298 to i32*
  %302 = load i32, i32* %301
  %303 = zext i32 %302 to i64
  store i64 %303, i64* %RAX, align 8, !tbaa !2428
  %304 = load i64, i64* %RAX
  %305 = load i64, i64* %PC
  %306 = add i64 %305, 3
  store i64 %306, i64* %PC
  %307 = trunc i64 %304 to i32
  %308 = add i32 1, %307
  %309 = zext i32 %308 to i64
  store i64 %309, i64* %RAX, align 8, !tbaa !2428
  %310 = icmp ult i32 %308, %307
  %311 = icmp ult i32 %308, 1
  %312 = or i1 %310, %311
  %313 = zext i1 %312 to i8
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %313, i8* %314, align 1, !tbaa !2432
  %315 = and i32 %308, 255
  %316 = call i32 @llvm.ctpop.i32(i32 %315) #16
  %317 = trunc i32 %316 to i8
  %318 = and i8 %317, 1
  %319 = xor i8 %318, 1
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %319, i8* %320, align 1, !tbaa !2446
  %321 = xor i64 1, %304
  %322 = trunc i64 %321 to i32
  %323 = xor i32 %322, %308
  %324 = lshr i32 %323, 4
  %325 = trunc i32 %324 to i8
  %326 = and i8 %325, 1
  %327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %326, i8* %327, align 1, !tbaa !2450
  %328 = icmp eq i32 %308, 0
  %329 = zext i1 %328 to i8
  %330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %329, i8* %330, align 1, !tbaa !2447
  %331 = lshr i32 %308, 31
  %332 = trunc i32 %331 to i8
  %333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %332, i8* %333, align 1, !tbaa !2448
  %334 = lshr i32 %307, 31
  %335 = xor i32 %331, %334
  %336 = add nuw nsw i32 %335, %331
  %337 = icmp eq i32 %336, 2
  %338 = zext i1 %337 to i8
  %339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %338, i8* %339, align 1, !tbaa !2449
  %340 = load i64, i64* %RBP
  %341 = sub i64 %340, 56
  %342 = load i32, i32* %EAX
  %343 = zext i32 %342 to i64
  %344 = load i64, i64* %PC
  %345 = add i64 %344, 3
  store i64 %345, i64* %PC
  %346 = inttoptr i64 %341 to i32*
  store i32 %342, i32* %346
  %347 = load i64, i64* %PC
  %348 = sub i64 %347, 53
  %349 = load i64, i64* %PC
  %350 = add i64 %349, 5
  store i64 %350, i64* %PC
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %348, i64* %351, align 8, !tbaa !2428
  br label %block_400a72

block_4007fa:                                     ; preds = %block_400790
  %352 = sub i64 %217, 56
  %353 = load i64, i64* %PC
  %354 = add i64 %353, 7
  store i64 %354, i64* %PC
  %355 = inttoptr i64 %352 to i32*
  store i32 1, i32* %355
  br label %block_400801

block_400877:                                     ; preds = %block_400842
  %356 = load i64, i64* %RBP
  %357 = sub i64 %356, 182
  %358 = load i64, i64* %PC
  %359 = add i64 %358, 9
  store i64 %359, i64* %PC
  %360 = inttoptr i64 %357 to i16*
  store i16 1, i16* %360
  br label %block_400880

block_4009f5:                                     ; preds = %block_4009c8
  %361 = sub i64 %602, 56
  %362 = load i64, i64* %PC
  %363 = add i64 %362, 7
  store i64 %363, i64* %PC
  %364 = inttoptr i64 %361 to i32*
  store i32 0, i32* %364
  br label %block_4009fc

block_400a72:                                     ; preds = %block_400a42, %block_400a7e
  %MEMORY.0 = phi %struct.Memory* [ %1202, %block_400a42 ], [ %248, %block_400a7e ]
  %365 = load i64, i64* %RBP
  %366 = sub i64 %365, 56
  %367 = load i64, i64* %PC
  %368 = add i64 %367, 3
  store i64 %368, i64* %PC
  %369 = inttoptr i64 %366 to i32*
  %370 = load i32, i32* %369
  %371 = zext i32 %370 to i64
  store i64 %371, i64* %RAX, align 8, !tbaa !2428
  %372 = load i32, i32* %EAX
  %373 = zext i32 %372 to i64
  %374 = load i64, i64* %RBP
  %375 = sub i64 %374, 48
  %376 = load i64, i64* %PC
  %377 = add i64 %376, 3
  store i64 %377, i64* %PC
  %378 = inttoptr i64 %375 to i32*
  %379 = load i32, i32* %378
  %380 = sub i32 %372, %379
  %381 = icmp ult i32 %372, %379
  %382 = zext i1 %381 to i8
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %382, i8* %383, align 1, !tbaa !2432
  %384 = and i32 %380, 255
  %385 = call i32 @llvm.ctpop.i32(i32 %384) #16
  %386 = trunc i32 %385 to i8
  %387 = and i8 %386, 1
  %388 = xor i8 %387, 1
  %389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %388, i8* %389, align 1, !tbaa !2446
  %390 = xor i32 %379, %372
  %391 = xor i32 %390, %380
  %392 = lshr i32 %391, 4
  %393 = trunc i32 %392 to i8
  %394 = and i8 %393, 1
  %395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %394, i8* %395, align 1, !tbaa !2450
  %396 = icmp eq i32 %380, 0
  %397 = zext i1 %396 to i8
  %398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %397, i8* %398, align 1, !tbaa !2447
  %399 = lshr i32 %380, 31
  %400 = trunc i32 %399 to i8
  %401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %400, i8* %401, align 1, !tbaa !2448
  %402 = lshr i32 %372, 31
  %403 = lshr i32 %379, 31
  %404 = xor i32 %403, %402
  %405 = xor i32 %399, %402
  %406 = add nuw nsw i32 %405, %404
  %407 = icmp eq i32 %406, 2
  %408 = zext i1 %407 to i8
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %408, i8* %409, align 1, !tbaa !2449
  %410 = load i64, i64* %PC
  %411 = add i64 %410, 52
  %412 = load i64, i64* %PC
  %413 = add i64 %412, 6
  %414 = load i64, i64* %PC
  %415 = add i64 %414, 6
  store i64 %415, i64* %PC
  %416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %417 = load i8, i8* %416, align 1, !tbaa !2448
  %418 = icmp ne i8 %417, 0
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %420 = load i8, i8* %419, align 1, !tbaa !2449
  %421 = icmp ne i8 %420, 0
  %422 = xor i1 %418, %421
  %423 = xor i1 %422, true
  %424 = zext i1 %423 to i8
  store i8 %424, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %426 = select i1 %422, i64 %413, i64 %411
  store i64 %426, i64* %425, align 8, !tbaa !2428
  %427 = load i8, i8* %BRANCH_TAKEN
  %428 = icmp eq i8 %427, 1
  %429 = load i64, i64* %PC
  %430 = add i64 %429, 5
  br i1 %428, label %block_400aac, label %block_400a7e

block_400957:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit
  %431 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %432 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %433 = bitcast %union.vec128_t* %XMM0 to i8*
  %434 = load i64, i64* %PC
  %435 = add i64 %434, 3
  store i64 %435, i64* %PC
  %436 = bitcast i8* %432 to i64*
  %437 = load i64, i64* %436, align 1
  %438 = getelementptr inbounds i8, i8* %432, i64 8
  %439 = bitcast i8* %438 to i64*
  %440 = load i64, i64* %439, align 1
  %441 = bitcast i8* %433 to i64*
  %442 = load i64, i64* %441, align 1
  %443 = getelementptr inbounds i8, i8* %433, i64 8
  %444 = bitcast i8* %443 to i64*
  %445 = load i64, i64* %444, align 1
  %446 = xor i64 %442, %437
  %447 = xor i64 %445, %440
  %448 = trunc i64 %446 to i32
  %449 = lshr i64 %446, 32
  %450 = trunc i64 %449 to i32
  %451 = bitcast i8* %431 to i32*
  store i32 %448, i32* %451, align 1, !tbaa !2451
  %452 = getelementptr inbounds i8, i8* %431, i64 4
  %453 = bitcast i8* %452 to i32*
  store i32 %450, i32* %453, align 1, !tbaa !2451
  %454 = trunc i64 %447 to i32
  %455 = getelementptr inbounds i8, i8* %431, i64 8
  %456 = bitcast i8* %455 to i32*
  store i32 %454, i32* %456, align 1, !tbaa !2451
  %457 = lshr i64 %447, 32
  %458 = trunc i64 %457 to i32
  %459 = getelementptr inbounds i8, i8* %431, i64 12
  %460 = bitcast i8* %459 to i32*
  store i32 %458, i32* %460, align 1, !tbaa !2451
  %461 = bitcast %union.vec128_t* %XMM0 to i8*
  %462 = load i64, i64* %RBP
  %463 = sub i64 %462, 64
  %464 = load i64, i64* %PC
  %465 = add i64 %464, 5
  store i64 %465, i64* %PC
  %466 = bitcast i8* %461 to double*
  %467 = load double, double* %466, align 1
  %468 = inttoptr i64 %463 to double*
  %469 = load double, double* %468
  %470 = fcmp uno double %467, %469
  br i1 %470, label %471, label %483

; <label>:471:                                    ; preds = %block_400957
  %472 = fadd double %467, %469
  %473 = bitcast double %472 to i64
  %474 = and i64 %473, 9221120237041090560
  %475 = icmp eq i64 %474, 9218868437227405312
  %476 = and i64 %473, 2251799813685247
  %477 = icmp ne i64 %476, 0
  %478 = and i1 %475, %477
  br i1 %478, label %479, label %489

; <label>:479:                                    ; preds = %471
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %481 = load i64, i64* %480, align 8, !tbaa !2428
  %482 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %481, %struct.Memory* %748) #17
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:483:                                    ; preds = %block_400957
  %484 = fcmp ogt double %467, %469
  br i1 %484, label %489, label %485

; <label>:485:                                    ; preds = %483
  %486 = fcmp olt double %467, %469
  br i1 %486, label %489, label %487

; <label>:487:                                    ; preds = %485
  %488 = fcmp oeq double %467, %469
  br i1 %488, label %489, label %496

; <label>:489:                                    ; preds = %487, %485, %483, %471
  %490 = phi i8 [ 0, %483 ], [ 0, %485 ], [ 1, %487 ], [ 1, %471 ]
  %491 = phi i8 [ 0, %483 ], [ 0, %485 ], [ 0, %487 ], [ 1, %471 ]
  %492 = phi i8 [ 0, %483 ], [ 1, %485 ], [ 0, %487 ], [ 1, %471 ]
  %493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %490, i8* %493, align 1, !tbaa !2452
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %491, i8* %494, align 1, !tbaa !2452
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %492, i8* %495, align 1, !tbaa !2452
  br label %496

; <label>:496:                                    ; preds = %489, %487
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %497, align 1, !tbaa !2452
  %498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %498, align 1, !tbaa !2452
  %499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %499, align 1, !tbaa !2452
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %479, %496
  %500 = phi %struct.Memory* [ %482, %479 ], [ %748, %496 ]
  %501 = load i64, i64* %PC
  %502 = add i64 %501, 41
  %503 = load i64, i64* %PC
  %504 = add i64 %503, 6
  %505 = load i64, i64* %PC
  %506 = add i64 %505, 6
  store i64 %506, i64* %PC
  %507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %508 = load i8, i8* %507, align 1, !tbaa !2432
  %509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %510 = load i8, i8* %509, align 1, !tbaa !2447
  %511 = or i8 %510, %508
  %512 = icmp ne i8 %511, 0
  %513 = zext i1 %512 to i8
  store i8 %513, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %515 = select i1 %512, i64 %502, i64 %504
  store i64 %515, i64* %514, align 8, !tbaa !2428
  %516 = load i8, i8* %BRANCH_TAKEN
  %517 = icmp eq i8 %516, 1
  br i1 %517, label %block_400988, label %block_400965

block_4009c8:                                     ; preds = %block_400988
  %518 = load i64, i64* %RBP
  %519 = sub i64 %518, 182
  %520 = load i64, i64* %PC
  %521 = add i64 %520, 7
  store i64 %521, i64* %PC
  store i64 %519, i64* %RDI, align 8, !tbaa !2428
  %522 = load i64, i64* %PC
  %523 = sub i64 %522, 879
  %524 = load i64, i64* %PC
  %525 = add i64 %524, 5
  %526 = load i64, i64* %PC
  %527 = add i64 %526, 5
  store i64 %527, i64* %PC
  %528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %529 = load i64, i64* %528, align 8, !tbaa !2428
  %530 = add i64 %529, -8
  %531 = inttoptr i64 %530 to i64*
  store i64 %525, i64* %531
  store i64 %530, i64* %528, align 8, !tbaa !2428
  %532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %523, i64* %532, align 8, !tbaa !2428
  %533 = load i64, i64* %PC
  %534 = call %struct.Memory* @ext_400660_seed48(%struct.State* %0, i64 %533, %struct.Memory* %1078)
  %535 = load i64, i64* %RBP
  %536 = sub i64 %535, 40
  %537 = load i64, i64* %PC
  %538 = add i64 %537, 4
  store i64 %538, i64* %PC
  store i64 %536, i64* %RDI, align 8, !tbaa !2428
  %539 = load i64, i64* %RBP
  %540 = sub i64 %539, 224
  %541 = load i64, i64* %RAX
  %542 = load i64, i64* %PC
  %543 = add i64 %542, 7
  store i64 %543, i64* %PC
  %544 = inttoptr i64 %540 to i64*
  store i64 %541, i64* %544
  %545 = load i64, i64* %PC
  %546 = add i64 %545, 353
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
  %557 = call %struct.Memory* @sub_400b40_create_link_list(%struct.State* %0, i64 %556, %struct.Memory* %534)
  %558 = load i64, i64* %RBP
  %559 = sub i64 %558, 52
  %560 = load i64, i64* %PC
  %561 = add i64 %560, 7
  store i64 %561, i64* %PC
  %562 = inttoptr i64 %559 to i32*
  store i32 0, i32* %562
  %563 = load i64, i64* %RBP
  %564 = sub i64 %563, 44
  %565 = load i64, i64* %PC
  %566 = add i64 %565, 4
  store i64 %566, i64* %PC
  %567 = inttoptr i64 %564 to i32*
  %568 = load i32, i32* %567
  %569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %569, align 1, !tbaa !2432
  %570 = and i32 %568, 255
  %571 = call i32 @llvm.ctpop.i32(i32 %570) #16
  %572 = trunc i32 %571 to i8
  %573 = and i8 %572, 1
  %574 = xor i8 %573, 1
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %574, i8* %575, align 1, !tbaa !2446
  %576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %576, align 1, !tbaa !2450
  %577 = icmp eq i32 %568, 0
  %578 = zext i1 %577 to i8
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %578, i8* %579, align 1, !tbaa !2447
  %580 = lshr i32 %568, 31
  %581 = trunc i32 %580 to i8
  %582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %581, i8* %582, align 1, !tbaa !2448
  %583 = lshr i32 %568, 31
  %584 = xor i32 %580, %583
  %585 = add nuw nsw i32 %584, %583
  %586 = icmp eq i32 %585, 2
  %587 = zext i1 %586 to i8
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %587, i8* %588, align 1, !tbaa !2449
  %589 = load i64, i64* %PC
  %590 = add i64 %589, 83
  %591 = load i64, i64* %PC
  %592 = add i64 %591, 6
  %593 = load i64, i64* %PC
  %594 = add i64 %593, 6
  store i64 %594, i64* %PC
  %595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %596 = load i8, i8* %595, align 1, !tbaa !2447
  store i8 %596, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %598 = icmp ne i8 %596, 0
  %599 = select i1 %598, i64 %590, i64 %592
  store i64 %599, i64* %597, align 8, !tbaa !2428
  %600 = load i8, i8* %BRANCH_TAKEN
  %601 = icmp eq i8 %600, 1
  %602 = load i64, i64* %RBP
  br i1 %601, label %block_400a42, label %block_4009f5

block_4008c5:                                     ; preds = %block_4008bc, %block_40088a
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.9, %block_4008bc ], [ %899, %block_40088a ]
  %603 = load i64, i64* %RBP
  %604 = sub i64 %603, 16
  %605 = load i64, i64* %PC
  %606 = add i64 %605, 4
  store i64 %606, i64* %PC
  %607 = inttoptr i64 %604 to i32*
  %608 = load i32, i32* %607
  %609 = sub i32 %608, 9
  %610 = icmp ult i32 %608, 9
  %611 = zext i1 %610 to i8
  %612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %611, i8* %612, align 1, !tbaa !2432
  %613 = and i32 %609, 255
  %614 = call i32 @llvm.ctpop.i32(i32 %613) #16
  %615 = trunc i32 %614 to i8
  %616 = and i8 %615, 1
  %617 = xor i8 %616, 1
  %618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %617, i8* %618, align 1, !tbaa !2446
  %619 = xor i32 %608, 9
  %620 = xor i32 %619, %609
  %621 = lshr i32 %620, 4
  %622 = trunc i32 %621 to i8
  %623 = and i8 %622, 1
  %624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %623, i8* %624, align 1, !tbaa !2450
  %625 = icmp eq i32 %609, 0
  %626 = zext i1 %625 to i8
  %627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %626, i8* %627, align 1, !tbaa !2447
  %628 = lshr i32 %609, 31
  %629 = trunc i32 %628 to i8
  %630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %629, i8* %630, align 1, !tbaa !2448
  %631 = lshr i32 %608, 31
  %632 = xor i32 %628, %631
  %633 = add nuw nsw i32 %632, %631
  %634 = icmp eq i32 %633, 2
  %635 = zext i1 %634 to i8
  %636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %635, i8* %636, align 1, !tbaa !2449
  %637 = load i64, i64* %PC
  %638 = add i64 %637, 56
  %639 = load i64, i64* %PC
  %640 = add i64 %639, 6
  %641 = load i64, i64* %PC
  %642 = add i64 %641, 6
  store i64 %642, i64* %PC
  %643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %644 = load i8, i8* %643, align 1, !tbaa !2447
  %645 = icmp ne i8 %644, 0
  %646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %647 = load i8, i8* %646, align 1, !tbaa !2448
  %648 = icmp ne i8 %647, 0
  %649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %650 = load i8, i8* %649, align 1, !tbaa !2449
  %651 = icmp ne i8 %650, 0
  %652 = xor i1 %648, %651
  %653 = or i1 %645, %652
  %654 = zext i1 %653 to i8
  store i8 %654, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %656 = select i1 %653, i64 %638, i64 %640
  store i64 %656, i64* %655, align 8, !tbaa !2428
  %657 = load i8, i8* %BRANCH_TAKEN
  %658 = icmp eq i8 %657, 1
  br i1 %658, label %block_400901, label %block_4008cf

block_400965:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %MEMORY.2 = phi %struct.Memory* [ %748, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit ], [ %500, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit ]
  %659 = load i64, i64* %PC
  %660 = add i64 %659, 10
  store i64 %660, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4010a0__rodata_type* @seg_4010a0__rodata to i64), i64 74), i64* %RDI, align 8, !tbaa !2428
  %661 = load i64, i64* %PC
  %662 = add i64 %661, 2
  store i64 %662, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2452
  %663 = load i64, i64* %PC
  %664 = sub i64 %663, 817
  %665 = load i64, i64* %PC
  %666 = add i64 %665, 5
  %667 = load i64, i64* %PC
  %668 = add i64 %667, 5
  store i64 %668, i64* %PC
  %669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %670 = load i64, i64* %669, align 8, !tbaa !2428
  %671 = add i64 %670, -8
  %672 = inttoptr i64 %671 to i64*
  store i64 %666, i64* %672
  store i64 %671, i64* %669, align 8, !tbaa !2428
  %673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %664, i64* %673, align 8, !tbaa !2428
  %674 = load i64, i64* %PC
  %675 = call %struct.Memory* @ext_602090_printf(%struct.State* %0, i64 %674, %struct.Memory* %MEMORY.2)
  %676 = load i64, i64* %RBP
  %677 = sub i64 %676, 12
  %678 = load i64, i64* %PC
  %679 = add i64 %678, 7
  store i64 %679, i64* %PC
  %680 = inttoptr i64 %677 to i32*
  store i32 3, i32* %680
  %681 = load i64, i64* %RBP
  %682 = sub i64 %681, 212
  %683 = load i32, i32* %EAX
  %684 = zext i32 %683 to i64
  %685 = load i64, i64* %PC
  %686 = add i64 %685, 6
  store i64 %686, i64* %PC
  %687 = inttoptr i64 %682 to i32*
  store i32 %683, i32* %687
  %688 = load i64, i64* %PC
  %689 = add i64 %688, 432
  %690 = load i64, i64* %PC
  %691 = add i64 %690, 5
  store i64 %691, i64* %PC
  %692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %689, i64* %692, align 8, !tbaa !2428
  br label %block_400b33

block_400940:                                     ; preds = %block_40090a
  %693 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %694 = load i64, i64* %PC
  %695 = add i64 %694, 8
  store i64 %695, i64* %PC
  %696 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4010a0__rodata_type* @seg_4010a0__rodata to i64), i64 16) to double*)
  %697 = bitcast i8* %693 to double*
  store double %696, double* %697, align 1, !tbaa !2453
  %698 = getelementptr inbounds i8, i8* %693, i64 8
  %699 = bitcast i8* %698 to double*
  store double 0.000000e+00, double* %699, align 1, !tbaa !2453
  %700 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %701 = load i64, i64* %RBP
  %702 = sub i64 %701, 64
  %703 = load i64, i64* %PC
  %704 = add i64 %703, 5
  store i64 %704, i64* %PC
  %705 = inttoptr i64 %702 to double*
  %706 = load double, double* %705
  %707 = bitcast i8* %700 to double*
  store double %706, double* %707, align 1, !tbaa !2453
  %708 = getelementptr inbounds i8, i8* %700, i64 8
  %709 = bitcast i8* %708 to double*
  store double 0.000000e+00, double* %709, align 1, !tbaa !2453
  %710 = bitcast %union.vec128_t* %XMM1 to i8*
  %711 = bitcast %union.vec128_t* %XMM0 to i8*
  %712 = load i64, i64* %PC
  %713 = add i64 %712, 4
  store i64 %713, i64* %PC
  %714 = bitcast i8* %710 to double*
  %715 = load double, double* %714, align 1
  %716 = bitcast i8* %711 to double*
  %717 = load double, double* %716, align 1
  %718 = fcmp uno double %715, %717
  br i1 %718, label %719, label %731

; <label>:719:                                    ; preds = %block_400940
  %720 = fadd double %715, %717
  %721 = bitcast double %720 to i64
  %722 = and i64 %721, 9221120237041090560
  %723 = icmp eq i64 %722, 9218868437227405312
  %724 = and i64 %721, 2251799813685247
  %725 = icmp ne i64 %724, 0
  %726 = and i1 %723, %725
  br i1 %726, label %727, label %737

; <label>:727:                                    ; preds = %719
  %728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %729 = load i64, i64* %728, align 8, !tbaa !2428
  %730 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %729, %struct.Memory* %MEMORY.7) #17
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:731:                                    ; preds = %block_400940
  %732 = fcmp ogt double %715, %717
  br i1 %732, label %737, label %733

; <label>:733:                                    ; preds = %731
  %734 = fcmp olt double %715, %717
  br i1 %734, label %737, label %735

; <label>:735:                                    ; preds = %733
  %736 = fcmp oeq double %715, %717
  br i1 %736, label %737, label %744

; <label>:737:                                    ; preds = %735, %733, %731, %719
  %738 = phi i8 [ 0, %731 ], [ 0, %733 ], [ 1, %735 ], [ 1, %719 ]
  %739 = phi i8 [ 0, %731 ], [ 0, %733 ], [ 0, %735 ], [ 1, %719 ]
  %740 = phi i8 [ 0, %731 ], [ 1, %733 ], [ 0, %735 ], [ 1, %719 ]
  %741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %738, i8* %741, align 1, !tbaa !2452
  %742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %739, i8* %742, align 1, !tbaa !2452
  %743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %740, i8* %743, align 1, !tbaa !2452
  br label %744

; <label>:744:                                    ; preds = %737, %735
  %745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %745, align 1, !tbaa !2452
  %746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %746, align 1, !tbaa !2452
  %747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %747, align 1, !tbaa !2452
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %727, %744
  %748 = phi %struct.Memory* [ %730, %727 ], [ %MEMORY.7, %744 ]
  %749 = load i64, i64* %PC
  %750 = add i64 %749, 20
  %751 = load i64, i64* %PC
  %752 = add i64 %751, 6
  %753 = load i64, i64* %PC
  %754 = add i64 %753, 6
  store i64 %754, i64* %PC
  %755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %756 = load i8, i8* %755, align 1, !tbaa !2432
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %758 = load i8, i8* %757, align 1, !tbaa !2447
  %759 = or i8 %758, %756
  %760 = icmp eq i8 %759, 0
  %761 = zext i1 %760 to i8
  store i8 %761, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %763 = select i1 %760, i64 %750, i64 %752
  store i64 %763, i64* %762, align 8, !tbaa !2428
  %764 = load i8, i8* %BRANCH_TAKEN
  %765 = icmp eq i8 %764, 1
  br i1 %765, label %block_400965, label %block_400957

block_4009fc:                                     ; preds = %block_400a08, %block_4009f5
  %MEMORY.3 = phi %struct.Memory* [ %557, %block_4009f5 ], [ %1732, %block_400a08 ]
  %766 = load i64, i64* %RBP
  %767 = sub i64 %766, 56
  %768 = load i64, i64* %PC
  %769 = add i64 %768, 3
  store i64 %769, i64* %PC
  %770 = inttoptr i64 %767 to i32*
  %771 = load i32, i32* %770
  %772 = zext i32 %771 to i64
  store i64 %772, i64* %RAX, align 8, !tbaa !2428
  %773 = load i32, i32* %EAX
  %774 = zext i32 %773 to i64
  %775 = load i64, i64* %RBP
  %776 = sub i64 %775, 48
  %777 = load i64, i64* %PC
  %778 = add i64 %777, 3
  store i64 %778, i64* %PC
  %779 = inttoptr i64 %776 to i32*
  %780 = load i32, i32* %779
  %781 = sub i32 %773, %780
  %782 = icmp ult i32 %773, %780
  %783 = zext i1 %782 to i8
  %784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %783, i8* %784, align 1, !tbaa !2432
  %785 = and i32 %781, 255
  %786 = call i32 @llvm.ctpop.i32(i32 %785) #16
  %787 = trunc i32 %786 to i8
  %788 = and i8 %787, 1
  %789 = xor i8 %788, 1
  %790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %789, i8* %790, align 1, !tbaa !2446
  %791 = xor i32 %780, %773
  %792 = xor i32 %791, %781
  %793 = lshr i32 %792, 4
  %794 = trunc i32 %793 to i8
  %795 = and i8 %794, 1
  %796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %795, i8* %796, align 1, !tbaa !2450
  %797 = icmp eq i32 %781, 0
  %798 = zext i1 %797 to i8
  %799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %798, i8* %799, align 1, !tbaa !2447
  %800 = lshr i32 %781, 31
  %801 = trunc i32 %800 to i8
  %802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %801, i8* %802, align 1, !tbaa !2448
  %803 = lshr i32 %773, 31
  %804 = lshr i32 %780, 31
  %805 = xor i32 %804, %803
  %806 = xor i32 %800, %803
  %807 = add nuw nsw i32 %806, %805
  %808 = icmp eq i32 %807, 2
  %809 = zext i1 %808 to i8
  %810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %809, i8* %810, align 1, !tbaa !2449
  %811 = load i64, i64* %PC
  %812 = add i64 %811, 59
  %813 = load i64, i64* %PC
  %814 = add i64 %813, 6
  %815 = load i64, i64* %PC
  %816 = add i64 %815, 6
  store i64 %816, i64* %PC
  %817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %818 = load i8, i8* %817, align 1, !tbaa !2448
  %819 = icmp ne i8 %818, 0
  %820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %821 = load i8, i8* %820, align 1, !tbaa !2449
  %822 = icmp ne i8 %821, 0
  %823 = xor i1 %819, %822
  %824 = xor i1 %823, true
  %825 = zext i1 %824 to i8
  store i8 %825, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %827 = select i1 %823, i64 %814, i64 %812
  store i64 %827, i64* %826, align 8, !tbaa !2428
  %828 = load i8, i8* %BRANCH_TAKEN
  %829 = icmp eq i8 %828, 1
  br i1 %829, label %block_400a3d, label %block_400a08

block_40088a:                                     ; preds = %block_400880
  %830 = load i64, i64* %PC
  %831 = add i64 %830, 10
  store i64 %831, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4010a0__rodata_type* @seg_4010a0__rodata to i64), i64 40), i64* %RSI, align 8, !tbaa !2428
  %832 = load i64, i64* %RBP
  %833 = sub i64 %832, 182
  %834 = load i64, i64* %PC
  %835 = add i64 %834, 7
  store i64 %835, i64* %PC
  store i64 %833, i64* %RAX, align 8, !tbaa !2428
  %836 = load i64, i64* %RBP
  %837 = sub i64 %836, 24
  %838 = load i64, i64* %PC
  %839 = add i64 %838, 4
  store i64 %839, i64* %PC
  %840 = inttoptr i64 %837 to i64*
  %841 = load i64, i64* %840
  store i64 %841, i64* %RCX, align 8, !tbaa !2428
  %842 = load i64, i64* %RCX
  %843 = add i64 %842, 64
  %844 = load i64, i64* %PC
  %845 = add i64 %844, 4
  store i64 %845, i64* %PC
  %846 = inttoptr i64 %843 to i64*
  %847 = load i64, i64* %846
  store i64 %847, i64* %RDI, align 8, !tbaa !2428
  %848 = load i64, i64* %RAX
  %849 = load i64, i64* %PC
  %850 = add i64 %849, 4
  store i64 %850, i64* %PC
  %851 = add i64 2, %848
  store i64 %851, i64* %RAX, align 8, !tbaa !2428
  %852 = icmp ult i64 %851, %848
  %853 = icmp ult i64 %851, 2
  %854 = or i1 %852, %853
  %855 = zext i1 %854 to i8
  %856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %855, i8* %856, align 1, !tbaa !2432
  %857 = trunc i64 %851 to i32
  %858 = and i32 %857, 255
  %859 = call i32 @llvm.ctpop.i32(i32 %858) #16
  %860 = trunc i32 %859 to i8
  %861 = and i8 %860, 1
  %862 = xor i8 %861, 1
  %863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %862, i8* %863, align 1, !tbaa !2446
  %864 = xor i64 2, %848
  %865 = xor i64 %864, %851
  %866 = lshr i64 %865, 4
  %867 = trunc i64 %866 to i8
  %868 = and i8 %867, 1
  %869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %868, i8* %869, align 1, !tbaa !2450
  %870 = icmp eq i64 %851, 0
  %871 = zext i1 %870 to i8
  %872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %871, i8* %872, align 1, !tbaa !2447
  %873 = lshr i64 %851, 63
  %874 = trunc i64 %873 to i8
  %875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %874, i8* %875, align 1, !tbaa !2448
  %876 = lshr i64 %848, 63
  %877 = xor i64 %873, %876
  %878 = add nuw nsw i64 %877, %873
  %879 = icmp eq i64 %878, 2
  %880 = zext i1 %879 to i8
  %881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %880, i8* %881, align 1, !tbaa !2449
  %882 = load i64, i64* %RAX
  %883 = load i64, i64* %PC
  %884 = add i64 %883, 3
  store i64 %884, i64* %PC
  store i64 %882, i64* %RDX, align 8, !tbaa !2428
  %885 = load i64, i64* %PC
  %886 = add i64 %885, 2
  store i64 %886, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2452
  %887 = load i64, i64* %PC
  %888 = sub i64 %887, 556
  %889 = load i64, i64* %PC
  %890 = add i64 %889, 5
  %891 = load i64, i64* %PC
  %892 = add i64 %891, 5
  store i64 %892, i64* %PC
  %893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %894 = load i64, i64* %893, align 8, !tbaa !2428
  %895 = add i64 %894, -8
  %896 = inttoptr i64 %895 to i64*
  store i64 %890, i64* %896
  store i64 %895, i64* %893, align 8, !tbaa !2428
  %897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %888, i64* %897, align 8, !tbaa !2428
  %898 = load i64, i64* %PC
  %899 = call %struct.Memory* @ext_400680___isoc99_sscanf(%struct.State* %0, i64 %898, %struct.Memory* %MEMORY.9)
  %900 = load i64, i64* %RBP
  %901 = sub i64 %900, 200
  %902 = load i32, i32* %EAX
  %903 = zext i32 %902 to i64
  %904 = load i64, i64* %PC
  %905 = add i64 %904, 6
  store i64 %905, i64* %PC
  %906 = inttoptr i64 %901 to i32*
  store i32 %902, i32* %906
  %907 = load i64, i64* %PC
  %908 = add i64 %907, 14
  %909 = load i64, i64* %PC
  %910 = add i64 %909, 5
  store i64 %910, i64* %PC
  %911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %908, i64* %911, align 8, !tbaa !2428
  br label %block_4008c5

block_4008bc:                                     ; preds = %block_400880
  %912 = load i64, i64* %RBP
  %913 = sub i64 %912, 180
  %914 = load i64, i64* %PC
  %915 = add i64 %914, 9
  store i64 %915, i64* %PC
  %916 = inttoptr i64 %913 to i16*
  store i16 0, i16* %916
  br label %block_4008c5

block_400b33:                                     ; preds = %block_400918, %block_4009a5, %block_400ab1, %block_400965
  %MEMORY.4 = phi %struct.Memory* [ %675, %block_400965 ], [ %1402, %block_400ab1 ], [ %1431, %block_4009a5 ], [ %1467, %block_400918 ]
  %917 = load i64, i64* %RBP
  %918 = sub i64 %917, 12
  %919 = load i64, i64* %PC
  %920 = add i64 %919, 3
  store i64 %920, i64* %PC
  %921 = inttoptr i64 %918 to i32*
  %922 = load i32, i32* %921
  %923 = zext i32 %922 to i64
  store i64 %923, i64* %RAX, align 8, !tbaa !2428
  %924 = load i64, i64* %RSP
  %925 = load i64, i64* %PC
  %926 = add i64 %925, 7
  store i64 %926, i64* %PC
  %927 = add i64 248, %924
  store i64 %927, i64* %RSP, align 8, !tbaa !2428
  %928 = icmp ult i64 %927, %924
  %929 = icmp ult i64 %927, 248
  %930 = or i1 %928, %929
  %931 = zext i1 %930 to i8
  %932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %931, i8* %932, align 1, !tbaa !2432
  %933 = trunc i64 %927 to i32
  %934 = and i32 %933, 255
  %935 = call i32 @llvm.ctpop.i32(i32 %934) #16
  %936 = trunc i32 %935 to i8
  %937 = and i8 %936, 1
  %938 = xor i8 %937, 1
  %939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %938, i8* %939, align 1, !tbaa !2446
  %940 = xor i64 248, %924
  %941 = xor i64 %940, %927
  %942 = lshr i64 %941, 4
  %943 = trunc i64 %942 to i8
  %944 = and i8 %943, 1
  %945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %944, i8* %945, align 1, !tbaa !2450
  %946 = icmp eq i64 %927, 0
  %947 = zext i1 %946 to i8
  %948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %947, i8* %948, align 1, !tbaa !2447
  %949 = lshr i64 %927, 63
  %950 = trunc i64 %949 to i8
  %951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %950, i8* %951, align 1, !tbaa !2448
  %952 = lshr i64 %924, 63
  %953 = xor i64 %949, %952
  %954 = add nuw nsw i64 %953, %949
  %955 = icmp eq i64 %954, 2
  %956 = zext i1 %955 to i8
  %957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %956, i8* %957, align 1, !tbaa !2449
  %958 = load i64, i64* %PC
  %959 = add i64 %958, 1
  store i64 %959, i64* %PC
  %960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %961 = load i64, i64* %960, align 8, !tbaa !2428
  %962 = add i64 %961, 8
  %963 = inttoptr i64 %961 to i64*
  %964 = load i64, i64* %963
  store i64 %964, i64* %RBX, align 8, !tbaa !2428
  store i64 %962, i64* %960, align 8, !tbaa !2428
  %965 = load i64, i64* %PC
  %966 = add i64 %965, 1
  store i64 %966, i64* %PC
  %967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %968 = load i64, i64* %967, align 8, !tbaa !2428
  %969 = add i64 %968, 8
  %970 = inttoptr i64 %968 to i64*
  %971 = load i64, i64* %970
  store i64 %971, i64* %RBP, align 8, !tbaa !2428
  store i64 %969, i64* %967, align 8, !tbaa !2428
  %972 = load i64, i64* %PC
  %973 = add i64 %972, 1
  store i64 %973, i64* %PC
  %974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %976 = load i64, i64* %975, align 8, !tbaa !2428
  %977 = inttoptr i64 %976 to i64*
  %978 = load i64, i64* %977
  store i64 %978, i64* %974, align 8, !tbaa !2428
  %979 = add i64 %976, 8
  store i64 %979, i64* %975, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.4

block_4008cf:                                     ; preds = %block_4008c5
  %980 = load i64, i64* %PC
  %981 = add i64 %980, 10
  store i64 %981, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4010a0__rodata_type* @seg_4010a0__rodata to i64), i64 40), i64* %RSI, align 8, !tbaa !2428
  %982 = load i64, i64* %RBP
  %983 = sub i64 %982, 182
  %984 = load i64, i64* %PC
  %985 = add i64 %984, 7
  store i64 %985, i64* %PC
  store i64 %983, i64* %RAX, align 8, !tbaa !2428
  %986 = load i64, i64* %RBP
  %987 = sub i64 %986, 24
  %988 = load i64, i64* %PC
  %989 = add i64 %988, 4
  store i64 %989, i64* %PC
  %990 = inttoptr i64 %987 to i64*
  %991 = load i64, i64* %990
  store i64 %991, i64* %RCX, align 8, !tbaa !2428
  %992 = load i64, i64* %RCX
  %993 = add i64 %992, 72
  %994 = load i64, i64* %PC
  %995 = add i64 %994, 4
  store i64 %995, i64* %PC
  %996 = inttoptr i64 %993 to i64*
  %997 = load i64, i64* %996
  store i64 %997, i64* %RDI, align 8, !tbaa !2428
  %998 = load i64, i64* %RAX
  %999 = load i64, i64* %PC
  %1000 = add i64 %999, 4
  store i64 %1000, i64* %PC
  %1001 = add i64 4, %998
  store i64 %1001, i64* %RAX, align 8, !tbaa !2428
  %1002 = icmp ult i64 %1001, %998
  %1003 = icmp ult i64 %1001, 4
  %1004 = or i1 %1002, %1003
  %1005 = zext i1 %1004 to i8
  %1006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1005, i8* %1006, align 1, !tbaa !2432
  %1007 = trunc i64 %1001 to i32
  %1008 = and i32 %1007, 255
  %1009 = call i32 @llvm.ctpop.i32(i32 %1008) #16
  %1010 = trunc i32 %1009 to i8
  %1011 = and i8 %1010, 1
  %1012 = xor i8 %1011, 1
  %1013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1012, i8* %1013, align 1, !tbaa !2446
  %1014 = xor i64 4, %998
  %1015 = xor i64 %1014, %1001
  %1016 = lshr i64 %1015, 4
  %1017 = trunc i64 %1016 to i8
  %1018 = and i8 %1017, 1
  %1019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1018, i8* %1019, align 1, !tbaa !2450
  %1020 = icmp eq i64 %1001, 0
  %1021 = zext i1 %1020 to i8
  %1022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1021, i8* %1022, align 1, !tbaa !2447
  %1023 = lshr i64 %1001, 63
  %1024 = trunc i64 %1023 to i8
  %1025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1024, i8* %1025, align 1, !tbaa !2448
  %1026 = lshr i64 %998, 63
  %1027 = xor i64 %1023, %1026
  %1028 = add nuw nsw i64 %1027, %1023
  %1029 = icmp eq i64 %1028, 2
  %1030 = zext i1 %1029 to i8
  %1031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1030, i8* %1031, align 1, !tbaa !2449
  %1032 = load i64, i64* %RAX
  %1033 = load i64, i64* %PC
  %1034 = add i64 %1033, 3
  store i64 %1034, i64* %PC
  store i64 %1032, i64* %RDX, align 8, !tbaa !2428
  %1035 = load i64, i64* %PC
  %1036 = add i64 %1035, 2
  store i64 %1036, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2452
  %1037 = load i64, i64* %PC
  %1038 = sub i64 %1037, 625
  %1039 = load i64, i64* %PC
  %1040 = add i64 %1039, 5
  %1041 = load i64, i64* %PC
  %1042 = add i64 %1041, 5
  store i64 %1042, i64* %PC
  %1043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1044 = load i64, i64* %1043, align 8, !tbaa !2428
  %1045 = add i64 %1044, -8
  %1046 = inttoptr i64 %1045 to i64*
  store i64 %1040, i64* %1046
  store i64 %1045, i64* %1043, align 8, !tbaa !2428
  %1047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1038, i64* %1047, align 8, !tbaa !2428
  %1048 = load i64, i64* %PC
  %1049 = call %struct.Memory* @ext_400680___isoc99_sscanf(%struct.State* %0, i64 %1048, %struct.Memory* %MEMORY.1)
  %1050 = load i64, i64* %RBP
  %1051 = sub i64 %1050, 204
  %1052 = load i32, i32* %EAX
  %1053 = zext i32 %1052 to i64
  %1054 = load i64, i64* %PC
  %1055 = add i64 %1054, 6
  store i64 %1055, i64* %PC
  %1056 = inttoptr i64 %1051 to i32*
  store i32 %1052, i32* %1056
  %1057 = load i64, i64* %PC
  %1058 = add i64 %1057, 14
  %1059 = load i64, i64* %PC
  %1060 = add i64 %1059, 5
  store i64 %1060, i64* %PC
  %1061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1058, i64* %1061, align 8, !tbaa !2428
  br label %block_40090a

block_400988:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %1062 = load i64, i64* %RBP
  %1063 = sub i64 %1062, 176
  %1064 = load i64, i64* %PC
  %1065 = add i64 %1064, 7
  store i64 %1065, i64* %PC
  store i64 %1063, i64* %RDI, align 8, !tbaa !2428
  %1066 = load i64, i64* %PC
  %1067 = sub i64 %1066, 863
  %1068 = load i64, i64* %PC
  %1069 = add i64 %1068, 5
  %1070 = load i64, i64* %PC
  %1071 = add i64 %1070, 5
  store i64 %1071, i64* %PC
  %1072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1073 = load i64, i64* %1072, align 8, !tbaa !2428
  %1074 = add i64 %1073, -8
  %1075 = inttoptr i64 %1074 to i64*
  store i64 %1069, i64* %1075
  store i64 %1074, i64* %1072, align 8, !tbaa !2428
  %1076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1067, i64* %1076, align 8, !tbaa !2428
  %1077 = load i64, i64* %PC
  %1078 = call %struct.Memory* @ext_6020d8_strlen(%struct.State* %0, i64 %1077, %struct.Memory* %500)
  %1079 = load i64, i64* %PC
  %1080 = add i64 %1079, 8
  store i64 %1080, i64* %PC
  %1081 = load i32, i32* bitcast (%reg_len_type* @reg_len to i32*)
  %1082 = sext i32 %1081 to i64
  store i64 %1082, i64* %RDI, align 8, !tbaa !2428
  %1083 = load i64, i64* %RAX
  %1084 = load i64, i64* %RDI
  %1085 = load i64, i64* %PC
  %1086 = add i64 %1085, 3
  store i64 %1086, i64* %PC
  %1087 = sub i64 %1083, %1084
  %1088 = icmp ult i64 %1083, %1084
  %1089 = zext i1 %1088 to i8
  %1090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1089, i8* %1090, align 1, !tbaa !2432
  %1091 = trunc i64 %1087 to i32
  %1092 = and i32 %1091, 255
  %1093 = call i32 @llvm.ctpop.i32(i32 %1092) #16
  %1094 = trunc i32 %1093 to i8
  %1095 = and i8 %1094, 1
  %1096 = xor i8 %1095, 1
  %1097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1096, i8* %1097, align 1, !tbaa !2446
  %1098 = xor i64 %1084, %1083
  %1099 = xor i64 %1098, %1087
  %1100 = lshr i64 %1099, 4
  %1101 = trunc i64 %1100 to i8
  %1102 = and i8 %1101, 1
  %1103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1102, i8* %1103, align 1, !tbaa !2450
  %1104 = icmp eq i64 %1087, 0
  %1105 = zext i1 %1104 to i8
  %1106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1105, i8* %1106, align 1, !tbaa !2447
  %1107 = lshr i64 %1087, 63
  %1108 = trunc i64 %1107 to i8
  %1109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1108, i8* %1109, align 1, !tbaa !2448
  %1110 = lshr i64 %1083, 63
  %1111 = lshr i64 %1084, 63
  %1112 = xor i64 %1111, %1110
  %1113 = xor i64 %1107, %1110
  %1114 = add nuw nsw i64 %1113, %1112
  %1115 = icmp eq i64 %1114, 2
  %1116 = zext i1 %1115 to i8
  %1117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1116, i8* %1117, align 1, !tbaa !2449
  %1118 = load i64, i64* %PC
  %1119 = add i64 %1118, 41
  %1120 = load i64, i64* %PC
  %1121 = add i64 %1120, 6
  %1122 = load i64, i64* %PC
  %1123 = add i64 %1122, 6
  store i64 %1123, i64* %PC
  %1124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1125 = load i8, i8* %1124, align 1, !tbaa !2447
  store i8 %1125, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %1126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1127 = icmp ne i8 %1125, 0
  %1128 = select i1 %1127, i64 %1119, i64 %1121
  store i64 %1128, i64* %1126, align 8, !tbaa !2428
  %1129 = load i8, i8* %BRANCH_TAKEN
  %1130 = icmp eq i8 %1129, 1
  br i1 %1130, label %block_4009c8, label %block_4009a5

block_400a3d:                                     ; preds = %block_4009fc
  %1131 = load i64, i64* %PC
  %1132 = add i64 %1131, 116
  %1133 = load i64, i64* %PC
  %1134 = add i64 %1133, 5
  store i64 %1134, i64* %PC
  %1135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1132, i64* %1135, align 8, !tbaa !2428
  br label %block_400ab1

block_400aac:                                     ; preds = %block_400a72
  %1136 = load i64, i64* %PC
  %1137 = add i64 %1136, 5
  store i64 %1137, i64* %PC
  %1138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %430, i64* %1138, align 8, !tbaa !2428
  br label %block_400ab1

block_40082b:                                     ; preds = %block_400801
  %1139 = sub i64 %1902, 176
  %1140 = load i64, i64* %PC
  %1141 = add i64 %1140, 7
  store i64 %1141, i64* %PC
  %1142 = inttoptr i64 %1139 to i8*
  store i8 49, i8* %1142
  %1143 = load i64, i64* %PC
  %1144 = add i64 %1143, 8
  store i64 %1144, i64* %PC
  %1145 = load i32, i32* bitcast (%reg_len_type* @reg_len to i32*)
  %1146 = sext i32 %1145 to i64
  store i64 %1146, i64* %RAX, align 8, !tbaa !2428
  %1147 = load i64, i64* %RBP
  %1148 = load i64, i64* %RAX
  %1149 = add i64 %1147, -176
  %1150 = add i64 %1149, %1148
  %1151 = load i64, i64* %PC
  %1152 = add i64 %1151, 8
  store i64 %1152, i64* %PC
  %1153 = inttoptr i64 %1150 to i8*
  store i8 0, i8* %1153
  br label %block_400842

block_400a42:                                     ; preds = %block_4009c8
  %1154 = sub i64 %602, 40
  %1155 = load i64, i64* %PC
  %1156 = add i64 %1155, 4
  store i64 %1156, i64* %PC
  store i64 %1154, i64* %RDI, align 8, !tbaa !2428
  %1157 = load i64, i64* %PC
  %1158 = add i64 %1157, 410
  %1159 = load i64, i64* %PC
  %1160 = add i64 %1159, 5
  %1161 = load i64, i64* %PC
  %1162 = add i64 %1161, 5
  store i64 %1162, i64* %PC
  %1163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1164 = load i64, i64* %1163, align 8, !tbaa !2428
  %1165 = add i64 %1164, -8
  %1166 = inttoptr i64 %1165 to i64*
  store i64 %1160, i64* %1166
  store i64 %1165, i64* %1163, align 8, !tbaa !2428
  %1167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1158, i64* %1167, align 8, !tbaa !2428
  %1168 = load i64, i64* %PC
  %1169 = call %struct.Memory* @sub_400be0_init(%struct.State* %0, i64 %1168, %struct.Memory* %557)
  %1170 = load i64, i64* %PC
  %1171 = add i64 %1170, 5
  store i64 %1171, i64* %PC
  store i64 10000, i64* %RDI, align 8, !tbaa !2428
  %1172 = load i64, i64* %RBP
  %1173 = sub i64 %1172, 40
  %1174 = load i64, i64* %PC
  %1175 = add i64 %1174, 4
  store i64 %1175, i64* %PC
  store i64 %1173, i64* %RSI, align 8, !tbaa !2428
  %1176 = load i64, i64* %RBP
  %1177 = sub i64 %1176, 176
  %1178 = load i64, i64* %PC
  %1179 = add i64 %1178, 7
  store i64 %1179, i64* %PC
  store i64 %1177, i64* %RDX, align 8, !tbaa !2428
  %1180 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1181 = load i64, i64* %RBP
  %1182 = sub i64 %1181, 64
  %1183 = load i64, i64* %PC
  %1184 = add i64 %1183, 5
  store i64 %1184, i64* %PC
  %1185 = inttoptr i64 %1182 to double*
  %1186 = load double, double* %1185
  %1187 = bitcast i8* %1180 to double*
  store double %1186, double* %1187, align 1, !tbaa !2453
  %1188 = getelementptr inbounds i8, i8* %1180, i64 8
  %1189 = bitcast i8* %1188 to double*
  store double 0.000000e+00, double* %1189, align 1, !tbaa !2453
  %1190 = load i64, i64* %PC
  %1191 = add i64 %1190, 448
  %1192 = load i64, i64* %PC
  %1193 = add i64 %1192, 5
  %1194 = load i64, i64* %PC
  %1195 = add i64 %1194, 5
  store i64 %1195, i64* %PC
  %1196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1197 = load i64, i64* %1196, align 8, !tbaa !2428
  %1198 = add i64 %1197, -8
  %1199 = inttoptr i64 %1198 to i64*
  store i64 %1193, i64* %1199
  store i64 %1198, i64* %1196, align 8, !tbaa !2428
  %1200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1191, i64* %1200, align 8, !tbaa !2428
  %1201 = load i64, i64* %PC
  %1202 = call %struct.Memory* @sub_400c20_simulate(%struct.State* %0, i64 %1201, %struct.Memory* %1169)
  %1203 = load i64, i64* %RBP
  %1204 = sub i64 %1203, 56
  %1205 = load i64, i64* %PC
  %1206 = add i64 %1205, 7
  store i64 %1206, i64* %PC
  %1207 = inttoptr i64 %1204 to i32*
  store i32 0, i32* %1207
  %1208 = load i64, i64* %RBP
  %1209 = sub i64 %1208, 228
  %1210 = load i32, i32* %EAX
  %1211 = zext i32 %1210 to i64
  %1212 = load i64, i64* %PC
  %1213 = add i64 %1212, 6
  store i64 %1213, i64* %PC
  %1214 = inttoptr i64 %1209 to i32*
  store i32 %1210, i32* %1214
  br label %block_400a72

block_400ab1:                                     ; preds = %block_400aac, %block_400a3d
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.0, %block_400aac ], [ %MEMORY.3, %block_400a3d ]
  %1215 = load i64, i64* %PC
  %1216 = add i64 %1215, 10
  store i64 %1216, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4010a0__rodata_type* @seg_4010a0__rodata to i64), i64 148), i64* %RDI, align 8, !tbaa !2428
  %1217 = load i64, i64* %PC
  %1218 = add i64 %1217, 2
  store i64 %1218, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2452
  %1219 = load i64, i64* %PC
  %1220 = sub i64 %1219, 1149
  %1221 = load i64, i64* %PC
  %1222 = add i64 %1221, 5
  %1223 = load i64, i64* %PC
  %1224 = add i64 %1223, 5
  store i64 %1224, i64* %PC
  %1225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1226 = load i64, i64* %1225, align 8, !tbaa !2428
  %1227 = add i64 %1226, -8
  %1228 = inttoptr i64 %1227 to i64*
  store i64 %1222, i64* %1228
  store i64 %1227, i64* %1225, align 8, !tbaa !2428
  %1229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1220, i64* %1229, align 8, !tbaa !2428
  %1230 = load i64, i64* %PC
  %1231 = call %struct.Memory* @ext_602090_printf(%struct.State* %0, i64 %1230, %struct.Memory* %MEMORY.5)
  %1232 = load i64, i64* %PC
  %1233 = add i64 %1232, 10
  store i64 %1233, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4010a0__rodata_type* @seg_4010a0__rodata to i64), i64 223), i64* %RDI, align 8, !tbaa !2428
  %1234 = load i64, i64* %RBP
  %1235 = sub i64 %1234, 176
  %1236 = load i64, i64* %PC
  %1237 = add i64 %1236, 7
  store i64 %1237, i64* %PC
  store i64 %1235, i64* %R8, align 8, !tbaa !2428
  %1238 = load i64, i64* %PC
  %1239 = add i64 %1238, 7
  store i64 %1239, i64* %PC
  %1240 = load i32, i32* bitcast (%reg_len_type* @reg_len to i32*)
  %1241 = zext i32 %1240 to i64
  store i64 %1241, i64* %RSI, align 8, !tbaa !2428
  %1242 = load i64, i64* %RBP
  %1243 = sub i64 %1242, 44
  %1244 = load i64, i64* %PC
  %1245 = add i64 %1244, 3
  store i64 %1245, i64* %PC
  %1246 = inttoptr i64 %1243 to i32*
  %1247 = load i32, i32* %1246
  %1248 = zext i32 %1247 to i64
  store i64 %1248, i64* %RDX, align 8, !tbaa !2428
  %1249 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1250 = load i64, i64* %RBP
  %1251 = sub i64 %1250, 64
  %1252 = load i64, i64* %PC
  %1253 = add i64 %1252, 5
  store i64 %1253, i64* %PC
  %1254 = inttoptr i64 %1251 to double*
  %1255 = load double, double* %1254
  %1256 = bitcast i8* %1249 to double*
  store double %1255, double* %1256, align 1, !tbaa !2453
  %1257 = getelementptr inbounds i8, i8* %1249, i64 8
  %1258 = bitcast i8* %1257 to double*
  store double 0.000000e+00, double* %1258, align 1, !tbaa !2453
  %1259 = load i64, i64* %RBP
  %1260 = sub i64 %1259, 48
  %1261 = load i64, i64* %PC
  %1262 = add i64 %1261, 3
  store i64 %1262, i64* %PC
  %1263 = inttoptr i64 %1260 to i32*
  %1264 = load i32, i32* %1263
  %1265 = zext i32 %1264 to i64
  store i64 %1265, i64* %RCX, align 8, !tbaa !2428
  %1266 = bitcast i32* %R9D to i64*
  %1267 = load i64, i64* %RBP
  %1268 = sub i64 %1267, 182
  %1269 = load i64, i64* %PC
  %1270 = add i64 %1269, 8
  store i64 %1270, i64* %PC
  %1271 = inttoptr i64 %1268 to i16*
  %1272 = load i16, i16* %1271
  %1273 = zext i16 %1272 to i64
  store i64 %1273, i64* %1266, align 8, !tbaa !2428
  %1274 = bitcast i32* %R10D to i64*
  %1275 = load i64, i64* %RBP
  %1276 = sub i64 %1275, 180
  %1277 = load i64, i64* %PC
  %1278 = add i64 %1277, 8
  store i64 %1278, i64* %PC
  %1279 = inttoptr i64 %1276 to i16*
  %1280 = load i16, i16* %1279
  %1281 = zext i16 %1280 to i64
  store i64 %1281, i64* %1274, align 8, !tbaa !2428
  %1282 = bitcast i32* %R11D to i64*
  %1283 = load i64, i64* %RBP
  %1284 = sub i64 %1283, 178
  %1285 = load i64, i64* %PC
  %1286 = add i64 %1285, 8
  store i64 %1286, i64* %PC
  %1287 = inttoptr i64 %1284 to i16*
  %1288 = load i16, i16* %1287
  %1289 = zext i16 %1288 to i64
  store i64 %1289, i64* %1282, align 8, !tbaa !2428
  %1290 = load i64, i64* %RBP
  %1291 = sub i64 %1290, 48
  %1292 = load i64, i64* %PC
  %1293 = add i64 %1292, 3
  store i64 %1293, i64* %PC
  %1294 = inttoptr i64 %1291 to i32*
  %1295 = load i32, i32* %1294
  %1296 = zext i32 %1295 to i64
  store i64 %1296, i64* %RBX, align 8, !tbaa !2428
  %1297 = load i64, i64* %RBX
  %1298 = load i64, i64* %RBP
  %1299 = sub i64 %1298, 52
  %1300 = load i64, i64* %PC
  %1301 = add i64 %1300, 3
  store i64 %1301, i64* %PC
  %1302 = trunc i64 %1297 to i32
  %1303 = inttoptr i64 %1299 to i32*
  %1304 = load i32, i32* %1303
  %1305 = sub i32 %1302, %1304
  %1306 = zext i32 %1305 to i64
  store i64 %1306, i64* %RBX, align 8, !tbaa !2428
  %1307 = icmp ult i32 %1302, %1304
  %1308 = zext i1 %1307 to i8
  %1309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1308, i8* %1309, align 1, !tbaa !2432
  %1310 = and i32 %1305, 255
  %1311 = call i32 @llvm.ctpop.i32(i32 %1310) #16
  %1312 = trunc i32 %1311 to i8
  %1313 = and i8 %1312, 1
  %1314 = xor i8 %1313, 1
  %1315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1314, i8* %1315, align 1, !tbaa !2446
  %1316 = xor i32 %1304, %1302
  %1317 = xor i32 %1316, %1305
  %1318 = lshr i32 %1317, 4
  %1319 = trunc i32 %1318 to i8
  %1320 = and i8 %1319, 1
  %1321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1320, i8* %1321, align 1, !tbaa !2450
  %1322 = icmp eq i32 %1305, 0
  %1323 = zext i1 %1322 to i8
  %1324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1323, i8* %1324, align 1, !tbaa !2447
  %1325 = lshr i32 %1305, 31
  %1326 = trunc i32 %1325 to i8
  %1327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1326, i8* %1327, align 1, !tbaa !2448
  %1328 = lshr i32 %1302, 31
  %1329 = lshr i32 %1304, 31
  %1330 = xor i32 %1329, %1328
  %1331 = xor i32 %1325, %1328
  %1332 = add nuw nsw i32 %1331, %1330
  %1333 = icmp eq i32 %1332, 2
  %1334 = zext i1 %1333 to i8
  %1335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1334, i8* %1335, align 1, !tbaa !2449
  %1336 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1337 = load i32, i32* %EBX
  %1338 = zext i32 %1337 to i64
  %1339 = load i64, i64* %PC
  %1340 = add i64 %1339, 4
  store i64 %1340, i64* %PC
  %1341 = sitofp i32 %1337 to double
  %1342 = bitcast i8* %1336 to double*
  store double %1341, double* %1342, align 1, !tbaa !2453
  %1343 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %1344 = load i64, i64* %RBP
  %1345 = sub i64 %1344, 48
  %1346 = load i64, i64* %PC
  %1347 = add i64 %1346, 5
  store i64 %1347, i64* %PC
  %1348 = inttoptr i64 %1345 to i32*
  %1349 = load i32, i32* %1348
  %1350 = sitofp i32 %1349 to double
  %1351 = bitcast i8* %1343 to double*
  store double %1350, double* %1351, align 1, !tbaa !2453
  %1352 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1353 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1354 = bitcast %union.vec128_t* %XMM2 to i8*
  %1355 = load i64, i64* %PC
  %1356 = add i64 %1355, 4
  store i64 %1356, i64* %PC
  %1357 = bitcast i8* %1353 to double*
  %1358 = load double, double* %1357, align 1
  %1359 = getelementptr inbounds i8, i8* %1353, i64 8
  %1360 = bitcast i8* %1359 to i64*
  %1361 = load i64, i64* %1360, align 1
  %1362 = bitcast i8* %1354 to double*
  %1363 = load double, double* %1362, align 1
  %1364 = fdiv double %1358, %1363
  %1365 = bitcast i8* %1352 to double*
  store double %1364, double* %1365, align 1, !tbaa !2453
  %1366 = getelementptr inbounds i8, i8* %1352, i64 8
  %1367 = bitcast i8* %1366 to i64*
  store i64 %1361, i64* %1367, align 1, !tbaa !2453
  %1368 = load i64, i64* %RSP
  %1369 = load i32, i32* %R10D
  %1370 = zext i32 %1369 to i64
  %1371 = load i64, i64* %PC
  %1372 = add i64 %1371, 4
  store i64 %1372, i64* %PC
  %1373 = inttoptr i64 %1368 to i32*
  store i32 %1369, i32* %1373
  %1374 = load i64, i64* %RSP
  %1375 = add i64 %1374, 8
  %1376 = load i32, i32* %R11D
  %1377 = zext i32 %1376 to i64
  %1378 = load i64, i64* %PC
  %1379 = add i64 %1378, 5
  store i64 %1379, i64* %PC
  %1380 = inttoptr i64 %1375 to i32*
  store i32 %1376, i32* %1380
  %1381 = load i64, i64* %RBP
  %1382 = sub i64 %1381, 232
  %1383 = load i32, i32* %EAX
  %1384 = zext i32 %1383 to i64
  %1385 = load i64, i64* %PC
  %1386 = add i64 %1385, 6
  store i64 %1386, i64* %PC
  %1387 = inttoptr i64 %1382 to i32*
  store i32 %1383, i32* %1387
  %1388 = load i64, i64* %PC
  %1389 = add i64 %1388, 2
  store i64 %1389, i64* %PC
  store i8 2, i8* %AL, align 1, !tbaa !2452
  %1390 = load i64, i64* %PC
  %1391 = sub i64 %1390, 1249
  %1392 = load i64, i64* %PC
  %1393 = add i64 %1392, 5
  %1394 = load i64, i64* %PC
  %1395 = add i64 %1394, 5
  store i64 %1395, i64* %PC
  %1396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1397 = load i64, i64* %1396, align 8, !tbaa !2428
  %1398 = add i64 %1397, -8
  %1399 = inttoptr i64 %1398 to i64*
  store i64 %1393, i64* %1399
  store i64 %1398, i64* %1396, align 8, !tbaa !2428
  %1400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1391, i64* %1400, align 8, !tbaa !2428
  %1401 = load i64, i64* %PC
  %1402 = call %struct.Memory* @ext_602090_printf(%struct.State* %0, i64 %1401, %struct.Memory* %1231)
  %1403 = load i64, i64* %RBP
  %1404 = sub i64 %1403, 12
  %1405 = load i64, i64* %PC
  %1406 = add i64 %1405, 7
  store i64 %1406, i64* %PC
  %1407 = inttoptr i64 %1404 to i32*
  store i32 0, i32* %1407
  %1408 = load i64, i64* %RBP
  %1409 = sub i64 %1408, 236
  %1410 = load i32, i32* %EAX
  %1411 = zext i32 %1410 to i64
  %1412 = load i64, i64* %PC
  %1413 = add i64 %1412, 6
  store i64 %1413, i64* %PC
  %1414 = inttoptr i64 %1409 to i32*
  store i32 %1410, i32* %1414
  br label %block_400b33

block_4009a5:                                     ; preds = %block_400988
  %1415 = load i64, i64* %PC
  %1416 = add i64 %1415, 10
  store i64 %1416, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4010a0__rodata_type* @seg_4010a0__rodata to i64), i64 105), i64* %RDI, align 8, !tbaa !2428
  %1417 = load i64, i64* %PC
  %1418 = add i64 %1417, 2
  store i64 %1418, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2452
  %1419 = load i64, i64* %PC
  %1420 = sub i64 %1419, 881
  %1421 = load i64, i64* %PC
  %1422 = add i64 %1421, 5
  %1423 = load i64, i64* %PC
  %1424 = add i64 %1423, 5
  store i64 %1424, i64* %PC
  %1425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1426 = load i64, i64* %1425, align 8, !tbaa !2428
  %1427 = add i64 %1426, -8
  %1428 = inttoptr i64 %1427 to i64*
  store i64 %1422, i64* %1428
  store i64 %1427, i64* %1425, align 8, !tbaa !2428
  %1429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1420, i64* %1429, align 8, !tbaa !2428
  %1430 = load i64, i64* %PC
  %1431 = call %struct.Memory* @ext_602090_printf(%struct.State* %0, i64 %1430, %struct.Memory* %1078)
  %1432 = load i64, i64* %RBP
  %1433 = sub i64 %1432, 12
  %1434 = load i64, i64* %PC
  %1435 = add i64 %1434, 7
  store i64 %1435, i64* %PC
  %1436 = inttoptr i64 %1433 to i32*
  store i32 4, i32* %1436
  %1437 = load i64, i64* %RBP
  %1438 = sub i64 %1437, 216
  %1439 = load i32, i32* %EAX
  %1440 = zext i32 %1439 to i64
  %1441 = load i64, i64* %PC
  %1442 = add i64 %1441, 6
  store i64 %1442, i64* %PC
  %1443 = inttoptr i64 %1438 to i32*
  store i32 %1439, i32* %1443
  %1444 = load i64, i64* %PC
  %1445 = add i64 %1444, 368
  %1446 = load i64, i64* %PC
  %1447 = add i64 %1446, 5
  store i64 %1447, i64* %PC
  %1448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1445, i64* %1448, align 8, !tbaa !2428
  br label %block_400b33

block_400918:                                     ; preds = %block_40090a
  %1449 = load i64, i64* %PC
  %1450 = add i64 %1449, 10
  store i64 %1450, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4010a0__rodata_type* @seg_4010a0__rodata to i64), i64 44), i64* %RDI, align 8, !tbaa !2428
  %1451 = load i64, i64* %PC
  %1452 = add i64 %1451, 5
  store i64 %1452, i64* %PC
  store i64 100, i64* %RSI, align 8, !tbaa !2428
  %1453 = load i64, i64* %PC
  %1454 = add i64 %1453, 2
  store i64 %1454, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2452
  %1455 = load i64, i64* %PC
  %1456 = sub i64 %1455, 745
  %1457 = load i64, i64* %PC
  %1458 = add i64 %1457, 5
  %1459 = load i64, i64* %PC
  %1460 = add i64 %1459, 5
  store i64 %1460, i64* %PC
  %1461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1462 = load i64, i64* %1461, align 8, !tbaa !2428
  %1463 = add i64 %1462, -8
  %1464 = inttoptr i64 %1463 to i64*
  store i64 %1458, i64* %1464
  store i64 %1463, i64* %1461, align 8, !tbaa !2428
  %1465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1456, i64* %1465, align 8, !tbaa !2428
  %1466 = load i64, i64* %PC
  %1467 = call %struct.Memory* @ext_602090_printf(%struct.State* %0, i64 %1466, %struct.Memory* %MEMORY.7)
  %1468 = load i64, i64* %RBP
  %1469 = sub i64 %1468, 12
  %1470 = load i64, i64* %PC
  %1471 = add i64 %1470, 7
  store i64 %1471, i64* %PC
  %1472 = inttoptr i64 %1469 to i32*
  store i32 2, i32* %1472
  %1473 = load i64, i64* %RBP
  %1474 = sub i64 %1473, 208
  %1475 = load i32, i32* %EAX
  %1476 = zext i32 %1475 to i64
  %1477 = load i64, i64* %PC
  %1478 = add i64 %1477, 6
  store i64 %1478, i64* %PC
  %1479 = inttoptr i64 %1474 to i32*
  store i32 %1475, i32* %1479
  %1480 = load i64, i64* %PC
  %1481 = add i64 %1480, 504
  %1482 = load i64, i64* %PC
  %1483 = add i64 %1482, 5
  store i64 %1483, i64* %PC
  %1484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1481, i64* %1484, align 8, !tbaa !2428
  br label %block_400b33

block_4007da:                                     ; preds = %block_400790
  %1485 = sub i64 %217, 176
  %1486 = load i64, i64* %PC
  %1487 = add i64 %1486, 7
  store i64 %1487, i64* %PC
  store i64 %1485, i64* %RDI, align 8, !tbaa !2428
  %1488 = load i64, i64* %RBP
  %1489 = sub i64 %1488, 24
  %1490 = load i64, i64* %PC
  %1491 = add i64 %1490, 4
  store i64 %1491, i64* %PC
  %1492 = inttoptr i64 %1489 to i64*
  %1493 = load i64, i64* %1492
  store i64 %1493, i64* %RAX, align 8, !tbaa !2428
  %1494 = load i64, i64* %RAX
  %1495 = add i64 %1494, 48
  %1496 = load i64, i64* %PC
  %1497 = add i64 %1496, 4
  store i64 %1497, i64* %PC
  %1498 = inttoptr i64 %1495 to i64*
  %1499 = load i64, i64* %1498
  store i64 %1499, i64* %RSI, align 8, !tbaa !2428
  %1500 = load i64, i64* %PC
  %1501 = sub i64 %1500, 457
  %1502 = load i64, i64* %PC
  %1503 = add i64 %1502, 5
  %1504 = load i64, i64* %PC
  %1505 = add i64 %1504, 5
  store i64 %1505, i64* %PC
  %1506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1507 = load i64, i64* %1506, align 8, !tbaa !2428
  %1508 = add i64 %1507, -8
  %1509 = inttoptr i64 %1508 to i64*
  store i64 %1503, i64* %1509
  store i64 %1508, i64* %1506, align 8, !tbaa !2428
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1501, i64* %1510, align 8, !tbaa !2428
  %1511 = load i64, i64* %PC
  %1512 = call %struct.Memory* @ext_6020d0_strcpy(%struct.State* %0, i64 %1511, %struct.Memory* %2)
  %1513 = load i64, i64* %RBP
  %1514 = sub i64 %1513, 192
  %1515 = load i64, i64* %RAX
  %1516 = load i64, i64* %PC
  %1517 = add i64 %1516, 7
  store i64 %1517, i64* %PC
  %1518 = inttoptr i64 %1514 to i64*
  store i64 %1515, i64* %1518
  %1519 = load i64, i64* %PC
  %1520 = add i64 %1519, 77
  %1521 = load i64, i64* %PC
  %1522 = add i64 %1521, 5
  store i64 %1522, i64* %PC
  %1523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1520, i64* %1523, align 8, !tbaa !2428
  br label %block_400842

block_400842:                                     ; preds = %block_4007da, %block_40082b
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.8, %block_40082b ], [ %1512, %block_4007da ]
  %1524 = load i64, i64* %RBP
  %1525 = sub i64 %1524, 16
  %1526 = load i64, i64* %PC
  %1527 = add i64 %1526, 4
  store i64 %1527, i64* %PC
  %1528 = inttoptr i64 %1525 to i32*
  %1529 = load i32, i32* %1528
  %1530 = sub i32 %1529, 7
  %1531 = icmp ult i32 %1529, 7
  %1532 = zext i1 %1531 to i8
  %1533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1532, i8* %1533, align 1, !tbaa !2432
  %1534 = and i32 %1530, 255
  %1535 = call i32 @llvm.ctpop.i32(i32 %1534) #16
  %1536 = trunc i32 %1535 to i8
  %1537 = and i8 %1536, 1
  %1538 = xor i8 %1537, 1
  %1539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1538, i8* %1539, align 1, !tbaa !2446
  %1540 = xor i32 %1529, 7
  %1541 = xor i32 %1540, %1530
  %1542 = lshr i32 %1541, 4
  %1543 = trunc i32 %1542 to i8
  %1544 = and i8 %1543, 1
  %1545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1544, i8* %1545, align 1, !tbaa !2450
  %1546 = icmp eq i32 %1530, 0
  %1547 = zext i1 %1546 to i8
  %1548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1547, i8* %1548, align 1, !tbaa !2447
  %1549 = lshr i32 %1530, 31
  %1550 = trunc i32 %1549 to i8
  %1551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1550, i8* %1551, align 1, !tbaa !2448
  %1552 = lshr i32 %1529, 31
  %1553 = xor i32 %1549, %1552
  %1554 = add nuw nsw i32 %1553, %1552
  %1555 = icmp eq i32 %1554, 2
  %1556 = zext i1 %1555 to i8
  %1557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1556, i8* %1557, align 1, !tbaa !2449
  %1558 = load i64, i64* %PC
  %1559 = add i64 %1558, 49
  %1560 = load i64, i64* %PC
  %1561 = add i64 %1560, 6
  %1562 = load i64, i64* %PC
  %1563 = add i64 %1562, 6
  store i64 %1563, i64* %PC
  %1564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1565 = load i8, i8* %1564, align 1, !tbaa !2447
  %1566 = icmp ne i8 %1565, 0
  %1567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1568 = load i8, i8* %1567, align 1, !tbaa !2448
  %1569 = icmp ne i8 %1568, 0
  %1570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1571 = load i8, i8* %1570, align 1, !tbaa !2449
  %1572 = icmp ne i8 %1571, 0
  %1573 = xor i1 %1569, %1572
  %1574 = or i1 %1566, %1573
  %1575 = zext i1 %1574 to i8
  store i8 %1575, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %1576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1577 = select i1 %1574, i64 %1559, i64 %1561
  store i64 %1577, i64* %1576, align 8, !tbaa !2428
  %1578 = load i8, i8* %BRANCH_TAKEN
  %1579 = icmp eq i8 %1578, 1
  br i1 %1579, label %block_400877, label %block_40084c

block_40090a:                                     ; preds = %block_400901, %block_4008cf
  %MEMORY.7 = phi %struct.Memory* [ %MEMORY.1, %block_400901 ], [ %1049, %block_4008cf ]
  %1580 = load i64, i64* %PC
  %1581 = add i64 %1580, 8
  store i64 %1581, i64* %PC
  %1582 = load i32, i32* bitcast (%reg_len_type* @reg_len to i32*)
  %1583 = sub i32 %1582, 100
  %1584 = icmp ult i32 %1582, 100
  %1585 = zext i1 %1584 to i8
  %1586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1585, i8* %1586, align 1, !tbaa !2432
  %1587 = and i32 %1583, 255
  %1588 = call i32 @llvm.ctpop.i32(i32 %1587) #16
  %1589 = trunc i32 %1588 to i8
  %1590 = and i8 %1589, 1
  %1591 = xor i8 %1590, 1
  %1592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1591, i8* %1592, align 1, !tbaa !2446
  %1593 = xor i32 %1582, 100
  %1594 = xor i32 %1593, %1583
  %1595 = lshr i32 %1594, 4
  %1596 = trunc i32 %1595 to i8
  %1597 = and i8 %1596, 1
  %1598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1597, i8* %1598, align 1, !tbaa !2450
  %1599 = icmp eq i32 %1583, 0
  %1600 = zext i1 %1599 to i8
  %1601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1600, i8* %1601, align 1, !tbaa !2447
  %1602 = lshr i32 %1583, 31
  %1603 = trunc i32 %1602 to i8
  %1604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1603, i8* %1604, align 1, !tbaa !2448
  %1605 = lshr i32 %1582, 31
  %1606 = xor i32 %1602, %1605
  %1607 = add nuw nsw i32 %1606, %1605
  %1608 = icmp eq i32 %1607, 2
  %1609 = zext i1 %1608 to i8
  %1610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1609, i8* %1610, align 1, !tbaa !2449
  %1611 = load i64, i64* %PC
  %1612 = add i64 %1611, 46
  %1613 = load i64, i64* %PC
  %1614 = add i64 %1613, 6
  %1615 = load i64, i64* %PC
  %1616 = add i64 %1615, 6
  store i64 %1616, i64* %PC
  %1617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1618 = load i8, i8* %1617, align 1, !tbaa !2447
  %1619 = icmp ne i8 %1618, 0
  %1620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1621 = load i8, i8* %1620, align 1, !tbaa !2448
  %1622 = icmp ne i8 %1621, 0
  %1623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1624 = load i8, i8* %1623, align 1, !tbaa !2449
  %1625 = icmp ne i8 %1624, 0
  %1626 = xor i1 %1622, %1625
  %1627 = or i1 %1619, %1626
  %1628 = zext i1 %1627 to i8
  store i8 %1628, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %1629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1630 = select i1 %1627, i64 %1612, i64 %1614
  store i64 %1630, i64* %1629, align 8, !tbaa !2428
  %1631 = load i8, i8* %BRANCH_TAKEN
  %1632 = icmp eq i8 %1631, 1
  br i1 %1632, label %block_400940, label %block_400918

block_40084c:                                     ; preds = %block_400842
  %1633 = load i64, i64* %PC
  %1634 = add i64 %1633, 10
  store i64 %1634, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4010a0__rodata_type* @seg_4010a0__rodata to i64), i64 40), i64* %RSI, align 8, !tbaa !2428
  %1635 = load i64, i64* %RBP
  %1636 = sub i64 %1635, 182
  %1637 = load i64, i64* %PC
  %1638 = add i64 %1637, 7
  store i64 %1638, i64* %PC
  store i64 %1636, i64* %RDX, align 8, !tbaa !2428
  %1639 = load i64, i64* %RBP
  %1640 = sub i64 %1639, 24
  %1641 = load i64, i64* %PC
  %1642 = add i64 %1641, 4
  store i64 %1642, i64* %PC
  %1643 = inttoptr i64 %1640 to i64*
  %1644 = load i64, i64* %1643
  store i64 %1644, i64* %RAX, align 8, !tbaa !2428
  %1645 = load i64, i64* %RAX
  %1646 = add i64 %1645, 56
  %1647 = load i64, i64* %PC
  %1648 = add i64 %1647, 4
  store i64 %1648, i64* %PC
  %1649 = inttoptr i64 %1646 to i64*
  %1650 = load i64, i64* %1649
  store i64 %1650, i64* %RDI, align 8, !tbaa !2428
  %1651 = load i64, i64* %PC
  %1652 = add i64 %1651, 2
  store i64 %1652, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2452
  %1653 = load i64, i64* %PC
  %1654 = sub i64 %1653, 487
  %1655 = load i64, i64* %PC
  %1656 = add i64 %1655, 5
  %1657 = load i64, i64* %PC
  %1658 = add i64 %1657, 5
  store i64 %1658, i64* %PC
  %1659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1660 = load i64, i64* %1659, align 8, !tbaa !2428
  %1661 = add i64 %1660, -8
  %1662 = inttoptr i64 %1661 to i64*
  store i64 %1656, i64* %1662
  store i64 %1661, i64* %1659, align 8, !tbaa !2428
  %1663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1654, i64* %1663, align 8, !tbaa !2428
  %1664 = load i64, i64* %PC
  %1665 = call %struct.Memory* @ext_400680___isoc99_sscanf(%struct.State* %0, i64 %1664, %struct.Memory* %MEMORY.6)
  %1666 = load i64, i64* %RBP
  %1667 = sub i64 %1666, 196
  %1668 = load i32, i32* %EAX
  %1669 = zext i32 %1668 to i64
  %1670 = load i64, i64* %PC
  %1671 = add i64 %1670, 6
  store i64 %1671, i64* %PC
  %1672 = inttoptr i64 %1667 to i32*
  store i32 %1668, i32* %1672
  %1673 = load i64, i64* %PC
  %1674 = add i64 %1673, 14
  %1675 = load i64, i64* %PC
  %1676 = add i64 %1675, 5
  store i64 %1676, i64* %PC
  %1677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1674, i64* %1677, align 8, !tbaa !2428
  br label %block_400880

block_400a08:                                     ; preds = %block_4009fc
  %1678 = load i64, i64* %RBP
  %1679 = sub i64 %1678, 40
  %1680 = load i64, i64* %PC
  %1681 = add i64 %1680, 4
  store i64 %1681, i64* %PC
  store i64 %1679, i64* %RDI, align 8, !tbaa !2428
  %1682 = load i64, i64* %PC
  %1683 = add i64 %1682, 468
  %1684 = load i64, i64* %PC
  %1685 = add i64 %1684, 5
  %1686 = load i64, i64* %PC
  %1687 = add i64 %1686, 5
  store i64 %1687, i64* %PC
  %1688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1689 = load i64, i64* %1688, align 8, !tbaa !2428
  %1690 = add i64 %1689, -8
  %1691 = inttoptr i64 %1690 to i64*
  store i64 %1685, i64* %1691
  store i64 %1690, i64* %1688, align 8, !tbaa !2428
  %1692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1683, i64* %1692, align 8, !tbaa !2428
  %1693 = load i64, i64* %PC
  %1694 = call %struct.Memory* @sub_400be0_init(%struct.State* %0, i64 %1693, %struct.Memory* %MEMORY.3)
  %1695 = load i64, i64* %RBP
  %1696 = sub i64 %1695, 40
  %1697 = load i64, i64* %PC
  %1698 = add i64 %1697, 4
  store i64 %1698, i64* %PC
  store i64 %1696, i64* %RSI, align 8, !tbaa !2428
  %1699 = load i64, i64* %RBP
  %1700 = sub i64 %1699, 176
  %1701 = load i64, i64* %PC
  %1702 = add i64 %1701, 7
  store i64 %1702, i64* %PC
  store i64 %1700, i64* %RDX, align 8, !tbaa !2428
  %1703 = load i64, i64* %RBP
  %1704 = sub i64 %1703, 44
  %1705 = load i64, i64* %PC
  %1706 = add i64 %1705, 3
  store i64 %1706, i64* %PC
  %1707 = inttoptr i64 %1704 to i32*
  %1708 = load i32, i32* %1707
  %1709 = zext i32 %1708 to i64
  store i64 %1709, i64* %RDI, align 8, !tbaa !2428
  %1710 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1711 = load i64, i64* %RBP
  %1712 = sub i64 %1711, 64
  %1713 = load i64, i64* %PC
  %1714 = add i64 %1713, 5
  store i64 %1714, i64* %PC
  %1715 = inttoptr i64 %1712 to double*
  %1716 = load double, double* %1715
  %1717 = bitcast i8* %1710 to double*
  store double %1716, double* %1717, align 1, !tbaa !2453
  %1718 = getelementptr inbounds i8, i8* %1710, i64 8
  %1719 = bitcast i8* %1718 to double*
  store double 0.000000e+00, double* %1719, align 1, !tbaa !2453
  %1720 = load i64, i64* %PC
  %1721 = add i64 %1720, 508
  %1722 = load i64, i64* %PC
  %1723 = add i64 %1722, 5
  %1724 = load i64, i64* %PC
  %1725 = add i64 %1724, 5
  store i64 %1725, i64* %PC
  %1726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1727 = load i64, i64* %1726, align 8, !tbaa !2428
  %1728 = add i64 %1727, -8
  %1729 = inttoptr i64 %1728 to i64*
  store i64 %1723, i64* %1729
  store i64 %1728, i64* %1726, align 8, !tbaa !2428
  %1730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1721, i64* %1730, align 8, !tbaa !2428
  %1731 = load i64, i64* %PC
  %1732 = call %struct.Memory* @sub_400c20_simulate(%struct.State* %0, i64 %1731, %struct.Memory* %1694)
  %1733 = load i64, i64* %RAX
  %1734 = load i64, i64* %RBP
  %1735 = sub i64 %1734, 52
  %1736 = load i64, i64* %PC
  %1737 = add i64 %1736, 3
  store i64 %1737, i64* %PC
  %1738 = trunc i64 %1733 to i32
  %1739 = inttoptr i64 %1735 to i32*
  %1740 = load i32, i32* %1739
  %1741 = add i32 %1740, %1738
  %1742 = zext i32 %1741 to i64
  store i64 %1742, i64* %RAX, align 8, !tbaa !2428
  %1743 = icmp ult i32 %1741, %1738
  %1744 = icmp ult i32 %1741, %1740
  %1745 = or i1 %1743, %1744
  %1746 = zext i1 %1745 to i8
  %1747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1746, i8* %1747, align 1, !tbaa !2432
  %1748 = and i32 %1741, 255
  %1749 = call i32 @llvm.ctpop.i32(i32 %1748) #16
  %1750 = trunc i32 %1749 to i8
  %1751 = and i8 %1750, 1
  %1752 = xor i8 %1751, 1
  %1753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1752, i8* %1753, align 1, !tbaa !2446
  %1754 = xor i32 %1740, %1738
  %1755 = xor i32 %1754, %1741
  %1756 = lshr i32 %1755, 4
  %1757 = trunc i32 %1756 to i8
  %1758 = and i8 %1757, 1
  %1759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1758, i8* %1759, align 1, !tbaa !2450
  %1760 = icmp eq i32 %1741, 0
  %1761 = zext i1 %1760 to i8
  %1762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1761, i8* %1762, align 1, !tbaa !2447
  %1763 = lshr i32 %1741, 31
  %1764 = trunc i32 %1763 to i8
  %1765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1764, i8* %1765, align 1, !tbaa !2448
  %1766 = lshr i32 %1738, 31
  %1767 = lshr i32 %1740, 31
  %1768 = xor i32 %1763, %1766
  %1769 = xor i32 %1763, %1767
  %1770 = add nuw nsw i32 %1768, %1769
  %1771 = icmp eq i32 %1770, 2
  %1772 = zext i1 %1771 to i8
  %1773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1772, i8* %1773, align 1, !tbaa !2449
  %1774 = load i64, i64* %RBP
  %1775 = sub i64 %1774, 52
  %1776 = load i32, i32* %EAX
  %1777 = zext i32 %1776 to i64
  %1778 = load i64, i64* %PC
  %1779 = add i64 %1778, 3
  store i64 %1779, i64* %PC
  %1780 = inttoptr i64 %1775 to i32*
  store i32 %1776, i32* %1780
  %1781 = load i64, i64* %RBP
  %1782 = sub i64 %1781, 56
  %1783 = load i64, i64* %PC
  %1784 = add i64 %1783, 3
  store i64 %1784, i64* %PC
  %1785 = inttoptr i64 %1782 to i32*
  %1786 = load i32, i32* %1785
  %1787 = zext i32 %1786 to i64
  store i64 %1787, i64* %RAX, align 8, !tbaa !2428
  %1788 = load i64, i64* %RAX
  %1789 = load i64, i64* %PC
  %1790 = add i64 %1789, 3
  store i64 %1790, i64* %PC
  %1791 = trunc i64 %1788 to i32
  %1792 = add i32 1, %1791
  %1793 = zext i32 %1792 to i64
  store i64 %1793, i64* %RAX, align 8, !tbaa !2428
  %1794 = icmp ult i32 %1792, %1791
  %1795 = icmp ult i32 %1792, 1
  %1796 = or i1 %1794, %1795
  %1797 = zext i1 %1796 to i8
  %1798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1797, i8* %1798, align 1, !tbaa !2432
  %1799 = and i32 %1792, 255
  %1800 = call i32 @llvm.ctpop.i32(i32 %1799) #16
  %1801 = trunc i32 %1800 to i8
  %1802 = and i8 %1801, 1
  %1803 = xor i8 %1802, 1
  %1804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1803, i8* %1804, align 1, !tbaa !2446
  %1805 = xor i64 1, %1788
  %1806 = trunc i64 %1805 to i32
  %1807 = xor i32 %1806, %1792
  %1808 = lshr i32 %1807, 4
  %1809 = trunc i32 %1808 to i8
  %1810 = and i8 %1809, 1
  %1811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1810, i8* %1811, align 1, !tbaa !2450
  %1812 = icmp eq i32 %1792, 0
  %1813 = zext i1 %1812 to i8
  %1814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1813, i8* %1814, align 1, !tbaa !2447
  %1815 = lshr i32 %1792, 31
  %1816 = trunc i32 %1815 to i8
  %1817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1816, i8* %1817, align 1, !tbaa !2448
  %1818 = lshr i32 %1791, 31
  %1819 = xor i32 %1815, %1818
  %1820 = add nuw nsw i32 %1819, %1815
  %1821 = icmp eq i32 %1820, 2
  %1822 = zext i1 %1821 to i8
  %1823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1822, i8* %1823, align 1, !tbaa !2449
  %1824 = load i64, i64* %RBP
  %1825 = sub i64 %1824, 56
  %1826 = load i32, i32* %EAX
  %1827 = zext i32 %1826 to i64
  %1828 = load i64, i64* %PC
  %1829 = add i64 %1828, 3
  store i64 %1829, i64* %PC
  %1830 = inttoptr i64 %1825 to i32*
  store i32 %1826, i32* %1830
  %1831 = load i64, i64* %PC
  %1832 = sub i64 %1831, 60
  %1833 = load i64, i64* %PC
  %1834 = add i64 %1833, 5
  store i64 %1834, i64* %PC
  %1835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1832, i64* %1835, align 8, !tbaa !2428
  br label %block_4009fc

block_400901:                                     ; preds = %block_4008c5
  %1836 = load i64, i64* %RBP
  %1837 = sub i64 %1836, 178
  %1838 = load i64, i64* %PC
  %1839 = add i64 %1838, 9
  store i64 %1839, i64* %PC
  %1840 = inttoptr i64 %1837 to i16*
  store i16 0, i16* %1840
  br label %block_40090a

block_400801:                                     ; preds = %block_400811, %block_4007fa
  %MEMORY.8 = phi %struct.Memory* [ %2, %block_4007fa ], [ %MEMORY.8, %block_400811 ]
  %1841 = load i64, i64* %RBP
  %1842 = sub i64 %1841, 56
  %1843 = load i64, i64* %PC
  %1844 = add i64 %1843, 3
  store i64 %1844, i64* %PC
  %1845 = inttoptr i64 %1842 to i32*
  %1846 = load i32, i32* %1845
  %1847 = zext i32 %1846 to i64
  store i64 %1847, i64* %RAX, align 8, !tbaa !2428
  %1848 = load i32, i32* %EAX
  %1849 = zext i32 %1848 to i64
  %1850 = load i64, i64* %PC
  %1851 = add i64 %1850, 7
  store i64 %1851, i64* %PC
  %1852 = load i32, i32* bitcast (%reg_len_type* @reg_len to i32*)
  %1853 = sub i32 %1848, %1852
  %1854 = icmp ult i32 %1848, %1852
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
  %1863 = xor i32 %1852, %1848
  %1864 = xor i32 %1863, %1853
  %1865 = lshr i32 %1864, 4
  %1866 = trunc i32 %1865 to i8
  %1867 = and i8 %1866, 1
  %1868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1867, i8* %1868, align 1, !tbaa !2450
  %1869 = icmp eq i32 %1853, 0
  %1870 = zext i1 %1869 to i8
  %1871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1870, i8* %1871, align 1, !tbaa !2447
  %1872 = lshr i32 %1853, 31
  %1873 = trunc i32 %1872 to i8
  %1874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1873, i8* %1874, align 1, !tbaa !2448
  %1875 = lshr i32 %1848, 31
  %1876 = lshr i32 %1852, 31
  %1877 = xor i32 %1876, %1875
  %1878 = xor i32 %1872, %1875
  %1879 = add nuw nsw i32 %1878, %1877
  %1880 = icmp eq i32 %1879, 2
  %1881 = zext i1 %1880 to i8
  %1882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1881, i8* %1882, align 1, !tbaa !2449
  %1883 = load i64, i64* %PC
  %1884 = add i64 %1883, 32
  %1885 = load i64, i64* %PC
  %1886 = add i64 %1885, 6
  %1887 = load i64, i64* %PC
  %1888 = add i64 %1887, 6
  store i64 %1888, i64* %PC
  %1889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1890 = load i8, i8* %1889, align 1, !tbaa !2448
  %1891 = icmp ne i8 %1890, 0
  %1892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1893 = load i8, i8* %1892, align 1, !tbaa !2449
  %1894 = icmp ne i8 %1893, 0
  %1895 = xor i1 %1891, %1894
  %1896 = xor i1 %1895, true
  %1897 = zext i1 %1896 to i8
  store i8 %1897, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %1898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1899 = select i1 %1895, i64 %1886, i64 %1884
  store i64 %1899, i64* %1898, align 8, !tbaa !2428
  %1900 = load i8, i8* %BRANCH_TAKEN
  %1901 = icmp eq i8 %1900, 1
  %1902 = load i64, i64* %RBP
  br i1 %1901, label %block_40082b, label %block_400811

block_400811:                                     ; preds = %block_400801
  %1903 = sub i64 %1902, 56
  %1904 = load i64, i64* %PC
  %1905 = add i64 %1904, 4
  store i64 %1905, i64* %PC
  %1906 = inttoptr i64 %1903 to i32*
  %1907 = load i32, i32* %1906
  %1908 = sext i32 %1907 to i64
  store i64 %1908, i64* %RAX, align 8, !tbaa !2428
  %1909 = load i64, i64* %RBP
  %1910 = load i64, i64* %RAX
  %1911 = add i64 %1909, -176
  %1912 = add i64 %1911, %1910
  %1913 = load i64, i64* %PC
  %1914 = add i64 %1913, 8
  store i64 %1914, i64* %PC
  %1915 = inttoptr i64 %1912 to i8*
  store i8 48, i8* %1915
  %1916 = load i64, i64* %RBP
  %1917 = sub i64 %1916, 56
  %1918 = load i64, i64* %PC
  %1919 = add i64 %1918, 3
  store i64 %1919, i64* %PC
  %1920 = inttoptr i64 %1917 to i32*
  %1921 = load i32, i32* %1920
  %1922 = zext i32 %1921 to i64
  store i64 %1922, i64* %RAX, align 8, !tbaa !2428
  %1923 = load i64, i64* %RAX
  %1924 = load i64, i64* %PC
  %1925 = add i64 %1924, 3
  store i64 %1925, i64* %PC
  %1926 = trunc i64 %1923 to i32
  %1927 = add i32 1, %1926
  %1928 = zext i32 %1927 to i64
  store i64 %1928, i64* %RAX, align 8, !tbaa !2428
  %1929 = icmp ult i32 %1927, %1926
  %1930 = icmp ult i32 %1927, 1
  %1931 = or i1 %1929, %1930
  %1932 = zext i1 %1931 to i8
  %1933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1932, i8* %1933, align 1, !tbaa !2432
  %1934 = and i32 %1927, 255
  %1935 = call i32 @llvm.ctpop.i32(i32 %1934) #16
  %1936 = trunc i32 %1935 to i8
  %1937 = and i8 %1936, 1
  %1938 = xor i8 %1937, 1
  %1939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1938, i8* %1939, align 1, !tbaa !2446
  %1940 = xor i64 1, %1923
  %1941 = trunc i64 %1940 to i32
  %1942 = xor i32 %1941, %1927
  %1943 = lshr i32 %1942, 4
  %1944 = trunc i32 %1943 to i8
  %1945 = and i8 %1944, 1
  %1946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1945, i8* %1946, align 1, !tbaa !2450
  %1947 = icmp eq i32 %1927, 0
  %1948 = zext i1 %1947 to i8
  %1949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1948, i8* %1949, align 1, !tbaa !2447
  %1950 = lshr i32 %1927, 31
  %1951 = trunc i32 %1950 to i8
  %1952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1951, i8* %1952, align 1, !tbaa !2448
  %1953 = lshr i32 %1926, 31
  %1954 = xor i32 %1950, %1953
  %1955 = add nuw nsw i32 %1954, %1950
  %1956 = icmp eq i32 %1955, 2
  %1957 = zext i1 %1956 to i8
  %1958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1957, i8* %1958, align 1, !tbaa !2449
  %1959 = load i64, i64* %RBP
  %1960 = sub i64 %1959, 56
  %1961 = load i32, i32* %EAX
  %1962 = zext i32 %1961 to i64
  %1963 = load i64, i64* %PC
  %1964 = add i64 %1963, 3
  store i64 %1964, i64* %PC
  %1965 = inttoptr i64 %1960 to i32*
  store i32 %1961, i32* %1965
  %1966 = load i64, i64* %PC
  %1967 = sub i64 %1966, 37
  %1968 = load i64, i64* %PC
  %1969 = add i64 %1968, 5
  store i64 %1969, i64* %PC
  %1970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1967, i64* %1970, align 8, !tbaa !2428
  br label %block_400801

block_400880:                                     ; preds = %block_40084c, %block_400877
  %MEMORY.9 = phi %struct.Memory* [ %MEMORY.6, %block_400877 ], [ %1665, %block_40084c ]
  %1971 = load i64, i64* %RBP
  %1972 = sub i64 %1971, 16
  %1973 = load i64, i64* %PC
  %1974 = add i64 %1973, 4
  store i64 %1974, i64* %PC
  %1975 = inttoptr i64 %1972 to i32*
  %1976 = load i32, i32* %1975
  %1977 = sub i32 %1976, 8
  %1978 = icmp ult i32 %1976, 8
  %1979 = zext i1 %1978 to i8
  %1980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1979, i8* %1980, align 1, !tbaa !2432
  %1981 = and i32 %1977, 255
  %1982 = call i32 @llvm.ctpop.i32(i32 %1981) #16
  %1983 = trunc i32 %1982 to i8
  %1984 = and i8 %1983, 1
  %1985 = xor i8 %1984, 1
  %1986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1985, i8* %1986, align 1, !tbaa !2446
  %1987 = xor i32 %1976, 8
  %1988 = xor i32 %1987, %1977
  %1989 = lshr i32 %1988, 4
  %1990 = trunc i32 %1989 to i8
  %1991 = and i8 %1990, 1
  %1992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1991, i8* %1992, align 1, !tbaa !2450
  %1993 = icmp eq i32 %1977, 0
  %1994 = zext i1 %1993 to i8
  %1995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1994, i8* %1995, align 1, !tbaa !2447
  %1996 = lshr i32 %1977, 31
  %1997 = trunc i32 %1996 to i8
  %1998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1997, i8* %1998, align 1, !tbaa !2448
  %1999 = lshr i32 %1976, 31
  %2000 = xor i32 %1996, %1999
  %2001 = add nuw nsw i32 %2000, %1999
  %2002 = icmp eq i32 %2001, 2
  %2003 = zext i1 %2002 to i8
  %2004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2003, i8* %2004, align 1, !tbaa !2449
  %2005 = load i64, i64* %PC
  %2006 = add i64 %2005, 56
  %2007 = load i64, i64* %PC
  %2008 = add i64 %2007, 6
  %2009 = load i64, i64* %PC
  %2010 = add i64 %2009, 6
  store i64 %2010, i64* %PC
  %2011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2012 = load i8, i8* %2011, align 1, !tbaa !2447
  %2013 = icmp ne i8 %2012, 0
  %2014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2015 = load i8, i8* %2014, align 1, !tbaa !2448
  %2016 = icmp ne i8 %2015, 0
  %2017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2018 = load i8, i8* %2017, align 1, !tbaa !2449
  %2019 = icmp ne i8 %2018, 0
  %2020 = xor i1 %2016, %2019
  %2021 = or i1 %2013, %2020
  %2022 = zext i1 %2021 to i8
  store i8 %2022, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %2023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2024 = select i1 %2021, i64 %2006, i64 %2008
  store i64 %2024, i64* %2023, align 8, !tbaa !2428
  %2025 = load i8, i8* %BRANCH_TAKEN
  %2026 = icmp eq i8 %2025, 1
  br i1 %2026, label %block_4008bc, label %block_40088a
}

; Function Attrs: noinline
define %struct.Memory* @sub_400be0_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400be0:
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
  %ECX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RCX = bitcast %union.anon* %14 to i64*
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
  br label %block_400be8

block_400bf7:                                     ; preds = %block_400be8
  %40 = load i64, i64* %RBP
  %41 = sub i64 %40, 8
  %42 = load i64, i64* %PC
  %43 = add i64 %42, 4
  store i64 %43, i64* %PC
  %44 = inttoptr i64 %41 to i64*
  %45 = load i64, i64* %44
  store i64 %45, i64* %RAX, align 8, !tbaa !2428
  %46 = load i64, i64* %RAX
  %47 = load i64, i64* %PC
  %48 = add i64 %47, 2
  store i64 %48, i64* %PC
  %49 = inttoptr i64 %46 to i32*
  %50 = load i32, i32* %49
  %51 = zext i32 %50 to i64
  store i64 %51, i64* %RCX, align 8, !tbaa !2428
  %52 = load i64, i64* %RBP
  %53 = sub i64 %52, 8
  %54 = load i64, i64* %PC
  %55 = add i64 %54, 4
  store i64 %55, i64* %PC
  %56 = inttoptr i64 %53 to i64*
  %57 = load i64, i64* %56
  store i64 %57, i64* %RAX, align 8, !tbaa !2428
  %58 = load i64, i64* %RAX
  %59 = add i64 %58, 4
  %60 = load i32, i32* %ECX
  %61 = zext i32 %60 to i64
  %62 = load i64, i64* %PC
  %63 = add i64 %62, 3
  store i64 %63, i64* %PC
  %64 = inttoptr i64 %59 to i32*
  store i32 %60, i32* %64
  %65 = load i64, i64* %RBP
  %66 = sub i64 %65, 8
  %67 = load i64, i64* %PC
  %68 = add i64 %67, 4
  store i64 %68, i64* %PC
  %69 = inttoptr i64 %66 to i64*
  %70 = load i64, i64* %69
  store i64 %70, i64* %RAX, align 8, !tbaa !2428
  %71 = load i64, i64* %RAX
  %72 = add i64 %71, 8
  %73 = load i64, i64* %PC
  %74 = add i64 %73, 4
  store i64 %74, i64* %PC
  %75 = inttoptr i64 %72 to i64*
  %76 = load i64, i64* %75
  store i64 %76, i64* %RAX, align 8, !tbaa !2428
  %77 = load i64, i64* %RBP
  %78 = sub i64 %77, 8
  %79 = load i64, i64* %RAX
  %80 = load i64, i64* %PC
  %81 = add i64 %80, 4
  store i64 %81, i64* %PC
  %82 = inttoptr i64 %78 to i64*
  store i64 %79, i64* %82
  %83 = load i64, i64* %PC
  %84 = sub i64 %83, 40
  %85 = load i64, i64* %PC
  %86 = add i64 %85, 5
  store i64 %86, i64* %PC
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %84, i64* %87, align 8, !tbaa !2428
  br label %block_400be8

block_400c15:                                     ; preds = %block_400be8
  %88 = load i64, i64* %PC
  %89 = add i64 %88, 1
  store i64 %89, i64* %PC
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %91 = load i64, i64* %90, align 8, !tbaa !2428
  %92 = add i64 %91, 8
  %93 = inttoptr i64 %91 to i64*
  %94 = load i64, i64* %93
  store i64 %94, i64* %RBP, align 8, !tbaa !2428
  store i64 %92, i64* %90, align 8, !tbaa !2428
  %95 = load i64, i64* %PC
  %96 = add i64 %95, 1
  store i64 %96, i64* %PC
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %99 = load i64, i64* %98, align 8, !tbaa !2428
  %100 = inttoptr i64 %99 to i64*
  %101 = load i64, i64* %100
  store i64 %101, i64* %97, align 8, !tbaa !2428
  %102 = add i64 %99, 8
  store i64 %102, i64* %98, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_400be8:                                     ; preds = %block_400bf7, %block_400be0
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400be0 ], [ %MEMORY.0, %block_400bf7 ]
  %103 = load i64, i64* %RBP
  %104 = sub i64 %103, 8
  %105 = load i64, i64* %PC
  %106 = add i64 %105, 4
  store i64 %106, i64* %PC
  %107 = inttoptr i64 %104 to i64*
  %108 = load i64, i64* %107
  store i64 %108, i64* %RAX, align 8, !tbaa !2428
  %109 = load i64, i64* %RAX
  %110 = add i64 %109, 8
  %111 = load i64, i64* %PC
  %112 = add i64 %111, 5
  store i64 %112, i64* %PC
  %113 = inttoptr i64 %110 to i64*
  %114 = load i64, i64* %113
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %115, align 1, !tbaa !2432
  %116 = trunc i64 %114 to i32
  %117 = and i32 %116, 255
  %118 = call i32 @llvm.ctpop.i32(i32 %117) #16
  %119 = trunc i32 %118 to i8
  %120 = and i8 %119, 1
  %121 = xor i8 %120, 1
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %121, i8* %122, align 1, !tbaa !2446
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %123, align 1, !tbaa !2450
  %124 = icmp eq i64 %114, 0
  %125 = zext i1 %124 to i8
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %125, i8* %126, align 1, !tbaa !2447
  %127 = lshr i64 %114, 63
  %128 = trunc i64 %127 to i8
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %128, i8* %129, align 1, !tbaa !2448
  %130 = lshr i64 %114, 63
  %131 = xor i64 %127, %130
  %132 = add nuw nsw i64 %131, %130
  %133 = icmp eq i64 %132, 2
  %134 = zext i1 %133 to i8
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %134, i8* %135, align 1, !tbaa !2449
  %136 = load i64, i64* %PC
  %137 = add i64 %136, 36
  %138 = load i64, i64* %PC
  %139 = add i64 %138, 6
  %140 = load i64, i64* %PC
  %141 = add i64 %140, 6
  store i64 %141, i64* %PC
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %143 = load i8, i8* %142, align 1, !tbaa !2447
  store i8 %143, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %145 = icmp ne i8 %143, 0
  %146 = select i1 %145, i64 %137, i64 %139
  store i64 %146, i64* %144, align 8, !tbaa !2428
  %147 = load i8, i8* %BRANCH_TAKEN
  %148 = icmp eq i8 %147, 1
  br i1 %148, label %block_400c15, label %block_400bf7
}

; Function Attrs: noinline
define %struct.Memory* @sub_401090___libc_csu_fini(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_401090:
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
define %struct.Memory* @sub_401020___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_401020:
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
  store i8 %128, i8* %129, align 1, !tbaa !2450
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
  store i8 %162, i8* %163, align 1, !tbaa !2450
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
  store i64 %182, i64* %RBP, align 8, !tbaa !2428
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %181, i8* %183, align 1, !tbaa !2452
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %185 = trunc i64 %182 to i32
  %186 = and i32 %185, 255
  %187 = call i32 @llvm.ctpop.i32(i32 %186) #16
  %188 = trunc i32 %187 to i8
  %189 = and i8 %188, 1
  %190 = xor i8 %189, 1
  store i8 %190, i8* %184, align 1, !tbaa !2452
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %191, align 1, !tbaa !2452
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %193 = icmp eq i64 %182, 0
  %194 = zext i1 %193 to i8
  store i8 %194, i8* %192, align 1, !tbaa !2452
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %196 = lshr i64 %182, 63
  %197 = trunc i64 %196 to i8
  store i8 %197, i8* %195, align 1, !tbaa !2452
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %198, align 1, !tbaa !2452
  %199 = load i64, i64* %PC
  %200 = sub i64 %199, 2660
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
  %211 = call %struct.Memory* @sub_4005e8__init_proc(%struct.State* %0, i64 %210, %struct.Memory* %2)
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
  store i8 %226, i8* %227, align 1, !tbaa !2447
  %228 = lshr i64 %216, 63
  %229 = trunc i64 %228 to i8
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %229, i8* %230, align 1, !tbaa !2448
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %231, align 1, !tbaa !2449
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %232, align 1, !tbaa !2450
  %233 = load i64, i64* %PC
  %234 = add i64 %233, 34
  %235 = load i64, i64* %PC
  %236 = add i64 %235, 2
  %237 = load i64, i64* %PC
  %238 = add i64 %237, 2
  store i64 %238, i64* %PC
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %240 = load i8, i8* %239, align 1, !tbaa !2447
  store i8 %240, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %242 = icmp ne i8 %240, 0
  %243 = select i1 %242, i64 %234, i64 %236
  store i64 %243, i64* %241, align 8, !tbaa !2428
  %244 = load i8, i8* %BRANCH_TAKEN
  %245 = icmp eq i8 %244, 1
  br i1 %245, label %block_401076, label %block_401056

block_401076:                                     ; preds = %block_401060, %block_401020
  %MEMORY.0 = phi %struct.Memory* [ %211, %block_401020 ], [ %387, %block_401060 ]
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
  store i8 %266, i8* %267, align 1, !tbaa !2450
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

block_401056:                                     ; preds = %block_401020
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
  store i8 %346, i8* %347, align 1, !tbaa !2447
  %348 = lshr i32 %336, 31
  %349 = trunc i32 %348 to i8
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %349, i8* %350, align 1, !tbaa !2448
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %351, align 1, !tbaa !2449
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %352, align 1, !tbaa !2450
  %353 = load i64, i64* %RAX
  %354 = load i64, i64* %RAX
  %355 = add i64 %354, %353
  %356 = load i32, i32* %EAX
  %357 = zext i32 %356 to i64
  %358 = load i64, i64* %PC
  %359 = add i64 %358, 8
  store i64 %359, i64* %PC
  br label %block_401060

block_401060:                                     ; preds = %block_401060, %block_401056
  %MEMORY.1 = phi %struct.Memory* [ %211, %block_401056 ], [ %387, %block_401060 ]
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
  store i8 %408, i8* %409, align 1, !tbaa !2450
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
  store i8 %441, i8* %442, align 1, !tbaa !2450
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
  store i8 %466, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %468 = select i1 %465, i64 %458, i64 %460
  store i64 %468, i64* %467, align 8, !tbaa !2428
  %469 = load i8, i8* %BRANCH_TAKEN
  %470 = icmp eq i8 %469, 1
  br i1 %470, label %block_401060, label %block_401076
}

; Function Attrs: noinline
define %struct.Memory* @sub_400750___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400750:
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
  store i8 0, i8* %22, align 1, !tbaa !2450
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
  store i8 %43, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %45 = select i1 %42, i64 %35, i64 %37
  store i64 %45, i64* %44, align 8, !tbaa !2428
  %46 = load i8, i8* %BRANCH_TAKEN
  %47 = icmp eq i8 %46, 1
  br i1 %47, label %block_400770, label %block_400759

block_400770:                                     ; preds = %block_400750
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

block_400759:                                     ; preds = %block_400750
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
  %78 = call %struct.Memory* @sub_4006e0_deregister_tm_clones(%struct.State* %0, i64 %77, %struct.Memory* %2)
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
define %struct.Memory* @sub_400fd0_kill_list(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400fd0:
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
  %28 = load i64, i64* %RSP
  %29 = load i64, i64* %PC
  %30 = add i64 %29, 4
  store i64 %30, i64* %PC
  %31 = sub i64 %28, 16
  store i64 %31, i64* %RSP, align 8, !tbaa !2428
  %32 = icmp ult i64 %28, 16
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %33, i8* %34, align 1, !tbaa !2432
  %35 = trunc i64 %31 to i32
  %36 = and i32 %35, 255
  %37 = call i32 @llvm.ctpop.i32(i32 %36) #16
  %38 = trunc i32 %37 to i8
  %39 = and i8 %38, 1
  %40 = xor i8 %39, 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %40, i8* %41, align 1, !tbaa !2446
  %42 = xor i64 16, %28
  %43 = xor i64 %42, %31
  %44 = lshr i64 %43, 4
  %45 = trunc i64 %44 to i8
  %46 = and i8 %45, 1
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %46, i8* %47, align 1, !tbaa !2450
  %48 = icmp eq i64 %31, 0
  %49 = zext i1 %48 to i8
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %49, i8* %50, align 1, !tbaa !2447
  %51 = lshr i64 %31, 63
  %52 = trunc i64 %51 to i8
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %52, i8* %53, align 1, !tbaa !2448
  %54 = lshr i64 %28, 63
  %55 = xor i64 %51, %54
  %56 = add nuw nsw i64 %55, %54
  %57 = icmp eq i64 %56, 2
  %58 = zext i1 %57 to i8
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %58, i8* %59, align 1, !tbaa !2449
  %60 = load i64, i64* %RBP
  %61 = sub i64 %60, 8
  %62 = load i64, i64* %RDI
  %63 = load i64, i64* %PC
  %64 = add i64 %63, 4
  store i64 %64, i64* %PC
  %65 = inttoptr i64 %61 to i64*
  store i64 %62, i64* %65
  br label %block_400fdc

block_400fe7:                                     ; preds = %block_400fdc
  %66 = load i64, i64* %RBP
  %67 = sub i64 %66, 8
  %68 = load i64, i64* %PC
  %69 = add i64 %68, 4
  store i64 %69, i64* %PC
  %70 = inttoptr i64 %67 to i64*
  %71 = load i64, i64* %70
  store i64 %71, i64* %RAX, align 8, !tbaa !2428
  %72 = load i64, i64* %RAX
  %73 = add i64 %72, 8
  %74 = load i64, i64* %PC
  %75 = add i64 %74, 4
  store i64 %75, i64* %PC
  %76 = inttoptr i64 %73 to i64*
  %77 = load i64, i64* %76
  store i64 %77, i64* %RAX, align 8, !tbaa !2428
  %78 = load i64, i64* %RBP
  %79 = sub i64 %78, 16
  %80 = load i64, i64* %RAX
  %81 = load i64, i64* %PC
  %82 = add i64 %81, 4
  store i64 %82, i64* %PC
  %83 = inttoptr i64 %79 to i64*
  store i64 %80, i64* %83
  %84 = load i64, i64* %RBP
  %85 = sub i64 %84, 8
  %86 = load i64, i64* %PC
  %87 = add i64 %86, 4
  store i64 %87, i64* %PC
  %88 = inttoptr i64 %85 to i64*
  %89 = load i64, i64* %88
  store i64 %89, i64* %RAX, align 8, !tbaa !2428
  %90 = load i64, i64* %RAX
  %91 = load i64, i64* %PC
  %92 = add i64 %91, 3
  store i64 %92, i64* %PC
  store i64 %90, i64* %RDI, align 8, !tbaa !2428
  %93 = load i64, i64* %PC
  %94 = sub i64 %93, 2538
  %95 = load i64, i64* %PC
  %96 = add i64 %95, 5
  %97 = load i64, i64* %PC
  %98 = add i64 %97, 5
  store i64 %98, i64* %PC
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %100 = load i64, i64* %99, align 8, !tbaa !2428
  %101 = add i64 %100, -8
  %102 = inttoptr i64 %101 to i64*
  store i64 %96, i64* %102
  store i64 %101, i64* %99, align 8, !tbaa !2428
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %94, i64* %103, align 8, !tbaa !2428
  %104 = load i64, i64* %PC
  %105 = call %struct.Memory* @ext_602078_free(%struct.State* %0, i64 %104, %struct.Memory* %MEMORY.0)
  %106 = load i64, i64* %RBP
  %107 = sub i64 %106, 16
  %108 = load i64, i64* %PC
  %109 = add i64 %108, 4
  store i64 %109, i64* %PC
  %110 = inttoptr i64 %107 to i64*
  %111 = load i64, i64* %110
  store i64 %111, i64* %RAX, align 8, !tbaa !2428
  %112 = load i64, i64* %RBP
  %113 = sub i64 %112, 8
  %114 = load i64, i64* %RAX
  %115 = load i64, i64* %PC
  %116 = add i64 %115, 4
  store i64 %116, i64* %PC
  %117 = inttoptr i64 %113 to i64*
  store i64 %114, i64* %117
  %118 = load i64, i64* %PC
  %119 = sub i64 %118, 43
  %120 = load i64, i64* %PC
  %121 = add i64 %120, 5
  store i64 %121, i64* %PC
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %119, i64* %122, align 8, !tbaa !2428
  br label %block_400fdc

block_400fdc:                                     ; preds = %block_400fe7, %block_400fd0
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400fd0 ], [ %105, %block_400fe7 ]
  %123 = load i64, i64* %RBP
  %124 = sub i64 %123, 8
  %125 = load i64, i64* %PC
  %126 = add i64 %125, 5
  store i64 %126, i64* %PC
  %127 = inttoptr i64 %124 to i64*
  %128 = load i64, i64* %127
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %129, align 1, !tbaa !2432
  %130 = trunc i64 %128 to i32
  %131 = and i32 %130, 255
  %132 = call i32 @llvm.ctpop.i32(i32 %131) #16
  %133 = trunc i32 %132 to i8
  %134 = and i8 %133, 1
  %135 = xor i8 %134, 1
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %135, i8* %136, align 1, !tbaa !2446
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %137, align 1, !tbaa !2450
  %138 = icmp eq i64 %128, 0
  %139 = zext i1 %138 to i8
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %139, i8* %140, align 1, !tbaa !2447
  %141 = lshr i64 %128, 63
  %142 = trunc i64 %141 to i8
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %142, i8* %143, align 1, !tbaa !2448
  %144 = lshr i64 %128, 63
  %145 = xor i64 %141, %144
  %146 = add nuw nsw i64 %145, %144
  %147 = icmp eq i64 %146, 2
  %148 = zext i1 %147 to i8
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %148, i8* %149, align 1, !tbaa !2449
  %150 = load i64, i64* %PC
  %151 = add i64 %150, 43
  %152 = load i64, i64* %PC
  %153 = add i64 %152, 6
  %154 = load i64, i64* %PC
  %155 = add i64 %154, 6
  store i64 %155, i64* %PC
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %157 = load i8, i8* %156, align 1, !tbaa !2447
  store i8 %157, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %159 = icmp ne i8 %157, 0
  %160 = select i1 %159, i64 %151, i64 %153
  store i64 %160, i64* %158, align 8, !tbaa !2428
  %161 = load i8, i8* %BRANCH_TAKEN
  %162 = icmp eq i8 %161, 1
  br i1 %162, label %block_40100c, label %block_400fe7

block_40100c:                                     ; preds = %block_400fdc
  %163 = load i64, i64* %RSP
  %164 = load i64, i64* %PC
  %165 = add i64 %164, 4
  store i64 %165, i64* %PC
  %166 = add i64 16, %163
  store i64 %166, i64* %RSP, align 8, !tbaa !2428
  %167 = icmp ult i64 %166, %163
  %168 = icmp ult i64 %166, 16
  %169 = or i1 %167, %168
  %170 = zext i1 %169 to i8
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %170, i8* %171, align 1, !tbaa !2432
  %172 = trunc i64 %166 to i32
  %173 = and i32 %172, 255
  %174 = call i32 @llvm.ctpop.i32(i32 %173) #16
  %175 = trunc i32 %174 to i8
  %176 = and i8 %175, 1
  %177 = xor i8 %176, 1
  %178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %177, i8* %178, align 1, !tbaa !2446
  %179 = xor i64 16, %163
  %180 = xor i64 %179, %166
  %181 = lshr i64 %180, 4
  %182 = trunc i64 %181 to i8
  %183 = and i8 %182, 1
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %183, i8* %184, align 1, !tbaa !2450
  %185 = icmp eq i64 %166, 0
  %186 = zext i1 %185 to i8
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %186, i8* %187, align 1, !tbaa !2447
  %188 = lshr i64 %166, 63
  %189 = trunc i64 %188 to i8
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %189, i8* %190, align 1, !tbaa !2448
  %191 = lshr i64 %163, 63
  %192 = xor i64 %188, %191
  %193 = add nuw nsw i64 %192, %188
  %194 = icmp eq i64 %193, 2
  %195 = zext i1 %194 to i8
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %195, i8* %196, align 1, !tbaa !2449
  %197 = load i64, i64* %PC
  %198 = add i64 %197, 1
  store i64 %198, i64* %PC
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %200 = load i64, i64* %199, align 8, !tbaa !2428
  %201 = add i64 %200, 8
  %202 = inttoptr i64 %200 to i64*
  %203 = load i64, i64* %202
  store i64 %203, i64* %RBP, align 8, !tbaa !2428
  store i64 %201, i64* %199, align 8, !tbaa !2428
  %204 = load i64, i64* %PC
  %205 = add i64 %204, 1
  store i64 %205, i64* %PC
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %208 = load i64, i64* %207, align 8, !tbaa !2428
  %209 = inttoptr i64 %208 to i64*
  %210 = load i64, i64* %209
  store i64 %210, i64* %206, align 8, !tbaa !2428
  %211 = add i64 %208, 8
  store i64 %211, i64* %207, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0
}

; Function Attrs: noinline
define %struct.Memory* @sub_4006e0_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  store i8 %51, i8* %52, align 1, !tbaa !2450
  %53 = icmp eq i64 %36, 0
  %54 = zext i1 %53 to i8
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %54, i8* %55, align 1, !tbaa !2447
  %56 = lshr i64 %36, 63
  %57 = trunc i64 %56 to i8
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %57, i8* %58, align 1, !tbaa !2448
  %59 = lshr i64 %33, 63
  %60 = xor i64 lshr (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 63), %59
  %61 = xor i64 %56, %59
  %62 = add nuw nsw i64 %61, %60
  %63 = icmp eq i64 %62, 2
  %64 = zext i1 %63 to i8
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %64, i8* %65, align 1, !tbaa !2449
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
  %76 = load i8, i8* %75, align 1, !tbaa !2447
  store i8 %76, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %78 = icmp ne i8 %76, 0
  %79 = select i1 %78, i64 %70, i64 %72
  store i64 %79, i64* %77, align 8, !tbaa !2428
  %80 = load i8, i8* %BRANCH_TAKEN
  %81 = icmp eq i8 %80, 1
  br i1 %81, label %block_400708, label %block_4006f1

block_4006fb:                                     ; preds = %block_4006f1
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
    i64 4196106, label %block_40070a
    i64 4196099, label %block_400703
  ]

block_4006f1:                                     ; preds = %block_4006e0
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
  store i8 %112, i8* %113, align 1, !tbaa !2447
  %114 = lshr i64 %102, 63
  %115 = trunc i64 %114 to i8
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %115, i8* %116, align 1, !tbaa !2448
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %117, align 1, !tbaa !2449
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %118, align 1, !tbaa !2450
  %119 = load i64, i64* %PC
  %120 = add i64 %119, 15
  %121 = load i64, i64* %PC
  %122 = add i64 %121, 2
  %123 = load i64, i64* %PC
  %124 = add i64 %123, 2
  store i64 %124, i64* %PC
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %126 = load i8, i8* %125, align 1, !tbaa !2447
  store i8 %126, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %128 = icmp ne i8 %126, 0
  %129 = select i1 %128, i64 %120, i64 %122
  store i64 %129, i64* %127, align 8, !tbaa !2428
  %130 = load i8, i8* %BRANCH_TAKEN
  %131 = icmp eq i8 %130, 1
  br i1 %131, label %block_400708, label %block_4006fb

block_400708:                                     ; preds = %block_400703, %block_4006f1, %block_4006e0
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4006e0 ], [ %2, %block_4006f1 ], [ %2, %block_400703 ]
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

block_40070a:                                     ; preds = %block_4006fb
  %147 = load i64, i64* %RAX
  %148 = load i64, i64* %RAX
  %149 = add i64 %148, %147
  %150 = load i16, i16* %AX
  %151 = zext i16 %150 to i64
  %152 = load i64, i64* %PC
  %153 = add i64 %152, 6
  store i64 %153, i64* %PC
  %154 = load i64, i64* %PC
  %155 = tail call %struct.Memory* @sub_400710_register_tm_clones(%struct.State* %0, i64 %154, %struct.Memory* %2)
  ret %struct.Memory* %155

block_400703:                                     ; preds = %block_4006fb
  %156 = load i64, i64* %RAX
  %157 = load i64, i64* %RAX
  %158 = add i64 %157, %156
  %159 = load i32, i32* %EAX
  %160 = zext i32 %159 to i64
  %161 = load i64, i64* %PC
  %162 = add i64 %161, 5
  store i64 %162, i64* %PC
  br label %block_400708

; <label>:163:                                    ; preds = %block_4006fb
  %164 = load i64, i64* %PC
  %165 = tail call %struct.Memory* @__remill_jump(%struct.State* %0, i64 %164, %struct.Memory* %2)
  ret %struct.Memory* %165
}

; Function Attrs: noinline
define %struct.Memory* @sub_400b40_create_link_list(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400b40:
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
  %46 = load i64, i64* %RSP
  %47 = load i64, i64* %PC
  %48 = add i64 %47, 4
  store i64 %48, i64* %PC
  %49 = sub i64 %46, 32
  store i64 %49, i64* %RSP, align 8, !tbaa !2428
  %50 = icmp ult i64 %46, 32
  %51 = zext i1 %50 to i8
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %51, i8* %52, align 1, !tbaa !2432
  %53 = trunc i64 %49 to i32
  %54 = and i32 %53, 255
  %55 = call i32 @llvm.ctpop.i32(i32 %54) #16
  %56 = trunc i32 %55 to i8
  %57 = and i8 %56, 1
  %58 = xor i8 %57, 1
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %58, i8* %59, align 1, !tbaa !2446
  %60 = xor i64 32, %46
  %61 = xor i64 %60, %49
  %62 = lshr i64 %61, 4
  %63 = trunc i64 %62 to i8
  %64 = and i8 %63, 1
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %64, i8* %65, align 1, !tbaa !2450
  %66 = icmp eq i64 %49, 0
  %67 = zext i1 %66 to i8
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %67, i8* %68, align 1, !tbaa !2447
  %69 = lshr i64 %49, 63
  %70 = trunc i64 %69 to i8
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %70, i8* %71, align 1, !tbaa !2448
  %72 = lshr i64 %46, 63
  %73 = xor i64 %69, %72
  %74 = add nuw nsw i64 %73, %72
  %75 = icmp eq i64 %74, 2
  %76 = zext i1 %75 to i8
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %76, i8* %77, align 1, !tbaa !2449
  %78 = load i64, i64* %RSI
  %79 = load i32, i32* %ESI
  %80 = zext i32 %79 to i64
  %81 = load i64, i64* %PC
  %82 = add i64 %81, 2
  store i64 %82, i64* %PC
  %83 = xor i64 %80, %78
  %84 = trunc i64 %83 to i32
  %85 = and i64 %83, 4294967295
  store i64 %85, i64* %RSI, align 8, !tbaa !2428
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %86, align 1, !tbaa !2432
  %87 = and i32 %84, 255
  %88 = call i32 @llvm.ctpop.i32(i32 %87) #16
  %89 = trunc i32 %88 to i8
  %90 = and i8 %89, 1
  %91 = xor i8 %90, 1
  %92 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %91, i8* %92, align 1, !tbaa !2446
  %93 = icmp eq i32 %84, 0
  %94 = zext i1 %93 to i8
  %95 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %94, i8* %95, align 1, !tbaa !2447
  %96 = lshr i32 %84, 31
  %97 = trunc i32 %96 to i8
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %97, i8* %98, align 1, !tbaa !2448
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %99, align 1, !tbaa !2449
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %100, align 1, !tbaa !2450
  %101 = load i64, i64* %PC
  %102 = add i64 %101, 5
  store i64 %102, i64* %PC
  store i64 16, i64* %RAX, align 8, !tbaa !2428
  %103 = load i32, i32* %EAX
  %104 = zext i32 %103 to i64
  %105 = load i64, i64* %PC
  %106 = add i64 %105, 2
  store i64 %106, i64* %PC
  %107 = and i64 %104, 4294967295
  store i64 %107, i64* %RDX, align 8, !tbaa !2428
  %108 = load i64, i64* %RBP
  %109 = sub i64 %108, 8
  %110 = load i64, i64* %RDI
  %111 = load i64, i64* %PC
  %112 = add i64 %111, 4
  store i64 %112, i64* %PC
  %113 = inttoptr i64 %109 to i64*
  store i64 %110, i64* %113
  %114 = load i64, i64* %RBP
  %115 = sub i64 %114, 8
  %116 = load i64, i64* %PC
  %117 = add i64 %116, 4
  store i64 %117, i64* %PC
  %118 = inttoptr i64 %115 to i64*
  %119 = load i64, i64* %118
  store i64 %119, i64* %RDI, align 8, !tbaa !2428
  %120 = load i64, i64* %PC
  %121 = sub i64 %120, 1289
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
  %132 = call %struct.Memory* @ext_400650_memset(%struct.State* %0, i64 %131, %struct.Memory* %2)
  %133 = load i64, i64* %RBP
  %134 = sub i64 %133, 8
  %135 = load i64, i64* %PC
  %136 = add i64 %135, 4
  store i64 %136, i64* %PC
  %137 = inttoptr i64 %134 to i64*
  %138 = load i64, i64* %137
  store i64 %138, i64* %RDX, align 8, !tbaa !2428
  %139 = load i64, i64* %RBP
  %140 = sub i64 %139, 32
  %141 = load i64, i64* %RDX
  %142 = load i64, i64* %PC
  %143 = add i64 %142, 4
  store i64 %143, i64* %PC
  %144 = inttoptr i64 %140 to i64*
  store i64 %141, i64* %144
  %145 = load i64, i64* %RBP
  %146 = sub i64 %145, 12
  %147 = load i64, i64* %PC
  %148 = add i64 %147, 7
  store i64 %148, i64* %PC
  %149 = inttoptr i64 %146 to i32*
  store i32 0, i32* %149
  br label %block_400b6d

block_400b82:                                     ; preds = %block_400b6d
  %150 = load i64, i64* %PC
  %151 = add i64 %150, 5
  store i64 %151, i64* %PC
  store i64 16, i64* %RAX, align 8, !tbaa !2428
  %152 = load i32, i32* %EAX
  %153 = zext i32 %152 to i64
  %154 = load i64, i64* %PC
  %155 = add i64 %154, 2
  store i64 %155, i64* %PC
  %156 = and i64 %153, 4294967295
  store i64 %156, i64* %RDI, align 8, !tbaa !2428
  %157 = load i64, i64* %PC
  %158 = sub i64 %157, 1305
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
  %169 = call %struct.Memory* @ext_400670_malloc(%struct.State* %0, i64 %168, %struct.Memory* %MEMORY.0)
  %170 = load i64, i64* %RBP
  %171 = sub i64 %170, 24
  %172 = load i64, i64* %RAX
  %173 = load i64, i64* %PC
  %174 = add i64 %173, 4
  store i64 %174, i64* %PC
  %175 = inttoptr i64 %171 to i64*
  store i64 %172, i64* %175
  %176 = load i64, i64* %RBP
  %177 = sub i64 %176, 24
  %178 = load i64, i64* %PC
  %179 = add i64 %178, 4
  store i64 %179, i64* %PC
  %180 = inttoptr i64 %177 to i64*
  %181 = load i64, i64* %180
  store i64 %181, i64* %RAX, align 8, !tbaa !2428
  %182 = load i64, i64* %RAX
  %183 = load i64, i64* %PC
  %184 = add i64 %183, 6
  store i64 %184, i64* %PC
  %185 = inttoptr i64 %182 to i32*
  store i32 1, i32* %185
  %186 = load i64, i64* %RBP
  %187 = sub i64 %186, 24
  %188 = load i64, i64* %PC
  %189 = add i64 %188, 4
  store i64 %189, i64* %PC
  %190 = inttoptr i64 %187 to i64*
  %191 = load i64, i64* %190
  store i64 %191, i64* %RAX, align 8, !tbaa !2428
  %192 = load i64, i64* %RAX
  %193 = add i64 %192, 4
  %194 = load i64, i64* %PC
  %195 = add i64 %194, 7
  store i64 %195, i64* %PC
  %196 = inttoptr i64 %193 to i32*
  store i32 1, i32* %196
  %197 = load i64, i64* %RBP
  %198 = sub i64 %197, 24
  %199 = load i64, i64* %PC
  %200 = add i64 %199, 4
  store i64 %200, i64* %PC
  %201 = inttoptr i64 %198 to i64*
  %202 = load i64, i64* %201
  store i64 %202, i64* %RAX, align 8, !tbaa !2428
  %203 = load i64, i64* %RAX
  %204 = add i64 %203, 8
  %205 = load i64, i64* %PC
  %206 = add i64 %205, 8
  store i64 %206, i64* %PC
  %207 = inttoptr i64 %204 to i64*
  store i64 0, i64* %207
  %208 = load i64, i64* %RBP
  %209 = sub i64 %208, 24
  %210 = load i64, i64* %PC
  %211 = add i64 %210, 4
  store i64 %211, i64* %PC
  %212 = inttoptr i64 %209 to i64*
  %213 = load i64, i64* %212
  store i64 %213, i64* %RAX, align 8, !tbaa !2428
  %214 = load i64, i64* %RBP
  %215 = sub i64 %214, 32
  %216 = load i64, i64* %PC
  %217 = add i64 %216, 4
  store i64 %217, i64* %PC
  %218 = inttoptr i64 %215 to i64*
  %219 = load i64, i64* %218
  store i64 %219, i64* %RDI, align 8, !tbaa !2428
  %220 = load i64, i64* %RDI
  %221 = add i64 %220, 8
  %222 = load i64, i64* %RAX
  %223 = load i64, i64* %PC
  %224 = add i64 %223, 4
  store i64 %224, i64* %PC
  %225 = inttoptr i64 %221 to i64*
  store i64 %222, i64* %225
  %226 = load i64, i64* %RBP
  %227 = sub i64 %226, 32
  %228 = load i64, i64* %PC
  %229 = add i64 %228, 4
  store i64 %229, i64* %PC
  %230 = inttoptr i64 %227 to i64*
  %231 = load i64, i64* %230
  store i64 %231, i64* %RAX, align 8, !tbaa !2428
  %232 = load i64, i64* %RAX
  %233 = add i64 %232, 8
  %234 = load i64, i64* %PC
  %235 = add i64 %234, 4
  store i64 %235, i64* %PC
  %236 = inttoptr i64 %233 to i64*
  %237 = load i64, i64* %236
  store i64 %237, i64* %RAX, align 8, !tbaa !2428
  %238 = load i64, i64* %RBP
  %239 = sub i64 %238, 32
  %240 = load i64, i64* %RAX
  %241 = load i64, i64* %PC
  %242 = add i64 %241, 4
  store i64 %242, i64* %PC
  %243 = inttoptr i64 %239 to i64*
  store i64 %240, i64* %243
  %244 = load i64, i64* %RBP
  %245 = sub i64 %244, 12
  %246 = load i64, i64* %PC
  %247 = add i64 %246, 3
  store i64 %247, i64* %PC
  %248 = inttoptr i64 %245 to i32*
  %249 = load i32, i32* %248
  %250 = zext i32 %249 to i64
  store i64 %250, i64* %RAX, align 8, !tbaa !2428
  %251 = load i64, i64* %RAX
  %252 = load i64, i64* %PC
  %253 = add i64 %252, 3
  store i64 %253, i64* %PC
  %254 = trunc i64 %251 to i32
  %255 = add i32 1, %254
  %256 = zext i32 %255 to i64
  store i64 %256, i64* %RAX, align 8, !tbaa !2428
  %257 = icmp ult i32 %255, %254
  %258 = icmp ult i32 %255, 1
  %259 = or i1 %257, %258
  %260 = zext i1 %259 to i8
  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %260, i8* %261, align 1, !tbaa !2432
  %262 = and i32 %255, 255
  %263 = call i32 @llvm.ctpop.i32(i32 %262) #16
  %264 = trunc i32 %263 to i8
  %265 = and i8 %264, 1
  %266 = xor i8 %265, 1
  %267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %266, i8* %267, align 1, !tbaa !2446
  %268 = xor i64 1, %251
  %269 = trunc i64 %268 to i32
  %270 = xor i32 %269, %255
  %271 = lshr i32 %270, 4
  %272 = trunc i32 %271 to i8
  %273 = and i8 %272, 1
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %273, i8* %274, align 1, !tbaa !2450
  %275 = icmp eq i32 %255, 0
  %276 = zext i1 %275 to i8
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %276, i8* %277, align 1, !tbaa !2447
  %278 = lshr i32 %255, 31
  %279 = trunc i32 %278 to i8
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %279, i8* %280, align 1, !tbaa !2448
  %281 = lshr i32 %254, 31
  %282 = xor i32 %278, %281
  %283 = add nuw nsw i32 %282, %278
  %284 = icmp eq i32 %283, 2
  %285 = zext i1 %284 to i8
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %285, i8* %286, align 1, !tbaa !2449
  %287 = load i64, i64* %RBP
  %288 = sub i64 %287, 12
  %289 = load i32, i32* %EAX
  %290 = zext i32 %289 to i64
  %291 = load i64, i64* %PC
  %292 = add i64 %291, 3
  store i64 %292, i64* %PC
  %293 = inttoptr i64 %288 to i32*
  store i32 %289, i32* %293
  %294 = load i64, i64* %PC
  %295 = sub i64 %294, 103
  %296 = load i64, i64* %PC
  %297 = add i64 %296, 5
  store i64 %297, i64* %PC
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %295, i64* %298, align 8, !tbaa !2428
  br label %block_400b6d

block_400bd9:                                     ; preds = %block_400b6d
  %299 = load i64, i64* %RSP
  %300 = load i64, i64* %PC
  %301 = add i64 %300, 4
  store i64 %301, i64* %PC
  %302 = add i64 32, %299
  store i64 %302, i64* %RSP, align 8, !tbaa !2428
  %303 = icmp ult i64 %302, %299
  %304 = icmp ult i64 %302, 32
  %305 = or i1 %303, %304
  %306 = zext i1 %305 to i8
  %307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %306, i8* %307, align 1, !tbaa !2432
  %308 = trunc i64 %302 to i32
  %309 = and i32 %308, 255
  %310 = call i32 @llvm.ctpop.i32(i32 %309) #16
  %311 = trunc i32 %310 to i8
  %312 = and i8 %311, 1
  %313 = xor i8 %312, 1
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %313, i8* %314, align 1, !tbaa !2446
  %315 = xor i64 32, %299
  %316 = xor i64 %315, %302
  %317 = lshr i64 %316, 4
  %318 = trunc i64 %317 to i8
  %319 = and i8 %318, 1
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %319, i8* %320, align 1, !tbaa !2450
  %321 = icmp eq i64 %302, 0
  %322 = zext i1 %321 to i8
  %323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %322, i8* %323, align 1, !tbaa !2447
  %324 = lshr i64 %302, 63
  %325 = trunc i64 %324 to i8
  %326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %325, i8* %326, align 1, !tbaa !2448
  %327 = lshr i64 %299, 63
  %328 = xor i64 %324, %327
  %329 = add nuw nsw i64 %328, %324
  %330 = icmp eq i64 %329, 2
  %331 = zext i1 %330 to i8
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %331, i8* %332, align 1, !tbaa !2449
  %333 = load i64, i64* %PC
  %334 = add i64 %333, 1
  store i64 %334, i64* %PC
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %336 = load i64, i64* %335, align 8, !tbaa !2428
  %337 = add i64 %336, 8
  %338 = inttoptr i64 %336 to i64*
  %339 = load i64, i64* %338
  store i64 %339, i64* %RBP, align 8, !tbaa !2428
  store i64 %337, i64* %335, align 8, !tbaa !2428
  %340 = load i64, i64* %PC
  %341 = add i64 %340, 1
  store i64 %341, i64* %PC
  %342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %344 = load i64, i64* %343, align 8, !tbaa !2428
  %345 = inttoptr i64 %344 to i64*
  %346 = load i64, i64* %345
  store i64 %346, i64* %342, align 8, !tbaa !2428
  %347 = add i64 %344, 8
  store i64 %347, i64* %343, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_400b6d:                                     ; preds = %block_400b82, %block_400b40
  %MEMORY.0 = phi %struct.Memory* [ %132, %block_400b40 ], [ %169, %block_400b82 ]
  %348 = load i64, i64* %RBP
  %349 = sub i64 %348, 12
  %350 = load i64, i64* %PC
  %351 = add i64 %350, 3
  store i64 %351, i64* %PC
  %352 = inttoptr i64 %349 to i32*
  %353 = load i32, i32* %352
  %354 = zext i32 %353 to i64
  store i64 %354, i64* %RAX, align 8, !tbaa !2428
  %355 = load i64, i64* %PC
  %356 = add i64 %355, 7
  store i64 %356, i64* %PC
  %357 = load i32, i32* bitcast (%reg_len_type* @reg_len to i32*)
  %358 = zext i32 %357 to i64
  store i64 %358, i64* %RCX, align 8, !tbaa !2428
  %359 = load i64, i64* %RCX
  %360 = load i64, i64* %PC
  %361 = add i64 %360, 3
  store i64 %361, i64* %PC
  %362 = trunc i64 %359 to i32
  %363 = add i32 1, %362
  %364 = zext i32 %363 to i64
  store i64 %364, i64* %RCX, align 8, !tbaa !2428
  %365 = icmp ult i32 %363, %362
  %366 = icmp ult i32 %363, 1
  %367 = or i1 %365, %366
  %368 = zext i1 %367 to i8
  %369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %368, i8* %369, align 1, !tbaa !2432
  %370 = and i32 %363, 255
  %371 = call i32 @llvm.ctpop.i32(i32 %370) #16
  %372 = trunc i32 %371 to i8
  %373 = and i8 %372, 1
  %374 = xor i8 %373, 1
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %374, i8* %375, align 1, !tbaa !2446
  %376 = xor i64 1, %359
  %377 = trunc i64 %376 to i32
  %378 = xor i32 %377, %363
  %379 = lshr i32 %378, 4
  %380 = trunc i32 %379 to i8
  %381 = and i8 %380, 1
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %381, i8* %382, align 1, !tbaa !2450
  %383 = icmp eq i32 %363, 0
  %384 = zext i1 %383 to i8
  %385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %384, i8* %385, align 1, !tbaa !2447
  %386 = lshr i32 %363, 31
  %387 = trunc i32 %386 to i8
  %388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %387, i8* %388, align 1, !tbaa !2448
  %389 = lshr i32 %362, 31
  %390 = xor i32 %386, %389
  %391 = add nuw nsw i32 %390, %386
  %392 = icmp eq i32 %391, 2
  %393 = zext i1 %392 to i8
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %393, i8* %394, align 1, !tbaa !2449
  %395 = load i32, i32* %EAX
  %396 = zext i32 %395 to i64
  %397 = load i32, i32* %ECX
  %398 = zext i32 %397 to i64
  %399 = load i64, i64* %PC
  %400 = add i64 %399, 2
  store i64 %400, i64* %PC
  %401 = sub i32 %395, %397
  %402 = icmp ult i32 %395, %397
  %403 = zext i1 %402 to i8
  %404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %403, i8* %404, align 1, !tbaa !2432
  %405 = and i32 %401, 255
  %406 = call i32 @llvm.ctpop.i32(i32 %405) #16
  %407 = trunc i32 %406 to i8
  %408 = and i8 %407, 1
  %409 = xor i8 %408, 1
  %410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %409, i8* %410, align 1, !tbaa !2446
  %411 = xor i64 %398, %396
  %412 = trunc i64 %411 to i32
  %413 = xor i32 %412, %401
  %414 = lshr i32 %413, 4
  %415 = trunc i32 %414 to i8
  %416 = and i8 %415, 1
  %417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %416, i8* %417, align 1, !tbaa !2450
  %418 = icmp eq i32 %401, 0
  %419 = zext i1 %418 to i8
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %419, i8* %420, align 1, !tbaa !2447
  %421 = lshr i32 %401, 31
  %422 = trunc i32 %421 to i8
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %422, i8* %423, align 1, !tbaa !2448
  %424 = lshr i32 %395, 31
  %425 = lshr i32 %397, 31
  %426 = xor i32 %425, %424
  %427 = xor i32 %421, %424
  %428 = add nuw nsw i32 %427, %426
  %429 = icmp eq i32 %428, 2
  %430 = zext i1 %429 to i8
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %430, i8* %431, align 1, !tbaa !2449
  %432 = load i64, i64* %PC
  %433 = add i64 %432, 93
  %434 = load i64, i64* %PC
  %435 = add i64 %434, 6
  %436 = load i64, i64* %PC
  %437 = add i64 %436, 6
  store i64 %437, i64* %PC
  %438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %439 = load i8, i8* %438, align 1, !tbaa !2448
  %440 = icmp ne i8 %439, 0
  %441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %442 = load i8, i8* %441, align 1, !tbaa !2449
  %443 = icmp ne i8 %442, 0
  %444 = xor i1 %440, %443
  %445 = xor i1 %444, true
  %446 = zext i1 %445 to i8
  store i8 %446, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %448 = select i1 %444, i64 %435, i64 %433
  store i64 %448, i64* %447, align 8, !tbaa !2428
  %449 = load i8, i8* %BRANCH_TAKEN
  %450 = icmp eq i8 %449, 1
  br i1 %450, label %block_400bd9, label %block_400b82
}

; Function Attrs: noinline
define %struct.Memory* @sub_4006d0__dl_relocate_static_pie(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4006d0:
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
define internal void @callback_sub_400780_frame_dummy() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400780;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @1, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_400780_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400780_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400750___do_global_dtors_aux() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400750;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @3, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_400750___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400750___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_401090___libc_csu_fini() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x401090;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @4, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_401090___libc_csu_fini_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_401090___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_401020___libc_csu_init() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x401020;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @5, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_401020___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_401020___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @main() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400790;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @6, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400790_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6020a0___libc_start_main(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_602110_lrand48(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 ()* @lrand48 to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_400660_seed48(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @seed48 to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_602090_printf(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_400680___isoc99_sscanf(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @__isoc99_sscanf to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6020d8_strlen(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6020d0_strcpy(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @strcpy to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_602078_free(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_400670_malloc(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_400650_memset(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.init_proc() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4005e8;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @7, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_4005e8__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @simulate() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400c20;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @8, void ()** @2)
  ret void
}

define internal %struct.Memory* @simulate_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400c20_simulate(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.term_proc() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x401094;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @9, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_401094__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @create_link_list() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400b40;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @10, void ()** @2)
  ret void
}

define internal %struct.Memory* @create_link_list_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400b40_create_link_list(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @init() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400be0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @11, void ()** @2)
  ret void
}

define internal %struct.Memory* @init_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400be0_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @kill_list() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400fd0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @12, void ()** @2)
  ret void
}

define internal %struct.Memory* @kill_list_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400fd0_kill_list(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

define internal void @__mcsema_destructor() {
  call void @callback_sub_401090___libc_csu_fini()
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
  call void @callback_sub_401020___libc_csu_init()
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
!2447 = !{!2433, !2430, i64 2071}
!2448 = !{!2433, !2430, i64 2073}
!2449 = !{!2433, !2430, i64 2077}
!2450 = !{!2433, !2430, i64 2069}
!2451 = !{!2445, !2445, i64 0}
!2452 = !{!2430, !2430, i64 0}
!2453 = !{!2454, !2454, i64 0}
!2454 = !{!"double", !2430, i64 0}
