; ModuleID = 'binary/test.mcsema.calls_renamed.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_4005b0__init_type = type <{ [23 x i8] }>
%seg_4005d0__plt_type = type <{ [160 x i8] }>
%seg_400670__text_type = type <{ [2562 x i8] }>
%seg_401074__fini_type = type <{ [9 x i8] }>
%seg_401080__rodata_type = type <{ [44 x i8], [30 x i8], [31 x i8], [43 x i8], [75 x i8], [32 x i8] }>
%seg_401180__eh_frame_hdr_type = type <{ [92 x i8] }>
%seg_4011e0__eh_frame_type = type <{ [368 x i8] }>
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
@seg_4005b0__init = internal constant %seg_4005b0__init_type <{ [23 x i8] c"H\83\EC\08H\8B\05=\1A \00H\85\C0t\02\FF\D0H\83\C4\08\C3" }>
@seg_4005d0__plt = internal constant %seg_4005d0__plt_type <{ [160 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF%2\1A \00\00\00\00\00\00\00\00\00\00\00\FF%*\1A \00\00\00\00\00\00\00\00\00\00\00\FF%\22\1A \00\00\00\00\00\00\00\00\00\00\00\FF%\1A\1A \00\00\00\00\00\00\00\00\00\00\00\FF%\12\1A \00\00\00\00\00\00\00\00\00\00\00\FF%\0A\1A \00\00\00\00\00\00\00\00\00\00\00\FF%\02\1A \00\00\00\00\00\00\00\00\00\00\00\FF%\FA\19 \00\00\00\00\00\00\00\00\00\00\00\FF%\F2\19 \00\00\00\00\00\00\00\00\00\00\00" }>
@seg_400670__text = internal constant %seg_400670__text_type <{ [2562 x i8] c"1\EDI\89\D1^H\89\E2H\83\E4\F0PTI\C7\C0p\10@\00H\C7\C1\00\10@\00H\C7\C7`\07@\00\FF\15V\19 \00\F4\0F\1FD\00\00\F3\C3f.\0F\1F\84\00\00\00\00\00\0F\1F@\00U\B8p `\00H=p `\00H\89\E5t\17\B8\00\00\00\00H\85\C0t\0D]\BFp `\00\FF\E0\0F\1FD\00\00]\C3f\0F\1FD\00\00\BEp `\00UH\81\EEp `\00H\89\E5H\C1\FE\03H\89\F0H\C1\E8?H\01\C6H\D1\FEt\15\B8\00\00\00\00H\85\C0t\0B]\BFp `\00\FF\E0\0F\1F\00]\C3f\0F\1FD\00\00\80=I\19 \00\00u\17UH\89\E5\E8~\FF\FF\FF\C6\057\19 \00\01]\C3\0F\1FD\00\00\F3\C3\0F\1F@\00f.\0F\1F\84\00\00\00\00\00UH\89\E5]\EB\89f\0F\1F\84\00\00\00\00\00UH\89\E5SH\81\EC\F8\00\00\00\F2\0F\10\05\14\09\00\00\C7E\F4\00\00\00\00\89}\F0H\89u\E8\C7E\D4\0A\00\00\00\C7\04%t `\00\0A\00\00\00\F2\0F\11E\C0\C7E\D0\A0\86\01\00\83}\F0\06\0F\8E \00\00\00H\8D\BDP\FF\FF\FFH\8BE\E8H\8Bp0\E82\FE\FF\FFH\89\85@\FF\FF\FF\E9H\00\00\00\C7E\C8\01\00\00\00\8BE\C8;\04%t `\00\0F\8D\1A\00\00\00HcE\C8\C6\84\05P\FF\FF\FF0\8BE\C8\83\C0\01\89E\C8\E9\D6\FF\FF\FF\C6\85P\FF\FF\FF1Hc\04%t `\00\C6\84\05P\FF\FF\FF\00\83}\F0\07\0F\8E+\00\00\00H\BE\A8\10@\00\00\00\00\00H\8D\95J\FF\FF\FFH\8BE\E8H\8Bx8\B0\00\E8\14\FE\FF\FF\89\85<\FF\FF\FF\E9\09\00\00\00f\C7\85J\FF\FF\FF\01\00\83}\F0\08\0F\8E2\00\00\00H\BE\A8\10@\00\00\00\00\00H\8D\85J\FF\FF\FFH\8BM\E8H\8By@H\83\C0\02H\89\C2\B0\00\E8\CF\FD\FF\FF\89\858\FF\FF\FF\E9\09\00\00\00f\C7\85L\FF\FF\FF\00\00\83}\F0\09\0F\8E2\00\00\00H\BE\A8\10@\00\00\00\00\00H\8D\85J\FF\FF\FFH\8BM\E8H\8ByHH\83\C0\04H\89\C2\B0\00\E8\8A\FD\FF\FF\89\854\FF\FF\FF\E9\09\00\00\00f\C7\85N\FF\FF\FF\00\00\83<%t `\00d\0F\8E(\00\00\00H\BF\AC\10@\00\00\00\00\00\BEd\00\00\00\B0\00\E8\12\FD\FF\FF\C7E\F4\02\00\00\00\89\850\FF\FF\FF\E9\F5\01\00\00\F2\0F\10\05x\07\00\00\F2\0F\10M\C0f\0F.\C8\0F\87\0E\00\00\00\0FW\C0f\0F.E\C0\0F\86#\00\00\00H\BF\CA\10@\00\00\00\00\00\B0\00\E8\CA\FC\FF\FF\C7E\F4\03\00\00\00\89\85,\FF\FF\FF\E9\AD\01\00\00H\8D\BDP\FF\FF\FF\E8\9C\FC\FF\FFHc<%t `\00H9\F8\0F\84#\00\00\00H\BF\E9\10@\00\00\00\00\00\B0\00\E8\8A\FC\FF\FF\C7E\F4\04\00\00\00\89\85(\FF\FF\FF\E9m\01\00\00H\8D\BDJ\FF\FF\FF\E8\8C\FC\FF\FFH\8D}\D8H\89\85 \FF\FF\FF\E8l\01\00\00\C7E\CC\00\00\00\00\83}\D4\00\0F\84M\00\00\00\C7E\C8\00\00\00\00\8BE\C8;E\D0\0F\8D5\00\00\00H\8D}\D8\E8\DF\01\00\00H\8Du\D8H\8D\95P\FF\FF\FF\8B}\D4\F2\0F\10E\C0\E8\07\02\00\00\03E\CC\89E\CC\8BE\C8\83\C0\01\89E\C8\E9\BF\FF\FF\FF\E9o\00\00\00H\8D}\D8\E8\A5\01\00\00\BF\10'\00\00H\8Du\D8H\8D\95P\FF\FF\FF\F2\0F\10E\C0\E8\CB\01\00\00\C7E\C8\00\00\00\00\89\85\1C\FF\FF\FF\8BE\C8;E\D0\0F\8D.\00\00\00\BF\01\00\00\00H\8Du\D8H\8D\95P\FF\FF\FF\F2\0F\10E\C0\E8\98\01\00\00\03E\CC\89E\CC\8BE\C8\83\C0\01\89E\C8\E9\C6\FF\FF\FF\E9\00\00\00\00H\BF\14\11@\00\00\00\00\00\B0\00\E8~\FB\FF\FFH\BF_\11@\00\00\00\00\00L\8D\85P\FF\FF\FF\8B4%t `\00\8BU\D4\F2\0F\10E\C0\8BM\D0D\0F\B7\8DJ\FF\FF\FFD\0F\B7\95L\FF\FF\FFD\0F\B7\9DN\FF\FF\FF\8B]\D0+]\CC\F2\0F*\CB\8B]\D0\F2\0F*\D3\F2\0F^\CAD\89\14$D\89\5C$\08\89\85\18\FF\FF\FF\B0\02\E8\18\FB\FF\FF\C7E\F4\00\00\00\00\89\85\14\FF\FF\FF\8BE\F4H\81\C4\F8\00\00\00[]\C3fffff.\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC 1\F6\B8\10\00\00\00\89\C2H\89}\F8H\8B}\F8\E8\E2\FA\FF\FFH\8BU\F8H\89U\E0\C7E\F4\00\00\00\00\8BE\F4\8B\0C%t `\00\83\C1\019\C8\0F\8DW\00\00\00\B8\10\00\00\00\89\C7\E8\D2\FA\FF\FFH\89E\E8H\8BE\E8\C7\00\01\00\00\00H\8BE\E8\C7@\04\01\00\00\00H\8BE\E8H\C7@\08\00\00\00\00H\8BE\E8H\8B}\E0H\89G\08H\8BE\E0H\8B@\08H\89E\E0\8BE\F4\83\C0\01\89E\F4\E9\94\FF\FF\FFH\83\C4 ]\C3\90UH\89\E5H\89}\F8H\8BE\F8H\83x\08\00\0F\84\1E\00\00\00H\8BE\F8\8B\08H\8BE\F8\89H\04H\8BE\F8H\8B@\08H\89E\F8\E9\D3\FF\FF\FF]\C3f\0F\1F\84\00\00\00\00\00UH\89\E5H\81\EC\80\00\00\00\B8\1F\00\00\00\89}\FCH\89u\F0\F2\0F\11E\E8H\89U\E0\C7E\D4\00\00\00\00\8B<%t `\00\83\EF\01\89E\A4\89\F8\99\8B}\A4\F7\FF\89E\C4\8B\04%t `\00\83\E8\01\99\F7\FF\89U\C8H\8Bu\F0H\89u\D8\C7E\C0\00\00\00\00\8BE\C0;E\FC\0F\8D\EE\02\00\00\C7E\D0\00\00\00\00\C7E\CC\00\00\00\00\C7E\BC\00\00\00\00\8BE\BC;E\C4\0F\8D\0A\01\00\00\E8\D0\F9\FF\FFH\89E\B0\C7E\B8\00\00\00\00\83}\B8\1F\0F\8D\DD\00\00\00H\8BE\E0kM\BC\1F\03M\B8Hc\D1\0F\BE\0C\10\83\F91\0F\85\19\00\00\00H\8BE\D8\8B\08\03M\D0\89M\D0H\8BE\D8\8BH\04\03M\CC\89M\CCH\8BE\D8H\8B@\08Hc\00H\03E\B0H\83\E0\01\89\C1H\8BE\D8\89\08\E8g\F9\FF\FF\F2\0F\10\05\9F\03\00\00\B9\E8\03\00\00\89\CAH\89U\98H\99H\8Bu\98H\F7\FE\F2H\0F*\CA\F2\0F^\C8\F2\0F\11M\A8\F2\0F\10E\E8f\0F.E\A8\0F\86\0C\00\00\00H\8BE\B0H\83\F0\01H\89E\B0H\8BE\D8H\8B@\08Hc@\04H\03E\B0H\83\E0\01\89\C1H\8BE\D8\89H\04H\8BE\D8H\8B@\08H\89E\D8H\8BE\B0H\C1\F8\01H\89E\B0\8BE\B8\83\C0\01\89E\B8\E9\19\FF\FF\FF\E9\00\00\00\00\8BE\BC\83\C0\01\89E\BC\E9\EA\FE\FF\FF\E8\C6\F8\FF\FFH\89E\B0\C7E\B8\00\00\00\00\8BE\B8;E\C8\0F\8D\DD\00\00\00H\8BE\E0kM\C4\1F\03M\B8Hc\D1\0F\BE\0C\10\83\F91\0F\85\19\00\00\00H\8BE\D8\8B\08\03M\D0\89M\D0H\8BE\D8\8BH\04\03M\CC\89M\CCH\8BE\D8H\8B@\08Hc\00H\03E\B0H\83\E0\01\89\C1H\8BE\D8\89\08\E8[\F8\FF\FF\F2\0F\10\05\93\02\00\00\B9\E8\03\00\00\89\CAH\89U\90H\99H\8Bu\90H\F7\FE\F2H\0F*\CA\F2\0F^\C8\F2\0F\11M\A8\F2\0F\10E\E8f\0F.E\A8\0F\86\0C\00\00\00H\8BE\B0H\83\F0\01H\89E\B0H\8BE\D8H\8B@\08Hc@\04H\03E\B0H\83\E0\01\89\C1H\8BE\D8\89H\04H\8BE\D8H\8B@\08H\89E\D8H\8BE\B0H\C1\F8\01H\89E\B0\8BE\B8\83\C0\01\89E\B8\E9\17\FF\FF\FF\E8\CD\F7\FF\FFH\89E\B0H\8BE\E0\8B\0C%t `\00\83\E9\01Hc\D1\0F\BE\0C\10\83\F91\0F\85\19\00\00\00H\8BE\D8\8B\08\03M\D0\89M\D0H\8BE\D8\8BH\04\03M\CC\89M\CCHcE\D0H\03E\B0H\83\E0\01\89\C1H\8BE\D8\89\08\E8y\F7\FF\FF\F2\0F\10\05\A9\01\00\00\B9\10'\00\00\89\CAH\89U\88H\99H\8Bu\88H\F7\FE\F2H\0F*\CA\F2\0F^\C8\F2\0F\11M\A8\F2\0F\10E\E8f\0F.E\A8\0F\86\0C\00\00\00H\8BE\B0H\83\F0\01H\89E\B0HcE\CCH\03E\B0H\83\E0\01\89\C1H\8BE\D8\89H\04H\8BE\F0H\89E\D8\8BE\C0\83\C0\01\89E\C0\E9\06\FD\FF\FF\C7E\BC\00\00\00\00\8BE\BC;\04%t `\00\0F\8D4\00\00\00H\8BE\D8\8B\08H\8BE\D8;H\04\0F\84\07\00\00\00\C7E\D4\01\00\00\00H\8BE\D8H\8B@\08H\89E\D8\8BE\BC\83\C0\01\89E\BC\E9\BC\FF\FF\FF\8BE\D4H\81\C4\80\00\00\00]\C3\90UH\89\E5H\83\EC\10H\89}\F8H\83}\F8\00\0F\84%\00\00\00H\8BE\F8H\8B@\08H\89E\F0H\8BE\F8H\89\C7\E8\01\F6\FF\FFH\8BE\F0H\89E\F8\E9\D0\FF\FF\FFH\83\C4\10]\C3f.\0F\1F\84\00\00\00\00\00\0F\1F@\00AWAVI\89\D7AUATL\8D%\DE\0D \00UH\8D-\DE\0D \00SA\89\FDI\89\F6L)\E5H\83\EC\08H\C1\FD\03\E8\7F\F5\FF\FFH\85\EDt 1\DB\0F\1F\84\00\00\00\00\00L\89\FAL\89\F6D\89\EFA\FF\14\DCH\83\C3\01H9\DDu\EAH\83\C4\08[]A\5CA]A^A_\C3\90f.\0F\1F\84\00\00\00\00\00\F3\C3" }>
@seg_401074__fini = internal constant %seg_401074__fini_type <{ [9 x i8] c"H\83\EC\08H\83\C4\08\C3" }>
@seg_401080__rodata = internal constant %seg_401080__rodata_type <{ [44 x i8] c"\01\00\02\00\00\00\00\00\00\00\00\00\00\00\D0?\00\00\00\00\00\00\F0?\00\00\00\00\00\88\C3@\00\00\00\00\00@\8F@%hu\00", [30 x i8] c"Register too long; Max. = %d\0A\00", [31 x i8] c"Prob. out of range 0=<Prob>=1\0A\00", [43 x i8] c"Structure does not match Register length:\0A\00", [75 x i8] c"reg_len\09#_vect\09prob      #_tms\09struct\09seed1\09seed2\09seed3\09Prob same output\0A \00", [32 x i8] c"%d\09%d\09%.3e %d\09%s\09%d\09%d\09%d\09%.8e\0A\00" }>
@seg_401180__eh_frame_hdr = internal constant %seg_401180__eh_frame_hdr_type <{ [92 x i8] c"\01\1B\03;\5C\00\00\00\0A\00\00\00P\F4\FF\FF\B8\00\00\00\F0\F4\FF\FFx\00\00\00 \F5\FF\FF\A4\00\00\00\E0\F5\FF\FF\E0\00\00\00\A0\F9\FF\FF\FC\00\00\00@\FA\FF\FF\18\01\00\00\80\FA\FF\FF4\01\00\000\FE\FF\FFP\01\00\00\80\FE\FF\FFp\01\00\00\F0\FE\FF\FF\B8\01\00\00" }>
@seg_4011e0__eh_frame = internal constant %seg_4011e0__eh_frame_type <{ [368 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00p\F4\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00t\F4\FF\FF\02\00\00\00\00\00\00\00$\00\00\000\00\00\00\90\F3\FF\FF\A0\00\00\00\00\0E\10F\0E\18J\0F\0Bw\08\80\00?\1A;*3$\22\00\00\00\00\18\00\00\00X\00\00\00\F8\F4\FF\FF\B2\03\00\00\00A\0E\10\86\02C\0D\06H\83\03\18\00\00\00t\00\00\00\9C\F8\FF\FF\9F\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\90\00\00\00 \F9\FF\FF7\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\AC\00\00\00D\F9\FF\FF\AF\03\00\00\00A\0E\10\86\02C\0D\06\00\00\00\1C\00\00\00\C8\00\00\00\D8\FC\FF\FFB\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00D\00\00\00\E8\00\00\00\08\FD\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\000\01\00\000\FD\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@seg_601df0__init_array = internal global %seg_601df0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_400750_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_400720___do_global_dtors_aux to i64) }>
@seg_601ff0__got = internal global %seg_601ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@seg_602000__got_plt = internal global %seg_602000__got_plt_type <{ [24 x i8] zeroinitializer, i64 ptrtoint (i64 (i64)* @free to i64), i64 ptrtoint (i64 (i64, i64)* @strcpy to i64), i64 ptrtoint (i64 (i64)* @strlen to i64), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), i64 ptrtoint (i64 (i64)* @seed48 to i64), i64 ptrtoint (i64 (i64)* @malloc to i64), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @__isoc99_sscanf to i64), i64 ptrtoint (i64 ()* @lrand48 to i64) }>
@seg_602060__data = internal global %seg_602060__data_type zeroinitializer
@__bss_start = global %__bss_start_type zeroinitializer
@reg_len = global %reg_len_type zeroinitializer
@0 = internal global i1 false
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400750_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400720___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401070___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401000___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @create_link_list_wrapper
@10 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @init_wrapper
@11 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @simulate_wrapper
@12 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @kill_list_wrapper
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_destructor, i8* null }]
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]

declare %struct.Memory* @sub_4005b0__init_proc_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400bc0_init_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400c00_simulate_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4006b0_deregister_tm_clones_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400b20_create_link_list_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

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
declare extern_weak x86_64_sysvcc i64 @strlen(i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @strcpy(i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @malloc(i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #13

; Function Attrs: noinline
define %struct.Memory* @sub_401070___libc_csu_fini(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_401070:
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
define %struct.Memory* @sub_400b20_create_link_list(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400b20:
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
  %121 = sub i64 %120, 1305
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
  br label %block_400b4d

block_400b62:                                     ; preds = %block_400b4d
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
  %158 = sub i64 %157, 1321
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
  %169 = call %struct.Memory* @ext_6020b0_malloc(%struct.State* %0, i64 %168, %struct.Memory* %MEMORY.0)
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
  br label %block_400b4d

block_400bb9:                                     ; preds = %block_400b4d
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

block_400b4d:                                     ; preds = %block_400b62, %block_400b20
  %MEMORY.0 = phi %struct.Memory* [ %132, %block_400b20 ], [ %169, %block_400b62 ]
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
  store i8 %446, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %448 = select i1 %444, i64 %435, i64 %433
  store i64 %448, i64* %447, align 8, !tbaa !2428
  %449 = load i8, i8* %BRANCH_TAKEN
  %450 = icmp eq i8 %449, 1
  br i1 %450, label %block_400bb9, label %block_400b62
}

; Function Attrs: noinline
define %struct.Memory* @sub_4006a0__dl_relocate_static_pie(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4006a0:
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
define %struct.Memory* @sub_4006b0_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  store i8 %76, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %78 = icmp ne i8 %76, 0
  %79 = select i1 %78, i64 %70, i64 %72
  store i64 %79, i64* %77, align 8, !tbaa !2428
  %80 = load i8, i8* %BRANCH_TAKEN
  %81 = icmp eq i8 %80, 1
  br i1 %81, label %block_4006d8, label %block_4006c1

block_4006d8:                                     ; preds = %block_4006c1, %block_4006d3, %block_4006b0
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4006b0 ], [ %2, %block_4006c1 ], [ %2, %block_4006d3 ]
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

block_4006da:                                     ; preds = %block_4006cb
  %97 = load i64, i64* %RAX
  %98 = load i64, i64* %RAX
  %99 = add i64 %98, %97
  %100 = load i16, i16* %AX
  %101 = zext i16 %100 to i64
  %102 = load i64, i64* %PC
  %103 = add i64 %102, 6
  store i64 %103, i64* %PC
  %104 = load i64, i64* %PC
  %105 = tail call %struct.Memory* @sub_4006e0_register_tm_clones(%struct.State* %0, i64 %104, %struct.Memory* %2)
  ret %struct.Memory* %105

block_4006d3:                                     ; preds = %block_4006cb
  %106 = load i64, i64* %RAX
  %107 = load i64, i64* %RAX
  %108 = add i64 %107, %106
  %109 = load i32, i32* %EAX
  %110 = zext i32 %109 to i64
  %111 = load i64, i64* %PC
  %112 = add i64 %111, 5
  store i64 %112, i64* %PC
  br label %block_4006d8

block_4006cb:                                     ; preds = %block_4006c1
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
    i64 4196058, label %block_4006da
    i64 4196051, label %block_4006d3
  ]

block_4006c1:                                     ; preds = %block_4006b0
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
  store i8 %157, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %159 = icmp ne i8 %157, 0
  %160 = select i1 %159, i64 %151, i64 %153
  store i64 %160, i64* %158, align 8, !tbaa !2428
  %161 = load i8, i8* %BRANCH_TAKEN
  %162 = icmp eq i8 %161, 1
  br i1 %162, label %block_4006d8, label %block_4006cb

; <label>:163:                                    ; preds = %block_4006cb
  %164 = load i64, i64* %PC
  %165 = tail call %struct.Memory* @__remill_jump(%struct.State* %0, i64 %164, %struct.Memory* %2)
  ret %struct.Memory* %165
}

; Function Attrs: noinline
define %struct.Memory* @sub_400670__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400670:
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
  store i64 ptrtoint (void ()* @callback_sub_401070___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  %108 = load i64, i64* %PC
  %109 = add i64 %108, 7
  store i64 %109, i64* %PC
  store i64 ptrtoint (void ()* @callback_sub_401000___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
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
  %123 = call %struct.Memory* @ext_6020f0___libc_start_main(%struct.State* %0, i64 %122, %struct.Memory* %2)
  %124 = load i64, i64* %PC
  %125 = add i64 %124, 1
  store i64 %125, i64* %PC
  %126 = load i64, i64* %PC
  %127 = tail call %struct.Memory* @__remill_error(%struct.State* %0, i64 %126, %struct.Memory* %123)
  ret %struct.Memory* %127
}

; Function Attrs: noinline
define %struct.Memory* @sub_4006e0_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  store i8 %77, i8* %79, align 1, !tbaa !2451
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %81 = trunc i64 %78 to i32
  %82 = and i32 %81, 255
  %83 = call i32 @llvm.ctpop.i32(i32 %82) #16
  %84 = trunc i32 %83 to i8
  %85 = and i8 %84, 1
  %86 = xor i8 %85, 1
  store i8 %86, i8* %80, align 1, !tbaa !2451
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %87, align 1, !tbaa !2451
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %89 = icmp eq i64 %78, 0
  %90 = zext i1 %89 to i8
  store i8 %90, i8* %88, align 1, !tbaa !2451
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %92 = lshr i64 %78, 63
  %93 = trunc i64 %92 to i8
  store i8 %93, i8* %91, align 1, !tbaa !2451
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %94, align 1, !tbaa !2451
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
  store i8 %103, i8* %105, align 1, !tbaa !2451
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %107 = trunc i64 %104 to i32
  %108 = and i32 %107, 255
  %109 = call i32 @llvm.ctpop.i32(i32 %108) #16
  %110 = trunc i32 %109 to i8
  %111 = and i8 %110, 1
  %112 = xor i8 %111, 1
  store i8 %112, i8* %106, align 1, !tbaa !2451
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %113, align 1, !tbaa !2451
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %115 = icmp eq i64 %104, 0
  %116 = zext i1 %115 to i8
  store i8 %116, i8* %114, align 1, !tbaa !2451
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %117, align 1, !tbaa !2451
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %118, align 1, !tbaa !2451
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
  store i8 %160, i8* %162, align 1, !tbaa !2451
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %164 = trunc i64 %161 to i32
  %165 = and i32 %164, 255
  %166 = call i32 @llvm.ctpop.i32(i32 %165) #16
  %167 = trunc i32 %166 to i8
  %168 = and i8 %167, 1
  %169 = xor i8 %168, 1
  store i8 %169, i8* %163, align 1, !tbaa !2451
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %170, align 1, !tbaa !2451
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %172 = icmp eq i64 %161, 0
  %173 = zext i1 %172 to i8
  store i8 %173, i8* %171, align 1, !tbaa !2451
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %175 = lshr i64 %161, 63
  %176 = trunc i64 %175 to i8
  store i8 %176, i8* %174, align 1, !tbaa !2451
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %177, align 1, !tbaa !2451
  %178 = load i64, i64* %PC
  %179 = add i64 %178, 23
  %180 = load i64, i64* %PC
  %181 = add i64 %180, 2
  %182 = load i64, i64* %PC
  %183 = add i64 %182, 2
  store i64 %183, i64* %PC
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %185 = load i8, i8* %184, align 1, !tbaa !2448
  store i8 %185, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %187 = icmp ne i8 %185, 0
  %188 = select i1 %187, i64 %179, i64 %181
  store i64 %188, i64* %186, align 8, !tbaa !2428
  %189 = load i8, i8* %BRANCH_TAKEN
  %190 = icmp eq i8 %189, 1
  br i1 %190, label %block_400718, label %block_400703

block_40071a:                                     ; preds = %block_40070d
  %191 = load i64, i64* %RAX
  %192 = load i64, i64* %RAX
  %193 = add i64 %192, %191
  %194 = load i16, i16* %AX
  %195 = zext i16 %194 to i64
  %196 = load i64, i64* %PC
  %197 = add i64 %196, 6
  store i64 %197, i64* %PC
  %198 = load i64, i64* %PC
  %199 = tail call %struct.Memory* @sub_400720___do_global_dtors_aux(%struct.State* %0, i64 %198, %struct.Memory* %2)
  ret %struct.Memory* %199

block_400715:                                     ; preds = %block_40070d
  %200 = load i64, i64* %RAX
  %201 = load i32, i32* %EAX
  %202 = zext i32 %201 to i64
  %203 = load i64, i64* %PC
  %204 = add i64 %203, 3
  store i64 %204, i64* %PC
  br label %block_400718

block_40070d:                                     ; preds = %block_400703
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
    i64 4196122, label %block_40071a
    i64 4196117, label %block_400715
  ]

block_400718:                                     ; preds = %block_400703, %block_400715, %block_4006e0
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4006e0 ], [ %2, %block_400703 ], [ %2, %block_400715 ]
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

block_400703:                                     ; preds = %block_4006e0
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
  store i8 %264, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %266 = icmp ne i8 %264, 0
  %267 = select i1 %266, i64 %258, i64 %260
  store i64 %267, i64* %265, align 8, !tbaa !2428
  %268 = load i8, i8* %BRANCH_TAKEN
  %269 = icmp eq i8 %268, 1
  br i1 %269, label %block_400718, label %block_40070d

; <label>:270:                                    ; preds = %block_40070d
  %271 = load i64, i64* %PC
  %272 = tail call %struct.Memory* @__remill_jump(%struct.State* %0, i64 %271, %struct.Memory* %2)
  ret %struct.Memory* %272
}

; Function Attrs: noinline
define %struct.Memory* @sub_400fb0_kill_list(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400fb0:
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
  br label %block_400fbc

block_400fc7:                                     ; preds = %block_400fbc
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
  %94 = sub i64 %93, 2554
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
  br label %block_400fbc

block_400fbc:                                     ; preds = %block_400fc7, %block_400fb0
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400fb0 ], [ %105, %block_400fc7 ]
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
  store i8 %157, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %159 = icmp ne i8 %157, 0
  %160 = select i1 %159, i64 %151, i64 %153
  store i64 %160, i64* %158, align 8, !tbaa !2428
  %161 = load i8, i8* %BRANCH_TAKEN
  %162 = icmp eq i8 %161, 1
  br i1 %162, label %block_400fec, label %block_400fc7

block_400fec:                                     ; preds = %block_400fbc
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
define %struct.Memory* @sub_401000___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  %200 = sub i64 %199, 2684
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
  %211 = call %struct.Memory* @sub_4005b0__init_proc_renamed_(%struct.State* %0, i64 %210, %struct.Memory* %2)
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
  br i1 %245, label %block_401056, label %block_401036

block_401056:                                     ; preds = %block_401040, %block_401000
  %MEMORY.0 = phi %struct.Memory* [ %211, %block_401000 ], [ %387, %block_401040 ]
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

block_401036:                                     ; preds = %block_401000
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
  br label %block_401040

block_401040:                                     ; preds = %block_401040, %block_401036
  %MEMORY.1 = phi %struct.Memory* [ %211, %block_401036 ], [ %387, %block_401040 ]
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
  br i1 %470, label %block_401040, label %block_401056
}

; Function Attrs: noinline
define %struct.Memory* @sub_400c00_simulate(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400c00:
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
  %178 = load i32, i32* %177, align 8, !tbaa !2452
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
  %194 = load i32, i32* %193, align 8, !tbaa !2452
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %197 = bitcast %union.anon* %196 to i32*
  %198 = load i32, i32* %197, align 8, !tbaa !2452
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

; <label>:208:                                    ; preds = %block_400c00
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %210 = load i64, i64* %209, align 8, !tbaa !2428
  %211 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %210, %struct.Memory* %2) #17
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit5

; <label>:212:                                    ; preds = %block_400c00
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
  %275 = load i32, i32* %274, align 8, !tbaa !2452
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
  %284 = load i32, i32* %283, align 8, !tbaa !2452
  %285 = zext i32 %284 to i64
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %287 = bitcast %union.anon* %286 to i32*
  %288 = load i32, i32* %287, align 8, !tbaa !2452
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
  br label %block_400c5e

block_400d3f:                                     ; preds = %block_400d33, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %MEMORY.0 = phi %struct.Memory* [ %1405, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit ], [ %1405, %block_400d33 ]
  %339 = load i64, i64* %RBP
  %340 = sub i64 %339, 40
  %341 = load i64, i64* %PC
  %342 = add i64 %341, 4
  store i64 %342, i64* %PC
  %343 = inttoptr i64 %340 to i64*
  %344 = load i64, i64* %343
  store i64 %344, i64* %RAX, align 8, !tbaa !2428
  %345 = load i64, i64* %RAX
  %346 = add i64 %345, 8
  %347 = load i64, i64* %PC
  %348 = add i64 %347, 4
  store i64 %348, i64* %PC
  %349 = inttoptr i64 %346 to i64*
  %350 = load i64, i64* %349
  store i64 %350, i64* %RAX, align 8, !tbaa !2428
  %351 = load i64, i64* %RAX
  %352 = add i64 %351, 4
  %353 = load i64, i64* %PC
  %354 = add i64 %353, 4
  store i64 %354, i64* %PC
  %355 = inttoptr i64 %352 to i32*
  %356 = load i32, i32* %355
  %357 = sext i32 %356 to i64
  store i64 %357, i64* %RAX, align 8, !tbaa !2428
  %358 = load i64, i64* %RAX
  %359 = load i64, i64* %RBP
  %360 = sub i64 %359, 80
  %361 = load i64, i64* %PC
  %362 = add i64 %361, 4
  store i64 %362, i64* %PC
  %363 = inttoptr i64 %360 to i64*
  %364 = load i64, i64* %363
  %365 = add i64 %364, %358
  store i64 %365, i64* %RAX, align 8, !tbaa !2428
  %366 = icmp ult i64 %365, %358
  %367 = icmp ult i64 %365, %364
  %368 = or i1 %366, %367
  %369 = zext i1 %368 to i8
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %369, i8* %370, align 1, !tbaa !2432
  %371 = trunc i64 %365 to i32
  %372 = and i32 %371, 255
  %373 = call i32 @llvm.ctpop.i32(i32 %372) #16
  %374 = trunc i32 %373 to i8
  %375 = and i8 %374, 1
  %376 = xor i8 %375, 1
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %376, i8* %377, align 1, !tbaa !2446
  %378 = xor i64 %364, %358
  %379 = xor i64 %378, %365
  %380 = lshr i64 %379, 4
  %381 = trunc i64 %380 to i8
  %382 = and i8 %381, 1
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %382, i8* %383, align 1, !tbaa !2447
  %384 = icmp eq i64 %365, 0
  %385 = zext i1 %384 to i8
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %385, i8* %386, align 1, !tbaa !2448
  %387 = lshr i64 %365, 63
  %388 = trunc i64 %387 to i8
  %389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %388, i8* %389, align 1, !tbaa !2449
  %390 = lshr i64 %358, 63
  %391 = lshr i64 %364, 63
  %392 = xor i64 %387, %390
  %393 = xor i64 %387, %391
  %394 = add nuw nsw i64 %392, %393
  %395 = icmp eq i64 %394, 2
  %396 = zext i1 %395 to i8
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %396, i8* %397, align 1, !tbaa !2450
  %398 = load i64, i64* %RAX
  %399 = load i64, i64* %PC
  %400 = add i64 %399, 4
  store i64 %400, i64* %PC
  %401 = and i64 1, %398
  store i64 %401, i64* %RAX, align 8, !tbaa !2428
  %402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %402, align 1, !tbaa !2432
  %403 = trunc i64 %401 to i32
  %404 = and i32 %403, 255
  %405 = call i32 @llvm.ctpop.i32(i32 %404) #16
  %406 = trunc i32 %405 to i8
  %407 = and i8 %406, 1
  %408 = xor i8 %407, 1
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %408, i8* %409, align 1, !tbaa !2446
  %410 = icmp eq i64 %401, 0
  %411 = zext i1 %410 to i8
  %412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %411, i8* %412, align 1, !tbaa !2448
  %413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %413, align 1, !tbaa !2449
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %414, align 1, !tbaa !2450
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %415, align 1, !tbaa !2447
  %416 = load i32, i32* %EAX
  %417 = zext i32 %416 to i64
  %418 = load i64, i64* %PC
  %419 = add i64 %418, 2
  store i64 %419, i64* %PC
  %420 = and i64 %417, 4294967295
  store i64 %420, i64* %RCX, align 8, !tbaa !2428
  %421 = load i64, i64* %RBP
  %422 = sub i64 %421, 40
  %423 = load i64, i64* %PC
  %424 = add i64 %423, 4
  store i64 %424, i64* %PC
  %425 = inttoptr i64 %422 to i64*
  %426 = load i64, i64* %425
  store i64 %426, i64* %RAX, align 8, !tbaa !2428
  %427 = load i64, i64* %RAX
  %428 = add i64 %427, 4
  %429 = load i32, i32* %ECX
  %430 = zext i32 %429 to i64
  %431 = load i64, i64* %PC
  %432 = add i64 %431, 3
  store i64 %432, i64* %PC
  %433 = inttoptr i64 %428 to i32*
  store i32 %429, i32* %433
  %434 = load i64, i64* %RBP
  %435 = sub i64 %434, 40
  %436 = load i64, i64* %PC
  %437 = add i64 %436, 4
  store i64 %437, i64* %PC
  %438 = inttoptr i64 %435 to i64*
  %439 = load i64, i64* %438
  store i64 %439, i64* %RAX, align 8, !tbaa !2428
  %440 = load i64, i64* %RAX
  %441 = add i64 %440, 8
  %442 = load i64, i64* %PC
  %443 = add i64 %442, 4
  store i64 %443, i64* %PC
  %444 = inttoptr i64 %441 to i64*
  %445 = load i64, i64* %444
  store i64 %445, i64* %RAX, align 8, !tbaa !2428
  %446 = load i64, i64* %RBP
  %447 = sub i64 %446, 40
  %448 = load i64, i64* %RAX
  %449 = load i64, i64* %PC
  %450 = add i64 %449, 4
  store i64 %450, i64* %PC
  %451 = inttoptr i64 %447 to i64*
  store i64 %448, i64* %451
  %452 = load i64, i64* %RBP
  %453 = sub i64 %452, 80
  %454 = load i64, i64* %PC
  %455 = add i64 %454, 4
  store i64 %455, i64* %PC
  %456 = inttoptr i64 %453 to i64*
  %457 = load i64, i64* %456
  store i64 %457, i64* %RAX, align 8, !tbaa !2428
  %458 = load i64, i64* %RAX
  %459 = load i64, i64* %PC
  %460 = add i64 %459, 4
  store i64 %460, i64* %PC
  %461 = trunc i64 %458 to i8
  %462 = and i8 %461, 1
  %463 = ashr i64 %458, 1
  store i64 %463, i64* %RAX, align 8, !tbaa !2428
  %464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %462, i8* %464, align 1, !tbaa !2451
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %466 = trunc i64 %463 to i32
  %467 = and i32 %466, 255
  %468 = call i32 @llvm.ctpop.i32(i32 %467) #16
  %469 = trunc i32 %468 to i8
  %470 = and i8 %469, 1
  %471 = xor i8 %470, 1
  store i8 %471, i8* %465, align 1, !tbaa !2451
  %472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %472, align 1, !tbaa !2451
  %473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %474 = icmp eq i64 %463, 0
  %475 = zext i1 %474 to i8
  store i8 %475, i8* %473, align 1, !tbaa !2451
  %476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %477 = lshr i64 %463, 63
  %478 = trunc i64 %477 to i8
  store i8 %478, i8* %476, align 1, !tbaa !2451
  %479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %479, align 1, !tbaa !2451
  %480 = load i64, i64* %RBP
  %481 = sub i64 %480, 80
  %482 = load i64, i64* %RAX
  %483 = load i64, i64* %PC
  %484 = add i64 %483, 4
  store i64 %484, i64* %PC
  %485 = inttoptr i64 %481 to i64*
  store i64 %482, i64* %485
  %486 = load i64, i64* %RBP
  %487 = sub i64 %486, 72
  %488 = load i64, i64* %PC
  %489 = add i64 %488, 3
  store i64 %489, i64* %PC
  %490 = inttoptr i64 %487 to i32*
  %491 = load i32, i32* %490
  %492 = zext i32 %491 to i64
  store i64 %492, i64* %RAX, align 8, !tbaa !2428
  %493 = load i64, i64* %RAX
  %494 = load i64, i64* %PC
  %495 = add i64 %494, 3
  store i64 %495, i64* %PC
  %496 = trunc i64 %493 to i32
  %497 = add i32 1, %496
  %498 = zext i32 %497 to i64
  store i64 %498, i64* %RAX, align 8, !tbaa !2428
  %499 = icmp ult i32 %497, %496
  %500 = icmp ult i32 %497, 1
  %501 = or i1 %499, %500
  %502 = zext i1 %501 to i8
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %502, i8* %503, align 1, !tbaa !2432
  %504 = and i32 %497, 255
  %505 = call i32 @llvm.ctpop.i32(i32 %504) #16
  %506 = trunc i32 %505 to i8
  %507 = and i8 %506, 1
  %508 = xor i8 %507, 1
  %509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %508, i8* %509, align 1, !tbaa !2446
  %510 = xor i64 1, %493
  %511 = trunc i64 %510 to i32
  %512 = xor i32 %511, %497
  %513 = lshr i32 %512, 4
  %514 = trunc i32 %513 to i8
  %515 = and i8 %514, 1
  %516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %515, i8* %516, align 1, !tbaa !2447
  %517 = icmp eq i32 %497, 0
  %518 = zext i1 %517 to i8
  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %518, i8* %519, align 1, !tbaa !2448
  %520 = lshr i32 %497, 31
  %521 = trunc i32 %520 to i8
  %522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %521, i8* %522, align 1, !tbaa !2449
  %523 = lshr i32 %496, 31
  %524 = xor i32 %520, %523
  %525 = add nuw nsw i32 %524, %520
  %526 = icmp eq i32 %525, 2
  %527 = zext i1 %526 to i8
  %528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %527, i8* %528, align 1, !tbaa !2450
  %529 = load i64, i64* %RBP
  %530 = sub i64 %529, 72
  %531 = load i32, i32* %EAX
  %532 = zext i32 %531 to i64
  %533 = load i64, i64* %PC
  %534 = add i64 %533, 3
  store i64 %534, i64* %PC
  %535 = inttoptr i64 %530 to i32*
  store i32 %531, i32* %535
  %536 = load i64, i64* %PC
  %537 = sub i64 %536, 226
  %538 = load i64, i64* %PC
  %539 = add i64 %538, 5
  store i64 %539, i64* %PC
  %540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %537, i64* %540, align 8, !tbaa !2428
  br label %block_400c9b

block_400de5:                                     ; preds = %block_400dcc, %block_400db1
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.6, %block_400db1 ], [ %MEMORY.6, %block_400dcc ]
  %541 = load i64, i64* %RBP
  %542 = sub i64 %541, 40
  %543 = load i64, i64* %PC
  %544 = add i64 %543, 4
  store i64 %544, i64* %PC
  %545 = inttoptr i64 %542 to i64*
  %546 = load i64, i64* %545
  store i64 %546, i64* %RAX, align 8, !tbaa !2428
  %547 = load i64, i64* %RAX
  %548 = add i64 %547, 8
  %549 = load i64, i64* %PC
  %550 = add i64 %549, 4
  store i64 %550, i64* %PC
  %551 = inttoptr i64 %548 to i64*
  %552 = load i64, i64* %551
  store i64 %552, i64* %RAX, align 8, !tbaa !2428
  %553 = load i64, i64* %RAX
  %554 = load i64, i64* %PC
  %555 = add i64 %554, 3
  store i64 %555, i64* %PC
  %556 = inttoptr i64 %553 to i32*
  %557 = load i32, i32* %556
  %558 = sext i32 %557 to i64
  store i64 %558, i64* %RAX, align 8, !tbaa !2428
  %559 = load i64, i64* %RAX
  %560 = load i64, i64* %RBP
  %561 = sub i64 %560, 80
  %562 = load i64, i64* %PC
  %563 = add i64 %562, 4
  store i64 %563, i64* %PC
  %564 = inttoptr i64 %561 to i64*
  %565 = load i64, i64* %564
  %566 = add i64 %565, %559
  store i64 %566, i64* %RAX, align 8, !tbaa !2428
  %567 = icmp ult i64 %566, %559
  %568 = icmp ult i64 %566, %565
  %569 = or i1 %567, %568
  %570 = zext i1 %569 to i8
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %570, i8* %571, align 1, !tbaa !2432
  %572 = trunc i64 %566 to i32
  %573 = and i32 %572, 255
  %574 = call i32 @llvm.ctpop.i32(i32 %573) #16
  %575 = trunc i32 %574 to i8
  %576 = and i8 %575, 1
  %577 = xor i8 %576, 1
  %578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %577, i8* %578, align 1, !tbaa !2446
  %579 = xor i64 %565, %559
  %580 = xor i64 %579, %566
  %581 = lshr i64 %580, 4
  %582 = trunc i64 %581 to i8
  %583 = and i8 %582, 1
  %584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %583, i8* %584, align 1, !tbaa !2447
  %585 = icmp eq i64 %566, 0
  %586 = zext i1 %585 to i8
  %587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %586, i8* %587, align 1, !tbaa !2448
  %588 = lshr i64 %566, 63
  %589 = trunc i64 %588 to i8
  %590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %589, i8* %590, align 1, !tbaa !2449
  %591 = lshr i64 %559, 63
  %592 = lshr i64 %565, 63
  %593 = xor i64 %588, %591
  %594 = xor i64 %588, %592
  %595 = add nuw nsw i64 %593, %594
  %596 = icmp eq i64 %595, 2
  %597 = zext i1 %596 to i8
  %598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %597, i8* %598, align 1, !tbaa !2450
  %599 = load i64, i64* %RAX
  %600 = load i64, i64* %PC
  %601 = add i64 %600, 4
  store i64 %601, i64* %PC
  %602 = and i64 1, %599
  store i64 %602, i64* %RAX, align 8, !tbaa !2428
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
  %614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %614, align 1, !tbaa !2449
  %615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %615, align 1, !tbaa !2450
  %616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %616, align 1, !tbaa !2447
  %617 = load i32, i32* %EAX
  %618 = zext i32 %617 to i64
  %619 = load i64, i64* %PC
  %620 = add i64 %619, 2
  store i64 %620, i64* %PC
  %621 = and i64 %618, 4294967295
  store i64 %621, i64* %RCX, align 8, !tbaa !2428
  %622 = load i64, i64* %RBP
  %623 = sub i64 %622, 40
  %624 = load i64, i64* %PC
  %625 = add i64 %624, 4
  store i64 %625, i64* %PC
  %626 = inttoptr i64 %623 to i64*
  %627 = load i64, i64* %626
  store i64 %627, i64* %RAX, align 8, !tbaa !2428
  %628 = load i64, i64* %RAX
  %629 = load i32, i32* %ECX
  %630 = zext i32 %629 to i64
  %631 = load i64, i64* %PC
  %632 = add i64 %631, 2
  store i64 %632, i64* %PC
  %633 = inttoptr i64 %628 to i32*
  store i32 %629, i32* %633
  %634 = load i64, i64* %PC
  %635 = sub i64 %634, 1952
  %636 = load i64, i64* %PC
  %637 = add i64 %636, 5
  %638 = load i64, i64* %PC
  %639 = add i64 %638, 5
  store i64 %639, i64* %PC
  %640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %641 = load i64, i64* %640, align 8, !tbaa !2428
  %642 = add i64 %641, -8
  %643 = inttoptr i64 %642 to i64*
  store i64 %637, i64* %643
  store i64 %642, i64* %640, align 8, !tbaa !2428
  %644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %635, i64* %644, align 8, !tbaa !2428
  %645 = load i64, i64* %PC
  %646 = call %struct.Memory* @ext_400660_lrand48(%struct.State* %0, i64 %645, %struct.Memory* %MEMORY.1)
  %647 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %648 = load i64, i64* %PC
  %649 = add i64 %648, 8
  store i64 %649, i64* %PC
  %650 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401080__rodata_type* @seg_401080__rodata to i64), i64 32) to double*)
  %651 = bitcast i8* %647 to double*
  store double %650, double* %651, align 1, !tbaa !2453
  %652 = getelementptr inbounds i8, i8* %647, i64 8
  %653 = bitcast i8* %652 to double*
  store double 0.000000e+00, double* %653, align 1, !tbaa !2453
  %654 = load i64, i64* %PC
  %655 = add i64 %654, 5
  store i64 %655, i64* %PC
  store i64 1000, i64* %RCX, align 8, !tbaa !2428
  %656 = load i32, i32* %ECX
  %657 = zext i32 %656 to i64
  %658 = load i64, i64* %PC
  %659 = add i64 %658, 2
  store i64 %659, i64* %PC
  %660 = and i64 %657, 4294967295
  store i64 %660, i64* %RDX, align 8, !tbaa !2428
  %661 = load i64, i64* %RBP
  %662 = sub i64 %661, 112
  %663 = load i64, i64* %RDX
  %664 = load i64, i64* %PC
  %665 = add i64 %664, 4
  store i64 %665, i64* %PC
  %666 = inttoptr i64 %662 to i64*
  store i64 %663, i64* %666
  %667 = load i64, i64* %PC
  %668 = add i64 %667, 2
  store i64 %668, i64* %PC
  %669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %671 = load i64, i64* %670, align 8, !tbaa !2428
  %672 = ashr i64 %671, 63
  store i64 %672, i64* %669, align 8, !tbaa !2428
  %673 = load i64, i64* %RBP
  %674 = sub i64 %673, 112
  %675 = load i64, i64* %PC
  %676 = add i64 %675, 4
  store i64 %676, i64* %PC
  %677 = inttoptr i64 %674 to i64*
  %678 = load i64, i64* %677
  store i64 %678, i64* %RSI, align 8, !tbaa !2428
  %679 = load i64, i64* %RSI
  %680 = load i64, i64* %PC
  %681 = add i64 %680, 3
  store i64 %681, i64* %PC
  %682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %683 = load i64, i64* %682, align 8, !tbaa !2428
  %684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %685 = load i64, i64* %684, align 8, !tbaa !2428
  %686 = sext i64 %679 to i128
  %687 = and i128 %686, -18446744073709551616
  %688 = zext i64 %685 to i128
  %689 = shl nuw i128 %688, 64
  %690 = zext i64 %683 to i128
  %691 = or i128 %689, %690
  %692 = zext i64 %679 to i128
  %693 = or i128 %687, %692
  %694 = sdiv i128 %691, %693
  %695 = trunc i128 %694 to i64
  %696 = and i128 %694, 18446744073709551615
  %697 = sext i64 %695 to i128
  %698 = and i128 %697, -18446744073709551616
  %699 = or i128 %698, %696
  %700 = icmp eq i128 %694, %699
  br i1 %700, label %705, label %701

; <label>:701:                                    ; preds = %block_400de5
  %702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %703 = load i64, i64* %702, align 8, !tbaa !2428
  %704 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %703, %struct.Memory* %646) #17
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit4

; <label>:705:                                    ; preds = %block_400de5
  %706 = srem i128 %691, %693
  %707 = trunc i128 %706 to i64
  store i64 %695, i64* %682, align 8, !tbaa !2428
  store i64 %707, i64* %684, align 8, !tbaa !2428
  %708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %708, align 1, !tbaa !2432
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %709, align 1, !tbaa !2446
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %710, align 1, !tbaa !2447
  %711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %711, align 1, !tbaa !2448
  %712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %712, align 1, !tbaa !2449
  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %713, align 1, !tbaa !2450
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit4

_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit4: ; preds = %701, %705
  %714 = phi %struct.Memory* [ %704, %701 ], [ %646, %705 ]
  %715 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %716 = load i64, i64* %RDX
  %717 = load i64, i64* %PC
  %718 = add i64 %717, 5
  store i64 %718, i64* %PC
  %719 = sitofp i64 %716 to double
  %720 = bitcast i8* %715 to double*
  store double %719, double* %720, align 1, !tbaa !2453
  %721 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %722 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %723 = bitcast %union.vec128_t* %XMM0 to i8*
  %724 = load i64, i64* %PC
  %725 = add i64 %724, 4
  store i64 %725, i64* %PC
  %726 = bitcast i8* %722 to double*
  %727 = load double, double* %726, align 1
  %728 = getelementptr inbounds i8, i8* %722, i64 8
  %729 = bitcast i8* %728 to i64*
  %730 = load i64, i64* %729, align 1
  %731 = bitcast i8* %723 to double*
  %732 = load double, double* %731, align 1
  %733 = fdiv double %727, %732
  %734 = bitcast i8* %721 to double*
  store double %733, double* %734, align 1, !tbaa !2453
  %735 = getelementptr inbounds i8, i8* %721, i64 8
  %736 = bitcast i8* %735 to i64*
  store i64 %730, i64* %736, align 1, !tbaa !2453
  %737 = load i64, i64* %RBP
  %738 = sub i64 %737, 88
  %739 = bitcast %union.vec128_t* %XMM1 to i8*
  %740 = load i64, i64* %PC
  %741 = add i64 %740, 5
  store i64 %741, i64* %PC
  %742 = bitcast i8* %739 to double*
  %743 = load double, double* %742, align 1
  %744 = inttoptr i64 %738 to double*
  store double %743, double* %744
  %745 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %746 = load i64, i64* %RBP
  %747 = sub i64 %746, 24
  %748 = load i64, i64* %PC
  %749 = add i64 %748, 5
  store i64 %749, i64* %PC
  %750 = inttoptr i64 %747 to double*
  %751 = load double, double* %750
  %752 = bitcast i8* %745 to double*
  store double %751, double* %752, align 1, !tbaa !2453
  %753 = getelementptr inbounds i8, i8* %745, i64 8
  %754 = bitcast i8* %753 to double*
  store double 0.000000e+00, double* %754, align 1, !tbaa !2453
  %755 = bitcast %union.vec128_t* %XMM0 to i8*
  %756 = load i64, i64* %RBP
  %757 = sub i64 %756, 88
  %758 = load i64, i64* %PC
  %759 = add i64 %758, 5
  store i64 %759, i64* %PC
  %760 = bitcast i8* %755 to double*
  %761 = load double, double* %760, align 1
  %762 = inttoptr i64 %757 to double*
  %763 = load double, double* %762
  %764 = fcmp uno double %761, %763
  br i1 %764, label %765, label %777

; <label>:765:                                    ; preds = %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit4
  %766 = fadd double %761, %763
  %767 = bitcast double %766 to i64
  %768 = and i64 %767, 9221120237041090560
  %769 = icmp eq i64 %768, 9218868437227405312
  %770 = and i64 %767, 2251799813685247
  %771 = icmp ne i64 %770, 0
  %772 = and i1 %769, %771
  br i1 %772, label %773, label %783

; <label>:773:                                    ; preds = %765
  %774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %775 = load i64, i64* %774, align 8, !tbaa !2428
  %776 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %775, %struct.Memory* %714) #17
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit3

; <label>:777:                                    ; preds = %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit4
  %778 = fcmp ogt double %761, %763
  br i1 %778, label %783, label %779

; <label>:779:                                    ; preds = %777
  %780 = fcmp olt double %761, %763
  br i1 %780, label %783, label %781

; <label>:781:                                    ; preds = %779
  %782 = fcmp oeq double %761, %763
  br i1 %782, label %783, label %790

; <label>:783:                                    ; preds = %781, %779, %777, %765
  %784 = phi i8 [ 0, %777 ], [ 0, %779 ], [ 1, %781 ], [ 1, %765 ]
  %785 = phi i8 [ 0, %777 ], [ 0, %779 ], [ 0, %781 ], [ 1, %765 ]
  %786 = phi i8 [ 0, %777 ], [ 1, %779 ], [ 0, %781 ], [ 1, %765 ]
  %787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %784, i8* %787, align 1, !tbaa !2451
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %785, i8* %788, align 1, !tbaa !2451
  %789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %786, i8* %789, align 1, !tbaa !2451
  br label %790

; <label>:790:                                    ; preds = %783, %781
  %791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %791, align 1, !tbaa !2451
  %792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %792, align 1, !tbaa !2451
  %793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %793, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit3

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit3: ; preds = %773, %790
  %794 = phi %struct.Memory* [ %776, %773 ], [ %714, %790 ]
  %795 = load i64, i64* %PC
  %796 = add i64 %795, 18
  %797 = load i64, i64* %PC
  %798 = add i64 %797, 6
  %799 = load i64, i64* %PC
  %800 = add i64 %799, 6
  store i64 %800, i64* %PC
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %802 = load i8, i8* %801, align 1, !tbaa !2432
  %803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %804 = load i8, i8* %803, align 1, !tbaa !2448
  %805 = or i8 %804, %802
  %806 = icmp ne i8 %805, 0
  %807 = zext i1 %806 to i8
  store i8 %807, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %809 = select i1 %806, i64 %796, i64 %798
  store i64 %809, i64* %808, align 8, !tbaa !2428
  %810 = load i8, i8* %BRANCH_TAKEN
  %811 = icmp eq i8 %810, 1
  br i1 %811, label %block_400e4b, label %block_400e3f

block_400f5f:                                     ; preds = %block_400f89, %block_400f58
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.7, %block_400f58 ], [ %MEMORY.10, %block_400f89 ]
  %812 = load i64, i64* %RBP
  %813 = sub i64 %812, 68
  %814 = load i64, i64* %PC
  %815 = add i64 %814, 3
  store i64 %815, i64* %PC
  %816 = inttoptr i64 %813 to i32*
  %817 = load i32, i32* %816
  %818 = zext i32 %817 to i64
  store i64 %818, i64* %RAX, align 8, !tbaa !2428
  %819 = load i32, i32* %EAX
  %820 = zext i32 %819 to i64
  %821 = load i64, i64* %PC
  %822 = add i64 %821, 7
  store i64 %822, i64* %PC
  %823 = load i32, i32* bitcast (%reg_len_type* @reg_len to i32*)
  %824 = sub i32 %819, %823
  %825 = icmp ult i32 %819, %823
  %826 = zext i1 %825 to i8
  %827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %826, i8* %827, align 1, !tbaa !2432
  %828 = and i32 %824, 255
  %829 = call i32 @llvm.ctpop.i32(i32 %828) #16
  %830 = trunc i32 %829 to i8
  %831 = and i8 %830, 1
  %832 = xor i8 %831, 1
  %833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %832, i8* %833, align 1, !tbaa !2446
  %834 = xor i32 %823, %819
  %835 = xor i32 %834, %824
  %836 = lshr i32 %835, 4
  %837 = trunc i32 %836 to i8
  %838 = and i8 %837, 1
  %839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %838, i8* %839, align 1, !tbaa !2447
  %840 = icmp eq i32 %824, 0
  %841 = zext i1 %840 to i8
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %841, i8* %842, align 1, !tbaa !2448
  %843 = lshr i32 %824, 31
  %844 = trunc i32 %843 to i8
  %845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %844, i8* %845, align 1, !tbaa !2449
  %846 = lshr i32 %819, 31
  %847 = lshr i32 %823, 31
  %848 = xor i32 %847, %846
  %849 = xor i32 %843, %846
  %850 = add nuw nsw i32 %849, %848
  %851 = icmp eq i32 %850, 2
  %852 = zext i1 %851 to i8
  %853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %852, i8* %853, align 1, !tbaa !2450
  %854 = load i64, i64* %PC
  %855 = add i64 %854, 58
  %856 = load i64, i64* %PC
  %857 = add i64 %856, 6
  %858 = load i64, i64* %PC
  %859 = add i64 %858, 6
  store i64 %859, i64* %PC
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %861 = load i8, i8* %860, align 1, !tbaa !2449
  %862 = icmp ne i8 %861, 0
  %863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %864 = load i8, i8* %863, align 1, !tbaa !2450
  %865 = icmp ne i8 %864, 0
  %866 = xor i1 %862, %865
  %867 = xor i1 %866, true
  %868 = zext i1 %867 to i8
  store i8 %868, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %870 = select i1 %866, i64 %857, i64 %855
  store i64 %870, i64* %869, align 8, !tbaa !2428
  %871 = load i8, i8* %BRANCH_TAKEN
  %872 = icmp eq i8 %871, 1
  %873 = load i64, i64* %RBP
  br i1 %872, label %block_400fa3, label %block_400f6f

block_400f58:                                     ; preds = %block_400c5e
  %874 = sub i64 %1753, 68
  %875 = load i64, i64* %PC
  %876 = add i64 %875, 7
  store i64 %876, i64* %PC
  %877 = inttoptr i64 %874 to i32*
  store i32 0, i32* %877
  br label %block_400f5f

block_400ece:                                     ; preds = %block_400e8e, %block_400eb5
  %MEMORY.3 = phi %struct.Memory* [ %2521, %block_400e8e ], [ %2521, %block_400eb5 ]
  %878 = load i64, i64* %RBP
  %879 = sub i64 %878, 48
  %880 = load i64, i64* %PC
  %881 = add i64 %880, 4
  store i64 %881, i64* %PC
  %882 = inttoptr i64 %879 to i32*
  %883 = load i32, i32* %882
  %884 = sext i32 %883 to i64
  store i64 %884, i64* %RAX, align 8, !tbaa !2428
  %885 = load i64, i64* %RAX
  %886 = load i64, i64* %RBP
  %887 = sub i64 %886, 80
  %888 = load i64, i64* %PC
  %889 = add i64 %888, 4
  store i64 %889, i64* %PC
  %890 = inttoptr i64 %887 to i64*
  %891 = load i64, i64* %890
  %892 = add i64 %891, %885
  store i64 %892, i64* %RAX, align 8, !tbaa !2428
  %893 = icmp ult i64 %892, %885
  %894 = icmp ult i64 %892, %891
  %895 = or i1 %893, %894
  %896 = zext i1 %895 to i8
  %897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %896, i8* %897, align 1, !tbaa !2432
  %898 = trunc i64 %892 to i32
  %899 = and i32 %898, 255
  %900 = call i32 @llvm.ctpop.i32(i32 %899) #16
  %901 = trunc i32 %900 to i8
  %902 = and i8 %901, 1
  %903 = xor i8 %902, 1
  %904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %903, i8* %904, align 1, !tbaa !2446
  %905 = xor i64 %891, %885
  %906 = xor i64 %905, %892
  %907 = lshr i64 %906, 4
  %908 = trunc i64 %907 to i8
  %909 = and i8 %908, 1
  %910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %909, i8* %910, align 1, !tbaa !2447
  %911 = icmp eq i64 %892, 0
  %912 = zext i1 %911 to i8
  %913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %912, i8* %913, align 1, !tbaa !2448
  %914 = lshr i64 %892, 63
  %915 = trunc i64 %914 to i8
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %915, i8* %916, align 1, !tbaa !2449
  %917 = lshr i64 %885, 63
  %918 = lshr i64 %891, 63
  %919 = xor i64 %914, %917
  %920 = xor i64 %914, %918
  %921 = add nuw nsw i64 %919, %920
  %922 = icmp eq i64 %921, 2
  %923 = zext i1 %922 to i8
  %924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %923, i8* %924, align 1, !tbaa !2450
  %925 = load i64, i64* %RAX
  %926 = load i64, i64* %PC
  %927 = add i64 %926, 4
  store i64 %927, i64* %PC
  %928 = and i64 1, %925
  store i64 %928, i64* %RAX, align 8, !tbaa !2428
  %929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %929, align 1, !tbaa !2432
  %930 = trunc i64 %928 to i32
  %931 = and i32 %930, 255
  %932 = call i32 @llvm.ctpop.i32(i32 %931) #16
  %933 = trunc i32 %932 to i8
  %934 = and i8 %933, 1
  %935 = xor i8 %934, 1
  %936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %935, i8* %936, align 1, !tbaa !2446
  %937 = icmp eq i64 %928, 0
  %938 = zext i1 %937 to i8
  %939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %938, i8* %939, align 1, !tbaa !2448
  %940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %940, align 1, !tbaa !2449
  %941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %941, align 1, !tbaa !2450
  %942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %942, align 1, !tbaa !2447
  %943 = load i32, i32* %EAX
  %944 = zext i32 %943 to i64
  %945 = load i64, i64* %PC
  %946 = add i64 %945, 2
  store i64 %946, i64* %PC
  %947 = and i64 %944, 4294967295
  store i64 %947, i64* %RCX, align 8, !tbaa !2428
  %948 = load i64, i64* %RBP
  %949 = sub i64 %948, 40
  %950 = load i64, i64* %PC
  %951 = add i64 %950, 4
  store i64 %951, i64* %PC
  %952 = inttoptr i64 %949 to i64*
  %953 = load i64, i64* %952
  store i64 %953, i64* %RAX, align 8, !tbaa !2428
  %954 = load i64, i64* %RAX
  %955 = load i32, i32* %ECX
  %956 = zext i32 %955 to i64
  %957 = load i64, i64* %PC
  %958 = add i64 %957, 2
  store i64 %958, i64* %PC
  %959 = inttoptr i64 %954 to i32*
  store i32 %955, i32* %959
  %960 = load i64, i64* %PC
  %961 = sub i64 %960, 2178
  %962 = load i64, i64* %PC
  %963 = add i64 %962, 5
  %964 = load i64, i64* %PC
  %965 = add i64 %964, 5
  store i64 %965, i64* %PC
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %967 = load i64, i64* %966, align 8, !tbaa !2428
  %968 = add i64 %967, -8
  %969 = inttoptr i64 %968 to i64*
  store i64 %963, i64* %969
  store i64 %968, i64* %966, align 8, !tbaa !2428
  %970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %961, i64* %970, align 8, !tbaa !2428
  %971 = load i64, i64* %PC
  %972 = call %struct.Memory* @ext_400660_lrand48(%struct.State* %0, i64 %971, %struct.Memory* %MEMORY.3)
  %973 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %974 = load i64, i64* %PC
  %975 = add i64 %974, 8
  store i64 %975, i64* %PC
  %976 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401080__rodata_type* @seg_401080__rodata to i64), i64 24) to double*)
  %977 = bitcast i8* %973 to double*
  store double %976, double* %977, align 1, !tbaa !2453
  %978 = getelementptr inbounds i8, i8* %973, i64 8
  %979 = bitcast i8* %978 to double*
  store double 0.000000e+00, double* %979, align 1, !tbaa !2453
  %980 = load i64, i64* %PC
  %981 = add i64 %980, 5
  store i64 %981, i64* %PC
  store i64 10000, i64* %RCX, align 8, !tbaa !2428
  %982 = load i32, i32* %ECX
  %983 = zext i32 %982 to i64
  %984 = load i64, i64* %PC
  %985 = add i64 %984, 2
  store i64 %985, i64* %PC
  %986 = and i64 %983, 4294967295
  store i64 %986, i64* %RDX, align 8, !tbaa !2428
  %987 = load i64, i64* %RBP
  %988 = sub i64 %987, 120
  %989 = load i64, i64* %RDX
  %990 = load i64, i64* %PC
  %991 = add i64 %990, 4
  store i64 %991, i64* %PC
  %992 = inttoptr i64 %988 to i64*
  store i64 %989, i64* %992
  %993 = load i64, i64* %PC
  %994 = add i64 %993, 2
  store i64 %994, i64* %PC
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %997 = load i64, i64* %996, align 8, !tbaa !2428
  %998 = ashr i64 %997, 63
  store i64 %998, i64* %995, align 8, !tbaa !2428
  %999 = load i64, i64* %RBP
  %1000 = sub i64 %999, 120
  %1001 = load i64, i64* %PC
  %1002 = add i64 %1001, 4
  store i64 %1002, i64* %PC
  %1003 = inttoptr i64 %1000 to i64*
  %1004 = load i64, i64* %1003
  store i64 %1004, i64* %RSI, align 8, !tbaa !2428
  %1005 = load i64, i64* %RSI
  %1006 = load i64, i64* %PC
  %1007 = add i64 %1006, 3
  store i64 %1007, i64* %PC
  %1008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %1009 = load i64, i64* %1008, align 8, !tbaa !2428
  %1010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1011 = load i64, i64* %1010, align 8, !tbaa !2428
  %1012 = sext i64 %1005 to i128
  %1013 = and i128 %1012, -18446744073709551616
  %1014 = zext i64 %1011 to i128
  %1015 = shl nuw i128 %1014, 64
  %1016 = zext i64 %1009 to i128
  %1017 = or i128 %1015, %1016
  %1018 = zext i64 %1005 to i128
  %1019 = or i128 %1013, %1018
  %1020 = sdiv i128 %1017, %1019
  %1021 = trunc i128 %1020 to i64
  %1022 = and i128 %1020, 18446744073709551615
  %1023 = sext i64 %1021 to i128
  %1024 = and i128 %1023, -18446744073709551616
  %1025 = or i128 %1024, %1022
  %1026 = icmp eq i128 %1020, %1025
  br i1 %1026, label %1031, label %1027

; <label>:1027:                                   ; preds = %block_400ece
  %1028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1029 = load i64, i64* %1028, align 8, !tbaa !2428
  %1030 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1029, %struct.Memory* %972) #17
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit2

; <label>:1031:                                   ; preds = %block_400ece
  %1032 = srem i128 %1017, %1019
  %1033 = trunc i128 %1032 to i64
  store i64 %1021, i64* %1008, align 8, !tbaa !2428
  store i64 %1033, i64* %1010, align 8, !tbaa !2428
  %1034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1034, align 1, !tbaa !2432
  %1035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1035, align 1, !tbaa !2446
  %1036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1036, align 1, !tbaa !2447
  %1037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1037, align 1, !tbaa !2448
  %1038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1038, align 1, !tbaa !2449
  %1039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1039, align 1, !tbaa !2450
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit2

_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit2: ; preds = %1027, %1031
  %1040 = phi %struct.Memory* [ %1030, %1027 ], [ %972, %1031 ]
  %1041 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1042 = load i64, i64* %RDX
  %1043 = load i64, i64* %PC
  %1044 = add i64 %1043, 5
  store i64 %1044, i64* %PC
  %1045 = sitofp i64 %1042 to double
  %1046 = bitcast i8* %1041 to double*
  store double %1045, double* %1046, align 1, !tbaa !2453
  %1047 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1048 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1049 = bitcast %union.vec128_t* %XMM0 to i8*
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
  %1059 = fdiv double %1053, %1058
  %1060 = bitcast i8* %1047 to double*
  store double %1059, double* %1060, align 1, !tbaa !2453
  %1061 = getelementptr inbounds i8, i8* %1047, i64 8
  %1062 = bitcast i8* %1061 to i64*
  store i64 %1056, i64* %1062, align 1, !tbaa !2453
  %1063 = load i64, i64* %RBP
  %1064 = sub i64 %1063, 88
  %1065 = bitcast %union.vec128_t* %XMM1 to i8*
  %1066 = load i64, i64* %PC
  %1067 = add i64 %1066, 5
  store i64 %1067, i64* %PC
  %1068 = bitcast i8* %1065 to double*
  %1069 = load double, double* %1068, align 1
  %1070 = inttoptr i64 %1064 to double*
  store double %1069, double* %1070
  %1071 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1072 = load i64, i64* %RBP
  %1073 = sub i64 %1072, 24
  %1074 = load i64, i64* %PC
  %1075 = add i64 %1074, 5
  store i64 %1075, i64* %PC
  %1076 = inttoptr i64 %1073 to double*
  %1077 = load double, double* %1076
  %1078 = bitcast i8* %1071 to double*
  store double %1077, double* %1078, align 1, !tbaa !2453
  %1079 = getelementptr inbounds i8, i8* %1071, i64 8
  %1080 = bitcast i8* %1079 to double*
  store double 0.000000e+00, double* %1080, align 1, !tbaa !2453
  %1081 = bitcast %union.vec128_t* %XMM0 to i8*
  %1082 = load i64, i64* %RBP
  %1083 = sub i64 %1082, 88
  %1084 = load i64, i64* %PC
  %1085 = add i64 %1084, 5
  store i64 %1085, i64* %PC
  %1086 = bitcast i8* %1081 to double*
  %1087 = load double, double* %1086, align 1
  %1088 = inttoptr i64 %1083 to double*
  %1089 = load double, double* %1088
  %1090 = fcmp uno double %1087, %1089
  br i1 %1090, label %1091, label %1103

; <label>:1091:                                   ; preds = %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit2
  %1092 = fadd double %1087, %1089
  %1093 = bitcast double %1092 to i64
  %1094 = and i64 %1093, 9221120237041090560
  %1095 = icmp eq i64 %1094, 9218868437227405312
  %1096 = and i64 %1093, 2251799813685247
  %1097 = icmp ne i64 %1096, 0
  %1098 = and i1 %1095, %1097
  br i1 %1098, label %1099, label %1109

; <label>:1099:                                   ; preds = %1091
  %1100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1101 = load i64, i64* %1100, align 8, !tbaa !2428
  %1102 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1101, %struct.Memory* %1040) #17
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1

; <label>:1103:                                   ; preds = %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit2
  %1104 = fcmp ogt double %1087, %1089
  br i1 %1104, label %1109, label %1105

; <label>:1105:                                   ; preds = %1103
  %1106 = fcmp olt double %1087, %1089
  br i1 %1106, label %1109, label %1107

; <label>:1107:                                   ; preds = %1105
  %1108 = fcmp oeq double %1087, %1089
  br i1 %1108, label %1109, label %1116

; <label>:1109:                                   ; preds = %1107, %1105, %1103, %1091
  %1110 = phi i8 [ 0, %1103 ], [ 0, %1105 ], [ 1, %1107 ], [ 1, %1091 ]
  %1111 = phi i8 [ 0, %1103 ], [ 0, %1105 ], [ 0, %1107 ], [ 1, %1091 ]
  %1112 = phi i8 [ 0, %1103 ], [ 1, %1105 ], [ 0, %1107 ], [ 1, %1091 ]
  %1113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1110, i8* %1113, align 1, !tbaa !2451
  %1114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1111, i8* %1114, align 1, !tbaa !2451
  %1115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1112, i8* %1115, align 1, !tbaa !2451
  br label %1116

; <label>:1116:                                   ; preds = %1109, %1107
  %1117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1117, align 1, !tbaa !2451
  %1118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1118, align 1, !tbaa !2451
  %1119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1119, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1: ; preds = %1099, %1116
  %1120 = phi %struct.Memory* [ %1102, %1099 ], [ %1040, %1116 ]
  %1121 = load i64, i64* %PC
  %1122 = add i64 %1121, 18
  %1123 = load i64, i64* %PC
  %1124 = add i64 %1123, 6
  %1125 = load i64, i64* %PC
  %1126 = add i64 %1125, 6
  store i64 %1126, i64* %PC
  %1127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1128 = load i8, i8* %1127, align 1, !tbaa !2432
  %1129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1130 = load i8, i8* %1129, align 1, !tbaa !2448
  %1131 = or i8 %1130, %1128
  %1132 = icmp ne i8 %1131, 0
  %1133 = zext i1 %1132 to i8
  store i8 %1133, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1135 = select i1 %1132, i64 %1122, i64 %1124
  store i64 %1135, i64* %1134, align 8, !tbaa !2428
  %1136 = load i8, i8* %BRANCH_TAKEN
  %1137 = icmp eq i8 %1136, 1
  br i1 %1137, label %block_400f2d, label %block_400f21

block_400c6a:                                     ; preds = %block_400c5e
  %1138 = sub i64 %1753, 48
  %1139 = load i64, i64* %PC
  %1140 = add i64 %1139, 7
  store i64 %1140, i64* %PC
  %1141 = inttoptr i64 %1138 to i32*
  store i32 0, i32* %1141
  %1142 = load i64, i64* %RBP
  %1143 = sub i64 %1142, 52
  %1144 = load i64, i64* %PC
  %1145 = add i64 %1144, 7
  store i64 %1145, i64* %PC
  %1146 = inttoptr i64 %1143 to i32*
  store i32 0, i32* %1146
  %1147 = load i64, i64* %RBP
  %1148 = sub i64 %1147, 68
  %1149 = load i64, i64* %PC
  %1150 = add i64 %1149, 7
  store i64 %1150, i64* %PC
  %1151 = inttoptr i64 %1148 to i32*
  store i32 0, i32* %1151
  br label %block_400c7f

block_400cd9:                                     ; preds = %block_400ca5, %block_400cc0
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.9, %block_400ca5 ], [ %MEMORY.9, %block_400cc0 ]
  %1152 = load i64, i64* %RBP
  %1153 = sub i64 %1152, 40
  %1154 = load i64, i64* %PC
  %1155 = add i64 %1154, 4
  store i64 %1155, i64* %PC
  %1156 = inttoptr i64 %1153 to i64*
  %1157 = load i64, i64* %1156
  store i64 %1157, i64* %RAX, align 8, !tbaa !2428
  %1158 = load i64, i64* %RAX
  %1159 = add i64 %1158, 8
  %1160 = load i64, i64* %PC
  %1161 = add i64 %1160, 4
  store i64 %1161, i64* %PC
  %1162 = inttoptr i64 %1159 to i64*
  %1163 = load i64, i64* %1162
  store i64 %1163, i64* %RAX, align 8, !tbaa !2428
  %1164 = load i64, i64* %RAX
  %1165 = load i64, i64* %PC
  %1166 = add i64 %1165, 3
  store i64 %1166, i64* %PC
  %1167 = inttoptr i64 %1164 to i32*
  %1168 = load i32, i32* %1167
  %1169 = sext i32 %1168 to i64
  store i64 %1169, i64* %RAX, align 8, !tbaa !2428
  %1170 = load i64, i64* %RAX
  %1171 = load i64, i64* %RBP
  %1172 = sub i64 %1171, 80
  %1173 = load i64, i64* %PC
  %1174 = add i64 %1173, 4
  store i64 %1174, i64* %PC
  %1175 = inttoptr i64 %1172 to i64*
  %1176 = load i64, i64* %1175
  %1177 = add i64 %1176, %1170
  store i64 %1177, i64* %RAX, align 8, !tbaa !2428
  %1178 = icmp ult i64 %1177, %1170
  %1179 = icmp ult i64 %1177, %1176
  %1180 = or i1 %1178, %1179
  %1181 = zext i1 %1180 to i8
  %1182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1181, i8* %1182, align 1, !tbaa !2432
  %1183 = trunc i64 %1177 to i32
  %1184 = and i32 %1183, 255
  %1185 = call i32 @llvm.ctpop.i32(i32 %1184) #16
  %1186 = trunc i32 %1185 to i8
  %1187 = and i8 %1186, 1
  %1188 = xor i8 %1187, 1
  %1189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1188, i8* %1189, align 1, !tbaa !2446
  %1190 = xor i64 %1176, %1170
  %1191 = xor i64 %1190, %1177
  %1192 = lshr i64 %1191, 4
  %1193 = trunc i64 %1192 to i8
  %1194 = and i8 %1193, 1
  %1195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1194, i8* %1195, align 1, !tbaa !2447
  %1196 = icmp eq i64 %1177, 0
  %1197 = zext i1 %1196 to i8
  %1198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1197, i8* %1198, align 1, !tbaa !2448
  %1199 = lshr i64 %1177, 63
  %1200 = trunc i64 %1199 to i8
  %1201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1200, i8* %1201, align 1, !tbaa !2449
  %1202 = lshr i64 %1170, 63
  %1203 = lshr i64 %1176, 63
  %1204 = xor i64 %1199, %1202
  %1205 = xor i64 %1199, %1203
  %1206 = add nuw nsw i64 %1204, %1205
  %1207 = icmp eq i64 %1206, 2
  %1208 = zext i1 %1207 to i8
  %1209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1208, i8* %1209, align 1, !tbaa !2450
  %1210 = load i64, i64* %RAX
  %1211 = load i64, i64* %PC
  %1212 = add i64 %1211, 4
  store i64 %1212, i64* %PC
  %1213 = and i64 1, %1210
  store i64 %1213, i64* %RAX, align 8, !tbaa !2428
  %1214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1214, align 1, !tbaa !2432
  %1215 = trunc i64 %1213 to i32
  %1216 = and i32 %1215, 255
  %1217 = call i32 @llvm.ctpop.i32(i32 %1216) #16
  %1218 = trunc i32 %1217 to i8
  %1219 = and i8 %1218, 1
  %1220 = xor i8 %1219, 1
  %1221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1220, i8* %1221, align 1, !tbaa !2446
  %1222 = icmp eq i64 %1213, 0
  %1223 = zext i1 %1222 to i8
  %1224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1223, i8* %1224, align 1, !tbaa !2448
  %1225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1225, align 1, !tbaa !2449
  %1226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1226, align 1, !tbaa !2450
  %1227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1227, align 1, !tbaa !2447
  %1228 = load i32, i32* %EAX
  %1229 = zext i32 %1228 to i64
  %1230 = load i64, i64* %PC
  %1231 = add i64 %1230, 2
  store i64 %1231, i64* %PC
  %1232 = and i64 %1229, 4294967295
  store i64 %1232, i64* %RCX, align 8, !tbaa !2428
  %1233 = load i64, i64* %RBP
  %1234 = sub i64 %1233, 40
  %1235 = load i64, i64* %PC
  %1236 = add i64 %1235, 4
  store i64 %1236, i64* %PC
  %1237 = inttoptr i64 %1234 to i64*
  %1238 = load i64, i64* %1237
  store i64 %1238, i64* %RAX, align 8, !tbaa !2428
  %1239 = load i64, i64* %RAX
  %1240 = load i32, i32* %ECX
  %1241 = zext i32 %1240 to i64
  %1242 = load i64, i64* %PC
  %1243 = add i64 %1242, 2
  store i64 %1243, i64* %PC
  %1244 = inttoptr i64 %1239 to i32*
  store i32 %1240, i32* %1244
  %1245 = load i64, i64* %PC
  %1246 = sub i64 %1245, 1684
  %1247 = load i64, i64* %PC
  %1248 = add i64 %1247, 5
  %1249 = load i64, i64* %PC
  %1250 = add i64 %1249, 5
  store i64 %1250, i64* %PC
  %1251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1252 = load i64, i64* %1251, align 8, !tbaa !2428
  %1253 = add i64 %1252, -8
  %1254 = inttoptr i64 %1253 to i64*
  store i64 %1248, i64* %1254
  store i64 %1253, i64* %1251, align 8, !tbaa !2428
  %1255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1246, i64* %1255, align 8, !tbaa !2428
  %1256 = load i64, i64* %PC
  %1257 = call %struct.Memory* @ext_400660_lrand48(%struct.State* %0, i64 %1256, %struct.Memory* %MEMORY.4)
  %1258 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1259 = load i64, i64* %PC
  %1260 = add i64 %1259, 8
  store i64 %1260, i64* %PC
  %1261 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401080__rodata_type* @seg_401080__rodata to i64), i64 32) to double*)
  %1262 = bitcast i8* %1258 to double*
  store double %1261, double* %1262, align 1, !tbaa !2453
  %1263 = getelementptr inbounds i8, i8* %1258, i64 8
  %1264 = bitcast i8* %1263 to double*
  store double 0.000000e+00, double* %1264, align 1, !tbaa !2453
  %1265 = load i64, i64* %PC
  %1266 = add i64 %1265, 5
  store i64 %1266, i64* %PC
  store i64 1000, i64* %RCX, align 8, !tbaa !2428
  %1267 = load i32, i32* %ECX
  %1268 = zext i32 %1267 to i64
  %1269 = load i64, i64* %PC
  %1270 = add i64 %1269, 2
  store i64 %1270, i64* %PC
  %1271 = and i64 %1268, 4294967295
  store i64 %1271, i64* %RDX, align 8, !tbaa !2428
  %1272 = load i64, i64* %RBP
  %1273 = sub i64 %1272, 104
  %1274 = load i64, i64* %RDX
  %1275 = load i64, i64* %PC
  %1276 = add i64 %1275, 4
  store i64 %1276, i64* %PC
  %1277 = inttoptr i64 %1273 to i64*
  store i64 %1274, i64* %1277
  %1278 = load i64, i64* %PC
  %1279 = add i64 %1278, 2
  store i64 %1279, i64* %PC
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %1282 = load i64, i64* %1281, align 8, !tbaa !2428
  %1283 = ashr i64 %1282, 63
  store i64 %1283, i64* %1280, align 8, !tbaa !2428
  %1284 = load i64, i64* %RBP
  %1285 = sub i64 %1284, 104
  %1286 = load i64, i64* %PC
  %1287 = add i64 %1286, 4
  store i64 %1287, i64* %PC
  %1288 = inttoptr i64 %1285 to i64*
  %1289 = load i64, i64* %1288
  store i64 %1289, i64* %RSI, align 8, !tbaa !2428
  %1290 = load i64, i64* %RSI
  %1291 = load i64, i64* %PC
  %1292 = add i64 %1291, 3
  store i64 %1292, i64* %PC
  %1293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %1294 = load i64, i64* %1293, align 8, !tbaa !2428
  %1295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1296 = load i64, i64* %1295, align 8, !tbaa !2428
  %1297 = sext i64 %1290 to i128
  %1298 = and i128 %1297, -18446744073709551616
  %1299 = zext i64 %1296 to i128
  %1300 = shl nuw i128 %1299, 64
  %1301 = zext i64 %1294 to i128
  %1302 = or i128 %1300, %1301
  %1303 = zext i64 %1290 to i128
  %1304 = or i128 %1298, %1303
  %1305 = sdiv i128 %1302, %1304
  %1306 = trunc i128 %1305 to i64
  %1307 = and i128 %1305, 18446744073709551615
  %1308 = sext i64 %1306 to i128
  %1309 = and i128 %1308, -18446744073709551616
  %1310 = or i128 %1309, %1307
  %1311 = icmp eq i128 %1305, %1310
  br i1 %1311, label %1316, label %1312

; <label>:1312:                                   ; preds = %block_400cd9
  %1313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1314 = load i64, i64* %1313, align 8, !tbaa !2428
  %1315 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1314, %struct.Memory* %1257) #17
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

; <label>:1316:                                   ; preds = %block_400cd9
  %1317 = srem i128 %1302, %1304
  %1318 = trunc i128 %1317 to i64
  store i64 %1306, i64* %1293, align 8, !tbaa !2428
  store i64 %1318, i64* %1295, align 8, !tbaa !2428
  %1319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1319, align 1, !tbaa !2432
  %1320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1320, align 1, !tbaa !2446
  %1321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1321, align 1, !tbaa !2447
  %1322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1322, align 1, !tbaa !2448
  %1323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1323, align 1, !tbaa !2449
  %1324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1324, align 1, !tbaa !2450
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit: ; preds = %1312, %1316
  %1325 = phi %struct.Memory* [ %1315, %1312 ], [ %1257, %1316 ]
  %1326 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1327 = load i64, i64* %RDX
  %1328 = load i64, i64* %PC
  %1329 = add i64 %1328, 5
  store i64 %1329, i64* %PC
  %1330 = sitofp i64 %1327 to double
  %1331 = bitcast i8* %1326 to double*
  store double %1330, double* %1331, align 1, !tbaa !2453
  %1332 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1333 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1334 = bitcast %union.vec128_t* %XMM0 to i8*
  %1335 = load i64, i64* %PC
  %1336 = add i64 %1335, 4
  store i64 %1336, i64* %PC
  %1337 = bitcast i8* %1333 to double*
  %1338 = load double, double* %1337, align 1
  %1339 = getelementptr inbounds i8, i8* %1333, i64 8
  %1340 = bitcast i8* %1339 to i64*
  %1341 = load i64, i64* %1340, align 1
  %1342 = bitcast i8* %1334 to double*
  %1343 = load double, double* %1342, align 1
  %1344 = fdiv double %1338, %1343
  %1345 = bitcast i8* %1332 to double*
  store double %1344, double* %1345, align 1, !tbaa !2453
  %1346 = getelementptr inbounds i8, i8* %1332, i64 8
  %1347 = bitcast i8* %1346 to i64*
  store i64 %1341, i64* %1347, align 1, !tbaa !2453
  %1348 = load i64, i64* %RBP
  %1349 = sub i64 %1348, 88
  %1350 = bitcast %union.vec128_t* %XMM1 to i8*
  %1351 = load i64, i64* %PC
  %1352 = add i64 %1351, 5
  store i64 %1352, i64* %PC
  %1353 = bitcast i8* %1350 to double*
  %1354 = load double, double* %1353, align 1
  %1355 = inttoptr i64 %1349 to double*
  store double %1354, double* %1355
  %1356 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1357 = load i64, i64* %RBP
  %1358 = sub i64 %1357, 24
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
  %1366 = bitcast %union.vec128_t* %XMM0 to i8*
  %1367 = load i64, i64* %RBP
  %1368 = sub i64 %1367, 88
  %1369 = load i64, i64* %PC
  %1370 = add i64 %1369, 5
  store i64 %1370, i64* %PC
  %1371 = bitcast i8* %1366 to double*
  %1372 = load double, double* %1371, align 1
  %1373 = inttoptr i64 %1368 to double*
  %1374 = load double, double* %1373
  %1375 = fcmp uno double %1372, %1374
  br i1 %1375, label %1376, label %1388

; <label>:1376:                                   ; preds = %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit
  %1377 = fadd double %1372, %1374
  %1378 = bitcast double %1377 to i64
  %1379 = and i64 %1378, 9221120237041090560
  %1380 = icmp eq i64 %1379, 9218868437227405312
  %1381 = and i64 %1378, 2251799813685247
  %1382 = icmp ne i64 %1381, 0
  %1383 = and i1 %1380, %1382
  br i1 %1383, label %1384, label %1394

; <label>:1384:                                   ; preds = %1376
  %1385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1386 = load i64, i64* %1385, align 8, !tbaa !2428
  %1387 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1386, %struct.Memory* %1325) #17
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:1388:                                   ; preds = %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit
  %1389 = fcmp ogt double %1372, %1374
  br i1 %1389, label %1394, label %1390

; <label>:1390:                                   ; preds = %1388
  %1391 = fcmp olt double %1372, %1374
  br i1 %1391, label %1394, label %1392

; <label>:1392:                                   ; preds = %1390
  %1393 = fcmp oeq double %1372, %1374
  br i1 %1393, label %1394, label %1401

; <label>:1394:                                   ; preds = %1392, %1390, %1388, %1376
  %1395 = phi i8 [ 0, %1388 ], [ 0, %1390 ], [ 1, %1392 ], [ 1, %1376 ]
  %1396 = phi i8 [ 0, %1388 ], [ 0, %1390 ], [ 0, %1392 ], [ 1, %1376 ]
  %1397 = phi i8 [ 0, %1388 ], [ 1, %1390 ], [ 0, %1392 ], [ 1, %1376 ]
  %1398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1395, i8* %1398, align 1, !tbaa !2451
  %1399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1396, i8* %1399, align 1, !tbaa !2451
  %1400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1397, i8* %1400, align 1, !tbaa !2451
  br label %1401

; <label>:1401:                                   ; preds = %1394, %1392
  %1402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1402, align 1, !tbaa !2451
  %1403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1403, align 1, !tbaa !2451
  %1404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1404, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %1384, %1401
  %1405 = phi %struct.Memory* [ %1387, %1384 ], [ %1325, %1401 ]
  %1406 = load i64, i64* %PC
  %1407 = add i64 %1406, 18
  %1408 = load i64, i64* %PC
  %1409 = add i64 %1408, 6
  %1410 = load i64, i64* %PC
  %1411 = add i64 %1410, 6
  store i64 %1411, i64* %PC
  %1412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1413 = load i8, i8* %1412, align 1, !tbaa !2432
  %1414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1415 = load i8, i8* %1414, align 1, !tbaa !2448
  %1416 = or i8 %1415, %1413
  %1417 = icmp ne i8 %1416, 0
  %1418 = zext i1 %1417 to i8
  store i8 %1418, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1420 = select i1 %1417, i64 %1407, i64 %1409
  store i64 %1420, i64* %1419, align 8, !tbaa !2428
  %1421 = load i8, i8* %BRANCH_TAKEN
  %1422 = icmp eq i8 %1421, 1
  br i1 %1422, label %block_400d3f, label %block_400d33

block_400e4b:                                     ; preds = %block_400e3f, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit3
  %MEMORY.5 = phi %struct.Memory* [ %794, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit3 ], [ %794, %block_400e3f ]
  %1423 = load i64, i64* %RBP
  %1424 = sub i64 %1423, 40
  %1425 = load i64, i64* %PC
  %1426 = add i64 %1425, 4
  store i64 %1426, i64* %PC
  %1427 = inttoptr i64 %1424 to i64*
  %1428 = load i64, i64* %1427
  store i64 %1428, i64* %RAX, align 8, !tbaa !2428
  %1429 = load i64, i64* %RAX
  %1430 = add i64 %1429, 8
  %1431 = load i64, i64* %PC
  %1432 = add i64 %1431, 4
  store i64 %1432, i64* %PC
  %1433 = inttoptr i64 %1430 to i64*
  %1434 = load i64, i64* %1433
  store i64 %1434, i64* %RAX, align 8, !tbaa !2428
  %1435 = load i64, i64* %RAX
  %1436 = add i64 %1435, 4
  %1437 = load i64, i64* %PC
  %1438 = add i64 %1437, 4
  store i64 %1438, i64* %PC
  %1439 = inttoptr i64 %1436 to i32*
  %1440 = load i32, i32* %1439
  %1441 = sext i32 %1440 to i64
  store i64 %1441, i64* %RAX, align 8, !tbaa !2428
  %1442 = load i64, i64* %RAX
  %1443 = load i64, i64* %RBP
  %1444 = sub i64 %1443, 80
  %1445 = load i64, i64* %PC
  %1446 = add i64 %1445, 4
  store i64 %1446, i64* %PC
  %1447 = inttoptr i64 %1444 to i64*
  %1448 = load i64, i64* %1447
  %1449 = add i64 %1448, %1442
  store i64 %1449, i64* %RAX, align 8, !tbaa !2428
  %1450 = icmp ult i64 %1449, %1442
  %1451 = icmp ult i64 %1449, %1448
  %1452 = or i1 %1450, %1451
  %1453 = zext i1 %1452 to i8
  %1454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1453, i8* %1454, align 1, !tbaa !2432
  %1455 = trunc i64 %1449 to i32
  %1456 = and i32 %1455, 255
  %1457 = call i32 @llvm.ctpop.i32(i32 %1456) #16
  %1458 = trunc i32 %1457 to i8
  %1459 = and i8 %1458, 1
  %1460 = xor i8 %1459, 1
  %1461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1460, i8* %1461, align 1, !tbaa !2446
  %1462 = xor i64 %1448, %1442
  %1463 = xor i64 %1462, %1449
  %1464 = lshr i64 %1463, 4
  %1465 = trunc i64 %1464 to i8
  %1466 = and i8 %1465, 1
  %1467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1466, i8* %1467, align 1, !tbaa !2447
  %1468 = icmp eq i64 %1449, 0
  %1469 = zext i1 %1468 to i8
  %1470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1469, i8* %1470, align 1, !tbaa !2448
  %1471 = lshr i64 %1449, 63
  %1472 = trunc i64 %1471 to i8
  %1473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1472, i8* %1473, align 1, !tbaa !2449
  %1474 = lshr i64 %1442, 63
  %1475 = lshr i64 %1448, 63
  %1476 = xor i64 %1471, %1474
  %1477 = xor i64 %1471, %1475
  %1478 = add nuw nsw i64 %1476, %1477
  %1479 = icmp eq i64 %1478, 2
  %1480 = zext i1 %1479 to i8
  %1481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1480, i8* %1481, align 1, !tbaa !2450
  %1482 = load i64, i64* %RAX
  %1483 = load i64, i64* %PC
  %1484 = add i64 %1483, 4
  store i64 %1484, i64* %PC
  %1485 = and i64 1, %1482
  store i64 %1485, i64* %RAX, align 8, !tbaa !2428
  %1486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1486, align 1, !tbaa !2432
  %1487 = trunc i64 %1485 to i32
  %1488 = and i32 %1487, 255
  %1489 = call i32 @llvm.ctpop.i32(i32 %1488) #16
  %1490 = trunc i32 %1489 to i8
  %1491 = and i8 %1490, 1
  %1492 = xor i8 %1491, 1
  %1493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1492, i8* %1493, align 1, !tbaa !2446
  %1494 = icmp eq i64 %1485, 0
  %1495 = zext i1 %1494 to i8
  %1496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1495, i8* %1496, align 1, !tbaa !2448
  %1497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1497, align 1, !tbaa !2449
  %1498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1498, align 1, !tbaa !2450
  %1499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1499, align 1, !tbaa !2447
  %1500 = load i32, i32* %EAX
  %1501 = zext i32 %1500 to i64
  %1502 = load i64, i64* %PC
  %1503 = add i64 %1502, 2
  store i64 %1503, i64* %PC
  %1504 = and i64 %1501, 4294967295
  store i64 %1504, i64* %RCX, align 8, !tbaa !2428
  %1505 = load i64, i64* %RBP
  %1506 = sub i64 %1505, 40
  %1507 = load i64, i64* %PC
  %1508 = add i64 %1507, 4
  store i64 %1508, i64* %PC
  %1509 = inttoptr i64 %1506 to i64*
  %1510 = load i64, i64* %1509
  store i64 %1510, i64* %RAX, align 8, !tbaa !2428
  %1511 = load i64, i64* %RAX
  %1512 = add i64 %1511, 4
  %1513 = load i32, i32* %ECX
  %1514 = zext i32 %1513 to i64
  %1515 = load i64, i64* %PC
  %1516 = add i64 %1515, 3
  store i64 %1516, i64* %PC
  %1517 = inttoptr i64 %1512 to i32*
  store i32 %1513, i32* %1517
  %1518 = load i64, i64* %RBP
  %1519 = sub i64 %1518, 40
  %1520 = load i64, i64* %PC
  %1521 = add i64 %1520, 4
  store i64 %1521, i64* %PC
  %1522 = inttoptr i64 %1519 to i64*
  %1523 = load i64, i64* %1522
  store i64 %1523, i64* %RAX, align 8, !tbaa !2428
  %1524 = load i64, i64* %RAX
  %1525 = add i64 %1524, 8
  %1526 = load i64, i64* %PC
  %1527 = add i64 %1526, 4
  store i64 %1527, i64* %PC
  %1528 = inttoptr i64 %1525 to i64*
  %1529 = load i64, i64* %1528
  store i64 %1529, i64* %RAX, align 8, !tbaa !2428
  %1530 = load i64, i64* %RBP
  %1531 = sub i64 %1530, 40
  %1532 = load i64, i64* %RAX
  %1533 = load i64, i64* %PC
  %1534 = add i64 %1533, 4
  store i64 %1534, i64* %PC
  %1535 = inttoptr i64 %1531 to i64*
  store i64 %1532, i64* %1535
  %1536 = load i64, i64* %RBP
  %1537 = sub i64 %1536, 80
  %1538 = load i64, i64* %PC
  %1539 = add i64 %1538, 4
  store i64 %1539, i64* %PC
  %1540 = inttoptr i64 %1537 to i64*
  %1541 = load i64, i64* %1540
  store i64 %1541, i64* %RAX, align 8, !tbaa !2428
  %1542 = load i64, i64* %RAX
  %1543 = load i64, i64* %PC
  %1544 = add i64 %1543, 4
  store i64 %1544, i64* %PC
  %1545 = trunc i64 %1542 to i8
  %1546 = and i8 %1545, 1
  %1547 = ashr i64 %1542, 1
  store i64 %1547, i64* %RAX, align 8, !tbaa !2428
  %1548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1546, i8* %1548, align 1, !tbaa !2451
  %1549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1550 = trunc i64 %1547 to i32
  %1551 = and i32 %1550, 255
  %1552 = call i32 @llvm.ctpop.i32(i32 %1551) #16
  %1553 = trunc i32 %1552 to i8
  %1554 = and i8 %1553, 1
  %1555 = xor i8 %1554, 1
  store i8 %1555, i8* %1549, align 1, !tbaa !2451
  %1556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1556, align 1, !tbaa !2451
  %1557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1558 = icmp eq i64 %1547, 0
  %1559 = zext i1 %1558 to i8
  store i8 %1559, i8* %1557, align 1, !tbaa !2451
  %1560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1561 = lshr i64 %1547, 63
  %1562 = trunc i64 %1561 to i8
  store i8 %1562, i8* %1560, align 1, !tbaa !2451
  %1563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1563, align 1, !tbaa !2451
  %1564 = load i64, i64* %RBP
  %1565 = sub i64 %1564, 80
  %1566 = load i64, i64* %RAX
  %1567 = load i64, i64* %PC
  %1568 = add i64 %1567, 4
  store i64 %1568, i64* %PC
  %1569 = inttoptr i64 %1565 to i64*
  store i64 %1566, i64* %1569
  %1570 = load i64, i64* %RBP
  %1571 = sub i64 %1570, 72
  %1572 = load i64, i64* %PC
  %1573 = add i64 %1572, 3
  store i64 %1573, i64* %PC
  %1574 = inttoptr i64 %1571 to i32*
  %1575 = load i32, i32* %1574
  %1576 = zext i32 %1575 to i64
  store i64 %1576, i64* %RAX, align 8, !tbaa !2428
  %1577 = load i64, i64* %RAX
  %1578 = load i64, i64* %PC
  %1579 = add i64 %1578, 3
  store i64 %1579, i64* %PC
  %1580 = trunc i64 %1577 to i32
  %1581 = add i32 1, %1580
  %1582 = zext i32 %1581 to i64
  store i64 %1582, i64* %RAX, align 8, !tbaa !2428
  %1583 = icmp ult i32 %1581, %1580
  %1584 = icmp ult i32 %1581, 1
  %1585 = or i1 %1583, %1584
  %1586 = zext i1 %1585 to i8
  %1587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1586, i8* %1587, align 1, !tbaa !2432
  %1588 = and i32 %1581, 255
  %1589 = call i32 @llvm.ctpop.i32(i32 %1588) #16
  %1590 = trunc i32 %1589 to i8
  %1591 = and i8 %1590, 1
  %1592 = xor i8 %1591, 1
  %1593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1592, i8* %1593, align 1, !tbaa !2446
  %1594 = xor i64 1, %1577
  %1595 = trunc i64 %1594 to i32
  %1596 = xor i32 %1595, %1581
  %1597 = lshr i32 %1596, 4
  %1598 = trunc i32 %1597 to i8
  %1599 = and i8 %1598, 1
  %1600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1599, i8* %1600, align 1, !tbaa !2447
  %1601 = icmp eq i32 %1581, 0
  %1602 = zext i1 %1601 to i8
  %1603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1602, i8* %1603, align 1, !tbaa !2448
  %1604 = lshr i32 %1581, 31
  %1605 = trunc i32 %1604 to i8
  %1606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1605, i8* %1606, align 1, !tbaa !2449
  %1607 = lshr i32 %1580, 31
  %1608 = xor i32 %1604, %1607
  %1609 = add nuw nsw i32 %1608, %1604
  %1610 = icmp eq i32 %1609, 2
  %1611 = zext i1 %1610 to i8
  %1612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1611, i8* %1612, align 1, !tbaa !2450
  %1613 = load i64, i64* %RBP
  %1614 = sub i64 %1613, 72
  %1615 = load i32, i32* %EAX
  %1616 = zext i32 %1615 to i64
  %1617 = load i64, i64* %PC
  %1618 = add i64 %1617, 3
  store i64 %1618, i64* %PC
  %1619 = inttoptr i64 %1614 to i32*
  store i32 %1615, i32* %1619
  %1620 = load i64, i64* %PC
  %1621 = sub i64 %1620, 228
  %1622 = load i64, i64* %PC
  %1623 = add i64 %1622, 5
  store i64 %1623, i64* %PC
  %1624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1621, i64* %1624, align 8, !tbaa !2428
  br label %block_400da5

block_400da5:                                     ; preds = %block_400d95, %block_400e4b
  %MEMORY.6 = phi %struct.Memory* [ %2497, %block_400d95 ], [ %MEMORY.5, %block_400e4b ]
  %1625 = load i64, i64* %RBP
  %1626 = sub i64 %1625, 72
  %1627 = load i64, i64* %PC
  %1628 = add i64 %1627, 3
  store i64 %1628, i64* %PC
  %1629 = inttoptr i64 %1626 to i32*
  %1630 = load i32, i32* %1629
  %1631 = zext i32 %1630 to i64
  store i64 %1631, i64* %RAX, align 8, !tbaa !2428
  %1632 = load i32, i32* %EAX
  %1633 = zext i32 %1632 to i64
  %1634 = load i64, i64* %RBP
  %1635 = sub i64 %1634, 56
  %1636 = load i64, i64* %PC
  %1637 = add i64 %1636, 3
  store i64 %1637, i64* %PC
  %1638 = inttoptr i64 %1635 to i32*
  %1639 = load i32, i32* %1638
  %1640 = sub i32 %1632, %1639
  %1641 = icmp ult i32 %1632, %1639
  %1642 = zext i1 %1641 to i8
  %1643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1642, i8* %1643, align 1, !tbaa !2432
  %1644 = and i32 %1640, 255
  %1645 = call i32 @llvm.ctpop.i32(i32 %1644) #16
  %1646 = trunc i32 %1645 to i8
  %1647 = and i8 %1646, 1
  %1648 = xor i8 %1647, 1
  %1649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1648, i8* %1649, align 1, !tbaa !2446
  %1650 = xor i32 %1639, %1632
  %1651 = xor i32 %1650, %1640
  %1652 = lshr i32 %1651, 4
  %1653 = trunc i32 %1652 to i8
  %1654 = and i8 %1653, 1
  %1655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1654, i8* %1655, align 1, !tbaa !2447
  %1656 = icmp eq i32 %1640, 0
  %1657 = zext i1 %1656 to i8
  %1658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1657, i8* %1658, align 1, !tbaa !2448
  %1659 = lshr i32 %1640, 31
  %1660 = trunc i32 %1659 to i8
  %1661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1660, i8* %1661, align 1, !tbaa !2449
  %1662 = lshr i32 %1632, 31
  %1663 = lshr i32 %1639, 31
  %1664 = xor i32 %1663, %1662
  %1665 = xor i32 %1659, %1662
  %1666 = add nuw nsw i32 %1665, %1664
  %1667 = icmp eq i32 %1666, 2
  %1668 = zext i1 %1667 to i8
  %1669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1668, i8* %1669, align 1, !tbaa !2450
  %1670 = load i64, i64* %PC
  %1671 = add i64 %1670, 227
  %1672 = load i64, i64* %PC
  %1673 = add i64 %1672, 6
  %1674 = load i64, i64* %PC
  %1675 = add i64 %1674, 6
  store i64 %1675, i64* %PC
  %1676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1677 = load i8, i8* %1676, align 1, !tbaa !2449
  %1678 = icmp ne i8 %1677, 0
  %1679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1680 = load i8, i8* %1679, align 1, !tbaa !2450
  %1681 = icmp ne i8 %1680, 0
  %1682 = xor i1 %1678, %1681
  %1683 = xor i1 %1682, true
  %1684 = zext i1 %1683 to i8
  store i8 %1684, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1686 = select i1 %1682, i64 %1673, i64 %1671
  store i64 %1686, i64* %1685, align 8, !tbaa !2428
  %1687 = load i8, i8* %BRANCH_TAKEN
  %1688 = icmp eq i8 %1687, 1
  br i1 %1688, label %block_400e8e, label %block_400db1

block_400c5e:                                     ; preds = %block_400f2d, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit
  %MEMORY.7 = phi %struct.Memory* [ %314, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ], [ %MEMORY.8, %block_400f2d ]
  %1689 = load i64, i64* %RBP
  %1690 = sub i64 %1689, 64
  %1691 = load i64, i64* %PC
  %1692 = add i64 %1691, 3
  store i64 %1692, i64* %PC
  %1693 = inttoptr i64 %1690 to i32*
  %1694 = load i32, i32* %1693
  %1695 = zext i32 %1694 to i64
  store i64 %1695, i64* %RAX, align 8, !tbaa !2428
  %1696 = load i32, i32* %EAX
  %1697 = zext i32 %1696 to i64
  %1698 = load i64, i64* %RBP
  %1699 = sub i64 %1698, 4
  %1700 = load i64, i64* %PC
  %1701 = add i64 %1700, 3
  store i64 %1701, i64* %PC
  %1702 = inttoptr i64 %1699 to i32*
  %1703 = load i32, i32* %1702
  %1704 = sub i32 %1696, %1703
  %1705 = icmp ult i32 %1696, %1703
  %1706 = zext i1 %1705 to i8
  %1707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1706, i8* %1707, align 1, !tbaa !2432
  %1708 = and i32 %1704, 255
  %1709 = call i32 @llvm.ctpop.i32(i32 %1708) #16
  %1710 = trunc i32 %1709 to i8
  %1711 = and i8 %1710, 1
  %1712 = xor i8 %1711, 1
  %1713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1712, i8* %1713, align 1, !tbaa !2446
  %1714 = xor i32 %1703, %1696
  %1715 = xor i32 %1714, %1704
  %1716 = lshr i32 %1715, 4
  %1717 = trunc i32 %1716 to i8
  %1718 = and i8 %1717, 1
  %1719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1718, i8* %1719, align 1, !tbaa !2447
  %1720 = icmp eq i32 %1704, 0
  %1721 = zext i1 %1720 to i8
  %1722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1721, i8* %1722, align 1, !tbaa !2448
  %1723 = lshr i32 %1704, 31
  %1724 = trunc i32 %1723 to i8
  %1725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1724, i8* %1725, align 1, !tbaa !2449
  %1726 = lshr i32 %1696, 31
  %1727 = lshr i32 %1703, 31
  %1728 = xor i32 %1727, %1726
  %1729 = xor i32 %1723, %1726
  %1730 = add nuw nsw i32 %1729, %1728
  %1731 = icmp eq i32 %1730, 2
  %1732 = zext i1 %1731 to i8
  %1733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1732, i8* %1733, align 1, !tbaa !2450
  %1734 = load i64, i64* %PC
  %1735 = add i64 %1734, 756
  %1736 = load i64, i64* %PC
  %1737 = add i64 %1736, 6
  %1738 = load i64, i64* %PC
  %1739 = add i64 %1738, 6
  store i64 %1739, i64* %PC
  %1740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1741 = load i8, i8* %1740, align 1, !tbaa !2449
  %1742 = icmp ne i8 %1741, 0
  %1743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1744 = load i8, i8* %1743, align 1, !tbaa !2450
  %1745 = icmp ne i8 %1744, 0
  %1746 = xor i1 %1742, %1745
  %1747 = xor i1 %1746, true
  %1748 = zext i1 %1747 to i8
  store i8 %1748, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1750 = select i1 %1746, i64 %1737, i64 %1735
  store i64 %1750, i64* %1749, align 8, !tbaa !2428
  %1751 = load i8, i8* %BRANCH_TAKEN
  %1752 = icmp eq i8 %1751, 1
  %1753 = load i64, i64* %RBP
  br i1 %1752, label %block_400f58, label %block_400c6a

block_400e3f:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit3
  %1754 = load i64, i64* %RBP
  %1755 = sub i64 %1754, 80
  %1756 = load i64, i64* %PC
  %1757 = add i64 %1756, 4
  store i64 %1757, i64* %PC
  %1758 = inttoptr i64 %1755 to i64*
  %1759 = load i64, i64* %1758
  store i64 %1759, i64* %RAX, align 8, !tbaa !2428
  %1760 = load i64, i64* %RAX
  %1761 = load i64, i64* %PC
  %1762 = add i64 %1761, 4
  store i64 %1762, i64* %PC
  %1763 = xor i64 1, %1760
  store i64 %1763, i64* %RAX, align 8, !tbaa !2428
  %1764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1764, align 1, !tbaa !2432
  %1765 = trunc i64 %1763 to i32
  %1766 = and i32 %1765, 255
  %1767 = call i32 @llvm.ctpop.i32(i32 %1766) #16
  %1768 = trunc i32 %1767 to i8
  %1769 = and i8 %1768, 1
  %1770 = xor i8 %1769, 1
  %1771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1770, i8* %1771, align 1, !tbaa !2446
  %1772 = icmp eq i64 %1763, 0
  %1773 = zext i1 %1772 to i8
  %1774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1773, i8* %1774, align 1, !tbaa !2448
  %1775 = lshr i64 %1763, 63
  %1776 = trunc i64 %1775 to i8
  %1777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1776, i8* %1777, align 1, !tbaa !2449
  %1778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1778, align 1, !tbaa !2450
  %1779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1779, align 1, !tbaa !2447
  %1780 = load i64, i64* %RBP
  %1781 = sub i64 %1780, 80
  %1782 = load i64, i64* %RAX
  %1783 = load i64, i64* %PC
  %1784 = add i64 %1783, 4
  store i64 %1784, i64* %PC
  %1785 = inttoptr i64 %1781 to i64*
  store i64 %1782, i64* %1785
  br label %block_400e4b

block_400eb5:                                     ; preds = %block_400e8e
  %1786 = load i64, i64* %RBP
  %1787 = sub i64 %1786, 40
  %1788 = load i64, i64* %PC
  %1789 = add i64 %1788, 4
  store i64 %1789, i64* %PC
  %1790 = inttoptr i64 %1787 to i64*
  %1791 = load i64, i64* %1790
  store i64 %1791, i64* %RAX, align 8, !tbaa !2428
  %1792 = load i64, i64* %RAX
  %1793 = load i64, i64* %PC
  %1794 = add i64 %1793, 2
  store i64 %1794, i64* %PC
  %1795 = inttoptr i64 %1792 to i32*
  %1796 = load i32, i32* %1795
  %1797 = zext i32 %1796 to i64
  store i64 %1797, i64* %RCX, align 8, !tbaa !2428
  %1798 = load i64, i64* %RCX
  %1799 = load i64, i64* %RBP
  %1800 = sub i64 %1799, 48
  %1801 = load i64, i64* %PC
  %1802 = add i64 %1801, 3
  store i64 %1802, i64* %PC
  %1803 = trunc i64 %1798 to i32
  %1804 = inttoptr i64 %1800 to i32*
  %1805 = load i32, i32* %1804
  %1806 = add i32 %1805, %1803
  %1807 = zext i32 %1806 to i64
  store i64 %1807, i64* %RCX, align 8, !tbaa !2428
  %1808 = icmp ult i32 %1806, %1803
  %1809 = icmp ult i32 %1806, %1805
  %1810 = or i1 %1808, %1809
  %1811 = zext i1 %1810 to i8
  %1812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1811, i8* %1812, align 1, !tbaa !2432
  %1813 = and i32 %1806, 255
  %1814 = call i32 @llvm.ctpop.i32(i32 %1813) #16
  %1815 = trunc i32 %1814 to i8
  %1816 = and i8 %1815, 1
  %1817 = xor i8 %1816, 1
  %1818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1817, i8* %1818, align 1, !tbaa !2446
  %1819 = xor i32 %1805, %1803
  %1820 = xor i32 %1819, %1806
  %1821 = lshr i32 %1820, 4
  %1822 = trunc i32 %1821 to i8
  %1823 = and i8 %1822, 1
  %1824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1823, i8* %1824, align 1, !tbaa !2447
  %1825 = icmp eq i32 %1806, 0
  %1826 = zext i1 %1825 to i8
  %1827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1826, i8* %1827, align 1, !tbaa !2448
  %1828 = lshr i32 %1806, 31
  %1829 = trunc i32 %1828 to i8
  %1830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1829, i8* %1830, align 1, !tbaa !2449
  %1831 = lshr i32 %1803, 31
  %1832 = lshr i32 %1805, 31
  %1833 = xor i32 %1828, %1831
  %1834 = xor i32 %1828, %1832
  %1835 = add nuw nsw i32 %1833, %1834
  %1836 = icmp eq i32 %1835, 2
  %1837 = zext i1 %1836 to i8
  %1838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1837, i8* %1838, align 1, !tbaa !2450
  %1839 = load i64, i64* %RBP
  %1840 = sub i64 %1839, 48
  %1841 = load i32, i32* %ECX
  %1842 = zext i32 %1841 to i64
  %1843 = load i64, i64* %PC
  %1844 = add i64 %1843, 3
  store i64 %1844, i64* %PC
  %1845 = inttoptr i64 %1840 to i32*
  store i32 %1841, i32* %1845
  %1846 = load i64, i64* %RBP
  %1847 = sub i64 %1846, 40
  %1848 = load i64, i64* %PC
  %1849 = add i64 %1848, 4
  store i64 %1849, i64* %PC
  %1850 = inttoptr i64 %1847 to i64*
  %1851 = load i64, i64* %1850
  store i64 %1851, i64* %RAX, align 8, !tbaa !2428
  %1852 = load i64, i64* %RAX
  %1853 = add i64 %1852, 4
  %1854 = load i64, i64* %PC
  %1855 = add i64 %1854, 3
  store i64 %1855, i64* %PC
  %1856 = inttoptr i64 %1853 to i32*
  %1857 = load i32, i32* %1856
  %1858 = zext i32 %1857 to i64
  store i64 %1858, i64* %RCX, align 8, !tbaa !2428
  %1859 = load i64, i64* %RCX
  %1860 = load i64, i64* %RBP
  %1861 = sub i64 %1860, 52
  %1862 = load i64, i64* %PC
  %1863 = add i64 %1862, 3
  store i64 %1863, i64* %PC
  %1864 = trunc i64 %1859 to i32
  %1865 = inttoptr i64 %1861 to i32*
  %1866 = load i32, i32* %1865
  %1867 = add i32 %1866, %1864
  %1868 = zext i32 %1867 to i64
  store i64 %1868, i64* %RCX, align 8, !tbaa !2428
  %1869 = icmp ult i32 %1867, %1864
  %1870 = icmp ult i32 %1867, %1866
  %1871 = or i1 %1869, %1870
  %1872 = zext i1 %1871 to i8
  %1873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1872, i8* %1873, align 1, !tbaa !2432
  %1874 = and i32 %1867, 255
  %1875 = call i32 @llvm.ctpop.i32(i32 %1874) #16
  %1876 = trunc i32 %1875 to i8
  %1877 = and i8 %1876, 1
  %1878 = xor i8 %1877, 1
  %1879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1878, i8* %1879, align 1, !tbaa !2446
  %1880 = xor i32 %1866, %1864
  %1881 = xor i32 %1880, %1867
  %1882 = lshr i32 %1881, 4
  %1883 = trunc i32 %1882 to i8
  %1884 = and i8 %1883, 1
  %1885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1884, i8* %1885, align 1, !tbaa !2447
  %1886 = icmp eq i32 %1867, 0
  %1887 = zext i1 %1886 to i8
  %1888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1887, i8* %1888, align 1, !tbaa !2448
  %1889 = lshr i32 %1867, 31
  %1890 = trunc i32 %1889 to i8
  %1891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1890, i8* %1891, align 1, !tbaa !2449
  %1892 = lshr i32 %1864, 31
  %1893 = lshr i32 %1866, 31
  %1894 = xor i32 %1889, %1892
  %1895 = xor i32 %1889, %1893
  %1896 = add nuw nsw i32 %1894, %1895
  %1897 = icmp eq i32 %1896, 2
  %1898 = zext i1 %1897 to i8
  %1899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1898, i8* %1899, align 1, !tbaa !2450
  %1900 = load i64, i64* %RBP
  %1901 = sub i64 %1900, 52
  %1902 = load i32, i32* %ECX
  %1903 = zext i32 %1902 to i64
  %1904 = load i64, i64* %PC
  %1905 = add i64 %1904, 3
  store i64 %1905, i64* %PC
  %1906 = inttoptr i64 %1901 to i32*
  store i32 %1902, i32* %1906
  br label %block_400ece

block_400d33:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %1907 = load i64, i64* %RBP
  %1908 = sub i64 %1907, 80
  %1909 = load i64, i64* %PC
  %1910 = add i64 %1909, 4
  store i64 %1910, i64* %PC
  %1911 = inttoptr i64 %1908 to i64*
  %1912 = load i64, i64* %1911
  store i64 %1912, i64* %RAX, align 8, !tbaa !2428
  %1913 = load i64, i64* %RAX
  %1914 = load i64, i64* %PC
  %1915 = add i64 %1914, 4
  store i64 %1915, i64* %PC
  %1916 = xor i64 1, %1913
  store i64 %1916, i64* %RAX, align 8, !tbaa !2428
  %1917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1917, align 1, !tbaa !2432
  %1918 = trunc i64 %1916 to i32
  %1919 = and i32 %1918, 255
  %1920 = call i32 @llvm.ctpop.i32(i32 %1919) #16
  %1921 = trunc i32 %1920 to i8
  %1922 = and i8 %1921, 1
  %1923 = xor i8 %1922, 1
  %1924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1923, i8* %1924, align 1, !tbaa !2446
  %1925 = icmp eq i64 %1916, 0
  %1926 = zext i1 %1925 to i8
  %1927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1926, i8* %1927, align 1, !tbaa !2448
  %1928 = lshr i64 %1916, 63
  %1929 = trunc i64 %1928 to i8
  %1930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1929, i8* %1930, align 1, !tbaa !2449
  %1931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1931, align 1, !tbaa !2450
  %1932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1932, align 1, !tbaa !2447
  %1933 = load i64, i64* %RBP
  %1934 = sub i64 %1933, 80
  %1935 = load i64, i64* %RAX
  %1936 = load i64, i64* %PC
  %1937 = add i64 %1936, 4
  store i64 %1937, i64* %PC
  %1938 = inttoptr i64 %1934 to i64*
  store i64 %1935, i64* %1938
  br label %block_400d3f

block_400db1:                                     ; preds = %block_400da5
  %1939 = load i64, i64* %RBP
  %1940 = sub i64 %1939, 32
  %1941 = load i64, i64* %PC
  %1942 = add i64 %1941, 4
  store i64 %1942, i64* %PC
  %1943 = inttoptr i64 %1940 to i64*
  %1944 = load i64, i64* %1943
  store i64 %1944, i64* %RAX, align 8, !tbaa !2428
  %1945 = load i64, i64* %RBP
  %1946 = sub i64 %1945, 60
  %1947 = load i64, i64* %PC
  %1948 = add i64 %1947, 4
  store i64 %1948, i64* %PC
  %1949 = inttoptr i64 %1946 to i32*
  %1950 = load i32, i32* %1949
  %1951 = sext i32 %1950 to i64
  %1952 = mul nsw i64 %1951, 31
  %1953 = trunc i64 %1952 to i32
  %1954 = and i64 %1952, 4294967295
  store i64 %1954, i64* %RCX, align 8, !tbaa !2428
  %1955 = shl i64 %1952, 32
  %1956 = ashr exact i64 %1955, 32
  %1957 = icmp ne i64 %1956, %1952
  %1958 = zext i1 %1957 to i8
  %1959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1958, i8* %1959, align 1, !tbaa !2432
  %1960 = and i32 %1953, 255
  %1961 = call i32 @llvm.ctpop.i32(i32 %1960) #16
  %1962 = trunc i32 %1961 to i8
  %1963 = and i8 %1962, 1
  %1964 = xor i8 %1963, 1
  %1965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1964, i8* %1965, align 1, !tbaa !2446
  %1966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1966, align 1, !tbaa !2447
  %1967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1967, align 1, !tbaa !2448
  %1968 = lshr i32 %1953, 31
  %1969 = trunc i32 %1968 to i8
  %1970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1969, i8* %1970, align 1, !tbaa !2449
  %1971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1958, i8* %1971, align 1, !tbaa !2450
  %1972 = load i64, i64* %RCX
  %1973 = load i64, i64* %RBP
  %1974 = sub i64 %1973, 72
  %1975 = load i64, i64* %PC
  %1976 = add i64 %1975, 3
  store i64 %1976, i64* %PC
  %1977 = trunc i64 %1972 to i32
  %1978 = inttoptr i64 %1974 to i32*
  %1979 = load i32, i32* %1978
  %1980 = add i32 %1979, %1977
  %1981 = zext i32 %1980 to i64
  store i64 %1981, i64* %RCX, align 8, !tbaa !2428
  %1982 = icmp ult i32 %1980, %1977
  %1983 = icmp ult i32 %1980, %1979
  %1984 = or i1 %1982, %1983
  %1985 = zext i1 %1984 to i8
  %1986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1985, i8* %1986, align 1, !tbaa !2432
  %1987 = and i32 %1980, 255
  %1988 = call i32 @llvm.ctpop.i32(i32 %1987) #16
  %1989 = trunc i32 %1988 to i8
  %1990 = and i8 %1989, 1
  %1991 = xor i8 %1990, 1
  %1992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1991, i8* %1992, align 1, !tbaa !2446
  %1993 = xor i32 %1979, %1977
  %1994 = xor i32 %1993, %1980
  %1995 = lshr i32 %1994, 4
  %1996 = trunc i32 %1995 to i8
  %1997 = and i8 %1996, 1
  %1998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1997, i8* %1998, align 1, !tbaa !2447
  %1999 = icmp eq i32 %1980, 0
  %2000 = zext i1 %1999 to i8
  %2001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2000, i8* %2001, align 1, !tbaa !2448
  %2002 = lshr i32 %1980, 31
  %2003 = trunc i32 %2002 to i8
  %2004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2003, i8* %2004, align 1, !tbaa !2449
  %2005 = lshr i32 %1977, 31
  %2006 = lshr i32 %1979, 31
  %2007 = xor i32 %2002, %2005
  %2008 = xor i32 %2002, %2006
  %2009 = add nuw nsw i32 %2007, %2008
  %2010 = icmp eq i32 %2009, 2
  %2011 = zext i1 %2010 to i8
  %2012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2011, i8* %2012, align 1, !tbaa !2450
  %2013 = load i32, i32* %ECX
  %2014 = zext i32 %2013 to i64
  %2015 = load i64, i64* %PC
  %2016 = add i64 %2015, 3
  store i64 %2016, i64* %PC
  %2017 = shl i64 %2014, 32
  %2018 = ashr exact i64 %2017, 32
  store i64 %2018, i64* %RDX, align 8, !tbaa !2428
  %2019 = load i64, i64* %RAX
  %2020 = load i64, i64* %RDX
  %2021 = add i64 %2020, %2019
  %2022 = load i64, i64* %PC
  %2023 = add i64 %2022, 4
  store i64 %2023, i64* %PC
  %2024 = inttoptr i64 %2021 to i8*
  %2025 = load i8, i8* %2024
  %2026 = sext i8 %2025 to i64
  %2027 = and i64 %2026, 4294967295
  store i64 %2027, i64* %RCX, align 8, !tbaa !2428
  %2028 = load i32, i32* %ECX
  %2029 = zext i32 %2028 to i64
  %2030 = load i64, i64* %PC
  %2031 = add i64 %2030, 3
  store i64 %2031, i64* %PC
  %2032 = sub i32 %2028, 49
  %2033 = icmp ult i32 %2028, 49
  %2034 = zext i1 %2033 to i8
  %2035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2034, i8* %2035, align 1, !tbaa !2432
  %2036 = and i32 %2032, 255
  %2037 = call i32 @llvm.ctpop.i32(i32 %2036) #16
  %2038 = trunc i32 %2037 to i8
  %2039 = and i8 %2038, 1
  %2040 = xor i8 %2039, 1
  %2041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2040, i8* %2041, align 1, !tbaa !2446
  %2042 = xor i64 49, %2029
  %2043 = trunc i64 %2042 to i32
  %2044 = xor i32 %2043, %2032
  %2045 = lshr i32 %2044, 4
  %2046 = trunc i32 %2045 to i8
  %2047 = and i8 %2046, 1
  %2048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2047, i8* %2048, align 1, !tbaa !2447
  %2049 = icmp eq i32 %2032, 0
  %2050 = zext i1 %2049 to i8
  %2051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2050, i8* %2051, align 1, !tbaa !2448
  %2052 = lshr i32 %2032, 31
  %2053 = trunc i32 %2052 to i8
  %2054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2053, i8* %2054, align 1, !tbaa !2449
  %2055 = lshr i32 %2028, 31
  %2056 = xor i32 %2052, %2055
  %2057 = add nuw nsw i32 %2056, %2055
  %2058 = icmp eq i32 %2057, 2
  %2059 = zext i1 %2058 to i8
  %2060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2059, i8* %2060, align 1, !tbaa !2450
  %2061 = load i64, i64* %PC
  %2062 = add i64 %2061, 31
  %2063 = load i64, i64* %PC
  %2064 = add i64 %2063, 6
  %2065 = load i64, i64* %PC
  %2066 = add i64 %2065, 6
  store i64 %2066, i64* %PC
  %2067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2068 = load i8, i8* %2067, align 1, !tbaa !2448
  %2069 = icmp eq i8 %2068, 0
  %2070 = zext i1 %2069 to i8
  store i8 %2070, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %2071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2072 = select i1 %2069, i64 %2062, i64 %2064
  store i64 %2072, i64* %2071, align 8, !tbaa !2428
  %2073 = load i8, i8* %BRANCH_TAKEN
  %2074 = icmp eq i8 %2073, 1
  br i1 %2074, label %block_400de5, label %block_400dcc

block_400f2d:                                     ; preds = %block_400f21, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1
  %MEMORY.8 = phi %struct.Memory* [ %1120, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1 ], [ %1120, %block_400f21 ]
  %2075 = load i64, i64* %RBP
  %2076 = sub i64 %2075, 52
  %2077 = load i64, i64* %PC
  %2078 = add i64 %2077, 4
  store i64 %2078, i64* %PC
  %2079 = inttoptr i64 %2076 to i32*
  %2080 = load i32, i32* %2079
  %2081 = sext i32 %2080 to i64
  store i64 %2081, i64* %RAX, align 8, !tbaa !2428
  %2082 = load i64, i64* %RAX
  %2083 = load i64, i64* %RBP
  %2084 = sub i64 %2083, 80
  %2085 = load i64, i64* %PC
  %2086 = add i64 %2085, 4
  store i64 %2086, i64* %PC
  %2087 = inttoptr i64 %2084 to i64*
  %2088 = load i64, i64* %2087
  %2089 = add i64 %2088, %2082
  store i64 %2089, i64* %RAX, align 8, !tbaa !2428
  %2090 = icmp ult i64 %2089, %2082
  %2091 = icmp ult i64 %2089, %2088
  %2092 = or i1 %2090, %2091
  %2093 = zext i1 %2092 to i8
  %2094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2093, i8* %2094, align 1, !tbaa !2432
  %2095 = trunc i64 %2089 to i32
  %2096 = and i32 %2095, 255
  %2097 = call i32 @llvm.ctpop.i32(i32 %2096) #16
  %2098 = trunc i32 %2097 to i8
  %2099 = and i8 %2098, 1
  %2100 = xor i8 %2099, 1
  %2101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2100, i8* %2101, align 1, !tbaa !2446
  %2102 = xor i64 %2088, %2082
  %2103 = xor i64 %2102, %2089
  %2104 = lshr i64 %2103, 4
  %2105 = trunc i64 %2104 to i8
  %2106 = and i8 %2105, 1
  %2107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2106, i8* %2107, align 1, !tbaa !2447
  %2108 = icmp eq i64 %2089, 0
  %2109 = zext i1 %2108 to i8
  %2110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2109, i8* %2110, align 1, !tbaa !2448
  %2111 = lshr i64 %2089, 63
  %2112 = trunc i64 %2111 to i8
  %2113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2112, i8* %2113, align 1, !tbaa !2449
  %2114 = lshr i64 %2082, 63
  %2115 = lshr i64 %2088, 63
  %2116 = xor i64 %2111, %2114
  %2117 = xor i64 %2111, %2115
  %2118 = add nuw nsw i64 %2116, %2117
  %2119 = icmp eq i64 %2118, 2
  %2120 = zext i1 %2119 to i8
  %2121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2120, i8* %2121, align 1, !tbaa !2450
  %2122 = load i64, i64* %RAX
  %2123 = load i64, i64* %PC
  %2124 = add i64 %2123, 4
  store i64 %2124, i64* %PC
  %2125 = and i64 1, %2122
  store i64 %2125, i64* %RAX, align 8, !tbaa !2428
  %2126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2126, align 1, !tbaa !2432
  %2127 = trunc i64 %2125 to i32
  %2128 = and i32 %2127, 255
  %2129 = call i32 @llvm.ctpop.i32(i32 %2128) #16
  %2130 = trunc i32 %2129 to i8
  %2131 = and i8 %2130, 1
  %2132 = xor i8 %2131, 1
  %2133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2132, i8* %2133, align 1, !tbaa !2446
  %2134 = icmp eq i64 %2125, 0
  %2135 = zext i1 %2134 to i8
  %2136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2135, i8* %2136, align 1, !tbaa !2448
  %2137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2137, align 1, !tbaa !2449
  %2138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2138, align 1, !tbaa !2450
  %2139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2139, align 1, !tbaa !2447
  %2140 = load i32, i32* %EAX
  %2141 = zext i32 %2140 to i64
  %2142 = load i64, i64* %PC
  %2143 = add i64 %2142, 2
  store i64 %2143, i64* %PC
  %2144 = and i64 %2141, 4294967295
  store i64 %2144, i64* %RCX, align 8, !tbaa !2428
  %2145 = load i64, i64* %RBP
  %2146 = sub i64 %2145, 40
  %2147 = load i64, i64* %PC
  %2148 = add i64 %2147, 4
  store i64 %2148, i64* %PC
  %2149 = inttoptr i64 %2146 to i64*
  %2150 = load i64, i64* %2149
  store i64 %2150, i64* %RAX, align 8, !tbaa !2428
  %2151 = load i64, i64* %RAX
  %2152 = add i64 %2151, 4
  %2153 = load i32, i32* %ECX
  %2154 = zext i32 %2153 to i64
  %2155 = load i64, i64* %PC
  %2156 = add i64 %2155, 3
  store i64 %2156, i64* %PC
  %2157 = inttoptr i64 %2152 to i32*
  store i32 %2153, i32* %2157
  %2158 = load i64, i64* %RBP
  %2159 = sub i64 %2158, 16
  %2160 = load i64, i64* %PC
  %2161 = add i64 %2160, 4
  store i64 %2161, i64* %PC
  %2162 = inttoptr i64 %2159 to i64*
  %2163 = load i64, i64* %2162
  store i64 %2163, i64* %RAX, align 8, !tbaa !2428
  %2164 = load i64, i64* %RBP
  %2165 = sub i64 %2164, 40
  %2166 = load i64, i64* %RAX
  %2167 = load i64, i64* %PC
  %2168 = add i64 %2167, 4
  store i64 %2168, i64* %PC
  %2169 = inttoptr i64 %2165 to i64*
  store i64 %2166, i64* %2169
  %2170 = load i64, i64* %RBP
  %2171 = sub i64 %2170, 64
  %2172 = load i64, i64* %PC
  %2173 = add i64 %2172, 3
  store i64 %2173, i64* %PC
  %2174 = inttoptr i64 %2171 to i32*
  %2175 = load i32, i32* %2174
  %2176 = zext i32 %2175 to i64
  store i64 %2176, i64* %RAX, align 8, !tbaa !2428
  %2177 = load i64, i64* %RAX
  %2178 = load i64, i64* %PC
  %2179 = add i64 %2178, 3
  store i64 %2179, i64* %PC
  %2180 = trunc i64 %2177 to i32
  %2181 = add i32 1, %2180
  %2182 = zext i32 %2181 to i64
  store i64 %2182, i64* %RAX, align 8, !tbaa !2428
  %2183 = icmp ult i32 %2181, %2180
  %2184 = icmp ult i32 %2181, 1
  %2185 = or i1 %2183, %2184
  %2186 = zext i1 %2185 to i8
  %2187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2186, i8* %2187, align 1, !tbaa !2432
  %2188 = and i32 %2181, 255
  %2189 = call i32 @llvm.ctpop.i32(i32 %2188) #16
  %2190 = trunc i32 %2189 to i8
  %2191 = and i8 %2190, 1
  %2192 = xor i8 %2191, 1
  %2193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2192, i8* %2193, align 1, !tbaa !2446
  %2194 = xor i64 1, %2177
  %2195 = trunc i64 %2194 to i32
  %2196 = xor i32 %2195, %2181
  %2197 = lshr i32 %2196, 4
  %2198 = trunc i32 %2197 to i8
  %2199 = and i8 %2198, 1
  %2200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2199, i8* %2200, align 1, !tbaa !2447
  %2201 = icmp eq i32 %2181, 0
  %2202 = zext i1 %2201 to i8
  %2203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2202, i8* %2203, align 1, !tbaa !2448
  %2204 = lshr i32 %2181, 31
  %2205 = trunc i32 %2204 to i8
  %2206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2205, i8* %2206, align 1, !tbaa !2449
  %2207 = lshr i32 %2180, 31
  %2208 = xor i32 %2204, %2207
  %2209 = add nuw nsw i32 %2208, %2204
  %2210 = icmp eq i32 %2209, 2
  %2211 = zext i1 %2210 to i8
  %2212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2211, i8* %2212, align 1, !tbaa !2450
  %2213 = load i64, i64* %RBP
  %2214 = sub i64 %2213, 64
  %2215 = load i32, i32* %EAX
  %2216 = zext i32 %2215 to i64
  %2217 = load i64, i64* %PC
  %2218 = add i64 %2217, 3
  store i64 %2218, i64* %PC
  %2219 = inttoptr i64 %2214 to i32*
  store i32 %2215, i32* %2219
  %2220 = load i64, i64* %PC
  %2221 = sub i64 %2220, 757
  %2222 = load i64, i64* %PC
  %2223 = add i64 %2222, 5
  store i64 %2223, i64* %PC
  %2224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2221, i64* %2224, align 8, !tbaa !2428
  br label %block_400c5e

block_400fa3:                                     ; preds = %block_400f5f
  %2225 = sub i64 %873, 44
  %2226 = load i64, i64* %PC
  %2227 = add i64 %2226, 3
  store i64 %2227, i64* %PC
  %2228 = inttoptr i64 %2225 to i32*
  %2229 = load i32, i32* %2228
  %2230 = zext i32 %2229 to i64
  store i64 %2230, i64* %RAX, align 8, !tbaa !2428
  %2231 = load i64, i64* %RSP
  %2232 = load i64, i64* %PC
  %2233 = add i64 %2232, 7
  store i64 %2233, i64* %PC
  %2234 = add i64 128, %2231
  store i64 %2234, i64* %RSP, align 8, !tbaa !2428
  %2235 = icmp ult i64 %2234, %2231
  %2236 = icmp ult i64 %2234, 128
  %2237 = or i1 %2235, %2236
  %2238 = zext i1 %2237 to i8
  %2239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2238, i8* %2239, align 1, !tbaa !2432
  %2240 = trunc i64 %2234 to i32
  %2241 = and i32 %2240, 255
  %2242 = call i32 @llvm.ctpop.i32(i32 %2241) #16
  %2243 = trunc i32 %2242 to i8
  %2244 = and i8 %2243, 1
  %2245 = xor i8 %2244, 1
  %2246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2245, i8* %2246, align 1, !tbaa !2446
  %2247 = xor i64 128, %2231
  %2248 = xor i64 %2247, %2234
  %2249 = lshr i64 %2248, 4
  %2250 = trunc i64 %2249 to i8
  %2251 = and i8 %2250, 1
  %2252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2251, i8* %2252, align 1, !tbaa !2447
  %2253 = icmp eq i64 %2234, 0
  %2254 = zext i1 %2253 to i8
  %2255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2254, i8* %2255, align 1, !tbaa !2448
  %2256 = lshr i64 %2234, 63
  %2257 = trunc i64 %2256 to i8
  %2258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2257, i8* %2258, align 1, !tbaa !2449
  %2259 = lshr i64 %2231, 63
  %2260 = xor i64 %2256, %2259
  %2261 = add nuw nsw i64 %2260, %2256
  %2262 = icmp eq i64 %2261, 2
  %2263 = zext i1 %2262 to i8
  %2264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2263, i8* %2264, align 1, !tbaa !2450
  %2265 = load i64, i64* %PC
  %2266 = add i64 %2265, 1
  store i64 %2266, i64* %PC
  %2267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2268 = load i64, i64* %2267, align 8, !tbaa !2428
  %2269 = add i64 %2268, 8
  %2270 = inttoptr i64 %2268 to i64*
  %2271 = load i64, i64* %2270
  store i64 %2271, i64* %RBP, align 8, !tbaa !2428
  store i64 %2269, i64* %2267, align 8, !tbaa !2428
  %2272 = load i64, i64* %PC
  %2273 = add i64 %2272, 1
  store i64 %2273, i64* %PC
  %2274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2276 = load i64, i64* %2275, align 8, !tbaa !2428
  %2277 = inttoptr i64 %2276 to i64*
  %2278 = load i64, i64* %2277
  store i64 %2278, i64* %2274, align 8, !tbaa !2428
  %2279 = add i64 %2276, 8
  store i64 %2279, i64* %2275, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.2

block_400f21:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1
  %2280 = load i64, i64* %RBP
  %2281 = sub i64 %2280, 80
  %2282 = load i64, i64* %PC
  %2283 = add i64 %2282, 4
  store i64 %2283, i64* %PC
  %2284 = inttoptr i64 %2281 to i64*
  %2285 = load i64, i64* %2284
  store i64 %2285, i64* %RAX, align 8, !tbaa !2428
  %2286 = load i64, i64* %RAX
  %2287 = load i64, i64* %PC
  %2288 = add i64 %2287, 4
  store i64 %2288, i64* %PC
  %2289 = xor i64 1, %2286
  store i64 %2289, i64* %RAX, align 8, !tbaa !2428
  %2290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2290, align 1, !tbaa !2432
  %2291 = trunc i64 %2289 to i32
  %2292 = and i32 %2291, 255
  %2293 = call i32 @llvm.ctpop.i32(i32 %2292) #16
  %2294 = trunc i32 %2293 to i8
  %2295 = and i8 %2294, 1
  %2296 = xor i8 %2295, 1
  %2297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2296, i8* %2297, align 1, !tbaa !2446
  %2298 = icmp eq i64 %2289, 0
  %2299 = zext i1 %2298 to i8
  %2300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2299, i8* %2300, align 1, !tbaa !2448
  %2301 = lshr i64 %2289, 63
  %2302 = trunc i64 %2301 to i8
  %2303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2302, i8* %2303, align 1, !tbaa !2449
  %2304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2304, align 1, !tbaa !2450
  %2305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2305, align 1, !tbaa !2447
  %2306 = load i64, i64* %RBP
  %2307 = sub i64 %2306, 80
  %2308 = load i64, i64* %RAX
  %2309 = load i64, i64* %PC
  %2310 = add i64 %2309, 4
  store i64 %2310, i64* %PC
  %2311 = inttoptr i64 %2307 to i64*
  store i64 %2308, i64* %2311
  br label %block_400f2d

block_400cc0:                                     ; preds = %block_400ca5
  %2312 = load i64, i64* %RBP
  %2313 = sub i64 %2312, 40
  %2314 = load i64, i64* %PC
  %2315 = add i64 %2314, 4
  store i64 %2315, i64* %PC
  %2316 = inttoptr i64 %2313 to i64*
  %2317 = load i64, i64* %2316
  store i64 %2317, i64* %RAX, align 8, !tbaa !2428
  %2318 = load i64, i64* %RAX
  %2319 = load i64, i64* %PC
  %2320 = add i64 %2319, 2
  store i64 %2320, i64* %PC
  %2321 = inttoptr i64 %2318 to i32*
  %2322 = load i32, i32* %2321
  %2323 = zext i32 %2322 to i64
  store i64 %2323, i64* %RCX, align 8, !tbaa !2428
  %2324 = load i64, i64* %RCX
  %2325 = load i64, i64* %RBP
  %2326 = sub i64 %2325, 48
  %2327 = load i64, i64* %PC
  %2328 = add i64 %2327, 3
  store i64 %2328, i64* %PC
  %2329 = trunc i64 %2324 to i32
  %2330 = inttoptr i64 %2326 to i32*
  %2331 = load i32, i32* %2330
  %2332 = add i32 %2331, %2329
  %2333 = zext i32 %2332 to i64
  store i64 %2333, i64* %RCX, align 8, !tbaa !2428
  %2334 = icmp ult i32 %2332, %2329
  %2335 = icmp ult i32 %2332, %2331
  %2336 = or i1 %2334, %2335
  %2337 = zext i1 %2336 to i8
  %2338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2337, i8* %2338, align 1, !tbaa !2432
  %2339 = and i32 %2332, 255
  %2340 = call i32 @llvm.ctpop.i32(i32 %2339) #16
  %2341 = trunc i32 %2340 to i8
  %2342 = and i8 %2341, 1
  %2343 = xor i8 %2342, 1
  %2344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2343, i8* %2344, align 1, !tbaa !2446
  %2345 = xor i32 %2331, %2329
  %2346 = xor i32 %2345, %2332
  %2347 = lshr i32 %2346, 4
  %2348 = trunc i32 %2347 to i8
  %2349 = and i8 %2348, 1
  %2350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2349, i8* %2350, align 1, !tbaa !2447
  %2351 = icmp eq i32 %2332, 0
  %2352 = zext i1 %2351 to i8
  %2353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2352, i8* %2353, align 1, !tbaa !2448
  %2354 = lshr i32 %2332, 31
  %2355 = trunc i32 %2354 to i8
  %2356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2355, i8* %2356, align 1, !tbaa !2449
  %2357 = lshr i32 %2329, 31
  %2358 = lshr i32 %2331, 31
  %2359 = xor i32 %2354, %2357
  %2360 = xor i32 %2354, %2358
  %2361 = add nuw nsw i32 %2359, %2360
  %2362 = icmp eq i32 %2361, 2
  %2363 = zext i1 %2362 to i8
  %2364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2363, i8* %2364, align 1, !tbaa !2450
  %2365 = load i64, i64* %RBP
  %2366 = sub i64 %2365, 48
  %2367 = load i32, i32* %ECX
  %2368 = zext i32 %2367 to i64
  %2369 = load i64, i64* %PC
  %2370 = add i64 %2369, 3
  store i64 %2370, i64* %PC
  %2371 = inttoptr i64 %2366 to i32*
  store i32 %2367, i32* %2371
  %2372 = load i64, i64* %RBP
  %2373 = sub i64 %2372, 40
  %2374 = load i64, i64* %PC
  %2375 = add i64 %2374, 4
  store i64 %2375, i64* %PC
  %2376 = inttoptr i64 %2373 to i64*
  %2377 = load i64, i64* %2376
  store i64 %2377, i64* %RAX, align 8, !tbaa !2428
  %2378 = load i64, i64* %RAX
  %2379 = add i64 %2378, 4
  %2380 = load i64, i64* %PC
  %2381 = add i64 %2380, 3
  store i64 %2381, i64* %PC
  %2382 = inttoptr i64 %2379 to i32*
  %2383 = load i32, i32* %2382
  %2384 = zext i32 %2383 to i64
  store i64 %2384, i64* %RCX, align 8, !tbaa !2428
  %2385 = load i64, i64* %RCX
  %2386 = load i64, i64* %RBP
  %2387 = sub i64 %2386, 52
  %2388 = load i64, i64* %PC
  %2389 = add i64 %2388, 3
  store i64 %2389, i64* %PC
  %2390 = trunc i64 %2385 to i32
  %2391 = inttoptr i64 %2387 to i32*
  %2392 = load i32, i32* %2391
  %2393 = add i32 %2392, %2390
  %2394 = zext i32 %2393 to i64
  store i64 %2394, i64* %RCX, align 8, !tbaa !2428
  %2395 = icmp ult i32 %2393, %2390
  %2396 = icmp ult i32 %2393, %2392
  %2397 = or i1 %2395, %2396
  %2398 = zext i1 %2397 to i8
  %2399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2398, i8* %2399, align 1, !tbaa !2432
  %2400 = and i32 %2393, 255
  %2401 = call i32 @llvm.ctpop.i32(i32 %2400) #16
  %2402 = trunc i32 %2401 to i8
  %2403 = and i8 %2402, 1
  %2404 = xor i8 %2403, 1
  %2405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2404, i8* %2405, align 1, !tbaa !2446
  %2406 = xor i32 %2392, %2390
  %2407 = xor i32 %2406, %2393
  %2408 = lshr i32 %2407, 4
  %2409 = trunc i32 %2408 to i8
  %2410 = and i8 %2409, 1
  %2411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2410, i8* %2411, align 1, !tbaa !2447
  %2412 = icmp eq i32 %2393, 0
  %2413 = zext i1 %2412 to i8
  %2414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2413, i8* %2414, align 1, !tbaa !2448
  %2415 = lshr i32 %2393, 31
  %2416 = trunc i32 %2415 to i8
  %2417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2416, i8* %2417, align 1, !tbaa !2449
  %2418 = lshr i32 %2390, 31
  %2419 = lshr i32 %2392, 31
  %2420 = xor i32 %2415, %2418
  %2421 = xor i32 %2415, %2419
  %2422 = add nuw nsw i32 %2420, %2421
  %2423 = icmp eq i32 %2422, 2
  %2424 = zext i1 %2423 to i8
  %2425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2424, i8* %2425, align 1, !tbaa !2450
  %2426 = load i64, i64* %RBP
  %2427 = sub i64 %2426, 52
  %2428 = load i32, i32* %ECX
  %2429 = zext i32 %2428 to i64
  %2430 = load i64, i64* %PC
  %2431 = add i64 %2430, 3
  store i64 %2431, i64* %PC
  %2432 = inttoptr i64 %2427 to i32*
  store i32 %2428, i32* %2432
  br label %block_400cd9

block_400c9b:                                     ; preds = %block_400c8b, %block_400d3f
  %MEMORY.9 = phi %struct.Memory* [ %2718, %block_400c8b ], [ %MEMORY.0, %block_400d3f ]
  %2433 = load i64, i64* %RBP
  %2434 = sub i64 %2433, 72
  %2435 = load i64, i64* %PC
  %2436 = add i64 %2435, 4
  store i64 %2436, i64* %PC
  %2437 = inttoptr i64 %2434 to i32*
  %2438 = load i32, i32* %2437
  %2439 = sub i32 %2438, 31
  %2440 = icmp ult i32 %2438, 31
  %2441 = zext i1 %2440 to i8
  %2442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2441, i8* %2442, align 1, !tbaa !2432
  %2443 = and i32 %2439, 255
  %2444 = call i32 @llvm.ctpop.i32(i32 %2443) #16
  %2445 = trunc i32 %2444 to i8
  %2446 = and i8 %2445, 1
  %2447 = xor i8 %2446, 1
  %2448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2447, i8* %2448, align 1, !tbaa !2446
  %2449 = xor i32 %2438, 31
  %2450 = xor i32 %2449, %2439
  %2451 = lshr i32 %2450, 4
  %2452 = trunc i32 %2451 to i8
  %2453 = and i8 %2452, 1
  %2454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2453, i8* %2454, align 1, !tbaa !2447
  %2455 = icmp eq i32 %2439, 0
  %2456 = zext i1 %2455 to i8
  %2457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2456, i8* %2457, align 1, !tbaa !2448
  %2458 = lshr i32 %2439, 31
  %2459 = trunc i32 %2458 to i8
  %2460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2459, i8* %2460, align 1, !tbaa !2449
  %2461 = lshr i32 %2438, 31
  %2462 = xor i32 %2458, %2461
  %2463 = add nuw nsw i32 %2462, %2461
  %2464 = icmp eq i32 %2463, 2
  %2465 = zext i1 %2464 to i8
  %2466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2465, i8* %2466, align 1, !tbaa !2450
  %2467 = load i64, i64* %PC
  %2468 = add i64 %2467, 227
  %2469 = load i64, i64* %PC
  %2470 = add i64 %2469, 6
  %2471 = load i64, i64* %PC
  %2472 = add i64 %2471, 6
  store i64 %2472, i64* %PC
  %2473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2474 = load i8, i8* %2473, align 1, !tbaa !2449
  %2475 = icmp ne i8 %2474, 0
  %2476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2477 = load i8, i8* %2476, align 1, !tbaa !2450
  %2478 = icmp ne i8 %2477, 0
  %2479 = xor i1 %2475, %2478
  %2480 = xor i1 %2479, true
  %2481 = zext i1 %2480 to i8
  store i8 %2481, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %2482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2483 = select i1 %2479, i64 %2470, i64 %2468
  store i64 %2483, i64* %2482, align 8, !tbaa !2428
  %2484 = load i8, i8* %BRANCH_TAKEN
  %2485 = icmp eq i8 %2484, 1
  br i1 %2485, label %block_400d82, label %block_400ca5

block_400d95:                                     ; preds = %block_400c7f
  %2486 = sub i64 %3003, 1845
  %2487 = load i64, i64* %PC
  %2488 = add i64 %2487, 5
  %2489 = load i64, i64* %PC
  %2490 = add i64 %2489, 5
  store i64 %2490, i64* %PC
  %2491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2492 = load i64, i64* %2491, align 8, !tbaa !2428
  %2493 = add i64 %2492, -8
  %2494 = inttoptr i64 %2493 to i64*
  store i64 %2488, i64* %2494
  store i64 %2493, i64* %2491, align 8, !tbaa !2428
  %2495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2486, i64* %2495, align 8, !tbaa !2428
  %2496 = load i64, i64* %PC
  %2497 = call %struct.Memory* @ext_400660_lrand48(%struct.State* %0, i64 %2496, %struct.Memory* %MEMORY.11)
  %2498 = load i64, i64* %RBP
  %2499 = sub i64 %2498, 80
  %2500 = load i64, i64* %RAX
  %2501 = load i64, i64* %PC
  %2502 = add i64 %2501, 4
  store i64 %2502, i64* %PC
  %2503 = inttoptr i64 %2499 to i64*
  store i64 %2500, i64* %2503
  %2504 = load i64, i64* %RBP
  %2505 = sub i64 %2504, 72
  %2506 = load i64, i64* %PC
  %2507 = add i64 %2506, 7
  store i64 %2507, i64* %PC
  %2508 = inttoptr i64 %2505 to i32*
  store i32 0, i32* %2508
  br label %block_400da5

block_400e8e:                                     ; preds = %block_400da5
  %2509 = load i64, i64* %PC
  %2510 = sub i64 %2509, 2094
  %2511 = load i64, i64* %PC
  %2512 = add i64 %2511, 5
  %2513 = load i64, i64* %PC
  %2514 = add i64 %2513, 5
  store i64 %2514, i64* %PC
  %2515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2516 = load i64, i64* %2515, align 8, !tbaa !2428
  %2517 = add i64 %2516, -8
  %2518 = inttoptr i64 %2517 to i64*
  store i64 %2512, i64* %2518
  store i64 %2517, i64* %2515, align 8, !tbaa !2428
  %2519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2510, i64* %2519, align 8, !tbaa !2428
  %2520 = load i64, i64* %PC
  %2521 = call %struct.Memory* @ext_400660_lrand48(%struct.State* %0, i64 %2520, %struct.Memory* %MEMORY.6)
  %2522 = load i64, i64* %RBP
  %2523 = sub i64 %2522, 80
  %2524 = load i64, i64* %RAX
  %2525 = load i64, i64* %PC
  %2526 = add i64 %2525, 4
  store i64 %2526, i64* %PC
  %2527 = inttoptr i64 %2523 to i64*
  store i64 %2524, i64* %2527
  %2528 = load i64, i64* %RBP
  %2529 = sub i64 %2528, 32
  %2530 = load i64, i64* %PC
  %2531 = add i64 %2530, 4
  store i64 %2531, i64* %PC
  %2532 = inttoptr i64 %2529 to i64*
  %2533 = load i64, i64* %2532
  store i64 %2533, i64* %RAX, align 8, !tbaa !2428
  %2534 = load i64, i64* %PC
  %2535 = add i64 %2534, 7
  store i64 %2535, i64* %PC
  %2536 = load i32, i32* bitcast (%reg_len_type* @reg_len to i32*)
  %2537 = zext i32 %2536 to i64
  store i64 %2537, i64* %RCX, align 8, !tbaa !2428
  %2538 = load i64, i64* %RCX
  %2539 = load i64, i64* %PC
  %2540 = add i64 %2539, 3
  store i64 %2540, i64* %PC
  %2541 = trunc i64 %2538 to i32
  %2542 = sub i32 %2541, 1
  %2543 = zext i32 %2542 to i64
  store i64 %2543, i64* %RCX, align 8, !tbaa !2428
  %2544 = icmp ult i32 %2541, 1
  %2545 = zext i1 %2544 to i8
  %2546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2545, i8* %2546, align 1, !tbaa !2432
  %2547 = and i32 %2542, 255
  %2548 = call i32 @llvm.ctpop.i32(i32 %2547) #16
  %2549 = trunc i32 %2548 to i8
  %2550 = and i8 %2549, 1
  %2551 = xor i8 %2550, 1
  %2552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2551, i8* %2552, align 1, !tbaa !2446
  %2553 = xor i64 1, %2538
  %2554 = trunc i64 %2553 to i32
  %2555 = xor i32 %2554, %2542
  %2556 = lshr i32 %2555, 4
  %2557 = trunc i32 %2556 to i8
  %2558 = and i8 %2557, 1
  %2559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2558, i8* %2559, align 1, !tbaa !2447
  %2560 = icmp eq i32 %2542, 0
  %2561 = zext i1 %2560 to i8
  %2562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2561, i8* %2562, align 1, !tbaa !2448
  %2563 = lshr i32 %2542, 31
  %2564 = trunc i32 %2563 to i8
  %2565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2564, i8* %2565, align 1, !tbaa !2449
  %2566 = lshr i32 %2541, 31
  %2567 = xor i32 %2563, %2566
  %2568 = add nuw nsw i32 %2567, %2566
  %2569 = icmp eq i32 %2568, 2
  %2570 = zext i1 %2569 to i8
  %2571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2570, i8* %2571, align 1, !tbaa !2450
  %2572 = load i32, i32* %ECX
  %2573 = zext i32 %2572 to i64
  %2574 = load i64, i64* %PC
  %2575 = add i64 %2574, 3
  store i64 %2575, i64* %PC
  %2576 = shl i64 %2573, 32
  %2577 = ashr exact i64 %2576, 32
  store i64 %2577, i64* %RDX, align 8, !tbaa !2428
  %2578 = load i64, i64* %RAX
  %2579 = load i64, i64* %RDX
  %2580 = add i64 %2579, %2578
  %2581 = load i64, i64* %PC
  %2582 = add i64 %2581, 4
  store i64 %2582, i64* %PC
  %2583 = inttoptr i64 %2580 to i8*
  %2584 = load i8, i8* %2583
  %2585 = sext i8 %2584 to i64
  %2586 = and i64 %2585, 4294967295
  store i64 %2586, i64* %RCX, align 8, !tbaa !2428
  %2587 = load i32, i32* %ECX
  %2588 = zext i32 %2587 to i64
  %2589 = load i64, i64* %PC
  %2590 = add i64 %2589, 3
  store i64 %2590, i64* %PC
  %2591 = sub i32 %2587, 49
  %2592 = icmp ult i32 %2587, 49
  %2593 = zext i1 %2592 to i8
  %2594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2593, i8* %2594, align 1, !tbaa !2432
  %2595 = and i32 %2591, 255
  %2596 = call i32 @llvm.ctpop.i32(i32 %2595) #16
  %2597 = trunc i32 %2596 to i8
  %2598 = and i8 %2597, 1
  %2599 = xor i8 %2598, 1
  %2600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2599, i8* %2600, align 1, !tbaa !2446
  %2601 = xor i64 49, %2588
  %2602 = trunc i64 %2601 to i32
  %2603 = xor i32 %2602, %2591
  %2604 = lshr i32 %2603, 4
  %2605 = trunc i32 %2604 to i8
  %2606 = and i8 %2605, 1
  %2607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2606, i8* %2607, align 1, !tbaa !2447
  %2608 = icmp eq i32 %2591, 0
  %2609 = zext i1 %2608 to i8
  %2610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2609, i8* %2610, align 1, !tbaa !2448
  %2611 = lshr i32 %2591, 31
  %2612 = trunc i32 %2611 to i8
  %2613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2612, i8* %2613, align 1, !tbaa !2449
  %2614 = lshr i32 %2587, 31
  %2615 = xor i32 %2611, %2614
  %2616 = add nuw nsw i32 %2615, %2614
  %2617 = icmp eq i32 %2616, 2
  %2618 = zext i1 %2617 to i8
  %2619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2618, i8* %2619, align 1, !tbaa !2450
  %2620 = load i64, i64* %PC
  %2621 = add i64 %2620, 31
  %2622 = load i64, i64* %PC
  %2623 = add i64 %2622, 6
  %2624 = load i64, i64* %PC
  %2625 = add i64 %2624, 6
  store i64 %2625, i64* %PC
  %2626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2627 = load i8, i8* %2626, align 1, !tbaa !2448
  %2628 = icmp eq i8 %2627, 0
  %2629 = zext i1 %2628 to i8
  store i8 %2629, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %2630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2631 = select i1 %2628, i64 %2621, i64 %2623
  store i64 %2631, i64* %2630, align 8, !tbaa !2428
  %2632 = load i8, i8* %BRANCH_TAKEN
  %2633 = icmp eq i8 %2632, 1
  br i1 %2633, label %block_400ece, label %block_400eb5

block_400f82:                                     ; preds = %block_400f6f
  %2634 = load i64, i64* %RBP
  %2635 = sub i64 %2634, 44
  %2636 = load i64, i64* %PC
  %2637 = add i64 %2636, 7
  store i64 %2637, i64* %PC
  %2638 = inttoptr i64 %2635 to i32*
  store i32 1, i32* %2638
  br label %block_400f89

block_400f6f:                                     ; preds = %block_400f5f
  %2639 = sub i64 %873, 40
  %2640 = load i64, i64* %PC
  %2641 = add i64 %2640, 4
  store i64 %2641, i64* %PC
  %2642 = inttoptr i64 %2639 to i64*
  %2643 = load i64, i64* %2642
  store i64 %2643, i64* %RAX, align 8, !tbaa !2428
  %2644 = load i64, i64* %RAX
  %2645 = load i64, i64* %PC
  %2646 = add i64 %2645, 2
  store i64 %2646, i64* %PC
  %2647 = inttoptr i64 %2644 to i32*
  %2648 = load i32, i32* %2647
  %2649 = zext i32 %2648 to i64
  store i64 %2649, i64* %RCX, align 8, !tbaa !2428
  %2650 = load i64, i64* %RBP
  %2651 = sub i64 %2650, 40
  %2652 = load i64, i64* %PC
  %2653 = add i64 %2652, 4
  store i64 %2653, i64* %PC
  %2654 = inttoptr i64 %2651 to i64*
  %2655 = load i64, i64* %2654
  store i64 %2655, i64* %RAX, align 8, !tbaa !2428
  %2656 = load i32, i32* %ECX
  %2657 = zext i32 %2656 to i64
  %2658 = load i64, i64* %RAX
  %2659 = add i64 %2658, 4
  %2660 = load i64, i64* %PC
  %2661 = add i64 %2660, 3
  store i64 %2661, i64* %PC
  %2662 = inttoptr i64 %2659 to i32*
  %2663 = load i32, i32* %2662
  %2664 = sub i32 %2656, %2663
  %2665 = icmp ult i32 %2656, %2663
  %2666 = zext i1 %2665 to i8
  %2667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2666, i8* %2667, align 1, !tbaa !2432
  %2668 = and i32 %2664, 255
  %2669 = call i32 @llvm.ctpop.i32(i32 %2668) #16
  %2670 = trunc i32 %2669 to i8
  %2671 = and i8 %2670, 1
  %2672 = xor i8 %2671, 1
  %2673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2672, i8* %2673, align 1, !tbaa !2446
  %2674 = xor i32 %2663, %2656
  %2675 = xor i32 %2674, %2664
  %2676 = lshr i32 %2675, 4
  %2677 = trunc i32 %2676 to i8
  %2678 = and i8 %2677, 1
  %2679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2678, i8* %2679, align 1, !tbaa !2447
  %2680 = icmp eq i32 %2664, 0
  %2681 = zext i1 %2680 to i8
  %2682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2681, i8* %2682, align 1, !tbaa !2448
  %2683 = lshr i32 %2664, 31
  %2684 = trunc i32 %2683 to i8
  %2685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2684, i8* %2685, align 1, !tbaa !2449
  %2686 = lshr i32 %2656, 31
  %2687 = lshr i32 %2663, 31
  %2688 = xor i32 %2687, %2686
  %2689 = xor i32 %2683, %2686
  %2690 = add nuw nsw i32 %2689, %2688
  %2691 = icmp eq i32 %2690, 2
  %2692 = zext i1 %2691 to i8
  %2693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2692, i8* %2693, align 1, !tbaa !2450
  %2694 = load i64, i64* %PC
  %2695 = add i64 %2694, 13
  %2696 = load i64, i64* %PC
  %2697 = add i64 %2696, 6
  %2698 = load i64, i64* %PC
  %2699 = add i64 %2698, 6
  store i64 %2699, i64* %PC
  %2700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2701 = load i8, i8* %2700, align 1, !tbaa !2448
  store i8 %2701, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %2702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2703 = icmp ne i8 %2701, 0
  %2704 = select i1 %2703, i64 %2695, i64 %2697
  store i64 %2704, i64* %2702, align 8, !tbaa !2428
  %2705 = load i8, i8* %BRANCH_TAKEN
  %2706 = icmp eq i8 %2705, 1
  br i1 %2706, label %block_400f89, label %block_400f82

block_400c8b:                                     ; preds = %block_400c7f
  %2707 = sub i64 %3003, 1579
  %2708 = load i64, i64* %PC
  %2709 = add i64 %2708, 5
  %2710 = load i64, i64* %PC
  %2711 = add i64 %2710, 5
  store i64 %2711, i64* %PC
  %2712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2713 = load i64, i64* %2712, align 8, !tbaa !2428
  %2714 = add i64 %2713, -8
  %2715 = inttoptr i64 %2714 to i64*
  store i64 %2709, i64* %2715
  store i64 %2714, i64* %2712, align 8, !tbaa !2428
  %2716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2707, i64* %2716, align 8, !tbaa !2428
  %2717 = load i64, i64* %PC
  %2718 = call %struct.Memory* @ext_400660_lrand48(%struct.State* %0, i64 %2717, %struct.Memory* %MEMORY.11)
  %2719 = load i64, i64* %RBP
  %2720 = sub i64 %2719, 80
  %2721 = load i64, i64* %RAX
  %2722 = load i64, i64* %PC
  %2723 = add i64 %2722, 4
  store i64 %2723, i64* %PC
  %2724 = inttoptr i64 %2720 to i64*
  store i64 %2721, i64* %2724
  %2725 = load i64, i64* %RBP
  %2726 = sub i64 %2725, 72
  %2727 = load i64, i64* %PC
  %2728 = add i64 %2727, 7
  store i64 %2728, i64* %PC
  %2729 = inttoptr i64 %2726 to i32*
  store i32 0, i32* %2729
  br label %block_400c9b

block_400ca5:                                     ; preds = %block_400c9b
  %2730 = load i64, i64* %RBP
  %2731 = sub i64 %2730, 32
  %2732 = load i64, i64* %PC
  %2733 = add i64 %2732, 4
  store i64 %2733, i64* %PC
  %2734 = inttoptr i64 %2731 to i64*
  %2735 = load i64, i64* %2734
  store i64 %2735, i64* %RAX, align 8, !tbaa !2428
  %2736 = load i64, i64* %RBP
  %2737 = sub i64 %2736, 68
  %2738 = load i64, i64* %PC
  %2739 = add i64 %2738, 4
  store i64 %2739, i64* %PC
  %2740 = inttoptr i64 %2737 to i32*
  %2741 = load i32, i32* %2740
  %2742 = sext i32 %2741 to i64
  %2743 = mul nsw i64 %2742, 31
  %2744 = trunc i64 %2743 to i32
  %2745 = and i64 %2743, 4294967295
  store i64 %2745, i64* %RCX, align 8, !tbaa !2428
  %2746 = shl i64 %2743, 32
  %2747 = ashr exact i64 %2746, 32
  %2748 = icmp ne i64 %2747, %2743
  %2749 = zext i1 %2748 to i8
  %2750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2749, i8* %2750, align 1, !tbaa !2432
  %2751 = and i32 %2744, 255
  %2752 = call i32 @llvm.ctpop.i32(i32 %2751) #16
  %2753 = trunc i32 %2752 to i8
  %2754 = and i8 %2753, 1
  %2755 = xor i8 %2754, 1
  %2756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2755, i8* %2756, align 1, !tbaa !2446
  %2757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2757, align 1, !tbaa !2447
  %2758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2758, align 1, !tbaa !2448
  %2759 = lshr i32 %2744, 31
  %2760 = trunc i32 %2759 to i8
  %2761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2760, i8* %2761, align 1, !tbaa !2449
  %2762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2749, i8* %2762, align 1, !tbaa !2450
  %2763 = load i64, i64* %RCX
  %2764 = load i64, i64* %RBP
  %2765 = sub i64 %2764, 72
  %2766 = load i64, i64* %PC
  %2767 = add i64 %2766, 3
  store i64 %2767, i64* %PC
  %2768 = trunc i64 %2763 to i32
  %2769 = inttoptr i64 %2765 to i32*
  %2770 = load i32, i32* %2769
  %2771 = add i32 %2770, %2768
  %2772 = zext i32 %2771 to i64
  store i64 %2772, i64* %RCX, align 8, !tbaa !2428
  %2773 = icmp ult i32 %2771, %2768
  %2774 = icmp ult i32 %2771, %2770
  %2775 = or i1 %2773, %2774
  %2776 = zext i1 %2775 to i8
  %2777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2776, i8* %2777, align 1, !tbaa !2432
  %2778 = and i32 %2771, 255
  %2779 = call i32 @llvm.ctpop.i32(i32 %2778) #16
  %2780 = trunc i32 %2779 to i8
  %2781 = and i8 %2780, 1
  %2782 = xor i8 %2781, 1
  %2783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2782, i8* %2783, align 1, !tbaa !2446
  %2784 = xor i32 %2770, %2768
  %2785 = xor i32 %2784, %2771
  %2786 = lshr i32 %2785, 4
  %2787 = trunc i32 %2786 to i8
  %2788 = and i8 %2787, 1
  %2789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2788, i8* %2789, align 1, !tbaa !2447
  %2790 = icmp eq i32 %2771, 0
  %2791 = zext i1 %2790 to i8
  %2792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2791, i8* %2792, align 1, !tbaa !2448
  %2793 = lshr i32 %2771, 31
  %2794 = trunc i32 %2793 to i8
  %2795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2794, i8* %2795, align 1, !tbaa !2449
  %2796 = lshr i32 %2768, 31
  %2797 = lshr i32 %2770, 31
  %2798 = xor i32 %2793, %2796
  %2799 = xor i32 %2793, %2797
  %2800 = add nuw nsw i32 %2798, %2799
  %2801 = icmp eq i32 %2800, 2
  %2802 = zext i1 %2801 to i8
  %2803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2802, i8* %2803, align 1, !tbaa !2450
  %2804 = load i32, i32* %ECX
  %2805 = zext i32 %2804 to i64
  %2806 = load i64, i64* %PC
  %2807 = add i64 %2806, 3
  store i64 %2807, i64* %PC
  %2808 = shl i64 %2805, 32
  %2809 = ashr exact i64 %2808, 32
  store i64 %2809, i64* %RDX, align 8, !tbaa !2428
  %2810 = load i64, i64* %RAX
  %2811 = load i64, i64* %RDX
  %2812 = add i64 %2811, %2810
  %2813 = load i64, i64* %PC
  %2814 = add i64 %2813, 4
  store i64 %2814, i64* %PC
  %2815 = inttoptr i64 %2812 to i8*
  %2816 = load i8, i8* %2815
  %2817 = sext i8 %2816 to i64
  %2818 = and i64 %2817, 4294967295
  store i64 %2818, i64* %RCX, align 8, !tbaa !2428
  %2819 = load i32, i32* %ECX
  %2820 = zext i32 %2819 to i64
  %2821 = load i64, i64* %PC
  %2822 = add i64 %2821, 3
  store i64 %2822, i64* %PC
  %2823 = sub i32 %2819, 49
  %2824 = icmp ult i32 %2819, 49
  %2825 = zext i1 %2824 to i8
  %2826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2825, i8* %2826, align 1, !tbaa !2432
  %2827 = and i32 %2823, 255
  %2828 = call i32 @llvm.ctpop.i32(i32 %2827) #16
  %2829 = trunc i32 %2828 to i8
  %2830 = and i8 %2829, 1
  %2831 = xor i8 %2830, 1
  %2832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2831, i8* %2832, align 1, !tbaa !2446
  %2833 = xor i64 49, %2820
  %2834 = trunc i64 %2833 to i32
  %2835 = xor i32 %2834, %2823
  %2836 = lshr i32 %2835, 4
  %2837 = trunc i32 %2836 to i8
  %2838 = and i8 %2837, 1
  %2839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2838, i8* %2839, align 1, !tbaa !2447
  %2840 = icmp eq i32 %2823, 0
  %2841 = zext i1 %2840 to i8
  %2842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2841, i8* %2842, align 1, !tbaa !2448
  %2843 = lshr i32 %2823, 31
  %2844 = trunc i32 %2843 to i8
  %2845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2844, i8* %2845, align 1, !tbaa !2449
  %2846 = lshr i32 %2819, 31
  %2847 = xor i32 %2843, %2846
  %2848 = add nuw nsw i32 %2847, %2846
  %2849 = icmp eq i32 %2848, 2
  %2850 = zext i1 %2849 to i8
  %2851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2850, i8* %2851, align 1, !tbaa !2450
  %2852 = load i64, i64* %PC
  %2853 = add i64 %2852, 31
  %2854 = load i64, i64* %PC
  %2855 = add i64 %2854, 6
  %2856 = load i64, i64* %PC
  %2857 = add i64 %2856, 6
  store i64 %2857, i64* %PC
  %2858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2859 = load i8, i8* %2858, align 1, !tbaa !2448
  %2860 = icmp eq i8 %2859, 0
  %2861 = zext i1 %2860 to i8
  store i8 %2861, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %2862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2863 = select i1 %2860, i64 %2853, i64 %2855
  store i64 %2863, i64* %2862, align 8, !tbaa !2428
  %2864 = load i8, i8* %BRANCH_TAKEN
  %2865 = icmp eq i8 %2864, 1
  br i1 %2865, label %block_400cd9, label %block_400cc0

block_400f89:                                     ; preds = %block_400f6f, %block_400f82
  %MEMORY.10 = phi %struct.Memory* [ %MEMORY.2, %block_400f6f ], [ %MEMORY.2, %block_400f82 ]
  %2866 = load i64, i64* %RBP
  %2867 = sub i64 %2866, 40
  %2868 = load i64, i64* %PC
  %2869 = add i64 %2868, 4
  store i64 %2869, i64* %PC
  %2870 = inttoptr i64 %2867 to i64*
  %2871 = load i64, i64* %2870
  store i64 %2871, i64* %RAX, align 8, !tbaa !2428
  %2872 = load i64, i64* %RAX
  %2873 = add i64 %2872, 8
  %2874 = load i64, i64* %PC
  %2875 = add i64 %2874, 4
  store i64 %2875, i64* %PC
  %2876 = inttoptr i64 %2873 to i64*
  %2877 = load i64, i64* %2876
  store i64 %2877, i64* %RAX, align 8, !tbaa !2428
  %2878 = load i64, i64* %RBP
  %2879 = sub i64 %2878, 40
  %2880 = load i64, i64* %RAX
  %2881 = load i64, i64* %PC
  %2882 = add i64 %2881, 4
  store i64 %2882, i64* %PC
  %2883 = inttoptr i64 %2879 to i64*
  store i64 %2880, i64* %2883
  %2884 = load i64, i64* %RBP
  %2885 = sub i64 %2884, 68
  %2886 = load i64, i64* %PC
  %2887 = add i64 %2886, 3
  store i64 %2887, i64* %PC
  %2888 = inttoptr i64 %2885 to i32*
  %2889 = load i32, i32* %2888
  %2890 = zext i32 %2889 to i64
  store i64 %2890, i64* %RAX, align 8, !tbaa !2428
  %2891 = load i64, i64* %RAX
  %2892 = load i64, i64* %PC
  %2893 = add i64 %2892, 3
  store i64 %2893, i64* %PC
  %2894 = trunc i64 %2891 to i32
  %2895 = add i32 1, %2894
  %2896 = zext i32 %2895 to i64
  store i64 %2896, i64* %RAX, align 8, !tbaa !2428
  %2897 = icmp ult i32 %2895, %2894
  %2898 = icmp ult i32 %2895, 1
  %2899 = or i1 %2897, %2898
  %2900 = zext i1 %2899 to i8
  %2901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2900, i8* %2901, align 1, !tbaa !2432
  %2902 = and i32 %2895, 255
  %2903 = call i32 @llvm.ctpop.i32(i32 %2902) #16
  %2904 = trunc i32 %2903 to i8
  %2905 = and i8 %2904, 1
  %2906 = xor i8 %2905, 1
  %2907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2906, i8* %2907, align 1, !tbaa !2446
  %2908 = xor i64 1, %2891
  %2909 = trunc i64 %2908 to i32
  %2910 = xor i32 %2909, %2895
  %2911 = lshr i32 %2910, 4
  %2912 = trunc i32 %2911 to i8
  %2913 = and i8 %2912, 1
  %2914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2913, i8* %2914, align 1, !tbaa !2447
  %2915 = icmp eq i32 %2895, 0
  %2916 = zext i1 %2915 to i8
  %2917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2916, i8* %2917, align 1, !tbaa !2448
  %2918 = lshr i32 %2895, 31
  %2919 = trunc i32 %2918 to i8
  %2920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2919, i8* %2920, align 1, !tbaa !2449
  %2921 = lshr i32 %2894, 31
  %2922 = xor i32 %2918, %2921
  %2923 = add nuw nsw i32 %2922, %2918
  %2924 = icmp eq i32 %2923, 2
  %2925 = zext i1 %2924 to i8
  %2926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2925, i8* %2926, align 1, !tbaa !2450
  %2927 = load i64, i64* %RBP
  %2928 = sub i64 %2927, 68
  %2929 = load i32, i32* %EAX
  %2930 = zext i32 %2929 to i64
  %2931 = load i64, i64* %PC
  %2932 = add i64 %2931, 3
  store i64 %2932, i64* %PC
  %2933 = inttoptr i64 %2928 to i32*
  store i32 %2929, i32* %2933
  %2934 = load i64, i64* %PC
  %2935 = sub i64 %2934, 63
  %2936 = load i64, i64* %PC
  %2937 = add i64 %2936, 5
  store i64 %2937, i64* %PC
  %2938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2935, i64* %2938, align 8, !tbaa !2428
  br label %block_400f5f

block_400c7f:                                     ; preds = %block_400d82, %block_400c6a
  %MEMORY.11 = phi %struct.Memory* [ %MEMORY.7, %block_400c6a ], [ %MEMORY.9, %block_400d82 ]
  %2939 = load i64, i64* %RBP
  %2940 = sub i64 %2939, 68
  %2941 = load i64, i64* %PC
  %2942 = add i64 %2941, 3
  store i64 %2942, i64* %PC
  %2943 = inttoptr i64 %2940 to i32*
  %2944 = load i32, i32* %2943
  %2945 = zext i32 %2944 to i64
  store i64 %2945, i64* %RAX, align 8, !tbaa !2428
  %2946 = load i32, i32* %EAX
  %2947 = zext i32 %2946 to i64
  %2948 = load i64, i64* %RBP
  %2949 = sub i64 %2948, 60
  %2950 = load i64, i64* %PC
  %2951 = add i64 %2950, 3
  store i64 %2951, i64* %PC
  %2952 = inttoptr i64 %2949 to i32*
  %2953 = load i32, i32* %2952
  %2954 = sub i32 %2946, %2953
  %2955 = icmp ult i32 %2946, %2953
  %2956 = zext i1 %2955 to i8
  %2957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2956, i8* %2957, align 1, !tbaa !2432
  %2958 = and i32 %2954, 255
  %2959 = call i32 @llvm.ctpop.i32(i32 %2958) #16
  %2960 = trunc i32 %2959 to i8
  %2961 = and i8 %2960, 1
  %2962 = xor i8 %2961, 1
  %2963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2962, i8* %2963, align 1, !tbaa !2446
  %2964 = xor i32 %2953, %2946
  %2965 = xor i32 %2964, %2954
  %2966 = lshr i32 %2965, 4
  %2967 = trunc i32 %2966 to i8
  %2968 = and i8 %2967, 1
  %2969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2968, i8* %2969, align 1, !tbaa !2447
  %2970 = icmp eq i32 %2954, 0
  %2971 = zext i1 %2970 to i8
  %2972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2971, i8* %2972, align 1, !tbaa !2448
  %2973 = lshr i32 %2954, 31
  %2974 = trunc i32 %2973 to i8
  %2975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2974, i8* %2975, align 1, !tbaa !2449
  %2976 = lshr i32 %2946, 31
  %2977 = lshr i32 %2953, 31
  %2978 = xor i32 %2977, %2976
  %2979 = xor i32 %2973, %2976
  %2980 = add nuw nsw i32 %2979, %2978
  %2981 = icmp eq i32 %2980, 2
  %2982 = zext i1 %2981 to i8
  %2983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2982, i8* %2983, align 1, !tbaa !2450
  %2984 = load i64, i64* %PC
  %2985 = add i64 %2984, 272
  %2986 = load i64, i64* %PC
  %2987 = add i64 %2986, 6
  %2988 = load i64, i64* %PC
  %2989 = add i64 %2988, 6
  store i64 %2989, i64* %PC
  %2990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2991 = load i8, i8* %2990, align 1, !tbaa !2449
  %2992 = icmp ne i8 %2991, 0
  %2993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2994 = load i8, i8* %2993, align 1, !tbaa !2450
  %2995 = icmp ne i8 %2994, 0
  %2996 = xor i1 %2992, %2995
  %2997 = xor i1 %2996, true
  %2998 = zext i1 %2997 to i8
  store i8 %2998, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %2999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3000 = select i1 %2996, i64 %2987, i64 %2985
  store i64 %3000, i64* %2999, align 8, !tbaa !2428
  %3001 = load i8, i8* %BRANCH_TAKEN
  %3002 = icmp eq i8 %3001, 1
  %3003 = load i64, i64* %PC
  br i1 %3002, label %block_400d95, label %block_400c8b

block_400dcc:                                     ; preds = %block_400db1
  %3004 = load i64, i64* %RBP
  %3005 = sub i64 %3004, 40
  %3006 = load i64, i64* %PC
  %3007 = add i64 %3006, 4
  store i64 %3007, i64* %PC
  %3008 = inttoptr i64 %3005 to i64*
  %3009 = load i64, i64* %3008
  store i64 %3009, i64* %RAX, align 8, !tbaa !2428
  %3010 = load i64, i64* %RAX
  %3011 = load i64, i64* %PC
  %3012 = add i64 %3011, 2
  store i64 %3012, i64* %PC
  %3013 = inttoptr i64 %3010 to i32*
  %3014 = load i32, i32* %3013
  %3015 = zext i32 %3014 to i64
  store i64 %3015, i64* %RCX, align 8, !tbaa !2428
  %3016 = load i64, i64* %RCX
  %3017 = load i64, i64* %RBP
  %3018 = sub i64 %3017, 48
  %3019 = load i64, i64* %PC
  %3020 = add i64 %3019, 3
  store i64 %3020, i64* %PC
  %3021 = trunc i64 %3016 to i32
  %3022 = inttoptr i64 %3018 to i32*
  %3023 = load i32, i32* %3022
  %3024 = add i32 %3023, %3021
  %3025 = zext i32 %3024 to i64
  store i64 %3025, i64* %RCX, align 8, !tbaa !2428
  %3026 = icmp ult i32 %3024, %3021
  %3027 = icmp ult i32 %3024, %3023
  %3028 = or i1 %3026, %3027
  %3029 = zext i1 %3028 to i8
  %3030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3029, i8* %3030, align 1, !tbaa !2432
  %3031 = and i32 %3024, 255
  %3032 = call i32 @llvm.ctpop.i32(i32 %3031) #16
  %3033 = trunc i32 %3032 to i8
  %3034 = and i8 %3033, 1
  %3035 = xor i8 %3034, 1
  %3036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3035, i8* %3036, align 1, !tbaa !2446
  %3037 = xor i32 %3023, %3021
  %3038 = xor i32 %3037, %3024
  %3039 = lshr i32 %3038, 4
  %3040 = trunc i32 %3039 to i8
  %3041 = and i8 %3040, 1
  %3042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3041, i8* %3042, align 1, !tbaa !2447
  %3043 = icmp eq i32 %3024, 0
  %3044 = zext i1 %3043 to i8
  %3045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3044, i8* %3045, align 1, !tbaa !2448
  %3046 = lshr i32 %3024, 31
  %3047 = trunc i32 %3046 to i8
  %3048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3047, i8* %3048, align 1, !tbaa !2449
  %3049 = lshr i32 %3021, 31
  %3050 = lshr i32 %3023, 31
  %3051 = xor i32 %3046, %3049
  %3052 = xor i32 %3046, %3050
  %3053 = add nuw nsw i32 %3051, %3052
  %3054 = icmp eq i32 %3053, 2
  %3055 = zext i1 %3054 to i8
  %3056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3055, i8* %3056, align 1, !tbaa !2450
  %3057 = load i64, i64* %RBP
  %3058 = sub i64 %3057, 48
  %3059 = load i32, i32* %ECX
  %3060 = zext i32 %3059 to i64
  %3061 = load i64, i64* %PC
  %3062 = add i64 %3061, 3
  store i64 %3062, i64* %PC
  %3063 = inttoptr i64 %3058 to i32*
  store i32 %3059, i32* %3063
  %3064 = load i64, i64* %RBP
  %3065 = sub i64 %3064, 40
  %3066 = load i64, i64* %PC
  %3067 = add i64 %3066, 4
  store i64 %3067, i64* %PC
  %3068 = inttoptr i64 %3065 to i64*
  %3069 = load i64, i64* %3068
  store i64 %3069, i64* %RAX, align 8, !tbaa !2428
  %3070 = load i64, i64* %RAX
  %3071 = add i64 %3070, 4
  %3072 = load i64, i64* %PC
  %3073 = add i64 %3072, 3
  store i64 %3073, i64* %PC
  %3074 = inttoptr i64 %3071 to i32*
  %3075 = load i32, i32* %3074
  %3076 = zext i32 %3075 to i64
  store i64 %3076, i64* %RCX, align 8, !tbaa !2428
  %3077 = load i64, i64* %RCX
  %3078 = load i64, i64* %RBP
  %3079 = sub i64 %3078, 52
  %3080 = load i64, i64* %PC
  %3081 = add i64 %3080, 3
  store i64 %3081, i64* %PC
  %3082 = trunc i64 %3077 to i32
  %3083 = inttoptr i64 %3079 to i32*
  %3084 = load i32, i32* %3083
  %3085 = add i32 %3084, %3082
  %3086 = zext i32 %3085 to i64
  store i64 %3086, i64* %RCX, align 8, !tbaa !2428
  %3087 = icmp ult i32 %3085, %3082
  %3088 = icmp ult i32 %3085, %3084
  %3089 = or i1 %3087, %3088
  %3090 = zext i1 %3089 to i8
  %3091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3090, i8* %3091, align 1, !tbaa !2432
  %3092 = and i32 %3085, 255
  %3093 = call i32 @llvm.ctpop.i32(i32 %3092) #16
  %3094 = trunc i32 %3093 to i8
  %3095 = and i8 %3094, 1
  %3096 = xor i8 %3095, 1
  %3097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3096, i8* %3097, align 1, !tbaa !2446
  %3098 = xor i32 %3084, %3082
  %3099 = xor i32 %3098, %3085
  %3100 = lshr i32 %3099, 4
  %3101 = trunc i32 %3100 to i8
  %3102 = and i8 %3101, 1
  %3103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3102, i8* %3103, align 1, !tbaa !2447
  %3104 = icmp eq i32 %3085, 0
  %3105 = zext i1 %3104 to i8
  %3106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3105, i8* %3106, align 1, !tbaa !2448
  %3107 = lshr i32 %3085, 31
  %3108 = trunc i32 %3107 to i8
  %3109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3108, i8* %3109, align 1, !tbaa !2449
  %3110 = lshr i32 %3082, 31
  %3111 = lshr i32 %3084, 31
  %3112 = xor i32 %3107, %3110
  %3113 = xor i32 %3107, %3111
  %3114 = add nuw nsw i32 %3112, %3113
  %3115 = icmp eq i32 %3114, 2
  %3116 = zext i1 %3115 to i8
  %3117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3116, i8* %3117, align 1, !tbaa !2450
  %3118 = load i64, i64* %RBP
  %3119 = sub i64 %3118, 52
  %3120 = load i32, i32* %ECX
  %3121 = zext i32 %3120 to i64
  %3122 = load i64, i64* %PC
  %3123 = add i64 %3122, 3
  store i64 %3123, i64* %PC
  %3124 = inttoptr i64 %3119 to i32*
  store i32 %3120, i32* %3124
  br label %block_400de5

block_400d82:                                     ; preds = %block_400c9b
  %3125 = load i64, i64* %PC
  %3126 = add i64 %3125, 5
  %3127 = load i64, i64* %PC
  %3128 = add i64 %3127, 5
  store i64 %3128, i64* %PC
  %3129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3126, i64* %3129, align 8, !tbaa !2428
  %3130 = load i64, i64* %RBP
  %3131 = sub i64 %3130, 68
  %3132 = load i64, i64* %PC
  %3133 = add i64 %3132, 3
  store i64 %3133, i64* %PC
  %3134 = inttoptr i64 %3131 to i32*
  %3135 = load i32, i32* %3134
  %3136 = zext i32 %3135 to i64
  store i64 %3136, i64* %RAX, align 8, !tbaa !2428
  %3137 = load i64, i64* %RAX
  %3138 = load i64, i64* %PC
  %3139 = add i64 %3138, 3
  store i64 %3139, i64* %PC
  %3140 = trunc i64 %3137 to i32
  %3141 = add i32 1, %3140
  %3142 = zext i32 %3141 to i64
  store i64 %3142, i64* %RAX, align 8, !tbaa !2428
  %3143 = icmp ult i32 %3141, %3140
  %3144 = icmp ult i32 %3141, 1
  %3145 = or i1 %3143, %3144
  %3146 = zext i1 %3145 to i8
  %3147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3146, i8* %3147, align 1, !tbaa !2432
  %3148 = and i32 %3141, 255
  %3149 = call i32 @llvm.ctpop.i32(i32 %3148) #16
  %3150 = trunc i32 %3149 to i8
  %3151 = and i8 %3150, 1
  %3152 = xor i8 %3151, 1
  %3153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3152, i8* %3153, align 1, !tbaa !2446
  %3154 = xor i64 1, %3137
  %3155 = trunc i64 %3154 to i32
  %3156 = xor i32 %3155, %3141
  %3157 = lshr i32 %3156, 4
  %3158 = trunc i32 %3157 to i8
  %3159 = and i8 %3158, 1
  %3160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3159, i8* %3160, align 1, !tbaa !2447
  %3161 = icmp eq i32 %3141, 0
  %3162 = zext i1 %3161 to i8
  %3163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3162, i8* %3163, align 1, !tbaa !2448
  %3164 = lshr i32 %3141, 31
  %3165 = trunc i32 %3164 to i8
  %3166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3165, i8* %3166, align 1, !tbaa !2449
  %3167 = lshr i32 %3140, 31
  %3168 = xor i32 %3164, %3167
  %3169 = add nuw nsw i32 %3168, %3164
  %3170 = icmp eq i32 %3169, 2
  %3171 = zext i1 %3170 to i8
  %3172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3171, i8* %3172, align 1, !tbaa !2450
  %3173 = load i64, i64* %RBP
  %3174 = sub i64 %3173, 68
  %3175 = load i32, i32* %EAX
  %3176 = zext i32 %3175 to i64
  %3177 = load i64, i64* %PC
  %3178 = add i64 %3177, 3
  store i64 %3178, i64* %PC
  %3179 = inttoptr i64 %3174 to i32*
  store i32 %3175, i32* %3179
  %3180 = load i64, i64* %PC
  %3181 = sub i64 %3180, 273
  %3182 = load i64, i64* %PC
  %3183 = add i64 %3182, 5
  store i64 %3183, i64* %PC
  %3184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3181, i64* %3184, align 8, !tbaa !2428
  br label %block_400c7f
}

; Function Attrs: noinline
define %struct.Memory* @sub_400760_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400760:
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
  %119 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401080__rodata_type* @seg_401080__rodata to i64), i64 8) to double*)
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
  store i8 %212, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %214 = select i1 %211, i64 %196, i64 %198
  store i64 %214, i64* %213, align 8, !tbaa !2428
  %215 = load i8, i8* %BRANCH_TAKEN
  %216 = icmp eq i8 %215, 1
  %217 = load i64, i64* %RBP
  br i1 %216, label %block_4007ca, label %block_4007aa

block_4007fb:                                     ; preds = %block_4007d1
  %218 = sub i64 %369, 176
  %219 = load i64, i64* %PC
  %220 = add i64 %219, 7
  store i64 %220, i64* %PC
  %221 = inttoptr i64 %218 to i8*
  store i8 49, i8* %221
  %222 = load i64, i64* %PC
  %223 = add i64 %222, 8
  store i64 %223, i64* %PC
  %224 = load i32, i32* bitcast (%reg_len_type* @reg_len to i32*)
  %225 = sext i32 %224 to i64
  store i64 %225, i64* %RAX, align 8, !tbaa !2428
  %226 = load i64, i64* %RBP
  %227 = load i64, i64* %RAX
  %228 = add i64 %226, -176
  %229 = add i64 %228, %227
  %230 = load i64, i64* %PC
  %231 = add i64 %230, 8
  store i64 %231, i64* %PC
  %232 = inttoptr i64 %229 to i8*
  store i8 0, i8* %232
  br label %block_400812

block_400975:                                     ; preds = %block_400958
  %233 = load i64, i64* %PC
  %234 = add i64 %233, 10
  store i64 %234, i64* %PC
  store i64 add (i64 ptrtoint (%seg_401080__rodata_type* @seg_401080__rodata to i64), i64 105), i64* %RDI, align 8, !tbaa !2428
  %235 = load i64, i64* %PC
  %236 = add i64 %235, 2
  store i64 %236, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %237 = load i64, i64* %PC
  %238 = sub i64 %237, 881
  %239 = load i64, i64* %PC
  %240 = add i64 %239, 5
  %241 = load i64, i64* %PC
  %242 = add i64 %241, 5
  store i64 %242, i64* %PC
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %244 = load i64, i64* %243, align 8, !tbaa !2428
  %245 = add i64 %244, -8
  %246 = inttoptr i64 %245 to i64*
  store i64 %240, i64* %246
  store i64 %245, i64* %243, align 8, !tbaa !2428
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %238, i64* %247, align 8, !tbaa !2428
  %248 = load i64, i64* %PC
  %249 = call %struct.Memory* @ext_602090_printf(%struct.State* %0, i64 %248, %struct.Memory* %1477)
  %250 = load i64, i64* %RBP
  %251 = sub i64 %250, 12
  %252 = load i64, i64* %PC
  %253 = add i64 %252, 7
  store i64 %253, i64* %PC
  %254 = inttoptr i64 %251 to i32*
  store i32 4, i32* %254
  %255 = load i64, i64* %RBP
  %256 = sub i64 %255, 216
  %257 = load i32, i32* %EAX
  %258 = zext i32 %257 to i64
  %259 = load i64, i64* %PC
  %260 = add i64 %259, 6
  store i64 %260, i64* %PC
  %261 = inttoptr i64 %256 to i32*
  store i32 %257, i32* %261
  %262 = load i64, i64* %PC
  %263 = add i64 %262, 370
  %264 = load i64, i64* %PC
  %265 = add i64 %264, 5
  store i64 %265, i64* %PC
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %263, i64* %266, align 8, !tbaa !2428
  br label %block_400b05

block_4008e8:                                     ; preds = %block_4008da
  %267 = load i64, i64* %PC
  %268 = add i64 %267, 10
  store i64 %268, i64* %PC
  store i64 add (i64 ptrtoint (%seg_401080__rodata_type* @seg_401080__rodata to i64), i64 44), i64* %RDI, align 8, !tbaa !2428
  %269 = load i64, i64* %PC
  %270 = add i64 %269, 5
  store i64 %270, i64* %PC
  store i64 100, i64* %RSI, align 8, !tbaa !2428
  %271 = load i64, i64* %PC
  %272 = add i64 %271, 2
  store i64 %272, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %273 = load i64, i64* %PC
  %274 = sub i64 %273, 745
  %275 = load i64, i64* %PC
  %276 = add i64 %275, 5
  %277 = load i64, i64* %PC
  %278 = add i64 %277, 5
  store i64 %278, i64* %PC
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %280 = load i64, i64* %279, align 8, !tbaa !2428
  %281 = add i64 %280, -8
  %282 = inttoptr i64 %281 to i64*
  store i64 %276, i64* %282
  store i64 %281, i64* %279, align 8, !tbaa !2428
  %283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %274, i64* %283, align 8, !tbaa !2428
  %284 = load i64, i64* %PC
  %285 = call %struct.Memory* @ext_602090_printf(%struct.State* %0, i64 %284, %struct.Memory* %MEMORY.7)
  %286 = load i64, i64* %RBP
  %287 = sub i64 %286, 12
  %288 = load i64, i64* %PC
  %289 = add i64 %288, 7
  store i64 %289, i64* %PC
  %290 = inttoptr i64 %287 to i32*
  store i32 2, i32* %290
  %291 = load i64, i64* %RBP
  %292 = sub i64 %291, 208
  %293 = load i32, i32* %EAX
  %294 = zext i32 %293 to i64
  %295 = load i64, i64* %PC
  %296 = add i64 %295, 6
  store i64 %296, i64* %PC
  %297 = inttoptr i64 %292 to i32*
  store i32 %293, i32* %297
  %298 = load i64, i64* %PC
  %299 = add i64 %298, 506
  %300 = load i64, i64* %PC
  %301 = add i64 %300, 5
  store i64 %301, i64* %PC
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %299, i64* %302, align 8, !tbaa !2428
  br label %block_400b05

block_4008d1:                                     ; preds = %block_400895
  %303 = load i64, i64* %RBP
  %304 = sub i64 %303, 178
  %305 = load i64, i64* %PC
  %306 = add i64 %305, 9
  store i64 %306, i64* %PC
  %307 = inttoptr i64 %304 to i16*
  store i16 0, i16* %307
  br label %block_4008da

block_4007d1:                                     ; preds = %block_4007ca, %block_4007e1
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4007ca ], [ %MEMORY.0, %block_4007e1 ]
  %308 = load i64, i64* %RBP
  %309 = sub i64 %308, 56
  %310 = load i64, i64* %PC
  %311 = add i64 %310, 3
  store i64 %311, i64* %PC
  %312 = inttoptr i64 %309 to i32*
  %313 = load i32, i32* %312
  %314 = zext i32 %313 to i64
  store i64 %314, i64* %RAX, align 8, !tbaa !2428
  %315 = load i32, i32* %EAX
  %316 = zext i32 %315 to i64
  %317 = load i64, i64* %PC
  %318 = add i64 %317, 7
  store i64 %318, i64* %PC
  %319 = load i32, i32* bitcast (%reg_len_type* @reg_len to i32*)
  %320 = sub i32 %315, %319
  %321 = icmp ult i32 %315, %319
  %322 = zext i1 %321 to i8
  %323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %322, i8* %323, align 1, !tbaa !2432
  %324 = and i32 %320, 255
  %325 = call i32 @llvm.ctpop.i32(i32 %324) #16
  %326 = trunc i32 %325 to i8
  %327 = and i8 %326, 1
  %328 = xor i8 %327, 1
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %328, i8* %329, align 1, !tbaa !2446
  %330 = xor i32 %319, %315
  %331 = xor i32 %330, %320
  %332 = lshr i32 %331, 4
  %333 = trunc i32 %332 to i8
  %334 = and i8 %333, 1
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %334, i8* %335, align 1, !tbaa !2447
  %336 = icmp eq i32 %320, 0
  %337 = zext i1 %336 to i8
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %337, i8* %338, align 1, !tbaa !2448
  %339 = lshr i32 %320, 31
  %340 = trunc i32 %339 to i8
  %341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %340, i8* %341, align 1, !tbaa !2449
  %342 = lshr i32 %315, 31
  %343 = lshr i32 %319, 31
  %344 = xor i32 %343, %342
  %345 = xor i32 %339, %342
  %346 = add nuw nsw i32 %345, %344
  %347 = icmp eq i32 %346, 2
  %348 = zext i1 %347 to i8
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %348, i8* %349, align 1, !tbaa !2450
  %350 = load i64, i64* %PC
  %351 = add i64 %350, 32
  %352 = load i64, i64* %PC
  %353 = add i64 %352, 6
  %354 = load i64, i64* %PC
  %355 = add i64 %354, 6
  store i64 %355, i64* %PC
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %357 = load i8, i8* %356, align 1, !tbaa !2449
  %358 = icmp ne i8 %357, 0
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %360 = load i8, i8* %359, align 1, !tbaa !2450
  %361 = icmp ne i8 %360, 0
  %362 = xor i1 %358, %361
  %363 = xor i1 %362, true
  %364 = zext i1 %363 to i8
  store i8 %364, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %366 = select i1 %362, i64 %353, i64 %351
  store i64 %366, i64* %365, align 8, !tbaa !2428
  %367 = load i8, i8* %BRANCH_TAKEN
  %368 = icmp eq i8 %367, 1
  %369 = load i64, i64* %RBP
  br i1 %368, label %block_4007fb, label %block_4007e1

block_4007e1:                                     ; preds = %block_4007d1
  %370 = sub i64 %369, 56
  %371 = load i64, i64* %PC
  %372 = add i64 %371, 4
  store i64 %372, i64* %PC
  %373 = inttoptr i64 %370 to i32*
  %374 = load i32, i32* %373
  %375 = sext i32 %374 to i64
  store i64 %375, i64* %RAX, align 8, !tbaa !2428
  %376 = load i64, i64* %RBP
  %377 = load i64, i64* %RAX
  %378 = add i64 %376, -176
  %379 = add i64 %378, %377
  %380 = load i64, i64* %PC
  %381 = add i64 %380, 8
  store i64 %381, i64* %PC
  %382 = inttoptr i64 %379 to i8*
  store i8 48, i8* %382
  %383 = load i64, i64* %RBP
  %384 = sub i64 %383, 56
  %385 = load i64, i64* %PC
  %386 = add i64 %385, 3
  store i64 %386, i64* %PC
  %387 = inttoptr i64 %384 to i32*
  %388 = load i32, i32* %387
  %389 = zext i32 %388 to i64
  store i64 %389, i64* %RAX, align 8, !tbaa !2428
  %390 = load i64, i64* %RAX
  %391 = load i64, i64* %PC
  %392 = add i64 %391, 3
  store i64 %392, i64* %PC
  %393 = trunc i64 %390 to i32
  %394 = add i32 1, %393
  %395 = zext i32 %394 to i64
  store i64 %395, i64* %RAX, align 8, !tbaa !2428
  %396 = icmp ult i32 %394, %393
  %397 = icmp ult i32 %394, 1
  %398 = or i1 %396, %397
  %399 = zext i1 %398 to i8
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %399, i8* %400, align 1, !tbaa !2432
  %401 = and i32 %394, 255
  %402 = call i32 @llvm.ctpop.i32(i32 %401) #16
  %403 = trunc i32 %402 to i8
  %404 = and i8 %403, 1
  %405 = xor i8 %404, 1
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %405, i8* %406, align 1, !tbaa !2446
  %407 = xor i64 1, %390
  %408 = trunc i64 %407 to i32
  %409 = xor i32 %408, %394
  %410 = lshr i32 %409, 4
  %411 = trunc i32 %410 to i8
  %412 = and i8 %411, 1
  %413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %412, i8* %413, align 1, !tbaa !2447
  %414 = icmp eq i32 %394, 0
  %415 = zext i1 %414 to i8
  %416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %415, i8* %416, align 1, !tbaa !2448
  %417 = lshr i32 %394, 31
  %418 = trunc i32 %417 to i8
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %418, i8* %419, align 1, !tbaa !2449
  %420 = lshr i32 %393, 31
  %421 = xor i32 %417, %420
  %422 = add nuw nsw i32 %421, %417
  %423 = icmp eq i32 %422, 2
  %424 = zext i1 %423 to i8
  %425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %424, i8* %425, align 1, !tbaa !2450
  %426 = load i64, i64* %RBP
  %427 = sub i64 %426, 56
  %428 = load i32, i32* %EAX
  %429 = zext i32 %428 to i64
  %430 = load i64, i64* %PC
  %431 = add i64 %430, 3
  store i64 %431, i64* %PC
  %432 = inttoptr i64 %427 to i32*
  store i32 %428, i32* %432
  %433 = load i64, i64* %PC
  %434 = sub i64 %433, 37
  %435 = load i64, i64* %PC
  %436 = add i64 %435, 5
  store i64 %436, i64* %PC
  %437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %434, i64* %437, align 8, !tbaa !2428
  br label %block_4007d1

block_400850:                                     ; preds = %block_40081c, %block_400847
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.5, %block_400847 ], [ %1169, %block_40081c ]
  %438 = load i64, i64* %RBP
  %439 = sub i64 %438, 16
  %440 = load i64, i64* %PC
  %441 = add i64 %440, 4
  store i64 %441, i64* %PC
  %442 = inttoptr i64 %439 to i32*
  %443 = load i32, i32* %442
  %444 = sub i32 %443, 8
  %445 = icmp ult i32 %443, 8
  %446 = zext i1 %445 to i8
  %447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %446, i8* %447, align 1, !tbaa !2432
  %448 = and i32 %444, 255
  %449 = call i32 @llvm.ctpop.i32(i32 %448) #16
  %450 = trunc i32 %449 to i8
  %451 = and i8 %450, 1
  %452 = xor i8 %451, 1
  %453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %452, i8* %453, align 1, !tbaa !2446
  %454 = xor i32 %443, 8
  %455 = xor i32 %454, %444
  %456 = lshr i32 %455, 4
  %457 = trunc i32 %456 to i8
  %458 = and i8 %457, 1
  %459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %458, i8* %459, align 1, !tbaa !2447
  %460 = icmp eq i32 %444, 0
  %461 = zext i1 %460 to i8
  %462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %461, i8* %462, align 1, !tbaa !2448
  %463 = lshr i32 %444, 31
  %464 = trunc i32 %463 to i8
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %464, i8* %465, align 1, !tbaa !2449
  %466 = lshr i32 %443, 31
  %467 = xor i32 %463, %466
  %468 = add nuw nsw i32 %467, %466
  %469 = icmp eq i32 %468, 2
  %470 = zext i1 %469 to i8
  %471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %470, i8* %471, align 1, !tbaa !2450
  %472 = load i64, i64* %PC
  %473 = add i64 %472, 56
  %474 = load i64, i64* %PC
  %475 = add i64 %474, 6
  %476 = load i64, i64* %PC
  %477 = add i64 %476, 6
  store i64 %477, i64* %PC
  %478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %479 = load i8, i8* %478, align 1, !tbaa !2448
  %480 = icmp ne i8 %479, 0
  %481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %482 = load i8, i8* %481, align 1, !tbaa !2449
  %483 = icmp ne i8 %482, 0
  %484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %485 = load i8, i8* %484, align 1, !tbaa !2450
  %486 = icmp ne i8 %485, 0
  %487 = xor i1 %483, %486
  %488 = or i1 %480, %487
  %489 = zext i1 %488 to i8
  store i8 %489, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %491 = select i1 %488, i64 %473, i64 %475
  store i64 %491, i64* %490, align 8, !tbaa !2428
  %492 = load i8, i8* %BRANCH_TAKEN
  %493 = icmp eq i8 %492, 1
  br i1 %493, label %block_40088c, label %block_40085a

block_400a4e:                                     ; preds = %block_400a42
  store i64 %852, i64* %PC
  store i64 1, i64* %RDI, align 8, !tbaa !2428
  %494 = load i64, i64* %RBP
  %495 = sub i64 %494, 40
  %496 = load i64, i64* %PC
  %497 = add i64 %496, 4
  store i64 %497, i64* %PC
  store i64 %495, i64* %RSI, align 8, !tbaa !2428
  %498 = load i64, i64* %RBP
  %499 = sub i64 %498, 176
  %500 = load i64, i64* %PC
  %501 = add i64 %500, 7
  store i64 %501, i64* %PC
  store i64 %499, i64* %RDX, align 8, !tbaa !2428
  %502 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %503 = load i64, i64* %RBP
  %504 = sub i64 %503, 64
  %505 = load i64, i64* %PC
  %506 = add i64 %505, 5
  store i64 %506, i64* %PC
  %507 = inttoptr i64 %504 to double*
  %508 = load double, double* %507
  %509 = bitcast i8* %502 to double*
  store double %508, double* %509, align 1, !tbaa !2453
  %510 = getelementptr inbounds i8, i8* %502, i64 8
  %511 = bitcast i8* %510 to double*
  store double 0.000000e+00, double* %511, align 1, !tbaa !2453
  %512 = load i64, i64* %PC
  %513 = add i64 %512, 413
  %514 = load i64, i64* %PC
  %515 = add i64 %514, 5
  %516 = load i64, i64* %PC
  %517 = add i64 %516, 5
  store i64 %517, i64* %PC
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %519 = load i64, i64* %518, align 8, !tbaa !2428
  %520 = add i64 %519, -8
  %521 = inttoptr i64 %520 to i64*
  store i64 %515, i64* %521
  store i64 %520, i64* %518, align 8, !tbaa !2428
  %522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %513, i64* %522, align 8, !tbaa !2428
  %523 = load i64, i64* %PC
  %524 = call %struct.Memory* @sub_400c00_simulate_renamed_(%struct.State* %0, i64 %523, %struct.Memory* %MEMORY.3)
  %525 = load i64, i64* %RAX
  %526 = load i64, i64* %RBP
  %527 = sub i64 %526, 52
  %528 = load i64, i64* %PC
  %529 = add i64 %528, 3
  store i64 %529, i64* %PC
  %530 = trunc i64 %525 to i32
  %531 = inttoptr i64 %527 to i32*
  %532 = load i32, i32* %531
  %533 = add i32 %532, %530
  %534 = zext i32 %533 to i64
  store i64 %534, i64* %RAX, align 8, !tbaa !2428
  %535 = icmp ult i32 %533, %530
  %536 = icmp ult i32 %533, %532
  %537 = or i1 %535, %536
  %538 = zext i1 %537 to i8
  %539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %538, i8* %539, align 1, !tbaa !2432
  %540 = and i32 %533, 255
  %541 = call i32 @llvm.ctpop.i32(i32 %540) #16
  %542 = trunc i32 %541 to i8
  %543 = and i8 %542, 1
  %544 = xor i8 %543, 1
  %545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %544, i8* %545, align 1, !tbaa !2446
  %546 = xor i32 %532, %530
  %547 = xor i32 %546, %533
  %548 = lshr i32 %547, 4
  %549 = trunc i32 %548 to i8
  %550 = and i8 %549, 1
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %550, i8* %551, align 1, !tbaa !2447
  %552 = icmp eq i32 %533, 0
  %553 = zext i1 %552 to i8
  %554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %553, i8* %554, align 1, !tbaa !2448
  %555 = lshr i32 %533, 31
  %556 = trunc i32 %555 to i8
  %557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %556, i8* %557, align 1, !tbaa !2449
  %558 = lshr i32 %530, 31
  %559 = lshr i32 %532, 31
  %560 = xor i32 %555, %558
  %561 = xor i32 %555, %559
  %562 = add nuw nsw i32 %560, %561
  %563 = icmp eq i32 %562, 2
  %564 = zext i1 %563 to i8
  %565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %564, i8* %565, align 1, !tbaa !2450
  %566 = load i64, i64* %RBP
  %567 = sub i64 %566, 52
  %568 = load i32, i32* %EAX
  %569 = zext i32 %568 to i64
  %570 = load i64, i64* %PC
  %571 = add i64 %570, 3
  store i64 %571, i64* %PC
  %572 = inttoptr i64 %567 to i32*
  store i32 %568, i32* %572
  %573 = load i64, i64* %RBP
  %574 = sub i64 %573, 56
  %575 = load i64, i64* %PC
  %576 = add i64 %575, 3
  store i64 %576, i64* %PC
  %577 = inttoptr i64 %574 to i32*
  %578 = load i32, i32* %577
  %579 = zext i32 %578 to i64
  store i64 %579, i64* %RAX, align 8, !tbaa !2428
  %580 = load i64, i64* %RAX
  %581 = load i64, i64* %PC
  %582 = add i64 %581, 3
  store i64 %582, i64* %PC
  %583 = trunc i64 %580 to i32
  %584 = add i32 1, %583
  %585 = zext i32 %584 to i64
  store i64 %585, i64* %RAX, align 8, !tbaa !2428
  %586 = icmp ult i32 %584, %583
  %587 = icmp ult i32 %584, 1
  %588 = or i1 %586, %587
  %589 = zext i1 %588 to i8
  %590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %589, i8* %590, align 1, !tbaa !2432
  %591 = and i32 %584, 255
  %592 = call i32 @llvm.ctpop.i32(i32 %591) #16
  %593 = trunc i32 %592 to i8
  %594 = and i8 %593, 1
  %595 = xor i8 %594, 1
  %596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %595, i8* %596, align 1, !tbaa !2446
  %597 = xor i64 1, %580
  %598 = trunc i64 %597 to i32
  %599 = xor i32 %598, %584
  %600 = lshr i32 %599, 4
  %601 = trunc i32 %600 to i8
  %602 = and i8 %601, 1
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %602, i8* %603, align 1, !tbaa !2447
  %604 = icmp eq i32 %584, 0
  %605 = zext i1 %604 to i8
  %606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %605, i8* %606, align 1, !tbaa !2448
  %607 = lshr i32 %584, 31
  %608 = trunc i32 %607 to i8
  %609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %608, i8* %609, align 1, !tbaa !2449
  %610 = lshr i32 %583, 31
  %611 = xor i32 %607, %610
  %612 = add nuw nsw i32 %611, %607
  %613 = icmp eq i32 %612, 2
  %614 = zext i1 %613 to i8
  %615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %614, i8* %615, align 1, !tbaa !2450
  %616 = load i64, i64* %RBP
  %617 = sub i64 %616, 56
  %618 = load i32, i32* %EAX
  %619 = zext i32 %618 to i64
  %620 = load i64, i64* %PC
  %621 = add i64 %620, 3
  store i64 %621, i64* %PC
  %622 = inttoptr i64 %617 to i32*
  store i32 %618, i32* %622
  %623 = load i64, i64* %PC
  %624 = sub i64 %623, 53
  %625 = load i64, i64* %PC
  %626 = add i64 %625, 5
  store i64 %626, i64* %PC
  %627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %624, i64* %627, align 8, !tbaa !2428
  br label %block_400a42

block_40085a:                                     ; preds = %block_400850
  %628 = load i64, i64* %PC
  %629 = add i64 %628, 10
  store i64 %629, i64* %PC
  store i64 add (i64 ptrtoint (%seg_401080__rodata_type* @seg_401080__rodata to i64), i64 40), i64* %RSI, align 8, !tbaa !2428
  %630 = load i64, i64* %RBP
  %631 = sub i64 %630, 182
  %632 = load i64, i64* %PC
  %633 = add i64 %632, 7
  store i64 %633, i64* %PC
  store i64 %631, i64* %RAX, align 8, !tbaa !2428
  %634 = load i64, i64* %RBP
  %635 = sub i64 %634, 24
  %636 = load i64, i64* %PC
  %637 = add i64 %636, 4
  store i64 %637, i64* %PC
  %638 = inttoptr i64 %635 to i64*
  %639 = load i64, i64* %638
  store i64 %639, i64* %RCX, align 8, !tbaa !2428
  %640 = load i64, i64* %RCX
  %641 = add i64 %640, 64
  %642 = load i64, i64* %PC
  %643 = add i64 %642, 4
  store i64 %643, i64* %PC
  %644 = inttoptr i64 %641 to i64*
  %645 = load i64, i64* %644
  store i64 %645, i64* %RDI, align 8, !tbaa !2428
  %646 = load i64, i64* %RAX
  %647 = load i64, i64* %PC
  %648 = add i64 %647, 4
  store i64 %648, i64* %PC
  %649 = add i64 2, %646
  store i64 %649, i64* %RAX, align 8, !tbaa !2428
  %650 = icmp ult i64 %649, %646
  %651 = icmp ult i64 %649, 2
  %652 = or i1 %650, %651
  %653 = zext i1 %652 to i8
  %654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %653, i8* %654, align 1, !tbaa !2432
  %655 = trunc i64 %649 to i32
  %656 = and i32 %655, 255
  %657 = call i32 @llvm.ctpop.i32(i32 %656) #16
  %658 = trunc i32 %657 to i8
  %659 = and i8 %658, 1
  %660 = xor i8 %659, 1
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %660, i8* %661, align 1, !tbaa !2446
  %662 = xor i64 2, %646
  %663 = xor i64 %662, %649
  %664 = lshr i64 %663, 4
  %665 = trunc i64 %664 to i8
  %666 = and i8 %665, 1
  %667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %666, i8* %667, align 1, !tbaa !2447
  %668 = icmp eq i64 %649, 0
  %669 = zext i1 %668 to i8
  %670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %669, i8* %670, align 1, !tbaa !2448
  %671 = lshr i64 %649, 63
  %672 = trunc i64 %671 to i8
  %673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %672, i8* %673, align 1, !tbaa !2449
  %674 = lshr i64 %646, 63
  %675 = xor i64 %671, %674
  %676 = add nuw nsw i64 %675, %671
  %677 = icmp eq i64 %676, 2
  %678 = zext i1 %677 to i8
  %679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %678, i8* %679, align 1, !tbaa !2450
  %680 = load i64, i64* %RAX
  %681 = load i64, i64* %PC
  %682 = add i64 %681, 3
  store i64 %682, i64* %PC
  store i64 %680, i64* %RDX, align 8, !tbaa !2428
  %683 = load i64, i64* %PC
  %684 = add i64 %683, 2
  store i64 %684, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %685 = load i64, i64* %PC
  %686 = sub i64 %685, 556
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
  %697 = call %struct.Memory* @ext_400650___isoc99_sscanf(%struct.State* %0, i64 %696, %struct.Memory* %MEMORY.1)
  %698 = load i64, i64* %RBP
  %699 = sub i64 %698, 200
  %700 = load i32, i32* %EAX
  %701 = zext i32 %700 to i64
  %702 = load i64, i64* %PC
  %703 = add i64 %702, 6
  store i64 %703, i64* %PC
  %704 = inttoptr i64 %699 to i32*
  store i32 %700, i32* %704
  %705 = load i64, i64* %PC
  %706 = add i64 %705, 14
  %707 = load i64, i64* %PC
  %708 = add i64 %707, 5
  store i64 %708, i64* %PC
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %706, i64* %709, align 8, !tbaa !2428
  br label %block_400895

block_4009cc:                                     ; preds = %block_4009d8, %block_4009c5
  %MEMORY.2 = phi %struct.Memory* [ %1221, %block_4009c5 ], [ %1033, %block_4009d8 ]
  %710 = load i64, i64* %RBP
  %711 = sub i64 %710, 56
  %712 = load i64, i64* %PC
  %713 = add i64 %712, 3
  store i64 %713, i64* %PC
  %714 = inttoptr i64 %711 to i32*
  %715 = load i32, i32* %714
  %716 = zext i32 %715 to i64
  store i64 %716, i64* %RAX, align 8, !tbaa !2428
  %717 = load i32, i32* %EAX
  %718 = zext i32 %717 to i64
  %719 = load i64, i64* %RBP
  %720 = sub i64 %719, 48
  %721 = load i64, i64* %PC
  %722 = add i64 %721, 3
  store i64 %722, i64* %PC
  %723 = inttoptr i64 %720 to i32*
  %724 = load i32, i32* %723
  %725 = sub i32 %717, %724
  %726 = icmp ult i32 %717, %724
  %727 = zext i1 %726 to i8
  %728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %727, i8* %728, align 1, !tbaa !2432
  %729 = and i32 %725, 255
  %730 = call i32 @llvm.ctpop.i32(i32 %729) #16
  %731 = trunc i32 %730 to i8
  %732 = and i8 %731, 1
  %733 = xor i8 %732, 1
  %734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %733, i8* %734, align 1, !tbaa !2446
  %735 = xor i32 %724, %717
  %736 = xor i32 %735, %725
  %737 = lshr i32 %736, 4
  %738 = trunc i32 %737 to i8
  %739 = and i8 %738, 1
  %740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %739, i8* %740, align 1, !tbaa !2447
  %741 = icmp eq i32 %725, 0
  %742 = zext i1 %741 to i8
  %743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %742, i8* %743, align 1, !tbaa !2448
  %744 = lshr i32 %725, 31
  %745 = trunc i32 %744 to i8
  %746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %745, i8* %746, align 1, !tbaa !2449
  %747 = lshr i32 %717, 31
  %748 = lshr i32 %724, 31
  %749 = xor i32 %748, %747
  %750 = xor i32 %744, %747
  %751 = add nuw nsw i32 %750, %749
  %752 = icmp eq i32 %751, 2
  %753 = zext i1 %752 to i8
  %754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %753, i8* %754, align 1, !tbaa !2450
  %755 = load i64, i64* %PC
  %756 = add i64 %755, 59
  %757 = load i64, i64* %PC
  %758 = add i64 %757, 6
  %759 = load i64, i64* %PC
  %760 = add i64 %759, 6
  store i64 %760, i64* %PC
  %761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %762 = load i8, i8* %761, align 1, !tbaa !2449
  %763 = icmp ne i8 %762, 0
  %764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %765 = load i8, i8* %764, align 1, !tbaa !2450
  %766 = icmp ne i8 %765, 0
  %767 = xor i1 %763, %766
  %768 = xor i1 %767, true
  %769 = zext i1 %768 to i8
  store i8 %769, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %771 = select i1 %767, i64 %758, i64 %756
  store i64 %771, i64* %770, align 8, !tbaa !2428
  %772 = load i8, i8* %BRANCH_TAKEN
  %773 = icmp eq i8 %772, 1
  br i1 %773, label %block_400a0d, label %block_4009d8

block_4007ca:                                     ; preds = %block_400760
  %774 = sub i64 %217, 56
  %775 = load i64, i64* %PC
  %776 = add i64 %775, 7
  store i64 %776, i64* %PC
  %777 = inttoptr i64 %774 to i32*
  store i32 1, i32* %777
  br label %block_4007d1

block_400847:                                     ; preds = %block_400812
  %778 = load i64, i64* %RBP
  %779 = sub i64 %778, 182
  %780 = load i64, i64* %PC
  %781 = add i64 %780, 9
  store i64 %781, i64* %PC
  %782 = inttoptr i64 %779 to i16*
  store i16 1, i16* %782
  br label %block_400850

block_4009c5:                                     ; preds = %block_400998
  %783 = sub i64 %1266, 56
  %784 = load i64, i64* %PC
  %785 = add i64 %784, 7
  store i64 %785, i64* %PC
  %786 = inttoptr i64 %783 to i32*
  store i32 0, i32* %786
  br label %block_4009cc

block_400a42:                                     ; preds = %block_400a12, %block_400a4e
  %MEMORY.3 = phi %struct.Memory* [ %1814, %block_400a12 ], [ %524, %block_400a4e ]
  %787 = load i64, i64* %RBP
  %788 = sub i64 %787, 56
  %789 = load i64, i64* %PC
  %790 = add i64 %789, 3
  store i64 %790, i64* %PC
  %791 = inttoptr i64 %788 to i32*
  %792 = load i32, i32* %791
  %793 = zext i32 %792 to i64
  store i64 %793, i64* %RAX, align 8, !tbaa !2428
  %794 = load i32, i32* %EAX
  %795 = zext i32 %794 to i64
  %796 = load i64, i64* %RBP
  %797 = sub i64 %796, 48
  %798 = load i64, i64* %PC
  %799 = add i64 %798, 3
  store i64 %799, i64* %PC
  %800 = inttoptr i64 %797 to i32*
  %801 = load i32, i32* %800
  %802 = sub i32 %794, %801
  %803 = icmp ult i32 %794, %801
  %804 = zext i1 %803 to i8
  %805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %804, i8* %805, align 1, !tbaa !2432
  %806 = and i32 %802, 255
  %807 = call i32 @llvm.ctpop.i32(i32 %806) #16
  %808 = trunc i32 %807 to i8
  %809 = and i8 %808, 1
  %810 = xor i8 %809, 1
  %811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %810, i8* %811, align 1, !tbaa !2446
  %812 = xor i32 %801, %794
  %813 = xor i32 %812, %802
  %814 = lshr i32 %813, 4
  %815 = trunc i32 %814 to i8
  %816 = and i8 %815, 1
  %817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %816, i8* %817, align 1, !tbaa !2447
  %818 = icmp eq i32 %802, 0
  %819 = zext i1 %818 to i8
  %820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %819, i8* %820, align 1, !tbaa !2448
  %821 = lshr i32 %802, 31
  %822 = trunc i32 %821 to i8
  %823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %822, i8* %823, align 1, !tbaa !2449
  %824 = lshr i32 %794, 31
  %825 = lshr i32 %801, 31
  %826 = xor i32 %825, %824
  %827 = xor i32 %821, %824
  %828 = add nuw nsw i32 %827, %826
  %829 = icmp eq i32 %828, 2
  %830 = zext i1 %829 to i8
  %831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %830, i8* %831, align 1, !tbaa !2450
  %832 = load i64, i64* %PC
  %833 = add i64 %832, 52
  %834 = load i64, i64* %PC
  %835 = add i64 %834, 6
  %836 = load i64, i64* %PC
  %837 = add i64 %836, 6
  store i64 %837, i64* %PC
  %838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %839 = load i8, i8* %838, align 1, !tbaa !2449
  %840 = icmp ne i8 %839, 0
  %841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %842 = load i8, i8* %841, align 1, !tbaa !2450
  %843 = icmp ne i8 %842, 0
  %844 = xor i1 %840, %843
  %845 = xor i1 %844, true
  %846 = zext i1 %845 to i8
  store i8 %846, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %848 = select i1 %844, i64 %835, i64 %833
  store i64 %848, i64* %847, align 8, !tbaa !2428
  %849 = load i8, i8* %BRANCH_TAKEN
  %850 = icmp eq i8 %849, 1
  %851 = load i64, i64* %PC
  %852 = add i64 %851, 5
  br i1 %850, label %block_400a7c, label %block_400a4e

block_4007aa:                                     ; preds = %block_400760
  %853 = sub i64 %217, 176
  %854 = load i64, i64* %PC
  %855 = add i64 %854, 7
  store i64 %855, i64* %PC
  store i64 %853, i64* %RDI, align 8, !tbaa !2428
  %856 = load i64, i64* %RBP
  %857 = sub i64 %856, 24
  %858 = load i64, i64* %PC
  %859 = add i64 %858, 4
  store i64 %859, i64* %PC
  %860 = inttoptr i64 %857 to i64*
  %861 = load i64, i64* %860
  store i64 %861, i64* %RAX, align 8, !tbaa !2428
  %862 = load i64, i64* %RAX
  %863 = add i64 %862, 48
  %864 = load i64, i64* %PC
  %865 = add i64 %864, 4
  store i64 %865, i64* %PC
  %866 = inttoptr i64 %863 to i64*
  %867 = load i64, i64* %866
  store i64 %867, i64* %RSI, align 8, !tbaa !2428
  %868 = load i64, i64* %PC
  %869 = sub i64 %868, 457
  %870 = load i64, i64* %PC
  %871 = add i64 %870, 5
  %872 = load i64, i64* %PC
  %873 = add i64 %872, 5
  store i64 %873, i64* %PC
  %874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %875 = load i64, i64* %874, align 8, !tbaa !2428
  %876 = add i64 %875, -8
  %877 = inttoptr i64 %876 to i64*
  store i64 %871, i64* %877
  store i64 %876, i64* %874, align 8, !tbaa !2428
  %878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %869, i64* %878, align 8, !tbaa !2428
  %879 = load i64, i64* %PC
  %880 = call %struct.Memory* @ext_4005f0_strcpy(%struct.State* %0, i64 %879, %struct.Memory* %2)
  %881 = load i64, i64* %RBP
  %882 = sub i64 %881, 192
  %883 = load i64, i64* %RAX
  %884 = load i64, i64* %PC
  %885 = add i64 %884, 7
  store i64 %885, i64* %PC
  %886 = inttoptr i64 %882 to i64*
  store i64 %883, i64* %886
  %887 = load i64, i64* %PC
  %888 = add i64 %887, 77
  %889 = load i64, i64* %PC
  %890 = add i64 %889, 5
  store i64 %890, i64* %PC
  %891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %888, i64* %891, align 8, !tbaa !2428
  br label %block_400812

block_400927:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit
  %892 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %893 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %894 = bitcast %union.vec128_t* %XMM0 to i8*
  %895 = load i64, i64* %PC
  %896 = add i64 %895, 3
  store i64 %896, i64* %PC
  %897 = bitcast i8* %893 to i64*
  %898 = load i64, i64* %897, align 1
  %899 = getelementptr inbounds i8, i8* %893, i64 8
  %900 = bitcast i8* %899 to i64*
  %901 = load i64, i64* %900, align 1
  %902 = bitcast i8* %894 to i64*
  %903 = load i64, i64* %902, align 1
  %904 = getelementptr inbounds i8, i8* %894, i64 8
  %905 = bitcast i8* %904 to i64*
  %906 = load i64, i64* %905, align 1
  %907 = xor i64 %903, %898
  %908 = xor i64 %906, %901
  %909 = trunc i64 %907 to i32
  %910 = lshr i64 %907, 32
  %911 = trunc i64 %910 to i32
  %912 = bitcast i8* %892 to i32*
  store i32 %909, i32* %912, align 1, !tbaa !2452
  %913 = getelementptr inbounds i8, i8* %892, i64 4
  %914 = bitcast i8* %913 to i32*
  store i32 %911, i32* %914, align 1, !tbaa !2452
  %915 = trunc i64 %908 to i32
  %916 = getelementptr inbounds i8, i8* %892, i64 8
  %917 = bitcast i8* %916 to i32*
  store i32 %915, i32* %917, align 1, !tbaa !2452
  %918 = lshr i64 %908, 32
  %919 = trunc i64 %918 to i32
  %920 = getelementptr inbounds i8, i8* %892, i64 12
  %921 = bitcast i8* %920 to i32*
  store i32 %919, i32* %921, align 1, !tbaa !2452
  %922 = bitcast %union.vec128_t* %XMM0 to i8*
  %923 = load i64, i64* %RBP
  %924 = sub i64 %923, 64
  %925 = load i64, i64* %PC
  %926 = add i64 %925, 5
  store i64 %926, i64* %PC
  %927 = bitcast i8* %922 to double*
  %928 = load double, double* %927, align 1
  %929 = inttoptr i64 %924 to double*
  %930 = load double, double* %929
  %931 = fcmp uno double %928, %930
  br i1 %931, label %932, label %944

; <label>:932:                                    ; preds = %block_400927
  %933 = fadd double %928, %930
  %934 = bitcast double %933 to i64
  %935 = and i64 %934, 9221120237041090560
  %936 = icmp eq i64 %935, 9218868437227405312
  %937 = and i64 %934, 2251799813685247
  %938 = icmp ne i64 %937, 0
  %939 = and i1 %936, %938
  br i1 %939, label %940, label %950

; <label>:940:                                    ; preds = %932
  %941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %942 = load i64, i64* %941, align 8, !tbaa !2428
  %943 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %942, %struct.Memory* %1619) #17
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:944:                                    ; preds = %block_400927
  %945 = fcmp ogt double %928, %930
  br i1 %945, label %950, label %946

; <label>:946:                                    ; preds = %944
  %947 = fcmp olt double %928, %930
  br i1 %947, label %950, label %948

; <label>:948:                                    ; preds = %946
  %949 = fcmp oeq double %928, %930
  br i1 %949, label %950, label %957

; <label>:950:                                    ; preds = %948, %946, %944, %932
  %951 = phi i8 [ 0, %944 ], [ 0, %946 ], [ 1, %948 ], [ 1, %932 ]
  %952 = phi i8 [ 0, %944 ], [ 0, %946 ], [ 0, %948 ], [ 1, %932 ]
  %953 = phi i8 [ 0, %944 ], [ 1, %946 ], [ 0, %948 ], [ 1, %932 ]
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %951, i8* %954, align 1, !tbaa !2451
  %955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %952, i8* %955, align 1, !tbaa !2451
  %956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %953, i8* %956, align 1, !tbaa !2451
  br label %957

; <label>:957:                                    ; preds = %950, %948
  %958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %958, align 1, !tbaa !2451
  %959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %959, align 1, !tbaa !2451
  %960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %960, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %940, %957
  %961 = phi %struct.Memory* [ %943, %940 ], [ %1619, %957 ]
  %962 = load i64, i64* %PC
  %963 = add i64 %962, 41
  %964 = load i64, i64* %PC
  %965 = add i64 %964, 6
  %966 = load i64, i64* %PC
  %967 = add i64 %966, 6
  store i64 %967, i64* %PC
  %968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %969 = load i8, i8* %968, align 1, !tbaa !2432
  %970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %971 = load i8, i8* %970, align 1, !tbaa !2448
  %972 = or i8 %971, %969
  %973 = icmp ne i8 %972, 0
  %974 = zext i1 %973 to i8
  store i8 %974, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %976 = select i1 %973, i64 %963, i64 %965
  store i64 %976, i64* %975, align 8, !tbaa !2428
  %977 = load i8, i8* %BRANCH_TAKEN
  %978 = icmp eq i8 %977, 1
  br i1 %978, label %block_400958, label %block_400935

block_4009d8:                                     ; preds = %block_4009cc
  %979 = load i64, i64* %RBP
  %980 = sub i64 %979, 40
  %981 = load i64, i64* %PC
  %982 = add i64 %981, 4
  store i64 %982, i64* %PC
  store i64 %980, i64* %RDI, align 8, !tbaa !2428
  %983 = load i64, i64* %PC
  %984 = add i64 %983, 484
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
  %995 = call %struct.Memory* @sub_400bc0_init_renamed_(%struct.State* %0, i64 %994, %struct.Memory* %MEMORY.2)
  %996 = load i64, i64* %RBP
  %997 = sub i64 %996, 40
  %998 = load i64, i64* %PC
  %999 = add i64 %998, 4
  store i64 %999, i64* %PC
  store i64 %997, i64* %RSI, align 8, !tbaa !2428
  %1000 = load i64, i64* %RBP
  %1001 = sub i64 %1000, 176
  %1002 = load i64, i64* %PC
  %1003 = add i64 %1002, 7
  store i64 %1003, i64* %PC
  store i64 %1001, i64* %RDX, align 8, !tbaa !2428
  %1004 = load i64, i64* %RBP
  %1005 = sub i64 %1004, 44
  %1006 = load i64, i64* %PC
  %1007 = add i64 %1006, 3
  store i64 %1007, i64* %PC
  %1008 = inttoptr i64 %1005 to i32*
  %1009 = load i32, i32* %1008
  %1010 = zext i32 %1009 to i64
  store i64 %1010, i64* %RDI, align 8, !tbaa !2428
  %1011 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1012 = load i64, i64* %RBP
  %1013 = sub i64 %1012, 64
  %1014 = load i64, i64* %PC
  %1015 = add i64 %1014, 5
  store i64 %1015, i64* %PC
  %1016 = inttoptr i64 %1013 to double*
  %1017 = load double, double* %1016
  %1018 = bitcast i8* %1011 to double*
  store double %1017, double* %1018, align 1, !tbaa !2453
  %1019 = getelementptr inbounds i8, i8* %1011, i64 8
  %1020 = bitcast i8* %1019 to double*
  store double 0.000000e+00, double* %1020, align 1, !tbaa !2453
  %1021 = load i64, i64* %PC
  %1022 = add i64 %1021, 524
  %1023 = load i64, i64* %PC
  %1024 = add i64 %1023, 5
  %1025 = load i64, i64* %PC
  %1026 = add i64 %1025, 5
  store i64 %1026, i64* %PC
  %1027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1028 = load i64, i64* %1027, align 8, !tbaa !2428
  %1029 = add i64 %1028, -8
  %1030 = inttoptr i64 %1029 to i64*
  store i64 %1024, i64* %1030
  store i64 %1029, i64* %1027, align 8, !tbaa !2428
  %1031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1022, i64* %1031, align 8, !tbaa !2428
  %1032 = load i64, i64* %PC
  %1033 = call %struct.Memory* @sub_400c00_simulate_renamed_(%struct.State* %0, i64 %1032, %struct.Memory* %995)
  %1034 = load i64, i64* %RAX
  %1035 = load i64, i64* %RBP
  %1036 = sub i64 %1035, 52
  %1037 = load i64, i64* %PC
  %1038 = add i64 %1037, 3
  store i64 %1038, i64* %PC
  %1039 = trunc i64 %1034 to i32
  %1040 = inttoptr i64 %1036 to i32*
  %1041 = load i32, i32* %1040
  %1042 = add i32 %1041, %1039
  %1043 = zext i32 %1042 to i64
  store i64 %1043, i64* %RAX, align 8, !tbaa !2428
  %1044 = icmp ult i32 %1042, %1039
  %1045 = icmp ult i32 %1042, %1041
  %1046 = or i1 %1044, %1045
  %1047 = zext i1 %1046 to i8
  %1048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1047, i8* %1048, align 1, !tbaa !2432
  %1049 = and i32 %1042, 255
  %1050 = call i32 @llvm.ctpop.i32(i32 %1049) #16
  %1051 = trunc i32 %1050 to i8
  %1052 = and i8 %1051, 1
  %1053 = xor i8 %1052, 1
  %1054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1053, i8* %1054, align 1, !tbaa !2446
  %1055 = xor i32 %1041, %1039
  %1056 = xor i32 %1055, %1042
  %1057 = lshr i32 %1056, 4
  %1058 = trunc i32 %1057 to i8
  %1059 = and i8 %1058, 1
  %1060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1059, i8* %1060, align 1, !tbaa !2447
  %1061 = icmp eq i32 %1042, 0
  %1062 = zext i1 %1061 to i8
  %1063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1062, i8* %1063, align 1, !tbaa !2448
  %1064 = lshr i32 %1042, 31
  %1065 = trunc i32 %1064 to i8
  %1066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1065, i8* %1066, align 1, !tbaa !2449
  %1067 = lshr i32 %1039, 31
  %1068 = lshr i32 %1041, 31
  %1069 = xor i32 %1064, %1067
  %1070 = xor i32 %1064, %1068
  %1071 = add nuw nsw i32 %1069, %1070
  %1072 = icmp eq i32 %1071, 2
  %1073 = zext i1 %1072 to i8
  %1074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1073, i8* %1074, align 1, !tbaa !2450
  %1075 = load i64, i64* %RBP
  %1076 = sub i64 %1075, 52
  %1077 = load i32, i32* %EAX
  %1078 = zext i32 %1077 to i64
  %1079 = load i64, i64* %PC
  %1080 = add i64 %1079, 3
  store i64 %1080, i64* %PC
  %1081 = inttoptr i64 %1076 to i32*
  store i32 %1077, i32* %1081
  %1082 = load i64, i64* %RBP
  %1083 = sub i64 %1082, 56
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
  %1126 = sub i64 %1125, 56
  %1127 = load i32, i32* %EAX
  %1128 = zext i32 %1127 to i64
  %1129 = load i64, i64* %PC
  %1130 = add i64 %1129, 3
  store i64 %1130, i64* %PC
  %1131 = inttoptr i64 %1126 to i32*
  store i32 %1127, i32* %1131
  %1132 = load i64, i64* %PC
  %1133 = sub i64 %1132, 60
  %1134 = load i64, i64* %PC
  %1135 = add i64 %1134, 5
  store i64 %1135, i64* %PC
  %1136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1133, i64* %1136, align 8, !tbaa !2428
  br label %block_4009cc

block_40081c:                                     ; preds = %block_400812
  %1137 = load i64, i64* %PC
  %1138 = add i64 %1137, 10
  store i64 %1138, i64* %PC
  store i64 add (i64 ptrtoint (%seg_401080__rodata_type* @seg_401080__rodata to i64), i64 40), i64* %RSI, align 8, !tbaa !2428
  %1139 = load i64, i64* %RBP
  %1140 = sub i64 %1139, 182
  %1141 = load i64, i64* %PC
  %1142 = add i64 %1141, 7
  store i64 %1142, i64* %PC
  store i64 %1140, i64* %RDX, align 8, !tbaa !2428
  %1143 = load i64, i64* %RBP
  %1144 = sub i64 %1143, 24
  %1145 = load i64, i64* %PC
  %1146 = add i64 %1145, 4
  store i64 %1146, i64* %PC
  %1147 = inttoptr i64 %1144 to i64*
  %1148 = load i64, i64* %1147
  store i64 %1148, i64* %RAX, align 8, !tbaa !2428
  %1149 = load i64, i64* %RAX
  %1150 = add i64 %1149, 56
  %1151 = load i64, i64* %PC
  %1152 = add i64 %1151, 4
  store i64 %1152, i64* %PC
  %1153 = inttoptr i64 %1150 to i64*
  %1154 = load i64, i64* %1153
  store i64 %1154, i64* %RDI, align 8, !tbaa !2428
  %1155 = load i64, i64* %PC
  %1156 = add i64 %1155, 2
  store i64 %1156, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %1157 = load i64, i64* %PC
  %1158 = sub i64 %1157, 487
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
  %1169 = call %struct.Memory* @ext_400650___isoc99_sscanf(%struct.State* %0, i64 %1168, %struct.Memory* %MEMORY.5)
  %1170 = load i64, i64* %RBP
  %1171 = sub i64 %1170, 196
  %1172 = load i32, i32* %EAX
  %1173 = zext i32 %1172 to i64
  %1174 = load i64, i64* %PC
  %1175 = add i64 %1174, 6
  store i64 %1175, i64* %PC
  %1176 = inttoptr i64 %1171 to i32*
  store i32 %1172, i32* %1176
  %1177 = load i64, i64* %PC
  %1178 = add i64 %1177, 14
  %1179 = load i64, i64* %PC
  %1180 = add i64 %1179, 5
  store i64 %1180, i64* %PC
  %1181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1178, i64* %1181, align 8, !tbaa !2428
  br label %block_400850

block_400998:                                     ; preds = %block_400958
  %1182 = load i64, i64* %RBP
  %1183 = sub i64 %1182, 182
  %1184 = load i64, i64* %PC
  %1185 = add i64 %1184, 7
  store i64 %1185, i64* %PC
  store i64 %1183, i64* %RDI, align 8, !tbaa !2428
  %1186 = load i64, i64* %PC
  %1187 = sub i64 %1186, 879
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
  %1198 = call %struct.Memory* @ext_6020f8_seed48(%struct.State* %0, i64 %1197, %struct.Memory* %1477)
  %1199 = load i64, i64* %RBP
  %1200 = sub i64 %1199, 40
  %1201 = load i64, i64* %PC
  %1202 = add i64 %1201, 4
  store i64 %1202, i64* %PC
  store i64 %1200, i64* %RDI, align 8, !tbaa !2428
  %1203 = load i64, i64* %RBP
  %1204 = sub i64 %1203, 224
  %1205 = load i64, i64* %RAX
  %1206 = load i64, i64* %PC
  %1207 = add i64 %1206, 7
  store i64 %1207, i64* %PC
  %1208 = inttoptr i64 %1204 to i64*
  store i64 %1205, i64* %1208
  %1209 = load i64, i64* %PC
  %1210 = add i64 %1209, 369
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
  %1221 = call %struct.Memory* @sub_400b20_create_link_list_renamed_(%struct.State* %0, i64 %1220, %struct.Memory* %1198)
  %1222 = load i64, i64* %RBP
  %1223 = sub i64 %1222, 52
  %1224 = load i64, i64* %PC
  %1225 = add i64 %1224, 7
  store i64 %1225, i64* %PC
  %1226 = inttoptr i64 %1223 to i32*
  store i32 0, i32* %1226
  %1227 = load i64, i64* %RBP
  %1228 = sub i64 %1227, 44
  %1229 = load i64, i64* %PC
  %1230 = add i64 %1229, 4
  store i64 %1230, i64* %PC
  %1231 = inttoptr i64 %1228 to i32*
  %1232 = load i32, i32* %1231
  %1233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1233, align 1, !tbaa !2432
  %1234 = and i32 %1232, 255
  %1235 = call i32 @llvm.ctpop.i32(i32 %1234) #16
  %1236 = trunc i32 %1235 to i8
  %1237 = and i8 %1236, 1
  %1238 = xor i8 %1237, 1
  %1239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1238, i8* %1239, align 1, !tbaa !2446
  %1240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1240, align 1, !tbaa !2447
  %1241 = icmp eq i32 %1232, 0
  %1242 = zext i1 %1241 to i8
  %1243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1242, i8* %1243, align 1, !tbaa !2448
  %1244 = lshr i32 %1232, 31
  %1245 = trunc i32 %1244 to i8
  %1246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1245, i8* %1246, align 1, !tbaa !2449
  %1247 = lshr i32 %1232, 31
  %1248 = xor i32 %1244, %1247
  %1249 = add nuw nsw i32 %1248, %1247
  %1250 = icmp eq i32 %1249, 2
  %1251 = zext i1 %1250 to i8
  %1252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1251, i8* %1252, align 1, !tbaa !2450
  %1253 = load i64, i64* %PC
  %1254 = add i64 %1253, 83
  %1255 = load i64, i64* %PC
  %1256 = add i64 %1255, 6
  %1257 = load i64, i64* %PC
  %1258 = add i64 %1257, 6
  store i64 %1258, i64* %PC
  %1259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1260 = load i8, i8* %1259, align 1, !tbaa !2448
  store i8 %1260, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1262 = icmp ne i8 %1260, 0
  %1263 = select i1 %1262, i64 %1254, i64 %1256
  store i64 %1263, i64* %1261, align 8, !tbaa !2428
  %1264 = load i8, i8* %BRANCH_TAKEN
  %1265 = icmp eq i8 %1264, 1
  %1266 = load i64, i64* %RBP
  br i1 %1265, label %block_400a12, label %block_4009c5

block_400895:                                     ; preds = %block_40088c, %block_40085a
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.1, %block_40088c ], [ %697, %block_40085a ]
  %1267 = load i64, i64* %RBP
  %1268 = sub i64 %1267, 16
  %1269 = load i64, i64* %PC
  %1270 = add i64 %1269, 4
  store i64 %1270, i64* %PC
  %1271 = inttoptr i64 %1268 to i32*
  %1272 = load i32, i32* %1271
  %1273 = sub i32 %1272, 9
  %1274 = icmp ult i32 %1272, 9
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
  %1283 = xor i32 %1272, 9
  %1284 = xor i32 %1283, %1273
  %1285 = lshr i32 %1284, 4
  %1286 = trunc i32 %1285 to i8
  %1287 = and i8 %1286, 1
  %1288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1287, i8* %1288, align 1, !tbaa !2447
  %1289 = icmp eq i32 %1273, 0
  %1290 = zext i1 %1289 to i8
  %1291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1290, i8* %1291, align 1, !tbaa !2448
  %1292 = lshr i32 %1273, 31
  %1293 = trunc i32 %1292 to i8
  %1294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1293, i8* %1294, align 1, !tbaa !2449
  %1295 = lshr i32 %1272, 31
  %1296 = xor i32 %1292, %1295
  %1297 = add nuw nsw i32 %1296, %1295
  %1298 = icmp eq i32 %1297, 2
  %1299 = zext i1 %1298 to i8
  %1300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1299, i8* %1300, align 1, !tbaa !2450
  %1301 = load i64, i64* %PC
  %1302 = add i64 %1301, 56
  %1303 = load i64, i64* %PC
  %1304 = add i64 %1303, 6
  %1305 = load i64, i64* %PC
  %1306 = add i64 %1305, 6
  store i64 %1306, i64* %PC
  %1307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1308 = load i8, i8* %1307, align 1, !tbaa !2448
  %1309 = icmp ne i8 %1308, 0
  %1310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1311 = load i8, i8* %1310, align 1, !tbaa !2449
  %1312 = icmp ne i8 %1311, 0
  %1313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1314 = load i8, i8* %1313, align 1, !tbaa !2450
  %1315 = icmp ne i8 %1314, 0
  %1316 = xor i1 %1312, %1315
  %1317 = or i1 %1309, %1316
  %1318 = zext i1 %1317 to i8
  store i8 %1318, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1320 = select i1 %1317, i64 %1302, i64 %1304
  store i64 %1320, i64* %1319, align 8, !tbaa !2428
  %1321 = load i8, i8* %BRANCH_TAKEN
  %1322 = icmp eq i8 %1321, 1
  br i1 %1322, label %block_4008d1, label %block_40089f

block_400812:                                     ; preds = %block_4007aa, %block_4007fb
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.0, %block_4007fb ], [ %880, %block_4007aa ]
  %1323 = load i64, i64* %RBP
  %1324 = sub i64 %1323, 16
  %1325 = load i64, i64* %PC
  %1326 = add i64 %1325, 4
  store i64 %1326, i64* %PC
  %1327 = inttoptr i64 %1324 to i32*
  %1328 = load i32, i32* %1327
  %1329 = sub i32 %1328, 7
  %1330 = icmp ult i32 %1328, 7
  %1331 = zext i1 %1330 to i8
  %1332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1331, i8* %1332, align 1, !tbaa !2432
  %1333 = and i32 %1329, 255
  %1334 = call i32 @llvm.ctpop.i32(i32 %1333) #16
  %1335 = trunc i32 %1334 to i8
  %1336 = and i8 %1335, 1
  %1337 = xor i8 %1336, 1
  %1338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1337, i8* %1338, align 1, !tbaa !2446
  %1339 = xor i32 %1328, 7
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
  %1351 = lshr i32 %1328, 31
  %1352 = xor i32 %1348, %1351
  %1353 = add nuw nsw i32 %1352, %1351
  %1354 = icmp eq i32 %1353, 2
  %1355 = zext i1 %1354 to i8
  %1356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1355, i8* %1356, align 1, !tbaa !2450
  %1357 = load i64, i64* %PC
  %1358 = add i64 %1357, 49
  %1359 = load i64, i64* %PC
  %1360 = add i64 %1359, 6
  %1361 = load i64, i64* %PC
  %1362 = add i64 %1361, 6
  store i64 %1362, i64* %PC
  %1363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1364 = load i8, i8* %1363, align 1, !tbaa !2448
  %1365 = icmp ne i8 %1364, 0
  %1366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1367 = load i8, i8* %1366, align 1, !tbaa !2449
  %1368 = icmp ne i8 %1367, 0
  %1369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1370 = load i8, i8* %1369, align 1, !tbaa !2450
  %1371 = icmp ne i8 %1370, 0
  %1372 = xor i1 %1368, %1371
  %1373 = or i1 %1365, %1372
  %1374 = zext i1 %1373 to i8
  store i8 %1374, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1376 = select i1 %1373, i64 %1358, i64 %1360
  store i64 %1376, i64* %1375, align 8, !tbaa !2428
  %1377 = load i8, i8* %BRANCH_TAKEN
  %1378 = icmp eq i8 %1377, 1
  br i1 %1378, label %block_400847, label %block_40081c

block_40089f:                                     ; preds = %block_400895
  %1379 = load i64, i64* %PC
  %1380 = add i64 %1379, 10
  store i64 %1380, i64* %PC
  store i64 add (i64 ptrtoint (%seg_401080__rodata_type* @seg_401080__rodata to i64), i64 40), i64* %RSI, align 8, !tbaa !2428
  %1381 = load i64, i64* %RBP
  %1382 = sub i64 %1381, 182
  %1383 = load i64, i64* %PC
  %1384 = add i64 %1383, 7
  store i64 %1384, i64* %PC
  store i64 %1382, i64* %RAX, align 8, !tbaa !2428
  %1385 = load i64, i64* %RBP
  %1386 = sub i64 %1385, 24
  %1387 = load i64, i64* %PC
  %1388 = add i64 %1387, 4
  store i64 %1388, i64* %PC
  %1389 = inttoptr i64 %1386 to i64*
  %1390 = load i64, i64* %1389
  store i64 %1390, i64* %RCX, align 8, !tbaa !2428
  %1391 = load i64, i64* %RCX
  %1392 = add i64 %1391, 72
  %1393 = load i64, i64* %PC
  %1394 = add i64 %1393, 4
  store i64 %1394, i64* %PC
  %1395 = inttoptr i64 %1392 to i64*
  %1396 = load i64, i64* %1395
  store i64 %1396, i64* %RDI, align 8, !tbaa !2428
  %1397 = load i64, i64* %RAX
  %1398 = load i64, i64* %PC
  %1399 = add i64 %1398, 4
  store i64 %1399, i64* %PC
  %1400 = add i64 4, %1397
  store i64 %1400, i64* %RAX, align 8, !tbaa !2428
  %1401 = icmp ult i64 %1400, %1397
  %1402 = icmp ult i64 %1400, 4
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
  %1413 = xor i64 4, %1397
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
  %1425 = lshr i64 %1397, 63
  %1426 = xor i64 %1422, %1425
  %1427 = add nuw nsw i64 %1426, %1422
  %1428 = icmp eq i64 %1427, 2
  %1429 = zext i1 %1428 to i8
  %1430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1429, i8* %1430, align 1, !tbaa !2450
  %1431 = load i64, i64* %RAX
  %1432 = load i64, i64* %PC
  %1433 = add i64 %1432, 3
  store i64 %1433, i64* %PC
  store i64 %1431, i64* %RDX, align 8, !tbaa !2428
  %1434 = load i64, i64* %PC
  %1435 = add i64 %1434, 2
  store i64 %1435, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %1436 = load i64, i64* %PC
  %1437 = sub i64 %1436, 625
  %1438 = load i64, i64* %PC
  %1439 = add i64 %1438, 5
  %1440 = load i64, i64* %PC
  %1441 = add i64 %1440, 5
  store i64 %1441, i64* %PC
  %1442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1443 = load i64, i64* %1442, align 8, !tbaa !2428
  %1444 = add i64 %1443, -8
  %1445 = inttoptr i64 %1444 to i64*
  store i64 %1439, i64* %1445
  store i64 %1444, i64* %1442, align 8, !tbaa !2428
  %1446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1437, i64* %1446, align 8, !tbaa !2428
  %1447 = load i64, i64* %PC
  %1448 = call %struct.Memory* @ext_400650___isoc99_sscanf(%struct.State* %0, i64 %1447, %struct.Memory* %MEMORY.4)
  %1449 = load i64, i64* %RBP
  %1450 = sub i64 %1449, 204
  %1451 = load i32, i32* %EAX
  %1452 = zext i32 %1451 to i64
  %1453 = load i64, i64* %PC
  %1454 = add i64 %1453, 6
  store i64 %1454, i64* %PC
  %1455 = inttoptr i64 %1450 to i32*
  store i32 %1451, i32* %1455
  %1456 = load i64, i64* %PC
  %1457 = add i64 %1456, 14
  %1458 = load i64, i64* %PC
  %1459 = add i64 %1458, 5
  store i64 %1459, i64* %PC
  %1460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1457, i64* %1460, align 8, !tbaa !2428
  br label %block_4008da

block_400958:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %1461 = load i64, i64* %RBP
  %1462 = sub i64 %1461, 176
  %1463 = load i64, i64* %PC
  %1464 = add i64 %1463, 7
  store i64 %1464, i64* %PC
  store i64 %1462, i64* %RDI, align 8, !tbaa !2428
  %1465 = load i64, i64* %PC
  %1466 = sub i64 %1465, 863
  %1467 = load i64, i64* %PC
  %1468 = add i64 %1467, 5
  %1469 = load i64, i64* %PC
  %1470 = add i64 %1469, 5
  store i64 %1470, i64* %PC
  %1471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1472 = load i64, i64* %1471, align 8, !tbaa !2428
  %1473 = add i64 %1472, -8
  %1474 = inttoptr i64 %1473 to i64*
  store i64 %1468, i64* %1474
  store i64 %1473, i64* %1471, align 8, !tbaa !2428
  %1475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1466, i64* %1475, align 8, !tbaa !2428
  %1476 = load i64, i64* %PC
  %1477 = call %struct.Memory* @ext_6020d8_strlen(%struct.State* %0, i64 %1476, %struct.Memory* %961)
  %1478 = load i64, i64* %PC
  %1479 = add i64 %1478, 8
  store i64 %1479, i64* %PC
  %1480 = load i32, i32* bitcast (%reg_len_type* @reg_len to i32*)
  %1481 = sext i32 %1480 to i64
  store i64 %1481, i64* %RDI, align 8, !tbaa !2428
  %1482 = load i64, i64* %RAX
  %1483 = load i64, i64* %RDI
  %1484 = load i64, i64* %PC
  %1485 = add i64 %1484, 3
  store i64 %1485, i64* %PC
  %1486 = sub i64 %1482, %1483
  %1487 = icmp ult i64 %1482, %1483
  %1488 = zext i1 %1487 to i8
  %1489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1488, i8* %1489, align 1, !tbaa !2432
  %1490 = trunc i64 %1486 to i32
  %1491 = and i32 %1490, 255
  %1492 = call i32 @llvm.ctpop.i32(i32 %1491) #16
  %1493 = trunc i32 %1492 to i8
  %1494 = and i8 %1493, 1
  %1495 = xor i8 %1494, 1
  %1496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1495, i8* %1496, align 1, !tbaa !2446
  %1497 = xor i64 %1483, %1482
  %1498 = xor i64 %1497, %1486
  %1499 = lshr i64 %1498, 4
  %1500 = trunc i64 %1499 to i8
  %1501 = and i8 %1500, 1
  %1502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1501, i8* %1502, align 1, !tbaa !2447
  %1503 = icmp eq i64 %1486, 0
  %1504 = zext i1 %1503 to i8
  %1505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1504, i8* %1505, align 1, !tbaa !2448
  %1506 = lshr i64 %1486, 63
  %1507 = trunc i64 %1506 to i8
  %1508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1507, i8* %1508, align 1, !tbaa !2449
  %1509 = lshr i64 %1482, 63
  %1510 = lshr i64 %1483, 63
  %1511 = xor i64 %1510, %1509
  %1512 = xor i64 %1506, %1509
  %1513 = add nuw nsw i64 %1512, %1511
  %1514 = icmp eq i64 %1513, 2
  %1515 = zext i1 %1514 to i8
  %1516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1515, i8* %1516, align 1, !tbaa !2450
  %1517 = load i64, i64* %PC
  %1518 = add i64 %1517, 41
  %1519 = load i64, i64* %PC
  %1520 = add i64 %1519, 6
  %1521 = load i64, i64* %PC
  %1522 = add i64 %1521, 6
  store i64 %1522, i64* %PC
  %1523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1524 = load i8, i8* %1523, align 1, !tbaa !2448
  store i8 %1524, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1526 = icmp ne i8 %1524, 0
  %1527 = select i1 %1526, i64 %1518, i64 %1520
  store i64 %1527, i64* %1525, align 8, !tbaa !2428
  %1528 = load i8, i8* %BRANCH_TAKEN
  %1529 = icmp eq i8 %1528, 1
  br i1 %1529, label %block_400998, label %block_400975

block_400935:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %MEMORY.6 = phi %struct.Memory* [ %1619, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit ], [ %961, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit ]
  %1530 = load i64, i64* %PC
  %1531 = add i64 %1530, 10
  store i64 %1531, i64* %PC
  store i64 add (i64 ptrtoint (%seg_401080__rodata_type* @seg_401080__rodata to i64), i64 74), i64* %RDI, align 8, !tbaa !2428
  %1532 = load i64, i64* %PC
  %1533 = add i64 %1532, 2
  store i64 %1533, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %1534 = load i64, i64* %PC
  %1535 = sub i64 %1534, 817
  %1536 = load i64, i64* %PC
  %1537 = add i64 %1536, 5
  %1538 = load i64, i64* %PC
  %1539 = add i64 %1538, 5
  store i64 %1539, i64* %PC
  %1540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1541 = load i64, i64* %1540, align 8, !tbaa !2428
  %1542 = add i64 %1541, -8
  %1543 = inttoptr i64 %1542 to i64*
  store i64 %1537, i64* %1543
  store i64 %1542, i64* %1540, align 8, !tbaa !2428
  %1544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1535, i64* %1544, align 8, !tbaa !2428
  %1545 = load i64, i64* %PC
  %1546 = call %struct.Memory* @ext_602090_printf(%struct.State* %0, i64 %1545, %struct.Memory* %MEMORY.6)
  %1547 = load i64, i64* %RBP
  %1548 = sub i64 %1547, 12
  %1549 = load i64, i64* %PC
  %1550 = add i64 %1549, 7
  store i64 %1550, i64* %PC
  %1551 = inttoptr i64 %1548 to i32*
  store i32 3, i32* %1551
  %1552 = load i64, i64* %RBP
  %1553 = sub i64 %1552, 212
  %1554 = load i32, i32* %EAX
  %1555 = zext i32 %1554 to i64
  %1556 = load i64, i64* %PC
  %1557 = add i64 %1556, 6
  store i64 %1557, i64* %PC
  %1558 = inttoptr i64 %1553 to i32*
  store i32 %1554, i32* %1558
  %1559 = load i64, i64* %PC
  %1560 = add i64 %1559, 434
  %1561 = load i64, i64* %PC
  %1562 = add i64 %1561, 5
  store i64 %1562, i64* %PC
  %1563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1560, i64* %1563, align 8, !tbaa !2428
  br label %block_400b05

block_400910:                                     ; preds = %block_4008da
  %1564 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1565 = load i64, i64* %PC
  %1566 = add i64 %1565, 8
  store i64 %1566, i64* %PC
  %1567 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401080__rodata_type* @seg_401080__rodata to i64), i64 16) to double*)
  %1568 = bitcast i8* %1564 to double*
  store double %1567, double* %1568, align 1, !tbaa !2453
  %1569 = getelementptr inbounds i8, i8* %1564, i64 8
  %1570 = bitcast i8* %1569 to double*
  store double 0.000000e+00, double* %1570, align 1, !tbaa !2453
  %1571 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1572 = load i64, i64* %RBP
  %1573 = sub i64 %1572, 64
  %1574 = load i64, i64* %PC
  %1575 = add i64 %1574, 5
  store i64 %1575, i64* %PC
  %1576 = inttoptr i64 %1573 to double*
  %1577 = load double, double* %1576
  %1578 = bitcast i8* %1571 to double*
  store double %1577, double* %1578, align 1, !tbaa !2453
  %1579 = getelementptr inbounds i8, i8* %1571, i64 8
  %1580 = bitcast i8* %1579 to double*
  store double 0.000000e+00, double* %1580, align 1, !tbaa !2453
  %1581 = bitcast %union.vec128_t* %XMM1 to i8*
  %1582 = bitcast %union.vec128_t* %XMM0 to i8*
  %1583 = load i64, i64* %PC
  %1584 = add i64 %1583, 4
  store i64 %1584, i64* %PC
  %1585 = bitcast i8* %1581 to double*
  %1586 = load double, double* %1585, align 1
  %1587 = bitcast i8* %1582 to double*
  %1588 = load double, double* %1587, align 1
  %1589 = fcmp uno double %1586, %1588
  br i1 %1589, label %1590, label %1602

; <label>:1590:                                   ; preds = %block_400910
  %1591 = fadd double %1586, %1588
  %1592 = bitcast double %1591 to i64
  %1593 = and i64 %1592, 9221120237041090560
  %1594 = icmp eq i64 %1593, 9218868437227405312
  %1595 = and i64 %1592, 2251799813685247
  %1596 = icmp ne i64 %1595, 0
  %1597 = and i1 %1594, %1596
  br i1 %1597, label %1598, label %1608

; <label>:1598:                                   ; preds = %1590
  %1599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1600 = load i64, i64* %1599, align 8, !tbaa !2428
  %1601 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1600, %struct.Memory* %MEMORY.7) #17
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:1602:                                   ; preds = %block_400910
  %1603 = fcmp ogt double %1586, %1588
  br i1 %1603, label %1608, label %1604

; <label>:1604:                                   ; preds = %1602
  %1605 = fcmp olt double %1586, %1588
  br i1 %1605, label %1608, label %1606

; <label>:1606:                                   ; preds = %1604
  %1607 = fcmp oeq double %1586, %1588
  br i1 %1607, label %1608, label %1615

; <label>:1608:                                   ; preds = %1606, %1604, %1602, %1590
  %1609 = phi i8 [ 0, %1602 ], [ 0, %1604 ], [ 1, %1606 ], [ 1, %1590 ]
  %1610 = phi i8 [ 0, %1602 ], [ 0, %1604 ], [ 0, %1606 ], [ 1, %1590 ]
  %1611 = phi i8 [ 0, %1602 ], [ 1, %1604 ], [ 0, %1606 ], [ 1, %1590 ]
  %1612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1609, i8* %1612, align 1, !tbaa !2451
  %1613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1610, i8* %1613, align 1, !tbaa !2451
  %1614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1611, i8* %1614, align 1, !tbaa !2451
  br label %1615

; <label>:1615:                                   ; preds = %1608, %1606
  %1616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1616, align 1, !tbaa !2451
  %1617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1617, align 1, !tbaa !2451
  %1618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1618, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %1598, %1615
  %1619 = phi %struct.Memory* [ %1601, %1598 ], [ %MEMORY.7, %1615 ]
  %1620 = load i64, i64* %PC
  %1621 = add i64 %1620, 20
  %1622 = load i64, i64* %PC
  %1623 = add i64 %1622, 6
  %1624 = load i64, i64* %PC
  %1625 = add i64 %1624, 6
  store i64 %1625, i64* %PC
  %1626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1627 = load i8, i8* %1626, align 1, !tbaa !2432
  %1628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1629 = load i8, i8* %1628, align 1, !tbaa !2448
  %1630 = or i8 %1629, %1627
  %1631 = icmp eq i8 %1630, 0
  %1632 = zext i1 %1631 to i8
  store i8 %1632, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1634 = select i1 %1631, i64 %1621, i64 %1623
  store i64 %1634, i64* %1633, align 8, !tbaa !2428
  %1635 = load i8, i8* %BRANCH_TAKEN
  %1636 = icmp eq i8 %1635, 1
  br i1 %1636, label %block_400935, label %block_400927

block_400a7c:                                     ; preds = %block_400a42
  %1637 = load i64, i64* %PC
  %1638 = add i64 %1637, 5
  store i64 %1638, i64* %PC
  %1639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %852, i64* %1639, align 8, !tbaa !2428
  br label %block_400a81

block_400a0d:                                     ; preds = %block_4009cc
  %1640 = load i64, i64* %PC
  %1641 = add i64 %1640, 116
  %1642 = load i64, i64* %PC
  %1643 = add i64 %1642, 5
  store i64 %1643, i64* %PC
  %1644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1641, i64* %1644, align 8, !tbaa !2428
  br label %block_400a81

block_40088c:                                     ; preds = %block_400850
  %1645 = load i64, i64* %RBP
  %1646 = sub i64 %1645, 180
  %1647 = load i64, i64* %PC
  %1648 = add i64 %1647, 9
  store i64 %1648, i64* %PC
  %1649 = inttoptr i64 %1646 to i16*
  store i16 0, i16* %1649
  br label %block_400895

block_4008da:                                     ; preds = %block_40089f, %block_4008d1
  %MEMORY.7 = phi %struct.Memory* [ %MEMORY.4, %block_4008d1 ], [ %1448, %block_40089f ]
  %1650 = load i64, i64* %PC
  %1651 = add i64 %1650, 8
  store i64 %1651, i64* %PC
  %1652 = load i32, i32* bitcast (%reg_len_type* @reg_len to i32*)
  %1653 = sub i32 %1652, 100
  %1654 = icmp ult i32 %1652, 100
  %1655 = zext i1 %1654 to i8
  %1656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1655, i8* %1656, align 1, !tbaa !2432
  %1657 = and i32 %1653, 255
  %1658 = call i32 @llvm.ctpop.i32(i32 %1657) #16
  %1659 = trunc i32 %1658 to i8
  %1660 = and i8 %1659, 1
  %1661 = xor i8 %1660, 1
  %1662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1661, i8* %1662, align 1, !tbaa !2446
  %1663 = xor i32 %1652, 100
  %1664 = xor i32 %1663, %1653
  %1665 = lshr i32 %1664, 4
  %1666 = trunc i32 %1665 to i8
  %1667 = and i8 %1666, 1
  %1668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1667, i8* %1668, align 1, !tbaa !2447
  %1669 = icmp eq i32 %1653, 0
  %1670 = zext i1 %1669 to i8
  %1671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1670, i8* %1671, align 1, !tbaa !2448
  %1672 = lshr i32 %1653, 31
  %1673 = trunc i32 %1672 to i8
  %1674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1673, i8* %1674, align 1, !tbaa !2449
  %1675 = lshr i32 %1652, 31
  %1676 = xor i32 %1672, %1675
  %1677 = add nuw nsw i32 %1676, %1675
  %1678 = icmp eq i32 %1677, 2
  %1679 = zext i1 %1678 to i8
  %1680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1679, i8* %1680, align 1, !tbaa !2450
  %1681 = load i64, i64* %PC
  %1682 = add i64 %1681, 46
  %1683 = load i64, i64* %PC
  %1684 = add i64 %1683, 6
  %1685 = load i64, i64* %PC
  %1686 = add i64 %1685, 6
  store i64 %1686, i64* %PC
  %1687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1688 = load i8, i8* %1687, align 1, !tbaa !2448
  %1689 = icmp ne i8 %1688, 0
  %1690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1691 = load i8, i8* %1690, align 1, !tbaa !2449
  %1692 = icmp ne i8 %1691, 0
  %1693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1694 = load i8, i8* %1693, align 1, !tbaa !2450
  %1695 = icmp ne i8 %1694, 0
  %1696 = xor i1 %1692, %1695
  %1697 = or i1 %1689, %1696
  %1698 = zext i1 %1697 to i8
  store i8 %1698, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1700 = select i1 %1697, i64 %1682, i64 %1684
  store i64 %1700, i64* %1699, align 8, !tbaa !2428
  %1701 = load i8, i8* %BRANCH_TAKEN
  %1702 = icmp eq i8 %1701, 1
  br i1 %1702, label %block_400910, label %block_4008e8

block_400b05:                                     ; preds = %block_400a81, %block_400935, %block_4008e8, %block_400975
  %MEMORY.8 = phi %struct.Memory* [ %1546, %block_400935 ], [ %2019, %block_400a81 ], [ %249, %block_400975 ], [ %285, %block_4008e8 ]
  %1703 = load i64, i64* %RBP
  %1704 = sub i64 %1703, 12
  %1705 = load i64, i64* %PC
  %1706 = add i64 %1705, 3
  store i64 %1706, i64* %PC
  %1707 = inttoptr i64 %1704 to i32*
  %1708 = load i32, i32* %1707
  %1709 = zext i32 %1708 to i64
  store i64 %1709, i64* %RAX, align 8, !tbaa !2428
  %1710 = load i64, i64* %RSP
  %1711 = load i64, i64* %PC
  %1712 = add i64 %1711, 7
  store i64 %1712, i64* %PC
  %1713 = add i64 248, %1710
  store i64 %1713, i64* %RSP, align 8, !tbaa !2428
  %1714 = icmp ult i64 %1713, %1710
  %1715 = icmp ult i64 %1713, 248
  %1716 = or i1 %1714, %1715
  %1717 = zext i1 %1716 to i8
  %1718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1717, i8* %1718, align 1, !tbaa !2432
  %1719 = trunc i64 %1713 to i32
  %1720 = and i32 %1719, 255
  %1721 = call i32 @llvm.ctpop.i32(i32 %1720) #16
  %1722 = trunc i32 %1721 to i8
  %1723 = and i8 %1722, 1
  %1724 = xor i8 %1723, 1
  %1725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1724, i8* %1725, align 1, !tbaa !2446
  %1726 = xor i64 248, %1710
  %1727 = xor i64 %1726, %1713
  %1728 = lshr i64 %1727, 4
  %1729 = trunc i64 %1728 to i8
  %1730 = and i8 %1729, 1
  %1731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1730, i8* %1731, align 1, !tbaa !2447
  %1732 = icmp eq i64 %1713, 0
  %1733 = zext i1 %1732 to i8
  %1734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1733, i8* %1734, align 1, !tbaa !2448
  %1735 = lshr i64 %1713, 63
  %1736 = trunc i64 %1735 to i8
  %1737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1736, i8* %1737, align 1, !tbaa !2449
  %1738 = lshr i64 %1710, 63
  %1739 = xor i64 %1735, %1738
  %1740 = add nuw nsw i64 %1739, %1735
  %1741 = icmp eq i64 %1740, 2
  %1742 = zext i1 %1741 to i8
  %1743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1742, i8* %1743, align 1, !tbaa !2450
  %1744 = load i64, i64* %PC
  %1745 = add i64 %1744, 1
  store i64 %1745, i64* %PC
  %1746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1747 = load i64, i64* %1746, align 8, !tbaa !2428
  %1748 = add i64 %1747, 8
  %1749 = inttoptr i64 %1747 to i64*
  %1750 = load i64, i64* %1749
  store i64 %1750, i64* %RBX, align 8, !tbaa !2428
  store i64 %1748, i64* %1746, align 8, !tbaa !2428
  %1751 = load i64, i64* %PC
  %1752 = add i64 %1751, 1
  store i64 %1752, i64* %PC
  %1753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1754 = load i64, i64* %1753, align 8, !tbaa !2428
  %1755 = add i64 %1754, 8
  %1756 = inttoptr i64 %1754 to i64*
  %1757 = load i64, i64* %1756
  store i64 %1757, i64* %RBP, align 8, !tbaa !2428
  store i64 %1755, i64* %1753, align 8, !tbaa !2428
  %1758 = load i64, i64* %PC
  %1759 = add i64 %1758, 1
  store i64 %1759, i64* %PC
  %1760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1762 = load i64, i64* %1761, align 8, !tbaa !2428
  %1763 = inttoptr i64 %1762 to i64*
  %1764 = load i64, i64* %1763
  store i64 %1764, i64* %1760, align 8, !tbaa !2428
  %1765 = add i64 %1762, 8
  store i64 %1765, i64* %1761, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.8

block_400a12:                                     ; preds = %block_400998
  %1766 = sub i64 %1266, 40
  %1767 = load i64, i64* %PC
  %1768 = add i64 %1767, 4
  store i64 %1768, i64* %PC
  store i64 %1766, i64* %RDI, align 8, !tbaa !2428
  %1769 = load i64, i64* %PC
  %1770 = add i64 %1769, 426
  %1771 = load i64, i64* %PC
  %1772 = add i64 %1771, 5
  %1773 = load i64, i64* %PC
  %1774 = add i64 %1773, 5
  store i64 %1774, i64* %PC
  %1775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1776 = load i64, i64* %1775, align 8, !tbaa !2428
  %1777 = add i64 %1776, -8
  %1778 = inttoptr i64 %1777 to i64*
  store i64 %1772, i64* %1778
  store i64 %1777, i64* %1775, align 8, !tbaa !2428
  %1779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1770, i64* %1779, align 8, !tbaa !2428
  %1780 = load i64, i64* %PC
  %1781 = call %struct.Memory* @sub_400bc0_init_renamed_(%struct.State* %0, i64 %1780, %struct.Memory* %1221)
  %1782 = load i64, i64* %PC
  %1783 = add i64 %1782, 5
  store i64 %1783, i64* %PC
  store i64 10000, i64* %RDI, align 8, !tbaa !2428
  %1784 = load i64, i64* %RBP
  %1785 = sub i64 %1784, 40
  %1786 = load i64, i64* %PC
  %1787 = add i64 %1786, 4
  store i64 %1787, i64* %PC
  store i64 %1785, i64* %RSI, align 8, !tbaa !2428
  %1788 = load i64, i64* %RBP
  %1789 = sub i64 %1788, 176
  %1790 = load i64, i64* %PC
  %1791 = add i64 %1790, 7
  store i64 %1791, i64* %PC
  store i64 %1789, i64* %RDX, align 8, !tbaa !2428
  %1792 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1793 = load i64, i64* %RBP
  %1794 = sub i64 %1793, 64
  %1795 = load i64, i64* %PC
  %1796 = add i64 %1795, 5
  store i64 %1796, i64* %PC
  %1797 = inttoptr i64 %1794 to double*
  %1798 = load double, double* %1797
  %1799 = bitcast i8* %1792 to double*
  store double %1798, double* %1799, align 1, !tbaa !2453
  %1800 = getelementptr inbounds i8, i8* %1792, i64 8
  %1801 = bitcast i8* %1800 to double*
  store double 0.000000e+00, double* %1801, align 1, !tbaa !2453
  %1802 = load i64, i64* %PC
  %1803 = add i64 %1802, 464
  %1804 = load i64, i64* %PC
  %1805 = add i64 %1804, 5
  %1806 = load i64, i64* %PC
  %1807 = add i64 %1806, 5
  store i64 %1807, i64* %PC
  %1808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1809 = load i64, i64* %1808, align 8, !tbaa !2428
  %1810 = add i64 %1809, -8
  %1811 = inttoptr i64 %1810 to i64*
  store i64 %1805, i64* %1811
  store i64 %1810, i64* %1808, align 8, !tbaa !2428
  %1812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1803, i64* %1812, align 8, !tbaa !2428
  %1813 = load i64, i64* %PC
  %1814 = call %struct.Memory* @sub_400c00_simulate_renamed_(%struct.State* %0, i64 %1813, %struct.Memory* %1781)
  %1815 = load i64, i64* %RBP
  %1816 = sub i64 %1815, 56
  %1817 = load i64, i64* %PC
  %1818 = add i64 %1817, 7
  store i64 %1818, i64* %PC
  %1819 = inttoptr i64 %1816 to i32*
  store i32 0, i32* %1819
  %1820 = load i64, i64* %RBP
  %1821 = sub i64 %1820, 228
  %1822 = load i32, i32* %EAX
  %1823 = zext i32 %1822 to i64
  %1824 = load i64, i64* %PC
  %1825 = add i64 %1824, 6
  store i64 %1825, i64* %PC
  %1826 = inttoptr i64 %1821 to i32*
  store i32 %1822, i32* %1826
  br label %block_400a42

block_400a81:                                     ; preds = %block_400a0d, %block_400a7c
  %MEMORY.9 = phi %struct.Memory* [ %MEMORY.3, %block_400a7c ], [ %MEMORY.2, %block_400a0d ]
  %1827 = load i64, i64* %PC
  %1828 = add i64 %1827, 10
  store i64 %1828, i64* %PC
  store i64 add (i64 ptrtoint (%seg_401080__rodata_type* @seg_401080__rodata to i64), i64 148), i64* %RDI, align 8, !tbaa !2428
  %1829 = load i64, i64* %PC
  %1830 = add i64 %1829, 2
  store i64 %1830, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %1831 = load i64, i64* %PC
  %1832 = sub i64 %1831, 1149
  %1833 = load i64, i64* %PC
  %1834 = add i64 %1833, 5
  %1835 = load i64, i64* %PC
  %1836 = add i64 %1835, 5
  store i64 %1836, i64* %PC
  %1837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1838 = load i64, i64* %1837, align 8, !tbaa !2428
  %1839 = add i64 %1838, -8
  %1840 = inttoptr i64 %1839 to i64*
  store i64 %1834, i64* %1840
  store i64 %1839, i64* %1837, align 8, !tbaa !2428
  %1841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1832, i64* %1841, align 8, !tbaa !2428
  %1842 = load i64, i64* %PC
  %1843 = call %struct.Memory* @ext_602090_printf(%struct.State* %0, i64 %1842, %struct.Memory* %MEMORY.9)
  %1844 = load i64, i64* %PC
  %1845 = add i64 %1844, 10
  store i64 %1845, i64* %PC
  store i64 add (i64 ptrtoint (%seg_401080__rodata_type* @seg_401080__rodata to i64), i64 223), i64* %RDI, align 8, !tbaa !2428
  %1846 = load i64, i64* %RBP
  %1847 = sub i64 %1846, 176
  %1848 = load i64, i64* %PC
  %1849 = add i64 %1848, 7
  store i64 %1849, i64* %PC
  store i64 %1847, i64* %R8, align 8, !tbaa !2428
  %1850 = load i64, i64* %PC
  %1851 = add i64 %1850, 7
  store i64 %1851, i64* %PC
  %1852 = load i32, i32* bitcast (%reg_len_type* @reg_len to i32*)
  %1853 = zext i32 %1852 to i64
  store i64 %1853, i64* %RSI, align 8, !tbaa !2428
  %1854 = load i64, i64* %RBP
  %1855 = sub i64 %1854, 44
  %1856 = load i64, i64* %PC
  %1857 = add i64 %1856, 3
  store i64 %1857, i64* %PC
  %1858 = inttoptr i64 %1855 to i32*
  %1859 = load i32, i32* %1858
  %1860 = zext i32 %1859 to i64
  store i64 %1860, i64* %RDX, align 8, !tbaa !2428
  %1861 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1862 = load i64, i64* %RBP
  %1863 = sub i64 %1862, 64
  %1864 = load i64, i64* %PC
  %1865 = add i64 %1864, 5
  store i64 %1865, i64* %PC
  %1866 = inttoptr i64 %1863 to double*
  %1867 = load double, double* %1866
  %1868 = bitcast i8* %1861 to double*
  store double %1867, double* %1868, align 1, !tbaa !2453
  %1869 = getelementptr inbounds i8, i8* %1861, i64 8
  %1870 = bitcast i8* %1869 to double*
  store double 0.000000e+00, double* %1870, align 1, !tbaa !2453
  %1871 = load i64, i64* %RBP
  %1872 = sub i64 %1871, 48
  %1873 = load i64, i64* %PC
  %1874 = add i64 %1873, 3
  store i64 %1874, i64* %PC
  %1875 = inttoptr i64 %1872 to i32*
  %1876 = load i32, i32* %1875
  %1877 = zext i32 %1876 to i64
  store i64 %1877, i64* %RCX, align 8, !tbaa !2428
  %1878 = bitcast i32* %R9D to i64*
  %1879 = load i64, i64* %RBP
  %1880 = sub i64 %1879, 182
  %1881 = load i64, i64* %PC
  %1882 = add i64 %1881, 8
  store i64 %1882, i64* %PC
  %1883 = inttoptr i64 %1880 to i16*
  %1884 = load i16, i16* %1883
  %1885 = zext i16 %1884 to i64
  store i64 %1885, i64* %1878, align 8, !tbaa !2428
  %1886 = bitcast i32* %R10D to i64*
  %1887 = load i64, i64* %RBP
  %1888 = sub i64 %1887, 180
  %1889 = load i64, i64* %PC
  %1890 = add i64 %1889, 8
  store i64 %1890, i64* %PC
  %1891 = inttoptr i64 %1888 to i16*
  %1892 = load i16, i16* %1891
  %1893 = zext i16 %1892 to i64
  store i64 %1893, i64* %1886, align 8, !tbaa !2428
  %1894 = bitcast i32* %R11D to i64*
  %1895 = load i64, i64* %RBP
  %1896 = sub i64 %1895, 178
  %1897 = load i64, i64* %PC
  %1898 = add i64 %1897, 8
  store i64 %1898, i64* %PC
  %1899 = inttoptr i64 %1896 to i16*
  %1900 = load i16, i16* %1899
  %1901 = zext i16 %1900 to i64
  store i64 %1901, i64* %1894, align 8, !tbaa !2428
  %1902 = load i64, i64* %RBP
  %1903 = sub i64 %1902, 48
  %1904 = load i64, i64* %PC
  %1905 = add i64 %1904, 3
  store i64 %1905, i64* %PC
  %1906 = inttoptr i64 %1903 to i32*
  %1907 = load i32, i32* %1906
  %1908 = zext i32 %1907 to i64
  store i64 %1908, i64* %RBX, align 8, !tbaa !2428
  %1909 = load i64, i64* %RBX
  %1910 = load i64, i64* %RBP
  %1911 = sub i64 %1910, 52
  %1912 = load i64, i64* %PC
  %1913 = add i64 %1912, 3
  store i64 %1913, i64* %PC
  %1914 = trunc i64 %1909 to i32
  %1915 = inttoptr i64 %1911 to i32*
  %1916 = load i32, i32* %1915
  %1917 = sub i32 %1914, %1916
  %1918 = zext i32 %1917 to i64
  store i64 %1918, i64* %RBX, align 8, !tbaa !2428
  %1919 = icmp ult i32 %1914, %1916
  %1920 = zext i1 %1919 to i8
  %1921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1920, i8* %1921, align 1, !tbaa !2432
  %1922 = and i32 %1917, 255
  %1923 = call i32 @llvm.ctpop.i32(i32 %1922) #16
  %1924 = trunc i32 %1923 to i8
  %1925 = and i8 %1924, 1
  %1926 = xor i8 %1925, 1
  %1927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1926, i8* %1927, align 1, !tbaa !2446
  %1928 = xor i32 %1916, %1914
  %1929 = xor i32 %1928, %1917
  %1930 = lshr i32 %1929, 4
  %1931 = trunc i32 %1930 to i8
  %1932 = and i8 %1931, 1
  %1933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1932, i8* %1933, align 1, !tbaa !2447
  %1934 = icmp eq i32 %1917, 0
  %1935 = zext i1 %1934 to i8
  %1936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1935, i8* %1936, align 1, !tbaa !2448
  %1937 = lshr i32 %1917, 31
  %1938 = trunc i32 %1937 to i8
  %1939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1938, i8* %1939, align 1, !tbaa !2449
  %1940 = lshr i32 %1914, 31
  %1941 = lshr i32 %1916, 31
  %1942 = xor i32 %1941, %1940
  %1943 = xor i32 %1937, %1940
  %1944 = add nuw nsw i32 %1943, %1942
  %1945 = icmp eq i32 %1944, 2
  %1946 = zext i1 %1945 to i8
  %1947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1946, i8* %1947, align 1, !tbaa !2450
  %1948 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1949 = load i32, i32* %EBX
  %1950 = zext i32 %1949 to i64
  %1951 = load i64, i64* %PC
  %1952 = add i64 %1951, 4
  store i64 %1952, i64* %PC
  %1953 = sitofp i32 %1949 to double
  %1954 = bitcast i8* %1948 to double*
  store double %1953, double* %1954, align 1, !tbaa !2453
  %1955 = load i64, i64* %RBP
  %1956 = sub i64 %1955, 48
  %1957 = load i64, i64* %PC
  %1958 = add i64 %1957, 3
  store i64 %1958, i64* %PC
  %1959 = inttoptr i64 %1956 to i32*
  %1960 = load i32, i32* %1959
  %1961 = zext i32 %1960 to i64
  store i64 %1961, i64* %RBX, align 8, !tbaa !2428
  %1962 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %1963 = load i32, i32* %EBX
  %1964 = zext i32 %1963 to i64
  %1965 = load i64, i64* %PC
  %1966 = add i64 %1965, 4
  store i64 %1966, i64* %PC
  %1967 = sitofp i32 %1963 to double
  %1968 = bitcast i8* %1962 to double*
  store double %1967, double* %1968, align 1, !tbaa !2453
  %1969 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1970 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1971 = bitcast %union.vec128_t* %XMM2 to i8*
  %1972 = load i64, i64* %PC
  %1973 = add i64 %1972, 4
  store i64 %1973, i64* %PC
  %1974 = bitcast i8* %1970 to double*
  %1975 = load double, double* %1974, align 1
  %1976 = getelementptr inbounds i8, i8* %1970, i64 8
  %1977 = bitcast i8* %1976 to i64*
  %1978 = load i64, i64* %1977, align 1
  %1979 = bitcast i8* %1971 to double*
  %1980 = load double, double* %1979, align 1
  %1981 = fdiv double %1975, %1980
  %1982 = bitcast i8* %1969 to double*
  store double %1981, double* %1982, align 1, !tbaa !2453
  %1983 = getelementptr inbounds i8, i8* %1969, i64 8
  %1984 = bitcast i8* %1983 to i64*
  store i64 %1978, i64* %1984, align 1, !tbaa !2453
  %1985 = load i64, i64* %RSP
  %1986 = load i32, i32* %R10D
  %1987 = zext i32 %1986 to i64
  %1988 = load i64, i64* %PC
  %1989 = add i64 %1988, 4
  store i64 %1989, i64* %PC
  %1990 = inttoptr i64 %1985 to i32*
  store i32 %1986, i32* %1990
  %1991 = load i64, i64* %RSP
  %1992 = add i64 %1991, 8
  %1993 = load i32, i32* %R11D
  %1994 = zext i32 %1993 to i64
  %1995 = load i64, i64* %PC
  %1996 = add i64 %1995, 5
  store i64 %1996, i64* %PC
  %1997 = inttoptr i64 %1992 to i32*
  store i32 %1993, i32* %1997
  %1998 = load i64, i64* %RBP
  %1999 = sub i64 %1998, 232
  %2000 = load i32, i32* %EAX
  %2001 = zext i32 %2000 to i64
  %2002 = load i64, i64* %PC
  %2003 = add i64 %2002, 6
  store i64 %2003, i64* %PC
  %2004 = inttoptr i64 %1999 to i32*
  store i32 %2000, i32* %2004
  %2005 = load i64, i64* %PC
  %2006 = add i64 %2005, 2
  store i64 %2006, i64* %PC
  store i8 2, i8* %AL, align 1, !tbaa !2451
  %2007 = load i64, i64* %PC
  %2008 = sub i64 %2007, 1251
  %2009 = load i64, i64* %PC
  %2010 = add i64 %2009, 5
  %2011 = load i64, i64* %PC
  %2012 = add i64 %2011, 5
  store i64 %2012, i64* %PC
  %2013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2014 = load i64, i64* %2013, align 8, !tbaa !2428
  %2015 = add i64 %2014, -8
  %2016 = inttoptr i64 %2015 to i64*
  store i64 %2010, i64* %2016
  store i64 %2015, i64* %2013, align 8, !tbaa !2428
  %2017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2008, i64* %2017, align 8, !tbaa !2428
  %2018 = load i64, i64* %PC
  %2019 = call %struct.Memory* @ext_602090_printf(%struct.State* %0, i64 %2018, %struct.Memory* %1843)
  %2020 = load i64, i64* %RBP
  %2021 = sub i64 %2020, 12
  %2022 = load i64, i64* %PC
  %2023 = add i64 %2022, 7
  store i64 %2023, i64* %PC
  %2024 = inttoptr i64 %2021 to i32*
  store i32 0, i32* %2024
  %2025 = load i64, i64* %RBP
  %2026 = sub i64 %2025, 236
  %2027 = load i32, i32* %EAX
  %2028 = zext i32 %2027 to i64
  %2029 = load i64, i64* %PC
  %2030 = add i64 %2029, 6
  store i64 %2030, i64* %PC
  %2031 = inttoptr i64 %2026 to i32*
  store i32 %2027, i32* %2031
  br label %block_400b05
}

; Function Attrs: noinline
define %struct.Memory* @sub_400720___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400720:
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
  store i8 %43, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %45 = select i1 %42, i64 %35, i64 %37
  store i64 %45, i64* %44, align 8, !tbaa !2428
  %46 = load i8, i8* %BRANCH_TAKEN
  %47 = icmp eq i8 %46, 1
  br i1 %47, label %block_400740, label %block_400729

block_400740:                                     ; preds = %block_400720
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

block_400729:                                     ; preds = %block_400720
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
  %78 = call %struct.Memory* @sub_4006b0_deregister_tm_clones_renamed_(%struct.State* %0, i64 %77, %struct.Memory* %2)
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
define %struct.Memory* @sub_400750_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  %35 = tail call %struct.Memory* @sub_4006e0_register_tm_clones(%struct.State* %0, i64 %34, %struct.Memory* %2)
  ret %struct.Memory* %35
}

; Function Attrs: noinline
define %struct.Memory* @sub_4005b0__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4005b0:
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
  br i1 %80, label %block_4005c2, label %block_4005c0

block_4005c0:                                     ; preds = %block_4005b0
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
  br label %block_4005c2

block_4005c2:                                     ; preds = %block_4005c0, %block_4005b0
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4005b0 ], [ %92, %block_4005c0 ]
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
define %struct.Memory* @sub_400bc0_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400bc0:
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
  br label %block_400bc8

block_400bd7:                                     ; preds = %block_400bc8
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
  br label %block_400bc8

block_400bf5:                                     ; preds = %block_400bc8
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

block_400bc8:                                     ; preds = %block_400bd7, %block_400bc0
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400bc0 ], [ %MEMORY.0, %block_400bd7 ]
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
  store i8 %143, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %145 = icmp ne i8 %143, 0
  %146 = select i1 %145, i64 %137, i64 %139
  store i64 %146, i64* %144, align 8, !tbaa !2428
  %147 = load i8, i8* %BRANCH_TAKEN
  %148 = icmp eq i8 %147, 1
  br i1 %148, label %block_400bf5, label %block_400bd7
}

; Function Attrs: noinline
define %struct.Memory* @sub_401074__term_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_401074:
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
declare void @__mcsema_attach_call() #13

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400750_frame_dummy() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400750;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @1, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_400750_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400750_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400720___do_global_dtors_aux() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400720;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @3, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_400720___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400720___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6020b0_malloc(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6020e8_memset(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_401070___libc_csu_fini() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x401070;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @4, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_401070___libc_csu_fini_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_401070___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_401000___libc_csu_init() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x401000;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @5, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_401000___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_401000___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @main() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400760;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @6, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400760_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6020f0___libc_start_main(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_602078_free(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_400660_lrand48(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 ()* @lrand48 to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_602090_printf(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_400650___isoc99_sscanf(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @__isoc99_sscanf to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_4005f0_strcpy(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @strcpy to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6020f8_seed48(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @seed48 to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6020d8_strlen(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.init_proc() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4005b0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @7, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_4005b0__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.term_proc() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x401074;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @8, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_401074__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @create_link_list() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400b20;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @9, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400b20_create_link_list(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @init() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400bc0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @10, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400bc0_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @simulate() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400c00;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @11, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400c00_simulate(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @kill_list() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400fb0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @12, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400fb0_kill_list(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

define internal void @__mcsema_destructor() {
  call void @callback_sub_401070___libc_csu_fini()
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
  call void @callback_sub_401000___libc_csu_init()
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
