; ModuleID = '../binary/test.mcsema.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_400510__init_type = type <{ [23 x i8] }>
%seg_400530__plt_type = type <{ [96 x i8] }>
%seg_400590__text_type = type <{ [3186 x i8] }>
%seg_401204__fini_type = type <{ [9 x i8] }>
%seg_401210__rodata_type = type <{ [48 x i8], [4 x i8], [3 x i8], [33 x i8] }>
%seg_401268__eh_frame_hdr_type = type <{ [116 x i8] }>
%seg_4012e0__eh_frame_type = type <{ [448 x i8] }>
%seg_601df0__init_array_type = type <{ i64, i64 }>
%seg_601ff0__got_type = type <{ i64, i64 }>
%seg_602000__got_plt_type = type <{ [24 x i8], i64, i64, i64, i64, i64 }>
%seg_602040__data_type = type <{ [16 x i8], [8 x i8] }>
%seg_602058__bss_type = type <{ [8 x i8], [8 x i8] }>
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
@stdout = external global i64, align 8
@seg_400510__init = internal constant %seg_400510__init_type <{ [23 x i8] c"H\83\EC\08H\8B\05\DD\1A \00H\85\C0t\02\FF\D0H\83\C4\08\C3" }>
@seg_400530__plt = internal constant %seg_400530__plt_type <{ [96 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF%\D2\1A \00\00\00\00\00\00\00\00\00\00\00\FF%\CA\1A \00\00\00\00\00\00\00\00\00\00\00\FF%\C2\1A \00\00\00\00\00\00\00\00\00\00\00\FF%\BA\1A \00\00\00\00\00\00\00\00\00\00\00\FF%\B2\1A \00\00\00\00\00\00\00\00\00\00\00" }>
@seg_400590__text = internal constant %seg_400590__text_type <{ [3186 x i8] c"1\EDI\89\D1^H\89\E2H\83\E4\F0PTI\C7\C0\00\12@\00H\C7\C1\90\11@\00H\C7\C7\90\0F@\00\FF\156\1A \00\F4\0F\1FD\00\00\F3\C3f.\0F\1F\84\00\00\00\00\00\0F\1F@\00U\B8X `\00H=X `\00H\89\E5t\17\B8\00\00\00\00H\85\C0t\0D]\BFX `\00\FF\E0\0F\1FD\00\00]\C3f\0F\1FD\00\00\BEX `\00UH\81\EEX `\00H\89\E5H\C1\FE\03H\89\F0H\C1\E8?H\01\C6H\D1\FEt\15\B8\00\00\00\00H\85\C0t\0B]\BFX `\00\FF\E0\0F\1F\00]\C3f\0F\1FD\00\00\80=\19\1A \00\00u\17UH\89\E5\E8~\FF\FF\FF\C6\05\07\1A \00\01]\C3\0F\1FD\00\00\F3\C3\0F\1F@\00f.\0F\1F\84\00\00\00\00\00UH\89\E5]\EB\89f\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC H\89}\F8H\89u\F0\C7E\EC\00\00\00\00\81}\EC\D0\07\00\00\0F\8DO\00\00\00\C7E\E8\00\00\00\00\81}\E8\D0\07\00\00\0F\8D(\00\00\00\E8\E3\00\00\00H\8BE\F8HcM\E8H\8B\04\C8HcM\EC\F2\0F\11\04\C8\8BE\E8\83\C0\01\89E\E8\E9\CB\FF\FF\FF\E9\00\00\00\00\8BE\EC\83\C0\01\89E\EC\E9\A4\FF\FF\FF\C7E\EC\00\00\00\00\81}\EC\D0\07\00\00\0F\8D\1E\00\00\00\0FW\C0H\8BE\F0HcM\EC\F2\0F\11\04\C8\8BE\EC\83\C0\01\89E\EC\E9\D5\FF\FF\FF\C7E\E8\00\00\00\00\81}\E8\D0\07\00\00\0F\8D\5C\00\00\00\C7E\EC\00\00\00\00\81}\EC\D0\07\00\00\0F\8D5\00\00\00H\8BE\F8HcM\E8H\8B\04\C8HcM\EC\F2\0F\10\04\C8H\8BE\F0HcM\EC\F2\0FX\04\C8\F2\0F\11\04\C8\8BE\EC\83\C0\01\89E\EC\E9\BE\FF\FF\FF\E9\00\00\00\00\8BE\E8\83\C0\01\89E\E8\E9\97\FF\FF\FFH\83\C4 ]\C3\0F\1FD\00\00UH\89\E5\B8\1D\F3\01\00\89\C1H\8B\14%P `\00H\81\F2$\D9[\07H\89\14%P `\00H\8B\04%P `\00H\99H\F7\F9H\89E\F8H\8B\04%P `\00HiM\F8\1D\F3\01\00H)\C8Hi\C0\A7A\00\00HiM\F8\14\0B\00\00H)\C8H\89\04%P `\00H\83<%P `\00\00\0F\8D\16\00\00\00H\8B\04%P `\00H\05\FF\FF\FF\7FH\89\04%P `\00\F2\0F\10\05\EB\09\00\00\F2H\0F*\0C%P `\00\F2\0FY\C1\F2\0F\11E\F0H\8B\04%P `\00H5$\D9[\07H\89\04%P `\00\F2\0F\10E\F0]\C3\0F\1F\00UH\89\E5\89}\FCH\89u\F0\89U\EC\89M\E8\C7E\CC\00\00\00\00\83}\FC\01\0F\8D\0C\00\00\00\C7E\CC\FF\FF\FF\FF\E9R\01\00\00\83}\FC\01\0F\85\0C\00\00\00\C7E\CC\00\00\00\00\E97\01\00\00\83}\E8\01\0F\84\97\00\00\00H\8BE\F0HcM\EC\F2\0F\10\04\C8\0F(\0Dn\09\00\00f\0F\DB\C1\F2\0F\11E\E0\8BU\E8\83\C2\01\89U\D0\C7E\D4\01\00\00\00\8BE\D4;E\FC\0F\8DY\00\00\00H\8BE\F0\8BM\D0\03M\ECHc\D1\F2\0F\10\04\D0\0F(\0D0\09\00\00f\0F\DB\C1\F2\0F\11E\D8\F2\0F\10E\D8f\0F.E\E0\0F\86\10\00\00\00\8BE\D4\89E\CC\F2\0F\10E\D8\F2\0F\11E\E0\8BE\E8\03E\D0\89E\D0\8BE\D4\83\C0\01\89E\D4\E9\9B\FF\FF\FF\E9\91\00\00\00\C7E\CC\00\00\00\00H\8BE\F0HcM\EC\F2\0F\10\04\C8\0F(\0D\D0\08\00\00f\0F\DB\C1\F2\0F\11E\E0\C7E\D4\01\00\00\00\8BE\D4;E\FC\0F\8DU\00\00\00H\8BE\F0\8BM\D4\03M\ECHc\D1\F2\0F\10\04\D0\0F(\0D\9B\08\00\00f\0F\DB\C1\F2\0F\11E\D8\F2\0F\10E\D8f\0F.E\E0\0F\86\10\00\00\00\8BE\D4\89E\CC\F2\0F\10E\D8\F2\0F\11E\E0\E9\00\00\00\00\8BE\D4\83\C0\01\89E\D4\E9\9F\FF\FF\FF\E9\00\00\00\00\E9\00\00\00\00\E9\00\00\00\00\8BE\CC]\C3ff.\0F\1F\84\00\00\00\00\00UH\89\E5\89}\FC\F2\0F\11E\F0H\89u\E8\89U\E4\89M\E0\83}\FC\00\0F\8E\9D\00\00\00\83}\E0\01\0F\84L\00\00\00\8BE\FC\0F\AFE\E0\89E\D8\C7E\DC\00\00\00\00\8BE\DC;E\D8\0F\8D*\00\00\00\F2\0F\10E\F0H\8BE\E8\8BM\DC\03M\E4Hc\D1\F2\0FY\04\D0\F2\0F\11\04\D0\8BE\E0\03E\DC\89E\DC\E9\CA\FF\FF\FF\E9B\00\00\00\C7E\DC\00\00\00\00\8BE\DC;E\FC\0F\8D*\00\00\00\F2\0F\10E\F0H\8BE\E8\8BM\DC\03M\E4Hc\D1\F2\0FY\04\D0\F2\0F\11\04\D0\8BE\DC\83\C0\01\89E\DC\E9\CA\FF\FF\FF\E9\00\00\00\00\E9\00\00\00\00]\C3\90UH\89\E5\8BE\10\89}\FC\F2\0F\11E\F0H\89u\E8\89U\E4\89M\E0L\89E\D8D\89M\D4\89E\D0\83}\FC\00\0F\8E0\01\00\00\0FW\C0\F2\0F\10M\F0f\0F.\C8\0F\85\0B\00\00\00\0F\8A\05\00\00\00\E9\13\01\00\00\83}\E0\01\0F\85\0A\00\00\00\83}\D0\01\0F\84\A6\00\00\00\C7E\C8\00\00\00\00\C7E\C4\00\00\00\00\83}\E0\00\0F\8D\0F\00\00\00\B8\01\00\00\00+E\FC\0F\AFE\E0\89E\C8\83}\D0\00\0F\8D\0F\00\00\00\B8\01\00\00\00+E\FC\0F\AFE\D0\89E\C4\C7E\CC\00\00\00\00\8BE\CC;E\FC\0F\8DN\00\00\00\F2\0F\10E\F0H\8BE\E8\8BM\C8\03M\E4Hc\D1\F2\0FY\04\D0H\8BE\D8\8BM\C4\03M\D4Hc\D1\F2\0FX\04\D0\F2\0F\11\04\D0\8BM\E0\03M\C8\89M\C8\8BM\D0\03M\C4\89M\C4\8BE\CC\83\C0\01\89E\CC\E9\A6\FF\FF\FF\E9Y\00\00\00\C7E\CC\00\00\00\00\8BE\CC;E\FC\0F\8D<\00\00\00\F2\0F\10E\F0H\8BE\E8\8BM\CC\03M\E4Hc\D1\F2\0FY\04\D0H\8BE\D8\8BM\CC\03M\D4Hc\D1\F2\0FX\04\D0\F2\0F\11\04\D0\8BE\CC\83\C0\01\89E\CC\E9\B8\FF\FF\FF\E9\00\00\00\00\E9\00\00\00\00]\C3UH\89\E5H\83\EC@H\89}\F8H\89u\F0\C7E\E4\00\00\00\00\81}\E4\CF\07\00\00\0F\8D\B5\01\00\00\B9\01\00\00\00\B8\D0\07\00\00H\8BU\F8Hcu\E4H\8B\14\F2H\89U\D8\8B}\E4\83\C7\01\89}\D4+E\E4H\8Bu\D8\8BU\E4\89\C7\E8\F8\FB\FF\FF\0FW\C0\03E\E4\89E\D0\8BE\D0H\8Bu\F0LcE\E4B\89\04\86H\8Bu\D8LcE\D0\F2B\0F\10\0C\C6f\0F.\C8\0F\85\0B\00\00\00\0F\8A\05\00\00\00\E93\01\00\00\8BE\D0;E\E4\0F\84>\00\00\00H\8BE\D8HcM\D0\F2\0F\10\04\C8\F2\0F\11E\E8H\8BE\D8HcM\E4\F2\0F\10\04\C8H\8BE\D8HcM\D0\F2\0F\11\04\C8\F2\0F\10E\E8H\8BE\D8HcM\E4\F2\0F\11\04\C8\B9\01\00\00\00\B8\D0\07\00\00\F2\0F\10\05!\05\00\00H\8BU\D8Hcu\E4\F2\0F^\04\F2\F2\0F\11E\E8+E\D4\F2\0F\10E\E8H\8Bu\D8\8BU\D4\89\C7\E8\C9\FC\FF\FF\8BE\D4\89E\E0\81}\E0\D0\07\00\00\0F\8D\97\00\00\00H\8BE\F8HcM\E0H\8B\04\C8H\89E\C8H\8BE\C8HcM\D0\F2\0F\10\04\C8\F2\0F\11E\E8\8BU\D0;U\E4\0F\84,\00\00\00H\8BE\C8HcM\E4\F2\0F\10\04\C8H\8BE\C8HcM\D0\F2\0F\11\04\C8\F2\0F\10E\E8H\8BE\C8HcM\E4\F2\0F\11\04\C8\B9\01\00\00\00\B8\D0\07\00\00+E\D4\F2\0F\10E\E8H\8Bu\D8\8BU\D4L\8BE\C8D\8BM\D4\89\C7\C7\04$\01\00\00\00\E8\ED\FC\FF\FF\8BE\E0\83\C0\01\89E\E0\E9\5C\FF\FF\FF\E9\00\00\00\00\E9\00\00\00\00\8BE\E4\83\C0\01\89E\E4\E9>\FE\FF\FFH\8BE\F0\C7\80<\1F\00\00\CF\07\00\00H\83\C4@]\C3\0F\1F\00UH\89\E5H\83\EC@H\89}\F8H\89u\F0H\89U\E8\C7E\DC\00\00\00\00\81}\DC\CF\07\00\00\0F\8D\A6\00\00\00H\8BE\F0HcM\DC\8B\14\88\89U\D4H\8BE\E8HcM\D4\F2\0F\10\04\C8\F2\0F\11E\E0\8BU\D4;U\DC\0F\84,\00\00\00H\8BE\E8HcM\DC\F2\0F\10\04\C8H\8BE\E8HcM\D4\F2\0F\11\04\C8\F2\0F\10E\E0H\8BE\E8HcM\DC\F2\0F\11\04\C8\B9\01\00\00\00\B8\D0\07\00\00\8BU\DC\83\C2\01\89U\D0+E\D0\F2\0F\10E\E0H\8Bu\F8Hc}\DCH\8B4\FE\8BU\D0L\8BE\E8D\8BM\D0\89\C7\C7\04$\01\00\00\00\E8\F0\FB\FF\FF\8BE\DC\83\C0\01\89E\DC\E9M\FF\FF\FF\C7E\D8\00\00\00\00\81}\D8\D0\07\00\00\0F\8D\A6\00\00\001\C0\B9\01\00\00\00H\BA\00\00\00\00\00\00\00\80\BE\D0\07\00\00\8B}\D8\83\C7\01)\FE\89u\DCL\8BE\F8LcM\DCO\8B\04\C8LcM\DC\F2C\0F\10\04\C8L\8BE\E8LcM\DC\F2C\0F\10\0C\C8\F2\0F^\C8\F2C\0F\11\0C\C8L\8BE\E8LcM\DC\F2C\0F\10\04\C8fI\0F~\C0I1\D0fI\0Fn\C0\F2\0F\11E\E0\8B}\DC\F2\0F\10E\E0H\8BU\F8LcE\DCJ\8B4\C2L\8BE\E8\89\C2A\89\C1\C7\04$\01\00\00\00\E86\FB\FF\FF\8BE\D8\83\C0\01\89E\D8\E9M\FF\FF\FFH\83\C4@]\C3f\90UH\89\E5H\83\EC`\C7E\FC\00\00\00\00\89}\F8H\89u\F0\C6E\EB\00\83}\F8\01\0F\8EQ\00\00\00\C7E\EC\01\00\00\00\8BE\EC;E\F8\0F\8D9\00\00\00H\8BE\F0H\8Bx\08\B9@\12@\00\89\CE\E8u\F5\FF\FF\83\F8\00\0F\85\09\00\00\00\C6E\EB\01\E9\13\00\00\00\E9\00\00\00\00\8BE\EC\83\C0\01\89E\EC\E9\BB\FF\FF\FF\E9\00\00\00\00\B8\80>\00\00\89\C7\E8_\F5\FF\FFH\89E\E0\C7E\EC\00\00\00\00\81}\EC\D0\07\00\00\0F\8D&\00\00\00\B8\88>\00\00\89\C7\E8;\F5\FF\FFH\8B}\E0HcM\ECH\89\04\CF\8BE\EC\83\C0\01\89E\EC\E9\CD\FF\FF\FF\B8\80>\00\00\89\C7\E8\15\F5\FF\FF\B9\80>\00\00\89\CFH\89E\D8\E8\05\F5\FF\FF\B9@\1F\00\00\89\CFH\89E\D0\E8\F5\F4\FF\FF\F2\0F\10\05\A5\01\00\00H\89E\C8\F2\0F\11E\C0H\8B}\E0H\8Bu\D8\E8\E7\F5\FF\FFH\8B}\E0H\8Bu\C8\E8j\FB\FF\FFH\8B}\E0H\8Bu\C8H\8BU\D8\E8I\FD\FF\FF\0FW\C0\F2\0F\11E\B8H\8BE\C8H\89\C7\E8u\F4\FF\FFH\8BE\D0H\89\C7\E8i\F4\FF\FFH\8BE\D8H\89\C7\E8]\F4\FF\FF\C7E\EC\00\00\00\00\81}\EC\D0\07\00\00\0F\8D\22\00\00\00H\8BE\E0HcM\ECH\8B\04\C8H\89\C7\E85\F4\FF\FF\8BE\EC\83\C0\01\89E\EC\E9\D1\FF\FF\FFH\8BE\E0H\89\C7\E8\1B\F4\FF\FF\F6E\EB\01\0F\84&\00\00\00H\BED\12@\00\00\00\00\00H\8B<%X `\00\F2\0F\10E\B8\B0\01\E8\13\F4\FF\FF\89E\B4\E9!\00\00\00H\BEG\12@\00\00\00\00\00H\8B<%X `\00\F2\0F\10E\B8\B0\01\E8\ED\F3\FF\FF\89E\B0H\8B<%X `\00\E8\FD\F3\FF\FF1\C9\89E\AC\89\C8H\83\C4`]\C3AWAVI\89\D7AUATL\8D%N\0C \00UH\8D-N\0C \00SA\89\FDI\89\F6L)\E5H\83\EC\08H\C1\FD\03\E8O\F3\FF\FFH\85\EDt 1\DB\0F\1F\84\00\00\00\00\00L\89\FAL\89\F6D\89\EFA\FF\14\DCH\83\C3\01H9\DDu\EAH\83\C4\08[]A\5CA]A^A_\C3\90f.\0F\1F\84\00\00\00\00\00\F3\C3" }>
@seg_401204__fini = internal constant %seg_401204__fini_type <{ [9 x i8] c"H\83\EC\08H\83\C4\08\C3" }>
@seg_401210__rodata = internal constant %seg_401210__rodata_type <{ [48 x i8] c"\01\00\02\00\00\00\00\00\E1\0F \00\00\00\00>\00\00\00\00\00\00\F0\BFUUUu\E4\E5\F3A\FF\FF\FF\FF\FF\FF\FF\7F\FF\FF\FF\FF\FF\FF\FF\7F", [4 x i8] c"-ga\00", [3 x i8] c"%f\00", [33 x i8] c"\0Alpbench (Std. C) run time: %f\0A\0A\00" }>
@seg_401268__eh_frame_hdr = internal constant %seg_401268__eh_frame_hdr_type <{ [116 x i8] c"\01\1B\03;t\00\00\00\0D\00\00\00\C8\F2\FF\FF\D0\00\00\00(\F3\FF\FF\90\00\00\00X\F3\FF\FF\BC\00\00\00\18\F4\FF\FF\F8\00\00\008\F5\FF\FF\14\01\00\00\F8\F5\FF\FF0\01\00\00\88\F7\FF\FFL\01\00\00H\F8\FF\FFh\01\00\00\A8\F9\FF\FF\84\01\00\00\98\FB\FF\FF\A0\01\00\00(\FD\FF\FF\BC\01\00\00(\FF\FF\FF\D8\01\00\00\98\FF\FF\FF \02\00\00" }>
@seg_4012e0__eh_frame = internal constant %seg_4012e0__eh_frame_type <{ [448 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00\90\F2\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00\94\F2\FF\FF\02\00\00\00\00\00\00\00$\00\00\000\00\00\00\F0\F1\FF\FF`\00\00\00\00\0E\10F\0E\18J\0F\0Bw\08\80\00?\1A;*3$\22\00\00\00\00\18\00\00\00X\00\00\00\18\F3\FF\FF\1B\01\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00t\00\00\00\1C\F4\FF\FF\BD\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\90\00\00\00\C0\F4\FF\FF\85\01\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\AC\00\00\004\F6\FF\FF\BF\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\C8\00\00\00\D8\F6\FF\FF`\01\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\E4\00\00\00\1C\F8\FF\FF\ED\01\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\00\01\00\00\F0\F9\FF\FF\8E\01\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\1C\01\00\00d\FB\FF\FF\00\02\00\00\00A\0E\10\86\02C\0D\06\00\00\00D\00\00\008\01\00\00H\FD\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\80\01\00\00p\FD\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@seg_601df0__init_array = internal global %seg_601df0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_400670_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_400640___do_global_dtors_aux to i64) }>
@seg_601ff0__got = internal global %seg_601ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@seg_602000__got_plt = internal global %seg_602000__got_plt_type <{ [24 x i8] zeroinitializer, i64 ptrtoint (i64 (i64)* @free to i64), i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), i64 ptrtoint (i64 (i64)* @malloc to i64), i64 ptrtoint (i64 (i64)* @fflush to i64) }>
@seg_602040__data = internal global %seg_602040__data_type <{ [16 x i8] zeroinitializer, [8 x i8] c"-\05\00\00\00\00\00\00" }>
@seg_602058__bss = internal global %seg_602058__bss_type zeroinitializer
@0 = internal global i1 false
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400670_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400640___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401200___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401190___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @idamax_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @matgen_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@10 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @dscal_wrapper
@11 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @dgesl_wrapper
@12 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@13 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @daxpy_wrapper
@14 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @dgefa_wrapper
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
declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @strcmp(i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @fprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @fflush(i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @free(i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @malloc(i64) #13

; Function Attrs: noinline
define %struct.Memory* @sub_400f90_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400f90:
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
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %41 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %41 to %"class.std::bitset"*
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %43 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %42, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %43 to %union.vec128_t*
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
  %54 = load i64, i64* %RSP
  %55 = load i64, i64* %PC
  %56 = add i64 %55, 4
  store i64 %56, i64* %PC
  %57 = sub i64 %54, 96
  store i64 %57, i64* %RSP, align 8, !tbaa !2428
  %58 = icmp ult i64 %54, 96
  %59 = zext i1 %58 to i8
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %59, i8* %60, align 1, !tbaa !2432
  %61 = trunc i64 %57 to i32
  %62 = and i32 %61, 255
  %63 = call i32 @llvm.ctpop.i32(i32 %62) #16
  %64 = trunc i32 %63 to i8
  %65 = and i8 %64, 1
  %66 = xor i8 %65, 1
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %66, i8* %67, align 1, !tbaa !2446
  %68 = xor i64 96, %54
  %69 = xor i64 %68, %57
  %70 = lshr i64 %69, 4
  %71 = trunc i64 %70 to i8
  %72 = and i8 %71, 1
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %72, i8* %73, align 1, !tbaa !2447
  %74 = icmp eq i64 %57, 0
  %75 = zext i1 %74 to i8
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %75, i8* %76, align 1, !tbaa !2448
  %77 = lshr i64 %57, 63
  %78 = trunc i64 %77 to i8
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %78, i8* %79, align 1, !tbaa !2449
  %80 = lshr i64 %54, 63
  %81 = xor i64 %77, %80
  %82 = add nuw nsw i64 %81, %80
  %83 = icmp eq i64 %82, 2
  %84 = zext i1 %83 to i8
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %84, i8* %85, align 1, !tbaa !2450
  %86 = load i64, i64* %RBP
  %87 = sub i64 %86, 4
  %88 = load i64, i64* %PC
  %89 = add i64 %88, 7
  store i64 %89, i64* %PC
  %90 = inttoptr i64 %87 to i32*
  store i32 0, i32* %90
  %91 = load i64, i64* %RBP
  %92 = sub i64 %91, 8
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
  %105 = sub i64 %104, 21
  %106 = load i64, i64* %PC
  %107 = add i64 %106, 4
  store i64 %107, i64* %PC
  %108 = inttoptr i64 %105 to i8*
  store i8 0, i8* %108
  %109 = load i64, i64* %RBP
  %110 = sub i64 %109, 8
  %111 = load i64, i64* %PC
  %112 = add i64 %111, 4
  store i64 %112, i64* %PC
  %113 = inttoptr i64 %110 to i32*
  %114 = load i32, i32* %113
  %115 = sub i32 %114, 1
  %116 = icmp ult i32 %114, 1
  %117 = zext i1 %116 to i8
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %117, i8* %118, align 1, !tbaa !2432
  %119 = and i32 %115, 255
  %120 = call i32 @llvm.ctpop.i32(i32 %119) #16
  %121 = trunc i32 %120 to i8
  %122 = and i8 %121, 1
  %123 = xor i8 %122, 1
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %123, i8* %124, align 1, !tbaa !2446
  %125 = xor i32 %114, 1
  %126 = xor i32 %125, %115
  %127 = lshr i32 %126, 4
  %128 = trunc i32 %127 to i8
  %129 = and i8 %128, 1
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %129, i8* %130, align 1, !tbaa !2447
  %131 = icmp eq i32 %115, 0
  %132 = zext i1 %131 to i8
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %132, i8* %133, align 1, !tbaa !2448
  %134 = lshr i32 %115, 31
  %135 = trunc i32 %134 to i8
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %135, i8* %136, align 1, !tbaa !2449
  %137 = lshr i32 %114, 31
  %138 = xor i32 %134, %137
  %139 = add nuw nsw i32 %138, %137
  %140 = icmp eq i32 %139, 2
  %141 = zext i1 %140 to i8
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %141, i8* %142, align 1, !tbaa !2450
  %143 = load i64, i64* %PC
  %144 = add i64 %143, 87
  %145 = load i64, i64* %PC
  %146 = add i64 %145, 6
  %147 = load i64, i64* %PC
  %148 = add i64 %147, 6
  store i64 %148, i64* %PC
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %150 = load i8, i8* %149, align 1, !tbaa !2448
  %151 = icmp ne i8 %150, 0
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %153 = load i8, i8* %152, align 1, !tbaa !2449
  %154 = icmp ne i8 %153, 0
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %156 = load i8, i8* %155, align 1, !tbaa !2450
  %157 = icmp ne i8 %156, 0
  %158 = xor i1 %154, %157
  %159 = or i1 %151, %158
  %160 = zext i1 %159 to i8
  store i8 %160, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %162 = select i1 %159, i64 %144, i64 %146
  store i64 %162, i64* %161, align 8, !tbaa !2428
  %163 = load i8, i8* %BRANCH_TAKEN
  %164 = icmp eq i8 %163, 1
  br i1 %164, label %block_401005, label %block_400fb4

block_40101c:                                     ; preds = %block_401005, %block_401029
  %MEMORY.0 = phi %struct.Memory* [ %899, %block_401005 ], [ %803, %block_401029 ]
  %165 = load i64, i64* %RBP
  %166 = sub i64 %165, 20
  %167 = load i64, i64* %PC
  %168 = add i64 %167, 7
  store i64 %168, i64* %PC
  %169 = inttoptr i64 %166 to i32*
  %170 = load i32, i32* %169
  %171 = sub i32 %170, 2000
  %172 = icmp ult i32 %170, 2000
  %173 = zext i1 %172 to i8
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %173, i8* %174, align 1, !tbaa !2432
  %175 = and i32 %171, 255
  %176 = call i32 @llvm.ctpop.i32(i32 %175) #16
  %177 = trunc i32 %176 to i8
  %178 = and i8 %177, 1
  %179 = xor i8 %178, 1
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %179, i8* %180, align 1, !tbaa !2446
  %181 = xor i32 %170, 2000
  %182 = xor i32 %181, %171
  %183 = lshr i32 %182, 4
  %184 = trunc i32 %183 to i8
  %185 = and i8 %184, 1
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %185, i8* %186, align 1, !tbaa !2447
  %187 = icmp eq i32 %171, 0
  %188 = zext i1 %187 to i8
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %188, i8* %189, align 1, !tbaa !2448
  %190 = lshr i32 %171, 31
  %191 = trunc i32 %190 to i8
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %191, i8* %192, align 1, !tbaa !2449
  %193 = lshr i32 %170, 31
  %194 = xor i32 %190, %193
  %195 = add nuw nsw i32 %194, %193
  %196 = icmp eq i32 %195, 2
  %197 = zext i1 %196 to i8
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %197, i8* %198, align 1, !tbaa !2450
  %199 = load i64, i64* %PC
  %200 = add i64 %199, 44
  %201 = load i64, i64* %PC
  %202 = add i64 %201, 6
  %203 = load i64, i64* %PC
  %204 = add i64 %203, 6
  store i64 %204, i64* %PC
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %206 = load i8, i8* %205, align 1, !tbaa !2449
  %207 = icmp ne i8 %206, 0
  %208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %209 = load i8, i8* %208, align 1, !tbaa !2450
  %210 = icmp ne i8 %209, 0
  %211 = xor i1 %207, %210
  %212 = xor i1 %211, true
  %213 = zext i1 %212 to i8
  store i8 %213, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %215 = select i1 %211, i64 %202, i64 %200
  store i64 %215, i64* %214, align 8, !tbaa !2428
  %216 = load i8, i8* %BRANCH_TAKEN
  %217 = icmp eq i8 %216, 1
  %218 = load i64, i64* %PC
  %219 = add i64 %218, 5
  store i64 %219, i64* %PC
  br i1 %217, label %block_40104f, label %block_401029

block_401119:                                     ; preds = %block_4010ea
  %220 = load i64, i64* %RAX
  %221 = load i64, i64* %PC
  %222 = add i64 %221, 3
  store i64 %222, i64* %PC
  store i64 %220, i64* %RDI, align 8, !tbaa !2428
  %223 = load i64, i64* %PC
  %224 = sub i64 %223, 3040
  %225 = load i64, i64* %PC
  %226 = add i64 %225, 5
  %227 = load i64, i64* %PC
  %228 = add i64 %227, 5
  store i64 %228, i64* %PC
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %230 = load i64, i64* %229, align 8, !tbaa !2428
  %231 = add i64 %230, -8
  %232 = inttoptr i64 %231 to i64*
  store i64 %226, i64* %232
  store i64 %231, i64* %229, align 8, !tbaa !2428
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %224, i64* %233, align 8, !tbaa !2428
  %234 = load i64, i64* %PC
  %235 = call %struct.Memory* @ext_602098_free(%struct.State* %0, i64 %234, %struct.Memory* %MEMORY.2)
  %236 = load i64, i64* %RBP
  %237 = sub i64 %236, 21
  %238 = load i64, i64* %PC
  %239 = add i64 %238, 4
  store i64 %239, i64* %PC
  %240 = inttoptr i64 %237 to i8*
  %241 = load i8, i8* %240
  %242 = and i8 %241, 1
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %243, align 1, !tbaa !2432
  %244 = zext i8 %242 to i32
  %245 = call i32 @llvm.ctpop.i32(i32 %244) #16
  %246 = trunc i32 %245 to i8
  %247 = and i8 %246, 1
  %248 = xor i8 %247, 1
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %248, i8* %249, align 1, !tbaa !2446
  %250 = icmp eq i8 %242, 0
  %251 = zext i1 %250 to i8
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %251, i8* %252, align 1, !tbaa !2448
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %253, align 1, !tbaa !2449
  %254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %254, align 1, !tbaa !2450
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %255, align 1, !tbaa !2447
  %256 = load i64, i64* %PC
  %257 = add i64 %256, 44
  %258 = load i64, i64* %PC
  %259 = add i64 %258, 6
  %260 = load i64, i64* %PC
  %261 = add i64 %260, 6
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
  %269 = load i64, i64* %PC
  %270 = add i64 %269, 10
  store i64 %270, i64* %PC
  br i1 %268, label %block_401155, label %block_40112f

block_401176:                                     ; preds = %block_401155, %block_40112f
  %MEMORY.1 = phi %struct.Memory* [ %438, %block_401155 ], [ %398, %block_40112f ]
  %271 = load i64, i64* %PC
  %272 = add i64 %271, 8
  store i64 %272, i64* %PC
  %273 = load i64, i64* @stdout
  store i64 %273, i64* %RDI, align 8, !tbaa !2428
  %274 = load i64, i64* %PC
  %275 = sub i64 %274, 3070
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
  %286 = call %struct.Memory* @ext_602090_fflush(%struct.State* %0, i64 %285, %struct.Memory* %MEMORY.1)
  %287 = load i64, i64* %RCX
  %288 = load i32, i32* %ECX
  %289 = zext i32 %288 to i64
  %290 = load i64, i64* %PC
  %291 = add i64 %290, 2
  store i64 %291, i64* %PC
  %292 = xor i64 %289, %287
  %293 = trunc i64 %292 to i32
  %294 = and i64 %292, 4294967295
  store i64 %294, i64* %RCX, align 8, !tbaa !2428
  %295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %295, align 1, !tbaa !2432
  %296 = and i32 %293, 255
  %297 = call i32 @llvm.ctpop.i32(i32 %296) #16
  %298 = trunc i32 %297 to i8
  %299 = and i8 %298, 1
  %300 = xor i8 %299, 1
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %300, i8* %301, align 1, !tbaa !2446
  %302 = icmp eq i32 %293, 0
  %303 = zext i1 %302 to i8
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %303, i8* %304, align 1, !tbaa !2448
  %305 = lshr i32 %293, 31
  %306 = trunc i32 %305 to i8
  %307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %306, i8* %307, align 1, !tbaa !2449
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %308, align 1, !tbaa !2450
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %309, align 1, !tbaa !2447
  %310 = load i64, i64* %RBP
  %311 = sub i64 %310, 84
  %312 = load i32, i32* %EAX
  %313 = zext i32 %312 to i64
  %314 = load i64, i64* %PC
  %315 = add i64 %314, 3
  store i64 %315, i64* %PC
  %316 = inttoptr i64 %311 to i32*
  store i32 %312, i32* %316
  %317 = load i32, i32* %ECX
  %318 = zext i32 %317 to i64
  %319 = load i64, i64* %PC
  %320 = add i64 %319, 2
  store i64 %320, i64* %PC
  %321 = and i64 %318, 4294967295
  store i64 %321, i64* %RAX, align 8, !tbaa !2428
  %322 = load i64, i64* %RSP
  %323 = load i64, i64* %PC
  %324 = add i64 %323, 4
  store i64 %324, i64* %PC
  %325 = add i64 96, %322
  store i64 %325, i64* %RSP, align 8, !tbaa !2428
  %326 = icmp ult i64 %325, %322
  %327 = icmp ult i64 %325, 96
  %328 = or i1 %326, %327
  %329 = zext i1 %328 to i8
  %330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %329, i8* %330, align 1, !tbaa !2432
  %331 = trunc i64 %325 to i32
  %332 = and i32 %331, 255
  %333 = call i32 @llvm.ctpop.i32(i32 %332) #16
  %334 = trunc i32 %333 to i8
  %335 = and i8 %334, 1
  %336 = xor i8 %335, 1
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %336, i8* %337, align 1, !tbaa !2446
  %338 = xor i64 96, %322
  %339 = xor i64 %338, %325
  %340 = lshr i64 %339, 4
  %341 = trunc i64 %340 to i8
  %342 = and i8 %341, 1
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %342, i8* %343, align 1, !tbaa !2447
  %344 = icmp eq i64 %325, 0
  %345 = zext i1 %344 to i8
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %345, i8* %346, align 1, !tbaa !2448
  %347 = lshr i64 %325, 63
  %348 = trunc i64 %347 to i8
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %348, i8* %349, align 1, !tbaa !2449
  %350 = lshr i64 %322, 63
  %351 = xor i64 %347, %350
  %352 = add nuw nsw i64 %351, %347
  %353 = icmp eq i64 %352, 2
  %354 = zext i1 %353 to i8
  %355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %354, i8* %355, align 1, !tbaa !2450
  %356 = load i64, i64* %PC
  %357 = add i64 %356, 1
  store i64 %357, i64* %PC
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %359 = load i64, i64* %358, align 8, !tbaa !2428
  %360 = add i64 %359, 8
  %361 = inttoptr i64 %359 to i64*
  %362 = load i64, i64* %361
  store i64 %362, i64* %RBP, align 8, !tbaa !2428
  store i64 %360, i64* %358, align 8, !tbaa !2428
  %363 = load i64, i64* %PC
  %364 = add i64 %363, 1
  store i64 %364, i64* %PC
  %365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %367 = load i64, i64* %366, align 8, !tbaa !2428
  %368 = inttoptr i64 %367 to i64*
  %369 = load i64, i64* %368
  store i64 %369, i64* %365, align 8, !tbaa !2428
  %370 = add i64 %367, 8
  store i64 %370, i64* %366, align 8, !tbaa !2428
  ret %struct.Memory* %286

block_40112f:                                     ; preds = %block_401119
  store i64 add (i64 ptrtoint (%seg_401210__rodata_type* @seg_401210__rodata to i64), i64 52), i64* %RSI, align 8, !tbaa !2428
  %371 = load i64, i64* %PC
  %372 = add i64 %371, 8
  store i64 %372, i64* %PC
  %373 = load i64, i64* @stdout
  store i64 %373, i64* %RDI, align 8, !tbaa !2428
  %374 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %375 = load i64, i64* %RBP
  %376 = sub i64 %375, 72
  %377 = load i64, i64* %PC
  %378 = add i64 %377, 5
  store i64 %378, i64* %PC
  %379 = inttoptr i64 %376 to double*
  %380 = load double, double* %379
  %381 = bitcast i8* %374 to double*
  store double %380, double* %381, align 1, !tbaa !2452
  %382 = getelementptr inbounds i8, i8* %374, i64 8
  %383 = bitcast i8* %382 to double*
  store double 0.000000e+00, double* %383, align 1, !tbaa !2452
  %384 = load i64, i64* %PC
  %385 = add i64 %384, 2
  store i64 %385, i64* %PC
  store i8 1, i8* %AL, align 1, !tbaa !2451
  %386 = load i64, i64* %PC
  %387 = sub i64 %386, 3048
  %388 = load i64, i64* %PC
  %389 = add i64 %388, 5
  %390 = load i64, i64* %PC
  %391 = add i64 %390, 5
  store i64 %391, i64* %PC
  %392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %393 = load i64, i64* %392, align 8, !tbaa !2428
  %394 = add i64 %393, -8
  %395 = inttoptr i64 %394 to i64*
  store i64 %389, i64* %395
  store i64 %394, i64* %392, align 8, !tbaa !2428
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %387, i64* %396, align 8, !tbaa !2428
  %397 = load i64, i64* %PC
  %398 = call %struct.Memory* @ext_6020b0_fprintf(%struct.State* %0, i64 %397, %struct.Memory* %235)
  %399 = load i64, i64* %RBP
  %400 = sub i64 %399, 76
  %401 = load i32, i32* %EAX
  %402 = zext i32 %401 to i64
  %403 = load i64, i64* %PC
  %404 = add i64 %403, 3
  store i64 %404, i64* %PC
  %405 = inttoptr i64 %400 to i32*
  store i32 %401, i32* %405
  %406 = load i64, i64* %PC
  %407 = add i64 %406, 38
  %408 = load i64, i64* %PC
  %409 = add i64 %408, 5
  store i64 %409, i64* %PC
  %410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %407, i64* %410, align 8, !tbaa !2428
  br label %block_401176

block_401155:                                     ; preds = %block_401119
  store i64 add (i64 ptrtoint (%seg_401210__rodata_type* @seg_401210__rodata to i64), i64 55), i64* %RSI, align 8, !tbaa !2428
  %411 = load i64, i64* %PC
  %412 = add i64 %411, 8
  store i64 %412, i64* %PC
  %413 = load i64, i64* @stdout
  store i64 %413, i64* %RDI, align 8, !tbaa !2428
  %414 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %415 = load i64, i64* %RBP
  %416 = sub i64 %415, 72
  %417 = load i64, i64* %PC
  %418 = add i64 %417, 5
  store i64 %418, i64* %PC
  %419 = inttoptr i64 %416 to double*
  %420 = load double, double* %419
  %421 = bitcast i8* %414 to double*
  store double %420, double* %421, align 1, !tbaa !2452
  %422 = getelementptr inbounds i8, i8* %414, i64 8
  %423 = bitcast i8* %422 to double*
  store double 0.000000e+00, double* %423, align 1, !tbaa !2452
  %424 = load i64, i64* %PC
  %425 = add i64 %424, 2
  store i64 %425, i64* %PC
  store i8 1, i8* %AL, align 1, !tbaa !2451
  %426 = load i64, i64* %PC
  %427 = sub i64 %426, 3086
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
  %438 = call %struct.Memory* @ext_6020b0_fprintf(%struct.State* %0, i64 %437, %struct.Memory* %235)
  %439 = load i64, i64* %RBP
  %440 = sub i64 %439, 80
  %441 = load i32, i32* %EAX
  %442 = zext i32 %441 to i64
  %443 = load i64, i64* %PC
  %444 = add i64 %443, 3
  store i64 %444, i64* %PC
  %445 = inttoptr i64 %440 to i32*
  store i32 %441, i32* %445
  br label %block_401176

block_4010ea:                                     ; preds = %block_4010f7, %block_40104f
  %MEMORY.2 = phi %struct.Memory* [ %780, %block_40104f ], [ %1015, %block_4010f7 ]
  %446 = load i64, i64* %RBP
  %447 = sub i64 %446, 20
  %448 = load i64, i64* %PC
  %449 = add i64 %448, 7
  store i64 %449, i64* %PC
  %450 = inttoptr i64 %447 to i32*
  %451 = load i32, i32* %450
  %452 = sub i32 %451, 2000
  %453 = icmp ult i32 %451, 2000
  %454 = zext i1 %453 to i8
  %455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %454, i8* %455, align 1, !tbaa !2432
  %456 = and i32 %452, 255
  %457 = call i32 @llvm.ctpop.i32(i32 %456) #16
  %458 = trunc i32 %457 to i8
  %459 = and i8 %458, 1
  %460 = xor i8 %459, 1
  %461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %460, i8* %461, align 1, !tbaa !2446
  %462 = xor i32 %451, 2000
  %463 = xor i32 %462, %452
  %464 = lshr i32 %463, 4
  %465 = trunc i32 %464 to i8
  %466 = and i8 %465, 1
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %466, i8* %467, align 1, !tbaa !2447
  %468 = icmp eq i32 %452, 0
  %469 = zext i1 %468 to i8
  %470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %469, i8* %470, align 1, !tbaa !2448
  %471 = lshr i32 %452, 31
  %472 = trunc i32 %471 to i8
  %473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %472, i8* %473, align 1, !tbaa !2449
  %474 = lshr i32 %451, 31
  %475 = xor i32 %471, %474
  %476 = add nuw nsw i32 %475, %474
  %477 = icmp eq i32 %476, 2
  %478 = zext i1 %477 to i8
  %479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %478, i8* %479, align 1, !tbaa !2450
  %480 = load i64, i64* %PC
  %481 = add i64 %480, 40
  %482 = load i64, i64* %PC
  %483 = add i64 %482, 6
  %484 = load i64, i64* %PC
  %485 = add i64 %484, 6
  store i64 %485, i64* %PC
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %487 = load i8, i8* %486, align 1, !tbaa !2449
  %488 = icmp ne i8 %487, 0
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %490 = load i8, i8* %489, align 1, !tbaa !2450
  %491 = icmp ne i8 %490, 0
  %492 = xor i1 %488, %491
  %493 = xor i1 %492, true
  %494 = zext i1 %493 to i8
  store i8 %494, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %496 = select i1 %492, i64 %483, i64 %481
  store i64 %496, i64* %495, align 8, !tbaa !2428
  %497 = load i8, i8* %BRANCH_TAKEN
  %498 = icmp eq i8 %497, 1
  %499 = load i64, i64* %RBP
  %500 = sub i64 %499, 32
  %501 = load i64, i64* %PC
  %502 = add i64 %501, 4
  store i64 %502, i64* %PC
  %503 = inttoptr i64 %500 to i64*
  %504 = load i64, i64* %503
  store i64 %504, i64* %RAX, align 8, !tbaa !2428
  br i1 %498, label %block_401119, label %block_4010f7

block_40104f:                                     ; preds = %block_40101c
  store i64 16000, i64* %RAX, align 8, !tbaa !2428
  %505 = load i32, i32* %EAX
  %506 = zext i32 %505 to i64
  %507 = load i64, i64* %PC
  %508 = add i64 %507, 2
  store i64 %508, i64* %PC
  %509 = and i64 %506, 4294967295
  store i64 %509, i64* %RDI, align 8, !tbaa !2428
  %510 = load i64, i64* %PC
  %511 = sub i64 %510, 2790
  %512 = load i64, i64* %PC
  %513 = add i64 %512, 5
  %514 = load i64, i64* %PC
  %515 = add i64 %514, 5
  store i64 %515, i64* %PC
  %516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %517 = load i64, i64* %516, align 8, !tbaa !2428
  %518 = add i64 %517, -8
  %519 = inttoptr i64 %518 to i64*
  store i64 %513, i64* %519
  store i64 %518, i64* %516, align 8, !tbaa !2428
  %520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %511, i64* %520, align 8, !tbaa !2428
  %521 = load i64, i64* %PC
  %522 = call %struct.Memory* @ext_602088_malloc(%struct.State* %0, i64 %521, %struct.Memory* %MEMORY.0)
  %523 = load i64, i64* %PC
  %524 = add i64 %523, 5
  store i64 %524, i64* %PC
  store i64 16000, i64* %RCX, align 8, !tbaa !2428
  %525 = load i32, i32* %ECX
  %526 = zext i32 %525 to i64
  %527 = load i64, i64* %PC
  %528 = add i64 %527, 2
  store i64 %528, i64* %PC
  %529 = and i64 %526, 4294967295
  store i64 %529, i64* %RDI, align 8, !tbaa !2428
  %530 = load i64, i64* %RBP
  %531 = sub i64 %530, 40
  %532 = load i64, i64* %RAX
  %533 = load i64, i64* %PC
  %534 = add i64 %533, 4
  store i64 %534, i64* %PC
  %535 = inttoptr i64 %531 to i64*
  store i64 %532, i64* %535
  %536 = load i64, i64* %PC
  %537 = sub i64 %536, 2806
  %538 = load i64, i64* %PC
  %539 = add i64 %538, 5
  %540 = load i64, i64* %PC
  %541 = add i64 %540, 5
  store i64 %541, i64* %PC
  %542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %543 = load i64, i64* %542, align 8, !tbaa !2428
  %544 = add i64 %543, -8
  %545 = inttoptr i64 %544 to i64*
  store i64 %539, i64* %545
  store i64 %544, i64* %542, align 8, !tbaa !2428
  %546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %537, i64* %546, align 8, !tbaa !2428
  %547 = load i64, i64* %PC
  %548 = call %struct.Memory* @ext_602088_malloc(%struct.State* %0, i64 %547, %struct.Memory* %522)
  %549 = load i64, i64* %PC
  %550 = add i64 %549, 5
  store i64 %550, i64* %PC
  store i64 8000, i64* %RCX, align 8, !tbaa !2428
  %551 = load i32, i32* %ECX
  %552 = zext i32 %551 to i64
  %553 = load i64, i64* %PC
  %554 = add i64 %553, 2
  store i64 %554, i64* %PC
  %555 = and i64 %552, 4294967295
  store i64 %555, i64* %RDI, align 8, !tbaa !2428
  %556 = load i64, i64* %RBP
  %557 = sub i64 %556, 48
  %558 = load i64, i64* %RAX
  %559 = load i64, i64* %PC
  %560 = add i64 %559, 4
  store i64 %560, i64* %PC
  %561 = inttoptr i64 %557 to i64*
  store i64 %558, i64* %561
  %562 = load i64, i64* %PC
  %563 = sub i64 %562, 2822
  %564 = load i64, i64* %PC
  %565 = add i64 %564, 5
  %566 = load i64, i64* %PC
  %567 = add i64 %566, 5
  store i64 %567, i64* %PC
  %568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %569 = load i64, i64* %568, align 8, !tbaa !2428
  %570 = add i64 %569, -8
  %571 = inttoptr i64 %570 to i64*
  store i64 %565, i64* %571
  store i64 %570, i64* %568, align 8, !tbaa !2428
  %572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %563, i64* %572, align 8, !tbaa !2428
  %573 = load i64, i64* %PC
  %574 = call %struct.Memory* @ext_602088_malloc(%struct.State* %0, i64 %573, %struct.Memory* %548)
  %575 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %576 = load i64, i64* %PC
  %577 = add i64 %576, 8
  store i64 %577, i64* %PC
  %578 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401210__rodata_type* @seg_401210__rodata to i64), i64 24) to double*)
  %579 = bitcast i8* %575 to double*
  store double %578, double* %579, align 1, !tbaa !2452
  %580 = getelementptr inbounds i8, i8* %575, i64 8
  %581 = bitcast i8* %580 to double*
  store double 0.000000e+00, double* %581, align 1, !tbaa !2452
  %582 = load i64, i64* %RBP
  %583 = sub i64 %582, 56
  %584 = load i64, i64* %RAX
  %585 = load i64, i64* %PC
  %586 = add i64 %585, 4
  store i64 %586, i64* %PC
  %587 = inttoptr i64 %583 to i64*
  store i64 %584, i64* %587
  %588 = load i64, i64* %RBP
  %589 = sub i64 %588, 64
  %590 = bitcast %union.vec128_t* %XMM0 to i8*
  %591 = load i64, i64* %PC
  %592 = add i64 %591, 5
  store i64 %592, i64* %PC
  %593 = bitcast i8* %590 to double*
  %594 = load double, double* %593, align 1
  %595 = inttoptr i64 %589 to double*
  store double %594, double* %595
  %596 = load i64, i64* %RBP
  %597 = sub i64 %596, 32
  %598 = load i64, i64* %PC
  %599 = add i64 %598, 4
  store i64 %599, i64* %PC
  %600 = inttoptr i64 %597 to i64*
  %601 = load i64, i64* %600
  store i64 %601, i64* %RDI, align 8, !tbaa !2428
  %602 = load i64, i64* %RBP
  %603 = sub i64 %602, 40
  %604 = load i64, i64* %PC
  %605 = add i64 %604, 4
  store i64 %605, i64* %PC
  %606 = inttoptr i64 %603 to i64*
  %607 = load i64, i64* %606
  store i64 %607, i64* %RSI, align 8, !tbaa !2428
  %608 = load i64, i64* %PC
  %609 = sub i64 %608, 2580
  %610 = load i64, i64* %PC
  %611 = add i64 %610, 5
  %612 = load i64, i64* %PC
  %613 = add i64 %612, 5
  store i64 %613, i64* %PC
  %614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %615 = load i64, i64* %614, align 8, !tbaa !2428
  %616 = add i64 %615, -8
  %617 = inttoptr i64 %616 to i64*
  store i64 %611, i64* %617
  store i64 %616, i64* %614, align 8, !tbaa !2428
  %618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %609, i64* %618, align 8, !tbaa !2428
  %619 = load i64, i64* %PC
  %620 = call %struct.Memory* @sub_400680_matgen(%struct.State* %0, i64 %619, %struct.Memory* %574)
  %621 = load i64, i64* %RBP
  %622 = sub i64 %621, 32
  %623 = load i64, i64* %PC
  %624 = add i64 %623, 4
  store i64 %624, i64* %PC
  %625 = inttoptr i64 %622 to i64*
  %626 = load i64, i64* %625
  store i64 %626, i64* %RDI, align 8, !tbaa !2428
  %627 = load i64, i64* %RBP
  %628 = sub i64 %627, 56
  %629 = load i64, i64* %PC
  %630 = add i64 %629, 4
  store i64 %630, i64* %PC
  %631 = inttoptr i64 %628 to i64*
  %632 = load i64, i64* %631
  store i64 %632, i64* %RSI, align 8, !tbaa !2428
  %633 = load i64, i64* %PC
  %634 = sub i64 %633, 1169
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
  %645 = call %struct.Memory* @sub_400c10_dgefa(%struct.State* %0, i64 %644, %struct.Memory* %620)
  %646 = load i64, i64* %RBP
  %647 = sub i64 %646, 32
  %648 = load i64, i64* %PC
  %649 = add i64 %648, 4
  store i64 %649, i64* %PC
  %650 = inttoptr i64 %647 to i64*
  %651 = load i64, i64* %650
  store i64 %651, i64* %RDI, align 8, !tbaa !2428
  %652 = load i64, i64* %RBP
  %653 = sub i64 %652, 56
  %654 = load i64, i64* %PC
  %655 = add i64 %654, 4
  store i64 %655, i64* %PC
  %656 = inttoptr i64 %653 to i64*
  %657 = load i64, i64* %656
  store i64 %657, i64* %RSI, align 8, !tbaa !2428
  %658 = load i64, i64* %RBP
  %659 = sub i64 %658, 40
  %660 = load i64, i64* %PC
  %661 = add i64 %660, 4
  store i64 %661, i64* %PC
  %662 = inttoptr i64 %659 to i64*
  %663 = load i64, i64* %662
  store i64 %663, i64* %RDX, align 8, !tbaa !2428
  %664 = load i64, i64* %PC
  %665 = sub i64 %664, 690
  %666 = load i64, i64* %PC
  %667 = add i64 %666, 5
  %668 = load i64, i64* %PC
  %669 = add i64 %668, 5
  store i64 %669, i64* %PC
  %670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %671 = load i64, i64* %670, align 8, !tbaa !2428
  %672 = add i64 %671, -8
  %673 = inttoptr i64 %672 to i64*
  store i64 %667, i64* %673
  store i64 %672, i64* %670, align 8, !tbaa !2428
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %665, i64* %674, align 8, !tbaa !2428
  %675 = load i64, i64* %PC
  %676 = call %struct.Memory* @sub_400e00_dgesl(%struct.State* %0, i64 %675, %struct.Memory* %645)
  %677 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %678 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %679 = bitcast %union.vec128_t* %XMM0 to i8*
  %680 = load i64, i64* %PC
  %681 = add i64 %680, 3
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
  %692 = xor i64 %688, %683
  %693 = xor i64 %691, %686
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
  %715 = load i64, i64* %RBP
  %716 = sub i64 %715, 56
  %717 = load i64, i64* %PC
  %718 = add i64 %717, 4
  store i64 %718, i64* %PC
  %719 = inttoptr i64 %716 to i64*
  %720 = load i64, i64* %719
  store i64 %720, i64* %RAX, align 8, !tbaa !2428
  %721 = load i64, i64* %RAX
  %722 = load i64, i64* %PC
  %723 = add i64 %722, 3
  store i64 %723, i64* %PC
  store i64 %721, i64* %RDI, align 8, !tbaa !2428
  %724 = load i64, i64* %PC
  %725 = sub i64 %724, 2950
  %726 = load i64, i64* %PC
  %727 = add i64 %726, 5
  %728 = load i64, i64* %PC
  %729 = add i64 %728, 5
  store i64 %729, i64* %PC
  %730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %731 = load i64, i64* %730, align 8, !tbaa !2428
  %732 = add i64 %731, -8
  %733 = inttoptr i64 %732 to i64*
  store i64 %727, i64* %733
  store i64 %732, i64* %730, align 8, !tbaa !2428
  %734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %725, i64* %734, align 8, !tbaa !2428
  %735 = load i64, i64* %PC
  %736 = call %struct.Memory* @ext_602098_free(%struct.State* %0, i64 %735, %struct.Memory* %676)
  %737 = load i64, i64* %RBP
  %738 = sub i64 %737, 48
  %739 = load i64, i64* %PC
  %740 = add i64 %739, 4
  store i64 %740, i64* %PC
  %741 = inttoptr i64 %738 to i64*
  %742 = load i64, i64* %741
  store i64 %742, i64* %RAX, align 8, !tbaa !2428
  %743 = load i64, i64* %RAX
  %744 = load i64, i64* %PC
  %745 = add i64 %744, 3
  store i64 %745, i64* %PC
  store i64 %743, i64* %RDI, align 8, !tbaa !2428
  %746 = load i64, i64* %PC
  %747 = sub i64 %746, 2962
  %748 = load i64, i64* %PC
  %749 = add i64 %748, 5
  %750 = load i64, i64* %PC
  %751 = add i64 %750, 5
  store i64 %751, i64* %PC
  %752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %753 = load i64, i64* %752, align 8, !tbaa !2428
  %754 = add i64 %753, -8
  %755 = inttoptr i64 %754 to i64*
  store i64 %749, i64* %755
  store i64 %754, i64* %752, align 8, !tbaa !2428
  %756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %747, i64* %756, align 8, !tbaa !2428
  %757 = load i64, i64* %PC
  %758 = call %struct.Memory* @ext_602098_free(%struct.State* %0, i64 %757, %struct.Memory* %736)
  %759 = load i64, i64* %RBP
  %760 = sub i64 %759, 40
  %761 = load i64, i64* %PC
  %762 = add i64 %761, 4
  store i64 %762, i64* %PC
  %763 = inttoptr i64 %760 to i64*
  %764 = load i64, i64* %763
  store i64 %764, i64* %RAX, align 8, !tbaa !2428
  %765 = load i64, i64* %RAX
  %766 = load i64, i64* %PC
  %767 = add i64 %766, 3
  store i64 %767, i64* %PC
  store i64 %765, i64* %RDI, align 8, !tbaa !2428
  %768 = load i64, i64* %PC
  %769 = sub i64 %768, 2974
  %770 = load i64, i64* %PC
  %771 = add i64 %770, 5
  %772 = load i64, i64* %PC
  %773 = add i64 %772, 5
  store i64 %773, i64* %PC
  %774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %775 = load i64, i64* %774, align 8, !tbaa !2428
  %776 = add i64 %775, -8
  %777 = inttoptr i64 %776 to i64*
  store i64 %771, i64* %777
  store i64 %776, i64* %774, align 8, !tbaa !2428
  %778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %769, i64* %778, align 8, !tbaa !2428
  %779 = load i64, i64* %PC
  %780 = call %struct.Memory* @ext_602098_free(%struct.State* %0, i64 %779, %struct.Memory* %758)
  %781 = load i64, i64* %RBP
  %782 = sub i64 %781, 20
  %783 = load i64, i64* %PC
  %784 = add i64 %783, 7
  store i64 %784, i64* %PC
  %785 = inttoptr i64 %782 to i32*
  store i32 0, i32* %785
  br label %block_4010ea

block_401029:                                     ; preds = %block_40101c
  store i64 16008, i64* %RAX, align 8, !tbaa !2428
  %786 = load i32, i32* %EAX
  %787 = zext i32 %786 to i64
  %788 = load i64, i64* %PC
  %789 = add i64 %788, 2
  store i64 %789, i64* %PC
  %790 = and i64 %787, 4294967295
  store i64 %790, i64* %RDI, align 8, !tbaa !2428
  %791 = load i64, i64* %PC
  %792 = sub i64 %791, 2752
  %793 = load i64, i64* %PC
  %794 = add i64 %793, 5
  %795 = load i64, i64* %PC
  %796 = add i64 %795, 5
  store i64 %796, i64* %PC
  %797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %798 = load i64, i64* %797, align 8, !tbaa !2428
  %799 = add i64 %798, -8
  %800 = inttoptr i64 %799 to i64*
  store i64 %794, i64* %800
  store i64 %799, i64* %797, align 8, !tbaa !2428
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %792, i64* %801, align 8, !tbaa !2428
  %802 = load i64, i64* %PC
  %803 = call %struct.Memory* @ext_602088_malloc(%struct.State* %0, i64 %802, %struct.Memory* %MEMORY.0)
  %804 = load i64, i64* %RBP
  %805 = sub i64 %804, 32
  %806 = load i64, i64* %PC
  %807 = add i64 %806, 4
  store i64 %807, i64* %PC
  %808 = inttoptr i64 %805 to i64*
  %809 = load i64, i64* %808
  store i64 %809, i64* %RDI, align 8, !tbaa !2428
  %810 = load i64, i64* %RBP
  %811 = sub i64 %810, 20
  %812 = load i64, i64* %PC
  %813 = add i64 %812, 4
  store i64 %813, i64* %PC
  %814 = inttoptr i64 %811 to i32*
  %815 = load i32, i32* %814
  %816 = sext i32 %815 to i64
  store i64 %816, i64* %RCX, align 8, !tbaa !2428
  %817 = load i64, i64* %RDI
  %818 = load i64, i64* %RCX
  %819 = mul i64 %818, 8
  %820 = add i64 %819, %817
  %821 = load i64, i64* %RAX
  %822 = load i64, i64* %PC
  %823 = add i64 %822, 4
  store i64 %823, i64* %PC
  %824 = inttoptr i64 %820 to i64*
  store i64 %821, i64* %824
  %825 = load i64, i64* %RBP
  %826 = sub i64 %825, 20
  %827 = load i64, i64* %PC
  %828 = add i64 %827, 3
  store i64 %828, i64* %PC
  %829 = inttoptr i64 %826 to i32*
  %830 = load i32, i32* %829
  %831 = zext i32 %830 to i64
  store i64 %831, i64* %RAX, align 8, !tbaa !2428
  %832 = load i64, i64* %RAX
  %833 = load i64, i64* %PC
  %834 = add i64 %833, 3
  store i64 %834, i64* %PC
  %835 = trunc i64 %832 to i32
  %836 = add i32 1, %835
  %837 = zext i32 %836 to i64
  store i64 %837, i64* %RAX, align 8, !tbaa !2428
  %838 = icmp ult i32 %836, %835
  %839 = icmp ult i32 %836, 1
  %840 = or i1 %838, %839
  %841 = zext i1 %840 to i8
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %841, i8* %842, align 1, !tbaa !2432
  %843 = and i32 %836, 255
  %844 = call i32 @llvm.ctpop.i32(i32 %843) #16
  %845 = trunc i32 %844 to i8
  %846 = and i8 %845, 1
  %847 = xor i8 %846, 1
  %848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %847, i8* %848, align 1, !tbaa !2446
  %849 = xor i64 1, %832
  %850 = trunc i64 %849 to i32
  %851 = xor i32 %850, %836
  %852 = lshr i32 %851, 4
  %853 = trunc i32 %852 to i8
  %854 = and i8 %853, 1
  %855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %854, i8* %855, align 1, !tbaa !2447
  %856 = icmp eq i32 %836, 0
  %857 = zext i1 %856 to i8
  %858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %857, i8* %858, align 1, !tbaa !2448
  %859 = lshr i32 %836, 31
  %860 = trunc i32 %859 to i8
  %861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %860, i8* %861, align 1, !tbaa !2449
  %862 = lshr i32 %835, 31
  %863 = xor i32 %859, %862
  %864 = add nuw nsw i32 %863, %859
  %865 = icmp eq i32 %864, 2
  %866 = zext i1 %865 to i8
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %866, i8* %867, align 1, !tbaa !2450
  %868 = load i64, i64* %RBP
  %869 = sub i64 %868, 20
  %870 = load i32, i32* %EAX
  %871 = zext i32 %870 to i64
  %872 = load i64, i64* %PC
  %873 = add i64 %872, 3
  store i64 %873, i64* %PC
  %874 = inttoptr i64 %869 to i32*
  store i32 %870, i32* %874
  %875 = load i64, i64* %PC
  %876 = sub i64 %875, 46
  %877 = load i64, i64* %PC
  %878 = add i64 %877, 5
  store i64 %878, i64* %PC
  %879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %876, i64* %879, align 8, !tbaa !2428
  br label %block_40101c

block_401005:                                     ; preds = %block_401000, %block_400f90
  %MEMORY.3 = phi %struct.Memory* [ %2, %block_400f90 ], [ %MEMORY.5, %block_401000 ]
  %880 = load i64, i64* %PC
  %881 = add i64 %880, 5
  store i64 %881, i64* %PC
  store i64 16000, i64* %RAX, align 8, !tbaa !2428
  %882 = load i32, i32* %EAX
  %883 = zext i32 %882 to i64
  %884 = load i64, i64* %PC
  %885 = add i64 %884, 2
  store i64 %885, i64* %PC
  %886 = and i64 %883, 4294967295
  store i64 %886, i64* %RDI, align 8, !tbaa !2428
  %887 = load i64, i64* %PC
  %888 = sub i64 %887, 2716
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
  %899 = call %struct.Memory* @ext_602088_malloc(%struct.State* %0, i64 %898, %struct.Memory* %MEMORY.3)
  %900 = load i64, i64* %RBP
  %901 = sub i64 %900, 32
  %902 = load i64, i64* %RAX
  %903 = load i64, i64* %PC
  %904 = add i64 %903, 4
  store i64 %904, i64* %PC
  %905 = inttoptr i64 %901 to i64*
  store i64 %902, i64* %905
  %906 = load i64, i64* %RBP
  %907 = sub i64 %906, 20
  %908 = load i64, i64* %PC
  %909 = add i64 %908, 7
  store i64 %909, i64* %PC
  %910 = inttoptr i64 %907 to i32*
  store i32 0, i32* %910
  br label %block_40101c

block_400fe4:                                     ; preds = %block_400fc7
  %911 = load i64, i64* %RBP
  %912 = sub i64 %911, 21
  %913 = load i64, i64* %PC
  %914 = add i64 %913, 4
  store i64 %914, i64* %PC
  %915 = inttoptr i64 %912 to i8*
  store i8 1, i8* %915
  %916 = load i64, i64* %PC
  %917 = add i64 %916, 24
  %918 = load i64, i64* %PC
  %919 = add i64 %918, 5
  store i64 %919, i64* %PC
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %917, i64* %920, align 8, !tbaa !2428
  br label %block_401000

block_400fbb:                                     ; preds = %block_400fed, %block_400fb4
  %MEMORY.4 = phi %struct.Memory* [ %2, %block_400fb4 ], [ %1167, %block_400fed ]
  %921 = load i64, i64* %RBP
  %922 = sub i64 %921, 20
  %923 = load i64, i64* %PC
  %924 = add i64 %923, 3
  store i64 %924, i64* %PC
  %925 = inttoptr i64 %922 to i32*
  %926 = load i32, i32* %925
  %927 = zext i32 %926 to i64
  store i64 %927, i64* %RAX, align 8, !tbaa !2428
  %928 = load i32, i32* %EAX
  %929 = zext i32 %928 to i64
  %930 = load i64, i64* %RBP
  %931 = sub i64 %930, 8
  %932 = load i64, i64* %PC
  %933 = add i64 %932, 3
  store i64 %933, i64* %PC
  %934 = inttoptr i64 %931 to i32*
  %935 = load i32, i32* %934
  %936 = sub i32 %928, %935
  %937 = icmp ult i32 %928, %935
  %938 = zext i1 %937 to i8
  %939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %938, i8* %939, align 1, !tbaa !2432
  %940 = and i32 %936, 255
  %941 = call i32 @llvm.ctpop.i32(i32 %940) #16
  %942 = trunc i32 %941 to i8
  %943 = and i8 %942, 1
  %944 = xor i8 %943, 1
  %945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %944, i8* %945, align 1, !tbaa !2446
  %946 = xor i32 %935, %928
  %947 = xor i32 %946, %936
  %948 = lshr i32 %947, 4
  %949 = trunc i32 %948 to i8
  %950 = and i8 %949, 1
  %951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %950, i8* %951, align 1, !tbaa !2447
  %952 = icmp eq i32 %936, 0
  %953 = zext i1 %952 to i8
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %953, i8* %954, align 1, !tbaa !2448
  %955 = lshr i32 %936, 31
  %956 = trunc i32 %955 to i8
  %957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %956, i8* %957, align 1, !tbaa !2449
  %958 = lshr i32 %928, 31
  %959 = lshr i32 %935, 31
  %960 = xor i32 %959, %958
  %961 = xor i32 %955, %958
  %962 = add nuw nsw i32 %961, %960
  %963 = icmp eq i32 %962, 2
  %964 = zext i1 %963 to i8
  %965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %964, i8* %965, align 1, !tbaa !2450
  %966 = load i64, i64* %PC
  %967 = add i64 %966, 63
  %968 = load i64, i64* %PC
  %969 = add i64 %968, 6
  %970 = load i64, i64* %PC
  %971 = add i64 %970, 6
  store i64 %971, i64* %PC
  %972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %973 = load i8, i8* %972, align 1, !tbaa !2449
  %974 = icmp ne i8 %973, 0
  %975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %976 = load i8, i8* %975, align 1, !tbaa !2450
  %977 = icmp ne i8 %976, 0
  %978 = xor i1 %974, %977
  %979 = xor i1 %978, true
  %980 = zext i1 %979 to i8
  store i8 %980, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %982 = select i1 %978, i64 %969, i64 %967
  store i64 %982, i64* %981, align 8, !tbaa !2428
  %983 = load i8, i8* %BRANCH_TAKEN
  %984 = icmp eq i8 %983, 1
  br i1 %984, label %block_401000, label %block_400fc7

block_4010f7:                                     ; preds = %block_4010ea
  %985 = load i64, i64* %RBP
  %986 = sub i64 %985, 20
  %987 = load i64, i64* %PC
  %988 = add i64 %987, 4
  store i64 %988, i64* %PC
  %989 = inttoptr i64 %986 to i32*
  %990 = load i32, i32* %989
  %991 = sext i32 %990 to i64
  store i64 %991, i64* %RCX, align 8, !tbaa !2428
  %992 = load i64, i64* %RAX
  %993 = load i64, i64* %RCX
  %994 = mul i64 %993, 8
  %995 = add i64 %994, %992
  %996 = load i64, i64* %PC
  %997 = add i64 %996, 4
  store i64 %997, i64* %PC
  %998 = inttoptr i64 %995 to i64*
  %999 = load i64, i64* %998
  store i64 %999, i64* %RAX, align 8, !tbaa !2428
  %1000 = load i64, i64* %RAX
  %1001 = load i64, i64* %PC
  %1002 = add i64 %1001, 3
  store i64 %1002, i64* %PC
  store i64 %1000, i64* %RDI, align 8, !tbaa !2428
  %1003 = load i64, i64* %PC
  %1004 = sub i64 %1003, 3014
  %1005 = load i64, i64* %PC
  %1006 = add i64 %1005, 5
  %1007 = load i64, i64* %PC
  %1008 = add i64 %1007, 5
  store i64 %1008, i64* %PC
  %1009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1010 = load i64, i64* %1009, align 8, !tbaa !2428
  %1011 = add i64 %1010, -8
  %1012 = inttoptr i64 %1011 to i64*
  store i64 %1006, i64* %1012
  store i64 %1011, i64* %1009, align 8, !tbaa !2428
  %1013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1004, i64* %1013, align 8, !tbaa !2428
  %1014 = load i64, i64* %PC
  %1015 = call %struct.Memory* @ext_602098_free(%struct.State* %0, i64 %1014, %struct.Memory* %MEMORY.2)
  %1016 = load i64, i64* %RBP
  %1017 = sub i64 %1016, 20
  %1018 = load i64, i64* %PC
  %1019 = add i64 %1018, 3
  store i64 %1019, i64* %PC
  %1020 = inttoptr i64 %1017 to i32*
  %1021 = load i32, i32* %1020
  %1022 = zext i32 %1021 to i64
  store i64 %1022, i64* %RAX, align 8, !tbaa !2428
  %1023 = load i64, i64* %RAX
  %1024 = load i64, i64* %PC
  %1025 = add i64 %1024, 3
  store i64 %1025, i64* %PC
  %1026 = trunc i64 %1023 to i32
  %1027 = add i32 1, %1026
  %1028 = zext i32 %1027 to i64
  store i64 %1028, i64* %RAX, align 8, !tbaa !2428
  %1029 = icmp ult i32 %1027, %1026
  %1030 = icmp ult i32 %1027, 1
  %1031 = or i1 %1029, %1030
  %1032 = zext i1 %1031 to i8
  %1033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1032, i8* %1033, align 1, !tbaa !2432
  %1034 = and i32 %1027, 255
  %1035 = call i32 @llvm.ctpop.i32(i32 %1034) #16
  %1036 = trunc i32 %1035 to i8
  %1037 = and i8 %1036, 1
  %1038 = xor i8 %1037, 1
  %1039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1038, i8* %1039, align 1, !tbaa !2446
  %1040 = xor i64 1, %1023
  %1041 = trunc i64 %1040 to i32
  %1042 = xor i32 %1041, %1027
  %1043 = lshr i32 %1042, 4
  %1044 = trunc i32 %1043 to i8
  %1045 = and i8 %1044, 1
  %1046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1045, i8* %1046, align 1, !tbaa !2447
  %1047 = icmp eq i32 %1027, 0
  %1048 = zext i1 %1047 to i8
  %1049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1048, i8* %1049, align 1, !tbaa !2448
  %1050 = lshr i32 %1027, 31
  %1051 = trunc i32 %1050 to i8
  %1052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1051, i8* %1052, align 1, !tbaa !2449
  %1053 = lshr i32 %1026, 31
  %1054 = xor i32 %1050, %1053
  %1055 = add nuw nsw i32 %1054, %1050
  %1056 = icmp eq i32 %1055, 2
  %1057 = zext i1 %1056 to i8
  %1058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1057, i8* %1058, align 1, !tbaa !2450
  %1059 = load i64, i64* %RBP
  %1060 = sub i64 %1059, 20
  %1061 = load i32, i32* %EAX
  %1062 = zext i32 %1061 to i64
  %1063 = load i64, i64* %PC
  %1064 = add i64 %1063, 3
  store i64 %1064, i64* %PC
  %1065 = inttoptr i64 %1060 to i32*
  store i32 %1061, i32* %1065
  %1066 = load i64, i64* %PC
  %1067 = sub i64 %1066, 42
  %1068 = load i64, i64* %PC
  %1069 = add i64 %1068, 5
  store i64 %1069, i64* %PC
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1067, i64* %1070, align 8, !tbaa !2428
  br label %block_4010ea

block_400fb4:                                     ; preds = %block_400f90
  %1071 = load i64, i64* %RBP
  %1072 = sub i64 %1071, 20
  %1073 = load i64, i64* %PC
  %1074 = add i64 %1073, 7
  store i64 %1074, i64* %PC
  %1075 = inttoptr i64 %1072 to i32*
  store i32 1, i32* %1075
  br label %block_400fbb

block_400fed:                                     ; preds = %block_400fc7
  %1076 = load i64, i64* %PC
  %1077 = add i64 %1076, 5
  %1078 = load i64, i64* %PC
  %1079 = add i64 %1078, 5
  store i64 %1079, i64* %PC
  %1080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1077, i64* %1080, align 8, !tbaa !2428
  %1081 = load i64, i64* %RBP
  %1082 = sub i64 %1081, 20
  %1083 = load i64, i64* %PC
  %1084 = add i64 %1083, 3
  store i64 %1084, i64* %PC
  %1085 = inttoptr i64 %1082 to i32*
  %1086 = load i32, i32* %1085
  %1087 = zext i32 %1086 to i64
  store i64 %1087, i64* %RAX, align 8, !tbaa !2428
  %1088 = load i64, i64* %RAX
  %1089 = load i64, i64* %PC
  %1090 = add i64 %1089, 3
  store i64 %1090, i64* %PC
  %1091 = trunc i64 %1088 to i32
  %1092 = add i32 1, %1091
  %1093 = zext i32 %1092 to i64
  store i64 %1093, i64* %RAX, align 8, !tbaa !2428
  %1094 = icmp ult i32 %1092, %1091
  %1095 = icmp ult i32 %1092, 1
  %1096 = or i1 %1094, %1095
  %1097 = zext i1 %1096 to i8
  %1098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1097, i8* %1098, align 1, !tbaa !2432
  %1099 = and i32 %1092, 255
  %1100 = call i32 @llvm.ctpop.i32(i32 %1099) #16
  %1101 = trunc i32 %1100 to i8
  %1102 = and i8 %1101, 1
  %1103 = xor i8 %1102, 1
  %1104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1103, i8* %1104, align 1, !tbaa !2446
  %1105 = xor i64 1, %1088
  %1106 = trunc i64 %1105 to i32
  %1107 = xor i32 %1106, %1092
  %1108 = lshr i32 %1107, 4
  %1109 = trunc i32 %1108 to i8
  %1110 = and i8 %1109, 1
  %1111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1110, i8* %1111, align 1, !tbaa !2447
  %1112 = icmp eq i32 %1092, 0
  %1113 = zext i1 %1112 to i8
  %1114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1113, i8* %1114, align 1, !tbaa !2448
  %1115 = lshr i32 %1092, 31
  %1116 = trunc i32 %1115 to i8
  %1117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1116, i8* %1117, align 1, !tbaa !2449
  %1118 = lshr i32 %1091, 31
  %1119 = xor i32 %1115, %1118
  %1120 = add nuw nsw i32 %1119, %1115
  %1121 = icmp eq i32 %1120, 2
  %1122 = zext i1 %1121 to i8
  %1123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1122, i8* %1123, align 1, !tbaa !2450
  %1124 = load i64, i64* %RBP
  %1125 = sub i64 %1124, 20
  %1126 = load i32, i32* %EAX
  %1127 = zext i32 %1126 to i64
  %1128 = load i64, i64* %PC
  %1129 = add i64 %1128, 3
  store i64 %1129, i64* %PC
  %1130 = inttoptr i64 %1125 to i32*
  store i32 %1126, i32* %1130
  %1131 = load i64, i64* %PC
  %1132 = sub i64 %1131, 64
  %1133 = load i64, i64* %PC
  %1134 = add i64 %1133, 5
  store i64 %1134, i64* %PC
  %1135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1132, i64* %1135, align 8, !tbaa !2428
  br label %block_400fbb

block_400fc7:                                     ; preds = %block_400fbb
  %1136 = load i64, i64* %RBP
  %1137 = sub i64 %1136, 16
  %1138 = load i64, i64* %PC
  %1139 = add i64 %1138, 4
  store i64 %1139, i64* %PC
  %1140 = inttoptr i64 %1137 to i64*
  %1141 = load i64, i64* %1140
  store i64 %1141, i64* %RAX, align 8, !tbaa !2428
  %1142 = load i64, i64* %RAX
  %1143 = add i64 %1142, 8
  %1144 = load i64, i64* %PC
  %1145 = add i64 %1144, 4
  store i64 %1145, i64* %PC
  %1146 = inttoptr i64 %1143 to i64*
  %1147 = load i64, i64* %1146
  store i64 %1147, i64* %RDI, align 8, !tbaa !2428
  %1148 = load i64, i64* %PC
  %1149 = add i64 %1148, 5
  store i64 %1149, i64* %PC
  store i64 and (i64 add (i64 ptrtoint (%seg_401210__rodata_type* @seg_401210__rodata to i64), i64 48), i64 4294967295), i64* %RCX, align 8, !tbaa !2428
  %1150 = load i32, i32* %ECX
  %1151 = zext i32 %1150 to i64
  %1152 = load i64, i64* %PC
  %1153 = add i64 %1152, 2
  store i64 %1153, i64* %PC
  %1154 = and i64 %1151, 4294967295
  store i64 %1154, i64* %RSI, align 8, !tbaa !2428
  %1155 = load i64, i64* %PC
  %1156 = sub i64 %1155, 2694
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
  %1167 = call %struct.Memory* @ext_6020a8_strcmp(%struct.State* %0, i64 %1166, %struct.Memory* %MEMORY.4)
  %1168 = load i32, i32* %EAX
  %1169 = zext i32 %1168 to i64
  %1170 = load i64, i64* %PC
  %1171 = add i64 %1170, 3
  store i64 %1171, i64* %PC
  %1172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1172, align 1, !tbaa !2432
  %1173 = and i32 %1168, 255
  %1174 = call i32 @llvm.ctpop.i32(i32 %1173) #16
  %1175 = trunc i32 %1174 to i8
  %1176 = and i8 %1175, 1
  %1177 = xor i8 %1176, 1
  %1178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1177, i8* %1178, align 1, !tbaa !2446
  %1179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1179, align 1, !tbaa !2447
  %1180 = icmp eq i32 %1168, 0
  %1181 = zext i1 %1180 to i8
  %1182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1181, i8* %1182, align 1, !tbaa !2448
  %1183 = lshr i32 %1168, 31
  %1184 = trunc i32 %1183 to i8
  %1185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1184, i8* %1185, align 1, !tbaa !2449
  %1186 = lshr i32 %1168, 31
  %1187 = xor i32 %1183, %1186
  %1188 = add nuw nsw i32 %1187, %1186
  %1189 = icmp eq i32 %1188, 2
  %1190 = zext i1 %1189 to i8
  %1191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1190, i8* %1191, align 1, !tbaa !2450
  %1192 = load i64, i64* %PC
  %1193 = add i64 %1192, 15
  %1194 = load i64, i64* %PC
  %1195 = add i64 %1194, 6
  %1196 = load i64, i64* %PC
  %1197 = add i64 %1196, 6
  store i64 %1197, i64* %PC
  %1198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1199 = load i8, i8* %1198, align 1, !tbaa !2448
  %1200 = icmp eq i8 %1199, 0
  %1201 = zext i1 %1200 to i8
  store i8 %1201, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1203 = select i1 %1200, i64 %1193, i64 %1195
  store i64 %1203, i64* %1202, align 8, !tbaa !2428
  %1204 = load i8, i8* %BRANCH_TAKEN
  %1205 = icmp eq i8 %1204, 1
  br i1 %1205, label %block_400fed, label %block_400fe4

block_401000:                                     ; preds = %block_400fbb, %block_400fe4
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.4, %block_400fbb ], [ %1167, %block_400fe4 ]
  %1206 = load i64, i64* %PC
  %1207 = add i64 %1206, 5
  %1208 = load i64, i64* %PC
  %1209 = add i64 %1208, 5
  store i64 %1209, i64* %PC
  %1210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1207, i64* %1210, align 8, !tbaa !2428
  br label %block_401005
}

; Function Attrs: noinline
define %struct.Memory* @sub_400680_matgen(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  %73 = load i64, i64* %RBP
  %74 = sub i64 %73, 8
  %75 = load i64, i64* %RDI
  %76 = load i64, i64* %PC
  %77 = add i64 %76, 4
  store i64 %77, i64* %PC
  %78 = inttoptr i64 %74 to i64*
  store i64 %75, i64* %78
  %79 = load i64, i64* %RBP
  %80 = sub i64 %79, 16
  %81 = load i64, i64* %RSI
  %82 = load i64, i64* %PC
  %83 = add i64 %82, 4
  store i64 %83, i64* %PC
  %84 = inttoptr i64 %80 to i64*
  store i64 %81, i64* %84
  %85 = load i64, i64* %RBP
  %86 = sub i64 %85, 20
  %87 = load i64, i64* %PC
  %88 = add i64 %87, 7
  store i64 %88, i64* %PC
  %89 = inttoptr i64 %86 to i32*
  store i32 0, i32* %89
  br label %block_400697

block_400725:                                     ; preds = %block_4006fa
  %90 = load i64, i64* %RBP
  %91 = sub i64 %90, 24
  %92 = load i64, i64* %PC
  %93 = add i64 %92, 7
  store i64 %93, i64* %PC
  %94 = inttoptr i64 %91 to i32*
  store i32 0, i32* %94
  br label %block_40072c

block_4006fa:                                     ; preds = %block_4006f3, %block_400707
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.1, %block_4006f3 ], [ %MEMORY.0, %block_400707 ]
  %95 = load i64, i64* %RBP
  %96 = sub i64 %95, 20
  %97 = load i64, i64* %PC
  %98 = add i64 %97, 7
  store i64 %98, i64* %PC
  %99 = inttoptr i64 %96 to i32*
  %100 = load i32, i32* %99
  %101 = sub i32 %100, 2000
  %102 = icmp ult i32 %100, 2000
  %103 = zext i1 %102 to i8
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %103, i8* %104, align 1, !tbaa !2432
  %105 = and i32 %101, 255
  %106 = call i32 @llvm.ctpop.i32(i32 %105) #16
  %107 = trunc i32 %106 to i8
  %108 = and i8 %107, 1
  %109 = xor i8 %108, 1
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %109, i8* %110, align 1, !tbaa !2446
  %111 = xor i32 %100, 2000
  %112 = xor i32 %111, %101
  %113 = lshr i32 %112, 4
  %114 = trunc i32 %113 to i8
  %115 = and i8 %114, 1
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %115, i8* %116, align 1, !tbaa !2447
  %117 = icmp eq i32 %101, 0
  %118 = zext i1 %117 to i8
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %118, i8* %119, align 1, !tbaa !2448
  %120 = lshr i32 %101, 31
  %121 = trunc i32 %120 to i8
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %121, i8* %122, align 1, !tbaa !2449
  %123 = lshr i32 %100, 31
  %124 = xor i32 %120, %123
  %125 = add nuw nsw i32 %124, %123
  %126 = icmp eq i32 %125, 2
  %127 = zext i1 %126 to i8
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %127, i8* %128, align 1, !tbaa !2450
  %129 = load i64, i64* %PC
  %130 = add i64 %129, 36
  %131 = load i64, i64* %PC
  %132 = add i64 %131, 6
  %133 = load i64, i64* %PC
  %134 = add i64 %133, 6
  store i64 %134, i64* %PC
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %136 = load i8, i8* %135, align 1, !tbaa !2449
  %137 = icmp ne i8 %136, 0
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %139 = load i8, i8* %138, align 1, !tbaa !2450
  %140 = icmp ne i8 %139, 0
  %141 = xor i1 %137, %140
  %142 = xor i1 %141, true
  %143 = zext i1 %142 to i8
  store i8 %143, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %145 = select i1 %141, i64 %132, i64 %130
  store i64 %145, i64* %144, align 8, !tbaa !2428
  %146 = load i8, i8* %BRANCH_TAKEN
  %147 = icmp eq i8 %146, 1
  br i1 %147, label %block_400725, label %block_400707

block_400739:                                     ; preds = %block_40072c
  %148 = load i64, i64* %RBP
  %149 = sub i64 %148, 20
  %150 = load i64, i64* %PC
  %151 = add i64 %150, 7
  store i64 %151, i64* %PC
  %152 = inttoptr i64 %149 to i32*
  store i32 0, i32* %152
  br label %block_400740

block_4006b8:                                     ; preds = %block_4006ab
  %153 = add i64 %611, 232
  %154 = load i64, i64* %PC
  %155 = add i64 %154, 5
  %156 = load i64, i64* %PC
  %157 = add i64 %156, 5
  store i64 %157, i64* %PC
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %159 = load i64, i64* %158, align 8, !tbaa !2428
  %160 = add i64 %159, -8
  %161 = inttoptr i64 %160 to i64*
  store i64 %155, i64* %161
  store i64 %160, i64* %158, align 8, !tbaa !2428
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %153, i64* %162, align 8, !tbaa !2428
  %163 = load i64, i64* %PC
  %164 = call %struct.Memory* @sub_4007a0_random_double(%struct.State* %0, i64 %163, %struct.Memory* %MEMORY.2)
  %165 = load i64, i64* %RBP
  %166 = sub i64 %165, 8
  %167 = load i64, i64* %PC
  %168 = add i64 %167, 4
  store i64 %168, i64* %PC
  %169 = inttoptr i64 %166 to i64*
  %170 = load i64, i64* %169
  store i64 %170, i64* %RAX, align 8, !tbaa !2428
  %171 = load i64, i64* %RBP
  %172 = sub i64 %171, 24
  %173 = load i64, i64* %PC
  %174 = add i64 %173, 4
  store i64 %174, i64* %PC
  %175 = inttoptr i64 %172 to i32*
  %176 = load i32, i32* %175
  %177 = sext i32 %176 to i64
  store i64 %177, i64* %RCX, align 8, !tbaa !2428
  %178 = load i64, i64* %RAX
  %179 = load i64, i64* %RCX
  %180 = mul i64 %179, 8
  %181 = add i64 %180, %178
  %182 = load i64, i64* %PC
  %183 = add i64 %182, 4
  store i64 %183, i64* %PC
  %184 = inttoptr i64 %181 to i64*
  %185 = load i64, i64* %184
  store i64 %185, i64* %RAX, align 8, !tbaa !2428
  %186 = load i64, i64* %RBP
  %187 = sub i64 %186, 20
  %188 = load i64, i64* %PC
  %189 = add i64 %188, 4
  store i64 %189, i64* %PC
  %190 = inttoptr i64 %187 to i32*
  %191 = load i32, i32* %190
  %192 = sext i32 %191 to i64
  store i64 %192, i64* %RCX, align 8, !tbaa !2428
  %193 = load i64, i64* %RAX
  %194 = load i64, i64* %RCX
  %195 = mul i64 %194, 8
  %196 = add i64 %195, %193
  %197 = bitcast %union.vec128_t* %XMM0 to i8*
  %198 = load i64, i64* %PC
  %199 = add i64 %198, 5
  store i64 %199, i64* %PC
  %200 = bitcast i8* %197 to double*
  %201 = load double, double* %200, align 1
  %202 = inttoptr i64 %196 to double*
  store double %201, double* %202
  %203 = load i64, i64* %RBP
  %204 = sub i64 %203, 24
  %205 = load i64, i64* %PC
  %206 = add i64 %205, 3
  store i64 %206, i64* %PC
  %207 = inttoptr i64 %204 to i32*
  %208 = load i32, i32* %207
  %209 = zext i32 %208 to i64
  store i64 %209, i64* %RAX, align 8, !tbaa !2428
  %210 = load i64, i64* %RAX
  %211 = load i64, i64* %PC
  %212 = add i64 %211, 3
  store i64 %212, i64* %PC
  %213 = trunc i64 %210 to i32
  %214 = add i32 1, %213
  %215 = zext i32 %214 to i64
  store i64 %215, i64* %RAX, align 8, !tbaa !2428
  %216 = icmp ult i32 %214, %213
  %217 = icmp ult i32 %214, 1
  %218 = or i1 %216, %217
  %219 = zext i1 %218 to i8
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %219, i8* %220, align 1, !tbaa !2432
  %221 = and i32 %214, 255
  %222 = call i32 @llvm.ctpop.i32(i32 %221) #16
  %223 = trunc i32 %222 to i8
  %224 = and i8 %223, 1
  %225 = xor i8 %224, 1
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %225, i8* %226, align 1, !tbaa !2446
  %227 = xor i64 1, %210
  %228 = trunc i64 %227 to i32
  %229 = xor i32 %228, %214
  %230 = lshr i32 %229, 4
  %231 = trunc i32 %230 to i8
  %232 = and i8 %231, 1
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %232, i8* %233, align 1, !tbaa !2447
  %234 = icmp eq i32 %214, 0
  %235 = zext i1 %234 to i8
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %235, i8* %236, align 1, !tbaa !2448
  %237 = lshr i32 %214, 31
  %238 = trunc i32 %237 to i8
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %238, i8* %239, align 1, !tbaa !2449
  %240 = lshr i32 %213, 31
  %241 = xor i32 %237, %240
  %242 = add nuw nsw i32 %241, %237
  %243 = icmp eq i32 %242, 2
  %244 = zext i1 %243 to i8
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %244, i8* %245, align 1, !tbaa !2450
  %246 = load i64, i64* %RBP
  %247 = sub i64 %246, 24
  %248 = load i32, i32* %EAX
  %249 = zext i32 %248 to i64
  %250 = load i64, i64* %PC
  %251 = add i64 %250, 3
  store i64 %251, i64* %PC
  %252 = inttoptr i64 %247 to i32*
  store i32 %248, i32* %252
  %253 = load i64, i64* %PC
  %254 = sub i64 %253, 48
  %255 = load i64, i64* %PC
  %256 = add i64 %255, 5
  store i64 %256, i64* %PC
  %257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %254, i64* %257, align 8, !tbaa !2428
  br label %block_4006ab

block_400697:                                     ; preds = %block_4006e0, %block_400680
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_400680 ], [ %MEMORY.2, %block_4006e0 ]
  %258 = load i64, i64* %RBP
  %259 = sub i64 %258, 20
  %260 = load i64, i64* %PC
  %261 = add i64 %260, 7
  store i64 %261, i64* %PC
  %262 = inttoptr i64 %259 to i32*
  %263 = load i32, i32* %262
  %264 = sub i32 %263, 2000
  %265 = icmp ult i32 %263, 2000
  %266 = zext i1 %265 to i8
  %267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %266, i8* %267, align 1, !tbaa !2432
  %268 = and i32 %264, 255
  %269 = call i32 @llvm.ctpop.i32(i32 %268) #16
  %270 = trunc i32 %269 to i8
  %271 = and i8 %270, 1
  %272 = xor i8 %271, 1
  %273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %272, i8* %273, align 1, !tbaa !2446
  %274 = xor i32 %263, 2000
  %275 = xor i32 %274, %264
  %276 = lshr i32 %275, 4
  %277 = trunc i32 %276 to i8
  %278 = and i8 %277, 1
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %278, i8* %279, align 1, !tbaa !2447
  %280 = icmp eq i32 %264, 0
  %281 = zext i1 %280 to i8
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %281, i8* %282, align 1, !tbaa !2448
  %283 = lshr i32 %264, 31
  %284 = trunc i32 %283 to i8
  %285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %284, i8* %285, align 1, !tbaa !2449
  %286 = lshr i32 %263, 31
  %287 = xor i32 %283, %286
  %288 = add nuw nsw i32 %287, %286
  %289 = icmp eq i32 %288, 2
  %290 = zext i1 %289 to i8
  %291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %290, i8* %291, align 1, !tbaa !2450
  %292 = load i64, i64* %PC
  %293 = add i64 %292, 85
  %294 = load i64, i64* %PC
  %295 = add i64 %294, 6
  %296 = load i64, i64* %PC
  %297 = add i64 %296, 6
  store i64 %297, i64* %PC
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %299 = load i8, i8* %298, align 1, !tbaa !2449
  %300 = icmp ne i8 %299, 0
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %302 = load i8, i8* %301, align 1, !tbaa !2450
  %303 = icmp ne i8 %302, 0
  %304 = xor i1 %300, %303
  %305 = xor i1 %304, true
  %306 = zext i1 %305 to i8
  store i8 %306, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %308 = select i1 %304, i64 %295, i64 %293
  store i64 %308, i64* %307, align 8, !tbaa !2428
  %309 = load i8, i8* %BRANCH_TAKEN
  %310 = icmp eq i8 %309, 1
  %311 = load i64, i64* %RBP
  br i1 %310, label %block_4006f3, label %block_4006a4

block_400782:                                     ; preds = %block_400740
  %312 = load i64, i64* %PC
  %313 = add i64 %312, 5
  %314 = load i64, i64* %PC
  %315 = add i64 %314, 5
  store i64 %315, i64* %PC
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %313, i64* %316, align 8, !tbaa !2428
  %317 = load i64, i64* %RBP
  %318 = sub i64 %317, 24
  %319 = load i64, i64* %PC
  %320 = add i64 %319, 3
  store i64 %320, i64* %PC
  %321 = inttoptr i64 %318 to i32*
  %322 = load i32, i32* %321
  %323 = zext i32 %322 to i64
  store i64 %323, i64* %RAX, align 8, !tbaa !2428
  %324 = load i64, i64* %RAX
  %325 = load i64, i64* %PC
  %326 = add i64 %325, 3
  store i64 %326, i64* %PC
  %327 = trunc i64 %324 to i32
  %328 = add i32 1, %327
  %329 = zext i32 %328 to i64
  store i64 %329, i64* %RAX, align 8, !tbaa !2428
  %330 = icmp ult i32 %328, %327
  %331 = icmp ult i32 %328, 1
  %332 = or i1 %330, %331
  %333 = zext i1 %332 to i8
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %333, i8* %334, align 1, !tbaa !2432
  %335 = and i32 %328, 255
  %336 = call i32 @llvm.ctpop.i32(i32 %335) #16
  %337 = trunc i32 %336 to i8
  %338 = and i8 %337, 1
  %339 = xor i8 %338, 1
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %339, i8* %340, align 1, !tbaa !2446
  %341 = xor i64 1, %324
  %342 = trunc i64 %341 to i32
  %343 = xor i32 %342, %328
  %344 = lshr i32 %343, 4
  %345 = trunc i32 %344 to i8
  %346 = and i8 %345, 1
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %346, i8* %347, align 1, !tbaa !2447
  %348 = icmp eq i32 %328, 0
  %349 = zext i1 %348 to i8
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %349, i8* %350, align 1, !tbaa !2448
  %351 = lshr i32 %328, 31
  %352 = trunc i32 %351 to i8
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %352, i8* %353, align 1, !tbaa !2449
  %354 = lshr i32 %327, 31
  %355 = xor i32 %351, %354
  %356 = add nuw nsw i32 %355, %351
  %357 = icmp eq i32 %356, 2
  %358 = zext i1 %357 to i8
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %358, i8* %359, align 1, !tbaa !2450
  %360 = load i64, i64* %RBP
  %361 = sub i64 %360, 24
  %362 = load i32, i32* %EAX
  %363 = zext i32 %362 to i64
  %364 = load i64, i64* %PC
  %365 = add i64 %364, 3
  store i64 %365, i64* %PC
  %366 = inttoptr i64 %361 to i32*
  store i32 %362, i32* %366
  %367 = load i64, i64* %PC
  %368 = sub i64 %367, 100
  %369 = load i64, i64* %PC
  %370 = add i64 %369, 5
  store i64 %370, i64* %PC
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %368, i64* %371, align 8, !tbaa !2428
  br label %block_40072c

block_400795:                                     ; preds = %block_40072c
  %372 = load i64, i64* %RSP
  %373 = load i64, i64* %PC
  %374 = add i64 %373, 4
  store i64 %374, i64* %PC
  %375 = add i64 32, %372
  store i64 %375, i64* %RSP, align 8, !tbaa !2428
  %376 = icmp ult i64 %375, %372
  %377 = icmp ult i64 %375, 32
  %378 = or i1 %376, %377
  %379 = zext i1 %378 to i8
  %380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %379, i8* %380, align 1, !tbaa !2432
  %381 = trunc i64 %375 to i32
  %382 = and i32 %381, 255
  %383 = call i32 @llvm.ctpop.i32(i32 %382) #16
  %384 = trunc i32 %383 to i8
  %385 = and i8 %384, 1
  %386 = xor i8 %385, 1
  %387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %386, i8* %387, align 1, !tbaa !2446
  %388 = xor i64 32, %372
  %389 = xor i64 %388, %375
  %390 = lshr i64 %389, 4
  %391 = trunc i64 %390 to i8
  %392 = and i8 %391, 1
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %392, i8* %393, align 1, !tbaa !2447
  %394 = icmp eq i64 %375, 0
  %395 = zext i1 %394 to i8
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %395, i8* %396, align 1, !tbaa !2448
  %397 = lshr i64 %375, 63
  %398 = trunc i64 %397 to i8
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %398, i8* %399, align 1, !tbaa !2449
  %400 = lshr i64 %372, 63
  %401 = xor i64 %397, %400
  %402 = add nuw nsw i64 %401, %397
  %403 = icmp eq i64 %402, 2
  %404 = zext i1 %403 to i8
  %405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %404, i8* %405, align 1, !tbaa !2450
  %406 = load i64, i64* %PC
  %407 = add i64 %406, 1
  store i64 %407, i64* %PC
  %408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %409 = load i64, i64* %408, align 8, !tbaa !2428
  %410 = add i64 %409, 8
  %411 = inttoptr i64 %409 to i64*
  %412 = load i64, i64* %411
  store i64 %412, i64* %RBP, align 8, !tbaa !2428
  store i64 %410, i64* %408, align 8, !tbaa !2428
  %413 = load i64, i64* %PC
  %414 = add i64 %413, 1
  store i64 %414, i64* %PC
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %417 = load i64, i64* %416, align 8, !tbaa !2428
  %418 = inttoptr i64 %417 to i64*
  %419 = load i64, i64* %418
  store i64 %419, i64* %415, align 8, !tbaa !2428
  %420 = add i64 %417, 8
  store i64 %420, i64* %416, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.4

block_40074d:                                     ; preds = %block_400740
  %421 = load i64, i64* %RBP
  %422 = sub i64 %421, 8
  %423 = load i64, i64* %PC
  %424 = add i64 %423, 4
  store i64 %424, i64* %PC
  %425 = inttoptr i64 %422 to i64*
  %426 = load i64, i64* %425
  store i64 %426, i64* %RAX, align 8, !tbaa !2428
  %427 = load i64, i64* %RBP
  %428 = sub i64 %427, 24
  %429 = load i64, i64* %PC
  %430 = add i64 %429, 4
  store i64 %430, i64* %PC
  %431 = inttoptr i64 %428 to i32*
  %432 = load i32, i32* %431
  %433 = sext i32 %432 to i64
  store i64 %433, i64* %RCX, align 8, !tbaa !2428
  %434 = load i64, i64* %RAX
  %435 = load i64, i64* %RCX
  %436 = mul i64 %435, 8
  %437 = add i64 %436, %434
  %438 = load i64, i64* %PC
  %439 = add i64 %438, 4
  store i64 %439, i64* %PC
  %440 = inttoptr i64 %437 to i64*
  %441 = load i64, i64* %440
  store i64 %441, i64* %RAX, align 8, !tbaa !2428
  %442 = load i64, i64* %RBP
  %443 = sub i64 %442, 20
  %444 = load i64, i64* %PC
  %445 = add i64 %444, 4
  store i64 %445, i64* %PC
  %446 = inttoptr i64 %443 to i32*
  %447 = load i32, i32* %446
  %448 = sext i32 %447 to i64
  store i64 %448, i64* %RCX, align 8, !tbaa !2428
  %449 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %450 = load i64, i64* %RAX
  %451 = load i64, i64* %RCX
  %452 = mul i64 %451, 8
  %453 = add i64 %452, %450
  %454 = load i64, i64* %PC
  %455 = add i64 %454, 5
  store i64 %455, i64* %PC
  %456 = inttoptr i64 %453 to double*
  %457 = load double, double* %456
  %458 = bitcast i8* %449 to double*
  store double %457, double* %458, align 1, !tbaa !2452
  %459 = getelementptr inbounds i8, i8* %449, i64 8
  %460 = bitcast i8* %459 to double*
  store double 0.000000e+00, double* %460, align 1, !tbaa !2452
  %461 = load i64, i64* %RBP
  %462 = sub i64 %461, 16
  %463 = load i64, i64* %PC
  %464 = add i64 %463, 4
  store i64 %464, i64* %PC
  %465 = inttoptr i64 %462 to i64*
  %466 = load i64, i64* %465
  store i64 %466, i64* %RAX, align 8, !tbaa !2428
  %467 = load i64, i64* %RBP
  %468 = sub i64 %467, 20
  %469 = load i64, i64* %PC
  %470 = add i64 %469, 4
  store i64 %470, i64* %PC
  %471 = inttoptr i64 %468 to i32*
  %472 = load i32, i32* %471
  %473 = sext i32 %472 to i64
  store i64 %473, i64* %RCX, align 8, !tbaa !2428
  %474 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %475 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %476 = load i64, i64* %RAX
  %477 = load i64, i64* %RCX
  %478 = mul i64 %477, 8
  %479 = add i64 %478, %476
  %480 = load i64, i64* %PC
  %481 = add i64 %480, 5
  store i64 %481, i64* %PC
  %482 = bitcast i8* %475 to double*
  %483 = load double, double* %482, align 1
  %484 = getelementptr inbounds i8, i8* %475, i64 8
  %485 = bitcast i8* %484 to i64*
  %486 = load i64, i64* %485, align 1
  %487 = inttoptr i64 %479 to double*
  %488 = load double, double* %487
  %489 = fadd double %483, %488
  %490 = bitcast i8* %474 to double*
  store double %489, double* %490, align 1, !tbaa !2452
  %491 = getelementptr inbounds i8, i8* %474, i64 8
  %492 = bitcast i8* %491 to i64*
  store i64 %486, i64* %492, align 1, !tbaa !2452
  %493 = load i64, i64* %RAX
  %494 = load i64, i64* %RCX
  %495 = mul i64 %494, 8
  %496 = add i64 %495, %493
  %497 = bitcast %union.vec128_t* %XMM0 to i8*
  %498 = load i64, i64* %PC
  %499 = add i64 %498, 5
  store i64 %499, i64* %PC
  %500 = bitcast i8* %497 to double*
  %501 = load double, double* %500, align 1
  %502 = inttoptr i64 %496 to double*
  store double %501, double* %502
  %503 = load i64, i64* %RBP
  %504 = sub i64 %503, 20
  %505 = load i64, i64* %PC
  %506 = add i64 %505, 3
  store i64 %506, i64* %PC
  %507 = inttoptr i64 %504 to i32*
  %508 = load i32, i32* %507
  %509 = zext i32 %508 to i64
  store i64 %509, i64* %RAX, align 8, !tbaa !2428
  %510 = load i64, i64* %RAX
  %511 = load i64, i64* %PC
  %512 = add i64 %511, 3
  store i64 %512, i64* %PC
  %513 = trunc i64 %510 to i32
  %514 = add i32 1, %513
  %515 = zext i32 %514 to i64
  store i64 %515, i64* %RAX, align 8, !tbaa !2428
  %516 = icmp ult i32 %514, %513
  %517 = icmp ult i32 %514, 1
  %518 = or i1 %516, %517
  %519 = zext i1 %518 to i8
  %520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %519, i8* %520, align 1, !tbaa !2432
  %521 = and i32 %514, 255
  %522 = call i32 @llvm.ctpop.i32(i32 %521) #16
  %523 = trunc i32 %522 to i8
  %524 = and i8 %523, 1
  %525 = xor i8 %524, 1
  %526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %525, i8* %526, align 1, !tbaa !2446
  %527 = xor i64 1, %510
  %528 = trunc i64 %527 to i32
  %529 = xor i32 %528, %514
  %530 = lshr i32 %529, 4
  %531 = trunc i32 %530 to i8
  %532 = and i8 %531, 1
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %532, i8* %533, align 1, !tbaa !2447
  %534 = icmp eq i32 %514, 0
  %535 = zext i1 %534 to i8
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %535, i8* %536, align 1, !tbaa !2448
  %537 = lshr i32 %514, 31
  %538 = trunc i32 %537 to i8
  %539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %538, i8* %539, align 1, !tbaa !2449
  %540 = lshr i32 %513, 31
  %541 = xor i32 %537, %540
  %542 = add nuw nsw i32 %541, %537
  %543 = icmp eq i32 %542, 2
  %544 = zext i1 %543 to i8
  %545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %544, i8* %545, align 1, !tbaa !2450
  %546 = load i64, i64* %RBP
  %547 = sub i64 %546, 20
  %548 = load i32, i32* %EAX
  %549 = zext i32 %548 to i64
  %550 = load i64, i64* %PC
  %551 = add i64 %550, 3
  store i64 %551, i64* %PC
  %552 = inttoptr i64 %547 to i32*
  store i32 %548, i32* %552
  %553 = load i64, i64* %PC
  %554 = sub i64 %553, 61
  %555 = load i64, i64* %PC
  %556 = add i64 %555, 5
  store i64 %556, i64* %PC
  %557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %554, i64* %557, align 8, !tbaa !2428
  br label %block_400740

block_4006ab:                                     ; preds = %block_4006a4, %block_4006b8
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.1, %block_4006a4 ], [ %164, %block_4006b8 ]
  %558 = load i64, i64* %RBP
  %559 = sub i64 %558, 24
  %560 = load i64, i64* %PC
  %561 = add i64 %560, 7
  store i64 %561, i64* %PC
  %562 = inttoptr i64 %559 to i32*
  %563 = load i32, i32* %562
  %564 = sub i32 %563, 2000
  %565 = icmp ult i32 %563, 2000
  %566 = zext i1 %565 to i8
  %567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %566, i8* %567, align 1, !tbaa !2432
  %568 = and i32 %564, 255
  %569 = call i32 @llvm.ctpop.i32(i32 %568) #16
  %570 = trunc i32 %569 to i8
  %571 = and i8 %570, 1
  %572 = xor i8 %571, 1
  %573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %572, i8* %573, align 1, !tbaa !2446
  %574 = xor i32 %563, 2000
  %575 = xor i32 %574, %564
  %576 = lshr i32 %575, 4
  %577 = trunc i32 %576 to i8
  %578 = and i8 %577, 1
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %578, i8* %579, align 1, !tbaa !2447
  %580 = icmp eq i32 %564, 0
  %581 = zext i1 %580 to i8
  %582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %581, i8* %582, align 1, !tbaa !2448
  %583 = lshr i32 %564, 31
  %584 = trunc i32 %583 to i8
  %585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %584, i8* %585, align 1, !tbaa !2449
  %586 = lshr i32 %563, 31
  %587 = xor i32 %583, %586
  %588 = add nuw nsw i32 %587, %586
  %589 = icmp eq i32 %588, 2
  %590 = zext i1 %589 to i8
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %590, i8* %591, align 1, !tbaa !2450
  %592 = load i64, i64* %PC
  %593 = add i64 %592, 46
  %594 = load i64, i64* %PC
  %595 = add i64 %594, 6
  %596 = load i64, i64* %PC
  %597 = add i64 %596, 6
  store i64 %597, i64* %PC
  %598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %599 = load i8, i8* %598, align 1, !tbaa !2449
  %600 = icmp ne i8 %599, 0
  %601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %602 = load i8, i8* %601, align 1, !tbaa !2450
  %603 = icmp ne i8 %602, 0
  %604 = xor i1 %600, %603
  %605 = xor i1 %604, true
  %606 = zext i1 %605 to i8
  store i8 %606, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %608 = select i1 %604, i64 %595, i64 %593
  store i64 %608, i64* %607, align 8, !tbaa !2428
  %609 = load i8, i8* %BRANCH_TAKEN
  %610 = icmp eq i8 %609, 1
  %611 = load i64, i64* %PC
  br i1 %610, label %block_4006e0, label %block_4006b8

block_4006a4:                                     ; preds = %block_400697
  %612 = sub i64 %311, 24
  %613 = load i64, i64* %PC
  %614 = add i64 %613, 7
  store i64 %614, i64* %PC
  %615 = inttoptr i64 %612 to i32*
  store i32 0, i32* %615
  br label %block_4006ab

block_400707:                                     ; preds = %block_4006fa
  %616 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %617 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %618 = bitcast %union.vec128_t* %XMM0 to i8*
  %619 = load i64, i64* %PC
  %620 = add i64 %619, 3
  store i64 %620, i64* %PC
  %621 = bitcast i8* %617 to i64*
  %622 = load i64, i64* %621, align 1
  %623 = getelementptr inbounds i8, i8* %617, i64 8
  %624 = bitcast i8* %623 to i64*
  %625 = load i64, i64* %624, align 1
  %626 = bitcast i8* %618 to i64*
  %627 = load i64, i64* %626, align 1
  %628 = getelementptr inbounds i8, i8* %618, i64 8
  %629 = bitcast i8* %628 to i64*
  %630 = load i64, i64* %629, align 1
  %631 = xor i64 %627, %622
  %632 = xor i64 %630, %625
  %633 = trunc i64 %631 to i32
  %634 = lshr i64 %631, 32
  %635 = trunc i64 %634 to i32
  %636 = bitcast i8* %616 to i32*
  store i32 %633, i32* %636, align 1, !tbaa !2454
  %637 = getelementptr inbounds i8, i8* %616, i64 4
  %638 = bitcast i8* %637 to i32*
  store i32 %635, i32* %638, align 1, !tbaa !2454
  %639 = trunc i64 %632 to i32
  %640 = getelementptr inbounds i8, i8* %616, i64 8
  %641 = bitcast i8* %640 to i32*
  store i32 %639, i32* %641, align 1, !tbaa !2454
  %642 = lshr i64 %632, 32
  %643 = trunc i64 %642 to i32
  %644 = getelementptr inbounds i8, i8* %616, i64 12
  %645 = bitcast i8* %644 to i32*
  store i32 %643, i32* %645, align 1, !tbaa !2454
  %646 = load i64, i64* %RBP
  %647 = sub i64 %646, 16
  %648 = load i64, i64* %PC
  %649 = add i64 %648, 4
  store i64 %649, i64* %PC
  %650 = inttoptr i64 %647 to i64*
  %651 = load i64, i64* %650
  store i64 %651, i64* %RAX, align 8, !tbaa !2428
  %652 = load i64, i64* %RBP
  %653 = sub i64 %652, 20
  %654 = load i64, i64* %PC
  %655 = add i64 %654, 4
  store i64 %655, i64* %PC
  %656 = inttoptr i64 %653 to i32*
  %657 = load i32, i32* %656
  %658 = sext i32 %657 to i64
  store i64 %658, i64* %RCX, align 8, !tbaa !2428
  %659 = load i64, i64* %RAX
  %660 = load i64, i64* %RCX
  %661 = mul i64 %660, 8
  %662 = add i64 %661, %659
  %663 = bitcast %union.vec128_t* %XMM0 to i8*
  %664 = load i64, i64* %PC
  %665 = add i64 %664, 5
  store i64 %665, i64* %PC
  %666 = bitcast i8* %663 to double*
  %667 = load double, double* %666, align 1
  %668 = inttoptr i64 %662 to double*
  store double %667, double* %668
  %669 = load i64, i64* %RBP
  %670 = sub i64 %669, 20
  %671 = load i64, i64* %PC
  %672 = add i64 %671, 3
  store i64 %672, i64* %PC
  %673 = inttoptr i64 %670 to i32*
  %674 = load i32, i32* %673
  %675 = zext i32 %674 to i64
  store i64 %675, i64* %RAX, align 8, !tbaa !2428
  %676 = load i64, i64* %RAX
  %677 = load i64, i64* %PC
  %678 = add i64 %677, 3
  store i64 %678, i64* %PC
  %679 = trunc i64 %676 to i32
  %680 = add i32 1, %679
  %681 = zext i32 %680 to i64
  store i64 %681, i64* %RAX, align 8, !tbaa !2428
  %682 = icmp ult i32 %680, %679
  %683 = icmp ult i32 %680, 1
  %684 = or i1 %682, %683
  %685 = zext i1 %684 to i8
  %686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %685, i8* %686, align 1, !tbaa !2432
  %687 = and i32 %680, 255
  %688 = call i32 @llvm.ctpop.i32(i32 %687) #16
  %689 = trunc i32 %688 to i8
  %690 = and i8 %689, 1
  %691 = xor i8 %690, 1
  %692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %691, i8* %692, align 1, !tbaa !2446
  %693 = xor i64 1, %676
  %694 = trunc i64 %693 to i32
  %695 = xor i32 %694, %680
  %696 = lshr i32 %695, 4
  %697 = trunc i32 %696 to i8
  %698 = and i8 %697, 1
  %699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %698, i8* %699, align 1, !tbaa !2447
  %700 = icmp eq i32 %680, 0
  %701 = zext i1 %700 to i8
  %702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %701, i8* %702, align 1, !tbaa !2448
  %703 = lshr i32 %680, 31
  %704 = trunc i32 %703 to i8
  %705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %704, i8* %705, align 1, !tbaa !2449
  %706 = lshr i32 %679, 31
  %707 = xor i32 %703, %706
  %708 = add nuw nsw i32 %707, %703
  %709 = icmp eq i32 %708, 2
  %710 = zext i1 %709 to i8
  %711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %710, i8* %711, align 1, !tbaa !2450
  %712 = load i64, i64* %RBP
  %713 = sub i64 %712, 20
  %714 = load i32, i32* %EAX
  %715 = zext i32 %714 to i64
  %716 = load i64, i64* %PC
  %717 = add i64 %716, 3
  store i64 %717, i64* %PC
  %718 = inttoptr i64 %713 to i32*
  store i32 %714, i32* %718
  %719 = load i64, i64* %PC
  %720 = sub i64 %719, 38
  %721 = load i64, i64* %PC
  %722 = add i64 %721, 5
  store i64 %722, i64* %PC
  %723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %720, i64* %723, align 8, !tbaa !2428
  br label %block_4006fa

block_400740:                                     ; preds = %block_40074d, %block_400739
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.4, %block_400739 ], [ %MEMORY.3, %block_40074d ]
  %724 = load i64, i64* %RBP
  %725 = sub i64 %724, 20
  %726 = load i64, i64* %PC
  %727 = add i64 %726, 7
  store i64 %727, i64* %PC
  %728 = inttoptr i64 %725 to i32*
  %729 = load i32, i32* %728
  %730 = sub i32 %729, 2000
  %731 = icmp ult i32 %729, 2000
  %732 = zext i1 %731 to i8
  %733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %732, i8* %733, align 1, !tbaa !2432
  %734 = and i32 %730, 255
  %735 = call i32 @llvm.ctpop.i32(i32 %734) #16
  %736 = trunc i32 %735 to i8
  %737 = and i8 %736, 1
  %738 = xor i8 %737, 1
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %738, i8* %739, align 1, !tbaa !2446
  %740 = xor i32 %729, 2000
  %741 = xor i32 %740, %730
  %742 = lshr i32 %741, 4
  %743 = trunc i32 %742 to i8
  %744 = and i8 %743, 1
  %745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %744, i8* %745, align 1, !tbaa !2447
  %746 = icmp eq i32 %730, 0
  %747 = zext i1 %746 to i8
  %748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %747, i8* %748, align 1, !tbaa !2448
  %749 = lshr i32 %730, 31
  %750 = trunc i32 %749 to i8
  %751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %750, i8* %751, align 1, !tbaa !2449
  %752 = lshr i32 %729, 31
  %753 = xor i32 %749, %752
  %754 = add nuw nsw i32 %753, %752
  %755 = icmp eq i32 %754, 2
  %756 = zext i1 %755 to i8
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %756, i8* %757, align 1, !tbaa !2450
  %758 = load i64, i64* %PC
  %759 = add i64 %758, 59
  %760 = load i64, i64* %PC
  %761 = add i64 %760, 6
  %762 = load i64, i64* %PC
  %763 = add i64 %762, 6
  store i64 %763, i64* %PC
  %764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %765 = load i8, i8* %764, align 1, !tbaa !2449
  %766 = icmp ne i8 %765, 0
  %767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %768 = load i8, i8* %767, align 1, !tbaa !2450
  %769 = icmp ne i8 %768, 0
  %770 = xor i1 %766, %769
  %771 = xor i1 %770, true
  %772 = zext i1 %771 to i8
  store i8 %772, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %774 = select i1 %770, i64 %761, i64 %759
  store i64 %774, i64* %773, align 8, !tbaa !2428
  %775 = load i8, i8* %BRANCH_TAKEN
  %776 = icmp eq i8 %775, 1
  br i1 %776, label %block_400782, label %block_40074d

block_4006f3:                                     ; preds = %block_400697
  %777 = sub i64 %311, 20
  %778 = load i64, i64* %PC
  %779 = add i64 %778, 7
  store i64 %779, i64* %PC
  %780 = inttoptr i64 %777 to i32*
  store i32 0, i32* %780
  br label %block_4006fa

block_40072c:                                     ; preds = %block_400782, %block_400725
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.0, %block_400725 ], [ %MEMORY.3, %block_400782 ]
  %781 = load i64, i64* %RBP
  %782 = sub i64 %781, 24
  %783 = load i64, i64* %PC
  %784 = add i64 %783, 7
  store i64 %784, i64* %PC
  %785 = inttoptr i64 %782 to i32*
  %786 = load i32, i32* %785
  %787 = sub i32 %786, 2000
  %788 = icmp ult i32 %786, 2000
  %789 = zext i1 %788 to i8
  %790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %789, i8* %790, align 1, !tbaa !2432
  %791 = and i32 %787, 255
  %792 = call i32 @llvm.ctpop.i32(i32 %791) #16
  %793 = trunc i32 %792 to i8
  %794 = and i8 %793, 1
  %795 = xor i8 %794, 1
  %796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %795, i8* %796, align 1, !tbaa !2446
  %797 = xor i32 %786, 2000
  %798 = xor i32 %797, %787
  %799 = lshr i32 %798, 4
  %800 = trunc i32 %799 to i8
  %801 = and i8 %800, 1
  %802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %801, i8* %802, align 1, !tbaa !2447
  %803 = icmp eq i32 %787, 0
  %804 = zext i1 %803 to i8
  %805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %804, i8* %805, align 1, !tbaa !2448
  %806 = lshr i32 %787, 31
  %807 = trunc i32 %806 to i8
  %808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %807, i8* %808, align 1, !tbaa !2449
  %809 = lshr i32 %786, 31
  %810 = xor i32 %806, %809
  %811 = add nuw nsw i32 %810, %809
  %812 = icmp eq i32 %811, 2
  %813 = zext i1 %812 to i8
  %814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %813, i8* %814, align 1, !tbaa !2450
  %815 = load i64, i64* %PC
  %816 = add i64 %815, 98
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
  br i1 %833, label %block_400795, label %block_400739

block_4006e0:                                     ; preds = %block_4006ab
  %834 = add i64 %611, 5
  %835 = load i64, i64* %PC
  %836 = add i64 %835, 5
  store i64 %836, i64* %PC
  %837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %834, i64* %837, align 8, !tbaa !2428
  %838 = load i64, i64* %RBP
  %839 = sub i64 %838, 20
  %840 = load i64, i64* %PC
  %841 = add i64 %840, 3
  store i64 %841, i64* %PC
  %842 = inttoptr i64 %839 to i32*
  %843 = load i32, i32* %842
  %844 = zext i32 %843 to i64
  store i64 %844, i64* %RAX, align 8, !tbaa !2428
  %845 = load i64, i64* %RAX
  %846 = load i64, i64* %PC
  %847 = add i64 %846, 3
  store i64 %847, i64* %PC
  %848 = trunc i64 %845 to i32
  %849 = add i32 1, %848
  %850 = zext i32 %849 to i64
  store i64 %850, i64* %RAX, align 8, !tbaa !2428
  %851 = icmp ult i32 %849, %848
  %852 = icmp ult i32 %849, 1
  %853 = or i1 %851, %852
  %854 = zext i1 %853 to i8
  %855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %854, i8* %855, align 1, !tbaa !2432
  %856 = and i32 %849, 255
  %857 = call i32 @llvm.ctpop.i32(i32 %856) #16
  %858 = trunc i32 %857 to i8
  %859 = and i8 %858, 1
  %860 = xor i8 %859, 1
  %861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %860, i8* %861, align 1, !tbaa !2446
  %862 = xor i64 1, %845
  %863 = trunc i64 %862 to i32
  %864 = xor i32 %863, %849
  %865 = lshr i32 %864, 4
  %866 = trunc i32 %865 to i8
  %867 = and i8 %866, 1
  %868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %867, i8* %868, align 1, !tbaa !2447
  %869 = icmp eq i32 %849, 0
  %870 = zext i1 %869 to i8
  %871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %870, i8* %871, align 1, !tbaa !2448
  %872 = lshr i32 %849, 31
  %873 = trunc i32 %872 to i8
  %874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %873, i8* %874, align 1, !tbaa !2449
  %875 = lshr i32 %848, 31
  %876 = xor i32 %872, %875
  %877 = add nuw nsw i32 %876, %872
  %878 = icmp eq i32 %877, 2
  %879 = zext i1 %878 to i8
  %880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %879, i8* %880, align 1, !tbaa !2450
  %881 = load i64, i64* %RBP
  %882 = sub i64 %881, 20
  %883 = load i32, i32* %EAX
  %884 = zext i32 %883 to i64
  %885 = load i64, i64* %PC
  %886 = add i64 %885, 3
  store i64 %886, i64* %PC
  %887 = inttoptr i64 %882 to i32*
  store i32 %883, i32* %887
  %888 = load i64, i64* %PC
  %889 = sub i64 %888, 87
  %890 = load i64, i64* %PC
  %891 = add i64 %890, 5
  store i64 %891, i64* %PC
  %892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %889, i64* %892, align 8, !tbaa !2428
  br label %block_400697
}

; Function Attrs: noinline
define %struct.Memory* @sub_4005d0_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4005d0:
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
  store i64 and (i64 ptrtoint (i64* @stdout to i64), i64 4294967295), i64* %RAX, align 8, !tbaa !2428
  %33 = load i64, i64* %RAX
  %34 = load i64, i64* %PC
  %35 = add i64 %34, 6
  store i64 %35, i64* %PC
  %36 = sub i64 %33, ptrtoint (i64* @stdout to i64)
  %37 = icmp ult i64 %33, ptrtoint (i64* @stdout to i64)
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
  %47 = xor i64 ptrtoint (i64* @stdout to i64), %33
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
  %60 = xor i64 lshr (i64 ptrtoint (i64* @stdout to i64), i64 63), %59
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
  br i1 %81, label %block_4005f8, label %block_4005e1

block_4005f8:                                     ; preds = %block_4005e1, %block_4005f3, %block_4005d0
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4005d0 ], [ %2, %block_4005e1 ], [ %2, %block_4005f3 ]
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

block_4005fa:                                     ; preds = %block_4005eb
  %97 = load i64, i64* %RAX
  %98 = load i64, i64* %RAX
  %99 = add i64 %98, %97
  %100 = load i16, i16* %AX
  %101 = zext i16 %100 to i64
  %102 = load i64, i64* %PC
  %103 = add i64 %102, 6
  store i64 %103, i64* %PC
  %104 = load i64, i64* %PC
  %105 = tail call %struct.Memory* @sub_400600_register_tm_clones(%struct.State* %0, i64 %104, %struct.Memory* %2)
  ret %struct.Memory* %105

block_4005f3:                                     ; preds = %block_4005eb
  %106 = load i64, i64* %RAX
  %107 = load i64, i64* %RAX
  %108 = add i64 %107, %106
  %109 = load i32, i32* %EAX
  %110 = zext i32 %109 to i64
  %111 = load i64, i64* %PC
  %112 = add i64 %111, 5
  store i64 %112, i64* %PC
  br label %block_4005f8

block_4005eb:                                     ; preds = %block_4005e1
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
  store i64 and (i64 ptrtoint (i64* @stdout to i64), i64 4294967295), i64* %RDI, align 8, !tbaa !2428
  %122 = load i64, i64* %RAX
  %123 = load i64, i64* %PC
  %124 = add i64 %123, 2
  store i64 %124, i64* %PC
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %122, i64* %125, align 8, !tbaa !2428
  %126 = load i64, i64* %PC
  switch i64 %126, label %163 [
    i64 4195834, label %block_4005fa
    i64 4195827, label %block_4005f3
  ]

block_4005e1:                                     ; preds = %block_4005d0
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
  br i1 %162, label %block_4005f8, label %block_4005eb

; <label>:163:                                    ; preds = %block_4005eb
  %164 = load i64, i64* %PC
  %165 = tail call %struct.Memory* @__remill_jump(%struct.State* %0, i64 %164, %struct.Memory* %2)
  ret %struct.Memory* %165
}

; Function Attrs: noinline
define %struct.Memory* @sub_4005c0__dl_relocate_static_pie(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4005c0:
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
define %struct.Memory* @sub_400590__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400590:
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
  store i64 ptrtoint (void ()* @callback_sub_401200___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  %108 = load i64, i64* %PC
  %109 = add i64 %108, 7
  store i64 %109, i64* %PC
  store i64 ptrtoint (void ()* @callback_sub_401190___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
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
define %struct.Memory* @sub_400c10_dgefa(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400c10:
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %EDI = bitcast %union.anon* %14 to i32*
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %16 = getelementptr inbounds %struct.GPR, %struct.GPR* %15, i32 0, i32 19
  %17 = getelementptr inbounds %struct.Reg, %struct.Reg* %16, i32 0, i32 0
  %R9D = bitcast %union.anon* %17 to i32*
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
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %40 = getelementptr inbounds %struct.GPR, %struct.GPR* %39, i32 0, i32 17
  %41 = getelementptr inbounds %struct.Reg, %struct.Reg* %40, i32 0, i32 0
  %R8 = bitcast %union.anon* %41 to i64*
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %43 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %42, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %43 to %"class.std::bitset"*
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %45 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %44, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %45 to %"class.std::bitset"*
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %47 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %46, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %47 to %union.vec128_t*
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %49 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %48, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %49 to %union.vec128_t*
  %50 = load i64, i64* %RBP
  %51 = load i64, i64* %PC
  %52 = add i64 %51, 1
  store i64 %52, i64* %PC
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %54 = load i64, i64* %53, align 8, !tbaa !2428
  %55 = add i64 %54, -8
  %56 = inttoptr i64 %55 to i64*
  store i64 %50, i64* %56
  store i64 %55, i64* %53, align 8, !tbaa !2428
  %57 = load i64, i64* %RSP
  %58 = load i64, i64* %PC
  %59 = add i64 %58, 3
  store i64 %59, i64* %PC
  store i64 %57, i64* %RBP, align 8, !tbaa !2428
  %60 = load i64, i64* %RSP
  %61 = load i64, i64* %PC
  %62 = add i64 %61, 4
  store i64 %62, i64* %PC
  %63 = sub i64 %60, 64
  store i64 %63, i64* %RSP, align 8, !tbaa !2428
  %64 = icmp ult i64 %60, 64
  %65 = zext i1 %64 to i8
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %65, i8* %66, align 1, !tbaa !2432
  %67 = trunc i64 %63 to i32
  %68 = and i32 %67, 255
  %69 = call i32 @llvm.ctpop.i32(i32 %68) #16
  %70 = trunc i32 %69 to i8
  %71 = and i8 %70, 1
  %72 = xor i8 %71, 1
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %72, i8* %73, align 1, !tbaa !2446
  %74 = xor i64 64, %60
  %75 = xor i64 %74, %63
  %76 = lshr i64 %75, 4
  %77 = trunc i64 %76 to i8
  %78 = and i8 %77, 1
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %78, i8* %79, align 1, !tbaa !2447
  %80 = icmp eq i64 %63, 0
  %81 = zext i1 %80 to i8
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %81, i8* %82, align 1, !tbaa !2448
  %83 = lshr i64 %63, 63
  %84 = trunc i64 %83 to i8
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %84, i8* %85, align 1, !tbaa !2449
  %86 = lshr i64 %60, 63
  %87 = xor i64 %83, %86
  %88 = add nuw nsw i64 %87, %86
  %89 = icmp eq i64 %88, 2
  %90 = zext i1 %89 to i8
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %90, i8* %91, align 1, !tbaa !2450
  %92 = load i64, i64* %RBP
  %93 = sub i64 %92, 8
  %94 = load i64, i64* %RDI
  %95 = load i64, i64* %PC
  %96 = add i64 %95, 4
  store i64 %96, i64* %PC
  %97 = inttoptr i64 %93 to i64*
  store i64 %94, i64* %97
  %98 = load i64, i64* %RBP
  %99 = sub i64 %98, 16
  %100 = load i64, i64* %RSI
  %101 = load i64, i64* %PC
  %102 = add i64 %101, 4
  store i64 %102, i64* %PC
  %103 = inttoptr i64 %99 to i64*
  store i64 %100, i64* %103
  %104 = load i64, i64* %RBP
  %105 = sub i64 %104, 28
  %106 = load i64, i64* %PC
  %107 = add i64 %106, 7
  store i64 %107, i64* %PC
  %108 = inttoptr i64 %105 to i32*
  store i32 0, i32* %108
  br label %block_400c27

block_400d3a:                                     ; preds = %block_400d2d
  %109 = load i64, i64* %RBP
  %110 = sub i64 %109, 8
  %111 = load i64, i64* %PC
  %112 = add i64 %111, 4
  store i64 %112, i64* %PC
  %113 = inttoptr i64 %110 to i64*
  %114 = load i64, i64* %113
  store i64 %114, i64* %RAX, align 8, !tbaa !2428
  %115 = load i64, i64* %RBP
  %116 = sub i64 %115, 32
  %117 = load i64, i64* %PC
  %118 = add i64 %117, 4
  store i64 %118, i64* %PC
  %119 = inttoptr i64 %116 to i32*
  %120 = load i32, i32* %119
  %121 = sext i32 %120 to i64
  store i64 %121, i64* %RCX, align 8, !tbaa !2428
  %122 = load i64, i64* %RAX
  %123 = load i64, i64* %RCX
  %124 = mul i64 %123, 8
  %125 = add i64 %124, %122
  %126 = load i64, i64* %PC
  %127 = add i64 %126, 4
  store i64 %127, i64* %PC
  %128 = inttoptr i64 %125 to i64*
  %129 = load i64, i64* %128
  store i64 %129, i64* %RAX, align 8, !tbaa !2428
  %130 = load i64, i64* %RBP
  %131 = sub i64 %130, 56
  %132 = load i64, i64* %RAX
  %133 = load i64, i64* %PC
  %134 = add i64 %133, 4
  store i64 %134, i64* %PC
  %135 = inttoptr i64 %131 to i64*
  store i64 %132, i64* %135
  %136 = load i64, i64* %RBP
  %137 = sub i64 %136, 56
  %138 = load i64, i64* %PC
  %139 = add i64 %138, 4
  store i64 %139, i64* %PC
  %140 = inttoptr i64 %137 to i64*
  %141 = load i64, i64* %140
  store i64 %141, i64* %RAX, align 8, !tbaa !2428
  %142 = load i64, i64* %RBP
  %143 = sub i64 %142, 48
  %144 = load i64, i64* %PC
  %145 = add i64 %144, 4
  store i64 %145, i64* %PC
  %146 = inttoptr i64 %143 to i32*
  %147 = load i32, i32* %146
  %148 = sext i32 %147 to i64
  store i64 %148, i64* %RCX, align 8, !tbaa !2428
  %149 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %150 = load i64, i64* %RAX
  %151 = load i64, i64* %RCX
  %152 = mul i64 %151, 8
  %153 = add i64 %152, %150
  %154 = load i64, i64* %PC
  %155 = add i64 %154, 5
  store i64 %155, i64* %PC
  %156 = inttoptr i64 %153 to double*
  %157 = load double, double* %156
  %158 = bitcast i8* %149 to double*
  store double %157, double* %158, align 1, !tbaa !2452
  %159 = getelementptr inbounds i8, i8* %149, i64 8
  %160 = bitcast i8* %159 to double*
  store double 0.000000e+00, double* %160, align 1, !tbaa !2452
  %161 = load i64, i64* %RBP
  %162 = sub i64 %161, 24
  %163 = bitcast %union.vec128_t* %XMM0 to i8*
  %164 = load i64, i64* %PC
  %165 = add i64 %164, 5
  store i64 %165, i64* %PC
  %166 = bitcast i8* %163 to double*
  %167 = load double, double* %166, align 1
  %168 = inttoptr i64 %162 to double*
  store double %167, double* %168
  %169 = load i64, i64* %RBP
  %170 = sub i64 %169, 48
  %171 = load i64, i64* %PC
  %172 = add i64 %171, 3
  store i64 %172, i64* %PC
  %173 = inttoptr i64 %170 to i32*
  %174 = load i32, i32* %173
  %175 = zext i32 %174 to i64
  store i64 %175, i64* %RDX, align 8, !tbaa !2428
  %176 = load i32, i32* %EDX
  %177 = zext i32 %176 to i64
  %178 = load i64, i64* %RBP
  %179 = sub i64 %178, 28
  %180 = load i64, i64* %PC
  %181 = add i64 %180, 3
  store i64 %181, i64* %PC
  %182 = inttoptr i64 %179 to i32*
  %183 = load i32, i32* %182
  %184 = sub i32 %176, %183
  %185 = icmp ult i32 %176, %183
  %186 = zext i1 %185 to i8
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %186, i8* %187, align 1, !tbaa !2432
  %188 = and i32 %184, 255
  %189 = call i32 @llvm.ctpop.i32(i32 %188) #16
  %190 = trunc i32 %189 to i8
  %191 = and i8 %190, 1
  %192 = xor i8 %191, 1
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %192, i8* %193, align 1, !tbaa !2446
  %194 = xor i32 %183, %176
  %195 = xor i32 %194, %184
  %196 = lshr i32 %195, 4
  %197 = trunc i32 %196 to i8
  %198 = and i8 %197, 1
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %198, i8* %199, align 1, !tbaa !2447
  %200 = icmp eq i32 %184, 0
  %201 = zext i1 %200 to i8
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %201, i8* %202, align 1, !tbaa !2448
  %203 = lshr i32 %184, 31
  %204 = trunc i32 %203 to i8
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %204, i8* %205, align 1, !tbaa !2449
  %206 = lshr i32 %176, 31
  %207 = lshr i32 %183, 31
  %208 = xor i32 %207, %206
  %209 = xor i32 %203, %206
  %210 = add nuw nsw i32 %209, %208
  %211 = icmp eq i32 %210, 2
  %212 = zext i1 %211 to i8
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %212, i8* %213, align 1, !tbaa !2450
  %214 = load i64, i64* %PC
  %215 = add i64 %214, 50
  %216 = load i64, i64* %PC
  %217 = add i64 %216, 6
  %218 = load i64, i64* %PC
  %219 = add i64 %218, 6
  store i64 %219, i64* %PC
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %221 = load i8, i8* %220, align 1, !tbaa !2448
  store i8 %221, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %223 = icmp ne i8 %221, 0
  %224 = select i1 %223, i64 %215, i64 %217
  store i64 %224, i64* %222, align 8, !tbaa !2428
  %225 = load i8, i8* %BRANCH_TAKEN
  %226 = icmp eq i8 %225, 1
  br i1 %226, label %block_400d94, label %block_400d68

block_400dd6:                                     ; preds = %block_400c9e, %block_400dd1
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.1, %block_400dd1 ], [ %661, %block_400c9e ]
  %227 = load i64, i64* %PC
  %228 = add i64 %227, 5
  %229 = load i64, i64* %PC
  %230 = add i64 %229, 5
  store i64 %230, i64* %PC
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %228, i64* %231, align 8, !tbaa !2428
  %232 = load i64, i64* %RBP
  %233 = sub i64 %232, 28
  %234 = load i64, i64* %PC
  %235 = add i64 %234, 3
  store i64 %235, i64* %PC
  %236 = inttoptr i64 %233 to i32*
  %237 = load i32, i32* %236
  %238 = zext i32 %237 to i64
  store i64 %238, i64* %RAX, align 8, !tbaa !2428
  %239 = load i64, i64* %RAX
  %240 = load i64, i64* %PC
  %241 = add i64 %240, 3
  store i64 %241, i64* %PC
  %242 = trunc i64 %239 to i32
  %243 = add i32 1, %242
  %244 = zext i32 %243 to i64
  store i64 %244, i64* %RAX, align 8, !tbaa !2428
  %245 = icmp ult i32 %243, %242
  %246 = icmp ult i32 %243, 1
  %247 = or i1 %245, %246
  %248 = zext i1 %247 to i8
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %248, i8* %249, align 1, !tbaa !2432
  %250 = and i32 %243, 255
  %251 = call i32 @llvm.ctpop.i32(i32 %250) #16
  %252 = trunc i32 %251 to i8
  %253 = and i8 %252, 1
  %254 = xor i8 %253, 1
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %254, i8* %255, align 1, !tbaa !2446
  %256 = xor i64 1, %239
  %257 = trunc i64 %256 to i32
  %258 = xor i32 %257, %243
  %259 = lshr i32 %258, 4
  %260 = trunc i32 %259 to i8
  %261 = and i8 %260, 1
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %261, i8* %262, align 1, !tbaa !2447
  %263 = icmp eq i32 %243, 0
  %264 = zext i1 %263 to i8
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %264, i8* %265, align 1, !tbaa !2448
  %266 = lshr i32 %243, 31
  %267 = trunc i32 %266 to i8
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %267, i8* %268, align 1, !tbaa !2449
  %269 = lshr i32 %242, 31
  %270 = xor i32 %266, %269
  %271 = add nuw nsw i32 %270, %266
  %272 = icmp eq i32 %271, 2
  %273 = zext i1 %272 to i8
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %273, i8* %274, align 1, !tbaa !2450
  %275 = load i64, i64* %RBP
  %276 = sub i64 %275, 28
  %277 = load i32, i32* %EAX
  %278 = zext i32 %277 to i64
  %279 = load i64, i64* %PC
  %280 = add i64 %279, 3
  store i64 %280, i64* %PC
  %281 = inttoptr i64 %276 to i32*
  store i32 %277, i32* %281
  %282 = load i64, i64* %PC
  %283 = sub i64 %282, 445
  %284 = load i64, i64* %PC
  %285 = add i64 %284, 5
  store i64 %285, i64* %PC
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %283, i64* %286, align 8, !tbaa !2428
  br label %block_400c27

block_400d2d:                                     ; preds = %block_400d94, %block_400ced
  %MEMORY.1 = phi %struct.Memory* [ %824, %block_400ced ], [ %940, %block_400d94 ]
  %287 = load i64, i64* %RBP
  %288 = sub i64 %287, 32
  %289 = load i64, i64* %PC
  %290 = add i64 %289, 7
  store i64 %290, i64* %PC
  %291 = inttoptr i64 %288 to i32*
  %292 = load i32, i32* %291
  %293 = sub i32 %292, 2000
  %294 = icmp ult i32 %292, 2000
  %295 = zext i1 %294 to i8
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %295, i8* %296, align 1, !tbaa !2432
  %297 = and i32 %293, 255
  %298 = call i32 @llvm.ctpop.i32(i32 %297) #16
  %299 = trunc i32 %298 to i8
  %300 = and i8 %299, 1
  %301 = xor i8 %300, 1
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %301, i8* %302, align 1, !tbaa !2446
  %303 = xor i32 %292, 2000
  %304 = xor i32 %303, %293
  %305 = lshr i32 %304, 4
  %306 = trunc i32 %305 to i8
  %307 = and i8 %306, 1
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %307, i8* %308, align 1, !tbaa !2447
  %309 = icmp eq i32 %293, 0
  %310 = zext i1 %309 to i8
  %311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %310, i8* %311, align 1, !tbaa !2448
  %312 = lshr i32 %293, 31
  %313 = trunc i32 %312 to i8
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %313, i8* %314, align 1, !tbaa !2449
  %315 = lshr i32 %292, 31
  %316 = xor i32 %312, %315
  %317 = add nuw nsw i32 %316, %315
  %318 = icmp eq i32 %317, 2
  %319 = zext i1 %318 to i8
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %319, i8* %320, align 1, !tbaa !2450
  %321 = load i64, i64* %PC
  %322 = add i64 %321, 157
  %323 = load i64, i64* %PC
  %324 = add i64 %323, 6
  %325 = load i64, i64* %PC
  %326 = add i64 %325, 6
  store i64 %326, i64* %PC
  %327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %328 = load i8, i8* %327, align 1, !tbaa !2449
  %329 = icmp ne i8 %328, 0
  %330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %331 = load i8, i8* %330, align 1, !tbaa !2450
  %332 = icmp ne i8 %331, 0
  %333 = xor i1 %329, %332
  %334 = xor i1 %333, true
  %335 = zext i1 %334 to i8
  store i8 %335, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %337 = select i1 %333, i64 %324, i64 %322
  store i64 %337, i64* %336, align 8, !tbaa !2428
  %338 = load i8, i8* %BRANCH_TAKEN
  %339 = icmp eq i8 %338, 1
  br i1 %339, label %block_400dd1, label %block_400d3a

block_400c34:                                     ; preds = %block_400c27
  %340 = load i64, i64* %PC
  %341 = add i64 %340, 5
  store i64 %341, i64* %PC
  store i64 1, i64* %RCX, align 8, !tbaa !2428
  %342 = load i64, i64* %PC
  %343 = add i64 %342, 5
  store i64 %343, i64* %PC
  store i64 2000, i64* %RAX, align 8, !tbaa !2428
  %344 = load i64, i64* %RBP
  %345 = sub i64 %344, 8
  %346 = load i64, i64* %PC
  %347 = add i64 %346, 4
  store i64 %347, i64* %PC
  %348 = inttoptr i64 %345 to i64*
  %349 = load i64, i64* %348
  store i64 %349, i64* %RDX, align 8, !tbaa !2428
  %350 = load i64, i64* %RBP
  %351 = sub i64 %350, 28
  %352 = load i64, i64* %PC
  %353 = add i64 %352, 4
  store i64 %353, i64* %PC
  %354 = inttoptr i64 %351 to i32*
  %355 = load i32, i32* %354
  %356 = sext i32 %355 to i64
  store i64 %356, i64* %RSI, align 8, !tbaa !2428
  %357 = load i64, i64* %RDX
  %358 = load i64, i64* %RSI
  %359 = mul i64 %358, 8
  %360 = add i64 %359, %357
  %361 = load i64, i64* %PC
  %362 = add i64 %361, 4
  store i64 %362, i64* %PC
  %363 = inttoptr i64 %360 to i64*
  %364 = load i64, i64* %363
  store i64 %364, i64* %RDX, align 8, !tbaa !2428
  %365 = load i64, i64* %RBP
  %366 = sub i64 %365, 40
  %367 = load i64, i64* %RDX
  %368 = load i64, i64* %PC
  %369 = add i64 %368, 4
  store i64 %369, i64* %PC
  %370 = inttoptr i64 %366 to i64*
  store i64 %367, i64* %370
  %371 = load i64, i64* %RBP
  %372 = sub i64 %371, 28
  %373 = load i64, i64* %PC
  %374 = add i64 %373, 3
  store i64 %374, i64* %PC
  %375 = inttoptr i64 %372 to i32*
  %376 = load i32, i32* %375
  %377 = zext i32 %376 to i64
  store i64 %377, i64* %RDI, align 8, !tbaa !2428
  %378 = load i64, i64* %RDI
  %379 = load i64, i64* %PC
  %380 = add i64 %379, 3
  store i64 %380, i64* %PC
  %381 = trunc i64 %378 to i32
  %382 = add i32 1, %381
  %383 = zext i32 %382 to i64
  store i64 %383, i64* %RDI, align 8, !tbaa !2428
  %384 = icmp ult i32 %382, %381
  %385 = icmp ult i32 %382, 1
  %386 = or i1 %384, %385
  %387 = zext i1 %386 to i8
  %388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %387, i8* %388, align 1, !tbaa !2432
  %389 = and i32 %382, 255
  %390 = call i32 @llvm.ctpop.i32(i32 %389) #16
  %391 = trunc i32 %390 to i8
  %392 = and i8 %391, 1
  %393 = xor i8 %392, 1
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %393, i8* %394, align 1, !tbaa !2446
  %395 = xor i64 1, %378
  %396 = trunc i64 %395 to i32
  %397 = xor i32 %396, %382
  %398 = lshr i32 %397, 4
  %399 = trunc i32 %398 to i8
  %400 = and i8 %399, 1
  %401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %400, i8* %401, align 1, !tbaa !2447
  %402 = icmp eq i32 %382, 0
  %403 = zext i1 %402 to i8
  %404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %403, i8* %404, align 1, !tbaa !2448
  %405 = lshr i32 %382, 31
  %406 = trunc i32 %405 to i8
  %407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %406, i8* %407, align 1, !tbaa !2449
  %408 = lshr i32 %381, 31
  %409 = xor i32 %405, %408
  %410 = add nuw nsw i32 %409, %405
  %411 = icmp eq i32 %410, 2
  %412 = zext i1 %411 to i8
  %413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %412, i8* %413, align 1, !tbaa !2450
  %414 = load i64, i64* %RBP
  %415 = sub i64 %414, 44
  %416 = load i32, i32* %EDI
  %417 = zext i32 %416 to i64
  %418 = load i64, i64* %PC
  %419 = add i64 %418, 3
  store i64 %419, i64* %PC
  %420 = inttoptr i64 %415 to i32*
  store i32 %416, i32* %420
  %421 = load i64, i64* %RAX
  %422 = load i64, i64* %RBP
  %423 = sub i64 %422, 28
  %424 = load i64, i64* %PC
  %425 = add i64 %424, 3
  store i64 %425, i64* %PC
  %426 = trunc i64 %421 to i32
  %427 = inttoptr i64 %423 to i32*
  %428 = load i32, i32* %427
  %429 = sub i32 %426, %428
  %430 = zext i32 %429 to i64
  store i64 %430, i64* %RAX, align 8, !tbaa !2428
  %431 = icmp ult i32 %426, %428
  %432 = zext i1 %431 to i8
  %433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %432, i8* %433, align 1, !tbaa !2432
  %434 = and i32 %429, 255
  %435 = call i32 @llvm.ctpop.i32(i32 %434) #16
  %436 = trunc i32 %435 to i8
  %437 = and i8 %436, 1
  %438 = xor i8 %437, 1
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %438, i8* %439, align 1, !tbaa !2446
  %440 = xor i32 %428, %426
  %441 = xor i32 %440, %429
  %442 = lshr i32 %441, 4
  %443 = trunc i32 %442 to i8
  %444 = and i8 %443, 1
  %445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %444, i8* %445, align 1, !tbaa !2447
  %446 = icmp eq i32 %429, 0
  %447 = zext i1 %446 to i8
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %447, i8* %448, align 1, !tbaa !2448
  %449 = lshr i32 %429, 31
  %450 = trunc i32 %449 to i8
  %451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %450, i8* %451, align 1, !tbaa !2449
  %452 = lshr i32 %426, 31
  %453 = lshr i32 %428, 31
  %454 = xor i32 %453, %452
  %455 = xor i32 %449, %452
  %456 = add nuw nsw i32 %455, %454
  %457 = icmp eq i32 %456, 2
  %458 = zext i1 %457 to i8
  %459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %458, i8* %459, align 1, !tbaa !2450
  %460 = load i64, i64* %RBP
  %461 = sub i64 %460, 40
  %462 = load i64, i64* %PC
  %463 = add i64 %462, 4
  store i64 %463, i64* %PC
  %464 = inttoptr i64 %461 to i64*
  %465 = load i64, i64* %464
  store i64 %465, i64* %RSI, align 8, !tbaa !2428
  %466 = load i64, i64* %RBP
  %467 = sub i64 %466, 28
  %468 = load i64, i64* %PC
  %469 = add i64 %468, 3
  store i64 %469, i64* %PC
  %470 = inttoptr i64 %467 to i32*
  %471 = load i32, i32* %470
  %472 = zext i32 %471 to i64
  store i64 %472, i64* %RDX, align 8, !tbaa !2428
  %473 = load i32, i32* %EAX
  %474 = zext i32 %473 to i64
  %475 = load i64, i64* %PC
  %476 = add i64 %475, 2
  store i64 %476, i64* %PC
  %477 = and i64 %474, 4294967295
  store i64 %477, i64* %RDI, align 8, !tbaa !2428
  %478 = load i64, i64* %PC
  %479 = sub i64 %478, 1027
  %480 = load i64, i64* %PC
  %481 = add i64 %480, 5
  %482 = load i64, i64* %PC
  %483 = add i64 %482, 5
  store i64 %483, i64* %PC
  %484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %485 = load i64, i64* %484, align 8, !tbaa !2428
  %486 = add i64 %485, -8
  %487 = inttoptr i64 %486 to i64*
  store i64 %481, i64* %487
  store i64 %486, i64* %484, align 8, !tbaa !2428
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %479, i64* %488, align 8, !tbaa !2428
  %489 = load i64, i64* %PC
  %490 = call %struct.Memory* @sub_400860_idamax(%struct.State* %0, i64 %489, %struct.Memory* %MEMORY.4)
  %491 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %492 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %493 = bitcast %union.vec128_t* %XMM0 to i8*
  %494 = load i64, i64* %PC
  %495 = add i64 %494, 3
  store i64 %495, i64* %PC
  %496 = bitcast i8* %492 to i64*
  %497 = load i64, i64* %496, align 1
  %498 = getelementptr inbounds i8, i8* %492, i64 8
  %499 = bitcast i8* %498 to i64*
  %500 = load i64, i64* %499, align 1
  %501 = bitcast i8* %493 to i64*
  %502 = load i64, i64* %501, align 1
  %503 = getelementptr inbounds i8, i8* %493, i64 8
  %504 = bitcast i8* %503 to i64*
  %505 = load i64, i64* %504, align 1
  %506 = xor i64 %502, %497
  %507 = xor i64 %505, %500
  %508 = trunc i64 %506 to i32
  %509 = lshr i64 %506, 32
  %510 = trunc i64 %509 to i32
  %511 = bitcast i8* %491 to i32*
  store i32 %508, i32* %511, align 1, !tbaa !2454
  %512 = getelementptr inbounds i8, i8* %491, i64 4
  %513 = bitcast i8* %512 to i32*
  store i32 %510, i32* %513, align 1, !tbaa !2454
  %514 = trunc i64 %507 to i32
  %515 = getelementptr inbounds i8, i8* %491, i64 8
  %516 = bitcast i8* %515 to i32*
  store i32 %514, i32* %516, align 1, !tbaa !2454
  %517 = lshr i64 %507, 32
  %518 = trunc i64 %517 to i32
  %519 = getelementptr inbounds i8, i8* %491, i64 12
  %520 = bitcast i8* %519 to i32*
  store i32 %518, i32* %520, align 1, !tbaa !2454
  %521 = load i64, i64* %RAX
  %522 = load i64, i64* %RBP
  %523 = sub i64 %522, 28
  %524 = load i64, i64* %PC
  %525 = add i64 %524, 3
  store i64 %525, i64* %PC
  %526 = trunc i64 %521 to i32
  %527 = inttoptr i64 %523 to i32*
  %528 = load i32, i32* %527
  %529 = add i32 %528, %526
  %530 = zext i32 %529 to i64
  store i64 %530, i64* %RAX, align 8, !tbaa !2428
  %531 = icmp ult i32 %529, %526
  %532 = icmp ult i32 %529, %528
  %533 = or i1 %531, %532
  %534 = zext i1 %533 to i8
  %535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %534, i8* %535, align 1, !tbaa !2432
  %536 = and i32 %529, 255
  %537 = call i32 @llvm.ctpop.i32(i32 %536) #16
  %538 = trunc i32 %537 to i8
  %539 = and i8 %538, 1
  %540 = xor i8 %539, 1
  %541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %540, i8* %541, align 1, !tbaa !2446
  %542 = xor i32 %528, %526
  %543 = xor i32 %542, %529
  %544 = lshr i32 %543, 4
  %545 = trunc i32 %544 to i8
  %546 = and i8 %545, 1
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %546, i8* %547, align 1, !tbaa !2447
  %548 = icmp eq i32 %529, 0
  %549 = zext i1 %548 to i8
  %550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %549, i8* %550, align 1, !tbaa !2448
  %551 = lshr i32 %529, 31
  %552 = trunc i32 %551 to i8
  %553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %552, i8* %553, align 1, !tbaa !2449
  %554 = lshr i32 %526, 31
  %555 = lshr i32 %528, 31
  %556 = xor i32 %551, %554
  %557 = xor i32 %551, %555
  %558 = add nuw nsw i32 %556, %557
  %559 = icmp eq i32 %558, 2
  %560 = zext i1 %559 to i8
  %561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %560, i8* %561, align 1, !tbaa !2450
  %562 = load i64, i64* %RBP
  %563 = sub i64 %562, 48
  %564 = load i32, i32* %EAX
  %565 = zext i32 %564 to i64
  %566 = load i64, i64* %PC
  %567 = add i64 %566, 3
  store i64 %567, i64* %PC
  %568 = inttoptr i64 %563 to i32*
  store i32 %564, i32* %568
  %569 = load i64, i64* %RBP
  %570 = sub i64 %569, 48
  %571 = load i64, i64* %PC
  %572 = add i64 %571, 3
  store i64 %572, i64* %PC
  %573 = inttoptr i64 %570 to i32*
  %574 = load i32, i32* %573
  %575 = zext i32 %574 to i64
  store i64 %575, i64* %RAX, align 8, !tbaa !2428
  %576 = load i64, i64* %RBP
  %577 = sub i64 %576, 16
  %578 = load i64, i64* %PC
  %579 = add i64 %578, 4
  store i64 %579, i64* %PC
  %580 = inttoptr i64 %577 to i64*
  %581 = load i64, i64* %580
  store i64 %581, i64* %RSI, align 8, !tbaa !2428
  %582 = load i64, i64* %RBP
  %583 = sub i64 %582, 28
  %584 = load i64, i64* %PC
  %585 = add i64 %584, 4
  store i64 %585, i64* %PC
  %586 = inttoptr i64 %583 to i32*
  %587 = load i32, i32* %586
  %588 = sext i32 %587 to i64
  store i64 %588, i64* %R8, align 8, !tbaa !2428
  %589 = load i64, i64* %RSI
  %590 = load i64, i64* %R8
  %591 = mul i64 %590, 4
  %592 = add i64 %591, %589
  %593 = load i32, i32* %EAX
  %594 = zext i32 %593 to i64
  %595 = load i64, i64* %PC
  %596 = add i64 %595, 4
  store i64 %596, i64* %PC
  %597 = inttoptr i64 %592 to i32*
  store i32 %593, i32* %597
  %598 = load i64, i64* %RBP
  %599 = sub i64 %598, 40
  %600 = load i64, i64* %PC
  %601 = add i64 %600, 4
  store i64 %601, i64* %PC
  %602 = inttoptr i64 %599 to i64*
  %603 = load i64, i64* %602
  store i64 %603, i64* %RSI, align 8, !tbaa !2428
  %604 = load i64, i64* %RBP
  %605 = sub i64 %604, 48
  %606 = load i64, i64* %PC
  %607 = add i64 %606, 4
  store i64 %607, i64* %PC
  %608 = inttoptr i64 %605 to i32*
  %609 = load i32, i32* %608
  %610 = sext i32 %609 to i64
  store i64 %610, i64* %R8, align 8, !tbaa !2428
  %611 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %612 = load i64, i64* %RSI
  %613 = load i64, i64* %R8
  %614 = mul i64 %613, 8
  %615 = add i64 %614, %612
  %616 = load i64, i64* %PC
  %617 = add i64 %616, 6
  store i64 %617, i64* %PC
  %618 = inttoptr i64 %615 to double*
  %619 = load double, double* %618
  %620 = bitcast i8* %611 to double*
  store double %619, double* %620, align 1, !tbaa !2452
  %621 = getelementptr inbounds i8, i8* %611, i64 8
  %622 = bitcast i8* %621 to double*
  store double 0.000000e+00, double* %622, align 1, !tbaa !2452
  %623 = bitcast %union.vec128_t* %XMM1 to i8*
  %624 = bitcast %union.vec128_t* %XMM0 to i8*
  %625 = load i64, i64* %PC
  %626 = add i64 %625, 4
  store i64 %626, i64* %PC
  %627 = bitcast i8* %623 to double*
  %628 = load double, double* %627, align 1
  %629 = bitcast i8* %624 to double*
  %630 = load double, double* %629, align 1
  %631 = fcmp uno double %628, %630
  br i1 %631, label %632, label %644

; <label>:632:                                    ; preds = %block_400c34
  %633 = fadd double %628, %630
  %634 = bitcast double %633 to i64
  %635 = and i64 %634, 9221120237041090560
  %636 = icmp eq i64 %635, 9218868437227405312
  %637 = and i64 %634, 2251799813685247
  %638 = icmp ne i64 %637, 0
  %639 = and i1 %636, %638
  br i1 %639, label %640, label %650

; <label>:640:                                    ; preds = %632
  %641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %642 = load i64, i64* %641, align 8, !tbaa !2428
  %643 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %642, %struct.Memory* %490) #17
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:644:                                    ; preds = %block_400c34
  %645 = fcmp ogt double %628, %630
  br i1 %645, label %650, label %646

; <label>:646:                                    ; preds = %644
  %647 = fcmp olt double %628, %630
  br i1 %647, label %650, label %648

; <label>:648:                                    ; preds = %646
  %649 = fcmp oeq double %628, %630
  br i1 %649, label %650, label %657

; <label>:650:                                    ; preds = %648, %646, %644, %632
  %651 = phi i8 [ 0, %644 ], [ 0, %646 ], [ 1, %648 ], [ 1, %632 ]
  %652 = phi i8 [ 0, %644 ], [ 0, %646 ], [ 0, %648 ], [ 1, %632 ]
  %653 = phi i8 [ 0, %644 ], [ 1, %646 ], [ 0, %648 ], [ 1, %632 ]
  %654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %651, i8* %654, align 1, !tbaa !2451
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %652, i8* %655, align 1, !tbaa !2451
  %656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %653, i8* %656, align 1, !tbaa !2451
  br label %657

; <label>:657:                                    ; preds = %650, %648
  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %658, align 1, !tbaa !2451
  %659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %659, align 1, !tbaa !2451
  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %660, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %640, %657
  %661 = phi %struct.Memory* [ %643, %640 ], [ %490, %657 ]
  %662 = load i64, i64* %PC
  %663 = add i64 %662, 17
  %664 = load i64, i64* %PC
  %665 = add i64 %664, 6
  %666 = load i64, i64* %PC
  %667 = add i64 %666, 6
  store i64 %667, i64* %PC
  %668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %669 = load i8, i8* %668, align 1, !tbaa !2448
  %670 = icmp eq i8 %669, 0
  %671 = zext i1 %670 to i8
  store i8 %671, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %673 = select i1 %670, i64 %663, i64 %665
  store i64 %673, i64* %672, align 8, !tbaa !2428
  %674 = load i8, i8* %BRANCH_TAKEN
  %675 = icmp eq i8 %674, 1
  br i1 %675, label %block_400ca3, label %block_400c98

block_400dd1:                                     ; preds = %block_400d2d
  %676 = load i64, i64* %PC
  %677 = add i64 %676, 5
  %678 = load i64, i64* %PC
  %679 = add i64 %678, 5
  store i64 %679, i64* %PC
  %680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %677, i64* %680, align 8, !tbaa !2428
  br label %block_400dd6

block_400c98:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit
  %681 = load i64, i64* %PC
  %682 = add i64 %681, 11
  %683 = load i64, i64* %PC
  %684 = add i64 %683, 6
  %685 = load i64, i64* %PC
  %686 = add i64 %685, 6
  store i64 %686, i64* %PC
  %687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %688 = load i8, i8* %687, align 1, !tbaa !2446
  store i8 %688, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %690 = icmp ne i8 %688, 0
  %691 = select i1 %690, i64 %682, i64 %684
  store i64 %691, i64* %689, align 8, !tbaa !2428
  %692 = load i8, i8* %BRANCH_TAKEN
  %693 = icmp eq i8 %692, 1
  br i1 %693, label %block_400ca3, label %block_400c9e

block_400ced:                                     ; preds = %block_400ca3, %block_400caf
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.5, %block_400ca3 ], [ %MEMORY.5, %block_400caf ]
  %694 = load i64, i64* %PC
  %695 = add i64 %694, 5
  store i64 %695, i64* %PC
  store i64 1, i64* %RCX, align 8, !tbaa !2428
  %696 = load i64, i64* %PC
  %697 = add i64 %696, 5
  store i64 %697, i64* %PC
  store i64 2000, i64* %RAX, align 8, !tbaa !2428
  %698 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %699 = load i64, i64* %PC
  %700 = add i64 %699, 8
  store i64 %700, i64* %PC
  %701 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401210__rodata_type* @seg_401210__rodata to i64), i64 16) to double*)
  %702 = bitcast i8* %698 to double*
  store double %701, double* %702, align 1, !tbaa !2452
  %703 = getelementptr inbounds i8, i8* %698, i64 8
  %704 = bitcast i8* %703 to double*
  store double 0.000000e+00, double* %704, align 1, !tbaa !2452
  %705 = load i64, i64* %RBP
  %706 = sub i64 %705, 40
  %707 = load i64, i64* %PC
  %708 = add i64 %707, 4
  store i64 %708, i64* %PC
  %709 = inttoptr i64 %706 to i64*
  %710 = load i64, i64* %709
  store i64 %710, i64* %RDX, align 8, !tbaa !2428
  %711 = load i64, i64* %RBP
  %712 = sub i64 %711, 28
  %713 = load i64, i64* %PC
  %714 = add i64 %713, 4
  store i64 %714, i64* %PC
  %715 = inttoptr i64 %712 to i32*
  %716 = load i32, i32* %715
  %717 = sext i32 %716 to i64
  store i64 %717, i64* %RSI, align 8, !tbaa !2428
  %718 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %719 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %720 = load i64, i64* %RDX
  %721 = load i64, i64* %RSI
  %722 = mul i64 %721, 8
  %723 = add i64 %722, %720
  %724 = load i64, i64* %PC
  %725 = add i64 %724, 5
  store i64 %725, i64* %PC
  %726 = bitcast i8* %719 to double*
  %727 = load double, double* %726, align 1
  %728 = getelementptr inbounds i8, i8* %719, i64 8
  %729 = bitcast i8* %728 to i64*
  %730 = load i64, i64* %729, align 1
  %731 = inttoptr i64 %723 to double*
  %732 = load double, double* %731
  %733 = fdiv double %727, %732
  %734 = bitcast i8* %718 to double*
  store double %733, double* %734, align 1, !tbaa !2452
  %735 = getelementptr inbounds i8, i8* %718, i64 8
  %736 = bitcast i8* %735 to i64*
  store i64 %730, i64* %736, align 1, !tbaa !2452
  %737 = load i64, i64* %RBP
  %738 = sub i64 %737, 24
  %739 = bitcast %union.vec128_t* %XMM0 to i8*
  %740 = load i64, i64* %PC
  %741 = add i64 %740, 5
  store i64 %741, i64* %PC
  %742 = bitcast i8* %739 to double*
  %743 = load double, double* %742, align 1
  %744 = inttoptr i64 %738 to double*
  store double %743, double* %744
  %745 = load i64, i64* %RAX
  %746 = load i64, i64* %RBP
  %747 = sub i64 %746, 44
  %748 = load i64, i64* %PC
  %749 = add i64 %748, 3
  store i64 %749, i64* %PC
  %750 = trunc i64 %745 to i32
  %751 = inttoptr i64 %747 to i32*
  %752 = load i32, i32* %751
  %753 = sub i32 %750, %752
  %754 = zext i32 %753 to i64
  store i64 %754, i64* %RAX, align 8, !tbaa !2428
  %755 = icmp ult i32 %750, %752
  %756 = zext i1 %755 to i8
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %756, i8* %757, align 1, !tbaa !2432
  %758 = and i32 %753, 255
  %759 = call i32 @llvm.ctpop.i32(i32 %758) #16
  %760 = trunc i32 %759 to i8
  %761 = and i8 %760, 1
  %762 = xor i8 %761, 1
  %763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %762, i8* %763, align 1, !tbaa !2446
  %764 = xor i32 %752, %750
  %765 = xor i32 %764, %753
  %766 = lshr i32 %765, 4
  %767 = trunc i32 %766 to i8
  %768 = and i8 %767, 1
  %769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %768, i8* %769, align 1, !tbaa !2447
  %770 = icmp eq i32 %753, 0
  %771 = zext i1 %770 to i8
  %772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %771, i8* %772, align 1, !tbaa !2448
  %773 = lshr i32 %753, 31
  %774 = trunc i32 %773 to i8
  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %774, i8* %775, align 1, !tbaa !2449
  %776 = lshr i32 %750, 31
  %777 = lshr i32 %752, 31
  %778 = xor i32 %777, %776
  %779 = xor i32 %773, %776
  %780 = add nuw nsw i32 %779, %778
  %781 = icmp eq i32 %780, 2
  %782 = zext i1 %781 to i8
  %783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %782, i8* %783, align 1, !tbaa !2450
  %784 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %785 = load i64, i64* %RBP
  %786 = sub i64 %785, 24
  %787 = load i64, i64* %PC
  %788 = add i64 %787, 5
  store i64 %788, i64* %PC
  %789 = inttoptr i64 %786 to double*
  %790 = load double, double* %789
  %791 = bitcast i8* %784 to double*
  store double %790, double* %791, align 1, !tbaa !2452
  %792 = getelementptr inbounds i8, i8* %784, i64 8
  %793 = bitcast i8* %792 to double*
  store double 0.000000e+00, double* %793, align 1, !tbaa !2452
  %794 = load i64, i64* %RBP
  %795 = sub i64 %794, 40
  %796 = load i64, i64* %PC
  %797 = add i64 %796, 4
  store i64 %797, i64* %PC
  %798 = inttoptr i64 %795 to i64*
  %799 = load i64, i64* %798
  store i64 %799, i64* %RSI, align 8, !tbaa !2428
  %800 = load i64, i64* %RBP
  %801 = sub i64 %800, 44
  %802 = load i64, i64* %PC
  %803 = add i64 %802, 3
  store i64 %803, i64* %PC
  %804 = inttoptr i64 %801 to i32*
  %805 = load i32, i32* %804
  %806 = zext i32 %805 to i64
  store i64 %806, i64* %RDX, align 8, !tbaa !2428
  %807 = load i32, i32* %EAX
  %808 = zext i32 %807 to i64
  %809 = load i64, i64* %PC
  %810 = add i64 %809, 2
  store i64 %810, i64* %PC
  %811 = and i64 %808, 4294967295
  store i64 %811, i64* %RDI, align 8, !tbaa !2428
  %812 = load i64, i64* %PC
  %813 = sub i64 %812, 818
  %814 = load i64, i64* %PC
  %815 = add i64 %814, 5
  %816 = load i64, i64* %PC
  %817 = add i64 %816, 5
  store i64 %817, i64* %PC
  %818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %819 = load i64, i64* %818, align 8, !tbaa !2428
  %820 = add i64 %819, -8
  %821 = inttoptr i64 %820 to i64*
  store i64 %815, i64* %821
  store i64 %820, i64* %818, align 8, !tbaa !2428
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %813, i64* %822, align 8, !tbaa !2428
  %823 = load i64, i64* %PC
  %824 = call %struct.Memory* @sub_4009f0_dscal(%struct.State* %0, i64 %823, %struct.Memory* %MEMORY.2)
  %825 = load i64, i64* %RBP
  %826 = sub i64 %825, 44
  %827 = load i64, i64* %PC
  %828 = add i64 %827, 3
  store i64 %828, i64* %PC
  %829 = inttoptr i64 %826 to i32*
  %830 = load i32, i32* %829
  %831 = zext i32 %830 to i64
  store i64 %831, i64* %RAX, align 8, !tbaa !2428
  %832 = load i64, i64* %RBP
  %833 = sub i64 %832, 32
  %834 = load i32, i32* %EAX
  %835 = zext i32 %834 to i64
  %836 = load i64, i64* %PC
  %837 = add i64 %836, 3
  store i64 %837, i64* %PC
  %838 = inttoptr i64 %833 to i32*
  store i32 %834, i32* %838
  br label %block_400d2d

block_400d94:                                     ; preds = %block_400d68, %block_400d3a
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.1, %block_400d3a ], [ %MEMORY.1, %block_400d68 ]
  %839 = load i64, i64* %PC
  %840 = add i64 %839, 5
  store i64 %840, i64* %PC
  store i64 1, i64* %RCX, align 8, !tbaa !2428
  %841 = load i64, i64* %PC
  %842 = add i64 %841, 5
  store i64 %842, i64* %PC
  store i64 2000, i64* %RAX, align 8, !tbaa !2428
  %843 = load i64, i64* %RAX
  %844 = load i64, i64* %RBP
  %845 = sub i64 %844, 44
  %846 = load i64, i64* %PC
  %847 = add i64 %846, 3
  store i64 %847, i64* %PC
  %848 = trunc i64 %843 to i32
  %849 = inttoptr i64 %845 to i32*
  %850 = load i32, i32* %849
  %851 = sub i32 %848, %850
  %852 = zext i32 %851 to i64
  store i64 %852, i64* %RAX, align 8, !tbaa !2428
  %853 = icmp ult i32 %848, %850
  %854 = zext i1 %853 to i8
  %855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %854, i8* %855, align 1, !tbaa !2432
  %856 = and i32 %851, 255
  %857 = call i32 @llvm.ctpop.i32(i32 %856) #16
  %858 = trunc i32 %857 to i8
  %859 = and i8 %858, 1
  %860 = xor i8 %859, 1
  %861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %860, i8* %861, align 1, !tbaa !2446
  %862 = xor i32 %850, %848
  %863 = xor i32 %862, %851
  %864 = lshr i32 %863, 4
  %865 = trunc i32 %864 to i8
  %866 = and i8 %865, 1
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %866, i8* %867, align 1, !tbaa !2447
  %868 = icmp eq i32 %851, 0
  %869 = zext i1 %868 to i8
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %869, i8* %870, align 1, !tbaa !2448
  %871 = lshr i32 %851, 31
  %872 = trunc i32 %871 to i8
  %873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %872, i8* %873, align 1, !tbaa !2449
  %874 = lshr i32 %848, 31
  %875 = lshr i32 %850, 31
  %876 = xor i32 %875, %874
  %877 = xor i32 %871, %874
  %878 = add nuw nsw i32 %877, %876
  %879 = icmp eq i32 %878, 2
  %880 = zext i1 %879 to i8
  %881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %880, i8* %881, align 1, !tbaa !2450
  %882 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %883 = load i64, i64* %RBP
  %884 = sub i64 %883, 24
  %885 = load i64, i64* %PC
  %886 = add i64 %885, 5
  store i64 %886, i64* %PC
  %887 = inttoptr i64 %884 to double*
  %888 = load double, double* %887
  %889 = bitcast i8* %882 to double*
  store double %888, double* %889, align 1, !tbaa !2452
  %890 = getelementptr inbounds i8, i8* %882, i64 8
  %891 = bitcast i8* %890 to double*
  store double 0.000000e+00, double* %891, align 1, !tbaa !2452
  %892 = load i64, i64* %RBP
  %893 = sub i64 %892, 40
  %894 = load i64, i64* %PC
  %895 = add i64 %894, 4
  store i64 %895, i64* %PC
  %896 = inttoptr i64 %893 to i64*
  %897 = load i64, i64* %896
  store i64 %897, i64* %RSI, align 8, !tbaa !2428
  %898 = load i64, i64* %RBP
  %899 = sub i64 %898, 44
  %900 = load i64, i64* %PC
  %901 = add i64 %900, 3
  store i64 %901, i64* %PC
  %902 = inttoptr i64 %899 to i32*
  %903 = load i32, i32* %902
  %904 = zext i32 %903 to i64
  store i64 %904, i64* %RDX, align 8, !tbaa !2428
  %905 = load i64, i64* %RBP
  %906 = sub i64 %905, 56
  %907 = load i64, i64* %PC
  %908 = add i64 %907, 4
  store i64 %908, i64* %PC
  %909 = inttoptr i64 %906 to i64*
  %910 = load i64, i64* %909
  store i64 %910, i64* %R8, align 8, !tbaa !2428
  %911 = bitcast i32* %R9D to i64*
  %912 = load i64, i64* %RBP
  %913 = sub i64 %912, 44
  %914 = load i64, i64* %PC
  %915 = add i64 %914, 4
  store i64 %915, i64* %PC
  %916 = inttoptr i64 %913 to i32*
  %917 = load i32, i32* %916
  %918 = zext i32 %917 to i64
  store i64 %918, i64* %911, align 8, !tbaa !2428
  %919 = load i32, i32* %EAX
  %920 = zext i32 %919 to i64
  %921 = load i64, i64* %PC
  %922 = add i64 %921, 2
  store i64 %922, i64* %PC
  %923 = and i64 %920, 4294967295
  store i64 %923, i64* %RDI, align 8, !tbaa !2428
  %924 = load i64, i64* %RSP
  %925 = load i64, i64* %PC
  %926 = add i64 %925, 7
  store i64 %926, i64* %PC
  %927 = inttoptr i64 %924 to i32*
  store i32 1, i32* %927
  %928 = load i64, i64* %PC
  %929 = sub i64 %928, 782
  %930 = load i64, i64* %PC
  %931 = add i64 %930, 5
  %932 = load i64, i64* %PC
  %933 = add i64 %932, 5
  store i64 %933, i64* %PC
  %934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %935 = load i64, i64* %934, align 8, !tbaa !2428
  %936 = add i64 %935, -8
  %937 = inttoptr i64 %936 to i64*
  store i64 %931, i64* %937
  store i64 %936, i64* %934, align 8, !tbaa !2428
  %938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %929, i64* %938, align 8, !tbaa !2428
  %939 = load i64, i64* %PC
  %940 = call %struct.Memory* @sub_400ab0_daxpy(%struct.State* %0, i64 %939, %struct.Memory* %MEMORY.3)
  %941 = load i64, i64* %RBP
  %942 = sub i64 %941, 32
  %943 = load i64, i64* %PC
  %944 = add i64 %943, 3
  store i64 %944, i64* %PC
  %945 = inttoptr i64 %942 to i32*
  %946 = load i32, i32* %945
  %947 = zext i32 %946 to i64
  store i64 %947, i64* %RAX, align 8, !tbaa !2428
  %948 = load i64, i64* %RAX
  %949 = load i64, i64* %PC
  %950 = add i64 %949, 3
  store i64 %950, i64* %PC
  %951 = trunc i64 %948 to i32
  %952 = add i32 1, %951
  %953 = zext i32 %952 to i64
  store i64 %953, i64* %RAX, align 8, !tbaa !2428
  %954 = icmp ult i32 %952, %951
  %955 = icmp ult i32 %952, 1
  %956 = or i1 %954, %955
  %957 = zext i1 %956 to i8
  %958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %957, i8* %958, align 1, !tbaa !2432
  %959 = and i32 %952, 255
  %960 = call i32 @llvm.ctpop.i32(i32 %959) #16
  %961 = trunc i32 %960 to i8
  %962 = and i8 %961, 1
  %963 = xor i8 %962, 1
  %964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %963, i8* %964, align 1, !tbaa !2446
  %965 = xor i64 1, %948
  %966 = trunc i64 %965 to i32
  %967 = xor i32 %966, %952
  %968 = lshr i32 %967, 4
  %969 = trunc i32 %968 to i8
  %970 = and i8 %969, 1
  %971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %970, i8* %971, align 1, !tbaa !2447
  %972 = icmp eq i32 %952, 0
  %973 = zext i1 %972 to i8
  %974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %973, i8* %974, align 1, !tbaa !2448
  %975 = lshr i32 %952, 31
  %976 = trunc i32 %975 to i8
  %977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %976, i8* %977, align 1, !tbaa !2449
  %978 = lshr i32 %951, 31
  %979 = xor i32 %975, %978
  %980 = add nuw nsw i32 %979, %975
  %981 = icmp eq i32 %980, 2
  %982 = zext i1 %981 to i8
  %983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %982, i8* %983, align 1, !tbaa !2450
  %984 = load i64, i64* %RBP
  %985 = sub i64 %984, 32
  %986 = load i32, i32* %EAX
  %987 = zext i32 %986 to i64
  %988 = load i64, i64* %PC
  %989 = add i64 %988, 3
  store i64 %989, i64* %PC
  %990 = inttoptr i64 %985 to i32*
  store i32 %986, i32* %990
  %991 = load i64, i64* %PC
  %992 = sub i64 %991, 159
  %993 = load i64, i64* %PC
  %994 = add i64 %993, 5
  store i64 %994, i64* %PC
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %992, i64* %995, align 8, !tbaa !2428
  br label %block_400d2d

block_400de9:                                     ; preds = %block_400c27
  %996 = load i64, i64* %RBP
  %997 = sub i64 %996, 16
  %998 = load i64, i64* %PC
  %999 = add i64 %998, 4
  store i64 %999, i64* %PC
  %1000 = inttoptr i64 %997 to i64*
  %1001 = load i64, i64* %1000
  store i64 %1001, i64* %RAX, align 8, !tbaa !2428
  %1002 = load i64, i64* %RAX
  %1003 = add i64 %1002, 7996
  %1004 = load i64, i64* %PC
  %1005 = add i64 %1004, 10
  store i64 %1005, i64* %PC
  %1006 = inttoptr i64 %1003 to i32*
  store i32 1999, i32* %1006
  %1007 = load i64, i64* %RSP
  %1008 = load i64, i64* %PC
  %1009 = add i64 %1008, 4
  store i64 %1009, i64* %PC
  %1010 = add i64 64, %1007
  store i64 %1010, i64* %RSP, align 8, !tbaa !2428
  %1011 = icmp ult i64 %1010, %1007
  %1012 = icmp ult i64 %1010, 64
  %1013 = or i1 %1011, %1012
  %1014 = zext i1 %1013 to i8
  %1015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1014, i8* %1015, align 1, !tbaa !2432
  %1016 = trunc i64 %1010 to i32
  %1017 = and i32 %1016, 255
  %1018 = call i32 @llvm.ctpop.i32(i32 %1017) #16
  %1019 = trunc i32 %1018 to i8
  %1020 = and i8 %1019, 1
  %1021 = xor i8 %1020, 1
  %1022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1021, i8* %1022, align 1, !tbaa !2446
  %1023 = xor i64 64, %1007
  %1024 = xor i64 %1023, %1010
  %1025 = lshr i64 %1024, 4
  %1026 = trunc i64 %1025 to i8
  %1027 = and i8 %1026, 1
  %1028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1027, i8* %1028, align 1, !tbaa !2447
  %1029 = icmp eq i64 %1010, 0
  %1030 = zext i1 %1029 to i8
  %1031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1030, i8* %1031, align 1, !tbaa !2448
  %1032 = lshr i64 %1010, 63
  %1033 = trunc i64 %1032 to i8
  %1034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1033, i8* %1034, align 1, !tbaa !2449
  %1035 = lshr i64 %1007, 63
  %1036 = xor i64 %1032, %1035
  %1037 = add nuw nsw i64 %1036, %1032
  %1038 = icmp eq i64 %1037, 2
  %1039 = zext i1 %1038 to i8
  %1040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1039, i8* %1040, align 1, !tbaa !2450
  %1041 = load i64, i64* %PC
  %1042 = add i64 %1041, 1
  store i64 %1042, i64* %PC
  %1043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1044 = load i64, i64* %1043, align 8, !tbaa !2428
  %1045 = add i64 %1044, 8
  %1046 = inttoptr i64 %1044 to i64*
  %1047 = load i64, i64* %1046
  store i64 %1047, i64* %RBP, align 8, !tbaa !2428
  store i64 %1045, i64* %1043, align 8, !tbaa !2428
  %1048 = load i64, i64* %PC
  %1049 = add i64 %1048, 1
  store i64 %1049, i64* %PC
  %1050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1052 = load i64, i64* %1051, align 8, !tbaa !2428
  %1053 = inttoptr i64 %1052 to i64*
  %1054 = load i64, i64* %1053
  store i64 %1054, i64* %1050, align 8, !tbaa !2428
  %1055 = add i64 %1052, 8
  store i64 %1055, i64* %1051, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.4

block_400d68:                                     ; preds = %block_400d3a
  %1056 = load i64, i64* %RBP
  %1057 = sub i64 %1056, 56
  %1058 = load i64, i64* %PC
  %1059 = add i64 %1058, 4
  store i64 %1059, i64* %PC
  %1060 = inttoptr i64 %1057 to i64*
  %1061 = load i64, i64* %1060
  store i64 %1061, i64* %RAX, align 8, !tbaa !2428
  %1062 = load i64, i64* %RBP
  %1063 = sub i64 %1062, 28
  %1064 = load i64, i64* %PC
  %1065 = add i64 %1064, 4
  store i64 %1065, i64* %PC
  %1066 = inttoptr i64 %1063 to i32*
  %1067 = load i32, i32* %1066
  %1068 = sext i32 %1067 to i64
  store i64 %1068, i64* %RCX, align 8, !tbaa !2428
  %1069 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1070 = load i64, i64* %RAX
  %1071 = load i64, i64* %RCX
  %1072 = mul i64 %1071, 8
  %1073 = add i64 %1072, %1070
  %1074 = load i64, i64* %PC
  %1075 = add i64 %1074, 5
  store i64 %1075, i64* %PC
  %1076 = inttoptr i64 %1073 to double*
  %1077 = load double, double* %1076
  %1078 = bitcast i8* %1069 to double*
  store double %1077, double* %1078, align 1, !tbaa !2452
  %1079 = getelementptr inbounds i8, i8* %1069, i64 8
  %1080 = bitcast i8* %1079 to double*
  store double 0.000000e+00, double* %1080, align 1, !tbaa !2452
  %1081 = load i64, i64* %RBP
  %1082 = sub i64 %1081, 56
  %1083 = load i64, i64* %PC
  %1084 = add i64 %1083, 4
  store i64 %1084, i64* %PC
  %1085 = inttoptr i64 %1082 to i64*
  %1086 = load i64, i64* %1085
  store i64 %1086, i64* %RAX, align 8, !tbaa !2428
  %1087 = load i64, i64* %RBP
  %1088 = sub i64 %1087, 48
  %1089 = load i64, i64* %PC
  %1090 = add i64 %1089, 4
  store i64 %1090, i64* %PC
  %1091 = inttoptr i64 %1088 to i32*
  %1092 = load i32, i32* %1091
  %1093 = sext i32 %1092 to i64
  store i64 %1093, i64* %RCX, align 8, !tbaa !2428
  %1094 = load i64, i64* %RAX
  %1095 = load i64, i64* %RCX
  %1096 = mul i64 %1095, 8
  %1097 = add i64 %1096, %1094
  %1098 = bitcast %union.vec128_t* %XMM0 to i8*
  %1099 = load i64, i64* %PC
  %1100 = add i64 %1099, 5
  store i64 %1100, i64* %PC
  %1101 = bitcast i8* %1098 to double*
  %1102 = load double, double* %1101, align 1
  %1103 = inttoptr i64 %1097 to double*
  store double %1102, double* %1103
  %1104 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1105 = load i64, i64* %RBP
  %1106 = sub i64 %1105, 24
  %1107 = load i64, i64* %PC
  %1108 = add i64 %1107, 5
  store i64 %1108, i64* %PC
  %1109 = inttoptr i64 %1106 to double*
  %1110 = load double, double* %1109
  %1111 = bitcast i8* %1104 to double*
  store double %1110, double* %1111, align 1, !tbaa !2452
  %1112 = getelementptr inbounds i8, i8* %1104, i64 8
  %1113 = bitcast i8* %1112 to double*
  store double 0.000000e+00, double* %1113, align 1, !tbaa !2452
  %1114 = load i64, i64* %RBP
  %1115 = sub i64 %1114, 56
  %1116 = load i64, i64* %PC
  %1117 = add i64 %1116, 4
  store i64 %1117, i64* %PC
  %1118 = inttoptr i64 %1115 to i64*
  %1119 = load i64, i64* %1118
  store i64 %1119, i64* %RAX, align 8, !tbaa !2428
  %1120 = load i64, i64* %RBP
  %1121 = sub i64 %1120, 28
  %1122 = load i64, i64* %PC
  %1123 = add i64 %1122, 4
  store i64 %1123, i64* %PC
  %1124 = inttoptr i64 %1121 to i32*
  %1125 = load i32, i32* %1124
  %1126 = sext i32 %1125 to i64
  store i64 %1126, i64* %RCX, align 8, !tbaa !2428
  %1127 = load i64, i64* %RAX
  %1128 = load i64, i64* %RCX
  %1129 = mul i64 %1128, 8
  %1130 = add i64 %1129, %1127
  %1131 = bitcast %union.vec128_t* %XMM0 to i8*
  %1132 = load i64, i64* %PC
  %1133 = add i64 %1132, 5
  store i64 %1133, i64* %PC
  %1134 = bitcast i8* %1131 to double*
  %1135 = load double, double* %1134, align 1
  %1136 = inttoptr i64 %1130 to double*
  store double %1135, double* %1136
  br label %block_400d94

block_400c9e:                                     ; preds = %block_400c98
  %1137 = load i64, i64* %PC
  %1138 = add i64 %1137, 312
  %1139 = load i64, i64* %PC
  %1140 = add i64 %1139, 5
  store i64 %1140, i64* %PC
  %1141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1138, i64* %1141, align 8, !tbaa !2428
  br label %block_400dd6

block_400caf:                                     ; preds = %block_400ca3
  %1142 = load i64, i64* %RBP
  %1143 = sub i64 %1142, 40
  %1144 = load i64, i64* %PC
  %1145 = add i64 %1144, 4
  store i64 %1145, i64* %PC
  %1146 = inttoptr i64 %1143 to i64*
  %1147 = load i64, i64* %1146
  store i64 %1147, i64* %RAX, align 8, !tbaa !2428
  %1148 = load i64, i64* %RBP
  %1149 = sub i64 %1148, 48
  %1150 = load i64, i64* %PC
  %1151 = add i64 %1150, 4
  store i64 %1151, i64* %PC
  %1152 = inttoptr i64 %1149 to i32*
  %1153 = load i32, i32* %1152
  %1154 = sext i32 %1153 to i64
  store i64 %1154, i64* %RCX, align 8, !tbaa !2428
  %1155 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1156 = load i64, i64* %RAX
  %1157 = load i64, i64* %RCX
  %1158 = mul i64 %1157, 8
  %1159 = add i64 %1158, %1156
  %1160 = load i64, i64* %PC
  %1161 = add i64 %1160, 5
  store i64 %1161, i64* %PC
  %1162 = inttoptr i64 %1159 to double*
  %1163 = load double, double* %1162
  %1164 = bitcast i8* %1155 to double*
  store double %1163, double* %1164, align 1, !tbaa !2452
  %1165 = getelementptr inbounds i8, i8* %1155, i64 8
  %1166 = bitcast i8* %1165 to double*
  store double 0.000000e+00, double* %1166, align 1, !tbaa !2452
  %1167 = load i64, i64* %RBP
  %1168 = sub i64 %1167, 24
  %1169 = bitcast %union.vec128_t* %XMM0 to i8*
  %1170 = load i64, i64* %PC
  %1171 = add i64 %1170, 5
  store i64 %1171, i64* %PC
  %1172 = bitcast i8* %1169 to double*
  %1173 = load double, double* %1172, align 1
  %1174 = inttoptr i64 %1168 to double*
  store double %1173, double* %1174
  %1175 = load i64, i64* %RBP
  %1176 = sub i64 %1175, 40
  %1177 = load i64, i64* %PC
  %1178 = add i64 %1177, 4
  store i64 %1178, i64* %PC
  %1179 = inttoptr i64 %1176 to i64*
  %1180 = load i64, i64* %1179
  store i64 %1180, i64* %RAX, align 8, !tbaa !2428
  %1181 = load i64, i64* %RBP
  %1182 = sub i64 %1181, 28
  %1183 = load i64, i64* %PC
  %1184 = add i64 %1183, 4
  store i64 %1184, i64* %PC
  %1185 = inttoptr i64 %1182 to i32*
  %1186 = load i32, i32* %1185
  %1187 = sext i32 %1186 to i64
  store i64 %1187, i64* %RCX, align 8, !tbaa !2428
  %1188 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1189 = load i64, i64* %RAX
  %1190 = load i64, i64* %RCX
  %1191 = mul i64 %1190, 8
  %1192 = add i64 %1191, %1189
  %1193 = load i64, i64* %PC
  %1194 = add i64 %1193, 5
  store i64 %1194, i64* %PC
  %1195 = inttoptr i64 %1192 to double*
  %1196 = load double, double* %1195
  %1197 = bitcast i8* %1188 to double*
  store double %1196, double* %1197, align 1, !tbaa !2452
  %1198 = getelementptr inbounds i8, i8* %1188, i64 8
  %1199 = bitcast i8* %1198 to double*
  store double 0.000000e+00, double* %1199, align 1, !tbaa !2452
  %1200 = load i64, i64* %RBP
  %1201 = sub i64 %1200, 40
  %1202 = load i64, i64* %PC
  %1203 = add i64 %1202, 4
  store i64 %1203, i64* %PC
  %1204 = inttoptr i64 %1201 to i64*
  %1205 = load i64, i64* %1204
  store i64 %1205, i64* %RAX, align 8, !tbaa !2428
  %1206 = load i64, i64* %RBP
  %1207 = sub i64 %1206, 48
  %1208 = load i64, i64* %PC
  %1209 = add i64 %1208, 4
  store i64 %1209, i64* %PC
  %1210 = inttoptr i64 %1207 to i32*
  %1211 = load i32, i32* %1210
  %1212 = sext i32 %1211 to i64
  store i64 %1212, i64* %RCX, align 8, !tbaa !2428
  %1213 = load i64, i64* %RAX
  %1214 = load i64, i64* %RCX
  %1215 = mul i64 %1214, 8
  %1216 = add i64 %1215, %1213
  %1217 = bitcast %union.vec128_t* %XMM0 to i8*
  %1218 = load i64, i64* %PC
  %1219 = add i64 %1218, 5
  store i64 %1219, i64* %PC
  %1220 = bitcast i8* %1217 to double*
  %1221 = load double, double* %1220, align 1
  %1222 = inttoptr i64 %1216 to double*
  store double %1221, double* %1222
  %1223 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1224 = load i64, i64* %RBP
  %1225 = sub i64 %1224, 24
  %1226 = load i64, i64* %PC
  %1227 = add i64 %1226, 5
  store i64 %1227, i64* %PC
  %1228 = inttoptr i64 %1225 to double*
  %1229 = load double, double* %1228
  %1230 = bitcast i8* %1223 to double*
  store double %1229, double* %1230, align 1, !tbaa !2452
  %1231 = getelementptr inbounds i8, i8* %1223, i64 8
  %1232 = bitcast i8* %1231 to double*
  store double 0.000000e+00, double* %1232, align 1, !tbaa !2452
  %1233 = load i64, i64* %RBP
  %1234 = sub i64 %1233, 40
  %1235 = load i64, i64* %PC
  %1236 = add i64 %1235, 4
  store i64 %1236, i64* %PC
  %1237 = inttoptr i64 %1234 to i64*
  %1238 = load i64, i64* %1237
  store i64 %1238, i64* %RAX, align 8, !tbaa !2428
  %1239 = load i64, i64* %RBP
  %1240 = sub i64 %1239, 28
  %1241 = load i64, i64* %PC
  %1242 = add i64 %1241, 4
  store i64 %1242, i64* %PC
  %1243 = inttoptr i64 %1240 to i32*
  %1244 = load i32, i32* %1243
  %1245 = sext i32 %1244 to i64
  store i64 %1245, i64* %RCX, align 8, !tbaa !2428
  %1246 = load i64, i64* %RAX
  %1247 = load i64, i64* %RCX
  %1248 = mul i64 %1247, 8
  %1249 = add i64 %1248, %1246
  %1250 = bitcast %union.vec128_t* %XMM0 to i8*
  %1251 = load i64, i64* %PC
  %1252 = add i64 %1251, 5
  store i64 %1252, i64* %PC
  %1253 = bitcast i8* %1250 to double*
  %1254 = load double, double* %1253, align 1
  %1255 = inttoptr i64 %1249 to double*
  store double %1254, double* %1255
  br label %block_400ced

block_400c27:                                     ; preds = %block_400dd6, %block_400c10
  %MEMORY.4 = phi %struct.Memory* [ %2, %block_400c10 ], [ %MEMORY.0, %block_400dd6 ]
  %1256 = load i64, i64* %RBP
  %1257 = sub i64 %1256, 28
  %1258 = load i64, i64* %PC
  %1259 = add i64 %1258, 7
  store i64 %1259, i64* %PC
  %1260 = inttoptr i64 %1257 to i32*
  %1261 = load i32, i32* %1260
  %1262 = sub i32 %1261, 1999
  %1263 = icmp ult i32 %1261, 1999
  %1264 = zext i1 %1263 to i8
  %1265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1264, i8* %1265, align 1, !tbaa !2432
  %1266 = and i32 %1262, 255
  %1267 = call i32 @llvm.ctpop.i32(i32 %1266) #16
  %1268 = trunc i32 %1267 to i8
  %1269 = and i8 %1268, 1
  %1270 = xor i8 %1269, 1
  %1271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1270, i8* %1271, align 1, !tbaa !2446
  %1272 = xor i32 %1261, 1999
  %1273 = xor i32 %1272, %1262
  %1274 = lshr i32 %1273, 4
  %1275 = trunc i32 %1274 to i8
  %1276 = and i8 %1275, 1
  %1277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1276, i8* %1277, align 1, !tbaa !2447
  %1278 = icmp eq i32 %1262, 0
  %1279 = zext i1 %1278 to i8
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1279, i8* %1280, align 1, !tbaa !2448
  %1281 = lshr i32 %1262, 31
  %1282 = trunc i32 %1281 to i8
  %1283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1282, i8* %1283, align 1, !tbaa !2449
  %1284 = lshr i32 %1261, 31
  %1285 = xor i32 %1281, %1284
  %1286 = add nuw nsw i32 %1285, %1284
  %1287 = icmp eq i32 %1286, 2
  %1288 = zext i1 %1287 to i8
  %1289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1288, i8* %1289, align 1, !tbaa !2450
  %1290 = load i64, i64* %PC
  %1291 = add i64 %1290, 443
  %1292 = load i64, i64* %PC
  %1293 = add i64 %1292, 6
  %1294 = load i64, i64* %PC
  %1295 = add i64 %1294, 6
  store i64 %1295, i64* %PC
  %1296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1297 = load i8, i8* %1296, align 1, !tbaa !2449
  %1298 = icmp ne i8 %1297, 0
  %1299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1300 = load i8, i8* %1299, align 1, !tbaa !2450
  %1301 = icmp ne i8 %1300, 0
  %1302 = xor i1 %1298, %1301
  %1303 = xor i1 %1302, true
  %1304 = zext i1 %1303 to i8
  store i8 %1304, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1306 = select i1 %1302, i64 %1293, i64 %1291
  store i64 %1306, i64* %1305, align 8, !tbaa !2428
  %1307 = load i8, i8* %BRANCH_TAKEN
  %1308 = icmp eq i8 %1307, 1
  br i1 %1308, label %block_400de9, label %block_400c34

block_400ca3:                                     ; preds = %block_400c98, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit
  %MEMORY.5 = phi %struct.Memory* [ %661, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit ], [ %661, %block_400c98 ]
  %1309 = load i64, i64* %RBP
  %1310 = sub i64 %1309, 48
  %1311 = load i64, i64* %PC
  %1312 = add i64 %1311, 3
  store i64 %1312, i64* %PC
  %1313 = inttoptr i64 %1310 to i32*
  %1314 = load i32, i32* %1313
  %1315 = zext i32 %1314 to i64
  store i64 %1315, i64* %RAX, align 8, !tbaa !2428
  %1316 = load i32, i32* %EAX
  %1317 = zext i32 %1316 to i64
  %1318 = load i64, i64* %RBP
  %1319 = sub i64 %1318, 28
  %1320 = load i64, i64* %PC
  %1321 = add i64 %1320, 3
  store i64 %1321, i64* %PC
  %1322 = inttoptr i64 %1319 to i32*
  %1323 = load i32, i32* %1322
  %1324 = sub i32 %1316, %1323
  %1325 = icmp ult i32 %1316, %1323
  %1326 = zext i1 %1325 to i8
  %1327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1326, i8* %1327, align 1, !tbaa !2432
  %1328 = and i32 %1324, 255
  %1329 = call i32 @llvm.ctpop.i32(i32 %1328) #16
  %1330 = trunc i32 %1329 to i8
  %1331 = and i8 %1330, 1
  %1332 = xor i8 %1331, 1
  %1333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1332, i8* %1333, align 1, !tbaa !2446
  %1334 = xor i32 %1323, %1316
  %1335 = xor i32 %1334, %1324
  %1336 = lshr i32 %1335, 4
  %1337 = trunc i32 %1336 to i8
  %1338 = and i8 %1337, 1
  %1339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1338, i8* %1339, align 1, !tbaa !2447
  %1340 = icmp eq i32 %1324, 0
  %1341 = zext i1 %1340 to i8
  %1342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1341, i8* %1342, align 1, !tbaa !2448
  %1343 = lshr i32 %1324, 31
  %1344 = trunc i32 %1343 to i8
  %1345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1344, i8* %1345, align 1, !tbaa !2449
  %1346 = lshr i32 %1316, 31
  %1347 = lshr i32 %1323, 31
  %1348 = xor i32 %1347, %1346
  %1349 = xor i32 %1343, %1346
  %1350 = add nuw nsw i32 %1349, %1348
  %1351 = icmp eq i32 %1350, 2
  %1352 = zext i1 %1351 to i8
  %1353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1352, i8* %1353, align 1, !tbaa !2450
  %1354 = load i64, i64* %PC
  %1355 = add i64 %1354, 68
  %1356 = load i64, i64* %PC
  %1357 = add i64 %1356, 6
  %1358 = load i64, i64* %PC
  %1359 = add i64 %1358, 6
  store i64 %1359, i64* %PC
  %1360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1361 = load i8, i8* %1360, align 1, !tbaa !2448
  store i8 %1361, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1363 = icmp ne i8 %1361, 0
  %1364 = select i1 %1363, i64 %1355, i64 %1357
  store i64 %1364, i64* %1362, align 8, !tbaa !2428
  %1365 = load i8, i8* %BRANCH_TAKEN
  %1366 = icmp eq i8 %1365, 1
  br i1 %1366, label %block_400ced, label %block_400caf
}

; Function Attrs: noinline
define %struct.Memory* @sub_400640___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400640:
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
  %14 = load i8, i8* inttoptr (i64 add (i64 ptrtoint (%seg_602058__bss_type* @seg_602058__bss to i64), i64 8) to i8*)
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
  br i1 %47, label %block_400660, label %block_400649

block_400660:                                     ; preds = %block_400640
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

block_400649:                                     ; preds = %block_400640
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
  %78 = call %struct.Memory* @sub_4005d0_deregister_tm_clones(%struct.State* %0, i64 %77, %struct.Memory* %2)
  %79 = load i64, i64* %PC
  %80 = add i64 %79, 7
  store i64 %80, i64* %PC
  store i8 1, i8* inttoptr (i64 add (i64 ptrtoint (%seg_602058__bss_type* @seg_602058__bss to i64), i64 8) to i8*)
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
define %struct.Memory* @sub_400510__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400510:
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
  br i1 %80, label %block_400522, label %block_400520

block_400520:                                     ; preds = %block_400510
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
  br label %block_400522

block_400522:                                     ; preds = %block_400520, %block_400510
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400510 ], [ %92, %block_400520 ]
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
define %struct.Memory* @sub_4009f0_dscal(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4009f0:
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
  %31 = getelementptr inbounds %struct.GPR, %struct.GPR* %30, i32 0, i32 13
  %32 = getelementptr inbounds %struct.Reg, %struct.Reg* %31, i32 0, i32 0
  %RSP = bitcast %union.anon* %32 to i64*
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %34 = getelementptr inbounds %struct.GPR, %struct.GPR* %33, i32 0, i32 15
  %35 = getelementptr inbounds %struct.Reg, %struct.Reg* %34, i32 0, i32 0
  %RBP = bitcast %union.anon* %35 to i64*
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %37 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %36, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %37 to %"class.std::bitset"*
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %39 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %38, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %39 to %union.vec128_t*
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
  %50 = load i64, i64* %RBP
  %51 = sub i64 %50, 4
  %52 = load i32, i32* %EDI
  %53 = zext i32 %52 to i64
  %54 = load i64, i64* %PC
  %55 = add i64 %54, 3
  store i64 %55, i64* %PC
  %56 = inttoptr i64 %51 to i32*
  store i32 %52, i32* %56
  %57 = load i64, i64* %RBP
  %58 = sub i64 %57, 16
  %59 = bitcast %union.vec128_t* %XMM0 to i8*
  %60 = load i64, i64* %PC
  %61 = add i64 %60, 5
  store i64 %61, i64* %PC
  %62 = bitcast i8* %59 to double*
  %63 = load double, double* %62, align 1
  %64 = inttoptr i64 %58 to double*
  store double %63, double* %64
  %65 = load i64, i64* %RBP
  %66 = sub i64 %65, 24
  %67 = load i64, i64* %RSI
  %68 = load i64, i64* %PC
  %69 = add i64 %68, 4
  store i64 %69, i64* %PC
  %70 = inttoptr i64 %66 to i64*
  store i64 %67, i64* %70
  %71 = load i64, i64* %RBP
  %72 = sub i64 %71, 28
  %73 = load i32, i32* %EDX
  %74 = zext i32 %73 to i64
  %75 = load i64, i64* %PC
  %76 = add i64 %75, 3
  store i64 %76, i64* %PC
  %77 = inttoptr i64 %72 to i32*
  store i32 %73, i32* %77
  %78 = load i64, i64* %RBP
  %79 = sub i64 %78, 32
  %80 = load i32, i32* %ECX
  %81 = zext i32 %80 to i64
  %82 = load i64, i64* %PC
  %83 = add i64 %82, 3
  store i64 %83, i64* %PC
  %84 = inttoptr i64 %79 to i32*
  store i32 %80, i32* %84
  %85 = load i64, i64* %RBP
  %86 = sub i64 %85, 4
  %87 = load i64, i64* %PC
  %88 = add i64 %87, 4
  store i64 %88, i64* %PC
  %89 = inttoptr i64 %86 to i32*
  %90 = load i32, i32* %89
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %91, align 1, !tbaa !2432
  %92 = and i32 %90, 255
  %93 = call i32 @llvm.ctpop.i32(i32 %92) #16
  %94 = trunc i32 %93 to i8
  %95 = and i8 %94, 1
  %96 = xor i8 %95, 1
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %96, i8* %97, align 1, !tbaa !2446
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %98, align 1, !tbaa !2447
  %99 = icmp eq i32 %90, 0
  %100 = zext i1 %99 to i8
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %100, i8* %101, align 1, !tbaa !2448
  %102 = lshr i32 %90, 31
  %103 = trunc i32 %102 to i8
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %103, i8* %104, align 1, !tbaa !2449
  %105 = lshr i32 %90, 31
  %106 = xor i32 %102, %105
  %107 = add nuw nsw i32 %106, %105
  %108 = icmp eq i32 %107, 2
  %109 = zext i1 %108 to i8
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %109, i8* %110, align 1, !tbaa !2450
  %111 = load i64, i64* %PC
  %112 = add i64 %111, 163
  %113 = load i64, i64* %PC
  %114 = add i64 %113, 6
  %115 = load i64, i64* %PC
  %116 = add i64 %115, 6
  store i64 %116, i64* %PC
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %118 = load i8, i8* %117, align 1, !tbaa !2448
  %119 = icmp ne i8 %118, 0
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %121 = load i8, i8* %120, align 1, !tbaa !2449
  %122 = icmp ne i8 %121, 0
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %124 = load i8, i8* %123, align 1, !tbaa !2450
  %125 = icmp ne i8 %124, 0
  %126 = xor i1 %122, %125
  %127 = or i1 %119, %126
  %128 = zext i1 %127 to i8
  store i8 %128, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %130 = select i1 %127, i64 %112, i64 %114
  store i64 %130, i64* %129, align 8, !tbaa !2428
  %131 = load i8, i8* %BRANCH_TAKEN
  %132 = icmp eq i8 %131, 1
  br i1 %132, label %block_400aad, label %block_400a10

block_400a1a:                                     ; preds = %block_400a10
  %133 = sub i64 %387, 4
  %134 = load i64, i64* %PC
  %135 = add i64 %134, 3
  store i64 %135, i64* %PC
  %136 = inttoptr i64 %133 to i32*
  %137 = load i32, i32* %136
  %138 = zext i32 %137 to i64
  store i64 %138, i64* %RAX, align 8, !tbaa !2428
  %139 = load i64, i64* %RAX
  %140 = load i64, i64* %RBP
  %141 = sub i64 %140, 32
  %142 = load i64, i64* %PC
  %143 = add i64 %142, 4
  store i64 %143, i64* %PC
  %144 = inttoptr i64 %141 to i32*
  %145 = load i32, i32* %144
  %146 = shl i64 %139, 32
  %147 = ashr exact i64 %146, 32
  %148 = sext i32 %145 to i64
  %149 = mul nsw i64 %148, %147
  %150 = trunc i64 %149 to i32
  %151 = and i64 %149, 4294967295
  store i64 %151, i64* %RAX, align 8, !tbaa !2428
  %152 = shl i64 %149, 32
  %153 = ashr exact i64 %152, 32
  %154 = icmp ne i64 %153, %149
  %155 = zext i1 %154 to i8
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %155, i8* %156, align 1, !tbaa !2432
  %157 = and i32 %150, 255
  %158 = call i32 @llvm.ctpop.i32(i32 %157) #16
  %159 = trunc i32 %158 to i8
  %160 = and i8 %159, 1
  %161 = xor i8 %160, 1
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %161, i8* %162, align 1, !tbaa !2446
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %163, align 1, !tbaa !2447
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %164, align 1, !tbaa !2448
  %165 = lshr i32 %150, 31
  %166 = trunc i32 %165 to i8
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %166, i8* %167, align 1, !tbaa !2449
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %155, i8* %168, align 1, !tbaa !2450
  %169 = load i64, i64* %RBP
  %170 = sub i64 %169, 40
  %171 = load i32, i32* %EAX
  %172 = zext i32 %171 to i64
  %173 = load i64, i64* %PC
  %174 = add i64 %173, 3
  store i64 %174, i64* %PC
  %175 = inttoptr i64 %170 to i32*
  store i32 %171, i32* %175
  %176 = load i64, i64* %RBP
  %177 = sub i64 %176, 36
  %178 = load i64, i64* %PC
  %179 = add i64 %178, 7
  store i64 %179, i64* %PC
  %180 = inttoptr i64 %177 to i32*
  store i32 0, i32* %180
  br label %block_400a2b

block_400a37:                                     ; preds = %block_400a2b
  %181 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %182 = load i64, i64* %RBP
  %183 = sub i64 %182, 16
  %184 = load i64, i64* %PC
  %185 = add i64 %184, 5
  store i64 %185, i64* %PC
  %186 = inttoptr i64 %183 to double*
  %187 = load double, double* %186
  %188 = bitcast i8* %181 to double*
  store double %187, double* %188, align 1, !tbaa !2452
  %189 = getelementptr inbounds i8, i8* %181, i64 8
  %190 = bitcast i8* %189 to double*
  store double 0.000000e+00, double* %190, align 1, !tbaa !2452
  %191 = load i64, i64* %RBP
  %192 = sub i64 %191, 24
  %193 = load i64, i64* %PC
  %194 = add i64 %193, 4
  store i64 %194, i64* %PC
  %195 = inttoptr i64 %192 to i64*
  %196 = load i64, i64* %195
  store i64 %196, i64* %RAX, align 8, !tbaa !2428
  %197 = load i64, i64* %RBP
  %198 = sub i64 %197, 36
  %199 = load i64, i64* %PC
  %200 = add i64 %199, 3
  store i64 %200, i64* %PC
  %201 = inttoptr i64 %198 to i32*
  %202 = load i32, i32* %201
  %203 = zext i32 %202 to i64
  store i64 %203, i64* %RCX, align 8, !tbaa !2428
  %204 = load i64, i64* %RCX
  %205 = load i64, i64* %RBP
  %206 = sub i64 %205, 28
  %207 = load i64, i64* %PC
  %208 = add i64 %207, 3
  store i64 %208, i64* %PC
  %209 = trunc i64 %204 to i32
  %210 = inttoptr i64 %206 to i32*
  %211 = load i32, i32* %210
  %212 = add i32 %211, %209
  %213 = zext i32 %212 to i64
  store i64 %213, i64* %RCX, align 8, !tbaa !2428
  %214 = icmp ult i32 %212, %209
  %215 = icmp ult i32 %212, %211
  %216 = or i1 %214, %215
  %217 = zext i1 %216 to i8
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %217, i8* %218, align 1, !tbaa !2432
  %219 = and i32 %212, 255
  %220 = call i32 @llvm.ctpop.i32(i32 %219) #16
  %221 = trunc i32 %220 to i8
  %222 = and i8 %221, 1
  %223 = xor i8 %222, 1
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %223, i8* %224, align 1, !tbaa !2446
  %225 = xor i32 %211, %209
  %226 = xor i32 %225, %212
  %227 = lshr i32 %226, 4
  %228 = trunc i32 %227 to i8
  %229 = and i8 %228, 1
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %229, i8* %230, align 1, !tbaa !2447
  %231 = icmp eq i32 %212, 0
  %232 = zext i1 %231 to i8
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %232, i8* %233, align 1, !tbaa !2448
  %234 = lshr i32 %212, 31
  %235 = trunc i32 %234 to i8
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %235, i8* %236, align 1, !tbaa !2449
  %237 = lshr i32 %209, 31
  %238 = lshr i32 %211, 31
  %239 = xor i32 %234, %237
  %240 = xor i32 %234, %238
  %241 = add nuw nsw i32 %239, %240
  %242 = icmp eq i32 %241, 2
  %243 = zext i1 %242 to i8
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %243, i8* %244, align 1, !tbaa !2450
  %245 = load i32, i32* %ECX
  %246 = zext i32 %245 to i64
  %247 = load i64, i64* %PC
  %248 = add i64 %247, 3
  store i64 %248, i64* %PC
  %249 = shl i64 %246, 32
  %250 = ashr exact i64 %249, 32
  store i64 %250, i64* %RDX, align 8, !tbaa !2428
  %251 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %252 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %253 = load i64, i64* %RAX
  %254 = load i64, i64* %RDX
  %255 = mul i64 %254, 8
  %256 = add i64 %255, %253
  %257 = load i64, i64* %PC
  %258 = add i64 %257, 5
  store i64 %258, i64* %PC
  %259 = bitcast i8* %252 to double*
  %260 = load double, double* %259, align 1
  %261 = getelementptr inbounds i8, i8* %252, i64 8
  %262 = bitcast i8* %261 to i64*
  %263 = load i64, i64* %262, align 1
  %264 = inttoptr i64 %256 to double*
  %265 = load double, double* %264
  %266 = fmul double %260, %265
  %267 = bitcast i8* %251 to double*
  store double %266, double* %267, align 1, !tbaa !2452
  %268 = getelementptr inbounds i8, i8* %251, i64 8
  %269 = bitcast i8* %268 to i64*
  store i64 %263, i64* %269, align 1, !tbaa !2452
  %270 = load i64, i64* %RAX
  %271 = load i64, i64* %RDX
  %272 = mul i64 %271, 8
  %273 = add i64 %272, %270
  %274 = bitcast %union.vec128_t* %XMM0 to i8*
  %275 = load i64, i64* %PC
  %276 = add i64 %275, 5
  store i64 %276, i64* %PC
  %277 = bitcast i8* %274 to double*
  %278 = load double, double* %277, align 1
  %279 = inttoptr i64 %273 to double*
  store double %278, double* %279
  %280 = load i64, i64* %RBP
  %281 = sub i64 %280, 32
  %282 = load i64, i64* %PC
  %283 = add i64 %282, 3
  store i64 %283, i64* %PC
  %284 = inttoptr i64 %281 to i32*
  %285 = load i32, i32* %284
  %286 = zext i32 %285 to i64
  store i64 %286, i64* %RAX, align 8, !tbaa !2428
  %287 = load i64, i64* %RAX
  %288 = load i64, i64* %RBP
  %289 = sub i64 %288, 36
  %290 = load i64, i64* %PC
  %291 = add i64 %290, 3
  store i64 %291, i64* %PC
  %292 = trunc i64 %287 to i32
  %293 = inttoptr i64 %289 to i32*
  %294 = load i32, i32* %293
  %295 = add i32 %294, %292
  %296 = zext i32 %295 to i64
  store i64 %296, i64* %RAX, align 8, !tbaa !2428
  %297 = icmp ult i32 %295, %292
  %298 = icmp ult i32 %295, %294
  %299 = or i1 %297, %298
  %300 = zext i1 %299 to i8
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %300, i8* %301, align 1, !tbaa !2432
  %302 = and i32 %295, 255
  %303 = call i32 @llvm.ctpop.i32(i32 %302) #16
  %304 = trunc i32 %303 to i8
  %305 = and i8 %304, 1
  %306 = xor i8 %305, 1
  %307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %306, i8* %307, align 1, !tbaa !2446
  %308 = xor i32 %294, %292
  %309 = xor i32 %308, %295
  %310 = lshr i32 %309, 4
  %311 = trunc i32 %310 to i8
  %312 = and i8 %311, 1
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %312, i8* %313, align 1, !tbaa !2447
  %314 = icmp eq i32 %295, 0
  %315 = zext i1 %314 to i8
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %315, i8* %316, align 1, !tbaa !2448
  %317 = lshr i32 %295, 31
  %318 = trunc i32 %317 to i8
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %318, i8* %319, align 1, !tbaa !2449
  %320 = lshr i32 %292, 31
  %321 = lshr i32 %294, 31
  %322 = xor i32 %317, %320
  %323 = xor i32 %317, %321
  %324 = add nuw nsw i32 %322, %323
  %325 = icmp eq i32 %324, 2
  %326 = zext i1 %325 to i8
  %327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %326, i8* %327, align 1, !tbaa !2450
  %328 = load i64, i64* %RBP
  %329 = sub i64 %328, 36
  %330 = load i32, i32* %EAX
  %331 = zext i32 %330 to i64
  %332 = load i64, i64* %PC
  %333 = add i64 %332, 3
  store i64 %333, i64* %PC
  %334 = inttoptr i64 %329 to i32*
  store i32 %330, i32* %334
  %335 = load i64, i64* %PC
  %336 = sub i64 %335, 49
  %337 = load i64, i64* %PC
  %338 = add i64 %337, 5
  store i64 %338, i64* %PC
  %339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %336, i64* %339, align 8, !tbaa !2428
  br label %block_400a2b

block_400a10:                                     ; preds = %block_4009f0
  %340 = load i64, i64* %RBP
  %341 = sub i64 %340, 32
  %342 = load i64, i64* %PC
  %343 = add i64 %342, 4
  store i64 %343, i64* %PC
  %344 = inttoptr i64 %341 to i32*
  %345 = load i32, i32* %344
  %346 = sub i32 %345, 1
  %347 = icmp ult i32 %345, 1
  %348 = zext i1 %347 to i8
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %348, i8* %349, align 1, !tbaa !2432
  %350 = and i32 %346, 255
  %351 = call i32 @llvm.ctpop.i32(i32 %350) #16
  %352 = trunc i32 %351 to i8
  %353 = and i8 %352, 1
  %354 = xor i8 %353, 1
  %355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %354, i8* %355, align 1, !tbaa !2446
  %356 = xor i32 %345, 1
  %357 = xor i32 %356, %346
  %358 = lshr i32 %357, 4
  %359 = trunc i32 %358 to i8
  %360 = and i8 %359, 1
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %360, i8* %361, align 1, !tbaa !2447
  %362 = icmp eq i32 %346, 0
  %363 = zext i1 %362 to i8
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %363, i8* %364, align 1, !tbaa !2448
  %365 = lshr i32 %346, 31
  %366 = trunc i32 %365 to i8
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %366, i8* %367, align 1, !tbaa !2449
  %368 = lshr i32 %345, 31
  %369 = xor i32 %365, %368
  %370 = add nuw nsw i32 %369, %368
  %371 = icmp eq i32 %370, 2
  %372 = zext i1 %371 to i8
  %373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %372, i8* %373, align 1, !tbaa !2450
  %374 = load i64, i64* %PC
  %375 = add i64 %374, 82
  %376 = load i64, i64* %PC
  %377 = add i64 %376, 6
  %378 = load i64, i64* %PC
  %379 = add i64 %378, 6
  store i64 %379, i64* %PC
  %380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %381 = load i8, i8* %380, align 1, !tbaa !2448
  store i8 %381, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %383 = icmp ne i8 %381, 0
  %384 = select i1 %383, i64 %375, i64 %377
  store i64 %384, i64* %382, align 8, !tbaa !2428
  %385 = load i8, i8* %BRANCH_TAKEN
  %386 = icmp eq i8 %385, 1
  %387 = load i64, i64* %RBP
  br i1 %386, label %block_400a66, label %block_400a1a

block_400a6d:                                     ; preds = %block_400a66, %block_400a79
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400a66 ], [ %MEMORY.0, %block_400a79 ]
  %388 = load i64, i64* %RBP
  %389 = sub i64 %388, 36
  %390 = load i64, i64* %PC
  %391 = add i64 %390, 3
  store i64 %391, i64* %PC
  %392 = inttoptr i64 %389 to i32*
  %393 = load i32, i32* %392
  %394 = zext i32 %393 to i64
  store i64 %394, i64* %RAX, align 8, !tbaa !2428
  %395 = load i32, i32* %EAX
  %396 = zext i32 %395 to i64
  %397 = load i64, i64* %RBP
  %398 = sub i64 %397, 4
  %399 = load i64, i64* %PC
  %400 = add i64 %399, 3
  store i64 %400, i64* %PC
  %401 = inttoptr i64 %398 to i32*
  %402 = load i32, i32* %401
  %403 = sub i32 %395, %402
  %404 = icmp ult i32 %395, %402
  %405 = zext i1 %404 to i8
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %405, i8* %406, align 1, !tbaa !2432
  %407 = and i32 %403, 255
  %408 = call i32 @llvm.ctpop.i32(i32 %407) #16
  %409 = trunc i32 %408 to i8
  %410 = and i8 %409, 1
  %411 = xor i8 %410, 1
  %412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %411, i8* %412, align 1, !tbaa !2446
  %413 = xor i32 %402, %395
  %414 = xor i32 %413, %403
  %415 = lshr i32 %414, 4
  %416 = trunc i32 %415 to i8
  %417 = and i8 %416, 1
  %418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %417, i8* %418, align 1, !tbaa !2447
  %419 = icmp eq i32 %403, 0
  %420 = zext i1 %419 to i8
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %420, i8* %421, align 1, !tbaa !2448
  %422 = lshr i32 %403, 31
  %423 = trunc i32 %422 to i8
  %424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %423, i8* %424, align 1, !tbaa !2449
  %425 = lshr i32 %395, 31
  %426 = lshr i32 %402, 31
  %427 = xor i32 %426, %425
  %428 = xor i32 %422, %425
  %429 = add nuw nsw i32 %428, %427
  %430 = icmp eq i32 %429, 2
  %431 = zext i1 %430 to i8
  %432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %431, i8* %432, align 1, !tbaa !2450
  %433 = load i64, i64* %PC
  %434 = add i64 %433, 48
  %435 = load i64, i64* %PC
  %436 = add i64 %435, 6
  %437 = load i64, i64* %PC
  %438 = add i64 %437, 6
  store i64 %438, i64* %PC
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %440 = load i8, i8* %439, align 1, !tbaa !2449
  %441 = icmp ne i8 %440, 0
  %442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %443 = load i8, i8* %442, align 1, !tbaa !2450
  %444 = icmp ne i8 %443, 0
  %445 = xor i1 %441, %444
  %446 = xor i1 %445, true
  %447 = zext i1 %446 to i8
  store i8 %447, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %449 = select i1 %445, i64 %436, i64 %434
  store i64 %449, i64* %448, align 8, !tbaa !2428
  %450 = load i8, i8* %BRANCH_TAKEN
  %451 = icmp eq i8 %450, 1
  br i1 %451, label %block_400aa3, label %block_400a79

block_400a79:                                     ; preds = %block_400a6d
  %452 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %453 = load i64, i64* %RBP
  %454 = sub i64 %453, 16
  %455 = load i64, i64* %PC
  %456 = add i64 %455, 5
  store i64 %456, i64* %PC
  %457 = inttoptr i64 %454 to double*
  %458 = load double, double* %457
  %459 = bitcast i8* %452 to double*
  store double %458, double* %459, align 1, !tbaa !2452
  %460 = getelementptr inbounds i8, i8* %452, i64 8
  %461 = bitcast i8* %460 to double*
  store double 0.000000e+00, double* %461, align 1, !tbaa !2452
  %462 = load i64, i64* %RBP
  %463 = sub i64 %462, 24
  %464 = load i64, i64* %PC
  %465 = add i64 %464, 4
  store i64 %465, i64* %PC
  %466 = inttoptr i64 %463 to i64*
  %467 = load i64, i64* %466
  store i64 %467, i64* %RAX, align 8, !tbaa !2428
  %468 = load i64, i64* %RBP
  %469 = sub i64 %468, 36
  %470 = load i64, i64* %PC
  %471 = add i64 %470, 3
  store i64 %471, i64* %PC
  %472 = inttoptr i64 %469 to i32*
  %473 = load i32, i32* %472
  %474 = zext i32 %473 to i64
  store i64 %474, i64* %RCX, align 8, !tbaa !2428
  %475 = load i64, i64* %RCX
  %476 = load i64, i64* %RBP
  %477 = sub i64 %476, 28
  %478 = load i64, i64* %PC
  %479 = add i64 %478, 3
  store i64 %479, i64* %PC
  %480 = trunc i64 %475 to i32
  %481 = inttoptr i64 %477 to i32*
  %482 = load i32, i32* %481
  %483 = add i32 %482, %480
  %484 = zext i32 %483 to i64
  store i64 %484, i64* %RCX, align 8, !tbaa !2428
  %485 = icmp ult i32 %483, %480
  %486 = icmp ult i32 %483, %482
  %487 = or i1 %485, %486
  %488 = zext i1 %487 to i8
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %488, i8* %489, align 1, !tbaa !2432
  %490 = and i32 %483, 255
  %491 = call i32 @llvm.ctpop.i32(i32 %490) #16
  %492 = trunc i32 %491 to i8
  %493 = and i8 %492, 1
  %494 = xor i8 %493, 1
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %494, i8* %495, align 1, !tbaa !2446
  %496 = xor i32 %482, %480
  %497 = xor i32 %496, %483
  %498 = lshr i32 %497, 4
  %499 = trunc i32 %498 to i8
  %500 = and i8 %499, 1
  %501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %500, i8* %501, align 1, !tbaa !2447
  %502 = icmp eq i32 %483, 0
  %503 = zext i1 %502 to i8
  %504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %503, i8* %504, align 1, !tbaa !2448
  %505 = lshr i32 %483, 31
  %506 = trunc i32 %505 to i8
  %507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %506, i8* %507, align 1, !tbaa !2449
  %508 = lshr i32 %480, 31
  %509 = lshr i32 %482, 31
  %510 = xor i32 %505, %508
  %511 = xor i32 %505, %509
  %512 = add nuw nsw i32 %510, %511
  %513 = icmp eq i32 %512, 2
  %514 = zext i1 %513 to i8
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %514, i8* %515, align 1, !tbaa !2450
  %516 = load i32, i32* %ECX
  %517 = zext i32 %516 to i64
  %518 = load i64, i64* %PC
  %519 = add i64 %518, 3
  store i64 %519, i64* %PC
  %520 = shl i64 %517, 32
  %521 = ashr exact i64 %520, 32
  store i64 %521, i64* %RDX, align 8, !tbaa !2428
  %522 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %523 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %524 = load i64, i64* %RAX
  %525 = load i64, i64* %RDX
  %526 = mul i64 %525, 8
  %527 = add i64 %526, %524
  %528 = load i64, i64* %PC
  %529 = add i64 %528, 5
  store i64 %529, i64* %PC
  %530 = bitcast i8* %523 to double*
  %531 = load double, double* %530, align 1
  %532 = getelementptr inbounds i8, i8* %523, i64 8
  %533 = bitcast i8* %532 to i64*
  %534 = load i64, i64* %533, align 1
  %535 = inttoptr i64 %527 to double*
  %536 = load double, double* %535
  %537 = fmul double %531, %536
  %538 = bitcast i8* %522 to double*
  store double %537, double* %538, align 1, !tbaa !2452
  %539 = getelementptr inbounds i8, i8* %522, i64 8
  %540 = bitcast i8* %539 to i64*
  store i64 %534, i64* %540, align 1, !tbaa !2452
  %541 = load i64, i64* %RAX
  %542 = load i64, i64* %RDX
  %543 = mul i64 %542, 8
  %544 = add i64 %543, %541
  %545 = bitcast %union.vec128_t* %XMM0 to i8*
  %546 = load i64, i64* %PC
  %547 = add i64 %546, 5
  store i64 %547, i64* %PC
  %548 = bitcast i8* %545 to double*
  %549 = load double, double* %548, align 1
  %550 = inttoptr i64 %544 to double*
  store double %549, double* %550
  %551 = load i64, i64* %RBP
  %552 = sub i64 %551, 36
  %553 = load i64, i64* %PC
  %554 = add i64 %553, 3
  store i64 %554, i64* %PC
  %555 = inttoptr i64 %552 to i32*
  %556 = load i32, i32* %555
  %557 = zext i32 %556 to i64
  store i64 %557, i64* %RAX, align 8, !tbaa !2428
  %558 = load i64, i64* %RAX
  %559 = load i64, i64* %PC
  %560 = add i64 %559, 3
  store i64 %560, i64* %PC
  %561 = trunc i64 %558 to i32
  %562 = add i32 1, %561
  %563 = zext i32 %562 to i64
  store i64 %563, i64* %RAX, align 8, !tbaa !2428
  %564 = icmp ult i32 %562, %561
  %565 = icmp ult i32 %562, 1
  %566 = or i1 %564, %565
  %567 = zext i1 %566 to i8
  %568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %567, i8* %568, align 1, !tbaa !2432
  %569 = and i32 %562, 255
  %570 = call i32 @llvm.ctpop.i32(i32 %569) #16
  %571 = trunc i32 %570 to i8
  %572 = and i8 %571, 1
  %573 = xor i8 %572, 1
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %573, i8* %574, align 1, !tbaa !2446
  %575 = xor i64 1, %558
  %576 = trunc i64 %575 to i32
  %577 = xor i32 %576, %562
  %578 = lshr i32 %577, 4
  %579 = trunc i32 %578 to i8
  %580 = and i8 %579, 1
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %580, i8* %581, align 1, !tbaa !2447
  %582 = icmp eq i32 %562, 0
  %583 = zext i1 %582 to i8
  %584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %583, i8* %584, align 1, !tbaa !2448
  %585 = lshr i32 %562, 31
  %586 = trunc i32 %585 to i8
  %587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %586, i8* %587, align 1, !tbaa !2449
  %588 = lshr i32 %561, 31
  %589 = xor i32 %585, %588
  %590 = add nuw nsw i32 %589, %585
  %591 = icmp eq i32 %590, 2
  %592 = zext i1 %591 to i8
  %593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %592, i8* %593, align 1, !tbaa !2450
  %594 = load i64, i64* %RBP
  %595 = sub i64 %594, 36
  %596 = load i32, i32* %EAX
  %597 = zext i32 %596 to i64
  %598 = load i64, i64* %PC
  %599 = add i64 %598, 3
  store i64 %599, i64* %PC
  %600 = inttoptr i64 %595 to i32*
  store i32 %596, i32* %600
  %601 = load i64, i64* %PC
  %602 = sub i64 %601, 49
  %603 = load i64, i64* %PC
  %604 = add i64 %603, 5
  store i64 %604, i64* %PC
  %605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %602, i64* %605, align 8, !tbaa !2428
  br label %block_400a6d

block_400aad:                                     ; preds = %block_400aa8, %block_4009f0
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_4009f0 ], [ %MEMORY.3, %block_400aa8 ]
  %606 = load i64, i64* %PC
  %607 = add i64 %606, 1
  store i64 %607, i64* %PC
  %608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %609 = load i64, i64* %608, align 8, !tbaa !2428
  %610 = add i64 %609, 8
  %611 = inttoptr i64 %609 to i64*
  %612 = load i64, i64* %611
  store i64 %612, i64* %RBP, align 8, !tbaa !2428
  store i64 %610, i64* %608, align 8, !tbaa !2428
  %613 = load i64, i64* %PC
  %614 = add i64 %613, 1
  store i64 %614, i64* %PC
  %615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %617 = load i64, i64* %616, align 8, !tbaa !2428
  %618 = inttoptr i64 %617 to i64*
  %619 = load i64, i64* %618
  store i64 %619, i64* %615, align 8, !tbaa !2428
  %620 = add i64 %617, 8
  store i64 %620, i64* %616, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.1

block_400a2b:                                     ; preds = %block_400a37, %block_400a1a
  %MEMORY.2 = phi %struct.Memory* [ %2, %block_400a1a ], [ %MEMORY.2, %block_400a37 ]
  %621 = load i64, i64* %RBP
  %622 = sub i64 %621, 36
  %623 = load i64, i64* %PC
  %624 = add i64 %623, 3
  store i64 %624, i64* %PC
  %625 = inttoptr i64 %622 to i32*
  %626 = load i32, i32* %625
  %627 = zext i32 %626 to i64
  store i64 %627, i64* %RAX, align 8, !tbaa !2428
  %628 = load i32, i32* %EAX
  %629 = zext i32 %628 to i64
  %630 = load i64, i64* %RBP
  %631 = sub i64 %630, 40
  %632 = load i64, i64* %PC
  %633 = add i64 %632, 3
  store i64 %633, i64* %PC
  %634 = inttoptr i64 %631 to i32*
  %635 = load i32, i32* %634
  %636 = sub i32 %628, %635
  %637 = icmp ult i32 %628, %635
  %638 = zext i1 %637 to i8
  %639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %638, i8* %639, align 1, !tbaa !2432
  %640 = and i32 %636, 255
  %641 = call i32 @llvm.ctpop.i32(i32 %640) #16
  %642 = trunc i32 %641 to i8
  %643 = and i8 %642, 1
  %644 = xor i8 %643, 1
  %645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %644, i8* %645, align 1, !tbaa !2446
  %646 = xor i32 %635, %628
  %647 = xor i32 %646, %636
  %648 = lshr i32 %647, 4
  %649 = trunc i32 %648 to i8
  %650 = and i8 %649, 1
  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %650, i8* %651, align 1, !tbaa !2447
  %652 = icmp eq i32 %636, 0
  %653 = zext i1 %652 to i8
  %654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %653, i8* %654, align 1, !tbaa !2448
  %655 = lshr i32 %636, 31
  %656 = trunc i32 %655 to i8
  %657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %656, i8* %657, align 1, !tbaa !2449
  %658 = lshr i32 %628, 31
  %659 = lshr i32 %635, 31
  %660 = xor i32 %659, %658
  %661 = xor i32 %655, %658
  %662 = add nuw nsw i32 %661, %660
  %663 = icmp eq i32 %662, 2
  %664 = zext i1 %663 to i8
  %665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %664, i8* %665, align 1, !tbaa !2450
  %666 = load i64, i64* %PC
  %667 = add i64 %666, 48
  %668 = load i64, i64* %PC
  %669 = add i64 %668, 6
  %670 = load i64, i64* %PC
  %671 = add i64 %670, 6
  store i64 %671, i64* %PC
  %672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %673 = load i8, i8* %672, align 1, !tbaa !2449
  %674 = icmp ne i8 %673, 0
  %675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %676 = load i8, i8* %675, align 1, !tbaa !2450
  %677 = icmp ne i8 %676, 0
  %678 = xor i1 %674, %677
  %679 = xor i1 %678, true
  %680 = zext i1 %679 to i8
  store i8 %680, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %682 = select i1 %678, i64 %669, i64 %667
  store i64 %682, i64* %681, align 8, !tbaa !2428
  %683 = load i8, i8* %BRANCH_TAKEN
  %684 = icmp eq i8 %683, 1
  br i1 %684, label %block_400a61, label %block_400a37

block_400aa8:                                     ; preds = %block_400a61, %block_400aa3
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.0, %block_400aa3 ], [ %MEMORY.2, %block_400a61 ]
  %685 = load i64, i64* %PC
  %686 = add i64 %685, 5
  %687 = load i64, i64* %PC
  %688 = add i64 %687, 5
  store i64 %688, i64* %PC
  %689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %686, i64* %689, align 8, !tbaa !2428
  br label %block_400aad

block_400a66:                                     ; preds = %block_400a10
  %690 = sub i64 %387, 36
  %691 = load i64, i64* %PC
  %692 = add i64 %691, 7
  store i64 %692, i64* %PC
  %693 = inttoptr i64 %690 to i32*
  store i32 0, i32* %693
  br label %block_400a6d

block_400aa3:                                     ; preds = %block_400a6d
  %694 = load i64, i64* %PC
  %695 = add i64 %694, 5
  %696 = load i64, i64* %PC
  %697 = add i64 %696, 5
  store i64 %697, i64* %PC
  %698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %695, i64* %698, align 8, !tbaa !2428
  br label %block_400aa8

block_400a61:                                     ; preds = %block_400a2b
  %699 = load i64, i64* %PC
  %700 = add i64 %699, 71
  %701 = load i64, i64* %PC
  %702 = add i64 %701, 5
  store i64 %702, i64* %PC
  %703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %700, i64* %703, align 8, !tbaa !2428
  br label %block_400aa8
}

; Function Attrs: noinline
define %struct.Memory* @sub_4007a0_random_double(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %25 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %24, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %25 to %"class.std::bitset"*
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %27 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %26, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %27 to %"class.std::bitset"*
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %29 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %28, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %29 to %union.vec128_t*
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %31 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %30, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %31 to %union.vec128_t*
  %32 = load i64, i64* %RBP
  %33 = load i64, i64* %PC
  %34 = add i64 %33, 1
  store i64 %34, i64* %PC
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %36 = load i64, i64* %35, align 8, !tbaa !2428
  %37 = add i64 %36, -8
  %38 = inttoptr i64 %37 to i64*
  store i64 %32, i64* %38
  store i64 %37, i64* %35, align 8, !tbaa !2428
  %39 = load i64, i64* %RSP
  %40 = load i64, i64* %PC
  %41 = add i64 %40, 3
  store i64 %41, i64* %PC
  store i64 %39, i64* %RBP, align 8, !tbaa !2428
  %42 = load i64, i64* %PC
  %43 = add i64 %42, 5
  store i64 %43, i64* %PC
  store i64 127773, i64* %RAX, align 8, !tbaa !2428
  %44 = load i32, i32* %EAX
  %45 = zext i32 %44 to i64
  %46 = load i64, i64* %PC
  %47 = add i64 %46, 2
  store i64 %47, i64* %PC
  %48 = and i64 %45, 4294967295
  store i64 %48, i64* %RCX, align 8, !tbaa !2428
  %49 = load i64, i64* %PC
  %50 = add i64 %49, 8
  store i64 %50, i64* %PC
  %51 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602040__data_type* @seg_602040__data to i64), i64 16) to i64*)
  store i64 %51, i64* %RDX, align 8, !tbaa !2428
  %52 = load i64, i64* %RDX
  %53 = load i64, i64* %PC
  %54 = add i64 %53, 7
  store i64 %54, i64* %PC
  %55 = xor i64 123459876, %52
  store i64 %55, i64* %RDX, align 8, !tbaa !2428
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %56, align 1, !tbaa !2432
  %57 = trunc i64 %55 to i32
  %58 = and i32 %57, 255
  %59 = call i32 @llvm.ctpop.i32(i32 %58) #16
  %60 = trunc i32 %59 to i8
  %61 = and i8 %60, 1
  %62 = xor i8 %61, 1
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %62, i8* %63, align 1, !tbaa !2446
  %64 = icmp eq i64 %55, 0
  %65 = zext i1 %64 to i8
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %65, i8* %66, align 1, !tbaa !2448
  %67 = lshr i64 %55, 63
  %68 = trunc i64 %67 to i8
  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %68, i8* %69, align 1, !tbaa !2449
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %70, align 1, !tbaa !2450
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %71, align 1, !tbaa !2447
  %72 = load i64, i64* %RDX
  %73 = load i64, i64* %PC
  %74 = add i64 %73, 8
  store i64 %74, i64* %PC
  store i64 %72, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602040__data_type* @seg_602040__data to i64), i64 16) to i64*)
  %75 = load i64, i64* %PC
  %76 = add i64 %75, 8
  store i64 %76, i64* %PC
  %77 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602040__data_type* @seg_602040__data to i64), i64 16) to i64*)
  store i64 %77, i64* %RAX, align 8, !tbaa !2428
  %78 = load i64, i64* %PC
  %79 = add i64 %78, 2
  store i64 %79, i64* %PC
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %82 = load i64, i64* %81, align 8, !tbaa !2428
  %83 = ashr i64 %82, 63
  store i64 %83, i64* %80, align 8, !tbaa !2428
  %84 = load i64, i64* %RCX
  %85 = load i64, i64* %PC
  %86 = add i64 %85, 3
  store i64 %86, i64* %PC
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %88 = load i64, i64* %87, align 8, !tbaa !2428
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %90 = load i64, i64* %89, align 8, !tbaa !2428
  %91 = sext i64 %84 to i128
  %92 = and i128 %91, -18446744073709551616
  %93 = zext i64 %90 to i128
  %94 = shl nuw i128 %93, 64
  %95 = zext i64 %88 to i128
  %96 = or i128 %94, %95
  %97 = zext i64 %84 to i128
  %98 = or i128 %92, %97
  %99 = sdiv i128 %96, %98
  %100 = trunc i128 %99 to i64
  %101 = and i128 %99, 18446744073709551615
  %102 = sext i64 %100 to i128
  %103 = and i128 %102, -18446744073709551616
  %104 = or i128 %103, %101
  %105 = icmp eq i128 %99, %104
  br i1 %105, label %110, label %106

; <label>:106:                                    ; preds = %block_4007a0
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %108 = load i64, i64* %107, align 8, !tbaa !2428
  %109 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %108, %struct.Memory* %2) #17
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

; <label>:110:                                    ; preds = %block_4007a0
  %111 = srem i128 %96, %98
  %112 = trunc i128 %111 to i64
  store i64 %100, i64* %87, align 8, !tbaa !2428
  store i64 %112, i64* %89, align 8, !tbaa !2428
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %113, align 1, !tbaa !2432
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %114, align 1, !tbaa !2446
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %115, align 1, !tbaa !2447
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %116, align 1, !tbaa !2448
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %117, align 1, !tbaa !2449
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %118, align 1, !tbaa !2450
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit: ; preds = %106, %110
  %119 = phi %struct.Memory* [ %109, %106 ], [ %2, %110 ]
  %120 = load i64, i64* %RBP
  %121 = sub i64 %120, 8
  %122 = load i64, i64* %RAX
  %123 = load i64, i64* %PC
  %124 = add i64 %123, 4
  store i64 %124, i64* %PC
  %125 = inttoptr i64 %121 to i64*
  store i64 %122, i64* %125
  %126 = load i64, i64* %PC
  %127 = add i64 %126, 8
  store i64 %127, i64* %PC
  %128 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602040__data_type* @seg_602040__data to i64), i64 16) to i64*)
  store i64 %128, i64* %RAX, align 8, !tbaa !2428
  %129 = load i64, i64* %RBP
  %130 = sub i64 %129, 8
  %131 = load i64, i64* %PC
  %132 = add i64 %131, 8
  store i64 %132, i64* %PC
  %133 = inttoptr i64 %130 to i64*
  %134 = load i64, i64* %133
  %135 = sext i64 %134 to i128
  %136 = and i128 %135, -18446744073709551616
  %137 = zext i64 %134 to i128
  %138 = or i128 %136, %137
  %139 = mul nsw i128 %138, 127773
  %140 = trunc i128 %139 to i64
  store i64 %140, i64* %RCX, align 8, !tbaa !2428
  %141 = sext i64 %140 to i128
  %142 = icmp ne i128 %141, %139
  %143 = zext i1 %142 to i8
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %143, i8* %144, align 1, !tbaa !2432
  %145 = trunc i128 %139 to i32
  %146 = and i32 %145, 255
  %147 = call i32 @llvm.ctpop.i32(i32 %146) #16
  %148 = trunc i32 %147 to i8
  %149 = and i8 %148, 1
  %150 = xor i8 %149, 1
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %150, i8* %151, align 1, !tbaa !2446
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %152, align 1, !tbaa !2447
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %153, align 1, !tbaa !2448
  %154 = lshr i64 %140, 63
  %155 = trunc i64 %154 to i8
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %155, i8* %156, align 1, !tbaa !2449
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %143, i8* %157, align 1, !tbaa !2450
  %158 = load i64, i64* %RAX
  %159 = load i64, i64* %RCX
  %160 = load i64, i64* %PC
  %161 = add i64 %160, 3
  store i64 %161, i64* %PC
  %162 = sub i64 %158, %159
  store i64 %162, i64* %RAX, align 8, !tbaa !2428
  %163 = icmp ult i64 %158, %159
  %164 = zext i1 %163 to i8
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %164, i8* %165, align 1, !tbaa !2432
  %166 = trunc i64 %162 to i32
  %167 = and i32 %166, 255
  %168 = call i32 @llvm.ctpop.i32(i32 %167) #16
  %169 = trunc i32 %168 to i8
  %170 = and i8 %169, 1
  %171 = xor i8 %170, 1
  %172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %171, i8* %172, align 1, !tbaa !2446
  %173 = xor i64 %159, %158
  %174 = xor i64 %173, %162
  %175 = lshr i64 %174, 4
  %176 = trunc i64 %175 to i8
  %177 = and i8 %176, 1
  %178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %177, i8* %178, align 1, !tbaa !2447
  %179 = icmp eq i64 %162, 0
  %180 = zext i1 %179 to i8
  %181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %180, i8* %181, align 1, !tbaa !2448
  %182 = lshr i64 %162, 63
  %183 = trunc i64 %182 to i8
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %183, i8* %184, align 1, !tbaa !2449
  %185 = lshr i64 %158, 63
  %186 = lshr i64 %159, 63
  %187 = xor i64 %186, %185
  %188 = xor i64 %182, %185
  %189 = add nuw nsw i64 %188, %187
  %190 = icmp eq i64 %189, 2
  %191 = zext i1 %190 to i8
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %191, i8* %192, align 1, !tbaa !2450
  %193 = load i64, i64* %RAX
  %194 = load i64, i64* %PC
  %195 = add i64 %194, 7
  store i64 %195, i64* %PC
  %196 = sext i64 %193 to i128
  %197 = and i128 %196, -18446744073709551616
  %198 = zext i64 %193 to i128
  %199 = or i128 %197, %198
  %200 = mul nsw i128 16807, %199
  %201 = trunc i128 %200 to i64
  store i64 %201, i64* %RAX, align 8, !tbaa !2428
  %202 = sext i64 %201 to i128
  %203 = icmp ne i128 %202, %200
  %204 = zext i1 %203 to i8
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %204, i8* %205, align 1, !tbaa !2432
  %206 = trunc i128 %200 to i32
  %207 = and i32 %206, 255
  %208 = call i32 @llvm.ctpop.i32(i32 %207) #16
  %209 = trunc i32 %208 to i8
  %210 = and i8 %209, 1
  %211 = xor i8 %210, 1
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %211, i8* %212, align 1, !tbaa !2446
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %213, align 1, !tbaa !2447
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %214, align 1, !tbaa !2448
  %215 = lshr i64 %201, 63
  %216 = trunc i64 %215 to i8
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %216, i8* %217, align 1, !tbaa !2449
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %204, i8* %218, align 1, !tbaa !2450
  %219 = load i64, i64* %RBP
  %220 = sub i64 %219, 8
  %221 = load i64, i64* %PC
  %222 = add i64 %221, 8
  store i64 %222, i64* %PC
  %223 = inttoptr i64 %220 to i64*
  %224 = load i64, i64* %223
  %225 = sext i64 %224 to i128
  %226 = and i128 %225, -18446744073709551616
  %227 = zext i64 %224 to i128
  %228 = or i128 %226, %227
  %229 = mul nsw i128 %228, 2836
  %230 = trunc i128 %229 to i64
  store i64 %230, i64* %RCX, align 8, !tbaa !2428
  %231 = sext i64 %230 to i128
  %232 = icmp ne i128 %231, %229
  %233 = zext i1 %232 to i8
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %233, i8* %234, align 1, !tbaa !2432
  %235 = trunc i128 %229 to i32
  %236 = and i32 %235, 255
  %237 = call i32 @llvm.ctpop.i32(i32 %236) #16
  %238 = trunc i32 %237 to i8
  %239 = and i8 %238, 1
  %240 = xor i8 %239, 1
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %240, i8* %241, align 1, !tbaa !2446
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %242, align 1, !tbaa !2447
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %243, align 1, !tbaa !2448
  %244 = lshr i64 %230, 63
  %245 = trunc i64 %244 to i8
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %245, i8* %246, align 1, !tbaa !2449
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %233, i8* %247, align 1, !tbaa !2450
  %248 = load i64, i64* %RAX
  %249 = load i64, i64* %RCX
  %250 = load i64, i64* %PC
  %251 = add i64 %250, 3
  store i64 %251, i64* %PC
  %252 = sub i64 %248, %249
  store i64 %252, i64* %RAX, align 8, !tbaa !2428
  %253 = icmp ult i64 %248, %249
  %254 = zext i1 %253 to i8
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %254, i8* %255, align 1, !tbaa !2432
  %256 = trunc i64 %252 to i32
  %257 = and i32 %256, 255
  %258 = call i32 @llvm.ctpop.i32(i32 %257) #16
  %259 = trunc i32 %258 to i8
  %260 = and i8 %259, 1
  %261 = xor i8 %260, 1
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %261, i8* %262, align 1, !tbaa !2446
  %263 = xor i64 %249, %248
  %264 = xor i64 %263, %252
  %265 = lshr i64 %264, 4
  %266 = trunc i64 %265 to i8
  %267 = and i8 %266, 1
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %267, i8* %268, align 1, !tbaa !2447
  %269 = icmp eq i64 %252, 0
  %270 = zext i1 %269 to i8
  %271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %270, i8* %271, align 1, !tbaa !2448
  %272 = lshr i64 %252, 63
  %273 = trunc i64 %272 to i8
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %273, i8* %274, align 1, !tbaa !2449
  %275 = lshr i64 %248, 63
  %276 = lshr i64 %249, 63
  %277 = xor i64 %276, %275
  %278 = xor i64 %272, %275
  %279 = add nuw nsw i64 %278, %277
  %280 = icmp eq i64 %279, 2
  %281 = zext i1 %280 to i8
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %281, i8* %282, align 1, !tbaa !2450
  %283 = load i64, i64* %RAX
  %284 = load i64, i64* %PC
  %285 = add i64 %284, 8
  store i64 %285, i64* %PC
  store i64 %283, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602040__data_type* @seg_602040__data to i64), i64 16) to i64*)
  %286 = load i64, i64* %PC
  %287 = add i64 %286, 9
  store i64 %287, i64* %PC
  %288 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602040__data_type* @seg_602040__data to i64), i64 16) to i64*)
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %289, align 1, !tbaa !2432
  %290 = trunc i64 %288 to i32
  %291 = and i32 %290, 255
  %292 = call i32 @llvm.ctpop.i32(i32 %291) #16
  %293 = trunc i32 %292 to i8
  %294 = and i8 %293, 1
  %295 = xor i8 %294, 1
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %295, i8* %296, align 1, !tbaa !2446
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %297, align 1, !tbaa !2447
  %298 = icmp eq i64 %288, 0
  %299 = zext i1 %298 to i8
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %299, i8* %300, align 1, !tbaa !2448
  %301 = lshr i64 %288, 63
  %302 = trunc i64 %301 to i8
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %302, i8* %303, align 1, !tbaa !2449
  %304 = lshr i64 %288, 63
  %305 = xor i64 %301, %304
  %306 = add nuw nsw i64 %305, %304
  %307 = icmp eq i64 %306, 2
  %308 = zext i1 %307 to i8
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %308, i8* %309, align 1, !tbaa !2450
  %310 = load i64, i64* %PC
  %311 = add i64 %310, 28
  %312 = load i64, i64* %PC
  %313 = add i64 %312, 6
  %314 = load i64, i64* %PC
  %315 = add i64 %314, 6
  store i64 %315, i64* %PC
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %317 = load i8, i8* %316, align 1, !tbaa !2449
  %318 = icmp ne i8 %317, 0
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %320 = load i8, i8* %319, align 1, !tbaa !2450
  %321 = icmp ne i8 %320, 0
  %322 = xor i1 %318, %321
  %323 = xor i1 %322, true
  %324 = zext i1 %323 to i8
  store i8 %324, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %326 = select i1 %322, i64 %313, i64 %311
  store i64 %326, i64* %325, align 8, !tbaa !2428
  %327 = load i8, i8* %BRANCH_TAKEN
  %328 = icmp eq i8 %327, 1
  br i1 %328, label %block_400825, label %block_40080f

block_40080f:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit
  %329 = load i64, i64* %PC
  %330 = add i64 %329, 8
  store i64 %330, i64* %PC
  %331 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602040__data_type* @seg_602040__data to i64), i64 16) to i64*)
  store i64 %331, i64* %RAX, align 8, !tbaa !2428
  %332 = load i64, i64* %RAX
  %333 = load i64, i64* %PC
  %334 = add i64 %333, 6
  store i64 %334, i64* %PC
  %335 = add i64 2147483647, %332
  store i64 %335, i64* %RAX, align 8, !tbaa !2428
  %336 = icmp ult i64 %335, %332
  %337 = icmp ult i64 %335, 2147483647
  %338 = or i1 %336, %337
  %339 = zext i1 %338 to i8
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %339, i8* %340, align 1, !tbaa !2432
  %341 = trunc i64 %335 to i32
  %342 = and i32 %341, 255
  %343 = call i32 @llvm.ctpop.i32(i32 %342) #16
  %344 = trunc i32 %343 to i8
  %345 = and i8 %344, 1
  %346 = xor i8 %345, 1
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %346, i8* %347, align 1, !tbaa !2446
  %348 = xor i64 2147483647, %332
  %349 = xor i64 %348, %335
  %350 = lshr i64 %349, 4
  %351 = trunc i64 %350 to i8
  %352 = and i8 %351, 1
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %352, i8* %353, align 1, !tbaa !2447
  %354 = icmp eq i64 %335, 0
  %355 = zext i1 %354 to i8
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %355, i8* %356, align 1, !tbaa !2448
  %357 = lshr i64 %335, 63
  %358 = trunc i64 %357 to i8
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %358, i8* %359, align 1, !tbaa !2449
  %360 = lshr i64 %332, 63
  %361 = xor i64 %357, %360
  %362 = add nuw nsw i64 %361, %357
  %363 = icmp eq i64 %362, 2
  %364 = zext i1 %363 to i8
  %365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %364, i8* %365, align 1, !tbaa !2450
  %366 = load i64, i64* %RAX
  %367 = load i64, i64* %PC
  %368 = add i64 %367, 8
  store i64 %368, i64* %PC
  store i64 %366, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602040__data_type* @seg_602040__data to i64), i64 16) to i64*)
  br label %block_400825

block_400825:                                     ; preds = %block_40080f, %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit
  %MEMORY.0 = phi %struct.Memory* [ %119, %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit ], [ %119, %block_40080f ]
  %369 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %370 = load i64, i64* %PC
  %371 = add i64 %370, 8
  store i64 %371, i64* %PC
  %372 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401210__rodata_type* @seg_401210__rodata to i64), i64 8) to double*)
  %373 = bitcast i8* %369 to double*
  store double %372, double* %373, align 1, !tbaa !2452
  %374 = getelementptr inbounds i8, i8* %369, i64 8
  %375 = bitcast i8* %374 to double*
  store double 0.000000e+00, double* %375, align 1, !tbaa !2452
  %376 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %377 = load i64, i64* %PC
  %378 = add i64 %377, 10
  store i64 %378, i64* %PC
  %379 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602040__data_type* @seg_602040__data to i64), i64 16) to i64*)
  %380 = sitofp i64 %379 to double
  %381 = bitcast i8* %376 to double*
  store double %380, double* %381, align 1, !tbaa !2452
  %382 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %383 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %384 = bitcast %union.vec128_t* %XMM1 to i8*
  %385 = load i64, i64* %PC
  %386 = add i64 %385, 4
  store i64 %386, i64* %PC
  %387 = bitcast i8* %383 to double*
  %388 = load double, double* %387, align 1
  %389 = getelementptr inbounds i8, i8* %383, i64 8
  %390 = bitcast i8* %389 to i64*
  %391 = load i64, i64* %390, align 1
  %392 = bitcast i8* %384 to double*
  %393 = load double, double* %392, align 1
  %394 = fmul double %388, %393
  %395 = bitcast i8* %382 to double*
  store double %394, double* %395, align 1, !tbaa !2452
  %396 = getelementptr inbounds i8, i8* %382, i64 8
  %397 = bitcast i8* %396 to i64*
  store i64 %391, i64* %397, align 1, !tbaa !2452
  %398 = load i64, i64* %RBP
  %399 = sub i64 %398, 16
  %400 = bitcast %union.vec128_t* %XMM0 to i8*
  %401 = load i64, i64* %PC
  %402 = add i64 %401, 5
  store i64 %402, i64* %PC
  %403 = bitcast i8* %400 to double*
  %404 = load double, double* %403, align 1
  %405 = inttoptr i64 %399 to double*
  store double %404, double* %405
  %406 = load i64, i64* %PC
  %407 = add i64 %406, 8
  store i64 %407, i64* %PC
  %408 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602040__data_type* @seg_602040__data to i64), i64 16) to i64*)
  store i64 %408, i64* %RAX, align 8, !tbaa !2428
  %409 = load i64, i64* %RAX
  %410 = load i64, i64* %PC
  %411 = add i64 %410, 6
  store i64 %411, i64* %PC
  %412 = xor i64 123459876, %409
  store i64 %412, i64* %RAX, align 8, !tbaa !2428
  %413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %413, align 1, !tbaa !2432
  %414 = trunc i64 %412 to i32
  %415 = and i32 %414, 255
  %416 = call i32 @llvm.ctpop.i32(i32 %415) #16
  %417 = trunc i32 %416 to i8
  %418 = and i8 %417, 1
  %419 = xor i8 %418, 1
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %419, i8* %420, align 1, !tbaa !2446
  %421 = icmp eq i64 %412, 0
  %422 = zext i1 %421 to i8
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %422, i8* %423, align 1, !tbaa !2448
  %424 = lshr i64 %412, 63
  %425 = trunc i64 %424 to i8
  %426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %425, i8* %426, align 1, !tbaa !2449
  %427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %427, align 1, !tbaa !2450
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %428, align 1, !tbaa !2447
  %429 = load i64, i64* %RAX
  %430 = load i64, i64* %PC
  %431 = add i64 %430, 8
  store i64 %431, i64* %PC
  store i64 %429, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602040__data_type* @seg_602040__data to i64), i64 16) to i64*)
  %432 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %433 = load i64, i64* %RBP
  %434 = sub i64 %433, 16
  %435 = load i64, i64* %PC
  %436 = add i64 %435, 5
  store i64 %436, i64* %PC
  %437 = inttoptr i64 %434 to double*
  %438 = load double, double* %437
  %439 = bitcast i8* %432 to double*
  store double %438, double* %439, align 1, !tbaa !2452
  %440 = getelementptr inbounds i8, i8* %432, i64 8
  %441 = bitcast i8* %440 to double*
  store double 0.000000e+00, double* %441, align 1, !tbaa !2452
  %442 = load i64, i64* %PC
  %443 = add i64 %442, 1
  store i64 %443, i64* %PC
  %444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %445 = load i64, i64* %444, align 8, !tbaa !2428
  %446 = add i64 %445, 8
  %447 = inttoptr i64 %445 to i64*
  %448 = load i64, i64* %447
  store i64 %448, i64* %RBP, align 8, !tbaa !2428
  store i64 %446, i64* %444, align 8, !tbaa !2428
  %449 = load i64, i64* %PC
  %450 = add i64 %449, 1
  store i64 %450, i64* %PC
  %451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %453 = load i64, i64* %452, align 8, !tbaa !2428
  %454 = inttoptr i64 %453 to i64*
  %455 = load i64, i64* %454
  store i64 %455, i64* %451, align 8, !tbaa !2428
  %456 = add i64 %453, 8
  store i64 %456, i64* %452, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0
}

; Function Attrs: noinline
define %struct.Memory* @sub_401200___libc_csu_fini(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_401200:
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
define %struct.Memory* @sub_400670_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400670:
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
  %35 = tail call %struct.Memory* @sub_400600_register_tm_clones(%struct.State* %0, i64 %34, %struct.Memory* %2)
  ret %struct.Memory* %35
}

; Function Attrs: noinline
define %struct.Memory* @sub_400e00_dgesl(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400e00:
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
  %19 = getelementptr inbounds %struct.GPR, %struct.GPR* %18, i32 0, i32 19
  %20 = getelementptr inbounds %struct.Reg, %struct.Reg* %19, i32 0, i32 0
  %R9D = bitcast %union.anon* %20 to i32*
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %22 = getelementptr inbounds %struct.GPR, %struct.GPR* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.Reg, %struct.Reg* %22, i32 0, i32 0
  %RAX = bitcast %union.anon* %23 to i64*
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %25 = getelementptr inbounds %struct.GPR, %struct.GPR* %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.Reg, %struct.Reg* %25, i32 0, i32 0
  %RCX = bitcast %union.anon* %26 to i64*
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %28 = getelementptr inbounds %struct.GPR, %struct.GPR* %27, i32 0, i32 7
  %29 = getelementptr inbounds %struct.Reg, %struct.Reg* %28, i32 0, i32 0
  %RDX = bitcast %union.anon* %29 to i64*
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %31 = getelementptr inbounds %struct.GPR, %struct.GPR* %30, i32 0, i32 9
  %32 = getelementptr inbounds %struct.Reg, %struct.Reg* %31, i32 0, i32 0
  %RSI = bitcast %union.anon* %32 to i64*
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %34 = getelementptr inbounds %struct.GPR, %struct.GPR* %33, i32 0, i32 11
  %35 = getelementptr inbounds %struct.Reg, %struct.Reg* %34, i32 0, i32 0
  %RDI = bitcast %union.anon* %35 to i64*
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %37 = getelementptr inbounds %struct.GPR, %struct.GPR* %36, i32 0, i32 13
  %38 = getelementptr inbounds %struct.Reg, %struct.Reg* %37, i32 0, i32 0
  %RSP = bitcast %union.anon* %38 to i64*
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %40 = getelementptr inbounds %struct.GPR, %struct.GPR* %39, i32 0, i32 15
  %41 = getelementptr inbounds %struct.Reg, %struct.Reg* %40, i32 0, i32 0
  %RBP = bitcast %union.anon* %41 to i64*
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %43 = getelementptr inbounds %struct.GPR, %struct.GPR* %42, i32 0, i32 17
  %44 = getelementptr inbounds %struct.Reg, %struct.Reg* %43, i32 0, i32 0
  %R8 = bitcast %union.anon* %44 to i64*
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %46 = getelementptr inbounds %struct.GPR, %struct.GPR* %45, i32 0, i32 19
  %47 = getelementptr inbounds %struct.Reg, %struct.Reg* %46, i32 0, i32 0
  %R9 = bitcast %union.anon* %47 to i64*
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %49 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %48, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %49 to %"class.std::bitset"*
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %51 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %50, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %51 to %"class.std::bitset"*
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
  %69 = sub i64 %66, 64
  store i64 %69, i64* %RSP, align 8, !tbaa !2428
  %70 = icmp ult i64 %66, 64
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
  %80 = xor i64 64, %66
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
  %98 = load i64, i64* %RBP
  %99 = sub i64 %98, 8
  %100 = load i64, i64* %RDI
  %101 = load i64, i64* %PC
  %102 = add i64 %101, 4
  store i64 %102, i64* %PC
  %103 = inttoptr i64 %99 to i64*
  store i64 %100, i64* %103
  %104 = load i64, i64* %RBP
  %105 = sub i64 %104, 16
  %106 = load i64, i64* %RSI
  %107 = load i64, i64* %PC
  %108 = add i64 %107, 4
  store i64 %108, i64* %PC
  %109 = inttoptr i64 %105 to i64*
  store i64 %106, i64* %109
  %110 = load i64, i64* %RBP
  %111 = sub i64 %110, 24
  %112 = load i64, i64* %RDX
  %113 = load i64, i64* %PC
  %114 = add i64 %113, 4
  store i64 %114, i64* %PC
  %115 = inttoptr i64 %111 to i64*
  store i64 %112, i64* %115
  %116 = load i64, i64* %RBP
  %117 = sub i64 %116, 36
  %118 = load i64, i64* %PC
  %119 = add i64 %118, 7
  store i64 %119, i64* %PC
  %120 = inttoptr i64 %117 to i32*
  store i32 0, i32* %120
  br label %block_400e1b

block_400ed5:                                     ; preds = %block_400ee2, %block_400ece
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.1, %block_400ece ], [ %577, %block_400ee2 ]
  %121 = load i64, i64* %RBP
  %122 = sub i64 %121, 40
  %123 = load i64, i64* %PC
  %124 = add i64 %123, 7
  store i64 %124, i64* %PC
  %125 = inttoptr i64 %122 to i32*
  %126 = load i32, i32* %125
  %127 = sub i32 %126, 2000
  %128 = icmp ult i32 %126, 2000
  %129 = zext i1 %128 to i8
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %129, i8* %130, align 1, !tbaa !2432
  %131 = and i32 %127, 255
  %132 = call i32 @llvm.ctpop.i32(i32 %131) #16
  %133 = trunc i32 %132 to i8
  %134 = and i8 %133, 1
  %135 = xor i8 %134, 1
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %135, i8* %136, align 1, !tbaa !2446
  %137 = xor i32 %126, 2000
  %138 = xor i32 %137, %127
  %139 = lshr i32 %138, 4
  %140 = trunc i32 %139 to i8
  %141 = and i8 %140, 1
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %141, i8* %142, align 1, !tbaa !2447
  %143 = icmp eq i32 %127, 0
  %144 = zext i1 %143 to i8
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %144, i8* %145, align 1, !tbaa !2448
  %146 = lshr i32 %127, 31
  %147 = trunc i32 %146 to i8
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %147, i8* %148, align 1, !tbaa !2449
  %149 = lshr i32 %126, 31
  %150 = xor i32 %146, %149
  %151 = add nuw nsw i32 %150, %149
  %152 = icmp eq i32 %151, 2
  %153 = zext i1 %152 to i8
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %153, i8* %154, align 1, !tbaa !2450
  %155 = load i64, i64* %PC
  %156 = add i64 %155, 172
  %157 = load i64, i64* %PC
  %158 = add i64 %157, 6
  %159 = load i64, i64* %PC
  %160 = add i64 %159, 6
  store i64 %160, i64* %PC
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %162 = load i8, i8* %161, align 1, !tbaa !2449
  %163 = icmp ne i8 %162, 0
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %165 = load i8, i8* %164, align 1, !tbaa !2450
  %166 = icmp ne i8 %165, 0
  %167 = xor i1 %163, %166
  %168 = xor i1 %167, true
  %169 = zext i1 %168 to i8
  store i8 %169, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %171 = select i1 %167, i64 %158, i64 %156
  store i64 %171, i64* %170, align 8, !tbaa !2428
  %172 = load i8, i8* %BRANCH_TAKEN
  %173 = icmp eq i8 %172, 1
  br i1 %173, label %block_400f88, label %block_400ee2

block_400e1b:                                     ; preds = %block_400e80, %block_400e00
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_400e00 ], [ %1048, %block_400e80 ]
  %174 = load i64, i64* %RBP
  %175 = sub i64 %174, 36
  %176 = load i64, i64* %PC
  %177 = add i64 %176, 7
  store i64 %177, i64* %PC
  %178 = inttoptr i64 %175 to i32*
  %179 = load i32, i32* %178
  %180 = sub i32 %179, 1999
  %181 = icmp ult i32 %179, 1999
  %182 = zext i1 %181 to i8
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %182, i8* %183, align 1, !tbaa !2432
  %184 = and i32 %180, 255
  %185 = call i32 @llvm.ctpop.i32(i32 %184) #16
  %186 = trunc i32 %185 to i8
  %187 = and i8 %186, 1
  %188 = xor i8 %187, 1
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %188, i8* %189, align 1, !tbaa !2446
  %190 = xor i32 %179, 1999
  %191 = xor i32 %190, %180
  %192 = lshr i32 %191, 4
  %193 = trunc i32 %192 to i8
  %194 = and i8 %193, 1
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %194, i8* %195, align 1, !tbaa !2447
  %196 = icmp eq i32 %180, 0
  %197 = zext i1 %196 to i8
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %197, i8* %198, align 1, !tbaa !2448
  %199 = lshr i32 %180, 31
  %200 = trunc i32 %199 to i8
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %200, i8* %201, align 1, !tbaa !2449
  %202 = lshr i32 %179, 31
  %203 = xor i32 %199, %202
  %204 = add nuw nsw i32 %203, %202
  %205 = icmp eq i32 %204, 2
  %206 = zext i1 %205 to i8
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %206, i8* %207, align 1, !tbaa !2450
  %208 = load i64, i64* %PC
  %209 = add i64 %208, 172
  %210 = load i64, i64* %PC
  %211 = add i64 %210, 6
  %212 = load i64, i64* %PC
  %213 = add i64 %212, 6
  store i64 %213, i64* %PC
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %215 = load i8, i8* %214, align 1, !tbaa !2449
  %216 = icmp ne i8 %215, 0
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %218 = load i8, i8* %217, align 1, !tbaa !2450
  %219 = icmp ne i8 %218, 0
  %220 = xor i1 %216, %219
  %221 = xor i1 %220, true
  %222 = zext i1 %221 to i8
  store i8 %222, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %224 = select i1 %220, i64 %211, i64 %209
  store i64 %224, i64* %223, align 8, !tbaa !2428
  %225 = load i8, i8* %BRANCH_TAKEN
  %226 = icmp eq i8 %225, 1
  %227 = load i64, i64* %RBP
  br i1 %226, label %block_400ece, label %block_400e28

block_400ece:                                     ; preds = %block_400e1b
  %228 = sub i64 %227, 40
  %229 = load i64, i64* %PC
  %230 = add i64 %229, 7
  store i64 %230, i64* %PC
  %231 = inttoptr i64 %228 to i32*
  store i32 0, i32* %231
  br label %block_400ed5

block_400ee2:                                     ; preds = %block_400ed5
  %232 = load i64, i64* %RAX
  %233 = load i32, i32* %EAX
  %234 = zext i32 %233 to i64
  %235 = load i64, i64* %PC
  %236 = add i64 %235, 2
  store i64 %236, i64* %PC
  %237 = xor i64 %234, %232
  %238 = trunc i64 %237 to i32
  %239 = and i64 %237, 4294967295
  store i64 %239, i64* %RAX, align 8, !tbaa !2428
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %240, align 1, !tbaa !2432
  %241 = and i32 %238, 255
  %242 = call i32 @llvm.ctpop.i32(i32 %241) #16
  %243 = trunc i32 %242 to i8
  %244 = and i8 %243, 1
  %245 = xor i8 %244, 1
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %245, i8* %246, align 1, !tbaa !2446
  %247 = icmp eq i32 %238, 0
  %248 = zext i1 %247 to i8
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %248, i8* %249, align 1, !tbaa !2448
  %250 = lshr i32 %238, 31
  %251 = trunc i32 %250 to i8
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %251, i8* %252, align 1, !tbaa !2449
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %253, align 1, !tbaa !2450
  %254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %254, align 1, !tbaa !2447
  %255 = load i64, i64* %PC
  %256 = add i64 %255, 5
  store i64 %256, i64* %PC
  store i64 1, i64* %RCX, align 8, !tbaa !2428
  %257 = load i64, i64* %PC
  %258 = add i64 %257, 10
  store i64 %258, i64* %PC
  store i64 -9223372036854775808, i64* %RDX, align 8, !tbaa !2428
  %259 = load i64, i64* %PC
  %260 = add i64 %259, 5
  store i64 %260, i64* %PC
  store i64 2000, i64* %RSI, align 8, !tbaa !2428
  %261 = load i64, i64* %RBP
  %262 = sub i64 %261, 40
  %263 = load i64, i64* %PC
  %264 = add i64 %263, 3
  store i64 %264, i64* %PC
  %265 = inttoptr i64 %262 to i32*
  %266 = load i32, i32* %265
  %267 = zext i32 %266 to i64
  store i64 %267, i64* %RDI, align 8, !tbaa !2428
  %268 = load i64, i64* %RDI
  %269 = load i64, i64* %PC
  %270 = add i64 %269, 3
  store i64 %270, i64* %PC
  %271 = trunc i64 %268 to i32
  %272 = add i32 1, %271
  %273 = zext i32 %272 to i64
  store i64 %273, i64* %RDI, align 8, !tbaa !2428
  %274 = icmp ult i32 %272, %271
  %275 = icmp ult i32 %272, 1
  %276 = or i1 %274, %275
  %277 = zext i1 %276 to i8
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %277, i8* %278, align 1, !tbaa !2432
  %279 = and i32 %272, 255
  %280 = call i32 @llvm.ctpop.i32(i32 %279) #16
  %281 = trunc i32 %280 to i8
  %282 = and i8 %281, 1
  %283 = xor i8 %282, 1
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %283, i8* %284, align 1, !tbaa !2446
  %285 = xor i64 1, %268
  %286 = trunc i64 %285 to i32
  %287 = xor i32 %286, %272
  %288 = lshr i32 %287, 4
  %289 = trunc i32 %288 to i8
  %290 = and i8 %289, 1
  %291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %290, i8* %291, align 1, !tbaa !2447
  %292 = icmp eq i32 %272, 0
  %293 = zext i1 %292 to i8
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %293, i8* %294, align 1, !tbaa !2448
  %295 = lshr i32 %272, 31
  %296 = trunc i32 %295 to i8
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %296, i8* %297, align 1, !tbaa !2449
  %298 = lshr i32 %271, 31
  %299 = xor i32 %295, %298
  %300 = add nuw nsw i32 %299, %295
  %301 = icmp eq i32 %300, 2
  %302 = zext i1 %301 to i8
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %302, i8* %303, align 1, !tbaa !2450
  %304 = load i64, i64* %RSI
  %305 = load i32, i32* %EDI
  %306 = zext i32 %305 to i64
  %307 = load i64, i64* %PC
  %308 = add i64 %307, 2
  store i64 %308, i64* %PC
  %309 = trunc i64 %304 to i32
  %310 = sub i32 %309, %305
  %311 = zext i32 %310 to i64
  store i64 %311, i64* %RSI, align 8, !tbaa !2428
  %312 = icmp ult i32 %309, %305
  %313 = zext i1 %312 to i8
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %313, i8* %314, align 1, !tbaa !2432
  %315 = and i32 %310, 255
  %316 = call i32 @llvm.ctpop.i32(i32 %315) #16
  %317 = trunc i32 %316 to i8
  %318 = and i8 %317, 1
  %319 = xor i8 %318, 1
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %319, i8* %320, align 1, !tbaa !2446
  %321 = xor i64 %306, %304
  %322 = trunc i64 %321 to i32
  %323 = xor i32 %322, %310
  %324 = lshr i32 %323, 4
  %325 = trunc i32 %324 to i8
  %326 = and i8 %325, 1
  %327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %326, i8* %327, align 1, !tbaa !2447
  %328 = icmp eq i32 %310, 0
  %329 = zext i1 %328 to i8
  %330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %329, i8* %330, align 1, !tbaa !2448
  %331 = lshr i32 %310, 31
  %332 = trunc i32 %331 to i8
  %333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %332, i8* %333, align 1, !tbaa !2449
  %334 = lshr i32 %309, 31
  %335 = lshr i32 %305, 31
  %336 = xor i32 %335, %334
  %337 = xor i32 %331, %334
  %338 = add nuw nsw i32 %337, %336
  %339 = icmp eq i32 %338, 2
  %340 = zext i1 %339 to i8
  %341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %340, i8* %341, align 1, !tbaa !2450
  %342 = load i64, i64* %RBP
  %343 = sub i64 %342, 36
  %344 = load i32, i32* %ESI
  %345 = zext i32 %344 to i64
  %346 = load i64, i64* %PC
  %347 = add i64 %346, 3
  store i64 %347, i64* %PC
  %348 = inttoptr i64 %343 to i32*
  store i32 %344, i32* %348
  %349 = load i64, i64* %RBP
  %350 = sub i64 %349, 8
  %351 = load i64, i64* %PC
  %352 = add i64 %351, 4
  store i64 %352, i64* %PC
  %353 = inttoptr i64 %350 to i64*
  %354 = load i64, i64* %353
  store i64 %354, i64* %R8, align 8, !tbaa !2428
  %355 = load i64, i64* %RBP
  %356 = sub i64 %355, 36
  %357 = load i64, i64* %PC
  %358 = add i64 %357, 4
  store i64 %358, i64* %PC
  %359 = inttoptr i64 %356 to i32*
  %360 = load i32, i32* %359
  %361 = sext i32 %360 to i64
  store i64 %361, i64* %R9, align 8, !tbaa !2428
  %362 = load i64, i64* %R8
  %363 = load i64, i64* %R9
  %364 = mul i64 %363, 8
  %365 = add i64 %364, %362
  %366 = load i64, i64* %PC
  %367 = add i64 %366, 4
  store i64 %367, i64* %PC
  %368 = inttoptr i64 %365 to i64*
  %369 = load i64, i64* %368
  store i64 %369, i64* %R8, align 8, !tbaa !2428
  %370 = load i64, i64* %RBP
  %371 = sub i64 %370, 36
  %372 = load i64, i64* %PC
  %373 = add i64 %372, 4
  store i64 %373, i64* %PC
  %374 = inttoptr i64 %371 to i32*
  %375 = load i32, i32* %374
  %376 = sext i32 %375 to i64
  store i64 %376, i64* %R9, align 8, !tbaa !2428
  %377 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %378 = load i64, i64* %R8
  %379 = load i64, i64* %R9
  %380 = mul i64 %379, 8
  %381 = add i64 %380, %378
  %382 = load i64, i64* %PC
  %383 = add i64 %382, 6
  store i64 %383, i64* %PC
  %384 = inttoptr i64 %381 to double*
  %385 = load double, double* %384
  %386 = bitcast i8* %377 to double*
  store double %385, double* %386, align 1, !tbaa !2452
  %387 = getelementptr inbounds i8, i8* %377, i64 8
  %388 = bitcast i8* %387 to double*
  store double 0.000000e+00, double* %388, align 1, !tbaa !2452
  %389 = load i64, i64* %RBP
  %390 = sub i64 %389, 24
  %391 = load i64, i64* %PC
  %392 = add i64 %391, 4
  store i64 %392, i64* %PC
  %393 = inttoptr i64 %390 to i64*
  %394 = load i64, i64* %393
  store i64 %394, i64* %R8, align 8, !tbaa !2428
  %395 = load i64, i64* %RBP
  %396 = sub i64 %395, 36
  %397 = load i64, i64* %PC
  %398 = add i64 %397, 4
  store i64 %398, i64* %PC
  %399 = inttoptr i64 %396 to i32*
  %400 = load i32, i32* %399
  %401 = sext i32 %400 to i64
  store i64 %401, i64* %R9, align 8, !tbaa !2428
  %402 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %403 = load i64, i64* %R8
  %404 = load i64, i64* %R9
  %405 = mul i64 %404, 8
  %406 = add i64 %405, %403
  %407 = load i64, i64* %PC
  %408 = add i64 %407, 6
  store i64 %408, i64* %PC
  %409 = inttoptr i64 %406 to double*
  %410 = load double, double* %409
  %411 = bitcast i8* %402 to double*
  store double %410, double* %411, align 1, !tbaa !2452
  %412 = getelementptr inbounds i8, i8* %402, i64 8
  %413 = bitcast i8* %412 to double*
  store double 0.000000e+00, double* %413, align 1, !tbaa !2452
  %414 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %415 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %416 = bitcast %union.vec128_t* %XMM0 to i8*
  %417 = load i64, i64* %PC
  %418 = add i64 %417, 4
  store i64 %418, i64* %PC
  %419 = bitcast i8* %415 to double*
  %420 = load double, double* %419, align 1
  %421 = getelementptr inbounds i8, i8* %415, i64 8
  %422 = bitcast i8* %421 to i64*
  %423 = load i64, i64* %422, align 1
  %424 = bitcast i8* %416 to double*
  %425 = load double, double* %424, align 1
  %426 = fdiv double %420, %425
  %427 = bitcast i8* %414 to double*
  store double %426, double* %427, align 1, !tbaa !2452
  %428 = getelementptr inbounds i8, i8* %414, i64 8
  %429 = bitcast i8* %428 to i64*
  store i64 %423, i64* %429, align 1, !tbaa !2452
  %430 = load i64, i64* %R8
  %431 = load i64, i64* %R9
  %432 = mul i64 %431, 8
  %433 = add i64 %432, %430
  %434 = bitcast %union.vec128_t* %XMM1 to i8*
  %435 = load i64, i64* %PC
  %436 = add i64 %435, 6
  store i64 %436, i64* %PC
  %437 = bitcast i8* %434 to double*
  %438 = load double, double* %437, align 1
  %439 = inttoptr i64 %433 to double*
  store double %438, double* %439
  %440 = load i64, i64* %RBP
  %441 = sub i64 %440, 24
  %442 = load i64, i64* %PC
  %443 = add i64 %442, 4
  store i64 %443, i64* %PC
  %444 = inttoptr i64 %441 to i64*
  %445 = load i64, i64* %444
  store i64 %445, i64* %R8, align 8, !tbaa !2428
  %446 = load i64, i64* %RBP
  %447 = sub i64 %446, 36
  %448 = load i64, i64* %PC
  %449 = add i64 %448, 4
  store i64 %449, i64* %PC
  %450 = inttoptr i64 %447 to i32*
  %451 = load i32, i32* %450
  %452 = sext i32 %451 to i64
  store i64 %452, i64* %R9, align 8, !tbaa !2428
  %453 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %454 = load i64, i64* %R8
  %455 = load i64, i64* %R9
  %456 = mul i64 %455, 8
  %457 = add i64 %456, %454
  %458 = load i64, i64* %PC
  %459 = add i64 %458, 6
  store i64 %459, i64* %PC
  %460 = inttoptr i64 %457 to double*
  %461 = load double, double* %460
  %462 = bitcast i8* %453 to double*
  store double %461, double* %462, align 1, !tbaa !2452
  %463 = getelementptr inbounds i8, i8* %453, i64 8
  %464 = bitcast i8* %463 to double*
  store double 0.000000e+00, double* %464, align 1, !tbaa !2452
  %465 = bitcast %union.vec128_t* %XMM0 to i8*
  %466 = load i64, i64* %PC
  %467 = add i64 %466, 5
  store i64 %467, i64* %PC
  %468 = bitcast i8* %465 to i64*
  %469 = load i64, i64* %468, align 1
  store i64 %469, i64* %R8, align 1, !tbaa !2428
  %470 = load i64, i64* %R8
  %471 = load i64, i64* %RDX
  %472 = load i64, i64* %PC
  %473 = add i64 %472, 3
  store i64 %473, i64* %PC
  %474 = xor i64 %471, %470
  store i64 %474, i64* %R8, align 8, !tbaa !2428
  %475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %475, align 1, !tbaa !2432
  %476 = trunc i64 %474 to i32
  %477 = and i32 %476, 255
  %478 = call i32 @llvm.ctpop.i32(i32 %477) #16
  %479 = trunc i32 %478 to i8
  %480 = and i8 %479, 1
  %481 = xor i8 %480, 1
  %482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %481, i8* %482, align 1, !tbaa !2446
  %483 = icmp eq i64 %474, 0
  %484 = zext i1 %483 to i8
  %485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %484, i8* %485, align 1, !tbaa !2448
  %486 = lshr i64 %474, 63
  %487 = trunc i64 %486 to i8
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %487, i8* %488, align 1, !tbaa !2449
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %489, align 1, !tbaa !2450
  %490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %490, align 1, !tbaa !2447
  %491 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %492 = load i64, i64* %R8
  %493 = load i64, i64* %PC
  %494 = add i64 %493, 5
  store i64 %494, i64* %PC
  %495 = bitcast i8* %491 to i64*
  store i64 %492, i64* %495, align 1, !tbaa !2428
  %496 = getelementptr inbounds i8, i8* %491, i64 8
  %497 = bitcast i8* %496 to i64*
  store i64 0, i64* %497, align 1, !tbaa !2428
  %498 = load i64, i64* %RBP
  %499 = sub i64 %498, 32
  %500 = bitcast %union.vec128_t* %XMM0 to i8*
  %501 = load i64, i64* %PC
  %502 = add i64 %501, 5
  store i64 %502, i64* %PC
  %503 = bitcast i8* %500 to double*
  %504 = load double, double* %503, align 1
  %505 = inttoptr i64 %499 to double*
  store double %504, double* %505
  %506 = load i64, i64* %RBP
  %507 = sub i64 %506, 36
  %508 = load i64, i64* %PC
  %509 = add i64 %508, 3
  store i64 %509, i64* %PC
  %510 = inttoptr i64 %507 to i32*
  %511 = load i32, i32* %510
  %512 = zext i32 %511 to i64
  store i64 %512, i64* %RDI, align 8, !tbaa !2428
  %513 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %514 = load i64, i64* %RBP
  %515 = sub i64 %514, 32
  %516 = load i64, i64* %PC
  %517 = add i64 %516, 5
  store i64 %517, i64* %PC
  %518 = inttoptr i64 %515 to double*
  %519 = load double, double* %518
  %520 = bitcast i8* %513 to double*
  store double %519, double* %520, align 1, !tbaa !2452
  %521 = getelementptr inbounds i8, i8* %513, i64 8
  %522 = bitcast i8* %521 to double*
  store double 0.000000e+00, double* %522, align 1, !tbaa !2452
  %523 = load i64, i64* %RBP
  %524 = sub i64 %523, 8
  %525 = load i64, i64* %PC
  %526 = add i64 %525, 4
  store i64 %526, i64* %PC
  %527 = inttoptr i64 %524 to i64*
  %528 = load i64, i64* %527
  store i64 %528, i64* %RDX, align 8, !tbaa !2428
  %529 = load i64, i64* %RBP
  %530 = sub i64 %529, 36
  %531 = load i64, i64* %PC
  %532 = add i64 %531, 4
  store i64 %532, i64* %PC
  %533 = inttoptr i64 %530 to i32*
  %534 = load i32, i32* %533
  %535 = sext i32 %534 to i64
  store i64 %535, i64* %R8, align 8, !tbaa !2428
  %536 = load i64, i64* %RDX
  %537 = load i64, i64* %R8
  %538 = mul i64 %537, 8
  %539 = add i64 %538, %536
  %540 = load i64, i64* %PC
  %541 = add i64 %540, 4
  store i64 %541, i64* %PC
  %542 = inttoptr i64 %539 to i64*
  %543 = load i64, i64* %542
  store i64 %543, i64* %RSI, align 8, !tbaa !2428
  %544 = load i64, i64* %RBP
  %545 = sub i64 %544, 24
  %546 = load i64, i64* %PC
  %547 = add i64 %546, 4
  store i64 %547, i64* %PC
  %548 = inttoptr i64 %545 to i64*
  %549 = load i64, i64* %548
  store i64 %549, i64* %R8, align 8, !tbaa !2428
  %550 = load i32, i32* %EAX
  %551 = zext i32 %550 to i64
  %552 = load i64, i64* %PC
  %553 = add i64 %552, 2
  store i64 %553, i64* %PC
  %554 = and i64 %551, 4294967295
  store i64 %554, i64* %RDX, align 8, !tbaa !2428
  %555 = bitcast i32* %R9D to i64*
  %556 = load i32, i32* %EAX
  %557 = zext i32 %556 to i64
  %558 = load i64, i64* %PC
  %559 = add i64 %558, 3
  store i64 %559, i64* %PC
  %560 = and i64 %557, 4294967295
  store i64 %560, i64* %555, align 8, !tbaa !2428
  %561 = load i64, i64* %RSP
  %562 = load i64, i64* %PC
  %563 = add i64 %562, 7
  store i64 %563, i64* %PC
  %564 = inttoptr i64 %561 to i32*
  store i32 1, i32* %564
  %565 = load i64, i64* %PC
  %566 = sub i64 %565, 1221
  %567 = load i64, i64* %PC
  %568 = add i64 %567, 5
  %569 = load i64, i64* %PC
  %570 = add i64 %569, 5
  store i64 %570, i64* %PC
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %572 = load i64, i64* %571, align 8, !tbaa !2428
  %573 = add i64 %572, -8
  %574 = inttoptr i64 %573 to i64*
  store i64 %568, i64* %574
  store i64 %573, i64* %571, align 8, !tbaa !2428
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %566, i64* %575, align 8, !tbaa !2428
  %576 = load i64, i64* %PC
  %577 = call %struct.Memory* @sub_400ab0_daxpy(%struct.State* %0, i64 %576, %struct.Memory* %MEMORY.0)
  %578 = load i64, i64* %RBP
  %579 = sub i64 %578, 40
  %580 = load i64, i64* %PC
  %581 = add i64 %580, 3
  store i64 %581, i64* %PC
  %582 = inttoptr i64 %579 to i32*
  %583 = load i32, i32* %582
  %584 = zext i32 %583 to i64
  store i64 %584, i64* %RAX, align 8, !tbaa !2428
  %585 = load i64, i64* %RAX
  %586 = load i64, i64* %PC
  %587 = add i64 %586, 3
  store i64 %587, i64* %PC
  %588 = trunc i64 %585 to i32
  %589 = add i32 1, %588
  %590 = zext i32 %589 to i64
  store i64 %590, i64* %RAX, align 8, !tbaa !2428
  %591 = icmp ult i32 %589, %588
  %592 = icmp ult i32 %589, 1
  %593 = or i1 %591, %592
  %594 = zext i1 %593 to i8
  %595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %594, i8* %595, align 1, !tbaa !2432
  %596 = and i32 %589, 255
  %597 = call i32 @llvm.ctpop.i32(i32 %596) #16
  %598 = trunc i32 %597 to i8
  %599 = and i8 %598, 1
  %600 = xor i8 %599, 1
  %601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %600, i8* %601, align 1, !tbaa !2446
  %602 = xor i64 1, %585
  %603 = trunc i64 %602 to i32
  %604 = xor i32 %603, %589
  %605 = lshr i32 %604, 4
  %606 = trunc i32 %605 to i8
  %607 = and i8 %606, 1
  %608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %607, i8* %608, align 1, !tbaa !2447
  %609 = icmp eq i32 %589, 0
  %610 = zext i1 %609 to i8
  %611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %610, i8* %611, align 1, !tbaa !2448
  %612 = lshr i32 %589, 31
  %613 = trunc i32 %612 to i8
  %614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %613, i8* %614, align 1, !tbaa !2449
  %615 = lshr i32 %588, 31
  %616 = xor i32 %612, %615
  %617 = add nuw nsw i32 %616, %612
  %618 = icmp eq i32 %617, 2
  %619 = zext i1 %618 to i8
  %620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %619, i8* %620, align 1, !tbaa !2450
  %621 = load i64, i64* %RBP
  %622 = sub i64 %621, 40
  %623 = load i32, i32* %EAX
  %624 = zext i32 %623 to i64
  %625 = load i64, i64* %PC
  %626 = add i64 %625, 3
  store i64 %626, i64* %PC
  %627 = inttoptr i64 %622 to i32*
  store i32 %623, i32* %627
  %628 = load i64, i64* %PC
  %629 = sub i64 %628, 174
  %630 = load i64, i64* %PC
  %631 = add i64 %630, 5
  store i64 %631, i64* %PC
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %629, i64* %632, align 8, !tbaa !2428
  br label %block_400ed5

block_400e54:                                     ; preds = %block_400e28
  %633 = load i64, i64* %RBP
  %634 = sub i64 %633, 24
  %635 = load i64, i64* %PC
  %636 = add i64 %635, 4
  store i64 %636, i64* %PC
  %637 = inttoptr i64 %634 to i64*
  %638 = load i64, i64* %637
  store i64 %638, i64* %RAX, align 8, !tbaa !2428
  %639 = load i64, i64* %RBP
  %640 = sub i64 %639, 36
  %641 = load i64, i64* %PC
  %642 = add i64 %641, 4
  store i64 %642, i64* %PC
  %643 = inttoptr i64 %640 to i32*
  %644 = load i32, i32* %643
  %645 = sext i32 %644 to i64
  store i64 %645, i64* %RCX, align 8, !tbaa !2428
  %646 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %647 = load i64, i64* %RAX
  %648 = load i64, i64* %RCX
  %649 = mul i64 %648, 8
  %650 = add i64 %649, %647
  %651 = load i64, i64* %PC
  %652 = add i64 %651, 5
  store i64 %652, i64* %PC
  %653 = inttoptr i64 %650 to double*
  %654 = load double, double* %653
  %655 = bitcast i8* %646 to double*
  store double %654, double* %655, align 1, !tbaa !2452
  %656 = getelementptr inbounds i8, i8* %646, i64 8
  %657 = bitcast i8* %656 to double*
  store double 0.000000e+00, double* %657, align 1, !tbaa !2452
  %658 = load i64, i64* %RBP
  %659 = sub i64 %658, 24
  %660 = load i64, i64* %PC
  %661 = add i64 %660, 4
  store i64 %661, i64* %PC
  %662 = inttoptr i64 %659 to i64*
  %663 = load i64, i64* %662
  store i64 %663, i64* %RAX, align 8, !tbaa !2428
  %664 = load i64, i64* %RBP
  %665 = sub i64 %664, 44
  %666 = load i64, i64* %PC
  %667 = add i64 %666, 4
  store i64 %667, i64* %PC
  %668 = inttoptr i64 %665 to i32*
  %669 = load i32, i32* %668
  %670 = sext i32 %669 to i64
  store i64 %670, i64* %RCX, align 8, !tbaa !2428
  %671 = load i64, i64* %RAX
  %672 = load i64, i64* %RCX
  %673 = mul i64 %672, 8
  %674 = add i64 %673, %671
  %675 = bitcast %union.vec128_t* %XMM0 to i8*
  %676 = load i64, i64* %PC
  %677 = add i64 %676, 5
  store i64 %677, i64* %PC
  %678 = bitcast i8* %675 to double*
  %679 = load double, double* %678, align 1
  %680 = inttoptr i64 %674 to double*
  store double %679, double* %680
  %681 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %682 = load i64, i64* %RBP
  %683 = sub i64 %682, 32
  %684 = load i64, i64* %PC
  %685 = add i64 %684, 5
  store i64 %685, i64* %PC
  %686 = inttoptr i64 %683 to double*
  %687 = load double, double* %686
  %688 = bitcast i8* %681 to double*
  store double %687, double* %688, align 1, !tbaa !2452
  %689 = getelementptr inbounds i8, i8* %681, i64 8
  %690 = bitcast i8* %689 to double*
  store double 0.000000e+00, double* %690, align 1, !tbaa !2452
  %691 = load i64, i64* %RBP
  %692 = sub i64 %691, 24
  %693 = load i64, i64* %PC
  %694 = add i64 %693, 4
  store i64 %694, i64* %PC
  %695 = inttoptr i64 %692 to i64*
  %696 = load i64, i64* %695
  store i64 %696, i64* %RAX, align 8, !tbaa !2428
  %697 = load i64, i64* %RBP
  %698 = sub i64 %697, 36
  %699 = load i64, i64* %PC
  %700 = add i64 %699, 4
  store i64 %700, i64* %PC
  %701 = inttoptr i64 %698 to i32*
  %702 = load i32, i32* %701
  %703 = sext i32 %702 to i64
  store i64 %703, i64* %RCX, align 8, !tbaa !2428
  %704 = load i64, i64* %RAX
  %705 = load i64, i64* %RCX
  %706 = mul i64 %705, 8
  %707 = add i64 %706, %704
  %708 = bitcast %union.vec128_t* %XMM0 to i8*
  %709 = load i64, i64* %PC
  %710 = add i64 %709, 5
  store i64 %710, i64* %PC
  %711 = bitcast i8* %708 to double*
  %712 = load double, double* %711, align 1
  %713 = inttoptr i64 %707 to double*
  store double %712, double* %713
  br label %block_400e80

block_400e28:                                     ; preds = %block_400e1b
  %714 = sub i64 %227, 16
  %715 = load i64, i64* %PC
  %716 = add i64 %715, 4
  store i64 %716, i64* %PC
  %717 = inttoptr i64 %714 to i64*
  %718 = load i64, i64* %717
  store i64 %718, i64* %RAX, align 8, !tbaa !2428
  %719 = load i64, i64* %RBP
  %720 = sub i64 %719, 36
  %721 = load i64, i64* %PC
  %722 = add i64 %721, 4
  store i64 %722, i64* %PC
  %723 = inttoptr i64 %720 to i32*
  %724 = load i32, i32* %723
  %725 = sext i32 %724 to i64
  store i64 %725, i64* %RCX, align 8, !tbaa !2428
  %726 = load i64, i64* %RAX
  %727 = load i64, i64* %RCX
  %728 = mul i64 %727, 4
  %729 = add i64 %728, %726
  %730 = load i64, i64* %PC
  %731 = add i64 %730, 3
  store i64 %731, i64* %PC
  %732 = inttoptr i64 %729 to i32*
  %733 = load i32, i32* %732
  %734 = zext i32 %733 to i64
  store i64 %734, i64* %RDX, align 8, !tbaa !2428
  %735 = load i64, i64* %RBP
  %736 = sub i64 %735, 44
  %737 = load i32, i32* %EDX
  %738 = zext i32 %737 to i64
  %739 = load i64, i64* %PC
  %740 = add i64 %739, 3
  store i64 %740, i64* %PC
  %741 = inttoptr i64 %736 to i32*
  store i32 %737, i32* %741
  %742 = load i64, i64* %RBP
  %743 = sub i64 %742, 24
  %744 = load i64, i64* %PC
  %745 = add i64 %744, 4
  store i64 %745, i64* %PC
  %746 = inttoptr i64 %743 to i64*
  %747 = load i64, i64* %746
  store i64 %747, i64* %RAX, align 8, !tbaa !2428
  %748 = load i64, i64* %RBP
  %749 = sub i64 %748, 44
  %750 = load i64, i64* %PC
  %751 = add i64 %750, 4
  store i64 %751, i64* %PC
  %752 = inttoptr i64 %749 to i32*
  %753 = load i32, i32* %752
  %754 = sext i32 %753 to i64
  store i64 %754, i64* %RCX, align 8, !tbaa !2428
  %755 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %756 = load i64, i64* %RAX
  %757 = load i64, i64* %RCX
  %758 = mul i64 %757, 8
  %759 = add i64 %758, %756
  %760 = load i64, i64* %PC
  %761 = add i64 %760, 5
  store i64 %761, i64* %PC
  %762 = inttoptr i64 %759 to double*
  %763 = load double, double* %762
  %764 = bitcast i8* %755 to double*
  store double %763, double* %764, align 1, !tbaa !2452
  %765 = getelementptr inbounds i8, i8* %755, i64 8
  %766 = bitcast i8* %765 to double*
  store double 0.000000e+00, double* %766, align 1, !tbaa !2452
  %767 = load i64, i64* %RBP
  %768 = sub i64 %767, 32
  %769 = bitcast %union.vec128_t* %XMM0 to i8*
  %770 = load i64, i64* %PC
  %771 = add i64 %770, 5
  store i64 %771, i64* %PC
  %772 = bitcast i8* %769 to double*
  %773 = load double, double* %772, align 1
  %774 = inttoptr i64 %768 to double*
  store double %773, double* %774
  %775 = load i64, i64* %RBP
  %776 = sub i64 %775, 44
  %777 = load i64, i64* %PC
  %778 = add i64 %777, 3
  store i64 %778, i64* %PC
  %779 = inttoptr i64 %776 to i32*
  %780 = load i32, i32* %779
  %781 = zext i32 %780 to i64
  store i64 %781, i64* %RDX, align 8, !tbaa !2428
  %782 = load i32, i32* %EDX
  %783 = zext i32 %782 to i64
  %784 = load i64, i64* %RBP
  %785 = sub i64 %784, 36
  %786 = load i64, i64* %PC
  %787 = add i64 %786, 3
  store i64 %787, i64* %PC
  %788 = inttoptr i64 %785 to i32*
  %789 = load i32, i32* %788
  %790 = sub i32 %782, %789
  %791 = icmp ult i32 %782, %789
  %792 = zext i1 %791 to i8
  %793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %792, i8* %793, align 1, !tbaa !2432
  %794 = and i32 %790, 255
  %795 = call i32 @llvm.ctpop.i32(i32 %794) #16
  %796 = trunc i32 %795 to i8
  %797 = and i8 %796, 1
  %798 = xor i8 %797, 1
  %799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %798, i8* %799, align 1, !tbaa !2446
  %800 = xor i32 %789, %782
  %801 = xor i32 %800, %790
  %802 = lshr i32 %801, 4
  %803 = trunc i32 %802 to i8
  %804 = and i8 %803, 1
  %805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %804, i8* %805, align 1, !tbaa !2447
  %806 = icmp eq i32 %790, 0
  %807 = zext i1 %806 to i8
  %808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %807, i8* %808, align 1, !tbaa !2448
  %809 = lshr i32 %790, 31
  %810 = trunc i32 %809 to i8
  %811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %810, i8* %811, align 1, !tbaa !2449
  %812 = lshr i32 %782, 31
  %813 = lshr i32 %789, 31
  %814 = xor i32 %813, %812
  %815 = xor i32 %809, %812
  %816 = add nuw nsw i32 %815, %814
  %817 = icmp eq i32 %816, 2
  %818 = zext i1 %817 to i8
  %819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %818, i8* %819, align 1, !tbaa !2450
  %820 = load i64, i64* %PC
  %821 = add i64 %820, 50
  %822 = load i64, i64* %PC
  %823 = add i64 %822, 6
  %824 = load i64, i64* %PC
  %825 = add i64 %824, 6
  store i64 %825, i64* %PC
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %827 = load i8, i8* %826, align 1, !tbaa !2448
  store i8 %827, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %829 = icmp ne i8 %827, 0
  %830 = select i1 %829, i64 %821, i64 %823
  store i64 %830, i64* %828, align 8, !tbaa !2428
  %831 = load i8, i8* %BRANCH_TAKEN
  %832 = icmp eq i8 %831, 1
  br i1 %832, label %block_400e80, label %block_400e54

block_400f88:                                     ; preds = %block_400ed5
  %833 = load i64, i64* %RSP
  %834 = load i64, i64* %PC
  %835 = add i64 %834, 4
  store i64 %835, i64* %PC
  %836 = add i64 64, %833
  store i64 %836, i64* %RSP, align 8, !tbaa !2428
  %837 = icmp ult i64 %836, %833
  %838 = icmp ult i64 %836, 64
  %839 = or i1 %837, %838
  %840 = zext i1 %839 to i8
  %841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %840, i8* %841, align 1, !tbaa !2432
  %842 = trunc i64 %836 to i32
  %843 = and i32 %842, 255
  %844 = call i32 @llvm.ctpop.i32(i32 %843) #16
  %845 = trunc i32 %844 to i8
  %846 = and i8 %845, 1
  %847 = xor i8 %846, 1
  %848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %847, i8* %848, align 1, !tbaa !2446
  %849 = xor i64 64, %833
  %850 = xor i64 %849, %836
  %851 = lshr i64 %850, 4
  %852 = trunc i64 %851 to i8
  %853 = and i8 %852, 1
  %854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %853, i8* %854, align 1, !tbaa !2447
  %855 = icmp eq i64 %836, 0
  %856 = zext i1 %855 to i8
  %857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %856, i8* %857, align 1, !tbaa !2448
  %858 = lshr i64 %836, 63
  %859 = trunc i64 %858 to i8
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %859, i8* %860, align 1, !tbaa !2449
  %861 = lshr i64 %833, 63
  %862 = xor i64 %858, %861
  %863 = add nuw nsw i64 %862, %858
  %864 = icmp eq i64 %863, 2
  %865 = zext i1 %864 to i8
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %865, i8* %866, align 1, !tbaa !2450
  %867 = load i64, i64* %PC
  %868 = add i64 %867, 1
  store i64 %868, i64* %PC
  %869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %870 = load i64, i64* %869, align 8, !tbaa !2428
  %871 = add i64 %870, 8
  %872 = inttoptr i64 %870 to i64*
  %873 = load i64, i64* %872
  store i64 %873, i64* %RBP, align 8, !tbaa !2428
  store i64 %871, i64* %869, align 8, !tbaa !2428
  %874 = load i64, i64* %PC
  %875 = add i64 %874, 1
  store i64 %875, i64* %PC
  %876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %878 = load i64, i64* %877, align 8, !tbaa !2428
  %879 = inttoptr i64 %878 to i64*
  %880 = load i64, i64* %879
  store i64 %880, i64* %876, align 8, !tbaa !2428
  %881 = add i64 %878, 8
  store i64 %881, i64* %877, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_400e80:                                     ; preds = %block_400e28, %block_400e54
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.1, %block_400e28 ], [ %MEMORY.1, %block_400e54 ]
  %882 = load i64, i64* %PC
  %883 = add i64 %882, 5
  store i64 %883, i64* %PC
  store i64 1, i64* %RCX, align 8, !tbaa !2428
  %884 = load i64, i64* %PC
  %885 = add i64 %884, 5
  store i64 %885, i64* %PC
  store i64 2000, i64* %RAX, align 8, !tbaa !2428
  %886 = load i64, i64* %RBP
  %887 = sub i64 %886, 36
  %888 = load i64, i64* %PC
  %889 = add i64 %888, 3
  store i64 %889, i64* %PC
  %890 = inttoptr i64 %887 to i32*
  %891 = load i32, i32* %890
  %892 = zext i32 %891 to i64
  store i64 %892, i64* %RDX, align 8, !tbaa !2428
  %893 = load i64, i64* %RDX
  %894 = load i64, i64* %PC
  %895 = add i64 %894, 3
  store i64 %895, i64* %PC
  %896 = trunc i64 %893 to i32
  %897 = add i32 1, %896
  %898 = zext i32 %897 to i64
  store i64 %898, i64* %RDX, align 8, !tbaa !2428
  %899 = icmp ult i32 %897, %896
  %900 = icmp ult i32 %897, 1
  %901 = or i1 %899, %900
  %902 = zext i1 %901 to i8
  %903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %902, i8* %903, align 1, !tbaa !2432
  %904 = and i32 %897, 255
  %905 = call i32 @llvm.ctpop.i32(i32 %904) #16
  %906 = trunc i32 %905 to i8
  %907 = and i8 %906, 1
  %908 = xor i8 %907, 1
  %909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %908, i8* %909, align 1, !tbaa !2446
  %910 = xor i64 1, %893
  %911 = trunc i64 %910 to i32
  %912 = xor i32 %911, %897
  %913 = lshr i32 %912, 4
  %914 = trunc i32 %913 to i8
  %915 = and i8 %914, 1
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %915, i8* %916, align 1, !tbaa !2447
  %917 = icmp eq i32 %897, 0
  %918 = zext i1 %917 to i8
  %919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %918, i8* %919, align 1, !tbaa !2448
  %920 = lshr i32 %897, 31
  %921 = trunc i32 %920 to i8
  %922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %921, i8* %922, align 1, !tbaa !2449
  %923 = lshr i32 %896, 31
  %924 = xor i32 %920, %923
  %925 = add nuw nsw i32 %924, %920
  %926 = icmp eq i32 %925, 2
  %927 = zext i1 %926 to i8
  %928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %927, i8* %928, align 1, !tbaa !2450
  %929 = load i64, i64* %RBP
  %930 = sub i64 %929, 48
  %931 = load i32, i32* %EDX
  %932 = zext i32 %931 to i64
  %933 = load i64, i64* %PC
  %934 = add i64 %933, 3
  store i64 %934, i64* %PC
  %935 = inttoptr i64 %930 to i32*
  store i32 %931, i32* %935
  %936 = load i64, i64* %RAX
  %937 = load i64, i64* %RBP
  %938 = sub i64 %937, 48
  %939 = load i64, i64* %PC
  %940 = add i64 %939, 3
  store i64 %940, i64* %PC
  %941 = trunc i64 %936 to i32
  %942 = inttoptr i64 %938 to i32*
  %943 = load i32, i32* %942
  %944 = sub i32 %941, %943
  %945 = zext i32 %944 to i64
  store i64 %945, i64* %RAX, align 8, !tbaa !2428
  %946 = icmp ult i32 %941, %943
  %947 = zext i1 %946 to i8
  %948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %947, i8* %948, align 1, !tbaa !2432
  %949 = and i32 %944, 255
  %950 = call i32 @llvm.ctpop.i32(i32 %949) #16
  %951 = trunc i32 %950 to i8
  %952 = and i8 %951, 1
  %953 = xor i8 %952, 1
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %953, i8* %954, align 1, !tbaa !2446
  %955 = xor i32 %943, %941
  %956 = xor i32 %955, %944
  %957 = lshr i32 %956, 4
  %958 = trunc i32 %957 to i8
  %959 = and i8 %958, 1
  %960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %959, i8* %960, align 1, !tbaa !2447
  %961 = icmp eq i32 %944, 0
  %962 = zext i1 %961 to i8
  %963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %962, i8* %963, align 1, !tbaa !2448
  %964 = lshr i32 %944, 31
  %965 = trunc i32 %964 to i8
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %965, i8* %966, align 1, !tbaa !2449
  %967 = lshr i32 %941, 31
  %968 = lshr i32 %943, 31
  %969 = xor i32 %968, %967
  %970 = xor i32 %964, %967
  %971 = add nuw nsw i32 %970, %969
  %972 = icmp eq i32 %971, 2
  %973 = zext i1 %972 to i8
  %974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %973, i8* %974, align 1, !tbaa !2450
  %975 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %976 = load i64, i64* %RBP
  %977 = sub i64 %976, 32
  %978 = load i64, i64* %PC
  %979 = add i64 %978, 5
  store i64 %979, i64* %PC
  %980 = inttoptr i64 %977 to double*
  %981 = load double, double* %980
  %982 = bitcast i8* %975 to double*
  store double %981, double* %982, align 1, !tbaa !2452
  %983 = getelementptr inbounds i8, i8* %975, i64 8
  %984 = bitcast i8* %983 to double*
  store double 0.000000e+00, double* %984, align 1, !tbaa !2452
  %985 = load i64, i64* %RBP
  %986 = sub i64 %985, 8
  %987 = load i64, i64* %PC
  %988 = add i64 %987, 4
  store i64 %988, i64* %PC
  %989 = inttoptr i64 %986 to i64*
  %990 = load i64, i64* %989
  store i64 %990, i64* %RSI, align 8, !tbaa !2428
  %991 = load i64, i64* %RBP
  %992 = sub i64 %991, 36
  %993 = load i64, i64* %PC
  %994 = add i64 %993, 4
  store i64 %994, i64* %PC
  %995 = inttoptr i64 %992 to i32*
  %996 = load i32, i32* %995
  %997 = sext i32 %996 to i64
  store i64 %997, i64* %RDI, align 8, !tbaa !2428
  %998 = load i64, i64* %RSI
  %999 = load i64, i64* %RDI
  %1000 = mul i64 %999, 8
  %1001 = add i64 %1000, %998
  %1002 = load i64, i64* %PC
  %1003 = add i64 %1002, 4
  store i64 %1003, i64* %PC
  %1004 = inttoptr i64 %1001 to i64*
  %1005 = load i64, i64* %1004
  store i64 %1005, i64* %RSI, align 8, !tbaa !2428
  %1006 = load i64, i64* %RBP
  %1007 = sub i64 %1006, 48
  %1008 = load i64, i64* %PC
  %1009 = add i64 %1008, 3
  store i64 %1009, i64* %PC
  %1010 = inttoptr i64 %1007 to i32*
  %1011 = load i32, i32* %1010
  %1012 = zext i32 %1011 to i64
  store i64 %1012, i64* %RDX, align 8, !tbaa !2428
  %1013 = load i64, i64* %RBP
  %1014 = sub i64 %1013, 24
  %1015 = load i64, i64* %PC
  %1016 = add i64 %1015, 4
  store i64 %1016, i64* %PC
  %1017 = inttoptr i64 %1014 to i64*
  %1018 = load i64, i64* %1017
  store i64 %1018, i64* %R8, align 8, !tbaa !2428
  %1019 = bitcast i32* %R9D to i64*
  %1020 = load i64, i64* %RBP
  %1021 = sub i64 %1020, 48
  %1022 = load i64, i64* %PC
  %1023 = add i64 %1022, 4
  store i64 %1023, i64* %PC
  %1024 = inttoptr i64 %1021 to i32*
  %1025 = load i32, i32* %1024
  %1026 = zext i32 %1025 to i64
  store i64 %1026, i64* %1019, align 8, !tbaa !2428
  %1027 = load i32, i32* %EAX
  %1028 = zext i32 %1027 to i64
  %1029 = load i64, i64* %PC
  %1030 = add i64 %1029, 2
  store i64 %1030, i64* %PC
  %1031 = and i64 %1028, 4294967295
  store i64 %1031, i64* %RDI, align 8, !tbaa !2428
  %1032 = load i64, i64* %RSP
  %1033 = load i64, i64* %PC
  %1034 = add i64 %1033, 7
  store i64 %1034, i64* %PC
  %1035 = inttoptr i64 %1032 to i32*
  store i32 1, i32* %1035
  %1036 = load i64, i64* %PC
  %1037 = sub i64 %1036, 1035
  %1038 = load i64, i64* %PC
  %1039 = add i64 %1038, 5
  %1040 = load i64, i64* %PC
  %1041 = add i64 %1040, 5
  store i64 %1041, i64* %PC
  %1042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1043 = load i64, i64* %1042, align 8, !tbaa !2428
  %1044 = add i64 %1043, -8
  %1045 = inttoptr i64 %1044 to i64*
  store i64 %1039, i64* %1045
  store i64 %1044, i64* %1042, align 8, !tbaa !2428
  %1046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1037, i64* %1046, align 8, !tbaa !2428
  %1047 = load i64, i64* %PC
  %1048 = call %struct.Memory* @sub_400ab0_daxpy(%struct.State* %0, i64 %1047, %struct.Memory* %MEMORY.2)
  %1049 = load i64, i64* %RBP
  %1050 = sub i64 %1049, 36
  %1051 = load i64, i64* %PC
  %1052 = add i64 %1051, 3
  store i64 %1052, i64* %PC
  %1053 = inttoptr i64 %1050 to i32*
  %1054 = load i32, i32* %1053
  %1055 = zext i32 %1054 to i64
  store i64 %1055, i64* %RAX, align 8, !tbaa !2428
  %1056 = load i64, i64* %RAX
  %1057 = load i64, i64* %PC
  %1058 = add i64 %1057, 3
  store i64 %1058, i64* %PC
  %1059 = trunc i64 %1056 to i32
  %1060 = add i32 1, %1059
  %1061 = zext i32 %1060 to i64
  store i64 %1061, i64* %RAX, align 8, !tbaa !2428
  %1062 = icmp ult i32 %1060, %1059
  %1063 = icmp ult i32 %1060, 1
  %1064 = or i1 %1062, %1063
  %1065 = zext i1 %1064 to i8
  %1066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1065, i8* %1066, align 1, !tbaa !2432
  %1067 = and i32 %1060, 255
  %1068 = call i32 @llvm.ctpop.i32(i32 %1067) #16
  %1069 = trunc i32 %1068 to i8
  %1070 = and i8 %1069, 1
  %1071 = xor i8 %1070, 1
  %1072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1071, i8* %1072, align 1, !tbaa !2446
  %1073 = xor i64 1, %1056
  %1074 = trunc i64 %1073 to i32
  %1075 = xor i32 %1074, %1060
  %1076 = lshr i32 %1075, 4
  %1077 = trunc i32 %1076 to i8
  %1078 = and i8 %1077, 1
  %1079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1078, i8* %1079, align 1, !tbaa !2447
  %1080 = icmp eq i32 %1060, 0
  %1081 = zext i1 %1080 to i8
  %1082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1081, i8* %1082, align 1, !tbaa !2448
  %1083 = lshr i32 %1060, 31
  %1084 = trunc i32 %1083 to i8
  %1085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1084, i8* %1085, align 1, !tbaa !2449
  %1086 = lshr i32 %1059, 31
  %1087 = xor i32 %1083, %1086
  %1088 = add nuw nsw i32 %1087, %1083
  %1089 = icmp eq i32 %1088, 2
  %1090 = zext i1 %1089 to i8
  %1091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1090, i8* %1091, align 1, !tbaa !2450
  %1092 = load i64, i64* %RBP
  %1093 = sub i64 %1092, 36
  %1094 = load i32, i32* %EAX
  %1095 = zext i32 %1094 to i64
  %1096 = load i64, i64* %PC
  %1097 = add i64 %1096, 3
  store i64 %1097, i64* %PC
  %1098 = inttoptr i64 %1093 to i32*
  store i32 %1094, i32* %1098
  %1099 = load i64, i64* %PC
  %1100 = sub i64 %1099, 174
  %1101 = load i64, i64* %PC
  %1102 = add i64 %1101, 5
  store i64 %1102, i64* %PC
  %1103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1100, i64* %1103, align 8, !tbaa !2428
  br label %block_400e1b
}

; Function Attrs: noinline
define %struct.Memory* @sub_401204__term_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_401204:
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
define %struct.Memory* @sub_400600_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  store i64 and (i64 ptrtoint (i64* @stdout to i64), i64 4294967295), i64* %RSI, align 8, !tbaa !2428
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
  %39 = sub i64 %36, ptrtoint (i64* @stdout to i64)
  store i64 %39, i64* %RSI, align 8, !tbaa !2428
  %40 = icmp ult i64 %36, ptrtoint (i64* @stdout to i64)
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
  %50 = xor i64 ptrtoint (i64* @stdout to i64), %36
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
  %63 = xor i64 lshr (i64 ptrtoint (i64* @stdout to i64), i64 63), %62
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
  br i1 %190, label %block_400638, label %block_400623

block_40063a:                                     ; preds = %block_40062d
  %191 = load i64, i64* %RAX
  %192 = load i64, i64* %RAX
  %193 = add i64 %192, %191
  %194 = load i16, i16* %AX
  %195 = zext i16 %194 to i64
  %196 = load i64, i64* %PC
  %197 = add i64 %196, 6
  store i64 %197, i64* %PC
  %198 = load i64, i64* %PC
  %199 = tail call %struct.Memory* @sub_400640___do_global_dtors_aux(%struct.State* %0, i64 %198, %struct.Memory* %2)
  ret %struct.Memory* %199

block_400635:                                     ; preds = %block_40062d
  %200 = load i64, i64* %RAX
  %201 = load i32, i32* %EAX
  %202 = zext i32 %201 to i64
  %203 = load i64, i64* %PC
  %204 = add i64 %203, 3
  store i64 %204, i64* %PC
  br label %block_400638

block_40062d:                                     ; preds = %block_400623
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
  store i64 and (i64 ptrtoint (i64* @stdout to i64), i64 4294967295), i64* %RDI, align 8, !tbaa !2428
  %214 = load i64, i64* %RAX
  %215 = load i64, i64* %PC
  %216 = add i64 %215, 2
  store i64 %216, i64* %PC
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %214, i64* %217, align 8, !tbaa !2428
  %218 = load i64, i64* %PC
  switch i64 %218, label %270 [
    i64 4195898, label %block_40063a
    i64 4195893, label %block_400635
  ]

block_400638:                                     ; preds = %block_400623, %block_400635, %block_400600
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400600 ], [ %2, %block_400623 ], [ %2, %block_400635 ]
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

block_400623:                                     ; preds = %block_400600
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
  br i1 %269, label %block_400638, label %block_40062d

; <label>:270:                                    ; preds = %block_40062d
  %271 = load i64, i64* %PC
  %272 = tail call %struct.Memory* @__remill_jump(%struct.State* %0, i64 %271, %struct.Memory* %2)
  ret %struct.Memory* %272
}

; Function Attrs: noinline
define %struct.Memory* @sub_401190___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_401190:
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
  %200 = sub i64 %199, 3244
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
  %211 = call %struct.Memory* @sub_400510__init_proc(%struct.State* %0, i64 %210, %struct.Memory* %2)
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
  br i1 %245, label %block_4011e6, label %block_4011c6

block_4011e6:                                     ; preds = %block_4011d0, %block_401190
  %MEMORY.0 = phi %struct.Memory* [ %211, %block_401190 ], [ %387, %block_4011d0 ]
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

block_4011c6:                                     ; preds = %block_401190
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
  br label %block_4011d0

block_4011d0:                                     ; preds = %block_4011d0, %block_4011c6
  %MEMORY.1 = phi %struct.Memory* [ %211, %block_4011c6 ], [ %387, %block_4011d0 ]
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
  br i1 %470, label %block_4011d0, label %block_4011e6
}

; Function Attrs: noinline
define %struct.Memory* @sub_400860_idamax(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400860:
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
  %31 = getelementptr inbounds %struct.GPR, %struct.GPR* %30, i32 0, i32 13
  %32 = getelementptr inbounds %struct.Reg, %struct.Reg* %31, i32 0, i32 0
  %RSP = bitcast %union.anon* %32 to i64*
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %34 = getelementptr inbounds %struct.GPR, %struct.GPR* %33, i32 0, i32 15
  %35 = getelementptr inbounds %struct.Reg, %struct.Reg* %34, i32 0, i32 0
  %RBP = bitcast %union.anon* %35 to i64*
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
  %62 = sub i64 %61, 16
  %63 = load i64, i64* %RSI
  %64 = load i64, i64* %PC
  %65 = add i64 %64, 4
  store i64 %65, i64* %PC
  %66 = inttoptr i64 %62 to i64*
  store i64 %63, i64* %66
  %67 = load i64, i64* %RBP
  %68 = sub i64 %67, 20
  %69 = load i32, i32* %EDX
  %70 = zext i32 %69 to i64
  %71 = load i64, i64* %PC
  %72 = add i64 %71, 3
  store i64 %72, i64* %PC
  %73 = inttoptr i64 %68 to i32*
  store i32 %69, i32* %73
  %74 = load i64, i64* %RBP
  %75 = sub i64 %74, 24
  %76 = load i32, i32* %ECX
  %77 = zext i32 %76 to i64
  %78 = load i64, i64* %PC
  %79 = add i64 %78, 3
  store i64 %79, i64* %PC
  %80 = inttoptr i64 %75 to i32*
  store i32 %76, i32* %80
  %81 = load i64, i64* %RBP
  %82 = sub i64 %81, 52
  %83 = load i64, i64* %PC
  %84 = add i64 %83, 7
  store i64 %84, i64* %PC
  %85 = inttoptr i64 %82 to i32*
  store i32 0, i32* %85
  %86 = load i64, i64* %RBP
  %87 = sub i64 %86, 4
  %88 = load i64, i64* %PC
  %89 = add i64 %88, 4
  store i64 %89, i64* %PC
  %90 = inttoptr i64 %87 to i32*
  %91 = load i32, i32* %90
  %92 = sub i32 %91, 1
  %93 = icmp ult i32 %91, 1
  %94 = zext i1 %93 to i8
  %95 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %94, i8* %95, align 1, !tbaa !2432
  %96 = and i32 %92, 255
  %97 = call i32 @llvm.ctpop.i32(i32 %96) #16
  %98 = trunc i32 %97 to i8
  %99 = and i8 %98, 1
  %100 = xor i8 %99, 1
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %100, i8* %101, align 1, !tbaa !2446
  %102 = xor i32 %91, 1
  %103 = xor i32 %102, %92
  %104 = lshr i32 %103, 4
  %105 = trunc i32 %104 to i8
  %106 = and i8 %105, 1
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %106, i8* %107, align 1, !tbaa !2447
  %108 = icmp eq i32 %92, 0
  %109 = zext i1 %108 to i8
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %109, i8* %110, align 1, !tbaa !2448
  %111 = lshr i32 %92, 31
  %112 = trunc i32 %111 to i8
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %112, i8* %113, align 1, !tbaa !2449
  %114 = lshr i32 %91, 31
  %115 = xor i32 %111, %114
  %116 = add nuw nsw i32 %115, %114
  %117 = icmp eq i32 %116, 2
  %118 = zext i1 %117 to i8
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %118, i8* %119, align 1, !tbaa !2450
  %120 = load i64, i64* %PC
  %121 = add i64 %120, 18
  %122 = load i64, i64* %PC
  %123 = add i64 %122, 6
  %124 = load i64, i64* %PC
  %125 = add i64 %124, 6
  store i64 %125, i64* %PC
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %127 = load i8, i8* %126, align 1, !tbaa !2449
  %128 = icmp ne i8 %127, 0
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %130 = load i8, i8* %129, align 1, !tbaa !2450
  %131 = icmp ne i8 %130, 0
  %132 = xor i1 %128, %131
  %133 = xor i1 %132, true
  %134 = zext i1 %133 to i8
  store i8 %134, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %136 = select i1 %132, i64 %123, i64 %121
  store i64 %136, i64* %135, align 8, !tbaa !2428
  %137 = load i8, i8* %BRANCH_TAKEN
  %138 = icmp eq i8 %137, 1
  %139 = load i64, i64* %RBP
  br i1 %138, label %block_40088e, label %block_400882

block_400970:                                     ; preds = %block_400945, %block_4009be
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400945 ], [ %MEMORY.4, %block_4009be ]
  %140 = load i64, i64* %RBP
  %141 = sub i64 %140, 44
  %142 = load i64, i64* %PC
  %143 = add i64 %142, 3
  store i64 %143, i64* %PC
  %144 = inttoptr i64 %141 to i32*
  %145 = load i32, i32* %144
  %146 = zext i32 %145 to i64
  store i64 %146, i64* %RAX, align 8, !tbaa !2428
  %147 = load i32, i32* %EAX
  %148 = zext i32 %147 to i64
  %149 = load i64, i64* %RBP
  %150 = sub i64 %149, 4
  %151 = load i64, i64* %PC
  %152 = add i64 %151, 3
  store i64 %152, i64* %PC
  %153 = inttoptr i64 %150 to i32*
  %154 = load i32, i32* %153
  %155 = sub i32 %147, %154
  %156 = icmp ult i32 %147, %154
  %157 = zext i1 %156 to i8
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %157, i8* %158, align 1, !tbaa !2432
  %159 = and i32 %155, 255
  %160 = call i32 @llvm.ctpop.i32(i32 %159) #16
  %161 = trunc i32 %160 to i8
  %162 = and i8 %161, 1
  %163 = xor i8 %162, 1
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %163, i8* %164, align 1, !tbaa !2446
  %165 = xor i32 %154, %147
  %166 = xor i32 %165, %155
  %167 = lshr i32 %166, 4
  %168 = trunc i32 %167 to i8
  %169 = and i8 %168, 1
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %169, i8* %170, align 1, !tbaa !2447
  %171 = icmp eq i32 %155, 0
  %172 = zext i1 %171 to i8
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %172, i8* %173, align 1, !tbaa !2448
  %174 = lshr i32 %155, 31
  %175 = trunc i32 %174 to i8
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %175, i8* %176, align 1, !tbaa !2449
  %177 = lshr i32 %147, 31
  %178 = lshr i32 %154, 31
  %179 = xor i32 %178, %177
  %180 = xor i32 %174, %177
  %181 = add nuw nsw i32 %180, %179
  %182 = icmp eq i32 %181, 2
  %183 = zext i1 %182 to i8
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %183, i8* %184, align 1, !tbaa !2450
  %185 = load i64, i64* %PC
  %186 = add i64 %185, 91
  %187 = load i64, i64* %PC
  %188 = add i64 %187, 6
  %189 = load i64, i64* %PC
  %190 = add i64 %189, 6
  store i64 %190, i64* %PC
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %192 = load i8, i8* %191, align 1, !tbaa !2449
  %193 = icmp ne i8 %192, 0
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %195 = load i8, i8* %194, align 1, !tbaa !2450
  %196 = icmp ne i8 %195, 0
  %197 = xor i1 %193, %196
  %198 = xor i1 %197, true
  %199 = zext i1 %198 to i8
  store i8 %199, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %201 = select i1 %197, i64 %188, i64 %186
  store i64 %201, i64* %200, align 8, !tbaa !2428
  %202 = load i8, i8* %BRANCH_TAKEN
  %203 = icmp eq i8 %202, 1
  br i1 %203, label %block_4009d1, label %block_40097c

block_4008e7:                                     ; preds = %block_4008db
  %204 = load i64, i64* %RBP
  %205 = sub i64 %204, 16
  %206 = load i64, i64* %PC
  %207 = add i64 %206, 4
  store i64 %207, i64* %PC
  %208 = inttoptr i64 %205 to i64*
  %209 = load i64, i64* %208
  store i64 %209, i64* %RAX, align 8, !tbaa !2428
  %210 = load i64, i64* %RBP
  %211 = sub i64 %210, 48
  %212 = load i64, i64* %PC
  %213 = add i64 %212, 3
  store i64 %213, i64* %PC
  %214 = inttoptr i64 %211 to i32*
  %215 = load i32, i32* %214
  %216 = zext i32 %215 to i64
  store i64 %216, i64* %RCX, align 8, !tbaa !2428
  %217 = load i64, i64* %RCX
  %218 = load i64, i64* %RBP
  %219 = sub i64 %218, 20
  %220 = load i64, i64* %PC
  %221 = add i64 %220, 3
  store i64 %221, i64* %PC
  %222 = trunc i64 %217 to i32
  %223 = inttoptr i64 %219 to i32*
  %224 = load i32, i32* %223
  %225 = add i32 %224, %222
  %226 = zext i32 %225 to i64
  store i64 %226, i64* %RCX, align 8, !tbaa !2428
  %227 = icmp ult i32 %225, %222
  %228 = icmp ult i32 %225, %224
  %229 = or i1 %227, %228
  %230 = zext i1 %229 to i8
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %230, i8* %231, align 1, !tbaa !2432
  %232 = and i32 %225, 255
  %233 = call i32 @llvm.ctpop.i32(i32 %232) #16
  %234 = trunc i32 %233 to i8
  %235 = and i8 %234, 1
  %236 = xor i8 %235, 1
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %236, i8* %237, align 1, !tbaa !2446
  %238 = xor i32 %224, %222
  %239 = xor i32 %238, %225
  %240 = lshr i32 %239, 4
  %241 = trunc i32 %240 to i8
  %242 = and i8 %241, 1
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %242, i8* %243, align 1, !tbaa !2447
  %244 = icmp eq i32 %225, 0
  %245 = zext i1 %244 to i8
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %245, i8* %246, align 1, !tbaa !2448
  %247 = lshr i32 %225, 31
  %248 = trunc i32 %247 to i8
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %248, i8* %249, align 1, !tbaa !2449
  %250 = lshr i32 %222, 31
  %251 = lshr i32 %224, 31
  %252 = xor i32 %247, %250
  %253 = xor i32 %247, %251
  %254 = add nuw nsw i32 %252, %253
  %255 = icmp eq i32 %254, 2
  %256 = zext i1 %255 to i8
  %257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %256, i8* %257, align 1, !tbaa !2450
  %258 = load i32, i32* %ECX
  %259 = zext i32 %258 to i64
  %260 = load i64, i64* %PC
  %261 = add i64 %260, 3
  store i64 %261, i64* %PC
  %262 = shl i64 %259, 32
  %263 = ashr exact i64 %262, 32
  store i64 %263, i64* %RDX, align 8, !tbaa !2428
  %264 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %265 = load i64, i64* %RAX
  %266 = load i64, i64* %RDX
  %267 = mul i64 %266, 8
  %268 = add i64 %267, %265
  %269 = load i64, i64* %PC
  %270 = add i64 %269, 5
  store i64 %270, i64* %PC
  %271 = inttoptr i64 %268 to double*
  %272 = load double, double* %271
  %273 = bitcast i8* %264 to double*
  store double %272, double* %273, align 1, !tbaa !2452
  %274 = getelementptr inbounds i8, i8* %264, i64 8
  %275 = bitcast i8* %274 to double*
  store double 0.000000e+00, double* %275, align 1, !tbaa !2452
  %276 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %277 = load i64, i64* %PC
  %278 = add i64 %277, 7
  store i64 %278, i64* %PC
  %279 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_401210__rodata_type* @seg_401210__rodata to i64), i64 32) to float*)
  %280 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_401210__rodata_type* @seg_401210__rodata to i64), i64 36) to float*)
  %281 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_401210__rodata_type* @seg_401210__rodata to i64), i64 40) to float*)
  %282 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_401210__rodata_type* @seg_401210__rodata to i64), i64 44) to float*)
  %283 = bitcast i8* %276 to float*
  store float %279, float* %283, align 1, !tbaa !2455
  %284 = getelementptr inbounds i8, i8* %276, i64 4
  %285 = bitcast i8* %284 to float*
  store float %280, float* %285, align 1, !tbaa !2455
  %286 = getelementptr inbounds i8, i8* %276, i64 8
  %287 = bitcast i8* %286 to float*
  store float %281, float* %287, align 1, !tbaa !2455
  %288 = getelementptr inbounds i8, i8* %276, i64 12
  %289 = bitcast i8* %288 to float*
  store float %282, float* %289, align 1, !tbaa !2455
  %290 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %291 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %292 = bitcast %union.vec128_t* %XMM1 to i8*
  %293 = load i64, i64* %PC
  %294 = add i64 %293, 4
  store i64 %294, i64* %PC
  %295 = bitcast i8* %291 to i64*
  %296 = load i64, i64* %295, align 1
  %297 = getelementptr inbounds i8, i8* %291, i64 8
  %298 = bitcast i8* %297 to i64*
  %299 = load i64, i64* %298, align 1
  %300 = bitcast i8* %292 to i64*
  %301 = load i64, i64* %300, align 1
  %302 = getelementptr inbounds i8, i8* %292, i64 8
  %303 = bitcast i8* %302 to i64*
  %304 = load i64, i64* %303, align 1
  %305 = and i64 %301, %296
  %306 = and i64 %304, %299
  %307 = trunc i64 %305 to i32
  %308 = lshr i64 %305, 32
  %309 = trunc i64 %308 to i32
  %310 = bitcast i8* %290 to i32*
  store i32 %307, i32* %310, align 1, !tbaa !2454
  %311 = getelementptr inbounds i8, i8* %290, i64 4
  %312 = bitcast i8* %311 to i32*
  store i32 %309, i32* %312, align 1, !tbaa !2454
  %313 = trunc i64 %306 to i32
  %314 = getelementptr inbounds i8, i8* %290, i64 8
  %315 = bitcast i8* %314 to i32*
  store i32 %313, i32* %315, align 1, !tbaa !2454
  %316 = lshr i64 %306, 32
  %317 = trunc i64 %316 to i32
  %318 = getelementptr inbounds i8, i8* %290, i64 12
  %319 = bitcast i8* %318 to i32*
  store i32 %317, i32* %319, align 1, !tbaa !2454
  %320 = load i64, i64* %RBP
  %321 = sub i64 %320, 40
  %322 = bitcast %union.vec128_t* %XMM0 to i8*
  %323 = load i64, i64* %PC
  %324 = add i64 %323, 5
  store i64 %324, i64* %PC
  %325 = bitcast i8* %322 to double*
  %326 = load double, double* %325, align 1
  %327 = inttoptr i64 %321 to double*
  store double %326, double* %327
  %328 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %329 = load i64, i64* %RBP
  %330 = sub i64 %329, 40
  %331 = load i64, i64* %PC
  %332 = add i64 %331, 5
  store i64 %332, i64* %PC
  %333 = inttoptr i64 %330 to double*
  %334 = load double, double* %333
  %335 = bitcast i8* %328 to double*
  store double %334, double* %335, align 1, !tbaa !2452
  %336 = getelementptr inbounds i8, i8* %328, i64 8
  %337 = bitcast i8* %336 to double*
  store double 0.000000e+00, double* %337, align 1, !tbaa !2452
  %338 = bitcast %union.vec128_t* %XMM0 to i8*
  %339 = load i64, i64* %RBP
  %340 = sub i64 %339, 32
  %341 = load i64, i64* %PC
  %342 = add i64 %341, 5
  store i64 %342, i64* %PC
  %343 = bitcast i8* %338 to double*
  %344 = load double, double* %343, align 1
  %345 = inttoptr i64 %340 to double*
  %346 = load double, double* %345
  %347 = fcmp uno double %344, %346
  br i1 %347, label %348, label %360

; <label>:348:                                    ; preds = %block_4008e7
  %349 = fadd double %344, %346
  %350 = bitcast double %349 to i64
  %351 = and i64 %350, 9221120237041090560
  %352 = icmp eq i64 %351, 9218868437227405312
  %353 = and i64 %350, 2251799813685247
  %354 = icmp ne i64 %353, 0
  %355 = and i1 %352, %354
  br i1 %355, label %356, label %366

; <label>:356:                                    ; preds = %348
  %357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %358 = load i64, i64* %357, align 8, !tbaa !2428
  %359 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %358, %struct.Memory* %MEMORY.1) #17
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1

; <label>:360:                                    ; preds = %block_4008e7
  %361 = fcmp ogt double %344, %346
  br i1 %361, label %366, label %362

; <label>:362:                                    ; preds = %360
  %363 = fcmp olt double %344, %346
  br i1 %363, label %366, label %364

; <label>:364:                                    ; preds = %362
  %365 = fcmp oeq double %344, %346
  br i1 %365, label %366, label %373

; <label>:366:                                    ; preds = %364, %362, %360, %348
  %367 = phi i8 [ 0, %360 ], [ 0, %362 ], [ 1, %364 ], [ 1, %348 ]
  %368 = phi i8 [ 0, %360 ], [ 0, %362 ], [ 0, %364 ], [ 1, %348 ]
  %369 = phi i8 [ 0, %360 ], [ 1, %362 ], [ 0, %364 ], [ 1, %348 ]
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %367, i8* %370, align 1, !tbaa !2451
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %368, i8* %371, align 1, !tbaa !2451
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %369, i8* %372, align 1, !tbaa !2451
  br label %373

; <label>:373:                                    ; preds = %366, %364
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %374, align 1, !tbaa !2451
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %375, align 1, !tbaa !2451
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %376, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1: ; preds = %356, %373
  %377 = phi %struct.Memory* [ %359, %356 ], [ %MEMORY.1, %373 ]
  %378 = load i64, i64* %PC
  %379 = add i64 %378, 22
  %380 = load i64, i64* %PC
  %381 = add i64 %380, 6
  %382 = load i64, i64* %PC
  %383 = add i64 %382, 6
  store i64 %383, i64* %PC
  %384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %385 = load i8, i8* %384, align 1, !tbaa !2432
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %387 = load i8, i8* %386, align 1, !tbaa !2448
  %388 = or i8 %387, %385
  %389 = icmp ne i8 %388, 0
  %390 = zext i1 %389 to i8
  store i8 %390, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %392 = select i1 %389, i64 %379, i64 %381
  store i64 %392, i64* %391, align 8, !tbaa !2428
  %393 = load i8, i8* %BRANCH_TAKEN
  %394 = icmp eq i8 %393, 1
  br i1 %394, label %block_400929, label %block_400919

block_40097c:                                     ; preds = %block_400970
  %395 = load i64, i64* %RBP
  %396 = sub i64 %395, 16
  %397 = load i64, i64* %PC
  %398 = add i64 %397, 4
  store i64 %398, i64* %PC
  %399 = inttoptr i64 %396 to i64*
  %400 = load i64, i64* %399
  store i64 %400, i64* %RAX, align 8, !tbaa !2428
  %401 = load i64, i64* %RBP
  %402 = sub i64 %401, 44
  %403 = load i64, i64* %PC
  %404 = add i64 %403, 3
  store i64 %404, i64* %PC
  %405 = inttoptr i64 %402 to i32*
  %406 = load i32, i32* %405
  %407 = zext i32 %406 to i64
  store i64 %407, i64* %RCX, align 8, !tbaa !2428
  %408 = load i64, i64* %RCX
  %409 = load i64, i64* %RBP
  %410 = sub i64 %409, 20
  %411 = load i64, i64* %PC
  %412 = add i64 %411, 3
  store i64 %412, i64* %PC
  %413 = trunc i64 %408 to i32
  %414 = inttoptr i64 %410 to i32*
  %415 = load i32, i32* %414
  %416 = add i32 %415, %413
  %417 = zext i32 %416 to i64
  store i64 %417, i64* %RCX, align 8, !tbaa !2428
  %418 = icmp ult i32 %416, %413
  %419 = icmp ult i32 %416, %415
  %420 = or i1 %418, %419
  %421 = zext i1 %420 to i8
  %422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %421, i8* %422, align 1, !tbaa !2432
  %423 = and i32 %416, 255
  %424 = call i32 @llvm.ctpop.i32(i32 %423) #16
  %425 = trunc i32 %424 to i8
  %426 = and i8 %425, 1
  %427 = xor i8 %426, 1
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %427, i8* %428, align 1, !tbaa !2446
  %429 = xor i32 %415, %413
  %430 = xor i32 %429, %416
  %431 = lshr i32 %430, 4
  %432 = trunc i32 %431 to i8
  %433 = and i8 %432, 1
  %434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %433, i8* %434, align 1, !tbaa !2447
  %435 = icmp eq i32 %416, 0
  %436 = zext i1 %435 to i8
  %437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %436, i8* %437, align 1, !tbaa !2448
  %438 = lshr i32 %416, 31
  %439 = trunc i32 %438 to i8
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %439, i8* %440, align 1, !tbaa !2449
  %441 = lshr i32 %413, 31
  %442 = lshr i32 %415, 31
  %443 = xor i32 %438, %441
  %444 = xor i32 %438, %442
  %445 = add nuw nsw i32 %443, %444
  %446 = icmp eq i32 %445, 2
  %447 = zext i1 %446 to i8
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %447, i8* %448, align 1, !tbaa !2450
  %449 = load i32, i32* %ECX
  %450 = zext i32 %449 to i64
  %451 = load i64, i64* %PC
  %452 = add i64 %451, 3
  store i64 %452, i64* %PC
  %453 = shl i64 %450, 32
  %454 = ashr exact i64 %453, 32
  store i64 %454, i64* %RDX, align 8, !tbaa !2428
  %455 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %456 = load i64, i64* %RAX
  %457 = load i64, i64* %RDX
  %458 = mul i64 %457, 8
  %459 = add i64 %458, %456
  %460 = load i64, i64* %PC
  %461 = add i64 %460, 5
  store i64 %461, i64* %PC
  %462 = inttoptr i64 %459 to double*
  %463 = load double, double* %462
  %464 = bitcast i8* %455 to double*
  store double %463, double* %464, align 1, !tbaa !2452
  %465 = getelementptr inbounds i8, i8* %455, i64 8
  %466 = bitcast i8* %465 to double*
  store double 0.000000e+00, double* %466, align 1, !tbaa !2452
  %467 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %468 = load i64, i64* %PC
  %469 = add i64 %468, 7
  store i64 %469, i64* %PC
  %470 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_401210__rodata_type* @seg_401210__rodata to i64), i64 32) to float*)
  %471 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_401210__rodata_type* @seg_401210__rodata to i64), i64 36) to float*)
  %472 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_401210__rodata_type* @seg_401210__rodata to i64), i64 40) to float*)
  %473 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_401210__rodata_type* @seg_401210__rodata to i64), i64 44) to float*)
  %474 = bitcast i8* %467 to float*
  store float %470, float* %474, align 1, !tbaa !2455
  %475 = getelementptr inbounds i8, i8* %467, i64 4
  %476 = bitcast i8* %475 to float*
  store float %471, float* %476, align 1, !tbaa !2455
  %477 = getelementptr inbounds i8, i8* %467, i64 8
  %478 = bitcast i8* %477 to float*
  store float %472, float* %478, align 1, !tbaa !2455
  %479 = getelementptr inbounds i8, i8* %467, i64 12
  %480 = bitcast i8* %479 to float*
  store float %473, float* %480, align 1, !tbaa !2455
  %481 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %482 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %483 = bitcast %union.vec128_t* %XMM1 to i8*
  %484 = load i64, i64* %PC
  %485 = add i64 %484, 4
  store i64 %485, i64* %PC
  %486 = bitcast i8* %482 to i64*
  %487 = load i64, i64* %486, align 1
  %488 = getelementptr inbounds i8, i8* %482, i64 8
  %489 = bitcast i8* %488 to i64*
  %490 = load i64, i64* %489, align 1
  %491 = bitcast i8* %483 to i64*
  %492 = load i64, i64* %491, align 1
  %493 = getelementptr inbounds i8, i8* %483, i64 8
  %494 = bitcast i8* %493 to i64*
  %495 = load i64, i64* %494, align 1
  %496 = and i64 %492, %487
  %497 = and i64 %495, %490
  %498 = trunc i64 %496 to i32
  %499 = lshr i64 %496, 32
  %500 = trunc i64 %499 to i32
  %501 = bitcast i8* %481 to i32*
  store i32 %498, i32* %501, align 1, !tbaa !2454
  %502 = getelementptr inbounds i8, i8* %481, i64 4
  %503 = bitcast i8* %502 to i32*
  store i32 %500, i32* %503, align 1, !tbaa !2454
  %504 = trunc i64 %497 to i32
  %505 = getelementptr inbounds i8, i8* %481, i64 8
  %506 = bitcast i8* %505 to i32*
  store i32 %504, i32* %506, align 1, !tbaa !2454
  %507 = lshr i64 %497, 32
  %508 = trunc i64 %507 to i32
  %509 = getelementptr inbounds i8, i8* %481, i64 12
  %510 = bitcast i8* %509 to i32*
  store i32 %508, i32* %510, align 1, !tbaa !2454
  %511 = load i64, i64* %RBP
  %512 = sub i64 %511, 40
  %513 = bitcast %union.vec128_t* %XMM0 to i8*
  %514 = load i64, i64* %PC
  %515 = add i64 %514, 5
  store i64 %515, i64* %PC
  %516 = bitcast i8* %513 to double*
  %517 = load double, double* %516, align 1
  %518 = inttoptr i64 %512 to double*
  store double %517, double* %518
  %519 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %520 = load i64, i64* %RBP
  %521 = sub i64 %520, 40
  %522 = load i64, i64* %PC
  %523 = add i64 %522, 5
  store i64 %523, i64* %PC
  %524 = inttoptr i64 %521 to double*
  %525 = load double, double* %524
  %526 = bitcast i8* %519 to double*
  store double %525, double* %526, align 1, !tbaa !2452
  %527 = getelementptr inbounds i8, i8* %519, i64 8
  %528 = bitcast i8* %527 to double*
  store double 0.000000e+00, double* %528, align 1, !tbaa !2452
  %529 = bitcast %union.vec128_t* %XMM0 to i8*
  %530 = load i64, i64* %RBP
  %531 = sub i64 %530, 32
  %532 = load i64, i64* %PC
  %533 = add i64 %532, 5
  store i64 %533, i64* %PC
  %534 = bitcast i8* %529 to double*
  %535 = load double, double* %534, align 1
  %536 = inttoptr i64 %531 to double*
  %537 = load double, double* %536
  %538 = fcmp uno double %535, %537
  br i1 %538, label %539, label %551

; <label>:539:                                    ; preds = %block_40097c
  %540 = fadd double %535, %537
  %541 = bitcast double %540 to i64
  %542 = and i64 %541, 9221120237041090560
  %543 = icmp eq i64 %542, 9218868437227405312
  %544 = and i64 %541, 2251799813685247
  %545 = icmp ne i64 %544, 0
  %546 = and i1 %543, %545
  br i1 %546, label %547, label %557

; <label>:547:                                    ; preds = %539
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %549 = load i64, i64* %548, align 8, !tbaa !2428
  %550 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %549, %struct.Memory* %MEMORY.0) #17
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:551:                                    ; preds = %block_40097c
  %552 = fcmp ogt double %535, %537
  br i1 %552, label %557, label %553

; <label>:553:                                    ; preds = %551
  %554 = fcmp olt double %535, %537
  br i1 %554, label %557, label %555

; <label>:555:                                    ; preds = %553
  %556 = fcmp oeq double %535, %537
  br i1 %556, label %557, label %564

; <label>:557:                                    ; preds = %555, %553, %551, %539
  %558 = phi i8 [ 0, %551 ], [ 0, %553 ], [ 1, %555 ], [ 1, %539 ]
  %559 = phi i8 [ 0, %551 ], [ 0, %553 ], [ 0, %555 ], [ 1, %539 ]
  %560 = phi i8 [ 0, %551 ], [ 1, %553 ], [ 0, %555 ], [ 1, %539 ]
  %561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %558, i8* %561, align 1, !tbaa !2451
  %562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %559, i8* %562, align 1, !tbaa !2451
  %563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %560, i8* %563, align 1, !tbaa !2451
  br label %564

; <label>:564:                                    ; preds = %557, %555
  %565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %565, align 1, !tbaa !2451
  %566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %566, align 1, !tbaa !2451
  %567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %567, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %547, %564
  %568 = phi %struct.Memory* [ %550, %547 ], [ %MEMORY.0, %564 ]
  %569 = load i64, i64* %PC
  %570 = add i64 %569, 22
  %571 = load i64, i64* %PC
  %572 = add i64 %571, 6
  %573 = load i64, i64* %PC
  %574 = add i64 %573, 6
  store i64 %574, i64* %PC
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %576 = load i8, i8* %575, align 1, !tbaa !2432
  %577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %578 = load i8, i8* %577, align 1, !tbaa !2448
  %579 = or i8 %578, %576
  %580 = icmp ne i8 %579, 0
  %581 = zext i1 %580 to i8
  store i8 %581, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %583 = select i1 %580, i64 %570, i64 %572
  store i64 %583, i64* %582, align 8, !tbaa !2428
  %584 = load i8, i8* %BRANCH_TAKEN
  %585 = icmp eq i8 %584, 1
  br i1 %585, label %block_4009be, label %block_4009ae

block_4008db:                                     ; preds = %block_400929, %block_4008ae
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_4008ae ], [ %MEMORY.5, %block_400929 ]
  %586 = load i64, i64* %RBP
  %587 = sub i64 %586, 44
  %588 = load i64, i64* %PC
  %589 = add i64 %588, 3
  store i64 %589, i64* %PC
  %590 = inttoptr i64 %587 to i32*
  %591 = load i32, i32* %590
  %592 = zext i32 %591 to i64
  store i64 %592, i64* %RAX, align 8, !tbaa !2428
  %593 = load i32, i32* %EAX
  %594 = zext i32 %593 to i64
  %595 = load i64, i64* %RBP
  %596 = sub i64 %595, 4
  %597 = load i64, i64* %PC
  %598 = add i64 %597, 3
  store i64 %598, i64* %PC
  %599 = inttoptr i64 %596 to i32*
  %600 = load i32, i32* %599
  %601 = sub i32 %593, %600
  %602 = icmp ult i32 %593, %600
  %603 = zext i1 %602 to i8
  %604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %603, i8* %604, align 1, !tbaa !2432
  %605 = and i32 %601, 255
  %606 = call i32 @llvm.ctpop.i32(i32 %605) #16
  %607 = trunc i32 %606 to i8
  %608 = and i8 %607, 1
  %609 = xor i8 %608, 1
  %610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %609, i8* %610, align 1, !tbaa !2446
  %611 = xor i32 %600, %593
  %612 = xor i32 %611, %601
  %613 = lshr i32 %612, 4
  %614 = trunc i32 %613 to i8
  %615 = and i8 %614, 1
  %616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %615, i8* %616, align 1, !tbaa !2447
  %617 = icmp eq i32 %601, 0
  %618 = zext i1 %617 to i8
  %619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %618, i8* %619, align 1, !tbaa !2448
  %620 = lshr i32 %601, 31
  %621 = trunc i32 %620 to i8
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %621, i8* %622, align 1, !tbaa !2449
  %623 = lshr i32 %593, 31
  %624 = lshr i32 %600, 31
  %625 = xor i32 %624, %623
  %626 = xor i32 %620, %623
  %627 = add nuw nsw i32 %626, %625
  %628 = icmp eq i32 %627, 2
  %629 = zext i1 %628 to i8
  %630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %629, i8* %630, align 1, !tbaa !2450
  %631 = load i64, i64* %PC
  %632 = add i64 %631, 95
  %633 = load i64, i64* %PC
  %634 = add i64 %633, 6
  %635 = load i64, i64* %PC
  %636 = add i64 %635, 6
  store i64 %636, i64* %PC
  %637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %638 = load i8, i8* %637, align 1, !tbaa !2449
  %639 = icmp ne i8 %638, 0
  %640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %641 = load i8, i8* %640, align 1, !tbaa !2450
  %642 = icmp ne i8 %641, 0
  %643 = xor i1 %639, %642
  %644 = xor i1 %643, true
  %645 = zext i1 %644 to i8
  store i8 %645, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %647 = select i1 %643, i64 %634, i64 %632
  store i64 %647, i64* %646, align 8, !tbaa !2428
  %648 = load i8, i8* %BRANCH_TAKEN
  %649 = icmp eq i8 %648, 1
  br i1 %649, label %block_400940, label %block_4008e7

block_4009d6:                                     ; preds = %block_4009d1, %block_400940
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.0, %block_4009d1 ], [ %MEMORY.1, %block_400940 ]
  %650 = load i64, i64* %PC
  %651 = add i64 %650, 5
  %652 = load i64, i64* %PC
  %653 = add i64 %652, 5
  store i64 %653, i64* %PC
  %654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %651, i64* %654, align 8, !tbaa !2428
  br label %block_4009db

block_4009e0:                                     ; preds = %block_400882, %block_4009db
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.6, %block_4009db ], [ %2, %block_400882 ]
  %655 = load i64, i64* %RBP
  %656 = sub i64 %655, 52
  %657 = load i64, i64* %PC
  %658 = add i64 %657, 3
  store i64 %658, i64* %PC
  %659 = inttoptr i64 %656 to i32*
  %660 = load i32, i32* %659
  %661 = zext i32 %660 to i64
  store i64 %661, i64* %RAX, align 8, !tbaa !2428
  %662 = load i64, i64* %PC
  %663 = add i64 %662, 1
  store i64 %663, i64* %PC
  %664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %665 = load i64, i64* %664, align 8, !tbaa !2428
  %666 = add i64 %665, 8
  %667 = inttoptr i64 %665 to i64*
  %668 = load i64, i64* %667
  store i64 %668, i64* %RBP, align 8, !tbaa !2428
  store i64 %666, i64* %664, align 8, !tbaa !2428
  %669 = load i64, i64* %PC
  %670 = add i64 %669, 1
  store i64 %670, i64* %PC
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %673 = load i64, i64* %672, align 8, !tbaa !2428
  %674 = inttoptr i64 %673 to i64*
  %675 = load i64, i64* %674
  store i64 %675, i64* %671, align 8, !tbaa !2428
  %676 = add i64 %673, 8
  store i64 %676, i64* %672, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.3

block_4009be:                                     ; preds = %block_4009ae, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %MEMORY.4 = phi %struct.Memory* [ %568, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit ], [ %568, %block_4009ae ]
  %677 = load i64, i64* %PC
  %678 = add i64 %677, 5
  %679 = load i64, i64* %PC
  %680 = add i64 %679, 5
  store i64 %680, i64* %PC
  %681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %678, i64* %681, align 8, !tbaa !2428
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
  %701 = call i32 @llvm.ctpop.i32(i32 %700) #16
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
  %725 = load i64, i64* %RBP
  %726 = sub i64 %725, 44
  %727 = load i32, i32* %EAX
  %728 = zext i32 %727 to i64
  %729 = load i64, i64* %PC
  %730 = add i64 %729, 3
  store i64 %730, i64* %PC
  %731 = inttoptr i64 %726 to i32*
  store i32 %727, i32* %731
  %732 = load i64, i64* %PC
  %733 = sub i64 %732, 92
  %734 = load i64, i64* %PC
  %735 = add i64 %734, 5
  store i64 %735, i64* %PC
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %733, i64* %736, align 8, !tbaa !2428
  br label %block_400970

block_4008ae:                                     ; preds = %block_4008a4
  %737 = sub i64 %1115, 16
  %738 = load i64, i64* %PC
  %739 = add i64 %738, 4
  store i64 %739, i64* %PC
  %740 = inttoptr i64 %737 to i64*
  %741 = load i64, i64* %740
  store i64 %741, i64* %RAX, align 8, !tbaa !2428
  %742 = load i64, i64* %RBP
  %743 = sub i64 %742, 20
  %744 = load i64, i64* %PC
  %745 = add i64 %744, 4
  store i64 %745, i64* %PC
  %746 = inttoptr i64 %743 to i32*
  %747 = load i32, i32* %746
  %748 = sext i32 %747 to i64
  store i64 %748, i64* %RCX, align 8, !tbaa !2428
  %749 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %750 = load i64, i64* %RAX
  %751 = load i64, i64* %RCX
  %752 = mul i64 %751, 8
  %753 = add i64 %752, %750
  %754 = load i64, i64* %PC
  %755 = add i64 %754, 5
  store i64 %755, i64* %PC
  %756 = inttoptr i64 %753 to double*
  %757 = load double, double* %756
  %758 = bitcast i8* %749 to double*
  store double %757, double* %758, align 1, !tbaa !2452
  %759 = getelementptr inbounds i8, i8* %749, i64 8
  %760 = bitcast i8* %759 to double*
  store double 0.000000e+00, double* %760, align 1, !tbaa !2452
  %761 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %762 = load i64, i64* %PC
  %763 = add i64 %762, 7
  store i64 %763, i64* %PC
  %764 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_401210__rodata_type* @seg_401210__rodata to i64), i64 32) to float*)
  %765 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_401210__rodata_type* @seg_401210__rodata to i64), i64 36) to float*)
  %766 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_401210__rodata_type* @seg_401210__rodata to i64), i64 40) to float*)
  %767 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_401210__rodata_type* @seg_401210__rodata to i64), i64 44) to float*)
  %768 = bitcast i8* %761 to float*
  store float %764, float* %768, align 1, !tbaa !2455
  %769 = getelementptr inbounds i8, i8* %761, i64 4
  %770 = bitcast i8* %769 to float*
  store float %765, float* %770, align 1, !tbaa !2455
  %771 = getelementptr inbounds i8, i8* %761, i64 8
  %772 = bitcast i8* %771 to float*
  store float %766, float* %772, align 1, !tbaa !2455
  %773 = getelementptr inbounds i8, i8* %761, i64 12
  %774 = bitcast i8* %773 to float*
  store float %767, float* %774, align 1, !tbaa !2455
  %775 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %776 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %777 = bitcast %union.vec128_t* %XMM1 to i8*
  %778 = load i64, i64* %PC
  %779 = add i64 %778, 4
  store i64 %779, i64* %PC
  %780 = bitcast i8* %776 to i64*
  %781 = load i64, i64* %780, align 1
  %782 = getelementptr inbounds i8, i8* %776, i64 8
  %783 = bitcast i8* %782 to i64*
  %784 = load i64, i64* %783, align 1
  %785 = bitcast i8* %777 to i64*
  %786 = load i64, i64* %785, align 1
  %787 = getelementptr inbounds i8, i8* %777, i64 8
  %788 = bitcast i8* %787 to i64*
  %789 = load i64, i64* %788, align 1
  %790 = and i64 %786, %781
  %791 = and i64 %789, %784
  %792 = trunc i64 %790 to i32
  %793 = lshr i64 %790, 32
  %794 = trunc i64 %793 to i32
  %795 = bitcast i8* %775 to i32*
  store i32 %792, i32* %795, align 1, !tbaa !2454
  %796 = getelementptr inbounds i8, i8* %775, i64 4
  %797 = bitcast i8* %796 to i32*
  store i32 %794, i32* %797, align 1, !tbaa !2454
  %798 = trunc i64 %791 to i32
  %799 = getelementptr inbounds i8, i8* %775, i64 8
  %800 = bitcast i8* %799 to i32*
  store i32 %798, i32* %800, align 1, !tbaa !2454
  %801 = lshr i64 %791, 32
  %802 = trunc i64 %801 to i32
  %803 = getelementptr inbounds i8, i8* %775, i64 12
  %804 = bitcast i8* %803 to i32*
  store i32 %802, i32* %804, align 1, !tbaa !2454
  %805 = load i64, i64* %RBP
  %806 = sub i64 %805, 32
  %807 = bitcast %union.vec128_t* %XMM0 to i8*
  %808 = load i64, i64* %PC
  %809 = add i64 %808, 5
  store i64 %809, i64* %PC
  %810 = bitcast i8* %807 to double*
  %811 = load double, double* %810, align 1
  %812 = inttoptr i64 %806 to double*
  store double %811, double* %812
  %813 = load i64, i64* %RBP
  %814 = sub i64 %813, 24
  %815 = load i64, i64* %PC
  %816 = add i64 %815, 3
  store i64 %816, i64* %PC
  %817 = inttoptr i64 %814 to i32*
  %818 = load i32, i32* %817
  %819 = zext i32 %818 to i64
  store i64 %819, i64* %RDX, align 8, !tbaa !2428
  %820 = load i64, i64* %RDX
  %821 = load i64, i64* %PC
  %822 = add i64 %821, 3
  store i64 %822, i64* %PC
  %823 = trunc i64 %820 to i32
  %824 = add i32 1, %823
  %825 = zext i32 %824 to i64
  store i64 %825, i64* %RDX, align 8, !tbaa !2428
  %826 = icmp ult i32 %824, %823
  %827 = icmp ult i32 %824, 1
  %828 = or i1 %826, %827
  %829 = zext i1 %828 to i8
  %830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %829, i8* %830, align 1, !tbaa !2432
  %831 = and i32 %824, 255
  %832 = call i32 @llvm.ctpop.i32(i32 %831) #16
  %833 = trunc i32 %832 to i8
  %834 = and i8 %833, 1
  %835 = xor i8 %834, 1
  %836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %835, i8* %836, align 1, !tbaa !2446
  %837 = xor i64 1, %820
  %838 = trunc i64 %837 to i32
  %839 = xor i32 %838, %824
  %840 = lshr i32 %839, 4
  %841 = trunc i32 %840 to i8
  %842 = and i8 %841, 1
  %843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %842, i8* %843, align 1, !tbaa !2447
  %844 = icmp eq i32 %824, 0
  %845 = zext i1 %844 to i8
  %846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %845, i8* %846, align 1, !tbaa !2448
  %847 = lshr i32 %824, 31
  %848 = trunc i32 %847 to i8
  %849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %848, i8* %849, align 1, !tbaa !2449
  %850 = lshr i32 %823, 31
  %851 = xor i32 %847, %850
  %852 = add nuw nsw i32 %851, %847
  %853 = icmp eq i32 %852, 2
  %854 = zext i1 %853 to i8
  %855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %854, i8* %855, align 1, !tbaa !2450
  %856 = load i64, i64* %RBP
  %857 = sub i64 %856, 48
  %858 = load i32, i32* %EDX
  %859 = zext i32 %858 to i64
  %860 = load i64, i64* %PC
  %861 = add i64 %860, 3
  store i64 %861, i64* %PC
  %862 = inttoptr i64 %857 to i32*
  store i32 %858, i32* %862
  %863 = load i64, i64* %RBP
  %864 = sub i64 %863, 44
  %865 = load i64, i64* %PC
  %866 = add i64 %865, 7
  store i64 %866, i64* %PC
  %867 = inttoptr i64 %864 to i32*
  store i32 1, i32* %867
  br label %block_4008db

block_400940:                                     ; preds = %block_4008db
  %868 = load i64, i64* %PC
  %869 = add i64 %868, 150
  %870 = load i64, i64* %PC
  %871 = add i64 %870, 5
  store i64 %871, i64* %PC
  %872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %869, i64* %872, align 8, !tbaa !2428
  br label %block_4009d6

block_400929:                                     ; preds = %block_400919, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1
  %MEMORY.5 = phi %struct.Memory* [ %377, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1 ], [ %377, %block_400919 ]
  %873 = load i64, i64* %RBP
  %874 = sub i64 %873, 24
  %875 = load i64, i64* %PC
  %876 = add i64 %875, 3
  store i64 %876, i64* %PC
  %877 = inttoptr i64 %874 to i32*
  %878 = load i32, i32* %877
  %879 = zext i32 %878 to i64
  store i64 %879, i64* %RAX, align 8, !tbaa !2428
  %880 = load i64, i64* %RAX
  %881 = load i64, i64* %RBP
  %882 = sub i64 %881, 48
  %883 = load i64, i64* %PC
  %884 = add i64 %883, 3
  store i64 %884, i64* %PC
  %885 = trunc i64 %880 to i32
  %886 = inttoptr i64 %882 to i32*
  %887 = load i32, i32* %886
  %888 = add i32 %887, %885
  %889 = zext i32 %888 to i64
  store i64 %889, i64* %RAX, align 8, !tbaa !2428
  %890 = icmp ult i32 %888, %885
  %891 = icmp ult i32 %888, %887
  %892 = or i1 %890, %891
  %893 = zext i1 %892 to i8
  %894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %893, i8* %894, align 1, !tbaa !2432
  %895 = and i32 %888, 255
  %896 = call i32 @llvm.ctpop.i32(i32 %895) #16
  %897 = trunc i32 %896 to i8
  %898 = and i8 %897, 1
  %899 = xor i8 %898, 1
  %900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %899, i8* %900, align 1, !tbaa !2446
  %901 = xor i32 %887, %885
  %902 = xor i32 %901, %888
  %903 = lshr i32 %902, 4
  %904 = trunc i32 %903 to i8
  %905 = and i8 %904, 1
  %906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %905, i8* %906, align 1, !tbaa !2447
  %907 = icmp eq i32 %888, 0
  %908 = zext i1 %907 to i8
  %909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %908, i8* %909, align 1, !tbaa !2448
  %910 = lshr i32 %888, 31
  %911 = trunc i32 %910 to i8
  %912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %911, i8* %912, align 1, !tbaa !2449
  %913 = lshr i32 %885, 31
  %914 = lshr i32 %887, 31
  %915 = xor i32 %910, %913
  %916 = xor i32 %910, %914
  %917 = add nuw nsw i32 %915, %916
  %918 = icmp eq i32 %917, 2
  %919 = zext i1 %918 to i8
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %919, i8* %920, align 1, !tbaa !2450
  %921 = load i64, i64* %RBP
  %922 = sub i64 %921, 48
  %923 = load i32, i32* %EAX
  %924 = zext i32 %923 to i64
  %925 = load i64, i64* %PC
  %926 = add i64 %925, 3
  store i64 %926, i64* %PC
  %927 = inttoptr i64 %922 to i32*
  store i32 %923, i32* %927
  %928 = load i64, i64* %RBP
  %929 = sub i64 %928, 44
  %930 = load i64, i64* %PC
  %931 = add i64 %930, 3
  store i64 %931, i64* %PC
  %932 = inttoptr i64 %929 to i32*
  %933 = load i32, i32* %932
  %934 = zext i32 %933 to i64
  store i64 %934, i64* %RAX, align 8, !tbaa !2428
  %935 = load i64, i64* %RAX
  %936 = load i64, i64* %PC
  %937 = add i64 %936, 3
  store i64 %937, i64* %PC
  %938 = trunc i64 %935 to i32
  %939 = add i32 1, %938
  %940 = zext i32 %939 to i64
  store i64 %940, i64* %RAX, align 8, !tbaa !2428
  %941 = icmp ult i32 %939, %938
  %942 = icmp ult i32 %939, 1
  %943 = or i1 %941, %942
  %944 = zext i1 %943 to i8
  %945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %944, i8* %945, align 1, !tbaa !2432
  %946 = and i32 %939, 255
  %947 = call i32 @llvm.ctpop.i32(i32 %946) #16
  %948 = trunc i32 %947 to i8
  %949 = and i8 %948, 1
  %950 = xor i8 %949, 1
  %951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %950, i8* %951, align 1, !tbaa !2446
  %952 = xor i64 1, %935
  %953 = trunc i64 %952 to i32
  %954 = xor i32 %953, %939
  %955 = lshr i32 %954, 4
  %956 = trunc i32 %955 to i8
  %957 = and i8 %956, 1
  %958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %957, i8* %958, align 1, !tbaa !2447
  %959 = icmp eq i32 %939, 0
  %960 = zext i1 %959 to i8
  %961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %960, i8* %961, align 1, !tbaa !2448
  %962 = lshr i32 %939, 31
  %963 = trunc i32 %962 to i8
  %964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %963, i8* %964, align 1, !tbaa !2449
  %965 = lshr i32 %938, 31
  %966 = xor i32 %962, %965
  %967 = add nuw nsw i32 %966, %962
  %968 = icmp eq i32 %967, 2
  %969 = zext i1 %968 to i8
  %970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %969, i8* %970, align 1, !tbaa !2450
  %971 = load i64, i64* %RBP
  %972 = sub i64 %971, 44
  %973 = load i32, i32* %EAX
  %974 = zext i32 %973 to i64
  %975 = load i64, i64* %PC
  %976 = add i64 %975, 3
  store i64 %976, i64* %PC
  %977 = inttoptr i64 %972 to i32*
  store i32 %973, i32* %977
  %978 = load i64, i64* %PC
  %979 = sub i64 %978, 96
  %980 = load i64, i64* %PC
  %981 = add i64 %980, 5
  store i64 %981, i64* %PC
  %982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %979, i64* %982, align 8, !tbaa !2428
  br label %block_4008db

block_400945:                                     ; preds = %block_4008a4
  %983 = sub i64 %1115, 52
  %984 = load i64, i64* %PC
  %985 = add i64 %984, 7
  store i64 %985, i64* %PC
  %986 = inttoptr i64 %983 to i32*
  store i32 0, i32* %986
  %987 = load i64, i64* %RBP
  %988 = sub i64 %987, 16
  %989 = load i64, i64* %PC
  %990 = add i64 %989, 4
  store i64 %990, i64* %PC
  %991 = inttoptr i64 %988 to i64*
  %992 = load i64, i64* %991
  store i64 %992, i64* %RAX, align 8, !tbaa !2428
  %993 = load i64, i64* %RBP
  %994 = sub i64 %993, 20
  %995 = load i64, i64* %PC
  %996 = add i64 %995, 4
  store i64 %996, i64* %PC
  %997 = inttoptr i64 %994 to i32*
  %998 = load i32, i32* %997
  %999 = sext i32 %998 to i64
  store i64 %999, i64* %RCX, align 8, !tbaa !2428
  %1000 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1001 = load i64, i64* %RAX
  %1002 = load i64, i64* %RCX
  %1003 = mul i64 %1002, 8
  %1004 = add i64 %1003, %1001
  %1005 = load i64, i64* %PC
  %1006 = add i64 %1005, 5
  store i64 %1006, i64* %PC
  %1007 = inttoptr i64 %1004 to double*
  %1008 = load double, double* %1007
  %1009 = bitcast i8* %1000 to double*
  store double %1008, double* %1009, align 1, !tbaa !2452
  %1010 = getelementptr inbounds i8, i8* %1000, i64 8
  %1011 = bitcast i8* %1010 to double*
  store double 0.000000e+00, double* %1011, align 1, !tbaa !2452
  %1012 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1013 = load i64, i64* %PC
  %1014 = add i64 %1013, 7
  store i64 %1014, i64* %PC
  %1015 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_401210__rodata_type* @seg_401210__rodata to i64), i64 32) to float*)
  %1016 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_401210__rodata_type* @seg_401210__rodata to i64), i64 36) to float*)
  %1017 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_401210__rodata_type* @seg_401210__rodata to i64), i64 40) to float*)
  %1018 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_401210__rodata_type* @seg_401210__rodata to i64), i64 44) to float*)
  %1019 = bitcast i8* %1012 to float*
  store float %1015, float* %1019, align 1, !tbaa !2455
  %1020 = getelementptr inbounds i8, i8* %1012, i64 4
  %1021 = bitcast i8* %1020 to float*
  store float %1016, float* %1021, align 1, !tbaa !2455
  %1022 = getelementptr inbounds i8, i8* %1012, i64 8
  %1023 = bitcast i8* %1022 to float*
  store float %1017, float* %1023, align 1, !tbaa !2455
  %1024 = getelementptr inbounds i8, i8* %1012, i64 12
  %1025 = bitcast i8* %1024 to float*
  store float %1018, float* %1025, align 1, !tbaa !2455
  %1026 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1027 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1028 = bitcast %union.vec128_t* %XMM1 to i8*
  %1029 = load i64, i64* %PC
  %1030 = add i64 %1029, 4
  store i64 %1030, i64* %PC
  %1031 = bitcast i8* %1027 to i64*
  %1032 = load i64, i64* %1031, align 1
  %1033 = getelementptr inbounds i8, i8* %1027, i64 8
  %1034 = bitcast i8* %1033 to i64*
  %1035 = load i64, i64* %1034, align 1
  %1036 = bitcast i8* %1028 to i64*
  %1037 = load i64, i64* %1036, align 1
  %1038 = getelementptr inbounds i8, i8* %1028, i64 8
  %1039 = bitcast i8* %1038 to i64*
  %1040 = load i64, i64* %1039, align 1
  %1041 = and i64 %1037, %1032
  %1042 = and i64 %1040, %1035
  %1043 = trunc i64 %1041 to i32
  %1044 = lshr i64 %1041, 32
  %1045 = trunc i64 %1044 to i32
  %1046 = bitcast i8* %1026 to i32*
  store i32 %1043, i32* %1046, align 1, !tbaa !2454
  %1047 = getelementptr inbounds i8, i8* %1026, i64 4
  %1048 = bitcast i8* %1047 to i32*
  store i32 %1045, i32* %1048, align 1, !tbaa !2454
  %1049 = trunc i64 %1042 to i32
  %1050 = getelementptr inbounds i8, i8* %1026, i64 8
  %1051 = bitcast i8* %1050 to i32*
  store i32 %1049, i32* %1051, align 1, !tbaa !2454
  %1052 = lshr i64 %1042, 32
  %1053 = trunc i64 %1052 to i32
  %1054 = getelementptr inbounds i8, i8* %1026, i64 12
  %1055 = bitcast i8* %1054 to i32*
  store i32 %1053, i32* %1055, align 1, !tbaa !2454
  %1056 = load i64, i64* %RBP
  %1057 = sub i64 %1056, 32
  %1058 = bitcast %union.vec128_t* %XMM0 to i8*
  %1059 = load i64, i64* %PC
  %1060 = add i64 %1059, 5
  store i64 %1060, i64* %PC
  %1061 = bitcast i8* %1058 to double*
  %1062 = load double, double* %1061, align 1
  %1063 = inttoptr i64 %1057 to double*
  store double %1062, double* %1063
  %1064 = load i64, i64* %RBP
  %1065 = sub i64 %1064, 44
  %1066 = load i64, i64* %PC
  %1067 = add i64 %1066, 7
  store i64 %1067, i64* %PC
  %1068 = inttoptr i64 %1065 to i32*
  store i32 1, i32* %1068
  br label %block_400970

block_4008a4:                                     ; preds = %block_40088e
  %1069 = sub i64 %1241, 24
  %1070 = load i64, i64* %PC
  %1071 = add i64 %1070, 4
  store i64 %1071, i64* %PC
  %1072 = inttoptr i64 %1069 to i32*
  %1073 = load i32, i32* %1072
  %1074 = sub i32 %1073, 1
  %1075 = icmp ult i32 %1073, 1
  %1076 = zext i1 %1075 to i8
  %1077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1076, i8* %1077, align 1, !tbaa !2432
  %1078 = and i32 %1074, 255
  %1079 = call i32 @llvm.ctpop.i32(i32 %1078) #16
  %1080 = trunc i32 %1079 to i8
  %1081 = and i8 %1080, 1
  %1082 = xor i8 %1081, 1
  %1083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1082, i8* %1083, align 1, !tbaa !2446
  %1084 = xor i32 %1073, 1
  %1085 = xor i32 %1084, %1074
  %1086 = lshr i32 %1085, 4
  %1087 = trunc i32 %1086 to i8
  %1088 = and i8 %1087, 1
  %1089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1088, i8* %1089, align 1, !tbaa !2447
  %1090 = icmp eq i32 %1074, 0
  %1091 = zext i1 %1090 to i8
  %1092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1091, i8* %1092, align 1, !tbaa !2448
  %1093 = lshr i32 %1074, 31
  %1094 = trunc i32 %1093 to i8
  %1095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1094, i8* %1095, align 1, !tbaa !2449
  %1096 = lshr i32 %1073, 31
  %1097 = xor i32 %1093, %1096
  %1098 = add nuw nsw i32 %1097, %1096
  %1099 = icmp eq i32 %1098, 2
  %1100 = zext i1 %1099 to i8
  %1101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1100, i8* %1101, align 1, !tbaa !2450
  %1102 = load i64, i64* %PC
  %1103 = add i64 %1102, 157
  %1104 = load i64, i64* %PC
  %1105 = add i64 %1104, 6
  %1106 = load i64, i64* %PC
  %1107 = add i64 %1106, 6
  store i64 %1107, i64* %PC
  %1108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1109 = load i8, i8* %1108, align 1, !tbaa !2448
  store i8 %1109, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1111 = icmp ne i8 %1109, 0
  %1112 = select i1 %1111, i64 %1103, i64 %1105
  store i64 %1112, i64* %1110, align 8, !tbaa !2428
  %1113 = load i8, i8* %BRANCH_TAKEN
  %1114 = icmp eq i8 %1113, 1
  %1115 = load i64, i64* %RBP
  br i1 %1114, label %block_400945, label %block_4008ae

block_4009d1:                                     ; preds = %block_400970
  %1116 = load i64, i64* %PC
  %1117 = add i64 %1116, 5
  %1118 = load i64, i64* %PC
  %1119 = add i64 %1118, 5
  store i64 %1119, i64* %PC
  %1120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1117, i64* %1120, align 8, !tbaa !2428
  br label %block_4009d6

block_400919:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1
  %1121 = load i64, i64* %RBP
  %1122 = sub i64 %1121, 44
  %1123 = load i64, i64* %PC
  %1124 = add i64 %1123, 3
  store i64 %1124, i64* %PC
  %1125 = inttoptr i64 %1122 to i32*
  %1126 = load i32, i32* %1125
  %1127 = zext i32 %1126 to i64
  store i64 %1127, i64* %RAX, align 8, !tbaa !2428
  %1128 = load i64, i64* %RBP
  %1129 = sub i64 %1128, 52
  %1130 = load i32, i32* %EAX
  %1131 = zext i32 %1130 to i64
  %1132 = load i64, i64* %PC
  %1133 = add i64 %1132, 3
  store i64 %1133, i64* %PC
  %1134 = inttoptr i64 %1129 to i32*
  store i32 %1130, i32* %1134
  %1135 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1136 = load i64, i64* %RBP
  %1137 = sub i64 %1136, 40
  %1138 = load i64, i64* %PC
  %1139 = add i64 %1138, 5
  store i64 %1139, i64* %PC
  %1140 = inttoptr i64 %1137 to double*
  %1141 = load double, double* %1140
  %1142 = bitcast i8* %1135 to double*
  store double %1141, double* %1142, align 1, !tbaa !2452
  %1143 = getelementptr inbounds i8, i8* %1135, i64 8
  %1144 = bitcast i8* %1143 to double*
  store double 0.000000e+00, double* %1144, align 1, !tbaa !2452
  %1145 = load i64, i64* %RBP
  %1146 = sub i64 %1145, 32
  %1147 = bitcast %union.vec128_t* %XMM0 to i8*
  %1148 = load i64, i64* %PC
  %1149 = add i64 %1148, 5
  store i64 %1149, i64* %PC
  %1150 = bitcast i8* %1147 to double*
  %1151 = load double, double* %1150, align 1
  %1152 = inttoptr i64 %1146 to double*
  store double %1151, double* %1152
  br label %block_400929

block_400898:                                     ; preds = %block_40088e
  %1153 = sub i64 %1241, 52
  %1154 = load i64, i64* %PC
  %1155 = add i64 %1154, 7
  store i64 %1155, i64* %PC
  %1156 = inttoptr i64 %1153 to i32*
  store i32 0, i32* %1156
  %1157 = load i64, i64* %PC
  %1158 = add i64 %1157, 316
  %1159 = load i64, i64* %PC
  %1160 = add i64 %1159, 5
  store i64 %1160, i64* %PC
  %1161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1158, i64* %1161, align 8, !tbaa !2428
  br label %block_4009db

block_4009ae:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %1162 = load i64, i64* %RBP
  %1163 = sub i64 %1162, 44
  %1164 = load i64, i64* %PC
  %1165 = add i64 %1164, 3
  store i64 %1165, i64* %PC
  %1166 = inttoptr i64 %1163 to i32*
  %1167 = load i32, i32* %1166
  %1168 = zext i32 %1167 to i64
  store i64 %1168, i64* %RAX, align 8, !tbaa !2428
  %1169 = load i64, i64* %RBP
  %1170 = sub i64 %1169, 52
  %1171 = load i32, i32* %EAX
  %1172 = zext i32 %1171 to i64
  %1173 = load i64, i64* %PC
  %1174 = add i64 %1173, 3
  store i64 %1174, i64* %PC
  %1175 = inttoptr i64 %1170 to i32*
  store i32 %1171, i32* %1175
  %1176 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1177 = load i64, i64* %RBP
  %1178 = sub i64 %1177, 40
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
  %1186 = load i64, i64* %RBP
  %1187 = sub i64 %1186, 32
  %1188 = bitcast %union.vec128_t* %XMM0 to i8*
  %1189 = load i64, i64* %PC
  %1190 = add i64 %1189, 5
  store i64 %1190, i64* %PC
  %1191 = bitcast i8* %1188 to double*
  %1192 = load double, double* %1191, align 1
  %1193 = inttoptr i64 %1187 to double*
  store double %1192, double* %1193
  br label %block_4009be

block_40088e:                                     ; preds = %block_400860
  %1194 = sub i64 %139, 4
  %1195 = load i64, i64* %PC
  %1196 = add i64 %1195, 4
  store i64 %1196, i64* %PC
  %1197 = inttoptr i64 %1194 to i32*
  %1198 = load i32, i32* %1197
  %1199 = sub i32 %1198, 1
  %1200 = icmp ult i32 %1198, 1
  %1201 = zext i1 %1200 to i8
  %1202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1201, i8* %1202, align 1, !tbaa !2432
  %1203 = and i32 %1199, 255
  %1204 = call i32 @llvm.ctpop.i32(i32 %1203) #16
  %1205 = trunc i32 %1204 to i8
  %1206 = and i8 %1205, 1
  %1207 = xor i8 %1206, 1
  %1208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1207, i8* %1208, align 1, !tbaa !2446
  %1209 = xor i32 %1198, 1
  %1210 = xor i32 %1209, %1199
  %1211 = lshr i32 %1210, 4
  %1212 = trunc i32 %1211 to i8
  %1213 = and i8 %1212, 1
  %1214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1213, i8* %1214, align 1, !tbaa !2447
  %1215 = icmp eq i32 %1199, 0
  %1216 = zext i1 %1215 to i8
  %1217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1216, i8* %1217, align 1, !tbaa !2448
  %1218 = lshr i32 %1199, 31
  %1219 = trunc i32 %1218 to i8
  %1220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1219, i8* %1220, align 1, !tbaa !2449
  %1221 = lshr i32 %1198, 31
  %1222 = xor i32 %1218, %1221
  %1223 = add nuw nsw i32 %1222, %1221
  %1224 = icmp eq i32 %1223, 2
  %1225 = zext i1 %1224 to i8
  %1226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1225, i8* %1226, align 1, !tbaa !2450
  %1227 = load i64, i64* %PC
  %1228 = add i64 %1227, 18
  %1229 = load i64, i64* %PC
  %1230 = add i64 %1229, 6
  %1231 = load i64, i64* %PC
  %1232 = add i64 %1231, 6
  store i64 %1232, i64* %PC
  %1233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1234 = load i8, i8* %1233, align 1, !tbaa !2448
  %1235 = icmp eq i8 %1234, 0
  %1236 = zext i1 %1235 to i8
  store i8 %1236, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1238 = select i1 %1235, i64 %1228, i64 %1230
  store i64 %1238, i64* %1237, align 8, !tbaa !2428
  %1239 = load i8, i8* %BRANCH_TAKEN
  %1240 = icmp eq i8 %1239, 1
  %1241 = load i64, i64* %RBP
  br i1 %1240, label %block_4008a4, label %block_400898

block_4009db:                                     ; preds = %block_400898, %block_4009d6
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.2, %block_4009d6 ], [ %2, %block_400898 ]
  %1242 = load i64, i64* %PC
  %1243 = add i64 %1242, 5
  %1244 = load i64, i64* %PC
  %1245 = add i64 %1244, 5
  store i64 %1245, i64* %PC
  %1246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1243, i64* %1246, align 8, !tbaa !2428
  br label %block_4009e0

block_400882:                                     ; preds = %block_400860
  %1247 = sub i64 %139, 52
  %1248 = load i64, i64* %PC
  %1249 = add i64 %1248, 7
  store i64 %1249, i64* %PC
  %1250 = inttoptr i64 %1247 to i32*
  store i32 -1, i32* %1250
  %1251 = load i64, i64* %PC
  %1252 = add i64 %1251, 343
  %1253 = load i64, i64* %PC
  %1254 = add i64 %1253, 5
  store i64 %1254, i64* %PC
  %1255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1252, i64* %1255, align 8, !tbaa !2428
  br label %block_4009e0
}

; Function Attrs: noinline
define %struct.Memory* @sub_400ab0_daxpy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400ab0:
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
  %19 = getelementptr inbounds %struct.GPR, %struct.GPR* %18, i32 0, i32 19
  %20 = getelementptr inbounds %struct.Reg, %struct.Reg* %19, i32 0, i32 0
  %R9D = bitcast %union.anon* %20 to i32*
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %22 = getelementptr inbounds %struct.GPR, %struct.GPR* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.Reg, %struct.Reg* %22, i32 0, i32 0
  %RAX = bitcast %union.anon* %23 to i64*
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %25 = getelementptr inbounds %struct.GPR, %struct.GPR* %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.Reg, %struct.Reg* %25, i32 0, i32 0
  %RCX = bitcast %union.anon* %26 to i64*
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %28 = getelementptr inbounds %struct.GPR, %struct.GPR* %27, i32 0, i32 7
  %29 = getelementptr inbounds %struct.Reg, %struct.Reg* %28, i32 0, i32 0
  %RDX = bitcast %union.anon* %29 to i64*
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %31 = getelementptr inbounds %struct.GPR, %struct.GPR* %30, i32 0, i32 9
  %32 = getelementptr inbounds %struct.Reg, %struct.Reg* %31, i32 0, i32 0
  %RSI = bitcast %union.anon* %32 to i64*
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %34 = getelementptr inbounds %struct.GPR, %struct.GPR* %33, i32 0, i32 13
  %35 = getelementptr inbounds %struct.Reg, %struct.Reg* %34, i32 0, i32 0
  %RSP = bitcast %union.anon* %35 to i64*
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %37 = getelementptr inbounds %struct.GPR, %struct.GPR* %36, i32 0, i32 15
  %38 = getelementptr inbounds %struct.Reg, %struct.Reg* %37, i32 0, i32 0
  %RBP = bitcast %union.anon* %38 to i64*
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %40 = getelementptr inbounds %struct.GPR, %struct.GPR* %39, i32 0, i32 17
  %41 = getelementptr inbounds %struct.Reg, %struct.Reg* %40, i32 0, i32 0
  %R8 = bitcast %union.anon* %41 to i64*
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %43 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %42, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %43 to %"class.std::bitset"*
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %45 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %44, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %45 to %"class.std::bitset"*
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %47 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %46, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %47 to %union.vec128_t*
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %49 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %48, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %49 to %union.vec128_t*
  %50 = load i64, i64* %RBP
  %51 = load i64, i64* %PC
  %52 = add i64 %51, 1
  store i64 %52, i64* %PC
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %54 = load i64, i64* %53, align 8, !tbaa !2428
  %55 = add i64 %54, -8
  %56 = inttoptr i64 %55 to i64*
  store i64 %50, i64* %56
  store i64 %55, i64* %53, align 8, !tbaa !2428
  %57 = load i64, i64* %RSP
  %58 = load i64, i64* %PC
  %59 = add i64 %58, 3
  store i64 %59, i64* %PC
  store i64 %57, i64* %RBP, align 8, !tbaa !2428
  %60 = load i64, i64* %RBP
  %61 = add i64 %60, 16
  %62 = load i64, i64* %PC
  %63 = add i64 %62, 3
  store i64 %63, i64* %PC
  %64 = inttoptr i64 %61 to i32*
  %65 = load i32, i32* %64
  %66 = zext i32 %65 to i64
  store i64 %66, i64* %RAX, align 8, !tbaa !2428
  %67 = load i64, i64* %RBP
  %68 = sub i64 %67, 4
  %69 = load i32, i32* %EDI
  %70 = zext i32 %69 to i64
  %71 = load i64, i64* %PC
  %72 = add i64 %71, 3
  store i64 %72, i64* %PC
  %73 = inttoptr i64 %68 to i32*
  store i32 %69, i32* %73
  %74 = load i64, i64* %RBP
  %75 = sub i64 %74, 16
  %76 = bitcast %union.vec128_t* %XMM0 to i8*
  %77 = load i64, i64* %PC
  %78 = add i64 %77, 5
  store i64 %78, i64* %PC
  %79 = bitcast i8* %76 to double*
  %80 = load double, double* %79, align 1
  %81 = inttoptr i64 %75 to double*
  store double %80, double* %81
  %82 = load i64, i64* %RBP
  %83 = sub i64 %82, 24
  %84 = load i64, i64* %RSI
  %85 = load i64, i64* %PC
  %86 = add i64 %85, 4
  store i64 %86, i64* %PC
  %87 = inttoptr i64 %83 to i64*
  store i64 %84, i64* %87
  %88 = load i64, i64* %RBP
  %89 = sub i64 %88, 28
  %90 = load i32, i32* %EDX
  %91 = zext i32 %90 to i64
  %92 = load i64, i64* %PC
  %93 = add i64 %92, 3
  store i64 %93, i64* %PC
  %94 = inttoptr i64 %89 to i32*
  store i32 %90, i32* %94
  %95 = load i64, i64* %RBP
  %96 = sub i64 %95, 32
  %97 = load i32, i32* %ECX
  %98 = zext i32 %97 to i64
  %99 = load i64, i64* %PC
  %100 = add i64 %99, 3
  store i64 %100, i64* %PC
  %101 = inttoptr i64 %96 to i32*
  store i32 %97, i32* %101
  %102 = load i64, i64* %RBP
  %103 = sub i64 %102, 40
  %104 = load i64, i64* %R8
  %105 = load i64, i64* %PC
  %106 = add i64 %105, 4
  store i64 %106, i64* %PC
  %107 = inttoptr i64 %103 to i64*
  store i64 %104, i64* %107
  %108 = load i64, i64* %RBP
  %109 = sub i64 %108, 44
  %110 = load i32, i32* %R9D
  %111 = zext i32 %110 to i64
  %112 = load i64, i64* %PC
  %113 = add i64 %112, 4
  store i64 %113, i64* %PC
  %114 = inttoptr i64 %109 to i32*
  store i32 %110, i32* %114
  %115 = load i64, i64* %RBP
  %116 = sub i64 %115, 48
  %117 = load i32, i32* %EAX
  %118 = zext i32 %117 to i64
  %119 = load i64, i64* %PC
  %120 = add i64 %119, 3
  store i64 %120, i64* %PC
  %121 = inttoptr i64 %116 to i32*
  store i32 %117, i32* %121
  %122 = load i64, i64* %RBP
  %123 = sub i64 %122, 4
  %124 = load i64, i64* %PC
  %125 = add i64 %124, 4
  store i64 %125, i64* %PC
  %126 = inttoptr i64 %123 to i32*
  %127 = load i32, i32* %126
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %128, align 1, !tbaa !2432
  %129 = and i32 %127, 255
  %130 = call i32 @llvm.ctpop.i32(i32 %129) #16
  %131 = trunc i32 %130 to i8
  %132 = and i8 %131, 1
  %133 = xor i8 %132, 1
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %133, i8* %134, align 1, !tbaa !2446
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %135, align 1, !tbaa !2447
  %136 = icmp eq i32 %127, 0
  %137 = zext i1 %136 to i8
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %137, i8* %138, align 1, !tbaa !2448
  %139 = lshr i32 %127, 31
  %140 = trunc i32 %139 to i8
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %140, i8* %141, align 1, !tbaa !2449
  %142 = lshr i32 %127, 31
  %143 = xor i32 %139, %142
  %144 = add nuw nsw i32 %143, %142
  %145 = icmp eq i32 %144, 2
  %146 = zext i1 %145 to i8
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %146, i8* %147, align 1, !tbaa !2450
  %148 = load i64, i64* %PC
  %149 = add i64 %148, 310
  %150 = load i64, i64* %PC
  %151 = add i64 %150, 6
  %152 = load i64, i64* %PC
  %153 = add i64 %152, 6
  store i64 %153, i64* %PC
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %155 = load i8, i8* %154, align 1, !tbaa !2448
  %156 = icmp ne i8 %155, 0
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %158 = load i8, i8* %157, align 1, !tbaa !2449
  %159 = icmp ne i8 %158, 0
  %160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %161 = load i8, i8* %160, align 1, !tbaa !2450
  %162 = icmp ne i8 %161, 0
  %163 = xor i1 %159, %162
  %164 = or i1 %156, %163
  %165 = zext i1 %164 to i8
  store i8 %165, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %167 = select i1 %164, i64 %149, i64 %151
  store i64 %167, i64* %166, align 8, !tbaa !2428
  %168 = load i8, i8* %BRANCH_TAKEN
  %169 = icmp eq i8 %168, 1
  br i1 %169, label %block_400c0e, label %block_400ade

block_400bbc:                                     ; preds = %block_400bc8, %block_400bb5
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.6, %block_400bb5 ], [ %MEMORY.0, %block_400bc8 ]
  %170 = load i64, i64* %RBP
  %171 = sub i64 %170, 52
  %172 = load i64, i64* %PC
  %173 = add i64 %172, 3
  store i64 %173, i64* %PC
  %174 = inttoptr i64 %171 to i32*
  %175 = load i32, i32* %174
  %176 = zext i32 %175 to i64
  store i64 %176, i64* %RAX, align 8, !tbaa !2428
  %177 = load i32, i32* %EAX
  %178 = zext i32 %177 to i64
  %179 = load i64, i64* %RBP
  %180 = sub i64 %179, 4
  %181 = load i64, i64* %PC
  %182 = add i64 %181, 3
  store i64 %182, i64* %PC
  %183 = inttoptr i64 %180 to i32*
  %184 = load i32, i32* %183
  %185 = sub i32 %177, %184
  %186 = icmp ult i32 %177, %184
  %187 = zext i1 %186 to i8
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %187, i8* %188, align 1, !tbaa !2432
  %189 = and i32 %185, 255
  %190 = call i32 @llvm.ctpop.i32(i32 %189) #16
  %191 = trunc i32 %190 to i8
  %192 = and i8 %191, 1
  %193 = xor i8 %192, 1
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %193, i8* %194, align 1, !tbaa !2446
  %195 = xor i32 %184, %177
  %196 = xor i32 %195, %185
  %197 = lshr i32 %196, 4
  %198 = trunc i32 %197 to i8
  %199 = and i8 %198, 1
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %199, i8* %200, align 1, !tbaa !2447
  %201 = icmp eq i32 %185, 0
  %202 = zext i1 %201 to i8
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %202, i8* %203, align 1, !tbaa !2448
  %204 = lshr i32 %185, 31
  %205 = trunc i32 %204 to i8
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %205, i8* %206, align 1, !tbaa !2449
  %207 = lshr i32 %177, 31
  %208 = lshr i32 %184, 31
  %209 = xor i32 %208, %207
  %210 = xor i32 %204, %207
  %211 = add nuw nsw i32 %210, %209
  %212 = icmp eq i32 %211, 2
  %213 = zext i1 %212 to i8
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %213, i8* %214, align 1, !tbaa !2450
  %215 = load i64, i64* %PC
  %216 = add i64 %215, 66
  %217 = load i64, i64* %PC
  %218 = add i64 %217, 6
  %219 = load i64, i64* %PC
  %220 = add i64 %219, 6
  store i64 %220, i64* %PC
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %222 = load i8, i8* %221, align 1, !tbaa !2449
  %223 = icmp ne i8 %222, 0
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %225 = load i8, i8* %224, align 1, !tbaa !2450
  %226 = icmp ne i8 %225, 0
  %227 = xor i1 %223, %226
  %228 = xor i1 %227, true
  %229 = zext i1 %228 to i8
  store i8 %229, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %231 = select i1 %227, i64 %218, i64 %216
  store i64 %231, i64* %230, align 8, !tbaa !2428
  %232 = load i8, i8* %BRANCH_TAKEN
  %233 = icmp eq i8 %232, 1
  br i1 %233, label %block_400c04, label %block_400bc8

block_400b36:                                     ; preds = %block_400b0f, %block_400b27
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.5, %block_400b0f ], [ %MEMORY.5, %block_400b27 ]
  %234 = load i64, i64* %RBP
  %235 = sub i64 %234, 48
  %236 = load i64, i64* %PC
  %237 = add i64 %236, 4
  store i64 %237, i64* %PC
  %238 = inttoptr i64 %235 to i32*
  %239 = load i32, i32* %238
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %240, align 1, !tbaa !2432
  %241 = and i32 %239, 255
  %242 = call i32 @llvm.ctpop.i32(i32 %241) #16
  %243 = trunc i32 %242 to i8
  %244 = and i8 %243, 1
  %245 = xor i8 %244, 1
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %245, i8* %246, align 1, !tbaa !2446
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %247, align 1, !tbaa !2447
  %248 = icmp eq i32 %239, 0
  %249 = zext i1 %248 to i8
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %249, i8* %250, align 1, !tbaa !2448
  %251 = lshr i32 %239, 31
  %252 = trunc i32 %251 to i8
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %252, i8* %253, align 1, !tbaa !2449
  %254 = lshr i32 %239, 31
  %255 = xor i32 %251, %254
  %256 = add nuw nsw i32 %255, %254
  %257 = icmp eq i32 %256, 2
  %258 = zext i1 %257 to i8
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %258, i8* %259, align 1, !tbaa !2450
  %260 = load i64, i64* %PC
  %261 = add i64 %260, 21
  %262 = load i64, i64* %PC
  %263 = add i64 %262, 6
  %264 = load i64, i64* %PC
  %265 = add i64 %264, 6
  store i64 %265, i64* %PC
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %267 = load i8, i8* %266, align 1, !tbaa !2449
  %268 = icmp ne i8 %267, 0
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %270 = load i8, i8* %269, align 1, !tbaa !2450
  %271 = icmp ne i8 %270, 0
  %272 = xor i1 %268, %271
  %273 = xor i1 %272, true
  %274 = zext i1 %273 to i8
  store i8 %274, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %276 = select i1 %272, i64 %263, i64 %261
  store i64 %276, i64* %275, align 8, !tbaa !2428
  %277 = load i8, i8* %BRANCH_TAKEN
  %278 = icmp eq i8 %277, 1
  br i1 %278, label %block_400b4f, label %block_400b40

block_400bb5:                                     ; preds = %block_400b05
  %279 = load i64, i64* %RBP
  %280 = sub i64 %279, 52
  %281 = load i64, i64* %PC
  %282 = add i64 %281, 7
  store i64 %282, i64* %PC
  %283 = inttoptr i64 %280 to i32*
  store i32 0, i32* %283
  br label %block_400bbc

block_400af6:                                     ; preds = %block_400af0
  %284 = load i64, i64* %PC
  %285 = add i64 %284, 280
  %286 = load i64, i64* %PC
  %287 = add i64 %286, 5
  store i64 %287, i64* %PC
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %285, i64* %288, align 8, !tbaa !2428
  br label %block_400c0e

block_400b4f:                                     ; preds = %block_400b40, %block_400b36
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.1, %block_400b36 ], [ %MEMORY.1, %block_400b40 ]
  %289 = load i64, i64* %RBP
  %290 = sub i64 %289, 52
  %291 = load i64, i64* %PC
  %292 = add i64 %291, 7
  store i64 %292, i64* %PC
  %293 = inttoptr i64 %290 to i32*
  store i32 0, i32* %293
  br label %block_400b56

block_400b56:                                     ; preds = %block_400b62, %block_400b4f
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.2, %block_400b4f ], [ %MEMORY.3, %block_400b62 ]
  %294 = load i64, i64* %RBP
  %295 = sub i64 %294, 52
  %296 = load i64, i64* %PC
  %297 = add i64 %296, 3
  store i64 %297, i64* %PC
  %298 = inttoptr i64 %295 to i32*
  %299 = load i32, i32* %298
  %300 = zext i32 %299 to i64
  store i64 %300, i64* %RAX, align 8, !tbaa !2428
  %301 = load i32, i32* %EAX
  %302 = zext i32 %301 to i64
  %303 = load i64, i64* %RBP
  %304 = sub i64 %303, 4
  %305 = load i64, i64* %PC
  %306 = add i64 %305, 3
  store i64 %306, i64* %PC
  %307 = inttoptr i64 %304 to i32*
  %308 = load i32, i32* %307
  %309 = sub i32 %301, %308
  %310 = icmp ult i32 %301, %308
  %311 = zext i1 %310 to i8
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %311, i8* %312, align 1, !tbaa !2432
  %313 = and i32 %309, 255
  %314 = call i32 @llvm.ctpop.i32(i32 %313) #16
  %315 = trunc i32 %314 to i8
  %316 = and i8 %315, 1
  %317 = xor i8 %316, 1
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %317, i8* %318, align 1, !tbaa !2446
  %319 = xor i32 %308, %301
  %320 = xor i32 %319, %309
  %321 = lshr i32 %320, 4
  %322 = trunc i32 %321 to i8
  %323 = and i8 %322, 1
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %323, i8* %324, align 1, !tbaa !2447
  %325 = icmp eq i32 %309, 0
  %326 = zext i1 %325 to i8
  %327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %326, i8* %327, align 1, !tbaa !2448
  %328 = lshr i32 %309, 31
  %329 = trunc i32 %328 to i8
  %330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %329, i8* %330, align 1, !tbaa !2449
  %331 = lshr i32 %301, 31
  %332 = lshr i32 %308, 31
  %333 = xor i32 %332, %331
  %334 = xor i32 %328, %331
  %335 = add nuw nsw i32 %334, %333
  %336 = icmp eq i32 %335, 2
  %337 = zext i1 %336 to i8
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %337, i8* %338, align 1, !tbaa !2450
  %339 = load i64, i64* %PC
  %340 = add i64 %339, 84
  %341 = load i64, i64* %PC
  %342 = add i64 %341, 6
  %343 = load i64, i64* %PC
  %344 = add i64 %343, 6
  store i64 %344, i64* %PC
  %345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %346 = load i8, i8* %345, align 1, !tbaa !2449
  %347 = icmp ne i8 %346, 0
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %349 = load i8, i8* %348, align 1, !tbaa !2450
  %350 = icmp ne i8 %349, 0
  %351 = xor i1 %347, %350
  %352 = xor i1 %351, true
  %353 = zext i1 %352 to i8
  store i8 %353, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %355 = select i1 %351, i64 %342, i64 %340
  store i64 %355, i64* %354, align 8, !tbaa !2428
  %356 = load i8, i8* %BRANCH_TAKEN
  %357 = icmp eq i8 %356, 1
  br i1 %357, label %block_400bb0, label %block_400b62

block_400c0e:                                     ; preds = %block_400bb0, %block_400c04, %block_400af6, %block_400ab0
  %MEMORY.4 = phi %struct.Memory* [ %2, %block_400ab0 ], [ %MEMORY.3, %block_400bb0 ], [ %MEMORY.0, %block_400c04 ], [ %451, %block_400af6 ]
  %358 = load i64, i64* %PC
  %359 = add i64 %358, 1
  store i64 %359, i64* %PC
  %360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %361 = load i64, i64* %360, align 8, !tbaa !2428
  %362 = add i64 %361, 8
  %363 = inttoptr i64 %361 to i64*
  %364 = load i64, i64* %363
  store i64 %364, i64* %RBP, align 8, !tbaa !2428
  store i64 %362, i64* %360, align 8, !tbaa !2428
  %365 = load i64, i64* %PC
  %366 = add i64 %365, 1
  store i64 %366, i64* %PC
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %369 = load i64, i64* %368, align 8, !tbaa !2428
  %370 = inttoptr i64 %369 to i64*
  %371 = load i64, i64* %370
  store i64 %371, i64* %367, align 8, !tbaa !2428
  %372 = add i64 %369, 8
  store i64 %372, i64* %368, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.4

block_400ade:                                     ; preds = %block_400ab0
  %373 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %374 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %375 = bitcast %union.vec128_t* %XMM0 to i8*
  %376 = load i64, i64* %PC
  %377 = add i64 %376, 3
  store i64 %377, i64* %PC
  %378 = bitcast i8* %374 to i64*
  %379 = load i64, i64* %378, align 1
  %380 = getelementptr inbounds i8, i8* %374, i64 8
  %381 = bitcast i8* %380 to i64*
  %382 = load i64, i64* %381, align 1
  %383 = bitcast i8* %375 to i64*
  %384 = load i64, i64* %383, align 1
  %385 = getelementptr inbounds i8, i8* %375, i64 8
  %386 = bitcast i8* %385 to i64*
  %387 = load i64, i64* %386, align 1
  %388 = xor i64 %384, %379
  %389 = xor i64 %387, %382
  %390 = trunc i64 %388 to i32
  %391 = lshr i64 %388, 32
  %392 = trunc i64 %391 to i32
  %393 = bitcast i8* %373 to i32*
  store i32 %390, i32* %393, align 1, !tbaa !2454
  %394 = getelementptr inbounds i8, i8* %373, i64 4
  %395 = bitcast i8* %394 to i32*
  store i32 %392, i32* %395, align 1, !tbaa !2454
  %396 = trunc i64 %389 to i32
  %397 = getelementptr inbounds i8, i8* %373, i64 8
  %398 = bitcast i8* %397 to i32*
  store i32 %396, i32* %398, align 1, !tbaa !2454
  %399 = lshr i64 %389, 32
  %400 = trunc i64 %399 to i32
  %401 = getelementptr inbounds i8, i8* %373, i64 12
  %402 = bitcast i8* %401 to i32*
  store i32 %400, i32* %402, align 1, !tbaa !2454
  %403 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %404 = load i64, i64* %RBP
  %405 = sub i64 %404, 16
  %406 = load i64, i64* %PC
  %407 = add i64 %406, 5
  store i64 %407, i64* %PC
  %408 = inttoptr i64 %405 to double*
  %409 = load double, double* %408
  %410 = bitcast i8* %403 to double*
  store double %409, double* %410, align 1, !tbaa !2452
  %411 = getelementptr inbounds i8, i8* %403, i64 8
  %412 = bitcast i8* %411 to double*
  store double 0.000000e+00, double* %412, align 1, !tbaa !2452
  %413 = bitcast %union.vec128_t* %XMM1 to i8*
  %414 = bitcast %union.vec128_t* %XMM0 to i8*
  %415 = load i64, i64* %PC
  %416 = add i64 %415, 4
  store i64 %416, i64* %PC
  %417 = bitcast i8* %413 to double*
  %418 = load double, double* %417, align 1
  %419 = bitcast i8* %414 to double*
  %420 = load double, double* %419, align 1
  %421 = fcmp uno double %418, %420
  br i1 %421, label %422, label %434

; <label>:422:                                    ; preds = %block_400ade
  %423 = fadd double %418, %420
  %424 = bitcast double %423 to i64
  %425 = and i64 %424, 9221120237041090560
  %426 = icmp eq i64 %425, 9218868437227405312
  %427 = and i64 %424, 2251799813685247
  %428 = icmp ne i64 %427, 0
  %429 = and i1 %426, %428
  br i1 %429, label %430, label %440

; <label>:430:                                    ; preds = %422
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %432 = load i64, i64* %431, align 8, !tbaa !2428
  %433 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %432, %struct.Memory* %2) #17
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:434:                                    ; preds = %block_400ade
  %435 = fcmp ogt double %418, %420
  br i1 %435, label %440, label %436

; <label>:436:                                    ; preds = %434
  %437 = fcmp olt double %418, %420
  br i1 %437, label %440, label %438

; <label>:438:                                    ; preds = %436
  %439 = fcmp oeq double %418, %420
  br i1 %439, label %440, label %447

; <label>:440:                                    ; preds = %438, %436, %434, %422
  %441 = phi i8 [ 0, %434 ], [ 0, %436 ], [ 1, %438 ], [ 1, %422 ]
  %442 = phi i8 [ 0, %434 ], [ 0, %436 ], [ 0, %438 ], [ 1, %422 ]
  %443 = phi i8 [ 0, %434 ], [ 1, %436 ], [ 0, %438 ], [ 1, %422 ]
  %444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %441, i8* %444, align 1, !tbaa !2451
  %445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %442, i8* %445, align 1, !tbaa !2451
  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %443, i8* %446, align 1, !tbaa !2451
  br label %447

; <label>:447:                                    ; preds = %440, %438
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %448, align 1, !tbaa !2451
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %449, align 1, !tbaa !2451
  %450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %450, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %430, %447
  %451 = phi %struct.Memory* [ %433, %430 ], [ %2, %447 ]
  %452 = load i64, i64* %PC
  %453 = add i64 %452, 17
  %454 = load i64, i64* %PC
  %455 = add i64 %454, 6
  %456 = load i64, i64* %PC
  %457 = add i64 %456, 6
  store i64 %457, i64* %PC
  %458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %459 = load i8, i8* %458, align 1, !tbaa !2448
  %460 = icmp eq i8 %459, 0
  %461 = zext i1 %460 to i8
  store i8 %461, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %463 = select i1 %460, i64 %453, i64 %455
  store i64 %463, i64* %462, align 8, !tbaa !2428
  %464 = load i8, i8* %BRANCH_TAKEN
  %465 = icmp eq i8 %464, 1
  br i1 %465, label %block_400afb, label %block_400af0

block_400bc8:                                     ; preds = %block_400bbc
  %466 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %467 = load i64, i64* %RBP
  %468 = sub i64 %467, 16
  %469 = load i64, i64* %PC
  %470 = add i64 %469, 5
  store i64 %470, i64* %PC
  %471 = inttoptr i64 %468 to double*
  %472 = load double, double* %471
  %473 = bitcast i8* %466 to double*
  store double %472, double* %473, align 1, !tbaa !2452
  %474 = getelementptr inbounds i8, i8* %466, i64 8
  %475 = bitcast i8* %474 to double*
  store double 0.000000e+00, double* %475, align 1, !tbaa !2452
  %476 = load i64, i64* %RBP
  %477 = sub i64 %476, 24
  %478 = load i64, i64* %PC
  %479 = add i64 %478, 4
  store i64 %479, i64* %PC
  %480 = inttoptr i64 %477 to i64*
  %481 = load i64, i64* %480
  store i64 %481, i64* %RAX, align 8, !tbaa !2428
  %482 = load i64, i64* %RBP
  %483 = sub i64 %482, 52
  %484 = load i64, i64* %PC
  %485 = add i64 %484, 3
  store i64 %485, i64* %PC
  %486 = inttoptr i64 %483 to i32*
  %487 = load i32, i32* %486
  %488 = zext i32 %487 to i64
  store i64 %488, i64* %RCX, align 8, !tbaa !2428
  %489 = load i64, i64* %RCX
  %490 = load i64, i64* %RBP
  %491 = sub i64 %490, 28
  %492 = load i64, i64* %PC
  %493 = add i64 %492, 3
  store i64 %493, i64* %PC
  %494 = trunc i64 %489 to i32
  %495 = inttoptr i64 %491 to i32*
  %496 = load i32, i32* %495
  %497 = add i32 %496, %494
  %498 = zext i32 %497 to i64
  store i64 %498, i64* %RCX, align 8, !tbaa !2428
  %499 = icmp ult i32 %497, %494
  %500 = icmp ult i32 %497, %496
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
  %510 = xor i32 %496, %494
  %511 = xor i32 %510, %497
  %512 = lshr i32 %511, 4
  %513 = trunc i32 %512 to i8
  %514 = and i8 %513, 1
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %514, i8* %515, align 1, !tbaa !2447
  %516 = icmp eq i32 %497, 0
  %517 = zext i1 %516 to i8
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %517, i8* %518, align 1, !tbaa !2448
  %519 = lshr i32 %497, 31
  %520 = trunc i32 %519 to i8
  %521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %520, i8* %521, align 1, !tbaa !2449
  %522 = lshr i32 %494, 31
  %523 = lshr i32 %496, 31
  %524 = xor i32 %519, %522
  %525 = xor i32 %519, %523
  %526 = add nuw nsw i32 %524, %525
  %527 = icmp eq i32 %526, 2
  %528 = zext i1 %527 to i8
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %528, i8* %529, align 1, !tbaa !2450
  %530 = load i32, i32* %ECX
  %531 = zext i32 %530 to i64
  %532 = load i64, i64* %PC
  %533 = add i64 %532, 3
  store i64 %533, i64* %PC
  %534 = shl i64 %531, 32
  %535 = ashr exact i64 %534, 32
  store i64 %535, i64* %RDX, align 8, !tbaa !2428
  %536 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %537 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %538 = load i64, i64* %RAX
  %539 = load i64, i64* %RDX
  %540 = mul i64 %539, 8
  %541 = add i64 %540, %538
  %542 = load i64, i64* %PC
  %543 = add i64 %542, 5
  store i64 %543, i64* %PC
  %544 = bitcast i8* %537 to double*
  %545 = load double, double* %544, align 1
  %546 = getelementptr inbounds i8, i8* %537, i64 8
  %547 = bitcast i8* %546 to i64*
  %548 = load i64, i64* %547, align 1
  %549 = inttoptr i64 %541 to double*
  %550 = load double, double* %549
  %551 = fmul double %545, %550
  %552 = bitcast i8* %536 to double*
  store double %551, double* %552, align 1, !tbaa !2452
  %553 = getelementptr inbounds i8, i8* %536, i64 8
  %554 = bitcast i8* %553 to i64*
  store i64 %548, i64* %554, align 1, !tbaa !2452
  %555 = load i64, i64* %RBP
  %556 = sub i64 %555, 40
  %557 = load i64, i64* %PC
  %558 = add i64 %557, 4
  store i64 %558, i64* %PC
  %559 = inttoptr i64 %556 to i64*
  %560 = load i64, i64* %559
  store i64 %560, i64* %RAX, align 8, !tbaa !2428
  %561 = load i64, i64* %RBP
  %562 = sub i64 %561, 52
  %563 = load i64, i64* %PC
  %564 = add i64 %563, 3
  store i64 %564, i64* %PC
  %565 = inttoptr i64 %562 to i32*
  %566 = load i32, i32* %565
  %567 = zext i32 %566 to i64
  store i64 %567, i64* %RCX, align 8, !tbaa !2428
  %568 = load i64, i64* %RCX
  %569 = load i64, i64* %RBP
  %570 = sub i64 %569, 44
  %571 = load i64, i64* %PC
  %572 = add i64 %571, 3
  store i64 %572, i64* %PC
  %573 = trunc i64 %568 to i32
  %574 = inttoptr i64 %570 to i32*
  %575 = load i32, i32* %574
  %576 = add i32 %575, %573
  %577 = zext i32 %576 to i64
  store i64 %577, i64* %RCX, align 8, !tbaa !2428
  %578 = icmp ult i32 %576, %573
  %579 = icmp ult i32 %576, %575
  %580 = or i1 %578, %579
  %581 = zext i1 %580 to i8
  %582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %581, i8* %582, align 1, !tbaa !2432
  %583 = and i32 %576, 255
  %584 = call i32 @llvm.ctpop.i32(i32 %583) #16
  %585 = trunc i32 %584 to i8
  %586 = and i8 %585, 1
  %587 = xor i8 %586, 1
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %587, i8* %588, align 1, !tbaa !2446
  %589 = xor i32 %575, %573
  %590 = xor i32 %589, %576
  %591 = lshr i32 %590, 4
  %592 = trunc i32 %591 to i8
  %593 = and i8 %592, 1
  %594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %593, i8* %594, align 1, !tbaa !2447
  %595 = icmp eq i32 %576, 0
  %596 = zext i1 %595 to i8
  %597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %596, i8* %597, align 1, !tbaa !2448
  %598 = lshr i32 %576, 31
  %599 = trunc i32 %598 to i8
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %599, i8* %600, align 1, !tbaa !2449
  %601 = lshr i32 %573, 31
  %602 = lshr i32 %575, 31
  %603 = xor i32 %598, %601
  %604 = xor i32 %598, %602
  %605 = add nuw nsw i32 %603, %604
  %606 = icmp eq i32 %605, 2
  %607 = zext i1 %606 to i8
  %608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %607, i8* %608, align 1, !tbaa !2450
  %609 = load i32, i32* %ECX
  %610 = zext i32 %609 to i64
  %611 = load i64, i64* %PC
  %612 = add i64 %611, 3
  store i64 %612, i64* %PC
  %613 = shl i64 %610, 32
  %614 = ashr exact i64 %613, 32
  store i64 %614, i64* %RDX, align 8, !tbaa !2428
  %615 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %616 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %617 = load i64, i64* %RAX
  %618 = load i64, i64* %RDX
  %619 = mul i64 %618, 8
  %620 = add i64 %619, %617
  %621 = load i64, i64* %PC
  %622 = add i64 %621, 5
  store i64 %622, i64* %PC
  %623 = bitcast i8* %616 to double*
  %624 = load double, double* %623, align 1
  %625 = getelementptr inbounds i8, i8* %616, i64 8
  %626 = bitcast i8* %625 to i64*
  %627 = load i64, i64* %626, align 1
  %628 = inttoptr i64 %620 to double*
  %629 = load double, double* %628
  %630 = fadd double %624, %629
  %631 = bitcast i8* %615 to double*
  store double %630, double* %631, align 1, !tbaa !2452
  %632 = getelementptr inbounds i8, i8* %615, i64 8
  %633 = bitcast i8* %632 to i64*
  store i64 %627, i64* %633, align 1, !tbaa !2452
  %634 = load i64, i64* %RAX
  %635 = load i64, i64* %RDX
  %636 = mul i64 %635, 8
  %637 = add i64 %636, %634
  %638 = bitcast %union.vec128_t* %XMM0 to i8*
  %639 = load i64, i64* %PC
  %640 = add i64 %639, 5
  store i64 %640, i64* %PC
  %641 = bitcast i8* %638 to double*
  %642 = load double, double* %641, align 1
  %643 = inttoptr i64 %637 to double*
  store double %642, double* %643
  %644 = load i64, i64* %RBP
  %645 = sub i64 %644, 52
  %646 = load i64, i64* %PC
  %647 = add i64 %646, 3
  store i64 %647, i64* %PC
  %648 = inttoptr i64 %645 to i32*
  %649 = load i32, i32* %648
  %650 = zext i32 %649 to i64
  store i64 %650, i64* %RAX, align 8, !tbaa !2428
  %651 = load i64, i64* %RAX
  %652 = load i64, i64* %PC
  %653 = add i64 %652, 3
  store i64 %653, i64* %PC
  %654 = trunc i64 %651 to i32
  %655 = add i32 1, %654
  %656 = zext i32 %655 to i64
  store i64 %656, i64* %RAX, align 8, !tbaa !2428
  %657 = icmp ult i32 %655, %654
  %658 = icmp ult i32 %655, 1
  %659 = or i1 %657, %658
  %660 = zext i1 %659 to i8
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %660, i8* %661, align 1, !tbaa !2432
  %662 = and i32 %655, 255
  %663 = call i32 @llvm.ctpop.i32(i32 %662) #16
  %664 = trunc i32 %663 to i8
  %665 = and i8 %664, 1
  %666 = xor i8 %665, 1
  %667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %666, i8* %667, align 1, !tbaa !2446
  %668 = xor i64 1, %651
  %669 = trunc i64 %668 to i32
  %670 = xor i32 %669, %655
  %671 = lshr i32 %670, 4
  %672 = trunc i32 %671 to i8
  %673 = and i8 %672, 1
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %673, i8* %674, align 1, !tbaa !2447
  %675 = icmp eq i32 %655, 0
  %676 = zext i1 %675 to i8
  %677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %676, i8* %677, align 1, !tbaa !2448
  %678 = lshr i32 %655, 31
  %679 = trunc i32 %678 to i8
  %680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %679, i8* %680, align 1, !tbaa !2449
  %681 = lshr i32 %654, 31
  %682 = xor i32 %678, %681
  %683 = add nuw nsw i32 %682, %678
  %684 = icmp eq i32 %683, 2
  %685 = zext i1 %684 to i8
  %686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %685, i8* %686, align 1, !tbaa !2450
  %687 = load i64, i64* %RBP
  %688 = sub i64 %687, 52
  %689 = load i32, i32* %EAX
  %690 = zext i32 %689 to i64
  %691 = load i64, i64* %PC
  %692 = add i64 %691, 3
  store i64 %692, i64* %PC
  %693 = inttoptr i64 %688 to i32*
  store i32 %689, i32* %693
  %694 = load i64, i64* %PC
  %695 = sub i64 %694, 67
  %696 = load i64, i64* %PC
  %697 = add i64 %696, 5
  store i64 %697, i64* %PC
  %698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %695, i64* %698, align 8, !tbaa !2428
  br label %block_400bbc

block_400b27:                                     ; preds = %block_400b0f
  %699 = load i64, i64* %PC
  %700 = add i64 %699, 5
  store i64 %700, i64* %PC
  store i64 1, i64* %RAX, align 8, !tbaa !2428
  %701 = load i64, i64* %RAX
  %702 = load i64, i64* %RBP
  %703 = sub i64 %702, 4
  %704 = load i64, i64* %PC
  %705 = add i64 %704, 3
  store i64 %705, i64* %PC
  %706 = trunc i64 %701 to i32
  %707 = inttoptr i64 %703 to i32*
  %708 = load i32, i32* %707
  %709 = sub i32 %706, %708
  %710 = zext i32 %709 to i64
  store i64 %710, i64* %RAX, align 8, !tbaa !2428
  %711 = icmp ult i32 %706, %708
  %712 = zext i1 %711 to i8
  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %712, i8* %713, align 1, !tbaa !2432
  %714 = and i32 %709, 255
  %715 = call i32 @llvm.ctpop.i32(i32 %714) #16
  %716 = trunc i32 %715 to i8
  %717 = and i8 %716, 1
  %718 = xor i8 %717, 1
  %719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %718, i8* %719, align 1, !tbaa !2446
  %720 = xor i32 %708, %706
  %721 = xor i32 %720, %709
  %722 = lshr i32 %721, 4
  %723 = trunc i32 %722 to i8
  %724 = and i8 %723, 1
  %725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %724, i8* %725, align 1, !tbaa !2447
  %726 = icmp eq i32 %709, 0
  %727 = zext i1 %726 to i8
  %728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %727, i8* %728, align 1, !tbaa !2448
  %729 = lshr i32 %709, 31
  %730 = trunc i32 %729 to i8
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %730, i8* %731, align 1, !tbaa !2449
  %732 = lshr i32 %706, 31
  %733 = lshr i32 %708, 31
  %734 = xor i32 %733, %732
  %735 = xor i32 %729, %732
  %736 = add nuw nsw i32 %735, %734
  %737 = icmp eq i32 %736, 2
  %738 = zext i1 %737 to i8
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %738, i8* %739, align 1, !tbaa !2450
  %740 = load i64, i64* %RAX
  %741 = load i64, i64* %RBP
  %742 = sub i64 %741, 32
  %743 = load i64, i64* %PC
  %744 = add i64 %743, 4
  store i64 %744, i64* %PC
  %745 = inttoptr i64 %742 to i32*
  %746 = load i32, i32* %745
  %747 = shl i64 %740, 32
  %748 = ashr exact i64 %747, 32
  %749 = sext i32 %746 to i64
  %750 = mul nsw i64 %749, %748
  %751 = trunc i64 %750 to i32
  %752 = and i64 %750, 4294967295
  store i64 %752, i64* %RAX, align 8, !tbaa !2428
  %753 = shl i64 %750, 32
  %754 = ashr exact i64 %753, 32
  %755 = icmp ne i64 %754, %750
  %756 = zext i1 %755 to i8
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %756, i8* %757, align 1, !tbaa !2432
  %758 = and i32 %751, 255
  %759 = call i32 @llvm.ctpop.i32(i32 %758) #16
  %760 = trunc i32 %759 to i8
  %761 = and i8 %760, 1
  %762 = xor i8 %761, 1
  %763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %762, i8* %763, align 1, !tbaa !2446
  %764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %764, align 1, !tbaa !2447
  %765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %765, align 1, !tbaa !2448
  %766 = lshr i32 %751, 31
  %767 = trunc i32 %766 to i8
  %768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %767, i8* %768, align 1, !tbaa !2449
  %769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %756, i8* %769, align 1, !tbaa !2450
  %770 = load i64, i64* %RBP
  %771 = sub i64 %770, 56
  %772 = load i32, i32* %EAX
  %773 = zext i32 %772 to i64
  %774 = load i64, i64* %PC
  %775 = add i64 %774, 3
  store i64 %775, i64* %PC
  %776 = inttoptr i64 %771 to i32*
  store i32 %772, i32* %776
  br label %block_400b36

block_400b05:                                     ; preds = %block_400afb
  %777 = load i64, i64* %RBP
  %778 = sub i64 %777, 48
  %779 = load i64, i64* %PC
  %780 = add i64 %779, 4
  store i64 %780, i64* %PC
  %781 = inttoptr i64 %778 to i32*
  %782 = load i32, i32* %781
  %783 = sub i32 %782, 1
  %784 = icmp ult i32 %782, 1
  %785 = zext i1 %784 to i8
  %786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %785, i8* %786, align 1, !tbaa !2432
  %787 = and i32 %783, 255
  %788 = call i32 @llvm.ctpop.i32(i32 %787) #16
  %789 = trunc i32 %788 to i8
  %790 = and i8 %789, 1
  %791 = xor i8 %790, 1
  %792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %791, i8* %792, align 1, !tbaa !2446
  %793 = xor i32 %782, 1
  %794 = xor i32 %793, %783
  %795 = lshr i32 %794, 4
  %796 = trunc i32 %795 to i8
  %797 = and i8 %796, 1
  %798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %797, i8* %798, align 1, !tbaa !2447
  %799 = icmp eq i32 %783, 0
  %800 = zext i1 %799 to i8
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %800, i8* %801, align 1, !tbaa !2448
  %802 = lshr i32 %783, 31
  %803 = trunc i32 %802 to i8
  %804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %803, i8* %804, align 1, !tbaa !2449
  %805 = lshr i32 %782, 31
  %806 = xor i32 %802, %805
  %807 = add nuw nsw i32 %806, %805
  %808 = icmp eq i32 %807, 2
  %809 = zext i1 %808 to i8
  %810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %809, i8* %810, align 1, !tbaa !2450
  %811 = load i64, i64* %PC
  %812 = add i64 %811, 172
  %813 = load i64, i64* %PC
  %814 = add i64 %813, 6
  %815 = load i64, i64* %PC
  %816 = add i64 %815, 6
  store i64 %816, i64* %PC
  %817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %818 = load i8, i8* %817, align 1, !tbaa !2448
  store i8 %818, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %820 = icmp ne i8 %818, 0
  %821 = select i1 %820, i64 %812, i64 %814
  store i64 %821, i64* %819, align 8, !tbaa !2428
  %822 = load i8, i8* %BRANCH_TAKEN
  %823 = icmp eq i8 %822, 1
  br i1 %823, label %block_400bb5, label %block_400b0f

block_400af0:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit
  %824 = load i64, i64* %PC
  %825 = add i64 %824, 11
  %826 = load i64, i64* %PC
  %827 = add i64 %826, 6
  %828 = load i64, i64* %PC
  %829 = add i64 %828, 6
  store i64 %829, i64* %PC
  %830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %831 = load i8, i8* %830, align 1, !tbaa !2446
  store i8 %831, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %833 = icmp ne i8 %831, 0
  %834 = select i1 %833, i64 %825, i64 %827
  store i64 %834, i64* %832, align 8, !tbaa !2428
  %835 = load i8, i8* %BRANCH_TAKEN
  %836 = icmp eq i8 %835, 1
  br i1 %836, label %block_400afb, label %block_400af6

block_400c04:                                     ; preds = %block_400bbc
  %837 = load i64, i64* %PC
  %838 = add i64 %837, 5
  %839 = load i64, i64* %PC
  %840 = add i64 %839, 5
  store i64 %840, i64* %PC
  %841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %838, i64* %841, align 8, !tbaa !2428
  %842 = load i64, i64* %PC
  %843 = add i64 %842, 5
  %844 = load i64, i64* %PC
  %845 = add i64 %844, 5
  store i64 %845, i64* %PC
  %846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %843, i64* %846, align 8, !tbaa !2428
  br label %block_400c0e

block_400b62:                                     ; preds = %block_400b56
  %847 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %848 = load i64, i64* %RBP
  %849 = sub i64 %848, 16
  %850 = load i64, i64* %PC
  %851 = add i64 %850, 5
  store i64 %851, i64* %PC
  %852 = inttoptr i64 %849 to double*
  %853 = load double, double* %852
  %854 = bitcast i8* %847 to double*
  store double %853, double* %854, align 1, !tbaa !2452
  %855 = getelementptr inbounds i8, i8* %847, i64 8
  %856 = bitcast i8* %855 to double*
  store double 0.000000e+00, double* %856, align 1, !tbaa !2452
  %857 = load i64, i64* %RBP
  %858 = sub i64 %857, 24
  %859 = load i64, i64* %PC
  %860 = add i64 %859, 4
  store i64 %860, i64* %PC
  %861 = inttoptr i64 %858 to i64*
  %862 = load i64, i64* %861
  store i64 %862, i64* %RAX, align 8, !tbaa !2428
  %863 = load i64, i64* %RBP
  %864 = sub i64 %863, 56
  %865 = load i64, i64* %PC
  %866 = add i64 %865, 3
  store i64 %866, i64* %PC
  %867 = inttoptr i64 %864 to i32*
  %868 = load i32, i32* %867
  %869 = zext i32 %868 to i64
  store i64 %869, i64* %RCX, align 8, !tbaa !2428
  %870 = load i64, i64* %RCX
  %871 = load i64, i64* %RBP
  %872 = sub i64 %871, 28
  %873 = load i64, i64* %PC
  %874 = add i64 %873, 3
  store i64 %874, i64* %PC
  %875 = trunc i64 %870 to i32
  %876 = inttoptr i64 %872 to i32*
  %877 = load i32, i32* %876
  %878 = add i32 %877, %875
  %879 = zext i32 %878 to i64
  store i64 %879, i64* %RCX, align 8, !tbaa !2428
  %880 = icmp ult i32 %878, %875
  %881 = icmp ult i32 %878, %877
  %882 = or i1 %880, %881
  %883 = zext i1 %882 to i8
  %884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %883, i8* %884, align 1, !tbaa !2432
  %885 = and i32 %878, 255
  %886 = call i32 @llvm.ctpop.i32(i32 %885) #16
  %887 = trunc i32 %886 to i8
  %888 = and i8 %887, 1
  %889 = xor i8 %888, 1
  %890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %889, i8* %890, align 1, !tbaa !2446
  %891 = xor i32 %877, %875
  %892 = xor i32 %891, %878
  %893 = lshr i32 %892, 4
  %894 = trunc i32 %893 to i8
  %895 = and i8 %894, 1
  %896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %895, i8* %896, align 1, !tbaa !2447
  %897 = icmp eq i32 %878, 0
  %898 = zext i1 %897 to i8
  %899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %898, i8* %899, align 1, !tbaa !2448
  %900 = lshr i32 %878, 31
  %901 = trunc i32 %900 to i8
  %902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %901, i8* %902, align 1, !tbaa !2449
  %903 = lshr i32 %875, 31
  %904 = lshr i32 %877, 31
  %905 = xor i32 %900, %903
  %906 = xor i32 %900, %904
  %907 = add nuw nsw i32 %905, %906
  %908 = icmp eq i32 %907, 2
  %909 = zext i1 %908 to i8
  %910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %909, i8* %910, align 1, !tbaa !2450
  %911 = load i32, i32* %ECX
  %912 = zext i32 %911 to i64
  %913 = load i64, i64* %PC
  %914 = add i64 %913, 3
  store i64 %914, i64* %PC
  %915 = shl i64 %912, 32
  %916 = ashr exact i64 %915, 32
  store i64 %916, i64* %RDX, align 8, !tbaa !2428
  %917 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %918 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %919 = load i64, i64* %RAX
  %920 = load i64, i64* %RDX
  %921 = mul i64 %920, 8
  %922 = add i64 %921, %919
  %923 = load i64, i64* %PC
  %924 = add i64 %923, 5
  store i64 %924, i64* %PC
  %925 = bitcast i8* %918 to double*
  %926 = load double, double* %925, align 1
  %927 = getelementptr inbounds i8, i8* %918, i64 8
  %928 = bitcast i8* %927 to i64*
  %929 = load i64, i64* %928, align 1
  %930 = inttoptr i64 %922 to double*
  %931 = load double, double* %930
  %932 = fmul double %926, %931
  %933 = bitcast i8* %917 to double*
  store double %932, double* %933, align 1, !tbaa !2452
  %934 = getelementptr inbounds i8, i8* %917, i64 8
  %935 = bitcast i8* %934 to i64*
  store i64 %929, i64* %935, align 1, !tbaa !2452
  %936 = load i64, i64* %RBP
  %937 = sub i64 %936, 40
  %938 = load i64, i64* %PC
  %939 = add i64 %938, 4
  store i64 %939, i64* %PC
  %940 = inttoptr i64 %937 to i64*
  %941 = load i64, i64* %940
  store i64 %941, i64* %RAX, align 8, !tbaa !2428
  %942 = load i64, i64* %RBP
  %943 = sub i64 %942, 60
  %944 = load i64, i64* %PC
  %945 = add i64 %944, 3
  store i64 %945, i64* %PC
  %946 = inttoptr i64 %943 to i32*
  %947 = load i32, i32* %946
  %948 = zext i32 %947 to i64
  store i64 %948, i64* %RCX, align 8, !tbaa !2428
  %949 = load i64, i64* %RCX
  %950 = load i64, i64* %RBP
  %951 = sub i64 %950, 44
  %952 = load i64, i64* %PC
  %953 = add i64 %952, 3
  store i64 %953, i64* %PC
  %954 = trunc i64 %949 to i32
  %955 = inttoptr i64 %951 to i32*
  %956 = load i32, i32* %955
  %957 = add i32 %956, %954
  %958 = zext i32 %957 to i64
  store i64 %958, i64* %RCX, align 8, !tbaa !2428
  %959 = icmp ult i32 %957, %954
  %960 = icmp ult i32 %957, %956
  %961 = or i1 %959, %960
  %962 = zext i1 %961 to i8
  %963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %962, i8* %963, align 1, !tbaa !2432
  %964 = and i32 %957, 255
  %965 = call i32 @llvm.ctpop.i32(i32 %964) #16
  %966 = trunc i32 %965 to i8
  %967 = and i8 %966, 1
  %968 = xor i8 %967, 1
  %969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %968, i8* %969, align 1, !tbaa !2446
  %970 = xor i32 %956, %954
  %971 = xor i32 %970, %957
  %972 = lshr i32 %971, 4
  %973 = trunc i32 %972 to i8
  %974 = and i8 %973, 1
  %975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %974, i8* %975, align 1, !tbaa !2447
  %976 = icmp eq i32 %957, 0
  %977 = zext i1 %976 to i8
  %978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %977, i8* %978, align 1, !tbaa !2448
  %979 = lshr i32 %957, 31
  %980 = trunc i32 %979 to i8
  %981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %980, i8* %981, align 1, !tbaa !2449
  %982 = lshr i32 %954, 31
  %983 = lshr i32 %956, 31
  %984 = xor i32 %979, %982
  %985 = xor i32 %979, %983
  %986 = add nuw nsw i32 %984, %985
  %987 = icmp eq i32 %986, 2
  %988 = zext i1 %987 to i8
  %989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %988, i8* %989, align 1, !tbaa !2450
  %990 = load i32, i32* %ECX
  %991 = zext i32 %990 to i64
  %992 = load i64, i64* %PC
  %993 = add i64 %992, 3
  store i64 %993, i64* %PC
  %994 = shl i64 %991, 32
  %995 = ashr exact i64 %994, 32
  store i64 %995, i64* %RDX, align 8, !tbaa !2428
  %996 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %997 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %998 = load i64, i64* %RAX
  %999 = load i64, i64* %RDX
  %1000 = mul i64 %999, 8
  %1001 = add i64 %1000, %998
  %1002 = load i64, i64* %PC
  %1003 = add i64 %1002, 5
  store i64 %1003, i64* %PC
  %1004 = bitcast i8* %997 to double*
  %1005 = load double, double* %1004, align 1
  %1006 = getelementptr inbounds i8, i8* %997, i64 8
  %1007 = bitcast i8* %1006 to i64*
  %1008 = load i64, i64* %1007, align 1
  %1009 = inttoptr i64 %1001 to double*
  %1010 = load double, double* %1009
  %1011 = fadd double %1005, %1010
  %1012 = bitcast i8* %996 to double*
  store double %1011, double* %1012, align 1, !tbaa !2452
  %1013 = getelementptr inbounds i8, i8* %996, i64 8
  %1014 = bitcast i8* %1013 to i64*
  store i64 %1008, i64* %1014, align 1, !tbaa !2452
  %1015 = load i64, i64* %RAX
  %1016 = load i64, i64* %RDX
  %1017 = mul i64 %1016, 8
  %1018 = add i64 %1017, %1015
  %1019 = bitcast %union.vec128_t* %XMM0 to i8*
  %1020 = load i64, i64* %PC
  %1021 = add i64 %1020, 5
  store i64 %1021, i64* %PC
  %1022 = bitcast i8* %1019 to double*
  %1023 = load double, double* %1022, align 1
  %1024 = inttoptr i64 %1018 to double*
  store double %1023, double* %1024
  %1025 = load i64, i64* %RBP
  %1026 = sub i64 %1025, 32
  %1027 = load i64, i64* %PC
  %1028 = add i64 %1027, 3
  store i64 %1028, i64* %PC
  %1029 = inttoptr i64 %1026 to i32*
  %1030 = load i32, i32* %1029
  %1031 = zext i32 %1030 to i64
  store i64 %1031, i64* %RCX, align 8, !tbaa !2428
  %1032 = load i64, i64* %RCX
  %1033 = load i64, i64* %RBP
  %1034 = sub i64 %1033, 56
  %1035 = load i64, i64* %PC
  %1036 = add i64 %1035, 3
  store i64 %1036, i64* %PC
  %1037 = trunc i64 %1032 to i32
  %1038 = inttoptr i64 %1034 to i32*
  %1039 = load i32, i32* %1038
  %1040 = add i32 %1039, %1037
  %1041 = zext i32 %1040 to i64
  store i64 %1041, i64* %RCX, align 8, !tbaa !2428
  %1042 = icmp ult i32 %1040, %1037
  %1043 = icmp ult i32 %1040, %1039
  %1044 = or i1 %1042, %1043
  %1045 = zext i1 %1044 to i8
  %1046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1045, i8* %1046, align 1, !tbaa !2432
  %1047 = and i32 %1040, 255
  %1048 = call i32 @llvm.ctpop.i32(i32 %1047) #16
  %1049 = trunc i32 %1048 to i8
  %1050 = and i8 %1049, 1
  %1051 = xor i8 %1050, 1
  %1052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1051, i8* %1052, align 1, !tbaa !2446
  %1053 = xor i32 %1039, %1037
  %1054 = xor i32 %1053, %1040
  %1055 = lshr i32 %1054, 4
  %1056 = trunc i32 %1055 to i8
  %1057 = and i8 %1056, 1
  %1058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1057, i8* %1058, align 1, !tbaa !2447
  %1059 = icmp eq i32 %1040, 0
  %1060 = zext i1 %1059 to i8
  %1061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1060, i8* %1061, align 1, !tbaa !2448
  %1062 = lshr i32 %1040, 31
  %1063 = trunc i32 %1062 to i8
  %1064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1063, i8* %1064, align 1, !tbaa !2449
  %1065 = lshr i32 %1037, 31
  %1066 = lshr i32 %1039, 31
  %1067 = xor i32 %1062, %1065
  %1068 = xor i32 %1062, %1066
  %1069 = add nuw nsw i32 %1067, %1068
  %1070 = icmp eq i32 %1069, 2
  %1071 = zext i1 %1070 to i8
  %1072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1071, i8* %1072, align 1, !tbaa !2450
  %1073 = load i64, i64* %RBP
  %1074 = sub i64 %1073, 56
  %1075 = load i32, i32* %ECX
  %1076 = zext i32 %1075 to i64
  %1077 = load i64, i64* %PC
  %1078 = add i64 %1077, 3
  store i64 %1078, i64* %PC
  %1079 = inttoptr i64 %1074 to i32*
  store i32 %1075, i32* %1079
  %1080 = load i64, i64* %RBP
  %1081 = sub i64 %1080, 48
  %1082 = load i64, i64* %PC
  %1083 = add i64 %1082, 3
  store i64 %1083, i64* %PC
  %1084 = inttoptr i64 %1081 to i32*
  %1085 = load i32, i32* %1084
  %1086 = zext i32 %1085 to i64
  store i64 %1086, i64* %RCX, align 8, !tbaa !2428
  %1087 = load i64, i64* %RCX
  %1088 = load i64, i64* %RBP
  %1089 = sub i64 %1088, 60
  %1090 = load i64, i64* %PC
  %1091 = add i64 %1090, 3
  store i64 %1091, i64* %PC
  %1092 = trunc i64 %1087 to i32
  %1093 = inttoptr i64 %1089 to i32*
  %1094 = load i32, i32* %1093
  %1095 = add i32 %1094, %1092
  %1096 = zext i32 %1095 to i64
  store i64 %1096, i64* %RCX, align 8, !tbaa !2428
  %1097 = icmp ult i32 %1095, %1092
  %1098 = icmp ult i32 %1095, %1094
  %1099 = or i1 %1097, %1098
  %1100 = zext i1 %1099 to i8
  %1101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1100, i8* %1101, align 1, !tbaa !2432
  %1102 = and i32 %1095, 255
  %1103 = call i32 @llvm.ctpop.i32(i32 %1102) #16
  %1104 = trunc i32 %1103 to i8
  %1105 = and i8 %1104, 1
  %1106 = xor i8 %1105, 1
  %1107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1106, i8* %1107, align 1, !tbaa !2446
  %1108 = xor i32 %1094, %1092
  %1109 = xor i32 %1108, %1095
  %1110 = lshr i32 %1109, 4
  %1111 = trunc i32 %1110 to i8
  %1112 = and i8 %1111, 1
  %1113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1112, i8* %1113, align 1, !tbaa !2447
  %1114 = icmp eq i32 %1095, 0
  %1115 = zext i1 %1114 to i8
  %1116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1115, i8* %1116, align 1, !tbaa !2448
  %1117 = lshr i32 %1095, 31
  %1118 = trunc i32 %1117 to i8
  %1119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1118, i8* %1119, align 1, !tbaa !2449
  %1120 = lshr i32 %1092, 31
  %1121 = lshr i32 %1094, 31
  %1122 = xor i32 %1117, %1120
  %1123 = xor i32 %1117, %1121
  %1124 = add nuw nsw i32 %1122, %1123
  %1125 = icmp eq i32 %1124, 2
  %1126 = zext i1 %1125 to i8
  %1127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1126, i8* %1127, align 1, !tbaa !2450
  %1128 = load i64, i64* %RBP
  %1129 = sub i64 %1128, 60
  %1130 = load i32, i32* %ECX
  %1131 = zext i32 %1130 to i64
  %1132 = load i64, i64* %PC
  %1133 = add i64 %1132, 3
  store i64 %1133, i64* %PC
  %1134 = inttoptr i64 %1129 to i32*
  store i32 %1130, i32* %1134
  %1135 = load i64, i64* %RBP
  %1136 = sub i64 %1135, 52
  %1137 = load i64, i64* %PC
  %1138 = add i64 %1137, 3
  store i64 %1138, i64* %PC
  %1139 = inttoptr i64 %1136 to i32*
  %1140 = load i32, i32* %1139
  %1141 = zext i32 %1140 to i64
  store i64 %1141, i64* %RAX, align 8, !tbaa !2428
  %1142 = load i64, i64* %RAX
  %1143 = load i64, i64* %PC
  %1144 = add i64 %1143, 3
  store i64 %1144, i64* %PC
  %1145 = trunc i64 %1142 to i32
  %1146 = add i32 1, %1145
  %1147 = zext i32 %1146 to i64
  store i64 %1147, i64* %RAX, align 8, !tbaa !2428
  %1148 = icmp ult i32 %1146, %1145
  %1149 = icmp ult i32 %1146, 1
  %1150 = or i1 %1148, %1149
  %1151 = zext i1 %1150 to i8
  %1152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1151, i8* %1152, align 1, !tbaa !2432
  %1153 = and i32 %1146, 255
  %1154 = call i32 @llvm.ctpop.i32(i32 %1153) #16
  %1155 = trunc i32 %1154 to i8
  %1156 = and i8 %1155, 1
  %1157 = xor i8 %1156, 1
  %1158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1157, i8* %1158, align 1, !tbaa !2446
  %1159 = xor i64 1, %1142
  %1160 = trunc i64 %1159 to i32
  %1161 = xor i32 %1160, %1146
  %1162 = lshr i32 %1161, 4
  %1163 = trunc i32 %1162 to i8
  %1164 = and i8 %1163, 1
  %1165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1164, i8* %1165, align 1, !tbaa !2447
  %1166 = icmp eq i32 %1146, 0
  %1167 = zext i1 %1166 to i8
  %1168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1167, i8* %1168, align 1, !tbaa !2448
  %1169 = lshr i32 %1146, 31
  %1170 = trunc i32 %1169 to i8
  %1171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1170, i8* %1171, align 1, !tbaa !2449
  %1172 = lshr i32 %1145, 31
  %1173 = xor i32 %1169, %1172
  %1174 = add nuw nsw i32 %1173, %1169
  %1175 = icmp eq i32 %1174, 2
  %1176 = zext i1 %1175 to i8
  %1177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1176, i8* %1177, align 1, !tbaa !2450
  %1178 = load i64, i64* %RBP
  %1179 = sub i64 %1178, 52
  %1180 = load i32, i32* %EAX
  %1181 = zext i32 %1180 to i64
  %1182 = load i64, i64* %PC
  %1183 = add i64 %1182, 3
  store i64 %1183, i64* %PC
  %1184 = inttoptr i64 %1179 to i32*
  store i32 %1180, i32* %1184
  %1185 = load i64, i64* %PC
  %1186 = sub i64 %1185, 85
  %1187 = load i64, i64* %PC
  %1188 = add i64 %1187, 5
  store i64 %1188, i64* %PC
  %1189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1186, i64* %1189, align 8, !tbaa !2428
  br label %block_400b56

block_400b0f:                                     ; preds = %block_400afb, %block_400b05
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.6, %block_400afb ], [ %MEMORY.6, %block_400b05 ]
  %1190 = load i64, i64* %RBP
  %1191 = sub i64 %1190, 56
  %1192 = load i64, i64* %PC
  %1193 = add i64 %1192, 7
  store i64 %1193, i64* %PC
  %1194 = inttoptr i64 %1191 to i32*
  store i32 0, i32* %1194
  %1195 = load i64, i64* %RBP
  %1196 = sub i64 %1195, 60
  %1197 = load i64, i64* %PC
  %1198 = add i64 %1197, 7
  store i64 %1198, i64* %PC
  %1199 = inttoptr i64 %1196 to i32*
  store i32 0, i32* %1199
  %1200 = load i64, i64* %RBP
  %1201 = sub i64 %1200, 32
  %1202 = load i64, i64* %PC
  %1203 = add i64 %1202, 4
  store i64 %1203, i64* %PC
  %1204 = inttoptr i64 %1201 to i32*
  %1205 = load i32, i32* %1204
  %1206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1206, align 1, !tbaa !2432
  %1207 = and i32 %1205, 255
  %1208 = call i32 @llvm.ctpop.i32(i32 %1207) #16
  %1209 = trunc i32 %1208 to i8
  %1210 = and i8 %1209, 1
  %1211 = xor i8 %1210, 1
  %1212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1211, i8* %1212, align 1, !tbaa !2446
  %1213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1213, align 1, !tbaa !2447
  %1214 = icmp eq i32 %1205, 0
  %1215 = zext i1 %1214 to i8
  %1216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1215, i8* %1216, align 1, !tbaa !2448
  %1217 = lshr i32 %1205, 31
  %1218 = trunc i32 %1217 to i8
  %1219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1218, i8* %1219, align 1, !tbaa !2449
  %1220 = lshr i32 %1205, 31
  %1221 = xor i32 %1217, %1220
  %1222 = add nuw nsw i32 %1221, %1220
  %1223 = icmp eq i32 %1222, 2
  %1224 = zext i1 %1223 to i8
  %1225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1224, i8* %1225, align 1, !tbaa !2450
  %1226 = load i64, i64* %PC
  %1227 = add i64 %1226, 21
  %1228 = load i64, i64* %PC
  %1229 = add i64 %1228, 6
  %1230 = load i64, i64* %PC
  %1231 = add i64 %1230, 6
  store i64 %1231, i64* %PC
  %1232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1233 = load i8, i8* %1232, align 1, !tbaa !2449
  %1234 = icmp ne i8 %1233, 0
  %1235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1236 = load i8, i8* %1235, align 1, !tbaa !2450
  %1237 = icmp ne i8 %1236, 0
  %1238 = xor i1 %1234, %1237
  %1239 = xor i1 %1238, true
  %1240 = zext i1 %1239 to i8
  store i8 %1240, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1242 = select i1 %1238, i64 %1229, i64 %1227
  store i64 %1242, i64* %1241, align 8, !tbaa !2428
  %1243 = load i8, i8* %BRANCH_TAKEN
  %1244 = icmp eq i8 %1243, 1
  br i1 %1244, label %block_400b36, label %block_400b27

block_400bb0:                                     ; preds = %block_400b56
  %1245 = load i64, i64* %PC
  %1246 = add i64 %1245, 94
  %1247 = load i64, i64* %PC
  %1248 = add i64 %1247, 5
  store i64 %1248, i64* %PC
  %1249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1246, i64* %1249, align 8, !tbaa !2428
  br label %block_400c0e

block_400afb:                                     ; preds = %block_400af0, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit
  %MEMORY.6 = phi %struct.Memory* [ %451, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit ], [ %451, %block_400af0 ]
  %1250 = load i64, i64* %RBP
  %1251 = sub i64 %1250, 32
  %1252 = load i64, i64* %PC
  %1253 = add i64 %1252, 4
  store i64 %1253, i64* %PC
  %1254 = inttoptr i64 %1251 to i32*
  %1255 = load i32, i32* %1254
  %1256 = sub i32 %1255, 1
  %1257 = icmp ult i32 %1255, 1
  %1258 = zext i1 %1257 to i8
  %1259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1258, i8* %1259, align 1, !tbaa !2432
  %1260 = and i32 %1256, 255
  %1261 = call i32 @llvm.ctpop.i32(i32 %1260) #16
  %1262 = trunc i32 %1261 to i8
  %1263 = and i8 %1262, 1
  %1264 = xor i8 %1263, 1
  %1265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1264, i8* %1265, align 1, !tbaa !2446
  %1266 = xor i32 %1255, 1
  %1267 = xor i32 %1266, %1256
  %1268 = lshr i32 %1267, 4
  %1269 = trunc i32 %1268 to i8
  %1270 = and i8 %1269, 1
  %1271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1270, i8* %1271, align 1, !tbaa !2447
  %1272 = icmp eq i32 %1256, 0
  %1273 = zext i1 %1272 to i8
  %1274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1273, i8* %1274, align 1, !tbaa !2448
  %1275 = lshr i32 %1256, 31
  %1276 = trunc i32 %1275 to i8
  %1277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1276, i8* %1277, align 1, !tbaa !2449
  %1278 = lshr i32 %1255, 31
  %1279 = xor i32 %1275, %1278
  %1280 = add nuw nsw i32 %1279, %1278
  %1281 = icmp eq i32 %1280, 2
  %1282 = zext i1 %1281 to i8
  %1283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1282, i8* %1283, align 1, !tbaa !2450
  %1284 = load i64, i64* %PC
  %1285 = add i64 %1284, 16
  %1286 = load i64, i64* %PC
  %1287 = add i64 %1286, 6
  %1288 = load i64, i64* %PC
  %1289 = add i64 %1288, 6
  store i64 %1289, i64* %PC
  %1290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1291 = load i8, i8* %1290, align 1, !tbaa !2448
  %1292 = icmp eq i8 %1291, 0
  %1293 = zext i1 %1292 to i8
  store i8 %1293, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1295 = select i1 %1292, i64 %1285, i64 %1287
  store i64 %1295, i64* %1294, align 8, !tbaa !2428
  %1296 = load i8, i8* %BRANCH_TAKEN
  %1297 = icmp eq i8 %1296, 1
  br i1 %1297, label %block_400b0f, label %block_400b05

block_400b40:                                     ; preds = %block_400b36
  %1298 = load i64, i64* %PC
  %1299 = add i64 %1298, 5
  store i64 %1299, i64* %PC
  store i64 1, i64* %RAX, align 8, !tbaa !2428
  %1300 = load i64, i64* %RAX
  %1301 = load i64, i64* %RBP
  %1302 = sub i64 %1301, 4
  %1303 = load i64, i64* %PC
  %1304 = add i64 %1303, 3
  store i64 %1304, i64* %PC
  %1305 = trunc i64 %1300 to i32
  %1306 = inttoptr i64 %1302 to i32*
  %1307 = load i32, i32* %1306
  %1308 = sub i32 %1305, %1307
  %1309 = zext i32 %1308 to i64
  store i64 %1309, i64* %RAX, align 8, !tbaa !2428
  %1310 = icmp ult i32 %1305, %1307
  %1311 = zext i1 %1310 to i8
  %1312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1311, i8* %1312, align 1, !tbaa !2432
  %1313 = and i32 %1308, 255
  %1314 = call i32 @llvm.ctpop.i32(i32 %1313) #16
  %1315 = trunc i32 %1314 to i8
  %1316 = and i8 %1315, 1
  %1317 = xor i8 %1316, 1
  %1318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1317, i8* %1318, align 1, !tbaa !2446
  %1319 = xor i32 %1307, %1305
  %1320 = xor i32 %1319, %1308
  %1321 = lshr i32 %1320, 4
  %1322 = trunc i32 %1321 to i8
  %1323 = and i8 %1322, 1
  %1324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1323, i8* %1324, align 1, !tbaa !2447
  %1325 = icmp eq i32 %1308, 0
  %1326 = zext i1 %1325 to i8
  %1327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1326, i8* %1327, align 1, !tbaa !2448
  %1328 = lshr i32 %1308, 31
  %1329 = trunc i32 %1328 to i8
  %1330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1329, i8* %1330, align 1, !tbaa !2449
  %1331 = lshr i32 %1305, 31
  %1332 = lshr i32 %1307, 31
  %1333 = xor i32 %1332, %1331
  %1334 = xor i32 %1328, %1331
  %1335 = add nuw nsw i32 %1334, %1333
  %1336 = icmp eq i32 %1335, 2
  %1337 = zext i1 %1336 to i8
  %1338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1337, i8* %1338, align 1, !tbaa !2450
  %1339 = load i64, i64* %RAX
  %1340 = load i64, i64* %RBP
  %1341 = sub i64 %1340, 48
  %1342 = load i64, i64* %PC
  %1343 = add i64 %1342, 4
  store i64 %1343, i64* %PC
  %1344 = inttoptr i64 %1341 to i32*
  %1345 = load i32, i32* %1344
  %1346 = shl i64 %1339, 32
  %1347 = ashr exact i64 %1346, 32
  %1348 = sext i32 %1345 to i64
  %1349 = mul nsw i64 %1348, %1347
  %1350 = trunc i64 %1349 to i32
  %1351 = and i64 %1349, 4294967295
  store i64 %1351, i64* %RAX, align 8, !tbaa !2428
  %1352 = shl i64 %1349, 32
  %1353 = ashr exact i64 %1352, 32
  %1354 = icmp ne i64 %1353, %1349
  %1355 = zext i1 %1354 to i8
  %1356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1355, i8* %1356, align 1, !tbaa !2432
  %1357 = and i32 %1350, 255
  %1358 = call i32 @llvm.ctpop.i32(i32 %1357) #16
  %1359 = trunc i32 %1358 to i8
  %1360 = and i8 %1359, 1
  %1361 = xor i8 %1360, 1
  %1362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1361, i8* %1362, align 1, !tbaa !2446
  %1363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1363, align 1, !tbaa !2447
  %1364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1364, align 1, !tbaa !2448
  %1365 = lshr i32 %1350, 31
  %1366 = trunc i32 %1365 to i8
  %1367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1366, i8* %1367, align 1, !tbaa !2449
  %1368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1355, i8* %1368, align 1, !tbaa !2450
  %1369 = load i64, i64* %RBP
  %1370 = sub i64 %1369, 60
  %1371 = load i32, i32* %EAX
  %1372 = zext i32 %1371 to i64
  %1373 = load i64, i64* %PC
  %1374 = add i64 %1373, 3
  store i64 %1374, i64* %PC
  %1375 = inttoptr i64 %1370 to i32*
  store i32 %1371, i32* %1375
  br label %block_400b4f
}

; Function Attrs: noinline
declare void @__mcsema_attach_call() #13

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400670_frame_dummy() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400670;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @1, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_400670_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400670_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400640___do_global_dtors_aux() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400640;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @3, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_400640___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400640___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_602098_free(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_602090_fflush(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @fflush to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6020b0_fprintf(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_602088_malloc(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6020a8_strcmp(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_401200___libc_csu_fini() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x401200;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @4, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_401200___libc_csu_fini_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_401200___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_401190___libc_csu_init() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x401190;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @5, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_401190___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_401190___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @main() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400f90;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @6, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400f90_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6020a0___libc_start_main(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @idamax() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400860;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @7, void ()** @2)
  ret void
}

define internal %struct.Memory* @idamax_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400860_idamax(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @matgen() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400680;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @8, void ()** @2)
  ret void
}

define internal %struct.Memory* @matgen_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400680_matgen(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.term_proc() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x401204;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @9, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_401204__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @dscal() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4009f0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @10, void ()** @2)
  ret void
}

define internal %struct.Memory* @dscal_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_4009f0_dscal(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @dgesl() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400e00;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @11, void ()** @2)
  ret void
}

define internal %struct.Memory* @dgesl_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400e00_dgesl(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.init_proc() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400510;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @12, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400510__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @daxpy() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400ab0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @13, void ()** @2)
  ret void
}

define internal %struct.Memory* @daxpy_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400ab0_daxpy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @dgefa() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400c10;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @14, void ()** @2)
  ret void
}

define internal %struct.Memory* @dgefa_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400c10_dgefa(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

define internal void @__mcsema_destructor() {
  call void @callback_sub_401200___libc_csu_fini()
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
  call void @callback_sub_401190___libc_csu_init()
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
