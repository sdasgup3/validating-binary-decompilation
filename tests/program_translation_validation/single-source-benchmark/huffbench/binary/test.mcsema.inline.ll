; ModuleID = 'binary/test.mcsema.calls_renamed.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_4005d8__init_type = type <{ [23 x i8] }>
%seg_4005f0__plt_type = type <{ [128 x i8] }>
%seg_400670__text_type = type <{ [4066 x i8] }>
%seg_401654__fini_type = type <{ [9 x i8] }>
%seg_401660__rodata_type = type <{ [4 x i8], [33 x i8], [26 x i8], [33 x i8], [23 x i8], [7 x i8], [35 x i8] }>
%seg_401704__eh_frame_hdr_type = type <{ [92 x i8] }>
%seg_401760__eh_frame_type = type <{ [368 x i8] }>
%seg_601de0__init_array_type = type <{ i64, i64 }>
%seg_601ff0__got_type = type <{ i64, i64 }>
%seg_602000__got_plt_type = type <{ [24 x i8], i64, i64, i64, i64, i64, i64, i64 }>
%seg_602050__data_type = type <{ [16 x i8], [8 x i8] }>
%seg_602080__bss_type = type <{ [32 x i8], [8 x i8], [8 x i8] }>
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
@stdout = external global i64, align 128
@seg_4005d8__init = internal constant %seg_4005d8__init_type <{ [23 x i8] c"H\83\EC\08H\8B\05\15\1A \00H\85\C0t\02\FF\D0H\83\C4\08\C3" }>
@seg_4005f0__plt = internal constant %seg_4005f0__plt_type <{ [128 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF%\12\1A \00\00\00\00\00\00\00\00\00\00\00\FF%\0A\1A \00\00\00\00\00\00\00\00\00\00\00\FF%\02\1A \00\00\00\00\00\00\00\00\00\00\00\FF%\FA\19 \00\00\00\00\00\00\00\00\00\00\00\FF%\F2\19 \00\00\00\00\00\00\00\00\00\00\00\FF%\EA\19 \00\00\00\00\00\00\00\00\00\00\00\FF%\E2\19 \00\00\00\00\00\00\00\00\00\00\00" }>
@seg_400670__text = internal constant %seg_400670__text_type <{ [4066 x i8] c"1\EDI\89\D1^H\89\E2H\83\E4\F0PTI\C7\C0P\16@\00H\C7\C1\E0\15@\00H\C7\C7\B0\14@\00\FF\15V\19 \00\F4\0F\1FD\00\00\F3\C3f.\0F\1F\84\00\00\00\00\00\0F\1F@\00U\B8h `\00H=h `\00H\89\E5t\17\B8\00\00\00\00H\85\C0t\0D]\BFh `\00\FF\E0\0F\1FD\00\00]\C3f\0F\1FD\00\00\BEh `\00UH\81\EEh `\00H\89\E5H\C1\FE\03H\89\F0H\C1\E8?H\01\C6H\D1\FEt\15\B8\00\00\00\00H\85\C0t\0B]\BFh `\00\FF\E0\0F\1F\00]\C3f\0F\1FD\00\00\80=\81\19 \00\00u\17UH\89\E5\E8~\FF\FF\FF\C6\05o\19 \00\01]\C3\0F\1FD\00\00\F3\C3\0F\1F@\00f.\0F\1F\84\00\00\00\00\00UH\89\E5]\EB\89f\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC0H\B8d\16@\00\00\00\00\00H\89}\F8H\89E\F0H\8B}\F8\E8\BD\FE\FF\FFH\89E\E8H\8BE\E8H\89E\E0\C7E\DC\00\00\00\00HcE\DCH;E\F8\0F\834\00\00\00H\8BE\F0H\89E\D0\E8?\00\00\00H\8BM\D0\8A\14\01H\8BE\E0\88\10H\8BE\E0H\83\C0\01H\89E\E0\8BE\DC\83\C0\01\89E\DC\E9\BE\FF\FF\FFH\8BE\E8H\83\C40]\C3fffff.\0F\1F\84\00\00\00\00\00UH\89\E5\B8\1D\F3\01\00\89\C1H\8B\14%` `\00H\81\F2$\D9[\07H\89\14%` `\00H\8B\04%` `\00H\99H\F7\F9H\89E\F8H\8B\04%` `\00HiM\F8\1D\F3\01\00H)\C8Hi\C0\A7A\00\00HiM\F8\14\0B\00\00H)\C8H\89\04%` `\00H\83<%` `\00\00\0F\8D\16\00\00\00H\8B\04%` `\00H\05\FF\FF\FF\7FH\89\04%` `\00\B8 \00\00\00\89\C1H\8B\04%` `\00H\99H\F7\F9H\89U\F0H\8B\0C%` `\00H\81\F1$\D9[\07H\89\0C%` `\00H\8BM\F0H\89\C8]\C3\0F\1F\00UH\89\E5AWAVSH\81\EC\183\00\00H\89}\E0H\89u\D8H\8Bu\E0H\89u\90H\8Bu\D8H\83\C6\01H\89\F7\E8`\FD\FF\FF1\C9\BA\00\01\00\00H\8D\BD\80\D6\FF\FFA\B8\00\08\00\00D\89\C6L\8D\8D\80\D7\FF\FFL\8D\95\80\DF\FF\FFL\8D\9D\80\E7\FF\FFA\B8\00\10\00\00D\89\C3L\8D\B5\80\EF\FF\FFH\89E\88H\8BE\88L\8B}\D8I\83\C7\01I\C1\E7\00H\89\BD0\CD\FF\FFH\89\C7H\89\B5(\CD\FF\FF\89\CEH\89\95 \CD\FF\FFL\89\FAL\89\B5\18\CD\FF\FF\89\8D\14\CD\FF\FFL\89\95\08\CD\FF\FFL\89\9D\00\CD\FF\FFH\89\9D\F8\CC\FF\FFL\89\8D\F0\CC\FF\FF\E8\95\FC\FF\FFH\8B\85\18\CD\FF\FFH\89\C7\8B\B5\14\CD\FF\FFH\8B\95\F8\CC\FF\FF\E8y\FC\FF\FFH\8B\85\00\CD\FF\FFH\89\C7\8B\B5\14\CD\FF\FFH\8B\95(\CD\FF\FF\E8]\FC\FF\FFH\8B\85\08\CD\FF\FFH\89\C7\8B\B5\14\CD\FF\FFH\8B\95(\CD\FF\FF\E8A\FC\FF\FFH\8B\85\F0\CC\FF\FFH\89\C7\8B\B5\14\CD\FF\FFH\8B\95(\CD\FF\FF\E8%\FC\FF\FFH\8B\BD0\CD\FF\FF\8B\B5\14\CD\FF\FFH\8B\95 \CD\FF\FF\E8\0C\FC\FF\FFH\C7E\D0\00\00\00\00H\8BE\D0H;E\D8\0F\83:\00\00\00H\8BE\90\0F\B6\08\89\C8H\8B\94\C5\80\EF\FF\FFH\83\C2\01H\89\94\C5\80\EF\FF\FFH\8BE\90H\83\C0\01H\89E\90H\8BE\D0H\83\C0\01H\89E\D0\E9\B8\FF\FF\FFH\C7E\C0\00\00\00\00H\C7E\D0\00\00\00\00H\81}\D0\00\01\00\00\0F\83E\00\00\00H\8BE\D0H\83\BC\C5\80\EF\FF\FF\00\0F\84\1C\00\00\00H\8BE\D0H\8BM\C0H\89\84\CD\80\E7\FF\FFH\8BE\C0H\83\C0\01H\89E\C0\E9\00\00\00\00H\8BE\D0H\83\C0\01H\89E\D0\E9\AD\FF\FF\FFH\8BE\C0H\89E\D0H\83}\D0\00\0F\86>\00\00\00H\8D\B5\80\E7\FF\FFH\8D\BD\80\EF\FF\FFH\8BE\C0\89\C1H\8BE\D0\89\C2\89\95\EC\CC\FF\FF\89\CA\8B\8D\EC\CC\FF\FF\E8\B9\08\00\00H\8BE\D0H\83\C0\FFH\89E\D0\E9\B7\FF\FF\FF\E9\00\00\00\00H\83}\C0\01\0F\86\E8\00\00\00\B9\01\00\00\00H\8D\B5\80\E7\FF\FFH\8D\BD\80\EF\FF\FFH\8BE\C0H\83\C0\FFH\89E\C0H\8B\85\80\E7\FF\FFH\89\85x\D6\FF\FFH\8BE\C0H\8B\84\C5\80\E7\FF\FFH\89\85\80\E7\FF\FFH\8BE\C0\89\C2\E8M\08\00\00\B9\01\00\00\00H\8D\B5\80\E7\FF\FFH\8D\BD\80\EF\FF\FFH\C7\C0\00\FF\FF\FFL\8B\85\80\E7\FF\FFN\8B\84\C5\80\EF\FF\FFL\8B\8Dx\D6\FF\FFN\03\84\CD\80\EF\FF\FFL\8BM\C0I\81\C1\00\01\00\00N\89\84\CD\80\EF\FF\FFL\8BE\C0I\81\C0\00\01\00\00D\89\C2L\8B\85x\D6\FF\FFB\89\94\85\80\DF\FF\FFH+E\C0\89\C2H\8B\85\80\E7\FF\FF\89\94\85\80\DF\FF\FFH\8BE\C0H\05\00\01\00\00H\89\85\80\E7\FF\FFH\8BE\C0\89\C2\E8\B5\07\00\00\E9\0D\FF\FF\FFH\8BE\C0H\05\00\01\00\00\C7\84\85\80\DF\FF\FF\00\00\00\00H\C7\85`\D6\FF\FF\00\00\00\00H\C7\85X\D6\FF\FF\00\00\00\00H\C7\85p\D6\FF\FF\00\00\00\00H\81\BDp\D6\FF\FF\00\01\00\00\0F\83`\01\00\00H\8B\85p\D6\FF\FFH\83\BC\C5\80\EF\FF\FF\00\0F\85'\00\00\00H\8B\85p\D6\FF\FFH\C7\84\C5\80\D7\FF\FF\00\00\00\00H\8B\85p\D6\FF\FF\C6\84\05\80\D6\FF\FF\00\E9\07\01\00\00H\C7E\D0\00\00\00\00H\C7E\C8\01\00\00\00H\C7\85h\D6\FF\FF\00\00\00\00H\8B\85p\D6\FF\FF\8B\8C\85\80\DF\FF\FF\89\8DT\D6\FF\FF\83\BDT\D6\FF\FF\00\0F\84^\00\00\00\83\BDT\D6\FF\FF\00\0F\8D \00\00\001\C0H\8BM\C8H\03\8Dh\D6\FF\FFH\89\8Dh\D6\FF\FF+\85T\D6\FF\FF\89\85T\D6\FF\FFHc\85T\D6\FF\FF\8B\8C\85\80\DF\FF\FF\89\8DT\D6\FF\FFH\8BE\C8H\C1\E0\01H\89E\C8H\8BE\D0H\83\C0\01H\89E\D0\E9\95\FF\FF\FFH\8B\85h\D6\FF\FFH\8B\8Dp\D6\FF\FFH\89\84\CD\80\D7\FF\FFH\8BE\D0\88\C2H\8B\85p\D6\FF\FF\88\94\05\80\D6\FF\FFH\8B\85h\D6\FF\FFH;\85`\D6\FF\FF\0F\86\0E\00\00\00H\8B\85h\D6\FF\FFH\89\85`\D6\FF\FFH\8BE\D0H;\85X\D6\FF\FF\0F\86\0B\00\00\00H\8BE\D0H\89\85X\D6\FF\FF\E9\00\00\00\00\E9\00\00\00\00H\8B\85p\D6\FF\FFH\83\C0\01H\89\85p\D6\FF\FF\E9\8F\FE\FF\FFH\83\BDX\D6\FF\FF@\0F\86)\00\00\00H\BE\85\16@\00\00\00\00\00H\8B<%\A0 `\00\B0\00\E8b\F8\FF\FF\BF\01\00\00\00\89\85\E8\CC\FF\FF\E8\82\F8\FF\FFH\C7\85H\D6\FF\FF\00\00\00\00\C6\85G\D6\FF\FF\00\C7\85@\D6\FF\FF\FF\FF\FF\FFH\8BE\E0H\89E\90H\83\BD`\D6\FF\FF\00\0F\85)\00\00\00H\BE\9F\16@\00\00\00\00\00H\8B<%\A0 `\00\B0\00\E8\07\F8\FF\FF\BF\01\00\00\00\89\85\E4\CC\FF\FF\E8'\F8\FF\FFH\C7E\C8\00\00\00\00H\8BE\C8H;E\D8\0F\83[\01\00\00\B8\01\00\00\00H\8BM\90\0F\B6\11\89\D1\0F\B6\94\0D\80\D6\FF\FF\83\EA\01\89\D1\D3\E0Hc\F0H\89u\B8H\C7E\D0\00\00\00\00H\8BE\D0H\8BM\90\0F\B6\11\89\D1\0F\B6\94\0D\80\D6\FF\FF\89\D1H9\C8\0F\83\F2\00\00\00\83\BD@\D6\FF\FF\07\0F\85v\00\00\00\8A\85G\D6\FF\FFH\8BM\88H\8B\95H\D6\FF\FF\88\04\11H\8B\8DH\D6\FF\FFH\83\C1\01H\89\8DH\D6\FF\FFH\8B\8DH\D6\FF\FFH;M\D8\0F\85)\00\00\00H\BE\C0\16@\00\00\00\00\00H\8B<%\A0 `\00\B0\00\E88\F7\FF\FF\BF\01\00\00\00\89\85\E0\CC\FF\FF\E8X\F7\FF\FF\C7\85@\D6\FF\FF\00\00\00\00\C6\85G\D6\FF\FF\00\E9!\00\00\00\8B\85@\D6\FF\FF\83\C0\01\89\85@\D6\FF\FF\0F\BE\85G\D6\FF\FF\C1\E0\01\88\C1\88\8DG\D6\FF\FFH\8BE\90\0F\B6\08\89\C8H\8B\84\C5\80\D7\FF\FFH#E\B8H\83\F8\00\0F\84\12\00\00\00\0F\BE\85G\D6\FF\FF\83\C8\01\88\C1\88\8DG\D6\FF\FFH\8BE\B8H\C1\E8\01H\89E\B8H\8BE\D0H\83\C0\01H\89E\D0\E9\EE\FE\FF\FFH\8BE\90H\83\C0\01H\89E\90H\8BE\C8H\83\C0\01H\89E\C8\E9\97\FE\FF\FFH\8D\85@\CD\FF\FF1\F6\B9\00\08\00\00\89\CAH\8D\BD@\CE\FF\FF\B9\07\00\00\00+\8D@\D6\FF\FFD\0F\BE\85G\D6\FF\FFA\D3\E0D\88\C1\88\8DG\D6\FF\FF\8A\8DG\D6\FF\FFL\8BM\88L\8B\95H\D6\FF\FFC\88\0C\11L\8B\8DH\D6\FF\FFI\83\C1\01L\89\8DH\D6\FF\FFH\89\85\D8\CC\FF\FF\E8\FD\F5\FF\FFH\8B\85\D8\CC\FF\FFH\89\858\CD\FF\FFH\C7E\C8\00\00\00\00H\81}\C8\00\01\00\00\0F\83\0B\01\00\00H\8BE\C8\88\C1H\8B\858\CD\FF\FF\88\08H\8B\858\CD\FF\FFH\83\C0\01H\89\858\CD\FF\FFH\8BE\C8H\8B\84\C5\80\D7\FF\FFH\8BU\C8\0F\B6\B4\15\80\D6\FF\FF\89\F2H\09\D0H\83\F8\00\0F\84\AD\00\00\00\B8\01\00\00\00H\C7E\B0\00\00\00\00H\8BM\C8\0F\B6\94\0D\80\D6\FF\FF\83\EA\01\89\D1\D3\E0Hc\F0H\89u\B8H\C7E\D0\00\00\00\00H\8BE\D0H\8BM\C8\0F\B6\94\0D\80\D6\FF\FF\89\D1H9\C8\0F\83S\00\00\00H\8BE\B0H\C1\E0\01H\83\C0\01H\89E\B0H\8BE\C8H\8B\84\C5\80\D7\FF\FFH#E\B8H\83\F8\00\0F\84\0C\00\00\00H\8BE\B0H\83\C0\01H\89E\B0H\8BE\B8H\C1\E8\01H\89E\B8H\8BE\D0H\83\C0\01H\89E\D0\E9\92\FF\FF\FFH\8BE\B0H\8BM\C8H\89\84\CD@\CE\FF\FF\E9\00\00\00\00H\8BE\C8H\83\C0\01H\89E\C8\E9\E7\FE\FF\FFH\C7E\D0\01\00\00\00H\81}\D0\00\01\00\00\0F\83\E1\00\00\00H\8BE\D0H\8B\84\C5@\CE\FF\FFH\89E\A8H\8BE\D0\8A\8C\05@\CD\FF\FF\88M\A7H\8BE\D0H\89E\C81\C0\88\C1H\83}\C8\00\88\8D\D7\CC\FF\FF\0F\84\1D\00\00\00H\8BE\C8H\83\E8\01H\8B\84\C5@\CE\FF\FFH;E\A8\0F\97\C1\88\8D\D7\CC\FF\FF\8A\85\D7\CC\FF\FF\A8\01\0F\85\05\00\00\00\E9G\00\00\00H\8BE\C8H\83\E8\01H\8B\84\C5@\CE\FF\FFH\8BM\C8H\89\84\CD@\CE\FF\FFH\8BE\C8H\83\E8\01\8A\94\05@\CD\FF\FFH\8BE\C8\88\94\05@\CD\FF\FFH\8BE\C8H\83\C0\FFH\89E\C8\E9t\FF\FF\FFH\8BE\A8H\8BM\C8H\89\84\CD@\CE\FF\FF\8AU\A7H\8BE\C8\88\94\05@\CD\FF\FFH\8BE\D0H\83\C0\01H\89E\D0\E9\11\FF\FF\FFH\C7E\C8\00\00\00\00H\8BE\C8H\83\BC\C5@\CE\FF\FF\00\0F\85\16\00\00\00\E9\00\00\00\00H\8BE\C8H\83\C0\01H\89E\C8\E9\D7\FF\FF\FFH\C7E\B0\00\00\00\00H\8BE\C8H\89E\D0H\C7E\B8\80\00\00\00H\C7E\C0\00\00\00\00H\8BE\88H\89E\98H\8BE\E0H\89E\90H\8BE\C0H;E\D8\0F\83\E3\00\00\00H\8BE\B0H\C1\E0\01H\83\C0\01H\89E\B0H\8BE\98\0F\B6\08\89\C8H#E\B8H\83\F8\00\0F\84\0C\00\00\00H\8BE\B0H\83\C0\01H\89E\B0\E9\00\00\00\00H\8BE\D0H\8B\84\C5@\CE\FF\FFH;E\B0\0F\83\11\00\00\00H\8BE\D0H\83\C0\01H\89E\D0\E9\D9\FF\FF\FFH\8BE\B0H\8BM\D0H;\84\CD@\CE\FF\FF\0F\859\00\00\00H\8BE\D0\8A\8C\05@\CD\FF\FFH\8BE\90\88\08H\8BE\90H\83\C0\01H\89E\90H\8BE\C0H\83\C0\01H\89E\C0H\C7E\B0\00\00\00\00H\8BE\C8H\89E\D0H\83}\B8\01\0F\86\11\00\00\00H\8BE\B8H\C1\E8\01H\89E\B8\E9\14\00\00\00H\C7E\B8\80\00\00\00H\8BE\98H\83\C0\01H\89E\98\E9\0F\FF\FF\FFH\8B}\88\E8l\F2\FF\FFH\81\C4\183\00\00[A^A_]\C3fffff.\0F\1F\84\00\00\00\00\00UH\89\E5H\89}\F8H\89u\F0\89U\EC\89M\E8H\8Bu\F0H\83\C6\F8H\89u\F0H\8Bu\F0Hc}\E8H\8B4\FE\89\F1\89M\E0\B8\02\00\00\00\8BM\E8\8BU\EC\89E\DC\89\D0\99\8Bu\DC\F7\FE9\C1\0F\8F\9F\00\00\00\8BE\E8\03E\E8\89E\E4\8BE\E4;E\EC\0F\8D<\00\00\00H\8BE\F8H\8BM\F0HcU\E4H\8B\0C\D1H\8B\04\C8H\8BM\F8H\8BU\F0\8Bu\E4\83\C6\01Hc\FEH\8B\14\FAH;\04\D1\0F\86\09\00\00\00\8BE\E4\83\C0\01\89E\E4H\8BE\F8HcM\E0H\8B\04\C8H\8BM\F8H\8BU\F0Hcu\E4H\8B\14\F2H;\04\D1\0F\83\05\00\00\00\E9#\00\00\00H\8BE\F0HcM\E4H\8B\04\C8H\8BM\F0HcU\E8H\89\04\D1\8Bu\E4\89u\E8\E9C\FF\FF\FFHcE\E0H\8BM\F0HcU\E8H\89\04\D1]\C3f\90UH\89\E5H\83\EC@\C7E\FC\00\00\00\00\89}\F8H\89u\F0\C6E\EB\00\83}\F8\01\0F\8EQ\00\00\00\C7E\EC\01\00\00\00\8BE\EC;E\F8\0F\8D9\00\00\00H\8BE\F0H\8Bx\08\B9\D7\16@\00\89\CE\E8%\F1\FF\FF\83\F8\00\0F\85\09\00\00\00\C6E\EB\01\E9\13\00\00\00\E9\00\00\00\00\8BE\EC\83\C0\01\89E\EC\E9\BB\FF\FF\FF\E9\00\00\00\00\B8\80\96\98\00\89\C7\E8/\F2\FF\FFH\89E\E0\C7E\EC\00\00\00\00\83}\EC\1E\0F\8D\1E\00\00\00\B8\80\96\98\00\89\C6H\8B}\E0\E8Z\F3\FF\FF\8BE\EC\83\C0\01\89E\EC\E9\D8\FF\FF\FF\0FW\C0\F2\0F\11E\D8H\8B}\E0\E8\8B\F0\FF\FF\F6E\EB\01\0F\84&\00\00\00H\BE\DB\16@\00\00\00\00\00H\8B<%\80 `\00\F2\0F\10E\D8\B0\01\E8\93\F0\FF\FF\89E\D4\E9!\00\00\00H\BE\DE\16@\00\00\00\00\00H\8B<%\80 `\00\F2\0F\10E\D8\B0\01\E8m\F0\FF\FF\89E\D0H\8B<%\80 `\00\E8}\F0\FF\FF1\C9\89E\CC\89\C8H\83\C4@]\C3AWAVI\89\D7AUATL\8D%\EE\07 \00UH\8D-\EE\07 \00SA\89\FDI\89\F6L)\E5H\83\EC\08H\C1\FD\03\E8\C7\EF\FF\FFH\85\EDt 1\DB\0F\1F\84\00\00\00\00\00L\89\FAL\89\F6D\89\EFA\FF\14\DCH\83\C3\01H9\DDu\EAH\83\C4\08[]A\5CA]A^A_\C3\90f.\0F\1F\84\00\00\00\00\00\F3\C3" }>
@seg_401654__fini = internal constant %seg_401654__fini_type <{ [9 x i8] c"H\83\EC\08H\83\C4\08\C3" }>
@seg_401660__rodata = internal constant %seg_401660__rodata_type <{ [4 x i8] c"\01\00\02\00", [33 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZ012345\00", [26 x i8] c"error: bit code overflow\0A\00", [33 x i8] c"error: file has only one value!\0A\00", [23 x i8] c"error: no compression\0A\00", [7 x i8] c"-ga\00%f\00", [35 x i8] c"\0Ahuffbench (Std. C) run time: %f\0A\0A\00" }>
@seg_401704__eh_frame_hdr = internal constant %seg_401704__eh_frame_hdr_type <{ [92 x i8] c"\01\1B\03;X\00\00\00\0A\00\00\00\EC\EE\FF\FF\B4\00\00\00l\EF\FF\FFt\00\00\00\9C\EF\FF\FF\A0\00\00\00\5C\F0\FF\FF\DC\00\00\00\EC\F0\FF\FF\F8\00\00\00\AC\F1\FF\FF\14\01\00\00\AC\FC\FF\FF4\01\00\00\AC\FD\FF\FFP\01\00\00\DC\FE\FF\FFl\01\00\00L\FF\FF\FF\B4\01\00\00" }>
@seg_401760__eh_frame = internal constant %seg_401760__eh_frame_type <{ [368 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00\F0\EE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00\F4\EE\FF\FF\02\00\00\00\00\00\00\00$\00\00\000\00\00\000\EE\FF\FF\80\00\00\00\00\0E\10F\0E\18J\0F\0Bw\08\80\00?\1A;*3$\22\00\00\00\00\18\00\00\00X\00\00\00x\EF\FF\FF\82\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00t\00\00\00\EC\EF\FF\FF\BD\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\1C\00\00\00\90\00\00\00\90\F0\FF\FF\F2\0A\00\00\00A\0E\10\86\02C\0D\06L\83\05\8E\04\8F\03\18\00\00\00\B0\00\00\00p\FB\FF\FF\FE\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\CC\00\00\00T\FC\FF\FF0\01\00\00\00A\0E\10\86\02C\0D\06\00\00\00D\00\00\00\E8\00\00\00h\FD\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\000\01\00\00\90\FD\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@seg_601de0__init_array = internal global %seg_601de0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_400750_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_400720___do_global_dtors_aux to i64) }>
@seg_601ff0__got = internal global %seg_601ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@seg_602000__got_plt = internal global %seg_602000__got_plt_type <{ [24 x i8] zeroinitializer, i64 ptrtoint (i64 (i64)* @free to i64), i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), i64 ptrtoint (i64 (i64)* @malloc to i64), i64 ptrtoint (i64 (i64)* @fflush to i64), i64 ptrtoint (i64 (i64)* @exit to i64) }>
@seg_602050__data = internal global %seg_602050__data_type <{ [16 x i8] zeroinitializer, [8 x i8] c"-\05\00\00\00\00\00\00" }>
@seg_602080__bss = internal global %seg_602080__bss_type zeroinitializer
@0 = internal global i1 false
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400750_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400720___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401650___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4015e0___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @compdecomp_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @generate_test_data_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@10 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_destructor, i8* null }]

declare %struct.Memory* @sub_400760_generate_test_data_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4008b0_compdecomp_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4006b0_deregister_tm_clones_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4005d8__init_proc_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4013b0_heap_adjust_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4007f0_random4_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

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
declare extern_weak x86_64_sysvcc i64 @memset(i64, i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @fflush(i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @free(i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @exit(i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @malloc(i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @strcmp(i64, i64) #13

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
  store i64 ptrtoint (void ()* @callback_sub_401650___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  %108 = load i64, i64* %PC
  %109 = add i64 %108, 7
  store i64 %109, i64* %PC
  store i64 ptrtoint (void ()* @callback_sub_4015e0___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
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
  %123 = call %struct.Memory* @ext_602100___libc_start_main(%struct.State* %0, i64 %122, %struct.Memory* %2)
  %124 = load i64, i64* %PC
  %125 = add i64 %124, 1
  store i64 %125, i64* %PC
  %126 = load i64, i64* %PC
  %127 = tail call %struct.Memory* @__remill_error(%struct.State* %0, i64 %126, %struct.Memory* %123)
  ret %struct.Memory* %127
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
  %60 = xor i64 %56, %59
  %61 = add nuw nsw i64 %60, %59
  %62 = icmp eq i64 %61, 2
  %63 = zext i1 %62 to i8
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %63, i8* %64, align 1, !tbaa !2449
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
  %75 = load i8, i8* %74, align 1, !tbaa !2447
  store i8 %75, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %77 = icmp ne i8 %75, 0
  %78 = select i1 %77, i64 %69, i64 %71
  store i64 %78, i64* %76, align 8, !tbaa !2428
  %79 = load i8, i8* %BRANCH_TAKEN
  %80 = icmp eq i8 %79, 1
  br i1 %80, label %block_4006d8, label %block_4006c1

block_4006d8:                                     ; preds = %block_4006c1, %block_4006d3, %block_4006b0
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4006b0 ], [ %2, %block_4006c1 ], [ %2, %block_4006d3 ]
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

block_4006da:                                     ; preds = %block_4006cb
  %96 = load i64, i64* %RAX
  %97 = load i64, i64* %RAX
  %98 = add i64 %97, %96
  %99 = load i16, i16* %AX
  %100 = zext i16 %99 to i64
  %101 = load i64, i64* %PC
  %102 = add i64 %101, 6
  store i64 %102, i64* %PC
  %103 = load i64, i64* %PC
  %104 = tail call %struct.Memory* @sub_4006e0_register_tm_clones(%struct.State* %0, i64 %103, %struct.Memory* %2)
  ret %struct.Memory* %104

block_4006d3:                                     ; preds = %block_4006cb
  %105 = load i64, i64* %RAX
  %106 = load i64, i64* %RAX
  %107 = add i64 %106, %105
  %108 = load i32, i32* %EAX
  %109 = zext i32 %108 to i64
  %110 = load i64, i64* %PC
  %111 = add i64 %110, 5
  store i64 %111, i64* %PC
  br label %block_4006d8

block_4006cb:                                     ; preds = %block_4006c1
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
  store i64 6299752, i64* %RDI, align 8, !tbaa !2428
  %121 = load i64, i64* %RAX
  %122 = load i64, i64* %PC
  %123 = add i64 %122, 2
  store i64 %123, i64* %PC
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %121, i64* %124, align 8, !tbaa !2428
  %125 = load i64, i64* %PC
  switch i64 %125, label %162 [
    i64 4196058, label %block_4006da
    i64 4196051, label %block_4006d3
  ]

block_4006c1:                                     ; preds = %block_4006b0
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
  store i8 %142, i8* %143, align 1, !tbaa !2447
  %144 = lshr i64 %132, 63
  %145 = trunc i64 %144 to i8
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %145, i8* %146, align 1, !tbaa !2448
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %147, align 1, !tbaa !2449
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %148, align 1, !tbaa !2450
  %149 = load i64, i64* %PC
  %150 = add i64 %149, 15
  %151 = load i64, i64* %PC
  %152 = add i64 %151, 2
  %153 = load i64, i64* %PC
  %154 = add i64 %153, 2
  store i64 %154, i64* %PC
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %156 = load i8, i8* %155, align 1, !tbaa !2447
  store i8 %156, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %158 = icmp ne i8 %156, 0
  %159 = select i1 %158, i64 %150, i64 %152
  store i64 %159, i64* %157, align 8, !tbaa !2428
  %160 = load i8, i8* %BRANCH_TAKEN
  %161 = icmp eq i8 %160, 1
  br i1 %161, label %block_4006d8, label %block_4006cb

; <label>:162:                                    ; preds = %block_4006cb
  %163 = load i64, i64* %PC
  %164 = tail call %struct.Memory* @__remill_jump(%struct.State* %0, i64 %163, %struct.Memory* %2)
  ret %struct.Memory* %164
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
define %struct.Memory* @sub_4015e0___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4015e0:
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
  %200 = sub i64 %199, 4148
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
  %211 = call %struct.Memory* @sub_4005d8__init_proc_renamed_(%struct.State* %0, i64 %210, %struct.Memory* %2)
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
  store i8 %240, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %242 = icmp ne i8 %240, 0
  %243 = select i1 %242, i64 %234, i64 %236
  store i64 %243, i64* %241, align 8, !tbaa !2428
  %244 = load i8, i8* %BRANCH_TAKEN
  %245 = icmp eq i8 %244, 1
  br i1 %245, label %block_401636, label %block_401616

block_401636:                                     ; preds = %block_401620, %block_4015e0
  %MEMORY.0 = phi %struct.Memory* [ %211, %block_4015e0 ], [ %387, %block_401620 ]
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

block_401616:                                     ; preds = %block_4015e0
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
  br label %block_401620

block_401620:                                     ; preds = %block_401620, %block_401616
  %MEMORY.1 = phi %struct.Memory* [ %211, %block_401616 ], [ %387, %block_401620 ]
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
  store i8 %466, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %468 = select i1 %465, i64 %458, i64 %460
  store i64 %468, i64* %467, align 8, !tbaa !2428
  %469 = load i8, i8* %BRANCH_TAKEN
  %470 = icmp eq i8 %469, 1
  br i1 %470, label %block_401620, label %block_401636
}

; Function Attrs: noinline
define %struct.Memory* @sub_4014b0_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4014b0:
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
  %40 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %39, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %40 to %union.vec128_t*
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
  %54 = sub i64 %51, 64
  store i64 %54, i64* %RSP, align 8, !tbaa !2428
  %55 = icmp ult i64 %51, 64
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
  %65 = xor i64 64, %51
  %66 = xor i64 %65, %54
  %67 = lshr i64 %66, 4
  %68 = trunc i64 %67 to i8
  %69 = and i8 %68, 1
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %69, i8* %70, align 1, !tbaa !2450
  %71 = icmp eq i64 %54, 0
  %72 = zext i1 %71 to i8
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %72, i8* %73, align 1, !tbaa !2447
  %74 = lshr i64 %54, 63
  %75 = trunc i64 %74 to i8
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %75, i8* %76, align 1, !tbaa !2448
  %77 = lshr i64 %51, 63
  %78 = xor i64 %74, %77
  %79 = add nuw nsw i64 %78, %77
  %80 = icmp eq i64 %79, 2
  %81 = zext i1 %80 to i8
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %81, i8* %82, align 1, !tbaa !2449
  %83 = load i64, i64* %RBP
  %84 = sub i64 %83, 4
  %85 = load i64, i64* %PC
  %86 = add i64 %85, 7
  store i64 %86, i64* %PC
  %87 = inttoptr i64 %84 to i32*
  store i32 0, i32* %87
  %88 = load i64, i64* %RBP
  %89 = sub i64 %88, 8
  %90 = load i32, i32* %EDI
  %91 = zext i32 %90 to i64
  %92 = load i64, i64* %PC
  %93 = add i64 %92, 3
  store i64 %93, i64* %PC
  %94 = inttoptr i64 %89 to i32*
  store i32 %90, i32* %94
  %95 = load i64, i64* %RBP
  %96 = sub i64 %95, 16
  %97 = load i64, i64* %RSI
  %98 = load i64, i64* %PC
  %99 = add i64 %98, 4
  store i64 %99, i64* %PC
  %100 = inttoptr i64 %96 to i64*
  store i64 %97, i64* %100
  %101 = load i64, i64* %RBP
  %102 = sub i64 %101, 21
  %103 = load i64, i64* %PC
  %104 = add i64 %103, 4
  store i64 %104, i64* %PC
  %105 = inttoptr i64 %102 to i8*
  store i8 0, i8* %105
  %106 = load i64, i64* %RBP
  %107 = sub i64 %106, 8
  %108 = load i64, i64* %PC
  %109 = add i64 %108, 4
  store i64 %109, i64* %PC
  %110 = inttoptr i64 %107 to i32*
  %111 = load i32, i32* %110
  %112 = sub i32 %111, 1
  %113 = icmp ult i32 %111, 1
  %114 = zext i1 %113 to i8
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %114, i8* %115, align 1, !tbaa !2432
  %116 = and i32 %112, 255
  %117 = call i32 @llvm.ctpop.i32(i32 %116) #16
  %118 = trunc i32 %117 to i8
  %119 = and i8 %118, 1
  %120 = xor i8 %119, 1
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %120, i8* %121, align 1, !tbaa !2446
  %122 = xor i32 %111, 1
  %123 = xor i32 %122, %112
  %124 = lshr i32 %123, 4
  %125 = trunc i32 %124 to i8
  %126 = and i8 %125, 1
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %126, i8* %127, align 1, !tbaa !2450
  %128 = icmp eq i32 %112, 0
  %129 = zext i1 %128 to i8
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %129, i8* %130, align 1, !tbaa !2447
  %131 = lshr i32 %112, 31
  %132 = trunc i32 %131 to i8
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %132, i8* %133, align 1, !tbaa !2448
  %134 = lshr i32 %111, 31
  %135 = xor i32 %131, %134
  %136 = add nuw nsw i32 %135, %134
  %137 = icmp eq i32 %136, 2
  %138 = zext i1 %137 to i8
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %138, i8* %139, align 1, !tbaa !2449
  %140 = load i64, i64* %PC
  %141 = add i64 %140, 87
  %142 = load i64, i64* %PC
  %143 = add i64 %142, 6
  %144 = load i64, i64* %PC
  %145 = add i64 %144, 6
  store i64 %145, i64* %PC
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %147 = load i8, i8* %146, align 1, !tbaa !2447
  %148 = icmp ne i8 %147, 0
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %150 = load i8, i8* %149, align 1, !tbaa !2448
  %151 = icmp ne i8 %150, 0
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %153 = load i8, i8* %152, align 1, !tbaa !2449
  %154 = icmp ne i8 %153, 0
  %155 = xor i1 %151, %154
  %156 = or i1 %148, %155
  %157 = zext i1 %156 to i8
  store i8 %157, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %159 = select i1 %156, i64 %141, i64 %143
  store i64 %159, i64* %158, align 8, !tbaa !2428
  %160 = load i8, i8* %BRANCH_TAKEN
  %161 = icmp eq i8 %160, 1
  br i1 %161, label %block_401525, label %block_4014d4

block_4015a5:                                     ; preds = %block_401564
  store i64 add (i64 ptrtoint (%seg_401660__rodata_type* @seg_401660__rodata to i64), i64 126), i64* %RSI, align 8, !tbaa !2428
  %162 = load i64, i64* %PC
  %163 = add i64 %162, 8
  store i64 %163, i64* %PC
  %164 = load i64, i64* @stdout
  store i64 %164, i64* %RDI, align 8, !tbaa !2428
  %165 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %166 = load i64, i64* %RBP
  %167 = sub i64 %166, 40
  %168 = load i64, i64* %PC
  %169 = add i64 %168, 5
  store i64 %169, i64* %PC
  %170 = inttoptr i64 %167 to double*
  %171 = load double, double* %170
  %172 = bitcast i8* %165 to double*
  store double %171, double* %172, align 1, !tbaa !2452
  %173 = getelementptr inbounds i8, i8* %165, i64 8
  %174 = bitcast i8* %173 to double*
  store double 0.000000e+00, double* %174, align 1, !tbaa !2452
  %175 = load i64, i64* %PC
  %176 = add i64 %175, 2
  store i64 %176, i64* %PC
  store i8 1, i8* %AL, align 1, !tbaa !2451
  %177 = load i64, i64* %PC
  %178 = sub i64 %177, 3982
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
  %189 = call %struct.Memory* @ext_6020d0_fprintf(%struct.State* %0, i64 %188, %struct.Memory* %767)
  %190 = load i64, i64* %RBP
  %191 = sub i64 %190, 48
  %192 = load i32, i32* %EAX
  %193 = zext i32 %192 to i64
  %194 = load i64, i64* %PC
  %195 = add i64 %194, 3
  store i64 %195, i64* %PC
  %196 = inttoptr i64 %191 to i32*
  store i32 %192, i32* %196
  br label %block_4015c6

block_4014db:                                     ; preds = %block_40150d, %block_4014d4
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4014d4 ], [ %531, %block_40150d ]
  %197 = load i64, i64* %RBP
  %198 = sub i64 %197, 20
  %199 = load i64, i64* %PC
  %200 = add i64 %199, 3
  store i64 %200, i64* %PC
  %201 = inttoptr i64 %198 to i32*
  %202 = load i32, i32* %201
  %203 = zext i32 %202 to i64
  store i64 %203, i64* %RAX, align 8, !tbaa !2428
  %204 = load i32, i32* %EAX
  %205 = zext i32 %204 to i64
  %206 = load i64, i64* %RBP
  %207 = sub i64 %206, 8
  %208 = load i64, i64* %PC
  %209 = add i64 %208, 3
  store i64 %209, i64* %PC
  %210 = inttoptr i64 %207 to i32*
  %211 = load i32, i32* %210
  %212 = sub i32 %204, %211
  %213 = icmp ult i32 %204, %211
  %214 = zext i1 %213 to i8
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %214, i8* %215, align 1, !tbaa !2432
  %216 = and i32 %212, 255
  %217 = call i32 @llvm.ctpop.i32(i32 %216) #16
  %218 = trunc i32 %217 to i8
  %219 = and i8 %218, 1
  %220 = xor i8 %219, 1
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %220, i8* %221, align 1, !tbaa !2446
  %222 = xor i32 %211, %204
  %223 = xor i32 %222, %212
  %224 = lshr i32 %223, 4
  %225 = trunc i32 %224 to i8
  %226 = and i8 %225, 1
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %226, i8* %227, align 1, !tbaa !2450
  %228 = icmp eq i32 %212, 0
  %229 = zext i1 %228 to i8
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %229, i8* %230, align 1, !tbaa !2447
  %231 = lshr i32 %212, 31
  %232 = trunc i32 %231 to i8
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %232, i8* %233, align 1, !tbaa !2448
  %234 = lshr i32 %204, 31
  %235 = lshr i32 %211, 31
  %236 = xor i32 %235, %234
  %237 = xor i32 %231, %234
  %238 = add nuw nsw i32 %237, %236
  %239 = icmp eq i32 %238, 2
  %240 = zext i1 %239 to i8
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %240, i8* %241, align 1, !tbaa !2449
  %242 = load i64, i64* %PC
  %243 = add i64 %242, 63
  %244 = load i64, i64* %PC
  %245 = add i64 %244, 6
  %246 = load i64, i64* %PC
  %247 = add i64 %246, 6
  store i64 %247, i64* %PC
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %249 = load i8, i8* %248, align 1, !tbaa !2448
  %250 = icmp ne i8 %249, 0
  %251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %252 = load i8, i8* %251, align 1, !tbaa !2449
  %253 = icmp ne i8 %252, 0
  %254 = xor i1 %250, %253
  %255 = xor i1 %254, true
  %256 = zext i1 %255 to i8
  store i8 %256, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %258 = select i1 %254, i64 %245, i64 %243
  store i64 %258, i64* %257, align 8, !tbaa !2428
  %259 = load i8, i8* %BRANCH_TAKEN
  %260 = icmp eq i8 %259, 1
  br i1 %260, label %block_401520, label %block_4014e7

block_401546:                                     ; preds = %block_40153c
  %261 = load i64, i64* %PC
  %262 = add i64 %261, 5
  store i64 %262, i64* %PC
  store i64 10000000, i64* %RAX, align 8, !tbaa !2428
  %263 = load i32, i32* %EAX
  %264 = zext i32 %263 to i64
  %265 = load i64, i64* %PC
  %266 = add i64 %265, 2
  store i64 %266, i64* %PC
  %267 = and i64 %264, 4294967295
  store i64 %267, i64* %RSI, align 8, !tbaa !2428
  %268 = load i64, i64* %RBP
  %269 = sub i64 %268, 32
  %270 = load i64, i64* %PC
  %271 = add i64 %270, 4
  store i64 %271, i64* %PC
  %272 = inttoptr i64 %269 to i64*
  %273 = load i64, i64* %272
  store i64 %273, i64* %RDI, align 8, !tbaa !2428
  %274 = load i64, i64* %PC
  %275 = sub i64 %274, 3233
  %276 = load i64, i64* %PC
  %277 = add i64 %276, 5
  %278 = load i64, i64* %PC
  %279 = add i64 %278, 5
  store i64 %279, i64* %PC
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %281 = load i64, i64* %280, align 8, !tbaa !2428
  %282 = add i64 %281, -8
  %283 = inttoptr i64 %282 to i64*
  store i64 %277, i64* %283
  store i64 %282, i64* %280, align 8, !tbaa !2428
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %275, i64* %284, align 8, !tbaa !2428
  %285 = load i64, i64* %PC
  %286 = call %struct.Memory* @sub_4008b0_compdecomp_renamed_(%struct.State* %0, i64 %285, %struct.Memory* %MEMORY.1)
  %287 = load i64, i64* %RBP
  %288 = sub i64 %287, 20
  %289 = load i64, i64* %PC
  %290 = add i64 %289, 3
  store i64 %290, i64* %PC
  %291 = inttoptr i64 %288 to i32*
  %292 = load i32, i32* %291
  %293 = zext i32 %292 to i64
  store i64 %293, i64* %RAX, align 8, !tbaa !2428
  %294 = load i64, i64* %RAX
  %295 = load i64, i64* %PC
  %296 = add i64 %295, 3
  store i64 %296, i64* %PC
  %297 = trunc i64 %294 to i32
  %298 = add i32 1, %297
  %299 = zext i32 %298 to i64
  store i64 %299, i64* %RAX, align 8, !tbaa !2428
  %300 = icmp ult i32 %298, %297
  %301 = icmp ult i32 %298, 1
  %302 = or i1 %300, %301
  %303 = zext i1 %302 to i8
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %303, i8* %304, align 1, !tbaa !2432
  %305 = and i32 %298, 255
  %306 = call i32 @llvm.ctpop.i32(i32 %305) #16
  %307 = trunc i32 %306 to i8
  %308 = and i8 %307, 1
  %309 = xor i8 %308, 1
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %309, i8* %310, align 1, !tbaa !2446
  %311 = xor i64 1, %294
  %312 = trunc i64 %311 to i32
  %313 = xor i32 %312, %298
  %314 = lshr i32 %313, 4
  %315 = trunc i32 %314 to i8
  %316 = and i8 %315, 1
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %316, i8* %317, align 1, !tbaa !2450
  %318 = icmp eq i32 %298, 0
  %319 = zext i1 %318 to i8
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %319, i8* %320, align 1, !tbaa !2447
  %321 = lshr i32 %298, 31
  %322 = trunc i32 %321 to i8
  %323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %322, i8* %323, align 1, !tbaa !2448
  %324 = lshr i32 %297, 31
  %325 = xor i32 %321, %324
  %326 = add nuw nsw i32 %325, %321
  %327 = icmp eq i32 %326, 2
  %328 = zext i1 %327 to i8
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %328, i8* %329, align 1, !tbaa !2449
  %330 = load i64, i64* %RBP
  %331 = sub i64 %330, 20
  %332 = load i32, i32* %EAX
  %333 = zext i32 %332 to i64
  %334 = load i64, i64* %PC
  %335 = add i64 %334, 3
  store i64 %335, i64* %PC
  %336 = inttoptr i64 %331 to i32*
  store i32 %332, i32* %336
  %337 = load i64, i64* %PC
  %338 = sub i64 %337, 35
  %339 = load i64, i64* %PC
  %340 = add i64 %339, 5
  store i64 %340, i64* %PC
  %341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %338, i64* %341, align 8, !tbaa !2428
  br label %block_40153c

block_4014d4:                                     ; preds = %block_4014b0
  %342 = load i64, i64* %RBP
  %343 = sub i64 %342, 20
  %344 = load i64, i64* %PC
  %345 = add i64 %344, 7
  store i64 %345, i64* %PC
  %346 = inttoptr i64 %343 to i32*
  store i32 1, i32* %346
  br label %block_4014db

block_40157f:                                     ; preds = %block_401564
  store i64 add (i64 ptrtoint (%seg_401660__rodata_type* @seg_401660__rodata to i64), i64 123), i64* %RSI, align 8, !tbaa !2428
  %347 = load i64, i64* %PC
  %348 = add i64 %347, 8
  store i64 %348, i64* %PC
  %349 = load i64, i64* @stdout
  store i64 %349, i64* %RDI, align 8, !tbaa !2428
  %350 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %351 = load i64, i64* %RBP
  %352 = sub i64 %351, 40
  %353 = load i64, i64* %PC
  %354 = add i64 %353, 5
  store i64 %354, i64* %PC
  %355 = inttoptr i64 %352 to double*
  %356 = load double, double* %355
  %357 = bitcast i8* %350 to double*
  store double %356, double* %357, align 1, !tbaa !2452
  %358 = getelementptr inbounds i8, i8* %350, i64 8
  %359 = bitcast i8* %358 to double*
  store double 0.000000e+00, double* %359, align 1, !tbaa !2452
  %360 = load i64, i64* %PC
  %361 = add i64 %360, 2
  store i64 %361, i64* %PC
  store i8 1, i8* %AL, align 1, !tbaa !2451
  %362 = load i64, i64* %PC
  %363 = sub i64 %362, 3944
  %364 = load i64, i64* %PC
  %365 = add i64 %364, 5
  %366 = load i64, i64* %PC
  %367 = add i64 %366, 5
  store i64 %367, i64* %PC
  %368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %369 = load i64, i64* %368, align 8, !tbaa !2428
  %370 = add i64 %369, -8
  %371 = inttoptr i64 %370 to i64*
  store i64 %365, i64* %371
  store i64 %370, i64* %368, align 8, !tbaa !2428
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %363, i64* %372, align 8, !tbaa !2428
  %373 = load i64, i64* %PC
  %374 = call %struct.Memory* @ext_6020d0_fprintf(%struct.State* %0, i64 %373, %struct.Memory* %767)
  %375 = load i64, i64* %RBP
  %376 = sub i64 %375, 44
  %377 = load i32, i32* %EAX
  %378 = zext i32 %377 to i64
  %379 = load i64, i64* %PC
  %380 = add i64 %379, 3
  store i64 %380, i64* %PC
  %381 = inttoptr i64 %376 to i32*
  store i32 %377, i32* %381
  %382 = load i64, i64* %PC
  %383 = add i64 %382, 38
  %384 = load i64, i64* %PC
  %385 = add i64 %384, 5
  store i64 %385, i64* %PC
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %383, i64* %386, align 8, !tbaa !2428
  br label %block_4015c6

block_40150d:                                     ; preds = %block_4014e7
  %387 = load i64, i64* %PC
  %388 = add i64 %387, 5
  %389 = load i64, i64* %PC
  %390 = add i64 %389, 5
  store i64 %390, i64* %PC
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %388, i64* %391, align 8, !tbaa !2428
  %392 = load i64, i64* %RBP
  %393 = sub i64 %392, 20
  %394 = load i64, i64* %PC
  %395 = add i64 %394, 3
  store i64 %395, i64* %PC
  %396 = inttoptr i64 %393 to i32*
  %397 = load i32, i32* %396
  %398 = zext i32 %397 to i64
  store i64 %398, i64* %RAX, align 8, !tbaa !2428
  %399 = load i64, i64* %RAX
  %400 = load i64, i64* %PC
  %401 = add i64 %400, 3
  store i64 %401, i64* %PC
  %402 = trunc i64 %399 to i32
  %403 = add i32 1, %402
  %404 = zext i32 %403 to i64
  store i64 %404, i64* %RAX, align 8, !tbaa !2428
  %405 = icmp ult i32 %403, %402
  %406 = icmp ult i32 %403, 1
  %407 = or i1 %405, %406
  %408 = zext i1 %407 to i8
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %408, i8* %409, align 1, !tbaa !2432
  %410 = and i32 %403, 255
  %411 = call i32 @llvm.ctpop.i32(i32 %410) #16
  %412 = trunc i32 %411 to i8
  %413 = and i8 %412, 1
  %414 = xor i8 %413, 1
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %414, i8* %415, align 1, !tbaa !2446
  %416 = xor i64 1, %399
  %417 = trunc i64 %416 to i32
  %418 = xor i32 %417, %403
  %419 = lshr i32 %418, 4
  %420 = trunc i32 %419 to i8
  %421 = and i8 %420, 1
  %422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %421, i8* %422, align 1, !tbaa !2450
  %423 = icmp eq i32 %403, 0
  %424 = zext i1 %423 to i8
  %425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %424, i8* %425, align 1, !tbaa !2447
  %426 = lshr i32 %403, 31
  %427 = trunc i32 %426 to i8
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %427, i8* %428, align 1, !tbaa !2448
  %429 = lshr i32 %402, 31
  %430 = xor i32 %426, %429
  %431 = add nuw nsw i32 %430, %426
  %432 = icmp eq i32 %431, 2
  %433 = zext i1 %432 to i8
  %434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %433, i8* %434, align 1, !tbaa !2449
  %435 = load i64, i64* %RBP
  %436 = sub i64 %435, 20
  %437 = load i32, i32* %EAX
  %438 = zext i32 %437 to i64
  %439 = load i64, i64* %PC
  %440 = add i64 %439, 3
  store i64 %440, i64* %PC
  %441 = inttoptr i64 %436 to i32*
  store i32 %437, i32* %441
  %442 = load i64, i64* %PC
  %443 = sub i64 %442, 64
  %444 = load i64, i64* %PC
  %445 = add i64 %444, 5
  store i64 %445, i64* %PC
  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %443, i64* %446, align 8, !tbaa !2428
  br label %block_4014db

block_40153c:                                     ; preds = %block_401525, %block_401546
  %MEMORY.1 = phi %struct.Memory* [ %689, %block_401525 ], [ %286, %block_401546 ]
  %447 = load i64, i64* %RBP
  %448 = sub i64 %447, 20
  %449 = load i64, i64* %PC
  %450 = add i64 %449, 4
  store i64 %450, i64* %PC
  %451 = inttoptr i64 %448 to i32*
  %452 = load i32, i32* %451
  %453 = sub i32 %452, 30
  %454 = icmp ult i32 %452, 30
  %455 = zext i1 %454 to i8
  %456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %455, i8* %456, align 1, !tbaa !2432
  %457 = and i32 %453, 255
  %458 = call i32 @llvm.ctpop.i32(i32 %457) #16
  %459 = trunc i32 %458 to i8
  %460 = and i8 %459, 1
  %461 = xor i8 %460, 1
  %462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %461, i8* %462, align 1, !tbaa !2446
  %463 = xor i32 %452, 30
  %464 = xor i32 %463, %453
  %465 = lshr i32 %464, 4
  %466 = trunc i32 %465 to i8
  %467 = and i8 %466, 1
  %468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %467, i8* %468, align 1, !tbaa !2450
  %469 = icmp eq i32 %453, 0
  %470 = zext i1 %469 to i8
  %471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %470, i8* %471, align 1, !tbaa !2447
  %472 = lshr i32 %453, 31
  %473 = trunc i32 %472 to i8
  %474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %473, i8* %474, align 1, !tbaa !2448
  %475 = lshr i32 %452, 31
  %476 = xor i32 %472, %475
  %477 = add nuw nsw i32 %476, %475
  %478 = icmp eq i32 %477, 2
  %479 = zext i1 %478 to i8
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %479, i8* %480, align 1, !tbaa !2449
  %481 = load i64, i64* %PC
  %482 = add i64 %481, 36
  %483 = load i64, i64* %PC
  %484 = add i64 %483, 6
  %485 = load i64, i64* %PC
  %486 = add i64 %485, 6
  store i64 %486, i64* %PC
  %487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %488 = load i8, i8* %487, align 1, !tbaa !2448
  %489 = icmp ne i8 %488, 0
  %490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %491 = load i8, i8* %490, align 1, !tbaa !2449
  %492 = icmp ne i8 %491, 0
  %493 = xor i1 %489, %492
  %494 = xor i1 %493, true
  %495 = zext i1 %494 to i8
  store i8 %495, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %497 = select i1 %493, i64 %484, i64 %482
  store i64 %497, i64* %496, align 8, !tbaa !2428
  %498 = load i8, i8* %BRANCH_TAKEN
  %499 = icmp eq i8 %498, 1
  br i1 %499, label %block_401564, label %block_401546

block_4014e7:                                     ; preds = %block_4014db
  %500 = load i64, i64* %RBP
  %501 = sub i64 %500, 16
  %502 = load i64, i64* %PC
  %503 = add i64 %502, 4
  store i64 %503, i64* %PC
  %504 = inttoptr i64 %501 to i64*
  %505 = load i64, i64* %504
  store i64 %505, i64* %RAX, align 8, !tbaa !2428
  %506 = load i64, i64* %RAX
  %507 = add i64 %506, 8
  %508 = load i64, i64* %PC
  %509 = add i64 %508, 4
  store i64 %509, i64* %PC
  %510 = inttoptr i64 %507 to i64*
  %511 = load i64, i64* %510
  store i64 %511, i64* %RDI, align 8, !tbaa !2428
  %512 = load i64, i64* %PC
  %513 = add i64 %512, 5
  store i64 %513, i64* %PC
  store i64 and (i64 add (i64 ptrtoint (%seg_401660__rodata_type* @seg_401660__rodata to i64), i64 119), i64 4294967295), i64* %RCX, align 8, !tbaa !2428
  %514 = load i32, i32* %ECX
  %515 = zext i32 %514 to i64
  %516 = load i64, i64* %PC
  %517 = add i64 %516, 2
  store i64 %517, i64* %PC
  %518 = and i64 %515, 4294967295
  store i64 %518, i64* %RSI, align 8, !tbaa !2428
  %519 = load i64, i64* %PC
  %520 = sub i64 %519, 3798
  %521 = load i64, i64* %PC
  %522 = add i64 %521, 5
  %523 = load i64, i64* %PC
  %524 = add i64 %523, 5
  store i64 %524, i64* %PC
  %525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %526 = load i64, i64* %525, align 8, !tbaa !2428
  %527 = add i64 %526, -8
  %528 = inttoptr i64 %527 to i64*
  store i64 %522, i64* %528
  store i64 %527, i64* %525, align 8, !tbaa !2428
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %520, i64* %529, align 8, !tbaa !2428
  %530 = load i64, i64* %PC
  %531 = call %struct.Memory* @ext_6020c8_strcmp(%struct.State* %0, i64 %530, %struct.Memory* %MEMORY.0)
  %532 = load i32, i32* %EAX
  %533 = zext i32 %532 to i64
  %534 = load i64, i64* %PC
  %535 = add i64 %534, 3
  store i64 %535, i64* %PC
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %536, align 1, !tbaa !2432
  %537 = and i32 %532, 255
  %538 = call i32 @llvm.ctpop.i32(i32 %537) #16
  %539 = trunc i32 %538 to i8
  %540 = and i8 %539, 1
  %541 = xor i8 %540, 1
  %542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %541, i8* %542, align 1, !tbaa !2446
  %543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %543, align 1, !tbaa !2450
  %544 = icmp eq i32 %532, 0
  %545 = zext i1 %544 to i8
  %546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %545, i8* %546, align 1, !tbaa !2447
  %547 = lshr i32 %532, 31
  %548 = trunc i32 %547 to i8
  %549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %548, i8* %549, align 1, !tbaa !2448
  %550 = lshr i32 %532, 31
  %551 = xor i32 %547, %550
  %552 = add nuw nsw i32 %551, %550
  %553 = icmp eq i32 %552, 2
  %554 = zext i1 %553 to i8
  %555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %554, i8* %555, align 1, !tbaa !2449
  %556 = load i64, i64* %PC
  %557 = add i64 %556, 15
  %558 = load i64, i64* %PC
  %559 = add i64 %558, 6
  %560 = load i64, i64* %PC
  %561 = add i64 %560, 6
  store i64 %561, i64* %PC
  %562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %563 = load i8, i8* %562, align 1, !tbaa !2447
  %564 = icmp eq i8 %563, 0
  %565 = zext i1 %564 to i8
  store i8 %565, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %567 = select i1 %564, i64 %557, i64 %559
  store i64 %567, i64* %566, align 8, !tbaa !2428
  %568 = load i8, i8* %BRANCH_TAKEN
  %569 = icmp eq i8 %568, 1
  br i1 %569, label %block_40150d, label %block_401504

block_4015c6:                                     ; preds = %block_40157f, %block_4015a5
  %MEMORY.2 = phi %struct.Memory* [ %189, %block_4015a5 ], [ %374, %block_40157f ]
  %570 = load i64, i64* %PC
  %571 = add i64 %570, 8
  store i64 %571, i64* %PC
  %572 = load i64, i64* @stdout
  store i64 %572, i64* %RDI, align 8, !tbaa !2428
  %573 = load i64, i64* %PC
  %574 = sub i64 %573, 3966
  %575 = load i64, i64* %PC
  %576 = add i64 %575, 5
  %577 = load i64, i64* %PC
  %578 = add i64 %577, 5
  store i64 %578, i64* %PC
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %580 = load i64, i64* %579, align 8, !tbaa !2428
  %581 = add i64 %580, -8
  %582 = inttoptr i64 %581 to i64*
  store i64 %576, i64* %582
  store i64 %581, i64* %579, align 8, !tbaa !2428
  %583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %574, i64* %583, align 8, !tbaa !2428
  %584 = load i64, i64* %PC
  %585 = call %struct.Memory* @ext_6020e0_fflush(%struct.State* %0, i64 %584, %struct.Memory* %MEMORY.2)
  %586 = load i64, i64* %RCX
  %587 = load i32, i32* %ECX
  %588 = zext i32 %587 to i64
  %589 = load i64, i64* %PC
  %590 = add i64 %589, 2
  store i64 %590, i64* %PC
  %591 = xor i64 %588, %586
  %592 = trunc i64 %591 to i32
  %593 = and i64 %591, 4294967295
  store i64 %593, i64* %RCX, align 8, !tbaa !2428
  %594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %594, align 1, !tbaa !2432
  %595 = and i32 %592, 255
  %596 = call i32 @llvm.ctpop.i32(i32 %595) #16
  %597 = trunc i32 %596 to i8
  %598 = and i8 %597, 1
  %599 = xor i8 %598, 1
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %599, i8* %600, align 1, !tbaa !2446
  %601 = icmp eq i32 %592, 0
  %602 = zext i1 %601 to i8
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %602, i8* %603, align 1, !tbaa !2447
  %604 = lshr i32 %592, 31
  %605 = trunc i32 %604 to i8
  %606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %605, i8* %606, align 1, !tbaa !2448
  %607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %607, align 1, !tbaa !2449
  %608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %608, align 1, !tbaa !2450
  %609 = load i64, i64* %RBP
  %610 = sub i64 %609, 52
  %611 = load i32, i32* %EAX
  %612 = zext i32 %611 to i64
  %613 = load i64, i64* %PC
  %614 = add i64 %613, 3
  store i64 %614, i64* %PC
  %615 = inttoptr i64 %610 to i32*
  store i32 %611, i32* %615
  %616 = load i32, i32* %ECX
  %617 = zext i32 %616 to i64
  %618 = load i64, i64* %PC
  %619 = add i64 %618, 2
  store i64 %619, i64* %PC
  %620 = and i64 %617, 4294967295
  store i64 %620, i64* %RAX, align 8, !tbaa !2428
  %621 = load i64, i64* %RSP
  %622 = load i64, i64* %PC
  %623 = add i64 %622, 4
  store i64 %623, i64* %PC
  %624 = add i64 64, %621
  store i64 %624, i64* %RSP, align 8, !tbaa !2428
  %625 = icmp ult i64 %624, %621
  %626 = icmp ult i64 %624, 64
  %627 = or i1 %625, %626
  %628 = zext i1 %627 to i8
  %629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %628, i8* %629, align 1, !tbaa !2432
  %630 = trunc i64 %624 to i32
  %631 = and i32 %630, 255
  %632 = call i32 @llvm.ctpop.i32(i32 %631) #16
  %633 = trunc i32 %632 to i8
  %634 = and i8 %633, 1
  %635 = xor i8 %634, 1
  %636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %635, i8* %636, align 1, !tbaa !2446
  %637 = xor i64 64, %621
  %638 = xor i64 %637, %624
  %639 = lshr i64 %638, 4
  %640 = trunc i64 %639 to i8
  %641 = and i8 %640, 1
  %642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %641, i8* %642, align 1, !tbaa !2450
  %643 = icmp eq i64 %624, 0
  %644 = zext i1 %643 to i8
  %645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %644, i8* %645, align 1, !tbaa !2447
  %646 = lshr i64 %624, 63
  %647 = trunc i64 %646 to i8
  %648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %647, i8* %648, align 1, !tbaa !2448
  %649 = lshr i64 %621, 63
  %650 = xor i64 %646, %649
  %651 = add nuw nsw i64 %650, %646
  %652 = icmp eq i64 %651, 2
  %653 = zext i1 %652 to i8
  %654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %653, i8* %654, align 1, !tbaa !2449
  %655 = load i64, i64* %PC
  %656 = add i64 %655, 1
  store i64 %656, i64* %PC
  %657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %658 = load i64, i64* %657, align 8, !tbaa !2428
  %659 = add i64 %658, 8
  %660 = inttoptr i64 %658 to i64*
  %661 = load i64, i64* %660
  store i64 %661, i64* %RBP, align 8, !tbaa !2428
  store i64 %659, i64* %657, align 8, !tbaa !2428
  %662 = load i64, i64* %PC
  %663 = add i64 %662, 1
  store i64 %663, i64* %PC
  %664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %666 = load i64, i64* %665, align 8, !tbaa !2428
  %667 = inttoptr i64 %666 to i64*
  %668 = load i64, i64* %667
  store i64 %668, i64* %664, align 8, !tbaa !2428
  %669 = add i64 %666, 8
  store i64 %669, i64* %665, align 8, !tbaa !2428
  ret %struct.Memory* %585

block_401525:                                     ; preds = %block_401520, %block_4014b0
  %MEMORY.3 = phi %struct.Memory* [ %2, %block_4014b0 ], [ %MEMORY.4, %block_401520 ]
  %670 = load i64, i64* %PC
  %671 = add i64 %670, 5
  store i64 %671, i64* %PC
  store i64 10000000, i64* %RAX, align 8, !tbaa !2428
  %672 = load i32, i32* %EAX
  %673 = zext i32 %672 to i64
  %674 = load i64, i64* %PC
  %675 = add i64 %674, 2
  store i64 %675, i64* %PC
  %676 = and i64 %673, 4294967295
  store i64 %676, i64* %RDI, align 8, !tbaa !2428
  %677 = load i64, i64* %PC
  %678 = sub i64 %677, 3532
  %679 = load i64, i64* %PC
  %680 = add i64 %679, 5
  %681 = load i64, i64* %PC
  %682 = add i64 %681, 5
  store i64 %682, i64* %PC
  %683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %684 = load i64, i64* %683, align 8, !tbaa !2428
  %685 = add i64 %684, -8
  %686 = inttoptr i64 %685 to i64*
  store i64 %680, i64* %686
  store i64 %685, i64* %683, align 8, !tbaa !2428
  %687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %678, i64* %687, align 8, !tbaa !2428
  %688 = load i64, i64* %PC
  %689 = call %struct.Memory* @sub_400760_generate_test_data_renamed_(%struct.State* %0, i64 %688, %struct.Memory* %MEMORY.3)
  %690 = load i64, i64* %RBP
  %691 = sub i64 %690, 32
  %692 = load i64, i64* %RAX
  %693 = load i64, i64* %PC
  %694 = add i64 %693, 4
  store i64 %694, i64* %PC
  %695 = inttoptr i64 %691 to i64*
  store i64 %692, i64* %695
  %696 = load i64, i64* %RBP
  %697 = sub i64 %696, 20
  %698 = load i64, i64* %PC
  %699 = add i64 %698, 7
  store i64 %699, i64* %PC
  %700 = inttoptr i64 %697 to i32*
  store i32 0, i32* %700
  br label %block_40153c

block_401504:                                     ; preds = %block_4014e7
  %701 = load i64, i64* %RBP
  %702 = sub i64 %701, 21
  %703 = load i64, i64* %PC
  %704 = add i64 %703, 4
  store i64 %704, i64* %PC
  %705 = inttoptr i64 %702 to i8*
  store i8 1, i8* %705
  %706 = load i64, i64* %PC
  %707 = add i64 %706, 24
  %708 = load i64, i64* %PC
  %709 = add i64 %708, 5
  store i64 %709, i64* %PC
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %707, i64* %710, align 8, !tbaa !2428
  br label %block_401520

block_401564:                                     ; preds = %block_40153c
  %711 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %712 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %713 = bitcast %union.vec128_t* %XMM0 to i8*
  %714 = load i64, i64* %PC
  %715 = add i64 %714, 3
  store i64 %715, i64* %PC
  %716 = bitcast i8* %712 to i64*
  %717 = load i64, i64* %716, align 1
  %718 = getelementptr inbounds i8, i8* %712, i64 8
  %719 = bitcast i8* %718 to i64*
  %720 = load i64, i64* %719, align 1
  %721 = bitcast i8* %713 to i64*
  %722 = load i64, i64* %721, align 1
  %723 = getelementptr inbounds i8, i8* %713, i64 8
  %724 = bitcast i8* %723 to i64*
  %725 = load i64, i64* %724, align 1
  %726 = xor i64 %722, %717
  %727 = xor i64 %725, %720
  %728 = trunc i64 %726 to i32
  %729 = lshr i64 %726, 32
  %730 = trunc i64 %729 to i32
  %731 = bitcast i8* %711 to i32*
  store i32 %728, i32* %731, align 1, !tbaa !2454
  %732 = getelementptr inbounds i8, i8* %711, i64 4
  %733 = bitcast i8* %732 to i32*
  store i32 %730, i32* %733, align 1, !tbaa !2454
  %734 = trunc i64 %727 to i32
  %735 = getelementptr inbounds i8, i8* %711, i64 8
  %736 = bitcast i8* %735 to i32*
  store i32 %734, i32* %736, align 1, !tbaa !2454
  %737 = lshr i64 %727, 32
  %738 = trunc i64 %737 to i32
  %739 = getelementptr inbounds i8, i8* %711, i64 12
  %740 = bitcast i8* %739 to i32*
  store i32 %738, i32* %740, align 1, !tbaa !2454
  %741 = load i64, i64* %RBP
  %742 = sub i64 %741, 40
  %743 = bitcast %union.vec128_t* %XMM0 to i8*
  %744 = load i64, i64* %PC
  %745 = add i64 %744, 5
  store i64 %745, i64* %PC
  %746 = bitcast i8* %743 to double*
  %747 = load double, double* %746, align 1
  %748 = inttoptr i64 %742 to double*
  store double %747, double* %748
  %749 = load i64, i64* %RBP
  %750 = sub i64 %749, 32
  %751 = load i64, i64* %PC
  %752 = add i64 %751, 4
  store i64 %752, i64* %PC
  %753 = inttoptr i64 %750 to i64*
  %754 = load i64, i64* %753
  store i64 %754, i64* %RDI, align 8, !tbaa !2428
  %755 = load i64, i64* %PC
  %756 = sub i64 %755, 3952
  %757 = load i64, i64* %PC
  %758 = add i64 %757, 5
  %759 = load i64, i64* %PC
  %760 = add i64 %759, 5
  store i64 %760, i64* %PC
  %761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %762 = load i64, i64* %761, align 8, !tbaa !2428
  %763 = add i64 %762, -8
  %764 = inttoptr i64 %763 to i64*
  store i64 %758, i64* %764
  store i64 %763, i64* %761, align 8, !tbaa !2428
  %765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %756, i64* %765, align 8, !tbaa !2428
  %766 = load i64, i64* %PC
  %767 = call %struct.Memory* @ext_6020f0_free(%struct.State* %0, i64 %766, %struct.Memory* %MEMORY.1)
  %768 = load i64, i64* %RBP
  %769 = sub i64 %768, 21
  %770 = load i64, i64* %PC
  %771 = add i64 %770, 4
  store i64 %771, i64* %PC
  %772 = inttoptr i64 %769 to i8*
  %773 = load i8, i8* %772
  %774 = and i8 %773, 1
  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %775, align 1, !tbaa !2432
  %776 = zext i8 %774 to i32
  %777 = call i32 @llvm.ctpop.i32(i32 %776) #16
  %778 = trunc i32 %777 to i8
  %779 = and i8 %778, 1
  %780 = xor i8 %779, 1
  %781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %780, i8* %781, align 1, !tbaa !2446
  %782 = icmp eq i8 %774, 0
  %783 = zext i1 %782 to i8
  %784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %783, i8* %784, align 1, !tbaa !2447
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %785, align 1, !tbaa !2448
  %786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %786, align 1, !tbaa !2449
  %787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %787, align 1, !tbaa !2450
  %788 = load i64, i64* %PC
  %789 = add i64 %788, 44
  %790 = load i64, i64* %PC
  %791 = add i64 %790, 6
  %792 = load i64, i64* %PC
  %793 = add i64 %792, 6
  store i64 %793, i64* %PC
  %794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %795 = load i8, i8* %794, align 1, !tbaa !2447
  store i8 %795, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %797 = icmp ne i8 %795, 0
  %798 = select i1 %797, i64 %789, i64 %791
  store i64 %798, i64* %796, align 8, !tbaa !2428
  %799 = load i8, i8* %BRANCH_TAKEN
  %800 = icmp eq i8 %799, 1
  %801 = load i64, i64* %PC
  %802 = add i64 %801, 10
  store i64 %802, i64* %PC
  br i1 %800, label %block_4015a5, label %block_40157f

block_401520:                                     ; preds = %block_401504, %block_4014db
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.0, %block_4014db ], [ %531, %block_401504 ]
  %803 = load i64, i64* %PC
  %804 = add i64 %803, 5
  %805 = load i64, i64* %PC
  %806 = add i64 %805, 5
  store i64 %806, i64* %PC
  %807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %804, i64* %807, align 8, !tbaa !2428
  br label %block_401525
}

; Function Attrs: noinline
define %struct.Memory* @sub_4007f0_random4(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4007f0:
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
  %16 = getelementptr inbounds %struct.GPR, %struct.GPR* %15, i32 0, i32 7
  %17 = getelementptr inbounds %struct.Reg, %struct.Reg* %16, i32 0, i32 0
  %RDX = bitcast %union.anon* %17 to i64*
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
  %34 = load i64, i64* %PC
  %35 = add i64 %34, 5
  store i64 %35, i64* %PC
  store i64 127773, i64* %RAX, align 8, !tbaa !2428
  %36 = load i32, i32* %EAX
  %37 = zext i32 %36 to i64
  %38 = load i64, i64* %PC
  %39 = add i64 %38, 2
  store i64 %39, i64* %PC
  %40 = and i64 %37, 4294967295
  store i64 %40, i64* %RCX, align 8, !tbaa !2428
  %41 = load i64, i64* %PC
  %42 = add i64 %41, 8
  store i64 %42, i64* %PC
  %43 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602050__data_type* @seg_602050__data to i64), i64 16) to i64*)
  store i64 %43, i64* %RDX, align 8, !tbaa !2428
  %44 = load i64, i64* %RDX
  %45 = load i64, i64* %PC
  %46 = add i64 %45, 7
  store i64 %46, i64* %PC
  %47 = xor i64 123459876, %44
  store i64 %47, i64* %RDX, align 8, !tbaa !2428
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %48, align 1, !tbaa !2432
  %49 = trunc i64 %47 to i32
  %50 = and i32 %49, 255
  %51 = call i32 @llvm.ctpop.i32(i32 %50) #16
  %52 = trunc i32 %51 to i8
  %53 = and i8 %52, 1
  %54 = xor i8 %53, 1
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %54, i8* %55, align 1, !tbaa !2446
  %56 = icmp eq i64 %47, 0
  %57 = zext i1 %56 to i8
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %57, i8* %58, align 1, !tbaa !2447
  %59 = lshr i64 %47, 63
  %60 = trunc i64 %59 to i8
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %60, i8* %61, align 1, !tbaa !2448
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %62, align 1, !tbaa !2449
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %63, align 1, !tbaa !2450
  %64 = load i64, i64* %RDX
  %65 = load i64, i64* %PC
  %66 = add i64 %65, 8
  store i64 %66, i64* %PC
  store i64 %64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602050__data_type* @seg_602050__data to i64), i64 16) to i64*)
  %67 = load i64, i64* %PC
  %68 = add i64 %67, 8
  store i64 %68, i64* %PC
  %69 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602050__data_type* @seg_602050__data to i64), i64 16) to i64*)
  store i64 %69, i64* %RAX, align 8, !tbaa !2428
  %70 = load i64, i64* %PC
  %71 = add i64 %70, 2
  store i64 %71, i64* %PC
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %74 = load i64, i64* %73, align 8, !tbaa !2428
  %75 = ashr i64 %74, 63
  store i64 %75, i64* %72, align 8, !tbaa !2428
  %76 = load i64, i64* %RCX
  %77 = load i64, i64* %PC
  %78 = add i64 %77, 3
  store i64 %78, i64* %PC
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %80 = load i64, i64* %79, align 8, !tbaa !2428
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %82 = load i64, i64* %81, align 8, !tbaa !2428
  %83 = sext i64 %76 to i128
  %84 = and i128 %83, -18446744073709551616
  %85 = zext i64 %82 to i128
  %86 = shl nuw i128 %85, 64
  %87 = zext i64 %80 to i128
  %88 = or i128 %86, %87
  %89 = zext i64 %76 to i128
  %90 = or i128 %84, %89
  %91 = sdiv i128 %88, %90
  %92 = trunc i128 %91 to i64
  %93 = and i128 %91, 18446744073709551615
  %94 = sext i64 %92 to i128
  %95 = and i128 %94, -18446744073709551616
  %96 = or i128 %95, %93
  %97 = icmp eq i128 %91, %96
  br i1 %97, label %102, label %98

; <label>:98:                                     ; preds = %block_4007f0
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %100 = load i64, i64* %99, align 8, !tbaa !2428
  %101 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %100, %struct.Memory* %2) #17
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit1

; <label>:102:                                    ; preds = %block_4007f0
  %103 = srem i128 %88, %90
  %104 = trunc i128 %103 to i64
  store i64 %92, i64* %79, align 8, !tbaa !2428
  store i64 %104, i64* %81, align 8, !tbaa !2428
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %105, align 1, !tbaa !2432
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %106, align 1, !tbaa !2446
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %107, align 1, !tbaa !2450
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %108, align 1, !tbaa !2447
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %109, align 1, !tbaa !2448
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %110, align 1, !tbaa !2449
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit1

_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit1: ; preds = %98, %102
  %111 = phi %struct.Memory* [ %101, %98 ], [ %2, %102 ]
  %112 = load i64, i64* %RBP
  %113 = sub i64 %112, 8
  %114 = load i64, i64* %RAX
  %115 = load i64, i64* %PC
  %116 = add i64 %115, 4
  store i64 %116, i64* %PC
  %117 = inttoptr i64 %113 to i64*
  store i64 %114, i64* %117
  %118 = load i64, i64* %PC
  %119 = add i64 %118, 8
  store i64 %119, i64* %PC
  %120 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602050__data_type* @seg_602050__data to i64), i64 16) to i64*)
  store i64 %120, i64* %RAX, align 8, !tbaa !2428
  %121 = load i64, i64* %RBP
  %122 = sub i64 %121, 8
  %123 = load i64, i64* %PC
  %124 = add i64 %123, 8
  store i64 %124, i64* %PC
  %125 = inttoptr i64 %122 to i64*
  %126 = load i64, i64* %125
  %127 = sext i64 %126 to i128
  %128 = and i128 %127, -18446744073709551616
  %129 = zext i64 %126 to i128
  %130 = or i128 %128, %129
  %131 = mul nsw i128 %130, 127773
  %132 = trunc i128 %131 to i64
  store i64 %132, i64* %RCX, align 8, !tbaa !2428
  %133 = sext i64 %132 to i128
  %134 = icmp ne i128 %133, %131
  %135 = zext i1 %134 to i8
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %135, i8* %136, align 1, !tbaa !2432
  %137 = trunc i128 %131 to i32
  %138 = and i32 %137, 255
  %139 = call i32 @llvm.ctpop.i32(i32 %138) #16
  %140 = trunc i32 %139 to i8
  %141 = and i8 %140, 1
  %142 = xor i8 %141, 1
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %142, i8* %143, align 1, !tbaa !2446
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %144, align 1, !tbaa !2450
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %145, align 1, !tbaa !2447
  %146 = lshr i64 %132, 63
  %147 = trunc i64 %146 to i8
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %147, i8* %148, align 1, !tbaa !2448
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %135, i8* %149, align 1, !tbaa !2449
  %150 = load i64, i64* %RAX
  %151 = load i64, i64* %RCX
  %152 = load i64, i64* %PC
  %153 = add i64 %152, 3
  store i64 %153, i64* %PC
  %154 = sub i64 %150, %151
  store i64 %154, i64* %RAX, align 8, !tbaa !2428
  %155 = icmp ult i64 %150, %151
  %156 = zext i1 %155 to i8
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %156, i8* %157, align 1, !tbaa !2432
  %158 = trunc i64 %154 to i32
  %159 = and i32 %158, 255
  %160 = call i32 @llvm.ctpop.i32(i32 %159) #16
  %161 = trunc i32 %160 to i8
  %162 = and i8 %161, 1
  %163 = xor i8 %162, 1
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %163, i8* %164, align 1, !tbaa !2446
  %165 = xor i64 %151, %150
  %166 = xor i64 %165, %154
  %167 = lshr i64 %166, 4
  %168 = trunc i64 %167 to i8
  %169 = and i8 %168, 1
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %169, i8* %170, align 1, !tbaa !2450
  %171 = icmp eq i64 %154, 0
  %172 = zext i1 %171 to i8
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %172, i8* %173, align 1, !tbaa !2447
  %174 = lshr i64 %154, 63
  %175 = trunc i64 %174 to i8
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %175, i8* %176, align 1, !tbaa !2448
  %177 = lshr i64 %150, 63
  %178 = lshr i64 %151, 63
  %179 = xor i64 %178, %177
  %180 = xor i64 %174, %177
  %181 = add nuw nsw i64 %180, %179
  %182 = icmp eq i64 %181, 2
  %183 = zext i1 %182 to i8
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %183, i8* %184, align 1, !tbaa !2449
  %185 = load i64, i64* %RAX
  %186 = load i64, i64* %PC
  %187 = add i64 %186, 7
  store i64 %187, i64* %PC
  %188 = sext i64 %185 to i128
  %189 = and i128 %188, -18446744073709551616
  %190 = zext i64 %185 to i128
  %191 = or i128 %189, %190
  %192 = mul nsw i128 16807, %191
  %193 = trunc i128 %192 to i64
  store i64 %193, i64* %RAX, align 8, !tbaa !2428
  %194 = sext i64 %193 to i128
  %195 = icmp ne i128 %194, %192
  %196 = zext i1 %195 to i8
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %196, i8* %197, align 1, !tbaa !2432
  %198 = trunc i128 %192 to i32
  %199 = and i32 %198, 255
  %200 = call i32 @llvm.ctpop.i32(i32 %199) #16
  %201 = trunc i32 %200 to i8
  %202 = and i8 %201, 1
  %203 = xor i8 %202, 1
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %203, i8* %204, align 1, !tbaa !2446
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %205, align 1, !tbaa !2450
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %206, align 1, !tbaa !2447
  %207 = lshr i64 %193, 63
  %208 = trunc i64 %207 to i8
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %208, i8* %209, align 1, !tbaa !2448
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %196, i8* %210, align 1, !tbaa !2449
  %211 = load i64, i64* %RBP
  %212 = sub i64 %211, 8
  %213 = load i64, i64* %PC
  %214 = add i64 %213, 8
  store i64 %214, i64* %PC
  %215 = inttoptr i64 %212 to i64*
  %216 = load i64, i64* %215
  %217 = sext i64 %216 to i128
  %218 = and i128 %217, -18446744073709551616
  %219 = zext i64 %216 to i128
  %220 = or i128 %218, %219
  %221 = mul nsw i128 %220, 2836
  %222 = trunc i128 %221 to i64
  store i64 %222, i64* %RCX, align 8, !tbaa !2428
  %223 = sext i64 %222 to i128
  %224 = icmp ne i128 %223, %221
  %225 = zext i1 %224 to i8
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %225, i8* %226, align 1, !tbaa !2432
  %227 = trunc i128 %221 to i32
  %228 = and i32 %227, 255
  %229 = call i32 @llvm.ctpop.i32(i32 %228) #16
  %230 = trunc i32 %229 to i8
  %231 = and i8 %230, 1
  %232 = xor i8 %231, 1
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %232, i8* %233, align 1, !tbaa !2446
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %234, align 1, !tbaa !2450
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %235, align 1, !tbaa !2447
  %236 = lshr i64 %222, 63
  %237 = trunc i64 %236 to i8
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %237, i8* %238, align 1, !tbaa !2448
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %225, i8* %239, align 1, !tbaa !2449
  %240 = load i64, i64* %RAX
  %241 = load i64, i64* %RCX
  %242 = load i64, i64* %PC
  %243 = add i64 %242, 3
  store i64 %243, i64* %PC
  %244 = sub i64 %240, %241
  store i64 %244, i64* %RAX, align 8, !tbaa !2428
  %245 = icmp ult i64 %240, %241
  %246 = zext i1 %245 to i8
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %246, i8* %247, align 1, !tbaa !2432
  %248 = trunc i64 %244 to i32
  %249 = and i32 %248, 255
  %250 = call i32 @llvm.ctpop.i32(i32 %249) #16
  %251 = trunc i32 %250 to i8
  %252 = and i8 %251, 1
  %253 = xor i8 %252, 1
  %254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %253, i8* %254, align 1, !tbaa !2446
  %255 = xor i64 %241, %240
  %256 = xor i64 %255, %244
  %257 = lshr i64 %256, 4
  %258 = trunc i64 %257 to i8
  %259 = and i8 %258, 1
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %259, i8* %260, align 1, !tbaa !2450
  %261 = icmp eq i64 %244, 0
  %262 = zext i1 %261 to i8
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %262, i8* %263, align 1, !tbaa !2447
  %264 = lshr i64 %244, 63
  %265 = trunc i64 %264 to i8
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %265, i8* %266, align 1, !tbaa !2448
  %267 = lshr i64 %240, 63
  %268 = lshr i64 %241, 63
  %269 = xor i64 %268, %267
  %270 = xor i64 %264, %267
  %271 = add nuw nsw i64 %270, %269
  %272 = icmp eq i64 %271, 2
  %273 = zext i1 %272 to i8
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %273, i8* %274, align 1, !tbaa !2449
  %275 = load i64, i64* %RAX
  %276 = load i64, i64* %PC
  %277 = add i64 %276, 8
  store i64 %277, i64* %PC
  store i64 %275, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602050__data_type* @seg_602050__data to i64), i64 16) to i64*)
  %278 = load i64, i64* %PC
  %279 = add i64 %278, 9
  store i64 %279, i64* %PC
  %280 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602050__data_type* @seg_602050__data to i64), i64 16) to i64*)
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %281, align 1, !tbaa !2432
  %282 = trunc i64 %280 to i32
  %283 = and i32 %282, 255
  %284 = call i32 @llvm.ctpop.i32(i32 %283) #16
  %285 = trunc i32 %284 to i8
  %286 = and i8 %285, 1
  %287 = xor i8 %286, 1
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %287, i8* %288, align 1, !tbaa !2446
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %289, align 1, !tbaa !2450
  %290 = icmp eq i64 %280, 0
  %291 = zext i1 %290 to i8
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %291, i8* %292, align 1, !tbaa !2447
  %293 = lshr i64 %280, 63
  %294 = trunc i64 %293 to i8
  %295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %294, i8* %295, align 1, !tbaa !2448
  %296 = lshr i64 %280, 63
  %297 = xor i64 %293, %296
  %298 = add nuw nsw i64 %297, %296
  %299 = icmp eq i64 %298, 2
  %300 = zext i1 %299 to i8
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %300, i8* %301, align 1, !tbaa !2449
  %302 = load i64, i64* %PC
  %303 = add i64 %302, 28
  %304 = load i64, i64* %PC
  %305 = add i64 %304, 6
  %306 = load i64, i64* %PC
  %307 = add i64 %306, 6
  store i64 %307, i64* %PC
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %309 = load i8, i8* %308, align 1, !tbaa !2448
  %310 = icmp ne i8 %309, 0
  %311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %312 = load i8, i8* %311, align 1, !tbaa !2449
  %313 = icmp ne i8 %312, 0
  %314 = xor i1 %310, %313
  %315 = xor i1 %314, true
  %316 = zext i1 %315 to i8
  store i8 %316, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %318 = select i1 %314, i64 %305, i64 %303
  store i64 %318, i64* %317, align 8, !tbaa !2428
  %319 = load i8, i8* %BRANCH_TAKEN
  %320 = icmp eq i8 %319, 1
  br i1 %320, label %block_400875, label %block_40085f

block_40085f:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit1
  %321 = load i64, i64* %PC
  %322 = add i64 %321, 8
  store i64 %322, i64* %PC
  %323 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602050__data_type* @seg_602050__data to i64), i64 16) to i64*)
  store i64 %323, i64* %RAX, align 8, !tbaa !2428
  %324 = load i64, i64* %RAX
  %325 = load i64, i64* %PC
  %326 = add i64 %325, 6
  store i64 %326, i64* %PC
  %327 = add i64 2147483647, %324
  store i64 %327, i64* %RAX, align 8, !tbaa !2428
  %328 = icmp ult i64 %327, %324
  %329 = icmp ult i64 %327, 2147483647
  %330 = or i1 %328, %329
  %331 = zext i1 %330 to i8
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %331, i8* %332, align 1, !tbaa !2432
  %333 = trunc i64 %327 to i32
  %334 = and i32 %333, 255
  %335 = call i32 @llvm.ctpop.i32(i32 %334) #16
  %336 = trunc i32 %335 to i8
  %337 = and i8 %336, 1
  %338 = xor i8 %337, 1
  %339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %338, i8* %339, align 1, !tbaa !2446
  %340 = xor i64 2147483647, %324
  %341 = xor i64 %340, %327
  %342 = lshr i64 %341, 4
  %343 = trunc i64 %342 to i8
  %344 = and i8 %343, 1
  %345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %344, i8* %345, align 1, !tbaa !2450
  %346 = icmp eq i64 %327, 0
  %347 = zext i1 %346 to i8
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %347, i8* %348, align 1, !tbaa !2447
  %349 = lshr i64 %327, 63
  %350 = trunc i64 %349 to i8
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %350, i8* %351, align 1, !tbaa !2448
  %352 = lshr i64 %324, 63
  %353 = xor i64 %349, %352
  %354 = add nuw nsw i64 %353, %349
  %355 = icmp eq i64 %354, 2
  %356 = zext i1 %355 to i8
  %357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %356, i8* %357, align 1, !tbaa !2449
  %358 = load i64, i64* %RAX
  %359 = load i64, i64* %PC
  %360 = add i64 %359, 8
  store i64 %360, i64* %PC
  store i64 %358, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602050__data_type* @seg_602050__data to i64), i64 16) to i64*)
  br label %block_400875

block_400875:                                     ; preds = %block_40085f, %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit1
  %MEMORY.0 = phi %struct.Memory* [ %111, %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit1 ], [ %111, %block_40085f ]
  %361 = load i64, i64* %PC
  %362 = add i64 %361, 5
  store i64 %362, i64* %PC
  store i64 32, i64* %RAX, align 8, !tbaa !2428
  %363 = load i32, i32* %EAX
  %364 = zext i32 %363 to i64
  %365 = load i64, i64* %PC
  %366 = add i64 %365, 2
  store i64 %366, i64* %PC
  %367 = and i64 %364, 4294967295
  store i64 %367, i64* %RCX, align 8, !tbaa !2428
  %368 = load i64, i64* %PC
  %369 = add i64 %368, 8
  store i64 %369, i64* %PC
  %370 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602050__data_type* @seg_602050__data to i64), i64 16) to i64*)
  store i64 %370, i64* %RAX, align 8, !tbaa !2428
  %371 = load i64, i64* %PC
  %372 = add i64 %371, 2
  store i64 %372, i64* %PC
  %373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %375 = load i64, i64* %374, align 8, !tbaa !2428
  %376 = ashr i64 %375, 63
  store i64 %376, i64* %373, align 8, !tbaa !2428
  %377 = load i64, i64* %RCX
  %378 = load i64, i64* %PC
  %379 = add i64 %378, 3
  store i64 %379, i64* %PC
  %380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %381 = load i64, i64* %380, align 8, !tbaa !2428
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %383 = load i64, i64* %382, align 8, !tbaa !2428
  %384 = sext i64 %377 to i128
  %385 = and i128 %384, -18446744073709551616
  %386 = zext i64 %383 to i128
  %387 = shl nuw i128 %386, 64
  %388 = zext i64 %381 to i128
  %389 = or i128 %387, %388
  %390 = zext i64 %377 to i128
  %391 = or i128 %385, %390
  %392 = sdiv i128 %389, %391
  %393 = trunc i128 %392 to i64
  %394 = and i128 %392, 18446744073709551615
  %395 = sext i64 %393 to i128
  %396 = and i128 %395, -18446744073709551616
  %397 = or i128 %396, %394
  %398 = icmp eq i128 %392, %397
  br i1 %398, label %403, label %399

; <label>:399:                                    ; preds = %block_400875
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %401 = load i64, i64* %400, align 8, !tbaa !2428
  %402 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %401, %struct.Memory* %MEMORY.0) #17
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

; <label>:403:                                    ; preds = %block_400875
  %404 = srem i128 %389, %391
  %405 = trunc i128 %404 to i64
  store i64 %393, i64* %380, align 8, !tbaa !2428
  store i64 %405, i64* %382, align 8, !tbaa !2428
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %406, align 1, !tbaa !2432
  %407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %407, align 1, !tbaa !2446
  %408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %408, align 1, !tbaa !2450
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %409, align 1, !tbaa !2447
  %410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %410, align 1, !tbaa !2448
  %411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %411, align 1, !tbaa !2449
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit: ; preds = %399, %403
  %412 = phi %struct.Memory* [ %402, %399 ], [ %MEMORY.0, %403 ]
  %413 = load i64, i64* %RBP
  %414 = sub i64 %413, 16
  %415 = load i64, i64* %RDX
  %416 = load i64, i64* %PC
  %417 = add i64 %416, 4
  store i64 %417, i64* %PC
  %418 = inttoptr i64 %414 to i64*
  store i64 %415, i64* %418
  %419 = load i64, i64* %PC
  %420 = add i64 %419, 8
  store i64 %420, i64* %PC
  %421 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602050__data_type* @seg_602050__data to i64), i64 16) to i64*)
  store i64 %421, i64* %RCX, align 8, !tbaa !2428
  %422 = load i64, i64* %RCX
  %423 = load i64, i64* %PC
  %424 = add i64 %423, 7
  store i64 %424, i64* %PC
  %425 = xor i64 123459876, %422
  store i64 %425, i64* %RCX, align 8, !tbaa !2428
  %426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %426, align 1, !tbaa !2432
  %427 = trunc i64 %425 to i32
  %428 = and i32 %427, 255
  %429 = call i32 @llvm.ctpop.i32(i32 %428) #16
  %430 = trunc i32 %429 to i8
  %431 = and i8 %430, 1
  %432 = xor i8 %431, 1
  %433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %432, i8* %433, align 1, !tbaa !2446
  %434 = icmp eq i64 %425, 0
  %435 = zext i1 %434 to i8
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %435, i8* %436, align 1, !tbaa !2447
  %437 = lshr i64 %425, 63
  %438 = trunc i64 %437 to i8
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %438, i8* %439, align 1, !tbaa !2448
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %440, align 1, !tbaa !2449
  %441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %441, align 1, !tbaa !2450
  %442 = load i64, i64* %RCX
  %443 = load i64, i64* %PC
  %444 = add i64 %443, 8
  store i64 %444, i64* %PC
  store i64 %442, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602050__data_type* @seg_602050__data to i64), i64 16) to i64*)
  %445 = load i64, i64* %RBP
  %446 = sub i64 %445, 16
  %447 = load i64, i64* %PC
  %448 = add i64 %447, 4
  store i64 %448, i64* %PC
  %449 = inttoptr i64 %446 to i64*
  %450 = load i64, i64* %449
  store i64 %450, i64* %RCX, align 8, !tbaa !2428
  %451 = load i64, i64* %RCX
  %452 = load i64, i64* %PC
  %453 = add i64 %452, 3
  store i64 %453, i64* %PC
  store i64 %451, i64* %RAX, align 8, !tbaa !2428
  %454 = load i64, i64* %PC
  %455 = add i64 %454, 1
  store i64 %455, i64* %PC
  %456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %457 = load i64, i64* %456, align 8, !tbaa !2428
  %458 = add i64 %457, 8
  %459 = inttoptr i64 %457 to i64*
  %460 = load i64, i64* %459
  store i64 %460, i64* %RBP, align 8, !tbaa !2428
  store i64 %458, i64* %456, align 8, !tbaa !2428
  %461 = load i64, i64* %PC
  %462 = add i64 %461, 1
  store i64 %462, i64* %PC
  %463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %465 = load i64, i64* %464, align 8, !tbaa !2428
  %466 = inttoptr i64 %465 to i64*
  %467 = load i64, i64* %466
  store i64 %467, i64* %463, align 8, !tbaa !2428
  %468 = add i64 %465, 8
  store i64 %468, i64* %464, align 8, !tbaa !2428
  ret %struct.Memory* %412
}

; Function Attrs: noinline
define %struct.Memory* @sub_4013b0_heap_adjust(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  %16 = getelementptr inbounds %struct.GPR, %struct.GPR* %15, i32 0, i32 9
  %17 = getelementptr inbounds %struct.Reg, %struct.Reg* %16, i32 0, i32 0
  %ESI = bitcast %union.anon* %17 to i32*
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
  %39 = load i64, i64* %RBP
  %40 = load i64, i64* %PC
  %41 = add i64 %40, 1
  store i64 %41, i64* %PC
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %43 = load i64, i64* %42, align 8, !tbaa !2428
  %44 = add i64 %43, -8
  %45 = inttoptr i64 %44 to i64*
  store i64 %39, i64* %45
  store i64 %44, i64* %42, align 8, !tbaa !2428
  %46 = load i64, i64* %RSP
  %47 = load i64, i64* %PC
  %48 = add i64 %47, 3
  store i64 %48, i64* %PC
  store i64 %46, i64* %RBP, align 8, !tbaa !2428
  %49 = load i64, i64* %RBP
  %50 = sub i64 %49, 8
  %51 = load i64, i64* %RDI
  %52 = load i64, i64* %PC
  %53 = add i64 %52, 4
  store i64 %53, i64* %PC
  %54 = inttoptr i64 %50 to i64*
  store i64 %51, i64* %54
  %55 = load i64, i64* %RBP
  %56 = sub i64 %55, 16
  %57 = load i64, i64* %RSI
  %58 = load i64, i64* %PC
  %59 = add i64 %58, 4
  store i64 %59, i64* %PC
  %60 = inttoptr i64 %56 to i64*
  store i64 %57, i64* %60
  %61 = load i64, i64* %RBP
  %62 = sub i64 %61, 20
  %63 = load i32, i32* %EDX
  %64 = zext i32 %63 to i64
  %65 = load i64, i64* %PC
  %66 = add i64 %65, 3
  store i64 %66, i64* %PC
  %67 = inttoptr i64 %62 to i32*
  store i32 %63, i32* %67
  %68 = load i64, i64* %RBP
  %69 = sub i64 %68, 24
  %70 = load i32, i32* %ECX
  %71 = zext i32 %70 to i64
  %72 = load i64, i64* %PC
  %73 = add i64 %72, 3
  store i64 %73, i64* %PC
  %74 = inttoptr i64 %69 to i32*
  store i32 %70, i32* %74
  %75 = load i64, i64* %RBP
  %76 = sub i64 %75, 16
  %77 = load i64, i64* %PC
  %78 = add i64 %77, 4
  store i64 %78, i64* %PC
  %79 = inttoptr i64 %76 to i64*
  %80 = load i64, i64* %79
  store i64 %80, i64* %RSI, align 8, !tbaa !2428
  %81 = load i64, i64* %RSI
  %82 = load i64, i64* %PC
  %83 = add i64 %82, 4
  store i64 %83, i64* %PC
  %84 = add i64 -8, %81
  store i64 %84, i64* %RSI, align 8, !tbaa !2428
  %85 = icmp ult i64 %84, %81
  %86 = icmp ult i64 %84, -8
  %87 = or i1 %85, %86
  %88 = zext i1 %87 to i8
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %88, i8* %89, align 1, !tbaa !2432
  %90 = trunc i64 %84 to i32
  %91 = and i32 %90, 255
  %92 = call i32 @llvm.ctpop.i32(i32 %91) #16
  %93 = trunc i32 %92 to i8
  %94 = and i8 %93, 1
  %95 = xor i8 %94, 1
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %95, i8* %96, align 1, !tbaa !2446
  %97 = xor i64 -8, %81
  %98 = xor i64 %97, %84
  %99 = lshr i64 %98, 4
  %100 = trunc i64 %99 to i8
  %101 = and i8 %100, 1
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %101, i8* %102, align 1, !tbaa !2450
  %103 = icmp eq i64 %84, 0
  %104 = zext i1 %103 to i8
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %104, i8* %105, align 1, !tbaa !2447
  %106 = lshr i64 %84, 63
  %107 = trunc i64 %106 to i8
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %107, i8* %108, align 1, !tbaa !2448
  %109 = lshr i64 %81, 63
  %110 = xor i64 %106, %109
  %111 = xor i64 %106, 1
  %112 = add nuw nsw i64 %110, %111
  %113 = icmp eq i64 %112, 2
  %114 = zext i1 %113 to i8
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %114, i8* %115, align 1, !tbaa !2449
  %116 = load i64, i64* %RBP
  %117 = sub i64 %116, 16
  %118 = load i64, i64* %RSI
  %119 = load i64, i64* %PC
  %120 = add i64 %119, 4
  store i64 %120, i64* %PC
  %121 = inttoptr i64 %117 to i64*
  store i64 %118, i64* %121
  %122 = load i64, i64* %RBP
  %123 = sub i64 %122, 16
  %124 = load i64, i64* %PC
  %125 = add i64 %124, 4
  store i64 %125, i64* %PC
  %126 = inttoptr i64 %123 to i64*
  %127 = load i64, i64* %126
  store i64 %127, i64* %RSI, align 8, !tbaa !2428
  %128 = load i64, i64* %RBP
  %129 = sub i64 %128, 24
  %130 = load i64, i64* %PC
  %131 = add i64 %130, 4
  store i64 %131, i64* %PC
  %132 = inttoptr i64 %129 to i32*
  %133 = load i32, i32* %132
  %134 = sext i32 %133 to i64
  store i64 %134, i64* %RDI, align 8, !tbaa !2428
  %135 = load i64, i64* %RSI
  %136 = load i64, i64* %RDI
  %137 = mul i64 %136, 8
  %138 = add i64 %137, %135
  %139 = load i64, i64* %PC
  %140 = add i64 %139, 4
  store i64 %140, i64* %PC
  %141 = inttoptr i64 %138 to i64*
  %142 = load i64, i64* %141
  store i64 %142, i64* %RSI, align 8, !tbaa !2428
  %143 = load i32, i32* %ESI
  %144 = zext i32 %143 to i64
  %145 = load i64, i64* %PC
  %146 = add i64 %145, 2
  store i64 %146, i64* %PC
  %147 = and i64 %144, 4294967295
  store i64 %147, i64* %RCX, align 8, !tbaa !2428
  %148 = load i64, i64* %RBP
  %149 = sub i64 %148, 32
  %150 = load i32, i32* %ECX
  %151 = zext i32 %150 to i64
  %152 = load i64, i64* %PC
  %153 = add i64 %152, 3
  store i64 %153, i64* %PC
  %154 = inttoptr i64 %149 to i32*
  store i32 %150, i32* %154
  br label %block_4013df

block_40149c:                                     ; preds = %block_401474, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit
  %MEMORY.0 = phi %struct.Memory* [ %277, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ], [ %MEMORY.2, %block_401474 ]
  %155 = load i64, i64* %RBP
  %156 = sub i64 %155, 32
  %157 = load i64, i64* %PC
  %158 = add i64 %157, 4
  store i64 %158, i64* %PC
  %159 = inttoptr i64 %156 to i32*
  %160 = load i32, i32* %159
  %161 = sext i32 %160 to i64
  store i64 %161, i64* %RAX, align 8, !tbaa !2428
  %162 = load i64, i64* %RBP
  %163 = sub i64 %162, 16
  %164 = load i64, i64* %PC
  %165 = add i64 %164, 4
  store i64 %165, i64* %PC
  %166 = inttoptr i64 %163 to i64*
  %167 = load i64, i64* %166
  store i64 %167, i64* %RCX, align 8, !tbaa !2428
  %168 = load i64, i64* %RBP
  %169 = sub i64 %168, 24
  %170 = load i64, i64* %PC
  %171 = add i64 %170, 4
  store i64 %171, i64* %PC
  %172 = inttoptr i64 %169 to i32*
  %173 = load i32, i32* %172
  %174 = sext i32 %173 to i64
  store i64 %174, i64* %RDX, align 8, !tbaa !2428
  %175 = load i64, i64* %RCX
  %176 = load i64, i64* %RDX
  %177 = mul i64 %176, 8
  %178 = add i64 %177, %175
  %179 = load i64, i64* %RAX
  %180 = load i64, i64* %PC
  %181 = add i64 %180, 4
  store i64 %181, i64* %PC
  %182 = inttoptr i64 %178 to i64*
  store i64 %179, i64* %182
  %183 = load i64, i64* %PC
  %184 = add i64 %183, 1
  store i64 %184, i64* %PC
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %186 = load i64, i64* %185, align 8, !tbaa !2428
  %187 = add i64 %186, 8
  %188 = inttoptr i64 %186 to i64*
  %189 = load i64, i64* %188
  store i64 %189, i64* %RBP, align 8, !tbaa !2428
  store i64 %187, i64* %185, align 8, !tbaa !2428
  %190 = load i64, i64* %PC
  %191 = add i64 %190, 1
  store i64 %191, i64* %PC
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %194 = load i64, i64* %193, align 8, !tbaa !2428
  %195 = inttoptr i64 %194 to i64*
  %196 = load i64, i64* %195
  store i64 %196, i64* %192, align 8, !tbaa !2428
  %197 = add i64 %194, 8
  store i64 %197, i64* %193, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_4013df:                                     ; preds = %block_401479, %block_4013b0
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_4013b0 ], [ %MEMORY.2, %block_401479 ]
  %198 = load i64, i64* %PC
  %199 = add i64 %198, 5
  store i64 %199, i64* %PC
  store i64 2, i64* %RAX, align 8, !tbaa !2428
  %200 = load i64, i64* %RBP
  %201 = sub i64 %200, 24
  %202 = load i64, i64* %PC
  %203 = add i64 %202, 3
  store i64 %203, i64* %PC
  %204 = inttoptr i64 %201 to i32*
  %205 = load i32, i32* %204
  %206 = zext i32 %205 to i64
  store i64 %206, i64* %RCX, align 8, !tbaa !2428
  %207 = load i64, i64* %RBP
  %208 = sub i64 %207, 20
  %209 = load i64, i64* %PC
  %210 = add i64 %209, 3
  store i64 %210, i64* %PC
  %211 = inttoptr i64 %208 to i32*
  %212 = load i32, i32* %211
  %213 = zext i32 %212 to i64
  store i64 %213, i64* %RDX, align 8, !tbaa !2428
  %214 = load i64, i64* %RBP
  %215 = sub i64 %214, 36
  %216 = load i32, i32* %EAX
  %217 = zext i32 %216 to i64
  %218 = load i64, i64* %PC
  %219 = add i64 %218, 3
  store i64 %219, i64* %PC
  %220 = inttoptr i64 %215 to i32*
  store i32 %216, i32* %220
  %221 = load i32, i32* %EDX
  %222 = zext i32 %221 to i64
  %223 = load i64, i64* %PC
  %224 = add i64 %223, 2
  store i64 %224, i64* %PC
  %225 = and i64 %222, 4294967295
  store i64 %225, i64* %RAX, align 8, !tbaa !2428
  %226 = load i64, i64* %PC
  %227 = add i64 %226, 1
  store i64 %227, i64* %PC
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %230 = bitcast %union.anon* %229 to i32*
  %231 = load i32, i32* %230, align 8, !tbaa !2454
  %232 = sext i32 %231 to i64
  %233 = lshr i64 %232, 32
  store i64 %233, i64* %228, align 8, !tbaa !2428
  %234 = load i64, i64* %RBP
  %235 = sub i64 %234, 36
  %236 = load i64, i64* %PC
  %237 = add i64 %236, 3
  store i64 %237, i64* %PC
  %238 = inttoptr i64 %235 to i32*
  %239 = load i32, i32* %238
  %240 = zext i32 %239 to i64
  store i64 %240, i64* %RSI, align 8, !tbaa !2428
  %241 = load i32, i32* %ESI
  %242 = zext i32 %241 to i64
  %243 = load i64, i64* %PC
  %244 = add i64 %243, 2
  store i64 %244, i64* %PC
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %246 = bitcast %union.anon* %245 to i32*
  %247 = load i32, i32* %246, align 8, !tbaa !2454
  %248 = zext i32 %247 to i64
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %250 = bitcast %union.anon* %249 to i32*
  %251 = load i32, i32* %250, align 8, !tbaa !2454
  %252 = zext i32 %251 to i64
  %253 = shl i64 %242, 32
  %254 = ashr exact i64 %253, 32
  %255 = shl nuw i64 %252, 32
  %256 = or i64 %255, %248
  %257 = sdiv i64 %256, %254
  %258 = shl i64 %257, 32
  %259 = ashr exact i64 %258, 32
  %260 = icmp eq i64 %257, %259
  br i1 %260, label %265, label %261

; <label>:261:                                    ; preds = %block_4013df
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %263 = load i64, i64* %262, align 8, !tbaa !2428
  %264 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %263, %struct.Memory* %MEMORY.1) #17
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:265:                                    ; preds = %block_4013df
  %266 = srem i64 %256, %254
  %267 = getelementptr inbounds %union.anon, %union.anon* %245, i64 0, i32 0
  %268 = and i64 %257, 4294967295
  store i64 %268, i64* %267, align 8, !tbaa !2428
  %269 = getelementptr inbounds %union.anon, %union.anon* %249, i64 0, i32 0
  %270 = and i64 %266, 4294967295
  store i64 %270, i64* %269, align 8, !tbaa !2428
  %271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %271, align 1, !tbaa !2432
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %272, align 1, !tbaa !2446
  %273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %273, align 1, !tbaa !2450
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %274, align 1, !tbaa !2447
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %275, align 1, !tbaa !2448
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %276, align 1, !tbaa !2449
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %261, %265
  %277 = phi %struct.Memory* [ %264, %261 ], [ %MEMORY.1, %265 ]
  %278 = load i32, i32* %ECX
  %279 = zext i32 %278 to i64
  %280 = load i32, i32* %EAX
  %281 = zext i32 %280 to i64
  %282 = load i64, i64* %PC
  %283 = add i64 %282, 2
  store i64 %283, i64* %PC
  %284 = sub i32 %278, %280
  %285 = icmp ult i32 %278, %280
  %286 = zext i1 %285 to i8
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %286, i8* %287, align 1, !tbaa !2432
  %288 = and i32 %284, 255
  %289 = call i32 @llvm.ctpop.i32(i32 %288) #16
  %290 = trunc i32 %289 to i8
  %291 = and i8 %290, 1
  %292 = xor i8 %291, 1
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %292, i8* %293, align 1, !tbaa !2446
  %294 = xor i64 %281, %279
  %295 = trunc i64 %294 to i32
  %296 = xor i32 %295, %284
  %297 = lshr i32 %296, 4
  %298 = trunc i32 %297 to i8
  %299 = and i8 %298, 1
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %299, i8* %300, align 1, !tbaa !2450
  %301 = icmp eq i32 %284, 0
  %302 = zext i1 %301 to i8
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %302, i8* %303, align 1, !tbaa !2447
  %304 = lshr i32 %284, 31
  %305 = trunc i32 %304 to i8
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %305, i8* %306, align 1, !tbaa !2448
  %307 = lshr i32 %278, 31
  %308 = lshr i32 %280, 31
  %309 = xor i32 %308, %307
  %310 = xor i32 %304, %307
  %311 = add nuw nsw i32 %310, %309
  %312 = icmp eq i32 %311, 2
  %313 = zext i1 %312 to i8
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %313, i8* %314, align 1, !tbaa !2449
  %315 = load i64, i64* %PC
  %316 = add i64 %315, 165
  %317 = load i64, i64* %PC
  %318 = add i64 %317, 6
  %319 = load i64, i64* %PC
  %320 = add i64 %319, 6
  store i64 %320, i64* %PC
  %321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %322 = load i8, i8* %321, align 1, !tbaa !2447
  %323 = icmp eq i8 %322, 0
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %325 = load i8, i8* %324, align 1, !tbaa !2448
  %326 = icmp ne i8 %325, 0
  %327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %328 = load i8, i8* %327, align 1, !tbaa !2449
  %329 = icmp ne i8 %328, 0
  %330 = xor i1 %326, %329
  %331 = xor i1 %330, true
  %332 = and i1 %323, %331
  %333 = zext i1 %332 to i8
  store i8 %333, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %335 = select i1 %332, i64 %316, i64 %318
  store i64 %335, i64* %334, align 8, !tbaa !2428
  %336 = load i8, i8* %BRANCH_TAKEN
  %337 = icmp eq i8 %336, 1
  br i1 %337, label %block_40149c, label %block_4013fd

block_401479:                                     ; preds = %block_40144e
  %338 = load i64, i64* %RBP
  %339 = sub i64 %338, 16
  %340 = load i64, i64* %PC
  %341 = add i64 %340, 4
  store i64 %341, i64* %PC
  %342 = inttoptr i64 %339 to i64*
  %343 = load i64, i64* %342
  store i64 %343, i64* %RAX, align 8, !tbaa !2428
  %344 = load i64, i64* %RBP
  %345 = sub i64 %344, 28
  %346 = load i64, i64* %PC
  %347 = add i64 %346, 4
  store i64 %347, i64* %PC
  %348 = inttoptr i64 %345 to i32*
  %349 = load i32, i32* %348
  %350 = sext i32 %349 to i64
  store i64 %350, i64* %RCX, align 8, !tbaa !2428
  %351 = load i64, i64* %RAX
  %352 = load i64, i64* %RCX
  %353 = mul i64 %352, 8
  %354 = add i64 %353, %351
  %355 = load i64, i64* %PC
  %356 = add i64 %355, 4
  store i64 %356, i64* %PC
  %357 = inttoptr i64 %354 to i64*
  %358 = load i64, i64* %357
  store i64 %358, i64* %RAX, align 8, !tbaa !2428
  %359 = load i64, i64* %RBP
  %360 = sub i64 %359, 16
  %361 = load i64, i64* %PC
  %362 = add i64 %361, 4
  store i64 %362, i64* %PC
  %363 = inttoptr i64 %360 to i64*
  %364 = load i64, i64* %363
  store i64 %364, i64* %RCX, align 8, !tbaa !2428
  %365 = load i64, i64* %RBP
  %366 = sub i64 %365, 24
  %367 = load i64, i64* %PC
  %368 = add i64 %367, 4
  store i64 %368, i64* %PC
  %369 = inttoptr i64 %366 to i32*
  %370 = load i32, i32* %369
  %371 = sext i32 %370 to i64
  store i64 %371, i64* %RDX, align 8, !tbaa !2428
  %372 = load i64, i64* %RCX
  %373 = load i64, i64* %RDX
  %374 = mul i64 %373, 8
  %375 = add i64 %374, %372
  %376 = load i64, i64* %RAX
  %377 = load i64, i64* %PC
  %378 = add i64 %377, 4
  store i64 %378, i64* %PC
  %379 = inttoptr i64 %375 to i64*
  store i64 %376, i64* %379
  %380 = load i64, i64* %RBP
  %381 = sub i64 %380, 28
  %382 = load i64, i64* %PC
  %383 = add i64 %382, 3
  store i64 %383, i64* %PC
  %384 = inttoptr i64 %381 to i32*
  %385 = load i32, i32* %384
  %386 = zext i32 %385 to i64
  store i64 %386, i64* %RSI, align 8, !tbaa !2428
  %387 = load i64, i64* %RBP
  %388 = sub i64 %387, 24
  %389 = load i32, i32* %ESI
  %390 = zext i32 %389 to i64
  %391 = load i64, i64* %PC
  %392 = add i64 %391, 3
  store i64 %392, i64* %PC
  %393 = inttoptr i64 %388 to i32*
  store i32 %389, i32* %393
  %394 = load i64, i64* %PC
  %395 = sub i64 %394, 184
  %396 = load i64, i64* %PC
  %397 = add i64 %396, 5
  store i64 %397, i64* %PC
  %398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %395, i64* %398, align 8, !tbaa !2428
  br label %block_4013df

block_401474:                                     ; preds = %block_40144e
  %399 = load i64, i64* %PC
  %400 = add i64 %399, 40
  %401 = load i64, i64* %PC
  %402 = add i64 %401, 5
  store i64 %402, i64* %PC
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %400, i64* %403, align 8, !tbaa !2428
  br label %block_40149c

block_401412:                                     ; preds = %block_4013fd
  %404 = load i64, i64* %RBP
  %405 = sub i64 %404, 8
  %406 = load i64, i64* %PC
  %407 = add i64 %406, 4
  store i64 %407, i64* %PC
  %408 = inttoptr i64 %405 to i64*
  %409 = load i64, i64* %408
  store i64 %409, i64* %RAX, align 8, !tbaa !2428
  %410 = load i64, i64* %RBP
  %411 = sub i64 %410, 16
  %412 = load i64, i64* %PC
  %413 = add i64 %412, 4
  store i64 %413, i64* %PC
  %414 = inttoptr i64 %411 to i64*
  %415 = load i64, i64* %414
  store i64 %415, i64* %RCX, align 8, !tbaa !2428
  %416 = load i64, i64* %RBP
  %417 = sub i64 %416, 28
  %418 = load i64, i64* %PC
  %419 = add i64 %418, 4
  store i64 %419, i64* %PC
  %420 = inttoptr i64 %417 to i32*
  %421 = load i32, i32* %420
  %422 = sext i32 %421 to i64
  store i64 %422, i64* %RDX, align 8, !tbaa !2428
  %423 = load i64, i64* %RCX
  %424 = load i64, i64* %RDX
  %425 = mul i64 %424, 8
  %426 = add i64 %425, %423
  %427 = load i64, i64* %PC
  %428 = add i64 %427, 4
  store i64 %428, i64* %PC
  %429 = inttoptr i64 %426 to i64*
  %430 = load i64, i64* %429
  store i64 %430, i64* %RCX, align 8, !tbaa !2428
  %431 = load i64, i64* %RAX
  %432 = load i64, i64* %RCX
  %433 = mul i64 %432, 8
  %434 = add i64 %433, %431
  %435 = load i64, i64* %PC
  %436 = add i64 %435, 4
  store i64 %436, i64* %PC
  %437 = inttoptr i64 %434 to i64*
  %438 = load i64, i64* %437
  store i64 %438, i64* %RAX, align 8, !tbaa !2428
  %439 = load i64, i64* %RBP
  %440 = sub i64 %439, 8
  %441 = load i64, i64* %PC
  %442 = add i64 %441, 4
  store i64 %442, i64* %PC
  %443 = inttoptr i64 %440 to i64*
  %444 = load i64, i64* %443
  store i64 %444, i64* %RCX, align 8, !tbaa !2428
  %445 = load i64, i64* %RBP
  %446 = sub i64 %445, 16
  %447 = load i64, i64* %PC
  %448 = add i64 %447, 4
  store i64 %448, i64* %PC
  %449 = inttoptr i64 %446 to i64*
  %450 = load i64, i64* %449
  store i64 %450, i64* %RDX, align 8, !tbaa !2428
  %451 = load i64, i64* %RBP
  %452 = sub i64 %451, 28
  %453 = load i64, i64* %PC
  %454 = add i64 %453, 3
  store i64 %454, i64* %PC
  %455 = inttoptr i64 %452 to i32*
  %456 = load i32, i32* %455
  %457 = zext i32 %456 to i64
  store i64 %457, i64* %RSI, align 8, !tbaa !2428
  %458 = load i64, i64* %RSI
  %459 = load i64, i64* %PC
  %460 = add i64 %459, 3
  store i64 %460, i64* %PC
  %461 = trunc i64 %458 to i32
  %462 = add i32 1, %461
  %463 = zext i32 %462 to i64
  store i64 %463, i64* %RSI, align 8, !tbaa !2428
  %464 = icmp ult i32 %462, %461
  %465 = icmp ult i32 %462, 1
  %466 = or i1 %464, %465
  %467 = zext i1 %466 to i8
  %468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %467, i8* %468, align 1, !tbaa !2432
  %469 = and i32 %462, 255
  %470 = call i32 @llvm.ctpop.i32(i32 %469) #16
  %471 = trunc i32 %470 to i8
  %472 = and i8 %471, 1
  %473 = xor i8 %472, 1
  %474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %473, i8* %474, align 1, !tbaa !2446
  %475 = xor i64 1, %458
  %476 = trunc i64 %475 to i32
  %477 = xor i32 %476, %462
  %478 = lshr i32 %477, 4
  %479 = trunc i32 %478 to i8
  %480 = and i8 %479, 1
  %481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %480, i8* %481, align 1, !tbaa !2450
  %482 = icmp eq i32 %462, 0
  %483 = zext i1 %482 to i8
  %484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %483, i8* %484, align 1, !tbaa !2447
  %485 = lshr i32 %462, 31
  %486 = trunc i32 %485 to i8
  %487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %486, i8* %487, align 1, !tbaa !2448
  %488 = lshr i32 %461, 31
  %489 = xor i32 %485, %488
  %490 = add nuw nsw i32 %489, %485
  %491 = icmp eq i32 %490, 2
  %492 = zext i1 %491 to i8
  %493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %492, i8* %493, align 1, !tbaa !2449
  %494 = load i32, i32* %ESI
  %495 = zext i32 %494 to i64
  %496 = load i64, i64* %PC
  %497 = add i64 %496, 3
  store i64 %497, i64* %PC
  %498 = shl i64 %495, 32
  %499 = ashr exact i64 %498, 32
  store i64 %499, i64* %RDI, align 8, !tbaa !2428
  %500 = load i64, i64* %RDX
  %501 = load i64, i64* %RDI
  %502 = mul i64 %501, 8
  %503 = add i64 %502, %500
  %504 = load i64, i64* %PC
  %505 = add i64 %504, 4
  store i64 %505, i64* %PC
  %506 = inttoptr i64 %503 to i64*
  %507 = load i64, i64* %506
  store i64 %507, i64* %RDX, align 8, !tbaa !2428
  %508 = load i64, i64* %RAX
  %509 = load i64, i64* %RCX
  %510 = load i64, i64* %RDX
  %511 = mul i64 %510, 8
  %512 = add i64 %511, %509
  %513 = load i64, i64* %PC
  %514 = add i64 %513, 4
  store i64 %514, i64* %PC
  %515 = inttoptr i64 %512 to i64*
  %516 = load i64, i64* %515
  %517 = sub i64 %508, %516
  %518 = icmp ugt i64 %516, %508
  %519 = zext i1 %518 to i8
  %520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %519, i8* %520, align 1, !tbaa !2432
  %521 = trunc i64 %517 to i32
  %522 = and i32 %521, 255
  %523 = call i32 @llvm.ctpop.i32(i32 %522) #16
  %524 = trunc i32 %523 to i8
  %525 = and i8 %524, 1
  %526 = xor i8 %525, 1
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %526, i8* %527, align 1, !tbaa !2446
  %528 = xor i64 %516, %508
  %529 = xor i64 %528, %517
  %530 = lshr i64 %529, 4
  %531 = trunc i64 %530 to i8
  %532 = and i8 %531, 1
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %532, i8* %533, align 1, !tbaa !2450
  %534 = icmp eq i64 %517, 0
  %535 = zext i1 %534 to i8
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %535, i8* %536, align 1, !tbaa !2447
  %537 = lshr i64 %517, 63
  %538 = trunc i64 %537 to i8
  %539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %538, i8* %539, align 1, !tbaa !2448
  %540 = lshr i64 %508, 63
  %541 = lshr i64 %516, 63
  %542 = xor i64 %541, %540
  %543 = xor i64 %537, %540
  %544 = add nuw nsw i64 %543, %542
  %545 = icmp eq i64 %544, 2
  %546 = zext i1 %545 to i8
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %546, i8* %547, align 1, !tbaa !2449
  %548 = load i64, i64* %PC
  %549 = add i64 %548, 15
  %550 = load i64, i64* %PC
  %551 = add i64 %550, 6
  %552 = load i64, i64* %PC
  %553 = add i64 %552, 6
  store i64 %553, i64* %PC
  %554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %555 = load i8, i8* %554, align 1, !tbaa !2432
  %556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %557 = load i8, i8* %556, align 1, !tbaa !2447
  %558 = or i8 %557, %555
  %559 = icmp ne i8 %558, 0
  %560 = zext i1 %559 to i8
  store i8 %560, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %562 = select i1 %559, i64 %549, i64 %551
  store i64 %562, i64* %561, align 8, !tbaa !2428
  %563 = load i8, i8* %BRANCH_TAKEN
  %564 = icmp eq i8 %563, 1
  br i1 %564, label %block_40144e, label %block_401445

block_4013fd:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit
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
  %573 = load i64, i64* %RBP
  %574 = sub i64 %573, 24
  %575 = load i64, i64* %PC
  %576 = add i64 %575, 3
  store i64 %576, i64* %PC
  %577 = trunc i64 %572 to i32
  %578 = inttoptr i64 %574 to i32*
  %579 = load i32, i32* %578
  %580 = add i32 %579, %577
  %581 = zext i32 %580 to i64
  store i64 %581, i64* %RAX, align 8, !tbaa !2428
  %582 = icmp ult i32 %580, %577
  %583 = icmp ult i32 %580, %579
  %584 = or i1 %582, %583
  %585 = zext i1 %584 to i8
  %586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %585, i8* %586, align 1, !tbaa !2432
  %587 = and i32 %580, 255
  %588 = call i32 @llvm.ctpop.i32(i32 %587) #16
  %589 = trunc i32 %588 to i8
  %590 = and i8 %589, 1
  %591 = xor i8 %590, 1
  %592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %591, i8* %592, align 1, !tbaa !2446
  %593 = xor i32 %579, %577
  %594 = xor i32 %593, %580
  %595 = lshr i32 %594, 4
  %596 = trunc i32 %595 to i8
  %597 = and i8 %596, 1
  %598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %597, i8* %598, align 1, !tbaa !2450
  %599 = icmp eq i32 %580, 0
  %600 = zext i1 %599 to i8
  %601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %600, i8* %601, align 1, !tbaa !2447
  %602 = lshr i32 %580, 31
  %603 = trunc i32 %602 to i8
  %604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %603, i8* %604, align 1, !tbaa !2448
  %605 = lshr i32 %577, 31
  %606 = lshr i32 %579, 31
  %607 = xor i32 %602, %605
  %608 = xor i32 %602, %606
  %609 = add nuw nsw i32 %607, %608
  %610 = icmp eq i32 %609, 2
  %611 = zext i1 %610 to i8
  %612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %611, i8* %612, align 1, !tbaa !2449
  %613 = load i64, i64* %RBP
  %614 = sub i64 %613, 28
  %615 = load i32, i32* %EAX
  %616 = zext i32 %615 to i64
  %617 = load i64, i64* %PC
  %618 = add i64 %617, 3
  store i64 %618, i64* %PC
  %619 = inttoptr i64 %614 to i32*
  store i32 %615, i32* %619
  %620 = load i64, i64* %RBP
  %621 = sub i64 %620, 28
  %622 = load i64, i64* %PC
  %623 = add i64 %622, 3
  store i64 %623, i64* %PC
  %624 = inttoptr i64 %621 to i32*
  %625 = load i32, i32* %624
  %626 = zext i32 %625 to i64
  store i64 %626, i64* %RAX, align 8, !tbaa !2428
  %627 = load i32, i32* %EAX
  %628 = zext i32 %627 to i64
  %629 = load i64, i64* %RBP
  %630 = sub i64 %629, 20
  %631 = load i64, i64* %PC
  %632 = add i64 %631, 3
  store i64 %632, i64* %PC
  %633 = inttoptr i64 %630 to i32*
  %634 = load i32, i32* %633
  %635 = sub i32 %627, %634
  %636 = icmp ult i32 %627, %634
  %637 = zext i1 %636 to i8
  %638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %637, i8* %638, align 1, !tbaa !2432
  %639 = and i32 %635, 255
  %640 = call i32 @llvm.ctpop.i32(i32 %639) #16
  %641 = trunc i32 %640 to i8
  %642 = and i8 %641, 1
  %643 = xor i8 %642, 1
  %644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %643, i8* %644, align 1, !tbaa !2446
  %645 = xor i32 %634, %627
  %646 = xor i32 %645, %635
  %647 = lshr i32 %646, 4
  %648 = trunc i32 %647 to i8
  %649 = and i8 %648, 1
  %650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %649, i8* %650, align 1, !tbaa !2450
  %651 = icmp eq i32 %635, 0
  %652 = zext i1 %651 to i8
  %653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %652, i8* %653, align 1, !tbaa !2447
  %654 = lshr i32 %635, 31
  %655 = trunc i32 %654 to i8
  %656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %655, i8* %656, align 1, !tbaa !2448
  %657 = lshr i32 %627, 31
  %658 = lshr i32 %634, 31
  %659 = xor i32 %658, %657
  %660 = xor i32 %654, %657
  %661 = add nuw nsw i32 %660, %659
  %662 = icmp eq i32 %661, 2
  %663 = zext i1 %662 to i8
  %664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %663, i8* %664, align 1, !tbaa !2449
  %665 = load i64, i64* %PC
  %666 = add i64 %665, 66
  %667 = load i64, i64* %PC
  %668 = add i64 %667, 6
  %669 = load i64, i64* %PC
  %670 = add i64 %669, 6
  store i64 %670, i64* %PC
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %672 = load i8, i8* %671, align 1, !tbaa !2448
  %673 = icmp ne i8 %672, 0
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %675 = load i8, i8* %674, align 1, !tbaa !2449
  %676 = icmp ne i8 %675, 0
  %677 = xor i1 %673, %676
  %678 = xor i1 %677, true
  %679 = zext i1 %678 to i8
  store i8 %679, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %681 = select i1 %677, i64 %668, i64 %666
  store i64 %681, i64* %680, align 8, !tbaa !2428
  %682 = load i8, i8* %BRANCH_TAKEN
  %683 = icmp eq i8 %682, 1
  br i1 %683, label %block_40144e, label %block_401412

block_40144e:                                     ; preds = %block_401445, %block_4013fd, %block_401412
  %MEMORY.2 = phi %struct.Memory* [ %277, %block_4013fd ], [ %277, %block_401412 ], [ %277, %block_401445 ]
  %684 = load i64, i64* %RBP
  %685 = sub i64 %684, 8
  %686 = load i64, i64* %PC
  %687 = add i64 %686, 4
  store i64 %687, i64* %PC
  %688 = inttoptr i64 %685 to i64*
  %689 = load i64, i64* %688
  store i64 %689, i64* %RAX, align 8, !tbaa !2428
  %690 = load i64, i64* %RBP
  %691 = sub i64 %690, 32
  %692 = load i64, i64* %PC
  %693 = add i64 %692, 4
  store i64 %693, i64* %PC
  %694 = inttoptr i64 %691 to i32*
  %695 = load i32, i32* %694
  %696 = sext i32 %695 to i64
  store i64 %696, i64* %RCX, align 8, !tbaa !2428
  %697 = load i64, i64* %RAX
  %698 = load i64, i64* %RCX
  %699 = mul i64 %698, 8
  %700 = add i64 %699, %697
  %701 = load i64, i64* %PC
  %702 = add i64 %701, 4
  store i64 %702, i64* %PC
  %703 = inttoptr i64 %700 to i64*
  %704 = load i64, i64* %703
  store i64 %704, i64* %RAX, align 8, !tbaa !2428
  %705 = load i64, i64* %RBP
  %706 = sub i64 %705, 8
  %707 = load i64, i64* %PC
  %708 = add i64 %707, 4
  store i64 %708, i64* %PC
  %709 = inttoptr i64 %706 to i64*
  %710 = load i64, i64* %709
  store i64 %710, i64* %RCX, align 8, !tbaa !2428
  %711 = load i64, i64* %RBP
  %712 = sub i64 %711, 16
  %713 = load i64, i64* %PC
  %714 = add i64 %713, 4
  store i64 %714, i64* %PC
  %715 = inttoptr i64 %712 to i64*
  %716 = load i64, i64* %715
  store i64 %716, i64* %RDX, align 8, !tbaa !2428
  %717 = load i64, i64* %RBP
  %718 = sub i64 %717, 28
  %719 = load i64, i64* %PC
  %720 = add i64 %719, 4
  store i64 %720, i64* %PC
  %721 = inttoptr i64 %718 to i32*
  %722 = load i32, i32* %721
  %723 = sext i32 %722 to i64
  store i64 %723, i64* %RSI, align 8, !tbaa !2428
  %724 = load i64, i64* %RDX
  %725 = load i64, i64* %RSI
  %726 = mul i64 %725, 8
  %727 = add i64 %726, %724
  %728 = load i64, i64* %PC
  %729 = add i64 %728, 4
  store i64 %729, i64* %PC
  %730 = inttoptr i64 %727 to i64*
  %731 = load i64, i64* %730
  store i64 %731, i64* %RDX, align 8, !tbaa !2428
  %732 = load i64, i64* %RAX
  %733 = load i64, i64* %RCX
  %734 = load i64, i64* %RDX
  %735 = mul i64 %734, 8
  %736 = add i64 %735, %733
  %737 = load i64, i64* %PC
  %738 = add i64 %737, 4
  store i64 %738, i64* %PC
  %739 = inttoptr i64 %736 to i64*
  %740 = load i64, i64* %739
  %741 = sub i64 %732, %740
  %742 = icmp ugt i64 %740, %732
  %743 = zext i1 %742 to i8
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %743, i8* %744, align 1, !tbaa !2432
  %745 = trunc i64 %741 to i32
  %746 = and i32 %745, 255
  %747 = call i32 @llvm.ctpop.i32(i32 %746) #16
  %748 = trunc i32 %747 to i8
  %749 = and i8 %748, 1
  %750 = xor i8 %749, 1
  %751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %750, i8* %751, align 1, !tbaa !2446
  %752 = xor i64 %740, %732
  %753 = xor i64 %752, %741
  %754 = lshr i64 %753, 4
  %755 = trunc i64 %754 to i8
  %756 = and i8 %755, 1
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %756, i8* %757, align 1, !tbaa !2450
  %758 = icmp eq i64 %741, 0
  %759 = zext i1 %758 to i8
  %760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %759, i8* %760, align 1, !tbaa !2447
  %761 = lshr i64 %741, 63
  %762 = trunc i64 %761 to i8
  %763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %762, i8* %763, align 1, !tbaa !2448
  %764 = lshr i64 %732, 63
  %765 = lshr i64 %740, 63
  %766 = xor i64 %765, %764
  %767 = xor i64 %761, %764
  %768 = add nuw nsw i64 %767, %766
  %769 = icmp eq i64 %768, 2
  %770 = zext i1 %769 to i8
  %771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %770, i8* %771, align 1, !tbaa !2449
  %772 = load i64, i64* %PC
  %773 = add i64 %772, 11
  %774 = load i64, i64* %PC
  %775 = add i64 %774, 6
  %776 = load i64, i64* %PC
  %777 = add i64 %776, 6
  store i64 %777, i64* %PC
  %778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %779 = load i8, i8* %778, align 1, !tbaa !2432
  %780 = icmp eq i8 %779, 0
  %781 = zext i1 %780 to i8
  store i8 %781, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %783 = select i1 %780, i64 %773, i64 %775
  store i64 %783, i64* %782, align 8, !tbaa !2428
  %784 = load i8, i8* %BRANCH_TAKEN
  %785 = icmp eq i8 %784, 1
  br i1 %785, label %block_401479, label %block_401474

block_401445:                                     ; preds = %block_401412
  %786 = load i64, i64* %RBP
  %787 = sub i64 %786, 28
  %788 = load i64, i64* %PC
  %789 = add i64 %788, 3
  store i64 %789, i64* %PC
  %790 = inttoptr i64 %787 to i32*
  %791 = load i32, i32* %790
  %792 = zext i32 %791 to i64
  store i64 %792, i64* %RAX, align 8, !tbaa !2428
  %793 = load i64, i64* %RAX
  %794 = load i64, i64* %PC
  %795 = add i64 %794, 3
  store i64 %795, i64* %PC
  %796 = trunc i64 %793 to i32
  %797 = add i32 1, %796
  %798 = zext i32 %797 to i64
  store i64 %798, i64* %RAX, align 8, !tbaa !2428
  %799 = icmp ult i32 %797, %796
  %800 = icmp ult i32 %797, 1
  %801 = or i1 %799, %800
  %802 = zext i1 %801 to i8
  %803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %802, i8* %803, align 1, !tbaa !2432
  %804 = and i32 %797, 255
  %805 = call i32 @llvm.ctpop.i32(i32 %804) #16
  %806 = trunc i32 %805 to i8
  %807 = and i8 %806, 1
  %808 = xor i8 %807, 1
  %809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %808, i8* %809, align 1, !tbaa !2446
  %810 = xor i64 1, %793
  %811 = trunc i64 %810 to i32
  %812 = xor i32 %811, %797
  %813 = lshr i32 %812, 4
  %814 = trunc i32 %813 to i8
  %815 = and i8 %814, 1
  %816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %815, i8* %816, align 1, !tbaa !2450
  %817 = icmp eq i32 %797, 0
  %818 = zext i1 %817 to i8
  %819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %818, i8* %819, align 1, !tbaa !2447
  %820 = lshr i32 %797, 31
  %821 = trunc i32 %820 to i8
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %821, i8* %822, align 1, !tbaa !2448
  %823 = lshr i32 %796, 31
  %824 = xor i32 %820, %823
  %825 = add nuw nsw i32 %824, %820
  %826 = icmp eq i32 %825, 2
  %827 = zext i1 %826 to i8
  %828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %827, i8* %828, align 1, !tbaa !2449
  %829 = load i64, i64* %RBP
  %830 = sub i64 %829, 28
  %831 = load i32, i32* %EAX
  %832 = zext i32 %831 to i64
  %833 = load i64, i64* %PC
  %834 = add i64 %833, 3
  store i64 %834, i64* %PC
  %835 = inttoptr i64 %830 to i32*
  store i32 %831, i32* %835
  br label %block_40144e
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
  %63 = xor i64 %59, %62
  %64 = add nuw nsw i64 %63, %62
  %65 = icmp eq i64 %64, 2
  %66 = zext i1 %65 to i8
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %66, i8* %67, align 1, !tbaa !2449
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
  store i8 %139, i8* %140, align 1, !tbaa !2450
  %141 = icmp eq i64 %122, 0
  %142 = zext i1 %141 to i8
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %142, i8* %143, align 1, !tbaa !2447
  %144 = lshr i64 %122, 63
  %145 = trunc i64 %144 to i8
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %145, i8* %146, align 1, !tbaa !2448
  %147 = lshr i64 %118, 63
  %148 = lshr i64 %119, 63
  %149 = xor i64 %144, %147
  %150 = xor i64 %144, %148
  %151 = add nuw nsw i64 %149, %150
  %152 = icmp eq i64 %151, 2
  %153 = zext i1 %152 to i8
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %153, i8* %154, align 1, !tbaa !2449
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
  %184 = load i8, i8* %183, align 1, !tbaa !2447
  store i8 %184, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %186 = icmp ne i8 %184, 0
  %187 = select i1 %186, i64 %178, i64 %180
  store i64 %187, i64* %185, align 8, !tbaa !2428
  %188 = load i8, i8* %BRANCH_TAKEN
  %189 = icmp eq i8 %188, 1
  br i1 %189, label %block_400718, label %block_400703

block_40071a:                                     ; preds = %block_40070d
  %190 = load i64, i64* %RAX
  %191 = load i64, i64* %RAX
  %192 = add i64 %191, %190
  %193 = load i16, i16* %AX
  %194 = zext i16 %193 to i64
  %195 = load i64, i64* %PC
  %196 = add i64 %195, 6
  store i64 %196, i64* %PC
  %197 = load i64, i64* %PC
  %198 = tail call %struct.Memory* @sub_400720___do_global_dtors_aux(%struct.State* %0, i64 %197, %struct.Memory* %2)
  ret %struct.Memory* %198

block_400715:                                     ; preds = %block_40070d
  %199 = load i64, i64* %RAX
  %200 = load i32, i32* %EAX
  %201 = zext i32 %200 to i64
  %202 = load i64, i64* %PC
  %203 = add i64 %202, 3
  store i64 %203, i64* %PC
  br label %block_400718

block_40070d:                                     ; preds = %block_400703
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
  store i64 6299752, i64* %RDI, align 8, !tbaa !2428
  %213 = load i64, i64* %RAX
  %214 = load i64, i64* %PC
  %215 = add i64 %214, 2
  store i64 %215, i64* %PC
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %213, i64* %216, align 8, !tbaa !2428
  %217 = load i64, i64* %PC
  switch i64 %217, label %269 [
    i64 4196122, label %block_40071a
    i64 4196117, label %block_400715
  ]

block_400718:                                     ; preds = %block_400703, %block_400715, %block_4006e0
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4006e0 ], [ %2, %block_400703 ], [ %2, %block_400715 ]
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

block_400703:                                     ; preds = %block_4006e0
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
  store i8 %249, i8* %250, align 1, !tbaa !2447
  %251 = lshr i64 %239, 63
  %252 = trunc i64 %251 to i8
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %252, i8* %253, align 1, !tbaa !2448
  %254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %254, align 1, !tbaa !2449
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %255, align 1, !tbaa !2450
  %256 = load i64, i64* %PC
  %257 = add i64 %256, 13
  %258 = load i64, i64* %PC
  %259 = add i64 %258, 2
  %260 = load i64, i64* %PC
  %261 = add i64 %260, 2
  store i64 %261, i64* %PC
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %263 = load i8, i8* %262, align 1, !tbaa !2447
  store i8 %263, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %265 = icmp ne i8 %263, 0
  %266 = select i1 %265, i64 %257, i64 %259
  store i64 %266, i64* %264, align 8, !tbaa !2428
  %267 = load i8, i8* %BRANCH_TAKEN
  %268 = icmp eq i8 %267, 1
  br i1 %268, label %block_400718, label %block_40070d

; <label>:269:                                    ; preds = %block_40070d
  %270 = load i64, i64* %PC
  %271 = tail call %struct.Memory* @__remill_jump(%struct.State* %0, i64 %270, %struct.Memory* %2)
  ret %struct.Memory* %271
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
define %struct.Memory* @sub_401654__term_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_401654:
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
define %struct.Memory* @sub_4005d8__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4005d8:
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
  store i8 %75, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %77 = icmp ne i8 %75, 0
  %78 = select i1 %77, i64 %69, i64 %71
  store i64 %78, i64* %76, align 8, !tbaa !2428
  %79 = load i8, i8* %BRANCH_TAKEN
  %80 = icmp eq i8 %79, 1
  br i1 %80, label %block_4005ea, label %block_4005e8

block_4005e8:                                     ; preds = %block_4005d8
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
  br label %block_4005ea

block_4005ea:                                     ; preds = %block_4005e8, %block_4005d8
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4005d8 ], [ %92, %block_4005e8 ]
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
  %14 = load i8, i8* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 40) to i8*)
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
  store i8 1, i8* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 40) to i8*)
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
define %struct.Memory* @sub_400760_generate_test_data(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400760:
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %EAX = bitcast %union.anon* %12 to i32*
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RAX = bitcast %union.anon* %15 to i64*
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %17 = getelementptr inbounds %struct.GPR, %struct.GPR* %16, i32 0, i32 5
  %18 = getelementptr inbounds %struct.Reg, %struct.Reg* %17, i32 0, i32 0
  %RCX = bitcast %union.anon* %18 to i64*
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %20 = getelementptr inbounds %struct.GPR, %struct.GPR* %19, i32 0, i32 11
  %21 = getelementptr inbounds %struct.Reg, %struct.Reg* %20, i32 0, i32 0
  %RDI = bitcast %union.anon* %21 to i64*
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %23 = getelementptr inbounds %struct.GPR, %struct.GPR* %22, i32 0, i32 13
  %24 = getelementptr inbounds %struct.Reg, %struct.Reg* %23, i32 0, i32 0
  %RSP = bitcast %union.anon* %24 to i64*
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %26 = getelementptr inbounds %struct.GPR, %struct.GPR* %25, i32 0, i32 15
  %27 = getelementptr inbounds %struct.Reg, %struct.Reg* %26, i32 0, i32 0
  %RBP = bitcast %union.anon* %27 to i64*
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
  %38 = load i64, i64* %RSP
  %39 = load i64, i64* %PC
  %40 = add i64 %39, 4
  store i64 %40, i64* %PC
  %41 = sub i64 %38, 48
  store i64 %41, i64* %RSP, align 8, !tbaa !2428
  %42 = icmp ult i64 %38, 48
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %43, i8* %44, align 1, !tbaa !2432
  %45 = trunc i64 %41 to i32
  %46 = and i32 %45, 255
  %47 = call i32 @llvm.ctpop.i32(i32 %46) #16
  %48 = trunc i32 %47 to i8
  %49 = and i8 %48, 1
  %50 = xor i8 %49, 1
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %50, i8* %51, align 1, !tbaa !2446
  %52 = xor i64 48, %38
  %53 = xor i64 %52, %41
  %54 = lshr i64 %53, 4
  %55 = trunc i64 %54 to i8
  %56 = and i8 %55, 1
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %56, i8* %57, align 1, !tbaa !2450
  %58 = icmp eq i64 %41, 0
  %59 = zext i1 %58 to i8
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %59, i8* %60, align 1, !tbaa !2447
  %61 = lshr i64 %41, 63
  %62 = trunc i64 %61 to i8
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %62, i8* %63, align 1, !tbaa !2448
  %64 = lshr i64 %38, 63
  %65 = xor i64 %61, %64
  %66 = add nuw nsw i64 %65, %64
  %67 = icmp eq i64 %66, 2
  %68 = zext i1 %67 to i8
  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %68, i8* %69, align 1, !tbaa !2449
  %70 = load i64, i64* %PC
  %71 = add i64 %70, 10
  store i64 %71, i64* %PC
  store i64 add (i64 ptrtoint (%seg_401660__rodata_type* @seg_401660__rodata to i64), i64 4), i64* %RAX, align 8, !tbaa !2428
  %72 = load i64, i64* %RBP
  %73 = sub i64 %72, 8
  %74 = load i64, i64* %RDI
  %75 = load i64, i64* %PC
  %76 = add i64 %75, 4
  store i64 %76, i64* %PC
  %77 = inttoptr i64 %73 to i64*
  store i64 %74, i64* %77
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
  store i64 %89, i64* %RDI, align 8, !tbaa !2428
  %90 = load i64, i64* %PC
  %91 = sub i64 %90, 318
  %92 = load i64, i64* %PC
  %93 = add i64 %92, 5
  %94 = load i64, i64* %PC
  %95 = add i64 %94, 5
  store i64 %95, i64* %PC
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %97 = load i64, i64* %96, align 8, !tbaa !2428
  %98 = add i64 %97, -8
  %99 = inttoptr i64 %98 to i64*
  store i64 %93, i64* %99
  store i64 %98, i64* %96, align 8, !tbaa !2428
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %91, i64* %100, align 8, !tbaa !2428
  %101 = load i64, i64* %PC
  %102 = call %struct.Memory* @ext_6020d8_malloc(%struct.State* %0, i64 %101, %struct.Memory* %2)
  %103 = load i64, i64* %RBP
  %104 = sub i64 %103, 24
  %105 = load i64, i64* %RAX
  %106 = load i64, i64* %PC
  %107 = add i64 %106, 4
  store i64 %107, i64* %PC
  %108 = inttoptr i64 %104 to i64*
  store i64 %105, i64* %108
  %109 = load i64, i64* %RBP
  %110 = sub i64 %109, 24
  %111 = load i64, i64* %PC
  %112 = add i64 %111, 4
  store i64 %112, i64* %PC
  %113 = inttoptr i64 %110 to i64*
  %114 = load i64, i64* %113
  store i64 %114, i64* %RAX, align 8, !tbaa !2428
  %115 = load i64, i64* %RBP
  %116 = sub i64 %115, 32
  %117 = load i64, i64* %RAX
  %118 = load i64, i64* %PC
  %119 = add i64 %118, 4
  store i64 %119, i64* %PC
  %120 = inttoptr i64 %116 to i64*
  store i64 %117, i64* %120
  %121 = load i64, i64* %RBP
  %122 = sub i64 %121, 36
  %123 = load i64, i64* %PC
  %124 = add i64 %123, 7
  store i64 %124, i64* %PC
  %125 = inttoptr i64 %122 to i32*
  store i32 0, i32* %125
  br label %block_400796

block_400796:                                     ; preds = %block_4007a4, %block_400760
  %MEMORY.0 = phi %struct.Memory* [ %102, %block_400760 ], [ %209, %block_4007a4 ]
  %126 = load i64, i64* %RBP
  %127 = sub i64 %126, 36
  %128 = load i64, i64* %PC
  %129 = add i64 %128, 4
  store i64 %129, i64* %PC
  %130 = inttoptr i64 %127 to i32*
  %131 = load i32, i32* %130
  %132 = sext i32 %131 to i64
  store i64 %132, i64* %RAX, align 8, !tbaa !2428
  %133 = load i64, i64* %RAX
  %134 = load i64, i64* %RBP
  %135 = sub i64 %134, 8
  %136 = load i64, i64* %PC
  %137 = add i64 %136, 4
  store i64 %137, i64* %PC
  %138 = inttoptr i64 %135 to i64*
  %139 = load i64, i64* %138
  %140 = sub i64 %133, %139
  %141 = icmp ugt i64 %139, %133
  %142 = zext i1 %141 to i8
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %142, i8* %143, align 1, !tbaa !2432
  %144 = trunc i64 %140 to i32
  %145 = and i32 %144, 255
  %146 = call i32 @llvm.ctpop.i32(i32 %145) #16
  %147 = trunc i32 %146 to i8
  %148 = and i8 %147, 1
  %149 = xor i8 %148, 1
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %149, i8* %150, align 1, !tbaa !2446
  %151 = xor i64 %139, %133
  %152 = xor i64 %151, %140
  %153 = lshr i64 %152, 4
  %154 = trunc i64 %153 to i8
  %155 = and i8 %154, 1
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %155, i8* %156, align 1, !tbaa !2450
  %157 = icmp eq i64 %140, 0
  %158 = zext i1 %157 to i8
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %158, i8* %159, align 1, !tbaa !2447
  %160 = lshr i64 %140, 63
  %161 = trunc i64 %160 to i8
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %161, i8* %162, align 1, !tbaa !2448
  %163 = lshr i64 %133, 63
  %164 = lshr i64 %139, 63
  %165 = xor i64 %164, %163
  %166 = xor i64 %160, %163
  %167 = add nuw nsw i64 %166, %165
  %168 = icmp eq i64 %167, 2
  %169 = zext i1 %168 to i8
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %169, i8* %170, align 1, !tbaa !2449
  %171 = load i64, i64* %PC
  %172 = add i64 %171, 58
  %173 = load i64, i64* %PC
  %174 = add i64 %173, 6
  %175 = load i64, i64* %PC
  %176 = add i64 %175, 6
  store i64 %176, i64* %PC
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %178 = load i8, i8* %177, align 1, !tbaa !2432
  %179 = icmp eq i8 %178, 0
  %180 = zext i1 %179 to i8
  store i8 %180, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %182 = select i1 %179, i64 %172, i64 %174
  store i64 %182, i64* %181, align 8, !tbaa !2428
  %183 = load i8, i8* %BRANCH_TAKEN
  %184 = icmp eq i8 %183, 1
  %185 = load i64, i64* %RBP
  br i1 %184, label %block_4007d8, label %block_4007a4

block_4007a4:                                     ; preds = %block_400796
  %186 = sub i64 %185, 16
  %187 = load i64, i64* %PC
  %188 = add i64 %187, 4
  store i64 %188, i64* %PC
  %189 = inttoptr i64 %186 to i64*
  %190 = load i64, i64* %189
  store i64 %190, i64* %RAX, align 8, !tbaa !2428
  %191 = load i64, i64* %RBP
  %192 = sub i64 %191, 48
  %193 = load i64, i64* %RAX
  %194 = load i64, i64* %PC
  %195 = add i64 %194, 4
  store i64 %195, i64* %PC
  %196 = inttoptr i64 %192 to i64*
  store i64 %193, i64* %196
  %197 = load i64, i64* %PC
  %198 = add i64 %197, 68
  %199 = load i64, i64* %PC
  %200 = add i64 %199, 5
  %201 = load i64, i64* %PC
  %202 = add i64 %201, 5
  store i64 %202, i64* %PC
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %204 = load i64, i64* %203, align 8, !tbaa !2428
  %205 = add i64 %204, -8
  %206 = inttoptr i64 %205 to i64*
  store i64 %200, i64* %206
  store i64 %205, i64* %203, align 8, !tbaa !2428
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %198, i64* %207, align 8, !tbaa !2428
  %208 = load i64, i64* %PC
  %209 = call %struct.Memory* @sub_4007f0_random4_renamed_(%struct.State* %0, i64 %208, %struct.Memory* %MEMORY.0)
  %210 = load i64, i64* %RBP
  %211 = sub i64 %210, 48
  %212 = load i64, i64* %PC
  %213 = add i64 %212, 4
  store i64 %213, i64* %PC
  %214 = inttoptr i64 %211 to i64*
  %215 = load i64, i64* %214
  store i64 %215, i64* %RCX, align 8, !tbaa !2428
  %216 = load i64, i64* %RCX
  %217 = load i64, i64* %RAX
  %218 = add i64 %217, %216
  %219 = load i64, i64* %PC
  %220 = add i64 %219, 3
  store i64 %220, i64* %PC
  %221 = inttoptr i64 %218 to i8*
  %222 = load i8, i8* %221
  store i8 %222, i8* %DL, align 1, !tbaa !2451
  %223 = load i64, i64* %RBP
  %224 = sub i64 %223, 32
  %225 = load i64, i64* %PC
  %226 = add i64 %225, 4
  store i64 %226, i64* %PC
  %227 = inttoptr i64 %224 to i64*
  %228 = load i64, i64* %227
  store i64 %228, i64* %RAX, align 8, !tbaa !2428
  %229 = load i64, i64* %RAX
  %230 = load i8, i8* %DL
  %231 = zext i8 %230 to i64
  %232 = load i64, i64* %PC
  %233 = add i64 %232, 2
  store i64 %233, i64* %PC
  %234 = inttoptr i64 %229 to i8*
  store i8 %230, i8* %234
  %235 = load i64, i64* %RBP
  %236 = sub i64 %235, 32
  %237 = load i64, i64* %PC
  %238 = add i64 %237, 4
  store i64 %238, i64* %PC
  %239 = inttoptr i64 %236 to i64*
  %240 = load i64, i64* %239
  store i64 %240, i64* %RAX, align 8, !tbaa !2428
  %241 = load i64, i64* %RAX
  %242 = load i64, i64* %PC
  %243 = add i64 %242, 4
  store i64 %243, i64* %PC
  %244 = add i64 1, %241
  store i64 %244, i64* %RAX, align 8, !tbaa !2428
  %245 = icmp ult i64 %244, %241
  %246 = icmp ult i64 %244, 1
  %247 = or i1 %245, %246
  %248 = zext i1 %247 to i8
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %248, i8* %249, align 1, !tbaa !2432
  %250 = trunc i64 %244 to i32
  %251 = and i32 %250, 255
  %252 = call i32 @llvm.ctpop.i32(i32 %251) #16
  %253 = trunc i32 %252 to i8
  %254 = and i8 %253, 1
  %255 = xor i8 %254, 1
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %255, i8* %256, align 1, !tbaa !2446
  %257 = xor i64 1, %241
  %258 = xor i64 %257, %244
  %259 = lshr i64 %258, 4
  %260 = trunc i64 %259 to i8
  %261 = and i8 %260, 1
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %261, i8* %262, align 1, !tbaa !2450
  %263 = icmp eq i64 %244, 0
  %264 = zext i1 %263 to i8
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %264, i8* %265, align 1, !tbaa !2447
  %266 = lshr i64 %244, 63
  %267 = trunc i64 %266 to i8
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %267, i8* %268, align 1, !tbaa !2448
  %269 = lshr i64 %241, 63
  %270 = xor i64 %266, %269
  %271 = add nuw nsw i64 %270, %266
  %272 = icmp eq i64 %271, 2
  %273 = zext i1 %272 to i8
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %273, i8* %274, align 1, !tbaa !2449
  %275 = load i64, i64* %RBP
  %276 = sub i64 %275, 32
  %277 = load i64, i64* %RAX
  %278 = load i64, i64* %PC
  %279 = add i64 %278, 4
  store i64 %279, i64* %PC
  %280 = inttoptr i64 %276 to i64*
  store i64 %277, i64* %280
  %281 = load i64, i64* %RBP
  %282 = sub i64 %281, 36
  %283 = load i64, i64* %PC
  %284 = add i64 %283, 3
  store i64 %284, i64* %PC
  %285 = inttoptr i64 %282 to i32*
  %286 = load i32, i32* %285
  %287 = zext i32 %286 to i64
  store i64 %287, i64* %RAX, align 8, !tbaa !2428
  %288 = load i64, i64* %RAX
  %289 = load i64, i64* %PC
  %290 = add i64 %289, 3
  store i64 %290, i64* %PC
  %291 = trunc i64 %288 to i32
  %292 = add i32 1, %291
  %293 = zext i32 %292 to i64
  store i64 %293, i64* %RAX, align 8, !tbaa !2428
  %294 = icmp ult i32 %292, %291
  %295 = icmp ult i32 %292, 1
  %296 = or i1 %294, %295
  %297 = zext i1 %296 to i8
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %297, i8* %298, align 1, !tbaa !2432
  %299 = and i32 %292, 255
  %300 = call i32 @llvm.ctpop.i32(i32 %299) #16
  %301 = trunc i32 %300 to i8
  %302 = and i8 %301, 1
  %303 = xor i8 %302, 1
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %303, i8* %304, align 1, !tbaa !2446
  %305 = xor i64 1, %288
  %306 = trunc i64 %305 to i32
  %307 = xor i32 %306, %292
  %308 = lshr i32 %307, 4
  %309 = trunc i32 %308 to i8
  %310 = and i8 %309, 1
  %311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %310, i8* %311, align 1, !tbaa !2450
  %312 = icmp eq i32 %292, 0
  %313 = zext i1 %312 to i8
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %313, i8* %314, align 1, !tbaa !2447
  %315 = lshr i32 %292, 31
  %316 = trunc i32 %315 to i8
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %316, i8* %317, align 1, !tbaa !2448
  %318 = lshr i32 %291, 31
  %319 = xor i32 %315, %318
  %320 = add nuw nsw i32 %319, %315
  %321 = icmp eq i32 %320, 2
  %322 = zext i1 %321 to i8
  %323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %322, i8* %323, align 1, !tbaa !2449
  %324 = load i64, i64* %RBP
  %325 = sub i64 %324, 36
  %326 = load i32, i32* %EAX
  %327 = zext i32 %326 to i64
  %328 = load i64, i64* %PC
  %329 = add i64 %328, 3
  store i64 %329, i64* %PC
  %330 = inttoptr i64 %325 to i32*
  store i32 %326, i32* %330
  %331 = load i64, i64* %PC
  %332 = sub i64 %331, 61
  %333 = load i64, i64* %PC
  %334 = add i64 %333, 5
  store i64 %334, i64* %PC
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %332, i64* %335, align 8, !tbaa !2428
  br label %block_400796

block_4007d8:                                     ; preds = %block_400796
  %336 = sub i64 %185, 24
  %337 = load i64, i64* %PC
  %338 = add i64 %337, 4
  store i64 %338, i64* %PC
  %339 = inttoptr i64 %336 to i64*
  %340 = load i64, i64* %339
  store i64 %340, i64* %RAX, align 8, !tbaa !2428
  %341 = load i64, i64* %RSP
  %342 = load i64, i64* %PC
  %343 = add i64 %342, 4
  store i64 %343, i64* %PC
  %344 = add i64 48, %341
  store i64 %344, i64* %RSP, align 8, !tbaa !2428
  %345 = icmp ult i64 %344, %341
  %346 = icmp ult i64 %344, 48
  %347 = or i1 %345, %346
  %348 = zext i1 %347 to i8
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %348, i8* %349, align 1, !tbaa !2432
  %350 = trunc i64 %344 to i32
  %351 = and i32 %350, 255
  %352 = call i32 @llvm.ctpop.i32(i32 %351) #16
  %353 = trunc i32 %352 to i8
  %354 = and i8 %353, 1
  %355 = xor i8 %354, 1
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %355, i8* %356, align 1, !tbaa !2446
  %357 = xor i64 48, %341
  %358 = xor i64 %357, %344
  %359 = lshr i64 %358, 4
  %360 = trunc i64 %359 to i8
  %361 = and i8 %360, 1
  %362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %361, i8* %362, align 1, !tbaa !2450
  %363 = icmp eq i64 %344, 0
  %364 = zext i1 %363 to i8
  %365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %364, i8* %365, align 1, !tbaa !2447
  %366 = lshr i64 %344, 63
  %367 = trunc i64 %366 to i8
  %368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %367, i8* %368, align 1, !tbaa !2448
  %369 = lshr i64 %341, 63
  %370 = xor i64 %366, %369
  %371 = add nuw nsw i64 %370, %366
  %372 = icmp eq i64 %371, 2
  %373 = zext i1 %372 to i8
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %373, i8* %374, align 1, !tbaa !2449
  %375 = load i64, i64* %PC
  %376 = add i64 %375, 1
  store i64 %376, i64* %PC
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %378 = load i64, i64* %377, align 8, !tbaa !2428
  %379 = add i64 %378, 8
  %380 = inttoptr i64 %378 to i64*
  %381 = load i64, i64* %380
  store i64 %381, i64* %RBP, align 8, !tbaa !2428
  store i64 %379, i64* %377, align 8, !tbaa !2428
  %382 = load i64, i64* %PC
  %383 = add i64 %382, 1
  store i64 %383, i64* %PC
  %384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %386 = load i64, i64* %385, align 8, !tbaa !2428
  %387 = inttoptr i64 %386 to i64*
  %388 = load i64, i64* %387
  store i64 %388, i64* %384, align 8, !tbaa !2428
  %389 = add i64 %386, 8
  store i64 %389, i64* %385, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0
}

; Function Attrs: noinline
define %struct.Memory* @sub_4008b0_compdecomp(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %AL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %15 = getelementptr inbounds %struct.GPR, %struct.GPR* %14, i32 0, i32 7
  %16 = getelementptr inbounds %struct.Reg, %struct.Reg* %15, i32 0, i32 0
  %17 = bitcast %union.anon* %16 to %struct.anon.2*
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %17, i32 0, i32 0
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %19 = getelementptr inbounds %struct.GPR, %struct.GPR* %18, i32 0, i32 17
  %20 = getelementptr inbounds %struct.Reg, %struct.Reg* %19, i32 0, i32 0
  %21 = bitcast %union.anon* %20 to %struct.anon.2*
  %R8B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %21, i32 0, i32 0
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %23 = getelementptr inbounds %struct.GPR, %struct.GPR* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.Reg, %struct.Reg* %23, i32 0, i32 0
  %EAX = bitcast %union.anon* %24 to i32*
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %26 = getelementptr inbounds %struct.GPR, %struct.GPR* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.Reg, %struct.Reg* %26, i32 0, i32 0
  %ECX = bitcast %union.anon* %27 to i32*
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %29 = getelementptr inbounds %struct.GPR, %struct.GPR* %28, i32 0, i32 7
  %30 = getelementptr inbounds %struct.Reg, %struct.Reg* %29, i32 0, i32 0
  %EDX = bitcast %union.anon* %30 to i32*
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %32 = getelementptr inbounds %struct.GPR, %struct.GPR* %31, i32 0, i32 9
  %33 = getelementptr inbounds %struct.Reg, %struct.Reg* %32, i32 0, i32 0
  %ESI = bitcast %union.anon* %33 to i32*
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %35 = getelementptr inbounds %struct.GPR, %struct.GPR* %34, i32 0, i32 17
  %36 = getelementptr inbounds %struct.Reg, %struct.Reg* %35, i32 0, i32 0
  %R8D = bitcast %union.anon* %36 to i32*
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %38 = getelementptr inbounds %struct.GPR, %struct.GPR* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.Reg, %struct.Reg* %38, i32 0, i32 0
  %RAX = bitcast %union.anon* %39 to i64*
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %41 = getelementptr inbounds %struct.GPR, %struct.GPR* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.Reg, %struct.Reg* %41, i32 0, i32 0
  %RBX = bitcast %union.anon* %42 to i64*
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %44 = getelementptr inbounds %struct.GPR, %struct.GPR* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.Reg, %struct.Reg* %44, i32 0, i32 0
  %RCX = bitcast %union.anon* %45 to i64*
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %47 = getelementptr inbounds %struct.GPR, %struct.GPR* %46, i32 0, i32 7
  %48 = getelementptr inbounds %struct.Reg, %struct.Reg* %47, i32 0, i32 0
  %RDX = bitcast %union.anon* %48 to i64*
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %50 = getelementptr inbounds %struct.GPR, %struct.GPR* %49, i32 0, i32 9
  %51 = getelementptr inbounds %struct.Reg, %struct.Reg* %50, i32 0, i32 0
  %RSI = bitcast %union.anon* %51 to i64*
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %53 = getelementptr inbounds %struct.GPR, %struct.GPR* %52, i32 0, i32 11
  %54 = getelementptr inbounds %struct.Reg, %struct.Reg* %53, i32 0, i32 0
  %RDI = bitcast %union.anon* %54 to i64*
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %56 = getelementptr inbounds %struct.GPR, %struct.GPR* %55, i32 0, i32 13
  %57 = getelementptr inbounds %struct.Reg, %struct.Reg* %56, i32 0, i32 0
  %RSP = bitcast %union.anon* %57 to i64*
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %59 = getelementptr inbounds %struct.GPR, %struct.GPR* %58, i32 0, i32 15
  %60 = getelementptr inbounds %struct.Reg, %struct.Reg* %59, i32 0, i32 0
  %RBP = bitcast %union.anon* %60 to i64*
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %62 = getelementptr inbounds %struct.GPR, %struct.GPR* %61, i32 0, i32 17
  %63 = getelementptr inbounds %struct.Reg, %struct.Reg* %62, i32 0, i32 0
  %R8 = bitcast %union.anon* %63 to i64*
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %65 = getelementptr inbounds %struct.GPR, %struct.GPR* %64, i32 0, i32 19
  %66 = getelementptr inbounds %struct.Reg, %struct.Reg* %65, i32 0, i32 0
  %R9 = bitcast %union.anon* %66 to i64*
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 21
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %R10 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 23
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %R11 = bitcast %union.anon* %72 to i64*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 29
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %R14 = bitcast %union.anon* %75 to i64*
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %77 = getelementptr inbounds %struct.GPR, %struct.GPR* %76, i32 0, i32 31
  %78 = getelementptr inbounds %struct.Reg, %struct.Reg* %77, i32 0, i32 0
  %R15 = bitcast %union.anon* %78 to i64*
  %79 = load i64, i64* %RBP
  %80 = load i64, i64* %PC
  %81 = add i64 %80, 1
  store i64 %81, i64* %PC
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %83 = load i64, i64* %82, align 8, !tbaa !2428
  %84 = add i64 %83, -8
  %85 = inttoptr i64 %84 to i64*
  store i64 %79, i64* %85
  store i64 %84, i64* %82, align 8, !tbaa !2428
  %86 = load i64, i64* %RSP
  %87 = load i64, i64* %PC
  %88 = add i64 %87, 3
  store i64 %88, i64* %PC
  store i64 %86, i64* %RBP, align 8, !tbaa !2428
  %89 = load i64, i64* %R15
  %90 = load i64, i64* %PC
  %91 = add i64 %90, 2
  store i64 %91, i64* %PC
  %92 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %93 = load i64, i64* %92, align 8, !tbaa !2428
  %94 = add i64 %93, -8
  %95 = inttoptr i64 %94 to i64*
  store i64 %89, i64* %95
  store i64 %94, i64* %92, align 8, !tbaa !2428
  %96 = load i64, i64* %R14
  %97 = load i64, i64* %PC
  %98 = add i64 %97, 2
  store i64 %98, i64* %PC
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %100 = load i64, i64* %99, align 8, !tbaa !2428
  %101 = add i64 %100, -8
  %102 = inttoptr i64 %101 to i64*
  store i64 %96, i64* %102
  store i64 %101, i64* %99, align 8, !tbaa !2428
  %103 = load i64, i64* %RBX
  %104 = load i64, i64* %PC
  %105 = add i64 %104, 1
  store i64 %105, i64* %PC
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %107 = load i64, i64* %106, align 8, !tbaa !2428
  %108 = add i64 %107, -8
  %109 = inttoptr i64 %108 to i64*
  store i64 %103, i64* %109
  store i64 %108, i64* %106, align 8, !tbaa !2428
  %110 = load i64, i64* %RSP
  %111 = load i64, i64* %PC
  %112 = add i64 %111, 7
  store i64 %112, i64* %PC
  %113 = sub i64 %110, 13080
  store i64 %113, i64* %RSP, align 8, !tbaa !2428
  %114 = icmp ult i64 %110, 13080
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
  %124 = xor i64 13080, %110
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
  %136 = lshr i64 %110, 63
  %137 = xor i64 %133, %136
  %138 = add nuw nsw i64 %137, %136
  %139 = icmp eq i64 %138, 2
  %140 = zext i1 %139 to i8
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %140, i8* %141, align 1, !tbaa !2449
  %142 = load i64, i64* %RBP
  %143 = sub i64 %142, 32
  %144 = load i64, i64* %RDI
  %145 = load i64, i64* %PC
  %146 = add i64 %145, 4
  store i64 %146, i64* %PC
  %147 = inttoptr i64 %143 to i64*
  store i64 %144, i64* %147
  %148 = load i64, i64* %RBP
  %149 = sub i64 %148, 40
  %150 = load i64, i64* %RSI
  %151 = load i64, i64* %PC
  %152 = add i64 %151, 4
  store i64 %152, i64* %PC
  %153 = inttoptr i64 %149 to i64*
  store i64 %150, i64* %153
  %154 = load i64, i64* %RBP
  %155 = sub i64 %154, 32
  %156 = load i64, i64* %PC
  %157 = add i64 %156, 4
  store i64 %157, i64* %PC
  %158 = inttoptr i64 %155 to i64*
  %159 = load i64, i64* %158
  store i64 %159, i64* %RSI, align 8, !tbaa !2428
  %160 = load i64, i64* %RBP
  %161 = sub i64 %160, 112
  %162 = load i64, i64* %RSI
  %163 = load i64, i64* %PC
  %164 = add i64 %163, 4
  store i64 %164, i64* %PC
  %165 = inttoptr i64 %161 to i64*
  store i64 %162, i64* %165
  %166 = load i64, i64* %RBP
  %167 = sub i64 %166, 40
  %168 = load i64, i64* %PC
  %169 = add i64 %168, 4
  store i64 %169, i64* %PC
  %170 = inttoptr i64 %167 to i64*
  %171 = load i64, i64* %170
  store i64 %171, i64* %RSI, align 8, !tbaa !2428
  %172 = load i64, i64* %RSI
  %173 = load i64, i64* %PC
  %174 = add i64 %173, 4
  store i64 %174, i64* %PC
  %175 = add i64 1, %172
  store i64 %175, i64* %RSI, align 8, !tbaa !2428
  %176 = icmp ult i64 %175, %172
  %177 = icmp ult i64 %175, 1
  %178 = or i1 %176, %177
  %179 = zext i1 %178 to i8
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %179, i8* %180, align 1, !tbaa !2432
  %181 = trunc i64 %175 to i32
  %182 = and i32 %181, 255
  %183 = call i32 @llvm.ctpop.i32(i32 %182) #16
  %184 = trunc i32 %183 to i8
  %185 = and i8 %184, 1
  %186 = xor i8 %185, 1
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %186, i8* %187, align 1, !tbaa !2446
  %188 = xor i64 1, %172
  %189 = xor i64 %188, %175
  %190 = lshr i64 %189, 4
  %191 = trunc i64 %190 to i8
  %192 = and i8 %191, 1
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %192, i8* %193, align 1, !tbaa !2450
  %194 = icmp eq i64 %175, 0
  %195 = zext i1 %194 to i8
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %195, i8* %196, align 1, !tbaa !2447
  %197 = lshr i64 %175, 63
  %198 = trunc i64 %197 to i8
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %198, i8* %199, align 1, !tbaa !2448
  %200 = lshr i64 %172, 63
  %201 = xor i64 %197, %200
  %202 = add nuw nsw i64 %201, %197
  %203 = icmp eq i64 %202, 2
  %204 = zext i1 %203 to i8
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %204, i8* %205, align 1, !tbaa !2449
  %206 = load i64, i64* %RSI
  %207 = load i64, i64* %PC
  %208 = add i64 %207, 3
  store i64 %208, i64* %PC
  store i64 %206, i64* %RDI, align 8, !tbaa !2428
  %209 = load i64, i64* %PC
  %210 = sub i64 %209, 667
  %211 = load i64, i64* %PC
  %212 = add i64 %211, 5
  %213 = load i64, i64* %PC
  %214 = add i64 %213, 5
  store i64 %214, i64* %PC
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %216 = load i64, i64* %215, align 8, !tbaa !2428
  %217 = add i64 %216, -8
  %218 = inttoptr i64 %217 to i64*
  store i64 %212, i64* %218
  store i64 %217, i64* %215, align 8, !tbaa !2428
  %219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %210, i64* %219, align 8, !tbaa !2428
  %220 = load i64, i64* %PC
  %221 = call %struct.Memory* @ext_6020d8_malloc(%struct.State* %0, i64 %220, %struct.Memory* %2)
  %222 = load i64, i64* %RCX
  %223 = load i32, i32* %ECX
  %224 = zext i32 %223 to i64
  %225 = load i64, i64* %PC
  %226 = add i64 %225, 2
  store i64 %226, i64* %PC
  %227 = xor i64 %224, %222
  %228 = trunc i64 %227 to i32
  %229 = and i64 %227, 4294967295
  store i64 %229, i64* %RCX, align 8, !tbaa !2428
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %230, align 1, !tbaa !2432
  %231 = and i32 %228, 255
  %232 = call i32 @llvm.ctpop.i32(i32 %231) #16
  %233 = trunc i32 %232 to i8
  %234 = and i8 %233, 1
  %235 = xor i8 %234, 1
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %235, i8* %236, align 1, !tbaa !2446
  %237 = icmp eq i32 %228, 0
  %238 = zext i1 %237 to i8
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %238, i8* %239, align 1, !tbaa !2447
  %240 = lshr i32 %228, 31
  %241 = trunc i32 %240 to i8
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %241, i8* %242, align 1, !tbaa !2448
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %243, align 1, !tbaa !2449
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %244, align 1, !tbaa !2450
  %245 = load i64, i64* %PC
  %246 = add i64 %245, 5
  store i64 %246, i64* %PC
  store i64 256, i64* %RDX, align 8, !tbaa !2428
  %247 = load i64, i64* %RBP
  %248 = sub i64 %247, 10624
  %249 = load i64, i64* %PC
  %250 = add i64 %249, 7
  store i64 %250, i64* %PC
  store i64 %248, i64* %RDI, align 8, !tbaa !2428
  %251 = bitcast i32* %R8D to i64*
  %252 = load i64, i64* %PC
  %253 = add i64 %252, 6
  store i64 %253, i64* %PC
  store i64 2048, i64* %251, align 8, !tbaa !2428
  %254 = load i32, i32* %R8D
  %255 = zext i32 %254 to i64
  %256 = load i64, i64* %PC
  %257 = add i64 %256, 3
  store i64 %257, i64* %PC
  %258 = and i64 %255, 4294967295
  store i64 %258, i64* %RSI, align 8, !tbaa !2428
  %259 = load i64, i64* %RBP
  %260 = sub i64 %259, 10368
  %261 = load i64, i64* %PC
  %262 = add i64 %261, 7
  store i64 %262, i64* %PC
  store i64 %260, i64* %R9, align 8, !tbaa !2428
  %263 = load i64, i64* %RBP
  %264 = sub i64 %263, 8320
  %265 = load i64, i64* %PC
  %266 = add i64 %265, 7
  store i64 %266, i64* %PC
  store i64 %264, i64* %R10, align 8, !tbaa !2428
  %267 = load i64, i64* %RBP
  %268 = sub i64 %267, 6272
  %269 = load i64, i64* %PC
  %270 = add i64 %269, 7
  store i64 %270, i64* %PC
  store i64 %268, i64* %R11, align 8, !tbaa !2428
  %271 = bitcast i32* %R8D to i64*
  %272 = load i64, i64* %PC
  %273 = add i64 %272, 6
  store i64 %273, i64* %PC
  store i64 4096, i64* %271, align 8, !tbaa !2428
  %274 = load i32, i32* %R8D
  %275 = zext i32 %274 to i64
  %276 = load i64, i64* %PC
  %277 = add i64 %276, 3
  store i64 %277, i64* %PC
  %278 = and i64 %275, 4294967295
  store i64 %278, i64* %RBX, align 8, !tbaa !2428
  %279 = load i64, i64* %RBP
  %280 = sub i64 %279, 4224
  %281 = load i64, i64* %PC
  %282 = add i64 %281, 7
  store i64 %282, i64* %PC
  store i64 %280, i64* %R14, align 8, !tbaa !2428
  %283 = load i64, i64* %RBP
  %284 = sub i64 %283, 120
  %285 = load i64, i64* %RAX
  %286 = load i64, i64* %PC
  %287 = add i64 %286, 4
  store i64 %287, i64* %PC
  %288 = inttoptr i64 %284 to i64*
  store i64 %285, i64* %288
  %289 = load i64, i64* %RBP
  %290 = sub i64 %289, 120
  %291 = load i64, i64* %PC
  %292 = add i64 %291, 4
  store i64 %292, i64* %PC
  %293 = inttoptr i64 %290 to i64*
  %294 = load i64, i64* %293
  store i64 %294, i64* %RAX, align 8, !tbaa !2428
  %295 = load i64, i64* %RBP
  %296 = sub i64 %295, 40
  %297 = load i64, i64* %PC
  %298 = add i64 %297, 4
  store i64 %298, i64* %PC
  %299 = inttoptr i64 %296 to i64*
  %300 = load i64, i64* %299
  store i64 %300, i64* %R15, align 8, !tbaa !2428
  %301 = load i64, i64* %R15
  %302 = load i64, i64* %PC
  %303 = add i64 %302, 4
  store i64 %303, i64* %PC
  %304 = add i64 1, %301
  store i64 %304, i64* %R15, align 8, !tbaa !2428
  %305 = icmp ult i64 %304, %301
  %306 = icmp ult i64 %304, 1
  %307 = or i1 %305, %306
  %308 = zext i1 %307 to i8
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %308, i8* %309, align 1, !tbaa !2432
  %310 = trunc i64 %304 to i32
  %311 = and i32 %310, 255
  %312 = call i32 @llvm.ctpop.i32(i32 %311) #16
  %313 = trunc i32 %312 to i8
  %314 = and i8 %313, 1
  %315 = xor i8 %314, 1
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %315, i8* %316, align 1, !tbaa !2446
  %317 = xor i64 1, %301
  %318 = xor i64 %317, %304
  %319 = lshr i64 %318, 4
  %320 = trunc i64 %319 to i8
  %321 = and i8 %320, 1
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %321, i8* %322, align 1, !tbaa !2450
  %323 = icmp eq i64 %304, 0
  %324 = zext i1 %323 to i8
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %324, i8* %325, align 1, !tbaa !2447
  %326 = lshr i64 %304, 63
  %327 = trunc i64 %326 to i8
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %327, i8* %328, align 1, !tbaa !2448
  %329 = lshr i64 %301, 63
  %330 = xor i64 %326, %329
  %331 = add nuw nsw i64 %330, %326
  %332 = icmp eq i64 %331, 2
  %333 = zext i1 %332 to i8
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %333, i8* %334, align 1, !tbaa !2449
  %335 = load i64, i64* %R15
  %336 = load i64, i64* %PC
  %337 = add i64 %336, 4
  store i64 %337, i64* %PC
  %338 = load i64, i64* %RBP
  %339 = sub i64 %338, 13008
  %340 = load i64, i64* %RDI
  %341 = load i64, i64* %PC
  %342 = add i64 %341, 7
  store i64 %342, i64* %PC
  %343 = inttoptr i64 %339 to i64*
  store i64 %340, i64* %343
  %344 = load i64, i64* %RAX
  %345 = load i64, i64* %PC
  %346 = add i64 %345, 3
  store i64 %346, i64* %PC
  store i64 %344, i64* %RDI, align 8, !tbaa !2428
  %347 = load i64, i64* %RBP
  %348 = sub i64 %347, 13016
  %349 = load i64, i64* %RSI
  %350 = load i64, i64* %PC
  %351 = add i64 %350, 7
  store i64 %351, i64* %PC
  %352 = inttoptr i64 %348 to i64*
  store i64 %349, i64* %352
  %353 = load i32, i32* %ECX
  %354 = zext i32 %353 to i64
  %355 = load i64, i64* %PC
  %356 = add i64 %355, 2
  store i64 %356, i64* %PC
  %357 = and i64 %354, 4294967295
  store i64 %357, i64* %RSI, align 8, !tbaa !2428
  %358 = load i64, i64* %RBP
  %359 = sub i64 %358, 13024
  %360 = load i64, i64* %RDX
  %361 = load i64, i64* %PC
  %362 = add i64 %361, 7
  store i64 %362, i64* %PC
  %363 = inttoptr i64 %359 to i64*
  store i64 %360, i64* %363
  %364 = load i64, i64* %R15
  %365 = load i64, i64* %PC
  %366 = add i64 %365, 3
  store i64 %366, i64* %PC
  store i64 %364, i64* %RDX, align 8, !tbaa !2428
  %367 = load i64, i64* %RBP
  %368 = sub i64 %367, 13032
  %369 = load i64, i64* %R14
  %370 = load i64, i64* %PC
  %371 = add i64 %370, 7
  store i64 %371, i64* %PC
  %372 = inttoptr i64 %368 to i64*
  store i64 %369, i64* %372
  %373 = load i64, i64* %RBP
  %374 = sub i64 %373, 13036
  %375 = load i32, i32* %ECX
  %376 = zext i32 %375 to i64
  %377 = load i64, i64* %PC
  %378 = add i64 %377, 6
  store i64 %378, i64* %PC
  %379 = inttoptr i64 %374 to i32*
  store i32 %375, i32* %379
  %380 = load i64, i64* %RBP
  %381 = sub i64 %380, 13048
  %382 = load i64, i64* %R10
  %383 = load i64, i64* %PC
  %384 = add i64 %383, 7
  store i64 %384, i64* %PC
  %385 = inttoptr i64 %381 to i64*
  store i64 %382, i64* %385
  %386 = load i64, i64* %RBP
  %387 = sub i64 %386, 13056
  %388 = load i64, i64* %R11
  %389 = load i64, i64* %PC
  %390 = add i64 %389, 7
  store i64 %390, i64* %PC
  %391 = inttoptr i64 %387 to i64*
  store i64 %388, i64* %391
  %392 = load i64, i64* %RBP
  %393 = sub i64 %392, 13064
  %394 = load i64, i64* %RBX
  %395 = load i64, i64* %PC
  %396 = add i64 %395, 7
  store i64 %396, i64* %PC
  %397 = inttoptr i64 %393 to i64*
  store i64 %394, i64* %397
  %398 = load i64, i64* %RBP
  %399 = sub i64 %398, 13072
  %400 = load i64, i64* %R9
  %401 = load i64, i64* %PC
  %402 = add i64 %401, 7
  store i64 %402, i64* %PC
  %403 = inttoptr i64 %399 to i64*
  store i64 %400, i64* %403
  %404 = load i64, i64* %PC
  %405 = sub i64 %404, 870
  %406 = load i64, i64* %PC
  %407 = add i64 %406, 5
  %408 = load i64, i64* %PC
  %409 = add i64 %408, 5
  store i64 %409, i64* %PC
  %410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %411 = load i64, i64* %410, align 8, !tbaa !2428
  %412 = add i64 %411, -8
  %413 = inttoptr i64 %412 to i64*
  store i64 %407, i64* %413
  store i64 %412, i64* %410, align 8, !tbaa !2428
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %405, i64* %414, align 8, !tbaa !2428
  %415 = load i64, i64* %PC
  %416 = call %struct.Memory* @ext_6020f8_memset(%struct.State* %0, i64 %415, %struct.Memory* %221)
  %417 = load i64, i64* %RBP
  %418 = sub i64 %417, 13032
  %419 = load i64, i64* %PC
  %420 = add i64 %419, 7
  store i64 %420, i64* %PC
  %421 = inttoptr i64 %418 to i64*
  %422 = load i64, i64* %421
  store i64 %422, i64* %RAX, align 8, !tbaa !2428
  %423 = load i64, i64* %RAX
  %424 = load i64, i64* %PC
  %425 = add i64 %424, 3
  store i64 %425, i64* %PC
  store i64 %423, i64* %RDI, align 8, !tbaa !2428
  %426 = load i64, i64* %RBP
  %427 = sub i64 %426, 13036
  %428 = load i64, i64* %PC
  %429 = add i64 %428, 6
  store i64 %429, i64* %PC
  %430 = inttoptr i64 %427 to i32*
  %431 = load i32, i32* %430
  %432 = zext i32 %431 to i64
  store i64 %432, i64* %RSI, align 8, !tbaa !2428
  %433 = load i64, i64* %RBP
  %434 = sub i64 %433, 13064
  %435 = load i64, i64* %PC
  %436 = add i64 %435, 7
  store i64 %436, i64* %PC
  %437 = inttoptr i64 %434 to i64*
  %438 = load i64, i64* %437
  store i64 %438, i64* %RDX, align 8, !tbaa !2428
  %439 = load i64, i64* %PC
  %440 = sub i64 %439, 898
  %441 = load i64, i64* %PC
  %442 = add i64 %441, 5
  %443 = load i64, i64* %PC
  %444 = add i64 %443, 5
  store i64 %444, i64* %PC
  %445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %446 = load i64, i64* %445, align 8, !tbaa !2428
  %447 = add i64 %446, -8
  %448 = inttoptr i64 %447 to i64*
  store i64 %442, i64* %448
  store i64 %447, i64* %445, align 8, !tbaa !2428
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %440, i64* %449, align 8, !tbaa !2428
  %450 = load i64, i64* %PC
  %451 = call %struct.Memory* @ext_6020f8_memset(%struct.State* %0, i64 %450, %struct.Memory* %416)
  %452 = load i64, i64* %RBP
  %453 = sub i64 %452, 13056
  %454 = load i64, i64* %PC
  %455 = add i64 %454, 7
  store i64 %455, i64* %PC
  %456 = inttoptr i64 %453 to i64*
  %457 = load i64, i64* %456
  store i64 %457, i64* %RAX, align 8, !tbaa !2428
  %458 = load i64, i64* %RAX
  %459 = load i64, i64* %PC
  %460 = add i64 %459, 3
  store i64 %460, i64* %PC
  store i64 %458, i64* %RDI, align 8, !tbaa !2428
  %461 = load i64, i64* %RBP
  %462 = sub i64 %461, 13036
  %463 = load i64, i64* %PC
  %464 = add i64 %463, 6
  store i64 %464, i64* %PC
  %465 = inttoptr i64 %462 to i32*
  %466 = load i32, i32* %465
  %467 = zext i32 %466 to i64
  store i64 %467, i64* %RSI, align 8, !tbaa !2428
  %468 = load i64, i64* %RBP
  %469 = sub i64 %468, 13016
  %470 = load i64, i64* %PC
  %471 = add i64 %470, 7
  store i64 %471, i64* %PC
  %472 = inttoptr i64 %469 to i64*
  %473 = load i64, i64* %472
  store i64 %473, i64* %RDX, align 8, !tbaa !2428
  %474 = load i64, i64* %PC
  %475 = sub i64 %474, 926
  %476 = load i64, i64* %PC
  %477 = add i64 %476, 5
  %478 = load i64, i64* %PC
  %479 = add i64 %478, 5
  store i64 %479, i64* %PC
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %481 = load i64, i64* %480, align 8, !tbaa !2428
  %482 = add i64 %481, -8
  %483 = inttoptr i64 %482 to i64*
  store i64 %477, i64* %483
  store i64 %482, i64* %480, align 8, !tbaa !2428
  %484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %475, i64* %484, align 8, !tbaa !2428
  %485 = load i64, i64* %PC
  %486 = call %struct.Memory* @ext_6020f8_memset(%struct.State* %0, i64 %485, %struct.Memory* %451)
  %487 = load i64, i64* %RBP
  %488 = sub i64 %487, 13048
  %489 = load i64, i64* %PC
  %490 = add i64 %489, 7
  store i64 %490, i64* %PC
  %491 = inttoptr i64 %488 to i64*
  %492 = load i64, i64* %491
  store i64 %492, i64* %RAX, align 8, !tbaa !2428
  %493 = load i64, i64* %RAX
  %494 = load i64, i64* %PC
  %495 = add i64 %494, 3
  store i64 %495, i64* %PC
  store i64 %493, i64* %RDI, align 8, !tbaa !2428
  %496 = load i64, i64* %RBP
  %497 = sub i64 %496, 13036
  %498 = load i64, i64* %PC
  %499 = add i64 %498, 6
  store i64 %499, i64* %PC
  %500 = inttoptr i64 %497 to i32*
  %501 = load i32, i32* %500
  %502 = zext i32 %501 to i64
  store i64 %502, i64* %RSI, align 8, !tbaa !2428
  %503 = load i64, i64* %RBP
  %504 = sub i64 %503, 13016
  %505 = load i64, i64* %PC
  %506 = add i64 %505, 7
  store i64 %506, i64* %PC
  %507 = inttoptr i64 %504 to i64*
  %508 = load i64, i64* %507
  store i64 %508, i64* %RDX, align 8, !tbaa !2428
  %509 = load i64, i64* %PC
  %510 = sub i64 %509, 954
  %511 = load i64, i64* %PC
  %512 = add i64 %511, 5
  %513 = load i64, i64* %PC
  %514 = add i64 %513, 5
  store i64 %514, i64* %PC
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %516 = load i64, i64* %515, align 8, !tbaa !2428
  %517 = add i64 %516, -8
  %518 = inttoptr i64 %517 to i64*
  store i64 %512, i64* %518
  store i64 %517, i64* %515, align 8, !tbaa !2428
  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %510, i64* %519, align 8, !tbaa !2428
  %520 = load i64, i64* %PC
  %521 = call %struct.Memory* @ext_6020f8_memset(%struct.State* %0, i64 %520, %struct.Memory* %486)
  %522 = load i64, i64* %RBP
  %523 = sub i64 %522, 13072
  %524 = load i64, i64* %PC
  %525 = add i64 %524, 7
  store i64 %525, i64* %PC
  %526 = inttoptr i64 %523 to i64*
  %527 = load i64, i64* %526
  store i64 %527, i64* %RAX, align 8, !tbaa !2428
  %528 = load i64, i64* %RAX
  %529 = load i64, i64* %PC
  %530 = add i64 %529, 3
  store i64 %530, i64* %PC
  store i64 %528, i64* %RDI, align 8, !tbaa !2428
  %531 = load i64, i64* %RBP
  %532 = sub i64 %531, 13036
  %533 = load i64, i64* %PC
  %534 = add i64 %533, 6
  store i64 %534, i64* %PC
  %535 = inttoptr i64 %532 to i32*
  %536 = load i32, i32* %535
  %537 = zext i32 %536 to i64
  store i64 %537, i64* %RSI, align 8, !tbaa !2428
  %538 = load i64, i64* %RBP
  %539 = sub i64 %538, 13016
  %540 = load i64, i64* %PC
  %541 = add i64 %540, 7
  store i64 %541, i64* %PC
  %542 = inttoptr i64 %539 to i64*
  %543 = load i64, i64* %542
  store i64 %543, i64* %RDX, align 8, !tbaa !2428
  %544 = load i64, i64* %PC
  %545 = sub i64 %544, 982
  %546 = load i64, i64* %PC
  %547 = add i64 %546, 5
  %548 = load i64, i64* %PC
  %549 = add i64 %548, 5
  store i64 %549, i64* %PC
  %550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %551 = load i64, i64* %550, align 8, !tbaa !2428
  %552 = add i64 %551, -8
  %553 = inttoptr i64 %552 to i64*
  store i64 %547, i64* %553
  store i64 %552, i64* %550, align 8, !tbaa !2428
  %554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %545, i64* %554, align 8, !tbaa !2428
  %555 = load i64, i64* %PC
  %556 = call %struct.Memory* @ext_6020f8_memset(%struct.State* %0, i64 %555, %struct.Memory* %521)
  %557 = load i64, i64* %RBP
  %558 = sub i64 %557, 13008
  %559 = load i64, i64* %PC
  %560 = add i64 %559, 7
  store i64 %560, i64* %PC
  %561 = inttoptr i64 %558 to i64*
  %562 = load i64, i64* %561
  store i64 %562, i64* %RDI, align 8, !tbaa !2428
  %563 = load i64, i64* %RBP
  %564 = sub i64 %563, 13036
  %565 = load i64, i64* %PC
  %566 = add i64 %565, 6
  store i64 %566, i64* %PC
  %567 = inttoptr i64 %564 to i32*
  %568 = load i32, i32* %567
  %569 = zext i32 %568 to i64
  store i64 %569, i64* %RSI, align 8, !tbaa !2428
  %570 = load i64, i64* %RBP
  %571 = sub i64 %570, 13024
  %572 = load i64, i64* %PC
  %573 = add i64 %572, 7
  store i64 %573, i64* %PC
  %574 = inttoptr i64 %571 to i64*
  %575 = load i64, i64* %574
  store i64 %575, i64* %RDX, align 8, !tbaa !2428
  %576 = load i64, i64* %PC
  %577 = sub i64 %576, 1007
  %578 = load i64, i64* %PC
  %579 = add i64 %578, 5
  %580 = load i64, i64* %PC
  %581 = add i64 %580, 5
  store i64 %581, i64* %PC
  %582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %583 = load i64, i64* %582, align 8, !tbaa !2428
  %584 = add i64 %583, -8
  %585 = inttoptr i64 %584 to i64*
  store i64 %579, i64* %585
  store i64 %584, i64* %582, align 8, !tbaa !2428
  %586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %577, i64* %586, align 8, !tbaa !2428
  %587 = load i64, i64* %PC
  %588 = call %struct.Memory* @ext_6020f8_memset(%struct.State* %0, i64 %587, %struct.Memory* %556)
  %589 = load i64, i64* %RBP
  %590 = sub i64 %589, 48
  %591 = load i64, i64* %PC
  %592 = add i64 %591, 8
  store i64 %592, i64* %PC
  %593 = inttoptr i64 %590 to i64*
  store i64 0, i64* %593
  br label %block_400a0c

block_400a54:                                     ; preds = %block_400a0c
  %594 = sub i64 %5879, 64
  %595 = load i64, i64* %PC
  %596 = add i64 %595, 8
  store i64 %596, i64* %PC
  %597 = inttoptr i64 %594 to i64*
  store i64 0, i64* %597
  %598 = load i64, i64* %RBP
  %599 = sub i64 %598, 48
  %600 = load i64, i64* %PC
  %601 = add i64 %600, 8
  store i64 %601, i64* %PC
  %602 = inttoptr i64 %599 to i64*
  store i64 0, i64* %602
  br label %block_400a64

block_4012a8:                                     ; preds = %block_40129a
  %603 = sub i64 %3194, 80
  %604 = load i64, i64* %PC
  %605 = add i64 %604, 4
  store i64 %605, i64* %PC
  %606 = inttoptr i64 %603 to i64*
  %607 = load i64, i64* %606
  store i64 %607, i64* %RAX, align 8, !tbaa !2428
  %608 = load i64, i64* %RAX
  %609 = load i64, i64* %PC
  %610 = add i64 %609, 4
  store i64 %610, i64* %PC
  %611 = shl i64 %608, 1
  %612 = icmp slt i64 %608, 0
  %613 = icmp slt i64 %611, 0
  %614 = xor i1 %612, %613
  store i64 %611, i64* %RAX, align 8, !tbaa !2428
  %615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %616 = zext i1 %612 to i8
  store i8 %616, i8* %615, align 1, !tbaa !2451
  %617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %618 = trunc i64 %611 to i32
  %619 = and i32 %618, 254
  %620 = call i32 @llvm.ctpop.i32(i32 %619) #16
  %621 = trunc i32 %620 to i8
  %622 = and i8 %621, 1
  %623 = xor i8 %622, 1
  store i8 %623, i8* %617, align 1, !tbaa !2451
  %624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %624, align 1, !tbaa !2451
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %626 = icmp eq i64 %611, 0
  %627 = zext i1 %626 to i8
  store i8 %627, i8* %625, align 1, !tbaa !2451
  %628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %629 = lshr i64 %611, 63
  %630 = trunc i64 %629 to i8
  store i8 %630, i8* %628, align 1, !tbaa !2451
  %631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %632 = zext i1 %614 to i8
  store i8 %632, i8* %631, align 1, !tbaa !2451
  %633 = load i64, i64* %RAX
  %634 = load i64, i64* %PC
  %635 = add i64 %634, 4
  store i64 %635, i64* %PC
  %636 = add i64 1, %633
  store i64 %636, i64* %RAX, align 8, !tbaa !2428
  %637 = icmp ult i64 %636, %633
  %638 = icmp ult i64 %636, 1
  %639 = or i1 %637, %638
  %640 = zext i1 %639 to i8
  %641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %640, i8* %641, align 1, !tbaa !2432
  %642 = trunc i64 %636 to i32
  %643 = and i32 %642, 255
  %644 = call i32 @llvm.ctpop.i32(i32 %643) #16
  %645 = trunc i32 %644 to i8
  %646 = and i8 %645, 1
  %647 = xor i8 %646, 1
  %648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %647, i8* %648, align 1, !tbaa !2446
  %649 = xor i64 1, %633
  %650 = xor i64 %649, %636
  %651 = lshr i64 %650, 4
  %652 = trunc i64 %651 to i8
  %653 = and i8 %652, 1
  %654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %653, i8* %654, align 1, !tbaa !2450
  %655 = icmp eq i64 %636, 0
  %656 = zext i1 %655 to i8
  %657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %656, i8* %657, align 1, !tbaa !2447
  %658 = lshr i64 %636, 63
  %659 = trunc i64 %658 to i8
  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %659, i8* %660, align 1, !tbaa !2448
  %661 = lshr i64 %633, 63
  %662 = xor i64 %658, %661
  %663 = add nuw nsw i64 %662, %658
  %664 = icmp eq i64 %663, 2
  %665 = zext i1 %664 to i8
  %666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %665, i8* %666, align 1, !tbaa !2449
  %667 = load i64, i64* %RBP
  %668 = sub i64 %667, 80
  %669 = load i64, i64* %RAX
  %670 = load i64, i64* %PC
  %671 = add i64 %670, 4
  store i64 %671, i64* %PC
  %672 = inttoptr i64 %668 to i64*
  store i64 %669, i64* %672
  %673 = load i64, i64* %RBP
  %674 = sub i64 %673, 104
  %675 = load i64, i64* %PC
  %676 = add i64 %675, 4
  store i64 %676, i64* %PC
  %677 = inttoptr i64 %674 to i64*
  %678 = load i64, i64* %677
  store i64 %678, i64* %RAX, align 8, !tbaa !2428
  %679 = load i64, i64* %RAX
  %680 = load i64, i64* %PC
  %681 = add i64 %680, 3
  store i64 %681, i64* %PC
  %682 = inttoptr i64 %679 to i8*
  %683 = load i8, i8* %682
  %684 = zext i8 %683 to i64
  store i64 %684, i64* %RCX, align 8, !tbaa !2428
  %685 = load i32, i32* %ECX
  %686 = zext i32 %685 to i64
  %687 = load i64, i64* %PC
  %688 = add i64 %687, 2
  store i64 %688, i64* %PC
  %689 = and i64 %686, 4294967295
  store i64 %689, i64* %RAX, align 8, !tbaa !2428
  %690 = load i64, i64* %RAX
  %691 = load i64, i64* %RBP
  %692 = sub i64 %691, 72
  %693 = load i64, i64* %PC
  %694 = add i64 %693, 4
  store i64 %694, i64* %PC
  %695 = inttoptr i64 %692 to i64*
  %696 = load i64, i64* %695
  %697 = and i64 %696, %690
  store i64 %697, i64* %RAX, align 8, !tbaa !2428
  %698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %698, align 1, !tbaa !2432
  %699 = trunc i64 %697 to i32
  %700 = and i32 %699, 255
  %701 = call i32 @llvm.ctpop.i32(i32 %700) #16
  %702 = trunc i32 %701 to i8
  %703 = and i8 %702, 1
  %704 = xor i8 %703, 1
  %705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %704, i8* %705, align 1, !tbaa !2446
  %706 = icmp eq i64 %697, 0
  %707 = zext i1 %706 to i8
  %708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %707, i8* %708, align 1, !tbaa !2447
  %709 = lshr i64 %697, 63
  %710 = trunc i64 %709 to i8
  %711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %710, i8* %711, align 1, !tbaa !2448
  %712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %712, align 1, !tbaa !2449
  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %713, align 1, !tbaa !2450
  %714 = load i64, i64* %RAX
  %715 = load i64, i64* %PC
  %716 = add i64 %715, 4
  store i64 %716, i64* %PC
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %717, align 1, !tbaa !2432
  %718 = trunc i64 %714 to i32
  %719 = and i32 %718, 255
  %720 = call i32 @llvm.ctpop.i32(i32 %719) #16
  %721 = trunc i32 %720 to i8
  %722 = and i8 %721, 1
  %723 = xor i8 %722, 1
  %724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %723, i8* %724, align 1, !tbaa !2446
  %725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %725, align 1, !tbaa !2450
  %726 = icmp eq i64 %714, 0
  %727 = zext i1 %726 to i8
  %728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %727, i8* %728, align 1, !tbaa !2447
  %729 = lshr i64 %714, 63
  %730 = trunc i64 %729 to i8
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %730, i8* %731, align 1, !tbaa !2448
  %732 = lshr i64 %714, 63
  %733 = xor i64 %729, %732
  %734 = add nuw nsw i64 %733, %732
  %735 = icmp eq i64 %734, 2
  %736 = zext i1 %735 to i8
  %737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %736, i8* %737, align 1, !tbaa !2449
  %738 = load i64, i64* %PC
  %739 = add i64 %738, 18
  %740 = load i64, i64* %PC
  %741 = add i64 %740, 6
  %742 = load i64, i64* %PC
  %743 = add i64 %742, 6
  store i64 %743, i64* %PC
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %745 = load i8, i8* %744, align 1, !tbaa !2447
  store i8 %745, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %747 = icmp ne i8 %745, 0
  %748 = select i1 %747, i64 %739, i64 %741
  store i64 %748, i64* %746, align 8, !tbaa !2428
  %749 = load i8, i8* %BRANCH_TAKEN
  %750 = icmp eq i8 %749, 1
  br i1 %750, label %block_4012db, label %block_4012cf

block_4011c3:                                     ; preds = %block_4011b0
  %751 = load i64, i64* %RBP
  %752 = sub i64 %751, 56
  %753 = load i64, i64* %PC
  %754 = add i64 %753, 4
  store i64 %754, i64* %PC
  %755 = inttoptr i64 %752 to i64*
  %756 = load i64, i64* %755
  store i64 %756, i64* %RAX, align 8, !tbaa !2428
  %757 = load i64, i64* %RAX
  %758 = load i64, i64* %PC
  %759 = add i64 %758, 4
  store i64 %759, i64* %PC
  %760 = sub i64 %757, 1
  store i64 %760, i64* %RAX, align 8, !tbaa !2428
  %761 = icmp ult i64 %757, 1
  %762 = zext i1 %761 to i8
  %763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %762, i8* %763, align 1, !tbaa !2432
  %764 = trunc i64 %760 to i32
  %765 = and i32 %764, 255
  %766 = call i32 @llvm.ctpop.i32(i32 %765) #16
  %767 = trunc i32 %766 to i8
  %768 = and i8 %767, 1
  %769 = xor i8 %768, 1
  %770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %769, i8* %770, align 1, !tbaa !2446
  %771 = xor i64 1, %757
  %772 = xor i64 %771, %760
  %773 = lshr i64 %772, 4
  %774 = trunc i64 %773 to i8
  %775 = and i8 %774, 1
  %776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %775, i8* %776, align 1, !tbaa !2450
  %777 = icmp eq i64 %760, 0
  %778 = zext i1 %777 to i8
  %779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %778, i8* %779, align 1, !tbaa !2447
  %780 = lshr i64 %760, 63
  %781 = trunc i64 %780 to i8
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %781, i8* %782, align 1, !tbaa !2448
  %783 = lshr i64 %757, 63
  %784 = xor i64 %780, %783
  %785 = add nuw nsw i64 %784, %783
  %786 = icmp eq i64 %785, 2
  %787 = zext i1 %786 to i8
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %787, i8* %788, align 1, !tbaa !2449
  %789 = load i64, i64* %RBP
  %790 = load i64, i64* %RAX
  %791 = mul i64 %790, 8
  %792 = add i64 %789, -12736
  %793 = add i64 %792, %791
  %794 = load i64, i64* %PC
  %795 = add i64 %794, 8
  store i64 %795, i64* %PC
  %796 = inttoptr i64 %793 to i64*
  %797 = load i64, i64* %796
  store i64 %797, i64* %RAX, align 8, !tbaa !2428
  %798 = load i64, i64* %RBP
  %799 = sub i64 %798, 56
  %800 = load i64, i64* %PC
  %801 = add i64 %800, 4
  store i64 %801, i64* %PC
  %802 = inttoptr i64 %799 to i64*
  %803 = load i64, i64* %802
  store i64 %803, i64* %RCX, align 8, !tbaa !2428
  %804 = load i64, i64* %RBP
  %805 = load i64, i64* %RCX
  %806 = mul i64 %805, 8
  %807 = add i64 %804, -12736
  %808 = add i64 %807, %806
  %809 = load i64, i64* %RAX
  %810 = load i64, i64* %PC
  %811 = add i64 %810, 8
  store i64 %811, i64* %PC
  %812 = inttoptr i64 %808 to i64*
  store i64 %809, i64* %812
  %813 = load i64, i64* %RBP
  %814 = sub i64 %813, 56
  %815 = load i64, i64* %PC
  %816 = add i64 %815, 4
  store i64 %816, i64* %PC
  %817 = inttoptr i64 %814 to i64*
  %818 = load i64, i64* %817
  store i64 %818, i64* %RAX, align 8, !tbaa !2428
  %819 = load i64, i64* %RAX
  %820 = load i64, i64* %PC
  %821 = add i64 %820, 4
  store i64 %821, i64* %PC
  %822 = sub i64 %819, 1
  store i64 %822, i64* %RAX, align 8, !tbaa !2428
  %823 = icmp ult i64 %819, 1
  %824 = zext i1 %823 to i8
  %825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %824, i8* %825, align 1, !tbaa !2432
  %826 = trunc i64 %822 to i32
  %827 = and i32 %826, 255
  %828 = call i32 @llvm.ctpop.i32(i32 %827) #16
  %829 = trunc i32 %828 to i8
  %830 = and i8 %829, 1
  %831 = xor i8 %830, 1
  %832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %831, i8* %832, align 1, !tbaa !2446
  %833 = xor i64 1, %819
  %834 = xor i64 %833, %822
  %835 = lshr i64 %834, 4
  %836 = trunc i64 %835 to i8
  %837 = and i8 %836, 1
  %838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %837, i8* %838, align 1, !tbaa !2450
  %839 = icmp eq i64 %822, 0
  %840 = zext i1 %839 to i8
  %841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %840, i8* %841, align 1, !tbaa !2447
  %842 = lshr i64 %822, 63
  %843 = trunc i64 %842 to i8
  %844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %843, i8* %844, align 1, !tbaa !2448
  %845 = lshr i64 %819, 63
  %846 = xor i64 %842, %845
  %847 = add nuw nsw i64 %846, %845
  %848 = icmp eq i64 %847, 2
  %849 = zext i1 %848 to i8
  %850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %849, i8* %850, align 1, !tbaa !2449
  %851 = load i64, i64* %RBP
  %852 = load i64, i64* %RAX
  %853 = add i64 %851, -12992
  %854 = add i64 %853, %852
  %855 = load i64, i64* %PC
  %856 = add i64 %855, 7
  store i64 %856, i64* %PC
  %857 = inttoptr i64 %854 to i8*
  %858 = load i8, i8* %857
  store i8 %858, i8* %DL, align 1, !tbaa !2451
  %859 = load i64, i64* %RBP
  %860 = sub i64 %859, 56
  %861 = load i64, i64* %PC
  %862 = add i64 %861, 4
  store i64 %862, i64* %PC
  %863 = inttoptr i64 %860 to i64*
  %864 = load i64, i64* %863
  store i64 %864, i64* %RAX, align 8, !tbaa !2428
  %865 = load i64, i64* %RBP
  %866 = load i64, i64* %RAX
  %867 = add i64 %865, -12992
  %868 = add i64 %867, %866
  %869 = load i8, i8* %DL
  %870 = zext i8 %869 to i64
  %871 = load i64, i64* %PC
  %872 = add i64 %871, 7
  store i64 %872, i64* %PC
  %873 = inttoptr i64 %868 to i8*
  store i8 %869, i8* %873
  %874 = load i64, i64* %RBP
  %875 = sub i64 %874, 56
  %876 = load i64, i64* %PC
  %877 = add i64 %876, 4
  store i64 %877, i64* %PC
  %878 = inttoptr i64 %875 to i64*
  %879 = load i64, i64* %878
  store i64 %879, i64* %RAX, align 8, !tbaa !2428
  %880 = load i64, i64* %RAX
  %881 = load i64, i64* %PC
  %882 = add i64 %881, 4
  store i64 %882, i64* %PC
  %883 = add i64 -1, %880
  store i64 %883, i64* %RAX, align 8, !tbaa !2428
  %884 = icmp ult i64 %883, %880
  %885 = icmp ult i64 %883, -1
  %886 = or i1 %884, %885
  %887 = zext i1 %886 to i8
  %888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %887, i8* %888, align 1, !tbaa !2432
  %889 = trunc i64 %883 to i32
  %890 = and i32 %889, 255
  %891 = call i32 @llvm.ctpop.i32(i32 %890) #16
  %892 = trunc i32 %891 to i8
  %893 = and i8 %892, 1
  %894 = xor i8 %893, 1
  %895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %894, i8* %895, align 1, !tbaa !2446
  %896 = xor i64 -1, %880
  %897 = xor i64 %896, %883
  %898 = lshr i64 %897, 4
  %899 = trunc i64 %898 to i8
  %900 = and i8 %899, 1
  %901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %900, i8* %901, align 1, !tbaa !2450
  %902 = icmp eq i64 %883, 0
  %903 = zext i1 %902 to i8
  %904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %903, i8* %904, align 1, !tbaa !2447
  %905 = lshr i64 %883, 63
  %906 = trunc i64 %905 to i8
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %906, i8* %907, align 1, !tbaa !2448
  %908 = lshr i64 %880, 63
  %909 = xor i64 %905, %908
  %910 = xor i64 %905, 1
  %911 = add nuw nsw i64 %909, %910
  %912 = icmp eq i64 %911, 2
  %913 = zext i1 %912 to i8
  %914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %913, i8* %914, align 1, !tbaa !2449
  %915 = load i64, i64* %RBP
  %916 = sub i64 %915, 56
  %917 = load i64, i64* %RAX
  %918 = load i64, i64* %PC
  %919 = add i64 %918, 4
  store i64 %919, i64* %PC
  %920 = inttoptr i64 %916 to i64*
  store i64 %917, i64* %920
  %921 = load i64, i64* %PC
  %922 = sub i64 %921, 135
  %923 = load i64, i64* %PC
  %924 = add i64 %923, 5
  store i64 %924, i64* %PC
  %925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %922, i64* %925, align 8, !tbaa !2428
  br label %block_40117e

block_4011b0:                                     ; preds = %block_40117e, %block_401193
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.18, %block_40117e ], [ %MEMORY.18, %block_401193 ]
  %926 = load i64, i64* %RBP
  %927 = sub i64 %926, 13097
  %928 = load i64, i64* %PC
  %929 = add i64 %928, 6
  store i64 %929, i64* %PC
  %930 = inttoptr i64 %927 to i8*
  %931 = load i8, i8* %930
  store i8 %931, i8* %AL, align 1, !tbaa !2451
  %932 = load i8, i8* %AL
  %933 = zext i8 %932 to i64
  %934 = load i64, i64* %PC
  %935 = add i64 %934, 2
  store i64 %935, i64* %PC
  %936 = and i64 1, %933
  %937 = trunc i64 %936 to i8
  %938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %938, align 1, !tbaa !2432
  %939 = trunc i64 %936 to i32
  %940 = and i32 %939, 255
  %941 = call i32 @llvm.ctpop.i32(i32 %940) #16
  %942 = trunc i32 %941 to i8
  %943 = and i8 %942, 1
  %944 = xor i8 %943, 1
  %945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %944, i8* %945, align 1, !tbaa !2446
  %946 = icmp eq i8 %937, 0
  %947 = zext i1 %946 to i8
  %948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %947, i8* %948, align 1, !tbaa !2447
  %949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %949, align 1, !tbaa !2448
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %950, align 1, !tbaa !2449
  %951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %951, align 1, !tbaa !2450
  %952 = load i64, i64* %PC
  %953 = add i64 %952, 11
  %954 = load i64, i64* %PC
  %955 = add i64 %954, 6
  %956 = load i64, i64* %PC
  %957 = add i64 %956, 6
  store i64 %957, i64* %PC
  %958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %959 = load i8, i8* %958, align 1, !tbaa !2447
  %960 = icmp eq i8 %959, 0
  %961 = zext i1 %960 to i8
  store i8 %961, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %963 = select i1 %960, i64 %953, i64 %955
  store i64 %963, i64* %962, align 8, !tbaa !2428
  %964 = load i8, i8* %BRANCH_TAKEN
  %965 = icmp eq i8 %964, 1
  br i1 %965, label %block_4011c3, label %block_4011be

block_400da7:                                     ; preds = %block_400c36
  %966 = sub i64 %4767, 10664
  %967 = load i64, i64* %PC
  %968 = add i64 %967, 8
  store i64 %968, i64* %PC
  %969 = inttoptr i64 %966 to i64*
  %970 = load i64, i64* %969
  %971 = sub i64 %970, 64
  %972 = icmp ult i64 %970, 64
  %973 = zext i1 %972 to i8
  %974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %973, i8* %974, align 1, !tbaa !2432
  %975 = trunc i64 %971 to i32
  %976 = and i32 %975, 255
  %977 = call i32 @llvm.ctpop.i32(i32 %976) #16
  %978 = trunc i32 %977 to i8
  %979 = and i8 %978, 1
  %980 = xor i8 %979, 1
  %981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %980, i8* %981, align 1, !tbaa !2446
  %982 = xor i64 %970, 64
  %983 = xor i64 %982, %971
  %984 = lshr i64 %983, 4
  %985 = trunc i64 %984 to i8
  %986 = and i8 %985, 1
  %987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %986, i8* %987, align 1, !tbaa !2450
  %988 = icmp eq i64 %971, 0
  %989 = zext i1 %988 to i8
  %990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %989, i8* %990, align 1, !tbaa !2447
  %991 = lshr i64 %971, 63
  %992 = trunc i64 %991 to i8
  %993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %992, i8* %993, align 1, !tbaa !2448
  %994 = lshr i64 %970, 63
  %995 = xor i64 %991, %994
  %996 = add nuw nsw i64 %995, %994
  %997 = icmp eq i64 %996, 2
  %998 = zext i1 %997 to i8
  %999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %998, i8* %999, align 1, !tbaa !2449
  %1000 = load i64, i64* %PC
  %1001 = add i64 %1000, 47
  %1002 = load i64, i64* %PC
  %1003 = add i64 %1002, 6
  %1004 = load i64, i64* %PC
  %1005 = add i64 %1004, 6
  store i64 %1005, i64* %PC
  %1006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1007 = load i8, i8* %1006, align 1, !tbaa !2432
  %1008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1009 = load i8, i8* %1008, align 1, !tbaa !2447
  %1010 = or i8 %1009, %1007
  %1011 = icmp ne i8 %1010, 0
  %1012 = zext i1 %1011 to i8
  store i8 %1012, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1014 = select i1 %1011, i64 %1001, i64 %1003
  store i64 %1014, i64* %1013, align 8, !tbaa !2428
  %1015 = load i8, i8* %BRANCH_TAKEN
  %1016 = icmp eq i8 %1015, 1
  br i1 %1016, label %block_400dde, label %block_400db5

block_401193:                                     ; preds = %block_40117e
  %1017 = load i64, i64* %RBP
  %1018 = sub i64 %1017, 56
  %1019 = load i64, i64* %PC
  %1020 = add i64 %1019, 4
  store i64 %1020, i64* %PC
  %1021 = inttoptr i64 %1018 to i64*
  %1022 = load i64, i64* %1021
  store i64 %1022, i64* %RAX, align 8, !tbaa !2428
  %1023 = load i64, i64* %RAX
  %1024 = load i64, i64* %PC
  %1025 = add i64 %1024, 4
  store i64 %1025, i64* %PC
  %1026 = sub i64 %1023, 1
  store i64 %1026, i64* %RAX, align 8, !tbaa !2428
  %1027 = icmp ult i64 %1023, 1
  %1028 = zext i1 %1027 to i8
  %1029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1028, i8* %1029, align 1, !tbaa !2432
  %1030 = trunc i64 %1026 to i32
  %1031 = and i32 %1030, 255
  %1032 = call i32 @llvm.ctpop.i32(i32 %1031) #16
  %1033 = trunc i32 %1032 to i8
  %1034 = and i8 %1033, 1
  %1035 = xor i8 %1034, 1
  %1036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1035, i8* %1036, align 1, !tbaa !2446
  %1037 = xor i64 1, %1023
  %1038 = xor i64 %1037, %1026
  %1039 = lshr i64 %1038, 4
  %1040 = trunc i64 %1039 to i8
  %1041 = and i8 %1040, 1
  %1042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1041, i8* %1042, align 1, !tbaa !2450
  %1043 = icmp eq i64 %1026, 0
  %1044 = zext i1 %1043 to i8
  %1045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1044, i8* %1045, align 1, !tbaa !2447
  %1046 = lshr i64 %1026, 63
  %1047 = trunc i64 %1046 to i8
  %1048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1047, i8* %1048, align 1, !tbaa !2448
  %1049 = lshr i64 %1023, 63
  %1050 = xor i64 %1046, %1049
  %1051 = add nuw nsw i64 %1050, %1049
  %1052 = icmp eq i64 %1051, 2
  %1053 = zext i1 %1052 to i8
  %1054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1053, i8* %1054, align 1, !tbaa !2449
  %1055 = load i64, i64* %RBP
  %1056 = load i64, i64* %RAX
  %1057 = mul i64 %1056, 8
  %1058 = add i64 %1055, -12736
  %1059 = add i64 %1058, %1057
  %1060 = load i64, i64* %PC
  %1061 = add i64 %1060, 8
  store i64 %1061, i64* %PC
  %1062 = inttoptr i64 %1059 to i64*
  %1063 = load i64, i64* %1062
  store i64 %1063, i64* %RAX, align 8, !tbaa !2428
  %1064 = load i64, i64* %RAX
  %1065 = load i64, i64* %RBP
  %1066 = sub i64 %1065, 88
  %1067 = load i64, i64* %PC
  %1068 = add i64 %1067, 4
  store i64 %1068, i64* %PC
  %1069 = inttoptr i64 %1066 to i64*
  %1070 = load i64, i64* %1069
  %1071 = sub i64 %1064, %1070
  %1072 = icmp ugt i64 %1070, %1064
  %1073 = zext i1 %1072 to i8
  %1074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1073, i8* %1074, align 1, !tbaa !2432
  %1075 = trunc i64 %1071 to i32
  %1076 = and i32 %1075, 255
  %1077 = call i32 @llvm.ctpop.i32(i32 %1076) #16
  %1078 = trunc i32 %1077 to i8
  %1079 = and i8 %1078, 1
  %1080 = xor i8 %1079, 1
  %1081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1080, i8* %1081, align 1, !tbaa !2446
  %1082 = xor i64 %1070, %1064
  %1083 = xor i64 %1082, %1071
  %1084 = lshr i64 %1083, 4
  %1085 = trunc i64 %1084 to i8
  %1086 = and i8 %1085, 1
  %1087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1086, i8* %1087, align 1, !tbaa !2450
  %1088 = icmp eq i64 %1071, 0
  %1089 = zext i1 %1088 to i8
  %1090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1089, i8* %1090, align 1, !tbaa !2447
  %1091 = lshr i64 %1071, 63
  %1092 = trunc i64 %1091 to i8
  %1093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1092, i8* %1093, align 1, !tbaa !2448
  %1094 = lshr i64 %1064, 63
  %1095 = lshr i64 %1070, 63
  %1096 = xor i64 %1095, %1094
  %1097 = xor i64 %1091, %1094
  %1098 = add nuw nsw i64 %1097, %1096
  %1099 = icmp eq i64 %1098, 2
  %1100 = zext i1 %1099 to i8
  %1101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1100, i8* %1101, align 1, !tbaa !2449
  %1102 = load i64, i64* %PC
  %1103 = add i64 %1102, 3
  store i64 %1103, i64* %PC
  %1104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1105 = load i8, i8* %1104, align 1, !tbaa !2432
  %1106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1107 = load i8, i8* %1106, align 1, !tbaa !2447
  %1108 = or i8 %1107, %1105
  %1109 = icmp eq i8 %1108, 0
  %1110 = zext i1 %1109 to i8
  store i8 %1110, i8* %CL, align 1, !tbaa !2451
  %1111 = load i64, i64* %RBP
  %1112 = sub i64 %1111, 13097
  %1113 = load i8, i8* %CL
  %1114 = zext i8 %1113 to i64
  %1115 = load i64, i64* %PC
  %1116 = add i64 %1115, 6
  store i64 %1116, i64* %PC
  %1117 = inttoptr i64 %1112 to i8*
  store i8 %1113, i8* %1117
  br label %block_4011b0

block_401372:                                     ; preds = %block_401356
  %1118 = add i64 %1500, 8
  store i64 %1118, i64* %PC
  %1119 = inttoptr i64 %1499 to i64*
  store i64 128, i64* %1119
  %1120 = load i64, i64* %RBP
  %1121 = sub i64 %1120, 104
  %1122 = load i64, i64* %PC
  %1123 = add i64 %1122, 4
  store i64 %1123, i64* %PC
  %1124 = inttoptr i64 %1121 to i64*
  %1125 = load i64, i64* %1124
  store i64 %1125, i64* %RAX, align 8, !tbaa !2428
  %1126 = load i64, i64* %RAX
  %1127 = load i64, i64* %PC
  %1128 = add i64 %1127, 4
  store i64 %1128, i64* %PC
  %1129 = add i64 1, %1126
  store i64 %1129, i64* %RAX, align 8, !tbaa !2428
  %1130 = icmp ult i64 %1129, %1126
  %1131 = icmp ult i64 %1129, 1
  %1132 = or i1 %1130, %1131
  %1133 = zext i1 %1132 to i8
  %1134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1133, i8* %1134, align 1, !tbaa !2432
  %1135 = trunc i64 %1129 to i32
  %1136 = and i32 %1135, 255
  %1137 = call i32 @llvm.ctpop.i32(i32 %1136) #16
  %1138 = trunc i32 %1137 to i8
  %1139 = and i8 %1138, 1
  %1140 = xor i8 %1139, 1
  %1141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1140, i8* %1141, align 1, !tbaa !2446
  %1142 = xor i64 1, %1126
  %1143 = xor i64 %1142, %1129
  %1144 = lshr i64 %1143, 4
  %1145 = trunc i64 %1144 to i8
  %1146 = and i8 %1145, 1
  %1147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1146, i8* %1147, align 1, !tbaa !2450
  %1148 = icmp eq i64 %1129, 0
  %1149 = zext i1 %1148 to i8
  %1150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1149, i8* %1150, align 1, !tbaa !2447
  %1151 = lshr i64 %1129, 63
  %1152 = trunc i64 %1151 to i8
  %1153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1152, i8* %1153, align 1, !tbaa !2448
  %1154 = lshr i64 %1126, 63
  %1155 = xor i64 %1151, %1154
  %1156 = add nuw nsw i64 %1155, %1151
  %1157 = icmp eq i64 %1156, 2
  %1158 = zext i1 %1157 to i8
  %1159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1158, i8* %1159, align 1, !tbaa !2449
  %1160 = load i64, i64* %RBP
  %1161 = sub i64 %1160, 104
  %1162 = load i64, i64* %RAX
  %1163 = load i64, i64* %PC
  %1164 = add i64 %1163, 4
  store i64 %1164, i64* %PC
  %1165 = inttoptr i64 %1161 to i64*
  store i64 %1162, i64* %1165
  br label %block_401386

block_400f70:                                     ; preds = %block_400f3f, %block_400f5e
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.5, %block_400f3f ], [ %MEMORY.5, %block_400f5e ]
  %1166 = load i64, i64* %RBP
  %1167 = sub i64 %1166, 72
  %1168 = load i64, i64* %PC
  %1169 = add i64 %1168, 4
  store i64 %1169, i64* %PC
  %1170 = inttoptr i64 %1167 to i64*
  %1171 = load i64, i64* %1170
  store i64 %1171, i64* %RAX, align 8, !tbaa !2428
  %1172 = load i64, i64* %RAX
  %1173 = load i64, i64* %PC
  %1174 = add i64 %1173, 4
  store i64 %1174, i64* %PC
  %1175 = lshr i64 %1172, 63
  %1176 = trunc i64 %1175 to i8
  %1177 = trunc i64 %1172 to i8
  %1178 = and i8 %1177, 1
  %1179 = lshr i64 %1172, 1
  store i64 %1179, i64* %RAX, align 8, !tbaa !2428
  %1180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1178, i8* %1180, align 1, !tbaa !2451
  %1181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1182 = trunc i64 %1179 to i32
  %1183 = and i32 %1182, 255
  %1184 = call i32 @llvm.ctpop.i32(i32 %1183) #16
  %1185 = trunc i32 %1184 to i8
  %1186 = and i8 %1185, 1
  %1187 = xor i8 %1186, 1
  store i8 %1187, i8* %1181, align 1, !tbaa !2451
  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1188, align 1, !tbaa !2451
  %1189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1190 = icmp eq i64 %1179, 0
  %1191 = zext i1 %1190 to i8
  store i8 %1191, i8* %1189, align 1, !tbaa !2451
  %1192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1192, align 1, !tbaa !2451
  %1193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1176, i8* %1193, align 1, !tbaa !2451
  %1194 = load i64, i64* %RBP
  %1195 = sub i64 %1194, 72
  %1196 = load i64, i64* %RAX
  %1197 = load i64, i64* %PC
  %1198 = add i64 %1197, 4
  store i64 %1198, i64* %PC
  %1199 = inttoptr i64 %1195 to i64*
  store i64 %1196, i64* %1199
  %1200 = load i64, i64* %RBP
  %1201 = sub i64 %1200, 48
  %1202 = load i64, i64* %PC
  %1203 = add i64 %1202, 4
  store i64 %1203, i64* %PC
  %1204 = inttoptr i64 %1201 to i64*
  %1205 = load i64, i64* %1204
  store i64 %1205, i64* %RAX, align 8, !tbaa !2428
  %1206 = load i64, i64* %RAX
  %1207 = load i64, i64* %PC
  %1208 = add i64 %1207, 4
  store i64 %1208, i64* %PC
  %1209 = add i64 1, %1206
  store i64 %1209, i64* %RAX, align 8, !tbaa !2428
  %1210 = icmp ult i64 %1209, %1206
  %1211 = icmp ult i64 %1209, 1
  %1212 = or i1 %1210, %1211
  %1213 = zext i1 %1212 to i8
  %1214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1213, i8* %1214, align 1, !tbaa !2432
  %1215 = trunc i64 %1209 to i32
  %1216 = and i32 %1215, 255
  %1217 = call i32 @llvm.ctpop.i32(i32 %1216) #16
  %1218 = trunc i32 %1217 to i8
  %1219 = and i8 %1218, 1
  %1220 = xor i8 %1219, 1
  %1221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1220, i8* %1221, align 1, !tbaa !2446
  %1222 = xor i64 1, %1206
  %1223 = xor i64 %1222, %1209
  %1224 = lshr i64 %1223, 4
  %1225 = trunc i64 %1224 to i8
  %1226 = and i8 %1225, 1
  %1227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1226, i8* %1227, align 1, !tbaa !2450
  %1228 = icmp eq i64 %1209, 0
  %1229 = zext i1 %1228 to i8
  %1230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1229, i8* %1230, align 1, !tbaa !2447
  %1231 = lshr i64 %1209, 63
  %1232 = trunc i64 %1231 to i8
  %1233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1232, i8* %1233, align 1, !tbaa !2448
  %1234 = lshr i64 %1206, 63
  %1235 = xor i64 %1231, %1234
  %1236 = add nuw nsw i64 %1235, %1231
  %1237 = icmp eq i64 %1236, 2
  %1238 = zext i1 %1237 to i8
  %1239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1238, i8* %1239, align 1, !tbaa !2449
  %1240 = load i64, i64* %RBP
  %1241 = sub i64 %1240, 48
  %1242 = load i64, i64* %RAX
  %1243 = load i64, i64* %PC
  %1244 = add i64 %1243, 4
  store i64 %1244, i64* %PC
  %1245 = inttoptr i64 %1241 to i64*
  store i64 %1242, i64* %1245
  %1246 = load i64, i64* %PC
  %1247 = sub i64 %1246, 269
  %1248 = load i64, i64* %PC
  %1249 = add i64 %1248, 5
  store i64 %1249, i64* %PC
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1247, i64* %1250, align 8, !tbaa !2428
  br label %block_400e7b

block_400d6a:                                     ; preds = %block_400d1e, %block_400d5c
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.11, %block_400d1e ], [ %MEMORY.11, %block_400d5c ]
  %1251 = load i64, i64* %RBP
  %1252 = sub i64 %1251, 48
  %1253 = load i64, i64* %PC
  %1254 = add i64 %1253, 4
  store i64 %1254, i64* %PC
  %1255 = inttoptr i64 %1252 to i64*
  %1256 = load i64, i64* %1255
  store i64 %1256, i64* %RAX, align 8, !tbaa !2428
  %1257 = load i64, i64* %RAX
  %1258 = load i64, i64* %RBP
  %1259 = sub i64 %1258, 10664
  %1260 = load i64, i64* %PC
  %1261 = add i64 %1260, 7
  store i64 %1261, i64* %PC
  %1262 = inttoptr i64 %1259 to i64*
  %1263 = load i64, i64* %1262
  %1264 = sub i64 %1257, %1263
  %1265 = icmp ugt i64 %1263, %1257
  %1266 = zext i1 %1265 to i8
  %1267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1266, i8* %1267, align 1, !tbaa !2432
  %1268 = trunc i64 %1264 to i32
  %1269 = and i32 %1268, 255
  %1270 = call i32 @llvm.ctpop.i32(i32 %1269) #16
  %1271 = trunc i32 %1270 to i8
  %1272 = and i8 %1271, 1
  %1273 = xor i8 %1272, 1
  %1274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1273, i8* %1274, align 1, !tbaa !2446
  %1275 = xor i64 %1263, %1257
  %1276 = xor i64 %1275, %1264
  %1277 = lshr i64 %1276, 4
  %1278 = trunc i64 %1277 to i8
  %1279 = and i8 %1278, 1
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1279, i8* %1280, align 1, !tbaa !2450
  %1281 = icmp eq i64 %1264, 0
  %1282 = zext i1 %1281 to i8
  %1283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1282, i8* %1283, align 1, !tbaa !2447
  %1284 = lshr i64 %1264, 63
  %1285 = trunc i64 %1284 to i8
  %1286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1285, i8* %1286, align 1, !tbaa !2448
  %1287 = lshr i64 %1257, 63
  %1288 = lshr i64 %1263, 63
  %1289 = xor i64 %1288, %1287
  %1290 = xor i64 %1284, %1287
  %1291 = add nuw nsw i64 %1290, %1289
  %1292 = icmp eq i64 %1291, 2
  %1293 = zext i1 %1292 to i8
  %1294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1293, i8* %1294, align 1, !tbaa !2449
  %1295 = load i64, i64* %PC
  %1296 = add i64 %1295, 17
  %1297 = load i64, i64* %PC
  %1298 = add i64 %1297, 6
  %1299 = load i64, i64* %PC
  %1300 = add i64 %1299, 6
  store i64 %1300, i64* %PC
  %1301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1302 = load i8, i8* %1301, align 1, !tbaa !2432
  %1303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1304 = load i8, i8* %1303, align 1, !tbaa !2447
  %1305 = or i8 %1304, %1302
  %1306 = icmp ne i8 %1305, 0
  %1307 = zext i1 %1306 to i8
  store i8 %1307, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1309 = select i1 %1306, i64 %1296, i64 %1298
  store i64 %1309, i64* %1308, align 8, !tbaa !2428
  %1310 = load i8, i8* %BRANCH_TAKEN
  %1311 = icmp eq i8 %1310, 1
  br i1 %1311, label %block_400d86, label %block_400d7b

block_401361:                                     ; preds = %block_401356
  %1312 = add i64 %1500, 4
  store i64 %1312, i64* %PC
  %1313 = inttoptr i64 %1499 to i64*
  %1314 = load i64, i64* %1313
  store i64 %1314, i64* %RAX, align 8, !tbaa !2428
  %1315 = load i64, i64* %RAX
  %1316 = load i64, i64* %PC
  %1317 = add i64 %1316, 4
  store i64 %1317, i64* %PC
  %1318 = lshr i64 %1315, 63
  %1319 = trunc i64 %1318 to i8
  %1320 = trunc i64 %1315 to i8
  %1321 = and i8 %1320, 1
  %1322 = lshr i64 %1315, 1
  store i64 %1322, i64* %RAX, align 8, !tbaa !2428
  %1323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1321, i8* %1323, align 1, !tbaa !2451
  %1324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1325 = trunc i64 %1322 to i32
  %1326 = and i32 %1325, 255
  %1327 = call i32 @llvm.ctpop.i32(i32 %1326) #16
  %1328 = trunc i32 %1327 to i8
  %1329 = and i8 %1328, 1
  %1330 = xor i8 %1329, 1
  store i8 %1330, i8* %1324, align 1, !tbaa !2451
  %1331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1331, align 1, !tbaa !2451
  %1332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1333 = icmp eq i64 %1322, 0
  %1334 = zext i1 %1333 to i8
  store i8 %1334, i8* %1332, align 1, !tbaa !2451
  %1335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1335, align 1, !tbaa !2451
  %1336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1319, i8* %1336, align 1, !tbaa !2451
  %1337 = load i64, i64* %RBP
  %1338 = sub i64 %1337, 72
  %1339 = load i64, i64* %RAX
  %1340 = load i64, i64* %PC
  %1341 = add i64 %1340, 4
  store i64 %1341, i64* %PC
  %1342 = inttoptr i64 %1338 to i64*
  store i64 %1339, i64* %1342
  %1343 = load i64, i64* %PC
  %1344 = add i64 %1343, 25
  %1345 = load i64, i64* %PC
  %1346 = add i64 %1345, 5
  store i64 %1346, i64* %PC
  %1347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1344, i64* %1347, align 8, !tbaa !2428
  br label %block_401386

block_400f5e:                                     ; preds = %block_400f3f
  %1348 = load i64, i64* %RBP
  %1349 = sub i64 %1348, 10681
  %1350 = load i64, i64* %PC
  %1351 = add i64 %1350, 7
  store i64 %1351, i64* %PC
  %1352 = inttoptr i64 %1349 to i8*
  %1353 = load i8, i8* %1352
  %1354 = sext i8 %1353 to i64
  %1355 = and i64 %1354, 4294967295
  store i64 %1355, i64* %RAX, align 8, !tbaa !2428
  %1356 = load i64, i64* %RAX
  %1357 = load i64, i64* %PC
  %1358 = add i64 %1357, 3
  store i64 %1358, i64* %PC
  %1359 = or i64 1, %1356
  %1360 = trunc i64 %1359 to i32
  %1361 = and i64 %1359, 4294967295
  store i64 %1361, i64* %RAX, align 8, !tbaa !2428
  %1362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1362, align 1, !tbaa !2432
  %1363 = and i32 %1360, 255
  %1364 = call i32 @llvm.ctpop.i32(i32 %1363) #16
  %1365 = trunc i32 %1364 to i8
  %1366 = and i8 %1365, 1
  %1367 = xor i8 %1366, 1
  %1368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1367, i8* %1368, align 1, !tbaa !2446
  %1369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1369, align 1, !tbaa !2447
  %1370 = lshr i32 %1360, 31
  %1371 = trunc i32 %1370 to i8
  %1372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1371, i8* %1372, align 1, !tbaa !2448
  %1373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1373, align 1, !tbaa !2449
  %1374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1374, align 1, !tbaa !2450
  %1375 = load i8, i8* %AL
  %1376 = zext i8 %1375 to i64
  %1377 = load i64, i64* %PC
  %1378 = add i64 %1377, 2
  store i64 %1378, i64* %PC
  store i8 %1375, i8* %CL, align 1, !tbaa !2451
  %1379 = load i64, i64* %RBP
  %1380 = sub i64 %1379, 10681
  %1381 = load i8, i8* %CL
  %1382 = zext i8 %1381 to i64
  %1383 = load i64, i64* %PC
  %1384 = add i64 %1383, 6
  store i64 %1384, i64* %PC
  %1385 = inttoptr i64 %1380 to i8*
  store i8 %1381, i8* %1385
  br label %block_400f70

block_400db5:                                     ; preds = %block_400da7
  %1386 = load i64, i64* %PC
  %1387 = add i64 %1386, 10
  store i64 %1387, i64* %PC
  store i64 add (i64 ptrtoint (%seg_401660__rodata_type* @seg_401660__rodata to i64), i64 37), i64* %RSI, align 8, !tbaa !2428
  %1388 = load i64, i64* %PC
  %1389 = add i64 %1388, 8
  store i64 %1389, i64* %PC
  %1390 = load i64, i64* @stderr
  store i64 %1390, i64* %RDI, align 8, !tbaa !2428
  %1391 = load i64, i64* %PC
  %1392 = add i64 %1391, 2
  store i64 %1392, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %1393 = load i64, i64* %PC
  %1394 = sub i64 %1393, 1945
  %1395 = load i64, i64* %PC
  %1396 = add i64 %1395, 5
  %1397 = load i64, i64* %PC
  %1398 = add i64 %1397, 5
  store i64 %1398, i64* %PC
  %1399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1400 = load i64, i64* %1399, align 8, !tbaa !2428
  %1401 = add i64 %1400, -8
  %1402 = inttoptr i64 %1401 to i64*
  store i64 %1396, i64* %1402
  store i64 %1401, i64* %1399, align 8, !tbaa !2428
  %1403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1394, i64* %1403, align 8, !tbaa !2428
  %1404 = load i64, i64* %PC
  %1405 = call %struct.Memory* @ext_6020d0_fprintf(%struct.State* %0, i64 %1404, %struct.Memory* %MEMORY.21)
  %1406 = load i64, i64* %PC
  %1407 = add i64 %1406, 5
  store i64 %1407, i64* %PC
  store i64 1, i64* %RDI, align 8, !tbaa !2428
  %1408 = load i64, i64* %RBP
  %1409 = sub i64 %1408, 13080
  %1410 = load i32, i32* %EAX
  %1411 = zext i32 %1410 to i64
  %1412 = load i64, i64* %PC
  %1413 = add i64 %1412, 6
  store i64 %1413, i64* %PC
  %1414 = inttoptr i64 %1409 to i32*
  store i32 %1410, i32* %1414
  %1415 = load i64, i64* %PC
  %1416 = sub i64 %1415, 1913
  %1417 = load i64, i64* %PC
  %1418 = add i64 %1417, 5
  %1419 = load i64, i64* %PC
  %1420 = add i64 %1419, 5
  store i64 %1420, i64* %PC
  %1421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1422 = load i64, i64* %1421, align 8, !tbaa !2428
  %1423 = add i64 %1422, -8
  %1424 = inttoptr i64 %1423 to i64*
  store i64 %1418, i64* %1424
  store i64 %1423, i64* %1421, align 8, !tbaa !2428
  %1425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1416, i64* %1425, align 8, !tbaa !2428
  %1426 = load i64, i64* %PC
  %1427 = call %struct.Memory* @ext_400660_exit(%struct.State* %0, i64 %1426, %struct.Memory* %1405)
  %1428 = load i64, i64* %PC
  %1429 = tail call %struct.Memory* @__remill_error(%struct.State* %0, i64 %1428, %struct.Memory* %1427)
  ret %struct.Memory* %1429

block_400d5c:                                     ; preds = %block_400d1e
  %1430 = load i64, i64* %RBP
  %1431 = sub i64 %1430, 10648
  %1432 = load i64, i64* %PC
  %1433 = add i64 %1432, 7
  store i64 %1433, i64* %PC
  %1434 = inttoptr i64 %1431 to i64*
  %1435 = load i64, i64* %1434
  store i64 %1435, i64* %RAX, align 8, !tbaa !2428
  %1436 = load i64, i64* %RBP
  %1437 = sub i64 %1436, 10656
  %1438 = load i64, i64* %RAX
  %1439 = load i64, i64* %PC
  %1440 = add i64 %1439, 7
  store i64 %1440, i64* %PC
  %1441 = inttoptr i64 %1437 to i64*
  store i64 %1438, i64* %1441
  br label %block_400d6a

block_401239:                                     ; preds = %block_40114a
  %1442 = sub i64 %4913, 56
  %1443 = load i64, i64* %PC
  %1444 = add i64 %1443, 8
  store i64 %1444, i64* %PC
  %1445 = inttoptr i64 %1442 to i64*
  store i64 0, i64* %1445
  br label %block_401241

block_401356:                                     ; preds = %block_401307, %block_40131d
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.9, %block_401307 ], [ %MEMORY.9, %block_40131d ]
  %1446 = load i64, i64* %RBP
  %1447 = sub i64 %1446, 72
  %1448 = load i64, i64* %PC
  %1449 = add i64 %1448, 5
  store i64 %1449, i64* %PC
  %1450 = inttoptr i64 %1447 to i64*
  %1451 = load i64, i64* %1450
  %1452 = sub i64 %1451, 1
  %1453 = icmp ult i64 %1451, 1
  %1454 = zext i1 %1453 to i8
  %1455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1454, i8* %1455, align 1, !tbaa !2432
  %1456 = trunc i64 %1452 to i32
  %1457 = and i32 %1456, 255
  %1458 = call i32 @llvm.ctpop.i32(i32 %1457) #16
  %1459 = trunc i32 %1458 to i8
  %1460 = and i8 %1459, 1
  %1461 = xor i8 %1460, 1
  %1462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1461, i8* %1462, align 1, !tbaa !2446
  %1463 = xor i64 %1451, 1
  %1464 = xor i64 %1463, %1452
  %1465 = lshr i64 %1464, 4
  %1466 = trunc i64 %1465 to i8
  %1467 = and i8 %1466, 1
  %1468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1467, i8* %1468, align 1, !tbaa !2450
  %1469 = icmp eq i64 %1452, 0
  %1470 = zext i1 %1469 to i8
  %1471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1470, i8* %1471, align 1, !tbaa !2447
  %1472 = lshr i64 %1452, 63
  %1473 = trunc i64 %1472 to i8
  %1474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1473, i8* %1474, align 1, !tbaa !2448
  %1475 = lshr i64 %1451, 63
  %1476 = xor i64 %1472, %1475
  %1477 = add nuw nsw i64 %1476, %1475
  %1478 = icmp eq i64 %1477, 2
  %1479 = zext i1 %1478 to i8
  %1480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1479, i8* %1480, align 1, !tbaa !2449
  %1481 = load i64, i64* %PC
  %1482 = add i64 %1481, 23
  %1483 = load i64, i64* %PC
  %1484 = add i64 %1483, 6
  %1485 = load i64, i64* %PC
  %1486 = add i64 %1485, 6
  store i64 %1486, i64* %PC
  %1487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1488 = load i8, i8* %1487, align 1, !tbaa !2432
  %1489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1490 = load i8, i8* %1489, align 1, !tbaa !2447
  %1491 = or i8 %1490, %1488
  %1492 = icmp ne i8 %1491, 0
  %1493 = zext i1 %1492 to i8
  store i8 %1493, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1495 = select i1 %1492, i64 %1482, i64 %1484
  store i64 %1495, i64* %1494, align 8, !tbaa !2428
  %1496 = load i8, i8* %BRANCH_TAKEN
  %1497 = icmp eq i8 %1496, 1
  %1498 = load i64, i64* %RBP
  %1499 = sub i64 %1498, 72
  %1500 = load i64, i64* %PC
  br i1 %1497, label %block_401372, label %block_401361

block_400d8b:                                     ; preds = %block_400d86, %block_400c5d
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.24, %block_400d86 ], [ %MEMORY.21, %block_400c5d ]
  %1501 = load i64, i64* %PC
  %1502 = add i64 %1501, 5
  %1503 = load i64, i64* %PC
  %1504 = add i64 %1503, 5
  store i64 %1504, i64* %PC
  %1505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1502, i64* %1505, align 8, !tbaa !2428
  %1506 = load i64, i64* %RBP
  %1507 = sub i64 %1506, 10640
  %1508 = load i64, i64* %PC
  %1509 = add i64 %1508, 7
  store i64 %1509, i64* %PC
  %1510 = inttoptr i64 %1507 to i64*
  %1511 = load i64, i64* %1510
  store i64 %1511, i64* %RAX, align 8, !tbaa !2428
  %1512 = load i64, i64* %RAX
  %1513 = load i64, i64* %PC
  %1514 = add i64 %1513, 4
  store i64 %1514, i64* %PC
  %1515 = add i64 1, %1512
  store i64 %1515, i64* %RAX, align 8, !tbaa !2428
  %1516 = icmp ult i64 %1515, %1512
  %1517 = icmp ult i64 %1515, 1
  %1518 = or i1 %1516, %1517
  %1519 = zext i1 %1518 to i8
  %1520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1519, i8* %1520, align 1, !tbaa !2432
  %1521 = trunc i64 %1515 to i32
  %1522 = and i32 %1521, 255
  %1523 = call i32 @llvm.ctpop.i32(i32 %1522) #16
  %1524 = trunc i32 %1523 to i8
  %1525 = and i8 %1524, 1
  %1526 = xor i8 %1525, 1
  %1527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1526, i8* %1527, align 1, !tbaa !2446
  %1528 = xor i64 1, %1512
  %1529 = xor i64 %1528, %1515
  %1530 = lshr i64 %1529, 4
  %1531 = trunc i64 %1530 to i8
  %1532 = and i8 %1531, 1
  %1533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1532, i8* %1533, align 1, !tbaa !2450
  %1534 = icmp eq i64 %1515, 0
  %1535 = zext i1 %1534 to i8
  %1536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1535, i8* %1536, align 1, !tbaa !2447
  %1537 = lshr i64 %1515, 63
  %1538 = trunc i64 %1537 to i8
  %1539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1538, i8* %1539, align 1, !tbaa !2448
  %1540 = lshr i64 %1512, 63
  %1541 = xor i64 %1537, %1540
  %1542 = add nuw nsw i64 %1541, %1537
  %1543 = icmp eq i64 %1542, 2
  %1544 = zext i1 %1543 to i8
  %1545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1544, i8* %1545, align 1, !tbaa !2449
  %1546 = load i64, i64* %RBP
  %1547 = sub i64 %1546, 10640
  %1548 = load i64, i64* %RAX
  %1549 = load i64, i64* %PC
  %1550 = add i64 %1549, 7
  store i64 %1550, i64* %PC
  %1551 = inttoptr i64 %1547 to i64*
  store i64 %1548, i64* %1551
  %1552 = load i64, i64* %PC
  %1553 = sub i64 %1552, 364
  %1554 = load i64, i64* %PC
  %1555 = add i64 %1554, 5
  store i64 %1555, i64* %PC
  %1556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1553, i64* %1556, align 8, !tbaa !2428
  br label %block_400c36

block_400f3f:                                     ; preds = %block_400f1e, %block_400f08
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.16, %block_400f1e ], [ %MEMORY.16, %block_400f08 ]
  %1557 = load i64, i64* %RBP
  %1558 = sub i64 %1557, 112
  %1559 = load i64, i64* %PC
  %1560 = add i64 %1559, 4
  store i64 %1560, i64* %PC
  %1561 = inttoptr i64 %1558 to i64*
  %1562 = load i64, i64* %1561
  store i64 %1562, i64* %RAX, align 8, !tbaa !2428
  %1563 = load i64, i64* %RAX
  %1564 = load i64, i64* %PC
  %1565 = add i64 %1564, 3
  store i64 %1565, i64* %PC
  %1566 = inttoptr i64 %1563 to i8*
  %1567 = load i8, i8* %1566
  %1568 = zext i8 %1567 to i64
  store i64 %1568, i64* %RCX, align 8, !tbaa !2428
  %1569 = load i32, i32* %ECX
  %1570 = zext i32 %1569 to i64
  %1571 = load i64, i64* %PC
  %1572 = add i64 %1571, 2
  store i64 %1572, i64* %PC
  %1573 = and i64 %1570, 4294967295
  store i64 %1573, i64* %RAX, align 8, !tbaa !2428
  %1574 = load i64, i64* %RBP
  %1575 = load i64, i64* %RAX
  %1576 = mul i64 %1575, 8
  %1577 = add i64 %1574, -10368
  %1578 = add i64 %1577, %1576
  %1579 = load i64, i64* %PC
  %1580 = add i64 %1579, 8
  store i64 %1580, i64* %PC
  %1581 = inttoptr i64 %1578 to i64*
  %1582 = load i64, i64* %1581
  store i64 %1582, i64* %RAX, align 8, !tbaa !2428
  %1583 = load i64, i64* %RAX
  %1584 = load i64, i64* %RBP
  %1585 = sub i64 %1584, 72
  %1586 = load i64, i64* %PC
  %1587 = add i64 %1586, 4
  store i64 %1587, i64* %PC
  %1588 = inttoptr i64 %1585 to i64*
  %1589 = load i64, i64* %1588
  %1590 = and i64 %1589, %1583
  store i64 %1590, i64* %RAX, align 8, !tbaa !2428
  %1591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1591, align 1, !tbaa !2432
  %1592 = trunc i64 %1590 to i32
  %1593 = and i32 %1592, 255
  %1594 = call i32 @llvm.ctpop.i32(i32 %1593) #16
  %1595 = trunc i32 %1594 to i8
  %1596 = and i8 %1595, 1
  %1597 = xor i8 %1596, 1
  %1598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1597, i8* %1598, align 1, !tbaa !2446
  %1599 = icmp eq i64 %1590, 0
  %1600 = zext i1 %1599 to i8
  %1601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1600, i8* %1601, align 1, !tbaa !2447
  %1602 = lshr i64 %1590, 63
  %1603 = trunc i64 %1602 to i8
  %1604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1603, i8* %1604, align 1, !tbaa !2448
  %1605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1605, align 1, !tbaa !2449
  %1606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1606, align 1, !tbaa !2450
  %1607 = load i64, i64* %RAX
  %1608 = load i64, i64* %PC
  %1609 = add i64 %1608, 4
  store i64 %1609, i64* %PC
  %1610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1610, align 1, !tbaa !2432
  %1611 = trunc i64 %1607 to i32
  %1612 = and i32 %1611, 255
  %1613 = call i32 @llvm.ctpop.i32(i32 %1612) #16
  %1614 = trunc i32 %1613 to i8
  %1615 = and i8 %1614, 1
  %1616 = xor i8 %1615, 1
  %1617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1616, i8* %1617, align 1, !tbaa !2446
  %1618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1618, align 1, !tbaa !2450
  %1619 = icmp eq i64 %1607, 0
  %1620 = zext i1 %1619 to i8
  %1621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1620, i8* %1621, align 1, !tbaa !2447
  %1622 = lshr i64 %1607, 63
  %1623 = trunc i64 %1622 to i8
  %1624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1623, i8* %1624, align 1, !tbaa !2448
  %1625 = lshr i64 %1607, 63
  %1626 = xor i64 %1622, %1625
  %1627 = add nuw nsw i64 %1626, %1625
  %1628 = icmp eq i64 %1627, 2
  %1629 = zext i1 %1628 to i8
  %1630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1629, i8* %1630, align 1, !tbaa !2449
  %1631 = load i64, i64* %PC
  %1632 = add i64 %1631, 24
  %1633 = load i64, i64* %PC
  %1634 = add i64 %1633, 6
  %1635 = load i64, i64* %PC
  %1636 = add i64 %1635, 6
  store i64 %1636, i64* %PC
  %1637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1638 = load i8, i8* %1637, align 1, !tbaa !2447
  store i8 %1638, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1640 = icmp ne i8 %1638, 0
  %1641 = select i1 %1640, i64 %1632, i64 %1634
  store i64 %1641, i64* %1639, align 8, !tbaa !2428
  %1642 = load i8, i8* %BRANCH_TAKEN
  %1643 = icmp eq i8 %1642, 1
  br i1 %1643, label %block_400f70, label %block_400f5e

block_40112c:                                     ; preds = %block_401037, %block_40111c
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.23, %block_401037 ], [ %MEMORY.12, %block_40111c ]
  %1644 = load i64, i64* %PC
  %1645 = add i64 %1644, 5
  %1646 = load i64, i64* %PC
  %1647 = add i64 %1646, 5
  store i64 %1647, i64* %PC
  %1648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1645, i64* %1648, align 8, !tbaa !2428
  %1649 = load i64, i64* %RBP
  %1650 = sub i64 %1649, 56
  %1651 = load i64, i64* %PC
  %1652 = add i64 %1651, 4
  store i64 %1652, i64* %PC
  %1653 = inttoptr i64 %1650 to i64*
  %1654 = load i64, i64* %1653
  store i64 %1654, i64* %RAX, align 8, !tbaa !2428
  %1655 = load i64, i64* %RAX
  %1656 = load i64, i64* %PC
  %1657 = add i64 %1656, 4
  store i64 %1657, i64* %PC
  %1658 = add i64 1, %1655
  store i64 %1658, i64* %RAX, align 8, !tbaa !2428
  %1659 = icmp ult i64 %1658, %1655
  %1660 = icmp ult i64 %1658, 1
  %1661 = or i1 %1659, %1660
  %1662 = zext i1 %1661 to i8
  %1663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1662, i8* %1663, align 1, !tbaa !2432
  %1664 = trunc i64 %1658 to i32
  %1665 = and i32 %1664, 255
  %1666 = call i32 @llvm.ctpop.i32(i32 %1665) #16
  %1667 = trunc i32 %1666 to i8
  %1668 = and i8 %1667, 1
  %1669 = xor i8 %1668, 1
  %1670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1669, i8* %1670, align 1, !tbaa !2446
  %1671 = xor i64 1, %1655
  %1672 = xor i64 %1671, %1658
  %1673 = lshr i64 %1672, 4
  %1674 = trunc i64 %1673 to i8
  %1675 = and i8 %1674, 1
  %1676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1675, i8* %1676, align 1, !tbaa !2450
  %1677 = icmp eq i64 %1658, 0
  %1678 = zext i1 %1677 to i8
  %1679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1678, i8* %1679, align 1, !tbaa !2447
  %1680 = lshr i64 %1658, 63
  %1681 = trunc i64 %1680 to i8
  %1682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1681, i8* %1682, align 1, !tbaa !2448
  %1683 = lshr i64 %1655, 63
  %1684 = xor i64 %1680, %1683
  %1685 = add nuw nsw i64 %1684, %1680
  %1686 = icmp eq i64 %1685, 2
  %1687 = zext i1 %1686 to i8
  %1688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1687, i8* %1688, align 1, !tbaa !2449
  %1689 = load i64, i64* %RBP
  %1690 = sub i64 %1689, 56
  %1691 = load i64, i64* %RAX
  %1692 = load i64, i64* %PC
  %1693 = add i64 %1692, 4
  store i64 %1693, i64* %PC
  %1694 = inttoptr i64 %1690 to i64*
  store i64 %1691, i64* %1694
  %1695 = load i64, i64* %PC
  %1696 = sub i64 %1695, 276
  %1697 = load i64, i64* %PC
  %1698 = add i64 %1697, 5
  store i64 %1698, i64* %PC
  %1699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1696, i64* %1699, align 8, !tbaa !2428
  br label %block_401029

block_40138b:                                     ; preds = %block_40129a
  %1700 = sub i64 %3194, 120
  %1701 = load i64, i64* %PC
  %1702 = add i64 %1701, 4
  store i64 %1702, i64* %PC
  %1703 = inttoptr i64 %1700 to i64*
  %1704 = load i64, i64* %1703
  store i64 %1704, i64* %RDI, align 8, !tbaa !2428
  %1705 = load i64, i64* %PC
  %1706 = sub i64 %1705, 3471
  %1707 = load i64, i64* %PC
  %1708 = add i64 %1707, 5
  %1709 = load i64, i64* %PC
  %1710 = add i64 %1709, 5
  store i64 %1710, i64* %PC
  %1711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1712 = load i64, i64* %1711, align 8, !tbaa !2428
  %1713 = add i64 %1712, -8
  %1714 = inttoptr i64 %1713 to i64*
  store i64 %1708, i64* %1714
  store i64 %1713, i64* %1711, align 8, !tbaa !2428
  %1715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1706, i64* %1715, align 8, !tbaa !2428
  %1716 = load i64, i64* %PC
  %1717 = call %struct.Memory* @ext_6020f0_free(%struct.State* %0, i64 %1716, %struct.Memory* %MEMORY.15)
  %1718 = load i64, i64* %RSP
  %1719 = load i64, i64* %PC
  %1720 = add i64 %1719, 7
  store i64 %1720, i64* %PC
  %1721 = add i64 13080, %1718
  store i64 %1721, i64* %RSP, align 8, !tbaa !2428
  %1722 = icmp ult i64 %1721, %1718
  %1723 = icmp ult i64 %1721, 13080
  %1724 = or i1 %1722, %1723
  %1725 = zext i1 %1724 to i8
  %1726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1725, i8* %1726, align 1, !tbaa !2432
  %1727 = trunc i64 %1721 to i32
  %1728 = and i32 %1727, 255
  %1729 = call i32 @llvm.ctpop.i32(i32 %1728) #16
  %1730 = trunc i32 %1729 to i8
  %1731 = and i8 %1730, 1
  %1732 = xor i8 %1731, 1
  %1733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1732, i8* %1733, align 1, !tbaa !2446
  %1734 = xor i64 13080, %1718
  %1735 = xor i64 %1734, %1721
  %1736 = lshr i64 %1735, 4
  %1737 = trunc i64 %1736 to i8
  %1738 = and i8 %1737, 1
  %1739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1738, i8* %1739, align 1, !tbaa !2450
  %1740 = icmp eq i64 %1721, 0
  %1741 = zext i1 %1740 to i8
  %1742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1741, i8* %1742, align 1, !tbaa !2447
  %1743 = lshr i64 %1721, 63
  %1744 = trunc i64 %1743 to i8
  %1745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1744, i8* %1745, align 1, !tbaa !2448
  %1746 = lshr i64 %1718, 63
  %1747 = xor i64 %1743, %1746
  %1748 = add nuw nsw i64 %1747, %1743
  %1749 = icmp eq i64 %1748, 2
  %1750 = zext i1 %1749 to i8
  %1751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1750, i8* %1751, align 1, !tbaa !2449
  %1752 = load i64, i64* %PC
  %1753 = add i64 %1752, 1
  store i64 %1753, i64* %PC
  %1754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1755 = load i64, i64* %1754, align 8, !tbaa !2428
  %1756 = add i64 %1755, 8
  %1757 = inttoptr i64 %1755 to i64*
  %1758 = load i64, i64* %1757
  store i64 %1758, i64* %RBX, align 8, !tbaa !2428
  store i64 %1756, i64* %1754, align 8, !tbaa !2428
  %1759 = load i64, i64* %PC
  %1760 = add i64 %1759, 2
  store i64 %1760, i64* %PC
  %1761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1762 = load i64, i64* %1761, align 8, !tbaa !2428
  %1763 = add i64 %1762, 8
  %1764 = inttoptr i64 %1762 to i64*
  %1765 = load i64, i64* %1764
  store i64 %1765, i64* %R14, align 8, !tbaa !2428
  store i64 %1763, i64* %1761, align 8, !tbaa !2428
  %1766 = load i64, i64* %PC
  %1767 = add i64 %1766, 2
  store i64 %1767, i64* %PC
  %1768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1769 = load i64, i64* %1768, align 8, !tbaa !2428
  %1770 = add i64 %1769, 8
  %1771 = inttoptr i64 %1769 to i64*
  %1772 = load i64, i64* %1771
  store i64 %1772, i64* %R15, align 8, !tbaa !2428
  store i64 %1770, i64* %1768, align 8, !tbaa !2428
  %1773 = load i64, i64* %PC
  %1774 = add i64 %1773, 1
  store i64 %1774, i64* %PC
  %1775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1776 = load i64, i64* %1775, align 8, !tbaa !2428
  %1777 = add i64 %1776, 8
  %1778 = inttoptr i64 %1776 to i64*
  %1779 = load i64, i64* %1778
  store i64 %1779, i64* %RBP, align 8, !tbaa !2428
  store i64 %1777, i64* %1775, align 8, !tbaa !2428
  %1780 = load i64, i64* %PC
  %1781 = add i64 %1780, 1
  store i64 %1781, i64* %PC
  %1782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1784 = load i64, i64* %1783, align 8, !tbaa !2428
  %1785 = inttoptr i64 %1784 to i64*
  %1786 = load i64, i64* %1785
  store i64 %1786, i64* %1782, align 8, !tbaa !2428
  %1787 = add i64 %1784, 8
  store i64 %1787, i64* %1783, align 8, !tbaa !2428
  ret %struct.Memory* %1717

block_40111c:                                     ; preds = %block_4010ae
  %1788 = load i64, i64* %RBP
  %1789 = sub i64 %1788, 56
  %1790 = load i64, i64* %PC
  %1791 = add i64 %1790, 4
  store i64 %1791, i64* %PC
  %1792 = inttoptr i64 %1789 to i64*
  %1793 = load i64, i64* %1792
  store i64 %1793, i64* %RCX, align 8, !tbaa !2428
  %1794 = load i64, i64* %RBP
  %1795 = load i64, i64* %RCX
  %1796 = mul i64 %1795, 8
  %1797 = add i64 %1794, -12736
  %1798 = add i64 %1797, %1796
  %1799 = load i64, i64* %RAX
  %1800 = load i64, i64* %PC
  %1801 = add i64 %1800, 8
  store i64 %1801, i64* %PC
  %1802 = inttoptr i64 %1798 to i64*
  store i64 %1799, i64* %1802
  br label %block_40112c

block_400b0d:                                     ; preds = %block_400b08, %block_400b18
  %MEMORY.7 = phi %struct.Memory* [ %MEMORY.20, %block_400b08 ], [ %4499, %block_400b18 ]
  %1803 = load i64, i64* %RBP
  %1804 = sub i64 %1803, 64
  %1805 = load i64, i64* %PC
  %1806 = add i64 %1805, 5
  store i64 %1806, i64* %PC
  %1807 = inttoptr i64 %1804 to i64*
  %1808 = load i64, i64* %1807
  %1809 = sub i64 %1808, 1
  %1810 = icmp ult i64 %1808, 1
  %1811 = zext i1 %1810 to i8
  %1812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1811, i8* %1812, align 1, !tbaa !2432
  %1813 = trunc i64 %1809 to i32
  %1814 = and i32 %1813, 255
  %1815 = call i32 @llvm.ctpop.i32(i32 %1814) #16
  %1816 = trunc i32 %1815 to i8
  %1817 = and i8 %1816, 1
  %1818 = xor i8 %1817, 1
  %1819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1818, i8* %1819, align 1, !tbaa !2446
  %1820 = xor i64 %1808, 1
  %1821 = xor i64 %1820, %1809
  %1822 = lshr i64 %1821, 4
  %1823 = trunc i64 %1822 to i8
  %1824 = and i8 %1823, 1
  %1825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1824, i8* %1825, align 1, !tbaa !2450
  %1826 = icmp eq i64 %1809, 0
  %1827 = zext i1 %1826 to i8
  %1828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1827, i8* %1828, align 1, !tbaa !2447
  %1829 = lshr i64 %1809, 63
  %1830 = trunc i64 %1829 to i8
  %1831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1830, i8* %1831, align 1, !tbaa !2448
  %1832 = lshr i64 %1808, 63
  %1833 = xor i64 %1829, %1832
  %1834 = add nuw nsw i64 %1833, %1832
  %1835 = icmp eq i64 %1834, 2
  %1836 = zext i1 %1835 to i8
  %1837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1836, i8* %1837, align 1, !tbaa !2449
  %1838 = load i64, i64* %PC
  %1839 = add i64 %1838, 238
  %1840 = load i64, i64* %PC
  %1841 = add i64 %1840, 6
  %1842 = load i64, i64* %PC
  %1843 = add i64 %1842, 6
  store i64 %1843, i64* %PC
  %1844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1845 = load i8, i8* %1844, align 1, !tbaa !2432
  %1846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1847 = load i8, i8* %1846, align 1, !tbaa !2447
  %1848 = or i8 %1847, %1845
  %1849 = icmp ne i8 %1848, 0
  %1850 = zext i1 %1849 to i8
  store i8 %1850, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1852 = select i1 %1849, i64 %1839, i64 %1841
  store i64 %1852, i64* %1851, align 8, !tbaa !2428
  %1853 = load i8, i8* %BRANCH_TAKEN
  %1854 = icmp eq i8 %1853, 1
  br i1 %1854, label %block_400c00, label %block_400b18

block_4012f6:                                     ; preds = %block_4012e0
  %1855 = sub i64 %2130, 48
  %1856 = load i64, i64* %PC
  %1857 = add i64 %1856, 4
  store i64 %1857, i64* %PC
  %1858 = inttoptr i64 %1855 to i64*
  %1859 = load i64, i64* %1858
  store i64 %1859, i64* %RAX, align 8, !tbaa !2428
  %1860 = load i64, i64* %RAX
  %1861 = load i64, i64* %PC
  %1862 = add i64 %1861, 4
  store i64 %1862, i64* %PC
  %1863 = add i64 1, %1860
  store i64 %1863, i64* %RAX, align 8, !tbaa !2428
  %1864 = icmp ult i64 %1863, %1860
  %1865 = icmp ult i64 %1863, 1
  %1866 = or i1 %1864, %1865
  %1867 = zext i1 %1866 to i8
  %1868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1867, i8* %1868, align 1, !tbaa !2432
  %1869 = trunc i64 %1863 to i32
  %1870 = and i32 %1869, 255
  %1871 = call i32 @llvm.ctpop.i32(i32 %1870) #16
  %1872 = trunc i32 %1871 to i8
  %1873 = and i8 %1872, 1
  %1874 = xor i8 %1873, 1
  %1875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1874, i8* %1875, align 1, !tbaa !2446
  %1876 = xor i64 1, %1860
  %1877 = xor i64 %1876, %1863
  %1878 = lshr i64 %1877, 4
  %1879 = trunc i64 %1878 to i8
  %1880 = and i8 %1879, 1
  %1881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1880, i8* %1881, align 1, !tbaa !2450
  %1882 = icmp eq i64 %1863, 0
  %1883 = zext i1 %1882 to i8
  %1884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1883, i8* %1884, align 1, !tbaa !2447
  %1885 = lshr i64 %1863, 63
  %1886 = trunc i64 %1885 to i8
  %1887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1886, i8* %1887, align 1, !tbaa !2448
  %1888 = lshr i64 %1860, 63
  %1889 = xor i64 %1885, %1888
  %1890 = add nuw nsw i64 %1889, %1885
  %1891 = icmp eq i64 %1890, 2
  %1892 = zext i1 %1891 to i8
  %1893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1892, i8* %1893, align 1, !tbaa !2449
  %1894 = load i64, i64* %RBP
  %1895 = sub i64 %1894, 48
  %1896 = load i64, i64* %RAX
  %1897 = load i64, i64* %PC
  %1898 = add i64 %1897, 4
  store i64 %1898, i64* %PC
  %1899 = inttoptr i64 %1895 to i64*
  store i64 %1896, i64* %1899
  %1900 = load i64, i64* %PC
  %1901 = sub i64 %1900, 34
  %1902 = load i64, i64* %PC
  %1903 = add i64 %1902, 5
  store i64 %1903, i64* %PC
  %1904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1901, i64* %1904, align 8, !tbaa !2428
  br label %block_4012e0

block_4010f3:                                     ; preds = %block_4010c9
  %1905 = load i64, i64* %RBP
  %1906 = sub i64 %1905, 80
  %1907 = load i64, i64* %PC
  %1908 = add i64 %1907, 4
  store i64 %1908, i64* %PC
  %1909 = inttoptr i64 %1906 to i64*
  %1910 = load i64, i64* %1909
  store i64 %1910, i64* %RAX, align 8, !tbaa !2428
  %1911 = load i64, i64* %RAX
  %1912 = load i64, i64* %PC
  %1913 = add i64 %1912, 4
  store i64 %1913, i64* %PC
  %1914 = add i64 1, %1911
  store i64 %1914, i64* %RAX, align 8, !tbaa !2428
  %1915 = icmp ult i64 %1914, %1911
  %1916 = icmp ult i64 %1914, 1
  %1917 = or i1 %1915, %1916
  %1918 = zext i1 %1917 to i8
  %1919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1918, i8* %1919, align 1, !tbaa !2432
  %1920 = trunc i64 %1914 to i32
  %1921 = and i32 %1920, 255
  %1922 = call i32 @llvm.ctpop.i32(i32 %1921) #16
  %1923 = trunc i32 %1922 to i8
  %1924 = and i8 %1923, 1
  %1925 = xor i8 %1924, 1
  %1926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1925, i8* %1926, align 1, !tbaa !2446
  %1927 = xor i64 1, %1911
  %1928 = xor i64 %1927, %1914
  %1929 = lshr i64 %1928, 4
  %1930 = trunc i64 %1929 to i8
  %1931 = and i8 %1930, 1
  %1932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1931, i8* %1932, align 1, !tbaa !2450
  %1933 = icmp eq i64 %1914, 0
  %1934 = zext i1 %1933 to i8
  %1935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1934, i8* %1935, align 1, !tbaa !2447
  %1936 = lshr i64 %1914, 63
  %1937 = trunc i64 %1936 to i8
  %1938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1937, i8* %1938, align 1, !tbaa !2448
  %1939 = lshr i64 %1911, 63
  %1940 = xor i64 %1936, %1939
  %1941 = add nuw nsw i64 %1940, %1936
  %1942 = icmp eq i64 %1941, 2
  %1943 = zext i1 %1942 to i8
  %1944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1943, i8* %1944, align 1, !tbaa !2449
  %1945 = load i64, i64* %RBP
  %1946 = sub i64 %1945, 80
  %1947 = load i64, i64* %RAX
  %1948 = load i64, i64* %PC
  %1949 = add i64 %1948, 4
  store i64 %1949, i64* %PC
  %1950 = inttoptr i64 %1946 to i64*
  store i64 %1947, i64* %1950
  br label %block_4010ff

block_400ced:                                     ; preds = %block_400ccd, %block_400cc0
  %MEMORY.8 = phi %struct.Memory* [ %MEMORY.11, %block_400cc0 ], [ %MEMORY.11, %block_400ccd ]
  %1951 = load i64, i64* %RBP
  %1952 = sub i64 %1951, 10668
  %1953 = load i64, i64* %PC
  %1954 = add i64 %1953, 7
  store i64 %1954, i64* %PC
  %1955 = inttoptr i64 %1952 to i32*
  %1956 = load i32, i32* %1955
  %1957 = sext i32 %1956 to i64
  store i64 %1957, i64* %RAX, align 8, !tbaa !2428
  %1958 = load i64, i64* %RBP
  %1959 = load i64, i64* %RAX
  %1960 = mul i64 %1959, 4
  %1961 = add i64 %1958, -8320
  %1962 = add i64 %1961, %1960
  %1963 = load i64, i64* %PC
  %1964 = add i64 %1963, 7
  store i64 %1964, i64* %PC
  %1965 = inttoptr i64 %1962 to i32*
  %1966 = load i32, i32* %1965
  %1967 = zext i32 %1966 to i64
  store i64 %1967, i64* %RCX, align 8, !tbaa !2428
  %1968 = load i64, i64* %RBP
  %1969 = sub i64 %1968, 10668
  %1970 = load i32, i32* %ECX
  %1971 = zext i32 %1970 to i64
  %1972 = load i64, i64* %PC
  %1973 = add i64 %1972, 6
  store i64 %1973, i64* %PC
  %1974 = inttoptr i64 %1969 to i32*
  store i32 %1970, i32* %1974
  %1975 = load i64, i64* %RBP
  %1976 = sub i64 %1975, 56
  %1977 = load i64, i64* %PC
  %1978 = add i64 %1977, 4
  store i64 %1978, i64* %PC
  %1979 = inttoptr i64 %1976 to i64*
  %1980 = load i64, i64* %1979
  store i64 %1980, i64* %RAX, align 8, !tbaa !2428
  %1981 = load i64, i64* %RAX
  %1982 = load i64, i64* %PC
  %1983 = add i64 %1982, 4
  store i64 %1983, i64* %PC
  %1984 = shl i64 %1981, 1
  %1985 = icmp slt i64 %1981, 0
  %1986 = icmp slt i64 %1984, 0
  %1987 = xor i1 %1985, %1986
  store i64 %1984, i64* %RAX, align 8, !tbaa !2428
  %1988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1989 = zext i1 %1985 to i8
  store i8 %1989, i8* %1988, align 1, !tbaa !2451
  %1990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1991 = trunc i64 %1984 to i32
  %1992 = and i32 %1991, 254
  %1993 = call i32 @llvm.ctpop.i32(i32 %1992) #16
  %1994 = trunc i32 %1993 to i8
  %1995 = and i8 %1994, 1
  %1996 = xor i8 %1995, 1
  store i8 %1996, i8* %1990, align 1, !tbaa !2451
  %1997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1997, align 1, !tbaa !2451
  %1998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1999 = icmp eq i64 %1984, 0
  %2000 = zext i1 %1999 to i8
  store i8 %2000, i8* %1998, align 1, !tbaa !2451
  %2001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2002 = lshr i64 %1984, 63
  %2003 = trunc i64 %2002 to i8
  store i8 %2003, i8* %2001, align 1, !tbaa !2451
  %2004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2005 = zext i1 %1987 to i8
  store i8 %2005, i8* %2004, align 1, !tbaa !2451
  %2006 = load i64, i64* %RBP
  %2007 = sub i64 %2006, 56
  %2008 = load i64, i64* %RAX
  %2009 = load i64, i64* %PC
  %2010 = add i64 %2009, 4
  store i64 %2010, i64* %PC
  %2011 = inttoptr i64 %2007 to i64*
  store i64 %2008, i64* %2011
  %2012 = load i64, i64* %RBP
  %2013 = sub i64 %2012, 48
  %2014 = load i64, i64* %PC
  %2015 = add i64 %2014, 4
  store i64 %2015, i64* %PC
  %2016 = inttoptr i64 %2013 to i64*
  %2017 = load i64, i64* %2016
  store i64 %2017, i64* %RAX, align 8, !tbaa !2428
  %2018 = load i64, i64* %RAX
  %2019 = load i64, i64* %PC
  %2020 = add i64 %2019, 4
  store i64 %2020, i64* %PC
  %2021 = add i64 1, %2018
  store i64 %2021, i64* %RAX, align 8, !tbaa !2428
  %2022 = icmp ult i64 %2021, %2018
  %2023 = icmp ult i64 %2021, 1
  %2024 = or i1 %2022, %2023
  %2025 = zext i1 %2024 to i8
  %2026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2025, i8* %2026, align 1, !tbaa !2432
  %2027 = trunc i64 %2021 to i32
  %2028 = and i32 %2027, 255
  %2029 = call i32 @llvm.ctpop.i32(i32 %2028) #16
  %2030 = trunc i32 %2029 to i8
  %2031 = and i8 %2030, 1
  %2032 = xor i8 %2031, 1
  %2033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2032, i8* %2033, align 1, !tbaa !2446
  %2034 = xor i64 1, %2018
  %2035 = xor i64 %2034, %2021
  %2036 = lshr i64 %2035, 4
  %2037 = trunc i64 %2036 to i8
  %2038 = and i8 %2037, 1
  %2039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2038, i8* %2039, align 1, !tbaa !2450
  %2040 = icmp eq i64 %2021, 0
  %2041 = zext i1 %2040 to i8
  %2042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2041, i8* %2042, align 1, !tbaa !2447
  %2043 = lshr i64 %2021, 63
  %2044 = trunc i64 %2043 to i8
  %2045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2044, i8* %2045, align 1, !tbaa !2448
  %2046 = lshr i64 %2018, 63
  %2047 = xor i64 %2043, %2046
  %2048 = add nuw nsw i64 %2047, %2043
  %2049 = icmp eq i64 %2048, 2
  %2050 = zext i1 %2049 to i8
  %2051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2050, i8* %2051, align 1, !tbaa !2449
  %2052 = load i64, i64* %RBP
  %2053 = sub i64 %2052, 48
  %2054 = load i64, i64* %RAX
  %2055 = load i64, i64* %PC
  %2056 = add i64 %2055, 4
  store i64 %2056, i64* %PC
  %2057 = inttoptr i64 %2053 to i64*
  store i64 %2054, i64* %2057
  %2058 = load i64, i64* %PC
  %2059 = sub i64 %2058, 102
  %2060 = load i64, i64* %PC
  %2061 = add i64 %2060, 5
  store i64 %2061, i64* %PC
  %2062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2059, i64* %2062, align 8, !tbaa !2428
  br label %block_400cb3

block_4012e0:                                     ; preds = %block_4012db, %block_4012f6
  %MEMORY.9 = phi %struct.Memory* [ %MEMORY.10, %block_4012db ], [ %MEMORY.9, %block_4012f6 ]
  %2063 = load i64, i64* %RBP
  %2064 = sub i64 %2063, 48
  %2065 = load i64, i64* %PC
  %2066 = add i64 %2065, 4
  store i64 %2066, i64* %PC
  %2067 = inttoptr i64 %2064 to i64*
  %2068 = load i64, i64* %2067
  store i64 %2068, i64* %RAX, align 8, !tbaa !2428
  %2069 = load i64, i64* %RBP
  %2070 = load i64, i64* %RAX
  %2071 = mul i64 %2070, 8
  %2072 = add i64 %2069, -12736
  %2073 = add i64 %2072, %2071
  %2074 = load i64, i64* %PC
  %2075 = add i64 %2074, 8
  store i64 %2075, i64* %PC
  %2076 = inttoptr i64 %2073 to i64*
  %2077 = load i64, i64* %2076
  store i64 %2077, i64* %RAX, align 8, !tbaa !2428
  %2078 = load i64, i64* %RAX
  %2079 = load i64, i64* %RBP
  %2080 = sub i64 %2079, 80
  %2081 = load i64, i64* %PC
  %2082 = add i64 %2081, 4
  store i64 %2082, i64* %PC
  %2083 = inttoptr i64 %2080 to i64*
  %2084 = load i64, i64* %2083
  %2085 = sub i64 %2078, %2084
  %2086 = icmp ugt i64 %2084, %2078
  %2087 = zext i1 %2086 to i8
  %2088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2087, i8* %2088, align 1, !tbaa !2432
  %2089 = trunc i64 %2085 to i32
  %2090 = and i32 %2089, 255
  %2091 = call i32 @llvm.ctpop.i32(i32 %2090) #16
  %2092 = trunc i32 %2091 to i8
  %2093 = and i8 %2092, 1
  %2094 = xor i8 %2093, 1
  %2095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2094, i8* %2095, align 1, !tbaa !2446
  %2096 = xor i64 %2084, %2078
  %2097 = xor i64 %2096, %2085
  %2098 = lshr i64 %2097, 4
  %2099 = trunc i64 %2098 to i8
  %2100 = and i8 %2099, 1
  %2101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2100, i8* %2101, align 1, !tbaa !2450
  %2102 = icmp eq i64 %2085, 0
  %2103 = zext i1 %2102 to i8
  %2104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2103, i8* %2104, align 1, !tbaa !2447
  %2105 = lshr i64 %2085, 63
  %2106 = trunc i64 %2105 to i8
  %2107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2106, i8* %2107, align 1, !tbaa !2448
  %2108 = lshr i64 %2078, 63
  %2109 = lshr i64 %2084, 63
  %2110 = xor i64 %2109, %2108
  %2111 = xor i64 %2105, %2108
  %2112 = add nuw nsw i64 %2111, %2110
  %2113 = icmp eq i64 %2112, 2
  %2114 = zext i1 %2113 to i8
  %2115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2114, i8* %2115, align 1, !tbaa !2449
  %2116 = load i64, i64* %PC
  %2117 = add i64 %2116, 23
  %2118 = load i64, i64* %PC
  %2119 = add i64 %2118, 6
  %2120 = load i64, i64* %PC
  %2121 = add i64 %2120, 6
  store i64 %2121, i64* %PC
  %2122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2123 = load i8, i8* %2122, align 1, !tbaa !2432
  %2124 = icmp eq i8 %2123, 0
  %2125 = zext i1 %2124 to i8
  store i8 %2125, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %2126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2127 = select i1 %2124, i64 %2117, i64 %2119
  store i64 %2127, i64* %2126, align 8, !tbaa !2428
  %2128 = load i8, i8* %BRANCH_TAKEN
  %2129 = icmp eq i8 %2128, 1
  %2130 = load i64, i64* %RBP
  br i1 %2129, label %block_401307, label %block_4012f6

block_400f08:                                     ; preds = %block_400ea8
  %2131 = load i64, i64* %RBP
  %2132 = sub i64 %2131, 10688
  %2133 = load i64, i64* %PC
  %2134 = add i64 %2133, 10
  store i64 %2134, i64* %PC
  %2135 = inttoptr i64 %2132 to i32*
  store i32 0, i32* %2135
  %2136 = load i64, i64* %RBP
  %2137 = sub i64 %2136, 10681
  %2138 = load i64, i64* %PC
  %2139 = add i64 %2138, 7
  store i64 %2139, i64* %PC
  %2140 = inttoptr i64 %2137 to i8*
  store i8 0, i8* %2140
  %2141 = load i64, i64* %PC
  %2142 = add i64 %2141, 38
  %2143 = load i64, i64* %PC
  %2144 = add i64 %2143, 5
  store i64 %2144, i64* %PC
  %2145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2142, i64* %2145, align 8, !tbaa !2428
  br label %block_400f3f

block_4012db:                                     ; preds = %block_4012cf, %block_4012a8
  %MEMORY.10 = phi %struct.Memory* [ %MEMORY.15, %block_4012a8 ], [ %MEMORY.15, %block_4012cf ]
  %2146 = load i64, i64* %PC
  %2147 = add i64 %2146, 5
  %2148 = load i64, i64* %PC
  %2149 = add i64 %2148, 5
  store i64 %2149, i64* %PC
  %2150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2147, i64* %2150, align 8, !tbaa !2428
  br label %block_4012e0

block_4012cf:                                     ; preds = %block_4012a8
  %2151 = load i64, i64* %RBP
  %2152 = sub i64 %2151, 80
  %2153 = load i64, i64* %PC
  %2154 = add i64 %2153, 4
  store i64 %2154, i64* %PC
  %2155 = inttoptr i64 %2152 to i64*
  %2156 = load i64, i64* %2155
  store i64 %2156, i64* %RAX, align 8, !tbaa !2428
  %2157 = load i64, i64* %RAX
  %2158 = load i64, i64* %PC
  %2159 = add i64 %2158, 4
  store i64 %2159, i64* %PC
  %2160 = add i64 1, %2157
  store i64 %2160, i64* %RAX, align 8, !tbaa !2428
  %2161 = icmp ult i64 %2160, %2157
  %2162 = icmp ult i64 %2160, 1
  %2163 = or i1 %2161, %2162
  %2164 = zext i1 %2163 to i8
  %2165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2164, i8* %2165, align 1, !tbaa !2432
  %2166 = trunc i64 %2160 to i32
  %2167 = and i32 %2166, 255
  %2168 = call i32 @llvm.ctpop.i32(i32 %2167) #16
  %2169 = trunc i32 %2168 to i8
  %2170 = and i8 %2169, 1
  %2171 = xor i8 %2170, 1
  %2172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2171, i8* %2172, align 1, !tbaa !2446
  %2173 = xor i64 1, %2157
  %2174 = xor i64 %2173, %2160
  %2175 = lshr i64 %2174, 4
  %2176 = trunc i64 %2175 to i8
  %2177 = and i8 %2176, 1
  %2178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2177, i8* %2178, align 1, !tbaa !2450
  %2179 = icmp eq i64 %2160, 0
  %2180 = zext i1 %2179 to i8
  %2181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2180, i8* %2181, align 1, !tbaa !2447
  %2182 = lshr i64 %2160, 63
  %2183 = trunc i64 %2182 to i8
  %2184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2183, i8* %2184, align 1, !tbaa !2448
  %2185 = lshr i64 %2157, 63
  %2186 = xor i64 %2182, %2185
  %2187 = add nuw nsw i64 %2186, %2182
  %2188 = icmp eq i64 %2187, 2
  %2189 = zext i1 %2188 to i8
  %2190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2189, i8* %2190, align 1, !tbaa !2449
  %2191 = load i64, i64* %RBP
  %2192 = sub i64 %2191, 80
  %2193 = load i64, i64* %RAX
  %2194 = load i64, i64* %PC
  %2195 = add i64 %2194, 4
  store i64 %2195, i64* %PC
  %2196 = inttoptr i64 %2192 to i64*
  store i64 %2193, i64* %2196
  br label %block_4012db

block_4011be:                                     ; preds = %block_4011b0
  %2197 = load i64, i64* %PC
  %2198 = add i64 %2197, 76
  %2199 = load i64, i64* %PC
  %2200 = add i64 %2199, 5
  store i64 %2200, i64* %PC
  %2201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2198, i64* %2201, align 8, !tbaa !2428
  %2202 = load i64, i64* %RBP
  %2203 = sub i64 %2202, 88
  %2204 = load i64, i64* %PC
  %2205 = add i64 %2204, 4
  store i64 %2205, i64* %PC
  %2206 = inttoptr i64 %2203 to i64*
  %2207 = load i64, i64* %2206
  store i64 %2207, i64* %RAX, align 8, !tbaa !2428
  %2208 = load i64, i64* %RBP
  %2209 = sub i64 %2208, 56
  %2210 = load i64, i64* %PC
  %2211 = add i64 %2210, 4
  store i64 %2211, i64* %PC
  %2212 = inttoptr i64 %2209 to i64*
  %2213 = load i64, i64* %2212
  store i64 %2213, i64* %RCX, align 8, !tbaa !2428
  %2214 = load i64, i64* %RBP
  %2215 = load i64, i64* %RCX
  %2216 = mul i64 %2215, 8
  %2217 = add i64 %2214, -12736
  %2218 = add i64 %2217, %2216
  %2219 = load i64, i64* %RAX
  %2220 = load i64, i64* %PC
  %2221 = add i64 %2220, 8
  store i64 %2221, i64* %PC
  %2222 = inttoptr i64 %2218 to i64*
  store i64 %2219, i64* %2222
  %2223 = load i64, i64* %RBP
  %2224 = sub i64 %2223, 89
  %2225 = load i64, i64* %PC
  %2226 = add i64 %2225, 3
  store i64 %2226, i64* %PC
  %2227 = inttoptr i64 %2224 to i8*
  %2228 = load i8, i8* %2227
  store i8 %2228, i8* %DL, align 1, !tbaa !2451
  %2229 = load i64, i64* %RBP
  %2230 = sub i64 %2229, 56
  %2231 = load i64, i64* %PC
  %2232 = add i64 %2231, 4
  store i64 %2232, i64* %PC
  %2233 = inttoptr i64 %2230 to i64*
  %2234 = load i64, i64* %2233
  store i64 %2234, i64* %RAX, align 8, !tbaa !2428
  %2235 = load i64, i64* %RBP
  %2236 = load i64, i64* %RAX
  %2237 = add i64 %2235, -12992
  %2238 = add i64 %2237, %2236
  %2239 = load i8, i8* %DL
  %2240 = zext i8 %2239 to i64
  %2241 = load i64, i64* %PC
  %2242 = add i64 %2241, 7
  store i64 %2242, i64* %PC
  %2243 = inttoptr i64 %2238 to i8*
  store i8 %2239, i8* %2243
  %2244 = load i64, i64* %RBP
  %2245 = sub i64 %2244, 48
  %2246 = load i64, i64* %PC
  %2247 = add i64 %2246, 4
  store i64 %2247, i64* %PC
  %2248 = inttoptr i64 %2245 to i64*
  %2249 = load i64, i64* %2248
  store i64 %2249, i64* %RAX, align 8, !tbaa !2428
  %2250 = load i64, i64* %RAX
  %2251 = load i64, i64* %PC
  %2252 = add i64 %2251, 4
  store i64 %2252, i64* %PC
  %2253 = add i64 1, %2250
  store i64 %2253, i64* %RAX, align 8, !tbaa !2428
  %2254 = icmp ult i64 %2253, %2250
  %2255 = icmp ult i64 %2253, 1
  %2256 = or i1 %2254, %2255
  %2257 = zext i1 %2256 to i8
  %2258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2257, i8* %2258, align 1, !tbaa !2432
  %2259 = trunc i64 %2253 to i32
  %2260 = and i32 %2259, 255
  %2261 = call i32 @llvm.ctpop.i32(i32 %2260) #16
  %2262 = trunc i32 %2261 to i8
  %2263 = and i8 %2262, 1
  %2264 = xor i8 %2263, 1
  %2265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2264, i8* %2265, align 1, !tbaa !2446
  %2266 = xor i64 1, %2250
  %2267 = xor i64 %2266, %2253
  %2268 = lshr i64 %2267, 4
  %2269 = trunc i64 %2268 to i8
  %2270 = and i8 %2269, 1
  %2271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2270, i8* %2271, align 1, !tbaa !2450
  %2272 = icmp eq i64 %2253, 0
  %2273 = zext i1 %2272 to i8
  %2274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2273, i8* %2274, align 1, !tbaa !2447
  %2275 = lshr i64 %2253, 63
  %2276 = trunc i64 %2275 to i8
  %2277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2276, i8* %2277, align 1, !tbaa !2448
  %2278 = lshr i64 %2250, 63
  %2279 = xor i64 %2275, %2278
  %2280 = add nuw nsw i64 %2279, %2275
  %2281 = icmp eq i64 %2280, 2
  %2282 = zext i1 %2281 to i8
  %2283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2282, i8* %2283, align 1, !tbaa !2449
  %2284 = load i64, i64* %RBP
  %2285 = sub i64 %2284, 48
  %2286 = load i64, i64* %RAX
  %2287 = load i64, i64* %PC
  %2288 = add i64 %2287, 4
  store i64 %2288, i64* %PC
  %2289 = inttoptr i64 %2285 to i64*
  store i64 %2286, i64* %2289
  %2290 = load i64, i64* %PC
  %2291 = sub i64 %2290, 234
  %2292 = load i64, i64* %PC
  %2293 = add i64 %2292, 5
  store i64 %2293, i64* %PC
  %2294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2291, i64* %2294, align 8, !tbaa !2428
  br label %block_40114a

block_400aca:                                     ; preds = %block_400abf
  %2295 = load i64, i64* %RBP
  %2296 = sub i64 %2295, 6272
  %2297 = load i64, i64* %PC
  %2298 = add i64 %2297, 7
  store i64 %2298, i64* %PC
  store i64 %2296, i64* %RSI, align 8, !tbaa !2428
  %2299 = load i64, i64* %RBP
  %2300 = sub i64 %2299, 4224
  %2301 = load i64, i64* %PC
  %2302 = add i64 %2301, 7
  store i64 %2302, i64* %PC
  store i64 %2300, i64* %RDI, align 8, !tbaa !2428
  %2303 = load i64, i64* %RBP
  %2304 = sub i64 %2303, 64
  %2305 = load i64, i64* %PC
  %2306 = add i64 %2305, 4
  store i64 %2306, i64* %PC
  %2307 = inttoptr i64 %2304 to i64*
  %2308 = load i64, i64* %2307
  store i64 %2308, i64* %RAX, align 8, !tbaa !2428
  %2309 = load i32, i32* %EAX
  %2310 = zext i32 %2309 to i64
  %2311 = load i64, i64* %PC
  %2312 = add i64 %2311, 2
  store i64 %2312, i64* %PC
  %2313 = and i64 %2310, 4294967295
  store i64 %2313, i64* %RCX, align 8, !tbaa !2428
  %2314 = load i64, i64* %RBP
  %2315 = sub i64 %2314, 48
  %2316 = load i64, i64* %PC
  %2317 = add i64 %2316, 4
  store i64 %2317, i64* %PC
  %2318 = inttoptr i64 %2315 to i64*
  %2319 = load i64, i64* %2318
  store i64 %2319, i64* %RAX, align 8, !tbaa !2428
  %2320 = load i32, i32* %EAX
  %2321 = zext i32 %2320 to i64
  %2322 = load i64, i64* %PC
  %2323 = add i64 %2322, 2
  store i64 %2323, i64* %PC
  %2324 = and i64 %2321, 4294967295
  store i64 %2324, i64* %RDX, align 8, !tbaa !2428
  %2325 = load i64, i64* %RBP
  %2326 = sub i64 %2325, 13076
  %2327 = load i32, i32* %EDX
  %2328 = zext i32 %2327 to i64
  %2329 = load i64, i64* %PC
  %2330 = add i64 %2329, 6
  store i64 %2330, i64* %PC
  %2331 = inttoptr i64 %2326 to i32*
  store i32 %2327, i32* %2331
  %2332 = load i32, i32* %ECX
  %2333 = zext i32 %2332 to i64
  %2334 = load i64, i64* %PC
  %2335 = add i64 %2334, 2
  store i64 %2335, i64* %PC
  %2336 = and i64 %2333, 4294967295
  store i64 %2336, i64* %RDX, align 8, !tbaa !2428
  %2337 = load i64, i64* %RBP
  %2338 = sub i64 %2337, 13076
  %2339 = load i64, i64* %PC
  %2340 = add i64 %2339, 6
  store i64 %2340, i64* %PC
  %2341 = inttoptr i64 %2338 to i32*
  %2342 = load i32, i32* %2341
  %2343 = zext i32 %2342 to i64
  store i64 %2343, i64* %RCX, align 8, !tbaa !2428
  %2344 = load i64, i64* %PC
  %2345 = add i64 %2344, 2238
  %2346 = load i64, i64* %PC
  %2347 = add i64 %2346, 5
  %2348 = load i64, i64* %PC
  %2349 = add i64 %2348, 5
  store i64 %2349, i64* %PC
  %2350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2351 = load i64, i64* %2350, align 8, !tbaa !2428
  %2352 = add i64 %2351, -8
  %2353 = inttoptr i64 %2352 to i64*
  store i64 %2347, i64* %2353
  store i64 %2352, i64* %2350, align 8, !tbaa !2428
  %2354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2345, i64* %2354, align 8, !tbaa !2428
  %2355 = load i64, i64* %PC
  %2356 = call %struct.Memory* @sub_4013b0_heap_adjust_renamed_(%struct.State* %0, i64 %2355, %struct.Memory* %MEMORY.20)
  %2357 = load i64, i64* %RBP
  %2358 = sub i64 %2357, 48
  %2359 = load i64, i64* %PC
  %2360 = add i64 %2359, 4
  store i64 %2360, i64* %PC
  %2361 = inttoptr i64 %2358 to i64*
  %2362 = load i64, i64* %2361
  store i64 %2362, i64* %RAX, align 8, !tbaa !2428
  %2363 = load i64, i64* %RAX
  %2364 = load i64, i64* %PC
  %2365 = add i64 %2364, 4
  store i64 %2365, i64* %PC
  %2366 = add i64 -1, %2363
  store i64 %2366, i64* %RAX, align 8, !tbaa !2428
  %2367 = icmp ult i64 %2366, %2363
  %2368 = icmp ult i64 %2366, -1
  %2369 = or i1 %2367, %2368
  %2370 = zext i1 %2369 to i8
  %2371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2370, i8* %2371, align 1, !tbaa !2432
  %2372 = trunc i64 %2366 to i32
  %2373 = and i32 %2372, 255
  %2374 = call i32 @llvm.ctpop.i32(i32 %2373) #16
  %2375 = trunc i32 %2374 to i8
  %2376 = and i8 %2375, 1
  %2377 = xor i8 %2376, 1
  %2378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2377, i8* %2378, align 1, !tbaa !2446
  %2379 = xor i64 -1, %2363
  %2380 = xor i64 %2379, %2366
  %2381 = lshr i64 %2380, 4
  %2382 = trunc i64 %2381 to i8
  %2383 = and i8 %2382, 1
  %2384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2383, i8* %2384, align 1, !tbaa !2450
  %2385 = icmp eq i64 %2366, 0
  %2386 = zext i1 %2385 to i8
  %2387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2386, i8* %2387, align 1, !tbaa !2447
  %2388 = lshr i64 %2366, 63
  %2389 = trunc i64 %2388 to i8
  %2390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2389, i8* %2390, align 1, !tbaa !2448
  %2391 = lshr i64 %2363, 63
  %2392 = xor i64 %2388, %2391
  %2393 = xor i64 %2388, 1
  %2394 = add nuw nsw i64 %2392, %2393
  %2395 = icmp eq i64 %2394, 2
  %2396 = zext i1 %2395 to i8
  %2397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2396, i8* %2397, align 1, !tbaa !2449
  %2398 = load i64, i64* %RBP
  %2399 = sub i64 %2398, 48
  %2400 = load i64, i64* %RAX
  %2401 = load i64, i64* %PC
  %2402 = add i64 %2401, 4
  store i64 %2402, i64* %PC
  %2403 = inttoptr i64 %2399 to i64*
  store i64 %2400, i64* %2403
  %2404 = load i64, i64* %PC
  %2405 = sub i64 %2404, 68
  %2406 = load i64, i64* %PC
  %2407 = add i64 %2406, 5
  store i64 %2407, i64* %PC
  %2408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2405, i64* %2408, align 8, !tbaa !2428
  br label %block_400abf

block_4010c9:                                     ; preds = %block_4010ae
  %2409 = load i64, i64* %RAX
  %2410 = load i64, i64* %PC
  %2411 = add i64 %2410, 4
  store i64 %2411, i64* %PC
  %2412 = shl i64 %2409, 1
  %2413 = icmp slt i64 %2409, 0
  %2414 = icmp slt i64 %2412, 0
  %2415 = xor i1 %2413, %2414
  store i64 %2412, i64* %RAX, align 8, !tbaa !2428
  %2416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2417 = zext i1 %2413 to i8
  store i8 %2417, i8* %2416, align 1, !tbaa !2451
  %2418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2419 = trunc i64 %2412 to i32
  %2420 = and i32 %2419, 254
  %2421 = call i32 @llvm.ctpop.i32(i32 %2420) #16
  %2422 = trunc i32 %2421 to i8
  %2423 = and i8 %2422, 1
  %2424 = xor i8 %2423, 1
  store i8 %2424, i8* %2418, align 1, !tbaa !2451
  %2425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2425, align 1, !tbaa !2451
  %2426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2427 = icmp eq i64 %2412, 0
  %2428 = zext i1 %2427 to i8
  store i8 %2428, i8* %2426, align 1, !tbaa !2451
  %2429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2430 = lshr i64 %2412, 63
  %2431 = trunc i64 %2430 to i8
  store i8 %2431, i8* %2429, align 1, !tbaa !2451
  %2432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2433 = zext i1 %2415 to i8
  store i8 %2433, i8* %2432, align 1, !tbaa !2451
  %2434 = load i64, i64* %RAX
  %2435 = load i64, i64* %PC
  %2436 = add i64 %2435, 4
  store i64 %2436, i64* %PC
  %2437 = add i64 1, %2434
  store i64 %2437, i64* %RAX, align 8, !tbaa !2428
  %2438 = icmp ult i64 %2437, %2434
  %2439 = icmp ult i64 %2437, 1
  %2440 = or i1 %2438, %2439
  %2441 = zext i1 %2440 to i8
  %2442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2441, i8* %2442, align 1, !tbaa !2432
  %2443 = trunc i64 %2437 to i32
  %2444 = and i32 %2443, 255
  %2445 = call i32 @llvm.ctpop.i32(i32 %2444) #16
  %2446 = trunc i32 %2445 to i8
  %2447 = and i8 %2446, 1
  %2448 = xor i8 %2447, 1
  %2449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2448, i8* %2449, align 1, !tbaa !2446
  %2450 = xor i64 1, %2434
  %2451 = xor i64 %2450, %2437
  %2452 = lshr i64 %2451, 4
  %2453 = trunc i64 %2452 to i8
  %2454 = and i8 %2453, 1
  %2455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2454, i8* %2455, align 1, !tbaa !2450
  %2456 = icmp eq i64 %2437, 0
  %2457 = zext i1 %2456 to i8
  %2458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2457, i8* %2458, align 1, !tbaa !2447
  %2459 = lshr i64 %2437, 63
  %2460 = trunc i64 %2459 to i8
  %2461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2460, i8* %2461, align 1, !tbaa !2448
  %2462 = lshr i64 %2434, 63
  %2463 = xor i64 %2459, %2462
  %2464 = add nuw nsw i64 %2463, %2459
  %2465 = icmp eq i64 %2464, 2
  %2466 = zext i1 %2465 to i8
  %2467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2466, i8* %2467, align 1, !tbaa !2449
  %2468 = load i64, i64* %RBP
  %2469 = sub i64 %2468, 80
  %2470 = load i64, i64* %RAX
  %2471 = load i64, i64* %PC
  %2472 = add i64 %2471, 4
  store i64 %2472, i64* %PC
  %2473 = inttoptr i64 %2469 to i64*
  store i64 %2470, i64* %2473
  %2474 = load i64, i64* %RBP
  %2475 = sub i64 %2474, 56
  %2476 = load i64, i64* %PC
  %2477 = add i64 %2476, 4
  store i64 %2477, i64* %PC
  %2478 = inttoptr i64 %2475 to i64*
  %2479 = load i64, i64* %2478
  store i64 %2479, i64* %RAX, align 8, !tbaa !2428
  %2480 = load i64, i64* %RBP
  %2481 = load i64, i64* %RAX
  %2482 = mul i64 %2481, 8
  %2483 = add i64 %2480, -10368
  %2484 = add i64 %2483, %2482
  %2485 = load i64, i64* %PC
  %2486 = add i64 %2485, 8
  store i64 %2486, i64* %PC
  %2487 = inttoptr i64 %2484 to i64*
  %2488 = load i64, i64* %2487
  store i64 %2488, i64* %RAX, align 8, !tbaa !2428
  %2489 = load i64, i64* %RAX
  %2490 = load i64, i64* %RBP
  %2491 = sub i64 %2490, 72
  %2492 = load i64, i64* %PC
  %2493 = add i64 %2492, 4
  store i64 %2493, i64* %PC
  %2494 = inttoptr i64 %2491 to i64*
  %2495 = load i64, i64* %2494
  %2496 = and i64 %2495, %2489
  store i64 %2496, i64* %RAX, align 8, !tbaa !2428
  %2497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2497, align 1, !tbaa !2432
  %2498 = trunc i64 %2496 to i32
  %2499 = and i32 %2498, 255
  %2500 = call i32 @llvm.ctpop.i32(i32 %2499) #16
  %2501 = trunc i32 %2500 to i8
  %2502 = and i8 %2501, 1
  %2503 = xor i8 %2502, 1
  %2504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2503, i8* %2504, align 1, !tbaa !2446
  %2505 = icmp eq i64 %2496, 0
  %2506 = zext i1 %2505 to i8
  %2507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2506, i8* %2507, align 1, !tbaa !2447
  %2508 = lshr i64 %2496, 63
  %2509 = trunc i64 %2508 to i8
  %2510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2509, i8* %2510, align 1, !tbaa !2448
  %2511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2511, align 1, !tbaa !2449
  %2512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2512, align 1, !tbaa !2450
  %2513 = load i64, i64* %RAX
  %2514 = load i64, i64* %PC
  %2515 = add i64 %2514, 4
  store i64 %2515, i64* %PC
  %2516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2516, align 1, !tbaa !2432
  %2517 = trunc i64 %2513 to i32
  %2518 = and i32 %2517, 255
  %2519 = call i32 @llvm.ctpop.i32(i32 %2518) #16
  %2520 = trunc i32 %2519 to i8
  %2521 = and i8 %2520, 1
  %2522 = xor i8 %2521, 1
  %2523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2522, i8* %2523, align 1, !tbaa !2446
  %2524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2524, align 1, !tbaa !2450
  %2525 = icmp eq i64 %2513, 0
  %2526 = zext i1 %2525 to i8
  %2527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2526, i8* %2527, align 1, !tbaa !2447
  %2528 = lshr i64 %2513, 63
  %2529 = trunc i64 %2528 to i8
  %2530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2529, i8* %2530, align 1, !tbaa !2448
  %2531 = lshr i64 %2513, 63
  %2532 = xor i64 %2528, %2531
  %2533 = add nuw nsw i64 %2532, %2531
  %2534 = icmp eq i64 %2533, 2
  %2535 = zext i1 %2534 to i8
  %2536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2535, i8* %2536, align 1, !tbaa !2449
  %2537 = load i64, i64* %PC
  %2538 = add i64 %2537, 18
  %2539 = load i64, i64* %PC
  %2540 = add i64 %2539, 6
  %2541 = load i64, i64* %PC
  %2542 = add i64 %2541, 6
  store i64 %2542, i64* %PC
  %2543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2544 = load i8, i8* %2543, align 1, !tbaa !2447
  store i8 %2544, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %2545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2546 = icmp ne i8 %2544, 0
  %2547 = select i1 %2546, i64 %2538, i64 %2540
  store i64 %2547, i64* %2545, align 8, !tbaa !2428
  %2548 = load i8, i8* %BRANCH_TAKEN
  %2549 = icmp eq i8 %2548, 1
  br i1 %2549, label %block_4010ff, label %block_4010f3

block_400cc0:                                     ; preds = %block_400cb3
  %2550 = sub i64 %2765, 10668
  %2551 = load i64, i64* %PC
  %2552 = add i64 %2551, 7
  store i64 %2552, i64* %PC
  %2553 = inttoptr i64 %2550 to i32*
  %2554 = load i32, i32* %2553
  %2555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2555, align 1, !tbaa !2432
  %2556 = and i32 %2554, 255
  %2557 = call i32 @llvm.ctpop.i32(i32 %2556) #16
  %2558 = trunc i32 %2557 to i8
  %2559 = and i8 %2558, 1
  %2560 = xor i8 %2559, 1
  %2561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2560, i8* %2561, align 1, !tbaa !2446
  %2562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2562, align 1, !tbaa !2450
  %2563 = icmp eq i32 %2554, 0
  %2564 = zext i1 %2563 to i8
  %2565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2564, i8* %2565, align 1, !tbaa !2447
  %2566 = lshr i32 %2554, 31
  %2567 = trunc i32 %2566 to i8
  %2568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2567, i8* %2568, align 1, !tbaa !2448
  %2569 = lshr i32 %2554, 31
  %2570 = xor i32 %2566, %2569
  %2571 = add nuw nsw i32 %2570, %2569
  %2572 = icmp eq i32 %2571, 2
  %2573 = zext i1 %2572 to i8
  %2574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2573, i8* %2574, align 1, !tbaa !2449
  %2575 = load i64, i64* %PC
  %2576 = add i64 %2575, 38
  %2577 = load i64, i64* %PC
  %2578 = add i64 %2577, 6
  %2579 = load i64, i64* %PC
  %2580 = add i64 %2579, 6
  store i64 %2580, i64* %PC
  %2581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2582 = load i8, i8* %2581, align 1, !tbaa !2448
  %2583 = icmp ne i8 %2582, 0
  %2584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2585 = load i8, i8* %2584, align 1, !tbaa !2449
  %2586 = icmp ne i8 %2585, 0
  %2587 = xor i1 %2583, %2586
  %2588 = xor i1 %2587, true
  %2589 = zext i1 %2588 to i8
  store i8 %2589, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %2590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2591 = select i1 %2587, i64 %2578, i64 %2576
  store i64 %2591, i64* %2590, align 8, !tbaa !2428
  %2592 = load i8, i8* %BRANCH_TAKEN
  %2593 = icmp eq i8 %2592, 1
  br i1 %2593, label %block_400ced, label %block_400ccd

block_400ccd:                                     ; preds = %block_400cc0
  %2594 = load i64, i64* %RAX
  %2595 = load i32, i32* %EAX
  %2596 = zext i32 %2595 to i64
  %2597 = load i64, i64* %PC
  %2598 = add i64 %2597, 2
  store i64 %2598, i64* %PC
  %2599 = xor i64 %2596, %2594
  %2600 = trunc i64 %2599 to i32
  %2601 = and i64 %2599, 4294967295
  store i64 %2601, i64* %RAX, align 8, !tbaa !2428
  %2602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2602, align 1, !tbaa !2432
  %2603 = and i32 %2600, 255
  %2604 = call i32 @llvm.ctpop.i32(i32 %2603) #16
  %2605 = trunc i32 %2604 to i8
  %2606 = and i8 %2605, 1
  %2607 = xor i8 %2606, 1
  %2608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2607, i8* %2608, align 1, !tbaa !2446
  %2609 = icmp eq i32 %2600, 0
  %2610 = zext i1 %2609 to i8
  %2611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2610, i8* %2611, align 1, !tbaa !2447
  %2612 = lshr i32 %2600, 31
  %2613 = trunc i32 %2612 to i8
  %2614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2613, i8* %2614, align 1, !tbaa !2448
  %2615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2615, align 1, !tbaa !2449
  %2616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2616, align 1, !tbaa !2450
  %2617 = load i64, i64* %RBP
  %2618 = sub i64 %2617, 56
  %2619 = load i64, i64* %PC
  %2620 = add i64 %2619, 4
  store i64 %2620, i64* %PC
  %2621 = inttoptr i64 %2618 to i64*
  %2622 = load i64, i64* %2621
  store i64 %2622, i64* %RCX, align 8, !tbaa !2428
  %2623 = load i64, i64* %RCX
  %2624 = load i64, i64* %RBP
  %2625 = sub i64 %2624, 10648
  %2626 = load i64, i64* %PC
  %2627 = add i64 %2626, 7
  store i64 %2627, i64* %PC
  %2628 = inttoptr i64 %2625 to i64*
  %2629 = load i64, i64* %2628
  %2630 = add i64 %2629, %2623
  store i64 %2630, i64* %RCX, align 8, !tbaa !2428
  %2631 = icmp ult i64 %2630, %2623
  %2632 = icmp ult i64 %2630, %2629
  %2633 = or i1 %2631, %2632
  %2634 = zext i1 %2633 to i8
  %2635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2634, i8* %2635, align 1, !tbaa !2432
  %2636 = trunc i64 %2630 to i32
  %2637 = and i32 %2636, 255
  %2638 = call i32 @llvm.ctpop.i32(i32 %2637) #16
  %2639 = trunc i32 %2638 to i8
  %2640 = and i8 %2639, 1
  %2641 = xor i8 %2640, 1
  %2642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2641, i8* %2642, align 1, !tbaa !2446
  %2643 = xor i64 %2629, %2623
  %2644 = xor i64 %2643, %2630
  %2645 = lshr i64 %2644, 4
  %2646 = trunc i64 %2645 to i8
  %2647 = and i8 %2646, 1
  %2648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2647, i8* %2648, align 1, !tbaa !2450
  %2649 = icmp eq i64 %2630, 0
  %2650 = zext i1 %2649 to i8
  %2651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2650, i8* %2651, align 1, !tbaa !2447
  %2652 = lshr i64 %2630, 63
  %2653 = trunc i64 %2652 to i8
  %2654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2653, i8* %2654, align 1, !tbaa !2448
  %2655 = lshr i64 %2623, 63
  %2656 = lshr i64 %2629, 63
  %2657 = xor i64 %2652, %2655
  %2658 = xor i64 %2652, %2656
  %2659 = add nuw nsw i64 %2657, %2658
  %2660 = icmp eq i64 %2659, 2
  %2661 = zext i1 %2660 to i8
  %2662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2661, i8* %2662, align 1, !tbaa !2449
  %2663 = load i64, i64* %RBP
  %2664 = sub i64 %2663, 10648
  %2665 = load i64, i64* %RCX
  %2666 = load i64, i64* %PC
  %2667 = add i64 %2666, 7
  store i64 %2667, i64* %PC
  %2668 = inttoptr i64 %2664 to i64*
  store i64 %2665, i64* %2668
  %2669 = load i64, i64* %RAX
  %2670 = load i64, i64* %RBP
  %2671 = sub i64 %2670, 10668
  %2672 = load i64, i64* %PC
  %2673 = add i64 %2672, 6
  store i64 %2673, i64* %PC
  %2674 = trunc i64 %2669 to i32
  %2675 = inttoptr i64 %2671 to i32*
  %2676 = load i32, i32* %2675
  %2677 = sub i32 %2674, %2676
  %2678 = zext i32 %2677 to i64
  store i64 %2678, i64* %RAX, align 8, !tbaa !2428
  %2679 = icmp ult i32 %2674, %2676
  %2680 = zext i1 %2679 to i8
  %2681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2680, i8* %2681, align 1, !tbaa !2432
  %2682 = and i32 %2677, 255
  %2683 = call i32 @llvm.ctpop.i32(i32 %2682) #16
  %2684 = trunc i32 %2683 to i8
  %2685 = and i8 %2684, 1
  %2686 = xor i8 %2685, 1
  %2687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2686, i8* %2687, align 1, !tbaa !2446
  %2688 = xor i32 %2676, %2674
  %2689 = xor i32 %2688, %2677
  %2690 = lshr i32 %2689, 4
  %2691 = trunc i32 %2690 to i8
  %2692 = and i8 %2691, 1
  %2693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2692, i8* %2693, align 1, !tbaa !2450
  %2694 = icmp eq i32 %2677, 0
  %2695 = zext i1 %2694 to i8
  %2696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2695, i8* %2696, align 1, !tbaa !2447
  %2697 = lshr i32 %2677, 31
  %2698 = trunc i32 %2697 to i8
  %2699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2698, i8* %2699, align 1, !tbaa !2448
  %2700 = lshr i32 %2674, 31
  %2701 = lshr i32 %2676, 31
  %2702 = xor i32 %2701, %2700
  %2703 = xor i32 %2697, %2700
  %2704 = add nuw nsw i32 %2703, %2702
  %2705 = icmp eq i32 %2704, 2
  %2706 = zext i1 %2705 to i8
  %2707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2706, i8* %2707, align 1, !tbaa !2449
  %2708 = load i64, i64* %RBP
  %2709 = sub i64 %2708, 10668
  %2710 = load i32, i32* %EAX
  %2711 = zext i32 %2710 to i64
  %2712 = load i64, i64* %PC
  %2713 = add i64 %2712, 6
  store i64 %2713, i64* %PC
  %2714 = inttoptr i64 %2709 to i32*
  store i32 %2710, i32* %2714
  br label %block_400ced

block_400ab7:                                     ; preds = %block_400a64
  %2715 = sub i64 %6135, 64
  %2716 = load i64, i64* %PC
  %2717 = add i64 %2716, 4
  store i64 %2717, i64* %PC
  %2718 = inttoptr i64 %2715 to i64*
  %2719 = load i64, i64* %2718
  store i64 %2719, i64* %RAX, align 8, !tbaa !2428
  %2720 = load i64, i64* %RBP
  %2721 = sub i64 %2720, 48
  %2722 = load i64, i64* %RAX
  %2723 = load i64, i64* %PC
  %2724 = add i64 %2723, 4
  store i64 %2724, i64* %PC
  %2725 = inttoptr i64 %2721 to i64*
  store i64 %2722, i64* %2725
  br label %block_400abf

block_400cb3:                                     ; preds = %block_400c84, %block_400ced
  %MEMORY.11 = phi %struct.Memory* [ %MEMORY.21, %block_400c84 ], [ %MEMORY.8, %block_400ced ]
  %2726 = load i64, i64* %RBP
  %2727 = sub i64 %2726, 10668
  %2728 = load i64, i64* %PC
  %2729 = add i64 %2728, 7
  store i64 %2729, i64* %PC
  %2730 = inttoptr i64 %2727 to i32*
  %2731 = load i32, i32* %2730
  %2732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2732, align 1, !tbaa !2432
  %2733 = and i32 %2731, 255
  %2734 = call i32 @llvm.ctpop.i32(i32 %2733) #16
  %2735 = trunc i32 %2734 to i8
  %2736 = and i8 %2735, 1
  %2737 = xor i8 %2736, 1
  %2738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2737, i8* %2738, align 1, !tbaa !2446
  %2739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2739, align 1, !tbaa !2450
  %2740 = icmp eq i32 %2731, 0
  %2741 = zext i1 %2740 to i8
  %2742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2741, i8* %2742, align 1, !tbaa !2447
  %2743 = lshr i32 %2731, 31
  %2744 = trunc i32 %2743 to i8
  %2745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2744, i8* %2745, align 1, !tbaa !2448
  %2746 = lshr i32 %2731, 31
  %2747 = xor i32 %2743, %2746
  %2748 = add nuw nsw i32 %2747, %2746
  %2749 = icmp eq i32 %2748, 2
  %2750 = zext i1 %2749 to i8
  %2751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2750, i8* %2751, align 1, !tbaa !2449
  %2752 = load i64, i64* %PC
  %2753 = add i64 %2752, 100
  %2754 = load i64, i64* %PC
  %2755 = add i64 %2754, 6
  %2756 = load i64, i64* %PC
  %2757 = add i64 %2756, 6
  store i64 %2757, i64* %PC
  %2758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2759 = load i8, i8* %2758, align 1, !tbaa !2447
  store i8 %2759, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %2760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2761 = icmp ne i8 %2759, 0
  %2762 = select i1 %2761, i64 %2753, i64 %2755
  store i64 %2762, i64* %2760, align 8, !tbaa !2428
  %2763 = load i8, i8* %BRANCH_TAKEN
  %2764 = icmp eq i8 %2763, 1
  %2765 = load i64, i64* %RBP
  br i1 %2764, label %block_400d1e, label %block_400cc0

block_40131d:                                     ; preds = %block_401307
  %2766 = load i64, i64* %RBP
  %2767 = sub i64 %2766, 48
  %2768 = load i64, i64* %PC
  %2769 = add i64 %2768, 4
  store i64 %2769, i64* %PC
  %2770 = inttoptr i64 %2767 to i64*
  %2771 = load i64, i64* %2770
  store i64 %2771, i64* %RAX, align 8, !tbaa !2428
  %2772 = load i64, i64* %RBP
  %2773 = load i64, i64* %RAX
  %2774 = add i64 %2772, -12992
  %2775 = add i64 %2774, %2773
  %2776 = load i64, i64* %PC
  %2777 = add i64 %2776, 7
  store i64 %2777, i64* %PC
  %2778 = inttoptr i64 %2775 to i8*
  %2779 = load i8, i8* %2778
  store i8 %2779, i8* %CL, align 1, !tbaa !2451
  %2780 = load i64, i64* %RBP
  %2781 = sub i64 %2780, 112
  %2782 = load i64, i64* %PC
  %2783 = add i64 %2782, 4
  store i64 %2783, i64* %PC
  %2784 = inttoptr i64 %2781 to i64*
  %2785 = load i64, i64* %2784
  store i64 %2785, i64* %RAX, align 8, !tbaa !2428
  %2786 = load i64, i64* %RAX
  %2787 = load i8, i8* %CL
  %2788 = zext i8 %2787 to i64
  %2789 = load i64, i64* %PC
  %2790 = add i64 %2789, 2
  store i64 %2790, i64* %PC
  %2791 = inttoptr i64 %2786 to i8*
  store i8 %2787, i8* %2791
  %2792 = load i64, i64* %RBP
  %2793 = sub i64 %2792, 112
  %2794 = load i64, i64* %PC
  %2795 = add i64 %2794, 4
  store i64 %2795, i64* %PC
  %2796 = inttoptr i64 %2793 to i64*
  %2797 = load i64, i64* %2796
  store i64 %2797, i64* %RAX, align 8, !tbaa !2428
  %2798 = load i64, i64* %RAX
  %2799 = load i64, i64* %PC
  %2800 = add i64 %2799, 4
  store i64 %2800, i64* %PC
  %2801 = add i64 1, %2798
  store i64 %2801, i64* %RAX, align 8, !tbaa !2428
  %2802 = icmp ult i64 %2801, %2798
  %2803 = icmp ult i64 %2801, 1
  %2804 = or i1 %2802, %2803
  %2805 = zext i1 %2804 to i8
  %2806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2805, i8* %2806, align 1, !tbaa !2432
  %2807 = trunc i64 %2801 to i32
  %2808 = and i32 %2807, 255
  %2809 = call i32 @llvm.ctpop.i32(i32 %2808) #16
  %2810 = trunc i32 %2809 to i8
  %2811 = and i8 %2810, 1
  %2812 = xor i8 %2811, 1
  %2813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2812, i8* %2813, align 1, !tbaa !2446
  %2814 = xor i64 1, %2798
  %2815 = xor i64 %2814, %2801
  %2816 = lshr i64 %2815, 4
  %2817 = trunc i64 %2816 to i8
  %2818 = and i8 %2817, 1
  %2819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2818, i8* %2819, align 1, !tbaa !2450
  %2820 = icmp eq i64 %2801, 0
  %2821 = zext i1 %2820 to i8
  %2822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2821, i8* %2822, align 1, !tbaa !2447
  %2823 = lshr i64 %2801, 63
  %2824 = trunc i64 %2823 to i8
  %2825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2824, i8* %2825, align 1, !tbaa !2448
  %2826 = lshr i64 %2798, 63
  %2827 = xor i64 %2823, %2826
  %2828 = add nuw nsw i64 %2827, %2823
  %2829 = icmp eq i64 %2828, 2
  %2830 = zext i1 %2829 to i8
  %2831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2830, i8* %2831, align 1, !tbaa !2449
  %2832 = load i64, i64* %RBP
  %2833 = sub i64 %2832, 112
  %2834 = load i64, i64* %RAX
  %2835 = load i64, i64* %PC
  %2836 = add i64 %2835, 4
  store i64 %2836, i64* %PC
  %2837 = inttoptr i64 %2833 to i64*
  store i64 %2834, i64* %2837
  %2838 = load i64, i64* %RBP
  %2839 = sub i64 %2838, 64
  %2840 = load i64, i64* %PC
  %2841 = add i64 %2840, 4
  store i64 %2841, i64* %PC
  %2842 = inttoptr i64 %2839 to i64*
  %2843 = load i64, i64* %2842
  store i64 %2843, i64* %RAX, align 8, !tbaa !2428
  %2844 = load i64, i64* %RAX
  %2845 = load i64, i64* %PC
  %2846 = add i64 %2845, 4
  store i64 %2846, i64* %PC
  %2847 = add i64 1, %2844
  store i64 %2847, i64* %RAX, align 8, !tbaa !2428
  %2848 = icmp ult i64 %2847, %2844
  %2849 = icmp ult i64 %2847, 1
  %2850 = or i1 %2848, %2849
  %2851 = zext i1 %2850 to i8
  %2852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2851, i8* %2852, align 1, !tbaa !2432
  %2853 = trunc i64 %2847 to i32
  %2854 = and i32 %2853, 255
  %2855 = call i32 @llvm.ctpop.i32(i32 %2854) #16
  %2856 = trunc i32 %2855 to i8
  %2857 = and i8 %2856, 1
  %2858 = xor i8 %2857, 1
  %2859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2858, i8* %2859, align 1, !tbaa !2446
  %2860 = xor i64 1, %2844
  %2861 = xor i64 %2860, %2847
  %2862 = lshr i64 %2861, 4
  %2863 = trunc i64 %2862 to i8
  %2864 = and i8 %2863, 1
  %2865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2864, i8* %2865, align 1, !tbaa !2450
  %2866 = icmp eq i64 %2847, 0
  %2867 = zext i1 %2866 to i8
  %2868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2867, i8* %2868, align 1, !tbaa !2447
  %2869 = lshr i64 %2847, 63
  %2870 = trunc i64 %2869 to i8
  %2871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2870, i8* %2871, align 1, !tbaa !2448
  %2872 = lshr i64 %2844, 63
  %2873 = xor i64 %2869, %2872
  %2874 = add nuw nsw i64 %2873, %2869
  %2875 = icmp eq i64 %2874, 2
  %2876 = zext i1 %2875 to i8
  %2877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2876, i8* %2877, align 1, !tbaa !2449
  %2878 = load i64, i64* %RBP
  %2879 = sub i64 %2878, 64
  %2880 = load i64, i64* %RAX
  %2881 = load i64, i64* %PC
  %2882 = add i64 %2881, 4
  store i64 %2882, i64* %PC
  %2883 = inttoptr i64 %2879 to i64*
  store i64 %2880, i64* %2883
  %2884 = load i64, i64* %RBP
  %2885 = sub i64 %2884, 80
  %2886 = load i64, i64* %PC
  %2887 = add i64 %2886, 8
  store i64 %2887, i64* %PC
  %2888 = inttoptr i64 %2885 to i64*
  store i64 0, i64* %2888
  %2889 = load i64, i64* %RBP
  %2890 = sub i64 %2889, 56
  %2891 = load i64, i64* %PC
  %2892 = add i64 %2891, 4
  store i64 %2892, i64* %PC
  %2893 = inttoptr i64 %2890 to i64*
  %2894 = load i64, i64* %2893
  store i64 %2894, i64* %RAX, align 8, !tbaa !2428
  %2895 = load i64, i64* %RBP
  %2896 = sub i64 %2895, 48
  %2897 = load i64, i64* %RAX
  %2898 = load i64, i64* %PC
  %2899 = add i64 %2898, 4
  store i64 %2899, i64* %PC
  %2900 = inttoptr i64 %2896 to i64*
  store i64 %2897, i64* %2900
  br label %block_401356

block_4010ae:                                     ; preds = %block_4010ff, %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
  %MEMORY.12 = phi %struct.Memory* [ %MEMORY.23, %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit ], [ %MEMORY.26, %block_4010ff ]
  %2901 = load i64, i64* %RBP
  %2902 = sub i64 %2901, 48
  %2903 = load i64, i64* %PC
  %2904 = add i64 %2903, 4
  store i64 %2904, i64* %PC
  %2905 = inttoptr i64 %2902 to i64*
  %2906 = load i64, i64* %2905
  store i64 %2906, i64* %RAX, align 8, !tbaa !2428
  %2907 = load i64, i64* %RBP
  %2908 = sub i64 %2907, 56
  %2909 = load i64, i64* %PC
  %2910 = add i64 %2909, 4
  store i64 %2910, i64* %PC
  %2911 = inttoptr i64 %2908 to i64*
  %2912 = load i64, i64* %2911
  store i64 %2912, i64* %RCX, align 8, !tbaa !2428
  %2913 = load i64, i64* %RBP
  %2914 = load i64, i64* %RCX
  %2915 = add i64 %2913, -10624
  %2916 = add i64 %2915, %2914
  %2917 = load i64, i64* %PC
  %2918 = add i64 %2917, 8
  store i64 %2918, i64* %PC
  %2919 = inttoptr i64 %2916 to i8*
  %2920 = load i8, i8* %2919
  %2921 = zext i8 %2920 to i64
  store i64 %2921, i64* %RDX, align 8, !tbaa !2428
  %2922 = load i32, i32* %EDX
  %2923 = zext i32 %2922 to i64
  %2924 = load i64, i64* %PC
  %2925 = add i64 %2924, 2
  store i64 %2925, i64* %PC
  %2926 = and i64 %2923, 4294967295
  store i64 %2926, i64* %RCX, align 8, !tbaa !2428
  %2927 = load i64, i64* %RAX
  %2928 = load i64, i64* %RCX
  %2929 = load i64, i64* %PC
  %2930 = add i64 %2929, 3
  store i64 %2930, i64* %PC
  %2931 = sub i64 %2927, %2928
  %2932 = icmp ult i64 %2927, %2928
  %2933 = zext i1 %2932 to i8
  %2934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2933, i8* %2934, align 1, !tbaa !2432
  %2935 = trunc i64 %2931 to i32
  %2936 = and i32 %2935, 255
  %2937 = call i32 @llvm.ctpop.i32(i32 %2936) #16
  %2938 = trunc i32 %2937 to i8
  %2939 = and i8 %2938, 1
  %2940 = xor i8 %2939, 1
  %2941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2940, i8* %2941, align 1, !tbaa !2446
  %2942 = xor i64 %2928, %2927
  %2943 = xor i64 %2942, %2931
  %2944 = lshr i64 %2943, 4
  %2945 = trunc i64 %2944 to i8
  %2946 = and i8 %2945, 1
  %2947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2946, i8* %2947, align 1, !tbaa !2450
  %2948 = icmp eq i64 %2931, 0
  %2949 = zext i1 %2948 to i8
  %2950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2949, i8* %2950, align 1, !tbaa !2447
  %2951 = lshr i64 %2931, 63
  %2952 = trunc i64 %2951 to i8
  %2953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2952, i8* %2953, align 1, !tbaa !2448
  %2954 = lshr i64 %2927, 63
  %2955 = lshr i64 %2928, 63
  %2956 = xor i64 %2955, %2954
  %2957 = xor i64 %2951, %2954
  %2958 = add nuw nsw i64 %2957, %2956
  %2959 = icmp eq i64 %2958, 2
  %2960 = zext i1 %2959 to i8
  %2961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2960, i8* %2961, align 1, !tbaa !2449
  %2962 = load i64, i64* %PC
  %2963 = add i64 %2962, 89
  %2964 = load i64, i64* %PC
  %2965 = add i64 %2964, 6
  %2966 = load i64, i64* %PC
  %2967 = add i64 %2966, 6
  store i64 %2967, i64* %PC
  %2968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2969 = load i8, i8* %2968, align 1, !tbaa !2432
  %2970 = icmp eq i8 %2969, 0
  %2971 = zext i1 %2970 to i8
  store i8 %2971, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %2972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2973 = select i1 %2970, i64 %2963, i64 %2965
  store i64 %2973, i64* %2972, align 8, !tbaa !2428
  %2974 = load i8, i8* %BRANCH_TAKEN
  %2975 = icmp eq i8 %2974, 1
  %2976 = load i64, i64* %RBP
  %2977 = sub i64 %2976, 80
  %2978 = load i64, i64* %PC
  %2979 = add i64 %2978, 4
  store i64 %2979, i64* %PC
  %2980 = inttoptr i64 %2977 to i64*
  %2981 = load i64, i64* %2980
  store i64 %2981, i64* %RAX, align 8, !tbaa !2428
  br i1 %2975, label %block_40111c, label %block_4010c9

block_400aa1:                                     ; preds = %block_400a72, %block_400a85
  %MEMORY.13 = phi %struct.Memory* [ %MEMORY.27, %block_400a72 ], [ %MEMORY.27, %block_400a85 ]
  %2982 = load i64, i64* %PC
  %2983 = add i64 %2982, 5
  %2984 = load i64, i64* %PC
  %2985 = add i64 %2984, 5
  store i64 %2985, i64* %PC
  %2986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2983, i64* %2986, align 8, !tbaa !2428
  %2987 = load i64, i64* %RBP
  %2988 = sub i64 %2987, 48
  %2989 = load i64, i64* %PC
  %2990 = add i64 %2989, 4
  store i64 %2990, i64* %PC
  %2991 = inttoptr i64 %2988 to i64*
  %2992 = load i64, i64* %2991
  store i64 %2992, i64* %RAX, align 8, !tbaa !2428
  %2993 = load i64, i64* %RAX
  %2994 = load i64, i64* %PC
  %2995 = add i64 %2994, 4
  store i64 %2995, i64* %PC
  %2996 = add i64 1, %2993
  store i64 %2996, i64* %RAX, align 8, !tbaa !2428
  %2997 = icmp ult i64 %2996, %2993
  %2998 = icmp ult i64 %2996, 1
  %2999 = or i1 %2997, %2998
  %3000 = zext i1 %2999 to i8
  %3001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3000, i8* %3001, align 1, !tbaa !2432
  %3002 = trunc i64 %2996 to i32
  %3003 = and i32 %3002, 255
  %3004 = call i32 @llvm.ctpop.i32(i32 %3003) #16
  %3005 = trunc i32 %3004 to i8
  %3006 = and i8 %3005, 1
  %3007 = xor i8 %3006, 1
  %3008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3007, i8* %3008, align 1, !tbaa !2446
  %3009 = xor i64 1, %2993
  %3010 = xor i64 %3009, %2996
  %3011 = lshr i64 %3010, 4
  %3012 = trunc i64 %3011 to i8
  %3013 = and i8 %3012, 1
  %3014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3013, i8* %3014, align 1, !tbaa !2450
  %3015 = icmp eq i64 %2996, 0
  %3016 = zext i1 %3015 to i8
  %3017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3016, i8* %3017, align 1, !tbaa !2447
  %3018 = lshr i64 %2996, 63
  %3019 = trunc i64 %3018 to i8
  %3020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3019, i8* %3020, align 1, !tbaa !2448
  %3021 = lshr i64 %2993, 63
  %3022 = xor i64 %3018, %3021
  %3023 = add nuw nsw i64 %3022, %3018
  %3024 = icmp eq i64 %3023, 2
  %3025 = zext i1 %3024 to i8
  %3026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3025, i8* %3026, align 1, !tbaa !2449
  %3027 = load i64, i64* %RBP
  %3028 = sub i64 %3027, 48
  %3029 = load i64, i64* %RAX
  %3030 = load i64, i64* %PC
  %3031 = add i64 %3030, 4
  store i64 %3031, i64* %PC
  %3032 = inttoptr i64 %3028 to i64*
  store i64 %3029, i64* %3032
  %3033 = load i64, i64* %PC
  %3034 = sub i64 %3033, 78
  %3035 = load i64, i64* %PC
  %3036 = add i64 %3035, 5
  store i64 %3036, i64* %PC
  %3037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3034, i64* %3037, align 8, !tbaa !2428
  br label %block_400a64

block_400e9b:                                     ; preds = %block_400e7b
  %3038 = sub i64 %3348, 10688
  %3039 = load i64, i64* %PC
  %3040 = add i64 %3039, 7
  store i64 %3040, i64* %PC
  %3041 = inttoptr i64 %3038 to i32*
  %3042 = load i32, i32* %3041
  %3043 = sub i32 %3042, 7
  %3044 = icmp ult i32 %3042, 7
  %3045 = zext i1 %3044 to i8
  %3046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3045, i8* %3046, align 1, !tbaa !2432
  %3047 = and i32 %3043, 255
  %3048 = call i32 @llvm.ctpop.i32(i32 %3047) #16
  %3049 = trunc i32 %3048 to i8
  %3050 = and i8 %3049, 1
  %3051 = xor i8 %3050, 1
  %3052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3051, i8* %3052, align 1, !tbaa !2446
  %3053 = xor i32 %3042, 7
  %3054 = xor i32 %3053, %3043
  %3055 = lshr i32 %3054, 4
  %3056 = trunc i32 %3055 to i8
  %3057 = and i8 %3056, 1
  %3058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3057, i8* %3058, align 1, !tbaa !2450
  %3059 = icmp eq i32 %3043, 0
  %3060 = zext i1 %3059 to i8
  %3061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3060, i8* %3061, align 1, !tbaa !2447
  %3062 = lshr i32 %3043, 31
  %3063 = trunc i32 %3062 to i8
  %3064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3063, i8* %3064, align 1, !tbaa !2448
  %3065 = lshr i32 %3042, 31
  %3066 = xor i32 %3062, %3065
  %3067 = add nuw nsw i32 %3066, %3065
  %3068 = icmp eq i32 %3067, 2
  %3069 = zext i1 %3068 to i8
  %3070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3069, i8* %3070, align 1, !tbaa !2449
  %3071 = load i64, i64* %PC
  %3072 = add i64 %3071, 124
  %3073 = load i64, i64* %PC
  %3074 = add i64 %3073, 6
  %3075 = load i64, i64* %PC
  %3076 = add i64 %3075, 6
  store i64 %3076, i64* %PC
  %3077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3078 = load i8, i8* %3077, align 1, !tbaa !2447
  %3079 = icmp eq i8 %3078, 0
  %3080 = zext i1 %3079 to i8
  store i8 %3080, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %3081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3082 = select i1 %3079, i64 %3072, i64 %3074
  store i64 %3082, i64* %3081, align 8, !tbaa !2428
  %3083 = load i8, i8* %BRANCH_TAKEN
  %3084 = icmp eq i8 %3083, 1
  %3085 = load i64, i64* %RBP
  br i1 %3084, label %block_400f1e, label %block_400ea8

block_401241:                                     ; preds = %block_401254, %block_401239
  %MEMORY.14 = phi %struct.Memory* [ %MEMORY.22, %block_401239 ], [ %MEMORY.14, %block_401254 ]
  %3086 = load i64, i64* %RBP
  %3087 = sub i64 %3086, 56
  %3088 = load i64, i64* %PC
  %3089 = add i64 %3088, 4
  store i64 %3089, i64* %PC
  %3090 = inttoptr i64 %3087 to i64*
  %3091 = load i64, i64* %3090
  store i64 %3091, i64* %RAX, align 8, !tbaa !2428
  %3092 = load i64, i64* %RBP
  %3093 = load i64, i64* %RAX
  %3094 = mul i64 %3093, 8
  %3095 = add i64 %3092, -12736
  %3096 = add i64 %3095, %3094
  %3097 = load i64, i64* %PC
  %3098 = add i64 %3097, 9
  store i64 %3098, i64* %PC
  %3099 = inttoptr i64 %3096 to i64*
  %3100 = load i64, i64* %3099
  %3101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3101, align 1, !tbaa !2432
  %3102 = trunc i64 %3100 to i32
  %3103 = and i32 %3102, 255
  %3104 = call i32 @llvm.ctpop.i32(i32 %3103) #16
  %3105 = trunc i32 %3104 to i8
  %3106 = and i8 %3105, 1
  %3107 = xor i8 %3106, 1
  %3108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3107, i8* %3108, align 1, !tbaa !2446
  %3109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3109, align 1, !tbaa !2450
  %3110 = icmp eq i64 %3100, 0
  %3111 = zext i1 %3110 to i8
  %3112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3111, i8* %3112, align 1, !tbaa !2447
  %3113 = lshr i64 %3100, 63
  %3114 = trunc i64 %3113 to i8
  %3115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3114, i8* %3115, align 1, !tbaa !2448
  %3116 = lshr i64 %3100, 63
  %3117 = xor i64 %3113, %3116
  %3118 = add nuw nsw i64 %3117, %3116
  %3119 = icmp eq i64 %3118, 2
  %3120 = zext i1 %3119 to i8
  %3121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3120, i8* %3121, align 1, !tbaa !2449
  %3122 = load i64, i64* %PC
  %3123 = add i64 %3122, 28
  %3124 = load i64, i64* %PC
  %3125 = add i64 %3124, 6
  %3126 = load i64, i64* %PC
  %3127 = add i64 %3126, 6
  store i64 %3127, i64* %PC
  %3128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3129 = load i8, i8* %3128, align 1, !tbaa !2447
  %3130 = icmp eq i8 %3129, 0
  %3131 = zext i1 %3130 to i8
  store i8 %3131, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %3132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3133 = select i1 %3130, i64 %3123, i64 %3125
  store i64 %3133, i64* %3132, align 8, !tbaa !2428
  %3134 = load i8, i8* %BRANCH_TAKEN
  %3135 = icmp eq i8 %3134, 1
  br i1 %3135, label %block_40126a, label %block_401254

block_40129a:                                     ; preds = %block_401386, %block_40126a
  %MEMORY.15 = phi %struct.Memory* [ %MEMORY.14, %block_40126a ], [ %MEMORY.17, %block_401386 ]
  %3136 = load i64, i64* %RBP
  %3137 = sub i64 %3136, 64
  %3138 = load i64, i64* %PC
  %3139 = add i64 %3138, 4
  store i64 %3139, i64* %PC
  %3140 = inttoptr i64 %3137 to i64*
  %3141 = load i64, i64* %3140
  store i64 %3141, i64* %RAX, align 8, !tbaa !2428
  %3142 = load i64, i64* %RAX
  %3143 = load i64, i64* %RBP
  %3144 = sub i64 %3143, 40
  %3145 = load i64, i64* %PC
  %3146 = add i64 %3145, 4
  store i64 %3146, i64* %PC
  %3147 = inttoptr i64 %3144 to i64*
  %3148 = load i64, i64* %3147
  %3149 = sub i64 %3142, %3148
  %3150 = icmp ugt i64 %3148, %3142
  %3151 = zext i1 %3150 to i8
  %3152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3151, i8* %3152, align 1, !tbaa !2432
  %3153 = trunc i64 %3149 to i32
  %3154 = and i32 %3153, 255
  %3155 = call i32 @llvm.ctpop.i32(i32 %3154) #16
  %3156 = trunc i32 %3155 to i8
  %3157 = and i8 %3156, 1
  %3158 = xor i8 %3157, 1
  %3159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3158, i8* %3159, align 1, !tbaa !2446
  %3160 = xor i64 %3148, %3142
  %3161 = xor i64 %3160, %3149
  %3162 = lshr i64 %3161, 4
  %3163 = trunc i64 %3162 to i8
  %3164 = and i8 %3163, 1
  %3165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3164, i8* %3165, align 1, !tbaa !2450
  %3166 = icmp eq i64 %3149, 0
  %3167 = zext i1 %3166 to i8
  %3168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3167, i8* %3168, align 1, !tbaa !2447
  %3169 = lshr i64 %3149, 63
  %3170 = trunc i64 %3169 to i8
  %3171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3170, i8* %3171, align 1, !tbaa !2448
  %3172 = lshr i64 %3142, 63
  %3173 = lshr i64 %3148, 63
  %3174 = xor i64 %3173, %3172
  %3175 = xor i64 %3169, %3172
  %3176 = add nuw nsw i64 %3175, %3174
  %3177 = icmp eq i64 %3176, 2
  %3178 = zext i1 %3177 to i8
  %3179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3178, i8* %3179, align 1, !tbaa !2449
  %3180 = load i64, i64* %PC
  %3181 = add i64 %3180, 233
  %3182 = load i64, i64* %PC
  %3183 = add i64 %3182, 6
  %3184 = load i64, i64* %PC
  %3185 = add i64 %3184, 6
  store i64 %3185, i64* %PC
  %3186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3187 = load i8, i8* %3186, align 1, !tbaa !2432
  %3188 = icmp eq i8 %3187, 0
  %3189 = zext i1 %3188 to i8
  store i8 %3189, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %3190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3191 = select i1 %3188, i64 %3181, i64 %3183
  store i64 %3191, i64* %3190, align 8, !tbaa !2428
  %3192 = load i8, i8* %BRANCH_TAKEN
  %3193 = icmp eq i8 %3192, 1
  %3194 = load i64, i64* %RBP
  br i1 %3193, label %block_40138b, label %block_4012a8

block_400a85:                                     ; preds = %block_400a72
  %3195 = load i64, i64* %RBP
  %3196 = sub i64 %3195, 48
  %3197 = load i64, i64* %PC
  %3198 = add i64 %3197, 4
  store i64 %3198, i64* %PC
  %3199 = inttoptr i64 %3196 to i64*
  %3200 = load i64, i64* %3199
  store i64 %3200, i64* %RAX, align 8, !tbaa !2428
  %3201 = load i64, i64* %RBP
  %3202 = sub i64 %3201, 64
  %3203 = load i64, i64* %PC
  %3204 = add i64 %3203, 4
  store i64 %3204, i64* %PC
  %3205 = inttoptr i64 %3202 to i64*
  %3206 = load i64, i64* %3205
  store i64 %3206, i64* %RCX, align 8, !tbaa !2428
  %3207 = load i64, i64* %RBP
  %3208 = load i64, i64* %RCX
  %3209 = mul i64 %3208, 8
  %3210 = add i64 %3207, -6272
  %3211 = add i64 %3210, %3209
  %3212 = load i64, i64* %RAX
  %3213 = load i64, i64* %PC
  %3214 = add i64 %3213, 8
  store i64 %3214, i64* %PC
  %3215 = inttoptr i64 %3211 to i64*
  store i64 %3212, i64* %3215
  %3216 = load i64, i64* %RBP
  %3217 = sub i64 %3216, 64
  %3218 = load i64, i64* %PC
  %3219 = add i64 %3218, 4
  store i64 %3219, i64* %PC
  %3220 = inttoptr i64 %3217 to i64*
  %3221 = load i64, i64* %3220
  store i64 %3221, i64* %RAX, align 8, !tbaa !2428
  %3222 = load i64, i64* %RAX
  %3223 = load i64, i64* %PC
  %3224 = add i64 %3223, 4
  store i64 %3224, i64* %PC
  %3225 = add i64 1, %3222
  store i64 %3225, i64* %RAX, align 8, !tbaa !2428
  %3226 = icmp ult i64 %3225, %3222
  %3227 = icmp ult i64 %3225, 1
  %3228 = or i1 %3226, %3227
  %3229 = zext i1 %3228 to i8
  %3230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3229, i8* %3230, align 1, !tbaa !2432
  %3231 = trunc i64 %3225 to i32
  %3232 = and i32 %3231, 255
  %3233 = call i32 @llvm.ctpop.i32(i32 %3232) #16
  %3234 = trunc i32 %3233 to i8
  %3235 = and i8 %3234, 1
  %3236 = xor i8 %3235, 1
  %3237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3236, i8* %3237, align 1, !tbaa !2446
  %3238 = xor i64 1, %3222
  %3239 = xor i64 %3238, %3225
  %3240 = lshr i64 %3239, 4
  %3241 = trunc i64 %3240 to i8
  %3242 = and i8 %3241, 1
  %3243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3242, i8* %3243, align 1, !tbaa !2450
  %3244 = icmp eq i64 %3225, 0
  %3245 = zext i1 %3244 to i8
  %3246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3245, i8* %3246, align 1, !tbaa !2447
  %3247 = lshr i64 %3225, 63
  %3248 = trunc i64 %3247 to i8
  %3249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3248, i8* %3249, align 1, !tbaa !2448
  %3250 = lshr i64 %3222, 63
  %3251 = xor i64 %3247, %3250
  %3252 = add nuw nsw i64 %3251, %3247
  %3253 = icmp eq i64 %3252, 2
  %3254 = zext i1 %3253 to i8
  %3255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3254, i8* %3255, align 1, !tbaa !2449
  %3256 = load i64, i64* %RBP
  %3257 = sub i64 %3256, 64
  %3258 = load i64, i64* %RAX
  %3259 = load i64, i64* %PC
  %3260 = add i64 %3259, 4
  store i64 %3260, i64* %PC
  %3261 = inttoptr i64 %3257 to i64*
  store i64 %3258, i64* %3261
  br label %block_400aa1

block_400e7b:                                     ; preds = %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit2, %block_400f70
  %MEMORY.16 = phi %struct.Memory* [ %MEMORY.19, %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit2 ], [ %MEMORY.1, %block_400f70 ]
  %3262 = load i64, i64* %RBP
  %3263 = sub i64 %3262, 48
  %3264 = load i64, i64* %PC
  %3265 = add i64 %3264, 4
  store i64 %3265, i64* %PC
  %3266 = inttoptr i64 %3263 to i64*
  %3267 = load i64, i64* %3266
  store i64 %3267, i64* %RAX, align 8, !tbaa !2428
  %3268 = load i64, i64* %RBP
  %3269 = sub i64 %3268, 112
  %3270 = load i64, i64* %PC
  %3271 = add i64 %3270, 4
  store i64 %3271, i64* %PC
  %3272 = inttoptr i64 %3269 to i64*
  %3273 = load i64, i64* %3272
  store i64 %3273, i64* %RCX, align 8, !tbaa !2428
  %3274 = load i64, i64* %RCX
  %3275 = load i64, i64* %PC
  %3276 = add i64 %3275, 3
  store i64 %3276, i64* %PC
  %3277 = inttoptr i64 %3274 to i8*
  %3278 = load i8, i8* %3277
  %3279 = zext i8 %3278 to i64
  store i64 %3279, i64* %RDX, align 8, !tbaa !2428
  %3280 = load i32, i32* %EDX
  %3281 = zext i32 %3280 to i64
  %3282 = load i64, i64* %PC
  %3283 = add i64 %3282, 2
  store i64 %3283, i64* %PC
  %3284 = and i64 %3281, 4294967295
  store i64 %3284, i64* %RCX, align 8, !tbaa !2428
  %3285 = load i64, i64* %RBP
  %3286 = load i64, i64* %RCX
  %3287 = add i64 %3285, -10624
  %3288 = add i64 %3287, %3286
  %3289 = load i64, i64* %PC
  %3290 = add i64 %3289, 8
  store i64 %3290, i64* %PC
  %3291 = inttoptr i64 %3288 to i8*
  %3292 = load i8, i8* %3291
  %3293 = zext i8 %3292 to i64
  store i64 %3293, i64* %RDX, align 8, !tbaa !2428
  %3294 = load i32, i32* %EDX
  %3295 = zext i32 %3294 to i64
  %3296 = load i64, i64* %PC
  %3297 = add i64 %3296, 2
  store i64 %3297, i64* %PC
  %3298 = and i64 %3295, 4294967295
  store i64 %3298, i64* %RCX, align 8, !tbaa !2428
  %3299 = load i64, i64* %RAX
  %3300 = load i64, i64* %RCX
  %3301 = load i64, i64* %PC
  %3302 = add i64 %3301, 3
  store i64 %3302, i64* %PC
  %3303 = sub i64 %3299, %3300
  %3304 = icmp ult i64 %3299, %3300
  %3305 = zext i1 %3304 to i8
  %3306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3305, i8* %3306, align 1, !tbaa !2432
  %3307 = trunc i64 %3303 to i32
  %3308 = and i32 %3307, 255
  %3309 = call i32 @llvm.ctpop.i32(i32 %3308) #16
  %3310 = trunc i32 %3309 to i8
  %3311 = and i8 %3310, 1
  %3312 = xor i8 %3311, 1
  %3313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3312, i8* %3313, align 1, !tbaa !2446
  %3314 = xor i64 %3300, %3299
  %3315 = xor i64 %3314, %3303
  %3316 = lshr i64 %3315, 4
  %3317 = trunc i64 %3316 to i8
  %3318 = and i8 %3317, 1
  %3319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3318, i8* %3319, align 1, !tbaa !2450
  %3320 = icmp eq i64 %3303, 0
  %3321 = zext i1 %3320 to i8
  %3322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3321, i8* %3322, align 1, !tbaa !2447
  %3323 = lshr i64 %3303, 63
  %3324 = trunc i64 %3323 to i8
  %3325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3324, i8* %3325, align 1, !tbaa !2448
  %3326 = lshr i64 %3299, 63
  %3327 = lshr i64 %3300, 63
  %3328 = xor i64 %3327, %3326
  %3329 = xor i64 %3323, %3326
  %3330 = add nuw nsw i64 %3329, %3328
  %3331 = icmp eq i64 %3330, 2
  %3332 = zext i1 %3331 to i8
  %3333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3332, i8* %3333, align 1, !tbaa !2449
  %3334 = load i64, i64* %PC
  %3335 = add i64 %3334, 248
  %3336 = load i64, i64* %PC
  %3337 = add i64 %3336, 6
  %3338 = load i64, i64* %PC
  %3339 = add i64 %3338, 6
  store i64 %3339, i64* %PC
  %3340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3341 = load i8, i8* %3340, align 1, !tbaa !2432
  %3342 = icmp eq i8 %3341, 0
  %3343 = zext i1 %3342 to i8
  store i8 %3343, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %3344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3345 = select i1 %3342, i64 %3335, i64 %3337
  store i64 %3345, i64* %3344, align 8, !tbaa !2428
  %3346 = load i8, i8* %BRANCH_TAKEN
  %3347 = icmp eq i8 %3346, 1
  %3348 = load i64, i64* %RBP
  br i1 %3347, label %block_400f8d, label %block_400e9b

block_400a72:                                     ; preds = %block_400a64
  %3349 = sub i64 %6135, 48
  %3350 = load i64, i64* %PC
  %3351 = add i64 %3350, 4
  store i64 %3351, i64* %PC
  %3352 = inttoptr i64 %3349 to i64*
  %3353 = load i64, i64* %3352
  store i64 %3353, i64* %RAX, align 8, !tbaa !2428
  %3354 = load i64, i64* %RBP
  %3355 = load i64, i64* %RAX
  %3356 = mul i64 %3355, 8
  %3357 = add i64 %3354, -4224
  %3358 = add i64 %3357, %3356
  %3359 = load i64, i64* %PC
  %3360 = add i64 %3359, 9
  store i64 %3360, i64* %PC
  %3361 = inttoptr i64 %3358 to i64*
  %3362 = load i64, i64* %3361
  %3363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3363, align 1, !tbaa !2432
  %3364 = trunc i64 %3362 to i32
  %3365 = and i32 %3364, 255
  %3366 = call i32 @llvm.ctpop.i32(i32 %3365) #16
  %3367 = trunc i32 %3366 to i8
  %3368 = and i8 %3367, 1
  %3369 = xor i8 %3368, 1
  %3370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3369, i8* %3370, align 1, !tbaa !2446
  %3371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3371, align 1, !tbaa !2450
  %3372 = icmp eq i64 %3362, 0
  %3373 = zext i1 %3372 to i8
  %3374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3373, i8* %3374, align 1, !tbaa !2447
  %3375 = lshr i64 %3362, 63
  %3376 = trunc i64 %3375 to i8
  %3377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3376, i8* %3377, align 1, !tbaa !2448
  %3378 = lshr i64 %3362, 63
  %3379 = xor i64 %3375, %3378
  %3380 = add nuw nsw i64 %3379, %3378
  %3381 = icmp eq i64 %3380, 2
  %3382 = zext i1 %3381 to i8
  %3383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3382, i8* %3383, align 1, !tbaa !2449
  %3384 = load i64, i64* %PC
  %3385 = add i64 %3384, 34
  %3386 = load i64, i64* %PC
  %3387 = add i64 %3386, 6
  %3388 = load i64, i64* %PC
  %3389 = add i64 %3388, 6
  store i64 %3389, i64* %PC
  %3390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3391 = load i8, i8* %3390, align 1, !tbaa !2447
  store i8 %3391, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %3392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3393 = icmp ne i8 %3391, 0
  %3394 = select i1 %3393, i64 %3385, i64 %3387
  store i64 %3394, i64* %3392, align 8, !tbaa !2428
  %3395 = load i8, i8* %BRANCH_TAKEN
  %3396 = icmp eq i8 %3395, 1
  br i1 %3396, label %block_400aa1, label %block_400a85

block_40126a:                                     ; preds = %block_401241
  %3397 = load i64, i64* %RBP
  %3398 = sub i64 %3397, 80
  %3399 = load i64, i64* %PC
  %3400 = add i64 %3399, 8
  store i64 %3400, i64* %PC
  %3401 = inttoptr i64 %3398 to i64*
  store i64 0, i64* %3401
  %3402 = load i64, i64* %RBP
  %3403 = sub i64 %3402, 56
  %3404 = load i64, i64* %PC
  %3405 = add i64 %3404, 4
  store i64 %3405, i64* %PC
  %3406 = inttoptr i64 %3403 to i64*
  %3407 = load i64, i64* %3406
  store i64 %3407, i64* %RAX, align 8, !tbaa !2428
  %3408 = load i64, i64* %RBP
  %3409 = sub i64 %3408, 48
  %3410 = load i64, i64* %RAX
  %3411 = load i64, i64* %PC
  %3412 = add i64 %3411, 4
  store i64 %3412, i64* %PC
  %3413 = inttoptr i64 %3409 to i64*
  store i64 %3410, i64* %3413
  %3414 = load i64, i64* %RBP
  %3415 = sub i64 %3414, 72
  %3416 = load i64, i64* %PC
  %3417 = add i64 %3416, 8
  store i64 %3417, i64* %PC
  %3418 = inttoptr i64 %3415 to i64*
  store i64 128, i64* %3418
  %3419 = load i64, i64* %RBP
  %3420 = sub i64 %3419, 64
  %3421 = load i64, i64* %PC
  %3422 = add i64 %3421, 8
  store i64 %3422, i64* %PC
  %3423 = inttoptr i64 %3420 to i64*
  store i64 0, i64* %3423
  %3424 = load i64, i64* %RBP
  %3425 = sub i64 %3424, 120
  %3426 = load i64, i64* %PC
  %3427 = add i64 %3426, 4
  store i64 %3427, i64* %PC
  %3428 = inttoptr i64 %3425 to i64*
  %3429 = load i64, i64* %3428
  store i64 %3429, i64* %RAX, align 8, !tbaa !2428
  %3430 = load i64, i64* %RBP
  %3431 = sub i64 %3430, 104
  %3432 = load i64, i64* %RAX
  %3433 = load i64, i64* %PC
  %3434 = add i64 %3433, 4
  store i64 %3434, i64* %PC
  %3435 = inttoptr i64 %3431 to i64*
  store i64 %3432, i64* %3435
  %3436 = load i64, i64* %RBP
  %3437 = sub i64 %3436, 32
  %3438 = load i64, i64* %PC
  %3439 = add i64 %3438, 4
  store i64 %3439, i64* %PC
  %3440 = inttoptr i64 %3437 to i64*
  %3441 = load i64, i64* %3440
  store i64 %3441, i64* %RAX, align 8, !tbaa !2428
  %3442 = load i64, i64* %RBP
  %3443 = sub i64 %3442, 112
  %3444 = load i64, i64* %RAX
  %3445 = load i64, i64* %PC
  %3446 = add i64 %3445, 4
  store i64 %3446, i64* %PC
  %3447 = inttoptr i64 %3443 to i64*
  store i64 %3444, i64* %3447
  br label %block_40129a

block_400c5d:                                     ; preds = %block_400c47
  %3448 = sub i64 %3975, 10640
  %3449 = load i64, i64* %PC
  %3450 = add i64 %3449, 7
  store i64 %3450, i64* %PC
  %3451 = inttoptr i64 %3448 to i64*
  %3452 = load i64, i64* %3451
  store i64 %3452, i64* %RAX, align 8, !tbaa !2428
  %3453 = load i64, i64* %RBP
  %3454 = load i64, i64* %RAX
  %3455 = mul i64 %3454, 8
  %3456 = add i64 %3453, -10368
  %3457 = add i64 %3456, %3455
  %3458 = load i64, i64* %PC
  %3459 = add i64 %3458, 12
  store i64 %3459, i64* %PC
  %3460 = inttoptr i64 %3457 to i64*
  store i64 0, i64* %3460
  %3461 = load i64, i64* %RBP
  %3462 = sub i64 %3461, 10640
  %3463 = load i64, i64* %PC
  %3464 = add i64 %3463, 7
  store i64 %3464, i64* %PC
  %3465 = inttoptr i64 %3462 to i64*
  %3466 = load i64, i64* %3465
  store i64 %3466, i64* %RAX, align 8, !tbaa !2428
  %3467 = load i64, i64* %RBP
  %3468 = load i64, i64* %RAX
  %3469 = add i64 %3467, -10624
  %3470 = add i64 %3469, %3468
  %3471 = load i64, i64* %PC
  %3472 = add i64 %3471, 8
  store i64 %3472, i64* %PC
  %3473 = inttoptr i64 %3470 to i8*
  store i8 0, i8* %3473
  %3474 = load i64, i64* %PC
  %3475 = add i64 %3474, 268
  %3476 = load i64, i64* %PC
  %3477 = add i64 %3476, 5
  store i64 %3477, i64* %PC
  %3478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3475, i64* %3478, align 8, !tbaa !2428
  br label %block_400d8b

block_400d7b:                                     ; preds = %block_400d6a
  %3479 = load i64, i64* %RBP
  %3480 = sub i64 %3479, 48
  %3481 = load i64, i64* %PC
  %3482 = add i64 %3481, 4
  store i64 %3482, i64* %PC
  %3483 = inttoptr i64 %3480 to i64*
  %3484 = load i64, i64* %3483
  store i64 %3484, i64* %RAX, align 8, !tbaa !2428
  %3485 = load i64, i64* %RBP
  %3486 = sub i64 %3485, 10664
  %3487 = load i64, i64* %RAX
  %3488 = load i64, i64* %PC
  %3489 = add i64 %3488, 7
  store i64 %3489, i64* %PC
  %3490 = inttoptr i64 %3486 to i64*
  store i64 %3487, i64* %3490
  br label %block_400d86

block_400edf:                                     ; preds = %block_400ea8
  %3491 = load i64, i64* %PC
  %3492 = add i64 %3491, 10
  store i64 %3492, i64* %PC
  store i64 add (i64 ptrtoint (%seg_401660__rodata_type* @seg_401660__rodata to i64), i64 96), i64* %RSI, align 8, !tbaa !2428
  %3493 = load i64, i64* %PC
  %3494 = add i64 %3493, 8
  store i64 %3494, i64* %PC
  %3495 = load i64, i64* @stderr
  store i64 %3495, i64* %RDI, align 8, !tbaa !2428
  %3496 = load i64, i64* %PC
  %3497 = add i64 %3496, 2
  store i64 %3497, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %3498 = load i64, i64* %PC
  %3499 = sub i64 %3498, 2243
  %3500 = load i64, i64* %PC
  %3501 = add i64 %3500, 5
  %3502 = load i64, i64* %PC
  %3503 = add i64 %3502, 5
  store i64 %3503, i64* %PC
  %3504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3505 = load i64, i64* %3504, align 8, !tbaa !2428
  %3506 = add i64 %3505, -8
  %3507 = inttoptr i64 %3506 to i64*
  store i64 %3501, i64* %3507
  store i64 %3506, i64* %3504, align 8, !tbaa !2428
  %3508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3499, i64* %3508, align 8, !tbaa !2428
  %3509 = load i64, i64* %PC
  %3510 = call %struct.Memory* @ext_6020d0_fprintf(%struct.State* %0, i64 %3509, %struct.Memory* %MEMORY.16)
  %3511 = load i64, i64* %PC
  %3512 = add i64 %3511, 5
  store i64 %3512, i64* %PC
  store i64 1, i64* %RDI, align 8, !tbaa !2428
  %3513 = load i64, i64* %RBP
  %3514 = sub i64 %3513, 13088
  %3515 = load i32, i32* %EAX
  %3516 = zext i32 %3515 to i64
  %3517 = load i64, i64* %PC
  %3518 = add i64 %3517, 6
  store i64 %3518, i64* %PC
  %3519 = inttoptr i64 %3514 to i32*
  store i32 %3515, i32* %3519
  %3520 = load i64, i64* %PC
  %3521 = sub i64 %3520, 2211
  %3522 = load i64, i64* %PC
  %3523 = add i64 %3522, 5
  %3524 = load i64, i64* %PC
  %3525 = add i64 %3524, 5
  store i64 %3525, i64* %PC
  %3526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3527 = load i64, i64* %3526, align 8, !tbaa !2428
  %3528 = add i64 %3527, -8
  %3529 = inttoptr i64 %3528 to i64*
  store i64 %3523, i64* %3529
  store i64 %3528, i64* %3526, align 8, !tbaa !2428
  %3530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3521, i64* %3530, align 8, !tbaa !2428
  %3531 = load i64, i64* %PC
  %3532 = call %struct.Memory* @ext_400660_exit(%struct.State* %0, i64 %3531, %struct.Memory* %3510)
  %3533 = load i64, i64* %PC
  %3534 = tail call %struct.Memory* @__remill_error(%struct.State* %0, i64 %3533, %struct.Memory* %3532)
  ret %struct.Memory* %3534

block_401254:                                     ; preds = %block_401241
  %3535 = load i64, i64* %PC
  %3536 = add i64 %3535, 5
  %3537 = load i64, i64* %PC
  %3538 = add i64 %3537, 5
  store i64 %3538, i64* %PC
  %3539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3536, i64* %3539, align 8, !tbaa !2428
  %3540 = load i64, i64* %RBP
  %3541 = sub i64 %3540, 56
  %3542 = load i64, i64* %PC
  %3543 = add i64 %3542, 4
  store i64 %3543, i64* %PC
  %3544 = inttoptr i64 %3541 to i64*
  %3545 = load i64, i64* %3544
  store i64 %3545, i64* %RAX, align 8, !tbaa !2428
  %3546 = load i64, i64* %RAX
  %3547 = load i64, i64* %PC
  %3548 = add i64 %3547, 4
  store i64 %3548, i64* %PC
  %3549 = add i64 1, %3546
  store i64 %3549, i64* %RAX, align 8, !tbaa !2428
  %3550 = icmp ult i64 %3549, %3546
  %3551 = icmp ult i64 %3549, 1
  %3552 = or i1 %3550, %3551
  %3553 = zext i1 %3552 to i8
  %3554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3553, i8* %3554, align 1, !tbaa !2432
  %3555 = trunc i64 %3549 to i32
  %3556 = and i32 %3555, 255
  %3557 = call i32 @llvm.ctpop.i32(i32 %3556) #16
  %3558 = trunc i32 %3557 to i8
  %3559 = and i8 %3558, 1
  %3560 = xor i8 %3559, 1
  %3561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3560, i8* %3561, align 1, !tbaa !2446
  %3562 = xor i64 1, %3546
  %3563 = xor i64 %3562, %3549
  %3564 = lshr i64 %3563, 4
  %3565 = trunc i64 %3564 to i8
  %3566 = and i8 %3565, 1
  %3567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3566, i8* %3567, align 1, !tbaa !2450
  %3568 = icmp eq i64 %3549, 0
  %3569 = zext i1 %3568 to i8
  %3570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3569, i8* %3570, align 1, !tbaa !2447
  %3571 = lshr i64 %3549, 63
  %3572 = trunc i64 %3571 to i8
  %3573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3572, i8* %3573, align 1, !tbaa !2448
  %3574 = lshr i64 %3546, 63
  %3575 = xor i64 %3571, %3574
  %3576 = add nuw nsw i64 %3575, %3571
  %3577 = icmp eq i64 %3576, 2
  %3578 = zext i1 %3577 to i8
  %3579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3578, i8* %3579, align 1, !tbaa !2449
  %3580 = load i64, i64* %RBP
  %3581 = sub i64 %3580, 56
  %3582 = load i64, i64* %RAX
  %3583 = load i64, i64* %PC
  %3584 = add i64 %3583, 4
  store i64 %3584, i64* %PC
  %3585 = inttoptr i64 %3581 to i64*
  store i64 %3582, i64* %3585
  %3586 = load i64, i64* %PC
  %3587 = sub i64 %3586, 36
  %3588 = load i64, i64* %PC
  %3589 = add i64 %3588, 5
  store i64 %3589, i64* %PC
  %3590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3587, i64* %3590, align 8, !tbaa !2428
  br label %block_401241

block_401386:                                     ; preds = %block_401361, %block_401372
  %MEMORY.17 = phi %struct.Memory* [ %MEMORY.3, %block_401372 ], [ %MEMORY.3, %block_401361 ]
  %3591 = load i64, i64* %PC
  %3592 = sub i64 %3591, 236
  %3593 = load i64, i64* %PC
  %3594 = add i64 %3593, 5
  store i64 %3594, i64* %PC
  %3595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3592, i64* %3595, align 8, !tbaa !2428
  br label %block_40129a

block_400ea8:                                     ; preds = %block_400e9b
  %3596 = sub i64 %3085, 10681
  %3597 = load i64, i64* %PC
  %3598 = add i64 %3597, 6
  store i64 %3598, i64* %PC
  %3599 = inttoptr i64 %3596 to i8*
  %3600 = load i8, i8* %3599
  store i8 %3600, i8* %AL, align 1, !tbaa !2451
  %3601 = load i64, i64* %RBP
  %3602 = sub i64 %3601, 120
  %3603 = load i64, i64* %PC
  %3604 = add i64 %3603, 4
  store i64 %3604, i64* %PC
  %3605 = inttoptr i64 %3602 to i64*
  %3606 = load i64, i64* %3605
  store i64 %3606, i64* %RCX, align 8, !tbaa !2428
  %3607 = load i64, i64* %RBP
  %3608 = sub i64 %3607, 10680
  %3609 = load i64, i64* %PC
  %3610 = add i64 %3609, 7
  store i64 %3610, i64* %PC
  %3611 = inttoptr i64 %3608 to i64*
  %3612 = load i64, i64* %3611
  store i64 %3612, i64* %RDX, align 8, !tbaa !2428
  %3613 = load i64, i64* %RCX
  %3614 = load i64, i64* %RDX
  %3615 = add i64 %3614, %3613
  %3616 = load i8, i8* %AL
  %3617 = zext i8 %3616 to i64
  %3618 = load i64, i64* %PC
  %3619 = add i64 %3618, 3
  store i64 %3619, i64* %PC
  %3620 = inttoptr i64 %3615 to i8*
  store i8 %3616, i8* %3620
  %3621 = load i64, i64* %RBP
  %3622 = sub i64 %3621, 10680
  %3623 = load i64, i64* %PC
  %3624 = add i64 %3623, 7
  store i64 %3624, i64* %PC
  %3625 = inttoptr i64 %3622 to i64*
  %3626 = load i64, i64* %3625
  store i64 %3626, i64* %RCX, align 8, !tbaa !2428
  %3627 = load i64, i64* %RCX
  %3628 = load i64, i64* %PC
  %3629 = add i64 %3628, 4
  store i64 %3629, i64* %PC
  %3630 = add i64 1, %3627
  store i64 %3630, i64* %RCX, align 8, !tbaa !2428
  %3631 = icmp ult i64 %3630, %3627
  %3632 = icmp ult i64 %3630, 1
  %3633 = or i1 %3631, %3632
  %3634 = zext i1 %3633 to i8
  %3635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3634, i8* %3635, align 1, !tbaa !2432
  %3636 = trunc i64 %3630 to i32
  %3637 = and i32 %3636, 255
  %3638 = call i32 @llvm.ctpop.i32(i32 %3637) #16
  %3639 = trunc i32 %3638 to i8
  %3640 = and i8 %3639, 1
  %3641 = xor i8 %3640, 1
  %3642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3641, i8* %3642, align 1, !tbaa !2446
  %3643 = xor i64 1, %3627
  %3644 = xor i64 %3643, %3630
  %3645 = lshr i64 %3644, 4
  %3646 = trunc i64 %3645 to i8
  %3647 = and i8 %3646, 1
  %3648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3647, i8* %3648, align 1, !tbaa !2450
  %3649 = icmp eq i64 %3630, 0
  %3650 = zext i1 %3649 to i8
  %3651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3650, i8* %3651, align 1, !tbaa !2447
  %3652 = lshr i64 %3630, 63
  %3653 = trunc i64 %3652 to i8
  %3654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3653, i8* %3654, align 1, !tbaa !2448
  %3655 = lshr i64 %3627, 63
  %3656 = xor i64 %3652, %3655
  %3657 = add nuw nsw i64 %3656, %3652
  %3658 = icmp eq i64 %3657, 2
  %3659 = zext i1 %3658 to i8
  %3660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3659, i8* %3660, align 1, !tbaa !2449
  %3661 = load i64, i64* %RBP
  %3662 = sub i64 %3661, 10680
  %3663 = load i64, i64* %RCX
  %3664 = load i64, i64* %PC
  %3665 = add i64 %3664, 7
  store i64 %3665, i64* %PC
  %3666 = inttoptr i64 %3662 to i64*
  store i64 %3663, i64* %3666
  %3667 = load i64, i64* %RBP
  %3668 = sub i64 %3667, 10680
  %3669 = load i64, i64* %PC
  %3670 = add i64 %3669, 7
  store i64 %3670, i64* %PC
  %3671 = inttoptr i64 %3668 to i64*
  %3672 = load i64, i64* %3671
  store i64 %3672, i64* %RCX, align 8, !tbaa !2428
  %3673 = load i64, i64* %RCX
  %3674 = load i64, i64* %RBP
  %3675 = sub i64 %3674, 40
  %3676 = load i64, i64* %PC
  %3677 = add i64 %3676, 4
  store i64 %3677, i64* %PC
  %3678 = inttoptr i64 %3675 to i64*
  %3679 = load i64, i64* %3678
  %3680 = sub i64 %3673, %3679
  %3681 = icmp ugt i64 %3679, %3673
  %3682 = zext i1 %3681 to i8
  %3683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3682, i8* %3683, align 1, !tbaa !2432
  %3684 = trunc i64 %3680 to i32
  %3685 = and i32 %3684, 255
  %3686 = call i32 @llvm.ctpop.i32(i32 %3685) #16
  %3687 = trunc i32 %3686 to i8
  %3688 = and i8 %3687, 1
  %3689 = xor i8 %3688, 1
  %3690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3689, i8* %3690, align 1, !tbaa !2446
  %3691 = xor i64 %3679, %3673
  %3692 = xor i64 %3691, %3680
  %3693 = lshr i64 %3692, 4
  %3694 = trunc i64 %3693 to i8
  %3695 = and i8 %3694, 1
  %3696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3695, i8* %3696, align 1, !tbaa !2450
  %3697 = icmp eq i64 %3680, 0
  %3698 = zext i1 %3697 to i8
  %3699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3698, i8* %3699, align 1, !tbaa !2447
  %3700 = lshr i64 %3680, 63
  %3701 = trunc i64 %3700 to i8
  %3702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3701, i8* %3702, align 1, !tbaa !2448
  %3703 = lshr i64 %3673, 63
  %3704 = lshr i64 %3679, 63
  %3705 = xor i64 %3704, %3703
  %3706 = xor i64 %3700, %3703
  %3707 = add nuw nsw i64 %3706, %3705
  %3708 = icmp eq i64 %3707, 2
  %3709 = zext i1 %3708 to i8
  %3710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3709, i8* %3710, align 1, !tbaa !2449
  %3711 = load i64, i64* %PC
  %3712 = add i64 %3711, 47
  %3713 = load i64, i64* %PC
  %3714 = add i64 %3713, 6
  %3715 = load i64, i64* %PC
  %3716 = add i64 %3715, 6
  store i64 %3716, i64* %PC
  %3717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3718 = load i8, i8* %3717, align 1, !tbaa !2447
  %3719 = icmp eq i8 %3718, 0
  %3720 = zext i1 %3719 to i8
  store i8 %3720, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %3721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3722 = select i1 %3719, i64 %3712, i64 %3714
  store i64 %3722, i64* %3721, align 8, !tbaa !2428
  %3723 = load i8, i8* %BRANCH_TAKEN
  %3724 = icmp eq i8 %3723, 1
  br i1 %3724, label %block_400f08, label %block_400edf

block_400e4f:                                     ; preds = %block_400e41
  %3725 = load i64, i64* %PC
  %3726 = add i64 %3725, 5
  store i64 %3726, i64* %PC
  store i64 1, i64* %RAX, align 8, !tbaa !2428
  %3727 = load i64, i64* %RBP
  %3728 = sub i64 %3727, 112
  %3729 = load i64, i64* %PC
  %3730 = add i64 %3729, 4
  store i64 %3730, i64* %PC
  %3731 = inttoptr i64 %3728 to i64*
  %3732 = load i64, i64* %3731
  store i64 %3732, i64* %RCX, align 8, !tbaa !2428
  %3733 = load i64, i64* %RCX
  %3734 = load i64, i64* %PC
  %3735 = add i64 %3734, 3
  store i64 %3735, i64* %PC
  %3736 = inttoptr i64 %3733 to i8*
  %3737 = load i8, i8* %3736
  %3738 = zext i8 %3737 to i64
  store i64 %3738, i64* %RDX, align 8, !tbaa !2428
  %3739 = load i32, i32* %EDX
  %3740 = zext i32 %3739 to i64
  %3741 = load i64, i64* %PC
  %3742 = add i64 %3741, 2
  store i64 %3742, i64* %PC
  %3743 = and i64 %3740, 4294967295
  store i64 %3743, i64* %RCX, align 8, !tbaa !2428
  %3744 = load i64, i64* %RBP
  %3745 = load i64, i64* %RCX
  %3746 = add i64 %3744, -10624
  %3747 = add i64 %3746, %3745
  %3748 = load i64, i64* %PC
  %3749 = add i64 %3748, 8
  store i64 %3749, i64* %PC
  %3750 = inttoptr i64 %3747 to i8*
  %3751 = load i8, i8* %3750
  %3752 = zext i8 %3751 to i64
  store i64 %3752, i64* %RDX, align 8, !tbaa !2428
  %3753 = load i64, i64* %RDX
  %3754 = load i64, i64* %PC
  %3755 = add i64 %3754, 3
  store i64 %3755, i64* %PC
  %3756 = trunc i64 %3753 to i32
  %3757 = sub i32 %3756, 1
  %3758 = zext i32 %3757 to i64
  store i64 %3758, i64* %RDX, align 8, !tbaa !2428
  %3759 = icmp ult i32 %3756, 1
  %3760 = zext i1 %3759 to i8
  %3761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3760, i8* %3761, align 1, !tbaa !2432
  %3762 = and i32 %3757, 255
  %3763 = call i32 @llvm.ctpop.i32(i32 %3762) #16
  %3764 = trunc i32 %3763 to i8
  %3765 = and i8 %3764, 1
  %3766 = xor i8 %3765, 1
  %3767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3766, i8* %3767, align 1, !tbaa !2446
  %3768 = xor i64 1, %3753
  %3769 = trunc i64 %3768 to i32
  %3770 = xor i32 %3769, %3757
  %3771 = lshr i32 %3770, 4
  %3772 = trunc i32 %3771 to i8
  %3773 = and i8 %3772, 1
  %3774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3773, i8* %3774, align 1, !tbaa !2450
  %3775 = icmp eq i32 %3757, 0
  %3776 = zext i1 %3775 to i8
  %3777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3776, i8* %3777, align 1, !tbaa !2447
  %3778 = lshr i32 %3757, 31
  %3779 = trunc i32 %3778 to i8
  %3780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3779, i8* %3780, align 1, !tbaa !2448
  %3781 = lshr i32 %3756, 31
  %3782 = xor i32 %3778, %3781
  %3783 = add nuw nsw i32 %3782, %3781
  %3784 = icmp eq i32 %3783, 2
  %3785 = zext i1 %3784 to i8
  %3786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3785, i8* %3786, align 1, !tbaa !2449
  %3787 = load i32, i32* %EDX
  %3788 = zext i32 %3787 to i64
  %3789 = load i64, i64* %PC
  %3790 = add i64 %3789, 2
  store i64 %3790, i64* %PC
  %3791 = and i64 %3788, 4294967295
  store i64 %3791, i64* %RCX, align 8, !tbaa !2428
  %3792 = load i64, i64* %RAX
  %3793 = load i8, i8* %CL
  %3794 = zext i8 %3793 to i64
  %3795 = load i64, i64* %PC
  %3796 = add i64 %3795, 2
  store i64 %3796, i64* %PC
  %3797 = trunc i64 %3794 to i5
  switch i5 %3797, label %3804 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit2
    i5 1, label %3798
  ]

; <label>:3798:                                   ; preds = %block_400e4f
  %3799 = trunc i64 %3792 to i32
  %3800 = shl i32 %3799, 1
  %3801 = icmp slt i32 %3799, 0
  %3802 = icmp slt i32 %3800, 0
  %3803 = xor i1 %3801, %3802
  br label %3813

; <label>:3804:                                   ; preds = %block_400e4f
  %3805 = and i64 %3794, 31
  %3806 = add nuw nsw i64 %3805, 4294967295
  %3807 = and i64 %3792, 4294967295
  %3808 = and i64 %3806, 4294967295
  %3809 = shl i64 %3807, %3808
  %3810 = trunc i64 %3809 to i32
  %3811 = icmp slt i32 %3810, 0
  %3812 = shl i32 %3810, 1
  br label %3813

; <label>:3813:                                   ; preds = %3804, %3798
  %3814 = phi i1 [ %3801, %3798 ], [ %3811, %3804 ]
  %3815 = phi i1 [ %3803, %3798 ], [ false, %3804 ]
  %3816 = phi i32 [ %3800, %3798 ], [ %3812, %3804 ]
  %3817 = zext i32 %3816 to i64
  store i64 %3817, i64* %RAX, align 8, !tbaa !2428
  %3818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3819 = zext i1 %3814 to i8
  store i8 %3819, i8* %3818, align 1, !tbaa !2451
  %3820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3821 = and i32 %3816, 254
  %3822 = call i32 @llvm.ctpop.i32(i32 %3821) #16
  %3823 = trunc i32 %3822 to i8
  %3824 = and i8 %3823, 1
  %3825 = xor i8 %3824, 1
  store i8 %3825, i8* %3820, align 1, !tbaa !2451
  %3826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3826, align 1, !tbaa !2451
  %3827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3828 = icmp eq i32 %3816, 0
  %3829 = zext i1 %3828 to i8
  store i8 %3829, i8* %3827, align 1, !tbaa !2451
  %3830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3831 = lshr i32 %3816, 31
  %3832 = trunc i32 %3831 to i8
  store i8 %3832, i8* %3830, align 1, !tbaa !2451
  %3833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3834 = zext i1 %3815 to i8
  store i8 %3834, i8* %3833, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit2

_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit2: ; preds = %block_400e4f, %3813
  %3835 = load i32, i32* %EAX
  %3836 = zext i32 %3835 to i64
  %3837 = load i64, i64* %PC
  %3838 = add i64 %3837, 3
  store i64 %3838, i64* %PC
  %3839 = shl i64 %3836, 32
  %3840 = ashr exact i64 %3839, 32
  store i64 %3840, i64* %RSI, align 8, !tbaa !2428
  %3841 = load i64, i64* %RBP
  %3842 = sub i64 %3841, 72
  %3843 = load i64, i64* %RSI
  %3844 = load i64, i64* %PC
  %3845 = add i64 %3844, 4
  store i64 %3845, i64* %PC
  %3846 = inttoptr i64 %3842 to i64*
  store i64 %3843, i64* %3846
  %3847 = load i64, i64* %RBP
  %3848 = sub i64 %3847, 48
  %3849 = load i64, i64* %PC
  %3850 = add i64 %3849, 8
  store i64 %3850, i64* %PC
  %3851 = inttoptr i64 %3848 to i64*
  store i64 0, i64* %3851
  br label %block_400e7b

block_40117e:                                     ; preds = %block_401158, %block_4011c3
  %MEMORY.18 = phi %struct.Memory* [ %MEMORY.22, %block_401158 ], [ %MEMORY.0, %block_4011c3 ]
  %3852 = load i64, i64* %RAX
  %3853 = load i32, i32* %EAX
  %3854 = zext i32 %3853 to i64
  %3855 = load i64, i64* %PC
  %3856 = add i64 %3855, 2
  store i64 %3856, i64* %PC
  %3857 = xor i64 %3854, %3852
  %3858 = trunc i64 %3857 to i32
  %3859 = and i64 %3857, 4294967295
  store i64 %3859, i64* %RAX, align 8, !tbaa !2428
  %3860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3860, align 1, !tbaa !2432
  %3861 = and i32 %3858, 255
  %3862 = call i32 @llvm.ctpop.i32(i32 %3861) #16
  %3863 = trunc i32 %3862 to i8
  %3864 = and i8 %3863, 1
  %3865 = xor i8 %3864, 1
  %3866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3865, i8* %3866, align 1, !tbaa !2446
  %3867 = icmp eq i32 %3858, 0
  %3868 = zext i1 %3867 to i8
  %3869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3868, i8* %3869, align 1, !tbaa !2447
  %3870 = lshr i32 %3858, 31
  %3871 = trunc i32 %3870 to i8
  %3872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3871, i8* %3872, align 1, !tbaa !2448
  %3873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3873, align 1, !tbaa !2449
  %3874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3874, align 1, !tbaa !2450
  %3875 = load i8, i8* %AL
  %3876 = zext i8 %3875 to i64
  %3877 = load i64, i64* %PC
  %3878 = add i64 %3877, 2
  store i64 %3878, i64* %PC
  store i8 %3875, i8* %CL, align 1, !tbaa !2451
  %3879 = load i64, i64* %RBP
  %3880 = sub i64 %3879, 56
  %3881 = load i64, i64* %PC
  %3882 = add i64 %3881, 5
  store i64 %3882, i64* %PC
  %3883 = inttoptr i64 %3880 to i64*
  %3884 = load i64, i64* %3883
  %3885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3885, align 1, !tbaa !2432
  %3886 = trunc i64 %3884 to i32
  %3887 = and i32 %3886, 255
  %3888 = call i32 @llvm.ctpop.i32(i32 %3887) #16
  %3889 = trunc i32 %3888 to i8
  %3890 = and i8 %3889, 1
  %3891 = xor i8 %3890, 1
  %3892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3891, i8* %3892, align 1, !tbaa !2446
  %3893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3893, align 1, !tbaa !2450
  %3894 = icmp eq i64 %3884, 0
  %3895 = zext i1 %3894 to i8
  %3896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3895, i8* %3896, align 1, !tbaa !2447
  %3897 = lshr i64 %3884, 63
  %3898 = trunc i64 %3897 to i8
  %3899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3898, i8* %3899, align 1, !tbaa !2448
  %3900 = lshr i64 %3884, 63
  %3901 = xor i64 %3897, %3900
  %3902 = add nuw nsw i64 %3901, %3900
  %3903 = icmp eq i64 %3902, 2
  %3904 = zext i1 %3903 to i8
  %3905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3904, i8* %3905, align 1, !tbaa !2449
  %3906 = load i64, i64* %RBP
  %3907 = sub i64 %3906, 13097
  %3908 = load i8, i8* %CL
  %3909 = zext i8 %3908 to i64
  %3910 = load i64, i64* %PC
  %3911 = add i64 %3910, 6
  store i64 %3911, i64* %PC
  %3912 = inttoptr i64 %3907 to i8*
  store i8 %3908, i8* %3912
  %3913 = load i64, i64* %PC
  %3914 = add i64 %3913, 35
  %3915 = load i64, i64* %PC
  %3916 = add i64 %3915, 6
  %3917 = load i64, i64* %PC
  %3918 = add i64 %3917, 6
  store i64 %3918, i64* %PC
  %3919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3920 = load i8, i8* %3919, align 1, !tbaa !2447
  store i8 %3920, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %3921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3922 = icmp ne i8 %3920, 0
  %3923 = select i1 %3922, i64 %3914, i64 %3916
  store i64 %3923, i64* %3921, align 8, !tbaa !2428
  %3924 = load i8, i8* %BRANCH_TAKEN
  %3925 = icmp eq i8 %3924, 1
  br i1 %3925, label %block_4011b0, label %block_401193

block_400c47:                                     ; preds = %block_400c36
  %3926 = sub i64 %4767, 10640
  %3927 = load i64, i64* %PC
  %3928 = add i64 %3927, 7
  store i64 %3928, i64* %PC
  %3929 = inttoptr i64 %3926 to i64*
  %3930 = load i64, i64* %3929
  store i64 %3930, i64* %RAX, align 8, !tbaa !2428
  %3931 = load i64, i64* %RBP
  %3932 = load i64, i64* %RAX
  %3933 = mul i64 %3932, 8
  %3934 = add i64 %3931, -4224
  %3935 = add i64 %3934, %3933
  %3936 = load i64, i64* %PC
  %3937 = add i64 %3936, 9
  store i64 %3937, i64* %PC
  %3938 = inttoptr i64 %3935 to i64*
  %3939 = load i64, i64* %3938
  %3940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3940, align 1, !tbaa !2432
  %3941 = trunc i64 %3939 to i32
  %3942 = and i32 %3941, 255
  %3943 = call i32 @llvm.ctpop.i32(i32 %3942) #16
  %3944 = trunc i32 %3943 to i8
  %3945 = and i8 %3944, 1
  %3946 = xor i8 %3945, 1
  %3947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3946, i8* %3947, align 1, !tbaa !2446
  %3948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3948, align 1, !tbaa !2450
  %3949 = icmp eq i64 %3939, 0
  %3950 = zext i1 %3949 to i8
  %3951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3950, i8* %3951, align 1, !tbaa !2447
  %3952 = lshr i64 %3939, 63
  %3953 = trunc i64 %3952 to i8
  %3954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3953, i8* %3954, align 1, !tbaa !2448
  %3955 = lshr i64 %3939, 63
  %3956 = xor i64 %3952, %3955
  %3957 = add nuw nsw i64 %3956, %3955
  %3958 = icmp eq i64 %3957, 2
  %3959 = zext i1 %3958 to i8
  %3960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3959, i8* %3960, align 1, !tbaa !2449
  %3961 = load i64, i64* %PC
  %3962 = add i64 %3961, 45
  %3963 = load i64, i64* %PC
  %3964 = add i64 %3963, 6
  %3965 = load i64, i64* %PC
  %3966 = add i64 %3965, 6
  store i64 %3966, i64* %PC
  %3967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3968 = load i8, i8* %3967, align 1, !tbaa !2447
  %3969 = icmp eq i8 %3968, 0
  %3970 = zext i1 %3969 to i8
  store i8 %3970, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %3971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3972 = select i1 %3969, i64 %3962, i64 %3964
  store i64 %3972, i64* %3971, align 8, !tbaa !2428
  %3973 = load i8, i8* %BRANCH_TAKEN
  %3974 = icmp eq i8 %3973, 1
  %3975 = load i64, i64* %RBP
  br i1 %3974, label %block_400c84, label %block_400c5d

block_400c84:                                     ; preds = %block_400c47
  %3976 = sub i64 %3975, 48
  %3977 = load i64, i64* %PC
  %3978 = add i64 %3977, 8
  store i64 %3978, i64* %PC
  %3979 = inttoptr i64 %3976 to i64*
  store i64 0, i64* %3979
  %3980 = load i64, i64* %RBP
  %3981 = sub i64 %3980, 56
  %3982 = load i64, i64* %PC
  %3983 = add i64 %3982, 8
  store i64 %3983, i64* %PC
  %3984 = inttoptr i64 %3981 to i64*
  store i64 1, i64* %3984
  %3985 = load i64, i64* %RBP
  %3986 = sub i64 %3985, 10648
  %3987 = load i64, i64* %PC
  %3988 = add i64 %3987, 11
  store i64 %3988, i64* %PC
  %3989 = inttoptr i64 %3986 to i64*
  store i64 0, i64* %3989
  %3990 = load i64, i64* %RBP
  %3991 = sub i64 %3990, 10640
  %3992 = load i64, i64* %PC
  %3993 = add i64 %3992, 7
  store i64 %3993, i64* %PC
  %3994 = inttoptr i64 %3991 to i64*
  %3995 = load i64, i64* %3994
  store i64 %3995, i64* %RAX, align 8, !tbaa !2428
  %3996 = load i64, i64* %RBP
  %3997 = load i64, i64* %RAX
  %3998 = mul i64 %3997, 4
  %3999 = add i64 %3996, -8320
  %4000 = add i64 %3999, %3998
  %4001 = load i64, i64* %PC
  %4002 = add i64 %4001, 7
  store i64 %4002, i64* %PC
  %4003 = inttoptr i64 %4000 to i32*
  %4004 = load i32, i32* %4003
  %4005 = zext i32 %4004 to i64
  store i64 %4005, i64* %RCX, align 8, !tbaa !2428
  %4006 = load i64, i64* %RBP
  %4007 = sub i64 %4006, 10668
  %4008 = load i32, i32* %ECX
  %4009 = zext i32 %4008 to i64
  %4010 = load i64, i64* %PC
  %4011 = add i64 %4010, 6
  store i64 %4011, i64* %PC
  %4012 = inttoptr i64 %4007 to i32*
  store i32 %4008, i32* %4012
  br label %block_400cb3

block_400e41:                                     ; preds = %block_400f8d, %block_400e39
  %MEMORY.19 = phi %struct.Memory* [ %MEMORY.21, %block_400e39 ], [ %MEMORY.16, %block_400f8d ]
  %4013 = load i64, i64* %RBP
  %4014 = sub i64 %4013, 56
  %4015 = load i64, i64* %PC
  %4016 = add i64 %4015, 4
  store i64 %4016, i64* %PC
  %4017 = inttoptr i64 %4014 to i64*
  %4018 = load i64, i64* %4017
  store i64 %4018, i64* %RAX, align 8, !tbaa !2428
  %4019 = load i64, i64* %RAX
  %4020 = load i64, i64* %RBP
  %4021 = sub i64 %4020, 40
  %4022 = load i64, i64* %PC
  %4023 = add i64 %4022, 4
  store i64 %4023, i64* %PC
  %4024 = inttoptr i64 %4021 to i64*
  %4025 = load i64, i64* %4024
  %4026 = sub i64 %4019, %4025
  %4027 = icmp ugt i64 %4025, %4019
  %4028 = zext i1 %4027 to i8
  %4029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4028, i8* %4029, align 1, !tbaa !2432
  %4030 = trunc i64 %4026 to i32
  %4031 = and i32 %4030, 255
  %4032 = call i32 @llvm.ctpop.i32(i32 %4031) #16
  %4033 = trunc i32 %4032 to i8
  %4034 = and i8 %4033, 1
  %4035 = xor i8 %4034, 1
  %4036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4035, i8* %4036, align 1, !tbaa !2446
  %4037 = xor i64 %4025, %4019
  %4038 = xor i64 %4037, %4026
  %4039 = lshr i64 %4038, 4
  %4040 = trunc i64 %4039 to i8
  %4041 = and i8 %4040, 1
  %4042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4041, i8* %4042, align 1, !tbaa !2450
  %4043 = icmp eq i64 %4026, 0
  %4044 = zext i1 %4043 to i8
  %4045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4044, i8* %4045, align 1, !tbaa !2447
  %4046 = lshr i64 %4026, 63
  %4047 = trunc i64 %4046 to i8
  %4048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4047, i8* %4048, align 1, !tbaa !2448
  %4049 = lshr i64 %4019, 63
  %4050 = lshr i64 %4025, 63
  %4051 = xor i64 %4050, %4049
  %4052 = xor i64 %4046, %4049
  %4053 = add nuw nsw i64 %4052, %4051
  %4054 = icmp eq i64 %4053, 2
  %4055 = zext i1 %4054 to i8
  %4056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4055, i8* %4056, align 1, !tbaa !2449
  %4057 = load i64, i64* %PC
  %4058 = add i64 %4057, 353
  %4059 = load i64, i64* %PC
  %4060 = add i64 %4059, 6
  %4061 = load i64, i64* %PC
  %4062 = add i64 %4061, 6
  store i64 %4062, i64* %PC
  %4063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4064 = load i8, i8* %4063, align 1, !tbaa !2432
  %4065 = icmp eq i8 %4064, 0
  %4066 = zext i1 %4065 to i8
  store i8 %4066, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %4067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4068 = select i1 %4065, i64 %4058, i64 %4060
  store i64 %4068, i64* %4067, align 8, !tbaa !2428
  %4069 = load i8, i8* %BRANCH_TAKEN
  %4070 = icmp eq i8 %4069, 1
  br i1 %4070, label %block_400faa, label %block_400e4f

block_400b18:                                     ; preds = %block_400b0d
  %4071 = load i64, i64* %PC
  %4072 = add i64 %4071, 5
  store i64 %4072, i64* %PC
  store i64 1, i64* %RCX, align 8, !tbaa !2428
  %4073 = load i64, i64* %RBP
  %4074 = sub i64 %4073, 6272
  %4075 = load i64, i64* %PC
  %4076 = add i64 %4075, 7
  store i64 %4076, i64* %PC
  store i64 %4074, i64* %RSI, align 8, !tbaa !2428
  %4077 = load i64, i64* %RBP
  %4078 = sub i64 %4077, 4224
  %4079 = load i64, i64* %PC
  %4080 = add i64 %4079, 7
  store i64 %4080, i64* %PC
  store i64 %4078, i64* %RDI, align 8, !tbaa !2428
  %4081 = load i64, i64* %RBP
  %4082 = sub i64 %4081, 64
  %4083 = load i64, i64* %PC
  %4084 = add i64 %4083, 4
  store i64 %4084, i64* %PC
  %4085 = inttoptr i64 %4082 to i64*
  %4086 = load i64, i64* %4085
  store i64 %4086, i64* %RAX, align 8, !tbaa !2428
  %4087 = load i64, i64* %RAX
  %4088 = load i64, i64* %PC
  %4089 = add i64 %4088, 4
  store i64 %4089, i64* %PC
  %4090 = add i64 -1, %4087
  store i64 %4090, i64* %RAX, align 8, !tbaa !2428
  %4091 = icmp ult i64 %4090, %4087
  %4092 = icmp ult i64 %4090, -1
  %4093 = or i1 %4091, %4092
  %4094 = zext i1 %4093 to i8
  %4095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4094, i8* %4095, align 1, !tbaa !2432
  %4096 = trunc i64 %4090 to i32
  %4097 = and i32 %4096, 255
  %4098 = call i32 @llvm.ctpop.i32(i32 %4097) #16
  %4099 = trunc i32 %4098 to i8
  %4100 = and i8 %4099, 1
  %4101 = xor i8 %4100, 1
  %4102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4101, i8* %4102, align 1, !tbaa !2446
  %4103 = xor i64 -1, %4087
  %4104 = xor i64 %4103, %4090
  %4105 = lshr i64 %4104, 4
  %4106 = trunc i64 %4105 to i8
  %4107 = and i8 %4106, 1
  %4108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4107, i8* %4108, align 1, !tbaa !2450
  %4109 = icmp eq i64 %4090, 0
  %4110 = zext i1 %4109 to i8
  %4111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4110, i8* %4111, align 1, !tbaa !2447
  %4112 = lshr i64 %4090, 63
  %4113 = trunc i64 %4112 to i8
  %4114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4113, i8* %4114, align 1, !tbaa !2448
  %4115 = lshr i64 %4087, 63
  %4116 = xor i64 %4112, %4115
  %4117 = xor i64 %4112, 1
  %4118 = add nuw nsw i64 %4116, %4117
  %4119 = icmp eq i64 %4118, 2
  %4120 = zext i1 %4119 to i8
  %4121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4120, i8* %4121, align 1, !tbaa !2449
  %4122 = load i64, i64* %RBP
  %4123 = sub i64 %4122, 64
  %4124 = load i64, i64* %RAX
  %4125 = load i64, i64* %PC
  %4126 = add i64 %4125, 4
  store i64 %4126, i64* %PC
  %4127 = inttoptr i64 %4123 to i64*
  store i64 %4124, i64* %4127
  %4128 = load i64, i64* %RBP
  %4129 = sub i64 %4128, 6272
  %4130 = load i64, i64* %PC
  %4131 = add i64 %4130, 7
  store i64 %4131, i64* %PC
  %4132 = inttoptr i64 %4129 to i64*
  %4133 = load i64, i64* %4132
  store i64 %4133, i64* %RAX, align 8, !tbaa !2428
  %4134 = load i64, i64* %RBP
  %4135 = sub i64 %4134, 10632
  %4136 = load i64, i64* %RAX
  %4137 = load i64, i64* %PC
  %4138 = add i64 %4137, 7
  store i64 %4138, i64* %PC
  %4139 = inttoptr i64 %4135 to i64*
  store i64 %4136, i64* %4139
  %4140 = load i64, i64* %RBP
  %4141 = sub i64 %4140, 64
  %4142 = load i64, i64* %PC
  %4143 = add i64 %4142, 4
  store i64 %4143, i64* %PC
  %4144 = inttoptr i64 %4141 to i64*
  %4145 = load i64, i64* %4144
  store i64 %4145, i64* %RAX, align 8, !tbaa !2428
  %4146 = load i64, i64* %RBP
  %4147 = load i64, i64* %RAX
  %4148 = mul i64 %4147, 8
  %4149 = add i64 %4146, -6272
  %4150 = add i64 %4149, %4148
  %4151 = load i64, i64* %PC
  %4152 = add i64 %4151, 8
  store i64 %4152, i64* %PC
  %4153 = inttoptr i64 %4150 to i64*
  %4154 = load i64, i64* %4153
  store i64 %4154, i64* %RAX, align 8, !tbaa !2428
  %4155 = load i64, i64* %RBP
  %4156 = sub i64 %4155, 6272
  %4157 = load i64, i64* %RAX
  %4158 = load i64, i64* %PC
  %4159 = add i64 %4158, 7
  store i64 %4159, i64* %PC
  %4160 = inttoptr i64 %4156 to i64*
  store i64 %4157, i64* %4160
  %4161 = load i64, i64* %RBP
  %4162 = sub i64 %4161, 64
  %4163 = load i64, i64* %PC
  %4164 = add i64 %4163, 4
  store i64 %4164, i64* %PC
  %4165 = inttoptr i64 %4162 to i64*
  %4166 = load i64, i64* %4165
  store i64 %4166, i64* %RAX, align 8, !tbaa !2428
  %4167 = load i32, i32* %EAX
  %4168 = zext i32 %4167 to i64
  %4169 = load i64, i64* %PC
  %4170 = add i64 %4169, 2
  store i64 %4170, i64* %PC
  %4171 = and i64 %4168, 4294967295
  store i64 %4171, i64* %RDX, align 8, !tbaa !2428
  %4172 = load i64, i64* %PC
  %4173 = add i64 %4172, 2130
  %4174 = load i64, i64* %PC
  %4175 = add i64 %4174, 5
  %4176 = load i64, i64* %PC
  %4177 = add i64 %4176, 5
  store i64 %4177, i64* %PC
  %4178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4179 = load i64, i64* %4178, align 8, !tbaa !2428
  %4180 = add i64 %4179, -8
  %4181 = inttoptr i64 %4180 to i64*
  store i64 %4175, i64* %4181
  store i64 %4180, i64* %4178, align 8, !tbaa !2428
  %4182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4173, i64* %4182, align 8, !tbaa !2428
  %4183 = load i64, i64* %PC
  %4184 = call %struct.Memory* @sub_4013b0_heap_adjust_renamed_(%struct.State* %0, i64 %4183, %struct.Memory* %MEMORY.7)
  %4185 = load i64, i64* %PC
  %4186 = add i64 %4185, 5
  store i64 %4186, i64* %PC
  store i64 1, i64* %RCX, align 8, !tbaa !2428
  %4187 = load i64, i64* %RBP
  %4188 = sub i64 %4187, 6272
  %4189 = load i64, i64* %PC
  %4190 = add i64 %4189, 7
  store i64 %4190, i64* %PC
  store i64 %4188, i64* %RSI, align 8, !tbaa !2428
  %4191 = load i64, i64* %RBP
  %4192 = sub i64 %4191, 4224
  %4193 = load i64, i64* %PC
  %4194 = add i64 %4193, 7
  store i64 %4194, i64* %PC
  store i64 %4192, i64* %RDI, align 8, !tbaa !2428
  %4195 = load i64, i64* %PC
  %4196 = add i64 %4195, 7
  store i64 %4196, i64* %PC
  store i64 -256, i64* %RAX, align 8, !tbaa !2428
  %4197 = load i64, i64* %RBP
  %4198 = sub i64 %4197, 6272
  %4199 = load i64, i64* %PC
  %4200 = add i64 %4199, 7
  store i64 %4200, i64* %PC
  %4201 = inttoptr i64 %4198 to i64*
  %4202 = load i64, i64* %4201
  store i64 %4202, i64* %R8, align 8, !tbaa !2428
  %4203 = load i64, i64* %RBP
  %4204 = load i64, i64* %R8
  %4205 = mul i64 %4204, 8
  %4206 = add i64 %4203, -4224
  %4207 = add i64 %4206, %4205
  %4208 = load i64, i64* %PC
  %4209 = add i64 %4208, 8
  store i64 %4209, i64* %PC
  %4210 = inttoptr i64 %4207 to i64*
  %4211 = load i64, i64* %4210
  store i64 %4211, i64* %R8, align 8, !tbaa !2428
  %4212 = load i64, i64* %RBP
  %4213 = sub i64 %4212, 10632
  %4214 = load i64, i64* %PC
  %4215 = add i64 %4214, 7
  store i64 %4215, i64* %PC
  %4216 = inttoptr i64 %4213 to i64*
  %4217 = load i64, i64* %4216
  store i64 %4217, i64* %R9, align 8, !tbaa !2428
  %4218 = load i64, i64* %R8
  %4219 = load i64, i64* %RBP
  %4220 = load i64, i64* %R9
  %4221 = mul i64 %4220, 8
  %4222 = add i64 %4219, -4224
  %4223 = add i64 %4222, %4221
  %4224 = load i64, i64* %PC
  %4225 = add i64 %4224, 8
  store i64 %4225, i64* %PC
  %4226 = inttoptr i64 %4223 to i64*
  %4227 = load i64, i64* %4226
  %4228 = add i64 %4227, %4218
  store i64 %4228, i64* %R8, align 8, !tbaa !2428
  %4229 = icmp ult i64 %4228, %4218
  %4230 = icmp ult i64 %4228, %4227
  %4231 = or i1 %4229, %4230
  %4232 = zext i1 %4231 to i8
  %4233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4232, i8* %4233, align 1, !tbaa !2432
  %4234 = trunc i64 %4228 to i32
  %4235 = and i32 %4234, 255
  %4236 = call i32 @llvm.ctpop.i32(i32 %4235) #16
  %4237 = trunc i32 %4236 to i8
  %4238 = and i8 %4237, 1
  %4239 = xor i8 %4238, 1
  %4240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4239, i8* %4240, align 1, !tbaa !2446
  %4241 = xor i64 %4227, %4218
  %4242 = xor i64 %4241, %4228
  %4243 = lshr i64 %4242, 4
  %4244 = trunc i64 %4243 to i8
  %4245 = and i8 %4244, 1
  %4246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4245, i8* %4246, align 1, !tbaa !2450
  %4247 = icmp eq i64 %4228, 0
  %4248 = zext i1 %4247 to i8
  %4249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4248, i8* %4249, align 1, !tbaa !2447
  %4250 = lshr i64 %4228, 63
  %4251 = trunc i64 %4250 to i8
  %4252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4251, i8* %4252, align 1, !tbaa !2448
  %4253 = lshr i64 %4218, 63
  %4254 = lshr i64 %4227, 63
  %4255 = xor i64 %4250, %4253
  %4256 = xor i64 %4250, %4254
  %4257 = add nuw nsw i64 %4255, %4256
  %4258 = icmp eq i64 %4257, 2
  %4259 = zext i1 %4258 to i8
  %4260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4259, i8* %4260, align 1, !tbaa !2449
  %4261 = load i64, i64* %RBP
  %4262 = sub i64 %4261, 64
  %4263 = load i64, i64* %PC
  %4264 = add i64 %4263, 4
  store i64 %4264, i64* %PC
  %4265 = inttoptr i64 %4262 to i64*
  %4266 = load i64, i64* %4265
  store i64 %4266, i64* %R9, align 8, !tbaa !2428
  %4267 = load i64, i64* %R9
  %4268 = load i64, i64* %PC
  %4269 = add i64 %4268, 7
  store i64 %4269, i64* %PC
  %4270 = add i64 256, %4267
  store i64 %4270, i64* %R9, align 8, !tbaa !2428
  %4271 = icmp ult i64 %4270, %4267
  %4272 = icmp ult i64 %4270, 256
  %4273 = or i1 %4271, %4272
  %4274 = zext i1 %4273 to i8
  %4275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4274, i8* %4275, align 1, !tbaa !2432
  %4276 = trunc i64 %4270 to i32
  %4277 = and i32 %4276, 255
  %4278 = call i32 @llvm.ctpop.i32(i32 %4277) #16
  %4279 = trunc i32 %4278 to i8
  %4280 = and i8 %4279, 1
  %4281 = xor i8 %4280, 1
  %4282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4281, i8* %4282, align 1, !tbaa !2446
  %4283 = xor i64 256, %4267
  %4284 = xor i64 %4283, %4270
  %4285 = lshr i64 %4284, 4
  %4286 = trunc i64 %4285 to i8
  %4287 = and i8 %4286, 1
  %4288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4287, i8* %4288, align 1, !tbaa !2450
  %4289 = icmp eq i64 %4270, 0
  %4290 = zext i1 %4289 to i8
  %4291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4290, i8* %4291, align 1, !tbaa !2447
  %4292 = lshr i64 %4270, 63
  %4293 = trunc i64 %4292 to i8
  %4294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4293, i8* %4294, align 1, !tbaa !2448
  %4295 = lshr i64 %4267, 63
  %4296 = xor i64 %4292, %4295
  %4297 = add nuw nsw i64 %4296, %4292
  %4298 = icmp eq i64 %4297, 2
  %4299 = zext i1 %4298 to i8
  %4300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4299, i8* %4300, align 1, !tbaa !2449
  %4301 = load i64, i64* %RBP
  %4302 = load i64, i64* %R9
  %4303 = mul i64 %4302, 8
  %4304 = add i64 %4301, -4224
  %4305 = add i64 %4304, %4303
  %4306 = load i64, i64* %R8
  %4307 = load i64, i64* %PC
  %4308 = add i64 %4307, 8
  store i64 %4308, i64* %PC
  %4309 = inttoptr i64 %4305 to i64*
  store i64 %4306, i64* %4309
  %4310 = load i64, i64* %RBP
  %4311 = sub i64 %4310, 64
  %4312 = load i64, i64* %PC
  %4313 = add i64 %4312, 4
  store i64 %4313, i64* %PC
  %4314 = inttoptr i64 %4311 to i64*
  %4315 = load i64, i64* %4314
  store i64 %4315, i64* %R8, align 8, !tbaa !2428
  %4316 = load i64, i64* %R8
  %4317 = load i64, i64* %PC
  %4318 = add i64 %4317, 7
  store i64 %4318, i64* %PC
  %4319 = add i64 256, %4316
  store i64 %4319, i64* %R8, align 8, !tbaa !2428
  %4320 = icmp ult i64 %4319, %4316
  %4321 = icmp ult i64 %4319, 256
  %4322 = or i1 %4320, %4321
  %4323 = zext i1 %4322 to i8
  %4324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4323, i8* %4324, align 1, !tbaa !2432
  %4325 = trunc i64 %4319 to i32
  %4326 = and i32 %4325, 255
  %4327 = call i32 @llvm.ctpop.i32(i32 %4326) #16
  %4328 = trunc i32 %4327 to i8
  %4329 = and i8 %4328, 1
  %4330 = xor i8 %4329, 1
  %4331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4330, i8* %4331, align 1, !tbaa !2446
  %4332 = xor i64 256, %4316
  %4333 = xor i64 %4332, %4319
  %4334 = lshr i64 %4333, 4
  %4335 = trunc i64 %4334 to i8
  %4336 = and i8 %4335, 1
  %4337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4336, i8* %4337, align 1, !tbaa !2450
  %4338 = icmp eq i64 %4319, 0
  %4339 = zext i1 %4338 to i8
  %4340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4339, i8* %4340, align 1, !tbaa !2447
  %4341 = lshr i64 %4319, 63
  %4342 = trunc i64 %4341 to i8
  %4343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4342, i8* %4343, align 1, !tbaa !2448
  %4344 = lshr i64 %4316, 63
  %4345 = xor i64 %4341, %4344
  %4346 = add nuw nsw i64 %4345, %4341
  %4347 = icmp eq i64 %4346, 2
  %4348 = zext i1 %4347 to i8
  %4349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4348, i8* %4349, align 1, !tbaa !2449
  %4350 = load i32, i32* %R8D
  %4351 = zext i32 %4350 to i64
  %4352 = load i64, i64* %PC
  %4353 = add i64 %4352, 3
  store i64 %4353, i64* %PC
  %4354 = and i64 %4351, 4294967295
  store i64 %4354, i64* %RDX, align 8, !tbaa !2428
  %4355 = load i64, i64* %RBP
  %4356 = sub i64 %4355, 10632
  %4357 = load i64, i64* %PC
  %4358 = add i64 %4357, 7
  store i64 %4358, i64* %PC
  %4359 = inttoptr i64 %4356 to i64*
  %4360 = load i64, i64* %4359
  store i64 %4360, i64* %R8, align 8, !tbaa !2428
  %4361 = load i64, i64* %RBP
  %4362 = load i64, i64* %R8
  %4363 = mul i64 %4362, 4
  %4364 = add i64 %4361, -8320
  %4365 = add i64 %4364, %4363
  %4366 = load i32, i32* %EDX
  %4367 = zext i32 %4366 to i64
  %4368 = load i64, i64* %PC
  %4369 = add i64 %4368, 8
  store i64 %4369, i64* %PC
  %4370 = inttoptr i64 %4365 to i32*
  store i32 %4366, i32* %4370
  %4371 = load i64, i64* %RAX
  %4372 = load i64, i64* %RBP
  %4373 = sub i64 %4372, 64
  %4374 = load i64, i64* %PC
  %4375 = add i64 %4374, 4
  store i64 %4375, i64* %PC
  %4376 = inttoptr i64 %4373 to i64*
  %4377 = load i64, i64* %4376
  %4378 = sub i64 %4371, %4377
  store i64 %4378, i64* %RAX, align 8, !tbaa !2428
  %4379 = icmp ugt i64 %4377, %4371
  %4380 = zext i1 %4379 to i8
  %4381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4380, i8* %4381, align 1, !tbaa !2432
  %4382 = trunc i64 %4378 to i32
  %4383 = and i32 %4382, 255
  %4384 = call i32 @llvm.ctpop.i32(i32 %4383) #16
  %4385 = trunc i32 %4384 to i8
  %4386 = and i8 %4385, 1
  %4387 = xor i8 %4386, 1
  %4388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4387, i8* %4388, align 1, !tbaa !2446
  %4389 = xor i64 %4377, %4371
  %4390 = xor i64 %4389, %4378
  %4391 = lshr i64 %4390, 4
  %4392 = trunc i64 %4391 to i8
  %4393 = and i8 %4392, 1
  %4394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4393, i8* %4394, align 1, !tbaa !2450
  %4395 = icmp eq i64 %4378, 0
  %4396 = zext i1 %4395 to i8
  %4397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4396, i8* %4397, align 1, !tbaa !2447
  %4398 = lshr i64 %4378, 63
  %4399 = trunc i64 %4398 to i8
  %4400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4399, i8* %4400, align 1, !tbaa !2448
  %4401 = lshr i64 %4371, 63
  %4402 = lshr i64 %4377, 63
  %4403 = xor i64 %4402, %4401
  %4404 = xor i64 %4398, %4401
  %4405 = add nuw nsw i64 %4404, %4403
  %4406 = icmp eq i64 %4405, 2
  %4407 = zext i1 %4406 to i8
  %4408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4407, i8* %4408, align 1, !tbaa !2449
  %4409 = load i32, i32* %EAX
  %4410 = zext i32 %4409 to i64
  %4411 = load i64, i64* %PC
  %4412 = add i64 %4411, 2
  store i64 %4412, i64* %PC
  %4413 = and i64 %4410, 4294967295
  store i64 %4413, i64* %RDX, align 8, !tbaa !2428
  %4414 = load i64, i64* %RBP
  %4415 = sub i64 %4414, 6272
  %4416 = load i64, i64* %PC
  %4417 = add i64 %4416, 7
  store i64 %4417, i64* %PC
  %4418 = inttoptr i64 %4415 to i64*
  %4419 = load i64, i64* %4418
  store i64 %4419, i64* %RAX, align 8, !tbaa !2428
  %4420 = load i64, i64* %RBP
  %4421 = load i64, i64* %RAX
  %4422 = mul i64 %4421, 4
  %4423 = add i64 %4420, -8320
  %4424 = add i64 %4423, %4422
  %4425 = load i32, i32* %EDX
  %4426 = zext i32 %4425 to i64
  %4427 = load i64, i64* %PC
  %4428 = add i64 %4427, 7
  store i64 %4428, i64* %PC
  %4429 = inttoptr i64 %4424 to i32*
  store i32 %4425, i32* %4429
  %4430 = load i64, i64* %RBP
  %4431 = sub i64 %4430, 64
  %4432 = load i64, i64* %PC
  %4433 = add i64 %4432, 4
  store i64 %4433, i64* %PC
  %4434 = inttoptr i64 %4431 to i64*
  %4435 = load i64, i64* %4434
  store i64 %4435, i64* %RAX, align 8, !tbaa !2428
  %4436 = load i64, i64* %RAX
  %4437 = load i64, i64* %PC
  %4438 = add i64 %4437, 6
  store i64 %4438, i64* %PC
  %4439 = add i64 256, %4436
  store i64 %4439, i64* %RAX, align 8, !tbaa !2428
  %4440 = icmp ult i64 %4439, %4436
  %4441 = icmp ult i64 %4439, 256
  %4442 = or i1 %4440, %4441
  %4443 = zext i1 %4442 to i8
  %4444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4443, i8* %4444, align 1, !tbaa !2432
  %4445 = trunc i64 %4439 to i32
  %4446 = and i32 %4445, 255
  %4447 = call i32 @llvm.ctpop.i32(i32 %4446) #16
  %4448 = trunc i32 %4447 to i8
  %4449 = and i8 %4448, 1
  %4450 = xor i8 %4449, 1
  %4451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4450, i8* %4451, align 1, !tbaa !2446
  %4452 = xor i64 256, %4436
  %4453 = xor i64 %4452, %4439
  %4454 = lshr i64 %4453, 4
  %4455 = trunc i64 %4454 to i8
  %4456 = and i8 %4455, 1
  %4457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4456, i8* %4457, align 1, !tbaa !2450
  %4458 = icmp eq i64 %4439, 0
  %4459 = zext i1 %4458 to i8
  %4460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4459, i8* %4460, align 1, !tbaa !2447
  %4461 = lshr i64 %4439, 63
  %4462 = trunc i64 %4461 to i8
  %4463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4462, i8* %4463, align 1, !tbaa !2448
  %4464 = lshr i64 %4436, 63
  %4465 = xor i64 %4461, %4464
  %4466 = add nuw nsw i64 %4465, %4461
  %4467 = icmp eq i64 %4466, 2
  %4468 = zext i1 %4467 to i8
  %4469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4468, i8* %4469, align 1, !tbaa !2449
  %4470 = load i64, i64* %RBP
  %4471 = sub i64 %4470, 6272
  %4472 = load i64, i64* %RAX
  %4473 = load i64, i64* %PC
  %4474 = add i64 %4473, 7
  store i64 %4474, i64* %PC
  %4475 = inttoptr i64 %4471 to i64*
  store i64 %4472, i64* %4475
  %4476 = load i64, i64* %RBP
  %4477 = sub i64 %4476, 64
  %4478 = load i64, i64* %PC
  %4479 = add i64 %4478, 4
  store i64 %4479, i64* %PC
  %4480 = inttoptr i64 %4477 to i64*
  %4481 = load i64, i64* %4480
  store i64 %4481, i64* %RAX, align 8, !tbaa !2428
  %4482 = load i32, i32* %EAX
  %4483 = zext i32 %4482 to i64
  %4484 = load i64, i64* %PC
  %4485 = add i64 %4484, 2
  store i64 %4485, i64* %PC
  %4486 = and i64 %4483, 4294967295
  store i64 %4486, i64* %RDX, align 8, !tbaa !2428
  %4487 = load i64, i64* %PC
  %4488 = add i64 %4487, 1978
  %4489 = load i64, i64* %PC
  %4490 = add i64 %4489, 5
  %4491 = load i64, i64* %PC
  %4492 = add i64 %4491, 5
  store i64 %4492, i64* %PC
  %4493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4494 = load i64, i64* %4493, align 8, !tbaa !2428
  %4495 = add i64 %4494, -8
  %4496 = inttoptr i64 %4495 to i64*
  store i64 %4490, i64* %4496
  store i64 %4495, i64* %4493, align 8, !tbaa !2428
  %4497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4488, i64* %4497, align 8, !tbaa !2428
  %4498 = load i64, i64* %PC
  %4499 = call %struct.Memory* @sub_4013b0_heap_adjust_renamed_(%struct.State* %0, i64 %4498, %struct.Memory* %4184)
  %4500 = load i64, i64* %PC
  %4501 = sub i64 %4500, 238
  %4502 = load i64, i64* %PC
  %4503 = add i64 %4502, 5
  store i64 %4503, i64* %PC
  %4504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4501, i64* %4504, align 8, !tbaa !2428
  br label %block_400b0d

block_400abf:                                     ; preds = %block_400ab7, %block_400aca
  %MEMORY.20 = phi %struct.Memory* [ %MEMORY.27, %block_400ab7 ], [ %2356, %block_400aca ]
  %4505 = load i64, i64* %RBP
  %4506 = sub i64 %4505, 48
  %4507 = load i64, i64* %PC
  %4508 = add i64 %4507, 5
  store i64 %4508, i64* %PC
  %4509 = inttoptr i64 %4506 to i64*
  %4510 = load i64, i64* %4509
  %4511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4511, align 1, !tbaa !2432
  %4512 = trunc i64 %4510 to i32
  %4513 = and i32 %4512, 255
  %4514 = call i32 @llvm.ctpop.i32(i32 %4513) #16
  %4515 = trunc i32 %4514 to i8
  %4516 = and i8 %4515, 1
  %4517 = xor i8 %4516, 1
  %4518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4517, i8* %4518, align 1, !tbaa !2446
  %4519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4519, align 1, !tbaa !2450
  %4520 = icmp eq i64 %4510, 0
  %4521 = zext i1 %4520 to i8
  %4522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4521, i8* %4522, align 1, !tbaa !2447
  %4523 = lshr i64 %4510, 63
  %4524 = trunc i64 %4523 to i8
  %4525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4524, i8* %4525, align 1, !tbaa !2448
  %4526 = lshr i64 %4510, 63
  %4527 = xor i64 %4523, %4526
  %4528 = add nuw nsw i64 %4527, %4526
  %4529 = icmp eq i64 %4528, 2
  %4530 = zext i1 %4529 to i8
  %4531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4530, i8* %4531, align 1, !tbaa !2449
  %4532 = load i64, i64* %PC
  %4533 = add i64 %4532, 68
  %4534 = load i64, i64* %PC
  %4535 = add i64 %4534, 6
  %4536 = load i64, i64* %PC
  %4537 = add i64 %4536, 6
  store i64 %4537, i64* %PC
  %4538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4539 = load i8, i8* %4538, align 1, !tbaa !2432
  %4540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4541 = load i8, i8* %4540, align 1, !tbaa !2447
  %4542 = or i8 %4541, %4539
  %4543 = icmp ne i8 %4542, 0
  %4544 = zext i1 %4543 to i8
  store i8 %4544, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %4545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4546 = select i1 %4543, i64 %4533, i64 %4535
  store i64 %4546, i64* %4545, align 8, !tbaa !2428
  %4547 = load i8, i8* %BRANCH_TAKEN
  %4548 = icmp eq i8 %4547, 1
  br i1 %4548, label %block_400b08, label %block_400aca

block_400e39:                                     ; preds = %block_400dde
  %4549 = load i64, i64* %RBP
  %4550 = sub i64 %4549, 56
  %4551 = load i64, i64* %PC
  %4552 = add i64 %4551, 8
  store i64 %4552, i64* %PC
  %4553 = inttoptr i64 %4550 to i64*
  store i64 0, i64* %4553
  br label %block_400e41

block_401142:                                     ; preds = %block_401029
  %4554 = sub i64 %5234, 48
  %4555 = load i64, i64* %PC
  %4556 = add i64 %4555, 8
  store i64 %4556, i64* %PC
  %4557 = inttoptr i64 %4554 to i64*
  store i64 1, i64* %4557
  br label %block_40114a

block_401037:                                     ; preds = %block_401029
  %4558 = sub i64 %5234, 56
  %4559 = load i64, i64* %PC
  %4560 = add i64 %4559, 4
  store i64 %4560, i64* %PC
  %4561 = inttoptr i64 %4558 to i64*
  %4562 = load i64, i64* %4561
  store i64 %4562, i64* %RAX, align 8, !tbaa !2428
  %4563 = load i8, i8* %AL
  %4564 = zext i8 %4563 to i64
  %4565 = load i64, i64* %PC
  %4566 = add i64 %4565, 2
  store i64 %4566, i64* %PC
  store i8 %4563, i8* %CL, align 1, !tbaa !2451
  %4567 = load i64, i64* %RBP
  %4568 = sub i64 %4567, 13000
  %4569 = load i64, i64* %PC
  %4570 = add i64 %4569, 7
  store i64 %4570, i64* %PC
  %4571 = inttoptr i64 %4568 to i64*
  %4572 = load i64, i64* %4571
  store i64 %4572, i64* %RAX, align 8, !tbaa !2428
  %4573 = load i64, i64* %RAX
  %4574 = load i8, i8* %CL
  %4575 = zext i8 %4574 to i64
  %4576 = load i64, i64* %PC
  %4577 = add i64 %4576, 2
  store i64 %4577, i64* %PC
  %4578 = inttoptr i64 %4573 to i8*
  store i8 %4574, i8* %4578
  %4579 = load i64, i64* %RBP
  %4580 = sub i64 %4579, 13000
  %4581 = load i64, i64* %PC
  %4582 = add i64 %4581, 7
  store i64 %4582, i64* %PC
  %4583 = inttoptr i64 %4580 to i64*
  %4584 = load i64, i64* %4583
  store i64 %4584, i64* %RAX, align 8, !tbaa !2428
  %4585 = load i64, i64* %RAX
  %4586 = load i64, i64* %PC
  %4587 = add i64 %4586, 4
  store i64 %4587, i64* %PC
  %4588 = add i64 1, %4585
  store i64 %4588, i64* %RAX, align 8, !tbaa !2428
  %4589 = icmp ult i64 %4588, %4585
  %4590 = icmp ult i64 %4588, 1
  %4591 = or i1 %4589, %4590
  %4592 = zext i1 %4591 to i8
  %4593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4592, i8* %4593, align 1, !tbaa !2432
  %4594 = trunc i64 %4588 to i32
  %4595 = and i32 %4594, 255
  %4596 = call i32 @llvm.ctpop.i32(i32 %4595) #16
  %4597 = trunc i32 %4596 to i8
  %4598 = and i8 %4597, 1
  %4599 = xor i8 %4598, 1
  %4600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4599, i8* %4600, align 1, !tbaa !2446
  %4601 = xor i64 1, %4585
  %4602 = xor i64 %4601, %4588
  %4603 = lshr i64 %4602, 4
  %4604 = trunc i64 %4603 to i8
  %4605 = and i8 %4604, 1
  %4606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4605, i8* %4606, align 1, !tbaa !2450
  %4607 = icmp eq i64 %4588, 0
  %4608 = zext i1 %4607 to i8
  %4609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4608, i8* %4609, align 1, !tbaa !2447
  %4610 = lshr i64 %4588, 63
  %4611 = trunc i64 %4610 to i8
  %4612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4611, i8* %4612, align 1, !tbaa !2448
  %4613 = lshr i64 %4585, 63
  %4614 = xor i64 %4610, %4613
  %4615 = add nuw nsw i64 %4614, %4610
  %4616 = icmp eq i64 %4615, 2
  %4617 = zext i1 %4616 to i8
  %4618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4617, i8* %4618, align 1, !tbaa !2449
  %4619 = load i64, i64* %RBP
  %4620 = sub i64 %4619, 13000
  %4621 = load i64, i64* %RAX
  %4622 = load i64, i64* %PC
  %4623 = add i64 %4622, 7
  store i64 %4623, i64* %PC
  %4624 = inttoptr i64 %4620 to i64*
  store i64 %4621, i64* %4624
  %4625 = load i64, i64* %RBP
  %4626 = sub i64 %4625, 56
  %4627 = load i64, i64* %PC
  %4628 = add i64 %4627, 4
  store i64 %4628, i64* %PC
  %4629 = inttoptr i64 %4626 to i64*
  %4630 = load i64, i64* %4629
  store i64 %4630, i64* %RAX, align 8, !tbaa !2428
  %4631 = load i64, i64* %RBP
  %4632 = load i64, i64* %RAX
  %4633 = mul i64 %4632, 8
  %4634 = add i64 %4631, -10368
  %4635 = add i64 %4634, %4633
  %4636 = load i64, i64* %PC
  %4637 = add i64 %4636, 8
  store i64 %4637, i64* %PC
  %4638 = inttoptr i64 %4635 to i64*
  %4639 = load i64, i64* %4638
  store i64 %4639, i64* %RAX, align 8, !tbaa !2428
  %4640 = load i64, i64* %RBP
  %4641 = sub i64 %4640, 56
  %4642 = load i64, i64* %PC
  %4643 = add i64 %4642, 4
  store i64 %4643, i64* %PC
  %4644 = inttoptr i64 %4641 to i64*
  %4645 = load i64, i64* %4644
  store i64 %4645, i64* %RDX, align 8, !tbaa !2428
  %4646 = load i64, i64* %RBP
  %4647 = load i64, i64* %RDX
  %4648 = add i64 %4646, -10624
  %4649 = add i64 %4648, %4647
  %4650 = load i64, i64* %PC
  %4651 = add i64 %4650, 8
  store i64 %4651, i64* %PC
  %4652 = inttoptr i64 %4649 to i8*
  %4653 = load i8, i8* %4652
  %4654 = zext i8 %4653 to i64
  store i64 %4654, i64* %RSI, align 8, !tbaa !2428
  %4655 = load i32, i32* %ESI
  %4656 = zext i32 %4655 to i64
  %4657 = load i64, i64* %PC
  %4658 = add i64 %4657, 2
  store i64 %4658, i64* %PC
  %4659 = and i64 %4656, 4294967295
  store i64 %4659, i64* %RDX, align 8, !tbaa !2428
  %4660 = load i64, i64* %RAX
  %4661 = load i64, i64* %RDX
  %4662 = load i64, i64* %PC
  %4663 = add i64 %4662, 3
  store i64 %4663, i64* %PC
  %4664 = or i64 %4661, %4660
  store i64 %4664, i64* %RAX, align 8, !tbaa !2428
  %4665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4665, align 1, !tbaa !2432
  %4666 = trunc i64 %4664 to i32
  %4667 = and i32 %4666, 255
  %4668 = call i32 @llvm.ctpop.i32(i32 %4667) #16
  %4669 = trunc i32 %4668 to i8
  %4670 = and i8 %4669, 1
  %4671 = xor i8 %4670, 1
  %4672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4671, i8* %4672, align 1, !tbaa !2446
  %4673 = icmp eq i64 %4664, 0
  %4674 = zext i1 %4673 to i8
  %4675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4674, i8* %4675, align 1, !tbaa !2447
  %4676 = lshr i64 %4664, 63
  %4677 = trunc i64 %4676 to i8
  %4678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4677, i8* %4678, align 1, !tbaa !2448
  %4679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4679, align 1, !tbaa !2449
  %4680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4680, align 1, !tbaa !2450
  %4681 = load i64, i64* %RAX
  %4682 = load i64, i64* %PC
  %4683 = add i64 %4682, 4
  store i64 %4683, i64* %PC
  %4684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4684, align 1, !tbaa !2432
  %4685 = trunc i64 %4681 to i32
  %4686 = and i32 %4685, 255
  %4687 = call i32 @llvm.ctpop.i32(i32 %4686) #16
  %4688 = trunc i32 %4687 to i8
  %4689 = and i8 %4688, 1
  %4690 = xor i8 %4689, 1
  %4691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4690, i8* %4691, align 1, !tbaa !2446
  %4692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4692, align 1, !tbaa !2450
  %4693 = icmp eq i64 %4681, 0
  %4694 = zext i1 %4693 to i8
  %4695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4694, i8* %4695, align 1, !tbaa !2447
  %4696 = lshr i64 %4681, 63
  %4697 = trunc i64 %4696 to i8
  %4698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4697, i8* %4698, align 1, !tbaa !2448
  %4699 = lshr i64 %4681, 63
  %4700 = xor i64 %4696, %4699
  %4701 = add nuw nsw i64 %4700, %4699
  %4702 = icmp eq i64 %4701, 2
  %4703 = zext i1 %4702 to i8
  %4704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4703, i8* %4704, align 1, !tbaa !2449
  %4705 = load i64, i64* %PC
  %4706 = add i64 %4705, 179
  %4707 = load i64, i64* %PC
  %4708 = add i64 %4707, 6
  %4709 = load i64, i64* %PC
  %4710 = add i64 %4709, 6
  store i64 %4710, i64* %PC
  %4711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4712 = load i8, i8* %4711, align 1, !tbaa !2447
  store i8 %4712, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %4713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4714 = icmp ne i8 %4712, 0
  %4715 = select i1 %4714, i64 %4706, i64 %4708
  store i64 %4715, i64* %4713, align 8, !tbaa !2428
  %4716 = load i8, i8* %BRANCH_TAKEN
  %4717 = icmp eq i8 %4716, 1
  br i1 %4717, label %block_40112c, label %block_40107f

block_400c36:                                     ; preds = %block_400c00, %block_400d8b
  %MEMORY.21 = phi %struct.Memory* [ %MEMORY.7, %block_400c00 ], [ %MEMORY.4, %block_400d8b ]
  %4718 = load i64, i64* %RBP
  %4719 = sub i64 %4718, 10640
  %4720 = load i64, i64* %PC
  %4721 = add i64 %4720, 11
  store i64 %4721, i64* %PC
  %4722 = inttoptr i64 %4719 to i64*
  %4723 = load i64, i64* %4722
  %4724 = sub i64 %4723, 256
  %4725 = icmp ult i64 %4723, 256
  %4726 = zext i1 %4725 to i8
  %4727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4726, i8* %4727, align 1, !tbaa !2432
  %4728 = trunc i64 %4724 to i32
  %4729 = and i32 %4728, 255
  %4730 = call i32 @llvm.ctpop.i32(i32 %4729) #16
  %4731 = trunc i32 %4730 to i8
  %4732 = and i8 %4731, 1
  %4733 = xor i8 %4732, 1
  %4734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4733, i8* %4734, align 1, !tbaa !2446
  %4735 = xor i64 %4723, 256
  %4736 = xor i64 %4735, %4724
  %4737 = lshr i64 %4736, 4
  %4738 = trunc i64 %4737 to i8
  %4739 = and i8 %4738, 1
  %4740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4739, i8* %4740, align 1, !tbaa !2450
  %4741 = icmp eq i64 %4724, 0
  %4742 = zext i1 %4741 to i8
  %4743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4742, i8* %4743, align 1, !tbaa !2447
  %4744 = lshr i64 %4724, 63
  %4745 = trunc i64 %4744 to i8
  %4746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4745, i8* %4746, align 1, !tbaa !2448
  %4747 = lshr i64 %4723, 63
  %4748 = xor i64 %4744, %4747
  %4749 = add nuw nsw i64 %4748, %4747
  %4750 = icmp eq i64 %4749, 2
  %4751 = zext i1 %4750 to i8
  %4752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4751, i8* %4752, align 1, !tbaa !2449
  %4753 = load i64, i64* %PC
  %4754 = add i64 %4753, 358
  %4755 = load i64, i64* %PC
  %4756 = add i64 %4755, 6
  %4757 = load i64, i64* %PC
  %4758 = add i64 %4757, 6
  store i64 %4758, i64* %PC
  %4759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4760 = load i8, i8* %4759, align 1, !tbaa !2432
  %4761 = icmp eq i8 %4760, 0
  %4762 = zext i1 %4761 to i8
  store i8 %4762, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %4763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4764 = select i1 %4761, i64 %4754, i64 %4756
  store i64 %4764, i64* %4763, align 8, !tbaa !2428
  %4765 = load i8, i8* %BRANCH_TAKEN
  %4766 = icmp eq i8 %4765, 1
  %4767 = load i64, i64* %RBP
  br i1 %4766, label %block_400da7, label %block_400c47

block_400f8d:                                     ; preds = %block_400e7b
  %4768 = sub i64 %3348, 112
  %4769 = load i64, i64* %PC
  %4770 = add i64 %4769, 4
  store i64 %4770, i64* %PC
  %4771 = inttoptr i64 %4768 to i64*
  %4772 = load i64, i64* %4771
  store i64 %4772, i64* %RAX, align 8, !tbaa !2428
  %4773 = load i64, i64* %RAX
  %4774 = load i64, i64* %PC
  %4775 = add i64 %4774, 4
  store i64 %4775, i64* %PC
  %4776 = add i64 1, %4773
  store i64 %4776, i64* %RAX, align 8, !tbaa !2428
  %4777 = icmp ult i64 %4776, %4773
  %4778 = icmp ult i64 %4776, 1
  %4779 = or i1 %4777, %4778
  %4780 = zext i1 %4779 to i8
  %4781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4780, i8* %4781, align 1, !tbaa !2432
  %4782 = trunc i64 %4776 to i32
  %4783 = and i32 %4782, 255
  %4784 = call i32 @llvm.ctpop.i32(i32 %4783) #16
  %4785 = trunc i32 %4784 to i8
  %4786 = and i8 %4785, 1
  %4787 = xor i8 %4786, 1
  %4788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4787, i8* %4788, align 1, !tbaa !2446
  %4789 = xor i64 1, %4773
  %4790 = xor i64 %4789, %4776
  %4791 = lshr i64 %4790, 4
  %4792 = trunc i64 %4791 to i8
  %4793 = and i8 %4792, 1
  %4794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4793, i8* %4794, align 1, !tbaa !2450
  %4795 = icmp eq i64 %4776, 0
  %4796 = zext i1 %4795 to i8
  %4797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4796, i8* %4797, align 1, !tbaa !2447
  %4798 = lshr i64 %4776, 63
  %4799 = trunc i64 %4798 to i8
  %4800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4799, i8* %4800, align 1, !tbaa !2448
  %4801 = lshr i64 %4773, 63
  %4802 = xor i64 %4798, %4801
  %4803 = add nuw nsw i64 %4802, %4798
  %4804 = icmp eq i64 %4803, 2
  %4805 = zext i1 %4804 to i8
  %4806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4805, i8* %4806, align 1, !tbaa !2449
  %4807 = load i64, i64* %RBP
  %4808 = sub i64 %4807, 112
  %4809 = load i64, i64* %RAX
  %4810 = load i64, i64* %PC
  %4811 = add i64 %4810, 4
  store i64 %4811, i64* %PC
  %4812 = inttoptr i64 %4808 to i64*
  store i64 %4809, i64* %4812
  %4813 = load i64, i64* %RBP
  %4814 = sub i64 %4813, 56
  %4815 = load i64, i64* %PC
  %4816 = add i64 %4815, 4
  store i64 %4816, i64* %PC
  %4817 = inttoptr i64 %4814 to i64*
  %4818 = load i64, i64* %4817
  store i64 %4818, i64* %RAX, align 8, !tbaa !2428
  %4819 = load i64, i64* %RAX
  %4820 = load i64, i64* %PC
  %4821 = add i64 %4820, 4
  store i64 %4821, i64* %PC
  %4822 = add i64 1, %4819
  store i64 %4822, i64* %RAX, align 8, !tbaa !2428
  %4823 = icmp ult i64 %4822, %4819
  %4824 = icmp ult i64 %4822, 1
  %4825 = or i1 %4823, %4824
  %4826 = zext i1 %4825 to i8
  %4827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4826, i8* %4827, align 1, !tbaa !2432
  %4828 = trunc i64 %4822 to i32
  %4829 = and i32 %4828, 255
  %4830 = call i32 @llvm.ctpop.i32(i32 %4829) #16
  %4831 = trunc i32 %4830 to i8
  %4832 = and i8 %4831, 1
  %4833 = xor i8 %4832, 1
  %4834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4833, i8* %4834, align 1, !tbaa !2446
  %4835 = xor i64 1, %4819
  %4836 = xor i64 %4835, %4822
  %4837 = lshr i64 %4836, 4
  %4838 = trunc i64 %4837 to i8
  %4839 = and i8 %4838, 1
  %4840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4839, i8* %4840, align 1, !tbaa !2450
  %4841 = icmp eq i64 %4822, 0
  %4842 = zext i1 %4841 to i8
  %4843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4842, i8* %4843, align 1, !tbaa !2447
  %4844 = lshr i64 %4822, 63
  %4845 = trunc i64 %4844 to i8
  %4846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4845, i8* %4846, align 1, !tbaa !2448
  %4847 = lshr i64 %4819, 63
  %4848 = xor i64 %4844, %4847
  %4849 = add nuw nsw i64 %4848, %4844
  %4850 = icmp eq i64 %4849, 2
  %4851 = zext i1 %4850 to i8
  %4852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4851, i8* %4852, align 1, !tbaa !2449
  %4853 = load i64, i64* %RBP
  %4854 = sub i64 %4853, 56
  %4855 = load i64, i64* %RAX
  %4856 = load i64, i64* %PC
  %4857 = add i64 %4856, 4
  store i64 %4857, i64* %PC
  %4858 = inttoptr i64 %4854 to i64*
  store i64 %4855, i64* %4858
  %4859 = load i64, i64* %PC
  %4860 = sub i64 %4859, 356
  %4861 = load i64, i64* %PC
  %4862 = add i64 %4861, 5
  store i64 %4862, i64* %PC
  %4863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4860, i64* %4863, align 8, !tbaa !2428
  br label %block_400e41

block_40114a:                                     ; preds = %block_401142, %block_4011be
  %MEMORY.22 = phi %struct.Memory* [ %MEMORY.23, %block_401142 ], [ %MEMORY.0, %block_4011be ]
  %4864 = load i64, i64* %RBP
  %4865 = sub i64 %4864, 48
  %4866 = load i64, i64* %PC
  %4867 = add i64 %4866, 8
  store i64 %4867, i64* %PC
  %4868 = inttoptr i64 %4865 to i64*
  %4869 = load i64, i64* %4868
  %4870 = sub i64 %4869, 256
  %4871 = icmp ult i64 %4869, 256
  %4872 = zext i1 %4871 to i8
  %4873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4872, i8* %4873, align 1, !tbaa !2432
  %4874 = trunc i64 %4870 to i32
  %4875 = and i32 %4874, 255
  %4876 = call i32 @llvm.ctpop.i32(i32 %4875) #16
  %4877 = trunc i32 %4876 to i8
  %4878 = and i8 %4877, 1
  %4879 = xor i8 %4878, 1
  %4880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4879, i8* %4880, align 1, !tbaa !2446
  %4881 = xor i64 %4869, 256
  %4882 = xor i64 %4881, %4870
  %4883 = lshr i64 %4882, 4
  %4884 = trunc i64 %4883 to i8
  %4885 = and i8 %4884, 1
  %4886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4885, i8* %4886, align 1, !tbaa !2450
  %4887 = icmp eq i64 %4870, 0
  %4888 = zext i1 %4887 to i8
  %4889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4888, i8* %4889, align 1, !tbaa !2447
  %4890 = lshr i64 %4870, 63
  %4891 = trunc i64 %4890 to i8
  %4892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4891, i8* %4892, align 1, !tbaa !2448
  %4893 = lshr i64 %4869, 63
  %4894 = xor i64 %4890, %4893
  %4895 = add nuw nsw i64 %4894, %4893
  %4896 = icmp eq i64 %4895, 2
  %4897 = zext i1 %4896 to i8
  %4898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4897, i8* %4898, align 1, !tbaa !2449
  %4899 = load i64, i64* %PC
  %4900 = add i64 %4899, 231
  %4901 = load i64, i64* %PC
  %4902 = add i64 %4901, 6
  %4903 = load i64, i64* %PC
  %4904 = add i64 %4903, 6
  store i64 %4904, i64* %PC
  %4905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4906 = load i8, i8* %4905, align 1, !tbaa !2432
  %4907 = icmp eq i8 %4906, 0
  %4908 = zext i1 %4907 to i8
  store i8 %4908, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %4909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4910 = select i1 %4907, i64 %4900, i64 %4902
  store i64 %4910, i64* %4909, align 8, !tbaa !2428
  %4911 = load i8, i8* %BRANCH_TAKEN
  %4912 = icmp eq i8 %4911, 1
  %4913 = load i64, i64* %RBP
  br i1 %4912, label %block_401239, label %block_401158

block_400d1e:                                     ; preds = %block_400cb3
  %4914 = sub i64 %2765, 10648
  %4915 = load i64, i64* %PC
  %4916 = add i64 %4915, 7
  store i64 %4916, i64* %PC
  %4917 = inttoptr i64 %4914 to i64*
  %4918 = load i64, i64* %4917
  store i64 %4918, i64* %RAX, align 8, !tbaa !2428
  %4919 = load i64, i64* %RBP
  %4920 = sub i64 %4919, 10640
  %4921 = load i64, i64* %PC
  %4922 = add i64 %4921, 7
  store i64 %4922, i64* %PC
  %4923 = inttoptr i64 %4920 to i64*
  %4924 = load i64, i64* %4923
  store i64 %4924, i64* %RCX, align 8, !tbaa !2428
  %4925 = load i64, i64* %RBP
  %4926 = load i64, i64* %RCX
  %4927 = mul i64 %4926, 8
  %4928 = add i64 %4925, -10368
  %4929 = add i64 %4928, %4927
  %4930 = load i64, i64* %RAX
  %4931 = load i64, i64* %PC
  %4932 = add i64 %4931, 8
  store i64 %4932, i64* %PC
  %4933 = inttoptr i64 %4929 to i64*
  store i64 %4930, i64* %4933
  %4934 = load i64, i64* %RBP
  %4935 = sub i64 %4934, 48
  %4936 = load i64, i64* %PC
  %4937 = add i64 %4936, 4
  store i64 %4937, i64* %PC
  %4938 = inttoptr i64 %4935 to i64*
  %4939 = load i64, i64* %4938
  store i64 %4939, i64* %RAX, align 8, !tbaa !2428
  %4940 = load i8, i8* %AL
  %4941 = zext i8 %4940 to i64
  %4942 = load i64, i64* %PC
  %4943 = add i64 %4942, 2
  store i64 %4943, i64* %PC
  store i8 %4940, i8* %DL, align 1, !tbaa !2451
  %4944 = load i64, i64* %RBP
  %4945 = sub i64 %4944, 10640
  %4946 = load i64, i64* %PC
  %4947 = add i64 %4946, 7
  store i64 %4947, i64* %PC
  %4948 = inttoptr i64 %4945 to i64*
  %4949 = load i64, i64* %4948
  store i64 %4949, i64* %RAX, align 8, !tbaa !2428
  %4950 = load i64, i64* %RBP
  %4951 = load i64, i64* %RAX
  %4952 = add i64 %4950, -10624
  %4953 = add i64 %4952, %4951
  %4954 = load i8, i8* %DL
  %4955 = zext i8 %4954 to i64
  %4956 = load i64, i64* %PC
  %4957 = add i64 %4956, 7
  store i64 %4957, i64* %PC
  %4958 = inttoptr i64 %4953 to i8*
  store i8 %4954, i8* %4958
  %4959 = load i64, i64* %RBP
  %4960 = sub i64 %4959, 10648
  %4961 = load i64, i64* %PC
  %4962 = add i64 %4961, 7
  store i64 %4962, i64* %PC
  %4963 = inttoptr i64 %4960 to i64*
  %4964 = load i64, i64* %4963
  store i64 %4964, i64* %RAX, align 8, !tbaa !2428
  %4965 = load i64, i64* %RAX
  %4966 = load i64, i64* %RBP
  %4967 = sub i64 %4966, 10656
  %4968 = load i64, i64* %PC
  %4969 = add i64 %4968, 7
  store i64 %4969, i64* %PC
  %4970 = inttoptr i64 %4967 to i64*
  %4971 = load i64, i64* %4970
  %4972 = sub i64 %4965, %4971
  %4973 = icmp ugt i64 %4971, %4965
  %4974 = zext i1 %4973 to i8
  %4975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4974, i8* %4975, align 1, !tbaa !2432
  %4976 = trunc i64 %4972 to i32
  %4977 = and i32 %4976, 255
  %4978 = call i32 @llvm.ctpop.i32(i32 %4977) #16
  %4979 = trunc i32 %4978 to i8
  %4980 = and i8 %4979, 1
  %4981 = xor i8 %4980, 1
  %4982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4981, i8* %4982, align 1, !tbaa !2446
  %4983 = xor i64 %4971, %4965
  %4984 = xor i64 %4983, %4972
  %4985 = lshr i64 %4984, 4
  %4986 = trunc i64 %4985 to i8
  %4987 = and i8 %4986, 1
  %4988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4987, i8* %4988, align 1, !tbaa !2450
  %4989 = icmp eq i64 %4972, 0
  %4990 = zext i1 %4989 to i8
  %4991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4990, i8* %4991, align 1, !tbaa !2447
  %4992 = lshr i64 %4972, 63
  %4993 = trunc i64 %4992 to i8
  %4994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4993, i8* %4994, align 1, !tbaa !2448
  %4995 = lshr i64 %4965, 63
  %4996 = lshr i64 %4971, 63
  %4997 = xor i64 %4996, %4995
  %4998 = xor i64 %4992, %4995
  %4999 = add nuw nsw i64 %4998, %4997
  %5000 = icmp eq i64 %4999, 2
  %5001 = zext i1 %5000 to i8
  %5002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5001, i8* %5002, align 1, !tbaa !2449
  %5003 = load i64, i64* %PC
  %5004 = add i64 %5003, 20
  %5005 = load i64, i64* %PC
  %5006 = add i64 %5005, 6
  %5007 = load i64, i64* %PC
  %5008 = add i64 %5007, 6
  store i64 %5008, i64* %PC
  %5009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5010 = load i8, i8* %5009, align 1, !tbaa !2432
  %5011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5012 = load i8, i8* %5011, align 1, !tbaa !2447
  %5013 = or i8 %5012, %5010
  %5014 = icmp ne i8 %5013, 0
  %5015 = zext i1 %5014 to i8
  store i8 %5015, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %5016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5017 = select i1 %5014, i64 %5004, i64 %5006
  store i64 %5017, i64* %5016, align 8, !tbaa !2428
  %5018 = load i8, i8* %BRANCH_TAKEN
  %5019 = icmp eq i8 %5018, 1
  br i1 %5019, label %block_400d6a, label %block_400d5c

block_401307:                                     ; preds = %block_4012e0
  %5020 = sub i64 %2130, 80
  %5021 = load i64, i64* %PC
  %5022 = add i64 %5021, 4
  store i64 %5022, i64* %PC
  %5023 = inttoptr i64 %5020 to i64*
  %5024 = load i64, i64* %5023
  store i64 %5024, i64* %RAX, align 8, !tbaa !2428
  %5025 = load i64, i64* %RBP
  %5026 = sub i64 %5025, 48
  %5027 = load i64, i64* %PC
  %5028 = add i64 %5027, 4
  store i64 %5028, i64* %PC
  %5029 = inttoptr i64 %5026 to i64*
  %5030 = load i64, i64* %5029
  store i64 %5030, i64* %RCX, align 8, !tbaa !2428
  %5031 = load i64, i64* %RAX
  %5032 = load i64, i64* %RBP
  %5033 = load i64, i64* %RCX
  %5034 = mul i64 %5033, 8
  %5035 = add i64 %5032, -12736
  %5036 = add i64 %5035, %5034
  %5037 = load i64, i64* %PC
  %5038 = add i64 %5037, 8
  store i64 %5038, i64* %PC
  %5039 = inttoptr i64 %5036 to i64*
  %5040 = load i64, i64* %5039
  %5041 = sub i64 %5031, %5040
  %5042 = icmp ugt i64 %5040, %5031
  %5043 = zext i1 %5042 to i8
  %5044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5043, i8* %5044, align 1, !tbaa !2432
  %5045 = trunc i64 %5041 to i32
  %5046 = and i32 %5045, 255
  %5047 = call i32 @llvm.ctpop.i32(i32 %5046) #16
  %5048 = trunc i32 %5047 to i8
  %5049 = and i8 %5048, 1
  %5050 = xor i8 %5049, 1
  %5051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5050, i8* %5051, align 1, !tbaa !2446
  %5052 = xor i64 %5040, %5031
  %5053 = xor i64 %5052, %5041
  %5054 = lshr i64 %5053, 4
  %5055 = trunc i64 %5054 to i8
  %5056 = and i8 %5055, 1
  %5057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5056, i8* %5057, align 1, !tbaa !2450
  %5058 = icmp eq i64 %5041, 0
  %5059 = zext i1 %5058 to i8
  %5060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5059, i8* %5060, align 1, !tbaa !2447
  %5061 = lshr i64 %5041, 63
  %5062 = trunc i64 %5061 to i8
  %5063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5062, i8* %5063, align 1, !tbaa !2448
  %5064 = lshr i64 %5031, 63
  %5065 = lshr i64 %5040, 63
  %5066 = xor i64 %5065, %5064
  %5067 = xor i64 %5061, %5064
  %5068 = add nuw nsw i64 %5067, %5066
  %5069 = icmp eq i64 %5068, 2
  %5070 = zext i1 %5069 to i8
  %5071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5070, i8* %5071, align 1, !tbaa !2449
  %5072 = load i64, i64* %PC
  %5073 = add i64 %5072, 63
  %5074 = load i64, i64* %PC
  %5075 = add i64 %5074, 6
  %5076 = load i64, i64* %PC
  %5077 = add i64 %5076, 6
  store i64 %5077, i64* %PC
  %5078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5079 = load i8, i8* %5078, align 1, !tbaa !2447
  %5080 = icmp eq i8 %5079, 0
  %5081 = zext i1 %5080 to i8
  store i8 %5081, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %5082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5083 = select i1 %5080, i64 %5073, i64 %5075
  store i64 %5083, i64* %5082, align 8, !tbaa !2428
  %5084 = load i8, i8* %BRANCH_TAKEN
  %5085 = icmp eq i8 %5084, 1
  br i1 %5085, label %block_401356, label %block_40131d

block_400b08:                                     ; preds = %block_400abf
  %5086 = load i64, i64* %PC
  %5087 = add i64 %5086, 5
  %5088 = load i64, i64* %PC
  %5089 = add i64 %5088, 5
  store i64 %5089, i64* %PC
  %5090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5087, i64* %5090, align 8, !tbaa !2428
  br label %block_400b0d

block_400f1e:                                     ; preds = %block_400e9b
  %5091 = sub i64 %3085, 10688
  %5092 = load i64, i64* %PC
  %5093 = add i64 %5092, 6
  store i64 %5093, i64* %PC
  %5094 = inttoptr i64 %5091 to i32*
  %5095 = load i32, i32* %5094
  %5096 = zext i32 %5095 to i64
  store i64 %5096, i64* %RAX, align 8, !tbaa !2428
  %5097 = load i64, i64* %RAX
  %5098 = load i64, i64* %PC
  %5099 = add i64 %5098, 3
  store i64 %5099, i64* %PC
  %5100 = trunc i64 %5097 to i32
  %5101 = add i32 1, %5100
  %5102 = zext i32 %5101 to i64
  store i64 %5102, i64* %RAX, align 8, !tbaa !2428
  %5103 = icmp ult i32 %5101, %5100
  %5104 = icmp ult i32 %5101, 1
  %5105 = or i1 %5103, %5104
  %5106 = zext i1 %5105 to i8
  %5107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5106, i8* %5107, align 1, !tbaa !2432
  %5108 = and i32 %5101, 255
  %5109 = call i32 @llvm.ctpop.i32(i32 %5108) #16
  %5110 = trunc i32 %5109 to i8
  %5111 = and i8 %5110, 1
  %5112 = xor i8 %5111, 1
  %5113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5112, i8* %5113, align 1, !tbaa !2446
  %5114 = xor i64 1, %5097
  %5115 = trunc i64 %5114 to i32
  %5116 = xor i32 %5115, %5101
  %5117 = lshr i32 %5116, 4
  %5118 = trunc i32 %5117 to i8
  %5119 = and i8 %5118, 1
  %5120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5119, i8* %5120, align 1, !tbaa !2450
  %5121 = icmp eq i32 %5101, 0
  %5122 = zext i1 %5121 to i8
  %5123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5122, i8* %5123, align 1, !tbaa !2447
  %5124 = lshr i32 %5101, 31
  %5125 = trunc i32 %5124 to i8
  %5126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5125, i8* %5126, align 1, !tbaa !2448
  %5127 = lshr i32 %5100, 31
  %5128 = xor i32 %5124, %5127
  %5129 = add nuw nsw i32 %5128, %5124
  %5130 = icmp eq i32 %5129, 2
  %5131 = zext i1 %5130 to i8
  %5132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5131, i8* %5132, align 1, !tbaa !2449
  %5133 = load i64, i64* %RBP
  %5134 = sub i64 %5133, 10688
  %5135 = load i32, i32* %EAX
  %5136 = zext i32 %5135 to i64
  %5137 = load i64, i64* %PC
  %5138 = add i64 %5137, 6
  store i64 %5138, i64* %PC
  %5139 = inttoptr i64 %5134 to i32*
  store i32 %5135, i32* %5139
  %5140 = load i64, i64* %RBP
  %5141 = sub i64 %5140, 10681
  %5142 = load i64, i64* %PC
  %5143 = add i64 %5142, 7
  store i64 %5143, i64* %PC
  %5144 = inttoptr i64 %5141 to i8*
  %5145 = load i8, i8* %5144
  %5146 = sext i8 %5145 to i64
  %5147 = and i64 %5146, 4294967295
  store i64 %5147, i64* %RAX, align 8, !tbaa !2428
  %5148 = load i64, i64* %RAX
  %5149 = load i64, i64* %PC
  %5150 = add i64 %5149, 3
  store i64 %5150, i64* %PC
  %5151 = trunc i64 %5148 to i32
  %5152 = shl i32 %5151, 1
  %5153 = icmp slt i32 %5151, 0
  %5154 = icmp slt i32 %5152, 0
  %5155 = xor i1 %5153, %5154
  %5156 = zext i32 %5152 to i64
  store i64 %5156, i64* %RAX, align 8, !tbaa !2428
  %5157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5158 = zext i1 %5153 to i8
  store i8 %5158, i8* %5157, align 1, !tbaa !2451
  %5159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5160 = and i32 %5152, 254
  %5161 = call i32 @llvm.ctpop.i32(i32 %5160) #16
  %5162 = trunc i32 %5161 to i8
  %5163 = and i8 %5162, 1
  %5164 = xor i8 %5163, 1
  store i8 %5164, i8* %5159, align 1, !tbaa !2451
  %5165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5165, align 1, !tbaa !2451
  %5166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5167 = icmp eq i32 %5152, 0
  %5168 = zext i1 %5167 to i8
  store i8 %5168, i8* %5166, align 1, !tbaa !2451
  %5169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5170 = lshr i32 %5152, 31
  %5171 = trunc i32 %5170 to i8
  store i8 %5171, i8* %5169, align 1, !tbaa !2451
  %5172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5173 = zext i1 %5155 to i8
  store i8 %5173, i8* %5172, align 1, !tbaa !2451
  %5174 = load i8, i8* %AL
  %5175 = zext i8 %5174 to i64
  %5176 = load i64, i64* %PC
  %5177 = add i64 %5176, 2
  store i64 %5177, i64* %PC
  store i8 %5174, i8* %CL, align 1, !tbaa !2451
  %5178 = load i64, i64* %RBP
  %5179 = sub i64 %5178, 10681
  %5180 = load i8, i8* %CL
  %5181 = zext i8 %5180 to i64
  %5182 = load i64, i64* %PC
  %5183 = add i64 %5182, 6
  store i64 %5183, i64* %PC
  %5184 = inttoptr i64 %5179 to i8*
  store i8 %5180, i8* %5184
  br label %block_400f3f

block_401029:                                     ; preds = %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit1, %block_40112c
  %MEMORY.23 = phi %struct.Memory* [ %5468, %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit1 ], [ %MEMORY.6, %block_40112c ]
  %5185 = load i64, i64* %RBP
  %5186 = sub i64 %5185, 56
  %5187 = load i64, i64* %PC
  %5188 = add i64 %5187, 8
  store i64 %5188, i64* %PC
  %5189 = inttoptr i64 %5186 to i64*
  %5190 = load i64, i64* %5189
  %5191 = sub i64 %5190, 256
  %5192 = icmp ult i64 %5190, 256
  %5193 = zext i1 %5192 to i8
  %5194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5193, i8* %5194, align 1, !tbaa !2432
  %5195 = trunc i64 %5191 to i32
  %5196 = and i32 %5195, 255
  %5197 = call i32 @llvm.ctpop.i32(i32 %5196) #16
  %5198 = trunc i32 %5197 to i8
  %5199 = and i8 %5198, 1
  %5200 = xor i8 %5199, 1
  %5201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5200, i8* %5201, align 1, !tbaa !2446
  %5202 = xor i64 %5190, 256
  %5203 = xor i64 %5202, %5191
  %5204 = lshr i64 %5203, 4
  %5205 = trunc i64 %5204 to i8
  %5206 = and i8 %5205, 1
  %5207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5206, i8* %5207, align 1, !tbaa !2450
  %5208 = icmp eq i64 %5191, 0
  %5209 = zext i1 %5208 to i8
  %5210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5209, i8* %5210, align 1, !tbaa !2447
  %5211 = lshr i64 %5191, 63
  %5212 = trunc i64 %5211 to i8
  %5213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5212, i8* %5213, align 1, !tbaa !2448
  %5214 = lshr i64 %5190, 63
  %5215 = xor i64 %5211, %5214
  %5216 = add nuw nsw i64 %5215, %5214
  %5217 = icmp eq i64 %5216, 2
  %5218 = zext i1 %5217 to i8
  %5219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5218, i8* %5219, align 1, !tbaa !2449
  %5220 = load i64, i64* %PC
  %5221 = add i64 %5220, 273
  %5222 = load i64, i64* %PC
  %5223 = add i64 %5222, 6
  %5224 = load i64, i64* %PC
  %5225 = add i64 %5224, 6
  store i64 %5225, i64* %PC
  %5226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5227 = load i8, i8* %5226, align 1, !tbaa !2432
  %5228 = icmp eq i8 %5227, 0
  %5229 = zext i1 %5228 to i8
  store i8 %5229, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %5230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5231 = select i1 %5228, i64 %5221, i64 %5223
  store i64 %5231, i64* %5230, align 8, !tbaa !2428
  %5232 = load i8, i8* %BRANCH_TAKEN
  %5233 = icmp eq i8 %5232, 1
  %5234 = load i64, i64* %RBP
  br i1 %5233, label %block_401142, label %block_401037

block_400faa:                                     ; preds = %block_400e41
  %5235 = load i64, i64* %RBP
  %5236 = sub i64 %5235, 12992
  %5237 = load i64, i64* %PC
  %5238 = add i64 %5237, 7
  store i64 %5238, i64* %PC
  store i64 %5236, i64* %RAX, align 8, !tbaa !2428
  %5239 = load i64, i64* %RSI
  %5240 = load i32, i32* %ESI
  %5241 = zext i32 %5240 to i64
  %5242 = load i64, i64* %PC
  %5243 = add i64 %5242, 2
  store i64 %5243, i64* %PC
  %5244 = xor i64 %5241, %5239
  %5245 = trunc i64 %5244 to i32
  %5246 = and i64 %5244, 4294967295
  store i64 %5246, i64* %RSI, align 8, !tbaa !2428
  %5247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5247, align 1, !tbaa !2432
  %5248 = and i32 %5245, 255
  %5249 = call i32 @llvm.ctpop.i32(i32 %5248) #16
  %5250 = trunc i32 %5249 to i8
  %5251 = and i8 %5250, 1
  %5252 = xor i8 %5251, 1
  %5253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5252, i8* %5253, align 1, !tbaa !2446
  %5254 = icmp eq i32 %5245, 0
  %5255 = zext i1 %5254 to i8
  %5256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5255, i8* %5256, align 1, !tbaa !2447
  %5257 = lshr i32 %5245, 31
  %5258 = trunc i32 %5257 to i8
  %5259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5258, i8* %5259, align 1, !tbaa !2448
  %5260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5260, align 1, !tbaa !2449
  %5261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5261, align 1, !tbaa !2450
  %5262 = load i64, i64* %PC
  %5263 = add i64 %5262, 5
  store i64 %5263, i64* %PC
  store i64 2048, i64* %RCX, align 8, !tbaa !2428
  %5264 = load i32, i32* %ECX
  %5265 = zext i32 %5264 to i64
  %5266 = load i64, i64* %PC
  %5267 = add i64 %5266, 2
  store i64 %5267, i64* %PC
  %5268 = and i64 %5265, 4294967295
  store i64 %5268, i64* %RDX, align 8, !tbaa !2428
  %5269 = load i64, i64* %RBP
  %5270 = sub i64 %5269, 12736
  %5271 = load i64, i64* %PC
  %5272 = add i64 %5271, 7
  store i64 %5272, i64* %PC
  store i64 %5270, i64* %RDI, align 8, !tbaa !2428
  %5273 = load i64, i64* %PC
  %5274 = add i64 %5273, 5
  store i64 %5274, i64* %PC
  store i64 7, i64* %RCX, align 8, !tbaa !2428
  %5275 = load i64, i64* %RCX
  %5276 = load i64, i64* %RBP
  %5277 = sub i64 %5276, 10688
  %5278 = load i64, i64* %PC
  %5279 = add i64 %5278, 6
  store i64 %5279, i64* %PC
  %5280 = trunc i64 %5275 to i32
  %5281 = inttoptr i64 %5277 to i32*
  %5282 = load i32, i32* %5281
  %5283 = sub i32 %5280, %5282
  %5284 = zext i32 %5283 to i64
  store i64 %5284, i64* %RCX, align 8, !tbaa !2428
  %5285 = icmp ult i32 %5280, %5282
  %5286 = zext i1 %5285 to i8
  %5287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5286, i8* %5287, align 1, !tbaa !2432
  %5288 = and i32 %5283, 255
  %5289 = call i32 @llvm.ctpop.i32(i32 %5288) #16
  %5290 = trunc i32 %5289 to i8
  %5291 = and i8 %5290, 1
  %5292 = xor i8 %5291, 1
  %5293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5292, i8* %5293, align 1, !tbaa !2446
  %5294 = xor i32 %5282, %5280
  %5295 = xor i32 %5294, %5283
  %5296 = lshr i32 %5295, 4
  %5297 = trunc i32 %5296 to i8
  %5298 = and i8 %5297, 1
  %5299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5298, i8* %5299, align 1, !tbaa !2450
  %5300 = icmp eq i32 %5283, 0
  %5301 = zext i1 %5300 to i8
  %5302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5301, i8* %5302, align 1, !tbaa !2447
  %5303 = lshr i32 %5283, 31
  %5304 = trunc i32 %5303 to i8
  %5305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5304, i8* %5305, align 1, !tbaa !2448
  %5306 = lshr i32 %5280, 31
  %5307 = lshr i32 %5282, 31
  %5308 = xor i32 %5307, %5306
  %5309 = xor i32 %5303, %5306
  %5310 = add nuw nsw i32 %5309, %5308
  %5311 = icmp eq i32 %5310, 2
  %5312 = zext i1 %5311 to i8
  %5313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5312, i8* %5313, align 1, !tbaa !2449
  %5314 = bitcast i32* %R8D to i64*
  %5315 = load i64, i64* %RBP
  %5316 = sub i64 %5315, 10681
  %5317 = load i64, i64* %PC
  %5318 = add i64 %5317, 8
  store i64 %5318, i64* %PC
  %5319 = inttoptr i64 %5316 to i8*
  %5320 = load i8, i8* %5319
  %5321 = sext i8 %5320 to i64
  %5322 = and i64 %5321, 4294967295
  store i64 %5322, i64* %5314, align 8, !tbaa !2428
  %5323 = bitcast i32* %R8D to i64*
  %5324 = load i32, i32* %R8D
  %5325 = zext i32 %5324 to i64
  %5326 = load i8, i8* %CL
  %5327 = zext i8 %5326 to i64
  %5328 = load i64, i64* %PC
  %5329 = add i64 %5328, 3
  store i64 %5329, i64* %PC
  %5330 = trunc i64 %5327 to i5
  switch i5 %5330, label %5336 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit1
    i5 1, label %5331
  ]

; <label>:5331:                                   ; preds = %block_400faa
  %5332 = shl i32 %5324, 1
  %5333 = icmp slt i32 %5324, 0
  %5334 = icmp slt i32 %5332, 0
  %5335 = xor i1 %5333, %5334
  br label %5345

; <label>:5336:                                   ; preds = %block_400faa
  %5337 = and i64 %5327, 31
  %5338 = add nuw nsw i64 %5337, 4294967295
  %5339 = and i64 %5325, 4294967295
  %5340 = and i64 %5338, 4294967295
  %5341 = shl i64 %5339, %5340
  %5342 = trunc i64 %5341 to i32
  %5343 = icmp slt i32 %5342, 0
  %5344 = shl i32 %5342, 1
  br label %5345

; <label>:5345:                                   ; preds = %5336, %5331
  %5346 = phi i1 [ %5333, %5331 ], [ %5343, %5336 ]
  %5347 = phi i1 [ %5335, %5331 ], [ false, %5336 ]
  %5348 = phi i32 [ %5332, %5331 ], [ %5344, %5336 ]
  %5349 = zext i32 %5348 to i64
  store i64 %5349, i64* %5323, align 8, !tbaa !2428
  %5350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5351 = zext i1 %5346 to i8
  store i8 %5351, i8* %5350, align 1, !tbaa !2451
  %5352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5353 = and i32 %5348, 254
  %5354 = call i32 @llvm.ctpop.i32(i32 %5353) #16
  %5355 = trunc i32 %5354 to i8
  %5356 = and i8 %5355, 1
  %5357 = xor i8 %5356, 1
  store i8 %5357, i8* %5352, align 1, !tbaa !2451
  %5358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5358, align 1, !tbaa !2451
  %5359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5360 = icmp eq i32 %5348, 0
  %5361 = zext i1 %5360 to i8
  store i8 %5361, i8* %5359, align 1, !tbaa !2451
  %5362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5363 = lshr i32 %5348, 31
  %5364 = trunc i32 %5363 to i8
  store i8 %5364, i8* %5362, align 1, !tbaa !2451
  %5365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5366 = zext i1 %5347 to i8
  store i8 %5366, i8* %5365, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit1

_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit1: ; preds = %block_400faa, %5345
  %5367 = load i8, i8* %R8B
  %5368 = zext i8 %5367 to i64
  %5369 = load i64, i64* %PC
  %5370 = add i64 %5369, 3
  store i64 %5370, i64* %PC
  store i8 %5367, i8* %CL, align 1, !tbaa !2451
  %5371 = load i64, i64* %RBP
  %5372 = sub i64 %5371, 10681
  %5373 = load i8, i8* %CL
  %5374 = zext i8 %5373 to i64
  %5375 = load i64, i64* %PC
  %5376 = add i64 %5375, 6
  store i64 %5376, i64* %PC
  %5377 = inttoptr i64 %5372 to i8*
  store i8 %5373, i8* %5377
  %5378 = load i64, i64* %RBP
  %5379 = sub i64 %5378, 10681
  %5380 = load i64, i64* %PC
  %5381 = add i64 %5380, 6
  store i64 %5381, i64* %PC
  %5382 = inttoptr i64 %5379 to i8*
  %5383 = load i8, i8* %5382
  store i8 %5383, i8* %CL, align 1, !tbaa !2451
  %5384 = load i64, i64* %RBP
  %5385 = sub i64 %5384, 120
  %5386 = load i64, i64* %PC
  %5387 = add i64 %5386, 4
  store i64 %5387, i64* %PC
  %5388 = inttoptr i64 %5385 to i64*
  %5389 = load i64, i64* %5388
  store i64 %5389, i64* %R9, align 8, !tbaa !2428
  %5390 = load i64, i64* %RBP
  %5391 = sub i64 %5390, 10680
  %5392 = load i64, i64* %PC
  %5393 = add i64 %5392, 7
  store i64 %5393, i64* %PC
  %5394 = inttoptr i64 %5391 to i64*
  %5395 = load i64, i64* %5394
  store i64 %5395, i64* %R10, align 8, !tbaa !2428
  %5396 = load i64, i64* %R9
  %5397 = load i64, i64* %R10
  %5398 = add i64 %5397, %5396
  %5399 = load i8, i8* %CL
  %5400 = zext i8 %5399 to i64
  %5401 = load i64, i64* %PC
  %5402 = add i64 %5401, 4
  store i64 %5402, i64* %PC
  %5403 = inttoptr i64 %5398 to i8*
  store i8 %5399, i8* %5403
  %5404 = load i64, i64* %RBP
  %5405 = sub i64 %5404, 10680
  %5406 = load i64, i64* %PC
  %5407 = add i64 %5406, 7
  store i64 %5407, i64* %PC
  %5408 = inttoptr i64 %5405 to i64*
  %5409 = load i64, i64* %5408
  store i64 %5409, i64* %R9, align 8, !tbaa !2428
  %5410 = load i64, i64* %R9
  %5411 = load i64, i64* %PC
  %5412 = add i64 %5411, 4
  store i64 %5412, i64* %PC
  %5413 = add i64 1, %5410
  store i64 %5413, i64* %R9, align 8, !tbaa !2428
  %5414 = icmp ult i64 %5413, %5410
  %5415 = icmp ult i64 %5413, 1
  %5416 = or i1 %5414, %5415
  %5417 = zext i1 %5416 to i8
  %5418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5417, i8* %5418, align 1, !tbaa !2432
  %5419 = trunc i64 %5413 to i32
  %5420 = and i32 %5419, 255
  %5421 = call i32 @llvm.ctpop.i32(i32 %5420) #16
  %5422 = trunc i32 %5421 to i8
  %5423 = and i8 %5422, 1
  %5424 = xor i8 %5423, 1
  %5425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5424, i8* %5425, align 1, !tbaa !2446
  %5426 = xor i64 1, %5410
  %5427 = xor i64 %5426, %5413
  %5428 = lshr i64 %5427, 4
  %5429 = trunc i64 %5428 to i8
  %5430 = and i8 %5429, 1
  %5431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5430, i8* %5431, align 1, !tbaa !2450
  %5432 = icmp eq i64 %5413, 0
  %5433 = zext i1 %5432 to i8
  %5434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5433, i8* %5434, align 1, !tbaa !2447
  %5435 = lshr i64 %5413, 63
  %5436 = trunc i64 %5435 to i8
  %5437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5436, i8* %5437, align 1, !tbaa !2448
  %5438 = lshr i64 %5410, 63
  %5439 = xor i64 %5435, %5438
  %5440 = add nuw nsw i64 %5439, %5435
  %5441 = icmp eq i64 %5440, 2
  %5442 = zext i1 %5441 to i8
  %5443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5442, i8* %5443, align 1, !tbaa !2449
  %5444 = load i64, i64* %RBP
  %5445 = sub i64 %5444, 10680
  %5446 = load i64, i64* %R9
  %5447 = load i64, i64* %PC
  %5448 = add i64 %5447, 7
  store i64 %5448, i64* %PC
  %5449 = inttoptr i64 %5445 to i64*
  store i64 %5446, i64* %5449
  %5450 = load i64, i64* %RBP
  %5451 = sub i64 %5450, 13096
  %5452 = load i64, i64* %RAX
  %5453 = load i64, i64* %PC
  %5454 = add i64 %5453, 7
  store i64 %5454, i64* %PC
  %5455 = inttoptr i64 %5451 to i64*
  store i64 %5452, i64* %5455
  %5456 = load i64, i64* %PC
  %5457 = sub i64 %5456, 2558
  %5458 = load i64, i64* %PC
  %5459 = add i64 %5458, 5
  %5460 = load i64, i64* %PC
  %5461 = add i64 %5460, 5
  store i64 %5461, i64* %PC
  %5462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5463 = load i64, i64* %5462, align 8, !tbaa !2428
  %5464 = add i64 %5463, -8
  %5465 = inttoptr i64 %5464 to i64*
  store i64 %5459, i64* %5465
  store i64 %5464, i64* %5462, align 8, !tbaa !2428
  %5466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5457, i64* %5466, align 8, !tbaa !2428
  %5467 = load i64, i64* %PC
  %5468 = call %struct.Memory* @ext_6020f8_memset(%struct.State* %0, i64 %5467, %struct.Memory* %MEMORY.19)
  %5469 = load i64, i64* %RBP
  %5470 = sub i64 %5469, 13096
  %5471 = load i64, i64* %PC
  %5472 = add i64 %5471, 7
  store i64 %5472, i64* %PC
  %5473 = inttoptr i64 %5470 to i64*
  %5474 = load i64, i64* %5473
  store i64 %5474, i64* %RAX, align 8, !tbaa !2428
  %5475 = load i64, i64* %RBP
  %5476 = sub i64 %5475, 13000
  %5477 = load i64, i64* %RAX
  %5478 = load i64, i64* %PC
  %5479 = add i64 %5478, 7
  store i64 %5479, i64* %PC
  %5480 = inttoptr i64 %5476 to i64*
  store i64 %5477, i64* %5480
  %5481 = load i64, i64* %RBP
  %5482 = sub i64 %5481, 56
  %5483 = load i64, i64* %PC
  %5484 = add i64 %5483, 8
  store i64 %5484, i64* %PC
  %5485 = inttoptr i64 %5482 to i64*
  store i64 0, i64* %5485
  br label %block_401029

block_400a1a:                                     ; preds = %block_400a0c
  %5486 = sub i64 %5879, 112
  %5487 = load i64, i64* %PC
  %5488 = add i64 %5487, 4
  store i64 %5488, i64* %PC
  %5489 = inttoptr i64 %5486 to i64*
  %5490 = load i64, i64* %5489
  store i64 %5490, i64* %RAX, align 8, !tbaa !2428
  %5491 = load i64, i64* %RAX
  %5492 = load i64, i64* %PC
  %5493 = add i64 %5492, 3
  store i64 %5493, i64* %PC
  %5494 = inttoptr i64 %5491 to i8*
  %5495 = load i8, i8* %5494
  %5496 = zext i8 %5495 to i64
  store i64 %5496, i64* %RCX, align 8, !tbaa !2428
  %5497 = load i32, i32* %ECX
  %5498 = zext i32 %5497 to i64
  %5499 = load i64, i64* %PC
  %5500 = add i64 %5499, 2
  store i64 %5500, i64* %PC
  %5501 = and i64 %5498, 4294967295
  store i64 %5501, i64* %RAX, align 8, !tbaa !2428
  %5502 = load i64, i64* %RBP
  %5503 = load i64, i64* %RAX
  %5504 = mul i64 %5503, 8
  %5505 = add i64 %5502, -4224
  %5506 = add i64 %5505, %5504
  %5507 = load i64, i64* %PC
  %5508 = add i64 %5507, 8
  store i64 %5508, i64* %PC
  %5509 = inttoptr i64 %5506 to i64*
  %5510 = load i64, i64* %5509
  store i64 %5510, i64* %RDX, align 8, !tbaa !2428
  %5511 = load i64, i64* %RDX
  %5512 = load i64, i64* %PC
  %5513 = add i64 %5512, 4
  store i64 %5513, i64* %PC
  %5514 = add i64 1, %5511
  store i64 %5514, i64* %RDX, align 8, !tbaa !2428
  %5515 = icmp ult i64 %5514, %5511
  %5516 = icmp ult i64 %5514, 1
  %5517 = or i1 %5515, %5516
  %5518 = zext i1 %5517 to i8
  %5519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5518, i8* %5519, align 1, !tbaa !2432
  %5520 = trunc i64 %5514 to i32
  %5521 = and i32 %5520, 255
  %5522 = call i32 @llvm.ctpop.i32(i32 %5521) #16
  %5523 = trunc i32 %5522 to i8
  %5524 = and i8 %5523, 1
  %5525 = xor i8 %5524, 1
  %5526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5525, i8* %5526, align 1, !tbaa !2446
  %5527 = xor i64 1, %5511
  %5528 = xor i64 %5527, %5514
  %5529 = lshr i64 %5528, 4
  %5530 = trunc i64 %5529 to i8
  %5531 = and i8 %5530, 1
  %5532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5531, i8* %5532, align 1, !tbaa !2450
  %5533 = icmp eq i64 %5514, 0
  %5534 = zext i1 %5533 to i8
  %5535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5534, i8* %5535, align 1, !tbaa !2447
  %5536 = lshr i64 %5514, 63
  %5537 = trunc i64 %5536 to i8
  %5538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5537, i8* %5538, align 1, !tbaa !2448
  %5539 = lshr i64 %5511, 63
  %5540 = xor i64 %5536, %5539
  %5541 = add nuw nsw i64 %5540, %5536
  %5542 = icmp eq i64 %5541, 2
  %5543 = zext i1 %5542 to i8
  %5544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5543, i8* %5544, align 1, !tbaa !2449
  %5545 = load i64, i64* %RBP
  %5546 = load i64, i64* %RAX
  %5547 = mul i64 %5546, 8
  %5548 = add i64 %5545, -4224
  %5549 = add i64 %5548, %5547
  %5550 = load i64, i64* %RDX
  %5551 = load i64, i64* %PC
  %5552 = add i64 %5551, 8
  store i64 %5552, i64* %PC
  %5553 = inttoptr i64 %5549 to i64*
  store i64 %5550, i64* %5553
  %5554 = load i64, i64* %RBP
  %5555 = sub i64 %5554, 112
  %5556 = load i64, i64* %PC
  %5557 = add i64 %5556, 4
  store i64 %5557, i64* %PC
  %5558 = inttoptr i64 %5555 to i64*
  %5559 = load i64, i64* %5558
  store i64 %5559, i64* %RAX, align 8, !tbaa !2428
  %5560 = load i64, i64* %RAX
  %5561 = load i64, i64* %PC
  %5562 = add i64 %5561, 4
  store i64 %5562, i64* %PC
  %5563 = add i64 1, %5560
  store i64 %5563, i64* %RAX, align 8, !tbaa !2428
  %5564 = icmp ult i64 %5563, %5560
  %5565 = icmp ult i64 %5563, 1
  %5566 = or i1 %5564, %5565
  %5567 = zext i1 %5566 to i8
  %5568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5567, i8* %5568, align 1, !tbaa !2432
  %5569 = trunc i64 %5563 to i32
  %5570 = and i32 %5569, 255
  %5571 = call i32 @llvm.ctpop.i32(i32 %5570) #16
  %5572 = trunc i32 %5571 to i8
  %5573 = and i8 %5572, 1
  %5574 = xor i8 %5573, 1
  %5575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5574, i8* %5575, align 1, !tbaa !2446
  %5576 = xor i64 1, %5560
  %5577 = xor i64 %5576, %5563
  %5578 = lshr i64 %5577, 4
  %5579 = trunc i64 %5578 to i8
  %5580 = and i8 %5579, 1
  %5581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5580, i8* %5581, align 1, !tbaa !2450
  %5582 = icmp eq i64 %5563, 0
  %5583 = zext i1 %5582 to i8
  %5584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5583, i8* %5584, align 1, !tbaa !2447
  %5585 = lshr i64 %5563, 63
  %5586 = trunc i64 %5585 to i8
  %5587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5586, i8* %5587, align 1, !tbaa !2448
  %5588 = lshr i64 %5560, 63
  %5589 = xor i64 %5585, %5588
  %5590 = add nuw nsw i64 %5589, %5585
  %5591 = icmp eq i64 %5590, 2
  %5592 = zext i1 %5591 to i8
  %5593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5592, i8* %5593, align 1, !tbaa !2449
  %5594 = load i64, i64* %RBP
  %5595 = sub i64 %5594, 112
  %5596 = load i64, i64* %RAX
  %5597 = load i64, i64* %PC
  %5598 = add i64 %5597, 4
  store i64 %5598, i64* %PC
  %5599 = inttoptr i64 %5595 to i64*
  store i64 %5596, i64* %5599
  %5600 = load i64, i64* %RBP
  %5601 = sub i64 %5600, 48
  %5602 = load i64, i64* %PC
  %5603 = add i64 %5602, 4
  store i64 %5603, i64* %PC
  %5604 = inttoptr i64 %5601 to i64*
  %5605 = load i64, i64* %5604
  store i64 %5605, i64* %RAX, align 8, !tbaa !2428
  %5606 = load i64, i64* %RAX
  %5607 = load i64, i64* %PC
  %5608 = add i64 %5607, 4
  store i64 %5608, i64* %PC
  %5609 = add i64 1, %5606
  store i64 %5609, i64* %RAX, align 8, !tbaa !2428
  %5610 = icmp ult i64 %5609, %5606
  %5611 = icmp ult i64 %5609, 1
  %5612 = or i1 %5610, %5611
  %5613 = zext i1 %5612 to i8
  %5614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5613, i8* %5614, align 1, !tbaa !2432
  %5615 = trunc i64 %5609 to i32
  %5616 = and i32 %5615, 255
  %5617 = call i32 @llvm.ctpop.i32(i32 %5616) #16
  %5618 = trunc i32 %5617 to i8
  %5619 = and i8 %5618, 1
  %5620 = xor i8 %5619, 1
  %5621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5620, i8* %5621, align 1, !tbaa !2446
  %5622 = xor i64 1, %5606
  %5623 = xor i64 %5622, %5609
  %5624 = lshr i64 %5623, 4
  %5625 = trunc i64 %5624 to i8
  %5626 = and i8 %5625, 1
  %5627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5626, i8* %5627, align 1, !tbaa !2450
  %5628 = icmp eq i64 %5609, 0
  %5629 = zext i1 %5628 to i8
  %5630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5629, i8* %5630, align 1, !tbaa !2447
  %5631 = lshr i64 %5609, 63
  %5632 = trunc i64 %5631 to i8
  %5633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5632, i8* %5633, align 1, !tbaa !2448
  %5634 = lshr i64 %5606, 63
  %5635 = xor i64 %5631, %5634
  %5636 = add nuw nsw i64 %5635, %5631
  %5637 = icmp eq i64 %5636, 2
  %5638 = zext i1 %5637 to i8
  %5639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5638, i8* %5639, align 1, !tbaa !2449
  %5640 = load i64, i64* %RBP
  %5641 = sub i64 %5640, 48
  %5642 = load i64, i64* %RAX
  %5643 = load i64, i64* %PC
  %5644 = add i64 %5643, 4
  store i64 %5644, i64* %PC
  %5645 = inttoptr i64 %5641 to i64*
  store i64 %5642, i64* %5645
  %5646 = load i64, i64* %PC
  %5647 = sub i64 %5646, 67
  %5648 = load i64, i64* %PC
  %5649 = add i64 %5648, 5
  store i64 %5649, i64* %PC
  %5650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5647, i64* %5650, align 8, !tbaa !2428
  br label %block_400a0c

block_40107f:                                     ; preds = %block_401037
  %5651 = load i64, i64* %PC
  %5652 = add i64 %5651, 5
  store i64 %5652, i64* %PC
  store i64 1, i64* %RAX, align 8, !tbaa !2428
  %5653 = load i64, i64* %RBP
  %5654 = sub i64 %5653, 80
  %5655 = load i64, i64* %PC
  %5656 = add i64 %5655, 8
  store i64 %5656, i64* %PC
  %5657 = inttoptr i64 %5654 to i64*
  store i64 0, i64* %5657
  %5658 = load i64, i64* %RBP
  %5659 = sub i64 %5658, 56
  %5660 = load i64, i64* %PC
  %5661 = add i64 %5660, 4
  store i64 %5661, i64* %PC
  %5662 = inttoptr i64 %5659 to i64*
  %5663 = load i64, i64* %5662
  store i64 %5663, i64* %RCX, align 8, !tbaa !2428
  %5664 = load i64, i64* %RBP
  %5665 = load i64, i64* %RCX
  %5666 = add i64 %5664, -10624
  %5667 = add i64 %5666, %5665
  %5668 = load i64, i64* %PC
  %5669 = add i64 %5668, 8
  store i64 %5669, i64* %PC
  %5670 = inttoptr i64 %5667 to i8*
  %5671 = load i8, i8* %5670
  %5672 = zext i8 %5671 to i64
  store i64 %5672, i64* %RDX, align 8, !tbaa !2428
  %5673 = load i64, i64* %RDX
  %5674 = load i64, i64* %PC
  %5675 = add i64 %5674, 3
  store i64 %5675, i64* %PC
  %5676 = trunc i64 %5673 to i32
  %5677 = sub i32 %5676, 1
  %5678 = zext i32 %5677 to i64
  store i64 %5678, i64* %RDX, align 8, !tbaa !2428
  %5679 = icmp ult i32 %5676, 1
  %5680 = zext i1 %5679 to i8
  %5681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5680, i8* %5681, align 1, !tbaa !2432
  %5682 = and i32 %5677, 255
  %5683 = call i32 @llvm.ctpop.i32(i32 %5682) #16
  %5684 = trunc i32 %5683 to i8
  %5685 = and i8 %5684, 1
  %5686 = xor i8 %5685, 1
  %5687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5686, i8* %5687, align 1, !tbaa !2446
  %5688 = xor i64 1, %5673
  %5689 = trunc i64 %5688 to i32
  %5690 = xor i32 %5689, %5677
  %5691 = lshr i32 %5690, 4
  %5692 = trunc i32 %5691 to i8
  %5693 = and i8 %5692, 1
  %5694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5693, i8* %5694, align 1, !tbaa !2450
  %5695 = icmp eq i32 %5677, 0
  %5696 = zext i1 %5695 to i8
  %5697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5696, i8* %5697, align 1, !tbaa !2447
  %5698 = lshr i32 %5677, 31
  %5699 = trunc i32 %5698 to i8
  %5700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5699, i8* %5700, align 1, !tbaa !2448
  %5701 = lshr i32 %5676, 31
  %5702 = xor i32 %5698, %5701
  %5703 = add nuw nsw i32 %5702, %5701
  %5704 = icmp eq i32 %5703, 2
  %5705 = zext i1 %5704 to i8
  %5706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5705, i8* %5706, align 1, !tbaa !2449
  %5707 = load i32, i32* %EDX
  %5708 = zext i32 %5707 to i64
  %5709 = load i64, i64* %PC
  %5710 = add i64 %5709, 2
  store i64 %5710, i64* %PC
  %5711 = and i64 %5708, 4294967295
  store i64 %5711, i64* %RCX, align 8, !tbaa !2428
  %5712 = load i64, i64* %RAX
  %5713 = load i8, i8* %CL
  %5714 = zext i8 %5713 to i64
  %5715 = load i64, i64* %PC
  %5716 = add i64 %5715, 2
  store i64 %5716, i64* %PC
  %5717 = trunc i64 %5714 to i5
  switch i5 %5717, label %5724 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
    i5 1, label %5718
  ]

; <label>:5718:                                   ; preds = %block_40107f
  %5719 = trunc i64 %5712 to i32
  %5720 = shl i32 %5719, 1
  %5721 = icmp slt i32 %5719, 0
  %5722 = icmp slt i32 %5720, 0
  %5723 = xor i1 %5721, %5722
  br label %5733

; <label>:5724:                                   ; preds = %block_40107f
  %5725 = and i64 %5714, 31
  %5726 = add nuw nsw i64 %5725, 4294967295
  %5727 = and i64 %5712, 4294967295
  %5728 = and i64 %5726, 4294967295
  %5729 = shl i64 %5727, %5728
  %5730 = trunc i64 %5729 to i32
  %5731 = icmp slt i32 %5730, 0
  %5732 = shl i32 %5730, 1
  br label %5733

; <label>:5733:                                   ; preds = %5724, %5718
  %5734 = phi i1 [ %5721, %5718 ], [ %5731, %5724 ]
  %5735 = phi i1 [ %5723, %5718 ], [ false, %5724 ]
  %5736 = phi i32 [ %5720, %5718 ], [ %5732, %5724 ]
  %5737 = zext i32 %5736 to i64
  store i64 %5737, i64* %RAX, align 8, !tbaa !2428
  %5738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5739 = zext i1 %5734 to i8
  store i8 %5739, i8* %5738, align 1, !tbaa !2451
  %5740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5741 = and i32 %5736, 254
  %5742 = call i32 @llvm.ctpop.i32(i32 %5741) #16
  %5743 = trunc i32 %5742 to i8
  %5744 = and i8 %5743, 1
  %5745 = xor i8 %5744, 1
  store i8 %5745, i8* %5740, align 1, !tbaa !2451
  %5746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5746, align 1, !tbaa !2451
  %5747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5748 = icmp eq i32 %5736, 0
  %5749 = zext i1 %5748 to i8
  store i8 %5749, i8* %5747, align 1, !tbaa !2451
  %5750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5751 = lshr i32 %5736, 31
  %5752 = trunc i32 %5751 to i8
  store i8 %5752, i8* %5750, align 1, !tbaa !2451
  %5753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5754 = zext i1 %5735 to i8
  store i8 %5754, i8* %5753, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit

_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit: ; preds = %block_40107f, %5733
  %5755 = load i32, i32* %EAX
  %5756 = zext i32 %5755 to i64
  %5757 = load i64, i64* %PC
  %5758 = add i64 %5757, 3
  store i64 %5758, i64* %PC
  %5759 = shl i64 %5756, 32
  %5760 = ashr exact i64 %5759, 32
  store i64 %5760, i64* %RSI, align 8, !tbaa !2428
  %5761 = load i64, i64* %RBP
  %5762 = sub i64 %5761, 72
  %5763 = load i64, i64* %RSI
  %5764 = load i64, i64* %PC
  %5765 = add i64 %5764, 4
  store i64 %5765, i64* %PC
  %5766 = inttoptr i64 %5762 to i64*
  store i64 %5763, i64* %5766
  %5767 = load i64, i64* %RBP
  %5768 = sub i64 %5767, 48
  %5769 = load i64, i64* %PC
  %5770 = add i64 %5769, 8
  store i64 %5770, i64* %PC
  %5771 = inttoptr i64 %5768 to i64*
  store i64 0, i64* %5771
  br label %block_4010ae

block_400e10:                                     ; preds = %block_400dde
  %5772 = load i64, i64* %PC
  %5773 = add i64 %5772, 10
  store i64 %5773, i64* %PC
  store i64 add (i64 ptrtoint (%seg_401660__rodata_type* @seg_401660__rodata to i64), i64 63), i64* %RSI, align 8, !tbaa !2428
  %5774 = load i64, i64* %PC
  %5775 = add i64 %5774, 8
  store i64 %5775, i64* %PC
  %5776 = load i64, i64* @stderr
  store i64 %5776, i64* %RDI, align 8, !tbaa !2428
  %5777 = load i64, i64* %PC
  %5778 = add i64 %5777, 2
  store i64 %5778, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %5779 = load i64, i64* %PC
  %5780 = sub i64 %5779, 2036
  %5781 = load i64, i64* %PC
  %5782 = add i64 %5781, 5
  %5783 = load i64, i64* %PC
  %5784 = add i64 %5783, 5
  store i64 %5784, i64* %PC
  %5785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5786 = load i64, i64* %5785, align 8, !tbaa !2428
  %5787 = add i64 %5786, -8
  %5788 = inttoptr i64 %5787 to i64*
  store i64 %5782, i64* %5788
  store i64 %5787, i64* %5785, align 8, !tbaa !2428
  %5789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5780, i64* %5789, align 8, !tbaa !2428
  %5790 = load i64, i64* %PC
  %5791 = call %struct.Memory* @ext_6020d0_fprintf(%struct.State* %0, i64 %5790, %struct.Memory* %MEMORY.21)
  %5792 = load i64, i64* %PC
  %5793 = add i64 %5792, 5
  store i64 %5793, i64* %PC
  store i64 1, i64* %RDI, align 8, !tbaa !2428
  %5794 = load i64, i64* %RBP
  %5795 = sub i64 %5794, 13084
  %5796 = load i32, i32* %EAX
  %5797 = zext i32 %5796 to i64
  %5798 = load i64, i64* %PC
  %5799 = add i64 %5798, 6
  store i64 %5799, i64* %PC
  %5800 = inttoptr i64 %5795 to i32*
  store i32 %5796, i32* %5800
  %5801 = load i64, i64* %PC
  %5802 = sub i64 %5801, 2004
  %5803 = load i64, i64* %PC
  %5804 = add i64 %5803, 5
  %5805 = load i64, i64* %PC
  %5806 = add i64 %5805, 5
  store i64 %5806, i64* %PC
  %5807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5808 = load i64, i64* %5807, align 8, !tbaa !2428
  %5809 = add i64 %5808, -8
  %5810 = inttoptr i64 %5809 to i64*
  store i64 %5804, i64* %5810
  store i64 %5809, i64* %5807, align 8, !tbaa !2428
  %5811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5802, i64* %5811, align 8, !tbaa !2428
  %5812 = load i64, i64* %PC
  %5813 = call %struct.Memory* @ext_400660_exit(%struct.State* %0, i64 %5812, %struct.Memory* %5791)
  %5814 = load i64, i64* %PC
  %5815 = tail call %struct.Memory* @__remill_error(%struct.State* %0, i64 %5814, %struct.Memory* %5813)
  ret %struct.Memory* %5815

block_400d86:                                     ; preds = %block_400d7b, %block_400d6a
  %MEMORY.24 = phi %struct.Memory* [ %MEMORY.2, %block_400d6a ], [ %MEMORY.2, %block_400d7b ]
  %5816 = load i64, i64* %PC
  %5817 = add i64 %5816, 5
  %5818 = load i64, i64* %PC
  %5819 = add i64 %5818, 5
  store i64 %5819, i64* %PC
  %5820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5817, i64* %5820, align 8, !tbaa !2428
  br label %block_400d8b

block_400a0c:                                     ; preds = %block_400a1a, %block_4008b0
  %MEMORY.25 = phi %struct.Memory* [ %588, %block_4008b0 ], [ %MEMORY.25, %block_400a1a ]
  %5821 = load i64, i64* %RBP
  %5822 = sub i64 %5821, 48
  %5823 = load i64, i64* %PC
  %5824 = add i64 %5823, 4
  store i64 %5824, i64* %PC
  %5825 = inttoptr i64 %5822 to i64*
  %5826 = load i64, i64* %5825
  store i64 %5826, i64* %RAX, align 8, !tbaa !2428
  %5827 = load i64, i64* %RAX
  %5828 = load i64, i64* %RBP
  %5829 = sub i64 %5828, 40
  %5830 = load i64, i64* %PC
  %5831 = add i64 %5830, 4
  store i64 %5831, i64* %PC
  %5832 = inttoptr i64 %5829 to i64*
  %5833 = load i64, i64* %5832
  %5834 = sub i64 %5827, %5833
  %5835 = icmp ugt i64 %5833, %5827
  %5836 = zext i1 %5835 to i8
  %5837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5836, i8* %5837, align 1, !tbaa !2432
  %5838 = trunc i64 %5834 to i32
  %5839 = and i32 %5838, 255
  %5840 = call i32 @llvm.ctpop.i32(i32 %5839) #16
  %5841 = trunc i32 %5840 to i8
  %5842 = and i8 %5841, 1
  %5843 = xor i8 %5842, 1
  %5844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5843, i8* %5844, align 1, !tbaa !2446
  %5845 = xor i64 %5833, %5827
  %5846 = xor i64 %5845, %5834
  %5847 = lshr i64 %5846, 4
  %5848 = trunc i64 %5847 to i8
  %5849 = and i8 %5848, 1
  %5850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5849, i8* %5850, align 1, !tbaa !2450
  %5851 = icmp eq i64 %5834, 0
  %5852 = zext i1 %5851 to i8
  %5853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5852, i8* %5853, align 1, !tbaa !2447
  %5854 = lshr i64 %5834, 63
  %5855 = trunc i64 %5854 to i8
  %5856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5855, i8* %5856, align 1, !tbaa !2448
  %5857 = lshr i64 %5827, 63
  %5858 = lshr i64 %5833, 63
  %5859 = xor i64 %5858, %5857
  %5860 = xor i64 %5854, %5857
  %5861 = add nuw nsw i64 %5860, %5859
  %5862 = icmp eq i64 %5861, 2
  %5863 = zext i1 %5862 to i8
  %5864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5863, i8* %5864, align 1, !tbaa !2449
  %5865 = load i64, i64* %PC
  %5866 = add i64 %5865, 64
  %5867 = load i64, i64* %PC
  %5868 = add i64 %5867, 6
  %5869 = load i64, i64* %PC
  %5870 = add i64 %5869, 6
  store i64 %5870, i64* %PC
  %5871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5872 = load i8, i8* %5871, align 1, !tbaa !2432
  %5873 = icmp eq i8 %5872, 0
  %5874 = zext i1 %5873 to i8
  store i8 %5874, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %5875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5876 = select i1 %5873, i64 %5866, i64 %5868
  store i64 %5876, i64* %5875, align 8, !tbaa !2428
  %5877 = load i8, i8* %BRANCH_TAKEN
  %5878 = icmp eq i8 %5877, 1
  %5879 = load i64, i64* %RBP
  br i1 %5878, label %block_400a54, label %block_400a1a

block_400dde:                                     ; preds = %block_400da7
  %5880 = load i64, i64* %RBP
  %5881 = sub i64 %5880, 10680
  %5882 = load i64, i64* %PC
  %5883 = add i64 %5882, 11
  store i64 %5883, i64* %PC
  %5884 = inttoptr i64 %5881 to i64*
  store i64 0, i64* %5884
  %5885 = load i64, i64* %RBP
  %5886 = sub i64 %5885, 10681
  %5887 = load i64, i64* %PC
  %5888 = add i64 %5887, 7
  store i64 %5888, i64* %PC
  %5889 = inttoptr i64 %5886 to i8*
  store i8 0, i8* %5889
  %5890 = load i64, i64* %RBP
  %5891 = sub i64 %5890, 10688
  %5892 = load i64, i64* %PC
  %5893 = add i64 %5892, 10
  store i64 %5893, i64* %PC
  %5894 = inttoptr i64 %5891 to i32*
  store i32 -1, i32* %5894
  %5895 = load i64, i64* %RBP
  %5896 = sub i64 %5895, 32
  %5897 = load i64, i64* %PC
  %5898 = add i64 %5897, 4
  store i64 %5898, i64* %PC
  %5899 = inttoptr i64 %5896 to i64*
  %5900 = load i64, i64* %5899
  store i64 %5900, i64* %RAX, align 8, !tbaa !2428
  %5901 = load i64, i64* %RBP
  %5902 = sub i64 %5901, 112
  %5903 = load i64, i64* %RAX
  %5904 = load i64, i64* %PC
  %5905 = add i64 %5904, 4
  store i64 %5905, i64* %PC
  %5906 = inttoptr i64 %5902 to i64*
  store i64 %5903, i64* %5906
  %5907 = load i64, i64* %RBP
  %5908 = sub i64 %5907, 10656
  %5909 = load i64, i64* %PC
  %5910 = add i64 %5909, 8
  store i64 %5910, i64* %PC
  %5911 = inttoptr i64 %5908 to i64*
  %5912 = load i64, i64* %5911
  %5913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5913, align 1, !tbaa !2432
  %5914 = trunc i64 %5912 to i32
  %5915 = and i32 %5914, 255
  %5916 = call i32 @llvm.ctpop.i32(i32 %5915) #16
  %5917 = trunc i32 %5916 to i8
  %5918 = and i8 %5917, 1
  %5919 = xor i8 %5918, 1
  %5920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5919, i8* %5920, align 1, !tbaa !2446
  %5921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5921, align 1, !tbaa !2450
  %5922 = icmp eq i64 %5912, 0
  %5923 = zext i1 %5922 to i8
  %5924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5923, i8* %5924, align 1, !tbaa !2447
  %5925 = lshr i64 %5912, 63
  %5926 = trunc i64 %5925 to i8
  %5927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5926, i8* %5927, align 1, !tbaa !2448
  %5928 = lshr i64 %5912, 63
  %5929 = xor i64 %5925, %5928
  %5930 = add nuw nsw i64 %5929, %5928
  %5931 = icmp eq i64 %5930, 2
  %5932 = zext i1 %5931 to i8
  %5933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5932, i8* %5933, align 1, !tbaa !2449
  %5934 = load i64, i64* %PC
  %5935 = add i64 %5934, 47
  %5936 = load i64, i64* %PC
  %5937 = add i64 %5936, 6
  %5938 = load i64, i64* %PC
  %5939 = add i64 %5938, 6
  store i64 %5939, i64* %PC
  %5940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5941 = load i8, i8* %5940, align 1, !tbaa !2447
  %5942 = icmp eq i8 %5941, 0
  %5943 = zext i1 %5942 to i8
  store i8 %5943, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %5944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5945 = select i1 %5942, i64 %5935, i64 %5937
  store i64 %5945, i64* %5944, align 8, !tbaa !2428
  %5946 = load i8, i8* %BRANCH_TAKEN
  %5947 = icmp eq i8 %5946, 1
  br i1 %5947, label %block_400e39, label %block_400e10

block_401158:                                     ; preds = %block_40114a
  %5948 = sub i64 %4913, 48
  %5949 = load i64, i64* %PC
  %5950 = add i64 %5949, 4
  store i64 %5950, i64* %PC
  %5951 = inttoptr i64 %5948 to i64*
  %5952 = load i64, i64* %5951
  store i64 %5952, i64* %RAX, align 8, !tbaa !2428
  %5953 = load i64, i64* %RBP
  %5954 = load i64, i64* %RAX
  %5955 = mul i64 %5954, 8
  %5956 = add i64 %5953, -12736
  %5957 = add i64 %5956, %5955
  %5958 = load i64, i64* %PC
  %5959 = add i64 %5958, 8
  store i64 %5959, i64* %PC
  %5960 = inttoptr i64 %5957 to i64*
  %5961 = load i64, i64* %5960
  store i64 %5961, i64* %RAX, align 8, !tbaa !2428
  %5962 = load i64, i64* %RBP
  %5963 = sub i64 %5962, 88
  %5964 = load i64, i64* %RAX
  %5965 = load i64, i64* %PC
  %5966 = add i64 %5965, 4
  store i64 %5966, i64* %PC
  %5967 = inttoptr i64 %5963 to i64*
  store i64 %5964, i64* %5967
  %5968 = load i64, i64* %RBP
  %5969 = sub i64 %5968, 48
  %5970 = load i64, i64* %PC
  %5971 = add i64 %5970, 4
  store i64 %5971, i64* %PC
  %5972 = inttoptr i64 %5969 to i64*
  %5973 = load i64, i64* %5972
  store i64 %5973, i64* %RAX, align 8, !tbaa !2428
  %5974 = load i64, i64* %RBP
  %5975 = load i64, i64* %RAX
  %5976 = add i64 %5974, -12992
  %5977 = add i64 %5976, %5975
  %5978 = load i64, i64* %PC
  %5979 = add i64 %5978, 7
  store i64 %5979, i64* %PC
  %5980 = inttoptr i64 %5977 to i8*
  %5981 = load i8, i8* %5980
  store i8 %5981, i8* %CL, align 1, !tbaa !2451
  %5982 = load i64, i64* %RBP
  %5983 = sub i64 %5982, 89
  %5984 = load i8, i8* %CL
  %5985 = zext i8 %5984 to i64
  %5986 = load i64, i64* %PC
  %5987 = add i64 %5986, 3
  store i64 %5987, i64* %PC
  %5988 = inttoptr i64 %5983 to i8*
  store i8 %5984, i8* %5988
  %5989 = load i64, i64* %RBP
  %5990 = sub i64 %5989, 48
  %5991 = load i64, i64* %PC
  %5992 = add i64 %5991, 4
  store i64 %5992, i64* %PC
  %5993 = inttoptr i64 %5990 to i64*
  %5994 = load i64, i64* %5993
  store i64 %5994, i64* %RAX, align 8, !tbaa !2428
  %5995 = load i64, i64* %RBP
  %5996 = sub i64 %5995, 56
  %5997 = load i64, i64* %RAX
  %5998 = load i64, i64* %PC
  %5999 = add i64 %5998, 4
  store i64 %5999, i64* %PC
  %6000 = inttoptr i64 %5996 to i64*
  store i64 %5997, i64* %6000
  br label %block_40117e

block_4010ff:                                     ; preds = %block_4010c9, %block_4010f3
  %MEMORY.26 = phi %struct.Memory* [ %MEMORY.12, %block_4010c9 ], [ %MEMORY.12, %block_4010f3 ]
  %6001 = load i64, i64* %RBP
  %6002 = sub i64 %6001, 72
  %6003 = load i64, i64* %PC
  %6004 = add i64 %6003, 4
  store i64 %6004, i64* %PC
  %6005 = inttoptr i64 %6002 to i64*
  %6006 = load i64, i64* %6005
  store i64 %6006, i64* %RAX, align 8, !tbaa !2428
  %6007 = load i64, i64* %RAX
  %6008 = load i64, i64* %PC
  %6009 = add i64 %6008, 4
  store i64 %6009, i64* %PC
  %6010 = lshr i64 %6007, 63
  %6011 = trunc i64 %6010 to i8
  %6012 = trunc i64 %6007 to i8
  %6013 = and i8 %6012, 1
  %6014 = lshr i64 %6007, 1
  store i64 %6014, i64* %RAX, align 8, !tbaa !2428
  %6015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6013, i8* %6015, align 1, !tbaa !2451
  %6016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6017 = trunc i64 %6014 to i32
  %6018 = and i32 %6017, 255
  %6019 = call i32 @llvm.ctpop.i32(i32 %6018) #16
  %6020 = trunc i32 %6019 to i8
  %6021 = and i8 %6020, 1
  %6022 = xor i8 %6021, 1
  store i8 %6022, i8* %6016, align 1, !tbaa !2451
  %6023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6023, align 1, !tbaa !2451
  %6024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6025 = icmp eq i64 %6014, 0
  %6026 = zext i1 %6025 to i8
  store i8 %6026, i8* %6024, align 1, !tbaa !2451
  %6027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %6027, align 1, !tbaa !2451
  %6028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6011, i8* %6028, align 1, !tbaa !2451
  %6029 = load i64, i64* %RBP
  %6030 = sub i64 %6029, 72
  %6031 = load i64, i64* %RAX
  %6032 = load i64, i64* %PC
  %6033 = add i64 %6032, 4
  store i64 %6033, i64* %PC
  %6034 = inttoptr i64 %6030 to i64*
  store i64 %6031, i64* %6034
  %6035 = load i64, i64* %RBP
  %6036 = sub i64 %6035, 48
  %6037 = load i64, i64* %PC
  %6038 = add i64 %6037, 4
  store i64 %6038, i64* %PC
  %6039 = inttoptr i64 %6036 to i64*
  %6040 = load i64, i64* %6039
  store i64 %6040, i64* %RAX, align 8, !tbaa !2428
  %6041 = load i64, i64* %RAX
  %6042 = load i64, i64* %PC
  %6043 = add i64 %6042, 4
  store i64 %6043, i64* %PC
  %6044 = add i64 1, %6041
  store i64 %6044, i64* %RAX, align 8, !tbaa !2428
  %6045 = icmp ult i64 %6044, %6041
  %6046 = icmp ult i64 %6044, 1
  %6047 = or i1 %6045, %6046
  %6048 = zext i1 %6047 to i8
  %6049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6048, i8* %6049, align 1, !tbaa !2432
  %6050 = trunc i64 %6044 to i32
  %6051 = and i32 %6050, 255
  %6052 = call i32 @llvm.ctpop.i32(i32 %6051) #16
  %6053 = trunc i32 %6052 to i8
  %6054 = and i8 %6053, 1
  %6055 = xor i8 %6054, 1
  %6056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6055, i8* %6056, align 1, !tbaa !2446
  %6057 = xor i64 1, %6041
  %6058 = xor i64 %6057, %6044
  %6059 = lshr i64 %6058, 4
  %6060 = trunc i64 %6059 to i8
  %6061 = and i8 %6060, 1
  %6062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6061, i8* %6062, align 1, !tbaa !2450
  %6063 = icmp eq i64 %6044, 0
  %6064 = zext i1 %6063 to i8
  %6065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6064, i8* %6065, align 1, !tbaa !2447
  %6066 = lshr i64 %6044, 63
  %6067 = trunc i64 %6066 to i8
  %6068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6067, i8* %6068, align 1, !tbaa !2448
  %6069 = lshr i64 %6041, 63
  %6070 = xor i64 %6066, %6069
  %6071 = add nuw nsw i64 %6070, %6066
  %6072 = icmp eq i64 %6071, 2
  %6073 = zext i1 %6072 to i8
  %6074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6073, i8* %6074, align 1, !tbaa !2449
  %6075 = load i64, i64* %RBP
  %6076 = sub i64 %6075, 48
  %6077 = load i64, i64* %RAX
  %6078 = load i64, i64* %PC
  %6079 = add i64 %6078, 4
  store i64 %6079, i64* %PC
  %6080 = inttoptr i64 %6076 to i64*
  store i64 %6077, i64* %6080
  %6081 = load i64, i64* %PC
  %6082 = sub i64 %6081, 105
  %6083 = load i64, i64* %PC
  %6084 = add i64 %6083, 5
  store i64 %6084, i64* %PC
  %6085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6082, i64* %6085, align 8, !tbaa !2428
  br label %block_4010ae

block_400a64:                                     ; preds = %block_400aa1, %block_400a54
  %MEMORY.27 = phi %struct.Memory* [ %MEMORY.25, %block_400a54 ], [ %MEMORY.13, %block_400aa1 ]
  %6086 = load i64, i64* %RBP
  %6087 = sub i64 %6086, 48
  %6088 = load i64, i64* %PC
  %6089 = add i64 %6088, 8
  store i64 %6089, i64* %PC
  %6090 = inttoptr i64 %6087 to i64*
  %6091 = load i64, i64* %6090
  %6092 = sub i64 %6091, 256
  %6093 = icmp ult i64 %6091, 256
  %6094 = zext i1 %6093 to i8
  %6095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6094, i8* %6095, align 1, !tbaa !2432
  %6096 = trunc i64 %6092 to i32
  %6097 = and i32 %6096, 255
  %6098 = call i32 @llvm.ctpop.i32(i32 %6097) #16
  %6099 = trunc i32 %6098 to i8
  %6100 = and i8 %6099, 1
  %6101 = xor i8 %6100, 1
  %6102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6101, i8* %6102, align 1, !tbaa !2446
  %6103 = xor i64 %6091, 256
  %6104 = xor i64 %6103, %6092
  %6105 = lshr i64 %6104, 4
  %6106 = trunc i64 %6105 to i8
  %6107 = and i8 %6106, 1
  %6108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6107, i8* %6108, align 1, !tbaa !2450
  %6109 = icmp eq i64 %6092, 0
  %6110 = zext i1 %6109 to i8
  %6111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6110, i8* %6111, align 1, !tbaa !2447
  %6112 = lshr i64 %6092, 63
  %6113 = trunc i64 %6112 to i8
  %6114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6113, i8* %6114, align 1, !tbaa !2448
  %6115 = lshr i64 %6091, 63
  %6116 = xor i64 %6112, %6115
  %6117 = add nuw nsw i64 %6116, %6115
  %6118 = icmp eq i64 %6117, 2
  %6119 = zext i1 %6118 to i8
  %6120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6119, i8* %6120, align 1, !tbaa !2449
  %6121 = load i64, i64* %PC
  %6122 = add i64 %6121, 75
  %6123 = load i64, i64* %PC
  %6124 = add i64 %6123, 6
  %6125 = load i64, i64* %PC
  %6126 = add i64 %6125, 6
  store i64 %6126, i64* %PC
  %6127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6128 = load i8, i8* %6127, align 1, !tbaa !2432
  %6129 = icmp eq i8 %6128, 0
  %6130 = zext i1 %6129 to i8
  store i8 %6130, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %6131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6132 = select i1 %6129, i64 %6122, i64 %6124
  store i64 %6132, i64* %6131, align 8, !tbaa !2428
  %6133 = load i8, i8* %BRANCH_TAKEN
  %6134 = icmp eq i8 %6133, 1
  %6135 = load i64, i64* %RBP
  br i1 %6134, label %block_400ab7, label %block_400a72

block_400c00:                                     ; preds = %block_400b0d
  %6136 = load i64, i64* %RBP
  %6137 = sub i64 %6136, 64
  %6138 = load i64, i64* %PC
  %6139 = add i64 %6138, 4
  store i64 %6139, i64* %PC
  %6140 = inttoptr i64 %6137 to i64*
  %6141 = load i64, i64* %6140
  store i64 %6141, i64* %RAX, align 8, !tbaa !2428
  %6142 = load i64, i64* %RAX
  %6143 = load i64, i64* %PC
  %6144 = add i64 %6143, 6
  store i64 %6144, i64* %PC
  %6145 = add i64 256, %6142
  store i64 %6145, i64* %RAX, align 8, !tbaa !2428
  %6146 = icmp ult i64 %6145, %6142
  %6147 = icmp ult i64 %6145, 256
  %6148 = or i1 %6146, %6147
  %6149 = zext i1 %6148 to i8
  %6150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6149, i8* %6150, align 1, !tbaa !2432
  %6151 = trunc i64 %6145 to i32
  %6152 = and i32 %6151, 255
  %6153 = call i32 @llvm.ctpop.i32(i32 %6152) #16
  %6154 = trunc i32 %6153 to i8
  %6155 = and i8 %6154, 1
  %6156 = xor i8 %6155, 1
  %6157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6156, i8* %6157, align 1, !tbaa !2446
  %6158 = xor i64 256, %6142
  %6159 = xor i64 %6158, %6145
  %6160 = lshr i64 %6159, 4
  %6161 = trunc i64 %6160 to i8
  %6162 = and i8 %6161, 1
  %6163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6162, i8* %6163, align 1, !tbaa !2450
  %6164 = icmp eq i64 %6145, 0
  %6165 = zext i1 %6164 to i8
  %6166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6165, i8* %6166, align 1, !tbaa !2447
  %6167 = lshr i64 %6145, 63
  %6168 = trunc i64 %6167 to i8
  %6169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6168, i8* %6169, align 1, !tbaa !2448
  %6170 = lshr i64 %6142, 63
  %6171 = xor i64 %6167, %6170
  %6172 = add nuw nsw i64 %6171, %6167
  %6173 = icmp eq i64 %6172, 2
  %6174 = zext i1 %6173 to i8
  %6175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6174, i8* %6175, align 1, !tbaa !2449
  %6176 = load i64, i64* %RBP
  %6177 = load i64, i64* %RAX
  %6178 = mul i64 %6177, 4
  %6179 = add i64 %6176, -8320
  %6180 = add i64 %6179, %6178
  %6181 = load i64, i64* %PC
  %6182 = add i64 %6181, 11
  store i64 %6182, i64* %PC
  %6183 = inttoptr i64 %6180 to i32*
  store i32 0, i32* %6183
  %6184 = load i64, i64* %RBP
  %6185 = sub i64 %6184, 10656
  %6186 = load i64, i64* %PC
  %6187 = add i64 %6186, 11
  store i64 %6187, i64* %PC
  %6188 = inttoptr i64 %6185 to i64*
  store i64 0, i64* %6188
  %6189 = load i64, i64* %RBP
  %6190 = sub i64 %6189, 10664
  %6191 = load i64, i64* %PC
  %6192 = add i64 %6191, 11
  store i64 %6192, i64* %PC
  %6193 = inttoptr i64 %6190 to i64*
  store i64 0, i64* %6193
  %6194 = load i64, i64* %RBP
  %6195 = sub i64 %6194, 10640
  %6196 = load i64, i64* %PC
  %6197 = add i64 %6196, 11
  store i64 %6197, i64* %PC
  %6198 = inttoptr i64 %6195 to i64*
  store i64 0, i64* %6198
  br label %block_400c36
}

; Function Attrs: noinline
define %struct.Memory* @sub_401650___libc_csu_fini(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_401650:
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

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_401650___libc_csu_fini() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x401650;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @4, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_401650___libc_csu_fini_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_401650___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_4015e0___libc_csu_init() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4015e0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @5, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_4015e0___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_4015e0___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @main() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4014b0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @6, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_4014b0_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_602100___libc_start_main(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6020d0_fprintf(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6020c8_strcmp(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6020e0_fflush(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @fflush to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6020f0_free(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6020d8_malloc(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_400660_exit(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exit to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6020f8_memset(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @compdecomp() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4008b0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @7, void ()** @2)
  ret void
}

define internal %struct.Memory* @compdecomp_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_4008b0_compdecomp(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @generate_test_data() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400760;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @8, void ()** @2)
  ret void
}

define internal %struct.Memory* @generate_test_data_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400760_generate_test_data(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.init_proc() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4005d8;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @9, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_4005d8__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.term_proc() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x401654;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @10, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_401654__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
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
  call void @callback_sub_4015e0___libc_csu_init()
  ret void
}

define internal void @__mcsema_destructor() {
  call void @callback_sub_401650___libc_csu_fini()
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
!2451 = !{!2430, !2430, i64 0}
!2452 = !{!2453, !2453, i64 0}
!2453 = !{!"double", !2430, i64 0}
!2454 = !{!2445, !2445, i64 0}
