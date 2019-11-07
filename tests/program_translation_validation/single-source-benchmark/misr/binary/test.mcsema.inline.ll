; ModuleID = 'binary/test.mcsema.calls_renamed.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_4005f8__init_type = type <{ [23 x i8] }>
%seg_400610__plt_type = type <{ [160 x i8] }>
%seg_4006b0__text_type = type <{ [2546 x i8] }>
%seg_4010a4__fini_type = type <{ [9 x i8] }>
%seg_4010b0__rodata_type = type <{ [44 x i8], [30 x i8], [31 x i8], [43 x i8], [75 x i8], [32 x i8] }>
%seg_4011b0__eh_frame_hdr_type = type <{ [92 x i8] }>
%seg_401210__eh_frame_type = type <{ [368 x i8] }>
%seg_601de0__init_array_type = type <{ i64, i64 }>
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
@seg_4005f8__init = internal constant %seg_4005f8__init_type <{ [23 x i8] c"H\83\EC\08H\8B\05\F5\19 \00H\85\C0t\02\FF\D0H\83\C4\08\C3" }>
@seg_400610__plt = internal constant %seg_400610__plt_type <{ [160 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF%\F2\19 \00\00\00\00\00\00\00\00\00\00\00\FF%\EA\19 \00\00\00\00\00\00\00\00\00\00\00\FF%\E2\19 \00\00\00\00\00\00\00\00\00\00\00\FF%\DA\19 \00\00\00\00\00\00\00\00\00\00\00\FF%\D2\19 \00\00\00\00\00\00\00\00\00\00\00\FF%\CA\19 \00\00\00\00\00\00\00\00\00\00\00\FF%\C2\19 \00\00\00\00\00\00\00\00\00\00\00\FF%\BA\19 \00\00\00\00\00\00\00\00\00\00\00\FF%\B2\19 \00\00\00\00\00\00\00\00\00\00\00" }>
@seg_4006b0__text = internal constant %seg_4006b0__text_type <{ [2546 x i8] c"1\EDI\89\D1^H\89\E2H\83\E4\F0PTI\C7\C0\A0\10@\00H\C7\C10\10@\00H\C7\C7\A0\07@\00\FF\15\16\19 \00\F4\0F\1FD\00\00\F3\C3f.\0F\1F\84\00\00\00\00\00\0F\1F@\00U\B8p `\00H=p `\00H\89\E5t\17\B8\00\00\00\00H\85\C0t\0D]\BFp `\00\FF\E0\0F\1FD\00\00]\C3f\0F\1FD\00\00\BEp `\00UH\81\EEp `\00H\89\E5H\C1\FE\03H\89\F0H\C1\E8?H\01\C6H\D1\FEt\15\B8\00\00\00\00H\85\C0t\0B]\BFp `\00\FF\E0\0F\1F\00]\C3f\0F\1FD\00\00\80=\09\19 \00\00u\17UH\89\E5\E8~\FF\FF\FF\C6\05\F7\18 \00\01]\C3\0F\1FD\00\00\F3\C3\0F\1F@\00f.\0F\1F\84\00\00\00\00\00UH\89\E5]\EB\89f\0F\1F\84\00\00\00\00\00UH\89\E5SH\81\EC\F8\00\00\00\F2\0F\10\05\04\09\00\00\C7E\F4\00\00\00\00\89}\F0H\89u\E8\C7E\D4\0A\00\00\00\C7\04%t `\00\0A\00\00\00\F2\0F\11E\C0\C7E\D0\A0\86\01\00\83}\F0\06\0F\8E \00\00\00H\8D\BDP\FF\FF\FFH\8BE\E8H\8Bp0\E82\FE\FF\FFH\89\85@\FF\FF\FF\E9H\00\00\00\C7E\C8\01\00\00\00\8BE\C8;\04%t `\00\0F\8D\1A\00\00\00HcE\C8\C6\84\05P\FF\FF\FF0\8BE\C8\83\C0\01\89E\C8\E9\D6\FF\FF\FF\C6\85P\FF\FF\FF1Hc\04%t `\00\C6\84\05P\FF\FF\FF\00\83}\F0\07\0F\8E+\00\00\00H\BE\D8\10@\00\00\00\00\00H\8D\95J\FF\FF\FFH\8BE\E8H\8Bx8\B0\00\E8\14\FE\FF\FF\89\85<\FF\FF\FF\E9\09\00\00\00f\C7\85J\FF\FF\FF\01\00\83}\F0\08\0F\8E2\00\00\00H\BE\D8\10@\00\00\00\00\00H\8D\85J\FF\FF\FFH\8BM\E8H\8By@H\83\C0\02H\89\C2\B0\00\E8\CF\FD\FF\FF\89\858\FF\FF\FF\E9\09\00\00\00f\C7\85L\FF\FF\FF\00\00\83}\F0\09\0F\8E2\00\00\00H\BE\D8\10@\00\00\00\00\00H\8D\85J\FF\FF\FFH\8BM\E8H\8ByHH\83\C0\04H\89\C2\B0\00\E8\8A\FD\FF\FF\89\854\FF\FF\FF\E9\09\00\00\00f\C7\85N\FF\FF\FF\00\00\83<%t `\00d\0F\8E(\00\00\00H\BF\DC\10@\00\00\00\00\00\BEd\00\00\00\B0\00\E8\12\FD\FF\FF\C7E\F4\02\00\00\00\89\850\FF\FF\FF\E9\F3\01\00\00\F2\0F\10\05h\07\00\00\F2\0F\10M\C0f\0F.\C8\0F\87\0E\00\00\00\0FW\C0f\0F.E\C0\0F\86#\00\00\00H\BF\FA\10@\00\00\00\00\00\B0\00\E8\CA\FC\FF\FF\C7E\F4\03\00\00\00\89\85,\FF\FF\FF\E9\AB\01\00\00H\8D\BDP\FF\FF\FF\E8\9C\FC\FF\FFHc<%t `\00H9\F8\0F\84#\00\00\00H\BF\19\11@\00\00\00\00\00\B0\00\E8\8A\FC\FF\FF\C7E\F4\04\00\00\00\89\85(\FF\FF\FF\E9k\01\00\00H\8D\BDJ\FF\FF\FF\E8\8C\FC\FF\FFH\8D}\D8H\89\85 \FF\FF\FF\E8\5C\01\00\00\C7E\CC\00\00\00\00\83}\D4\00\0F\84M\00\00\00\C7E\C8\00\00\00\00\8BE\C8;E\D0\0F\8D5\00\00\00H\8D}\D8\E8\CF\01\00\00H\8Du\D8H\8D\95P\FF\FF\FF\8B}\D4\F2\0F\10E\C0\E8\F7\01\00\00\03E\CC\89E\CC\8BE\C8\83\C0\01\89E\C8\E9\BF\FF\FF\FF\E9o\00\00\00H\8D}\D8\E8\95\01\00\00\BF\10'\00\00H\8Du\D8H\8D\95P\FF\FF\FF\F2\0F\10E\C0\E8\BB\01\00\00\C7E\C8\00\00\00\00\89\85\1C\FF\FF\FF\8BE\C8;E\D0\0F\8D.\00\00\00\BF\01\00\00\00H\8Du\D8H\8D\95P\FF\FF\FF\F2\0F\10E\C0\E8\88\01\00\00\03E\CC\89E\CC\8BE\C8\83\C0\01\89E\C8\E9\C6\FF\FF\FF\E9\00\00\00\00H\BFD\11@\00\00\00\00\00\B0\00\E8~\FB\FF\FFH\BF\8F\11@\00\00\00\00\00L\8D\85P\FF\FF\FF\8B4%t `\00\8BU\D4\F2\0F\10E\C0\8BM\D0D\0F\B7\8DJ\FF\FF\FFD\0F\B7\95L\FF\FF\FFD\0F\B7\9DN\FF\FF\FF\8B]\D0+]\CC\F2\0F*\CB\F2\0F*U\D0\F2\0F^\CAD\89\14$D\89\5C$\08\89\85\18\FF\FF\FF\B0\02\E8\1A\FB\FF\FF\C7E\F4\00\00\00\00\89\85\14\FF\FF\FF\8BE\F4H\81\C4\F8\00\00\00[]\C3UH\89\E5H\83\EC 1\F6\B8\10\00\00\00\89\C2H\89}\F8H\8B}\F8\E8\F2\FA\FF\FFH\8BU\F8H\89U\E0\C7E\F4\00\00\00\00\8BE\F4\8B\0C%t `\00\83\C1\019\C8\0F\8DW\00\00\00\B8\10\00\00\00\89\C7\E8\E2\FA\FF\FFH\89E\E8H\8BE\E8\C7\00\01\00\00\00H\8BE\E8\C7@\04\01\00\00\00H\8BE\E8H\C7@\08\00\00\00\00H\8BE\E8H\8B}\E0H\89G\08H\8BE\E0H\8B@\08H\89E\E0\8BE\F4\83\C0\01\89E\F4\E9\94\FF\FF\FFH\83\C4 ]\C3\90UH\89\E5H\89}\F8H\8BE\F8H\83x\08\00\0F\84\1E\00\00\00H\8BE\F8\8B\08H\8BE\F8\89H\04H\8BE\F8H\8B@\08H\89E\F8\E9\D3\FF\FF\FF]\C3f\0F\1F\84\00\00\00\00\00UH\89\E5H\81\EC\80\00\00\00\B8\1F\00\00\00\89}\FCH\89u\F0\F2\0F\11E\E8H\89U\E0\C7E\D4\00\00\00\00\8B<%t `\00\83\EF\01\89E\A4\89\F8\99\8B}\A4\F7\FF\89E\C4\8B\04%t `\00\83\E8\01\99\F7\FF\89U\C8H\8Bu\F0H\89u\D8\C7E\C0\00\00\00\00\8BE\C0;E\FC\0F\8D\EE\02\00\00\C7E\D0\00\00\00\00\C7E\CC\00\00\00\00\C7E\BC\00\00\00\00\8BE\BC;E\C4\0F\8D\0A\01\00\00\E8\E0\F9\FF\FFH\89E\B0\C7E\B8\00\00\00\00\83}\B8\1F\0F\8D\DD\00\00\00H\8BE\E0kM\BC\1F\03M\B8Hc\D1\0F\BE\0C\10\83\F91\0F\85\19\00\00\00H\8BE\D8\8B\08\03M\D0\89M\D0H\8BE\D8\8BH\04\03M\CC\89M\CCH\8BE\D8H\8B@\08Hc\00H\03E\B0H\83\E0\01\89\C1H\8BE\D8\89\08\E8w\F9\FF\FF\F2\0F\10\05\9F\03\00\00\B9\E8\03\00\00\89\CAH\89U\98H\99H\8Bu\98H\F7\FE\F2H\0F*\CA\F2\0F^\C8\F2\0F\11M\A8\F2\0F\10E\E8f\0F.E\A8\0F\86\0C\00\00\00H\8BE\B0H\83\F0\01H\89E\B0H\8BE\D8H\8B@\08Hc@\04H\03E\B0H\83\E0\01\89\C1H\8BE\D8\89H\04H\8BE\D8H\8B@\08H\89E\D8H\8BE\B0H\C1\F8\01H\89E\B0\8BE\B8\83\C0\01\89E\B8\E9\19\FF\FF\FF\E9\00\00\00\00\8BE\BC\83\C0\01\89E\BC\E9\EA\FE\FF\FF\E8\D6\F8\FF\FFH\89E\B0\C7E\B8\00\00\00\00\8BE\B8;E\C8\0F\8D\DD\00\00\00H\8BE\E0kM\C4\1F\03M\B8Hc\D1\0F\BE\0C\10\83\F91\0F\85\19\00\00\00H\8BE\D8\8B\08\03M\D0\89M\D0H\8BE\D8\8BH\04\03M\CC\89M\CCH\8BE\D8H\8B@\08Hc\00H\03E\B0H\83\E0\01\89\C1H\8BE\D8\89\08\E8k\F8\FF\FF\F2\0F\10\05\93\02\00\00\B9\E8\03\00\00\89\CAH\89U\90H\99H\8Bu\90H\F7\FE\F2H\0F*\CA\F2\0F^\C8\F2\0F\11M\A8\F2\0F\10E\E8f\0F.E\A8\0F\86\0C\00\00\00H\8BE\B0H\83\F0\01H\89E\B0H\8BE\D8H\8B@\08Hc@\04H\03E\B0H\83\E0\01\89\C1H\8BE\D8\89H\04H\8BE\D8H\8B@\08H\89E\D8H\8BE\B0H\C1\F8\01H\89E\B0\8BE\B8\83\C0\01\89E\B8\E9\17\FF\FF\FF\E8\DD\F7\FF\FFH\89E\B0H\8BE\E0\8B\0C%t `\00\83\E9\01Hc\D1\0F\BE\0C\10\83\F91\0F\85\19\00\00\00H\8BE\D8\8B\08\03M\D0\89M\D0H\8BE\D8\8BH\04\03M\CC\89M\CCHcE\D0H\03E\B0H\83\E0\01\89\C1H\8BE\D8\89\08\E8\89\F7\FF\FF\F2\0F\10\05\A9\01\00\00\B9\10'\00\00\89\CAH\89U\88H\99H\8Bu\88H\F7\FE\F2H\0F*\CA\F2\0F^\C8\F2\0F\11M\A8\F2\0F\10E\E8f\0F.E\A8\0F\86\0C\00\00\00H\8BE\B0H\83\F0\01H\89E\B0HcE\CCH\03E\B0H\83\E0\01\89\C1H\8BE\D8\89H\04H\8BE\F0H\89E\D8\8BE\C0\83\C0\01\89E\C0\E9\06\FD\FF\FF\C7E\BC\00\00\00\00\8BE\BC;\04%t `\00\0F\8D4\00\00\00H\8BE\D8\8B\08H\8BE\D8;H\04\0F\84\07\00\00\00\C7E\D4\01\00\00\00H\8BE\D8H\8B@\08H\89E\D8\8BE\BC\83\C0\01\89E\BC\E9\BC\FF\FF\FF\8BE\D4H\81\C4\80\00\00\00]\C3\90UH\89\E5H\83\EC\10H\89}\F8H\83}\F8\00\0F\84%\00\00\00H\8BE\F8H\8B@\08H\89E\F0H\8BE\F8H\89\C7\E8\11\F6\FF\FFH\8BE\F0H\89E\F8\E9\D0\FF\FF\FFH\83\C4\10]\C3f.\0F\1F\84\00\00\00\00\00\0F\1F@\00AWAVI\89\D7AUATL\8D%\9E\0D \00UH\8D-\9E\0D \00SA\89\FDI\89\F6L)\E5H\83\EC\08H\C1\FD\03\E8\97\F5\FF\FFH\85\EDt 1\DB\0F\1F\84\00\00\00\00\00L\89\FAL\89\F6D\89\EFA\FF\14\DCH\83\C3\01H9\DDu\EAH\83\C4\08[]A\5CA]A^A_\C3\90f.\0F\1F\84\00\00\00\00\00\F3\C3" }>
@seg_4010a4__fini = internal constant %seg_4010a4__fini_type <{ [9 x i8] c"H\83\EC\08H\83\C4\08\C3" }>
@seg_4010b0__rodata = internal constant %seg_4010b0__rodata_type <{ [44 x i8] c"\01\00\02\00\00\00\00\00\00\00\00\00\00\00\D0?\00\00\00\00\00\00\F0?\00\00\00\00\00\88\C3@\00\00\00\00\00@\8F@%hu\00", [30 x i8] c"Register too long; Max. = %d\0A\00", [31 x i8] c"Prob. out of range 0=<Prob>=1\0A\00", [43 x i8] c"Structure does not match Register length:\0A\00", [75 x i8] c"reg_len\09#_vect\09prob      #_tms\09struct\09seed1\09seed2\09seed3\09Prob same output\0A \00", [32 x i8] c"%d\09%d\09%.3e %d\09%s\09%d\09%d\09%d\09%.8e\0A\00" }>
@seg_4011b0__eh_frame_hdr = internal constant %seg_4011b0__eh_frame_hdr_type <{ [92 x i8] c"\01\1B\03;\5C\00\00\00\0A\00\00\00`\F4\FF\FF\B8\00\00\00\00\F5\FF\FFx\00\00\000\F5\FF\FF\A4\00\00\00\F0\F5\FF\FF\E0\00\00\00\A0\F9\FF\FF\FC\00\00\00@\FA\FF\FF\18\01\00\00\80\FA\FF\FF4\01\00\000\FE\FF\FFP\01\00\00\80\FE\FF\FFp\01\00\00\F0\FE\FF\FF\B8\01\00\00" }>
@seg_401210__eh_frame = internal constant %seg_401210__eh_frame_type <{ [368 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00\80\F4\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00\84\F4\FF\FF\02\00\00\00\00\00\00\00$\00\00\000\00\00\00\A0\F3\FF\FF\A0\00\00\00\00\0E\10F\0E\18J\0F\0Bw\08\80\00?\1A;*3$\22\00\00\00\00\18\00\00\00X\00\00\00\08\F5\FF\FF\B0\03\00\00\00A\0E\10\86\02C\0D\06H\83\03\18\00\00\00t\00\00\00\9C\F8\FF\FF\9F\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\90\00\00\00 \F9\FF\FF7\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\AC\00\00\00D\F9\FF\FF\AF\03\00\00\00A\0E\10\86\02C\0D\06\00\00\00\1C\00\00\00\C8\00\00\00\D8\FC\FF\FFB\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00D\00\00\00\E8\00\00\00\08\FD\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\000\01\00\000\FD\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@seg_601de0__init_array = internal global %seg_601de0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_400790_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_400760___do_global_dtors_aux to i64) }>
@seg_601ff0__got = internal global %seg_601ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@seg_602000__got_plt = internal global %seg_602000__got_plt_type <{ [24 x i8] zeroinitializer, i64 ptrtoint (i64 (i64)* @free to i64), i64 ptrtoint (i64 (i64, i64)* @strcpy to i64), i64 ptrtoint (i64 (i64)* @strlen to i64), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), i64 ptrtoint (i64 (i64)* @seed48 to i64), i64 ptrtoint (i64 (i64)* @malloc to i64), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @__isoc99_sscanf to i64), i64 ptrtoint (i64 ()* @lrand48 to i64) }>
@seg_602060__data = internal global %seg_602060__data_type zeroinitializer
@__bss_start = global %__bss_start_type zeroinitializer
@reg_len = global %reg_len_type zeroinitializer
@0 = internal global i1 false
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400790_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400760___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4010a0___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401030___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @init_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @simulate_wrapper
@10 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@11 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @create_link_list_wrapper
@12 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @kill_list_wrapper
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_destructor, i8* null }]
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]

declare %struct.Memory* @sub_4005f8__init_proc_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400bf0_init_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400c30_simulate_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4006f0_deregister_tm_clones_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400b50_create_link_list_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

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
declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @lrand48() #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @strcpy(i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @strlen(i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @malloc(i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @free(i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @memset(i64, i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__isoc99_sscanf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #13

; Function Attrs: noinline
define %struct.Memory* @sub_4006e0__dl_relocate_static_pie(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4006e0:
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
define %struct.Memory* @sub_400790_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  %35 = tail call %struct.Memory* @sub_400720_register_tm_clones(%struct.State* %0, i64 %34, %struct.Memory* %2)
  ret %struct.Memory* %35
}

; Function Attrs: noinline
define %struct.Memory* @sub_400c30_simulate(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400c30:
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
  store i8 %147, i8* %148, align 1, !tbaa !2447
  %149 = icmp eq i32 %131, 0
  %150 = zext i1 %149 to i8
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %150, i8* %151, align 1, !tbaa !2448
  %152 = lshr i32 %131, 31
  %153 = trunc i32 %152 to i8
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %153, i8* %154, align 1, !tbaa !2449
  %155 = lshr i32 %130, 31
  %156 = xor i32 %152, %155
  %157 = add nuw nsw i32 %156, %155
  %158 = icmp eq i32 %157, 2
  %159 = zext i1 %158 to i8
  %160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %159, i8* %160, align 1, !tbaa !2450
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

; <label>:208:                                    ; preds = %block_400c30
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %210 = load i64, i64* %209, align 8, !tbaa !2428
  %211 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %210, %struct.Memory* %2) #17
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit5

; <label>:212:                                    ; preds = %block_400c30
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
  store i8 0, i8* %220, align 1, !tbaa !2447
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %221, align 1, !tbaa !2448
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %222, align 1, !tbaa !2449
  %223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %223, align 1, !tbaa !2450
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
  store i8 %256, i8* %257, align 1, !tbaa !2447
  %258 = icmp eq i32 %240, 0
  %259 = zext i1 %258 to i8
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %259, i8* %260, align 1, !tbaa !2448
  %261 = lshr i32 %240, 31
  %262 = trunc i32 %261 to i8
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %262, i8* %263, align 1, !tbaa !2449
  %264 = lshr i32 %239, 31
  %265 = xor i32 %261, %264
  %266 = add nuw nsw i32 %265, %264
  %267 = icmp eq i32 %266, 2
  %268 = zext i1 %267 to i8
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %268, i8* %269, align 1, !tbaa !2450
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
  store i8 0, i8* %310, align 1, !tbaa !2447
  %311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %311, align 1, !tbaa !2448
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %312, align 1, !tbaa !2449
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %313, align 1, !tbaa !2450
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
  br label %block_400c8e

block_400dd5:                                     ; preds = %block_400e7b, %block_400dc5
  %MEMORY.0 = phi %struct.Memory* [ %1374, %block_400dc5 ], [ %MEMORY.10, %block_400e7b ]
  %339 = load i64, i64* %RBP
  %340 = sub i64 %339, 72
  %341 = load i64, i64* %PC
  %342 = add i64 %341, 3
  store i64 %342, i64* %PC
  %343 = inttoptr i64 %340 to i32*
  %344 = load i32, i32* %343
  %345 = zext i32 %344 to i64
  store i64 %345, i64* %RAX, align 8, !tbaa !2428
  %346 = load i32, i32* %EAX
  %347 = zext i32 %346 to i64
  %348 = load i64, i64* %RBP
  %349 = sub i64 %348, 56
  %350 = load i64, i64* %PC
  %351 = add i64 %350, 3
  store i64 %351, i64* %PC
  %352 = inttoptr i64 %349 to i32*
  %353 = load i32, i32* %352
  %354 = sub i32 %346, %353
  %355 = icmp ult i32 %346, %353
  %356 = zext i1 %355 to i8
  %357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %356, i8* %357, align 1, !tbaa !2432
  %358 = and i32 %354, 255
  %359 = call i32 @llvm.ctpop.i32(i32 %358) #16
  %360 = trunc i32 %359 to i8
  %361 = and i8 %360, 1
  %362 = xor i8 %361, 1
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %362, i8* %363, align 1, !tbaa !2446
  %364 = xor i32 %353, %346
  %365 = xor i32 %364, %354
  %366 = lshr i32 %365, 4
  %367 = trunc i32 %366 to i8
  %368 = and i8 %367, 1
  %369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %368, i8* %369, align 1, !tbaa !2447
  %370 = icmp eq i32 %354, 0
  %371 = zext i1 %370 to i8
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %371, i8* %372, align 1, !tbaa !2448
  %373 = lshr i32 %354, 31
  %374 = trunc i32 %373 to i8
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %374, i8* %375, align 1, !tbaa !2449
  %376 = lshr i32 %346, 31
  %377 = lshr i32 %353, 31
  %378 = xor i32 %377, %376
  %379 = xor i32 %373, %376
  %380 = add nuw nsw i32 %379, %378
  %381 = icmp eq i32 %380, 2
  %382 = zext i1 %381 to i8
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %382, i8* %383, align 1, !tbaa !2450
  %384 = load i64, i64* %PC
  %385 = add i64 %384, 227
  %386 = load i64, i64* %PC
  %387 = add i64 %386, 6
  %388 = load i64, i64* %PC
  %389 = add i64 %388, 6
  store i64 %389, i64* %PC
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %391 = load i8, i8* %390, align 1, !tbaa !2449
  %392 = icmp ne i8 %391, 0
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %394 = load i8, i8* %393, align 1, !tbaa !2450
  %395 = icmp ne i8 %394, 0
  %396 = xor i1 %392, %395
  %397 = xor i1 %396, true
  %398 = zext i1 %397 to i8
  store i8 %398, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %400 = select i1 %396, i64 %387, i64 %385
  store i64 %400, i64* %399, align 8, !tbaa !2428
  %401 = load i8, i8* %BRANCH_TAKEN
  %402 = icmp eq i8 %401, 1
  br i1 %402, label %block_400ebe, label %block_400de1

block_400efe:                                     ; preds = %block_400ebe, %block_400ee5
  %MEMORY.1 = phi %struct.Memory* [ %1398, %block_400ebe ], [ %1398, %block_400ee5 ]
  %403 = load i64, i64* %RBP
  %404 = sub i64 %403, 48
  %405 = load i64, i64* %PC
  %406 = add i64 %405, 4
  store i64 %406, i64* %PC
  %407 = inttoptr i64 %404 to i32*
  %408 = load i32, i32* %407
  %409 = sext i32 %408 to i64
  store i64 %409, i64* %RAX, align 8, !tbaa !2428
  %410 = load i64, i64* %RAX
  %411 = load i64, i64* %RBP
  %412 = sub i64 %411, 80
  %413 = load i64, i64* %PC
  %414 = add i64 %413, 4
  store i64 %414, i64* %PC
  %415 = inttoptr i64 %412 to i64*
  %416 = load i64, i64* %415
  %417 = add i64 %416, %410
  store i64 %417, i64* %RAX, align 8, !tbaa !2428
  %418 = icmp ult i64 %417, %410
  %419 = icmp ult i64 %417, %416
  %420 = or i1 %418, %419
  %421 = zext i1 %420 to i8
  %422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %421, i8* %422, align 1, !tbaa !2432
  %423 = trunc i64 %417 to i32
  %424 = and i32 %423, 255
  %425 = call i32 @llvm.ctpop.i32(i32 %424) #16
  %426 = trunc i32 %425 to i8
  %427 = and i8 %426, 1
  %428 = xor i8 %427, 1
  %429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %428, i8* %429, align 1, !tbaa !2446
  %430 = xor i64 %416, %410
  %431 = xor i64 %430, %417
  %432 = lshr i64 %431, 4
  %433 = trunc i64 %432 to i8
  %434 = and i8 %433, 1
  %435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %434, i8* %435, align 1, !tbaa !2447
  %436 = icmp eq i64 %417, 0
  %437 = zext i1 %436 to i8
  %438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %437, i8* %438, align 1, !tbaa !2448
  %439 = lshr i64 %417, 63
  %440 = trunc i64 %439 to i8
  %441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %440, i8* %441, align 1, !tbaa !2449
  %442 = lshr i64 %410, 63
  %443 = lshr i64 %416, 63
  %444 = xor i64 %439, %442
  %445 = xor i64 %439, %443
  %446 = add nuw nsw i64 %444, %445
  %447 = icmp eq i64 %446, 2
  %448 = zext i1 %447 to i8
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %448, i8* %449, align 1, !tbaa !2450
  %450 = load i64, i64* %RAX
  %451 = load i64, i64* %PC
  %452 = add i64 %451, 4
  store i64 %452, i64* %PC
  %453 = and i64 1, %450
  store i64 %453, i64* %RAX, align 8, !tbaa !2428
  %454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %454, align 1, !tbaa !2432
  %455 = trunc i64 %453 to i32
  %456 = and i32 %455, 255
  %457 = call i32 @llvm.ctpop.i32(i32 %456) #16
  %458 = trunc i32 %457 to i8
  %459 = and i8 %458, 1
  %460 = xor i8 %459, 1
  %461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %460, i8* %461, align 1, !tbaa !2446
  %462 = icmp eq i64 %453, 0
  %463 = zext i1 %462 to i8
  %464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %463, i8* %464, align 1, !tbaa !2448
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %465, align 1, !tbaa !2449
  %466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %466, align 1, !tbaa !2450
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %467, align 1, !tbaa !2447
  %468 = load i32, i32* %EAX
  %469 = zext i32 %468 to i64
  %470 = load i64, i64* %PC
  %471 = add i64 %470, 2
  store i64 %471, i64* %PC
  %472 = and i64 %469, 4294967295
  store i64 %472, i64* %RCX, align 8, !tbaa !2428
  %473 = load i64, i64* %RBP
  %474 = sub i64 %473, 40
  %475 = load i64, i64* %PC
  %476 = add i64 %475, 4
  store i64 %476, i64* %PC
  %477 = inttoptr i64 %474 to i64*
  %478 = load i64, i64* %477
  store i64 %478, i64* %RAX, align 8, !tbaa !2428
  %479 = load i64, i64* %RAX
  %480 = load i32, i32* %ECX
  %481 = zext i32 %480 to i64
  %482 = load i64, i64* %PC
  %483 = add i64 %482, 2
  store i64 %483, i64* %PC
  %484 = inttoptr i64 %479 to i32*
  store i32 %480, i32* %484
  %485 = load i64, i64* %PC
  %486 = sub i64 %485, 2162
  %487 = load i64, i64* %PC
  %488 = add i64 %487, 5
  %489 = load i64, i64* %PC
  %490 = add i64 %489, 5
  store i64 %490, i64* %PC
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %492 = load i64, i64* %491, align 8, !tbaa !2428
  %493 = add i64 %492, -8
  %494 = inttoptr i64 %493 to i64*
  store i64 %488, i64* %494
  store i64 %493, i64* %491, align 8, !tbaa !2428
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %486, i64* %495, align 8, !tbaa !2428
  %496 = load i64, i64* %PC
  %497 = call %struct.Memory* @ext_4006a0_lrand48(%struct.State* %0, i64 %496, %struct.Memory* %MEMORY.1)
  %498 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %499 = load i64, i64* %PC
  %500 = add i64 %499, 8
  store i64 %500, i64* %PC
  %501 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4010b0__rodata_type* @seg_4010b0__rodata to i64), i64 24) to double*)
  %502 = bitcast i8* %498 to double*
  store double %501, double* %502, align 1, !tbaa !2453
  %503 = getelementptr inbounds i8, i8* %498, i64 8
  %504 = bitcast i8* %503 to double*
  store double 0.000000e+00, double* %504, align 1, !tbaa !2453
  %505 = load i64, i64* %PC
  %506 = add i64 %505, 5
  store i64 %506, i64* %PC
  store i64 10000, i64* %RCX, align 8, !tbaa !2428
  %507 = load i32, i32* %ECX
  %508 = zext i32 %507 to i64
  %509 = load i64, i64* %PC
  %510 = add i64 %509, 2
  store i64 %510, i64* %PC
  %511 = and i64 %508, 4294967295
  store i64 %511, i64* %RDX, align 8, !tbaa !2428
  %512 = load i64, i64* %RBP
  %513 = sub i64 %512, 120
  %514 = load i64, i64* %RDX
  %515 = load i64, i64* %PC
  %516 = add i64 %515, 4
  store i64 %516, i64* %PC
  %517 = inttoptr i64 %513 to i64*
  store i64 %514, i64* %517
  %518 = load i64, i64* %PC
  %519 = add i64 %518, 2
  store i64 %519, i64* %PC
  %520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %522 = load i64, i64* %521, align 8, !tbaa !2428
  %523 = ashr i64 %522, 63
  store i64 %523, i64* %520, align 8, !tbaa !2428
  %524 = load i64, i64* %RBP
  %525 = sub i64 %524, 120
  %526 = load i64, i64* %PC
  %527 = add i64 %526, 4
  store i64 %527, i64* %PC
  %528 = inttoptr i64 %525 to i64*
  %529 = load i64, i64* %528
  store i64 %529, i64* %RSI, align 8, !tbaa !2428
  %530 = load i64, i64* %RSI
  %531 = load i64, i64* %PC
  %532 = add i64 %531, 3
  store i64 %532, i64* %PC
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %534 = load i64, i64* %533, align 8, !tbaa !2428
  %535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %536 = load i64, i64* %535, align 8, !tbaa !2428
  %537 = sext i64 %530 to i128
  %538 = and i128 %537, -18446744073709551616
  %539 = zext i64 %536 to i128
  %540 = shl nuw i128 %539, 64
  %541 = zext i64 %534 to i128
  %542 = or i128 %540, %541
  %543 = zext i64 %530 to i128
  %544 = or i128 %538, %543
  %545 = sdiv i128 %542, %544
  %546 = trunc i128 %545 to i64
  %547 = and i128 %545, 18446744073709551615
  %548 = sext i64 %546 to i128
  %549 = and i128 %548, -18446744073709551616
  %550 = or i128 %549, %547
  %551 = icmp eq i128 %545, %550
  br i1 %551, label %556, label %552

; <label>:552:                                    ; preds = %block_400efe
  %553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %554 = load i64, i64* %553, align 8, !tbaa !2428
  %555 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %554, %struct.Memory* %497) #17
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit4

; <label>:556:                                    ; preds = %block_400efe
  %557 = srem i128 %542, %544
  %558 = trunc i128 %557 to i64
  store i64 %546, i64* %533, align 8, !tbaa !2428
  store i64 %558, i64* %535, align 8, !tbaa !2428
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %559, align 1, !tbaa !2432
  %560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %560, align 1, !tbaa !2446
  %561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %561, align 1, !tbaa !2447
  %562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %562, align 1, !tbaa !2448
  %563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %563, align 1, !tbaa !2449
  %564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %564, align 1, !tbaa !2450
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit4

_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit4: ; preds = %552, %556
  %565 = phi %struct.Memory* [ %555, %552 ], [ %497, %556 ]
  %566 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %567 = load i64, i64* %RDX
  %568 = load i64, i64* %PC
  %569 = add i64 %568, 5
  store i64 %569, i64* %PC
  %570 = sitofp i64 %567 to double
  %571 = bitcast i8* %566 to double*
  store double %570, double* %571, align 1, !tbaa !2453
  %572 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %573 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %574 = bitcast %union.vec128_t* %XMM0 to i8*
  %575 = load i64, i64* %PC
  %576 = add i64 %575, 4
  store i64 %576, i64* %PC
  %577 = bitcast i8* %573 to double*
  %578 = load double, double* %577, align 1
  %579 = getelementptr inbounds i8, i8* %573, i64 8
  %580 = bitcast i8* %579 to i64*
  %581 = load i64, i64* %580, align 1
  %582 = bitcast i8* %574 to double*
  %583 = load double, double* %582, align 1
  %584 = fdiv double %578, %583
  %585 = bitcast i8* %572 to double*
  store double %584, double* %585, align 1, !tbaa !2453
  %586 = getelementptr inbounds i8, i8* %572, i64 8
  %587 = bitcast i8* %586 to i64*
  store i64 %581, i64* %587, align 1, !tbaa !2453
  %588 = load i64, i64* %RBP
  %589 = sub i64 %588, 88
  %590 = bitcast %union.vec128_t* %XMM1 to i8*
  %591 = load i64, i64* %PC
  %592 = add i64 %591, 5
  store i64 %592, i64* %PC
  %593 = bitcast i8* %590 to double*
  %594 = load double, double* %593, align 1
  %595 = inttoptr i64 %589 to double*
  store double %594, double* %595
  %596 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %597 = load i64, i64* %RBP
  %598 = sub i64 %597, 24
  %599 = load i64, i64* %PC
  %600 = add i64 %599, 5
  store i64 %600, i64* %PC
  %601 = inttoptr i64 %598 to double*
  %602 = load double, double* %601
  %603 = bitcast i8* %596 to double*
  store double %602, double* %603, align 1, !tbaa !2453
  %604 = getelementptr inbounds i8, i8* %596, i64 8
  %605 = bitcast i8* %604 to double*
  store double 0.000000e+00, double* %605, align 1, !tbaa !2453
  %606 = bitcast %union.vec128_t* %XMM0 to i8*
  %607 = load i64, i64* %RBP
  %608 = sub i64 %607, 88
  %609 = load i64, i64* %PC
  %610 = add i64 %609, 5
  store i64 %610, i64* %PC
  %611 = bitcast i8* %606 to double*
  %612 = load double, double* %611, align 1
  %613 = inttoptr i64 %608 to double*
  %614 = load double, double* %613
  %615 = fcmp uno double %612, %614
  br i1 %615, label %616, label %628

; <label>:616:                                    ; preds = %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit4
  %617 = fadd double %612, %614
  %618 = bitcast double %617 to i64
  %619 = and i64 %618, 9221120237041090560
  %620 = icmp eq i64 %619, 9218868437227405312
  %621 = and i64 %618, 2251799813685247
  %622 = icmp ne i64 %621, 0
  %623 = and i1 %620, %622
  br i1 %623, label %624, label %634

; <label>:624:                                    ; preds = %616
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %626 = load i64, i64* %625, align 8, !tbaa !2428
  %627 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %626, %struct.Memory* %565) #17
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit3

; <label>:628:                                    ; preds = %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit4
  %629 = fcmp ogt double %612, %614
  br i1 %629, label %634, label %630

; <label>:630:                                    ; preds = %628
  %631 = fcmp olt double %612, %614
  br i1 %631, label %634, label %632

; <label>:632:                                    ; preds = %630
  %633 = fcmp oeq double %612, %614
  br i1 %633, label %634, label %641

; <label>:634:                                    ; preds = %632, %630, %628, %616
  %635 = phi i8 [ 0, %628 ], [ 0, %630 ], [ 1, %632 ], [ 1, %616 ]
  %636 = phi i8 [ 0, %628 ], [ 0, %630 ], [ 0, %632 ], [ 1, %616 ]
  %637 = phi i8 [ 0, %628 ], [ 1, %630 ], [ 0, %632 ], [ 1, %616 ]
  %638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %635, i8* %638, align 1, !tbaa !2452
  %639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %636, i8* %639, align 1, !tbaa !2452
  %640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %637, i8* %640, align 1, !tbaa !2452
  br label %641

; <label>:641:                                    ; preds = %634, %632
  %642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %642, align 1, !tbaa !2452
  %643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %643, align 1, !tbaa !2452
  %644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %644, align 1, !tbaa !2452
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit3

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit3: ; preds = %624, %641
  %645 = phi %struct.Memory* [ %627, %624 ], [ %565, %641 ]
  %646 = load i64, i64* %PC
  %647 = add i64 %646, 18
  %648 = load i64, i64* %PC
  %649 = add i64 %648, 6
  %650 = load i64, i64* %PC
  %651 = add i64 %650, 6
  store i64 %651, i64* %PC
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %653 = load i8, i8* %652, align 1, !tbaa !2432
  %654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %655 = load i8, i8* %654, align 1, !tbaa !2448
  %656 = or i8 %655, %653
  %657 = icmp ne i8 %656, 0
  %658 = zext i1 %657 to i8
  store i8 %658, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %660 = select i1 %657, i64 %647, i64 %649
  store i64 %660, i64* %659, align 8, !tbaa !2428
  %661 = load i8, i8* %BRANCH_TAKEN
  %662 = icmp eq i8 %661, 1
  br i1 %662, label %block_400f5d, label %block_400f51

block_400ee5:                                     ; preds = %block_400ebe
  %663 = load i64, i64* %RBP
  %664 = sub i64 %663, 40
  %665 = load i64, i64* %PC
  %666 = add i64 %665, 4
  store i64 %666, i64* %PC
  %667 = inttoptr i64 %664 to i64*
  %668 = load i64, i64* %667
  store i64 %668, i64* %RAX, align 8, !tbaa !2428
  %669 = load i64, i64* %RAX
  %670 = load i64, i64* %PC
  %671 = add i64 %670, 2
  store i64 %671, i64* %PC
  %672 = inttoptr i64 %669 to i32*
  %673 = load i32, i32* %672
  %674 = zext i32 %673 to i64
  store i64 %674, i64* %RCX, align 8, !tbaa !2428
  %675 = load i64, i64* %RCX
  %676 = load i64, i64* %RBP
  %677 = sub i64 %676, 48
  %678 = load i64, i64* %PC
  %679 = add i64 %678, 3
  store i64 %679, i64* %PC
  %680 = trunc i64 %675 to i32
  %681 = inttoptr i64 %677 to i32*
  %682 = load i32, i32* %681
  %683 = add i32 %682, %680
  %684 = zext i32 %683 to i64
  store i64 %684, i64* %RCX, align 8, !tbaa !2428
  %685 = icmp ult i32 %683, %680
  %686 = icmp ult i32 %683, %682
  %687 = or i1 %685, %686
  %688 = zext i1 %687 to i8
  %689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %688, i8* %689, align 1, !tbaa !2432
  %690 = and i32 %683, 255
  %691 = call i32 @llvm.ctpop.i32(i32 %690) #16
  %692 = trunc i32 %691 to i8
  %693 = and i8 %692, 1
  %694 = xor i8 %693, 1
  %695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %694, i8* %695, align 1, !tbaa !2446
  %696 = xor i32 %682, %680
  %697 = xor i32 %696, %683
  %698 = lshr i32 %697, 4
  %699 = trunc i32 %698 to i8
  %700 = and i8 %699, 1
  %701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %700, i8* %701, align 1, !tbaa !2447
  %702 = icmp eq i32 %683, 0
  %703 = zext i1 %702 to i8
  %704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %703, i8* %704, align 1, !tbaa !2448
  %705 = lshr i32 %683, 31
  %706 = trunc i32 %705 to i8
  %707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %706, i8* %707, align 1, !tbaa !2449
  %708 = lshr i32 %680, 31
  %709 = lshr i32 %682, 31
  %710 = xor i32 %705, %708
  %711 = xor i32 %705, %709
  %712 = add nuw nsw i32 %710, %711
  %713 = icmp eq i32 %712, 2
  %714 = zext i1 %713 to i8
  %715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %714, i8* %715, align 1, !tbaa !2450
  %716 = load i64, i64* %RBP
  %717 = sub i64 %716, 48
  %718 = load i32, i32* %ECX
  %719 = zext i32 %718 to i64
  %720 = load i64, i64* %PC
  %721 = add i64 %720, 3
  store i64 %721, i64* %PC
  %722 = inttoptr i64 %717 to i32*
  store i32 %718, i32* %722
  %723 = load i64, i64* %RBP
  %724 = sub i64 %723, 40
  %725 = load i64, i64* %PC
  %726 = add i64 %725, 4
  store i64 %726, i64* %PC
  %727 = inttoptr i64 %724 to i64*
  %728 = load i64, i64* %727
  store i64 %728, i64* %RAX, align 8, !tbaa !2428
  %729 = load i64, i64* %RAX
  %730 = add i64 %729, 4
  %731 = load i64, i64* %PC
  %732 = add i64 %731, 3
  store i64 %732, i64* %PC
  %733 = inttoptr i64 %730 to i32*
  %734 = load i32, i32* %733
  %735 = zext i32 %734 to i64
  store i64 %735, i64* %RCX, align 8, !tbaa !2428
  %736 = load i64, i64* %RCX
  %737 = load i64, i64* %RBP
  %738 = sub i64 %737, 52
  %739 = load i64, i64* %PC
  %740 = add i64 %739, 3
  store i64 %740, i64* %PC
  %741 = trunc i64 %736 to i32
  %742 = inttoptr i64 %738 to i32*
  %743 = load i32, i32* %742
  %744 = add i32 %743, %741
  %745 = zext i32 %744 to i64
  store i64 %745, i64* %RCX, align 8, !tbaa !2428
  %746 = icmp ult i32 %744, %741
  %747 = icmp ult i32 %744, %743
  %748 = or i1 %746, %747
  %749 = zext i1 %748 to i8
  %750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %749, i8* %750, align 1, !tbaa !2432
  %751 = and i32 %744, 255
  %752 = call i32 @llvm.ctpop.i32(i32 %751) #16
  %753 = trunc i32 %752 to i8
  %754 = and i8 %753, 1
  %755 = xor i8 %754, 1
  %756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %755, i8* %756, align 1, !tbaa !2446
  %757 = xor i32 %743, %741
  %758 = xor i32 %757, %744
  %759 = lshr i32 %758, 4
  %760 = trunc i32 %759 to i8
  %761 = and i8 %760, 1
  %762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %761, i8* %762, align 1, !tbaa !2447
  %763 = icmp eq i32 %744, 0
  %764 = zext i1 %763 to i8
  %765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %764, i8* %765, align 1, !tbaa !2448
  %766 = lshr i32 %744, 31
  %767 = trunc i32 %766 to i8
  %768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %767, i8* %768, align 1, !tbaa !2449
  %769 = lshr i32 %741, 31
  %770 = lshr i32 %743, 31
  %771 = xor i32 %766, %769
  %772 = xor i32 %766, %770
  %773 = add nuw nsw i32 %771, %772
  %774 = icmp eq i32 %773, 2
  %775 = zext i1 %774 to i8
  %776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %775, i8* %776, align 1, !tbaa !2450
  %777 = load i64, i64* %RBP
  %778 = sub i64 %777, 52
  %779 = load i32, i32* %ECX
  %780 = zext i32 %779 to i64
  %781 = load i64, i64* %PC
  %782 = add i64 %781, 3
  store i64 %782, i64* %PC
  %783 = inttoptr i64 %778 to i32*
  store i32 %779, i32* %783
  br label %block_400efe

block_400d63:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %784 = load i64, i64* %RBP
  %785 = sub i64 %784, 80
  %786 = load i64, i64* %PC
  %787 = add i64 %786, 4
  store i64 %787, i64* %PC
  %788 = inttoptr i64 %785 to i64*
  %789 = load i64, i64* %788
  store i64 %789, i64* %RAX, align 8, !tbaa !2428
  %790 = load i64, i64* %RAX
  %791 = load i64, i64* %PC
  %792 = add i64 %791, 4
  store i64 %792, i64* %PC
  %793 = xor i64 1, %790
  store i64 %793, i64* %RAX, align 8, !tbaa !2428
  %794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %794, align 1, !tbaa !2432
  %795 = trunc i64 %793 to i32
  %796 = and i32 %795, 255
  %797 = call i32 @llvm.ctpop.i32(i32 %796) #16
  %798 = trunc i32 %797 to i8
  %799 = and i8 %798, 1
  %800 = xor i8 %799, 1
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %800, i8* %801, align 1, !tbaa !2446
  %802 = icmp eq i64 %793, 0
  %803 = zext i1 %802 to i8
  %804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %803, i8* %804, align 1, !tbaa !2448
  %805 = lshr i64 %793, 63
  %806 = trunc i64 %805 to i8
  %807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %806, i8* %807, align 1, !tbaa !2449
  %808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %808, align 1, !tbaa !2450
  %809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %809, align 1, !tbaa !2447
  %810 = load i64, i64* %RBP
  %811 = sub i64 %810, 80
  %812 = load i64, i64* %RAX
  %813 = load i64, i64* %PC
  %814 = add i64 %813, 4
  store i64 %814, i64* %PC
  %815 = inttoptr i64 %811 to i64*
  store i64 %812, i64* %815
  br label %block_400d6f

block_400de1:                                     ; preds = %block_400dd5
  %816 = load i64, i64* %RBP
  %817 = sub i64 %816, 32
  %818 = load i64, i64* %PC
  %819 = add i64 %818, 4
  store i64 %819, i64* %PC
  %820 = inttoptr i64 %817 to i64*
  %821 = load i64, i64* %820
  store i64 %821, i64* %RAX, align 8, !tbaa !2428
  %822 = load i64, i64* %RBP
  %823 = sub i64 %822, 60
  %824 = load i64, i64* %PC
  %825 = add i64 %824, 4
  store i64 %825, i64* %PC
  %826 = inttoptr i64 %823 to i32*
  %827 = load i32, i32* %826
  %828 = sext i32 %827 to i64
  %829 = mul nsw i64 %828, 31
  %830 = trunc i64 %829 to i32
  %831 = and i64 %829, 4294967295
  store i64 %831, i64* %RCX, align 8, !tbaa !2428
  %832 = shl i64 %829, 32
  %833 = ashr exact i64 %832, 32
  %834 = icmp ne i64 %833, %829
  %835 = zext i1 %834 to i8
  %836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %835, i8* %836, align 1, !tbaa !2432
  %837 = and i32 %830, 255
  %838 = call i32 @llvm.ctpop.i32(i32 %837) #16
  %839 = trunc i32 %838 to i8
  %840 = and i8 %839, 1
  %841 = xor i8 %840, 1
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %841, i8* %842, align 1, !tbaa !2446
  %843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %843, align 1, !tbaa !2447
  %844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %844, align 1, !tbaa !2448
  %845 = lshr i32 %830, 31
  %846 = trunc i32 %845 to i8
  %847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %846, i8* %847, align 1, !tbaa !2449
  %848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %835, i8* %848, align 1, !tbaa !2450
  %849 = load i64, i64* %RCX
  %850 = load i64, i64* %RBP
  %851 = sub i64 %850, 72
  %852 = load i64, i64* %PC
  %853 = add i64 %852, 3
  store i64 %853, i64* %PC
  %854 = trunc i64 %849 to i32
  %855 = inttoptr i64 %851 to i32*
  %856 = load i32, i32* %855
  %857 = add i32 %856, %854
  %858 = zext i32 %857 to i64
  store i64 %858, i64* %RCX, align 8, !tbaa !2428
  %859 = icmp ult i32 %857, %854
  %860 = icmp ult i32 %857, %856
  %861 = or i1 %859, %860
  %862 = zext i1 %861 to i8
  %863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %862, i8* %863, align 1, !tbaa !2432
  %864 = and i32 %857, 255
  %865 = call i32 @llvm.ctpop.i32(i32 %864) #16
  %866 = trunc i32 %865 to i8
  %867 = and i8 %866, 1
  %868 = xor i8 %867, 1
  %869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %868, i8* %869, align 1, !tbaa !2446
  %870 = xor i32 %856, %854
  %871 = xor i32 %870, %857
  %872 = lshr i32 %871, 4
  %873 = trunc i32 %872 to i8
  %874 = and i8 %873, 1
  %875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %874, i8* %875, align 1, !tbaa !2447
  %876 = icmp eq i32 %857, 0
  %877 = zext i1 %876 to i8
  %878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %877, i8* %878, align 1, !tbaa !2448
  %879 = lshr i32 %857, 31
  %880 = trunc i32 %879 to i8
  %881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %880, i8* %881, align 1, !tbaa !2449
  %882 = lshr i32 %854, 31
  %883 = lshr i32 %856, 31
  %884 = xor i32 %879, %882
  %885 = xor i32 %879, %883
  %886 = add nuw nsw i32 %884, %885
  %887 = icmp eq i32 %886, 2
  %888 = zext i1 %887 to i8
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %888, i8* %889, align 1, !tbaa !2450
  %890 = load i32, i32* %ECX
  %891 = zext i32 %890 to i64
  %892 = load i64, i64* %PC
  %893 = add i64 %892, 3
  store i64 %893, i64* %PC
  %894 = shl i64 %891, 32
  %895 = ashr exact i64 %894, 32
  store i64 %895, i64* %RDX, align 8, !tbaa !2428
  %896 = load i64, i64* %RAX
  %897 = load i64, i64* %RDX
  %898 = add i64 %897, %896
  %899 = load i64, i64* %PC
  %900 = add i64 %899, 4
  store i64 %900, i64* %PC
  %901 = inttoptr i64 %898 to i8*
  %902 = load i8, i8* %901
  %903 = sext i8 %902 to i64
  %904 = and i64 %903, 4294967295
  store i64 %904, i64* %RCX, align 8, !tbaa !2428
  %905 = load i32, i32* %ECX
  %906 = zext i32 %905 to i64
  %907 = load i64, i64* %PC
  %908 = add i64 %907, 3
  store i64 %908, i64* %PC
  %909 = sub i32 %905, 49
  %910 = icmp ult i32 %905, 49
  %911 = zext i1 %910 to i8
  %912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %911, i8* %912, align 1, !tbaa !2432
  %913 = and i32 %909, 255
  %914 = call i32 @llvm.ctpop.i32(i32 %913) #16
  %915 = trunc i32 %914 to i8
  %916 = and i8 %915, 1
  %917 = xor i8 %916, 1
  %918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %917, i8* %918, align 1, !tbaa !2446
  %919 = xor i64 49, %906
  %920 = trunc i64 %919 to i32
  %921 = xor i32 %920, %909
  %922 = lshr i32 %921, 4
  %923 = trunc i32 %922 to i8
  %924 = and i8 %923, 1
  %925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %924, i8* %925, align 1, !tbaa !2447
  %926 = icmp eq i32 %909, 0
  %927 = zext i1 %926 to i8
  %928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %927, i8* %928, align 1, !tbaa !2448
  %929 = lshr i32 %909, 31
  %930 = trunc i32 %929 to i8
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %930, i8* %931, align 1, !tbaa !2449
  %932 = lshr i32 %905, 31
  %933 = xor i32 %929, %932
  %934 = add nuw nsw i32 %933, %932
  %935 = icmp eq i32 %934, 2
  %936 = zext i1 %935 to i8
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %936, i8* %937, align 1, !tbaa !2450
  %938 = load i64, i64* %PC
  %939 = add i64 %938, 31
  %940 = load i64, i64* %PC
  %941 = add i64 %940, 6
  %942 = load i64, i64* %PC
  %943 = add i64 %942, 6
  store i64 %943, i64* %PC
  %944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %945 = load i8, i8* %944, align 1, !tbaa !2448
  %946 = icmp eq i8 %945, 0
  %947 = zext i1 %946 to i8
  store i8 %947, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %949 = select i1 %946, i64 %939, i64 %941
  store i64 %949, i64* %948, align 8, !tbaa !2428
  %950 = load i8, i8* %BRANCH_TAKEN
  %951 = icmp eq i8 %950, 1
  br i1 %951, label %block_400e15, label %block_400dfc

block_400f5d:                                     ; preds = %block_400f51, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit3
  %MEMORY.2 = phi %struct.Memory* [ %645, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit3 ], [ %645, %block_400f51 ]
  %952 = load i64, i64* %RBP
  %953 = sub i64 %952, 52
  %954 = load i64, i64* %PC
  %955 = add i64 %954, 4
  store i64 %955, i64* %PC
  %956 = inttoptr i64 %953 to i32*
  %957 = load i32, i32* %956
  %958 = sext i32 %957 to i64
  store i64 %958, i64* %RAX, align 8, !tbaa !2428
  %959 = load i64, i64* %RAX
  %960 = load i64, i64* %RBP
  %961 = sub i64 %960, 80
  %962 = load i64, i64* %PC
  %963 = add i64 %962, 4
  store i64 %963, i64* %PC
  %964 = inttoptr i64 %961 to i64*
  %965 = load i64, i64* %964
  %966 = add i64 %965, %959
  store i64 %966, i64* %RAX, align 8, !tbaa !2428
  %967 = icmp ult i64 %966, %959
  %968 = icmp ult i64 %966, %965
  %969 = or i1 %967, %968
  %970 = zext i1 %969 to i8
  %971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %970, i8* %971, align 1, !tbaa !2432
  %972 = trunc i64 %966 to i32
  %973 = and i32 %972, 255
  %974 = call i32 @llvm.ctpop.i32(i32 %973) #16
  %975 = trunc i32 %974 to i8
  %976 = and i8 %975, 1
  %977 = xor i8 %976, 1
  %978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %977, i8* %978, align 1, !tbaa !2446
  %979 = xor i64 %965, %959
  %980 = xor i64 %979, %966
  %981 = lshr i64 %980, 4
  %982 = trunc i64 %981 to i8
  %983 = and i8 %982, 1
  %984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %983, i8* %984, align 1, !tbaa !2447
  %985 = icmp eq i64 %966, 0
  %986 = zext i1 %985 to i8
  %987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %986, i8* %987, align 1, !tbaa !2448
  %988 = lshr i64 %966, 63
  %989 = trunc i64 %988 to i8
  %990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %989, i8* %990, align 1, !tbaa !2449
  %991 = lshr i64 %959, 63
  %992 = lshr i64 %965, 63
  %993 = xor i64 %988, %991
  %994 = xor i64 %988, %992
  %995 = add nuw nsw i64 %993, %994
  %996 = icmp eq i64 %995, 2
  %997 = zext i1 %996 to i8
  %998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %997, i8* %998, align 1, !tbaa !2450
  %999 = load i64, i64* %RAX
  %1000 = load i64, i64* %PC
  %1001 = add i64 %1000, 4
  store i64 %1001, i64* %PC
  %1002 = and i64 1, %999
  store i64 %1002, i64* %RAX, align 8, !tbaa !2428
  %1003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1003, align 1, !tbaa !2432
  %1004 = trunc i64 %1002 to i32
  %1005 = and i32 %1004, 255
  %1006 = call i32 @llvm.ctpop.i32(i32 %1005) #16
  %1007 = trunc i32 %1006 to i8
  %1008 = and i8 %1007, 1
  %1009 = xor i8 %1008, 1
  %1010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1009, i8* %1010, align 1, !tbaa !2446
  %1011 = icmp eq i64 %1002, 0
  %1012 = zext i1 %1011 to i8
  %1013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1012, i8* %1013, align 1, !tbaa !2448
  %1014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1014, align 1, !tbaa !2449
  %1015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1015, align 1, !tbaa !2450
  %1016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1016, align 1, !tbaa !2447
  %1017 = load i32, i32* %EAX
  %1018 = zext i32 %1017 to i64
  %1019 = load i64, i64* %PC
  %1020 = add i64 %1019, 2
  store i64 %1020, i64* %PC
  %1021 = and i64 %1018, 4294967295
  store i64 %1021, i64* %RCX, align 8, !tbaa !2428
  %1022 = load i64, i64* %RBP
  %1023 = sub i64 %1022, 40
  %1024 = load i64, i64* %PC
  %1025 = add i64 %1024, 4
  store i64 %1025, i64* %PC
  %1026 = inttoptr i64 %1023 to i64*
  %1027 = load i64, i64* %1026
  store i64 %1027, i64* %RAX, align 8, !tbaa !2428
  %1028 = load i64, i64* %RAX
  %1029 = add i64 %1028, 4
  %1030 = load i32, i32* %ECX
  %1031 = zext i32 %1030 to i64
  %1032 = load i64, i64* %PC
  %1033 = add i64 %1032, 3
  store i64 %1033, i64* %PC
  %1034 = inttoptr i64 %1029 to i32*
  store i32 %1030, i32* %1034
  %1035 = load i64, i64* %RBP
  %1036 = sub i64 %1035, 16
  %1037 = load i64, i64* %PC
  %1038 = add i64 %1037, 4
  store i64 %1038, i64* %PC
  %1039 = inttoptr i64 %1036 to i64*
  %1040 = load i64, i64* %1039
  store i64 %1040, i64* %RAX, align 8, !tbaa !2428
  %1041 = load i64, i64* %RBP
  %1042 = sub i64 %1041, 40
  %1043 = load i64, i64* %RAX
  %1044 = load i64, i64* %PC
  %1045 = add i64 %1044, 4
  store i64 %1045, i64* %PC
  %1046 = inttoptr i64 %1042 to i64*
  store i64 %1043, i64* %1046
  %1047 = load i64, i64* %RBP
  %1048 = sub i64 %1047, 64
  %1049 = load i64, i64* %PC
  %1050 = add i64 %1049, 3
  store i64 %1050, i64* %PC
  %1051 = inttoptr i64 %1048 to i32*
  %1052 = load i32, i32* %1051
  %1053 = zext i32 %1052 to i64
  store i64 %1053, i64* %RAX, align 8, !tbaa !2428
  %1054 = load i64, i64* %RAX
  %1055 = load i64, i64* %PC
  %1056 = add i64 %1055, 3
  store i64 %1056, i64* %PC
  %1057 = trunc i64 %1054 to i32
  %1058 = add i32 1, %1057
  %1059 = zext i32 %1058 to i64
  store i64 %1059, i64* %RAX, align 8, !tbaa !2428
  %1060 = icmp ult i32 %1058, %1057
  %1061 = icmp ult i32 %1058, 1
  %1062 = or i1 %1060, %1061
  %1063 = zext i1 %1062 to i8
  %1064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1063, i8* %1064, align 1, !tbaa !2432
  %1065 = and i32 %1058, 255
  %1066 = call i32 @llvm.ctpop.i32(i32 %1065) #16
  %1067 = trunc i32 %1066 to i8
  %1068 = and i8 %1067, 1
  %1069 = xor i8 %1068, 1
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1069, i8* %1070, align 1, !tbaa !2446
  %1071 = xor i64 1, %1054
  %1072 = trunc i64 %1071 to i32
  %1073 = xor i32 %1072, %1058
  %1074 = lshr i32 %1073, 4
  %1075 = trunc i32 %1074 to i8
  %1076 = and i8 %1075, 1
  %1077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1076, i8* %1077, align 1, !tbaa !2447
  %1078 = icmp eq i32 %1058, 0
  %1079 = zext i1 %1078 to i8
  %1080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1079, i8* %1080, align 1, !tbaa !2448
  %1081 = lshr i32 %1058, 31
  %1082 = trunc i32 %1081 to i8
  %1083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1082, i8* %1083, align 1, !tbaa !2449
  %1084 = lshr i32 %1057, 31
  %1085 = xor i32 %1081, %1084
  %1086 = add nuw nsw i32 %1085, %1081
  %1087 = icmp eq i32 %1086, 2
  %1088 = zext i1 %1087 to i8
  %1089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1088, i8* %1089, align 1, !tbaa !2450
  %1090 = load i64, i64* %RBP
  %1091 = sub i64 %1090, 64
  %1092 = load i32, i32* %EAX
  %1093 = zext i32 %1092 to i64
  %1094 = load i64, i64* %PC
  %1095 = add i64 %1094, 3
  store i64 %1095, i64* %PC
  %1096 = inttoptr i64 %1091 to i32*
  store i32 %1092, i32* %1096
  %1097 = load i64, i64* %PC
  %1098 = sub i64 %1097, 757
  %1099 = load i64, i64* %PC
  %1100 = add i64 %1099, 5
  store i64 %1100, i64* %PC
  %1101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1098, i64* %1101, align 8, !tbaa !2428
  br label %block_400c8e

block_400fd3:                                     ; preds = %block_400f8f
  %1102 = sub i64 %2596, 44
  %1103 = load i64, i64* %PC
  %1104 = add i64 %1103, 3
  store i64 %1104, i64* %PC
  %1105 = inttoptr i64 %1102 to i32*
  %1106 = load i32, i32* %1105
  %1107 = zext i32 %1106 to i64
  store i64 %1107, i64* %RAX, align 8, !tbaa !2428
  %1108 = load i64, i64* %RSP
  %1109 = load i64, i64* %PC
  %1110 = add i64 %1109, 7
  store i64 %1110, i64* %PC
  %1111 = add i64 128, %1108
  store i64 %1111, i64* %RSP, align 8, !tbaa !2428
  %1112 = icmp ult i64 %1111, %1108
  %1113 = icmp ult i64 %1111, 128
  %1114 = or i1 %1112, %1113
  %1115 = zext i1 %1114 to i8
  %1116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1115, i8* %1116, align 1, !tbaa !2432
  %1117 = trunc i64 %1111 to i32
  %1118 = and i32 %1117, 255
  %1119 = call i32 @llvm.ctpop.i32(i32 %1118) #16
  %1120 = trunc i32 %1119 to i8
  %1121 = and i8 %1120, 1
  %1122 = xor i8 %1121, 1
  %1123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1122, i8* %1123, align 1, !tbaa !2446
  %1124 = xor i64 128, %1108
  %1125 = xor i64 %1124, %1111
  %1126 = lshr i64 %1125, 4
  %1127 = trunc i64 %1126 to i8
  %1128 = and i8 %1127, 1
  %1129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1128, i8* %1129, align 1, !tbaa !2447
  %1130 = icmp eq i64 %1111, 0
  %1131 = zext i1 %1130 to i8
  %1132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1131, i8* %1132, align 1, !tbaa !2448
  %1133 = lshr i64 %1111, 63
  %1134 = trunc i64 %1133 to i8
  %1135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1134, i8* %1135, align 1, !tbaa !2449
  %1136 = lshr i64 %1108, 63
  %1137 = xor i64 %1133, %1136
  %1138 = add nuw nsw i64 %1137, %1133
  %1139 = icmp eq i64 %1138, 2
  %1140 = zext i1 %1139 to i8
  %1141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1140, i8* %1141, align 1, !tbaa !2450
  %1142 = load i64, i64* %PC
  %1143 = add i64 %1142, 1
  store i64 %1143, i64* %PC
  %1144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1145 = load i64, i64* %1144, align 8, !tbaa !2428
  %1146 = add i64 %1145, 8
  %1147 = inttoptr i64 %1145 to i64*
  %1148 = load i64, i64* %1147
  store i64 %1148, i64* %RBP, align 8, !tbaa !2428
  store i64 %1146, i64* %1144, align 8, !tbaa !2428
  %1149 = load i64, i64* %PC
  %1150 = add i64 %1149, 1
  store i64 %1150, i64* %PC
  %1151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1153 = load i64, i64* %1152, align 8, !tbaa !2428
  %1154 = inttoptr i64 %1153 to i64*
  %1155 = load i64, i64* %1154
  store i64 %1155, i64* %1151, align 8, !tbaa !2428
  %1156 = add i64 %1153, 8
  store i64 %1156, i64* %1152, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.8

block_400f51:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit3
  %1157 = load i64, i64* %RBP
  %1158 = sub i64 %1157, 80
  %1159 = load i64, i64* %PC
  %1160 = add i64 %1159, 4
  store i64 %1160, i64* %PC
  %1161 = inttoptr i64 %1158 to i64*
  %1162 = load i64, i64* %1161
  store i64 %1162, i64* %RAX, align 8, !tbaa !2428
  %1163 = load i64, i64* %RAX
  %1164 = load i64, i64* %PC
  %1165 = add i64 %1164, 4
  store i64 %1165, i64* %PC
  %1166 = xor i64 1, %1163
  store i64 %1166, i64* %RAX, align 8, !tbaa !2428
  %1167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1167, align 1, !tbaa !2432
  %1168 = trunc i64 %1166 to i32
  %1169 = and i32 %1168, 255
  %1170 = call i32 @llvm.ctpop.i32(i32 %1169) #16
  %1171 = trunc i32 %1170 to i8
  %1172 = and i8 %1171, 1
  %1173 = xor i8 %1172, 1
  %1174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1173, i8* %1174, align 1, !tbaa !2446
  %1175 = icmp eq i64 %1166, 0
  %1176 = zext i1 %1175 to i8
  %1177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1176, i8* %1177, align 1, !tbaa !2448
  %1178 = lshr i64 %1166, 63
  %1179 = trunc i64 %1178 to i8
  %1180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1179, i8* %1180, align 1, !tbaa !2449
  %1181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1181, align 1, !tbaa !2450
  %1182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1182, align 1, !tbaa !2447
  %1183 = load i64, i64* %RBP
  %1184 = sub i64 %1183, 80
  %1185 = load i64, i64* %RAX
  %1186 = load i64, i64* %PC
  %1187 = add i64 %1186, 4
  store i64 %1187, i64* %PC
  %1188 = inttoptr i64 %1184 to i64*
  store i64 %1185, i64* %1188
  br label %block_400f5d

block_400cf0:                                     ; preds = %block_400cd5
  %1189 = load i64, i64* %RBP
  %1190 = sub i64 %1189, 40
  %1191 = load i64, i64* %PC
  %1192 = add i64 %1191, 4
  store i64 %1192, i64* %PC
  %1193 = inttoptr i64 %1190 to i64*
  %1194 = load i64, i64* %1193
  store i64 %1194, i64* %RAX, align 8, !tbaa !2428
  %1195 = load i64, i64* %RAX
  %1196 = load i64, i64* %PC
  %1197 = add i64 %1196, 2
  store i64 %1197, i64* %PC
  %1198 = inttoptr i64 %1195 to i32*
  %1199 = load i32, i32* %1198
  %1200 = zext i32 %1199 to i64
  store i64 %1200, i64* %RCX, align 8, !tbaa !2428
  %1201 = load i64, i64* %RCX
  %1202 = load i64, i64* %RBP
  %1203 = sub i64 %1202, 48
  %1204 = load i64, i64* %PC
  %1205 = add i64 %1204, 3
  store i64 %1205, i64* %PC
  %1206 = trunc i64 %1201 to i32
  %1207 = inttoptr i64 %1203 to i32*
  %1208 = load i32, i32* %1207
  %1209 = add i32 %1208, %1206
  %1210 = zext i32 %1209 to i64
  store i64 %1210, i64* %RCX, align 8, !tbaa !2428
  %1211 = icmp ult i32 %1209, %1206
  %1212 = icmp ult i32 %1209, %1208
  %1213 = or i1 %1211, %1212
  %1214 = zext i1 %1213 to i8
  %1215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1214, i8* %1215, align 1, !tbaa !2432
  %1216 = and i32 %1209, 255
  %1217 = call i32 @llvm.ctpop.i32(i32 %1216) #16
  %1218 = trunc i32 %1217 to i8
  %1219 = and i8 %1218, 1
  %1220 = xor i8 %1219, 1
  %1221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1220, i8* %1221, align 1, !tbaa !2446
  %1222 = xor i32 %1208, %1206
  %1223 = xor i32 %1222, %1209
  %1224 = lshr i32 %1223, 4
  %1225 = trunc i32 %1224 to i8
  %1226 = and i8 %1225, 1
  %1227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1226, i8* %1227, align 1, !tbaa !2447
  %1228 = icmp eq i32 %1209, 0
  %1229 = zext i1 %1228 to i8
  %1230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1229, i8* %1230, align 1, !tbaa !2448
  %1231 = lshr i32 %1209, 31
  %1232 = trunc i32 %1231 to i8
  %1233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1232, i8* %1233, align 1, !tbaa !2449
  %1234 = lshr i32 %1206, 31
  %1235 = lshr i32 %1208, 31
  %1236 = xor i32 %1231, %1234
  %1237 = xor i32 %1231, %1235
  %1238 = add nuw nsw i32 %1236, %1237
  %1239 = icmp eq i32 %1238, 2
  %1240 = zext i1 %1239 to i8
  %1241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1240, i8* %1241, align 1, !tbaa !2450
  %1242 = load i64, i64* %RBP
  %1243 = sub i64 %1242, 48
  %1244 = load i32, i32* %ECX
  %1245 = zext i32 %1244 to i64
  %1246 = load i64, i64* %PC
  %1247 = add i64 %1246, 3
  store i64 %1247, i64* %PC
  %1248 = inttoptr i64 %1243 to i32*
  store i32 %1244, i32* %1248
  %1249 = load i64, i64* %RBP
  %1250 = sub i64 %1249, 40
  %1251 = load i64, i64* %PC
  %1252 = add i64 %1251, 4
  store i64 %1252, i64* %PC
  %1253 = inttoptr i64 %1250 to i64*
  %1254 = load i64, i64* %1253
  store i64 %1254, i64* %RAX, align 8, !tbaa !2428
  %1255 = load i64, i64* %RAX
  %1256 = add i64 %1255, 4
  %1257 = load i64, i64* %PC
  %1258 = add i64 %1257, 3
  store i64 %1258, i64* %PC
  %1259 = inttoptr i64 %1256 to i32*
  %1260 = load i32, i32* %1259
  %1261 = zext i32 %1260 to i64
  store i64 %1261, i64* %RCX, align 8, !tbaa !2428
  %1262 = load i64, i64* %RCX
  %1263 = load i64, i64* %RBP
  %1264 = sub i64 %1263, 52
  %1265 = load i64, i64* %PC
  %1266 = add i64 %1265, 3
  store i64 %1266, i64* %PC
  %1267 = trunc i64 %1262 to i32
  %1268 = inttoptr i64 %1264 to i32*
  %1269 = load i32, i32* %1268
  %1270 = add i32 %1269, %1267
  %1271 = zext i32 %1270 to i64
  store i64 %1271, i64* %RCX, align 8, !tbaa !2428
  %1272 = icmp ult i32 %1270, %1267
  %1273 = icmp ult i32 %1270, %1269
  %1274 = or i1 %1272, %1273
  %1275 = zext i1 %1274 to i8
  %1276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1275, i8* %1276, align 1, !tbaa !2432
  %1277 = and i32 %1270, 255
  %1278 = call i32 @llvm.ctpop.i32(i32 %1277) #16
  %1279 = trunc i32 %1278 to i8
  %1280 = and i8 %1279, 1
  %1281 = xor i8 %1280, 1
  %1282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1281, i8* %1282, align 1, !tbaa !2446
  %1283 = xor i32 %1269, %1267
  %1284 = xor i32 %1283, %1270
  %1285 = lshr i32 %1284, 4
  %1286 = trunc i32 %1285 to i8
  %1287 = and i8 %1286, 1
  %1288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1287, i8* %1288, align 1, !tbaa !2447
  %1289 = icmp eq i32 %1270, 0
  %1290 = zext i1 %1289 to i8
  %1291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1290, i8* %1291, align 1, !tbaa !2448
  %1292 = lshr i32 %1270, 31
  %1293 = trunc i32 %1292 to i8
  %1294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1293, i8* %1294, align 1, !tbaa !2449
  %1295 = lshr i32 %1267, 31
  %1296 = lshr i32 %1269, 31
  %1297 = xor i32 %1292, %1295
  %1298 = xor i32 %1292, %1296
  %1299 = add nuw nsw i32 %1297, %1298
  %1300 = icmp eq i32 %1299, 2
  %1301 = zext i1 %1300 to i8
  %1302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1301, i8* %1302, align 1, !tbaa !2450
  %1303 = load i64, i64* %RBP
  %1304 = sub i64 %1303, 52
  %1305 = load i32, i32* %ECX
  %1306 = zext i32 %1305 to i64
  %1307 = load i64, i64* %PC
  %1308 = add i64 %1307, 3
  store i64 %1308, i64* %PC
  %1309 = inttoptr i64 %1304 to i32*
  store i32 %1305, i32* %1309
  br label %block_400d09

block_400ccb:                                     ; preds = %block_400d6f, %block_400cbb
  %MEMORY.3 = phi %struct.Memory* [ %1982, %block_400cbb ], [ %MEMORY.6, %block_400d6f ]
  %1310 = load i64, i64* %RBP
  %1311 = sub i64 %1310, 72
  %1312 = load i64, i64* %PC
  %1313 = add i64 %1312, 4
  store i64 %1313, i64* %PC
  %1314 = inttoptr i64 %1311 to i32*
  %1315 = load i32, i32* %1314
  %1316 = sub i32 %1315, 31
  %1317 = icmp ult i32 %1315, 31
  %1318 = zext i1 %1317 to i8
  %1319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1318, i8* %1319, align 1, !tbaa !2432
  %1320 = and i32 %1316, 255
  %1321 = call i32 @llvm.ctpop.i32(i32 %1320) #16
  %1322 = trunc i32 %1321 to i8
  %1323 = and i8 %1322, 1
  %1324 = xor i8 %1323, 1
  %1325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1324, i8* %1325, align 1, !tbaa !2446
  %1326 = xor i32 %1315, 31
  %1327 = xor i32 %1326, %1316
  %1328 = lshr i32 %1327, 4
  %1329 = trunc i32 %1328 to i8
  %1330 = and i8 %1329, 1
  %1331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1330, i8* %1331, align 1, !tbaa !2447
  %1332 = icmp eq i32 %1316, 0
  %1333 = zext i1 %1332 to i8
  %1334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1333, i8* %1334, align 1, !tbaa !2448
  %1335 = lshr i32 %1316, 31
  %1336 = trunc i32 %1335 to i8
  %1337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1336, i8* %1337, align 1, !tbaa !2449
  %1338 = lshr i32 %1315, 31
  %1339 = xor i32 %1335, %1338
  %1340 = add nuw nsw i32 %1339, %1338
  %1341 = icmp eq i32 %1340, 2
  %1342 = zext i1 %1341 to i8
  %1343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1342, i8* %1343, align 1, !tbaa !2450
  %1344 = load i64, i64* %PC
  %1345 = add i64 %1344, 227
  %1346 = load i64, i64* %PC
  %1347 = add i64 %1346, 6
  %1348 = load i64, i64* %PC
  %1349 = add i64 %1348, 6
  store i64 %1349, i64* %PC
  %1350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1351 = load i8, i8* %1350, align 1, !tbaa !2449
  %1352 = icmp ne i8 %1351, 0
  %1353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1354 = load i8, i8* %1353, align 1, !tbaa !2450
  %1355 = icmp ne i8 %1354, 0
  %1356 = xor i1 %1352, %1355
  %1357 = xor i1 %1356, true
  %1358 = zext i1 %1357 to i8
  store i8 %1358, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %1359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1360 = select i1 %1356, i64 %1347, i64 %1345
  store i64 %1360, i64* %1359, align 8, !tbaa !2428
  %1361 = load i8, i8* %BRANCH_TAKEN
  %1362 = icmp eq i8 %1361, 1
  br i1 %1362, label %block_400db2, label %block_400cd5

block_400dc5:                                     ; preds = %block_400caf
  %1363 = sub i64 %1965, 1829
  %1364 = load i64, i64* %PC
  %1365 = add i64 %1364, 5
  %1366 = load i64, i64* %PC
  %1367 = add i64 %1366, 5
  store i64 %1367, i64* %PC
  %1368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1369 = load i64, i64* %1368, align 8, !tbaa !2428
  %1370 = add i64 %1369, -8
  %1371 = inttoptr i64 %1370 to i64*
  store i64 %1365, i64* %1371
  store i64 %1370, i64* %1368, align 8, !tbaa !2428
  %1372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1363, i64* %1372, align 8, !tbaa !2428
  %1373 = load i64, i64* %PC
  %1374 = call %struct.Memory* @ext_4006a0_lrand48(%struct.State* %0, i64 %1373, %struct.Memory* %MEMORY.5)
  %1375 = load i64, i64* %RBP
  %1376 = sub i64 %1375, 80
  %1377 = load i64, i64* %RAX
  %1378 = load i64, i64* %PC
  %1379 = add i64 %1378, 4
  store i64 %1379, i64* %PC
  %1380 = inttoptr i64 %1376 to i64*
  store i64 %1377, i64* %1380
  %1381 = load i64, i64* %RBP
  %1382 = sub i64 %1381, 72
  %1383 = load i64, i64* %PC
  %1384 = add i64 %1383, 7
  store i64 %1384, i64* %PC
  %1385 = inttoptr i64 %1382 to i32*
  store i32 0, i32* %1385
  br label %block_400dd5

block_400ebe:                                     ; preds = %block_400dd5
  %1386 = load i64, i64* %PC
  %1387 = sub i64 %1386, 2078
  %1388 = load i64, i64* %PC
  %1389 = add i64 %1388, 5
  %1390 = load i64, i64* %PC
  %1391 = add i64 %1390, 5
  store i64 %1391, i64* %PC
  %1392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1393 = load i64, i64* %1392, align 8, !tbaa !2428
  %1394 = add i64 %1393, -8
  %1395 = inttoptr i64 %1394 to i64*
  store i64 %1389, i64* %1395
  store i64 %1394, i64* %1392, align 8, !tbaa !2428
  %1396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1387, i64* %1396, align 8, !tbaa !2428
  %1397 = load i64, i64* %PC
  %1398 = call %struct.Memory* @ext_4006a0_lrand48(%struct.State* %0, i64 %1397, %struct.Memory* %MEMORY.0)
  %1399 = load i64, i64* %RBP
  %1400 = sub i64 %1399, 80
  %1401 = load i64, i64* %RAX
  %1402 = load i64, i64* %PC
  %1403 = add i64 %1402, 4
  store i64 %1403, i64* %PC
  %1404 = inttoptr i64 %1400 to i64*
  store i64 %1401, i64* %1404
  %1405 = load i64, i64* %RBP
  %1406 = sub i64 %1405, 32
  %1407 = load i64, i64* %PC
  %1408 = add i64 %1407, 4
  store i64 %1408, i64* %PC
  %1409 = inttoptr i64 %1406 to i64*
  %1410 = load i64, i64* %1409
  store i64 %1410, i64* %RAX, align 8, !tbaa !2428
  %1411 = load i64, i64* %PC
  %1412 = add i64 %1411, 7
  store i64 %1412, i64* %PC
  %1413 = load i32, i32* bitcast (%reg_len_type* @reg_len to i32*)
  %1414 = zext i32 %1413 to i64
  store i64 %1414, i64* %RCX, align 8, !tbaa !2428
  %1415 = load i64, i64* %RCX
  %1416 = load i64, i64* %PC
  %1417 = add i64 %1416, 3
  store i64 %1417, i64* %PC
  %1418 = trunc i64 %1415 to i32
  %1419 = sub i32 %1418, 1
  %1420 = zext i32 %1419 to i64
  store i64 %1420, i64* %RCX, align 8, !tbaa !2428
  %1421 = icmp ult i32 %1418, 1
  %1422 = zext i1 %1421 to i8
  %1423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1422, i8* %1423, align 1, !tbaa !2432
  %1424 = and i32 %1419, 255
  %1425 = call i32 @llvm.ctpop.i32(i32 %1424) #16
  %1426 = trunc i32 %1425 to i8
  %1427 = and i8 %1426, 1
  %1428 = xor i8 %1427, 1
  %1429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1428, i8* %1429, align 1, !tbaa !2446
  %1430 = xor i64 1, %1415
  %1431 = trunc i64 %1430 to i32
  %1432 = xor i32 %1431, %1419
  %1433 = lshr i32 %1432, 4
  %1434 = trunc i32 %1433 to i8
  %1435 = and i8 %1434, 1
  %1436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1435, i8* %1436, align 1, !tbaa !2447
  %1437 = icmp eq i32 %1419, 0
  %1438 = zext i1 %1437 to i8
  %1439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1438, i8* %1439, align 1, !tbaa !2448
  %1440 = lshr i32 %1419, 31
  %1441 = trunc i32 %1440 to i8
  %1442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1441, i8* %1442, align 1, !tbaa !2449
  %1443 = lshr i32 %1418, 31
  %1444 = xor i32 %1440, %1443
  %1445 = add nuw nsw i32 %1444, %1443
  %1446 = icmp eq i32 %1445, 2
  %1447 = zext i1 %1446 to i8
  %1448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1447, i8* %1448, align 1, !tbaa !2450
  %1449 = load i32, i32* %ECX
  %1450 = zext i32 %1449 to i64
  %1451 = load i64, i64* %PC
  %1452 = add i64 %1451, 3
  store i64 %1452, i64* %PC
  %1453 = shl i64 %1450, 32
  %1454 = ashr exact i64 %1453, 32
  store i64 %1454, i64* %RDX, align 8, !tbaa !2428
  %1455 = load i64, i64* %RAX
  %1456 = load i64, i64* %RDX
  %1457 = add i64 %1456, %1455
  %1458 = load i64, i64* %PC
  %1459 = add i64 %1458, 4
  store i64 %1459, i64* %PC
  %1460 = inttoptr i64 %1457 to i8*
  %1461 = load i8, i8* %1460
  %1462 = sext i8 %1461 to i64
  %1463 = and i64 %1462, 4294967295
  store i64 %1463, i64* %RCX, align 8, !tbaa !2428
  %1464 = load i32, i32* %ECX
  %1465 = zext i32 %1464 to i64
  %1466 = load i64, i64* %PC
  %1467 = add i64 %1466, 3
  store i64 %1467, i64* %PC
  %1468 = sub i32 %1464, 49
  %1469 = icmp ult i32 %1464, 49
  %1470 = zext i1 %1469 to i8
  %1471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1470, i8* %1471, align 1, !tbaa !2432
  %1472 = and i32 %1468, 255
  %1473 = call i32 @llvm.ctpop.i32(i32 %1472) #16
  %1474 = trunc i32 %1473 to i8
  %1475 = and i8 %1474, 1
  %1476 = xor i8 %1475, 1
  %1477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1476, i8* %1477, align 1, !tbaa !2446
  %1478 = xor i64 49, %1465
  %1479 = trunc i64 %1478 to i32
  %1480 = xor i32 %1479, %1468
  %1481 = lshr i32 %1480, 4
  %1482 = trunc i32 %1481 to i8
  %1483 = and i8 %1482, 1
  %1484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1483, i8* %1484, align 1, !tbaa !2447
  %1485 = icmp eq i32 %1468, 0
  %1486 = zext i1 %1485 to i8
  %1487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1486, i8* %1487, align 1, !tbaa !2448
  %1488 = lshr i32 %1468, 31
  %1489 = trunc i32 %1488 to i8
  %1490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1489, i8* %1490, align 1, !tbaa !2449
  %1491 = lshr i32 %1464, 31
  %1492 = xor i32 %1488, %1491
  %1493 = add nuw nsw i32 %1492, %1491
  %1494 = icmp eq i32 %1493, 2
  %1495 = zext i1 %1494 to i8
  %1496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1495, i8* %1496, align 1, !tbaa !2450
  %1497 = load i64, i64* %PC
  %1498 = add i64 %1497, 31
  %1499 = load i64, i64* %PC
  %1500 = add i64 %1499, 6
  %1501 = load i64, i64* %PC
  %1502 = add i64 %1501, 6
  store i64 %1502, i64* %PC
  %1503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1504 = load i8, i8* %1503, align 1, !tbaa !2448
  %1505 = icmp eq i8 %1504, 0
  %1506 = zext i1 %1505 to i8
  store i8 %1506, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %1507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1508 = select i1 %1505, i64 %1498, i64 %1500
  store i64 %1508, i64* %1507, align 8, !tbaa !2428
  %1509 = load i8, i8* %BRANCH_TAKEN
  %1510 = icmp eq i8 %1509, 1
  br i1 %1510, label %block_400efe, label %block_400ee5

block_400cd5:                                     ; preds = %block_400ccb
  %1511 = load i64, i64* %RBP
  %1512 = sub i64 %1511, 32
  %1513 = load i64, i64* %PC
  %1514 = add i64 %1513, 4
  store i64 %1514, i64* %PC
  %1515 = inttoptr i64 %1512 to i64*
  %1516 = load i64, i64* %1515
  store i64 %1516, i64* %RAX, align 8, !tbaa !2428
  %1517 = load i64, i64* %RBP
  %1518 = sub i64 %1517, 68
  %1519 = load i64, i64* %PC
  %1520 = add i64 %1519, 4
  store i64 %1520, i64* %PC
  %1521 = inttoptr i64 %1518 to i32*
  %1522 = load i32, i32* %1521
  %1523 = sext i32 %1522 to i64
  %1524 = mul nsw i64 %1523, 31
  %1525 = trunc i64 %1524 to i32
  %1526 = and i64 %1524, 4294967295
  store i64 %1526, i64* %RCX, align 8, !tbaa !2428
  %1527 = shl i64 %1524, 32
  %1528 = ashr exact i64 %1527, 32
  %1529 = icmp ne i64 %1528, %1524
  %1530 = zext i1 %1529 to i8
  %1531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1530, i8* %1531, align 1, !tbaa !2432
  %1532 = and i32 %1525, 255
  %1533 = call i32 @llvm.ctpop.i32(i32 %1532) #16
  %1534 = trunc i32 %1533 to i8
  %1535 = and i8 %1534, 1
  %1536 = xor i8 %1535, 1
  %1537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1536, i8* %1537, align 1, !tbaa !2446
  %1538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1538, align 1, !tbaa !2447
  %1539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1539, align 1, !tbaa !2448
  %1540 = lshr i32 %1525, 31
  %1541 = trunc i32 %1540 to i8
  %1542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1541, i8* %1542, align 1, !tbaa !2449
  %1543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1530, i8* %1543, align 1, !tbaa !2450
  %1544 = load i64, i64* %RCX
  %1545 = load i64, i64* %RBP
  %1546 = sub i64 %1545, 72
  %1547 = load i64, i64* %PC
  %1548 = add i64 %1547, 3
  store i64 %1548, i64* %PC
  %1549 = trunc i64 %1544 to i32
  %1550 = inttoptr i64 %1546 to i32*
  %1551 = load i32, i32* %1550
  %1552 = add i32 %1551, %1549
  %1553 = zext i32 %1552 to i64
  store i64 %1553, i64* %RCX, align 8, !tbaa !2428
  %1554 = icmp ult i32 %1552, %1549
  %1555 = icmp ult i32 %1552, %1551
  %1556 = or i1 %1554, %1555
  %1557 = zext i1 %1556 to i8
  %1558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1557, i8* %1558, align 1, !tbaa !2432
  %1559 = and i32 %1552, 255
  %1560 = call i32 @llvm.ctpop.i32(i32 %1559) #16
  %1561 = trunc i32 %1560 to i8
  %1562 = and i8 %1561, 1
  %1563 = xor i8 %1562, 1
  %1564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1563, i8* %1564, align 1, !tbaa !2446
  %1565 = xor i32 %1551, %1549
  %1566 = xor i32 %1565, %1552
  %1567 = lshr i32 %1566, 4
  %1568 = trunc i32 %1567 to i8
  %1569 = and i8 %1568, 1
  %1570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1569, i8* %1570, align 1, !tbaa !2447
  %1571 = icmp eq i32 %1552, 0
  %1572 = zext i1 %1571 to i8
  %1573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1572, i8* %1573, align 1, !tbaa !2448
  %1574 = lshr i32 %1552, 31
  %1575 = trunc i32 %1574 to i8
  %1576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1575, i8* %1576, align 1, !tbaa !2449
  %1577 = lshr i32 %1549, 31
  %1578 = lshr i32 %1551, 31
  %1579 = xor i32 %1574, %1577
  %1580 = xor i32 %1574, %1578
  %1581 = add nuw nsw i32 %1579, %1580
  %1582 = icmp eq i32 %1581, 2
  %1583 = zext i1 %1582 to i8
  %1584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1583, i8* %1584, align 1, !tbaa !2450
  %1585 = load i32, i32* %ECX
  %1586 = zext i32 %1585 to i64
  %1587 = load i64, i64* %PC
  %1588 = add i64 %1587, 3
  store i64 %1588, i64* %PC
  %1589 = shl i64 %1586, 32
  %1590 = ashr exact i64 %1589, 32
  store i64 %1590, i64* %RDX, align 8, !tbaa !2428
  %1591 = load i64, i64* %RAX
  %1592 = load i64, i64* %RDX
  %1593 = add i64 %1592, %1591
  %1594 = load i64, i64* %PC
  %1595 = add i64 %1594, 4
  store i64 %1595, i64* %PC
  %1596 = inttoptr i64 %1593 to i8*
  %1597 = load i8, i8* %1596
  %1598 = sext i8 %1597 to i64
  %1599 = and i64 %1598, 4294967295
  store i64 %1599, i64* %RCX, align 8, !tbaa !2428
  %1600 = load i32, i32* %ECX
  %1601 = zext i32 %1600 to i64
  %1602 = load i64, i64* %PC
  %1603 = add i64 %1602, 3
  store i64 %1603, i64* %PC
  %1604 = sub i32 %1600, 49
  %1605 = icmp ult i32 %1600, 49
  %1606 = zext i1 %1605 to i8
  %1607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1606, i8* %1607, align 1, !tbaa !2432
  %1608 = and i32 %1604, 255
  %1609 = call i32 @llvm.ctpop.i32(i32 %1608) #16
  %1610 = trunc i32 %1609 to i8
  %1611 = and i8 %1610, 1
  %1612 = xor i8 %1611, 1
  %1613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1612, i8* %1613, align 1, !tbaa !2446
  %1614 = xor i64 49, %1601
  %1615 = trunc i64 %1614 to i32
  %1616 = xor i32 %1615, %1604
  %1617 = lshr i32 %1616, 4
  %1618 = trunc i32 %1617 to i8
  %1619 = and i8 %1618, 1
  %1620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1619, i8* %1620, align 1, !tbaa !2447
  %1621 = icmp eq i32 %1604, 0
  %1622 = zext i1 %1621 to i8
  %1623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1622, i8* %1623, align 1, !tbaa !2448
  %1624 = lshr i32 %1604, 31
  %1625 = trunc i32 %1624 to i8
  %1626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1625, i8* %1626, align 1, !tbaa !2449
  %1627 = lshr i32 %1600, 31
  %1628 = xor i32 %1624, %1627
  %1629 = add nuw nsw i32 %1628, %1627
  %1630 = icmp eq i32 %1629, 2
  %1631 = zext i1 %1630 to i8
  %1632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1631, i8* %1632, align 1, !tbaa !2450
  %1633 = load i64, i64* %PC
  %1634 = add i64 %1633, 31
  %1635 = load i64, i64* %PC
  %1636 = add i64 %1635, 6
  %1637 = load i64, i64* %PC
  %1638 = add i64 %1637, 6
  store i64 %1638, i64* %PC
  %1639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1640 = load i8, i8* %1639, align 1, !tbaa !2448
  %1641 = icmp eq i8 %1640, 0
  %1642 = zext i1 %1641 to i8
  store i8 %1642, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %1643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1644 = select i1 %1641, i64 %1634, i64 %1636
  store i64 %1644, i64* %1643, align 8, !tbaa !2428
  %1645 = load i8, i8* %BRANCH_TAKEN
  %1646 = icmp eq i8 %1645, 1
  br i1 %1646, label %block_400d09, label %block_400cf0

block_400fb9:                                     ; preds = %block_400f9f, %block_400fb2
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.8, %block_400f9f ], [ %MEMORY.8, %block_400fb2 ]
  %1647 = load i64, i64* %RBP
  %1648 = sub i64 %1647, 40
  %1649 = load i64, i64* %PC
  %1650 = add i64 %1649, 4
  store i64 %1650, i64* %PC
  %1651 = inttoptr i64 %1648 to i64*
  %1652 = load i64, i64* %1651
  store i64 %1652, i64* %RAX, align 8, !tbaa !2428
  %1653 = load i64, i64* %RAX
  %1654 = add i64 %1653, 8
  %1655 = load i64, i64* %PC
  %1656 = add i64 %1655, 4
  store i64 %1656, i64* %PC
  %1657 = inttoptr i64 %1654 to i64*
  %1658 = load i64, i64* %1657
  store i64 %1658, i64* %RAX, align 8, !tbaa !2428
  %1659 = load i64, i64* %RBP
  %1660 = sub i64 %1659, 40
  %1661 = load i64, i64* %RAX
  %1662 = load i64, i64* %PC
  %1663 = add i64 %1662, 4
  store i64 %1663, i64* %PC
  %1664 = inttoptr i64 %1660 to i64*
  store i64 %1661, i64* %1664
  %1665 = load i64, i64* %RBP
  %1666 = sub i64 %1665, 68
  %1667 = load i64, i64* %PC
  %1668 = add i64 %1667, 3
  store i64 %1668, i64* %PC
  %1669 = inttoptr i64 %1666 to i32*
  %1670 = load i32, i32* %1669
  %1671 = zext i32 %1670 to i64
  store i64 %1671, i64* %RAX, align 8, !tbaa !2428
  %1672 = load i64, i64* %RAX
  %1673 = load i64, i64* %PC
  %1674 = add i64 %1673, 3
  store i64 %1674, i64* %PC
  %1675 = trunc i64 %1672 to i32
  %1676 = add i32 1, %1675
  %1677 = zext i32 %1676 to i64
  store i64 %1677, i64* %RAX, align 8, !tbaa !2428
  %1678 = icmp ult i32 %1676, %1675
  %1679 = icmp ult i32 %1676, 1
  %1680 = or i1 %1678, %1679
  %1681 = zext i1 %1680 to i8
  %1682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1681, i8* %1682, align 1, !tbaa !2432
  %1683 = and i32 %1676, 255
  %1684 = call i32 @llvm.ctpop.i32(i32 %1683) #16
  %1685 = trunc i32 %1684 to i8
  %1686 = and i8 %1685, 1
  %1687 = xor i8 %1686, 1
  %1688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1687, i8* %1688, align 1, !tbaa !2446
  %1689 = xor i64 1, %1672
  %1690 = trunc i64 %1689 to i32
  %1691 = xor i32 %1690, %1676
  %1692 = lshr i32 %1691, 4
  %1693 = trunc i32 %1692 to i8
  %1694 = and i8 %1693, 1
  %1695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1694, i8* %1695, align 1, !tbaa !2447
  %1696 = icmp eq i32 %1676, 0
  %1697 = zext i1 %1696 to i8
  %1698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1697, i8* %1698, align 1, !tbaa !2448
  %1699 = lshr i32 %1676, 31
  %1700 = trunc i32 %1699 to i8
  %1701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1700, i8* %1701, align 1, !tbaa !2449
  %1702 = lshr i32 %1675, 31
  %1703 = xor i32 %1699, %1702
  %1704 = add nuw nsw i32 %1703, %1699
  %1705 = icmp eq i32 %1704, 2
  %1706 = zext i1 %1705 to i8
  %1707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1706, i8* %1707, align 1, !tbaa !2450
  %1708 = load i64, i64* %RBP
  %1709 = sub i64 %1708, 68
  %1710 = load i32, i32* %EAX
  %1711 = zext i32 %1710 to i64
  %1712 = load i64, i64* %PC
  %1713 = add i64 %1712, 3
  store i64 %1713, i64* %PC
  %1714 = inttoptr i64 %1709 to i32*
  store i32 %1710, i32* %1714
  %1715 = load i64, i64* %PC
  %1716 = sub i64 %1715, 63
  %1717 = load i64, i64* %PC
  %1718 = add i64 %1717, 5
  store i64 %1718, i64* %PC
  %1719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1716, i64* %1719, align 8, !tbaa !2428
  br label %block_400f8f

block_400dfc:                                     ; preds = %block_400de1
  %1720 = load i64, i64* %RBP
  %1721 = sub i64 %1720, 40
  %1722 = load i64, i64* %PC
  %1723 = add i64 %1722, 4
  store i64 %1723, i64* %PC
  %1724 = inttoptr i64 %1721 to i64*
  %1725 = load i64, i64* %1724
  store i64 %1725, i64* %RAX, align 8, !tbaa !2428
  %1726 = load i64, i64* %RAX
  %1727 = load i64, i64* %PC
  %1728 = add i64 %1727, 2
  store i64 %1728, i64* %PC
  %1729 = inttoptr i64 %1726 to i32*
  %1730 = load i32, i32* %1729
  %1731 = zext i32 %1730 to i64
  store i64 %1731, i64* %RCX, align 8, !tbaa !2428
  %1732 = load i64, i64* %RCX
  %1733 = load i64, i64* %RBP
  %1734 = sub i64 %1733, 48
  %1735 = load i64, i64* %PC
  %1736 = add i64 %1735, 3
  store i64 %1736, i64* %PC
  %1737 = trunc i64 %1732 to i32
  %1738 = inttoptr i64 %1734 to i32*
  %1739 = load i32, i32* %1738
  %1740 = add i32 %1739, %1737
  %1741 = zext i32 %1740 to i64
  store i64 %1741, i64* %RCX, align 8, !tbaa !2428
  %1742 = icmp ult i32 %1740, %1737
  %1743 = icmp ult i32 %1740, %1739
  %1744 = or i1 %1742, %1743
  %1745 = zext i1 %1744 to i8
  %1746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1745, i8* %1746, align 1, !tbaa !2432
  %1747 = and i32 %1740, 255
  %1748 = call i32 @llvm.ctpop.i32(i32 %1747) #16
  %1749 = trunc i32 %1748 to i8
  %1750 = and i8 %1749, 1
  %1751 = xor i8 %1750, 1
  %1752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1751, i8* %1752, align 1, !tbaa !2446
  %1753 = xor i32 %1739, %1737
  %1754 = xor i32 %1753, %1740
  %1755 = lshr i32 %1754, 4
  %1756 = trunc i32 %1755 to i8
  %1757 = and i8 %1756, 1
  %1758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1757, i8* %1758, align 1, !tbaa !2447
  %1759 = icmp eq i32 %1740, 0
  %1760 = zext i1 %1759 to i8
  %1761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1760, i8* %1761, align 1, !tbaa !2448
  %1762 = lshr i32 %1740, 31
  %1763 = trunc i32 %1762 to i8
  %1764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1763, i8* %1764, align 1, !tbaa !2449
  %1765 = lshr i32 %1737, 31
  %1766 = lshr i32 %1739, 31
  %1767 = xor i32 %1762, %1765
  %1768 = xor i32 %1762, %1766
  %1769 = add nuw nsw i32 %1767, %1768
  %1770 = icmp eq i32 %1769, 2
  %1771 = zext i1 %1770 to i8
  %1772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1771, i8* %1772, align 1, !tbaa !2450
  %1773 = load i64, i64* %RBP
  %1774 = sub i64 %1773, 48
  %1775 = load i32, i32* %ECX
  %1776 = zext i32 %1775 to i64
  %1777 = load i64, i64* %PC
  %1778 = add i64 %1777, 3
  store i64 %1778, i64* %PC
  %1779 = inttoptr i64 %1774 to i32*
  store i32 %1775, i32* %1779
  %1780 = load i64, i64* %RBP
  %1781 = sub i64 %1780, 40
  %1782 = load i64, i64* %PC
  %1783 = add i64 %1782, 4
  store i64 %1783, i64* %PC
  %1784 = inttoptr i64 %1781 to i64*
  %1785 = load i64, i64* %1784
  store i64 %1785, i64* %RAX, align 8, !tbaa !2428
  %1786 = load i64, i64* %RAX
  %1787 = add i64 %1786, 4
  %1788 = load i64, i64* %PC
  %1789 = add i64 %1788, 3
  store i64 %1789, i64* %PC
  %1790 = inttoptr i64 %1787 to i32*
  %1791 = load i32, i32* %1790
  %1792 = zext i32 %1791 to i64
  store i64 %1792, i64* %RCX, align 8, !tbaa !2428
  %1793 = load i64, i64* %RCX
  %1794 = load i64, i64* %RBP
  %1795 = sub i64 %1794, 52
  %1796 = load i64, i64* %PC
  %1797 = add i64 %1796, 3
  store i64 %1797, i64* %PC
  %1798 = trunc i64 %1793 to i32
  %1799 = inttoptr i64 %1795 to i32*
  %1800 = load i32, i32* %1799
  %1801 = add i32 %1800, %1798
  %1802 = zext i32 %1801 to i64
  store i64 %1802, i64* %RCX, align 8, !tbaa !2428
  %1803 = icmp ult i32 %1801, %1798
  %1804 = icmp ult i32 %1801, %1800
  %1805 = or i1 %1803, %1804
  %1806 = zext i1 %1805 to i8
  %1807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1806, i8* %1807, align 1, !tbaa !2432
  %1808 = and i32 %1801, 255
  %1809 = call i32 @llvm.ctpop.i32(i32 %1808) #16
  %1810 = trunc i32 %1809 to i8
  %1811 = and i8 %1810, 1
  %1812 = xor i8 %1811, 1
  %1813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1812, i8* %1813, align 1, !tbaa !2446
  %1814 = xor i32 %1800, %1798
  %1815 = xor i32 %1814, %1801
  %1816 = lshr i32 %1815, 4
  %1817 = trunc i32 %1816 to i8
  %1818 = and i8 %1817, 1
  %1819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1818, i8* %1819, align 1, !tbaa !2447
  %1820 = icmp eq i32 %1801, 0
  %1821 = zext i1 %1820 to i8
  %1822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1821, i8* %1822, align 1, !tbaa !2448
  %1823 = lshr i32 %1801, 31
  %1824 = trunc i32 %1823 to i8
  %1825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1824, i8* %1825, align 1, !tbaa !2449
  %1826 = lshr i32 %1798, 31
  %1827 = lshr i32 %1800, 31
  %1828 = xor i32 %1823, %1826
  %1829 = xor i32 %1823, %1827
  %1830 = add nuw nsw i32 %1828, %1829
  %1831 = icmp eq i32 %1830, 2
  %1832 = zext i1 %1831 to i8
  %1833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1832, i8* %1833, align 1, !tbaa !2450
  %1834 = load i64, i64* %RBP
  %1835 = sub i64 %1834, 52
  %1836 = load i32, i32* %ECX
  %1837 = zext i32 %1836 to i64
  %1838 = load i64, i64* %PC
  %1839 = add i64 %1838, 3
  store i64 %1839, i64* %PC
  %1840 = inttoptr i64 %1835 to i32*
  store i32 %1836, i32* %1840
  br label %block_400e15

block_400db2:                                     ; preds = %block_400ccb
  %1841 = load i64, i64* %PC
  %1842 = add i64 %1841, 5
  %1843 = load i64, i64* %PC
  %1844 = add i64 %1843, 5
  store i64 %1844, i64* %PC
  %1845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1842, i64* %1845, align 8, !tbaa !2428
  %1846 = load i64, i64* %RBP
  %1847 = sub i64 %1846, 68
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
  %1890 = sub i64 %1889, 68
  %1891 = load i32, i32* %EAX
  %1892 = zext i32 %1891 to i64
  %1893 = load i64, i64* %PC
  %1894 = add i64 %1893, 3
  store i64 %1894, i64* %PC
  %1895 = inttoptr i64 %1890 to i32*
  store i32 %1891, i32* %1895
  %1896 = load i64, i64* %PC
  %1897 = sub i64 %1896, 273
  %1898 = load i64, i64* %PC
  %1899 = add i64 %1898, 5
  store i64 %1899, i64* %PC
  %1900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1897, i64* %1900, align 8, !tbaa !2428
  br label %block_400caf

block_400caf:                                     ; preds = %block_400c9a, %block_400db2
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.9, %block_400c9a ], [ %MEMORY.3, %block_400db2 ]
  %1901 = load i64, i64* %RBP
  %1902 = sub i64 %1901, 68
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
  %1911 = sub i64 %1910, 60
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
  %1947 = add i64 %1946, 272
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
  store i8 %1960, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %1961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1962 = select i1 %1958, i64 %1949, i64 %1947
  store i64 %1962, i64* %1961, align 8, !tbaa !2428
  %1963 = load i8, i8* %BRANCH_TAKEN
  %1964 = icmp eq i8 %1963, 1
  %1965 = load i64, i64* %PC
  br i1 %1964, label %block_400dc5, label %block_400cbb

block_400fb2:                                     ; preds = %block_400f9f
  %1966 = load i64, i64* %RBP
  %1967 = sub i64 %1966, 44
  %1968 = load i64, i64* %PC
  %1969 = add i64 %1968, 7
  store i64 %1969, i64* %PC
  %1970 = inttoptr i64 %1967 to i32*
  store i32 1, i32* %1970
  br label %block_400fb9

block_400cbb:                                     ; preds = %block_400caf
  %1971 = sub i64 %1965, 1563
  %1972 = load i64, i64* %PC
  %1973 = add i64 %1972, 5
  %1974 = load i64, i64* %PC
  %1975 = add i64 %1974, 5
  store i64 %1975, i64* %PC
  %1976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1977 = load i64, i64* %1976, align 8, !tbaa !2428
  %1978 = add i64 %1977, -8
  %1979 = inttoptr i64 %1978 to i64*
  store i64 %1973, i64* %1979
  store i64 %1978, i64* %1976, align 8, !tbaa !2428
  %1980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1971, i64* %1980, align 8, !tbaa !2428
  %1981 = load i64, i64* %PC
  %1982 = call %struct.Memory* @ext_4006a0_lrand48(%struct.State* %0, i64 %1981, %struct.Memory* %MEMORY.5)
  %1983 = load i64, i64* %RBP
  %1984 = sub i64 %1983, 80
  %1985 = load i64, i64* %RAX
  %1986 = load i64, i64* %PC
  %1987 = add i64 %1986, 4
  store i64 %1987, i64* %PC
  %1988 = inttoptr i64 %1984 to i64*
  store i64 %1985, i64* %1988
  %1989 = load i64, i64* %RBP
  %1990 = sub i64 %1989, 72
  %1991 = load i64, i64* %PC
  %1992 = add i64 %1991, 7
  store i64 %1992, i64* %PC
  %1993 = inttoptr i64 %1990 to i32*
  store i32 0, i32* %1993
  br label %block_400ccb

block_400f9f:                                     ; preds = %block_400f8f
  %1994 = sub i64 %2596, 40
  %1995 = load i64, i64* %PC
  %1996 = add i64 %1995, 4
  store i64 %1996, i64* %PC
  %1997 = inttoptr i64 %1994 to i64*
  %1998 = load i64, i64* %1997
  store i64 %1998, i64* %RAX, align 8, !tbaa !2428
  %1999 = load i64, i64* %RAX
  %2000 = load i64, i64* %PC
  %2001 = add i64 %2000, 2
  store i64 %2001, i64* %PC
  %2002 = inttoptr i64 %1999 to i32*
  %2003 = load i32, i32* %2002
  %2004 = zext i32 %2003 to i64
  store i64 %2004, i64* %RCX, align 8, !tbaa !2428
  %2005 = load i64, i64* %RBP
  %2006 = sub i64 %2005, 40
  %2007 = load i64, i64* %PC
  %2008 = add i64 %2007, 4
  store i64 %2008, i64* %PC
  %2009 = inttoptr i64 %2006 to i64*
  %2010 = load i64, i64* %2009
  store i64 %2010, i64* %RAX, align 8, !tbaa !2428
  %2011 = load i32, i32* %ECX
  %2012 = zext i32 %2011 to i64
  %2013 = load i64, i64* %RAX
  %2014 = add i64 %2013, 4
  %2015 = load i64, i64* %PC
  %2016 = add i64 %2015, 3
  store i64 %2016, i64* %PC
  %2017 = inttoptr i64 %2014 to i32*
  %2018 = load i32, i32* %2017
  %2019 = sub i32 %2011, %2018
  %2020 = icmp ult i32 %2011, %2018
  %2021 = zext i1 %2020 to i8
  %2022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2021, i8* %2022, align 1, !tbaa !2432
  %2023 = and i32 %2019, 255
  %2024 = call i32 @llvm.ctpop.i32(i32 %2023) #16
  %2025 = trunc i32 %2024 to i8
  %2026 = and i8 %2025, 1
  %2027 = xor i8 %2026, 1
  %2028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2027, i8* %2028, align 1, !tbaa !2446
  %2029 = xor i32 %2018, %2011
  %2030 = xor i32 %2029, %2019
  %2031 = lshr i32 %2030, 4
  %2032 = trunc i32 %2031 to i8
  %2033 = and i8 %2032, 1
  %2034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2033, i8* %2034, align 1, !tbaa !2447
  %2035 = icmp eq i32 %2019, 0
  %2036 = zext i1 %2035 to i8
  %2037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2036, i8* %2037, align 1, !tbaa !2448
  %2038 = lshr i32 %2019, 31
  %2039 = trunc i32 %2038 to i8
  %2040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2039, i8* %2040, align 1, !tbaa !2449
  %2041 = lshr i32 %2011, 31
  %2042 = lshr i32 %2018, 31
  %2043 = xor i32 %2042, %2041
  %2044 = xor i32 %2038, %2041
  %2045 = add nuw nsw i32 %2044, %2043
  %2046 = icmp eq i32 %2045, 2
  %2047 = zext i1 %2046 to i8
  %2048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2047, i8* %2048, align 1, !tbaa !2450
  %2049 = load i64, i64* %PC
  %2050 = add i64 %2049, 13
  %2051 = load i64, i64* %PC
  %2052 = add i64 %2051, 6
  %2053 = load i64, i64* %PC
  %2054 = add i64 %2053, 6
  store i64 %2054, i64* %PC
  %2055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2056 = load i8, i8* %2055, align 1, !tbaa !2448
  store i8 %2056, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %2057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2058 = icmp ne i8 %2056, 0
  %2059 = select i1 %2058, i64 %2050, i64 %2052
  store i64 %2059, i64* %2057, align 8, !tbaa !2428
  %2060 = load i8, i8* %BRANCH_TAKEN
  %2061 = icmp eq i8 %2060, 1
  br i1 %2061, label %block_400fb9, label %block_400fb2

block_400d6f:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit, %block_400d63
  %MEMORY.6 = phi %struct.Memory* [ %3163, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit ], [ %3163, %block_400d63 ]
  %2062 = load i64, i64* %RBP
  %2063 = sub i64 %2062, 40
  %2064 = load i64, i64* %PC
  %2065 = add i64 %2064, 4
  store i64 %2065, i64* %PC
  %2066 = inttoptr i64 %2063 to i64*
  %2067 = load i64, i64* %2066
  store i64 %2067, i64* %RAX, align 8, !tbaa !2428
  %2068 = load i64, i64* %RAX
  %2069 = add i64 %2068, 8
  %2070 = load i64, i64* %PC
  %2071 = add i64 %2070, 4
  store i64 %2071, i64* %PC
  %2072 = inttoptr i64 %2069 to i64*
  %2073 = load i64, i64* %2072
  store i64 %2073, i64* %RAX, align 8, !tbaa !2428
  %2074 = load i64, i64* %RAX
  %2075 = add i64 %2074, 4
  %2076 = load i64, i64* %PC
  %2077 = add i64 %2076, 4
  store i64 %2077, i64* %PC
  %2078 = inttoptr i64 %2075 to i32*
  %2079 = load i32, i32* %2078
  %2080 = sext i32 %2079 to i64
  store i64 %2080, i64* %RAX, align 8, !tbaa !2428
  %2081 = load i64, i64* %RAX
  %2082 = load i64, i64* %RBP
  %2083 = sub i64 %2082, 80
  %2084 = load i64, i64* %PC
  %2085 = add i64 %2084, 4
  store i64 %2085, i64* %PC
  %2086 = inttoptr i64 %2083 to i64*
  %2087 = load i64, i64* %2086
  %2088 = add i64 %2087, %2081
  store i64 %2088, i64* %RAX, align 8, !tbaa !2428
  %2089 = icmp ult i64 %2088, %2081
  %2090 = icmp ult i64 %2088, %2087
  %2091 = or i1 %2089, %2090
  %2092 = zext i1 %2091 to i8
  %2093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2092, i8* %2093, align 1, !tbaa !2432
  %2094 = trunc i64 %2088 to i32
  %2095 = and i32 %2094, 255
  %2096 = call i32 @llvm.ctpop.i32(i32 %2095) #16
  %2097 = trunc i32 %2096 to i8
  %2098 = and i8 %2097, 1
  %2099 = xor i8 %2098, 1
  %2100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2099, i8* %2100, align 1, !tbaa !2446
  %2101 = xor i64 %2087, %2081
  %2102 = xor i64 %2101, %2088
  %2103 = lshr i64 %2102, 4
  %2104 = trunc i64 %2103 to i8
  %2105 = and i8 %2104, 1
  %2106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2105, i8* %2106, align 1, !tbaa !2447
  %2107 = icmp eq i64 %2088, 0
  %2108 = zext i1 %2107 to i8
  %2109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2108, i8* %2109, align 1, !tbaa !2448
  %2110 = lshr i64 %2088, 63
  %2111 = trunc i64 %2110 to i8
  %2112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2111, i8* %2112, align 1, !tbaa !2449
  %2113 = lshr i64 %2081, 63
  %2114 = lshr i64 %2087, 63
  %2115 = xor i64 %2110, %2113
  %2116 = xor i64 %2110, %2114
  %2117 = add nuw nsw i64 %2115, %2116
  %2118 = icmp eq i64 %2117, 2
  %2119 = zext i1 %2118 to i8
  %2120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2119, i8* %2120, align 1, !tbaa !2450
  %2121 = load i64, i64* %RAX
  %2122 = load i64, i64* %PC
  %2123 = add i64 %2122, 4
  store i64 %2123, i64* %PC
  %2124 = and i64 1, %2121
  store i64 %2124, i64* %RAX, align 8, !tbaa !2428
  %2125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2125, align 1, !tbaa !2432
  %2126 = trunc i64 %2124 to i32
  %2127 = and i32 %2126, 255
  %2128 = call i32 @llvm.ctpop.i32(i32 %2127) #16
  %2129 = trunc i32 %2128 to i8
  %2130 = and i8 %2129, 1
  %2131 = xor i8 %2130, 1
  %2132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2131, i8* %2132, align 1, !tbaa !2446
  %2133 = icmp eq i64 %2124, 0
  %2134 = zext i1 %2133 to i8
  %2135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2134, i8* %2135, align 1, !tbaa !2448
  %2136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2136, align 1, !tbaa !2449
  %2137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2137, align 1, !tbaa !2450
  %2138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2138, align 1, !tbaa !2447
  %2139 = load i32, i32* %EAX
  %2140 = zext i32 %2139 to i64
  %2141 = load i64, i64* %PC
  %2142 = add i64 %2141, 2
  store i64 %2142, i64* %PC
  %2143 = and i64 %2140, 4294967295
  store i64 %2143, i64* %RCX, align 8, !tbaa !2428
  %2144 = load i64, i64* %RBP
  %2145 = sub i64 %2144, 40
  %2146 = load i64, i64* %PC
  %2147 = add i64 %2146, 4
  store i64 %2147, i64* %PC
  %2148 = inttoptr i64 %2145 to i64*
  %2149 = load i64, i64* %2148
  store i64 %2149, i64* %RAX, align 8, !tbaa !2428
  %2150 = load i64, i64* %RAX
  %2151 = add i64 %2150, 4
  %2152 = load i32, i32* %ECX
  %2153 = zext i32 %2152 to i64
  %2154 = load i64, i64* %PC
  %2155 = add i64 %2154, 3
  store i64 %2155, i64* %PC
  %2156 = inttoptr i64 %2151 to i32*
  store i32 %2152, i32* %2156
  %2157 = load i64, i64* %RBP
  %2158 = sub i64 %2157, 40
  %2159 = load i64, i64* %PC
  %2160 = add i64 %2159, 4
  store i64 %2160, i64* %PC
  %2161 = inttoptr i64 %2158 to i64*
  %2162 = load i64, i64* %2161
  store i64 %2162, i64* %RAX, align 8, !tbaa !2428
  %2163 = load i64, i64* %RAX
  %2164 = add i64 %2163, 8
  %2165 = load i64, i64* %PC
  %2166 = add i64 %2165, 4
  store i64 %2166, i64* %PC
  %2167 = inttoptr i64 %2164 to i64*
  %2168 = load i64, i64* %2167
  store i64 %2168, i64* %RAX, align 8, !tbaa !2428
  %2169 = load i64, i64* %RBP
  %2170 = sub i64 %2169, 40
  %2171 = load i64, i64* %RAX
  %2172 = load i64, i64* %PC
  %2173 = add i64 %2172, 4
  store i64 %2173, i64* %PC
  %2174 = inttoptr i64 %2170 to i64*
  store i64 %2171, i64* %2174
  %2175 = load i64, i64* %RBP
  %2176 = sub i64 %2175, 80
  %2177 = load i64, i64* %PC
  %2178 = add i64 %2177, 4
  store i64 %2178, i64* %PC
  %2179 = inttoptr i64 %2176 to i64*
  %2180 = load i64, i64* %2179
  store i64 %2180, i64* %RAX, align 8, !tbaa !2428
  %2181 = load i64, i64* %RAX
  %2182 = load i64, i64* %PC
  %2183 = add i64 %2182, 4
  store i64 %2183, i64* %PC
  %2184 = trunc i64 %2181 to i8
  %2185 = and i8 %2184, 1
  %2186 = ashr i64 %2181, 1
  store i64 %2186, i64* %RAX, align 8, !tbaa !2428
  %2187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2185, i8* %2187, align 1, !tbaa !2452
  %2188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2189 = trunc i64 %2186 to i32
  %2190 = and i32 %2189, 255
  %2191 = call i32 @llvm.ctpop.i32(i32 %2190) #16
  %2192 = trunc i32 %2191 to i8
  %2193 = and i8 %2192, 1
  %2194 = xor i8 %2193, 1
  store i8 %2194, i8* %2188, align 1, !tbaa !2452
  %2195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2195, align 1, !tbaa !2452
  %2196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2197 = icmp eq i64 %2186, 0
  %2198 = zext i1 %2197 to i8
  store i8 %2198, i8* %2196, align 1, !tbaa !2452
  %2199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2200 = lshr i64 %2186, 63
  %2201 = trunc i64 %2200 to i8
  store i8 %2201, i8* %2199, align 1, !tbaa !2452
  %2202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2202, align 1, !tbaa !2452
  %2203 = load i64, i64* %RBP
  %2204 = sub i64 %2203, 80
  %2205 = load i64, i64* %RAX
  %2206 = load i64, i64* %PC
  %2207 = add i64 %2206, 4
  store i64 %2207, i64* %PC
  %2208 = inttoptr i64 %2204 to i64*
  store i64 %2205, i64* %2208
  %2209 = load i64, i64* %RBP
  %2210 = sub i64 %2209, 72
  %2211 = load i64, i64* %PC
  %2212 = add i64 %2211, 3
  store i64 %2212, i64* %PC
  %2213 = inttoptr i64 %2210 to i32*
  %2214 = load i32, i32* %2213
  %2215 = zext i32 %2214 to i64
  store i64 %2215, i64* %RAX, align 8, !tbaa !2428
  %2216 = load i64, i64* %RAX
  %2217 = load i64, i64* %PC
  %2218 = add i64 %2217, 3
  store i64 %2218, i64* %PC
  %2219 = trunc i64 %2216 to i32
  %2220 = add i32 1, %2219
  %2221 = zext i32 %2220 to i64
  store i64 %2221, i64* %RAX, align 8, !tbaa !2428
  %2222 = icmp ult i32 %2220, %2219
  %2223 = icmp ult i32 %2220, 1
  %2224 = or i1 %2222, %2223
  %2225 = zext i1 %2224 to i8
  %2226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2225, i8* %2226, align 1, !tbaa !2432
  %2227 = and i32 %2220, 255
  %2228 = call i32 @llvm.ctpop.i32(i32 %2227) #16
  %2229 = trunc i32 %2228 to i8
  %2230 = and i8 %2229, 1
  %2231 = xor i8 %2230, 1
  %2232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2231, i8* %2232, align 1, !tbaa !2446
  %2233 = xor i64 1, %2216
  %2234 = trunc i64 %2233 to i32
  %2235 = xor i32 %2234, %2220
  %2236 = lshr i32 %2235, 4
  %2237 = trunc i32 %2236 to i8
  %2238 = and i8 %2237, 1
  %2239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2238, i8* %2239, align 1, !tbaa !2447
  %2240 = icmp eq i32 %2220, 0
  %2241 = zext i1 %2240 to i8
  %2242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2241, i8* %2242, align 1, !tbaa !2448
  %2243 = lshr i32 %2220, 31
  %2244 = trunc i32 %2243 to i8
  %2245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2244, i8* %2245, align 1, !tbaa !2449
  %2246 = lshr i32 %2219, 31
  %2247 = xor i32 %2243, %2246
  %2248 = add nuw nsw i32 %2247, %2243
  %2249 = icmp eq i32 %2248, 2
  %2250 = zext i1 %2249 to i8
  %2251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2250, i8* %2251, align 1, !tbaa !2450
  %2252 = load i64, i64* %RBP
  %2253 = sub i64 %2252, 72
  %2254 = load i32, i32* %EAX
  %2255 = zext i32 %2254 to i64
  %2256 = load i64, i64* %PC
  %2257 = add i64 %2256, 3
  store i64 %2257, i64* %PC
  %2258 = inttoptr i64 %2253 to i32*
  store i32 %2254, i32* %2258
  %2259 = load i64, i64* %PC
  %2260 = sub i64 %2259, 226
  %2261 = load i64, i64* %PC
  %2262 = add i64 %2261, 5
  store i64 %2262, i64* %PC
  %2263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2260, i64* %2263, align 8, !tbaa !2428
  br label %block_400ccb

block_400e15:                                     ; preds = %block_400dfc, %block_400de1
  %MEMORY.7 = phi %struct.Memory* [ %MEMORY.0, %block_400de1 ], [ %MEMORY.0, %block_400dfc ]
  %2264 = load i64, i64* %RBP
  %2265 = sub i64 %2264, 40
  %2266 = load i64, i64* %PC
  %2267 = add i64 %2266, 4
  store i64 %2267, i64* %PC
  %2268 = inttoptr i64 %2265 to i64*
  %2269 = load i64, i64* %2268
  store i64 %2269, i64* %RAX, align 8, !tbaa !2428
  %2270 = load i64, i64* %RAX
  %2271 = add i64 %2270, 8
  %2272 = load i64, i64* %PC
  %2273 = add i64 %2272, 4
  store i64 %2273, i64* %PC
  %2274 = inttoptr i64 %2271 to i64*
  %2275 = load i64, i64* %2274
  store i64 %2275, i64* %RAX, align 8, !tbaa !2428
  %2276 = load i64, i64* %RAX
  %2277 = load i64, i64* %PC
  %2278 = add i64 %2277, 3
  store i64 %2278, i64* %PC
  %2279 = inttoptr i64 %2276 to i32*
  %2280 = load i32, i32* %2279
  %2281 = sext i32 %2280 to i64
  store i64 %2281, i64* %RAX, align 8, !tbaa !2428
  %2282 = load i64, i64* %RAX
  %2283 = load i64, i64* %RBP
  %2284 = sub i64 %2283, 80
  %2285 = load i64, i64* %PC
  %2286 = add i64 %2285, 4
  store i64 %2286, i64* %PC
  %2287 = inttoptr i64 %2284 to i64*
  %2288 = load i64, i64* %2287
  %2289 = add i64 %2288, %2282
  store i64 %2289, i64* %RAX, align 8, !tbaa !2428
  %2290 = icmp ult i64 %2289, %2282
  %2291 = icmp ult i64 %2289, %2288
  %2292 = or i1 %2290, %2291
  %2293 = zext i1 %2292 to i8
  %2294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2293, i8* %2294, align 1, !tbaa !2432
  %2295 = trunc i64 %2289 to i32
  %2296 = and i32 %2295, 255
  %2297 = call i32 @llvm.ctpop.i32(i32 %2296) #16
  %2298 = trunc i32 %2297 to i8
  %2299 = and i8 %2298, 1
  %2300 = xor i8 %2299, 1
  %2301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2300, i8* %2301, align 1, !tbaa !2446
  %2302 = xor i64 %2288, %2282
  %2303 = xor i64 %2302, %2289
  %2304 = lshr i64 %2303, 4
  %2305 = trunc i64 %2304 to i8
  %2306 = and i8 %2305, 1
  %2307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2306, i8* %2307, align 1, !tbaa !2447
  %2308 = icmp eq i64 %2289, 0
  %2309 = zext i1 %2308 to i8
  %2310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2309, i8* %2310, align 1, !tbaa !2448
  %2311 = lshr i64 %2289, 63
  %2312 = trunc i64 %2311 to i8
  %2313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2312, i8* %2313, align 1, !tbaa !2449
  %2314 = lshr i64 %2282, 63
  %2315 = lshr i64 %2288, 63
  %2316 = xor i64 %2311, %2314
  %2317 = xor i64 %2311, %2315
  %2318 = add nuw nsw i64 %2316, %2317
  %2319 = icmp eq i64 %2318, 2
  %2320 = zext i1 %2319 to i8
  %2321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2320, i8* %2321, align 1, !tbaa !2450
  %2322 = load i64, i64* %RAX
  %2323 = load i64, i64* %PC
  %2324 = add i64 %2323, 4
  store i64 %2324, i64* %PC
  %2325 = and i64 1, %2322
  store i64 %2325, i64* %RAX, align 8, !tbaa !2428
  %2326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2326, align 1, !tbaa !2432
  %2327 = trunc i64 %2325 to i32
  %2328 = and i32 %2327, 255
  %2329 = call i32 @llvm.ctpop.i32(i32 %2328) #16
  %2330 = trunc i32 %2329 to i8
  %2331 = and i8 %2330, 1
  %2332 = xor i8 %2331, 1
  %2333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2332, i8* %2333, align 1, !tbaa !2446
  %2334 = icmp eq i64 %2325, 0
  %2335 = zext i1 %2334 to i8
  %2336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2335, i8* %2336, align 1, !tbaa !2448
  %2337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2337, align 1, !tbaa !2449
  %2338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2338, align 1, !tbaa !2450
  %2339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2339, align 1, !tbaa !2447
  %2340 = load i32, i32* %EAX
  %2341 = zext i32 %2340 to i64
  %2342 = load i64, i64* %PC
  %2343 = add i64 %2342, 2
  store i64 %2343, i64* %PC
  %2344 = and i64 %2341, 4294967295
  store i64 %2344, i64* %RCX, align 8, !tbaa !2428
  %2345 = load i64, i64* %RBP
  %2346 = sub i64 %2345, 40
  %2347 = load i64, i64* %PC
  %2348 = add i64 %2347, 4
  store i64 %2348, i64* %PC
  %2349 = inttoptr i64 %2346 to i64*
  %2350 = load i64, i64* %2349
  store i64 %2350, i64* %RAX, align 8, !tbaa !2428
  %2351 = load i64, i64* %RAX
  %2352 = load i32, i32* %ECX
  %2353 = zext i32 %2352 to i64
  %2354 = load i64, i64* %PC
  %2355 = add i64 %2354, 2
  store i64 %2355, i64* %PC
  %2356 = inttoptr i64 %2351 to i32*
  store i32 %2352, i32* %2356
  %2357 = load i64, i64* %PC
  %2358 = sub i64 %2357, 1936
  %2359 = load i64, i64* %PC
  %2360 = add i64 %2359, 5
  %2361 = load i64, i64* %PC
  %2362 = add i64 %2361, 5
  store i64 %2362, i64* %PC
  %2363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2364 = load i64, i64* %2363, align 8, !tbaa !2428
  %2365 = add i64 %2364, -8
  %2366 = inttoptr i64 %2365 to i64*
  store i64 %2360, i64* %2366
  store i64 %2365, i64* %2363, align 8, !tbaa !2428
  %2367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2358, i64* %2367, align 8, !tbaa !2428
  %2368 = load i64, i64* %PC
  %2369 = call %struct.Memory* @ext_4006a0_lrand48(%struct.State* %0, i64 %2368, %struct.Memory* %MEMORY.7)
  %2370 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2371 = load i64, i64* %PC
  %2372 = add i64 %2371, 8
  store i64 %2372, i64* %PC
  %2373 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4010b0__rodata_type* @seg_4010b0__rodata to i64), i64 32) to double*)
  %2374 = bitcast i8* %2370 to double*
  store double %2373, double* %2374, align 1, !tbaa !2453
  %2375 = getelementptr inbounds i8, i8* %2370, i64 8
  %2376 = bitcast i8* %2375 to double*
  store double 0.000000e+00, double* %2376, align 1, !tbaa !2453
  %2377 = load i64, i64* %PC
  %2378 = add i64 %2377, 5
  store i64 %2378, i64* %PC
  store i64 1000, i64* %RCX, align 8, !tbaa !2428
  %2379 = load i32, i32* %ECX
  %2380 = zext i32 %2379 to i64
  %2381 = load i64, i64* %PC
  %2382 = add i64 %2381, 2
  store i64 %2382, i64* %PC
  %2383 = and i64 %2380, 4294967295
  store i64 %2383, i64* %RDX, align 8, !tbaa !2428
  %2384 = load i64, i64* %RBP
  %2385 = sub i64 %2384, 112
  %2386 = load i64, i64* %RDX
  %2387 = load i64, i64* %PC
  %2388 = add i64 %2387, 4
  store i64 %2388, i64* %PC
  %2389 = inttoptr i64 %2385 to i64*
  store i64 %2386, i64* %2389
  %2390 = load i64, i64* %PC
  %2391 = add i64 %2390, 2
  store i64 %2391, i64* %PC
  %2392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %2394 = load i64, i64* %2393, align 8, !tbaa !2428
  %2395 = ashr i64 %2394, 63
  store i64 %2395, i64* %2392, align 8, !tbaa !2428
  %2396 = load i64, i64* %RBP
  %2397 = sub i64 %2396, 112
  %2398 = load i64, i64* %PC
  %2399 = add i64 %2398, 4
  store i64 %2399, i64* %PC
  %2400 = inttoptr i64 %2397 to i64*
  %2401 = load i64, i64* %2400
  store i64 %2401, i64* %RSI, align 8, !tbaa !2428
  %2402 = load i64, i64* %RSI
  %2403 = load i64, i64* %PC
  %2404 = add i64 %2403, 3
  store i64 %2404, i64* %PC
  %2405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %2406 = load i64, i64* %2405, align 8, !tbaa !2428
  %2407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2408 = load i64, i64* %2407, align 8, !tbaa !2428
  %2409 = sext i64 %2402 to i128
  %2410 = and i128 %2409, -18446744073709551616
  %2411 = zext i64 %2408 to i128
  %2412 = shl nuw i128 %2411, 64
  %2413 = zext i64 %2406 to i128
  %2414 = or i128 %2412, %2413
  %2415 = zext i64 %2402 to i128
  %2416 = or i128 %2410, %2415
  %2417 = sdiv i128 %2414, %2416
  %2418 = trunc i128 %2417 to i64
  %2419 = and i128 %2417, 18446744073709551615
  %2420 = sext i64 %2418 to i128
  %2421 = and i128 %2420, -18446744073709551616
  %2422 = or i128 %2421, %2419
  %2423 = icmp eq i128 %2417, %2422
  br i1 %2423, label %2428, label %2424

; <label>:2424:                                   ; preds = %block_400e15
  %2425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2426 = load i64, i64* %2425, align 8, !tbaa !2428
  %2427 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2426, %struct.Memory* %2369) #17
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit2

; <label>:2428:                                   ; preds = %block_400e15
  %2429 = srem i128 %2414, %2416
  %2430 = trunc i128 %2429 to i64
  store i64 %2418, i64* %2405, align 8, !tbaa !2428
  store i64 %2430, i64* %2407, align 8, !tbaa !2428
  %2431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2431, align 1, !tbaa !2432
  %2432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %2432, align 1, !tbaa !2446
  %2433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2433, align 1, !tbaa !2447
  %2434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2434, align 1, !tbaa !2448
  %2435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2435, align 1, !tbaa !2449
  %2436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2436, align 1, !tbaa !2450
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit2

_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit2: ; preds = %2424, %2428
  %2437 = phi %struct.Memory* [ %2427, %2424 ], [ %2369, %2428 ]
  %2438 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %2439 = load i64, i64* %RDX
  %2440 = load i64, i64* %PC
  %2441 = add i64 %2440, 5
  store i64 %2441, i64* %PC
  %2442 = sitofp i64 %2439 to double
  %2443 = bitcast i8* %2438 to double*
  store double %2442, double* %2443, align 1, !tbaa !2453
  %2444 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %2445 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %2446 = bitcast %union.vec128_t* %XMM0 to i8*
  %2447 = load i64, i64* %PC
  %2448 = add i64 %2447, 4
  store i64 %2448, i64* %PC
  %2449 = bitcast i8* %2445 to double*
  %2450 = load double, double* %2449, align 1
  %2451 = getelementptr inbounds i8, i8* %2445, i64 8
  %2452 = bitcast i8* %2451 to i64*
  %2453 = load i64, i64* %2452, align 1
  %2454 = bitcast i8* %2446 to double*
  %2455 = load double, double* %2454, align 1
  %2456 = fdiv double %2450, %2455
  %2457 = bitcast i8* %2444 to double*
  store double %2456, double* %2457, align 1, !tbaa !2453
  %2458 = getelementptr inbounds i8, i8* %2444, i64 8
  %2459 = bitcast i8* %2458 to i64*
  store i64 %2453, i64* %2459, align 1, !tbaa !2453
  %2460 = load i64, i64* %RBP
  %2461 = sub i64 %2460, 88
  %2462 = bitcast %union.vec128_t* %XMM1 to i8*
  %2463 = load i64, i64* %PC
  %2464 = add i64 %2463, 5
  store i64 %2464, i64* %PC
  %2465 = bitcast i8* %2462 to double*
  %2466 = load double, double* %2465, align 1
  %2467 = inttoptr i64 %2461 to double*
  store double %2466, double* %2467
  %2468 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2469 = load i64, i64* %RBP
  %2470 = sub i64 %2469, 24
  %2471 = load i64, i64* %PC
  %2472 = add i64 %2471, 5
  store i64 %2472, i64* %PC
  %2473 = inttoptr i64 %2470 to double*
  %2474 = load double, double* %2473
  %2475 = bitcast i8* %2468 to double*
  store double %2474, double* %2475, align 1, !tbaa !2453
  %2476 = getelementptr inbounds i8, i8* %2468, i64 8
  %2477 = bitcast i8* %2476 to double*
  store double 0.000000e+00, double* %2477, align 1, !tbaa !2453
  %2478 = bitcast %union.vec128_t* %XMM0 to i8*
  %2479 = load i64, i64* %RBP
  %2480 = sub i64 %2479, 88
  %2481 = load i64, i64* %PC
  %2482 = add i64 %2481, 5
  store i64 %2482, i64* %PC
  %2483 = bitcast i8* %2478 to double*
  %2484 = load double, double* %2483, align 1
  %2485 = inttoptr i64 %2480 to double*
  %2486 = load double, double* %2485
  %2487 = fcmp uno double %2484, %2486
  br i1 %2487, label %2488, label %2500

; <label>:2488:                                   ; preds = %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit2
  %2489 = fadd double %2484, %2486
  %2490 = bitcast double %2489 to i64
  %2491 = and i64 %2490, 9221120237041090560
  %2492 = icmp eq i64 %2491, 9218868437227405312
  %2493 = and i64 %2490, 2251799813685247
  %2494 = icmp ne i64 %2493, 0
  %2495 = and i1 %2492, %2494
  br i1 %2495, label %2496, label %2506

; <label>:2496:                                   ; preds = %2488
  %2497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2498 = load i64, i64* %2497, align 8, !tbaa !2428
  %2499 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2498, %struct.Memory* %2437) #17
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1

; <label>:2500:                                   ; preds = %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit2
  %2501 = fcmp ogt double %2484, %2486
  br i1 %2501, label %2506, label %2502

; <label>:2502:                                   ; preds = %2500
  %2503 = fcmp olt double %2484, %2486
  br i1 %2503, label %2506, label %2504

; <label>:2504:                                   ; preds = %2502
  %2505 = fcmp oeq double %2484, %2486
  br i1 %2505, label %2506, label %2513

; <label>:2506:                                   ; preds = %2504, %2502, %2500, %2488
  %2507 = phi i8 [ 0, %2500 ], [ 0, %2502 ], [ 1, %2504 ], [ 1, %2488 ]
  %2508 = phi i8 [ 0, %2500 ], [ 0, %2502 ], [ 0, %2504 ], [ 1, %2488 ]
  %2509 = phi i8 [ 0, %2500 ], [ 1, %2502 ], [ 0, %2504 ], [ 1, %2488 ]
  %2510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2507, i8* %2510, align 1, !tbaa !2452
  %2511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2508, i8* %2511, align 1, !tbaa !2452
  %2512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2509, i8* %2512, align 1, !tbaa !2452
  br label %2513

; <label>:2513:                                   ; preds = %2506, %2504
  %2514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2514, align 1, !tbaa !2452
  %2515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2515, align 1, !tbaa !2452
  %2516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2516, align 1, !tbaa !2452
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1: ; preds = %2496, %2513
  %2517 = phi %struct.Memory* [ %2499, %2496 ], [ %2437, %2513 ]
  %2518 = load i64, i64* %PC
  %2519 = add i64 %2518, 18
  %2520 = load i64, i64* %PC
  %2521 = add i64 %2520, 6
  %2522 = load i64, i64* %PC
  %2523 = add i64 %2522, 6
  store i64 %2523, i64* %PC
  %2524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2525 = load i8, i8* %2524, align 1, !tbaa !2432
  %2526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2527 = load i8, i8* %2526, align 1, !tbaa !2448
  %2528 = or i8 %2527, %2525
  %2529 = icmp ne i8 %2528, 0
  %2530 = zext i1 %2529 to i8
  store i8 %2530, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %2531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2532 = select i1 %2529, i64 %2519, i64 %2521
  store i64 %2532, i64* %2531, align 8, !tbaa !2428
  %2533 = load i8, i8* %BRANCH_TAKEN
  %2534 = icmp eq i8 %2533, 1
  br i1 %2534, label %block_400e7b, label %block_400e6f

block_400f8f:                                     ; preds = %block_400f88, %block_400fb9
  %MEMORY.8 = phi %struct.Memory* [ %MEMORY.9, %block_400f88 ], [ %MEMORY.4, %block_400fb9 ]
  %2535 = load i64, i64* %RBP
  %2536 = sub i64 %2535, 68
  %2537 = load i64, i64* %PC
  %2538 = add i64 %2537, 3
  store i64 %2538, i64* %PC
  %2539 = inttoptr i64 %2536 to i32*
  %2540 = load i32, i32* %2539
  %2541 = zext i32 %2540 to i64
  store i64 %2541, i64* %RAX, align 8, !tbaa !2428
  %2542 = load i32, i32* %EAX
  %2543 = zext i32 %2542 to i64
  %2544 = load i64, i64* %PC
  %2545 = add i64 %2544, 7
  store i64 %2545, i64* %PC
  %2546 = load i32, i32* bitcast (%reg_len_type* @reg_len to i32*)
  %2547 = sub i32 %2542, %2546
  %2548 = icmp ult i32 %2542, %2546
  %2549 = zext i1 %2548 to i8
  %2550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2549, i8* %2550, align 1, !tbaa !2432
  %2551 = and i32 %2547, 255
  %2552 = call i32 @llvm.ctpop.i32(i32 %2551) #16
  %2553 = trunc i32 %2552 to i8
  %2554 = and i8 %2553, 1
  %2555 = xor i8 %2554, 1
  %2556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2555, i8* %2556, align 1, !tbaa !2446
  %2557 = xor i32 %2546, %2542
  %2558 = xor i32 %2557, %2547
  %2559 = lshr i32 %2558, 4
  %2560 = trunc i32 %2559 to i8
  %2561 = and i8 %2560, 1
  %2562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2561, i8* %2562, align 1, !tbaa !2447
  %2563 = icmp eq i32 %2547, 0
  %2564 = zext i1 %2563 to i8
  %2565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2564, i8* %2565, align 1, !tbaa !2448
  %2566 = lshr i32 %2547, 31
  %2567 = trunc i32 %2566 to i8
  %2568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2567, i8* %2568, align 1, !tbaa !2449
  %2569 = lshr i32 %2542, 31
  %2570 = lshr i32 %2546, 31
  %2571 = xor i32 %2570, %2569
  %2572 = xor i32 %2566, %2569
  %2573 = add nuw nsw i32 %2572, %2571
  %2574 = icmp eq i32 %2573, 2
  %2575 = zext i1 %2574 to i8
  %2576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2575, i8* %2576, align 1, !tbaa !2450
  %2577 = load i64, i64* %PC
  %2578 = add i64 %2577, 58
  %2579 = load i64, i64* %PC
  %2580 = add i64 %2579, 6
  %2581 = load i64, i64* %PC
  %2582 = add i64 %2581, 6
  store i64 %2582, i64* %PC
  %2583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2584 = load i8, i8* %2583, align 1, !tbaa !2449
  %2585 = icmp ne i8 %2584, 0
  %2586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2587 = load i8, i8* %2586, align 1, !tbaa !2450
  %2588 = icmp ne i8 %2587, 0
  %2589 = xor i1 %2585, %2588
  %2590 = xor i1 %2589, true
  %2591 = zext i1 %2590 to i8
  store i8 %2591, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %2592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2593 = select i1 %2589, i64 %2580, i64 %2578
  store i64 %2593, i64* %2592, align 8, !tbaa !2428
  %2594 = load i8, i8* %BRANCH_TAKEN
  %2595 = icmp eq i8 %2594, 1
  %2596 = load i64, i64* %RBP
  br i1 %2595, label %block_400fd3, label %block_400f9f

block_400e6f:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1
  %2597 = load i64, i64* %RBP
  %2598 = sub i64 %2597, 80
  %2599 = load i64, i64* %PC
  %2600 = add i64 %2599, 4
  store i64 %2600, i64* %PC
  %2601 = inttoptr i64 %2598 to i64*
  %2602 = load i64, i64* %2601
  store i64 %2602, i64* %RAX, align 8, !tbaa !2428
  %2603 = load i64, i64* %RAX
  %2604 = load i64, i64* %PC
  %2605 = add i64 %2604, 4
  store i64 %2605, i64* %PC
  %2606 = xor i64 1, %2603
  store i64 %2606, i64* %RAX, align 8, !tbaa !2428
  %2607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2607, align 1, !tbaa !2432
  %2608 = trunc i64 %2606 to i32
  %2609 = and i32 %2608, 255
  %2610 = call i32 @llvm.ctpop.i32(i32 %2609) #16
  %2611 = trunc i32 %2610 to i8
  %2612 = and i8 %2611, 1
  %2613 = xor i8 %2612, 1
  %2614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2613, i8* %2614, align 1, !tbaa !2446
  %2615 = icmp eq i64 %2606, 0
  %2616 = zext i1 %2615 to i8
  %2617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2616, i8* %2617, align 1, !tbaa !2448
  %2618 = lshr i64 %2606, 63
  %2619 = trunc i64 %2618 to i8
  %2620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2619, i8* %2620, align 1, !tbaa !2449
  %2621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2621, align 1, !tbaa !2450
  %2622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2622, align 1, !tbaa !2447
  %2623 = load i64, i64* %RBP
  %2624 = sub i64 %2623, 80
  %2625 = load i64, i64* %RAX
  %2626 = load i64, i64* %PC
  %2627 = add i64 %2626, 4
  store i64 %2627, i64* %PC
  %2628 = inttoptr i64 %2624 to i64*
  store i64 %2625, i64* %2628
  br label %block_400e7b

block_400c8e:                                     ; preds = %block_400f5d, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit
  %MEMORY.9 = phi %struct.Memory* [ %314, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ], [ %MEMORY.2, %block_400f5d ]
  %2629 = load i64, i64* %RBP
  %2630 = sub i64 %2629, 64
  %2631 = load i64, i64* %PC
  %2632 = add i64 %2631, 3
  store i64 %2632, i64* %PC
  %2633 = inttoptr i64 %2630 to i32*
  %2634 = load i32, i32* %2633
  %2635 = zext i32 %2634 to i64
  store i64 %2635, i64* %RAX, align 8, !tbaa !2428
  %2636 = load i32, i32* %EAX
  %2637 = zext i32 %2636 to i64
  %2638 = load i64, i64* %RBP
  %2639 = sub i64 %2638, 4
  %2640 = load i64, i64* %PC
  %2641 = add i64 %2640, 3
  store i64 %2641, i64* %PC
  %2642 = inttoptr i64 %2639 to i32*
  %2643 = load i32, i32* %2642
  %2644 = sub i32 %2636, %2643
  %2645 = icmp ult i32 %2636, %2643
  %2646 = zext i1 %2645 to i8
  %2647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2646, i8* %2647, align 1, !tbaa !2432
  %2648 = and i32 %2644, 255
  %2649 = call i32 @llvm.ctpop.i32(i32 %2648) #16
  %2650 = trunc i32 %2649 to i8
  %2651 = and i8 %2650, 1
  %2652 = xor i8 %2651, 1
  %2653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2652, i8* %2653, align 1, !tbaa !2446
  %2654 = xor i32 %2643, %2636
  %2655 = xor i32 %2654, %2644
  %2656 = lshr i32 %2655, 4
  %2657 = trunc i32 %2656 to i8
  %2658 = and i8 %2657, 1
  %2659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2658, i8* %2659, align 1, !tbaa !2447
  %2660 = icmp eq i32 %2644, 0
  %2661 = zext i1 %2660 to i8
  %2662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2661, i8* %2662, align 1, !tbaa !2448
  %2663 = lshr i32 %2644, 31
  %2664 = trunc i32 %2663 to i8
  %2665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2664, i8* %2665, align 1, !tbaa !2449
  %2666 = lshr i32 %2636, 31
  %2667 = lshr i32 %2643, 31
  %2668 = xor i32 %2667, %2666
  %2669 = xor i32 %2663, %2666
  %2670 = add nuw nsw i32 %2669, %2668
  %2671 = icmp eq i32 %2670, 2
  %2672 = zext i1 %2671 to i8
  %2673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2672, i8* %2673, align 1, !tbaa !2450
  %2674 = load i64, i64* %PC
  %2675 = add i64 %2674, 756
  %2676 = load i64, i64* %PC
  %2677 = add i64 %2676, 6
  %2678 = load i64, i64* %PC
  %2679 = add i64 %2678, 6
  store i64 %2679, i64* %PC
  %2680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2681 = load i8, i8* %2680, align 1, !tbaa !2449
  %2682 = icmp ne i8 %2681, 0
  %2683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2684 = load i8, i8* %2683, align 1, !tbaa !2450
  %2685 = icmp ne i8 %2684, 0
  %2686 = xor i1 %2682, %2685
  %2687 = xor i1 %2686, true
  %2688 = zext i1 %2687 to i8
  store i8 %2688, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %2689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2690 = select i1 %2686, i64 %2677, i64 %2675
  store i64 %2690, i64* %2689, align 8, !tbaa !2428
  %2691 = load i8, i8* %BRANCH_TAKEN
  %2692 = icmp eq i8 %2691, 1
  %2693 = load i64, i64* %RBP
  br i1 %2692, label %block_400f88, label %block_400c9a

block_400e7b:                                     ; preds = %block_400e6f, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1
  %MEMORY.10 = phi %struct.Memory* [ %2517, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1 ], [ %2517, %block_400e6f ]
  %2694 = load i64, i64* %RBP
  %2695 = sub i64 %2694, 40
  %2696 = load i64, i64* %PC
  %2697 = add i64 %2696, 4
  store i64 %2697, i64* %PC
  %2698 = inttoptr i64 %2695 to i64*
  %2699 = load i64, i64* %2698
  store i64 %2699, i64* %RAX, align 8, !tbaa !2428
  %2700 = load i64, i64* %RAX
  %2701 = add i64 %2700, 8
  %2702 = load i64, i64* %PC
  %2703 = add i64 %2702, 4
  store i64 %2703, i64* %PC
  %2704 = inttoptr i64 %2701 to i64*
  %2705 = load i64, i64* %2704
  store i64 %2705, i64* %RAX, align 8, !tbaa !2428
  %2706 = load i64, i64* %RAX
  %2707 = add i64 %2706, 4
  %2708 = load i64, i64* %PC
  %2709 = add i64 %2708, 4
  store i64 %2709, i64* %PC
  %2710 = inttoptr i64 %2707 to i32*
  %2711 = load i32, i32* %2710
  %2712 = sext i32 %2711 to i64
  store i64 %2712, i64* %RAX, align 8, !tbaa !2428
  %2713 = load i64, i64* %RAX
  %2714 = load i64, i64* %RBP
  %2715 = sub i64 %2714, 80
  %2716 = load i64, i64* %PC
  %2717 = add i64 %2716, 4
  store i64 %2717, i64* %PC
  %2718 = inttoptr i64 %2715 to i64*
  %2719 = load i64, i64* %2718
  %2720 = add i64 %2719, %2713
  store i64 %2720, i64* %RAX, align 8, !tbaa !2428
  %2721 = icmp ult i64 %2720, %2713
  %2722 = icmp ult i64 %2720, %2719
  %2723 = or i1 %2721, %2722
  %2724 = zext i1 %2723 to i8
  %2725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2724, i8* %2725, align 1, !tbaa !2432
  %2726 = trunc i64 %2720 to i32
  %2727 = and i32 %2726, 255
  %2728 = call i32 @llvm.ctpop.i32(i32 %2727) #16
  %2729 = trunc i32 %2728 to i8
  %2730 = and i8 %2729, 1
  %2731 = xor i8 %2730, 1
  %2732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2731, i8* %2732, align 1, !tbaa !2446
  %2733 = xor i64 %2719, %2713
  %2734 = xor i64 %2733, %2720
  %2735 = lshr i64 %2734, 4
  %2736 = trunc i64 %2735 to i8
  %2737 = and i8 %2736, 1
  %2738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2737, i8* %2738, align 1, !tbaa !2447
  %2739 = icmp eq i64 %2720, 0
  %2740 = zext i1 %2739 to i8
  %2741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2740, i8* %2741, align 1, !tbaa !2448
  %2742 = lshr i64 %2720, 63
  %2743 = trunc i64 %2742 to i8
  %2744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2743, i8* %2744, align 1, !tbaa !2449
  %2745 = lshr i64 %2713, 63
  %2746 = lshr i64 %2719, 63
  %2747 = xor i64 %2742, %2745
  %2748 = xor i64 %2742, %2746
  %2749 = add nuw nsw i64 %2747, %2748
  %2750 = icmp eq i64 %2749, 2
  %2751 = zext i1 %2750 to i8
  %2752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2751, i8* %2752, align 1, !tbaa !2450
  %2753 = load i64, i64* %RAX
  %2754 = load i64, i64* %PC
  %2755 = add i64 %2754, 4
  store i64 %2755, i64* %PC
  %2756 = and i64 1, %2753
  store i64 %2756, i64* %RAX, align 8, !tbaa !2428
  %2757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2757, align 1, !tbaa !2432
  %2758 = trunc i64 %2756 to i32
  %2759 = and i32 %2758, 255
  %2760 = call i32 @llvm.ctpop.i32(i32 %2759) #16
  %2761 = trunc i32 %2760 to i8
  %2762 = and i8 %2761, 1
  %2763 = xor i8 %2762, 1
  %2764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2763, i8* %2764, align 1, !tbaa !2446
  %2765 = icmp eq i64 %2756, 0
  %2766 = zext i1 %2765 to i8
  %2767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2766, i8* %2767, align 1, !tbaa !2448
  %2768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2768, align 1, !tbaa !2449
  %2769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2769, align 1, !tbaa !2450
  %2770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2770, align 1, !tbaa !2447
  %2771 = load i32, i32* %EAX
  %2772 = zext i32 %2771 to i64
  %2773 = load i64, i64* %PC
  %2774 = add i64 %2773, 2
  store i64 %2774, i64* %PC
  %2775 = and i64 %2772, 4294967295
  store i64 %2775, i64* %RCX, align 8, !tbaa !2428
  %2776 = load i64, i64* %RBP
  %2777 = sub i64 %2776, 40
  %2778 = load i64, i64* %PC
  %2779 = add i64 %2778, 4
  store i64 %2779, i64* %PC
  %2780 = inttoptr i64 %2777 to i64*
  %2781 = load i64, i64* %2780
  store i64 %2781, i64* %RAX, align 8, !tbaa !2428
  %2782 = load i64, i64* %RAX
  %2783 = add i64 %2782, 4
  %2784 = load i32, i32* %ECX
  %2785 = zext i32 %2784 to i64
  %2786 = load i64, i64* %PC
  %2787 = add i64 %2786, 3
  store i64 %2787, i64* %PC
  %2788 = inttoptr i64 %2783 to i32*
  store i32 %2784, i32* %2788
  %2789 = load i64, i64* %RBP
  %2790 = sub i64 %2789, 40
  %2791 = load i64, i64* %PC
  %2792 = add i64 %2791, 4
  store i64 %2792, i64* %PC
  %2793 = inttoptr i64 %2790 to i64*
  %2794 = load i64, i64* %2793
  store i64 %2794, i64* %RAX, align 8, !tbaa !2428
  %2795 = load i64, i64* %RAX
  %2796 = add i64 %2795, 8
  %2797 = load i64, i64* %PC
  %2798 = add i64 %2797, 4
  store i64 %2798, i64* %PC
  %2799 = inttoptr i64 %2796 to i64*
  %2800 = load i64, i64* %2799
  store i64 %2800, i64* %RAX, align 8, !tbaa !2428
  %2801 = load i64, i64* %RBP
  %2802 = sub i64 %2801, 40
  %2803 = load i64, i64* %RAX
  %2804 = load i64, i64* %PC
  %2805 = add i64 %2804, 4
  store i64 %2805, i64* %PC
  %2806 = inttoptr i64 %2802 to i64*
  store i64 %2803, i64* %2806
  %2807 = load i64, i64* %RBP
  %2808 = sub i64 %2807, 80
  %2809 = load i64, i64* %PC
  %2810 = add i64 %2809, 4
  store i64 %2810, i64* %PC
  %2811 = inttoptr i64 %2808 to i64*
  %2812 = load i64, i64* %2811
  store i64 %2812, i64* %RAX, align 8, !tbaa !2428
  %2813 = load i64, i64* %RAX
  %2814 = load i64, i64* %PC
  %2815 = add i64 %2814, 4
  store i64 %2815, i64* %PC
  %2816 = trunc i64 %2813 to i8
  %2817 = and i8 %2816, 1
  %2818 = ashr i64 %2813, 1
  store i64 %2818, i64* %RAX, align 8, !tbaa !2428
  %2819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2817, i8* %2819, align 1, !tbaa !2452
  %2820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2821 = trunc i64 %2818 to i32
  %2822 = and i32 %2821, 255
  %2823 = call i32 @llvm.ctpop.i32(i32 %2822) #16
  %2824 = trunc i32 %2823 to i8
  %2825 = and i8 %2824, 1
  %2826 = xor i8 %2825, 1
  store i8 %2826, i8* %2820, align 1, !tbaa !2452
  %2827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2827, align 1, !tbaa !2452
  %2828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2829 = icmp eq i64 %2818, 0
  %2830 = zext i1 %2829 to i8
  store i8 %2830, i8* %2828, align 1, !tbaa !2452
  %2831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2832 = lshr i64 %2818, 63
  %2833 = trunc i64 %2832 to i8
  store i8 %2833, i8* %2831, align 1, !tbaa !2452
  %2834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2834, align 1, !tbaa !2452
  %2835 = load i64, i64* %RBP
  %2836 = sub i64 %2835, 80
  %2837 = load i64, i64* %RAX
  %2838 = load i64, i64* %PC
  %2839 = add i64 %2838, 4
  store i64 %2839, i64* %PC
  %2840 = inttoptr i64 %2836 to i64*
  store i64 %2837, i64* %2840
  %2841 = load i64, i64* %RBP
  %2842 = sub i64 %2841, 72
  %2843 = load i64, i64* %PC
  %2844 = add i64 %2843, 3
  store i64 %2844, i64* %PC
  %2845 = inttoptr i64 %2842 to i32*
  %2846 = load i32, i32* %2845
  %2847 = zext i32 %2846 to i64
  store i64 %2847, i64* %RAX, align 8, !tbaa !2428
  %2848 = load i64, i64* %RAX
  %2849 = load i64, i64* %PC
  %2850 = add i64 %2849, 3
  store i64 %2850, i64* %PC
  %2851 = trunc i64 %2848 to i32
  %2852 = add i32 1, %2851
  %2853 = zext i32 %2852 to i64
  store i64 %2853, i64* %RAX, align 8, !tbaa !2428
  %2854 = icmp ult i32 %2852, %2851
  %2855 = icmp ult i32 %2852, 1
  %2856 = or i1 %2854, %2855
  %2857 = zext i1 %2856 to i8
  %2858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2857, i8* %2858, align 1, !tbaa !2432
  %2859 = and i32 %2852, 255
  %2860 = call i32 @llvm.ctpop.i32(i32 %2859) #16
  %2861 = trunc i32 %2860 to i8
  %2862 = and i8 %2861, 1
  %2863 = xor i8 %2862, 1
  %2864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2863, i8* %2864, align 1, !tbaa !2446
  %2865 = xor i64 1, %2848
  %2866 = trunc i64 %2865 to i32
  %2867 = xor i32 %2866, %2852
  %2868 = lshr i32 %2867, 4
  %2869 = trunc i32 %2868 to i8
  %2870 = and i8 %2869, 1
  %2871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2870, i8* %2871, align 1, !tbaa !2447
  %2872 = icmp eq i32 %2852, 0
  %2873 = zext i1 %2872 to i8
  %2874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2873, i8* %2874, align 1, !tbaa !2448
  %2875 = lshr i32 %2852, 31
  %2876 = trunc i32 %2875 to i8
  %2877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2876, i8* %2877, align 1, !tbaa !2449
  %2878 = lshr i32 %2851, 31
  %2879 = xor i32 %2875, %2878
  %2880 = add nuw nsw i32 %2879, %2875
  %2881 = icmp eq i32 %2880, 2
  %2882 = zext i1 %2881 to i8
  %2883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2882, i8* %2883, align 1, !tbaa !2450
  %2884 = load i64, i64* %RBP
  %2885 = sub i64 %2884, 72
  %2886 = load i32, i32* %EAX
  %2887 = zext i32 %2886 to i64
  %2888 = load i64, i64* %PC
  %2889 = add i64 %2888, 3
  store i64 %2889, i64* %PC
  %2890 = inttoptr i64 %2885 to i32*
  store i32 %2886, i32* %2890
  %2891 = load i64, i64* %PC
  %2892 = sub i64 %2891, 228
  %2893 = load i64, i64* %PC
  %2894 = add i64 %2893, 5
  store i64 %2894, i64* %PC
  %2895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2892, i64* %2895, align 8, !tbaa !2428
  br label %block_400dd5

block_400c9a:                                     ; preds = %block_400c8e
  %2896 = sub i64 %2693, 48
  %2897 = load i64, i64* %PC
  %2898 = add i64 %2897, 7
  store i64 %2898, i64* %PC
  %2899 = inttoptr i64 %2896 to i32*
  store i32 0, i32* %2899
  %2900 = load i64, i64* %RBP
  %2901 = sub i64 %2900, 52
  %2902 = load i64, i64* %PC
  %2903 = add i64 %2902, 7
  store i64 %2903, i64* %PC
  %2904 = inttoptr i64 %2901 to i32*
  store i32 0, i32* %2904
  %2905 = load i64, i64* %RBP
  %2906 = sub i64 %2905, 68
  %2907 = load i64, i64* %PC
  %2908 = add i64 %2907, 7
  store i64 %2908, i64* %PC
  %2909 = inttoptr i64 %2906 to i32*
  store i32 0, i32* %2909
  br label %block_400caf

block_400d09:                                     ; preds = %block_400cd5, %block_400cf0
  %MEMORY.11 = phi %struct.Memory* [ %MEMORY.3, %block_400cd5 ], [ %MEMORY.3, %block_400cf0 ]
  %2910 = load i64, i64* %RBP
  %2911 = sub i64 %2910, 40
  %2912 = load i64, i64* %PC
  %2913 = add i64 %2912, 4
  store i64 %2913, i64* %PC
  %2914 = inttoptr i64 %2911 to i64*
  %2915 = load i64, i64* %2914
  store i64 %2915, i64* %RAX, align 8, !tbaa !2428
  %2916 = load i64, i64* %RAX
  %2917 = add i64 %2916, 8
  %2918 = load i64, i64* %PC
  %2919 = add i64 %2918, 4
  store i64 %2919, i64* %PC
  %2920 = inttoptr i64 %2917 to i64*
  %2921 = load i64, i64* %2920
  store i64 %2921, i64* %RAX, align 8, !tbaa !2428
  %2922 = load i64, i64* %RAX
  %2923 = load i64, i64* %PC
  %2924 = add i64 %2923, 3
  store i64 %2924, i64* %PC
  %2925 = inttoptr i64 %2922 to i32*
  %2926 = load i32, i32* %2925
  %2927 = sext i32 %2926 to i64
  store i64 %2927, i64* %RAX, align 8, !tbaa !2428
  %2928 = load i64, i64* %RAX
  %2929 = load i64, i64* %RBP
  %2930 = sub i64 %2929, 80
  %2931 = load i64, i64* %PC
  %2932 = add i64 %2931, 4
  store i64 %2932, i64* %PC
  %2933 = inttoptr i64 %2930 to i64*
  %2934 = load i64, i64* %2933
  %2935 = add i64 %2934, %2928
  store i64 %2935, i64* %RAX, align 8, !tbaa !2428
  %2936 = icmp ult i64 %2935, %2928
  %2937 = icmp ult i64 %2935, %2934
  %2938 = or i1 %2936, %2937
  %2939 = zext i1 %2938 to i8
  %2940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2939, i8* %2940, align 1, !tbaa !2432
  %2941 = trunc i64 %2935 to i32
  %2942 = and i32 %2941, 255
  %2943 = call i32 @llvm.ctpop.i32(i32 %2942) #16
  %2944 = trunc i32 %2943 to i8
  %2945 = and i8 %2944, 1
  %2946 = xor i8 %2945, 1
  %2947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2946, i8* %2947, align 1, !tbaa !2446
  %2948 = xor i64 %2934, %2928
  %2949 = xor i64 %2948, %2935
  %2950 = lshr i64 %2949, 4
  %2951 = trunc i64 %2950 to i8
  %2952 = and i8 %2951, 1
  %2953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2952, i8* %2953, align 1, !tbaa !2447
  %2954 = icmp eq i64 %2935, 0
  %2955 = zext i1 %2954 to i8
  %2956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2955, i8* %2956, align 1, !tbaa !2448
  %2957 = lshr i64 %2935, 63
  %2958 = trunc i64 %2957 to i8
  %2959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2958, i8* %2959, align 1, !tbaa !2449
  %2960 = lshr i64 %2928, 63
  %2961 = lshr i64 %2934, 63
  %2962 = xor i64 %2957, %2960
  %2963 = xor i64 %2957, %2961
  %2964 = add nuw nsw i64 %2962, %2963
  %2965 = icmp eq i64 %2964, 2
  %2966 = zext i1 %2965 to i8
  %2967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2966, i8* %2967, align 1, !tbaa !2450
  %2968 = load i64, i64* %RAX
  %2969 = load i64, i64* %PC
  %2970 = add i64 %2969, 4
  store i64 %2970, i64* %PC
  %2971 = and i64 1, %2968
  store i64 %2971, i64* %RAX, align 8, !tbaa !2428
  %2972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2972, align 1, !tbaa !2432
  %2973 = trunc i64 %2971 to i32
  %2974 = and i32 %2973, 255
  %2975 = call i32 @llvm.ctpop.i32(i32 %2974) #16
  %2976 = trunc i32 %2975 to i8
  %2977 = and i8 %2976, 1
  %2978 = xor i8 %2977, 1
  %2979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2978, i8* %2979, align 1, !tbaa !2446
  %2980 = icmp eq i64 %2971, 0
  %2981 = zext i1 %2980 to i8
  %2982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2981, i8* %2982, align 1, !tbaa !2448
  %2983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2983, align 1, !tbaa !2449
  %2984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2984, align 1, !tbaa !2450
  %2985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2985, align 1, !tbaa !2447
  %2986 = load i32, i32* %EAX
  %2987 = zext i32 %2986 to i64
  %2988 = load i64, i64* %PC
  %2989 = add i64 %2988, 2
  store i64 %2989, i64* %PC
  %2990 = and i64 %2987, 4294967295
  store i64 %2990, i64* %RCX, align 8, !tbaa !2428
  %2991 = load i64, i64* %RBP
  %2992 = sub i64 %2991, 40
  %2993 = load i64, i64* %PC
  %2994 = add i64 %2993, 4
  store i64 %2994, i64* %PC
  %2995 = inttoptr i64 %2992 to i64*
  %2996 = load i64, i64* %2995
  store i64 %2996, i64* %RAX, align 8, !tbaa !2428
  %2997 = load i64, i64* %RAX
  %2998 = load i32, i32* %ECX
  %2999 = zext i32 %2998 to i64
  %3000 = load i64, i64* %PC
  %3001 = add i64 %3000, 2
  store i64 %3001, i64* %PC
  %3002 = inttoptr i64 %2997 to i32*
  store i32 %2998, i32* %3002
  %3003 = load i64, i64* %PC
  %3004 = sub i64 %3003, 1668
  %3005 = load i64, i64* %PC
  %3006 = add i64 %3005, 5
  %3007 = load i64, i64* %PC
  %3008 = add i64 %3007, 5
  store i64 %3008, i64* %PC
  %3009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3010 = load i64, i64* %3009, align 8, !tbaa !2428
  %3011 = add i64 %3010, -8
  %3012 = inttoptr i64 %3011 to i64*
  store i64 %3006, i64* %3012
  store i64 %3011, i64* %3009, align 8, !tbaa !2428
  %3013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3004, i64* %3013, align 8, !tbaa !2428
  %3014 = load i64, i64* %PC
  %3015 = call %struct.Memory* @ext_4006a0_lrand48(%struct.State* %0, i64 %3014, %struct.Memory* %MEMORY.11)
  %3016 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %3017 = load i64, i64* %PC
  %3018 = add i64 %3017, 8
  store i64 %3018, i64* %PC
  %3019 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4010b0__rodata_type* @seg_4010b0__rodata to i64), i64 32) to double*)
  %3020 = bitcast i8* %3016 to double*
  store double %3019, double* %3020, align 1, !tbaa !2453
  %3021 = getelementptr inbounds i8, i8* %3016, i64 8
  %3022 = bitcast i8* %3021 to double*
  store double 0.000000e+00, double* %3022, align 1, !tbaa !2453
  %3023 = load i64, i64* %PC
  %3024 = add i64 %3023, 5
  store i64 %3024, i64* %PC
  store i64 1000, i64* %RCX, align 8, !tbaa !2428
  %3025 = load i32, i32* %ECX
  %3026 = zext i32 %3025 to i64
  %3027 = load i64, i64* %PC
  %3028 = add i64 %3027, 2
  store i64 %3028, i64* %PC
  %3029 = and i64 %3026, 4294967295
  store i64 %3029, i64* %RDX, align 8, !tbaa !2428
  %3030 = load i64, i64* %RBP
  %3031 = sub i64 %3030, 104
  %3032 = load i64, i64* %RDX
  %3033 = load i64, i64* %PC
  %3034 = add i64 %3033, 4
  store i64 %3034, i64* %PC
  %3035 = inttoptr i64 %3031 to i64*
  store i64 %3032, i64* %3035
  %3036 = load i64, i64* %PC
  %3037 = add i64 %3036, 2
  store i64 %3037, i64* %PC
  %3038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3040 = load i64, i64* %3039, align 8, !tbaa !2428
  %3041 = ashr i64 %3040, 63
  store i64 %3041, i64* %3038, align 8, !tbaa !2428
  %3042 = load i64, i64* %RBP
  %3043 = sub i64 %3042, 104
  %3044 = load i64, i64* %PC
  %3045 = add i64 %3044, 4
  store i64 %3045, i64* %PC
  %3046 = inttoptr i64 %3043 to i64*
  %3047 = load i64, i64* %3046
  store i64 %3047, i64* %RSI, align 8, !tbaa !2428
  %3048 = load i64, i64* %RSI
  %3049 = load i64, i64* %PC
  %3050 = add i64 %3049, 3
  store i64 %3050, i64* %PC
  %3051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3052 = load i64, i64* %3051, align 8, !tbaa !2428
  %3053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3054 = load i64, i64* %3053, align 8, !tbaa !2428
  %3055 = sext i64 %3048 to i128
  %3056 = and i128 %3055, -18446744073709551616
  %3057 = zext i64 %3054 to i128
  %3058 = shl nuw i128 %3057, 64
  %3059 = zext i64 %3052 to i128
  %3060 = or i128 %3058, %3059
  %3061 = zext i64 %3048 to i128
  %3062 = or i128 %3056, %3061
  %3063 = sdiv i128 %3060, %3062
  %3064 = trunc i128 %3063 to i64
  %3065 = and i128 %3063, 18446744073709551615
  %3066 = sext i64 %3064 to i128
  %3067 = and i128 %3066, -18446744073709551616
  %3068 = or i128 %3067, %3065
  %3069 = icmp eq i128 %3063, %3068
  br i1 %3069, label %3074, label %3070

; <label>:3070:                                   ; preds = %block_400d09
  %3071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3072 = load i64, i64* %3071, align 8, !tbaa !2428
  %3073 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3072, %struct.Memory* %3015) #17
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

; <label>:3074:                                   ; preds = %block_400d09
  %3075 = srem i128 %3060, %3062
  %3076 = trunc i128 %3075 to i64
  store i64 %3064, i64* %3051, align 8, !tbaa !2428
  store i64 %3076, i64* %3053, align 8, !tbaa !2428
  %3077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3077, align 1, !tbaa !2432
  %3078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %3078, align 1, !tbaa !2446
  %3079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3079, align 1, !tbaa !2447
  %3080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3080, align 1, !tbaa !2448
  %3081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3081, align 1, !tbaa !2449
  %3082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3082, align 1, !tbaa !2450
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit: ; preds = %3070, %3074
  %3083 = phi %struct.Memory* [ %3073, %3070 ], [ %3015, %3074 ]
  %3084 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %3085 = load i64, i64* %RDX
  %3086 = load i64, i64* %PC
  %3087 = add i64 %3086, 5
  store i64 %3087, i64* %PC
  %3088 = sitofp i64 %3085 to double
  %3089 = bitcast i8* %3084 to double*
  store double %3088, double* %3089, align 1, !tbaa !2453
  %3090 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %3091 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %3092 = bitcast %union.vec128_t* %XMM0 to i8*
  %3093 = load i64, i64* %PC
  %3094 = add i64 %3093, 4
  store i64 %3094, i64* %PC
  %3095 = bitcast i8* %3091 to double*
  %3096 = load double, double* %3095, align 1
  %3097 = getelementptr inbounds i8, i8* %3091, i64 8
  %3098 = bitcast i8* %3097 to i64*
  %3099 = load i64, i64* %3098, align 1
  %3100 = bitcast i8* %3092 to double*
  %3101 = load double, double* %3100, align 1
  %3102 = fdiv double %3096, %3101
  %3103 = bitcast i8* %3090 to double*
  store double %3102, double* %3103, align 1, !tbaa !2453
  %3104 = getelementptr inbounds i8, i8* %3090, i64 8
  %3105 = bitcast i8* %3104 to i64*
  store i64 %3099, i64* %3105, align 1, !tbaa !2453
  %3106 = load i64, i64* %RBP
  %3107 = sub i64 %3106, 88
  %3108 = bitcast %union.vec128_t* %XMM1 to i8*
  %3109 = load i64, i64* %PC
  %3110 = add i64 %3109, 5
  store i64 %3110, i64* %PC
  %3111 = bitcast i8* %3108 to double*
  %3112 = load double, double* %3111, align 1
  %3113 = inttoptr i64 %3107 to double*
  store double %3112, double* %3113
  %3114 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %3115 = load i64, i64* %RBP
  %3116 = sub i64 %3115, 24
  %3117 = load i64, i64* %PC
  %3118 = add i64 %3117, 5
  store i64 %3118, i64* %PC
  %3119 = inttoptr i64 %3116 to double*
  %3120 = load double, double* %3119
  %3121 = bitcast i8* %3114 to double*
  store double %3120, double* %3121, align 1, !tbaa !2453
  %3122 = getelementptr inbounds i8, i8* %3114, i64 8
  %3123 = bitcast i8* %3122 to double*
  store double 0.000000e+00, double* %3123, align 1, !tbaa !2453
  %3124 = bitcast %union.vec128_t* %XMM0 to i8*
  %3125 = load i64, i64* %RBP
  %3126 = sub i64 %3125, 88
  %3127 = load i64, i64* %PC
  %3128 = add i64 %3127, 5
  store i64 %3128, i64* %PC
  %3129 = bitcast i8* %3124 to double*
  %3130 = load double, double* %3129, align 1
  %3131 = inttoptr i64 %3126 to double*
  %3132 = load double, double* %3131
  %3133 = fcmp uno double %3130, %3132
  br i1 %3133, label %3134, label %3146

; <label>:3134:                                   ; preds = %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit
  %3135 = fadd double %3130, %3132
  %3136 = bitcast double %3135 to i64
  %3137 = and i64 %3136, 9221120237041090560
  %3138 = icmp eq i64 %3137, 9218868437227405312
  %3139 = and i64 %3136, 2251799813685247
  %3140 = icmp ne i64 %3139, 0
  %3141 = and i1 %3138, %3140
  br i1 %3141, label %3142, label %3152

; <label>:3142:                                   ; preds = %3134
  %3143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3144 = load i64, i64* %3143, align 8, !tbaa !2428
  %3145 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3144, %struct.Memory* %3083) #17
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:3146:                                   ; preds = %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit
  %3147 = fcmp ogt double %3130, %3132
  br i1 %3147, label %3152, label %3148

; <label>:3148:                                   ; preds = %3146
  %3149 = fcmp olt double %3130, %3132
  br i1 %3149, label %3152, label %3150

; <label>:3150:                                   ; preds = %3148
  %3151 = fcmp oeq double %3130, %3132
  br i1 %3151, label %3152, label %3159

; <label>:3152:                                   ; preds = %3150, %3148, %3146, %3134
  %3153 = phi i8 [ 0, %3146 ], [ 0, %3148 ], [ 1, %3150 ], [ 1, %3134 ]
  %3154 = phi i8 [ 0, %3146 ], [ 0, %3148 ], [ 0, %3150 ], [ 1, %3134 ]
  %3155 = phi i8 [ 0, %3146 ], [ 1, %3148 ], [ 0, %3150 ], [ 1, %3134 ]
  %3156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3153, i8* %3156, align 1, !tbaa !2452
  %3157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3154, i8* %3157, align 1, !tbaa !2452
  %3158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3155, i8* %3158, align 1, !tbaa !2452
  br label %3159

; <label>:3159:                                   ; preds = %3152, %3150
  %3160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3160, align 1, !tbaa !2452
  %3161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3161, align 1, !tbaa !2452
  %3162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3162, align 1, !tbaa !2452
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %3142, %3159
  %3163 = phi %struct.Memory* [ %3145, %3142 ], [ %3083, %3159 ]
  %3164 = load i64, i64* %PC
  %3165 = add i64 %3164, 18
  %3166 = load i64, i64* %PC
  %3167 = add i64 %3166, 6
  %3168 = load i64, i64* %PC
  %3169 = add i64 %3168, 6
  store i64 %3169, i64* %PC
  %3170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3171 = load i8, i8* %3170, align 1, !tbaa !2432
  %3172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3173 = load i8, i8* %3172, align 1, !tbaa !2448
  %3174 = or i8 %3173, %3171
  %3175 = icmp ne i8 %3174, 0
  %3176 = zext i1 %3175 to i8
  store i8 %3176, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %3177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3178 = select i1 %3175, i64 %3165, i64 %3167
  store i64 %3178, i64* %3177, align 8, !tbaa !2428
  %3179 = load i8, i8* %BRANCH_TAKEN
  %3180 = icmp eq i8 %3179, 1
  br i1 %3180, label %block_400d6f, label %block_400d63

block_400f88:                                     ; preds = %block_400c8e
  %3181 = sub i64 %2693, 68
  %3182 = load i64, i64* %PC
  %3183 = add i64 %3182, 7
  store i64 %3183, i64* %PC
  %3184 = inttoptr i64 %3181 to i32*
  store i32 0, i32* %3184
  br label %block_400f8f
}

; Function Attrs: noinline
define %struct.Memory* @sub_400bf0_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400bf0:
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
  br label %block_400bf8

block_400c07:                                     ; preds = %block_400bf8
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
  br label %block_400bf8

block_400c25:                                     ; preds = %block_400bf8
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

block_400bf8:                                     ; preds = %block_400c07, %block_400bf0
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400bf0 ], [ %MEMORY.0, %block_400c07 ]
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
  store i8 0, i8* %123, align 1, !tbaa !2447
  %124 = icmp eq i64 %114, 0
  %125 = zext i1 %124 to i8
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %125, i8* %126, align 1, !tbaa !2448
  %127 = lshr i64 %114, 63
  %128 = trunc i64 %127 to i8
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %128, i8* %129, align 1, !tbaa !2449
  %130 = lshr i64 %114, 63
  %131 = xor i64 %127, %130
  %132 = add nuw nsw i64 %131, %130
  %133 = icmp eq i64 %132, 2
  %134 = zext i1 %133 to i8
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %134, i8* %135, align 1, !tbaa !2450
  %136 = load i64, i64* %PC
  %137 = add i64 %136, 36
  %138 = load i64, i64* %PC
  %139 = add i64 %138, 6
  %140 = load i64, i64* %PC
  %141 = add i64 %140, 6
  store i64 %141, i64* %PC
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %143 = load i8, i8* %142, align 1, !tbaa !2448
  store i8 %143, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %145 = icmp ne i8 %143, 0
  %146 = select i1 %145, i64 %137, i64 %139
  store i64 %146, i64* %144, align 8, !tbaa !2428
  %147 = load i8, i8* %BRANCH_TAKEN
  %148 = icmp eq i8 %147, 1
  br i1 %148, label %block_400c25, label %block_400c07
}

; Function Attrs: noinline
define %struct.Memory* @sub_4007a0_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4007a0:
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
  store i8 %102, i8* %103, align 1, !tbaa !2447
  %104 = icmp eq i64 %87, 0
  %105 = zext i1 %104 to i8
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %105, i8* %106, align 1, !tbaa !2448
  %107 = lshr i64 %87, 63
  %108 = trunc i64 %107 to i8
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %108, i8* %109, align 1, !tbaa !2449
  %110 = lshr i64 %84, 63
  %111 = xor i64 %107, %110
  %112 = add nuw nsw i64 %111, %110
  %113 = icmp eq i64 %112, 2
  %114 = zext i1 %113 to i8
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %114, i8* %115, align 1, !tbaa !2450
  %116 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %117 = load i64, i64* %PC
  %118 = add i64 %117, 8
  store i64 %118, i64* %PC
  %119 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4010b0__rodata_type* @seg_4010b0__rodata to i64), i64 8) to double*)
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
  store i8 %181, i8* %182, align 1, !tbaa !2447
  %183 = icmp eq i32 %167, 0
  %184 = zext i1 %183 to i8
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %184, i8* %185, align 1, !tbaa !2448
  %186 = lshr i32 %167, 31
  %187 = trunc i32 %186 to i8
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %187, i8* %188, align 1, !tbaa !2449
  %189 = lshr i32 %166, 31
  %190 = xor i32 %186, %189
  %191 = add nuw nsw i32 %190, %189
  %192 = icmp eq i32 %191, 2
  %193 = zext i1 %192 to i8
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %193, i8* %194, align 1, !tbaa !2450
  %195 = load i64, i64* %PC
  %196 = add i64 %195, 38
  %197 = load i64, i64* %PC
  %198 = add i64 %197, 6
  %199 = load i64, i64* %PC
  %200 = add i64 %199, 6
  store i64 %200, i64* %PC
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %202 = load i8, i8* %201, align 1, !tbaa !2448
  %203 = icmp ne i8 %202, 0
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %205 = load i8, i8* %204, align 1, !tbaa !2449
  %206 = icmp ne i8 %205, 0
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %208 = load i8, i8* %207, align 1, !tbaa !2450
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
  br i1 %216, label %block_40080a, label %block_4007ea

block_400911:                                     ; preds = %block_4008d5
  %218 = load i64, i64* %RBP
  %219 = sub i64 %218, 178
  %220 = load i64, i64* %PC
  %221 = add i64 %220, 9
  store i64 %221, i64* %PC
  %222 = inttoptr i64 %219 to i16*
  store i16 0, i16* %222
  br label %block_40091a

block_400967:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit
  %223 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %224 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %225 = bitcast %union.vec128_t* %XMM0 to i8*
  %226 = load i64, i64* %PC
  %227 = add i64 %226, 3
  store i64 %227, i64* %PC
  %228 = bitcast i8* %224 to i64*
  %229 = load i64, i64* %228, align 1
  %230 = getelementptr inbounds i8, i8* %224, i64 8
  %231 = bitcast i8* %230 to i64*
  %232 = load i64, i64* %231, align 1
  %233 = bitcast i8* %225 to i64*
  %234 = load i64, i64* %233, align 1
  %235 = getelementptr inbounds i8, i8* %225, i64 8
  %236 = bitcast i8* %235 to i64*
  %237 = load i64, i64* %236, align 1
  %238 = xor i64 %234, %229
  %239 = xor i64 %237, %232
  %240 = trunc i64 %238 to i32
  %241 = lshr i64 %238, 32
  %242 = trunc i64 %241 to i32
  %243 = bitcast i8* %223 to i32*
  store i32 %240, i32* %243, align 1, !tbaa !2451
  %244 = getelementptr inbounds i8, i8* %223, i64 4
  %245 = bitcast i8* %244 to i32*
  store i32 %242, i32* %245, align 1, !tbaa !2451
  %246 = trunc i64 %239 to i32
  %247 = getelementptr inbounds i8, i8* %223, i64 8
  %248 = bitcast i8* %247 to i32*
  store i32 %246, i32* %248, align 1, !tbaa !2451
  %249 = lshr i64 %239, 32
  %250 = trunc i64 %249 to i32
  %251 = getelementptr inbounds i8, i8* %223, i64 12
  %252 = bitcast i8* %251 to i32*
  store i32 %250, i32* %252, align 1, !tbaa !2451
  %253 = bitcast %union.vec128_t* %XMM0 to i8*
  %254 = load i64, i64* %RBP
  %255 = sub i64 %254, 64
  %256 = load i64, i64* %PC
  %257 = add i64 %256, 5
  store i64 %257, i64* %PC
  %258 = bitcast i8* %253 to double*
  %259 = load double, double* %258, align 1
  %260 = inttoptr i64 %255 to double*
  %261 = load double, double* %260
  %262 = fcmp uno double %259, %261
  br i1 %262, label %263, label %275

; <label>:263:                                    ; preds = %block_400967
  %264 = fadd double %259, %261
  %265 = bitcast double %264 to i64
  %266 = and i64 %265, 9221120237041090560
  %267 = icmp eq i64 %266, 9218868437227405312
  %268 = and i64 %265, 2251799813685247
  %269 = icmp ne i64 %268, 0
  %270 = and i1 %267, %269
  br i1 %270, label %271, label %281

; <label>:271:                                    ; preds = %263
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %273 = load i64, i64* %272, align 8, !tbaa !2428
  %274 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %273, %struct.Memory* %596) #17
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:275:                                    ; preds = %block_400967
  %276 = fcmp ogt double %259, %261
  br i1 %276, label %281, label %277

; <label>:277:                                    ; preds = %275
  %278 = fcmp olt double %259, %261
  br i1 %278, label %281, label %279

; <label>:279:                                    ; preds = %277
  %280 = fcmp oeq double %259, %261
  br i1 %280, label %281, label %288

; <label>:281:                                    ; preds = %279, %277, %275, %263
  %282 = phi i8 [ 0, %275 ], [ 0, %277 ], [ 1, %279 ], [ 1, %263 ]
  %283 = phi i8 [ 0, %275 ], [ 0, %277 ], [ 0, %279 ], [ 1, %263 ]
  %284 = phi i8 [ 0, %275 ], [ 1, %277 ], [ 0, %279 ], [ 1, %263 ]
  %285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %282, i8* %285, align 1, !tbaa !2452
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %283, i8* %286, align 1, !tbaa !2452
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %284, i8* %287, align 1, !tbaa !2452
  br label %288

; <label>:288:                                    ; preds = %281, %279
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %289, align 1, !tbaa !2452
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %290, align 1, !tbaa !2452
  %291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %291, align 1, !tbaa !2452
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %271, %288
  %292 = phi %struct.Memory* [ %274, %271 ], [ %596, %288 ]
  %293 = load i64, i64* %PC
  %294 = add i64 %293, 41
  %295 = load i64, i64* %PC
  %296 = add i64 %295, 6
  %297 = load i64, i64* %PC
  %298 = add i64 %297, 6
  store i64 %298, i64* %PC
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %300 = load i8, i8* %299, align 1, !tbaa !2432
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %302 = load i8, i8* %301, align 1, !tbaa !2448
  %303 = or i8 %302, %300
  %304 = icmp ne i8 %303, 0
  %305 = zext i1 %304 to i8
  store i8 %305, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %307 = select i1 %304, i64 %294, i64 %296
  store i64 %307, i64* %306, align 8, !tbaa !2428
  %308 = load i8, i8* %BRANCH_TAKEN
  %309 = icmp eq i8 %308, 1
  br i1 %309, label %block_400998, label %block_400975

block_4009d8:                                     ; preds = %block_400998
  %310 = load i64, i64* %RBP
  %311 = sub i64 %310, 182
  %312 = load i64, i64* %PC
  %313 = add i64 %312, 7
  store i64 %313, i64* %PC
  store i64 %311, i64* %RDI, align 8, !tbaa !2428
  %314 = load i64, i64* %PC
  %315 = sub i64 %314, 879
  %316 = load i64, i64* %PC
  %317 = add i64 %316, 5
  %318 = load i64, i64* %PC
  %319 = add i64 %318, 5
  store i64 %319, i64* %PC
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %321 = load i64, i64* %320, align 8, !tbaa !2428
  %322 = add i64 %321, -8
  %323 = inttoptr i64 %322 to i64*
  store i64 %317, i64* %323
  store i64 %322, i64* %320, align 8, !tbaa !2428
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %315, i64* %324, align 8, !tbaa !2428
  %325 = load i64, i64* %PC
  %326 = call %struct.Memory* @ext_400670_seed48(%struct.State* %0, i64 %325, %struct.Memory* %1134)
  %327 = load i64, i64* %RBP
  %328 = sub i64 %327, 40
  %329 = load i64, i64* %PC
  %330 = add i64 %329, 4
  store i64 %330, i64* %PC
  store i64 %328, i64* %RDI, align 8, !tbaa !2428
  %331 = load i64, i64* %RBP
  %332 = sub i64 %331, 224
  %333 = load i64, i64* %RAX
  %334 = load i64, i64* %PC
  %335 = add i64 %334, 7
  store i64 %335, i64* %PC
  %336 = inttoptr i64 %332 to i64*
  store i64 %333, i64* %336
  %337 = load i64, i64* %PC
  %338 = add i64 %337, 353
  %339 = load i64, i64* %PC
  %340 = add i64 %339, 5
  %341 = load i64, i64* %PC
  %342 = add i64 %341, 5
  store i64 %342, i64* %PC
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %344 = load i64, i64* %343, align 8, !tbaa !2428
  %345 = add i64 %344, -8
  %346 = inttoptr i64 %345 to i64*
  store i64 %340, i64* %346
  store i64 %345, i64* %343, align 8, !tbaa !2428
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %338, i64* %347, align 8, !tbaa !2428
  %348 = load i64, i64* %PC
  %349 = call %struct.Memory* @sub_400b50_create_link_list_renamed_(%struct.State* %0, i64 %348, %struct.Memory* %326)
  %350 = load i64, i64* %RBP
  %351 = sub i64 %350, 52
  %352 = load i64, i64* %PC
  %353 = add i64 %352, 7
  store i64 %353, i64* %PC
  %354 = inttoptr i64 %351 to i32*
  store i32 0, i32* %354
  %355 = load i64, i64* %RBP
  %356 = sub i64 %355, 44
  %357 = load i64, i64* %PC
  %358 = add i64 %357, 4
  store i64 %358, i64* %PC
  %359 = inttoptr i64 %356 to i32*
  %360 = load i32, i32* %359
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %361, align 1, !tbaa !2432
  %362 = and i32 %360, 255
  %363 = call i32 @llvm.ctpop.i32(i32 %362) #16
  %364 = trunc i32 %363 to i8
  %365 = and i8 %364, 1
  %366 = xor i8 %365, 1
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %366, i8* %367, align 1, !tbaa !2446
  %368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %368, align 1, !tbaa !2447
  %369 = icmp eq i32 %360, 0
  %370 = zext i1 %369 to i8
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %370, i8* %371, align 1, !tbaa !2448
  %372 = lshr i32 %360, 31
  %373 = trunc i32 %372 to i8
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %373, i8* %374, align 1, !tbaa !2449
  %375 = lshr i32 %360, 31
  %376 = xor i32 %372, %375
  %377 = add nuw nsw i32 %376, %375
  %378 = icmp eq i32 %377, 2
  %379 = zext i1 %378 to i8
  %380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %379, i8* %380, align 1, !tbaa !2450
  %381 = load i64, i64* %PC
  %382 = add i64 %381, 83
  %383 = load i64, i64* %PC
  %384 = add i64 %383, 6
  %385 = load i64, i64* %PC
  %386 = add i64 %385, 6
  store i64 %386, i64* %PC
  %387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %388 = load i8, i8* %387, align 1, !tbaa !2448
  store i8 %388, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %390 = icmp ne i8 %388, 0
  %391 = select i1 %390, i64 %382, i64 %384
  store i64 %391, i64* %389, align 8, !tbaa !2428
  %392 = load i8, i8* %BRANCH_TAKEN
  %393 = icmp eq i8 %392, 1
  %394 = load i64, i64* %RBP
  br i1 %393, label %block_400a52, label %block_400a05

block_4008d5:                                     ; preds = %block_40089a, %block_4008cc
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.7, %block_4008cc ], [ %1871, %block_40089a ]
  %395 = load i64, i64* %RBP
  %396 = sub i64 %395, 16
  %397 = load i64, i64* %PC
  %398 = add i64 %397, 4
  store i64 %398, i64* %PC
  %399 = inttoptr i64 %396 to i32*
  %400 = load i32, i32* %399
  %401 = sub i32 %400, 9
  %402 = icmp ult i32 %400, 9
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
  %411 = xor i32 %400, 9
  %412 = xor i32 %411, %401
  %413 = lshr i32 %412, 4
  %414 = trunc i32 %413 to i8
  %415 = and i8 %414, 1
  %416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %415, i8* %416, align 1, !tbaa !2447
  %417 = icmp eq i32 %401, 0
  %418 = zext i1 %417 to i8
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %418, i8* %419, align 1, !tbaa !2448
  %420 = lshr i32 %401, 31
  %421 = trunc i32 %420 to i8
  %422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %421, i8* %422, align 1, !tbaa !2449
  %423 = lshr i32 %400, 31
  %424 = xor i32 %420, %423
  %425 = add nuw nsw i32 %424, %423
  %426 = icmp eq i32 %425, 2
  %427 = zext i1 %426 to i8
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %427, i8* %428, align 1, !tbaa !2450
  %429 = load i64, i64* %PC
  %430 = add i64 %429, 56
  %431 = load i64, i64* %PC
  %432 = add i64 %431, 6
  %433 = load i64, i64* %PC
  %434 = add i64 %433, 6
  store i64 %434, i64* %PC
  %435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %436 = load i8, i8* %435, align 1, !tbaa !2448
  %437 = icmp ne i8 %436, 0
  %438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %439 = load i8, i8* %438, align 1, !tbaa !2449
  %440 = icmp ne i8 %439, 0
  %441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %442 = load i8, i8* %441, align 1, !tbaa !2450
  %443 = icmp ne i8 %442, 0
  %444 = xor i1 %440, %443
  %445 = or i1 %437, %444
  %446 = zext i1 %445 to i8
  store i8 %446, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %448 = select i1 %445, i64 %430, i64 %432
  store i64 %448, i64* %447, align 8, !tbaa !2428
  %449 = load i8, i8* %BRANCH_TAKEN
  %450 = icmp eq i8 %449, 1
  br i1 %450, label %block_400911, label %block_4008df

block_400852:                                     ; preds = %block_4007ea, %block_40083b
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.6, %block_40083b ], [ %1214, %block_4007ea ]
  %451 = load i64, i64* %RBP
  %452 = sub i64 %451, 16
  %453 = load i64, i64* %PC
  %454 = add i64 %453, 4
  store i64 %454, i64* %PC
  %455 = inttoptr i64 %452 to i32*
  %456 = load i32, i32* %455
  %457 = sub i32 %456, 7
  %458 = icmp ult i32 %456, 7
  %459 = zext i1 %458 to i8
  %460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %459, i8* %460, align 1, !tbaa !2432
  %461 = and i32 %457, 255
  %462 = call i32 @llvm.ctpop.i32(i32 %461) #16
  %463 = trunc i32 %462 to i8
  %464 = and i8 %463, 1
  %465 = xor i8 %464, 1
  %466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %465, i8* %466, align 1, !tbaa !2446
  %467 = xor i32 %456, 7
  %468 = xor i32 %467, %457
  %469 = lshr i32 %468, 4
  %470 = trunc i32 %469 to i8
  %471 = and i8 %470, 1
  %472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %471, i8* %472, align 1, !tbaa !2447
  %473 = icmp eq i32 %457, 0
  %474 = zext i1 %473 to i8
  %475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %474, i8* %475, align 1, !tbaa !2448
  %476 = lshr i32 %457, 31
  %477 = trunc i32 %476 to i8
  %478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %477, i8* %478, align 1, !tbaa !2449
  %479 = lshr i32 %456, 31
  %480 = xor i32 %476, %479
  %481 = add nuw nsw i32 %480, %479
  %482 = icmp eq i32 %481, 2
  %483 = zext i1 %482 to i8
  %484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %483, i8* %484, align 1, !tbaa !2450
  %485 = load i64, i64* %PC
  %486 = add i64 %485, 49
  %487 = load i64, i64* %PC
  %488 = add i64 %487, 6
  %489 = load i64, i64* %PC
  %490 = add i64 %489, 6
  store i64 %490, i64* %PC
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %492 = load i8, i8* %491, align 1, !tbaa !2448
  %493 = icmp ne i8 %492, 0
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %495 = load i8, i8* %494, align 1, !tbaa !2449
  %496 = icmp ne i8 %495, 0
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %498 = load i8, i8* %497, align 1, !tbaa !2450
  %499 = icmp ne i8 %498, 0
  %500 = xor i1 %496, %499
  %501 = or i1 %493, %500
  %502 = zext i1 %501 to i8
  store i8 %502, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %504 = select i1 %501, i64 %486, i64 %488
  store i64 %504, i64* %503, align 8, !tbaa !2428
  %505 = load i8, i8* %BRANCH_TAKEN
  %506 = icmp eq i8 %505, 1
  br i1 %506, label %block_400887, label %block_40085c

block_400975:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %MEMORY.2 = phi %struct.Memory* [ %596, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit ], [ %292, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit ]
  %507 = load i64, i64* %PC
  %508 = add i64 %507, 10
  store i64 %508, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4010b0__rodata_type* @seg_4010b0__rodata to i64), i64 74), i64* %RDI, align 8, !tbaa !2428
  %509 = load i64, i64* %PC
  %510 = add i64 %509, 2
  store i64 %510, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2452
  %511 = load i64, i64* %PC
  %512 = sub i64 %511, 817
  %513 = load i64, i64* %PC
  %514 = add i64 %513, 5
  %515 = load i64, i64* %PC
  %516 = add i64 %515, 5
  store i64 %516, i64* %PC
  %517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %518 = load i64, i64* %517, align 8, !tbaa !2428
  %519 = add i64 %518, -8
  %520 = inttoptr i64 %519 to i64*
  store i64 %514, i64* %520
  store i64 %519, i64* %517, align 8, !tbaa !2428
  %521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %512, i64* %521, align 8, !tbaa !2428
  %522 = load i64, i64* %PC
  %523 = call %struct.Memory* @ext_400650_printf(%struct.State* %0, i64 %522, %struct.Memory* %MEMORY.2)
  %524 = load i64, i64* %RBP
  %525 = sub i64 %524, 12
  %526 = load i64, i64* %PC
  %527 = add i64 %526, 7
  store i64 %527, i64* %PC
  %528 = inttoptr i64 %525 to i32*
  store i32 3, i32* %528
  %529 = load i64, i64* %RBP
  %530 = sub i64 %529, 212
  %531 = load i32, i32* %EAX
  %532 = zext i32 %531 to i64
  %533 = load i64, i64* %PC
  %534 = add i64 %533, 6
  store i64 %534, i64* %PC
  %535 = inttoptr i64 %530 to i32*
  store i32 %531, i32* %535
  %536 = load i64, i64* %PC
  %537 = add i64 %536, 432
  %538 = load i64, i64* %PC
  %539 = add i64 %538, 5
  store i64 %539, i64* %PC
  %540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %537, i64* %540, align 8, !tbaa !2428
  br label %block_400b43

block_400950:                                     ; preds = %block_40091a
  %541 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %542 = load i64, i64* %PC
  %543 = add i64 %542, 8
  store i64 %543, i64* %PC
  %544 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4010b0__rodata_type* @seg_4010b0__rodata to i64), i64 16) to double*)
  %545 = bitcast i8* %541 to double*
  store double %544, double* %545, align 1, !tbaa !2453
  %546 = getelementptr inbounds i8, i8* %541, i64 8
  %547 = bitcast i8* %546 to double*
  store double 0.000000e+00, double* %547, align 1, !tbaa !2453
  %548 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %549 = load i64, i64* %RBP
  %550 = sub i64 %549, 64
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
  %558 = bitcast %union.vec128_t* %XMM1 to i8*
  %559 = bitcast %union.vec128_t* %XMM0 to i8*
  %560 = load i64, i64* %PC
  %561 = add i64 %560, 4
  store i64 %561, i64* %PC
  %562 = bitcast i8* %558 to double*
  %563 = load double, double* %562, align 1
  %564 = bitcast i8* %559 to double*
  %565 = load double, double* %564, align 1
  %566 = fcmp uno double %563, %565
  br i1 %566, label %567, label %579

; <label>:567:                                    ; preds = %block_400950
  %568 = fadd double %563, %565
  %569 = bitcast double %568 to i64
  %570 = and i64 %569, 9221120237041090560
  %571 = icmp eq i64 %570, 9218868437227405312
  %572 = and i64 %569, 2251799813685247
  %573 = icmp ne i64 %572, 0
  %574 = and i1 %571, %573
  br i1 %574, label %575, label %585

; <label>:575:                                    ; preds = %567
  %576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %577 = load i64, i64* %576, align 8, !tbaa !2428
  %578 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %577, %struct.Memory* %MEMORY.5) #17
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:579:                                    ; preds = %block_400950
  %580 = fcmp ogt double %563, %565
  br i1 %580, label %585, label %581

; <label>:581:                                    ; preds = %579
  %582 = fcmp olt double %563, %565
  br i1 %582, label %585, label %583

; <label>:583:                                    ; preds = %581
  %584 = fcmp oeq double %563, %565
  br i1 %584, label %585, label %592

; <label>:585:                                    ; preds = %583, %581, %579, %567
  %586 = phi i8 [ 0, %579 ], [ 0, %581 ], [ 1, %583 ], [ 1, %567 ]
  %587 = phi i8 [ 0, %579 ], [ 0, %581 ], [ 0, %583 ], [ 1, %567 ]
  %588 = phi i8 [ 0, %579 ], [ 1, %581 ], [ 0, %583 ], [ 1, %567 ]
  %589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %586, i8* %589, align 1, !tbaa !2452
  %590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %587, i8* %590, align 1, !tbaa !2452
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %588, i8* %591, align 1, !tbaa !2452
  br label %592

; <label>:592:                                    ; preds = %585, %583
  %593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %593, align 1, !tbaa !2452
  %594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %594, align 1, !tbaa !2452
  %595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %595, align 1, !tbaa !2452
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %575, %592
  %596 = phi %struct.Memory* [ %578, %575 ], [ %MEMORY.5, %592 ]
  %597 = load i64, i64* %PC
  %598 = add i64 %597, 20
  %599 = load i64, i64* %PC
  %600 = add i64 %599, 6
  %601 = load i64, i64* %PC
  %602 = add i64 %601, 6
  store i64 %602, i64* %PC
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %604 = load i8, i8* %603, align 1, !tbaa !2432
  %605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %606 = load i8, i8* %605, align 1, !tbaa !2448
  %607 = or i8 %606, %604
  %608 = icmp eq i8 %607, 0
  %609 = zext i1 %608 to i8
  store i8 %609, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %611 = select i1 %608, i64 %598, i64 %600
  store i64 %611, i64* %610, align 8, !tbaa !2428
  %612 = load i8, i8* %BRANCH_TAKEN
  %613 = icmp eq i8 %612, 1
  br i1 %613, label %block_400975, label %block_400967

block_4008cc:                                     ; preds = %block_400890
  %614 = load i64, i64* %RBP
  %615 = sub i64 %614, 180
  %616 = load i64, i64* %PC
  %617 = add i64 %616, 9
  store i64 %617, i64* %PC
  %618 = inttoptr i64 %615 to i16*
  store i16 0, i16* %618
  br label %block_4008d5

block_400b43:                                     ; preds = %block_400928, %block_4009b5, %block_400ac1, %block_400975
  %MEMORY.3 = phi %struct.Memory* [ %523, %block_400975 ], [ %930, %block_400ac1 ], [ %982, %block_4009b5 ], [ %1018, %block_400928 ]
  %619 = load i64, i64* %RBP
  %620 = sub i64 %619, 12
  %621 = load i64, i64* %PC
  %622 = add i64 %621, 3
  store i64 %622, i64* %PC
  %623 = inttoptr i64 %620 to i32*
  %624 = load i32, i32* %623
  %625 = zext i32 %624 to i64
  store i64 %625, i64* %RAX, align 8, !tbaa !2428
  %626 = load i64, i64* %RSP
  %627 = load i64, i64* %PC
  %628 = add i64 %627, 7
  store i64 %628, i64* %PC
  %629 = add i64 248, %626
  store i64 %629, i64* %RSP, align 8, !tbaa !2428
  %630 = icmp ult i64 %629, %626
  %631 = icmp ult i64 %629, 248
  %632 = or i1 %630, %631
  %633 = zext i1 %632 to i8
  %634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %633, i8* %634, align 1, !tbaa !2432
  %635 = trunc i64 %629 to i32
  %636 = and i32 %635, 255
  %637 = call i32 @llvm.ctpop.i32(i32 %636) #16
  %638 = trunc i32 %637 to i8
  %639 = and i8 %638, 1
  %640 = xor i8 %639, 1
  %641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %640, i8* %641, align 1, !tbaa !2446
  %642 = xor i64 248, %626
  %643 = xor i64 %642, %629
  %644 = lshr i64 %643, 4
  %645 = trunc i64 %644 to i8
  %646 = and i8 %645, 1
  %647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %646, i8* %647, align 1, !tbaa !2447
  %648 = icmp eq i64 %629, 0
  %649 = zext i1 %648 to i8
  %650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %649, i8* %650, align 1, !tbaa !2448
  %651 = lshr i64 %629, 63
  %652 = trunc i64 %651 to i8
  %653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %652, i8* %653, align 1, !tbaa !2449
  %654 = lshr i64 %626, 63
  %655 = xor i64 %651, %654
  %656 = add nuw nsw i64 %655, %651
  %657 = icmp eq i64 %656, 2
  %658 = zext i1 %657 to i8
  %659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %658, i8* %659, align 1, !tbaa !2450
  %660 = load i64, i64* %PC
  %661 = add i64 %660, 1
  store i64 %661, i64* %PC
  %662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %663 = load i64, i64* %662, align 8, !tbaa !2428
  %664 = add i64 %663, 8
  %665 = inttoptr i64 %663 to i64*
  %666 = load i64, i64* %665
  store i64 %666, i64* %RBX, align 8, !tbaa !2428
  store i64 %664, i64* %662, align 8, !tbaa !2428
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
  ret %struct.Memory* %MEMORY.3

block_400a52:                                     ; preds = %block_4009d8
  %682 = sub i64 %394, 40
  %683 = load i64, i64* %PC
  %684 = add i64 %683, 4
  store i64 %684, i64* %PC
  store i64 %682, i64* %RDI, align 8, !tbaa !2428
  %685 = load i64, i64* %PC
  %686 = add i64 %685, 410
  %687 = load i64, i64* %PC
  %688 = add i64 %687, 5
  %689 = load i64, i64* %PC
  %690 = add i64 %689, 5
  store i64 %690, i64* %PC
  %691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %692 = load i64, i64* %691, align 8, !tbaa !2428
  %693 = add i64 %692, -8
  %694 = inttoptr i64 %693 to i64*
  store i64 %688, i64* %694
  store i64 %693, i64* %691, align 8, !tbaa !2428
  %695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %686, i64* %695, align 8, !tbaa !2428
  %696 = load i64, i64* %PC
  %697 = call %struct.Memory* @sub_400bf0_init_renamed_(%struct.State* %0, i64 %696, %struct.Memory* %349)
  %698 = load i64, i64* %PC
  %699 = add i64 %698, 5
  store i64 %699, i64* %PC
  store i64 10000, i64* %RDI, align 8, !tbaa !2428
  %700 = load i64, i64* %RBP
  %701 = sub i64 %700, 40
  %702 = load i64, i64* %PC
  %703 = add i64 %702, 4
  store i64 %703, i64* %PC
  store i64 %701, i64* %RSI, align 8, !tbaa !2428
  %704 = load i64, i64* %RBP
  %705 = sub i64 %704, 176
  %706 = load i64, i64* %PC
  %707 = add i64 %706, 7
  store i64 %707, i64* %PC
  store i64 %705, i64* %RDX, align 8, !tbaa !2428
  %708 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %709 = load i64, i64* %RBP
  %710 = sub i64 %709, 64
  %711 = load i64, i64* %PC
  %712 = add i64 %711, 5
  store i64 %712, i64* %PC
  %713 = inttoptr i64 %710 to double*
  %714 = load double, double* %713
  %715 = bitcast i8* %708 to double*
  store double %714, double* %715, align 1, !tbaa !2453
  %716 = getelementptr inbounds i8, i8* %708, i64 8
  %717 = bitcast i8* %716 to double*
  store double 0.000000e+00, double* %717, align 1, !tbaa !2453
  %718 = load i64, i64* %PC
  %719 = add i64 %718, 448
  %720 = load i64, i64* %PC
  %721 = add i64 %720, 5
  %722 = load i64, i64* %PC
  %723 = add i64 %722, 5
  store i64 %723, i64* %PC
  %724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %725 = load i64, i64* %724, align 8, !tbaa !2428
  %726 = add i64 %725, -8
  %727 = inttoptr i64 %726 to i64*
  store i64 %721, i64* %727
  store i64 %726, i64* %724, align 8, !tbaa !2428
  %728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %719, i64* %728, align 8, !tbaa !2428
  %729 = load i64, i64* %PC
  %730 = call %struct.Memory* @sub_400c30_simulate_renamed_(%struct.State* %0, i64 %729, %struct.Memory* %697)
  %731 = load i64, i64* %RBP
  %732 = sub i64 %731, 56
  %733 = load i64, i64* %PC
  %734 = add i64 %733, 7
  store i64 %734, i64* %PC
  %735 = inttoptr i64 %732 to i32*
  store i32 0, i32* %735
  %736 = load i64, i64* %RBP
  %737 = sub i64 %736, 228
  %738 = load i32, i32* %EAX
  %739 = zext i32 %738 to i64
  %740 = load i64, i64* %PC
  %741 = add i64 %740, 6
  store i64 %741, i64* %PC
  %742 = inttoptr i64 %737 to i32*
  store i32 %738, i32* %742
  br label %block_400a82

block_400ac1:                                     ; preds = %block_400abc, %block_400a4d
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.9, %block_400abc ], [ %MEMORY.8, %block_400a4d ]
  %743 = load i64, i64* %PC
  %744 = add i64 %743, 10
  store i64 %744, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4010b0__rodata_type* @seg_4010b0__rodata to i64), i64 148), i64* %RDI, align 8, !tbaa !2428
  %745 = load i64, i64* %PC
  %746 = add i64 %745, 2
  store i64 %746, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2452
  %747 = load i64, i64* %PC
  %748 = sub i64 %747, 1149
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
  %759 = call %struct.Memory* @ext_400650_printf(%struct.State* %0, i64 %758, %struct.Memory* %MEMORY.4)
  %760 = load i64, i64* %PC
  %761 = add i64 %760, 10
  store i64 %761, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4010b0__rodata_type* @seg_4010b0__rodata to i64), i64 223), i64* %RDI, align 8, !tbaa !2428
  %762 = load i64, i64* %RBP
  %763 = sub i64 %762, 176
  %764 = load i64, i64* %PC
  %765 = add i64 %764, 7
  store i64 %765, i64* %PC
  store i64 %763, i64* %R8, align 8, !tbaa !2428
  %766 = load i64, i64* %PC
  %767 = add i64 %766, 7
  store i64 %767, i64* %PC
  %768 = load i32, i32* bitcast (%reg_len_type* @reg_len to i32*)
  %769 = zext i32 %768 to i64
  store i64 %769, i64* %RSI, align 8, !tbaa !2428
  %770 = load i64, i64* %RBP
  %771 = sub i64 %770, 44
  %772 = load i64, i64* %PC
  %773 = add i64 %772, 3
  store i64 %773, i64* %PC
  %774 = inttoptr i64 %771 to i32*
  %775 = load i32, i32* %774
  %776 = zext i32 %775 to i64
  store i64 %776, i64* %RDX, align 8, !tbaa !2428
  %777 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %778 = load i64, i64* %RBP
  %779 = sub i64 %778, 64
  %780 = load i64, i64* %PC
  %781 = add i64 %780, 5
  store i64 %781, i64* %PC
  %782 = inttoptr i64 %779 to double*
  %783 = load double, double* %782
  %784 = bitcast i8* %777 to double*
  store double %783, double* %784, align 1, !tbaa !2453
  %785 = getelementptr inbounds i8, i8* %777, i64 8
  %786 = bitcast i8* %785 to double*
  store double 0.000000e+00, double* %786, align 1, !tbaa !2453
  %787 = load i64, i64* %RBP
  %788 = sub i64 %787, 48
  %789 = load i64, i64* %PC
  %790 = add i64 %789, 3
  store i64 %790, i64* %PC
  %791 = inttoptr i64 %788 to i32*
  %792 = load i32, i32* %791
  %793 = zext i32 %792 to i64
  store i64 %793, i64* %RCX, align 8, !tbaa !2428
  %794 = bitcast i32* %R9D to i64*
  %795 = load i64, i64* %RBP
  %796 = sub i64 %795, 182
  %797 = load i64, i64* %PC
  %798 = add i64 %797, 8
  store i64 %798, i64* %PC
  %799 = inttoptr i64 %796 to i16*
  %800 = load i16, i16* %799
  %801 = zext i16 %800 to i64
  store i64 %801, i64* %794, align 8, !tbaa !2428
  %802 = bitcast i32* %R10D to i64*
  %803 = load i64, i64* %RBP
  %804 = sub i64 %803, 180
  %805 = load i64, i64* %PC
  %806 = add i64 %805, 8
  store i64 %806, i64* %PC
  %807 = inttoptr i64 %804 to i16*
  %808 = load i16, i16* %807
  %809 = zext i16 %808 to i64
  store i64 %809, i64* %802, align 8, !tbaa !2428
  %810 = bitcast i32* %R11D to i64*
  %811 = load i64, i64* %RBP
  %812 = sub i64 %811, 178
  %813 = load i64, i64* %PC
  %814 = add i64 %813, 8
  store i64 %814, i64* %PC
  %815 = inttoptr i64 %812 to i16*
  %816 = load i16, i16* %815
  %817 = zext i16 %816 to i64
  store i64 %817, i64* %810, align 8, !tbaa !2428
  %818 = load i64, i64* %RBP
  %819 = sub i64 %818, 48
  %820 = load i64, i64* %PC
  %821 = add i64 %820, 3
  store i64 %821, i64* %PC
  %822 = inttoptr i64 %819 to i32*
  %823 = load i32, i32* %822
  %824 = zext i32 %823 to i64
  store i64 %824, i64* %RBX, align 8, !tbaa !2428
  %825 = load i64, i64* %RBX
  %826 = load i64, i64* %RBP
  %827 = sub i64 %826, 52
  %828 = load i64, i64* %PC
  %829 = add i64 %828, 3
  store i64 %829, i64* %PC
  %830 = trunc i64 %825 to i32
  %831 = inttoptr i64 %827 to i32*
  %832 = load i32, i32* %831
  %833 = sub i32 %830, %832
  %834 = zext i32 %833 to i64
  store i64 %834, i64* %RBX, align 8, !tbaa !2428
  %835 = icmp ult i32 %830, %832
  %836 = zext i1 %835 to i8
  %837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %836, i8* %837, align 1, !tbaa !2432
  %838 = and i32 %833, 255
  %839 = call i32 @llvm.ctpop.i32(i32 %838) #16
  %840 = trunc i32 %839 to i8
  %841 = and i8 %840, 1
  %842 = xor i8 %841, 1
  %843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %842, i8* %843, align 1, !tbaa !2446
  %844 = xor i32 %832, %830
  %845 = xor i32 %844, %833
  %846 = lshr i32 %845, 4
  %847 = trunc i32 %846 to i8
  %848 = and i8 %847, 1
  %849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %848, i8* %849, align 1, !tbaa !2447
  %850 = icmp eq i32 %833, 0
  %851 = zext i1 %850 to i8
  %852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %851, i8* %852, align 1, !tbaa !2448
  %853 = lshr i32 %833, 31
  %854 = trunc i32 %853 to i8
  %855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %854, i8* %855, align 1, !tbaa !2449
  %856 = lshr i32 %830, 31
  %857 = lshr i32 %832, 31
  %858 = xor i32 %857, %856
  %859 = xor i32 %853, %856
  %860 = add nuw nsw i32 %859, %858
  %861 = icmp eq i32 %860, 2
  %862 = zext i1 %861 to i8
  %863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %862, i8* %863, align 1, !tbaa !2450
  %864 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %865 = load i32, i32* %EBX
  %866 = zext i32 %865 to i64
  %867 = load i64, i64* %PC
  %868 = add i64 %867, 4
  store i64 %868, i64* %PC
  %869 = sitofp i32 %865 to double
  %870 = bitcast i8* %864 to double*
  store double %869, double* %870, align 1, !tbaa !2453
  %871 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %872 = load i64, i64* %RBP
  %873 = sub i64 %872, 48
  %874 = load i64, i64* %PC
  %875 = add i64 %874, 5
  store i64 %875, i64* %PC
  %876 = inttoptr i64 %873 to i32*
  %877 = load i32, i32* %876
  %878 = sitofp i32 %877 to double
  %879 = bitcast i8* %871 to double*
  store double %878, double* %879, align 1, !tbaa !2453
  %880 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %881 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %882 = bitcast %union.vec128_t* %XMM2 to i8*
  %883 = load i64, i64* %PC
  %884 = add i64 %883, 4
  store i64 %884, i64* %PC
  %885 = bitcast i8* %881 to double*
  %886 = load double, double* %885, align 1
  %887 = getelementptr inbounds i8, i8* %881, i64 8
  %888 = bitcast i8* %887 to i64*
  %889 = load i64, i64* %888, align 1
  %890 = bitcast i8* %882 to double*
  %891 = load double, double* %890, align 1
  %892 = fdiv double %886, %891
  %893 = bitcast i8* %880 to double*
  store double %892, double* %893, align 1, !tbaa !2453
  %894 = getelementptr inbounds i8, i8* %880, i64 8
  %895 = bitcast i8* %894 to i64*
  store i64 %889, i64* %895, align 1, !tbaa !2453
  %896 = load i64, i64* %RSP
  %897 = load i32, i32* %R10D
  %898 = zext i32 %897 to i64
  %899 = load i64, i64* %PC
  %900 = add i64 %899, 4
  store i64 %900, i64* %PC
  %901 = inttoptr i64 %896 to i32*
  store i32 %897, i32* %901
  %902 = load i64, i64* %RSP
  %903 = add i64 %902, 8
  %904 = load i32, i32* %R11D
  %905 = zext i32 %904 to i64
  %906 = load i64, i64* %PC
  %907 = add i64 %906, 5
  store i64 %907, i64* %PC
  %908 = inttoptr i64 %903 to i32*
  store i32 %904, i32* %908
  %909 = load i64, i64* %RBP
  %910 = sub i64 %909, 232
  %911 = load i32, i32* %EAX
  %912 = zext i32 %911 to i64
  %913 = load i64, i64* %PC
  %914 = add i64 %913, 6
  store i64 %914, i64* %PC
  %915 = inttoptr i64 %910 to i32*
  store i32 %911, i32* %915
  %916 = load i64, i64* %PC
  %917 = add i64 %916, 2
  store i64 %917, i64* %PC
  store i8 2, i8* %AL, align 1, !tbaa !2452
  %918 = load i64, i64* %PC
  %919 = sub i64 %918, 1249
  %920 = load i64, i64* %PC
  %921 = add i64 %920, 5
  %922 = load i64, i64* %PC
  %923 = add i64 %922, 5
  store i64 %923, i64* %PC
  %924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %925 = load i64, i64* %924, align 8, !tbaa !2428
  %926 = add i64 %925, -8
  %927 = inttoptr i64 %926 to i64*
  store i64 %921, i64* %927
  store i64 %926, i64* %924, align 8, !tbaa !2428
  %928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %919, i64* %928, align 8, !tbaa !2428
  %929 = load i64, i64* %PC
  %930 = call %struct.Memory* @ext_400650_printf(%struct.State* %0, i64 %929, %struct.Memory* %759)
  %931 = load i64, i64* %RBP
  %932 = sub i64 %931, 12
  %933 = load i64, i64* %PC
  %934 = add i64 %933, 7
  store i64 %934, i64* %PC
  %935 = inttoptr i64 %932 to i32*
  store i32 0, i32* %935
  %936 = load i64, i64* %RBP
  %937 = sub i64 %936, 236
  %938 = load i32, i32* %EAX
  %939 = zext i32 %938 to i64
  %940 = load i64, i64* %PC
  %941 = add i64 %940, 6
  store i64 %941, i64* %PC
  %942 = inttoptr i64 %937 to i32*
  store i32 %938, i32* %942
  br label %block_400b43

block_400a4d:                                     ; preds = %block_400a0c
  %943 = load i64, i64* %PC
  %944 = add i64 %943, 116
  %945 = load i64, i64* %PC
  %946 = add i64 %945, 5
  store i64 %946, i64* %PC
  %947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %944, i64* %947, align 8, !tbaa !2428
  br label %block_400ac1

block_400abc:                                     ; preds = %block_400a82
  %948 = load i64, i64* %PC
  %949 = add i64 %948, 5
  store i64 %949, i64* %PC
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2026, i64* %950, align 8, !tbaa !2428
  br label %block_400ac1

block_40083b:                                     ; preds = %block_400811
  %951 = sub i64 %1543, 176
  %952 = load i64, i64* %PC
  %953 = add i64 %952, 7
  store i64 %953, i64* %PC
  %954 = inttoptr i64 %951 to i8*
  store i8 49, i8* %954
  %955 = load i64, i64* %PC
  %956 = add i64 %955, 8
  store i64 %956, i64* %PC
  %957 = load i32, i32* bitcast (%reg_len_type* @reg_len to i32*)
  %958 = sext i32 %957 to i64
  store i64 %958, i64* %RAX, align 8, !tbaa !2428
  %959 = load i64, i64* %RBP
  %960 = load i64, i64* %RAX
  %961 = add i64 %959, -176
  %962 = add i64 %961, %960
  %963 = load i64, i64* %PC
  %964 = add i64 %963, 8
  store i64 %964, i64* %PC
  %965 = inttoptr i64 %962 to i8*
  store i8 0, i8* %965
  br label %block_400852

block_4009b5:                                     ; preds = %block_400998
  %966 = load i64, i64* %PC
  %967 = add i64 %966, 10
  store i64 %967, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4010b0__rodata_type* @seg_4010b0__rodata to i64), i64 105), i64* %RDI, align 8, !tbaa !2428
  %968 = load i64, i64* %PC
  %969 = add i64 %968, 2
  store i64 %969, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2452
  %970 = load i64, i64* %PC
  %971 = sub i64 %970, 881
  %972 = load i64, i64* %PC
  %973 = add i64 %972, 5
  %974 = load i64, i64* %PC
  %975 = add i64 %974, 5
  store i64 %975, i64* %PC
  %976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %977 = load i64, i64* %976, align 8, !tbaa !2428
  %978 = add i64 %977, -8
  %979 = inttoptr i64 %978 to i64*
  store i64 %973, i64* %979
  store i64 %978, i64* %976, align 8, !tbaa !2428
  %980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %971, i64* %980, align 8, !tbaa !2428
  %981 = load i64, i64* %PC
  %982 = call %struct.Memory* @ext_400650_printf(%struct.State* %0, i64 %981, %struct.Memory* %1134)
  %983 = load i64, i64* %RBP
  %984 = sub i64 %983, 12
  %985 = load i64, i64* %PC
  %986 = add i64 %985, 7
  store i64 %986, i64* %PC
  %987 = inttoptr i64 %984 to i32*
  store i32 4, i32* %987
  %988 = load i64, i64* %RBP
  %989 = sub i64 %988, 216
  %990 = load i32, i32* %EAX
  %991 = zext i32 %990 to i64
  %992 = load i64, i64* %PC
  %993 = add i64 %992, 6
  store i64 %993, i64* %PC
  %994 = inttoptr i64 %989 to i32*
  store i32 %990, i32* %994
  %995 = load i64, i64* %PC
  %996 = add i64 %995, 368
  %997 = load i64, i64* %PC
  %998 = add i64 %997, 5
  store i64 %998, i64* %PC
  %999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %996, i64* %999, align 8, !tbaa !2428
  br label %block_400b43

block_400928:                                     ; preds = %block_40091a
  %1000 = load i64, i64* %PC
  %1001 = add i64 %1000, 10
  store i64 %1001, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4010b0__rodata_type* @seg_4010b0__rodata to i64), i64 44), i64* %RDI, align 8, !tbaa !2428
  %1002 = load i64, i64* %PC
  %1003 = add i64 %1002, 5
  store i64 %1003, i64* %PC
  store i64 100, i64* %RSI, align 8, !tbaa !2428
  %1004 = load i64, i64* %PC
  %1005 = add i64 %1004, 2
  store i64 %1005, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2452
  %1006 = load i64, i64* %PC
  %1007 = sub i64 %1006, 745
  %1008 = load i64, i64* %PC
  %1009 = add i64 %1008, 5
  %1010 = load i64, i64* %PC
  %1011 = add i64 %1010, 5
  store i64 %1011, i64* %PC
  %1012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1013 = load i64, i64* %1012, align 8, !tbaa !2428
  %1014 = add i64 %1013, -8
  %1015 = inttoptr i64 %1014 to i64*
  store i64 %1009, i64* %1015
  store i64 %1014, i64* %1012, align 8, !tbaa !2428
  %1016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1007, i64* %1016, align 8, !tbaa !2428
  %1017 = load i64, i64* %PC
  %1018 = call %struct.Memory* @ext_400650_printf(%struct.State* %0, i64 %1017, %struct.Memory* %MEMORY.5)
  %1019 = load i64, i64* %RBP
  %1020 = sub i64 %1019, 12
  %1021 = load i64, i64* %PC
  %1022 = add i64 %1021, 7
  store i64 %1022, i64* %PC
  %1023 = inttoptr i64 %1020 to i32*
  store i32 2, i32* %1023
  %1024 = load i64, i64* %RBP
  %1025 = sub i64 %1024, 208
  %1026 = load i32, i32* %EAX
  %1027 = zext i32 %1026 to i64
  %1028 = load i64, i64* %PC
  %1029 = add i64 %1028, 6
  store i64 %1029, i64* %PC
  %1030 = inttoptr i64 %1025 to i32*
  store i32 %1026, i32* %1030
  %1031 = load i64, i64* %PC
  %1032 = add i64 %1031, 504
  %1033 = load i64, i64* %PC
  %1034 = add i64 %1033, 5
  store i64 %1034, i64* %PC
  %1035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1032, i64* %1035, align 8, !tbaa !2428
  br label %block_400b43

block_4008df:                                     ; preds = %block_4008d5
  %1036 = load i64, i64* %PC
  %1037 = add i64 %1036, 10
  store i64 %1037, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4010b0__rodata_type* @seg_4010b0__rodata to i64), i64 40), i64* %RSI, align 8, !tbaa !2428
  %1038 = load i64, i64* %RBP
  %1039 = sub i64 %1038, 182
  %1040 = load i64, i64* %PC
  %1041 = add i64 %1040, 7
  store i64 %1041, i64* %PC
  store i64 %1039, i64* %RAX, align 8, !tbaa !2428
  %1042 = load i64, i64* %RBP
  %1043 = sub i64 %1042, 24
  %1044 = load i64, i64* %PC
  %1045 = add i64 %1044, 4
  store i64 %1045, i64* %PC
  %1046 = inttoptr i64 %1043 to i64*
  %1047 = load i64, i64* %1046
  store i64 %1047, i64* %RCX, align 8, !tbaa !2428
  %1048 = load i64, i64* %RCX
  %1049 = add i64 %1048, 72
  %1050 = load i64, i64* %PC
  %1051 = add i64 %1050, 4
  store i64 %1051, i64* %PC
  %1052 = inttoptr i64 %1049 to i64*
  %1053 = load i64, i64* %1052
  store i64 %1053, i64* %RDI, align 8, !tbaa !2428
  %1054 = load i64, i64* %RAX
  %1055 = load i64, i64* %PC
  %1056 = add i64 %1055, 4
  store i64 %1056, i64* %PC
  %1057 = add i64 4, %1054
  store i64 %1057, i64* %RAX, align 8, !tbaa !2428
  %1058 = icmp ult i64 %1057, %1054
  %1059 = icmp ult i64 %1057, 4
  %1060 = or i1 %1058, %1059
  %1061 = zext i1 %1060 to i8
  %1062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1061, i8* %1062, align 1, !tbaa !2432
  %1063 = trunc i64 %1057 to i32
  %1064 = and i32 %1063, 255
  %1065 = call i32 @llvm.ctpop.i32(i32 %1064) #16
  %1066 = trunc i32 %1065 to i8
  %1067 = and i8 %1066, 1
  %1068 = xor i8 %1067, 1
  %1069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1068, i8* %1069, align 1, !tbaa !2446
  %1070 = xor i64 4, %1054
  %1071 = xor i64 %1070, %1057
  %1072 = lshr i64 %1071, 4
  %1073 = trunc i64 %1072 to i8
  %1074 = and i8 %1073, 1
  %1075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1074, i8* %1075, align 1, !tbaa !2447
  %1076 = icmp eq i64 %1057, 0
  %1077 = zext i1 %1076 to i8
  %1078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1077, i8* %1078, align 1, !tbaa !2448
  %1079 = lshr i64 %1057, 63
  %1080 = trunc i64 %1079 to i8
  %1081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1080, i8* %1081, align 1, !tbaa !2449
  %1082 = lshr i64 %1054, 63
  %1083 = xor i64 %1079, %1082
  %1084 = add nuw nsw i64 %1083, %1079
  %1085 = icmp eq i64 %1084, 2
  %1086 = zext i1 %1085 to i8
  %1087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1086, i8* %1087, align 1, !tbaa !2450
  %1088 = load i64, i64* %RAX
  %1089 = load i64, i64* %PC
  %1090 = add i64 %1089, 3
  store i64 %1090, i64* %PC
  store i64 %1088, i64* %RDX, align 8, !tbaa !2428
  %1091 = load i64, i64* %PC
  %1092 = add i64 %1091, 2
  store i64 %1092, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2452
  %1093 = load i64, i64* %PC
  %1094 = sub i64 %1093, 625
  %1095 = load i64, i64* %PC
  %1096 = add i64 %1095, 5
  %1097 = load i64, i64* %PC
  %1098 = add i64 %1097, 5
  store i64 %1098, i64* %PC
  %1099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1100 = load i64, i64* %1099, align 8, !tbaa !2428
  %1101 = add i64 %1100, -8
  %1102 = inttoptr i64 %1101 to i64*
  store i64 %1096, i64* %1102
  store i64 %1101, i64* %1099, align 8, !tbaa !2428
  %1103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1094, i64* %1103, align 8, !tbaa !2428
  %1104 = load i64, i64* %PC
  %1105 = call %struct.Memory* @ext_6020b8___isoc99_sscanf(%struct.State* %0, i64 %1104, %struct.Memory* %MEMORY.0)
  %1106 = load i64, i64* %RBP
  %1107 = sub i64 %1106, 204
  %1108 = load i32, i32* %EAX
  %1109 = zext i32 %1108 to i64
  %1110 = load i64, i64* %PC
  %1111 = add i64 %1110, 6
  store i64 %1111, i64* %PC
  %1112 = inttoptr i64 %1107 to i32*
  store i32 %1108, i32* %1112
  %1113 = load i64, i64* %PC
  %1114 = add i64 %1113, 14
  %1115 = load i64, i64* %PC
  %1116 = add i64 %1115, 5
  store i64 %1116, i64* %PC
  %1117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1114, i64* %1117, align 8, !tbaa !2428
  br label %block_40091a

block_400998:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %1118 = load i64, i64* %RBP
  %1119 = sub i64 %1118, 176
  %1120 = load i64, i64* %PC
  %1121 = add i64 %1120, 7
  store i64 %1121, i64* %PC
  store i64 %1119, i64* %RDI, align 8, !tbaa !2428
  %1122 = load i64, i64* %PC
  %1123 = sub i64 %1122, 863
  %1124 = load i64, i64* %PC
  %1125 = add i64 %1124, 5
  %1126 = load i64, i64* %PC
  %1127 = add i64 %1126, 5
  store i64 %1127, i64* %PC
  %1128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1129 = load i64, i64* %1128, align 8, !tbaa !2428
  %1130 = add i64 %1129, -8
  %1131 = inttoptr i64 %1130 to i64*
  store i64 %1125, i64* %1131
  store i64 %1130, i64* %1128, align 8, !tbaa !2428
  %1132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1123, i64* %1132, align 8, !tbaa !2428
  %1133 = load i64, i64* %PC
  %1134 = call %struct.Memory* @ext_6020d8_strlen(%struct.State* %0, i64 %1133, %struct.Memory* %292)
  %1135 = load i64, i64* %PC
  %1136 = add i64 %1135, 8
  store i64 %1136, i64* %PC
  %1137 = load i32, i32* bitcast (%reg_len_type* @reg_len to i32*)
  %1138 = sext i32 %1137 to i64
  store i64 %1138, i64* %RDI, align 8, !tbaa !2428
  %1139 = load i64, i64* %RAX
  %1140 = load i64, i64* %RDI
  %1141 = load i64, i64* %PC
  %1142 = add i64 %1141, 3
  store i64 %1142, i64* %PC
  %1143 = sub i64 %1139, %1140
  %1144 = icmp ult i64 %1139, %1140
  %1145 = zext i1 %1144 to i8
  %1146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1145, i8* %1146, align 1, !tbaa !2432
  %1147 = trunc i64 %1143 to i32
  %1148 = and i32 %1147, 255
  %1149 = call i32 @llvm.ctpop.i32(i32 %1148) #16
  %1150 = trunc i32 %1149 to i8
  %1151 = and i8 %1150, 1
  %1152 = xor i8 %1151, 1
  %1153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1152, i8* %1153, align 1, !tbaa !2446
  %1154 = xor i64 %1140, %1139
  %1155 = xor i64 %1154, %1143
  %1156 = lshr i64 %1155, 4
  %1157 = trunc i64 %1156 to i8
  %1158 = and i8 %1157, 1
  %1159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1158, i8* %1159, align 1, !tbaa !2447
  %1160 = icmp eq i64 %1143, 0
  %1161 = zext i1 %1160 to i8
  %1162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1161, i8* %1162, align 1, !tbaa !2448
  %1163 = lshr i64 %1143, 63
  %1164 = trunc i64 %1163 to i8
  %1165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1164, i8* %1165, align 1, !tbaa !2449
  %1166 = lshr i64 %1139, 63
  %1167 = lshr i64 %1140, 63
  %1168 = xor i64 %1167, %1166
  %1169 = xor i64 %1163, %1166
  %1170 = add nuw nsw i64 %1169, %1168
  %1171 = icmp eq i64 %1170, 2
  %1172 = zext i1 %1171 to i8
  %1173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1172, i8* %1173, align 1, !tbaa !2450
  %1174 = load i64, i64* %PC
  %1175 = add i64 %1174, 41
  %1176 = load i64, i64* %PC
  %1177 = add i64 %1176, 6
  %1178 = load i64, i64* %PC
  %1179 = add i64 %1178, 6
  store i64 %1179, i64* %PC
  %1180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1181 = load i8, i8* %1180, align 1, !tbaa !2448
  store i8 %1181, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %1182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1183 = icmp ne i8 %1181, 0
  %1184 = select i1 %1183, i64 %1175, i64 %1177
  store i64 %1184, i64* %1182, align 8, !tbaa !2428
  %1185 = load i8, i8* %BRANCH_TAKEN
  %1186 = icmp eq i8 %1185, 1
  br i1 %1186, label %block_4009d8, label %block_4009b5

block_4007ea:                                     ; preds = %block_4007a0
  %1187 = sub i64 %217, 176
  %1188 = load i64, i64* %PC
  %1189 = add i64 %1188, 7
  store i64 %1189, i64* %PC
  store i64 %1187, i64* %RDI, align 8, !tbaa !2428
  %1190 = load i64, i64* %RBP
  %1191 = sub i64 %1190, 24
  %1192 = load i64, i64* %PC
  %1193 = add i64 %1192, 4
  store i64 %1193, i64* %PC
  %1194 = inttoptr i64 %1191 to i64*
  %1195 = load i64, i64* %1194
  store i64 %1195, i64* %RAX, align 8, !tbaa !2428
  %1196 = load i64, i64* %RAX
  %1197 = add i64 %1196, 48
  %1198 = load i64, i64* %PC
  %1199 = add i64 %1198, 4
  store i64 %1199, i64* %PC
  %1200 = inttoptr i64 %1197 to i64*
  %1201 = load i64, i64* %1200
  store i64 %1201, i64* %RSI, align 8, !tbaa !2428
  %1202 = load i64, i64* %PC
  %1203 = sub i64 %1202, 457
  %1204 = load i64, i64* %PC
  %1205 = add i64 %1204, 5
  %1206 = load i64, i64* %PC
  %1207 = add i64 %1206, 5
  store i64 %1207, i64* %PC
  %1208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1209 = load i64, i64* %1208, align 8, !tbaa !2428
  %1210 = add i64 %1209, -8
  %1211 = inttoptr i64 %1210 to i64*
  store i64 %1205, i64* %1211
  store i64 %1210, i64* %1208, align 8, !tbaa !2428
  %1212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1203, i64* %1212, align 8, !tbaa !2428
  %1213 = load i64, i64* %PC
  %1214 = call %struct.Memory* @ext_6020d0_strcpy(%struct.State* %0, i64 %1213, %struct.Memory* %2)
  %1215 = load i64, i64* %RBP
  %1216 = sub i64 %1215, 192
  %1217 = load i64, i64* %RAX
  %1218 = load i64, i64* %PC
  %1219 = add i64 %1218, 7
  store i64 %1219, i64* %PC
  %1220 = inttoptr i64 %1216 to i64*
  store i64 %1217, i64* %1220
  %1221 = load i64, i64* %PC
  %1222 = add i64 %1221, 77
  %1223 = load i64, i64* %PC
  %1224 = add i64 %1223, 5
  store i64 %1224, i64* %PC
  %1225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1222, i64* %1225, align 8, !tbaa !2428
  br label %block_400852

block_40091a:                                     ; preds = %block_4008df, %block_400911
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.0, %block_400911 ], [ %1105, %block_4008df ]
  %1226 = load i64, i64* %PC
  %1227 = add i64 %1226, 8
  store i64 %1227, i64* %PC
  %1228 = load i32, i32* bitcast (%reg_len_type* @reg_len to i32*)
  %1229 = sub i32 %1228, 100
  %1230 = icmp ult i32 %1228, 100
  %1231 = zext i1 %1230 to i8
  %1232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1231, i8* %1232, align 1, !tbaa !2432
  %1233 = and i32 %1229, 255
  %1234 = call i32 @llvm.ctpop.i32(i32 %1233) #16
  %1235 = trunc i32 %1234 to i8
  %1236 = and i8 %1235, 1
  %1237 = xor i8 %1236, 1
  %1238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1237, i8* %1238, align 1, !tbaa !2446
  %1239 = xor i32 %1228, 100
  %1240 = xor i32 %1239, %1229
  %1241 = lshr i32 %1240, 4
  %1242 = trunc i32 %1241 to i8
  %1243 = and i8 %1242, 1
  %1244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1243, i8* %1244, align 1, !tbaa !2447
  %1245 = icmp eq i32 %1229, 0
  %1246 = zext i1 %1245 to i8
  %1247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1246, i8* %1247, align 1, !tbaa !2448
  %1248 = lshr i32 %1229, 31
  %1249 = trunc i32 %1248 to i8
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1249, i8* %1250, align 1, !tbaa !2449
  %1251 = lshr i32 %1228, 31
  %1252 = xor i32 %1248, %1251
  %1253 = add nuw nsw i32 %1252, %1251
  %1254 = icmp eq i32 %1253, 2
  %1255 = zext i1 %1254 to i8
  %1256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1255, i8* %1256, align 1, !tbaa !2450
  %1257 = load i64, i64* %PC
  %1258 = add i64 %1257, 46
  %1259 = load i64, i64* %PC
  %1260 = add i64 %1259, 6
  %1261 = load i64, i64* %PC
  %1262 = add i64 %1261, 6
  store i64 %1262, i64* %PC
  %1263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1264 = load i8, i8* %1263, align 1, !tbaa !2448
  %1265 = icmp ne i8 %1264, 0
  %1266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1267 = load i8, i8* %1266, align 1, !tbaa !2449
  %1268 = icmp ne i8 %1267, 0
  %1269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1270 = load i8, i8* %1269, align 1, !tbaa !2450
  %1271 = icmp ne i8 %1270, 0
  %1272 = xor i1 %1268, %1271
  %1273 = or i1 %1265, %1272
  %1274 = zext i1 %1273 to i8
  store i8 %1274, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %1275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1276 = select i1 %1273, i64 %1258, i64 %1260
  store i64 %1276, i64* %1275, align 8, !tbaa !2428
  %1277 = load i8, i8* %BRANCH_TAKEN
  %1278 = icmp eq i8 %1277, 1
  br i1 %1278, label %block_400950, label %block_400928

block_40085c:                                     ; preds = %block_400852
  %1279 = load i64, i64* %PC
  %1280 = add i64 %1279, 10
  store i64 %1280, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4010b0__rodata_type* @seg_4010b0__rodata to i64), i64 40), i64* %RSI, align 8, !tbaa !2428
  %1281 = load i64, i64* %RBP
  %1282 = sub i64 %1281, 182
  %1283 = load i64, i64* %PC
  %1284 = add i64 %1283, 7
  store i64 %1284, i64* %PC
  store i64 %1282, i64* %RDX, align 8, !tbaa !2428
  %1285 = load i64, i64* %RBP
  %1286 = sub i64 %1285, 24
  %1287 = load i64, i64* %PC
  %1288 = add i64 %1287, 4
  store i64 %1288, i64* %PC
  %1289 = inttoptr i64 %1286 to i64*
  %1290 = load i64, i64* %1289
  store i64 %1290, i64* %RAX, align 8, !tbaa !2428
  %1291 = load i64, i64* %RAX
  %1292 = add i64 %1291, 56
  %1293 = load i64, i64* %PC
  %1294 = add i64 %1293, 4
  store i64 %1294, i64* %PC
  %1295 = inttoptr i64 %1292 to i64*
  %1296 = load i64, i64* %1295
  store i64 %1296, i64* %RDI, align 8, !tbaa !2428
  %1297 = load i64, i64* %PC
  %1298 = add i64 %1297, 2
  store i64 %1298, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2452
  %1299 = load i64, i64* %PC
  %1300 = sub i64 %1299, 487
  %1301 = load i64, i64* %PC
  %1302 = add i64 %1301, 5
  %1303 = load i64, i64* %PC
  %1304 = add i64 %1303, 5
  store i64 %1304, i64* %PC
  %1305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1306 = load i64, i64* %1305, align 8, !tbaa !2428
  %1307 = add i64 %1306, -8
  %1308 = inttoptr i64 %1307 to i64*
  store i64 %1302, i64* %1308
  store i64 %1307, i64* %1305, align 8, !tbaa !2428
  %1309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1300, i64* %1309, align 8, !tbaa !2428
  %1310 = load i64, i64* %PC
  %1311 = call %struct.Memory* @ext_6020b8___isoc99_sscanf(%struct.State* %0, i64 %1310, %struct.Memory* %MEMORY.1)
  %1312 = load i64, i64* %RBP
  %1313 = sub i64 %1312, 196
  %1314 = load i32, i32* %EAX
  %1315 = zext i32 %1314 to i64
  %1316 = load i64, i64* %PC
  %1317 = add i64 %1316, 6
  store i64 %1317, i64* %PC
  %1318 = inttoptr i64 %1313 to i32*
  store i32 %1314, i32* %1318
  %1319 = load i64, i64* %PC
  %1320 = add i64 %1319, 14
  %1321 = load i64, i64* %PC
  %1322 = add i64 %1321, 5
  store i64 %1322, i64* %PC
  %1323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1320, i64* %1323, align 8, !tbaa !2428
  br label %block_400890

block_400a18:                                     ; preds = %block_400a0c
  %1324 = load i64, i64* %RBP
  %1325 = sub i64 %1324, 40
  %1326 = load i64, i64* %PC
  %1327 = add i64 %1326, 4
  store i64 %1327, i64* %PC
  store i64 %1325, i64* %RDI, align 8, !tbaa !2428
  %1328 = load i64, i64* %PC
  %1329 = add i64 %1328, 468
  %1330 = load i64, i64* %PC
  %1331 = add i64 %1330, 5
  %1332 = load i64, i64* %PC
  %1333 = add i64 %1332, 5
  store i64 %1333, i64* %PC
  %1334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1335 = load i64, i64* %1334, align 8, !tbaa !2428
  %1336 = add i64 %1335, -8
  %1337 = inttoptr i64 %1336 to i64*
  store i64 %1331, i64* %1337
  store i64 %1336, i64* %1334, align 8, !tbaa !2428
  %1338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1329, i64* %1338, align 8, !tbaa !2428
  %1339 = load i64, i64* %PC
  %1340 = call %struct.Memory* @sub_400bf0_init_renamed_(%struct.State* %0, i64 %1339, %struct.Memory* %MEMORY.8)
  %1341 = load i64, i64* %RBP
  %1342 = sub i64 %1341, 40
  %1343 = load i64, i64* %PC
  %1344 = add i64 %1343, 4
  store i64 %1344, i64* %PC
  store i64 %1342, i64* %RSI, align 8, !tbaa !2428
  %1345 = load i64, i64* %RBP
  %1346 = sub i64 %1345, 176
  %1347 = load i64, i64* %PC
  %1348 = add i64 %1347, 7
  store i64 %1348, i64* %PC
  store i64 %1346, i64* %RDX, align 8, !tbaa !2428
  %1349 = load i64, i64* %RBP
  %1350 = sub i64 %1349, 44
  %1351 = load i64, i64* %PC
  %1352 = add i64 %1351, 3
  store i64 %1352, i64* %PC
  %1353 = inttoptr i64 %1350 to i32*
  %1354 = load i32, i32* %1353
  %1355 = zext i32 %1354 to i64
  store i64 %1355, i64* %RDI, align 8, !tbaa !2428
  %1356 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1357 = load i64, i64* %RBP
  %1358 = sub i64 %1357, 64
  %1359 = load i64, i64* %PC
  %1360 = add i64 %1359, 5
  store i64 %1360, i64* %PC
  %1361 = inttoptr i64 %1358 to double*
  %1362 = load double, double* %1361
  %1363 = bitcast i8* %1356 to double*
  store double %1362, double* %1363, align 1, !tbaa !2453
  %1364 = getelementptr inbounds i8, i8* %1356, i64 8
  %1365 = bitcast i8* %1364 to double*
  store double 0.000000e+00, double* %1365, align 1, !tbaa !2453
  %1366 = load i64, i64* %PC
  %1367 = add i64 %1366, 508
  %1368 = load i64, i64* %PC
  %1369 = add i64 %1368, 5
  %1370 = load i64, i64* %PC
  %1371 = add i64 %1370, 5
  store i64 %1371, i64* %PC
  %1372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1373 = load i64, i64* %1372, align 8, !tbaa !2428
  %1374 = add i64 %1373, -8
  %1375 = inttoptr i64 %1374 to i64*
  store i64 %1369, i64* %1375
  store i64 %1374, i64* %1372, align 8, !tbaa !2428
  %1376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1367, i64* %1376, align 8, !tbaa !2428
  %1377 = load i64, i64* %PC
  %1378 = call %struct.Memory* @sub_400c30_simulate_renamed_(%struct.State* %0, i64 %1377, %struct.Memory* %1340)
  %1379 = load i64, i64* %RAX
  %1380 = load i64, i64* %RBP
  %1381 = sub i64 %1380, 52
  %1382 = load i64, i64* %PC
  %1383 = add i64 %1382, 3
  store i64 %1383, i64* %PC
  %1384 = trunc i64 %1379 to i32
  %1385 = inttoptr i64 %1381 to i32*
  %1386 = load i32, i32* %1385
  %1387 = add i32 %1386, %1384
  %1388 = zext i32 %1387 to i64
  store i64 %1388, i64* %RAX, align 8, !tbaa !2428
  %1389 = icmp ult i32 %1387, %1384
  %1390 = icmp ult i32 %1387, %1386
  %1391 = or i1 %1389, %1390
  %1392 = zext i1 %1391 to i8
  %1393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1392, i8* %1393, align 1, !tbaa !2432
  %1394 = and i32 %1387, 255
  %1395 = call i32 @llvm.ctpop.i32(i32 %1394) #16
  %1396 = trunc i32 %1395 to i8
  %1397 = and i8 %1396, 1
  %1398 = xor i8 %1397, 1
  %1399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1398, i8* %1399, align 1, !tbaa !2446
  %1400 = xor i32 %1386, %1384
  %1401 = xor i32 %1400, %1387
  %1402 = lshr i32 %1401, 4
  %1403 = trunc i32 %1402 to i8
  %1404 = and i8 %1403, 1
  %1405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1404, i8* %1405, align 1, !tbaa !2447
  %1406 = icmp eq i32 %1387, 0
  %1407 = zext i1 %1406 to i8
  %1408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1407, i8* %1408, align 1, !tbaa !2448
  %1409 = lshr i32 %1387, 31
  %1410 = trunc i32 %1409 to i8
  %1411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1410, i8* %1411, align 1, !tbaa !2449
  %1412 = lshr i32 %1384, 31
  %1413 = lshr i32 %1386, 31
  %1414 = xor i32 %1409, %1412
  %1415 = xor i32 %1409, %1413
  %1416 = add nuw nsw i32 %1414, %1415
  %1417 = icmp eq i32 %1416, 2
  %1418 = zext i1 %1417 to i8
  %1419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1418, i8* %1419, align 1, !tbaa !2450
  %1420 = load i64, i64* %RBP
  %1421 = sub i64 %1420, 52
  %1422 = load i32, i32* %EAX
  %1423 = zext i32 %1422 to i64
  %1424 = load i64, i64* %PC
  %1425 = add i64 %1424, 3
  store i64 %1425, i64* %PC
  %1426 = inttoptr i64 %1421 to i32*
  store i32 %1422, i32* %1426
  %1427 = load i64, i64* %RBP
  %1428 = sub i64 %1427, 56
  %1429 = load i64, i64* %PC
  %1430 = add i64 %1429, 3
  store i64 %1430, i64* %PC
  %1431 = inttoptr i64 %1428 to i32*
  %1432 = load i32, i32* %1431
  %1433 = zext i32 %1432 to i64
  store i64 %1433, i64* %RAX, align 8, !tbaa !2428
  %1434 = load i64, i64* %RAX
  %1435 = load i64, i64* %PC
  %1436 = add i64 %1435, 3
  store i64 %1436, i64* %PC
  %1437 = trunc i64 %1434 to i32
  %1438 = add i32 1, %1437
  %1439 = zext i32 %1438 to i64
  store i64 %1439, i64* %RAX, align 8, !tbaa !2428
  %1440 = icmp ult i32 %1438, %1437
  %1441 = icmp ult i32 %1438, 1
  %1442 = or i1 %1440, %1441
  %1443 = zext i1 %1442 to i8
  %1444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1443, i8* %1444, align 1, !tbaa !2432
  %1445 = and i32 %1438, 255
  %1446 = call i32 @llvm.ctpop.i32(i32 %1445) #16
  %1447 = trunc i32 %1446 to i8
  %1448 = and i8 %1447, 1
  %1449 = xor i8 %1448, 1
  %1450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1449, i8* %1450, align 1, !tbaa !2446
  %1451 = xor i64 1, %1434
  %1452 = trunc i64 %1451 to i32
  %1453 = xor i32 %1452, %1438
  %1454 = lshr i32 %1453, 4
  %1455 = trunc i32 %1454 to i8
  %1456 = and i8 %1455, 1
  %1457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1456, i8* %1457, align 1, !tbaa !2447
  %1458 = icmp eq i32 %1438, 0
  %1459 = zext i1 %1458 to i8
  %1460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1459, i8* %1460, align 1, !tbaa !2448
  %1461 = lshr i32 %1438, 31
  %1462 = trunc i32 %1461 to i8
  %1463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1462, i8* %1463, align 1, !tbaa !2449
  %1464 = lshr i32 %1437, 31
  %1465 = xor i32 %1461, %1464
  %1466 = add nuw nsw i32 %1465, %1461
  %1467 = icmp eq i32 %1466, 2
  %1468 = zext i1 %1467 to i8
  %1469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1468, i8* %1469, align 1, !tbaa !2450
  %1470 = load i64, i64* %RBP
  %1471 = sub i64 %1470, 56
  %1472 = load i32, i32* %EAX
  %1473 = zext i32 %1472 to i64
  %1474 = load i64, i64* %PC
  %1475 = add i64 %1474, 3
  store i64 %1475, i64* %PC
  %1476 = inttoptr i64 %1471 to i32*
  store i32 %1472, i32* %1476
  %1477 = load i64, i64* %PC
  %1478 = sub i64 %1477, 60
  %1479 = load i64, i64* %PC
  %1480 = add i64 %1479, 5
  store i64 %1480, i64* %PC
  %1481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1478, i64* %1481, align 8, !tbaa !2428
  br label %block_400a0c

block_400811:                                     ; preds = %block_40080a, %block_400821
  %MEMORY.6 = phi %struct.Memory* [ %2, %block_40080a ], [ %MEMORY.6, %block_400821 ]
  %1482 = load i64, i64* %RBP
  %1483 = sub i64 %1482, 56
  %1484 = load i64, i64* %PC
  %1485 = add i64 %1484, 3
  store i64 %1485, i64* %PC
  %1486 = inttoptr i64 %1483 to i32*
  %1487 = load i32, i32* %1486
  %1488 = zext i32 %1487 to i64
  store i64 %1488, i64* %RAX, align 8, !tbaa !2428
  %1489 = load i32, i32* %EAX
  %1490 = zext i32 %1489 to i64
  %1491 = load i64, i64* %PC
  %1492 = add i64 %1491, 7
  store i64 %1492, i64* %PC
  %1493 = load i32, i32* bitcast (%reg_len_type* @reg_len to i32*)
  %1494 = sub i32 %1489, %1493
  %1495 = icmp ult i32 %1489, %1493
  %1496 = zext i1 %1495 to i8
  %1497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1496, i8* %1497, align 1, !tbaa !2432
  %1498 = and i32 %1494, 255
  %1499 = call i32 @llvm.ctpop.i32(i32 %1498) #16
  %1500 = trunc i32 %1499 to i8
  %1501 = and i8 %1500, 1
  %1502 = xor i8 %1501, 1
  %1503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1502, i8* %1503, align 1, !tbaa !2446
  %1504 = xor i32 %1493, %1489
  %1505 = xor i32 %1504, %1494
  %1506 = lshr i32 %1505, 4
  %1507 = trunc i32 %1506 to i8
  %1508 = and i8 %1507, 1
  %1509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1508, i8* %1509, align 1, !tbaa !2447
  %1510 = icmp eq i32 %1494, 0
  %1511 = zext i1 %1510 to i8
  %1512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1511, i8* %1512, align 1, !tbaa !2448
  %1513 = lshr i32 %1494, 31
  %1514 = trunc i32 %1513 to i8
  %1515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1514, i8* %1515, align 1, !tbaa !2449
  %1516 = lshr i32 %1489, 31
  %1517 = lshr i32 %1493, 31
  %1518 = xor i32 %1517, %1516
  %1519 = xor i32 %1513, %1516
  %1520 = add nuw nsw i32 %1519, %1518
  %1521 = icmp eq i32 %1520, 2
  %1522 = zext i1 %1521 to i8
  %1523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1522, i8* %1523, align 1, !tbaa !2450
  %1524 = load i64, i64* %PC
  %1525 = add i64 %1524, 32
  %1526 = load i64, i64* %PC
  %1527 = add i64 %1526, 6
  %1528 = load i64, i64* %PC
  %1529 = add i64 %1528, 6
  store i64 %1529, i64* %PC
  %1530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1531 = load i8, i8* %1530, align 1, !tbaa !2449
  %1532 = icmp ne i8 %1531, 0
  %1533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1534 = load i8, i8* %1533, align 1, !tbaa !2450
  %1535 = icmp ne i8 %1534, 0
  %1536 = xor i1 %1532, %1535
  %1537 = xor i1 %1536, true
  %1538 = zext i1 %1537 to i8
  store i8 %1538, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %1539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1540 = select i1 %1536, i64 %1527, i64 %1525
  store i64 %1540, i64* %1539, align 8, !tbaa !2428
  %1541 = load i8, i8* %BRANCH_TAKEN
  %1542 = icmp eq i8 %1541, 1
  %1543 = load i64, i64* %RBP
  br i1 %1542, label %block_40083b, label %block_400821

block_400821:                                     ; preds = %block_400811
  %1544 = sub i64 %1543, 56
  %1545 = load i64, i64* %PC
  %1546 = add i64 %1545, 4
  store i64 %1546, i64* %PC
  %1547 = inttoptr i64 %1544 to i32*
  %1548 = load i32, i32* %1547
  %1549 = sext i32 %1548 to i64
  store i64 %1549, i64* %RAX, align 8, !tbaa !2428
  %1550 = load i64, i64* %RBP
  %1551 = load i64, i64* %RAX
  %1552 = add i64 %1550, -176
  %1553 = add i64 %1552, %1551
  %1554 = load i64, i64* %PC
  %1555 = add i64 %1554, 8
  store i64 %1555, i64* %PC
  %1556 = inttoptr i64 %1553 to i8*
  store i8 48, i8* %1556
  %1557 = load i64, i64* %RBP
  %1558 = sub i64 %1557, 56
  %1559 = load i64, i64* %PC
  %1560 = add i64 %1559, 3
  store i64 %1560, i64* %PC
  %1561 = inttoptr i64 %1558 to i32*
  %1562 = load i32, i32* %1561
  %1563 = zext i32 %1562 to i64
  store i64 %1563, i64* %RAX, align 8, !tbaa !2428
  %1564 = load i64, i64* %RAX
  %1565 = load i64, i64* %PC
  %1566 = add i64 %1565, 3
  store i64 %1566, i64* %PC
  %1567 = trunc i64 %1564 to i32
  %1568 = add i32 1, %1567
  %1569 = zext i32 %1568 to i64
  store i64 %1569, i64* %RAX, align 8, !tbaa !2428
  %1570 = icmp ult i32 %1568, %1567
  %1571 = icmp ult i32 %1568, 1
  %1572 = or i1 %1570, %1571
  %1573 = zext i1 %1572 to i8
  %1574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1573, i8* %1574, align 1, !tbaa !2432
  %1575 = and i32 %1568, 255
  %1576 = call i32 @llvm.ctpop.i32(i32 %1575) #16
  %1577 = trunc i32 %1576 to i8
  %1578 = and i8 %1577, 1
  %1579 = xor i8 %1578, 1
  %1580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1579, i8* %1580, align 1, !tbaa !2446
  %1581 = xor i64 1, %1564
  %1582 = trunc i64 %1581 to i32
  %1583 = xor i32 %1582, %1568
  %1584 = lshr i32 %1583, 4
  %1585 = trunc i32 %1584 to i8
  %1586 = and i8 %1585, 1
  %1587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1586, i8* %1587, align 1, !tbaa !2447
  %1588 = icmp eq i32 %1568, 0
  %1589 = zext i1 %1588 to i8
  %1590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1589, i8* %1590, align 1, !tbaa !2448
  %1591 = lshr i32 %1568, 31
  %1592 = trunc i32 %1591 to i8
  %1593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1592, i8* %1593, align 1, !tbaa !2449
  %1594 = lshr i32 %1567, 31
  %1595 = xor i32 %1591, %1594
  %1596 = add nuw nsw i32 %1595, %1591
  %1597 = icmp eq i32 %1596, 2
  %1598 = zext i1 %1597 to i8
  %1599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1598, i8* %1599, align 1, !tbaa !2450
  %1600 = load i64, i64* %RBP
  %1601 = sub i64 %1600, 56
  %1602 = load i32, i32* %EAX
  %1603 = zext i32 %1602 to i64
  %1604 = load i64, i64* %PC
  %1605 = add i64 %1604, 3
  store i64 %1605, i64* %PC
  %1606 = inttoptr i64 %1601 to i32*
  store i32 %1602, i32* %1606
  %1607 = load i64, i64* %PC
  %1608 = sub i64 %1607, 37
  %1609 = load i64, i64* %PC
  %1610 = add i64 %1609, 5
  store i64 %1610, i64* %PC
  %1611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1608, i64* %1611, align 8, !tbaa !2428
  br label %block_400811

block_400890:                                     ; preds = %block_400887, %block_40085c
  %MEMORY.7 = phi %struct.Memory* [ %MEMORY.1, %block_400887 ], [ %1311, %block_40085c ]
  %1612 = load i64, i64* %RBP
  %1613 = sub i64 %1612, 16
  %1614 = load i64, i64* %PC
  %1615 = add i64 %1614, 4
  store i64 %1615, i64* %PC
  %1616 = inttoptr i64 %1613 to i32*
  %1617 = load i32, i32* %1616
  %1618 = sub i32 %1617, 8
  %1619 = icmp ult i32 %1617, 8
  %1620 = zext i1 %1619 to i8
  %1621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1620, i8* %1621, align 1, !tbaa !2432
  %1622 = and i32 %1618, 255
  %1623 = call i32 @llvm.ctpop.i32(i32 %1622) #16
  %1624 = trunc i32 %1623 to i8
  %1625 = and i8 %1624, 1
  %1626 = xor i8 %1625, 1
  %1627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1626, i8* %1627, align 1, !tbaa !2446
  %1628 = xor i32 %1617, 8
  %1629 = xor i32 %1628, %1618
  %1630 = lshr i32 %1629, 4
  %1631 = trunc i32 %1630 to i8
  %1632 = and i8 %1631, 1
  %1633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1632, i8* %1633, align 1, !tbaa !2447
  %1634 = icmp eq i32 %1618, 0
  %1635 = zext i1 %1634 to i8
  %1636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1635, i8* %1636, align 1, !tbaa !2448
  %1637 = lshr i32 %1618, 31
  %1638 = trunc i32 %1637 to i8
  %1639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1638, i8* %1639, align 1, !tbaa !2449
  %1640 = lshr i32 %1617, 31
  %1641 = xor i32 %1637, %1640
  %1642 = add nuw nsw i32 %1641, %1640
  %1643 = icmp eq i32 %1642, 2
  %1644 = zext i1 %1643 to i8
  %1645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1644, i8* %1645, align 1, !tbaa !2450
  %1646 = load i64, i64* %PC
  %1647 = add i64 %1646, 56
  %1648 = load i64, i64* %PC
  %1649 = add i64 %1648, 6
  %1650 = load i64, i64* %PC
  %1651 = add i64 %1650, 6
  store i64 %1651, i64* %PC
  %1652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1653 = load i8, i8* %1652, align 1, !tbaa !2448
  %1654 = icmp ne i8 %1653, 0
  %1655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1656 = load i8, i8* %1655, align 1, !tbaa !2449
  %1657 = icmp ne i8 %1656, 0
  %1658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1659 = load i8, i8* %1658, align 1, !tbaa !2450
  %1660 = icmp ne i8 %1659, 0
  %1661 = xor i1 %1657, %1660
  %1662 = or i1 %1654, %1661
  %1663 = zext i1 %1662 to i8
  store i8 %1663, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %1664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1665 = select i1 %1662, i64 %1647, i64 %1649
  store i64 %1665, i64* %1664, align 8, !tbaa !2428
  %1666 = load i8, i8* %BRANCH_TAKEN
  %1667 = icmp eq i8 %1666, 1
  br i1 %1667, label %block_4008cc, label %block_40089a

block_400a8e:                                     ; preds = %block_400a82
  store i64 %2026, i64* %PC
  store i64 1, i64* %RDI, align 8, !tbaa !2428
  %1668 = load i64, i64* %RBP
  %1669 = sub i64 %1668, 40
  %1670 = load i64, i64* %PC
  %1671 = add i64 %1670, 4
  store i64 %1671, i64* %PC
  store i64 %1669, i64* %RSI, align 8, !tbaa !2428
  %1672 = load i64, i64* %RBP
  %1673 = sub i64 %1672, 176
  %1674 = load i64, i64* %PC
  %1675 = add i64 %1674, 7
  store i64 %1675, i64* %PC
  store i64 %1673, i64* %RDX, align 8, !tbaa !2428
  %1676 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1677 = load i64, i64* %RBP
  %1678 = sub i64 %1677, 64
  %1679 = load i64, i64* %PC
  %1680 = add i64 %1679, 5
  store i64 %1680, i64* %PC
  %1681 = inttoptr i64 %1678 to double*
  %1682 = load double, double* %1681
  %1683 = bitcast i8* %1676 to double*
  store double %1682, double* %1683, align 1, !tbaa !2453
  %1684 = getelementptr inbounds i8, i8* %1676, i64 8
  %1685 = bitcast i8* %1684 to double*
  store double 0.000000e+00, double* %1685, align 1, !tbaa !2453
  %1686 = load i64, i64* %PC
  %1687 = add i64 %1686, 397
  %1688 = load i64, i64* %PC
  %1689 = add i64 %1688, 5
  %1690 = load i64, i64* %PC
  %1691 = add i64 %1690, 5
  store i64 %1691, i64* %PC
  %1692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1693 = load i64, i64* %1692, align 8, !tbaa !2428
  %1694 = add i64 %1693, -8
  %1695 = inttoptr i64 %1694 to i64*
  store i64 %1689, i64* %1695
  store i64 %1694, i64* %1692, align 8, !tbaa !2428
  %1696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1687, i64* %1696, align 8, !tbaa !2428
  %1697 = load i64, i64* %PC
  %1698 = call %struct.Memory* @sub_400c30_simulate_renamed_(%struct.State* %0, i64 %1697, %struct.Memory* %MEMORY.9)
  %1699 = load i64, i64* %RAX
  %1700 = load i64, i64* %RBP
  %1701 = sub i64 %1700, 52
  %1702 = load i64, i64* %PC
  %1703 = add i64 %1702, 3
  store i64 %1703, i64* %PC
  %1704 = trunc i64 %1699 to i32
  %1705 = inttoptr i64 %1701 to i32*
  %1706 = load i32, i32* %1705
  %1707 = add i32 %1706, %1704
  %1708 = zext i32 %1707 to i64
  store i64 %1708, i64* %RAX, align 8, !tbaa !2428
  %1709 = icmp ult i32 %1707, %1704
  %1710 = icmp ult i32 %1707, %1706
  %1711 = or i1 %1709, %1710
  %1712 = zext i1 %1711 to i8
  %1713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1712, i8* %1713, align 1, !tbaa !2432
  %1714 = and i32 %1707, 255
  %1715 = call i32 @llvm.ctpop.i32(i32 %1714) #16
  %1716 = trunc i32 %1715 to i8
  %1717 = and i8 %1716, 1
  %1718 = xor i8 %1717, 1
  %1719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1718, i8* %1719, align 1, !tbaa !2446
  %1720 = xor i32 %1706, %1704
  %1721 = xor i32 %1720, %1707
  %1722 = lshr i32 %1721, 4
  %1723 = trunc i32 %1722 to i8
  %1724 = and i8 %1723, 1
  %1725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1724, i8* %1725, align 1, !tbaa !2447
  %1726 = icmp eq i32 %1707, 0
  %1727 = zext i1 %1726 to i8
  %1728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1727, i8* %1728, align 1, !tbaa !2448
  %1729 = lshr i32 %1707, 31
  %1730 = trunc i32 %1729 to i8
  %1731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1730, i8* %1731, align 1, !tbaa !2449
  %1732 = lshr i32 %1704, 31
  %1733 = lshr i32 %1706, 31
  %1734 = xor i32 %1729, %1732
  %1735 = xor i32 %1729, %1733
  %1736 = add nuw nsw i32 %1734, %1735
  %1737 = icmp eq i32 %1736, 2
  %1738 = zext i1 %1737 to i8
  %1739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1738, i8* %1739, align 1, !tbaa !2450
  %1740 = load i64, i64* %RBP
  %1741 = sub i64 %1740, 52
  %1742 = load i32, i32* %EAX
  %1743 = zext i32 %1742 to i64
  %1744 = load i64, i64* %PC
  %1745 = add i64 %1744, 3
  store i64 %1745, i64* %PC
  %1746 = inttoptr i64 %1741 to i32*
  store i32 %1742, i32* %1746
  %1747 = load i64, i64* %RBP
  %1748 = sub i64 %1747, 56
  %1749 = load i64, i64* %PC
  %1750 = add i64 %1749, 3
  store i64 %1750, i64* %PC
  %1751 = inttoptr i64 %1748 to i32*
  %1752 = load i32, i32* %1751
  %1753 = zext i32 %1752 to i64
  store i64 %1753, i64* %RAX, align 8, !tbaa !2428
  %1754 = load i64, i64* %RAX
  %1755 = load i64, i64* %PC
  %1756 = add i64 %1755, 3
  store i64 %1756, i64* %PC
  %1757 = trunc i64 %1754 to i32
  %1758 = add i32 1, %1757
  %1759 = zext i32 %1758 to i64
  store i64 %1759, i64* %RAX, align 8, !tbaa !2428
  %1760 = icmp ult i32 %1758, %1757
  %1761 = icmp ult i32 %1758, 1
  %1762 = or i1 %1760, %1761
  %1763 = zext i1 %1762 to i8
  %1764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1763, i8* %1764, align 1, !tbaa !2432
  %1765 = and i32 %1758, 255
  %1766 = call i32 @llvm.ctpop.i32(i32 %1765) #16
  %1767 = trunc i32 %1766 to i8
  %1768 = and i8 %1767, 1
  %1769 = xor i8 %1768, 1
  %1770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1769, i8* %1770, align 1, !tbaa !2446
  %1771 = xor i64 1, %1754
  %1772 = trunc i64 %1771 to i32
  %1773 = xor i32 %1772, %1758
  %1774 = lshr i32 %1773, 4
  %1775 = trunc i32 %1774 to i8
  %1776 = and i8 %1775, 1
  %1777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1776, i8* %1777, align 1, !tbaa !2447
  %1778 = icmp eq i32 %1758, 0
  %1779 = zext i1 %1778 to i8
  %1780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1779, i8* %1780, align 1, !tbaa !2448
  %1781 = lshr i32 %1758, 31
  %1782 = trunc i32 %1781 to i8
  %1783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1782, i8* %1783, align 1, !tbaa !2449
  %1784 = lshr i32 %1757, 31
  %1785 = xor i32 %1781, %1784
  %1786 = add nuw nsw i32 %1785, %1781
  %1787 = icmp eq i32 %1786, 2
  %1788 = zext i1 %1787 to i8
  %1789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1788, i8* %1789, align 1, !tbaa !2450
  %1790 = load i64, i64* %RBP
  %1791 = sub i64 %1790, 56
  %1792 = load i32, i32* %EAX
  %1793 = zext i32 %1792 to i64
  %1794 = load i64, i64* %PC
  %1795 = add i64 %1794, 3
  store i64 %1795, i64* %PC
  %1796 = inttoptr i64 %1791 to i32*
  store i32 %1792, i32* %1796
  %1797 = load i64, i64* %PC
  %1798 = sub i64 %1797, 53
  %1799 = load i64, i64* %PC
  %1800 = add i64 %1799, 5
  store i64 %1800, i64* %PC
  %1801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1798, i64* %1801, align 8, !tbaa !2428
  br label %block_400a82

block_40089a:                                     ; preds = %block_400890
  %1802 = load i64, i64* %PC
  %1803 = add i64 %1802, 10
  store i64 %1803, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4010b0__rodata_type* @seg_4010b0__rodata to i64), i64 40), i64* %RSI, align 8, !tbaa !2428
  %1804 = load i64, i64* %RBP
  %1805 = sub i64 %1804, 182
  %1806 = load i64, i64* %PC
  %1807 = add i64 %1806, 7
  store i64 %1807, i64* %PC
  store i64 %1805, i64* %RAX, align 8, !tbaa !2428
  %1808 = load i64, i64* %RBP
  %1809 = sub i64 %1808, 24
  %1810 = load i64, i64* %PC
  %1811 = add i64 %1810, 4
  store i64 %1811, i64* %PC
  %1812 = inttoptr i64 %1809 to i64*
  %1813 = load i64, i64* %1812
  store i64 %1813, i64* %RCX, align 8, !tbaa !2428
  %1814 = load i64, i64* %RCX
  %1815 = add i64 %1814, 64
  %1816 = load i64, i64* %PC
  %1817 = add i64 %1816, 4
  store i64 %1817, i64* %PC
  %1818 = inttoptr i64 %1815 to i64*
  %1819 = load i64, i64* %1818
  store i64 %1819, i64* %RDI, align 8, !tbaa !2428
  %1820 = load i64, i64* %RAX
  %1821 = load i64, i64* %PC
  %1822 = add i64 %1821, 4
  store i64 %1822, i64* %PC
  %1823 = add i64 2, %1820
  store i64 %1823, i64* %RAX, align 8, !tbaa !2428
  %1824 = icmp ult i64 %1823, %1820
  %1825 = icmp ult i64 %1823, 2
  %1826 = or i1 %1824, %1825
  %1827 = zext i1 %1826 to i8
  %1828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1827, i8* %1828, align 1, !tbaa !2432
  %1829 = trunc i64 %1823 to i32
  %1830 = and i32 %1829, 255
  %1831 = call i32 @llvm.ctpop.i32(i32 %1830) #16
  %1832 = trunc i32 %1831 to i8
  %1833 = and i8 %1832, 1
  %1834 = xor i8 %1833, 1
  %1835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1834, i8* %1835, align 1, !tbaa !2446
  %1836 = xor i64 2, %1820
  %1837 = xor i64 %1836, %1823
  %1838 = lshr i64 %1837, 4
  %1839 = trunc i64 %1838 to i8
  %1840 = and i8 %1839, 1
  %1841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1840, i8* %1841, align 1, !tbaa !2447
  %1842 = icmp eq i64 %1823, 0
  %1843 = zext i1 %1842 to i8
  %1844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1843, i8* %1844, align 1, !tbaa !2448
  %1845 = lshr i64 %1823, 63
  %1846 = trunc i64 %1845 to i8
  %1847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1846, i8* %1847, align 1, !tbaa !2449
  %1848 = lshr i64 %1820, 63
  %1849 = xor i64 %1845, %1848
  %1850 = add nuw nsw i64 %1849, %1845
  %1851 = icmp eq i64 %1850, 2
  %1852 = zext i1 %1851 to i8
  %1853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1852, i8* %1853, align 1, !tbaa !2450
  %1854 = load i64, i64* %RAX
  %1855 = load i64, i64* %PC
  %1856 = add i64 %1855, 3
  store i64 %1856, i64* %PC
  store i64 %1854, i64* %RDX, align 8, !tbaa !2428
  %1857 = load i64, i64* %PC
  %1858 = add i64 %1857, 2
  store i64 %1858, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2452
  %1859 = load i64, i64* %PC
  %1860 = sub i64 %1859, 556
  %1861 = load i64, i64* %PC
  %1862 = add i64 %1861, 5
  %1863 = load i64, i64* %PC
  %1864 = add i64 %1863, 5
  store i64 %1864, i64* %PC
  %1865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1866 = load i64, i64* %1865, align 8, !tbaa !2428
  %1867 = add i64 %1866, -8
  %1868 = inttoptr i64 %1867 to i64*
  store i64 %1862, i64* %1868
  store i64 %1867, i64* %1865, align 8, !tbaa !2428
  %1869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1860, i64* %1869, align 8, !tbaa !2428
  %1870 = load i64, i64* %PC
  %1871 = call %struct.Memory* @ext_6020b8___isoc99_sscanf(%struct.State* %0, i64 %1870, %struct.Memory* %MEMORY.7)
  %1872 = load i64, i64* %RBP
  %1873 = sub i64 %1872, 200
  %1874 = load i32, i32* %EAX
  %1875 = zext i32 %1874 to i64
  %1876 = load i64, i64* %PC
  %1877 = add i64 %1876, 6
  store i64 %1877, i64* %PC
  %1878 = inttoptr i64 %1873 to i32*
  store i32 %1874, i32* %1878
  %1879 = load i64, i64* %PC
  %1880 = add i64 %1879, 14
  %1881 = load i64, i64* %PC
  %1882 = add i64 %1881, 5
  store i64 %1882, i64* %PC
  %1883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1880, i64* %1883, align 8, !tbaa !2428
  br label %block_4008d5

block_400a0c:                                     ; preds = %block_400a05, %block_400a18
  %MEMORY.8 = phi %struct.Memory* [ %349, %block_400a05 ], [ %1378, %block_400a18 ]
  %1884 = load i64, i64* %RBP
  %1885 = sub i64 %1884, 56
  %1886 = load i64, i64* %PC
  %1887 = add i64 %1886, 3
  store i64 %1887, i64* %PC
  %1888 = inttoptr i64 %1885 to i32*
  %1889 = load i32, i32* %1888
  %1890 = zext i32 %1889 to i64
  store i64 %1890, i64* %RAX, align 8, !tbaa !2428
  %1891 = load i32, i32* %EAX
  %1892 = zext i32 %1891 to i64
  %1893 = load i64, i64* %RBP
  %1894 = sub i64 %1893, 48
  %1895 = load i64, i64* %PC
  %1896 = add i64 %1895, 3
  store i64 %1896, i64* %PC
  %1897 = inttoptr i64 %1894 to i32*
  %1898 = load i32, i32* %1897
  %1899 = sub i32 %1891, %1898
  %1900 = icmp ult i32 %1891, %1898
  %1901 = zext i1 %1900 to i8
  %1902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1901, i8* %1902, align 1, !tbaa !2432
  %1903 = and i32 %1899, 255
  %1904 = call i32 @llvm.ctpop.i32(i32 %1903) #16
  %1905 = trunc i32 %1904 to i8
  %1906 = and i8 %1905, 1
  %1907 = xor i8 %1906, 1
  %1908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1907, i8* %1908, align 1, !tbaa !2446
  %1909 = xor i32 %1898, %1891
  %1910 = xor i32 %1909, %1899
  %1911 = lshr i32 %1910, 4
  %1912 = trunc i32 %1911 to i8
  %1913 = and i8 %1912, 1
  %1914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1913, i8* %1914, align 1, !tbaa !2447
  %1915 = icmp eq i32 %1899, 0
  %1916 = zext i1 %1915 to i8
  %1917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1916, i8* %1917, align 1, !tbaa !2448
  %1918 = lshr i32 %1899, 31
  %1919 = trunc i32 %1918 to i8
  %1920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1919, i8* %1920, align 1, !tbaa !2449
  %1921 = lshr i32 %1891, 31
  %1922 = lshr i32 %1898, 31
  %1923 = xor i32 %1922, %1921
  %1924 = xor i32 %1918, %1921
  %1925 = add nuw nsw i32 %1924, %1923
  %1926 = icmp eq i32 %1925, 2
  %1927 = zext i1 %1926 to i8
  %1928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1927, i8* %1928, align 1, !tbaa !2450
  %1929 = load i64, i64* %PC
  %1930 = add i64 %1929, 59
  %1931 = load i64, i64* %PC
  %1932 = add i64 %1931, 6
  %1933 = load i64, i64* %PC
  %1934 = add i64 %1933, 6
  store i64 %1934, i64* %PC
  %1935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1936 = load i8, i8* %1935, align 1, !tbaa !2449
  %1937 = icmp ne i8 %1936, 0
  %1938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1939 = load i8, i8* %1938, align 1, !tbaa !2450
  %1940 = icmp ne i8 %1939, 0
  %1941 = xor i1 %1937, %1940
  %1942 = xor i1 %1941, true
  %1943 = zext i1 %1942 to i8
  store i8 %1943, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %1944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1945 = select i1 %1941, i64 %1932, i64 %1930
  store i64 %1945, i64* %1944, align 8, !tbaa !2428
  %1946 = load i8, i8* %BRANCH_TAKEN
  %1947 = icmp eq i8 %1946, 1
  br i1 %1947, label %block_400a4d, label %block_400a18

block_40080a:                                     ; preds = %block_4007a0
  %1948 = sub i64 %217, 56
  %1949 = load i64, i64* %PC
  %1950 = add i64 %1949, 7
  store i64 %1950, i64* %PC
  %1951 = inttoptr i64 %1948 to i32*
  store i32 1, i32* %1951
  br label %block_400811

block_400887:                                     ; preds = %block_400852
  %1952 = load i64, i64* %RBP
  %1953 = sub i64 %1952, 182
  %1954 = load i64, i64* %PC
  %1955 = add i64 %1954, 9
  store i64 %1955, i64* %PC
  %1956 = inttoptr i64 %1953 to i16*
  store i16 1, i16* %1956
  br label %block_400890

block_400a05:                                     ; preds = %block_4009d8
  %1957 = sub i64 %394, 56
  %1958 = load i64, i64* %PC
  %1959 = add i64 %1958, 7
  store i64 %1959, i64* %PC
  %1960 = inttoptr i64 %1957 to i32*
  store i32 0, i32* %1960
  br label %block_400a0c

block_400a82:                                     ; preds = %block_400a8e, %block_400a52
  %MEMORY.9 = phi %struct.Memory* [ %730, %block_400a52 ], [ %1698, %block_400a8e ]
  %1961 = load i64, i64* %RBP
  %1962 = sub i64 %1961, 56
  %1963 = load i64, i64* %PC
  %1964 = add i64 %1963, 3
  store i64 %1964, i64* %PC
  %1965 = inttoptr i64 %1962 to i32*
  %1966 = load i32, i32* %1965
  %1967 = zext i32 %1966 to i64
  store i64 %1967, i64* %RAX, align 8, !tbaa !2428
  %1968 = load i32, i32* %EAX
  %1969 = zext i32 %1968 to i64
  %1970 = load i64, i64* %RBP
  %1971 = sub i64 %1970, 48
  %1972 = load i64, i64* %PC
  %1973 = add i64 %1972, 3
  store i64 %1973, i64* %PC
  %1974 = inttoptr i64 %1971 to i32*
  %1975 = load i32, i32* %1974
  %1976 = sub i32 %1968, %1975
  %1977 = icmp ult i32 %1968, %1975
  %1978 = zext i1 %1977 to i8
  %1979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1978, i8* %1979, align 1, !tbaa !2432
  %1980 = and i32 %1976, 255
  %1981 = call i32 @llvm.ctpop.i32(i32 %1980) #16
  %1982 = trunc i32 %1981 to i8
  %1983 = and i8 %1982, 1
  %1984 = xor i8 %1983, 1
  %1985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1984, i8* %1985, align 1, !tbaa !2446
  %1986 = xor i32 %1975, %1968
  %1987 = xor i32 %1986, %1976
  %1988 = lshr i32 %1987, 4
  %1989 = trunc i32 %1988 to i8
  %1990 = and i8 %1989, 1
  %1991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1990, i8* %1991, align 1, !tbaa !2447
  %1992 = icmp eq i32 %1976, 0
  %1993 = zext i1 %1992 to i8
  %1994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1993, i8* %1994, align 1, !tbaa !2448
  %1995 = lshr i32 %1976, 31
  %1996 = trunc i32 %1995 to i8
  %1997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1996, i8* %1997, align 1, !tbaa !2449
  %1998 = lshr i32 %1968, 31
  %1999 = lshr i32 %1975, 31
  %2000 = xor i32 %1999, %1998
  %2001 = xor i32 %1995, %1998
  %2002 = add nuw nsw i32 %2001, %2000
  %2003 = icmp eq i32 %2002, 2
  %2004 = zext i1 %2003 to i8
  %2005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2004, i8* %2005, align 1, !tbaa !2450
  %2006 = load i64, i64* %PC
  %2007 = add i64 %2006, 52
  %2008 = load i64, i64* %PC
  %2009 = add i64 %2008, 6
  %2010 = load i64, i64* %PC
  %2011 = add i64 %2010, 6
  store i64 %2011, i64* %PC
  %2012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2013 = load i8, i8* %2012, align 1, !tbaa !2449
  %2014 = icmp ne i8 %2013, 0
  %2015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2016 = load i8, i8* %2015, align 1, !tbaa !2450
  %2017 = icmp ne i8 %2016, 0
  %2018 = xor i1 %2014, %2017
  %2019 = xor i1 %2018, true
  %2020 = zext i1 %2019 to i8
  store i8 %2020, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %2021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2022 = select i1 %2018, i64 %2009, i64 %2007
  store i64 %2022, i64* %2021, align 8, !tbaa !2428
  %2023 = load i8, i8* %BRANCH_TAKEN
  %2024 = icmp eq i8 %2023, 1
  %2025 = load i64, i64* %PC
  %2026 = add i64 %2025, 5
  br i1 %2024, label %block_400abc, label %block_400a8e
}

; Function Attrs: noinline
define %struct.Memory* @sub_4006b0__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4006b0:
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
  store i64 ptrtoint (void ()* @callback_sub_4010a0___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  %108 = load i64, i64* %PC
  %109 = add i64 %108, 7
  store i64 %109, i64* %PC
  store i64 ptrtoint (void ()* @callback_sub_401030___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
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
define %struct.Memory* @sub_400fe0_kill_list(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400fe0:
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
  store i8 %46, i8* %47, align 1, !tbaa !2447
  %48 = icmp eq i64 %31, 0
  %49 = zext i1 %48 to i8
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %49, i8* %50, align 1, !tbaa !2448
  %51 = lshr i64 %31, 63
  %52 = trunc i64 %51 to i8
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %52, i8* %53, align 1, !tbaa !2449
  %54 = lshr i64 %28, 63
  %55 = xor i64 %51, %54
  %56 = add nuw nsw i64 %55, %54
  %57 = icmp eq i64 %56, 2
  %58 = zext i1 %57 to i8
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %58, i8* %59, align 1, !tbaa !2450
  %60 = load i64, i64* %RBP
  %61 = sub i64 %60, 8
  %62 = load i64, i64* %RDI
  %63 = load i64, i64* %PC
  %64 = add i64 %63, 4
  store i64 %64, i64* %PC
  %65 = inttoptr i64 %61 to i64*
  store i64 %62, i64* %65
  br label %block_400fec

block_400ff7:                                     ; preds = %block_400fec
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
  br label %block_400fec

block_400fec:                                     ; preds = %block_400ff7, %block_400fe0
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400fe0 ], [ %105, %block_400ff7 ]
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
  store i8 0, i8* %137, align 1, !tbaa !2447
  %138 = icmp eq i64 %128, 0
  %139 = zext i1 %138 to i8
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %139, i8* %140, align 1, !tbaa !2448
  %141 = lshr i64 %128, 63
  %142 = trunc i64 %141 to i8
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %142, i8* %143, align 1, !tbaa !2449
  %144 = lshr i64 %128, 63
  %145 = xor i64 %141, %144
  %146 = add nuw nsw i64 %145, %144
  %147 = icmp eq i64 %146, 2
  %148 = zext i1 %147 to i8
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %148, i8* %149, align 1, !tbaa !2450
  %150 = load i64, i64* %PC
  %151 = add i64 %150, 43
  %152 = load i64, i64* %PC
  %153 = add i64 %152, 6
  %154 = load i64, i64* %PC
  %155 = add i64 %154, 6
  store i64 %155, i64* %PC
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %157 = load i8, i8* %156, align 1, !tbaa !2448
  store i8 %157, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %159 = icmp ne i8 %157, 0
  %160 = select i1 %159, i64 %151, i64 %153
  store i64 %160, i64* %158, align 8, !tbaa !2428
  %161 = load i8, i8* %BRANCH_TAKEN
  %162 = icmp eq i8 %161, 1
  br i1 %162, label %block_40101c, label %block_400ff7

block_40101c:                                     ; preds = %block_400fec
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
  store i8 %183, i8* %184, align 1, !tbaa !2447
  %185 = icmp eq i64 %166, 0
  %186 = zext i1 %185 to i8
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %186, i8* %187, align 1, !tbaa !2448
  %188 = lshr i64 %166, 63
  %189 = trunc i64 %188 to i8
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %189, i8* %190, align 1, !tbaa !2449
  %191 = lshr i64 %163, 63
  %192 = xor i64 %188, %191
  %193 = add nuw nsw i64 %192, %188
  %194 = icmp eq i64 %193, 2
  %195 = zext i1 %194 to i8
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %195, i8* %196, align 1, !tbaa !2450
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
define %struct.Memory* @sub_4010a0___libc_csu_fini(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4010a0:
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
define %struct.Memory* @sub_401030___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  %211 = call %struct.Memory* @sub_4005f8__init_proc_renamed_(%struct.State* %0, i64 %210, %struct.Memory* %2)
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
  store i8 %240, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %242 = icmp ne i8 %240, 0
  %243 = select i1 %242, i64 %234, i64 %236
  store i64 %243, i64* %241, align 8, !tbaa !2428
  %244 = load i8, i8* %BRANCH_TAKEN
  %245 = icmp eq i8 %244, 1
  br i1 %245, label %block_401086, label %block_401066

block_401086:                                     ; preds = %block_401070, %block_401030
  %MEMORY.0 = phi %struct.Memory* [ %211, %block_401030 ], [ %387, %block_401070 ]
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

block_401066:                                     ; preds = %block_401030
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
  br label %block_401070

block_401070:                                     ; preds = %block_401070, %block_401066
  %MEMORY.1 = phi %struct.Memory* [ %211, %block_401066 ], [ %387, %block_401070 ]
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
  store i8 %466, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %468 = select i1 %465, i64 %458, i64 %460
  store i64 %468, i64* %467, align 8, !tbaa !2428
  %469 = load i8, i8* %BRANCH_TAKEN
  %470 = icmp eq i8 %469, 1
  br i1 %470, label %block_401070, label %block_401086
}

; Function Attrs: noinline
define %struct.Memory* @sub_400760___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400760:
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
  store i8 %43, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %45 = select i1 %42, i64 %35, i64 %37
  store i64 %45, i64* %44, align 8, !tbaa !2428
  %46 = load i8, i8* %BRANCH_TAKEN
  %47 = icmp eq i8 %46, 1
  br i1 %47, label %block_400780, label %block_400769

block_400780:                                     ; preds = %block_400760
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

block_400769:                                     ; preds = %block_400760
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
  %78 = call %struct.Memory* @sub_4006f0_deregister_tm_clones_renamed_(%struct.State* %0, i64 %77, %struct.Memory* %2)
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
define %struct.Memory* @sub_4010a4__term_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4010a4:
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
define %struct.Memory* @sub_4006f0_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4006f0:
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
  %60 = xor i64 lshr (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 63), %59
  %61 = xor i64 %56, %59
  %62 = add nuw nsw i64 %61, %60
  %63 = icmp eq i64 %62, 2
  %64 = zext i1 %63 to i8
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %64, i8* %65, align 1, !tbaa !2450
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
  %76 = load i8, i8* %75, align 1, !tbaa !2448
  store i8 %76, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %78 = icmp ne i8 %76, 0
  %79 = select i1 %78, i64 %70, i64 %72
  store i64 %79, i64* %77, align 8, !tbaa !2428
  %80 = load i8, i8* %BRANCH_TAKEN
  %81 = icmp eq i8 %80, 1
  br i1 %81, label %block_400718, label %block_400701

block_400718:                                     ; preds = %block_400701, %block_400713, %block_4006f0
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4006f0 ], [ %2, %block_400701 ], [ %2, %block_400713 ]
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
  %90 = add i64 %89, 1
  store i64 %90, i64* %PC
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %92 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %93 = load i64, i64* %92, align 8, !tbaa !2428
  %94 = inttoptr i64 %93 to i64*
  %95 = load i64, i64* %94
  store i64 %95, i64* %91, align 8, !tbaa !2428
  %96 = add i64 %93, 8
  store i64 %96, i64* %92, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_40071a:                                     ; preds = %block_40070b
  %97 = load i64, i64* %RAX
  %98 = load i64, i64* %RAX
  %99 = add i64 %98, %97
  %100 = load i16, i16* %AX
  %101 = zext i16 %100 to i64
  %102 = load i64, i64* %PC
  %103 = add i64 %102, 6
  store i64 %103, i64* %PC
  %104 = load i64, i64* %PC
  %105 = tail call %struct.Memory* @sub_400720_register_tm_clones(%struct.State* %0, i64 %104, %struct.Memory* %2)
  ret %struct.Memory* %105

block_400713:                                     ; preds = %block_40070b
  %106 = load i64, i64* %RAX
  %107 = load i64, i64* %RAX
  %108 = add i64 %107, %106
  %109 = load i32, i32* %EAX
  %110 = zext i32 %109 to i64
  %111 = load i64, i64* %PC
  %112 = add i64 %111, 5
  store i64 %112, i64* %PC
  br label %block_400718

block_40070b:                                     ; preds = %block_400701
  %113 = load i64, i64* %PC
  %114 = add i64 %113, 1
  store i64 %114, i64* %PC
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %116 = load i64, i64* %115, align 8, !tbaa !2428
  %117 = add i64 %116, 8
  %118 = inttoptr i64 %116 to i64*
  %119 = load i64, i64* %118
  store i64 %119, i64* %RBP, align 8, !tbaa !2428
  store i64 %117, i64* %115, align 8, !tbaa !2428
  %120 = load i64, i64* %PC
  %121 = add i64 %120, 5
  store i64 %121, i64* %PC
  store i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64* %RDI, align 8, !tbaa !2428
  %122 = load i64, i64* %RAX
  %123 = load i64, i64* %PC
  %124 = add i64 %123, 2
  store i64 %124, i64* %PC
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %122, i64* %125, align 8, !tbaa !2428
  %126 = load i64, i64* %PC
  switch i64 %126, label %163 [
    i64 4196122, label %block_40071a
    i64 4196115, label %block_400713
  ]

block_400701:                                     ; preds = %block_4006f0
  %127 = load i64, i64* %PC
  %128 = add i64 %127, 5
  store i64 %128, i64* %PC
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  %129 = load i64, i64* %RAX
  %130 = load i64, i64* %RAX
  %131 = load i64, i64* %PC
  %132 = add i64 %131, 3
  store i64 %132, i64* %PC
  %133 = and i64 %130, %129
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %134, align 1, !tbaa !2432
  %135 = trunc i64 %133 to i32
  %136 = and i32 %135, 255
  %137 = call i32 @llvm.ctpop.i32(i32 %136) #16
  %138 = trunc i32 %137 to i8
  %139 = and i8 %138, 1
  %140 = xor i8 %139, 1
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %140, i8* %141, align 1, !tbaa !2446
  %142 = icmp eq i64 %133, 0
  %143 = zext i1 %142 to i8
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %143, i8* %144, align 1, !tbaa !2448
  %145 = lshr i64 %133, 63
  %146 = trunc i64 %145 to i8
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %146, i8* %147, align 1, !tbaa !2449
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %148, align 1, !tbaa !2450
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %149, align 1, !tbaa !2447
  %150 = load i64, i64* %PC
  %151 = add i64 %150, 15
  %152 = load i64, i64* %PC
  %153 = add i64 %152, 2
  %154 = load i64, i64* %PC
  %155 = add i64 %154, 2
  store i64 %155, i64* %PC
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %157 = load i8, i8* %156, align 1, !tbaa !2448
  store i8 %157, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %159 = icmp ne i8 %157, 0
  %160 = select i1 %159, i64 %151, i64 %153
  store i64 %160, i64* %158, align 8, !tbaa !2428
  %161 = load i8, i8* %BRANCH_TAKEN
  %162 = icmp eq i8 %161, 1
  br i1 %162, label %block_400718, label %block_40070b

; <label>:163:                                    ; preds = %block_40070b
  %164 = load i64, i64* %PC
  %165 = tail call %struct.Memory* @__remill_jump(%struct.State* %0, i64 %164, %struct.Memory* %2)
  ret %struct.Memory* %165
}

; Function Attrs: noinline
define %struct.Memory* @sub_4005f8__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4005f8:
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
  store i8 %75, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %77 = icmp ne i8 %75, 0
  %78 = select i1 %77, i64 %69, i64 %71
  store i64 %78, i64* %76, align 8, !tbaa !2428
  %79 = load i8, i8* %BRANCH_TAKEN
  %80 = icmp eq i8 %79, 1
  br i1 %80, label %block_40060a, label %block_400608

block_400608:                                     ; preds = %block_4005f8
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
  br label %block_40060a

block_40060a:                                     ; preds = %block_400608, %block_4005f8
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4005f8 ], [ %92, %block_400608 ]
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
define %struct.Memory* @sub_400720_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400720:
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
  %63 = xor i64 lshr (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 63), %62
  %64 = xor i64 %59, %62
  %65 = add nuw nsw i64 %64, %63
  %66 = icmp eq i64 %65, 2
  %67 = zext i1 %66 to i8
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %67, i8* %68, align 1, !tbaa !2450
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
  store i8 %140, i8* %141, align 1, !tbaa !2447
  %142 = icmp eq i64 %123, 0
  %143 = zext i1 %142 to i8
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %143, i8* %144, align 1, !tbaa !2448
  %145 = lshr i64 %123, 63
  %146 = trunc i64 %145 to i8
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %146, i8* %147, align 1, !tbaa !2449
  %148 = lshr i64 %119, 63
  %149 = lshr i64 %120, 63
  %150 = xor i64 %145, %148
  %151 = xor i64 %145, %149
  %152 = add nuw nsw i64 %150, %151
  %153 = icmp eq i64 %152, 2
  %154 = zext i1 %153 to i8
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %154, i8* %155, align 1, !tbaa !2450
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
  %185 = load i8, i8* %184, align 1, !tbaa !2448
  store i8 %185, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %187 = icmp ne i8 %185, 0
  %188 = select i1 %187, i64 %179, i64 %181
  store i64 %188, i64* %186, align 8, !tbaa !2428
  %189 = load i8, i8* %BRANCH_TAKEN
  %190 = icmp eq i8 %189, 1
  br i1 %190, label %block_400758, label %block_400743

block_40075a:                                     ; preds = %block_40074d
  %191 = load i64, i64* %RAX
  %192 = load i64, i64* %RAX
  %193 = add i64 %192, %191
  %194 = load i16, i16* %AX
  %195 = zext i16 %194 to i64
  %196 = load i64, i64* %PC
  %197 = add i64 %196, 6
  store i64 %197, i64* %PC
  %198 = load i64, i64* %PC
  %199 = tail call %struct.Memory* @sub_400760___do_global_dtors_aux(%struct.State* %0, i64 %198, %struct.Memory* %2)
  ret %struct.Memory* %199

block_400755:                                     ; preds = %block_40074d
  %200 = load i64, i64* %RAX
  %201 = load i32, i32* %EAX
  %202 = zext i32 %201 to i64
  %203 = load i64, i64* %PC
  %204 = add i64 %203, 3
  store i64 %204, i64* %PC
  br label %block_400758

block_40074d:                                     ; preds = %block_400743
  %205 = load i64, i64* %PC
  %206 = add i64 %205, 1
  store i64 %206, i64* %PC
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %208 = load i64, i64* %207, align 8, !tbaa !2428
  %209 = add i64 %208, 8
  %210 = inttoptr i64 %208 to i64*
  %211 = load i64, i64* %210
  store i64 %211, i64* %RBP, align 8, !tbaa !2428
  store i64 %209, i64* %207, align 8, !tbaa !2428
  %212 = load i64, i64* %PC
  %213 = add i64 %212, 5
  store i64 %213, i64* %PC
  store i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64* %RDI, align 8, !tbaa !2428
  %214 = load i64, i64* %RAX
  %215 = load i64, i64* %PC
  %216 = add i64 %215, 2
  store i64 %216, i64* %PC
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %214, i64* %217, align 8, !tbaa !2428
  %218 = load i64, i64* %PC
  switch i64 %218, label %270 [
    i64 4196186, label %block_40075a
    i64 4196181, label %block_400755
  ]

block_400758:                                     ; preds = %block_400743, %block_400755, %block_400720
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400720 ], [ %2, %block_400743 ], [ %2, %block_400755 ]
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
  ret %struct.Memory* %MEMORY.0

block_400743:                                     ; preds = %block_400720
  %234 = load i64, i64* %PC
  %235 = add i64 %234, 5
  store i64 %235, i64* %PC
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  %236 = load i64, i64* %RAX
  %237 = load i64, i64* %RAX
  %238 = load i64, i64* %PC
  %239 = add i64 %238, 3
  store i64 %239, i64* %PC
  %240 = and i64 %237, %236
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %241, align 1, !tbaa !2432
  %242 = trunc i64 %240 to i32
  %243 = and i32 %242, 255
  %244 = call i32 @llvm.ctpop.i32(i32 %243) #16
  %245 = trunc i32 %244 to i8
  %246 = and i8 %245, 1
  %247 = xor i8 %246, 1
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %247, i8* %248, align 1, !tbaa !2446
  %249 = icmp eq i64 %240, 0
  %250 = zext i1 %249 to i8
  %251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %250, i8* %251, align 1, !tbaa !2448
  %252 = lshr i64 %240, 63
  %253 = trunc i64 %252 to i8
  %254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %253, i8* %254, align 1, !tbaa !2449
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %255, align 1, !tbaa !2450
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %256, align 1, !tbaa !2447
  %257 = load i64, i64* %PC
  %258 = add i64 %257, 13
  %259 = load i64, i64* %PC
  %260 = add i64 %259, 2
  %261 = load i64, i64* %PC
  %262 = add i64 %261, 2
  store i64 %262, i64* %PC
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %264 = load i8, i8* %263, align 1, !tbaa !2448
  store i8 %264, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %266 = icmp ne i8 %264, 0
  %267 = select i1 %266, i64 %258, i64 %260
  store i64 %267, i64* %265, align 8, !tbaa !2428
  %268 = load i8, i8* %BRANCH_TAKEN
  %269 = icmp eq i8 %268, 1
  br i1 %269, label %block_400758, label %block_40074d

; <label>:270:                                    ; preds = %block_40074d
  %271 = load i64, i64* %PC
  %272 = tail call %struct.Memory* @__remill_jump(%struct.State* %0, i64 %271, %struct.Memory* %2)
  ret %struct.Memory* %272
}

; Function Attrs: noinline
define %struct.Memory* @sub_400b50_create_link_list(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400b50:
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
  store i8 %64, i8* %65, align 1, !tbaa !2447
  %66 = icmp eq i64 %49, 0
  %67 = zext i1 %66 to i8
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %67, i8* %68, align 1, !tbaa !2448
  %69 = lshr i64 %49, 63
  %70 = trunc i64 %69 to i8
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %70, i8* %71, align 1, !tbaa !2449
  %72 = lshr i64 %46, 63
  %73 = xor i64 %69, %72
  %74 = add nuw nsw i64 %73, %72
  %75 = icmp eq i64 %74, 2
  %76 = zext i1 %75 to i8
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %76, i8* %77, align 1, !tbaa !2450
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
  store i8 %94, i8* %95, align 1, !tbaa !2448
  %96 = lshr i32 %84, 31
  %97 = trunc i32 %96 to i8
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %97, i8* %98, align 1, !tbaa !2449
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %99, align 1, !tbaa !2450
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %100, align 1, !tbaa !2447
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
  %132 = call %struct.Memory* @ext_6020e8_memset(%struct.State* %0, i64 %131, %struct.Memory* %2)
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
  br label %block_400b7d

block_400b92:                                     ; preds = %block_400b7d
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
  %169 = call %struct.Memory* @ext_400680_malloc(%struct.State* %0, i64 %168, %struct.Memory* %MEMORY.0)
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
  store i8 %273, i8* %274, align 1, !tbaa !2447
  %275 = icmp eq i32 %255, 0
  %276 = zext i1 %275 to i8
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %276, i8* %277, align 1, !tbaa !2448
  %278 = lshr i32 %255, 31
  %279 = trunc i32 %278 to i8
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %279, i8* %280, align 1, !tbaa !2449
  %281 = lshr i32 %254, 31
  %282 = xor i32 %278, %281
  %283 = add nuw nsw i32 %282, %278
  %284 = icmp eq i32 %283, 2
  %285 = zext i1 %284 to i8
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %285, i8* %286, align 1, !tbaa !2450
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
  br label %block_400b7d

block_400be9:                                     ; preds = %block_400b7d
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
  store i8 %319, i8* %320, align 1, !tbaa !2447
  %321 = icmp eq i64 %302, 0
  %322 = zext i1 %321 to i8
  %323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %322, i8* %323, align 1, !tbaa !2448
  %324 = lshr i64 %302, 63
  %325 = trunc i64 %324 to i8
  %326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %325, i8* %326, align 1, !tbaa !2449
  %327 = lshr i64 %299, 63
  %328 = xor i64 %324, %327
  %329 = add nuw nsw i64 %328, %324
  %330 = icmp eq i64 %329, 2
  %331 = zext i1 %330 to i8
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %331, i8* %332, align 1, !tbaa !2450
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

block_400b7d:                                     ; preds = %block_400b92, %block_400b50
  %MEMORY.0 = phi %struct.Memory* [ %132, %block_400b50 ], [ %169, %block_400b92 ]
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
  store i8 %381, i8* %382, align 1, !tbaa !2447
  %383 = icmp eq i32 %363, 0
  %384 = zext i1 %383 to i8
  %385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %384, i8* %385, align 1, !tbaa !2448
  %386 = lshr i32 %363, 31
  %387 = trunc i32 %386 to i8
  %388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %387, i8* %388, align 1, !tbaa !2449
  %389 = lshr i32 %362, 31
  %390 = xor i32 %386, %389
  %391 = add nuw nsw i32 %390, %386
  %392 = icmp eq i32 %391, 2
  %393 = zext i1 %392 to i8
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %393, i8* %394, align 1, !tbaa !2450
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
  store i8 %416, i8* %417, align 1, !tbaa !2447
  %418 = icmp eq i32 %401, 0
  %419 = zext i1 %418 to i8
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %419, i8* %420, align 1, !tbaa !2448
  %421 = lshr i32 %401, 31
  %422 = trunc i32 %421 to i8
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %422, i8* %423, align 1, !tbaa !2449
  %424 = lshr i32 %395, 31
  %425 = lshr i32 %397, 31
  %426 = xor i32 %425, %424
  %427 = xor i32 %421, %424
  %428 = add nuw nsw i32 %427, %426
  %429 = icmp eq i32 %428, 2
  %430 = zext i1 %429 to i8
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %430, i8* %431, align 1, !tbaa !2450
  %432 = load i64, i64* %PC
  %433 = add i64 %432, 93
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
  store i8 %446, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %448 = select i1 %444, i64 %435, i64 %433
  store i64 %448, i64* %447, align 8, !tbaa !2428
  %449 = load i8, i8* %BRANCH_TAKEN
  %450 = icmp eq i8 %449, 1
  br i1 %450, label %block_400be9, label %block_400b92
}

; Function Attrs: noinline
declare void @__mcsema_attach_call() #13

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400790_frame_dummy() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400790;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @1, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_400790_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400790_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400760___do_global_dtors_aux() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400760;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @3, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_400760___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400760___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_4006a0_lrand48(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 ()* @lrand48 to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_400670_seed48(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @seed48 to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_400650_printf(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6020b8___isoc99_sscanf(%struct.State*, i64, %struct.Memory*) #13 {
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

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_4010a0___libc_csu_fini() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4010a0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @4, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_4010a0___libc_csu_fini_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_4010a0___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_401030___libc_csu_init() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x401030;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @5, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_401030___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_401030___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @main() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4007a0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @6, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_4007a0_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6020a0___libc_start_main(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_602078_free(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_400680_malloc(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6020e8_memset(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.init_proc() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4005f8;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @7, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_4005f8__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @init() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400bf0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @8, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400bf0_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @simulate() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400c30;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @9, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400c30_simulate(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.term_proc() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4010a4;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @10, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_4010a4__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @create_link_list() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400b50;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @11, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400b50_create_link_list(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @kill_list() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400fe0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @12, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400fe0_kill_list(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

define internal void @__mcsema_destructor() {
  call void @callback_sub_4010a0___libc_csu_fini()
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
  call void @callback_sub_401030___libc_csu_init()
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
!2451 = !{!2445, !2445, i64 0}
!2452 = !{!2430, !2430, i64 0}
!2453 = !{!2454, !2454, i64 0}
!2454 = !{!"double", !2430, i64 0}
