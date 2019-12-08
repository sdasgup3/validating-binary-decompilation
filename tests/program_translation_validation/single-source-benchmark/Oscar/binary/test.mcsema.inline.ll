; ModuleID = 'binary/test.mcsema.calls_renamed.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_4003c8__init_type = type <{ [23 x i8] }>
%seg_4003e0__plt_type = type <{ [32 x i8] }>
%seg_400400__text_type = type <{ [2770 x i8] }>
%seg_400ed4__fini_type = type <{ [9 x i8] }>
%seg_400ee0__rodata_type = type <{ [40 x i8], [2 x i8], [15 x i8] }>
%seg_400f1c__eh_frame_hdr_type = type <{ [132 x i8] }>
%seg_400fa0__eh_frame_type = type <{ [504 x i8] }>
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
@seg_4003c8__init = internal constant %seg_4003c8__init_type <{ [23 x i8] c"H\83\EC\08H\8B\05%\1C \00H\85\C0t\02\FF\D0H\83\C4\08\C3" }>
@seg_4003e0__plt = internal constant %seg_4003e0__plt_type <{ [32 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF%\22\1C \00\00\00\00\00\00\00\00\00\00\00" }>
@seg_400400__text = internal constant %seg_400400__text_type <{ [2770 x i8] c"1\EDI\89\D1^H\89\E2H\83\E4\F0PTI\C7\C0\D0\0E@\00H\C7\C1`\0E@\00H\C7\C7 \0E@\00\FF\15\C6\1B \00\F4\0F\1FD\00\00\F3\C3f.\0F\1F\84\00\00\00\00\00\0F\1F@\00U\B80 `\00H=0 `\00H\89\E5t\17\B8\00\00\00\00H\85\C0t\0D]\BF0 `\00\FF\E0\0F\1FD\00\00]\C3f\0F\1FD\00\00\BE0 `\00UH\81\EE0 `\00H\89\E5H\C1\FE\03H\89\F0H\C1\E8?H\01\C6H\D1\FEt\15\B8\00\00\00\00H\85\C0t\0B]\BF0 `\00\FF\E0\0F\1F\00]\C3f\0F\1FD\00\00\80=y\1B \00\00u\17UH\89\E5\E8~\FF\FF\FF\C6\05g\1B \00\01]\C3\0F\1FD\00\00\F3\C3\0F\1F@\00f.\0F\1F\84\00\00\00\00\00UH\89\E5]\EB\89f\0F\1F\84\00\00\00\00\00UH\89\E5H\C7\04%8\02a\00\03$\01\00]\C3fffff.\0F\1F\84\00\00\00\00\00UH\89\E5Hi\04%8\02a\00\1D\05\00\00H\05\196\00\00H%\FF\FF\00\00H\89\04%8\02a\00H\8B\04%8\02a\00\89\C1\89\C8]\C3fffff.\0F\1F\84\00\00\00\00\00UH\89\E5\F3\0F\10\0D\88\09\00\00\F3\0F\11E\FC\F3\0F\11M\F0\C7E\F4\01\00\00\00\F3\0F\10E\FC\F3\0F\11E\EC\C7E\F8\02\00\00\00\83}\F8\0A\0F\8F\90\00\00\00\8BE\F4\0F\AFE\F8\89E\F4\F3\0F\10E\EC\F3\0FYE\FC\F3\0F\11E\EC\8BE\F8\83\E0\01\83\F8\00\0F\85U\00\00\00\8BE\F8\83\E0\03\83\F8\00\0F\85#\00\00\00\F3\0F\10E\F0\F3\0F\10M\EC\8BE\F4\F3\0F*\D0\F3\0F^\CA\F3\0FX\C1\F3\0F\11E\F0\E9\1E\00\00\00\F3\0F\10E\F0\F3\0F\10M\EC\8BE\F4\F3\0F*\D0\F3\0F^\CA\F3\0F\5C\C1\F3\0F\11E\F0\E9\00\00\00\00\E9\00\00\00\00\8BE\F8\83\C0\01\89E\F8\E9f\FF\FF\FF\F3\0F\10E\F0]\C3\90UH\89\E5\89}\F8\89u\F4\8Bu\F8;u\F4\0F\8D\0B\00\00\00\8BE\F8\89E\FC\E9\06\00\00\00\8BE\F4\89E\FC\8BE\FC]\C3\0F\1F@\00UH\89\E5H\83\EC0H\B8\08\0F@\00\00\00\00\00H\89}\F8\89u\F4\89U\F0\89M\ECH\89\C7\B0\00\E8w\FD\FF\FF\8BM\F4\89M\E8\89E\E4H\BF\0A\0F@\00\00\00\00\00H\8BE\F8HcM\E8\F3\0F\10\04\C8\F3\0FZ\C0H\8BE\F8HcM\E8\F3\0F\10L\C8\04\F3\0FZ\C9\B0\02\E8:\FD\FF\FFH\BF\0A\0F@\00\00\00\00\00\8BU\E8\03U\EC\89U\E8H\8BM\F8Hcu\E8\F3\0F\10\04\F1\F3\0FZ\C0H\8BM\F8Hcu\E8\F3\0F\10L\F1\04\F3\0FZ\C9\89E\E0\B0\02\E8\FA\FC\FF\FFH\BF\08\0F@\00\00\00\00\00\89E\DC\B0\00\E8\E6\FC\FF\FF\8BU\E8\03U\EC\89U\E8\89E\D8\8BE\E8;E\F0\0F\8E`\FF\FF\FFH\83\C40]\C3\0F\1F\84\00\00\00\00\00UH\89\E5\F3\0F\10\05\AC\07\00\00H\89}\F8H\89u\F0H\8Bu\F8i\06\F7\12\00\00\05\C3\06\00\00%\FF\1F\00\00H\8Bu\F8\89\06H\8Bu\F8\8B\06\F3\0F*\C8\F3\0F^\C8H\8Bu\F0\F3\0F\11\0E]\C3f.\0F\1F\84\00\00\00\00\00UH\89\E5H\81\EC\A0\00\00\00\F3\0F\10\05Y\07\00\00\F3\0F\10\0DU\07\00\00\89}\FCH\89u\F0\F3\0F\11M\EC\F3\0F\11E\E8\C7\85|\FF\FF\FF\01\00\00\00\83\BD|\FF\FF\FF\19\0F\8FW\00\00\00\F3\0F\10E\EC\F3\0F^E\E8\E8~\FD\FF\FF\F3\0F\10\0D\0A\07\00\00\F3\0F\10\15\16\07\00\00\F3\0FY\D0\F3\0F^\CAHc\85|\FF\FF\FF\F3\0F\11L\85\80\F3\0F\10E\E8\F3\0FXE\E8\F3\0F\11E\E8\8B\85|\FF\FF\FF\83\C0\01\89\85|\FF\FF\FF\E9\9C\FF\FF\FF\0FW\C0\F3\0F\10\0D\CF\06\00\00\F3\0F\10\15\B7\06\00\00\B8\02\00\00\00\8BM\FC\89\85h\FF\FF\FF\89\C8\99\8B\8Dh\FF\FF\FF\F7\F9\89\85l\FF\FF\FF\8B\85l\FF\FF\FF\99\F7\F9\89\85p\FF\FF\FF\C7\85x\FF\FF\FF\01\00\00\00H\8Bu\F0\F3\0F\11V\08H\8Bu\F0\F3\0F\11F\0CH\8Bu\F0\8B\85p\FF\FF\FF\83\C0\01Hc\F8\F3\0F\11\04\FEH\8Bu\F0\8B\85p\FF\FF\FF\83\C0\01Hc\F8\F3\0F\11T\FE\04H\8Bu\F0\8B\85l\FF\FF\FF\83\C0\01Hc\F8\F3\0F\11\0C\FEH\8Bu\F0\8B\85l\FF\FF\FF\83\C0\01Hc\F8\F3\0F\11D\FE\04\B8\02\00\00\00\8B\8Dp\FF\FF\FF\89\85d\FF\FF\FF\89\C8\99\8B\8Dd\FF\FF\FF\F7\F9\89\85|\FF\FF\FF\8B\85|\FF\FF\FF\89\85t\FF\FF\FFHc\85x\FF\FF\FF\F3\0F\10D\85\80H\8BE\F0\8B\8Dt\FF\FF\FF\03\8D|\FF\FF\FF\83\C1\01Hc\D1\F3\0F\10\0C\D0H\8BE\F0\8B\8Dt\FF\FF\FF+\8D|\FF\FF\FF\83\C1\01Hc\D1\F3\0FX\0C\D0\F3\0FY\C1H\8BE\F0\8B\8Dt\FF\FF\FF\83\C1\01Hc\D1\F3\0F\11\04\D0Hc\85x\FF\FF\FF\F3\0F\10D\85\80H\8BE\F0\8B\8Dt\FF\FF\FF\03\8D|\FF\FF\FF\83\C1\01Hc\D1\F3\0F\10L\D0\04H\8BE\F0\8B\8Dt\FF\FF\FF+\8D|\FF\FF\FF\83\C1\01Hc\D1\F3\0FXL\D0\04\F3\0FY\C1H\8BE\F0\8B\8Dt\FF\FF\FF\83\C1\01Hc\D1\F3\0F\11D\D0\04\8B\8Dt\FF\FF\FF\03\8Dp\FF\FF\FF\89\8Dt\FF\FF\FF\8B\85t\FF\FF\FF;\85l\FF\FF\FF\0F\8E!\FF\FF\FF\BE\19\00\00\00\8B\85x\FF\FF\FF\83\C0\01\89\C7\E81\FC\FF\FF\89\85x\FF\FF\FF\8B\85|\FF\FF\FF\89\85p\FF\FF\FF\83\BDp\FF\FF\FF\01\0F\8F\BF\FE\FF\FFH\81\C4\A0\00\00\00]\C3f\0F\1F\84\00\00\00\00\00UH\89\E5\B8\02\00\00\00\89}\FCH\89u\F0H\89U\E8H\89M\E0\F3\0F\11E\DC\8B}\FC\89E\C0\89\F8\99\8B}\C0\F7\FF\89E\C8\C7E\CC\01\00\00\00\C7E\D0\00\00\00\00\8BE\CC\89E\D4\C7E\D8\01\00\00\00\E9\00\00\00\00H\8BE\F0HcM\D8\F3\0F\10\04\C8H\8BE\F0\8BU\C8\03U\D8Hc\CA\F3\0FX\04\C8H\8BE\E8\8BU\D8\03U\D0Hc\CA\F3\0F\11\04\C8H\8BE\F0HcM\D8\F3\0F\10D\C8\04H\8BE\F0\8BU\C8\03U\D8Hc\CA\F3\0FXD\C8\04H\8BE\E8\8BU\D8\03U\D0Hc\CA\F3\0F\11D\C8\04H\8BE\E0\8BU\D0\83\C2\01Hc\CA\F3\0F\10\04\C8H\8BE\F0HcM\D8\F3\0F\10\0C\C8H\8BE\F0\8BU\D8\03U\C8Hc\CA\F3\0F\5C\0C\C8\F3\0FY\C1H\8BE\E0\8BU\D0\83\C2\01Hc\CA\F3\0F\10L\C8\04H\8BE\F0HcM\D8\F3\0F\10T\C8\04H\8BE\F0\8BU\D8\03U\C8Hc\CA\F3\0F\5CT\C8\04\F3\0FY\CA\F3\0F\5C\C1H\8BE\E8\8BU\D8\03U\D4Hc\CA\F3\0F\11\04\C8H\8BE\E0\8BU\D0\83\C2\01Hc\CA\F3\0F\10\04\C8H\8BE\F0HcM\D8\F3\0F\10L\C8\04H\8BE\F0\8BU\D8\03U\C8Hc\CA\F3\0F\5CL\C8\04\F3\0FY\C1H\8BE\E0\8BU\D0\83\C2\01Hc\CA\F3\0F\10L\C8\04H\8BE\F0HcM\D8\F3\0F\10\14\C8H\8BE\F0\8BU\D8\03U\C8Hc\CA\F3\0F\5C\14\C8\F3\0FY\CA\F3\0FX\C1H\8BE\E8\8BU\D8\03U\D4Hc\CA\F3\0F\11D\C8\04\8BU\D8\83\C2\01\89U\D8\8BE\D8;E\D4\0F\8E\7F\FE\FF\FF\8BE\D4\89E\D0\8BE\D0\03E\CC\89E\D4\8BE\D4;E\C8\0F\8E_\FE\FF\FF\C7E\C4\01\00\00\00H\8BE\F0HcM\C4H\8BU\E8Hcu\C4H\8B\14\F2H\89\14\C8\8B}\C4\83\C7\01\89}\C4\8BE\C4;E\FC\0F\8E\D3\FF\FF\FF\8BE\CC\03E\CC\89E\CC\8BE\CC;E\C8\0F\8E\02\FE\FF\FF\C7E\D8\01\00\00\00\8BE\D8;E\FC\0F\8F\5C\00\00\00\F3\0F\10E\DCH\8BE\F0HcM\D8\F3\0FY\04\C8H\8BE\F0HcM\D8\F3\0F\11\04\C8\F3\0F\10E\DCf\0F~\C2\81\F2\00\00\00\80f\0Fn\C2H\8BE\F0HcM\D8\F3\0FYD\C8\04H\8BE\F0HcM\D8\F3\0F\11D\C8\04\8BE\D8\83\C0\01\89E\D8\E9\98\FF\FF\FF]\C3fff.\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC\10\BF\00\01\00\00H\BE ka\00\00\00\00\00\E8\94\FA\FF\FFH\C7\04%8\02a\00\87\16\00\00\C7E\FC\01\00\00\00\81}\FC\00\01\00\00\0F\8F\A0\00\00\00H\8D}\F8H\BE\C4Pa\00\00\00\00\00H\8B\04%8\02a\00\89\C1\89M\F8\E8\04\FA\FF\FFH\8D}\F8H\BE\94\01a\00\00\00\00\00HcE\F8H\89\04%8\02a\00\E8\E5\F9\FF\FF\F3\0F\10\05\AD\01\00\00\F3\0F\10\0D\A9\01\00\00HcE\F8H\89\04%8\02a\00\0F(\D1\F3\0FY\14%\C4Pa\00\F3\0F\5C\D0HcE\FC\F3\0F\11\14\C5@\D7`\00\F3\0FY\0C%\94\01a\00\F3\0F\5C\C8HcE\FC\F3\0F\11\0C\C5D\D7`\00\8BE\FC\83\C0\01\89E\FC\E9S\FF\FF\FF\C7E\FC\01\00\00\00\83}\FC\14\0F\8F>\00\00\00\BF\00\01\00\00H\BE@\D7`\00\00\00\00\00H\BA@oa\00\00\00\00\00H\B9 ka\00\00\00\00\00\F3\0F\10\05\14\01\00\00\E83\FC\FF\FF\8BE\FC\83\C0\01\89E\FC\E9\B8\FF\FF\FFH\BF@\D7`\00\00\00\00\00\BE\01\00\00\00\BA\00\01\00\00\B9\11\00\00\00\E87\F8\FF\FFH\83\C4\10]\C3\90UH\89\E5H\83\EC\10\C7E\FC\00\00\00\00\C7E\F8\00\00\00\00\83}\F8\0A\0F\8D\13\00\00\00\E8\8B\FE\FF\FF\8BE\F8\83\C0\01\89E\F8\E9\E3\FF\FF\FF1\C0H\83\C4\10]\C3\0F\1FD\00\00AWAVI\89\D7AUATL\8D%~\0F \00UH\8D-~\0F \00SA\89\FDI\89\F6L)\E5H\83\EC\08H\C1\FD\03\E87\F5\FF\FFH\85\EDt 1\DB\0F\1F\84\00\00\00\00\00L\89\FAL\89\F6D\89\EFA\FF\14\DCH\83\C3\01H9\DDu\EAH\83\C4\08[]A\5CA]A^A_\C3\90f.\0F\1F\84\00\00\00\00\00\F3\C3" }>
@seg_400ed4__fini = internal constant %seg_400ed4__fini_type <{ [9 x i8] c"H\83\EC\08H\83\C4\08\C3" }>
@seg_400ee0__rodata = internal constant %seg_400ee0__rodata_type <{ [40 x i8] c"\01\00\02\00\00\00\80?\00\00\00F\00\00\80@\DB\0FI@\00\00\80\BF\00\00\00@\00\00\80=\00\00 A\00\00\A0A", [2 x i8] c"\0A\00", [15 x i8] c"  %15.3f%15.3f\00" }>
@seg_400f1c__eh_frame_hdr = internal constant %seg_400f1c__eh_frame_hdr_type <{ [132 x i8] c"\01\1B\03;\80\00\00\00\0F\00\00\00\C4\F4\FF\FF\DC\00\00\00\E4\F4\FF\FF\9C\00\00\00\14\F5\FF\FF\C8\00\00\00\D4\F5\FF\FF\04\01\00\00\F4\F5\FF\FF \01\00\004\F6\FF\FF<\01\00\00\04\F7\FF\FFX\01\00\004\F7\FF\FFt\01\00\00\14\F8\FF\FF\90\01\00\00d\F8\FF\FF\AC\01\00\00\04\FB\FF\FF\C8\01\00\00\B4\FD\FF\FF\E4\01\00\00\04\FF\FF\FF\00\02\00\00D\FF\FF\FF\1C\02\00\00\B4\FF\FF\FFd\02\00\00" }>
@seg_400fa0__eh_frame = internal constant %seg_400fa0__eh_frame_type <{ [504 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00@\F4\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00D\F4\FF\FF\02\00\00\00\00\00\00\00$\00\00\000\00\00\00\E0\F3\FF\FF \00\00\00\00\0E\10F\0E\18J\0F\0Bw\08\80\00?\1A;*3$\22\00\00\00\00\18\00\00\00X\00\00\00\C8\F4\FF\FF\12\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00t\00\00\00\CC\F4\FF\FF2\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\90\00\00\00\F0\F4\FF\FF\CF\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\AC\00\00\00\A4\F5\FF\FF,\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\C8\00\00\00\B8\F5\FF\FF\D8\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\E4\00\00\00|\F6\FF\FFF\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\00\01\00\00\B0\F6\FF\FF\97\02\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\1C\01\00\004\F9\FF\FF\A4\02\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\01\00\00\C8\FB\FF\FFO\01\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00T\01\00\00\FC\FC\FF\FF;\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00D\00\00\00p\01\00\00 \FD\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\B8\01\00\00H\FD\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@seg_601df0__init_array = internal global %seg_601df0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_4004e0_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_4004b0___do_global_dtors_aux to i64) }>
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
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4004e0_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4004b0___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400ed0___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400e60___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @Uniform11_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@10 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @Oscar_wrapper
@11 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @Exptab_wrapper
@12 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @Min0_wrapper
@13 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @Initrand_wrapper
@14 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @Printcomplex_wrapper
@15 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @Rand_wrapper
@16 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @Cos_wrapper
@17 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @Fft_wrapper
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_destructor, i8* null }]

declare %struct.Memory* @sub_400550_Cos_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400780_Exptab_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400730_Uniform11_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400650_Printcomplex_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400440_deregister_tm_clones_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400cd0_Oscar_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400620_Min0_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4003c8__init_proc_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400a20_Fft_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

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
define %struct.Memory* @sub_400730_Uniform11(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400730:
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
  %45 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_400ee0__rodata_type* @seg_400ee0__rodata to i64), i64 8) to float*)
  %46 = bitcast i8* %42 to float*
  store float %45, float* %46, align 1, !tbaa !2432
  %47 = getelementptr inbounds i8, i8* %42, i64 4
  %48 = bitcast i8* %47 to float*
  store float 0.000000e+00, float* %48, align 1, !tbaa !2432
  %49 = getelementptr inbounds i8, i8* %42, i64 8
  %50 = bitcast i8* %49 to float*
  store float 0.000000e+00, float* %50, align 1, !tbaa !2432
  %51 = getelementptr inbounds i8, i8* %42, i64 12
  %52 = bitcast i8* %51 to float*
  store float 0.000000e+00, float* %52, align 1, !tbaa !2432
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
  %86 = call i32 @llvm.ctpop.i32(i32 %85) #16
  %87 = trunc i32 %86 to i8
  %88 = and i8 %87, 1
  %89 = xor i8 %88, 1
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %89, i8* %90, align 1, !tbaa !2448
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %91, align 1, !tbaa !2449
  %92 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %92, align 1, !tbaa !2450
  %93 = lshr i32 %78, 31
  %94 = trunc i32 %93 to i8
  %95 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %94, i8* %95, align 1, !tbaa !2451
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %83, i8* %96, align 1, !tbaa !2452
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
  %109 = call i32 @llvm.ctpop.i32(i32 %108) #16
  %110 = trunc i32 %109 to i8
  %111 = and i8 %110, 1
  %112 = xor i8 %111, 1
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %112, i8* %113, align 1, !tbaa !2448
  %114 = xor i64 1731, %97
  %115 = trunc i64 %114 to i32
  %116 = xor i32 %115, %101
  %117 = lshr i32 %116, 4
  %118 = trunc i32 %117 to i8
  %119 = and i8 %118, 1
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %119, i8* %120, align 1, !tbaa !2449
  %121 = icmp eq i32 %101, 0
  %122 = zext i1 %121 to i8
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %122, i8* %123, align 1, !tbaa !2450
  %124 = lshr i32 %101, 31
  %125 = trunc i32 %124 to i8
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %125, i8* %126, align 1, !tbaa !2451
  %127 = lshr i32 %100, 31
  %128 = xor i32 %124, %127
  %129 = add nuw nsw i32 %128, %124
  %130 = icmp eq i32 %129, 2
  %131 = zext i1 %130 to i8
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %131, i8* %132, align 1, !tbaa !2452
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
  %140 = call i32 @llvm.ctpop.i32(i32 %139) #16
  %141 = trunc i32 %140 to i8
  %142 = and i8 %141, 1
  %143 = xor i8 %142, 1
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %143, i8* %144, align 1, !tbaa !2448
  %145 = icmp eq i32 %137, 0
  %146 = zext i1 %145 to i8
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %146, i8* %147, align 1, !tbaa !2450
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %148, align 1, !tbaa !2451
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %149, align 1, !tbaa !2452
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %150, align 1, !tbaa !2449
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
  %169 = load i64, i64* %RSI
  %170 = load i64, i64* %PC
  %171 = add i64 %170, 2
  store i64 %171, i64* %PC
  %172 = inttoptr i64 %169 to i32*
  %173 = load i32, i32* %172
  %174 = zext i32 %173 to i64
  store i64 %174, i64* %RAX, align 8, !tbaa !2428
  %175 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %176 = load i32, i32* %EAX
  %177 = zext i32 %176 to i64
  %178 = load i64, i64* %PC
  %179 = add i64 %178, 4
  store i64 %179, i64* %PC
  %180 = bitcast i8* %175 to <2 x i32>*
  %181 = load <2 x i32>, <2 x i32>* %180, align 1
  %182 = getelementptr inbounds i8, i8* %175, i64 8
  %183 = bitcast i8* %182 to <2 x i32>*
  %184 = load <2 x i32>, <2 x i32>* %183, align 1
  %185 = sitofp i32 %176 to float
  %186 = bitcast i8* %175 to float*
  store float %185, float* %186, align 1, !tbaa !2432
  %187 = extractelement <2 x i32> %181, i32 1
  %188 = getelementptr inbounds i8, i8* %175, i64 4
  %189 = bitcast i8* %188 to i32*
  store i32 %187, i32* %189, align 1, !tbaa !2432
  %190 = extractelement <2 x i32> %184, i32 0
  %191 = bitcast i8* %182 to i32*
  store i32 %190, i32* %191, align 1, !tbaa !2432
  %192 = extractelement <2 x i32> %184, i32 1
  %193 = getelementptr inbounds i8, i8* %175, i64 12
  %194 = bitcast i8* %193 to i32*
  store i32 %192, i32* %194, align 1, !tbaa !2432
  %195 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %196 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %197 = bitcast %union.vec128_t* %XMM0 to i8*
  %198 = load i64, i64* %PC
  %199 = add i64 %198, 4
  store i64 %199, i64* %PC
  %200 = bitcast i8* %196 to <2 x float>*
  %201 = load <2 x float>, <2 x float>* %200, align 1
  %202 = getelementptr inbounds i8, i8* %196, i64 8
  %203 = bitcast i8* %202 to <2 x i32>*
  %204 = load <2 x i32>, <2 x i32>* %203, align 1
  %205 = bitcast i8* %197 to <2 x float>*
  %206 = load <2 x float>, <2 x float>* %205, align 1
  %207 = extractelement <2 x float> %201, i32 0
  %208 = extractelement <2 x float> %206, i32 0
  %209 = fdiv float %207, %208
  %210 = bitcast i8* %195 to float*
  store float %209, float* %210, align 1, !tbaa !2432
  %211 = bitcast <2 x float> %201 to <2 x i32>
  %212 = extractelement <2 x i32> %211, i32 1
  %213 = getelementptr inbounds i8, i8* %195, i64 4
  %214 = bitcast i8* %213 to i32*
  store i32 %212, i32* %214, align 1, !tbaa !2432
  %215 = extractelement <2 x i32> %204, i32 0
  %216 = getelementptr inbounds i8, i8* %195, i64 8
  %217 = bitcast i8* %216 to i32*
  store i32 %215, i32* %217, align 1, !tbaa !2432
  %218 = extractelement <2 x i32> %204, i32 1
  %219 = getelementptr inbounds i8, i8* %195, i64 12
  %220 = bitcast i8* %219 to i32*
  store i32 %218, i32* %220, align 1, !tbaa !2432
  %221 = load i64, i64* %RBP
  %222 = sub i64 %221, 16
  %223 = load i64, i64* %PC
  %224 = add i64 %223, 4
  store i64 %224, i64* %PC
  %225 = inttoptr i64 %222 to i64*
  %226 = load i64, i64* %225
  store i64 %226, i64* %RSI, align 8, !tbaa !2428
  %227 = load i64, i64* %RSI
  %228 = bitcast %union.vec128_t* %XMM1 to i8*
  %229 = load i64, i64* %PC
  %230 = add i64 %229, 4
  store i64 %230, i64* %PC
  %231 = bitcast i8* %228 to <2 x float>*
  %232 = load <2 x float>, <2 x float>* %231, align 1
  %233 = extractelement <2 x float> %232, i32 0
  %234 = inttoptr i64 %227 to float*
  store float %233, float* %234
  %235 = load i64, i64* %PC
  %236 = add i64 %235, 1
  store i64 %236, i64* %PC
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %238 = load i64, i64* %237, align 8, !tbaa !2428
  %239 = add i64 %238, 8
  %240 = inttoptr i64 %238 to i64*
  %241 = load i64, i64* %240
  store i64 %241, i64* %RBP, align 8, !tbaa !2428
  store i64 %239, i64* %237, align 8, !tbaa !2428
  %242 = load i64, i64* %PC
  %243 = add i64 %242, 1
  store i64 %243, i64* %PC
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %246 = load i64, i64* %245, align 8, !tbaa !2428
  %247 = inttoptr i64 %246 to i64*
  %248 = load i64, i64* %247
  store i64 %248, i64* %244, align 8, !tbaa !2428
  %249 = add i64 %246, 8
  store i64 %249, i64* %245, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_400440_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400440:
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
  %42 = call i32 @llvm.ctpop.i32(i32 %41) #16
  %43 = trunc i32 %42 to i8
  %44 = and i8 %43, 1
  %45 = xor i8 %44, 1
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %45, i8* %46, align 1, !tbaa !2448
  %47 = xor i64 ptrtoint (%__bss_start_type* @__bss_start to i64), %33
  %48 = xor i64 %47, %36
  %49 = lshr i64 %48, 4
  %50 = trunc i64 %49 to i8
  %51 = and i8 %50, 1
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %51, i8* %52, align 1, !tbaa !2449
  %53 = icmp eq i64 %36, 0
  %54 = zext i1 %53 to i8
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %54, i8* %55, align 1, !tbaa !2450
  %56 = lshr i64 %36, 63
  %57 = trunc i64 %56 to i8
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %57, i8* %58, align 1, !tbaa !2451
  %59 = lshr i64 %33, 63
  %60 = xor i64 lshr (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 63), %59
  %61 = xor i64 %56, %59
  %62 = add nuw nsw i64 %61, %60
  %63 = icmp eq i64 %62, 2
  %64 = zext i1 %63 to i8
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %64, i8* %65, align 1, !tbaa !2452
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
  %76 = load i8, i8* %75, align 1, !tbaa !2450
  store i8 %76, i8* %BRANCH_TAKEN, align 1, !tbaa !2453
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %78 = icmp ne i8 %76, 0
  %79 = select i1 %78, i64 %70, i64 %72
  store i64 %79, i64* %77, align 8, !tbaa !2428
  %80 = load i8, i8* %BRANCH_TAKEN
  %81 = icmp eq i8 %80, 1
  br i1 %81, label %block_400468, label %block_400451

block_40045b:                                     ; preds = %block_400451
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
    i64 4195434, label %block_40046a
    i64 4195427, label %block_400463
  ]

block_400451:                                     ; preds = %block_400440
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
  %106 = call i32 @llvm.ctpop.i32(i32 %105) #16
  %107 = trunc i32 %106 to i8
  %108 = and i8 %107, 1
  %109 = xor i8 %108, 1
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %109, i8* %110, align 1, !tbaa !2448
  %111 = icmp eq i64 %102, 0
  %112 = zext i1 %111 to i8
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %112, i8* %113, align 1, !tbaa !2450
  %114 = lshr i64 %102, 63
  %115 = trunc i64 %114 to i8
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %115, i8* %116, align 1, !tbaa !2451
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %117, align 1, !tbaa !2452
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %118, align 1, !tbaa !2449
  %119 = load i64, i64* %PC
  %120 = add i64 %119, 15
  %121 = load i64, i64* %PC
  %122 = add i64 %121, 2
  %123 = load i64, i64* %PC
  %124 = add i64 %123, 2
  store i64 %124, i64* %PC
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %126 = load i8, i8* %125, align 1, !tbaa !2450
  store i8 %126, i8* %BRANCH_TAKEN, align 1, !tbaa !2453
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %128 = icmp ne i8 %126, 0
  %129 = select i1 %128, i64 %120, i64 %122
  store i64 %129, i64* %127, align 8, !tbaa !2428
  %130 = load i8, i8* %BRANCH_TAKEN
  %131 = icmp eq i8 %130, 1
  br i1 %131, label %block_400468, label %block_40045b

block_400468:                                     ; preds = %block_400463, %block_400451, %block_400440
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400440 ], [ %2, %block_400451 ], [ %2, %block_400463 ]
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

block_40046a:                                     ; preds = %block_40045b
  %147 = load i64, i64* %RAX
  %148 = load i64, i64* %RAX
  %149 = add i64 %148, %147
  %150 = load i16, i16* %AX
  %151 = zext i16 %150 to i64
  %152 = load i64, i64* %PC
  %153 = add i64 %152, 6
  store i64 %153, i64* %PC
  %154 = load i64, i64* %PC
  %155 = tail call %struct.Memory* @sub_400470_register_tm_clones(%struct.State* %0, i64 %154, %struct.Memory* %2)
  ret %struct.Memory* %155

block_400463:                                     ; preds = %block_40045b
  %156 = load i64, i64* %RAX
  %157 = load i64, i64* %RAX
  %158 = add i64 %157, %156
  %159 = load i32, i32* %EAX
  %160 = zext i32 %159 to i64
  %161 = load i64, i64* %PC
  %162 = add i64 %161, 5
  store i64 %162, i64* %PC
  br label %block_400468

; <label>:163:                                    ; preds = %block_40045b
  %164 = load i64, i64* %PC
  %165 = tail call %struct.Memory* @__remill_jump(%struct.State* %0, i64 %164, %struct.Memory* %2)
  ret %struct.Memory* %165
}

; Function Attrs: noinline
define %struct.Memory* @sub_400e20_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400e20:
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
  %37 = call i32 @llvm.ctpop.i32(i32 %36) #16
  %38 = trunc i32 %37 to i8
  %39 = and i8 %38, 1
  %40 = xor i8 %39, 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %40, i8* %41, align 1, !tbaa !2448
  %42 = xor i64 16, %28
  %43 = xor i64 %42, %31
  %44 = lshr i64 %43, 4
  %45 = trunc i64 %44 to i8
  %46 = and i8 %45, 1
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %46, i8* %47, align 1, !tbaa !2449
  %48 = icmp eq i64 %31, 0
  %49 = zext i1 %48 to i8
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %49, i8* %50, align 1, !tbaa !2450
  %51 = lshr i64 %31, 63
  %52 = trunc i64 %51 to i8
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %52, i8* %53, align 1, !tbaa !2451
  %54 = lshr i64 %28, 63
  %55 = xor i64 %51, %54
  %56 = add nuw nsw i64 %55, %54
  %57 = icmp eq i64 %56, 2
  %58 = zext i1 %57 to i8
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %58, i8* %59, align 1, !tbaa !2452
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
  br label %block_400e36

block_400e53:                                     ; preds = %block_400e36
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
  %80 = call i32 @llvm.ctpop.i32(i32 %79) #16
  %81 = trunc i32 %80 to i8
  %82 = and i8 %81, 1
  %83 = xor i8 %82, 1
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %83, i8* %84, align 1, !tbaa !2448
  %85 = icmp eq i32 %76, 0
  %86 = zext i1 %85 to i8
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %86, i8* %87, align 1, !tbaa !2450
  %88 = lshr i32 %76, 31
  %89 = trunc i32 %88 to i8
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %89, i8* %90, align 1, !tbaa !2451
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %91, align 1, !tbaa !2452
  %92 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %92, align 1, !tbaa !2449
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
  %104 = call i32 @llvm.ctpop.i32(i32 %103) #16
  %105 = trunc i32 %104 to i8
  %106 = and i8 %105, 1
  %107 = xor i8 %106, 1
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %107, i8* %108, align 1, !tbaa !2448
  %109 = xor i64 16, %93
  %110 = xor i64 %109, %96
  %111 = lshr i64 %110, 4
  %112 = trunc i64 %111 to i8
  %113 = and i8 %112, 1
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %113, i8* %114, align 1, !tbaa !2449
  %115 = icmp eq i64 %96, 0
  %116 = zext i1 %115 to i8
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %116, i8* %117, align 1, !tbaa !2450
  %118 = lshr i64 %96, 63
  %119 = trunc i64 %118 to i8
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %119, i8* %120, align 1, !tbaa !2451
  %121 = lshr i64 %93, 63
  %122 = xor i64 %118, %121
  %123 = add nuw nsw i64 %122, %118
  %124 = icmp eq i64 %123, 2
  %125 = zext i1 %124 to i8
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %125, i8* %126, align 1, !tbaa !2452
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

block_400e36:                                     ; preds = %block_400e40, %block_400e20
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400e20 ], [ %207, %block_400e40 ]
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
  %153 = call i32 @llvm.ctpop.i32(i32 %152) #16
  %154 = trunc i32 %153 to i8
  %155 = and i8 %154, 1
  %156 = xor i8 %155, 1
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %156, i8* %157, align 1, !tbaa !2448
  %158 = xor i32 %147, 10
  %159 = xor i32 %158, %148
  %160 = lshr i32 %159, 4
  %161 = trunc i32 %160 to i8
  %162 = and i8 %161, 1
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %162, i8* %163, align 1, !tbaa !2449
  %164 = icmp eq i32 %148, 0
  %165 = zext i1 %164 to i8
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %165, i8* %166, align 1, !tbaa !2450
  %167 = lshr i32 %148, 31
  %168 = trunc i32 %167 to i8
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %168, i8* %169, align 1, !tbaa !2451
  %170 = lshr i32 %147, 31
  %171 = xor i32 %167, %170
  %172 = add nuw nsw i32 %171, %170
  %173 = icmp eq i32 %172, 2
  %174 = zext i1 %173 to i8
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %174, i8* %175, align 1, !tbaa !2452
  %176 = load i64, i64* %PC
  %177 = add i64 %176, 25
  %178 = load i64, i64* %PC
  %179 = add i64 %178, 6
  %180 = load i64, i64* %PC
  %181 = add i64 %180, 6
  store i64 %181, i64* %PC
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %183 = load i8, i8* %182, align 1, !tbaa !2451
  %184 = icmp ne i8 %183, 0
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %186 = load i8, i8* %185, align 1, !tbaa !2452
  %187 = icmp ne i8 %186, 0
  %188 = xor i1 %184, %187
  %189 = xor i1 %188, true
  %190 = zext i1 %189 to i8
  store i8 %190, i8* %BRANCH_TAKEN, align 1, !tbaa !2453
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %192 = select i1 %188, i64 %179, i64 %177
  store i64 %192, i64* %191, align 8, !tbaa !2428
  %193 = load i8, i8* %BRANCH_TAKEN
  %194 = icmp eq i8 %193, 1
  br i1 %194, label %block_400e53, label %block_400e40

block_400e40:                                     ; preds = %block_400e36
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
  %207 = call %struct.Memory* @sub_400cd0_Oscar_renamed_(%struct.State* %0, i64 %206, %struct.Memory* %MEMORY.0)
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
  %227 = call i32 @llvm.ctpop.i32(i32 %226) #16
  %228 = trunc i32 %227 to i8
  %229 = and i8 %228, 1
  %230 = xor i8 %229, 1
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %230, i8* %231, align 1, !tbaa !2448
  %232 = xor i64 1, %215
  %233 = trunc i64 %232 to i32
  %234 = xor i32 %233, %219
  %235 = lshr i32 %234, 4
  %236 = trunc i32 %235 to i8
  %237 = and i8 %236, 1
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %237, i8* %238, align 1, !tbaa !2449
  %239 = icmp eq i32 %219, 0
  %240 = zext i1 %239 to i8
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %240, i8* %241, align 1, !tbaa !2450
  %242 = lshr i32 %219, 31
  %243 = trunc i32 %242 to i8
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %243, i8* %244, align 1, !tbaa !2451
  %245 = lshr i32 %218, 31
  %246 = xor i32 %242, %245
  %247 = add nuw nsw i32 %246, %242
  %248 = icmp eq i32 %247, 2
  %249 = zext i1 %248 to i8
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %249, i8* %250, align 1, !tbaa !2452
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
  br label %block_400e36
}

; Function Attrs: noinline
define %struct.Memory* @sub_400510_Rand(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400510:
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
  %49 = call i32 @llvm.ctpop.i32(i32 %48) #16
  %50 = trunc i32 %49 to i8
  %51 = and i8 %50, 1
  %52 = xor i8 %51, 1
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %52, i8* %53, align 1, !tbaa !2448
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %54, align 1, !tbaa !2449
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %55, align 1, !tbaa !2450
  %56 = lshr i64 %42, 63
  %57 = trunc i64 %56 to i8
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %57, i8* %58, align 1, !tbaa !2451
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %45, i8* %59, align 1, !tbaa !2452
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
  %71 = call i32 @llvm.ctpop.i32(i32 %70) #16
  %72 = trunc i32 %71 to i8
  %73 = and i8 %72, 1
  %74 = xor i8 %73, 1
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %74, i8* %75, align 1, !tbaa !2448
  %76 = xor i64 13849, %60
  %77 = xor i64 %76, %63
  %78 = lshr i64 %77, 4
  %79 = trunc i64 %78 to i8
  %80 = and i8 %79, 1
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %80, i8* %81, align 1, !tbaa !2449
  %82 = icmp eq i64 %63, 0
  %83 = zext i1 %82 to i8
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %83, i8* %84, align 1, !tbaa !2450
  %85 = lshr i64 %63, 63
  %86 = trunc i64 %85 to i8
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %86, i8* %87, align 1, !tbaa !2451
  %88 = lshr i64 %60, 63
  %89 = xor i64 %85, %88
  %90 = add nuw nsw i64 %89, %85
  %91 = icmp eq i64 %90, 2
  %92 = zext i1 %91 to i8
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %92, i8* %93, align 1, !tbaa !2452
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
  %101 = call i32 @llvm.ctpop.i32(i32 %100) #16
  %102 = trunc i32 %101 to i8
  %103 = and i8 %102, 1
  %104 = xor i8 %103, 1
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %104, i8* %105, align 1, !tbaa !2448
  %106 = icmp eq i64 %97, 0
  %107 = zext i1 %106 to i8
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %107, i8* %108, align 1, !tbaa !2450
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %109, align 1, !tbaa !2451
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %110, align 1, !tbaa !2452
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %111, align 1, !tbaa !2449
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
define %struct.Memory* @sub_400650_Printcomplex(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400650:
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
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %48 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %47, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %48 to %union.vec128_t*
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %50 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %49, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %50 to %union.vec128_t*
  %51 = load i64, i64* %RBP
  %52 = load i64, i64* %PC
  %53 = add i64 %52, 1
  store i64 %53, i64* %PC
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %55 = load i64, i64* %54, align 8, !tbaa !2428
  %56 = add i64 %55, -8
  %57 = inttoptr i64 %56 to i64*
  store i64 %51, i64* %57
  store i64 %56, i64* %54, align 8, !tbaa !2428
  %58 = load i64, i64* %RSP
  %59 = load i64, i64* %PC
  %60 = add i64 %59, 3
  store i64 %60, i64* %PC
  store i64 %58, i64* %RBP, align 8, !tbaa !2428
  %61 = load i64, i64* %RSP
  %62 = load i64, i64* %PC
  %63 = add i64 %62, 4
  store i64 %63, i64* %PC
  %64 = sub i64 %61, 48
  store i64 %64, i64* %RSP, align 8, !tbaa !2428
  %65 = icmp ult i64 %61, 48
  %66 = zext i1 %65 to i8
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %66, i8* %67, align 1, !tbaa !2434
  %68 = trunc i64 %64 to i32
  %69 = and i32 %68, 255
  %70 = call i32 @llvm.ctpop.i32(i32 %69) #16
  %71 = trunc i32 %70 to i8
  %72 = and i8 %71, 1
  %73 = xor i8 %72, 1
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %73, i8* %74, align 1, !tbaa !2448
  %75 = xor i64 48, %61
  %76 = xor i64 %75, %64
  %77 = lshr i64 %76, 4
  %78 = trunc i64 %77 to i8
  %79 = and i8 %78, 1
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %79, i8* %80, align 1, !tbaa !2449
  %81 = icmp eq i64 %64, 0
  %82 = zext i1 %81 to i8
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %82, i8* %83, align 1, !tbaa !2450
  %84 = lshr i64 %64, 63
  %85 = trunc i64 %84 to i8
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %85, i8* %86, align 1, !tbaa !2451
  %87 = lshr i64 %61, 63
  %88 = xor i64 %84, %87
  %89 = add nuw nsw i64 %88, %87
  %90 = icmp eq i64 %89, 2
  %91 = zext i1 %90 to i8
  %92 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %91, i8* %92, align 1, !tbaa !2452
  %93 = load i64, i64* %PC
  %94 = add i64 %93, 10
  store i64 %94, i64* %PC
  store i64 add (i64 ptrtoint (%seg_400ee0__rodata_type* @seg_400ee0__rodata to i64), i64 40), i64* %RAX, align 8, !tbaa !2428
  %95 = load i64, i64* %RBP
  %96 = sub i64 %95, 8
  %97 = load i64, i64* %RDI
  %98 = load i64, i64* %PC
  %99 = add i64 %98, 4
  store i64 %99, i64* %PC
  %100 = inttoptr i64 %96 to i64*
  store i64 %97, i64* %100
  %101 = load i64, i64* %RBP
  %102 = sub i64 %101, 12
  %103 = load i32, i32* %ESI
  %104 = zext i32 %103 to i64
  %105 = load i64, i64* %PC
  %106 = add i64 %105, 3
  store i64 %106, i64* %PC
  %107 = inttoptr i64 %102 to i32*
  store i32 %103, i32* %107
  %108 = load i64, i64* %RBP
  %109 = sub i64 %108, 16
  %110 = load i32, i32* %EDX
  %111 = zext i32 %110 to i64
  %112 = load i64, i64* %PC
  %113 = add i64 %112, 3
  store i64 %113, i64* %PC
  %114 = inttoptr i64 %109 to i32*
  store i32 %110, i32* %114
  %115 = load i64, i64* %RBP
  %116 = sub i64 %115, 20
  %117 = load i32, i32* %ECX
  %118 = zext i32 %117 to i64
  %119 = load i64, i64* %PC
  %120 = add i64 %119, 3
  store i64 %120, i64* %PC
  %121 = inttoptr i64 %116 to i32*
  store i32 %117, i32* %121
  %122 = load i64, i64* %RAX
  %123 = load i64, i64* %PC
  %124 = add i64 %123, 3
  store i64 %124, i64* %PC
  store i64 %122, i64* %RDI, align 8, !tbaa !2428
  %125 = load i64, i64* %PC
  %126 = add i64 %125, 2
  store i64 %126, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2453
  %127 = load i64, i64* %PC
  %128 = sub i64 %127, 644
  %129 = load i64, i64* %PC
  %130 = add i64 %129, 5
  %131 = load i64, i64* %PC
  %132 = add i64 %131, 5
  store i64 %132, i64* %PC
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %134 = load i64, i64* %133, align 8, !tbaa !2428
  %135 = add i64 %134, -8
  %136 = inttoptr i64 %135 to i64*
  store i64 %130, i64* %136
  store i64 %135, i64* %133, align 8, !tbaa !2428
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %128, i64* %137, align 8, !tbaa !2428
  %138 = load i64, i64* %PC
  %139 = call %struct.Memory* @ext_619238_printf(%struct.State* %0, i64 %138, %struct.Memory* %2)
  %140 = load i64, i64* %RBP
  %141 = sub i64 %140, 12
  %142 = load i64, i64* %PC
  %143 = add i64 %142, 3
  store i64 %143, i64* %PC
  %144 = inttoptr i64 %141 to i32*
  %145 = load i32, i32* %144
  %146 = zext i32 %145 to i64
  store i64 %146, i64* %RCX, align 8, !tbaa !2428
  %147 = load i64, i64* %RBP
  %148 = sub i64 %147, 24
  %149 = load i32, i32* %ECX
  %150 = zext i32 %149 to i64
  %151 = load i64, i64* %PC
  %152 = add i64 %151, 3
  store i64 %152, i64* %PC
  %153 = inttoptr i64 %148 to i32*
  store i32 %149, i32* %153
  %154 = load i64, i64* %RBP
  %155 = sub i64 %154, 28
  %156 = load i32, i32* %EAX
  %157 = zext i32 %156 to i64
  %158 = load i64, i64* %PC
  %159 = add i64 %158, 3
  store i64 %159, i64* %PC
  %160 = inttoptr i64 %155 to i32*
  store i32 %156, i32* %160
  br label %block_400682

block_400722:                                     ; preds = %block_400682
  %161 = load i64, i64* %RSP
  %162 = load i64, i64* %PC
  %163 = add i64 %162, 4
  store i64 %163, i64* %PC
  %164 = add i64 48, %161
  store i64 %164, i64* %RSP, align 8, !tbaa !2428
  %165 = icmp ult i64 %164, %161
  %166 = icmp ult i64 %164, 48
  %167 = or i1 %165, %166
  %168 = zext i1 %167 to i8
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %168, i8* %169, align 1, !tbaa !2434
  %170 = trunc i64 %164 to i32
  %171 = and i32 %170, 255
  %172 = call i32 @llvm.ctpop.i32(i32 %171) #16
  %173 = trunc i32 %172 to i8
  %174 = and i8 %173, 1
  %175 = xor i8 %174, 1
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %175, i8* %176, align 1, !tbaa !2448
  %177 = xor i64 48, %161
  %178 = xor i64 %177, %164
  %179 = lshr i64 %178, 4
  %180 = trunc i64 %179 to i8
  %181 = and i8 %180, 1
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %181, i8* %182, align 1, !tbaa !2449
  %183 = icmp eq i64 %164, 0
  %184 = zext i1 %183 to i8
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %184, i8* %185, align 1, !tbaa !2450
  %186 = lshr i64 %164, 63
  %187 = trunc i64 %186 to i8
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %187, i8* %188, align 1, !tbaa !2451
  %189 = lshr i64 %161, 63
  %190 = xor i64 %186, %189
  %191 = add nuw nsw i64 %190, %186
  %192 = icmp eq i64 %191, 2
  %193 = zext i1 %192 to i8
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %193, i8* %194, align 1, !tbaa !2452
  %195 = load i64, i64* %PC
  %196 = add i64 %195, 1
  store i64 %196, i64* %PC
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %198 = load i64, i64* %197, align 8, !tbaa !2428
  %199 = add i64 %198, 8
  %200 = inttoptr i64 %198 to i64*
  %201 = load i64, i64* %200
  store i64 %201, i64* %RBP, align 8, !tbaa !2428
  store i64 %199, i64* %197, align 8, !tbaa !2428
  %202 = load i64, i64* %PC
  %203 = add i64 %202, 1
  store i64 %203, i64* %PC
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %206 = load i64, i64* %205, align 8, !tbaa !2428
  %207 = inttoptr i64 %206 to i64*
  %208 = load i64, i64* %207
  store i64 %208, i64* %204, align 8, !tbaa !2428
  %209 = add i64 %206, 8
  store i64 %209, i64* %205, align 8, !tbaa !2428
  ret %struct.Memory* %483

block_400682:                                     ; preds = %block_400682, %block_400650
  %MEMORY.0 = phi %struct.Memory* [ %139, %block_400650 ], [ %483, %block_400682 ]
  %210 = load i64, i64* %PC
  %211 = add i64 %210, 10
  store i64 %211, i64* %PC
  store i64 add (i64 ptrtoint (%seg_400ee0__rodata_type* @seg_400ee0__rodata to i64), i64 42), i64* %RDI, align 8, !tbaa !2428
  %212 = load i64, i64* %RBP
  %213 = sub i64 %212, 8
  %214 = load i64, i64* %PC
  %215 = add i64 %214, 4
  store i64 %215, i64* %PC
  %216 = inttoptr i64 %213 to i64*
  %217 = load i64, i64* %216
  store i64 %217, i64* %RAX, align 8, !tbaa !2428
  %218 = load i64, i64* %RBP
  %219 = sub i64 %218, 24
  %220 = load i64, i64* %PC
  %221 = add i64 %220, 4
  store i64 %221, i64* %PC
  %222 = inttoptr i64 %219 to i32*
  %223 = load i32, i32* %222
  %224 = sext i32 %223 to i64
  store i64 %224, i64* %RCX, align 8, !tbaa !2428
  %225 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %226 = load i64, i64* %RAX
  %227 = load i64, i64* %RCX
  %228 = mul i64 %227, 8
  %229 = add i64 %228, %226
  %230 = load i64, i64* %PC
  %231 = add i64 %230, 5
  store i64 %231, i64* %PC
  %232 = inttoptr i64 %229 to float*
  %233 = load float, float* %232
  %234 = bitcast i8* %225 to float*
  store float %233, float* %234, align 1, !tbaa !2432
  %235 = getelementptr inbounds i8, i8* %225, i64 4
  %236 = bitcast i8* %235 to float*
  store float 0.000000e+00, float* %236, align 1, !tbaa !2432
  %237 = getelementptr inbounds i8, i8* %225, i64 8
  %238 = bitcast i8* %237 to float*
  store float 0.000000e+00, float* %238, align 1, !tbaa !2432
  %239 = getelementptr inbounds i8, i8* %225, i64 12
  %240 = bitcast i8* %239 to float*
  store float 0.000000e+00, float* %240, align 1, !tbaa !2432
  %241 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %242 = bitcast %union.vec128_t* %XMM0 to i8*
  %243 = load i64, i64* %PC
  %244 = add i64 %243, 4
  store i64 %244, i64* %PC
  %245 = bitcast i8* %242 to <2 x float>*
  %246 = load <2 x float>, <2 x float>* %245, align 1
  %247 = extractelement <2 x float> %246, i32 0
  %248 = fpext float %247 to double
  %249 = bitcast i8* %241 to double*
  store double %248, double* %249, align 1, !tbaa !2454
  %250 = load i64, i64* %RBP
  %251 = sub i64 %250, 8
  %252 = load i64, i64* %PC
  %253 = add i64 %252, 4
  store i64 %253, i64* %PC
  %254 = inttoptr i64 %251 to i64*
  %255 = load i64, i64* %254
  store i64 %255, i64* %RAX, align 8, !tbaa !2428
  %256 = load i64, i64* %RBP
  %257 = sub i64 %256, 24
  %258 = load i64, i64* %PC
  %259 = add i64 %258, 4
  store i64 %259, i64* %PC
  %260 = inttoptr i64 %257 to i32*
  %261 = load i32, i32* %260
  %262 = sext i32 %261 to i64
  store i64 %262, i64* %RCX, align 8, !tbaa !2428
  %263 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %264 = load i64, i64* %RAX
  %265 = load i64, i64* %RCX
  %266 = mul i64 %265, 8
  %267 = add i64 %264, 4
  %268 = add i64 %267, %266
  %269 = load i64, i64* %PC
  %270 = add i64 %269, 6
  store i64 %270, i64* %PC
  %271 = inttoptr i64 %268 to float*
  %272 = load float, float* %271
  %273 = bitcast i8* %263 to float*
  store float %272, float* %273, align 1, !tbaa !2432
  %274 = getelementptr inbounds i8, i8* %263, i64 4
  %275 = bitcast i8* %274 to float*
  store float 0.000000e+00, float* %275, align 1, !tbaa !2432
  %276 = getelementptr inbounds i8, i8* %263, i64 8
  %277 = bitcast i8* %276 to float*
  store float 0.000000e+00, float* %277, align 1, !tbaa !2432
  %278 = getelementptr inbounds i8, i8* %263, i64 12
  %279 = bitcast i8* %278 to float*
  store float 0.000000e+00, float* %279, align 1, !tbaa !2432
  %280 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %281 = bitcast %union.vec128_t* %XMM1 to i8*
  %282 = load i64, i64* %PC
  %283 = add i64 %282, 4
  store i64 %283, i64* %PC
  %284 = bitcast i8* %281 to <2 x float>*
  %285 = load <2 x float>, <2 x float>* %284, align 1
  %286 = extractelement <2 x float> %285, i32 0
  %287 = fpext float %286 to double
  %288 = bitcast i8* %280 to double*
  store double %287, double* %288, align 1, !tbaa !2454
  %289 = load i64, i64* %PC
  %290 = add i64 %289, 2
  store i64 %290, i64* %PC
  store i8 2, i8* %AL, align 1, !tbaa !2453
  %291 = load i64, i64* %PC
  %292 = sub i64 %291, 705
  %293 = load i64, i64* %PC
  %294 = add i64 %293, 5
  %295 = load i64, i64* %PC
  %296 = add i64 %295, 5
  store i64 %296, i64* %PC
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %298 = load i64, i64* %297, align 8, !tbaa !2428
  %299 = add i64 %298, -8
  %300 = inttoptr i64 %299 to i64*
  store i64 %294, i64* %300
  store i64 %299, i64* %297, align 8, !tbaa !2428
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %292, i64* %301, align 8, !tbaa !2428
  %302 = load i64, i64* %PC
  %303 = call %struct.Memory* @ext_619238_printf(%struct.State* %0, i64 %302, %struct.Memory* %MEMORY.0)
  %304 = load i64, i64* %PC
  %305 = add i64 %304, 10
  store i64 %305, i64* %PC
  store i64 add (i64 ptrtoint (%seg_400ee0__rodata_type* @seg_400ee0__rodata to i64), i64 42), i64* %RDI, align 8, !tbaa !2428
  %306 = load i64, i64* %RBP
  %307 = sub i64 %306, 24
  %308 = load i64, i64* %PC
  %309 = add i64 %308, 3
  store i64 %309, i64* %PC
  %310 = inttoptr i64 %307 to i32*
  %311 = load i32, i32* %310
  %312 = zext i32 %311 to i64
  store i64 %312, i64* %RDX, align 8, !tbaa !2428
  %313 = load i64, i64* %RDX
  %314 = load i64, i64* %RBP
  %315 = sub i64 %314, 20
  %316 = load i64, i64* %PC
  %317 = add i64 %316, 3
  store i64 %317, i64* %PC
  %318 = trunc i64 %313 to i32
  %319 = inttoptr i64 %315 to i32*
  %320 = load i32, i32* %319
  %321 = add i32 %320, %318
  %322 = zext i32 %321 to i64
  store i64 %322, i64* %RDX, align 8, !tbaa !2428
  %323 = icmp ult i32 %321, %318
  %324 = icmp ult i32 %321, %320
  %325 = or i1 %323, %324
  %326 = zext i1 %325 to i8
  %327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %326, i8* %327, align 1, !tbaa !2434
  %328 = and i32 %321, 255
  %329 = call i32 @llvm.ctpop.i32(i32 %328) #16
  %330 = trunc i32 %329 to i8
  %331 = and i8 %330, 1
  %332 = xor i8 %331, 1
  %333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %332, i8* %333, align 1, !tbaa !2448
  %334 = xor i32 %320, %318
  %335 = xor i32 %334, %321
  %336 = lshr i32 %335, 4
  %337 = trunc i32 %336 to i8
  %338 = and i8 %337, 1
  %339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %338, i8* %339, align 1, !tbaa !2449
  %340 = icmp eq i32 %321, 0
  %341 = zext i1 %340 to i8
  %342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %341, i8* %342, align 1, !tbaa !2450
  %343 = lshr i32 %321, 31
  %344 = trunc i32 %343 to i8
  %345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %344, i8* %345, align 1, !tbaa !2451
  %346 = lshr i32 %318, 31
  %347 = lshr i32 %320, 31
  %348 = xor i32 %343, %346
  %349 = xor i32 %343, %347
  %350 = add nuw nsw i32 %348, %349
  %351 = icmp eq i32 %350, 2
  %352 = zext i1 %351 to i8
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %352, i8* %353, align 1, !tbaa !2452
  %354 = load i64, i64* %RBP
  %355 = sub i64 %354, 24
  %356 = load i32, i32* %EDX
  %357 = zext i32 %356 to i64
  %358 = load i64, i64* %PC
  %359 = add i64 %358, 3
  store i64 %359, i64* %PC
  %360 = inttoptr i64 %355 to i32*
  store i32 %356, i32* %360
  %361 = load i64, i64* %RBP
  %362 = sub i64 %361, 8
  %363 = load i64, i64* %PC
  %364 = add i64 %363, 4
  store i64 %364, i64* %PC
  %365 = inttoptr i64 %362 to i64*
  %366 = load i64, i64* %365
  store i64 %366, i64* %RCX, align 8, !tbaa !2428
  %367 = load i64, i64* %RBP
  %368 = sub i64 %367, 24
  %369 = load i64, i64* %PC
  %370 = add i64 %369, 4
  store i64 %370, i64* %PC
  %371 = inttoptr i64 %368 to i32*
  %372 = load i32, i32* %371
  %373 = sext i32 %372 to i64
  store i64 %373, i64* %RSI, align 8, !tbaa !2428
  %374 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %375 = load i64, i64* %RCX
  %376 = load i64, i64* %RSI
  %377 = mul i64 %376, 8
  %378 = add i64 %377, %375
  %379 = load i64, i64* %PC
  %380 = add i64 %379, 5
  store i64 %380, i64* %PC
  %381 = inttoptr i64 %378 to float*
  %382 = load float, float* %381
  %383 = bitcast i8* %374 to float*
  store float %382, float* %383, align 1, !tbaa !2432
  %384 = getelementptr inbounds i8, i8* %374, i64 4
  %385 = bitcast i8* %384 to float*
  store float 0.000000e+00, float* %385, align 1, !tbaa !2432
  %386 = getelementptr inbounds i8, i8* %374, i64 8
  %387 = bitcast i8* %386 to float*
  store float 0.000000e+00, float* %387, align 1, !tbaa !2432
  %388 = getelementptr inbounds i8, i8* %374, i64 12
  %389 = bitcast i8* %388 to float*
  store float 0.000000e+00, float* %389, align 1, !tbaa !2432
  %390 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %391 = bitcast %union.vec128_t* %XMM0 to i8*
  %392 = load i64, i64* %PC
  %393 = add i64 %392, 4
  store i64 %393, i64* %PC
  %394 = bitcast i8* %391 to <2 x float>*
  %395 = load <2 x float>, <2 x float>* %394, align 1
  %396 = extractelement <2 x float> %395, i32 0
  %397 = fpext float %396 to double
  %398 = bitcast i8* %390 to double*
  store double %397, double* %398, align 1, !tbaa !2454
  %399 = load i64, i64* %RBP
  %400 = sub i64 %399, 8
  %401 = load i64, i64* %PC
  %402 = add i64 %401, 4
  store i64 %402, i64* %PC
  %403 = inttoptr i64 %400 to i64*
  %404 = load i64, i64* %403
  store i64 %404, i64* %RCX, align 8, !tbaa !2428
  %405 = load i64, i64* %RBP
  %406 = sub i64 %405, 24
  %407 = load i64, i64* %PC
  %408 = add i64 %407, 4
  store i64 %408, i64* %PC
  %409 = inttoptr i64 %406 to i32*
  %410 = load i32, i32* %409
  %411 = sext i32 %410 to i64
  store i64 %411, i64* %RSI, align 8, !tbaa !2428
  %412 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %413 = load i64, i64* %RCX
  %414 = load i64, i64* %RSI
  %415 = mul i64 %414, 8
  %416 = add i64 %413, 4
  %417 = add i64 %416, %415
  %418 = load i64, i64* %PC
  %419 = add i64 %418, 6
  store i64 %419, i64* %PC
  %420 = inttoptr i64 %417 to float*
  %421 = load float, float* %420
  %422 = bitcast i8* %412 to float*
  store float %421, float* %422, align 1, !tbaa !2432
  %423 = getelementptr inbounds i8, i8* %412, i64 4
  %424 = bitcast i8* %423 to float*
  store float 0.000000e+00, float* %424, align 1, !tbaa !2432
  %425 = getelementptr inbounds i8, i8* %412, i64 8
  %426 = bitcast i8* %425 to float*
  store float 0.000000e+00, float* %426, align 1, !tbaa !2432
  %427 = getelementptr inbounds i8, i8* %412, i64 12
  %428 = bitcast i8* %427 to float*
  store float 0.000000e+00, float* %428, align 1, !tbaa !2432
  %429 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %430 = bitcast %union.vec128_t* %XMM1 to i8*
  %431 = load i64, i64* %PC
  %432 = add i64 %431, 4
  store i64 %432, i64* %PC
  %433 = bitcast i8* %430 to <2 x float>*
  %434 = load <2 x float>, <2 x float>* %433, align 1
  %435 = extractelement <2 x float> %434, i32 0
  %436 = fpext float %435 to double
  %437 = bitcast i8* %429 to double*
  store double %436, double* %437, align 1, !tbaa !2454
  %438 = load i64, i64* %RBP
  %439 = sub i64 %438, 32
  %440 = load i32, i32* %EAX
  %441 = zext i32 %440 to i64
  %442 = load i64, i64* %PC
  %443 = add i64 %442, 3
  store i64 %443, i64* %PC
  %444 = inttoptr i64 %439 to i32*
  store i32 %440, i32* %444
  %445 = load i64, i64* %PC
  %446 = add i64 %445, 2
  store i64 %446, i64* %PC
  store i8 2, i8* %AL, align 1, !tbaa !2453
  %447 = load i64, i64* %PC
  %448 = sub i64 %447, 769
  %449 = load i64, i64* %PC
  %450 = add i64 %449, 5
  %451 = load i64, i64* %PC
  %452 = add i64 %451, 5
  store i64 %452, i64* %PC
  %453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %454 = load i64, i64* %453, align 8, !tbaa !2428
  %455 = add i64 %454, -8
  %456 = inttoptr i64 %455 to i64*
  store i64 %450, i64* %456
  store i64 %455, i64* %453, align 8, !tbaa !2428
  %457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %448, i64* %457, align 8, !tbaa !2428
  %458 = load i64, i64* %PC
  %459 = call %struct.Memory* @ext_619238_printf(%struct.State* %0, i64 %458, %struct.Memory* %303)
  %460 = load i64, i64* %PC
  %461 = add i64 %460, 10
  store i64 %461, i64* %PC
  store i64 add (i64 ptrtoint (%seg_400ee0__rodata_type* @seg_400ee0__rodata to i64), i64 40), i64* %RDI, align 8, !tbaa !2428
  %462 = load i64, i64* %RBP
  %463 = sub i64 %462, 36
  %464 = load i32, i32* %EAX
  %465 = zext i32 %464 to i64
  %466 = load i64, i64* %PC
  %467 = add i64 %466, 3
  store i64 %467, i64* %PC
  %468 = inttoptr i64 %463 to i32*
  store i32 %464, i32* %468
  %469 = load i64, i64* %PC
  %470 = add i64 %469, 2
  store i64 %470, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2453
  %471 = load i64, i64* %PC
  %472 = sub i64 %471, 789
  %473 = load i64, i64* %PC
  %474 = add i64 %473, 5
  %475 = load i64, i64* %PC
  %476 = add i64 %475, 5
  store i64 %476, i64* %PC
  %477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %478 = load i64, i64* %477, align 8, !tbaa !2428
  %479 = add i64 %478, -8
  %480 = inttoptr i64 %479 to i64*
  store i64 %474, i64* %480
  store i64 %479, i64* %477, align 8, !tbaa !2428
  %481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %472, i64* %481, align 8, !tbaa !2428
  %482 = load i64, i64* %PC
  %483 = call %struct.Memory* @ext_619238_printf(%struct.State* %0, i64 %482, %struct.Memory* %459)
  %484 = load i64, i64* %RBP
  %485 = sub i64 %484, 24
  %486 = load i64, i64* %PC
  %487 = add i64 %486, 3
  store i64 %487, i64* %PC
  %488 = inttoptr i64 %485 to i32*
  %489 = load i32, i32* %488
  %490 = zext i32 %489 to i64
  store i64 %490, i64* %RDX, align 8, !tbaa !2428
  %491 = load i64, i64* %RDX
  %492 = load i64, i64* %RBP
  %493 = sub i64 %492, 20
  %494 = load i64, i64* %PC
  %495 = add i64 %494, 3
  store i64 %495, i64* %PC
  %496 = trunc i64 %491 to i32
  %497 = inttoptr i64 %493 to i32*
  %498 = load i32, i32* %497
  %499 = add i32 %498, %496
  %500 = zext i32 %499 to i64
  store i64 %500, i64* %RDX, align 8, !tbaa !2428
  %501 = icmp ult i32 %499, %496
  %502 = icmp ult i32 %499, %498
  %503 = or i1 %501, %502
  %504 = zext i1 %503 to i8
  %505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %504, i8* %505, align 1, !tbaa !2434
  %506 = and i32 %499, 255
  %507 = call i32 @llvm.ctpop.i32(i32 %506) #16
  %508 = trunc i32 %507 to i8
  %509 = and i8 %508, 1
  %510 = xor i8 %509, 1
  %511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %510, i8* %511, align 1, !tbaa !2448
  %512 = xor i32 %498, %496
  %513 = xor i32 %512, %499
  %514 = lshr i32 %513, 4
  %515 = trunc i32 %514 to i8
  %516 = and i8 %515, 1
  %517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %516, i8* %517, align 1, !tbaa !2449
  %518 = icmp eq i32 %499, 0
  %519 = zext i1 %518 to i8
  %520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %519, i8* %520, align 1, !tbaa !2450
  %521 = lshr i32 %499, 31
  %522 = trunc i32 %521 to i8
  %523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %522, i8* %523, align 1, !tbaa !2451
  %524 = lshr i32 %496, 31
  %525 = lshr i32 %498, 31
  %526 = xor i32 %521, %524
  %527 = xor i32 %521, %525
  %528 = add nuw nsw i32 %526, %527
  %529 = icmp eq i32 %528, 2
  %530 = zext i1 %529 to i8
  %531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %530, i8* %531, align 1, !tbaa !2452
  %532 = load i64, i64* %RBP
  %533 = sub i64 %532, 24
  %534 = load i32, i32* %EDX
  %535 = zext i32 %534 to i64
  %536 = load i64, i64* %PC
  %537 = add i64 %536, 3
  store i64 %537, i64* %PC
  %538 = inttoptr i64 %533 to i32*
  store i32 %534, i32* %538
  %539 = load i64, i64* %RBP
  %540 = sub i64 %539, 40
  %541 = load i32, i32* %EAX
  %542 = zext i32 %541 to i64
  %543 = load i64, i64* %PC
  %544 = add i64 %543, 3
  store i64 %544, i64* %PC
  %545 = inttoptr i64 %540 to i32*
  store i32 %541, i32* %545
  %546 = load i64, i64* %RBP
  %547 = sub i64 %546, 24
  %548 = load i64, i64* %PC
  %549 = add i64 %548, 3
  store i64 %549, i64* %PC
  %550 = inttoptr i64 %547 to i32*
  %551 = load i32, i32* %550
  %552 = zext i32 %551 to i64
  store i64 %552, i64* %RAX, align 8, !tbaa !2428
  %553 = load i32, i32* %EAX
  %554 = zext i32 %553 to i64
  %555 = load i64, i64* %RBP
  %556 = sub i64 %555, 16
  %557 = load i64, i64* %PC
  %558 = add i64 %557, 3
  store i64 %558, i64* %PC
  %559 = inttoptr i64 %556 to i32*
  %560 = load i32, i32* %559
  %561 = sub i32 %553, %560
  %562 = icmp ult i32 %553, %560
  %563 = zext i1 %562 to i8
  %564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %563, i8* %564, align 1, !tbaa !2434
  %565 = and i32 %561, 255
  %566 = call i32 @llvm.ctpop.i32(i32 %565) #16
  %567 = trunc i32 %566 to i8
  %568 = and i8 %567, 1
  %569 = xor i8 %568, 1
  %570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %569, i8* %570, align 1, !tbaa !2448
  %571 = xor i32 %560, %553
  %572 = xor i32 %571, %561
  %573 = lshr i32 %572, 4
  %574 = trunc i32 %573 to i8
  %575 = and i8 %574, 1
  %576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %575, i8* %576, align 1, !tbaa !2449
  %577 = icmp eq i32 %561, 0
  %578 = zext i1 %577 to i8
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %578, i8* %579, align 1, !tbaa !2450
  %580 = lshr i32 %561, 31
  %581 = trunc i32 %580 to i8
  %582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %581, i8* %582, align 1, !tbaa !2451
  %583 = lshr i32 %553, 31
  %584 = lshr i32 %560, 31
  %585 = xor i32 %584, %583
  %586 = xor i32 %580, %583
  %587 = add nuw nsw i32 %586, %585
  %588 = icmp eq i32 %587, 2
  %589 = zext i1 %588 to i8
  %590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %589, i8* %590, align 1, !tbaa !2452
  %591 = load i64, i64* %PC
  %592 = sub i64 %591, 154
  %593 = load i64, i64* %PC
  %594 = add i64 %593, 6
  %595 = load i64, i64* %PC
  %596 = add i64 %595, 6
  store i64 %596, i64* %PC
  %597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %598 = load i8, i8* %597, align 1, !tbaa !2450
  %599 = icmp ne i8 %598, 0
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %601 = load i8, i8* %600, align 1, !tbaa !2451
  %602 = icmp ne i8 %601, 0
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %604 = load i8, i8* %603, align 1, !tbaa !2452
  %605 = icmp ne i8 %604, 0
  %606 = xor i1 %602, %605
  %607 = or i1 %599, %606
  %608 = zext i1 %607 to i8
  store i8 %608, i8* %BRANCH_TAKEN, align 1, !tbaa !2453
  %609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %610 = select i1 %607, i64 %592, i64 %594
  store i64 %610, i64* %609, align 8, !tbaa !2428
  %611 = load i8, i8* %BRANCH_TAKEN
  %612 = icmp eq i8 %611, 1
  br i1 %612, label %block_400682, label %block_400722
}

; Function Attrs: noinline
define %struct.Memory* @sub_4004e0_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4004e0:
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
  %35 = tail call %struct.Memory* @sub_400470_register_tm_clones(%struct.State* %0, i64 %34, %struct.Memory* %2)
  ret %struct.Memory* %35
}

; Function Attrs: noinline
define %struct.Memory* @sub_400620_Min0(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  %71 = call i32 @llvm.ctpop.i32(i32 %70) #16
  %72 = trunc i32 %71 to i8
  %73 = and i8 %72, 1
  %74 = xor i8 %73, 1
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %74, i8* %75, align 1, !tbaa !2448
  %76 = xor i32 %65, %58
  %77 = xor i32 %76, %66
  %78 = lshr i32 %77, 4
  %79 = trunc i32 %78 to i8
  %80 = and i8 %79, 1
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %80, i8* %81, align 1, !tbaa !2449
  %82 = icmp eq i32 %66, 0
  %83 = zext i1 %82 to i8
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %83, i8* %84, align 1, !tbaa !2450
  %85 = lshr i32 %66, 31
  %86 = trunc i32 %85 to i8
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %86, i8* %87, align 1, !tbaa !2451
  %88 = lshr i32 %58, 31
  %89 = lshr i32 %65, 31
  %90 = xor i32 %89, %88
  %91 = xor i32 %85, %88
  %92 = add nuw nsw i32 %91, %90
  %93 = icmp eq i32 %92, 2
  %94 = zext i1 %93 to i8
  %95 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %94, i8* %95, align 1, !tbaa !2452
  %96 = load i64, i64* %PC
  %97 = add i64 %96, 17
  %98 = load i64, i64* %PC
  %99 = add i64 %98, 6
  %100 = load i64, i64* %PC
  %101 = add i64 %100, 6
  store i64 %101, i64* %PC
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %103 = load i8, i8* %102, align 1, !tbaa !2451
  %104 = icmp ne i8 %103, 0
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %106 = load i8, i8* %105, align 1, !tbaa !2452
  %107 = icmp ne i8 %106, 0
  %108 = xor i1 %104, %107
  %109 = xor i1 %108, true
  %110 = zext i1 %109 to i8
  store i8 %110, i8* %BRANCH_TAKEN, align 1, !tbaa !2453
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %112 = select i1 %108, i64 %99, i64 %97
  store i64 %112, i64* %111, align 8, !tbaa !2428
  %113 = load i8, i8* %BRANCH_TAKEN
  %114 = icmp eq i8 %113, 1
  %115 = load i64, i64* %RBP
  br i1 %114, label %block_400641, label %block_400636

block_400636:                                     ; preds = %block_400620
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
  br label %block_400647

block_400647:                                     ; preds = %block_400641, %block_400636
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400641 ], [ %2, %block_400636 ]
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

block_400641:                                     ; preds = %block_400620
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
  br label %block_400647
}

; Function Attrs: noinline
define %struct.Memory* @sub_4004f0_Initrand(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4004f0:
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
define %struct.Memory* @sub_400e60___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400e60:
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
  %119 = call i32 @llvm.ctpop.i32(i32 %118) #16
  %120 = trunc i32 %119 to i8
  %121 = and i8 %120, 1
  %122 = xor i8 %121, 1
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %122, i8* %123, align 1, !tbaa !2448
  %124 = xor i64 %110, %109
  %125 = xor i64 %124, %113
  %126 = lshr i64 %125, 4
  %127 = trunc i64 %126 to i8
  %128 = and i8 %127, 1
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %128, i8* %129, align 1, !tbaa !2449
  %130 = icmp eq i64 %113, 0
  %131 = zext i1 %130 to i8
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %131, i8* %132, align 1, !tbaa !2450
  %133 = lshr i64 %113, 63
  %134 = trunc i64 %133 to i8
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %134, i8* %135, align 1, !tbaa !2451
  %136 = lshr i64 %109, 63
  %137 = lshr i64 %110, 63
  %138 = xor i64 %137, %136
  %139 = xor i64 %133, %136
  %140 = add nuw nsw i64 %139, %138
  %141 = icmp eq i64 %140, 2
  %142 = zext i1 %141 to i8
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %142, i8* %143, align 1, !tbaa !2452
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
  %153 = call i32 @llvm.ctpop.i32(i32 %152) #16
  %154 = trunc i32 %153 to i8
  %155 = and i8 %154, 1
  %156 = xor i8 %155, 1
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %156, i8* %157, align 1, !tbaa !2448
  %158 = xor i64 8, %144
  %159 = xor i64 %158, %147
  %160 = lshr i64 %159, 4
  %161 = trunc i64 %160 to i8
  %162 = and i8 %161, 1
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %162, i8* %163, align 1, !tbaa !2449
  %164 = icmp eq i64 %147, 0
  %165 = zext i1 %164 to i8
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %165, i8* %166, align 1, !tbaa !2450
  %167 = lshr i64 %147, 63
  %168 = trunc i64 %167 to i8
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %168, i8* %169, align 1, !tbaa !2451
  %170 = lshr i64 %144, 63
  %171 = xor i64 %167, %170
  %172 = add nuw nsw i64 %171, %170
  %173 = icmp eq i64 %172, 2
  %174 = zext i1 %173 to i8
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %174, i8* %175, align 1, !tbaa !2452
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
  store i8 %181, i8* %183, align 1, !tbaa !2453
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %185 = trunc i64 %182 to i32
  %186 = and i32 %185, 255
  %187 = call i32 @llvm.ctpop.i32(i32 %186) #16
  %188 = trunc i32 %187 to i8
  %189 = and i8 %188, 1
  %190 = xor i8 %189, 1
  store i8 %190, i8* %184, align 1, !tbaa !2453
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %191, align 1, !tbaa !2453
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %193 = icmp eq i64 %182, 0
  %194 = zext i1 %193 to i8
  store i8 %194, i8* %192, align 1, !tbaa !2453
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %196 = lshr i64 %182, 63
  %197 = trunc i64 %196 to i8
  store i8 %197, i8* %195, align 1, !tbaa !2453
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %198, align 1, !tbaa !2453
  %199 = load i64, i64* %PC
  %200 = sub i64 %199, 2756
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
  %211 = call %struct.Memory* @sub_4003c8__init_proc_renamed_(%struct.State* %0, i64 %210, %struct.Memory* %2)
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
  %220 = call i32 @llvm.ctpop.i32(i32 %219) #16
  %221 = trunc i32 %220 to i8
  %222 = and i8 %221, 1
  %223 = xor i8 %222, 1
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %223, i8* %224, align 1, !tbaa !2448
  %225 = icmp eq i64 %216, 0
  %226 = zext i1 %225 to i8
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %226, i8* %227, align 1, !tbaa !2450
  %228 = lshr i64 %216, 63
  %229 = trunc i64 %228 to i8
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %229, i8* %230, align 1, !tbaa !2451
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %231, align 1, !tbaa !2452
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %232, align 1, !tbaa !2449
  %233 = load i64, i64* %PC
  %234 = add i64 %233, 34
  %235 = load i64, i64* %PC
  %236 = add i64 %235, 2
  %237 = load i64, i64* %PC
  %238 = add i64 %237, 2
  store i64 %238, i64* %PC
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %240 = load i8, i8* %239, align 1, !tbaa !2450
  store i8 %240, i8* %BRANCH_TAKEN, align 1, !tbaa !2453
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %242 = icmp ne i8 %240, 0
  %243 = select i1 %242, i64 %234, i64 %236
  store i64 %243, i64* %241, align 8, !tbaa !2428
  %244 = load i8, i8* %BRANCH_TAKEN
  %245 = icmp eq i8 %244, 1
  br i1 %245, label %block_400eb6, label %block_400e96

block_400eb6:                                     ; preds = %block_400ea0, %block_400e60
  %MEMORY.0 = phi %struct.Memory* [ %211, %block_400e60 ], [ %387, %block_400ea0 ]
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
  %257 = call i32 @llvm.ctpop.i32(i32 %256) #16
  %258 = trunc i32 %257 to i8
  %259 = and i8 %258, 1
  %260 = xor i8 %259, 1
  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %260, i8* %261, align 1, !tbaa !2448
  %262 = xor i64 8, %246
  %263 = xor i64 %262, %249
  %264 = lshr i64 %263, 4
  %265 = trunc i64 %264 to i8
  %266 = and i8 %265, 1
  %267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %266, i8* %267, align 1, !tbaa !2449
  %268 = icmp eq i64 %249, 0
  %269 = zext i1 %268 to i8
  %270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %269, i8* %270, align 1, !tbaa !2450
  %271 = lshr i64 %249, 63
  %272 = trunc i64 %271 to i8
  %273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %272, i8* %273, align 1, !tbaa !2451
  %274 = lshr i64 %246, 63
  %275 = xor i64 %271, %274
  %276 = add nuw nsw i64 %275, %271
  %277 = icmp eq i64 %276, 2
  %278 = zext i1 %277 to i8
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %278, i8* %279, align 1, !tbaa !2452
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

block_400e96:                                     ; preds = %block_400e60
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
  %340 = call i32 @llvm.ctpop.i32(i32 %339) #16
  %341 = trunc i32 %340 to i8
  %342 = and i8 %341, 1
  %343 = xor i8 %342, 1
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %343, i8* %344, align 1, !tbaa !2448
  %345 = icmp eq i32 %336, 0
  %346 = zext i1 %345 to i8
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %346, i8* %347, align 1, !tbaa !2450
  %348 = lshr i32 %336, 31
  %349 = trunc i32 %348 to i8
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %349, i8* %350, align 1, !tbaa !2451
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %351, align 1, !tbaa !2452
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %352, align 1, !tbaa !2449
  %353 = load i64, i64* %RAX
  %354 = load i64, i64* %RAX
  %355 = add i64 %354, %353
  %356 = load i32, i32* %EAX
  %357 = zext i32 %356 to i64
  %358 = load i64, i64* %PC
  %359 = add i64 %358, 8
  store i64 %359, i64* %PC
  br label %block_400ea0

block_400ea0:                                     ; preds = %block_400ea0, %block_400e96
  %MEMORY.1 = phi %struct.Memory* [ %211, %block_400e96 ], [ %387, %block_400ea0 ]
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
  %399 = call i32 @llvm.ctpop.i32(i32 %398) #16
  %400 = trunc i32 %399 to i8
  %401 = and i8 %400, 1
  %402 = xor i8 %401, 1
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %402, i8* %403, align 1, !tbaa !2448
  %404 = xor i64 1, %388
  %405 = xor i64 %404, %391
  %406 = lshr i64 %405, 4
  %407 = trunc i64 %406 to i8
  %408 = and i8 %407, 1
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %408, i8* %409, align 1, !tbaa !2449
  %410 = icmp eq i64 %391, 0
  %411 = zext i1 %410 to i8
  %412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %411, i8* %412, align 1, !tbaa !2450
  %413 = lshr i64 %391, 63
  %414 = trunc i64 %413 to i8
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %414, i8* %415, align 1, !tbaa !2451
  %416 = lshr i64 %388, 63
  %417 = xor i64 %413, %416
  %418 = add nuw nsw i64 %417, %413
  %419 = icmp eq i64 %418, 2
  %420 = zext i1 %419 to i8
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %420, i8* %421, align 1, !tbaa !2452
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
  %432 = call i32 @llvm.ctpop.i32(i32 %431) #16
  %433 = trunc i32 %432 to i8
  %434 = and i8 %433, 1
  %435 = xor i8 %434, 1
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %435, i8* %436, align 1, !tbaa !2448
  %437 = xor i64 %423, %422
  %438 = xor i64 %437, %426
  %439 = lshr i64 %438, 4
  %440 = trunc i64 %439 to i8
  %441 = and i8 %440, 1
  %442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %441, i8* %442, align 1, !tbaa !2449
  %443 = icmp eq i64 %426, 0
  %444 = zext i1 %443 to i8
  %445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %444, i8* %445, align 1, !tbaa !2450
  %446 = lshr i64 %426, 63
  %447 = trunc i64 %446 to i8
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %447, i8* %448, align 1, !tbaa !2451
  %449 = lshr i64 %422, 63
  %450 = lshr i64 %423, 63
  %451 = xor i64 %450, %449
  %452 = xor i64 %446, %449
  %453 = add nuw nsw i64 %452, %451
  %454 = icmp eq i64 %453, 2
  %455 = zext i1 %454 to i8
  %456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %455, i8* %456, align 1, !tbaa !2452
  %457 = load i64, i64* %PC
  %458 = sub i64 %457, 20
  %459 = load i64, i64* %PC
  %460 = add i64 %459, 2
  %461 = load i64, i64* %PC
  %462 = add i64 %461, 2
  store i64 %462, i64* %PC
  %463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %464 = load i8, i8* %463, align 1, !tbaa !2450
  %465 = icmp eq i8 %464, 0
  %466 = zext i1 %465 to i8
  store i8 %466, i8* %BRANCH_TAKEN, align 1, !tbaa !2453
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %468 = select i1 %465, i64 %458, i64 %460
  store i64 %468, i64* %467, align 8, !tbaa !2428
  %469 = load i8, i8* %BRANCH_TAKEN
  %470 = icmp eq i8 %469, 1
  br i1 %470, label %block_400ea0, label %block_400eb6
}

; Function Attrs: noinline
define %struct.Memory* @sub_400550_Cos(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400550:
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
  %43 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_400ee0__rodata_type* @seg_400ee0__rodata to i64), i64 4) to float*)
  %44 = bitcast i8* %40 to float*
  store float %43, float* %44, align 1, !tbaa !2432
  %45 = getelementptr inbounds i8, i8* %40, i64 4
  %46 = bitcast i8* %45 to float*
  store float 0.000000e+00, float* %46, align 1, !tbaa !2432
  %47 = getelementptr inbounds i8, i8* %40, i64 8
  %48 = bitcast i8* %47 to float*
  store float 0.000000e+00, float* %48, align 1, !tbaa !2432
  %49 = getelementptr inbounds i8, i8* %40, i64 12
  %50 = bitcast i8* %49 to float*
  store float 0.000000e+00, float* %50, align 1, !tbaa !2432
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
  store float %80, float* %81, align 1, !tbaa !2432
  %82 = getelementptr inbounds i8, i8* %74, i64 4
  %83 = bitcast i8* %82 to float*
  store float 0.000000e+00, float* %83, align 1, !tbaa !2432
  %84 = getelementptr inbounds i8, i8* %74, i64 8
  %85 = bitcast i8* %84 to float*
  store float 0.000000e+00, float* %85, align 1, !tbaa !2432
  %86 = getelementptr inbounds i8, i8* %74, i64 12
  %87 = bitcast i8* %86 to float*
  store float 0.000000e+00, float* %87, align 1, !tbaa !2432
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
  br label %block_40057e

block_40057e:                                     ; preds = %block_400605, %block_400550
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400550 ], [ %MEMORY.1, %block_400605 ]
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
  %113 = call i32 @llvm.ctpop.i32(i32 %112) #16
  %114 = trunc i32 %113 to i8
  %115 = and i8 %114, 1
  %116 = xor i8 %115, 1
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %116, i8* %117, align 1, !tbaa !2448
  %118 = xor i32 %107, 10
  %119 = xor i32 %118, %108
  %120 = lshr i32 %119, 4
  %121 = trunc i32 %120 to i8
  %122 = and i8 %121, 1
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %122, i8* %123, align 1, !tbaa !2449
  %124 = icmp eq i32 %108, 0
  %125 = zext i1 %124 to i8
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %125, i8* %126, align 1, !tbaa !2450
  %127 = lshr i32 %108, 31
  %128 = trunc i32 %127 to i8
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %128, i8* %129, align 1, !tbaa !2451
  %130 = lshr i32 %107, 31
  %131 = xor i32 %127, %130
  %132 = add nuw nsw i32 %131, %130
  %133 = icmp eq i32 %132, 2
  %134 = zext i1 %133 to i8
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %134, i8* %135, align 1, !tbaa !2452
  %136 = load i64, i64* %PC
  %137 = add i64 %136, 150
  %138 = load i64, i64* %PC
  %139 = add i64 %138, 6
  %140 = load i64, i64* %PC
  %141 = add i64 %140, 6
  store i64 %141, i64* %PC
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %143 = load i8, i8* %142, align 1, !tbaa !2450
  %144 = icmp eq i8 %143, 0
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %146 = load i8, i8* %145, align 1, !tbaa !2451
  %147 = icmp ne i8 %146, 0
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %149 = load i8, i8* %148, align 1, !tbaa !2452
  %150 = icmp ne i8 %149, 0
  %151 = xor i1 %147, %150
  %152 = xor i1 %151, true
  %153 = and i1 %144, %152
  %154 = zext i1 %153 to i8
  store i8 %154, i8* %BRANCH_TAKEN, align 1, !tbaa !2453
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %156 = select i1 %153, i64 %137, i64 %139
  store i64 %156, i64* %155, align 8, !tbaa !2428
  %157 = load i8, i8* %BRANCH_TAKEN
  %158 = icmp eq i8 %157, 1
  br i1 %158, label %block_400618, label %block_400588

block_400618:                                     ; preds = %block_40057e
  %159 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %160 = load i64, i64* %RBP
  %161 = sub i64 %160, 16
  %162 = load i64, i64* %PC
  %163 = add i64 %162, 5
  store i64 %163, i64* %PC
  %164 = inttoptr i64 %161 to float*
  %165 = load float, float* %164
  %166 = bitcast i8* %159 to float*
  store float %165, float* %166, align 1, !tbaa !2432
  %167 = getelementptr inbounds i8, i8* %159, i64 4
  %168 = bitcast i8* %167 to float*
  store float 0.000000e+00, float* %168, align 1, !tbaa !2432
  %169 = getelementptr inbounds i8, i8* %159, i64 8
  %170 = bitcast i8* %169 to float*
  store float 0.000000e+00, float* %170, align 1, !tbaa !2432
  %171 = getelementptr inbounds i8, i8* %159, i64 12
  %172 = bitcast i8* %171 to float*
  store float 0.000000e+00, float* %172, align 1, !tbaa !2432
  %173 = load i64, i64* %PC
  %174 = add i64 %173, 1
  store i64 %174, i64* %PC
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %176 = load i64, i64* %175, align 8, !tbaa !2428
  %177 = add i64 %176, 8
  %178 = inttoptr i64 %176 to i64*
  %179 = load i64, i64* %178
  store i64 %179, i64* %RBP, align 8, !tbaa !2428
  store i64 %177, i64* %175, align 8, !tbaa !2428
  %180 = load i64, i64* %PC
  %181 = add i64 %180, 1
  store i64 %181, i64* %PC
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %184 = load i64, i64* %183, align 8, !tbaa !2428
  %185 = inttoptr i64 %184 to i64*
  %186 = load i64, i64* %185
  store i64 %186, i64* %182, align 8, !tbaa !2428
  %187 = add i64 %184, 8
  store i64 %187, i64* %183, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_4005b0:                                     ; preds = %block_400588
  %188 = load i64, i64* %RBP
  %189 = sub i64 %188, 8
  %190 = load i64, i64* %PC
  %191 = add i64 %190, 3
  store i64 %191, i64* %PC
  %192 = inttoptr i64 %189 to i32*
  %193 = load i32, i32* %192
  %194 = zext i32 %193 to i64
  store i64 %194, i64* %RAX, align 8, !tbaa !2428
  %195 = load i64, i64* %RAX
  %196 = load i64, i64* %PC
  %197 = add i64 %196, 3
  store i64 %197, i64* %PC
  %198 = and i64 3, %195
  %199 = trunc i64 %198 to i32
  store i64 %198, i64* %RAX, align 8, !tbaa !2428
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %200, align 1, !tbaa !2434
  %201 = and i32 %199, 255
  %202 = call i32 @llvm.ctpop.i32(i32 %201) #16
  %203 = trunc i32 %202 to i8
  %204 = and i8 %203, 1
  %205 = xor i8 %204, 1
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %205, i8* %206, align 1, !tbaa !2448
  %207 = icmp eq i32 %199, 0
  %208 = zext i1 %207 to i8
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %208, i8* %209, align 1, !tbaa !2450
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %210, align 1, !tbaa !2451
  %211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %211, align 1, !tbaa !2452
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %212, align 1, !tbaa !2449
  %213 = load i32, i32* %EAX
  %214 = zext i32 %213 to i64
  %215 = load i64, i64* %PC
  %216 = add i64 %215, 3
  store i64 %216, i64* %PC
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %217, align 1, !tbaa !2434
  %218 = and i32 %213, 255
  %219 = call i32 @llvm.ctpop.i32(i32 %218) #16
  %220 = trunc i32 %219 to i8
  %221 = and i8 %220, 1
  %222 = xor i8 %221, 1
  %223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %222, i8* %223, align 1, !tbaa !2448
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %224, align 1, !tbaa !2449
  %225 = icmp eq i32 %213, 0
  %226 = zext i1 %225 to i8
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %226, i8* %227, align 1, !tbaa !2450
  %228 = lshr i32 %213, 31
  %229 = trunc i32 %228 to i8
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %229, i8* %230, align 1, !tbaa !2451
  %231 = lshr i32 %213, 31
  %232 = xor i32 %228, %231
  %233 = add nuw nsw i32 %232, %231
  %234 = icmp eq i32 %233, 2
  %235 = zext i1 %234 to i8
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %235, i8* %236, align 1, !tbaa !2452
  %237 = load i64, i64* %PC
  %238 = add i64 %237, 41
  %239 = load i64, i64* %PC
  %240 = add i64 %239, 6
  %241 = load i64, i64* %PC
  %242 = add i64 %241, 6
  store i64 %242, i64* %PC
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %244 = load i8, i8* %243, align 1, !tbaa !2450
  %245 = icmp eq i8 %244, 0
  %246 = zext i1 %245 to i8
  store i8 %246, i8* %BRANCH_TAKEN, align 1, !tbaa !2453
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %248 = select i1 %245, i64 %238, i64 %240
  store i64 %248, i64* %247, align 8, !tbaa !2428
  %249 = load i8, i8* %BRANCH_TAKEN
  %250 = icmp eq i8 %249, 1
  %251 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %252 = load i64, i64* %RBP
  %253 = sub i64 %252, 16
  %254 = load i64, i64* %PC
  %255 = add i64 %254, 5
  store i64 %255, i64* %PC
  %256 = inttoptr i64 %253 to float*
  %257 = load float, float* %256
  %258 = bitcast i8* %251 to float*
  store float %257, float* %258, align 1, !tbaa !2432
  %259 = getelementptr inbounds i8, i8* %251, i64 4
  %260 = bitcast i8* %259 to float*
  store float 0.000000e+00, float* %260, align 1, !tbaa !2432
  %261 = getelementptr inbounds i8, i8* %251, i64 8
  %262 = bitcast i8* %261 to float*
  store float 0.000000e+00, float* %262, align 1, !tbaa !2432
  %263 = getelementptr inbounds i8, i8* %251, i64 12
  %264 = bitcast i8* %263 to float*
  store float 0.000000e+00, float* %264, align 1, !tbaa !2432
  %265 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %266 = load i64, i64* %RBP
  %267 = sub i64 %266, 20
  %268 = load i64, i64* %PC
  %269 = add i64 %268, 5
  store i64 %269, i64* %PC
  %270 = inttoptr i64 %267 to float*
  %271 = load float, float* %270
  %272 = bitcast i8* %265 to float*
  store float %271, float* %272, align 1, !tbaa !2432
  %273 = getelementptr inbounds i8, i8* %265, i64 4
  %274 = bitcast i8* %273 to float*
  store float 0.000000e+00, float* %274, align 1, !tbaa !2432
  %275 = getelementptr inbounds i8, i8* %265, i64 8
  %276 = bitcast i8* %275 to float*
  store float 0.000000e+00, float* %276, align 1, !tbaa !2432
  %277 = getelementptr inbounds i8, i8* %265, i64 12
  %278 = bitcast i8* %277 to float*
  store float 0.000000e+00, float* %278, align 1, !tbaa !2432
  %279 = load i64, i64* %RBP
  %280 = sub i64 %279, 12
  %281 = load i64, i64* %PC
  %282 = add i64 %281, 3
  store i64 %282, i64* %PC
  %283 = inttoptr i64 %280 to i32*
  %284 = load i32, i32* %283
  %285 = zext i32 %284 to i64
  store i64 %285, i64* %RAX, align 8, !tbaa !2428
  %286 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %287 = load i32, i32* %EAX
  %288 = zext i32 %287 to i64
  %289 = load i64, i64* %PC
  %290 = add i64 %289, 4
  store i64 %290, i64* %PC
  %291 = bitcast i8* %286 to <2 x i32>*
  %292 = load <2 x i32>, <2 x i32>* %291, align 1
  %293 = getelementptr inbounds i8, i8* %286, i64 8
  %294 = bitcast i8* %293 to <2 x i32>*
  %295 = load <2 x i32>, <2 x i32>* %294, align 1
  %296 = sitofp i32 %287 to float
  %297 = bitcast i8* %286 to float*
  store float %296, float* %297, align 1, !tbaa !2432
  %298 = extractelement <2 x i32> %292, i32 1
  %299 = getelementptr inbounds i8, i8* %286, i64 4
  %300 = bitcast i8* %299 to i32*
  store i32 %298, i32* %300, align 1, !tbaa !2432
  %301 = extractelement <2 x i32> %295, i32 0
  %302 = bitcast i8* %293 to i32*
  store i32 %301, i32* %302, align 1, !tbaa !2432
  %303 = extractelement <2 x i32> %295, i32 1
  %304 = getelementptr inbounds i8, i8* %286, i64 12
  %305 = bitcast i8* %304 to i32*
  store i32 %303, i32* %305, align 1, !tbaa !2432
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
  store float %320, float* %321, align 1, !tbaa !2432
  %322 = bitcast <2 x float> %312 to <2 x i32>
  %323 = extractelement <2 x i32> %322, i32 1
  %324 = getelementptr inbounds i8, i8* %306, i64 4
  %325 = bitcast i8* %324 to i32*
  store i32 %323, i32* %325, align 1, !tbaa !2432
  %326 = extractelement <2 x i32> %315, i32 0
  %327 = getelementptr inbounds i8, i8* %306, i64 8
  %328 = bitcast i8* %327 to i32*
  store i32 %326, i32* %328, align 1, !tbaa !2432
  %329 = extractelement <2 x i32> %315, i32 1
  %330 = getelementptr inbounds i8, i8* %306, i64 12
  %331 = bitcast i8* %330 to i32*
  store i32 %329, i32* %331, align 1, !tbaa !2432
  %332 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %333 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %334 = bitcast %union.vec128_t* %XMM1 to i8*
  %335 = load i64, i64* %PC
  %336 = add i64 %335, 4
  store i64 %336, i64* %PC
  br i1 %250, label %block_4005e2, label %block_4005bf

block_4005bf:                                     ; preds = %block_4005b0
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
  store float %346, float* %347, align 1, !tbaa !2432
  %348 = bitcast <2 x float> %338 to <2 x i32>
  %349 = extractelement <2 x i32> %348, i32 1
  %350 = getelementptr inbounds i8, i8* %332, i64 4
  %351 = bitcast i8* %350 to i32*
  store i32 %349, i32* %351, align 1, !tbaa !2432
  %352 = extractelement <2 x i32> %341, i32 0
  %353 = getelementptr inbounds i8, i8* %332, i64 8
  %354 = bitcast i8* %353 to i32*
  store i32 %352, i32* %354, align 1, !tbaa !2432
  %355 = extractelement <2 x i32> %341, i32 1
  %356 = getelementptr inbounds i8, i8* %332, i64 12
  %357 = bitcast i8* %356 to i32*
  store i32 %355, i32* %357, align 1, !tbaa !2432
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
  %368 = add i64 %367, 35
  %369 = load i64, i64* %PC
  %370 = add i64 %369, 5
  store i64 %370, i64* %PC
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %368, i64* %371, align 8, !tbaa !2428
  br label %block_400600

block_400588:                                     ; preds = %block_40057e
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
  %398 = call i32 @llvm.ctpop.i32(i32 %397) #16
  %399 = trunc i32 %398 to i8
  %400 = and i8 %399, 1
  %401 = xor i8 %400, 1
  %402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %401, i8* %402, align 1, !tbaa !2448
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %403, align 1, !tbaa !2449
  %404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %404, align 1, !tbaa !2450
  %405 = lshr i32 %390, 31
  %406 = trunc i32 %405 to i8
  %407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %406, i8* %407, align 1, !tbaa !2451
  %408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %395, i8* %408, align 1, !tbaa !2452
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
  store float %422, float* %423, align 1, !tbaa !2432
  %424 = getelementptr inbounds i8, i8* %416, i64 4
  %425 = bitcast i8* %424 to float*
  store float 0.000000e+00, float* %425, align 1, !tbaa !2432
  %426 = getelementptr inbounds i8, i8* %416, i64 8
  %427 = bitcast i8* %426 to float*
  store float 0.000000e+00, float* %427, align 1, !tbaa !2432
  %428 = getelementptr inbounds i8, i8* %416, i64 12
  %429 = bitcast i8* %428 to float*
  store float 0.000000e+00, float* %429, align 1, !tbaa !2432
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
  store float %444, float* %445, align 1, !tbaa !2432
  %446 = bitcast <2 x float> %437 to <2 x i32>
  %447 = extractelement <2 x i32> %446, i32 1
  %448 = getelementptr inbounds i8, i8* %430, i64 4
  %449 = bitcast i8* %448 to i32*
  store i32 %447, i32* %449, align 1, !tbaa !2432
  %450 = extractelement <2 x i32> %440, i32 0
  %451 = getelementptr inbounds i8, i8* %430, i64 8
  %452 = bitcast i8* %451 to i32*
  store i32 %450, i32* %452, align 1, !tbaa !2432
  %453 = extractelement <2 x i32> %440, i32 1
  %454 = getelementptr inbounds i8, i8* %430, i64 12
  %455 = bitcast i8* %454 to i32*
  store i32 %453, i32* %455, align 1, !tbaa !2432
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
  %479 = call i32 @llvm.ctpop.i32(i32 %478) #16
  %480 = trunc i32 %479 to i8
  %481 = and i8 %480, 1
  %482 = xor i8 %481, 1
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %482, i8* %483, align 1, !tbaa !2448
  %484 = icmp eq i32 %476, 0
  %485 = zext i1 %484 to i8
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %485, i8* %486, align 1, !tbaa !2450
  %487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %487, align 1, !tbaa !2451
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %488, align 1, !tbaa !2452
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %489, align 1, !tbaa !2449
  %490 = load i32, i32* %EAX
  %491 = zext i32 %490 to i64
  %492 = load i64, i64* %PC
  %493 = add i64 %492, 3
  store i64 %493, i64* %PC
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %494, align 1, !tbaa !2434
  %495 = and i32 %490, 255
  %496 = call i32 @llvm.ctpop.i32(i32 %495) #16
  %497 = trunc i32 %496 to i8
  %498 = and i8 %497, 1
  %499 = xor i8 %498, 1
  %500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %499, i8* %500, align 1, !tbaa !2448
  %501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %501, align 1, !tbaa !2449
  %502 = icmp eq i32 %490, 0
  %503 = zext i1 %502 to i8
  %504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %503, i8* %504, align 1, !tbaa !2450
  %505 = lshr i32 %490, 31
  %506 = trunc i32 %505 to i8
  %507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %506, i8* %507, align 1, !tbaa !2451
  %508 = lshr i32 %490, 31
  %509 = xor i32 %505, %508
  %510 = add nuw nsw i32 %509, %508
  %511 = icmp eq i32 %510, 2
  %512 = zext i1 %511 to i8
  %513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %512, i8* %513, align 1, !tbaa !2452
  %514 = load i64, i64* %PC
  %515 = add i64 %514, 91
  %516 = load i64, i64* %PC
  %517 = add i64 %516, 6
  %518 = load i64, i64* %PC
  %519 = add i64 %518, 6
  store i64 %519, i64* %PC
  %520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %521 = load i8, i8* %520, align 1, !tbaa !2450
  %522 = icmp eq i8 %521, 0
  %523 = zext i1 %522 to i8
  store i8 %523, i8* %BRANCH_TAKEN, align 1, !tbaa !2453
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %525 = select i1 %522, i64 %515, i64 %517
  store i64 %525, i64* %524, align 8, !tbaa !2428
  %526 = load i8, i8* %BRANCH_TAKEN
  %527 = icmp eq i8 %526, 1
  br i1 %527, label %block_400605, label %block_4005b0

block_400605:                                     ; preds = %block_400600, %block_400588
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_400588 ], [ %MEMORY.2, %block_400600 ]
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
  %552 = call i32 @llvm.ctpop.i32(i32 %551) #16
  %553 = trunc i32 %552 to i8
  %554 = and i8 %553, 1
  %555 = xor i8 %554, 1
  %556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %555, i8* %556, align 1, !tbaa !2448
  %557 = xor i64 1, %540
  %558 = trunc i64 %557 to i32
  %559 = xor i32 %558, %544
  %560 = lshr i32 %559, 4
  %561 = trunc i32 %560 to i8
  %562 = and i8 %561, 1
  %563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %562, i8* %563, align 1, !tbaa !2449
  %564 = icmp eq i32 %544, 0
  %565 = zext i1 %564 to i8
  %566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %565, i8* %566, align 1, !tbaa !2450
  %567 = lshr i32 %544, 31
  %568 = trunc i32 %567 to i8
  %569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %568, i8* %569, align 1, !tbaa !2451
  %570 = lshr i32 %543, 31
  %571 = xor i32 %567, %570
  %572 = add nuw nsw i32 %571, %567
  %573 = icmp eq i32 %572, 2
  %574 = zext i1 %573 to i8
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %574, i8* %575, align 1, !tbaa !2452
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
  %584 = sub i64 %583, 149
  %585 = load i64, i64* %PC
  %586 = add i64 %585, 5
  store i64 %586, i64* %PC
  %587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %584, i64* %587, align 8, !tbaa !2428
  br label %block_40057e

block_4005e2:                                     ; preds = %block_4005b0
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
  store float %597, float* %598, align 1, !tbaa !2432
  %599 = bitcast <2 x float> %589 to <2 x i32>
  %600 = extractelement <2 x i32> %599, i32 1
  %601 = getelementptr inbounds i8, i8* %332, i64 4
  %602 = bitcast i8* %601 to i32*
  store i32 %600, i32* %602, align 1, !tbaa !2432
  %603 = extractelement <2 x i32> %592, i32 0
  %604 = getelementptr inbounds i8, i8* %332, i64 8
  %605 = bitcast i8* %604 to i32*
  store i32 %603, i32* %605, align 1, !tbaa !2432
  %606 = extractelement <2 x i32> %592, i32 1
  %607 = getelementptr inbounds i8, i8* %332, i64 12
  %608 = bitcast i8* %607 to i32*
  store i32 %606, i32* %608, align 1, !tbaa !2432
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
  br label %block_400600

block_400600:                                     ; preds = %block_4005e2, %block_4005bf
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.0, %block_4005e2 ], [ %MEMORY.0, %block_4005bf ]
  %618 = load i64, i64* %PC
  %619 = add i64 %618, 5
  %620 = load i64, i64* %PC
  %621 = add i64 %620, 5
  store i64 %621, i64* %PC
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %619, i64* %622, align 8, !tbaa !2428
  br label %block_400605
}

; Function Attrs: noinline
define %struct.Memory* @sub_400ed4__term_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400ed4:
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
  %18 = call i32 @llvm.ctpop.i32(i32 %17) #16
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1, !tbaa !2448
  %23 = xor i64 8, %9
  %24 = xor i64 %23, %12
  %25 = lshr i64 %24, 4
  %26 = trunc i64 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1, !tbaa !2449
  %29 = icmp eq i64 %12, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1, !tbaa !2450
  %32 = lshr i64 %12, 63
  %33 = trunc i64 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1, !tbaa !2451
  %35 = lshr i64 %9, 63
  %36 = xor i64 %32, %35
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1, !tbaa !2452
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
  %52 = call i32 @llvm.ctpop.i32(i32 %51) #16
  %53 = trunc i32 %52 to i8
  %54 = and i8 %53, 1
  %55 = xor i8 %54, 1
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %55, i8* %56, align 1, !tbaa !2448
  %57 = xor i64 8, %41
  %58 = xor i64 %57, %44
  %59 = lshr i64 %58, 4
  %60 = trunc i64 %59 to i8
  %61 = and i8 %60, 1
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %61, i8* %62, align 1, !tbaa !2449
  %63 = icmp eq i64 %44, 0
  %64 = zext i1 %63 to i8
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %64, i8* %65, align 1, !tbaa !2450
  %66 = lshr i64 %44, 63
  %67 = trunc i64 %66 to i8
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %67, i8* %68, align 1, !tbaa !2451
  %69 = lshr i64 %41, 63
  %70 = xor i64 %66, %69
  %71 = add nuw nsw i64 %70, %66
  %72 = icmp eq i64 %71, 2
  %73 = zext i1 %72 to i8
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %73, i8* %74, align 1, !tbaa !2452
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
define %struct.Memory* @sub_400a20_Fft(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  %118 = load i32, i32* %117, align 8, !tbaa !2456
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
  %134 = load i32, i32* %133, align 8, !tbaa !2456
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %137 = bitcast %union.anon* %136 to i32*
  %138 = load i32, i32* %137, align 8, !tbaa !2456
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

; <label>:148:                                    ; preds = %block_400a20
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %150 = load i64, i64* %149, align 8, !tbaa !2428
  %151 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %150, %struct.Memory* %2) #17
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:152:                                    ; preds = %block_400a20
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
  store i8 0, i8* %159, align 1, !tbaa !2448
  %160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %160, align 1, !tbaa !2449
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %161, align 1, !tbaa !2450
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %162, align 1, !tbaa !2451
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %163, align 1, !tbaa !2452
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
  br label %block_400a55

block_400a55:                                     ; preds = %block_400c3e, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit
  %MEMORY.0 = phi %struct.Memory* [ %164, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ], [ %MEMORY.1, %block_400c3e ]
  %177 = load i64, i64* %RBP
  %178 = sub i64 %177, 48
  %179 = load i64, i64* %PC
  %180 = add i64 %179, 7
  store i64 %180, i64* %PC
  %181 = inttoptr i64 %178 to i32*
  store i32 0, i32* %181
  %182 = load i64, i64* %RBP
  %183 = sub i64 %182, 52
  %184 = load i64, i64* %PC
  %185 = add i64 %184, 3
  store i64 %185, i64* %PC
  %186 = inttoptr i64 %183 to i32*
  %187 = load i32, i32* %186
  %188 = zext i32 %187 to i64
  store i64 %188, i64* %RAX, align 8, !tbaa !2428
  %189 = load i64, i64* %RBP
  %190 = sub i64 %189, 44
  %191 = load i32, i32* %EAX
  %192 = zext i32 %191 to i64
  %193 = load i64, i64* %PC
  %194 = add i64 %193, 3
  store i64 %194, i64* %PC
  %195 = inttoptr i64 %190 to i32*
  store i32 %191, i32* %195
  %196 = load i64, i64* %RBP
  %197 = sub i64 %196, 40
  %198 = load i64, i64* %PC
  %199 = add i64 %198, 7
  store i64 %199, i64* %PC
  %200 = inttoptr i64 %197 to i32*
  store i32 1, i32* %200
  br label %block_400a69

block_400c53:                                     ; preds = %block_400c3e
  %201 = load i64, i64* %RBP
  %202 = sub i64 %201, 40
  %203 = load i64, i64* %PC
  %204 = add i64 %203, 7
  store i64 %204, i64* %PC
  %205 = inttoptr i64 %202 to i32*
  store i32 1, i32* %205
  br label %block_400c5a

block_400c11:                                     ; preds = %block_400c0a, %block_400c11
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.4, %block_400c0a ], [ %MEMORY.1, %block_400c11 ]
  %206 = load i64, i64* %RBP
  %207 = sub i64 %206, 16
  %208 = load i64, i64* %PC
  %209 = add i64 %208, 4
  store i64 %209, i64* %PC
  %210 = inttoptr i64 %207 to i64*
  %211 = load i64, i64* %210
  store i64 %211, i64* %RAX, align 8, !tbaa !2428
  %212 = load i64, i64* %RBP
  %213 = sub i64 %212, 60
  %214 = load i64, i64* %PC
  %215 = add i64 %214, 4
  store i64 %215, i64* %PC
  %216 = inttoptr i64 %213 to i32*
  %217 = load i32, i32* %216
  %218 = sext i32 %217 to i64
  store i64 %218, i64* %RCX, align 8, !tbaa !2428
  %219 = load i64, i64* %RBP
  %220 = sub i64 %219, 24
  %221 = load i64, i64* %PC
  %222 = add i64 %221, 4
  store i64 %222, i64* %PC
  %223 = inttoptr i64 %220 to i64*
  %224 = load i64, i64* %223
  store i64 %224, i64* %RDX, align 8, !tbaa !2428
  %225 = load i64, i64* %RBP
  %226 = sub i64 %225, 60
  %227 = load i64, i64* %PC
  %228 = add i64 %227, 4
  store i64 %228, i64* %PC
  %229 = inttoptr i64 %226 to i32*
  %230 = load i32, i32* %229
  %231 = sext i32 %230 to i64
  store i64 %231, i64* %RSI, align 8, !tbaa !2428
  %232 = load i64, i64* %RDX
  %233 = load i64, i64* %RSI
  %234 = mul i64 %233, 8
  %235 = add i64 %234, %232
  %236 = load i64, i64* %PC
  %237 = add i64 %236, 4
  store i64 %237, i64* %PC
  %238 = inttoptr i64 %235 to i64*
  %239 = load i64, i64* %238
  store i64 %239, i64* %RDX, align 8, !tbaa !2428
  %240 = load i64, i64* %RAX
  %241 = load i64, i64* %RCX
  %242 = mul i64 %241, 8
  %243 = add i64 %242, %240
  %244 = load i64, i64* %RDX
  %245 = load i64, i64* %PC
  %246 = add i64 %245, 4
  store i64 %246, i64* %PC
  %247 = inttoptr i64 %243 to i64*
  store i64 %244, i64* %247
  %248 = load i64, i64* %RBP
  %249 = sub i64 %248, 60
  %250 = load i64, i64* %PC
  %251 = add i64 %250, 3
  store i64 %251, i64* %PC
  %252 = inttoptr i64 %249 to i32*
  %253 = load i32, i32* %252
  %254 = zext i32 %253 to i64
  store i64 %254, i64* %RDI, align 8, !tbaa !2428
  %255 = load i64, i64* %RDI
  %256 = load i64, i64* %PC
  %257 = add i64 %256, 3
  store i64 %257, i64* %PC
  %258 = trunc i64 %255 to i32
  %259 = add i32 1, %258
  %260 = zext i32 %259 to i64
  store i64 %260, i64* %RDI, align 8, !tbaa !2428
  %261 = icmp ult i32 %259, %258
  %262 = icmp ult i32 %259, 1
  %263 = or i1 %261, %262
  %264 = zext i1 %263 to i8
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %264, i8* %265, align 1, !tbaa !2434
  %266 = and i32 %259, 255
  %267 = call i32 @llvm.ctpop.i32(i32 %266) #16
  %268 = trunc i32 %267 to i8
  %269 = and i8 %268, 1
  %270 = xor i8 %269, 1
  %271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %270, i8* %271, align 1, !tbaa !2448
  %272 = xor i64 1, %255
  %273 = trunc i64 %272 to i32
  %274 = xor i32 %273, %259
  %275 = lshr i32 %274, 4
  %276 = trunc i32 %275 to i8
  %277 = and i8 %276, 1
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %277, i8* %278, align 1, !tbaa !2449
  %279 = icmp eq i32 %259, 0
  %280 = zext i1 %279 to i8
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %280, i8* %281, align 1, !tbaa !2450
  %282 = lshr i32 %259, 31
  %283 = trunc i32 %282 to i8
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %283, i8* %284, align 1, !tbaa !2451
  %285 = lshr i32 %258, 31
  %286 = xor i32 %282, %285
  %287 = add nuw nsw i32 %286, %282
  %288 = icmp eq i32 %287, 2
  %289 = zext i1 %288 to i8
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %289, i8* %290, align 1, !tbaa !2452
  %291 = load i64, i64* %RBP
  %292 = sub i64 %291, 60
  %293 = load i32, i32* %EDI
  %294 = zext i32 %293 to i64
  %295 = load i64, i64* %PC
  %296 = add i64 %295, 3
  store i64 %296, i64* %PC
  %297 = inttoptr i64 %292 to i32*
  store i32 %293, i32* %297
  %298 = load i64, i64* %RBP
  %299 = sub i64 %298, 60
  %300 = load i64, i64* %PC
  %301 = add i64 %300, 3
  store i64 %301, i64* %PC
  %302 = inttoptr i64 %299 to i32*
  %303 = load i32, i32* %302
  %304 = zext i32 %303 to i64
  store i64 %304, i64* %RAX, align 8, !tbaa !2428
  %305 = load i32, i32* %EAX
  %306 = zext i32 %305 to i64
  %307 = load i64, i64* %RBP
  %308 = sub i64 %307, 4
  %309 = load i64, i64* %PC
  %310 = add i64 %309, 3
  store i64 %310, i64* %PC
  %311 = inttoptr i64 %308 to i32*
  %312 = load i32, i32* %311
  %313 = sub i32 %305, %312
  %314 = icmp ult i32 %305, %312
  %315 = zext i1 %314 to i8
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %315, i8* %316, align 1, !tbaa !2434
  %317 = and i32 %313, 255
  %318 = call i32 @llvm.ctpop.i32(i32 %317) #16
  %319 = trunc i32 %318 to i8
  %320 = and i8 %319, 1
  %321 = xor i8 %320, 1
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %321, i8* %322, align 1, !tbaa !2448
  %323 = xor i32 %312, %305
  %324 = xor i32 %323, %313
  %325 = lshr i32 %324, 4
  %326 = trunc i32 %325 to i8
  %327 = and i8 %326, 1
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %327, i8* %328, align 1, !tbaa !2449
  %329 = icmp eq i32 %313, 0
  %330 = zext i1 %329 to i8
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %330, i8* %331, align 1, !tbaa !2450
  %332 = lshr i32 %313, 31
  %333 = trunc i32 %332 to i8
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %333, i8* %334, align 1, !tbaa !2451
  %335 = lshr i32 %305, 31
  %336 = lshr i32 %312, 31
  %337 = xor i32 %336, %335
  %338 = xor i32 %332, %335
  %339 = add nuw nsw i32 %338, %337
  %340 = icmp eq i32 %339, 2
  %341 = zext i1 %340 to i8
  %342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %341, i8* %342, align 1, !tbaa !2452
  %343 = load i64, i64* %PC
  %344 = sub i64 %343, 39
  %345 = load i64, i64* %PC
  %346 = add i64 %345, 6
  %347 = load i64, i64* %PC
  %348 = add i64 %347, 6
  store i64 %348, i64* %PC
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %350 = load i8, i8* %349, align 1, !tbaa !2450
  %351 = icmp ne i8 %350, 0
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %353 = load i8, i8* %352, align 1, !tbaa !2451
  %354 = icmp ne i8 %353, 0
  %355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %356 = load i8, i8* %355, align 1, !tbaa !2452
  %357 = icmp ne i8 %356, 0
  %358 = xor i1 %354, %357
  %359 = or i1 %351, %358
  %360 = zext i1 %359 to i8
  store i8 %360, i8* %BRANCH_TAKEN, align 1, !tbaa !2453
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %362 = select i1 %359, i64 %344, i64 %346
  store i64 %362, i64* %361, align 8, !tbaa !2428
  %363 = load i8, i8* %BRANCH_TAKEN
  %364 = icmp eq i8 %363, 1
  br i1 %364, label %block_400c11, label %block_400c3e

block_400c3e:                                     ; preds = %block_400c11
  %365 = load i64, i64* %RBP
  %366 = sub i64 %365, 52
  %367 = load i64, i64* %PC
  %368 = add i64 %367, 3
  store i64 %368, i64* %PC
  %369 = inttoptr i64 %366 to i32*
  %370 = load i32, i32* %369
  %371 = zext i32 %370 to i64
  store i64 %371, i64* %RAX, align 8, !tbaa !2428
  %372 = load i64, i64* %RAX
  %373 = load i64, i64* %RBP
  %374 = sub i64 %373, 52
  %375 = load i64, i64* %PC
  %376 = add i64 %375, 3
  store i64 %376, i64* %PC
  %377 = trunc i64 %372 to i32
  %378 = inttoptr i64 %374 to i32*
  %379 = load i32, i32* %378
  %380 = add i32 %379, %377
  %381 = zext i32 %380 to i64
  store i64 %381, i64* %RAX, align 8, !tbaa !2428
  %382 = icmp ult i32 %380, %377
  %383 = icmp ult i32 %380, %379
  %384 = or i1 %382, %383
  %385 = zext i1 %384 to i8
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %385, i8* %386, align 1, !tbaa !2434
  %387 = and i32 %380, 255
  %388 = call i32 @llvm.ctpop.i32(i32 %387) #16
  %389 = trunc i32 %388 to i8
  %390 = and i8 %389, 1
  %391 = xor i8 %390, 1
  %392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %391, i8* %392, align 1, !tbaa !2448
  %393 = xor i32 %379, %377
  %394 = xor i32 %393, %380
  %395 = lshr i32 %394, 4
  %396 = trunc i32 %395 to i8
  %397 = and i8 %396, 1
  %398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %397, i8* %398, align 1, !tbaa !2449
  %399 = icmp eq i32 %380, 0
  %400 = zext i1 %399 to i8
  %401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %400, i8* %401, align 1, !tbaa !2450
  %402 = lshr i32 %380, 31
  %403 = trunc i32 %402 to i8
  %404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %403, i8* %404, align 1, !tbaa !2451
  %405 = lshr i32 %377, 31
  %406 = lshr i32 %379, 31
  %407 = xor i32 %402, %405
  %408 = xor i32 %402, %406
  %409 = add nuw nsw i32 %407, %408
  %410 = icmp eq i32 %409, 2
  %411 = zext i1 %410 to i8
  %412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %411, i8* %412, align 1, !tbaa !2452
  %413 = load i64, i64* %RBP
  %414 = sub i64 %413, 52
  %415 = load i32, i32* %EAX
  %416 = zext i32 %415 to i64
  %417 = load i64, i64* %PC
  %418 = add i64 %417, 3
  store i64 %418, i64* %PC
  %419 = inttoptr i64 %414 to i32*
  store i32 %415, i32* %419
  %420 = load i64, i64* %RBP
  %421 = sub i64 %420, 52
  %422 = load i64, i64* %PC
  %423 = add i64 %422, 3
  store i64 %423, i64* %PC
  %424 = inttoptr i64 %421 to i32*
  %425 = load i32, i32* %424
  %426 = zext i32 %425 to i64
  store i64 %426, i64* %RAX, align 8, !tbaa !2428
  %427 = load i32, i32* %EAX
  %428 = zext i32 %427 to i64
  %429 = load i64, i64* %RBP
  %430 = sub i64 %429, 56
  %431 = load i64, i64* %PC
  %432 = add i64 %431, 3
  store i64 %432, i64* %PC
  %433 = inttoptr i64 %430 to i32*
  %434 = load i32, i32* %433
  %435 = sub i32 %427, %434
  %436 = icmp ult i32 %427, %434
  %437 = zext i1 %436 to i8
  %438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %437, i8* %438, align 1, !tbaa !2434
  %439 = and i32 %435, 255
  %440 = call i32 @llvm.ctpop.i32(i32 %439) #16
  %441 = trunc i32 %440 to i8
  %442 = and i8 %441, 1
  %443 = xor i8 %442, 1
  %444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %443, i8* %444, align 1, !tbaa !2448
  %445 = xor i32 %434, %427
  %446 = xor i32 %445, %435
  %447 = lshr i32 %446, 4
  %448 = trunc i32 %447 to i8
  %449 = and i8 %448, 1
  %450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %449, i8* %450, align 1, !tbaa !2449
  %451 = icmp eq i32 %435, 0
  %452 = zext i1 %451 to i8
  %453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %452, i8* %453, align 1, !tbaa !2450
  %454 = lshr i32 %435, 31
  %455 = trunc i32 %454 to i8
  %456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %455, i8* %456, align 1, !tbaa !2451
  %457 = lshr i32 %427, 31
  %458 = lshr i32 %434, 31
  %459 = xor i32 %458, %457
  %460 = xor i32 %454, %457
  %461 = add nuw nsw i32 %460, %459
  %462 = icmp eq i32 %461, 2
  %463 = zext i1 %462 to i8
  %464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %463, i8* %464, align 1, !tbaa !2452
  %465 = load i64, i64* %PC
  %466 = sub i64 %465, 504
  %467 = load i64, i64* %PC
  %468 = add i64 %467, 6
  %469 = load i64, i64* %PC
  %470 = add i64 %469, 6
  store i64 %470, i64* %PC
  %471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %472 = load i8, i8* %471, align 1, !tbaa !2450
  %473 = icmp ne i8 %472, 0
  %474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %475 = load i8, i8* %474, align 1, !tbaa !2451
  %476 = icmp ne i8 %475, 0
  %477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %478 = load i8, i8* %477, align 1, !tbaa !2452
  %479 = icmp ne i8 %478, 0
  %480 = xor i1 %476, %479
  %481 = or i1 %473, %480
  %482 = zext i1 %481 to i8
  store i8 %482, i8* %BRANCH_TAKEN, align 1, !tbaa !2453
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %484 = select i1 %481, i64 %466, i64 %468
  store i64 %484, i64* %483, align 8, !tbaa !2428
  %485 = load i8, i8* %BRANCH_TAKEN
  %486 = icmp eq i8 %485, 1
  br i1 %486, label %block_400a55, label %block_400c53

block_400c0a:                                     ; preds = %block_400bef
  %487 = load i64, i64* %RBP
  %488 = sub i64 %487, 60
  %489 = load i64, i64* %PC
  %490 = add i64 %489, 7
  store i64 %490, i64* %PC
  %491 = inttoptr i64 %488 to i32*
  store i32 1, i32* %491
  br label %block_400c11

block_400bef:                                     ; preds = %block_400a6e
  %492 = load i64, i64* %RBP
  %493 = sub i64 %492, 44
  %494 = load i64, i64* %PC
  %495 = add i64 %494, 3
  store i64 %495, i64* %PC
  %496 = inttoptr i64 %493 to i32*
  %497 = load i32, i32* %496
  %498 = zext i32 %497 to i64
  store i64 %498, i64* %RAX, align 8, !tbaa !2428
  %499 = load i64, i64* %RBP
  %500 = sub i64 %499, 48
  %501 = load i32, i32* %EAX
  %502 = zext i32 %501 to i64
  %503 = load i64, i64* %PC
  %504 = add i64 %503, 3
  store i64 %504, i64* %PC
  %505 = inttoptr i64 %500 to i32*
  store i32 %501, i32* %505
  %506 = load i64, i64* %RBP
  %507 = sub i64 %506, 48
  %508 = load i64, i64* %PC
  %509 = add i64 %508, 3
  store i64 %509, i64* %PC
  %510 = inttoptr i64 %507 to i32*
  %511 = load i32, i32* %510
  %512 = zext i32 %511 to i64
  store i64 %512, i64* %RAX, align 8, !tbaa !2428
  %513 = load i64, i64* %RAX
  %514 = load i64, i64* %RBP
  %515 = sub i64 %514, 52
  %516 = load i64, i64* %PC
  %517 = add i64 %516, 3
  store i64 %517, i64* %PC
  %518 = trunc i64 %513 to i32
  %519 = inttoptr i64 %515 to i32*
  %520 = load i32, i32* %519
  %521 = add i32 %520, %518
  %522 = zext i32 %521 to i64
  store i64 %522, i64* %RAX, align 8, !tbaa !2428
  %523 = icmp ult i32 %521, %518
  %524 = icmp ult i32 %521, %520
  %525 = or i1 %523, %524
  %526 = zext i1 %525 to i8
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %526, i8* %527, align 1, !tbaa !2434
  %528 = and i32 %521, 255
  %529 = call i32 @llvm.ctpop.i32(i32 %528) #16
  %530 = trunc i32 %529 to i8
  %531 = and i8 %530, 1
  %532 = xor i8 %531, 1
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %532, i8* %533, align 1, !tbaa !2448
  %534 = xor i32 %520, %518
  %535 = xor i32 %534, %521
  %536 = lshr i32 %535, 4
  %537 = trunc i32 %536 to i8
  %538 = and i8 %537, 1
  %539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %538, i8* %539, align 1, !tbaa !2449
  %540 = icmp eq i32 %521, 0
  %541 = zext i1 %540 to i8
  %542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %541, i8* %542, align 1, !tbaa !2450
  %543 = lshr i32 %521, 31
  %544 = trunc i32 %543 to i8
  %545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %544, i8* %545, align 1, !tbaa !2451
  %546 = lshr i32 %518, 31
  %547 = lshr i32 %520, 31
  %548 = xor i32 %543, %546
  %549 = xor i32 %543, %547
  %550 = add nuw nsw i32 %548, %549
  %551 = icmp eq i32 %550, 2
  %552 = zext i1 %551 to i8
  %553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %552, i8* %553, align 1, !tbaa !2452
  %554 = load i64, i64* %RBP
  %555 = sub i64 %554, 44
  %556 = load i32, i32* %EAX
  %557 = zext i32 %556 to i64
  %558 = load i64, i64* %PC
  %559 = add i64 %558, 3
  store i64 %559, i64* %PC
  %560 = inttoptr i64 %555 to i32*
  store i32 %556, i32* %560
  %561 = load i64, i64* %RBP
  %562 = sub i64 %561, 44
  %563 = load i64, i64* %PC
  %564 = add i64 %563, 3
  store i64 %564, i64* %PC
  %565 = inttoptr i64 %562 to i32*
  %566 = load i32, i32* %565
  %567 = zext i32 %566 to i64
  store i64 %567, i64* %RAX, align 8, !tbaa !2428
  %568 = load i32, i32* %EAX
  %569 = zext i32 %568 to i64
  %570 = load i64, i64* %RBP
  %571 = sub i64 %570, 56
  %572 = load i64, i64* %PC
  %573 = add i64 %572, 3
  store i64 %573, i64* %PC
  %574 = inttoptr i64 %571 to i32*
  %575 = load i32, i32* %574
  %576 = sub i32 %568, %575
  %577 = icmp ult i32 %568, %575
  %578 = zext i1 %577 to i8
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %578, i8* %579, align 1, !tbaa !2434
  %580 = and i32 %576, 255
  %581 = call i32 @llvm.ctpop.i32(i32 %580) #16
  %582 = trunc i32 %581 to i8
  %583 = and i8 %582, 1
  %584 = xor i8 %583, 1
  %585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %584, i8* %585, align 1, !tbaa !2448
  %586 = xor i32 %575, %568
  %587 = xor i32 %586, %576
  %588 = lshr i32 %587, 4
  %589 = trunc i32 %588 to i8
  %590 = and i8 %589, 1
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %590, i8* %591, align 1, !tbaa !2449
  %592 = icmp eq i32 %576, 0
  %593 = zext i1 %592 to i8
  %594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %593, i8* %594, align 1, !tbaa !2450
  %595 = lshr i32 %576, 31
  %596 = trunc i32 %595 to i8
  %597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %596, i8* %597, align 1, !tbaa !2451
  %598 = lshr i32 %568, 31
  %599 = lshr i32 %575, 31
  %600 = xor i32 %599, %598
  %601 = xor i32 %595, %598
  %602 = add nuw nsw i32 %601, %600
  %603 = icmp eq i32 %602, 2
  %604 = zext i1 %603 to i8
  %605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %604, i8* %605, align 1, !tbaa !2452
  %606 = load i64, i64* %PC
  %607 = sub i64 %606, 411
  %608 = load i64, i64* %PC
  %609 = add i64 %608, 6
  %610 = load i64, i64* %PC
  %611 = add i64 %610, 6
  store i64 %611, i64* %PC
  %612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %613 = load i8, i8* %612, align 1, !tbaa !2450
  %614 = icmp ne i8 %613, 0
  %615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %616 = load i8, i8* %615, align 1, !tbaa !2451
  %617 = icmp ne i8 %616, 0
  %618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %619 = load i8, i8* %618, align 1, !tbaa !2452
  %620 = icmp ne i8 %619, 0
  %621 = xor i1 %617, %620
  %622 = or i1 %614, %621
  %623 = zext i1 %622 to i8
  store i8 %623, i8* %BRANCH_TAKEN, align 1, !tbaa !2453
  %624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %625 = select i1 %622, i64 %607, i64 %609
  store i64 %625, i64* %624, align 8, !tbaa !2428
  %626 = load i8, i8* %BRANCH_TAKEN
  %627 = icmp eq i8 %626, 1
  br i1 %627, label %block_400a69, label %block_400c0a

block_400a69:                                     ; preds = %block_400bef, %block_400a55
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.0, %block_400a55 ], [ %MEMORY.4, %block_400bef ]
  %628 = load i64, i64* %PC
  %629 = add i64 %628, 5
  %630 = load i64, i64* %PC
  %631 = add i64 %630, 5
  store i64 %631, i64* %PC
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %629, i64* %632, align 8, !tbaa !2428
  br label %block_400a6e

block_400c66:                                     ; preds = %block_400c5a
  %633 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %634 = load i64, i64* %RBP
  %635 = sub i64 %634, 36
  %636 = load i64, i64* %PC
  %637 = add i64 %636, 5
  store i64 %637, i64* %PC
  %638 = inttoptr i64 %635 to float*
  %639 = load float, float* %638
  %640 = bitcast i8* %633 to float*
  store float %639, float* %640, align 1, !tbaa !2432
  %641 = getelementptr inbounds i8, i8* %633, i64 4
  %642 = bitcast i8* %641 to float*
  store float 0.000000e+00, float* %642, align 1, !tbaa !2432
  %643 = getelementptr inbounds i8, i8* %633, i64 8
  %644 = bitcast i8* %643 to float*
  store float 0.000000e+00, float* %644, align 1, !tbaa !2432
  %645 = getelementptr inbounds i8, i8* %633, i64 12
  %646 = bitcast i8* %645 to float*
  store float 0.000000e+00, float* %646, align 1, !tbaa !2432
  %647 = load i64, i64* %RBP
  %648 = sub i64 %647, 16
  %649 = load i64, i64* %PC
  %650 = add i64 %649, 4
  store i64 %650, i64* %PC
  %651 = inttoptr i64 %648 to i64*
  %652 = load i64, i64* %651
  store i64 %652, i64* %RAX, align 8, !tbaa !2428
  %653 = load i64, i64* %RBP
  %654 = sub i64 %653, 40
  %655 = load i64, i64* %PC
  %656 = add i64 %655, 4
  store i64 %656, i64* %PC
  %657 = inttoptr i64 %654 to i32*
  %658 = load i32, i32* %657
  %659 = sext i32 %658 to i64
  store i64 %659, i64* %RCX, align 8, !tbaa !2428
  %660 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %661 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %662 = load i64, i64* %RAX
  %663 = load i64, i64* %RCX
  %664 = mul i64 %663, 8
  %665 = add i64 %664, %662
  %666 = load i64, i64* %PC
  %667 = add i64 %666, 5
  store i64 %667, i64* %PC
  %668 = bitcast i8* %661 to <2 x float>*
  %669 = load <2 x float>, <2 x float>* %668, align 1
  %670 = getelementptr inbounds i8, i8* %661, i64 8
  %671 = bitcast i8* %670 to <2 x i32>*
  %672 = load <2 x i32>, <2 x i32>* %671, align 1
  %673 = inttoptr i64 %665 to float*
  %674 = load float, float* %673
  %675 = extractelement <2 x float> %669, i32 0
  %676 = fmul float %675, %674
  %677 = bitcast i8* %660 to float*
  store float %676, float* %677, align 1, !tbaa !2432
  %678 = bitcast <2 x float> %669 to <2 x i32>
  %679 = extractelement <2 x i32> %678, i32 1
  %680 = getelementptr inbounds i8, i8* %660, i64 4
  %681 = bitcast i8* %680 to i32*
  store i32 %679, i32* %681, align 1, !tbaa !2432
  %682 = extractelement <2 x i32> %672, i32 0
  %683 = getelementptr inbounds i8, i8* %660, i64 8
  %684 = bitcast i8* %683 to i32*
  store i32 %682, i32* %684, align 1, !tbaa !2432
  %685 = extractelement <2 x i32> %672, i32 1
  %686 = getelementptr inbounds i8, i8* %660, i64 12
  %687 = bitcast i8* %686 to i32*
  store i32 %685, i32* %687, align 1, !tbaa !2432
  %688 = load i64, i64* %RBP
  %689 = sub i64 %688, 16
  %690 = load i64, i64* %PC
  %691 = add i64 %690, 4
  store i64 %691, i64* %PC
  %692 = inttoptr i64 %689 to i64*
  %693 = load i64, i64* %692
  store i64 %693, i64* %RAX, align 8, !tbaa !2428
  %694 = load i64, i64* %RBP
  %695 = sub i64 %694, 40
  %696 = load i64, i64* %PC
  %697 = add i64 %696, 4
  store i64 %697, i64* %PC
  %698 = inttoptr i64 %695 to i32*
  %699 = load i32, i32* %698
  %700 = sext i32 %699 to i64
  store i64 %700, i64* %RCX, align 8, !tbaa !2428
  %701 = load i64, i64* %RAX
  %702 = load i64, i64* %RCX
  %703 = mul i64 %702, 8
  %704 = add i64 %703, %701
  %705 = bitcast %union.vec128_t* %XMM0 to i8*
  %706 = load i64, i64* %PC
  %707 = add i64 %706, 5
  store i64 %707, i64* %PC
  %708 = bitcast i8* %705 to <2 x float>*
  %709 = load <2 x float>, <2 x float>* %708, align 1
  %710 = extractelement <2 x float> %709, i32 0
  %711 = inttoptr i64 %704 to float*
  store float %710, float* %711
  %712 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %713 = load i64, i64* %RBP
  %714 = sub i64 %713, 36
  %715 = load i64, i64* %PC
  %716 = add i64 %715, 5
  store i64 %716, i64* %PC
  %717 = inttoptr i64 %714 to float*
  %718 = load float, float* %717
  %719 = bitcast i8* %712 to float*
  store float %718, float* %719, align 1, !tbaa !2432
  %720 = getelementptr inbounds i8, i8* %712, i64 4
  %721 = bitcast i8* %720 to float*
  store float 0.000000e+00, float* %721, align 1, !tbaa !2432
  %722 = getelementptr inbounds i8, i8* %712, i64 8
  %723 = bitcast i8* %722 to float*
  store float 0.000000e+00, float* %723, align 1, !tbaa !2432
  %724 = getelementptr inbounds i8, i8* %712, i64 12
  %725 = bitcast i8* %724 to float*
  store float 0.000000e+00, float* %725, align 1, !tbaa !2432
  %726 = bitcast %union.vec128_t* %XMM0 to i8*
  %727 = load i64, i64* %PC
  %728 = add i64 %727, 4
  store i64 %728, i64* %PC
  %729 = bitcast i8* %726 to i64*
  %730 = load i64, i64* %729, align 1
  %731 = trunc i64 %730 to i32
  %732 = bitcast i64* %RDX to [2 x i32]*
  %733 = bitcast i64* %RDX to i32*
  store i32 %731, i32* %733, align 1, !tbaa !2456
  %734 = getelementptr inbounds [2 x i32], [2 x i32]* %732, i64 0, i64 1
  store i32 0, i32* %734, align 1, !tbaa !2456
  %735 = load i64, i64* %RDX
  %736 = load i64, i64* %PC
  %737 = add i64 %736, 6
  store i64 %737, i64* %PC
  %738 = xor i64 -2147483648, %735
  %739 = trunc i64 %738 to i32
  %740 = and i64 %738, 4294967295
  store i64 %740, i64* %RDX, align 8, !tbaa !2428
  %741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %741, align 1, !tbaa !2434
  %742 = and i32 %739, 255
  %743 = call i32 @llvm.ctpop.i32(i32 %742) #16
  %744 = trunc i32 %743 to i8
  %745 = and i8 %744, 1
  %746 = xor i8 %745, 1
  %747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %746, i8* %747, align 1, !tbaa !2448
  %748 = icmp eq i32 %739, 0
  %749 = zext i1 %748 to i8
  %750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %749, i8* %750, align 1, !tbaa !2450
  %751 = lshr i32 %739, 31
  %752 = trunc i32 %751 to i8
  %753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %752, i8* %753, align 1, !tbaa !2451
  %754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %754, align 1, !tbaa !2452
  %755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %755, align 1, !tbaa !2449
  %756 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %757 = load i32, i32* %EDX
  %758 = zext i32 %757 to i64
  %759 = load i64, i64* %PC
  %760 = add i64 %759, 4
  store i64 %760, i64* %PC
  %761 = bitcast i8* %756 to i32*
  store i32 %757, i32* %761, align 1, !tbaa !2456
  %762 = getelementptr inbounds i8, i8* %756, i64 4
  %763 = bitcast i8* %762 to i32*
  store i32 0, i32* %763, align 1, !tbaa !2456
  %764 = getelementptr inbounds i8, i8* %756, i64 8
  %765 = bitcast i8* %764 to i32*
  store i32 0, i32* %765, align 1, !tbaa !2456
  %766 = getelementptr inbounds i8, i8* %756, i64 12
  %767 = bitcast i8* %766 to i32*
  store i32 0, i32* %767, align 1, !tbaa !2456
  %768 = load i64, i64* %RBP
  %769 = sub i64 %768, 16
  %770 = load i64, i64* %PC
  %771 = add i64 %770, 4
  store i64 %771, i64* %PC
  %772 = inttoptr i64 %769 to i64*
  %773 = load i64, i64* %772
  store i64 %773, i64* %RAX, align 8, !tbaa !2428
  %774 = load i64, i64* %RBP
  %775 = sub i64 %774, 40
  %776 = load i64, i64* %PC
  %777 = add i64 %776, 4
  store i64 %777, i64* %PC
  %778 = inttoptr i64 %775 to i32*
  %779 = load i32, i32* %778
  %780 = sext i32 %779 to i64
  store i64 %780, i64* %RCX, align 8, !tbaa !2428
  %781 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %782 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %783 = load i64, i64* %RAX
  %784 = load i64, i64* %RCX
  %785 = mul i64 %784, 8
  %786 = add i64 %783, 4
  %787 = add i64 %786, %785
  %788 = load i64, i64* %PC
  %789 = add i64 %788, 6
  store i64 %789, i64* %PC
  %790 = bitcast i8* %782 to <2 x float>*
  %791 = load <2 x float>, <2 x float>* %790, align 1
  %792 = getelementptr inbounds i8, i8* %782, i64 8
  %793 = bitcast i8* %792 to <2 x i32>*
  %794 = load <2 x i32>, <2 x i32>* %793, align 1
  %795 = inttoptr i64 %787 to float*
  %796 = load float, float* %795
  %797 = extractelement <2 x float> %791, i32 0
  %798 = fmul float %797, %796
  %799 = bitcast i8* %781 to float*
  store float %798, float* %799, align 1, !tbaa !2432
  %800 = bitcast <2 x float> %791 to <2 x i32>
  %801 = extractelement <2 x i32> %800, i32 1
  %802 = getelementptr inbounds i8, i8* %781, i64 4
  %803 = bitcast i8* %802 to i32*
  store i32 %801, i32* %803, align 1, !tbaa !2432
  %804 = extractelement <2 x i32> %794, i32 0
  %805 = getelementptr inbounds i8, i8* %781, i64 8
  %806 = bitcast i8* %805 to i32*
  store i32 %804, i32* %806, align 1, !tbaa !2432
  %807 = extractelement <2 x i32> %794, i32 1
  %808 = getelementptr inbounds i8, i8* %781, i64 12
  %809 = bitcast i8* %808 to i32*
  store i32 %807, i32* %809, align 1, !tbaa !2432
  %810 = load i64, i64* %RBP
  %811 = sub i64 %810, 16
  %812 = load i64, i64* %PC
  %813 = add i64 %812, 4
  store i64 %813, i64* %PC
  %814 = inttoptr i64 %811 to i64*
  %815 = load i64, i64* %814
  store i64 %815, i64* %RAX, align 8, !tbaa !2428
  %816 = load i64, i64* %RBP
  %817 = sub i64 %816, 40
  %818 = load i64, i64* %PC
  %819 = add i64 %818, 4
  store i64 %819, i64* %PC
  %820 = inttoptr i64 %817 to i32*
  %821 = load i32, i32* %820
  %822 = sext i32 %821 to i64
  store i64 %822, i64* %RCX, align 8, !tbaa !2428
  %823 = load i64, i64* %RAX
  %824 = load i64, i64* %RCX
  %825 = mul i64 %824, 8
  %826 = add i64 %823, 4
  %827 = add i64 %826, %825
  %828 = bitcast %union.vec128_t* %XMM0 to i8*
  %829 = load i64, i64* %PC
  %830 = add i64 %829, 6
  store i64 %830, i64* %PC
  %831 = bitcast i8* %828 to <2 x float>*
  %832 = load <2 x float>, <2 x float>* %831, align 1
  %833 = extractelement <2 x float> %832, i32 0
  %834 = inttoptr i64 %827 to float*
  store float %833, float* %834
  %835 = load i64, i64* %RBP
  %836 = sub i64 %835, 40
  %837 = load i64, i64* %PC
  %838 = add i64 %837, 3
  store i64 %838, i64* %PC
  %839 = inttoptr i64 %836 to i32*
  %840 = load i32, i32* %839
  %841 = zext i32 %840 to i64
  store i64 %841, i64* %RAX, align 8, !tbaa !2428
  %842 = load i64, i64* %RAX
  %843 = load i64, i64* %PC
  %844 = add i64 %843, 3
  store i64 %844, i64* %PC
  %845 = trunc i64 %842 to i32
  %846 = add i32 1, %845
  %847 = zext i32 %846 to i64
  store i64 %847, i64* %RAX, align 8, !tbaa !2428
  %848 = icmp ult i32 %846, %845
  %849 = icmp ult i32 %846, 1
  %850 = or i1 %848, %849
  %851 = zext i1 %850 to i8
  %852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %851, i8* %852, align 1, !tbaa !2434
  %853 = and i32 %846, 255
  %854 = call i32 @llvm.ctpop.i32(i32 %853) #16
  %855 = trunc i32 %854 to i8
  %856 = and i8 %855, 1
  %857 = xor i8 %856, 1
  %858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %857, i8* %858, align 1, !tbaa !2448
  %859 = xor i64 1, %842
  %860 = trunc i64 %859 to i32
  %861 = xor i32 %860, %846
  %862 = lshr i32 %861, 4
  %863 = trunc i32 %862 to i8
  %864 = and i8 %863, 1
  %865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %864, i8* %865, align 1, !tbaa !2449
  %866 = icmp eq i32 %846, 0
  %867 = zext i1 %866 to i8
  %868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %867, i8* %868, align 1, !tbaa !2450
  %869 = lshr i32 %846, 31
  %870 = trunc i32 %869 to i8
  %871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %870, i8* %871, align 1, !tbaa !2451
  %872 = lshr i32 %845, 31
  %873 = xor i32 %869, %872
  %874 = add nuw nsw i32 %873, %869
  %875 = icmp eq i32 %874, 2
  %876 = zext i1 %875 to i8
  %877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %876, i8* %877, align 1, !tbaa !2452
  %878 = load i64, i64* %RBP
  %879 = sub i64 %878, 40
  %880 = load i32, i32* %EAX
  %881 = zext i32 %880 to i64
  %882 = load i64, i64* %PC
  %883 = add i64 %882, 3
  store i64 %883, i64* %PC
  %884 = inttoptr i64 %879 to i32*
  store i32 %880, i32* %884
  %885 = load i64, i64* %PC
  %886 = sub i64 %885, 99
  %887 = load i64, i64* %PC
  %888 = add i64 %887, 5
  store i64 %888, i64* %PC
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %886, i64* %889, align 8, !tbaa !2428
  br label %block_400c5a

block_400c5a:                                     ; preds = %block_400c66, %block_400c53
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.1, %block_400c53 ], [ %MEMORY.3, %block_400c66 ]
  %890 = load i64, i64* %RBP
  %891 = sub i64 %890, 40
  %892 = load i64, i64* %PC
  %893 = add i64 %892, 3
  store i64 %893, i64* %PC
  %894 = inttoptr i64 %891 to i32*
  %895 = load i32, i32* %894
  %896 = zext i32 %895 to i64
  store i64 %896, i64* %RAX, align 8, !tbaa !2428
  %897 = load i32, i32* %EAX
  %898 = zext i32 %897 to i64
  %899 = load i64, i64* %RBP
  %900 = sub i64 %899, 4
  %901 = load i64, i64* %PC
  %902 = add i64 %901, 3
  store i64 %902, i64* %PC
  %903 = inttoptr i64 %900 to i32*
  %904 = load i32, i32* %903
  %905 = sub i32 %897, %904
  %906 = icmp ult i32 %897, %904
  %907 = zext i1 %906 to i8
  %908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %907, i8* %908, align 1, !tbaa !2434
  %909 = and i32 %905, 255
  %910 = call i32 @llvm.ctpop.i32(i32 %909) #16
  %911 = trunc i32 %910 to i8
  %912 = and i8 %911, 1
  %913 = xor i8 %912, 1
  %914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %913, i8* %914, align 1, !tbaa !2448
  %915 = xor i32 %904, %897
  %916 = xor i32 %915, %905
  %917 = lshr i32 %916, 4
  %918 = trunc i32 %917 to i8
  %919 = and i8 %918, 1
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %919, i8* %920, align 1, !tbaa !2449
  %921 = icmp eq i32 %905, 0
  %922 = zext i1 %921 to i8
  %923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %922, i8* %923, align 1, !tbaa !2450
  %924 = lshr i32 %905, 31
  %925 = trunc i32 %924 to i8
  %926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %925, i8* %926, align 1, !tbaa !2451
  %927 = lshr i32 %897, 31
  %928 = lshr i32 %904, 31
  %929 = xor i32 %928, %927
  %930 = xor i32 %924, %927
  %931 = add nuw nsw i32 %930, %929
  %932 = icmp eq i32 %931, 2
  %933 = zext i1 %932 to i8
  %934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %933, i8* %934, align 1, !tbaa !2452
  %935 = load i64, i64* %PC
  %936 = add i64 %935, 98
  %937 = load i64, i64* %PC
  %938 = add i64 %937, 6
  %939 = load i64, i64* %PC
  %940 = add i64 %939, 6
  store i64 %940, i64* %PC
  %941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %942 = load i8, i8* %941, align 1, !tbaa !2450
  %943 = icmp eq i8 %942, 0
  %944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %945 = load i8, i8* %944, align 1, !tbaa !2451
  %946 = icmp ne i8 %945, 0
  %947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %948 = load i8, i8* %947, align 1, !tbaa !2452
  %949 = icmp ne i8 %948, 0
  %950 = xor i1 %946, %949
  %951 = xor i1 %950, true
  %952 = and i1 %943, %951
  %953 = zext i1 %952 to i8
  store i8 %953, i8* %BRANCH_TAKEN, align 1, !tbaa !2453
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %955 = select i1 %952, i64 %936, i64 %938
  store i64 %955, i64* %954, align 8, !tbaa !2428
  %956 = load i8, i8* %BRANCH_TAKEN
  %957 = icmp eq i8 %956, 1
  br i1 %957, label %block_400cc2, label %block_400c66

block_400cc2:                                     ; preds = %block_400c5a
  %958 = load i64, i64* %PC
  %959 = add i64 %958, 1
  store i64 %959, i64* %PC
  %960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %961 = load i64, i64* %960, align 8, !tbaa !2428
  %962 = add i64 %961, 8
  %963 = inttoptr i64 %961 to i64*
  %964 = load i64, i64* %963
  store i64 %964, i64* %RBP, align 8, !tbaa !2428
  store i64 %962, i64* %960, align 8, !tbaa !2428
  %965 = load i64, i64* %PC
  %966 = add i64 %965, 1
  store i64 %966, i64* %PC
  %967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %969 = load i64, i64* %968, align 8, !tbaa !2428
  %970 = inttoptr i64 %969 to i64*
  %971 = load i64, i64* %970
  store i64 %971, i64* %967, align 8, !tbaa !2428
  %972 = add i64 %969, 8
  store i64 %972, i64* %968, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.3

block_400a6e:                                     ; preds = %block_400a6e, %block_400a69
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.2, %block_400a69 ], [ %MEMORY.4, %block_400a6e ]
  %973 = load i64, i64* %RBP
  %974 = sub i64 %973, 16
  %975 = load i64, i64* %PC
  %976 = add i64 %975, 4
  store i64 %976, i64* %PC
  %977 = inttoptr i64 %974 to i64*
  %978 = load i64, i64* %977
  store i64 %978, i64* %RAX, align 8, !tbaa !2428
  %979 = load i64, i64* %RBP
  %980 = sub i64 %979, 40
  %981 = load i64, i64* %PC
  %982 = add i64 %981, 4
  store i64 %982, i64* %PC
  %983 = inttoptr i64 %980 to i32*
  %984 = load i32, i32* %983
  %985 = sext i32 %984 to i64
  store i64 %985, i64* %RCX, align 8, !tbaa !2428
  %986 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %987 = load i64, i64* %RAX
  %988 = load i64, i64* %RCX
  %989 = mul i64 %988, 8
  %990 = add i64 %989, %987
  %991 = load i64, i64* %PC
  %992 = add i64 %991, 5
  store i64 %992, i64* %PC
  %993 = inttoptr i64 %990 to float*
  %994 = load float, float* %993
  %995 = bitcast i8* %986 to float*
  store float %994, float* %995, align 1, !tbaa !2432
  %996 = getelementptr inbounds i8, i8* %986, i64 4
  %997 = bitcast i8* %996 to float*
  store float 0.000000e+00, float* %997, align 1, !tbaa !2432
  %998 = getelementptr inbounds i8, i8* %986, i64 8
  %999 = bitcast i8* %998 to float*
  store float 0.000000e+00, float* %999, align 1, !tbaa !2432
  %1000 = getelementptr inbounds i8, i8* %986, i64 12
  %1001 = bitcast i8* %1000 to float*
  store float 0.000000e+00, float* %1001, align 1, !tbaa !2432
  %1002 = load i64, i64* %RBP
  %1003 = sub i64 %1002, 16
  %1004 = load i64, i64* %PC
  %1005 = add i64 %1004, 4
  store i64 %1005, i64* %PC
  %1006 = inttoptr i64 %1003 to i64*
  %1007 = load i64, i64* %1006
  store i64 %1007, i64* %RAX, align 8, !tbaa !2428
  %1008 = load i64, i64* %RBP
  %1009 = sub i64 %1008, 56
  %1010 = load i64, i64* %PC
  %1011 = add i64 %1010, 3
  store i64 %1011, i64* %PC
  %1012 = inttoptr i64 %1009 to i32*
  %1013 = load i32, i32* %1012
  %1014 = zext i32 %1013 to i64
  store i64 %1014, i64* %RDX, align 8, !tbaa !2428
  %1015 = load i64, i64* %RDX
  %1016 = load i64, i64* %RBP
  %1017 = sub i64 %1016, 40
  %1018 = load i64, i64* %PC
  %1019 = add i64 %1018, 3
  store i64 %1019, i64* %PC
  %1020 = trunc i64 %1015 to i32
  %1021 = inttoptr i64 %1017 to i32*
  %1022 = load i32, i32* %1021
  %1023 = add i32 %1022, %1020
  %1024 = zext i32 %1023 to i64
  store i64 %1024, i64* %RDX, align 8, !tbaa !2428
  %1025 = icmp ult i32 %1023, %1020
  %1026 = icmp ult i32 %1023, %1022
  %1027 = or i1 %1025, %1026
  %1028 = zext i1 %1027 to i8
  %1029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1028, i8* %1029, align 1, !tbaa !2434
  %1030 = and i32 %1023, 255
  %1031 = call i32 @llvm.ctpop.i32(i32 %1030) #16
  %1032 = trunc i32 %1031 to i8
  %1033 = and i8 %1032, 1
  %1034 = xor i8 %1033, 1
  %1035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1034, i8* %1035, align 1, !tbaa !2448
  %1036 = xor i32 %1022, %1020
  %1037 = xor i32 %1036, %1023
  %1038 = lshr i32 %1037, 4
  %1039 = trunc i32 %1038 to i8
  %1040 = and i8 %1039, 1
  %1041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1040, i8* %1041, align 1, !tbaa !2449
  %1042 = icmp eq i32 %1023, 0
  %1043 = zext i1 %1042 to i8
  %1044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1043, i8* %1044, align 1, !tbaa !2450
  %1045 = lshr i32 %1023, 31
  %1046 = trunc i32 %1045 to i8
  %1047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1046, i8* %1047, align 1, !tbaa !2451
  %1048 = lshr i32 %1020, 31
  %1049 = lshr i32 %1022, 31
  %1050 = xor i32 %1045, %1048
  %1051 = xor i32 %1045, %1049
  %1052 = add nuw nsw i32 %1050, %1051
  %1053 = icmp eq i32 %1052, 2
  %1054 = zext i1 %1053 to i8
  %1055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1054, i8* %1055, align 1, !tbaa !2452
  %1056 = load i32, i32* %EDX
  %1057 = zext i32 %1056 to i64
  %1058 = load i64, i64* %PC
  %1059 = add i64 %1058, 3
  store i64 %1059, i64* %PC
  %1060 = shl i64 %1057, 32
  %1061 = ashr exact i64 %1060, 32
  store i64 %1061, i64* %RCX, align 8, !tbaa !2428
  %1062 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1063 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1064 = load i64, i64* %RAX
  %1065 = load i64, i64* %RCX
  %1066 = mul i64 %1065, 8
  %1067 = add i64 %1066, %1064
  %1068 = load i64, i64* %PC
  %1069 = add i64 %1068, 5
  store i64 %1069, i64* %PC
  %1070 = bitcast i8* %1063 to <2 x float>*
  %1071 = load <2 x float>, <2 x float>* %1070, align 1
  %1072 = getelementptr inbounds i8, i8* %1063, i64 8
  %1073 = bitcast i8* %1072 to <2 x i32>*
  %1074 = load <2 x i32>, <2 x i32>* %1073, align 1
  %1075 = inttoptr i64 %1067 to float*
  %1076 = load float, float* %1075
  %1077 = extractelement <2 x float> %1071, i32 0
  %1078 = fadd float %1077, %1076
  %1079 = bitcast i8* %1062 to float*
  store float %1078, float* %1079, align 1, !tbaa !2432
  %1080 = bitcast <2 x float> %1071 to <2 x i32>
  %1081 = extractelement <2 x i32> %1080, i32 1
  %1082 = getelementptr inbounds i8, i8* %1062, i64 4
  %1083 = bitcast i8* %1082 to i32*
  store i32 %1081, i32* %1083, align 1, !tbaa !2432
  %1084 = extractelement <2 x i32> %1074, i32 0
  %1085 = getelementptr inbounds i8, i8* %1062, i64 8
  %1086 = bitcast i8* %1085 to i32*
  store i32 %1084, i32* %1086, align 1, !tbaa !2432
  %1087 = extractelement <2 x i32> %1074, i32 1
  %1088 = getelementptr inbounds i8, i8* %1062, i64 12
  %1089 = bitcast i8* %1088 to i32*
  store i32 %1087, i32* %1089, align 1, !tbaa !2432
  %1090 = load i64, i64* %RBP
  %1091 = sub i64 %1090, 24
  %1092 = load i64, i64* %PC
  %1093 = add i64 %1092, 4
  store i64 %1093, i64* %PC
  %1094 = inttoptr i64 %1091 to i64*
  %1095 = load i64, i64* %1094
  store i64 %1095, i64* %RAX, align 8, !tbaa !2428
  %1096 = load i64, i64* %RBP
  %1097 = sub i64 %1096, 40
  %1098 = load i64, i64* %PC
  %1099 = add i64 %1098, 3
  store i64 %1099, i64* %PC
  %1100 = inttoptr i64 %1097 to i32*
  %1101 = load i32, i32* %1100
  %1102 = zext i32 %1101 to i64
  store i64 %1102, i64* %RDX, align 8, !tbaa !2428
  %1103 = load i64, i64* %RDX
  %1104 = load i64, i64* %RBP
  %1105 = sub i64 %1104, 48
  %1106 = load i64, i64* %PC
  %1107 = add i64 %1106, 3
  store i64 %1107, i64* %PC
  %1108 = trunc i64 %1103 to i32
  %1109 = inttoptr i64 %1105 to i32*
  %1110 = load i32, i32* %1109
  %1111 = add i32 %1110, %1108
  %1112 = zext i32 %1111 to i64
  store i64 %1112, i64* %RDX, align 8, !tbaa !2428
  %1113 = icmp ult i32 %1111, %1108
  %1114 = icmp ult i32 %1111, %1110
  %1115 = or i1 %1113, %1114
  %1116 = zext i1 %1115 to i8
  %1117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1116, i8* %1117, align 1, !tbaa !2434
  %1118 = and i32 %1111, 255
  %1119 = call i32 @llvm.ctpop.i32(i32 %1118) #16
  %1120 = trunc i32 %1119 to i8
  %1121 = and i8 %1120, 1
  %1122 = xor i8 %1121, 1
  %1123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1122, i8* %1123, align 1, !tbaa !2448
  %1124 = xor i32 %1110, %1108
  %1125 = xor i32 %1124, %1111
  %1126 = lshr i32 %1125, 4
  %1127 = trunc i32 %1126 to i8
  %1128 = and i8 %1127, 1
  %1129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1128, i8* %1129, align 1, !tbaa !2449
  %1130 = icmp eq i32 %1111, 0
  %1131 = zext i1 %1130 to i8
  %1132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1131, i8* %1132, align 1, !tbaa !2450
  %1133 = lshr i32 %1111, 31
  %1134 = trunc i32 %1133 to i8
  %1135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1134, i8* %1135, align 1, !tbaa !2451
  %1136 = lshr i32 %1108, 31
  %1137 = lshr i32 %1110, 31
  %1138 = xor i32 %1133, %1136
  %1139 = xor i32 %1133, %1137
  %1140 = add nuw nsw i32 %1138, %1139
  %1141 = icmp eq i32 %1140, 2
  %1142 = zext i1 %1141 to i8
  %1143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1142, i8* %1143, align 1, !tbaa !2452
  %1144 = load i32, i32* %EDX
  %1145 = zext i32 %1144 to i64
  %1146 = load i64, i64* %PC
  %1147 = add i64 %1146, 3
  store i64 %1147, i64* %PC
  %1148 = shl i64 %1145, 32
  %1149 = ashr exact i64 %1148, 32
  store i64 %1149, i64* %RCX, align 8, !tbaa !2428
  %1150 = load i64, i64* %RAX
  %1151 = load i64, i64* %RCX
  %1152 = mul i64 %1151, 8
  %1153 = add i64 %1152, %1150
  %1154 = bitcast %union.vec128_t* %XMM0 to i8*
  %1155 = load i64, i64* %PC
  %1156 = add i64 %1155, 5
  store i64 %1156, i64* %PC
  %1157 = bitcast i8* %1154 to <2 x float>*
  %1158 = load <2 x float>, <2 x float>* %1157, align 1
  %1159 = extractelement <2 x float> %1158, i32 0
  %1160 = inttoptr i64 %1153 to float*
  store float %1159, float* %1160
  %1161 = load i64, i64* %RBP
  %1162 = sub i64 %1161, 16
  %1163 = load i64, i64* %PC
  %1164 = add i64 %1163, 4
  store i64 %1164, i64* %PC
  %1165 = inttoptr i64 %1162 to i64*
  %1166 = load i64, i64* %1165
  store i64 %1166, i64* %RAX, align 8, !tbaa !2428
  %1167 = load i64, i64* %RBP
  %1168 = sub i64 %1167, 40
  %1169 = load i64, i64* %PC
  %1170 = add i64 %1169, 4
  store i64 %1170, i64* %PC
  %1171 = inttoptr i64 %1168 to i32*
  %1172 = load i32, i32* %1171
  %1173 = sext i32 %1172 to i64
  store i64 %1173, i64* %RCX, align 8, !tbaa !2428
  %1174 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1175 = load i64, i64* %RAX
  %1176 = load i64, i64* %RCX
  %1177 = mul i64 %1176, 8
  %1178 = add i64 %1175, 4
  %1179 = add i64 %1178, %1177
  %1180 = load i64, i64* %PC
  %1181 = add i64 %1180, 6
  store i64 %1181, i64* %PC
  %1182 = inttoptr i64 %1179 to float*
  %1183 = load float, float* %1182
  %1184 = bitcast i8* %1174 to float*
  store float %1183, float* %1184, align 1, !tbaa !2432
  %1185 = getelementptr inbounds i8, i8* %1174, i64 4
  %1186 = bitcast i8* %1185 to float*
  store float 0.000000e+00, float* %1186, align 1, !tbaa !2432
  %1187 = getelementptr inbounds i8, i8* %1174, i64 8
  %1188 = bitcast i8* %1187 to float*
  store float 0.000000e+00, float* %1188, align 1, !tbaa !2432
  %1189 = getelementptr inbounds i8, i8* %1174, i64 12
  %1190 = bitcast i8* %1189 to float*
  store float 0.000000e+00, float* %1190, align 1, !tbaa !2432
  %1191 = load i64, i64* %RBP
  %1192 = sub i64 %1191, 16
  %1193 = load i64, i64* %PC
  %1194 = add i64 %1193, 4
  store i64 %1194, i64* %PC
  %1195 = inttoptr i64 %1192 to i64*
  %1196 = load i64, i64* %1195
  store i64 %1196, i64* %RAX, align 8, !tbaa !2428
  %1197 = load i64, i64* %RBP
  %1198 = sub i64 %1197, 56
  %1199 = load i64, i64* %PC
  %1200 = add i64 %1199, 3
  store i64 %1200, i64* %PC
  %1201 = inttoptr i64 %1198 to i32*
  %1202 = load i32, i32* %1201
  %1203 = zext i32 %1202 to i64
  store i64 %1203, i64* %RDX, align 8, !tbaa !2428
  %1204 = load i64, i64* %RDX
  %1205 = load i64, i64* %RBP
  %1206 = sub i64 %1205, 40
  %1207 = load i64, i64* %PC
  %1208 = add i64 %1207, 3
  store i64 %1208, i64* %PC
  %1209 = trunc i64 %1204 to i32
  %1210 = inttoptr i64 %1206 to i32*
  %1211 = load i32, i32* %1210
  %1212 = add i32 %1211, %1209
  %1213 = zext i32 %1212 to i64
  store i64 %1213, i64* %RDX, align 8, !tbaa !2428
  %1214 = icmp ult i32 %1212, %1209
  %1215 = icmp ult i32 %1212, %1211
  %1216 = or i1 %1214, %1215
  %1217 = zext i1 %1216 to i8
  %1218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1217, i8* %1218, align 1, !tbaa !2434
  %1219 = and i32 %1212, 255
  %1220 = call i32 @llvm.ctpop.i32(i32 %1219) #16
  %1221 = trunc i32 %1220 to i8
  %1222 = and i8 %1221, 1
  %1223 = xor i8 %1222, 1
  %1224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1223, i8* %1224, align 1, !tbaa !2448
  %1225 = xor i32 %1211, %1209
  %1226 = xor i32 %1225, %1212
  %1227 = lshr i32 %1226, 4
  %1228 = trunc i32 %1227 to i8
  %1229 = and i8 %1228, 1
  %1230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1229, i8* %1230, align 1, !tbaa !2449
  %1231 = icmp eq i32 %1212, 0
  %1232 = zext i1 %1231 to i8
  %1233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1232, i8* %1233, align 1, !tbaa !2450
  %1234 = lshr i32 %1212, 31
  %1235 = trunc i32 %1234 to i8
  %1236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1235, i8* %1236, align 1, !tbaa !2451
  %1237 = lshr i32 %1209, 31
  %1238 = lshr i32 %1211, 31
  %1239 = xor i32 %1234, %1237
  %1240 = xor i32 %1234, %1238
  %1241 = add nuw nsw i32 %1239, %1240
  %1242 = icmp eq i32 %1241, 2
  %1243 = zext i1 %1242 to i8
  %1244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1243, i8* %1244, align 1, !tbaa !2452
  %1245 = load i32, i32* %EDX
  %1246 = zext i32 %1245 to i64
  %1247 = load i64, i64* %PC
  %1248 = add i64 %1247, 3
  store i64 %1248, i64* %PC
  %1249 = shl i64 %1246, 32
  %1250 = ashr exact i64 %1249, 32
  store i64 %1250, i64* %RCX, align 8, !tbaa !2428
  %1251 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1252 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1253 = load i64, i64* %RAX
  %1254 = load i64, i64* %RCX
  %1255 = mul i64 %1254, 8
  %1256 = add i64 %1253, 4
  %1257 = add i64 %1256, %1255
  %1258 = load i64, i64* %PC
  %1259 = add i64 %1258, 6
  store i64 %1259, i64* %PC
  %1260 = bitcast i8* %1252 to <2 x float>*
  %1261 = load <2 x float>, <2 x float>* %1260, align 1
  %1262 = getelementptr inbounds i8, i8* %1252, i64 8
  %1263 = bitcast i8* %1262 to <2 x i32>*
  %1264 = load <2 x i32>, <2 x i32>* %1263, align 1
  %1265 = inttoptr i64 %1257 to float*
  %1266 = load float, float* %1265
  %1267 = extractelement <2 x float> %1261, i32 0
  %1268 = fadd float %1267, %1266
  %1269 = bitcast i8* %1251 to float*
  store float %1268, float* %1269, align 1, !tbaa !2432
  %1270 = bitcast <2 x float> %1261 to <2 x i32>
  %1271 = extractelement <2 x i32> %1270, i32 1
  %1272 = getelementptr inbounds i8, i8* %1251, i64 4
  %1273 = bitcast i8* %1272 to i32*
  store i32 %1271, i32* %1273, align 1, !tbaa !2432
  %1274 = extractelement <2 x i32> %1264, i32 0
  %1275 = getelementptr inbounds i8, i8* %1251, i64 8
  %1276 = bitcast i8* %1275 to i32*
  store i32 %1274, i32* %1276, align 1, !tbaa !2432
  %1277 = extractelement <2 x i32> %1264, i32 1
  %1278 = getelementptr inbounds i8, i8* %1251, i64 12
  %1279 = bitcast i8* %1278 to i32*
  store i32 %1277, i32* %1279, align 1, !tbaa !2432
  %1280 = load i64, i64* %RBP
  %1281 = sub i64 %1280, 24
  %1282 = load i64, i64* %PC
  %1283 = add i64 %1282, 4
  store i64 %1283, i64* %PC
  %1284 = inttoptr i64 %1281 to i64*
  %1285 = load i64, i64* %1284
  store i64 %1285, i64* %RAX, align 8, !tbaa !2428
  %1286 = load i64, i64* %RBP
  %1287 = sub i64 %1286, 40
  %1288 = load i64, i64* %PC
  %1289 = add i64 %1288, 3
  store i64 %1289, i64* %PC
  %1290 = inttoptr i64 %1287 to i32*
  %1291 = load i32, i32* %1290
  %1292 = zext i32 %1291 to i64
  store i64 %1292, i64* %RDX, align 8, !tbaa !2428
  %1293 = load i64, i64* %RDX
  %1294 = load i64, i64* %RBP
  %1295 = sub i64 %1294, 48
  %1296 = load i64, i64* %PC
  %1297 = add i64 %1296, 3
  store i64 %1297, i64* %PC
  %1298 = trunc i64 %1293 to i32
  %1299 = inttoptr i64 %1295 to i32*
  %1300 = load i32, i32* %1299
  %1301 = add i32 %1300, %1298
  %1302 = zext i32 %1301 to i64
  store i64 %1302, i64* %RDX, align 8, !tbaa !2428
  %1303 = icmp ult i32 %1301, %1298
  %1304 = icmp ult i32 %1301, %1300
  %1305 = or i1 %1303, %1304
  %1306 = zext i1 %1305 to i8
  %1307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1306, i8* %1307, align 1, !tbaa !2434
  %1308 = and i32 %1301, 255
  %1309 = call i32 @llvm.ctpop.i32(i32 %1308) #16
  %1310 = trunc i32 %1309 to i8
  %1311 = and i8 %1310, 1
  %1312 = xor i8 %1311, 1
  %1313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1312, i8* %1313, align 1, !tbaa !2448
  %1314 = xor i32 %1300, %1298
  %1315 = xor i32 %1314, %1301
  %1316 = lshr i32 %1315, 4
  %1317 = trunc i32 %1316 to i8
  %1318 = and i8 %1317, 1
  %1319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1318, i8* %1319, align 1, !tbaa !2449
  %1320 = icmp eq i32 %1301, 0
  %1321 = zext i1 %1320 to i8
  %1322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1321, i8* %1322, align 1, !tbaa !2450
  %1323 = lshr i32 %1301, 31
  %1324 = trunc i32 %1323 to i8
  %1325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1324, i8* %1325, align 1, !tbaa !2451
  %1326 = lshr i32 %1298, 31
  %1327 = lshr i32 %1300, 31
  %1328 = xor i32 %1323, %1326
  %1329 = xor i32 %1323, %1327
  %1330 = add nuw nsw i32 %1328, %1329
  %1331 = icmp eq i32 %1330, 2
  %1332 = zext i1 %1331 to i8
  %1333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1332, i8* %1333, align 1, !tbaa !2452
  %1334 = load i32, i32* %EDX
  %1335 = zext i32 %1334 to i64
  %1336 = load i64, i64* %PC
  %1337 = add i64 %1336, 3
  store i64 %1337, i64* %PC
  %1338 = shl i64 %1335, 32
  %1339 = ashr exact i64 %1338, 32
  store i64 %1339, i64* %RCX, align 8, !tbaa !2428
  %1340 = load i64, i64* %RAX
  %1341 = load i64, i64* %RCX
  %1342 = mul i64 %1341, 8
  %1343 = add i64 %1340, 4
  %1344 = add i64 %1343, %1342
  %1345 = bitcast %union.vec128_t* %XMM0 to i8*
  %1346 = load i64, i64* %PC
  %1347 = add i64 %1346, 6
  store i64 %1347, i64* %PC
  %1348 = bitcast i8* %1345 to <2 x float>*
  %1349 = load <2 x float>, <2 x float>* %1348, align 1
  %1350 = extractelement <2 x float> %1349, i32 0
  %1351 = inttoptr i64 %1344 to float*
  store float %1350, float* %1351
  %1352 = load i64, i64* %RBP
  %1353 = sub i64 %1352, 32
  %1354 = load i64, i64* %PC
  %1355 = add i64 %1354, 4
  store i64 %1355, i64* %PC
  %1356 = inttoptr i64 %1353 to i64*
  %1357 = load i64, i64* %1356
  store i64 %1357, i64* %RAX, align 8, !tbaa !2428
  %1358 = load i64, i64* %RBP
  %1359 = sub i64 %1358, 48
  %1360 = load i64, i64* %PC
  %1361 = add i64 %1360, 3
  store i64 %1361, i64* %PC
  %1362 = inttoptr i64 %1359 to i32*
  %1363 = load i32, i32* %1362
  %1364 = zext i32 %1363 to i64
  store i64 %1364, i64* %RDX, align 8, !tbaa !2428
  %1365 = load i64, i64* %RDX
  %1366 = load i64, i64* %PC
  %1367 = add i64 %1366, 3
  store i64 %1367, i64* %PC
  %1368 = trunc i64 %1365 to i32
  %1369 = add i32 1, %1368
  %1370 = zext i32 %1369 to i64
  store i64 %1370, i64* %RDX, align 8, !tbaa !2428
  %1371 = icmp ult i32 %1369, %1368
  %1372 = icmp ult i32 %1369, 1
  %1373 = or i1 %1371, %1372
  %1374 = zext i1 %1373 to i8
  %1375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1374, i8* %1375, align 1, !tbaa !2434
  %1376 = and i32 %1369, 255
  %1377 = call i32 @llvm.ctpop.i32(i32 %1376) #16
  %1378 = trunc i32 %1377 to i8
  %1379 = and i8 %1378, 1
  %1380 = xor i8 %1379, 1
  %1381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1380, i8* %1381, align 1, !tbaa !2448
  %1382 = xor i64 1, %1365
  %1383 = trunc i64 %1382 to i32
  %1384 = xor i32 %1383, %1369
  %1385 = lshr i32 %1384, 4
  %1386 = trunc i32 %1385 to i8
  %1387 = and i8 %1386, 1
  %1388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1387, i8* %1388, align 1, !tbaa !2449
  %1389 = icmp eq i32 %1369, 0
  %1390 = zext i1 %1389 to i8
  %1391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1390, i8* %1391, align 1, !tbaa !2450
  %1392 = lshr i32 %1369, 31
  %1393 = trunc i32 %1392 to i8
  %1394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1393, i8* %1394, align 1, !tbaa !2451
  %1395 = lshr i32 %1368, 31
  %1396 = xor i32 %1392, %1395
  %1397 = add nuw nsw i32 %1396, %1392
  %1398 = icmp eq i32 %1397, 2
  %1399 = zext i1 %1398 to i8
  %1400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1399, i8* %1400, align 1, !tbaa !2452
  %1401 = load i32, i32* %EDX
  %1402 = zext i32 %1401 to i64
  %1403 = load i64, i64* %PC
  %1404 = add i64 %1403, 3
  store i64 %1404, i64* %PC
  %1405 = shl i64 %1402, 32
  %1406 = ashr exact i64 %1405, 32
  store i64 %1406, i64* %RCX, align 8, !tbaa !2428
  %1407 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1408 = load i64, i64* %RAX
  %1409 = load i64, i64* %RCX
  %1410 = mul i64 %1409, 8
  %1411 = add i64 %1410, %1408
  %1412 = load i64, i64* %PC
  %1413 = add i64 %1412, 5
  store i64 %1413, i64* %PC
  %1414 = inttoptr i64 %1411 to float*
  %1415 = load float, float* %1414
  %1416 = bitcast i8* %1407 to float*
  store float %1415, float* %1416, align 1, !tbaa !2432
  %1417 = getelementptr inbounds i8, i8* %1407, i64 4
  %1418 = bitcast i8* %1417 to float*
  store float 0.000000e+00, float* %1418, align 1, !tbaa !2432
  %1419 = getelementptr inbounds i8, i8* %1407, i64 8
  %1420 = bitcast i8* %1419 to float*
  store float 0.000000e+00, float* %1420, align 1, !tbaa !2432
  %1421 = getelementptr inbounds i8, i8* %1407, i64 12
  %1422 = bitcast i8* %1421 to float*
  store float 0.000000e+00, float* %1422, align 1, !tbaa !2432
  %1423 = load i64, i64* %RBP
  %1424 = sub i64 %1423, 16
  %1425 = load i64, i64* %PC
  %1426 = add i64 %1425, 4
  store i64 %1426, i64* %PC
  %1427 = inttoptr i64 %1424 to i64*
  %1428 = load i64, i64* %1427
  store i64 %1428, i64* %RAX, align 8, !tbaa !2428
  %1429 = load i64, i64* %RBP
  %1430 = sub i64 %1429, 40
  %1431 = load i64, i64* %PC
  %1432 = add i64 %1431, 4
  store i64 %1432, i64* %PC
  %1433 = inttoptr i64 %1430 to i32*
  %1434 = load i32, i32* %1433
  %1435 = sext i32 %1434 to i64
  store i64 %1435, i64* %RCX, align 8, !tbaa !2428
  %1436 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1437 = load i64, i64* %RAX
  %1438 = load i64, i64* %RCX
  %1439 = mul i64 %1438, 8
  %1440 = add i64 %1439, %1437
  %1441 = load i64, i64* %PC
  %1442 = add i64 %1441, 5
  store i64 %1442, i64* %PC
  %1443 = inttoptr i64 %1440 to float*
  %1444 = load float, float* %1443
  %1445 = bitcast i8* %1436 to float*
  store float %1444, float* %1445, align 1, !tbaa !2432
  %1446 = getelementptr inbounds i8, i8* %1436, i64 4
  %1447 = bitcast i8* %1446 to float*
  store float 0.000000e+00, float* %1447, align 1, !tbaa !2432
  %1448 = getelementptr inbounds i8, i8* %1436, i64 8
  %1449 = bitcast i8* %1448 to float*
  store float 0.000000e+00, float* %1449, align 1, !tbaa !2432
  %1450 = getelementptr inbounds i8, i8* %1436, i64 12
  %1451 = bitcast i8* %1450 to float*
  store float 0.000000e+00, float* %1451, align 1, !tbaa !2432
  %1452 = load i64, i64* %RBP
  %1453 = sub i64 %1452, 16
  %1454 = load i64, i64* %PC
  %1455 = add i64 %1454, 4
  store i64 %1455, i64* %PC
  %1456 = inttoptr i64 %1453 to i64*
  %1457 = load i64, i64* %1456
  store i64 %1457, i64* %RAX, align 8, !tbaa !2428
  %1458 = load i64, i64* %RBP
  %1459 = sub i64 %1458, 40
  %1460 = load i64, i64* %PC
  %1461 = add i64 %1460, 3
  store i64 %1461, i64* %PC
  %1462 = inttoptr i64 %1459 to i32*
  %1463 = load i32, i32* %1462
  %1464 = zext i32 %1463 to i64
  store i64 %1464, i64* %RDX, align 8, !tbaa !2428
  %1465 = load i64, i64* %RDX
  %1466 = load i64, i64* %RBP
  %1467 = sub i64 %1466, 56
  %1468 = load i64, i64* %PC
  %1469 = add i64 %1468, 3
  store i64 %1469, i64* %PC
  %1470 = trunc i64 %1465 to i32
  %1471 = inttoptr i64 %1467 to i32*
  %1472 = load i32, i32* %1471
  %1473 = add i32 %1472, %1470
  %1474 = zext i32 %1473 to i64
  store i64 %1474, i64* %RDX, align 8, !tbaa !2428
  %1475 = icmp ult i32 %1473, %1470
  %1476 = icmp ult i32 %1473, %1472
  %1477 = or i1 %1475, %1476
  %1478 = zext i1 %1477 to i8
  %1479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1478, i8* %1479, align 1, !tbaa !2434
  %1480 = and i32 %1473, 255
  %1481 = call i32 @llvm.ctpop.i32(i32 %1480) #16
  %1482 = trunc i32 %1481 to i8
  %1483 = and i8 %1482, 1
  %1484 = xor i8 %1483, 1
  %1485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1484, i8* %1485, align 1, !tbaa !2448
  %1486 = xor i32 %1472, %1470
  %1487 = xor i32 %1486, %1473
  %1488 = lshr i32 %1487, 4
  %1489 = trunc i32 %1488 to i8
  %1490 = and i8 %1489, 1
  %1491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1490, i8* %1491, align 1, !tbaa !2449
  %1492 = icmp eq i32 %1473, 0
  %1493 = zext i1 %1492 to i8
  %1494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1493, i8* %1494, align 1, !tbaa !2450
  %1495 = lshr i32 %1473, 31
  %1496 = trunc i32 %1495 to i8
  %1497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1496, i8* %1497, align 1, !tbaa !2451
  %1498 = lshr i32 %1470, 31
  %1499 = lshr i32 %1472, 31
  %1500 = xor i32 %1495, %1498
  %1501 = xor i32 %1495, %1499
  %1502 = add nuw nsw i32 %1500, %1501
  %1503 = icmp eq i32 %1502, 2
  %1504 = zext i1 %1503 to i8
  %1505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1504, i8* %1505, align 1, !tbaa !2452
  %1506 = load i32, i32* %EDX
  %1507 = zext i32 %1506 to i64
  %1508 = load i64, i64* %PC
  %1509 = add i64 %1508, 3
  store i64 %1509, i64* %PC
  %1510 = shl i64 %1507, 32
  %1511 = ashr exact i64 %1510, 32
  store i64 %1511, i64* %RCX, align 8, !tbaa !2428
  %1512 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1513 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1514 = load i64, i64* %RAX
  %1515 = load i64, i64* %RCX
  %1516 = mul i64 %1515, 8
  %1517 = add i64 %1516, %1514
  %1518 = load i64, i64* %PC
  %1519 = add i64 %1518, 5
  store i64 %1519, i64* %PC
  %1520 = bitcast i8* %1513 to <2 x float>*
  %1521 = load <2 x float>, <2 x float>* %1520, align 1
  %1522 = getelementptr inbounds i8, i8* %1513, i64 8
  %1523 = bitcast i8* %1522 to <2 x i32>*
  %1524 = load <2 x i32>, <2 x i32>* %1523, align 1
  %1525 = inttoptr i64 %1517 to float*
  %1526 = load float, float* %1525
  %1527 = extractelement <2 x float> %1521, i32 0
  %1528 = fsub float %1527, %1526
  %1529 = bitcast i8* %1512 to float*
  store float %1528, float* %1529, align 1, !tbaa !2432
  %1530 = bitcast <2 x float> %1521 to <2 x i32>
  %1531 = extractelement <2 x i32> %1530, i32 1
  %1532 = getelementptr inbounds i8, i8* %1512, i64 4
  %1533 = bitcast i8* %1532 to i32*
  store i32 %1531, i32* %1533, align 1, !tbaa !2432
  %1534 = extractelement <2 x i32> %1524, i32 0
  %1535 = getelementptr inbounds i8, i8* %1512, i64 8
  %1536 = bitcast i8* %1535 to i32*
  store i32 %1534, i32* %1536, align 1, !tbaa !2432
  %1537 = extractelement <2 x i32> %1524, i32 1
  %1538 = getelementptr inbounds i8, i8* %1512, i64 12
  %1539 = bitcast i8* %1538 to i32*
  store i32 %1537, i32* %1539, align 1, !tbaa !2432
  %1540 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1541 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1542 = bitcast %union.vec128_t* %XMM1 to i8*
  %1543 = load i64, i64* %PC
  %1544 = add i64 %1543, 4
  store i64 %1544, i64* %PC
  %1545 = bitcast i8* %1541 to <2 x float>*
  %1546 = load <2 x float>, <2 x float>* %1545, align 1
  %1547 = getelementptr inbounds i8, i8* %1541, i64 8
  %1548 = bitcast i8* %1547 to <2 x i32>*
  %1549 = load <2 x i32>, <2 x i32>* %1548, align 1
  %1550 = bitcast i8* %1542 to <2 x float>*
  %1551 = load <2 x float>, <2 x float>* %1550, align 1
  %1552 = extractelement <2 x float> %1546, i32 0
  %1553 = extractelement <2 x float> %1551, i32 0
  %1554 = fmul float %1552, %1553
  %1555 = bitcast i8* %1540 to float*
  store float %1554, float* %1555, align 1, !tbaa !2432
  %1556 = bitcast <2 x float> %1546 to <2 x i32>
  %1557 = extractelement <2 x i32> %1556, i32 1
  %1558 = getelementptr inbounds i8, i8* %1540, i64 4
  %1559 = bitcast i8* %1558 to i32*
  store i32 %1557, i32* %1559, align 1, !tbaa !2432
  %1560 = extractelement <2 x i32> %1549, i32 0
  %1561 = getelementptr inbounds i8, i8* %1540, i64 8
  %1562 = bitcast i8* %1561 to i32*
  store i32 %1560, i32* %1562, align 1, !tbaa !2432
  %1563 = extractelement <2 x i32> %1549, i32 1
  %1564 = getelementptr inbounds i8, i8* %1540, i64 12
  %1565 = bitcast i8* %1564 to i32*
  store i32 %1563, i32* %1565, align 1, !tbaa !2432
  %1566 = load i64, i64* %RBP
  %1567 = sub i64 %1566, 32
  %1568 = load i64, i64* %PC
  %1569 = add i64 %1568, 4
  store i64 %1569, i64* %PC
  %1570 = inttoptr i64 %1567 to i64*
  %1571 = load i64, i64* %1570
  store i64 %1571, i64* %RAX, align 8, !tbaa !2428
  %1572 = load i64, i64* %RBP
  %1573 = sub i64 %1572, 48
  %1574 = load i64, i64* %PC
  %1575 = add i64 %1574, 3
  store i64 %1575, i64* %PC
  %1576 = inttoptr i64 %1573 to i32*
  %1577 = load i32, i32* %1576
  %1578 = zext i32 %1577 to i64
  store i64 %1578, i64* %RDX, align 8, !tbaa !2428
  %1579 = load i64, i64* %RDX
  %1580 = load i64, i64* %PC
  %1581 = add i64 %1580, 3
  store i64 %1581, i64* %PC
  %1582 = trunc i64 %1579 to i32
  %1583 = add i32 1, %1582
  %1584 = zext i32 %1583 to i64
  store i64 %1584, i64* %RDX, align 8, !tbaa !2428
  %1585 = icmp ult i32 %1583, %1582
  %1586 = icmp ult i32 %1583, 1
  %1587 = or i1 %1585, %1586
  %1588 = zext i1 %1587 to i8
  %1589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1588, i8* %1589, align 1, !tbaa !2434
  %1590 = and i32 %1583, 255
  %1591 = call i32 @llvm.ctpop.i32(i32 %1590) #16
  %1592 = trunc i32 %1591 to i8
  %1593 = and i8 %1592, 1
  %1594 = xor i8 %1593, 1
  %1595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1594, i8* %1595, align 1, !tbaa !2448
  %1596 = xor i64 1, %1579
  %1597 = trunc i64 %1596 to i32
  %1598 = xor i32 %1597, %1583
  %1599 = lshr i32 %1598, 4
  %1600 = trunc i32 %1599 to i8
  %1601 = and i8 %1600, 1
  %1602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1601, i8* %1602, align 1, !tbaa !2449
  %1603 = icmp eq i32 %1583, 0
  %1604 = zext i1 %1603 to i8
  %1605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1604, i8* %1605, align 1, !tbaa !2450
  %1606 = lshr i32 %1583, 31
  %1607 = trunc i32 %1606 to i8
  %1608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1607, i8* %1608, align 1, !tbaa !2451
  %1609 = lshr i32 %1582, 31
  %1610 = xor i32 %1606, %1609
  %1611 = add nuw nsw i32 %1610, %1606
  %1612 = icmp eq i32 %1611, 2
  %1613 = zext i1 %1612 to i8
  %1614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1613, i8* %1614, align 1, !tbaa !2452
  %1615 = load i32, i32* %EDX
  %1616 = zext i32 %1615 to i64
  %1617 = load i64, i64* %PC
  %1618 = add i64 %1617, 3
  store i64 %1618, i64* %PC
  %1619 = shl i64 %1616, 32
  %1620 = ashr exact i64 %1619, 32
  store i64 %1620, i64* %RCX, align 8, !tbaa !2428
  %1621 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1622 = load i64, i64* %RAX
  %1623 = load i64, i64* %RCX
  %1624 = mul i64 %1623, 8
  %1625 = add i64 %1622, 4
  %1626 = add i64 %1625, %1624
  %1627 = load i64, i64* %PC
  %1628 = add i64 %1627, 6
  store i64 %1628, i64* %PC
  %1629 = inttoptr i64 %1626 to float*
  %1630 = load float, float* %1629
  %1631 = bitcast i8* %1621 to float*
  store float %1630, float* %1631, align 1, !tbaa !2432
  %1632 = getelementptr inbounds i8, i8* %1621, i64 4
  %1633 = bitcast i8* %1632 to float*
  store float 0.000000e+00, float* %1633, align 1, !tbaa !2432
  %1634 = getelementptr inbounds i8, i8* %1621, i64 8
  %1635 = bitcast i8* %1634 to float*
  store float 0.000000e+00, float* %1635, align 1, !tbaa !2432
  %1636 = getelementptr inbounds i8, i8* %1621, i64 12
  %1637 = bitcast i8* %1636 to float*
  store float 0.000000e+00, float* %1637, align 1, !tbaa !2432
  %1638 = load i64, i64* %RBP
  %1639 = sub i64 %1638, 16
  %1640 = load i64, i64* %PC
  %1641 = add i64 %1640, 4
  store i64 %1641, i64* %PC
  %1642 = inttoptr i64 %1639 to i64*
  %1643 = load i64, i64* %1642
  store i64 %1643, i64* %RAX, align 8, !tbaa !2428
  %1644 = load i64, i64* %RBP
  %1645 = sub i64 %1644, 40
  %1646 = load i64, i64* %PC
  %1647 = add i64 %1646, 4
  store i64 %1647, i64* %PC
  %1648 = inttoptr i64 %1645 to i32*
  %1649 = load i32, i32* %1648
  %1650 = sext i32 %1649 to i64
  store i64 %1650, i64* %RCX, align 8, !tbaa !2428
  %1651 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %1652 = load i64, i64* %RAX
  %1653 = load i64, i64* %RCX
  %1654 = mul i64 %1653, 8
  %1655 = add i64 %1652, 4
  %1656 = add i64 %1655, %1654
  %1657 = load i64, i64* %PC
  %1658 = add i64 %1657, 6
  store i64 %1658, i64* %PC
  %1659 = inttoptr i64 %1656 to float*
  %1660 = load float, float* %1659
  %1661 = bitcast i8* %1651 to float*
  store float %1660, float* %1661, align 1, !tbaa !2432
  %1662 = getelementptr inbounds i8, i8* %1651, i64 4
  %1663 = bitcast i8* %1662 to float*
  store float 0.000000e+00, float* %1663, align 1, !tbaa !2432
  %1664 = getelementptr inbounds i8, i8* %1651, i64 8
  %1665 = bitcast i8* %1664 to float*
  store float 0.000000e+00, float* %1665, align 1, !tbaa !2432
  %1666 = getelementptr inbounds i8, i8* %1651, i64 12
  %1667 = bitcast i8* %1666 to float*
  store float 0.000000e+00, float* %1667, align 1, !tbaa !2432
  %1668 = load i64, i64* %RBP
  %1669 = sub i64 %1668, 16
  %1670 = load i64, i64* %PC
  %1671 = add i64 %1670, 4
  store i64 %1671, i64* %PC
  %1672 = inttoptr i64 %1669 to i64*
  %1673 = load i64, i64* %1672
  store i64 %1673, i64* %RAX, align 8, !tbaa !2428
  %1674 = load i64, i64* %RBP
  %1675 = sub i64 %1674, 40
  %1676 = load i64, i64* %PC
  %1677 = add i64 %1676, 3
  store i64 %1677, i64* %PC
  %1678 = inttoptr i64 %1675 to i32*
  %1679 = load i32, i32* %1678
  %1680 = zext i32 %1679 to i64
  store i64 %1680, i64* %RDX, align 8, !tbaa !2428
  %1681 = load i64, i64* %RDX
  %1682 = load i64, i64* %RBP
  %1683 = sub i64 %1682, 56
  %1684 = load i64, i64* %PC
  %1685 = add i64 %1684, 3
  store i64 %1685, i64* %PC
  %1686 = trunc i64 %1681 to i32
  %1687 = inttoptr i64 %1683 to i32*
  %1688 = load i32, i32* %1687
  %1689 = add i32 %1688, %1686
  %1690 = zext i32 %1689 to i64
  store i64 %1690, i64* %RDX, align 8, !tbaa !2428
  %1691 = icmp ult i32 %1689, %1686
  %1692 = icmp ult i32 %1689, %1688
  %1693 = or i1 %1691, %1692
  %1694 = zext i1 %1693 to i8
  %1695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1694, i8* %1695, align 1, !tbaa !2434
  %1696 = and i32 %1689, 255
  %1697 = call i32 @llvm.ctpop.i32(i32 %1696) #16
  %1698 = trunc i32 %1697 to i8
  %1699 = and i8 %1698, 1
  %1700 = xor i8 %1699, 1
  %1701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1700, i8* %1701, align 1, !tbaa !2448
  %1702 = xor i32 %1688, %1686
  %1703 = xor i32 %1702, %1689
  %1704 = lshr i32 %1703, 4
  %1705 = trunc i32 %1704 to i8
  %1706 = and i8 %1705, 1
  %1707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1706, i8* %1707, align 1, !tbaa !2449
  %1708 = icmp eq i32 %1689, 0
  %1709 = zext i1 %1708 to i8
  %1710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1709, i8* %1710, align 1, !tbaa !2450
  %1711 = lshr i32 %1689, 31
  %1712 = trunc i32 %1711 to i8
  %1713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1712, i8* %1713, align 1, !tbaa !2451
  %1714 = lshr i32 %1686, 31
  %1715 = lshr i32 %1688, 31
  %1716 = xor i32 %1711, %1714
  %1717 = xor i32 %1711, %1715
  %1718 = add nuw nsw i32 %1716, %1717
  %1719 = icmp eq i32 %1718, 2
  %1720 = zext i1 %1719 to i8
  %1721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1720, i8* %1721, align 1, !tbaa !2452
  %1722 = load i32, i32* %EDX
  %1723 = zext i32 %1722 to i64
  %1724 = load i64, i64* %PC
  %1725 = add i64 %1724, 3
  store i64 %1725, i64* %PC
  %1726 = shl i64 %1723, 32
  %1727 = ashr exact i64 %1726, 32
  store i64 %1727, i64* %RCX, align 8, !tbaa !2428
  %1728 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %1729 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %1730 = load i64, i64* %RAX
  %1731 = load i64, i64* %RCX
  %1732 = mul i64 %1731, 8
  %1733 = add i64 %1730, 4
  %1734 = add i64 %1733, %1732
  %1735 = load i64, i64* %PC
  %1736 = add i64 %1735, 6
  store i64 %1736, i64* %PC
  %1737 = bitcast i8* %1729 to <2 x float>*
  %1738 = load <2 x float>, <2 x float>* %1737, align 1
  %1739 = getelementptr inbounds i8, i8* %1729, i64 8
  %1740 = bitcast i8* %1739 to <2 x i32>*
  %1741 = load <2 x i32>, <2 x i32>* %1740, align 1
  %1742 = inttoptr i64 %1734 to float*
  %1743 = load float, float* %1742
  %1744 = extractelement <2 x float> %1738, i32 0
  %1745 = fsub float %1744, %1743
  %1746 = bitcast i8* %1728 to float*
  store float %1745, float* %1746, align 1, !tbaa !2432
  %1747 = bitcast <2 x float> %1738 to <2 x i32>
  %1748 = extractelement <2 x i32> %1747, i32 1
  %1749 = getelementptr inbounds i8, i8* %1728, i64 4
  %1750 = bitcast i8* %1749 to i32*
  store i32 %1748, i32* %1750, align 1, !tbaa !2432
  %1751 = extractelement <2 x i32> %1741, i32 0
  %1752 = getelementptr inbounds i8, i8* %1728, i64 8
  %1753 = bitcast i8* %1752 to i32*
  store i32 %1751, i32* %1753, align 1, !tbaa !2432
  %1754 = extractelement <2 x i32> %1741, i32 1
  %1755 = getelementptr inbounds i8, i8* %1728, i64 12
  %1756 = bitcast i8* %1755 to i32*
  store i32 %1754, i32* %1756, align 1, !tbaa !2432
  %1757 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1758 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1759 = bitcast %union.vec128_t* %XMM2 to i8*
  %1760 = load i64, i64* %PC
  %1761 = add i64 %1760, 4
  store i64 %1761, i64* %PC
  %1762 = bitcast i8* %1758 to <2 x float>*
  %1763 = load <2 x float>, <2 x float>* %1762, align 1
  %1764 = getelementptr inbounds i8, i8* %1758, i64 8
  %1765 = bitcast i8* %1764 to <2 x i32>*
  %1766 = load <2 x i32>, <2 x i32>* %1765, align 1
  %1767 = bitcast i8* %1759 to <2 x float>*
  %1768 = load <2 x float>, <2 x float>* %1767, align 1
  %1769 = extractelement <2 x float> %1763, i32 0
  %1770 = extractelement <2 x float> %1768, i32 0
  %1771 = fmul float %1769, %1770
  %1772 = bitcast i8* %1757 to float*
  store float %1771, float* %1772, align 1, !tbaa !2432
  %1773 = bitcast <2 x float> %1763 to <2 x i32>
  %1774 = extractelement <2 x i32> %1773, i32 1
  %1775 = getelementptr inbounds i8, i8* %1757, i64 4
  %1776 = bitcast i8* %1775 to i32*
  store i32 %1774, i32* %1776, align 1, !tbaa !2432
  %1777 = extractelement <2 x i32> %1766, i32 0
  %1778 = getelementptr inbounds i8, i8* %1757, i64 8
  %1779 = bitcast i8* %1778 to i32*
  store i32 %1777, i32* %1779, align 1, !tbaa !2432
  %1780 = extractelement <2 x i32> %1766, i32 1
  %1781 = getelementptr inbounds i8, i8* %1757, i64 12
  %1782 = bitcast i8* %1781 to i32*
  store i32 %1780, i32* %1782, align 1, !tbaa !2432
  %1783 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1784 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1785 = bitcast %union.vec128_t* %XMM1 to i8*
  %1786 = load i64, i64* %PC
  %1787 = add i64 %1786, 4
  store i64 %1787, i64* %PC
  %1788 = bitcast i8* %1784 to <2 x float>*
  %1789 = load <2 x float>, <2 x float>* %1788, align 1
  %1790 = getelementptr inbounds i8, i8* %1784, i64 8
  %1791 = bitcast i8* %1790 to <2 x i32>*
  %1792 = load <2 x i32>, <2 x i32>* %1791, align 1
  %1793 = bitcast i8* %1785 to <2 x float>*
  %1794 = load <2 x float>, <2 x float>* %1793, align 1
  %1795 = extractelement <2 x float> %1789, i32 0
  %1796 = extractelement <2 x float> %1794, i32 0
  %1797 = fsub float %1795, %1796
  %1798 = bitcast i8* %1783 to float*
  store float %1797, float* %1798, align 1, !tbaa !2432
  %1799 = bitcast <2 x float> %1789 to <2 x i32>
  %1800 = extractelement <2 x i32> %1799, i32 1
  %1801 = getelementptr inbounds i8, i8* %1783, i64 4
  %1802 = bitcast i8* %1801 to i32*
  store i32 %1800, i32* %1802, align 1, !tbaa !2432
  %1803 = extractelement <2 x i32> %1792, i32 0
  %1804 = getelementptr inbounds i8, i8* %1783, i64 8
  %1805 = bitcast i8* %1804 to i32*
  store i32 %1803, i32* %1805, align 1, !tbaa !2432
  %1806 = extractelement <2 x i32> %1792, i32 1
  %1807 = getelementptr inbounds i8, i8* %1783, i64 12
  %1808 = bitcast i8* %1807 to i32*
  store i32 %1806, i32* %1808, align 1, !tbaa !2432
  %1809 = load i64, i64* %RBP
  %1810 = sub i64 %1809, 24
  %1811 = load i64, i64* %PC
  %1812 = add i64 %1811, 4
  store i64 %1812, i64* %PC
  %1813 = inttoptr i64 %1810 to i64*
  %1814 = load i64, i64* %1813
  store i64 %1814, i64* %RAX, align 8, !tbaa !2428
  %1815 = load i64, i64* %RBP
  %1816 = sub i64 %1815, 40
  %1817 = load i64, i64* %PC
  %1818 = add i64 %1817, 3
  store i64 %1818, i64* %PC
  %1819 = inttoptr i64 %1816 to i32*
  %1820 = load i32, i32* %1819
  %1821 = zext i32 %1820 to i64
  store i64 %1821, i64* %RDX, align 8, !tbaa !2428
  %1822 = load i64, i64* %RDX
  %1823 = load i64, i64* %RBP
  %1824 = sub i64 %1823, 44
  %1825 = load i64, i64* %PC
  %1826 = add i64 %1825, 3
  store i64 %1826, i64* %PC
  %1827 = trunc i64 %1822 to i32
  %1828 = inttoptr i64 %1824 to i32*
  %1829 = load i32, i32* %1828
  %1830 = add i32 %1829, %1827
  %1831 = zext i32 %1830 to i64
  store i64 %1831, i64* %RDX, align 8, !tbaa !2428
  %1832 = icmp ult i32 %1830, %1827
  %1833 = icmp ult i32 %1830, %1829
  %1834 = or i1 %1832, %1833
  %1835 = zext i1 %1834 to i8
  %1836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1835, i8* %1836, align 1, !tbaa !2434
  %1837 = and i32 %1830, 255
  %1838 = call i32 @llvm.ctpop.i32(i32 %1837) #16
  %1839 = trunc i32 %1838 to i8
  %1840 = and i8 %1839, 1
  %1841 = xor i8 %1840, 1
  %1842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1841, i8* %1842, align 1, !tbaa !2448
  %1843 = xor i32 %1829, %1827
  %1844 = xor i32 %1843, %1830
  %1845 = lshr i32 %1844, 4
  %1846 = trunc i32 %1845 to i8
  %1847 = and i8 %1846, 1
  %1848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1847, i8* %1848, align 1, !tbaa !2449
  %1849 = icmp eq i32 %1830, 0
  %1850 = zext i1 %1849 to i8
  %1851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1850, i8* %1851, align 1, !tbaa !2450
  %1852 = lshr i32 %1830, 31
  %1853 = trunc i32 %1852 to i8
  %1854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1853, i8* %1854, align 1, !tbaa !2451
  %1855 = lshr i32 %1827, 31
  %1856 = lshr i32 %1829, 31
  %1857 = xor i32 %1852, %1855
  %1858 = xor i32 %1852, %1856
  %1859 = add nuw nsw i32 %1857, %1858
  %1860 = icmp eq i32 %1859, 2
  %1861 = zext i1 %1860 to i8
  %1862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1861, i8* %1862, align 1, !tbaa !2452
  %1863 = load i32, i32* %EDX
  %1864 = zext i32 %1863 to i64
  %1865 = load i64, i64* %PC
  %1866 = add i64 %1865, 3
  store i64 %1866, i64* %PC
  %1867 = shl i64 %1864, 32
  %1868 = ashr exact i64 %1867, 32
  store i64 %1868, i64* %RCX, align 8, !tbaa !2428
  %1869 = load i64, i64* %RAX
  %1870 = load i64, i64* %RCX
  %1871 = mul i64 %1870, 8
  %1872 = add i64 %1871, %1869
  %1873 = bitcast %union.vec128_t* %XMM0 to i8*
  %1874 = load i64, i64* %PC
  %1875 = add i64 %1874, 5
  store i64 %1875, i64* %PC
  %1876 = bitcast i8* %1873 to <2 x float>*
  %1877 = load <2 x float>, <2 x float>* %1876, align 1
  %1878 = extractelement <2 x float> %1877, i32 0
  %1879 = inttoptr i64 %1872 to float*
  store float %1878, float* %1879
  %1880 = load i64, i64* %RBP
  %1881 = sub i64 %1880, 32
  %1882 = load i64, i64* %PC
  %1883 = add i64 %1882, 4
  store i64 %1883, i64* %PC
  %1884 = inttoptr i64 %1881 to i64*
  %1885 = load i64, i64* %1884
  store i64 %1885, i64* %RAX, align 8, !tbaa !2428
  %1886 = load i64, i64* %RBP
  %1887 = sub i64 %1886, 48
  %1888 = load i64, i64* %PC
  %1889 = add i64 %1888, 3
  store i64 %1889, i64* %PC
  %1890 = inttoptr i64 %1887 to i32*
  %1891 = load i32, i32* %1890
  %1892 = zext i32 %1891 to i64
  store i64 %1892, i64* %RDX, align 8, !tbaa !2428
  %1893 = load i64, i64* %RDX
  %1894 = load i64, i64* %PC
  %1895 = add i64 %1894, 3
  store i64 %1895, i64* %PC
  %1896 = trunc i64 %1893 to i32
  %1897 = add i32 1, %1896
  %1898 = zext i32 %1897 to i64
  store i64 %1898, i64* %RDX, align 8, !tbaa !2428
  %1899 = icmp ult i32 %1897, %1896
  %1900 = icmp ult i32 %1897, 1
  %1901 = or i1 %1899, %1900
  %1902 = zext i1 %1901 to i8
  %1903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1902, i8* %1903, align 1, !tbaa !2434
  %1904 = and i32 %1897, 255
  %1905 = call i32 @llvm.ctpop.i32(i32 %1904) #16
  %1906 = trunc i32 %1905 to i8
  %1907 = and i8 %1906, 1
  %1908 = xor i8 %1907, 1
  %1909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1908, i8* %1909, align 1, !tbaa !2448
  %1910 = xor i64 1, %1893
  %1911 = trunc i64 %1910 to i32
  %1912 = xor i32 %1911, %1897
  %1913 = lshr i32 %1912, 4
  %1914 = trunc i32 %1913 to i8
  %1915 = and i8 %1914, 1
  %1916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1915, i8* %1916, align 1, !tbaa !2449
  %1917 = icmp eq i32 %1897, 0
  %1918 = zext i1 %1917 to i8
  %1919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1918, i8* %1919, align 1, !tbaa !2450
  %1920 = lshr i32 %1897, 31
  %1921 = trunc i32 %1920 to i8
  %1922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1921, i8* %1922, align 1, !tbaa !2451
  %1923 = lshr i32 %1896, 31
  %1924 = xor i32 %1920, %1923
  %1925 = add nuw nsw i32 %1924, %1920
  %1926 = icmp eq i32 %1925, 2
  %1927 = zext i1 %1926 to i8
  %1928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1927, i8* %1928, align 1, !tbaa !2452
  %1929 = load i32, i32* %EDX
  %1930 = zext i32 %1929 to i64
  %1931 = load i64, i64* %PC
  %1932 = add i64 %1931, 3
  store i64 %1932, i64* %PC
  %1933 = shl i64 %1930, 32
  %1934 = ashr exact i64 %1933, 32
  store i64 %1934, i64* %RCX, align 8, !tbaa !2428
  %1935 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1936 = load i64, i64* %RAX
  %1937 = load i64, i64* %RCX
  %1938 = mul i64 %1937, 8
  %1939 = add i64 %1938, %1936
  %1940 = load i64, i64* %PC
  %1941 = add i64 %1940, 5
  store i64 %1941, i64* %PC
  %1942 = inttoptr i64 %1939 to float*
  %1943 = load float, float* %1942
  %1944 = bitcast i8* %1935 to float*
  store float %1943, float* %1944, align 1, !tbaa !2432
  %1945 = getelementptr inbounds i8, i8* %1935, i64 4
  %1946 = bitcast i8* %1945 to float*
  store float 0.000000e+00, float* %1946, align 1, !tbaa !2432
  %1947 = getelementptr inbounds i8, i8* %1935, i64 8
  %1948 = bitcast i8* %1947 to float*
  store float 0.000000e+00, float* %1948, align 1, !tbaa !2432
  %1949 = getelementptr inbounds i8, i8* %1935, i64 12
  %1950 = bitcast i8* %1949 to float*
  store float 0.000000e+00, float* %1950, align 1, !tbaa !2432
  %1951 = load i64, i64* %RBP
  %1952 = sub i64 %1951, 16
  %1953 = load i64, i64* %PC
  %1954 = add i64 %1953, 4
  store i64 %1954, i64* %PC
  %1955 = inttoptr i64 %1952 to i64*
  %1956 = load i64, i64* %1955
  store i64 %1956, i64* %RAX, align 8, !tbaa !2428
  %1957 = load i64, i64* %RBP
  %1958 = sub i64 %1957, 40
  %1959 = load i64, i64* %PC
  %1960 = add i64 %1959, 4
  store i64 %1960, i64* %PC
  %1961 = inttoptr i64 %1958 to i32*
  %1962 = load i32, i32* %1961
  %1963 = sext i32 %1962 to i64
  store i64 %1963, i64* %RCX, align 8, !tbaa !2428
  %1964 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1965 = load i64, i64* %RAX
  %1966 = load i64, i64* %RCX
  %1967 = mul i64 %1966, 8
  %1968 = add i64 %1965, 4
  %1969 = add i64 %1968, %1967
  %1970 = load i64, i64* %PC
  %1971 = add i64 %1970, 6
  store i64 %1971, i64* %PC
  %1972 = inttoptr i64 %1969 to float*
  %1973 = load float, float* %1972
  %1974 = bitcast i8* %1964 to float*
  store float %1973, float* %1974, align 1, !tbaa !2432
  %1975 = getelementptr inbounds i8, i8* %1964, i64 4
  %1976 = bitcast i8* %1975 to float*
  store float 0.000000e+00, float* %1976, align 1, !tbaa !2432
  %1977 = getelementptr inbounds i8, i8* %1964, i64 8
  %1978 = bitcast i8* %1977 to float*
  store float 0.000000e+00, float* %1978, align 1, !tbaa !2432
  %1979 = getelementptr inbounds i8, i8* %1964, i64 12
  %1980 = bitcast i8* %1979 to float*
  store float 0.000000e+00, float* %1980, align 1, !tbaa !2432
  %1981 = load i64, i64* %RBP
  %1982 = sub i64 %1981, 16
  %1983 = load i64, i64* %PC
  %1984 = add i64 %1983, 4
  store i64 %1984, i64* %PC
  %1985 = inttoptr i64 %1982 to i64*
  %1986 = load i64, i64* %1985
  store i64 %1986, i64* %RAX, align 8, !tbaa !2428
  %1987 = load i64, i64* %RBP
  %1988 = sub i64 %1987, 40
  %1989 = load i64, i64* %PC
  %1990 = add i64 %1989, 3
  store i64 %1990, i64* %PC
  %1991 = inttoptr i64 %1988 to i32*
  %1992 = load i32, i32* %1991
  %1993 = zext i32 %1992 to i64
  store i64 %1993, i64* %RDX, align 8, !tbaa !2428
  %1994 = load i64, i64* %RDX
  %1995 = load i64, i64* %RBP
  %1996 = sub i64 %1995, 56
  %1997 = load i64, i64* %PC
  %1998 = add i64 %1997, 3
  store i64 %1998, i64* %PC
  %1999 = trunc i64 %1994 to i32
  %2000 = inttoptr i64 %1996 to i32*
  %2001 = load i32, i32* %2000
  %2002 = add i32 %2001, %1999
  %2003 = zext i32 %2002 to i64
  store i64 %2003, i64* %RDX, align 8, !tbaa !2428
  %2004 = icmp ult i32 %2002, %1999
  %2005 = icmp ult i32 %2002, %2001
  %2006 = or i1 %2004, %2005
  %2007 = zext i1 %2006 to i8
  %2008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2007, i8* %2008, align 1, !tbaa !2434
  %2009 = and i32 %2002, 255
  %2010 = call i32 @llvm.ctpop.i32(i32 %2009) #16
  %2011 = trunc i32 %2010 to i8
  %2012 = and i8 %2011, 1
  %2013 = xor i8 %2012, 1
  %2014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2013, i8* %2014, align 1, !tbaa !2448
  %2015 = xor i32 %2001, %1999
  %2016 = xor i32 %2015, %2002
  %2017 = lshr i32 %2016, 4
  %2018 = trunc i32 %2017 to i8
  %2019 = and i8 %2018, 1
  %2020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2019, i8* %2020, align 1, !tbaa !2449
  %2021 = icmp eq i32 %2002, 0
  %2022 = zext i1 %2021 to i8
  %2023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2022, i8* %2023, align 1, !tbaa !2450
  %2024 = lshr i32 %2002, 31
  %2025 = trunc i32 %2024 to i8
  %2026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2025, i8* %2026, align 1, !tbaa !2451
  %2027 = lshr i32 %1999, 31
  %2028 = lshr i32 %2001, 31
  %2029 = xor i32 %2024, %2027
  %2030 = xor i32 %2024, %2028
  %2031 = add nuw nsw i32 %2029, %2030
  %2032 = icmp eq i32 %2031, 2
  %2033 = zext i1 %2032 to i8
  %2034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2033, i8* %2034, align 1, !tbaa !2452
  %2035 = load i32, i32* %EDX
  %2036 = zext i32 %2035 to i64
  %2037 = load i64, i64* %PC
  %2038 = add i64 %2037, 3
  store i64 %2038, i64* %PC
  %2039 = shl i64 %2036, 32
  %2040 = ashr exact i64 %2039, 32
  store i64 %2040, i64* %RCX, align 8, !tbaa !2428
  %2041 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %2042 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %2043 = load i64, i64* %RAX
  %2044 = load i64, i64* %RCX
  %2045 = mul i64 %2044, 8
  %2046 = add i64 %2043, 4
  %2047 = add i64 %2046, %2045
  %2048 = load i64, i64* %PC
  %2049 = add i64 %2048, 6
  store i64 %2049, i64* %PC
  %2050 = bitcast i8* %2042 to <2 x float>*
  %2051 = load <2 x float>, <2 x float>* %2050, align 1
  %2052 = getelementptr inbounds i8, i8* %2042, i64 8
  %2053 = bitcast i8* %2052 to <2 x i32>*
  %2054 = load <2 x i32>, <2 x i32>* %2053, align 1
  %2055 = inttoptr i64 %2047 to float*
  %2056 = load float, float* %2055
  %2057 = extractelement <2 x float> %2051, i32 0
  %2058 = fsub float %2057, %2056
  %2059 = bitcast i8* %2041 to float*
  store float %2058, float* %2059, align 1, !tbaa !2432
  %2060 = bitcast <2 x float> %2051 to <2 x i32>
  %2061 = extractelement <2 x i32> %2060, i32 1
  %2062 = getelementptr inbounds i8, i8* %2041, i64 4
  %2063 = bitcast i8* %2062 to i32*
  store i32 %2061, i32* %2063, align 1, !tbaa !2432
  %2064 = extractelement <2 x i32> %2054, i32 0
  %2065 = getelementptr inbounds i8, i8* %2041, i64 8
  %2066 = bitcast i8* %2065 to i32*
  store i32 %2064, i32* %2066, align 1, !tbaa !2432
  %2067 = extractelement <2 x i32> %2054, i32 1
  %2068 = getelementptr inbounds i8, i8* %2041, i64 12
  %2069 = bitcast i8* %2068 to i32*
  store i32 %2067, i32* %2069, align 1, !tbaa !2432
  %2070 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2071 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2072 = bitcast %union.vec128_t* %XMM1 to i8*
  %2073 = load i64, i64* %PC
  %2074 = add i64 %2073, 4
  store i64 %2074, i64* %PC
  %2075 = bitcast i8* %2071 to <2 x float>*
  %2076 = load <2 x float>, <2 x float>* %2075, align 1
  %2077 = getelementptr inbounds i8, i8* %2071, i64 8
  %2078 = bitcast i8* %2077 to <2 x i32>*
  %2079 = load <2 x i32>, <2 x i32>* %2078, align 1
  %2080 = bitcast i8* %2072 to <2 x float>*
  %2081 = load <2 x float>, <2 x float>* %2080, align 1
  %2082 = extractelement <2 x float> %2076, i32 0
  %2083 = extractelement <2 x float> %2081, i32 0
  %2084 = fmul float %2082, %2083
  %2085 = bitcast i8* %2070 to float*
  store float %2084, float* %2085, align 1, !tbaa !2432
  %2086 = bitcast <2 x float> %2076 to <2 x i32>
  %2087 = extractelement <2 x i32> %2086, i32 1
  %2088 = getelementptr inbounds i8, i8* %2070, i64 4
  %2089 = bitcast i8* %2088 to i32*
  store i32 %2087, i32* %2089, align 1, !tbaa !2432
  %2090 = extractelement <2 x i32> %2079, i32 0
  %2091 = getelementptr inbounds i8, i8* %2070, i64 8
  %2092 = bitcast i8* %2091 to i32*
  store i32 %2090, i32* %2092, align 1, !tbaa !2432
  %2093 = extractelement <2 x i32> %2079, i32 1
  %2094 = getelementptr inbounds i8, i8* %2070, i64 12
  %2095 = bitcast i8* %2094 to i32*
  store i32 %2093, i32* %2095, align 1, !tbaa !2432
  %2096 = load i64, i64* %RBP
  %2097 = sub i64 %2096, 32
  %2098 = load i64, i64* %PC
  %2099 = add i64 %2098, 4
  store i64 %2099, i64* %PC
  %2100 = inttoptr i64 %2097 to i64*
  %2101 = load i64, i64* %2100
  store i64 %2101, i64* %RAX, align 8, !tbaa !2428
  %2102 = load i64, i64* %RBP
  %2103 = sub i64 %2102, 48
  %2104 = load i64, i64* %PC
  %2105 = add i64 %2104, 3
  store i64 %2105, i64* %PC
  %2106 = inttoptr i64 %2103 to i32*
  %2107 = load i32, i32* %2106
  %2108 = zext i32 %2107 to i64
  store i64 %2108, i64* %RDX, align 8, !tbaa !2428
  %2109 = load i64, i64* %RDX
  %2110 = load i64, i64* %PC
  %2111 = add i64 %2110, 3
  store i64 %2111, i64* %PC
  %2112 = trunc i64 %2109 to i32
  %2113 = add i32 1, %2112
  %2114 = zext i32 %2113 to i64
  store i64 %2114, i64* %RDX, align 8, !tbaa !2428
  %2115 = icmp ult i32 %2113, %2112
  %2116 = icmp ult i32 %2113, 1
  %2117 = or i1 %2115, %2116
  %2118 = zext i1 %2117 to i8
  %2119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2118, i8* %2119, align 1, !tbaa !2434
  %2120 = and i32 %2113, 255
  %2121 = call i32 @llvm.ctpop.i32(i32 %2120) #16
  %2122 = trunc i32 %2121 to i8
  %2123 = and i8 %2122, 1
  %2124 = xor i8 %2123, 1
  %2125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2124, i8* %2125, align 1, !tbaa !2448
  %2126 = xor i64 1, %2109
  %2127 = trunc i64 %2126 to i32
  %2128 = xor i32 %2127, %2113
  %2129 = lshr i32 %2128, 4
  %2130 = trunc i32 %2129 to i8
  %2131 = and i8 %2130, 1
  %2132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2131, i8* %2132, align 1, !tbaa !2449
  %2133 = icmp eq i32 %2113, 0
  %2134 = zext i1 %2133 to i8
  %2135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2134, i8* %2135, align 1, !tbaa !2450
  %2136 = lshr i32 %2113, 31
  %2137 = trunc i32 %2136 to i8
  %2138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2137, i8* %2138, align 1, !tbaa !2451
  %2139 = lshr i32 %2112, 31
  %2140 = xor i32 %2136, %2139
  %2141 = add nuw nsw i32 %2140, %2136
  %2142 = icmp eq i32 %2141, 2
  %2143 = zext i1 %2142 to i8
  %2144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2143, i8* %2144, align 1, !tbaa !2452
  %2145 = load i32, i32* %EDX
  %2146 = zext i32 %2145 to i64
  %2147 = load i64, i64* %PC
  %2148 = add i64 %2147, 3
  store i64 %2148, i64* %PC
  %2149 = shl i64 %2146, 32
  %2150 = ashr exact i64 %2149, 32
  store i64 %2150, i64* %RCX, align 8, !tbaa !2428
  %2151 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %2152 = load i64, i64* %RAX
  %2153 = load i64, i64* %RCX
  %2154 = mul i64 %2153, 8
  %2155 = add i64 %2152, 4
  %2156 = add i64 %2155, %2154
  %2157 = load i64, i64* %PC
  %2158 = add i64 %2157, 6
  store i64 %2158, i64* %PC
  %2159 = inttoptr i64 %2156 to float*
  %2160 = load float, float* %2159
  %2161 = bitcast i8* %2151 to float*
  store float %2160, float* %2161, align 1, !tbaa !2432
  %2162 = getelementptr inbounds i8, i8* %2151, i64 4
  %2163 = bitcast i8* %2162 to float*
  store float 0.000000e+00, float* %2163, align 1, !tbaa !2432
  %2164 = getelementptr inbounds i8, i8* %2151, i64 8
  %2165 = bitcast i8* %2164 to float*
  store float 0.000000e+00, float* %2165, align 1, !tbaa !2432
  %2166 = getelementptr inbounds i8, i8* %2151, i64 12
  %2167 = bitcast i8* %2166 to float*
  store float 0.000000e+00, float* %2167, align 1, !tbaa !2432
  %2168 = load i64, i64* %RBP
  %2169 = sub i64 %2168, 16
  %2170 = load i64, i64* %PC
  %2171 = add i64 %2170, 4
  store i64 %2171, i64* %PC
  %2172 = inttoptr i64 %2169 to i64*
  %2173 = load i64, i64* %2172
  store i64 %2173, i64* %RAX, align 8, !tbaa !2428
  %2174 = load i64, i64* %RBP
  %2175 = sub i64 %2174, 40
  %2176 = load i64, i64* %PC
  %2177 = add i64 %2176, 4
  store i64 %2177, i64* %PC
  %2178 = inttoptr i64 %2175 to i32*
  %2179 = load i32, i32* %2178
  %2180 = sext i32 %2179 to i64
  store i64 %2180, i64* %RCX, align 8, !tbaa !2428
  %2181 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %2182 = load i64, i64* %RAX
  %2183 = load i64, i64* %RCX
  %2184 = mul i64 %2183, 8
  %2185 = add i64 %2184, %2182
  %2186 = load i64, i64* %PC
  %2187 = add i64 %2186, 5
  store i64 %2187, i64* %PC
  %2188 = inttoptr i64 %2185 to float*
  %2189 = load float, float* %2188
  %2190 = bitcast i8* %2181 to float*
  store float %2189, float* %2190, align 1, !tbaa !2432
  %2191 = getelementptr inbounds i8, i8* %2181, i64 4
  %2192 = bitcast i8* %2191 to float*
  store float 0.000000e+00, float* %2192, align 1, !tbaa !2432
  %2193 = getelementptr inbounds i8, i8* %2181, i64 8
  %2194 = bitcast i8* %2193 to float*
  store float 0.000000e+00, float* %2194, align 1, !tbaa !2432
  %2195 = getelementptr inbounds i8, i8* %2181, i64 12
  %2196 = bitcast i8* %2195 to float*
  store float 0.000000e+00, float* %2196, align 1, !tbaa !2432
  %2197 = load i64, i64* %RBP
  %2198 = sub i64 %2197, 16
  %2199 = load i64, i64* %PC
  %2200 = add i64 %2199, 4
  store i64 %2200, i64* %PC
  %2201 = inttoptr i64 %2198 to i64*
  %2202 = load i64, i64* %2201
  store i64 %2202, i64* %RAX, align 8, !tbaa !2428
  %2203 = load i64, i64* %RBP
  %2204 = sub i64 %2203, 40
  %2205 = load i64, i64* %PC
  %2206 = add i64 %2205, 3
  store i64 %2206, i64* %PC
  %2207 = inttoptr i64 %2204 to i32*
  %2208 = load i32, i32* %2207
  %2209 = zext i32 %2208 to i64
  store i64 %2209, i64* %RDX, align 8, !tbaa !2428
  %2210 = load i64, i64* %RDX
  %2211 = load i64, i64* %RBP
  %2212 = sub i64 %2211, 56
  %2213 = load i64, i64* %PC
  %2214 = add i64 %2213, 3
  store i64 %2214, i64* %PC
  %2215 = trunc i64 %2210 to i32
  %2216 = inttoptr i64 %2212 to i32*
  %2217 = load i32, i32* %2216
  %2218 = add i32 %2217, %2215
  %2219 = zext i32 %2218 to i64
  store i64 %2219, i64* %RDX, align 8, !tbaa !2428
  %2220 = icmp ult i32 %2218, %2215
  %2221 = icmp ult i32 %2218, %2217
  %2222 = or i1 %2220, %2221
  %2223 = zext i1 %2222 to i8
  %2224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2223, i8* %2224, align 1, !tbaa !2434
  %2225 = and i32 %2218, 255
  %2226 = call i32 @llvm.ctpop.i32(i32 %2225) #16
  %2227 = trunc i32 %2226 to i8
  %2228 = and i8 %2227, 1
  %2229 = xor i8 %2228, 1
  %2230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2229, i8* %2230, align 1, !tbaa !2448
  %2231 = xor i32 %2217, %2215
  %2232 = xor i32 %2231, %2218
  %2233 = lshr i32 %2232, 4
  %2234 = trunc i32 %2233 to i8
  %2235 = and i8 %2234, 1
  %2236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2235, i8* %2236, align 1, !tbaa !2449
  %2237 = icmp eq i32 %2218, 0
  %2238 = zext i1 %2237 to i8
  %2239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2238, i8* %2239, align 1, !tbaa !2450
  %2240 = lshr i32 %2218, 31
  %2241 = trunc i32 %2240 to i8
  %2242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2241, i8* %2242, align 1, !tbaa !2451
  %2243 = lshr i32 %2215, 31
  %2244 = lshr i32 %2217, 31
  %2245 = xor i32 %2240, %2243
  %2246 = xor i32 %2240, %2244
  %2247 = add nuw nsw i32 %2245, %2246
  %2248 = icmp eq i32 %2247, 2
  %2249 = zext i1 %2248 to i8
  %2250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2249, i8* %2250, align 1, !tbaa !2452
  %2251 = load i32, i32* %EDX
  %2252 = zext i32 %2251 to i64
  %2253 = load i64, i64* %PC
  %2254 = add i64 %2253, 3
  store i64 %2254, i64* %PC
  %2255 = shl i64 %2252, 32
  %2256 = ashr exact i64 %2255, 32
  store i64 %2256, i64* %RCX, align 8, !tbaa !2428
  %2257 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %2258 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %2259 = load i64, i64* %RAX
  %2260 = load i64, i64* %RCX
  %2261 = mul i64 %2260, 8
  %2262 = add i64 %2261, %2259
  %2263 = load i64, i64* %PC
  %2264 = add i64 %2263, 5
  store i64 %2264, i64* %PC
  %2265 = bitcast i8* %2258 to <2 x float>*
  %2266 = load <2 x float>, <2 x float>* %2265, align 1
  %2267 = getelementptr inbounds i8, i8* %2258, i64 8
  %2268 = bitcast i8* %2267 to <2 x i32>*
  %2269 = load <2 x i32>, <2 x i32>* %2268, align 1
  %2270 = inttoptr i64 %2262 to float*
  %2271 = load float, float* %2270
  %2272 = extractelement <2 x float> %2266, i32 0
  %2273 = fsub float %2272, %2271
  %2274 = bitcast i8* %2257 to float*
  store float %2273, float* %2274, align 1, !tbaa !2432
  %2275 = bitcast <2 x float> %2266 to <2 x i32>
  %2276 = extractelement <2 x i32> %2275, i32 1
  %2277 = getelementptr inbounds i8, i8* %2257, i64 4
  %2278 = bitcast i8* %2277 to i32*
  store i32 %2276, i32* %2278, align 1, !tbaa !2432
  %2279 = extractelement <2 x i32> %2269, i32 0
  %2280 = getelementptr inbounds i8, i8* %2257, i64 8
  %2281 = bitcast i8* %2280 to i32*
  store i32 %2279, i32* %2281, align 1, !tbaa !2432
  %2282 = extractelement <2 x i32> %2269, i32 1
  %2283 = getelementptr inbounds i8, i8* %2257, i64 12
  %2284 = bitcast i8* %2283 to i32*
  store i32 %2282, i32* %2284, align 1, !tbaa !2432
  %2285 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %2286 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %2287 = bitcast %union.vec128_t* %XMM2 to i8*
  %2288 = load i64, i64* %PC
  %2289 = add i64 %2288, 4
  store i64 %2289, i64* %PC
  %2290 = bitcast i8* %2286 to <2 x float>*
  %2291 = load <2 x float>, <2 x float>* %2290, align 1
  %2292 = getelementptr inbounds i8, i8* %2286, i64 8
  %2293 = bitcast i8* %2292 to <2 x i32>*
  %2294 = load <2 x i32>, <2 x i32>* %2293, align 1
  %2295 = bitcast i8* %2287 to <2 x float>*
  %2296 = load <2 x float>, <2 x float>* %2295, align 1
  %2297 = extractelement <2 x float> %2291, i32 0
  %2298 = extractelement <2 x float> %2296, i32 0
  %2299 = fmul float %2297, %2298
  %2300 = bitcast i8* %2285 to float*
  store float %2299, float* %2300, align 1, !tbaa !2432
  %2301 = bitcast <2 x float> %2291 to <2 x i32>
  %2302 = extractelement <2 x i32> %2301, i32 1
  %2303 = getelementptr inbounds i8, i8* %2285, i64 4
  %2304 = bitcast i8* %2303 to i32*
  store i32 %2302, i32* %2304, align 1, !tbaa !2432
  %2305 = extractelement <2 x i32> %2294, i32 0
  %2306 = getelementptr inbounds i8, i8* %2285, i64 8
  %2307 = bitcast i8* %2306 to i32*
  store i32 %2305, i32* %2307, align 1, !tbaa !2432
  %2308 = extractelement <2 x i32> %2294, i32 1
  %2309 = getelementptr inbounds i8, i8* %2285, i64 12
  %2310 = bitcast i8* %2309 to i32*
  store i32 %2308, i32* %2310, align 1, !tbaa !2432
  %2311 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2312 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2313 = bitcast %union.vec128_t* %XMM1 to i8*
  %2314 = load i64, i64* %PC
  %2315 = add i64 %2314, 4
  store i64 %2315, i64* %PC
  %2316 = bitcast i8* %2312 to <2 x float>*
  %2317 = load <2 x float>, <2 x float>* %2316, align 1
  %2318 = getelementptr inbounds i8, i8* %2312, i64 8
  %2319 = bitcast i8* %2318 to <2 x i32>*
  %2320 = load <2 x i32>, <2 x i32>* %2319, align 1
  %2321 = bitcast i8* %2313 to <2 x float>*
  %2322 = load <2 x float>, <2 x float>* %2321, align 1
  %2323 = extractelement <2 x float> %2317, i32 0
  %2324 = extractelement <2 x float> %2322, i32 0
  %2325 = fadd float %2323, %2324
  %2326 = bitcast i8* %2311 to float*
  store float %2325, float* %2326, align 1, !tbaa !2432
  %2327 = bitcast <2 x float> %2317 to <2 x i32>
  %2328 = extractelement <2 x i32> %2327, i32 1
  %2329 = getelementptr inbounds i8, i8* %2311, i64 4
  %2330 = bitcast i8* %2329 to i32*
  store i32 %2328, i32* %2330, align 1, !tbaa !2432
  %2331 = extractelement <2 x i32> %2320, i32 0
  %2332 = getelementptr inbounds i8, i8* %2311, i64 8
  %2333 = bitcast i8* %2332 to i32*
  store i32 %2331, i32* %2333, align 1, !tbaa !2432
  %2334 = extractelement <2 x i32> %2320, i32 1
  %2335 = getelementptr inbounds i8, i8* %2311, i64 12
  %2336 = bitcast i8* %2335 to i32*
  store i32 %2334, i32* %2336, align 1, !tbaa !2432
  %2337 = load i64, i64* %RBP
  %2338 = sub i64 %2337, 24
  %2339 = load i64, i64* %PC
  %2340 = add i64 %2339, 4
  store i64 %2340, i64* %PC
  %2341 = inttoptr i64 %2338 to i64*
  %2342 = load i64, i64* %2341
  store i64 %2342, i64* %RAX, align 8, !tbaa !2428
  %2343 = load i64, i64* %RBP
  %2344 = sub i64 %2343, 40
  %2345 = load i64, i64* %PC
  %2346 = add i64 %2345, 3
  store i64 %2346, i64* %PC
  %2347 = inttoptr i64 %2344 to i32*
  %2348 = load i32, i32* %2347
  %2349 = zext i32 %2348 to i64
  store i64 %2349, i64* %RDX, align 8, !tbaa !2428
  %2350 = load i64, i64* %RDX
  %2351 = load i64, i64* %RBP
  %2352 = sub i64 %2351, 44
  %2353 = load i64, i64* %PC
  %2354 = add i64 %2353, 3
  store i64 %2354, i64* %PC
  %2355 = trunc i64 %2350 to i32
  %2356 = inttoptr i64 %2352 to i32*
  %2357 = load i32, i32* %2356
  %2358 = add i32 %2357, %2355
  %2359 = zext i32 %2358 to i64
  store i64 %2359, i64* %RDX, align 8, !tbaa !2428
  %2360 = icmp ult i32 %2358, %2355
  %2361 = icmp ult i32 %2358, %2357
  %2362 = or i1 %2360, %2361
  %2363 = zext i1 %2362 to i8
  %2364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2363, i8* %2364, align 1, !tbaa !2434
  %2365 = and i32 %2358, 255
  %2366 = call i32 @llvm.ctpop.i32(i32 %2365) #16
  %2367 = trunc i32 %2366 to i8
  %2368 = and i8 %2367, 1
  %2369 = xor i8 %2368, 1
  %2370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2369, i8* %2370, align 1, !tbaa !2448
  %2371 = xor i32 %2357, %2355
  %2372 = xor i32 %2371, %2358
  %2373 = lshr i32 %2372, 4
  %2374 = trunc i32 %2373 to i8
  %2375 = and i8 %2374, 1
  %2376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2375, i8* %2376, align 1, !tbaa !2449
  %2377 = icmp eq i32 %2358, 0
  %2378 = zext i1 %2377 to i8
  %2379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2378, i8* %2379, align 1, !tbaa !2450
  %2380 = lshr i32 %2358, 31
  %2381 = trunc i32 %2380 to i8
  %2382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2381, i8* %2382, align 1, !tbaa !2451
  %2383 = lshr i32 %2355, 31
  %2384 = lshr i32 %2357, 31
  %2385 = xor i32 %2380, %2383
  %2386 = xor i32 %2380, %2384
  %2387 = add nuw nsw i32 %2385, %2386
  %2388 = icmp eq i32 %2387, 2
  %2389 = zext i1 %2388 to i8
  %2390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2389, i8* %2390, align 1, !tbaa !2452
  %2391 = load i32, i32* %EDX
  %2392 = zext i32 %2391 to i64
  %2393 = load i64, i64* %PC
  %2394 = add i64 %2393, 3
  store i64 %2394, i64* %PC
  %2395 = shl i64 %2392, 32
  %2396 = ashr exact i64 %2395, 32
  store i64 %2396, i64* %RCX, align 8, !tbaa !2428
  %2397 = load i64, i64* %RAX
  %2398 = load i64, i64* %RCX
  %2399 = mul i64 %2398, 8
  %2400 = add i64 %2397, 4
  %2401 = add i64 %2400, %2399
  %2402 = bitcast %union.vec128_t* %XMM0 to i8*
  %2403 = load i64, i64* %PC
  %2404 = add i64 %2403, 6
  store i64 %2404, i64* %PC
  %2405 = bitcast i8* %2402 to <2 x float>*
  %2406 = load <2 x float>, <2 x float>* %2405, align 1
  %2407 = extractelement <2 x float> %2406, i32 0
  %2408 = inttoptr i64 %2401 to float*
  store float %2407, float* %2408
  %2409 = load i64, i64* %RBP
  %2410 = sub i64 %2409, 40
  %2411 = load i64, i64* %PC
  %2412 = add i64 %2411, 3
  store i64 %2412, i64* %PC
  %2413 = inttoptr i64 %2410 to i32*
  %2414 = load i32, i32* %2413
  %2415 = zext i32 %2414 to i64
  store i64 %2415, i64* %RDX, align 8, !tbaa !2428
  %2416 = load i64, i64* %RDX
  %2417 = load i64, i64* %PC
  %2418 = add i64 %2417, 3
  store i64 %2418, i64* %PC
  %2419 = trunc i64 %2416 to i32
  %2420 = add i32 1, %2419
  %2421 = zext i32 %2420 to i64
  store i64 %2421, i64* %RDX, align 8, !tbaa !2428
  %2422 = icmp ult i32 %2420, %2419
  %2423 = icmp ult i32 %2420, 1
  %2424 = or i1 %2422, %2423
  %2425 = zext i1 %2424 to i8
  %2426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2425, i8* %2426, align 1, !tbaa !2434
  %2427 = and i32 %2420, 255
  %2428 = call i32 @llvm.ctpop.i32(i32 %2427) #16
  %2429 = trunc i32 %2428 to i8
  %2430 = and i8 %2429, 1
  %2431 = xor i8 %2430, 1
  %2432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2431, i8* %2432, align 1, !tbaa !2448
  %2433 = xor i64 1, %2416
  %2434 = trunc i64 %2433 to i32
  %2435 = xor i32 %2434, %2420
  %2436 = lshr i32 %2435, 4
  %2437 = trunc i32 %2436 to i8
  %2438 = and i8 %2437, 1
  %2439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2438, i8* %2439, align 1, !tbaa !2449
  %2440 = icmp eq i32 %2420, 0
  %2441 = zext i1 %2440 to i8
  %2442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2441, i8* %2442, align 1, !tbaa !2450
  %2443 = lshr i32 %2420, 31
  %2444 = trunc i32 %2443 to i8
  %2445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2444, i8* %2445, align 1, !tbaa !2451
  %2446 = lshr i32 %2419, 31
  %2447 = xor i32 %2443, %2446
  %2448 = add nuw nsw i32 %2447, %2443
  %2449 = icmp eq i32 %2448, 2
  %2450 = zext i1 %2449 to i8
  %2451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2450, i8* %2451, align 1, !tbaa !2452
  %2452 = load i64, i64* %RBP
  %2453 = sub i64 %2452, 40
  %2454 = load i32, i32* %EDX
  %2455 = zext i32 %2454 to i64
  %2456 = load i64, i64* %PC
  %2457 = add i64 %2456, 3
  store i64 %2457, i64* %PC
  %2458 = inttoptr i64 %2453 to i32*
  store i32 %2454, i32* %2458
  %2459 = load i64, i64* %RBP
  %2460 = sub i64 %2459, 40
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
  %2469 = sub i64 %2468, 44
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
  %2479 = call i32 @llvm.ctpop.i32(i32 %2478) #16
  %2480 = trunc i32 %2479 to i8
  %2481 = and i8 %2480, 1
  %2482 = xor i8 %2481, 1
  %2483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2482, i8* %2483, align 1, !tbaa !2448
  %2484 = xor i32 %2473, %2466
  %2485 = xor i32 %2484, %2474
  %2486 = lshr i32 %2485, 4
  %2487 = trunc i32 %2486 to i8
  %2488 = and i8 %2487, 1
  %2489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2488, i8* %2489, align 1, !tbaa !2449
  %2490 = icmp eq i32 %2474, 0
  %2491 = zext i1 %2490 to i8
  %2492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2491, i8* %2492, align 1, !tbaa !2450
  %2493 = lshr i32 %2474, 31
  %2494 = trunc i32 %2493 to i8
  %2495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2494, i8* %2495, align 1, !tbaa !2451
  %2496 = lshr i32 %2466, 31
  %2497 = lshr i32 %2473, 31
  %2498 = xor i32 %2497, %2496
  %2499 = xor i32 %2493, %2496
  %2500 = add nuw nsw i32 %2499, %2498
  %2501 = icmp eq i32 %2500, 2
  %2502 = zext i1 %2501 to i8
  %2503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2502, i8* %2503, align 1, !tbaa !2452
  %2504 = load i64, i64* %PC
  %2505 = sub i64 %2504, 379
  %2506 = load i64, i64* %PC
  %2507 = add i64 %2506, 6
  %2508 = load i64, i64* %PC
  %2509 = add i64 %2508, 6
  store i64 %2509, i64* %PC
  %2510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2511 = load i8, i8* %2510, align 1, !tbaa !2450
  %2512 = icmp ne i8 %2511, 0
  %2513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2514 = load i8, i8* %2513, align 1, !tbaa !2451
  %2515 = icmp ne i8 %2514, 0
  %2516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2517 = load i8, i8* %2516, align 1, !tbaa !2452
  %2518 = icmp ne i8 %2517, 0
  %2519 = xor i1 %2515, %2518
  %2520 = or i1 %2512, %2519
  %2521 = zext i1 %2520 to i8
  store i8 %2521, i8* %BRANCH_TAKEN, align 1, !tbaa !2453
  %2522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2523 = select i1 %2520, i64 %2505, i64 %2507
  store i64 %2523, i64* %2522, align 8, !tbaa !2428
  %2524 = load i8, i8* %BRANCH_TAKEN
  %2525 = icmp eq i8 %2524, 1
  br i1 %2525, label %block_400a6e, label %block_400bef
}

; Function Attrs: noinline
define %struct.Memory* @sub_4004b0___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4004b0:
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
  %17 = call i32 @llvm.ctpop.i32(i32 %16) #16
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1, !tbaa !2448
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %22, align 1, !tbaa !2449
  %23 = icmp eq i8 %14, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1, !tbaa !2450
  %26 = lshr i8 %14, 7
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1, !tbaa !2451
  %28 = lshr i8 %14, 7
  %29 = xor i8 %26, %28
  %30 = add nuw nsw i8 %29, %28
  %31 = icmp eq i8 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1, !tbaa !2452
  %34 = load i64, i64* %PC
  %35 = add i64 %34, 25
  %36 = load i64, i64* %PC
  %37 = add i64 %36, 2
  %38 = load i64, i64* %PC
  %39 = add i64 %38, 2
  store i64 %39, i64* %PC
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %41 = load i8, i8* %40, align 1, !tbaa !2450
  %42 = icmp eq i8 %41, 0
  %43 = zext i1 %42 to i8
  store i8 %43, i8* %BRANCH_TAKEN, align 1, !tbaa !2453
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %45 = select i1 %42, i64 %35, i64 %37
  store i64 %45, i64* %44, align 8, !tbaa !2428
  %46 = load i8, i8* %BRANCH_TAKEN
  %47 = icmp eq i8 %46, 1
  br i1 %47, label %block_4004d0, label %block_4004b9

block_4004d0:                                     ; preds = %block_4004b0
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

block_4004b9:                                     ; preds = %block_4004b0
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
  %78 = call %struct.Memory* @sub_400440_deregister_tm_clones_renamed_(%struct.State* %0, i64 %77, %struct.Memory* %2)
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
define %struct.Memory* @sub_4003c8__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4003c8:
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
  %21 = call i32 @llvm.ctpop.i32(i32 %20) #16
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1, !tbaa !2448
  %26 = xor i64 8, %12
  %27 = xor i64 %26, %15
  %28 = lshr i64 %27, 4
  %29 = trunc i64 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1, !tbaa !2449
  %32 = icmp eq i64 %15, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1, !tbaa !2450
  %35 = lshr i64 %15, 63
  %36 = trunc i64 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1, !tbaa !2451
  %38 = lshr i64 %12, 63
  %39 = xor i64 %35, %38
  %40 = add nuw nsw i64 %39, %38
  %41 = icmp eq i64 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1, !tbaa !2452
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
  %55 = call i32 @llvm.ctpop.i32(i32 %54) #16
  %56 = trunc i32 %55 to i8
  %57 = and i8 %56, 1
  %58 = xor i8 %57, 1
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %58, i8* %59, align 1, !tbaa !2448
  %60 = icmp eq i64 %51, 0
  %61 = zext i1 %60 to i8
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %61, i8* %62, align 1, !tbaa !2450
  %63 = lshr i64 %51, 63
  %64 = trunc i64 %63 to i8
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %64, i8* %65, align 1, !tbaa !2451
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %66, align 1, !tbaa !2452
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %67, align 1, !tbaa !2449
  %68 = load i64, i64* %PC
  %69 = add i64 %68, 4
  %70 = load i64, i64* %PC
  %71 = add i64 %70, 2
  %72 = load i64, i64* %PC
  %73 = add i64 %72, 2
  store i64 %73, i64* %PC
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %75 = load i8, i8* %74, align 1, !tbaa !2450
  store i8 %75, i8* %BRANCH_TAKEN, align 1, !tbaa !2453
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %77 = icmp ne i8 %75, 0
  %78 = select i1 %77, i64 %69, i64 %71
  store i64 %78, i64* %76, align 8, !tbaa !2428
  %79 = load i8, i8* %BRANCH_TAKEN
  %80 = icmp eq i8 %79, 1
  br i1 %80, label %block_4003da, label %block_4003d8

block_4003d8:                                     ; preds = %block_4003c8
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
  br label %block_4003da

block_4003da:                                     ; preds = %block_4003d8, %block_4003c8
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4003c8 ], [ %92, %block_4003d8 ]
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
  %104 = call i32 @llvm.ctpop.i32(i32 %103) #16
  %105 = trunc i32 %104 to i8
  %106 = and i8 %105, 1
  %107 = xor i8 %106, 1
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %107, i8* %108, align 1, !tbaa !2448
  %109 = xor i64 8, %93
  %110 = xor i64 %109, %96
  %111 = lshr i64 %110, 4
  %112 = trunc i64 %111 to i8
  %113 = and i8 %112, 1
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %113, i8* %114, align 1, !tbaa !2449
  %115 = icmp eq i64 %96, 0
  %116 = zext i1 %115 to i8
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %116, i8* %117, align 1, !tbaa !2450
  %118 = lshr i64 %96, 63
  %119 = trunc i64 %118 to i8
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %119, i8* %120, align 1, !tbaa !2451
  %121 = lshr i64 %93, 63
  %122 = xor i64 %118, %121
  %123 = add nuw nsw i64 %122, %118
  %124 = icmp eq i64 %123, 2
  %125 = zext i1 %124 to i8
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %125, i8* %126, align 1, !tbaa !2452
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
define %struct.Memory* @sub_400cd0_Oscar(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400cd0:
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
  %64 = call i32 @llvm.ctpop.i32(i32 %63) #16
  %65 = trunc i32 %64 to i8
  %66 = and i8 %65, 1
  %67 = xor i8 %66, 1
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %67, i8* %68, align 1, !tbaa !2448
  %69 = xor i64 16, %55
  %70 = xor i64 %69, %58
  %71 = lshr i64 %70, 4
  %72 = trunc i64 %71 to i8
  %73 = and i8 %72, 1
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %73, i8* %74, align 1, !tbaa !2449
  %75 = icmp eq i64 %58, 0
  %76 = zext i1 %75 to i8
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %76, i8* %77, align 1, !tbaa !2450
  %78 = lshr i64 %58, 63
  %79 = trunc i64 %78 to i8
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %79, i8* %80, align 1, !tbaa !2451
  %81 = lshr i64 %55, 63
  %82 = xor i64 %78, %81
  %83 = add nuw nsw i64 %82, %81
  %84 = icmp eq i64 %83, 2
  %85 = zext i1 %84 to i8
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %85, i8* %86, align 1, !tbaa !2452
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
  %103 = call %struct.Memory* @sub_400780_Exptab_renamed_(%struct.State* %0, i64 %102, %struct.Memory* %2)
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
  br label %block_400cff

block_400cff:                                     ; preds = %block_400d0c, %block_400cd0
  %MEMORY.0 = phi %struct.Memory* [ %103, %block_400cd0 ], [ %447, %block_400d0c ]
  %111 = load i64, i64* %RBP
  %112 = sub i64 %111, 4
  %113 = load i64, i64* %PC
  %114 = add i64 %113, 7
  store i64 %114, i64* %PC
  %115 = inttoptr i64 %112 to i32*
  %116 = load i32, i32* %115
  %117 = sub i32 %116, 256
  %118 = icmp ult i32 %116, 256
  %119 = zext i1 %118 to i8
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %119, i8* %120, align 1, !tbaa !2434
  %121 = and i32 %117, 255
  %122 = call i32 @llvm.ctpop.i32(i32 %121) #16
  %123 = trunc i32 %122 to i8
  %124 = and i8 %123, 1
  %125 = xor i8 %124, 1
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %125, i8* %126, align 1, !tbaa !2448
  %127 = xor i32 %116, 256
  %128 = xor i32 %127, %117
  %129 = lshr i32 %128, 4
  %130 = trunc i32 %129 to i8
  %131 = and i8 %130, 1
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %131, i8* %132, align 1, !tbaa !2449
  %133 = icmp eq i32 %117, 0
  %134 = zext i1 %133 to i8
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %134, i8* %135, align 1, !tbaa !2450
  %136 = lshr i32 %117, 31
  %137 = trunc i32 %136 to i8
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %137, i8* %138, align 1, !tbaa !2451
  %139 = lshr i32 %116, 31
  %140 = xor i32 %136, %139
  %141 = add nuw nsw i32 %140, %139
  %142 = icmp eq i32 %141, 2
  %143 = zext i1 %142 to i8
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %143, i8* %144, align 1, !tbaa !2452
  %145 = load i64, i64* %PC
  %146 = add i64 %145, 166
  %147 = load i64, i64* %PC
  %148 = add i64 %147, 6
  %149 = load i64, i64* %PC
  %150 = add i64 %149, 6
  store i64 %150, i64* %PC
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %152 = load i8, i8* %151, align 1, !tbaa !2450
  %153 = icmp eq i8 %152, 0
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %155 = load i8, i8* %154, align 1, !tbaa !2451
  %156 = icmp ne i8 %155, 0
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %158 = load i8, i8* %157, align 1, !tbaa !2452
  %159 = icmp ne i8 %158, 0
  %160 = xor i1 %156, %159
  %161 = xor i1 %160, true
  %162 = and i1 %153, %161
  %163 = zext i1 %162 to i8
  store i8 %163, i8* %BRANCH_TAKEN, align 1, !tbaa !2453
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %165 = select i1 %162, i64 %146, i64 %148
  store i64 %165, i64* %164, align 8, !tbaa !2428
  %166 = load i8, i8* %BRANCH_TAKEN
  %167 = icmp eq i8 %166, 1
  %168 = load i64, i64* %RBP
  br i1 %167, label %block_400dac, label %block_400d0c

block_400dbd:                                     ; preds = %block_400db3
  %169 = add i64 %381, 5
  store i64 %169, i64* %PC
  store i64 256, i64* %RDI, align 8, !tbaa !2428
  %170 = load i64, i64* %PC
  %171 = add i64 %170, 10
  store i64 %171, i64* %PC
  store i64 ptrtoint (%z_type* @z to i64), i64* %RSI, align 8, !tbaa !2428
  %172 = load i64, i64* %PC
  %173 = add i64 %172, 10
  store i64 %173, i64* %PC
  store i64 ptrtoint (%w_type* @w to i64), i64* %RDX, align 8, !tbaa !2428
  %174 = load i64, i64* %PC
  %175 = add i64 %174, 10
  store i64 %175, i64* %PC
  store i64 ptrtoint (%e_type* @e to i64), i64* %RCX, align 8, !tbaa !2428
  %176 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %177 = load i64, i64* %PC
  %178 = add i64 %177, 8
  store i64 %178, i64* %PC
  %179 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_400ee0__rodata_type* @seg_400ee0__rodata to i64), i64 28) to float*)
  %180 = bitcast i8* %176 to float*
  store float %179, float* %180, align 1, !tbaa !2432
  %181 = getelementptr inbounds i8, i8* %176, i64 4
  %182 = bitcast i8* %181 to float*
  store float 0.000000e+00, float* %182, align 1, !tbaa !2432
  %183 = getelementptr inbounds i8, i8* %176, i64 8
  %184 = bitcast i8* %183 to float*
  store float 0.000000e+00, float* %184, align 1, !tbaa !2432
  %185 = getelementptr inbounds i8, i8* %176, i64 12
  %186 = bitcast i8* %185 to float*
  store float 0.000000e+00, float* %186, align 1, !tbaa !2432
  %187 = load i64, i64* %PC
  %188 = sub i64 %187, 968
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
  %199 = call %struct.Memory* @sub_400a20_Fft_renamed_(%struct.State* %0, i64 %198, %struct.Memory* %MEMORY.1)
  %200 = load i64, i64* %RBP
  %201 = sub i64 %200, 4
  %202 = load i64, i64* %PC
  %203 = add i64 %202, 3
  store i64 %203, i64* %PC
  %204 = inttoptr i64 %201 to i32*
  %205 = load i32, i32* %204
  %206 = zext i32 %205 to i64
  store i64 %206, i64* %RAX, align 8, !tbaa !2428
  %207 = load i64, i64* %RAX
  %208 = load i64, i64* %PC
  %209 = add i64 %208, 3
  store i64 %209, i64* %PC
  %210 = trunc i64 %207 to i32
  %211 = add i32 1, %210
  %212 = zext i32 %211 to i64
  store i64 %212, i64* %RAX, align 8, !tbaa !2428
  %213 = icmp ult i32 %211, %210
  %214 = icmp ult i32 %211, 1
  %215 = or i1 %213, %214
  %216 = zext i1 %215 to i8
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %216, i8* %217, align 1, !tbaa !2434
  %218 = and i32 %211, 255
  %219 = call i32 @llvm.ctpop.i32(i32 %218) #16
  %220 = trunc i32 %219 to i8
  %221 = and i8 %220, 1
  %222 = xor i8 %221, 1
  %223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %222, i8* %223, align 1, !tbaa !2448
  %224 = xor i64 1, %207
  %225 = trunc i64 %224 to i32
  %226 = xor i32 %225, %211
  %227 = lshr i32 %226, 4
  %228 = trunc i32 %227 to i8
  %229 = and i8 %228, 1
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %229, i8* %230, align 1, !tbaa !2449
  %231 = icmp eq i32 %211, 0
  %232 = zext i1 %231 to i8
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %232, i8* %233, align 1, !tbaa !2450
  %234 = lshr i32 %211, 31
  %235 = trunc i32 %234 to i8
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %235, i8* %236, align 1, !tbaa !2451
  %237 = lshr i32 %210, 31
  %238 = xor i32 %234, %237
  %239 = add nuw nsw i32 %238, %234
  %240 = icmp eq i32 %239, 2
  %241 = zext i1 %240 to i8
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %241, i8* %242, align 1, !tbaa !2452
  %243 = load i64, i64* %RBP
  %244 = sub i64 %243, 4
  %245 = load i32, i32* %EAX
  %246 = zext i32 %245 to i64
  %247 = load i64, i64* %PC
  %248 = add i64 %247, 3
  store i64 %248, i64* %PC
  %249 = inttoptr i64 %244 to i32*
  store i32 %245, i32* %249
  %250 = load i64, i64* %PC
  %251 = sub i64 %250, 67
  %252 = load i64, i64* %PC
  %253 = add i64 %252, 5
  store i64 %253, i64* %PC
  %254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %251, i64* %254, align 8, !tbaa !2428
  br label %block_400db3

block_400dfb:                                     ; preds = %block_400db3
  %255 = add i64 %381, 10
  store i64 %255, i64* %PC
  store i64 ptrtoint (%z_type* @z to i64), i64* %RDI, align 8, !tbaa !2428
  %256 = load i64, i64* %PC
  %257 = add i64 %256, 5
  store i64 %257, i64* %PC
  store i64 1, i64* %RSI, align 8, !tbaa !2428
  %258 = load i64, i64* %PC
  %259 = add i64 %258, 5
  store i64 %259, i64* %PC
  store i64 256, i64* %RDX, align 8, !tbaa !2428
  %260 = load i64, i64* %PC
  %261 = add i64 %260, 5
  store i64 %261, i64* %PC
  store i64 17, i64* %RCX, align 8, !tbaa !2428
  %262 = load i64, i64* %PC
  %263 = sub i64 %262, 1988
  %264 = load i64, i64* %PC
  %265 = add i64 %264, 5
  %266 = load i64, i64* %PC
  %267 = add i64 %266, 5
  store i64 %267, i64* %PC
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %269 = load i64, i64* %268, align 8, !tbaa !2428
  %270 = add i64 %269, -8
  %271 = inttoptr i64 %270 to i64*
  store i64 %265, i64* %271
  store i64 %270, i64* %268, align 8, !tbaa !2428
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %263, i64* %272, align 8, !tbaa !2428
  %273 = load i64, i64* %PC
  %274 = call %struct.Memory* @sub_400650_Printcomplex_renamed_(%struct.State* %0, i64 %273, %struct.Memory* %MEMORY.1)
  %275 = load i64, i64* %RSP
  %276 = load i64, i64* %PC
  %277 = add i64 %276, 4
  store i64 %277, i64* %PC
  %278 = add i64 16, %275
  store i64 %278, i64* %RSP, align 8, !tbaa !2428
  %279 = icmp ult i64 %278, %275
  %280 = icmp ult i64 %278, 16
  %281 = or i1 %279, %280
  %282 = zext i1 %281 to i8
  %283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %282, i8* %283, align 1, !tbaa !2434
  %284 = trunc i64 %278 to i32
  %285 = and i32 %284, 255
  %286 = call i32 @llvm.ctpop.i32(i32 %285) #16
  %287 = trunc i32 %286 to i8
  %288 = and i8 %287, 1
  %289 = xor i8 %288, 1
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %289, i8* %290, align 1, !tbaa !2448
  %291 = xor i64 16, %275
  %292 = xor i64 %291, %278
  %293 = lshr i64 %292, 4
  %294 = trunc i64 %293 to i8
  %295 = and i8 %294, 1
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %295, i8* %296, align 1, !tbaa !2449
  %297 = icmp eq i64 %278, 0
  %298 = zext i1 %297 to i8
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %298, i8* %299, align 1, !tbaa !2450
  %300 = lshr i64 %278, 63
  %301 = trunc i64 %300 to i8
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %301, i8* %302, align 1, !tbaa !2451
  %303 = lshr i64 %275, 63
  %304 = xor i64 %300, %303
  %305 = add nuw nsw i64 %304, %300
  %306 = icmp eq i64 %305, 2
  %307 = zext i1 %306 to i8
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %307, i8* %308, align 1, !tbaa !2452
  %309 = load i64, i64* %PC
  %310 = add i64 %309, 1
  store i64 %310, i64* %PC
  %311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %312 = load i64, i64* %311, align 8, !tbaa !2428
  %313 = add i64 %312, 8
  %314 = inttoptr i64 %312 to i64*
  %315 = load i64, i64* %314
  store i64 %315, i64* %RBP, align 8, !tbaa !2428
  store i64 %313, i64* %311, align 8, !tbaa !2428
  %316 = load i64, i64* %PC
  %317 = add i64 %316, 1
  store i64 %317, i64* %PC
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %320 = load i64, i64* %319, align 8, !tbaa !2428
  %321 = inttoptr i64 %320 to i64*
  %322 = load i64, i64* %321
  store i64 %322, i64* %318, align 8, !tbaa !2428
  %323 = add i64 %320, 8
  store i64 %323, i64* %319, align 8, !tbaa !2428
  ret %struct.Memory* %274

block_400db3:                                     ; preds = %block_400dac, %block_400dbd
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_400dac ], [ %199, %block_400dbd ]
  %324 = load i64, i64* %RBP
  %325 = sub i64 %324, 4
  %326 = load i64, i64* %PC
  %327 = add i64 %326, 4
  store i64 %327, i64* %PC
  %328 = inttoptr i64 %325 to i32*
  %329 = load i32, i32* %328
  %330 = sub i32 %329, 20
  %331 = icmp ult i32 %329, 20
  %332 = zext i1 %331 to i8
  %333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %332, i8* %333, align 1, !tbaa !2434
  %334 = and i32 %330, 255
  %335 = call i32 @llvm.ctpop.i32(i32 %334) #16
  %336 = trunc i32 %335 to i8
  %337 = and i8 %336, 1
  %338 = xor i8 %337, 1
  %339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %338, i8* %339, align 1, !tbaa !2448
  %340 = xor i32 %329, 20
  %341 = xor i32 %340, %330
  %342 = lshr i32 %341, 4
  %343 = trunc i32 %342 to i8
  %344 = and i8 %343, 1
  %345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %344, i8* %345, align 1, !tbaa !2449
  %346 = icmp eq i32 %330, 0
  %347 = zext i1 %346 to i8
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %347, i8* %348, align 1, !tbaa !2450
  %349 = lshr i32 %330, 31
  %350 = trunc i32 %349 to i8
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %350, i8* %351, align 1, !tbaa !2451
  %352 = lshr i32 %329, 31
  %353 = xor i32 %349, %352
  %354 = add nuw nsw i32 %353, %352
  %355 = icmp eq i32 %354, 2
  %356 = zext i1 %355 to i8
  %357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %356, i8* %357, align 1, !tbaa !2452
  %358 = load i64, i64* %PC
  %359 = add i64 %358, 68
  %360 = load i64, i64* %PC
  %361 = add i64 %360, 6
  %362 = load i64, i64* %PC
  %363 = add i64 %362, 6
  store i64 %363, i64* %PC
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %365 = load i8, i8* %364, align 1, !tbaa !2450
  %366 = icmp eq i8 %365, 0
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %368 = load i8, i8* %367, align 1, !tbaa !2451
  %369 = icmp ne i8 %368, 0
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %371 = load i8, i8* %370, align 1, !tbaa !2452
  %372 = icmp ne i8 %371, 0
  %373 = xor i1 %369, %372
  %374 = xor i1 %373, true
  %375 = and i1 %366, %374
  %376 = zext i1 %375 to i8
  store i8 %376, i8* %BRANCH_TAKEN, align 1, !tbaa !2453
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %378 = select i1 %375, i64 %359, i64 %361
  store i64 %378, i64* %377, align 8, !tbaa !2428
  %379 = load i8, i8* %BRANCH_TAKEN
  %380 = icmp eq i8 %379, 1
  %381 = load i64, i64* %PC
  br i1 %380, label %block_400dfb, label %block_400dbd

block_400dac:                                     ; preds = %block_400cff
  %382 = sub i64 %168, 4
  %383 = load i64, i64* %PC
  %384 = add i64 %383, 7
  store i64 %384, i64* %PC
  %385 = inttoptr i64 %382 to i32*
  store i32 1, i32* %385
  br label %block_400db3

block_400d0c:                                     ; preds = %block_400cff
  %386 = sub i64 %168, 8
  %387 = load i64, i64* %PC
  %388 = add i64 %387, 4
  store i64 %388, i64* %PC
  store i64 %386, i64* %RDI, align 8, !tbaa !2428
  %389 = load i64, i64* %PC
  %390 = add i64 %389, 10
  store i64 %390, i64* %PC
  store i64 ptrtoint (%zr_type* @zr to i64), i64* %RSI, align 8, !tbaa !2428
  %391 = load i64, i64* %PC
  %392 = add i64 %391, 8
  store i64 %392, i64* %PC
  %393 = load i64, i64* bitcast (%seed_type* @seed to i64*)
  store i64 %393, i64* %RAX, align 8, !tbaa !2428
  %394 = load i32, i32* %EAX
  %395 = zext i32 %394 to i64
  %396 = load i64, i64* %PC
  %397 = add i64 %396, 2
  store i64 %397, i64* %PC
  %398 = and i64 %395, 4294967295
  store i64 %398, i64* %RCX, align 8, !tbaa !2428
  %399 = load i64, i64* %RBP
  %400 = sub i64 %399, 8
  %401 = load i32, i32* %ECX
  %402 = zext i32 %401 to i64
  %403 = load i64, i64* %PC
  %404 = add i64 %403, 3
  store i64 %404, i64* %PC
  %405 = inttoptr i64 %400 to i32*
  store i32 %401, i32* %405
  %406 = load i64, i64* %PC
  %407 = sub i64 %406, 1527
  %408 = load i64, i64* %PC
  %409 = add i64 %408, 5
  %410 = load i64, i64* %PC
  %411 = add i64 %410, 5
  store i64 %411, i64* %PC
  %412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %413 = load i64, i64* %412, align 8, !tbaa !2428
  %414 = add i64 %413, -8
  %415 = inttoptr i64 %414 to i64*
  store i64 %409, i64* %415
  store i64 %414, i64* %412, align 8, !tbaa !2428
  %416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %407, i64* %416, align 8, !tbaa !2428
  %417 = load i64, i64* %PC
  %418 = call %struct.Memory* @sub_400730_Uniform11_renamed_(%struct.State* %0, i64 %417, %struct.Memory* %MEMORY.0)
  %419 = load i64, i64* %RBP
  %420 = sub i64 %419, 8
  %421 = load i64, i64* %PC
  %422 = add i64 %421, 4
  store i64 %422, i64* %PC
  store i64 %420, i64* %RDI, align 8, !tbaa !2428
  %423 = load i64, i64* %PC
  %424 = add i64 %423, 10
  store i64 %424, i64* %PC
  store i64 ptrtoint (%zi_type* @zi to i64), i64* %RSI, align 8, !tbaa !2428
  %425 = load i64, i64* %RBP
  %426 = sub i64 %425, 8
  %427 = load i64, i64* %PC
  %428 = add i64 %427, 4
  store i64 %428, i64* %PC
  %429 = inttoptr i64 %426 to i32*
  %430 = load i32, i32* %429
  %431 = sext i32 %430 to i64
  store i64 %431, i64* %RAX, align 8, !tbaa !2428
  %432 = load i64, i64* %RAX
  %433 = load i64, i64* %PC
  %434 = add i64 %433, 8
  store i64 %434, i64* %PC
  store i64 %432, i64* bitcast (%seed_type* @seed to i64*)
  %435 = load i64, i64* %PC
  %436 = sub i64 %435, 1558
  %437 = load i64, i64* %PC
  %438 = add i64 %437, 5
  %439 = load i64, i64* %PC
  %440 = add i64 %439, 5
  store i64 %440, i64* %PC
  %441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %442 = load i64, i64* %441, align 8, !tbaa !2428
  %443 = add i64 %442, -8
  %444 = inttoptr i64 %443 to i64*
  store i64 %438, i64* %444
  store i64 %443, i64* %441, align 8, !tbaa !2428
  %445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %436, i64* %445, align 8, !tbaa !2428
  %446 = load i64, i64* %PC
  %447 = call %struct.Memory* @sub_400730_Uniform11_renamed_(%struct.State* %0, i64 %446, %struct.Memory* %418)
  %448 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %449 = load i64, i64* %PC
  %450 = add i64 %449, 8
  store i64 %450, i64* %PC
  %451 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_400ee0__rodata_type* @seg_400ee0__rodata to i64), i64 32) to float*)
  %452 = bitcast i8* %448 to float*
  store float %451, float* %452, align 1, !tbaa !2432
  %453 = getelementptr inbounds i8, i8* %448, i64 4
  %454 = bitcast i8* %453 to float*
  store float 0.000000e+00, float* %454, align 1, !tbaa !2432
  %455 = getelementptr inbounds i8, i8* %448, i64 8
  %456 = bitcast i8* %455 to float*
  store float 0.000000e+00, float* %456, align 1, !tbaa !2432
  %457 = getelementptr inbounds i8, i8* %448, i64 12
  %458 = bitcast i8* %457 to float*
  store float 0.000000e+00, float* %458, align 1, !tbaa !2432
  %459 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %460 = load i64, i64* %PC
  %461 = add i64 %460, 8
  store i64 %461, i64* %PC
  %462 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_400ee0__rodata_type* @seg_400ee0__rodata to i64), i64 36) to float*)
  %463 = bitcast i8* %459 to float*
  store float %462, float* %463, align 1, !tbaa !2432
  %464 = getelementptr inbounds i8, i8* %459, i64 4
  %465 = bitcast i8* %464 to float*
  store float 0.000000e+00, float* %465, align 1, !tbaa !2432
  %466 = getelementptr inbounds i8, i8* %459, i64 8
  %467 = bitcast i8* %466 to float*
  store float 0.000000e+00, float* %467, align 1, !tbaa !2432
  %468 = getelementptr inbounds i8, i8* %459, i64 12
  %469 = bitcast i8* %468 to float*
  store float 0.000000e+00, float* %469, align 1, !tbaa !2432
  %470 = load i64, i64* %RBP
  %471 = sub i64 %470, 8
  %472 = load i64, i64* %PC
  %473 = add i64 %472, 4
  store i64 %473, i64* %PC
  %474 = inttoptr i64 %471 to i32*
  %475 = load i32, i32* %474
  %476 = sext i32 %475 to i64
  store i64 %476, i64* %RAX, align 8, !tbaa !2428
  %477 = load i64, i64* %RAX
  %478 = load i64, i64* %PC
  %479 = add i64 %478, 8
  store i64 %479, i64* %PC
  store i64 %477, i64* bitcast (%seed_type* @seed to i64*)
  %480 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %481 = bitcast %union.vec128_t* %XMM1 to i8*
  %482 = load i64, i64* %PC
  %483 = add i64 %482, 3
  store i64 %483, i64* %PC
  %484 = bitcast i8* %481 to <2 x i32>*
  %485 = load <2 x i32>, <2 x i32>* %484, align 1
  %486 = getelementptr inbounds i8, i8* %481, i64 8
  %487 = bitcast i8* %486 to <2 x i32>*
  %488 = load <2 x i32>, <2 x i32>* %487, align 1
  %489 = extractelement <2 x i32> %485, i32 0
  %490 = bitcast i8* %480 to i32*
  store i32 %489, i32* %490, align 1, !tbaa !2432
  %491 = extractelement <2 x i32> %485, i32 1
  %492 = getelementptr inbounds i8, i8* %480, i64 4
  %493 = bitcast i8* %492 to i32*
  store i32 %491, i32* %493, align 1, !tbaa !2432
  %494 = extractelement <2 x i32> %488, i32 0
  %495 = getelementptr inbounds i8, i8* %480, i64 8
  %496 = bitcast i8* %495 to i32*
  store i32 %494, i32* %496, align 1, !tbaa !2432
  %497 = extractelement <2 x i32> %488, i32 1
  %498 = getelementptr inbounds i8, i8* %480, i64 12
  %499 = bitcast i8* %498 to i32*
  store i32 %497, i32* %499, align 1, !tbaa !2432
  %500 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %501 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %502 = load i64, i64* %PC
  %503 = add i64 %502, 9
  store i64 %503, i64* %PC
  %504 = bitcast i8* %501 to <2 x float>*
  %505 = load <2 x float>, <2 x float>* %504, align 1
  %506 = getelementptr inbounds i8, i8* %501, i64 8
  %507 = bitcast i8* %506 to <2 x i32>*
  %508 = load <2 x i32>, <2 x i32>* %507, align 1
  %509 = load float, float* bitcast (%zr_type* @zr to float*)
  %510 = extractelement <2 x float> %505, i32 0
  %511 = fmul float %510, %509
  %512 = bitcast i8* %500 to float*
  store float %511, float* %512, align 1, !tbaa !2432
  %513 = bitcast <2 x float> %505 to <2 x i32>
  %514 = extractelement <2 x i32> %513, i32 1
  %515 = getelementptr inbounds i8, i8* %500, i64 4
  %516 = bitcast i8* %515 to i32*
  store i32 %514, i32* %516, align 1, !tbaa !2432
  %517 = extractelement <2 x i32> %508, i32 0
  %518 = getelementptr inbounds i8, i8* %500, i64 8
  %519 = bitcast i8* %518 to i32*
  store i32 %517, i32* %519, align 1, !tbaa !2432
  %520 = extractelement <2 x i32> %508, i32 1
  %521 = getelementptr inbounds i8, i8* %500, i64 12
  %522 = bitcast i8* %521 to i32*
  store i32 %520, i32* %522, align 1, !tbaa !2432
  %523 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %524 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %525 = bitcast %union.vec128_t* %XMM0 to i8*
  %526 = load i64, i64* %PC
  %527 = add i64 %526, 4
  store i64 %527, i64* %PC
  %528 = bitcast i8* %524 to <2 x float>*
  %529 = load <2 x float>, <2 x float>* %528, align 1
  %530 = getelementptr inbounds i8, i8* %524, i64 8
  %531 = bitcast i8* %530 to <2 x i32>*
  %532 = load <2 x i32>, <2 x i32>* %531, align 1
  %533 = bitcast i8* %525 to <2 x float>*
  %534 = load <2 x float>, <2 x float>* %533, align 1
  %535 = extractelement <2 x float> %529, i32 0
  %536 = extractelement <2 x float> %534, i32 0
  %537 = fsub float %535, %536
  %538 = bitcast i8* %523 to float*
  store float %537, float* %538, align 1, !tbaa !2432
  %539 = bitcast <2 x float> %529 to <2 x i32>
  %540 = extractelement <2 x i32> %539, i32 1
  %541 = getelementptr inbounds i8, i8* %523, i64 4
  %542 = bitcast i8* %541 to i32*
  store i32 %540, i32* %542, align 1, !tbaa !2432
  %543 = extractelement <2 x i32> %532, i32 0
  %544 = getelementptr inbounds i8, i8* %523, i64 8
  %545 = bitcast i8* %544 to i32*
  store i32 %543, i32* %545, align 1, !tbaa !2432
  %546 = extractelement <2 x i32> %532, i32 1
  %547 = getelementptr inbounds i8, i8* %523, i64 12
  %548 = bitcast i8* %547 to i32*
  store i32 %546, i32* %548, align 1, !tbaa !2432
  %549 = load i64, i64* %RBP
  %550 = sub i64 %549, 4
  %551 = load i64, i64* %PC
  %552 = add i64 %551, 4
  store i64 %552, i64* %PC
  %553 = inttoptr i64 %550 to i32*
  %554 = load i32, i32* %553
  %555 = sext i32 %554 to i64
  store i64 %555, i64* %RAX, align 8, !tbaa !2428
  %556 = load i64, i64* %RAX
  %557 = mul i64 %556, 8
  %558 = add i64 %557, ptrtoint (%z_type* @z to i64)
  %559 = bitcast %union.vec128_t* %XMM2 to i8*
  %560 = load i64, i64* %PC
  %561 = add i64 %560, 9
  store i64 %561, i64* %PC
  %562 = bitcast i8* %559 to <2 x float>*
  %563 = load <2 x float>, <2 x float>* %562, align 1
  %564 = extractelement <2 x float> %563, i32 0
  %565 = inttoptr i64 %558 to float*
  store float %564, float* %565
  %566 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %567 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %568 = load i64, i64* %PC
  %569 = add i64 %568, 9
  store i64 %569, i64* %PC
  %570 = bitcast i8* %567 to <2 x float>*
  %571 = load <2 x float>, <2 x float>* %570, align 1
  %572 = getelementptr inbounds i8, i8* %567, i64 8
  %573 = bitcast i8* %572 to <2 x i32>*
  %574 = load <2 x i32>, <2 x i32>* %573, align 1
  %575 = load float, float* bitcast (%zi_type* @zi to float*)
  %576 = extractelement <2 x float> %571, i32 0
  %577 = fmul float %576, %575
  %578 = bitcast i8* %566 to float*
  store float %577, float* %578, align 1, !tbaa !2432
  %579 = bitcast <2 x float> %571 to <2 x i32>
  %580 = extractelement <2 x i32> %579, i32 1
  %581 = getelementptr inbounds i8, i8* %566, i64 4
  %582 = bitcast i8* %581 to i32*
  store i32 %580, i32* %582, align 1, !tbaa !2432
  %583 = extractelement <2 x i32> %574, i32 0
  %584 = getelementptr inbounds i8, i8* %566, i64 8
  %585 = bitcast i8* %584 to i32*
  store i32 %583, i32* %585, align 1, !tbaa !2432
  %586 = extractelement <2 x i32> %574, i32 1
  %587 = getelementptr inbounds i8, i8* %566, i64 12
  %588 = bitcast i8* %587 to i32*
  store i32 %586, i32* %588, align 1, !tbaa !2432
  %589 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %590 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %591 = bitcast %union.vec128_t* %XMM0 to i8*
  %592 = load i64, i64* %PC
  %593 = add i64 %592, 4
  store i64 %593, i64* %PC
  %594 = bitcast i8* %590 to <2 x float>*
  %595 = load <2 x float>, <2 x float>* %594, align 1
  %596 = getelementptr inbounds i8, i8* %590, i64 8
  %597 = bitcast i8* %596 to <2 x i32>*
  %598 = load <2 x i32>, <2 x i32>* %597, align 1
  %599 = bitcast i8* %591 to <2 x float>*
  %600 = load <2 x float>, <2 x float>* %599, align 1
  %601 = extractelement <2 x float> %595, i32 0
  %602 = extractelement <2 x float> %600, i32 0
  %603 = fsub float %601, %602
  %604 = bitcast i8* %589 to float*
  store float %603, float* %604, align 1, !tbaa !2432
  %605 = bitcast <2 x float> %595 to <2 x i32>
  %606 = extractelement <2 x i32> %605, i32 1
  %607 = getelementptr inbounds i8, i8* %589, i64 4
  %608 = bitcast i8* %607 to i32*
  store i32 %606, i32* %608, align 1, !tbaa !2432
  %609 = extractelement <2 x i32> %598, i32 0
  %610 = getelementptr inbounds i8, i8* %589, i64 8
  %611 = bitcast i8* %610 to i32*
  store i32 %609, i32* %611, align 1, !tbaa !2432
  %612 = extractelement <2 x i32> %598, i32 1
  %613 = getelementptr inbounds i8, i8* %589, i64 12
  %614 = bitcast i8* %613 to i32*
  store i32 %612, i32* %614, align 1, !tbaa !2432
  %615 = load i64, i64* %RBP
  %616 = sub i64 %615, 4
  %617 = load i64, i64* %PC
  %618 = add i64 %617, 4
  store i64 %618, i64* %PC
  %619 = inttoptr i64 %616 to i32*
  %620 = load i32, i32* %619
  %621 = sext i32 %620 to i64
  store i64 %621, i64* %RAX, align 8, !tbaa !2428
  %622 = load i64, i64* %RAX
  %623 = mul i64 %622, 8
  %624 = add i64 %623, add (i64 ptrtoint (%z_type* @z to i64), i64 4)
  %625 = bitcast %union.vec128_t* %XMM1 to i8*
  %626 = load i64, i64* %PC
  %627 = add i64 %626, 9
  store i64 %627, i64* %PC
  %628 = bitcast i8* %625 to <2 x float>*
  %629 = load <2 x float>, <2 x float>* %628, align 1
  %630 = extractelement <2 x float> %629, i32 0
  %631 = inttoptr i64 %624 to float*
  store float %630, float* %631
  %632 = load i64, i64* %RBP
  %633 = sub i64 %632, 4
  %634 = load i64, i64* %PC
  %635 = add i64 %634, 3
  store i64 %635, i64* %PC
  %636 = inttoptr i64 %633 to i32*
  %637 = load i32, i32* %636
  %638 = zext i32 %637 to i64
  store i64 %638, i64* %RAX, align 8, !tbaa !2428
  %639 = load i64, i64* %RAX
  %640 = load i64, i64* %PC
  %641 = add i64 %640, 3
  store i64 %641, i64* %PC
  %642 = trunc i64 %639 to i32
  %643 = add i32 1, %642
  %644 = zext i32 %643 to i64
  store i64 %644, i64* %RAX, align 8, !tbaa !2428
  %645 = icmp ult i32 %643, %642
  %646 = icmp ult i32 %643, 1
  %647 = or i1 %645, %646
  %648 = zext i1 %647 to i8
  %649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %648, i8* %649, align 1, !tbaa !2434
  %650 = and i32 %643, 255
  %651 = call i32 @llvm.ctpop.i32(i32 %650) #16
  %652 = trunc i32 %651 to i8
  %653 = and i8 %652, 1
  %654 = xor i8 %653, 1
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %654, i8* %655, align 1, !tbaa !2448
  %656 = xor i64 1, %639
  %657 = trunc i64 %656 to i32
  %658 = xor i32 %657, %643
  %659 = lshr i32 %658, 4
  %660 = trunc i32 %659 to i8
  %661 = and i8 %660, 1
  %662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %661, i8* %662, align 1, !tbaa !2449
  %663 = icmp eq i32 %643, 0
  %664 = zext i1 %663 to i8
  %665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %664, i8* %665, align 1, !tbaa !2450
  %666 = lshr i32 %643, 31
  %667 = trunc i32 %666 to i8
  %668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %667, i8* %668, align 1, !tbaa !2451
  %669 = lshr i32 %642, 31
  %670 = xor i32 %666, %669
  %671 = add nuw nsw i32 %670, %666
  %672 = icmp eq i32 %671, 2
  %673 = zext i1 %672 to i8
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %673, i8* %674, align 1, !tbaa !2452
  %675 = load i64, i64* %RBP
  %676 = sub i64 %675, 4
  %677 = load i32, i32* %EAX
  %678 = zext i32 %677 to i64
  %679 = load i64, i64* %PC
  %680 = add i64 %679, 3
  store i64 %680, i64* %PC
  %681 = inttoptr i64 %676 to i32*
  store i32 %677, i32* %681
  %682 = load i64, i64* %PC
  %683 = sub i64 %682, 168
  %684 = load i64, i64* %PC
  %685 = add i64 %684, 5
  store i64 %685, i64* %PC
  %686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %683, i64* %686, align 8, !tbaa !2428
  br label %block_400cff
}

; Function Attrs: noinline
define %struct.Memory* @sub_400400__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400400:
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
  %46 = call i32 @llvm.ctpop.i32(i32 %45) #16
  %47 = trunc i32 %46 to i8
  %48 = and i8 %47, 1
  %49 = xor i8 %48, 1
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %49, i8* %50, align 1, !tbaa !2448
  %51 = icmp eq i32 %42, 0
  %52 = zext i1 %51 to i8
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %52, i8* %53, align 1, !tbaa !2450
  %54 = lshr i32 %42, 31
  %55 = trunc i32 %54 to i8
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %55, i8* %56, align 1, !tbaa !2451
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %57, align 1, !tbaa !2452
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %58, align 1, !tbaa !2449
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
  %79 = call i32 @llvm.ctpop.i32(i32 %78) #16
  %80 = trunc i32 %79 to i8
  %81 = and i8 %80, 1
  %82 = xor i8 %81, 1
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %82, i8* %83, align 1, !tbaa !2448
  %84 = icmp eq i64 %75, 0
  %85 = zext i1 %84 to i8
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %85, i8* %86, align 1, !tbaa !2450
  %87 = lshr i64 %75, 63
  %88 = trunc i64 %87 to i8
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %88, i8* %89, align 1, !tbaa !2451
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %90, align 1, !tbaa !2452
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %91, align 1, !tbaa !2449
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
  store i64 ptrtoint (void ()* @callback_sub_400ed0___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  %108 = load i64, i64* %PC
  %109 = add i64 %108, 7
  store i64 %109, i64* %PC
  store i64 ptrtoint (void ()* @callback_sub_400e60___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
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
define %struct.Memory* @sub_400430__dl_relocate_static_pie(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400430:
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
define %struct.Memory* @sub_400470_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400470:
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
  %45 = call i32 @llvm.ctpop.i32(i32 %44) #16
  %46 = trunc i32 %45 to i8
  %47 = and i8 %46, 1
  %48 = xor i8 %47, 1
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %48, i8* %49, align 1, !tbaa !2448
  %50 = xor i64 ptrtoint (%__bss_start_type* @__bss_start to i64), %36
  %51 = xor i64 %50, %39
  %52 = lshr i64 %51, 4
  %53 = trunc i64 %52 to i8
  %54 = and i8 %53, 1
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %54, i8* %55, align 1, !tbaa !2449
  %56 = icmp eq i64 %39, 0
  %57 = zext i1 %56 to i8
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %57, i8* %58, align 1, !tbaa !2450
  %59 = lshr i64 %39, 63
  %60 = trunc i64 %59 to i8
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %60, i8* %61, align 1, !tbaa !2451
  %62 = lshr i64 %36, 63
  %63 = xor i64 lshr (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 63), %62
  %64 = xor i64 %59, %62
  %65 = add nuw nsw i64 %64, %63
  %66 = icmp eq i64 %65, 2
  %67 = zext i1 %66 to i8
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %67, i8* %68, align 1, !tbaa !2452
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
  store i8 %77, i8* %79, align 1, !tbaa !2453
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %81 = trunc i64 %78 to i32
  %82 = and i32 %81, 255
  %83 = call i32 @llvm.ctpop.i32(i32 %82) #16
  %84 = trunc i32 %83 to i8
  %85 = and i8 %84, 1
  %86 = xor i8 %85, 1
  store i8 %86, i8* %80, align 1, !tbaa !2453
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %87, align 1, !tbaa !2453
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %89 = icmp eq i64 %78, 0
  %90 = zext i1 %89 to i8
  store i8 %90, i8* %88, align 1, !tbaa !2453
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %92 = lshr i64 %78, 63
  %93 = trunc i64 %92 to i8
  store i8 %93, i8* %91, align 1, !tbaa !2453
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %94, align 1, !tbaa !2453
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
  store i8 %103, i8* %105, align 1, !tbaa !2453
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %107 = trunc i64 %104 to i32
  %108 = and i32 %107, 255
  %109 = call i32 @llvm.ctpop.i32(i32 %108) #16
  %110 = trunc i32 %109 to i8
  %111 = and i8 %110, 1
  %112 = xor i8 %111, 1
  store i8 %112, i8* %106, align 1, !tbaa !2453
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %113, align 1, !tbaa !2453
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %115 = icmp eq i64 %104, 0
  %116 = zext i1 %115 to i8
  store i8 %116, i8* %114, align 1, !tbaa !2453
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %117, align 1, !tbaa !2453
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %118, align 1, !tbaa !2453
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
  %131 = call i32 @llvm.ctpop.i32(i32 %130) #16
  %132 = trunc i32 %131 to i8
  %133 = and i8 %132, 1
  %134 = xor i8 %133, 1
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %134, i8* %135, align 1, !tbaa !2448
  %136 = xor i64 %120, %119
  %137 = xor i64 %136, %123
  %138 = lshr i64 %137, 4
  %139 = trunc i64 %138 to i8
  %140 = and i8 %139, 1
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %140, i8* %141, align 1, !tbaa !2449
  %142 = icmp eq i64 %123, 0
  %143 = zext i1 %142 to i8
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %143, i8* %144, align 1, !tbaa !2450
  %145 = lshr i64 %123, 63
  %146 = trunc i64 %145 to i8
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %146, i8* %147, align 1, !tbaa !2451
  %148 = lshr i64 %119, 63
  %149 = lshr i64 %120, 63
  %150 = xor i64 %145, %148
  %151 = xor i64 %145, %149
  %152 = add nuw nsw i64 %150, %151
  %153 = icmp eq i64 %152, 2
  %154 = zext i1 %153 to i8
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %154, i8* %155, align 1, !tbaa !2452
  %156 = load i64, i64* %RSI
  %157 = load i64, i64* %PC
  %158 = add i64 %157, 3
  store i64 %158, i64* %PC
  %159 = trunc i64 %156 to i8
  %160 = and i8 %159, 1
  %161 = ashr i64 %156, 1
  store i64 %161, i64* %RSI, align 8, !tbaa !2428
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %160, i8* %162, align 1, !tbaa !2453
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %164 = trunc i64 %161 to i32
  %165 = and i32 %164, 255
  %166 = call i32 @llvm.ctpop.i32(i32 %165) #16
  %167 = trunc i32 %166 to i8
  %168 = and i8 %167, 1
  %169 = xor i8 %168, 1
  store i8 %169, i8* %163, align 1, !tbaa !2453
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %170, align 1, !tbaa !2453
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %172 = icmp eq i64 %161, 0
  %173 = zext i1 %172 to i8
  store i8 %173, i8* %171, align 1, !tbaa !2453
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %175 = lshr i64 %161, 63
  %176 = trunc i64 %175 to i8
  store i8 %176, i8* %174, align 1, !tbaa !2453
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %177, align 1, !tbaa !2453
  %178 = load i64, i64* %PC
  %179 = add i64 %178, 23
  %180 = load i64, i64* %PC
  %181 = add i64 %180, 2
  %182 = load i64, i64* %PC
  %183 = add i64 %182, 2
  store i64 %183, i64* %PC
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %185 = load i8, i8* %184, align 1, !tbaa !2450
  store i8 %185, i8* %BRANCH_TAKEN, align 1, !tbaa !2453
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %187 = icmp ne i8 %185, 0
  %188 = select i1 %187, i64 %179, i64 %181
  store i64 %188, i64* %186, align 8, !tbaa !2428
  %189 = load i8, i8* %BRANCH_TAKEN
  %190 = icmp eq i8 %189, 1
  br i1 %190, label %block_4004a8, label %block_400493

block_40049d:                                     ; preds = %block_400493
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
    i64 4195498, label %block_4004aa
    i64 4195493, label %block_4004a5
  ]

block_4004aa:                                     ; preds = %block_40049d
  %205 = load i64, i64* %RAX
  %206 = load i64, i64* %RAX
  %207 = add i64 %206, %205
  %208 = load i16, i16* %AX
  %209 = zext i16 %208 to i64
  %210 = load i64, i64* %PC
  %211 = add i64 %210, 6
  store i64 %211, i64* %PC
  %212 = load i64, i64* %PC
  %213 = tail call %struct.Memory* @sub_4004b0___do_global_dtors_aux(%struct.State* %0, i64 %212, %struct.Memory* %2)
  ret %struct.Memory* %213

block_400493:                                     ; preds = %block_400470
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
  %224 = call i32 @llvm.ctpop.i32(i32 %223) #16
  %225 = trunc i32 %224 to i8
  %226 = and i8 %225, 1
  %227 = xor i8 %226, 1
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %227, i8* %228, align 1, !tbaa !2448
  %229 = icmp eq i64 %220, 0
  %230 = zext i1 %229 to i8
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %230, i8* %231, align 1, !tbaa !2450
  %232 = lshr i64 %220, 63
  %233 = trunc i64 %232 to i8
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %233, i8* %234, align 1, !tbaa !2451
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %235, align 1, !tbaa !2452
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %236, align 1, !tbaa !2449
  %237 = load i64, i64* %PC
  %238 = add i64 %237, 13
  %239 = load i64, i64* %PC
  %240 = add i64 %239, 2
  %241 = load i64, i64* %PC
  %242 = add i64 %241, 2
  store i64 %242, i64* %PC
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %244 = load i8, i8* %243, align 1, !tbaa !2450
  store i8 %244, i8* %BRANCH_TAKEN, align 1, !tbaa !2453
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %246 = icmp ne i8 %244, 0
  %247 = select i1 %246, i64 %238, i64 %240
  store i64 %247, i64* %245, align 8, !tbaa !2428
  %248 = load i8, i8* %BRANCH_TAKEN
  %249 = icmp eq i8 %248, 1
  br i1 %249, label %block_4004a8, label %block_40049d

block_4004a8:                                     ; preds = %block_4004a5, %block_400493, %block_400470
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400470 ], [ %2, %block_400493 ], [ %2, %block_4004a5 ]
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

block_4004a5:                                     ; preds = %block_40049d
  %265 = load i64, i64* %RAX
  %266 = load i32, i32* %EAX
  %267 = zext i32 %266 to i64
  %268 = load i64, i64* %PC
  %269 = add i64 %268, 3
  store i64 %269, i64* %PC
  br label %block_4004a8

; <label>:270:                                    ; preds = %block_40049d
  %271 = load i64, i64* %PC
  %272 = tail call %struct.Memory* @__remill_jump(%struct.State* %0, i64 %271, %struct.Memory* %2)
  ret %struct.Memory* %272
}

; Function Attrs: noinline
define %struct.Memory* @sub_400ed0___libc_csu_fini(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400ed0:
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
define %struct.Memory* @sub_400780_Exptab(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400780:
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
  %67 = call i32 @llvm.ctpop.i32(i32 %66) #16
  %68 = trunc i32 %67 to i8
  %69 = and i8 %68, 1
  %70 = xor i8 %69, 1
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %70, i8* %71, align 1, !tbaa !2448
  %72 = xor i64 160, %58
  %73 = xor i64 %72, %61
  %74 = lshr i64 %73, 4
  %75 = trunc i64 %74 to i8
  %76 = and i8 %75, 1
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %76, i8* %77, align 1, !tbaa !2449
  %78 = icmp eq i64 %61, 0
  %79 = zext i1 %78 to i8
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %79, i8* %80, align 1, !tbaa !2450
  %81 = lshr i64 %61, 63
  %82 = trunc i64 %81 to i8
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %82, i8* %83, align 1, !tbaa !2451
  %84 = lshr i64 %58, 63
  %85 = xor i64 %81, %84
  %86 = add nuw nsw i64 %85, %84
  %87 = icmp eq i64 %86, 2
  %88 = zext i1 %87 to i8
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %88, i8* %89, align 1, !tbaa !2452
  %90 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %91 = load i64, i64* %PC
  %92 = add i64 %91, 8
  store i64 %92, i64* %PC
  %93 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_400ee0__rodata_type* @seg_400ee0__rodata to i64), i64 12) to float*)
  %94 = bitcast i8* %90 to float*
  store float %93, float* %94, align 1, !tbaa !2432
  %95 = getelementptr inbounds i8, i8* %90, i64 4
  %96 = bitcast i8* %95 to float*
  store float 0.000000e+00, float* %96, align 1, !tbaa !2432
  %97 = getelementptr inbounds i8, i8* %90, i64 8
  %98 = bitcast i8* %97 to float*
  store float 0.000000e+00, float* %98, align 1, !tbaa !2432
  %99 = getelementptr inbounds i8, i8* %90, i64 12
  %100 = bitcast i8* %99 to float*
  store float 0.000000e+00, float* %100, align 1, !tbaa !2432
  %101 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %102 = load i64, i64* %PC
  %103 = add i64 %102, 8
  store i64 %103, i64* %PC
  %104 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_400ee0__rodata_type* @seg_400ee0__rodata to i64), i64 16) to float*)
  %105 = bitcast i8* %101 to float*
  store float %104, float* %105, align 1, !tbaa !2432
  %106 = getelementptr inbounds i8, i8* %101, i64 4
  %107 = bitcast i8* %106 to float*
  store float 0.000000e+00, float* %107, align 1, !tbaa !2432
  %108 = getelementptr inbounds i8, i8* %101, i64 8
  %109 = bitcast i8* %108 to float*
  store float 0.000000e+00, float* %109, align 1, !tbaa !2432
  %110 = getelementptr inbounds i8, i8* %101, i64 12
  %111 = bitcast i8* %110 to float*
  store float 0.000000e+00, float* %111, align 1, !tbaa !2432
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
  br label %block_4007b6

block_4009da:                                     ; preds = %block_4008fb
  %148 = load i64, i64* %PC
  %149 = add i64 %148, 5
  store i64 %149, i64* %PC
  store i64 25, i64* %RSI, align 8, !tbaa !2428
  %150 = load i64, i64* %RBP
  %151 = sub i64 %150, 136
  %152 = load i64, i64* %PC
  %153 = add i64 %152, 6
  store i64 %153, i64* %PC
  %154 = inttoptr i64 %151 to i32*
  %155 = load i32, i32* %154
  %156 = zext i32 %155 to i64
  store i64 %156, i64* %RAX, align 8, !tbaa !2428
  %157 = load i64, i64* %RAX
  %158 = load i64, i64* %PC
  %159 = add i64 %158, 3
  store i64 %159, i64* %PC
  %160 = trunc i64 %157 to i32
  %161 = add i32 1, %160
  %162 = zext i32 %161 to i64
  store i64 %162, i64* %RAX, align 8, !tbaa !2428
  %163 = icmp ult i32 %161, %160
  %164 = icmp ult i32 %161, 1
  %165 = or i1 %163, %164
  %166 = zext i1 %165 to i8
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %166, i8* %167, align 1, !tbaa !2434
  %168 = and i32 %161, 255
  %169 = call i32 @llvm.ctpop.i32(i32 %168) #16
  %170 = trunc i32 %169 to i8
  %171 = and i8 %170, 1
  %172 = xor i8 %171, 1
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %172, i8* %173, align 1, !tbaa !2448
  %174 = xor i64 1, %157
  %175 = trunc i64 %174 to i32
  %176 = xor i32 %175, %161
  %177 = lshr i32 %176, 4
  %178 = trunc i32 %177 to i8
  %179 = and i8 %178, 1
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %179, i8* %180, align 1, !tbaa !2449
  %181 = icmp eq i32 %161, 0
  %182 = zext i1 %181 to i8
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %182, i8* %183, align 1, !tbaa !2450
  %184 = lshr i32 %161, 31
  %185 = trunc i32 %184 to i8
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %185, i8* %186, align 1, !tbaa !2451
  %187 = lshr i32 %160, 31
  %188 = xor i32 %184, %187
  %189 = add nuw nsw i32 %188, %184
  %190 = icmp eq i32 %189, 2
  %191 = zext i1 %190 to i8
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %191, i8* %192, align 1, !tbaa !2452
  %193 = load i32, i32* %EAX
  %194 = zext i32 %193 to i64
  %195 = load i64, i64* %PC
  %196 = add i64 %195, 2
  store i64 %196, i64* %PC
  %197 = and i64 %194, 4294967295
  store i64 %197, i64* %RDI, align 8, !tbaa !2428
  %198 = load i64, i64* %PC
  %199 = sub i64 %198, 970
  %200 = load i64, i64* %PC
  %201 = add i64 %200, 5
  %202 = load i64, i64* %PC
  %203 = add i64 %202, 5
  store i64 %203, i64* %PC
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %205 = load i64, i64* %204, align 8, !tbaa !2428
  %206 = add i64 %205, -8
  %207 = inttoptr i64 %206 to i64*
  store i64 %201, i64* %207
  store i64 %206, i64* %204, align 8, !tbaa !2428
  %208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %199, i64* %208, align 8, !tbaa !2428
  %209 = load i64, i64* %PC
  %210 = call %struct.Memory* @sub_400620_Min0_renamed_(%struct.State* %0, i64 %209, %struct.Memory* %MEMORY.1)
  %211 = load i64, i64* %RBP
  %212 = sub i64 %211, 136
  %213 = load i32, i32* %EAX
  %214 = zext i32 %213 to i64
  %215 = load i64, i64* %PC
  %216 = add i64 %215, 6
  store i64 %216, i64* %PC
  %217 = inttoptr i64 %212 to i32*
  store i32 %213, i32* %217
  %218 = load i64, i64* %RBP
  %219 = sub i64 %218, 132
  %220 = load i64, i64* %PC
  %221 = add i64 %220, 6
  store i64 %221, i64* %PC
  %222 = inttoptr i64 %219 to i32*
  %223 = load i32, i32* %222
  %224 = zext i32 %223 to i64
  store i64 %224, i64* %RAX, align 8, !tbaa !2428
  %225 = load i64, i64* %RBP
  %226 = sub i64 %225, 144
  %227 = load i32, i32* %EAX
  %228 = zext i32 %227 to i64
  %229 = load i64, i64* %PC
  %230 = add i64 %229, 6
  store i64 %230, i64* %PC
  %231 = inttoptr i64 %226 to i32*
  store i32 %227, i32* %231
  %232 = load i64, i64* %RBP
  %233 = sub i64 %232, 144
  %234 = load i64, i64* %PC
  %235 = add i64 %234, 7
  store i64 %235, i64* %PC
  %236 = inttoptr i64 %233 to i32*
  %237 = load i32, i32* %236
  %238 = sub i32 %237, 1
  %239 = icmp ult i32 %237, 1
  %240 = zext i1 %239 to i8
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %240, i8* %241, align 1, !tbaa !2434
  %242 = and i32 %238, 255
  %243 = call i32 @llvm.ctpop.i32(i32 %242) #16
  %244 = trunc i32 %243 to i8
  %245 = and i8 %244, 1
  %246 = xor i8 %245, 1
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %246, i8* %247, align 1, !tbaa !2448
  %248 = xor i32 %237, 1
  %249 = xor i32 %248, %238
  %250 = lshr i32 %249, 4
  %251 = trunc i32 %250 to i8
  %252 = and i8 %251, 1
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %252, i8* %253, align 1, !tbaa !2449
  %254 = icmp eq i32 %238, 0
  %255 = zext i1 %254 to i8
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %255, i8* %256, align 1, !tbaa !2450
  %257 = lshr i32 %238, 31
  %258 = trunc i32 %257 to i8
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %258, i8* %259, align 1, !tbaa !2451
  %260 = lshr i32 %237, 31
  %261 = xor i32 %257, %260
  %262 = add nuw nsw i32 %261, %260
  %263 = icmp eq i32 %262, 2
  %264 = zext i1 %263 to i8
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %264, i8* %265, align 1, !tbaa !2452
  %266 = load i64, i64* %PC
  %267 = sub i64 %266, 315
  %268 = load i64, i64* %PC
  %269 = add i64 %268, 6
  %270 = load i64, i64* %PC
  %271 = add i64 %270, 6
  store i64 %271, i64* %PC
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %273 = load i8, i8* %272, align 1, !tbaa !2450
  %274 = icmp eq i8 %273, 0
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %276 = load i8, i8* %275, align 1, !tbaa !2451
  %277 = icmp ne i8 %276, 0
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %279 = load i8, i8* %278, align 1, !tbaa !2452
  %280 = icmp ne i8 %279, 0
  %281 = xor i1 %277, %280
  %282 = xor i1 %281, true
  %283 = and i1 %274, %282
  %284 = zext i1 %283 to i8
  store i8 %284, i8* %BRANCH_TAKEN, align 1, !tbaa !2453
  %285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %286 = select i1 %283, i64 %267, i64 %269
  store i64 %286, i64* %285, align 8, !tbaa !2428
  %287 = load i8, i8* %BRANCH_TAKEN
  %288 = icmp eq i8 %287, 1
  br i1 %288, label %block_4008cd, label %block_400a0e

block_4007b6:                                     ; preds = %block_4007c3, %block_400780
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400780 ], [ %1366, %block_4007c3 ]
  %289 = load i64, i64* %RBP
  %290 = sub i64 %289, 132
  %291 = load i64, i64* %PC
  %292 = add i64 %291, 7
  store i64 %292, i64* %PC
  %293 = inttoptr i64 %290 to i32*
  %294 = load i32, i32* %293
  %295 = sub i32 %294, 25
  %296 = icmp ult i32 %294, 25
  %297 = zext i1 %296 to i8
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %297, i8* %298, align 1, !tbaa !2434
  %299 = and i32 %295, 255
  %300 = call i32 @llvm.ctpop.i32(i32 %299) #16
  %301 = trunc i32 %300 to i8
  %302 = and i8 %301, 1
  %303 = xor i8 %302, 1
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %303, i8* %304, align 1, !tbaa !2448
  %305 = xor i32 %294, 25
  %306 = xor i32 %305, %295
  %307 = lshr i32 %306, 4
  %308 = trunc i32 %307 to i8
  %309 = and i8 %308, 1
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %309, i8* %310, align 1, !tbaa !2449
  %311 = icmp eq i32 %295, 0
  %312 = zext i1 %311 to i8
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %312, i8* %313, align 1, !tbaa !2450
  %314 = lshr i32 %295, 31
  %315 = trunc i32 %314 to i8
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %315, i8* %316, align 1, !tbaa !2451
  %317 = lshr i32 %294, 31
  %318 = xor i32 %314, %317
  %319 = add nuw nsw i32 %318, %317
  %320 = icmp eq i32 %319, 2
  %321 = zext i1 %320 to i8
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %321, i8* %322, align 1, !tbaa !2452
  %323 = load i64, i64* %PC
  %324 = add i64 %323, 93
  %325 = load i64, i64* %PC
  %326 = add i64 %325, 6
  %327 = load i64, i64* %PC
  %328 = add i64 %327, 6
  store i64 %328, i64* %PC
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %330 = load i8, i8* %329, align 1, !tbaa !2450
  %331 = icmp eq i8 %330, 0
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %333 = load i8, i8* %332, align 1, !tbaa !2451
  %334 = icmp ne i8 %333, 0
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %336 = load i8, i8* %335, align 1, !tbaa !2452
  %337 = icmp ne i8 %336, 0
  %338 = xor i1 %334, %337
  %339 = xor i1 %338, true
  %340 = and i1 %331, %339
  %341 = zext i1 %340 to i8
  store i8 %341, i8* %BRANCH_TAKEN, align 1, !tbaa !2453
  %342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %343 = select i1 %340, i64 %324, i64 %326
  store i64 %343, i64* %342, align 8, !tbaa !2428
  %344 = load i8, i8* %BRANCH_TAKEN
  %345 = icmp eq i8 %344, 1
  %346 = bitcast %"class.std::bitset"* %YMM0 to i8*
  br i1 %345, label %block_40081a, label %block_4007c3

block_4008fb:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit2, %block_4008fb
  %MEMORY.1 = phi %struct.Memory* [ %1293, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit2 ], [ %MEMORY.1, %block_4008fb ]
  %347 = load i64, i64* %RBP
  %348 = sub i64 %347, 136
  %349 = load i64, i64* %PC
  %350 = add i64 %349, 7
  store i64 %350, i64* %PC
  %351 = inttoptr i64 %348 to i32*
  %352 = load i32, i32* %351
  %353 = sext i32 %352 to i64
  store i64 %353, i64* %RAX, align 8, !tbaa !2428
  %354 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %355 = load i64, i64* %RBP
  %356 = load i64, i64* %RAX
  %357 = mul i64 %356, 4
  %358 = add i64 %355, -128
  %359 = add i64 %358, %357
  %360 = load i64, i64* %PC
  %361 = add i64 %360, 6
  store i64 %361, i64* %PC
  %362 = inttoptr i64 %359 to float*
  %363 = load float, float* %362
  %364 = bitcast i8* %354 to float*
  store float %363, float* %364, align 1, !tbaa !2432
  %365 = getelementptr inbounds i8, i8* %354, i64 4
  %366 = bitcast i8* %365 to float*
  store float 0.000000e+00, float* %366, align 1, !tbaa !2432
  %367 = getelementptr inbounds i8, i8* %354, i64 8
  %368 = bitcast i8* %367 to float*
  store float 0.000000e+00, float* %368, align 1, !tbaa !2432
  %369 = getelementptr inbounds i8, i8* %354, i64 12
  %370 = bitcast i8* %369 to float*
  store float 0.000000e+00, float* %370, align 1, !tbaa !2432
  %371 = load i64, i64* %RBP
  %372 = sub i64 %371, 16
  %373 = load i64, i64* %PC
  %374 = add i64 %373, 4
  store i64 %374, i64* %PC
  %375 = inttoptr i64 %372 to i64*
  %376 = load i64, i64* %375
  store i64 %376, i64* %RAX, align 8, !tbaa !2428
  %377 = load i64, i64* %RBP
  %378 = sub i64 %377, 140
  %379 = load i64, i64* %PC
  %380 = add i64 %379, 6
  store i64 %380, i64* %PC
  %381 = inttoptr i64 %378 to i32*
  %382 = load i32, i32* %381
  %383 = zext i32 %382 to i64
  store i64 %383, i64* %RCX, align 8, !tbaa !2428
  %384 = load i64, i64* %RCX
  %385 = load i64, i64* %RBP
  %386 = sub i64 %385, 132
  %387 = load i64, i64* %PC
  %388 = add i64 %387, 6
  store i64 %388, i64* %PC
  %389 = trunc i64 %384 to i32
  %390 = inttoptr i64 %386 to i32*
  %391 = load i32, i32* %390
  %392 = add i32 %391, %389
  %393 = zext i32 %392 to i64
  store i64 %393, i64* %RCX, align 8, !tbaa !2428
  %394 = icmp ult i32 %392, %389
  %395 = icmp ult i32 %392, %391
  %396 = or i1 %394, %395
  %397 = zext i1 %396 to i8
  %398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %397, i8* %398, align 1, !tbaa !2434
  %399 = and i32 %392, 255
  %400 = call i32 @llvm.ctpop.i32(i32 %399) #16
  %401 = trunc i32 %400 to i8
  %402 = and i8 %401, 1
  %403 = xor i8 %402, 1
  %404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %403, i8* %404, align 1, !tbaa !2448
  %405 = xor i32 %391, %389
  %406 = xor i32 %405, %392
  %407 = lshr i32 %406, 4
  %408 = trunc i32 %407 to i8
  %409 = and i8 %408, 1
  %410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %409, i8* %410, align 1, !tbaa !2449
  %411 = icmp eq i32 %392, 0
  %412 = zext i1 %411 to i8
  %413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %412, i8* %413, align 1, !tbaa !2450
  %414 = lshr i32 %392, 31
  %415 = trunc i32 %414 to i8
  %416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %415, i8* %416, align 1, !tbaa !2451
  %417 = lshr i32 %389, 31
  %418 = lshr i32 %391, 31
  %419 = xor i32 %414, %417
  %420 = xor i32 %414, %418
  %421 = add nuw nsw i32 %419, %420
  %422 = icmp eq i32 %421, 2
  %423 = zext i1 %422 to i8
  %424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %423, i8* %424, align 1, !tbaa !2452
  %425 = load i64, i64* %RCX
  %426 = load i64, i64* %PC
  %427 = add i64 %426, 3
  store i64 %427, i64* %PC
  %428 = trunc i64 %425 to i32
  %429 = add i32 1, %428
  %430 = zext i32 %429 to i64
  store i64 %430, i64* %RCX, align 8, !tbaa !2428
  %431 = icmp ult i32 %429, %428
  %432 = icmp ult i32 %429, 1
  %433 = or i1 %431, %432
  %434 = zext i1 %433 to i8
  %435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %434, i8* %435, align 1, !tbaa !2434
  %436 = and i32 %429, 255
  %437 = call i32 @llvm.ctpop.i32(i32 %436) #16
  %438 = trunc i32 %437 to i8
  %439 = and i8 %438, 1
  %440 = xor i8 %439, 1
  %441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %440, i8* %441, align 1, !tbaa !2448
  %442 = xor i64 1, %425
  %443 = trunc i64 %442 to i32
  %444 = xor i32 %443, %429
  %445 = lshr i32 %444, 4
  %446 = trunc i32 %445 to i8
  %447 = and i8 %446, 1
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %447, i8* %448, align 1, !tbaa !2449
  %449 = icmp eq i32 %429, 0
  %450 = zext i1 %449 to i8
  %451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %450, i8* %451, align 1, !tbaa !2450
  %452 = lshr i32 %429, 31
  %453 = trunc i32 %452 to i8
  %454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %453, i8* %454, align 1, !tbaa !2451
  %455 = lshr i32 %428, 31
  %456 = xor i32 %452, %455
  %457 = add nuw nsw i32 %456, %452
  %458 = icmp eq i32 %457, 2
  %459 = zext i1 %458 to i8
  %460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %459, i8* %460, align 1, !tbaa !2452
  %461 = load i32, i32* %ECX
  %462 = zext i32 %461 to i64
  %463 = load i64, i64* %PC
  %464 = add i64 %463, 3
  store i64 %464, i64* %PC
  %465 = shl i64 %462, 32
  %466 = ashr exact i64 %465, 32
  store i64 %466, i64* %RDX, align 8, !tbaa !2428
  %467 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %468 = load i64, i64* %RAX
  %469 = load i64, i64* %RDX
  %470 = mul i64 %469, 8
  %471 = add i64 %470, %468
  %472 = load i64, i64* %PC
  %473 = add i64 %472, 5
  store i64 %473, i64* %PC
  %474 = inttoptr i64 %471 to float*
  %475 = load float, float* %474
  %476 = bitcast i8* %467 to float*
  store float %475, float* %476, align 1, !tbaa !2432
  %477 = getelementptr inbounds i8, i8* %467, i64 4
  %478 = bitcast i8* %477 to float*
  store float 0.000000e+00, float* %478, align 1, !tbaa !2432
  %479 = getelementptr inbounds i8, i8* %467, i64 8
  %480 = bitcast i8* %479 to float*
  store float 0.000000e+00, float* %480, align 1, !tbaa !2432
  %481 = getelementptr inbounds i8, i8* %467, i64 12
  %482 = bitcast i8* %481 to float*
  store float 0.000000e+00, float* %482, align 1, !tbaa !2432
  %483 = load i64, i64* %RBP
  %484 = sub i64 %483, 16
  %485 = load i64, i64* %PC
  %486 = add i64 %485, 4
  store i64 %486, i64* %PC
  %487 = inttoptr i64 %484 to i64*
  %488 = load i64, i64* %487
  store i64 %488, i64* %RAX, align 8, !tbaa !2428
  %489 = load i64, i64* %RBP
  %490 = sub i64 %489, 140
  %491 = load i64, i64* %PC
  %492 = add i64 %491, 6
  store i64 %492, i64* %PC
  %493 = inttoptr i64 %490 to i32*
  %494 = load i32, i32* %493
  %495 = zext i32 %494 to i64
  store i64 %495, i64* %RCX, align 8, !tbaa !2428
  %496 = load i64, i64* %RCX
  %497 = load i64, i64* %RBP
  %498 = sub i64 %497, 132
  %499 = load i64, i64* %PC
  %500 = add i64 %499, 6
  store i64 %500, i64* %PC
  %501 = trunc i64 %496 to i32
  %502 = inttoptr i64 %498 to i32*
  %503 = load i32, i32* %502
  %504 = sub i32 %501, %503
  %505 = zext i32 %504 to i64
  store i64 %505, i64* %RCX, align 8, !tbaa !2428
  %506 = icmp ult i32 %501, %503
  %507 = zext i1 %506 to i8
  %508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %507, i8* %508, align 1, !tbaa !2434
  %509 = and i32 %504, 255
  %510 = call i32 @llvm.ctpop.i32(i32 %509) #16
  %511 = trunc i32 %510 to i8
  %512 = and i8 %511, 1
  %513 = xor i8 %512, 1
  %514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %513, i8* %514, align 1, !tbaa !2448
  %515 = xor i32 %503, %501
  %516 = xor i32 %515, %504
  %517 = lshr i32 %516, 4
  %518 = trunc i32 %517 to i8
  %519 = and i8 %518, 1
  %520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %519, i8* %520, align 1, !tbaa !2449
  %521 = icmp eq i32 %504, 0
  %522 = zext i1 %521 to i8
  %523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %522, i8* %523, align 1, !tbaa !2450
  %524 = lshr i32 %504, 31
  %525 = trunc i32 %524 to i8
  %526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %525, i8* %526, align 1, !tbaa !2451
  %527 = lshr i32 %501, 31
  %528 = lshr i32 %503, 31
  %529 = xor i32 %528, %527
  %530 = xor i32 %524, %527
  %531 = add nuw nsw i32 %530, %529
  %532 = icmp eq i32 %531, 2
  %533 = zext i1 %532 to i8
  %534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %533, i8* %534, align 1, !tbaa !2452
  %535 = load i64, i64* %RCX
  %536 = load i64, i64* %PC
  %537 = add i64 %536, 3
  store i64 %537, i64* %PC
  %538 = trunc i64 %535 to i32
  %539 = add i32 1, %538
  %540 = zext i32 %539 to i64
  store i64 %540, i64* %RCX, align 8, !tbaa !2428
  %541 = icmp ult i32 %539, %538
  %542 = icmp ult i32 %539, 1
  %543 = or i1 %541, %542
  %544 = zext i1 %543 to i8
  %545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %544, i8* %545, align 1, !tbaa !2434
  %546 = and i32 %539, 255
  %547 = call i32 @llvm.ctpop.i32(i32 %546) #16
  %548 = trunc i32 %547 to i8
  %549 = and i8 %548, 1
  %550 = xor i8 %549, 1
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %550, i8* %551, align 1, !tbaa !2448
  %552 = xor i64 1, %535
  %553 = trunc i64 %552 to i32
  %554 = xor i32 %553, %539
  %555 = lshr i32 %554, 4
  %556 = trunc i32 %555 to i8
  %557 = and i8 %556, 1
  %558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %557, i8* %558, align 1, !tbaa !2449
  %559 = icmp eq i32 %539, 0
  %560 = zext i1 %559 to i8
  %561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %560, i8* %561, align 1, !tbaa !2450
  %562 = lshr i32 %539, 31
  %563 = trunc i32 %562 to i8
  %564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %563, i8* %564, align 1, !tbaa !2451
  %565 = lshr i32 %538, 31
  %566 = xor i32 %562, %565
  %567 = add nuw nsw i32 %566, %562
  %568 = icmp eq i32 %567, 2
  %569 = zext i1 %568 to i8
  %570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %569, i8* %570, align 1, !tbaa !2452
  %571 = load i32, i32* %ECX
  %572 = zext i32 %571 to i64
  %573 = load i64, i64* %PC
  %574 = add i64 %573, 3
  store i64 %574, i64* %PC
  %575 = shl i64 %572, 32
  %576 = ashr exact i64 %575, 32
  store i64 %576, i64* %RDX, align 8, !tbaa !2428
  %577 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %578 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %579 = load i64, i64* %RAX
  %580 = load i64, i64* %RDX
  %581 = mul i64 %580, 8
  %582 = add i64 %581, %579
  %583 = load i64, i64* %PC
  %584 = add i64 %583, 5
  store i64 %584, i64* %PC
  %585 = bitcast i8* %578 to <2 x float>*
  %586 = load <2 x float>, <2 x float>* %585, align 1
  %587 = getelementptr inbounds i8, i8* %578, i64 8
  %588 = bitcast i8* %587 to <2 x i32>*
  %589 = load <2 x i32>, <2 x i32>* %588, align 1
  %590 = inttoptr i64 %582 to float*
  %591 = load float, float* %590
  %592 = extractelement <2 x float> %586, i32 0
  %593 = fadd float %592, %591
  %594 = bitcast i8* %577 to float*
  store float %593, float* %594, align 1, !tbaa !2432
  %595 = bitcast <2 x float> %586 to <2 x i32>
  %596 = extractelement <2 x i32> %595, i32 1
  %597 = getelementptr inbounds i8, i8* %577, i64 4
  %598 = bitcast i8* %597 to i32*
  store i32 %596, i32* %598, align 1, !tbaa !2432
  %599 = extractelement <2 x i32> %589, i32 0
  %600 = getelementptr inbounds i8, i8* %577, i64 8
  %601 = bitcast i8* %600 to i32*
  store i32 %599, i32* %601, align 1, !tbaa !2432
  %602 = extractelement <2 x i32> %589, i32 1
  %603 = getelementptr inbounds i8, i8* %577, i64 12
  %604 = bitcast i8* %603 to i32*
  store i32 %602, i32* %604, align 1, !tbaa !2432
  %605 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %606 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %607 = bitcast %union.vec128_t* %XMM1 to i8*
  %608 = load i64, i64* %PC
  %609 = add i64 %608, 4
  store i64 %609, i64* %PC
  %610 = bitcast i8* %606 to <2 x float>*
  %611 = load <2 x float>, <2 x float>* %610, align 1
  %612 = getelementptr inbounds i8, i8* %606, i64 8
  %613 = bitcast i8* %612 to <2 x i32>*
  %614 = load <2 x i32>, <2 x i32>* %613, align 1
  %615 = bitcast i8* %607 to <2 x float>*
  %616 = load <2 x float>, <2 x float>* %615, align 1
  %617 = extractelement <2 x float> %611, i32 0
  %618 = extractelement <2 x float> %616, i32 0
  %619 = fmul float %617, %618
  %620 = bitcast i8* %605 to float*
  store float %619, float* %620, align 1, !tbaa !2432
  %621 = bitcast <2 x float> %611 to <2 x i32>
  %622 = extractelement <2 x i32> %621, i32 1
  %623 = getelementptr inbounds i8, i8* %605, i64 4
  %624 = bitcast i8* %623 to i32*
  store i32 %622, i32* %624, align 1, !tbaa !2432
  %625 = extractelement <2 x i32> %614, i32 0
  %626 = getelementptr inbounds i8, i8* %605, i64 8
  %627 = bitcast i8* %626 to i32*
  store i32 %625, i32* %627, align 1, !tbaa !2432
  %628 = extractelement <2 x i32> %614, i32 1
  %629 = getelementptr inbounds i8, i8* %605, i64 12
  %630 = bitcast i8* %629 to i32*
  store i32 %628, i32* %630, align 1, !tbaa !2432
  %631 = load i64, i64* %RBP
  %632 = sub i64 %631, 16
  %633 = load i64, i64* %PC
  %634 = add i64 %633, 4
  store i64 %634, i64* %PC
  %635 = inttoptr i64 %632 to i64*
  %636 = load i64, i64* %635
  store i64 %636, i64* %RAX, align 8, !tbaa !2428
  %637 = load i64, i64* %RBP
  %638 = sub i64 %637, 140
  %639 = load i64, i64* %PC
  %640 = add i64 %639, 6
  store i64 %640, i64* %PC
  %641 = inttoptr i64 %638 to i32*
  %642 = load i32, i32* %641
  %643 = zext i32 %642 to i64
  store i64 %643, i64* %RCX, align 8, !tbaa !2428
  %644 = load i64, i64* %RCX
  %645 = load i64, i64* %PC
  %646 = add i64 %645, 3
  store i64 %646, i64* %PC
  %647 = trunc i64 %644 to i32
  %648 = add i32 1, %647
  %649 = zext i32 %648 to i64
  store i64 %649, i64* %RCX, align 8, !tbaa !2428
  %650 = icmp ult i32 %648, %647
  %651 = icmp ult i32 %648, 1
  %652 = or i1 %650, %651
  %653 = zext i1 %652 to i8
  %654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %653, i8* %654, align 1, !tbaa !2434
  %655 = and i32 %648, 255
  %656 = call i32 @llvm.ctpop.i32(i32 %655) #16
  %657 = trunc i32 %656 to i8
  %658 = and i8 %657, 1
  %659 = xor i8 %658, 1
  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %659, i8* %660, align 1, !tbaa !2448
  %661 = xor i64 1, %644
  %662 = trunc i64 %661 to i32
  %663 = xor i32 %662, %648
  %664 = lshr i32 %663, 4
  %665 = trunc i32 %664 to i8
  %666 = and i8 %665, 1
  %667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %666, i8* %667, align 1, !tbaa !2449
  %668 = icmp eq i32 %648, 0
  %669 = zext i1 %668 to i8
  %670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %669, i8* %670, align 1, !tbaa !2450
  %671 = lshr i32 %648, 31
  %672 = trunc i32 %671 to i8
  %673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %672, i8* %673, align 1, !tbaa !2451
  %674 = lshr i32 %647, 31
  %675 = xor i32 %671, %674
  %676 = add nuw nsw i32 %675, %671
  %677 = icmp eq i32 %676, 2
  %678 = zext i1 %677 to i8
  %679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %678, i8* %679, align 1, !tbaa !2452
  %680 = load i32, i32* %ECX
  %681 = zext i32 %680 to i64
  %682 = load i64, i64* %PC
  %683 = add i64 %682, 3
  store i64 %683, i64* %PC
  %684 = shl i64 %681, 32
  %685 = ashr exact i64 %684, 32
  store i64 %685, i64* %RDX, align 8, !tbaa !2428
  %686 = load i64, i64* %RAX
  %687 = load i64, i64* %RDX
  %688 = mul i64 %687, 8
  %689 = add i64 %688, %686
  %690 = bitcast %union.vec128_t* %XMM0 to i8*
  %691 = load i64, i64* %PC
  %692 = add i64 %691, 5
  store i64 %692, i64* %PC
  %693 = bitcast i8* %690 to <2 x float>*
  %694 = load <2 x float>, <2 x float>* %693, align 1
  %695 = extractelement <2 x float> %694, i32 0
  %696 = inttoptr i64 %689 to float*
  store float %695, float* %696
  %697 = load i64, i64* %RBP
  %698 = sub i64 %697, 136
  %699 = load i64, i64* %PC
  %700 = add i64 %699, 7
  store i64 %700, i64* %PC
  %701 = inttoptr i64 %698 to i32*
  %702 = load i32, i32* %701
  %703 = sext i32 %702 to i64
  store i64 %703, i64* %RAX, align 8, !tbaa !2428
  %704 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %705 = load i64, i64* %RBP
  %706 = load i64, i64* %RAX
  %707 = mul i64 %706, 4
  %708 = add i64 %705, -128
  %709 = add i64 %708, %707
  %710 = load i64, i64* %PC
  %711 = add i64 %710, 6
  store i64 %711, i64* %PC
  %712 = inttoptr i64 %709 to float*
  %713 = load float, float* %712
  %714 = bitcast i8* %704 to float*
  store float %713, float* %714, align 1, !tbaa !2432
  %715 = getelementptr inbounds i8, i8* %704, i64 4
  %716 = bitcast i8* %715 to float*
  store float 0.000000e+00, float* %716, align 1, !tbaa !2432
  %717 = getelementptr inbounds i8, i8* %704, i64 8
  %718 = bitcast i8* %717 to float*
  store float 0.000000e+00, float* %718, align 1, !tbaa !2432
  %719 = getelementptr inbounds i8, i8* %704, i64 12
  %720 = bitcast i8* %719 to float*
  store float 0.000000e+00, float* %720, align 1, !tbaa !2432
  %721 = load i64, i64* %RBP
  %722 = sub i64 %721, 16
  %723 = load i64, i64* %PC
  %724 = add i64 %723, 4
  store i64 %724, i64* %PC
  %725 = inttoptr i64 %722 to i64*
  %726 = load i64, i64* %725
  store i64 %726, i64* %RAX, align 8, !tbaa !2428
  %727 = load i64, i64* %RBP
  %728 = sub i64 %727, 140
  %729 = load i64, i64* %PC
  %730 = add i64 %729, 6
  store i64 %730, i64* %PC
  %731 = inttoptr i64 %728 to i32*
  %732 = load i32, i32* %731
  %733 = zext i32 %732 to i64
  store i64 %733, i64* %RCX, align 8, !tbaa !2428
  %734 = load i64, i64* %RCX
  %735 = load i64, i64* %RBP
  %736 = sub i64 %735, 132
  %737 = load i64, i64* %PC
  %738 = add i64 %737, 6
  store i64 %738, i64* %PC
  %739 = trunc i64 %734 to i32
  %740 = inttoptr i64 %736 to i32*
  %741 = load i32, i32* %740
  %742 = add i32 %741, %739
  %743 = zext i32 %742 to i64
  store i64 %743, i64* %RCX, align 8, !tbaa !2428
  %744 = icmp ult i32 %742, %739
  %745 = icmp ult i32 %742, %741
  %746 = or i1 %744, %745
  %747 = zext i1 %746 to i8
  %748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %747, i8* %748, align 1, !tbaa !2434
  %749 = and i32 %742, 255
  %750 = call i32 @llvm.ctpop.i32(i32 %749) #16
  %751 = trunc i32 %750 to i8
  %752 = and i8 %751, 1
  %753 = xor i8 %752, 1
  %754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %753, i8* %754, align 1, !tbaa !2448
  %755 = xor i32 %741, %739
  %756 = xor i32 %755, %742
  %757 = lshr i32 %756, 4
  %758 = trunc i32 %757 to i8
  %759 = and i8 %758, 1
  %760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %759, i8* %760, align 1, !tbaa !2449
  %761 = icmp eq i32 %742, 0
  %762 = zext i1 %761 to i8
  %763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %762, i8* %763, align 1, !tbaa !2450
  %764 = lshr i32 %742, 31
  %765 = trunc i32 %764 to i8
  %766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %765, i8* %766, align 1, !tbaa !2451
  %767 = lshr i32 %739, 31
  %768 = lshr i32 %741, 31
  %769 = xor i32 %764, %767
  %770 = xor i32 %764, %768
  %771 = add nuw nsw i32 %769, %770
  %772 = icmp eq i32 %771, 2
  %773 = zext i1 %772 to i8
  %774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %773, i8* %774, align 1, !tbaa !2452
  %775 = load i64, i64* %RCX
  %776 = load i64, i64* %PC
  %777 = add i64 %776, 3
  store i64 %777, i64* %PC
  %778 = trunc i64 %775 to i32
  %779 = add i32 1, %778
  %780 = zext i32 %779 to i64
  store i64 %780, i64* %RCX, align 8, !tbaa !2428
  %781 = icmp ult i32 %779, %778
  %782 = icmp ult i32 %779, 1
  %783 = or i1 %781, %782
  %784 = zext i1 %783 to i8
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %784, i8* %785, align 1, !tbaa !2434
  %786 = and i32 %779, 255
  %787 = call i32 @llvm.ctpop.i32(i32 %786) #16
  %788 = trunc i32 %787 to i8
  %789 = and i8 %788, 1
  %790 = xor i8 %789, 1
  %791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %790, i8* %791, align 1, !tbaa !2448
  %792 = xor i64 1, %775
  %793 = trunc i64 %792 to i32
  %794 = xor i32 %793, %779
  %795 = lshr i32 %794, 4
  %796 = trunc i32 %795 to i8
  %797 = and i8 %796, 1
  %798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %797, i8* %798, align 1, !tbaa !2449
  %799 = icmp eq i32 %779, 0
  %800 = zext i1 %799 to i8
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %800, i8* %801, align 1, !tbaa !2450
  %802 = lshr i32 %779, 31
  %803 = trunc i32 %802 to i8
  %804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %803, i8* %804, align 1, !tbaa !2451
  %805 = lshr i32 %778, 31
  %806 = xor i32 %802, %805
  %807 = add nuw nsw i32 %806, %802
  %808 = icmp eq i32 %807, 2
  %809 = zext i1 %808 to i8
  %810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %809, i8* %810, align 1, !tbaa !2452
  %811 = load i32, i32* %ECX
  %812 = zext i32 %811 to i64
  %813 = load i64, i64* %PC
  %814 = add i64 %813, 3
  store i64 %814, i64* %PC
  %815 = shl i64 %812, 32
  %816 = ashr exact i64 %815, 32
  store i64 %816, i64* %RDX, align 8, !tbaa !2428
  %817 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %818 = load i64, i64* %RAX
  %819 = load i64, i64* %RDX
  %820 = mul i64 %819, 8
  %821 = add i64 %818, 4
  %822 = add i64 %821, %820
  %823 = load i64, i64* %PC
  %824 = add i64 %823, 6
  store i64 %824, i64* %PC
  %825 = inttoptr i64 %822 to float*
  %826 = load float, float* %825
  %827 = bitcast i8* %817 to float*
  store float %826, float* %827, align 1, !tbaa !2432
  %828 = getelementptr inbounds i8, i8* %817, i64 4
  %829 = bitcast i8* %828 to float*
  store float 0.000000e+00, float* %829, align 1, !tbaa !2432
  %830 = getelementptr inbounds i8, i8* %817, i64 8
  %831 = bitcast i8* %830 to float*
  store float 0.000000e+00, float* %831, align 1, !tbaa !2432
  %832 = getelementptr inbounds i8, i8* %817, i64 12
  %833 = bitcast i8* %832 to float*
  store float 0.000000e+00, float* %833, align 1, !tbaa !2432
  %834 = load i64, i64* %RBP
  %835 = sub i64 %834, 16
  %836 = load i64, i64* %PC
  %837 = add i64 %836, 4
  store i64 %837, i64* %PC
  %838 = inttoptr i64 %835 to i64*
  %839 = load i64, i64* %838
  store i64 %839, i64* %RAX, align 8, !tbaa !2428
  %840 = load i64, i64* %RBP
  %841 = sub i64 %840, 140
  %842 = load i64, i64* %PC
  %843 = add i64 %842, 6
  store i64 %843, i64* %PC
  %844 = inttoptr i64 %841 to i32*
  %845 = load i32, i32* %844
  %846 = zext i32 %845 to i64
  store i64 %846, i64* %RCX, align 8, !tbaa !2428
  %847 = load i64, i64* %RCX
  %848 = load i64, i64* %RBP
  %849 = sub i64 %848, 132
  %850 = load i64, i64* %PC
  %851 = add i64 %850, 6
  store i64 %851, i64* %PC
  %852 = trunc i64 %847 to i32
  %853 = inttoptr i64 %849 to i32*
  %854 = load i32, i32* %853
  %855 = sub i32 %852, %854
  %856 = zext i32 %855 to i64
  store i64 %856, i64* %RCX, align 8, !tbaa !2428
  %857 = icmp ult i32 %852, %854
  %858 = zext i1 %857 to i8
  %859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %858, i8* %859, align 1, !tbaa !2434
  %860 = and i32 %855, 255
  %861 = call i32 @llvm.ctpop.i32(i32 %860) #16
  %862 = trunc i32 %861 to i8
  %863 = and i8 %862, 1
  %864 = xor i8 %863, 1
  %865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %864, i8* %865, align 1, !tbaa !2448
  %866 = xor i32 %854, %852
  %867 = xor i32 %866, %855
  %868 = lshr i32 %867, 4
  %869 = trunc i32 %868 to i8
  %870 = and i8 %869, 1
  %871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %870, i8* %871, align 1, !tbaa !2449
  %872 = icmp eq i32 %855, 0
  %873 = zext i1 %872 to i8
  %874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %873, i8* %874, align 1, !tbaa !2450
  %875 = lshr i32 %855, 31
  %876 = trunc i32 %875 to i8
  %877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %876, i8* %877, align 1, !tbaa !2451
  %878 = lshr i32 %852, 31
  %879 = lshr i32 %854, 31
  %880 = xor i32 %879, %878
  %881 = xor i32 %875, %878
  %882 = add nuw nsw i32 %881, %880
  %883 = icmp eq i32 %882, 2
  %884 = zext i1 %883 to i8
  %885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %884, i8* %885, align 1, !tbaa !2452
  %886 = load i64, i64* %RCX
  %887 = load i64, i64* %PC
  %888 = add i64 %887, 3
  store i64 %888, i64* %PC
  %889 = trunc i64 %886 to i32
  %890 = add i32 1, %889
  %891 = zext i32 %890 to i64
  store i64 %891, i64* %RCX, align 8, !tbaa !2428
  %892 = icmp ult i32 %890, %889
  %893 = icmp ult i32 %890, 1
  %894 = or i1 %892, %893
  %895 = zext i1 %894 to i8
  %896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %895, i8* %896, align 1, !tbaa !2434
  %897 = and i32 %890, 255
  %898 = call i32 @llvm.ctpop.i32(i32 %897) #16
  %899 = trunc i32 %898 to i8
  %900 = and i8 %899, 1
  %901 = xor i8 %900, 1
  %902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %901, i8* %902, align 1, !tbaa !2448
  %903 = xor i64 1, %886
  %904 = trunc i64 %903 to i32
  %905 = xor i32 %904, %890
  %906 = lshr i32 %905, 4
  %907 = trunc i32 %906 to i8
  %908 = and i8 %907, 1
  %909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %908, i8* %909, align 1, !tbaa !2449
  %910 = icmp eq i32 %890, 0
  %911 = zext i1 %910 to i8
  %912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %911, i8* %912, align 1, !tbaa !2450
  %913 = lshr i32 %890, 31
  %914 = trunc i32 %913 to i8
  %915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %914, i8* %915, align 1, !tbaa !2451
  %916 = lshr i32 %889, 31
  %917 = xor i32 %913, %916
  %918 = add nuw nsw i32 %917, %913
  %919 = icmp eq i32 %918, 2
  %920 = zext i1 %919 to i8
  %921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %920, i8* %921, align 1, !tbaa !2452
  %922 = load i32, i32* %ECX
  %923 = zext i32 %922 to i64
  %924 = load i64, i64* %PC
  %925 = add i64 %924, 3
  store i64 %925, i64* %PC
  %926 = shl i64 %923, 32
  %927 = ashr exact i64 %926, 32
  store i64 %927, i64* %RDX, align 8, !tbaa !2428
  %928 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %929 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %930 = load i64, i64* %RAX
  %931 = load i64, i64* %RDX
  %932 = mul i64 %931, 8
  %933 = add i64 %930, 4
  %934 = add i64 %933, %932
  %935 = load i64, i64* %PC
  %936 = add i64 %935, 6
  store i64 %936, i64* %PC
  %937 = bitcast i8* %929 to <2 x float>*
  %938 = load <2 x float>, <2 x float>* %937, align 1
  %939 = getelementptr inbounds i8, i8* %929, i64 8
  %940 = bitcast i8* %939 to <2 x i32>*
  %941 = load <2 x i32>, <2 x i32>* %940, align 1
  %942 = inttoptr i64 %934 to float*
  %943 = load float, float* %942
  %944 = extractelement <2 x float> %938, i32 0
  %945 = fadd float %944, %943
  %946 = bitcast i8* %928 to float*
  store float %945, float* %946, align 1, !tbaa !2432
  %947 = bitcast <2 x float> %938 to <2 x i32>
  %948 = extractelement <2 x i32> %947, i32 1
  %949 = getelementptr inbounds i8, i8* %928, i64 4
  %950 = bitcast i8* %949 to i32*
  store i32 %948, i32* %950, align 1, !tbaa !2432
  %951 = extractelement <2 x i32> %941, i32 0
  %952 = getelementptr inbounds i8, i8* %928, i64 8
  %953 = bitcast i8* %952 to i32*
  store i32 %951, i32* %953, align 1, !tbaa !2432
  %954 = extractelement <2 x i32> %941, i32 1
  %955 = getelementptr inbounds i8, i8* %928, i64 12
  %956 = bitcast i8* %955 to i32*
  store i32 %954, i32* %956, align 1, !tbaa !2432
  %957 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %958 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %959 = bitcast %union.vec128_t* %XMM1 to i8*
  %960 = load i64, i64* %PC
  %961 = add i64 %960, 4
  store i64 %961, i64* %PC
  %962 = bitcast i8* %958 to <2 x float>*
  %963 = load <2 x float>, <2 x float>* %962, align 1
  %964 = getelementptr inbounds i8, i8* %958, i64 8
  %965 = bitcast i8* %964 to <2 x i32>*
  %966 = load <2 x i32>, <2 x i32>* %965, align 1
  %967 = bitcast i8* %959 to <2 x float>*
  %968 = load <2 x float>, <2 x float>* %967, align 1
  %969 = extractelement <2 x float> %963, i32 0
  %970 = extractelement <2 x float> %968, i32 0
  %971 = fmul float %969, %970
  %972 = bitcast i8* %957 to float*
  store float %971, float* %972, align 1, !tbaa !2432
  %973 = bitcast <2 x float> %963 to <2 x i32>
  %974 = extractelement <2 x i32> %973, i32 1
  %975 = getelementptr inbounds i8, i8* %957, i64 4
  %976 = bitcast i8* %975 to i32*
  store i32 %974, i32* %976, align 1, !tbaa !2432
  %977 = extractelement <2 x i32> %966, i32 0
  %978 = getelementptr inbounds i8, i8* %957, i64 8
  %979 = bitcast i8* %978 to i32*
  store i32 %977, i32* %979, align 1, !tbaa !2432
  %980 = extractelement <2 x i32> %966, i32 1
  %981 = getelementptr inbounds i8, i8* %957, i64 12
  %982 = bitcast i8* %981 to i32*
  store i32 %980, i32* %982, align 1, !tbaa !2432
  %983 = load i64, i64* %RBP
  %984 = sub i64 %983, 16
  %985 = load i64, i64* %PC
  %986 = add i64 %985, 4
  store i64 %986, i64* %PC
  %987 = inttoptr i64 %984 to i64*
  %988 = load i64, i64* %987
  store i64 %988, i64* %RAX, align 8, !tbaa !2428
  %989 = load i64, i64* %RBP
  %990 = sub i64 %989, 140
  %991 = load i64, i64* %PC
  %992 = add i64 %991, 6
  store i64 %992, i64* %PC
  %993 = inttoptr i64 %990 to i32*
  %994 = load i32, i32* %993
  %995 = zext i32 %994 to i64
  store i64 %995, i64* %RCX, align 8, !tbaa !2428
  %996 = load i64, i64* %RCX
  %997 = load i64, i64* %PC
  %998 = add i64 %997, 3
  store i64 %998, i64* %PC
  %999 = trunc i64 %996 to i32
  %1000 = add i32 1, %999
  %1001 = zext i32 %1000 to i64
  store i64 %1001, i64* %RCX, align 8, !tbaa !2428
  %1002 = icmp ult i32 %1000, %999
  %1003 = icmp ult i32 %1000, 1
  %1004 = or i1 %1002, %1003
  %1005 = zext i1 %1004 to i8
  %1006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1005, i8* %1006, align 1, !tbaa !2434
  %1007 = and i32 %1000, 255
  %1008 = call i32 @llvm.ctpop.i32(i32 %1007) #16
  %1009 = trunc i32 %1008 to i8
  %1010 = and i8 %1009, 1
  %1011 = xor i8 %1010, 1
  %1012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1011, i8* %1012, align 1, !tbaa !2448
  %1013 = xor i64 1, %996
  %1014 = trunc i64 %1013 to i32
  %1015 = xor i32 %1014, %1000
  %1016 = lshr i32 %1015, 4
  %1017 = trunc i32 %1016 to i8
  %1018 = and i8 %1017, 1
  %1019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1018, i8* %1019, align 1, !tbaa !2449
  %1020 = icmp eq i32 %1000, 0
  %1021 = zext i1 %1020 to i8
  %1022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1021, i8* %1022, align 1, !tbaa !2450
  %1023 = lshr i32 %1000, 31
  %1024 = trunc i32 %1023 to i8
  %1025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1024, i8* %1025, align 1, !tbaa !2451
  %1026 = lshr i32 %999, 31
  %1027 = xor i32 %1023, %1026
  %1028 = add nuw nsw i32 %1027, %1023
  %1029 = icmp eq i32 %1028, 2
  %1030 = zext i1 %1029 to i8
  %1031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1030, i8* %1031, align 1, !tbaa !2452
  %1032 = load i32, i32* %ECX
  %1033 = zext i32 %1032 to i64
  %1034 = load i64, i64* %PC
  %1035 = add i64 %1034, 3
  store i64 %1035, i64* %PC
  %1036 = shl i64 %1033, 32
  %1037 = ashr exact i64 %1036, 32
  store i64 %1037, i64* %RDX, align 8, !tbaa !2428
  %1038 = load i64, i64* %RAX
  %1039 = load i64, i64* %RDX
  %1040 = mul i64 %1039, 8
  %1041 = add i64 %1038, 4
  %1042 = add i64 %1041, %1040
  %1043 = bitcast %union.vec128_t* %XMM0 to i8*
  %1044 = load i64, i64* %PC
  %1045 = add i64 %1044, 6
  store i64 %1045, i64* %PC
  %1046 = bitcast i8* %1043 to <2 x float>*
  %1047 = load <2 x float>, <2 x float>* %1046, align 1
  %1048 = extractelement <2 x float> %1047, i32 0
  %1049 = inttoptr i64 %1042 to float*
  store float %1048, float* %1049
  %1050 = load i64, i64* %RBP
  %1051 = sub i64 %1050, 140
  %1052 = load i64, i64* %PC
  %1053 = add i64 %1052, 6
  store i64 %1053, i64* %PC
  %1054 = inttoptr i64 %1051 to i32*
  %1055 = load i32, i32* %1054
  %1056 = zext i32 %1055 to i64
  store i64 %1056, i64* %RCX, align 8, !tbaa !2428
  %1057 = load i64, i64* %RCX
  %1058 = load i64, i64* %RBP
  %1059 = sub i64 %1058, 144
  %1060 = load i64, i64* %PC
  %1061 = add i64 %1060, 6
  store i64 %1061, i64* %PC
  %1062 = trunc i64 %1057 to i32
  %1063 = inttoptr i64 %1059 to i32*
  %1064 = load i32, i32* %1063
  %1065 = add i32 %1064, %1062
  %1066 = zext i32 %1065 to i64
  store i64 %1066, i64* %RCX, align 8, !tbaa !2428
  %1067 = icmp ult i32 %1065, %1062
  %1068 = icmp ult i32 %1065, %1064
  %1069 = or i1 %1067, %1068
  %1070 = zext i1 %1069 to i8
  %1071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1070, i8* %1071, align 1, !tbaa !2434
  %1072 = and i32 %1065, 255
  %1073 = call i32 @llvm.ctpop.i32(i32 %1072) #16
  %1074 = trunc i32 %1073 to i8
  %1075 = and i8 %1074, 1
  %1076 = xor i8 %1075, 1
  %1077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1076, i8* %1077, align 1, !tbaa !2448
  %1078 = xor i32 %1064, %1062
  %1079 = xor i32 %1078, %1065
  %1080 = lshr i32 %1079, 4
  %1081 = trunc i32 %1080 to i8
  %1082 = and i8 %1081, 1
  %1083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1082, i8* %1083, align 1, !tbaa !2449
  %1084 = icmp eq i32 %1065, 0
  %1085 = zext i1 %1084 to i8
  %1086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1085, i8* %1086, align 1, !tbaa !2450
  %1087 = lshr i32 %1065, 31
  %1088 = trunc i32 %1087 to i8
  %1089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1088, i8* %1089, align 1, !tbaa !2451
  %1090 = lshr i32 %1062, 31
  %1091 = lshr i32 %1064, 31
  %1092 = xor i32 %1087, %1090
  %1093 = xor i32 %1087, %1091
  %1094 = add nuw nsw i32 %1092, %1093
  %1095 = icmp eq i32 %1094, 2
  %1096 = zext i1 %1095 to i8
  %1097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1096, i8* %1097, align 1, !tbaa !2452
  %1098 = load i64, i64* %RBP
  %1099 = sub i64 %1098, 140
  %1100 = load i32, i32* %ECX
  %1101 = zext i32 %1100 to i64
  %1102 = load i64, i64* %PC
  %1103 = add i64 %1102, 6
  store i64 %1103, i64* %PC
  %1104 = inttoptr i64 %1099 to i32*
  store i32 %1100, i32* %1104
  %1105 = load i64, i64* %RBP
  %1106 = sub i64 %1105, 140
  %1107 = load i64, i64* %PC
  %1108 = add i64 %1107, 6
  store i64 %1108, i64* %PC
  %1109 = inttoptr i64 %1106 to i32*
  %1110 = load i32, i32* %1109
  %1111 = zext i32 %1110 to i64
  store i64 %1111, i64* %RAX, align 8, !tbaa !2428
  %1112 = load i32, i32* %EAX
  %1113 = zext i32 %1112 to i64
  %1114 = load i64, i64* %RBP
  %1115 = sub i64 %1114, 148
  %1116 = load i64, i64* %PC
  %1117 = add i64 %1116, 6
  store i64 %1117, i64* %PC
  %1118 = inttoptr i64 %1115 to i32*
  %1119 = load i32, i32* %1118
  %1120 = sub i32 %1112, %1119
  %1121 = icmp ult i32 %1112, %1119
  %1122 = zext i1 %1121 to i8
  %1123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1122, i8* %1123, align 1, !tbaa !2434
  %1124 = and i32 %1120, 255
  %1125 = call i32 @llvm.ctpop.i32(i32 %1124) #16
  %1126 = trunc i32 %1125 to i8
  %1127 = and i8 %1126, 1
  %1128 = xor i8 %1127, 1
  %1129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1128, i8* %1129, align 1, !tbaa !2448
  %1130 = xor i32 %1119, %1112
  %1131 = xor i32 %1130, %1120
  %1132 = lshr i32 %1131, 4
  %1133 = trunc i32 %1132 to i8
  %1134 = and i8 %1133, 1
  %1135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1134, i8* %1135, align 1, !tbaa !2449
  %1136 = icmp eq i32 %1120, 0
  %1137 = zext i1 %1136 to i8
  %1138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1137, i8* %1138, align 1, !tbaa !2450
  %1139 = lshr i32 %1120, 31
  %1140 = trunc i32 %1139 to i8
  %1141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1140, i8* %1141, align 1, !tbaa !2451
  %1142 = lshr i32 %1112, 31
  %1143 = lshr i32 %1119, 31
  %1144 = xor i32 %1143, %1142
  %1145 = xor i32 %1139, %1142
  %1146 = add nuw nsw i32 %1145, %1144
  %1147 = icmp eq i32 %1146, 2
  %1148 = zext i1 %1147 to i8
  %1149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1148, i8* %1149, align 1, !tbaa !2452
  %1150 = load i64, i64* %PC
  %1151 = sub i64 %1150, 217
  %1152 = load i64, i64* %PC
  %1153 = add i64 %1152, 6
  %1154 = load i64, i64* %PC
  %1155 = add i64 %1154, 6
  store i64 %1155, i64* %PC
  %1156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1157 = load i8, i8* %1156, align 1, !tbaa !2450
  %1158 = icmp ne i8 %1157, 0
  %1159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1160 = load i8, i8* %1159, align 1, !tbaa !2451
  %1161 = icmp ne i8 %1160, 0
  %1162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1163 = load i8, i8* %1162, align 1, !tbaa !2452
  %1164 = icmp ne i8 %1163, 0
  %1165 = xor i1 %1161, %1164
  %1166 = or i1 %1158, %1165
  %1167 = zext i1 %1166 to i8
  store i8 %1167, i8* %BRANCH_TAKEN, align 1, !tbaa !2453
  %1168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1169 = select i1 %1166, i64 %1151, i64 %1153
  store i64 %1169, i64* %1168, align 8, !tbaa !2428
  %1170 = load i8, i8* %BRANCH_TAKEN
  %1171 = icmp eq i8 %1170, 1
  br i1 %1171, label %block_4008fb, label %block_4009da

block_400a0e:                                     ; preds = %block_4009da
  %1172 = load i64, i64* %RSP
  %1173 = load i64, i64* %PC
  %1174 = add i64 %1173, 7
  store i64 %1174, i64* %PC
  %1175 = add i64 160, %1172
  store i64 %1175, i64* %RSP, align 8, !tbaa !2428
  %1176 = icmp ult i64 %1175, %1172
  %1177 = icmp ult i64 %1175, 160
  %1178 = or i1 %1176, %1177
  %1179 = zext i1 %1178 to i8
  %1180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1179, i8* %1180, align 1, !tbaa !2434
  %1181 = trunc i64 %1175 to i32
  %1182 = and i32 %1181, 255
  %1183 = call i32 @llvm.ctpop.i32(i32 %1182) #16
  %1184 = trunc i32 %1183 to i8
  %1185 = and i8 %1184, 1
  %1186 = xor i8 %1185, 1
  %1187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1186, i8* %1187, align 1, !tbaa !2448
  %1188 = xor i64 160, %1172
  %1189 = xor i64 %1188, %1175
  %1190 = lshr i64 %1189, 4
  %1191 = trunc i64 %1190 to i8
  %1192 = and i8 %1191, 1
  %1193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1192, i8* %1193, align 1, !tbaa !2449
  %1194 = icmp eq i64 %1175, 0
  %1195 = zext i1 %1194 to i8
  %1196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1195, i8* %1196, align 1, !tbaa !2450
  %1197 = lshr i64 %1175, 63
  %1198 = trunc i64 %1197 to i8
  %1199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1198, i8* %1199, align 1, !tbaa !2451
  %1200 = lshr i64 %1172, 63
  %1201 = xor i64 %1197, %1200
  %1202 = add nuw nsw i64 %1201, %1197
  %1203 = icmp eq i64 %1202, 2
  %1204 = zext i1 %1203 to i8
  %1205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1204, i8* %1205, align 1, !tbaa !2452
  %1206 = load i64, i64* %PC
  %1207 = add i64 %1206, 1
  store i64 %1207, i64* %PC
  %1208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1209 = load i64, i64* %1208, align 8, !tbaa !2428
  %1210 = add i64 %1209, 8
  %1211 = inttoptr i64 %1209 to i64*
  %1212 = load i64, i64* %1211
  store i64 %1212, i64* %RBP, align 8, !tbaa !2428
  store i64 %1210, i64* %1208, align 8, !tbaa !2428
  %1213 = load i64, i64* %PC
  %1214 = add i64 %1213, 1
  store i64 %1214, i64* %PC
  %1215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1217 = load i64, i64* %1216, align 8, !tbaa !2428
  %1218 = inttoptr i64 %1217 to i64*
  %1219 = load i64, i64* %1218
  store i64 %1219, i64* %1215, align 8, !tbaa !2428
  %1220 = add i64 %1217, 8
  store i64 %1220, i64* %1216, align 8, !tbaa !2428
  ret %struct.Memory* %210

block_4008cd:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit, %block_4009da
  %MEMORY.2 = phi %struct.Memory* [ %1746, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ], [ %210, %block_4009da ]
  %1221 = load i64, i64* %PC
  %1222 = add i64 %1221, 5
  store i64 %1222, i64* %PC
  store i64 2, i64* %RAX, align 8, !tbaa !2428
  %1223 = load i64, i64* %RBP
  %1224 = sub i64 %1223, 144
  %1225 = load i64, i64* %PC
  %1226 = add i64 %1225, 6
  store i64 %1226, i64* %PC
  %1227 = inttoptr i64 %1224 to i32*
  %1228 = load i32, i32* %1227
  %1229 = zext i32 %1228 to i64
  store i64 %1229, i64* %RCX, align 8, !tbaa !2428
  %1230 = load i64, i64* %RBP
  %1231 = sub i64 %1230, 156
  %1232 = load i32, i32* %EAX
  %1233 = zext i32 %1232 to i64
  %1234 = load i64, i64* %PC
  %1235 = add i64 %1234, 6
  store i64 %1235, i64* %PC
  %1236 = inttoptr i64 %1231 to i32*
  store i32 %1232, i32* %1236
  %1237 = load i32, i32* %ECX
  %1238 = zext i32 %1237 to i64
  %1239 = load i64, i64* %PC
  %1240 = add i64 %1239, 2
  store i64 %1240, i64* %PC
  %1241 = and i64 %1238, 4294967295
  store i64 %1241, i64* %RAX, align 8, !tbaa !2428
  %1242 = load i64, i64* %PC
  %1243 = add i64 %1242, 1
  store i64 %1243, i64* %PC
  %1244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1246 = bitcast %union.anon* %1245 to i32*
  %1247 = load i32, i32* %1246, align 8, !tbaa !2456
  %1248 = sext i32 %1247 to i64
  %1249 = lshr i64 %1248, 32
  store i64 %1249, i64* %1244, align 8, !tbaa !2428
  %1250 = load i64, i64* %RBP
  %1251 = sub i64 %1250, 156
  %1252 = load i64, i64* %PC
  %1253 = add i64 %1252, 6
  store i64 %1253, i64* %PC
  %1254 = inttoptr i64 %1251 to i32*
  %1255 = load i32, i32* %1254
  %1256 = zext i32 %1255 to i64
  store i64 %1256, i64* %RCX, align 8, !tbaa !2428
  %1257 = load i32, i32* %ECX
  %1258 = zext i32 %1257 to i64
  %1259 = load i64, i64* %PC
  %1260 = add i64 %1259, 2
  store i64 %1260, i64* %PC
  %1261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1262 = bitcast %union.anon* %1261 to i32*
  %1263 = load i32, i32* %1262, align 8, !tbaa !2456
  %1264 = zext i32 %1263 to i64
  %1265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1266 = bitcast %union.anon* %1265 to i32*
  %1267 = load i32, i32* %1266, align 8, !tbaa !2456
  %1268 = zext i32 %1267 to i64
  %1269 = shl i64 %1258, 32
  %1270 = ashr exact i64 %1269, 32
  %1271 = shl nuw i64 %1268, 32
  %1272 = or i64 %1271, %1264
  %1273 = sdiv i64 %1272, %1270
  %1274 = shl i64 %1273, 32
  %1275 = ashr exact i64 %1274, 32
  %1276 = icmp eq i64 %1273, %1275
  br i1 %1276, label %1281, label %1277

; <label>:1277:                                   ; preds = %block_4008cd
  %1278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1279 = load i64, i64* %1278, align 8, !tbaa !2428
  %1280 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1279, %struct.Memory* %MEMORY.2) #17
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit2

; <label>:1281:                                   ; preds = %block_4008cd
  %1282 = srem i64 %1272, %1270
  %1283 = getelementptr inbounds %union.anon, %union.anon* %1261, i64 0, i32 0
  %1284 = and i64 %1273, 4294967295
  store i64 %1284, i64* %1283, align 8, !tbaa !2428
  %1285 = getelementptr inbounds %union.anon, %union.anon* %1265, i64 0, i32 0
  %1286 = and i64 %1282, 4294967295
  store i64 %1286, i64* %1285, align 8, !tbaa !2428
  %1287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1287, align 1, !tbaa !2434
  %1288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1288, align 1, !tbaa !2448
  %1289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1289, align 1, !tbaa !2449
  %1290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1290, align 1, !tbaa !2450
  %1291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1291, align 1, !tbaa !2451
  %1292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1292, align 1, !tbaa !2452
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit2

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit2: ; preds = %1277, %1281
  %1293 = phi %struct.Memory* [ %1280, %1277 ], [ %MEMORY.2, %1281 ]
  %1294 = load i64, i64* %RBP
  %1295 = sub i64 %1294, 132
  %1296 = load i32, i32* %EAX
  %1297 = zext i32 %1296 to i64
  %1298 = load i64, i64* %PC
  %1299 = add i64 %1298, 6
  store i64 %1299, i64* %PC
  %1300 = inttoptr i64 %1295 to i32*
  store i32 %1296, i32* %1300
  %1301 = load i64, i64* %RBP
  %1302 = sub i64 %1301, 132
  %1303 = load i64, i64* %PC
  %1304 = add i64 %1303, 6
  store i64 %1304, i64* %PC
  %1305 = inttoptr i64 %1302 to i32*
  %1306 = load i32, i32* %1305
  %1307 = zext i32 %1306 to i64
  store i64 %1307, i64* %RAX, align 8, !tbaa !2428
  %1308 = load i64, i64* %RBP
  %1309 = sub i64 %1308, 140
  %1310 = load i32, i32* %EAX
  %1311 = zext i32 %1310 to i64
  %1312 = load i64, i64* %PC
  %1313 = add i64 %1312, 6
  store i64 %1313, i64* %PC
  %1314 = inttoptr i64 %1309 to i32*
  store i32 %1310, i32* %1314
  br label %block_4008fb

block_4007c3:                                     ; preds = %block_4007b6
  %1315 = load i64, i64* %RBP
  %1316 = sub i64 %1315, 20
  %1317 = load i64, i64* %PC
  %1318 = add i64 %1317, 5
  store i64 %1318, i64* %PC
  %1319 = inttoptr i64 %1316 to float*
  %1320 = load float, float* %1319
  %1321 = bitcast i8* %346 to float*
  store float %1320, float* %1321, align 1, !tbaa !2432
  %1322 = getelementptr inbounds i8, i8* %346, i64 4
  %1323 = bitcast i8* %1322 to float*
  store float 0.000000e+00, float* %1323, align 1, !tbaa !2432
  %1324 = getelementptr inbounds i8, i8* %346, i64 8
  %1325 = bitcast i8* %1324 to float*
  store float 0.000000e+00, float* %1325, align 1, !tbaa !2432
  %1326 = getelementptr inbounds i8, i8* %346, i64 12
  %1327 = bitcast i8* %1326 to float*
  store float 0.000000e+00, float* %1327, align 1, !tbaa !2432
  %1328 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1329 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1330 = load i64, i64* %RBP
  %1331 = sub i64 %1330, 24
  %1332 = load i64, i64* %PC
  %1333 = add i64 %1332, 5
  store i64 %1333, i64* %PC
  %1334 = bitcast i8* %1329 to <2 x float>*
  %1335 = load <2 x float>, <2 x float>* %1334, align 1
  %1336 = getelementptr inbounds i8, i8* %1329, i64 8
  %1337 = bitcast i8* %1336 to <2 x i32>*
  %1338 = load <2 x i32>, <2 x i32>* %1337, align 1
  %1339 = inttoptr i64 %1331 to float*
  %1340 = load float, float* %1339
  %1341 = extractelement <2 x float> %1335, i32 0
  %1342 = fdiv float %1341, %1340
  %1343 = bitcast i8* %1328 to float*
  store float %1342, float* %1343, align 1, !tbaa !2432
  %1344 = bitcast <2 x float> %1335 to <2 x i32>
  %1345 = extractelement <2 x i32> %1344, i32 1
  %1346 = getelementptr inbounds i8, i8* %1328, i64 4
  %1347 = bitcast i8* %1346 to i32*
  store i32 %1345, i32* %1347, align 1, !tbaa !2432
  %1348 = extractelement <2 x i32> %1338, i32 0
  %1349 = getelementptr inbounds i8, i8* %1328, i64 8
  %1350 = bitcast i8* %1349 to i32*
  store i32 %1348, i32* %1350, align 1, !tbaa !2432
  %1351 = extractelement <2 x i32> %1338, i32 1
  %1352 = getelementptr inbounds i8, i8* %1328, i64 12
  %1353 = bitcast i8* %1352 to i32*
  store i32 %1351, i32* %1353, align 1, !tbaa !2432
  %1354 = load i64, i64* %PC
  %1355 = sub i64 %1354, 637
  %1356 = load i64, i64* %PC
  %1357 = add i64 %1356, 5
  %1358 = load i64, i64* %PC
  %1359 = add i64 %1358, 5
  store i64 %1359, i64* %PC
  %1360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1361 = load i64, i64* %1360, align 8, !tbaa !2428
  %1362 = add i64 %1361, -8
  %1363 = inttoptr i64 %1362 to i64*
  store i64 %1357, i64* %1363
  store i64 %1362, i64* %1360, align 8, !tbaa !2428
  %1364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1355, i64* %1364, align 8, !tbaa !2428
  %1365 = load i64, i64* %PC
  %1366 = call %struct.Memory* @sub_400550_Cos_renamed_(%struct.State* %0, i64 %1365, %struct.Memory* %MEMORY.0)
  %1367 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1368 = load i64, i64* %PC
  %1369 = add i64 %1368, 8
  store i64 %1369, i64* %PC
  %1370 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_400ee0__rodata_type* @seg_400ee0__rodata to i64), i64 4) to float*)
  %1371 = bitcast i8* %1367 to float*
  store float %1370, float* %1371, align 1, !tbaa !2432
  %1372 = getelementptr inbounds i8, i8* %1367, i64 4
  %1373 = bitcast i8* %1372 to float*
  store float 0.000000e+00, float* %1373, align 1, !tbaa !2432
  %1374 = getelementptr inbounds i8, i8* %1367, i64 8
  %1375 = bitcast i8* %1374 to float*
  store float 0.000000e+00, float* %1375, align 1, !tbaa !2432
  %1376 = getelementptr inbounds i8, i8* %1367, i64 12
  %1377 = bitcast i8* %1376 to float*
  store float 0.000000e+00, float* %1377, align 1, !tbaa !2432
  %1378 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %1379 = load i64, i64* %PC
  %1380 = add i64 %1379, 8
  store i64 %1380, i64* %PC
  %1381 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_400ee0__rodata_type* @seg_400ee0__rodata to i64), i64 24) to float*)
  %1382 = bitcast i8* %1378 to float*
  store float %1381, float* %1382, align 1, !tbaa !2432
  %1383 = getelementptr inbounds i8, i8* %1378, i64 4
  %1384 = bitcast i8* %1383 to float*
  store float 0.000000e+00, float* %1384, align 1, !tbaa !2432
  %1385 = getelementptr inbounds i8, i8* %1378, i64 8
  %1386 = bitcast i8* %1385 to float*
  store float 0.000000e+00, float* %1386, align 1, !tbaa !2432
  %1387 = getelementptr inbounds i8, i8* %1378, i64 12
  %1388 = bitcast i8* %1387 to float*
  store float 0.000000e+00, float* %1388, align 1, !tbaa !2432
  %1389 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %1390 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %1391 = bitcast %union.vec128_t* %XMM0 to i8*
  %1392 = load i64, i64* %PC
  %1393 = add i64 %1392, 4
  store i64 %1393, i64* %PC
  %1394 = bitcast i8* %1390 to <2 x float>*
  %1395 = load <2 x float>, <2 x float>* %1394, align 1
  %1396 = getelementptr inbounds i8, i8* %1390, i64 8
  %1397 = bitcast i8* %1396 to <2 x i32>*
  %1398 = load <2 x i32>, <2 x i32>* %1397, align 1
  %1399 = bitcast i8* %1391 to <2 x float>*
  %1400 = load <2 x float>, <2 x float>* %1399, align 1
  %1401 = extractelement <2 x float> %1395, i32 0
  %1402 = extractelement <2 x float> %1400, i32 0
  %1403 = fmul float %1401, %1402
  %1404 = bitcast i8* %1389 to float*
  store float %1403, float* %1404, align 1, !tbaa !2432
  %1405 = bitcast <2 x float> %1395 to <2 x i32>
  %1406 = extractelement <2 x i32> %1405, i32 1
  %1407 = getelementptr inbounds i8, i8* %1389, i64 4
  %1408 = bitcast i8* %1407 to i32*
  store i32 %1406, i32* %1408, align 1, !tbaa !2432
  %1409 = extractelement <2 x i32> %1398, i32 0
  %1410 = getelementptr inbounds i8, i8* %1389, i64 8
  %1411 = bitcast i8* %1410 to i32*
  store i32 %1409, i32* %1411, align 1, !tbaa !2432
  %1412 = extractelement <2 x i32> %1398, i32 1
  %1413 = getelementptr inbounds i8, i8* %1389, i64 12
  %1414 = bitcast i8* %1413 to i32*
  store i32 %1412, i32* %1414, align 1, !tbaa !2432
  %1415 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1416 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1417 = bitcast %union.vec128_t* %XMM2 to i8*
  %1418 = load i64, i64* %PC
  %1419 = add i64 %1418, 4
  store i64 %1419, i64* %PC
  %1420 = bitcast i8* %1416 to <2 x float>*
  %1421 = load <2 x float>, <2 x float>* %1420, align 1
  %1422 = getelementptr inbounds i8, i8* %1416, i64 8
  %1423 = bitcast i8* %1422 to <2 x i32>*
  %1424 = load <2 x i32>, <2 x i32>* %1423, align 1
  %1425 = bitcast i8* %1417 to <2 x float>*
  %1426 = load <2 x float>, <2 x float>* %1425, align 1
  %1427 = extractelement <2 x float> %1421, i32 0
  %1428 = extractelement <2 x float> %1426, i32 0
  %1429 = fdiv float %1427, %1428
  %1430 = bitcast i8* %1415 to float*
  store float %1429, float* %1430, align 1, !tbaa !2432
  %1431 = bitcast <2 x float> %1421 to <2 x i32>
  %1432 = extractelement <2 x i32> %1431, i32 1
  %1433 = getelementptr inbounds i8, i8* %1415, i64 4
  %1434 = bitcast i8* %1433 to i32*
  store i32 %1432, i32* %1434, align 1, !tbaa !2432
  %1435 = extractelement <2 x i32> %1424, i32 0
  %1436 = getelementptr inbounds i8, i8* %1415, i64 8
  %1437 = bitcast i8* %1436 to i32*
  store i32 %1435, i32* %1437, align 1, !tbaa !2432
  %1438 = extractelement <2 x i32> %1424, i32 1
  %1439 = getelementptr inbounds i8, i8* %1415, i64 12
  %1440 = bitcast i8* %1439 to i32*
  store i32 %1438, i32* %1440, align 1, !tbaa !2432
  %1441 = load i64, i64* %RBP
  %1442 = sub i64 %1441, 132
  %1443 = load i64, i64* %PC
  %1444 = add i64 %1443, 7
  store i64 %1444, i64* %PC
  %1445 = inttoptr i64 %1442 to i32*
  %1446 = load i32, i32* %1445
  %1447 = sext i32 %1446 to i64
  store i64 %1447, i64* %RAX, align 8, !tbaa !2428
  %1448 = load i64, i64* %RBP
  %1449 = load i64, i64* %RAX
  %1450 = mul i64 %1449, 4
  %1451 = add i64 %1448, -128
  %1452 = add i64 %1451, %1450
  %1453 = bitcast %union.vec128_t* %XMM1 to i8*
  %1454 = load i64, i64* %PC
  %1455 = add i64 %1454, 6
  store i64 %1455, i64* %PC
  %1456 = bitcast i8* %1453 to <2 x float>*
  %1457 = load <2 x float>, <2 x float>* %1456, align 1
  %1458 = extractelement <2 x float> %1457, i32 0
  %1459 = inttoptr i64 %1452 to float*
  store float %1458, float* %1459
  %1460 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1461 = load i64, i64* %RBP
  %1462 = sub i64 %1461, 24
  %1463 = load i64, i64* %PC
  %1464 = add i64 %1463, 5
  store i64 %1464, i64* %PC
  %1465 = inttoptr i64 %1462 to float*
  %1466 = load float, float* %1465
  %1467 = bitcast i8* %1460 to float*
  store float %1466, float* %1467, align 1, !tbaa !2432
  %1468 = getelementptr inbounds i8, i8* %1460, i64 4
  %1469 = bitcast i8* %1468 to float*
  store float 0.000000e+00, float* %1469, align 1, !tbaa !2432
  %1470 = getelementptr inbounds i8, i8* %1460, i64 8
  %1471 = bitcast i8* %1470 to float*
  store float 0.000000e+00, float* %1471, align 1, !tbaa !2432
  %1472 = getelementptr inbounds i8, i8* %1460, i64 12
  %1473 = bitcast i8* %1472 to float*
  store float 0.000000e+00, float* %1473, align 1, !tbaa !2432
  %1474 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1475 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1476 = load i64, i64* %RBP
  %1477 = sub i64 %1476, 24
  %1478 = load i64, i64* %PC
  %1479 = add i64 %1478, 5
  store i64 %1479, i64* %PC
  %1480 = bitcast i8* %1475 to <2 x float>*
  %1481 = load <2 x float>, <2 x float>* %1480, align 1
  %1482 = getelementptr inbounds i8, i8* %1475, i64 8
  %1483 = bitcast i8* %1482 to <2 x i32>*
  %1484 = load <2 x i32>, <2 x i32>* %1483, align 1
  %1485 = inttoptr i64 %1477 to float*
  %1486 = load float, float* %1485
  %1487 = extractelement <2 x float> %1481, i32 0
  %1488 = fadd float %1487, %1486
  %1489 = bitcast i8* %1474 to float*
  store float %1488, float* %1489, align 1, !tbaa !2432
  %1490 = bitcast <2 x float> %1481 to <2 x i32>
  %1491 = extractelement <2 x i32> %1490, i32 1
  %1492 = getelementptr inbounds i8, i8* %1474, i64 4
  %1493 = bitcast i8* %1492 to i32*
  store i32 %1491, i32* %1493, align 1, !tbaa !2432
  %1494 = extractelement <2 x i32> %1484, i32 0
  %1495 = getelementptr inbounds i8, i8* %1474, i64 8
  %1496 = bitcast i8* %1495 to i32*
  store i32 %1494, i32* %1496, align 1, !tbaa !2432
  %1497 = extractelement <2 x i32> %1484, i32 1
  %1498 = getelementptr inbounds i8, i8* %1474, i64 12
  %1499 = bitcast i8* %1498 to i32*
  store i32 %1497, i32* %1499, align 1, !tbaa !2432
  %1500 = load i64, i64* %RBP
  %1501 = sub i64 %1500, 24
  %1502 = bitcast %union.vec128_t* %XMM0 to i8*
  %1503 = load i64, i64* %PC
  %1504 = add i64 %1503, 5
  store i64 %1504, i64* %PC
  %1505 = bitcast i8* %1502 to <2 x float>*
  %1506 = load <2 x float>, <2 x float>* %1505, align 1
  %1507 = extractelement <2 x float> %1506, i32 0
  %1508 = inttoptr i64 %1501 to float*
  store float %1507, float* %1508
  %1509 = load i64, i64* %RBP
  %1510 = sub i64 %1509, 132
  %1511 = load i64, i64* %PC
  %1512 = add i64 %1511, 6
  store i64 %1512, i64* %PC
  %1513 = inttoptr i64 %1510 to i32*
  %1514 = load i32, i32* %1513
  %1515 = zext i32 %1514 to i64
  store i64 %1515, i64* %RAX, align 8, !tbaa !2428
  %1516 = load i64, i64* %RAX
  %1517 = load i64, i64* %PC
  %1518 = add i64 %1517, 3
  store i64 %1518, i64* %PC
  %1519 = trunc i64 %1516 to i32
  %1520 = add i32 1, %1519
  %1521 = zext i32 %1520 to i64
  store i64 %1521, i64* %RAX, align 8, !tbaa !2428
  %1522 = icmp ult i32 %1520, %1519
  %1523 = icmp ult i32 %1520, 1
  %1524 = or i1 %1522, %1523
  %1525 = zext i1 %1524 to i8
  %1526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1525, i8* %1526, align 1, !tbaa !2434
  %1527 = and i32 %1520, 255
  %1528 = call i32 @llvm.ctpop.i32(i32 %1527) #16
  %1529 = trunc i32 %1528 to i8
  %1530 = and i8 %1529, 1
  %1531 = xor i8 %1530, 1
  %1532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1531, i8* %1532, align 1, !tbaa !2448
  %1533 = xor i64 1, %1516
  %1534 = trunc i64 %1533 to i32
  %1535 = xor i32 %1534, %1520
  %1536 = lshr i32 %1535, 4
  %1537 = trunc i32 %1536 to i8
  %1538 = and i8 %1537, 1
  %1539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1538, i8* %1539, align 1, !tbaa !2449
  %1540 = icmp eq i32 %1520, 0
  %1541 = zext i1 %1540 to i8
  %1542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1541, i8* %1542, align 1, !tbaa !2450
  %1543 = lshr i32 %1520, 31
  %1544 = trunc i32 %1543 to i8
  %1545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1544, i8* %1545, align 1, !tbaa !2451
  %1546 = lshr i32 %1519, 31
  %1547 = xor i32 %1543, %1546
  %1548 = add nuw nsw i32 %1547, %1543
  %1549 = icmp eq i32 %1548, 2
  %1550 = zext i1 %1549 to i8
  %1551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1550, i8* %1551, align 1, !tbaa !2452
  %1552 = load i64, i64* %RBP
  %1553 = sub i64 %1552, 132
  %1554 = load i32, i32* %EAX
  %1555 = zext i32 %1554 to i64
  %1556 = load i64, i64* %PC
  %1557 = add i64 %1556, 6
  store i64 %1557, i64* %PC
  %1558 = inttoptr i64 %1553 to i32*
  store i32 %1554, i32* %1558
  %1559 = load i64, i64* %PC
  %1560 = sub i64 %1559, 95
  %1561 = load i64, i64* %PC
  %1562 = add i64 %1561, 5
  store i64 %1562, i64* %PC
  %1563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1560, i64* %1563, align 8, !tbaa !2428
  br label %block_4007b6

block_40081a:                                     ; preds = %block_4007b6
  %1564 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1565 = bitcast %union.vec128_t* %XMM0 to i8*
  %1566 = load i64, i64* %PC
  %1567 = add i64 %1566, 3
  store i64 %1567, i64* %PC
  %1568 = bitcast i8* %1564 to i64*
  %1569 = load i64, i64* %1568, align 1
  %1570 = getelementptr inbounds i8, i8* %1564, i64 8
  %1571 = bitcast i8* %1570 to i64*
  %1572 = load i64, i64* %1571, align 1
  %1573 = bitcast i8* %1565 to i64*
  %1574 = load i64, i64* %1573, align 1
  %1575 = getelementptr inbounds i8, i8* %1565, i64 8
  %1576 = bitcast i8* %1575 to i64*
  %1577 = load i64, i64* %1576, align 1
  %1578 = xor i64 %1574, %1569
  %1579 = xor i64 %1577, %1572
  %1580 = trunc i64 %1578 to i32
  %1581 = lshr i64 %1578, 32
  %1582 = trunc i64 %1581 to i32
  %1583 = bitcast i8* %346 to i32*
  store i32 %1580, i32* %1583, align 1, !tbaa !2456
  %1584 = getelementptr inbounds i8, i8* %346, i64 4
  %1585 = bitcast i8* %1584 to i32*
  store i32 %1582, i32* %1585, align 1, !tbaa !2456
  %1586 = trunc i64 %1579 to i32
  %1587 = getelementptr inbounds i8, i8* %346, i64 8
  %1588 = bitcast i8* %1587 to i32*
  store i32 %1586, i32* %1588, align 1, !tbaa !2456
  %1589 = lshr i64 %1579, 32
  %1590 = trunc i64 %1589 to i32
  %1591 = getelementptr inbounds i8, i8* %346, i64 12
  %1592 = bitcast i8* %1591 to i32*
  store i32 %1590, i32* %1592, align 1, !tbaa !2456
  %1593 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1594 = load i64, i64* %PC
  %1595 = add i64 %1594, 8
  store i64 %1595, i64* %PC
  %1596 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_400ee0__rodata_type* @seg_400ee0__rodata to i64), i64 20) to float*)
  %1597 = bitcast i8* %1593 to float*
  store float %1596, float* %1597, align 1, !tbaa !2432
  %1598 = getelementptr inbounds i8, i8* %1593, i64 4
  %1599 = bitcast i8* %1598 to float*
  store float 0.000000e+00, float* %1599, align 1, !tbaa !2432
  %1600 = getelementptr inbounds i8, i8* %1593, i64 8
  %1601 = bitcast i8* %1600 to float*
  store float 0.000000e+00, float* %1601, align 1, !tbaa !2432
  %1602 = getelementptr inbounds i8, i8* %1593, i64 12
  %1603 = bitcast i8* %1602 to float*
  store float 0.000000e+00, float* %1603, align 1, !tbaa !2432
  %1604 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %1605 = load i64, i64* %PC
  %1606 = add i64 %1605, 8
  store i64 %1606, i64* %PC
  %1607 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_400ee0__rodata_type* @seg_400ee0__rodata to i64), i64 4) to float*)
  %1608 = bitcast i8* %1604 to float*
  store float %1607, float* %1608, align 1, !tbaa !2432
  %1609 = getelementptr inbounds i8, i8* %1604, i64 4
  %1610 = bitcast i8* %1609 to float*
  store float 0.000000e+00, float* %1610, align 1, !tbaa !2432
  %1611 = getelementptr inbounds i8, i8* %1604, i64 8
  %1612 = bitcast i8* %1611 to float*
  store float 0.000000e+00, float* %1612, align 1, !tbaa !2432
  %1613 = getelementptr inbounds i8, i8* %1604, i64 12
  %1614 = bitcast i8* %1613 to float*
  store float 0.000000e+00, float* %1614, align 1, !tbaa !2432
  %1615 = load i64, i64* %PC
  %1616 = add i64 %1615, 5
  store i64 %1616, i64* %PC
  store i64 2, i64* %RAX, align 8, !tbaa !2428
  %1617 = load i64, i64* %RBP
  %1618 = sub i64 %1617, 4
  %1619 = load i64, i64* %PC
  %1620 = add i64 %1619, 3
  store i64 %1620, i64* %PC
  %1621 = inttoptr i64 %1618 to i32*
  %1622 = load i32, i32* %1621
  %1623 = zext i32 %1622 to i64
  store i64 %1623, i64* %RCX, align 8, !tbaa !2428
  %1624 = load i64, i64* %RBP
  %1625 = sub i64 %1624, 152
  %1626 = load i32, i32* %EAX
  %1627 = zext i32 %1626 to i64
  %1628 = load i64, i64* %PC
  %1629 = add i64 %1628, 6
  store i64 %1629, i64* %PC
  %1630 = inttoptr i64 %1625 to i32*
  store i32 %1626, i32* %1630
  %1631 = load i32, i32* %ECX
  %1632 = zext i32 %1631 to i64
  %1633 = load i64, i64* %PC
  %1634 = add i64 %1633, 2
  store i64 %1634, i64* %PC
  %1635 = and i64 %1632, 4294967295
  store i64 %1635, i64* %RAX, align 8, !tbaa !2428
  %1636 = load i64, i64* %PC
  %1637 = add i64 %1636, 1
  store i64 %1637, i64* %PC
  %1638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1640 = bitcast %union.anon* %1639 to i32*
  %1641 = load i32, i32* %1640, align 8, !tbaa !2456
  %1642 = sext i32 %1641 to i64
  %1643 = lshr i64 %1642, 32
  store i64 %1643, i64* %1638, align 8, !tbaa !2428
  %1644 = load i64, i64* %RBP
  %1645 = sub i64 %1644, 152
  %1646 = load i64, i64* %PC
  %1647 = add i64 %1646, 6
  store i64 %1647, i64* %PC
  %1648 = inttoptr i64 %1645 to i32*
  %1649 = load i32, i32* %1648
  %1650 = zext i32 %1649 to i64
  store i64 %1650, i64* %RCX, align 8, !tbaa !2428
  %1651 = load i32, i32* %ECX
  %1652 = zext i32 %1651 to i64
  %1653 = load i64, i64* %PC
  %1654 = add i64 %1653, 2
  store i64 %1654, i64* %PC
  %1655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1656 = bitcast %union.anon* %1655 to i32*
  %1657 = load i32, i32* %1656, align 8, !tbaa !2456
  %1658 = zext i32 %1657 to i64
  %1659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1660 = bitcast %union.anon* %1659 to i32*
  %1661 = load i32, i32* %1660, align 8, !tbaa !2456
  %1662 = zext i32 %1661 to i64
  %1663 = shl i64 %1652, 32
  %1664 = ashr exact i64 %1663, 32
  %1665 = shl nuw i64 %1662, 32
  %1666 = or i64 %1665, %1658
  %1667 = sdiv i64 %1666, %1664
  %1668 = shl i64 %1667, 32
  %1669 = ashr exact i64 %1668, 32
  %1670 = icmp eq i64 %1667, %1669
  br i1 %1670, label %1675, label %1671

; <label>:1671:                                   ; preds = %block_40081a
  %1672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1673 = load i64, i64* %1672, align 8, !tbaa !2428
  %1674 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1673, %struct.Memory* %MEMORY.0) #17
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1

; <label>:1675:                                   ; preds = %block_40081a
  %1676 = srem i64 %1666, %1664
  %1677 = getelementptr inbounds %union.anon, %union.anon* %1655, i64 0, i32 0
  %1678 = and i64 %1667, 4294967295
  store i64 %1678, i64* %1677, align 8, !tbaa !2428
  %1679 = getelementptr inbounds %union.anon, %union.anon* %1659, i64 0, i32 0
  %1680 = and i64 %1676, 4294967295
  store i64 %1680, i64* %1679, align 8, !tbaa !2428
  %1681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1681, align 1, !tbaa !2434
  %1682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1682, align 1, !tbaa !2448
  %1683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1683, align 1, !tbaa !2449
  %1684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1684, align 1, !tbaa !2450
  %1685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1685, align 1, !tbaa !2451
  %1686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1686, align 1, !tbaa !2452
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1: ; preds = %1671, %1675
  %1687 = phi %struct.Memory* [ %1674, %1671 ], [ %MEMORY.0, %1675 ]
  %1688 = load i64, i64* %RBP
  %1689 = sub i64 %1688, 148
  %1690 = load i32, i32* %EAX
  %1691 = zext i32 %1690 to i64
  %1692 = load i64, i64* %PC
  %1693 = add i64 %1692, 6
  store i64 %1693, i64* %PC
  %1694 = inttoptr i64 %1689 to i32*
  store i32 %1690, i32* %1694
  %1695 = load i64, i64* %RBP
  %1696 = sub i64 %1695, 148
  %1697 = load i64, i64* %PC
  %1698 = add i64 %1697, 6
  store i64 %1698, i64* %PC
  %1699 = inttoptr i64 %1696 to i32*
  %1700 = load i32, i32* %1699
  %1701 = zext i32 %1700 to i64
  store i64 %1701, i64* %RAX, align 8, !tbaa !2428
  %1702 = load i64, i64* %PC
  %1703 = add i64 %1702, 1
  store i64 %1703, i64* %PC
  %1704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1706 = bitcast %union.anon* %1705 to i32*
  %1707 = load i32, i32* %1706, align 8, !tbaa !2456
  %1708 = sext i32 %1707 to i64
  %1709 = lshr i64 %1708, 32
  store i64 %1709, i64* %1704, align 8, !tbaa !2428
  %1710 = load i32, i32* %ECX
  %1711 = zext i32 %1710 to i64
  %1712 = load i64, i64* %PC
  %1713 = add i64 %1712, 2
  store i64 %1713, i64* %PC
  %1714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1715 = bitcast %union.anon* %1714 to i32*
  %1716 = load i32, i32* %1715, align 8, !tbaa !2456
  %1717 = zext i32 %1716 to i64
  %1718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1719 = bitcast %union.anon* %1718 to i32*
  %1720 = load i32, i32* %1719, align 8, !tbaa !2456
  %1721 = zext i32 %1720 to i64
  %1722 = shl i64 %1711, 32
  %1723 = ashr exact i64 %1722, 32
  %1724 = shl nuw i64 %1721, 32
  %1725 = or i64 %1724, %1717
  %1726 = sdiv i64 %1725, %1723
  %1727 = shl i64 %1726, 32
  %1728 = ashr exact i64 %1727, 32
  %1729 = icmp eq i64 %1726, %1728
  br i1 %1729, label %1734, label %1730

; <label>:1730:                                   ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1
  %1731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1732 = load i64, i64* %1731, align 8, !tbaa !2428
  %1733 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1732, %struct.Memory* %1687) #17
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:1734:                                   ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1
  %1735 = srem i64 %1725, %1723
  %1736 = getelementptr inbounds %union.anon, %union.anon* %1714, i64 0, i32 0
  %1737 = and i64 %1726, 4294967295
  store i64 %1737, i64* %1736, align 8, !tbaa !2428
  %1738 = getelementptr inbounds %union.anon, %union.anon* %1718, i64 0, i32 0
  %1739 = and i64 %1735, 4294967295
  store i64 %1739, i64* %1738, align 8, !tbaa !2428
  %1740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1740, align 1, !tbaa !2434
  %1741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1741, align 1, !tbaa !2448
  %1742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1742, align 1, !tbaa !2449
  %1743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1743, align 1, !tbaa !2450
  %1744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1744, align 1, !tbaa !2451
  %1745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1745, align 1, !tbaa !2452
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %1730, %1734
  %1746 = phi %struct.Memory* [ %1733, %1730 ], [ %1687, %1734 ]
  %1747 = load i64, i64* %RBP
  %1748 = sub i64 %1747, 144
  %1749 = load i32, i32* %EAX
  %1750 = zext i32 %1749 to i64
  %1751 = load i64, i64* %PC
  %1752 = add i64 %1751, 6
  store i64 %1752, i64* %PC
  %1753 = inttoptr i64 %1748 to i32*
  store i32 %1749, i32* %1753
  %1754 = load i64, i64* %RBP
  %1755 = sub i64 %1754, 136
  %1756 = load i64, i64* %PC
  %1757 = add i64 %1756, 10
  store i64 %1757, i64* %PC
  %1758 = inttoptr i64 %1755 to i32*
  store i32 1, i32* %1758
  %1759 = load i64, i64* %RBP
  %1760 = sub i64 %1759, 16
  %1761 = load i64, i64* %PC
  %1762 = add i64 %1761, 4
  store i64 %1762, i64* %PC
  %1763 = inttoptr i64 %1760 to i64*
  %1764 = load i64, i64* %1763
  store i64 %1764, i64* %RSI, align 8, !tbaa !2428
  %1765 = load i64, i64* %RSI
  %1766 = add i64 %1765, 8
  %1767 = bitcast %union.vec128_t* %XMM2 to i8*
  %1768 = load i64, i64* %PC
  %1769 = add i64 %1768, 5
  store i64 %1769, i64* %PC
  %1770 = bitcast i8* %1767 to <2 x float>*
  %1771 = load <2 x float>, <2 x float>* %1770, align 1
  %1772 = extractelement <2 x float> %1771, i32 0
  %1773 = inttoptr i64 %1766 to float*
  store float %1772, float* %1773
  %1774 = load i64, i64* %RBP
  %1775 = sub i64 %1774, 16
  %1776 = load i64, i64* %PC
  %1777 = add i64 %1776, 4
  store i64 %1777, i64* %PC
  %1778 = inttoptr i64 %1775 to i64*
  %1779 = load i64, i64* %1778
  store i64 %1779, i64* %RSI, align 8, !tbaa !2428
  %1780 = load i64, i64* %RSI
  %1781 = add i64 %1780, 12
  %1782 = bitcast %union.vec128_t* %XMM0 to i8*
  %1783 = load i64, i64* %PC
  %1784 = add i64 %1783, 5
  store i64 %1784, i64* %PC
  %1785 = bitcast i8* %1782 to <2 x float>*
  %1786 = load <2 x float>, <2 x float>* %1785, align 1
  %1787 = extractelement <2 x float> %1786, i32 0
  %1788 = inttoptr i64 %1781 to float*
  store float %1787, float* %1788
  %1789 = load i64, i64* %RBP
  %1790 = sub i64 %1789, 16
  %1791 = load i64, i64* %PC
  %1792 = add i64 %1791, 4
  store i64 %1792, i64* %PC
  %1793 = inttoptr i64 %1790 to i64*
  %1794 = load i64, i64* %1793
  store i64 %1794, i64* %RSI, align 8, !tbaa !2428
  %1795 = load i64, i64* %RBP
  %1796 = sub i64 %1795, 144
  %1797 = load i64, i64* %PC
  %1798 = add i64 %1797, 6
  store i64 %1798, i64* %PC
  %1799 = inttoptr i64 %1796 to i32*
  %1800 = load i32, i32* %1799
  %1801 = zext i32 %1800 to i64
  store i64 %1801, i64* %RAX, align 8, !tbaa !2428
  %1802 = load i64, i64* %RAX
  %1803 = load i64, i64* %PC
  %1804 = add i64 %1803, 3
  store i64 %1804, i64* %PC
  %1805 = trunc i64 %1802 to i32
  %1806 = add i32 1, %1805
  %1807 = zext i32 %1806 to i64
  store i64 %1807, i64* %RAX, align 8, !tbaa !2428
  %1808 = icmp ult i32 %1806, %1805
  %1809 = icmp ult i32 %1806, 1
  %1810 = or i1 %1808, %1809
  %1811 = zext i1 %1810 to i8
  %1812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1811, i8* %1812, align 1, !tbaa !2434
  %1813 = and i32 %1806, 255
  %1814 = call i32 @llvm.ctpop.i32(i32 %1813) #16
  %1815 = trunc i32 %1814 to i8
  %1816 = and i8 %1815, 1
  %1817 = xor i8 %1816, 1
  %1818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1817, i8* %1818, align 1, !tbaa !2448
  %1819 = xor i64 1, %1802
  %1820 = trunc i64 %1819 to i32
  %1821 = xor i32 %1820, %1806
  %1822 = lshr i32 %1821, 4
  %1823 = trunc i32 %1822 to i8
  %1824 = and i8 %1823, 1
  %1825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1824, i8* %1825, align 1, !tbaa !2449
  %1826 = icmp eq i32 %1806, 0
  %1827 = zext i1 %1826 to i8
  %1828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1827, i8* %1828, align 1, !tbaa !2450
  %1829 = lshr i32 %1806, 31
  %1830 = trunc i32 %1829 to i8
  %1831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1830, i8* %1831, align 1, !tbaa !2451
  %1832 = lshr i32 %1805, 31
  %1833 = xor i32 %1829, %1832
  %1834 = add nuw nsw i32 %1833, %1829
  %1835 = icmp eq i32 %1834, 2
  %1836 = zext i1 %1835 to i8
  %1837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1836, i8* %1837, align 1, !tbaa !2452
  %1838 = load i32, i32* %EAX
  %1839 = zext i32 %1838 to i64
  %1840 = load i64, i64* %PC
  %1841 = add i64 %1840, 3
  store i64 %1841, i64* %PC
  %1842 = shl i64 %1839, 32
  %1843 = ashr exact i64 %1842, 32
  store i64 %1843, i64* %RDI, align 8, !tbaa !2428
  %1844 = load i64, i64* %RSI
  %1845 = load i64, i64* %RDI
  %1846 = mul i64 %1845, 8
  %1847 = add i64 %1846, %1844
  %1848 = bitcast %union.vec128_t* %XMM0 to i8*
  %1849 = load i64, i64* %PC
  %1850 = add i64 %1849, 5
  store i64 %1850, i64* %PC
  %1851 = bitcast i8* %1848 to <2 x float>*
  %1852 = load <2 x float>, <2 x float>* %1851, align 1
  %1853 = extractelement <2 x float> %1852, i32 0
  %1854 = inttoptr i64 %1847 to float*
  store float %1853, float* %1854
  %1855 = load i64, i64* %RBP
  %1856 = sub i64 %1855, 16
  %1857 = load i64, i64* %PC
  %1858 = add i64 %1857, 4
  store i64 %1858, i64* %PC
  %1859 = inttoptr i64 %1856 to i64*
  %1860 = load i64, i64* %1859
  store i64 %1860, i64* %RSI, align 8, !tbaa !2428
  %1861 = load i64, i64* %RBP
  %1862 = sub i64 %1861, 144
  %1863 = load i64, i64* %PC
  %1864 = add i64 %1863, 6
  store i64 %1864, i64* %PC
  %1865 = inttoptr i64 %1862 to i32*
  %1866 = load i32, i32* %1865
  %1867 = zext i32 %1866 to i64
  store i64 %1867, i64* %RAX, align 8, !tbaa !2428
  %1868 = load i64, i64* %RAX
  %1869 = load i64, i64* %PC
  %1870 = add i64 %1869, 3
  store i64 %1870, i64* %PC
  %1871 = trunc i64 %1868 to i32
  %1872 = add i32 1, %1871
  %1873 = zext i32 %1872 to i64
  store i64 %1873, i64* %RAX, align 8, !tbaa !2428
  %1874 = icmp ult i32 %1872, %1871
  %1875 = icmp ult i32 %1872, 1
  %1876 = or i1 %1874, %1875
  %1877 = zext i1 %1876 to i8
  %1878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1877, i8* %1878, align 1, !tbaa !2434
  %1879 = and i32 %1872, 255
  %1880 = call i32 @llvm.ctpop.i32(i32 %1879) #16
  %1881 = trunc i32 %1880 to i8
  %1882 = and i8 %1881, 1
  %1883 = xor i8 %1882, 1
  %1884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1883, i8* %1884, align 1, !tbaa !2448
  %1885 = xor i64 1, %1868
  %1886 = trunc i64 %1885 to i32
  %1887 = xor i32 %1886, %1872
  %1888 = lshr i32 %1887, 4
  %1889 = trunc i32 %1888 to i8
  %1890 = and i8 %1889, 1
  %1891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1890, i8* %1891, align 1, !tbaa !2449
  %1892 = icmp eq i32 %1872, 0
  %1893 = zext i1 %1892 to i8
  %1894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1893, i8* %1894, align 1, !tbaa !2450
  %1895 = lshr i32 %1872, 31
  %1896 = trunc i32 %1895 to i8
  %1897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1896, i8* %1897, align 1, !tbaa !2451
  %1898 = lshr i32 %1871, 31
  %1899 = xor i32 %1895, %1898
  %1900 = add nuw nsw i32 %1899, %1895
  %1901 = icmp eq i32 %1900, 2
  %1902 = zext i1 %1901 to i8
  %1903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1902, i8* %1903, align 1, !tbaa !2452
  %1904 = load i32, i32* %EAX
  %1905 = zext i32 %1904 to i64
  %1906 = load i64, i64* %PC
  %1907 = add i64 %1906, 3
  store i64 %1907, i64* %PC
  %1908 = shl i64 %1905, 32
  %1909 = ashr exact i64 %1908, 32
  store i64 %1909, i64* %RDI, align 8, !tbaa !2428
  %1910 = load i64, i64* %RSI
  %1911 = load i64, i64* %RDI
  %1912 = mul i64 %1911, 8
  %1913 = add i64 %1910, 4
  %1914 = add i64 %1913, %1912
  %1915 = bitcast %union.vec128_t* %XMM2 to i8*
  %1916 = load i64, i64* %PC
  %1917 = add i64 %1916, 6
  store i64 %1917, i64* %PC
  %1918 = bitcast i8* %1915 to <2 x float>*
  %1919 = load <2 x float>, <2 x float>* %1918, align 1
  %1920 = extractelement <2 x float> %1919, i32 0
  %1921 = inttoptr i64 %1914 to float*
  store float %1920, float* %1921
  %1922 = load i64, i64* %RBP
  %1923 = sub i64 %1922, 16
  %1924 = load i64, i64* %PC
  %1925 = add i64 %1924, 4
  store i64 %1925, i64* %PC
  %1926 = inttoptr i64 %1923 to i64*
  %1927 = load i64, i64* %1926
  store i64 %1927, i64* %RSI, align 8, !tbaa !2428
  %1928 = load i64, i64* %RBP
  %1929 = sub i64 %1928, 148
  %1930 = load i64, i64* %PC
  %1931 = add i64 %1930, 6
  store i64 %1931, i64* %PC
  %1932 = inttoptr i64 %1929 to i32*
  %1933 = load i32, i32* %1932
  %1934 = zext i32 %1933 to i64
  store i64 %1934, i64* %RAX, align 8, !tbaa !2428
  %1935 = load i64, i64* %RAX
  %1936 = load i64, i64* %PC
  %1937 = add i64 %1936, 3
  store i64 %1937, i64* %PC
  %1938 = trunc i64 %1935 to i32
  %1939 = add i32 1, %1938
  %1940 = zext i32 %1939 to i64
  store i64 %1940, i64* %RAX, align 8, !tbaa !2428
  %1941 = icmp ult i32 %1939, %1938
  %1942 = icmp ult i32 %1939, 1
  %1943 = or i1 %1941, %1942
  %1944 = zext i1 %1943 to i8
  %1945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1944, i8* %1945, align 1, !tbaa !2434
  %1946 = and i32 %1939, 255
  %1947 = call i32 @llvm.ctpop.i32(i32 %1946) #16
  %1948 = trunc i32 %1947 to i8
  %1949 = and i8 %1948, 1
  %1950 = xor i8 %1949, 1
  %1951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1950, i8* %1951, align 1, !tbaa !2448
  %1952 = xor i64 1, %1935
  %1953 = trunc i64 %1952 to i32
  %1954 = xor i32 %1953, %1939
  %1955 = lshr i32 %1954, 4
  %1956 = trunc i32 %1955 to i8
  %1957 = and i8 %1956, 1
  %1958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1957, i8* %1958, align 1, !tbaa !2449
  %1959 = icmp eq i32 %1939, 0
  %1960 = zext i1 %1959 to i8
  %1961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1960, i8* %1961, align 1, !tbaa !2450
  %1962 = lshr i32 %1939, 31
  %1963 = trunc i32 %1962 to i8
  %1964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1963, i8* %1964, align 1, !tbaa !2451
  %1965 = lshr i32 %1938, 31
  %1966 = xor i32 %1962, %1965
  %1967 = add nuw nsw i32 %1966, %1962
  %1968 = icmp eq i32 %1967, 2
  %1969 = zext i1 %1968 to i8
  %1970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1969, i8* %1970, align 1, !tbaa !2452
  %1971 = load i32, i32* %EAX
  %1972 = zext i32 %1971 to i64
  %1973 = load i64, i64* %PC
  %1974 = add i64 %1973, 3
  store i64 %1974, i64* %PC
  %1975 = shl i64 %1972, 32
  %1976 = ashr exact i64 %1975, 32
  store i64 %1976, i64* %RDI, align 8, !tbaa !2428
  %1977 = load i64, i64* %RSI
  %1978 = load i64, i64* %RDI
  %1979 = mul i64 %1978, 8
  %1980 = add i64 %1979, %1977
  %1981 = bitcast %union.vec128_t* %XMM1 to i8*
  %1982 = load i64, i64* %PC
  %1983 = add i64 %1982, 5
  store i64 %1983, i64* %PC
  %1984 = bitcast i8* %1981 to <2 x float>*
  %1985 = load <2 x float>, <2 x float>* %1984, align 1
  %1986 = extractelement <2 x float> %1985, i32 0
  %1987 = inttoptr i64 %1980 to float*
  store float %1986, float* %1987
  %1988 = load i64, i64* %RBP
  %1989 = sub i64 %1988, 16
  %1990 = load i64, i64* %PC
  %1991 = add i64 %1990, 4
  store i64 %1991, i64* %PC
  %1992 = inttoptr i64 %1989 to i64*
  %1993 = load i64, i64* %1992
  store i64 %1993, i64* %RSI, align 8, !tbaa !2428
  %1994 = load i64, i64* %RBP
  %1995 = sub i64 %1994, 148
  %1996 = load i64, i64* %PC
  %1997 = add i64 %1996, 6
  store i64 %1997, i64* %PC
  %1998 = inttoptr i64 %1995 to i32*
  %1999 = load i32, i32* %1998
  %2000 = zext i32 %1999 to i64
  store i64 %2000, i64* %RAX, align 8, !tbaa !2428
  %2001 = load i64, i64* %RAX
  %2002 = load i64, i64* %PC
  %2003 = add i64 %2002, 3
  store i64 %2003, i64* %PC
  %2004 = trunc i64 %2001 to i32
  %2005 = add i32 1, %2004
  %2006 = zext i32 %2005 to i64
  store i64 %2006, i64* %RAX, align 8, !tbaa !2428
  %2007 = icmp ult i32 %2005, %2004
  %2008 = icmp ult i32 %2005, 1
  %2009 = or i1 %2007, %2008
  %2010 = zext i1 %2009 to i8
  %2011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2010, i8* %2011, align 1, !tbaa !2434
  %2012 = and i32 %2005, 255
  %2013 = call i32 @llvm.ctpop.i32(i32 %2012) #16
  %2014 = trunc i32 %2013 to i8
  %2015 = and i8 %2014, 1
  %2016 = xor i8 %2015, 1
  %2017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2016, i8* %2017, align 1, !tbaa !2448
  %2018 = xor i64 1, %2001
  %2019 = trunc i64 %2018 to i32
  %2020 = xor i32 %2019, %2005
  %2021 = lshr i32 %2020, 4
  %2022 = trunc i32 %2021 to i8
  %2023 = and i8 %2022, 1
  %2024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2023, i8* %2024, align 1, !tbaa !2449
  %2025 = icmp eq i32 %2005, 0
  %2026 = zext i1 %2025 to i8
  %2027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2026, i8* %2027, align 1, !tbaa !2450
  %2028 = lshr i32 %2005, 31
  %2029 = trunc i32 %2028 to i8
  %2030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2029, i8* %2030, align 1, !tbaa !2451
  %2031 = lshr i32 %2004, 31
  %2032 = xor i32 %2028, %2031
  %2033 = add nuw nsw i32 %2032, %2028
  %2034 = icmp eq i32 %2033, 2
  %2035 = zext i1 %2034 to i8
  %2036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2035, i8* %2036, align 1, !tbaa !2452
  %2037 = load i32, i32* %EAX
  %2038 = zext i32 %2037 to i64
  %2039 = load i64, i64* %PC
  %2040 = add i64 %2039, 3
  store i64 %2040, i64* %PC
  %2041 = shl i64 %2038, 32
  %2042 = ashr exact i64 %2041, 32
  store i64 %2042, i64* %RDI, align 8, !tbaa !2428
  %2043 = load i64, i64* %RSI
  %2044 = load i64, i64* %RDI
  %2045 = mul i64 %2044, 8
  %2046 = add i64 %2043, 4
  %2047 = add i64 %2046, %2045
  %2048 = bitcast %union.vec128_t* %XMM0 to i8*
  %2049 = load i64, i64* %PC
  %2050 = add i64 %2049, 6
  store i64 %2050, i64* %PC
  %2051 = bitcast i8* %2048 to <2 x float>*
  %2052 = load <2 x float>, <2 x float>* %2051, align 1
  %2053 = extractelement <2 x float> %2052, i32 0
  %2054 = inttoptr i64 %2047 to float*
  store float %2053, float* %2054
  br label %block_4008cd
}

; Function Attrs: noinline
declare void @__mcsema_attach_call() #13

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_4004e0_frame_dummy() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4004e0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @1, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_4004e0_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_4004e0_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_4004b0___do_global_dtors_aux() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4004b0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @3, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_4004b0___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_4004b0___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_619238_printf(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400ed0___libc_csu_fini() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400ed0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @4, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_400ed0___libc_csu_fini_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400ed0___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400e60___libc_csu_init() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400e60;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @5, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_400e60___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400e60___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @main() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400e20;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @6, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400e20_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_619230___libc_start_main(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @Uniform11() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400730;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @7, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400730_Uniform11(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.term_proc() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400ed4;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @8, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400ed4__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.init_proc() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4003c8;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @9, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_4003c8__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @Oscar() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400cd0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @10, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400cd0_Oscar(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @Exptab() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400780;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @11, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400780_Exptab(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @Min0() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400620;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @12, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400620_Min0(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @Initrand() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4004f0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @13, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_4004f0_Initrand(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @Printcomplex() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400650;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @14, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400650_Printcomplex(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @Rand() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400510;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @15, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400510_Rand(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @Cos() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400550;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @16, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400550_Cos(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @Fft() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400a20;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @17, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400a20_Fft(%struct.State* %0, i64 %1, %struct.Memory* %2)
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
  call void @callback_sub_400e60___libc_csu_init()
  ret void
}

define internal void @__mcsema_destructor() {
  call void @callback_sub_400ed0___libc_csu_fini()
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
!2432 = !{!2433, !2433, i64 0}
!2433 = !{!"float", !2430, i64 0}
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
!2446 = !{!"_ZTS13SegmentShadow", !2430, i64 0, !2447, i64 8, !2447, i64 12}
!2447 = !{!"int", !2430, i64 0}
!2448 = !{!2435, !2430, i64 2067}
!2449 = !{!2435, !2430, i64 2069}
!2450 = !{!2435, !2430, i64 2071}
!2451 = !{!2435, !2430, i64 2073}
!2452 = !{!2435, !2430, i64 2077}
!2453 = !{!2430, !2430, i64 0}
!2454 = !{!2455, !2455, i64 0}
!2455 = !{!"double", !2430, i64 0}
!2456 = !{!2447, !2447, i64 0}
