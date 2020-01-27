; ModuleID = 'binary/test.mcsema.calls_renamed.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_400590__init_type = type <{ [23 x i8] }>
%seg_4005b0__plt_type = type <{ [128 x i8] }>
%seg_400630__text_type = type <{ [4066 x i8] }>
%seg_401614__fini_type = type <{ [9 x i8] }>
%seg_401620__rodata_type = type <{ [4 x i8], [33 x i8], [26 x i8], [33 x i8], [23 x i8], [7 x i8], [35 x i8] }>
%seg_4016c4__eh_frame_hdr_type = type <{ [92 x i8] }>
%seg_401720__eh_frame_type = type <{ [368 x i8] }>
%seg_601df0__init_array_type = type <{ i64, i64 }>
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
@seg_400590__init = internal constant %seg_400590__init_type <{ [23 x i8] c"H\83\EC\08H\8B\05]\1A \00H\85\C0t\02\FF\D0H\83\C4\08\C3" }>
@seg_4005b0__plt = internal constant %seg_4005b0__plt_type <{ [128 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF%R\1A \00\00\00\00\00\00\00\00\00\00\00\FF%J\1A \00\00\00\00\00\00\00\00\00\00\00\FF%B\1A \00\00\00\00\00\00\00\00\00\00\00\FF%:\1A \00\00\00\00\00\00\00\00\00\00\00\FF%2\1A \00\00\00\00\00\00\00\00\00\00\00\FF%*\1A \00\00\00\00\00\00\00\00\00\00\00\FF%\22\1A \00\00\00\00\00\00\00\00\00\00\00" }>
@seg_400630__text = internal constant %seg_400630__text_type <{ [4066 x i8] c"1\EDI\89\D1^H\89\E2H\83\E4\F0PTI\C7\C0\10\16@\00H\C7\C1\A0\15@\00H\C7\C7p\14@\00\FF\15\96\19 \00\F4\0F\1FD\00\00\F3\C3f.\0F\1F\84\00\00\00\00\00\0F\1F@\00U\B8h `\00H=h `\00H\89\E5t\17\B8\00\00\00\00H\85\C0t\0D]\BFh `\00\FF\E0\0F\1FD\00\00]\C3f\0F\1FD\00\00\BEh `\00UH\81\EEh `\00H\89\E5H\C1\FE\03H\89\F0H\C1\E8?H\01\C6H\D1\FEt\15\B8\00\00\00\00H\85\C0t\0B]\BFh `\00\FF\E0\0F\1F\00]\C3f\0F\1FD\00\00\80=\C1\19 \00\00u\17UH\89\E5\E8~\FF\FF\FF\C6\05\AF\19 \00\01]\C3\0F\1FD\00\00\F3\C3\0F\1F@\00f.\0F\1F\84\00\00\00\00\00UH\89\E5]\EB\89f\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC0H\B8$\16@\00\00\00\00\00H\89}\F8H\89E\F0H\8B}\F8\E8\BD\FE\FF\FFH\89E\E8H\8BE\E8H\89E\E0\C7E\DC\00\00\00\00HcE\DCH;E\F8\0F\834\00\00\00H\8BE\F0H\89E\D0\E8?\00\00\00H\8BM\D0\8A\14\01H\8BE\E0\88\10H\8BE\E0H\83\C0\01H\89E\E0\8BE\DC\83\C0\01\89E\DC\E9\BE\FF\FF\FFH\8BE\E8H\83\C40]\C3fffff.\0F\1F\84\00\00\00\00\00UH\89\E5\B8\1D\F3\01\00\89\C1H\8B\14%` `\00H\81\F2$\D9[\07H\89\14%` `\00H\8B\04%` `\00H\99H\F7\F9H\89E\F8H\8B\04%` `\00HiM\F8\1D\F3\01\00H)\C8Hi\C0\A7A\00\00HiM\F8\14\0B\00\00H)\C8H\89\04%` `\00H\83<%` `\00\00\0F\8D\16\00\00\00H\8B\04%` `\00H\05\FF\FF\FF\7FH\89\04%` `\00\B8 \00\00\00\89\C1H\8B\04%` `\00H\99H\F7\F9H\89U\F0H\8B\0C%` `\00H\81\F1$\D9[\07H\89\0C%` `\00H\8BM\F0H\89\C8]\C3\0F\1F\00UH\89\E5AWAVSH\81\EC\183\00\00H\89}\E0H\89u\D8H\8Bu\E0H\89u\90H\8Bu\D8H\83\C6\01H\89\F7\E8`\FD\FF\FF1\C9\BA\00\01\00\00H\8D\BD\80\D6\FF\FFA\B8\00\08\00\00D\89\C6L\8D\8D\80\D7\FF\FFL\8D\95\80\DF\FF\FFL\8D\9D\80\E7\FF\FFA\B8\00\10\00\00D\89\C3L\8D\B5\80\EF\FF\FFH\89E\88H\8BE\88L\8B}\D8I\83\C7\01I\C1\E7\00H\89\BD0\CD\FF\FFH\89\C7H\89\B5(\CD\FF\FF\89\CEH\89\95 \CD\FF\FFL\89\FAL\89\B5\18\CD\FF\FF\89\8D\14\CD\FF\FFL\89\95\08\CD\FF\FFL\89\9D\00\CD\FF\FFH\89\9D\F8\CC\FF\FFL\89\8D\F0\CC\FF\FF\E8\95\FC\FF\FFH\8B\85\18\CD\FF\FFH\89\C7\8B\B5\14\CD\FF\FFH\8B\95\F8\CC\FF\FF\E8y\FC\FF\FFH\8B\85\00\CD\FF\FFH\89\C7\8B\B5\14\CD\FF\FFH\8B\95(\CD\FF\FF\E8]\FC\FF\FFH\8B\85\08\CD\FF\FFH\89\C7\8B\B5\14\CD\FF\FFH\8B\95(\CD\FF\FF\E8A\FC\FF\FFH\8B\85\F0\CC\FF\FFH\89\C7\8B\B5\14\CD\FF\FFH\8B\95(\CD\FF\FF\E8%\FC\FF\FFH\8B\BD0\CD\FF\FF\8B\B5\14\CD\FF\FFH\8B\95 \CD\FF\FF\E8\0C\FC\FF\FFH\C7E\D0\00\00\00\00H\8BE\D0H;E\D8\0F\83:\00\00\00H\8BE\90\0F\B6\08\89\C8H\8B\94\C5\80\EF\FF\FFH\83\C2\01H\89\94\C5\80\EF\FF\FFH\8BE\90H\83\C0\01H\89E\90H\8BE\D0H\83\C0\01H\89E\D0\E9\B8\FF\FF\FFH\C7E\C0\00\00\00\00H\C7E\D0\00\00\00\00H\81}\D0\00\01\00\00\0F\83E\00\00\00H\8BE\D0H\83\BC\C5\80\EF\FF\FF\00\0F\84\1C\00\00\00H\8BE\D0H\8BM\C0H\89\84\CD\80\E7\FF\FFH\8BE\C0H\83\C0\01H\89E\C0\E9\00\00\00\00H\8BE\D0H\83\C0\01H\89E\D0\E9\AD\FF\FF\FFH\8BE\C0H\89E\D0H\83}\D0\00\0F\86>\00\00\00H\8D\B5\80\E7\FF\FFH\8D\BD\80\EF\FF\FFH\8BE\C0\89\C1H\8BE\D0\89\C2\89\95\EC\CC\FF\FF\89\CA\8B\8D\EC\CC\FF\FF\E8\B9\08\00\00H\8BE\D0H\83\C0\FFH\89E\D0\E9\B7\FF\FF\FF\E9\00\00\00\00H\83}\C0\01\0F\86\E8\00\00\00\B9\01\00\00\00H\8D\B5\80\E7\FF\FFH\8D\BD\80\EF\FF\FFH\8BE\C0H\83\C0\FFH\89E\C0H\8B\85\80\E7\FF\FFH\89\85x\D6\FF\FFH\8BE\C0H\8B\84\C5\80\E7\FF\FFH\89\85\80\E7\FF\FFH\8BE\C0\89\C2\E8M\08\00\00\B9\01\00\00\00H\8D\B5\80\E7\FF\FFH\8D\BD\80\EF\FF\FFH\C7\C0\00\FF\FF\FFL\8B\85\80\E7\FF\FFN\8B\84\C5\80\EF\FF\FFL\8B\8Dx\D6\FF\FFN\03\84\CD\80\EF\FF\FFL\8BM\C0I\81\C1\00\01\00\00N\89\84\CD\80\EF\FF\FFL\8BE\C0I\81\C0\00\01\00\00D\89\C2L\8B\85x\D6\FF\FFB\89\94\85\80\DF\FF\FFH+E\C0\89\C2H\8B\85\80\E7\FF\FF\89\94\85\80\DF\FF\FFH\8BE\C0H\05\00\01\00\00H\89\85\80\E7\FF\FFH\8BE\C0\89\C2\E8\B5\07\00\00\E9\0D\FF\FF\FFH\8BE\C0H\05\00\01\00\00\C7\84\85\80\DF\FF\FF\00\00\00\00H\C7\85`\D6\FF\FF\00\00\00\00H\C7\85X\D6\FF\FF\00\00\00\00H\C7\85p\D6\FF\FF\00\00\00\00H\81\BDp\D6\FF\FF\00\01\00\00\0F\83`\01\00\00H\8B\85p\D6\FF\FFH\83\BC\C5\80\EF\FF\FF\00\0F\85'\00\00\00H\8B\85p\D6\FF\FFH\C7\84\C5\80\D7\FF\FF\00\00\00\00H\8B\85p\D6\FF\FF\C6\84\05\80\D6\FF\FF\00\E9\07\01\00\00H\C7E\D0\00\00\00\00H\C7E\C8\01\00\00\00H\C7\85h\D6\FF\FF\00\00\00\00H\8B\85p\D6\FF\FF\8B\8C\85\80\DF\FF\FF\89\8DT\D6\FF\FF\83\BDT\D6\FF\FF\00\0F\84^\00\00\00\83\BDT\D6\FF\FF\00\0F\8D \00\00\001\C0H\8BM\C8H\03\8Dh\D6\FF\FFH\89\8Dh\D6\FF\FF+\85T\D6\FF\FF\89\85T\D6\FF\FFHc\85T\D6\FF\FF\8B\8C\85\80\DF\FF\FF\89\8DT\D6\FF\FFH\8BE\C8H\C1\E0\01H\89E\C8H\8BE\D0H\83\C0\01H\89E\D0\E9\95\FF\FF\FFH\8B\85h\D6\FF\FFH\8B\8Dp\D6\FF\FFH\89\84\CD\80\D7\FF\FFH\8BE\D0\88\C2H\8B\85p\D6\FF\FF\88\94\05\80\D6\FF\FFH\8B\85h\D6\FF\FFH;\85`\D6\FF\FF\0F\86\0E\00\00\00H\8B\85h\D6\FF\FFH\89\85`\D6\FF\FFH\8BE\D0H;\85X\D6\FF\FF\0F\86\0B\00\00\00H\8BE\D0H\89\85X\D6\FF\FF\E9\00\00\00\00\E9\00\00\00\00H\8B\85p\D6\FF\FFH\83\C0\01H\89\85p\D6\FF\FF\E9\8F\FE\FF\FFH\83\BDX\D6\FF\FF@\0F\86)\00\00\00H\BEE\16@\00\00\00\00\00H\8B<%\A0 `\00\B0\00\E8b\F8\FF\FF\BF\01\00\00\00\89\85\E8\CC\FF\FF\E8\82\F8\FF\FFH\C7\85H\D6\FF\FF\00\00\00\00\C6\85G\D6\FF\FF\00\C7\85@\D6\FF\FF\FF\FF\FF\FFH\8BE\E0H\89E\90H\83\BD`\D6\FF\FF\00\0F\85)\00\00\00H\BE_\16@\00\00\00\00\00H\8B<%\A0 `\00\B0\00\E8\07\F8\FF\FF\BF\01\00\00\00\89\85\E4\CC\FF\FF\E8'\F8\FF\FFH\C7E\C8\00\00\00\00H\8BE\C8H;E\D8\0F\83[\01\00\00\B8\01\00\00\00H\8BM\90\0F\B6\11\89\D1\0F\B6\94\0D\80\D6\FF\FF\83\EA\01\89\D1\D3\E0Hc\F0H\89u\B8H\C7E\D0\00\00\00\00H\8BE\D0H\8BM\90\0F\B6\11\89\D1\0F\B6\94\0D\80\D6\FF\FF\89\D1H9\C8\0F\83\F2\00\00\00\83\BD@\D6\FF\FF\07\0F\85v\00\00\00\8A\85G\D6\FF\FFH\8BM\88H\8B\95H\D6\FF\FF\88\04\11H\8B\8DH\D6\FF\FFH\83\C1\01H\89\8DH\D6\FF\FFH\8B\8DH\D6\FF\FFH;M\D8\0F\85)\00\00\00H\BE\80\16@\00\00\00\00\00H\8B<%\A0 `\00\B0\00\E88\F7\FF\FF\BF\01\00\00\00\89\85\E0\CC\FF\FF\E8X\F7\FF\FF\C7\85@\D6\FF\FF\00\00\00\00\C6\85G\D6\FF\FF\00\E9!\00\00\00\8B\85@\D6\FF\FF\83\C0\01\89\85@\D6\FF\FF\0F\BE\85G\D6\FF\FF\C1\E0\01\88\C1\88\8DG\D6\FF\FFH\8BE\90\0F\B6\08\89\C8H\8B\84\C5\80\D7\FF\FFH#E\B8H\83\F8\00\0F\84\12\00\00\00\0F\BE\85G\D6\FF\FF\83\C8\01\88\C1\88\8DG\D6\FF\FFH\8BE\B8H\C1\E8\01H\89E\B8H\8BE\D0H\83\C0\01H\89E\D0\E9\EE\FE\FF\FFH\8BE\90H\83\C0\01H\89E\90H\8BE\C8H\83\C0\01H\89E\C8\E9\97\FE\FF\FFH\8D\85@\CD\FF\FF1\F6\B9\00\08\00\00\89\CAH\8D\BD@\CE\FF\FF\B9\07\00\00\00+\8D@\D6\FF\FFD\0F\BE\85G\D6\FF\FFA\D3\E0D\88\C1\88\8DG\D6\FF\FF\8A\8DG\D6\FF\FFL\8BM\88L\8B\95H\D6\FF\FFC\88\0C\11L\8B\8DH\D6\FF\FFI\83\C1\01L\89\8DH\D6\FF\FFH\89\85\D8\CC\FF\FF\E8\FD\F5\FF\FFH\8B\85\D8\CC\FF\FFH\89\858\CD\FF\FFH\C7E\C8\00\00\00\00H\81}\C8\00\01\00\00\0F\83\0B\01\00\00H\8BE\C8\88\C1H\8B\858\CD\FF\FF\88\08H\8B\858\CD\FF\FFH\83\C0\01H\89\858\CD\FF\FFH\8BE\C8H\8B\84\C5\80\D7\FF\FFH\8BU\C8\0F\B6\B4\15\80\D6\FF\FF\89\F2H\09\D0H\83\F8\00\0F\84\AD\00\00\00\B8\01\00\00\00H\C7E\B0\00\00\00\00H\8BM\C8\0F\B6\94\0D\80\D6\FF\FF\83\EA\01\89\D1\D3\E0Hc\F0H\89u\B8H\C7E\D0\00\00\00\00H\8BE\D0H\8BM\C8\0F\B6\94\0D\80\D6\FF\FF\89\D1H9\C8\0F\83S\00\00\00H\8BE\B0H\C1\E0\01H\83\C0\01H\89E\B0H\8BE\C8H\8B\84\C5\80\D7\FF\FFH#E\B8H\83\F8\00\0F\84\0C\00\00\00H\8BE\B0H\83\C0\01H\89E\B0H\8BE\B8H\C1\E8\01H\89E\B8H\8BE\D0H\83\C0\01H\89E\D0\E9\92\FF\FF\FFH\8BE\B0H\8BM\C8H\89\84\CD@\CE\FF\FF\E9\00\00\00\00H\8BE\C8H\83\C0\01H\89E\C8\E9\E7\FE\FF\FFH\C7E\D0\01\00\00\00H\81}\D0\00\01\00\00\0F\83\E1\00\00\00H\8BE\D0H\8B\84\C5@\CE\FF\FFH\89E\A8H\8BE\D0\8A\8C\05@\CD\FF\FF\88M\A7H\8BE\D0H\89E\C81\C0\88\C1H\83}\C8\00\88\8D\D7\CC\FF\FF\0F\84\1D\00\00\00H\8BE\C8H\83\E8\01H\8B\84\C5@\CE\FF\FFH;E\A8\0F\97\C1\88\8D\D7\CC\FF\FF\8A\85\D7\CC\FF\FF\A8\01\0F\85\05\00\00\00\E9G\00\00\00H\8BE\C8H\83\E8\01H\8B\84\C5@\CE\FF\FFH\8BM\C8H\89\84\CD@\CE\FF\FFH\8BE\C8H\83\E8\01\8A\94\05@\CD\FF\FFH\8BE\C8\88\94\05@\CD\FF\FFH\8BE\C8H\83\C0\FFH\89E\C8\E9t\FF\FF\FFH\8BE\A8H\8BM\C8H\89\84\CD@\CE\FF\FF\8AU\A7H\8BE\C8\88\94\05@\CD\FF\FFH\8BE\D0H\83\C0\01H\89E\D0\E9\11\FF\FF\FFH\C7E\C8\00\00\00\00H\8BE\C8H\83\BC\C5@\CE\FF\FF\00\0F\85\16\00\00\00\E9\00\00\00\00H\8BE\C8H\83\C0\01H\89E\C8\E9\D7\FF\FF\FFH\C7E\B0\00\00\00\00H\8BE\C8H\89E\D0H\C7E\B8\80\00\00\00H\C7E\C0\00\00\00\00H\8BE\88H\89E\98H\8BE\E0H\89E\90H\8BE\C0H;E\D8\0F\83\E3\00\00\00H\8BE\B0H\C1\E0\01H\83\C0\01H\89E\B0H\8BE\98\0F\B6\08\89\C8H#E\B8H\83\F8\00\0F\84\0C\00\00\00H\8BE\B0H\83\C0\01H\89E\B0\E9\00\00\00\00H\8BE\D0H\8B\84\C5@\CE\FF\FFH;E\B0\0F\83\11\00\00\00H\8BE\D0H\83\C0\01H\89E\D0\E9\D9\FF\FF\FFH\8BE\B0H\8BM\D0H;\84\CD@\CE\FF\FF\0F\859\00\00\00H\8BE\D0\8A\8C\05@\CD\FF\FFH\8BE\90\88\08H\8BE\90H\83\C0\01H\89E\90H\8BE\C0H\83\C0\01H\89E\C0H\C7E\B0\00\00\00\00H\8BE\C8H\89E\D0H\83}\B8\01\0F\86\11\00\00\00H\8BE\B8H\C1\E8\01H\89E\B8\E9\14\00\00\00H\C7E\B8\80\00\00\00H\8BE\98H\83\C0\01H\89E\98\E9\0F\FF\FF\FFH\8B}\88\E8l\F2\FF\FFH\81\C4\183\00\00[A^A_]\C3fffff.\0F\1F\84\00\00\00\00\00UH\89\E5H\89}\F8H\89u\F0\89U\EC\89M\E8H\8Bu\F0H\83\C6\F8H\89u\F0H\8Bu\F0Hc}\E8H\8B4\FE\89\F1\89M\E0\B8\02\00\00\00\8BM\E8\8BU\EC\89E\DC\89\D0\99\8Bu\DC\F7\FE9\C1\0F\8F\9F\00\00\00\8BE\E8\03E\E8\89E\E4\8BE\E4;E\EC\0F\8D<\00\00\00H\8BE\F8H\8BM\F0HcU\E4H\8B\0C\D1H\8B\04\C8H\8BM\F8H\8BU\F0\8Bu\E4\83\C6\01Hc\FEH\8B\14\FAH;\04\D1\0F\86\09\00\00\00\8BE\E4\83\C0\01\89E\E4H\8BE\F8HcM\E0H\8B\04\C8H\8BM\F8H\8BU\F0Hcu\E4H\8B\14\F2H;\04\D1\0F\83\05\00\00\00\E9#\00\00\00H\8BE\F0HcM\E4H\8B\04\C8H\8BM\F0HcU\E8H\89\04\D1\8Bu\E4\89u\E8\E9C\FF\FF\FFHcE\E0H\8BM\F0HcU\E8H\89\04\D1]\C3f\90UH\89\E5H\83\EC@\C7E\FC\00\00\00\00\89}\F8H\89u\F0\C6E\EB\00\83}\F8\01\0F\8EQ\00\00\00\C7E\EC\01\00\00\00\8BE\EC;E\F8\0F\8D9\00\00\00H\8BE\F0H\8Bx\08\B9\97\16@\00\89\CE\E8%\F1\FF\FF\83\F8\00\0F\85\09\00\00\00\C6E\EB\01\E9\13\00\00\00\E9\00\00\00\00\8BE\EC\83\C0\01\89E\EC\E9\BB\FF\FF\FF\E9\00\00\00\00\B8\80\96\98\00\89\C7\E8/\F2\FF\FFH\89E\E0\C7E\EC\00\00\00\00\83}\EC\1E\0F\8D\1E\00\00\00\B8\80\96\98\00\89\C6H\8B}\E0\E8Z\F3\FF\FF\8BE\EC\83\C0\01\89E\EC\E9\D8\FF\FF\FF\0FW\C0\F2\0F\11E\D8H\8B}\E0\E8\8B\F0\FF\FF\F6E\EB\01\0F\84&\00\00\00H\BE\9B\16@\00\00\00\00\00H\8B<%\80 `\00\F2\0F\10E\D8\B0\01\E8\93\F0\FF\FF\89E\D4\E9!\00\00\00H\BE\9E\16@\00\00\00\00\00H\8B<%\80 `\00\F2\0F\10E\D8\B0\01\E8m\F0\FF\FF\89E\D0H\8B<%\80 `\00\E8}\F0\FF\FF1\C9\89E\CC\89\C8H\83\C4@]\C3AWAVI\89\D7AUATL\8D%>\08 \00UH\8D->\08 \00SA\89\FDI\89\F6L)\E5H\83\EC\08H\C1\FD\03\E8\BF\EF\FF\FFH\85\EDt 1\DB\0F\1F\84\00\00\00\00\00L\89\FAL\89\F6D\89\EFA\FF\14\DCH\83\C3\01H9\DDu\EAH\83\C4\08[]A\5CA]A^A_\C3\90f.\0F\1F\84\00\00\00\00\00\F3\C3" }>
@seg_401614__fini = internal constant %seg_401614__fini_type <{ [9 x i8] c"H\83\EC\08H\83\C4\08\C3" }>
@seg_401620__rodata = internal constant %seg_401620__rodata_type <{ [4 x i8] c"\01\00\02\00", [33 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZ012345\00", [26 x i8] c"error: bit code overflow\0A\00", [33 x i8] c"error: file has only one value!\0A\00", [23 x i8] c"error: no compression\0A\00", [7 x i8] c"-ga\00%f\00", [35 x i8] c"\0Ahuffbench (Std. C) run time: %f\0A\0A\00" }>
@seg_4016c4__eh_frame_hdr = internal constant %seg_4016c4__eh_frame_hdr_type <{ [92 x i8] c"\01\1B\03;X\00\00\00\0A\00\00\00\EC\EE\FF\FF\B4\00\00\00l\EF\FF\FFt\00\00\00\9C\EF\FF\FF\A0\00\00\00\5C\F0\FF\FF\DC\00\00\00\EC\F0\FF\FF\F8\00\00\00\AC\F1\FF\FF\14\01\00\00\AC\FC\FF\FF4\01\00\00\AC\FD\FF\FFP\01\00\00\DC\FE\FF\FFl\01\00\00L\FF\FF\FF\B4\01\00\00" }>
@seg_401720__eh_frame = internal constant %seg_401720__eh_frame_type <{ [368 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00\F0\EE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00\F4\EE\FF\FF\02\00\00\00\00\00\00\00$\00\00\000\00\00\000\EE\FF\FF\80\00\00\00\00\0E\10F\0E\18J\0F\0Bw\08\80\00?\1A;*3$\22\00\00\00\00\18\00\00\00X\00\00\00x\EF\FF\FF\82\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00t\00\00\00\EC\EF\FF\FF\BD\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\1C\00\00\00\90\00\00\00\90\F0\FF\FF\F2\0A\00\00\00A\0E\10\86\02C\0D\06L\83\05\8E\04\8F\03\18\00\00\00\B0\00\00\00p\FB\FF\FF\FE\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\CC\00\00\00T\FC\FF\FF0\01\00\00\00A\0E\10\86\02C\0D\06\00\00\00D\00\00\00\E8\00\00\00h\FD\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\000\01\00\00\90\FD\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@seg_601df0__init_array = internal global %seg_601df0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_400710_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_4006e0___do_global_dtors_aux to i64) }>
@seg_601ff0__got = internal global %seg_601ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@seg_602000__got_plt = internal global %seg_602000__got_plt_type <{ [24 x i8] zeroinitializer, i64 ptrtoint (i64 (i64)* @free to i64), i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), i64 ptrtoint (i64 (i64)* @malloc to i64), i64 ptrtoint (i64 (i64)* @fflush to i64), i64 ptrtoint (i64 (i64)* @exit to i64) }>
@seg_602050__data = internal global %seg_602050__data_type <{ [16 x i8] zeroinitializer, [8 x i8] c"-\05\00\00\00\00\00\00" }>
@seg_602080__bss = internal global %seg_602080__bss_type zeroinitializer
@0 = internal global i1 false
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400710_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4006e0___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401610___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4015a0___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @compdecomp_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@10 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @generate_test_data_wrapper
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_destructor, i8* null }]
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]

declare %struct.Memory* @sub_400720_generate_test_data_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400870_compdecomp_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400670_deregister_tm_clones_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_401370_heap_adjust_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4007b0_random4_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

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
declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @strcmp(i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @memset(i64, i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @free(i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @fflush(i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @fprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @exit(i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @malloc(i64) #13

; Function Attrs: noinline
define %struct.Memory* @sub_400670_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  br i1 %80, label %block_400698, label %block_400681

block_400698:                                     ; preds = %block_400681, %block_400693, %block_400670
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400670 ], [ %2, %block_400681 ], [ %2, %block_400693 ]
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

block_40069a:                                     ; preds = %block_40068b
  %96 = load i64, i64* %RAX
  %97 = load i64, i64* %RAX
  %98 = add i64 %97, %96
  %99 = load i16, i16* %AX
  %100 = zext i16 %99 to i64
  %101 = load i64, i64* %PC
  %102 = add i64 %101, 6
  store i64 %102, i64* %PC
  %103 = load i64, i64* %PC
  %104 = tail call %struct.Memory* @sub_4006a0_register_tm_clones(%struct.State* %0, i64 %103, %struct.Memory* %2)
  ret %struct.Memory* %104

block_400693:                                     ; preds = %block_40068b
  %105 = load i64, i64* %RAX
  %106 = load i64, i64* %RAX
  %107 = add i64 %106, %105
  %108 = load i32, i32* %EAX
  %109 = zext i32 %108 to i64
  %110 = load i64, i64* %PC
  %111 = add i64 %110, 5
  store i64 %111, i64* %PC
  br label %block_400698

block_40068b:                                     ; preds = %block_400681
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
    i64 4195994, label %block_40069a
    i64 4195987, label %block_400693
  ]

block_400681:                                     ; preds = %block_400670
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
  br i1 %161, label %block_400698, label %block_40068b

; <label>:162:                                    ; preds = %block_40068b
  %163 = load i64, i64* %PC
  %164 = tail call %struct.Memory* @__remill_jump(%struct.State* %0, i64 %163, %struct.Memory* %2)
  ret %struct.Memory* %164
}

; Function Attrs: noinline
define %struct.Memory* @sub_400660__dl_relocate_static_pie(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400660:
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
define %struct.Memory* @sub_401610___libc_csu_fini(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_401610:
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
define %struct.Memory* @sub_401614__term_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_401614:
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
define %struct.Memory* @sub_401470_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_401470:
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
  store i8 %126, i8* %127, align 1, !tbaa !2447
  %128 = icmp eq i32 %112, 0
  %129 = zext i1 %128 to i8
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %129, i8* %130, align 1, !tbaa !2448
  %131 = lshr i32 %112, 31
  %132 = trunc i32 %131 to i8
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %132, i8* %133, align 1, !tbaa !2449
  %134 = lshr i32 %111, 31
  %135 = xor i32 %131, %134
  %136 = add nuw nsw i32 %135, %134
  %137 = icmp eq i32 %136, 2
  %138 = zext i1 %137 to i8
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %138, i8* %139, align 1, !tbaa !2450
  %140 = load i64, i64* %PC
  %141 = add i64 %140, 87
  %142 = load i64, i64* %PC
  %143 = add i64 %142, 6
  %144 = load i64, i64* %PC
  %145 = add i64 %144, 6
  store i64 %145, i64* %PC
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %147 = load i8, i8* %146, align 1, !tbaa !2448
  %148 = icmp ne i8 %147, 0
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %150 = load i8, i8* %149, align 1, !tbaa !2449
  %151 = icmp ne i8 %150, 0
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %153 = load i8, i8* %152, align 1, !tbaa !2450
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
  br i1 %161, label %block_4014e5, label %block_401494

block_4014e5:                                     ; preds = %block_4014e0, %block_401470
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_401470 ], [ %MEMORY.4, %block_4014e0 ]
  %162 = load i64, i64* %PC
  %163 = add i64 %162, 5
  store i64 %163, i64* %PC
  store i64 10000000, i64* %RAX, align 8, !tbaa !2428
  %164 = load i32, i32* %EAX
  %165 = zext i32 %164 to i64
  %166 = load i64, i64* %PC
  %167 = add i64 %166, 2
  store i64 %167, i64* %PC
  %168 = and i64 %165, 4294967295
  store i64 %168, i64* %RDI, align 8, !tbaa !2428
  %169 = load i64, i64* %PC
  %170 = sub i64 %169, 3532
  %171 = load i64, i64* %PC
  %172 = add i64 %171, 5
  %173 = load i64, i64* %PC
  %174 = add i64 %173, 5
  store i64 %174, i64* %PC
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %176 = load i64, i64* %175, align 8, !tbaa !2428
  %177 = add i64 %176, -8
  %178 = inttoptr i64 %177 to i64*
  store i64 %172, i64* %178
  store i64 %177, i64* %175, align 8, !tbaa !2428
  %179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %170, i64* %179, align 8, !tbaa !2428
  %180 = load i64, i64* %PC
  %181 = call %struct.Memory* @sub_400720_generate_test_data_renamed_(%struct.State* %0, i64 %180, %struct.Memory* %MEMORY.0)
  %182 = load i64, i64* %RBP
  %183 = sub i64 %182, 32
  %184 = load i64, i64* %RAX
  %185 = load i64, i64* %PC
  %186 = add i64 %185, 4
  store i64 %186, i64* %PC
  %187 = inttoptr i64 %183 to i64*
  store i64 %184, i64* %187
  %188 = load i64, i64* %RBP
  %189 = sub i64 %188, 20
  %190 = load i64, i64* %PC
  %191 = add i64 %190, 7
  store i64 %191, i64* %PC
  %192 = inttoptr i64 %189 to i32*
  store i32 0, i32* %192
  br label %block_4014fc

block_40149b:                                     ; preds = %block_4014cd, %block_401494
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_401494 ], [ %546, %block_4014cd ]
  %193 = load i64, i64* %RBP
  %194 = sub i64 %193, 20
  %195 = load i64, i64* %PC
  %196 = add i64 %195, 3
  store i64 %196, i64* %PC
  %197 = inttoptr i64 %194 to i32*
  %198 = load i32, i32* %197
  %199 = zext i32 %198 to i64
  store i64 %199, i64* %RAX, align 8, !tbaa !2428
  %200 = load i32, i32* %EAX
  %201 = zext i32 %200 to i64
  %202 = load i64, i64* %RBP
  %203 = sub i64 %202, 8
  %204 = load i64, i64* %PC
  %205 = add i64 %204, 3
  store i64 %205, i64* %PC
  %206 = inttoptr i64 %203 to i32*
  %207 = load i32, i32* %206
  %208 = sub i32 %200, %207
  %209 = icmp ult i32 %200, %207
  %210 = zext i1 %209 to i8
  %211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %210, i8* %211, align 1, !tbaa !2432
  %212 = and i32 %208, 255
  %213 = call i32 @llvm.ctpop.i32(i32 %212) #16
  %214 = trunc i32 %213 to i8
  %215 = and i8 %214, 1
  %216 = xor i8 %215, 1
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %216, i8* %217, align 1, !tbaa !2446
  %218 = xor i32 %207, %200
  %219 = xor i32 %218, %208
  %220 = lshr i32 %219, 4
  %221 = trunc i32 %220 to i8
  %222 = and i8 %221, 1
  %223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %222, i8* %223, align 1, !tbaa !2447
  %224 = icmp eq i32 %208, 0
  %225 = zext i1 %224 to i8
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %225, i8* %226, align 1, !tbaa !2448
  %227 = lshr i32 %208, 31
  %228 = trunc i32 %227 to i8
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %228, i8* %229, align 1, !tbaa !2449
  %230 = lshr i32 %200, 31
  %231 = lshr i32 %207, 31
  %232 = xor i32 %231, %230
  %233 = xor i32 %227, %230
  %234 = add nuw nsw i32 %233, %232
  %235 = icmp eq i32 %234, 2
  %236 = zext i1 %235 to i8
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %236, i8* %237, align 1, !tbaa !2450
  %238 = load i64, i64* %PC
  %239 = add i64 %238, 63
  %240 = load i64, i64* %PC
  %241 = add i64 %240, 6
  %242 = load i64, i64* %PC
  %243 = add i64 %242, 6
  store i64 %243, i64* %PC
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %245 = load i8, i8* %244, align 1, !tbaa !2449
  %246 = icmp ne i8 %245, 0
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %248 = load i8, i8* %247, align 1, !tbaa !2450
  %249 = icmp ne i8 %248, 0
  %250 = xor i1 %246, %249
  %251 = xor i1 %250, true
  %252 = zext i1 %251 to i8
  store i8 %252, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %254 = select i1 %250, i64 %241, i64 %239
  store i64 %254, i64* %253, align 8, !tbaa !2428
  %255 = load i8, i8* %BRANCH_TAKEN
  %256 = icmp eq i8 %255, 1
  br i1 %256, label %block_4014e0, label %block_4014a7

block_401586:                                     ; preds = %block_401565, %block_40153f
  %MEMORY.2 = phi %struct.Memory* [ %693, %block_401565 ], [ %389, %block_40153f ]
  %257 = load i64, i64* %PC
  %258 = add i64 %257, 8
  store i64 %258, i64* %PC
  %259 = load i64, i64* @stdout
  store i64 %259, i64* %RDI, align 8, !tbaa !2428
  %260 = load i64, i64* %PC
  %261 = sub i64 %260, 3966
  %262 = load i64, i64* %PC
  %263 = add i64 %262, 5
  %264 = load i64, i64* %PC
  %265 = add i64 %264, 5
  store i64 %265, i64* %PC
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %267 = load i64, i64* %266, align 8, !tbaa !2428
  %268 = add i64 %267, -8
  %269 = inttoptr i64 %268 to i64*
  store i64 %263, i64* %269
  store i64 %268, i64* %266, align 8, !tbaa !2428
  %270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %261, i64* %270, align 8, !tbaa !2428
  %271 = load i64, i64* %PC
  %272 = call %struct.Memory* @ext_6020e0_fflush(%struct.State* %0, i64 %271, %struct.Memory* %MEMORY.2)
  %273 = load i64, i64* %RCX
  %274 = load i32, i32* %ECX
  %275 = zext i32 %274 to i64
  %276 = load i64, i64* %PC
  %277 = add i64 %276, 2
  store i64 %277, i64* %PC
  %278 = xor i64 %275, %273
  %279 = trunc i64 %278 to i32
  %280 = and i64 %278, 4294967295
  store i64 %280, i64* %RCX, align 8, !tbaa !2428
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %281, align 1, !tbaa !2432
  %282 = and i32 %279, 255
  %283 = call i32 @llvm.ctpop.i32(i32 %282) #16
  %284 = trunc i32 %283 to i8
  %285 = and i8 %284, 1
  %286 = xor i8 %285, 1
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %286, i8* %287, align 1, !tbaa !2446
  %288 = icmp eq i32 %279, 0
  %289 = zext i1 %288 to i8
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %289, i8* %290, align 1, !tbaa !2448
  %291 = lshr i32 %279, 31
  %292 = trunc i32 %291 to i8
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %292, i8* %293, align 1, !tbaa !2449
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %294, align 1, !tbaa !2450
  %295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %295, align 1, !tbaa !2447
  %296 = load i64, i64* %RBP
  %297 = sub i64 %296, 52
  %298 = load i32, i32* %EAX
  %299 = zext i32 %298 to i64
  %300 = load i64, i64* %PC
  %301 = add i64 %300, 3
  store i64 %301, i64* %PC
  %302 = inttoptr i64 %297 to i32*
  store i32 %298, i32* %302
  %303 = load i32, i32* %ECX
  %304 = zext i32 %303 to i64
  %305 = load i64, i64* %PC
  %306 = add i64 %305, 2
  store i64 %306, i64* %PC
  %307 = and i64 %304, 4294967295
  store i64 %307, i64* %RAX, align 8, !tbaa !2428
  %308 = load i64, i64* %RSP
  %309 = load i64, i64* %PC
  %310 = add i64 %309, 4
  store i64 %310, i64* %PC
  %311 = add i64 64, %308
  store i64 %311, i64* %RSP, align 8, !tbaa !2428
  %312 = icmp ult i64 %311, %308
  %313 = icmp ult i64 %311, 64
  %314 = or i1 %312, %313
  %315 = zext i1 %314 to i8
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %315, i8* %316, align 1, !tbaa !2432
  %317 = trunc i64 %311 to i32
  %318 = and i32 %317, 255
  %319 = call i32 @llvm.ctpop.i32(i32 %318) #16
  %320 = trunc i32 %319 to i8
  %321 = and i8 %320, 1
  %322 = xor i8 %321, 1
  %323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %322, i8* %323, align 1, !tbaa !2446
  %324 = xor i64 64, %308
  %325 = xor i64 %324, %311
  %326 = lshr i64 %325, 4
  %327 = trunc i64 %326 to i8
  %328 = and i8 %327, 1
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %328, i8* %329, align 1, !tbaa !2447
  %330 = icmp eq i64 %311, 0
  %331 = zext i1 %330 to i8
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %331, i8* %332, align 1, !tbaa !2448
  %333 = lshr i64 %311, 63
  %334 = trunc i64 %333 to i8
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %334, i8* %335, align 1, !tbaa !2449
  %336 = lshr i64 %308, 63
  %337 = xor i64 %333, %336
  %338 = add nuw nsw i64 %337, %333
  %339 = icmp eq i64 %338, 2
  %340 = zext i1 %339 to i8
  %341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %340, i8* %341, align 1, !tbaa !2450
  %342 = load i64, i64* %PC
  %343 = add i64 %342, 1
  store i64 %343, i64* %PC
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %345 = load i64, i64* %344, align 8, !tbaa !2428
  %346 = add i64 %345, 8
  %347 = inttoptr i64 %345 to i64*
  %348 = load i64, i64* %347
  store i64 %348, i64* %RBP, align 8, !tbaa !2428
  store i64 %346, i64* %344, align 8, !tbaa !2428
  %349 = load i64, i64* %PC
  %350 = add i64 %349, 1
  store i64 %350, i64* %PC
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %353 = load i64, i64* %352, align 8, !tbaa !2428
  %354 = inttoptr i64 %353 to i64*
  %355 = load i64, i64* %354
  store i64 %355, i64* %351, align 8, !tbaa !2428
  %356 = add i64 %353, 8
  store i64 %356, i64* %352, align 8, !tbaa !2428
  ret %struct.Memory* %272

block_401494:                                     ; preds = %block_401470
  %357 = load i64, i64* %RBP
  %358 = sub i64 %357, 20
  %359 = load i64, i64* %PC
  %360 = add i64 %359, 7
  store i64 %360, i64* %PC
  %361 = inttoptr i64 %358 to i32*
  store i32 1, i32* %361
  br label %block_40149b

block_40153f:                                     ; preds = %block_401524
  store i64 add (i64 ptrtoint (%seg_401620__rodata_type* @seg_401620__rodata to i64), i64 123), i64* %RSI, align 8, !tbaa !2428
  %362 = load i64, i64* %PC
  %363 = add i64 %362, 8
  store i64 %363, i64* %PC
  %364 = load i64, i64* @stdout
  store i64 %364, i64* %RDI, align 8, !tbaa !2428
  %365 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %366 = load i64, i64* %RBP
  %367 = sub i64 %366, 40
  %368 = load i64, i64* %PC
  %369 = add i64 %368, 5
  store i64 %369, i64* %PC
  %370 = inttoptr i64 %367 to double*
  %371 = load double, double* %370
  %372 = bitcast i8* %365 to double*
  store double %371, double* %372, align 1, !tbaa !2452
  %373 = getelementptr inbounds i8, i8* %365, i64 8
  %374 = bitcast i8* %373 to double*
  store double 0.000000e+00, double* %374, align 1, !tbaa !2452
  %375 = load i64, i64* %PC
  %376 = add i64 %375, 2
  store i64 %376, i64* %PC
  store i8 1, i8* %AL, align 1, !tbaa !2451
  %377 = load i64, i64* %PC
  %378 = sub i64 %377, 3944
  %379 = load i64, i64* %PC
  %380 = add i64 %379, 5
  %381 = load i64, i64* %PC
  %382 = add i64 %381, 5
  store i64 %382, i64* %PC
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %384 = load i64, i64* %383, align 8, !tbaa !2428
  %385 = add i64 %384, -8
  %386 = inttoptr i64 %385 to i64*
  store i64 %380, i64* %386
  store i64 %385, i64* %383, align 8, !tbaa !2428
  %387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %378, i64* %387, align 8, !tbaa !2428
  %388 = load i64, i64* %PC
  %389 = call %struct.Memory* @ext_6020d0_fprintf(%struct.State* %0, i64 %388, %struct.Memory* %767)
  %390 = load i64, i64* %RBP
  %391 = sub i64 %390, 44
  %392 = load i32, i32* %EAX
  %393 = zext i32 %392 to i64
  %394 = load i64, i64* %PC
  %395 = add i64 %394, 3
  store i64 %395, i64* %PC
  %396 = inttoptr i64 %391 to i32*
  store i32 %392, i32* %396
  %397 = load i64, i64* %PC
  %398 = add i64 %397, 38
  %399 = load i64, i64* %PC
  %400 = add i64 %399, 5
  store i64 %400, i64* %PC
  %401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %398, i64* %401, align 8, !tbaa !2428
  br label %block_401586

block_4014cd:                                     ; preds = %block_4014a7
  %402 = load i64, i64* %PC
  %403 = add i64 %402, 5
  %404 = load i64, i64* %PC
  %405 = add i64 %404, 5
  store i64 %405, i64* %PC
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %403, i64* %406, align 8, !tbaa !2428
  %407 = load i64, i64* %RBP
  %408 = sub i64 %407, 20
  %409 = load i64, i64* %PC
  %410 = add i64 %409, 3
  store i64 %410, i64* %PC
  %411 = inttoptr i64 %408 to i32*
  %412 = load i32, i32* %411
  %413 = zext i32 %412 to i64
  store i64 %413, i64* %RAX, align 8, !tbaa !2428
  %414 = load i64, i64* %RAX
  %415 = load i64, i64* %PC
  %416 = add i64 %415, 3
  store i64 %416, i64* %PC
  %417 = trunc i64 %414 to i32
  %418 = add i32 1, %417
  %419 = zext i32 %418 to i64
  store i64 %419, i64* %RAX, align 8, !tbaa !2428
  %420 = icmp ult i32 %418, %417
  %421 = icmp ult i32 %418, 1
  %422 = or i1 %420, %421
  %423 = zext i1 %422 to i8
  %424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %423, i8* %424, align 1, !tbaa !2432
  %425 = and i32 %418, 255
  %426 = call i32 @llvm.ctpop.i32(i32 %425) #16
  %427 = trunc i32 %426 to i8
  %428 = and i8 %427, 1
  %429 = xor i8 %428, 1
  %430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %429, i8* %430, align 1, !tbaa !2446
  %431 = xor i64 1, %414
  %432 = trunc i64 %431 to i32
  %433 = xor i32 %432, %418
  %434 = lshr i32 %433, 4
  %435 = trunc i32 %434 to i8
  %436 = and i8 %435, 1
  %437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %436, i8* %437, align 1, !tbaa !2447
  %438 = icmp eq i32 %418, 0
  %439 = zext i1 %438 to i8
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %439, i8* %440, align 1, !tbaa !2448
  %441 = lshr i32 %418, 31
  %442 = trunc i32 %441 to i8
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %442, i8* %443, align 1, !tbaa !2449
  %444 = lshr i32 %417, 31
  %445 = xor i32 %441, %444
  %446 = add nuw nsw i32 %445, %441
  %447 = icmp eq i32 %446, 2
  %448 = zext i1 %447 to i8
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %448, i8* %449, align 1, !tbaa !2450
  %450 = load i64, i64* %RBP
  %451 = sub i64 %450, 20
  %452 = load i32, i32* %EAX
  %453 = zext i32 %452 to i64
  %454 = load i64, i64* %PC
  %455 = add i64 %454, 3
  store i64 %455, i64* %PC
  %456 = inttoptr i64 %451 to i32*
  store i32 %452, i32* %456
  %457 = load i64, i64* %PC
  %458 = sub i64 %457, 64
  %459 = load i64, i64* %PC
  %460 = add i64 %459, 5
  store i64 %460, i64* %PC
  %461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %458, i64* %461, align 8, !tbaa !2428
  br label %block_40149b

block_4014fc:                                     ; preds = %block_401506, %block_4014e5
  %MEMORY.3 = phi %struct.Memory* [ %181, %block_4014e5 ], [ %610, %block_401506 ]
  %462 = load i64, i64* %RBP
  %463 = sub i64 %462, 20
  %464 = load i64, i64* %PC
  %465 = add i64 %464, 4
  store i64 %465, i64* %PC
  %466 = inttoptr i64 %463 to i32*
  %467 = load i32, i32* %466
  %468 = sub i32 %467, 30
  %469 = icmp ult i32 %467, 30
  %470 = zext i1 %469 to i8
  %471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %470, i8* %471, align 1, !tbaa !2432
  %472 = and i32 %468, 255
  %473 = call i32 @llvm.ctpop.i32(i32 %472) #16
  %474 = trunc i32 %473 to i8
  %475 = and i8 %474, 1
  %476 = xor i8 %475, 1
  %477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %476, i8* %477, align 1, !tbaa !2446
  %478 = xor i32 %467, 30
  %479 = xor i32 %478, %468
  %480 = lshr i32 %479, 4
  %481 = trunc i32 %480 to i8
  %482 = and i8 %481, 1
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %482, i8* %483, align 1, !tbaa !2447
  %484 = icmp eq i32 %468, 0
  %485 = zext i1 %484 to i8
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %485, i8* %486, align 1, !tbaa !2448
  %487 = lshr i32 %468, 31
  %488 = trunc i32 %487 to i8
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %488, i8* %489, align 1, !tbaa !2449
  %490 = lshr i32 %467, 31
  %491 = xor i32 %487, %490
  %492 = add nuw nsw i32 %491, %490
  %493 = icmp eq i32 %492, 2
  %494 = zext i1 %493 to i8
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %494, i8* %495, align 1, !tbaa !2450
  %496 = load i64, i64* %PC
  %497 = add i64 %496, 36
  %498 = load i64, i64* %PC
  %499 = add i64 %498, 6
  %500 = load i64, i64* %PC
  %501 = add i64 %500, 6
  store i64 %501, i64* %PC
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %503 = load i8, i8* %502, align 1, !tbaa !2449
  %504 = icmp ne i8 %503, 0
  %505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %506 = load i8, i8* %505, align 1, !tbaa !2450
  %507 = icmp ne i8 %506, 0
  %508 = xor i1 %504, %507
  %509 = xor i1 %508, true
  %510 = zext i1 %509 to i8
  store i8 %510, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %512 = select i1 %508, i64 %499, i64 %497
  store i64 %512, i64* %511, align 8, !tbaa !2428
  %513 = load i8, i8* %BRANCH_TAKEN
  %514 = icmp eq i8 %513, 1
  br i1 %514, label %block_401524, label %block_401506

block_4014a7:                                     ; preds = %block_40149b
  %515 = load i64, i64* %RBP
  %516 = sub i64 %515, 16
  %517 = load i64, i64* %PC
  %518 = add i64 %517, 4
  store i64 %518, i64* %PC
  %519 = inttoptr i64 %516 to i64*
  %520 = load i64, i64* %519
  store i64 %520, i64* %RAX, align 8, !tbaa !2428
  %521 = load i64, i64* %RAX
  %522 = add i64 %521, 8
  %523 = load i64, i64* %PC
  %524 = add i64 %523, 4
  store i64 %524, i64* %PC
  %525 = inttoptr i64 %522 to i64*
  %526 = load i64, i64* %525
  store i64 %526, i64* %RDI, align 8, !tbaa !2428
  %527 = load i64, i64* %PC
  %528 = add i64 %527, 5
  store i64 %528, i64* %PC
  store i64 and (i64 add (i64 ptrtoint (%seg_401620__rodata_type* @seg_401620__rodata to i64), i64 119), i64 4294967295), i64* %RCX, align 8, !tbaa !2428
  %529 = load i32, i32* %ECX
  %530 = zext i32 %529 to i64
  %531 = load i64, i64* %PC
  %532 = add i64 %531, 2
  store i64 %532, i64* %PC
  %533 = and i64 %530, 4294967295
  store i64 %533, i64* %RSI, align 8, !tbaa !2428
  %534 = load i64, i64* %PC
  %535 = sub i64 %534, 3798
  %536 = load i64, i64* %PC
  %537 = add i64 %536, 5
  %538 = load i64, i64* %PC
  %539 = add i64 %538, 5
  store i64 %539, i64* %PC
  %540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %541 = load i64, i64* %540, align 8, !tbaa !2428
  %542 = add i64 %541, -8
  %543 = inttoptr i64 %542 to i64*
  store i64 %537, i64* %543
  store i64 %542, i64* %540, align 8, !tbaa !2428
  %544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %535, i64* %544, align 8, !tbaa !2428
  %545 = load i64, i64* %PC
  %546 = call %struct.Memory* @ext_4005e0_strcmp(%struct.State* %0, i64 %545, %struct.Memory* %MEMORY.1)
  %547 = load i32, i32* %EAX
  %548 = zext i32 %547 to i64
  %549 = load i64, i64* %PC
  %550 = add i64 %549, 3
  store i64 %550, i64* %PC
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %551, align 1, !tbaa !2432
  %552 = and i32 %547, 255
  %553 = call i32 @llvm.ctpop.i32(i32 %552) #16
  %554 = trunc i32 %553 to i8
  %555 = and i8 %554, 1
  %556 = xor i8 %555, 1
  %557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %556, i8* %557, align 1, !tbaa !2446
  %558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %558, align 1, !tbaa !2447
  %559 = icmp eq i32 %547, 0
  %560 = zext i1 %559 to i8
  %561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %560, i8* %561, align 1, !tbaa !2448
  %562 = lshr i32 %547, 31
  %563 = trunc i32 %562 to i8
  %564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %563, i8* %564, align 1, !tbaa !2449
  %565 = lshr i32 %547, 31
  %566 = xor i32 %562, %565
  %567 = add nuw nsw i32 %566, %565
  %568 = icmp eq i32 %567, 2
  %569 = zext i1 %568 to i8
  %570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %569, i8* %570, align 1, !tbaa !2450
  %571 = load i64, i64* %PC
  %572 = add i64 %571, 15
  %573 = load i64, i64* %PC
  %574 = add i64 %573, 6
  %575 = load i64, i64* %PC
  %576 = add i64 %575, 6
  store i64 %576, i64* %PC
  %577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %578 = load i8, i8* %577, align 1, !tbaa !2448
  %579 = icmp eq i8 %578, 0
  %580 = zext i1 %579 to i8
  store i8 %580, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %582 = select i1 %579, i64 %572, i64 %574
  store i64 %582, i64* %581, align 8, !tbaa !2428
  %583 = load i8, i8* %BRANCH_TAKEN
  %584 = icmp eq i8 %583, 1
  br i1 %584, label %block_4014cd, label %block_4014c4

block_401506:                                     ; preds = %block_4014fc
  %585 = load i64, i64* %PC
  %586 = add i64 %585, 5
  store i64 %586, i64* %PC
  store i64 10000000, i64* %RAX, align 8, !tbaa !2428
  %587 = load i32, i32* %EAX
  %588 = zext i32 %587 to i64
  %589 = load i64, i64* %PC
  %590 = add i64 %589, 2
  store i64 %590, i64* %PC
  %591 = and i64 %588, 4294967295
  store i64 %591, i64* %RSI, align 8, !tbaa !2428
  %592 = load i64, i64* %RBP
  %593 = sub i64 %592, 32
  %594 = load i64, i64* %PC
  %595 = add i64 %594, 4
  store i64 %595, i64* %PC
  %596 = inttoptr i64 %593 to i64*
  %597 = load i64, i64* %596
  store i64 %597, i64* %RDI, align 8, !tbaa !2428
  %598 = load i64, i64* %PC
  %599 = sub i64 %598, 3233
  %600 = load i64, i64* %PC
  %601 = add i64 %600, 5
  %602 = load i64, i64* %PC
  %603 = add i64 %602, 5
  store i64 %603, i64* %PC
  %604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %605 = load i64, i64* %604, align 8, !tbaa !2428
  %606 = add i64 %605, -8
  %607 = inttoptr i64 %606 to i64*
  store i64 %601, i64* %607
  store i64 %606, i64* %604, align 8, !tbaa !2428
  %608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %599, i64* %608, align 8, !tbaa !2428
  %609 = load i64, i64* %PC
  %610 = call %struct.Memory* @sub_400870_compdecomp_renamed_(%struct.State* %0, i64 %609, %struct.Memory* %MEMORY.3)
  %611 = load i64, i64* %RBP
  %612 = sub i64 %611, 20
  %613 = load i64, i64* %PC
  %614 = add i64 %613, 3
  store i64 %614, i64* %PC
  %615 = inttoptr i64 %612 to i32*
  %616 = load i32, i32* %615
  %617 = zext i32 %616 to i64
  store i64 %617, i64* %RAX, align 8, !tbaa !2428
  %618 = load i64, i64* %RAX
  %619 = load i64, i64* %PC
  %620 = add i64 %619, 3
  store i64 %620, i64* %PC
  %621 = trunc i64 %618 to i32
  %622 = add i32 1, %621
  %623 = zext i32 %622 to i64
  store i64 %623, i64* %RAX, align 8, !tbaa !2428
  %624 = icmp ult i32 %622, %621
  %625 = icmp ult i32 %622, 1
  %626 = or i1 %624, %625
  %627 = zext i1 %626 to i8
  %628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %627, i8* %628, align 1, !tbaa !2432
  %629 = and i32 %622, 255
  %630 = call i32 @llvm.ctpop.i32(i32 %629) #16
  %631 = trunc i32 %630 to i8
  %632 = and i8 %631, 1
  %633 = xor i8 %632, 1
  %634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %633, i8* %634, align 1, !tbaa !2446
  %635 = xor i64 1, %618
  %636 = trunc i64 %635 to i32
  %637 = xor i32 %636, %622
  %638 = lshr i32 %637, 4
  %639 = trunc i32 %638 to i8
  %640 = and i8 %639, 1
  %641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %640, i8* %641, align 1, !tbaa !2447
  %642 = icmp eq i32 %622, 0
  %643 = zext i1 %642 to i8
  %644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %643, i8* %644, align 1, !tbaa !2448
  %645 = lshr i32 %622, 31
  %646 = trunc i32 %645 to i8
  %647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %646, i8* %647, align 1, !tbaa !2449
  %648 = lshr i32 %621, 31
  %649 = xor i32 %645, %648
  %650 = add nuw nsw i32 %649, %645
  %651 = icmp eq i32 %650, 2
  %652 = zext i1 %651 to i8
  %653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %652, i8* %653, align 1, !tbaa !2450
  %654 = load i64, i64* %RBP
  %655 = sub i64 %654, 20
  %656 = load i32, i32* %EAX
  %657 = zext i32 %656 to i64
  %658 = load i64, i64* %PC
  %659 = add i64 %658, 3
  store i64 %659, i64* %PC
  %660 = inttoptr i64 %655 to i32*
  store i32 %656, i32* %660
  %661 = load i64, i64* %PC
  %662 = sub i64 %661, 35
  %663 = load i64, i64* %PC
  %664 = add i64 %663, 5
  store i64 %664, i64* %PC
  %665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %662, i64* %665, align 8, !tbaa !2428
  br label %block_4014fc

block_401565:                                     ; preds = %block_401524
  store i64 add (i64 ptrtoint (%seg_401620__rodata_type* @seg_401620__rodata to i64), i64 126), i64* %RSI, align 8, !tbaa !2428
  %666 = load i64, i64* %PC
  %667 = add i64 %666, 8
  store i64 %667, i64* %PC
  %668 = load i64, i64* @stdout
  store i64 %668, i64* %RDI, align 8, !tbaa !2428
  %669 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %670 = load i64, i64* %RBP
  %671 = sub i64 %670, 40
  %672 = load i64, i64* %PC
  %673 = add i64 %672, 5
  store i64 %673, i64* %PC
  %674 = inttoptr i64 %671 to double*
  %675 = load double, double* %674
  %676 = bitcast i8* %669 to double*
  store double %675, double* %676, align 1, !tbaa !2452
  %677 = getelementptr inbounds i8, i8* %669, i64 8
  %678 = bitcast i8* %677 to double*
  store double 0.000000e+00, double* %678, align 1, !tbaa !2452
  %679 = load i64, i64* %PC
  %680 = add i64 %679, 2
  store i64 %680, i64* %PC
  store i8 1, i8* %AL, align 1, !tbaa !2451
  %681 = load i64, i64* %PC
  %682 = sub i64 %681, 3982
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
  %693 = call %struct.Memory* @ext_6020d0_fprintf(%struct.State* %0, i64 %692, %struct.Memory* %767)
  %694 = load i64, i64* %RBP
  %695 = sub i64 %694, 48
  %696 = load i32, i32* %EAX
  %697 = zext i32 %696 to i64
  %698 = load i64, i64* %PC
  %699 = add i64 %698, 3
  store i64 %699, i64* %PC
  %700 = inttoptr i64 %695 to i32*
  store i32 %696, i32* %700
  br label %block_401586

block_4014c4:                                     ; preds = %block_4014a7
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
  br label %block_4014e0

block_401524:                                     ; preds = %block_4014fc
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
  %767 = call %struct.Memory* @ext_6020f0_free(%struct.State* %0, i64 %766, %struct.Memory* %MEMORY.3)
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
  store i8 %783, i8* %784, align 1, !tbaa !2448
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %785, align 1, !tbaa !2449
  %786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %786, align 1, !tbaa !2450
  %787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %787, align 1, !tbaa !2447
  %788 = load i64, i64* %PC
  %789 = add i64 %788, 44
  %790 = load i64, i64* %PC
  %791 = add i64 %790, 6
  %792 = load i64, i64* %PC
  %793 = add i64 %792, 6
  store i64 %793, i64* %PC
  %794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %795 = load i8, i8* %794, align 1, !tbaa !2448
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
  br i1 %800, label %block_401565, label %block_40153f

block_4014e0:                                     ; preds = %block_4014c4, %block_40149b
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.1, %block_40149b ], [ %546, %block_4014c4 ]
  %803 = load i64, i64* %PC
  %804 = add i64 %803, 5
  %805 = load i64, i64* %PC
  %806 = add i64 %805, 5
  store i64 %806, i64* %PC
  %807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %804, i64* %807, align 8, !tbaa !2428
  br label %block_4014e5
}

; Function Attrs: noinline
define %struct.Memory* @sub_4007b0_random4(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4007b0:
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
  store i8 %57, i8* %58, align 1, !tbaa !2448
  %59 = lshr i64 %47, 63
  %60 = trunc i64 %59 to i8
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %60, i8* %61, align 1, !tbaa !2449
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %62, align 1, !tbaa !2450
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %63, align 1, !tbaa !2447
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

; <label>:98:                                     ; preds = %block_4007b0
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %100 = load i64, i64* %99, align 8, !tbaa !2428
  %101 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %100, %struct.Memory* %2) #17
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit1

; <label>:102:                                    ; preds = %block_4007b0
  %103 = srem i128 %88, %90
  %104 = trunc i128 %103 to i64
  store i64 %92, i64* %79, align 8, !tbaa !2428
  store i64 %104, i64* %81, align 8, !tbaa !2428
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %105, align 1, !tbaa !2432
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %106, align 1, !tbaa !2446
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %107, align 1, !tbaa !2447
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %108, align 1, !tbaa !2448
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %109, align 1, !tbaa !2449
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %110, align 1, !tbaa !2450
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
  store i8 0, i8* %144, align 1, !tbaa !2447
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %145, align 1, !tbaa !2448
  %146 = lshr i64 %132, 63
  %147 = trunc i64 %146 to i8
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %147, i8* %148, align 1, !tbaa !2449
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %135, i8* %149, align 1, !tbaa !2450
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
  store i8 %169, i8* %170, align 1, !tbaa !2447
  %171 = icmp eq i64 %154, 0
  %172 = zext i1 %171 to i8
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %172, i8* %173, align 1, !tbaa !2448
  %174 = lshr i64 %154, 63
  %175 = trunc i64 %174 to i8
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %175, i8* %176, align 1, !tbaa !2449
  %177 = lshr i64 %150, 63
  %178 = lshr i64 %151, 63
  %179 = xor i64 %178, %177
  %180 = xor i64 %174, %177
  %181 = add nuw nsw i64 %180, %179
  %182 = icmp eq i64 %181, 2
  %183 = zext i1 %182 to i8
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %183, i8* %184, align 1, !tbaa !2450
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
  store i8 0, i8* %205, align 1, !tbaa !2447
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %206, align 1, !tbaa !2448
  %207 = lshr i64 %193, 63
  %208 = trunc i64 %207 to i8
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %208, i8* %209, align 1, !tbaa !2449
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %196, i8* %210, align 1, !tbaa !2450
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
  store i8 0, i8* %234, align 1, !tbaa !2447
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %235, align 1, !tbaa !2448
  %236 = lshr i64 %222, 63
  %237 = trunc i64 %236 to i8
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %237, i8* %238, align 1, !tbaa !2449
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %225, i8* %239, align 1, !tbaa !2450
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
  store i8 %259, i8* %260, align 1, !tbaa !2447
  %261 = icmp eq i64 %244, 0
  %262 = zext i1 %261 to i8
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %262, i8* %263, align 1, !tbaa !2448
  %264 = lshr i64 %244, 63
  %265 = trunc i64 %264 to i8
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %265, i8* %266, align 1, !tbaa !2449
  %267 = lshr i64 %240, 63
  %268 = lshr i64 %241, 63
  %269 = xor i64 %268, %267
  %270 = xor i64 %264, %267
  %271 = add nuw nsw i64 %270, %269
  %272 = icmp eq i64 %271, 2
  %273 = zext i1 %272 to i8
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %273, i8* %274, align 1, !tbaa !2450
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
  store i8 0, i8* %289, align 1, !tbaa !2447
  %290 = icmp eq i64 %280, 0
  %291 = zext i1 %290 to i8
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %291, i8* %292, align 1, !tbaa !2448
  %293 = lshr i64 %280, 63
  %294 = trunc i64 %293 to i8
  %295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %294, i8* %295, align 1, !tbaa !2449
  %296 = lshr i64 %280, 63
  %297 = xor i64 %293, %296
  %298 = add nuw nsw i64 %297, %296
  %299 = icmp eq i64 %298, 2
  %300 = zext i1 %299 to i8
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %300, i8* %301, align 1, !tbaa !2450
  %302 = load i64, i64* %PC
  %303 = add i64 %302, 28
  %304 = load i64, i64* %PC
  %305 = add i64 %304, 6
  %306 = load i64, i64* %PC
  %307 = add i64 %306, 6
  store i64 %307, i64* %PC
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %309 = load i8, i8* %308, align 1, !tbaa !2449
  %310 = icmp ne i8 %309, 0
  %311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %312 = load i8, i8* %311, align 1, !tbaa !2450
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
  br i1 %320, label %block_400835, label %block_40081f

block_40081f:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit1
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
  store i8 %344, i8* %345, align 1, !tbaa !2447
  %346 = icmp eq i64 %327, 0
  %347 = zext i1 %346 to i8
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %347, i8* %348, align 1, !tbaa !2448
  %349 = lshr i64 %327, 63
  %350 = trunc i64 %349 to i8
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %350, i8* %351, align 1, !tbaa !2449
  %352 = lshr i64 %324, 63
  %353 = xor i64 %349, %352
  %354 = add nuw nsw i64 %353, %349
  %355 = icmp eq i64 %354, 2
  %356 = zext i1 %355 to i8
  %357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %356, i8* %357, align 1, !tbaa !2450
  %358 = load i64, i64* %RAX
  %359 = load i64, i64* %PC
  %360 = add i64 %359, 8
  store i64 %360, i64* %PC
  store i64 %358, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602050__data_type* @seg_602050__data to i64), i64 16) to i64*)
  br label %block_400835

block_400835:                                     ; preds = %block_40081f, %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit1
  %MEMORY.0 = phi %struct.Memory* [ %111, %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit1 ], [ %111, %block_40081f ]
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

; <label>:399:                                    ; preds = %block_400835
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %401 = load i64, i64* %400, align 8, !tbaa !2428
  %402 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %401, %struct.Memory* %MEMORY.0) #17
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

; <label>:403:                                    ; preds = %block_400835
  %404 = srem i128 %389, %391
  %405 = trunc i128 %404 to i64
  store i64 %393, i64* %380, align 8, !tbaa !2428
  store i64 %405, i64* %382, align 8, !tbaa !2428
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %406, align 1, !tbaa !2432
  %407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %407, align 1, !tbaa !2446
  %408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %408, align 1, !tbaa !2447
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %409, align 1, !tbaa !2448
  %410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %410, align 1, !tbaa !2449
  %411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %411, align 1, !tbaa !2450
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
  store i8 %435, i8* %436, align 1, !tbaa !2448
  %437 = lshr i64 %425, 63
  %438 = trunc i64 %437 to i8
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %438, i8* %439, align 1, !tbaa !2449
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %440, align 1, !tbaa !2450
  %441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %441, align 1, !tbaa !2447
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
define %struct.Memory* @sub_4006a0_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  br i1 %189, label %block_4006d8, label %block_4006c3

block_4006da:                                     ; preds = %block_4006cd
  %190 = load i64, i64* %RAX
  %191 = load i64, i64* %RAX
  %192 = add i64 %191, %190
  %193 = load i16, i16* %AX
  %194 = zext i16 %193 to i64
  %195 = load i64, i64* %PC
  %196 = add i64 %195, 6
  store i64 %196, i64* %PC
  %197 = load i64, i64* %PC
  %198 = tail call %struct.Memory* @sub_4006e0___do_global_dtors_aux(%struct.State* %0, i64 %197, %struct.Memory* %2)
  ret %struct.Memory* %198

block_4006d5:                                     ; preds = %block_4006cd
  %199 = load i64, i64* %RAX
  %200 = load i32, i32* %EAX
  %201 = zext i32 %200 to i64
  %202 = load i64, i64* %PC
  %203 = add i64 %202, 3
  store i64 %203, i64* %PC
  br label %block_4006d8

block_4006cd:                                     ; preds = %block_4006c3
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
    i64 4196058, label %block_4006da
    i64 4196053, label %block_4006d5
  ]

block_4006d8:                                     ; preds = %block_4006c3, %block_4006d5, %block_4006a0
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4006a0 ], [ %2, %block_4006c3 ], [ %2, %block_4006d5 ]
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

block_4006c3:                                     ; preds = %block_4006a0
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
  br i1 %268, label %block_4006d8, label %block_4006cd

; <label>:269:                                    ; preds = %block_4006cd
  %270 = load i64, i64* %PC
  %271 = tail call %struct.Memory* @__remill_jump(%struct.State* %0, i64 %270, %struct.Memory* %2)
  ret %struct.Memory* %271
}

; Function Attrs: noinline
define %struct.Memory* @sub_401370_heap_adjust(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_401370:
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
  store i8 %101, i8* %102, align 1, !tbaa !2447
  %103 = icmp eq i64 %84, 0
  %104 = zext i1 %103 to i8
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %104, i8* %105, align 1, !tbaa !2448
  %106 = lshr i64 %84, 63
  %107 = trunc i64 %106 to i8
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %107, i8* %108, align 1, !tbaa !2449
  %109 = lshr i64 %81, 63
  %110 = xor i64 %106, %109
  %111 = xor i64 %106, 1
  %112 = add nuw nsw i64 %110, %111
  %113 = icmp eq i64 %112, 2
  %114 = zext i1 %113 to i8
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %114, i8* %115, align 1, !tbaa !2450
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
  br label %block_40139f

block_40145c:                                     ; preds = %block_401434, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit
  %MEMORY.0 = phi %struct.Memory* [ %277, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ], [ %MEMORY.2, %block_401434 ]
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

block_40139f:                                     ; preds = %block_401439, %block_401370
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_401370 ], [ %MEMORY.2, %block_401439 ]
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

; <label>:261:                                    ; preds = %block_40139f
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %263 = load i64, i64* %262, align 8, !tbaa !2428
  %264 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %263, %struct.Memory* %MEMORY.1) #17
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:265:                                    ; preds = %block_40139f
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
  store i8 0, i8* %273, align 1, !tbaa !2447
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %274, align 1, !tbaa !2448
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %275, align 1, !tbaa !2449
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %276, align 1, !tbaa !2450
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
  store i8 %299, i8* %300, align 1, !tbaa !2447
  %301 = icmp eq i32 %284, 0
  %302 = zext i1 %301 to i8
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %302, i8* %303, align 1, !tbaa !2448
  %304 = lshr i32 %284, 31
  %305 = trunc i32 %304 to i8
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %305, i8* %306, align 1, !tbaa !2449
  %307 = lshr i32 %278, 31
  %308 = lshr i32 %280, 31
  %309 = xor i32 %308, %307
  %310 = xor i32 %304, %307
  %311 = add nuw nsw i32 %310, %309
  %312 = icmp eq i32 %311, 2
  %313 = zext i1 %312 to i8
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %313, i8* %314, align 1, !tbaa !2450
  %315 = load i64, i64* %PC
  %316 = add i64 %315, 165
  %317 = load i64, i64* %PC
  %318 = add i64 %317, 6
  %319 = load i64, i64* %PC
  %320 = add i64 %319, 6
  store i64 %320, i64* %PC
  %321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %322 = load i8, i8* %321, align 1, !tbaa !2448
  %323 = icmp eq i8 %322, 0
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %325 = load i8, i8* %324, align 1, !tbaa !2449
  %326 = icmp ne i8 %325, 0
  %327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %328 = load i8, i8* %327, align 1, !tbaa !2450
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
  br i1 %337, label %block_40145c, label %block_4013bd

block_401439:                                     ; preds = %block_40140e
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
  br label %block_40139f

block_401434:                                     ; preds = %block_40140e
  %399 = load i64, i64* %PC
  %400 = add i64 %399, 40
  %401 = load i64, i64* %PC
  %402 = add i64 %401, 5
  store i64 %402, i64* %PC
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %400, i64* %403, align 8, !tbaa !2428
  br label %block_40145c

block_4013d2:                                     ; preds = %block_4013bd
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
  store i8 %480, i8* %481, align 1, !tbaa !2447
  %482 = icmp eq i32 %462, 0
  %483 = zext i1 %482 to i8
  %484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %483, i8* %484, align 1, !tbaa !2448
  %485 = lshr i32 %462, 31
  %486 = trunc i32 %485 to i8
  %487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %486, i8* %487, align 1, !tbaa !2449
  %488 = lshr i32 %461, 31
  %489 = xor i32 %485, %488
  %490 = add nuw nsw i32 %489, %485
  %491 = icmp eq i32 %490, 2
  %492 = zext i1 %491 to i8
  %493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %492, i8* %493, align 1, !tbaa !2450
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
  store i8 %532, i8* %533, align 1, !tbaa !2447
  %534 = icmp eq i64 %517, 0
  %535 = zext i1 %534 to i8
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %535, i8* %536, align 1, !tbaa !2448
  %537 = lshr i64 %517, 63
  %538 = trunc i64 %537 to i8
  %539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %538, i8* %539, align 1, !tbaa !2449
  %540 = lshr i64 %508, 63
  %541 = lshr i64 %516, 63
  %542 = xor i64 %541, %540
  %543 = xor i64 %537, %540
  %544 = add nuw nsw i64 %543, %542
  %545 = icmp eq i64 %544, 2
  %546 = zext i1 %545 to i8
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %546, i8* %547, align 1, !tbaa !2450
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
  %557 = load i8, i8* %556, align 1, !tbaa !2448
  %558 = or i8 %557, %555
  %559 = icmp ne i8 %558, 0
  %560 = zext i1 %559 to i8
  store i8 %560, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %562 = select i1 %559, i64 %549, i64 %551
  store i64 %562, i64* %561, align 8, !tbaa !2428
  %563 = load i8, i8* %BRANCH_TAKEN
  %564 = icmp eq i8 %563, 1
  br i1 %564, label %block_40140e, label %block_401405

block_4013bd:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit
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
  store i8 %597, i8* %598, align 1, !tbaa !2447
  %599 = icmp eq i32 %580, 0
  %600 = zext i1 %599 to i8
  %601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %600, i8* %601, align 1, !tbaa !2448
  %602 = lshr i32 %580, 31
  %603 = trunc i32 %602 to i8
  %604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %603, i8* %604, align 1, !tbaa !2449
  %605 = lshr i32 %577, 31
  %606 = lshr i32 %579, 31
  %607 = xor i32 %602, %605
  %608 = xor i32 %602, %606
  %609 = add nuw nsw i32 %607, %608
  %610 = icmp eq i32 %609, 2
  %611 = zext i1 %610 to i8
  %612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %611, i8* %612, align 1, !tbaa !2450
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
  store i8 %649, i8* %650, align 1, !tbaa !2447
  %651 = icmp eq i32 %635, 0
  %652 = zext i1 %651 to i8
  %653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %652, i8* %653, align 1, !tbaa !2448
  %654 = lshr i32 %635, 31
  %655 = trunc i32 %654 to i8
  %656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %655, i8* %656, align 1, !tbaa !2449
  %657 = lshr i32 %627, 31
  %658 = lshr i32 %634, 31
  %659 = xor i32 %658, %657
  %660 = xor i32 %654, %657
  %661 = add nuw nsw i32 %660, %659
  %662 = icmp eq i32 %661, 2
  %663 = zext i1 %662 to i8
  %664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %663, i8* %664, align 1, !tbaa !2450
  %665 = load i64, i64* %PC
  %666 = add i64 %665, 66
  %667 = load i64, i64* %PC
  %668 = add i64 %667, 6
  %669 = load i64, i64* %PC
  %670 = add i64 %669, 6
  store i64 %670, i64* %PC
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %672 = load i8, i8* %671, align 1, !tbaa !2449
  %673 = icmp ne i8 %672, 0
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %675 = load i8, i8* %674, align 1, !tbaa !2450
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
  br i1 %683, label %block_40140e, label %block_4013d2

block_40140e:                                     ; preds = %block_401405, %block_4013bd, %block_4013d2
  %MEMORY.2 = phi %struct.Memory* [ %277, %block_4013bd ], [ %277, %block_4013d2 ], [ %277, %block_401405 ]
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
  store i8 %756, i8* %757, align 1, !tbaa !2447
  %758 = icmp eq i64 %741, 0
  %759 = zext i1 %758 to i8
  %760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %759, i8* %760, align 1, !tbaa !2448
  %761 = lshr i64 %741, 63
  %762 = trunc i64 %761 to i8
  %763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %762, i8* %763, align 1, !tbaa !2449
  %764 = lshr i64 %732, 63
  %765 = lshr i64 %740, 63
  %766 = xor i64 %765, %764
  %767 = xor i64 %761, %764
  %768 = add nuw nsw i64 %767, %766
  %769 = icmp eq i64 %768, 2
  %770 = zext i1 %769 to i8
  %771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %770, i8* %771, align 1, !tbaa !2450
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
  br i1 %785, label %block_401439, label %block_401434

block_401405:                                     ; preds = %block_4013d2
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
  store i8 %815, i8* %816, align 1, !tbaa !2447
  %817 = icmp eq i32 %797, 0
  %818 = zext i1 %817 to i8
  %819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %818, i8* %819, align 1, !tbaa !2448
  %820 = lshr i32 %797, 31
  %821 = trunc i32 %820 to i8
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %821, i8* %822, align 1, !tbaa !2449
  %823 = lshr i32 %796, 31
  %824 = xor i32 %820, %823
  %825 = add nuw nsw i32 %824, %820
  %826 = icmp eq i32 %825, 2
  %827 = zext i1 %826 to i8
  %828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %827, i8* %828, align 1, !tbaa !2450
  %829 = load i64, i64* %RBP
  %830 = sub i64 %829, 28
  %831 = load i32, i32* %EAX
  %832 = zext i32 %831 to i64
  %833 = load i64, i64* %PC
  %834 = add i64 %833, 3
  store i64 %834, i64* %PC
  %835 = inttoptr i64 %830 to i32*
  store i32 %831, i32* %835
  br label %block_40140e
}

; Function Attrs: noinline
define %struct.Memory* @sub_400630__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400630:
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
  store i64 ptrtoint (void ()* @callback_sub_401610___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  %108 = load i64, i64* %PC
  %109 = add i64 %108, 7
  store i64 %109, i64* %PC
  store i64 ptrtoint (void ()* @callback_sub_4015a0___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
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
  %123 = call %struct.Memory* @ext_6020c0___libc_start_main(%struct.State* %0, i64 %122, %struct.Memory* %2)
  %124 = load i64, i64* %PC
  %125 = add i64 %124, 1
  store i64 %125, i64* %PC
  %126 = load i64, i64* %PC
  %127 = tail call %struct.Memory* @__remill_error(%struct.State* %0, i64 %126, %struct.Memory* %123)
  ret %struct.Memory* %127
}

; Function Attrs: noinline
define %struct.Memory* @sub_400720_generate_test_data(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400720:
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
  store i8 %56, i8* %57, align 1, !tbaa !2447
  %58 = icmp eq i64 %41, 0
  %59 = zext i1 %58 to i8
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %59, i8* %60, align 1, !tbaa !2448
  %61 = lshr i64 %41, 63
  %62 = trunc i64 %61 to i8
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %62, i8* %63, align 1, !tbaa !2449
  %64 = lshr i64 %38, 63
  %65 = xor i64 %61, %64
  %66 = add nuw nsw i64 %65, %64
  %67 = icmp eq i64 %66, 2
  %68 = zext i1 %67 to i8
  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %68, i8* %69, align 1, !tbaa !2450
  %70 = load i64, i64* %PC
  %71 = add i64 %70, 10
  store i64 %71, i64* %PC
  store i64 add (i64 ptrtoint (%seg_401620__rodata_type* @seg_401620__rodata to i64), i64 4), i64* %RAX, align 8, !tbaa !2428
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
  br label %block_400756

block_400756:                                     ; preds = %block_400764, %block_400720
  %MEMORY.0 = phi %struct.Memory* [ %102, %block_400720 ], [ %209, %block_400764 ]
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
  store i8 %155, i8* %156, align 1, !tbaa !2447
  %157 = icmp eq i64 %140, 0
  %158 = zext i1 %157 to i8
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %158, i8* %159, align 1, !tbaa !2448
  %160 = lshr i64 %140, 63
  %161 = trunc i64 %160 to i8
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %161, i8* %162, align 1, !tbaa !2449
  %163 = lshr i64 %133, 63
  %164 = lshr i64 %139, 63
  %165 = xor i64 %164, %163
  %166 = xor i64 %160, %163
  %167 = add nuw nsw i64 %166, %165
  %168 = icmp eq i64 %167, 2
  %169 = zext i1 %168 to i8
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %169, i8* %170, align 1, !tbaa !2450
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
  br i1 %184, label %block_400798, label %block_400764

block_400764:                                     ; preds = %block_400756
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
  %209 = call %struct.Memory* @sub_4007b0_random4_renamed_(%struct.State* %0, i64 %208, %struct.Memory* %MEMORY.0)
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
  store i8 %261, i8* %262, align 1, !tbaa !2447
  %263 = icmp eq i64 %244, 0
  %264 = zext i1 %263 to i8
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %264, i8* %265, align 1, !tbaa !2448
  %266 = lshr i64 %244, 63
  %267 = trunc i64 %266 to i8
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %267, i8* %268, align 1, !tbaa !2449
  %269 = lshr i64 %241, 63
  %270 = xor i64 %266, %269
  %271 = add nuw nsw i64 %270, %266
  %272 = icmp eq i64 %271, 2
  %273 = zext i1 %272 to i8
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %273, i8* %274, align 1, !tbaa !2450
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
  store i8 %310, i8* %311, align 1, !tbaa !2447
  %312 = icmp eq i32 %292, 0
  %313 = zext i1 %312 to i8
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %313, i8* %314, align 1, !tbaa !2448
  %315 = lshr i32 %292, 31
  %316 = trunc i32 %315 to i8
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %316, i8* %317, align 1, !tbaa !2449
  %318 = lshr i32 %291, 31
  %319 = xor i32 %315, %318
  %320 = add nuw nsw i32 %319, %315
  %321 = icmp eq i32 %320, 2
  %322 = zext i1 %321 to i8
  %323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %322, i8* %323, align 1, !tbaa !2450
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
  br label %block_400756

block_400798:                                     ; preds = %block_400756
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
  store i8 %361, i8* %362, align 1, !tbaa !2447
  %363 = icmp eq i64 %344, 0
  %364 = zext i1 %363 to i8
  %365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %364, i8* %365, align 1, !tbaa !2448
  %366 = lshr i64 %344, 63
  %367 = trunc i64 %366 to i8
  %368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %367, i8* %368, align 1, !tbaa !2449
  %369 = lshr i64 %341, 63
  %370 = xor i64 %366, %369
  %371 = add nuw nsw i64 %370, %366
  %372 = icmp eq i64 %371, 2
  %373 = zext i1 %372 to i8
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %373, i8* %374, align 1, !tbaa !2450
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
define %struct.Memory* @sub_400870_compdecomp(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400870:
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
  store i8 %128, i8* %129, align 1, !tbaa !2447
  %130 = icmp eq i64 %113, 0
  %131 = zext i1 %130 to i8
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %131, i8* %132, align 1, !tbaa !2448
  %133 = lshr i64 %113, 63
  %134 = trunc i64 %133 to i8
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %134, i8* %135, align 1, !tbaa !2449
  %136 = lshr i64 %110, 63
  %137 = xor i64 %133, %136
  %138 = add nuw nsw i64 %137, %136
  %139 = icmp eq i64 %138, 2
  %140 = zext i1 %139 to i8
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %140, i8* %141, align 1, !tbaa !2450
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
  store i8 %192, i8* %193, align 1, !tbaa !2447
  %194 = icmp eq i64 %175, 0
  %195 = zext i1 %194 to i8
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %195, i8* %196, align 1, !tbaa !2448
  %197 = lshr i64 %175, 63
  %198 = trunc i64 %197 to i8
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %198, i8* %199, align 1, !tbaa !2449
  %200 = lshr i64 %172, 63
  %201 = xor i64 %197, %200
  %202 = add nuw nsw i64 %201, %197
  %203 = icmp eq i64 %202, 2
  %204 = zext i1 %203 to i8
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %204, i8* %205, align 1, !tbaa !2450
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
  store i8 %238, i8* %239, align 1, !tbaa !2448
  %240 = lshr i32 %228, 31
  %241 = trunc i32 %240 to i8
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %241, i8* %242, align 1, !tbaa !2449
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %243, align 1, !tbaa !2450
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %244, align 1, !tbaa !2447
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
  store i8 %321, i8* %322, align 1, !tbaa !2447
  %323 = icmp eq i64 %304, 0
  %324 = zext i1 %323 to i8
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %324, i8* %325, align 1, !tbaa !2448
  %326 = lshr i64 %304, 63
  %327 = trunc i64 %326 to i8
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %327, i8* %328, align 1, !tbaa !2449
  %329 = lshr i64 %301, 63
  %330 = xor i64 %326, %329
  %331 = add nuw nsw i64 %330, %326
  %332 = icmp eq i64 %331, 2
  %333 = zext i1 %332 to i8
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %333, i8* %334, align 1, !tbaa !2450
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
  br label %block_4009cc

block_400bf6:                                     ; preds = %block_400d4b, %block_400bc0
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.11, %block_400bc0 ], [ %MEMORY.2, %block_400d4b ]
  %594 = load i64, i64* %RBP
  %595 = sub i64 %594, 10640
  %596 = load i64, i64* %PC
  %597 = add i64 %596, 11
  store i64 %597, i64* %PC
  %598 = inttoptr i64 %595 to i64*
  %599 = load i64, i64* %598
  %600 = sub i64 %599, 256
  %601 = icmp ult i64 %599, 256
  %602 = zext i1 %601 to i8
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %602, i8* %603, align 1, !tbaa !2432
  %604 = trunc i64 %600 to i32
  %605 = and i32 %604, 255
  %606 = call i32 @llvm.ctpop.i32(i32 %605) #16
  %607 = trunc i32 %606 to i8
  %608 = and i8 %607, 1
  %609 = xor i8 %608, 1
  %610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %609, i8* %610, align 1, !tbaa !2446
  %611 = xor i64 %599, 256
  %612 = xor i64 %611, %600
  %613 = lshr i64 %612, 4
  %614 = trunc i64 %613 to i8
  %615 = and i8 %614, 1
  %616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %615, i8* %616, align 1, !tbaa !2447
  %617 = icmp eq i64 %600, 0
  %618 = zext i1 %617 to i8
  %619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %618, i8* %619, align 1, !tbaa !2448
  %620 = lshr i64 %600, 63
  %621 = trunc i64 %620 to i8
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %621, i8* %622, align 1, !tbaa !2449
  %623 = lshr i64 %599, 63
  %624 = xor i64 %620, %623
  %625 = add nuw nsw i64 %624, %623
  %626 = icmp eq i64 %625, 2
  %627 = zext i1 %626 to i8
  %628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %627, i8* %628, align 1, !tbaa !2450
  %629 = load i64, i64* %PC
  %630 = add i64 %629, 358
  %631 = load i64, i64* %PC
  %632 = add i64 %631, 6
  %633 = load i64, i64* %PC
  %634 = add i64 %633, 6
  store i64 %634, i64* %PC
  %635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %636 = load i8, i8* %635, align 1, !tbaa !2432
  %637 = icmp eq i8 %636, 0
  %638 = zext i1 %637 to i8
  store i8 %638, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %640 = select i1 %637, i64 %630, i64 %632
  store i64 %640, i64* %639, align 8, !tbaa !2428
  %641 = load i8, i8* %BRANCH_TAKEN
  %642 = icmp eq i8 %641, 1
  %643 = load i64, i64* %RBP
  br i1 %642, label %block_400d67, label %block_400c07

block_4011f9:                                     ; preds = %block_40110a
  %644 = sub i64 %2840, 56
  %645 = load i64, i64* %PC
  %646 = add i64 %645, 8
  store i64 %646, i64* %PC
  %647 = inttoptr i64 %644 to i64*
  store i64 0, i64* %647
  br label %block_401201

block_400bc0:                                     ; preds = %block_400acd
  %648 = load i64, i64* %RBP
  %649 = sub i64 %648, 64
  %650 = load i64, i64* %PC
  %651 = add i64 %650, 4
  store i64 %651, i64* %PC
  %652 = inttoptr i64 %649 to i64*
  %653 = load i64, i64* %652
  store i64 %653, i64* %RAX, align 8, !tbaa !2428
  %654 = load i64, i64* %RAX
  %655 = load i64, i64* %PC
  %656 = add i64 %655, 6
  store i64 %656, i64* %PC
  %657 = add i64 256, %654
  store i64 %657, i64* %RAX, align 8, !tbaa !2428
  %658 = icmp ult i64 %657, %654
  %659 = icmp ult i64 %657, 256
  %660 = or i1 %658, %659
  %661 = zext i1 %660 to i8
  %662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %661, i8* %662, align 1, !tbaa !2432
  %663 = trunc i64 %657 to i32
  %664 = and i32 %663, 255
  %665 = call i32 @llvm.ctpop.i32(i32 %664) #16
  %666 = trunc i32 %665 to i8
  %667 = and i8 %666, 1
  %668 = xor i8 %667, 1
  %669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %668, i8* %669, align 1, !tbaa !2446
  %670 = xor i64 256, %654
  %671 = xor i64 %670, %657
  %672 = lshr i64 %671, 4
  %673 = trunc i64 %672 to i8
  %674 = and i8 %673, 1
  %675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %674, i8* %675, align 1, !tbaa !2447
  %676 = icmp eq i64 %657, 0
  %677 = zext i1 %676 to i8
  %678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %677, i8* %678, align 1, !tbaa !2448
  %679 = lshr i64 %657, 63
  %680 = trunc i64 %679 to i8
  %681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %680, i8* %681, align 1, !tbaa !2449
  %682 = lshr i64 %654, 63
  %683 = xor i64 %679, %682
  %684 = add nuw nsw i64 %683, %679
  %685 = icmp eq i64 %684, 2
  %686 = zext i1 %685 to i8
  %687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %686, i8* %687, align 1, !tbaa !2450
  %688 = load i64, i64* %RBP
  %689 = load i64, i64* %RAX
  %690 = mul i64 %689, 4
  %691 = add i64 %688, -8320
  %692 = add i64 %691, %690
  %693 = load i64, i64* %PC
  %694 = add i64 %693, 11
  store i64 %694, i64* %PC
  %695 = inttoptr i64 %692 to i32*
  store i32 0, i32* %695
  %696 = load i64, i64* %RBP
  %697 = sub i64 %696, 10656
  %698 = load i64, i64* %PC
  %699 = add i64 %698, 11
  store i64 %699, i64* %PC
  %700 = inttoptr i64 %697 to i64*
  store i64 0, i64* %700
  %701 = load i64, i64* %RBP
  %702 = sub i64 %701, 10664
  %703 = load i64, i64* %PC
  %704 = add i64 %703, 11
  store i64 %704, i64* %PC
  %705 = inttoptr i64 %702 to i64*
  store i64 0, i64* %705
  %706 = load i64, i64* %RBP
  %707 = sub i64 %706, 10640
  %708 = load i64, i64* %PC
  %709 = add i64 %708, 11
  store i64 %709, i64* %PC
  %710 = inttoptr i64 %707 to i64*
  store i64 0, i64* %710
  br label %block_400bf6

block_401183:                                     ; preds = %block_401170
  %711 = load i64, i64* %RBP
  %712 = sub i64 %711, 56
  %713 = load i64, i64* %PC
  %714 = add i64 %713, 4
  store i64 %714, i64* %PC
  %715 = inttoptr i64 %712 to i64*
  %716 = load i64, i64* %715
  store i64 %716, i64* %RAX, align 8, !tbaa !2428
  %717 = load i64, i64* %RAX
  %718 = load i64, i64* %PC
  %719 = add i64 %718, 4
  store i64 %719, i64* %PC
  %720 = sub i64 %717, 1
  store i64 %720, i64* %RAX, align 8, !tbaa !2428
  %721 = icmp ult i64 %717, 1
  %722 = zext i1 %721 to i8
  %723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %722, i8* %723, align 1, !tbaa !2432
  %724 = trunc i64 %720 to i32
  %725 = and i32 %724, 255
  %726 = call i32 @llvm.ctpop.i32(i32 %725) #16
  %727 = trunc i32 %726 to i8
  %728 = and i8 %727, 1
  %729 = xor i8 %728, 1
  %730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %729, i8* %730, align 1, !tbaa !2446
  %731 = xor i64 1, %717
  %732 = xor i64 %731, %720
  %733 = lshr i64 %732, 4
  %734 = trunc i64 %733 to i8
  %735 = and i8 %734, 1
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %735, i8* %736, align 1, !tbaa !2447
  %737 = icmp eq i64 %720, 0
  %738 = zext i1 %737 to i8
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %738, i8* %739, align 1, !tbaa !2448
  %740 = lshr i64 %720, 63
  %741 = trunc i64 %740 to i8
  %742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %741, i8* %742, align 1, !tbaa !2449
  %743 = lshr i64 %717, 63
  %744 = xor i64 %740, %743
  %745 = add nuw nsw i64 %744, %743
  %746 = icmp eq i64 %745, 2
  %747 = zext i1 %746 to i8
  %748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %747, i8* %748, align 1, !tbaa !2450
  %749 = load i64, i64* %RBP
  %750 = load i64, i64* %RAX
  %751 = mul i64 %750, 8
  %752 = add i64 %749, -12736
  %753 = add i64 %752, %751
  %754 = load i64, i64* %PC
  %755 = add i64 %754, 8
  store i64 %755, i64* %PC
  %756 = inttoptr i64 %753 to i64*
  %757 = load i64, i64* %756
  store i64 %757, i64* %RAX, align 8, !tbaa !2428
  %758 = load i64, i64* %RBP
  %759 = sub i64 %758, 56
  %760 = load i64, i64* %PC
  %761 = add i64 %760, 4
  store i64 %761, i64* %PC
  %762 = inttoptr i64 %759 to i64*
  %763 = load i64, i64* %762
  store i64 %763, i64* %RCX, align 8, !tbaa !2428
  %764 = load i64, i64* %RBP
  %765 = load i64, i64* %RCX
  %766 = mul i64 %765, 8
  %767 = add i64 %764, -12736
  %768 = add i64 %767, %766
  %769 = load i64, i64* %RAX
  %770 = load i64, i64* %PC
  %771 = add i64 %770, 8
  store i64 %771, i64* %PC
  %772 = inttoptr i64 %768 to i64*
  store i64 %769, i64* %772
  %773 = load i64, i64* %RBP
  %774 = sub i64 %773, 56
  %775 = load i64, i64* %PC
  %776 = add i64 %775, 4
  store i64 %776, i64* %PC
  %777 = inttoptr i64 %774 to i64*
  %778 = load i64, i64* %777
  store i64 %778, i64* %RAX, align 8, !tbaa !2428
  %779 = load i64, i64* %RAX
  %780 = load i64, i64* %PC
  %781 = add i64 %780, 4
  store i64 %781, i64* %PC
  %782 = sub i64 %779, 1
  store i64 %782, i64* %RAX, align 8, !tbaa !2428
  %783 = icmp ult i64 %779, 1
  %784 = zext i1 %783 to i8
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %784, i8* %785, align 1, !tbaa !2432
  %786 = trunc i64 %782 to i32
  %787 = and i32 %786, 255
  %788 = call i32 @llvm.ctpop.i32(i32 %787) #16
  %789 = trunc i32 %788 to i8
  %790 = and i8 %789, 1
  %791 = xor i8 %790, 1
  %792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %791, i8* %792, align 1, !tbaa !2446
  %793 = xor i64 1, %779
  %794 = xor i64 %793, %782
  %795 = lshr i64 %794, 4
  %796 = trunc i64 %795 to i8
  %797 = and i8 %796, 1
  %798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %797, i8* %798, align 1, !tbaa !2447
  %799 = icmp eq i64 %782, 0
  %800 = zext i1 %799 to i8
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %800, i8* %801, align 1, !tbaa !2448
  %802 = lshr i64 %782, 63
  %803 = trunc i64 %802 to i8
  %804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %803, i8* %804, align 1, !tbaa !2449
  %805 = lshr i64 %779, 63
  %806 = xor i64 %802, %805
  %807 = add nuw nsw i64 %806, %805
  %808 = icmp eq i64 %807, 2
  %809 = zext i1 %808 to i8
  %810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %809, i8* %810, align 1, !tbaa !2450
  %811 = load i64, i64* %RBP
  %812 = load i64, i64* %RAX
  %813 = add i64 %811, -12992
  %814 = add i64 %813, %812
  %815 = load i64, i64* %PC
  %816 = add i64 %815, 7
  store i64 %816, i64* %PC
  %817 = inttoptr i64 %814 to i8*
  %818 = load i8, i8* %817
  store i8 %818, i8* %DL, align 1, !tbaa !2451
  %819 = load i64, i64* %RBP
  %820 = sub i64 %819, 56
  %821 = load i64, i64* %PC
  %822 = add i64 %821, 4
  store i64 %822, i64* %PC
  %823 = inttoptr i64 %820 to i64*
  %824 = load i64, i64* %823
  store i64 %824, i64* %RAX, align 8, !tbaa !2428
  %825 = load i64, i64* %RBP
  %826 = load i64, i64* %RAX
  %827 = add i64 %825, -12992
  %828 = add i64 %827, %826
  %829 = load i8, i8* %DL
  %830 = zext i8 %829 to i64
  %831 = load i64, i64* %PC
  %832 = add i64 %831, 7
  store i64 %832, i64* %PC
  %833 = inttoptr i64 %828 to i8*
  store i8 %829, i8* %833
  %834 = load i64, i64* %RBP
  %835 = sub i64 %834, 56
  %836 = load i64, i64* %PC
  %837 = add i64 %836, 4
  store i64 %837, i64* %PC
  %838 = inttoptr i64 %835 to i64*
  %839 = load i64, i64* %838
  store i64 %839, i64* %RAX, align 8, !tbaa !2428
  %840 = load i64, i64* %RAX
  %841 = load i64, i64* %PC
  %842 = add i64 %841, 4
  store i64 %842, i64* %PC
  %843 = add i64 -1, %840
  store i64 %843, i64* %RAX, align 8, !tbaa !2428
  %844 = icmp ult i64 %843, %840
  %845 = icmp ult i64 %843, -1
  %846 = or i1 %844, %845
  %847 = zext i1 %846 to i8
  %848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %847, i8* %848, align 1, !tbaa !2432
  %849 = trunc i64 %843 to i32
  %850 = and i32 %849, 255
  %851 = call i32 @llvm.ctpop.i32(i32 %850) #16
  %852 = trunc i32 %851 to i8
  %853 = and i8 %852, 1
  %854 = xor i8 %853, 1
  %855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %854, i8* %855, align 1, !tbaa !2446
  %856 = xor i64 -1, %840
  %857 = xor i64 %856, %843
  %858 = lshr i64 %857, 4
  %859 = trunc i64 %858 to i8
  %860 = and i8 %859, 1
  %861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %860, i8* %861, align 1, !tbaa !2447
  %862 = icmp eq i64 %843, 0
  %863 = zext i1 %862 to i8
  %864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %863, i8* %864, align 1, !tbaa !2448
  %865 = lshr i64 %843, 63
  %866 = trunc i64 %865 to i8
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %866, i8* %867, align 1, !tbaa !2449
  %868 = lshr i64 %840, 63
  %869 = xor i64 %865, %868
  %870 = xor i64 %865, 1
  %871 = add nuw nsw i64 %869, %870
  %872 = icmp eq i64 %871, 2
  %873 = zext i1 %872 to i8
  %874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %873, i8* %874, align 1, !tbaa !2450
  %875 = load i64, i64* %RBP
  %876 = sub i64 %875, 56
  %877 = load i64, i64* %RAX
  %878 = load i64, i64* %PC
  %879 = add i64 %878, 4
  store i64 %879, i64* %PC
  %880 = inttoptr i64 %876 to i64*
  store i64 %877, i64* %880
  %881 = load i64, i64* %PC
  %882 = sub i64 %881, 135
  %883 = load i64, i64* %PC
  %884 = add i64 %883, 5
  store i64 %884, i64* %PC
  %885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %882, i64* %885, align 8, !tbaa !2428
  br label %block_40113e

block_401170:                                     ; preds = %block_40113e, %block_401153
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.26, %block_40113e ], [ %MEMORY.26, %block_401153 ]
  %886 = load i64, i64* %RBP
  %887 = sub i64 %886, 13097
  %888 = load i64, i64* %PC
  %889 = add i64 %888, 6
  store i64 %889, i64* %PC
  %890 = inttoptr i64 %887 to i8*
  %891 = load i8, i8* %890
  store i8 %891, i8* %AL, align 1, !tbaa !2451
  %892 = load i8, i8* %AL
  %893 = zext i8 %892 to i64
  %894 = load i64, i64* %PC
  %895 = add i64 %894, 2
  store i64 %895, i64* %PC
  %896 = and i64 1, %893
  %897 = trunc i64 %896 to i8
  %898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %898, align 1, !tbaa !2432
  %899 = trunc i64 %896 to i32
  %900 = and i32 %899, 255
  %901 = call i32 @llvm.ctpop.i32(i32 %900) #16
  %902 = trunc i32 %901 to i8
  %903 = and i8 %902, 1
  %904 = xor i8 %903, 1
  %905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %904, i8* %905, align 1, !tbaa !2446
  %906 = icmp eq i8 %897, 0
  %907 = zext i1 %906 to i8
  %908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %907, i8* %908, align 1, !tbaa !2448
  %909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %909, align 1, !tbaa !2449
  %910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %910, align 1, !tbaa !2450
  %911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %911, align 1, !tbaa !2447
  %912 = load i64, i64* %PC
  %913 = add i64 %912, 11
  %914 = load i64, i64* %PC
  %915 = add i64 %914, 6
  %916 = load i64, i64* %PC
  %917 = add i64 %916, 6
  store i64 %917, i64* %PC
  %918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %919 = load i8, i8* %918, align 1, !tbaa !2448
  %920 = icmp eq i8 %919, 0
  %921 = zext i1 %920 to i8
  store i8 %921, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %923 = select i1 %920, i64 %913, i64 %915
  store i64 %923, i64* %922, align 8, !tbaa !2428
  %924 = load i8, i8* %BRANCH_TAKEN
  %925 = icmp eq i8 %924, 1
  br i1 %925, label %block_401183, label %block_40117e

block_4009da:                                     ; preds = %block_4009cc
  %926 = sub i64 %1608, 112
  %927 = load i64, i64* %PC
  %928 = add i64 %927, 4
  store i64 %928, i64* %PC
  %929 = inttoptr i64 %926 to i64*
  %930 = load i64, i64* %929
  store i64 %930, i64* %RAX, align 8, !tbaa !2428
  %931 = load i64, i64* %RAX
  %932 = load i64, i64* %PC
  %933 = add i64 %932, 3
  store i64 %933, i64* %PC
  %934 = inttoptr i64 %931 to i8*
  %935 = load i8, i8* %934
  %936 = zext i8 %935 to i64
  store i64 %936, i64* %RCX, align 8, !tbaa !2428
  %937 = load i32, i32* %ECX
  %938 = zext i32 %937 to i64
  %939 = load i64, i64* %PC
  %940 = add i64 %939, 2
  store i64 %940, i64* %PC
  %941 = and i64 %938, 4294967295
  store i64 %941, i64* %RAX, align 8, !tbaa !2428
  %942 = load i64, i64* %RBP
  %943 = load i64, i64* %RAX
  %944 = mul i64 %943, 8
  %945 = add i64 %942, -4224
  %946 = add i64 %945, %944
  %947 = load i64, i64* %PC
  %948 = add i64 %947, 8
  store i64 %948, i64* %PC
  %949 = inttoptr i64 %946 to i64*
  %950 = load i64, i64* %949
  store i64 %950, i64* %RDX, align 8, !tbaa !2428
  %951 = load i64, i64* %RDX
  %952 = load i64, i64* %PC
  %953 = add i64 %952, 4
  store i64 %953, i64* %PC
  %954 = add i64 1, %951
  store i64 %954, i64* %RDX, align 8, !tbaa !2428
  %955 = icmp ult i64 %954, %951
  %956 = icmp ult i64 %954, 1
  %957 = or i1 %955, %956
  %958 = zext i1 %957 to i8
  %959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %958, i8* %959, align 1, !tbaa !2432
  %960 = trunc i64 %954 to i32
  %961 = and i32 %960, 255
  %962 = call i32 @llvm.ctpop.i32(i32 %961) #16
  %963 = trunc i32 %962 to i8
  %964 = and i8 %963, 1
  %965 = xor i8 %964, 1
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %965, i8* %966, align 1, !tbaa !2446
  %967 = xor i64 1, %951
  %968 = xor i64 %967, %954
  %969 = lshr i64 %968, 4
  %970 = trunc i64 %969 to i8
  %971 = and i8 %970, 1
  %972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %971, i8* %972, align 1, !tbaa !2447
  %973 = icmp eq i64 %954, 0
  %974 = zext i1 %973 to i8
  %975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %974, i8* %975, align 1, !tbaa !2448
  %976 = lshr i64 %954, 63
  %977 = trunc i64 %976 to i8
  %978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %977, i8* %978, align 1, !tbaa !2449
  %979 = lshr i64 %951, 63
  %980 = xor i64 %976, %979
  %981 = add nuw nsw i64 %980, %976
  %982 = icmp eq i64 %981, 2
  %983 = zext i1 %982 to i8
  %984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %983, i8* %984, align 1, !tbaa !2450
  %985 = load i64, i64* %RBP
  %986 = load i64, i64* %RAX
  %987 = mul i64 %986, 8
  %988 = add i64 %985, -4224
  %989 = add i64 %988, %987
  %990 = load i64, i64* %RDX
  %991 = load i64, i64* %PC
  %992 = add i64 %991, 8
  store i64 %992, i64* %PC
  %993 = inttoptr i64 %989 to i64*
  store i64 %990, i64* %993
  %994 = load i64, i64* %RBP
  %995 = sub i64 %994, 112
  %996 = load i64, i64* %PC
  %997 = add i64 %996, 4
  store i64 %997, i64* %PC
  %998 = inttoptr i64 %995 to i64*
  %999 = load i64, i64* %998
  store i64 %999, i64* %RAX, align 8, !tbaa !2428
  %1000 = load i64, i64* %RAX
  %1001 = load i64, i64* %PC
  %1002 = add i64 %1001, 4
  store i64 %1002, i64* %PC
  %1003 = add i64 1, %1000
  store i64 %1003, i64* %RAX, align 8, !tbaa !2428
  %1004 = icmp ult i64 %1003, %1000
  %1005 = icmp ult i64 %1003, 1
  %1006 = or i1 %1004, %1005
  %1007 = zext i1 %1006 to i8
  %1008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1007, i8* %1008, align 1, !tbaa !2432
  %1009 = trunc i64 %1003 to i32
  %1010 = and i32 %1009, 255
  %1011 = call i32 @llvm.ctpop.i32(i32 %1010) #16
  %1012 = trunc i32 %1011 to i8
  %1013 = and i8 %1012, 1
  %1014 = xor i8 %1013, 1
  %1015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1014, i8* %1015, align 1, !tbaa !2446
  %1016 = xor i64 1, %1000
  %1017 = xor i64 %1016, %1003
  %1018 = lshr i64 %1017, 4
  %1019 = trunc i64 %1018 to i8
  %1020 = and i8 %1019, 1
  %1021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1020, i8* %1021, align 1, !tbaa !2447
  %1022 = icmp eq i64 %1003, 0
  %1023 = zext i1 %1022 to i8
  %1024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1023, i8* %1024, align 1, !tbaa !2448
  %1025 = lshr i64 %1003, 63
  %1026 = trunc i64 %1025 to i8
  %1027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1026, i8* %1027, align 1, !tbaa !2449
  %1028 = lshr i64 %1000, 63
  %1029 = xor i64 %1025, %1028
  %1030 = add nuw nsw i64 %1029, %1025
  %1031 = icmp eq i64 %1030, 2
  %1032 = zext i1 %1031 to i8
  %1033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1032, i8* %1033, align 1, !tbaa !2450
  %1034 = load i64, i64* %RBP
  %1035 = sub i64 %1034, 112
  %1036 = load i64, i64* %RAX
  %1037 = load i64, i64* %PC
  %1038 = add i64 %1037, 4
  store i64 %1038, i64* %PC
  %1039 = inttoptr i64 %1035 to i64*
  store i64 %1036, i64* %1039
  %1040 = load i64, i64* %RBP
  %1041 = sub i64 %1040, 48
  %1042 = load i64, i64* %PC
  %1043 = add i64 %1042, 4
  store i64 %1043, i64* %PC
  %1044 = inttoptr i64 %1041 to i64*
  %1045 = load i64, i64* %1044
  store i64 %1045, i64* %RAX, align 8, !tbaa !2428
  %1046 = load i64, i64* %RAX
  %1047 = load i64, i64* %PC
  %1048 = add i64 %1047, 4
  store i64 %1048, i64* %PC
  %1049 = add i64 1, %1046
  store i64 %1049, i64* %RAX, align 8, !tbaa !2428
  %1050 = icmp ult i64 %1049, %1046
  %1051 = icmp ult i64 %1049, 1
  %1052 = or i1 %1050, %1051
  %1053 = zext i1 %1052 to i8
  %1054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1053, i8* %1054, align 1, !tbaa !2432
  %1055 = trunc i64 %1049 to i32
  %1056 = and i32 %1055, 255
  %1057 = call i32 @llvm.ctpop.i32(i32 %1056) #16
  %1058 = trunc i32 %1057 to i8
  %1059 = and i8 %1058, 1
  %1060 = xor i8 %1059, 1
  %1061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1060, i8* %1061, align 1, !tbaa !2446
  %1062 = xor i64 1, %1046
  %1063 = xor i64 %1062, %1049
  %1064 = lshr i64 %1063, 4
  %1065 = trunc i64 %1064 to i8
  %1066 = and i8 %1065, 1
  %1067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1066, i8* %1067, align 1, !tbaa !2447
  %1068 = icmp eq i64 %1049, 0
  %1069 = zext i1 %1068 to i8
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1069, i8* %1070, align 1, !tbaa !2448
  %1071 = lshr i64 %1049, 63
  %1072 = trunc i64 %1071 to i8
  %1073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1072, i8* %1073, align 1, !tbaa !2449
  %1074 = lshr i64 %1046, 63
  %1075 = xor i64 %1071, %1074
  %1076 = add nuw nsw i64 %1075, %1071
  %1077 = icmp eq i64 %1076, 2
  %1078 = zext i1 %1077 to i8
  %1079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1078, i8* %1079, align 1, !tbaa !2450
  %1080 = load i64, i64* %RBP
  %1081 = sub i64 %1080, 48
  %1082 = load i64, i64* %RAX
  %1083 = load i64, i64* %PC
  %1084 = add i64 %1083, 4
  store i64 %1084, i64* %PC
  %1085 = inttoptr i64 %1081 to i64*
  store i64 %1082, i64* %1085
  %1086 = load i64, i64* %PC
  %1087 = sub i64 %1086, 67
  %1088 = load i64, i64* %PC
  %1089 = add i64 %1088, 5
  store i64 %1089, i64* %PC
  %1090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1087, i64* %1090, align 8, !tbaa !2428
  br label %block_4009cc

block_400f6a:                                     ; preds = %block_400e01
  %1091 = load i64, i64* %RBP
  %1092 = sub i64 %1091, 12992
  %1093 = load i64, i64* %PC
  %1094 = add i64 %1093, 7
  store i64 %1094, i64* %PC
  store i64 %1092, i64* %RAX, align 8, !tbaa !2428
  %1095 = load i64, i64* %RSI
  %1096 = load i32, i32* %ESI
  %1097 = zext i32 %1096 to i64
  %1098 = load i64, i64* %PC
  %1099 = add i64 %1098, 2
  store i64 %1099, i64* %PC
  %1100 = xor i64 %1097, %1095
  %1101 = trunc i64 %1100 to i32
  %1102 = and i64 %1100, 4294967295
  store i64 %1102, i64* %RSI, align 8, !tbaa !2428
  %1103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1103, align 1, !tbaa !2432
  %1104 = and i32 %1101, 255
  %1105 = call i32 @llvm.ctpop.i32(i32 %1104) #16
  %1106 = trunc i32 %1105 to i8
  %1107 = and i8 %1106, 1
  %1108 = xor i8 %1107, 1
  %1109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1108, i8* %1109, align 1, !tbaa !2446
  %1110 = icmp eq i32 %1101, 0
  %1111 = zext i1 %1110 to i8
  %1112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1111, i8* %1112, align 1, !tbaa !2448
  %1113 = lshr i32 %1101, 31
  %1114 = trunc i32 %1113 to i8
  %1115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1114, i8* %1115, align 1, !tbaa !2449
  %1116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1116, align 1, !tbaa !2450
  %1117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1117, align 1, !tbaa !2447
  %1118 = load i64, i64* %PC
  %1119 = add i64 %1118, 5
  store i64 %1119, i64* %PC
  store i64 2048, i64* %RCX, align 8, !tbaa !2428
  %1120 = load i32, i32* %ECX
  %1121 = zext i32 %1120 to i64
  %1122 = load i64, i64* %PC
  %1123 = add i64 %1122, 2
  store i64 %1123, i64* %PC
  %1124 = and i64 %1121, 4294967295
  store i64 %1124, i64* %RDX, align 8, !tbaa !2428
  %1125 = load i64, i64* %RBP
  %1126 = sub i64 %1125, 12736
  %1127 = load i64, i64* %PC
  %1128 = add i64 %1127, 7
  store i64 %1128, i64* %PC
  store i64 %1126, i64* %RDI, align 8, !tbaa !2428
  %1129 = load i64, i64* %PC
  %1130 = add i64 %1129, 5
  store i64 %1130, i64* %PC
  store i64 7, i64* %RCX, align 8, !tbaa !2428
  %1131 = load i64, i64* %RCX
  %1132 = load i64, i64* %RBP
  %1133 = sub i64 %1132, 10688
  %1134 = load i64, i64* %PC
  %1135 = add i64 %1134, 6
  store i64 %1135, i64* %PC
  %1136 = trunc i64 %1131 to i32
  %1137 = inttoptr i64 %1133 to i32*
  %1138 = load i32, i32* %1137
  %1139 = sub i32 %1136, %1138
  %1140 = zext i32 %1139 to i64
  store i64 %1140, i64* %RCX, align 8, !tbaa !2428
  %1141 = icmp ult i32 %1136, %1138
  %1142 = zext i1 %1141 to i8
  %1143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1142, i8* %1143, align 1, !tbaa !2432
  %1144 = and i32 %1139, 255
  %1145 = call i32 @llvm.ctpop.i32(i32 %1144) #16
  %1146 = trunc i32 %1145 to i8
  %1147 = and i8 %1146, 1
  %1148 = xor i8 %1147, 1
  %1149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1148, i8* %1149, align 1, !tbaa !2446
  %1150 = xor i32 %1138, %1136
  %1151 = xor i32 %1150, %1139
  %1152 = lshr i32 %1151, 4
  %1153 = trunc i32 %1152 to i8
  %1154 = and i8 %1153, 1
  %1155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1154, i8* %1155, align 1, !tbaa !2447
  %1156 = icmp eq i32 %1139, 0
  %1157 = zext i1 %1156 to i8
  %1158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1157, i8* %1158, align 1, !tbaa !2448
  %1159 = lshr i32 %1139, 31
  %1160 = trunc i32 %1159 to i8
  %1161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1160, i8* %1161, align 1, !tbaa !2449
  %1162 = lshr i32 %1136, 31
  %1163 = lshr i32 %1138, 31
  %1164 = xor i32 %1163, %1162
  %1165 = xor i32 %1159, %1162
  %1166 = add nuw nsw i32 %1165, %1164
  %1167 = icmp eq i32 %1166, 2
  %1168 = zext i1 %1167 to i8
  %1169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1168, i8* %1169, align 1, !tbaa !2450
  %1170 = bitcast i32* %R8D to i64*
  %1171 = load i64, i64* %RBP
  %1172 = sub i64 %1171, 10681
  %1173 = load i64, i64* %PC
  %1174 = add i64 %1173, 8
  store i64 %1174, i64* %PC
  %1175 = inttoptr i64 %1172 to i8*
  %1176 = load i8, i8* %1175
  %1177 = sext i8 %1176 to i64
  %1178 = and i64 %1177, 4294967295
  store i64 %1178, i64* %1170, align 8, !tbaa !2428
  %1179 = bitcast i32* %R8D to i64*
  %1180 = load i32, i32* %R8D
  %1181 = zext i32 %1180 to i64
  %1182 = load i8, i8* %CL
  %1183 = zext i8 %1182 to i64
  %1184 = load i64, i64* %PC
  %1185 = add i64 %1184, 3
  store i64 %1185, i64* %PC
  %1186 = trunc i64 %1183 to i5
  switch i5 %1186, label %1192 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit2
    i5 1, label %1187
  ]

; <label>:1187:                                   ; preds = %block_400f6a
  %1188 = shl i32 %1180, 1
  %1189 = icmp slt i32 %1180, 0
  %1190 = icmp slt i32 %1188, 0
  %1191 = xor i1 %1189, %1190
  br label %1201

; <label>:1192:                                   ; preds = %block_400f6a
  %1193 = and i64 %1183, 31
  %1194 = add nuw nsw i64 %1193, 4294967295
  %1195 = and i64 %1181, 4294967295
  %1196 = and i64 %1194, 4294967295
  %1197 = shl i64 %1195, %1196
  %1198 = trunc i64 %1197 to i32
  %1199 = icmp slt i32 %1198, 0
  %1200 = shl i32 %1198, 1
  br label %1201

; <label>:1201:                                   ; preds = %1192, %1187
  %1202 = phi i1 [ %1189, %1187 ], [ %1199, %1192 ]
  %1203 = phi i1 [ %1191, %1187 ], [ false, %1192 ]
  %1204 = phi i32 [ %1188, %1187 ], [ %1200, %1192 ]
  %1205 = zext i32 %1204 to i64
  store i64 %1205, i64* %1179, align 8, !tbaa !2428
  %1206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1207 = zext i1 %1202 to i8
  store i8 %1207, i8* %1206, align 1, !tbaa !2451
  %1208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1209 = and i32 %1204, 254
  %1210 = call i32 @llvm.ctpop.i32(i32 %1209) #16
  %1211 = trunc i32 %1210 to i8
  %1212 = and i8 %1211, 1
  %1213 = xor i8 %1212, 1
  store i8 %1213, i8* %1208, align 1, !tbaa !2451
  %1214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1214, align 1, !tbaa !2451
  %1215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1216 = icmp eq i32 %1204, 0
  %1217 = zext i1 %1216 to i8
  store i8 %1217, i8* %1215, align 1, !tbaa !2451
  %1218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1219 = lshr i32 %1204, 31
  %1220 = trunc i32 %1219 to i8
  store i8 %1220, i8* %1218, align 1, !tbaa !2451
  %1221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1222 = zext i1 %1203 to i8
  store i8 %1222, i8* %1221, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit2

_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit2: ; preds = %block_400f6a, %1201
  %1223 = load i8, i8* %R8B
  %1224 = zext i8 %1223 to i64
  %1225 = load i64, i64* %PC
  %1226 = add i64 %1225, 3
  store i64 %1226, i64* %PC
  store i8 %1223, i8* %CL, align 1, !tbaa !2451
  %1227 = load i64, i64* %RBP
  %1228 = sub i64 %1227, 10681
  %1229 = load i8, i8* %CL
  %1230 = zext i8 %1229 to i64
  %1231 = load i64, i64* %PC
  %1232 = add i64 %1231, 6
  store i64 %1232, i64* %PC
  %1233 = inttoptr i64 %1228 to i8*
  store i8 %1229, i8* %1233
  %1234 = load i64, i64* %RBP
  %1235 = sub i64 %1234, 10681
  %1236 = load i64, i64* %PC
  %1237 = add i64 %1236, 6
  store i64 %1237, i64* %PC
  %1238 = inttoptr i64 %1235 to i8*
  %1239 = load i8, i8* %1238
  store i8 %1239, i8* %CL, align 1, !tbaa !2451
  %1240 = load i64, i64* %RBP
  %1241 = sub i64 %1240, 120
  %1242 = load i64, i64* %PC
  %1243 = add i64 %1242, 4
  store i64 %1243, i64* %PC
  %1244 = inttoptr i64 %1241 to i64*
  %1245 = load i64, i64* %1244
  store i64 %1245, i64* %R9, align 8, !tbaa !2428
  %1246 = load i64, i64* %RBP
  %1247 = sub i64 %1246, 10680
  %1248 = load i64, i64* %PC
  %1249 = add i64 %1248, 7
  store i64 %1249, i64* %PC
  %1250 = inttoptr i64 %1247 to i64*
  %1251 = load i64, i64* %1250
  store i64 %1251, i64* %R10, align 8, !tbaa !2428
  %1252 = load i64, i64* %R9
  %1253 = load i64, i64* %R10
  %1254 = add i64 %1253, %1252
  %1255 = load i8, i8* %CL
  %1256 = zext i8 %1255 to i64
  %1257 = load i64, i64* %PC
  %1258 = add i64 %1257, 4
  store i64 %1258, i64* %PC
  %1259 = inttoptr i64 %1254 to i8*
  store i8 %1255, i8* %1259
  %1260 = load i64, i64* %RBP
  %1261 = sub i64 %1260, 10680
  %1262 = load i64, i64* %PC
  %1263 = add i64 %1262, 7
  store i64 %1263, i64* %PC
  %1264 = inttoptr i64 %1261 to i64*
  %1265 = load i64, i64* %1264
  store i64 %1265, i64* %R9, align 8, !tbaa !2428
  %1266 = load i64, i64* %R9
  %1267 = load i64, i64* %PC
  %1268 = add i64 %1267, 4
  store i64 %1268, i64* %PC
  %1269 = add i64 1, %1266
  store i64 %1269, i64* %R9, align 8, !tbaa !2428
  %1270 = icmp ult i64 %1269, %1266
  %1271 = icmp ult i64 %1269, 1
  %1272 = or i1 %1270, %1271
  %1273 = zext i1 %1272 to i8
  %1274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1273, i8* %1274, align 1, !tbaa !2432
  %1275 = trunc i64 %1269 to i32
  %1276 = and i32 %1275, 255
  %1277 = call i32 @llvm.ctpop.i32(i32 %1276) #16
  %1278 = trunc i32 %1277 to i8
  %1279 = and i8 %1278, 1
  %1280 = xor i8 %1279, 1
  %1281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1280, i8* %1281, align 1, !tbaa !2446
  %1282 = xor i64 1, %1266
  %1283 = xor i64 %1282, %1269
  %1284 = lshr i64 %1283, 4
  %1285 = trunc i64 %1284 to i8
  %1286 = and i8 %1285, 1
  %1287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1286, i8* %1287, align 1, !tbaa !2447
  %1288 = icmp eq i64 %1269, 0
  %1289 = zext i1 %1288 to i8
  %1290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1289, i8* %1290, align 1, !tbaa !2448
  %1291 = lshr i64 %1269, 63
  %1292 = trunc i64 %1291 to i8
  %1293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1292, i8* %1293, align 1, !tbaa !2449
  %1294 = lshr i64 %1266, 63
  %1295 = xor i64 %1291, %1294
  %1296 = add nuw nsw i64 %1295, %1291
  %1297 = icmp eq i64 %1296, 2
  %1298 = zext i1 %1297 to i8
  %1299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1298, i8* %1299, align 1, !tbaa !2450
  %1300 = load i64, i64* %RBP
  %1301 = sub i64 %1300, 10680
  %1302 = load i64, i64* %R9
  %1303 = load i64, i64* %PC
  %1304 = add i64 %1303, 7
  store i64 %1304, i64* %PC
  %1305 = inttoptr i64 %1301 to i64*
  store i64 %1302, i64* %1305
  %1306 = load i64, i64* %RBP
  %1307 = sub i64 %1306, 13096
  %1308 = load i64, i64* %RAX
  %1309 = load i64, i64* %PC
  %1310 = add i64 %1309, 7
  store i64 %1310, i64* %PC
  %1311 = inttoptr i64 %1307 to i64*
  store i64 %1308, i64* %1311
  %1312 = load i64, i64* %PC
  %1313 = sub i64 %1312, 2558
  %1314 = load i64, i64* %PC
  %1315 = add i64 %1314, 5
  %1316 = load i64, i64* %PC
  %1317 = add i64 %1316, 5
  store i64 %1317, i64* %PC
  %1318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1319 = load i64, i64* %1318, align 8, !tbaa !2428
  %1320 = add i64 %1319, -8
  %1321 = inttoptr i64 %1320 to i64*
  store i64 %1315, i64* %1321
  store i64 %1320, i64* %1318, align 8, !tbaa !2428
  %1322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1313, i64* %1322, align 8, !tbaa !2428
  %1323 = load i64, i64* %PC
  %1324 = call %struct.Memory* @ext_6020f8_memset(%struct.State* %0, i64 %1323, %struct.Memory* %MEMORY.27)
  %1325 = load i64, i64* %RBP
  %1326 = sub i64 %1325, 13096
  %1327 = load i64, i64* %PC
  %1328 = add i64 %1327, 7
  store i64 %1328, i64* %PC
  %1329 = inttoptr i64 %1326 to i64*
  %1330 = load i64, i64* %1329
  store i64 %1330, i64* %RAX, align 8, !tbaa !2428
  %1331 = load i64, i64* %RBP
  %1332 = sub i64 %1331, 13000
  %1333 = load i64, i64* %RAX
  %1334 = load i64, i64* %PC
  %1335 = add i64 %1334, 7
  store i64 %1335, i64* %PC
  %1336 = inttoptr i64 %1332 to i64*
  store i64 %1333, i64* %1336
  %1337 = load i64, i64* %RBP
  %1338 = sub i64 %1337, 56
  %1339 = load i64, i64* %PC
  %1340 = add i64 %1339, 8
  store i64 %1340, i64* %PC
  %1341 = inttoptr i64 %1338 to i64*
  store i64 0, i64* %1341
  br label %block_400fe9

block_400d67:                                     ; preds = %block_400bf6
  %1342 = sub i64 %643, 10664
  %1343 = load i64, i64* %PC
  %1344 = add i64 %1343, 8
  store i64 %1344, i64* %PC
  %1345 = inttoptr i64 %1342 to i64*
  %1346 = load i64, i64* %1345
  %1347 = sub i64 %1346, 64
  %1348 = icmp ult i64 %1346, 64
  %1349 = zext i1 %1348 to i8
  %1350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1349, i8* %1350, align 1, !tbaa !2432
  %1351 = trunc i64 %1347 to i32
  %1352 = and i32 %1351, 255
  %1353 = call i32 @llvm.ctpop.i32(i32 %1352) #16
  %1354 = trunc i32 %1353 to i8
  %1355 = and i8 %1354, 1
  %1356 = xor i8 %1355, 1
  %1357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1356, i8* %1357, align 1, !tbaa !2446
  %1358 = xor i64 %1346, 64
  %1359 = xor i64 %1358, %1347
  %1360 = lshr i64 %1359, 4
  %1361 = trunc i64 %1360 to i8
  %1362 = and i8 %1361, 1
  %1363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1362, i8* %1363, align 1, !tbaa !2447
  %1364 = icmp eq i64 %1347, 0
  %1365 = zext i1 %1364 to i8
  %1366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1365, i8* %1366, align 1, !tbaa !2448
  %1367 = lshr i64 %1347, 63
  %1368 = trunc i64 %1367 to i8
  %1369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1368, i8* %1369, align 1, !tbaa !2449
  %1370 = lshr i64 %1346, 63
  %1371 = xor i64 %1367, %1370
  %1372 = add nuw nsw i64 %1371, %1370
  %1373 = icmp eq i64 %1372, 2
  %1374 = zext i1 %1373 to i8
  %1375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1374, i8* %1375, align 1, !tbaa !2450
  %1376 = load i64, i64* %PC
  %1377 = add i64 %1376, 47
  %1378 = load i64, i64* %PC
  %1379 = add i64 %1378, 6
  %1380 = load i64, i64* %PC
  %1381 = add i64 %1380, 6
  store i64 %1381, i64* %PC
  %1382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1383 = load i8, i8* %1382, align 1, !tbaa !2432
  %1384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1385 = load i8, i8* %1384, align 1, !tbaa !2448
  %1386 = or i8 %1385, %1383
  %1387 = icmp ne i8 %1386, 0
  %1388 = zext i1 %1387 to i8
  store i8 %1388, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1390 = select i1 %1387, i64 %1377, i64 %1379
  store i64 %1390, i64* %1389, align 8, !tbaa !2428
  %1391 = load i8, i8* %BRANCH_TAKEN
  %1392 = icmp eq i8 %1391, 1
  br i1 %1392, label %block_400d9e, label %block_400d75

block_401153:                                     ; preds = %block_40113e
  %1393 = load i64, i64* %RBP
  %1394 = sub i64 %1393, 56
  %1395 = load i64, i64* %PC
  %1396 = add i64 %1395, 4
  store i64 %1396, i64* %PC
  %1397 = inttoptr i64 %1394 to i64*
  %1398 = load i64, i64* %1397
  store i64 %1398, i64* %RAX, align 8, !tbaa !2428
  %1399 = load i64, i64* %RAX
  %1400 = load i64, i64* %PC
  %1401 = add i64 %1400, 4
  store i64 %1401, i64* %PC
  %1402 = sub i64 %1399, 1
  store i64 %1402, i64* %RAX, align 8, !tbaa !2428
  %1403 = icmp ult i64 %1399, 1
  %1404 = zext i1 %1403 to i8
  %1405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1404, i8* %1405, align 1, !tbaa !2432
  %1406 = trunc i64 %1402 to i32
  %1407 = and i32 %1406, 255
  %1408 = call i32 @llvm.ctpop.i32(i32 %1407) #16
  %1409 = trunc i32 %1408 to i8
  %1410 = and i8 %1409, 1
  %1411 = xor i8 %1410, 1
  %1412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1411, i8* %1412, align 1, !tbaa !2446
  %1413 = xor i64 1, %1399
  %1414 = xor i64 %1413, %1402
  %1415 = lshr i64 %1414, 4
  %1416 = trunc i64 %1415 to i8
  %1417 = and i8 %1416, 1
  %1418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1417, i8* %1418, align 1, !tbaa !2447
  %1419 = icmp eq i64 %1402, 0
  %1420 = zext i1 %1419 to i8
  %1421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1420, i8* %1421, align 1, !tbaa !2448
  %1422 = lshr i64 %1402, 63
  %1423 = trunc i64 %1422 to i8
  %1424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1423, i8* %1424, align 1, !tbaa !2449
  %1425 = lshr i64 %1399, 63
  %1426 = xor i64 %1422, %1425
  %1427 = add nuw nsw i64 %1426, %1425
  %1428 = icmp eq i64 %1427, 2
  %1429 = zext i1 %1428 to i8
  %1430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1429, i8* %1430, align 1, !tbaa !2450
  %1431 = load i64, i64* %RBP
  %1432 = load i64, i64* %RAX
  %1433 = mul i64 %1432, 8
  %1434 = add i64 %1431, -12736
  %1435 = add i64 %1434, %1433
  %1436 = load i64, i64* %PC
  %1437 = add i64 %1436, 8
  store i64 %1437, i64* %PC
  %1438 = inttoptr i64 %1435 to i64*
  %1439 = load i64, i64* %1438
  store i64 %1439, i64* %RAX, align 8, !tbaa !2428
  %1440 = load i64, i64* %RAX
  %1441 = load i64, i64* %RBP
  %1442 = sub i64 %1441, 88
  %1443 = load i64, i64* %PC
  %1444 = add i64 %1443, 4
  store i64 %1444, i64* %PC
  %1445 = inttoptr i64 %1442 to i64*
  %1446 = load i64, i64* %1445
  %1447 = sub i64 %1440, %1446
  %1448 = icmp ugt i64 %1446, %1440
  %1449 = zext i1 %1448 to i8
  %1450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1449, i8* %1450, align 1, !tbaa !2432
  %1451 = trunc i64 %1447 to i32
  %1452 = and i32 %1451, 255
  %1453 = call i32 @llvm.ctpop.i32(i32 %1452) #16
  %1454 = trunc i32 %1453 to i8
  %1455 = and i8 %1454, 1
  %1456 = xor i8 %1455, 1
  %1457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1456, i8* %1457, align 1, !tbaa !2446
  %1458 = xor i64 %1446, %1440
  %1459 = xor i64 %1458, %1447
  %1460 = lshr i64 %1459, 4
  %1461 = trunc i64 %1460 to i8
  %1462 = and i8 %1461, 1
  %1463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1462, i8* %1463, align 1, !tbaa !2447
  %1464 = icmp eq i64 %1447, 0
  %1465 = zext i1 %1464 to i8
  %1466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1465, i8* %1466, align 1, !tbaa !2448
  %1467 = lshr i64 %1447, 63
  %1468 = trunc i64 %1467 to i8
  %1469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1468, i8* %1469, align 1, !tbaa !2449
  %1470 = lshr i64 %1440, 63
  %1471 = lshr i64 %1446, 63
  %1472 = xor i64 %1471, %1470
  %1473 = xor i64 %1467, %1470
  %1474 = add nuw nsw i64 %1473, %1472
  %1475 = icmp eq i64 %1474, 2
  %1476 = zext i1 %1475 to i8
  %1477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1476, i8* %1477, align 1, !tbaa !2450
  %1478 = load i64, i64* %PC
  %1479 = add i64 %1478, 3
  store i64 %1479, i64* %PC
  %1480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1481 = load i8, i8* %1480, align 1, !tbaa !2432
  %1482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1483 = load i8, i8* %1482, align 1, !tbaa !2448
  %1484 = or i8 %1483, %1481
  %1485 = icmp eq i8 %1484, 0
  %1486 = zext i1 %1485 to i8
  store i8 %1486, i8* %CL, align 1, !tbaa !2451
  %1487 = load i64, i64* %RBP
  %1488 = sub i64 %1487, 13097
  %1489 = load i8, i8* %CL
  %1490 = zext i8 %1489 to i64
  %1491 = load i64, i64* %PC
  %1492 = add i64 %1491, 6
  store i64 %1492, i64* %PC
  %1493 = inttoptr i64 %1488 to i8*
  store i8 %1489, i8* %1493
  br label %block_401170

block_400d4b:                                     ; preds = %block_400c1d, %block_400d46
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.4, %block_400d46 ], [ %MEMORY.0, %block_400c1d ]
  %1494 = load i64, i64* %PC
  %1495 = add i64 %1494, 5
  %1496 = load i64, i64* %PC
  %1497 = add i64 %1496, 5
  store i64 %1497, i64* %PC
  %1498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1495, i64* %1498, align 8, !tbaa !2428
  %1499 = load i64, i64* %RBP
  %1500 = sub i64 %1499, 10640
  %1501 = load i64, i64* %PC
  %1502 = add i64 %1501, 7
  store i64 %1502, i64* %PC
  %1503 = inttoptr i64 %1500 to i64*
  %1504 = load i64, i64* %1503
  store i64 %1504, i64* %RAX, align 8, !tbaa !2428
  %1505 = load i64, i64* %RAX
  %1506 = load i64, i64* %PC
  %1507 = add i64 %1506, 4
  store i64 %1507, i64* %PC
  %1508 = add i64 1, %1505
  store i64 %1508, i64* %RAX, align 8, !tbaa !2428
  %1509 = icmp ult i64 %1508, %1505
  %1510 = icmp ult i64 %1508, 1
  %1511 = or i1 %1509, %1510
  %1512 = zext i1 %1511 to i8
  %1513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1512, i8* %1513, align 1, !tbaa !2432
  %1514 = trunc i64 %1508 to i32
  %1515 = and i32 %1514, 255
  %1516 = call i32 @llvm.ctpop.i32(i32 %1515) #16
  %1517 = trunc i32 %1516 to i8
  %1518 = and i8 %1517, 1
  %1519 = xor i8 %1518, 1
  %1520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1519, i8* %1520, align 1, !tbaa !2446
  %1521 = xor i64 1, %1505
  %1522 = xor i64 %1521, %1508
  %1523 = lshr i64 %1522, 4
  %1524 = trunc i64 %1523 to i8
  %1525 = and i8 %1524, 1
  %1526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1525, i8* %1526, align 1, !tbaa !2447
  %1527 = icmp eq i64 %1508, 0
  %1528 = zext i1 %1527 to i8
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1528, i8* %1529, align 1, !tbaa !2448
  %1530 = lshr i64 %1508, 63
  %1531 = trunc i64 %1530 to i8
  %1532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1531, i8* %1532, align 1, !tbaa !2449
  %1533 = lshr i64 %1505, 63
  %1534 = xor i64 %1530, %1533
  %1535 = add nuw nsw i64 %1534, %1530
  %1536 = icmp eq i64 %1535, 2
  %1537 = zext i1 %1536 to i8
  %1538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1537, i8* %1538, align 1, !tbaa !2450
  %1539 = load i64, i64* %RBP
  %1540 = sub i64 %1539, 10640
  %1541 = load i64, i64* %RAX
  %1542 = load i64, i64* %PC
  %1543 = add i64 %1542, 7
  store i64 %1543, i64* %PC
  %1544 = inttoptr i64 %1540 to i64*
  store i64 %1541, i64* %1544
  %1545 = load i64, i64* %PC
  %1546 = sub i64 %1545, 364
  %1547 = load i64, i64* %PC
  %1548 = add i64 %1547, 5
  store i64 %1548, i64* %PC
  %1549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1546, i64* %1549, align 8, !tbaa !2428
  br label %block_400bf6

block_4009cc:                                     ; preds = %block_4009da, %block_400870
  %MEMORY.3 = phi %struct.Memory* [ %588, %block_400870 ], [ %MEMORY.3, %block_4009da ]
  %1550 = load i64, i64* %RBP
  %1551 = sub i64 %1550, 48
  %1552 = load i64, i64* %PC
  %1553 = add i64 %1552, 4
  store i64 %1553, i64* %PC
  %1554 = inttoptr i64 %1551 to i64*
  %1555 = load i64, i64* %1554
  store i64 %1555, i64* %RAX, align 8, !tbaa !2428
  %1556 = load i64, i64* %RAX
  %1557 = load i64, i64* %RBP
  %1558 = sub i64 %1557, 40
  %1559 = load i64, i64* %PC
  %1560 = add i64 %1559, 4
  store i64 %1560, i64* %PC
  %1561 = inttoptr i64 %1558 to i64*
  %1562 = load i64, i64* %1561
  %1563 = sub i64 %1556, %1562
  %1564 = icmp ugt i64 %1562, %1556
  %1565 = zext i1 %1564 to i8
  %1566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1565, i8* %1566, align 1, !tbaa !2432
  %1567 = trunc i64 %1563 to i32
  %1568 = and i32 %1567, 255
  %1569 = call i32 @llvm.ctpop.i32(i32 %1568) #16
  %1570 = trunc i32 %1569 to i8
  %1571 = and i8 %1570, 1
  %1572 = xor i8 %1571, 1
  %1573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1572, i8* %1573, align 1, !tbaa !2446
  %1574 = xor i64 %1562, %1556
  %1575 = xor i64 %1574, %1563
  %1576 = lshr i64 %1575, 4
  %1577 = trunc i64 %1576 to i8
  %1578 = and i8 %1577, 1
  %1579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1578, i8* %1579, align 1, !tbaa !2447
  %1580 = icmp eq i64 %1563, 0
  %1581 = zext i1 %1580 to i8
  %1582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1581, i8* %1582, align 1, !tbaa !2448
  %1583 = lshr i64 %1563, 63
  %1584 = trunc i64 %1583 to i8
  %1585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1584, i8* %1585, align 1, !tbaa !2449
  %1586 = lshr i64 %1556, 63
  %1587 = lshr i64 %1562, 63
  %1588 = xor i64 %1587, %1586
  %1589 = xor i64 %1583, %1586
  %1590 = add nuw nsw i64 %1589, %1588
  %1591 = icmp eq i64 %1590, 2
  %1592 = zext i1 %1591 to i8
  %1593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1592, i8* %1593, align 1, !tbaa !2450
  %1594 = load i64, i64* %PC
  %1595 = add i64 %1594, 64
  %1596 = load i64, i64* %PC
  %1597 = add i64 %1596, 6
  %1598 = load i64, i64* %PC
  %1599 = add i64 %1598, 6
  store i64 %1599, i64* %PC
  %1600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1601 = load i8, i8* %1600, align 1, !tbaa !2432
  %1602 = icmp eq i8 %1601, 0
  %1603 = zext i1 %1602 to i8
  store i8 %1603, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1605 = select i1 %1602, i64 %1595, i64 %1597
  store i64 %1605, i64* %1604, align 8, !tbaa !2428
  %1606 = load i8, i8* %BRANCH_TAKEN
  %1607 = icmp eq i8 %1606, 1
  %1608 = load i64, i64* %RBP
  br i1 %1607, label %block_400a14, label %block_4009da

block_400d46:                                     ; preds = %block_400d3b, %block_400d2a
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.7, %block_400d2a ], [ %MEMORY.7, %block_400d3b ]
  %1609 = load i64, i64* %PC
  %1610 = add i64 %1609, 5
  %1611 = load i64, i64* %PC
  %1612 = add i64 %1611, 5
  store i64 %1612, i64* %PC
  %1613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1610, i64* %1613, align 8, !tbaa !2428
  br label %block_400d4b

block_400fe9:                                     ; preds = %block_4010ec, %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit2
  %MEMORY.5 = phi %struct.Memory* [ %1324, %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit2 ], [ %MEMORY.10, %block_4010ec ]
  %1614 = load i64, i64* %RBP
  %1615 = sub i64 %1614, 56
  %1616 = load i64, i64* %PC
  %1617 = add i64 %1616, 8
  store i64 %1617, i64* %PC
  %1618 = inttoptr i64 %1615 to i64*
  %1619 = load i64, i64* %1618
  %1620 = sub i64 %1619, 256
  %1621 = icmp ult i64 %1619, 256
  %1622 = zext i1 %1621 to i8
  %1623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1622, i8* %1623, align 1, !tbaa !2432
  %1624 = trunc i64 %1620 to i32
  %1625 = and i32 %1624, 255
  %1626 = call i32 @llvm.ctpop.i32(i32 %1625) #16
  %1627 = trunc i32 %1626 to i8
  %1628 = and i8 %1627, 1
  %1629 = xor i8 %1628, 1
  %1630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1629, i8* %1630, align 1, !tbaa !2446
  %1631 = xor i64 %1619, 256
  %1632 = xor i64 %1631, %1620
  %1633 = lshr i64 %1632, 4
  %1634 = trunc i64 %1633 to i8
  %1635 = and i8 %1634, 1
  %1636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1635, i8* %1636, align 1, !tbaa !2447
  %1637 = icmp eq i64 %1620, 0
  %1638 = zext i1 %1637 to i8
  %1639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1638, i8* %1639, align 1, !tbaa !2448
  %1640 = lshr i64 %1620, 63
  %1641 = trunc i64 %1640 to i8
  %1642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1641, i8* %1642, align 1, !tbaa !2449
  %1643 = lshr i64 %1619, 63
  %1644 = xor i64 %1640, %1643
  %1645 = add nuw nsw i64 %1644, %1643
  %1646 = icmp eq i64 %1645, 2
  %1647 = zext i1 %1646 to i8
  %1648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1647, i8* %1648, align 1, !tbaa !2450
  %1649 = load i64, i64* %PC
  %1650 = add i64 %1649, 273
  %1651 = load i64, i64* %PC
  %1652 = add i64 %1651, 6
  %1653 = load i64, i64* %PC
  %1654 = add i64 %1653, 6
  store i64 %1654, i64* %PC
  %1655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1656 = load i8, i8* %1655, align 1, !tbaa !2432
  %1657 = icmp eq i8 %1656, 0
  %1658 = zext i1 %1657 to i8
  store i8 %1658, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1660 = select i1 %1657, i64 %1650, i64 %1652
  store i64 %1660, i64* %1659, align 8, !tbaa !2428
  %1661 = load i8, i8* %BRANCH_TAKEN
  %1662 = icmp eq i8 %1661, 1
  %1663 = load i64, i64* %RBP
  br i1 %1662, label %block_401102, label %block_400ff7

block_400ede:                                     ; preds = %block_400e5b
  %1664 = sub i64 %4839, 10688
  %1665 = load i64, i64* %PC
  %1666 = add i64 %1665, 6
  store i64 %1666, i64* %PC
  %1667 = inttoptr i64 %1664 to i32*
  %1668 = load i32, i32* %1667
  %1669 = zext i32 %1668 to i64
  store i64 %1669, i64* %RAX, align 8, !tbaa !2428
  %1670 = load i64, i64* %RAX
  %1671 = load i64, i64* %PC
  %1672 = add i64 %1671, 3
  store i64 %1672, i64* %PC
  %1673 = trunc i64 %1670 to i32
  %1674 = add i32 1, %1673
  %1675 = zext i32 %1674 to i64
  store i64 %1675, i64* %RAX, align 8, !tbaa !2428
  %1676 = icmp ult i32 %1674, %1673
  %1677 = icmp ult i32 %1674, 1
  %1678 = or i1 %1676, %1677
  %1679 = zext i1 %1678 to i8
  %1680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1679, i8* %1680, align 1, !tbaa !2432
  %1681 = and i32 %1674, 255
  %1682 = call i32 @llvm.ctpop.i32(i32 %1681) #16
  %1683 = trunc i32 %1682 to i8
  %1684 = and i8 %1683, 1
  %1685 = xor i8 %1684, 1
  %1686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1685, i8* %1686, align 1, !tbaa !2446
  %1687 = xor i64 1, %1670
  %1688 = trunc i64 %1687 to i32
  %1689 = xor i32 %1688, %1674
  %1690 = lshr i32 %1689, 4
  %1691 = trunc i32 %1690 to i8
  %1692 = and i8 %1691, 1
  %1693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1692, i8* %1693, align 1, !tbaa !2447
  %1694 = icmp eq i32 %1674, 0
  %1695 = zext i1 %1694 to i8
  %1696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1695, i8* %1696, align 1, !tbaa !2448
  %1697 = lshr i32 %1674, 31
  %1698 = trunc i32 %1697 to i8
  %1699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1698, i8* %1699, align 1, !tbaa !2449
  %1700 = lshr i32 %1673, 31
  %1701 = xor i32 %1697, %1700
  %1702 = add nuw nsw i32 %1701, %1697
  %1703 = icmp eq i32 %1702, 2
  %1704 = zext i1 %1703 to i8
  %1705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1704, i8* %1705, align 1, !tbaa !2450
  %1706 = load i64, i64* %RBP
  %1707 = sub i64 %1706, 10688
  %1708 = load i32, i32* %EAX
  %1709 = zext i32 %1708 to i64
  %1710 = load i64, i64* %PC
  %1711 = add i64 %1710, 6
  store i64 %1711, i64* %PC
  %1712 = inttoptr i64 %1707 to i32*
  store i32 %1708, i32* %1712
  %1713 = load i64, i64* %RBP
  %1714 = sub i64 %1713, 10681
  %1715 = load i64, i64* %PC
  %1716 = add i64 %1715, 7
  store i64 %1716, i64* %PC
  %1717 = inttoptr i64 %1714 to i8*
  %1718 = load i8, i8* %1717
  %1719 = sext i8 %1718 to i64
  %1720 = and i64 %1719, 4294967295
  store i64 %1720, i64* %RAX, align 8, !tbaa !2428
  %1721 = load i64, i64* %RAX
  %1722 = load i64, i64* %PC
  %1723 = add i64 %1722, 3
  store i64 %1723, i64* %PC
  %1724 = trunc i64 %1721 to i32
  %1725 = shl i32 %1724, 1
  %1726 = icmp slt i32 %1724, 0
  %1727 = icmp slt i32 %1725, 0
  %1728 = xor i1 %1726, %1727
  %1729 = zext i32 %1725 to i64
  store i64 %1729, i64* %RAX, align 8, !tbaa !2428
  %1730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1731 = zext i1 %1726 to i8
  store i8 %1731, i8* %1730, align 1, !tbaa !2451
  %1732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1733 = and i32 %1725, 254
  %1734 = call i32 @llvm.ctpop.i32(i32 %1733) #16
  %1735 = trunc i32 %1734 to i8
  %1736 = and i8 %1735, 1
  %1737 = xor i8 %1736, 1
  store i8 %1737, i8* %1732, align 1, !tbaa !2451
  %1738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1738, align 1, !tbaa !2451
  %1739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1740 = icmp eq i32 %1725, 0
  %1741 = zext i1 %1740 to i8
  store i8 %1741, i8* %1739, align 1, !tbaa !2451
  %1742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1743 = lshr i32 %1725, 31
  %1744 = trunc i32 %1743 to i8
  store i8 %1744, i8* %1742, align 1, !tbaa !2451
  %1745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1746 = zext i1 %1728 to i8
  store i8 %1746, i8* %1745, align 1, !tbaa !2451
  %1747 = load i8, i8* %AL
  %1748 = zext i8 %1747 to i64
  %1749 = load i64, i64* %PC
  %1750 = add i64 %1749, 2
  store i64 %1750, i64* %PC
  store i8 %1747, i8* %CL, align 1, !tbaa !2451
  %1751 = load i64, i64* %RBP
  %1752 = sub i64 %1751, 10681
  %1753 = load i8, i8* %CL
  %1754 = zext i8 %1753 to i64
  %1755 = load i64, i64* %PC
  %1756 = add i64 %1755, 6
  store i64 %1756, i64* %PC
  %1757 = inttoptr i64 %1752 to i8*
  store i8 %1753, i8* %1757
  br label %block_400eff

block_401332:                                     ; preds = %block_401316
  %1758 = add i64 %2136, 8
  store i64 %1758, i64* %PC
  %1759 = inttoptr i64 %2135 to i64*
  store i64 128, i64* %1759
  %1760 = load i64, i64* %RBP
  %1761 = sub i64 %1760, 104
  %1762 = load i64, i64* %PC
  %1763 = add i64 %1762, 4
  store i64 %1763, i64* %PC
  %1764 = inttoptr i64 %1761 to i64*
  %1765 = load i64, i64* %1764
  store i64 %1765, i64* %RAX, align 8, !tbaa !2428
  %1766 = load i64, i64* %RAX
  %1767 = load i64, i64* %PC
  %1768 = add i64 %1767, 4
  store i64 %1768, i64* %PC
  %1769 = add i64 1, %1766
  store i64 %1769, i64* %RAX, align 8, !tbaa !2428
  %1770 = icmp ult i64 %1769, %1766
  %1771 = icmp ult i64 %1769, 1
  %1772 = or i1 %1770, %1771
  %1773 = zext i1 %1772 to i8
  %1774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1773, i8* %1774, align 1, !tbaa !2432
  %1775 = trunc i64 %1769 to i32
  %1776 = and i32 %1775, 255
  %1777 = call i32 @llvm.ctpop.i32(i32 %1776) #16
  %1778 = trunc i32 %1777 to i8
  %1779 = and i8 %1778, 1
  %1780 = xor i8 %1779, 1
  %1781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1780, i8* %1781, align 1, !tbaa !2446
  %1782 = xor i64 1, %1766
  %1783 = xor i64 %1782, %1769
  %1784 = lshr i64 %1783, 4
  %1785 = trunc i64 %1784 to i8
  %1786 = and i8 %1785, 1
  %1787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1786, i8* %1787, align 1, !tbaa !2447
  %1788 = icmp eq i64 %1769, 0
  %1789 = zext i1 %1788 to i8
  %1790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1789, i8* %1790, align 1, !tbaa !2448
  %1791 = lshr i64 %1769, 63
  %1792 = trunc i64 %1791 to i8
  %1793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1792, i8* %1793, align 1, !tbaa !2449
  %1794 = lshr i64 %1766, 63
  %1795 = xor i64 %1791, %1794
  %1796 = add nuw nsw i64 %1795, %1791
  %1797 = icmp eq i64 %1796, 2
  %1798 = zext i1 %1797 to i8
  %1799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1798, i8* %1799, align 1, !tbaa !2450
  %1800 = load i64, i64* %RBP
  %1801 = sub i64 %1800, 104
  %1802 = load i64, i64* %RAX
  %1803 = load i64, i64* %PC
  %1804 = add i64 %1803, 4
  store i64 %1804, i64* %PC
  %1805 = inttoptr i64 %1801 to i64*
  store i64 %1802, i64* %1805
  br label %block_401346

block_400f30:                                     ; preds = %block_400eff, %block_400f1e
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.9, %block_400eff ], [ %MEMORY.9, %block_400f1e ]
  %1806 = load i64, i64* %RBP
  %1807 = sub i64 %1806, 72
  %1808 = load i64, i64* %PC
  %1809 = add i64 %1808, 4
  store i64 %1809, i64* %PC
  %1810 = inttoptr i64 %1807 to i64*
  %1811 = load i64, i64* %1810
  store i64 %1811, i64* %RAX, align 8, !tbaa !2428
  %1812 = load i64, i64* %RAX
  %1813 = load i64, i64* %PC
  %1814 = add i64 %1813, 4
  store i64 %1814, i64* %PC
  %1815 = lshr i64 %1812, 63
  %1816 = trunc i64 %1815 to i8
  %1817 = trunc i64 %1812 to i8
  %1818 = and i8 %1817, 1
  %1819 = lshr i64 %1812, 1
  store i64 %1819, i64* %RAX, align 8, !tbaa !2428
  %1820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1818, i8* %1820, align 1, !tbaa !2451
  %1821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1822 = trunc i64 %1819 to i32
  %1823 = and i32 %1822, 255
  %1824 = call i32 @llvm.ctpop.i32(i32 %1823) #16
  %1825 = trunc i32 %1824 to i8
  %1826 = and i8 %1825, 1
  %1827 = xor i8 %1826, 1
  store i8 %1827, i8* %1821, align 1, !tbaa !2451
  %1828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1828, align 1, !tbaa !2451
  %1829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1830 = icmp eq i64 %1819, 0
  %1831 = zext i1 %1830 to i8
  store i8 %1831, i8* %1829, align 1, !tbaa !2451
  %1832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1832, align 1, !tbaa !2451
  %1833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1816, i8* %1833, align 1, !tbaa !2451
  %1834 = load i64, i64* %RBP
  %1835 = sub i64 %1834, 72
  %1836 = load i64, i64* %RAX
  %1837 = load i64, i64* %PC
  %1838 = add i64 %1837, 4
  store i64 %1838, i64* %PC
  %1839 = inttoptr i64 %1835 to i64*
  store i64 %1836, i64* %1839
  %1840 = load i64, i64* %RBP
  %1841 = sub i64 %1840, 48
  %1842 = load i64, i64* %PC
  %1843 = add i64 %1842, 4
  store i64 %1843, i64* %PC
  %1844 = inttoptr i64 %1841 to i64*
  %1845 = load i64, i64* %1844
  store i64 %1845, i64* %RAX, align 8, !tbaa !2428
  %1846 = load i64, i64* %RAX
  %1847 = load i64, i64* %PC
  %1848 = add i64 %1847, 4
  store i64 %1848, i64* %PC
  %1849 = add i64 1, %1846
  store i64 %1849, i64* %RAX, align 8, !tbaa !2428
  %1850 = icmp ult i64 %1849, %1846
  %1851 = icmp ult i64 %1849, 1
  %1852 = or i1 %1850, %1851
  %1853 = zext i1 %1852 to i8
  %1854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1853, i8* %1854, align 1, !tbaa !2432
  %1855 = trunc i64 %1849 to i32
  %1856 = and i32 %1855, 255
  %1857 = call i32 @llvm.ctpop.i32(i32 %1856) #16
  %1858 = trunc i32 %1857 to i8
  %1859 = and i8 %1858, 1
  %1860 = xor i8 %1859, 1
  %1861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1860, i8* %1861, align 1, !tbaa !2446
  %1862 = xor i64 1, %1846
  %1863 = xor i64 %1862, %1849
  %1864 = lshr i64 %1863, 4
  %1865 = trunc i64 %1864 to i8
  %1866 = and i8 %1865, 1
  %1867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1866, i8* %1867, align 1, !tbaa !2447
  %1868 = icmp eq i64 %1849, 0
  %1869 = zext i1 %1868 to i8
  %1870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1869, i8* %1870, align 1, !tbaa !2448
  %1871 = lshr i64 %1849, 63
  %1872 = trunc i64 %1871 to i8
  %1873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1872, i8* %1873, align 1, !tbaa !2449
  %1874 = lshr i64 %1846, 63
  %1875 = xor i64 %1871, %1874
  %1876 = add nuw nsw i64 %1875, %1871
  %1877 = icmp eq i64 %1876, 2
  %1878 = zext i1 %1877 to i8
  %1879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1878, i8* %1879, align 1, !tbaa !2450
  %1880 = load i64, i64* %RBP
  %1881 = sub i64 %1880, 48
  %1882 = load i64, i64* %RAX
  %1883 = load i64, i64* %PC
  %1884 = add i64 %1883, 4
  store i64 %1884, i64* %PC
  %1885 = inttoptr i64 %1881 to i64*
  store i64 %1882, i64* %1885
  %1886 = load i64, i64* %PC
  %1887 = sub i64 %1886, 269
  %1888 = load i64, i64* %PC
  %1889 = add i64 %1888, 5
  store i64 %1889, i64* %PC
  %1890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1887, i64* %1890, align 8, !tbaa !2428
  br label %block_400e3b

block_400d2a:                                     ; preds = %block_400cde, %block_400d1c
  %MEMORY.7 = phi %struct.Memory* [ %MEMORY.17, %block_400cde ], [ %MEMORY.17, %block_400d1c ]
  %1891 = load i64, i64* %RBP
  %1892 = sub i64 %1891, 48
  %1893 = load i64, i64* %PC
  %1894 = add i64 %1893, 4
  store i64 %1894, i64* %PC
  %1895 = inttoptr i64 %1892 to i64*
  %1896 = load i64, i64* %1895
  store i64 %1896, i64* %RAX, align 8, !tbaa !2428
  %1897 = load i64, i64* %RAX
  %1898 = load i64, i64* %RBP
  %1899 = sub i64 %1898, 10664
  %1900 = load i64, i64* %PC
  %1901 = add i64 %1900, 7
  store i64 %1901, i64* %PC
  %1902 = inttoptr i64 %1899 to i64*
  %1903 = load i64, i64* %1902
  %1904 = sub i64 %1897, %1903
  %1905 = icmp ugt i64 %1903, %1897
  %1906 = zext i1 %1905 to i8
  %1907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1906, i8* %1907, align 1, !tbaa !2432
  %1908 = trunc i64 %1904 to i32
  %1909 = and i32 %1908, 255
  %1910 = call i32 @llvm.ctpop.i32(i32 %1909) #16
  %1911 = trunc i32 %1910 to i8
  %1912 = and i8 %1911, 1
  %1913 = xor i8 %1912, 1
  %1914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1913, i8* %1914, align 1, !tbaa !2446
  %1915 = xor i64 %1903, %1897
  %1916 = xor i64 %1915, %1904
  %1917 = lshr i64 %1916, 4
  %1918 = trunc i64 %1917 to i8
  %1919 = and i8 %1918, 1
  %1920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1919, i8* %1920, align 1, !tbaa !2447
  %1921 = icmp eq i64 %1904, 0
  %1922 = zext i1 %1921 to i8
  %1923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1922, i8* %1923, align 1, !tbaa !2448
  %1924 = lshr i64 %1904, 63
  %1925 = trunc i64 %1924 to i8
  %1926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1925, i8* %1926, align 1, !tbaa !2449
  %1927 = lshr i64 %1897, 63
  %1928 = lshr i64 %1903, 63
  %1929 = xor i64 %1928, %1927
  %1930 = xor i64 %1924, %1927
  %1931 = add nuw nsw i64 %1930, %1929
  %1932 = icmp eq i64 %1931, 2
  %1933 = zext i1 %1932 to i8
  %1934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1933, i8* %1934, align 1, !tbaa !2450
  %1935 = load i64, i64* %PC
  %1936 = add i64 %1935, 17
  %1937 = load i64, i64* %PC
  %1938 = add i64 %1937, 6
  %1939 = load i64, i64* %PC
  %1940 = add i64 %1939, 6
  store i64 %1940, i64* %PC
  %1941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1942 = load i8, i8* %1941, align 1, !tbaa !2432
  %1943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1944 = load i8, i8* %1943, align 1, !tbaa !2448
  %1945 = or i8 %1944, %1942
  %1946 = icmp ne i8 %1945, 0
  %1947 = zext i1 %1946 to i8
  store i8 %1947, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1949 = select i1 %1946, i64 %1936, i64 %1938
  store i64 %1949, i64* %1948, align 8, !tbaa !2428
  %1950 = load i8, i8* %BRANCH_TAKEN
  %1951 = icmp eq i8 %1950, 1
  br i1 %1951, label %block_400d46, label %block_400d3b

block_401321:                                     ; preds = %block_401316
  %1952 = add i64 %2136, 4
  store i64 %1952, i64* %PC
  %1953 = inttoptr i64 %2135 to i64*
  %1954 = load i64, i64* %1953
  store i64 %1954, i64* %RAX, align 8, !tbaa !2428
  %1955 = load i64, i64* %RAX
  %1956 = load i64, i64* %PC
  %1957 = add i64 %1956, 4
  store i64 %1957, i64* %PC
  %1958 = lshr i64 %1955, 63
  %1959 = trunc i64 %1958 to i8
  %1960 = trunc i64 %1955 to i8
  %1961 = and i8 %1960, 1
  %1962 = lshr i64 %1955, 1
  store i64 %1962, i64* %RAX, align 8, !tbaa !2428
  %1963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1961, i8* %1963, align 1, !tbaa !2451
  %1964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1965 = trunc i64 %1962 to i32
  %1966 = and i32 %1965, 255
  %1967 = call i32 @llvm.ctpop.i32(i32 %1966) #16
  %1968 = trunc i32 %1967 to i8
  %1969 = and i8 %1968, 1
  %1970 = xor i8 %1969, 1
  store i8 %1970, i8* %1964, align 1, !tbaa !2451
  %1971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1971, align 1, !tbaa !2451
  %1972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1973 = icmp eq i64 %1962, 0
  %1974 = zext i1 %1973 to i8
  store i8 %1974, i8* %1972, align 1, !tbaa !2451
  %1975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1975, align 1, !tbaa !2451
  %1976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1959, i8* %1976, align 1, !tbaa !2451
  %1977 = load i64, i64* %RBP
  %1978 = sub i64 %1977, 72
  %1979 = load i64, i64* %RAX
  %1980 = load i64, i64* %PC
  %1981 = add i64 %1980, 4
  store i64 %1981, i64* %PC
  %1982 = inttoptr i64 %1978 to i64*
  store i64 %1979, i64* %1982
  %1983 = load i64, i64* %PC
  %1984 = add i64 %1983, 25
  %1985 = load i64, i64* %PC
  %1986 = add i64 %1985, 5
  store i64 %1986, i64* %PC
  %1987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1984, i64* %1987, align 8, !tbaa !2428
  br label %block_401346

block_400f1e:                                     ; preds = %block_400eff
  %1988 = load i64, i64* %RBP
  %1989 = sub i64 %1988, 10681
  %1990 = load i64, i64* %PC
  %1991 = add i64 %1990, 7
  store i64 %1991, i64* %PC
  %1992 = inttoptr i64 %1989 to i8*
  %1993 = load i8, i8* %1992
  %1994 = sext i8 %1993 to i64
  %1995 = and i64 %1994, 4294967295
  store i64 %1995, i64* %RAX, align 8, !tbaa !2428
  %1996 = load i64, i64* %RAX
  %1997 = load i64, i64* %PC
  %1998 = add i64 %1997, 3
  store i64 %1998, i64* %PC
  %1999 = or i64 1, %1996
  %2000 = trunc i64 %1999 to i32
  %2001 = and i64 %1999, 4294967295
  store i64 %2001, i64* %RAX, align 8, !tbaa !2428
  %2002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2002, align 1, !tbaa !2432
  %2003 = and i32 %2000, 255
  %2004 = call i32 @llvm.ctpop.i32(i32 %2003) #16
  %2005 = trunc i32 %2004 to i8
  %2006 = and i8 %2005, 1
  %2007 = xor i8 %2006, 1
  %2008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2007, i8* %2008, align 1, !tbaa !2446
  %2009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2009, align 1, !tbaa !2448
  %2010 = lshr i32 %2000, 31
  %2011 = trunc i32 %2010 to i8
  %2012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2011, i8* %2012, align 1, !tbaa !2449
  %2013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2013, align 1, !tbaa !2450
  %2014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2014, align 1, !tbaa !2447
  %2015 = load i8, i8* %AL
  %2016 = zext i8 %2015 to i64
  %2017 = load i64, i64* %PC
  %2018 = add i64 %2017, 2
  store i64 %2018, i64* %PC
  store i8 %2015, i8* %CL, align 1, !tbaa !2451
  %2019 = load i64, i64* %RBP
  %2020 = sub i64 %2019, 10681
  %2021 = load i8, i8* %CL
  %2022 = zext i8 %2021 to i64
  %2023 = load i64, i64* %PC
  %2024 = add i64 %2023, 6
  store i64 %2024, i64* %PC
  %2025 = inttoptr i64 %2020 to i8*
  store i8 %2021, i8* %2025
  br label %block_400f30

block_400d75:                                     ; preds = %block_400d67
  %2026 = load i64, i64* %PC
  %2027 = add i64 %2026, 10
  store i64 %2027, i64* %PC
  store i64 add (i64 ptrtoint (%seg_401620__rodata_type* @seg_401620__rodata to i64), i64 37), i64* %RSI, align 8, !tbaa !2428
  %2028 = load i64, i64* %PC
  %2029 = add i64 %2028, 8
  store i64 %2029, i64* %PC
  %2030 = load i64, i64* @stderr
  store i64 %2030, i64* %RDI, align 8, !tbaa !2428
  %2031 = load i64, i64* %PC
  %2032 = add i64 %2031, 2
  store i64 %2032, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %2033 = load i64, i64* %PC
  %2034 = sub i64 %2033, 1945
  %2035 = load i64, i64* %PC
  %2036 = add i64 %2035, 5
  %2037 = load i64, i64* %PC
  %2038 = add i64 %2037, 5
  store i64 %2038, i64* %PC
  %2039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2040 = load i64, i64* %2039, align 8, !tbaa !2428
  %2041 = add i64 %2040, -8
  %2042 = inttoptr i64 %2041 to i64*
  store i64 %2036, i64* %2042
  store i64 %2041, i64* %2039, align 8, !tbaa !2428
  %2043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2034, i64* %2043, align 8, !tbaa !2428
  %2044 = load i64, i64* %PC
  %2045 = call %struct.Memory* @ext_6020d0_fprintf(%struct.State* %0, i64 %2044, %struct.Memory* %MEMORY.0)
  %2046 = load i64, i64* %PC
  %2047 = add i64 %2046, 5
  store i64 %2047, i64* %PC
  store i64 1, i64* %RDI, align 8, !tbaa !2428
  %2048 = load i64, i64* %RBP
  %2049 = sub i64 %2048, 13080
  %2050 = load i32, i32* %EAX
  %2051 = zext i32 %2050 to i64
  %2052 = load i64, i64* %PC
  %2053 = add i64 %2052, 6
  store i64 %2053, i64* %PC
  %2054 = inttoptr i64 %2049 to i32*
  store i32 %2050, i32* %2054
  %2055 = load i64, i64* %PC
  %2056 = sub i64 %2055, 1913
  %2057 = load i64, i64* %PC
  %2058 = add i64 %2057, 5
  %2059 = load i64, i64* %PC
  %2060 = add i64 %2059, 5
  store i64 %2060, i64* %PC
  %2061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2062 = load i64, i64* %2061, align 8, !tbaa !2428
  %2063 = add i64 %2062, -8
  %2064 = inttoptr i64 %2063 to i64*
  store i64 %2058, i64* %2064
  store i64 %2063, i64* %2061, align 8, !tbaa !2428
  %2065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2056, i64* %2065, align 8, !tbaa !2428
  %2066 = load i64, i64* %PC
  %2067 = call %struct.Memory* @ext_400620_exit(%struct.State* %0, i64 %2066, %struct.Memory* %2045)
  %2068 = load i64, i64* %PC
  %2069 = tail call %struct.Memory* @__remill_error(%struct.State* %0, i64 %2068, %struct.Memory* %2067)
  ret %struct.Memory* %2069

block_400d1c:                                     ; preds = %block_400cde
  %2070 = load i64, i64* %RBP
  %2071 = sub i64 %2070, 10648
  %2072 = load i64, i64* %PC
  %2073 = add i64 %2072, 7
  store i64 %2073, i64* %PC
  %2074 = inttoptr i64 %2071 to i64*
  %2075 = load i64, i64* %2074
  store i64 %2075, i64* %RAX, align 8, !tbaa !2428
  %2076 = load i64, i64* %RBP
  %2077 = sub i64 %2076, 10656
  %2078 = load i64, i64* %RAX
  %2079 = load i64, i64* %PC
  %2080 = add i64 %2079, 7
  store i64 %2080, i64* %PC
  %2081 = inttoptr i64 %2077 to i64*
  store i64 %2078, i64* %2081
  br label %block_400d2a

block_401316:                                     ; preds = %block_4012dd, %block_4012c7
  %MEMORY.8 = phi %struct.Memory* [ %MEMORY.14, %block_4012c7 ], [ %MEMORY.14, %block_4012dd ]
  %2082 = load i64, i64* %RBP
  %2083 = sub i64 %2082, 72
  %2084 = load i64, i64* %PC
  %2085 = add i64 %2084, 5
  store i64 %2085, i64* %PC
  %2086 = inttoptr i64 %2083 to i64*
  %2087 = load i64, i64* %2086
  %2088 = sub i64 %2087, 1
  %2089 = icmp ult i64 %2087, 1
  %2090 = zext i1 %2089 to i8
  %2091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2090, i8* %2091, align 1, !tbaa !2432
  %2092 = trunc i64 %2088 to i32
  %2093 = and i32 %2092, 255
  %2094 = call i32 @llvm.ctpop.i32(i32 %2093) #16
  %2095 = trunc i32 %2094 to i8
  %2096 = and i8 %2095, 1
  %2097 = xor i8 %2096, 1
  %2098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2097, i8* %2098, align 1, !tbaa !2446
  %2099 = xor i64 %2087, 1
  %2100 = xor i64 %2099, %2088
  %2101 = lshr i64 %2100, 4
  %2102 = trunc i64 %2101 to i8
  %2103 = and i8 %2102, 1
  %2104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2103, i8* %2104, align 1, !tbaa !2447
  %2105 = icmp eq i64 %2088, 0
  %2106 = zext i1 %2105 to i8
  %2107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2106, i8* %2107, align 1, !tbaa !2448
  %2108 = lshr i64 %2088, 63
  %2109 = trunc i64 %2108 to i8
  %2110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2109, i8* %2110, align 1, !tbaa !2449
  %2111 = lshr i64 %2087, 63
  %2112 = xor i64 %2108, %2111
  %2113 = add nuw nsw i64 %2112, %2111
  %2114 = icmp eq i64 %2113, 2
  %2115 = zext i1 %2114 to i8
  %2116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2115, i8* %2116, align 1, !tbaa !2450
  %2117 = load i64, i64* %PC
  %2118 = add i64 %2117, 23
  %2119 = load i64, i64* %PC
  %2120 = add i64 %2119, 6
  %2121 = load i64, i64* %PC
  %2122 = add i64 %2121, 6
  store i64 %2122, i64* %PC
  %2123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2124 = load i8, i8* %2123, align 1, !tbaa !2432
  %2125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2126 = load i8, i8* %2125, align 1, !tbaa !2448
  %2127 = or i8 %2126, %2124
  %2128 = icmp ne i8 %2127, 0
  %2129 = zext i1 %2128 to i8
  store i8 %2129, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %2130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2131 = select i1 %2128, i64 %2118, i64 %2120
  store i64 %2131, i64* %2130, align 8, !tbaa !2428
  %2132 = load i8, i8* %BRANCH_TAKEN
  %2133 = icmp eq i8 %2132, 1
  %2134 = load i64, i64* %RBP
  %2135 = sub i64 %2134, 72
  %2136 = load i64, i64* %PC
  br i1 %2133, label %block_401332, label %block_401321

block_400ff7:                                     ; preds = %block_400fe9
  %2137 = sub i64 %1663, 56
  %2138 = load i64, i64* %PC
  %2139 = add i64 %2138, 4
  store i64 %2139, i64* %PC
  %2140 = inttoptr i64 %2137 to i64*
  %2141 = load i64, i64* %2140
  store i64 %2141, i64* %RAX, align 8, !tbaa !2428
  %2142 = load i8, i8* %AL
  %2143 = zext i8 %2142 to i64
  %2144 = load i64, i64* %PC
  %2145 = add i64 %2144, 2
  store i64 %2145, i64* %PC
  store i8 %2142, i8* %CL, align 1, !tbaa !2451
  %2146 = load i64, i64* %RBP
  %2147 = sub i64 %2146, 13000
  %2148 = load i64, i64* %PC
  %2149 = add i64 %2148, 7
  store i64 %2149, i64* %PC
  %2150 = inttoptr i64 %2147 to i64*
  %2151 = load i64, i64* %2150
  store i64 %2151, i64* %RAX, align 8, !tbaa !2428
  %2152 = load i64, i64* %RAX
  %2153 = load i8, i8* %CL
  %2154 = zext i8 %2153 to i64
  %2155 = load i64, i64* %PC
  %2156 = add i64 %2155, 2
  store i64 %2156, i64* %PC
  %2157 = inttoptr i64 %2152 to i8*
  store i8 %2153, i8* %2157
  %2158 = load i64, i64* %RBP
  %2159 = sub i64 %2158, 13000
  %2160 = load i64, i64* %PC
  %2161 = add i64 %2160, 7
  store i64 %2161, i64* %PC
  %2162 = inttoptr i64 %2159 to i64*
  %2163 = load i64, i64* %2162
  store i64 %2163, i64* %RAX, align 8, !tbaa !2428
  %2164 = load i64, i64* %RAX
  %2165 = load i64, i64* %PC
  %2166 = add i64 %2165, 4
  store i64 %2166, i64* %PC
  %2167 = add i64 1, %2164
  store i64 %2167, i64* %RAX, align 8, !tbaa !2428
  %2168 = icmp ult i64 %2167, %2164
  %2169 = icmp ult i64 %2167, 1
  %2170 = or i1 %2168, %2169
  %2171 = zext i1 %2170 to i8
  %2172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2171, i8* %2172, align 1, !tbaa !2432
  %2173 = trunc i64 %2167 to i32
  %2174 = and i32 %2173, 255
  %2175 = call i32 @llvm.ctpop.i32(i32 %2174) #16
  %2176 = trunc i32 %2175 to i8
  %2177 = and i8 %2176, 1
  %2178 = xor i8 %2177, 1
  %2179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2178, i8* %2179, align 1, !tbaa !2446
  %2180 = xor i64 1, %2164
  %2181 = xor i64 %2180, %2167
  %2182 = lshr i64 %2181, 4
  %2183 = trunc i64 %2182 to i8
  %2184 = and i8 %2183, 1
  %2185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2184, i8* %2185, align 1, !tbaa !2447
  %2186 = icmp eq i64 %2167, 0
  %2187 = zext i1 %2186 to i8
  %2188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2187, i8* %2188, align 1, !tbaa !2448
  %2189 = lshr i64 %2167, 63
  %2190 = trunc i64 %2189 to i8
  %2191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2190, i8* %2191, align 1, !tbaa !2449
  %2192 = lshr i64 %2164, 63
  %2193 = xor i64 %2189, %2192
  %2194 = add nuw nsw i64 %2193, %2189
  %2195 = icmp eq i64 %2194, 2
  %2196 = zext i1 %2195 to i8
  %2197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2196, i8* %2197, align 1, !tbaa !2450
  %2198 = load i64, i64* %RBP
  %2199 = sub i64 %2198, 13000
  %2200 = load i64, i64* %RAX
  %2201 = load i64, i64* %PC
  %2202 = add i64 %2201, 7
  store i64 %2202, i64* %PC
  %2203 = inttoptr i64 %2199 to i64*
  store i64 %2200, i64* %2203
  %2204 = load i64, i64* %RBP
  %2205 = sub i64 %2204, 56
  %2206 = load i64, i64* %PC
  %2207 = add i64 %2206, 4
  store i64 %2207, i64* %PC
  %2208 = inttoptr i64 %2205 to i64*
  %2209 = load i64, i64* %2208
  store i64 %2209, i64* %RAX, align 8, !tbaa !2428
  %2210 = load i64, i64* %RBP
  %2211 = load i64, i64* %RAX
  %2212 = mul i64 %2211, 8
  %2213 = add i64 %2210, -10368
  %2214 = add i64 %2213, %2212
  %2215 = load i64, i64* %PC
  %2216 = add i64 %2215, 8
  store i64 %2216, i64* %PC
  %2217 = inttoptr i64 %2214 to i64*
  %2218 = load i64, i64* %2217
  store i64 %2218, i64* %RAX, align 8, !tbaa !2428
  %2219 = load i64, i64* %RBP
  %2220 = sub i64 %2219, 56
  %2221 = load i64, i64* %PC
  %2222 = add i64 %2221, 4
  store i64 %2222, i64* %PC
  %2223 = inttoptr i64 %2220 to i64*
  %2224 = load i64, i64* %2223
  store i64 %2224, i64* %RDX, align 8, !tbaa !2428
  %2225 = load i64, i64* %RBP
  %2226 = load i64, i64* %RDX
  %2227 = add i64 %2225, -10624
  %2228 = add i64 %2227, %2226
  %2229 = load i64, i64* %PC
  %2230 = add i64 %2229, 8
  store i64 %2230, i64* %PC
  %2231 = inttoptr i64 %2228 to i8*
  %2232 = load i8, i8* %2231
  %2233 = zext i8 %2232 to i64
  store i64 %2233, i64* %RSI, align 8, !tbaa !2428
  %2234 = load i32, i32* %ESI
  %2235 = zext i32 %2234 to i64
  %2236 = load i64, i64* %PC
  %2237 = add i64 %2236, 2
  store i64 %2237, i64* %PC
  %2238 = and i64 %2235, 4294967295
  store i64 %2238, i64* %RDX, align 8, !tbaa !2428
  %2239 = load i64, i64* %RAX
  %2240 = load i64, i64* %RDX
  %2241 = load i64, i64* %PC
  %2242 = add i64 %2241, 3
  store i64 %2242, i64* %PC
  %2243 = or i64 %2240, %2239
  store i64 %2243, i64* %RAX, align 8, !tbaa !2428
  %2244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2244, align 1, !tbaa !2432
  %2245 = trunc i64 %2243 to i32
  %2246 = and i32 %2245, 255
  %2247 = call i32 @llvm.ctpop.i32(i32 %2246) #16
  %2248 = trunc i32 %2247 to i8
  %2249 = and i8 %2248, 1
  %2250 = xor i8 %2249, 1
  %2251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2250, i8* %2251, align 1, !tbaa !2446
  %2252 = icmp eq i64 %2243, 0
  %2253 = zext i1 %2252 to i8
  %2254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2253, i8* %2254, align 1, !tbaa !2448
  %2255 = lshr i64 %2243, 63
  %2256 = trunc i64 %2255 to i8
  %2257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2256, i8* %2257, align 1, !tbaa !2449
  %2258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2258, align 1, !tbaa !2450
  %2259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2259, align 1, !tbaa !2447
  %2260 = load i64, i64* %RAX
  %2261 = load i64, i64* %PC
  %2262 = add i64 %2261, 4
  store i64 %2262, i64* %PC
  %2263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2263, align 1, !tbaa !2432
  %2264 = trunc i64 %2260 to i32
  %2265 = and i32 %2264, 255
  %2266 = call i32 @llvm.ctpop.i32(i32 %2265) #16
  %2267 = trunc i32 %2266 to i8
  %2268 = and i8 %2267, 1
  %2269 = xor i8 %2268, 1
  %2270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2269, i8* %2270, align 1, !tbaa !2446
  %2271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2271, align 1, !tbaa !2447
  %2272 = icmp eq i64 %2260, 0
  %2273 = zext i1 %2272 to i8
  %2274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2273, i8* %2274, align 1, !tbaa !2448
  %2275 = lshr i64 %2260, 63
  %2276 = trunc i64 %2275 to i8
  %2277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2276, i8* %2277, align 1, !tbaa !2449
  %2278 = lshr i64 %2260, 63
  %2279 = xor i64 %2275, %2278
  %2280 = add nuw nsw i64 %2279, %2278
  %2281 = icmp eq i64 %2280, 2
  %2282 = zext i1 %2281 to i8
  %2283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2282, i8* %2283, align 1, !tbaa !2450
  %2284 = load i64, i64* %PC
  %2285 = add i64 %2284, 179
  %2286 = load i64, i64* %PC
  %2287 = add i64 %2286, 6
  %2288 = load i64, i64* %PC
  %2289 = add i64 %2288, 6
  store i64 %2289, i64* %PC
  %2290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2291 = load i8, i8* %2290, align 1, !tbaa !2448
  store i8 %2291, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %2292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2293 = icmp ne i8 %2291, 0
  %2294 = select i1 %2293, i64 %2285, i64 %2287
  store i64 %2294, i64* %2292, align 8, !tbaa !2428
  %2295 = load i8, i8* %BRANCH_TAKEN
  %2296 = icmp eq i8 %2295, 1
  br i1 %2296, label %block_4010ec, label %block_40103f

block_401102:                                     ; preds = %block_400fe9
  %2297 = sub i64 %1663, 48
  %2298 = load i64, i64* %PC
  %2299 = add i64 %2298, 8
  store i64 %2299, i64* %PC
  %2300 = inttoptr i64 %2297 to i64*
  store i64 1, i64* %2300
  br label %block_40110a

block_400eff:                                     ; preds = %block_400ec8, %block_400ede
  %MEMORY.9 = phi %struct.Memory* [ %MEMORY.22, %block_400ede ], [ %MEMORY.22, %block_400ec8 ]
  %2301 = load i64, i64* %RBP
  %2302 = sub i64 %2301, 112
  %2303 = load i64, i64* %PC
  %2304 = add i64 %2303, 4
  store i64 %2304, i64* %PC
  %2305 = inttoptr i64 %2302 to i64*
  %2306 = load i64, i64* %2305
  store i64 %2306, i64* %RAX, align 8, !tbaa !2428
  %2307 = load i64, i64* %RAX
  %2308 = load i64, i64* %PC
  %2309 = add i64 %2308, 3
  store i64 %2309, i64* %PC
  %2310 = inttoptr i64 %2307 to i8*
  %2311 = load i8, i8* %2310
  %2312 = zext i8 %2311 to i64
  store i64 %2312, i64* %RCX, align 8, !tbaa !2428
  %2313 = load i32, i32* %ECX
  %2314 = zext i32 %2313 to i64
  %2315 = load i64, i64* %PC
  %2316 = add i64 %2315, 2
  store i64 %2316, i64* %PC
  %2317 = and i64 %2314, 4294967295
  store i64 %2317, i64* %RAX, align 8, !tbaa !2428
  %2318 = load i64, i64* %RBP
  %2319 = load i64, i64* %RAX
  %2320 = mul i64 %2319, 8
  %2321 = add i64 %2318, -10368
  %2322 = add i64 %2321, %2320
  %2323 = load i64, i64* %PC
  %2324 = add i64 %2323, 8
  store i64 %2324, i64* %PC
  %2325 = inttoptr i64 %2322 to i64*
  %2326 = load i64, i64* %2325
  store i64 %2326, i64* %RAX, align 8, !tbaa !2428
  %2327 = load i64, i64* %RAX
  %2328 = load i64, i64* %RBP
  %2329 = sub i64 %2328, 72
  %2330 = load i64, i64* %PC
  %2331 = add i64 %2330, 4
  store i64 %2331, i64* %PC
  %2332 = inttoptr i64 %2329 to i64*
  %2333 = load i64, i64* %2332
  %2334 = and i64 %2333, %2327
  store i64 %2334, i64* %RAX, align 8, !tbaa !2428
  %2335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2335, align 1, !tbaa !2432
  %2336 = trunc i64 %2334 to i32
  %2337 = and i32 %2336, 255
  %2338 = call i32 @llvm.ctpop.i32(i32 %2337) #16
  %2339 = trunc i32 %2338 to i8
  %2340 = and i8 %2339, 1
  %2341 = xor i8 %2340, 1
  %2342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2341, i8* %2342, align 1, !tbaa !2446
  %2343 = icmp eq i64 %2334, 0
  %2344 = zext i1 %2343 to i8
  %2345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2344, i8* %2345, align 1, !tbaa !2448
  %2346 = lshr i64 %2334, 63
  %2347 = trunc i64 %2346 to i8
  %2348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2347, i8* %2348, align 1, !tbaa !2449
  %2349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2349, align 1, !tbaa !2450
  %2350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2350, align 1, !tbaa !2447
  %2351 = load i64, i64* %RAX
  %2352 = load i64, i64* %PC
  %2353 = add i64 %2352, 4
  store i64 %2353, i64* %PC
  %2354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2354, align 1, !tbaa !2432
  %2355 = trunc i64 %2351 to i32
  %2356 = and i32 %2355, 255
  %2357 = call i32 @llvm.ctpop.i32(i32 %2356) #16
  %2358 = trunc i32 %2357 to i8
  %2359 = and i8 %2358, 1
  %2360 = xor i8 %2359, 1
  %2361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2360, i8* %2361, align 1, !tbaa !2446
  %2362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2362, align 1, !tbaa !2447
  %2363 = icmp eq i64 %2351, 0
  %2364 = zext i1 %2363 to i8
  %2365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2364, i8* %2365, align 1, !tbaa !2448
  %2366 = lshr i64 %2351, 63
  %2367 = trunc i64 %2366 to i8
  %2368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2367, i8* %2368, align 1, !tbaa !2449
  %2369 = lshr i64 %2351, 63
  %2370 = xor i64 %2366, %2369
  %2371 = add nuw nsw i64 %2370, %2369
  %2372 = icmp eq i64 %2371, 2
  %2373 = zext i1 %2372 to i8
  %2374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2373, i8* %2374, align 1, !tbaa !2450
  %2375 = load i64, i64* %PC
  %2376 = add i64 %2375, 24
  %2377 = load i64, i64* %PC
  %2378 = add i64 %2377, 6
  %2379 = load i64, i64* %PC
  %2380 = add i64 %2379, 6
  store i64 %2380, i64* %PC
  %2381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2382 = load i8, i8* %2381, align 1, !tbaa !2448
  store i8 %2382, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %2383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2384 = icmp ne i8 %2382, 0
  %2385 = select i1 %2384, i64 %2376, i64 %2378
  store i64 %2385, i64* %2383, align 8, !tbaa !2428
  %2386 = load i8, i8* %BRANCH_TAKEN
  %2387 = icmp eq i8 %2386, 1
  br i1 %2387, label %block_400f30, label %block_400f1e

block_4010ec:                                     ; preds = %block_4010dc, %block_400ff7
  %MEMORY.10 = phi %struct.Memory* [ %MEMORY.5, %block_400ff7 ], [ %MEMORY.18, %block_4010dc ]
  %2388 = load i64, i64* %PC
  %2389 = add i64 %2388, 5
  %2390 = load i64, i64* %PC
  %2391 = add i64 %2390, 5
  store i64 %2391, i64* %PC
  %2392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2389, i64* %2392, align 8, !tbaa !2428
  %2393 = load i64, i64* %RBP
  %2394 = sub i64 %2393, 56
  %2395 = load i64, i64* %PC
  %2396 = add i64 %2395, 4
  store i64 %2396, i64* %PC
  %2397 = inttoptr i64 %2394 to i64*
  %2398 = load i64, i64* %2397
  store i64 %2398, i64* %RAX, align 8, !tbaa !2428
  %2399 = load i64, i64* %RAX
  %2400 = load i64, i64* %PC
  %2401 = add i64 %2400, 4
  store i64 %2401, i64* %PC
  %2402 = add i64 1, %2399
  store i64 %2402, i64* %RAX, align 8, !tbaa !2428
  %2403 = icmp ult i64 %2402, %2399
  %2404 = icmp ult i64 %2402, 1
  %2405 = or i1 %2403, %2404
  %2406 = zext i1 %2405 to i8
  %2407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2406, i8* %2407, align 1, !tbaa !2432
  %2408 = trunc i64 %2402 to i32
  %2409 = and i32 %2408, 255
  %2410 = call i32 @llvm.ctpop.i32(i32 %2409) #16
  %2411 = trunc i32 %2410 to i8
  %2412 = and i8 %2411, 1
  %2413 = xor i8 %2412, 1
  %2414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2413, i8* %2414, align 1, !tbaa !2446
  %2415 = xor i64 1, %2399
  %2416 = xor i64 %2415, %2402
  %2417 = lshr i64 %2416, 4
  %2418 = trunc i64 %2417 to i8
  %2419 = and i8 %2418, 1
  %2420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2419, i8* %2420, align 1, !tbaa !2447
  %2421 = icmp eq i64 %2402, 0
  %2422 = zext i1 %2421 to i8
  %2423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2422, i8* %2423, align 1, !tbaa !2448
  %2424 = lshr i64 %2402, 63
  %2425 = trunc i64 %2424 to i8
  %2426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2425, i8* %2426, align 1, !tbaa !2449
  %2427 = lshr i64 %2399, 63
  %2428 = xor i64 %2424, %2427
  %2429 = add nuw nsw i64 %2428, %2424
  %2430 = icmp eq i64 %2429, 2
  %2431 = zext i1 %2430 to i8
  %2432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2431, i8* %2432, align 1, !tbaa !2450
  %2433 = load i64, i64* %RBP
  %2434 = sub i64 %2433, 56
  %2435 = load i64, i64* %RAX
  %2436 = load i64, i64* %PC
  %2437 = add i64 %2436, 4
  store i64 %2437, i64* %PC
  %2438 = inttoptr i64 %2434 to i64*
  store i64 %2435, i64* %2438
  %2439 = load i64, i64* %PC
  %2440 = sub i64 %2439, 276
  %2441 = load i64, i64* %PC
  %2442 = add i64 %2441, 5
  store i64 %2442, i64* %PC
  %2443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2440, i64* %2443, align 8, !tbaa !2428
  br label %block_400fe9

block_40134b:                                     ; preds = %block_40125a
  %2444 = sub i64 %4948, 120
  %2445 = load i64, i64* %PC
  %2446 = add i64 %2445, 4
  store i64 %2446, i64* %PC
  %2447 = inttoptr i64 %2444 to i64*
  %2448 = load i64, i64* %2447
  store i64 %2448, i64* %RDI, align 8, !tbaa !2428
  %2449 = load i64, i64* %PC
  %2450 = sub i64 %2449, 3471
  %2451 = load i64, i64* %PC
  %2452 = add i64 %2451, 5
  %2453 = load i64, i64* %PC
  %2454 = add i64 %2453, 5
  store i64 %2454, i64* %PC
  %2455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2456 = load i64, i64* %2455, align 8, !tbaa !2428
  %2457 = add i64 %2456, -8
  %2458 = inttoptr i64 %2457 to i64*
  store i64 %2452, i64* %2458
  store i64 %2457, i64* %2455, align 8, !tbaa !2428
  %2459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2450, i64* %2459, align 8, !tbaa !2428
  %2460 = load i64, i64* %PC
  %2461 = call %struct.Memory* @ext_6020f0_free(%struct.State* %0, i64 %2460, %struct.Memory* %MEMORY.21)
  %2462 = load i64, i64* %RSP
  %2463 = load i64, i64* %PC
  %2464 = add i64 %2463, 7
  store i64 %2464, i64* %PC
  %2465 = add i64 13080, %2462
  store i64 %2465, i64* %RSP, align 8, !tbaa !2428
  %2466 = icmp ult i64 %2465, %2462
  %2467 = icmp ult i64 %2465, 13080
  %2468 = or i1 %2466, %2467
  %2469 = zext i1 %2468 to i8
  %2470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2469, i8* %2470, align 1, !tbaa !2432
  %2471 = trunc i64 %2465 to i32
  %2472 = and i32 %2471, 255
  %2473 = call i32 @llvm.ctpop.i32(i32 %2472) #16
  %2474 = trunc i32 %2473 to i8
  %2475 = and i8 %2474, 1
  %2476 = xor i8 %2475, 1
  %2477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2476, i8* %2477, align 1, !tbaa !2446
  %2478 = xor i64 13080, %2462
  %2479 = xor i64 %2478, %2465
  %2480 = lshr i64 %2479, 4
  %2481 = trunc i64 %2480 to i8
  %2482 = and i8 %2481, 1
  %2483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2482, i8* %2483, align 1, !tbaa !2447
  %2484 = icmp eq i64 %2465, 0
  %2485 = zext i1 %2484 to i8
  %2486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2485, i8* %2486, align 1, !tbaa !2448
  %2487 = lshr i64 %2465, 63
  %2488 = trunc i64 %2487 to i8
  %2489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2488, i8* %2489, align 1, !tbaa !2449
  %2490 = lshr i64 %2462, 63
  %2491 = xor i64 %2487, %2490
  %2492 = add nuw nsw i64 %2491, %2487
  %2493 = icmp eq i64 %2492, 2
  %2494 = zext i1 %2493 to i8
  %2495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2494, i8* %2495, align 1, !tbaa !2450
  %2496 = load i64, i64* %PC
  %2497 = add i64 %2496, 1
  store i64 %2497, i64* %PC
  %2498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2499 = load i64, i64* %2498, align 8, !tbaa !2428
  %2500 = add i64 %2499, 8
  %2501 = inttoptr i64 %2499 to i64*
  %2502 = load i64, i64* %2501
  store i64 %2502, i64* %RBX, align 8, !tbaa !2428
  store i64 %2500, i64* %2498, align 8, !tbaa !2428
  %2503 = load i64, i64* %PC
  %2504 = add i64 %2503, 2
  store i64 %2504, i64* %PC
  %2505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2506 = load i64, i64* %2505, align 8, !tbaa !2428
  %2507 = add i64 %2506, 8
  %2508 = inttoptr i64 %2506 to i64*
  %2509 = load i64, i64* %2508
  store i64 %2509, i64* %R14, align 8, !tbaa !2428
  store i64 %2507, i64* %2505, align 8, !tbaa !2428
  %2510 = load i64, i64* %PC
  %2511 = add i64 %2510, 2
  store i64 %2511, i64* %PC
  %2512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2513 = load i64, i64* %2512, align 8, !tbaa !2428
  %2514 = add i64 %2513, 8
  %2515 = inttoptr i64 %2513 to i64*
  %2516 = load i64, i64* %2515
  store i64 %2516, i64* %R15, align 8, !tbaa !2428
  store i64 %2514, i64* %2512, align 8, !tbaa !2428
  %2517 = load i64, i64* %PC
  %2518 = add i64 %2517, 1
  store i64 %2518, i64* %PC
  %2519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2520 = load i64, i64* %2519, align 8, !tbaa !2428
  %2521 = add i64 %2520, 8
  %2522 = inttoptr i64 %2520 to i64*
  %2523 = load i64, i64* %2522
  store i64 %2523, i64* %RBP, align 8, !tbaa !2428
  store i64 %2521, i64* %2519, align 8, !tbaa !2428
  %2524 = load i64, i64* %PC
  %2525 = add i64 %2524, 1
  store i64 %2525, i64* %PC
  %2526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2528 = load i64, i64* %2527, align 8, !tbaa !2428
  %2529 = inttoptr i64 %2528 to i64*
  %2530 = load i64, i64* %2529
  store i64 %2530, i64* %2526, align 8, !tbaa !2428
  %2531 = add i64 %2528, 8
  store i64 %2531, i64* %2527, align 8, !tbaa !2428
  ret %struct.Memory* %2461

block_4010dc:                                     ; preds = %block_40106e
  %2532 = load i64, i64* %RBP
  %2533 = sub i64 %2532, 56
  %2534 = load i64, i64* %PC
  %2535 = add i64 %2534, 4
  store i64 %2535, i64* %PC
  %2536 = inttoptr i64 %2533 to i64*
  %2537 = load i64, i64* %2536
  store i64 %2537, i64* %RCX, align 8, !tbaa !2428
  %2538 = load i64, i64* %RBP
  %2539 = load i64, i64* %RCX
  %2540 = mul i64 %2539, 8
  %2541 = add i64 %2538, -12736
  %2542 = add i64 %2541, %2540
  %2543 = load i64, i64* %RAX
  %2544 = load i64, i64* %PC
  %2545 = add i64 %2544, 8
  store i64 %2545, i64* %PC
  %2546 = inttoptr i64 %2542 to i64*
  store i64 %2543, i64* %2546
  br label %block_4010ec

block_400acd:                                     ; preds = %block_400ad8, %block_400ac8
  %MEMORY.11 = phi %struct.Memory* [ %MEMORY.16, %block_400ac8 ], [ %4094, %block_400ad8 ]
  %2547 = load i64, i64* %RBP
  %2548 = sub i64 %2547, 64
  %2549 = load i64, i64* %PC
  %2550 = add i64 %2549, 5
  store i64 %2550, i64* %PC
  %2551 = inttoptr i64 %2548 to i64*
  %2552 = load i64, i64* %2551
  %2553 = sub i64 %2552, 1
  %2554 = icmp ult i64 %2552, 1
  %2555 = zext i1 %2554 to i8
  %2556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2555, i8* %2556, align 1, !tbaa !2432
  %2557 = trunc i64 %2553 to i32
  %2558 = and i32 %2557, 255
  %2559 = call i32 @llvm.ctpop.i32(i32 %2558) #16
  %2560 = trunc i32 %2559 to i8
  %2561 = and i8 %2560, 1
  %2562 = xor i8 %2561, 1
  %2563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2562, i8* %2563, align 1, !tbaa !2446
  %2564 = xor i64 %2552, 1
  %2565 = xor i64 %2564, %2553
  %2566 = lshr i64 %2565, 4
  %2567 = trunc i64 %2566 to i8
  %2568 = and i8 %2567, 1
  %2569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2568, i8* %2569, align 1, !tbaa !2447
  %2570 = icmp eq i64 %2553, 0
  %2571 = zext i1 %2570 to i8
  %2572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2571, i8* %2572, align 1, !tbaa !2448
  %2573 = lshr i64 %2553, 63
  %2574 = trunc i64 %2573 to i8
  %2575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2574, i8* %2575, align 1, !tbaa !2449
  %2576 = lshr i64 %2552, 63
  %2577 = xor i64 %2573, %2576
  %2578 = add nuw nsw i64 %2577, %2576
  %2579 = icmp eq i64 %2578, 2
  %2580 = zext i1 %2579 to i8
  %2581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2580, i8* %2581, align 1, !tbaa !2450
  %2582 = load i64, i64* %PC
  %2583 = add i64 %2582, 238
  %2584 = load i64, i64* %PC
  %2585 = add i64 %2584, 6
  %2586 = load i64, i64* %PC
  %2587 = add i64 %2586, 6
  store i64 %2587, i64* %PC
  %2588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2589 = load i8, i8* %2588, align 1, !tbaa !2432
  %2590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2591 = load i8, i8* %2590, align 1, !tbaa !2448
  %2592 = or i8 %2591, %2589
  %2593 = icmp ne i8 %2592, 0
  %2594 = zext i1 %2593 to i8
  store i8 %2594, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %2595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2596 = select i1 %2593, i64 %2583, i64 %2585
  store i64 %2596, i64* %2595, align 8, !tbaa !2428
  %2597 = load i8, i8* %BRANCH_TAKEN
  %2598 = icmp eq i8 %2597, 1
  br i1 %2598, label %block_400bc0, label %block_400ad8

block_4012b6:                                     ; preds = %block_4012a0
  %2599 = sub i64 %3197, 48
  %2600 = load i64, i64* %PC
  %2601 = add i64 %2600, 4
  store i64 %2601, i64* %PC
  %2602 = inttoptr i64 %2599 to i64*
  %2603 = load i64, i64* %2602
  store i64 %2603, i64* %RAX, align 8, !tbaa !2428
  %2604 = load i64, i64* %RAX
  %2605 = load i64, i64* %PC
  %2606 = add i64 %2605, 4
  store i64 %2606, i64* %PC
  %2607 = add i64 1, %2604
  store i64 %2607, i64* %RAX, align 8, !tbaa !2428
  %2608 = icmp ult i64 %2607, %2604
  %2609 = icmp ult i64 %2607, 1
  %2610 = or i1 %2608, %2609
  %2611 = zext i1 %2610 to i8
  %2612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2611, i8* %2612, align 1, !tbaa !2432
  %2613 = trunc i64 %2607 to i32
  %2614 = and i32 %2613, 255
  %2615 = call i32 @llvm.ctpop.i32(i32 %2614) #16
  %2616 = trunc i32 %2615 to i8
  %2617 = and i8 %2616, 1
  %2618 = xor i8 %2617, 1
  %2619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2618, i8* %2619, align 1, !tbaa !2446
  %2620 = xor i64 1, %2604
  %2621 = xor i64 %2620, %2607
  %2622 = lshr i64 %2621, 4
  %2623 = trunc i64 %2622 to i8
  %2624 = and i8 %2623, 1
  %2625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2624, i8* %2625, align 1, !tbaa !2447
  %2626 = icmp eq i64 %2607, 0
  %2627 = zext i1 %2626 to i8
  %2628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2627, i8* %2628, align 1, !tbaa !2448
  %2629 = lshr i64 %2607, 63
  %2630 = trunc i64 %2629 to i8
  %2631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2630, i8* %2631, align 1, !tbaa !2449
  %2632 = lshr i64 %2604, 63
  %2633 = xor i64 %2629, %2632
  %2634 = add nuw nsw i64 %2633, %2629
  %2635 = icmp eq i64 %2634, 2
  %2636 = zext i1 %2635 to i8
  %2637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2636, i8* %2637, align 1, !tbaa !2450
  %2638 = load i64, i64* %RBP
  %2639 = sub i64 %2638, 48
  %2640 = load i64, i64* %RAX
  %2641 = load i64, i64* %PC
  %2642 = add i64 %2641, 4
  store i64 %2642, i64* %PC
  %2643 = inttoptr i64 %2639 to i64*
  store i64 %2640, i64* %2643
  %2644 = load i64, i64* %PC
  %2645 = sub i64 %2644, 34
  %2646 = load i64, i64* %PC
  %2647 = add i64 %2646, 5
  store i64 %2647, i64* %PC
  %2648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2645, i64* %2648, align 8, !tbaa !2428
  br label %block_4012a0

block_4010b3:                                     ; preds = %block_401089
  %2649 = load i64, i64* %RBP
  %2650 = sub i64 %2649, 80
  %2651 = load i64, i64* %PC
  %2652 = add i64 %2651, 4
  store i64 %2652, i64* %PC
  %2653 = inttoptr i64 %2650 to i64*
  %2654 = load i64, i64* %2653
  store i64 %2654, i64* %RAX, align 8, !tbaa !2428
  %2655 = load i64, i64* %RAX
  %2656 = load i64, i64* %PC
  %2657 = add i64 %2656, 4
  store i64 %2657, i64* %PC
  %2658 = add i64 1, %2655
  store i64 %2658, i64* %RAX, align 8, !tbaa !2428
  %2659 = icmp ult i64 %2658, %2655
  %2660 = icmp ult i64 %2658, 1
  %2661 = or i1 %2659, %2660
  %2662 = zext i1 %2661 to i8
  %2663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2662, i8* %2663, align 1, !tbaa !2432
  %2664 = trunc i64 %2658 to i32
  %2665 = and i32 %2664, 255
  %2666 = call i32 @llvm.ctpop.i32(i32 %2665) #16
  %2667 = trunc i32 %2666 to i8
  %2668 = and i8 %2667, 1
  %2669 = xor i8 %2668, 1
  %2670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2669, i8* %2670, align 1, !tbaa !2446
  %2671 = xor i64 1, %2655
  %2672 = xor i64 %2671, %2658
  %2673 = lshr i64 %2672, 4
  %2674 = trunc i64 %2673 to i8
  %2675 = and i8 %2674, 1
  %2676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2675, i8* %2676, align 1, !tbaa !2447
  %2677 = icmp eq i64 %2658, 0
  %2678 = zext i1 %2677 to i8
  %2679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2678, i8* %2679, align 1, !tbaa !2448
  %2680 = lshr i64 %2658, 63
  %2681 = trunc i64 %2680 to i8
  %2682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2681, i8* %2682, align 1, !tbaa !2449
  %2683 = lshr i64 %2655, 63
  %2684 = xor i64 %2680, %2683
  %2685 = add nuw nsw i64 %2684, %2680
  %2686 = icmp eq i64 %2685, 2
  %2687 = zext i1 %2686 to i8
  %2688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2687, i8* %2688, align 1, !tbaa !2450
  %2689 = load i64, i64* %RBP
  %2690 = sub i64 %2689, 80
  %2691 = load i64, i64* %RAX
  %2692 = load i64, i64* %PC
  %2693 = add i64 %2692, 4
  store i64 %2693, i64* %PC
  %2694 = inttoptr i64 %2690 to i64*
  store i64 %2691, i64* %2694
  br label %block_4010bf

block_400f4d:                                     ; preds = %block_400e3b
  %2695 = sub i64 %5267, 112
  %2696 = load i64, i64* %PC
  %2697 = add i64 %2696, 4
  store i64 %2697, i64* %PC
  %2698 = inttoptr i64 %2695 to i64*
  %2699 = load i64, i64* %2698
  store i64 %2699, i64* %RAX, align 8, !tbaa !2428
  %2700 = load i64, i64* %RAX
  %2701 = load i64, i64* %PC
  %2702 = add i64 %2701, 4
  store i64 %2702, i64* %PC
  %2703 = add i64 1, %2700
  store i64 %2703, i64* %RAX, align 8, !tbaa !2428
  %2704 = icmp ult i64 %2703, %2700
  %2705 = icmp ult i64 %2703, 1
  %2706 = or i1 %2704, %2705
  %2707 = zext i1 %2706 to i8
  %2708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2707, i8* %2708, align 1, !tbaa !2432
  %2709 = trunc i64 %2703 to i32
  %2710 = and i32 %2709, 255
  %2711 = call i32 @llvm.ctpop.i32(i32 %2710) #16
  %2712 = trunc i32 %2711 to i8
  %2713 = and i8 %2712, 1
  %2714 = xor i8 %2713, 1
  %2715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2714, i8* %2715, align 1, !tbaa !2446
  %2716 = xor i64 1, %2700
  %2717 = xor i64 %2716, %2703
  %2718 = lshr i64 %2717, 4
  %2719 = trunc i64 %2718 to i8
  %2720 = and i8 %2719, 1
  %2721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2720, i8* %2721, align 1, !tbaa !2447
  %2722 = icmp eq i64 %2703, 0
  %2723 = zext i1 %2722 to i8
  %2724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2723, i8* %2724, align 1, !tbaa !2448
  %2725 = lshr i64 %2703, 63
  %2726 = trunc i64 %2725 to i8
  %2727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2726, i8* %2727, align 1, !tbaa !2449
  %2728 = lshr i64 %2700, 63
  %2729 = xor i64 %2725, %2728
  %2730 = add nuw nsw i64 %2729, %2725
  %2731 = icmp eq i64 %2730, 2
  %2732 = zext i1 %2731 to i8
  %2733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2732, i8* %2733, align 1, !tbaa !2450
  %2734 = load i64, i64* %RBP
  %2735 = sub i64 %2734, 112
  %2736 = load i64, i64* %RAX
  %2737 = load i64, i64* %PC
  %2738 = add i64 %2737, 4
  store i64 %2738, i64* %PC
  %2739 = inttoptr i64 %2735 to i64*
  store i64 %2736, i64* %2739
  %2740 = load i64, i64* %RBP
  %2741 = sub i64 %2740, 56
  %2742 = load i64, i64* %PC
  %2743 = add i64 %2742, 4
  store i64 %2743, i64* %PC
  %2744 = inttoptr i64 %2741 to i64*
  %2745 = load i64, i64* %2744
  store i64 %2745, i64* %RAX, align 8, !tbaa !2428
  %2746 = load i64, i64* %RAX
  %2747 = load i64, i64* %PC
  %2748 = add i64 %2747, 4
  store i64 %2748, i64* %PC
  %2749 = add i64 1, %2746
  store i64 %2749, i64* %RAX, align 8, !tbaa !2428
  %2750 = icmp ult i64 %2749, %2746
  %2751 = icmp ult i64 %2749, 1
  %2752 = or i1 %2750, %2751
  %2753 = zext i1 %2752 to i8
  %2754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2753, i8* %2754, align 1, !tbaa !2432
  %2755 = trunc i64 %2749 to i32
  %2756 = and i32 %2755, 255
  %2757 = call i32 @llvm.ctpop.i32(i32 %2756) #16
  %2758 = trunc i32 %2757 to i8
  %2759 = and i8 %2758, 1
  %2760 = xor i8 %2759, 1
  %2761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2760, i8* %2761, align 1, !tbaa !2446
  %2762 = xor i64 1, %2746
  %2763 = xor i64 %2762, %2749
  %2764 = lshr i64 %2763, 4
  %2765 = trunc i64 %2764 to i8
  %2766 = and i8 %2765, 1
  %2767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2766, i8* %2767, align 1, !tbaa !2447
  %2768 = icmp eq i64 %2749, 0
  %2769 = zext i1 %2768 to i8
  %2770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2769, i8* %2770, align 1, !tbaa !2448
  %2771 = lshr i64 %2749, 63
  %2772 = trunc i64 %2771 to i8
  %2773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2772, i8* %2773, align 1, !tbaa !2449
  %2774 = lshr i64 %2746, 63
  %2775 = xor i64 %2771, %2774
  %2776 = add nuw nsw i64 %2775, %2771
  %2777 = icmp eq i64 %2776, 2
  %2778 = zext i1 %2777 to i8
  %2779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2778, i8* %2779, align 1, !tbaa !2450
  %2780 = load i64, i64* %RBP
  %2781 = sub i64 %2780, 56
  %2782 = load i64, i64* %RAX
  %2783 = load i64, i64* %PC
  %2784 = add i64 %2783, 4
  store i64 %2784, i64* %PC
  %2785 = inttoptr i64 %2781 to i64*
  store i64 %2782, i64* %2785
  %2786 = load i64, i64* %PC
  %2787 = sub i64 %2786, 356
  %2788 = load i64, i64* %PC
  %2789 = add i64 %2788, 5
  store i64 %2789, i64* %PC
  %2790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2787, i64* %2790, align 8, !tbaa !2428
  br label %block_400e01

block_40110a:                                     ; preds = %block_40117e, %block_401102
  %MEMORY.12 = phi %struct.Memory* [ %MEMORY.5, %block_401102 ], [ %MEMORY.1, %block_40117e ]
  %2791 = load i64, i64* %RBP
  %2792 = sub i64 %2791, 48
  %2793 = load i64, i64* %PC
  %2794 = add i64 %2793, 8
  store i64 %2794, i64* %PC
  %2795 = inttoptr i64 %2792 to i64*
  %2796 = load i64, i64* %2795
  %2797 = sub i64 %2796, 256
  %2798 = icmp ult i64 %2796, 256
  %2799 = zext i1 %2798 to i8
  %2800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2799, i8* %2800, align 1, !tbaa !2432
  %2801 = trunc i64 %2797 to i32
  %2802 = and i32 %2801, 255
  %2803 = call i32 @llvm.ctpop.i32(i32 %2802) #16
  %2804 = trunc i32 %2803 to i8
  %2805 = and i8 %2804, 1
  %2806 = xor i8 %2805, 1
  %2807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2806, i8* %2807, align 1, !tbaa !2446
  %2808 = xor i64 %2796, 256
  %2809 = xor i64 %2808, %2797
  %2810 = lshr i64 %2809, 4
  %2811 = trunc i64 %2810 to i8
  %2812 = and i8 %2811, 1
  %2813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2812, i8* %2813, align 1, !tbaa !2447
  %2814 = icmp eq i64 %2797, 0
  %2815 = zext i1 %2814 to i8
  %2816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2815, i8* %2816, align 1, !tbaa !2448
  %2817 = lshr i64 %2797, 63
  %2818 = trunc i64 %2817 to i8
  %2819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2818, i8* %2819, align 1, !tbaa !2449
  %2820 = lshr i64 %2796, 63
  %2821 = xor i64 %2817, %2820
  %2822 = add nuw nsw i64 %2821, %2820
  %2823 = icmp eq i64 %2822, 2
  %2824 = zext i1 %2823 to i8
  %2825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2824, i8* %2825, align 1, !tbaa !2450
  %2826 = load i64, i64* %PC
  %2827 = add i64 %2826, 231
  %2828 = load i64, i64* %PC
  %2829 = add i64 %2828, 6
  %2830 = load i64, i64* %PC
  %2831 = add i64 %2830, 6
  store i64 %2831, i64* %PC
  %2832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2833 = load i8, i8* %2832, align 1, !tbaa !2432
  %2834 = icmp eq i8 %2833, 0
  %2835 = zext i1 %2834 to i8
  store i8 %2835, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %2836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2837 = select i1 %2834, i64 %2827, i64 %2829
  store i64 %2837, i64* %2836, align 8, !tbaa !2428
  %2838 = load i8, i8* %BRANCH_TAKEN
  %2839 = icmp eq i8 %2838, 1
  %2840 = load i64, i64* %RBP
  br i1 %2839, label %block_4011f9, label %block_401118

block_400cde:                                     ; preds = %block_400c73
  %2841 = sub i64 %4371, 10648
  %2842 = load i64, i64* %PC
  %2843 = add i64 %2842, 7
  store i64 %2843, i64* %PC
  %2844 = inttoptr i64 %2841 to i64*
  %2845 = load i64, i64* %2844
  store i64 %2845, i64* %RAX, align 8, !tbaa !2428
  %2846 = load i64, i64* %RBP
  %2847 = sub i64 %2846, 10640
  %2848 = load i64, i64* %PC
  %2849 = add i64 %2848, 7
  store i64 %2849, i64* %PC
  %2850 = inttoptr i64 %2847 to i64*
  %2851 = load i64, i64* %2850
  store i64 %2851, i64* %RCX, align 8, !tbaa !2428
  %2852 = load i64, i64* %RBP
  %2853 = load i64, i64* %RCX
  %2854 = mul i64 %2853, 8
  %2855 = add i64 %2852, -10368
  %2856 = add i64 %2855, %2854
  %2857 = load i64, i64* %RAX
  %2858 = load i64, i64* %PC
  %2859 = add i64 %2858, 8
  store i64 %2859, i64* %PC
  %2860 = inttoptr i64 %2856 to i64*
  store i64 %2857, i64* %2860
  %2861 = load i64, i64* %RBP
  %2862 = sub i64 %2861, 48
  %2863 = load i64, i64* %PC
  %2864 = add i64 %2863, 4
  store i64 %2864, i64* %PC
  %2865 = inttoptr i64 %2862 to i64*
  %2866 = load i64, i64* %2865
  store i64 %2866, i64* %RAX, align 8, !tbaa !2428
  %2867 = load i8, i8* %AL
  %2868 = zext i8 %2867 to i64
  %2869 = load i64, i64* %PC
  %2870 = add i64 %2869, 2
  store i64 %2870, i64* %PC
  store i8 %2867, i8* %DL, align 1, !tbaa !2451
  %2871 = load i64, i64* %RBP
  %2872 = sub i64 %2871, 10640
  %2873 = load i64, i64* %PC
  %2874 = add i64 %2873, 7
  store i64 %2874, i64* %PC
  %2875 = inttoptr i64 %2872 to i64*
  %2876 = load i64, i64* %2875
  store i64 %2876, i64* %RAX, align 8, !tbaa !2428
  %2877 = load i64, i64* %RBP
  %2878 = load i64, i64* %RAX
  %2879 = add i64 %2877, -10624
  %2880 = add i64 %2879, %2878
  %2881 = load i8, i8* %DL
  %2882 = zext i8 %2881 to i64
  %2883 = load i64, i64* %PC
  %2884 = add i64 %2883, 7
  store i64 %2884, i64* %PC
  %2885 = inttoptr i64 %2880 to i8*
  store i8 %2881, i8* %2885
  %2886 = load i64, i64* %RBP
  %2887 = sub i64 %2886, 10648
  %2888 = load i64, i64* %PC
  %2889 = add i64 %2888, 7
  store i64 %2889, i64* %PC
  %2890 = inttoptr i64 %2887 to i64*
  %2891 = load i64, i64* %2890
  store i64 %2891, i64* %RAX, align 8, !tbaa !2428
  %2892 = load i64, i64* %RAX
  %2893 = load i64, i64* %RBP
  %2894 = sub i64 %2893, 10656
  %2895 = load i64, i64* %PC
  %2896 = add i64 %2895, 7
  store i64 %2896, i64* %PC
  %2897 = inttoptr i64 %2894 to i64*
  %2898 = load i64, i64* %2897
  %2899 = sub i64 %2892, %2898
  %2900 = icmp ugt i64 %2898, %2892
  %2901 = zext i1 %2900 to i8
  %2902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2901, i8* %2902, align 1, !tbaa !2432
  %2903 = trunc i64 %2899 to i32
  %2904 = and i32 %2903, 255
  %2905 = call i32 @llvm.ctpop.i32(i32 %2904) #16
  %2906 = trunc i32 %2905 to i8
  %2907 = and i8 %2906, 1
  %2908 = xor i8 %2907, 1
  %2909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2908, i8* %2909, align 1, !tbaa !2446
  %2910 = xor i64 %2898, %2892
  %2911 = xor i64 %2910, %2899
  %2912 = lshr i64 %2911, 4
  %2913 = trunc i64 %2912 to i8
  %2914 = and i8 %2913, 1
  %2915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2914, i8* %2915, align 1, !tbaa !2447
  %2916 = icmp eq i64 %2899, 0
  %2917 = zext i1 %2916 to i8
  %2918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2917, i8* %2918, align 1, !tbaa !2448
  %2919 = lshr i64 %2899, 63
  %2920 = trunc i64 %2919 to i8
  %2921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2920, i8* %2921, align 1, !tbaa !2449
  %2922 = lshr i64 %2892, 63
  %2923 = lshr i64 %2898, 63
  %2924 = xor i64 %2923, %2922
  %2925 = xor i64 %2919, %2922
  %2926 = add nuw nsw i64 %2925, %2924
  %2927 = icmp eq i64 %2926, 2
  %2928 = zext i1 %2927 to i8
  %2929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2928, i8* %2929, align 1, !tbaa !2450
  %2930 = load i64, i64* %PC
  %2931 = add i64 %2930, 20
  %2932 = load i64, i64* %PC
  %2933 = add i64 %2932, 6
  %2934 = load i64, i64* %PC
  %2935 = add i64 %2934, 6
  store i64 %2935, i64* %PC
  %2936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2937 = load i8, i8* %2936, align 1, !tbaa !2432
  %2938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2939 = load i8, i8* %2938, align 1, !tbaa !2448
  %2940 = or i8 %2939, %2937
  %2941 = icmp ne i8 %2940, 0
  %2942 = zext i1 %2941 to i8
  store i8 %2942, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %2943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2944 = select i1 %2941, i64 %2931, i64 %2933
  store i64 %2944, i64* %2943, align 8, !tbaa !2428
  %2945 = load i8, i8* %BRANCH_TAKEN
  %2946 = icmp eq i8 %2945, 1
  br i1 %2946, label %block_400d2a, label %block_400d1c

block_4012c7:                                     ; preds = %block_4012a0
  %2947 = sub i64 %3197, 80
  %2948 = load i64, i64* %PC
  %2949 = add i64 %2948, 4
  store i64 %2949, i64* %PC
  %2950 = inttoptr i64 %2947 to i64*
  %2951 = load i64, i64* %2950
  store i64 %2951, i64* %RAX, align 8, !tbaa !2428
  %2952 = load i64, i64* %RBP
  %2953 = sub i64 %2952, 48
  %2954 = load i64, i64* %PC
  %2955 = add i64 %2954, 4
  store i64 %2955, i64* %PC
  %2956 = inttoptr i64 %2953 to i64*
  %2957 = load i64, i64* %2956
  store i64 %2957, i64* %RCX, align 8, !tbaa !2428
  %2958 = load i64, i64* %RAX
  %2959 = load i64, i64* %RBP
  %2960 = load i64, i64* %RCX
  %2961 = mul i64 %2960, 8
  %2962 = add i64 %2959, -12736
  %2963 = add i64 %2962, %2961
  %2964 = load i64, i64* %PC
  %2965 = add i64 %2964, 8
  store i64 %2965, i64* %PC
  %2966 = inttoptr i64 %2963 to i64*
  %2967 = load i64, i64* %2966
  %2968 = sub i64 %2958, %2967
  %2969 = icmp ugt i64 %2967, %2958
  %2970 = zext i1 %2969 to i8
  %2971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2970, i8* %2971, align 1, !tbaa !2432
  %2972 = trunc i64 %2968 to i32
  %2973 = and i32 %2972, 255
  %2974 = call i32 @llvm.ctpop.i32(i32 %2973) #16
  %2975 = trunc i32 %2974 to i8
  %2976 = and i8 %2975, 1
  %2977 = xor i8 %2976, 1
  %2978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2977, i8* %2978, align 1, !tbaa !2446
  %2979 = xor i64 %2967, %2958
  %2980 = xor i64 %2979, %2968
  %2981 = lshr i64 %2980, 4
  %2982 = trunc i64 %2981 to i8
  %2983 = and i8 %2982, 1
  %2984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2983, i8* %2984, align 1, !tbaa !2447
  %2985 = icmp eq i64 %2968, 0
  %2986 = zext i1 %2985 to i8
  %2987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2986, i8* %2987, align 1, !tbaa !2448
  %2988 = lshr i64 %2968, 63
  %2989 = trunc i64 %2988 to i8
  %2990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2989, i8* %2990, align 1, !tbaa !2449
  %2991 = lshr i64 %2958, 63
  %2992 = lshr i64 %2967, 63
  %2993 = xor i64 %2992, %2991
  %2994 = xor i64 %2988, %2991
  %2995 = add nuw nsw i64 %2994, %2993
  %2996 = icmp eq i64 %2995, 2
  %2997 = zext i1 %2996 to i8
  %2998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2997, i8* %2998, align 1, !tbaa !2450
  %2999 = load i64, i64* %PC
  %3000 = add i64 %2999, 63
  %3001 = load i64, i64* %PC
  %3002 = add i64 %3001, 6
  %3003 = load i64, i64* %PC
  %3004 = add i64 %3003, 6
  store i64 %3004, i64* %PC
  %3005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3006 = load i8, i8* %3005, align 1, !tbaa !2448
  %3007 = icmp eq i8 %3006, 0
  %3008 = zext i1 %3007 to i8
  store i8 %3008, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %3009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3010 = select i1 %3007, i64 %3000, i64 %3002
  store i64 %3010, i64* %3009, align 8, !tbaa !2428
  %3011 = load i8, i8* %BRANCH_TAKEN
  %3012 = icmp eq i8 %3011, 1
  br i1 %3012, label %block_401316, label %block_4012dd

block_400ac8:                                     ; preds = %block_400a7f
  %3013 = load i64, i64* %PC
  %3014 = add i64 %3013, 5
  %3015 = load i64, i64* %PC
  %3016 = add i64 %3015, 5
  store i64 %3016, i64* %PC
  %3017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3014, i64* %3017, align 8, !tbaa !2428
  br label %block_400acd

block_400cad:                                     ; preds = %block_400c8d, %block_400c80
  %MEMORY.13 = phi %struct.Memory* [ %MEMORY.17, %block_400c80 ], [ %MEMORY.17, %block_400c8d ]
  %3018 = load i64, i64* %RBP
  %3019 = sub i64 %3018, 10668
  %3020 = load i64, i64* %PC
  %3021 = add i64 %3020, 7
  store i64 %3021, i64* %PC
  %3022 = inttoptr i64 %3019 to i32*
  %3023 = load i32, i32* %3022
  %3024 = sext i32 %3023 to i64
  store i64 %3024, i64* %RAX, align 8, !tbaa !2428
  %3025 = load i64, i64* %RBP
  %3026 = load i64, i64* %RAX
  %3027 = mul i64 %3026, 4
  %3028 = add i64 %3025, -8320
  %3029 = add i64 %3028, %3027
  %3030 = load i64, i64* %PC
  %3031 = add i64 %3030, 7
  store i64 %3031, i64* %PC
  %3032 = inttoptr i64 %3029 to i32*
  %3033 = load i32, i32* %3032
  %3034 = zext i32 %3033 to i64
  store i64 %3034, i64* %RCX, align 8, !tbaa !2428
  %3035 = load i64, i64* %RBP
  %3036 = sub i64 %3035, 10668
  %3037 = load i32, i32* %ECX
  %3038 = zext i32 %3037 to i64
  %3039 = load i64, i64* %PC
  %3040 = add i64 %3039, 6
  store i64 %3040, i64* %PC
  %3041 = inttoptr i64 %3036 to i32*
  store i32 %3037, i32* %3041
  %3042 = load i64, i64* %RBP
  %3043 = sub i64 %3042, 56
  %3044 = load i64, i64* %PC
  %3045 = add i64 %3044, 4
  store i64 %3045, i64* %PC
  %3046 = inttoptr i64 %3043 to i64*
  %3047 = load i64, i64* %3046
  store i64 %3047, i64* %RAX, align 8, !tbaa !2428
  %3048 = load i64, i64* %RAX
  %3049 = load i64, i64* %PC
  %3050 = add i64 %3049, 4
  store i64 %3050, i64* %PC
  %3051 = shl i64 %3048, 1
  %3052 = icmp slt i64 %3048, 0
  %3053 = icmp slt i64 %3051, 0
  %3054 = xor i1 %3052, %3053
  store i64 %3051, i64* %RAX, align 8, !tbaa !2428
  %3055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3056 = zext i1 %3052 to i8
  store i8 %3056, i8* %3055, align 1, !tbaa !2451
  %3057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3058 = trunc i64 %3051 to i32
  %3059 = and i32 %3058, 254
  %3060 = call i32 @llvm.ctpop.i32(i32 %3059) #16
  %3061 = trunc i32 %3060 to i8
  %3062 = and i8 %3061, 1
  %3063 = xor i8 %3062, 1
  store i8 %3063, i8* %3057, align 1, !tbaa !2451
  %3064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3064, align 1, !tbaa !2451
  %3065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3066 = icmp eq i64 %3051, 0
  %3067 = zext i1 %3066 to i8
  store i8 %3067, i8* %3065, align 1, !tbaa !2451
  %3068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3069 = lshr i64 %3051, 63
  %3070 = trunc i64 %3069 to i8
  store i8 %3070, i8* %3068, align 1, !tbaa !2451
  %3071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3072 = zext i1 %3054 to i8
  store i8 %3072, i8* %3071, align 1, !tbaa !2451
  %3073 = load i64, i64* %RBP
  %3074 = sub i64 %3073, 56
  %3075 = load i64, i64* %RAX
  %3076 = load i64, i64* %PC
  %3077 = add i64 %3076, 4
  store i64 %3077, i64* %PC
  %3078 = inttoptr i64 %3074 to i64*
  store i64 %3075, i64* %3078
  %3079 = load i64, i64* %RBP
  %3080 = sub i64 %3079, 48
  %3081 = load i64, i64* %PC
  %3082 = add i64 %3081, 4
  store i64 %3082, i64* %PC
  %3083 = inttoptr i64 %3080 to i64*
  %3084 = load i64, i64* %3083
  store i64 %3084, i64* %RAX, align 8, !tbaa !2428
  %3085 = load i64, i64* %RAX
  %3086 = load i64, i64* %PC
  %3087 = add i64 %3086, 4
  store i64 %3087, i64* %PC
  %3088 = add i64 1, %3085
  store i64 %3088, i64* %RAX, align 8, !tbaa !2428
  %3089 = icmp ult i64 %3088, %3085
  %3090 = icmp ult i64 %3088, 1
  %3091 = or i1 %3089, %3090
  %3092 = zext i1 %3091 to i8
  %3093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3092, i8* %3093, align 1, !tbaa !2432
  %3094 = trunc i64 %3088 to i32
  %3095 = and i32 %3094, 255
  %3096 = call i32 @llvm.ctpop.i32(i32 %3095) #16
  %3097 = trunc i32 %3096 to i8
  %3098 = and i8 %3097, 1
  %3099 = xor i8 %3098, 1
  %3100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3099, i8* %3100, align 1, !tbaa !2446
  %3101 = xor i64 1, %3085
  %3102 = xor i64 %3101, %3088
  %3103 = lshr i64 %3102, 4
  %3104 = trunc i64 %3103 to i8
  %3105 = and i8 %3104, 1
  %3106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3105, i8* %3106, align 1, !tbaa !2447
  %3107 = icmp eq i64 %3088, 0
  %3108 = zext i1 %3107 to i8
  %3109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3108, i8* %3109, align 1, !tbaa !2448
  %3110 = lshr i64 %3088, 63
  %3111 = trunc i64 %3110 to i8
  %3112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3111, i8* %3112, align 1, !tbaa !2449
  %3113 = lshr i64 %3085, 63
  %3114 = xor i64 %3110, %3113
  %3115 = add nuw nsw i64 %3114, %3110
  %3116 = icmp eq i64 %3115, 2
  %3117 = zext i1 %3116 to i8
  %3118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3117, i8* %3118, align 1, !tbaa !2450
  %3119 = load i64, i64* %RBP
  %3120 = sub i64 %3119, 48
  %3121 = load i64, i64* %RAX
  %3122 = load i64, i64* %PC
  %3123 = add i64 %3122, 4
  store i64 %3123, i64* %PC
  %3124 = inttoptr i64 %3120 to i64*
  store i64 %3121, i64* %3124
  %3125 = load i64, i64* %PC
  %3126 = sub i64 %3125, 102
  %3127 = load i64, i64* %PC
  %3128 = add i64 %3127, 5
  store i64 %3128, i64* %PC
  %3129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3126, i64* %3129, align 8, !tbaa !2428
  br label %block_400c73

block_4012a0:                                     ; preds = %block_40129b, %block_4012b6
  %MEMORY.14 = phi %struct.Memory* [ %MEMORY.15, %block_40129b ], [ %MEMORY.14, %block_4012b6 ]
  %3130 = load i64, i64* %RBP
  %3131 = sub i64 %3130, 48
  %3132 = load i64, i64* %PC
  %3133 = add i64 %3132, 4
  store i64 %3133, i64* %PC
  %3134 = inttoptr i64 %3131 to i64*
  %3135 = load i64, i64* %3134
  store i64 %3135, i64* %RAX, align 8, !tbaa !2428
  %3136 = load i64, i64* %RBP
  %3137 = load i64, i64* %RAX
  %3138 = mul i64 %3137, 8
  %3139 = add i64 %3136, -12736
  %3140 = add i64 %3139, %3138
  %3141 = load i64, i64* %PC
  %3142 = add i64 %3141, 8
  store i64 %3142, i64* %PC
  %3143 = inttoptr i64 %3140 to i64*
  %3144 = load i64, i64* %3143
  store i64 %3144, i64* %RAX, align 8, !tbaa !2428
  %3145 = load i64, i64* %RAX
  %3146 = load i64, i64* %RBP
  %3147 = sub i64 %3146, 80
  %3148 = load i64, i64* %PC
  %3149 = add i64 %3148, 4
  store i64 %3149, i64* %PC
  %3150 = inttoptr i64 %3147 to i64*
  %3151 = load i64, i64* %3150
  %3152 = sub i64 %3145, %3151
  %3153 = icmp ugt i64 %3151, %3145
  %3154 = zext i1 %3153 to i8
  %3155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3154, i8* %3155, align 1, !tbaa !2432
  %3156 = trunc i64 %3152 to i32
  %3157 = and i32 %3156, 255
  %3158 = call i32 @llvm.ctpop.i32(i32 %3157) #16
  %3159 = trunc i32 %3158 to i8
  %3160 = and i8 %3159, 1
  %3161 = xor i8 %3160, 1
  %3162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3161, i8* %3162, align 1, !tbaa !2446
  %3163 = xor i64 %3151, %3145
  %3164 = xor i64 %3163, %3152
  %3165 = lshr i64 %3164, 4
  %3166 = trunc i64 %3165 to i8
  %3167 = and i8 %3166, 1
  %3168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3167, i8* %3168, align 1, !tbaa !2447
  %3169 = icmp eq i64 %3152, 0
  %3170 = zext i1 %3169 to i8
  %3171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3170, i8* %3171, align 1, !tbaa !2448
  %3172 = lshr i64 %3152, 63
  %3173 = trunc i64 %3172 to i8
  %3174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3173, i8* %3174, align 1, !tbaa !2449
  %3175 = lshr i64 %3145, 63
  %3176 = lshr i64 %3151, 63
  %3177 = xor i64 %3176, %3175
  %3178 = xor i64 %3172, %3175
  %3179 = add nuw nsw i64 %3178, %3177
  %3180 = icmp eq i64 %3179, 2
  %3181 = zext i1 %3180 to i8
  %3182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3181, i8* %3182, align 1, !tbaa !2450
  %3183 = load i64, i64* %PC
  %3184 = add i64 %3183, 23
  %3185 = load i64, i64* %PC
  %3186 = add i64 %3185, 6
  %3187 = load i64, i64* %PC
  %3188 = add i64 %3187, 6
  store i64 %3188, i64* %PC
  %3189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3190 = load i8, i8* %3189, align 1, !tbaa !2432
  %3191 = icmp eq i8 %3190, 0
  %3192 = zext i1 %3191 to i8
  store i8 %3192, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %3193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3194 = select i1 %3191, i64 %3184, i64 %3186
  store i64 %3194, i64* %3193, align 8, !tbaa !2428
  %3195 = load i8, i8* %BRANCH_TAKEN
  %3196 = icmp eq i8 %3195, 1
  %3197 = load i64, i64* %RBP
  br i1 %3196, label %block_4012c7, label %block_4012b6

block_400ec8:                                     ; preds = %block_400e68
  %3198 = load i64, i64* %RBP
  %3199 = sub i64 %3198, 10688
  %3200 = load i64, i64* %PC
  %3201 = add i64 %3200, 10
  store i64 %3201, i64* %PC
  %3202 = inttoptr i64 %3199 to i32*
  store i32 0, i32* %3202
  %3203 = load i64, i64* %RBP
  %3204 = sub i64 %3203, 10681
  %3205 = load i64, i64* %PC
  %3206 = add i64 %3205, 7
  store i64 %3206, i64* %PC
  %3207 = inttoptr i64 %3204 to i8*
  store i8 0, i8* %3207
  %3208 = load i64, i64* %PC
  %3209 = add i64 %3208, 38
  %3210 = load i64, i64* %PC
  %3211 = add i64 %3210, 5
  store i64 %3211, i64* %PC
  %3212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3209, i64* %3212, align 8, !tbaa !2428
  br label %block_400eff

block_40129b:                                     ; preds = %block_401268, %block_40128f
  %MEMORY.15 = phi %struct.Memory* [ %MEMORY.21, %block_401268 ], [ %MEMORY.21, %block_40128f ]
  %3213 = load i64, i64* %PC
  %3214 = add i64 %3213, 5
  %3215 = load i64, i64* %PC
  %3216 = add i64 %3215, 5
  store i64 %3216, i64* %PC
  %3217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3214, i64* %3217, align 8, !tbaa !2428
  br label %block_4012a0

block_40128f:                                     ; preds = %block_401268
  %3218 = load i64, i64* %RBP
  %3219 = sub i64 %3218, 80
  %3220 = load i64, i64* %PC
  %3221 = add i64 %3220, 4
  store i64 %3221, i64* %PC
  %3222 = inttoptr i64 %3219 to i64*
  %3223 = load i64, i64* %3222
  store i64 %3223, i64* %RAX, align 8, !tbaa !2428
  %3224 = load i64, i64* %RAX
  %3225 = load i64, i64* %PC
  %3226 = add i64 %3225, 4
  store i64 %3226, i64* %PC
  %3227 = add i64 1, %3224
  store i64 %3227, i64* %RAX, align 8, !tbaa !2428
  %3228 = icmp ult i64 %3227, %3224
  %3229 = icmp ult i64 %3227, 1
  %3230 = or i1 %3228, %3229
  %3231 = zext i1 %3230 to i8
  %3232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3231, i8* %3232, align 1, !tbaa !2432
  %3233 = trunc i64 %3227 to i32
  %3234 = and i32 %3233, 255
  %3235 = call i32 @llvm.ctpop.i32(i32 %3234) #16
  %3236 = trunc i32 %3235 to i8
  %3237 = and i8 %3236, 1
  %3238 = xor i8 %3237, 1
  %3239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3238, i8* %3239, align 1, !tbaa !2446
  %3240 = xor i64 1, %3224
  %3241 = xor i64 %3240, %3227
  %3242 = lshr i64 %3241, 4
  %3243 = trunc i64 %3242 to i8
  %3244 = and i8 %3243, 1
  %3245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3244, i8* %3245, align 1, !tbaa !2447
  %3246 = icmp eq i64 %3227, 0
  %3247 = zext i1 %3246 to i8
  %3248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3247, i8* %3248, align 1, !tbaa !2448
  %3249 = lshr i64 %3227, 63
  %3250 = trunc i64 %3249 to i8
  %3251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3250, i8* %3251, align 1, !tbaa !2449
  %3252 = lshr i64 %3224, 63
  %3253 = xor i64 %3249, %3252
  %3254 = add nuw nsw i64 %3253, %3249
  %3255 = icmp eq i64 %3254, 2
  %3256 = zext i1 %3255 to i8
  %3257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3256, i8* %3257, align 1, !tbaa !2450
  %3258 = load i64, i64* %RBP
  %3259 = sub i64 %3258, 80
  %3260 = load i64, i64* %RAX
  %3261 = load i64, i64* %PC
  %3262 = add i64 %3261, 4
  store i64 %3262, i64* %PC
  %3263 = inttoptr i64 %3259 to i64*
  store i64 %3260, i64* %3263
  br label %block_40129b

block_40117e:                                     ; preds = %block_401170
  %3264 = load i64, i64* %PC
  %3265 = add i64 %3264, 76
  %3266 = load i64, i64* %PC
  %3267 = add i64 %3266, 5
  store i64 %3267, i64* %PC
  %3268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3265, i64* %3268, align 8, !tbaa !2428
  %3269 = load i64, i64* %RBP
  %3270 = sub i64 %3269, 88
  %3271 = load i64, i64* %PC
  %3272 = add i64 %3271, 4
  store i64 %3272, i64* %PC
  %3273 = inttoptr i64 %3270 to i64*
  %3274 = load i64, i64* %3273
  store i64 %3274, i64* %RAX, align 8, !tbaa !2428
  %3275 = load i64, i64* %RBP
  %3276 = sub i64 %3275, 56
  %3277 = load i64, i64* %PC
  %3278 = add i64 %3277, 4
  store i64 %3278, i64* %PC
  %3279 = inttoptr i64 %3276 to i64*
  %3280 = load i64, i64* %3279
  store i64 %3280, i64* %RCX, align 8, !tbaa !2428
  %3281 = load i64, i64* %RBP
  %3282 = load i64, i64* %RCX
  %3283 = mul i64 %3282, 8
  %3284 = add i64 %3281, -12736
  %3285 = add i64 %3284, %3283
  %3286 = load i64, i64* %RAX
  %3287 = load i64, i64* %PC
  %3288 = add i64 %3287, 8
  store i64 %3288, i64* %PC
  %3289 = inttoptr i64 %3285 to i64*
  store i64 %3286, i64* %3289
  %3290 = load i64, i64* %RBP
  %3291 = sub i64 %3290, 89
  %3292 = load i64, i64* %PC
  %3293 = add i64 %3292, 3
  store i64 %3293, i64* %PC
  %3294 = inttoptr i64 %3291 to i8*
  %3295 = load i8, i8* %3294
  store i8 %3295, i8* %DL, align 1, !tbaa !2451
  %3296 = load i64, i64* %RBP
  %3297 = sub i64 %3296, 56
  %3298 = load i64, i64* %PC
  %3299 = add i64 %3298, 4
  store i64 %3299, i64* %PC
  %3300 = inttoptr i64 %3297 to i64*
  %3301 = load i64, i64* %3300
  store i64 %3301, i64* %RAX, align 8, !tbaa !2428
  %3302 = load i64, i64* %RBP
  %3303 = load i64, i64* %RAX
  %3304 = add i64 %3302, -12992
  %3305 = add i64 %3304, %3303
  %3306 = load i8, i8* %DL
  %3307 = zext i8 %3306 to i64
  %3308 = load i64, i64* %PC
  %3309 = add i64 %3308, 7
  store i64 %3309, i64* %PC
  %3310 = inttoptr i64 %3305 to i8*
  store i8 %3306, i8* %3310
  %3311 = load i64, i64* %RBP
  %3312 = sub i64 %3311, 48
  %3313 = load i64, i64* %PC
  %3314 = add i64 %3313, 4
  store i64 %3314, i64* %PC
  %3315 = inttoptr i64 %3312 to i64*
  %3316 = load i64, i64* %3315
  store i64 %3316, i64* %RAX, align 8, !tbaa !2428
  %3317 = load i64, i64* %RAX
  %3318 = load i64, i64* %PC
  %3319 = add i64 %3318, 4
  store i64 %3319, i64* %PC
  %3320 = add i64 1, %3317
  store i64 %3320, i64* %RAX, align 8, !tbaa !2428
  %3321 = icmp ult i64 %3320, %3317
  %3322 = icmp ult i64 %3320, 1
  %3323 = or i1 %3321, %3322
  %3324 = zext i1 %3323 to i8
  %3325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3324, i8* %3325, align 1, !tbaa !2432
  %3326 = trunc i64 %3320 to i32
  %3327 = and i32 %3326, 255
  %3328 = call i32 @llvm.ctpop.i32(i32 %3327) #16
  %3329 = trunc i32 %3328 to i8
  %3330 = and i8 %3329, 1
  %3331 = xor i8 %3330, 1
  %3332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3331, i8* %3332, align 1, !tbaa !2446
  %3333 = xor i64 1, %3317
  %3334 = xor i64 %3333, %3320
  %3335 = lshr i64 %3334, 4
  %3336 = trunc i64 %3335 to i8
  %3337 = and i8 %3336, 1
  %3338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3337, i8* %3338, align 1, !tbaa !2447
  %3339 = icmp eq i64 %3320, 0
  %3340 = zext i1 %3339 to i8
  %3341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3340, i8* %3341, align 1, !tbaa !2448
  %3342 = lshr i64 %3320, 63
  %3343 = trunc i64 %3342 to i8
  %3344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3343, i8* %3344, align 1, !tbaa !2449
  %3345 = lshr i64 %3317, 63
  %3346 = xor i64 %3342, %3345
  %3347 = add nuw nsw i64 %3346, %3342
  %3348 = icmp eq i64 %3347, 2
  %3349 = zext i1 %3348 to i8
  %3350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3349, i8* %3350, align 1, !tbaa !2450
  %3351 = load i64, i64* %RBP
  %3352 = sub i64 %3351, 48
  %3353 = load i64, i64* %RAX
  %3354 = load i64, i64* %PC
  %3355 = add i64 %3354, 4
  store i64 %3355, i64* %PC
  %3356 = inttoptr i64 %3352 to i64*
  store i64 %3353, i64* %3356
  %3357 = load i64, i64* %PC
  %3358 = sub i64 %3357, 234
  %3359 = load i64, i64* %PC
  %3360 = add i64 %3359, 5
  store i64 %3360, i64* %PC
  %3361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3358, i64* %3361, align 8, !tbaa !2428
  br label %block_40110a

block_400a8a:                                     ; preds = %block_400a7f
  %3362 = load i64, i64* %RBP
  %3363 = sub i64 %3362, 6272
  %3364 = load i64, i64* %PC
  %3365 = add i64 %3364, 7
  store i64 %3365, i64* %PC
  store i64 %3363, i64* %RSI, align 8, !tbaa !2428
  %3366 = load i64, i64* %RBP
  %3367 = sub i64 %3366, 4224
  %3368 = load i64, i64* %PC
  %3369 = add i64 %3368, 7
  store i64 %3369, i64* %PC
  store i64 %3367, i64* %RDI, align 8, !tbaa !2428
  %3370 = load i64, i64* %RBP
  %3371 = sub i64 %3370, 64
  %3372 = load i64, i64* %PC
  %3373 = add i64 %3372, 4
  store i64 %3373, i64* %PC
  %3374 = inttoptr i64 %3371 to i64*
  %3375 = load i64, i64* %3374
  store i64 %3375, i64* %RAX, align 8, !tbaa !2428
  %3376 = load i32, i32* %EAX
  %3377 = zext i32 %3376 to i64
  %3378 = load i64, i64* %PC
  %3379 = add i64 %3378, 2
  store i64 %3379, i64* %PC
  %3380 = and i64 %3377, 4294967295
  store i64 %3380, i64* %RCX, align 8, !tbaa !2428
  %3381 = load i64, i64* %RBP
  %3382 = sub i64 %3381, 48
  %3383 = load i64, i64* %PC
  %3384 = add i64 %3383, 4
  store i64 %3384, i64* %PC
  %3385 = inttoptr i64 %3382 to i64*
  %3386 = load i64, i64* %3385
  store i64 %3386, i64* %RAX, align 8, !tbaa !2428
  %3387 = load i32, i32* %EAX
  %3388 = zext i32 %3387 to i64
  %3389 = load i64, i64* %PC
  %3390 = add i64 %3389, 2
  store i64 %3390, i64* %PC
  %3391 = and i64 %3388, 4294967295
  store i64 %3391, i64* %RDX, align 8, !tbaa !2428
  %3392 = load i64, i64* %RBP
  %3393 = sub i64 %3392, 13076
  %3394 = load i32, i32* %EDX
  %3395 = zext i32 %3394 to i64
  %3396 = load i64, i64* %PC
  %3397 = add i64 %3396, 6
  store i64 %3397, i64* %PC
  %3398 = inttoptr i64 %3393 to i32*
  store i32 %3394, i32* %3398
  %3399 = load i32, i32* %ECX
  %3400 = zext i32 %3399 to i64
  %3401 = load i64, i64* %PC
  %3402 = add i64 %3401, 2
  store i64 %3402, i64* %PC
  %3403 = and i64 %3400, 4294967295
  store i64 %3403, i64* %RDX, align 8, !tbaa !2428
  %3404 = load i64, i64* %RBP
  %3405 = sub i64 %3404, 13076
  %3406 = load i64, i64* %PC
  %3407 = add i64 %3406, 6
  store i64 %3407, i64* %PC
  %3408 = inttoptr i64 %3405 to i32*
  %3409 = load i32, i32* %3408
  %3410 = zext i32 %3409 to i64
  store i64 %3410, i64* %RCX, align 8, !tbaa !2428
  %3411 = load i64, i64* %PC
  %3412 = add i64 %3411, 2238
  %3413 = load i64, i64* %PC
  %3414 = add i64 %3413, 5
  %3415 = load i64, i64* %PC
  %3416 = add i64 %3415, 5
  store i64 %3416, i64* %PC
  %3417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3418 = load i64, i64* %3417, align 8, !tbaa !2428
  %3419 = add i64 %3418, -8
  %3420 = inttoptr i64 %3419 to i64*
  store i64 %3414, i64* %3420
  store i64 %3419, i64* %3417, align 8, !tbaa !2428
  %3421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3412, i64* %3421, align 8, !tbaa !2428
  %3422 = load i64, i64* %PC
  %3423 = call %struct.Memory* @sub_401370_heap_adjust_renamed_(%struct.State* %0, i64 %3422, %struct.Memory* %MEMORY.16)
  %3424 = load i64, i64* %RBP
  %3425 = sub i64 %3424, 48
  %3426 = load i64, i64* %PC
  %3427 = add i64 %3426, 4
  store i64 %3427, i64* %PC
  %3428 = inttoptr i64 %3425 to i64*
  %3429 = load i64, i64* %3428
  store i64 %3429, i64* %RAX, align 8, !tbaa !2428
  %3430 = load i64, i64* %RAX
  %3431 = load i64, i64* %PC
  %3432 = add i64 %3431, 4
  store i64 %3432, i64* %PC
  %3433 = add i64 -1, %3430
  store i64 %3433, i64* %RAX, align 8, !tbaa !2428
  %3434 = icmp ult i64 %3433, %3430
  %3435 = icmp ult i64 %3433, -1
  %3436 = or i1 %3434, %3435
  %3437 = zext i1 %3436 to i8
  %3438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3437, i8* %3438, align 1, !tbaa !2432
  %3439 = trunc i64 %3433 to i32
  %3440 = and i32 %3439, 255
  %3441 = call i32 @llvm.ctpop.i32(i32 %3440) #16
  %3442 = trunc i32 %3441 to i8
  %3443 = and i8 %3442, 1
  %3444 = xor i8 %3443, 1
  %3445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3444, i8* %3445, align 1, !tbaa !2446
  %3446 = xor i64 -1, %3430
  %3447 = xor i64 %3446, %3433
  %3448 = lshr i64 %3447, 4
  %3449 = trunc i64 %3448 to i8
  %3450 = and i8 %3449, 1
  %3451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3450, i8* %3451, align 1, !tbaa !2447
  %3452 = icmp eq i64 %3433, 0
  %3453 = zext i1 %3452 to i8
  %3454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3453, i8* %3454, align 1, !tbaa !2448
  %3455 = lshr i64 %3433, 63
  %3456 = trunc i64 %3455 to i8
  %3457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3456, i8* %3457, align 1, !tbaa !2449
  %3458 = lshr i64 %3430, 63
  %3459 = xor i64 %3455, %3458
  %3460 = xor i64 %3455, 1
  %3461 = add nuw nsw i64 %3459, %3460
  %3462 = icmp eq i64 %3461, 2
  %3463 = zext i1 %3462 to i8
  %3464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3463, i8* %3464, align 1, !tbaa !2450
  %3465 = load i64, i64* %RBP
  %3466 = sub i64 %3465, 48
  %3467 = load i64, i64* %RAX
  %3468 = load i64, i64* %PC
  %3469 = add i64 %3468, 4
  store i64 %3469, i64* %PC
  %3470 = inttoptr i64 %3466 to i64*
  store i64 %3467, i64* %3470
  %3471 = load i64, i64* %PC
  %3472 = sub i64 %3471, 68
  %3473 = load i64, i64* %PC
  %3474 = add i64 %3473, 5
  store i64 %3474, i64* %PC
  %3475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3472, i64* %3475, align 8, !tbaa !2428
  br label %block_400a7f

block_401089:                                     ; preds = %block_40106e
  %3476 = load i64, i64* %RAX
  %3477 = load i64, i64* %PC
  %3478 = add i64 %3477, 4
  store i64 %3478, i64* %PC
  %3479 = shl i64 %3476, 1
  %3480 = icmp slt i64 %3476, 0
  %3481 = icmp slt i64 %3479, 0
  %3482 = xor i1 %3480, %3481
  store i64 %3479, i64* %RAX, align 8, !tbaa !2428
  %3483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3484 = zext i1 %3480 to i8
  store i8 %3484, i8* %3483, align 1, !tbaa !2451
  %3485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3486 = trunc i64 %3479 to i32
  %3487 = and i32 %3486, 254
  %3488 = call i32 @llvm.ctpop.i32(i32 %3487) #16
  %3489 = trunc i32 %3488 to i8
  %3490 = and i8 %3489, 1
  %3491 = xor i8 %3490, 1
  store i8 %3491, i8* %3485, align 1, !tbaa !2451
  %3492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3492, align 1, !tbaa !2451
  %3493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3494 = icmp eq i64 %3479, 0
  %3495 = zext i1 %3494 to i8
  store i8 %3495, i8* %3493, align 1, !tbaa !2451
  %3496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3497 = lshr i64 %3479, 63
  %3498 = trunc i64 %3497 to i8
  store i8 %3498, i8* %3496, align 1, !tbaa !2451
  %3499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3500 = zext i1 %3482 to i8
  store i8 %3500, i8* %3499, align 1, !tbaa !2451
  %3501 = load i64, i64* %RAX
  %3502 = load i64, i64* %PC
  %3503 = add i64 %3502, 4
  store i64 %3503, i64* %PC
  %3504 = add i64 1, %3501
  store i64 %3504, i64* %RAX, align 8, !tbaa !2428
  %3505 = icmp ult i64 %3504, %3501
  %3506 = icmp ult i64 %3504, 1
  %3507 = or i1 %3505, %3506
  %3508 = zext i1 %3507 to i8
  %3509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3508, i8* %3509, align 1, !tbaa !2432
  %3510 = trunc i64 %3504 to i32
  %3511 = and i32 %3510, 255
  %3512 = call i32 @llvm.ctpop.i32(i32 %3511) #16
  %3513 = trunc i32 %3512 to i8
  %3514 = and i8 %3513, 1
  %3515 = xor i8 %3514, 1
  %3516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3515, i8* %3516, align 1, !tbaa !2446
  %3517 = xor i64 1, %3501
  %3518 = xor i64 %3517, %3504
  %3519 = lshr i64 %3518, 4
  %3520 = trunc i64 %3519 to i8
  %3521 = and i8 %3520, 1
  %3522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3521, i8* %3522, align 1, !tbaa !2447
  %3523 = icmp eq i64 %3504, 0
  %3524 = zext i1 %3523 to i8
  %3525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3524, i8* %3525, align 1, !tbaa !2448
  %3526 = lshr i64 %3504, 63
  %3527 = trunc i64 %3526 to i8
  %3528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3527, i8* %3528, align 1, !tbaa !2449
  %3529 = lshr i64 %3501, 63
  %3530 = xor i64 %3526, %3529
  %3531 = add nuw nsw i64 %3530, %3526
  %3532 = icmp eq i64 %3531, 2
  %3533 = zext i1 %3532 to i8
  %3534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3533, i8* %3534, align 1, !tbaa !2450
  %3535 = load i64, i64* %RBP
  %3536 = sub i64 %3535, 80
  %3537 = load i64, i64* %RAX
  %3538 = load i64, i64* %PC
  %3539 = add i64 %3538, 4
  store i64 %3539, i64* %PC
  %3540 = inttoptr i64 %3536 to i64*
  store i64 %3537, i64* %3540
  %3541 = load i64, i64* %RBP
  %3542 = sub i64 %3541, 56
  %3543 = load i64, i64* %PC
  %3544 = add i64 %3543, 4
  store i64 %3544, i64* %PC
  %3545 = inttoptr i64 %3542 to i64*
  %3546 = load i64, i64* %3545
  store i64 %3546, i64* %RAX, align 8, !tbaa !2428
  %3547 = load i64, i64* %RBP
  %3548 = load i64, i64* %RAX
  %3549 = mul i64 %3548, 8
  %3550 = add i64 %3547, -10368
  %3551 = add i64 %3550, %3549
  %3552 = load i64, i64* %PC
  %3553 = add i64 %3552, 8
  store i64 %3553, i64* %PC
  %3554 = inttoptr i64 %3551 to i64*
  %3555 = load i64, i64* %3554
  store i64 %3555, i64* %RAX, align 8, !tbaa !2428
  %3556 = load i64, i64* %RAX
  %3557 = load i64, i64* %RBP
  %3558 = sub i64 %3557, 72
  %3559 = load i64, i64* %PC
  %3560 = add i64 %3559, 4
  store i64 %3560, i64* %PC
  %3561 = inttoptr i64 %3558 to i64*
  %3562 = load i64, i64* %3561
  %3563 = and i64 %3562, %3556
  store i64 %3563, i64* %RAX, align 8, !tbaa !2428
  %3564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3564, align 1, !tbaa !2432
  %3565 = trunc i64 %3563 to i32
  %3566 = and i32 %3565, 255
  %3567 = call i32 @llvm.ctpop.i32(i32 %3566) #16
  %3568 = trunc i32 %3567 to i8
  %3569 = and i8 %3568, 1
  %3570 = xor i8 %3569, 1
  %3571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3570, i8* %3571, align 1, !tbaa !2446
  %3572 = icmp eq i64 %3563, 0
  %3573 = zext i1 %3572 to i8
  %3574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3573, i8* %3574, align 1, !tbaa !2448
  %3575 = lshr i64 %3563, 63
  %3576 = trunc i64 %3575 to i8
  %3577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3576, i8* %3577, align 1, !tbaa !2449
  %3578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3578, align 1, !tbaa !2450
  %3579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3579, align 1, !tbaa !2447
  %3580 = load i64, i64* %RAX
  %3581 = load i64, i64* %PC
  %3582 = add i64 %3581, 4
  store i64 %3582, i64* %PC
  %3583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3583, align 1, !tbaa !2432
  %3584 = trunc i64 %3580 to i32
  %3585 = and i32 %3584, 255
  %3586 = call i32 @llvm.ctpop.i32(i32 %3585) #16
  %3587 = trunc i32 %3586 to i8
  %3588 = and i8 %3587, 1
  %3589 = xor i8 %3588, 1
  %3590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3589, i8* %3590, align 1, !tbaa !2446
  %3591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3591, align 1, !tbaa !2447
  %3592 = icmp eq i64 %3580, 0
  %3593 = zext i1 %3592 to i8
  %3594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3593, i8* %3594, align 1, !tbaa !2448
  %3595 = lshr i64 %3580, 63
  %3596 = trunc i64 %3595 to i8
  %3597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3596, i8* %3597, align 1, !tbaa !2449
  %3598 = lshr i64 %3580, 63
  %3599 = xor i64 %3595, %3598
  %3600 = add nuw nsw i64 %3599, %3598
  %3601 = icmp eq i64 %3600, 2
  %3602 = zext i1 %3601 to i8
  %3603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3602, i8* %3603, align 1, !tbaa !2450
  %3604 = load i64, i64* %PC
  %3605 = add i64 %3604, 18
  %3606 = load i64, i64* %PC
  %3607 = add i64 %3606, 6
  %3608 = load i64, i64* %PC
  %3609 = add i64 %3608, 6
  store i64 %3609, i64* %PC
  %3610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3611 = load i8, i8* %3610, align 1, !tbaa !2448
  store i8 %3611, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %3612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3613 = icmp ne i8 %3611, 0
  %3614 = select i1 %3613, i64 %3605, i64 %3607
  store i64 %3614, i64* %3612, align 8, !tbaa !2428
  %3615 = load i8, i8* %BRANCH_TAKEN
  %3616 = icmp eq i8 %3615, 1
  br i1 %3616, label %block_4010bf, label %block_4010b3

block_400c80:                                     ; preds = %block_400c73
  %3617 = sub i64 %4371, 10668
  %3618 = load i64, i64* %PC
  %3619 = add i64 %3618, 7
  store i64 %3619, i64* %PC
  %3620 = inttoptr i64 %3617 to i32*
  %3621 = load i32, i32* %3620
  %3622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3622, align 1, !tbaa !2432
  %3623 = and i32 %3621, 255
  %3624 = call i32 @llvm.ctpop.i32(i32 %3623) #16
  %3625 = trunc i32 %3624 to i8
  %3626 = and i8 %3625, 1
  %3627 = xor i8 %3626, 1
  %3628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3627, i8* %3628, align 1, !tbaa !2446
  %3629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3629, align 1, !tbaa !2447
  %3630 = icmp eq i32 %3621, 0
  %3631 = zext i1 %3630 to i8
  %3632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3631, i8* %3632, align 1, !tbaa !2448
  %3633 = lshr i32 %3621, 31
  %3634 = trunc i32 %3633 to i8
  %3635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3634, i8* %3635, align 1, !tbaa !2449
  %3636 = lshr i32 %3621, 31
  %3637 = xor i32 %3633, %3636
  %3638 = add nuw nsw i32 %3637, %3636
  %3639 = icmp eq i32 %3638, 2
  %3640 = zext i1 %3639 to i8
  %3641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3640, i8* %3641, align 1, !tbaa !2450
  %3642 = load i64, i64* %PC
  %3643 = add i64 %3642, 38
  %3644 = load i64, i64* %PC
  %3645 = add i64 %3644, 6
  %3646 = load i64, i64* %PC
  %3647 = add i64 %3646, 6
  store i64 %3647, i64* %PC
  %3648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3649 = load i8, i8* %3648, align 1, !tbaa !2449
  %3650 = icmp ne i8 %3649, 0
  %3651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3652 = load i8, i8* %3651, align 1, !tbaa !2450
  %3653 = icmp ne i8 %3652, 0
  %3654 = xor i1 %3650, %3653
  %3655 = xor i1 %3654, true
  %3656 = zext i1 %3655 to i8
  store i8 %3656, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %3657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3658 = select i1 %3654, i64 %3645, i64 %3643
  store i64 %3658, i64* %3657, align 8, !tbaa !2428
  %3659 = load i8, i8* %BRANCH_TAKEN
  %3660 = icmp eq i8 %3659, 1
  br i1 %3660, label %block_400cad, label %block_400c8d

block_400df9:                                     ; preds = %block_400d9e
  %3661 = load i64, i64* %RBP
  %3662 = sub i64 %3661, 56
  %3663 = load i64, i64* %PC
  %3664 = add i64 %3663, 8
  store i64 %3664, i64* %PC
  %3665 = inttoptr i64 %3662 to i64*
  store i64 0, i64* %3665
  br label %block_400e01

block_400ad8:                                     ; preds = %block_400acd
  %3666 = load i64, i64* %PC
  %3667 = add i64 %3666, 5
  store i64 %3667, i64* %PC
  store i64 1, i64* %RCX, align 8, !tbaa !2428
  %3668 = load i64, i64* %RBP
  %3669 = sub i64 %3668, 6272
  %3670 = load i64, i64* %PC
  %3671 = add i64 %3670, 7
  store i64 %3671, i64* %PC
  store i64 %3669, i64* %RSI, align 8, !tbaa !2428
  %3672 = load i64, i64* %RBP
  %3673 = sub i64 %3672, 4224
  %3674 = load i64, i64* %PC
  %3675 = add i64 %3674, 7
  store i64 %3675, i64* %PC
  store i64 %3673, i64* %RDI, align 8, !tbaa !2428
  %3676 = load i64, i64* %RBP
  %3677 = sub i64 %3676, 64
  %3678 = load i64, i64* %PC
  %3679 = add i64 %3678, 4
  store i64 %3679, i64* %PC
  %3680 = inttoptr i64 %3677 to i64*
  %3681 = load i64, i64* %3680
  store i64 %3681, i64* %RAX, align 8, !tbaa !2428
  %3682 = load i64, i64* %RAX
  %3683 = load i64, i64* %PC
  %3684 = add i64 %3683, 4
  store i64 %3684, i64* %PC
  %3685 = add i64 -1, %3682
  store i64 %3685, i64* %RAX, align 8, !tbaa !2428
  %3686 = icmp ult i64 %3685, %3682
  %3687 = icmp ult i64 %3685, -1
  %3688 = or i1 %3686, %3687
  %3689 = zext i1 %3688 to i8
  %3690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3689, i8* %3690, align 1, !tbaa !2432
  %3691 = trunc i64 %3685 to i32
  %3692 = and i32 %3691, 255
  %3693 = call i32 @llvm.ctpop.i32(i32 %3692) #16
  %3694 = trunc i32 %3693 to i8
  %3695 = and i8 %3694, 1
  %3696 = xor i8 %3695, 1
  %3697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3696, i8* %3697, align 1, !tbaa !2446
  %3698 = xor i64 -1, %3682
  %3699 = xor i64 %3698, %3685
  %3700 = lshr i64 %3699, 4
  %3701 = trunc i64 %3700 to i8
  %3702 = and i8 %3701, 1
  %3703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3702, i8* %3703, align 1, !tbaa !2447
  %3704 = icmp eq i64 %3685, 0
  %3705 = zext i1 %3704 to i8
  %3706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3705, i8* %3706, align 1, !tbaa !2448
  %3707 = lshr i64 %3685, 63
  %3708 = trunc i64 %3707 to i8
  %3709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3708, i8* %3709, align 1, !tbaa !2449
  %3710 = lshr i64 %3682, 63
  %3711 = xor i64 %3707, %3710
  %3712 = xor i64 %3707, 1
  %3713 = add nuw nsw i64 %3711, %3712
  %3714 = icmp eq i64 %3713, 2
  %3715 = zext i1 %3714 to i8
  %3716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3715, i8* %3716, align 1, !tbaa !2450
  %3717 = load i64, i64* %RBP
  %3718 = sub i64 %3717, 64
  %3719 = load i64, i64* %RAX
  %3720 = load i64, i64* %PC
  %3721 = add i64 %3720, 4
  store i64 %3721, i64* %PC
  %3722 = inttoptr i64 %3718 to i64*
  store i64 %3719, i64* %3722
  %3723 = load i64, i64* %RBP
  %3724 = sub i64 %3723, 6272
  %3725 = load i64, i64* %PC
  %3726 = add i64 %3725, 7
  store i64 %3726, i64* %PC
  %3727 = inttoptr i64 %3724 to i64*
  %3728 = load i64, i64* %3727
  store i64 %3728, i64* %RAX, align 8, !tbaa !2428
  %3729 = load i64, i64* %RBP
  %3730 = sub i64 %3729, 10632
  %3731 = load i64, i64* %RAX
  %3732 = load i64, i64* %PC
  %3733 = add i64 %3732, 7
  store i64 %3733, i64* %PC
  %3734 = inttoptr i64 %3730 to i64*
  store i64 %3731, i64* %3734
  %3735 = load i64, i64* %RBP
  %3736 = sub i64 %3735, 64
  %3737 = load i64, i64* %PC
  %3738 = add i64 %3737, 4
  store i64 %3738, i64* %PC
  %3739 = inttoptr i64 %3736 to i64*
  %3740 = load i64, i64* %3739
  store i64 %3740, i64* %RAX, align 8, !tbaa !2428
  %3741 = load i64, i64* %RBP
  %3742 = load i64, i64* %RAX
  %3743 = mul i64 %3742, 8
  %3744 = add i64 %3741, -6272
  %3745 = add i64 %3744, %3743
  %3746 = load i64, i64* %PC
  %3747 = add i64 %3746, 8
  store i64 %3747, i64* %PC
  %3748 = inttoptr i64 %3745 to i64*
  %3749 = load i64, i64* %3748
  store i64 %3749, i64* %RAX, align 8, !tbaa !2428
  %3750 = load i64, i64* %RBP
  %3751 = sub i64 %3750, 6272
  %3752 = load i64, i64* %RAX
  %3753 = load i64, i64* %PC
  %3754 = add i64 %3753, 7
  store i64 %3754, i64* %PC
  %3755 = inttoptr i64 %3751 to i64*
  store i64 %3752, i64* %3755
  %3756 = load i64, i64* %RBP
  %3757 = sub i64 %3756, 64
  %3758 = load i64, i64* %PC
  %3759 = add i64 %3758, 4
  store i64 %3759, i64* %PC
  %3760 = inttoptr i64 %3757 to i64*
  %3761 = load i64, i64* %3760
  store i64 %3761, i64* %RAX, align 8, !tbaa !2428
  %3762 = load i32, i32* %EAX
  %3763 = zext i32 %3762 to i64
  %3764 = load i64, i64* %PC
  %3765 = add i64 %3764, 2
  store i64 %3765, i64* %PC
  %3766 = and i64 %3763, 4294967295
  store i64 %3766, i64* %RDX, align 8, !tbaa !2428
  %3767 = load i64, i64* %PC
  %3768 = add i64 %3767, 2130
  %3769 = load i64, i64* %PC
  %3770 = add i64 %3769, 5
  %3771 = load i64, i64* %PC
  %3772 = add i64 %3771, 5
  store i64 %3772, i64* %PC
  %3773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3774 = load i64, i64* %3773, align 8, !tbaa !2428
  %3775 = add i64 %3774, -8
  %3776 = inttoptr i64 %3775 to i64*
  store i64 %3770, i64* %3776
  store i64 %3775, i64* %3773, align 8, !tbaa !2428
  %3777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3768, i64* %3777, align 8, !tbaa !2428
  %3778 = load i64, i64* %PC
  %3779 = call %struct.Memory* @sub_401370_heap_adjust_renamed_(%struct.State* %0, i64 %3778, %struct.Memory* %MEMORY.11)
  %3780 = load i64, i64* %PC
  %3781 = add i64 %3780, 5
  store i64 %3781, i64* %PC
  store i64 1, i64* %RCX, align 8, !tbaa !2428
  %3782 = load i64, i64* %RBP
  %3783 = sub i64 %3782, 6272
  %3784 = load i64, i64* %PC
  %3785 = add i64 %3784, 7
  store i64 %3785, i64* %PC
  store i64 %3783, i64* %RSI, align 8, !tbaa !2428
  %3786 = load i64, i64* %RBP
  %3787 = sub i64 %3786, 4224
  %3788 = load i64, i64* %PC
  %3789 = add i64 %3788, 7
  store i64 %3789, i64* %PC
  store i64 %3787, i64* %RDI, align 8, !tbaa !2428
  %3790 = load i64, i64* %PC
  %3791 = add i64 %3790, 7
  store i64 %3791, i64* %PC
  store i64 -256, i64* %RAX, align 8, !tbaa !2428
  %3792 = load i64, i64* %RBP
  %3793 = sub i64 %3792, 6272
  %3794 = load i64, i64* %PC
  %3795 = add i64 %3794, 7
  store i64 %3795, i64* %PC
  %3796 = inttoptr i64 %3793 to i64*
  %3797 = load i64, i64* %3796
  store i64 %3797, i64* %R8, align 8, !tbaa !2428
  %3798 = load i64, i64* %RBP
  %3799 = load i64, i64* %R8
  %3800 = mul i64 %3799, 8
  %3801 = add i64 %3798, -4224
  %3802 = add i64 %3801, %3800
  %3803 = load i64, i64* %PC
  %3804 = add i64 %3803, 8
  store i64 %3804, i64* %PC
  %3805 = inttoptr i64 %3802 to i64*
  %3806 = load i64, i64* %3805
  store i64 %3806, i64* %R8, align 8, !tbaa !2428
  %3807 = load i64, i64* %RBP
  %3808 = sub i64 %3807, 10632
  %3809 = load i64, i64* %PC
  %3810 = add i64 %3809, 7
  store i64 %3810, i64* %PC
  %3811 = inttoptr i64 %3808 to i64*
  %3812 = load i64, i64* %3811
  store i64 %3812, i64* %R9, align 8, !tbaa !2428
  %3813 = load i64, i64* %R8
  %3814 = load i64, i64* %RBP
  %3815 = load i64, i64* %R9
  %3816 = mul i64 %3815, 8
  %3817 = add i64 %3814, -4224
  %3818 = add i64 %3817, %3816
  %3819 = load i64, i64* %PC
  %3820 = add i64 %3819, 8
  store i64 %3820, i64* %PC
  %3821 = inttoptr i64 %3818 to i64*
  %3822 = load i64, i64* %3821
  %3823 = add i64 %3822, %3813
  store i64 %3823, i64* %R8, align 8, !tbaa !2428
  %3824 = icmp ult i64 %3823, %3813
  %3825 = icmp ult i64 %3823, %3822
  %3826 = or i1 %3824, %3825
  %3827 = zext i1 %3826 to i8
  %3828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3827, i8* %3828, align 1, !tbaa !2432
  %3829 = trunc i64 %3823 to i32
  %3830 = and i32 %3829, 255
  %3831 = call i32 @llvm.ctpop.i32(i32 %3830) #16
  %3832 = trunc i32 %3831 to i8
  %3833 = and i8 %3832, 1
  %3834 = xor i8 %3833, 1
  %3835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3834, i8* %3835, align 1, !tbaa !2446
  %3836 = xor i64 %3822, %3813
  %3837 = xor i64 %3836, %3823
  %3838 = lshr i64 %3837, 4
  %3839 = trunc i64 %3838 to i8
  %3840 = and i8 %3839, 1
  %3841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3840, i8* %3841, align 1, !tbaa !2447
  %3842 = icmp eq i64 %3823, 0
  %3843 = zext i1 %3842 to i8
  %3844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3843, i8* %3844, align 1, !tbaa !2448
  %3845 = lshr i64 %3823, 63
  %3846 = trunc i64 %3845 to i8
  %3847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3846, i8* %3847, align 1, !tbaa !2449
  %3848 = lshr i64 %3813, 63
  %3849 = lshr i64 %3822, 63
  %3850 = xor i64 %3845, %3848
  %3851 = xor i64 %3845, %3849
  %3852 = add nuw nsw i64 %3850, %3851
  %3853 = icmp eq i64 %3852, 2
  %3854 = zext i1 %3853 to i8
  %3855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3854, i8* %3855, align 1, !tbaa !2450
  %3856 = load i64, i64* %RBP
  %3857 = sub i64 %3856, 64
  %3858 = load i64, i64* %PC
  %3859 = add i64 %3858, 4
  store i64 %3859, i64* %PC
  %3860 = inttoptr i64 %3857 to i64*
  %3861 = load i64, i64* %3860
  store i64 %3861, i64* %R9, align 8, !tbaa !2428
  %3862 = load i64, i64* %R9
  %3863 = load i64, i64* %PC
  %3864 = add i64 %3863, 7
  store i64 %3864, i64* %PC
  %3865 = add i64 256, %3862
  store i64 %3865, i64* %R9, align 8, !tbaa !2428
  %3866 = icmp ult i64 %3865, %3862
  %3867 = icmp ult i64 %3865, 256
  %3868 = or i1 %3866, %3867
  %3869 = zext i1 %3868 to i8
  %3870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3869, i8* %3870, align 1, !tbaa !2432
  %3871 = trunc i64 %3865 to i32
  %3872 = and i32 %3871, 255
  %3873 = call i32 @llvm.ctpop.i32(i32 %3872) #16
  %3874 = trunc i32 %3873 to i8
  %3875 = and i8 %3874, 1
  %3876 = xor i8 %3875, 1
  %3877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3876, i8* %3877, align 1, !tbaa !2446
  %3878 = xor i64 256, %3862
  %3879 = xor i64 %3878, %3865
  %3880 = lshr i64 %3879, 4
  %3881 = trunc i64 %3880 to i8
  %3882 = and i8 %3881, 1
  %3883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3882, i8* %3883, align 1, !tbaa !2447
  %3884 = icmp eq i64 %3865, 0
  %3885 = zext i1 %3884 to i8
  %3886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3885, i8* %3886, align 1, !tbaa !2448
  %3887 = lshr i64 %3865, 63
  %3888 = trunc i64 %3887 to i8
  %3889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3888, i8* %3889, align 1, !tbaa !2449
  %3890 = lshr i64 %3862, 63
  %3891 = xor i64 %3887, %3890
  %3892 = add nuw nsw i64 %3891, %3887
  %3893 = icmp eq i64 %3892, 2
  %3894 = zext i1 %3893 to i8
  %3895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3894, i8* %3895, align 1, !tbaa !2450
  %3896 = load i64, i64* %RBP
  %3897 = load i64, i64* %R9
  %3898 = mul i64 %3897, 8
  %3899 = add i64 %3896, -4224
  %3900 = add i64 %3899, %3898
  %3901 = load i64, i64* %R8
  %3902 = load i64, i64* %PC
  %3903 = add i64 %3902, 8
  store i64 %3903, i64* %PC
  %3904 = inttoptr i64 %3900 to i64*
  store i64 %3901, i64* %3904
  %3905 = load i64, i64* %RBP
  %3906 = sub i64 %3905, 64
  %3907 = load i64, i64* %PC
  %3908 = add i64 %3907, 4
  store i64 %3908, i64* %PC
  %3909 = inttoptr i64 %3906 to i64*
  %3910 = load i64, i64* %3909
  store i64 %3910, i64* %R8, align 8, !tbaa !2428
  %3911 = load i64, i64* %R8
  %3912 = load i64, i64* %PC
  %3913 = add i64 %3912, 7
  store i64 %3913, i64* %PC
  %3914 = add i64 256, %3911
  store i64 %3914, i64* %R8, align 8, !tbaa !2428
  %3915 = icmp ult i64 %3914, %3911
  %3916 = icmp ult i64 %3914, 256
  %3917 = or i1 %3915, %3916
  %3918 = zext i1 %3917 to i8
  %3919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3918, i8* %3919, align 1, !tbaa !2432
  %3920 = trunc i64 %3914 to i32
  %3921 = and i32 %3920, 255
  %3922 = call i32 @llvm.ctpop.i32(i32 %3921) #16
  %3923 = trunc i32 %3922 to i8
  %3924 = and i8 %3923, 1
  %3925 = xor i8 %3924, 1
  %3926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3925, i8* %3926, align 1, !tbaa !2446
  %3927 = xor i64 256, %3911
  %3928 = xor i64 %3927, %3914
  %3929 = lshr i64 %3928, 4
  %3930 = trunc i64 %3929 to i8
  %3931 = and i8 %3930, 1
  %3932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3931, i8* %3932, align 1, !tbaa !2447
  %3933 = icmp eq i64 %3914, 0
  %3934 = zext i1 %3933 to i8
  %3935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3934, i8* %3935, align 1, !tbaa !2448
  %3936 = lshr i64 %3914, 63
  %3937 = trunc i64 %3936 to i8
  %3938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3937, i8* %3938, align 1, !tbaa !2449
  %3939 = lshr i64 %3911, 63
  %3940 = xor i64 %3936, %3939
  %3941 = add nuw nsw i64 %3940, %3936
  %3942 = icmp eq i64 %3941, 2
  %3943 = zext i1 %3942 to i8
  %3944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3943, i8* %3944, align 1, !tbaa !2450
  %3945 = load i32, i32* %R8D
  %3946 = zext i32 %3945 to i64
  %3947 = load i64, i64* %PC
  %3948 = add i64 %3947, 3
  store i64 %3948, i64* %PC
  %3949 = and i64 %3946, 4294967295
  store i64 %3949, i64* %RDX, align 8, !tbaa !2428
  %3950 = load i64, i64* %RBP
  %3951 = sub i64 %3950, 10632
  %3952 = load i64, i64* %PC
  %3953 = add i64 %3952, 7
  store i64 %3953, i64* %PC
  %3954 = inttoptr i64 %3951 to i64*
  %3955 = load i64, i64* %3954
  store i64 %3955, i64* %R8, align 8, !tbaa !2428
  %3956 = load i64, i64* %RBP
  %3957 = load i64, i64* %R8
  %3958 = mul i64 %3957, 4
  %3959 = add i64 %3956, -8320
  %3960 = add i64 %3959, %3958
  %3961 = load i32, i32* %EDX
  %3962 = zext i32 %3961 to i64
  %3963 = load i64, i64* %PC
  %3964 = add i64 %3963, 8
  store i64 %3964, i64* %PC
  %3965 = inttoptr i64 %3960 to i32*
  store i32 %3961, i32* %3965
  %3966 = load i64, i64* %RAX
  %3967 = load i64, i64* %RBP
  %3968 = sub i64 %3967, 64
  %3969 = load i64, i64* %PC
  %3970 = add i64 %3969, 4
  store i64 %3970, i64* %PC
  %3971 = inttoptr i64 %3968 to i64*
  %3972 = load i64, i64* %3971
  %3973 = sub i64 %3966, %3972
  store i64 %3973, i64* %RAX, align 8, !tbaa !2428
  %3974 = icmp ugt i64 %3972, %3966
  %3975 = zext i1 %3974 to i8
  %3976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3975, i8* %3976, align 1, !tbaa !2432
  %3977 = trunc i64 %3973 to i32
  %3978 = and i32 %3977, 255
  %3979 = call i32 @llvm.ctpop.i32(i32 %3978) #16
  %3980 = trunc i32 %3979 to i8
  %3981 = and i8 %3980, 1
  %3982 = xor i8 %3981, 1
  %3983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3982, i8* %3983, align 1, !tbaa !2446
  %3984 = xor i64 %3972, %3966
  %3985 = xor i64 %3984, %3973
  %3986 = lshr i64 %3985, 4
  %3987 = trunc i64 %3986 to i8
  %3988 = and i8 %3987, 1
  %3989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3988, i8* %3989, align 1, !tbaa !2447
  %3990 = icmp eq i64 %3973, 0
  %3991 = zext i1 %3990 to i8
  %3992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3991, i8* %3992, align 1, !tbaa !2448
  %3993 = lshr i64 %3973, 63
  %3994 = trunc i64 %3993 to i8
  %3995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3994, i8* %3995, align 1, !tbaa !2449
  %3996 = lshr i64 %3966, 63
  %3997 = lshr i64 %3972, 63
  %3998 = xor i64 %3997, %3996
  %3999 = xor i64 %3993, %3996
  %4000 = add nuw nsw i64 %3999, %3998
  %4001 = icmp eq i64 %4000, 2
  %4002 = zext i1 %4001 to i8
  %4003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4002, i8* %4003, align 1, !tbaa !2450
  %4004 = load i32, i32* %EAX
  %4005 = zext i32 %4004 to i64
  %4006 = load i64, i64* %PC
  %4007 = add i64 %4006, 2
  store i64 %4007, i64* %PC
  %4008 = and i64 %4005, 4294967295
  store i64 %4008, i64* %RDX, align 8, !tbaa !2428
  %4009 = load i64, i64* %RBP
  %4010 = sub i64 %4009, 6272
  %4011 = load i64, i64* %PC
  %4012 = add i64 %4011, 7
  store i64 %4012, i64* %PC
  %4013 = inttoptr i64 %4010 to i64*
  %4014 = load i64, i64* %4013
  store i64 %4014, i64* %RAX, align 8, !tbaa !2428
  %4015 = load i64, i64* %RBP
  %4016 = load i64, i64* %RAX
  %4017 = mul i64 %4016, 4
  %4018 = add i64 %4015, -8320
  %4019 = add i64 %4018, %4017
  %4020 = load i32, i32* %EDX
  %4021 = zext i32 %4020 to i64
  %4022 = load i64, i64* %PC
  %4023 = add i64 %4022, 7
  store i64 %4023, i64* %PC
  %4024 = inttoptr i64 %4019 to i32*
  store i32 %4020, i32* %4024
  %4025 = load i64, i64* %RBP
  %4026 = sub i64 %4025, 64
  %4027 = load i64, i64* %PC
  %4028 = add i64 %4027, 4
  store i64 %4028, i64* %PC
  %4029 = inttoptr i64 %4026 to i64*
  %4030 = load i64, i64* %4029
  store i64 %4030, i64* %RAX, align 8, !tbaa !2428
  %4031 = load i64, i64* %RAX
  %4032 = load i64, i64* %PC
  %4033 = add i64 %4032, 6
  store i64 %4033, i64* %PC
  %4034 = add i64 256, %4031
  store i64 %4034, i64* %RAX, align 8, !tbaa !2428
  %4035 = icmp ult i64 %4034, %4031
  %4036 = icmp ult i64 %4034, 256
  %4037 = or i1 %4035, %4036
  %4038 = zext i1 %4037 to i8
  %4039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4038, i8* %4039, align 1, !tbaa !2432
  %4040 = trunc i64 %4034 to i32
  %4041 = and i32 %4040, 255
  %4042 = call i32 @llvm.ctpop.i32(i32 %4041) #16
  %4043 = trunc i32 %4042 to i8
  %4044 = and i8 %4043, 1
  %4045 = xor i8 %4044, 1
  %4046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4045, i8* %4046, align 1, !tbaa !2446
  %4047 = xor i64 256, %4031
  %4048 = xor i64 %4047, %4034
  %4049 = lshr i64 %4048, 4
  %4050 = trunc i64 %4049 to i8
  %4051 = and i8 %4050, 1
  %4052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4051, i8* %4052, align 1, !tbaa !2447
  %4053 = icmp eq i64 %4034, 0
  %4054 = zext i1 %4053 to i8
  %4055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4054, i8* %4055, align 1, !tbaa !2448
  %4056 = lshr i64 %4034, 63
  %4057 = trunc i64 %4056 to i8
  %4058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4057, i8* %4058, align 1, !tbaa !2449
  %4059 = lshr i64 %4031, 63
  %4060 = xor i64 %4056, %4059
  %4061 = add nuw nsw i64 %4060, %4056
  %4062 = icmp eq i64 %4061, 2
  %4063 = zext i1 %4062 to i8
  %4064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4063, i8* %4064, align 1, !tbaa !2450
  %4065 = load i64, i64* %RBP
  %4066 = sub i64 %4065, 6272
  %4067 = load i64, i64* %RAX
  %4068 = load i64, i64* %PC
  %4069 = add i64 %4068, 7
  store i64 %4069, i64* %PC
  %4070 = inttoptr i64 %4066 to i64*
  store i64 %4067, i64* %4070
  %4071 = load i64, i64* %RBP
  %4072 = sub i64 %4071, 64
  %4073 = load i64, i64* %PC
  %4074 = add i64 %4073, 4
  store i64 %4074, i64* %PC
  %4075 = inttoptr i64 %4072 to i64*
  %4076 = load i64, i64* %4075
  store i64 %4076, i64* %RAX, align 8, !tbaa !2428
  %4077 = load i32, i32* %EAX
  %4078 = zext i32 %4077 to i64
  %4079 = load i64, i64* %PC
  %4080 = add i64 %4079, 2
  store i64 %4080, i64* %PC
  %4081 = and i64 %4078, 4294967295
  store i64 %4081, i64* %RDX, align 8, !tbaa !2428
  %4082 = load i64, i64* %PC
  %4083 = add i64 %4082, 1978
  %4084 = load i64, i64* %PC
  %4085 = add i64 %4084, 5
  %4086 = load i64, i64* %PC
  %4087 = add i64 %4086, 5
  store i64 %4087, i64* %PC
  %4088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4089 = load i64, i64* %4088, align 8, !tbaa !2428
  %4090 = add i64 %4089, -8
  %4091 = inttoptr i64 %4090 to i64*
  store i64 %4085, i64* %4091
  store i64 %4090, i64* %4088, align 8, !tbaa !2428
  %4092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4083, i64* %4092, align 8, !tbaa !2428
  %4093 = load i64, i64* %PC
  %4094 = call %struct.Memory* @sub_401370_heap_adjust_renamed_(%struct.State* %0, i64 %4093, %struct.Memory* %3779)
  %4095 = load i64, i64* %PC
  %4096 = sub i64 %4095, 238
  %4097 = load i64, i64* %PC
  %4098 = add i64 %4097, 5
  store i64 %4098, i64* %PC
  %4099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4096, i64* %4099, align 8, !tbaa !2428
  br label %block_400acd

block_400a7f:                                     ; preds = %block_400a77, %block_400a8a
  %MEMORY.16 = phi %struct.Memory* [ %MEMORY.24, %block_400a77 ], [ %3423, %block_400a8a ]
  %4100 = load i64, i64* %RBP
  %4101 = sub i64 %4100, 48
  %4102 = load i64, i64* %PC
  %4103 = add i64 %4102, 5
  store i64 %4103, i64* %PC
  %4104 = inttoptr i64 %4101 to i64*
  %4105 = load i64, i64* %4104
  %4106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4106, align 1, !tbaa !2432
  %4107 = trunc i64 %4105 to i32
  %4108 = and i32 %4107, 255
  %4109 = call i32 @llvm.ctpop.i32(i32 %4108) #16
  %4110 = trunc i32 %4109 to i8
  %4111 = and i8 %4110, 1
  %4112 = xor i8 %4111, 1
  %4113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4112, i8* %4113, align 1, !tbaa !2446
  %4114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4114, align 1, !tbaa !2447
  %4115 = icmp eq i64 %4105, 0
  %4116 = zext i1 %4115 to i8
  %4117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4116, i8* %4117, align 1, !tbaa !2448
  %4118 = lshr i64 %4105, 63
  %4119 = trunc i64 %4118 to i8
  %4120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4119, i8* %4120, align 1, !tbaa !2449
  %4121 = lshr i64 %4105, 63
  %4122 = xor i64 %4118, %4121
  %4123 = add nuw nsw i64 %4122, %4121
  %4124 = icmp eq i64 %4123, 2
  %4125 = zext i1 %4124 to i8
  %4126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4125, i8* %4126, align 1, !tbaa !2450
  %4127 = load i64, i64* %PC
  %4128 = add i64 %4127, 68
  %4129 = load i64, i64* %PC
  %4130 = add i64 %4129, 6
  %4131 = load i64, i64* %PC
  %4132 = add i64 %4131, 6
  store i64 %4132, i64* %PC
  %4133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4134 = load i8, i8* %4133, align 1, !tbaa !2432
  %4135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4136 = load i8, i8* %4135, align 1, !tbaa !2448
  %4137 = or i8 %4136, %4134
  %4138 = icmp ne i8 %4137, 0
  %4139 = zext i1 %4138 to i8
  store i8 %4139, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %4140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4141 = select i1 %4138, i64 %4128, i64 %4130
  store i64 %4141, i64* %4140, align 8, !tbaa !2428
  %4142 = load i8, i8* %BRANCH_TAKEN
  %4143 = icmp eq i8 %4142, 1
  br i1 %4143, label %block_400ac8, label %block_400a8a

block_401214:                                     ; preds = %block_401201
  %4144 = load i64, i64* %PC
  %4145 = add i64 %4144, 5
  %4146 = load i64, i64* %PC
  %4147 = add i64 %4146, 5
  store i64 %4147, i64* %PC
  %4148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4145, i64* %4148, align 8, !tbaa !2428
  %4149 = load i64, i64* %RBP
  %4150 = sub i64 %4149, 56
  %4151 = load i64, i64* %PC
  %4152 = add i64 %4151, 4
  store i64 %4152, i64* %PC
  %4153 = inttoptr i64 %4150 to i64*
  %4154 = load i64, i64* %4153
  store i64 %4154, i64* %RAX, align 8, !tbaa !2428
  %4155 = load i64, i64* %RAX
  %4156 = load i64, i64* %PC
  %4157 = add i64 %4156, 4
  store i64 %4157, i64* %PC
  %4158 = add i64 1, %4155
  store i64 %4158, i64* %RAX, align 8, !tbaa !2428
  %4159 = icmp ult i64 %4158, %4155
  %4160 = icmp ult i64 %4158, 1
  %4161 = or i1 %4159, %4160
  %4162 = zext i1 %4161 to i8
  %4163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4162, i8* %4163, align 1, !tbaa !2432
  %4164 = trunc i64 %4158 to i32
  %4165 = and i32 %4164, 255
  %4166 = call i32 @llvm.ctpop.i32(i32 %4165) #16
  %4167 = trunc i32 %4166 to i8
  %4168 = and i8 %4167, 1
  %4169 = xor i8 %4168, 1
  %4170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4169, i8* %4170, align 1, !tbaa !2446
  %4171 = xor i64 1, %4155
  %4172 = xor i64 %4171, %4158
  %4173 = lshr i64 %4172, 4
  %4174 = trunc i64 %4173 to i8
  %4175 = and i8 %4174, 1
  %4176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4175, i8* %4176, align 1, !tbaa !2447
  %4177 = icmp eq i64 %4158, 0
  %4178 = zext i1 %4177 to i8
  %4179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4178, i8* %4179, align 1, !tbaa !2448
  %4180 = lshr i64 %4158, 63
  %4181 = trunc i64 %4180 to i8
  %4182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4181, i8* %4182, align 1, !tbaa !2449
  %4183 = lshr i64 %4155, 63
  %4184 = xor i64 %4180, %4183
  %4185 = add nuw nsw i64 %4184, %4180
  %4186 = icmp eq i64 %4185, 2
  %4187 = zext i1 %4186 to i8
  %4188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4187, i8* %4188, align 1, !tbaa !2450
  %4189 = load i64, i64* %RBP
  %4190 = sub i64 %4189, 56
  %4191 = load i64, i64* %RAX
  %4192 = load i64, i64* %PC
  %4193 = add i64 %4192, 4
  store i64 %4193, i64* %PC
  %4194 = inttoptr i64 %4190 to i64*
  store i64 %4191, i64* %4194
  %4195 = load i64, i64* %PC
  %4196 = sub i64 %4195, 36
  %4197 = load i64, i64* %PC
  %4198 = add i64 %4197, 5
  store i64 %4198, i64* %PC
  %4199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4196, i64* %4199, align 8, !tbaa !2428
  br label %block_401201

block_400c8d:                                     ; preds = %block_400c80
  %4200 = load i64, i64* %RAX
  %4201 = load i32, i32* %EAX
  %4202 = zext i32 %4201 to i64
  %4203 = load i64, i64* %PC
  %4204 = add i64 %4203, 2
  store i64 %4204, i64* %PC
  %4205 = xor i64 %4202, %4200
  %4206 = trunc i64 %4205 to i32
  %4207 = and i64 %4205, 4294967295
  store i64 %4207, i64* %RAX, align 8, !tbaa !2428
  %4208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4208, align 1, !tbaa !2432
  %4209 = and i32 %4206, 255
  %4210 = call i32 @llvm.ctpop.i32(i32 %4209) #16
  %4211 = trunc i32 %4210 to i8
  %4212 = and i8 %4211, 1
  %4213 = xor i8 %4212, 1
  %4214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4213, i8* %4214, align 1, !tbaa !2446
  %4215 = icmp eq i32 %4206, 0
  %4216 = zext i1 %4215 to i8
  %4217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4216, i8* %4217, align 1, !tbaa !2448
  %4218 = lshr i32 %4206, 31
  %4219 = trunc i32 %4218 to i8
  %4220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4219, i8* %4220, align 1, !tbaa !2449
  %4221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4221, align 1, !tbaa !2450
  %4222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4222, align 1, !tbaa !2447
  %4223 = load i64, i64* %RBP
  %4224 = sub i64 %4223, 56
  %4225 = load i64, i64* %PC
  %4226 = add i64 %4225, 4
  store i64 %4226, i64* %PC
  %4227 = inttoptr i64 %4224 to i64*
  %4228 = load i64, i64* %4227
  store i64 %4228, i64* %RCX, align 8, !tbaa !2428
  %4229 = load i64, i64* %RCX
  %4230 = load i64, i64* %RBP
  %4231 = sub i64 %4230, 10648
  %4232 = load i64, i64* %PC
  %4233 = add i64 %4232, 7
  store i64 %4233, i64* %PC
  %4234 = inttoptr i64 %4231 to i64*
  %4235 = load i64, i64* %4234
  %4236 = add i64 %4235, %4229
  store i64 %4236, i64* %RCX, align 8, !tbaa !2428
  %4237 = icmp ult i64 %4236, %4229
  %4238 = icmp ult i64 %4236, %4235
  %4239 = or i1 %4237, %4238
  %4240 = zext i1 %4239 to i8
  %4241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4240, i8* %4241, align 1, !tbaa !2432
  %4242 = trunc i64 %4236 to i32
  %4243 = and i32 %4242, 255
  %4244 = call i32 @llvm.ctpop.i32(i32 %4243) #16
  %4245 = trunc i32 %4244 to i8
  %4246 = and i8 %4245, 1
  %4247 = xor i8 %4246, 1
  %4248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4247, i8* %4248, align 1, !tbaa !2446
  %4249 = xor i64 %4235, %4229
  %4250 = xor i64 %4249, %4236
  %4251 = lshr i64 %4250, 4
  %4252 = trunc i64 %4251 to i8
  %4253 = and i8 %4252, 1
  %4254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4253, i8* %4254, align 1, !tbaa !2447
  %4255 = icmp eq i64 %4236, 0
  %4256 = zext i1 %4255 to i8
  %4257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4256, i8* %4257, align 1, !tbaa !2448
  %4258 = lshr i64 %4236, 63
  %4259 = trunc i64 %4258 to i8
  %4260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4259, i8* %4260, align 1, !tbaa !2449
  %4261 = lshr i64 %4229, 63
  %4262 = lshr i64 %4235, 63
  %4263 = xor i64 %4258, %4261
  %4264 = xor i64 %4258, %4262
  %4265 = add nuw nsw i64 %4263, %4264
  %4266 = icmp eq i64 %4265, 2
  %4267 = zext i1 %4266 to i8
  %4268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4267, i8* %4268, align 1, !tbaa !2450
  %4269 = load i64, i64* %RBP
  %4270 = sub i64 %4269, 10648
  %4271 = load i64, i64* %RCX
  %4272 = load i64, i64* %PC
  %4273 = add i64 %4272, 7
  store i64 %4273, i64* %PC
  %4274 = inttoptr i64 %4270 to i64*
  store i64 %4271, i64* %4274
  %4275 = load i64, i64* %RAX
  %4276 = load i64, i64* %RBP
  %4277 = sub i64 %4276, 10668
  %4278 = load i64, i64* %PC
  %4279 = add i64 %4278, 6
  store i64 %4279, i64* %PC
  %4280 = trunc i64 %4275 to i32
  %4281 = inttoptr i64 %4277 to i32*
  %4282 = load i32, i32* %4281
  %4283 = sub i32 %4280, %4282
  %4284 = zext i32 %4283 to i64
  store i64 %4284, i64* %RAX, align 8, !tbaa !2428
  %4285 = icmp ult i32 %4280, %4282
  %4286 = zext i1 %4285 to i8
  %4287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4286, i8* %4287, align 1, !tbaa !2432
  %4288 = and i32 %4283, 255
  %4289 = call i32 @llvm.ctpop.i32(i32 %4288) #16
  %4290 = trunc i32 %4289 to i8
  %4291 = and i8 %4290, 1
  %4292 = xor i8 %4291, 1
  %4293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4292, i8* %4293, align 1, !tbaa !2446
  %4294 = xor i32 %4282, %4280
  %4295 = xor i32 %4294, %4283
  %4296 = lshr i32 %4295, 4
  %4297 = trunc i32 %4296 to i8
  %4298 = and i8 %4297, 1
  %4299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4298, i8* %4299, align 1, !tbaa !2447
  %4300 = icmp eq i32 %4283, 0
  %4301 = zext i1 %4300 to i8
  %4302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4301, i8* %4302, align 1, !tbaa !2448
  %4303 = lshr i32 %4283, 31
  %4304 = trunc i32 %4303 to i8
  %4305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4304, i8* %4305, align 1, !tbaa !2449
  %4306 = lshr i32 %4280, 31
  %4307 = lshr i32 %4282, 31
  %4308 = xor i32 %4307, %4306
  %4309 = xor i32 %4303, %4306
  %4310 = add nuw nsw i32 %4309, %4308
  %4311 = icmp eq i32 %4310, 2
  %4312 = zext i1 %4311 to i8
  %4313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4312, i8* %4313, align 1, !tbaa !2450
  %4314 = load i64, i64* %RBP
  %4315 = sub i64 %4314, 10668
  %4316 = load i32, i32* %EAX
  %4317 = zext i32 %4316 to i64
  %4318 = load i64, i64* %PC
  %4319 = add i64 %4318, 6
  store i64 %4319, i64* %PC
  %4320 = inttoptr i64 %4315 to i32*
  store i32 %4316, i32* %4320
  br label %block_400cad

block_400a77:                                     ; preds = %block_400a24
  %4321 = sub i64 %5622, 64
  %4322 = load i64, i64* %PC
  %4323 = add i64 %4322, 4
  store i64 %4323, i64* %PC
  %4324 = inttoptr i64 %4321 to i64*
  %4325 = load i64, i64* %4324
  store i64 %4325, i64* %RAX, align 8, !tbaa !2428
  %4326 = load i64, i64* %RBP
  %4327 = sub i64 %4326, 48
  %4328 = load i64, i64* %RAX
  %4329 = load i64, i64* %PC
  %4330 = add i64 %4329, 4
  store i64 %4330, i64* %PC
  %4331 = inttoptr i64 %4327 to i64*
  store i64 %4328, i64* %4331
  br label %block_400a7f

block_400c73:                                     ; preds = %block_400c44, %block_400cad
  %MEMORY.17 = phi %struct.Memory* [ %MEMORY.0, %block_400c44 ], [ %MEMORY.13, %block_400cad ]
  %4332 = load i64, i64* %RBP
  %4333 = sub i64 %4332, 10668
  %4334 = load i64, i64* %PC
  %4335 = add i64 %4334, 7
  store i64 %4335, i64* %PC
  %4336 = inttoptr i64 %4333 to i32*
  %4337 = load i32, i32* %4336
  %4338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4338, align 1, !tbaa !2432
  %4339 = and i32 %4337, 255
  %4340 = call i32 @llvm.ctpop.i32(i32 %4339) #16
  %4341 = trunc i32 %4340 to i8
  %4342 = and i8 %4341, 1
  %4343 = xor i8 %4342, 1
  %4344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4343, i8* %4344, align 1, !tbaa !2446
  %4345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4345, align 1, !tbaa !2447
  %4346 = icmp eq i32 %4337, 0
  %4347 = zext i1 %4346 to i8
  %4348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4347, i8* %4348, align 1, !tbaa !2448
  %4349 = lshr i32 %4337, 31
  %4350 = trunc i32 %4349 to i8
  %4351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4350, i8* %4351, align 1, !tbaa !2449
  %4352 = lshr i32 %4337, 31
  %4353 = xor i32 %4349, %4352
  %4354 = add nuw nsw i32 %4353, %4352
  %4355 = icmp eq i32 %4354, 2
  %4356 = zext i1 %4355 to i8
  %4357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4356, i8* %4357, align 1, !tbaa !2450
  %4358 = load i64, i64* %PC
  %4359 = add i64 %4358, 100
  %4360 = load i64, i64* %PC
  %4361 = add i64 %4360, 6
  %4362 = load i64, i64* %PC
  %4363 = add i64 %4362, 6
  store i64 %4363, i64* %PC
  %4364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4365 = load i8, i8* %4364, align 1, !tbaa !2448
  store i8 %4365, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %4366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4367 = icmp ne i8 %4365, 0
  %4368 = select i1 %4367, i64 %4359, i64 %4361
  store i64 %4368, i64* %4366, align 8, !tbaa !2428
  %4369 = load i8, i8* %BRANCH_TAKEN
  %4370 = icmp eq i8 %4369, 1
  %4371 = load i64, i64* %RBP
  br i1 %4370, label %block_400cde, label %block_400c80

block_4012dd:                                     ; preds = %block_4012c7
  %4372 = load i64, i64* %RBP
  %4373 = sub i64 %4372, 48
  %4374 = load i64, i64* %PC
  %4375 = add i64 %4374, 4
  store i64 %4375, i64* %PC
  %4376 = inttoptr i64 %4373 to i64*
  %4377 = load i64, i64* %4376
  store i64 %4377, i64* %RAX, align 8, !tbaa !2428
  %4378 = load i64, i64* %RBP
  %4379 = load i64, i64* %RAX
  %4380 = add i64 %4378, -12992
  %4381 = add i64 %4380, %4379
  %4382 = load i64, i64* %PC
  %4383 = add i64 %4382, 7
  store i64 %4383, i64* %PC
  %4384 = inttoptr i64 %4381 to i8*
  %4385 = load i8, i8* %4384
  store i8 %4385, i8* %CL, align 1, !tbaa !2451
  %4386 = load i64, i64* %RBP
  %4387 = sub i64 %4386, 112
  %4388 = load i64, i64* %PC
  %4389 = add i64 %4388, 4
  store i64 %4389, i64* %PC
  %4390 = inttoptr i64 %4387 to i64*
  %4391 = load i64, i64* %4390
  store i64 %4391, i64* %RAX, align 8, !tbaa !2428
  %4392 = load i64, i64* %RAX
  %4393 = load i8, i8* %CL
  %4394 = zext i8 %4393 to i64
  %4395 = load i64, i64* %PC
  %4396 = add i64 %4395, 2
  store i64 %4396, i64* %PC
  %4397 = inttoptr i64 %4392 to i8*
  store i8 %4393, i8* %4397
  %4398 = load i64, i64* %RBP
  %4399 = sub i64 %4398, 112
  %4400 = load i64, i64* %PC
  %4401 = add i64 %4400, 4
  store i64 %4401, i64* %PC
  %4402 = inttoptr i64 %4399 to i64*
  %4403 = load i64, i64* %4402
  store i64 %4403, i64* %RAX, align 8, !tbaa !2428
  %4404 = load i64, i64* %RAX
  %4405 = load i64, i64* %PC
  %4406 = add i64 %4405, 4
  store i64 %4406, i64* %PC
  %4407 = add i64 1, %4404
  store i64 %4407, i64* %RAX, align 8, !tbaa !2428
  %4408 = icmp ult i64 %4407, %4404
  %4409 = icmp ult i64 %4407, 1
  %4410 = or i1 %4408, %4409
  %4411 = zext i1 %4410 to i8
  %4412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4411, i8* %4412, align 1, !tbaa !2432
  %4413 = trunc i64 %4407 to i32
  %4414 = and i32 %4413, 255
  %4415 = call i32 @llvm.ctpop.i32(i32 %4414) #16
  %4416 = trunc i32 %4415 to i8
  %4417 = and i8 %4416, 1
  %4418 = xor i8 %4417, 1
  %4419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4418, i8* %4419, align 1, !tbaa !2446
  %4420 = xor i64 1, %4404
  %4421 = xor i64 %4420, %4407
  %4422 = lshr i64 %4421, 4
  %4423 = trunc i64 %4422 to i8
  %4424 = and i8 %4423, 1
  %4425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4424, i8* %4425, align 1, !tbaa !2447
  %4426 = icmp eq i64 %4407, 0
  %4427 = zext i1 %4426 to i8
  %4428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4427, i8* %4428, align 1, !tbaa !2448
  %4429 = lshr i64 %4407, 63
  %4430 = trunc i64 %4429 to i8
  %4431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4430, i8* %4431, align 1, !tbaa !2449
  %4432 = lshr i64 %4404, 63
  %4433 = xor i64 %4429, %4432
  %4434 = add nuw nsw i64 %4433, %4429
  %4435 = icmp eq i64 %4434, 2
  %4436 = zext i1 %4435 to i8
  %4437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4436, i8* %4437, align 1, !tbaa !2450
  %4438 = load i64, i64* %RBP
  %4439 = sub i64 %4438, 112
  %4440 = load i64, i64* %RAX
  %4441 = load i64, i64* %PC
  %4442 = add i64 %4441, 4
  store i64 %4442, i64* %PC
  %4443 = inttoptr i64 %4439 to i64*
  store i64 %4440, i64* %4443
  %4444 = load i64, i64* %RBP
  %4445 = sub i64 %4444, 64
  %4446 = load i64, i64* %PC
  %4447 = add i64 %4446, 4
  store i64 %4447, i64* %PC
  %4448 = inttoptr i64 %4445 to i64*
  %4449 = load i64, i64* %4448
  store i64 %4449, i64* %RAX, align 8, !tbaa !2428
  %4450 = load i64, i64* %RAX
  %4451 = load i64, i64* %PC
  %4452 = add i64 %4451, 4
  store i64 %4452, i64* %PC
  %4453 = add i64 1, %4450
  store i64 %4453, i64* %RAX, align 8, !tbaa !2428
  %4454 = icmp ult i64 %4453, %4450
  %4455 = icmp ult i64 %4453, 1
  %4456 = or i1 %4454, %4455
  %4457 = zext i1 %4456 to i8
  %4458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4457, i8* %4458, align 1, !tbaa !2432
  %4459 = trunc i64 %4453 to i32
  %4460 = and i32 %4459, 255
  %4461 = call i32 @llvm.ctpop.i32(i32 %4460) #16
  %4462 = trunc i32 %4461 to i8
  %4463 = and i8 %4462, 1
  %4464 = xor i8 %4463, 1
  %4465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4464, i8* %4465, align 1, !tbaa !2446
  %4466 = xor i64 1, %4450
  %4467 = xor i64 %4466, %4453
  %4468 = lshr i64 %4467, 4
  %4469 = trunc i64 %4468 to i8
  %4470 = and i8 %4469, 1
  %4471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4470, i8* %4471, align 1, !tbaa !2447
  %4472 = icmp eq i64 %4453, 0
  %4473 = zext i1 %4472 to i8
  %4474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4473, i8* %4474, align 1, !tbaa !2448
  %4475 = lshr i64 %4453, 63
  %4476 = trunc i64 %4475 to i8
  %4477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4476, i8* %4477, align 1, !tbaa !2449
  %4478 = lshr i64 %4450, 63
  %4479 = xor i64 %4475, %4478
  %4480 = add nuw nsw i64 %4479, %4475
  %4481 = icmp eq i64 %4480, 2
  %4482 = zext i1 %4481 to i8
  %4483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4482, i8* %4483, align 1, !tbaa !2450
  %4484 = load i64, i64* %RBP
  %4485 = sub i64 %4484, 64
  %4486 = load i64, i64* %RAX
  %4487 = load i64, i64* %PC
  %4488 = add i64 %4487, 4
  store i64 %4488, i64* %PC
  %4489 = inttoptr i64 %4485 to i64*
  store i64 %4486, i64* %4489
  %4490 = load i64, i64* %RBP
  %4491 = sub i64 %4490, 80
  %4492 = load i64, i64* %PC
  %4493 = add i64 %4492, 8
  store i64 %4493, i64* %PC
  %4494 = inttoptr i64 %4491 to i64*
  store i64 0, i64* %4494
  %4495 = load i64, i64* %RBP
  %4496 = sub i64 %4495, 56
  %4497 = load i64, i64* %PC
  %4498 = add i64 %4497, 4
  store i64 %4498, i64* %PC
  %4499 = inttoptr i64 %4496 to i64*
  %4500 = load i64, i64* %4499
  store i64 %4500, i64* %RAX, align 8, !tbaa !2428
  %4501 = load i64, i64* %RBP
  %4502 = sub i64 %4501, 48
  %4503 = load i64, i64* %RAX
  %4504 = load i64, i64* %PC
  %4505 = add i64 %4504, 4
  store i64 %4505, i64* %PC
  %4506 = inttoptr i64 %4502 to i64*
  store i64 %4503, i64* %4506
  br label %block_401316

block_40106e:                                     ; preds = %block_4010bf, %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit1
  %MEMORY.18 = phi %struct.Memory* [ %MEMORY.5, %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit1 ], [ %MEMORY.23, %block_4010bf ]
  %4507 = load i64, i64* %RBP
  %4508 = sub i64 %4507, 48
  %4509 = load i64, i64* %PC
  %4510 = add i64 %4509, 4
  store i64 %4510, i64* %PC
  %4511 = inttoptr i64 %4508 to i64*
  %4512 = load i64, i64* %4511
  store i64 %4512, i64* %RAX, align 8, !tbaa !2428
  %4513 = load i64, i64* %RBP
  %4514 = sub i64 %4513, 56
  %4515 = load i64, i64* %PC
  %4516 = add i64 %4515, 4
  store i64 %4516, i64* %PC
  %4517 = inttoptr i64 %4514 to i64*
  %4518 = load i64, i64* %4517
  store i64 %4518, i64* %RCX, align 8, !tbaa !2428
  %4519 = load i64, i64* %RBP
  %4520 = load i64, i64* %RCX
  %4521 = add i64 %4519, -10624
  %4522 = add i64 %4521, %4520
  %4523 = load i64, i64* %PC
  %4524 = add i64 %4523, 8
  store i64 %4524, i64* %PC
  %4525 = inttoptr i64 %4522 to i8*
  %4526 = load i8, i8* %4525
  %4527 = zext i8 %4526 to i64
  store i64 %4527, i64* %RDX, align 8, !tbaa !2428
  %4528 = load i32, i32* %EDX
  %4529 = zext i32 %4528 to i64
  %4530 = load i64, i64* %PC
  %4531 = add i64 %4530, 2
  store i64 %4531, i64* %PC
  %4532 = and i64 %4529, 4294967295
  store i64 %4532, i64* %RCX, align 8, !tbaa !2428
  %4533 = load i64, i64* %RAX
  %4534 = load i64, i64* %RCX
  %4535 = load i64, i64* %PC
  %4536 = add i64 %4535, 3
  store i64 %4536, i64* %PC
  %4537 = sub i64 %4533, %4534
  %4538 = icmp ult i64 %4533, %4534
  %4539 = zext i1 %4538 to i8
  %4540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4539, i8* %4540, align 1, !tbaa !2432
  %4541 = trunc i64 %4537 to i32
  %4542 = and i32 %4541, 255
  %4543 = call i32 @llvm.ctpop.i32(i32 %4542) #16
  %4544 = trunc i32 %4543 to i8
  %4545 = and i8 %4544, 1
  %4546 = xor i8 %4545, 1
  %4547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4546, i8* %4547, align 1, !tbaa !2446
  %4548 = xor i64 %4534, %4533
  %4549 = xor i64 %4548, %4537
  %4550 = lshr i64 %4549, 4
  %4551 = trunc i64 %4550 to i8
  %4552 = and i8 %4551, 1
  %4553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4552, i8* %4553, align 1, !tbaa !2447
  %4554 = icmp eq i64 %4537, 0
  %4555 = zext i1 %4554 to i8
  %4556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4555, i8* %4556, align 1, !tbaa !2448
  %4557 = lshr i64 %4537, 63
  %4558 = trunc i64 %4557 to i8
  %4559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4558, i8* %4559, align 1, !tbaa !2449
  %4560 = lshr i64 %4533, 63
  %4561 = lshr i64 %4534, 63
  %4562 = xor i64 %4561, %4560
  %4563 = xor i64 %4557, %4560
  %4564 = add nuw nsw i64 %4563, %4562
  %4565 = icmp eq i64 %4564, 2
  %4566 = zext i1 %4565 to i8
  %4567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4566, i8* %4567, align 1, !tbaa !2450
  %4568 = load i64, i64* %PC
  %4569 = add i64 %4568, 89
  %4570 = load i64, i64* %PC
  %4571 = add i64 %4570, 6
  %4572 = load i64, i64* %PC
  %4573 = add i64 %4572, 6
  store i64 %4573, i64* %PC
  %4574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4575 = load i8, i8* %4574, align 1, !tbaa !2432
  %4576 = icmp eq i8 %4575, 0
  %4577 = zext i1 %4576 to i8
  store i8 %4577, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %4578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4579 = select i1 %4576, i64 %4569, i64 %4571
  store i64 %4579, i64* %4578, align 8, !tbaa !2428
  %4580 = load i8, i8* %BRANCH_TAKEN
  %4581 = icmp eq i8 %4580, 1
  %4582 = load i64, i64* %RBP
  %4583 = sub i64 %4582, 80
  %4584 = load i64, i64* %PC
  %4585 = add i64 %4584, 4
  store i64 %4585, i64* %PC
  %4586 = inttoptr i64 %4583 to i64*
  %4587 = load i64, i64* %4586
  store i64 %4587, i64* %RAX, align 8, !tbaa !2428
  br i1 %4581, label %block_4010dc, label %block_401089

block_401268:                                     ; preds = %block_40125a
  %4588 = sub i64 %4948, 80
  %4589 = load i64, i64* %PC
  %4590 = add i64 %4589, 4
  store i64 %4590, i64* %PC
  %4591 = inttoptr i64 %4588 to i64*
  %4592 = load i64, i64* %4591
  store i64 %4592, i64* %RAX, align 8, !tbaa !2428
  %4593 = load i64, i64* %RAX
  %4594 = load i64, i64* %PC
  %4595 = add i64 %4594, 4
  store i64 %4595, i64* %PC
  %4596 = shl i64 %4593, 1
  %4597 = icmp slt i64 %4593, 0
  %4598 = icmp slt i64 %4596, 0
  %4599 = xor i1 %4597, %4598
  store i64 %4596, i64* %RAX, align 8, !tbaa !2428
  %4600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4601 = zext i1 %4597 to i8
  store i8 %4601, i8* %4600, align 1, !tbaa !2451
  %4602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4603 = trunc i64 %4596 to i32
  %4604 = and i32 %4603, 254
  %4605 = call i32 @llvm.ctpop.i32(i32 %4604) #16
  %4606 = trunc i32 %4605 to i8
  %4607 = and i8 %4606, 1
  %4608 = xor i8 %4607, 1
  store i8 %4608, i8* %4602, align 1, !tbaa !2451
  %4609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4609, align 1, !tbaa !2451
  %4610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4611 = icmp eq i64 %4596, 0
  %4612 = zext i1 %4611 to i8
  store i8 %4612, i8* %4610, align 1, !tbaa !2451
  %4613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4614 = lshr i64 %4596, 63
  %4615 = trunc i64 %4614 to i8
  store i8 %4615, i8* %4613, align 1, !tbaa !2451
  %4616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4617 = zext i1 %4599 to i8
  store i8 %4617, i8* %4616, align 1, !tbaa !2451
  %4618 = load i64, i64* %RAX
  %4619 = load i64, i64* %PC
  %4620 = add i64 %4619, 4
  store i64 %4620, i64* %PC
  %4621 = add i64 1, %4618
  store i64 %4621, i64* %RAX, align 8, !tbaa !2428
  %4622 = icmp ult i64 %4621, %4618
  %4623 = icmp ult i64 %4621, 1
  %4624 = or i1 %4622, %4623
  %4625 = zext i1 %4624 to i8
  %4626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4625, i8* %4626, align 1, !tbaa !2432
  %4627 = trunc i64 %4621 to i32
  %4628 = and i32 %4627, 255
  %4629 = call i32 @llvm.ctpop.i32(i32 %4628) #16
  %4630 = trunc i32 %4629 to i8
  %4631 = and i8 %4630, 1
  %4632 = xor i8 %4631, 1
  %4633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4632, i8* %4633, align 1, !tbaa !2446
  %4634 = xor i64 1, %4618
  %4635 = xor i64 %4634, %4621
  %4636 = lshr i64 %4635, 4
  %4637 = trunc i64 %4636 to i8
  %4638 = and i8 %4637, 1
  %4639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4638, i8* %4639, align 1, !tbaa !2447
  %4640 = icmp eq i64 %4621, 0
  %4641 = zext i1 %4640 to i8
  %4642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4641, i8* %4642, align 1, !tbaa !2448
  %4643 = lshr i64 %4621, 63
  %4644 = trunc i64 %4643 to i8
  %4645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4644, i8* %4645, align 1, !tbaa !2449
  %4646 = lshr i64 %4618, 63
  %4647 = xor i64 %4643, %4646
  %4648 = add nuw nsw i64 %4647, %4643
  %4649 = icmp eq i64 %4648, 2
  %4650 = zext i1 %4649 to i8
  %4651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4650, i8* %4651, align 1, !tbaa !2450
  %4652 = load i64, i64* %RBP
  %4653 = sub i64 %4652, 80
  %4654 = load i64, i64* %RAX
  %4655 = load i64, i64* %PC
  %4656 = add i64 %4655, 4
  store i64 %4656, i64* %PC
  %4657 = inttoptr i64 %4653 to i64*
  store i64 %4654, i64* %4657
  %4658 = load i64, i64* %RBP
  %4659 = sub i64 %4658, 104
  %4660 = load i64, i64* %PC
  %4661 = add i64 %4660, 4
  store i64 %4661, i64* %PC
  %4662 = inttoptr i64 %4659 to i64*
  %4663 = load i64, i64* %4662
  store i64 %4663, i64* %RAX, align 8, !tbaa !2428
  %4664 = load i64, i64* %RAX
  %4665 = load i64, i64* %PC
  %4666 = add i64 %4665, 3
  store i64 %4666, i64* %PC
  %4667 = inttoptr i64 %4664 to i8*
  %4668 = load i8, i8* %4667
  %4669 = zext i8 %4668 to i64
  store i64 %4669, i64* %RCX, align 8, !tbaa !2428
  %4670 = load i32, i32* %ECX
  %4671 = zext i32 %4670 to i64
  %4672 = load i64, i64* %PC
  %4673 = add i64 %4672, 2
  store i64 %4673, i64* %PC
  %4674 = and i64 %4671, 4294967295
  store i64 %4674, i64* %RAX, align 8, !tbaa !2428
  %4675 = load i64, i64* %RAX
  %4676 = load i64, i64* %RBP
  %4677 = sub i64 %4676, 72
  %4678 = load i64, i64* %PC
  %4679 = add i64 %4678, 4
  store i64 %4679, i64* %PC
  %4680 = inttoptr i64 %4677 to i64*
  %4681 = load i64, i64* %4680
  %4682 = and i64 %4681, %4675
  store i64 %4682, i64* %RAX, align 8, !tbaa !2428
  %4683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4683, align 1, !tbaa !2432
  %4684 = trunc i64 %4682 to i32
  %4685 = and i32 %4684, 255
  %4686 = call i32 @llvm.ctpop.i32(i32 %4685) #16
  %4687 = trunc i32 %4686 to i8
  %4688 = and i8 %4687, 1
  %4689 = xor i8 %4688, 1
  %4690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4689, i8* %4690, align 1, !tbaa !2446
  %4691 = icmp eq i64 %4682, 0
  %4692 = zext i1 %4691 to i8
  %4693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4692, i8* %4693, align 1, !tbaa !2448
  %4694 = lshr i64 %4682, 63
  %4695 = trunc i64 %4694 to i8
  %4696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4695, i8* %4696, align 1, !tbaa !2449
  %4697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4697, align 1, !tbaa !2450
  %4698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4698, align 1, !tbaa !2447
  %4699 = load i64, i64* %RAX
  %4700 = load i64, i64* %PC
  %4701 = add i64 %4700, 4
  store i64 %4701, i64* %PC
  %4702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4702, align 1, !tbaa !2432
  %4703 = trunc i64 %4699 to i32
  %4704 = and i32 %4703, 255
  %4705 = call i32 @llvm.ctpop.i32(i32 %4704) #16
  %4706 = trunc i32 %4705 to i8
  %4707 = and i8 %4706, 1
  %4708 = xor i8 %4707, 1
  %4709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4708, i8* %4709, align 1, !tbaa !2446
  %4710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4710, align 1, !tbaa !2447
  %4711 = icmp eq i64 %4699, 0
  %4712 = zext i1 %4711 to i8
  %4713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4712, i8* %4713, align 1, !tbaa !2448
  %4714 = lshr i64 %4699, 63
  %4715 = trunc i64 %4714 to i8
  %4716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4715, i8* %4716, align 1, !tbaa !2449
  %4717 = lshr i64 %4699, 63
  %4718 = xor i64 %4714, %4717
  %4719 = add nuw nsw i64 %4718, %4717
  %4720 = icmp eq i64 %4719, 2
  %4721 = zext i1 %4720 to i8
  %4722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4721, i8* %4722, align 1, !tbaa !2450
  %4723 = load i64, i64* %PC
  %4724 = add i64 %4723, 18
  %4725 = load i64, i64* %PC
  %4726 = add i64 %4725, 6
  %4727 = load i64, i64* %PC
  %4728 = add i64 %4727, 6
  store i64 %4728, i64* %PC
  %4729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4730 = load i8, i8* %4729, align 1, !tbaa !2448
  store i8 %4730, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %4731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4732 = icmp ne i8 %4730, 0
  %4733 = select i1 %4732, i64 %4724, i64 %4726
  store i64 %4733, i64* %4731, align 8, !tbaa !2428
  %4734 = load i8, i8* %BRANCH_TAKEN
  %4735 = icmp eq i8 %4734, 1
  br i1 %4735, label %block_40129b, label %block_40128f

block_400a61:                                     ; preds = %block_400a32, %block_400a45
  %MEMORY.19 = phi %struct.Memory* [ %MEMORY.24, %block_400a32 ], [ %MEMORY.24, %block_400a45 ]
  %4736 = load i64, i64* %PC
  %4737 = add i64 %4736, 5
  %4738 = load i64, i64* %PC
  %4739 = add i64 %4738, 5
  store i64 %4739, i64* %PC
  %4740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4737, i64* %4740, align 8, !tbaa !2428
  %4741 = load i64, i64* %RBP
  %4742 = sub i64 %4741, 48
  %4743 = load i64, i64* %PC
  %4744 = add i64 %4743, 4
  store i64 %4744, i64* %PC
  %4745 = inttoptr i64 %4742 to i64*
  %4746 = load i64, i64* %4745
  store i64 %4746, i64* %RAX, align 8, !tbaa !2428
  %4747 = load i64, i64* %RAX
  %4748 = load i64, i64* %PC
  %4749 = add i64 %4748, 4
  store i64 %4749, i64* %PC
  %4750 = add i64 1, %4747
  store i64 %4750, i64* %RAX, align 8, !tbaa !2428
  %4751 = icmp ult i64 %4750, %4747
  %4752 = icmp ult i64 %4750, 1
  %4753 = or i1 %4751, %4752
  %4754 = zext i1 %4753 to i8
  %4755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4754, i8* %4755, align 1, !tbaa !2432
  %4756 = trunc i64 %4750 to i32
  %4757 = and i32 %4756, 255
  %4758 = call i32 @llvm.ctpop.i32(i32 %4757) #16
  %4759 = trunc i32 %4758 to i8
  %4760 = and i8 %4759, 1
  %4761 = xor i8 %4760, 1
  %4762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4761, i8* %4762, align 1, !tbaa !2446
  %4763 = xor i64 1, %4747
  %4764 = xor i64 %4763, %4750
  %4765 = lshr i64 %4764, 4
  %4766 = trunc i64 %4765 to i8
  %4767 = and i8 %4766, 1
  %4768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4767, i8* %4768, align 1, !tbaa !2447
  %4769 = icmp eq i64 %4750, 0
  %4770 = zext i1 %4769 to i8
  %4771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4770, i8* %4771, align 1, !tbaa !2448
  %4772 = lshr i64 %4750, 63
  %4773 = trunc i64 %4772 to i8
  %4774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4773, i8* %4774, align 1, !tbaa !2449
  %4775 = lshr i64 %4747, 63
  %4776 = xor i64 %4772, %4775
  %4777 = add nuw nsw i64 %4776, %4772
  %4778 = icmp eq i64 %4777, 2
  %4779 = zext i1 %4778 to i8
  %4780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4779, i8* %4780, align 1, !tbaa !2450
  %4781 = load i64, i64* %RBP
  %4782 = sub i64 %4781, 48
  %4783 = load i64, i64* %RAX
  %4784 = load i64, i64* %PC
  %4785 = add i64 %4784, 4
  store i64 %4785, i64* %PC
  %4786 = inttoptr i64 %4782 to i64*
  store i64 %4783, i64* %4786
  %4787 = load i64, i64* %PC
  %4788 = sub i64 %4787, 78
  %4789 = load i64, i64* %PC
  %4790 = add i64 %4789, 5
  store i64 %4790, i64* %PC
  %4791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4788, i64* %4791, align 8, !tbaa !2428
  br label %block_400a24

block_400e5b:                                     ; preds = %block_400e3b
  %4792 = sub i64 %5267, 10688
  %4793 = load i64, i64* %PC
  %4794 = add i64 %4793, 7
  store i64 %4794, i64* %PC
  %4795 = inttoptr i64 %4792 to i32*
  %4796 = load i32, i32* %4795
  %4797 = sub i32 %4796, 7
  %4798 = icmp ult i32 %4796, 7
  %4799 = zext i1 %4798 to i8
  %4800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4799, i8* %4800, align 1, !tbaa !2432
  %4801 = and i32 %4797, 255
  %4802 = call i32 @llvm.ctpop.i32(i32 %4801) #16
  %4803 = trunc i32 %4802 to i8
  %4804 = and i8 %4803, 1
  %4805 = xor i8 %4804, 1
  %4806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4805, i8* %4806, align 1, !tbaa !2446
  %4807 = xor i32 %4796, 7
  %4808 = xor i32 %4807, %4797
  %4809 = lshr i32 %4808, 4
  %4810 = trunc i32 %4809 to i8
  %4811 = and i8 %4810, 1
  %4812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4811, i8* %4812, align 1, !tbaa !2447
  %4813 = icmp eq i32 %4797, 0
  %4814 = zext i1 %4813 to i8
  %4815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4814, i8* %4815, align 1, !tbaa !2448
  %4816 = lshr i32 %4797, 31
  %4817 = trunc i32 %4816 to i8
  %4818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4817, i8* %4818, align 1, !tbaa !2449
  %4819 = lshr i32 %4796, 31
  %4820 = xor i32 %4816, %4819
  %4821 = add nuw nsw i32 %4820, %4819
  %4822 = icmp eq i32 %4821, 2
  %4823 = zext i1 %4822 to i8
  %4824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4823, i8* %4824, align 1, !tbaa !2450
  %4825 = load i64, i64* %PC
  %4826 = add i64 %4825, 124
  %4827 = load i64, i64* %PC
  %4828 = add i64 %4827, 6
  %4829 = load i64, i64* %PC
  %4830 = add i64 %4829, 6
  store i64 %4830, i64* %PC
  %4831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4832 = load i8, i8* %4831, align 1, !tbaa !2448
  %4833 = icmp eq i8 %4832, 0
  %4834 = zext i1 %4833 to i8
  store i8 %4834, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %4835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4836 = select i1 %4833, i64 %4826, i64 %4828
  store i64 %4836, i64* %4835, align 8, !tbaa !2428
  %4837 = load i8, i8* %BRANCH_TAKEN
  %4838 = icmp eq i8 %4837, 1
  %4839 = load i64, i64* %RBP
  br i1 %4838, label %block_400ede, label %block_400e68

block_401201:                                     ; preds = %block_401214, %block_4011f9
  %MEMORY.20 = phi %struct.Memory* [ %MEMORY.12, %block_4011f9 ], [ %MEMORY.20, %block_401214 ]
  %4840 = load i64, i64* %RBP
  %4841 = sub i64 %4840, 56
  %4842 = load i64, i64* %PC
  %4843 = add i64 %4842, 4
  store i64 %4843, i64* %PC
  %4844 = inttoptr i64 %4841 to i64*
  %4845 = load i64, i64* %4844
  store i64 %4845, i64* %RAX, align 8, !tbaa !2428
  %4846 = load i64, i64* %RBP
  %4847 = load i64, i64* %RAX
  %4848 = mul i64 %4847, 8
  %4849 = add i64 %4846, -12736
  %4850 = add i64 %4849, %4848
  %4851 = load i64, i64* %PC
  %4852 = add i64 %4851, 9
  store i64 %4852, i64* %PC
  %4853 = inttoptr i64 %4850 to i64*
  %4854 = load i64, i64* %4853
  %4855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4855, align 1, !tbaa !2432
  %4856 = trunc i64 %4854 to i32
  %4857 = and i32 %4856, 255
  %4858 = call i32 @llvm.ctpop.i32(i32 %4857) #16
  %4859 = trunc i32 %4858 to i8
  %4860 = and i8 %4859, 1
  %4861 = xor i8 %4860, 1
  %4862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4861, i8* %4862, align 1, !tbaa !2446
  %4863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4863, align 1, !tbaa !2447
  %4864 = icmp eq i64 %4854, 0
  %4865 = zext i1 %4864 to i8
  %4866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4865, i8* %4866, align 1, !tbaa !2448
  %4867 = lshr i64 %4854, 63
  %4868 = trunc i64 %4867 to i8
  %4869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4868, i8* %4869, align 1, !tbaa !2449
  %4870 = lshr i64 %4854, 63
  %4871 = xor i64 %4867, %4870
  %4872 = add nuw nsw i64 %4871, %4870
  %4873 = icmp eq i64 %4872, 2
  %4874 = zext i1 %4873 to i8
  %4875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4874, i8* %4875, align 1, !tbaa !2450
  %4876 = load i64, i64* %PC
  %4877 = add i64 %4876, 28
  %4878 = load i64, i64* %PC
  %4879 = add i64 %4878, 6
  %4880 = load i64, i64* %PC
  %4881 = add i64 %4880, 6
  store i64 %4881, i64* %PC
  %4882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4883 = load i8, i8* %4882, align 1, !tbaa !2448
  %4884 = icmp eq i8 %4883, 0
  %4885 = zext i1 %4884 to i8
  store i8 %4885, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %4886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4887 = select i1 %4884, i64 %4877, i64 %4879
  store i64 %4887, i64* %4886, align 8, !tbaa !2428
  %4888 = load i8, i8* %BRANCH_TAKEN
  %4889 = icmp eq i8 %4888, 1
  br i1 %4889, label %block_40122a, label %block_401214

block_40125a:                                     ; preds = %block_401346, %block_40122a
  %MEMORY.21 = phi %struct.Memory* [ %MEMORY.20, %block_40122a ], [ %MEMORY.25, %block_401346 ]
  %4890 = load i64, i64* %RBP
  %4891 = sub i64 %4890, 64
  %4892 = load i64, i64* %PC
  %4893 = add i64 %4892, 4
  store i64 %4893, i64* %PC
  %4894 = inttoptr i64 %4891 to i64*
  %4895 = load i64, i64* %4894
  store i64 %4895, i64* %RAX, align 8, !tbaa !2428
  %4896 = load i64, i64* %RAX
  %4897 = load i64, i64* %RBP
  %4898 = sub i64 %4897, 40
  %4899 = load i64, i64* %PC
  %4900 = add i64 %4899, 4
  store i64 %4900, i64* %PC
  %4901 = inttoptr i64 %4898 to i64*
  %4902 = load i64, i64* %4901
  %4903 = sub i64 %4896, %4902
  %4904 = icmp ugt i64 %4902, %4896
  %4905 = zext i1 %4904 to i8
  %4906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4905, i8* %4906, align 1, !tbaa !2432
  %4907 = trunc i64 %4903 to i32
  %4908 = and i32 %4907, 255
  %4909 = call i32 @llvm.ctpop.i32(i32 %4908) #16
  %4910 = trunc i32 %4909 to i8
  %4911 = and i8 %4910, 1
  %4912 = xor i8 %4911, 1
  %4913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4912, i8* %4913, align 1, !tbaa !2446
  %4914 = xor i64 %4902, %4896
  %4915 = xor i64 %4914, %4903
  %4916 = lshr i64 %4915, 4
  %4917 = trunc i64 %4916 to i8
  %4918 = and i8 %4917, 1
  %4919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4918, i8* %4919, align 1, !tbaa !2447
  %4920 = icmp eq i64 %4903, 0
  %4921 = zext i1 %4920 to i8
  %4922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4921, i8* %4922, align 1, !tbaa !2448
  %4923 = lshr i64 %4903, 63
  %4924 = trunc i64 %4923 to i8
  %4925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4924, i8* %4925, align 1, !tbaa !2449
  %4926 = lshr i64 %4896, 63
  %4927 = lshr i64 %4902, 63
  %4928 = xor i64 %4927, %4926
  %4929 = xor i64 %4923, %4926
  %4930 = add nuw nsw i64 %4929, %4928
  %4931 = icmp eq i64 %4930, 2
  %4932 = zext i1 %4931 to i8
  %4933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4932, i8* %4933, align 1, !tbaa !2450
  %4934 = load i64, i64* %PC
  %4935 = add i64 %4934, 233
  %4936 = load i64, i64* %PC
  %4937 = add i64 %4936, 6
  %4938 = load i64, i64* %PC
  %4939 = add i64 %4938, 6
  store i64 %4939, i64* %PC
  %4940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4941 = load i8, i8* %4940, align 1, !tbaa !2432
  %4942 = icmp eq i8 %4941, 0
  %4943 = zext i1 %4942 to i8
  store i8 %4943, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %4944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4945 = select i1 %4942, i64 %4935, i64 %4937
  store i64 %4945, i64* %4944, align 8, !tbaa !2428
  %4946 = load i8, i8* %BRANCH_TAKEN
  %4947 = icmp eq i8 %4946, 1
  %4948 = load i64, i64* %RBP
  br i1 %4947, label %block_40134b, label %block_401268

block_400a45:                                     ; preds = %block_400a32
  %4949 = load i64, i64* %RBP
  %4950 = sub i64 %4949, 48
  %4951 = load i64, i64* %PC
  %4952 = add i64 %4951, 4
  store i64 %4952, i64* %PC
  %4953 = inttoptr i64 %4950 to i64*
  %4954 = load i64, i64* %4953
  store i64 %4954, i64* %RAX, align 8, !tbaa !2428
  %4955 = load i64, i64* %RBP
  %4956 = sub i64 %4955, 64
  %4957 = load i64, i64* %PC
  %4958 = add i64 %4957, 4
  store i64 %4958, i64* %PC
  %4959 = inttoptr i64 %4956 to i64*
  %4960 = load i64, i64* %4959
  store i64 %4960, i64* %RCX, align 8, !tbaa !2428
  %4961 = load i64, i64* %RBP
  %4962 = load i64, i64* %RCX
  %4963 = mul i64 %4962, 8
  %4964 = add i64 %4961, -6272
  %4965 = add i64 %4964, %4963
  %4966 = load i64, i64* %RAX
  %4967 = load i64, i64* %PC
  %4968 = add i64 %4967, 8
  store i64 %4968, i64* %PC
  %4969 = inttoptr i64 %4965 to i64*
  store i64 %4966, i64* %4969
  %4970 = load i64, i64* %RBP
  %4971 = sub i64 %4970, 64
  %4972 = load i64, i64* %PC
  %4973 = add i64 %4972, 4
  store i64 %4973, i64* %PC
  %4974 = inttoptr i64 %4971 to i64*
  %4975 = load i64, i64* %4974
  store i64 %4975, i64* %RAX, align 8, !tbaa !2428
  %4976 = load i64, i64* %RAX
  %4977 = load i64, i64* %PC
  %4978 = add i64 %4977, 4
  store i64 %4978, i64* %PC
  %4979 = add i64 1, %4976
  store i64 %4979, i64* %RAX, align 8, !tbaa !2428
  %4980 = icmp ult i64 %4979, %4976
  %4981 = icmp ult i64 %4979, 1
  %4982 = or i1 %4980, %4981
  %4983 = zext i1 %4982 to i8
  %4984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4983, i8* %4984, align 1, !tbaa !2432
  %4985 = trunc i64 %4979 to i32
  %4986 = and i32 %4985, 255
  %4987 = call i32 @llvm.ctpop.i32(i32 %4986) #16
  %4988 = trunc i32 %4987 to i8
  %4989 = and i8 %4988, 1
  %4990 = xor i8 %4989, 1
  %4991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4990, i8* %4991, align 1, !tbaa !2446
  %4992 = xor i64 1, %4976
  %4993 = xor i64 %4992, %4979
  %4994 = lshr i64 %4993, 4
  %4995 = trunc i64 %4994 to i8
  %4996 = and i8 %4995, 1
  %4997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4996, i8* %4997, align 1, !tbaa !2447
  %4998 = icmp eq i64 %4979, 0
  %4999 = zext i1 %4998 to i8
  %5000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4999, i8* %5000, align 1, !tbaa !2448
  %5001 = lshr i64 %4979, 63
  %5002 = trunc i64 %5001 to i8
  %5003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5002, i8* %5003, align 1, !tbaa !2449
  %5004 = lshr i64 %4976, 63
  %5005 = xor i64 %5001, %5004
  %5006 = add nuw nsw i64 %5005, %5001
  %5007 = icmp eq i64 %5006, 2
  %5008 = zext i1 %5007 to i8
  %5009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5008, i8* %5009, align 1, !tbaa !2450
  %5010 = load i64, i64* %RBP
  %5011 = sub i64 %5010, 64
  %5012 = load i64, i64* %RAX
  %5013 = load i64, i64* %PC
  %5014 = add i64 %5013, 4
  store i64 %5014, i64* %PC
  %5015 = inttoptr i64 %5011 to i64*
  store i64 %5012, i64* %5015
  br label %block_400a61

block_400dd0:                                     ; preds = %block_400d9e
  %5016 = load i64, i64* %PC
  %5017 = add i64 %5016, 10
  store i64 %5017, i64* %PC
  store i64 add (i64 ptrtoint (%seg_401620__rodata_type* @seg_401620__rodata to i64), i64 63), i64* %RSI, align 8, !tbaa !2428
  %5018 = load i64, i64* %PC
  %5019 = add i64 %5018, 8
  store i64 %5019, i64* %PC
  %5020 = load i64, i64* @stderr
  store i64 %5020, i64* %RDI, align 8, !tbaa !2428
  %5021 = load i64, i64* %PC
  %5022 = add i64 %5021, 2
  store i64 %5022, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %5023 = load i64, i64* %PC
  %5024 = sub i64 %5023, 2036
  %5025 = load i64, i64* %PC
  %5026 = add i64 %5025, 5
  %5027 = load i64, i64* %PC
  %5028 = add i64 %5027, 5
  store i64 %5028, i64* %PC
  %5029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5030 = load i64, i64* %5029, align 8, !tbaa !2428
  %5031 = add i64 %5030, -8
  %5032 = inttoptr i64 %5031 to i64*
  store i64 %5026, i64* %5032
  store i64 %5031, i64* %5029, align 8, !tbaa !2428
  %5033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5024, i64* %5033, align 8, !tbaa !2428
  %5034 = load i64, i64* %PC
  %5035 = call %struct.Memory* @ext_6020d0_fprintf(%struct.State* %0, i64 %5034, %struct.Memory* %MEMORY.0)
  %5036 = load i64, i64* %PC
  %5037 = add i64 %5036, 5
  store i64 %5037, i64* %PC
  store i64 1, i64* %RDI, align 8, !tbaa !2428
  %5038 = load i64, i64* %RBP
  %5039 = sub i64 %5038, 13084
  %5040 = load i32, i32* %EAX
  %5041 = zext i32 %5040 to i64
  %5042 = load i64, i64* %PC
  %5043 = add i64 %5042, 6
  store i64 %5043, i64* %PC
  %5044 = inttoptr i64 %5039 to i32*
  store i32 %5040, i32* %5044
  %5045 = load i64, i64* %PC
  %5046 = sub i64 %5045, 2004
  %5047 = load i64, i64* %PC
  %5048 = add i64 %5047, 5
  %5049 = load i64, i64* %PC
  %5050 = add i64 %5049, 5
  store i64 %5050, i64* %PC
  %5051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5052 = load i64, i64* %5051, align 8, !tbaa !2428
  %5053 = add i64 %5052, -8
  %5054 = inttoptr i64 %5053 to i64*
  store i64 %5048, i64* %5054
  store i64 %5053, i64* %5051, align 8, !tbaa !2428
  %5055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5046, i64* %5055, align 8, !tbaa !2428
  %5056 = load i64, i64* %PC
  %5057 = call %struct.Memory* @ext_400620_exit(%struct.State* %0, i64 %5056, %struct.Memory* %5035)
  %5058 = load i64, i64* %PC
  %5059 = tail call %struct.Memory* @__remill_error(%struct.State* %0, i64 %5058, %struct.Memory* %5057)
  ret %struct.Memory* %5059

block_40103f:                                     ; preds = %block_400ff7
  %5060 = load i64, i64* %PC
  %5061 = add i64 %5060, 5
  store i64 %5061, i64* %PC
  store i64 1, i64* %RAX, align 8, !tbaa !2428
  %5062 = load i64, i64* %RBP
  %5063 = sub i64 %5062, 80
  %5064 = load i64, i64* %PC
  %5065 = add i64 %5064, 8
  store i64 %5065, i64* %PC
  %5066 = inttoptr i64 %5063 to i64*
  store i64 0, i64* %5066
  %5067 = load i64, i64* %RBP
  %5068 = sub i64 %5067, 56
  %5069 = load i64, i64* %PC
  %5070 = add i64 %5069, 4
  store i64 %5070, i64* %PC
  %5071 = inttoptr i64 %5068 to i64*
  %5072 = load i64, i64* %5071
  store i64 %5072, i64* %RCX, align 8, !tbaa !2428
  %5073 = load i64, i64* %RBP
  %5074 = load i64, i64* %RCX
  %5075 = add i64 %5073, -10624
  %5076 = add i64 %5075, %5074
  %5077 = load i64, i64* %PC
  %5078 = add i64 %5077, 8
  store i64 %5078, i64* %PC
  %5079 = inttoptr i64 %5076 to i8*
  %5080 = load i8, i8* %5079
  %5081 = zext i8 %5080 to i64
  store i64 %5081, i64* %RDX, align 8, !tbaa !2428
  %5082 = load i64, i64* %RDX
  %5083 = load i64, i64* %PC
  %5084 = add i64 %5083, 3
  store i64 %5084, i64* %PC
  %5085 = trunc i64 %5082 to i32
  %5086 = sub i32 %5085, 1
  %5087 = zext i32 %5086 to i64
  store i64 %5087, i64* %RDX, align 8, !tbaa !2428
  %5088 = icmp ult i32 %5085, 1
  %5089 = zext i1 %5088 to i8
  %5090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5089, i8* %5090, align 1, !tbaa !2432
  %5091 = and i32 %5086, 255
  %5092 = call i32 @llvm.ctpop.i32(i32 %5091) #16
  %5093 = trunc i32 %5092 to i8
  %5094 = and i8 %5093, 1
  %5095 = xor i8 %5094, 1
  %5096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5095, i8* %5096, align 1, !tbaa !2446
  %5097 = xor i64 1, %5082
  %5098 = trunc i64 %5097 to i32
  %5099 = xor i32 %5098, %5086
  %5100 = lshr i32 %5099, 4
  %5101 = trunc i32 %5100 to i8
  %5102 = and i8 %5101, 1
  %5103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5102, i8* %5103, align 1, !tbaa !2447
  %5104 = icmp eq i32 %5086, 0
  %5105 = zext i1 %5104 to i8
  %5106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5105, i8* %5106, align 1, !tbaa !2448
  %5107 = lshr i32 %5086, 31
  %5108 = trunc i32 %5107 to i8
  %5109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5108, i8* %5109, align 1, !tbaa !2449
  %5110 = lshr i32 %5085, 31
  %5111 = xor i32 %5107, %5110
  %5112 = add nuw nsw i32 %5111, %5110
  %5113 = icmp eq i32 %5112, 2
  %5114 = zext i1 %5113 to i8
  %5115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5114, i8* %5115, align 1, !tbaa !2450
  %5116 = load i32, i32* %EDX
  %5117 = zext i32 %5116 to i64
  %5118 = load i64, i64* %PC
  %5119 = add i64 %5118, 2
  store i64 %5119, i64* %PC
  %5120 = and i64 %5117, 4294967295
  store i64 %5120, i64* %RCX, align 8, !tbaa !2428
  %5121 = load i64, i64* %RAX
  %5122 = load i8, i8* %CL
  %5123 = zext i8 %5122 to i64
  %5124 = load i64, i64* %PC
  %5125 = add i64 %5124, 2
  store i64 %5125, i64* %PC
  %5126 = trunc i64 %5123 to i5
  switch i5 %5126, label %5133 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit1
    i5 1, label %5127
  ]

; <label>:5127:                                   ; preds = %block_40103f
  %5128 = trunc i64 %5121 to i32
  %5129 = shl i32 %5128, 1
  %5130 = icmp slt i32 %5128, 0
  %5131 = icmp slt i32 %5129, 0
  %5132 = xor i1 %5130, %5131
  br label %5142

; <label>:5133:                                   ; preds = %block_40103f
  %5134 = and i64 %5123, 31
  %5135 = add nuw nsw i64 %5134, 4294967295
  %5136 = and i64 %5121, 4294967295
  %5137 = and i64 %5135, 4294967295
  %5138 = shl i64 %5136, %5137
  %5139 = trunc i64 %5138 to i32
  %5140 = icmp slt i32 %5139, 0
  %5141 = shl i32 %5139, 1
  br label %5142

; <label>:5142:                                   ; preds = %5133, %5127
  %5143 = phi i1 [ %5130, %5127 ], [ %5140, %5133 ]
  %5144 = phi i1 [ %5132, %5127 ], [ false, %5133 ]
  %5145 = phi i32 [ %5129, %5127 ], [ %5141, %5133 ]
  %5146 = zext i32 %5145 to i64
  store i64 %5146, i64* %RAX, align 8, !tbaa !2428
  %5147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5148 = zext i1 %5143 to i8
  store i8 %5148, i8* %5147, align 1, !tbaa !2451
  %5149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5150 = and i32 %5145, 254
  %5151 = call i32 @llvm.ctpop.i32(i32 %5150) #16
  %5152 = trunc i32 %5151 to i8
  %5153 = and i8 %5152, 1
  %5154 = xor i8 %5153, 1
  store i8 %5154, i8* %5149, align 1, !tbaa !2451
  %5155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5155, align 1, !tbaa !2451
  %5156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5157 = icmp eq i32 %5145, 0
  %5158 = zext i1 %5157 to i8
  store i8 %5158, i8* %5156, align 1, !tbaa !2451
  %5159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5160 = lshr i32 %5145, 31
  %5161 = trunc i32 %5160 to i8
  store i8 %5161, i8* %5159, align 1, !tbaa !2451
  %5162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5163 = zext i1 %5144 to i8
  store i8 %5163, i8* %5162, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit1

_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit1: ; preds = %block_40103f, %5142
  %5164 = load i32, i32* %EAX
  %5165 = zext i32 %5164 to i64
  %5166 = load i64, i64* %PC
  %5167 = add i64 %5166, 3
  store i64 %5167, i64* %PC
  %5168 = shl i64 %5165, 32
  %5169 = ashr exact i64 %5168, 32
  store i64 %5169, i64* %RSI, align 8, !tbaa !2428
  %5170 = load i64, i64* %RBP
  %5171 = sub i64 %5170, 72
  %5172 = load i64, i64* %RSI
  %5173 = load i64, i64* %PC
  %5174 = add i64 %5173, 4
  store i64 %5174, i64* %PC
  %5175 = inttoptr i64 %5171 to i64*
  store i64 %5172, i64* %5175
  %5176 = load i64, i64* %RBP
  %5177 = sub i64 %5176, 48
  %5178 = load i64, i64* %PC
  %5179 = add i64 %5178, 8
  store i64 %5179, i64* %PC
  %5180 = inttoptr i64 %5177 to i64*
  store i64 0, i64* %5180
  br label %block_40106e

block_400e3b:                                     ; preds = %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit, %block_400f30
  %MEMORY.22 = phi %struct.Memory* [ %MEMORY.27, %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit ], [ %MEMORY.6, %block_400f30 ]
  %5181 = load i64, i64* %RBP
  %5182 = sub i64 %5181, 48
  %5183 = load i64, i64* %PC
  %5184 = add i64 %5183, 4
  store i64 %5184, i64* %PC
  %5185 = inttoptr i64 %5182 to i64*
  %5186 = load i64, i64* %5185
  store i64 %5186, i64* %RAX, align 8, !tbaa !2428
  %5187 = load i64, i64* %RBP
  %5188 = sub i64 %5187, 112
  %5189 = load i64, i64* %PC
  %5190 = add i64 %5189, 4
  store i64 %5190, i64* %PC
  %5191 = inttoptr i64 %5188 to i64*
  %5192 = load i64, i64* %5191
  store i64 %5192, i64* %RCX, align 8, !tbaa !2428
  %5193 = load i64, i64* %RCX
  %5194 = load i64, i64* %PC
  %5195 = add i64 %5194, 3
  store i64 %5195, i64* %PC
  %5196 = inttoptr i64 %5193 to i8*
  %5197 = load i8, i8* %5196
  %5198 = zext i8 %5197 to i64
  store i64 %5198, i64* %RDX, align 8, !tbaa !2428
  %5199 = load i32, i32* %EDX
  %5200 = zext i32 %5199 to i64
  %5201 = load i64, i64* %PC
  %5202 = add i64 %5201, 2
  store i64 %5202, i64* %PC
  %5203 = and i64 %5200, 4294967295
  store i64 %5203, i64* %RCX, align 8, !tbaa !2428
  %5204 = load i64, i64* %RBP
  %5205 = load i64, i64* %RCX
  %5206 = add i64 %5204, -10624
  %5207 = add i64 %5206, %5205
  %5208 = load i64, i64* %PC
  %5209 = add i64 %5208, 8
  store i64 %5209, i64* %PC
  %5210 = inttoptr i64 %5207 to i8*
  %5211 = load i8, i8* %5210
  %5212 = zext i8 %5211 to i64
  store i64 %5212, i64* %RDX, align 8, !tbaa !2428
  %5213 = load i32, i32* %EDX
  %5214 = zext i32 %5213 to i64
  %5215 = load i64, i64* %PC
  %5216 = add i64 %5215, 2
  store i64 %5216, i64* %PC
  %5217 = and i64 %5214, 4294967295
  store i64 %5217, i64* %RCX, align 8, !tbaa !2428
  %5218 = load i64, i64* %RAX
  %5219 = load i64, i64* %RCX
  %5220 = load i64, i64* %PC
  %5221 = add i64 %5220, 3
  store i64 %5221, i64* %PC
  %5222 = sub i64 %5218, %5219
  %5223 = icmp ult i64 %5218, %5219
  %5224 = zext i1 %5223 to i8
  %5225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5224, i8* %5225, align 1, !tbaa !2432
  %5226 = trunc i64 %5222 to i32
  %5227 = and i32 %5226, 255
  %5228 = call i32 @llvm.ctpop.i32(i32 %5227) #16
  %5229 = trunc i32 %5228 to i8
  %5230 = and i8 %5229, 1
  %5231 = xor i8 %5230, 1
  %5232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5231, i8* %5232, align 1, !tbaa !2446
  %5233 = xor i64 %5219, %5218
  %5234 = xor i64 %5233, %5222
  %5235 = lshr i64 %5234, 4
  %5236 = trunc i64 %5235 to i8
  %5237 = and i8 %5236, 1
  %5238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5237, i8* %5238, align 1, !tbaa !2447
  %5239 = icmp eq i64 %5222, 0
  %5240 = zext i1 %5239 to i8
  %5241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5240, i8* %5241, align 1, !tbaa !2448
  %5242 = lshr i64 %5222, 63
  %5243 = trunc i64 %5242 to i8
  %5244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5243, i8* %5244, align 1, !tbaa !2449
  %5245 = lshr i64 %5218, 63
  %5246 = lshr i64 %5219, 63
  %5247 = xor i64 %5246, %5245
  %5248 = xor i64 %5242, %5245
  %5249 = add nuw nsw i64 %5248, %5247
  %5250 = icmp eq i64 %5249, 2
  %5251 = zext i1 %5250 to i8
  %5252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5251, i8* %5252, align 1, !tbaa !2450
  %5253 = load i64, i64* %PC
  %5254 = add i64 %5253, 248
  %5255 = load i64, i64* %PC
  %5256 = add i64 %5255, 6
  %5257 = load i64, i64* %PC
  %5258 = add i64 %5257, 6
  store i64 %5258, i64* %PC
  %5259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5260 = load i8, i8* %5259, align 1, !tbaa !2432
  %5261 = icmp eq i8 %5260, 0
  %5262 = zext i1 %5261 to i8
  store i8 %5262, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %5263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5264 = select i1 %5261, i64 %5254, i64 %5256
  store i64 %5264, i64* %5263, align 8, !tbaa !2428
  %5265 = load i8, i8* %BRANCH_TAKEN
  %5266 = icmp eq i8 %5265, 1
  %5267 = load i64, i64* %RBP
  br i1 %5266, label %block_400f4d, label %block_400e5b

block_400a32:                                     ; preds = %block_400a24
  %5268 = sub i64 %5622, 48
  %5269 = load i64, i64* %PC
  %5270 = add i64 %5269, 4
  store i64 %5270, i64* %PC
  %5271 = inttoptr i64 %5268 to i64*
  %5272 = load i64, i64* %5271
  store i64 %5272, i64* %RAX, align 8, !tbaa !2428
  %5273 = load i64, i64* %RBP
  %5274 = load i64, i64* %RAX
  %5275 = mul i64 %5274, 8
  %5276 = add i64 %5273, -4224
  %5277 = add i64 %5276, %5275
  %5278 = load i64, i64* %PC
  %5279 = add i64 %5278, 9
  store i64 %5279, i64* %PC
  %5280 = inttoptr i64 %5277 to i64*
  %5281 = load i64, i64* %5280
  %5282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5282, align 1, !tbaa !2432
  %5283 = trunc i64 %5281 to i32
  %5284 = and i32 %5283, 255
  %5285 = call i32 @llvm.ctpop.i32(i32 %5284) #16
  %5286 = trunc i32 %5285 to i8
  %5287 = and i8 %5286, 1
  %5288 = xor i8 %5287, 1
  %5289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5288, i8* %5289, align 1, !tbaa !2446
  %5290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5290, align 1, !tbaa !2447
  %5291 = icmp eq i64 %5281, 0
  %5292 = zext i1 %5291 to i8
  %5293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5292, i8* %5293, align 1, !tbaa !2448
  %5294 = lshr i64 %5281, 63
  %5295 = trunc i64 %5294 to i8
  %5296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5295, i8* %5296, align 1, !tbaa !2449
  %5297 = lshr i64 %5281, 63
  %5298 = xor i64 %5294, %5297
  %5299 = add nuw nsw i64 %5298, %5297
  %5300 = icmp eq i64 %5299, 2
  %5301 = zext i1 %5300 to i8
  %5302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5301, i8* %5302, align 1, !tbaa !2450
  %5303 = load i64, i64* %PC
  %5304 = add i64 %5303, 34
  %5305 = load i64, i64* %PC
  %5306 = add i64 %5305, 6
  %5307 = load i64, i64* %PC
  %5308 = add i64 %5307, 6
  store i64 %5308, i64* %PC
  %5309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5310 = load i8, i8* %5309, align 1, !tbaa !2448
  store i8 %5310, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %5311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5312 = icmp ne i8 %5310, 0
  %5313 = select i1 %5312, i64 %5304, i64 %5306
  store i64 %5313, i64* %5311, align 8, !tbaa !2428
  %5314 = load i8, i8* %BRANCH_TAKEN
  %5315 = icmp eq i8 %5314, 1
  br i1 %5315, label %block_400a61, label %block_400a45

block_40122a:                                     ; preds = %block_401201
  %5316 = load i64, i64* %RBP
  %5317 = sub i64 %5316, 80
  %5318 = load i64, i64* %PC
  %5319 = add i64 %5318, 8
  store i64 %5319, i64* %PC
  %5320 = inttoptr i64 %5317 to i64*
  store i64 0, i64* %5320
  %5321 = load i64, i64* %RBP
  %5322 = sub i64 %5321, 56
  %5323 = load i64, i64* %PC
  %5324 = add i64 %5323, 4
  store i64 %5324, i64* %PC
  %5325 = inttoptr i64 %5322 to i64*
  %5326 = load i64, i64* %5325
  store i64 %5326, i64* %RAX, align 8, !tbaa !2428
  %5327 = load i64, i64* %RBP
  %5328 = sub i64 %5327, 48
  %5329 = load i64, i64* %RAX
  %5330 = load i64, i64* %PC
  %5331 = add i64 %5330, 4
  store i64 %5331, i64* %PC
  %5332 = inttoptr i64 %5328 to i64*
  store i64 %5329, i64* %5332
  %5333 = load i64, i64* %RBP
  %5334 = sub i64 %5333, 72
  %5335 = load i64, i64* %PC
  %5336 = add i64 %5335, 8
  store i64 %5336, i64* %PC
  %5337 = inttoptr i64 %5334 to i64*
  store i64 128, i64* %5337
  %5338 = load i64, i64* %RBP
  %5339 = sub i64 %5338, 64
  %5340 = load i64, i64* %PC
  %5341 = add i64 %5340, 8
  store i64 %5341, i64* %PC
  %5342 = inttoptr i64 %5339 to i64*
  store i64 0, i64* %5342
  %5343 = load i64, i64* %RBP
  %5344 = sub i64 %5343, 120
  %5345 = load i64, i64* %PC
  %5346 = add i64 %5345, 4
  store i64 %5346, i64* %PC
  %5347 = inttoptr i64 %5344 to i64*
  %5348 = load i64, i64* %5347
  store i64 %5348, i64* %RAX, align 8, !tbaa !2428
  %5349 = load i64, i64* %RBP
  %5350 = sub i64 %5349, 104
  %5351 = load i64, i64* %RAX
  %5352 = load i64, i64* %PC
  %5353 = add i64 %5352, 4
  store i64 %5353, i64* %PC
  %5354 = inttoptr i64 %5350 to i64*
  store i64 %5351, i64* %5354
  %5355 = load i64, i64* %RBP
  %5356 = sub i64 %5355, 32
  %5357 = load i64, i64* %PC
  %5358 = add i64 %5357, 4
  store i64 %5358, i64* %PC
  %5359 = inttoptr i64 %5356 to i64*
  %5360 = load i64, i64* %5359
  store i64 %5360, i64* %RAX, align 8, !tbaa !2428
  %5361 = load i64, i64* %RBP
  %5362 = sub i64 %5361, 112
  %5363 = load i64, i64* %RAX
  %5364 = load i64, i64* %PC
  %5365 = add i64 %5364, 4
  store i64 %5365, i64* %PC
  %5366 = inttoptr i64 %5362 to i64*
  store i64 %5363, i64* %5366
  br label %block_40125a

block_400d9e:                                     ; preds = %block_400d67
  %5367 = load i64, i64* %RBP
  %5368 = sub i64 %5367, 10680
  %5369 = load i64, i64* %PC
  %5370 = add i64 %5369, 11
  store i64 %5370, i64* %PC
  %5371 = inttoptr i64 %5368 to i64*
  store i64 0, i64* %5371
  %5372 = load i64, i64* %RBP
  %5373 = sub i64 %5372, 10681
  %5374 = load i64, i64* %PC
  %5375 = add i64 %5374, 7
  store i64 %5375, i64* %PC
  %5376 = inttoptr i64 %5373 to i8*
  store i8 0, i8* %5376
  %5377 = load i64, i64* %RBP
  %5378 = sub i64 %5377, 10688
  %5379 = load i64, i64* %PC
  %5380 = add i64 %5379, 10
  store i64 %5380, i64* %PC
  %5381 = inttoptr i64 %5378 to i32*
  store i32 -1, i32* %5381
  %5382 = load i64, i64* %RBP
  %5383 = sub i64 %5382, 32
  %5384 = load i64, i64* %PC
  %5385 = add i64 %5384, 4
  store i64 %5385, i64* %PC
  %5386 = inttoptr i64 %5383 to i64*
  %5387 = load i64, i64* %5386
  store i64 %5387, i64* %RAX, align 8, !tbaa !2428
  %5388 = load i64, i64* %RBP
  %5389 = sub i64 %5388, 112
  %5390 = load i64, i64* %RAX
  %5391 = load i64, i64* %PC
  %5392 = add i64 %5391, 4
  store i64 %5392, i64* %PC
  %5393 = inttoptr i64 %5389 to i64*
  store i64 %5390, i64* %5393
  %5394 = load i64, i64* %RBP
  %5395 = sub i64 %5394, 10656
  %5396 = load i64, i64* %PC
  %5397 = add i64 %5396, 8
  store i64 %5397, i64* %PC
  %5398 = inttoptr i64 %5395 to i64*
  %5399 = load i64, i64* %5398
  %5400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5400, align 1, !tbaa !2432
  %5401 = trunc i64 %5399 to i32
  %5402 = and i32 %5401, 255
  %5403 = call i32 @llvm.ctpop.i32(i32 %5402) #16
  %5404 = trunc i32 %5403 to i8
  %5405 = and i8 %5404, 1
  %5406 = xor i8 %5405, 1
  %5407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5406, i8* %5407, align 1, !tbaa !2446
  %5408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5408, align 1, !tbaa !2447
  %5409 = icmp eq i64 %5399, 0
  %5410 = zext i1 %5409 to i8
  %5411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5410, i8* %5411, align 1, !tbaa !2448
  %5412 = lshr i64 %5399, 63
  %5413 = trunc i64 %5412 to i8
  %5414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5413, i8* %5414, align 1, !tbaa !2449
  %5415 = lshr i64 %5399, 63
  %5416 = xor i64 %5412, %5415
  %5417 = add nuw nsw i64 %5416, %5415
  %5418 = icmp eq i64 %5417, 2
  %5419 = zext i1 %5418 to i8
  %5420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5419, i8* %5420, align 1, !tbaa !2450
  %5421 = load i64, i64* %PC
  %5422 = add i64 %5421, 47
  %5423 = load i64, i64* %PC
  %5424 = add i64 %5423, 6
  %5425 = load i64, i64* %PC
  %5426 = add i64 %5425, 6
  store i64 %5426, i64* %PC
  %5427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5428 = load i8, i8* %5427, align 1, !tbaa !2448
  %5429 = icmp eq i8 %5428, 0
  %5430 = zext i1 %5429 to i8
  store i8 %5430, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %5431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5432 = select i1 %5429, i64 %5422, i64 %5424
  store i64 %5432, i64* %5431, align 8, !tbaa !2428
  %5433 = load i8, i8* %BRANCH_TAKEN
  %5434 = icmp eq i8 %5433, 1
  br i1 %5434, label %block_400df9, label %block_400dd0

block_401118:                                     ; preds = %block_40110a
  %5435 = sub i64 %2840, 48
  %5436 = load i64, i64* %PC
  %5437 = add i64 %5436, 4
  store i64 %5437, i64* %PC
  %5438 = inttoptr i64 %5435 to i64*
  %5439 = load i64, i64* %5438
  store i64 %5439, i64* %RAX, align 8, !tbaa !2428
  %5440 = load i64, i64* %RBP
  %5441 = load i64, i64* %RAX
  %5442 = mul i64 %5441, 8
  %5443 = add i64 %5440, -12736
  %5444 = add i64 %5443, %5442
  %5445 = load i64, i64* %PC
  %5446 = add i64 %5445, 8
  store i64 %5446, i64* %PC
  %5447 = inttoptr i64 %5444 to i64*
  %5448 = load i64, i64* %5447
  store i64 %5448, i64* %RAX, align 8, !tbaa !2428
  %5449 = load i64, i64* %RBP
  %5450 = sub i64 %5449, 88
  %5451 = load i64, i64* %RAX
  %5452 = load i64, i64* %PC
  %5453 = add i64 %5452, 4
  store i64 %5453, i64* %PC
  %5454 = inttoptr i64 %5450 to i64*
  store i64 %5451, i64* %5454
  %5455 = load i64, i64* %RBP
  %5456 = sub i64 %5455, 48
  %5457 = load i64, i64* %PC
  %5458 = add i64 %5457, 4
  store i64 %5458, i64* %PC
  %5459 = inttoptr i64 %5456 to i64*
  %5460 = load i64, i64* %5459
  store i64 %5460, i64* %RAX, align 8, !tbaa !2428
  %5461 = load i64, i64* %RBP
  %5462 = load i64, i64* %RAX
  %5463 = add i64 %5461, -12992
  %5464 = add i64 %5463, %5462
  %5465 = load i64, i64* %PC
  %5466 = add i64 %5465, 7
  store i64 %5466, i64* %PC
  %5467 = inttoptr i64 %5464 to i8*
  %5468 = load i8, i8* %5467
  store i8 %5468, i8* %CL, align 1, !tbaa !2451
  %5469 = load i64, i64* %RBP
  %5470 = sub i64 %5469, 89
  %5471 = load i8, i8* %CL
  %5472 = zext i8 %5471 to i64
  %5473 = load i64, i64* %PC
  %5474 = add i64 %5473, 3
  store i64 %5474, i64* %PC
  %5475 = inttoptr i64 %5470 to i8*
  store i8 %5471, i8* %5475
  %5476 = load i64, i64* %RBP
  %5477 = sub i64 %5476, 48
  %5478 = load i64, i64* %PC
  %5479 = add i64 %5478, 4
  store i64 %5479, i64* %PC
  %5480 = inttoptr i64 %5477 to i64*
  %5481 = load i64, i64* %5480
  store i64 %5481, i64* %RAX, align 8, !tbaa !2428
  %5482 = load i64, i64* %RBP
  %5483 = sub i64 %5482, 56
  %5484 = load i64, i64* %RAX
  %5485 = load i64, i64* %PC
  %5486 = add i64 %5485, 4
  store i64 %5486, i64* %PC
  %5487 = inttoptr i64 %5483 to i64*
  store i64 %5484, i64* %5487
  br label %block_40113e

block_4010bf:                                     ; preds = %block_401089, %block_4010b3
  %MEMORY.23 = phi %struct.Memory* [ %MEMORY.18, %block_401089 ], [ %MEMORY.18, %block_4010b3 ]
  %5488 = load i64, i64* %RBP
  %5489 = sub i64 %5488, 72
  %5490 = load i64, i64* %PC
  %5491 = add i64 %5490, 4
  store i64 %5491, i64* %PC
  %5492 = inttoptr i64 %5489 to i64*
  %5493 = load i64, i64* %5492
  store i64 %5493, i64* %RAX, align 8, !tbaa !2428
  %5494 = load i64, i64* %RAX
  %5495 = load i64, i64* %PC
  %5496 = add i64 %5495, 4
  store i64 %5496, i64* %PC
  %5497 = lshr i64 %5494, 63
  %5498 = trunc i64 %5497 to i8
  %5499 = trunc i64 %5494 to i8
  %5500 = and i8 %5499, 1
  %5501 = lshr i64 %5494, 1
  store i64 %5501, i64* %RAX, align 8, !tbaa !2428
  %5502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5500, i8* %5502, align 1, !tbaa !2451
  %5503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5504 = trunc i64 %5501 to i32
  %5505 = and i32 %5504, 255
  %5506 = call i32 @llvm.ctpop.i32(i32 %5505) #16
  %5507 = trunc i32 %5506 to i8
  %5508 = and i8 %5507, 1
  %5509 = xor i8 %5508, 1
  store i8 %5509, i8* %5503, align 1, !tbaa !2451
  %5510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5510, align 1, !tbaa !2451
  %5511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5512 = icmp eq i64 %5501, 0
  %5513 = zext i1 %5512 to i8
  store i8 %5513, i8* %5511, align 1, !tbaa !2451
  %5514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %5514, align 1, !tbaa !2451
  %5515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5498, i8* %5515, align 1, !tbaa !2451
  %5516 = load i64, i64* %RBP
  %5517 = sub i64 %5516, 72
  %5518 = load i64, i64* %RAX
  %5519 = load i64, i64* %PC
  %5520 = add i64 %5519, 4
  store i64 %5520, i64* %PC
  %5521 = inttoptr i64 %5517 to i64*
  store i64 %5518, i64* %5521
  %5522 = load i64, i64* %RBP
  %5523 = sub i64 %5522, 48
  %5524 = load i64, i64* %PC
  %5525 = add i64 %5524, 4
  store i64 %5525, i64* %PC
  %5526 = inttoptr i64 %5523 to i64*
  %5527 = load i64, i64* %5526
  store i64 %5527, i64* %RAX, align 8, !tbaa !2428
  %5528 = load i64, i64* %RAX
  %5529 = load i64, i64* %PC
  %5530 = add i64 %5529, 4
  store i64 %5530, i64* %PC
  %5531 = add i64 1, %5528
  store i64 %5531, i64* %RAX, align 8, !tbaa !2428
  %5532 = icmp ult i64 %5531, %5528
  %5533 = icmp ult i64 %5531, 1
  %5534 = or i1 %5532, %5533
  %5535 = zext i1 %5534 to i8
  %5536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5535, i8* %5536, align 1, !tbaa !2432
  %5537 = trunc i64 %5531 to i32
  %5538 = and i32 %5537, 255
  %5539 = call i32 @llvm.ctpop.i32(i32 %5538) #16
  %5540 = trunc i32 %5539 to i8
  %5541 = and i8 %5540, 1
  %5542 = xor i8 %5541, 1
  %5543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5542, i8* %5543, align 1, !tbaa !2446
  %5544 = xor i64 1, %5528
  %5545 = xor i64 %5544, %5531
  %5546 = lshr i64 %5545, 4
  %5547 = trunc i64 %5546 to i8
  %5548 = and i8 %5547, 1
  %5549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5548, i8* %5549, align 1, !tbaa !2447
  %5550 = icmp eq i64 %5531, 0
  %5551 = zext i1 %5550 to i8
  %5552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5551, i8* %5552, align 1, !tbaa !2448
  %5553 = lshr i64 %5531, 63
  %5554 = trunc i64 %5553 to i8
  %5555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5554, i8* %5555, align 1, !tbaa !2449
  %5556 = lshr i64 %5528, 63
  %5557 = xor i64 %5553, %5556
  %5558 = add nuw nsw i64 %5557, %5553
  %5559 = icmp eq i64 %5558, 2
  %5560 = zext i1 %5559 to i8
  %5561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5560, i8* %5561, align 1, !tbaa !2450
  %5562 = load i64, i64* %RBP
  %5563 = sub i64 %5562, 48
  %5564 = load i64, i64* %RAX
  %5565 = load i64, i64* %PC
  %5566 = add i64 %5565, 4
  store i64 %5566, i64* %PC
  %5567 = inttoptr i64 %5563 to i64*
  store i64 %5564, i64* %5567
  %5568 = load i64, i64* %PC
  %5569 = sub i64 %5568, 105
  %5570 = load i64, i64* %PC
  %5571 = add i64 %5570, 5
  store i64 %5571, i64* %PC
  %5572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5569, i64* %5572, align 8, !tbaa !2428
  br label %block_40106e

block_400a24:                                     ; preds = %block_400a14, %block_400a61
  %MEMORY.24 = phi %struct.Memory* [ %MEMORY.3, %block_400a14 ], [ %MEMORY.19, %block_400a61 ]
  %5573 = load i64, i64* %RBP
  %5574 = sub i64 %5573, 48
  %5575 = load i64, i64* %PC
  %5576 = add i64 %5575, 8
  store i64 %5576, i64* %PC
  %5577 = inttoptr i64 %5574 to i64*
  %5578 = load i64, i64* %5577
  %5579 = sub i64 %5578, 256
  %5580 = icmp ult i64 %5578, 256
  %5581 = zext i1 %5580 to i8
  %5582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5581, i8* %5582, align 1, !tbaa !2432
  %5583 = trunc i64 %5579 to i32
  %5584 = and i32 %5583, 255
  %5585 = call i32 @llvm.ctpop.i32(i32 %5584) #16
  %5586 = trunc i32 %5585 to i8
  %5587 = and i8 %5586, 1
  %5588 = xor i8 %5587, 1
  %5589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5588, i8* %5589, align 1, !tbaa !2446
  %5590 = xor i64 %5578, 256
  %5591 = xor i64 %5590, %5579
  %5592 = lshr i64 %5591, 4
  %5593 = trunc i64 %5592 to i8
  %5594 = and i8 %5593, 1
  %5595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5594, i8* %5595, align 1, !tbaa !2447
  %5596 = icmp eq i64 %5579, 0
  %5597 = zext i1 %5596 to i8
  %5598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5597, i8* %5598, align 1, !tbaa !2448
  %5599 = lshr i64 %5579, 63
  %5600 = trunc i64 %5599 to i8
  %5601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5600, i8* %5601, align 1, !tbaa !2449
  %5602 = lshr i64 %5578, 63
  %5603 = xor i64 %5599, %5602
  %5604 = add nuw nsw i64 %5603, %5602
  %5605 = icmp eq i64 %5604, 2
  %5606 = zext i1 %5605 to i8
  %5607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5606, i8* %5607, align 1, !tbaa !2450
  %5608 = load i64, i64* %PC
  %5609 = add i64 %5608, 75
  %5610 = load i64, i64* %PC
  %5611 = add i64 %5610, 6
  %5612 = load i64, i64* %PC
  %5613 = add i64 %5612, 6
  store i64 %5613, i64* %PC
  %5614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5615 = load i8, i8* %5614, align 1, !tbaa !2432
  %5616 = icmp eq i8 %5615, 0
  %5617 = zext i1 %5616 to i8
  store i8 %5617, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %5618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5619 = select i1 %5616, i64 %5609, i64 %5611
  store i64 %5619, i64* %5618, align 8, !tbaa !2428
  %5620 = load i8, i8* %BRANCH_TAKEN
  %5621 = icmp eq i8 %5620, 1
  %5622 = load i64, i64* %RBP
  br i1 %5621, label %block_400a77, label %block_400a32

block_400c1d:                                     ; preds = %block_400c07
  %5623 = sub i64 %6103, 10640
  %5624 = load i64, i64* %PC
  %5625 = add i64 %5624, 7
  store i64 %5625, i64* %PC
  %5626 = inttoptr i64 %5623 to i64*
  %5627 = load i64, i64* %5626
  store i64 %5627, i64* %RAX, align 8, !tbaa !2428
  %5628 = load i64, i64* %RBP
  %5629 = load i64, i64* %RAX
  %5630 = mul i64 %5629, 8
  %5631 = add i64 %5628, -10368
  %5632 = add i64 %5631, %5630
  %5633 = load i64, i64* %PC
  %5634 = add i64 %5633, 12
  store i64 %5634, i64* %PC
  %5635 = inttoptr i64 %5632 to i64*
  store i64 0, i64* %5635
  %5636 = load i64, i64* %RBP
  %5637 = sub i64 %5636, 10640
  %5638 = load i64, i64* %PC
  %5639 = add i64 %5638, 7
  store i64 %5639, i64* %PC
  %5640 = inttoptr i64 %5637 to i64*
  %5641 = load i64, i64* %5640
  store i64 %5641, i64* %RAX, align 8, !tbaa !2428
  %5642 = load i64, i64* %RBP
  %5643 = load i64, i64* %RAX
  %5644 = add i64 %5642, -10624
  %5645 = add i64 %5644, %5643
  %5646 = load i64, i64* %PC
  %5647 = add i64 %5646, 8
  store i64 %5647, i64* %PC
  %5648 = inttoptr i64 %5645 to i8*
  store i8 0, i8* %5648
  %5649 = load i64, i64* %PC
  %5650 = add i64 %5649, 268
  %5651 = load i64, i64* %PC
  %5652 = add i64 %5651, 5
  store i64 %5652, i64* %PC
  %5653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5650, i64* %5653, align 8, !tbaa !2428
  br label %block_400d4b

block_400d3b:                                     ; preds = %block_400d2a
  %5654 = load i64, i64* %RBP
  %5655 = sub i64 %5654, 48
  %5656 = load i64, i64* %PC
  %5657 = add i64 %5656, 4
  store i64 %5657, i64* %PC
  %5658 = inttoptr i64 %5655 to i64*
  %5659 = load i64, i64* %5658
  store i64 %5659, i64* %RAX, align 8, !tbaa !2428
  %5660 = load i64, i64* %RBP
  %5661 = sub i64 %5660, 10664
  %5662 = load i64, i64* %RAX
  %5663 = load i64, i64* %PC
  %5664 = add i64 %5663, 7
  store i64 %5664, i64* %PC
  %5665 = inttoptr i64 %5661 to i64*
  store i64 %5662, i64* %5665
  br label %block_400d46

block_400e9f:                                     ; preds = %block_400e68
  %5666 = load i64, i64* %PC
  %5667 = add i64 %5666, 10
  store i64 %5667, i64* %PC
  store i64 add (i64 ptrtoint (%seg_401620__rodata_type* @seg_401620__rodata to i64), i64 96), i64* %RSI, align 8, !tbaa !2428
  %5668 = load i64, i64* %PC
  %5669 = add i64 %5668, 8
  store i64 %5669, i64* %PC
  %5670 = load i64, i64* @stderr
  store i64 %5670, i64* %RDI, align 8, !tbaa !2428
  %5671 = load i64, i64* %PC
  %5672 = add i64 %5671, 2
  store i64 %5672, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %5673 = load i64, i64* %PC
  %5674 = sub i64 %5673, 2243
  %5675 = load i64, i64* %PC
  %5676 = add i64 %5675, 5
  %5677 = load i64, i64* %PC
  %5678 = add i64 %5677, 5
  store i64 %5678, i64* %PC
  %5679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5680 = load i64, i64* %5679, align 8, !tbaa !2428
  %5681 = add i64 %5680, -8
  %5682 = inttoptr i64 %5681 to i64*
  store i64 %5676, i64* %5682
  store i64 %5681, i64* %5679, align 8, !tbaa !2428
  %5683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5674, i64* %5683, align 8, !tbaa !2428
  %5684 = load i64, i64* %PC
  %5685 = call %struct.Memory* @ext_6020d0_fprintf(%struct.State* %0, i64 %5684, %struct.Memory* %MEMORY.22)
  %5686 = load i64, i64* %PC
  %5687 = add i64 %5686, 5
  store i64 %5687, i64* %PC
  store i64 1, i64* %RDI, align 8, !tbaa !2428
  %5688 = load i64, i64* %RBP
  %5689 = sub i64 %5688, 13088
  %5690 = load i32, i32* %EAX
  %5691 = zext i32 %5690 to i64
  %5692 = load i64, i64* %PC
  %5693 = add i64 %5692, 6
  store i64 %5693, i64* %PC
  %5694 = inttoptr i64 %5689 to i32*
  store i32 %5690, i32* %5694
  %5695 = load i64, i64* %PC
  %5696 = sub i64 %5695, 2211
  %5697 = load i64, i64* %PC
  %5698 = add i64 %5697, 5
  %5699 = load i64, i64* %PC
  %5700 = add i64 %5699, 5
  store i64 %5700, i64* %PC
  %5701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5702 = load i64, i64* %5701, align 8, !tbaa !2428
  %5703 = add i64 %5702, -8
  %5704 = inttoptr i64 %5703 to i64*
  store i64 %5698, i64* %5704
  store i64 %5703, i64* %5701, align 8, !tbaa !2428
  %5705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5696, i64* %5705, align 8, !tbaa !2428
  %5706 = load i64, i64* %PC
  %5707 = call %struct.Memory* @ext_400620_exit(%struct.State* %0, i64 %5706, %struct.Memory* %5685)
  %5708 = load i64, i64* %PC
  %5709 = tail call %struct.Memory* @__remill_error(%struct.State* %0, i64 %5708, %struct.Memory* %5707)
  ret %struct.Memory* %5709

block_400a14:                                     ; preds = %block_4009cc
  %5710 = sub i64 %1608, 64
  %5711 = load i64, i64* %PC
  %5712 = add i64 %5711, 8
  store i64 %5712, i64* %PC
  %5713 = inttoptr i64 %5710 to i64*
  store i64 0, i64* %5713
  %5714 = load i64, i64* %RBP
  %5715 = sub i64 %5714, 48
  %5716 = load i64, i64* %PC
  %5717 = add i64 %5716, 8
  store i64 %5717, i64* %PC
  %5718 = inttoptr i64 %5715 to i64*
  store i64 0, i64* %5718
  br label %block_400a24

block_401346:                                     ; preds = %block_401321, %block_401332
  %MEMORY.25 = phi %struct.Memory* [ %MEMORY.8, %block_401332 ], [ %MEMORY.8, %block_401321 ]
  %5719 = load i64, i64* %PC
  %5720 = sub i64 %5719, 236
  %5721 = load i64, i64* %PC
  %5722 = add i64 %5721, 5
  store i64 %5722, i64* %PC
  %5723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5720, i64* %5723, align 8, !tbaa !2428
  br label %block_40125a

block_400e68:                                     ; preds = %block_400e5b
  %5724 = sub i64 %4839, 10681
  %5725 = load i64, i64* %PC
  %5726 = add i64 %5725, 6
  store i64 %5726, i64* %PC
  %5727 = inttoptr i64 %5724 to i8*
  %5728 = load i8, i8* %5727
  store i8 %5728, i8* %AL, align 1, !tbaa !2451
  %5729 = load i64, i64* %RBP
  %5730 = sub i64 %5729, 120
  %5731 = load i64, i64* %PC
  %5732 = add i64 %5731, 4
  store i64 %5732, i64* %PC
  %5733 = inttoptr i64 %5730 to i64*
  %5734 = load i64, i64* %5733
  store i64 %5734, i64* %RCX, align 8, !tbaa !2428
  %5735 = load i64, i64* %RBP
  %5736 = sub i64 %5735, 10680
  %5737 = load i64, i64* %PC
  %5738 = add i64 %5737, 7
  store i64 %5738, i64* %PC
  %5739 = inttoptr i64 %5736 to i64*
  %5740 = load i64, i64* %5739
  store i64 %5740, i64* %RDX, align 8, !tbaa !2428
  %5741 = load i64, i64* %RCX
  %5742 = load i64, i64* %RDX
  %5743 = add i64 %5742, %5741
  %5744 = load i8, i8* %AL
  %5745 = zext i8 %5744 to i64
  %5746 = load i64, i64* %PC
  %5747 = add i64 %5746, 3
  store i64 %5747, i64* %PC
  %5748 = inttoptr i64 %5743 to i8*
  store i8 %5744, i8* %5748
  %5749 = load i64, i64* %RBP
  %5750 = sub i64 %5749, 10680
  %5751 = load i64, i64* %PC
  %5752 = add i64 %5751, 7
  store i64 %5752, i64* %PC
  %5753 = inttoptr i64 %5750 to i64*
  %5754 = load i64, i64* %5753
  store i64 %5754, i64* %RCX, align 8, !tbaa !2428
  %5755 = load i64, i64* %RCX
  %5756 = load i64, i64* %PC
  %5757 = add i64 %5756, 4
  store i64 %5757, i64* %PC
  %5758 = add i64 1, %5755
  store i64 %5758, i64* %RCX, align 8, !tbaa !2428
  %5759 = icmp ult i64 %5758, %5755
  %5760 = icmp ult i64 %5758, 1
  %5761 = or i1 %5759, %5760
  %5762 = zext i1 %5761 to i8
  %5763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5762, i8* %5763, align 1, !tbaa !2432
  %5764 = trunc i64 %5758 to i32
  %5765 = and i32 %5764, 255
  %5766 = call i32 @llvm.ctpop.i32(i32 %5765) #16
  %5767 = trunc i32 %5766 to i8
  %5768 = and i8 %5767, 1
  %5769 = xor i8 %5768, 1
  %5770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5769, i8* %5770, align 1, !tbaa !2446
  %5771 = xor i64 1, %5755
  %5772 = xor i64 %5771, %5758
  %5773 = lshr i64 %5772, 4
  %5774 = trunc i64 %5773 to i8
  %5775 = and i8 %5774, 1
  %5776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5775, i8* %5776, align 1, !tbaa !2447
  %5777 = icmp eq i64 %5758, 0
  %5778 = zext i1 %5777 to i8
  %5779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5778, i8* %5779, align 1, !tbaa !2448
  %5780 = lshr i64 %5758, 63
  %5781 = trunc i64 %5780 to i8
  %5782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5781, i8* %5782, align 1, !tbaa !2449
  %5783 = lshr i64 %5755, 63
  %5784 = xor i64 %5780, %5783
  %5785 = add nuw nsw i64 %5784, %5780
  %5786 = icmp eq i64 %5785, 2
  %5787 = zext i1 %5786 to i8
  %5788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5787, i8* %5788, align 1, !tbaa !2450
  %5789 = load i64, i64* %RBP
  %5790 = sub i64 %5789, 10680
  %5791 = load i64, i64* %RCX
  %5792 = load i64, i64* %PC
  %5793 = add i64 %5792, 7
  store i64 %5793, i64* %PC
  %5794 = inttoptr i64 %5790 to i64*
  store i64 %5791, i64* %5794
  %5795 = load i64, i64* %RBP
  %5796 = sub i64 %5795, 10680
  %5797 = load i64, i64* %PC
  %5798 = add i64 %5797, 7
  store i64 %5798, i64* %PC
  %5799 = inttoptr i64 %5796 to i64*
  %5800 = load i64, i64* %5799
  store i64 %5800, i64* %RCX, align 8, !tbaa !2428
  %5801 = load i64, i64* %RCX
  %5802 = load i64, i64* %RBP
  %5803 = sub i64 %5802, 40
  %5804 = load i64, i64* %PC
  %5805 = add i64 %5804, 4
  store i64 %5805, i64* %PC
  %5806 = inttoptr i64 %5803 to i64*
  %5807 = load i64, i64* %5806
  %5808 = sub i64 %5801, %5807
  %5809 = icmp ugt i64 %5807, %5801
  %5810 = zext i1 %5809 to i8
  %5811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5810, i8* %5811, align 1, !tbaa !2432
  %5812 = trunc i64 %5808 to i32
  %5813 = and i32 %5812, 255
  %5814 = call i32 @llvm.ctpop.i32(i32 %5813) #16
  %5815 = trunc i32 %5814 to i8
  %5816 = and i8 %5815, 1
  %5817 = xor i8 %5816, 1
  %5818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5817, i8* %5818, align 1, !tbaa !2446
  %5819 = xor i64 %5807, %5801
  %5820 = xor i64 %5819, %5808
  %5821 = lshr i64 %5820, 4
  %5822 = trunc i64 %5821 to i8
  %5823 = and i8 %5822, 1
  %5824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5823, i8* %5824, align 1, !tbaa !2447
  %5825 = icmp eq i64 %5808, 0
  %5826 = zext i1 %5825 to i8
  %5827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5826, i8* %5827, align 1, !tbaa !2448
  %5828 = lshr i64 %5808, 63
  %5829 = trunc i64 %5828 to i8
  %5830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5829, i8* %5830, align 1, !tbaa !2449
  %5831 = lshr i64 %5801, 63
  %5832 = lshr i64 %5807, 63
  %5833 = xor i64 %5832, %5831
  %5834 = xor i64 %5828, %5831
  %5835 = add nuw nsw i64 %5834, %5833
  %5836 = icmp eq i64 %5835, 2
  %5837 = zext i1 %5836 to i8
  %5838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5837, i8* %5838, align 1, !tbaa !2450
  %5839 = load i64, i64* %PC
  %5840 = add i64 %5839, 47
  %5841 = load i64, i64* %PC
  %5842 = add i64 %5841, 6
  %5843 = load i64, i64* %PC
  %5844 = add i64 %5843, 6
  store i64 %5844, i64* %PC
  %5845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5846 = load i8, i8* %5845, align 1, !tbaa !2448
  %5847 = icmp eq i8 %5846, 0
  %5848 = zext i1 %5847 to i8
  store i8 %5848, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %5849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5850 = select i1 %5847, i64 %5840, i64 %5842
  store i64 %5850, i64* %5849, align 8, !tbaa !2428
  %5851 = load i8, i8* %BRANCH_TAKEN
  %5852 = icmp eq i8 %5851, 1
  br i1 %5852, label %block_400ec8, label %block_400e9f

block_400e0f:                                     ; preds = %block_400e01
  %5853 = load i64, i64* %PC
  %5854 = add i64 %5853, 5
  store i64 %5854, i64* %PC
  store i64 1, i64* %RAX, align 8, !tbaa !2428
  %5855 = load i64, i64* %RBP
  %5856 = sub i64 %5855, 112
  %5857 = load i64, i64* %PC
  %5858 = add i64 %5857, 4
  store i64 %5858, i64* %PC
  %5859 = inttoptr i64 %5856 to i64*
  %5860 = load i64, i64* %5859
  store i64 %5860, i64* %RCX, align 8, !tbaa !2428
  %5861 = load i64, i64* %RCX
  %5862 = load i64, i64* %PC
  %5863 = add i64 %5862, 3
  store i64 %5863, i64* %PC
  %5864 = inttoptr i64 %5861 to i8*
  %5865 = load i8, i8* %5864
  %5866 = zext i8 %5865 to i64
  store i64 %5866, i64* %RDX, align 8, !tbaa !2428
  %5867 = load i32, i32* %EDX
  %5868 = zext i32 %5867 to i64
  %5869 = load i64, i64* %PC
  %5870 = add i64 %5869, 2
  store i64 %5870, i64* %PC
  %5871 = and i64 %5868, 4294967295
  store i64 %5871, i64* %RCX, align 8, !tbaa !2428
  %5872 = load i64, i64* %RBP
  %5873 = load i64, i64* %RCX
  %5874 = add i64 %5872, -10624
  %5875 = add i64 %5874, %5873
  %5876 = load i64, i64* %PC
  %5877 = add i64 %5876, 8
  store i64 %5877, i64* %PC
  %5878 = inttoptr i64 %5875 to i8*
  %5879 = load i8, i8* %5878
  %5880 = zext i8 %5879 to i64
  store i64 %5880, i64* %RDX, align 8, !tbaa !2428
  %5881 = load i64, i64* %RDX
  %5882 = load i64, i64* %PC
  %5883 = add i64 %5882, 3
  store i64 %5883, i64* %PC
  %5884 = trunc i64 %5881 to i32
  %5885 = sub i32 %5884, 1
  %5886 = zext i32 %5885 to i64
  store i64 %5886, i64* %RDX, align 8, !tbaa !2428
  %5887 = icmp ult i32 %5884, 1
  %5888 = zext i1 %5887 to i8
  %5889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5888, i8* %5889, align 1, !tbaa !2432
  %5890 = and i32 %5885, 255
  %5891 = call i32 @llvm.ctpop.i32(i32 %5890) #16
  %5892 = trunc i32 %5891 to i8
  %5893 = and i8 %5892, 1
  %5894 = xor i8 %5893, 1
  %5895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5894, i8* %5895, align 1, !tbaa !2446
  %5896 = xor i64 1, %5881
  %5897 = trunc i64 %5896 to i32
  %5898 = xor i32 %5897, %5885
  %5899 = lshr i32 %5898, 4
  %5900 = trunc i32 %5899 to i8
  %5901 = and i8 %5900, 1
  %5902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5901, i8* %5902, align 1, !tbaa !2447
  %5903 = icmp eq i32 %5885, 0
  %5904 = zext i1 %5903 to i8
  %5905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5904, i8* %5905, align 1, !tbaa !2448
  %5906 = lshr i32 %5885, 31
  %5907 = trunc i32 %5906 to i8
  %5908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5907, i8* %5908, align 1, !tbaa !2449
  %5909 = lshr i32 %5884, 31
  %5910 = xor i32 %5906, %5909
  %5911 = add nuw nsw i32 %5910, %5909
  %5912 = icmp eq i32 %5911, 2
  %5913 = zext i1 %5912 to i8
  %5914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5913, i8* %5914, align 1, !tbaa !2450
  %5915 = load i32, i32* %EDX
  %5916 = zext i32 %5915 to i64
  %5917 = load i64, i64* %PC
  %5918 = add i64 %5917, 2
  store i64 %5918, i64* %PC
  %5919 = and i64 %5916, 4294967295
  store i64 %5919, i64* %RCX, align 8, !tbaa !2428
  %5920 = load i64, i64* %RAX
  %5921 = load i8, i8* %CL
  %5922 = zext i8 %5921 to i64
  %5923 = load i64, i64* %PC
  %5924 = add i64 %5923, 2
  store i64 %5924, i64* %PC
  %5925 = trunc i64 %5922 to i5
  switch i5 %5925, label %5932 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
    i5 1, label %5926
  ]

; <label>:5926:                                   ; preds = %block_400e0f
  %5927 = trunc i64 %5920 to i32
  %5928 = shl i32 %5927, 1
  %5929 = icmp slt i32 %5927, 0
  %5930 = icmp slt i32 %5928, 0
  %5931 = xor i1 %5929, %5930
  br label %5941

; <label>:5932:                                   ; preds = %block_400e0f
  %5933 = and i64 %5922, 31
  %5934 = add nuw nsw i64 %5933, 4294967295
  %5935 = and i64 %5920, 4294967295
  %5936 = and i64 %5934, 4294967295
  %5937 = shl i64 %5935, %5936
  %5938 = trunc i64 %5937 to i32
  %5939 = icmp slt i32 %5938, 0
  %5940 = shl i32 %5938, 1
  br label %5941

; <label>:5941:                                   ; preds = %5932, %5926
  %5942 = phi i1 [ %5929, %5926 ], [ %5939, %5932 ]
  %5943 = phi i1 [ %5931, %5926 ], [ false, %5932 ]
  %5944 = phi i32 [ %5928, %5926 ], [ %5940, %5932 ]
  %5945 = zext i32 %5944 to i64
  store i64 %5945, i64* %RAX, align 8, !tbaa !2428
  %5946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5947 = zext i1 %5942 to i8
  store i8 %5947, i8* %5946, align 1, !tbaa !2451
  %5948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5949 = and i32 %5944, 254
  %5950 = call i32 @llvm.ctpop.i32(i32 %5949) #16
  %5951 = trunc i32 %5950 to i8
  %5952 = and i8 %5951, 1
  %5953 = xor i8 %5952, 1
  store i8 %5953, i8* %5948, align 1, !tbaa !2451
  %5954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5954, align 1, !tbaa !2451
  %5955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5956 = icmp eq i32 %5944, 0
  %5957 = zext i1 %5956 to i8
  store i8 %5957, i8* %5955, align 1, !tbaa !2451
  %5958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5959 = lshr i32 %5944, 31
  %5960 = trunc i32 %5959 to i8
  store i8 %5960, i8* %5958, align 1, !tbaa !2451
  %5961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5962 = zext i1 %5943 to i8
  store i8 %5962, i8* %5961, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit

_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit: ; preds = %block_400e0f, %5941
  %5963 = load i32, i32* %EAX
  %5964 = zext i32 %5963 to i64
  %5965 = load i64, i64* %PC
  %5966 = add i64 %5965, 3
  store i64 %5966, i64* %PC
  %5967 = shl i64 %5964, 32
  %5968 = ashr exact i64 %5967, 32
  store i64 %5968, i64* %RSI, align 8, !tbaa !2428
  %5969 = load i64, i64* %RBP
  %5970 = sub i64 %5969, 72
  %5971 = load i64, i64* %RSI
  %5972 = load i64, i64* %PC
  %5973 = add i64 %5972, 4
  store i64 %5973, i64* %PC
  %5974 = inttoptr i64 %5970 to i64*
  store i64 %5971, i64* %5974
  %5975 = load i64, i64* %RBP
  %5976 = sub i64 %5975, 48
  %5977 = load i64, i64* %PC
  %5978 = add i64 %5977, 8
  store i64 %5978, i64* %PC
  %5979 = inttoptr i64 %5976 to i64*
  store i64 0, i64* %5979
  br label %block_400e3b

block_40113e:                                     ; preds = %block_401118, %block_401183
  %MEMORY.26 = phi %struct.Memory* [ %MEMORY.12, %block_401118 ], [ %MEMORY.1, %block_401183 ]
  %5980 = load i64, i64* %RAX
  %5981 = load i32, i32* %EAX
  %5982 = zext i32 %5981 to i64
  %5983 = load i64, i64* %PC
  %5984 = add i64 %5983, 2
  store i64 %5984, i64* %PC
  %5985 = xor i64 %5982, %5980
  %5986 = trunc i64 %5985 to i32
  %5987 = and i64 %5985, 4294967295
  store i64 %5987, i64* %RAX, align 8, !tbaa !2428
  %5988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5988, align 1, !tbaa !2432
  %5989 = and i32 %5986, 255
  %5990 = call i32 @llvm.ctpop.i32(i32 %5989) #16
  %5991 = trunc i32 %5990 to i8
  %5992 = and i8 %5991, 1
  %5993 = xor i8 %5992, 1
  %5994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5993, i8* %5994, align 1, !tbaa !2446
  %5995 = icmp eq i32 %5986, 0
  %5996 = zext i1 %5995 to i8
  %5997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5996, i8* %5997, align 1, !tbaa !2448
  %5998 = lshr i32 %5986, 31
  %5999 = trunc i32 %5998 to i8
  %6000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5999, i8* %6000, align 1, !tbaa !2449
  %6001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6001, align 1, !tbaa !2450
  %6002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6002, align 1, !tbaa !2447
  %6003 = load i8, i8* %AL
  %6004 = zext i8 %6003 to i64
  %6005 = load i64, i64* %PC
  %6006 = add i64 %6005, 2
  store i64 %6006, i64* %PC
  store i8 %6003, i8* %CL, align 1, !tbaa !2451
  %6007 = load i64, i64* %RBP
  %6008 = sub i64 %6007, 56
  %6009 = load i64, i64* %PC
  %6010 = add i64 %6009, 5
  store i64 %6010, i64* %PC
  %6011 = inttoptr i64 %6008 to i64*
  %6012 = load i64, i64* %6011
  %6013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6013, align 1, !tbaa !2432
  %6014 = trunc i64 %6012 to i32
  %6015 = and i32 %6014, 255
  %6016 = call i32 @llvm.ctpop.i32(i32 %6015) #16
  %6017 = trunc i32 %6016 to i8
  %6018 = and i8 %6017, 1
  %6019 = xor i8 %6018, 1
  %6020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6019, i8* %6020, align 1, !tbaa !2446
  %6021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6021, align 1, !tbaa !2447
  %6022 = icmp eq i64 %6012, 0
  %6023 = zext i1 %6022 to i8
  %6024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6023, i8* %6024, align 1, !tbaa !2448
  %6025 = lshr i64 %6012, 63
  %6026 = trunc i64 %6025 to i8
  %6027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6026, i8* %6027, align 1, !tbaa !2449
  %6028 = lshr i64 %6012, 63
  %6029 = xor i64 %6025, %6028
  %6030 = add nuw nsw i64 %6029, %6028
  %6031 = icmp eq i64 %6030, 2
  %6032 = zext i1 %6031 to i8
  %6033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6032, i8* %6033, align 1, !tbaa !2450
  %6034 = load i64, i64* %RBP
  %6035 = sub i64 %6034, 13097
  %6036 = load i8, i8* %CL
  %6037 = zext i8 %6036 to i64
  %6038 = load i64, i64* %PC
  %6039 = add i64 %6038, 6
  store i64 %6039, i64* %PC
  %6040 = inttoptr i64 %6035 to i8*
  store i8 %6036, i8* %6040
  %6041 = load i64, i64* %PC
  %6042 = add i64 %6041, 35
  %6043 = load i64, i64* %PC
  %6044 = add i64 %6043, 6
  %6045 = load i64, i64* %PC
  %6046 = add i64 %6045, 6
  store i64 %6046, i64* %PC
  %6047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6048 = load i8, i8* %6047, align 1, !tbaa !2448
  store i8 %6048, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %6049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6050 = icmp ne i8 %6048, 0
  %6051 = select i1 %6050, i64 %6042, i64 %6044
  store i64 %6051, i64* %6049, align 8, !tbaa !2428
  %6052 = load i8, i8* %BRANCH_TAKEN
  %6053 = icmp eq i8 %6052, 1
  br i1 %6053, label %block_401170, label %block_401153

block_400c07:                                     ; preds = %block_400bf6
  %6054 = sub i64 %643, 10640
  %6055 = load i64, i64* %PC
  %6056 = add i64 %6055, 7
  store i64 %6056, i64* %PC
  %6057 = inttoptr i64 %6054 to i64*
  %6058 = load i64, i64* %6057
  store i64 %6058, i64* %RAX, align 8, !tbaa !2428
  %6059 = load i64, i64* %RBP
  %6060 = load i64, i64* %RAX
  %6061 = mul i64 %6060, 8
  %6062 = add i64 %6059, -4224
  %6063 = add i64 %6062, %6061
  %6064 = load i64, i64* %PC
  %6065 = add i64 %6064, 9
  store i64 %6065, i64* %PC
  %6066 = inttoptr i64 %6063 to i64*
  %6067 = load i64, i64* %6066
  %6068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6068, align 1, !tbaa !2432
  %6069 = trunc i64 %6067 to i32
  %6070 = and i32 %6069, 255
  %6071 = call i32 @llvm.ctpop.i32(i32 %6070) #16
  %6072 = trunc i32 %6071 to i8
  %6073 = and i8 %6072, 1
  %6074 = xor i8 %6073, 1
  %6075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6074, i8* %6075, align 1, !tbaa !2446
  %6076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6076, align 1, !tbaa !2447
  %6077 = icmp eq i64 %6067, 0
  %6078 = zext i1 %6077 to i8
  %6079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6078, i8* %6079, align 1, !tbaa !2448
  %6080 = lshr i64 %6067, 63
  %6081 = trunc i64 %6080 to i8
  %6082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6081, i8* %6082, align 1, !tbaa !2449
  %6083 = lshr i64 %6067, 63
  %6084 = xor i64 %6080, %6083
  %6085 = add nuw nsw i64 %6084, %6083
  %6086 = icmp eq i64 %6085, 2
  %6087 = zext i1 %6086 to i8
  %6088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6087, i8* %6088, align 1, !tbaa !2450
  %6089 = load i64, i64* %PC
  %6090 = add i64 %6089, 45
  %6091 = load i64, i64* %PC
  %6092 = add i64 %6091, 6
  %6093 = load i64, i64* %PC
  %6094 = add i64 %6093, 6
  store i64 %6094, i64* %PC
  %6095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6096 = load i8, i8* %6095, align 1, !tbaa !2448
  %6097 = icmp eq i8 %6096, 0
  %6098 = zext i1 %6097 to i8
  store i8 %6098, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %6099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6100 = select i1 %6097, i64 %6090, i64 %6092
  store i64 %6100, i64* %6099, align 8, !tbaa !2428
  %6101 = load i8, i8* %BRANCH_TAKEN
  %6102 = icmp eq i8 %6101, 1
  %6103 = load i64, i64* %RBP
  br i1 %6102, label %block_400c44, label %block_400c1d

block_400c44:                                     ; preds = %block_400c07
  %6104 = sub i64 %6103, 48
  %6105 = load i64, i64* %PC
  %6106 = add i64 %6105, 8
  store i64 %6106, i64* %PC
  %6107 = inttoptr i64 %6104 to i64*
  store i64 0, i64* %6107
  %6108 = load i64, i64* %RBP
  %6109 = sub i64 %6108, 56
  %6110 = load i64, i64* %PC
  %6111 = add i64 %6110, 8
  store i64 %6111, i64* %PC
  %6112 = inttoptr i64 %6109 to i64*
  store i64 1, i64* %6112
  %6113 = load i64, i64* %RBP
  %6114 = sub i64 %6113, 10648
  %6115 = load i64, i64* %PC
  %6116 = add i64 %6115, 11
  store i64 %6116, i64* %PC
  %6117 = inttoptr i64 %6114 to i64*
  store i64 0, i64* %6117
  %6118 = load i64, i64* %RBP
  %6119 = sub i64 %6118, 10640
  %6120 = load i64, i64* %PC
  %6121 = add i64 %6120, 7
  store i64 %6121, i64* %PC
  %6122 = inttoptr i64 %6119 to i64*
  %6123 = load i64, i64* %6122
  store i64 %6123, i64* %RAX, align 8, !tbaa !2428
  %6124 = load i64, i64* %RBP
  %6125 = load i64, i64* %RAX
  %6126 = mul i64 %6125, 4
  %6127 = add i64 %6124, -8320
  %6128 = add i64 %6127, %6126
  %6129 = load i64, i64* %PC
  %6130 = add i64 %6129, 7
  store i64 %6130, i64* %PC
  %6131 = inttoptr i64 %6128 to i32*
  %6132 = load i32, i32* %6131
  %6133 = zext i32 %6132 to i64
  store i64 %6133, i64* %RCX, align 8, !tbaa !2428
  %6134 = load i64, i64* %RBP
  %6135 = sub i64 %6134, 10668
  %6136 = load i32, i32* %ECX
  %6137 = zext i32 %6136 to i64
  %6138 = load i64, i64* %PC
  %6139 = add i64 %6138, 6
  store i64 %6139, i64* %PC
  %6140 = inttoptr i64 %6135 to i32*
  store i32 %6136, i32* %6140
  br label %block_400c73

block_400e01:                                     ; preds = %block_400df9, %block_400f4d
  %MEMORY.27 = phi %struct.Memory* [ %MEMORY.0, %block_400df9 ], [ %MEMORY.22, %block_400f4d ]
  %6141 = load i64, i64* %RBP
  %6142 = sub i64 %6141, 56
  %6143 = load i64, i64* %PC
  %6144 = add i64 %6143, 4
  store i64 %6144, i64* %PC
  %6145 = inttoptr i64 %6142 to i64*
  %6146 = load i64, i64* %6145
  store i64 %6146, i64* %RAX, align 8, !tbaa !2428
  %6147 = load i64, i64* %RAX
  %6148 = load i64, i64* %RBP
  %6149 = sub i64 %6148, 40
  %6150 = load i64, i64* %PC
  %6151 = add i64 %6150, 4
  store i64 %6151, i64* %PC
  %6152 = inttoptr i64 %6149 to i64*
  %6153 = load i64, i64* %6152
  %6154 = sub i64 %6147, %6153
  %6155 = icmp ugt i64 %6153, %6147
  %6156 = zext i1 %6155 to i8
  %6157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6156, i8* %6157, align 1, !tbaa !2432
  %6158 = trunc i64 %6154 to i32
  %6159 = and i32 %6158, 255
  %6160 = call i32 @llvm.ctpop.i32(i32 %6159) #16
  %6161 = trunc i32 %6160 to i8
  %6162 = and i8 %6161, 1
  %6163 = xor i8 %6162, 1
  %6164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6163, i8* %6164, align 1, !tbaa !2446
  %6165 = xor i64 %6153, %6147
  %6166 = xor i64 %6165, %6154
  %6167 = lshr i64 %6166, 4
  %6168 = trunc i64 %6167 to i8
  %6169 = and i8 %6168, 1
  %6170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6169, i8* %6170, align 1, !tbaa !2447
  %6171 = icmp eq i64 %6154, 0
  %6172 = zext i1 %6171 to i8
  %6173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6172, i8* %6173, align 1, !tbaa !2448
  %6174 = lshr i64 %6154, 63
  %6175 = trunc i64 %6174 to i8
  %6176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6175, i8* %6176, align 1, !tbaa !2449
  %6177 = lshr i64 %6147, 63
  %6178 = lshr i64 %6153, 63
  %6179 = xor i64 %6178, %6177
  %6180 = xor i64 %6174, %6177
  %6181 = add nuw nsw i64 %6180, %6179
  %6182 = icmp eq i64 %6181, 2
  %6183 = zext i1 %6182 to i8
  %6184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6183, i8* %6184, align 1, !tbaa !2450
  %6185 = load i64, i64* %PC
  %6186 = add i64 %6185, 353
  %6187 = load i64, i64* %PC
  %6188 = add i64 %6187, 6
  %6189 = load i64, i64* %PC
  %6190 = add i64 %6189, 6
  store i64 %6190, i64* %PC
  %6191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6192 = load i8, i8* %6191, align 1, !tbaa !2432
  %6193 = icmp eq i8 %6192, 0
  %6194 = zext i1 %6193 to i8
  store i8 %6194, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %6195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6196 = select i1 %6193, i64 %6186, i64 %6188
  store i64 %6196, i64* %6195, align 8, !tbaa !2428
  %6197 = load i8, i8* %BRANCH_TAKEN
  %6198 = icmp eq i8 %6197, 1
  br i1 %6198, label %block_400f6a, label %block_400e0f
}

; Function Attrs: noinline
define %struct.Memory* @sub_4015a0___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4015a0:
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
  %200 = sub i64 %199, 4156
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
  br i1 %245, label %block_4015f6, label %block_4015d6

block_4015f6:                                     ; preds = %block_4015e0, %block_4015a0
  %MEMORY.0 = phi %struct.Memory* [ %211, %block_4015a0 ], [ %387, %block_4015e0 ]
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

block_4015d6:                                     ; preds = %block_4015a0
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
  br label %block_4015e0

block_4015e0:                                     ; preds = %block_4015e0, %block_4015d6
  %MEMORY.1 = phi %struct.Memory* [ %211, %block_4015d6 ], [ %387, %block_4015e0 ]
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
  br i1 %470, label %block_4015e0, label %block_4015f6
}

; Function Attrs: noinline
define %struct.Memory* @sub_4006e0___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4006e0:
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
  br i1 %47, label %block_400700, label %block_4006e9

block_400700:                                     ; preds = %block_4006e0
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

block_4006e9:                                     ; preds = %block_4006e0
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
  %78 = call %struct.Memory* @sub_400670_deregister_tm_clones_renamed_(%struct.State* %0, i64 %77, %struct.Memory* %2)
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
define %struct.Memory* @sub_400710_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400710:
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
  %35 = tail call %struct.Memory* @sub_4006a0_register_tm_clones(%struct.State* %0, i64 %34, %struct.Memory* %2)
  ret %struct.Memory* %35
}

; Function Attrs: noinline
declare void @__mcsema_attach_call() #13

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400710_frame_dummy() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400710;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @1, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_400710_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400710_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_4006e0___do_global_dtors_aux() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4006e0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @3, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_4006e0___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_4006e0___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6020e0_fflush(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @fflush to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6020d0_fprintf(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_4005e0_strcmp(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6020f0_free(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_401610___libc_csu_fini() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x401610;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @4, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_401610___libc_csu_fini_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_401610___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_4015a0___libc_csu_init() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4015a0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @5, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_4015a0___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_4015a0___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @main() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x401470;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @6, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_401470_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6020c0___libc_start_main(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6020d8_malloc(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6020f8_memset(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_400620_exit(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exit to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @compdecomp() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400870;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @7, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400870_compdecomp(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.term_proc() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x401614;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @8, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_401614__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.init_proc() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400590;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @9, void ()** @2)
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
define dllexport void @generate_test_data() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400720;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @10, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400720_generate_test_data(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

define internal void @__mcsema_destructor() {
  call void @callback_sub_401610___libc_csu_fini()
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
  call void @callback_sub_4015a0___libc_csu_init()
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
