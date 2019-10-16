; ModuleID = '../binary/test.mcsema.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_4003e0__init_type = type <{ [23 x i8] }>
%seg_400400__plt_type = type <{ [32 x i8] }>
%seg_400420__text_type = type <{ [2754 x i8] }>
%seg_400ee4__fini_type = type <{ [9 x i8] }>
%seg_400ef0__rodata_type = type <{ [40 x i8], [2 x i8], [15 x i8] }>
%seg_400f2c__eh_frame_hdr_type = type <{ [132 x i8] }>
%seg_400fb0__eh_frame_type = type <{ [504 x i8] }>
%seg_601df0__init_array_type = type <{ i64, i64 }>
%seg_601ff0__got_type = type <{ i64, i64 }>
%seg_602000__got_plt_type = type <{ [24 x i8], i64 }>
%seg_602020__data_type = type <{ [16 x i8] }>
%__bss_start_type = type <{ [16 x i8] }>
%fixed_type = type <{ [16 x i8] }>
%imb_type = type <{ [6724 x i8] }>
%n_type = type <{ [12 x i8] }>
%p_type = type <{ [26624 x i8] }>
%imr_type = type <{ [6736 x i8] }>
%rmr_type = type <{ [6736 x i8] }>
%z_type = type <{ [2064 x i8] }>
%puzzl_type = type <{ [2048 x i8] }>
%rmb_type = type <{ [6724 x i8] }>
%zi_type = type <{ [12 x i8] }>
%cellspace_type = type <{ [152 x i8] }>
%seed_type = type <{ [8 x i8] }>
%movesdone_type = type <{ [16 x i8] }>
%piecemax_type = type <{ [64 x i8] }>
%sortlist_type = type <{ [20004 x i8] }>
%value_type = type <{ [4 x i8] }>
%top_type = type <{ [4 x i8] }>
%floated_type = type <{ [4 x i8] }>
%pctr_type = type <{ [4 x i8] }>
%zr_type = type <{ [12 x i8] }>
%ima_type = type <{ [6724 x i8] }>
%littlest_type = type <{ [12 x i8] }>
%e_type = type <{ [1040 x i8] }>
%freelist_type = type <{ [16 x i8] }>
%w_type = type <{ [2064 x i8] }>
%permarray_type = type <{ [44 x i8] }>
%biggest_type = type <{ [4 x i8] }>
%rma_type = type <{ [6724 x i8] }>
%kount_type = type <{ [4 x i8] }>
%tree_type = type <{ [8 x i8] }>
%stack_type = type <{ [16 x i8] }>
%piececount_type = type <{ [16 x i8] }>
%class_type = type <{ [56 x i8] }>
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
@seg_4003e0__init = internal constant %seg_4003e0__init_type <{ [23 x i8] c"H\83\EC\08H\8B\05\0D\1C \00H\85\C0t\02\FF\D0H\83\C4\08\C3" }>
@seg_400400__plt = internal constant %seg_400400__plt_type <{ [32 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF%\02\1C \00\00\00\00\00\00\00\00\00\00\00" }>
@seg_400420__text = internal constant %seg_400420__text_type <{ [2754 x i8] c"1\EDI\89\D1^H\89\E2H\83\E4\F0PTI\C7\C0\E0\0E@\00H\C7\C1p\0E@\00H\C7\C70\0E@\00\FF\15\A6\1B \00\F4\0F\1FD\00\00\F3\C3f.\0F\1F\84\00\00\00\00\00\0F\1F@\00U\B80 `\00H=0 `\00H\89\E5t\17\B8\00\00\00\00H\85\C0t\0D]\BF0 `\00\FF\E0\0F\1FD\00\00]\C3f\0F\1FD\00\00\BE0 `\00UH\81\EE0 `\00H\89\E5H\C1\FE\03H\89\F0H\C1\E8?H\01\C6H\D1\FEt\15\B8\00\00\00\00H\85\C0t\0B]\BF0 `\00\FF\E0\0F\1F\00]\C3f\0F\1FD\00\00\80=Y\1B \00\00u\17UH\89\E5\E8~\FF\FF\FF\C6\05G\1B \00\01]\C3\0F\1FD\00\00\F3\C3\0F\1F@\00f.\0F\1F\84\00\00\00\00\00UH\89\E5]\EB\89f\0F\1F\84\00\00\00\00\00UH\89\E5H\C7\04%8\02a\00\03$\01\00]\C3fffff.\0F\1F\84\00\00\00\00\00UH\89\E5Hi\04%8\02a\00\1D\05\00\00H\05\196\00\00H%\FF\FF\00\00H\89\04%8\02a\00H\8B\04%8\02a\00\89\C1\89\C8]\C3fffff.\0F\1F\84\00\00\00\00\00UH\89\E5\F3\0F\10\0Dx\09\00\00\F3\0F\11E\FC\F3\0F\11M\F0\C7E\F4\01\00\00\00\F3\0F\10E\FC\F3\0F\11E\EC\C7E\F8\02\00\00\00\83}\F8\0A\0F\8F\8C\00\00\00\8BE\F4\0F\AFE\F8\89E\F4\F3\0F\10E\EC\F3\0FYE\FC\F3\0F\11E\EC\8BE\F8\83\E0\01\83\F8\00\0F\85Q\00\00\00\8BE\F8\83\E0\03\83\F8\00\0F\85!\00\00\00\F3\0F\10E\F0\F3\0F\10M\EC\F3\0F*U\F4\F3\0F^\CA\F3\0FX\C1\F3\0F\11E\F0\E9\1C\00\00\00\F3\0F\10E\F0\F3\0F\10M\EC\F3\0F*U\F4\F3\0F^\CA\F3\0F\5C\C1\F3\0F\11E\F0\E9\00\00\00\00\E9\00\00\00\00\8BE\F8\83\C0\01\89E\F8\E9j\FF\FF\FF\F3\0F\10E\F0]\C3\0F\1FD\00\00UH\89\E5\89}\F8\89u\F4\8Bu\F8;u\F4\0F\8D\0B\00\00\00\8BE\F8\89E\FC\E9\06\00\00\00\8BE\F4\89E\FC\8BE\FC]\C3\0F\1F@\00UH\89\E5H\83\EC0H\B8\18\0F@\00\00\00\00\00H\89}\F8\89u\F4\89U\F0\89M\ECH\89\C7\B0\00\E8w\FD\FF\FF\8BM\F4\89M\E8\89E\E4H\BF\1A\0F@\00\00\00\00\00H\8BE\F8HcM\E8\F3\0FZ\04\C8H\8BE\F8HcM\E8\F3\0FZL\C8\04\B0\02\E8B\FD\FF\FFH\BF\1A\0F@\00\00\00\00\00\8BU\E8\03U\EC\89U\E8H\8BM\F8Hcu\E8\F3\0FZ\04\F1H\8BM\F8Hcu\E8\F3\0FZL\F1\04\89E\E0\B0\02\E8\0A\FD\FF\FFH\BF\18\0F@\00\00\00\00\00\89E\DC\B0\00\E8\F6\FC\FF\FF\8BU\E8\03U\EC\89U\E8\89E\D8\8BE\E8;E\F0\0F\8Ep\FF\FF\FFH\83\C40]\C3\0F\1F\84\00\00\00\00\00UH\89\E5\F3\0F\10\05\AC\07\00\00H\89}\F8H\89u\F0H\8Bu\F8i\06\F7\12\00\00\05\C3\06\00\00%\FF\1F\00\00H\8Bu\F8\89\06H\8Bu\F8\F3\0F*\0E\F3\0F^\C8H\8Bu\F0\F3\0F\11\0E]\C3fff.\0F\1F\84\00\00\00\00\00UH\89\E5H\81\EC\A0\00\00\00\F3\0F\10\05Y\07\00\00\F3\0F\10\0DU\07\00\00\89}\FCH\89u\F0\F3\0F\11M\EC\F3\0F\11E\E8\C7\85|\FF\FF\FF\01\00\00\00\83\BD|\FF\FF\FF\19\0F\8FW\00\00\00\F3\0F\10E\EC\F3\0F^E\E8\E8\8E\FD\FF\FF\F3\0F\10\0D\0A\07\00\00\F3\0F\10\15\16\07\00\00\F3\0FY\D0\F3\0F^\CAHc\85|\FF\FF\FF\F3\0F\11L\85\80\F3\0F\10E\E8\F3\0FXE\E8\F3\0F\11E\E8\8B\85|\FF\FF\FF\83\C0\01\89\85|\FF\FF\FF\E9\9C\FF\FF\FF\0FW\C0\F3\0F\10\0D\CF\06\00\00\F3\0F\10\15\B7\06\00\00\B8\02\00\00\00\8BM\FC\89\85h\FF\FF\FF\89\C8\99\8B\8Dh\FF\FF\FF\F7\F9\89\85l\FF\FF\FF\8B\85l\FF\FF\FF\99\F7\F9\89\85p\FF\FF\FF\C7\85x\FF\FF\FF\01\00\00\00H\8Bu\F0\F3\0F\11V\08H\8Bu\F0\F3\0F\11F\0CH\8Bu\F0\8B\85p\FF\FF\FF\83\C0\01Hc\F8\F3\0F\11\04\FEH\8Bu\F0\8B\85p\FF\FF\FF\83\C0\01Hc\F8\F3\0F\11T\FE\04H\8Bu\F0\8B\85l\FF\FF\FF\83\C0\01Hc\F8\F3\0F\11\0C\FEH\8Bu\F0\8B\85l\FF\FF\FF\83\C0\01Hc\F8\F3\0F\11D\FE\04\B8\02\00\00\00\8B\8Dp\FF\FF\FF\89\85d\FF\FF\FF\89\C8\99\8B\8Dd\FF\FF\FF\F7\F9\89\85|\FF\FF\FF\8B\85|\FF\FF\FF\89\85t\FF\FF\FFHc\85x\FF\FF\FF\F3\0F\10D\85\80H\8BE\F0\8B\8Dt\FF\FF\FF\03\8D|\FF\FF\FF\83\C1\01Hc\D1\F3\0F\10\0C\D0H\8BE\F0\8B\8Dt\FF\FF\FF+\8D|\FF\FF\FF\83\C1\01Hc\D1\F3\0FX\0C\D0\F3\0FY\C1H\8BE\F0\8B\8Dt\FF\FF\FF\83\C1\01Hc\D1\F3\0F\11\04\D0Hc\85x\FF\FF\FF\F3\0F\10D\85\80H\8BE\F0\8B\8Dt\FF\FF\FF\03\8D|\FF\FF\FF\83\C1\01Hc\D1\F3\0F\10L\D0\04H\8BE\F0\8B\8Dt\FF\FF\FF+\8D|\FF\FF\FF\83\C1\01Hc\D1\F3\0FXL\D0\04\F3\0FY\C1H\8BE\F0\8B\8Dt\FF\FF\FF\83\C1\01Hc\D1\F3\0F\11D\D0\04\8B\8Dt\FF\FF\FF\03\8Dp\FF\FF\FF\89\8Dt\FF\FF\FF\8B\85t\FF\FF\FF;\85l\FF\FF\FF\0F\8E!\FF\FF\FF\BE\19\00\00\00\8B\85x\FF\FF\FF\83\C0\01\89\C7\E8A\FC\FF\FF\89\85x\FF\FF\FF\8B\85|\FF\FF\FF\89\85p\FF\FF\FF\83\BDp\FF\FF\FF\01\0F\8F\BF\FE\FF\FFH\81\C4\A0\00\00\00]\C3f\0F\1F\84\00\00\00\00\00UH\89\E5\B8\02\00\00\00\89}\FCH\89u\F0H\89U\E8H\89M\E0\F3\0F\11E\DC\8B}\FC\89E\C0\89\F8\99\8B}\C0\F7\FF\89E\C8\C7E\CC\01\00\00\00\C7E\D0\00\00\00\00\8BE\CC\89E\D4\C7E\D8\01\00\00\00\E9\00\00\00\00H\8BE\F0HcM\D8\F3\0F\10\04\C8H\8BE\F0\8BU\C8\03U\D8Hc\CA\F3\0FX\04\C8H\8BE\E8\8BU\D8\03U\D0Hc\CA\F3\0F\11\04\C8H\8BE\F0HcM\D8\F3\0F\10D\C8\04H\8BE\F0\8BU\C8\03U\D8Hc\CA\F3\0FXD\C8\04H\8BE\E8\8BU\D8\03U\D0Hc\CA\F3\0F\11D\C8\04H\8BE\E0\8BU\D0\83\C2\01Hc\CA\F3\0F\10\04\C8H\8BE\F0HcM\D8\F3\0F\10\0C\C8H\8BE\F0\8BU\D8\03U\C8Hc\CA\F3\0F\5C\0C\C8\F3\0FY\C1H\8BE\E0\8BU\D0\83\C2\01Hc\CA\F3\0F\10L\C8\04H\8BE\F0HcM\D8\F3\0F\10T\C8\04H\8BE\F0\8BU\D8\03U\C8Hc\CA\F3\0F\5CT\C8\04\F3\0FY\CA\F3\0F\5C\C1H\8BE\E8\8BU\D8\03U\D4Hc\CA\F3\0F\11\04\C8H\8BE\E0\8BU\D0\83\C2\01Hc\CA\F3\0F\10\04\C8H\8BE\F0HcM\D8\F3\0F\10L\C8\04H\8BE\F0\8BU\D8\03U\C8Hc\CA\F3\0F\5CL\C8\04\F3\0FY\C1H\8BE\E0\8BU\D0\83\C2\01Hc\CA\F3\0F\10L\C8\04H\8BE\F0HcM\D8\F3\0F\10\14\C8H\8BE\F0\8BU\D8\03U\C8Hc\CA\F3\0F\5C\14\C8\F3\0FY\CA\F3\0FX\C1H\8BE\E8\8BU\D8\03U\D4Hc\CA\F3\0F\11D\C8\04\8BU\D8\83\C2\01\89U\D8\8BE\D8;E\D4\0F\8E\7F\FE\FF\FF\8BE\D4\89E\D0\8BE\D0\03E\CC\89E\D4\8BE\D4;E\C8\0F\8E_\FE\FF\FF\C7E\C4\01\00\00\00H\8BE\F0HcM\C4H\8BU\E8Hcu\C4H\8B\14\F2H\89\14\C8\8B}\C4\83\C7\01\89}\C4\8BE\C4;E\FC\0F\8E\D3\FF\FF\FF\8BE\CC\03E\CC\89E\CC\8BE\CC;E\C8\0F\8E\02\FE\FF\FF\C7E\D8\01\00\00\00\8BE\D8;E\FC\0F\8F\5C\00\00\00\F3\0F\10E\DCH\8BE\F0HcM\D8\F3\0FY\04\C8H\8BE\F0HcM\D8\F3\0F\11\04\C8\F3\0F\10E\DCf\0F~\C2\81\F2\00\00\00\80f\0Fn\C2H\8BE\F0HcM\D8\F3\0FYD\C8\04H\8BE\F0HcM\D8\F3\0F\11D\C8\04\8BE\D8\83\C0\01\89E\D8\E9\98\FF\FF\FF]\C3fff.\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC\10\BF\00\01\00\00H\BE ka\00\00\00\00\00\E8\94\FA\FF\FFH\C7\04%8\02a\00\87\16\00\00\C7E\FC\01\00\00\00\81}\FC\00\01\00\00\0F\8F\A0\00\00\00H\8D}\F8H\BE\C4Pa\00\00\00\00\00H\8B\04%8\02a\00\89\C1\89M\F8\E8\04\FA\FF\FFH\8D}\F8H\BE\94\01a\00\00\00\00\00HcE\F8H\89\04%8\02a\00\E8\E5\F9\FF\FF\F3\0F\10\05\AD\01\00\00\F3\0F\10\0D\A9\01\00\00HcE\F8H\89\04%8\02a\00\0F(\D1\F3\0FY\14%\C4Pa\00\F3\0F\5C\D0HcE\FC\F3\0F\11\14\C5@\D7`\00\F3\0FY\0C%\94\01a\00\F3\0F\5C\C8HcE\FC\F3\0F\11\0C\C5D\D7`\00\8BE\FC\83\C0\01\89E\FC\E9S\FF\FF\FF\C7E\FC\01\00\00\00\83}\FC\14\0F\8F>\00\00\00\BF\00\01\00\00H\BE@\D7`\00\00\00\00\00H\BA@oa\00\00\00\00\00H\B9 ka\00\00\00\00\00\F3\0F\10\05\14\01\00\00\E83\FC\FF\FF\8BE\FC\83\C0\01\89E\FC\E9\B8\FF\FF\FFH\BF@\D7`\00\00\00\00\00\BE\01\00\00\00\BA\00\01\00\00\B9\11\00\00\00\E8G\F8\FF\FFH\83\C4\10]\C3\90UH\89\E5H\83\EC\10\C7E\FC\00\00\00\00\C7E\F8\00\00\00\00\83}\F8\0A\0F\8D\13\00\00\00\E8\8B\FE\FF\FF\8BE\F8\83\C0\01\89E\F8\E9\E3\FF\FF\FF1\C0H\83\C4\10]\C3\0F\1FD\00\00AWAVI\89\D7AUATL\8D%n\0F \00UH\8D-n\0F \00SA\89\FDI\89\F6L)\E5H\83\EC\08H\C1\FD\03\E8?\F5\FF\FFH\85\EDt 1\DB\0F\1F\84\00\00\00\00\00L\89\FAL\89\F6D\89\EFA\FF\14\DCH\83\C3\01H9\DDu\EAH\83\C4\08[]A\5CA]A^A_\C3\90f.\0F\1F\84\00\00\00\00\00\F3\C3" }>
@seg_400ee4__fini = internal constant %seg_400ee4__fini_type <{ [9 x i8] c"H\83\EC\08H\83\C4\08\C3" }>
@seg_400ef0__rodata = internal constant %seg_400ef0__rodata_type <{ [40 x i8] c"\01\00\02\00\00\00\80?\00\00\00F\00\00\80@\DB\0FI@\00\00\80\BF\00\00\00@\00\00\80=\00\00 A\00\00\A0A", [2 x i8] c"\0A\00", [15 x i8] c"  %15.3f%15.3f\00" }>
@seg_400f2c__eh_frame_hdr = internal constant %seg_400f2c__eh_frame_hdr_type <{ [132 x i8] c"\01\1B\03;\80\00\00\00\0F\00\00\00\D4\F4\FF\FF\DC\00\00\00\F4\F4\FF\FF\9C\00\00\00$\F5\FF\FF\C8\00\00\00\E4\F5\FF\FF\04\01\00\00\04\F6\FF\FF \01\00\00D\F6\FF\FF<\01\00\00\14\F7\FF\FFX\01\00\00D\F7\FF\FFt\01\00\00\14\F8\FF\FF\90\01\00\00d\F8\FF\FF\AC\01\00\00\04\FB\FF\FF\C8\01\00\00\B4\FD\FF\FF\E4\01\00\00\04\FF\FF\FF\00\02\00\00D\FF\FF\FF\1C\02\00\00\B4\FF\FF\FFd\02\00\00" }>
@seg_400fb0__eh_frame = internal constant %seg_400fb0__eh_frame_type <{ [504 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00P\F4\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00T\F4\FF\FF\02\00\00\00\00\00\00\00$\00\00\000\00\00\00\F0\F3\FF\FF \00\00\00\00\0E\10F\0E\18J\0F\0Bw\08\80\00?\1A;*3$\22\00\00\00\00\18\00\00\00X\00\00\00\D8\F4\FF\FF\12\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00t\00\00\00\DC\F4\FF\FF2\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\90\00\00\00\00\F5\FF\FF\CB\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\AC\00\00\00\B4\F5\FF\FF,\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\C8\00\00\00\C8\F5\FF\FF\C8\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\E4\00\00\00|\F6\FF\FFD\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\00\01\00\00\B0\F6\FF\FF\97\02\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\1C\01\00\004\F9\FF\FF\A4\02\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\01\00\00\C8\FB\FF\FFO\01\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00T\01\00\00\FC\FC\FF\FF;\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00D\00\00\00p\01\00\00 \FD\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\B8\01\00\00H\FD\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@seg_601df0__init_array = internal global %seg_601df0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_400500_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_4004d0___do_global_dtors_aux to i64) }>
@seg_601ff0__got = internal global %seg_601ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@seg_602000__got_plt = internal global %seg_602000__got_plt_type <{ [24 x i8] zeroinitializer, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64) }>
@seg_602020__data = internal global %seg_602020__data_type zeroinitializer
@__bss_start = global %__bss_start_type zeroinitializer
@fixed = global %fixed_type zeroinitializer
@imb = global %imb_type zeroinitializer
@n = global %n_type zeroinitializer
@p = global %p_type zeroinitializer
@imr = global %imr_type zeroinitializer
@rmr = global %rmr_type zeroinitializer
@z = global %z_type zeroinitializer
@puzzl = global %puzzl_type zeroinitializer
@rmb = global %rmb_type zeroinitializer
@zi = global %zi_type zeroinitializer
@cellspace = global %cellspace_type zeroinitializer
@seed = global %seed_type zeroinitializer
@movesdone = global %movesdone_type zeroinitializer
@piecemax = global %piecemax_type zeroinitializer
@sortlist = global %sortlist_type zeroinitializer
@value = global %value_type zeroinitializer
@top = global %top_type zeroinitializer
@floated = global %floated_type zeroinitializer
@pctr = global %pctr_type zeroinitializer
@zr = global %zr_type zeroinitializer
@ima = global %ima_type zeroinitializer
@littlest = global %littlest_type zeroinitializer
@e = global %e_type zeroinitializer
@freelist = global %freelist_type zeroinitializer
@w = global %w_type zeroinitializer
@permarray = global %permarray_type zeroinitializer
@biggest = global %biggest_type zeroinitializer
@rma = global %rma_type zeroinitializer
@kount = global %kount_type zeroinitializer
@tree = global %tree_type zeroinitializer
@stack = global %stack_type zeroinitializer
@piececount = global %piececount_type zeroinitializer
@class = global %class_type zeroinitializer
@0 = internal global i1 false
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400500_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4004d0___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400ee0___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400e70___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @Exptab_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @Cos_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@10 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @Oscar_wrapper
@11 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @Initrand_wrapper
@12 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @Printcomplex_wrapper
@13 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @Uniform11_wrapper
@14 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@15 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @Rand_wrapper
@16 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @Fft_wrapper
@17 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @Min0_wrapper
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
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #13

; Function Attrs: noinline
define %struct.Memory* @sub_400a30_Fft(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400a30:
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
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %37 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %36, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %37 to %"class.std::bitset"*
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %39 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %38, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %39 to %"class.std::bitset"*
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %41 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %41 to %"class.std::bitset"*
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %43 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %42, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %43 to %union.vec128_t*
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %45 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %44, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %45 to %union.vec128_t*
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %47 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %46, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %47 to %union.vec128_t*
  %48 = load i64, i64* %RBP
  %49 = load i64, i64* %PC
  %50 = add i64 %49, 1
  store i64 %50, i64* %PC
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %52 = load i64, i64* %51, align 8, !tbaa !2428
  %53 = add i64 %52, -8
  %54 = inttoptr i64 %53 to i64*
  store i64 %48, i64* %54
  store i64 %53, i64* %51, align 8, !tbaa !2428
  %55 = load i64, i64* %RSP
  %56 = load i64, i64* %PC
  %57 = add i64 %56, 3
  store i64 %57, i64* %PC
  store i64 %55, i64* %RBP, align 8, !tbaa !2428
  %58 = load i64, i64* %PC
  %59 = add i64 %58, 5
  store i64 %59, i64* %PC
  store i64 2, i64* %RAX, align 8, !tbaa !2428
  %60 = load i64, i64* %RBP
  %61 = sub i64 %60, 4
  %62 = load i32, i32* %EDI
  %63 = zext i32 %62 to i64
  %64 = load i64, i64* %PC
  %65 = add i64 %64, 3
  store i64 %65, i64* %PC
  %66 = inttoptr i64 %61 to i32*
  store i32 %62, i32* %66
  %67 = load i64, i64* %RBP
  %68 = sub i64 %67, 16
  %69 = load i64, i64* %RSI
  %70 = load i64, i64* %PC
  %71 = add i64 %70, 4
  store i64 %71, i64* %PC
  %72 = inttoptr i64 %68 to i64*
  store i64 %69, i64* %72
  %73 = load i64, i64* %RBP
  %74 = sub i64 %73, 24
  %75 = load i64, i64* %RDX
  %76 = load i64, i64* %PC
  %77 = add i64 %76, 4
  store i64 %77, i64* %PC
  %78 = inttoptr i64 %74 to i64*
  store i64 %75, i64* %78
  %79 = load i64, i64* %RBP
  %80 = sub i64 %79, 32
  %81 = load i64, i64* %RCX
  %82 = load i64, i64* %PC
  %83 = add i64 %82, 4
  store i64 %83, i64* %PC
  %84 = inttoptr i64 %80 to i64*
  store i64 %81, i64* %84
  %85 = load i64, i64* %RBP
  %86 = sub i64 %85, 36
  %87 = bitcast %union.vec128_t* %XMM0 to i8*
  %88 = load i64, i64* %PC
  %89 = add i64 %88, 5
  store i64 %89, i64* %PC
  %90 = bitcast i8* %87 to <2 x float>*
  %91 = load <2 x float>, <2 x float>* %90, align 1
  %92 = extractelement <2 x float> %91, i32 0
  %93 = inttoptr i64 %86 to float*
  store float %92, float* %93
  %94 = load i64, i64* %RBP
  %95 = sub i64 %94, 4
  %96 = load i64, i64* %PC
  %97 = add i64 %96, 3
  store i64 %97, i64* %PC
  %98 = inttoptr i64 %95 to i32*
  %99 = load i32, i32* %98
  %100 = zext i32 %99 to i64
  store i64 %100, i64* %RDI, align 8, !tbaa !2428
  %101 = load i64, i64* %RBP
  %102 = sub i64 %101, 64
  %103 = load i32, i32* %EAX
  %104 = zext i32 %103 to i64
  %105 = load i64, i64* %PC
  %106 = add i64 %105, 3
  store i64 %106, i64* %PC
  %107 = inttoptr i64 %102 to i32*
  store i32 %103, i32* %107
  %108 = load i32, i32* %EDI
  %109 = zext i32 %108 to i64
  %110 = load i64, i64* %PC
  %111 = add i64 %110, 2
  store i64 %111, i64* %PC
  %112 = and i64 %109, 4294967295
  store i64 %112, i64* %RAX, align 8, !tbaa !2428
  %113 = load i64, i64* %PC
  %114 = add i64 %113, 1
  store i64 %114, i64* %PC
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %117 = bitcast %union.anon* %116 to i32*
  %118 = load i32, i32* %117, align 8, !tbaa !2432
  %119 = sext i32 %118 to i64
  %120 = lshr i64 %119, 32
  store i64 %120, i64* %115, align 8, !tbaa !2428
  %121 = load i64, i64* %RBP
  %122 = sub i64 %121, 64
  %123 = load i64, i64* %PC
  %124 = add i64 %123, 3
  store i64 %124, i64* %PC
  %125 = inttoptr i64 %122 to i32*
  %126 = load i32, i32* %125
  %127 = zext i32 %126 to i64
  store i64 %127, i64* %RDI, align 8, !tbaa !2428
  %128 = load i32, i32* %EDI
  %129 = zext i32 %128 to i64
  %130 = load i64, i64* %PC
  %131 = add i64 %130, 2
  store i64 %131, i64* %PC
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %133 = bitcast %union.anon* %132 to i32*
  %134 = load i32, i32* %133, align 8, !tbaa !2432
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %137 = bitcast %union.anon* %136 to i32*
  %138 = load i32, i32* %137, align 8, !tbaa !2432
  %139 = zext i32 %138 to i64
  %140 = shl i64 %129, 32
  %141 = ashr exact i64 %140, 32
  %142 = shl nuw i64 %139, 32
  %143 = or i64 %142, %135
  %144 = sdiv i64 %143, %141
  %145 = shl i64 %144, 32
  %146 = ashr exact i64 %145, 32
  %147 = icmp eq i64 %144, %146
  br i1 %147, label %152, label %148

; <label>:148:                                    ; preds = %block_400a30
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %150 = load i64, i64* %149, align 8, !tbaa !2428
  %151 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %150, %struct.Memory* %2) #16
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:152:                                    ; preds = %block_400a30
  %153 = srem i64 %143, %141
  %154 = getelementptr inbounds %union.anon, %union.anon* %132, i64 0, i32 0
  %155 = and i64 %144, 4294967295
  store i64 %155, i64* %154, align 8, !tbaa !2428
  %156 = getelementptr inbounds %union.anon, %union.anon* %136, i64 0, i32 0
  %157 = and i64 %153, 4294967295
  store i64 %157, i64* %156, align 8, !tbaa !2428
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %158, align 1, !tbaa !2434
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %159, align 1, !tbaa !2447
  %160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %160, align 1, !tbaa !2448
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %161, align 1, !tbaa !2449
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %162, align 1, !tbaa !2450
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %163, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %148, %152
  %164 = phi %struct.Memory* [ %151, %148 ], [ %2, %152 ]
  %165 = load i64, i64* %RBP
  %166 = sub i64 %165, 56
  %167 = load i32, i32* %EAX
  %168 = zext i32 %167 to i64
  %169 = load i64, i64* %PC
  %170 = add i64 %169, 3
  store i64 %170, i64* %PC
  %171 = inttoptr i64 %166 to i32*
  store i32 %167, i32* %171
  %172 = load i64, i64* %RBP
  %173 = sub i64 %172, 52
  %174 = load i64, i64* %PC
  %175 = add i64 %174, 7
  store i64 %175, i64* %PC
  %176 = inttoptr i64 %173 to i32*
  store i32 1, i32* %176
  br label %block_400a65

block_400bff:                                     ; preds = %block_400a7e
  %177 = load i64, i64* %RBP
  %178 = sub i64 %177, 44
  %179 = load i64, i64* %PC
  %180 = add i64 %179, 3
  store i64 %180, i64* %PC
  %181 = inttoptr i64 %178 to i32*
  %182 = load i32, i32* %181
  %183 = zext i32 %182 to i64
  store i64 %183, i64* %RAX, align 8, !tbaa !2428
  %184 = load i64, i64* %RBP
  %185 = sub i64 %184, 48
  %186 = load i32, i32* %EAX
  %187 = zext i32 %186 to i64
  %188 = load i64, i64* %PC
  %189 = add i64 %188, 3
  store i64 %189, i64* %PC
  %190 = inttoptr i64 %185 to i32*
  store i32 %186, i32* %190
  %191 = load i64, i64* %RBP
  %192 = sub i64 %191, 48
  %193 = load i64, i64* %PC
  %194 = add i64 %193, 3
  store i64 %194, i64* %PC
  %195 = inttoptr i64 %192 to i32*
  %196 = load i32, i32* %195
  %197 = zext i32 %196 to i64
  store i64 %197, i64* %RAX, align 8, !tbaa !2428
  %198 = load i64, i64* %RAX
  %199 = load i64, i64* %RBP
  %200 = sub i64 %199, 52
  %201 = load i64, i64* %PC
  %202 = add i64 %201, 3
  store i64 %202, i64* %PC
  %203 = trunc i64 %198 to i32
  %204 = inttoptr i64 %200 to i32*
  %205 = load i32, i32* %204
  %206 = add i32 %205, %203
  %207 = zext i32 %206 to i64
  store i64 %207, i64* %RAX, align 8, !tbaa !2428
  %208 = icmp ult i32 %206, %203
  %209 = icmp ult i32 %206, %205
  %210 = or i1 %208, %209
  %211 = zext i1 %210 to i8
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %211, i8* %212, align 1, !tbaa !2434
  %213 = and i32 %206, 255
  %214 = call i32 @llvm.ctpop.i32(i32 %213) #17
  %215 = trunc i32 %214 to i8
  %216 = and i8 %215, 1
  %217 = xor i8 %216, 1
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %217, i8* %218, align 1, !tbaa !2447
  %219 = xor i32 %205, %203
  %220 = xor i32 %219, %206
  %221 = lshr i32 %220, 4
  %222 = trunc i32 %221 to i8
  %223 = and i8 %222, 1
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %223, i8* %224, align 1, !tbaa !2448
  %225 = icmp eq i32 %206, 0
  %226 = zext i1 %225 to i8
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %226, i8* %227, align 1, !tbaa !2449
  %228 = lshr i32 %206, 31
  %229 = trunc i32 %228 to i8
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %229, i8* %230, align 1, !tbaa !2450
  %231 = lshr i32 %203, 31
  %232 = lshr i32 %205, 31
  %233 = xor i32 %228, %231
  %234 = xor i32 %228, %232
  %235 = add nuw nsw i32 %233, %234
  %236 = icmp eq i32 %235, 2
  %237 = zext i1 %236 to i8
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %237, i8* %238, align 1, !tbaa !2451
  %239 = load i64, i64* %RBP
  %240 = sub i64 %239, 44
  %241 = load i32, i32* %EAX
  %242 = zext i32 %241 to i64
  %243 = load i64, i64* %PC
  %244 = add i64 %243, 3
  store i64 %244, i64* %PC
  %245 = inttoptr i64 %240 to i32*
  store i32 %241, i32* %245
  %246 = load i64, i64* %RBP
  %247 = sub i64 %246, 44
  %248 = load i64, i64* %PC
  %249 = add i64 %248, 3
  store i64 %249, i64* %PC
  %250 = inttoptr i64 %247 to i32*
  %251 = load i32, i32* %250
  %252 = zext i32 %251 to i64
  store i64 %252, i64* %RAX, align 8, !tbaa !2428
  %253 = load i32, i32* %EAX
  %254 = zext i32 %253 to i64
  %255 = load i64, i64* %RBP
  %256 = sub i64 %255, 56
  %257 = load i64, i64* %PC
  %258 = add i64 %257, 3
  store i64 %258, i64* %PC
  %259 = inttoptr i64 %256 to i32*
  %260 = load i32, i32* %259
  %261 = sub i32 %253, %260
  %262 = icmp ult i32 %253, %260
  %263 = zext i1 %262 to i8
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %263, i8* %264, align 1, !tbaa !2434
  %265 = and i32 %261, 255
  %266 = call i32 @llvm.ctpop.i32(i32 %265) #17
  %267 = trunc i32 %266 to i8
  %268 = and i8 %267, 1
  %269 = xor i8 %268, 1
  %270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %269, i8* %270, align 1, !tbaa !2447
  %271 = xor i32 %260, %253
  %272 = xor i32 %271, %261
  %273 = lshr i32 %272, 4
  %274 = trunc i32 %273 to i8
  %275 = and i8 %274, 1
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %275, i8* %276, align 1, !tbaa !2448
  %277 = icmp eq i32 %261, 0
  %278 = zext i1 %277 to i8
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %278, i8* %279, align 1, !tbaa !2449
  %280 = lshr i32 %261, 31
  %281 = trunc i32 %280 to i8
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %281, i8* %282, align 1, !tbaa !2450
  %283 = lshr i32 %253, 31
  %284 = lshr i32 %260, 31
  %285 = xor i32 %284, %283
  %286 = xor i32 %280, %283
  %287 = add nuw nsw i32 %286, %285
  %288 = icmp eq i32 %287, 2
  %289 = zext i1 %288 to i8
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %289, i8* %290, align 1, !tbaa !2451
  %291 = load i64, i64* %PC
  %292 = sub i64 %291, 411
  %293 = load i64, i64* %PC
  %294 = add i64 %293, 6
  %295 = load i64, i64* %PC
  %296 = add i64 %295, 6
  store i64 %296, i64* %PC
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %298 = load i8, i8* %297, align 1, !tbaa !2449
  %299 = icmp ne i8 %298, 0
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %301 = load i8, i8* %300, align 1, !tbaa !2450
  %302 = icmp ne i8 %301, 0
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %304 = load i8, i8* %303, align 1, !tbaa !2451
  %305 = icmp ne i8 %304, 0
  %306 = xor i1 %302, %305
  %307 = or i1 %299, %306
  %308 = zext i1 %307 to i8
  store i8 %308, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %310 = select i1 %307, i64 %292, i64 %294
  store i64 %310, i64* %309, align 8, !tbaa !2428
  %311 = load i8, i8* %BRANCH_TAKEN
  %312 = icmp eq i8 %311, 1
  br i1 %312, label %block_400a79, label %block_400c1a

block_400a79:                                     ; preds = %block_400a65, %block_400bff
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.3, %block_400a65 ], [ %MEMORY.1, %block_400bff ]
  %313 = load i64, i64* %PC
  %314 = add i64 %313, 5
  %315 = load i64, i64* %PC
  %316 = add i64 %315, 5
  store i64 %316, i64* %PC
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %314, i64* %317, align 8, !tbaa !2428
  br label %block_400a7e

block_400c76:                                     ; preds = %block_400c6a
  %318 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %319 = load i64, i64* %RBP
  %320 = sub i64 %319, 36
  %321 = load i64, i64* %PC
  %322 = add i64 %321, 5
  store i64 %322, i64* %PC
  %323 = inttoptr i64 %320 to float*
  %324 = load float, float* %323
  %325 = bitcast i8* %318 to float*
  store float %324, float* %325, align 1, !tbaa !2453
  %326 = getelementptr inbounds i8, i8* %318, i64 4
  %327 = bitcast i8* %326 to float*
  store float 0.000000e+00, float* %327, align 1, !tbaa !2453
  %328 = getelementptr inbounds i8, i8* %318, i64 8
  %329 = bitcast i8* %328 to float*
  store float 0.000000e+00, float* %329, align 1, !tbaa !2453
  %330 = getelementptr inbounds i8, i8* %318, i64 12
  %331 = bitcast i8* %330 to float*
  store float 0.000000e+00, float* %331, align 1, !tbaa !2453
  %332 = load i64, i64* %RBP
  %333 = sub i64 %332, 16
  %334 = load i64, i64* %PC
  %335 = add i64 %334, 4
  store i64 %335, i64* %PC
  %336 = inttoptr i64 %333 to i64*
  %337 = load i64, i64* %336
  store i64 %337, i64* %RAX, align 8, !tbaa !2428
  %338 = load i64, i64* %RBP
  %339 = sub i64 %338, 40
  %340 = load i64, i64* %PC
  %341 = add i64 %340, 4
  store i64 %341, i64* %PC
  %342 = inttoptr i64 %339 to i32*
  %343 = load i32, i32* %342
  %344 = sext i32 %343 to i64
  store i64 %344, i64* %RCX, align 8, !tbaa !2428
  %345 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %346 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %347 = load i64, i64* %RAX
  %348 = load i64, i64* %RCX
  %349 = mul i64 %348, 8
  %350 = add i64 %349, %347
  %351 = load i64, i64* %PC
  %352 = add i64 %351, 5
  store i64 %352, i64* %PC
  %353 = bitcast i8* %346 to <2 x float>*
  %354 = load <2 x float>, <2 x float>* %353, align 1
  %355 = getelementptr inbounds i8, i8* %346, i64 8
  %356 = bitcast i8* %355 to <2 x i32>*
  %357 = load <2 x i32>, <2 x i32>* %356, align 1
  %358 = inttoptr i64 %350 to float*
  %359 = load float, float* %358
  %360 = extractelement <2 x float> %354, i32 0
  %361 = fmul float %360, %359
  %362 = bitcast i8* %345 to float*
  store float %361, float* %362, align 1, !tbaa !2453
  %363 = bitcast <2 x float> %354 to <2 x i32>
  %364 = extractelement <2 x i32> %363, i32 1
  %365 = getelementptr inbounds i8, i8* %345, i64 4
  %366 = bitcast i8* %365 to i32*
  store i32 %364, i32* %366, align 1, !tbaa !2453
  %367 = extractelement <2 x i32> %357, i32 0
  %368 = getelementptr inbounds i8, i8* %345, i64 8
  %369 = bitcast i8* %368 to i32*
  store i32 %367, i32* %369, align 1, !tbaa !2453
  %370 = extractelement <2 x i32> %357, i32 1
  %371 = getelementptr inbounds i8, i8* %345, i64 12
  %372 = bitcast i8* %371 to i32*
  store i32 %370, i32* %372, align 1, !tbaa !2453
  %373 = load i64, i64* %RBP
  %374 = sub i64 %373, 16
  %375 = load i64, i64* %PC
  %376 = add i64 %375, 4
  store i64 %376, i64* %PC
  %377 = inttoptr i64 %374 to i64*
  %378 = load i64, i64* %377
  store i64 %378, i64* %RAX, align 8, !tbaa !2428
  %379 = load i64, i64* %RBP
  %380 = sub i64 %379, 40
  %381 = load i64, i64* %PC
  %382 = add i64 %381, 4
  store i64 %382, i64* %PC
  %383 = inttoptr i64 %380 to i32*
  %384 = load i32, i32* %383
  %385 = sext i32 %384 to i64
  store i64 %385, i64* %RCX, align 8, !tbaa !2428
  %386 = load i64, i64* %RAX
  %387 = load i64, i64* %RCX
  %388 = mul i64 %387, 8
  %389 = add i64 %388, %386
  %390 = bitcast %union.vec128_t* %XMM0 to i8*
  %391 = load i64, i64* %PC
  %392 = add i64 %391, 5
  store i64 %392, i64* %PC
  %393 = bitcast i8* %390 to <2 x float>*
  %394 = load <2 x float>, <2 x float>* %393, align 1
  %395 = extractelement <2 x float> %394, i32 0
  %396 = inttoptr i64 %389 to float*
  store float %395, float* %396
  %397 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %398 = load i64, i64* %RBP
  %399 = sub i64 %398, 36
  %400 = load i64, i64* %PC
  %401 = add i64 %400, 5
  store i64 %401, i64* %PC
  %402 = inttoptr i64 %399 to float*
  %403 = load float, float* %402
  %404 = bitcast i8* %397 to float*
  store float %403, float* %404, align 1, !tbaa !2453
  %405 = getelementptr inbounds i8, i8* %397, i64 4
  %406 = bitcast i8* %405 to float*
  store float 0.000000e+00, float* %406, align 1, !tbaa !2453
  %407 = getelementptr inbounds i8, i8* %397, i64 8
  %408 = bitcast i8* %407 to float*
  store float 0.000000e+00, float* %408, align 1, !tbaa !2453
  %409 = getelementptr inbounds i8, i8* %397, i64 12
  %410 = bitcast i8* %409 to float*
  store float 0.000000e+00, float* %410, align 1, !tbaa !2453
  %411 = bitcast %union.vec128_t* %XMM0 to i8*
  %412 = load i64, i64* %PC
  %413 = add i64 %412, 4
  store i64 %413, i64* %PC
  %414 = bitcast i8* %411 to i64*
  %415 = load i64, i64* %414, align 1
  %416 = trunc i64 %415 to i32
  %417 = bitcast i64* %RDX to [2 x i32]*
  %418 = bitcast i64* %RDX to i32*
  store i32 %416, i32* %418, align 1, !tbaa !2432
  %419 = getelementptr inbounds [2 x i32], [2 x i32]* %417, i64 0, i64 1
  store i32 0, i32* %419, align 1, !tbaa !2432
  %420 = load i64, i64* %RDX
  %421 = load i64, i64* %PC
  %422 = add i64 %421, 6
  store i64 %422, i64* %PC
  %423 = xor i64 -2147483648, %420
  %424 = trunc i64 %423 to i32
  %425 = and i64 %423, 4294967295
  store i64 %425, i64* %RDX, align 8, !tbaa !2428
  %426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %426, align 1, !tbaa !2434
  %427 = and i32 %424, 255
  %428 = call i32 @llvm.ctpop.i32(i32 %427) #17
  %429 = trunc i32 %428 to i8
  %430 = and i8 %429, 1
  %431 = xor i8 %430, 1
  %432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %431, i8* %432, align 1, !tbaa !2447
  %433 = icmp eq i32 %424, 0
  %434 = zext i1 %433 to i8
  %435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %434, i8* %435, align 1, !tbaa !2449
  %436 = lshr i32 %424, 31
  %437 = trunc i32 %436 to i8
  %438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %437, i8* %438, align 1, !tbaa !2450
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %439, align 1, !tbaa !2451
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %440, align 1, !tbaa !2448
  %441 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %442 = load i32, i32* %EDX
  %443 = zext i32 %442 to i64
  %444 = load i64, i64* %PC
  %445 = add i64 %444, 4
  store i64 %445, i64* %PC
  %446 = bitcast i8* %441 to i32*
  store i32 %442, i32* %446, align 1, !tbaa !2432
  %447 = getelementptr inbounds i8, i8* %441, i64 4
  %448 = bitcast i8* %447 to i32*
  store i32 0, i32* %448, align 1, !tbaa !2432
  %449 = getelementptr inbounds i8, i8* %441, i64 8
  %450 = bitcast i8* %449 to i32*
  store i32 0, i32* %450, align 1, !tbaa !2432
  %451 = getelementptr inbounds i8, i8* %441, i64 12
  %452 = bitcast i8* %451 to i32*
  store i32 0, i32* %452, align 1, !tbaa !2432
  %453 = load i64, i64* %RBP
  %454 = sub i64 %453, 16
  %455 = load i64, i64* %PC
  %456 = add i64 %455, 4
  store i64 %456, i64* %PC
  %457 = inttoptr i64 %454 to i64*
  %458 = load i64, i64* %457
  store i64 %458, i64* %RAX, align 8, !tbaa !2428
  %459 = load i64, i64* %RBP
  %460 = sub i64 %459, 40
  %461 = load i64, i64* %PC
  %462 = add i64 %461, 4
  store i64 %462, i64* %PC
  %463 = inttoptr i64 %460 to i32*
  %464 = load i32, i32* %463
  %465 = sext i32 %464 to i64
  store i64 %465, i64* %RCX, align 8, !tbaa !2428
  %466 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %467 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %468 = load i64, i64* %RAX
  %469 = load i64, i64* %RCX
  %470 = mul i64 %469, 8
  %471 = add i64 %468, 4
  %472 = add i64 %471, %470
  %473 = load i64, i64* %PC
  %474 = add i64 %473, 6
  store i64 %474, i64* %PC
  %475 = bitcast i8* %467 to <2 x float>*
  %476 = load <2 x float>, <2 x float>* %475, align 1
  %477 = getelementptr inbounds i8, i8* %467, i64 8
  %478 = bitcast i8* %477 to <2 x i32>*
  %479 = load <2 x i32>, <2 x i32>* %478, align 1
  %480 = inttoptr i64 %472 to float*
  %481 = load float, float* %480
  %482 = extractelement <2 x float> %476, i32 0
  %483 = fmul float %482, %481
  %484 = bitcast i8* %466 to float*
  store float %483, float* %484, align 1, !tbaa !2453
  %485 = bitcast <2 x float> %476 to <2 x i32>
  %486 = extractelement <2 x i32> %485, i32 1
  %487 = getelementptr inbounds i8, i8* %466, i64 4
  %488 = bitcast i8* %487 to i32*
  store i32 %486, i32* %488, align 1, !tbaa !2453
  %489 = extractelement <2 x i32> %479, i32 0
  %490 = getelementptr inbounds i8, i8* %466, i64 8
  %491 = bitcast i8* %490 to i32*
  store i32 %489, i32* %491, align 1, !tbaa !2453
  %492 = extractelement <2 x i32> %479, i32 1
  %493 = getelementptr inbounds i8, i8* %466, i64 12
  %494 = bitcast i8* %493 to i32*
  store i32 %492, i32* %494, align 1, !tbaa !2453
  %495 = load i64, i64* %RBP
  %496 = sub i64 %495, 16
  %497 = load i64, i64* %PC
  %498 = add i64 %497, 4
  store i64 %498, i64* %PC
  %499 = inttoptr i64 %496 to i64*
  %500 = load i64, i64* %499
  store i64 %500, i64* %RAX, align 8, !tbaa !2428
  %501 = load i64, i64* %RBP
  %502 = sub i64 %501, 40
  %503 = load i64, i64* %PC
  %504 = add i64 %503, 4
  store i64 %504, i64* %PC
  %505 = inttoptr i64 %502 to i32*
  %506 = load i32, i32* %505
  %507 = sext i32 %506 to i64
  store i64 %507, i64* %RCX, align 8, !tbaa !2428
  %508 = load i64, i64* %RAX
  %509 = load i64, i64* %RCX
  %510 = mul i64 %509, 8
  %511 = add i64 %508, 4
  %512 = add i64 %511, %510
  %513 = bitcast %union.vec128_t* %XMM0 to i8*
  %514 = load i64, i64* %PC
  %515 = add i64 %514, 6
  store i64 %515, i64* %PC
  %516 = bitcast i8* %513 to <2 x float>*
  %517 = load <2 x float>, <2 x float>* %516, align 1
  %518 = extractelement <2 x float> %517, i32 0
  %519 = inttoptr i64 %512 to float*
  store float %518, float* %519
  %520 = load i64, i64* %RBP
  %521 = sub i64 %520, 40
  %522 = load i64, i64* %PC
  %523 = add i64 %522, 3
  store i64 %523, i64* %PC
  %524 = inttoptr i64 %521 to i32*
  %525 = load i32, i32* %524
  %526 = zext i32 %525 to i64
  store i64 %526, i64* %RAX, align 8, !tbaa !2428
  %527 = load i64, i64* %RAX
  %528 = load i64, i64* %PC
  %529 = add i64 %528, 3
  store i64 %529, i64* %PC
  %530 = trunc i64 %527 to i32
  %531 = add i32 1, %530
  %532 = zext i32 %531 to i64
  store i64 %532, i64* %RAX, align 8, !tbaa !2428
  %533 = icmp ult i32 %531, %530
  %534 = icmp ult i32 %531, 1
  %535 = or i1 %533, %534
  %536 = zext i1 %535 to i8
  %537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %536, i8* %537, align 1, !tbaa !2434
  %538 = and i32 %531, 255
  %539 = call i32 @llvm.ctpop.i32(i32 %538) #17
  %540 = trunc i32 %539 to i8
  %541 = and i8 %540, 1
  %542 = xor i8 %541, 1
  %543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %542, i8* %543, align 1, !tbaa !2447
  %544 = xor i64 1, %527
  %545 = trunc i64 %544 to i32
  %546 = xor i32 %545, %531
  %547 = lshr i32 %546, 4
  %548 = trunc i32 %547 to i8
  %549 = and i8 %548, 1
  %550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %549, i8* %550, align 1, !tbaa !2448
  %551 = icmp eq i32 %531, 0
  %552 = zext i1 %551 to i8
  %553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %552, i8* %553, align 1, !tbaa !2449
  %554 = lshr i32 %531, 31
  %555 = trunc i32 %554 to i8
  %556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %555, i8* %556, align 1, !tbaa !2450
  %557 = lshr i32 %530, 31
  %558 = xor i32 %554, %557
  %559 = add nuw nsw i32 %558, %554
  %560 = icmp eq i32 %559, 2
  %561 = zext i1 %560 to i8
  %562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %561, i8* %562, align 1, !tbaa !2451
  %563 = load i64, i64* %RBP
  %564 = sub i64 %563, 40
  %565 = load i32, i32* %EAX
  %566 = zext i32 %565 to i64
  %567 = load i64, i64* %PC
  %568 = add i64 %567, 3
  store i64 %568, i64* %PC
  %569 = inttoptr i64 %564 to i32*
  store i32 %565, i32* %569
  %570 = load i64, i64* %PC
  %571 = sub i64 %570, 99
  %572 = load i64, i64* %PC
  %573 = add i64 %572, 5
  store i64 %573, i64* %PC
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %571, i64* %574, align 8, !tbaa !2428
  br label %block_400c6a

block_400a7e:                                     ; preds = %block_400a7e, %block_400a79
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_400a79 ], [ %MEMORY.1, %block_400a7e ]
  %575 = load i64, i64* %RBP
  %576 = sub i64 %575, 16
  %577 = load i64, i64* %PC
  %578 = add i64 %577, 4
  store i64 %578, i64* %PC
  %579 = inttoptr i64 %576 to i64*
  %580 = load i64, i64* %579
  store i64 %580, i64* %RAX, align 8, !tbaa !2428
  %581 = load i64, i64* %RBP
  %582 = sub i64 %581, 40
  %583 = load i64, i64* %PC
  %584 = add i64 %583, 4
  store i64 %584, i64* %PC
  %585 = inttoptr i64 %582 to i32*
  %586 = load i32, i32* %585
  %587 = sext i32 %586 to i64
  store i64 %587, i64* %RCX, align 8, !tbaa !2428
  %588 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %589 = load i64, i64* %RAX
  %590 = load i64, i64* %RCX
  %591 = mul i64 %590, 8
  %592 = add i64 %591, %589
  %593 = load i64, i64* %PC
  %594 = add i64 %593, 5
  store i64 %594, i64* %PC
  %595 = inttoptr i64 %592 to float*
  %596 = load float, float* %595
  %597 = bitcast i8* %588 to float*
  store float %596, float* %597, align 1, !tbaa !2453
  %598 = getelementptr inbounds i8, i8* %588, i64 4
  %599 = bitcast i8* %598 to float*
  store float 0.000000e+00, float* %599, align 1, !tbaa !2453
  %600 = getelementptr inbounds i8, i8* %588, i64 8
  %601 = bitcast i8* %600 to float*
  store float 0.000000e+00, float* %601, align 1, !tbaa !2453
  %602 = getelementptr inbounds i8, i8* %588, i64 12
  %603 = bitcast i8* %602 to float*
  store float 0.000000e+00, float* %603, align 1, !tbaa !2453
  %604 = load i64, i64* %RBP
  %605 = sub i64 %604, 16
  %606 = load i64, i64* %PC
  %607 = add i64 %606, 4
  store i64 %607, i64* %PC
  %608 = inttoptr i64 %605 to i64*
  %609 = load i64, i64* %608
  store i64 %609, i64* %RAX, align 8, !tbaa !2428
  %610 = load i64, i64* %RBP
  %611 = sub i64 %610, 56
  %612 = load i64, i64* %PC
  %613 = add i64 %612, 3
  store i64 %613, i64* %PC
  %614 = inttoptr i64 %611 to i32*
  %615 = load i32, i32* %614
  %616 = zext i32 %615 to i64
  store i64 %616, i64* %RDX, align 8, !tbaa !2428
  %617 = load i64, i64* %RDX
  %618 = load i64, i64* %RBP
  %619 = sub i64 %618, 40
  %620 = load i64, i64* %PC
  %621 = add i64 %620, 3
  store i64 %621, i64* %PC
  %622 = trunc i64 %617 to i32
  %623 = inttoptr i64 %619 to i32*
  %624 = load i32, i32* %623
  %625 = add i32 %624, %622
  %626 = zext i32 %625 to i64
  store i64 %626, i64* %RDX, align 8, !tbaa !2428
  %627 = icmp ult i32 %625, %622
  %628 = icmp ult i32 %625, %624
  %629 = or i1 %627, %628
  %630 = zext i1 %629 to i8
  %631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %630, i8* %631, align 1, !tbaa !2434
  %632 = and i32 %625, 255
  %633 = call i32 @llvm.ctpop.i32(i32 %632) #17
  %634 = trunc i32 %633 to i8
  %635 = and i8 %634, 1
  %636 = xor i8 %635, 1
  %637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %636, i8* %637, align 1, !tbaa !2447
  %638 = xor i32 %624, %622
  %639 = xor i32 %638, %625
  %640 = lshr i32 %639, 4
  %641 = trunc i32 %640 to i8
  %642 = and i8 %641, 1
  %643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %642, i8* %643, align 1, !tbaa !2448
  %644 = icmp eq i32 %625, 0
  %645 = zext i1 %644 to i8
  %646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %645, i8* %646, align 1, !tbaa !2449
  %647 = lshr i32 %625, 31
  %648 = trunc i32 %647 to i8
  %649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %648, i8* %649, align 1, !tbaa !2450
  %650 = lshr i32 %622, 31
  %651 = lshr i32 %624, 31
  %652 = xor i32 %647, %650
  %653 = xor i32 %647, %651
  %654 = add nuw nsw i32 %652, %653
  %655 = icmp eq i32 %654, 2
  %656 = zext i1 %655 to i8
  %657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %656, i8* %657, align 1, !tbaa !2451
  %658 = load i32, i32* %EDX
  %659 = zext i32 %658 to i64
  %660 = load i64, i64* %PC
  %661 = add i64 %660, 3
  store i64 %661, i64* %PC
  %662 = shl i64 %659, 32
  %663 = ashr exact i64 %662, 32
  store i64 %663, i64* %RCX, align 8, !tbaa !2428
  %664 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %665 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %666 = load i64, i64* %RAX
  %667 = load i64, i64* %RCX
  %668 = mul i64 %667, 8
  %669 = add i64 %668, %666
  %670 = load i64, i64* %PC
  %671 = add i64 %670, 5
  store i64 %671, i64* %PC
  %672 = bitcast i8* %665 to <2 x float>*
  %673 = load <2 x float>, <2 x float>* %672, align 1
  %674 = getelementptr inbounds i8, i8* %665, i64 8
  %675 = bitcast i8* %674 to <2 x i32>*
  %676 = load <2 x i32>, <2 x i32>* %675, align 1
  %677 = inttoptr i64 %669 to float*
  %678 = load float, float* %677
  %679 = extractelement <2 x float> %673, i32 0
  %680 = fadd float %679, %678
  %681 = bitcast i8* %664 to float*
  store float %680, float* %681, align 1, !tbaa !2453
  %682 = bitcast <2 x float> %673 to <2 x i32>
  %683 = extractelement <2 x i32> %682, i32 1
  %684 = getelementptr inbounds i8, i8* %664, i64 4
  %685 = bitcast i8* %684 to i32*
  store i32 %683, i32* %685, align 1, !tbaa !2453
  %686 = extractelement <2 x i32> %676, i32 0
  %687 = getelementptr inbounds i8, i8* %664, i64 8
  %688 = bitcast i8* %687 to i32*
  store i32 %686, i32* %688, align 1, !tbaa !2453
  %689 = extractelement <2 x i32> %676, i32 1
  %690 = getelementptr inbounds i8, i8* %664, i64 12
  %691 = bitcast i8* %690 to i32*
  store i32 %689, i32* %691, align 1, !tbaa !2453
  %692 = load i64, i64* %RBP
  %693 = sub i64 %692, 24
  %694 = load i64, i64* %PC
  %695 = add i64 %694, 4
  store i64 %695, i64* %PC
  %696 = inttoptr i64 %693 to i64*
  %697 = load i64, i64* %696
  store i64 %697, i64* %RAX, align 8, !tbaa !2428
  %698 = load i64, i64* %RBP
  %699 = sub i64 %698, 40
  %700 = load i64, i64* %PC
  %701 = add i64 %700, 3
  store i64 %701, i64* %PC
  %702 = inttoptr i64 %699 to i32*
  %703 = load i32, i32* %702
  %704 = zext i32 %703 to i64
  store i64 %704, i64* %RDX, align 8, !tbaa !2428
  %705 = load i64, i64* %RDX
  %706 = load i64, i64* %RBP
  %707 = sub i64 %706, 48
  %708 = load i64, i64* %PC
  %709 = add i64 %708, 3
  store i64 %709, i64* %PC
  %710 = trunc i64 %705 to i32
  %711 = inttoptr i64 %707 to i32*
  %712 = load i32, i32* %711
  %713 = add i32 %712, %710
  %714 = zext i32 %713 to i64
  store i64 %714, i64* %RDX, align 8, !tbaa !2428
  %715 = icmp ult i32 %713, %710
  %716 = icmp ult i32 %713, %712
  %717 = or i1 %715, %716
  %718 = zext i1 %717 to i8
  %719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %718, i8* %719, align 1, !tbaa !2434
  %720 = and i32 %713, 255
  %721 = call i32 @llvm.ctpop.i32(i32 %720) #17
  %722 = trunc i32 %721 to i8
  %723 = and i8 %722, 1
  %724 = xor i8 %723, 1
  %725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %724, i8* %725, align 1, !tbaa !2447
  %726 = xor i32 %712, %710
  %727 = xor i32 %726, %713
  %728 = lshr i32 %727, 4
  %729 = trunc i32 %728 to i8
  %730 = and i8 %729, 1
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %730, i8* %731, align 1, !tbaa !2448
  %732 = icmp eq i32 %713, 0
  %733 = zext i1 %732 to i8
  %734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %733, i8* %734, align 1, !tbaa !2449
  %735 = lshr i32 %713, 31
  %736 = trunc i32 %735 to i8
  %737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %736, i8* %737, align 1, !tbaa !2450
  %738 = lshr i32 %710, 31
  %739 = lshr i32 %712, 31
  %740 = xor i32 %735, %738
  %741 = xor i32 %735, %739
  %742 = add nuw nsw i32 %740, %741
  %743 = icmp eq i32 %742, 2
  %744 = zext i1 %743 to i8
  %745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %744, i8* %745, align 1, !tbaa !2451
  %746 = load i32, i32* %EDX
  %747 = zext i32 %746 to i64
  %748 = load i64, i64* %PC
  %749 = add i64 %748, 3
  store i64 %749, i64* %PC
  %750 = shl i64 %747, 32
  %751 = ashr exact i64 %750, 32
  store i64 %751, i64* %RCX, align 8, !tbaa !2428
  %752 = load i64, i64* %RAX
  %753 = load i64, i64* %RCX
  %754 = mul i64 %753, 8
  %755 = add i64 %754, %752
  %756 = bitcast %union.vec128_t* %XMM0 to i8*
  %757 = load i64, i64* %PC
  %758 = add i64 %757, 5
  store i64 %758, i64* %PC
  %759 = bitcast i8* %756 to <2 x float>*
  %760 = load <2 x float>, <2 x float>* %759, align 1
  %761 = extractelement <2 x float> %760, i32 0
  %762 = inttoptr i64 %755 to float*
  store float %761, float* %762
  %763 = load i64, i64* %RBP
  %764 = sub i64 %763, 16
  %765 = load i64, i64* %PC
  %766 = add i64 %765, 4
  store i64 %766, i64* %PC
  %767 = inttoptr i64 %764 to i64*
  %768 = load i64, i64* %767
  store i64 %768, i64* %RAX, align 8, !tbaa !2428
  %769 = load i64, i64* %RBP
  %770 = sub i64 %769, 40
  %771 = load i64, i64* %PC
  %772 = add i64 %771, 4
  store i64 %772, i64* %PC
  %773 = inttoptr i64 %770 to i32*
  %774 = load i32, i32* %773
  %775 = sext i32 %774 to i64
  store i64 %775, i64* %RCX, align 8, !tbaa !2428
  %776 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %777 = load i64, i64* %RAX
  %778 = load i64, i64* %RCX
  %779 = mul i64 %778, 8
  %780 = add i64 %777, 4
  %781 = add i64 %780, %779
  %782 = load i64, i64* %PC
  %783 = add i64 %782, 6
  store i64 %783, i64* %PC
  %784 = inttoptr i64 %781 to float*
  %785 = load float, float* %784
  %786 = bitcast i8* %776 to float*
  store float %785, float* %786, align 1, !tbaa !2453
  %787 = getelementptr inbounds i8, i8* %776, i64 4
  %788 = bitcast i8* %787 to float*
  store float 0.000000e+00, float* %788, align 1, !tbaa !2453
  %789 = getelementptr inbounds i8, i8* %776, i64 8
  %790 = bitcast i8* %789 to float*
  store float 0.000000e+00, float* %790, align 1, !tbaa !2453
  %791 = getelementptr inbounds i8, i8* %776, i64 12
  %792 = bitcast i8* %791 to float*
  store float 0.000000e+00, float* %792, align 1, !tbaa !2453
  %793 = load i64, i64* %RBP
  %794 = sub i64 %793, 16
  %795 = load i64, i64* %PC
  %796 = add i64 %795, 4
  store i64 %796, i64* %PC
  %797 = inttoptr i64 %794 to i64*
  %798 = load i64, i64* %797
  store i64 %798, i64* %RAX, align 8, !tbaa !2428
  %799 = load i64, i64* %RBP
  %800 = sub i64 %799, 56
  %801 = load i64, i64* %PC
  %802 = add i64 %801, 3
  store i64 %802, i64* %PC
  %803 = inttoptr i64 %800 to i32*
  %804 = load i32, i32* %803
  %805 = zext i32 %804 to i64
  store i64 %805, i64* %RDX, align 8, !tbaa !2428
  %806 = load i64, i64* %RDX
  %807 = load i64, i64* %RBP
  %808 = sub i64 %807, 40
  %809 = load i64, i64* %PC
  %810 = add i64 %809, 3
  store i64 %810, i64* %PC
  %811 = trunc i64 %806 to i32
  %812 = inttoptr i64 %808 to i32*
  %813 = load i32, i32* %812
  %814 = add i32 %813, %811
  %815 = zext i32 %814 to i64
  store i64 %815, i64* %RDX, align 8, !tbaa !2428
  %816 = icmp ult i32 %814, %811
  %817 = icmp ult i32 %814, %813
  %818 = or i1 %816, %817
  %819 = zext i1 %818 to i8
  %820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %819, i8* %820, align 1, !tbaa !2434
  %821 = and i32 %814, 255
  %822 = call i32 @llvm.ctpop.i32(i32 %821) #17
  %823 = trunc i32 %822 to i8
  %824 = and i8 %823, 1
  %825 = xor i8 %824, 1
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %825, i8* %826, align 1, !tbaa !2447
  %827 = xor i32 %813, %811
  %828 = xor i32 %827, %814
  %829 = lshr i32 %828, 4
  %830 = trunc i32 %829 to i8
  %831 = and i8 %830, 1
  %832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %831, i8* %832, align 1, !tbaa !2448
  %833 = icmp eq i32 %814, 0
  %834 = zext i1 %833 to i8
  %835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %834, i8* %835, align 1, !tbaa !2449
  %836 = lshr i32 %814, 31
  %837 = trunc i32 %836 to i8
  %838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %837, i8* %838, align 1, !tbaa !2450
  %839 = lshr i32 %811, 31
  %840 = lshr i32 %813, 31
  %841 = xor i32 %836, %839
  %842 = xor i32 %836, %840
  %843 = add nuw nsw i32 %841, %842
  %844 = icmp eq i32 %843, 2
  %845 = zext i1 %844 to i8
  %846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %845, i8* %846, align 1, !tbaa !2451
  %847 = load i32, i32* %EDX
  %848 = zext i32 %847 to i64
  %849 = load i64, i64* %PC
  %850 = add i64 %849, 3
  store i64 %850, i64* %PC
  %851 = shl i64 %848, 32
  %852 = ashr exact i64 %851, 32
  store i64 %852, i64* %RCX, align 8, !tbaa !2428
  %853 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %854 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %855 = load i64, i64* %RAX
  %856 = load i64, i64* %RCX
  %857 = mul i64 %856, 8
  %858 = add i64 %855, 4
  %859 = add i64 %858, %857
  %860 = load i64, i64* %PC
  %861 = add i64 %860, 6
  store i64 %861, i64* %PC
  %862 = bitcast i8* %854 to <2 x float>*
  %863 = load <2 x float>, <2 x float>* %862, align 1
  %864 = getelementptr inbounds i8, i8* %854, i64 8
  %865 = bitcast i8* %864 to <2 x i32>*
  %866 = load <2 x i32>, <2 x i32>* %865, align 1
  %867 = inttoptr i64 %859 to float*
  %868 = load float, float* %867
  %869 = extractelement <2 x float> %863, i32 0
  %870 = fadd float %869, %868
  %871 = bitcast i8* %853 to float*
  store float %870, float* %871, align 1, !tbaa !2453
  %872 = bitcast <2 x float> %863 to <2 x i32>
  %873 = extractelement <2 x i32> %872, i32 1
  %874 = getelementptr inbounds i8, i8* %853, i64 4
  %875 = bitcast i8* %874 to i32*
  store i32 %873, i32* %875, align 1, !tbaa !2453
  %876 = extractelement <2 x i32> %866, i32 0
  %877 = getelementptr inbounds i8, i8* %853, i64 8
  %878 = bitcast i8* %877 to i32*
  store i32 %876, i32* %878, align 1, !tbaa !2453
  %879 = extractelement <2 x i32> %866, i32 1
  %880 = getelementptr inbounds i8, i8* %853, i64 12
  %881 = bitcast i8* %880 to i32*
  store i32 %879, i32* %881, align 1, !tbaa !2453
  %882 = load i64, i64* %RBP
  %883 = sub i64 %882, 24
  %884 = load i64, i64* %PC
  %885 = add i64 %884, 4
  store i64 %885, i64* %PC
  %886 = inttoptr i64 %883 to i64*
  %887 = load i64, i64* %886
  store i64 %887, i64* %RAX, align 8, !tbaa !2428
  %888 = load i64, i64* %RBP
  %889 = sub i64 %888, 40
  %890 = load i64, i64* %PC
  %891 = add i64 %890, 3
  store i64 %891, i64* %PC
  %892 = inttoptr i64 %889 to i32*
  %893 = load i32, i32* %892
  %894 = zext i32 %893 to i64
  store i64 %894, i64* %RDX, align 8, !tbaa !2428
  %895 = load i64, i64* %RDX
  %896 = load i64, i64* %RBP
  %897 = sub i64 %896, 48
  %898 = load i64, i64* %PC
  %899 = add i64 %898, 3
  store i64 %899, i64* %PC
  %900 = trunc i64 %895 to i32
  %901 = inttoptr i64 %897 to i32*
  %902 = load i32, i32* %901
  %903 = add i32 %902, %900
  %904 = zext i32 %903 to i64
  store i64 %904, i64* %RDX, align 8, !tbaa !2428
  %905 = icmp ult i32 %903, %900
  %906 = icmp ult i32 %903, %902
  %907 = or i1 %905, %906
  %908 = zext i1 %907 to i8
  %909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %908, i8* %909, align 1, !tbaa !2434
  %910 = and i32 %903, 255
  %911 = call i32 @llvm.ctpop.i32(i32 %910) #17
  %912 = trunc i32 %911 to i8
  %913 = and i8 %912, 1
  %914 = xor i8 %913, 1
  %915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %914, i8* %915, align 1, !tbaa !2447
  %916 = xor i32 %902, %900
  %917 = xor i32 %916, %903
  %918 = lshr i32 %917, 4
  %919 = trunc i32 %918 to i8
  %920 = and i8 %919, 1
  %921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %920, i8* %921, align 1, !tbaa !2448
  %922 = icmp eq i32 %903, 0
  %923 = zext i1 %922 to i8
  %924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %923, i8* %924, align 1, !tbaa !2449
  %925 = lshr i32 %903, 31
  %926 = trunc i32 %925 to i8
  %927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %926, i8* %927, align 1, !tbaa !2450
  %928 = lshr i32 %900, 31
  %929 = lshr i32 %902, 31
  %930 = xor i32 %925, %928
  %931 = xor i32 %925, %929
  %932 = add nuw nsw i32 %930, %931
  %933 = icmp eq i32 %932, 2
  %934 = zext i1 %933 to i8
  %935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %934, i8* %935, align 1, !tbaa !2451
  %936 = load i32, i32* %EDX
  %937 = zext i32 %936 to i64
  %938 = load i64, i64* %PC
  %939 = add i64 %938, 3
  store i64 %939, i64* %PC
  %940 = shl i64 %937, 32
  %941 = ashr exact i64 %940, 32
  store i64 %941, i64* %RCX, align 8, !tbaa !2428
  %942 = load i64, i64* %RAX
  %943 = load i64, i64* %RCX
  %944 = mul i64 %943, 8
  %945 = add i64 %942, 4
  %946 = add i64 %945, %944
  %947 = bitcast %union.vec128_t* %XMM0 to i8*
  %948 = load i64, i64* %PC
  %949 = add i64 %948, 6
  store i64 %949, i64* %PC
  %950 = bitcast i8* %947 to <2 x float>*
  %951 = load <2 x float>, <2 x float>* %950, align 1
  %952 = extractelement <2 x float> %951, i32 0
  %953 = inttoptr i64 %946 to float*
  store float %952, float* %953
  %954 = load i64, i64* %RBP
  %955 = sub i64 %954, 32
  %956 = load i64, i64* %PC
  %957 = add i64 %956, 4
  store i64 %957, i64* %PC
  %958 = inttoptr i64 %955 to i64*
  %959 = load i64, i64* %958
  store i64 %959, i64* %RAX, align 8, !tbaa !2428
  %960 = load i64, i64* %RBP
  %961 = sub i64 %960, 48
  %962 = load i64, i64* %PC
  %963 = add i64 %962, 3
  store i64 %963, i64* %PC
  %964 = inttoptr i64 %961 to i32*
  %965 = load i32, i32* %964
  %966 = zext i32 %965 to i64
  store i64 %966, i64* %RDX, align 8, !tbaa !2428
  %967 = load i64, i64* %RDX
  %968 = load i64, i64* %PC
  %969 = add i64 %968, 3
  store i64 %969, i64* %PC
  %970 = trunc i64 %967 to i32
  %971 = add i32 1, %970
  %972 = zext i32 %971 to i64
  store i64 %972, i64* %RDX, align 8, !tbaa !2428
  %973 = icmp ult i32 %971, %970
  %974 = icmp ult i32 %971, 1
  %975 = or i1 %973, %974
  %976 = zext i1 %975 to i8
  %977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %976, i8* %977, align 1, !tbaa !2434
  %978 = and i32 %971, 255
  %979 = call i32 @llvm.ctpop.i32(i32 %978) #17
  %980 = trunc i32 %979 to i8
  %981 = and i8 %980, 1
  %982 = xor i8 %981, 1
  %983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %982, i8* %983, align 1, !tbaa !2447
  %984 = xor i64 1, %967
  %985 = trunc i64 %984 to i32
  %986 = xor i32 %985, %971
  %987 = lshr i32 %986, 4
  %988 = trunc i32 %987 to i8
  %989 = and i8 %988, 1
  %990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %989, i8* %990, align 1, !tbaa !2448
  %991 = icmp eq i32 %971, 0
  %992 = zext i1 %991 to i8
  %993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %992, i8* %993, align 1, !tbaa !2449
  %994 = lshr i32 %971, 31
  %995 = trunc i32 %994 to i8
  %996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %995, i8* %996, align 1, !tbaa !2450
  %997 = lshr i32 %970, 31
  %998 = xor i32 %994, %997
  %999 = add nuw nsw i32 %998, %994
  %1000 = icmp eq i32 %999, 2
  %1001 = zext i1 %1000 to i8
  %1002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1001, i8* %1002, align 1, !tbaa !2451
  %1003 = load i32, i32* %EDX
  %1004 = zext i32 %1003 to i64
  %1005 = load i64, i64* %PC
  %1006 = add i64 %1005, 3
  store i64 %1006, i64* %PC
  %1007 = shl i64 %1004, 32
  %1008 = ashr exact i64 %1007, 32
  store i64 %1008, i64* %RCX, align 8, !tbaa !2428
  %1009 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1010 = load i64, i64* %RAX
  %1011 = load i64, i64* %RCX
  %1012 = mul i64 %1011, 8
  %1013 = add i64 %1012, %1010
  %1014 = load i64, i64* %PC
  %1015 = add i64 %1014, 5
  store i64 %1015, i64* %PC
  %1016 = inttoptr i64 %1013 to float*
  %1017 = load float, float* %1016
  %1018 = bitcast i8* %1009 to float*
  store float %1017, float* %1018, align 1, !tbaa !2453
  %1019 = getelementptr inbounds i8, i8* %1009, i64 4
  %1020 = bitcast i8* %1019 to float*
  store float 0.000000e+00, float* %1020, align 1, !tbaa !2453
  %1021 = getelementptr inbounds i8, i8* %1009, i64 8
  %1022 = bitcast i8* %1021 to float*
  store float 0.000000e+00, float* %1022, align 1, !tbaa !2453
  %1023 = getelementptr inbounds i8, i8* %1009, i64 12
  %1024 = bitcast i8* %1023 to float*
  store float 0.000000e+00, float* %1024, align 1, !tbaa !2453
  %1025 = load i64, i64* %RBP
  %1026 = sub i64 %1025, 16
  %1027 = load i64, i64* %PC
  %1028 = add i64 %1027, 4
  store i64 %1028, i64* %PC
  %1029 = inttoptr i64 %1026 to i64*
  %1030 = load i64, i64* %1029
  store i64 %1030, i64* %RAX, align 8, !tbaa !2428
  %1031 = load i64, i64* %RBP
  %1032 = sub i64 %1031, 40
  %1033 = load i64, i64* %PC
  %1034 = add i64 %1033, 4
  store i64 %1034, i64* %PC
  %1035 = inttoptr i64 %1032 to i32*
  %1036 = load i32, i32* %1035
  %1037 = sext i32 %1036 to i64
  store i64 %1037, i64* %RCX, align 8, !tbaa !2428
  %1038 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1039 = load i64, i64* %RAX
  %1040 = load i64, i64* %RCX
  %1041 = mul i64 %1040, 8
  %1042 = add i64 %1041, %1039
  %1043 = load i64, i64* %PC
  %1044 = add i64 %1043, 5
  store i64 %1044, i64* %PC
  %1045 = inttoptr i64 %1042 to float*
  %1046 = load float, float* %1045
  %1047 = bitcast i8* %1038 to float*
  store float %1046, float* %1047, align 1, !tbaa !2453
  %1048 = getelementptr inbounds i8, i8* %1038, i64 4
  %1049 = bitcast i8* %1048 to float*
  store float 0.000000e+00, float* %1049, align 1, !tbaa !2453
  %1050 = getelementptr inbounds i8, i8* %1038, i64 8
  %1051 = bitcast i8* %1050 to float*
  store float 0.000000e+00, float* %1051, align 1, !tbaa !2453
  %1052 = getelementptr inbounds i8, i8* %1038, i64 12
  %1053 = bitcast i8* %1052 to float*
  store float 0.000000e+00, float* %1053, align 1, !tbaa !2453
  %1054 = load i64, i64* %RBP
  %1055 = sub i64 %1054, 16
  %1056 = load i64, i64* %PC
  %1057 = add i64 %1056, 4
  store i64 %1057, i64* %PC
  %1058 = inttoptr i64 %1055 to i64*
  %1059 = load i64, i64* %1058
  store i64 %1059, i64* %RAX, align 8, !tbaa !2428
  %1060 = load i64, i64* %RBP
  %1061 = sub i64 %1060, 40
  %1062 = load i64, i64* %PC
  %1063 = add i64 %1062, 3
  store i64 %1063, i64* %PC
  %1064 = inttoptr i64 %1061 to i32*
  %1065 = load i32, i32* %1064
  %1066 = zext i32 %1065 to i64
  store i64 %1066, i64* %RDX, align 8, !tbaa !2428
  %1067 = load i64, i64* %RDX
  %1068 = load i64, i64* %RBP
  %1069 = sub i64 %1068, 56
  %1070 = load i64, i64* %PC
  %1071 = add i64 %1070, 3
  store i64 %1071, i64* %PC
  %1072 = trunc i64 %1067 to i32
  %1073 = inttoptr i64 %1069 to i32*
  %1074 = load i32, i32* %1073
  %1075 = add i32 %1074, %1072
  %1076 = zext i32 %1075 to i64
  store i64 %1076, i64* %RDX, align 8, !tbaa !2428
  %1077 = icmp ult i32 %1075, %1072
  %1078 = icmp ult i32 %1075, %1074
  %1079 = or i1 %1077, %1078
  %1080 = zext i1 %1079 to i8
  %1081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1080, i8* %1081, align 1, !tbaa !2434
  %1082 = and i32 %1075, 255
  %1083 = call i32 @llvm.ctpop.i32(i32 %1082) #17
  %1084 = trunc i32 %1083 to i8
  %1085 = and i8 %1084, 1
  %1086 = xor i8 %1085, 1
  %1087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1086, i8* %1087, align 1, !tbaa !2447
  %1088 = xor i32 %1074, %1072
  %1089 = xor i32 %1088, %1075
  %1090 = lshr i32 %1089, 4
  %1091 = trunc i32 %1090 to i8
  %1092 = and i8 %1091, 1
  %1093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1092, i8* %1093, align 1, !tbaa !2448
  %1094 = icmp eq i32 %1075, 0
  %1095 = zext i1 %1094 to i8
  %1096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1095, i8* %1096, align 1, !tbaa !2449
  %1097 = lshr i32 %1075, 31
  %1098 = trunc i32 %1097 to i8
  %1099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1098, i8* %1099, align 1, !tbaa !2450
  %1100 = lshr i32 %1072, 31
  %1101 = lshr i32 %1074, 31
  %1102 = xor i32 %1097, %1100
  %1103 = xor i32 %1097, %1101
  %1104 = add nuw nsw i32 %1102, %1103
  %1105 = icmp eq i32 %1104, 2
  %1106 = zext i1 %1105 to i8
  %1107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1106, i8* %1107, align 1, !tbaa !2451
  %1108 = load i32, i32* %EDX
  %1109 = zext i32 %1108 to i64
  %1110 = load i64, i64* %PC
  %1111 = add i64 %1110, 3
  store i64 %1111, i64* %PC
  %1112 = shl i64 %1109, 32
  %1113 = ashr exact i64 %1112, 32
  store i64 %1113, i64* %RCX, align 8, !tbaa !2428
  %1114 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1115 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1116 = load i64, i64* %RAX
  %1117 = load i64, i64* %RCX
  %1118 = mul i64 %1117, 8
  %1119 = add i64 %1118, %1116
  %1120 = load i64, i64* %PC
  %1121 = add i64 %1120, 5
  store i64 %1121, i64* %PC
  %1122 = bitcast i8* %1115 to <2 x float>*
  %1123 = load <2 x float>, <2 x float>* %1122, align 1
  %1124 = getelementptr inbounds i8, i8* %1115, i64 8
  %1125 = bitcast i8* %1124 to <2 x i32>*
  %1126 = load <2 x i32>, <2 x i32>* %1125, align 1
  %1127 = inttoptr i64 %1119 to float*
  %1128 = load float, float* %1127
  %1129 = extractelement <2 x float> %1123, i32 0
  %1130 = fsub float %1129, %1128
  %1131 = bitcast i8* %1114 to float*
  store float %1130, float* %1131, align 1, !tbaa !2453
  %1132 = bitcast <2 x float> %1123 to <2 x i32>
  %1133 = extractelement <2 x i32> %1132, i32 1
  %1134 = getelementptr inbounds i8, i8* %1114, i64 4
  %1135 = bitcast i8* %1134 to i32*
  store i32 %1133, i32* %1135, align 1, !tbaa !2453
  %1136 = extractelement <2 x i32> %1126, i32 0
  %1137 = getelementptr inbounds i8, i8* %1114, i64 8
  %1138 = bitcast i8* %1137 to i32*
  store i32 %1136, i32* %1138, align 1, !tbaa !2453
  %1139 = extractelement <2 x i32> %1126, i32 1
  %1140 = getelementptr inbounds i8, i8* %1114, i64 12
  %1141 = bitcast i8* %1140 to i32*
  store i32 %1139, i32* %1141, align 1, !tbaa !2453
  %1142 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1143 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1144 = bitcast %union.vec128_t* %XMM1 to i8*
  %1145 = load i64, i64* %PC
  %1146 = add i64 %1145, 4
  store i64 %1146, i64* %PC
  %1147 = bitcast i8* %1143 to <2 x float>*
  %1148 = load <2 x float>, <2 x float>* %1147, align 1
  %1149 = getelementptr inbounds i8, i8* %1143, i64 8
  %1150 = bitcast i8* %1149 to <2 x i32>*
  %1151 = load <2 x i32>, <2 x i32>* %1150, align 1
  %1152 = bitcast i8* %1144 to <2 x float>*
  %1153 = load <2 x float>, <2 x float>* %1152, align 1
  %1154 = extractelement <2 x float> %1148, i32 0
  %1155 = extractelement <2 x float> %1153, i32 0
  %1156 = fmul float %1154, %1155
  %1157 = bitcast i8* %1142 to float*
  store float %1156, float* %1157, align 1, !tbaa !2453
  %1158 = bitcast <2 x float> %1148 to <2 x i32>
  %1159 = extractelement <2 x i32> %1158, i32 1
  %1160 = getelementptr inbounds i8, i8* %1142, i64 4
  %1161 = bitcast i8* %1160 to i32*
  store i32 %1159, i32* %1161, align 1, !tbaa !2453
  %1162 = extractelement <2 x i32> %1151, i32 0
  %1163 = getelementptr inbounds i8, i8* %1142, i64 8
  %1164 = bitcast i8* %1163 to i32*
  store i32 %1162, i32* %1164, align 1, !tbaa !2453
  %1165 = extractelement <2 x i32> %1151, i32 1
  %1166 = getelementptr inbounds i8, i8* %1142, i64 12
  %1167 = bitcast i8* %1166 to i32*
  store i32 %1165, i32* %1167, align 1, !tbaa !2453
  %1168 = load i64, i64* %RBP
  %1169 = sub i64 %1168, 32
  %1170 = load i64, i64* %PC
  %1171 = add i64 %1170, 4
  store i64 %1171, i64* %PC
  %1172 = inttoptr i64 %1169 to i64*
  %1173 = load i64, i64* %1172
  store i64 %1173, i64* %RAX, align 8, !tbaa !2428
  %1174 = load i64, i64* %RBP
  %1175 = sub i64 %1174, 48
  %1176 = load i64, i64* %PC
  %1177 = add i64 %1176, 3
  store i64 %1177, i64* %PC
  %1178 = inttoptr i64 %1175 to i32*
  %1179 = load i32, i32* %1178
  %1180 = zext i32 %1179 to i64
  store i64 %1180, i64* %RDX, align 8, !tbaa !2428
  %1181 = load i64, i64* %RDX
  %1182 = load i64, i64* %PC
  %1183 = add i64 %1182, 3
  store i64 %1183, i64* %PC
  %1184 = trunc i64 %1181 to i32
  %1185 = add i32 1, %1184
  %1186 = zext i32 %1185 to i64
  store i64 %1186, i64* %RDX, align 8, !tbaa !2428
  %1187 = icmp ult i32 %1185, %1184
  %1188 = icmp ult i32 %1185, 1
  %1189 = or i1 %1187, %1188
  %1190 = zext i1 %1189 to i8
  %1191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1190, i8* %1191, align 1, !tbaa !2434
  %1192 = and i32 %1185, 255
  %1193 = call i32 @llvm.ctpop.i32(i32 %1192) #17
  %1194 = trunc i32 %1193 to i8
  %1195 = and i8 %1194, 1
  %1196 = xor i8 %1195, 1
  %1197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1196, i8* %1197, align 1, !tbaa !2447
  %1198 = xor i64 1, %1181
  %1199 = trunc i64 %1198 to i32
  %1200 = xor i32 %1199, %1185
  %1201 = lshr i32 %1200, 4
  %1202 = trunc i32 %1201 to i8
  %1203 = and i8 %1202, 1
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1203, i8* %1204, align 1, !tbaa !2448
  %1205 = icmp eq i32 %1185, 0
  %1206 = zext i1 %1205 to i8
  %1207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1206, i8* %1207, align 1, !tbaa !2449
  %1208 = lshr i32 %1185, 31
  %1209 = trunc i32 %1208 to i8
  %1210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1209, i8* %1210, align 1, !tbaa !2450
  %1211 = lshr i32 %1184, 31
  %1212 = xor i32 %1208, %1211
  %1213 = add nuw nsw i32 %1212, %1208
  %1214 = icmp eq i32 %1213, 2
  %1215 = zext i1 %1214 to i8
  %1216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1215, i8* %1216, align 1, !tbaa !2451
  %1217 = load i32, i32* %EDX
  %1218 = zext i32 %1217 to i64
  %1219 = load i64, i64* %PC
  %1220 = add i64 %1219, 3
  store i64 %1220, i64* %PC
  %1221 = shl i64 %1218, 32
  %1222 = ashr exact i64 %1221, 32
  store i64 %1222, i64* %RCX, align 8, !tbaa !2428
  %1223 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1224 = load i64, i64* %RAX
  %1225 = load i64, i64* %RCX
  %1226 = mul i64 %1225, 8
  %1227 = add i64 %1224, 4
  %1228 = add i64 %1227, %1226
  %1229 = load i64, i64* %PC
  %1230 = add i64 %1229, 6
  store i64 %1230, i64* %PC
  %1231 = inttoptr i64 %1228 to float*
  %1232 = load float, float* %1231
  %1233 = bitcast i8* %1223 to float*
  store float %1232, float* %1233, align 1, !tbaa !2453
  %1234 = getelementptr inbounds i8, i8* %1223, i64 4
  %1235 = bitcast i8* %1234 to float*
  store float 0.000000e+00, float* %1235, align 1, !tbaa !2453
  %1236 = getelementptr inbounds i8, i8* %1223, i64 8
  %1237 = bitcast i8* %1236 to float*
  store float 0.000000e+00, float* %1237, align 1, !tbaa !2453
  %1238 = getelementptr inbounds i8, i8* %1223, i64 12
  %1239 = bitcast i8* %1238 to float*
  store float 0.000000e+00, float* %1239, align 1, !tbaa !2453
  %1240 = load i64, i64* %RBP
  %1241 = sub i64 %1240, 16
  %1242 = load i64, i64* %PC
  %1243 = add i64 %1242, 4
  store i64 %1243, i64* %PC
  %1244 = inttoptr i64 %1241 to i64*
  %1245 = load i64, i64* %1244
  store i64 %1245, i64* %RAX, align 8, !tbaa !2428
  %1246 = load i64, i64* %RBP
  %1247 = sub i64 %1246, 40
  %1248 = load i64, i64* %PC
  %1249 = add i64 %1248, 4
  store i64 %1249, i64* %PC
  %1250 = inttoptr i64 %1247 to i32*
  %1251 = load i32, i32* %1250
  %1252 = sext i32 %1251 to i64
  store i64 %1252, i64* %RCX, align 8, !tbaa !2428
  %1253 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %1254 = load i64, i64* %RAX
  %1255 = load i64, i64* %RCX
  %1256 = mul i64 %1255, 8
  %1257 = add i64 %1254, 4
  %1258 = add i64 %1257, %1256
  %1259 = load i64, i64* %PC
  %1260 = add i64 %1259, 6
  store i64 %1260, i64* %PC
  %1261 = inttoptr i64 %1258 to float*
  %1262 = load float, float* %1261
  %1263 = bitcast i8* %1253 to float*
  store float %1262, float* %1263, align 1, !tbaa !2453
  %1264 = getelementptr inbounds i8, i8* %1253, i64 4
  %1265 = bitcast i8* %1264 to float*
  store float 0.000000e+00, float* %1265, align 1, !tbaa !2453
  %1266 = getelementptr inbounds i8, i8* %1253, i64 8
  %1267 = bitcast i8* %1266 to float*
  store float 0.000000e+00, float* %1267, align 1, !tbaa !2453
  %1268 = getelementptr inbounds i8, i8* %1253, i64 12
  %1269 = bitcast i8* %1268 to float*
  store float 0.000000e+00, float* %1269, align 1, !tbaa !2453
  %1270 = load i64, i64* %RBP
  %1271 = sub i64 %1270, 16
  %1272 = load i64, i64* %PC
  %1273 = add i64 %1272, 4
  store i64 %1273, i64* %PC
  %1274 = inttoptr i64 %1271 to i64*
  %1275 = load i64, i64* %1274
  store i64 %1275, i64* %RAX, align 8, !tbaa !2428
  %1276 = load i64, i64* %RBP
  %1277 = sub i64 %1276, 40
  %1278 = load i64, i64* %PC
  %1279 = add i64 %1278, 3
  store i64 %1279, i64* %PC
  %1280 = inttoptr i64 %1277 to i32*
  %1281 = load i32, i32* %1280
  %1282 = zext i32 %1281 to i64
  store i64 %1282, i64* %RDX, align 8, !tbaa !2428
  %1283 = load i64, i64* %RDX
  %1284 = load i64, i64* %RBP
  %1285 = sub i64 %1284, 56
  %1286 = load i64, i64* %PC
  %1287 = add i64 %1286, 3
  store i64 %1287, i64* %PC
  %1288 = trunc i64 %1283 to i32
  %1289 = inttoptr i64 %1285 to i32*
  %1290 = load i32, i32* %1289
  %1291 = add i32 %1290, %1288
  %1292 = zext i32 %1291 to i64
  store i64 %1292, i64* %RDX, align 8, !tbaa !2428
  %1293 = icmp ult i32 %1291, %1288
  %1294 = icmp ult i32 %1291, %1290
  %1295 = or i1 %1293, %1294
  %1296 = zext i1 %1295 to i8
  %1297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1296, i8* %1297, align 1, !tbaa !2434
  %1298 = and i32 %1291, 255
  %1299 = call i32 @llvm.ctpop.i32(i32 %1298) #17
  %1300 = trunc i32 %1299 to i8
  %1301 = and i8 %1300, 1
  %1302 = xor i8 %1301, 1
  %1303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1302, i8* %1303, align 1, !tbaa !2447
  %1304 = xor i32 %1290, %1288
  %1305 = xor i32 %1304, %1291
  %1306 = lshr i32 %1305, 4
  %1307 = trunc i32 %1306 to i8
  %1308 = and i8 %1307, 1
  %1309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1308, i8* %1309, align 1, !tbaa !2448
  %1310 = icmp eq i32 %1291, 0
  %1311 = zext i1 %1310 to i8
  %1312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1311, i8* %1312, align 1, !tbaa !2449
  %1313 = lshr i32 %1291, 31
  %1314 = trunc i32 %1313 to i8
  %1315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1314, i8* %1315, align 1, !tbaa !2450
  %1316 = lshr i32 %1288, 31
  %1317 = lshr i32 %1290, 31
  %1318 = xor i32 %1313, %1316
  %1319 = xor i32 %1313, %1317
  %1320 = add nuw nsw i32 %1318, %1319
  %1321 = icmp eq i32 %1320, 2
  %1322 = zext i1 %1321 to i8
  %1323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1322, i8* %1323, align 1, !tbaa !2451
  %1324 = load i32, i32* %EDX
  %1325 = zext i32 %1324 to i64
  %1326 = load i64, i64* %PC
  %1327 = add i64 %1326, 3
  store i64 %1327, i64* %PC
  %1328 = shl i64 %1325, 32
  %1329 = ashr exact i64 %1328, 32
  store i64 %1329, i64* %RCX, align 8, !tbaa !2428
  %1330 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %1331 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %1332 = load i64, i64* %RAX
  %1333 = load i64, i64* %RCX
  %1334 = mul i64 %1333, 8
  %1335 = add i64 %1332, 4
  %1336 = add i64 %1335, %1334
  %1337 = load i64, i64* %PC
  %1338 = add i64 %1337, 6
  store i64 %1338, i64* %PC
  %1339 = bitcast i8* %1331 to <2 x float>*
  %1340 = load <2 x float>, <2 x float>* %1339, align 1
  %1341 = getelementptr inbounds i8, i8* %1331, i64 8
  %1342 = bitcast i8* %1341 to <2 x i32>*
  %1343 = load <2 x i32>, <2 x i32>* %1342, align 1
  %1344 = inttoptr i64 %1336 to float*
  %1345 = load float, float* %1344
  %1346 = extractelement <2 x float> %1340, i32 0
  %1347 = fsub float %1346, %1345
  %1348 = bitcast i8* %1330 to float*
  store float %1347, float* %1348, align 1, !tbaa !2453
  %1349 = bitcast <2 x float> %1340 to <2 x i32>
  %1350 = extractelement <2 x i32> %1349, i32 1
  %1351 = getelementptr inbounds i8, i8* %1330, i64 4
  %1352 = bitcast i8* %1351 to i32*
  store i32 %1350, i32* %1352, align 1, !tbaa !2453
  %1353 = extractelement <2 x i32> %1343, i32 0
  %1354 = getelementptr inbounds i8, i8* %1330, i64 8
  %1355 = bitcast i8* %1354 to i32*
  store i32 %1353, i32* %1355, align 1, !tbaa !2453
  %1356 = extractelement <2 x i32> %1343, i32 1
  %1357 = getelementptr inbounds i8, i8* %1330, i64 12
  %1358 = bitcast i8* %1357 to i32*
  store i32 %1356, i32* %1358, align 1, !tbaa !2453
  %1359 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1360 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1361 = bitcast %union.vec128_t* %XMM2 to i8*
  %1362 = load i64, i64* %PC
  %1363 = add i64 %1362, 4
  store i64 %1363, i64* %PC
  %1364 = bitcast i8* %1360 to <2 x float>*
  %1365 = load <2 x float>, <2 x float>* %1364, align 1
  %1366 = getelementptr inbounds i8, i8* %1360, i64 8
  %1367 = bitcast i8* %1366 to <2 x i32>*
  %1368 = load <2 x i32>, <2 x i32>* %1367, align 1
  %1369 = bitcast i8* %1361 to <2 x float>*
  %1370 = load <2 x float>, <2 x float>* %1369, align 1
  %1371 = extractelement <2 x float> %1365, i32 0
  %1372 = extractelement <2 x float> %1370, i32 0
  %1373 = fmul float %1371, %1372
  %1374 = bitcast i8* %1359 to float*
  store float %1373, float* %1374, align 1, !tbaa !2453
  %1375 = bitcast <2 x float> %1365 to <2 x i32>
  %1376 = extractelement <2 x i32> %1375, i32 1
  %1377 = getelementptr inbounds i8, i8* %1359, i64 4
  %1378 = bitcast i8* %1377 to i32*
  store i32 %1376, i32* %1378, align 1, !tbaa !2453
  %1379 = extractelement <2 x i32> %1368, i32 0
  %1380 = getelementptr inbounds i8, i8* %1359, i64 8
  %1381 = bitcast i8* %1380 to i32*
  store i32 %1379, i32* %1381, align 1, !tbaa !2453
  %1382 = extractelement <2 x i32> %1368, i32 1
  %1383 = getelementptr inbounds i8, i8* %1359, i64 12
  %1384 = bitcast i8* %1383 to i32*
  store i32 %1382, i32* %1384, align 1, !tbaa !2453
  %1385 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1386 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1387 = bitcast %union.vec128_t* %XMM1 to i8*
  %1388 = load i64, i64* %PC
  %1389 = add i64 %1388, 4
  store i64 %1389, i64* %PC
  %1390 = bitcast i8* %1386 to <2 x float>*
  %1391 = load <2 x float>, <2 x float>* %1390, align 1
  %1392 = getelementptr inbounds i8, i8* %1386, i64 8
  %1393 = bitcast i8* %1392 to <2 x i32>*
  %1394 = load <2 x i32>, <2 x i32>* %1393, align 1
  %1395 = bitcast i8* %1387 to <2 x float>*
  %1396 = load <2 x float>, <2 x float>* %1395, align 1
  %1397 = extractelement <2 x float> %1391, i32 0
  %1398 = extractelement <2 x float> %1396, i32 0
  %1399 = fsub float %1397, %1398
  %1400 = bitcast i8* %1385 to float*
  store float %1399, float* %1400, align 1, !tbaa !2453
  %1401 = bitcast <2 x float> %1391 to <2 x i32>
  %1402 = extractelement <2 x i32> %1401, i32 1
  %1403 = getelementptr inbounds i8, i8* %1385, i64 4
  %1404 = bitcast i8* %1403 to i32*
  store i32 %1402, i32* %1404, align 1, !tbaa !2453
  %1405 = extractelement <2 x i32> %1394, i32 0
  %1406 = getelementptr inbounds i8, i8* %1385, i64 8
  %1407 = bitcast i8* %1406 to i32*
  store i32 %1405, i32* %1407, align 1, !tbaa !2453
  %1408 = extractelement <2 x i32> %1394, i32 1
  %1409 = getelementptr inbounds i8, i8* %1385, i64 12
  %1410 = bitcast i8* %1409 to i32*
  store i32 %1408, i32* %1410, align 1, !tbaa !2453
  %1411 = load i64, i64* %RBP
  %1412 = sub i64 %1411, 24
  %1413 = load i64, i64* %PC
  %1414 = add i64 %1413, 4
  store i64 %1414, i64* %PC
  %1415 = inttoptr i64 %1412 to i64*
  %1416 = load i64, i64* %1415
  store i64 %1416, i64* %RAX, align 8, !tbaa !2428
  %1417 = load i64, i64* %RBP
  %1418 = sub i64 %1417, 40
  %1419 = load i64, i64* %PC
  %1420 = add i64 %1419, 3
  store i64 %1420, i64* %PC
  %1421 = inttoptr i64 %1418 to i32*
  %1422 = load i32, i32* %1421
  %1423 = zext i32 %1422 to i64
  store i64 %1423, i64* %RDX, align 8, !tbaa !2428
  %1424 = load i64, i64* %RDX
  %1425 = load i64, i64* %RBP
  %1426 = sub i64 %1425, 44
  %1427 = load i64, i64* %PC
  %1428 = add i64 %1427, 3
  store i64 %1428, i64* %PC
  %1429 = trunc i64 %1424 to i32
  %1430 = inttoptr i64 %1426 to i32*
  %1431 = load i32, i32* %1430
  %1432 = add i32 %1431, %1429
  %1433 = zext i32 %1432 to i64
  store i64 %1433, i64* %RDX, align 8, !tbaa !2428
  %1434 = icmp ult i32 %1432, %1429
  %1435 = icmp ult i32 %1432, %1431
  %1436 = or i1 %1434, %1435
  %1437 = zext i1 %1436 to i8
  %1438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1437, i8* %1438, align 1, !tbaa !2434
  %1439 = and i32 %1432, 255
  %1440 = call i32 @llvm.ctpop.i32(i32 %1439) #17
  %1441 = trunc i32 %1440 to i8
  %1442 = and i8 %1441, 1
  %1443 = xor i8 %1442, 1
  %1444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1443, i8* %1444, align 1, !tbaa !2447
  %1445 = xor i32 %1431, %1429
  %1446 = xor i32 %1445, %1432
  %1447 = lshr i32 %1446, 4
  %1448 = trunc i32 %1447 to i8
  %1449 = and i8 %1448, 1
  %1450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1449, i8* %1450, align 1, !tbaa !2448
  %1451 = icmp eq i32 %1432, 0
  %1452 = zext i1 %1451 to i8
  %1453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1452, i8* %1453, align 1, !tbaa !2449
  %1454 = lshr i32 %1432, 31
  %1455 = trunc i32 %1454 to i8
  %1456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1455, i8* %1456, align 1, !tbaa !2450
  %1457 = lshr i32 %1429, 31
  %1458 = lshr i32 %1431, 31
  %1459 = xor i32 %1454, %1457
  %1460 = xor i32 %1454, %1458
  %1461 = add nuw nsw i32 %1459, %1460
  %1462 = icmp eq i32 %1461, 2
  %1463 = zext i1 %1462 to i8
  %1464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1463, i8* %1464, align 1, !tbaa !2451
  %1465 = load i32, i32* %EDX
  %1466 = zext i32 %1465 to i64
  %1467 = load i64, i64* %PC
  %1468 = add i64 %1467, 3
  store i64 %1468, i64* %PC
  %1469 = shl i64 %1466, 32
  %1470 = ashr exact i64 %1469, 32
  store i64 %1470, i64* %RCX, align 8, !tbaa !2428
  %1471 = load i64, i64* %RAX
  %1472 = load i64, i64* %RCX
  %1473 = mul i64 %1472, 8
  %1474 = add i64 %1473, %1471
  %1475 = bitcast %union.vec128_t* %XMM0 to i8*
  %1476 = load i64, i64* %PC
  %1477 = add i64 %1476, 5
  store i64 %1477, i64* %PC
  %1478 = bitcast i8* %1475 to <2 x float>*
  %1479 = load <2 x float>, <2 x float>* %1478, align 1
  %1480 = extractelement <2 x float> %1479, i32 0
  %1481 = inttoptr i64 %1474 to float*
  store float %1480, float* %1481
  %1482 = load i64, i64* %RBP
  %1483 = sub i64 %1482, 32
  %1484 = load i64, i64* %PC
  %1485 = add i64 %1484, 4
  store i64 %1485, i64* %PC
  %1486 = inttoptr i64 %1483 to i64*
  %1487 = load i64, i64* %1486
  store i64 %1487, i64* %RAX, align 8, !tbaa !2428
  %1488 = load i64, i64* %RBP
  %1489 = sub i64 %1488, 48
  %1490 = load i64, i64* %PC
  %1491 = add i64 %1490, 3
  store i64 %1491, i64* %PC
  %1492 = inttoptr i64 %1489 to i32*
  %1493 = load i32, i32* %1492
  %1494 = zext i32 %1493 to i64
  store i64 %1494, i64* %RDX, align 8, !tbaa !2428
  %1495 = load i64, i64* %RDX
  %1496 = load i64, i64* %PC
  %1497 = add i64 %1496, 3
  store i64 %1497, i64* %PC
  %1498 = trunc i64 %1495 to i32
  %1499 = add i32 1, %1498
  %1500 = zext i32 %1499 to i64
  store i64 %1500, i64* %RDX, align 8, !tbaa !2428
  %1501 = icmp ult i32 %1499, %1498
  %1502 = icmp ult i32 %1499, 1
  %1503 = or i1 %1501, %1502
  %1504 = zext i1 %1503 to i8
  %1505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1504, i8* %1505, align 1, !tbaa !2434
  %1506 = and i32 %1499, 255
  %1507 = call i32 @llvm.ctpop.i32(i32 %1506) #17
  %1508 = trunc i32 %1507 to i8
  %1509 = and i8 %1508, 1
  %1510 = xor i8 %1509, 1
  %1511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1510, i8* %1511, align 1, !tbaa !2447
  %1512 = xor i64 1, %1495
  %1513 = trunc i64 %1512 to i32
  %1514 = xor i32 %1513, %1499
  %1515 = lshr i32 %1514, 4
  %1516 = trunc i32 %1515 to i8
  %1517 = and i8 %1516, 1
  %1518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1517, i8* %1518, align 1, !tbaa !2448
  %1519 = icmp eq i32 %1499, 0
  %1520 = zext i1 %1519 to i8
  %1521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1520, i8* %1521, align 1, !tbaa !2449
  %1522 = lshr i32 %1499, 31
  %1523 = trunc i32 %1522 to i8
  %1524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1523, i8* %1524, align 1, !tbaa !2450
  %1525 = lshr i32 %1498, 31
  %1526 = xor i32 %1522, %1525
  %1527 = add nuw nsw i32 %1526, %1522
  %1528 = icmp eq i32 %1527, 2
  %1529 = zext i1 %1528 to i8
  %1530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1529, i8* %1530, align 1, !tbaa !2451
  %1531 = load i32, i32* %EDX
  %1532 = zext i32 %1531 to i64
  %1533 = load i64, i64* %PC
  %1534 = add i64 %1533, 3
  store i64 %1534, i64* %PC
  %1535 = shl i64 %1532, 32
  %1536 = ashr exact i64 %1535, 32
  store i64 %1536, i64* %RCX, align 8, !tbaa !2428
  %1537 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1538 = load i64, i64* %RAX
  %1539 = load i64, i64* %RCX
  %1540 = mul i64 %1539, 8
  %1541 = add i64 %1540, %1538
  %1542 = load i64, i64* %PC
  %1543 = add i64 %1542, 5
  store i64 %1543, i64* %PC
  %1544 = inttoptr i64 %1541 to float*
  %1545 = load float, float* %1544
  %1546 = bitcast i8* %1537 to float*
  store float %1545, float* %1546, align 1, !tbaa !2453
  %1547 = getelementptr inbounds i8, i8* %1537, i64 4
  %1548 = bitcast i8* %1547 to float*
  store float 0.000000e+00, float* %1548, align 1, !tbaa !2453
  %1549 = getelementptr inbounds i8, i8* %1537, i64 8
  %1550 = bitcast i8* %1549 to float*
  store float 0.000000e+00, float* %1550, align 1, !tbaa !2453
  %1551 = getelementptr inbounds i8, i8* %1537, i64 12
  %1552 = bitcast i8* %1551 to float*
  store float 0.000000e+00, float* %1552, align 1, !tbaa !2453
  %1553 = load i64, i64* %RBP
  %1554 = sub i64 %1553, 16
  %1555 = load i64, i64* %PC
  %1556 = add i64 %1555, 4
  store i64 %1556, i64* %PC
  %1557 = inttoptr i64 %1554 to i64*
  %1558 = load i64, i64* %1557
  store i64 %1558, i64* %RAX, align 8, !tbaa !2428
  %1559 = load i64, i64* %RBP
  %1560 = sub i64 %1559, 40
  %1561 = load i64, i64* %PC
  %1562 = add i64 %1561, 4
  store i64 %1562, i64* %PC
  %1563 = inttoptr i64 %1560 to i32*
  %1564 = load i32, i32* %1563
  %1565 = sext i32 %1564 to i64
  store i64 %1565, i64* %RCX, align 8, !tbaa !2428
  %1566 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1567 = load i64, i64* %RAX
  %1568 = load i64, i64* %RCX
  %1569 = mul i64 %1568, 8
  %1570 = add i64 %1567, 4
  %1571 = add i64 %1570, %1569
  %1572 = load i64, i64* %PC
  %1573 = add i64 %1572, 6
  store i64 %1573, i64* %PC
  %1574 = inttoptr i64 %1571 to float*
  %1575 = load float, float* %1574
  %1576 = bitcast i8* %1566 to float*
  store float %1575, float* %1576, align 1, !tbaa !2453
  %1577 = getelementptr inbounds i8, i8* %1566, i64 4
  %1578 = bitcast i8* %1577 to float*
  store float 0.000000e+00, float* %1578, align 1, !tbaa !2453
  %1579 = getelementptr inbounds i8, i8* %1566, i64 8
  %1580 = bitcast i8* %1579 to float*
  store float 0.000000e+00, float* %1580, align 1, !tbaa !2453
  %1581 = getelementptr inbounds i8, i8* %1566, i64 12
  %1582 = bitcast i8* %1581 to float*
  store float 0.000000e+00, float* %1582, align 1, !tbaa !2453
  %1583 = load i64, i64* %RBP
  %1584 = sub i64 %1583, 16
  %1585 = load i64, i64* %PC
  %1586 = add i64 %1585, 4
  store i64 %1586, i64* %PC
  %1587 = inttoptr i64 %1584 to i64*
  %1588 = load i64, i64* %1587
  store i64 %1588, i64* %RAX, align 8, !tbaa !2428
  %1589 = load i64, i64* %RBP
  %1590 = sub i64 %1589, 40
  %1591 = load i64, i64* %PC
  %1592 = add i64 %1591, 3
  store i64 %1592, i64* %PC
  %1593 = inttoptr i64 %1590 to i32*
  %1594 = load i32, i32* %1593
  %1595 = zext i32 %1594 to i64
  store i64 %1595, i64* %RDX, align 8, !tbaa !2428
  %1596 = load i64, i64* %RDX
  %1597 = load i64, i64* %RBP
  %1598 = sub i64 %1597, 56
  %1599 = load i64, i64* %PC
  %1600 = add i64 %1599, 3
  store i64 %1600, i64* %PC
  %1601 = trunc i64 %1596 to i32
  %1602 = inttoptr i64 %1598 to i32*
  %1603 = load i32, i32* %1602
  %1604 = add i32 %1603, %1601
  %1605 = zext i32 %1604 to i64
  store i64 %1605, i64* %RDX, align 8, !tbaa !2428
  %1606 = icmp ult i32 %1604, %1601
  %1607 = icmp ult i32 %1604, %1603
  %1608 = or i1 %1606, %1607
  %1609 = zext i1 %1608 to i8
  %1610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1609, i8* %1610, align 1, !tbaa !2434
  %1611 = and i32 %1604, 255
  %1612 = call i32 @llvm.ctpop.i32(i32 %1611) #17
  %1613 = trunc i32 %1612 to i8
  %1614 = and i8 %1613, 1
  %1615 = xor i8 %1614, 1
  %1616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1615, i8* %1616, align 1, !tbaa !2447
  %1617 = xor i32 %1603, %1601
  %1618 = xor i32 %1617, %1604
  %1619 = lshr i32 %1618, 4
  %1620 = trunc i32 %1619 to i8
  %1621 = and i8 %1620, 1
  %1622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1621, i8* %1622, align 1, !tbaa !2448
  %1623 = icmp eq i32 %1604, 0
  %1624 = zext i1 %1623 to i8
  %1625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1624, i8* %1625, align 1, !tbaa !2449
  %1626 = lshr i32 %1604, 31
  %1627 = trunc i32 %1626 to i8
  %1628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1627, i8* %1628, align 1, !tbaa !2450
  %1629 = lshr i32 %1601, 31
  %1630 = lshr i32 %1603, 31
  %1631 = xor i32 %1626, %1629
  %1632 = xor i32 %1626, %1630
  %1633 = add nuw nsw i32 %1631, %1632
  %1634 = icmp eq i32 %1633, 2
  %1635 = zext i1 %1634 to i8
  %1636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1635, i8* %1636, align 1, !tbaa !2451
  %1637 = load i32, i32* %EDX
  %1638 = zext i32 %1637 to i64
  %1639 = load i64, i64* %PC
  %1640 = add i64 %1639, 3
  store i64 %1640, i64* %PC
  %1641 = shl i64 %1638, 32
  %1642 = ashr exact i64 %1641, 32
  store i64 %1642, i64* %RCX, align 8, !tbaa !2428
  %1643 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1644 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1645 = load i64, i64* %RAX
  %1646 = load i64, i64* %RCX
  %1647 = mul i64 %1646, 8
  %1648 = add i64 %1645, 4
  %1649 = add i64 %1648, %1647
  %1650 = load i64, i64* %PC
  %1651 = add i64 %1650, 6
  store i64 %1651, i64* %PC
  %1652 = bitcast i8* %1644 to <2 x float>*
  %1653 = load <2 x float>, <2 x float>* %1652, align 1
  %1654 = getelementptr inbounds i8, i8* %1644, i64 8
  %1655 = bitcast i8* %1654 to <2 x i32>*
  %1656 = load <2 x i32>, <2 x i32>* %1655, align 1
  %1657 = inttoptr i64 %1649 to float*
  %1658 = load float, float* %1657
  %1659 = extractelement <2 x float> %1653, i32 0
  %1660 = fsub float %1659, %1658
  %1661 = bitcast i8* %1643 to float*
  store float %1660, float* %1661, align 1, !tbaa !2453
  %1662 = bitcast <2 x float> %1653 to <2 x i32>
  %1663 = extractelement <2 x i32> %1662, i32 1
  %1664 = getelementptr inbounds i8, i8* %1643, i64 4
  %1665 = bitcast i8* %1664 to i32*
  store i32 %1663, i32* %1665, align 1, !tbaa !2453
  %1666 = extractelement <2 x i32> %1656, i32 0
  %1667 = getelementptr inbounds i8, i8* %1643, i64 8
  %1668 = bitcast i8* %1667 to i32*
  store i32 %1666, i32* %1668, align 1, !tbaa !2453
  %1669 = extractelement <2 x i32> %1656, i32 1
  %1670 = getelementptr inbounds i8, i8* %1643, i64 12
  %1671 = bitcast i8* %1670 to i32*
  store i32 %1669, i32* %1671, align 1, !tbaa !2453
  %1672 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1673 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1674 = bitcast %union.vec128_t* %XMM1 to i8*
  %1675 = load i64, i64* %PC
  %1676 = add i64 %1675, 4
  store i64 %1676, i64* %PC
  %1677 = bitcast i8* %1673 to <2 x float>*
  %1678 = load <2 x float>, <2 x float>* %1677, align 1
  %1679 = getelementptr inbounds i8, i8* %1673, i64 8
  %1680 = bitcast i8* %1679 to <2 x i32>*
  %1681 = load <2 x i32>, <2 x i32>* %1680, align 1
  %1682 = bitcast i8* %1674 to <2 x float>*
  %1683 = load <2 x float>, <2 x float>* %1682, align 1
  %1684 = extractelement <2 x float> %1678, i32 0
  %1685 = extractelement <2 x float> %1683, i32 0
  %1686 = fmul float %1684, %1685
  %1687 = bitcast i8* %1672 to float*
  store float %1686, float* %1687, align 1, !tbaa !2453
  %1688 = bitcast <2 x float> %1678 to <2 x i32>
  %1689 = extractelement <2 x i32> %1688, i32 1
  %1690 = getelementptr inbounds i8, i8* %1672, i64 4
  %1691 = bitcast i8* %1690 to i32*
  store i32 %1689, i32* %1691, align 1, !tbaa !2453
  %1692 = extractelement <2 x i32> %1681, i32 0
  %1693 = getelementptr inbounds i8, i8* %1672, i64 8
  %1694 = bitcast i8* %1693 to i32*
  store i32 %1692, i32* %1694, align 1, !tbaa !2453
  %1695 = extractelement <2 x i32> %1681, i32 1
  %1696 = getelementptr inbounds i8, i8* %1672, i64 12
  %1697 = bitcast i8* %1696 to i32*
  store i32 %1695, i32* %1697, align 1, !tbaa !2453
  %1698 = load i64, i64* %RBP
  %1699 = sub i64 %1698, 32
  %1700 = load i64, i64* %PC
  %1701 = add i64 %1700, 4
  store i64 %1701, i64* %PC
  %1702 = inttoptr i64 %1699 to i64*
  %1703 = load i64, i64* %1702
  store i64 %1703, i64* %RAX, align 8, !tbaa !2428
  %1704 = load i64, i64* %RBP
  %1705 = sub i64 %1704, 48
  %1706 = load i64, i64* %PC
  %1707 = add i64 %1706, 3
  store i64 %1707, i64* %PC
  %1708 = inttoptr i64 %1705 to i32*
  %1709 = load i32, i32* %1708
  %1710 = zext i32 %1709 to i64
  store i64 %1710, i64* %RDX, align 8, !tbaa !2428
  %1711 = load i64, i64* %RDX
  %1712 = load i64, i64* %PC
  %1713 = add i64 %1712, 3
  store i64 %1713, i64* %PC
  %1714 = trunc i64 %1711 to i32
  %1715 = add i32 1, %1714
  %1716 = zext i32 %1715 to i64
  store i64 %1716, i64* %RDX, align 8, !tbaa !2428
  %1717 = icmp ult i32 %1715, %1714
  %1718 = icmp ult i32 %1715, 1
  %1719 = or i1 %1717, %1718
  %1720 = zext i1 %1719 to i8
  %1721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1720, i8* %1721, align 1, !tbaa !2434
  %1722 = and i32 %1715, 255
  %1723 = call i32 @llvm.ctpop.i32(i32 %1722) #17
  %1724 = trunc i32 %1723 to i8
  %1725 = and i8 %1724, 1
  %1726 = xor i8 %1725, 1
  %1727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1726, i8* %1727, align 1, !tbaa !2447
  %1728 = xor i64 1, %1711
  %1729 = trunc i64 %1728 to i32
  %1730 = xor i32 %1729, %1715
  %1731 = lshr i32 %1730, 4
  %1732 = trunc i32 %1731 to i8
  %1733 = and i8 %1732, 1
  %1734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1733, i8* %1734, align 1, !tbaa !2448
  %1735 = icmp eq i32 %1715, 0
  %1736 = zext i1 %1735 to i8
  %1737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1736, i8* %1737, align 1, !tbaa !2449
  %1738 = lshr i32 %1715, 31
  %1739 = trunc i32 %1738 to i8
  %1740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1739, i8* %1740, align 1, !tbaa !2450
  %1741 = lshr i32 %1714, 31
  %1742 = xor i32 %1738, %1741
  %1743 = add nuw nsw i32 %1742, %1738
  %1744 = icmp eq i32 %1743, 2
  %1745 = zext i1 %1744 to i8
  %1746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1745, i8* %1746, align 1, !tbaa !2451
  %1747 = load i32, i32* %EDX
  %1748 = zext i32 %1747 to i64
  %1749 = load i64, i64* %PC
  %1750 = add i64 %1749, 3
  store i64 %1750, i64* %PC
  %1751 = shl i64 %1748, 32
  %1752 = ashr exact i64 %1751, 32
  store i64 %1752, i64* %RCX, align 8, !tbaa !2428
  %1753 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1754 = load i64, i64* %RAX
  %1755 = load i64, i64* %RCX
  %1756 = mul i64 %1755, 8
  %1757 = add i64 %1754, 4
  %1758 = add i64 %1757, %1756
  %1759 = load i64, i64* %PC
  %1760 = add i64 %1759, 6
  store i64 %1760, i64* %PC
  %1761 = inttoptr i64 %1758 to float*
  %1762 = load float, float* %1761
  %1763 = bitcast i8* %1753 to float*
  store float %1762, float* %1763, align 1, !tbaa !2453
  %1764 = getelementptr inbounds i8, i8* %1753, i64 4
  %1765 = bitcast i8* %1764 to float*
  store float 0.000000e+00, float* %1765, align 1, !tbaa !2453
  %1766 = getelementptr inbounds i8, i8* %1753, i64 8
  %1767 = bitcast i8* %1766 to float*
  store float 0.000000e+00, float* %1767, align 1, !tbaa !2453
  %1768 = getelementptr inbounds i8, i8* %1753, i64 12
  %1769 = bitcast i8* %1768 to float*
  store float 0.000000e+00, float* %1769, align 1, !tbaa !2453
  %1770 = load i64, i64* %RBP
  %1771 = sub i64 %1770, 16
  %1772 = load i64, i64* %PC
  %1773 = add i64 %1772, 4
  store i64 %1773, i64* %PC
  %1774 = inttoptr i64 %1771 to i64*
  %1775 = load i64, i64* %1774
  store i64 %1775, i64* %RAX, align 8, !tbaa !2428
  %1776 = load i64, i64* %RBP
  %1777 = sub i64 %1776, 40
  %1778 = load i64, i64* %PC
  %1779 = add i64 %1778, 4
  store i64 %1779, i64* %PC
  %1780 = inttoptr i64 %1777 to i32*
  %1781 = load i32, i32* %1780
  %1782 = sext i32 %1781 to i64
  store i64 %1782, i64* %RCX, align 8, !tbaa !2428
  %1783 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %1784 = load i64, i64* %RAX
  %1785 = load i64, i64* %RCX
  %1786 = mul i64 %1785, 8
  %1787 = add i64 %1786, %1784
  %1788 = load i64, i64* %PC
  %1789 = add i64 %1788, 5
  store i64 %1789, i64* %PC
  %1790 = inttoptr i64 %1787 to float*
  %1791 = load float, float* %1790
  %1792 = bitcast i8* %1783 to float*
  store float %1791, float* %1792, align 1, !tbaa !2453
  %1793 = getelementptr inbounds i8, i8* %1783, i64 4
  %1794 = bitcast i8* %1793 to float*
  store float 0.000000e+00, float* %1794, align 1, !tbaa !2453
  %1795 = getelementptr inbounds i8, i8* %1783, i64 8
  %1796 = bitcast i8* %1795 to float*
  store float 0.000000e+00, float* %1796, align 1, !tbaa !2453
  %1797 = getelementptr inbounds i8, i8* %1783, i64 12
  %1798 = bitcast i8* %1797 to float*
  store float 0.000000e+00, float* %1798, align 1, !tbaa !2453
  %1799 = load i64, i64* %RBP
  %1800 = sub i64 %1799, 16
  %1801 = load i64, i64* %PC
  %1802 = add i64 %1801, 4
  store i64 %1802, i64* %PC
  %1803 = inttoptr i64 %1800 to i64*
  %1804 = load i64, i64* %1803
  store i64 %1804, i64* %RAX, align 8, !tbaa !2428
  %1805 = load i64, i64* %RBP
  %1806 = sub i64 %1805, 40
  %1807 = load i64, i64* %PC
  %1808 = add i64 %1807, 3
  store i64 %1808, i64* %PC
  %1809 = inttoptr i64 %1806 to i32*
  %1810 = load i32, i32* %1809
  %1811 = zext i32 %1810 to i64
  store i64 %1811, i64* %RDX, align 8, !tbaa !2428
  %1812 = load i64, i64* %RDX
  %1813 = load i64, i64* %RBP
  %1814 = sub i64 %1813, 56
  %1815 = load i64, i64* %PC
  %1816 = add i64 %1815, 3
  store i64 %1816, i64* %PC
  %1817 = trunc i64 %1812 to i32
  %1818 = inttoptr i64 %1814 to i32*
  %1819 = load i32, i32* %1818
  %1820 = add i32 %1819, %1817
  %1821 = zext i32 %1820 to i64
  store i64 %1821, i64* %RDX, align 8, !tbaa !2428
  %1822 = icmp ult i32 %1820, %1817
  %1823 = icmp ult i32 %1820, %1819
  %1824 = or i1 %1822, %1823
  %1825 = zext i1 %1824 to i8
  %1826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1825, i8* %1826, align 1, !tbaa !2434
  %1827 = and i32 %1820, 255
  %1828 = call i32 @llvm.ctpop.i32(i32 %1827) #17
  %1829 = trunc i32 %1828 to i8
  %1830 = and i8 %1829, 1
  %1831 = xor i8 %1830, 1
  %1832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1831, i8* %1832, align 1, !tbaa !2447
  %1833 = xor i32 %1819, %1817
  %1834 = xor i32 %1833, %1820
  %1835 = lshr i32 %1834, 4
  %1836 = trunc i32 %1835 to i8
  %1837 = and i8 %1836, 1
  %1838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1837, i8* %1838, align 1, !tbaa !2448
  %1839 = icmp eq i32 %1820, 0
  %1840 = zext i1 %1839 to i8
  %1841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1840, i8* %1841, align 1, !tbaa !2449
  %1842 = lshr i32 %1820, 31
  %1843 = trunc i32 %1842 to i8
  %1844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1843, i8* %1844, align 1, !tbaa !2450
  %1845 = lshr i32 %1817, 31
  %1846 = lshr i32 %1819, 31
  %1847 = xor i32 %1842, %1845
  %1848 = xor i32 %1842, %1846
  %1849 = add nuw nsw i32 %1847, %1848
  %1850 = icmp eq i32 %1849, 2
  %1851 = zext i1 %1850 to i8
  %1852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1851, i8* %1852, align 1, !tbaa !2451
  %1853 = load i32, i32* %EDX
  %1854 = zext i32 %1853 to i64
  %1855 = load i64, i64* %PC
  %1856 = add i64 %1855, 3
  store i64 %1856, i64* %PC
  %1857 = shl i64 %1854, 32
  %1858 = ashr exact i64 %1857, 32
  store i64 %1858, i64* %RCX, align 8, !tbaa !2428
  %1859 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %1860 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %1861 = load i64, i64* %RAX
  %1862 = load i64, i64* %RCX
  %1863 = mul i64 %1862, 8
  %1864 = add i64 %1863, %1861
  %1865 = load i64, i64* %PC
  %1866 = add i64 %1865, 5
  store i64 %1866, i64* %PC
  %1867 = bitcast i8* %1860 to <2 x float>*
  %1868 = load <2 x float>, <2 x float>* %1867, align 1
  %1869 = getelementptr inbounds i8, i8* %1860, i64 8
  %1870 = bitcast i8* %1869 to <2 x i32>*
  %1871 = load <2 x i32>, <2 x i32>* %1870, align 1
  %1872 = inttoptr i64 %1864 to float*
  %1873 = load float, float* %1872
  %1874 = extractelement <2 x float> %1868, i32 0
  %1875 = fsub float %1874, %1873
  %1876 = bitcast i8* %1859 to float*
  store float %1875, float* %1876, align 1, !tbaa !2453
  %1877 = bitcast <2 x float> %1868 to <2 x i32>
  %1878 = extractelement <2 x i32> %1877, i32 1
  %1879 = getelementptr inbounds i8, i8* %1859, i64 4
  %1880 = bitcast i8* %1879 to i32*
  store i32 %1878, i32* %1880, align 1, !tbaa !2453
  %1881 = extractelement <2 x i32> %1871, i32 0
  %1882 = getelementptr inbounds i8, i8* %1859, i64 8
  %1883 = bitcast i8* %1882 to i32*
  store i32 %1881, i32* %1883, align 1, !tbaa !2453
  %1884 = extractelement <2 x i32> %1871, i32 1
  %1885 = getelementptr inbounds i8, i8* %1859, i64 12
  %1886 = bitcast i8* %1885 to i32*
  store i32 %1884, i32* %1886, align 1, !tbaa !2453
  %1887 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1888 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1889 = bitcast %union.vec128_t* %XMM2 to i8*
  %1890 = load i64, i64* %PC
  %1891 = add i64 %1890, 4
  store i64 %1891, i64* %PC
  %1892 = bitcast i8* %1888 to <2 x float>*
  %1893 = load <2 x float>, <2 x float>* %1892, align 1
  %1894 = getelementptr inbounds i8, i8* %1888, i64 8
  %1895 = bitcast i8* %1894 to <2 x i32>*
  %1896 = load <2 x i32>, <2 x i32>* %1895, align 1
  %1897 = bitcast i8* %1889 to <2 x float>*
  %1898 = load <2 x float>, <2 x float>* %1897, align 1
  %1899 = extractelement <2 x float> %1893, i32 0
  %1900 = extractelement <2 x float> %1898, i32 0
  %1901 = fmul float %1899, %1900
  %1902 = bitcast i8* %1887 to float*
  store float %1901, float* %1902, align 1, !tbaa !2453
  %1903 = bitcast <2 x float> %1893 to <2 x i32>
  %1904 = extractelement <2 x i32> %1903, i32 1
  %1905 = getelementptr inbounds i8, i8* %1887, i64 4
  %1906 = bitcast i8* %1905 to i32*
  store i32 %1904, i32* %1906, align 1, !tbaa !2453
  %1907 = extractelement <2 x i32> %1896, i32 0
  %1908 = getelementptr inbounds i8, i8* %1887, i64 8
  %1909 = bitcast i8* %1908 to i32*
  store i32 %1907, i32* %1909, align 1, !tbaa !2453
  %1910 = extractelement <2 x i32> %1896, i32 1
  %1911 = getelementptr inbounds i8, i8* %1887, i64 12
  %1912 = bitcast i8* %1911 to i32*
  store i32 %1910, i32* %1912, align 1, !tbaa !2453
  %1913 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1914 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1915 = bitcast %union.vec128_t* %XMM1 to i8*
  %1916 = load i64, i64* %PC
  %1917 = add i64 %1916, 4
  store i64 %1917, i64* %PC
  %1918 = bitcast i8* %1914 to <2 x float>*
  %1919 = load <2 x float>, <2 x float>* %1918, align 1
  %1920 = getelementptr inbounds i8, i8* %1914, i64 8
  %1921 = bitcast i8* %1920 to <2 x i32>*
  %1922 = load <2 x i32>, <2 x i32>* %1921, align 1
  %1923 = bitcast i8* %1915 to <2 x float>*
  %1924 = load <2 x float>, <2 x float>* %1923, align 1
  %1925 = extractelement <2 x float> %1919, i32 0
  %1926 = extractelement <2 x float> %1924, i32 0
  %1927 = fadd float %1925, %1926
  %1928 = bitcast i8* %1913 to float*
  store float %1927, float* %1928, align 1, !tbaa !2453
  %1929 = bitcast <2 x float> %1919 to <2 x i32>
  %1930 = extractelement <2 x i32> %1929, i32 1
  %1931 = getelementptr inbounds i8, i8* %1913, i64 4
  %1932 = bitcast i8* %1931 to i32*
  store i32 %1930, i32* %1932, align 1, !tbaa !2453
  %1933 = extractelement <2 x i32> %1922, i32 0
  %1934 = getelementptr inbounds i8, i8* %1913, i64 8
  %1935 = bitcast i8* %1934 to i32*
  store i32 %1933, i32* %1935, align 1, !tbaa !2453
  %1936 = extractelement <2 x i32> %1922, i32 1
  %1937 = getelementptr inbounds i8, i8* %1913, i64 12
  %1938 = bitcast i8* %1937 to i32*
  store i32 %1936, i32* %1938, align 1, !tbaa !2453
  %1939 = load i64, i64* %RBP
  %1940 = sub i64 %1939, 24
  %1941 = load i64, i64* %PC
  %1942 = add i64 %1941, 4
  store i64 %1942, i64* %PC
  %1943 = inttoptr i64 %1940 to i64*
  %1944 = load i64, i64* %1943
  store i64 %1944, i64* %RAX, align 8, !tbaa !2428
  %1945 = load i64, i64* %RBP
  %1946 = sub i64 %1945, 40
  %1947 = load i64, i64* %PC
  %1948 = add i64 %1947, 3
  store i64 %1948, i64* %PC
  %1949 = inttoptr i64 %1946 to i32*
  %1950 = load i32, i32* %1949
  %1951 = zext i32 %1950 to i64
  store i64 %1951, i64* %RDX, align 8, !tbaa !2428
  %1952 = load i64, i64* %RDX
  %1953 = load i64, i64* %RBP
  %1954 = sub i64 %1953, 44
  %1955 = load i64, i64* %PC
  %1956 = add i64 %1955, 3
  store i64 %1956, i64* %PC
  %1957 = trunc i64 %1952 to i32
  %1958 = inttoptr i64 %1954 to i32*
  %1959 = load i32, i32* %1958
  %1960 = add i32 %1959, %1957
  %1961 = zext i32 %1960 to i64
  store i64 %1961, i64* %RDX, align 8, !tbaa !2428
  %1962 = icmp ult i32 %1960, %1957
  %1963 = icmp ult i32 %1960, %1959
  %1964 = or i1 %1962, %1963
  %1965 = zext i1 %1964 to i8
  %1966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1965, i8* %1966, align 1, !tbaa !2434
  %1967 = and i32 %1960, 255
  %1968 = call i32 @llvm.ctpop.i32(i32 %1967) #17
  %1969 = trunc i32 %1968 to i8
  %1970 = and i8 %1969, 1
  %1971 = xor i8 %1970, 1
  %1972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1971, i8* %1972, align 1, !tbaa !2447
  %1973 = xor i32 %1959, %1957
  %1974 = xor i32 %1973, %1960
  %1975 = lshr i32 %1974, 4
  %1976 = trunc i32 %1975 to i8
  %1977 = and i8 %1976, 1
  %1978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1977, i8* %1978, align 1, !tbaa !2448
  %1979 = icmp eq i32 %1960, 0
  %1980 = zext i1 %1979 to i8
  %1981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1980, i8* %1981, align 1, !tbaa !2449
  %1982 = lshr i32 %1960, 31
  %1983 = trunc i32 %1982 to i8
  %1984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1983, i8* %1984, align 1, !tbaa !2450
  %1985 = lshr i32 %1957, 31
  %1986 = lshr i32 %1959, 31
  %1987 = xor i32 %1982, %1985
  %1988 = xor i32 %1982, %1986
  %1989 = add nuw nsw i32 %1987, %1988
  %1990 = icmp eq i32 %1989, 2
  %1991 = zext i1 %1990 to i8
  %1992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1991, i8* %1992, align 1, !tbaa !2451
  %1993 = load i32, i32* %EDX
  %1994 = zext i32 %1993 to i64
  %1995 = load i64, i64* %PC
  %1996 = add i64 %1995, 3
  store i64 %1996, i64* %PC
  %1997 = shl i64 %1994, 32
  %1998 = ashr exact i64 %1997, 32
  store i64 %1998, i64* %RCX, align 8, !tbaa !2428
  %1999 = load i64, i64* %RAX
  %2000 = load i64, i64* %RCX
  %2001 = mul i64 %2000, 8
  %2002 = add i64 %1999, 4
  %2003 = add i64 %2002, %2001
  %2004 = bitcast %union.vec128_t* %XMM0 to i8*
  %2005 = load i64, i64* %PC
  %2006 = add i64 %2005, 6
  store i64 %2006, i64* %PC
  %2007 = bitcast i8* %2004 to <2 x float>*
  %2008 = load <2 x float>, <2 x float>* %2007, align 1
  %2009 = extractelement <2 x float> %2008, i32 0
  %2010 = inttoptr i64 %2003 to float*
  store float %2009, float* %2010
  %2011 = load i64, i64* %RBP
  %2012 = sub i64 %2011, 40
  %2013 = load i64, i64* %PC
  %2014 = add i64 %2013, 3
  store i64 %2014, i64* %PC
  %2015 = inttoptr i64 %2012 to i32*
  %2016 = load i32, i32* %2015
  %2017 = zext i32 %2016 to i64
  store i64 %2017, i64* %RDX, align 8, !tbaa !2428
  %2018 = load i64, i64* %RDX
  %2019 = load i64, i64* %PC
  %2020 = add i64 %2019, 3
  store i64 %2020, i64* %PC
  %2021 = trunc i64 %2018 to i32
  %2022 = add i32 1, %2021
  %2023 = zext i32 %2022 to i64
  store i64 %2023, i64* %RDX, align 8, !tbaa !2428
  %2024 = icmp ult i32 %2022, %2021
  %2025 = icmp ult i32 %2022, 1
  %2026 = or i1 %2024, %2025
  %2027 = zext i1 %2026 to i8
  %2028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2027, i8* %2028, align 1, !tbaa !2434
  %2029 = and i32 %2022, 255
  %2030 = call i32 @llvm.ctpop.i32(i32 %2029) #17
  %2031 = trunc i32 %2030 to i8
  %2032 = and i8 %2031, 1
  %2033 = xor i8 %2032, 1
  %2034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2033, i8* %2034, align 1, !tbaa !2447
  %2035 = xor i64 1, %2018
  %2036 = trunc i64 %2035 to i32
  %2037 = xor i32 %2036, %2022
  %2038 = lshr i32 %2037, 4
  %2039 = trunc i32 %2038 to i8
  %2040 = and i8 %2039, 1
  %2041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2040, i8* %2041, align 1, !tbaa !2448
  %2042 = icmp eq i32 %2022, 0
  %2043 = zext i1 %2042 to i8
  %2044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2043, i8* %2044, align 1, !tbaa !2449
  %2045 = lshr i32 %2022, 31
  %2046 = trunc i32 %2045 to i8
  %2047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2046, i8* %2047, align 1, !tbaa !2450
  %2048 = lshr i32 %2021, 31
  %2049 = xor i32 %2045, %2048
  %2050 = add nuw nsw i32 %2049, %2045
  %2051 = icmp eq i32 %2050, 2
  %2052 = zext i1 %2051 to i8
  %2053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2052, i8* %2053, align 1, !tbaa !2451
  %2054 = load i64, i64* %RBP
  %2055 = sub i64 %2054, 40
  %2056 = load i32, i32* %EDX
  %2057 = zext i32 %2056 to i64
  %2058 = load i64, i64* %PC
  %2059 = add i64 %2058, 3
  store i64 %2059, i64* %PC
  %2060 = inttoptr i64 %2055 to i32*
  store i32 %2056, i32* %2060
  %2061 = load i64, i64* %RBP
  %2062 = sub i64 %2061, 40
  %2063 = load i64, i64* %PC
  %2064 = add i64 %2063, 3
  store i64 %2064, i64* %PC
  %2065 = inttoptr i64 %2062 to i32*
  %2066 = load i32, i32* %2065
  %2067 = zext i32 %2066 to i64
  store i64 %2067, i64* %RAX, align 8, !tbaa !2428
  %2068 = load i32, i32* %EAX
  %2069 = zext i32 %2068 to i64
  %2070 = load i64, i64* %RBP
  %2071 = sub i64 %2070, 44
  %2072 = load i64, i64* %PC
  %2073 = add i64 %2072, 3
  store i64 %2073, i64* %PC
  %2074 = inttoptr i64 %2071 to i32*
  %2075 = load i32, i32* %2074
  %2076 = sub i32 %2068, %2075
  %2077 = icmp ult i32 %2068, %2075
  %2078 = zext i1 %2077 to i8
  %2079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2078, i8* %2079, align 1, !tbaa !2434
  %2080 = and i32 %2076, 255
  %2081 = call i32 @llvm.ctpop.i32(i32 %2080) #17
  %2082 = trunc i32 %2081 to i8
  %2083 = and i8 %2082, 1
  %2084 = xor i8 %2083, 1
  %2085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2084, i8* %2085, align 1, !tbaa !2447
  %2086 = xor i32 %2075, %2068
  %2087 = xor i32 %2086, %2076
  %2088 = lshr i32 %2087, 4
  %2089 = trunc i32 %2088 to i8
  %2090 = and i8 %2089, 1
  %2091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2090, i8* %2091, align 1, !tbaa !2448
  %2092 = icmp eq i32 %2076, 0
  %2093 = zext i1 %2092 to i8
  %2094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2093, i8* %2094, align 1, !tbaa !2449
  %2095 = lshr i32 %2076, 31
  %2096 = trunc i32 %2095 to i8
  %2097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2096, i8* %2097, align 1, !tbaa !2450
  %2098 = lshr i32 %2068, 31
  %2099 = lshr i32 %2075, 31
  %2100 = xor i32 %2099, %2098
  %2101 = xor i32 %2095, %2098
  %2102 = add nuw nsw i32 %2101, %2100
  %2103 = icmp eq i32 %2102, 2
  %2104 = zext i1 %2103 to i8
  %2105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2104, i8* %2105, align 1, !tbaa !2451
  %2106 = load i64, i64* %PC
  %2107 = sub i64 %2106, 379
  %2108 = load i64, i64* %PC
  %2109 = add i64 %2108, 6
  %2110 = load i64, i64* %PC
  %2111 = add i64 %2110, 6
  store i64 %2111, i64* %PC
  %2112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2113 = load i8, i8* %2112, align 1, !tbaa !2449
  %2114 = icmp ne i8 %2113, 0
  %2115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2116 = load i8, i8* %2115, align 1, !tbaa !2450
  %2117 = icmp ne i8 %2116, 0
  %2118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2119 = load i8, i8* %2118, align 1, !tbaa !2451
  %2120 = icmp ne i8 %2119, 0
  %2121 = xor i1 %2117, %2120
  %2122 = or i1 %2114, %2121
  %2123 = zext i1 %2122 to i8
  store i8 %2123, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %2124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2125 = select i1 %2122, i64 %2107, i64 %2109
  store i64 %2125, i64* %2124, align 8, !tbaa !2428
  %2126 = load i8, i8* %BRANCH_TAKEN
  %2127 = icmp eq i8 %2126, 1
  br i1 %2127, label %block_400a7e, label %block_400bff

block_400c1a:                                     ; preds = %block_400bff
  %2128 = load i64, i64* %RBP
  %2129 = sub i64 %2128, 60
  %2130 = load i64, i64* %PC
  %2131 = add i64 %2130, 7
  store i64 %2131, i64* %PC
  %2132 = inttoptr i64 %2129 to i32*
  store i32 1, i32* %2132
  br label %block_400c21

block_400c4e:                                     ; preds = %block_400c21
  %2133 = load i64, i64* %RBP
  %2134 = sub i64 %2133, 52
  %2135 = load i64, i64* %PC
  %2136 = add i64 %2135, 3
  store i64 %2136, i64* %PC
  %2137 = inttoptr i64 %2134 to i32*
  %2138 = load i32, i32* %2137
  %2139 = zext i32 %2138 to i64
  store i64 %2139, i64* %RAX, align 8, !tbaa !2428
  %2140 = load i64, i64* %RAX
  %2141 = load i64, i64* %RBP
  %2142 = sub i64 %2141, 52
  %2143 = load i64, i64* %PC
  %2144 = add i64 %2143, 3
  store i64 %2144, i64* %PC
  %2145 = trunc i64 %2140 to i32
  %2146 = inttoptr i64 %2142 to i32*
  %2147 = load i32, i32* %2146
  %2148 = add i32 %2147, %2145
  %2149 = zext i32 %2148 to i64
  store i64 %2149, i64* %RAX, align 8, !tbaa !2428
  %2150 = icmp ult i32 %2148, %2145
  %2151 = icmp ult i32 %2148, %2147
  %2152 = or i1 %2150, %2151
  %2153 = zext i1 %2152 to i8
  %2154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2153, i8* %2154, align 1, !tbaa !2434
  %2155 = and i32 %2148, 255
  %2156 = call i32 @llvm.ctpop.i32(i32 %2155) #17
  %2157 = trunc i32 %2156 to i8
  %2158 = and i8 %2157, 1
  %2159 = xor i8 %2158, 1
  %2160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2159, i8* %2160, align 1, !tbaa !2447
  %2161 = xor i32 %2147, %2145
  %2162 = xor i32 %2161, %2148
  %2163 = lshr i32 %2162, 4
  %2164 = trunc i32 %2163 to i8
  %2165 = and i8 %2164, 1
  %2166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2165, i8* %2166, align 1, !tbaa !2448
  %2167 = icmp eq i32 %2148, 0
  %2168 = zext i1 %2167 to i8
  %2169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2168, i8* %2169, align 1, !tbaa !2449
  %2170 = lshr i32 %2148, 31
  %2171 = trunc i32 %2170 to i8
  %2172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2171, i8* %2172, align 1, !tbaa !2450
  %2173 = lshr i32 %2145, 31
  %2174 = lshr i32 %2147, 31
  %2175 = xor i32 %2170, %2173
  %2176 = xor i32 %2170, %2174
  %2177 = add nuw nsw i32 %2175, %2176
  %2178 = icmp eq i32 %2177, 2
  %2179 = zext i1 %2178 to i8
  %2180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2179, i8* %2180, align 1, !tbaa !2451
  %2181 = load i64, i64* %RBP
  %2182 = sub i64 %2181, 52
  %2183 = load i32, i32* %EAX
  %2184 = zext i32 %2183 to i64
  %2185 = load i64, i64* %PC
  %2186 = add i64 %2185, 3
  store i64 %2186, i64* %PC
  %2187 = inttoptr i64 %2182 to i32*
  store i32 %2183, i32* %2187
  %2188 = load i64, i64* %RBP
  %2189 = sub i64 %2188, 52
  %2190 = load i64, i64* %PC
  %2191 = add i64 %2190, 3
  store i64 %2191, i64* %PC
  %2192 = inttoptr i64 %2189 to i32*
  %2193 = load i32, i32* %2192
  %2194 = zext i32 %2193 to i64
  store i64 %2194, i64* %RAX, align 8, !tbaa !2428
  %2195 = load i32, i32* %EAX
  %2196 = zext i32 %2195 to i64
  %2197 = load i64, i64* %RBP
  %2198 = sub i64 %2197, 56
  %2199 = load i64, i64* %PC
  %2200 = add i64 %2199, 3
  store i64 %2200, i64* %PC
  %2201 = inttoptr i64 %2198 to i32*
  %2202 = load i32, i32* %2201
  %2203 = sub i32 %2195, %2202
  %2204 = icmp ult i32 %2195, %2202
  %2205 = zext i1 %2204 to i8
  %2206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2205, i8* %2206, align 1, !tbaa !2434
  %2207 = and i32 %2203, 255
  %2208 = call i32 @llvm.ctpop.i32(i32 %2207) #17
  %2209 = trunc i32 %2208 to i8
  %2210 = and i8 %2209, 1
  %2211 = xor i8 %2210, 1
  %2212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2211, i8* %2212, align 1, !tbaa !2447
  %2213 = xor i32 %2202, %2195
  %2214 = xor i32 %2213, %2203
  %2215 = lshr i32 %2214, 4
  %2216 = trunc i32 %2215 to i8
  %2217 = and i8 %2216, 1
  %2218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2217, i8* %2218, align 1, !tbaa !2448
  %2219 = icmp eq i32 %2203, 0
  %2220 = zext i1 %2219 to i8
  %2221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2220, i8* %2221, align 1, !tbaa !2449
  %2222 = lshr i32 %2203, 31
  %2223 = trunc i32 %2222 to i8
  %2224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2223, i8* %2224, align 1, !tbaa !2450
  %2225 = lshr i32 %2195, 31
  %2226 = lshr i32 %2202, 31
  %2227 = xor i32 %2226, %2225
  %2228 = xor i32 %2222, %2225
  %2229 = add nuw nsw i32 %2228, %2227
  %2230 = icmp eq i32 %2229, 2
  %2231 = zext i1 %2230 to i8
  %2232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2231, i8* %2232, align 1, !tbaa !2451
  %2233 = load i64, i64* %PC
  %2234 = sub i64 %2233, 504
  %2235 = load i64, i64* %PC
  %2236 = add i64 %2235, 6
  %2237 = load i64, i64* %PC
  %2238 = add i64 %2237, 6
  store i64 %2238, i64* %PC
  %2239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2240 = load i8, i8* %2239, align 1, !tbaa !2449
  %2241 = icmp ne i8 %2240, 0
  %2242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2243 = load i8, i8* %2242, align 1, !tbaa !2450
  %2244 = icmp ne i8 %2243, 0
  %2245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2246 = load i8, i8* %2245, align 1, !tbaa !2451
  %2247 = icmp ne i8 %2246, 0
  %2248 = xor i1 %2244, %2247
  %2249 = or i1 %2241, %2248
  %2250 = zext i1 %2249 to i8
  store i8 %2250, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %2251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2252 = select i1 %2249, i64 %2234, i64 %2236
  store i64 %2252, i64* %2251, align 8, !tbaa !2428
  %2253 = load i8, i8* %BRANCH_TAKEN
  %2254 = icmp eq i8 %2253, 1
  br i1 %2254, label %block_400a65, label %block_400c63

block_400cd2:                                     ; preds = %block_400c6a
  %2255 = load i64, i64* %PC
  %2256 = add i64 %2255, 1
  store i64 %2256, i64* %PC
  %2257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2258 = load i64, i64* %2257, align 8, !tbaa !2428
  %2259 = add i64 %2258, 8
  %2260 = inttoptr i64 %2258 to i64*
  %2261 = load i64, i64* %2260
  store i64 %2261, i64* %RBP, align 8, !tbaa !2428
  store i64 %2259, i64* %2257, align 8, !tbaa !2428
  %2262 = load i64, i64* %PC
  %2263 = add i64 %2262, 1
  store i64 %2263, i64* %PC
  %2264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2266 = load i64, i64* %2265, align 8, !tbaa !2428
  %2267 = inttoptr i64 %2266 to i64*
  %2268 = load i64, i64* %2267
  store i64 %2268, i64* %2264, align 8, !tbaa !2428
  %2269 = add i64 %2266, 8
  store i64 %2269, i64* %2265, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.2

block_400c6a:                                     ; preds = %block_400c63, %block_400c76
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.4, %block_400c63 ], [ %MEMORY.2, %block_400c76 ]
  %2270 = load i64, i64* %RBP
  %2271 = sub i64 %2270, 40
  %2272 = load i64, i64* %PC
  %2273 = add i64 %2272, 3
  store i64 %2273, i64* %PC
  %2274 = inttoptr i64 %2271 to i32*
  %2275 = load i32, i32* %2274
  %2276 = zext i32 %2275 to i64
  store i64 %2276, i64* %RAX, align 8, !tbaa !2428
  %2277 = load i32, i32* %EAX
  %2278 = zext i32 %2277 to i64
  %2279 = load i64, i64* %RBP
  %2280 = sub i64 %2279, 4
  %2281 = load i64, i64* %PC
  %2282 = add i64 %2281, 3
  store i64 %2282, i64* %PC
  %2283 = inttoptr i64 %2280 to i32*
  %2284 = load i32, i32* %2283
  %2285 = sub i32 %2277, %2284
  %2286 = icmp ult i32 %2277, %2284
  %2287 = zext i1 %2286 to i8
  %2288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2287, i8* %2288, align 1, !tbaa !2434
  %2289 = and i32 %2285, 255
  %2290 = call i32 @llvm.ctpop.i32(i32 %2289) #17
  %2291 = trunc i32 %2290 to i8
  %2292 = and i8 %2291, 1
  %2293 = xor i8 %2292, 1
  %2294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2293, i8* %2294, align 1, !tbaa !2447
  %2295 = xor i32 %2284, %2277
  %2296 = xor i32 %2295, %2285
  %2297 = lshr i32 %2296, 4
  %2298 = trunc i32 %2297 to i8
  %2299 = and i8 %2298, 1
  %2300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2299, i8* %2300, align 1, !tbaa !2448
  %2301 = icmp eq i32 %2285, 0
  %2302 = zext i1 %2301 to i8
  %2303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2302, i8* %2303, align 1, !tbaa !2449
  %2304 = lshr i32 %2285, 31
  %2305 = trunc i32 %2304 to i8
  %2306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2305, i8* %2306, align 1, !tbaa !2450
  %2307 = lshr i32 %2277, 31
  %2308 = lshr i32 %2284, 31
  %2309 = xor i32 %2308, %2307
  %2310 = xor i32 %2304, %2307
  %2311 = add nuw nsw i32 %2310, %2309
  %2312 = icmp eq i32 %2311, 2
  %2313 = zext i1 %2312 to i8
  %2314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2313, i8* %2314, align 1, !tbaa !2451
  %2315 = load i64, i64* %PC
  %2316 = add i64 %2315, 98
  %2317 = load i64, i64* %PC
  %2318 = add i64 %2317, 6
  %2319 = load i64, i64* %PC
  %2320 = add i64 %2319, 6
  store i64 %2320, i64* %PC
  %2321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2322 = load i8, i8* %2321, align 1, !tbaa !2449
  %2323 = icmp eq i8 %2322, 0
  %2324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2325 = load i8, i8* %2324, align 1, !tbaa !2450
  %2326 = icmp ne i8 %2325, 0
  %2327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2328 = load i8, i8* %2327, align 1, !tbaa !2451
  %2329 = icmp ne i8 %2328, 0
  %2330 = xor i1 %2326, %2329
  %2331 = xor i1 %2330, true
  %2332 = and i1 %2323, %2331
  %2333 = zext i1 %2332 to i8
  store i8 %2333, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %2334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2335 = select i1 %2332, i64 %2316, i64 %2318
  store i64 %2335, i64* %2334, align 8, !tbaa !2428
  %2336 = load i8, i8* %BRANCH_TAKEN
  %2337 = icmp eq i8 %2336, 1
  br i1 %2337, label %block_400cd2, label %block_400c76

block_400a65:                                     ; preds = %block_400c4e, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit
  %MEMORY.3 = phi %struct.Memory* [ %164, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ], [ %MEMORY.4, %block_400c4e ]
  %2338 = load i64, i64* %RBP
  %2339 = sub i64 %2338, 48
  %2340 = load i64, i64* %PC
  %2341 = add i64 %2340, 7
  store i64 %2341, i64* %PC
  %2342 = inttoptr i64 %2339 to i32*
  store i32 0, i32* %2342
  %2343 = load i64, i64* %RBP
  %2344 = sub i64 %2343, 52
  %2345 = load i64, i64* %PC
  %2346 = add i64 %2345, 3
  store i64 %2346, i64* %PC
  %2347 = inttoptr i64 %2344 to i32*
  %2348 = load i32, i32* %2347
  %2349 = zext i32 %2348 to i64
  store i64 %2349, i64* %RAX, align 8, !tbaa !2428
  %2350 = load i64, i64* %RBP
  %2351 = sub i64 %2350, 44
  %2352 = load i32, i32* %EAX
  %2353 = zext i32 %2352 to i64
  %2354 = load i64, i64* %PC
  %2355 = add i64 %2354, 3
  store i64 %2355, i64* %PC
  %2356 = inttoptr i64 %2351 to i32*
  store i32 %2352, i32* %2356
  %2357 = load i64, i64* %RBP
  %2358 = sub i64 %2357, 40
  %2359 = load i64, i64* %PC
  %2360 = add i64 %2359, 7
  store i64 %2360, i64* %PC
  %2361 = inttoptr i64 %2358 to i32*
  store i32 1, i32* %2361
  br label %block_400a79

block_400c63:                                     ; preds = %block_400c4e
  %2362 = load i64, i64* %RBP
  %2363 = sub i64 %2362, 40
  %2364 = load i64, i64* %PC
  %2365 = add i64 %2364, 7
  store i64 %2365, i64* %PC
  %2366 = inttoptr i64 %2363 to i32*
  store i32 1, i32* %2366
  br label %block_400c6a

block_400c21:                                     ; preds = %block_400c21, %block_400c1a
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.1, %block_400c1a ], [ %MEMORY.4, %block_400c21 ]
  %2367 = load i64, i64* %RBP
  %2368 = sub i64 %2367, 16
  %2369 = load i64, i64* %PC
  %2370 = add i64 %2369, 4
  store i64 %2370, i64* %PC
  %2371 = inttoptr i64 %2368 to i64*
  %2372 = load i64, i64* %2371
  store i64 %2372, i64* %RAX, align 8, !tbaa !2428
  %2373 = load i64, i64* %RBP
  %2374 = sub i64 %2373, 60
  %2375 = load i64, i64* %PC
  %2376 = add i64 %2375, 4
  store i64 %2376, i64* %PC
  %2377 = inttoptr i64 %2374 to i32*
  %2378 = load i32, i32* %2377
  %2379 = sext i32 %2378 to i64
  store i64 %2379, i64* %RCX, align 8, !tbaa !2428
  %2380 = load i64, i64* %RBP
  %2381 = sub i64 %2380, 24
  %2382 = load i64, i64* %PC
  %2383 = add i64 %2382, 4
  store i64 %2383, i64* %PC
  %2384 = inttoptr i64 %2381 to i64*
  %2385 = load i64, i64* %2384
  store i64 %2385, i64* %RDX, align 8, !tbaa !2428
  %2386 = load i64, i64* %RBP
  %2387 = sub i64 %2386, 60
  %2388 = load i64, i64* %PC
  %2389 = add i64 %2388, 4
  store i64 %2389, i64* %PC
  %2390 = inttoptr i64 %2387 to i32*
  %2391 = load i32, i32* %2390
  %2392 = sext i32 %2391 to i64
  store i64 %2392, i64* %RSI, align 8, !tbaa !2428
  %2393 = load i64, i64* %RDX
  %2394 = load i64, i64* %RSI
  %2395 = mul i64 %2394, 8
  %2396 = add i64 %2395, %2393
  %2397 = load i64, i64* %PC
  %2398 = add i64 %2397, 4
  store i64 %2398, i64* %PC
  %2399 = inttoptr i64 %2396 to i64*
  %2400 = load i64, i64* %2399
  store i64 %2400, i64* %RDX, align 8, !tbaa !2428
  %2401 = load i64, i64* %RAX
  %2402 = load i64, i64* %RCX
  %2403 = mul i64 %2402, 8
  %2404 = add i64 %2403, %2401
  %2405 = load i64, i64* %RDX
  %2406 = load i64, i64* %PC
  %2407 = add i64 %2406, 4
  store i64 %2407, i64* %PC
  %2408 = inttoptr i64 %2404 to i64*
  store i64 %2405, i64* %2408
  %2409 = load i64, i64* %RBP
  %2410 = sub i64 %2409, 60
  %2411 = load i64, i64* %PC
  %2412 = add i64 %2411, 3
  store i64 %2412, i64* %PC
  %2413 = inttoptr i64 %2410 to i32*
  %2414 = load i32, i32* %2413
  %2415 = zext i32 %2414 to i64
  store i64 %2415, i64* %RDI, align 8, !tbaa !2428
  %2416 = load i64, i64* %RDI
  %2417 = load i64, i64* %PC
  %2418 = add i64 %2417, 3
  store i64 %2418, i64* %PC
  %2419 = trunc i64 %2416 to i32
  %2420 = add i32 1, %2419
  %2421 = zext i32 %2420 to i64
  store i64 %2421, i64* %RDI, align 8, !tbaa !2428
  %2422 = icmp ult i32 %2420, %2419
  %2423 = icmp ult i32 %2420, 1
  %2424 = or i1 %2422, %2423
  %2425 = zext i1 %2424 to i8
  %2426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2425, i8* %2426, align 1, !tbaa !2434
  %2427 = and i32 %2420, 255
  %2428 = call i32 @llvm.ctpop.i32(i32 %2427) #17
  %2429 = trunc i32 %2428 to i8
  %2430 = and i8 %2429, 1
  %2431 = xor i8 %2430, 1
  %2432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2431, i8* %2432, align 1, !tbaa !2447
  %2433 = xor i64 1, %2416
  %2434 = trunc i64 %2433 to i32
  %2435 = xor i32 %2434, %2420
  %2436 = lshr i32 %2435, 4
  %2437 = trunc i32 %2436 to i8
  %2438 = and i8 %2437, 1
  %2439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2438, i8* %2439, align 1, !tbaa !2448
  %2440 = icmp eq i32 %2420, 0
  %2441 = zext i1 %2440 to i8
  %2442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2441, i8* %2442, align 1, !tbaa !2449
  %2443 = lshr i32 %2420, 31
  %2444 = trunc i32 %2443 to i8
  %2445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2444, i8* %2445, align 1, !tbaa !2450
  %2446 = lshr i32 %2419, 31
  %2447 = xor i32 %2443, %2446
  %2448 = add nuw nsw i32 %2447, %2443
  %2449 = icmp eq i32 %2448, 2
  %2450 = zext i1 %2449 to i8
  %2451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2450, i8* %2451, align 1, !tbaa !2451
  %2452 = load i64, i64* %RBP
  %2453 = sub i64 %2452, 60
  %2454 = load i32, i32* %EDI
  %2455 = zext i32 %2454 to i64
  %2456 = load i64, i64* %PC
  %2457 = add i64 %2456, 3
  store i64 %2457, i64* %PC
  %2458 = inttoptr i64 %2453 to i32*
  store i32 %2454, i32* %2458
  %2459 = load i64, i64* %RBP
  %2460 = sub i64 %2459, 60
  %2461 = load i64, i64* %PC
  %2462 = add i64 %2461, 3
  store i64 %2462, i64* %PC
  %2463 = inttoptr i64 %2460 to i32*
  %2464 = load i32, i32* %2463
  %2465 = zext i32 %2464 to i64
  store i64 %2465, i64* %RAX, align 8, !tbaa !2428
  %2466 = load i32, i32* %EAX
  %2467 = zext i32 %2466 to i64
  %2468 = load i64, i64* %RBP
  %2469 = sub i64 %2468, 4
  %2470 = load i64, i64* %PC
  %2471 = add i64 %2470, 3
  store i64 %2471, i64* %PC
  %2472 = inttoptr i64 %2469 to i32*
  %2473 = load i32, i32* %2472
  %2474 = sub i32 %2466, %2473
  %2475 = icmp ult i32 %2466, %2473
  %2476 = zext i1 %2475 to i8
  %2477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2476, i8* %2477, align 1, !tbaa !2434
  %2478 = and i32 %2474, 255
  %2479 = call i32 @llvm.ctpop.i32(i32 %2478) #17
  %2480 = trunc i32 %2479 to i8
  %2481 = and i8 %2480, 1
  %2482 = xor i8 %2481, 1
  %2483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2482, i8* %2483, align 1, !tbaa !2447
  %2484 = xor i32 %2473, %2466
  %2485 = xor i32 %2484, %2474
  %2486 = lshr i32 %2485, 4
  %2487 = trunc i32 %2486 to i8
  %2488 = and i8 %2487, 1
  %2489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2488, i8* %2489, align 1, !tbaa !2448
  %2490 = icmp eq i32 %2474, 0
  %2491 = zext i1 %2490 to i8
  %2492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2491, i8* %2492, align 1, !tbaa !2449
  %2493 = lshr i32 %2474, 31
  %2494 = trunc i32 %2493 to i8
  %2495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2494, i8* %2495, align 1, !tbaa !2450
  %2496 = lshr i32 %2466, 31
  %2497 = lshr i32 %2473, 31
  %2498 = xor i32 %2497, %2496
  %2499 = xor i32 %2493, %2496
  %2500 = add nuw nsw i32 %2499, %2498
  %2501 = icmp eq i32 %2500, 2
  %2502 = zext i1 %2501 to i8
  %2503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2502, i8* %2503, align 1, !tbaa !2451
  %2504 = load i64, i64* %PC
  %2505 = sub i64 %2504, 39
  %2506 = load i64, i64* %PC
  %2507 = add i64 %2506, 6
  %2508 = load i64, i64* %PC
  %2509 = add i64 %2508, 6
  store i64 %2509, i64* %PC
  %2510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2511 = load i8, i8* %2510, align 1, !tbaa !2449
  %2512 = icmp ne i8 %2511, 0
  %2513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2514 = load i8, i8* %2513, align 1, !tbaa !2450
  %2515 = icmp ne i8 %2514, 0
  %2516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2517 = load i8, i8* %2516, align 1, !tbaa !2451
  %2518 = icmp ne i8 %2517, 0
  %2519 = xor i1 %2515, %2518
  %2520 = or i1 %2512, %2519
  %2521 = zext i1 %2520 to i8
  store i8 %2521, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %2522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2523 = select i1 %2520, i64 %2505, i64 %2507
  store i64 %2523, i64* %2522, align 8, !tbaa !2428
  %2524 = load i8, i8* %BRANCH_TAKEN
  %2525 = icmp eq i8 %2524, 1
  br i1 %2525, label %block_400c21, label %block_400c4e
}

; Function Attrs: noinline
define %struct.Memory* @sub_400450__dl_relocate_static_pie(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400450:
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
define %struct.Memory* @sub_400740_Uniform11(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400740:
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
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
  %42 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %43 = load i64, i64* %PC
  %44 = add i64 %43, 8
  store i64 %44, i64* %PC
  %45 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_400ef0__rodata_type* @seg_400ef0__rodata to i64), i64 8) to float*)
  %46 = bitcast i8* %42 to float*
  store float %45, float* %46, align 1, !tbaa !2453
  %47 = getelementptr inbounds i8, i8* %42, i64 4
  %48 = bitcast i8* %47 to float*
  store float 0.000000e+00, float* %48, align 1, !tbaa !2453
  %49 = getelementptr inbounds i8, i8* %42, i64 8
  %50 = bitcast i8* %49 to float*
  store float 0.000000e+00, float* %50, align 1, !tbaa !2453
  %51 = getelementptr inbounds i8, i8* %42, i64 12
  %52 = bitcast i8* %51 to float*
  store float 0.000000e+00, float* %52, align 1, !tbaa !2453
  %53 = load i64, i64* %RBP
  %54 = sub i64 %53, 8
  %55 = load i64, i64* %RDI
  %56 = load i64, i64* %PC
  %57 = add i64 %56, 4
  store i64 %57, i64* %PC
  %58 = inttoptr i64 %54 to i64*
  store i64 %55, i64* %58
  %59 = load i64, i64* %RBP
  %60 = sub i64 %59, 16
  %61 = load i64, i64* %RSI
  %62 = load i64, i64* %PC
  %63 = add i64 %62, 4
  store i64 %63, i64* %PC
  %64 = inttoptr i64 %60 to i64*
  store i64 %61, i64* %64
  %65 = load i64, i64* %RBP
  %66 = sub i64 %65, 8
  %67 = load i64, i64* %PC
  %68 = add i64 %67, 4
  store i64 %68, i64* %PC
  %69 = inttoptr i64 %66 to i64*
  %70 = load i64, i64* %69
  store i64 %70, i64* %RSI, align 8, !tbaa !2428
  %71 = load i64, i64* %RSI
  %72 = load i64, i64* %PC
  %73 = add i64 %72, 6
  store i64 %73, i64* %PC
  %74 = inttoptr i64 %71 to i32*
  %75 = load i32, i32* %74
  %76 = sext i32 %75 to i64
  %77 = mul nsw i64 %76, 4855
  %78 = trunc i64 %77 to i32
  %79 = and i64 %77, 4294967295
  store i64 %79, i64* %RAX, align 8, !tbaa !2428
  %80 = shl i64 %77, 32
  %81 = ashr exact i64 %80, 32
  %82 = icmp ne i64 %81, %77
  %83 = zext i1 %82 to i8
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %83, i8* %84, align 1, !tbaa !2434
  %85 = and i32 %78, 255
  %86 = call i32 @llvm.ctpop.i32(i32 %85) #17
  %87 = trunc i32 %86 to i8
  %88 = and i8 %87, 1
  %89 = xor i8 %88, 1
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %89, i8* %90, align 1, !tbaa !2447
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %91, align 1, !tbaa !2448
  %92 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %92, align 1, !tbaa !2449
  %93 = lshr i32 %78, 31
  %94 = trunc i32 %93 to i8
  %95 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %94, i8* %95, align 1, !tbaa !2450
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %83, i8* %96, align 1, !tbaa !2451
  %97 = load i64, i64* %RAX
  %98 = load i64, i64* %PC
  %99 = add i64 %98, 5
  store i64 %99, i64* %PC
  %100 = trunc i64 %97 to i32
  %101 = add i32 1731, %100
  %102 = zext i32 %101 to i64
  store i64 %102, i64* %RAX, align 8, !tbaa !2428
  %103 = icmp ult i32 %101, %100
  %104 = icmp ult i32 %101, 1731
  %105 = or i1 %103, %104
  %106 = zext i1 %105 to i8
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %106, i8* %107, align 1, !tbaa !2434
  %108 = and i32 %101, 255
  %109 = call i32 @llvm.ctpop.i32(i32 %108) #17
  %110 = trunc i32 %109 to i8
  %111 = and i8 %110, 1
  %112 = xor i8 %111, 1
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %112, i8* %113, align 1, !tbaa !2447
  %114 = xor i64 1731, %97
  %115 = trunc i64 %114 to i32
  %116 = xor i32 %115, %101
  %117 = lshr i32 %116, 4
  %118 = trunc i32 %117 to i8
  %119 = and i8 %118, 1
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %119, i8* %120, align 1, !tbaa !2448
  %121 = icmp eq i32 %101, 0
  %122 = zext i1 %121 to i8
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %122, i8* %123, align 1, !tbaa !2449
  %124 = lshr i32 %101, 31
  %125 = trunc i32 %124 to i8
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %125, i8* %126, align 1, !tbaa !2450
  %127 = lshr i32 %100, 31
  %128 = xor i32 %124, %127
  %129 = add nuw nsw i32 %128, %124
  %130 = icmp eq i32 %129, 2
  %131 = zext i1 %130 to i8
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %131, i8* %132, align 1, !tbaa !2451
  %133 = load i64, i64* %RAX
  %134 = load i64, i64* %PC
  %135 = add i64 %134, 5
  store i64 %135, i64* %PC
  %136 = and i64 8191, %133
  %137 = trunc i64 %136 to i32
  store i64 %136, i64* %RAX, align 8, !tbaa !2428
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %138, align 1, !tbaa !2434
  %139 = and i32 %137, 255
  %140 = call i32 @llvm.ctpop.i32(i32 %139) #17
  %141 = trunc i32 %140 to i8
  %142 = and i8 %141, 1
  %143 = xor i8 %142, 1
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %143, i8* %144, align 1, !tbaa !2447
  %145 = icmp eq i32 %137, 0
  %146 = zext i1 %145 to i8
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %146, i8* %147, align 1, !tbaa !2449
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %148, align 1, !tbaa !2450
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %149, align 1, !tbaa !2451
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %150, align 1, !tbaa !2448
  %151 = load i64, i64* %RBP
  %152 = sub i64 %151, 8
  %153 = load i64, i64* %PC
  %154 = add i64 %153, 4
  store i64 %154, i64* %PC
  %155 = inttoptr i64 %152 to i64*
  %156 = load i64, i64* %155
  store i64 %156, i64* %RSI, align 8, !tbaa !2428
  %157 = load i64, i64* %RSI
  %158 = load i32, i32* %EAX
  %159 = zext i32 %158 to i64
  %160 = load i64, i64* %PC
  %161 = add i64 %160, 2
  store i64 %161, i64* %PC
  %162 = inttoptr i64 %157 to i32*
  store i32 %158, i32* %162
  %163 = load i64, i64* %RBP
  %164 = sub i64 %163, 8
  %165 = load i64, i64* %PC
  %166 = add i64 %165, 4
  store i64 %166, i64* %PC
  %167 = inttoptr i64 %164 to i64*
  %168 = load i64, i64* %167
  store i64 %168, i64* %RSI, align 8, !tbaa !2428
  %169 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %170 = load i64, i64* %RSI
  %171 = load i64, i64* %PC
  %172 = add i64 %171, 4
  store i64 %172, i64* %PC
  %173 = bitcast i8* %169 to <2 x i32>*
  %174 = load <2 x i32>, <2 x i32>* %173, align 1
  %175 = getelementptr inbounds i8, i8* %169, i64 8
  %176 = bitcast i8* %175 to <2 x i32>*
  %177 = load <2 x i32>, <2 x i32>* %176, align 1
  %178 = inttoptr i64 %170 to i32*
  %179 = load i32, i32* %178
  %180 = sitofp i32 %179 to float
  %181 = bitcast i8* %169 to float*
  store float %180, float* %181, align 1, !tbaa !2453
  %182 = extractelement <2 x i32> %174, i32 1
  %183 = getelementptr inbounds i8, i8* %169, i64 4
  %184 = bitcast i8* %183 to i32*
  store i32 %182, i32* %184, align 1, !tbaa !2453
  %185 = extractelement <2 x i32> %177, i32 0
  %186 = bitcast i8* %175 to i32*
  store i32 %185, i32* %186, align 1, !tbaa !2453
  %187 = extractelement <2 x i32> %177, i32 1
  %188 = getelementptr inbounds i8, i8* %169, i64 12
  %189 = bitcast i8* %188 to i32*
  store i32 %187, i32* %189, align 1, !tbaa !2453
  %190 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %191 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %192 = bitcast %union.vec128_t* %XMM0 to i8*
  %193 = load i64, i64* %PC
  %194 = add i64 %193, 4
  store i64 %194, i64* %PC
  %195 = bitcast i8* %191 to <2 x float>*
  %196 = load <2 x float>, <2 x float>* %195, align 1
  %197 = getelementptr inbounds i8, i8* %191, i64 8
  %198 = bitcast i8* %197 to <2 x i32>*
  %199 = load <2 x i32>, <2 x i32>* %198, align 1
  %200 = bitcast i8* %192 to <2 x float>*
  %201 = load <2 x float>, <2 x float>* %200, align 1
  %202 = extractelement <2 x float> %196, i32 0
  %203 = extractelement <2 x float> %201, i32 0
  %204 = fdiv float %202, %203
  %205 = bitcast i8* %190 to float*
  store float %204, float* %205, align 1, !tbaa !2453
  %206 = bitcast <2 x float> %196 to <2 x i32>
  %207 = extractelement <2 x i32> %206, i32 1
  %208 = getelementptr inbounds i8, i8* %190, i64 4
  %209 = bitcast i8* %208 to i32*
  store i32 %207, i32* %209, align 1, !tbaa !2453
  %210 = extractelement <2 x i32> %199, i32 0
  %211 = getelementptr inbounds i8, i8* %190, i64 8
  %212 = bitcast i8* %211 to i32*
  store i32 %210, i32* %212, align 1, !tbaa !2453
  %213 = extractelement <2 x i32> %199, i32 1
  %214 = getelementptr inbounds i8, i8* %190, i64 12
  %215 = bitcast i8* %214 to i32*
  store i32 %213, i32* %215, align 1, !tbaa !2453
  %216 = load i64, i64* %RBP
  %217 = sub i64 %216, 16
  %218 = load i64, i64* %PC
  %219 = add i64 %218, 4
  store i64 %219, i64* %PC
  %220 = inttoptr i64 %217 to i64*
  %221 = load i64, i64* %220
  store i64 %221, i64* %RSI, align 8, !tbaa !2428
  %222 = load i64, i64* %RSI
  %223 = bitcast %union.vec128_t* %XMM1 to i8*
  %224 = load i64, i64* %PC
  %225 = add i64 %224, 4
  store i64 %225, i64* %PC
  %226 = bitcast i8* %223 to <2 x float>*
  %227 = load <2 x float>, <2 x float>* %226, align 1
  %228 = extractelement <2 x float> %227, i32 0
  %229 = inttoptr i64 %222 to float*
  store float %228, float* %229
  %230 = load i64, i64* %PC
  %231 = add i64 %230, 1
  store i64 %231, i64* %PC
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %233 = load i64, i64* %232, align 8, !tbaa !2428
  %234 = add i64 %233, 8
  %235 = inttoptr i64 %233 to i64*
  %236 = load i64, i64* %235
  store i64 %236, i64* %RBP, align 8, !tbaa !2428
  store i64 %234, i64* %232, align 8, !tbaa !2428
  %237 = load i64, i64* %PC
  %238 = add i64 %237, 1
  store i64 %238, i64* %PC
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %241 = load i64, i64* %240, align 8, !tbaa !2428
  %242 = inttoptr i64 %241 to i64*
  %243 = load i64, i64* %242
  store i64 %243, i64* %239, align 8, !tbaa !2428
  %244 = add i64 %241, 8
  store i64 %244, i64* %240, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_400570_Cos(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400570:
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
  %21 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %20, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %21 to %"class.std::bitset"*
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %23 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %22, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %23 to %"class.std::bitset"*
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %25 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %24, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %25 to %union.vec128_t*
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %27 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %26, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %27 to %union.vec128_t*
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %29 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %28, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %29 to %union.vec128_t*
  %30 = load i64, i64* %RBP
  %31 = load i64, i64* %PC
  %32 = add i64 %31, 1
  store i64 %32, i64* %PC
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %34 = load i64, i64* %33, align 8, !tbaa !2428
  %35 = add i64 %34, -8
  %36 = inttoptr i64 %35 to i64*
  store i64 %30, i64* %36
  store i64 %35, i64* %33, align 8, !tbaa !2428
  %37 = load i64, i64* %RSP
  %38 = load i64, i64* %PC
  %39 = add i64 %38, 3
  store i64 %39, i64* %PC
  store i64 %37, i64* %RBP, align 8, !tbaa !2428
  %40 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %41 = load i64, i64* %PC
  %42 = add i64 %41, 8
  store i64 %42, i64* %PC
  %43 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_400ef0__rodata_type* @seg_400ef0__rodata to i64), i64 4) to float*)
  %44 = bitcast i8* %40 to float*
  store float %43, float* %44, align 1, !tbaa !2453
  %45 = getelementptr inbounds i8, i8* %40, i64 4
  %46 = bitcast i8* %45 to float*
  store float 0.000000e+00, float* %46, align 1, !tbaa !2453
  %47 = getelementptr inbounds i8, i8* %40, i64 8
  %48 = bitcast i8* %47 to float*
  store float 0.000000e+00, float* %48, align 1, !tbaa !2453
  %49 = getelementptr inbounds i8, i8* %40, i64 12
  %50 = bitcast i8* %49 to float*
  store float 0.000000e+00, float* %50, align 1, !tbaa !2453
  %51 = load i64, i64* %RBP
  %52 = sub i64 %51, 4
  %53 = bitcast %union.vec128_t* %XMM0 to i8*
  %54 = load i64, i64* %PC
  %55 = add i64 %54, 5
  store i64 %55, i64* %PC
  %56 = bitcast i8* %53 to <2 x float>*
  %57 = load <2 x float>, <2 x float>* %56, align 1
  %58 = extractelement <2 x float> %57, i32 0
  %59 = inttoptr i64 %52 to float*
  store float %58, float* %59
  %60 = load i64, i64* %RBP
  %61 = sub i64 %60, 16
  %62 = bitcast %union.vec128_t* %XMM1 to i8*
  %63 = load i64, i64* %PC
  %64 = add i64 %63, 5
  store i64 %64, i64* %PC
  %65 = bitcast i8* %62 to <2 x float>*
  %66 = load <2 x float>, <2 x float>* %65, align 1
  %67 = extractelement <2 x float> %66, i32 0
  %68 = inttoptr i64 %61 to float*
  store float %67, float* %68
  %69 = load i64, i64* %RBP
  %70 = sub i64 %69, 12
  %71 = load i64, i64* %PC
  %72 = add i64 %71, 7
  store i64 %72, i64* %PC
  %73 = inttoptr i64 %70 to i32*
  store i32 1, i32* %73
  %74 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %75 = load i64, i64* %RBP
  %76 = sub i64 %75, 4
  %77 = load i64, i64* %PC
  %78 = add i64 %77, 5
  store i64 %78, i64* %PC
  %79 = inttoptr i64 %76 to float*
  %80 = load float, float* %79
  %81 = bitcast i8* %74 to float*
  store float %80, float* %81, align 1, !tbaa !2453
  %82 = getelementptr inbounds i8, i8* %74, i64 4
  %83 = bitcast i8* %82 to float*
  store float 0.000000e+00, float* %83, align 1, !tbaa !2453
  %84 = getelementptr inbounds i8, i8* %74, i64 8
  %85 = bitcast i8* %84 to float*
  store float 0.000000e+00, float* %85, align 1, !tbaa !2453
  %86 = getelementptr inbounds i8, i8* %74, i64 12
  %87 = bitcast i8* %86 to float*
  store float 0.000000e+00, float* %87, align 1, !tbaa !2453
  %88 = load i64, i64* %RBP
  %89 = sub i64 %88, 20
  %90 = bitcast %union.vec128_t* %XMM0 to i8*
  %91 = load i64, i64* %PC
  %92 = add i64 %91, 5
  store i64 %92, i64* %PC
  %93 = bitcast i8* %90 to <2 x float>*
  %94 = load <2 x float>, <2 x float>* %93, align 1
  %95 = extractelement <2 x float> %94, i32 0
  %96 = inttoptr i64 %89 to float*
  store float %95, float* %96
  %97 = load i64, i64* %RBP
  %98 = sub i64 %97, 8
  %99 = load i64, i64* %PC
  %100 = add i64 %99, 7
  store i64 %100, i64* %PC
  %101 = inttoptr i64 %98 to i32*
  store i32 2, i32* %101
  br label %block_40059e

block_40059e:                                     ; preds = %block_400621, %block_400570
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400570 ], [ %MEMORY.2, %block_400621 ]
  %102 = load i64, i64* %RBP
  %103 = sub i64 %102, 8
  %104 = load i64, i64* %PC
  %105 = add i64 %104, 4
  store i64 %105, i64* %PC
  %106 = inttoptr i64 %103 to i32*
  %107 = load i32, i32* %106
  %108 = sub i32 %107, 10
  %109 = icmp ult i32 %107, 10
  %110 = zext i1 %109 to i8
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %110, i8* %111, align 1, !tbaa !2434
  %112 = and i32 %108, 255
  %113 = call i32 @llvm.ctpop.i32(i32 %112) #17
  %114 = trunc i32 %113 to i8
  %115 = and i8 %114, 1
  %116 = xor i8 %115, 1
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %116, i8* %117, align 1, !tbaa !2447
  %118 = xor i32 %107, 10
  %119 = xor i32 %118, %108
  %120 = lshr i32 %119, 4
  %121 = trunc i32 %120 to i8
  %122 = and i8 %121, 1
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %122, i8* %123, align 1, !tbaa !2448
  %124 = icmp eq i32 %108, 0
  %125 = zext i1 %124 to i8
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %125, i8* %126, align 1, !tbaa !2449
  %127 = lshr i32 %108, 31
  %128 = trunc i32 %127 to i8
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %128, i8* %129, align 1, !tbaa !2450
  %130 = lshr i32 %107, 31
  %131 = xor i32 %127, %130
  %132 = add nuw nsw i32 %131, %130
  %133 = icmp eq i32 %132, 2
  %134 = zext i1 %133 to i8
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %134, i8* %135, align 1, !tbaa !2451
  %136 = load i64, i64* %PC
  %137 = add i64 %136, 146
  %138 = load i64, i64* %PC
  %139 = add i64 %138, 6
  %140 = load i64, i64* %PC
  %141 = add i64 %140, 6
  store i64 %141, i64* %PC
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %143 = load i8, i8* %142, align 1, !tbaa !2449
  %144 = icmp eq i8 %143, 0
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %146 = load i8, i8* %145, align 1, !tbaa !2450
  %147 = icmp ne i8 %146, 0
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %149 = load i8, i8* %148, align 1, !tbaa !2451
  %150 = icmp ne i8 %149, 0
  %151 = xor i1 %147, %150
  %152 = xor i1 %151, true
  %153 = and i1 %144, %152
  %154 = zext i1 %153 to i8
  store i8 %154, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %156 = select i1 %153, i64 %137, i64 %139
  store i64 %156, i64* %155, align 8, !tbaa !2428
  %157 = load i8, i8* %BRANCH_TAKEN
  %158 = icmp eq i8 %157, 1
  br i1 %158, label %block_400634, label %block_4005a8

block_40061c:                                     ; preds = %block_400600, %block_4005df
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_400600 ], [ %MEMORY.0, %block_4005df ]
  %159 = load i64, i64* %PC
  %160 = add i64 %159, 5
  %161 = load i64, i64* %PC
  %162 = add i64 %161, 5
  store i64 %162, i64* %PC
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %160, i64* %163, align 8, !tbaa !2428
  br label %block_400621

block_400634:                                     ; preds = %block_40059e
  %164 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %165 = load i64, i64* %RBP
  %166 = sub i64 %165, 16
  %167 = load i64, i64* %PC
  %168 = add i64 %167, 5
  store i64 %168, i64* %PC
  %169 = inttoptr i64 %166 to float*
  %170 = load float, float* %169
  %171 = bitcast i8* %164 to float*
  store float %170, float* %171, align 1, !tbaa !2453
  %172 = getelementptr inbounds i8, i8* %164, i64 4
  %173 = bitcast i8* %172 to float*
  store float 0.000000e+00, float* %173, align 1, !tbaa !2453
  %174 = getelementptr inbounds i8, i8* %164, i64 8
  %175 = bitcast i8* %174 to float*
  store float 0.000000e+00, float* %175, align 1, !tbaa !2453
  %176 = getelementptr inbounds i8, i8* %164, i64 12
  %177 = bitcast i8* %176 to float*
  store float 0.000000e+00, float* %177, align 1, !tbaa !2453
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

block_4005d0:                                     ; preds = %block_4005a8
  %193 = load i64, i64* %RBP
  %194 = sub i64 %193, 8
  %195 = load i64, i64* %PC
  %196 = add i64 %195, 3
  store i64 %196, i64* %PC
  %197 = inttoptr i64 %194 to i32*
  %198 = load i32, i32* %197
  %199 = zext i32 %198 to i64
  store i64 %199, i64* %RAX, align 8, !tbaa !2428
  %200 = load i64, i64* %RAX
  %201 = load i64, i64* %PC
  %202 = add i64 %201, 3
  store i64 %202, i64* %PC
  %203 = and i64 3, %200
  %204 = trunc i64 %203 to i32
  store i64 %203, i64* %RAX, align 8, !tbaa !2428
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %205, align 1, !tbaa !2434
  %206 = and i32 %204, 255
  %207 = call i32 @llvm.ctpop.i32(i32 %206) #17
  %208 = trunc i32 %207 to i8
  %209 = and i8 %208, 1
  %210 = xor i8 %209, 1
  %211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %210, i8* %211, align 1, !tbaa !2447
  %212 = icmp eq i32 %204, 0
  %213 = zext i1 %212 to i8
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %213, i8* %214, align 1, !tbaa !2449
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %215, align 1, !tbaa !2450
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %216, align 1, !tbaa !2451
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %217, align 1, !tbaa !2448
  %218 = load i32, i32* %EAX
  %219 = zext i32 %218 to i64
  %220 = load i64, i64* %PC
  %221 = add i64 %220, 3
  store i64 %221, i64* %PC
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %222, align 1, !tbaa !2434
  %223 = and i32 %218, 255
  %224 = call i32 @llvm.ctpop.i32(i32 %223) #17
  %225 = trunc i32 %224 to i8
  %226 = and i8 %225, 1
  %227 = xor i8 %226, 1
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %227, i8* %228, align 1, !tbaa !2447
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %229, align 1, !tbaa !2448
  %230 = icmp eq i32 %218, 0
  %231 = zext i1 %230 to i8
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %231, i8* %232, align 1, !tbaa !2449
  %233 = lshr i32 %218, 31
  %234 = trunc i32 %233 to i8
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %234, i8* %235, align 1, !tbaa !2450
  %236 = lshr i32 %218, 31
  %237 = xor i32 %233, %236
  %238 = add nuw nsw i32 %237, %236
  %239 = icmp eq i32 %238, 2
  %240 = zext i1 %239 to i8
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %240, i8* %241, align 1, !tbaa !2451
  %242 = load i64, i64* %PC
  %243 = add i64 %242, 39
  %244 = load i64, i64* %PC
  %245 = add i64 %244, 6
  %246 = load i64, i64* %PC
  %247 = add i64 %246, 6
  store i64 %247, i64* %PC
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %249 = load i8, i8* %248, align 1, !tbaa !2449
  %250 = icmp eq i8 %249, 0
  %251 = zext i1 %250 to i8
  store i8 %251, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %253 = select i1 %250, i64 %243, i64 %245
  store i64 %253, i64* %252, align 8, !tbaa !2428
  %254 = load i8, i8* %BRANCH_TAKEN
  %255 = icmp eq i8 %254, 1
  %256 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %257 = load i64, i64* %RBP
  %258 = sub i64 %257, 16
  %259 = load i64, i64* %PC
  %260 = add i64 %259, 5
  store i64 %260, i64* %PC
  %261 = inttoptr i64 %258 to float*
  %262 = load float, float* %261
  %263 = bitcast i8* %256 to float*
  store float %262, float* %263, align 1, !tbaa !2453
  %264 = getelementptr inbounds i8, i8* %256, i64 4
  %265 = bitcast i8* %264 to float*
  store float 0.000000e+00, float* %265, align 1, !tbaa !2453
  %266 = getelementptr inbounds i8, i8* %256, i64 8
  %267 = bitcast i8* %266 to float*
  store float 0.000000e+00, float* %267, align 1, !tbaa !2453
  %268 = getelementptr inbounds i8, i8* %256, i64 12
  %269 = bitcast i8* %268 to float*
  store float 0.000000e+00, float* %269, align 1, !tbaa !2453
  %270 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %271 = load i64, i64* %RBP
  %272 = sub i64 %271, 20
  %273 = load i64, i64* %PC
  %274 = add i64 %273, 5
  store i64 %274, i64* %PC
  %275 = inttoptr i64 %272 to float*
  %276 = load float, float* %275
  %277 = bitcast i8* %270 to float*
  store float %276, float* %277, align 1, !tbaa !2453
  %278 = getelementptr inbounds i8, i8* %270, i64 4
  %279 = bitcast i8* %278 to float*
  store float 0.000000e+00, float* %279, align 1, !tbaa !2453
  %280 = getelementptr inbounds i8, i8* %270, i64 8
  %281 = bitcast i8* %280 to float*
  store float 0.000000e+00, float* %281, align 1, !tbaa !2453
  %282 = getelementptr inbounds i8, i8* %270, i64 12
  %283 = bitcast i8* %282 to float*
  store float 0.000000e+00, float* %283, align 1, !tbaa !2453
  %284 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %285 = load i64, i64* %RBP
  %286 = sub i64 %285, 12
  %287 = load i64, i64* %PC
  %288 = add i64 %287, 5
  store i64 %288, i64* %PC
  %289 = bitcast i8* %284 to <2 x i32>*
  %290 = load <2 x i32>, <2 x i32>* %289, align 1
  %291 = getelementptr inbounds i8, i8* %284, i64 8
  %292 = bitcast i8* %291 to <2 x i32>*
  %293 = load <2 x i32>, <2 x i32>* %292, align 1
  %294 = inttoptr i64 %286 to i32*
  %295 = load i32, i32* %294
  %296 = sitofp i32 %295 to float
  %297 = bitcast i8* %284 to float*
  store float %296, float* %297, align 1, !tbaa !2453
  %298 = extractelement <2 x i32> %290, i32 1
  %299 = getelementptr inbounds i8, i8* %284, i64 4
  %300 = bitcast i8* %299 to i32*
  store i32 %298, i32* %300, align 1, !tbaa !2453
  %301 = extractelement <2 x i32> %293, i32 0
  %302 = bitcast i8* %291 to i32*
  store i32 %301, i32* %302, align 1, !tbaa !2453
  %303 = extractelement <2 x i32> %293, i32 1
  %304 = getelementptr inbounds i8, i8* %284, i64 12
  %305 = bitcast i8* %304 to i32*
  store i32 %303, i32* %305, align 1, !tbaa !2453
  %306 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %307 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %308 = bitcast %union.vec128_t* %XMM2 to i8*
  %309 = load i64, i64* %PC
  %310 = add i64 %309, 4
  store i64 %310, i64* %PC
  %311 = bitcast i8* %307 to <2 x float>*
  %312 = load <2 x float>, <2 x float>* %311, align 1
  %313 = getelementptr inbounds i8, i8* %307, i64 8
  %314 = bitcast i8* %313 to <2 x i32>*
  %315 = load <2 x i32>, <2 x i32>* %314, align 1
  %316 = bitcast i8* %308 to <2 x float>*
  %317 = load <2 x float>, <2 x float>* %316, align 1
  %318 = extractelement <2 x float> %312, i32 0
  %319 = extractelement <2 x float> %317, i32 0
  %320 = fdiv float %318, %319
  %321 = bitcast i8* %306 to float*
  store float %320, float* %321, align 1, !tbaa !2453
  %322 = bitcast <2 x float> %312 to <2 x i32>
  %323 = extractelement <2 x i32> %322, i32 1
  %324 = getelementptr inbounds i8, i8* %306, i64 4
  %325 = bitcast i8* %324 to i32*
  store i32 %323, i32* %325, align 1, !tbaa !2453
  %326 = extractelement <2 x i32> %315, i32 0
  %327 = getelementptr inbounds i8, i8* %306, i64 8
  %328 = bitcast i8* %327 to i32*
  store i32 %326, i32* %328, align 1, !tbaa !2453
  %329 = extractelement <2 x i32> %315, i32 1
  %330 = getelementptr inbounds i8, i8* %306, i64 12
  %331 = bitcast i8* %330 to i32*
  store i32 %329, i32* %331, align 1, !tbaa !2453
  %332 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %333 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %334 = bitcast %union.vec128_t* %XMM1 to i8*
  %335 = load i64, i64* %PC
  %336 = add i64 %335, 4
  store i64 %336, i64* %PC
  br i1 %255, label %block_400600, label %block_4005df

block_4005df:                                     ; preds = %block_4005d0
  %337 = bitcast i8* %333 to <2 x float>*
  %338 = load <2 x float>, <2 x float>* %337, align 1
  %339 = getelementptr inbounds i8, i8* %333, i64 8
  %340 = bitcast i8* %339 to <2 x i32>*
  %341 = load <2 x i32>, <2 x i32>* %340, align 1
  %342 = bitcast i8* %334 to <2 x float>*
  %343 = load <2 x float>, <2 x float>* %342, align 1
  %344 = extractelement <2 x float> %338, i32 0
  %345 = extractelement <2 x float> %343, i32 0
  %346 = fadd float %344, %345
  %347 = bitcast i8* %332 to float*
  store float %346, float* %347, align 1, !tbaa !2453
  %348 = bitcast <2 x float> %338 to <2 x i32>
  %349 = extractelement <2 x i32> %348, i32 1
  %350 = getelementptr inbounds i8, i8* %332, i64 4
  %351 = bitcast i8* %350 to i32*
  store i32 %349, i32* %351, align 1, !tbaa !2453
  %352 = extractelement <2 x i32> %341, i32 0
  %353 = getelementptr inbounds i8, i8* %332, i64 8
  %354 = bitcast i8* %353 to i32*
  store i32 %352, i32* %354, align 1, !tbaa !2453
  %355 = extractelement <2 x i32> %341, i32 1
  %356 = getelementptr inbounds i8, i8* %332, i64 12
  %357 = bitcast i8* %356 to i32*
  store i32 %355, i32* %357, align 1, !tbaa !2453
  %358 = load i64, i64* %RBP
  %359 = sub i64 %358, 16
  %360 = bitcast %union.vec128_t* %XMM0 to i8*
  %361 = load i64, i64* %PC
  %362 = add i64 %361, 5
  store i64 %362, i64* %PC
  %363 = bitcast i8* %360 to <2 x float>*
  %364 = load <2 x float>, <2 x float>* %363, align 1
  %365 = extractelement <2 x float> %364, i32 0
  %366 = inttoptr i64 %359 to float*
  store float %365, float* %366
  %367 = load i64, i64* %PC
  %368 = add i64 %367, 33
  %369 = load i64, i64* %PC
  %370 = add i64 %369, 5
  store i64 %370, i64* %PC
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %368, i64* %371, align 8, !tbaa !2428
  br label %block_40061c

block_4005a8:                                     ; preds = %block_40059e
  %372 = load i64, i64* %RBP
  %373 = sub i64 %372, 12
  %374 = load i64, i64* %PC
  %375 = add i64 %374, 3
  store i64 %375, i64* %PC
  %376 = inttoptr i64 %373 to i32*
  %377 = load i32, i32* %376
  %378 = zext i32 %377 to i64
  store i64 %378, i64* %RAX, align 8, !tbaa !2428
  %379 = load i64, i64* %RAX
  %380 = load i64, i64* %RBP
  %381 = sub i64 %380, 8
  %382 = load i64, i64* %PC
  %383 = add i64 %382, 4
  store i64 %383, i64* %PC
  %384 = inttoptr i64 %381 to i32*
  %385 = load i32, i32* %384
  %386 = shl i64 %379, 32
  %387 = ashr exact i64 %386, 32
  %388 = sext i32 %385 to i64
  %389 = mul nsw i64 %388, %387
  %390 = trunc i64 %389 to i32
  %391 = and i64 %389, 4294967295
  store i64 %391, i64* %RAX, align 8, !tbaa !2428
  %392 = shl i64 %389, 32
  %393 = ashr exact i64 %392, 32
  %394 = icmp ne i64 %393, %389
  %395 = zext i1 %394 to i8
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %395, i8* %396, align 1, !tbaa !2434
  %397 = and i32 %390, 255
  %398 = call i32 @llvm.ctpop.i32(i32 %397) #17
  %399 = trunc i32 %398 to i8
  %400 = and i8 %399, 1
  %401 = xor i8 %400, 1
  %402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %401, i8* %402, align 1, !tbaa !2447
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %403, align 1, !tbaa !2448
  %404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %404, align 1, !tbaa !2449
  %405 = lshr i32 %390, 31
  %406 = trunc i32 %405 to i8
  %407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %406, i8* %407, align 1, !tbaa !2450
  %408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %395, i8* %408, align 1, !tbaa !2451
  %409 = load i64, i64* %RBP
  %410 = sub i64 %409, 12
  %411 = load i32, i32* %EAX
  %412 = zext i32 %411 to i64
  %413 = load i64, i64* %PC
  %414 = add i64 %413, 3
  store i64 %414, i64* %PC
  %415 = inttoptr i64 %410 to i32*
  store i32 %411, i32* %415
  %416 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %417 = load i64, i64* %RBP
  %418 = sub i64 %417, 20
  %419 = load i64, i64* %PC
  %420 = add i64 %419, 5
  store i64 %420, i64* %PC
  %421 = inttoptr i64 %418 to float*
  %422 = load float, float* %421
  %423 = bitcast i8* %416 to float*
  store float %422, float* %423, align 1, !tbaa !2453
  %424 = getelementptr inbounds i8, i8* %416, i64 4
  %425 = bitcast i8* %424 to float*
  store float 0.000000e+00, float* %425, align 1, !tbaa !2453
  %426 = getelementptr inbounds i8, i8* %416, i64 8
  %427 = bitcast i8* %426 to float*
  store float 0.000000e+00, float* %427, align 1, !tbaa !2453
  %428 = getelementptr inbounds i8, i8* %416, i64 12
  %429 = bitcast i8* %428 to float*
  store float 0.000000e+00, float* %429, align 1, !tbaa !2453
  %430 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %431 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %432 = load i64, i64* %RBP
  %433 = sub i64 %432, 4
  %434 = load i64, i64* %PC
  %435 = add i64 %434, 5
  store i64 %435, i64* %PC
  %436 = bitcast i8* %431 to <2 x float>*
  %437 = load <2 x float>, <2 x float>* %436, align 1
  %438 = getelementptr inbounds i8, i8* %431, i64 8
  %439 = bitcast i8* %438 to <2 x i32>*
  %440 = load <2 x i32>, <2 x i32>* %439, align 1
  %441 = inttoptr i64 %433 to float*
  %442 = load float, float* %441
  %443 = extractelement <2 x float> %437, i32 0
  %444 = fmul float %443, %442
  %445 = bitcast i8* %430 to float*
  store float %444, float* %445, align 1, !tbaa !2453
  %446 = bitcast <2 x float> %437 to <2 x i32>
  %447 = extractelement <2 x i32> %446, i32 1
  %448 = getelementptr inbounds i8, i8* %430, i64 4
  %449 = bitcast i8* %448 to i32*
  store i32 %447, i32* %449, align 1, !tbaa !2453
  %450 = extractelement <2 x i32> %440, i32 0
  %451 = getelementptr inbounds i8, i8* %430, i64 8
  %452 = bitcast i8* %451 to i32*
  store i32 %450, i32* %452, align 1, !tbaa !2453
  %453 = extractelement <2 x i32> %440, i32 1
  %454 = getelementptr inbounds i8, i8* %430, i64 12
  %455 = bitcast i8* %454 to i32*
  store i32 %453, i32* %455, align 1, !tbaa !2453
  %456 = load i64, i64* %RBP
  %457 = sub i64 %456, 20
  %458 = bitcast %union.vec128_t* %XMM0 to i8*
  %459 = load i64, i64* %PC
  %460 = add i64 %459, 5
  store i64 %460, i64* %PC
  %461 = bitcast i8* %458 to <2 x float>*
  %462 = load <2 x float>, <2 x float>* %461, align 1
  %463 = extractelement <2 x float> %462, i32 0
  %464 = inttoptr i64 %457 to float*
  store float %463, float* %464
  %465 = load i64, i64* %RBP
  %466 = sub i64 %465, 8
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
  %475 = and i64 1, %472
  %476 = trunc i64 %475 to i32
  store i64 %475, i64* %RAX, align 8, !tbaa !2428
  %477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %477, align 1, !tbaa !2434
  %478 = and i32 %476, 255
  %479 = call i32 @llvm.ctpop.i32(i32 %478) #17
  %480 = trunc i32 %479 to i8
  %481 = and i8 %480, 1
  %482 = xor i8 %481, 1
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %482, i8* %483, align 1, !tbaa !2447
  %484 = icmp eq i32 %476, 0
  %485 = zext i1 %484 to i8
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %485, i8* %486, align 1, !tbaa !2449
  %487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %487, align 1, !tbaa !2450
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %488, align 1, !tbaa !2451
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %489, align 1, !tbaa !2448
  %490 = load i32, i32* %EAX
  %491 = zext i32 %490 to i64
  %492 = load i64, i64* %PC
  %493 = add i64 %492, 3
  store i64 %493, i64* %PC
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %494, align 1, !tbaa !2434
  %495 = and i32 %490, 255
  %496 = call i32 @llvm.ctpop.i32(i32 %495) #17
  %497 = trunc i32 %496 to i8
  %498 = and i8 %497, 1
  %499 = xor i8 %498, 1
  %500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %499, i8* %500, align 1, !tbaa !2447
  %501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %501, align 1, !tbaa !2448
  %502 = icmp eq i32 %490, 0
  %503 = zext i1 %502 to i8
  %504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %503, i8* %504, align 1, !tbaa !2449
  %505 = lshr i32 %490, 31
  %506 = trunc i32 %505 to i8
  %507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %506, i8* %507, align 1, !tbaa !2450
  %508 = lshr i32 %490, 31
  %509 = xor i32 %505, %508
  %510 = add nuw nsw i32 %509, %508
  %511 = icmp eq i32 %510, 2
  %512 = zext i1 %511 to i8
  %513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %512, i8* %513, align 1, !tbaa !2451
  %514 = load i64, i64* %PC
  %515 = add i64 %514, 87
  %516 = load i64, i64* %PC
  %517 = add i64 %516, 6
  %518 = load i64, i64* %PC
  %519 = add i64 %518, 6
  store i64 %519, i64* %PC
  %520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %521 = load i8, i8* %520, align 1, !tbaa !2449
  %522 = icmp eq i8 %521, 0
  %523 = zext i1 %522 to i8
  store i8 %523, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %525 = select i1 %522, i64 %515, i64 %517
  store i64 %525, i64* %524, align 8, !tbaa !2428
  %526 = load i8, i8* %BRANCH_TAKEN
  %527 = icmp eq i8 %526, 1
  br i1 %527, label %block_400621, label %block_4005d0

block_400621:                                     ; preds = %block_4005a8, %block_40061c
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.0, %block_4005a8 ], [ %MEMORY.1, %block_40061c ]
  %528 = load i64, i64* %PC
  %529 = add i64 %528, 5
  %530 = load i64, i64* %PC
  %531 = add i64 %530, 5
  store i64 %531, i64* %PC
  %532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %529, i64* %532, align 8, !tbaa !2428
  %533 = load i64, i64* %RBP
  %534 = sub i64 %533, 8
  %535 = load i64, i64* %PC
  %536 = add i64 %535, 3
  store i64 %536, i64* %PC
  %537 = inttoptr i64 %534 to i32*
  %538 = load i32, i32* %537
  %539 = zext i32 %538 to i64
  store i64 %539, i64* %RAX, align 8, !tbaa !2428
  %540 = load i64, i64* %RAX
  %541 = load i64, i64* %PC
  %542 = add i64 %541, 3
  store i64 %542, i64* %PC
  %543 = trunc i64 %540 to i32
  %544 = add i32 1, %543
  %545 = zext i32 %544 to i64
  store i64 %545, i64* %RAX, align 8, !tbaa !2428
  %546 = icmp ult i32 %544, %543
  %547 = icmp ult i32 %544, 1
  %548 = or i1 %546, %547
  %549 = zext i1 %548 to i8
  %550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %549, i8* %550, align 1, !tbaa !2434
  %551 = and i32 %544, 255
  %552 = call i32 @llvm.ctpop.i32(i32 %551) #17
  %553 = trunc i32 %552 to i8
  %554 = and i8 %553, 1
  %555 = xor i8 %554, 1
  %556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %555, i8* %556, align 1, !tbaa !2447
  %557 = xor i64 1, %540
  %558 = trunc i64 %557 to i32
  %559 = xor i32 %558, %544
  %560 = lshr i32 %559, 4
  %561 = trunc i32 %560 to i8
  %562 = and i8 %561, 1
  %563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %562, i8* %563, align 1, !tbaa !2448
  %564 = icmp eq i32 %544, 0
  %565 = zext i1 %564 to i8
  %566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %565, i8* %566, align 1, !tbaa !2449
  %567 = lshr i32 %544, 31
  %568 = trunc i32 %567 to i8
  %569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %568, i8* %569, align 1, !tbaa !2450
  %570 = lshr i32 %543, 31
  %571 = xor i32 %567, %570
  %572 = add nuw nsw i32 %571, %567
  %573 = icmp eq i32 %572, 2
  %574 = zext i1 %573 to i8
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %574, i8* %575, align 1, !tbaa !2451
  %576 = load i64, i64* %RBP
  %577 = sub i64 %576, 8
  %578 = load i32, i32* %EAX
  %579 = zext i32 %578 to i64
  %580 = load i64, i64* %PC
  %581 = add i64 %580, 3
  store i64 %581, i64* %PC
  %582 = inttoptr i64 %577 to i32*
  store i32 %578, i32* %582
  %583 = load i64, i64* %PC
  %584 = sub i64 %583, 145
  %585 = load i64, i64* %PC
  %586 = add i64 %585, 5
  store i64 %586, i64* %PC
  %587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %584, i64* %587, align 8, !tbaa !2428
  br label %block_40059e

block_400600:                                     ; preds = %block_4005d0
  %588 = bitcast i8* %333 to <2 x float>*
  %589 = load <2 x float>, <2 x float>* %588, align 1
  %590 = getelementptr inbounds i8, i8* %333, i64 8
  %591 = bitcast i8* %590 to <2 x i32>*
  %592 = load <2 x i32>, <2 x i32>* %591, align 1
  %593 = bitcast i8* %334 to <2 x float>*
  %594 = load <2 x float>, <2 x float>* %593, align 1
  %595 = extractelement <2 x float> %589, i32 0
  %596 = extractelement <2 x float> %594, i32 0
  %597 = fsub float %595, %596
  %598 = bitcast i8* %332 to float*
  store float %597, float* %598, align 1, !tbaa !2453
  %599 = bitcast <2 x float> %589 to <2 x i32>
  %600 = extractelement <2 x i32> %599, i32 1
  %601 = getelementptr inbounds i8, i8* %332, i64 4
  %602 = bitcast i8* %601 to i32*
  store i32 %600, i32* %602, align 1, !tbaa !2453
  %603 = extractelement <2 x i32> %592, i32 0
  %604 = getelementptr inbounds i8, i8* %332, i64 8
  %605 = bitcast i8* %604 to i32*
  store i32 %603, i32* %605, align 1, !tbaa !2453
  %606 = extractelement <2 x i32> %592, i32 1
  %607 = getelementptr inbounds i8, i8* %332, i64 12
  %608 = bitcast i8* %607 to i32*
  store i32 %606, i32* %608, align 1, !tbaa !2453
  %609 = load i64, i64* %RBP
  %610 = sub i64 %609, 16
  %611 = bitcast %union.vec128_t* %XMM0 to i8*
  %612 = load i64, i64* %PC
  %613 = add i64 %612, 5
  store i64 %613, i64* %PC
  %614 = bitcast i8* %611 to <2 x float>*
  %615 = load <2 x float>, <2 x float>* %614, align 1
  %616 = extractelement <2 x float> %615, i32 0
  %617 = inttoptr i64 %610 to float*
  store float %616, float* %617
  br label %block_40061c
}

; Function Attrs: noinline
define %struct.Memory* @sub_400670_Printcomplex(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %EAX = bitcast %union.anon* %12 to i32*
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 5
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %ECX = bitcast %union.anon* %15 to i32*
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %17 = getelementptr inbounds %struct.GPR, %struct.GPR* %16, i32 0, i32 7
  %18 = getelementptr inbounds %struct.Reg, %struct.Reg* %17, i32 0, i32 0
  %EDX = bitcast %union.anon* %18 to i32*
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %20 = getelementptr inbounds %struct.GPR, %struct.GPR* %19, i32 0, i32 9
  %21 = getelementptr inbounds %struct.Reg, %struct.Reg* %20, i32 0, i32 0
  %ESI = bitcast %union.anon* %21 to i32*
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %23 = getelementptr inbounds %struct.GPR, %struct.GPR* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.Reg, %struct.Reg* %23, i32 0, i32 0
  %RAX = bitcast %union.anon* %24 to i64*
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %26 = getelementptr inbounds %struct.GPR, %struct.GPR* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.Reg, %struct.Reg* %26, i32 0, i32 0
  %RCX = bitcast %union.anon* %27 to i64*
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %29 = getelementptr inbounds %struct.GPR, %struct.GPR* %28, i32 0, i32 7
  %30 = getelementptr inbounds %struct.Reg, %struct.Reg* %29, i32 0, i32 0
  %RDX = bitcast %union.anon* %30 to i64*
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
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %44 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %43, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %44 to %"class.std::bitset"*
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %46 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %45, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %46 to %"class.std::bitset"*
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
  %59 = add i64 %58, 4
  store i64 %59, i64* %PC
  %60 = sub i64 %57, 48
  store i64 %60, i64* %RSP, align 8, !tbaa !2428
  %61 = icmp ult i64 %57, 48
  %62 = zext i1 %61 to i8
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %62, i8* %63, align 1, !tbaa !2434
  %64 = trunc i64 %60 to i32
  %65 = and i32 %64, 255
  %66 = call i32 @llvm.ctpop.i32(i32 %65) #17
  %67 = trunc i32 %66 to i8
  %68 = and i8 %67, 1
  %69 = xor i8 %68, 1
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %69, i8* %70, align 1, !tbaa !2447
  %71 = xor i64 48, %57
  %72 = xor i64 %71, %60
  %73 = lshr i64 %72, 4
  %74 = trunc i64 %73 to i8
  %75 = and i8 %74, 1
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %75, i8* %76, align 1, !tbaa !2448
  %77 = icmp eq i64 %60, 0
  %78 = zext i1 %77 to i8
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %78, i8* %79, align 1, !tbaa !2449
  %80 = lshr i64 %60, 63
  %81 = trunc i64 %80 to i8
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %81, i8* %82, align 1, !tbaa !2450
  %83 = lshr i64 %57, 63
  %84 = xor i64 %80, %83
  %85 = add nuw nsw i64 %84, %83
  %86 = icmp eq i64 %85, 2
  %87 = zext i1 %86 to i8
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %87, i8* %88, align 1, !tbaa !2451
  %89 = load i64, i64* %PC
  %90 = add i64 %89, 10
  store i64 %90, i64* %PC
  store i64 add (i64 ptrtoint (%seg_400ef0__rodata_type* @seg_400ef0__rodata to i64), i64 40), i64* %RAX, align 8, !tbaa !2428
  %91 = load i64, i64* %RBP
  %92 = sub i64 %91, 8
  %93 = load i64, i64* %RDI
  %94 = load i64, i64* %PC
  %95 = add i64 %94, 4
  store i64 %95, i64* %PC
  %96 = inttoptr i64 %92 to i64*
  store i64 %93, i64* %96
  %97 = load i64, i64* %RBP
  %98 = sub i64 %97, 12
  %99 = load i32, i32* %ESI
  %100 = zext i32 %99 to i64
  %101 = load i64, i64* %PC
  %102 = add i64 %101, 3
  store i64 %102, i64* %PC
  %103 = inttoptr i64 %98 to i32*
  store i32 %99, i32* %103
  %104 = load i64, i64* %RBP
  %105 = sub i64 %104, 16
  %106 = load i32, i32* %EDX
  %107 = zext i32 %106 to i64
  %108 = load i64, i64* %PC
  %109 = add i64 %108, 3
  store i64 %109, i64* %PC
  %110 = inttoptr i64 %105 to i32*
  store i32 %106, i32* %110
  %111 = load i64, i64* %RBP
  %112 = sub i64 %111, 20
  %113 = load i32, i32* %ECX
  %114 = zext i32 %113 to i64
  %115 = load i64, i64* %PC
  %116 = add i64 %115, 3
  store i64 %116, i64* %PC
  %117 = inttoptr i64 %112 to i32*
  store i32 %113, i32* %117
  %118 = load i64, i64* %RAX
  %119 = load i64, i64* %PC
  %120 = add i64 %119, 3
  store i64 %120, i64* %PC
  store i64 %118, i64* %RDI, align 8, !tbaa !2428
  %121 = load i64, i64* %PC
  %122 = add i64 %121, 2
  store i64 %122, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2452
  %123 = load i64, i64* %PC
  %124 = sub i64 %123, 644
  %125 = load i64, i64* %PC
  %126 = add i64 %125, 5
  %127 = load i64, i64* %PC
  %128 = add i64 %127, 5
  store i64 %128, i64* %PC
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %130 = load i64, i64* %129, align 8, !tbaa !2428
  %131 = add i64 %130, -8
  %132 = inttoptr i64 %131 to i64*
  store i64 %126, i64* %132
  store i64 %131, i64* %129, align 8, !tbaa !2428
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %124, i64* %133, align 8, !tbaa !2428
  %134 = load i64, i64* %PC
  %135 = call %struct.Memory* @ext_619238_printf(%struct.State* %0, i64 %134, %struct.Memory* %2)
  %136 = load i64, i64* %RBP
  %137 = sub i64 %136, 12
  %138 = load i64, i64* %PC
  %139 = add i64 %138, 3
  store i64 %139, i64* %PC
  %140 = inttoptr i64 %137 to i32*
  %141 = load i32, i32* %140
  %142 = zext i32 %141 to i64
  store i64 %142, i64* %RCX, align 8, !tbaa !2428
  %143 = load i64, i64* %RBP
  %144 = sub i64 %143, 24
  %145 = load i32, i32* %ECX
  %146 = zext i32 %145 to i64
  %147 = load i64, i64* %PC
  %148 = add i64 %147, 3
  store i64 %148, i64* %PC
  %149 = inttoptr i64 %144 to i32*
  store i32 %145, i32* %149
  %150 = load i64, i64* %RBP
  %151 = sub i64 %150, 28
  %152 = load i32, i32* %EAX
  %153 = zext i32 %152 to i64
  %154 = load i64, i64* %PC
  %155 = add i64 %154, 3
  store i64 %155, i64* %PC
  %156 = inttoptr i64 %151 to i32*
  store i32 %152, i32* %156
  br label %block_4006a2

block_400732:                                     ; preds = %block_4006a2
  %157 = load i64, i64* %RSP
  %158 = load i64, i64* %PC
  %159 = add i64 %158, 4
  store i64 %159, i64* %PC
  %160 = add i64 48, %157
  store i64 %160, i64* %RSP, align 8, !tbaa !2428
  %161 = icmp ult i64 %160, %157
  %162 = icmp ult i64 %160, 48
  %163 = or i1 %161, %162
  %164 = zext i1 %163 to i8
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %164, i8* %165, align 1, !tbaa !2434
  %166 = trunc i64 %160 to i32
  %167 = and i32 %166, 255
  %168 = call i32 @llvm.ctpop.i32(i32 %167) #17
  %169 = trunc i32 %168 to i8
  %170 = and i8 %169, 1
  %171 = xor i8 %170, 1
  %172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %171, i8* %172, align 1, !tbaa !2447
  %173 = xor i64 48, %157
  %174 = xor i64 %173, %160
  %175 = lshr i64 %174, 4
  %176 = trunc i64 %175 to i8
  %177 = and i8 %176, 1
  %178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %177, i8* %178, align 1, !tbaa !2448
  %179 = icmp eq i64 %160, 0
  %180 = zext i1 %179 to i8
  %181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %180, i8* %181, align 1, !tbaa !2449
  %182 = lshr i64 %160, 63
  %183 = trunc i64 %182 to i8
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %183, i8* %184, align 1, !tbaa !2450
  %185 = lshr i64 %157, 63
  %186 = xor i64 %182, %185
  %187 = add nuw nsw i64 %186, %182
  %188 = icmp eq i64 %187, 2
  %189 = zext i1 %188 to i8
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %189, i8* %190, align 1, !tbaa !2451
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
  %199 = add i64 %198, 1
  store i64 %199, i64* %PC
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %202 = load i64, i64* %201, align 8, !tbaa !2428
  %203 = inttoptr i64 %202 to i64*
  %204 = load i64, i64* %203
  store i64 %204, i64* %200, align 8, !tbaa !2428
  %205 = add i64 %202, 8
  store i64 %205, i64* %201, align 8, !tbaa !2428
  ret %struct.Memory* %423

block_4006a2:                                     ; preds = %block_4006a2, %block_400670
  %MEMORY.0 = phi %struct.Memory* [ %135, %block_400670 ], [ %423, %block_4006a2 ]
  %206 = load i64, i64* %PC
  %207 = add i64 %206, 10
  store i64 %207, i64* %PC
  store i64 add (i64 ptrtoint (%seg_400ef0__rodata_type* @seg_400ef0__rodata to i64), i64 42), i64* %RDI, align 8, !tbaa !2428
  %208 = load i64, i64* %RBP
  %209 = sub i64 %208, 8
  %210 = load i64, i64* %PC
  %211 = add i64 %210, 4
  store i64 %211, i64* %PC
  %212 = inttoptr i64 %209 to i64*
  %213 = load i64, i64* %212
  store i64 %213, i64* %RAX, align 8, !tbaa !2428
  %214 = load i64, i64* %RBP
  %215 = sub i64 %214, 24
  %216 = load i64, i64* %PC
  %217 = add i64 %216, 4
  store i64 %217, i64* %PC
  %218 = inttoptr i64 %215 to i32*
  %219 = load i32, i32* %218
  %220 = sext i32 %219 to i64
  store i64 %220, i64* %RCX, align 8, !tbaa !2428
  %221 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %222 = load i64, i64* %RAX
  %223 = load i64, i64* %RCX
  %224 = mul i64 %223, 8
  %225 = add i64 %224, %222
  %226 = load i64, i64* %PC
  %227 = add i64 %226, 5
  store i64 %227, i64* %PC
  %228 = inttoptr i64 %225 to float*
  %229 = load float, float* %228
  %230 = fpext float %229 to double
  %231 = bitcast i8* %221 to double*
  store double %230, double* %231, align 1, !tbaa !2455
  %232 = load i64, i64* %RBP
  %233 = sub i64 %232, 8
  %234 = load i64, i64* %PC
  %235 = add i64 %234, 4
  store i64 %235, i64* %PC
  %236 = inttoptr i64 %233 to i64*
  %237 = load i64, i64* %236
  store i64 %237, i64* %RAX, align 8, !tbaa !2428
  %238 = load i64, i64* %RBP
  %239 = sub i64 %238, 24
  %240 = load i64, i64* %PC
  %241 = add i64 %240, 4
  store i64 %241, i64* %PC
  %242 = inttoptr i64 %239 to i32*
  %243 = load i32, i32* %242
  %244 = sext i32 %243 to i64
  store i64 %244, i64* %RCX, align 8, !tbaa !2428
  %245 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %246 = load i64, i64* %RAX
  %247 = load i64, i64* %RCX
  %248 = mul i64 %247, 8
  %249 = add i64 %246, 4
  %250 = add i64 %249, %248
  %251 = load i64, i64* %PC
  %252 = add i64 %251, 6
  store i64 %252, i64* %PC
  %253 = inttoptr i64 %250 to float*
  %254 = load float, float* %253
  %255 = fpext float %254 to double
  %256 = bitcast i8* %245 to double*
  store double %255, double* %256, align 1, !tbaa !2455
  %257 = load i64, i64* %PC
  %258 = add i64 %257, 2
  store i64 %258, i64* %PC
  store i8 2, i8* %AL, align 1, !tbaa !2452
  %259 = load i64, i64* %PC
  %260 = sub i64 %259, 697
  %261 = load i64, i64* %PC
  %262 = add i64 %261, 5
  %263 = load i64, i64* %PC
  %264 = add i64 %263, 5
  store i64 %264, i64* %PC
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %266 = load i64, i64* %265, align 8, !tbaa !2428
  %267 = add i64 %266, -8
  %268 = inttoptr i64 %267 to i64*
  store i64 %262, i64* %268
  store i64 %267, i64* %265, align 8, !tbaa !2428
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %260, i64* %269, align 8, !tbaa !2428
  %270 = load i64, i64* %PC
  %271 = call %struct.Memory* @ext_619238_printf(%struct.State* %0, i64 %270, %struct.Memory* %MEMORY.0)
  %272 = load i64, i64* %PC
  %273 = add i64 %272, 10
  store i64 %273, i64* %PC
  store i64 add (i64 ptrtoint (%seg_400ef0__rodata_type* @seg_400ef0__rodata to i64), i64 42), i64* %RDI, align 8, !tbaa !2428
  %274 = load i64, i64* %RBP
  %275 = sub i64 %274, 24
  %276 = load i64, i64* %PC
  %277 = add i64 %276, 3
  store i64 %277, i64* %PC
  %278 = inttoptr i64 %275 to i32*
  %279 = load i32, i32* %278
  %280 = zext i32 %279 to i64
  store i64 %280, i64* %RDX, align 8, !tbaa !2428
  %281 = load i64, i64* %RDX
  %282 = load i64, i64* %RBP
  %283 = sub i64 %282, 20
  %284 = load i64, i64* %PC
  %285 = add i64 %284, 3
  store i64 %285, i64* %PC
  %286 = trunc i64 %281 to i32
  %287 = inttoptr i64 %283 to i32*
  %288 = load i32, i32* %287
  %289 = add i32 %288, %286
  %290 = zext i32 %289 to i64
  store i64 %290, i64* %RDX, align 8, !tbaa !2428
  %291 = icmp ult i32 %289, %286
  %292 = icmp ult i32 %289, %288
  %293 = or i1 %291, %292
  %294 = zext i1 %293 to i8
  %295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %294, i8* %295, align 1, !tbaa !2434
  %296 = and i32 %289, 255
  %297 = call i32 @llvm.ctpop.i32(i32 %296) #17
  %298 = trunc i32 %297 to i8
  %299 = and i8 %298, 1
  %300 = xor i8 %299, 1
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %300, i8* %301, align 1, !tbaa !2447
  %302 = xor i32 %288, %286
  %303 = xor i32 %302, %289
  %304 = lshr i32 %303, 4
  %305 = trunc i32 %304 to i8
  %306 = and i8 %305, 1
  %307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %306, i8* %307, align 1, !tbaa !2448
  %308 = icmp eq i32 %289, 0
  %309 = zext i1 %308 to i8
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %309, i8* %310, align 1, !tbaa !2449
  %311 = lshr i32 %289, 31
  %312 = trunc i32 %311 to i8
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %312, i8* %313, align 1, !tbaa !2450
  %314 = lshr i32 %286, 31
  %315 = lshr i32 %288, 31
  %316 = xor i32 %311, %314
  %317 = xor i32 %311, %315
  %318 = add nuw nsw i32 %316, %317
  %319 = icmp eq i32 %318, 2
  %320 = zext i1 %319 to i8
  %321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %320, i8* %321, align 1, !tbaa !2451
  %322 = load i64, i64* %RBP
  %323 = sub i64 %322, 24
  %324 = load i32, i32* %EDX
  %325 = zext i32 %324 to i64
  %326 = load i64, i64* %PC
  %327 = add i64 %326, 3
  store i64 %327, i64* %PC
  %328 = inttoptr i64 %323 to i32*
  store i32 %324, i32* %328
  %329 = load i64, i64* %RBP
  %330 = sub i64 %329, 8
  %331 = load i64, i64* %PC
  %332 = add i64 %331, 4
  store i64 %332, i64* %PC
  %333 = inttoptr i64 %330 to i64*
  %334 = load i64, i64* %333
  store i64 %334, i64* %RCX, align 8, !tbaa !2428
  %335 = load i64, i64* %RBP
  %336 = sub i64 %335, 24
  %337 = load i64, i64* %PC
  %338 = add i64 %337, 4
  store i64 %338, i64* %PC
  %339 = inttoptr i64 %336 to i32*
  %340 = load i32, i32* %339
  %341 = sext i32 %340 to i64
  store i64 %341, i64* %RSI, align 8, !tbaa !2428
  %342 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %343 = load i64, i64* %RCX
  %344 = load i64, i64* %RSI
  %345 = mul i64 %344, 8
  %346 = add i64 %345, %343
  %347 = load i64, i64* %PC
  %348 = add i64 %347, 5
  store i64 %348, i64* %PC
  %349 = inttoptr i64 %346 to float*
  %350 = load float, float* %349
  %351 = fpext float %350 to double
  %352 = bitcast i8* %342 to double*
  store double %351, double* %352, align 1, !tbaa !2455
  %353 = load i64, i64* %RBP
  %354 = sub i64 %353, 8
  %355 = load i64, i64* %PC
  %356 = add i64 %355, 4
  store i64 %356, i64* %PC
  %357 = inttoptr i64 %354 to i64*
  %358 = load i64, i64* %357
  store i64 %358, i64* %RCX, align 8, !tbaa !2428
  %359 = load i64, i64* %RBP
  %360 = sub i64 %359, 24
  %361 = load i64, i64* %PC
  %362 = add i64 %361, 4
  store i64 %362, i64* %PC
  %363 = inttoptr i64 %360 to i32*
  %364 = load i32, i32* %363
  %365 = sext i32 %364 to i64
  store i64 %365, i64* %RSI, align 8, !tbaa !2428
  %366 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %367 = load i64, i64* %RCX
  %368 = load i64, i64* %RSI
  %369 = mul i64 %368, 8
  %370 = add i64 %367, 4
  %371 = add i64 %370, %369
  %372 = load i64, i64* %PC
  %373 = add i64 %372, 6
  store i64 %373, i64* %PC
  %374 = inttoptr i64 %371 to float*
  %375 = load float, float* %374
  %376 = fpext float %375 to double
  %377 = bitcast i8* %366 to double*
  store double %376, double* %377, align 1, !tbaa !2455
  %378 = load i64, i64* %RBP
  %379 = sub i64 %378, 32
  %380 = load i32, i32* %EAX
  %381 = zext i32 %380 to i64
  %382 = load i64, i64* %PC
  %383 = add i64 %382, 3
  store i64 %383, i64* %PC
  %384 = inttoptr i64 %379 to i32*
  store i32 %380, i32* %384
  %385 = load i64, i64* %PC
  %386 = add i64 %385, 2
  store i64 %386, i64* %PC
  store i8 2, i8* %AL, align 1, !tbaa !2452
  %387 = load i64, i64* %PC
  %388 = sub i64 %387, 753
  %389 = load i64, i64* %PC
  %390 = add i64 %389, 5
  %391 = load i64, i64* %PC
  %392 = add i64 %391, 5
  store i64 %392, i64* %PC
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %394 = load i64, i64* %393, align 8, !tbaa !2428
  %395 = add i64 %394, -8
  %396 = inttoptr i64 %395 to i64*
  store i64 %390, i64* %396
  store i64 %395, i64* %393, align 8, !tbaa !2428
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %388, i64* %397, align 8, !tbaa !2428
  %398 = load i64, i64* %PC
  %399 = call %struct.Memory* @ext_619238_printf(%struct.State* %0, i64 %398, %struct.Memory* %271)
  %400 = load i64, i64* %PC
  %401 = add i64 %400, 10
  store i64 %401, i64* %PC
  store i64 add (i64 ptrtoint (%seg_400ef0__rodata_type* @seg_400ef0__rodata to i64), i64 40), i64* %RDI, align 8, !tbaa !2428
  %402 = load i64, i64* %RBP
  %403 = sub i64 %402, 36
  %404 = load i32, i32* %EAX
  %405 = zext i32 %404 to i64
  %406 = load i64, i64* %PC
  %407 = add i64 %406, 3
  store i64 %407, i64* %PC
  %408 = inttoptr i64 %403 to i32*
  store i32 %404, i32* %408
  %409 = load i64, i64* %PC
  %410 = add i64 %409, 2
  store i64 %410, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2452
  %411 = load i64, i64* %PC
  %412 = sub i64 %411, 773
  %413 = load i64, i64* %PC
  %414 = add i64 %413, 5
  %415 = load i64, i64* %PC
  %416 = add i64 %415, 5
  store i64 %416, i64* %PC
  %417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %418 = load i64, i64* %417, align 8, !tbaa !2428
  %419 = add i64 %418, -8
  %420 = inttoptr i64 %419 to i64*
  store i64 %414, i64* %420
  store i64 %419, i64* %417, align 8, !tbaa !2428
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %412, i64* %421, align 8, !tbaa !2428
  %422 = load i64, i64* %PC
  %423 = call %struct.Memory* @ext_619238_printf(%struct.State* %0, i64 %422, %struct.Memory* %399)
  %424 = load i64, i64* %RBP
  %425 = sub i64 %424, 24
  %426 = load i64, i64* %PC
  %427 = add i64 %426, 3
  store i64 %427, i64* %PC
  %428 = inttoptr i64 %425 to i32*
  %429 = load i32, i32* %428
  %430 = zext i32 %429 to i64
  store i64 %430, i64* %RDX, align 8, !tbaa !2428
  %431 = load i64, i64* %RDX
  %432 = load i64, i64* %RBP
  %433 = sub i64 %432, 20
  %434 = load i64, i64* %PC
  %435 = add i64 %434, 3
  store i64 %435, i64* %PC
  %436 = trunc i64 %431 to i32
  %437 = inttoptr i64 %433 to i32*
  %438 = load i32, i32* %437
  %439 = add i32 %438, %436
  %440 = zext i32 %439 to i64
  store i64 %440, i64* %RDX, align 8, !tbaa !2428
  %441 = icmp ult i32 %439, %436
  %442 = icmp ult i32 %439, %438
  %443 = or i1 %441, %442
  %444 = zext i1 %443 to i8
  %445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %444, i8* %445, align 1, !tbaa !2434
  %446 = and i32 %439, 255
  %447 = call i32 @llvm.ctpop.i32(i32 %446) #17
  %448 = trunc i32 %447 to i8
  %449 = and i8 %448, 1
  %450 = xor i8 %449, 1
  %451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %450, i8* %451, align 1, !tbaa !2447
  %452 = xor i32 %438, %436
  %453 = xor i32 %452, %439
  %454 = lshr i32 %453, 4
  %455 = trunc i32 %454 to i8
  %456 = and i8 %455, 1
  %457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %456, i8* %457, align 1, !tbaa !2448
  %458 = icmp eq i32 %439, 0
  %459 = zext i1 %458 to i8
  %460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %459, i8* %460, align 1, !tbaa !2449
  %461 = lshr i32 %439, 31
  %462 = trunc i32 %461 to i8
  %463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %462, i8* %463, align 1, !tbaa !2450
  %464 = lshr i32 %436, 31
  %465 = lshr i32 %438, 31
  %466 = xor i32 %461, %464
  %467 = xor i32 %461, %465
  %468 = add nuw nsw i32 %466, %467
  %469 = icmp eq i32 %468, 2
  %470 = zext i1 %469 to i8
  %471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %470, i8* %471, align 1, !tbaa !2451
  %472 = load i64, i64* %RBP
  %473 = sub i64 %472, 24
  %474 = load i32, i32* %EDX
  %475 = zext i32 %474 to i64
  %476 = load i64, i64* %PC
  %477 = add i64 %476, 3
  store i64 %477, i64* %PC
  %478 = inttoptr i64 %473 to i32*
  store i32 %474, i32* %478
  %479 = load i64, i64* %RBP
  %480 = sub i64 %479, 40
  %481 = load i32, i32* %EAX
  %482 = zext i32 %481 to i64
  %483 = load i64, i64* %PC
  %484 = add i64 %483, 3
  store i64 %484, i64* %PC
  %485 = inttoptr i64 %480 to i32*
  store i32 %481, i32* %485
  %486 = load i64, i64* %RBP
  %487 = sub i64 %486, 24
  %488 = load i64, i64* %PC
  %489 = add i64 %488, 3
  store i64 %489, i64* %PC
  %490 = inttoptr i64 %487 to i32*
  %491 = load i32, i32* %490
  %492 = zext i32 %491 to i64
  store i64 %492, i64* %RAX, align 8, !tbaa !2428
  %493 = load i32, i32* %EAX
  %494 = zext i32 %493 to i64
  %495 = load i64, i64* %RBP
  %496 = sub i64 %495, 16
  %497 = load i64, i64* %PC
  %498 = add i64 %497, 3
  store i64 %498, i64* %PC
  %499 = inttoptr i64 %496 to i32*
  %500 = load i32, i32* %499
  %501 = sub i32 %493, %500
  %502 = icmp ult i32 %493, %500
  %503 = zext i1 %502 to i8
  %504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %503, i8* %504, align 1, !tbaa !2434
  %505 = and i32 %501, 255
  %506 = call i32 @llvm.ctpop.i32(i32 %505) #17
  %507 = trunc i32 %506 to i8
  %508 = and i8 %507, 1
  %509 = xor i8 %508, 1
  %510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %509, i8* %510, align 1, !tbaa !2447
  %511 = xor i32 %500, %493
  %512 = xor i32 %511, %501
  %513 = lshr i32 %512, 4
  %514 = trunc i32 %513 to i8
  %515 = and i8 %514, 1
  %516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %515, i8* %516, align 1, !tbaa !2448
  %517 = icmp eq i32 %501, 0
  %518 = zext i1 %517 to i8
  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %518, i8* %519, align 1, !tbaa !2449
  %520 = lshr i32 %501, 31
  %521 = trunc i32 %520 to i8
  %522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %521, i8* %522, align 1, !tbaa !2450
  %523 = lshr i32 %493, 31
  %524 = lshr i32 %500, 31
  %525 = xor i32 %524, %523
  %526 = xor i32 %520, %523
  %527 = add nuw nsw i32 %526, %525
  %528 = icmp eq i32 %527, 2
  %529 = zext i1 %528 to i8
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %529, i8* %530, align 1, !tbaa !2451
  %531 = load i64, i64* %PC
  %532 = sub i64 %531, 138
  %533 = load i64, i64* %PC
  %534 = add i64 %533, 6
  %535 = load i64, i64* %PC
  %536 = add i64 %535, 6
  store i64 %536, i64* %PC
  %537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %538 = load i8, i8* %537, align 1, !tbaa !2449
  %539 = icmp ne i8 %538, 0
  %540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %541 = load i8, i8* %540, align 1, !tbaa !2450
  %542 = icmp ne i8 %541, 0
  %543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %544 = load i8, i8* %543, align 1, !tbaa !2451
  %545 = icmp ne i8 %544, 0
  %546 = xor i1 %542, %545
  %547 = or i1 %539, %546
  %548 = zext i1 %547 to i8
  store i8 %548, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %550 = select i1 %547, i64 %532, i64 %534
  store i64 %550, i64* %549, align 8, !tbaa !2428
  %551 = load i8, i8* %BRANCH_TAKEN
  %552 = icmp eq i8 %551, 1
  br i1 %552, label %block_4006a2, label %block_400732
}

; Function Attrs: noinline
define %struct.Memory* @sub_400500_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400500:
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
  %35 = tail call %struct.Memory* @sub_400490_register_tm_clones(%struct.State* %0, i64 %34, %struct.Memory* %2)
  ret %struct.Memory* %35
}

; Function Attrs: noinline
define %struct.Memory* @sub_400640_Min0(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400640:
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %ESI = bitcast %union.anon* %11 to i32*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %EDI = bitcast %union.anon* %14 to i32*
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %16 = getelementptr inbounds %struct.GPR, %struct.GPR* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.Reg, %struct.Reg* %16, i32 0, i32 0
  %RAX = bitcast %union.anon* %17 to i64*
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %19 = getelementptr inbounds %struct.GPR, %struct.GPR* %18, i32 0, i32 9
  %20 = getelementptr inbounds %struct.Reg, %struct.Reg* %19, i32 0, i32 0
  %RSI = bitcast %union.anon* %20 to i64*
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %22 = getelementptr inbounds %struct.GPR, %struct.GPR* %21, i32 0, i32 13
  %23 = getelementptr inbounds %struct.Reg, %struct.Reg* %22, i32 0, i32 0
  %RSP = bitcast %union.anon* %23 to i64*
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %25 = getelementptr inbounds %struct.GPR, %struct.GPR* %24, i32 0, i32 15
  %26 = getelementptr inbounds %struct.Reg, %struct.Reg* %25, i32 0, i32 0
  %RBP = bitcast %union.anon* %26 to i64*
  %27 = load i64, i64* %RBP
  %28 = load i64, i64* %PC
  %29 = add i64 %28, 1
  store i64 %29, i64* %PC
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %31 = load i64, i64* %30, align 8, !tbaa !2428
  %32 = add i64 %31, -8
  %33 = inttoptr i64 %32 to i64*
  store i64 %27, i64* %33
  store i64 %32, i64* %30, align 8, !tbaa !2428
  %34 = load i64, i64* %RSP
  %35 = load i64, i64* %PC
  %36 = add i64 %35, 3
  store i64 %36, i64* %PC
  store i64 %34, i64* %RBP, align 8, !tbaa !2428
  %37 = load i64, i64* %RBP
  %38 = sub i64 %37, 8
  %39 = load i32, i32* %EDI
  %40 = zext i32 %39 to i64
  %41 = load i64, i64* %PC
  %42 = add i64 %41, 3
  store i64 %42, i64* %PC
  %43 = inttoptr i64 %38 to i32*
  store i32 %39, i32* %43
  %44 = load i64, i64* %RBP
  %45 = sub i64 %44, 12
  %46 = load i32, i32* %ESI
  %47 = zext i32 %46 to i64
  %48 = load i64, i64* %PC
  %49 = add i64 %48, 3
  store i64 %49, i64* %PC
  %50 = inttoptr i64 %45 to i32*
  store i32 %46, i32* %50
  %51 = load i64, i64* %RBP
  %52 = sub i64 %51, 8
  %53 = load i64, i64* %PC
  %54 = add i64 %53, 3
  store i64 %54, i64* %PC
  %55 = inttoptr i64 %52 to i32*
  %56 = load i32, i32* %55
  %57 = zext i32 %56 to i64
  store i64 %57, i64* %RSI, align 8, !tbaa !2428
  %58 = load i32, i32* %ESI
  %59 = zext i32 %58 to i64
  %60 = load i64, i64* %RBP
  %61 = sub i64 %60, 12
  %62 = load i64, i64* %PC
  %63 = add i64 %62, 3
  store i64 %63, i64* %PC
  %64 = inttoptr i64 %61 to i32*
  %65 = load i32, i32* %64
  %66 = sub i32 %58, %65
  %67 = icmp ult i32 %58, %65
  %68 = zext i1 %67 to i8
  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %68, i8* %69, align 1, !tbaa !2434
  %70 = and i32 %66, 255
  %71 = call i32 @llvm.ctpop.i32(i32 %70) #17
  %72 = trunc i32 %71 to i8
  %73 = and i8 %72, 1
  %74 = xor i8 %73, 1
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %74, i8* %75, align 1, !tbaa !2447
  %76 = xor i32 %65, %58
  %77 = xor i32 %76, %66
  %78 = lshr i32 %77, 4
  %79 = trunc i32 %78 to i8
  %80 = and i8 %79, 1
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %80, i8* %81, align 1, !tbaa !2448
  %82 = icmp eq i32 %66, 0
  %83 = zext i1 %82 to i8
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %83, i8* %84, align 1, !tbaa !2449
  %85 = lshr i32 %66, 31
  %86 = trunc i32 %85 to i8
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %86, i8* %87, align 1, !tbaa !2450
  %88 = lshr i32 %58, 31
  %89 = lshr i32 %65, 31
  %90 = xor i32 %89, %88
  %91 = xor i32 %85, %88
  %92 = add nuw nsw i32 %91, %90
  %93 = icmp eq i32 %92, 2
  %94 = zext i1 %93 to i8
  %95 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %94, i8* %95, align 1, !tbaa !2451
  %96 = load i64, i64* %PC
  %97 = add i64 %96, 17
  %98 = load i64, i64* %PC
  %99 = add i64 %98, 6
  %100 = load i64, i64* %PC
  %101 = add i64 %100, 6
  store i64 %101, i64* %PC
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %103 = load i8, i8* %102, align 1, !tbaa !2450
  %104 = icmp ne i8 %103, 0
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %106 = load i8, i8* %105, align 1, !tbaa !2451
  %107 = icmp ne i8 %106, 0
  %108 = xor i1 %104, %107
  %109 = xor i1 %108, true
  %110 = zext i1 %109 to i8
  store i8 %110, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %112 = select i1 %108, i64 %99, i64 %97
  store i64 %112, i64* %111, align 8, !tbaa !2428
  %113 = load i8, i8* %BRANCH_TAKEN
  %114 = icmp eq i8 %113, 1
  %115 = load i64, i64* %RBP
  br i1 %114, label %block_400661, label %block_400656

block_400656:                                     ; preds = %block_400640
  %116 = sub i64 %115, 8
  %117 = load i64, i64* %PC
  %118 = add i64 %117, 3
  store i64 %118, i64* %PC
  %119 = inttoptr i64 %116 to i32*
  %120 = load i32, i32* %119
  %121 = zext i32 %120 to i64
  store i64 %121, i64* %RAX, align 8, !tbaa !2428
  %122 = load i64, i64* %RBP
  %123 = sub i64 %122, 4
  %124 = load i32, i32* %EAX
  %125 = zext i32 %124 to i64
  %126 = load i64, i64* %PC
  %127 = add i64 %126, 3
  store i64 %127, i64* %PC
  %128 = inttoptr i64 %123 to i32*
  store i32 %124, i32* %128
  %129 = load i64, i64* %PC
  %130 = add i64 %129, 11
  %131 = load i64, i64* %PC
  %132 = add i64 %131, 5
  store i64 %132, i64* %PC
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %130, i64* %133, align 8, !tbaa !2428
  br label %block_400667

block_400667:                                     ; preds = %block_400661, %block_400656
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400661 ], [ %2, %block_400656 ]
  %134 = load i64, i64* %RBP
  %135 = sub i64 %134, 4
  %136 = load i64, i64* %PC
  %137 = add i64 %136, 3
  store i64 %137, i64* %PC
  %138 = inttoptr i64 %135 to i32*
  %139 = load i32, i32* %138
  %140 = zext i32 %139 to i64
  store i64 %140, i64* %RAX, align 8, !tbaa !2428
  %141 = load i64, i64* %PC
  %142 = add i64 %141, 1
  store i64 %142, i64* %PC
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %144 = load i64, i64* %143, align 8, !tbaa !2428
  %145 = add i64 %144, 8
  %146 = inttoptr i64 %144 to i64*
  %147 = load i64, i64* %146
  store i64 %147, i64* %RBP, align 8, !tbaa !2428
  store i64 %145, i64* %143, align 8, !tbaa !2428
  %148 = load i64, i64* %PC
  %149 = add i64 %148, 1
  store i64 %149, i64* %PC
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %152 = load i64, i64* %151, align 8, !tbaa !2428
  %153 = inttoptr i64 %152 to i64*
  %154 = load i64, i64* %153
  store i64 %154, i64* %150, align 8, !tbaa !2428
  %155 = add i64 %152, 8
  store i64 %155, i64* %151, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_400661:                                     ; preds = %block_400640
  %156 = sub i64 %115, 12
  %157 = load i64, i64* %PC
  %158 = add i64 %157, 3
  store i64 %158, i64* %PC
  %159 = inttoptr i64 %156 to i32*
  %160 = load i32, i32* %159
  %161 = zext i32 %160 to i64
  store i64 %161, i64* %RAX, align 8, !tbaa !2428
  %162 = load i64, i64* %RBP
  %163 = sub i64 %162, 4
  %164 = load i32, i32* %EAX
  %165 = zext i32 %164 to i64
  %166 = load i64, i64* %PC
  %167 = add i64 %166, 3
  store i64 %167, i64* %PC
  %168 = inttoptr i64 %163 to i32*
  store i32 %164, i32* %168
  br label %block_400667
}

; Function Attrs: noinline
define %struct.Memory* @sub_400ee0___libc_csu_fini(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400ee0:
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
define %struct.Memory* @sub_4004d0___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4004d0:
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
  store i8 0, i8* %15, align 1, !tbaa !2434
  %16 = zext i8 %14 to i32
  %17 = call i32 @llvm.ctpop.i32(i32 %16) #17
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1, !tbaa !2447
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %22, align 1, !tbaa !2448
  %23 = icmp eq i8 %14, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1, !tbaa !2449
  %26 = lshr i8 %14, 7
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1, !tbaa !2450
  %28 = lshr i8 %14, 7
  %29 = xor i8 %26, %28
  %30 = add nuw nsw i8 %29, %28
  %31 = icmp eq i8 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1, !tbaa !2451
  %34 = load i64, i64* %PC
  %35 = add i64 %34, 25
  %36 = load i64, i64* %PC
  %37 = add i64 %36, 2
  %38 = load i64, i64* %PC
  %39 = add i64 %38, 2
  store i64 %39, i64* %PC
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %41 = load i8, i8* %40, align 1, !tbaa !2449
  %42 = icmp eq i8 %41, 0
  %43 = zext i1 %42 to i8
  store i8 %43, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %45 = select i1 %42, i64 %35, i64 %37
  store i64 %45, i64* %44, align 8, !tbaa !2428
  %46 = load i8, i8* %BRANCH_TAKEN
  %47 = icmp eq i8 %46, 1
  br i1 %47, label %block_4004f0, label %block_4004d9

block_4004f0:                                     ; preds = %block_4004d0
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

block_4004d9:                                     ; preds = %block_4004d0
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
  %78 = call %struct.Memory* @sub_400460_deregister_tm_clones(%struct.State* %0, i64 %77, %struct.Memory* %2)
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
define %struct.Memory* @sub_400490_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400490:
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
  store i8 %41, i8* %42, align 1, !tbaa !2434
  %43 = trunc i64 %39 to i32
  %44 = and i32 %43, 255
  %45 = call i32 @llvm.ctpop.i32(i32 %44) #17
  %46 = trunc i32 %45 to i8
  %47 = and i8 %46, 1
  %48 = xor i8 %47, 1
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %48, i8* %49, align 1, !tbaa !2447
  %50 = xor i64 ptrtoint (%__bss_start_type* @__bss_start to i64), %36
  %51 = xor i64 %50, %39
  %52 = lshr i64 %51, 4
  %53 = trunc i64 %52 to i8
  %54 = and i8 %53, 1
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %54, i8* %55, align 1, !tbaa !2448
  %56 = icmp eq i64 %39, 0
  %57 = zext i1 %56 to i8
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %57, i8* %58, align 1, !tbaa !2449
  %59 = lshr i64 %39, 63
  %60 = trunc i64 %59 to i8
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %60, i8* %61, align 1, !tbaa !2450
  %62 = lshr i64 %36, 63
  %63 = xor i64 lshr (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 63), %62
  %64 = xor i64 %59, %62
  %65 = add nuw nsw i64 %64, %63
  %66 = icmp eq i64 %65, 2
  %67 = zext i1 %66 to i8
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %67, i8* %68, align 1, !tbaa !2451
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
  %83 = call i32 @llvm.ctpop.i32(i32 %82) #17
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
  %109 = call i32 @llvm.ctpop.i32(i32 %108) #17
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
  store i8 %127, i8* %128, align 1, !tbaa !2434
  %129 = trunc i64 %123 to i32
  %130 = and i32 %129, 255
  %131 = call i32 @llvm.ctpop.i32(i32 %130) #17
  %132 = trunc i32 %131 to i8
  %133 = and i8 %132, 1
  %134 = xor i8 %133, 1
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %134, i8* %135, align 1, !tbaa !2447
  %136 = xor i64 %120, %119
  %137 = xor i64 %136, %123
  %138 = lshr i64 %137, 4
  %139 = trunc i64 %138 to i8
  %140 = and i8 %139, 1
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %140, i8* %141, align 1, !tbaa !2448
  %142 = icmp eq i64 %123, 0
  %143 = zext i1 %142 to i8
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %143, i8* %144, align 1, !tbaa !2449
  %145 = lshr i64 %123, 63
  %146 = trunc i64 %145 to i8
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %146, i8* %147, align 1, !tbaa !2450
  %148 = lshr i64 %119, 63
  %149 = lshr i64 %120, 63
  %150 = xor i64 %145, %148
  %151 = xor i64 %145, %149
  %152 = add nuw nsw i64 %150, %151
  %153 = icmp eq i64 %152, 2
  %154 = zext i1 %153 to i8
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %154, i8* %155, align 1, !tbaa !2451
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
  %166 = call i32 @llvm.ctpop.i32(i32 %165) #17
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
  %185 = load i8, i8* %184, align 1, !tbaa !2449
  store i8 %185, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %187 = icmp ne i8 %185, 0
  %188 = select i1 %187, i64 %179, i64 %181
  store i64 %188, i64* %186, align 8, !tbaa !2428
  %189 = load i8, i8* %BRANCH_TAKEN
  %190 = icmp eq i8 %189, 1
  br i1 %190, label %block_4004c8, label %block_4004b3

block_4004bd:                                     ; preds = %block_4004b3
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
    i64 4195530, label %block_4004ca
    i64 4195525, label %block_4004c5
  ]

block_4004ca:                                     ; preds = %block_4004bd
  %205 = load i64, i64* %RAX
  %206 = load i64, i64* %RAX
  %207 = add i64 %206, %205
  %208 = load i16, i16* %AX
  %209 = zext i16 %208 to i64
  %210 = load i64, i64* %PC
  %211 = add i64 %210, 6
  store i64 %211, i64* %PC
  %212 = load i64, i64* %PC
  %213 = tail call %struct.Memory* @sub_4004d0___do_global_dtors_aux(%struct.State* %0, i64 %212, %struct.Memory* %2)
  ret %struct.Memory* %213

block_4004b3:                                     ; preds = %block_400490
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
  store i8 0, i8* %221, align 1, !tbaa !2434
  %222 = trunc i64 %220 to i32
  %223 = and i32 %222, 255
  %224 = call i32 @llvm.ctpop.i32(i32 %223) #17
  %225 = trunc i32 %224 to i8
  %226 = and i8 %225, 1
  %227 = xor i8 %226, 1
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %227, i8* %228, align 1, !tbaa !2447
  %229 = icmp eq i64 %220, 0
  %230 = zext i1 %229 to i8
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %230, i8* %231, align 1, !tbaa !2449
  %232 = lshr i64 %220, 63
  %233 = trunc i64 %232 to i8
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %233, i8* %234, align 1, !tbaa !2450
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %235, align 1, !tbaa !2451
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %236, align 1, !tbaa !2448
  %237 = load i64, i64* %PC
  %238 = add i64 %237, 13
  %239 = load i64, i64* %PC
  %240 = add i64 %239, 2
  %241 = load i64, i64* %PC
  %242 = add i64 %241, 2
  store i64 %242, i64* %PC
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %244 = load i8, i8* %243, align 1, !tbaa !2449
  store i8 %244, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %246 = icmp ne i8 %244, 0
  %247 = select i1 %246, i64 %238, i64 %240
  store i64 %247, i64* %245, align 8, !tbaa !2428
  %248 = load i8, i8* %BRANCH_TAKEN
  %249 = icmp eq i8 %248, 1
  br i1 %249, label %block_4004c8, label %block_4004bd

block_4004c8:                                     ; preds = %block_4004c5, %block_4004b3, %block_400490
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400490 ], [ %2, %block_4004b3 ], [ %2, %block_4004c5 ]
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

block_4004c5:                                     ; preds = %block_4004bd
  %265 = load i64, i64* %RAX
  %266 = load i32, i32* %EAX
  %267 = zext i32 %266 to i64
  %268 = load i64, i64* %PC
  %269 = add i64 %268, 3
  store i64 %269, i64* %PC
  br label %block_4004c8

; <label>:270:                                    ; preds = %block_4004bd
  %271 = load i64, i64* %PC
  %272 = tail call %struct.Memory* @__remill_jump(%struct.State* %0, i64 %271, %struct.Memory* %2)
  ret %struct.Memory* %272
}

; Function Attrs: noinline
define %struct.Memory* @sub_400510_Initrand(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400510:
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
  %23 = add i64 %22, 12
  store i64 %23, i64* %PC
  store i64 74755, i64* bitcast (%seed_type* @seed to i64*)
  %24 = load i64, i64* %PC
  %25 = add i64 %24, 1
  store i64 %25, i64* %PC
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %27 = load i64, i64* %26, align 8, !tbaa !2428
  %28 = add i64 %27, 8
  %29 = inttoptr i64 %27 to i64*
  %30 = load i64, i64* %29
  store i64 %30, i64* %RBP, align 8, !tbaa !2428
  store i64 %28, i64* %26, align 8, !tbaa !2428
  %31 = load i64, i64* %PC
  %32 = add i64 %31, 1
  store i64 %32, i64* %PC
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %35 = load i64, i64* %34, align 8, !tbaa !2428
  %36 = inttoptr i64 %35 to i64*
  %37 = load i64, i64* %36
  store i64 %37, i64* %33, align 8, !tbaa !2428
  %38 = add i64 %35, 8
  store i64 %38, i64* %34, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_400e30_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400e30:
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
  store i8 %33, i8* %34, align 1, !tbaa !2434
  %35 = trunc i64 %31 to i32
  %36 = and i32 %35, 255
  %37 = call i32 @llvm.ctpop.i32(i32 %36) #17
  %38 = trunc i32 %37 to i8
  %39 = and i8 %38, 1
  %40 = xor i8 %39, 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %40, i8* %41, align 1, !tbaa !2447
  %42 = xor i64 16, %28
  %43 = xor i64 %42, %31
  %44 = lshr i64 %43, 4
  %45 = trunc i64 %44 to i8
  %46 = and i8 %45, 1
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %46, i8* %47, align 1, !tbaa !2448
  %48 = icmp eq i64 %31, 0
  %49 = zext i1 %48 to i8
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %49, i8* %50, align 1, !tbaa !2449
  %51 = lshr i64 %31, 63
  %52 = trunc i64 %51 to i8
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %52, i8* %53, align 1, !tbaa !2450
  %54 = lshr i64 %28, 63
  %55 = xor i64 %51, %54
  %56 = add nuw nsw i64 %55, %54
  %57 = icmp eq i64 %56, 2
  %58 = zext i1 %57 to i8
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %58, i8* %59, align 1, !tbaa !2451
  %60 = load i64, i64* %RBP
  %61 = sub i64 %60, 4
  %62 = load i64, i64* %PC
  %63 = add i64 %62, 7
  store i64 %63, i64* %PC
  %64 = inttoptr i64 %61 to i32*
  store i32 0, i32* %64
  %65 = load i64, i64* %RBP
  %66 = sub i64 %65, 8
  %67 = load i64, i64* %PC
  %68 = add i64 %67, 7
  store i64 %68, i64* %PC
  %69 = inttoptr i64 %66 to i32*
  store i32 0, i32* %69
  br label %block_400e46

block_400e63:                                     ; preds = %block_400e46
  %70 = load i64, i64* %RAX
  %71 = load i32, i32* %EAX
  %72 = zext i32 %71 to i64
  %73 = load i64, i64* %PC
  %74 = add i64 %73, 2
  store i64 %74, i64* %PC
  %75 = xor i64 %72, %70
  %76 = trunc i64 %75 to i32
  %77 = and i64 %75, 4294967295
  store i64 %77, i64* %RAX, align 8, !tbaa !2428
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %78, align 1, !tbaa !2434
  %79 = and i32 %76, 255
  %80 = call i32 @llvm.ctpop.i32(i32 %79) #17
  %81 = trunc i32 %80 to i8
  %82 = and i8 %81, 1
  %83 = xor i8 %82, 1
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %83, i8* %84, align 1, !tbaa !2447
  %85 = icmp eq i32 %76, 0
  %86 = zext i1 %85 to i8
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %86, i8* %87, align 1, !tbaa !2449
  %88 = lshr i32 %76, 31
  %89 = trunc i32 %88 to i8
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %89, i8* %90, align 1, !tbaa !2450
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %91, align 1, !tbaa !2451
  %92 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %92, align 1, !tbaa !2448
  %93 = load i64, i64* %RSP
  %94 = load i64, i64* %PC
  %95 = add i64 %94, 4
  store i64 %95, i64* %PC
  %96 = add i64 16, %93
  store i64 %96, i64* %RSP, align 8, !tbaa !2428
  %97 = icmp ult i64 %96, %93
  %98 = icmp ult i64 %96, 16
  %99 = or i1 %97, %98
  %100 = zext i1 %99 to i8
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %100, i8* %101, align 1, !tbaa !2434
  %102 = trunc i64 %96 to i32
  %103 = and i32 %102, 255
  %104 = call i32 @llvm.ctpop.i32(i32 %103) #17
  %105 = trunc i32 %104 to i8
  %106 = and i8 %105, 1
  %107 = xor i8 %106, 1
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %107, i8* %108, align 1, !tbaa !2447
  %109 = xor i64 16, %93
  %110 = xor i64 %109, %96
  %111 = lshr i64 %110, 4
  %112 = trunc i64 %111 to i8
  %113 = and i8 %112, 1
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %113, i8* %114, align 1, !tbaa !2448
  %115 = icmp eq i64 %96, 0
  %116 = zext i1 %115 to i8
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %116, i8* %117, align 1, !tbaa !2449
  %118 = lshr i64 %96, 63
  %119 = trunc i64 %118 to i8
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %119, i8* %120, align 1, !tbaa !2450
  %121 = lshr i64 %93, 63
  %122 = xor i64 %118, %121
  %123 = add nuw nsw i64 %122, %118
  %124 = icmp eq i64 %123, 2
  %125 = zext i1 %124 to i8
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %125, i8* %126, align 1, !tbaa !2451
  %127 = load i64, i64* %PC
  %128 = add i64 %127, 1
  store i64 %128, i64* %PC
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %130 = load i64, i64* %129, align 8, !tbaa !2428
  %131 = add i64 %130, 8
  %132 = inttoptr i64 %130 to i64*
  %133 = load i64, i64* %132
  store i64 %133, i64* %RBP, align 8, !tbaa !2428
  store i64 %131, i64* %129, align 8, !tbaa !2428
  %134 = load i64, i64* %PC
  %135 = add i64 %134, 1
  store i64 %135, i64* %PC
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %138 = load i64, i64* %137, align 8, !tbaa !2428
  %139 = inttoptr i64 %138 to i64*
  %140 = load i64, i64* %139
  store i64 %140, i64* %136, align 8, !tbaa !2428
  %141 = add i64 %138, 8
  store i64 %141, i64* %137, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_400e46:                                     ; preds = %block_400e50, %block_400e30
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400e30 ], [ %207, %block_400e50 ]
  %142 = load i64, i64* %RBP
  %143 = sub i64 %142, 8
  %144 = load i64, i64* %PC
  %145 = add i64 %144, 4
  store i64 %145, i64* %PC
  %146 = inttoptr i64 %143 to i32*
  %147 = load i32, i32* %146
  %148 = sub i32 %147, 10
  %149 = icmp ult i32 %147, 10
  %150 = zext i1 %149 to i8
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %150, i8* %151, align 1, !tbaa !2434
  %152 = and i32 %148, 255
  %153 = call i32 @llvm.ctpop.i32(i32 %152) #17
  %154 = trunc i32 %153 to i8
  %155 = and i8 %154, 1
  %156 = xor i8 %155, 1
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %156, i8* %157, align 1, !tbaa !2447
  %158 = xor i32 %147, 10
  %159 = xor i32 %158, %148
  %160 = lshr i32 %159, 4
  %161 = trunc i32 %160 to i8
  %162 = and i8 %161, 1
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %162, i8* %163, align 1, !tbaa !2448
  %164 = icmp eq i32 %148, 0
  %165 = zext i1 %164 to i8
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %165, i8* %166, align 1, !tbaa !2449
  %167 = lshr i32 %148, 31
  %168 = trunc i32 %167 to i8
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %168, i8* %169, align 1, !tbaa !2450
  %170 = lshr i32 %147, 31
  %171 = xor i32 %167, %170
  %172 = add nuw nsw i32 %171, %170
  %173 = icmp eq i32 %172, 2
  %174 = zext i1 %173 to i8
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %174, i8* %175, align 1, !tbaa !2451
  %176 = load i64, i64* %PC
  %177 = add i64 %176, 25
  %178 = load i64, i64* %PC
  %179 = add i64 %178, 6
  %180 = load i64, i64* %PC
  %181 = add i64 %180, 6
  store i64 %181, i64* %PC
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %183 = load i8, i8* %182, align 1, !tbaa !2450
  %184 = icmp ne i8 %183, 0
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %186 = load i8, i8* %185, align 1, !tbaa !2451
  %187 = icmp ne i8 %186, 0
  %188 = xor i1 %184, %187
  %189 = xor i1 %188, true
  %190 = zext i1 %189 to i8
  store i8 %190, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %192 = select i1 %188, i64 %179, i64 %177
  store i64 %192, i64* %191, align 8, !tbaa !2428
  %193 = load i8, i8* %BRANCH_TAKEN
  %194 = icmp eq i8 %193, 1
  br i1 %194, label %block_400e63, label %block_400e50

block_400e50:                                     ; preds = %block_400e46
  %195 = load i64, i64* %PC
  %196 = sub i64 %195, 368
  %197 = load i64, i64* %PC
  %198 = add i64 %197, 5
  %199 = load i64, i64* %PC
  %200 = add i64 %199, 5
  store i64 %200, i64* %PC
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %202 = load i64, i64* %201, align 8, !tbaa !2428
  %203 = add i64 %202, -8
  %204 = inttoptr i64 %203 to i64*
  store i64 %198, i64* %204
  store i64 %203, i64* %201, align 8, !tbaa !2428
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %196, i64* %205, align 8, !tbaa !2428
  %206 = load i64, i64* %PC
  %207 = call %struct.Memory* @sub_400ce0_Oscar(%struct.State* %0, i64 %206, %struct.Memory* %MEMORY.0)
  %208 = load i64, i64* %RBP
  %209 = sub i64 %208, 8
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
  %218 = trunc i64 %215 to i32
  %219 = add i32 1, %218
  %220 = zext i32 %219 to i64
  store i64 %220, i64* %RAX, align 8, !tbaa !2428
  %221 = icmp ult i32 %219, %218
  %222 = icmp ult i32 %219, 1
  %223 = or i1 %221, %222
  %224 = zext i1 %223 to i8
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %224, i8* %225, align 1, !tbaa !2434
  %226 = and i32 %219, 255
  %227 = call i32 @llvm.ctpop.i32(i32 %226) #17
  %228 = trunc i32 %227 to i8
  %229 = and i8 %228, 1
  %230 = xor i8 %229, 1
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %230, i8* %231, align 1, !tbaa !2447
  %232 = xor i64 1, %215
  %233 = trunc i64 %232 to i32
  %234 = xor i32 %233, %219
  %235 = lshr i32 %234, 4
  %236 = trunc i32 %235 to i8
  %237 = and i8 %236, 1
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %237, i8* %238, align 1, !tbaa !2448
  %239 = icmp eq i32 %219, 0
  %240 = zext i1 %239 to i8
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %240, i8* %241, align 1, !tbaa !2449
  %242 = lshr i32 %219, 31
  %243 = trunc i32 %242 to i8
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %243, i8* %244, align 1, !tbaa !2450
  %245 = lshr i32 %218, 31
  %246 = xor i32 %242, %245
  %247 = add nuw nsw i32 %246, %242
  %248 = icmp eq i32 %247, 2
  %249 = zext i1 %248 to i8
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %249, i8* %250, align 1, !tbaa !2451
  %251 = load i64, i64* %RBP
  %252 = sub i64 %251, 8
  %253 = load i32, i32* %EAX
  %254 = zext i32 %253 to i64
  %255 = load i64, i64* %PC
  %256 = add i64 %255, 3
  store i64 %256, i64* %PC
  %257 = inttoptr i64 %252 to i32*
  store i32 %253, i32* %257
  %258 = load i64, i64* %PC
  %259 = sub i64 %258, 24
  %260 = load i64, i64* %PC
  %261 = add i64 %260, 5
  store i64 %261, i64* %PC
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %259, i64* %262, align 8, !tbaa !2428
  br label %block_400e46
}

; Function Attrs: noinline
define %struct.Memory* @sub_400420__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400420:
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
  store i8 0, i8* %44, align 1, !tbaa !2434
  %45 = and i32 %42, 255
  %46 = call i32 @llvm.ctpop.i32(i32 %45) #17
  %47 = trunc i32 %46 to i8
  %48 = and i8 %47, 1
  %49 = xor i8 %48, 1
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %49, i8* %50, align 1, !tbaa !2447
  %51 = icmp eq i32 %42, 0
  %52 = zext i1 %51 to i8
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %52, i8* %53, align 1, !tbaa !2449
  %54 = lshr i32 %42, 31
  %55 = trunc i32 %54 to i8
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %55, i8* %56, align 1, !tbaa !2450
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %57, align 1, !tbaa !2451
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %58, align 1, !tbaa !2448
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
  store i8 0, i8* %76, align 1, !tbaa !2434
  %77 = trunc i64 %75 to i32
  %78 = and i32 %77, 255
  %79 = call i32 @llvm.ctpop.i32(i32 %78) #17
  %80 = trunc i32 %79 to i8
  %81 = and i8 %80, 1
  %82 = xor i8 %81, 1
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %82, i8* %83, align 1, !tbaa !2447
  %84 = icmp eq i64 %75, 0
  %85 = zext i1 %84 to i8
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %85, i8* %86, align 1, !tbaa !2449
  %87 = lshr i64 %75, 63
  %88 = trunc i64 %87 to i8
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %88, i8* %89, align 1, !tbaa !2450
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %90, align 1, !tbaa !2451
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %91, align 1, !tbaa !2448
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
  store i64 ptrtoint (void ()* @callback_sub_400ee0___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  %108 = load i64, i64* %PC
  %109 = add i64 %108, 7
  store i64 %109, i64* %PC
  store i64 ptrtoint (void ()* @callback_sub_400e70___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
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
  %123 = call %struct.Memory* @ext_619230___libc_start_main(%struct.State* %0, i64 %122, %struct.Memory* %2)
  %124 = load i64, i64* %PC
  %125 = add i64 %124, 1
  store i64 %125, i64* %PC
  %126 = load i64, i64* %PC
  %127 = tail call %struct.Memory* @__remill_error(%struct.State* %0, i64 %126, %struct.Memory* %123)
  ret %struct.Memory* %127
}

; Function Attrs: noinline
define %struct.Memory* @sub_400530_Rand(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400530:
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
  %35 = add i64 %34, 12
  store i64 %35, i64* %PC
  %36 = load i64, i64* bitcast (%seed_type* @seed to i64*)
  %37 = sext i64 %36 to i128
  %38 = and i128 %37, -18446744073709551616
  %39 = zext i64 %36 to i128
  %40 = or i128 %38, %39
  %41 = mul nsw i128 %40, 1309
  %42 = trunc i128 %41 to i64
  store i64 %42, i64* %RAX, align 8, !tbaa !2428
  %43 = sext i64 %42 to i128
  %44 = icmp ne i128 %43, %41
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %45, i8* %46, align 1, !tbaa !2434
  %47 = trunc i128 %41 to i32
  %48 = and i32 %47, 255
  %49 = call i32 @llvm.ctpop.i32(i32 %48) #17
  %50 = trunc i32 %49 to i8
  %51 = and i8 %50, 1
  %52 = xor i8 %51, 1
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %52, i8* %53, align 1, !tbaa !2447
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %54, align 1, !tbaa !2448
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %55, align 1, !tbaa !2449
  %56 = lshr i64 %42, 63
  %57 = trunc i64 %56 to i8
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %57, i8* %58, align 1, !tbaa !2450
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %45, i8* %59, align 1, !tbaa !2451
  %60 = load i64, i64* %RAX
  %61 = load i64, i64* %PC
  %62 = add i64 %61, 6
  store i64 %62, i64* %PC
  %63 = add i64 13849, %60
  store i64 %63, i64* %RAX, align 8, !tbaa !2428
  %64 = icmp ult i64 %63, %60
  %65 = icmp ult i64 %63, 13849
  %66 = or i1 %64, %65
  %67 = zext i1 %66 to i8
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %67, i8* %68, align 1, !tbaa !2434
  %69 = trunc i64 %63 to i32
  %70 = and i32 %69, 255
  %71 = call i32 @llvm.ctpop.i32(i32 %70) #17
  %72 = trunc i32 %71 to i8
  %73 = and i8 %72, 1
  %74 = xor i8 %73, 1
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %74, i8* %75, align 1, !tbaa !2447
  %76 = xor i64 13849, %60
  %77 = xor i64 %76, %63
  %78 = lshr i64 %77, 4
  %79 = trunc i64 %78 to i8
  %80 = and i8 %79, 1
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %80, i8* %81, align 1, !tbaa !2448
  %82 = icmp eq i64 %63, 0
  %83 = zext i1 %82 to i8
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %83, i8* %84, align 1, !tbaa !2449
  %85 = lshr i64 %63, 63
  %86 = trunc i64 %85 to i8
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %86, i8* %87, align 1, !tbaa !2450
  %88 = lshr i64 %60, 63
  %89 = xor i64 %85, %88
  %90 = add nuw nsw i64 %89, %85
  %91 = icmp eq i64 %90, 2
  %92 = zext i1 %91 to i8
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %92, i8* %93, align 1, !tbaa !2451
  %94 = load i64, i64* %RAX
  %95 = load i64, i64* %PC
  %96 = add i64 %95, 6
  store i64 %96, i64* %PC
  %97 = and i64 65535, %94
  store i64 %97, i64* %RAX, align 8, !tbaa !2428
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %98, align 1, !tbaa !2434
  %99 = trunc i64 %97 to i32
  %100 = and i32 %99, 255
  %101 = call i32 @llvm.ctpop.i32(i32 %100) #17
  %102 = trunc i32 %101 to i8
  %103 = and i8 %102, 1
  %104 = xor i8 %103, 1
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %104, i8* %105, align 1, !tbaa !2447
  %106 = icmp eq i64 %97, 0
  %107 = zext i1 %106 to i8
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %107, i8* %108, align 1, !tbaa !2449
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %109, align 1, !tbaa !2450
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %110, align 1, !tbaa !2451
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %111, align 1, !tbaa !2448
  %112 = load i64, i64* %RAX
  %113 = load i64, i64* %PC
  %114 = add i64 %113, 8
  store i64 %114, i64* %PC
  store i64 %112, i64* bitcast (%seed_type* @seed to i64*)
  %115 = load i64, i64* %PC
  %116 = add i64 %115, 8
  store i64 %116, i64* %PC
  %117 = load i64, i64* bitcast (%seed_type* @seed to i64*)
  store i64 %117, i64* %RAX, align 8, !tbaa !2428
  %118 = load i32, i32* %EAX
  %119 = zext i32 %118 to i64
  %120 = load i64, i64* %PC
  %121 = add i64 %120, 2
  store i64 %121, i64* %PC
  %122 = and i64 %119, 4294967295
  store i64 %122, i64* %RCX, align 8, !tbaa !2428
  %123 = load i32, i32* %ECX
  %124 = zext i32 %123 to i64
  %125 = load i64, i64* %PC
  %126 = add i64 %125, 2
  store i64 %126, i64* %PC
  %127 = and i64 %124, 4294967295
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
define %struct.Memory* @sub_4003e0__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4003e0:
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
  store i8 %17, i8* %18, align 1, !tbaa !2434
  %19 = trunc i64 %15 to i32
  %20 = and i32 %19, 255
  %21 = call i32 @llvm.ctpop.i32(i32 %20) #17
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1, !tbaa !2447
  %26 = xor i64 8, %12
  %27 = xor i64 %26, %15
  %28 = lshr i64 %27, 4
  %29 = trunc i64 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1, !tbaa !2448
  %32 = icmp eq i64 %15, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1, !tbaa !2449
  %35 = lshr i64 %15, 63
  %36 = trunc i64 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1, !tbaa !2450
  %38 = lshr i64 %12, 63
  %39 = xor i64 %35, %38
  %40 = add nuw nsw i64 %39, %38
  %41 = icmp eq i64 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1, !tbaa !2451
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
  store i8 0, i8* %52, align 1, !tbaa !2434
  %53 = trunc i64 %51 to i32
  %54 = and i32 %53, 255
  %55 = call i32 @llvm.ctpop.i32(i32 %54) #17
  %56 = trunc i32 %55 to i8
  %57 = and i8 %56, 1
  %58 = xor i8 %57, 1
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %58, i8* %59, align 1, !tbaa !2447
  %60 = icmp eq i64 %51, 0
  %61 = zext i1 %60 to i8
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %61, i8* %62, align 1, !tbaa !2449
  %63 = lshr i64 %51, 63
  %64 = trunc i64 %63 to i8
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %64, i8* %65, align 1, !tbaa !2450
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %66, align 1, !tbaa !2451
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %67, align 1, !tbaa !2448
  %68 = load i64, i64* %PC
  %69 = add i64 %68, 4
  %70 = load i64, i64* %PC
  %71 = add i64 %70, 2
  %72 = load i64, i64* %PC
  %73 = add i64 %72, 2
  store i64 %73, i64* %PC
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %75 = load i8, i8* %74, align 1, !tbaa !2449
  store i8 %75, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %77 = icmp ne i8 %75, 0
  %78 = select i1 %77, i64 %69, i64 %71
  store i64 %78, i64* %76, align 8, !tbaa !2428
  %79 = load i8, i8* %BRANCH_TAKEN
  %80 = icmp eq i8 %79, 1
  br i1 %80, label %block_4003f2, label %block_4003f0

block_4003f0:                                     ; preds = %block_4003e0
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
  br label %block_4003f2

block_4003f2:                                     ; preds = %block_4003f0, %block_4003e0
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4003e0 ], [ %92, %block_4003f0 ]
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
  store i8 %100, i8* %101, align 1, !tbaa !2434
  %102 = trunc i64 %96 to i32
  %103 = and i32 %102, 255
  %104 = call i32 @llvm.ctpop.i32(i32 %103) #17
  %105 = trunc i32 %104 to i8
  %106 = and i8 %105, 1
  %107 = xor i8 %106, 1
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %107, i8* %108, align 1, !tbaa !2447
  %109 = xor i64 8, %93
  %110 = xor i64 %109, %96
  %111 = lshr i64 %110, 4
  %112 = trunc i64 %111 to i8
  %113 = and i8 %112, 1
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %113, i8* %114, align 1, !tbaa !2448
  %115 = icmp eq i64 %96, 0
  %116 = zext i1 %115 to i8
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %116, i8* %117, align 1, !tbaa !2449
  %118 = lshr i64 %96, 63
  %119 = trunc i64 %118 to i8
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %119, i8* %120, align 1, !tbaa !2450
  %121 = lshr i64 %93, 63
  %122 = xor i64 %118, %121
  %123 = add nuw nsw i64 %122, %118
  %124 = icmp eq i64 %123, 2
  %125 = zext i1 %124 to i8
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %125, i8* %126, align 1, !tbaa !2451
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
define %struct.Memory* @sub_400ce0_Oscar(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400ce0:
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
  %55 = load i64, i64* %RSP
  %56 = load i64, i64* %PC
  %57 = add i64 %56, 4
  store i64 %57, i64* %PC
  %58 = sub i64 %55, 16
  store i64 %58, i64* %RSP, align 8, !tbaa !2428
  %59 = icmp ult i64 %55, 16
  %60 = zext i1 %59 to i8
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %60, i8* %61, align 1, !tbaa !2434
  %62 = trunc i64 %58 to i32
  %63 = and i32 %62, 255
  %64 = call i32 @llvm.ctpop.i32(i32 %63) #17
  %65 = trunc i32 %64 to i8
  %66 = and i8 %65, 1
  %67 = xor i8 %66, 1
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %67, i8* %68, align 1, !tbaa !2447
  %69 = xor i64 16, %55
  %70 = xor i64 %69, %58
  %71 = lshr i64 %70, 4
  %72 = trunc i64 %71 to i8
  %73 = and i8 %72, 1
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %73, i8* %74, align 1, !tbaa !2448
  %75 = icmp eq i64 %58, 0
  %76 = zext i1 %75 to i8
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %76, i8* %77, align 1, !tbaa !2449
  %78 = lshr i64 %58, 63
  %79 = trunc i64 %78 to i8
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %79, i8* %80, align 1, !tbaa !2450
  %81 = lshr i64 %55, 63
  %82 = xor i64 %78, %81
  %83 = add nuw nsw i64 %82, %81
  %84 = icmp eq i64 %83, 2
  %85 = zext i1 %84 to i8
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %85, i8* %86, align 1, !tbaa !2451
  %87 = load i64, i64* %PC
  %88 = add i64 %87, 5
  store i64 %88, i64* %PC
  store i64 256, i64* %RDI, align 8, !tbaa !2428
  %89 = load i64, i64* %PC
  %90 = add i64 %89, 10
  store i64 %90, i64* %PC
  store i64 ptrtoint (%e_type* @e to i64), i64* %RSI, align 8, !tbaa !2428
  %91 = load i64, i64* %PC
  %92 = sub i64 %91, 1383
  %93 = load i64, i64* %PC
  %94 = add i64 %93, 5
  %95 = load i64, i64* %PC
  %96 = add i64 %95, 5
  store i64 %96, i64* %PC
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %98 = load i64, i64* %97, align 8, !tbaa !2428
  %99 = add i64 %98, -8
  %100 = inttoptr i64 %99 to i64*
  store i64 %94, i64* %100
  store i64 %99, i64* %97, align 8, !tbaa !2428
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %92, i64* %101, align 8, !tbaa !2428
  %102 = load i64, i64* %PC
  %103 = call %struct.Memory* @sub_400790_Exptab(%struct.State* %0, i64 %102, %struct.Memory* %2)
  %104 = load i64, i64* %PC
  %105 = add i64 %104, 12
  store i64 %105, i64* %PC
  store i64 5767, i64* bitcast (%seed_type* @seed to i64*)
  %106 = load i64, i64* %RBP
  %107 = sub i64 %106, 4
  %108 = load i64, i64* %PC
  %109 = add i64 %108, 7
  store i64 %109, i64* %PC
  %110 = inttoptr i64 %107 to i32*
  store i32 1, i32* %110
  br label %block_400d0f

block_400d1c:                                     ; preds = %block_400d0f
  %111 = sub i64 %469, 8
  %112 = load i64, i64* %PC
  %113 = add i64 %112, 4
  store i64 %113, i64* %PC
  store i64 %111, i64* %RDI, align 8, !tbaa !2428
  %114 = load i64, i64* %PC
  %115 = add i64 %114, 10
  store i64 %115, i64* %PC
  store i64 ptrtoint (%zr_type* @zr to i64), i64* %RSI, align 8, !tbaa !2428
  %116 = load i64, i64* %PC
  %117 = add i64 %116, 8
  store i64 %117, i64* %PC
  %118 = load i64, i64* bitcast (%seed_type* @seed to i64*)
  store i64 %118, i64* %RAX, align 8, !tbaa !2428
  %119 = load i32, i32* %EAX
  %120 = zext i32 %119 to i64
  %121 = load i64, i64* %PC
  %122 = add i64 %121, 2
  store i64 %122, i64* %PC
  %123 = and i64 %120, 4294967295
  store i64 %123, i64* %RCX, align 8, !tbaa !2428
  %124 = load i64, i64* %RBP
  %125 = sub i64 %124, 8
  %126 = load i32, i32* %ECX
  %127 = zext i32 %126 to i64
  %128 = load i64, i64* %PC
  %129 = add i64 %128, 3
  store i64 %129, i64* %PC
  %130 = inttoptr i64 %125 to i32*
  store i32 %126, i32* %130
  %131 = load i64, i64* %PC
  %132 = sub i64 %131, 1527
  %133 = load i64, i64* %PC
  %134 = add i64 %133, 5
  %135 = load i64, i64* %PC
  %136 = add i64 %135, 5
  store i64 %136, i64* %PC
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %138 = load i64, i64* %137, align 8, !tbaa !2428
  %139 = add i64 %138, -8
  %140 = inttoptr i64 %139 to i64*
  store i64 %134, i64* %140
  store i64 %139, i64* %137, align 8, !tbaa !2428
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %132, i64* %141, align 8, !tbaa !2428
  %142 = load i64, i64* %PC
  %143 = call %struct.Memory* @sub_400740_Uniform11(%struct.State* %0, i64 %142, %struct.Memory* %MEMORY.0)
  %144 = load i64, i64* %RBP
  %145 = sub i64 %144, 8
  %146 = load i64, i64* %PC
  %147 = add i64 %146, 4
  store i64 %147, i64* %PC
  store i64 %145, i64* %RDI, align 8, !tbaa !2428
  %148 = load i64, i64* %PC
  %149 = add i64 %148, 10
  store i64 %149, i64* %PC
  store i64 ptrtoint (%zi_type* @zi to i64), i64* %RSI, align 8, !tbaa !2428
  %150 = load i64, i64* %RBP
  %151 = sub i64 %150, 8
  %152 = load i64, i64* %PC
  %153 = add i64 %152, 4
  store i64 %153, i64* %PC
  %154 = inttoptr i64 %151 to i32*
  %155 = load i32, i32* %154
  %156 = sext i32 %155 to i64
  store i64 %156, i64* %RAX, align 8, !tbaa !2428
  %157 = load i64, i64* %RAX
  %158 = load i64, i64* %PC
  %159 = add i64 %158, 8
  store i64 %159, i64* %PC
  store i64 %157, i64* bitcast (%seed_type* @seed to i64*)
  %160 = load i64, i64* %PC
  %161 = sub i64 %160, 1558
  %162 = load i64, i64* %PC
  %163 = add i64 %162, 5
  %164 = load i64, i64* %PC
  %165 = add i64 %164, 5
  store i64 %165, i64* %PC
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %167 = load i64, i64* %166, align 8, !tbaa !2428
  %168 = add i64 %167, -8
  %169 = inttoptr i64 %168 to i64*
  store i64 %163, i64* %169
  store i64 %168, i64* %166, align 8, !tbaa !2428
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %161, i64* %170, align 8, !tbaa !2428
  %171 = load i64, i64* %PC
  %172 = call %struct.Memory* @sub_400740_Uniform11(%struct.State* %0, i64 %171, %struct.Memory* %143)
  %173 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %174 = load i64, i64* %PC
  %175 = add i64 %174, 8
  store i64 %175, i64* %PC
  %176 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_400ef0__rodata_type* @seg_400ef0__rodata to i64), i64 32) to float*)
  %177 = bitcast i8* %173 to float*
  store float %176, float* %177, align 1, !tbaa !2453
  %178 = getelementptr inbounds i8, i8* %173, i64 4
  %179 = bitcast i8* %178 to float*
  store float 0.000000e+00, float* %179, align 1, !tbaa !2453
  %180 = getelementptr inbounds i8, i8* %173, i64 8
  %181 = bitcast i8* %180 to float*
  store float 0.000000e+00, float* %181, align 1, !tbaa !2453
  %182 = getelementptr inbounds i8, i8* %173, i64 12
  %183 = bitcast i8* %182 to float*
  store float 0.000000e+00, float* %183, align 1, !tbaa !2453
  %184 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %185 = load i64, i64* %PC
  %186 = add i64 %185, 8
  store i64 %186, i64* %PC
  %187 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_400ef0__rodata_type* @seg_400ef0__rodata to i64), i64 36) to float*)
  %188 = bitcast i8* %184 to float*
  store float %187, float* %188, align 1, !tbaa !2453
  %189 = getelementptr inbounds i8, i8* %184, i64 4
  %190 = bitcast i8* %189 to float*
  store float 0.000000e+00, float* %190, align 1, !tbaa !2453
  %191 = getelementptr inbounds i8, i8* %184, i64 8
  %192 = bitcast i8* %191 to float*
  store float 0.000000e+00, float* %192, align 1, !tbaa !2453
  %193 = getelementptr inbounds i8, i8* %184, i64 12
  %194 = bitcast i8* %193 to float*
  store float 0.000000e+00, float* %194, align 1, !tbaa !2453
  %195 = load i64, i64* %RBP
  %196 = sub i64 %195, 8
  %197 = load i64, i64* %PC
  %198 = add i64 %197, 4
  store i64 %198, i64* %PC
  %199 = inttoptr i64 %196 to i32*
  %200 = load i32, i32* %199
  %201 = sext i32 %200 to i64
  store i64 %201, i64* %RAX, align 8, !tbaa !2428
  %202 = load i64, i64* %RAX
  %203 = load i64, i64* %PC
  %204 = add i64 %203, 8
  store i64 %204, i64* %PC
  store i64 %202, i64* bitcast (%seed_type* @seed to i64*)
  %205 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %206 = bitcast %union.vec128_t* %XMM1 to i8*
  %207 = load i64, i64* %PC
  %208 = add i64 %207, 3
  store i64 %208, i64* %PC
  %209 = bitcast i8* %206 to <2 x i32>*
  %210 = load <2 x i32>, <2 x i32>* %209, align 1
  %211 = getelementptr inbounds i8, i8* %206, i64 8
  %212 = bitcast i8* %211 to <2 x i32>*
  %213 = load <2 x i32>, <2 x i32>* %212, align 1
  %214 = extractelement <2 x i32> %210, i32 0
  %215 = bitcast i8* %205 to i32*
  store i32 %214, i32* %215, align 1, !tbaa !2453
  %216 = extractelement <2 x i32> %210, i32 1
  %217 = getelementptr inbounds i8, i8* %205, i64 4
  %218 = bitcast i8* %217 to i32*
  store i32 %216, i32* %218, align 1, !tbaa !2453
  %219 = extractelement <2 x i32> %213, i32 0
  %220 = getelementptr inbounds i8, i8* %205, i64 8
  %221 = bitcast i8* %220 to i32*
  store i32 %219, i32* %221, align 1, !tbaa !2453
  %222 = extractelement <2 x i32> %213, i32 1
  %223 = getelementptr inbounds i8, i8* %205, i64 12
  %224 = bitcast i8* %223 to i32*
  store i32 %222, i32* %224, align 1, !tbaa !2453
  %225 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %226 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %227 = load i64, i64* %PC
  %228 = add i64 %227, 9
  store i64 %228, i64* %PC
  %229 = bitcast i8* %226 to <2 x float>*
  %230 = load <2 x float>, <2 x float>* %229, align 1
  %231 = getelementptr inbounds i8, i8* %226, i64 8
  %232 = bitcast i8* %231 to <2 x i32>*
  %233 = load <2 x i32>, <2 x i32>* %232, align 1
  %234 = load float, float* bitcast (%zr_type* @zr to float*)
  %235 = extractelement <2 x float> %230, i32 0
  %236 = fmul float %235, %234
  %237 = bitcast i8* %225 to float*
  store float %236, float* %237, align 1, !tbaa !2453
  %238 = bitcast <2 x float> %230 to <2 x i32>
  %239 = extractelement <2 x i32> %238, i32 1
  %240 = getelementptr inbounds i8, i8* %225, i64 4
  %241 = bitcast i8* %240 to i32*
  store i32 %239, i32* %241, align 1, !tbaa !2453
  %242 = extractelement <2 x i32> %233, i32 0
  %243 = getelementptr inbounds i8, i8* %225, i64 8
  %244 = bitcast i8* %243 to i32*
  store i32 %242, i32* %244, align 1, !tbaa !2453
  %245 = extractelement <2 x i32> %233, i32 1
  %246 = getelementptr inbounds i8, i8* %225, i64 12
  %247 = bitcast i8* %246 to i32*
  store i32 %245, i32* %247, align 1, !tbaa !2453
  %248 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %249 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %250 = bitcast %union.vec128_t* %XMM0 to i8*
  %251 = load i64, i64* %PC
  %252 = add i64 %251, 4
  store i64 %252, i64* %PC
  %253 = bitcast i8* %249 to <2 x float>*
  %254 = load <2 x float>, <2 x float>* %253, align 1
  %255 = getelementptr inbounds i8, i8* %249, i64 8
  %256 = bitcast i8* %255 to <2 x i32>*
  %257 = load <2 x i32>, <2 x i32>* %256, align 1
  %258 = bitcast i8* %250 to <2 x float>*
  %259 = load <2 x float>, <2 x float>* %258, align 1
  %260 = extractelement <2 x float> %254, i32 0
  %261 = extractelement <2 x float> %259, i32 0
  %262 = fsub float %260, %261
  %263 = bitcast i8* %248 to float*
  store float %262, float* %263, align 1, !tbaa !2453
  %264 = bitcast <2 x float> %254 to <2 x i32>
  %265 = extractelement <2 x i32> %264, i32 1
  %266 = getelementptr inbounds i8, i8* %248, i64 4
  %267 = bitcast i8* %266 to i32*
  store i32 %265, i32* %267, align 1, !tbaa !2453
  %268 = extractelement <2 x i32> %257, i32 0
  %269 = getelementptr inbounds i8, i8* %248, i64 8
  %270 = bitcast i8* %269 to i32*
  store i32 %268, i32* %270, align 1, !tbaa !2453
  %271 = extractelement <2 x i32> %257, i32 1
  %272 = getelementptr inbounds i8, i8* %248, i64 12
  %273 = bitcast i8* %272 to i32*
  store i32 %271, i32* %273, align 1, !tbaa !2453
  %274 = load i64, i64* %RBP
  %275 = sub i64 %274, 4
  %276 = load i64, i64* %PC
  %277 = add i64 %276, 4
  store i64 %277, i64* %PC
  %278 = inttoptr i64 %275 to i32*
  %279 = load i32, i32* %278
  %280 = sext i32 %279 to i64
  store i64 %280, i64* %RAX, align 8, !tbaa !2428
  %281 = load i64, i64* %RAX
  %282 = mul i64 %281, 8
  %283 = add i64 %282, ptrtoint (%z_type* @z to i64)
  %284 = bitcast %union.vec128_t* %XMM2 to i8*
  %285 = load i64, i64* %PC
  %286 = add i64 %285, 9
  store i64 %286, i64* %PC
  %287 = bitcast i8* %284 to <2 x float>*
  %288 = load <2 x float>, <2 x float>* %287, align 1
  %289 = extractelement <2 x float> %288, i32 0
  %290 = inttoptr i64 %283 to float*
  store float %289, float* %290
  %291 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %292 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %293 = load i64, i64* %PC
  %294 = add i64 %293, 9
  store i64 %294, i64* %PC
  %295 = bitcast i8* %292 to <2 x float>*
  %296 = load <2 x float>, <2 x float>* %295, align 1
  %297 = getelementptr inbounds i8, i8* %292, i64 8
  %298 = bitcast i8* %297 to <2 x i32>*
  %299 = load <2 x i32>, <2 x i32>* %298, align 1
  %300 = load float, float* bitcast (%zi_type* @zi to float*)
  %301 = extractelement <2 x float> %296, i32 0
  %302 = fmul float %301, %300
  %303 = bitcast i8* %291 to float*
  store float %302, float* %303, align 1, !tbaa !2453
  %304 = bitcast <2 x float> %296 to <2 x i32>
  %305 = extractelement <2 x i32> %304, i32 1
  %306 = getelementptr inbounds i8, i8* %291, i64 4
  %307 = bitcast i8* %306 to i32*
  store i32 %305, i32* %307, align 1, !tbaa !2453
  %308 = extractelement <2 x i32> %299, i32 0
  %309 = getelementptr inbounds i8, i8* %291, i64 8
  %310 = bitcast i8* %309 to i32*
  store i32 %308, i32* %310, align 1, !tbaa !2453
  %311 = extractelement <2 x i32> %299, i32 1
  %312 = getelementptr inbounds i8, i8* %291, i64 12
  %313 = bitcast i8* %312 to i32*
  store i32 %311, i32* %313, align 1, !tbaa !2453
  %314 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %315 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %316 = bitcast %union.vec128_t* %XMM0 to i8*
  %317 = load i64, i64* %PC
  %318 = add i64 %317, 4
  store i64 %318, i64* %PC
  %319 = bitcast i8* %315 to <2 x float>*
  %320 = load <2 x float>, <2 x float>* %319, align 1
  %321 = getelementptr inbounds i8, i8* %315, i64 8
  %322 = bitcast i8* %321 to <2 x i32>*
  %323 = load <2 x i32>, <2 x i32>* %322, align 1
  %324 = bitcast i8* %316 to <2 x float>*
  %325 = load <2 x float>, <2 x float>* %324, align 1
  %326 = extractelement <2 x float> %320, i32 0
  %327 = extractelement <2 x float> %325, i32 0
  %328 = fsub float %326, %327
  %329 = bitcast i8* %314 to float*
  store float %328, float* %329, align 1, !tbaa !2453
  %330 = bitcast <2 x float> %320 to <2 x i32>
  %331 = extractelement <2 x i32> %330, i32 1
  %332 = getelementptr inbounds i8, i8* %314, i64 4
  %333 = bitcast i8* %332 to i32*
  store i32 %331, i32* %333, align 1, !tbaa !2453
  %334 = extractelement <2 x i32> %323, i32 0
  %335 = getelementptr inbounds i8, i8* %314, i64 8
  %336 = bitcast i8* %335 to i32*
  store i32 %334, i32* %336, align 1, !tbaa !2453
  %337 = extractelement <2 x i32> %323, i32 1
  %338 = getelementptr inbounds i8, i8* %314, i64 12
  %339 = bitcast i8* %338 to i32*
  store i32 %337, i32* %339, align 1, !tbaa !2453
  %340 = load i64, i64* %RBP
  %341 = sub i64 %340, 4
  %342 = load i64, i64* %PC
  %343 = add i64 %342, 4
  store i64 %343, i64* %PC
  %344 = inttoptr i64 %341 to i32*
  %345 = load i32, i32* %344
  %346 = sext i32 %345 to i64
  store i64 %346, i64* %RAX, align 8, !tbaa !2428
  %347 = load i64, i64* %RAX
  %348 = mul i64 %347, 8
  %349 = add i64 %348, add (i64 ptrtoint (%z_type* @z to i64), i64 4)
  %350 = bitcast %union.vec128_t* %XMM1 to i8*
  %351 = load i64, i64* %PC
  %352 = add i64 %351, 9
  store i64 %352, i64* %PC
  %353 = bitcast i8* %350 to <2 x float>*
  %354 = load <2 x float>, <2 x float>* %353, align 1
  %355 = extractelement <2 x float> %354, i32 0
  %356 = inttoptr i64 %349 to float*
  store float %355, float* %356
  %357 = load i64, i64* %RBP
  %358 = sub i64 %357, 4
  %359 = load i64, i64* %PC
  %360 = add i64 %359, 3
  store i64 %360, i64* %PC
  %361 = inttoptr i64 %358 to i32*
  %362 = load i32, i32* %361
  %363 = zext i32 %362 to i64
  store i64 %363, i64* %RAX, align 8, !tbaa !2428
  %364 = load i64, i64* %RAX
  %365 = load i64, i64* %PC
  %366 = add i64 %365, 3
  store i64 %366, i64* %PC
  %367 = trunc i64 %364 to i32
  %368 = add i32 1, %367
  %369 = zext i32 %368 to i64
  store i64 %369, i64* %RAX, align 8, !tbaa !2428
  %370 = icmp ult i32 %368, %367
  %371 = icmp ult i32 %368, 1
  %372 = or i1 %370, %371
  %373 = zext i1 %372 to i8
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %373, i8* %374, align 1, !tbaa !2434
  %375 = and i32 %368, 255
  %376 = call i32 @llvm.ctpop.i32(i32 %375) #17
  %377 = trunc i32 %376 to i8
  %378 = and i8 %377, 1
  %379 = xor i8 %378, 1
  %380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %379, i8* %380, align 1, !tbaa !2447
  %381 = xor i64 1, %364
  %382 = trunc i64 %381 to i32
  %383 = xor i32 %382, %368
  %384 = lshr i32 %383, 4
  %385 = trunc i32 %384 to i8
  %386 = and i8 %385, 1
  %387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %386, i8* %387, align 1, !tbaa !2448
  %388 = icmp eq i32 %368, 0
  %389 = zext i1 %388 to i8
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %389, i8* %390, align 1, !tbaa !2449
  %391 = lshr i32 %368, 31
  %392 = trunc i32 %391 to i8
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %392, i8* %393, align 1, !tbaa !2450
  %394 = lshr i32 %367, 31
  %395 = xor i32 %391, %394
  %396 = add nuw nsw i32 %395, %391
  %397 = icmp eq i32 %396, 2
  %398 = zext i1 %397 to i8
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %398, i8* %399, align 1, !tbaa !2451
  %400 = load i64, i64* %RBP
  %401 = sub i64 %400, 4
  %402 = load i32, i32* %EAX
  %403 = zext i32 %402 to i64
  %404 = load i64, i64* %PC
  %405 = add i64 %404, 3
  store i64 %405, i64* %PC
  %406 = inttoptr i64 %401 to i32*
  store i32 %402, i32* %406
  %407 = load i64, i64* %PC
  %408 = sub i64 %407, 168
  %409 = load i64, i64* %PC
  %410 = add i64 %409, 5
  store i64 %410, i64* %PC
  %411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %408, i64* %411, align 8, !tbaa !2428
  br label %block_400d0f

block_400d0f:                                     ; preds = %block_400d1c, %block_400ce0
  %MEMORY.0 = phi %struct.Memory* [ %103, %block_400ce0 ], [ %172, %block_400d1c ]
  %412 = load i64, i64* %RBP
  %413 = sub i64 %412, 4
  %414 = load i64, i64* %PC
  %415 = add i64 %414, 7
  store i64 %415, i64* %PC
  %416 = inttoptr i64 %413 to i32*
  %417 = load i32, i32* %416
  %418 = sub i32 %417, 256
  %419 = icmp ult i32 %417, 256
  %420 = zext i1 %419 to i8
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %420, i8* %421, align 1, !tbaa !2434
  %422 = and i32 %418, 255
  %423 = call i32 @llvm.ctpop.i32(i32 %422) #17
  %424 = trunc i32 %423 to i8
  %425 = and i8 %424, 1
  %426 = xor i8 %425, 1
  %427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %426, i8* %427, align 1, !tbaa !2447
  %428 = xor i32 %417, 256
  %429 = xor i32 %428, %418
  %430 = lshr i32 %429, 4
  %431 = trunc i32 %430 to i8
  %432 = and i8 %431, 1
  %433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %432, i8* %433, align 1, !tbaa !2448
  %434 = icmp eq i32 %418, 0
  %435 = zext i1 %434 to i8
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %435, i8* %436, align 1, !tbaa !2449
  %437 = lshr i32 %418, 31
  %438 = trunc i32 %437 to i8
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %438, i8* %439, align 1, !tbaa !2450
  %440 = lshr i32 %417, 31
  %441 = xor i32 %437, %440
  %442 = add nuw nsw i32 %441, %440
  %443 = icmp eq i32 %442, 2
  %444 = zext i1 %443 to i8
  %445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %444, i8* %445, align 1, !tbaa !2451
  %446 = load i64, i64* %PC
  %447 = add i64 %446, 166
  %448 = load i64, i64* %PC
  %449 = add i64 %448, 6
  %450 = load i64, i64* %PC
  %451 = add i64 %450, 6
  store i64 %451, i64* %PC
  %452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %453 = load i8, i8* %452, align 1, !tbaa !2449
  %454 = icmp eq i8 %453, 0
  %455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %456 = load i8, i8* %455, align 1, !tbaa !2450
  %457 = icmp ne i8 %456, 0
  %458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %459 = load i8, i8* %458, align 1, !tbaa !2451
  %460 = icmp ne i8 %459, 0
  %461 = xor i1 %457, %460
  %462 = xor i1 %461, true
  %463 = and i1 %454, %462
  %464 = zext i1 %463 to i8
  store i8 %464, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %466 = select i1 %463, i64 %447, i64 %449
  store i64 %466, i64* %465, align 8, !tbaa !2428
  %467 = load i8, i8* %BRANCH_TAKEN
  %468 = icmp eq i8 %467, 1
  %469 = load i64, i64* %RBP
  br i1 %468, label %block_400dbc, label %block_400d1c

block_400dcd:                                     ; preds = %block_400dc3
  %470 = add i64 %682, 5
  store i64 %470, i64* %PC
  store i64 256, i64* %RDI, align 8, !tbaa !2428
  %471 = load i64, i64* %PC
  %472 = add i64 %471, 10
  store i64 %472, i64* %PC
  store i64 ptrtoint (%z_type* @z to i64), i64* %RSI, align 8, !tbaa !2428
  %473 = load i64, i64* %PC
  %474 = add i64 %473, 10
  store i64 %474, i64* %PC
  store i64 ptrtoint (%w_type* @w to i64), i64* %RDX, align 8, !tbaa !2428
  %475 = load i64, i64* %PC
  %476 = add i64 %475, 10
  store i64 %476, i64* %PC
  store i64 ptrtoint (%e_type* @e to i64), i64* %RCX, align 8, !tbaa !2428
  %477 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %478 = load i64, i64* %PC
  %479 = add i64 %478, 8
  store i64 %479, i64* %PC
  %480 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_400ef0__rodata_type* @seg_400ef0__rodata to i64), i64 28) to float*)
  %481 = bitcast i8* %477 to float*
  store float %480, float* %481, align 1, !tbaa !2453
  %482 = getelementptr inbounds i8, i8* %477, i64 4
  %483 = bitcast i8* %482 to float*
  store float 0.000000e+00, float* %483, align 1, !tbaa !2453
  %484 = getelementptr inbounds i8, i8* %477, i64 8
  %485 = bitcast i8* %484 to float*
  store float 0.000000e+00, float* %485, align 1, !tbaa !2453
  %486 = getelementptr inbounds i8, i8* %477, i64 12
  %487 = bitcast i8* %486 to float*
  store float 0.000000e+00, float* %487, align 1, !tbaa !2453
  %488 = load i64, i64* %PC
  %489 = sub i64 %488, 968
  %490 = load i64, i64* %PC
  %491 = add i64 %490, 5
  %492 = load i64, i64* %PC
  %493 = add i64 %492, 5
  store i64 %493, i64* %PC
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %495 = load i64, i64* %494, align 8, !tbaa !2428
  %496 = add i64 %495, -8
  %497 = inttoptr i64 %496 to i64*
  store i64 %491, i64* %497
  store i64 %496, i64* %494, align 8, !tbaa !2428
  %498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %489, i64* %498, align 8, !tbaa !2428
  %499 = load i64, i64* %PC
  %500 = call %struct.Memory* @sub_400a30_Fft(%struct.State* %0, i64 %499, %struct.Memory* %MEMORY.1)
  %501 = load i64, i64* %RBP
  %502 = sub i64 %501, 4
  %503 = load i64, i64* %PC
  %504 = add i64 %503, 3
  store i64 %504, i64* %PC
  %505 = inttoptr i64 %502 to i32*
  %506 = load i32, i32* %505
  %507 = zext i32 %506 to i64
  store i64 %507, i64* %RAX, align 8, !tbaa !2428
  %508 = load i64, i64* %RAX
  %509 = load i64, i64* %PC
  %510 = add i64 %509, 3
  store i64 %510, i64* %PC
  %511 = trunc i64 %508 to i32
  %512 = add i32 1, %511
  %513 = zext i32 %512 to i64
  store i64 %513, i64* %RAX, align 8, !tbaa !2428
  %514 = icmp ult i32 %512, %511
  %515 = icmp ult i32 %512, 1
  %516 = or i1 %514, %515
  %517 = zext i1 %516 to i8
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %517, i8* %518, align 1, !tbaa !2434
  %519 = and i32 %512, 255
  %520 = call i32 @llvm.ctpop.i32(i32 %519) #17
  %521 = trunc i32 %520 to i8
  %522 = and i8 %521, 1
  %523 = xor i8 %522, 1
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %523, i8* %524, align 1, !tbaa !2447
  %525 = xor i64 1, %508
  %526 = trunc i64 %525 to i32
  %527 = xor i32 %526, %512
  %528 = lshr i32 %527, 4
  %529 = trunc i32 %528 to i8
  %530 = and i8 %529, 1
  %531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %530, i8* %531, align 1, !tbaa !2448
  %532 = icmp eq i32 %512, 0
  %533 = zext i1 %532 to i8
  %534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %533, i8* %534, align 1, !tbaa !2449
  %535 = lshr i32 %512, 31
  %536 = trunc i32 %535 to i8
  %537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %536, i8* %537, align 1, !tbaa !2450
  %538 = lshr i32 %511, 31
  %539 = xor i32 %535, %538
  %540 = add nuw nsw i32 %539, %535
  %541 = icmp eq i32 %540, 2
  %542 = zext i1 %541 to i8
  %543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %542, i8* %543, align 1, !tbaa !2451
  %544 = load i64, i64* %RBP
  %545 = sub i64 %544, 4
  %546 = load i32, i32* %EAX
  %547 = zext i32 %546 to i64
  %548 = load i64, i64* %PC
  %549 = add i64 %548, 3
  store i64 %549, i64* %PC
  %550 = inttoptr i64 %545 to i32*
  store i32 %546, i32* %550
  %551 = load i64, i64* %PC
  %552 = sub i64 %551, 67
  %553 = load i64, i64* %PC
  %554 = add i64 %553, 5
  store i64 %554, i64* %PC
  %555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %552, i64* %555, align 8, !tbaa !2428
  br label %block_400dc3

block_400e0b:                                     ; preds = %block_400dc3
  %556 = add i64 %682, 10
  store i64 %556, i64* %PC
  store i64 ptrtoint (%z_type* @z to i64), i64* %RDI, align 8, !tbaa !2428
  %557 = load i64, i64* %PC
  %558 = add i64 %557, 5
  store i64 %558, i64* %PC
  store i64 1, i64* %RSI, align 8, !tbaa !2428
  %559 = load i64, i64* %PC
  %560 = add i64 %559, 5
  store i64 %560, i64* %PC
  store i64 256, i64* %RDX, align 8, !tbaa !2428
  %561 = load i64, i64* %PC
  %562 = add i64 %561, 5
  store i64 %562, i64* %PC
  store i64 17, i64* %RCX, align 8, !tbaa !2428
  %563 = load i64, i64* %PC
  %564 = sub i64 %563, 1972
  %565 = load i64, i64* %PC
  %566 = add i64 %565, 5
  %567 = load i64, i64* %PC
  %568 = add i64 %567, 5
  store i64 %568, i64* %PC
  %569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %570 = load i64, i64* %569, align 8, !tbaa !2428
  %571 = add i64 %570, -8
  %572 = inttoptr i64 %571 to i64*
  store i64 %566, i64* %572
  store i64 %571, i64* %569, align 8, !tbaa !2428
  %573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %564, i64* %573, align 8, !tbaa !2428
  %574 = load i64, i64* %PC
  %575 = call %struct.Memory* @sub_400670_Printcomplex(%struct.State* %0, i64 %574, %struct.Memory* %MEMORY.1)
  %576 = load i64, i64* %RSP
  %577 = load i64, i64* %PC
  %578 = add i64 %577, 4
  store i64 %578, i64* %PC
  %579 = add i64 16, %576
  store i64 %579, i64* %RSP, align 8, !tbaa !2428
  %580 = icmp ult i64 %579, %576
  %581 = icmp ult i64 %579, 16
  %582 = or i1 %580, %581
  %583 = zext i1 %582 to i8
  %584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %583, i8* %584, align 1, !tbaa !2434
  %585 = trunc i64 %579 to i32
  %586 = and i32 %585, 255
  %587 = call i32 @llvm.ctpop.i32(i32 %586) #17
  %588 = trunc i32 %587 to i8
  %589 = and i8 %588, 1
  %590 = xor i8 %589, 1
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %590, i8* %591, align 1, !tbaa !2447
  %592 = xor i64 16, %576
  %593 = xor i64 %592, %579
  %594 = lshr i64 %593, 4
  %595 = trunc i64 %594 to i8
  %596 = and i8 %595, 1
  %597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %596, i8* %597, align 1, !tbaa !2448
  %598 = icmp eq i64 %579, 0
  %599 = zext i1 %598 to i8
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %599, i8* %600, align 1, !tbaa !2449
  %601 = lshr i64 %579, 63
  %602 = trunc i64 %601 to i8
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %602, i8* %603, align 1, !tbaa !2450
  %604 = lshr i64 %576, 63
  %605 = xor i64 %601, %604
  %606 = add nuw nsw i64 %605, %601
  %607 = icmp eq i64 %606, 2
  %608 = zext i1 %607 to i8
  %609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %608, i8* %609, align 1, !tbaa !2451
  %610 = load i64, i64* %PC
  %611 = add i64 %610, 1
  store i64 %611, i64* %PC
  %612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %613 = load i64, i64* %612, align 8, !tbaa !2428
  %614 = add i64 %613, 8
  %615 = inttoptr i64 %613 to i64*
  %616 = load i64, i64* %615
  store i64 %616, i64* %RBP, align 8, !tbaa !2428
  store i64 %614, i64* %612, align 8, !tbaa !2428
  %617 = load i64, i64* %PC
  %618 = add i64 %617, 1
  store i64 %618, i64* %PC
  %619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %621 = load i64, i64* %620, align 8, !tbaa !2428
  %622 = inttoptr i64 %621 to i64*
  %623 = load i64, i64* %622
  store i64 %623, i64* %619, align 8, !tbaa !2428
  %624 = add i64 %621, 8
  store i64 %624, i64* %620, align 8, !tbaa !2428
  ret %struct.Memory* %575

block_400dc3:                                     ; preds = %block_400dbc, %block_400dcd
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_400dbc ], [ %500, %block_400dcd ]
  %625 = load i64, i64* %RBP
  %626 = sub i64 %625, 4
  %627 = load i64, i64* %PC
  %628 = add i64 %627, 4
  store i64 %628, i64* %PC
  %629 = inttoptr i64 %626 to i32*
  %630 = load i32, i32* %629
  %631 = sub i32 %630, 20
  %632 = icmp ult i32 %630, 20
  %633 = zext i1 %632 to i8
  %634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %633, i8* %634, align 1, !tbaa !2434
  %635 = and i32 %631, 255
  %636 = call i32 @llvm.ctpop.i32(i32 %635) #17
  %637 = trunc i32 %636 to i8
  %638 = and i8 %637, 1
  %639 = xor i8 %638, 1
  %640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %639, i8* %640, align 1, !tbaa !2447
  %641 = xor i32 %630, 20
  %642 = xor i32 %641, %631
  %643 = lshr i32 %642, 4
  %644 = trunc i32 %643 to i8
  %645 = and i8 %644, 1
  %646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %645, i8* %646, align 1, !tbaa !2448
  %647 = icmp eq i32 %631, 0
  %648 = zext i1 %647 to i8
  %649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %648, i8* %649, align 1, !tbaa !2449
  %650 = lshr i32 %631, 31
  %651 = trunc i32 %650 to i8
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %651, i8* %652, align 1, !tbaa !2450
  %653 = lshr i32 %630, 31
  %654 = xor i32 %650, %653
  %655 = add nuw nsw i32 %654, %653
  %656 = icmp eq i32 %655, 2
  %657 = zext i1 %656 to i8
  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %657, i8* %658, align 1, !tbaa !2451
  %659 = load i64, i64* %PC
  %660 = add i64 %659, 68
  %661 = load i64, i64* %PC
  %662 = add i64 %661, 6
  %663 = load i64, i64* %PC
  %664 = add i64 %663, 6
  store i64 %664, i64* %PC
  %665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %666 = load i8, i8* %665, align 1, !tbaa !2449
  %667 = icmp eq i8 %666, 0
  %668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %669 = load i8, i8* %668, align 1, !tbaa !2450
  %670 = icmp ne i8 %669, 0
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %672 = load i8, i8* %671, align 1, !tbaa !2451
  %673 = icmp ne i8 %672, 0
  %674 = xor i1 %670, %673
  %675 = xor i1 %674, true
  %676 = and i1 %667, %675
  %677 = zext i1 %676 to i8
  store i8 %677, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %679 = select i1 %676, i64 %660, i64 %662
  store i64 %679, i64* %678, align 8, !tbaa !2428
  %680 = load i8, i8* %BRANCH_TAKEN
  %681 = icmp eq i8 %680, 1
  %682 = load i64, i64* %PC
  br i1 %681, label %block_400e0b, label %block_400dcd

block_400dbc:                                     ; preds = %block_400d0f
  %683 = sub i64 %469, 4
  %684 = load i64, i64* %PC
  %685 = add i64 %684, 7
  store i64 %685, i64* %PC
  %686 = inttoptr i64 %683 to i32*
  store i32 1, i32* %686
  br label %block_400dc3
}

; Function Attrs: noinline
define %struct.Memory* @sub_400460_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400460:
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
  store i8 %38, i8* %39, align 1, !tbaa !2434
  %40 = trunc i64 %36 to i32
  %41 = and i32 %40, 255
  %42 = call i32 @llvm.ctpop.i32(i32 %41) #17
  %43 = trunc i32 %42 to i8
  %44 = and i8 %43, 1
  %45 = xor i8 %44, 1
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %45, i8* %46, align 1, !tbaa !2447
  %47 = xor i64 ptrtoint (%__bss_start_type* @__bss_start to i64), %33
  %48 = xor i64 %47, %36
  %49 = lshr i64 %48, 4
  %50 = trunc i64 %49 to i8
  %51 = and i8 %50, 1
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %51, i8* %52, align 1, !tbaa !2448
  %53 = icmp eq i64 %36, 0
  %54 = zext i1 %53 to i8
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %54, i8* %55, align 1, !tbaa !2449
  %56 = lshr i64 %36, 63
  %57 = trunc i64 %56 to i8
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %57, i8* %58, align 1, !tbaa !2450
  %59 = lshr i64 %33, 63
  %60 = xor i64 lshr (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 63), %59
  %61 = xor i64 %56, %59
  %62 = add nuw nsw i64 %61, %60
  %63 = icmp eq i64 %62, 2
  %64 = zext i1 %63 to i8
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %64, i8* %65, align 1, !tbaa !2451
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
  %76 = load i8, i8* %75, align 1, !tbaa !2449
  store i8 %76, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %78 = icmp ne i8 %76, 0
  %79 = select i1 %78, i64 %70, i64 %72
  store i64 %79, i64* %77, align 8, !tbaa !2428
  %80 = load i8, i8* %BRANCH_TAKEN
  %81 = icmp eq i8 %80, 1
  br i1 %81, label %block_400488, label %block_400471

block_40047b:                                     ; preds = %block_400471
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
    i64 4195466, label %block_40048a
    i64 4195459, label %block_400483
  ]

block_400471:                                     ; preds = %block_400460
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
  store i8 0, i8* %103, align 1, !tbaa !2434
  %104 = trunc i64 %102 to i32
  %105 = and i32 %104, 255
  %106 = call i32 @llvm.ctpop.i32(i32 %105) #17
  %107 = trunc i32 %106 to i8
  %108 = and i8 %107, 1
  %109 = xor i8 %108, 1
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %109, i8* %110, align 1, !tbaa !2447
  %111 = icmp eq i64 %102, 0
  %112 = zext i1 %111 to i8
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %112, i8* %113, align 1, !tbaa !2449
  %114 = lshr i64 %102, 63
  %115 = trunc i64 %114 to i8
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %115, i8* %116, align 1, !tbaa !2450
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %117, align 1, !tbaa !2451
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %118, align 1, !tbaa !2448
  %119 = load i64, i64* %PC
  %120 = add i64 %119, 15
  %121 = load i64, i64* %PC
  %122 = add i64 %121, 2
  %123 = load i64, i64* %PC
  %124 = add i64 %123, 2
  store i64 %124, i64* %PC
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %126 = load i8, i8* %125, align 1, !tbaa !2449
  store i8 %126, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %128 = icmp ne i8 %126, 0
  %129 = select i1 %128, i64 %120, i64 %122
  store i64 %129, i64* %127, align 8, !tbaa !2428
  %130 = load i8, i8* %BRANCH_TAKEN
  %131 = icmp eq i8 %130, 1
  br i1 %131, label %block_400488, label %block_40047b

block_400488:                                     ; preds = %block_400483, %block_400471, %block_400460
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400460 ], [ %2, %block_400471 ], [ %2, %block_400483 ]
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

block_40048a:                                     ; preds = %block_40047b
  %147 = load i64, i64* %RAX
  %148 = load i64, i64* %RAX
  %149 = add i64 %148, %147
  %150 = load i16, i16* %AX
  %151 = zext i16 %150 to i64
  %152 = load i64, i64* %PC
  %153 = add i64 %152, 6
  store i64 %153, i64* %PC
  %154 = load i64, i64* %PC
  %155 = tail call %struct.Memory* @sub_400490_register_tm_clones(%struct.State* %0, i64 %154, %struct.Memory* %2)
  ret %struct.Memory* %155

block_400483:                                     ; preds = %block_40047b
  %156 = load i64, i64* %RAX
  %157 = load i64, i64* %RAX
  %158 = add i64 %157, %156
  %159 = load i32, i32* %EAX
  %160 = zext i32 %159 to i64
  %161 = load i64, i64* %PC
  %162 = add i64 %161, 5
  store i64 %162, i64* %PC
  br label %block_400488

; <label>:163:                                    ; preds = %block_40047b
  %164 = load i64, i64* %PC
  %165 = tail call %struct.Memory* @__remill_jump(%struct.State* %0, i64 %164, %struct.Memory* %2)
  ret %struct.Memory* %165
}

; Function Attrs: noinline
define %struct.Memory* @sub_400ee4__term_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400ee4:
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
  store i8 %14, i8* %15, align 1, !tbaa !2434
  %16 = trunc i64 %12 to i32
  %17 = and i32 %16, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17) #17
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1, !tbaa !2447
  %23 = xor i64 8, %9
  %24 = xor i64 %23, %12
  %25 = lshr i64 %24, 4
  %26 = trunc i64 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1, !tbaa !2448
  %29 = icmp eq i64 %12, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1, !tbaa !2449
  %32 = lshr i64 %12, 63
  %33 = trunc i64 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1, !tbaa !2450
  %35 = lshr i64 %9, 63
  %36 = xor i64 %32, %35
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1, !tbaa !2451
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
  store i8 %48, i8* %49, align 1, !tbaa !2434
  %50 = trunc i64 %44 to i32
  %51 = and i32 %50, 255
  %52 = call i32 @llvm.ctpop.i32(i32 %51) #17
  %53 = trunc i32 %52 to i8
  %54 = and i8 %53, 1
  %55 = xor i8 %54, 1
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %55, i8* %56, align 1, !tbaa !2447
  %57 = xor i64 8, %41
  %58 = xor i64 %57, %44
  %59 = lshr i64 %58, 4
  %60 = trunc i64 %59 to i8
  %61 = and i8 %60, 1
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %61, i8* %62, align 1, !tbaa !2448
  %63 = icmp eq i64 %44, 0
  %64 = zext i1 %63 to i8
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %64, i8* %65, align 1, !tbaa !2449
  %66 = lshr i64 %44, 63
  %67 = trunc i64 %66 to i8
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %67, i8* %68, align 1, !tbaa !2450
  %69 = lshr i64 %41, 63
  %70 = xor i64 %66, %69
  %71 = add nuw nsw i64 %70, %66
  %72 = icmp eq i64 %71, 2
  %73 = zext i1 %72 to i8
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %73, i8* %74, align 1, !tbaa !2451
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
define %struct.Memory* @sub_400e70___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400e70:
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
  store i8 %115, i8* %116, align 1, !tbaa !2434
  %117 = trunc i64 %113 to i32
  %118 = and i32 %117, 255
  %119 = call i32 @llvm.ctpop.i32(i32 %118) #17
  %120 = trunc i32 %119 to i8
  %121 = and i8 %120, 1
  %122 = xor i8 %121, 1
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %122, i8* %123, align 1, !tbaa !2447
  %124 = xor i64 %110, %109
  %125 = xor i64 %124, %113
  %126 = lshr i64 %125, 4
  %127 = trunc i64 %126 to i8
  %128 = and i8 %127, 1
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %128, i8* %129, align 1, !tbaa !2448
  %130 = icmp eq i64 %113, 0
  %131 = zext i1 %130 to i8
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %131, i8* %132, align 1, !tbaa !2449
  %133 = lshr i64 %113, 63
  %134 = trunc i64 %133 to i8
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %134, i8* %135, align 1, !tbaa !2450
  %136 = lshr i64 %109, 63
  %137 = lshr i64 %110, 63
  %138 = xor i64 %137, %136
  %139 = xor i64 %133, %136
  %140 = add nuw nsw i64 %139, %138
  %141 = icmp eq i64 %140, 2
  %142 = zext i1 %141 to i8
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %142, i8* %143, align 1, !tbaa !2451
  %144 = load i64, i64* %RSP
  %145 = load i64, i64* %PC
  %146 = add i64 %145, 4
  store i64 %146, i64* %PC
  %147 = sub i64 %144, 8
  store i64 %147, i64* %RSP, align 8, !tbaa !2428
  %148 = icmp ult i64 %144, 8
  %149 = zext i1 %148 to i8
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %149, i8* %150, align 1, !tbaa !2434
  %151 = trunc i64 %147 to i32
  %152 = and i32 %151, 255
  %153 = call i32 @llvm.ctpop.i32(i32 %152) #17
  %154 = trunc i32 %153 to i8
  %155 = and i8 %154, 1
  %156 = xor i8 %155, 1
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %156, i8* %157, align 1, !tbaa !2447
  %158 = xor i64 8, %144
  %159 = xor i64 %158, %147
  %160 = lshr i64 %159, 4
  %161 = trunc i64 %160 to i8
  %162 = and i8 %161, 1
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %162, i8* %163, align 1, !tbaa !2448
  %164 = icmp eq i64 %147, 0
  %165 = zext i1 %164 to i8
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %165, i8* %166, align 1, !tbaa !2449
  %167 = lshr i64 %147, 63
  %168 = trunc i64 %167 to i8
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %168, i8* %169, align 1, !tbaa !2450
  %170 = lshr i64 %144, 63
  %171 = xor i64 %167, %170
  %172 = add nuw nsw i64 %171, %170
  %173 = icmp eq i64 %172, 2
  %174 = zext i1 %173 to i8
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %174, i8* %175, align 1, !tbaa !2451
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
  %187 = call i32 @llvm.ctpop.i32(i32 %186) #17
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
  %200 = sub i64 %199, 2748
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
  %211 = call %struct.Memory* @sub_4003e0__init_proc(%struct.State* %0, i64 %210, %struct.Memory* %2)
  %212 = load i64, i64* %RBP
  %213 = load i64, i64* %RBP
  %214 = load i64, i64* %PC
  %215 = add i64 %214, 3
  store i64 %215, i64* %PC
  %216 = and i64 %213, %212
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %217, align 1, !tbaa !2434
  %218 = trunc i64 %216 to i32
  %219 = and i32 %218, 255
  %220 = call i32 @llvm.ctpop.i32(i32 %219) #17
  %221 = trunc i32 %220 to i8
  %222 = and i8 %221, 1
  %223 = xor i8 %222, 1
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %223, i8* %224, align 1, !tbaa !2447
  %225 = icmp eq i64 %216, 0
  %226 = zext i1 %225 to i8
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %226, i8* %227, align 1, !tbaa !2449
  %228 = lshr i64 %216, 63
  %229 = trunc i64 %228 to i8
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %229, i8* %230, align 1, !tbaa !2450
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %231, align 1, !tbaa !2451
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %232, align 1, !tbaa !2448
  %233 = load i64, i64* %PC
  %234 = add i64 %233, 34
  %235 = load i64, i64* %PC
  %236 = add i64 %235, 2
  %237 = load i64, i64* %PC
  %238 = add i64 %237, 2
  store i64 %238, i64* %PC
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %240 = load i8, i8* %239, align 1, !tbaa !2449
  store i8 %240, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %242 = icmp ne i8 %240, 0
  %243 = select i1 %242, i64 %234, i64 %236
  store i64 %243, i64* %241, align 8, !tbaa !2428
  %244 = load i8, i8* %BRANCH_TAKEN
  %245 = icmp eq i8 %244, 1
  br i1 %245, label %block_400ec6, label %block_400ea6

block_400ec6:                                     ; preds = %block_400eb0, %block_400e70
  %MEMORY.0 = phi %struct.Memory* [ %211, %block_400e70 ], [ %387, %block_400eb0 ]
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
  store i8 %253, i8* %254, align 1, !tbaa !2434
  %255 = trunc i64 %249 to i32
  %256 = and i32 %255, 255
  %257 = call i32 @llvm.ctpop.i32(i32 %256) #17
  %258 = trunc i32 %257 to i8
  %259 = and i8 %258, 1
  %260 = xor i8 %259, 1
  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %260, i8* %261, align 1, !tbaa !2447
  %262 = xor i64 8, %246
  %263 = xor i64 %262, %249
  %264 = lshr i64 %263, 4
  %265 = trunc i64 %264 to i8
  %266 = and i8 %265, 1
  %267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %266, i8* %267, align 1, !tbaa !2448
  %268 = icmp eq i64 %249, 0
  %269 = zext i1 %268 to i8
  %270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %269, i8* %270, align 1, !tbaa !2449
  %271 = lshr i64 %249, 63
  %272 = trunc i64 %271 to i8
  %273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %272, i8* %273, align 1, !tbaa !2450
  %274 = lshr i64 %246, 63
  %275 = xor i64 %271, %274
  %276 = add nuw nsw i64 %275, %271
  %277 = icmp eq i64 %276, 2
  %278 = zext i1 %277 to i8
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %278, i8* %279, align 1, !tbaa !2451
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

block_400ea6:                                     ; preds = %block_400e70
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
  store i8 0, i8* %338, align 1, !tbaa !2434
  %339 = and i32 %336, 255
  %340 = call i32 @llvm.ctpop.i32(i32 %339) #17
  %341 = trunc i32 %340 to i8
  %342 = and i8 %341, 1
  %343 = xor i8 %342, 1
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %343, i8* %344, align 1, !tbaa !2447
  %345 = icmp eq i32 %336, 0
  %346 = zext i1 %345 to i8
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %346, i8* %347, align 1, !tbaa !2449
  %348 = lshr i32 %336, 31
  %349 = trunc i32 %348 to i8
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %349, i8* %350, align 1, !tbaa !2450
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %351, align 1, !tbaa !2451
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %352, align 1, !tbaa !2448
  %353 = load i64, i64* %RAX
  %354 = load i64, i64* %RAX
  %355 = add i64 %354, %353
  %356 = load i32, i32* %EAX
  %357 = zext i32 %356 to i64
  %358 = load i64, i64* %PC
  %359 = add i64 %358, 8
  store i64 %359, i64* %PC
  br label %block_400eb0

block_400eb0:                                     ; preds = %block_400eb0, %block_400ea6
  %MEMORY.1 = phi %struct.Memory* [ %211, %block_400ea6 ], [ %387, %block_400eb0 ]
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
  store i8 %395, i8* %396, align 1, !tbaa !2434
  %397 = trunc i64 %391 to i32
  %398 = and i32 %397, 255
  %399 = call i32 @llvm.ctpop.i32(i32 %398) #17
  %400 = trunc i32 %399 to i8
  %401 = and i8 %400, 1
  %402 = xor i8 %401, 1
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %402, i8* %403, align 1, !tbaa !2447
  %404 = xor i64 1, %388
  %405 = xor i64 %404, %391
  %406 = lshr i64 %405, 4
  %407 = trunc i64 %406 to i8
  %408 = and i8 %407, 1
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %408, i8* %409, align 1, !tbaa !2448
  %410 = icmp eq i64 %391, 0
  %411 = zext i1 %410 to i8
  %412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %411, i8* %412, align 1, !tbaa !2449
  %413 = lshr i64 %391, 63
  %414 = trunc i64 %413 to i8
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %414, i8* %415, align 1, !tbaa !2450
  %416 = lshr i64 %388, 63
  %417 = xor i64 %413, %416
  %418 = add nuw nsw i64 %417, %413
  %419 = icmp eq i64 %418, 2
  %420 = zext i1 %419 to i8
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %420, i8* %421, align 1, !tbaa !2451
  %422 = load i64, i64* %RBP
  %423 = load i64, i64* %RBX
  %424 = load i64, i64* %PC
  %425 = add i64 %424, 3
  store i64 %425, i64* %PC
  %426 = sub i64 %422, %423
  %427 = icmp ult i64 %422, %423
  %428 = zext i1 %427 to i8
  %429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %428, i8* %429, align 1, !tbaa !2434
  %430 = trunc i64 %426 to i32
  %431 = and i32 %430, 255
  %432 = call i32 @llvm.ctpop.i32(i32 %431) #17
  %433 = trunc i32 %432 to i8
  %434 = and i8 %433, 1
  %435 = xor i8 %434, 1
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %435, i8* %436, align 1, !tbaa !2447
  %437 = xor i64 %423, %422
  %438 = xor i64 %437, %426
  %439 = lshr i64 %438, 4
  %440 = trunc i64 %439 to i8
  %441 = and i8 %440, 1
  %442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %441, i8* %442, align 1, !tbaa !2448
  %443 = icmp eq i64 %426, 0
  %444 = zext i1 %443 to i8
  %445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %444, i8* %445, align 1, !tbaa !2449
  %446 = lshr i64 %426, 63
  %447 = trunc i64 %446 to i8
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %447, i8* %448, align 1, !tbaa !2450
  %449 = lshr i64 %422, 63
  %450 = lshr i64 %423, 63
  %451 = xor i64 %450, %449
  %452 = xor i64 %446, %449
  %453 = add nuw nsw i64 %452, %451
  %454 = icmp eq i64 %453, 2
  %455 = zext i1 %454 to i8
  %456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %455, i8* %456, align 1, !tbaa !2451
  %457 = load i64, i64* %PC
  %458 = sub i64 %457, 20
  %459 = load i64, i64* %PC
  %460 = add i64 %459, 2
  %461 = load i64, i64* %PC
  %462 = add i64 %461, 2
  store i64 %462, i64* %PC
  %463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %464 = load i8, i8* %463, align 1, !tbaa !2449
  %465 = icmp eq i8 %464, 0
  %466 = zext i1 %465 to i8
  store i8 %466, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %468 = select i1 %465, i64 %458, i64 %460
  store i64 %468, i64* %467, align 8, !tbaa !2428
  %469 = load i8, i8* %BRANCH_TAKEN
  %470 = icmp eq i8 %469, 1
  br i1 %470, label %block_400eb0, label %block_400ec6
}

; Function Attrs: noinline
define %struct.Memory* @sub_400790_Exptab(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %ECX = bitcast %union.anon* %11 to i32*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %EDI = bitcast %union.anon* %14 to i32*
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
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %37 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %36, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %37 to %"class.std::bitset"*
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %39 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %38, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %39 to %"class.std::bitset"*
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %41 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %41 to %"class.std::bitset"*
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %43 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %42, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %43 to %union.vec128_t*
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %45 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %44, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %45 to %union.vec128_t*
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %47 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %46, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %47 to %union.vec128_t*
  %48 = load i64, i64* %RBP
  %49 = load i64, i64* %PC
  %50 = add i64 %49, 1
  store i64 %50, i64* %PC
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %52 = load i64, i64* %51, align 8, !tbaa !2428
  %53 = add i64 %52, -8
  %54 = inttoptr i64 %53 to i64*
  store i64 %48, i64* %54
  store i64 %53, i64* %51, align 8, !tbaa !2428
  %55 = load i64, i64* %RSP
  %56 = load i64, i64* %PC
  %57 = add i64 %56, 3
  store i64 %57, i64* %PC
  store i64 %55, i64* %RBP, align 8, !tbaa !2428
  %58 = load i64, i64* %RSP
  %59 = load i64, i64* %PC
  %60 = add i64 %59, 7
  store i64 %60, i64* %PC
  %61 = sub i64 %58, 160
  store i64 %61, i64* %RSP, align 8, !tbaa !2428
  %62 = icmp ult i64 %58, 160
  %63 = zext i1 %62 to i8
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %63, i8* %64, align 1, !tbaa !2434
  %65 = trunc i64 %61 to i32
  %66 = and i32 %65, 255
  %67 = call i32 @llvm.ctpop.i32(i32 %66) #17
  %68 = trunc i32 %67 to i8
  %69 = and i8 %68, 1
  %70 = xor i8 %69, 1
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %70, i8* %71, align 1, !tbaa !2447
  %72 = xor i64 160, %58
  %73 = xor i64 %72, %61
  %74 = lshr i64 %73, 4
  %75 = trunc i64 %74 to i8
  %76 = and i8 %75, 1
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %76, i8* %77, align 1, !tbaa !2448
  %78 = icmp eq i64 %61, 0
  %79 = zext i1 %78 to i8
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %79, i8* %80, align 1, !tbaa !2449
  %81 = lshr i64 %61, 63
  %82 = trunc i64 %81 to i8
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %82, i8* %83, align 1, !tbaa !2450
  %84 = lshr i64 %58, 63
  %85 = xor i64 %81, %84
  %86 = add nuw nsw i64 %85, %84
  %87 = icmp eq i64 %86, 2
  %88 = zext i1 %87 to i8
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %88, i8* %89, align 1, !tbaa !2451
  %90 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %91 = load i64, i64* %PC
  %92 = add i64 %91, 8
  store i64 %92, i64* %PC
  %93 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_400ef0__rodata_type* @seg_400ef0__rodata to i64), i64 12) to float*)
  %94 = bitcast i8* %90 to float*
  store float %93, float* %94, align 1, !tbaa !2453
  %95 = getelementptr inbounds i8, i8* %90, i64 4
  %96 = bitcast i8* %95 to float*
  store float 0.000000e+00, float* %96, align 1, !tbaa !2453
  %97 = getelementptr inbounds i8, i8* %90, i64 8
  %98 = bitcast i8* %97 to float*
  store float 0.000000e+00, float* %98, align 1, !tbaa !2453
  %99 = getelementptr inbounds i8, i8* %90, i64 12
  %100 = bitcast i8* %99 to float*
  store float 0.000000e+00, float* %100, align 1, !tbaa !2453
  %101 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %102 = load i64, i64* %PC
  %103 = add i64 %102, 8
  store i64 %103, i64* %PC
  %104 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_400ef0__rodata_type* @seg_400ef0__rodata to i64), i64 16) to float*)
  %105 = bitcast i8* %101 to float*
  store float %104, float* %105, align 1, !tbaa !2453
  %106 = getelementptr inbounds i8, i8* %101, i64 4
  %107 = bitcast i8* %106 to float*
  store float 0.000000e+00, float* %107, align 1, !tbaa !2453
  %108 = getelementptr inbounds i8, i8* %101, i64 8
  %109 = bitcast i8* %108 to float*
  store float 0.000000e+00, float* %109, align 1, !tbaa !2453
  %110 = getelementptr inbounds i8, i8* %101, i64 12
  %111 = bitcast i8* %110 to float*
  store float 0.000000e+00, float* %111, align 1, !tbaa !2453
  %112 = load i64, i64* %RBP
  %113 = sub i64 %112, 4
  %114 = load i32, i32* %EDI
  %115 = zext i32 %114 to i64
  %116 = load i64, i64* %PC
  %117 = add i64 %116, 3
  store i64 %117, i64* %PC
  %118 = inttoptr i64 %113 to i32*
  store i32 %114, i32* %118
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
  %127 = bitcast %union.vec128_t* %XMM1 to i8*
  %128 = load i64, i64* %PC
  %129 = add i64 %128, 5
  store i64 %129, i64* %PC
  %130 = bitcast i8* %127 to <2 x float>*
  %131 = load <2 x float>, <2 x float>* %130, align 1
  %132 = extractelement <2 x float> %131, i32 0
  %133 = inttoptr i64 %126 to float*
  store float %132, float* %133
  %134 = load i64, i64* %RBP
  %135 = sub i64 %134, 24
  %136 = bitcast %union.vec128_t* %XMM0 to i8*
  %137 = load i64, i64* %PC
  %138 = add i64 %137, 5
  store i64 %138, i64* %PC
  %139 = bitcast i8* %136 to <2 x float>*
  %140 = load <2 x float>, <2 x float>* %139, align 1
  %141 = extractelement <2 x float> %140, i32 0
  %142 = inttoptr i64 %135 to float*
  store float %141, float* %142
  %143 = load i64, i64* %RBP
  %144 = sub i64 %143, 132
  %145 = load i64, i64* %PC
  %146 = add i64 %145, 10
  store i64 %146, i64* %PC
  %147 = inttoptr i64 %144 to i32*
  store i32 1, i32* %147
  br label %block_4007c6

block_4007d3:                                     ; preds = %block_4007c6
  %148 = load i64, i64* %RBP
  %149 = sub i64 %148, 20
  %150 = load i64, i64* %PC
  %151 = add i64 %150, 5
  store i64 %151, i64* %PC
  %152 = inttoptr i64 %149 to float*
  %153 = load float, float* %152
  %154 = bitcast i8* %2054 to float*
  store float %153, float* %154, align 1, !tbaa !2453
  %155 = getelementptr inbounds i8, i8* %2054, i64 4
  %156 = bitcast i8* %155 to float*
  store float 0.000000e+00, float* %156, align 1, !tbaa !2453
  %157 = getelementptr inbounds i8, i8* %2054, i64 8
  %158 = bitcast i8* %157 to float*
  store float 0.000000e+00, float* %158, align 1, !tbaa !2453
  %159 = getelementptr inbounds i8, i8* %2054, i64 12
  %160 = bitcast i8* %159 to float*
  store float 0.000000e+00, float* %160, align 1, !tbaa !2453
  %161 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %162 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %163 = load i64, i64* %RBP
  %164 = sub i64 %163, 24
  %165 = load i64, i64* %PC
  %166 = add i64 %165, 5
  store i64 %166, i64* %PC
  %167 = bitcast i8* %162 to <2 x float>*
  %168 = load <2 x float>, <2 x float>* %167, align 1
  %169 = getelementptr inbounds i8, i8* %162, i64 8
  %170 = bitcast i8* %169 to <2 x i32>*
  %171 = load <2 x i32>, <2 x i32>* %170, align 1
  %172 = inttoptr i64 %164 to float*
  %173 = load float, float* %172
  %174 = extractelement <2 x float> %168, i32 0
  %175 = fdiv float %174, %173
  %176 = bitcast i8* %161 to float*
  store float %175, float* %176, align 1, !tbaa !2453
  %177 = bitcast <2 x float> %168 to <2 x i32>
  %178 = extractelement <2 x i32> %177, i32 1
  %179 = getelementptr inbounds i8, i8* %161, i64 4
  %180 = bitcast i8* %179 to i32*
  store i32 %178, i32* %180, align 1, !tbaa !2453
  %181 = extractelement <2 x i32> %171, i32 0
  %182 = getelementptr inbounds i8, i8* %161, i64 8
  %183 = bitcast i8* %182 to i32*
  store i32 %181, i32* %183, align 1, !tbaa !2453
  %184 = extractelement <2 x i32> %171, i32 1
  %185 = getelementptr inbounds i8, i8* %161, i64 12
  %186 = bitcast i8* %185 to i32*
  store i32 %184, i32* %186, align 1, !tbaa !2453
  %187 = load i64, i64* %PC
  %188 = sub i64 %187, 621
  %189 = load i64, i64* %PC
  %190 = add i64 %189, 5
  %191 = load i64, i64* %PC
  %192 = add i64 %191, 5
  store i64 %192, i64* %PC
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %194 = load i64, i64* %193, align 8, !tbaa !2428
  %195 = add i64 %194, -8
  %196 = inttoptr i64 %195 to i64*
  store i64 %190, i64* %196
  store i64 %195, i64* %193, align 8, !tbaa !2428
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %188, i64* %197, align 8, !tbaa !2428
  %198 = load i64, i64* %PC
  %199 = call %struct.Memory* @sub_400570_Cos(%struct.State* %0, i64 %198, %struct.Memory* %MEMORY.2)
  %200 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %201 = load i64, i64* %PC
  %202 = add i64 %201, 8
  store i64 %202, i64* %PC
  %203 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_400ef0__rodata_type* @seg_400ef0__rodata to i64), i64 4) to float*)
  %204 = bitcast i8* %200 to float*
  store float %203, float* %204, align 1, !tbaa !2453
  %205 = getelementptr inbounds i8, i8* %200, i64 4
  %206 = bitcast i8* %205 to float*
  store float 0.000000e+00, float* %206, align 1, !tbaa !2453
  %207 = getelementptr inbounds i8, i8* %200, i64 8
  %208 = bitcast i8* %207 to float*
  store float 0.000000e+00, float* %208, align 1, !tbaa !2453
  %209 = getelementptr inbounds i8, i8* %200, i64 12
  %210 = bitcast i8* %209 to float*
  store float 0.000000e+00, float* %210, align 1, !tbaa !2453
  %211 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %212 = load i64, i64* %PC
  %213 = add i64 %212, 8
  store i64 %213, i64* %PC
  %214 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_400ef0__rodata_type* @seg_400ef0__rodata to i64), i64 24) to float*)
  %215 = bitcast i8* %211 to float*
  store float %214, float* %215, align 1, !tbaa !2453
  %216 = getelementptr inbounds i8, i8* %211, i64 4
  %217 = bitcast i8* %216 to float*
  store float 0.000000e+00, float* %217, align 1, !tbaa !2453
  %218 = getelementptr inbounds i8, i8* %211, i64 8
  %219 = bitcast i8* %218 to float*
  store float 0.000000e+00, float* %219, align 1, !tbaa !2453
  %220 = getelementptr inbounds i8, i8* %211, i64 12
  %221 = bitcast i8* %220 to float*
  store float 0.000000e+00, float* %221, align 1, !tbaa !2453
  %222 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %223 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %224 = bitcast %union.vec128_t* %XMM0 to i8*
  %225 = load i64, i64* %PC
  %226 = add i64 %225, 4
  store i64 %226, i64* %PC
  %227 = bitcast i8* %223 to <2 x float>*
  %228 = load <2 x float>, <2 x float>* %227, align 1
  %229 = getelementptr inbounds i8, i8* %223, i64 8
  %230 = bitcast i8* %229 to <2 x i32>*
  %231 = load <2 x i32>, <2 x i32>* %230, align 1
  %232 = bitcast i8* %224 to <2 x float>*
  %233 = load <2 x float>, <2 x float>* %232, align 1
  %234 = extractelement <2 x float> %228, i32 0
  %235 = extractelement <2 x float> %233, i32 0
  %236 = fmul float %234, %235
  %237 = bitcast i8* %222 to float*
  store float %236, float* %237, align 1, !tbaa !2453
  %238 = bitcast <2 x float> %228 to <2 x i32>
  %239 = extractelement <2 x i32> %238, i32 1
  %240 = getelementptr inbounds i8, i8* %222, i64 4
  %241 = bitcast i8* %240 to i32*
  store i32 %239, i32* %241, align 1, !tbaa !2453
  %242 = extractelement <2 x i32> %231, i32 0
  %243 = getelementptr inbounds i8, i8* %222, i64 8
  %244 = bitcast i8* %243 to i32*
  store i32 %242, i32* %244, align 1, !tbaa !2453
  %245 = extractelement <2 x i32> %231, i32 1
  %246 = getelementptr inbounds i8, i8* %222, i64 12
  %247 = bitcast i8* %246 to i32*
  store i32 %245, i32* %247, align 1, !tbaa !2453
  %248 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %249 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %250 = bitcast %union.vec128_t* %XMM2 to i8*
  %251 = load i64, i64* %PC
  %252 = add i64 %251, 4
  store i64 %252, i64* %PC
  %253 = bitcast i8* %249 to <2 x float>*
  %254 = load <2 x float>, <2 x float>* %253, align 1
  %255 = getelementptr inbounds i8, i8* %249, i64 8
  %256 = bitcast i8* %255 to <2 x i32>*
  %257 = load <2 x i32>, <2 x i32>* %256, align 1
  %258 = bitcast i8* %250 to <2 x float>*
  %259 = load <2 x float>, <2 x float>* %258, align 1
  %260 = extractelement <2 x float> %254, i32 0
  %261 = extractelement <2 x float> %259, i32 0
  %262 = fdiv float %260, %261
  %263 = bitcast i8* %248 to float*
  store float %262, float* %263, align 1, !tbaa !2453
  %264 = bitcast <2 x float> %254 to <2 x i32>
  %265 = extractelement <2 x i32> %264, i32 1
  %266 = getelementptr inbounds i8, i8* %248, i64 4
  %267 = bitcast i8* %266 to i32*
  store i32 %265, i32* %267, align 1, !tbaa !2453
  %268 = extractelement <2 x i32> %257, i32 0
  %269 = getelementptr inbounds i8, i8* %248, i64 8
  %270 = bitcast i8* %269 to i32*
  store i32 %268, i32* %270, align 1, !tbaa !2453
  %271 = extractelement <2 x i32> %257, i32 1
  %272 = getelementptr inbounds i8, i8* %248, i64 12
  %273 = bitcast i8* %272 to i32*
  store i32 %271, i32* %273, align 1, !tbaa !2453
  %274 = load i64, i64* %RBP
  %275 = sub i64 %274, 132
  %276 = load i64, i64* %PC
  %277 = add i64 %276, 7
  store i64 %277, i64* %PC
  %278 = inttoptr i64 %275 to i32*
  %279 = load i32, i32* %278
  %280 = sext i32 %279 to i64
  store i64 %280, i64* %RAX, align 8, !tbaa !2428
  %281 = load i64, i64* %RBP
  %282 = load i64, i64* %RAX
  %283 = mul i64 %282, 4
  %284 = add i64 %281, -128
  %285 = add i64 %284, %283
  %286 = bitcast %union.vec128_t* %XMM1 to i8*
  %287 = load i64, i64* %PC
  %288 = add i64 %287, 6
  store i64 %288, i64* %PC
  %289 = bitcast i8* %286 to <2 x float>*
  %290 = load <2 x float>, <2 x float>* %289, align 1
  %291 = extractelement <2 x float> %290, i32 0
  %292 = inttoptr i64 %285 to float*
  store float %291, float* %292
  %293 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %294 = load i64, i64* %RBP
  %295 = sub i64 %294, 24
  %296 = load i64, i64* %PC
  %297 = add i64 %296, 5
  store i64 %297, i64* %PC
  %298 = inttoptr i64 %295 to float*
  %299 = load float, float* %298
  %300 = bitcast i8* %293 to float*
  store float %299, float* %300, align 1, !tbaa !2453
  %301 = getelementptr inbounds i8, i8* %293, i64 4
  %302 = bitcast i8* %301 to float*
  store float 0.000000e+00, float* %302, align 1, !tbaa !2453
  %303 = getelementptr inbounds i8, i8* %293, i64 8
  %304 = bitcast i8* %303 to float*
  store float 0.000000e+00, float* %304, align 1, !tbaa !2453
  %305 = getelementptr inbounds i8, i8* %293, i64 12
  %306 = bitcast i8* %305 to float*
  store float 0.000000e+00, float* %306, align 1, !tbaa !2453
  %307 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %308 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %309 = load i64, i64* %RBP
  %310 = sub i64 %309, 24
  %311 = load i64, i64* %PC
  %312 = add i64 %311, 5
  store i64 %312, i64* %PC
  %313 = bitcast i8* %308 to <2 x float>*
  %314 = load <2 x float>, <2 x float>* %313, align 1
  %315 = getelementptr inbounds i8, i8* %308, i64 8
  %316 = bitcast i8* %315 to <2 x i32>*
  %317 = load <2 x i32>, <2 x i32>* %316, align 1
  %318 = inttoptr i64 %310 to float*
  %319 = load float, float* %318
  %320 = extractelement <2 x float> %314, i32 0
  %321 = fadd float %320, %319
  %322 = bitcast i8* %307 to float*
  store float %321, float* %322, align 1, !tbaa !2453
  %323 = bitcast <2 x float> %314 to <2 x i32>
  %324 = extractelement <2 x i32> %323, i32 1
  %325 = getelementptr inbounds i8, i8* %307, i64 4
  %326 = bitcast i8* %325 to i32*
  store i32 %324, i32* %326, align 1, !tbaa !2453
  %327 = extractelement <2 x i32> %317, i32 0
  %328 = getelementptr inbounds i8, i8* %307, i64 8
  %329 = bitcast i8* %328 to i32*
  store i32 %327, i32* %329, align 1, !tbaa !2453
  %330 = extractelement <2 x i32> %317, i32 1
  %331 = getelementptr inbounds i8, i8* %307, i64 12
  %332 = bitcast i8* %331 to i32*
  store i32 %330, i32* %332, align 1, !tbaa !2453
  %333 = load i64, i64* %RBP
  %334 = sub i64 %333, 24
  %335 = bitcast %union.vec128_t* %XMM0 to i8*
  %336 = load i64, i64* %PC
  %337 = add i64 %336, 5
  store i64 %337, i64* %PC
  %338 = bitcast i8* %335 to <2 x float>*
  %339 = load <2 x float>, <2 x float>* %338, align 1
  %340 = extractelement <2 x float> %339, i32 0
  %341 = inttoptr i64 %334 to float*
  store float %340, float* %341
  %342 = load i64, i64* %RBP
  %343 = sub i64 %342, 132
  %344 = load i64, i64* %PC
  %345 = add i64 %344, 6
  store i64 %345, i64* %PC
  %346 = inttoptr i64 %343 to i32*
  %347 = load i32, i32* %346
  %348 = zext i32 %347 to i64
  store i64 %348, i64* %RAX, align 8, !tbaa !2428
  %349 = load i64, i64* %RAX
  %350 = load i64, i64* %PC
  %351 = add i64 %350, 3
  store i64 %351, i64* %PC
  %352 = trunc i64 %349 to i32
  %353 = add i32 1, %352
  %354 = zext i32 %353 to i64
  store i64 %354, i64* %RAX, align 8, !tbaa !2428
  %355 = icmp ult i32 %353, %352
  %356 = icmp ult i32 %353, 1
  %357 = or i1 %355, %356
  %358 = zext i1 %357 to i8
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %358, i8* %359, align 1, !tbaa !2434
  %360 = and i32 %353, 255
  %361 = call i32 @llvm.ctpop.i32(i32 %360) #17
  %362 = trunc i32 %361 to i8
  %363 = and i8 %362, 1
  %364 = xor i8 %363, 1
  %365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %364, i8* %365, align 1, !tbaa !2447
  %366 = xor i64 1, %349
  %367 = trunc i64 %366 to i32
  %368 = xor i32 %367, %353
  %369 = lshr i32 %368, 4
  %370 = trunc i32 %369 to i8
  %371 = and i8 %370, 1
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %371, i8* %372, align 1, !tbaa !2448
  %373 = icmp eq i32 %353, 0
  %374 = zext i1 %373 to i8
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %374, i8* %375, align 1, !tbaa !2449
  %376 = lshr i32 %353, 31
  %377 = trunc i32 %376 to i8
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %377, i8* %378, align 1, !tbaa !2450
  %379 = lshr i32 %352, 31
  %380 = xor i32 %376, %379
  %381 = add nuw nsw i32 %380, %376
  %382 = icmp eq i32 %381, 2
  %383 = zext i1 %382 to i8
  %384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %383, i8* %384, align 1, !tbaa !2451
  %385 = load i64, i64* %RBP
  %386 = sub i64 %385, 132
  %387 = load i32, i32* %EAX
  %388 = zext i32 %387 to i64
  %389 = load i64, i64* %PC
  %390 = add i64 %389, 6
  store i64 %390, i64* %PC
  %391 = inttoptr i64 %386 to i32*
  store i32 %387, i32* %391
  %392 = load i64, i64* %PC
  %393 = sub i64 %392, 95
  %394 = load i64, i64* %PC
  %395 = add i64 %394, 5
  store i64 %395, i64* %PC
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %393, i64* %396, align 8, !tbaa !2428
  br label %block_4007c6

block_40082a:                                     ; preds = %block_4007c6
  %397 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %398 = bitcast %union.vec128_t* %XMM0 to i8*
  %399 = load i64, i64* %PC
  %400 = add i64 %399, 3
  store i64 %400, i64* %PC
  %401 = bitcast i8* %397 to i64*
  %402 = load i64, i64* %401, align 1
  %403 = getelementptr inbounds i8, i8* %397, i64 8
  %404 = bitcast i8* %403 to i64*
  %405 = load i64, i64* %404, align 1
  %406 = bitcast i8* %398 to i64*
  %407 = load i64, i64* %406, align 1
  %408 = getelementptr inbounds i8, i8* %398, i64 8
  %409 = bitcast i8* %408 to i64*
  %410 = load i64, i64* %409, align 1
  %411 = xor i64 %407, %402
  %412 = xor i64 %410, %405
  %413 = trunc i64 %411 to i32
  %414 = lshr i64 %411, 32
  %415 = trunc i64 %414 to i32
  %416 = bitcast i8* %2054 to i32*
  store i32 %413, i32* %416, align 1, !tbaa !2432
  %417 = getelementptr inbounds i8, i8* %2054, i64 4
  %418 = bitcast i8* %417 to i32*
  store i32 %415, i32* %418, align 1, !tbaa !2432
  %419 = trunc i64 %412 to i32
  %420 = getelementptr inbounds i8, i8* %2054, i64 8
  %421 = bitcast i8* %420 to i32*
  store i32 %419, i32* %421, align 1, !tbaa !2432
  %422 = lshr i64 %412, 32
  %423 = trunc i64 %422 to i32
  %424 = getelementptr inbounds i8, i8* %2054, i64 12
  %425 = bitcast i8* %424 to i32*
  store i32 %423, i32* %425, align 1, !tbaa !2432
  %426 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %427 = load i64, i64* %PC
  %428 = add i64 %427, 8
  store i64 %428, i64* %PC
  %429 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_400ef0__rodata_type* @seg_400ef0__rodata to i64), i64 20) to float*)
  %430 = bitcast i8* %426 to float*
  store float %429, float* %430, align 1, !tbaa !2453
  %431 = getelementptr inbounds i8, i8* %426, i64 4
  %432 = bitcast i8* %431 to float*
  store float 0.000000e+00, float* %432, align 1, !tbaa !2453
  %433 = getelementptr inbounds i8, i8* %426, i64 8
  %434 = bitcast i8* %433 to float*
  store float 0.000000e+00, float* %434, align 1, !tbaa !2453
  %435 = getelementptr inbounds i8, i8* %426, i64 12
  %436 = bitcast i8* %435 to float*
  store float 0.000000e+00, float* %436, align 1, !tbaa !2453
  %437 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %438 = load i64, i64* %PC
  %439 = add i64 %438, 8
  store i64 %439, i64* %PC
  %440 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_400ef0__rodata_type* @seg_400ef0__rodata to i64), i64 4) to float*)
  %441 = bitcast i8* %437 to float*
  store float %440, float* %441, align 1, !tbaa !2453
  %442 = getelementptr inbounds i8, i8* %437, i64 4
  %443 = bitcast i8* %442 to float*
  store float 0.000000e+00, float* %443, align 1, !tbaa !2453
  %444 = getelementptr inbounds i8, i8* %437, i64 8
  %445 = bitcast i8* %444 to float*
  store float 0.000000e+00, float* %445, align 1, !tbaa !2453
  %446 = getelementptr inbounds i8, i8* %437, i64 12
  %447 = bitcast i8* %446 to float*
  store float 0.000000e+00, float* %447, align 1, !tbaa !2453
  %448 = load i64, i64* %PC
  %449 = add i64 %448, 5
  store i64 %449, i64* %PC
  store i64 2, i64* %RAX, align 8, !tbaa !2428
  %450 = load i64, i64* %RBP
  %451 = sub i64 %450, 4
  %452 = load i64, i64* %PC
  %453 = add i64 %452, 3
  store i64 %453, i64* %PC
  %454 = inttoptr i64 %451 to i32*
  %455 = load i32, i32* %454
  %456 = zext i32 %455 to i64
  store i64 %456, i64* %RCX, align 8, !tbaa !2428
  %457 = load i64, i64* %RBP
  %458 = sub i64 %457, 152
  %459 = load i32, i32* %EAX
  %460 = zext i32 %459 to i64
  %461 = load i64, i64* %PC
  %462 = add i64 %461, 6
  store i64 %462, i64* %PC
  %463 = inttoptr i64 %458 to i32*
  store i32 %459, i32* %463
  %464 = load i32, i32* %ECX
  %465 = zext i32 %464 to i64
  %466 = load i64, i64* %PC
  %467 = add i64 %466, 2
  store i64 %467, i64* %PC
  %468 = and i64 %465, 4294967295
  store i64 %468, i64* %RAX, align 8, !tbaa !2428
  %469 = load i64, i64* %PC
  %470 = add i64 %469, 1
  store i64 %470, i64* %PC
  %471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %473 = bitcast %union.anon* %472 to i32*
  %474 = load i32, i32* %473, align 8, !tbaa !2432
  %475 = sext i32 %474 to i64
  %476 = lshr i64 %475, 32
  store i64 %476, i64* %471, align 8, !tbaa !2428
  %477 = load i64, i64* %RBP
  %478 = sub i64 %477, 152
  %479 = load i64, i64* %PC
  %480 = add i64 %479, 6
  store i64 %480, i64* %PC
  %481 = inttoptr i64 %478 to i32*
  %482 = load i32, i32* %481
  %483 = zext i32 %482 to i64
  store i64 %483, i64* %RCX, align 8, !tbaa !2428
  %484 = load i32, i32* %ECX
  %485 = zext i32 %484 to i64
  %486 = load i64, i64* %PC
  %487 = add i64 %486, 2
  store i64 %487, i64* %PC
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %489 = bitcast %union.anon* %488 to i32*
  %490 = load i32, i32* %489, align 8, !tbaa !2432
  %491 = zext i32 %490 to i64
  %492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %493 = bitcast %union.anon* %492 to i32*
  %494 = load i32, i32* %493, align 8, !tbaa !2432
  %495 = zext i32 %494 to i64
  %496 = shl i64 %485, 32
  %497 = ashr exact i64 %496, 32
  %498 = shl nuw i64 %495, 32
  %499 = or i64 %498, %491
  %500 = sdiv i64 %499, %497
  %501 = shl i64 %500, 32
  %502 = ashr exact i64 %501, 32
  %503 = icmp eq i64 %500, %502
  br i1 %503, label %508, label %504

; <label>:504:                                    ; preds = %block_40082a
  %505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %506 = load i64, i64* %505, align 8, !tbaa !2428
  %507 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %506, %struct.Memory* %MEMORY.2) #16
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit2

; <label>:508:                                    ; preds = %block_40082a
  %509 = srem i64 %499, %497
  %510 = getelementptr inbounds %union.anon, %union.anon* %488, i64 0, i32 0
  %511 = and i64 %500, 4294967295
  store i64 %511, i64* %510, align 8, !tbaa !2428
  %512 = getelementptr inbounds %union.anon, %union.anon* %492, i64 0, i32 0
  %513 = and i64 %509, 4294967295
  store i64 %513, i64* %512, align 8, !tbaa !2428
  %514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %514, align 1, !tbaa !2434
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %515, align 1, !tbaa !2447
  %516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %516, align 1, !tbaa !2448
  %517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %517, align 1, !tbaa !2449
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %518, align 1, !tbaa !2450
  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %519, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit2

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit2: ; preds = %504, %508
  %520 = phi %struct.Memory* [ %507, %504 ], [ %MEMORY.2, %508 ]
  %521 = load i64, i64* %RBP
  %522 = sub i64 %521, 148
  %523 = load i32, i32* %EAX
  %524 = zext i32 %523 to i64
  %525 = load i64, i64* %PC
  %526 = add i64 %525, 6
  store i64 %526, i64* %PC
  %527 = inttoptr i64 %522 to i32*
  store i32 %523, i32* %527
  %528 = load i64, i64* %RBP
  %529 = sub i64 %528, 148
  %530 = load i64, i64* %PC
  %531 = add i64 %530, 6
  store i64 %531, i64* %PC
  %532 = inttoptr i64 %529 to i32*
  %533 = load i32, i32* %532
  %534 = zext i32 %533 to i64
  store i64 %534, i64* %RAX, align 8, !tbaa !2428
  %535 = load i64, i64* %PC
  %536 = add i64 %535, 1
  store i64 %536, i64* %PC
  %537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %539 = bitcast %union.anon* %538 to i32*
  %540 = load i32, i32* %539, align 8, !tbaa !2432
  %541 = sext i32 %540 to i64
  %542 = lshr i64 %541, 32
  store i64 %542, i64* %537, align 8, !tbaa !2428
  %543 = load i32, i32* %ECX
  %544 = zext i32 %543 to i64
  %545 = load i64, i64* %PC
  %546 = add i64 %545, 2
  store i64 %546, i64* %PC
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %548 = bitcast %union.anon* %547 to i32*
  %549 = load i32, i32* %548, align 8, !tbaa !2432
  %550 = zext i32 %549 to i64
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %552 = bitcast %union.anon* %551 to i32*
  %553 = load i32, i32* %552, align 8, !tbaa !2432
  %554 = zext i32 %553 to i64
  %555 = shl i64 %544, 32
  %556 = ashr exact i64 %555, 32
  %557 = shl nuw i64 %554, 32
  %558 = or i64 %557, %550
  %559 = sdiv i64 %558, %556
  %560 = shl i64 %559, 32
  %561 = ashr exact i64 %560, 32
  %562 = icmp eq i64 %559, %561
  br i1 %562, label %567, label %563

; <label>:563:                                    ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit2
  %564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %565 = load i64, i64* %564, align 8, !tbaa !2428
  %566 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %565, %struct.Memory* %520) #16
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1

; <label>:567:                                    ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit2
  %568 = srem i64 %558, %556
  %569 = getelementptr inbounds %union.anon, %union.anon* %547, i64 0, i32 0
  %570 = and i64 %559, 4294967295
  store i64 %570, i64* %569, align 8, !tbaa !2428
  %571 = getelementptr inbounds %union.anon, %union.anon* %551, i64 0, i32 0
  %572 = and i64 %568, 4294967295
  store i64 %572, i64* %571, align 8, !tbaa !2428
  %573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %573, align 1, !tbaa !2434
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %574, align 1, !tbaa !2447
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %575, align 1, !tbaa !2448
  %576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %576, align 1, !tbaa !2449
  %577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %577, align 1, !tbaa !2450
  %578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %578, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1: ; preds = %563, %567
  %579 = phi %struct.Memory* [ %566, %563 ], [ %520, %567 ]
  %580 = load i64, i64* %RBP
  %581 = sub i64 %580, 144
  %582 = load i32, i32* %EAX
  %583 = zext i32 %582 to i64
  %584 = load i64, i64* %PC
  %585 = add i64 %584, 6
  store i64 %585, i64* %PC
  %586 = inttoptr i64 %581 to i32*
  store i32 %582, i32* %586
  %587 = load i64, i64* %RBP
  %588 = sub i64 %587, 136
  %589 = load i64, i64* %PC
  %590 = add i64 %589, 10
  store i64 %590, i64* %PC
  %591 = inttoptr i64 %588 to i32*
  store i32 1, i32* %591
  %592 = load i64, i64* %RBP
  %593 = sub i64 %592, 16
  %594 = load i64, i64* %PC
  %595 = add i64 %594, 4
  store i64 %595, i64* %PC
  %596 = inttoptr i64 %593 to i64*
  %597 = load i64, i64* %596
  store i64 %597, i64* %RSI, align 8, !tbaa !2428
  %598 = load i64, i64* %RSI
  %599 = add i64 %598, 8
  %600 = bitcast %union.vec128_t* %XMM2 to i8*
  %601 = load i64, i64* %PC
  %602 = add i64 %601, 5
  store i64 %602, i64* %PC
  %603 = bitcast i8* %600 to <2 x float>*
  %604 = load <2 x float>, <2 x float>* %603, align 1
  %605 = extractelement <2 x float> %604, i32 0
  %606 = inttoptr i64 %599 to float*
  store float %605, float* %606
  %607 = load i64, i64* %RBP
  %608 = sub i64 %607, 16
  %609 = load i64, i64* %PC
  %610 = add i64 %609, 4
  store i64 %610, i64* %PC
  %611 = inttoptr i64 %608 to i64*
  %612 = load i64, i64* %611
  store i64 %612, i64* %RSI, align 8, !tbaa !2428
  %613 = load i64, i64* %RSI
  %614 = add i64 %613, 12
  %615 = bitcast %union.vec128_t* %XMM0 to i8*
  %616 = load i64, i64* %PC
  %617 = add i64 %616, 5
  store i64 %617, i64* %PC
  %618 = bitcast i8* %615 to <2 x float>*
  %619 = load <2 x float>, <2 x float>* %618, align 1
  %620 = extractelement <2 x float> %619, i32 0
  %621 = inttoptr i64 %614 to float*
  store float %620, float* %621
  %622 = load i64, i64* %RBP
  %623 = sub i64 %622, 16
  %624 = load i64, i64* %PC
  %625 = add i64 %624, 4
  store i64 %625, i64* %PC
  %626 = inttoptr i64 %623 to i64*
  %627 = load i64, i64* %626
  store i64 %627, i64* %RSI, align 8, !tbaa !2428
  %628 = load i64, i64* %RBP
  %629 = sub i64 %628, 144
  %630 = load i64, i64* %PC
  %631 = add i64 %630, 6
  store i64 %631, i64* %PC
  %632 = inttoptr i64 %629 to i32*
  %633 = load i32, i32* %632
  %634 = zext i32 %633 to i64
  store i64 %634, i64* %RAX, align 8, !tbaa !2428
  %635 = load i64, i64* %RAX
  %636 = load i64, i64* %PC
  %637 = add i64 %636, 3
  store i64 %637, i64* %PC
  %638 = trunc i64 %635 to i32
  %639 = add i32 1, %638
  %640 = zext i32 %639 to i64
  store i64 %640, i64* %RAX, align 8, !tbaa !2428
  %641 = icmp ult i32 %639, %638
  %642 = icmp ult i32 %639, 1
  %643 = or i1 %641, %642
  %644 = zext i1 %643 to i8
  %645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %644, i8* %645, align 1, !tbaa !2434
  %646 = and i32 %639, 255
  %647 = call i32 @llvm.ctpop.i32(i32 %646) #17
  %648 = trunc i32 %647 to i8
  %649 = and i8 %648, 1
  %650 = xor i8 %649, 1
  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %650, i8* %651, align 1, !tbaa !2447
  %652 = xor i64 1, %635
  %653 = trunc i64 %652 to i32
  %654 = xor i32 %653, %639
  %655 = lshr i32 %654, 4
  %656 = trunc i32 %655 to i8
  %657 = and i8 %656, 1
  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %657, i8* %658, align 1, !tbaa !2448
  %659 = icmp eq i32 %639, 0
  %660 = zext i1 %659 to i8
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %660, i8* %661, align 1, !tbaa !2449
  %662 = lshr i32 %639, 31
  %663 = trunc i32 %662 to i8
  %664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %663, i8* %664, align 1, !tbaa !2450
  %665 = lshr i32 %638, 31
  %666 = xor i32 %662, %665
  %667 = add nuw nsw i32 %666, %662
  %668 = icmp eq i32 %667, 2
  %669 = zext i1 %668 to i8
  %670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %669, i8* %670, align 1, !tbaa !2451
  %671 = load i32, i32* %EAX
  %672 = zext i32 %671 to i64
  %673 = load i64, i64* %PC
  %674 = add i64 %673, 3
  store i64 %674, i64* %PC
  %675 = shl i64 %672, 32
  %676 = ashr exact i64 %675, 32
  store i64 %676, i64* %RDI, align 8, !tbaa !2428
  %677 = load i64, i64* %RSI
  %678 = load i64, i64* %RDI
  %679 = mul i64 %678, 8
  %680 = add i64 %679, %677
  %681 = bitcast %union.vec128_t* %XMM0 to i8*
  %682 = load i64, i64* %PC
  %683 = add i64 %682, 5
  store i64 %683, i64* %PC
  %684 = bitcast i8* %681 to <2 x float>*
  %685 = load <2 x float>, <2 x float>* %684, align 1
  %686 = extractelement <2 x float> %685, i32 0
  %687 = inttoptr i64 %680 to float*
  store float %686, float* %687
  %688 = load i64, i64* %RBP
  %689 = sub i64 %688, 16
  %690 = load i64, i64* %PC
  %691 = add i64 %690, 4
  store i64 %691, i64* %PC
  %692 = inttoptr i64 %689 to i64*
  %693 = load i64, i64* %692
  store i64 %693, i64* %RSI, align 8, !tbaa !2428
  %694 = load i64, i64* %RBP
  %695 = sub i64 %694, 144
  %696 = load i64, i64* %PC
  %697 = add i64 %696, 6
  store i64 %697, i64* %PC
  %698 = inttoptr i64 %695 to i32*
  %699 = load i32, i32* %698
  %700 = zext i32 %699 to i64
  store i64 %700, i64* %RAX, align 8, !tbaa !2428
  %701 = load i64, i64* %RAX
  %702 = load i64, i64* %PC
  %703 = add i64 %702, 3
  store i64 %703, i64* %PC
  %704 = trunc i64 %701 to i32
  %705 = add i32 1, %704
  %706 = zext i32 %705 to i64
  store i64 %706, i64* %RAX, align 8, !tbaa !2428
  %707 = icmp ult i32 %705, %704
  %708 = icmp ult i32 %705, 1
  %709 = or i1 %707, %708
  %710 = zext i1 %709 to i8
  %711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %710, i8* %711, align 1, !tbaa !2434
  %712 = and i32 %705, 255
  %713 = call i32 @llvm.ctpop.i32(i32 %712) #17
  %714 = trunc i32 %713 to i8
  %715 = and i8 %714, 1
  %716 = xor i8 %715, 1
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %716, i8* %717, align 1, !tbaa !2447
  %718 = xor i64 1, %701
  %719 = trunc i64 %718 to i32
  %720 = xor i32 %719, %705
  %721 = lshr i32 %720, 4
  %722 = trunc i32 %721 to i8
  %723 = and i8 %722, 1
  %724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %723, i8* %724, align 1, !tbaa !2448
  %725 = icmp eq i32 %705, 0
  %726 = zext i1 %725 to i8
  %727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %726, i8* %727, align 1, !tbaa !2449
  %728 = lshr i32 %705, 31
  %729 = trunc i32 %728 to i8
  %730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %729, i8* %730, align 1, !tbaa !2450
  %731 = lshr i32 %704, 31
  %732 = xor i32 %728, %731
  %733 = add nuw nsw i32 %732, %728
  %734 = icmp eq i32 %733, 2
  %735 = zext i1 %734 to i8
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %735, i8* %736, align 1, !tbaa !2451
  %737 = load i32, i32* %EAX
  %738 = zext i32 %737 to i64
  %739 = load i64, i64* %PC
  %740 = add i64 %739, 3
  store i64 %740, i64* %PC
  %741 = shl i64 %738, 32
  %742 = ashr exact i64 %741, 32
  store i64 %742, i64* %RDI, align 8, !tbaa !2428
  %743 = load i64, i64* %RSI
  %744 = load i64, i64* %RDI
  %745 = mul i64 %744, 8
  %746 = add i64 %743, 4
  %747 = add i64 %746, %745
  %748 = bitcast %union.vec128_t* %XMM2 to i8*
  %749 = load i64, i64* %PC
  %750 = add i64 %749, 6
  store i64 %750, i64* %PC
  %751 = bitcast i8* %748 to <2 x float>*
  %752 = load <2 x float>, <2 x float>* %751, align 1
  %753 = extractelement <2 x float> %752, i32 0
  %754 = inttoptr i64 %747 to float*
  store float %753, float* %754
  %755 = load i64, i64* %RBP
  %756 = sub i64 %755, 16
  %757 = load i64, i64* %PC
  %758 = add i64 %757, 4
  store i64 %758, i64* %PC
  %759 = inttoptr i64 %756 to i64*
  %760 = load i64, i64* %759
  store i64 %760, i64* %RSI, align 8, !tbaa !2428
  %761 = load i64, i64* %RBP
  %762 = sub i64 %761, 148
  %763 = load i64, i64* %PC
  %764 = add i64 %763, 6
  store i64 %764, i64* %PC
  %765 = inttoptr i64 %762 to i32*
  %766 = load i32, i32* %765
  %767 = zext i32 %766 to i64
  store i64 %767, i64* %RAX, align 8, !tbaa !2428
  %768 = load i64, i64* %RAX
  %769 = load i64, i64* %PC
  %770 = add i64 %769, 3
  store i64 %770, i64* %PC
  %771 = trunc i64 %768 to i32
  %772 = add i32 1, %771
  %773 = zext i32 %772 to i64
  store i64 %773, i64* %RAX, align 8, !tbaa !2428
  %774 = icmp ult i32 %772, %771
  %775 = icmp ult i32 %772, 1
  %776 = or i1 %774, %775
  %777 = zext i1 %776 to i8
  %778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %777, i8* %778, align 1, !tbaa !2434
  %779 = and i32 %772, 255
  %780 = call i32 @llvm.ctpop.i32(i32 %779) #17
  %781 = trunc i32 %780 to i8
  %782 = and i8 %781, 1
  %783 = xor i8 %782, 1
  %784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %783, i8* %784, align 1, !tbaa !2447
  %785 = xor i64 1, %768
  %786 = trunc i64 %785 to i32
  %787 = xor i32 %786, %772
  %788 = lshr i32 %787, 4
  %789 = trunc i32 %788 to i8
  %790 = and i8 %789, 1
  %791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %790, i8* %791, align 1, !tbaa !2448
  %792 = icmp eq i32 %772, 0
  %793 = zext i1 %792 to i8
  %794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %793, i8* %794, align 1, !tbaa !2449
  %795 = lshr i32 %772, 31
  %796 = trunc i32 %795 to i8
  %797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %796, i8* %797, align 1, !tbaa !2450
  %798 = lshr i32 %771, 31
  %799 = xor i32 %795, %798
  %800 = add nuw nsw i32 %799, %795
  %801 = icmp eq i32 %800, 2
  %802 = zext i1 %801 to i8
  %803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %802, i8* %803, align 1, !tbaa !2451
  %804 = load i32, i32* %EAX
  %805 = zext i32 %804 to i64
  %806 = load i64, i64* %PC
  %807 = add i64 %806, 3
  store i64 %807, i64* %PC
  %808 = shl i64 %805, 32
  %809 = ashr exact i64 %808, 32
  store i64 %809, i64* %RDI, align 8, !tbaa !2428
  %810 = load i64, i64* %RSI
  %811 = load i64, i64* %RDI
  %812 = mul i64 %811, 8
  %813 = add i64 %812, %810
  %814 = bitcast %union.vec128_t* %XMM1 to i8*
  %815 = load i64, i64* %PC
  %816 = add i64 %815, 5
  store i64 %816, i64* %PC
  %817 = bitcast i8* %814 to <2 x float>*
  %818 = load <2 x float>, <2 x float>* %817, align 1
  %819 = extractelement <2 x float> %818, i32 0
  %820 = inttoptr i64 %813 to float*
  store float %819, float* %820
  %821 = load i64, i64* %RBP
  %822 = sub i64 %821, 16
  %823 = load i64, i64* %PC
  %824 = add i64 %823, 4
  store i64 %824, i64* %PC
  %825 = inttoptr i64 %822 to i64*
  %826 = load i64, i64* %825
  store i64 %826, i64* %RSI, align 8, !tbaa !2428
  %827 = load i64, i64* %RBP
  %828 = sub i64 %827, 148
  %829 = load i64, i64* %PC
  %830 = add i64 %829, 6
  store i64 %830, i64* %PC
  %831 = inttoptr i64 %828 to i32*
  %832 = load i32, i32* %831
  %833 = zext i32 %832 to i64
  store i64 %833, i64* %RAX, align 8, !tbaa !2428
  %834 = load i64, i64* %RAX
  %835 = load i64, i64* %PC
  %836 = add i64 %835, 3
  store i64 %836, i64* %PC
  %837 = trunc i64 %834 to i32
  %838 = add i32 1, %837
  %839 = zext i32 %838 to i64
  store i64 %839, i64* %RAX, align 8, !tbaa !2428
  %840 = icmp ult i32 %838, %837
  %841 = icmp ult i32 %838, 1
  %842 = or i1 %840, %841
  %843 = zext i1 %842 to i8
  %844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %843, i8* %844, align 1, !tbaa !2434
  %845 = and i32 %838, 255
  %846 = call i32 @llvm.ctpop.i32(i32 %845) #17
  %847 = trunc i32 %846 to i8
  %848 = and i8 %847, 1
  %849 = xor i8 %848, 1
  %850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %849, i8* %850, align 1, !tbaa !2447
  %851 = xor i64 1, %834
  %852 = trunc i64 %851 to i32
  %853 = xor i32 %852, %838
  %854 = lshr i32 %853, 4
  %855 = trunc i32 %854 to i8
  %856 = and i8 %855, 1
  %857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %856, i8* %857, align 1, !tbaa !2448
  %858 = icmp eq i32 %838, 0
  %859 = zext i1 %858 to i8
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %859, i8* %860, align 1, !tbaa !2449
  %861 = lshr i32 %838, 31
  %862 = trunc i32 %861 to i8
  %863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %862, i8* %863, align 1, !tbaa !2450
  %864 = lshr i32 %837, 31
  %865 = xor i32 %861, %864
  %866 = add nuw nsw i32 %865, %861
  %867 = icmp eq i32 %866, 2
  %868 = zext i1 %867 to i8
  %869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %868, i8* %869, align 1, !tbaa !2451
  %870 = load i32, i32* %EAX
  %871 = zext i32 %870 to i64
  %872 = load i64, i64* %PC
  %873 = add i64 %872, 3
  store i64 %873, i64* %PC
  %874 = shl i64 %871, 32
  %875 = ashr exact i64 %874, 32
  store i64 %875, i64* %RDI, align 8, !tbaa !2428
  %876 = load i64, i64* %RSI
  %877 = load i64, i64* %RDI
  %878 = mul i64 %877, 8
  %879 = add i64 %876, 4
  %880 = add i64 %879, %878
  %881 = bitcast %union.vec128_t* %XMM0 to i8*
  %882 = load i64, i64* %PC
  %883 = add i64 %882, 6
  store i64 %883, i64* %PC
  %884 = bitcast i8* %881 to <2 x float>*
  %885 = load <2 x float>, <2 x float>* %884, align 1
  %886 = extractelement <2 x float> %885, i32 0
  %887 = inttoptr i64 %880 to float*
  store float %886, float* %887
  br label %block_4008dd

block_400a1e:                                     ; preds = %block_4009ea
  %888 = load i64, i64* %RSP
  %889 = load i64, i64* %PC
  %890 = add i64 %889, 7
  store i64 %890, i64* %PC
  %891 = add i64 160, %888
  store i64 %891, i64* %RSP, align 8, !tbaa !2428
  %892 = icmp ult i64 %891, %888
  %893 = icmp ult i64 %891, 160
  %894 = or i1 %892, %893
  %895 = zext i1 %894 to i8
  %896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %895, i8* %896, align 1, !tbaa !2434
  %897 = trunc i64 %891 to i32
  %898 = and i32 %897, 255
  %899 = call i32 @llvm.ctpop.i32(i32 %898) #17
  %900 = trunc i32 %899 to i8
  %901 = and i8 %900, 1
  %902 = xor i8 %901, 1
  %903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %902, i8* %903, align 1, !tbaa !2447
  %904 = xor i64 160, %888
  %905 = xor i64 %904, %891
  %906 = lshr i64 %905, 4
  %907 = trunc i64 %906 to i8
  %908 = and i8 %907, 1
  %909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %908, i8* %909, align 1, !tbaa !2448
  %910 = icmp eq i64 %891, 0
  %911 = zext i1 %910 to i8
  %912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %911, i8* %912, align 1, !tbaa !2449
  %913 = lshr i64 %891, 63
  %914 = trunc i64 %913 to i8
  %915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %914, i8* %915, align 1, !tbaa !2450
  %916 = lshr i64 %888, 63
  %917 = xor i64 %913, %916
  %918 = add nuw nsw i64 %917, %913
  %919 = icmp eq i64 %918, 2
  %920 = zext i1 %919 to i8
  %921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %920, i8* %921, align 1, !tbaa !2451
  %922 = load i64, i64* %PC
  %923 = add i64 %922, 1
  store i64 %923, i64* %PC
  %924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %925 = load i64, i64* %924, align 8, !tbaa !2428
  %926 = add i64 %925, 8
  %927 = inttoptr i64 %925 to i64*
  %928 = load i64, i64* %927
  store i64 %928, i64* %RBP, align 8, !tbaa !2428
  store i64 %926, i64* %924, align 8, !tbaa !2428
  %929 = load i64, i64* %PC
  %930 = add i64 %929, 1
  store i64 %930, i64* %PC
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %933 = load i64, i64* %932, align 8, !tbaa !2428
  %934 = inttoptr i64 %933 to i64*
  %935 = load i64, i64* %934
  store i64 %935, i64* %931, align 8, !tbaa !2428
  %936 = add i64 %933, 8
  store i64 %936, i64* %932, align 8, !tbaa !2428
  ret %struct.Memory* %1824

block_40090b:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit, %block_40090b
  %MEMORY.0 = phi %struct.Memory* [ %1975, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ], [ %MEMORY.0, %block_40090b ]
  %937 = load i64, i64* %RBP
  %938 = sub i64 %937, 136
  %939 = load i64, i64* %PC
  %940 = add i64 %939, 7
  store i64 %940, i64* %PC
  %941 = inttoptr i64 %938 to i32*
  %942 = load i32, i32* %941
  %943 = sext i32 %942 to i64
  store i64 %943, i64* %RAX, align 8, !tbaa !2428
  %944 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %945 = load i64, i64* %RBP
  %946 = load i64, i64* %RAX
  %947 = mul i64 %946, 4
  %948 = add i64 %945, -128
  %949 = add i64 %948, %947
  %950 = load i64, i64* %PC
  %951 = add i64 %950, 6
  store i64 %951, i64* %PC
  %952 = inttoptr i64 %949 to float*
  %953 = load float, float* %952
  %954 = bitcast i8* %944 to float*
  store float %953, float* %954, align 1, !tbaa !2453
  %955 = getelementptr inbounds i8, i8* %944, i64 4
  %956 = bitcast i8* %955 to float*
  store float 0.000000e+00, float* %956, align 1, !tbaa !2453
  %957 = getelementptr inbounds i8, i8* %944, i64 8
  %958 = bitcast i8* %957 to float*
  store float 0.000000e+00, float* %958, align 1, !tbaa !2453
  %959 = getelementptr inbounds i8, i8* %944, i64 12
  %960 = bitcast i8* %959 to float*
  store float 0.000000e+00, float* %960, align 1, !tbaa !2453
  %961 = load i64, i64* %RBP
  %962 = sub i64 %961, 16
  %963 = load i64, i64* %PC
  %964 = add i64 %963, 4
  store i64 %964, i64* %PC
  %965 = inttoptr i64 %962 to i64*
  %966 = load i64, i64* %965
  store i64 %966, i64* %RAX, align 8, !tbaa !2428
  %967 = load i64, i64* %RBP
  %968 = sub i64 %967, 140
  %969 = load i64, i64* %PC
  %970 = add i64 %969, 6
  store i64 %970, i64* %PC
  %971 = inttoptr i64 %968 to i32*
  %972 = load i32, i32* %971
  %973 = zext i32 %972 to i64
  store i64 %973, i64* %RCX, align 8, !tbaa !2428
  %974 = load i64, i64* %RCX
  %975 = load i64, i64* %RBP
  %976 = sub i64 %975, 132
  %977 = load i64, i64* %PC
  %978 = add i64 %977, 6
  store i64 %978, i64* %PC
  %979 = trunc i64 %974 to i32
  %980 = inttoptr i64 %976 to i32*
  %981 = load i32, i32* %980
  %982 = add i32 %981, %979
  %983 = zext i32 %982 to i64
  store i64 %983, i64* %RCX, align 8, !tbaa !2428
  %984 = icmp ult i32 %982, %979
  %985 = icmp ult i32 %982, %981
  %986 = or i1 %984, %985
  %987 = zext i1 %986 to i8
  %988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %987, i8* %988, align 1, !tbaa !2434
  %989 = and i32 %982, 255
  %990 = call i32 @llvm.ctpop.i32(i32 %989) #17
  %991 = trunc i32 %990 to i8
  %992 = and i8 %991, 1
  %993 = xor i8 %992, 1
  %994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %993, i8* %994, align 1, !tbaa !2447
  %995 = xor i32 %981, %979
  %996 = xor i32 %995, %982
  %997 = lshr i32 %996, 4
  %998 = trunc i32 %997 to i8
  %999 = and i8 %998, 1
  %1000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %999, i8* %1000, align 1, !tbaa !2448
  %1001 = icmp eq i32 %982, 0
  %1002 = zext i1 %1001 to i8
  %1003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1002, i8* %1003, align 1, !tbaa !2449
  %1004 = lshr i32 %982, 31
  %1005 = trunc i32 %1004 to i8
  %1006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1005, i8* %1006, align 1, !tbaa !2450
  %1007 = lshr i32 %979, 31
  %1008 = lshr i32 %981, 31
  %1009 = xor i32 %1004, %1007
  %1010 = xor i32 %1004, %1008
  %1011 = add nuw nsw i32 %1009, %1010
  %1012 = icmp eq i32 %1011, 2
  %1013 = zext i1 %1012 to i8
  %1014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1013, i8* %1014, align 1, !tbaa !2451
  %1015 = load i64, i64* %RCX
  %1016 = load i64, i64* %PC
  %1017 = add i64 %1016, 3
  store i64 %1017, i64* %PC
  %1018 = trunc i64 %1015 to i32
  %1019 = add i32 1, %1018
  %1020 = zext i32 %1019 to i64
  store i64 %1020, i64* %RCX, align 8, !tbaa !2428
  %1021 = icmp ult i32 %1019, %1018
  %1022 = icmp ult i32 %1019, 1
  %1023 = or i1 %1021, %1022
  %1024 = zext i1 %1023 to i8
  %1025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1024, i8* %1025, align 1, !tbaa !2434
  %1026 = and i32 %1019, 255
  %1027 = call i32 @llvm.ctpop.i32(i32 %1026) #17
  %1028 = trunc i32 %1027 to i8
  %1029 = and i8 %1028, 1
  %1030 = xor i8 %1029, 1
  %1031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1030, i8* %1031, align 1, !tbaa !2447
  %1032 = xor i64 1, %1015
  %1033 = trunc i64 %1032 to i32
  %1034 = xor i32 %1033, %1019
  %1035 = lshr i32 %1034, 4
  %1036 = trunc i32 %1035 to i8
  %1037 = and i8 %1036, 1
  %1038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1037, i8* %1038, align 1, !tbaa !2448
  %1039 = icmp eq i32 %1019, 0
  %1040 = zext i1 %1039 to i8
  %1041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1040, i8* %1041, align 1, !tbaa !2449
  %1042 = lshr i32 %1019, 31
  %1043 = trunc i32 %1042 to i8
  %1044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1043, i8* %1044, align 1, !tbaa !2450
  %1045 = lshr i32 %1018, 31
  %1046 = xor i32 %1042, %1045
  %1047 = add nuw nsw i32 %1046, %1042
  %1048 = icmp eq i32 %1047, 2
  %1049 = zext i1 %1048 to i8
  %1050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1049, i8* %1050, align 1, !tbaa !2451
  %1051 = load i32, i32* %ECX
  %1052 = zext i32 %1051 to i64
  %1053 = load i64, i64* %PC
  %1054 = add i64 %1053, 3
  store i64 %1054, i64* %PC
  %1055 = shl i64 %1052, 32
  %1056 = ashr exact i64 %1055, 32
  store i64 %1056, i64* %RDX, align 8, !tbaa !2428
  %1057 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1058 = load i64, i64* %RAX
  %1059 = load i64, i64* %RDX
  %1060 = mul i64 %1059, 8
  %1061 = add i64 %1060, %1058
  %1062 = load i64, i64* %PC
  %1063 = add i64 %1062, 5
  store i64 %1063, i64* %PC
  %1064 = inttoptr i64 %1061 to float*
  %1065 = load float, float* %1064
  %1066 = bitcast i8* %1057 to float*
  store float %1065, float* %1066, align 1, !tbaa !2453
  %1067 = getelementptr inbounds i8, i8* %1057, i64 4
  %1068 = bitcast i8* %1067 to float*
  store float 0.000000e+00, float* %1068, align 1, !tbaa !2453
  %1069 = getelementptr inbounds i8, i8* %1057, i64 8
  %1070 = bitcast i8* %1069 to float*
  store float 0.000000e+00, float* %1070, align 1, !tbaa !2453
  %1071 = getelementptr inbounds i8, i8* %1057, i64 12
  %1072 = bitcast i8* %1071 to float*
  store float 0.000000e+00, float* %1072, align 1, !tbaa !2453
  %1073 = load i64, i64* %RBP
  %1074 = sub i64 %1073, 16
  %1075 = load i64, i64* %PC
  %1076 = add i64 %1075, 4
  store i64 %1076, i64* %PC
  %1077 = inttoptr i64 %1074 to i64*
  %1078 = load i64, i64* %1077
  store i64 %1078, i64* %RAX, align 8, !tbaa !2428
  %1079 = load i64, i64* %RBP
  %1080 = sub i64 %1079, 140
  %1081 = load i64, i64* %PC
  %1082 = add i64 %1081, 6
  store i64 %1082, i64* %PC
  %1083 = inttoptr i64 %1080 to i32*
  %1084 = load i32, i32* %1083
  %1085 = zext i32 %1084 to i64
  store i64 %1085, i64* %RCX, align 8, !tbaa !2428
  %1086 = load i64, i64* %RCX
  %1087 = load i64, i64* %RBP
  %1088 = sub i64 %1087, 132
  %1089 = load i64, i64* %PC
  %1090 = add i64 %1089, 6
  store i64 %1090, i64* %PC
  %1091 = trunc i64 %1086 to i32
  %1092 = inttoptr i64 %1088 to i32*
  %1093 = load i32, i32* %1092
  %1094 = sub i32 %1091, %1093
  %1095 = zext i32 %1094 to i64
  store i64 %1095, i64* %RCX, align 8, !tbaa !2428
  %1096 = icmp ult i32 %1091, %1093
  %1097 = zext i1 %1096 to i8
  %1098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1097, i8* %1098, align 1, !tbaa !2434
  %1099 = and i32 %1094, 255
  %1100 = call i32 @llvm.ctpop.i32(i32 %1099) #17
  %1101 = trunc i32 %1100 to i8
  %1102 = and i8 %1101, 1
  %1103 = xor i8 %1102, 1
  %1104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1103, i8* %1104, align 1, !tbaa !2447
  %1105 = xor i32 %1093, %1091
  %1106 = xor i32 %1105, %1094
  %1107 = lshr i32 %1106, 4
  %1108 = trunc i32 %1107 to i8
  %1109 = and i8 %1108, 1
  %1110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1109, i8* %1110, align 1, !tbaa !2448
  %1111 = icmp eq i32 %1094, 0
  %1112 = zext i1 %1111 to i8
  %1113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1112, i8* %1113, align 1, !tbaa !2449
  %1114 = lshr i32 %1094, 31
  %1115 = trunc i32 %1114 to i8
  %1116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1115, i8* %1116, align 1, !tbaa !2450
  %1117 = lshr i32 %1091, 31
  %1118 = lshr i32 %1093, 31
  %1119 = xor i32 %1118, %1117
  %1120 = xor i32 %1114, %1117
  %1121 = add nuw nsw i32 %1120, %1119
  %1122 = icmp eq i32 %1121, 2
  %1123 = zext i1 %1122 to i8
  %1124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1123, i8* %1124, align 1, !tbaa !2451
  %1125 = load i64, i64* %RCX
  %1126 = load i64, i64* %PC
  %1127 = add i64 %1126, 3
  store i64 %1127, i64* %PC
  %1128 = trunc i64 %1125 to i32
  %1129 = add i32 1, %1128
  %1130 = zext i32 %1129 to i64
  store i64 %1130, i64* %RCX, align 8, !tbaa !2428
  %1131 = icmp ult i32 %1129, %1128
  %1132 = icmp ult i32 %1129, 1
  %1133 = or i1 %1131, %1132
  %1134 = zext i1 %1133 to i8
  %1135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1134, i8* %1135, align 1, !tbaa !2434
  %1136 = and i32 %1129, 255
  %1137 = call i32 @llvm.ctpop.i32(i32 %1136) #17
  %1138 = trunc i32 %1137 to i8
  %1139 = and i8 %1138, 1
  %1140 = xor i8 %1139, 1
  %1141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1140, i8* %1141, align 1, !tbaa !2447
  %1142 = xor i64 1, %1125
  %1143 = trunc i64 %1142 to i32
  %1144 = xor i32 %1143, %1129
  %1145 = lshr i32 %1144, 4
  %1146 = trunc i32 %1145 to i8
  %1147 = and i8 %1146, 1
  %1148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1147, i8* %1148, align 1, !tbaa !2448
  %1149 = icmp eq i32 %1129, 0
  %1150 = zext i1 %1149 to i8
  %1151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1150, i8* %1151, align 1, !tbaa !2449
  %1152 = lshr i32 %1129, 31
  %1153 = trunc i32 %1152 to i8
  %1154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1153, i8* %1154, align 1, !tbaa !2450
  %1155 = lshr i32 %1128, 31
  %1156 = xor i32 %1152, %1155
  %1157 = add nuw nsw i32 %1156, %1152
  %1158 = icmp eq i32 %1157, 2
  %1159 = zext i1 %1158 to i8
  %1160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1159, i8* %1160, align 1, !tbaa !2451
  %1161 = load i32, i32* %ECX
  %1162 = zext i32 %1161 to i64
  %1163 = load i64, i64* %PC
  %1164 = add i64 %1163, 3
  store i64 %1164, i64* %PC
  %1165 = shl i64 %1162, 32
  %1166 = ashr exact i64 %1165, 32
  store i64 %1166, i64* %RDX, align 8, !tbaa !2428
  %1167 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1168 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1169 = load i64, i64* %RAX
  %1170 = load i64, i64* %RDX
  %1171 = mul i64 %1170, 8
  %1172 = add i64 %1171, %1169
  %1173 = load i64, i64* %PC
  %1174 = add i64 %1173, 5
  store i64 %1174, i64* %PC
  %1175 = bitcast i8* %1168 to <2 x float>*
  %1176 = load <2 x float>, <2 x float>* %1175, align 1
  %1177 = getelementptr inbounds i8, i8* %1168, i64 8
  %1178 = bitcast i8* %1177 to <2 x i32>*
  %1179 = load <2 x i32>, <2 x i32>* %1178, align 1
  %1180 = inttoptr i64 %1172 to float*
  %1181 = load float, float* %1180
  %1182 = extractelement <2 x float> %1176, i32 0
  %1183 = fadd float %1182, %1181
  %1184 = bitcast i8* %1167 to float*
  store float %1183, float* %1184, align 1, !tbaa !2453
  %1185 = bitcast <2 x float> %1176 to <2 x i32>
  %1186 = extractelement <2 x i32> %1185, i32 1
  %1187 = getelementptr inbounds i8, i8* %1167, i64 4
  %1188 = bitcast i8* %1187 to i32*
  store i32 %1186, i32* %1188, align 1, !tbaa !2453
  %1189 = extractelement <2 x i32> %1179, i32 0
  %1190 = getelementptr inbounds i8, i8* %1167, i64 8
  %1191 = bitcast i8* %1190 to i32*
  store i32 %1189, i32* %1191, align 1, !tbaa !2453
  %1192 = extractelement <2 x i32> %1179, i32 1
  %1193 = getelementptr inbounds i8, i8* %1167, i64 12
  %1194 = bitcast i8* %1193 to i32*
  store i32 %1192, i32* %1194, align 1, !tbaa !2453
  %1195 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1196 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1197 = bitcast %union.vec128_t* %XMM1 to i8*
  %1198 = load i64, i64* %PC
  %1199 = add i64 %1198, 4
  store i64 %1199, i64* %PC
  %1200 = bitcast i8* %1196 to <2 x float>*
  %1201 = load <2 x float>, <2 x float>* %1200, align 1
  %1202 = getelementptr inbounds i8, i8* %1196, i64 8
  %1203 = bitcast i8* %1202 to <2 x i32>*
  %1204 = load <2 x i32>, <2 x i32>* %1203, align 1
  %1205 = bitcast i8* %1197 to <2 x float>*
  %1206 = load <2 x float>, <2 x float>* %1205, align 1
  %1207 = extractelement <2 x float> %1201, i32 0
  %1208 = extractelement <2 x float> %1206, i32 0
  %1209 = fmul float %1207, %1208
  %1210 = bitcast i8* %1195 to float*
  store float %1209, float* %1210, align 1, !tbaa !2453
  %1211 = bitcast <2 x float> %1201 to <2 x i32>
  %1212 = extractelement <2 x i32> %1211, i32 1
  %1213 = getelementptr inbounds i8, i8* %1195, i64 4
  %1214 = bitcast i8* %1213 to i32*
  store i32 %1212, i32* %1214, align 1, !tbaa !2453
  %1215 = extractelement <2 x i32> %1204, i32 0
  %1216 = getelementptr inbounds i8, i8* %1195, i64 8
  %1217 = bitcast i8* %1216 to i32*
  store i32 %1215, i32* %1217, align 1, !tbaa !2453
  %1218 = extractelement <2 x i32> %1204, i32 1
  %1219 = getelementptr inbounds i8, i8* %1195, i64 12
  %1220 = bitcast i8* %1219 to i32*
  store i32 %1218, i32* %1220, align 1, !tbaa !2453
  %1221 = load i64, i64* %RBP
  %1222 = sub i64 %1221, 16
  %1223 = load i64, i64* %PC
  %1224 = add i64 %1223, 4
  store i64 %1224, i64* %PC
  %1225 = inttoptr i64 %1222 to i64*
  %1226 = load i64, i64* %1225
  store i64 %1226, i64* %RAX, align 8, !tbaa !2428
  %1227 = load i64, i64* %RBP
  %1228 = sub i64 %1227, 140
  %1229 = load i64, i64* %PC
  %1230 = add i64 %1229, 6
  store i64 %1230, i64* %PC
  %1231 = inttoptr i64 %1228 to i32*
  %1232 = load i32, i32* %1231
  %1233 = zext i32 %1232 to i64
  store i64 %1233, i64* %RCX, align 8, !tbaa !2428
  %1234 = load i64, i64* %RCX
  %1235 = load i64, i64* %PC
  %1236 = add i64 %1235, 3
  store i64 %1236, i64* %PC
  %1237 = trunc i64 %1234 to i32
  %1238 = add i32 1, %1237
  %1239 = zext i32 %1238 to i64
  store i64 %1239, i64* %RCX, align 8, !tbaa !2428
  %1240 = icmp ult i32 %1238, %1237
  %1241 = icmp ult i32 %1238, 1
  %1242 = or i1 %1240, %1241
  %1243 = zext i1 %1242 to i8
  %1244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1243, i8* %1244, align 1, !tbaa !2434
  %1245 = and i32 %1238, 255
  %1246 = call i32 @llvm.ctpop.i32(i32 %1245) #17
  %1247 = trunc i32 %1246 to i8
  %1248 = and i8 %1247, 1
  %1249 = xor i8 %1248, 1
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1249, i8* %1250, align 1, !tbaa !2447
  %1251 = xor i64 1, %1234
  %1252 = trunc i64 %1251 to i32
  %1253 = xor i32 %1252, %1238
  %1254 = lshr i32 %1253, 4
  %1255 = trunc i32 %1254 to i8
  %1256 = and i8 %1255, 1
  %1257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1256, i8* %1257, align 1, !tbaa !2448
  %1258 = icmp eq i32 %1238, 0
  %1259 = zext i1 %1258 to i8
  %1260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1259, i8* %1260, align 1, !tbaa !2449
  %1261 = lshr i32 %1238, 31
  %1262 = trunc i32 %1261 to i8
  %1263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1262, i8* %1263, align 1, !tbaa !2450
  %1264 = lshr i32 %1237, 31
  %1265 = xor i32 %1261, %1264
  %1266 = add nuw nsw i32 %1265, %1261
  %1267 = icmp eq i32 %1266, 2
  %1268 = zext i1 %1267 to i8
  %1269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1268, i8* %1269, align 1, !tbaa !2451
  %1270 = load i32, i32* %ECX
  %1271 = zext i32 %1270 to i64
  %1272 = load i64, i64* %PC
  %1273 = add i64 %1272, 3
  store i64 %1273, i64* %PC
  %1274 = shl i64 %1271, 32
  %1275 = ashr exact i64 %1274, 32
  store i64 %1275, i64* %RDX, align 8, !tbaa !2428
  %1276 = load i64, i64* %RAX
  %1277 = load i64, i64* %RDX
  %1278 = mul i64 %1277, 8
  %1279 = add i64 %1278, %1276
  %1280 = bitcast %union.vec128_t* %XMM0 to i8*
  %1281 = load i64, i64* %PC
  %1282 = add i64 %1281, 5
  store i64 %1282, i64* %PC
  %1283 = bitcast i8* %1280 to <2 x float>*
  %1284 = load <2 x float>, <2 x float>* %1283, align 1
  %1285 = extractelement <2 x float> %1284, i32 0
  %1286 = inttoptr i64 %1279 to float*
  store float %1285, float* %1286
  %1287 = load i64, i64* %RBP
  %1288 = sub i64 %1287, 136
  %1289 = load i64, i64* %PC
  %1290 = add i64 %1289, 7
  store i64 %1290, i64* %PC
  %1291 = inttoptr i64 %1288 to i32*
  %1292 = load i32, i32* %1291
  %1293 = sext i32 %1292 to i64
  store i64 %1293, i64* %RAX, align 8, !tbaa !2428
  %1294 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1295 = load i64, i64* %RBP
  %1296 = load i64, i64* %RAX
  %1297 = mul i64 %1296, 4
  %1298 = add i64 %1295, -128
  %1299 = add i64 %1298, %1297
  %1300 = load i64, i64* %PC
  %1301 = add i64 %1300, 6
  store i64 %1301, i64* %PC
  %1302 = inttoptr i64 %1299 to float*
  %1303 = load float, float* %1302
  %1304 = bitcast i8* %1294 to float*
  store float %1303, float* %1304, align 1, !tbaa !2453
  %1305 = getelementptr inbounds i8, i8* %1294, i64 4
  %1306 = bitcast i8* %1305 to float*
  store float 0.000000e+00, float* %1306, align 1, !tbaa !2453
  %1307 = getelementptr inbounds i8, i8* %1294, i64 8
  %1308 = bitcast i8* %1307 to float*
  store float 0.000000e+00, float* %1308, align 1, !tbaa !2453
  %1309 = getelementptr inbounds i8, i8* %1294, i64 12
  %1310 = bitcast i8* %1309 to float*
  store float 0.000000e+00, float* %1310, align 1, !tbaa !2453
  %1311 = load i64, i64* %RBP
  %1312 = sub i64 %1311, 16
  %1313 = load i64, i64* %PC
  %1314 = add i64 %1313, 4
  store i64 %1314, i64* %PC
  %1315 = inttoptr i64 %1312 to i64*
  %1316 = load i64, i64* %1315
  store i64 %1316, i64* %RAX, align 8, !tbaa !2428
  %1317 = load i64, i64* %RBP
  %1318 = sub i64 %1317, 140
  %1319 = load i64, i64* %PC
  %1320 = add i64 %1319, 6
  store i64 %1320, i64* %PC
  %1321 = inttoptr i64 %1318 to i32*
  %1322 = load i32, i32* %1321
  %1323 = zext i32 %1322 to i64
  store i64 %1323, i64* %RCX, align 8, !tbaa !2428
  %1324 = load i64, i64* %RCX
  %1325 = load i64, i64* %RBP
  %1326 = sub i64 %1325, 132
  %1327 = load i64, i64* %PC
  %1328 = add i64 %1327, 6
  store i64 %1328, i64* %PC
  %1329 = trunc i64 %1324 to i32
  %1330 = inttoptr i64 %1326 to i32*
  %1331 = load i32, i32* %1330
  %1332 = add i32 %1331, %1329
  %1333 = zext i32 %1332 to i64
  store i64 %1333, i64* %RCX, align 8, !tbaa !2428
  %1334 = icmp ult i32 %1332, %1329
  %1335 = icmp ult i32 %1332, %1331
  %1336 = or i1 %1334, %1335
  %1337 = zext i1 %1336 to i8
  %1338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1337, i8* %1338, align 1, !tbaa !2434
  %1339 = and i32 %1332, 255
  %1340 = call i32 @llvm.ctpop.i32(i32 %1339) #17
  %1341 = trunc i32 %1340 to i8
  %1342 = and i8 %1341, 1
  %1343 = xor i8 %1342, 1
  %1344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1343, i8* %1344, align 1, !tbaa !2447
  %1345 = xor i32 %1331, %1329
  %1346 = xor i32 %1345, %1332
  %1347 = lshr i32 %1346, 4
  %1348 = trunc i32 %1347 to i8
  %1349 = and i8 %1348, 1
  %1350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1349, i8* %1350, align 1, !tbaa !2448
  %1351 = icmp eq i32 %1332, 0
  %1352 = zext i1 %1351 to i8
  %1353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1352, i8* %1353, align 1, !tbaa !2449
  %1354 = lshr i32 %1332, 31
  %1355 = trunc i32 %1354 to i8
  %1356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1355, i8* %1356, align 1, !tbaa !2450
  %1357 = lshr i32 %1329, 31
  %1358 = lshr i32 %1331, 31
  %1359 = xor i32 %1354, %1357
  %1360 = xor i32 %1354, %1358
  %1361 = add nuw nsw i32 %1359, %1360
  %1362 = icmp eq i32 %1361, 2
  %1363 = zext i1 %1362 to i8
  %1364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1363, i8* %1364, align 1, !tbaa !2451
  %1365 = load i64, i64* %RCX
  %1366 = load i64, i64* %PC
  %1367 = add i64 %1366, 3
  store i64 %1367, i64* %PC
  %1368 = trunc i64 %1365 to i32
  %1369 = add i32 1, %1368
  %1370 = zext i32 %1369 to i64
  store i64 %1370, i64* %RCX, align 8, !tbaa !2428
  %1371 = icmp ult i32 %1369, %1368
  %1372 = icmp ult i32 %1369, 1
  %1373 = or i1 %1371, %1372
  %1374 = zext i1 %1373 to i8
  %1375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1374, i8* %1375, align 1, !tbaa !2434
  %1376 = and i32 %1369, 255
  %1377 = call i32 @llvm.ctpop.i32(i32 %1376) #17
  %1378 = trunc i32 %1377 to i8
  %1379 = and i8 %1378, 1
  %1380 = xor i8 %1379, 1
  %1381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1380, i8* %1381, align 1, !tbaa !2447
  %1382 = xor i64 1, %1365
  %1383 = trunc i64 %1382 to i32
  %1384 = xor i32 %1383, %1369
  %1385 = lshr i32 %1384, 4
  %1386 = trunc i32 %1385 to i8
  %1387 = and i8 %1386, 1
  %1388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1387, i8* %1388, align 1, !tbaa !2448
  %1389 = icmp eq i32 %1369, 0
  %1390 = zext i1 %1389 to i8
  %1391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1390, i8* %1391, align 1, !tbaa !2449
  %1392 = lshr i32 %1369, 31
  %1393 = trunc i32 %1392 to i8
  %1394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1393, i8* %1394, align 1, !tbaa !2450
  %1395 = lshr i32 %1368, 31
  %1396 = xor i32 %1392, %1395
  %1397 = add nuw nsw i32 %1396, %1392
  %1398 = icmp eq i32 %1397, 2
  %1399 = zext i1 %1398 to i8
  %1400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1399, i8* %1400, align 1, !tbaa !2451
  %1401 = load i32, i32* %ECX
  %1402 = zext i32 %1401 to i64
  %1403 = load i64, i64* %PC
  %1404 = add i64 %1403, 3
  store i64 %1404, i64* %PC
  %1405 = shl i64 %1402, 32
  %1406 = ashr exact i64 %1405, 32
  store i64 %1406, i64* %RDX, align 8, !tbaa !2428
  %1407 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1408 = load i64, i64* %RAX
  %1409 = load i64, i64* %RDX
  %1410 = mul i64 %1409, 8
  %1411 = add i64 %1408, 4
  %1412 = add i64 %1411, %1410
  %1413 = load i64, i64* %PC
  %1414 = add i64 %1413, 6
  store i64 %1414, i64* %PC
  %1415 = inttoptr i64 %1412 to float*
  %1416 = load float, float* %1415
  %1417 = bitcast i8* %1407 to float*
  store float %1416, float* %1417, align 1, !tbaa !2453
  %1418 = getelementptr inbounds i8, i8* %1407, i64 4
  %1419 = bitcast i8* %1418 to float*
  store float 0.000000e+00, float* %1419, align 1, !tbaa !2453
  %1420 = getelementptr inbounds i8, i8* %1407, i64 8
  %1421 = bitcast i8* %1420 to float*
  store float 0.000000e+00, float* %1421, align 1, !tbaa !2453
  %1422 = getelementptr inbounds i8, i8* %1407, i64 12
  %1423 = bitcast i8* %1422 to float*
  store float 0.000000e+00, float* %1423, align 1, !tbaa !2453
  %1424 = load i64, i64* %RBP
  %1425 = sub i64 %1424, 16
  %1426 = load i64, i64* %PC
  %1427 = add i64 %1426, 4
  store i64 %1427, i64* %PC
  %1428 = inttoptr i64 %1425 to i64*
  %1429 = load i64, i64* %1428
  store i64 %1429, i64* %RAX, align 8, !tbaa !2428
  %1430 = load i64, i64* %RBP
  %1431 = sub i64 %1430, 140
  %1432 = load i64, i64* %PC
  %1433 = add i64 %1432, 6
  store i64 %1433, i64* %PC
  %1434 = inttoptr i64 %1431 to i32*
  %1435 = load i32, i32* %1434
  %1436 = zext i32 %1435 to i64
  store i64 %1436, i64* %RCX, align 8, !tbaa !2428
  %1437 = load i64, i64* %RCX
  %1438 = load i64, i64* %RBP
  %1439 = sub i64 %1438, 132
  %1440 = load i64, i64* %PC
  %1441 = add i64 %1440, 6
  store i64 %1441, i64* %PC
  %1442 = trunc i64 %1437 to i32
  %1443 = inttoptr i64 %1439 to i32*
  %1444 = load i32, i32* %1443
  %1445 = sub i32 %1442, %1444
  %1446 = zext i32 %1445 to i64
  store i64 %1446, i64* %RCX, align 8, !tbaa !2428
  %1447 = icmp ult i32 %1442, %1444
  %1448 = zext i1 %1447 to i8
  %1449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1448, i8* %1449, align 1, !tbaa !2434
  %1450 = and i32 %1445, 255
  %1451 = call i32 @llvm.ctpop.i32(i32 %1450) #17
  %1452 = trunc i32 %1451 to i8
  %1453 = and i8 %1452, 1
  %1454 = xor i8 %1453, 1
  %1455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1454, i8* %1455, align 1, !tbaa !2447
  %1456 = xor i32 %1444, %1442
  %1457 = xor i32 %1456, %1445
  %1458 = lshr i32 %1457, 4
  %1459 = trunc i32 %1458 to i8
  %1460 = and i8 %1459, 1
  %1461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1460, i8* %1461, align 1, !tbaa !2448
  %1462 = icmp eq i32 %1445, 0
  %1463 = zext i1 %1462 to i8
  %1464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1463, i8* %1464, align 1, !tbaa !2449
  %1465 = lshr i32 %1445, 31
  %1466 = trunc i32 %1465 to i8
  %1467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1466, i8* %1467, align 1, !tbaa !2450
  %1468 = lshr i32 %1442, 31
  %1469 = lshr i32 %1444, 31
  %1470 = xor i32 %1469, %1468
  %1471 = xor i32 %1465, %1468
  %1472 = add nuw nsw i32 %1471, %1470
  %1473 = icmp eq i32 %1472, 2
  %1474 = zext i1 %1473 to i8
  %1475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1474, i8* %1475, align 1, !tbaa !2451
  %1476 = load i64, i64* %RCX
  %1477 = load i64, i64* %PC
  %1478 = add i64 %1477, 3
  store i64 %1478, i64* %PC
  %1479 = trunc i64 %1476 to i32
  %1480 = add i32 1, %1479
  %1481 = zext i32 %1480 to i64
  store i64 %1481, i64* %RCX, align 8, !tbaa !2428
  %1482 = icmp ult i32 %1480, %1479
  %1483 = icmp ult i32 %1480, 1
  %1484 = or i1 %1482, %1483
  %1485 = zext i1 %1484 to i8
  %1486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1485, i8* %1486, align 1, !tbaa !2434
  %1487 = and i32 %1480, 255
  %1488 = call i32 @llvm.ctpop.i32(i32 %1487) #17
  %1489 = trunc i32 %1488 to i8
  %1490 = and i8 %1489, 1
  %1491 = xor i8 %1490, 1
  %1492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1491, i8* %1492, align 1, !tbaa !2447
  %1493 = xor i64 1, %1476
  %1494 = trunc i64 %1493 to i32
  %1495 = xor i32 %1494, %1480
  %1496 = lshr i32 %1495, 4
  %1497 = trunc i32 %1496 to i8
  %1498 = and i8 %1497, 1
  %1499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1498, i8* %1499, align 1, !tbaa !2448
  %1500 = icmp eq i32 %1480, 0
  %1501 = zext i1 %1500 to i8
  %1502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1501, i8* %1502, align 1, !tbaa !2449
  %1503 = lshr i32 %1480, 31
  %1504 = trunc i32 %1503 to i8
  %1505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1504, i8* %1505, align 1, !tbaa !2450
  %1506 = lshr i32 %1479, 31
  %1507 = xor i32 %1503, %1506
  %1508 = add nuw nsw i32 %1507, %1503
  %1509 = icmp eq i32 %1508, 2
  %1510 = zext i1 %1509 to i8
  %1511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1510, i8* %1511, align 1, !tbaa !2451
  %1512 = load i32, i32* %ECX
  %1513 = zext i32 %1512 to i64
  %1514 = load i64, i64* %PC
  %1515 = add i64 %1514, 3
  store i64 %1515, i64* %PC
  %1516 = shl i64 %1513, 32
  %1517 = ashr exact i64 %1516, 32
  store i64 %1517, i64* %RDX, align 8, !tbaa !2428
  %1518 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1519 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1520 = load i64, i64* %RAX
  %1521 = load i64, i64* %RDX
  %1522 = mul i64 %1521, 8
  %1523 = add i64 %1520, 4
  %1524 = add i64 %1523, %1522
  %1525 = load i64, i64* %PC
  %1526 = add i64 %1525, 6
  store i64 %1526, i64* %PC
  %1527 = bitcast i8* %1519 to <2 x float>*
  %1528 = load <2 x float>, <2 x float>* %1527, align 1
  %1529 = getelementptr inbounds i8, i8* %1519, i64 8
  %1530 = bitcast i8* %1529 to <2 x i32>*
  %1531 = load <2 x i32>, <2 x i32>* %1530, align 1
  %1532 = inttoptr i64 %1524 to float*
  %1533 = load float, float* %1532
  %1534 = extractelement <2 x float> %1528, i32 0
  %1535 = fadd float %1534, %1533
  %1536 = bitcast i8* %1518 to float*
  store float %1535, float* %1536, align 1, !tbaa !2453
  %1537 = bitcast <2 x float> %1528 to <2 x i32>
  %1538 = extractelement <2 x i32> %1537, i32 1
  %1539 = getelementptr inbounds i8, i8* %1518, i64 4
  %1540 = bitcast i8* %1539 to i32*
  store i32 %1538, i32* %1540, align 1, !tbaa !2453
  %1541 = extractelement <2 x i32> %1531, i32 0
  %1542 = getelementptr inbounds i8, i8* %1518, i64 8
  %1543 = bitcast i8* %1542 to i32*
  store i32 %1541, i32* %1543, align 1, !tbaa !2453
  %1544 = extractelement <2 x i32> %1531, i32 1
  %1545 = getelementptr inbounds i8, i8* %1518, i64 12
  %1546 = bitcast i8* %1545 to i32*
  store i32 %1544, i32* %1546, align 1, !tbaa !2453
  %1547 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1548 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1549 = bitcast %union.vec128_t* %XMM1 to i8*
  %1550 = load i64, i64* %PC
  %1551 = add i64 %1550, 4
  store i64 %1551, i64* %PC
  %1552 = bitcast i8* %1548 to <2 x float>*
  %1553 = load <2 x float>, <2 x float>* %1552, align 1
  %1554 = getelementptr inbounds i8, i8* %1548, i64 8
  %1555 = bitcast i8* %1554 to <2 x i32>*
  %1556 = load <2 x i32>, <2 x i32>* %1555, align 1
  %1557 = bitcast i8* %1549 to <2 x float>*
  %1558 = load <2 x float>, <2 x float>* %1557, align 1
  %1559 = extractelement <2 x float> %1553, i32 0
  %1560 = extractelement <2 x float> %1558, i32 0
  %1561 = fmul float %1559, %1560
  %1562 = bitcast i8* %1547 to float*
  store float %1561, float* %1562, align 1, !tbaa !2453
  %1563 = bitcast <2 x float> %1553 to <2 x i32>
  %1564 = extractelement <2 x i32> %1563, i32 1
  %1565 = getelementptr inbounds i8, i8* %1547, i64 4
  %1566 = bitcast i8* %1565 to i32*
  store i32 %1564, i32* %1566, align 1, !tbaa !2453
  %1567 = extractelement <2 x i32> %1556, i32 0
  %1568 = getelementptr inbounds i8, i8* %1547, i64 8
  %1569 = bitcast i8* %1568 to i32*
  store i32 %1567, i32* %1569, align 1, !tbaa !2453
  %1570 = extractelement <2 x i32> %1556, i32 1
  %1571 = getelementptr inbounds i8, i8* %1547, i64 12
  %1572 = bitcast i8* %1571 to i32*
  store i32 %1570, i32* %1572, align 1, !tbaa !2453
  %1573 = load i64, i64* %RBP
  %1574 = sub i64 %1573, 16
  %1575 = load i64, i64* %PC
  %1576 = add i64 %1575, 4
  store i64 %1576, i64* %PC
  %1577 = inttoptr i64 %1574 to i64*
  %1578 = load i64, i64* %1577
  store i64 %1578, i64* %RAX, align 8, !tbaa !2428
  %1579 = load i64, i64* %RBP
  %1580 = sub i64 %1579, 140
  %1581 = load i64, i64* %PC
  %1582 = add i64 %1581, 6
  store i64 %1582, i64* %PC
  %1583 = inttoptr i64 %1580 to i32*
  %1584 = load i32, i32* %1583
  %1585 = zext i32 %1584 to i64
  store i64 %1585, i64* %RCX, align 8, !tbaa !2428
  %1586 = load i64, i64* %RCX
  %1587 = load i64, i64* %PC
  %1588 = add i64 %1587, 3
  store i64 %1588, i64* %PC
  %1589 = trunc i64 %1586 to i32
  %1590 = add i32 1, %1589
  %1591 = zext i32 %1590 to i64
  store i64 %1591, i64* %RCX, align 8, !tbaa !2428
  %1592 = icmp ult i32 %1590, %1589
  %1593 = icmp ult i32 %1590, 1
  %1594 = or i1 %1592, %1593
  %1595 = zext i1 %1594 to i8
  %1596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1595, i8* %1596, align 1, !tbaa !2434
  %1597 = and i32 %1590, 255
  %1598 = call i32 @llvm.ctpop.i32(i32 %1597) #17
  %1599 = trunc i32 %1598 to i8
  %1600 = and i8 %1599, 1
  %1601 = xor i8 %1600, 1
  %1602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1601, i8* %1602, align 1, !tbaa !2447
  %1603 = xor i64 1, %1586
  %1604 = trunc i64 %1603 to i32
  %1605 = xor i32 %1604, %1590
  %1606 = lshr i32 %1605, 4
  %1607 = trunc i32 %1606 to i8
  %1608 = and i8 %1607, 1
  %1609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1608, i8* %1609, align 1, !tbaa !2448
  %1610 = icmp eq i32 %1590, 0
  %1611 = zext i1 %1610 to i8
  %1612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1611, i8* %1612, align 1, !tbaa !2449
  %1613 = lshr i32 %1590, 31
  %1614 = trunc i32 %1613 to i8
  %1615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1614, i8* %1615, align 1, !tbaa !2450
  %1616 = lshr i32 %1589, 31
  %1617 = xor i32 %1613, %1616
  %1618 = add nuw nsw i32 %1617, %1613
  %1619 = icmp eq i32 %1618, 2
  %1620 = zext i1 %1619 to i8
  %1621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1620, i8* %1621, align 1, !tbaa !2451
  %1622 = load i32, i32* %ECX
  %1623 = zext i32 %1622 to i64
  %1624 = load i64, i64* %PC
  %1625 = add i64 %1624, 3
  store i64 %1625, i64* %PC
  %1626 = shl i64 %1623, 32
  %1627 = ashr exact i64 %1626, 32
  store i64 %1627, i64* %RDX, align 8, !tbaa !2428
  %1628 = load i64, i64* %RAX
  %1629 = load i64, i64* %RDX
  %1630 = mul i64 %1629, 8
  %1631 = add i64 %1628, 4
  %1632 = add i64 %1631, %1630
  %1633 = bitcast %union.vec128_t* %XMM0 to i8*
  %1634 = load i64, i64* %PC
  %1635 = add i64 %1634, 6
  store i64 %1635, i64* %PC
  %1636 = bitcast i8* %1633 to <2 x float>*
  %1637 = load <2 x float>, <2 x float>* %1636, align 1
  %1638 = extractelement <2 x float> %1637, i32 0
  %1639 = inttoptr i64 %1632 to float*
  store float %1638, float* %1639
  %1640 = load i64, i64* %RBP
  %1641 = sub i64 %1640, 140
  %1642 = load i64, i64* %PC
  %1643 = add i64 %1642, 6
  store i64 %1643, i64* %PC
  %1644 = inttoptr i64 %1641 to i32*
  %1645 = load i32, i32* %1644
  %1646 = zext i32 %1645 to i64
  store i64 %1646, i64* %RCX, align 8, !tbaa !2428
  %1647 = load i64, i64* %RCX
  %1648 = load i64, i64* %RBP
  %1649 = sub i64 %1648, 144
  %1650 = load i64, i64* %PC
  %1651 = add i64 %1650, 6
  store i64 %1651, i64* %PC
  %1652 = trunc i64 %1647 to i32
  %1653 = inttoptr i64 %1649 to i32*
  %1654 = load i32, i32* %1653
  %1655 = add i32 %1654, %1652
  %1656 = zext i32 %1655 to i64
  store i64 %1656, i64* %RCX, align 8, !tbaa !2428
  %1657 = icmp ult i32 %1655, %1652
  %1658 = icmp ult i32 %1655, %1654
  %1659 = or i1 %1657, %1658
  %1660 = zext i1 %1659 to i8
  %1661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1660, i8* %1661, align 1, !tbaa !2434
  %1662 = and i32 %1655, 255
  %1663 = call i32 @llvm.ctpop.i32(i32 %1662) #17
  %1664 = trunc i32 %1663 to i8
  %1665 = and i8 %1664, 1
  %1666 = xor i8 %1665, 1
  %1667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1666, i8* %1667, align 1, !tbaa !2447
  %1668 = xor i32 %1654, %1652
  %1669 = xor i32 %1668, %1655
  %1670 = lshr i32 %1669, 4
  %1671 = trunc i32 %1670 to i8
  %1672 = and i8 %1671, 1
  %1673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1672, i8* %1673, align 1, !tbaa !2448
  %1674 = icmp eq i32 %1655, 0
  %1675 = zext i1 %1674 to i8
  %1676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1675, i8* %1676, align 1, !tbaa !2449
  %1677 = lshr i32 %1655, 31
  %1678 = trunc i32 %1677 to i8
  %1679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1678, i8* %1679, align 1, !tbaa !2450
  %1680 = lshr i32 %1652, 31
  %1681 = lshr i32 %1654, 31
  %1682 = xor i32 %1677, %1680
  %1683 = xor i32 %1677, %1681
  %1684 = add nuw nsw i32 %1682, %1683
  %1685 = icmp eq i32 %1684, 2
  %1686 = zext i1 %1685 to i8
  %1687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1686, i8* %1687, align 1, !tbaa !2451
  %1688 = load i64, i64* %RBP
  %1689 = sub i64 %1688, 140
  %1690 = load i32, i32* %ECX
  %1691 = zext i32 %1690 to i64
  %1692 = load i64, i64* %PC
  %1693 = add i64 %1692, 6
  store i64 %1693, i64* %PC
  %1694 = inttoptr i64 %1689 to i32*
  store i32 %1690, i32* %1694
  %1695 = load i64, i64* %RBP
  %1696 = sub i64 %1695, 140
  %1697 = load i64, i64* %PC
  %1698 = add i64 %1697, 6
  store i64 %1698, i64* %PC
  %1699 = inttoptr i64 %1696 to i32*
  %1700 = load i32, i32* %1699
  %1701 = zext i32 %1700 to i64
  store i64 %1701, i64* %RAX, align 8, !tbaa !2428
  %1702 = load i32, i32* %EAX
  %1703 = zext i32 %1702 to i64
  %1704 = load i64, i64* %RBP
  %1705 = sub i64 %1704, 148
  %1706 = load i64, i64* %PC
  %1707 = add i64 %1706, 6
  store i64 %1707, i64* %PC
  %1708 = inttoptr i64 %1705 to i32*
  %1709 = load i32, i32* %1708
  %1710 = sub i32 %1702, %1709
  %1711 = icmp ult i32 %1702, %1709
  %1712 = zext i1 %1711 to i8
  %1713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1712, i8* %1713, align 1, !tbaa !2434
  %1714 = and i32 %1710, 255
  %1715 = call i32 @llvm.ctpop.i32(i32 %1714) #17
  %1716 = trunc i32 %1715 to i8
  %1717 = and i8 %1716, 1
  %1718 = xor i8 %1717, 1
  %1719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1718, i8* %1719, align 1, !tbaa !2447
  %1720 = xor i32 %1709, %1702
  %1721 = xor i32 %1720, %1710
  %1722 = lshr i32 %1721, 4
  %1723 = trunc i32 %1722 to i8
  %1724 = and i8 %1723, 1
  %1725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1724, i8* %1725, align 1, !tbaa !2448
  %1726 = icmp eq i32 %1710, 0
  %1727 = zext i1 %1726 to i8
  %1728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1727, i8* %1728, align 1, !tbaa !2449
  %1729 = lshr i32 %1710, 31
  %1730 = trunc i32 %1729 to i8
  %1731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1730, i8* %1731, align 1, !tbaa !2450
  %1732 = lshr i32 %1702, 31
  %1733 = lshr i32 %1709, 31
  %1734 = xor i32 %1733, %1732
  %1735 = xor i32 %1729, %1732
  %1736 = add nuw nsw i32 %1735, %1734
  %1737 = icmp eq i32 %1736, 2
  %1738 = zext i1 %1737 to i8
  %1739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1738, i8* %1739, align 1, !tbaa !2451
  %1740 = load i64, i64* %PC
  %1741 = sub i64 %1740, 217
  %1742 = load i64, i64* %PC
  %1743 = add i64 %1742, 6
  %1744 = load i64, i64* %PC
  %1745 = add i64 %1744, 6
  store i64 %1745, i64* %PC
  %1746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1747 = load i8, i8* %1746, align 1, !tbaa !2449
  %1748 = icmp ne i8 %1747, 0
  %1749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1750 = load i8, i8* %1749, align 1, !tbaa !2450
  %1751 = icmp ne i8 %1750, 0
  %1752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1753 = load i8, i8* %1752, align 1, !tbaa !2451
  %1754 = icmp ne i8 %1753, 0
  %1755 = xor i1 %1751, %1754
  %1756 = or i1 %1748, %1755
  %1757 = zext i1 %1756 to i8
  store i8 %1757, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %1758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1759 = select i1 %1756, i64 %1741, i64 %1743
  store i64 %1759, i64* %1758, align 8, !tbaa !2428
  %1760 = load i8, i8* %BRANCH_TAKEN
  %1761 = icmp eq i8 %1760, 1
  br i1 %1761, label %block_40090b, label %block_4009ea

block_4009ea:                                     ; preds = %block_40090b
  %1762 = load i64, i64* %PC
  %1763 = add i64 %1762, 5
  store i64 %1763, i64* %PC
  store i64 25, i64* %RSI, align 8, !tbaa !2428
  %1764 = load i64, i64* %RBP
  %1765 = sub i64 %1764, 136
  %1766 = load i64, i64* %PC
  %1767 = add i64 %1766, 6
  store i64 %1767, i64* %PC
  %1768 = inttoptr i64 %1765 to i32*
  %1769 = load i32, i32* %1768
  %1770 = zext i32 %1769 to i64
  store i64 %1770, i64* %RAX, align 8, !tbaa !2428
  %1771 = load i64, i64* %RAX
  %1772 = load i64, i64* %PC
  %1773 = add i64 %1772, 3
  store i64 %1773, i64* %PC
  %1774 = trunc i64 %1771 to i32
  %1775 = add i32 1, %1774
  %1776 = zext i32 %1775 to i64
  store i64 %1776, i64* %RAX, align 8, !tbaa !2428
  %1777 = icmp ult i32 %1775, %1774
  %1778 = icmp ult i32 %1775, 1
  %1779 = or i1 %1777, %1778
  %1780 = zext i1 %1779 to i8
  %1781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1780, i8* %1781, align 1, !tbaa !2434
  %1782 = and i32 %1775, 255
  %1783 = call i32 @llvm.ctpop.i32(i32 %1782) #17
  %1784 = trunc i32 %1783 to i8
  %1785 = and i8 %1784, 1
  %1786 = xor i8 %1785, 1
  %1787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1786, i8* %1787, align 1, !tbaa !2447
  %1788 = xor i64 1, %1771
  %1789 = trunc i64 %1788 to i32
  %1790 = xor i32 %1789, %1775
  %1791 = lshr i32 %1790, 4
  %1792 = trunc i32 %1791 to i8
  %1793 = and i8 %1792, 1
  %1794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1793, i8* %1794, align 1, !tbaa !2448
  %1795 = icmp eq i32 %1775, 0
  %1796 = zext i1 %1795 to i8
  %1797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1796, i8* %1797, align 1, !tbaa !2449
  %1798 = lshr i32 %1775, 31
  %1799 = trunc i32 %1798 to i8
  %1800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1799, i8* %1800, align 1, !tbaa !2450
  %1801 = lshr i32 %1774, 31
  %1802 = xor i32 %1798, %1801
  %1803 = add nuw nsw i32 %1802, %1798
  %1804 = icmp eq i32 %1803, 2
  %1805 = zext i1 %1804 to i8
  %1806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1805, i8* %1806, align 1, !tbaa !2451
  %1807 = load i32, i32* %EAX
  %1808 = zext i32 %1807 to i64
  %1809 = load i64, i64* %PC
  %1810 = add i64 %1809, 2
  store i64 %1810, i64* %PC
  %1811 = and i64 %1808, 4294967295
  store i64 %1811, i64* %RDI, align 8, !tbaa !2428
  %1812 = load i64, i64* %PC
  %1813 = sub i64 %1812, 954
  %1814 = load i64, i64* %PC
  %1815 = add i64 %1814, 5
  %1816 = load i64, i64* %PC
  %1817 = add i64 %1816, 5
  store i64 %1817, i64* %PC
  %1818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1819 = load i64, i64* %1818, align 8, !tbaa !2428
  %1820 = add i64 %1819, -8
  %1821 = inttoptr i64 %1820 to i64*
  store i64 %1815, i64* %1821
  store i64 %1820, i64* %1818, align 8, !tbaa !2428
  %1822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1813, i64* %1822, align 8, !tbaa !2428
  %1823 = load i64, i64* %PC
  %1824 = call %struct.Memory* @sub_400640_Min0(%struct.State* %0, i64 %1823, %struct.Memory* %MEMORY.0)
  %1825 = load i64, i64* %RBP
  %1826 = sub i64 %1825, 136
  %1827 = load i32, i32* %EAX
  %1828 = zext i32 %1827 to i64
  %1829 = load i64, i64* %PC
  %1830 = add i64 %1829, 6
  store i64 %1830, i64* %PC
  %1831 = inttoptr i64 %1826 to i32*
  store i32 %1827, i32* %1831
  %1832 = load i64, i64* %RBP
  %1833 = sub i64 %1832, 132
  %1834 = load i64, i64* %PC
  %1835 = add i64 %1834, 6
  store i64 %1835, i64* %PC
  %1836 = inttoptr i64 %1833 to i32*
  %1837 = load i32, i32* %1836
  %1838 = zext i32 %1837 to i64
  store i64 %1838, i64* %RAX, align 8, !tbaa !2428
  %1839 = load i64, i64* %RBP
  %1840 = sub i64 %1839, 144
  %1841 = load i32, i32* %EAX
  %1842 = zext i32 %1841 to i64
  %1843 = load i64, i64* %PC
  %1844 = add i64 %1843, 6
  store i64 %1844, i64* %PC
  %1845 = inttoptr i64 %1840 to i32*
  store i32 %1841, i32* %1845
  %1846 = load i64, i64* %RBP
  %1847 = sub i64 %1846, 144
  %1848 = load i64, i64* %PC
  %1849 = add i64 %1848, 7
  store i64 %1849, i64* %PC
  %1850 = inttoptr i64 %1847 to i32*
  %1851 = load i32, i32* %1850
  %1852 = sub i32 %1851, 1
  %1853 = icmp ult i32 %1851, 1
  %1854 = zext i1 %1853 to i8
  %1855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1854, i8* %1855, align 1, !tbaa !2434
  %1856 = and i32 %1852, 255
  %1857 = call i32 @llvm.ctpop.i32(i32 %1856) #17
  %1858 = trunc i32 %1857 to i8
  %1859 = and i8 %1858, 1
  %1860 = xor i8 %1859, 1
  %1861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1860, i8* %1861, align 1, !tbaa !2447
  %1862 = xor i32 %1851, 1
  %1863 = xor i32 %1862, %1852
  %1864 = lshr i32 %1863, 4
  %1865 = trunc i32 %1864 to i8
  %1866 = and i8 %1865, 1
  %1867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1866, i8* %1867, align 1, !tbaa !2448
  %1868 = icmp eq i32 %1852, 0
  %1869 = zext i1 %1868 to i8
  %1870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1869, i8* %1870, align 1, !tbaa !2449
  %1871 = lshr i32 %1852, 31
  %1872 = trunc i32 %1871 to i8
  %1873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1872, i8* %1873, align 1, !tbaa !2450
  %1874 = lshr i32 %1851, 31
  %1875 = xor i32 %1871, %1874
  %1876 = add nuw nsw i32 %1875, %1874
  %1877 = icmp eq i32 %1876, 2
  %1878 = zext i1 %1877 to i8
  %1879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1878, i8* %1879, align 1, !tbaa !2451
  %1880 = load i64, i64* %PC
  %1881 = sub i64 %1880, 315
  %1882 = load i64, i64* %PC
  %1883 = add i64 %1882, 6
  %1884 = load i64, i64* %PC
  %1885 = add i64 %1884, 6
  store i64 %1885, i64* %PC
  %1886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1887 = load i8, i8* %1886, align 1, !tbaa !2449
  %1888 = icmp eq i8 %1887, 0
  %1889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1890 = load i8, i8* %1889, align 1, !tbaa !2450
  %1891 = icmp ne i8 %1890, 0
  %1892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1893 = load i8, i8* %1892, align 1, !tbaa !2451
  %1894 = icmp ne i8 %1893, 0
  %1895 = xor i1 %1891, %1894
  %1896 = xor i1 %1895, true
  %1897 = and i1 %1888, %1896
  %1898 = zext i1 %1897 to i8
  store i8 %1898, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %1899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1900 = select i1 %1897, i64 %1881, i64 %1883
  store i64 %1900, i64* %1899, align 8, !tbaa !2428
  %1901 = load i8, i8* %BRANCH_TAKEN
  %1902 = icmp eq i8 %1901, 1
  br i1 %1902, label %block_4008dd, label %block_400a1e

block_4008dd:                                     ; preds = %block_4009ea, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1
  %MEMORY.1 = phi %struct.Memory* [ %579, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1 ], [ %1824, %block_4009ea ]
  %1903 = load i64, i64* %PC
  %1904 = add i64 %1903, 5
  store i64 %1904, i64* %PC
  store i64 2, i64* %RAX, align 8, !tbaa !2428
  %1905 = load i64, i64* %RBP
  %1906 = sub i64 %1905, 144
  %1907 = load i64, i64* %PC
  %1908 = add i64 %1907, 6
  store i64 %1908, i64* %PC
  %1909 = inttoptr i64 %1906 to i32*
  %1910 = load i32, i32* %1909
  %1911 = zext i32 %1910 to i64
  store i64 %1911, i64* %RCX, align 8, !tbaa !2428
  %1912 = load i64, i64* %RBP
  %1913 = sub i64 %1912, 156
  %1914 = load i32, i32* %EAX
  %1915 = zext i32 %1914 to i64
  %1916 = load i64, i64* %PC
  %1917 = add i64 %1916, 6
  store i64 %1917, i64* %PC
  %1918 = inttoptr i64 %1913 to i32*
  store i32 %1914, i32* %1918
  %1919 = load i32, i32* %ECX
  %1920 = zext i32 %1919 to i64
  %1921 = load i64, i64* %PC
  %1922 = add i64 %1921, 2
  store i64 %1922, i64* %PC
  %1923 = and i64 %1920, 4294967295
  store i64 %1923, i64* %RAX, align 8, !tbaa !2428
  %1924 = load i64, i64* %PC
  %1925 = add i64 %1924, 1
  store i64 %1925, i64* %PC
  %1926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1928 = bitcast %union.anon* %1927 to i32*
  %1929 = load i32, i32* %1928, align 8, !tbaa !2432
  %1930 = sext i32 %1929 to i64
  %1931 = lshr i64 %1930, 32
  store i64 %1931, i64* %1926, align 8, !tbaa !2428
  %1932 = load i64, i64* %RBP
  %1933 = sub i64 %1932, 156
  %1934 = load i64, i64* %PC
  %1935 = add i64 %1934, 6
  store i64 %1935, i64* %PC
  %1936 = inttoptr i64 %1933 to i32*
  %1937 = load i32, i32* %1936
  %1938 = zext i32 %1937 to i64
  store i64 %1938, i64* %RCX, align 8, !tbaa !2428
  %1939 = load i32, i32* %ECX
  %1940 = zext i32 %1939 to i64
  %1941 = load i64, i64* %PC
  %1942 = add i64 %1941, 2
  store i64 %1942, i64* %PC
  %1943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1944 = bitcast %union.anon* %1943 to i32*
  %1945 = load i32, i32* %1944, align 8, !tbaa !2432
  %1946 = zext i32 %1945 to i64
  %1947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1948 = bitcast %union.anon* %1947 to i32*
  %1949 = load i32, i32* %1948, align 8, !tbaa !2432
  %1950 = zext i32 %1949 to i64
  %1951 = shl i64 %1940, 32
  %1952 = ashr exact i64 %1951, 32
  %1953 = shl nuw i64 %1950, 32
  %1954 = or i64 %1953, %1946
  %1955 = sdiv i64 %1954, %1952
  %1956 = shl i64 %1955, 32
  %1957 = ashr exact i64 %1956, 32
  %1958 = icmp eq i64 %1955, %1957
  br i1 %1958, label %1963, label %1959

; <label>:1959:                                   ; preds = %block_4008dd
  %1960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1961 = load i64, i64* %1960, align 8, !tbaa !2428
  %1962 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1961, %struct.Memory* %MEMORY.1) #16
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:1963:                                   ; preds = %block_4008dd
  %1964 = srem i64 %1954, %1952
  %1965 = getelementptr inbounds %union.anon, %union.anon* %1943, i64 0, i32 0
  %1966 = and i64 %1955, 4294967295
  store i64 %1966, i64* %1965, align 8, !tbaa !2428
  %1967 = getelementptr inbounds %union.anon, %union.anon* %1947, i64 0, i32 0
  %1968 = and i64 %1964, 4294967295
  store i64 %1968, i64* %1967, align 8, !tbaa !2428
  %1969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1969, align 1, !tbaa !2434
  %1970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1970, align 1, !tbaa !2447
  %1971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1971, align 1, !tbaa !2448
  %1972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1972, align 1, !tbaa !2449
  %1973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1973, align 1, !tbaa !2450
  %1974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1974, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %1959, %1963
  %1975 = phi %struct.Memory* [ %1962, %1959 ], [ %MEMORY.1, %1963 ]
  %1976 = load i64, i64* %RBP
  %1977 = sub i64 %1976, 132
  %1978 = load i32, i32* %EAX
  %1979 = zext i32 %1978 to i64
  %1980 = load i64, i64* %PC
  %1981 = add i64 %1980, 6
  store i64 %1981, i64* %PC
  %1982 = inttoptr i64 %1977 to i32*
  store i32 %1978, i32* %1982
  %1983 = load i64, i64* %RBP
  %1984 = sub i64 %1983, 132
  %1985 = load i64, i64* %PC
  %1986 = add i64 %1985, 6
  store i64 %1986, i64* %PC
  %1987 = inttoptr i64 %1984 to i32*
  %1988 = load i32, i32* %1987
  %1989 = zext i32 %1988 to i64
  store i64 %1989, i64* %RAX, align 8, !tbaa !2428
  %1990 = load i64, i64* %RBP
  %1991 = sub i64 %1990, 140
  %1992 = load i32, i32* %EAX
  %1993 = zext i32 %1992 to i64
  %1994 = load i64, i64* %PC
  %1995 = add i64 %1994, 6
  store i64 %1995, i64* %PC
  %1996 = inttoptr i64 %1991 to i32*
  store i32 %1992, i32* %1996
  br label %block_40090b

block_4007c6:                                     ; preds = %block_4007d3, %block_400790
  %MEMORY.2 = phi %struct.Memory* [ %2, %block_400790 ], [ %199, %block_4007d3 ]
  %1997 = load i64, i64* %RBP
  %1998 = sub i64 %1997, 132
  %1999 = load i64, i64* %PC
  %2000 = add i64 %1999, 7
  store i64 %2000, i64* %PC
  %2001 = inttoptr i64 %1998 to i32*
  %2002 = load i32, i32* %2001
  %2003 = sub i32 %2002, 25
  %2004 = icmp ult i32 %2002, 25
  %2005 = zext i1 %2004 to i8
  %2006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2005, i8* %2006, align 1, !tbaa !2434
  %2007 = and i32 %2003, 255
  %2008 = call i32 @llvm.ctpop.i32(i32 %2007) #17
  %2009 = trunc i32 %2008 to i8
  %2010 = and i8 %2009, 1
  %2011 = xor i8 %2010, 1
  %2012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2011, i8* %2012, align 1, !tbaa !2447
  %2013 = xor i32 %2002, 25
  %2014 = xor i32 %2013, %2003
  %2015 = lshr i32 %2014, 4
  %2016 = trunc i32 %2015 to i8
  %2017 = and i8 %2016, 1
  %2018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2017, i8* %2018, align 1, !tbaa !2448
  %2019 = icmp eq i32 %2003, 0
  %2020 = zext i1 %2019 to i8
  %2021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2020, i8* %2021, align 1, !tbaa !2449
  %2022 = lshr i32 %2003, 31
  %2023 = trunc i32 %2022 to i8
  %2024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2023, i8* %2024, align 1, !tbaa !2450
  %2025 = lshr i32 %2002, 31
  %2026 = xor i32 %2022, %2025
  %2027 = add nuw nsw i32 %2026, %2025
  %2028 = icmp eq i32 %2027, 2
  %2029 = zext i1 %2028 to i8
  %2030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2029, i8* %2030, align 1, !tbaa !2451
  %2031 = load i64, i64* %PC
  %2032 = add i64 %2031, 93
  %2033 = load i64, i64* %PC
  %2034 = add i64 %2033, 6
  %2035 = load i64, i64* %PC
  %2036 = add i64 %2035, 6
  store i64 %2036, i64* %PC
  %2037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2038 = load i8, i8* %2037, align 1, !tbaa !2449
  %2039 = icmp eq i8 %2038, 0
  %2040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2041 = load i8, i8* %2040, align 1, !tbaa !2450
  %2042 = icmp ne i8 %2041, 0
  %2043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2044 = load i8, i8* %2043, align 1, !tbaa !2451
  %2045 = icmp ne i8 %2044, 0
  %2046 = xor i1 %2042, %2045
  %2047 = xor i1 %2046, true
  %2048 = and i1 %2039, %2047
  %2049 = zext i1 %2048 to i8
  store i8 %2049, i8* %BRANCH_TAKEN, align 1, !tbaa !2452
  %2050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2051 = select i1 %2048, i64 %2032, i64 %2034
  store i64 %2051, i64* %2050, align 8, !tbaa !2428
  %2052 = load i8, i8* %BRANCH_TAKEN
  %2053 = icmp eq i8 %2052, 1
  %2054 = bitcast %"class.std::bitset"* %YMM0 to i8*
  br i1 %2053, label %block_40082a, label %block_4007d3
}

; Function Attrs: noinline
declare void @__mcsema_attach_call() #13

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400500_frame_dummy() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400500;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @1, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_400500_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400500_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_4004d0___do_global_dtors_aux() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4004d0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @3, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_4004d0___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_4004d0___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_619238_printf(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400ee0___libc_csu_fini() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400ee0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @4, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_400ee0___libc_csu_fini_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400ee0___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400e70___libc_csu_init() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400e70;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @5, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_400e70___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400e70___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @main() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400e30;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @6, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400e30_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_619230___libc_start_main(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @Exptab() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400790;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @7, void ()** @2)
  ret void
}

define internal %struct.Memory* @Exptab_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400790_Exptab(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @Cos() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400570;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @8, void ()** @2)
  ret void
}

define internal %struct.Memory* @Cos_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400570_Cos(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.init_proc() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4003e0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @9, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_4003e0__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @Oscar() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400ce0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @10, void ()** @2)
  ret void
}

define internal %struct.Memory* @Oscar_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400ce0_Oscar(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @Initrand() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400510;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @11, void ()** @2)
  ret void
}

define internal %struct.Memory* @Initrand_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400510_Initrand(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @Printcomplex() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400670;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @12, void ()** @2)
  ret void
}

define internal %struct.Memory* @Printcomplex_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400670_Printcomplex(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @Uniform11() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400740;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @13, void ()** @2)
  ret void
}

define internal %struct.Memory* @Uniform11_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400740_Uniform11(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.term_proc() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400ee4;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @14, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400ee4__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @Rand() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400530;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @15, void ()** @2)
  ret void
}

define internal %struct.Memory* @Rand_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400530_Rand(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @Fft() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400a30;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @16, void ()** @2)
  ret void
}

define internal %struct.Memory* @Fft_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400a30_Fft(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @Min0() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400640;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @17, void ()** @2)
  ret void
}

define internal %struct.Memory* @Min0_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400640_Min0(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

define internal void @__mcsema_destructor() {
  call void @callback_sub_400ee0___libc_csu_fini()
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
  call void @callback_sub_400e70___libc_csu_init()
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
attributes #16 = { alwaysinline nobuiltin nounwind }
attributes #17 = { nounwind }

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
!2432 = !{!2433, !2433, i64 0}
!2433 = !{!"int", !2430, i64 0}
!2434 = !{!2435, !2430, i64 2065}
!2435 = !{!"_ZTS5State", !2430, i64 16, !2436, i64 2064, !2430, i64 2080, !2437, i64 2088, !2439, i64 2112, !2441, i64 2208, !2442, i64 2480, !2443, i64 2608, !2444, i64 2736, !2430, i64 2760, !2430, i64 2768, !2445, i64 3280}
!2436 = !{!"_ZTS10ArithFlags", !2430, i64 0, !2430, i64 1, !2430, i64 2, !2430, i64 3, !2430, i64 4, !2430, i64 5, !2430, i64 6, !2430, i64 7, !2430, i64 8, !2430, i64 9, !2430, i64 10, !2430, i64 11, !2430, i64 12, !2430, i64 13, !2430, i64 14, !2430, i64 15}
!2437 = !{!"_ZTS8Segments", !2438, i64 0, !2430, i64 2, !2438, i64 4, !2430, i64 6, !2438, i64 8, !2430, i64 10, !2438, i64 12, !2430, i64 14, !2438, i64 16, !2430, i64 18, !2438, i64 20, !2430, i64 22}
!2438 = !{!"short", !2430, i64 0}
!2439 = !{!"_ZTS12AddressSpace", !2429, i64 0, !2440, i64 8, !2429, i64 16, !2440, i64 24, !2429, i64 32, !2440, i64 40, !2429, i64 48, !2440, i64 56, !2429, i64 64, !2440, i64 72, !2429, i64 80, !2440, i64 88}
!2440 = !{!"_ZTS3Reg", !2430, i64 0}
!2441 = !{!"_ZTS3GPR", !2429, i64 0, !2440, i64 8, !2429, i64 16, !2440, i64 24, !2429, i64 32, !2440, i64 40, !2429, i64 48, !2440, i64 56, !2429, i64 64, !2440, i64 72, !2429, i64 80, !2440, i64 88, !2429, i64 96, !2440, i64 104, !2429, i64 112, !2440, i64 120, !2429, i64 128, !2440, i64 136, !2429, i64 144, !2440, i64 152, !2429, i64 160, !2440, i64 168, !2429, i64 176, !2440, i64 184, !2429, i64 192, !2440, i64 200, !2429, i64 208, !2440, i64 216, !2429, i64 224, !2440, i64 232, !2429, i64 240, !2440, i64 248, !2429, i64 256, !2440, i64 264}
!2442 = !{!"_ZTS8X87Stack", !2430, i64 0}
!2443 = !{!"_ZTS3MMX", !2430, i64 0}
!2444 = !{!"_ZTS14FPUStatusFlags", !2430, i64 0, !2430, i64 1, !2430, i64 2, !2430, i64 3, !2430, i64 4, !2430, i64 5, !2430, i64 6, !2430, i64 7, !2430, i64 8, !2430, i64 9, !2430, i64 10, !2430, i64 11, !2430, i64 12, !2430, i64 13, !2430, i64 14, !2430, i64 15, !2430, i64 16, !2430, i64 17, !2430, i64 18, !2430, i64 19, !2430, i64 20}
!2445 = !{!"_ZTS13SegmentCaches", !2446, i64 0, !2446, i64 16, !2446, i64 32, !2446, i64 48, !2446, i64 64, !2446, i64 80}
!2446 = !{!"_ZTS13SegmentShadow", !2430, i64 0, !2433, i64 8, !2433, i64 12}
!2447 = !{!2435, !2430, i64 2067}
!2448 = !{!2435, !2430, i64 2069}
!2449 = !{!2435, !2430, i64 2071}
!2450 = !{!2435, !2430, i64 2073}
!2451 = !{!2435, !2430, i64 2077}
!2452 = !{!2430, !2430, i64 0}
!2453 = !{!2454, !2454, i64 0}
!2454 = !{!"float", !2430, i64 0}
!2455 = !{!2456, !2456, i64 0}
!2456 = !{!"double", !2430, i64 0}
