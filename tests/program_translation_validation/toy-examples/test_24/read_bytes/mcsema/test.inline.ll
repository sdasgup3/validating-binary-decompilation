; ModuleID = 'mcsema/test.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_400458__init_type = type <{ [23 x i8] }>
%seg_400470__plt_type = type <{ [64 x i8] }>
%seg_4004b0__text_type = type <{ [1778 x i8] }>
%seg_400ba4__fini_type = type <{ [9 x i8] }>
%seg_400bb0__rodata_type = type <{ [4 x i8], [38 x i8], [18 x i8], [23 x i8] }>
%seg_400c04__eh_frame_hdr_type = type <{ [76 x i8] }>
%seg_400c50__eh_frame_type = type <{ [340 x i8] }>
%seg_600e10__init_array_type = type <{ i64, i64 }>
%seg_600ff0__got_type = type <{ i64, i64 }>
%seg_601000__got_plt_type = type <{ [24 x i8], i64, i64, i64 }>
%seg_601030__data_type = type <{ [16 x i8] }>
%seg_601040__bss_type = type <{ [8 x i8], [8 x i8] }>
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
@stderr = external global i64, align 64
@seg_400458__init = internal constant %seg_400458__init_type <{ [23 x i8] c"H\83\EC\08H\8B\05\95\0B \00H\85\C0t\02\FF\D0H\83\C4\08\C3" }>
@seg_400470__plt = internal constant %seg_400470__plt_type <{ [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF%\92\0B \00\00\00\00\00\00\00\00\00\00\00\FF%\8A\0B \00\00\00\00\00\00\00\00\00\00\00\FF%\82\0B \00\00\00\00\00\00\00\00\00\00\00" }>
@seg_4004b0__text = internal constant %seg_4004b0__text_type <{ [1778 x i8] c"1\EDI\89\D1^H\89\E2H\83\E4\F0PTI\C7\C0\A0\0B@\00H\C7\C10\0B@\00H\C7\C7`\06@\00\FF\15\16\0B \00\F4\0F\1FD\00\00U\B8@\10`\00H=@\10`\00H\89\E5t\17\B8\00\00\00\00H\85\C0t\0D]\BF@\10`\00\FF\E0\0F\1FD\00\00]\C3f\0F\1FD\00\00\BE@\10`\00UH\81\EE@\10`\00H\89\E5H\C1\FE\03H\89\F0H\C1\E8?H\01\C6H\D1\FEt\15\B8\00\00\00\00H\85\C0t\0B]\BF@\10`\00\FF\E0\0F\1F\00]\C3f\0F\1FD\00\00\80=\F1\0A \00\00u\17UH\89\E5\E8~\FF\FF\FF\C6\05\DF\0A \00\01]\C3\0F\1FD\00\00\F3\C3\0F\1F@\00f.\0F\1F\84\00\00\00\00\00UH\89\E5]\EB\89f\0F\1F\84\00\00\00\00\00UH\89\E5@\88\F8\88E\FB\0F\B6}\FB\83\FF9\0F\8F\0F\00\00\00\0F\B6E\FB\83\E80\89E\FC\E9?\00\00\00\0F\B6E\FB\83\F8F\0F\8F\0F\00\00\00\0F\B6E\FB\83\E87\89E\FC\E9#\00\00\00\0F\B6E\FB\83\F8f\0F\8F\0F\00\00\00\0F\B6E\FB\83\E8W\89E\FC\E9\07\00\00\00\C7E\FC\00\00\00\00\8BE\FC]\C3f\0F\1FD\00\00UH\89\E5H\83\EC \89}\FCH\89u\F0\89U\EC\C7E\E8\00\00\00\00\8BE\E8;E\EC\0F\8D.\00\00\00\8BE\FC\C1\E0\04\89E\FCH\8BM\F0HcU\E8\0F\B6<\11\E8Q\FF\FF\FF\0BE\FC\89E\FC\8BE\E8\83\C0\01\89E\E8\E9\C6\FF\FF\FF\8BE\FCH\83\C4 ]\C3\0F\1F@\00UH\89\E5H\83\EC0\C7E\FC\00\00\00\00\89}\F8H\89u\F0\83}\F8\02\0F\8D(\00\00\00H\BE\B4\0B@\00\00\00\00\00H\8B<%@\10`\00\B0\00\E8\07\FE\FF\FF\C7E\FC\FF\FF\FF\FF\89E\E0\E9Z\00\00\00H\8BE\F0H\8B@\08H\89E\E8H\8B}\E8\B0\00\E8Q\00\00\00\89E\E4\83}\E4\00\0F\85\19\00\00\00H\BF\DA\0B@\00\00\00\00\00\B0\00\E8\B3\FD\FF\FF\89E\DC\E9\17\00\00\00H\BF\EC\0B@\00\00\00\00\00\8Bu\E4\B0\00\E8\97\FD\FF\FF\89E\D8\8BE\E4\89E\FC\8BE\FCH\83\C40]\C3\0F\1FD\00\00UH\89\E5H\83\ECPH\89}\F0H\8B}\F0\E8[\FD\FF\FF\89\C1\89M\E0\83}\E0%\0F\84\0B\00\00\00\8BE\E0\89E\FC\E9\E8\03\00\00H\8BE\F0H\83\C0\04H\89E\F0H\8BE\F0\0F\BE\08\83\F9d\0F\84\0C\00\00\00\C7E\FC\FE\FF\FF\FF\E9\C0\03\00\00H\8BE\F0\0F\B6x\01\E8\1C\FE\FF\FF\83\F8\09\0F\84\0C\00\00\00\C7E\FC\FD\FF\FF\FF\E9\9E\03\00\00H\8BE\F0\0F\B6x\02\E8\FA\FD\FF\FF\89E\E8\8BE\E8\C1\E0\01\83\F8\1A\0F\84\0C\00\00\00\C7E\FC\FC\FF\FF\FF\E9s\03\00\00H\8BE\F0\0F\B6x\03\E8\CF\FD\FF\FF\BF\02\00\00\00\89E\E4\8BE\E4\83\C0\01\99\F7\FF\83\F8\07\0F\84\0C\00\00\00\C7E\FC\FB\FF\FF\FF\E9@\03\00\00H\8BE\F0\0F\BEH\04\83\E1\0F\83\F9\01\0F\85#\00\00\00H\8BE\F0\0F\BEH\04\81\E1\F0\00\00\00\83\F90\0F\85\0C\00\00\00\C7E\EC\FC\FF\FF\FF\E9\0C\00\00\00\C7E\FC\FA\FF\FF\FF\E9\FD\02\00\00H\8BE\F0\0F\BEH\05\83\E1\0F\88\CA\88U\DFH\8BE\F0\0F\BEH\05\81\E1\F0\00\00\00\88\CA\88U\DE\0F\B6M\DF\83\F9\03\0F\85\1B\00\00\00\0F\B6E\DE\83\F8`\0F\85\0E\00\00\00\8BE\EC\83\C0\04\89E\EC\E9\09\00\00\00\8BE\EC\83\C0\05\89E\ECH\8BE\F0\0F\B6x\06\E8\05\FD\FF\FF\88\C1\88M\DDH\8BU\F0\0F\B6z\07\E8\F3\FC\FF\FF\0F\B6}\DD\09\C7@\88\F9\88M\DD\0F\B6E\DD\83\F0\FF\83\F8F\0F\85\0E\00\00\00\8BE\EC\83\E8\01\89E\EC\E9\0B\00\00\00\8BM\EC\8BE\EC\D3\E0\89E\EC\83}\EC\00\0F\84\0C\00\00\00\C7E\FC\F9\FF\FF\FF\E9?\02\00\001\FF\BA\04\00\00\00H\8BE\F0H\83\C0\08H\89\C6\E8\01\FD\FF\FFf\89\C1f\89M\DA\0F\B7E\DA\0DUU\00\00=W\DD\00\00\0F\85 \00\00\00\0F\B7E\DA\0D\AA\AA\00\00=\BB\FE\00\00\0F\85\0C\00\00\00\C7E\EC\AA\AA\00\00\E9\07\00\00\00\C7E\EC\BB\BB\00\001\FF\BA\08\00\00\00H\8BE\F0H\83\C0\0CH\89\C6\E8\A8\FC\FF\FF\89E\D4\8BE\D45\9Dv\88\A4\89E\D0\8BE\D0\C1\E8\10\89E\CC\8BE\D0%\FF\FF\00\00\89E\C8\83}\CCO\0F\85\18\00\00\00\8BE\C8;E\EC\0F\85\0C\00\00\00\C7E\EC\00\00\00\00\E9\07\00\00\00\C7E\EC\DF\BC\00\00\BA\08\00\00\00\8B}\ECH\8BE\F0H\83\C0\14H\89\C6\E8E\FC\FF\FF\89E\C4\8BE\C4\83\E8\03\89E\C4\8BE\C4\83\E0\07\83\F8\00\0F\84\0C\00\00\00\C7E\FC\EB\FF\FF\FF\E9E\01\00\00\8BE\C4-\00\00\00\80\89E\C4\81}\C4\FF\FF\FF\0F\0F\86\0C\00\00\00\C7E\FC\EA\FF\FF\FF\E9!\01\00\00\B8\10'\00\00\8BM\C4\81\F1\00\00\D0\00\89M\C4\8BM\C4\C1\E9\04\89M\C4\8BM\C4\81\E9\E2\00\00\00\89M\C4\8BM\C4\89E\BC\89\C81\D2\8BM\BC\F7\F1\89E\C4\83}\C4\03\0F\84\0B\00\00\00\8BE\C4\89E\FC\E9\D4\00\00\00\BA\04\00\00\00\8B}\ECH\8BE\F0H\83\C0\1CH\89\C6\E8\95\FB\FF\FF\89E\C0H\8Bu\F0\0F\BEF\1C\83\F8d\0F\85\1F\00\00\00H\8BE\F0\0F\BEH\1D\83\F9d\0F\85\0E\00\00\00\8BE\C03E\EC\89E\EC\E9\83\00\00\00H\8BE\F0\0F\BEH\1CH\8BE\F0\0F\BEP\1D9\D1\0F\85`\00\00\00\B8\0F\00\00\00H\8BM\F0\0F\BEQ\1FH\8BM\F0\0F\BEq\1E)\F2)\D0\03E\EC\89E\ECH\8BM\F0\0F\B6y\1C\E8\AE\FA\FF\FF\8BU\EC)\C2\89U\EC\83}\EC\00\0F\85\1D\00\00\00H\8BE\F0\0F\B6x\1F\E8\8F\FA\FF\FF\83\F8\04\0F\84\07\00\00\00\C7E\EC\E0\FF\FF\FF\E9\06\00\00\00\8BE\C0\89E\EC\E9\00\00\00\00\8BE\EC\89E\FC\8BE\FCH\83\C4P]\C3AWAVA\89\FFAUATL\8D%\CE\02 \00UH\8D-\CE\02 \00SI\89\F6I\89\D5L)\E5H\83\EC\08H\C1\FD\03\E8\F7\F8\FF\FFH\85\EDt 1\DB\0F\1F\84\00\00\00\00\00L\89\EAL\89\F6D\89\FFA\FF\14\DCH\83\C3\01H9\DDu\EAH\83\C4\08[]A\5CA]A^A_\C3\90f.\0F\1F\84\00\00\00\00\00\F3\C3" }>
@seg_400ba4__fini = internal constant %seg_400ba4__fini_type <{ [9 x i8] c"H\83\EC\08H\83\C4\08\C3" }>
@seg_400bb0__rodata = internal constant %seg_400bb0__rodata_type <{ [4 x i8] c"\01\00\02\00", [38 x i8] c"give me a key in the format key{hex}\0A\00", [18 x i8] c"a winner is you!\0A\00", [23 x i8] c"set sail for fail: %d\0A\00" }>
@seg_400c04__eh_frame_hdr = internal constant %seg_400c04__eh_frame_hdr_type <{ [76 x i8] c"\01\1B\03;H\00\00\00\08\00\00\00l\F8\FF\FF\94\00\00\00\AC\F8\FF\FFd\00\00\00\8C\F9\FF\FF\BC\00\00\00\FC\F9\FF\FF\DC\00\00\00\5C\FA\FF\FF\FC\00\00\00\0C\FB\FF\FF\1C\01\00\00,\FF\FF\FF<\01\00\00\9C\FF\FF\FF\84\01\00\00" }>
@seg_400c50__eh_frame = internal constant %seg_400c50__eh_frame_type <{ [340 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\14\00\00\00\1C\00\00\00@\F8\FF\FF+\00\00\00\00\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00$\00\00\00\1C\00\00\00\D0\F7\FF\FF@\00\00\00\00\0E\10F\0E\18J\0F\0Bw\08\80\00?\1A;*3$\22\00\00\00\00\1C\00\00\00D\00\00\00\C8\F8\FF\FFj\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00\1C\00\00\00d\00\00\00\18\F9\FF\FF\5C\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00\1C\00\00\00\84\00\00\00X\F9\FF\FF\AB\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00\1C\00\00\00\A4\00\00\00\E8\F9\FF\FF \04\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00D\00\00\00\C4\00\00\00\E8\FD\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\14\00\00\00\0C\01\00\00\10\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>
@seg_600e10__init_array = internal global %seg_600e10__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_400580_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_400550___do_global_dtors_aux to i64) }>
@seg_600ff0__got = internal global %seg_600ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@seg_601000__got_plt = internal global %seg_601000__got_plt_type <{ [24 x i8] zeroinitializer, i64 ptrtoint (i64 (i64)* @strlen to i64), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64) }>
@seg_601030__data = internal global %seg_601030__data_type zeroinitializer
@seg_601040__bss = internal global %seg_601040__bss_type zeroinitializer
@0 = internal global i1 false
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400580_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400550___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400ba0___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400b30___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @keycomp_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@10 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @read_bytes_wrapper
@11 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @to_byte_wrapper
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
define %struct.Memory* @__remill_basic_block(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #8 !dbg !1257 {
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
  store i8 0, i8* %BRANCH_TAKEN, align 1, !dbg !1948
  store i64 0, i64* %SS_BASE, align 8, !dbg !1949
  store i64 0, i64* %ES_BASE, align 8, !dbg !1950
  store i64 0, i64* %DS_BASE, align 8, !dbg !1951
  store i64 0, i64* %CS_BASE, align 8, !dbg !1952
  store %struct.State* %0, %struct.State** %STATE, align 8, !dbg !1953
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8, !dbg !1954
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1955
  %5 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 33, !dbg !1956
  %6 = getelementptr inbounds %struct.Reg, %struct.Reg* %5, i32 0, i32 0, !dbg !1957
  %PC = bitcast %union.anon* %6 to i64*, !dbg !1957
  store i64 %1, i64* %PC, align 8, !dbg !1958
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1959
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %7, i32 0, i32 1, !dbg !1960
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0, !dbg !1961
  %10 = bitcast %union.anon* %9 to %struct.anon.2*, !dbg !1961
  %AH = getelementptr inbounds %struct.anon.2, %struct.anon.2* %10, i32 0, i32 1, !dbg !1962
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1963
  %12 = getelementptr inbounds %struct.GPR, %struct.GPR* %11, i32 0, i32 3, !dbg !1964
  %13 = getelementptr inbounds %struct.Reg, %struct.Reg* %12, i32 0, i32 0, !dbg !1965
  %14 = bitcast %union.anon* %13 to %struct.anon.2*, !dbg !1965
  %BH = getelementptr inbounds %struct.anon.2, %struct.anon.2* %14, i32 0, i32 1, !dbg !1966
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1967
  %16 = getelementptr inbounds %struct.GPR, %struct.GPR* %15, i32 0, i32 5, !dbg !1968
  %17 = getelementptr inbounds %struct.Reg, %struct.Reg* %16, i32 0, i32 0, !dbg !1969
  %18 = bitcast %union.anon* %17 to %struct.anon.2*, !dbg !1969
  %CH = getelementptr inbounds %struct.anon.2, %struct.anon.2* %18, i32 0, i32 1, !dbg !1970
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1971
  %20 = getelementptr inbounds %struct.GPR, %struct.GPR* %19, i32 0, i32 7, !dbg !1972
  %21 = getelementptr inbounds %struct.Reg, %struct.Reg* %20, i32 0, i32 0, !dbg !1973
  %22 = bitcast %union.anon* %21 to %struct.anon.2*, !dbg !1973
  %DH = getelementptr inbounds %struct.anon.2, %struct.anon.2* %22, i32 0, i32 1, !dbg !1974
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1975
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 1, !dbg !1976
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0, !dbg !1977
  %26 = bitcast %union.anon* %25 to %struct.anon.2*, !dbg !1977
  %AL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %26, i32 0, i32 0, !dbg !1978
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1979
  %28 = getelementptr inbounds %struct.GPR, %struct.GPR* %27, i32 0, i32 3, !dbg !1980
  %29 = getelementptr inbounds %struct.Reg, %struct.Reg* %28, i32 0, i32 0, !dbg !1981
  %30 = bitcast %union.anon* %29 to %struct.anon.2*, !dbg !1981
  %BL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %30, i32 0, i32 0, !dbg !1982
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1983
  %32 = getelementptr inbounds %struct.GPR, %struct.GPR* %31, i32 0, i32 5, !dbg !1984
  %33 = getelementptr inbounds %struct.Reg, %struct.Reg* %32, i32 0, i32 0, !dbg !1985
  %34 = bitcast %union.anon* %33 to %struct.anon.2*, !dbg !1985
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %34, i32 0, i32 0, !dbg !1986
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1987
  %36 = getelementptr inbounds %struct.GPR, %struct.GPR* %35, i32 0, i32 7, !dbg !1988
  %37 = getelementptr inbounds %struct.Reg, %struct.Reg* %36, i32 0, i32 0, !dbg !1989
  %38 = bitcast %union.anon* %37 to %struct.anon.2*, !dbg !1989
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %38, i32 0, i32 0, !dbg !1990
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1991
  %40 = getelementptr inbounds %struct.GPR, %struct.GPR* %39, i32 0, i32 9, !dbg !1992
  %41 = getelementptr inbounds %struct.Reg, %struct.Reg* %40, i32 0, i32 0, !dbg !1993
  %42 = bitcast %union.anon* %41 to %struct.anon.2*, !dbg !1993
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %42, i32 0, i32 0, !dbg !1994
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1995
  %44 = getelementptr inbounds %struct.GPR, %struct.GPR* %43, i32 0, i32 11, !dbg !1996
  %45 = getelementptr inbounds %struct.Reg, %struct.Reg* %44, i32 0, i32 0, !dbg !1997
  %46 = bitcast %union.anon* %45 to %struct.anon.2*, !dbg !1997
  %DIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %46, i32 0, i32 0, !dbg !1998
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1999
  %48 = getelementptr inbounds %struct.GPR, %struct.GPR* %47, i32 0, i32 13, !dbg !2000
  %49 = getelementptr inbounds %struct.Reg, %struct.Reg* %48, i32 0, i32 0, !dbg !2001
  %50 = bitcast %union.anon* %49 to %struct.anon.2*, !dbg !2001
  %SPL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %50, i32 0, i32 0, !dbg !2002
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2003
  %52 = getelementptr inbounds %struct.GPR, %struct.GPR* %51, i32 0, i32 15, !dbg !2004
  %53 = getelementptr inbounds %struct.Reg, %struct.Reg* %52, i32 0, i32 0, !dbg !2005
  %54 = bitcast %union.anon* %53 to %struct.anon.2*, !dbg !2005
  %BPL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %54, i32 0, i32 0, !dbg !2006
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2007
  %56 = getelementptr inbounds %struct.GPR, %struct.GPR* %55, i32 0, i32 17, !dbg !2008
  %57 = getelementptr inbounds %struct.Reg, %struct.Reg* %56, i32 0, i32 0, !dbg !2009
  %58 = bitcast %union.anon* %57 to %struct.anon.2*, !dbg !2009
  %R8B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %58, i32 0, i32 0, !dbg !2010
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2011
  %60 = getelementptr inbounds %struct.GPR, %struct.GPR* %59, i32 0, i32 19, !dbg !2012
  %61 = getelementptr inbounds %struct.Reg, %struct.Reg* %60, i32 0, i32 0, !dbg !2013
  %62 = bitcast %union.anon* %61 to %struct.anon.2*, !dbg !2013
  %R9B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %62, i32 0, i32 0, !dbg !2014
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2015
  %64 = getelementptr inbounds %struct.GPR, %struct.GPR* %63, i32 0, i32 21, !dbg !2016
  %65 = getelementptr inbounds %struct.Reg, %struct.Reg* %64, i32 0, i32 0, !dbg !2017
  %66 = bitcast %union.anon* %65 to %struct.anon.2*, !dbg !2017
  %R10B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %66, i32 0, i32 0, !dbg !2018
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2019
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 23, !dbg !2020
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0, !dbg !2021
  %70 = bitcast %union.anon* %69 to %struct.anon.2*, !dbg !2021
  %R11B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %70, i32 0, i32 0, !dbg !2022
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2023
  %72 = getelementptr inbounds %struct.GPR, %struct.GPR* %71, i32 0, i32 25, !dbg !2024
  %73 = getelementptr inbounds %struct.Reg, %struct.Reg* %72, i32 0, i32 0, !dbg !2025
  %74 = bitcast %union.anon* %73 to %struct.anon.2*, !dbg !2025
  %R12B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %74, i32 0, i32 0, !dbg !2026
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2027
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 27, !dbg !2028
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0, !dbg !2029
  %78 = bitcast %union.anon* %77 to %struct.anon.2*, !dbg !2029
  %R13B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %78, i32 0, i32 0, !dbg !2030
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2031
  %80 = getelementptr inbounds %struct.GPR, %struct.GPR* %79, i32 0, i32 29, !dbg !2032
  %81 = getelementptr inbounds %struct.Reg, %struct.Reg* %80, i32 0, i32 0, !dbg !2033
  %82 = bitcast %union.anon* %81 to %struct.anon.2*, !dbg !2033
  %R14B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %82, i32 0, i32 0, !dbg !2034
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2035
  %84 = getelementptr inbounds %struct.GPR, %struct.GPR* %83, i32 0, i32 31, !dbg !2036
  %85 = getelementptr inbounds %struct.Reg, %struct.Reg* %84, i32 0, i32 0, !dbg !2037
  %86 = bitcast %union.anon* %85 to %struct.anon.2*, !dbg !2037
  %R15B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %86, i32 0, i32 0, !dbg !2038
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2039
  %88 = getelementptr inbounds %struct.GPR, %struct.GPR* %87, i32 0, i32 1, !dbg !2040
  %89 = getelementptr inbounds %struct.Reg, %struct.Reg* %88, i32 0, i32 0, !dbg !2041
  %AX = bitcast %union.anon* %89 to i16*, !dbg !2041
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2042
  %91 = getelementptr inbounds %struct.GPR, %struct.GPR* %90, i32 0, i32 3, !dbg !2043
  %92 = getelementptr inbounds %struct.Reg, %struct.Reg* %91, i32 0, i32 0, !dbg !2044
  %BX = bitcast %union.anon* %92 to i16*, !dbg !2044
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2045
  %94 = getelementptr inbounds %struct.GPR, %struct.GPR* %93, i32 0, i32 5, !dbg !2046
  %95 = getelementptr inbounds %struct.Reg, %struct.Reg* %94, i32 0, i32 0, !dbg !2047
  %CX = bitcast %union.anon* %95 to i16*, !dbg !2047
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2048
  %97 = getelementptr inbounds %struct.GPR, %struct.GPR* %96, i32 0, i32 7, !dbg !2049
  %98 = getelementptr inbounds %struct.Reg, %struct.Reg* %97, i32 0, i32 0, !dbg !2050
  %DX = bitcast %union.anon* %98 to i16*, !dbg !2050
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2051
  %100 = getelementptr inbounds %struct.GPR, %struct.GPR* %99, i32 0, i32 9, !dbg !2052
  %101 = getelementptr inbounds %struct.Reg, %struct.Reg* %100, i32 0, i32 0, !dbg !2053
  %SI = bitcast %union.anon* %101 to i16*, !dbg !2053
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2054
  %103 = getelementptr inbounds %struct.GPR, %struct.GPR* %102, i32 0, i32 11, !dbg !2055
  %104 = getelementptr inbounds %struct.Reg, %struct.Reg* %103, i32 0, i32 0, !dbg !2056
  %DI = bitcast %union.anon* %104 to i16*, !dbg !2056
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2057
  %106 = getelementptr inbounds %struct.GPR, %struct.GPR* %105, i32 0, i32 13, !dbg !2058
  %107 = getelementptr inbounds %struct.Reg, %struct.Reg* %106, i32 0, i32 0, !dbg !2059
  %SP = bitcast %union.anon* %107 to i16*, !dbg !2059
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2060
  %109 = getelementptr inbounds %struct.GPR, %struct.GPR* %108, i32 0, i32 15, !dbg !2061
  %110 = getelementptr inbounds %struct.Reg, %struct.Reg* %109, i32 0, i32 0, !dbg !2062
  %BP = bitcast %union.anon* %110 to i16*, !dbg !2062
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2063
  %112 = getelementptr inbounds %struct.GPR, %struct.GPR* %111, i32 0, i32 17, !dbg !2064
  %113 = getelementptr inbounds %struct.Reg, %struct.Reg* %112, i32 0, i32 0, !dbg !2065
  %R8W = bitcast %union.anon* %113 to i16*, !dbg !2065
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2066
  %115 = getelementptr inbounds %struct.GPR, %struct.GPR* %114, i32 0, i32 19, !dbg !2067
  %116 = getelementptr inbounds %struct.Reg, %struct.Reg* %115, i32 0, i32 0, !dbg !2068
  %R9W = bitcast %union.anon* %116 to i16*, !dbg !2068
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2069
  %118 = getelementptr inbounds %struct.GPR, %struct.GPR* %117, i32 0, i32 21, !dbg !2070
  %119 = getelementptr inbounds %struct.Reg, %struct.Reg* %118, i32 0, i32 0, !dbg !2071
  %R10W = bitcast %union.anon* %119 to i16*, !dbg !2071
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2072
  %121 = getelementptr inbounds %struct.GPR, %struct.GPR* %120, i32 0, i32 23, !dbg !2073
  %122 = getelementptr inbounds %struct.Reg, %struct.Reg* %121, i32 0, i32 0, !dbg !2074
  %R11W = bitcast %union.anon* %122 to i16*, !dbg !2074
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2075
  %124 = getelementptr inbounds %struct.GPR, %struct.GPR* %123, i32 0, i32 25, !dbg !2076
  %125 = getelementptr inbounds %struct.Reg, %struct.Reg* %124, i32 0, i32 0, !dbg !2077
  %R12W = bitcast %union.anon* %125 to i16*, !dbg !2077
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2078
  %127 = getelementptr inbounds %struct.GPR, %struct.GPR* %126, i32 0, i32 27, !dbg !2079
  %128 = getelementptr inbounds %struct.Reg, %struct.Reg* %127, i32 0, i32 0, !dbg !2080
  %R13W = bitcast %union.anon* %128 to i16*, !dbg !2080
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2081
  %130 = getelementptr inbounds %struct.GPR, %struct.GPR* %129, i32 0, i32 29, !dbg !2082
  %131 = getelementptr inbounds %struct.Reg, %struct.Reg* %130, i32 0, i32 0, !dbg !2083
  %R14W = bitcast %union.anon* %131 to i16*, !dbg !2083
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2084
  %133 = getelementptr inbounds %struct.GPR, %struct.GPR* %132, i32 0, i32 31, !dbg !2085
  %134 = getelementptr inbounds %struct.Reg, %struct.Reg* %133, i32 0, i32 0, !dbg !2086
  %R15W = bitcast %union.anon* %134 to i16*, !dbg !2086
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2087
  %136 = getelementptr inbounds %struct.GPR, %struct.GPR* %135, i32 0, i32 33, !dbg !2088
  %137 = getelementptr inbounds %struct.Reg, %struct.Reg* %136, i32 0, i32 0, !dbg !2089
  %IP = bitcast %union.anon* %137 to i16*, !dbg !2089
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2090
  %139 = getelementptr inbounds %struct.GPR, %struct.GPR* %138, i32 0, i32 1, !dbg !2091
  %140 = getelementptr inbounds %struct.Reg, %struct.Reg* %139, i32 0, i32 0, !dbg !2092
  %EAX = bitcast %union.anon* %140 to i32*, !dbg !2092
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2093
  %142 = getelementptr inbounds %struct.GPR, %struct.GPR* %141, i32 0, i32 3, !dbg !2094
  %143 = getelementptr inbounds %struct.Reg, %struct.Reg* %142, i32 0, i32 0, !dbg !2095
  %EBX = bitcast %union.anon* %143 to i32*, !dbg !2095
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2096
  %145 = getelementptr inbounds %struct.GPR, %struct.GPR* %144, i32 0, i32 5, !dbg !2097
  %146 = getelementptr inbounds %struct.Reg, %struct.Reg* %145, i32 0, i32 0, !dbg !2098
  %ECX = bitcast %union.anon* %146 to i32*, !dbg !2098
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2099
  %148 = getelementptr inbounds %struct.GPR, %struct.GPR* %147, i32 0, i32 7, !dbg !2100
  %149 = getelementptr inbounds %struct.Reg, %struct.Reg* %148, i32 0, i32 0, !dbg !2101
  %EDX = bitcast %union.anon* %149 to i32*, !dbg !2101
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2102
  %151 = getelementptr inbounds %struct.GPR, %struct.GPR* %150, i32 0, i32 9, !dbg !2103
  %152 = getelementptr inbounds %struct.Reg, %struct.Reg* %151, i32 0, i32 0, !dbg !2104
  %ESI = bitcast %union.anon* %152 to i32*, !dbg !2104
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2105
  %154 = getelementptr inbounds %struct.GPR, %struct.GPR* %153, i32 0, i32 11, !dbg !2106
  %155 = getelementptr inbounds %struct.Reg, %struct.Reg* %154, i32 0, i32 0, !dbg !2107
  %EDI = bitcast %union.anon* %155 to i32*, !dbg !2107
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2108
  %157 = getelementptr inbounds %struct.GPR, %struct.GPR* %156, i32 0, i32 13, !dbg !2109
  %158 = getelementptr inbounds %struct.Reg, %struct.Reg* %157, i32 0, i32 0, !dbg !2110
  %ESP = bitcast %union.anon* %158 to i32*, !dbg !2110
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2111
  %160 = getelementptr inbounds %struct.GPR, %struct.GPR* %159, i32 0, i32 15, !dbg !2112
  %161 = getelementptr inbounds %struct.Reg, %struct.Reg* %160, i32 0, i32 0, !dbg !2113
  %EBP = bitcast %union.anon* %161 to i32*, !dbg !2113
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2114
  %163 = getelementptr inbounds %struct.GPR, %struct.GPR* %162, i32 0, i32 33, !dbg !2115
  %164 = getelementptr inbounds %struct.Reg, %struct.Reg* %163, i32 0, i32 0, !dbg !2116
  %EIP = bitcast %union.anon* %164 to i32*, !dbg !2116
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2117
  %166 = getelementptr inbounds %struct.GPR, %struct.GPR* %165, i32 0, i32 17, !dbg !2118
  %167 = getelementptr inbounds %struct.Reg, %struct.Reg* %166, i32 0, i32 0, !dbg !2119
  %R8D = bitcast %union.anon* %167 to i32*, !dbg !2119
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2120
  %169 = getelementptr inbounds %struct.GPR, %struct.GPR* %168, i32 0, i32 19, !dbg !2121
  %170 = getelementptr inbounds %struct.Reg, %struct.Reg* %169, i32 0, i32 0, !dbg !2122
  %R9D = bitcast %union.anon* %170 to i32*, !dbg !2122
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2123
  %172 = getelementptr inbounds %struct.GPR, %struct.GPR* %171, i32 0, i32 21, !dbg !2124
  %173 = getelementptr inbounds %struct.Reg, %struct.Reg* %172, i32 0, i32 0, !dbg !2125
  %R10D = bitcast %union.anon* %173 to i32*, !dbg !2125
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2126
  %175 = getelementptr inbounds %struct.GPR, %struct.GPR* %174, i32 0, i32 23, !dbg !2127
  %176 = getelementptr inbounds %struct.Reg, %struct.Reg* %175, i32 0, i32 0, !dbg !2128
  %R11D = bitcast %union.anon* %176 to i32*, !dbg !2128
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2129
  %178 = getelementptr inbounds %struct.GPR, %struct.GPR* %177, i32 0, i32 25, !dbg !2130
  %179 = getelementptr inbounds %struct.Reg, %struct.Reg* %178, i32 0, i32 0, !dbg !2131
  %R12D = bitcast %union.anon* %179 to i32*, !dbg !2131
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2132
  %181 = getelementptr inbounds %struct.GPR, %struct.GPR* %180, i32 0, i32 27, !dbg !2133
  %182 = getelementptr inbounds %struct.Reg, %struct.Reg* %181, i32 0, i32 0, !dbg !2134
  %R13D = bitcast %union.anon* %182 to i32*, !dbg !2134
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2135
  %184 = getelementptr inbounds %struct.GPR, %struct.GPR* %183, i32 0, i32 29, !dbg !2136
  %185 = getelementptr inbounds %struct.Reg, %struct.Reg* %184, i32 0, i32 0, !dbg !2137
  %R14D = bitcast %union.anon* %185 to i32*, !dbg !2137
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2138
  %187 = getelementptr inbounds %struct.GPR, %struct.GPR* %186, i32 0, i32 31, !dbg !2139
  %188 = getelementptr inbounds %struct.Reg, %struct.Reg* %187, i32 0, i32 0, !dbg !2140
  %R15D = bitcast %union.anon* %188 to i32*, !dbg !2140
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2141
  %190 = getelementptr inbounds %struct.GPR, %struct.GPR* %189, i32 0, i32 1, !dbg !2142
  %191 = getelementptr inbounds %struct.Reg, %struct.Reg* %190, i32 0, i32 0, !dbg !2143
  %RAX = bitcast %union.anon* %191 to i64*, !dbg !2143
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2144
  %193 = getelementptr inbounds %struct.GPR, %struct.GPR* %192, i32 0, i32 3, !dbg !2145
  %194 = getelementptr inbounds %struct.Reg, %struct.Reg* %193, i32 0, i32 0, !dbg !2146
  %RBX = bitcast %union.anon* %194 to i64*, !dbg !2146
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2147
  %196 = getelementptr inbounds %struct.GPR, %struct.GPR* %195, i32 0, i32 5, !dbg !2148
  %197 = getelementptr inbounds %struct.Reg, %struct.Reg* %196, i32 0, i32 0, !dbg !2149
  %RCX = bitcast %union.anon* %197 to i64*, !dbg !2149
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2150
  %199 = getelementptr inbounds %struct.GPR, %struct.GPR* %198, i32 0, i32 7, !dbg !2151
  %200 = getelementptr inbounds %struct.Reg, %struct.Reg* %199, i32 0, i32 0, !dbg !2152
  %RDX = bitcast %union.anon* %200 to i64*, !dbg !2152
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2153
  %202 = getelementptr inbounds %struct.GPR, %struct.GPR* %201, i32 0, i32 9, !dbg !2154
  %203 = getelementptr inbounds %struct.Reg, %struct.Reg* %202, i32 0, i32 0, !dbg !2155
  %RSI = bitcast %union.anon* %203 to i64*, !dbg !2155
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2156
  %205 = getelementptr inbounds %struct.GPR, %struct.GPR* %204, i32 0, i32 11, !dbg !2157
  %206 = getelementptr inbounds %struct.Reg, %struct.Reg* %205, i32 0, i32 0, !dbg !2158
  %RDI = bitcast %union.anon* %206 to i64*, !dbg !2158
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2159
  %208 = getelementptr inbounds %struct.GPR, %struct.GPR* %207, i32 0, i32 13, !dbg !2160
  %209 = getelementptr inbounds %struct.Reg, %struct.Reg* %208, i32 0, i32 0, !dbg !2161
  %RSP = bitcast %union.anon* %209 to i64*, !dbg !2161
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2162
  %211 = getelementptr inbounds %struct.GPR, %struct.GPR* %210, i32 0, i32 15, !dbg !2163
  %212 = getelementptr inbounds %struct.Reg, %struct.Reg* %211, i32 0, i32 0, !dbg !2164
  %RBP = bitcast %union.anon* %212 to i64*, !dbg !2164
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2165
  %214 = getelementptr inbounds %struct.GPR, %struct.GPR* %213, i32 0, i32 17, !dbg !2166
  %215 = getelementptr inbounds %struct.Reg, %struct.Reg* %214, i32 0, i32 0, !dbg !2167
  %R8 = bitcast %union.anon* %215 to i64*, !dbg !2167
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2168
  %217 = getelementptr inbounds %struct.GPR, %struct.GPR* %216, i32 0, i32 19, !dbg !2169
  %218 = getelementptr inbounds %struct.Reg, %struct.Reg* %217, i32 0, i32 0, !dbg !2170
  %R9 = bitcast %union.anon* %218 to i64*, !dbg !2170
  %219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2171
  %220 = getelementptr inbounds %struct.GPR, %struct.GPR* %219, i32 0, i32 21, !dbg !2172
  %221 = getelementptr inbounds %struct.Reg, %struct.Reg* %220, i32 0, i32 0, !dbg !2173
  %R10 = bitcast %union.anon* %221 to i64*, !dbg !2173
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2174
  %223 = getelementptr inbounds %struct.GPR, %struct.GPR* %222, i32 0, i32 23, !dbg !2175
  %224 = getelementptr inbounds %struct.Reg, %struct.Reg* %223, i32 0, i32 0, !dbg !2176
  %R11 = bitcast %union.anon* %224 to i64*, !dbg !2176
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2177
  %226 = getelementptr inbounds %struct.GPR, %struct.GPR* %225, i32 0, i32 25, !dbg !2178
  %227 = getelementptr inbounds %struct.Reg, %struct.Reg* %226, i32 0, i32 0, !dbg !2179
  %R12 = bitcast %union.anon* %227 to i64*, !dbg !2179
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2180
  %229 = getelementptr inbounds %struct.GPR, %struct.GPR* %228, i32 0, i32 27, !dbg !2181
  %230 = getelementptr inbounds %struct.Reg, %struct.Reg* %229, i32 0, i32 0, !dbg !2182
  %R13 = bitcast %union.anon* %230 to i64*, !dbg !2182
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2183
  %232 = getelementptr inbounds %struct.GPR, %struct.GPR* %231, i32 0, i32 29, !dbg !2184
  %233 = getelementptr inbounds %struct.Reg, %struct.Reg* %232, i32 0, i32 0, !dbg !2185
  %R14 = bitcast %union.anon* %233 to i64*, !dbg !2185
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2186
  %235 = getelementptr inbounds %struct.GPR, %struct.GPR* %234, i32 0, i32 31, !dbg !2187
  %236 = getelementptr inbounds %struct.Reg, %struct.Reg* %235, i32 0, i32 0, !dbg !2188
  %R15 = bitcast %union.anon* %236 to i64*, !dbg !2188
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2189
  %238 = getelementptr inbounds %struct.GPR, %struct.GPR* %237, i32 0, i32 33, !dbg !2190
  %239 = getelementptr inbounds %struct.Reg, %struct.Reg* %238, i32 0, i32 0, !dbg !2191
  %RIP = bitcast %union.anon* %239 to i64*, !dbg !2191
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4, !dbg !2192
  %241 = getelementptr inbounds %struct.Segments, %struct.Segments* %240, i32 0, i32 1, !dbg !2193
  %SS = bitcast %union.SegmentSelector* %241 to i16*, !dbg !2194
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4, !dbg !2195
  %243 = getelementptr inbounds %struct.Segments, %struct.Segments* %242, i32 0, i32 3, !dbg !2196
  %ES = bitcast %union.SegmentSelector* %243 to i16*, !dbg !2197
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4, !dbg !2198
  %245 = getelementptr inbounds %struct.Segments, %struct.Segments* %244, i32 0, i32 5, !dbg !2199
  %GS = bitcast %union.SegmentSelector* %245 to i16*, !dbg !2200
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4, !dbg !2201
  %247 = getelementptr inbounds %struct.Segments, %struct.Segments* %246, i32 0, i32 7, !dbg !2202
  %FS = bitcast %union.SegmentSelector* %247 to i16*, !dbg !2203
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4, !dbg !2204
  %249 = getelementptr inbounds %struct.Segments, %struct.Segments* %248, i32 0, i32 9, !dbg !2205
  %DS = bitcast %union.SegmentSelector* %249 to i16*, !dbg !2206
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4, !dbg !2207
  %251 = getelementptr inbounds %struct.Segments, %struct.Segments* %250, i32 0, i32 11, !dbg !2208
  %CS = bitcast %union.SegmentSelector* %251 to i16*, !dbg !2209
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 5, !dbg !2210
  %253 = getelementptr inbounds %struct.AddressSpace, %struct.AddressSpace* %252, i32 0, i32 5, !dbg !2211
  %254 = getelementptr inbounds %struct.Reg, %struct.Reg* %253, i32 0, i32 0, !dbg !2212
  %GS_BASE = bitcast %union.anon* %254 to i64*, !dbg !2212
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 5, !dbg !2213
  %256 = getelementptr inbounds %struct.AddressSpace, %struct.AddressSpace* %255, i32 0, i32 7, !dbg !2214
  %257 = getelementptr inbounds %struct.Reg, %struct.Reg* %256, i32 0, i32 0, !dbg !2215
  %FS_BASE = bitcast %union.anon* %257 to i64*, !dbg !2215
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2216
  %259 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %258, i64 0, i64 0, !dbg !2217
  %YMM0 = bitcast %union.VectorReg* %259 to %"class.std::bitset"*, !dbg !2218
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2219
  %261 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %260, i64 0, i64 1, !dbg !2220
  %YMM1 = bitcast %union.VectorReg* %261 to %"class.std::bitset"*, !dbg !2221
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2222
  %263 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %262, i64 0, i64 2, !dbg !2223
  %YMM2 = bitcast %union.VectorReg* %263 to %"class.std::bitset"*, !dbg !2224
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2225
  %265 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %264, i64 0, i64 3, !dbg !2226
  %YMM3 = bitcast %union.VectorReg* %265 to %"class.std::bitset"*, !dbg !2227
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2228
  %267 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %266, i64 0, i64 4, !dbg !2229
  %YMM4 = bitcast %union.VectorReg* %267 to %"class.std::bitset"*, !dbg !2230
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2231
  %269 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %268, i64 0, i64 5, !dbg !2232
  %YMM5 = bitcast %union.VectorReg* %269 to %"class.std::bitset"*, !dbg !2233
  %270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2234
  %271 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %270, i64 0, i64 6, !dbg !2235
  %YMM6 = bitcast %union.VectorReg* %271 to %"class.std::bitset"*, !dbg !2236
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2237
  %273 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %272, i64 0, i64 7, !dbg !2238
  %YMM7 = bitcast %union.VectorReg* %273 to %"class.std::bitset"*, !dbg !2239
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2240
  %275 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %274, i64 0, i64 8, !dbg !2241
  %YMM8 = bitcast %union.VectorReg* %275 to %"class.std::bitset"*, !dbg !2242
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2243
  %277 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %276, i64 0, i64 9, !dbg !2244
  %YMM9 = bitcast %union.VectorReg* %277 to %"class.std::bitset"*, !dbg !2245
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2246
  %279 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %278, i64 0, i64 10, !dbg !2247
  %YMM10 = bitcast %union.VectorReg* %279 to %"class.std::bitset"*, !dbg !2248
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2249
  %281 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %280, i64 0, i64 11, !dbg !2250
  %YMM11 = bitcast %union.VectorReg* %281 to %"class.std::bitset"*, !dbg !2251
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2252
  %283 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %282, i64 0, i64 12, !dbg !2253
  %YMM12 = bitcast %union.VectorReg* %283 to %"class.std::bitset"*, !dbg !2254
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2255
  %285 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %284, i64 0, i64 13, !dbg !2256
  %YMM13 = bitcast %union.VectorReg* %285 to %"class.std::bitset"*, !dbg !2257
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2258
  %287 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %286, i64 0, i64 14, !dbg !2259
  %YMM14 = bitcast %union.VectorReg* %287 to %"class.std::bitset"*, !dbg !2260
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2261
  %289 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %288, i64 0, i64 15, !dbg !2262
  %YMM15 = bitcast %union.VectorReg* %289 to %"class.std::bitset"*, !dbg !2263
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2264
  %291 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %290, i64 0, i64 0, !dbg !2265
  %XMM0 = bitcast %union.VectorReg* %291 to %union.vec128_t*, !dbg !2266
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2267
  %293 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %292, i64 0, i64 1, !dbg !2268
  %XMM1 = bitcast %union.VectorReg* %293 to %union.vec128_t*, !dbg !2269
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2270
  %295 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %294, i64 0, i64 2, !dbg !2271
  %XMM2 = bitcast %union.VectorReg* %295 to %union.vec128_t*, !dbg !2272
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2273
  %297 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %296, i64 0, i64 3, !dbg !2274
  %XMM3 = bitcast %union.VectorReg* %297 to %union.vec128_t*, !dbg !2275
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2276
  %299 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %298, i64 0, i64 4, !dbg !2277
  %XMM4 = bitcast %union.VectorReg* %299 to %union.vec128_t*, !dbg !2278
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2279
  %301 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %300, i64 0, i64 5, !dbg !2280
  %XMM5 = bitcast %union.VectorReg* %301 to %union.vec128_t*, !dbg !2281
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2282
  %303 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %302, i64 0, i64 6, !dbg !2283
  %XMM6 = bitcast %union.VectorReg* %303 to %union.vec128_t*, !dbg !2284
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2285
  %305 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %304, i64 0, i64 7, !dbg !2286
  %XMM7 = bitcast %union.VectorReg* %305 to %union.vec128_t*, !dbg !2287
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2288
  %307 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %306, i64 0, i64 8, !dbg !2289
  %XMM8 = bitcast %union.VectorReg* %307 to %union.vec128_t*, !dbg !2290
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2291
  %309 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %308, i64 0, i64 9, !dbg !2292
  %XMM9 = bitcast %union.VectorReg* %309 to %union.vec128_t*, !dbg !2293
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2294
  %311 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %310, i64 0, i64 10, !dbg !2295
  %XMM10 = bitcast %union.VectorReg* %311 to %union.vec128_t*, !dbg !2296
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2297
  %313 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %312, i64 0, i64 11, !dbg !2298
  %XMM11 = bitcast %union.VectorReg* %313 to %union.vec128_t*, !dbg !2299
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2300
  %315 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %314, i64 0, i64 12, !dbg !2301
  %XMM12 = bitcast %union.VectorReg* %315 to %union.vec128_t*, !dbg !2302
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2303
  %317 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %316, i64 0, i64 13, !dbg !2304
  %XMM13 = bitcast %union.VectorReg* %317 to %union.vec128_t*, !dbg !2305
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2306
  %319 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %318, i64 0, i64 14, !dbg !2307
  %XMM14 = bitcast %union.VectorReg* %319 to %union.vec128_t*, !dbg !2308
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2309
  %321 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %320, i64 0, i64 15, !dbg !2310
  %XMM15 = bitcast %union.VectorReg* %321 to %union.vec128_t*, !dbg !2311
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2312
  %323 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %322, i32 0, i32 0, !dbg !2313
  %324 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %323, i64 0, i64 0, !dbg !2314
  %ST0 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %324, i32 0, i32 1, !dbg !2315
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2316
  %326 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %325, i32 0, i32 0, !dbg !2317
  %327 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %326, i64 0, i64 1, !dbg !2318
  %ST1 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %327, i32 0, i32 1, !dbg !2319
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2320
  %329 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %328, i32 0, i32 0, !dbg !2321
  %330 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %329, i64 0, i64 2, !dbg !2322
  %ST2 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %330, i32 0, i32 1, !dbg !2323
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2324
  %332 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %331, i32 0, i32 0, !dbg !2325
  %333 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %332, i64 0, i64 3, !dbg !2326
  %ST3 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %333, i32 0, i32 1, !dbg !2327
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2328
  %335 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %334, i32 0, i32 0, !dbg !2329
  %336 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %335, i64 0, i64 4, !dbg !2330
  %ST4 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %336, i32 0, i32 1, !dbg !2331
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2332
  %338 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %337, i32 0, i32 0, !dbg !2333
  %339 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %338, i64 0, i64 5, !dbg !2334
  %ST5 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %339, i32 0, i32 1, !dbg !2335
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2336
  %341 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %340, i32 0, i32 0, !dbg !2337
  %342 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %341, i64 0, i64 6, !dbg !2338
  %ST6 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %342, i32 0, i32 1, !dbg !2339
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2340
  %344 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %343, i32 0, i32 0, !dbg !2341
  %345 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %344, i64 0, i64 7, !dbg !2342
  %ST7 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %345, i32 0, i32 1, !dbg !2343
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2344
  %347 = getelementptr inbounds %struct.MMX, %struct.MMX* %346, i32 0, i32 0, !dbg !2345
  %348 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %347, i64 0, i64 0, !dbg !2346
  %349 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %348, i32 0, i32 1, !dbg !2347
  %350 = bitcast %union.vec64_t* %349 to %struct.uint64v1_t*, !dbg !2348
  %351 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %350, i32 0, i32 0, !dbg !2349
  %MM0 = getelementptr inbounds [1 x i64], [1 x i64]* %351, i64 0, i64 0, !dbg !2346
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2350
  %353 = getelementptr inbounds %struct.MMX, %struct.MMX* %352, i32 0, i32 0, !dbg !2351
  %354 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %353, i64 0, i64 1, !dbg !2352
  %355 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %354, i32 0, i32 1, !dbg !2353
  %356 = bitcast %union.vec64_t* %355 to %struct.uint64v1_t*, !dbg !2354
  %357 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %356, i32 0, i32 0, !dbg !2355
  %MM1 = getelementptr inbounds [1 x i64], [1 x i64]* %357, i64 0, i64 0, !dbg !2352
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2356
  %359 = getelementptr inbounds %struct.MMX, %struct.MMX* %358, i32 0, i32 0, !dbg !2357
  %360 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %359, i64 0, i64 2, !dbg !2358
  %361 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %360, i32 0, i32 1, !dbg !2359
  %362 = bitcast %union.vec64_t* %361 to %struct.uint64v1_t*, !dbg !2360
  %363 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %362, i32 0, i32 0, !dbg !2361
  %MM2 = getelementptr inbounds [1 x i64], [1 x i64]* %363, i64 0, i64 0, !dbg !2358
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2362
  %365 = getelementptr inbounds %struct.MMX, %struct.MMX* %364, i32 0, i32 0, !dbg !2363
  %366 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %365, i64 0, i64 3, !dbg !2364
  %367 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %366, i32 0, i32 1, !dbg !2365
  %368 = bitcast %union.vec64_t* %367 to %struct.uint64v1_t*, !dbg !2366
  %369 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %368, i32 0, i32 0, !dbg !2367
  %MM3 = getelementptr inbounds [1 x i64], [1 x i64]* %369, i64 0, i64 0, !dbg !2364
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2368
  %371 = getelementptr inbounds %struct.MMX, %struct.MMX* %370, i32 0, i32 0, !dbg !2369
  %372 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %371, i64 0, i64 4, !dbg !2370
  %373 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %372, i32 0, i32 1, !dbg !2371
  %374 = bitcast %union.vec64_t* %373 to %struct.uint64v1_t*, !dbg !2372
  %375 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %374, i32 0, i32 0, !dbg !2373
  %MM4 = getelementptr inbounds [1 x i64], [1 x i64]* %375, i64 0, i64 0, !dbg !2370
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2374
  %377 = getelementptr inbounds %struct.MMX, %struct.MMX* %376, i32 0, i32 0, !dbg !2375
  %378 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %377, i64 0, i64 5, !dbg !2376
  %379 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %378, i32 0, i32 1, !dbg !2377
  %380 = bitcast %union.vec64_t* %379 to %struct.uint64v1_t*, !dbg !2378
  %381 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %380, i32 0, i32 0, !dbg !2379
  %MM5 = getelementptr inbounds [1 x i64], [1 x i64]* %381, i64 0, i64 0, !dbg !2376
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2380
  %383 = getelementptr inbounds %struct.MMX, %struct.MMX* %382, i32 0, i32 0, !dbg !2381
  %384 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %383, i64 0, i64 6, !dbg !2382
  %385 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %384, i32 0, i32 1, !dbg !2383
  %386 = bitcast %union.vec64_t* %385 to %struct.uint64v1_t*, !dbg !2384
  %387 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %386, i32 0, i32 0, !dbg !2385
  %MM6 = getelementptr inbounds [1 x i64], [1 x i64]* %387, i64 0, i64 0, !dbg !2382
  %388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2386
  %389 = getelementptr inbounds %struct.MMX, %struct.MMX* %388, i32 0, i32 0, !dbg !2387
  %390 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %389, i64 0, i64 7, !dbg !2388
  %391 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %390, i32 0, i32 1, !dbg !2389
  %392 = bitcast %union.vec64_t* %391 to %struct.uint64v1_t*, !dbg !2390
  %393 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %392, i32 0, i32 0, !dbg !2391
  %MM7 = getelementptr inbounds [1 x i64], [1 x i64]* %393, i64 0, i64 0, !dbg !2388
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2, !dbg !2392
  %AF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %394, i32 0, i32 5, !dbg !2393
  %395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2, !dbg !2394
  %CF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %395, i32 0, i32 1, !dbg !2395
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2, !dbg !2396
  %DF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %396, i32 0, i32 11, !dbg !2397
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2, !dbg !2398
  %OF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %397, i32 0, i32 13, !dbg !2399
  %398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2, !dbg !2400
  %PF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %398, i32 0, i32 3, !dbg !2401
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2, !dbg !2402
  %SF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %399, i32 0, i32 9, !dbg !2403
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2, !dbg !2404
  %ZF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %400, i32 0, i32 7, !dbg !2405
  store i64* @DR0, i64** %_DR0, align 8, !dbg !2406
  store i64* @DR1, i64** %_DR1, align 8, !dbg !2407
  store i64* @DR2, i64** %_DR2, align 8, !dbg !2408
  store i64* @DR3, i64** %_DR3, align 8, !dbg !2409
  store i64* @DR4, i64** %_DR4, align 8, !dbg !2410
  store i64* @DR5, i64** %_DR5, align 8, !dbg !2411
  store i64* @DR6, i64** %_DR6, align 8, !dbg !2412
  store i64* @DR7, i64** %_DR7, align 8, !dbg !2413
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR0, i32 0, i32 0), i64** %CR0, align 8, !dbg !2414
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR1, i32 0, i32 0), i64** %CR1, align 8, !dbg !2415
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR2, i32 0, i32 0), i64** %CR2, align 8, !dbg !2416
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR3, i32 0, i32 0), i64** %CR3, align 8, !dbg !2417
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR4, i32 0, i32 0), i64** %CR4, align 8, !dbg !2418
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR8, i32 0, i32 0), i64** %CR8, align 8, !dbg !2419
  ret %struct.Memory* %2, !dbg !2420
}

; Function Attrs: noduplicate noinline nounwind optnone
define void @__remill_intrinsics() #9 !dbg !2421 {
  ret void, !dbg !2423
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
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @strlen(i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @fprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #13

; Function Attrs: noinline
define %struct.Memory* @sub_400580_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400580:
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
  %16 = load i64, i64* %15, align 8, !tbaa !2424
  %17 = add i64 %16, -8
  %18 = inttoptr i64 %17 to i64*
  store i64 %12, i64* %18
  store i64 %17, i64* %15, align 8, !tbaa !2424
  %19 = load i64, i64* %RSP
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 3
  store i64 %21, i64* %PC
  store i64 %19, i64* %RBP, align 8, !tbaa !2424
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 1
  store i64 %23, i64* %PC
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %25 = load i64, i64* %24, align 8, !tbaa !2424
  %26 = add i64 %25, 8
  %27 = inttoptr i64 %25 to i64*
  %28 = load i64, i64* %27
  store i64 %28, i64* %RBP, align 8, !tbaa !2424
  store i64 %26, i64* %24, align 8, !tbaa !2424
  %29 = load i64, i64* %PC
  %30 = sub i64 %29, 117
  %31 = load i64, i64* %PC
  %32 = add i64 %31, 2
  store i64 %32, i64* %PC
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %30, i64* %33, align 8, !tbaa !2424
  %34 = load i64, i64* %PC
  %35 = tail call %struct.Memory* @sub_400510_register_tm_clones(%struct.State* %0, i64 %34, %struct.Memory* %2)
  ret %struct.Memory* %35
}

; Function Attrs: noinline
define %struct.Memory* @sub_400458__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400458:
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
  store i64 %15, i64* %RSP, align 8, !tbaa !2424
  %16 = icmp ult i64 %12, 8
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1, !tbaa !2428
  %19 = trunc i64 %15 to i32
  %20 = and i32 %19, 255
  %21 = call i32 @llvm.ctpop.i32(i32 %20) #16
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1, !tbaa !2442
  %26 = xor i64 8, %12
  %27 = xor i64 %26, %15
  %28 = lshr i64 %27, 4
  %29 = trunc i64 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1, !tbaa !2443
  %32 = icmp eq i64 %15, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1, !tbaa !2444
  %35 = lshr i64 %15, 63
  %36 = trunc i64 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1, !tbaa !2445
  %38 = lshr i64 %12, 63
  %39 = xor i64 %35, %38
  %40 = add nuw nsw i64 %39, %38
  %41 = icmp eq i64 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1, !tbaa !2446
  %44 = load i64, i64* %PC
  %45 = add i64 %44, 7
  store i64 %45, i64* %PC
  %46 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_600ff0__got_type* @seg_600ff0__got to i64), i64 8) to i64*)
  store i64 %46, i64* %RAX, align 8, !tbaa !2424
  %47 = load i64, i64* %RAX
  %48 = load i64, i64* %RAX
  %49 = load i64, i64* %PC
  %50 = add i64 %49, 3
  store i64 %50, i64* %PC
  %51 = and i64 %48, %47
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %52, align 1, !tbaa !2428
  %53 = trunc i64 %51 to i32
  %54 = and i32 %53, 255
  %55 = call i32 @llvm.ctpop.i32(i32 %54) #16
  %56 = trunc i32 %55 to i8
  %57 = and i8 %56, 1
  %58 = xor i8 %57, 1
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %58, i8* %59, align 1, !tbaa !2442
  %60 = icmp eq i64 %51, 0
  %61 = zext i1 %60 to i8
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %61, i8* %62, align 1, !tbaa !2444
  %63 = lshr i64 %51, 63
  %64 = trunc i64 %63 to i8
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %64, i8* %65, align 1, !tbaa !2445
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %66, align 1, !tbaa !2446
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %67, align 1, !tbaa !2443
  %68 = load i64, i64* %PC
  %69 = add i64 %68, 4
  %70 = load i64, i64* %PC
  %71 = add i64 %70, 2
  %72 = load i64, i64* %PC
  %73 = add i64 %72, 2
  store i64 %73, i64* %PC
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %75 = load i8, i8* %74, align 1, !tbaa !2444
  store i8 %75, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %77 = icmp ne i8 %75, 0
  %78 = select i1 %77, i64 %69, i64 %71
  store i64 %78, i64* %76, align 8, !tbaa !2424
  %79 = load i8, i8* %BRANCH_TAKEN
  %80 = icmp eq i8 %79, 1
  br i1 %80, label %block_40046a, label %block_400468

block_40046a:                                     ; preds = %block_400468, %block_400458
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400458 ], [ %134, %block_400468 ]
  %81 = load i64, i64* %RSP
  %82 = load i64, i64* %PC
  %83 = add i64 %82, 4
  store i64 %83, i64* %PC
  %84 = add i64 8, %81
  store i64 %84, i64* %RSP, align 8, !tbaa !2424
  %85 = icmp ult i64 %84, %81
  %86 = icmp ult i64 %84, 8
  %87 = or i1 %85, %86
  %88 = zext i1 %87 to i8
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %88, i8* %89, align 1, !tbaa !2428
  %90 = trunc i64 %84 to i32
  %91 = and i32 %90, 255
  %92 = call i32 @llvm.ctpop.i32(i32 %91) #16
  %93 = trunc i32 %92 to i8
  %94 = and i8 %93, 1
  %95 = xor i8 %94, 1
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %95, i8* %96, align 1, !tbaa !2442
  %97 = xor i64 8, %81
  %98 = xor i64 %97, %84
  %99 = lshr i64 %98, 4
  %100 = trunc i64 %99 to i8
  %101 = and i8 %100, 1
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %101, i8* %102, align 1, !tbaa !2443
  %103 = icmp eq i64 %84, 0
  %104 = zext i1 %103 to i8
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %104, i8* %105, align 1, !tbaa !2444
  %106 = lshr i64 %84, 63
  %107 = trunc i64 %106 to i8
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %107, i8* %108, align 1, !tbaa !2445
  %109 = lshr i64 %81, 63
  %110 = xor i64 %106, %109
  %111 = add nuw nsw i64 %110, %106
  %112 = icmp eq i64 %111, 2
  %113 = zext i1 %112 to i8
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %113, i8* %114, align 1, !tbaa !2446
  %115 = load i64, i64* %PC
  %116 = add i64 %115, 1
  store i64 %116, i64* %PC
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %119 = load i64, i64* %118, align 8, !tbaa !2424
  %120 = inttoptr i64 %119 to i64*
  %121 = load i64, i64* %120
  store i64 %121, i64* %117, align 8, !tbaa !2424
  %122 = add i64 %119, 8
  store i64 %122, i64* %118, align 8, !tbaa !2424
  ret %struct.Memory* %MEMORY.0

block_400468:                                     ; preds = %block_400458
  %123 = load i64, i64* %RAX
  %124 = load i64, i64* %PC
  %125 = add i64 %124, 2
  %126 = load i64, i64* %PC
  %127 = add i64 %126, 2
  store i64 %127, i64* %PC
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %129 = load i64, i64* %128, align 8, !tbaa !2424
  %130 = add i64 %129, -8
  %131 = inttoptr i64 %130 to i64*
  store i64 %125, i64* %131
  store i64 %130, i64* %128, align 8, !tbaa !2424
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %123, i64* %132, align 8, !tbaa !2424
  %133 = load i64, i64* %PC
  %134 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 %133, %struct.Memory* %2)
  br label %block_40046a
}

; Function Attrs: noinline
define %struct.Memory* @sub_400710_keycomp(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  %19 = getelementptr inbounds %struct.GPR, %struct.GPR* %18, i32 0, i32 11
  %20 = getelementptr inbounds %struct.Reg, %struct.Reg* %19, i32 0, i32 0
  %21 = bitcast %union.anon* %20 to %struct.anon.2*
  %DIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %21, i32 0, i32 0
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %23 = getelementptr inbounds %struct.GPR, %struct.GPR* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.Reg, %struct.Reg* %23, i32 0, i32 0
  %AX = bitcast %union.anon* %24 to i16*
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %26 = getelementptr inbounds %struct.GPR, %struct.GPR* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.Reg, %struct.Reg* %26, i32 0, i32 0
  %CX = bitcast %union.anon* %27 to i16*
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %29 = getelementptr inbounds %struct.GPR, %struct.GPR* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.Reg, %struct.Reg* %29, i32 0, i32 0
  %EAX = bitcast %union.anon* %30 to i32*
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %32 = getelementptr inbounds %struct.GPR, %struct.GPR* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.Reg, %struct.Reg* %32, i32 0, i32 0
  %ECX = bitcast %union.anon* %33 to i32*
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %35 = getelementptr inbounds %struct.GPR, %struct.GPR* %34, i32 0, i32 7
  %36 = getelementptr inbounds %struct.Reg, %struct.Reg* %35, i32 0, i32 0
  %EDX = bitcast %union.anon* %36 to i32*
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %38 = getelementptr inbounds %struct.GPR, %struct.GPR* %37, i32 0, i32 9
  %39 = getelementptr inbounds %struct.Reg, %struct.Reg* %38, i32 0, i32 0
  %ESI = bitcast %union.anon* %39 to i32*
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %41 = getelementptr inbounds %struct.GPR, %struct.GPR* %40, i32 0, i32 11
  %42 = getelementptr inbounds %struct.Reg, %struct.Reg* %41, i32 0, i32 0
  %EDI = bitcast %union.anon* %42 to i32*
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %44 = getelementptr inbounds %struct.GPR, %struct.GPR* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.Reg, %struct.Reg* %44, i32 0, i32 0
  %RAX = bitcast %union.anon* %45 to i64*
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %47 = getelementptr inbounds %struct.GPR, %struct.GPR* %46, i32 0, i32 5
  %48 = getelementptr inbounds %struct.Reg, %struct.Reg* %47, i32 0, i32 0
  %RCX = bitcast %union.anon* %48 to i64*
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %50 = getelementptr inbounds %struct.GPR, %struct.GPR* %49, i32 0, i32 7
  %51 = getelementptr inbounds %struct.Reg, %struct.Reg* %50, i32 0, i32 0
  %RDX = bitcast %union.anon* %51 to i64*
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %53 = getelementptr inbounds %struct.GPR, %struct.GPR* %52, i32 0, i32 9
  %54 = getelementptr inbounds %struct.Reg, %struct.Reg* %53, i32 0, i32 0
  %RSI = bitcast %union.anon* %54 to i64*
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %56 = getelementptr inbounds %struct.GPR, %struct.GPR* %55, i32 0, i32 11
  %57 = getelementptr inbounds %struct.Reg, %struct.Reg* %56, i32 0, i32 0
  %RDI = bitcast %union.anon* %57 to i64*
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %59 = getelementptr inbounds %struct.GPR, %struct.GPR* %58, i32 0, i32 13
  %60 = getelementptr inbounds %struct.Reg, %struct.Reg* %59, i32 0, i32 0
  %RSP = bitcast %union.anon* %60 to i64*
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %62 = getelementptr inbounds %struct.GPR, %struct.GPR* %61, i32 0, i32 15
  %63 = getelementptr inbounds %struct.Reg, %struct.Reg* %62, i32 0, i32 0
  %RBP = bitcast %union.anon* %63 to i64*
  %64 = load i64, i64* %RBP
  %65 = load i64, i64* %PC
  %66 = add i64 %65, 1
  store i64 %66, i64* %PC
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %68 = load i64, i64* %67, align 8, !tbaa !2424
  %69 = add i64 %68, -8
  %70 = inttoptr i64 %69 to i64*
  store i64 %64, i64* %70
  store i64 %69, i64* %67, align 8, !tbaa !2424
  %71 = load i64, i64* %RSP
  %72 = load i64, i64* %PC
  %73 = add i64 %72, 3
  store i64 %73, i64* %PC
  store i64 %71, i64* %RBP, align 8, !tbaa !2424
  %74 = load i64, i64* %RSP
  %75 = load i64, i64* %PC
  %76 = add i64 %75, 4
  store i64 %76, i64* %PC
  %77 = sub i64 %74, 80
  store i64 %77, i64* %RSP, align 8, !tbaa !2424
  %78 = icmp ult i64 %74, 80
  %79 = zext i1 %78 to i8
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %79, i8* %80, align 1, !tbaa !2428
  %81 = trunc i64 %77 to i32
  %82 = and i32 %81, 255
  %83 = call i32 @llvm.ctpop.i32(i32 %82) #16
  %84 = trunc i32 %83 to i8
  %85 = and i8 %84, 1
  %86 = xor i8 %85, 1
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %86, i8* %87, align 1, !tbaa !2442
  %88 = xor i64 80, %74
  %89 = xor i64 %88, %77
  %90 = lshr i64 %89, 4
  %91 = trunc i64 %90 to i8
  %92 = and i8 %91, 1
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %92, i8* %93, align 1, !tbaa !2443
  %94 = icmp eq i64 %77, 0
  %95 = zext i1 %94 to i8
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %95, i8* %96, align 1, !tbaa !2444
  %97 = lshr i64 %77, 63
  %98 = trunc i64 %97 to i8
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %98, i8* %99, align 1, !tbaa !2445
  %100 = lshr i64 %74, 63
  %101 = xor i64 %97, %100
  %102 = add nuw nsw i64 %101, %100
  %103 = icmp eq i64 %102, 2
  %104 = zext i1 %103 to i8
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %104, i8* %105, align 1, !tbaa !2446
  %106 = load i64, i64* %RBP
  %107 = sub i64 %106, 16
  %108 = load i64, i64* %RDI
  %109 = load i64, i64* %PC
  %110 = add i64 %109, 4
  store i64 %110, i64* %PC
  %111 = inttoptr i64 %107 to i64*
  store i64 %108, i64* %111
  %112 = load i64, i64* %RBP
  %113 = sub i64 %112, 16
  %114 = load i64, i64* %PC
  %115 = add i64 %114, 4
  store i64 %115, i64* %PC
  %116 = inttoptr i64 %113 to i64*
  %117 = load i64, i64* %116
  store i64 %117, i64* %RDI, align 8, !tbaa !2424
  %118 = load i64, i64* %PC
  %119 = sub i64 %118, 672
  %120 = load i64, i64* %PC
  %121 = add i64 %120, 5
  %122 = load i64, i64* %PC
  %123 = add i64 %122, 5
  store i64 %123, i64* %PC
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %125 = load i64, i64* %124, align 8, !tbaa !2424
  %126 = add i64 %125, -8
  %127 = inttoptr i64 %126 to i64*
  store i64 %121, i64* %127
  store i64 %126, i64* %124, align 8, !tbaa !2424
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %119, i64* %128, align 8, !tbaa !2424
  %129 = load i64, i64* %PC
  %130 = call %struct.Memory* @ext_601070_strlen(%struct.State* %0, i64 %129, %struct.Memory* %2)
  %131 = load i32, i32* %EAX
  %132 = zext i32 %131 to i64
  %133 = load i64, i64* %PC
  %134 = add i64 %133, 2
  store i64 %134, i64* %PC
  %135 = and i64 %132, 4294967295
  store i64 %135, i64* %RCX, align 8, !tbaa !2424
  %136 = load i64, i64* %RBP
  %137 = sub i64 %136, 32
  %138 = load i32, i32* %ECX
  %139 = zext i32 %138 to i64
  %140 = load i64, i64* %PC
  %141 = add i64 %140, 3
  store i64 %141, i64* %PC
  %142 = inttoptr i64 %137 to i32*
  store i32 %138, i32* %142
  %143 = load i64, i64* %RBP
  %144 = sub i64 %143, 32
  %145 = load i64, i64* %PC
  %146 = add i64 %145, 4
  store i64 %146, i64* %PC
  %147 = inttoptr i64 %144 to i32*
  %148 = load i32, i32* %147
  %149 = sub i32 %148, 37
  %150 = icmp ult i32 %148, 37
  %151 = zext i1 %150 to i8
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %151, i8* %152, align 1, !tbaa !2428
  %153 = and i32 %149, 255
  %154 = call i32 @llvm.ctpop.i32(i32 %153) #16
  %155 = trunc i32 %154 to i8
  %156 = and i8 %155, 1
  %157 = xor i8 %156, 1
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %157, i8* %158, align 1, !tbaa !2442
  %159 = xor i32 %148, 37
  %160 = xor i32 %159, %149
  %161 = lshr i32 %160, 4
  %162 = trunc i32 %161 to i8
  %163 = and i8 %162, 1
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %163, i8* %164, align 1, !tbaa !2443
  %165 = icmp eq i32 %149, 0
  %166 = zext i1 %165 to i8
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %166, i8* %167, align 1, !tbaa !2444
  %168 = lshr i32 %149, 31
  %169 = trunc i32 %168 to i8
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %169, i8* %170, align 1, !tbaa !2445
  %171 = lshr i32 %148, 31
  %172 = xor i32 %168, %171
  %173 = add nuw nsw i32 %172, %171
  %174 = icmp eq i32 %173, 2
  %175 = zext i1 %174 to i8
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %175, i8* %176, align 1, !tbaa !2446
  %177 = load i64, i64* %PC
  %178 = add i64 %177, 17
  %179 = load i64, i64* %PC
  %180 = add i64 %179, 6
  %181 = load i64, i64* %PC
  %182 = add i64 %181, 6
  store i64 %182, i64* %PC
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %184 = load i8, i8* %183, align 1, !tbaa !2444
  store i8 %184, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %186 = icmp ne i8 %184, 0
  %187 = select i1 %186, i64 %178, i64 %180
  store i64 %187, i64* %185, align 8, !tbaa !2424
  %188 = load i8, i8* %BRANCH_TAKEN
  %189 = icmp eq i8 %188, 1
  %190 = load i64, i64* %RBP
  br i1 %189, label %block_40073f, label %block_400734

block_400875:                                     ; preds = %block_400812, %block_40085a
  %MEMORY.0 = phi %struct.Memory* [ %1474, %block_400812 ], [ %1474, %block_40085a ]
  %191 = load i64, i64* %RBP
  %192 = sub i64 %191, 20
  %193 = load i64, i64* %PC
  %194 = add i64 %193, 3
  store i64 %194, i64* %PC
  %195 = inttoptr i64 %192 to i32*
  %196 = load i32, i32* %195
  %197 = zext i32 %196 to i64
  store i64 %197, i64* %RAX, align 8, !tbaa !2424
  %198 = load i64, i64* %RAX
  %199 = load i64, i64* %PC
  %200 = add i64 %199, 3
  store i64 %200, i64* %PC
  %201 = trunc i64 %198 to i32
  %202 = add i32 5, %201
  %203 = zext i32 %202 to i64
  store i64 %203, i64* %RAX, align 8, !tbaa !2424
  %204 = icmp ult i32 %202, %201
  %205 = icmp ult i32 %202, 5
  %206 = or i1 %204, %205
  %207 = zext i1 %206 to i8
  %208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %207, i8* %208, align 1, !tbaa !2428
  %209 = and i32 %202, 255
  %210 = call i32 @llvm.ctpop.i32(i32 %209) #16
  %211 = trunc i32 %210 to i8
  %212 = and i8 %211, 1
  %213 = xor i8 %212, 1
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %213, i8* %214, align 1, !tbaa !2442
  %215 = xor i64 5, %198
  %216 = trunc i64 %215 to i32
  %217 = xor i32 %216, %202
  %218 = lshr i32 %217, 4
  %219 = trunc i32 %218 to i8
  %220 = and i8 %219, 1
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %220, i8* %221, align 1, !tbaa !2443
  %222 = icmp eq i32 %202, 0
  %223 = zext i1 %222 to i8
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %223, i8* %224, align 1, !tbaa !2444
  %225 = lshr i32 %202, 31
  %226 = trunc i32 %225 to i8
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %226, i8* %227, align 1, !tbaa !2445
  %228 = lshr i32 %201, 31
  %229 = xor i32 %225, %228
  %230 = add nuw nsw i32 %229, %225
  %231 = icmp eq i32 %230, 2
  %232 = zext i1 %231 to i8
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %232, i8* %233, align 1, !tbaa !2446
  %234 = load i64, i64* %RBP
  %235 = sub i64 %234, 20
  %236 = load i32, i32* %EAX
  %237 = zext i32 %236 to i64
  %238 = load i64, i64* %PC
  %239 = add i64 %238, 3
  store i64 %239, i64* %PC
  %240 = inttoptr i64 %235 to i32*
  store i32 %236, i32* %240
  br label %block_40087e

block_400af4:                                     ; preds = %block_400ab6
  %241 = load i64, i64* %RBP
  %242 = sub i64 %241, 16
  %243 = load i64, i64* %PC
  %244 = add i64 %243, 4
  store i64 %244, i64* %PC
  %245 = inttoptr i64 %242 to i64*
  %246 = load i64, i64* %245
  store i64 %246, i64* %RAX, align 8, !tbaa !2424
  %247 = load i64, i64* %RAX
  %248 = add i64 %247, 31
  %249 = load i64, i64* %PC
  %250 = add i64 %249, 4
  store i64 %250, i64* %PC
  %251 = inttoptr i64 %248 to i8*
  %252 = load i8, i8* %251
  %253 = zext i8 %252 to i64
  store i64 %253, i64* %RDI, align 8, !tbaa !2424
  %254 = load i64, i64* %PC
  %255 = sub i64 %254, 1388
  %256 = load i64, i64* %PC
  %257 = add i64 %256, 5
  %258 = load i64, i64* %PC
  %259 = add i64 %258, 5
  store i64 %259, i64* %PC
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %261 = load i64, i64* %260, align 8, !tbaa !2424
  %262 = add i64 %261, -8
  %263 = inttoptr i64 %262 to i64*
  store i64 %257, i64* %263
  store i64 %262, i64* %260, align 8, !tbaa !2424
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %255, i64* %264, align 8, !tbaa !2424
  %265 = load i64, i64* %PC
  %266 = call %struct.Memory* @sub_400590_to_byte(%struct.State* %0, i64 %265, %struct.Memory* %1260)
  %267 = load i32, i32* %EAX
  %268 = zext i32 %267 to i64
  %269 = load i64, i64* %PC
  %270 = add i64 %269, 3
  store i64 %270, i64* %PC
  %271 = sub i32 %267, 4
  %272 = icmp ult i32 %267, 4
  %273 = zext i1 %272 to i8
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %273, i8* %274, align 1, !tbaa !2428
  %275 = and i32 %271, 255
  %276 = call i32 @llvm.ctpop.i32(i32 %275) #16
  %277 = trunc i32 %276 to i8
  %278 = and i8 %277, 1
  %279 = xor i8 %278, 1
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %279, i8* %280, align 1, !tbaa !2442
  %281 = xor i64 4, %268
  %282 = trunc i64 %281 to i32
  %283 = xor i32 %282, %271
  %284 = lshr i32 %283, 4
  %285 = trunc i32 %284 to i8
  %286 = and i8 %285, 1
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %286, i8* %287, align 1, !tbaa !2443
  %288 = icmp eq i32 %271, 0
  %289 = zext i1 %288 to i8
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %289, i8* %290, align 1, !tbaa !2444
  %291 = lshr i32 %271, 31
  %292 = trunc i32 %291 to i8
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %292, i8* %293, align 1, !tbaa !2445
  %294 = lshr i32 %267, 31
  %295 = xor i32 %291, %294
  %296 = add nuw nsw i32 %295, %294
  %297 = icmp eq i32 %296, 2
  %298 = zext i1 %297 to i8
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %298, i8* %299, align 1, !tbaa !2446
  %300 = load i64, i64* %PC
  %301 = add i64 %300, 13
  %302 = load i64, i64* %PC
  %303 = add i64 %302, 6
  %304 = load i64, i64* %PC
  %305 = add i64 %304, 6
  store i64 %305, i64* %PC
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %307 = load i8, i8* %306, align 1, !tbaa !2444
  store i8 %307, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %309 = icmp ne i8 %307, 0
  %310 = select i1 %309, i64 %301, i64 %303
  store i64 %310, i64* %308, align 8, !tbaa !2424
  %311 = load i8, i8* %BRANCH_TAKEN
  %312 = icmp eq i8 %311, 1
  br i1 %312, label %block_400b11, label %block_400b0a

block_4007db:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit
  %313 = sub i64 %1521, 4
  %314 = load i64, i64* %PC
  %315 = add i64 %314, 7
  store i64 %315, i64* %PC
  %316 = inttoptr i64 %313 to i32*
  store i32 -5, i32* %316
  %317 = load i64, i64* %PC
  %318 = add i64 %317, 837
  %319 = load i64, i64* %PC
  %320 = add i64 %319, 5
  store i64 %320, i64* %PC
  %321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %318, i64* %321, align 8, !tbaa !2424
  br label %block_400b27

block_400867:                                     ; preds = %block_40085a
  %322 = load i64, i64* %RBP
  %323 = sub i64 %322, 20
  %324 = load i64, i64* %PC
  %325 = add i64 %324, 3
  store i64 %325, i64* %PC
  %326 = inttoptr i64 %323 to i32*
  %327 = load i32, i32* %326
  %328 = zext i32 %327 to i64
  store i64 %328, i64* %RAX, align 8, !tbaa !2424
  %329 = load i64, i64* %RAX
  %330 = load i64, i64* %PC
  %331 = add i64 %330, 3
  store i64 %331, i64* %PC
  %332 = trunc i64 %329 to i32
  %333 = add i32 4, %332
  %334 = zext i32 %333 to i64
  store i64 %334, i64* %RAX, align 8, !tbaa !2424
  %335 = icmp ult i32 %333, %332
  %336 = icmp ult i32 %333, 4
  %337 = or i1 %335, %336
  %338 = zext i1 %337 to i8
  %339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %338, i8* %339, align 1, !tbaa !2428
  %340 = and i32 %333, 255
  %341 = call i32 @llvm.ctpop.i32(i32 %340) #16
  %342 = trunc i32 %341 to i8
  %343 = and i8 %342, 1
  %344 = xor i8 %343, 1
  %345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %344, i8* %345, align 1, !tbaa !2442
  %346 = xor i64 4, %329
  %347 = trunc i64 %346 to i32
  %348 = xor i32 %347, %333
  %349 = lshr i32 %348, 4
  %350 = trunc i32 %349 to i8
  %351 = and i8 %350, 1
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %351, i8* %352, align 1, !tbaa !2443
  %353 = icmp eq i32 %333, 0
  %354 = zext i1 %353 to i8
  %355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %354, i8* %355, align 1, !tbaa !2444
  %356 = lshr i32 %333, 31
  %357 = trunc i32 %356 to i8
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %357, i8* %358, align 1, !tbaa !2445
  %359 = lshr i32 %332, 31
  %360 = xor i32 %356, %359
  %361 = add nuw nsw i32 %360, %356
  %362 = icmp eq i32 %361, 2
  %363 = zext i1 %362 to i8
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %363, i8* %364, align 1, !tbaa !2446
  %365 = load i64, i64* %RBP
  %366 = sub i64 %365, 20
  %367 = load i32, i32* %EAX
  %368 = zext i32 %367 to i64
  %369 = load i64, i64* %PC
  %370 = add i64 %369, 3
  store i64 %370, i64* %PC
  %371 = inttoptr i64 %366 to i32*
  store i32 %367, i32* %371
  %372 = load i64, i64* %PC
  %373 = add i64 %372, 14
  %374 = load i64, i64* %PC
  %375 = add i64 %374, 5
  store i64 %375, i64* %PC
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %373, i64* %376, align 8, !tbaa !2424
  br label %block_40087e

block_40075b:                                     ; preds = %block_40073f
  %377 = sub i64 %927, 4
  %378 = load i64, i64* %PC
  %379 = add i64 %378, 7
  store i64 %379, i64* %PC
  %380 = inttoptr i64 %377 to i32*
  store i32 -2, i32* %380
  %381 = load i64, i64* %PC
  %382 = add i64 %381, 965
  %383 = load i64, i64* %PC
  %384 = add i64 %383, 5
  store i64 %384, i64* %PC
  %385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %382, i64* %385, align 8, !tbaa !2424
  br label %block_400b27

block_40077d:                                     ; preds = %block_400767
  %386 = sub i64 %1904, 4
  %387 = load i64, i64* %PC
  %388 = add i64 %387, 7
  store i64 %388, i64* %PC
  %389 = inttoptr i64 %386 to i32*
  store i32 -3, i32* %389
  %390 = load i64, i64* %PC
  %391 = add i64 %390, 931
  %392 = load i64, i64* %PC
  %393 = add i64 %392, 5
  store i64 %393, i64* %PC
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %391, i64* %394, align 8, !tbaa !2424
  br label %block_400b27

block_4007e7:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit
  %395 = sub i64 %1521, 16
  %396 = load i64, i64* %PC
  %397 = add i64 %396, 4
  store i64 %397, i64* %PC
  %398 = inttoptr i64 %395 to i64*
  %399 = load i64, i64* %398
  store i64 %399, i64* %RAX, align 8, !tbaa !2424
  %400 = load i64, i64* %RAX
  %401 = add i64 %400, 4
  %402 = load i64, i64* %PC
  %403 = add i64 %402, 4
  store i64 %403, i64* %PC
  %404 = inttoptr i64 %401 to i8*
  %405 = load i8, i8* %404
  %406 = sext i8 %405 to i64
  %407 = and i64 %406, 4294967295
  store i64 %407, i64* %RCX, align 8, !tbaa !2424
  %408 = load i64, i64* %RCX
  %409 = load i64, i64* %PC
  %410 = add i64 %409, 3
  store i64 %410, i64* %PC
  %411 = and i64 15, %408
  %412 = trunc i64 %411 to i32
  store i64 %411, i64* %RCX, align 8, !tbaa !2424
  %413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %413, align 1, !tbaa !2428
  %414 = and i32 %412, 255
  %415 = call i32 @llvm.ctpop.i32(i32 %414) #16
  %416 = trunc i32 %415 to i8
  %417 = and i8 %416, 1
  %418 = xor i8 %417, 1
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %418, i8* %419, align 1, !tbaa !2442
  %420 = icmp eq i32 %412, 0
  %421 = zext i1 %420 to i8
  %422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %421, i8* %422, align 1, !tbaa !2444
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %423, align 1, !tbaa !2445
  %424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %424, align 1, !tbaa !2446
  %425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %425, align 1, !tbaa !2443
  %426 = load i32, i32* %ECX
  %427 = zext i32 %426 to i64
  %428 = load i64, i64* %PC
  %429 = add i64 %428, 3
  store i64 %429, i64* %PC
  %430 = sub i32 %426, 1
  %431 = icmp ult i32 %426, 1
  %432 = zext i1 %431 to i8
  %433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %432, i8* %433, align 1, !tbaa !2428
  %434 = and i32 %430, 255
  %435 = call i32 @llvm.ctpop.i32(i32 %434) #16
  %436 = trunc i32 %435 to i8
  %437 = and i8 %436, 1
  %438 = xor i8 %437, 1
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %438, i8* %439, align 1, !tbaa !2442
  %440 = xor i64 1, %427
  %441 = trunc i64 %440 to i32
  %442 = xor i32 %441, %430
  %443 = lshr i32 %442, 4
  %444 = trunc i32 %443 to i8
  %445 = and i8 %444, 1
  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %445, i8* %446, align 1, !tbaa !2443
  %447 = icmp eq i32 %430, 0
  %448 = zext i1 %447 to i8
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %448, i8* %449, align 1, !tbaa !2444
  %450 = lshr i32 %430, 31
  %451 = trunc i32 %450 to i8
  %452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %451, i8* %452, align 1, !tbaa !2445
  %453 = lshr i32 %426, 31
  %454 = xor i32 %450, %453
  %455 = add nuw nsw i32 %454, %453
  %456 = icmp eq i32 %455, 2
  %457 = zext i1 %456 to i8
  %458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %457, i8* %458, align 1, !tbaa !2446
  %459 = load i64, i64* %PC
  %460 = add i64 %459, 41
  %461 = load i64, i64* %PC
  %462 = add i64 %461, 6
  %463 = load i64, i64* %PC
  %464 = add i64 %463, 6
  store i64 %464, i64* %PC
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %466 = load i8, i8* %465, align 1, !tbaa !2444
  %467 = icmp eq i8 %466, 0
  %468 = zext i1 %467 to i8
  store i8 %468, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %470 = select i1 %467, i64 %460, i64 %462
  store i64 %470, i64* %469, align 8, !tbaa !2424
  %471 = load i8, i8* %BRANCH_TAKEN
  %472 = icmp eq i8 %471, 1
  br i1 %472, label %block_40081e, label %block_4007fb

block_4009d6:                                     ; preds = %block_4009a3
  %473 = sub i64 %2283, 4
  %474 = load i64, i64* %PC
  %475 = add i64 %474, 7
  store i64 %475, i64* %PC
  %476 = inttoptr i64 %473 to i32*
  store i32 -21, i32* %476
  %477 = load i64, i64* %PC
  %478 = add i64 %477, 330
  %479 = load i64, i64* %PC
  %480 = add i64 %479, 5
  store i64 %480, i64* %PC
  %481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %478, i64* %481, align 8, !tbaa !2424
  br label %block_400b27

block_4008d2:                                     ; preds = %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit, %block_4008b9
  %MEMORY.1 = phi %struct.Memory* [ %2524, %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit ], [ %2524, %block_4008b9 ]
  %482 = load i64, i64* %RBP
  %483 = sub i64 %482, 20
  %484 = load i64, i64* %PC
  %485 = add i64 %484, 4
  store i64 %485, i64* %PC
  %486 = inttoptr i64 %483 to i32*
  %487 = load i32, i32* %486
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %488, align 1, !tbaa !2428
  %489 = and i32 %487, 255
  %490 = call i32 @llvm.ctpop.i32(i32 %489) #16
  %491 = trunc i32 %490 to i8
  %492 = and i8 %491, 1
  %493 = xor i8 %492, 1
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %493, i8* %494, align 1, !tbaa !2442
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %495, align 1, !tbaa !2443
  %496 = icmp eq i32 %487, 0
  %497 = zext i1 %496 to i8
  %498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %497, i8* %498, align 1, !tbaa !2444
  %499 = lshr i32 %487, 31
  %500 = trunc i32 %499 to i8
  %501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %500, i8* %501, align 1, !tbaa !2445
  %502 = lshr i32 %487, 31
  %503 = xor i32 %499, %502
  %504 = add nuw nsw i32 %503, %502
  %505 = icmp eq i32 %504, 2
  %506 = zext i1 %505 to i8
  %507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %506, i8* %507, align 1, !tbaa !2446
  %508 = load i64, i64* %PC
  %509 = add i64 %508, 18
  %510 = load i64, i64* %PC
  %511 = add i64 %510, 6
  %512 = load i64, i64* %PC
  %513 = add i64 %512, 6
  store i64 %513, i64* %PC
  %514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %515 = load i8, i8* %514, align 1, !tbaa !2444
  store i8 %515, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %517 = icmp ne i8 %515, 0
  %518 = select i1 %517, i64 %509, i64 %511
  store i64 %518, i64* %516, align 8, !tbaa !2424
  %519 = load i8, i8* %BRANCH_TAKEN
  %520 = icmp eq i8 %519, 1
  br i1 %520, label %block_4008e8, label %block_4008dc

block_400a7f:                                     ; preds = %block_400a53
  %521 = load i64, i64* %RBP
  %522 = sub i64 %521, 16
  %523 = load i64, i64* %PC
  %524 = add i64 %523, 4
  store i64 %524, i64* %PC
  %525 = inttoptr i64 %522 to i64*
  %526 = load i64, i64* %525
  store i64 %526, i64* %RAX, align 8, !tbaa !2424
  %527 = load i64, i64* %RAX
  %528 = add i64 %527, 29
  %529 = load i64, i64* %PC
  %530 = add i64 %529, 4
  store i64 %530, i64* %PC
  %531 = inttoptr i64 %528 to i8*
  %532 = load i8, i8* %531
  %533 = sext i8 %532 to i64
  %534 = and i64 %533, 4294967295
  store i64 %534, i64* %RCX, align 8, !tbaa !2424
  %535 = load i32, i32* %ECX
  %536 = zext i32 %535 to i64
  %537 = load i64, i64* %PC
  %538 = add i64 %537, 3
  store i64 %538, i64* %PC
  %539 = sub i32 %535, 100
  %540 = icmp ult i32 %535, 100
  %541 = zext i1 %540 to i8
  %542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %541, i8* %542, align 1, !tbaa !2428
  %543 = and i32 %539, 255
  %544 = call i32 @llvm.ctpop.i32(i32 %543) #16
  %545 = trunc i32 %544 to i8
  %546 = and i8 %545, 1
  %547 = xor i8 %546, 1
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %547, i8* %548, align 1, !tbaa !2442
  %549 = xor i64 100, %536
  %550 = trunc i64 %549 to i32
  %551 = xor i32 %550, %539
  %552 = lshr i32 %551, 4
  %553 = trunc i32 %552 to i8
  %554 = and i8 %553, 1
  %555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %554, i8* %555, align 1, !tbaa !2443
  %556 = icmp eq i32 %539, 0
  %557 = zext i1 %556 to i8
  %558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %557, i8* %558, align 1, !tbaa !2444
  %559 = lshr i32 %539, 31
  %560 = trunc i32 %559 to i8
  %561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %560, i8* %561, align 1, !tbaa !2445
  %562 = lshr i32 %535, 31
  %563 = xor i32 %559, %562
  %564 = add nuw nsw i32 %563, %562
  %565 = icmp eq i32 %564, 2
  %566 = zext i1 %565 to i8
  %567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %566, i8* %567, align 1, !tbaa !2446
  %568 = load i64, i64* %PC
  %569 = add i64 %568, 20
  %570 = load i64, i64* %PC
  %571 = add i64 %570, 6
  %572 = load i64, i64* %PC
  %573 = add i64 %572, 6
  store i64 %573, i64* %PC
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %575 = load i8, i8* %574, align 1, !tbaa !2444
  %576 = icmp eq i8 %575, 0
  %577 = zext i1 %576 to i8
  store i8 %577, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %579 = select i1 %576, i64 %569, i64 %571
  store i64 %579, i64* %578, align 8, !tbaa !2424
  %580 = load i8, i8* %BRANCH_TAKEN
  %581 = icmp eq i8 %580, 1
  br i1 %581, label %block_400a9e, label %block_400a90

block_400941:                                     ; preds = %block_40092e, %block_40093a
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.3, %block_40093a ], [ %2725, %block_40092e ]
  %582 = load i64, i64* %RDI
  %583 = load i32, i32* %EDI
  %584 = zext i32 %583 to i64
  %585 = load i64, i64* %PC
  %586 = add i64 %585, 2
  store i64 %586, i64* %PC
  %587 = xor i64 %584, %582
  %588 = trunc i64 %587 to i32
  %589 = and i64 %587, 4294967295
  store i64 %589, i64* %RDI, align 8, !tbaa !2424
  %590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %590, align 1, !tbaa !2428
  %591 = and i32 %588, 255
  %592 = call i32 @llvm.ctpop.i32(i32 %591) #16
  %593 = trunc i32 %592 to i8
  %594 = and i8 %593, 1
  %595 = xor i8 %594, 1
  %596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %595, i8* %596, align 1, !tbaa !2442
  %597 = icmp eq i32 %588, 0
  %598 = zext i1 %597 to i8
  %599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %598, i8* %599, align 1, !tbaa !2444
  %600 = lshr i32 %588, 31
  %601 = trunc i32 %600 to i8
  %602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %601, i8* %602, align 1, !tbaa !2445
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %603, align 1, !tbaa !2446
  %604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %604, align 1, !tbaa !2443
  %605 = load i64, i64* %PC
  %606 = add i64 %605, 5
  store i64 %606, i64* %PC
  store i64 8, i64* %RDX, align 8, !tbaa !2424
  %607 = load i64, i64* %RBP
  %608 = sub i64 %607, 16
  %609 = load i64, i64* %PC
  %610 = add i64 %609, 4
  store i64 %610, i64* %PC
  %611 = inttoptr i64 %608 to i64*
  %612 = load i64, i64* %611
  store i64 %612, i64* %RAX, align 8, !tbaa !2424
  %613 = load i64, i64* %RAX
  %614 = load i64, i64* %PC
  %615 = add i64 %614, 4
  store i64 %615, i64* %PC
  %616 = add i64 12, %613
  store i64 %616, i64* %RAX, align 8, !tbaa !2424
  %617 = icmp ult i64 %616, %613
  %618 = icmp ult i64 %616, 12
  %619 = or i1 %617, %618
  %620 = zext i1 %619 to i8
  %621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %620, i8* %621, align 1, !tbaa !2428
  %622 = trunc i64 %616 to i32
  %623 = and i32 %622, 255
  %624 = call i32 @llvm.ctpop.i32(i32 %623) #16
  %625 = trunc i32 %624 to i8
  %626 = and i8 %625, 1
  %627 = xor i8 %626, 1
  %628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %627, i8* %628, align 1, !tbaa !2442
  %629 = xor i64 12, %613
  %630 = xor i64 %629, %616
  %631 = lshr i64 %630, 4
  %632 = trunc i64 %631 to i8
  %633 = and i8 %632, 1
  %634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %633, i8* %634, align 1, !tbaa !2443
  %635 = icmp eq i64 %616, 0
  %636 = zext i1 %635 to i8
  %637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %636, i8* %637, align 1, !tbaa !2444
  %638 = lshr i64 %616, 63
  %639 = trunc i64 %638 to i8
  %640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %639, i8* %640, align 1, !tbaa !2445
  %641 = lshr i64 %613, 63
  %642 = xor i64 %638, %641
  %643 = add nuw nsw i64 %642, %638
  %644 = icmp eq i64 %643, 2
  %645 = zext i1 %644 to i8
  %646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %645, i8* %646, align 1, !tbaa !2446
  %647 = load i64, i64* %RAX
  %648 = load i64, i64* %PC
  %649 = add i64 %648, 3
  store i64 %649, i64* %PC
  store i64 %647, i64* %RSI, align 8, !tbaa !2424
  %650 = load i64, i64* %PC
  %651 = sub i64 %650, 851
  %652 = load i64, i64* %PC
  %653 = add i64 %652, 5
  %654 = load i64, i64* %PC
  %655 = add i64 %654, 5
  store i64 %655, i64* %PC
  %656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %657 = load i64, i64* %656, align 8, !tbaa !2424
  %658 = add i64 %657, -8
  %659 = inttoptr i64 %658 to i64*
  store i64 %653, i64* %659
  store i64 %658, i64* %656, align 8, !tbaa !2424
  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %651, i64* %660, align 8, !tbaa !2424
  %661 = load i64, i64* %PC
  %662 = call %struct.Memory* @sub_400600_read_bytes(%struct.State* %0, i64 %661, %struct.Memory* %MEMORY.2)
  %663 = load i64, i64* %RBP
  %664 = sub i64 %663, 44
  %665 = load i32, i32* %EAX
  %666 = zext i32 %665 to i64
  %667 = load i64, i64* %PC
  %668 = add i64 %667, 3
  store i64 %668, i64* %PC
  %669 = inttoptr i64 %664 to i32*
  store i32 %665, i32* %669
  %670 = load i64, i64* %RBP
  %671 = sub i64 %670, 44
  %672 = load i64, i64* %PC
  %673 = add i64 %672, 3
  store i64 %673, i64* %PC
  %674 = inttoptr i64 %671 to i32*
  %675 = load i32, i32* %674
  %676 = zext i32 %675 to i64
  store i64 %676, i64* %RAX, align 8, !tbaa !2424
  %677 = load i64, i64* %RAX
  %678 = load i64, i64* %PC
  %679 = add i64 %678, 5
  store i64 %679, i64* %PC
  %680 = xor i64 -1534560611, %677
  %681 = trunc i64 %680 to i32
  %682 = and i64 %680, 4294967295
  store i64 %682, i64* %RAX, align 8, !tbaa !2424
  %683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %683, align 1, !tbaa !2428
  %684 = and i32 %681, 255
  %685 = call i32 @llvm.ctpop.i32(i32 %684) #16
  %686 = trunc i32 %685 to i8
  %687 = and i8 %686, 1
  %688 = xor i8 %687, 1
  %689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %688, i8* %689, align 1, !tbaa !2442
  %690 = icmp eq i32 %681, 0
  %691 = zext i1 %690 to i8
  %692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %691, i8* %692, align 1, !tbaa !2444
  %693 = lshr i32 %681, 31
  %694 = trunc i32 %693 to i8
  %695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %694, i8* %695, align 1, !tbaa !2445
  %696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %696, align 1, !tbaa !2446
  %697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %697, align 1, !tbaa !2443
  %698 = load i64, i64* %RBP
  %699 = sub i64 %698, 48
  %700 = load i32, i32* %EAX
  %701 = zext i32 %700 to i64
  %702 = load i64, i64* %PC
  %703 = add i64 %702, 3
  store i64 %703, i64* %PC
  %704 = inttoptr i64 %699 to i32*
  store i32 %700, i32* %704
  %705 = load i64, i64* %RBP
  %706 = sub i64 %705, 48
  %707 = load i64, i64* %PC
  %708 = add i64 %707, 3
  store i64 %708, i64* %PC
  %709 = inttoptr i64 %706 to i32*
  %710 = load i32, i32* %709
  %711 = zext i32 %710 to i64
  store i64 %711, i64* %RAX, align 8, !tbaa !2424
  %712 = load i64, i64* %RAX
  %713 = load i64, i64* %PC
  %714 = add i64 %713, 3
  store i64 %714, i64* %PC
  %715 = and i64 %712, 4294967295
  %716 = lshr i64 %715, 15
  %717 = trunc i64 %716 to i8
  %718 = and i8 %717, 1
  %719 = lshr i64 %716, 1
  %720 = trunc i64 %719 to i32
  %721 = and i32 %720, 2147483647
  %722 = zext i32 %721 to i64
  store i64 %722, i64* %RAX, align 8, !tbaa !2424
  %723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %718, i8* %723, align 1, !tbaa !2447
  %724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %725 = and i32 %720, 255
  %726 = call i32 @llvm.ctpop.i32(i32 %725) #16
  %727 = trunc i32 %726 to i8
  %728 = and i8 %727, 1
  %729 = xor i8 %728, 1
  store i8 %729, i8* %724, align 1, !tbaa !2447
  %730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %730, align 1, !tbaa !2447
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %732 = icmp eq i32 %721, 0
  %733 = zext i1 %732 to i8
  store i8 %733, i8* %731, align 1, !tbaa !2447
  %734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %734, align 1, !tbaa !2447
  %735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %735, align 1, !tbaa !2447
  %736 = load i64, i64* %RBP
  %737 = sub i64 %736, 52
  %738 = load i32, i32* %EAX
  %739 = zext i32 %738 to i64
  %740 = load i64, i64* %PC
  %741 = add i64 %740, 3
  store i64 %741, i64* %PC
  %742 = inttoptr i64 %737 to i32*
  store i32 %738, i32* %742
  %743 = load i64, i64* %RBP
  %744 = sub i64 %743, 48
  %745 = load i64, i64* %PC
  %746 = add i64 %745, 3
  store i64 %746, i64* %PC
  %747 = inttoptr i64 %744 to i32*
  %748 = load i32, i32* %747
  %749 = zext i32 %748 to i64
  store i64 %749, i64* %RAX, align 8, !tbaa !2424
  %750 = load i64, i64* %RAX
  %751 = load i64, i64* %PC
  %752 = add i64 %751, 5
  store i64 %752, i64* %PC
  %753 = and i64 65535, %750
  %754 = trunc i64 %753 to i32
  store i64 %753, i64* %RAX, align 8, !tbaa !2424
  %755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %755, align 1, !tbaa !2428
  %756 = and i32 %754, 255
  %757 = call i32 @llvm.ctpop.i32(i32 %756) #16
  %758 = trunc i32 %757 to i8
  %759 = and i8 %758, 1
  %760 = xor i8 %759, 1
  %761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %760, i8* %761, align 1, !tbaa !2442
  %762 = icmp eq i32 %754, 0
  %763 = zext i1 %762 to i8
  %764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %763, i8* %764, align 1, !tbaa !2444
  %765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %765, align 1, !tbaa !2445
  %766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %766, align 1, !tbaa !2446
  %767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %767, align 1, !tbaa !2443
  %768 = load i64, i64* %RBP
  %769 = sub i64 %768, 56
  %770 = load i32, i32* %EAX
  %771 = zext i32 %770 to i64
  %772 = load i64, i64* %PC
  %773 = add i64 %772, 3
  store i64 %773, i64* %PC
  %774 = inttoptr i64 %769 to i32*
  store i32 %770, i32* %774
  %775 = load i64, i64* %RBP
  %776 = sub i64 %775, 52
  %777 = load i64, i64* %PC
  %778 = add i64 %777, 4
  store i64 %778, i64* %PC
  %779 = inttoptr i64 %776 to i32*
  %780 = load i32, i32* %779
  %781 = sub i32 %780, 79
  %782 = icmp ult i32 %780, 79
  %783 = zext i1 %782 to i8
  %784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %783, i8* %784, align 1, !tbaa !2428
  %785 = and i32 %781, 255
  %786 = call i32 @llvm.ctpop.i32(i32 %785) #16
  %787 = trunc i32 %786 to i8
  %788 = and i8 %787, 1
  %789 = xor i8 %788, 1
  %790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %789, i8* %790, align 1, !tbaa !2442
  %791 = xor i32 %780, 79
  %792 = xor i32 %791, %781
  %793 = lshr i32 %792, 4
  %794 = trunc i32 %793 to i8
  %795 = and i8 %794, 1
  %796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %795, i8* %796, align 1, !tbaa !2443
  %797 = icmp eq i32 %781, 0
  %798 = zext i1 %797 to i8
  %799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %798, i8* %799, align 1, !tbaa !2444
  %800 = lshr i32 %781, 31
  %801 = trunc i32 %800 to i8
  %802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %801, i8* %802, align 1, !tbaa !2445
  %803 = lshr i32 %780, 31
  %804 = xor i32 %800, %803
  %805 = add nuw nsw i32 %804, %803
  %806 = icmp eq i32 %805, 2
  %807 = zext i1 %806 to i8
  %808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %807, i8* %808, align 1, !tbaa !2446
  %809 = load i64, i64* %PC
  %810 = add i64 %809, 30
  %811 = load i64, i64* %PC
  %812 = add i64 %811, 6
  %813 = load i64, i64* %PC
  %814 = add i64 %813, 6
  store i64 %814, i64* %PC
  %815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %816 = load i8, i8* %815, align 1, !tbaa !2444
  %817 = icmp eq i8 %816, 0
  %818 = zext i1 %817 to i8
  store i8 %818, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %820 = select i1 %817, i64 %810, i64 %812
  store i64 %820, i64* %819, align 8, !tbaa !2424
  %821 = load i8, i8* %BRANCH_TAKEN
  %822 = icmp eq i8 %821, 1
  br i1 %822, label %block_40099c, label %block_400984

block_40073f:                                     ; preds = %block_400710
  %823 = sub i64 %190, 16
  %824 = load i64, i64* %PC
  %825 = add i64 %824, 4
  store i64 %825, i64* %PC
  %826 = inttoptr i64 %823 to i64*
  %827 = load i64, i64* %826
  store i64 %827, i64* %RAX, align 8, !tbaa !2424
  %828 = load i64, i64* %RAX
  %829 = load i64, i64* %PC
  %830 = add i64 %829, 4
  store i64 %830, i64* %PC
  %831 = add i64 4, %828
  store i64 %831, i64* %RAX, align 8, !tbaa !2424
  %832 = icmp ult i64 %831, %828
  %833 = icmp ult i64 %831, 4
  %834 = or i1 %832, %833
  %835 = zext i1 %834 to i8
  %836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %835, i8* %836, align 1, !tbaa !2428
  %837 = trunc i64 %831 to i32
  %838 = and i32 %837, 255
  %839 = call i32 @llvm.ctpop.i32(i32 %838) #16
  %840 = trunc i32 %839 to i8
  %841 = and i8 %840, 1
  %842 = xor i8 %841, 1
  %843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %842, i8* %843, align 1, !tbaa !2442
  %844 = xor i64 4, %828
  %845 = xor i64 %844, %831
  %846 = lshr i64 %845, 4
  %847 = trunc i64 %846 to i8
  %848 = and i8 %847, 1
  %849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %848, i8* %849, align 1, !tbaa !2443
  %850 = icmp eq i64 %831, 0
  %851 = zext i1 %850 to i8
  %852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %851, i8* %852, align 1, !tbaa !2444
  %853 = lshr i64 %831, 63
  %854 = trunc i64 %853 to i8
  %855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %854, i8* %855, align 1, !tbaa !2445
  %856 = lshr i64 %828, 63
  %857 = xor i64 %853, %856
  %858 = add nuw nsw i64 %857, %853
  %859 = icmp eq i64 %858, 2
  %860 = zext i1 %859 to i8
  %861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %860, i8* %861, align 1, !tbaa !2446
  %862 = load i64, i64* %RBP
  %863 = sub i64 %862, 16
  %864 = load i64, i64* %RAX
  %865 = load i64, i64* %PC
  %866 = add i64 %865, 4
  store i64 %866, i64* %PC
  %867 = inttoptr i64 %863 to i64*
  store i64 %864, i64* %867
  %868 = load i64, i64* %RBP
  %869 = sub i64 %868, 16
  %870 = load i64, i64* %PC
  %871 = add i64 %870, 4
  store i64 %871, i64* %PC
  %872 = inttoptr i64 %869 to i64*
  %873 = load i64, i64* %872
  store i64 %873, i64* %RAX, align 8, !tbaa !2424
  %874 = load i64, i64* %RAX
  %875 = load i64, i64* %PC
  %876 = add i64 %875, 3
  store i64 %876, i64* %PC
  %877 = inttoptr i64 %874 to i8*
  %878 = load i8, i8* %877
  %879 = sext i8 %878 to i64
  %880 = and i64 %879, 4294967295
  store i64 %880, i64* %RCX, align 8, !tbaa !2424
  %881 = load i32, i32* %ECX
  %882 = zext i32 %881 to i64
  %883 = load i64, i64* %PC
  %884 = add i64 %883, 3
  store i64 %884, i64* %PC
  %885 = sub i32 %881, 100
  %886 = icmp ult i32 %881, 100
  %887 = zext i1 %886 to i8
  %888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %887, i8* %888, align 1, !tbaa !2428
  %889 = and i32 %885, 255
  %890 = call i32 @llvm.ctpop.i32(i32 %889) #16
  %891 = trunc i32 %890 to i8
  %892 = and i8 %891, 1
  %893 = xor i8 %892, 1
  %894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %893, i8* %894, align 1, !tbaa !2442
  %895 = xor i64 100, %882
  %896 = trunc i64 %895 to i32
  %897 = xor i32 %896, %885
  %898 = lshr i32 %897, 4
  %899 = trunc i32 %898 to i8
  %900 = and i8 %899, 1
  %901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %900, i8* %901, align 1, !tbaa !2443
  %902 = icmp eq i32 %885, 0
  %903 = zext i1 %902 to i8
  %904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %903, i8* %904, align 1, !tbaa !2444
  %905 = lshr i32 %885, 31
  %906 = trunc i32 %905 to i8
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %906, i8* %907, align 1, !tbaa !2445
  %908 = lshr i32 %881, 31
  %909 = xor i32 %905, %908
  %910 = add nuw nsw i32 %909, %908
  %911 = icmp eq i32 %910, 2
  %912 = zext i1 %911 to i8
  %913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %912, i8* %913, align 1, !tbaa !2446
  %914 = load i64, i64* %PC
  %915 = add i64 %914, 18
  %916 = load i64, i64* %PC
  %917 = add i64 %916, 6
  %918 = load i64, i64* %PC
  %919 = add i64 %918, 6
  store i64 %919, i64* %PC
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %921 = load i8, i8* %920, align 1, !tbaa !2444
  store i8 %921, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %923 = icmp ne i8 %921, 0
  %924 = select i1 %923, i64 %915, i64 %917
  store i64 %924, i64* %922, align 8, !tbaa !2424
  %925 = load i8, i8* %BRANCH_TAKEN
  %926 = icmp eq i8 %925, 1
  %927 = load i64, i64* %RBP
  br i1 %926, label %block_400767, label %block_40075b

block_40093a:                                     ; preds = %block_40091a, %block_4008e8
  %MEMORY.3 = phi %struct.Memory* [ %2725, %block_4008e8 ], [ %2725, %block_40091a ]
  %928 = load i64, i64* %RBP
  %929 = sub i64 %928, 20
  %930 = load i64, i64* %PC
  %931 = add i64 %930, 7
  store i64 %931, i64* %PC
  %932 = inttoptr i64 %929 to i32*
  store i32 48059, i32* %932
  br label %block_400941

block_4008b9:                                     ; preds = %block_40087e
  %933 = inttoptr i64 %2642 to i32*
  %934 = load i32, i32* %933
  %935 = zext i32 %934 to i64
  store i64 %935, i64* %RAX, align 8, !tbaa !2424
  %936 = load i64, i64* %RAX
  %937 = load i64, i64* %PC
  %938 = add i64 %937, 3
  store i64 %938, i64* %PC
  %939 = trunc i64 %936 to i32
  %940 = sub i32 %939, 1
  %941 = zext i32 %940 to i64
  store i64 %941, i64* %RAX, align 8, !tbaa !2424
  %942 = icmp ult i32 %939, 1
  %943 = zext i1 %942 to i8
  %944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %943, i8* %944, align 1, !tbaa !2428
  %945 = and i32 %940, 255
  %946 = call i32 @llvm.ctpop.i32(i32 %945) #16
  %947 = trunc i32 %946 to i8
  %948 = and i8 %947, 1
  %949 = xor i8 %948, 1
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %949, i8* %950, align 1, !tbaa !2442
  %951 = xor i64 1, %936
  %952 = trunc i64 %951 to i32
  %953 = xor i32 %952, %940
  %954 = lshr i32 %953, 4
  %955 = trunc i32 %954 to i8
  %956 = and i8 %955, 1
  %957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %956, i8* %957, align 1, !tbaa !2443
  %958 = icmp eq i32 %940, 0
  %959 = zext i1 %958 to i8
  %960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %959, i8* %960, align 1, !tbaa !2444
  %961 = lshr i32 %940, 31
  %962 = trunc i32 %961 to i8
  %963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %962, i8* %963, align 1, !tbaa !2445
  %964 = lshr i32 %939, 31
  %965 = xor i32 %961, %964
  %966 = add nuw nsw i32 %965, %964
  %967 = icmp eq i32 %966, 2
  %968 = zext i1 %967 to i8
  %969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %968, i8* %969, align 1, !tbaa !2446
  %970 = load i64, i64* %RBP
  %971 = sub i64 %970, 20
  %972 = load i32, i32* %EAX
  %973 = zext i32 %972 to i64
  %974 = load i64, i64* %PC
  %975 = add i64 %974, 3
  store i64 %975, i64* %PC
  %976 = inttoptr i64 %971 to i32*
  store i32 %972, i32* %976
  %977 = load i64, i64* %PC
  %978 = add i64 %977, 16
  %979 = load i64, i64* %PC
  %980 = add i64 %979, 5
  store i64 %980, i64* %PC
  %981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %978, i64* %981, align 8, !tbaa !2424
  br label %block_4008d2

block_4009e2:                                     ; preds = %block_4009a3
  %982 = sub i64 %2283, 60
  %983 = load i64, i64* %PC
  %984 = add i64 %983, 3
  store i64 %984, i64* %PC
  %985 = inttoptr i64 %982 to i32*
  %986 = load i32, i32* %985
  %987 = zext i32 %986 to i64
  store i64 %987, i64* %RAX, align 8, !tbaa !2424
  %988 = load i64, i64* %RAX
  %989 = load i64, i64* %PC
  %990 = add i64 %989, 5
  store i64 %990, i64* %PC
  %991 = trunc i64 %988 to i32
  %992 = sub i32 %991, -2147483648
  %993 = zext i32 %992 to i64
  store i64 %993, i64* %RAX, align 8, !tbaa !2424
  %994 = icmp ult i32 %991, -2147483648
  %995 = zext i1 %994 to i8
  %996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %995, i8* %996, align 1, !tbaa !2428
  %997 = and i32 %992, 255
  %998 = call i32 @llvm.ctpop.i32(i32 %997) #16
  %999 = trunc i32 %998 to i8
  %1000 = and i8 %999, 1
  %1001 = xor i8 %1000, 1
  %1002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1001, i8* %1002, align 1, !tbaa !2442
  %1003 = xor i64 -2147483648, %988
  %1004 = trunc i64 %1003 to i32
  %1005 = xor i32 %1004, %992
  %1006 = lshr i32 %1005, 4
  %1007 = trunc i32 %1006 to i8
  %1008 = and i8 %1007, 1
  %1009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1008, i8* %1009, align 1, !tbaa !2443
  %1010 = icmp eq i32 %992, 0
  %1011 = zext i1 %1010 to i8
  %1012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1011, i8* %1012, align 1, !tbaa !2444
  %1013 = lshr i32 %992, 31
  %1014 = trunc i32 %1013 to i8
  %1015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1014, i8* %1015, align 1, !tbaa !2445
  %1016 = lshr i32 %991, 31
  %1017 = xor i32 1, %1016
  %1018 = xor i32 %1013, %1016
  %1019 = add nuw nsw i32 %1018, %1017
  %1020 = icmp eq i32 %1019, 2
  %1021 = zext i1 %1020 to i8
  %1022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1021, i8* %1022, align 1, !tbaa !2446
  %1023 = load i64, i64* %RBP
  %1024 = sub i64 %1023, 60
  %1025 = load i32, i32* %EAX
  %1026 = zext i32 %1025 to i64
  %1027 = load i64, i64* %PC
  %1028 = add i64 %1027, 3
  store i64 %1028, i64* %PC
  %1029 = inttoptr i64 %1024 to i32*
  store i32 %1025, i32* %1029
  %1030 = load i64, i64* %RBP
  %1031 = sub i64 %1030, 60
  %1032 = load i64, i64* %PC
  %1033 = add i64 %1032, 7
  store i64 %1033, i64* %PC
  %1034 = inttoptr i64 %1031 to i32*
  %1035 = load i32, i32* %1034
  %1036 = sub i32 %1035, 268435455
  %1037 = icmp ult i32 %1035, 268435455
  %1038 = zext i1 %1037 to i8
  %1039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1038, i8* %1039, align 1, !tbaa !2428
  %1040 = and i32 %1036, 255
  %1041 = call i32 @llvm.ctpop.i32(i32 %1040) #16
  %1042 = trunc i32 %1041 to i8
  %1043 = and i8 %1042, 1
  %1044 = xor i8 %1043, 1
  %1045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1044, i8* %1045, align 1, !tbaa !2442
  %1046 = xor i32 %1035, 268435455
  %1047 = xor i32 %1046, %1036
  %1048 = lshr i32 %1047, 4
  %1049 = trunc i32 %1048 to i8
  %1050 = and i8 %1049, 1
  %1051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1050, i8* %1051, align 1, !tbaa !2443
  %1052 = icmp eq i32 %1036, 0
  %1053 = zext i1 %1052 to i8
  %1054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1053, i8* %1054, align 1, !tbaa !2444
  %1055 = lshr i32 %1036, 31
  %1056 = trunc i32 %1055 to i8
  %1057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1056, i8* %1057, align 1, !tbaa !2445
  %1058 = lshr i32 %1035, 31
  %1059 = xor i32 %1055, %1058
  %1060 = add nuw nsw i32 %1059, %1058
  %1061 = icmp eq i32 %1060, 2
  %1062 = zext i1 %1061 to i8
  %1063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1062, i8* %1063, align 1, !tbaa !2446
  %1064 = load i64, i64* %PC
  %1065 = add i64 %1064, 18
  %1066 = load i64, i64* %PC
  %1067 = add i64 %1066, 6
  %1068 = load i64, i64* %PC
  %1069 = add i64 %1068, 6
  store i64 %1069, i64* %PC
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1071 = load i8, i8* %1070, align 1, !tbaa !2428
  %1072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1073 = load i8, i8* %1072, align 1, !tbaa !2444
  %1074 = or i8 %1073, %1071
  %1075 = icmp ne i8 %1074, 0
  %1076 = zext i1 %1075 to i8
  store i8 %1076, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %1077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1078 = select i1 %1075, i64 %1065, i64 %1067
  store i64 %1078, i64* %1077, align 8, !tbaa !2424
  %1079 = load i8, i8* %BRANCH_TAKEN
  %1080 = icmp eq i8 %1079, 1
  br i1 %1080, label %block_400a06, label %block_4009fa

block_400ab6:                                     ; preds = %block_400a9e
  %1081 = load i64, i64* %PC
  %1082 = add i64 %1081, 5
  store i64 %1082, i64* %PC
  store i64 15, i64* %RAX, align 8, !tbaa !2424
  %1083 = load i64, i64* %RBP
  %1084 = sub i64 %1083, 16
  %1085 = load i64, i64* %PC
  %1086 = add i64 %1085, 4
  store i64 %1086, i64* %PC
  %1087 = inttoptr i64 %1084 to i64*
  %1088 = load i64, i64* %1087
  store i64 %1088, i64* %RCX, align 8, !tbaa !2424
  %1089 = load i64, i64* %RCX
  %1090 = add i64 %1089, 31
  %1091 = load i64, i64* %PC
  %1092 = add i64 %1091, 4
  store i64 %1092, i64* %PC
  %1093 = inttoptr i64 %1090 to i8*
  %1094 = load i8, i8* %1093
  %1095 = sext i8 %1094 to i64
  %1096 = and i64 %1095, 4294967295
  store i64 %1096, i64* %RDX, align 8, !tbaa !2424
  %1097 = load i64, i64* %RBP
  %1098 = sub i64 %1097, 16
  %1099 = load i64, i64* %PC
  %1100 = add i64 %1099, 4
  store i64 %1100, i64* %PC
  %1101 = inttoptr i64 %1098 to i64*
  %1102 = load i64, i64* %1101
  store i64 %1102, i64* %RCX, align 8, !tbaa !2424
  %1103 = load i64, i64* %RCX
  %1104 = add i64 %1103, 30
  %1105 = load i64, i64* %PC
  %1106 = add i64 %1105, 4
  store i64 %1106, i64* %PC
  %1107 = inttoptr i64 %1104 to i8*
  %1108 = load i8, i8* %1107
  %1109 = sext i8 %1108 to i64
  %1110 = and i64 %1109, 4294967295
  store i64 %1110, i64* %RSI, align 8, !tbaa !2424
  %1111 = load i64, i64* %RDX
  %1112 = load i32, i32* %ESI
  %1113 = zext i32 %1112 to i64
  %1114 = load i64, i64* %PC
  %1115 = add i64 %1114, 2
  store i64 %1115, i64* %PC
  %1116 = trunc i64 %1111 to i32
  %1117 = sub i32 %1116, %1112
  %1118 = zext i32 %1117 to i64
  store i64 %1118, i64* %RDX, align 8, !tbaa !2424
  %1119 = icmp ult i32 %1116, %1112
  %1120 = zext i1 %1119 to i8
  %1121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1120, i8* %1121, align 1, !tbaa !2428
  %1122 = and i32 %1117, 255
  %1123 = call i32 @llvm.ctpop.i32(i32 %1122) #16
  %1124 = trunc i32 %1123 to i8
  %1125 = and i8 %1124, 1
  %1126 = xor i8 %1125, 1
  %1127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1126, i8* %1127, align 1, !tbaa !2442
  %1128 = xor i64 %1113, %1111
  %1129 = trunc i64 %1128 to i32
  %1130 = xor i32 %1129, %1117
  %1131 = lshr i32 %1130, 4
  %1132 = trunc i32 %1131 to i8
  %1133 = and i8 %1132, 1
  %1134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1133, i8* %1134, align 1, !tbaa !2443
  %1135 = icmp eq i32 %1117, 0
  %1136 = zext i1 %1135 to i8
  %1137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1136, i8* %1137, align 1, !tbaa !2444
  %1138 = lshr i32 %1117, 31
  %1139 = trunc i32 %1138 to i8
  %1140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1139, i8* %1140, align 1, !tbaa !2445
  %1141 = lshr i32 %1116, 31
  %1142 = lshr i32 %1112, 31
  %1143 = xor i32 %1142, %1141
  %1144 = xor i32 %1138, %1141
  %1145 = add nuw nsw i32 %1144, %1143
  %1146 = icmp eq i32 %1145, 2
  %1147 = zext i1 %1146 to i8
  %1148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1147, i8* %1148, align 1, !tbaa !2446
  %1149 = load i64, i64* %RAX
  %1150 = load i32, i32* %EDX
  %1151 = zext i32 %1150 to i64
  %1152 = load i64, i64* %PC
  %1153 = add i64 %1152, 2
  store i64 %1153, i64* %PC
  %1154 = trunc i64 %1149 to i32
  %1155 = sub i32 %1154, %1150
  %1156 = zext i32 %1155 to i64
  store i64 %1156, i64* %RAX, align 8, !tbaa !2424
  %1157 = icmp ult i32 %1154, %1150
  %1158 = zext i1 %1157 to i8
  %1159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1158, i8* %1159, align 1, !tbaa !2428
  %1160 = and i32 %1155, 255
  %1161 = call i32 @llvm.ctpop.i32(i32 %1160) #16
  %1162 = trunc i32 %1161 to i8
  %1163 = and i8 %1162, 1
  %1164 = xor i8 %1163, 1
  %1165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1164, i8* %1165, align 1, !tbaa !2442
  %1166 = xor i64 %1151, %1149
  %1167 = trunc i64 %1166 to i32
  %1168 = xor i32 %1167, %1155
  %1169 = lshr i32 %1168, 4
  %1170 = trunc i32 %1169 to i8
  %1171 = and i8 %1170, 1
  %1172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1171, i8* %1172, align 1, !tbaa !2443
  %1173 = icmp eq i32 %1155, 0
  %1174 = zext i1 %1173 to i8
  %1175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1174, i8* %1175, align 1, !tbaa !2444
  %1176 = lshr i32 %1155, 31
  %1177 = trunc i32 %1176 to i8
  %1178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1177, i8* %1178, align 1, !tbaa !2445
  %1179 = lshr i32 %1154, 31
  %1180 = lshr i32 %1150, 31
  %1181 = xor i32 %1180, %1179
  %1182 = xor i32 %1176, %1179
  %1183 = add nuw nsw i32 %1182, %1181
  %1184 = icmp eq i32 %1183, 2
  %1185 = zext i1 %1184 to i8
  %1186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1185, i8* %1186, align 1, !tbaa !2446
  %1187 = load i64, i64* %RAX
  %1188 = load i64, i64* %RBP
  %1189 = sub i64 %1188, 20
  %1190 = load i64, i64* %PC
  %1191 = add i64 %1190, 3
  store i64 %1191, i64* %PC
  %1192 = trunc i64 %1187 to i32
  %1193 = inttoptr i64 %1189 to i32*
  %1194 = load i32, i32* %1193
  %1195 = add i32 %1194, %1192
  %1196 = zext i32 %1195 to i64
  store i64 %1196, i64* %RAX, align 8, !tbaa !2424
  %1197 = icmp ult i32 %1195, %1192
  %1198 = icmp ult i32 %1195, %1194
  %1199 = or i1 %1197, %1198
  %1200 = zext i1 %1199 to i8
  %1201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1200, i8* %1201, align 1, !tbaa !2428
  %1202 = and i32 %1195, 255
  %1203 = call i32 @llvm.ctpop.i32(i32 %1202) #16
  %1204 = trunc i32 %1203 to i8
  %1205 = and i8 %1204, 1
  %1206 = xor i8 %1205, 1
  %1207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1206, i8* %1207, align 1, !tbaa !2442
  %1208 = xor i32 %1194, %1192
  %1209 = xor i32 %1208, %1195
  %1210 = lshr i32 %1209, 4
  %1211 = trunc i32 %1210 to i8
  %1212 = and i8 %1211, 1
  %1213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1212, i8* %1213, align 1, !tbaa !2443
  %1214 = icmp eq i32 %1195, 0
  %1215 = zext i1 %1214 to i8
  %1216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1215, i8* %1216, align 1, !tbaa !2444
  %1217 = lshr i32 %1195, 31
  %1218 = trunc i32 %1217 to i8
  %1219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1218, i8* %1219, align 1, !tbaa !2445
  %1220 = lshr i32 %1192, 31
  %1221 = lshr i32 %1194, 31
  %1222 = xor i32 %1217, %1220
  %1223 = xor i32 %1217, %1221
  %1224 = add nuw nsw i32 %1222, %1223
  %1225 = icmp eq i32 %1224, 2
  %1226 = zext i1 %1225 to i8
  %1227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1226, i8* %1227, align 1, !tbaa !2446
  %1228 = load i64, i64* %RBP
  %1229 = sub i64 %1228, 20
  %1230 = load i32, i32* %EAX
  %1231 = zext i32 %1230 to i64
  %1232 = load i64, i64* %PC
  %1233 = add i64 %1232, 3
  store i64 %1233, i64* %PC
  %1234 = inttoptr i64 %1229 to i32*
  store i32 %1230, i32* %1234
  %1235 = load i64, i64* %RBP
  %1236 = sub i64 %1235, 16
  %1237 = load i64, i64* %PC
  %1238 = add i64 %1237, 4
  store i64 %1238, i64* %PC
  %1239 = inttoptr i64 %1236 to i64*
  %1240 = load i64, i64* %1239
  store i64 %1240, i64* %RCX, align 8, !tbaa !2424
  %1241 = load i64, i64* %RCX
  %1242 = add i64 %1241, 28
  %1243 = load i64, i64* %PC
  %1244 = add i64 %1243, 4
  store i64 %1244, i64* %PC
  %1245 = inttoptr i64 %1242 to i8*
  %1246 = load i8, i8* %1245
  %1247 = zext i8 %1246 to i64
  store i64 %1247, i64* %RDI, align 8, !tbaa !2424
  %1248 = load i64, i64* %PC
  %1249 = sub i64 %1248, 1357
  %1250 = load i64, i64* %PC
  %1251 = add i64 %1250, 5
  %1252 = load i64, i64* %PC
  %1253 = add i64 %1252, 5
  store i64 %1253, i64* %PC
  %1254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1255 = load i64, i64* %1254, align 8, !tbaa !2424
  %1256 = add i64 %1255, -8
  %1257 = inttoptr i64 %1256 to i64*
  store i64 %1251, i64* %1257
  store i64 %1256, i64* %1254, align 8, !tbaa !2424
  %1258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1249, i64* %1258, align 8, !tbaa !2424
  %1259 = load i64, i64* %PC
  %1260 = call %struct.Memory* @sub_400590_to_byte(%struct.State* %0, i64 %1259, %struct.Memory* %MEMORY.7)
  %1261 = load i64, i64* %RBP
  %1262 = sub i64 %1261, 20
  %1263 = load i64, i64* %PC
  %1264 = add i64 %1263, 3
  store i64 %1264, i64* %PC
  %1265 = inttoptr i64 %1262 to i32*
  %1266 = load i32, i32* %1265
  %1267 = zext i32 %1266 to i64
  store i64 %1267, i64* %RDX, align 8, !tbaa !2424
  %1268 = load i64, i64* %RDX
  %1269 = load i32, i32* %EAX
  %1270 = zext i32 %1269 to i64
  %1271 = load i64, i64* %PC
  %1272 = add i64 %1271, 2
  store i64 %1272, i64* %PC
  %1273 = trunc i64 %1268 to i32
  %1274 = sub i32 %1273, %1269
  %1275 = zext i32 %1274 to i64
  store i64 %1275, i64* %RDX, align 8, !tbaa !2424
  %1276 = icmp ult i32 %1273, %1269
  %1277 = zext i1 %1276 to i8
  %1278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1277, i8* %1278, align 1, !tbaa !2428
  %1279 = and i32 %1274, 255
  %1280 = call i32 @llvm.ctpop.i32(i32 %1279) #16
  %1281 = trunc i32 %1280 to i8
  %1282 = and i8 %1281, 1
  %1283 = xor i8 %1282, 1
  %1284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1283, i8* %1284, align 1, !tbaa !2442
  %1285 = xor i64 %1270, %1268
  %1286 = trunc i64 %1285 to i32
  %1287 = xor i32 %1286, %1274
  %1288 = lshr i32 %1287, 4
  %1289 = trunc i32 %1288 to i8
  %1290 = and i8 %1289, 1
  %1291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1290, i8* %1291, align 1, !tbaa !2443
  %1292 = icmp eq i32 %1274, 0
  %1293 = zext i1 %1292 to i8
  %1294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1293, i8* %1294, align 1, !tbaa !2444
  %1295 = lshr i32 %1274, 31
  %1296 = trunc i32 %1295 to i8
  %1297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1296, i8* %1297, align 1, !tbaa !2445
  %1298 = lshr i32 %1273, 31
  %1299 = lshr i32 %1269, 31
  %1300 = xor i32 %1299, %1298
  %1301 = xor i32 %1295, %1298
  %1302 = add nuw nsw i32 %1301, %1300
  %1303 = icmp eq i32 %1302, 2
  %1304 = zext i1 %1303 to i8
  %1305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1304, i8* %1305, align 1, !tbaa !2446
  %1306 = load i64, i64* %RBP
  %1307 = sub i64 %1306, 20
  %1308 = load i32, i32* %EDX
  %1309 = zext i32 %1308 to i64
  %1310 = load i64, i64* %PC
  %1311 = add i64 %1310, 3
  store i64 %1311, i64* %PC
  %1312 = inttoptr i64 %1307 to i32*
  store i32 %1308, i32* %1312
  %1313 = load i64, i64* %RBP
  %1314 = sub i64 %1313, 20
  %1315 = load i64, i64* %PC
  %1316 = add i64 %1315, 4
  store i64 %1316, i64* %PC
  %1317 = inttoptr i64 %1314 to i32*
  %1318 = load i32, i32* %1317
  %1319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1319, align 1, !tbaa !2428
  %1320 = and i32 %1318, 255
  %1321 = call i32 @llvm.ctpop.i32(i32 %1320) #16
  %1322 = trunc i32 %1321 to i8
  %1323 = and i8 %1322, 1
  %1324 = xor i8 %1323, 1
  %1325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1324, i8* %1325, align 1, !tbaa !2442
  %1326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1326, align 1, !tbaa !2443
  %1327 = icmp eq i32 %1318, 0
  %1328 = zext i1 %1327 to i8
  %1329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1328, i8* %1329, align 1, !tbaa !2444
  %1330 = lshr i32 %1318, 31
  %1331 = trunc i32 %1330 to i8
  %1332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1331, i8* %1332, align 1, !tbaa !2445
  %1333 = lshr i32 %1318, 31
  %1334 = xor i32 %1330, %1333
  %1335 = add nuw nsw i32 %1334, %1333
  %1336 = icmp eq i32 %1335, 2
  %1337 = zext i1 %1336 to i8
  %1338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1337, i8* %1338, align 1, !tbaa !2446
  %1339 = load i64, i64* %PC
  %1340 = add i64 %1339, 35
  %1341 = load i64, i64* %PC
  %1342 = add i64 %1341, 6
  %1343 = load i64, i64* %PC
  %1344 = add i64 %1343, 6
  store i64 %1344, i64* %PC
  %1345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1346 = load i8, i8* %1345, align 1, !tbaa !2444
  %1347 = icmp eq i8 %1346, 0
  %1348 = zext i1 %1347 to i8
  store i8 %1348, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %1349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1350 = select i1 %1347, i64 %1340, i64 %1342
  store i64 %1350, i64* %1349, align 8, !tbaa !2424
  %1351 = load i8, i8* %BRANCH_TAKEN
  %1352 = icmp eq i8 %1351, 1
  br i1 %1352, label %block_400b11, label %block_400af4

block_4007b4:                                     ; preds = %block_400789
  %1353 = sub i64 %3030, 16
  %1354 = load i64, i64* %PC
  %1355 = add i64 %1354, 4
  store i64 %1355, i64* %PC
  %1356 = inttoptr i64 %1353 to i64*
  %1357 = load i64, i64* %1356
  store i64 %1357, i64* %RAX, align 8, !tbaa !2424
  %1358 = load i64, i64* %RAX
  %1359 = add i64 %1358, 3
  %1360 = load i64, i64* %PC
  %1361 = add i64 %1360, 4
  store i64 %1361, i64* %PC
  %1362 = inttoptr i64 %1359 to i8*
  %1363 = load i8, i8* %1362
  %1364 = zext i8 %1363 to i64
  store i64 %1364, i64* %RDI, align 8, !tbaa !2424
  %1365 = load i64, i64* %PC
  %1366 = sub i64 %1365, 556
  %1367 = load i64, i64* %PC
  %1368 = add i64 %1367, 5
  %1369 = load i64, i64* %PC
  %1370 = add i64 %1369, 5
  store i64 %1370, i64* %PC
  %1371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1372 = load i64, i64* %1371, align 8, !tbaa !2424
  %1373 = add i64 %1372, -8
  %1374 = inttoptr i64 %1373 to i64*
  store i64 %1368, i64* %1374
  store i64 %1373, i64* %1371, align 8, !tbaa !2424
  %1375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1366, i64* %1375, align 8, !tbaa !2424
  %1376 = load i64, i64* %PC
  %1377 = call %struct.Memory* @sub_400590_to_byte(%struct.State* %0, i64 %1376, %struct.Memory* %2943)
  %1378 = load i64, i64* %PC
  %1379 = add i64 %1378, 5
  store i64 %1379, i64* %PC
  store i64 2, i64* %RDI, align 8, !tbaa !2424
  %1380 = load i64, i64* %RBP
  %1381 = sub i64 %1380, 28
  %1382 = load i32, i32* %EAX
  %1383 = zext i32 %1382 to i64
  %1384 = load i64, i64* %PC
  %1385 = add i64 %1384, 3
  store i64 %1385, i64* %PC
  %1386 = inttoptr i64 %1381 to i32*
  store i32 %1382, i32* %1386
  %1387 = load i64, i64* %RBP
  %1388 = sub i64 %1387, 28
  %1389 = load i64, i64* %PC
  %1390 = add i64 %1389, 3
  store i64 %1390, i64* %PC
  %1391 = inttoptr i64 %1388 to i32*
  %1392 = load i32, i32* %1391
  %1393 = zext i32 %1392 to i64
  store i64 %1393, i64* %RAX, align 8, !tbaa !2424
  %1394 = load i64, i64* %RAX
  %1395 = load i64, i64* %PC
  %1396 = add i64 %1395, 3
  store i64 %1396, i64* %PC
  %1397 = trunc i64 %1394 to i32
  %1398 = add i32 1, %1397
  %1399 = zext i32 %1398 to i64
  store i64 %1399, i64* %RAX, align 8, !tbaa !2424
  %1400 = icmp ult i32 %1398, %1397
  %1401 = icmp ult i32 %1398, 1
  %1402 = or i1 %1400, %1401
  %1403 = zext i1 %1402 to i8
  %1404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1403, i8* %1404, align 1, !tbaa !2428
  %1405 = and i32 %1398, 255
  %1406 = call i32 @llvm.ctpop.i32(i32 %1405) #16
  %1407 = trunc i32 %1406 to i8
  %1408 = and i8 %1407, 1
  %1409 = xor i8 %1408, 1
  %1410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1409, i8* %1410, align 1, !tbaa !2442
  %1411 = xor i64 1, %1394
  %1412 = trunc i64 %1411 to i32
  %1413 = xor i32 %1412, %1398
  %1414 = lshr i32 %1413, 4
  %1415 = trunc i32 %1414 to i8
  %1416 = and i8 %1415, 1
  %1417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1416, i8* %1417, align 1, !tbaa !2443
  %1418 = icmp eq i32 %1398, 0
  %1419 = zext i1 %1418 to i8
  %1420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1419, i8* %1420, align 1, !tbaa !2444
  %1421 = lshr i32 %1398, 31
  %1422 = trunc i32 %1421 to i8
  %1423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1422, i8* %1423, align 1, !tbaa !2445
  %1424 = lshr i32 %1397, 31
  %1425 = xor i32 %1421, %1424
  %1426 = add nuw nsw i32 %1425, %1421
  %1427 = icmp eq i32 %1426, 2
  %1428 = zext i1 %1427 to i8
  %1429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1428, i8* %1429, align 1, !tbaa !2446
  %1430 = load i64, i64* %PC
  %1431 = add i64 %1430, 1
  store i64 %1431, i64* %PC
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1434 = bitcast %union.anon* %1433 to i32*
  %1435 = load i32, i32* %1434, align 8, !tbaa !2448
  %1436 = sext i32 %1435 to i64
  %1437 = lshr i64 %1436, 32
  store i64 %1437, i64* %1432, align 8, !tbaa !2424
  %1438 = load i32, i32* %EDI
  %1439 = zext i32 %1438 to i64
  %1440 = load i64, i64* %PC
  %1441 = add i64 %1440, 2
  store i64 %1441, i64* %PC
  %1442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1443 = bitcast %union.anon* %1442 to i32*
  %1444 = load i32, i32* %1443, align 8, !tbaa !2448
  %1445 = zext i32 %1444 to i64
  %1446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1447 = bitcast %union.anon* %1446 to i32*
  %1448 = load i32, i32* %1447, align 8, !tbaa !2448
  %1449 = zext i32 %1448 to i64
  %1450 = shl i64 %1439, 32
  %1451 = ashr exact i64 %1450, 32
  %1452 = shl nuw i64 %1449, 32
  %1453 = or i64 %1452, %1445
  %1454 = sdiv i64 %1453, %1451
  %1455 = shl i64 %1454, 32
  %1456 = ashr exact i64 %1455, 32
  %1457 = icmp eq i64 %1454, %1456
  br i1 %1457, label %1462, label %1458

; <label>:1458:                                   ; preds = %block_4007b4
  %1459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1460 = load i64, i64* %1459, align 8, !tbaa !2424
  %1461 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1460, %struct.Memory* %1377) #17
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:1462:                                   ; preds = %block_4007b4
  %1463 = srem i64 %1453, %1451
  %1464 = getelementptr inbounds %union.anon, %union.anon* %1442, i64 0, i32 0
  %1465 = and i64 %1454, 4294967295
  store i64 %1465, i64* %1464, align 8, !tbaa !2424
  %1466 = getelementptr inbounds %union.anon, %union.anon* %1446, i64 0, i32 0
  %1467 = and i64 %1463, 4294967295
  store i64 %1467, i64* %1466, align 8, !tbaa !2424
  %1468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1468, align 1, !tbaa !2428
  %1469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1469, align 1, !tbaa !2442
  %1470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1470, align 1, !tbaa !2443
  %1471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1471, align 1, !tbaa !2444
  %1472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1472, align 1, !tbaa !2445
  %1473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1473, align 1, !tbaa !2446
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %1458, %1462
  %1474 = phi %struct.Memory* [ %1461, %1458 ], [ %1377, %1462 ]
  %1475 = load i32, i32* %EAX
  %1476 = zext i32 %1475 to i64
  %1477 = load i64, i64* %PC
  %1478 = add i64 %1477, 3
  store i64 %1478, i64* %PC
  %1479 = sub i32 %1475, 7
  %1480 = icmp ult i32 %1475, 7
  %1481 = zext i1 %1480 to i8
  %1482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1481, i8* %1482, align 1, !tbaa !2428
  %1483 = and i32 %1479, 255
  %1484 = call i32 @llvm.ctpop.i32(i32 %1483) #16
  %1485 = trunc i32 %1484 to i8
  %1486 = and i8 %1485, 1
  %1487 = xor i8 %1486, 1
  %1488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1487, i8* %1488, align 1, !tbaa !2442
  %1489 = xor i64 7, %1476
  %1490 = trunc i64 %1489 to i32
  %1491 = xor i32 %1490, %1479
  %1492 = lshr i32 %1491, 4
  %1493 = trunc i32 %1492 to i8
  %1494 = and i8 %1493, 1
  %1495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1494, i8* %1495, align 1, !tbaa !2443
  %1496 = icmp eq i32 %1479, 0
  %1497 = zext i1 %1496 to i8
  %1498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1497, i8* %1498, align 1, !tbaa !2444
  %1499 = lshr i32 %1479, 31
  %1500 = trunc i32 %1499 to i8
  %1501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1500, i8* %1501, align 1, !tbaa !2445
  %1502 = lshr i32 %1475, 31
  %1503 = xor i32 %1499, %1502
  %1504 = add nuw nsw i32 %1503, %1502
  %1505 = icmp eq i32 %1504, 2
  %1506 = zext i1 %1505 to i8
  %1507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1506, i8* %1507, align 1, !tbaa !2446
  %1508 = load i64, i64* %PC
  %1509 = add i64 %1508, 18
  %1510 = load i64, i64* %PC
  %1511 = add i64 %1510, 6
  %1512 = load i64, i64* %PC
  %1513 = add i64 %1512, 6
  store i64 %1513, i64* %PC
  %1514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1515 = load i8, i8* %1514, align 1, !tbaa !2444
  store i8 %1515, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %1516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1517 = icmp ne i8 %1515, 0
  %1518 = select i1 %1517, i64 %1509, i64 %1511
  store i64 %1518, i64* %1516, align 8, !tbaa !2424
  %1519 = load i8, i8* %BRANCH_TAKEN
  %1520 = icmp eq i8 %1519, 1
  %1521 = load i64, i64* %RBP
  br i1 %1520, label %block_4007e7, label %block_4007db

block_40081e:                                     ; preds = %block_4007fb, %block_4007e7
  %MEMORY.4 = phi %struct.Memory* [ %1474, %block_4007e7 ], [ %1474, %block_4007fb ]
  %1522 = load i64, i64* %RBP
  %1523 = sub i64 %1522, 4
  %1524 = load i64, i64* %PC
  %1525 = add i64 %1524, 7
  store i64 %1525, i64* %PC
  %1526 = inttoptr i64 %1523 to i32*
  store i32 -6, i32* %1526
  %1527 = load i64, i64* %PC
  %1528 = add i64 %1527, 770
  %1529 = load i64, i64* %PC
  %1530 = add i64 %1529, 5
  store i64 %1530, i64* %PC
  %1531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1528, i64* %1531, align 8, !tbaa !2424
  br label %block_400b27

block_4008dc:                                     ; preds = %block_4008d2
  %1532 = load i64, i64* %RBP
  %1533 = sub i64 %1532, 4
  %1534 = load i64, i64* %PC
  %1535 = add i64 %1534, 7
  store i64 %1535, i64* %PC
  %1536 = inttoptr i64 %1533 to i32*
  store i32 -7, i32* %1536
  %1537 = load i64, i64* %PC
  %1538 = add i64 %1537, 580
  %1539 = load i64, i64* %PC
  %1540 = add i64 %1539, 5
  store i64 %1540, i64* %PC
  %1541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1538, i64* %1541, align 8, !tbaa !2424
  br label %block_400b27

block_400734:                                     ; preds = %block_400710
  %1542 = sub i64 %190, 32
  %1543 = load i64, i64* %PC
  %1544 = add i64 %1543, 3
  store i64 %1544, i64* %PC
  %1545 = inttoptr i64 %1542 to i32*
  %1546 = load i32, i32* %1545
  %1547 = zext i32 %1546 to i64
  store i64 %1547, i64* %RAX, align 8, !tbaa !2424
  %1548 = load i64, i64* %RBP
  %1549 = sub i64 %1548, 4
  %1550 = load i32, i32* %EAX
  %1551 = zext i32 %1550 to i64
  %1552 = load i64, i64* %PC
  %1553 = add i64 %1552, 3
  store i64 %1553, i64* %PC
  %1554 = inttoptr i64 %1549 to i32*
  store i32 %1550, i32* %1554
  %1555 = load i64, i64* %PC
  %1556 = add i64 %1555, 1005
  %1557 = load i64, i64* %PC
  %1558 = add i64 %1557, 5
  store i64 %1558, i64* %PC
  %1559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1556, i64* %1559, align 8, !tbaa !2424
  br label %block_400b27

block_4009fa:                                     ; preds = %block_4009e2
  %1560 = load i64, i64* %RBP
  %1561 = sub i64 %1560, 4
  %1562 = load i64, i64* %PC
  %1563 = add i64 %1562, 7
  store i64 %1563, i64* %PC
  %1564 = inttoptr i64 %1561 to i32*
  store i32 -22, i32* %1564
  %1565 = load i64, i64* %PC
  %1566 = add i64 %1565, 294
  %1567 = load i64, i64* %PC
  %1568 = add i64 %1567, 5
  store i64 %1568, i64* %PC
  %1569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1566, i64* %1569, align 8, !tbaa !2424
  br label %block_400b27

block_400990:                                     ; preds = %block_400984
  %1570 = load i64, i64* %RBP
  %1571 = sub i64 %1570, 20
  %1572 = load i64, i64* %PC
  %1573 = add i64 %1572, 7
  store i64 %1573, i64* %PC
  %1574 = inttoptr i64 %1571 to i32*
  store i32 0, i32* %1574
  %1575 = load i64, i64* %PC
  %1576 = add i64 %1575, 12
  %1577 = load i64, i64* %PC
  %1578 = add i64 %1577, 5
  store i64 %1578, i64* %PC
  %1579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1576, i64* %1579, align 8, !tbaa !2424
  br label %block_4009a3

block_40085a:                                     ; preds = %block_400812
  %1580 = load i64, i64* %RBP
  %1581 = sub i64 %1580, 34
  %1582 = load i64, i64* %PC
  %1583 = add i64 %1582, 4
  store i64 %1583, i64* %PC
  %1584 = inttoptr i64 %1581 to i8*
  %1585 = load i8, i8* %1584
  %1586 = zext i8 %1585 to i64
  store i64 %1586, i64* %RAX, align 8, !tbaa !2424
  %1587 = load i32, i32* %EAX
  %1588 = zext i32 %1587 to i64
  %1589 = load i64, i64* %PC
  %1590 = add i64 %1589, 3
  store i64 %1590, i64* %PC
  %1591 = sub i32 %1587, 96
  %1592 = icmp ult i32 %1587, 96
  %1593 = zext i1 %1592 to i8
  %1594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1593, i8* %1594, align 1, !tbaa !2428
  %1595 = and i32 %1591, 255
  %1596 = call i32 @llvm.ctpop.i32(i32 %1595) #16
  %1597 = trunc i32 %1596 to i8
  %1598 = and i8 %1597, 1
  %1599 = xor i8 %1598, 1
  %1600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1599, i8* %1600, align 1, !tbaa !2442
  %1601 = xor i64 96, %1588
  %1602 = trunc i64 %1601 to i32
  %1603 = xor i32 %1602, %1591
  %1604 = lshr i32 %1603, 4
  %1605 = trunc i32 %1604 to i8
  %1606 = and i8 %1605, 1
  %1607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1606, i8* %1607, align 1, !tbaa !2443
  %1608 = icmp eq i32 %1591, 0
  %1609 = zext i1 %1608 to i8
  %1610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1609, i8* %1610, align 1, !tbaa !2444
  %1611 = lshr i32 %1591, 31
  %1612 = trunc i32 %1611 to i8
  %1613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1612, i8* %1613, align 1, !tbaa !2445
  %1614 = lshr i32 %1587, 31
  %1615 = xor i32 %1611, %1614
  %1616 = add nuw nsw i32 %1615, %1614
  %1617 = icmp eq i32 %1616, 2
  %1618 = zext i1 %1617 to i8
  %1619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1618, i8* %1619, align 1, !tbaa !2446
  %1620 = load i64, i64* %PC
  %1621 = add i64 %1620, 20
  %1622 = load i64, i64* %PC
  %1623 = add i64 %1622, 6
  %1624 = load i64, i64* %PC
  %1625 = add i64 %1624, 6
  store i64 %1625, i64* %PC
  %1626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1627 = load i8, i8* %1626, align 1, !tbaa !2444
  %1628 = icmp eq i8 %1627, 0
  %1629 = zext i1 %1628 to i8
  store i8 %1629, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %1630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1631 = select i1 %1628, i64 %1621, i64 %1623
  store i64 %1631, i64* %1630, align 8, !tbaa !2424
  %1632 = load i8, i8* %BRANCH_TAKEN
  %1633 = icmp eq i8 %1632, 1
  br i1 %1633, label %block_400875, label %block_400867

block_40092e:                                     ; preds = %block_40091a
  %1634 = load i64, i64* %RBP
  %1635 = sub i64 %1634, 20
  %1636 = load i64, i64* %PC
  %1637 = add i64 %1636, 7
  store i64 %1637, i64* %PC
  %1638 = inttoptr i64 %1635 to i32*
  store i32 43690, i32* %1638
  %1639 = load i64, i64* %PC
  %1640 = add i64 %1639, 12
  %1641 = load i64, i64* %PC
  %1642 = add i64 %1641, 5
  store i64 %1642, i64* %PC
  %1643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1640, i64* %1643, align 8, !tbaa !2424
  br label %block_400941

block_400a53:                                     ; preds = %_ZN12_GLOBAL__N_1L9DIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit
  %1644 = load i64, i64* %PC
  %1645 = add i64 %1644, 5
  store i64 %1645, i64* %PC
  store i64 4, i64* %RDX, align 8, !tbaa !2424
  %1646 = load i64, i64* %RBP
  %1647 = sub i64 %1646, 20
  %1648 = load i64, i64* %PC
  %1649 = add i64 %1648, 3
  store i64 %1649, i64* %PC
  %1650 = inttoptr i64 %1647 to i32*
  %1651 = load i32, i32* %1650
  %1652 = zext i32 %1651 to i64
  store i64 %1652, i64* %RDI, align 8, !tbaa !2424
  %1653 = load i64, i64* %RBP
  %1654 = sub i64 %1653, 16
  %1655 = load i64, i64* %PC
  %1656 = add i64 %1655, 4
  store i64 %1656, i64* %PC
  %1657 = inttoptr i64 %1654 to i64*
  %1658 = load i64, i64* %1657
  store i64 %1658, i64* %RAX, align 8, !tbaa !2424
  %1659 = load i64, i64* %RAX
  %1660 = load i64, i64* %PC
  %1661 = add i64 %1660, 4
  store i64 %1661, i64* %PC
  %1662 = add i64 28, %1659
  store i64 %1662, i64* %RAX, align 8, !tbaa !2424
  %1663 = icmp ult i64 %1662, %1659
  %1664 = icmp ult i64 %1662, 28
  %1665 = or i1 %1663, %1664
  %1666 = zext i1 %1665 to i8
  %1667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1666, i8* %1667, align 1, !tbaa !2428
  %1668 = trunc i64 %1662 to i32
  %1669 = and i32 %1668, 255
  %1670 = call i32 @llvm.ctpop.i32(i32 %1669) #16
  %1671 = trunc i32 %1670 to i8
  %1672 = and i8 %1671, 1
  %1673 = xor i8 %1672, 1
  %1674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1673, i8* %1674, align 1, !tbaa !2442
  %1675 = xor i64 28, %1659
  %1676 = xor i64 %1675, %1662
  %1677 = lshr i64 %1676, 4
  %1678 = trunc i64 %1677 to i8
  %1679 = and i8 %1678, 1
  %1680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1679, i8* %1680, align 1, !tbaa !2443
  %1681 = icmp eq i64 %1662, 0
  %1682 = zext i1 %1681 to i8
  %1683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1682, i8* %1683, align 1, !tbaa !2444
  %1684 = lshr i64 %1662, 63
  %1685 = trunc i64 %1684 to i8
  %1686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1685, i8* %1686, align 1, !tbaa !2445
  %1687 = lshr i64 %1659, 63
  %1688 = xor i64 %1684, %1687
  %1689 = add nuw nsw i64 %1688, %1684
  %1690 = icmp eq i64 %1689, 2
  %1691 = zext i1 %1690 to i8
  %1692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1691, i8* %1692, align 1, !tbaa !2446
  %1693 = load i64, i64* %RAX
  %1694 = load i64, i64* %PC
  %1695 = add i64 %1694, 3
  store i64 %1695, i64* %PC
  store i64 %1693, i64* %RSI, align 8, !tbaa !2424
  %1696 = load i64, i64* %PC
  %1697 = sub i64 %1696, 1126
  %1698 = load i64, i64* %PC
  %1699 = add i64 %1698, 5
  %1700 = load i64, i64* %PC
  %1701 = add i64 %1700, 5
  store i64 %1701, i64* %PC
  %1702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1703 = load i64, i64* %1702, align 8, !tbaa !2424
  %1704 = add i64 %1703, -8
  %1705 = inttoptr i64 %1704 to i64*
  store i64 %1699, i64* %1705
  store i64 %1704, i64* %1702, align 8, !tbaa !2424
  %1706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1697, i64* %1706, align 8, !tbaa !2424
  %1707 = load i64, i64* %PC
  %1708 = call %struct.Memory* @sub_400600_read_bytes(%struct.State* %0, i64 %1707, %struct.Memory* %3240)
  %1709 = load i64, i64* %RBP
  %1710 = sub i64 %1709, 64
  %1711 = load i32, i32* %EAX
  %1712 = zext i32 %1711 to i64
  %1713 = load i64, i64* %PC
  %1714 = add i64 %1713, 3
  store i64 %1714, i64* %PC
  %1715 = inttoptr i64 %1710 to i32*
  store i32 %1711, i32* %1715
  %1716 = load i64, i64* %RBP
  %1717 = sub i64 %1716, 16
  %1718 = load i64, i64* %PC
  %1719 = add i64 %1718, 4
  store i64 %1719, i64* %PC
  %1720 = inttoptr i64 %1717 to i64*
  %1721 = load i64, i64* %1720
  store i64 %1721, i64* %RSI, align 8, !tbaa !2424
  %1722 = load i64, i64* %RSI
  %1723 = add i64 %1722, 28
  %1724 = load i64, i64* %PC
  %1725 = add i64 %1724, 4
  store i64 %1725, i64* %PC
  %1726 = inttoptr i64 %1723 to i8*
  %1727 = load i8, i8* %1726
  %1728 = sext i8 %1727 to i64
  %1729 = and i64 %1728, 4294967295
  store i64 %1729, i64* %RAX, align 8, !tbaa !2424
  %1730 = load i32, i32* %EAX
  %1731 = zext i32 %1730 to i64
  %1732 = load i64, i64* %PC
  %1733 = add i64 %1732, 3
  store i64 %1733, i64* %PC
  %1734 = sub i32 %1730, 100
  %1735 = icmp ult i32 %1730, 100
  %1736 = zext i1 %1735 to i8
  %1737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1736, i8* %1737, align 1, !tbaa !2428
  %1738 = and i32 %1734, 255
  %1739 = call i32 @llvm.ctpop.i32(i32 %1738) #16
  %1740 = trunc i32 %1739 to i8
  %1741 = and i8 %1740, 1
  %1742 = xor i8 %1741, 1
  %1743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1742, i8* %1743, align 1, !tbaa !2442
  %1744 = xor i64 100, %1731
  %1745 = trunc i64 %1744 to i32
  %1746 = xor i32 %1745, %1734
  %1747 = lshr i32 %1746, 4
  %1748 = trunc i32 %1747 to i8
  %1749 = and i8 %1748, 1
  %1750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1749, i8* %1750, align 1, !tbaa !2443
  %1751 = icmp eq i32 %1734, 0
  %1752 = zext i1 %1751 to i8
  %1753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1752, i8* %1753, align 1, !tbaa !2444
  %1754 = lshr i32 %1734, 31
  %1755 = trunc i32 %1754 to i8
  %1756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1755, i8* %1756, align 1, !tbaa !2445
  %1757 = lshr i32 %1730, 31
  %1758 = xor i32 %1754, %1757
  %1759 = add nuw nsw i32 %1758, %1757
  %1760 = icmp eq i32 %1759, 2
  %1761 = zext i1 %1760 to i8
  %1762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1761, i8* %1762, align 1, !tbaa !2446
  %1763 = load i64, i64* %PC
  %1764 = add i64 %1763, 37
  %1765 = load i64, i64* %PC
  %1766 = add i64 %1765, 6
  %1767 = load i64, i64* %PC
  %1768 = add i64 %1767, 6
  store i64 %1768, i64* %PC
  %1769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1770 = load i8, i8* %1769, align 1, !tbaa !2444
  %1771 = icmp eq i8 %1770, 0
  %1772 = zext i1 %1771 to i8
  store i8 %1772, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %1773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1774 = select i1 %1771, i64 %1764, i64 %1766
  store i64 %1774, i64* %1773, align 8, !tbaa !2424
  %1775 = load i8, i8* %BRANCH_TAKEN
  %1776 = icmp eq i8 %1775, 1
  br i1 %1776, label %block_400a9e, label %block_400a7f

block_400b27:                                     ; preds = %block_4007a8, %block_400a48, %block_400b21, %block_4009fa, %block_400734, %block_4008dc, %block_40081e, %block_4009d6, %block_40077d, %block_40075b, %block_4007db
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.4, %block_40081e ], [ %MEMORY.6, %block_400b21 ], [ %3240, %block_400a48 ], [ %2165, %block_4009fa ], [ %2165, %block_4009d6 ], [ %MEMORY.1, %block_4008dc ], [ %1474, %block_4007db ], [ %2943, %block_4007a8 ], [ %1857, %block_40077d ], [ %130, %block_40075b ], [ %130, %block_400734 ]
  %1777 = load i64, i64* %RBP
  %1778 = sub i64 %1777, 4
  %1779 = load i64, i64* %PC
  %1780 = add i64 %1779, 3
  store i64 %1780, i64* %PC
  %1781 = inttoptr i64 %1778 to i32*
  %1782 = load i32, i32* %1781
  %1783 = zext i32 %1782 to i64
  store i64 %1783, i64* %RAX, align 8, !tbaa !2424
  %1784 = load i64, i64* %RSP
  %1785 = load i64, i64* %PC
  %1786 = add i64 %1785, 4
  store i64 %1786, i64* %PC
  %1787 = add i64 80, %1784
  store i64 %1787, i64* %RSP, align 8, !tbaa !2424
  %1788 = icmp ult i64 %1787, %1784
  %1789 = icmp ult i64 %1787, 80
  %1790 = or i1 %1788, %1789
  %1791 = zext i1 %1790 to i8
  %1792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1791, i8* %1792, align 1, !tbaa !2428
  %1793 = trunc i64 %1787 to i32
  %1794 = and i32 %1793, 255
  %1795 = call i32 @llvm.ctpop.i32(i32 %1794) #16
  %1796 = trunc i32 %1795 to i8
  %1797 = and i8 %1796, 1
  %1798 = xor i8 %1797, 1
  %1799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1798, i8* %1799, align 1, !tbaa !2442
  %1800 = xor i64 80, %1784
  %1801 = xor i64 %1800, %1787
  %1802 = lshr i64 %1801, 4
  %1803 = trunc i64 %1802 to i8
  %1804 = and i8 %1803, 1
  %1805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1804, i8* %1805, align 1, !tbaa !2443
  %1806 = icmp eq i64 %1787, 0
  %1807 = zext i1 %1806 to i8
  %1808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1807, i8* %1808, align 1, !tbaa !2444
  %1809 = lshr i64 %1787, 63
  %1810 = trunc i64 %1809 to i8
  %1811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1810, i8* %1811, align 1, !tbaa !2445
  %1812 = lshr i64 %1784, 63
  %1813 = xor i64 %1809, %1812
  %1814 = add nuw nsw i64 %1813, %1809
  %1815 = icmp eq i64 %1814, 2
  %1816 = zext i1 %1815 to i8
  %1817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1816, i8* %1817, align 1, !tbaa !2446
  %1818 = load i64, i64* %PC
  %1819 = add i64 %1818, 1
  store i64 %1819, i64* %PC
  %1820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1821 = load i64, i64* %1820, align 8, !tbaa !2424
  %1822 = add i64 %1821, 8
  %1823 = inttoptr i64 %1821 to i64*
  %1824 = load i64, i64* %1823
  store i64 %1824, i64* %RBP, align 8, !tbaa !2424
  store i64 %1822, i64* %1820, align 8, !tbaa !2424
  %1825 = load i64, i64* %PC
  %1826 = add i64 %1825, 1
  store i64 %1826, i64* %PC
  %1827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1829 = load i64, i64* %1828, align 8, !tbaa !2424
  %1830 = inttoptr i64 %1829 to i64*
  %1831 = load i64, i64* %1830
  store i64 %1831, i64* %1827, align 8, !tbaa !2424
  %1832 = add i64 %1829, 8
  store i64 %1832, i64* %1828, align 8, !tbaa !2424
  ret %struct.Memory* %MEMORY.5

block_400767:                                     ; preds = %block_40073f
  %1833 = sub i64 %927, 16
  %1834 = load i64, i64* %PC
  %1835 = add i64 %1834, 4
  store i64 %1835, i64* %PC
  %1836 = inttoptr i64 %1833 to i64*
  %1837 = load i64, i64* %1836
  store i64 %1837, i64* %RAX, align 8, !tbaa !2424
  %1838 = load i64, i64* %RAX
  %1839 = add i64 %1838, 1
  %1840 = load i64, i64* %PC
  %1841 = add i64 %1840, 4
  store i64 %1841, i64* %PC
  %1842 = inttoptr i64 %1839 to i8*
  %1843 = load i8, i8* %1842
  %1844 = zext i8 %1843 to i64
  store i64 %1844, i64* %RDI, align 8, !tbaa !2424
  %1845 = load i64, i64* %PC
  %1846 = sub i64 %1845, 479
  %1847 = load i64, i64* %PC
  %1848 = add i64 %1847, 5
  %1849 = load i64, i64* %PC
  %1850 = add i64 %1849, 5
  store i64 %1850, i64* %PC
  %1851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1852 = load i64, i64* %1851, align 8, !tbaa !2424
  %1853 = add i64 %1852, -8
  %1854 = inttoptr i64 %1853 to i64*
  store i64 %1848, i64* %1854
  store i64 %1853, i64* %1851, align 8, !tbaa !2424
  %1855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1846, i64* %1855, align 8, !tbaa !2424
  %1856 = load i64, i64* %PC
  %1857 = call %struct.Memory* @sub_400590_to_byte(%struct.State* %0, i64 %1856, %struct.Memory* %130)
  %1858 = load i32, i32* %EAX
  %1859 = zext i32 %1858 to i64
  %1860 = load i64, i64* %PC
  %1861 = add i64 %1860, 3
  store i64 %1861, i64* %PC
  %1862 = sub i32 %1858, 9
  %1863 = icmp ult i32 %1858, 9
  %1864 = zext i1 %1863 to i8
  %1865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1864, i8* %1865, align 1, !tbaa !2428
  %1866 = and i32 %1862, 255
  %1867 = call i32 @llvm.ctpop.i32(i32 %1866) #16
  %1868 = trunc i32 %1867 to i8
  %1869 = and i8 %1868, 1
  %1870 = xor i8 %1869, 1
  %1871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1870, i8* %1871, align 1, !tbaa !2442
  %1872 = xor i64 9, %1859
  %1873 = trunc i64 %1872 to i32
  %1874 = xor i32 %1873, %1862
  %1875 = lshr i32 %1874, 4
  %1876 = trunc i32 %1875 to i8
  %1877 = and i8 %1876, 1
  %1878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1877, i8* %1878, align 1, !tbaa !2443
  %1879 = icmp eq i32 %1862, 0
  %1880 = zext i1 %1879 to i8
  %1881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1880, i8* %1881, align 1, !tbaa !2444
  %1882 = lshr i32 %1862, 31
  %1883 = trunc i32 %1882 to i8
  %1884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1883, i8* %1884, align 1, !tbaa !2445
  %1885 = lshr i32 %1858, 31
  %1886 = xor i32 %1882, %1885
  %1887 = add nuw nsw i32 %1886, %1885
  %1888 = icmp eq i32 %1887, 2
  %1889 = zext i1 %1888 to i8
  %1890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1889, i8* %1890, align 1, !tbaa !2446
  %1891 = load i64, i64* %PC
  %1892 = add i64 %1891, 18
  %1893 = load i64, i64* %PC
  %1894 = add i64 %1893, 6
  %1895 = load i64, i64* %PC
  %1896 = add i64 %1895, 6
  store i64 %1896, i64* %PC
  %1897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1898 = load i8, i8* %1897, align 1, !tbaa !2444
  store i8 %1898, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %1899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1900 = icmp ne i8 %1898, 0
  %1901 = select i1 %1900, i64 %1892, i64 %1894
  store i64 %1901, i64* %1899, align 8, !tbaa !2424
  %1902 = load i8, i8* %BRANCH_TAKEN
  %1903 = icmp eq i8 %1902, 1
  %1904 = load i64, i64* %RBP
  br i1 %1903, label %block_400789, label %block_40077d

block_400b21:                                     ; preds = %block_400a90, %block_400b1c
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.8, %block_400b1c ], [ %1708, %block_400a90 ]
  %1905 = load i64, i64* %RBP
  %1906 = sub i64 %1905, 20
  %1907 = load i64, i64* %PC
  %1908 = add i64 %1907, 3
  store i64 %1908, i64* %PC
  %1909 = inttoptr i64 %1906 to i32*
  %1910 = load i32, i32* %1909
  %1911 = zext i32 %1910 to i64
  store i64 %1911, i64* %RAX, align 8, !tbaa !2424
  %1912 = load i64, i64* %RBP
  %1913 = sub i64 %1912, 4
  %1914 = load i32, i32* %EAX
  %1915 = zext i32 %1914 to i64
  %1916 = load i64, i64* %PC
  %1917 = add i64 %1916, 3
  store i64 %1917, i64* %PC
  %1918 = inttoptr i64 %1913 to i32*
  store i32 %1914, i32* %1918
  br label %block_400b27

block_400a9e:                                     ; preds = %block_400a53, %block_400a7f
  %MEMORY.7 = phi %struct.Memory* [ %1708, %block_400a53 ], [ %1708, %block_400a7f ]
  %1919 = load i64, i64* %RBP
  %1920 = sub i64 %1919, 16
  %1921 = load i64, i64* %PC
  %1922 = add i64 %1921, 4
  store i64 %1922, i64* %PC
  %1923 = inttoptr i64 %1920 to i64*
  %1924 = load i64, i64* %1923
  store i64 %1924, i64* %RAX, align 8, !tbaa !2424
  %1925 = load i64, i64* %RAX
  %1926 = add i64 %1925, 28
  %1927 = load i64, i64* %PC
  %1928 = add i64 %1927, 4
  store i64 %1928, i64* %PC
  %1929 = inttoptr i64 %1926 to i8*
  %1930 = load i8, i8* %1929
  %1931 = sext i8 %1930 to i64
  %1932 = and i64 %1931, 4294967295
  store i64 %1932, i64* %RCX, align 8, !tbaa !2424
  %1933 = load i64, i64* %RBP
  %1934 = sub i64 %1933, 16
  %1935 = load i64, i64* %PC
  %1936 = add i64 %1935, 4
  store i64 %1936, i64* %PC
  %1937 = inttoptr i64 %1934 to i64*
  %1938 = load i64, i64* %1937
  store i64 %1938, i64* %RAX, align 8, !tbaa !2424
  %1939 = load i64, i64* %RAX
  %1940 = add i64 %1939, 29
  %1941 = load i64, i64* %PC
  %1942 = add i64 %1941, 4
  store i64 %1942, i64* %PC
  %1943 = inttoptr i64 %1940 to i8*
  %1944 = load i8, i8* %1943
  %1945 = sext i8 %1944 to i64
  %1946 = and i64 %1945, 4294967295
  store i64 %1946, i64* %RDX, align 8, !tbaa !2424
  %1947 = load i32, i32* %ECX
  %1948 = zext i32 %1947 to i64
  %1949 = load i32, i32* %EDX
  %1950 = zext i32 %1949 to i64
  %1951 = load i64, i64* %PC
  %1952 = add i64 %1951, 2
  store i64 %1952, i64* %PC
  %1953 = sub i32 %1947, %1949
  %1954 = icmp ult i32 %1947, %1949
  %1955 = zext i1 %1954 to i8
  %1956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1955, i8* %1956, align 1, !tbaa !2428
  %1957 = and i32 %1953, 255
  %1958 = call i32 @llvm.ctpop.i32(i32 %1957) #16
  %1959 = trunc i32 %1958 to i8
  %1960 = and i8 %1959, 1
  %1961 = xor i8 %1960, 1
  %1962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1961, i8* %1962, align 1, !tbaa !2442
  %1963 = xor i64 %1950, %1948
  %1964 = trunc i64 %1963 to i32
  %1965 = xor i32 %1964, %1953
  %1966 = lshr i32 %1965, 4
  %1967 = trunc i32 %1966 to i8
  %1968 = and i8 %1967, 1
  %1969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1968, i8* %1969, align 1, !tbaa !2443
  %1970 = icmp eq i32 %1953, 0
  %1971 = zext i1 %1970 to i8
  %1972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1971, i8* %1972, align 1, !tbaa !2444
  %1973 = lshr i32 %1953, 31
  %1974 = trunc i32 %1973 to i8
  %1975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1974, i8* %1975, align 1, !tbaa !2445
  %1976 = lshr i32 %1947, 31
  %1977 = lshr i32 %1949, 31
  %1978 = xor i32 %1977, %1976
  %1979 = xor i32 %1973, %1976
  %1980 = add nuw nsw i32 %1979, %1978
  %1981 = icmp eq i32 %1980, 2
  %1982 = zext i1 %1981 to i8
  %1983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1982, i8* %1983, align 1, !tbaa !2446
  %1984 = load i64, i64* %PC
  %1985 = add i64 %1984, 102
  %1986 = load i64, i64* %PC
  %1987 = add i64 %1986, 6
  %1988 = load i64, i64* %PC
  %1989 = add i64 %1988, 6
  store i64 %1989, i64* %PC
  %1990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1991 = load i8, i8* %1990, align 1, !tbaa !2444
  %1992 = icmp eq i8 %1991, 0
  %1993 = zext i1 %1992 to i8
  store i8 %1993, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %1994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1995 = select i1 %1992, i64 %1985, i64 %1987
  store i64 %1995, i64* %1994, align 8, !tbaa !2424
  %1996 = load i8, i8* %BRANCH_TAKEN
  %1997 = icmp eq i8 %1996, 1
  br i1 %1997, label %block_400b16, label %block_400ab6

block_400a48:                                     ; preds = %_ZN12_GLOBAL__N_1L9DIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit
  %1998 = load i64, i64* %RBP
  %1999 = sub i64 %1998, 60
  %2000 = load i64, i64* %PC
  %2001 = add i64 %2000, 3
  store i64 %2001, i64* %PC
  %2002 = inttoptr i64 %1999 to i32*
  %2003 = load i32, i32* %2002
  %2004 = zext i32 %2003 to i64
  store i64 %2004, i64* %RAX, align 8, !tbaa !2424
  %2005 = load i64, i64* %RBP
  %2006 = sub i64 %2005, 4
  %2007 = load i32, i32* %EAX
  %2008 = zext i32 %2007 to i64
  %2009 = load i64, i64* %PC
  %2010 = add i64 %2009, 3
  store i64 %2010, i64* %PC
  %2011 = inttoptr i64 %2006 to i32*
  store i32 %2007, i32* %2011
  %2012 = load i64, i64* %PC
  %2013 = add i64 %2012, 217
  %2014 = load i64, i64* %PC
  %2015 = add i64 %2014, 5
  store i64 %2015, i64* %PC
  %2016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2013, i64* %2016, align 8, !tbaa !2424
  br label %block_400b27

block_400b1c:                                     ; preds = %block_400b11, %block_400b16
  %MEMORY.8 = phi %struct.Memory* [ %MEMORY.7, %block_400b16 ], [ %MEMORY.10, %block_400b11 ]
  %2017 = load i64, i64* %PC
  %2018 = add i64 %2017, 5
  %2019 = load i64, i64* %PC
  %2020 = add i64 %2019, 5
  store i64 %2020, i64* %PC
  %2021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2018, i64* %2021, align 8, !tbaa !2424
  br label %block_400b21

block_4007fb:                                     ; preds = %block_4007e7
  %2022 = load i64, i64* %RBP
  %2023 = sub i64 %2022, 16
  %2024 = load i64, i64* %PC
  %2025 = add i64 %2024, 4
  store i64 %2025, i64* %PC
  %2026 = inttoptr i64 %2023 to i64*
  %2027 = load i64, i64* %2026
  store i64 %2027, i64* %RAX, align 8, !tbaa !2424
  %2028 = load i64, i64* %RAX
  %2029 = add i64 %2028, 4
  %2030 = load i64, i64* %PC
  %2031 = add i64 %2030, 4
  store i64 %2031, i64* %PC
  %2032 = inttoptr i64 %2029 to i8*
  %2033 = load i8, i8* %2032
  %2034 = sext i8 %2033 to i64
  %2035 = and i64 %2034, 4294967295
  store i64 %2035, i64* %RCX, align 8, !tbaa !2424
  %2036 = load i64, i64* %RCX
  %2037 = load i64, i64* %PC
  %2038 = add i64 %2037, 6
  store i64 %2038, i64* %PC
  %2039 = and i64 240, %2036
  %2040 = trunc i64 %2039 to i32
  store i64 %2039, i64* %RCX, align 8, !tbaa !2424
  %2041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2041, align 1, !tbaa !2428
  %2042 = and i32 %2040, 255
  %2043 = call i32 @llvm.ctpop.i32(i32 %2042) #16
  %2044 = trunc i32 %2043 to i8
  %2045 = and i8 %2044, 1
  %2046 = xor i8 %2045, 1
  %2047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2046, i8* %2047, align 1, !tbaa !2442
  %2048 = icmp eq i32 %2040, 0
  %2049 = zext i1 %2048 to i8
  %2050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2049, i8* %2050, align 1, !tbaa !2444
  %2051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2051, align 1, !tbaa !2445
  %2052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2052, align 1, !tbaa !2446
  %2053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2053, align 1, !tbaa !2443
  %2054 = load i32, i32* %ECX
  %2055 = zext i32 %2054 to i64
  %2056 = load i64, i64* %PC
  %2057 = add i64 %2056, 3
  store i64 %2057, i64* %PC
  %2058 = sub i32 %2054, 48
  %2059 = icmp ult i32 %2054, 48
  %2060 = zext i1 %2059 to i8
  %2061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2060, i8* %2061, align 1, !tbaa !2428
  %2062 = and i32 %2058, 255
  %2063 = call i32 @llvm.ctpop.i32(i32 %2062) #16
  %2064 = trunc i32 %2063 to i8
  %2065 = and i8 %2064, 1
  %2066 = xor i8 %2065, 1
  %2067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2066, i8* %2067, align 1, !tbaa !2442
  %2068 = xor i64 48, %2055
  %2069 = trunc i64 %2068 to i32
  %2070 = xor i32 %2069, %2058
  %2071 = lshr i32 %2070, 4
  %2072 = trunc i32 %2071 to i8
  %2073 = and i8 %2072, 1
  %2074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2073, i8* %2074, align 1, !tbaa !2443
  %2075 = icmp eq i32 %2058, 0
  %2076 = zext i1 %2075 to i8
  %2077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2076, i8* %2077, align 1, !tbaa !2444
  %2078 = lshr i32 %2058, 31
  %2079 = trunc i32 %2078 to i8
  %2080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2079, i8* %2080, align 1, !tbaa !2445
  %2081 = lshr i32 %2054, 31
  %2082 = xor i32 %2078, %2081
  %2083 = add nuw nsw i32 %2082, %2081
  %2084 = icmp eq i32 %2083, 2
  %2085 = zext i1 %2084 to i8
  %2086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2085, i8* %2086, align 1, !tbaa !2446
  %2087 = load i64, i64* %PC
  %2088 = add i64 %2087, 18
  %2089 = load i64, i64* %PC
  %2090 = add i64 %2089, 6
  %2091 = load i64, i64* %PC
  %2092 = add i64 %2091, 6
  store i64 %2092, i64* %PC
  %2093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2094 = load i8, i8* %2093, align 1, !tbaa !2444
  %2095 = icmp eq i8 %2094, 0
  %2096 = zext i1 %2095 to i8
  store i8 %2096, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %2097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2098 = select i1 %2095, i64 %2088, i64 %2090
  store i64 %2098, i64* %2097, align 8, !tbaa !2424
  %2099 = load i8, i8* %BRANCH_TAKEN
  %2100 = icmp eq i8 %2099, 1
  br i1 %2100, label %block_40081e, label %block_400812

block_4009a3:                                     ; preds = %block_40099c, %block_400990
  %MEMORY.9 = phi %struct.Memory* [ %MEMORY.12, %block_40099c ], [ %662, %block_400990 ]
  %2101 = load i64, i64* %PC
  %2102 = add i64 %2101, 5
  store i64 %2102, i64* %PC
  store i64 8, i64* %RDX, align 8, !tbaa !2424
  %2103 = load i64, i64* %RBP
  %2104 = sub i64 %2103, 20
  %2105 = load i64, i64* %PC
  %2106 = add i64 %2105, 3
  store i64 %2106, i64* %PC
  %2107 = inttoptr i64 %2104 to i32*
  %2108 = load i32, i32* %2107
  %2109 = zext i32 %2108 to i64
  store i64 %2109, i64* %RDI, align 8, !tbaa !2424
  %2110 = load i64, i64* %RBP
  %2111 = sub i64 %2110, 16
  %2112 = load i64, i64* %PC
  %2113 = add i64 %2112, 4
  store i64 %2113, i64* %PC
  %2114 = inttoptr i64 %2111 to i64*
  %2115 = load i64, i64* %2114
  store i64 %2115, i64* %RAX, align 8, !tbaa !2424
  %2116 = load i64, i64* %RAX
  %2117 = load i64, i64* %PC
  %2118 = add i64 %2117, 4
  store i64 %2118, i64* %PC
  %2119 = add i64 20, %2116
  store i64 %2119, i64* %RAX, align 8, !tbaa !2424
  %2120 = icmp ult i64 %2119, %2116
  %2121 = icmp ult i64 %2119, 20
  %2122 = or i1 %2120, %2121
  %2123 = zext i1 %2122 to i8
  %2124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2123, i8* %2124, align 1, !tbaa !2428
  %2125 = trunc i64 %2119 to i32
  %2126 = and i32 %2125, 255
  %2127 = call i32 @llvm.ctpop.i32(i32 %2126) #16
  %2128 = trunc i32 %2127 to i8
  %2129 = and i8 %2128, 1
  %2130 = xor i8 %2129, 1
  %2131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2130, i8* %2131, align 1, !tbaa !2442
  %2132 = xor i64 20, %2116
  %2133 = xor i64 %2132, %2119
  %2134 = lshr i64 %2133, 4
  %2135 = trunc i64 %2134 to i8
  %2136 = and i8 %2135, 1
  %2137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2136, i8* %2137, align 1, !tbaa !2443
  %2138 = icmp eq i64 %2119, 0
  %2139 = zext i1 %2138 to i8
  %2140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2139, i8* %2140, align 1, !tbaa !2444
  %2141 = lshr i64 %2119, 63
  %2142 = trunc i64 %2141 to i8
  %2143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2142, i8* %2143, align 1, !tbaa !2445
  %2144 = lshr i64 %2116, 63
  %2145 = xor i64 %2141, %2144
  %2146 = add nuw nsw i64 %2145, %2141
  %2147 = icmp eq i64 %2146, 2
  %2148 = zext i1 %2147 to i8
  %2149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2148, i8* %2149, align 1, !tbaa !2446
  %2150 = load i64, i64* %RAX
  %2151 = load i64, i64* %PC
  %2152 = add i64 %2151, 3
  store i64 %2152, i64* %PC
  store i64 %2150, i64* %RSI, align 8, !tbaa !2424
  %2153 = load i64, i64* %PC
  %2154 = sub i64 %2153, 950
  %2155 = load i64, i64* %PC
  %2156 = add i64 %2155, 5
  %2157 = load i64, i64* %PC
  %2158 = add i64 %2157, 5
  store i64 %2158, i64* %PC
  %2159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2160 = load i64, i64* %2159, align 8, !tbaa !2424
  %2161 = add i64 %2160, -8
  %2162 = inttoptr i64 %2161 to i64*
  store i64 %2156, i64* %2162
  store i64 %2161, i64* %2159, align 8, !tbaa !2424
  %2163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2154, i64* %2163, align 8, !tbaa !2424
  %2164 = load i64, i64* %PC
  %2165 = call %struct.Memory* @sub_400600_read_bytes(%struct.State* %0, i64 %2164, %struct.Memory* %MEMORY.9)
  %2166 = load i64, i64* %RBP
  %2167 = sub i64 %2166, 60
  %2168 = load i32, i32* %EAX
  %2169 = zext i32 %2168 to i64
  %2170 = load i64, i64* %PC
  %2171 = add i64 %2170, 3
  store i64 %2171, i64* %PC
  %2172 = inttoptr i64 %2167 to i32*
  store i32 %2168, i32* %2172
  %2173 = load i64, i64* %RBP
  %2174 = sub i64 %2173, 60
  %2175 = load i64, i64* %PC
  %2176 = add i64 %2175, 3
  store i64 %2176, i64* %PC
  %2177 = inttoptr i64 %2174 to i32*
  %2178 = load i32, i32* %2177
  %2179 = zext i32 %2178 to i64
  store i64 %2179, i64* %RAX, align 8, !tbaa !2424
  %2180 = load i64, i64* %RAX
  %2181 = load i64, i64* %PC
  %2182 = add i64 %2181, 3
  store i64 %2182, i64* %PC
  %2183 = trunc i64 %2180 to i32
  %2184 = sub i32 %2183, 3
  %2185 = zext i32 %2184 to i64
  store i64 %2185, i64* %RAX, align 8, !tbaa !2424
  %2186 = icmp ult i32 %2183, 3
  %2187 = zext i1 %2186 to i8
  %2188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2187, i8* %2188, align 1, !tbaa !2428
  %2189 = and i32 %2184, 255
  %2190 = call i32 @llvm.ctpop.i32(i32 %2189) #16
  %2191 = trunc i32 %2190 to i8
  %2192 = and i8 %2191, 1
  %2193 = xor i8 %2192, 1
  %2194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2193, i8* %2194, align 1, !tbaa !2442
  %2195 = xor i64 3, %2180
  %2196 = trunc i64 %2195 to i32
  %2197 = xor i32 %2196, %2184
  %2198 = lshr i32 %2197, 4
  %2199 = trunc i32 %2198 to i8
  %2200 = and i8 %2199, 1
  %2201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2200, i8* %2201, align 1, !tbaa !2443
  %2202 = icmp eq i32 %2184, 0
  %2203 = zext i1 %2202 to i8
  %2204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2203, i8* %2204, align 1, !tbaa !2444
  %2205 = lshr i32 %2184, 31
  %2206 = trunc i32 %2205 to i8
  %2207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2206, i8* %2207, align 1, !tbaa !2445
  %2208 = lshr i32 %2183, 31
  %2209 = xor i32 %2205, %2208
  %2210 = add nuw nsw i32 %2209, %2208
  %2211 = icmp eq i32 %2210, 2
  %2212 = zext i1 %2211 to i8
  %2213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2212, i8* %2213, align 1, !tbaa !2446
  %2214 = load i64, i64* %RBP
  %2215 = sub i64 %2214, 60
  %2216 = load i32, i32* %EAX
  %2217 = zext i32 %2216 to i64
  %2218 = load i64, i64* %PC
  %2219 = add i64 %2218, 3
  store i64 %2219, i64* %PC
  %2220 = inttoptr i64 %2215 to i32*
  store i32 %2216, i32* %2220
  %2221 = load i64, i64* %RBP
  %2222 = sub i64 %2221, 60
  %2223 = load i64, i64* %PC
  %2224 = add i64 %2223, 3
  store i64 %2224, i64* %PC
  %2225 = inttoptr i64 %2222 to i32*
  %2226 = load i32, i32* %2225
  %2227 = zext i32 %2226 to i64
  store i64 %2227, i64* %RAX, align 8, !tbaa !2424
  %2228 = load i64, i64* %RAX
  %2229 = load i64, i64* %PC
  %2230 = add i64 %2229, 3
  store i64 %2230, i64* %PC
  %2231 = and i64 7, %2228
  %2232 = trunc i64 %2231 to i32
  store i64 %2231, i64* %RAX, align 8, !tbaa !2424
  %2233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2233, align 1, !tbaa !2428
  %2234 = and i32 %2232, 255
  %2235 = call i32 @llvm.ctpop.i32(i32 %2234) #16
  %2236 = trunc i32 %2235 to i8
  %2237 = and i8 %2236, 1
  %2238 = xor i8 %2237, 1
  %2239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2238, i8* %2239, align 1, !tbaa !2442
  %2240 = icmp eq i32 %2232, 0
  %2241 = zext i1 %2240 to i8
  %2242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2241, i8* %2242, align 1, !tbaa !2444
  %2243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2243, align 1, !tbaa !2445
  %2244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2244, align 1, !tbaa !2446
  %2245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2245, align 1, !tbaa !2443
  %2246 = load i32, i32* %EAX
  %2247 = zext i32 %2246 to i64
  %2248 = load i64, i64* %PC
  %2249 = add i64 %2248, 3
  store i64 %2249, i64* %PC
  %2250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2250, align 1, !tbaa !2428
  %2251 = and i32 %2246, 255
  %2252 = call i32 @llvm.ctpop.i32(i32 %2251) #16
  %2253 = trunc i32 %2252 to i8
  %2254 = and i8 %2253, 1
  %2255 = xor i8 %2254, 1
  %2256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2255, i8* %2256, align 1, !tbaa !2442
  %2257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2257, align 1, !tbaa !2443
  %2258 = icmp eq i32 %2246, 0
  %2259 = zext i1 %2258 to i8
  %2260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2259, i8* %2260, align 1, !tbaa !2444
  %2261 = lshr i32 %2246, 31
  %2262 = trunc i32 %2261 to i8
  %2263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2262, i8* %2263, align 1, !tbaa !2445
  %2264 = lshr i32 %2246, 31
  %2265 = xor i32 %2261, %2264
  %2266 = add nuw nsw i32 %2265, %2264
  %2267 = icmp eq i32 %2266, 2
  %2268 = zext i1 %2267 to i8
  %2269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2268, i8* %2269, align 1, !tbaa !2446
  %2270 = load i64, i64* %PC
  %2271 = add i64 %2270, 18
  %2272 = load i64, i64* %PC
  %2273 = add i64 %2272, 6
  %2274 = load i64, i64* %PC
  %2275 = add i64 %2274, 6
  store i64 %2275, i64* %PC
  %2276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2277 = load i8, i8* %2276, align 1, !tbaa !2444
  store i8 %2277, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %2278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2279 = icmp ne i8 %2277, 0
  %2280 = select i1 %2279, i64 %2271, i64 %2273
  store i64 %2280, i64* %2278, align 8, !tbaa !2424
  %2281 = load i8, i8* %BRANCH_TAKEN
  %2282 = icmp eq i8 %2281, 1
  %2283 = load i64, i64* %RBP
  br i1 %2282, label %block_4009e2, label %block_4009d6

block_400b16:                                     ; preds = %block_400a9e
  %2284 = load i64, i64* %RBP
  %2285 = sub i64 %2284, 64
  %2286 = load i64, i64* %PC
  %2287 = add i64 %2286, 3
  store i64 %2287, i64* %PC
  %2288 = inttoptr i64 %2285 to i32*
  %2289 = load i32, i32* %2288
  %2290 = zext i32 %2289 to i64
  store i64 %2290, i64* %RAX, align 8, !tbaa !2424
  %2291 = load i64, i64* %RBP
  %2292 = sub i64 %2291, 20
  %2293 = load i32, i32* %EAX
  %2294 = zext i32 %2293 to i64
  %2295 = load i64, i64* %PC
  %2296 = add i64 %2295, 3
  store i64 %2296, i64* %PC
  %2297 = inttoptr i64 %2292 to i32*
  store i32 %2293, i32* %2297
  br label %block_400b1c

block_4007a8:                                     ; preds = %block_400789
  %2298 = sub i64 %3030, 4
  %2299 = load i64, i64* %PC
  %2300 = add i64 %2299, 7
  store i64 %2300, i64* %PC
  %2301 = inttoptr i64 %2298 to i32*
  store i32 -4, i32* %2301
  %2302 = load i64, i64* %PC
  %2303 = add i64 %2302, 888
  %2304 = load i64, i64* %PC
  %2305 = add i64 %2304, 5
  store i64 %2305, i64* %PC
  %2306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2303, i64* %2306, align 8, !tbaa !2424
  br label %block_400b27

block_400812:                                     ; preds = %block_4007fb
  %2307 = load i64, i64* %RBP
  %2308 = sub i64 %2307, 20
  %2309 = load i64, i64* %PC
  %2310 = add i64 %2309, 7
  store i64 %2310, i64* %PC
  %2311 = inttoptr i64 %2308 to i32*
  store i32 -4, i32* %2311
  %2312 = load i64, i64* %PC
  %2313 = add i64 %2312, 17
  %2314 = load i64, i64* %PC
  %2315 = add i64 %2314, 5
  store i64 %2315, i64* %PC
  %2316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2313, i64* %2316, align 8, !tbaa !2424
  %2317 = load i64, i64* %RBP
  %2318 = sub i64 %2317, 16
  %2319 = load i64, i64* %PC
  %2320 = add i64 %2319, 4
  store i64 %2320, i64* %PC
  %2321 = inttoptr i64 %2318 to i64*
  %2322 = load i64, i64* %2321
  store i64 %2322, i64* %RAX, align 8, !tbaa !2424
  %2323 = load i64, i64* %RAX
  %2324 = add i64 %2323, 5
  %2325 = load i64, i64* %PC
  %2326 = add i64 %2325, 4
  store i64 %2326, i64* %PC
  %2327 = inttoptr i64 %2324 to i8*
  %2328 = load i8, i8* %2327
  %2329 = sext i8 %2328 to i64
  %2330 = and i64 %2329, 4294967295
  store i64 %2330, i64* %RCX, align 8, !tbaa !2424
  %2331 = load i64, i64* %RCX
  %2332 = load i64, i64* %PC
  %2333 = add i64 %2332, 3
  store i64 %2333, i64* %PC
  %2334 = and i64 15, %2331
  %2335 = trunc i64 %2334 to i32
  store i64 %2334, i64* %RCX, align 8, !tbaa !2424
  %2336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2336, align 1, !tbaa !2428
  %2337 = and i32 %2335, 255
  %2338 = call i32 @llvm.ctpop.i32(i32 %2337) #16
  %2339 = trunc i32 %2338 to i8
  %2340 = and i8 %2339, 1
  %2341 = xor i8 %2340, 1
  %2342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2341, i8* %2342, align 1, !tbaa !2442
  %2343 = icmp eq i32 %2335, 0
  %2344 = zext i1 %2343 to i8
  %2345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2344, i8* %2345, align 1, !tbaa !2444
  %2346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2346, align 1, !tbaa !2445
  %2347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2347, align 1, !tbaa !2446
  %2348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2348, align 1, !tbaa !2443
  %2349 = load i8, i8* %CL
  %2350 = zext i8 %2349 to i64
  %2351 = load i64, i64* %PC
  %2352 = add i64 %2351, 2
  store i64 %2352, i64* %PC
  store i8 %2349, i8* %DL, align 1, !tbaa !2447
  %2353 = load i64, i64* %RBP
  %2354 = sub i64 %2353, 33
  %2355 = load i8, i8* %DL
  %2356 = zext i8 %2355 to i64
  %2357 = load i64, i64* %PC
  %2358 = add i64 %2357, 3
  store i64 %2358, i64* %PC
  %2359 = inttoptr i64 %2354 to i8*
  store i8 %2355, i8* %2359
  %2360 = load i64, i64* %RBP
  %2361 = sub i64 %2360, 16
  %2362 = load i64, i64* %PC
  %2363 = add i64 %2362, 4
  store i64 %2363, i64* %PC
  %2364 = inttoptr i64 %2361 to i64*
  %2365 = load i64, i64* %2364
  store i64 %2365, i64* %RAX, align 8, !tbaa !2424
  %2366 = load i64, i64* %RAX
  %2367 = add i64 %2366, 5
  %2368 = load i64, i64* %PC
  %2369 = add i64 %2368, 4
  store i64 %2369, i64* %PC
  %2370 = inttoptr i64 %2367 to i8*
  %2371 = load i8, i8* %2370
  %2372 = sext i8 %2371 to i64
  %2373 = and i64 %2372, 4294967295
  store i64 %2373, i64* %RCX, align 8, !tbaa !2424
  %2374 = load i64, i64* %RCX
  %2375 = load i64, i64* %PC
  %2376 = add i64 %2375, 6
  store i64 %2376, i64* %PC
  %2377 = and i64 240, %2374
  %2378 = trunc i64 %2377 to i32
  store i64 %2377, i64* %RCX, align 8, !tbaa !2424
  %2379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2379, align 1, !tbaa !2428
  %2380 = and i32 %2378, 255
  %2381 = call i32 @llvm.ctpop.i32(i32 %2380) #16
  %2382 = trunc i32 %2381 to i8
  %2383 = and i8 %2382, 1
  %2384 = xor i8 %2383, 1
  %2385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2384, i8* %2385, align 1, !tbaa !2442
  %2386 = icmp eq i32 %2378, 0
  %2387 = zext i1 %2386 to i8
  %2388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2387, i8* %2388, align 1, !tbaa !2444
  %2389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2389, align 1, !tbaa !2445
  %2390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2390, align 1, !tbaa !2446
  %2391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2391, align 1, !tbaa !2443
  %2392 = load i8, i8* %CL
  %2393 = zext i8 %2392 to i64
  %2394 = load i64, i64* %PC
  %2395 = add i64 %2394, 2
  store i64 %2395, i64* %PC
  store i8 %2392, i8* %DL, align 1, !tbaa !2447
  %2396 = load i64, i64* %RBP
  %2397 = sub i64 %2396, 34
  %2398 = load i8, i8* %DL
  %2399 = zext i8 %2398 to i64
  %2400 = load i64, i64* %PC
  %2401 = add i64 %2400, 3
  store i64 %2401, i64* %PC
  %2402 = inttoptr i64 %2397 to i8*
  store i8 %2398, i8* %2402
  %2403 = load i64, i64* %RBP
  %2404 = sub i64 %2403, 33
  %2405 = load i64, i64* %PC
  %2406 = add i64 %2405, 4
  store i64 %2406, i64* %PC
  %2407 = inttoptr i64 %2404 to i8*
  %2408 = load i8, i8* %2407
  %2409 = zext i8 %2408 to i64
  store i64 %2409, i64* %RCX, align 8, !tbaa !2424
  %2410 = load i32, i32* %ECX
  %2411 = zext i32 %2410 to i64
  %2412 = load i64, i64* %PC
  %2413 = add i64 %2412, 3
  store i64 %2413, i64* %PC
  %2414 = sub i32 %2410, 3
  %2415 = icmp ult i32 %2410, 3
  %2416 = zext i1 %2415 to i8
  %2417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2416, i8* %2417, align 1, !tbaa !2428
  %2418 = and i32 %2414, 255
  %2419 = call i32 @llvm.ctpop.i32(i32 %2418) #16
  %2420 = trunc i32 %2419 to i8
  %2421 = and i8 %2420, 1
  %2422 = xor i8 %2421, 1
  %2423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2422, i8* %2423, align 1, !tbaa !2442
  %2424 = xor i64 3, %2411
  %2425 = trunc i64 %2424 to i32
  %2426 = xor i32 %2425, %2414
  %2427 = lshr i32 %2426, 4
  %2428 = trunc i32 %2427 to i8
  %2429 = and i8 %2428, 1
  %2430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2429, i8* %2430, align 1, !tbaa !2443
  %2431 = icmp eq i32 %2414, 0
  %2432 = zext i1 %2431 to i8
  %2433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2432, i8* %2433, align 1, !tbaa !2444
  %2434 = lshr i32 %2414, 31
  %2435 = trunc i32 %2434 to i8
  %2436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2435, i8* %2436, align 1, !tbaa !2445
  %2437 = lshr i32 %2410, 31
  %2438 = xor i32 %2434, %2437
  %2439 = add nuw nsw i32 %2438, %2437
  %2440 = icmp eq i32 %2439, 2
  %2441 = zext i1 %2440 to i8
  %2442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2441, i8* %2442, align 1, !tbaa !2446
  %2443 = load i64, i64* %PC
  %2444 = add i64 %2443, 33
  %2445 = load i64, i64* %PC
  %2446 = add i64 %2445, 6
  %2447 = load i64, i64* %PC
  %2448 = add i64 %2447, 6
  store i64 %2448, i64* %PC
  %2449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2450 = load i8, i8* %2449, align 1, !tbaa !2444
  %2451 = icmp eq i8 %2450, 0
  %2452 = zext i1 %2451 to i8
  store i8 %2452, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %2453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2454 = select i1 %2451, i64 %2444, i64 %2446
  store i64 %2454, i64* %2453, align 8, !tbaa !2424
  %2455 = load i8, i8* %BRANCH_TAKEN
  %2456 = icmp eq i8 %2455, 1
  br i1 %2456, label %block_400875, label %block_40085a

block_400b11:                                     ; preds = %block_400b0a, %block_400ab6, %block_400af4
  %MEMORY.10 = phi %struct.Memory* [ %1260, %block_400ab6 ], [ %266, %block_400af4 ], [ %266, %block_400b0a ]
  %2457 = load i64, i64* %PC
  %2458 = add i64 %2457, 11
  %2459 = load i64, i64* %PC
  %2460 = add i64 %2459, 5
  store i64 %2460, i64* %PC
  %2461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2458, i64* %2461, align 8, !tbaa !2424
  br label %block_400b1c

block_40087e:                                     ; preds = %block_400867, %block_400875
  %MEMORY.11 = phi %struct.Memory* [ %MEMORY.0, %block_400875 ], [ %1474, %block_400867 ]
  %2462 = load i64, i64* %RBP
  %2463 = sub i64 %2462, 16
  %2464 = load i64, i64* %PC
  %2465 = add i64 %2464, 4
  store i64 %2465, i64* %PC
  %2466 = inttoptr i64 %2463 to i64*
  %2467 = load i64, i64* %2466
  store i64 %2467, i64* %RAX, align 8, !tbaa !2424
  %2468 = load i64, i64* %RAX
  %2469 = add i64 %2468, 6
  %2470 = load i64, i64* %PC
  %2471 = add i64 %2470, 4
  store i64 %2471, i64* %PC
  %2472 = inttoptr i64 %2469 to i8*
  %2473 = load i8, i8* %2472
  %2474 = zext i8 %2473 to i64
  store i64 %2474, i64* %RDI, align 8, !tbaa !2424
  %2475 = load i64, i64* %PC
  %2476 = sub i64 %2475, 758
  %2477 = load i64, i64* %PC
  %2478 = add i64 %2477, 5
  %2479 = load i64, i64* %PC
  %2480 = add i64 %2479, 5
  store i64 %2480, i64* %PC
  %2481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2482 = load i64, i64* %2481, align 8, !tbaa !2424
  %2483 = add i64 %2482, -8
  %2484 = inttoptr i64 %2483 to i64*
  store i64 %2478, i64* %2484
  store i64 %2483, i64* %2481, align 8, !tbaa !2424
  %2485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2476, i64* %2485, align 8, !tbaa !2424
  %2486 = load i64, i64* %PC
  %2487 = call %struct.Memory* @sub_400590_to_byte(%struct.State* %0, i64 %2486, %struct.Memory* %MEMORY.11)
  %2488 = load i8, i8* %AL
  %2489 = zext i8 %2488 to i64
  %2490 = load i64, i64* %PC
  %2491 = add i64 %2490, 2
  store i64 %2491, i64* %PC
  store i8 %2488, i8* %CL, align 1, !tbaa !2447
  %2492 = load i64, i64* %RBP
  %2493 = sub i64 %2492, 35
  %2494 = load i8, i8* %CL
  %2495 = zext i8 %2494 to i64
  %2496 = load i64, i64* %PC
  %2497 = add i64 %2496, 3
  store i64 %2497, i64* %PC
  %2498 = inttoptr i64 %2493 to i8*
  store i8 %2494, i8* %2498
  %2499 = load i64, i64* %RBP
  %2500 = sub i64 %2499, 16
  %2501 = load i64, i64* %PC
  %2502 = add i64 %2501, 4
  store i64 %2502, i64* %PC
  %2503 = inttoptr i64 %2500 to i64*
  %2504 = load i64, i64* %2503
  store i64 %2504, i64* %RDX, align 8, !tbaa !2424
  %2505 = load i64, i64* %RDX
  %2506 = add i64 %2505, 7
  %2507 = load i64, i64* %PC
  %2508 = add i64 %2507, 4
  store i64 %2508, i64* %PC
  %2509 = inttoptr i64 %2506 to i8*
  %2510 = load i8, i8* %2509
  %2511 = zext i8 %2510 to i64
  store i64 %2511, i64* %RDI, align 8, !tbaa !2424
  %2512 = load i64, i64* %PC
  %2513 = sub i64 %2512, 776
  %2514 = load i64, i64* %PC
  %2515 = add i64 %2514, 5
  %2516 = load i64, i64* %PC
  %2517 = add i64 %2516, 5
  store i64 %2517, i64* %PC
  %2518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2519 = load i64, i64* %2518, align 8, !tbaa !2424
  %2520 = add i64 %2519, -8
  %2521 = inttoptr i64 %2520 to i64*
  store i64 %2515, i64* %2521
  store i64 %2520, i64* %2518, align 8, !tbaa !2424
  %2522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2513, i64* %2522, align 8, !tbaa !2424
  %2523 = load i64, i64* %PC
  %2524 = call %struct.Memory* @sub_400590_to_byte(%struct.State* %0, i64 %2523, %struct.Memory* %2487)
  %2525 = load i64, i64* %RBP
  %2526 = sub i64 %2525, 35
  %2527 = load i64, i64* %PC
  %2528 = add i64 %2527, 4
  store i64 %2528, i64* %PC
  %2529 = inttoptr i64 %2526 to i8*
  %2530 = load i8, i8* %2529
  %2531 = zext i8 %2530 to i64
  store i64 %2531, i64* %RDI, align 8, !tbaa !2424
  %2532 = load i64, i64* %RDI
  %2533 = load i32, i32* %EAX
  %2534 = zext i32 %2533 to i64
  %2535 = load i64, i64* %PC
  %2536 = add i64 %2535, 2
  store i64 %2536, i64* %PC
  %2537 = or i64 %2534, %2532
  %2538 = trunc i64 %2537 to i32
  %2539 = and i64 %2537, 4294967295
  store i64 %2539, i64* %RDI, align 8, !tbaa !2424
  %2540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2540, align 1, !tbaa !2428
  %2541 = and i32 %2538, 255
  %2542 = call i32 @llvm.ctpop.i32(i32 %2541) #16
  %2543 = trunc i32 %2542 to i8
  %2544 = and i8 %2543, 1
  %2545 = xor i8 %2544, 1
  %2546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2545, i8* %2546, align 1, !tbaa !2442
  %2547 = icmp eq i32 %2538, 0
  %2548 = zext i1 %2547 to i8
  %2549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2548, i8* %2549, align 1, !tbaa !2444
  %2550 = lshr i32 %2538, 31
  %2551 = trunc i32 %2550 to i8
  %2552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2551, i8* %2552, align 1, !tbaa !2445
  %2553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2553, align 1, !tbaa !2446
  %2554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2554, align 1, !tbaa !2443
  %2555 = load i8, i8* %DIL
  %2556 = zext i8 %2555 to i64
  %2557 = load i64, i64* %PC
  %2558 = add i64 %2557, 3
  store i64 %2558, i64* %PC
  store i8 %2555, i8* %CL, align 1, !tbaa !2447
  %2559 = load i64, i64* %RBP
  %2560 = sub i64 %2559, 35
  %2561 = load i8, i8* %CL
  %2562 = zext i8 %2561 to i64
  %2563 = load i64, i64* %PC
  %2564 = add i64 %2563, 3
  store i64 %2564, i64* %PC
  %2565 = inttoptr i64 %2560 to i8*
  store i8 %2561, i8* %2565
  %2566 = load i64, i64* %RBP
  %2567 = sub i64 %2566, 35
  %2568 = load i64, i64* %PC
  %2569 = add i64 %2568, 4
  store i64 %2569, i64* %PC
  %2570 = inttoptr i64 %2567 to i8*
  %2571 = load i8, i8* %2570
  %2572 = zext i8 %2571 to i64
  store i64 %2572, i64* %RAX, align 8, !tbaa !2424
  %2573 = load i64, i64* %RAX
  %2574 = load i64, i64* %PC
  %2575 = add i64 %2574, 3
  store i64 %2575, i64* %PC
  %2576 = xor i64 -1, %2573
  %2577 = trunc i64 %2576 to i32
  %2578 = and i64 %2576, 4294967295
  store i64 %2578, i64* %RAX, align 8, !tbaa !2424
  %2579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2579, align 1, !tbaa !2428
  %2580 = and i32 %2577, 255
  %2581 = call i32 @llvm.ctpop.i32(i32 %2580) #16
  %2582 = trunc i32 %2581 to i8
  %2583 = and i8 %2582, 1
  %2584 = xor i8 %2583, 1
  %2585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2584, i8* %2585, align 1, !tbaa !2442
  %2586 = icmp eq i32 %2577, 0
  %2587 = zext i1 %2586 to i8
  %2588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2587, i8* %2588, align 1, !tbaa !2444
  %2589 = lshr i32 %2577, 31
  %2590 = trunc i32 %2589 to i8
  %2591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2590, i8* %2591, align 1, !tbaa !2445
  %2592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2592, align 1, !tbaa !2446
  %2593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2593, align 1, !tbaa !2443
  %2594 = load i32, i32* %EAX
  %2595 = zext i32 %2594 to i64
  %2596 = load i64, i64* %PC
  %2597 = add i64 %2596, 3
  store i64 %2597, i64* %PC
  %2598 = sub i32 %2594, 70
  %2599 = icmp ult i32 %2594, 70
  %2600 = zext i1 %2599 to i8
  %2601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2600, i8* %2601, align 1, !tbaa !2428
  %2602 = and i32 %2598, 255
  %2603 = call i32 @llvm.ctpop.i32(i32 %2602) #16
  %2604 = trunc i32 %2603 to i8
  %2605 = and i8 %2604, 1
  %2606 = xor i8 %2605, 1
  %2607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2606, i8* %2607, align 1, !tbaa !2442
  %2608 = xor i64 70, %2595
  %2609 = trunc i64 %2608 to i32
  %2610 = xor i32 %2609, %2598
  %2611 = lshr i32 %2610, 4
  %2612 = trunc i32 %2611 to i8
  %2613 = and i8 %2612, 1
  %2614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2613, i8* %2614, align 1, !tbaa !2443
  %2615 = icmp eq i32 %2598, 0
  %2616 = zext i1 %2615 to i8
  %2617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2616, i8* %2617, align 1, !tbaa !2444
  %2618 = lshr i32 %2598, 31
  %2619 = trunc i32 %2618 to i8
  %2620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2619, i8* %2620, align 1, !tbaa !2445
  %2621 = lshr i32 %2594, 31
  %2622 = xor i32 %2618, %2621
  %2623 = add nuw nsw i32 %2622, %2621
  %2624 = icmp eq i32 %2623, 2
  %2625 = zext i1 %2624 to i8
  %2626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2625, i8* %2626, align 1, !tbaa !2446
  %2627 = load i64, i64* %PC
  %2628 = add i64 %2627, 20
  %2629 = load i64, i64* %PC
  %2630 = add i64 %2629, 6
  %2631 = load i64, i64* %PC
  %2632 = add i64 %2631, 6
  store i64 %2632, i64* %PC
  %2633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2634 = load i8, i8* %2633, align 1, !tbaa !2444
  %2635 = icmp eq i8 %2634, 0
  %2636 = zext i1 %2635 to i8
  store i8 %2636, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %2637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2638 = select i1 %2635, i64 %2628, i64 %2630
  store i64 %2638, i64* %2637, align 8, !tbaa !2424
  %2639 = load i8, i8* %BRANCH_TAKEN
  %2640 = icmp eq i8 %2639, 1
  %2641 = load i64, i64* %RBP
  %2642 = sub i64 %2641, 20
  %2643 = load i64, i64* %PC
  %2644 = add i64 %2643, 3
  store i64 %2644, i64* %PC
  br i1 %2640, label %block_4008c7, label %block_4008b9

block_4008e8:                                     ; preds = %block_4008d2
  %2645 = load i64, i64* %RDI
  %2646 = load i32, i32* %EDI
  %2647 = zext i32 %2646 to i64
  %2648 = load i64, i64* %PC
  %2649 = add i64 %2648, 2
  store i64 %2649, i64* %PC
  %2650 = xor i64 %2647, %2645
  %2651 = trunc i64 %2650 to i32
  %2652 = and i64 %2650, 4294967295
  store i64 %2652, i64* %RDI, align 8, !tbaa !2424
  %2653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2653, align 1, !tbaa !2428
  %2654 = and i32 %2651, 255
  %2655 = call i32 @llvm.ctpop.i32(i32 %2654) #16
  %2656 = trunc i32 %2655 to i8
  %2657 = and i8 %2656, 1
  %2658 = xor i8 %2657, 1
  %2659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2658, i8* %2659, align 1, !tbaa !2442
  %2660 = icmp eq i32 %2651, 0
  %2661 = zext i1 %2660 to i8
  %2662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2661, i8* %2662, align 1, !tbaa !2444
  %2663 = lshr i32 %2651, 31
  %2664 = trunc i32 %2663 to i8
  %2665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2664, i8* %2665, align 1, !tbaa !2445
  %2666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2666, align 1, !tbaa !2446
  %2667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2667, align 1, !tbaa !2443
  %2668 = load i64, i64* %PC
  %2669 = add i64 %2668, 5
  store i64 %2669, i64* %PC
  store i64 4, i64* %RDX, align 8, !tbaa !2424
  %2670 = load i64, i64* %RBP
  %2671 = sub i64 %2670, 16
  %2672 = load i64, i64* %PC
  %2673 = add i64 %2672, 4
  store i64 %2673, i64* %PC
  %2674 = inttoptr i64 %2671 to i64*
  %2675 = load i64, i64* %2674
  store i64 %2675, i64* %RAX, align 8, !tbaa !2424
  %2676 = load i64, i64* %RAX
  %2677 = load i64, i64* %PC
  %2678 = add i64 %2677, 4
  store i64 %2678, i64* %PC
  %2679 = add i64 8, %2676
  store i64 %2679, i64* %RAX, align 8, !tbaa !2424
  %2680 = icmp ult i64 %2679, %2676
  %2681 = icmp ult i64 %2679, 8
  %2682 = or i1 %2680, %2681
  %2683 = zext i1 %2682 to i8
  %2684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2683, i8* %2684, align 1, !tbaa !2428
  %2685 = trunc i64 %2679 to i32
  %2686 = and i32 %2685, 255
  %2687 = call i32 @llvm.ctpop.i32(i32 %2686) #16
  %2688 = trunc i32 %2687 to i8
  %2689 = and i8 %2688, 1
  %2690 = xor i8 %2689, 1
  %2691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2690, i8* %2691, align 1, !tbaa !2442
  %2692 = xor i64 8, %2676
  %2693 = xor i64 %2692, %2679
  %2694 = lshr i64 %2693, 4
  %2695 = trunc i64 %2694 to i8
  %2696 = and i8 %2695, 1
  %2697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2696, i8* %2697, align 1, !tbaa !2443
  %2698 = icmp eq i64 %2679, 0
  %2699 = zext i1 %2698 to i8
  %2700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2699, i8* %2700, align 1, !tbaa !2444
  %2701 = lshr i64 %2679, 63
  %2702 = trunc i64 %2701 to i8
  %2703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2702, i8* %2703, align 1, !tbaa !2445
  %2704 = lshr i64 %2676, 63
  %2705 = xor i64 %2701, %2704
  %2706 = add nuw nsw i64 %2705, %2701
  %2707 = icmp eq i64 %2706, 2
  %2708 = zext i1 %2707 to i8
  %2709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2708, i8* %2709, align 1, !tbaa !2446
  %2710 = load i64, i64* %RAX
  %2711 = load i64, i64* %PC
  %2712 = add i64 %2711, 3
  store i64 %2712, i64* %PC
  store i64 %2710, i64* %RSI, align 8, !tbaa !2424
  %2713 = load i64, i64* %PC
  %2714 = sub i64 %2713, 762
  %2715 = load i64, i64* %PC
  %2716 = add i64 %2715, 5
  %2717 = load i64, i64* %PC
  %2718 = add i64 %2717, 5
  store i64 %2718, i64* %PC
  %2719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2720 = load i64, i64* %2719, align 8, !tbaa !2424
  %2721 = add i64 %2720, -8
  %2722 = inttoptr i64 %2721 to i64*
  store i64 %2716, i64* %2722
  store i64 %2721, i64* %2719, align 8, !tbaa !2424
  %2723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2714, i64* %2723, align 8, !tbaa !2424
  %2724 = load i64, i64* %PC
  %2725 = call %struct.Memory* @sub_400600_read_bytes(%struct.State* %0, i64 %2724, %struct.Memory* %MEMORY.1)
  %2726 = load i16, i16* %AX
  %2727 = zext i16 %2726 to i64
  %2728 = load i64, i64* %PC
  %2729 = add i64 %2728, 3
  store i64 %2729, i64* %PC
  store i16 %2726, i16* %CX, align 2, !tbaa !2449
  %2730 = load i64, i64* %RBP
  %2731 = sub i64 %2730, 38
  %2732 = load i16, i16* %CX
  %2733 = zext i16 %2732 to i64
  %2734 = load i64, i64* %PC
  %2735 = add i64 %2734, 4
  store i64 %2735, i64* %PC
  %2736 = inttoptr i64 %2731 to i16*
  store i16 %2732, i16* %2736
  %2737 = load i64, i64* %RBP
  %2738 = sub i64 %2737, 38
  %2739 = load i64, i64* %PC
  %2740 = add i64 %2739, 4
  store i64 %2740, i64* %PC
  %2741 = inttoptr i64 %2738 to i16*
  %2742 = load i16, i16* %2741
  %2743 = zext i16 %2742 to i64
  store i64 %2743, i64* %RAX, align 8, !tbaa !2424
  %2744 = load i64, i64* %RAX
  %2745 = load i64, i64* %PC
  %2746 = add i64 %2745, 5
  store i64 %2746, i64* %PC
  %2747 = or i64 21845, %2744
  %2748 = trunc i64 %2747 to i32
  %2749 = and i64 %2747, 4294967295
  store i64 %2749, i64* %RAX, align 8, !tbaa !2424
  %2750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2750, align 1, !tbaa !2428
  %2751 = and i32 %2748, 255
  %2752 = call i32 @llvm.ctpop.i32(i32 %2751) #16
  %2753 = trunc i32 %2752 to i8
  %2754 = and i8 %2753, 1
  %2755 = xor i8 %2754, 1
  %2756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2755, i8* %2756, align 1, !tbaa !2442
  %2757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2757, align 1, !tbaa !2444
  %2758 = lshr i32 %2748, 31
  %2759 = trunc i32 %2758 to i8
  %2760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2759, i8* %2760, align 1, !tbaa !2445
  %2761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2761, align 1, !tbaa !2446
  %2762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2762, align 1, !tbaa !2443
  %2763 = load i32, i32* %EAX
  %2764 = zext i32 %2763 to i64
  %2765 = load i64, i64* %PC
  %2766 = add i64 %2765, 5
  store i64 %2766, i64* %PC
  %2767 = sub i32 %2763, 56663
  %2768 = icmp ult i32 %2763, 56663
  %2769 = zext i1 %2768 to i8
  %2770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2769, i8* %2770, align 1, !tbaa !2428
  %2771 = and i32 %2767, 255
  %2772 = call i32 @llvm.ctpop.i32(i32 %2771) #16
  %2773 = trunc i32 %2772 to i8
  %2774 = and i8 %2773, 1
  %2775 = xor i8 %2774, 1
  %2776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2775, i8* %2776, align 1, !tbaa !2442
  %2777 = xor i64 56663, %2764
  %2778 = trunc i64 %2777 to i32
  %2779 = xor i32 %2778, %2767
  %2780 = lshr i32 %2779, 4
  %2781 = trunc i32 %2780 to i8
  %2782 = and i8 %2781, 1
  %2783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2782, i8* %2783, align 1, !tbaa !2443
  %2784 = icmp eq i32 %2767, 0
  %2785 = zext i1 %2784 to i8
  %2786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2785, i8* %2786, align 1, !tbaa !2444
  %2787 = lshr i32 %2767, 31
  %2788 = trunc i32 %2787 to i8
  %2789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2788, i8* %2789, align 1, !tbaa !2445
  %2790 = lshr i32 %2763, 31
  %2791 = xor i32 %2787, %2790
  %2792 = add nuw nsw i32 %2791, %2790
  %2793 = icmp eq i32 %2792, 2
  %2794 = zext i1 %2793 to i8
  %2795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2794, i8* %2795, align 1, !tbaa !2446
  %2796 = load i64, i64* %PC
  %2797 = add i64 %2796, 38
  %2798 = load i64, i64* %PC
  %2799 = add i64 %2798, 6
  %2800 = load i64, i64* %PC
  %2801 = add i64 %2800, 6
  store i64 %2801, i64* %PC
  %2802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2803 = load i8, i8* %2802, align 1, !tbaa !2444
  %2804 = icmp eq i8 %2803, 0
  %2805 = zext i1 %2804 to i8
  store i8 %2805, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %2806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2807 = select i1 %2804, i64 %2797, i64 %2799
  store i64 %2807, i64* %2806, align 8, !tbaa !2424
  %2808 = load i8, i8* %BRANCH_TAKEN
  %2809 = icmp eq i8 %2808, 1
  br i1 %2809, label %block_40093a, label %block_40091a

block_400a90:                                     ; preds = %block_400a7f
  %2810 = load i64, i64* %RBP
  %2811 = sub i64 %2810, 64
  %2812 = load i64, i64* %PC
  %2813 = add i64 %2812, 3
  store i64 %2813, i64* %PC
  %2814 = inttoptr i64 %2811 to i32*
  %2815 = load i32, i32* %2814
  %2816 = zext i32 %2815 to i64
  store i64 %2816, i64* %RAX, align 8, !tbaa !2424
  %2817 = load i64, i64* %RAX
  %2818 = load i64, i64* %RBP
  %2819 = sub i64 %2818, 20
  %2820 = load i64, i64* %PC
  %2821 = add i64 %2820, 3
  store i64 %2821, i64* %PC
  %2822 = trunc i64 %2817 to i32
  %2823 = inttoptr i64 %2819 to i32*
  %2824 = load i32, i32* %2823
  %2825 = xor i32 %2824, %2822
  %2826 = zext i32 %2825 to i64
  store i64 %2826, i64* %RAX, align 8, !tbaa !2424
  %2827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2827, align 1, !tbaa !2428
  %2828 = and i32 %2825, 255
  %2829 = call i32 @llvm.ctpop.i32(i32 %2828) #16
  %2830 = trunc i32 %2829 to i8
  %2831 = and i8 %2830, 1
  %2832 = xor i8 %2831, 1
  %2833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2832, i8* %2833, align 1, !tbaa !2442
  %2834 = icmp eq i32 %2825, 0
  %2835 = zext i1 %2834 to i8
  %2836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2835, i8* %2836, align 1, !tbaa !2444
  %2837 = lshr i32 %2825, 31
  %2838 = trunc i32 %2837 to i8
  %2839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2838, i8* %2839, align 1, !tbaa !2445
  %2840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2840, align 1, !tbaa !2446
  %2841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2841, align 1, !tbaa !2443
  %2842 = load i64, i64* %RBP
  %2843 = sub i64 %2842, 20
  %2844 = load i32, i32* %EAX
  %2845 = zext i32 %2844 to i64
  %2846 = load i64, i64* %PC
  %2847 = add i64 %2846, 3
  store i64 %2847, i64* %PC
  %2848 = inttoptr i64 %2843 to i32*
  store i32 %2844, i32* %2848
  %2849 = load i64, i64* %PC
  %2850 = add i64 %2849, 136
  %2851 = load i64, i64* %PC
  %2852 = add i64 %2851, 5
  store i64 %2852, i64* %PC
  %2853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2850, i64* %2853, align 8, !tbaa !2424
  br label %block_400b21

block_400b0a:                                     ; preds = %block_400af4
  %2854 = load i64, i64* %RBP
  %2855 = sub i64 %2854, 20
  %2856 = load i64, i64* %PC
  %2857 = add i64 %2856, 7
  store i64 %2857, i64* %PC
  %2858 = inttoptr i64 %2855 to i32*
  store i32 -32, i32* %2858
  br label %block_400b11

block_4008c7:                                     ; preds = %block_40087e
  %2859 = inttoptr i64 %2642 to i32*
  %2860 = load i32, i32* %2859
  %2861 = zext i32 %2860 to i64
  store i64 %2861, i64* %RCX, align 8, !tbaa !2424
  %2862 = load i64, i64* %RBP
  %2863 = sub i64 %2862, 20
  %2864 = load i64, i64* %PC
  %2865 = add i64 %2864, 3
  store i64 %2865, i64* %PC
  %2866 = inttoptr i64 %2863 to i32*
  %2867 = load i32, i32* %2866
  %2868 = zext i32 %2867 to i64
  store i64 %2868, i64* %RAX, align 8, !tbaa !2424
  %2869 = load i64, i64* %RAX
  %2870 = load i8, i8* %CL
  %2871 = zext i8 %2870 to i64
  %2872 = load i64, i64* %PC
  %2873 = add i64 %2872, 2
  store i64 %2873, i64* %PC
  %2874 = trunc i64 %2871 to i5
  switch i5 %2874, label %2881 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
    i5 1, label %2875
  ]

; <label>:2875:                                   ; preds = %block_4008c7
  %2876 = trunc i64 %2869 to i32
  %2877 = shl i32 %2876, 1
  %2878 = icmp slt i32 %2876, 0
  %2879 = icmp slt i32 %2877, 0
  %2880 = xor i1 %2878, %2879
  br label %2890

; <label>:2881:                                   ; preds = %block_4008c7
  %2882 = and i64 %2871, 31
  %2883 = add nuw nsw i64 %2882, 4294967295
  %2884 = and i64 %2869, 4294967295
  %2885 = and i64 %2883, 4294967295
  %2886 = shl i64 %2884, %2885
  %2887 = trunc i64 %2886 to i32
  %2888 = icmp slt i32 %2887, 0
  %2889 = shl i32 %2887, 1
  br label %2890

; <label>:2890:                                   ; preds = %2881, %2875
  %2891 = phi i1 [ %2878, %2875 ], [ %2888, %2881 ]
  %2892 = phi i1 [ %2880, %2875 ], [ false, %2881 ]
  %2893 = phi i32 [ %2877, %2875 ], [ %2889, %2881 ]
  %2894 = zext i32 %2893 to i64
  store i64 %2894, i64* %RAX, align 8, !tbaa !2424
  %2895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2896 = zext i1 %2891 to i8
  store i8 %2896, i8* %2895, align 1, !tbaa !2447
  %2897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2898 = and i32 %2893, 254
  %2899 = call i32 @llvm.ctpop.i32(i32 %2898) #16
  %2900 = trunc i32 %2899 to i8
  %2901 = and i8 %2900, 1
  %2902 = xor i8 %2901, 1
  store i8 %2902, i8* %2897, align 1, !tbaa !2447
  %2903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2903, align 1, !tbaa !2447
  %2904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2905 = icmp eq i32 %2893, 0
  %2906 = zext i1 %2905 to i8
  store i8 %2906, i8* %2904, align 1, !tbaa !2447
  %2907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2908 = lshr i32 %2893, 31
  %2909 = trunc i32 %2908 to i8
  store i8 %2909, i8* %2907, align 1, !tbaa !2447
  %2910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2911 = zext i1 %2892 to i8
  store i8 %2911, i8* %2910, align 1, !tbaa !2447
  br label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit

_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit: ; preds = %block_4008c7, %2890
  %2912 = load i64, i64* %RBP
  %2913 = sub i64 %2912, 20
  %2914 = load i32, i32* %EAX
  %2915 = zext i32 %2914 to i64
  %2916 = load i64, i64* %PC
  %2917 = add i64 %2916, 3
  store i64 %2917, i64* %PC
  %2918 = inttoptr i64 %2913 to i32*
  store i32 %2914, i32* %2918
  br label %block_4008d2

block_400789:                                     ; preds = %block_400767
  %2919 = sub i64 %1904, 16
  %2920 = load i64, i64* %PC
  %2921 = add i64 %2920, 4
  store i64 %2921, i64* %PC
  %2922 = inttoptr i64 %2919 to i64*
  %2923 = load i64, i64* %2922
  store i64 %2923, i64* %RAX, align 8, !tbaa !2424
  %2924 = load i64, i64* %RAX
  %2925 = add i64 %2924, 2
  %2926 = load i64, i64* %PC
  %2927 = add i64 %2926, 4
  store i64 %2927, i64* %PC
  %2928 = inttoptr i64 %2925 to i8*
  %2929 = load i8, i8* %2928
  %2930 = zext i8 %2929 to i64
  store i64 %2930, i64* %RDI, align 8, !tbaa !2424
  %2931 = load i64, i64* %PC
  %2932 = sub i64 %2931, 513
  %2933 = load i64, i64* %PC
  %2934 = add i64 %2933, 5
  %2935 = load i64, i64* %PC
  %2936 = add i64 %2935, 5
  store i64 %2936, i64* %PC
  %2937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2938 = load i64, i64* %2937, align 8, !tbaa !2424
  %2939 = add i64 %2938, -8
  %2940 = inttoptr i64 %2939 to i64*
  store i64 %2934, i64* %2940
  store i64 %2939, i64* %2937, align 8, !tbaa !2424
  %2941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2932, i64* %2941, align 8, !tbaa !2424
  %2942 = load i64, i64* %PC
  %2943 = call %struct.Memory* @sub_400590_to_byte(%struct.State* %0, i64 %2942, %struct.Memory* %1857)
  %2944 = load i64, i64* %RBP
  %2945 = sub i64 %2944, 24
  %2946 = load i32, i32* %EAX
  %2947 = zext i32 %2946 to i64
  %2948 = load i64, i64* %PC
  %2949 = add i64 %2948, 3
  store i64 %2949, i64* %PC
  %2950 = inttoptr i64 %2945 to i32*
  store i32 %2946, i32* %2950
  %2951 = load i64, i64* %RBP
  %2952 = sub i64 %2951, 24
  %2953 = load i64, i64* %PC
  %2954 = add i64 %2953, 3
  store i64 %2954, i64* %PC
  %2955 = inttoptr i64 %2952 to i32*
  %2956 = load i32, i32* %2955
  %2957 = zext i32 %2956 to i64
  store i64 %2957, i64* %RAX, align 8, !tbaa !2424
  %2958 = load i64, i64* %RAX
  %2959 = load i64, i64* %PC
  %2960 = add i64 %2959, 3
  store i64 %2960, i64* %PC
  %2961 = trunc i64 %2958 to i32
  %2962 = shl i32 %2961, 1
  %2963 = icmp slt i32 %2961, 0
  %2964 = icmp slt i32 %2962, 0
  %2965 = xor i1 %2963, %2964
  %2966 = zext i32 %2962 to i64
  store i64 %2966, i64* %RAX, align 8, !tbaa !2424
  %2967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2968 = zext i1 %2963 to i8
  store i8 %2968, i8* %2967, align 1, !tbaa !2447
  %2969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2970 = and i32 %2962, 254
  %2971 = call i32 @llvm.ctpop.i32(i32 %2970) #16
  %2972 = trunc i32 %2971 to i8
  %2973 = and i8 %2972, 1
  %2974 = xor i8 %2973, 1
  store i8 %2974, i8* %2969, align 1, !tbaa !2447
  %2975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2975, align 1, !tbaa !2447
  %2976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2977 = icmp eq i32 %2962, 0
  %2978 = zext i1 %2977 to i8
  store i8 %2978, i8* %2976, align 1, !tbaa !2447
  %2979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2980 = lshr i32 %2962, 31
  %2981 = trunc i32 %2980 to i8
  store i8 %2981, i8* %2979, align 1, !tbaa !2447
  %2982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2983 = zext i1 %2965 to i8
  store i8 %2983, i8* %2982, align 1, !tbaa !2447
  %2984 = load i32, i32* %EAX
  %2985 = zext i32 %2984 to i64
  %2986 = load i64, i64* %PC
  %2987 = add i64 %2986, 3
  store i64 %2987, i64* %PC
  %2988 = sub i32 %2984, 26
  %2989 = icmp ult i32 %2984, 26
  %2990 = zext i1 %2989 to i8
  %2991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2990, i8* %2991, align 1, !tbaa !2428
  %2992 = and i32 %2988, 255
  %2993 = call i32 @llvm.ctpop.i32(i32 %2992) #16
  %2994 = trunc i32 %2993 to i8
  %2995 = and i8 %2994, 1
  %2996 = xor i8 %2995, 1
  %2997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2996, i8* %2997, align 1, !tbaa !2442
  %2998 = xor i64 26, %2985
  %2999 = trunc i64 %2998 to i32
  %3000 = xor i32 %2999, %2988
  %3001 = lshr i32 %3000, 4
  %3002 = trunc i32 %3001 to i8
  %3003 = and i8 %3002, 1
  %3004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3003, i8* %3004, align 1, !tbaa !2443
  %3005 = icmp eq i32 %2988, 0
  %3006 = zext i1 %3005 to i8
  %3007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3006, i8* %3007, align 1, !tbaa !2444
  %3008 = lshr i32 %2988, 31
  %3009 = trunc i32 %3008 to i8
  %3010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3009, i8* %3010, align 1, !tbaa !2445
  %3011 = lshr i32 %2984, 31
  %3012 = xor i32 %3008, %3011
  %3013 = add nuw nsw i32 %3012, %3011
  %3014 = icmp eq i32 %3013, 2
  %3015 = zext i1 %3014 to i8
  %3016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3015, i8* %3016, align 1, !tbaa !2446
  %3017 = load i64, i64* %PC
  %3018 = add i64 %3017, 18
  %3019 = load i64, i64* %PC
  %3020 = add i64 %3019, 6
  %3021 = load i64, i64* %PC
  %3022 = add i64 %3021, 6
  store i64 %3022, i64* %PC
  %3023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3024 = load i8, i8* %3023, align 1, !tbaa !2444
  store i8 %3024, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %3025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3026 = icmp ne i8 %3024, 0
  %3027 = select i1 %3026, i64 %3018, i64 %3020
  store i64 %3027, i64* %3025, align 8, !tbaa !2424
  %3028 = load i8, i8* %BRANCH_TAKEN
  %3029 = icmp eq i8 %3028, 1
  %3030 = load i64, i64* %RBP
  br i1 %3029, label %block_4007b4, label %block_4007a8

block_40099c:                                     ; preds = %block_400984, %block_400941
  %MEMORY.12 = phi %struct.Memory* [ %662, %block_400941 ], [ %662, %block_400984 ]
  %3031 = load i64, i64* %RBP
  %3032 = sub i64 %3031, 20
  %3033 = load i64, i64* %PC
  %3034 = add i64 %3033, 7
  store i64 %3034, i64* %PC
  %3035 = inttoptr i64 %3032 to i32*
  store i32 48351, i32* %3035
  br label %block_4009a3

block_400a06:                                     ; preds = %block_4009e2
  %3036 = load i64, i64* %PC
  %3037 = add i64 %3036, 5
  store i64 %3037, i64* %PC
  store i64 10000, i64* %RAX, align 8, !tbaa !2424
  %3038 = load i64, i64* %RBP
  %3039 = sub i64 %3038, 60
  %3040 = load i64, i64* %PC
  %3041 = add i64 %3040, 3
  store i64 %3041, i64* %PC
  %3042 = inttoptr i64 %3039 to i32*
  %3043 = load i32, i32* %3042
  %3044 = zext i32 %3043 to i64
  store i64 %3044, i64* %RCX, align 8, !tbaa !2424
  %3045 = load i64, i64* %RCX
  %3046 = load i64, i64* %PC
  %3047 = add i64 %3046, 6
  store i64 %3047, i64* %PC
  %3048 = xor i64 13631488, %3045
  %3049 = trunc i64 %3048 to i32
  %3050 = and i64 %3048, 4294967295
  store i64 %3050, i64* %RCX, align 8, !tbaa !2424
  %3051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3051, align 1, !tbaa !2428
  %3052 = and i32 %3049, 255
  %3053 = call i32 @llvm.ctpop.i32(i32 %3052) #16
  %3054 = trunc i32 %3053 to i8
  %3055 = and i8 %3054, 1
  %3056 = xor i8 %3055, 1
  %3057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3056, i8* %3057, align 1, !tbaa !2442
  %3058 = icmp eq i32 %3049, 0
  %3059 = zext i1 %3058 to i8
  %3060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3059, i8* %3060, align 1, !tbaa !2444
  %3061 = lshr i32 %3049, 31
  %3062 = trunc i32 %3061 to i8
  %3063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3062, i8* %3063, align 1, !tbaa !2445
  %3064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3064, align 1, !tbaa !2446
  %3065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3065, align 1, !tbaa !2443
  %3066 = load i64, i64* %RBP
  %3067 = sub i64 %3066, 60
  %3068 = load i32, i32* %ECX
  %3069 = zext i32 %3068 to i64
  %3070 = load i64, i64* %PC
  %3071 = add i64 %3070, 3
  store i64 %3071, i64* %PC
  %3072 = inttoptr i64 %3067 to i32*
  store i32 %3068, i32* %3072
  %3073 = load i64, i64* %RBP
  %3074 = sub i64 %3073, 60
  %3075 = load i64, i64* %PC
  %3076 = add i64 %3075, 3
  store i64 %3076, i64* %PC
  %3077 = inttoptr i64 %3074 to i32*
  %3078 = load i32, i32* %3077
  %3079 = zext i32 %3078 to i64
  store i64 %3079, i64* %RCX, align 8, !tbaa !2424
  %3080 = load i64, i64* %RCX
  %3081 = load i64, i64* %PC
  %3082 = add i64 %3081, 3
  store i64 %3082, i64* %PC
  %3083 = and i64 %3080, 4294967295
  %3084 = lshr i64 %3083, 3
  %3085 = trunc i64 %3084 to i8
  %3086 = and i8 %3085, 1
  %3087 = lshr i64 %3084, 1
  %3088 = trunc i64 %3087 to i32
  %3089 = and i32 %3088, 2147483647
  %3090 = zext i32 %3089 to i64
  store i64 %3090, i64* %RCX, align 8, !tbaa !2424
  %3091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3086, i8* %3091, align 1, !tbaa !2447
  %3092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3093 = and i32 %3088, 255
  %3094 = call i32 @llvm.ctpop.i32(i32 %3093) #16
  %3095 = trunc i32 %3094 to i8
  %3096 = and i8 %3095, 1
  %3097 = xor i8 %3096, 1
  store i8 %3097, i8* %3092, align 1, !tbaa !2447
  %3098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3098, align 1, !tbaa !2447
  %3099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3100 = icmp eq i32 %3089, 0
  %3101 = zext i1 %3100 to i8
  store i8 %3101, i8* %3099, align 1, !tbaa !2447
  %3102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3102, align 1, !tbaa !2447
  %3103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3103, align 1, !tbaa !2447
  %3104 = load i64, i64* %RBP
  %3105 = sub i64 %3104, 60
  %3106 = load i32, i32* %ECX
  %3107 = zext i32 %3106 to i64
  %3108 = load i64, i64* %PC
  %3109 = add i64 %3108, 3
  store i64 %3109, i64* %PC
  %3110 = inttoptr i64 %3105 to i32*
  store i32 %3106, i32* %3110
  %3111 = load i64, i64* %RBP
  %3112 = sub i64 %3111, 60
  %3113 = load i64, i64* %PC
  %3114 = add i64 %3113, 3
  store i64 %3114, i64* %PC
  %3115 = inttoptr i64 %3112 to i32*
  %3116 = load i32, i32* %3115
  %3117 = zext i32 %3116 to i64
  store i64 %3117, i64* %RCX, align 8, !tbaa !2424
  %3118 = load i64, i64* %RCX
  %3119 = load i64, i64* %PC
  %3120 = add i64 %3119, 6
  store i64 %3120, i64* %PC
  %3121 = trunc i64 %3118 to i32
  %3122 = sub i32 %3121, 226
  %3123 = zext i32 %3122 to i64
  store i64 %3123, i64* %RCX, align 8, !tbaa !2424
  %3124 = icmp ult i32 %3121, 226
  %3125 = zext i1 %3124 to i8
  %3126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3125, i8* %3126, align 1, !tbaa !2428
  %3127 = and i32 %3122, 255
  %3128 = call i32 @llvm.ctpop.i32(i32 %3127) #16
  %3129 = trunc i32 %3128 to i8
  %3130 = and i8 %3129, 1
  %3131 = xor i8 %3130, 1
  %3132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3131, i8* %3132, align 1, !tbaa !2442
  %3133 = xor i64 226, %3118
  %3134 = trunc i64 %3133 to i32
  %3135 = xor i32 %3134, %3122
  %3136 = lshr i32 %3135, 4
  %3137 = trunc i32 %3136 to i8
  %3138 = and i8 %3137, 1
  %3139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3138, i8* %3139, align 1, !tbaa !2443
  %3140 = icmp eq i32 %3122, 0
  %3141 = zext i1 %3140 to i8
  %3142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3141, i8* %3142, align 1, !tbaa !2444
  %3143 = lshr i32 %3122, 31
  %3144 = trunc i32 %3143 to i8
  %3145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3144, i8* %3145, align 1, !tbaa !2445
  %3146 = lshr i32 %3121, 31
  %3147 = xor i32 %3143, %3146
  %3148 = add nuw nsw i32 %3147, %3146
  %3149 = icmp eq i32 %3148, 2
  %3150 = zext i1 %3149 to i8
  %3151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3150, i8* %3151, align 1, !tbaa !2446
  %3152 = load i64, i64* %RBP
  %3153 = sub i64 %3152, 60
  %3154 = load i32, i32* %ECX
  %3155 = zext i32 %3154 to i64
  %3156 = load i64, i64* %PC
  %3157 = add i64 %3156, 3
  store i64 %3157, i64* %PC
  %3158 = inttoptr i64 %3153 to i32*
  store i32 %3154, i32* %3158
  %3159 = load i64, i64* %RBP
  %3160 = sub i64 %3159, 60
  %3161 = load i64, i64* %PC
  %3162 = add i64 %3161, 3
  store i64 %3162, i64* %PC
  %3163 = inttoptr i64 %3160 to i32*
  %3164 = load i32, i32* %3163
  %3165 = zext i32 %3164 to i64
  store i64 %3165, i64* %RCX, align 8, !tbaa !2424
  %3166 = load i64, i64* %RBP
  %3167 = sub i64 %3166, 68
  %3168 = load i32, i32* %EAX
  %3169 = zext i32 %3168 to i64
  %3170 = load i64, i64* %PC
  %3171 = add i64 %3170, 3
  store i64 %3171, i64* %PC
  %3172 = inttoptr i64 %3167 to i32*
  store i32 %3168, i32* %3172
  %3173 = load i32, i32* %ECX
  %3174 = zext i32 %3173 to i64
  %3175 = load i64, i64* %PC
  %3176 = add i64 %3175, 2
  store i64 %3176, i64* %PC
  %3177 = and i64 %3174, 4294967295
  store i64 %3177, i64* %RAX, align 8, !tbaa !2424
  %3178 = load i64, i64* %RDX
  %3179 = load i32, i32* %EDX
  %3180 = zext i32 %3179 to i64
  %3181 = load i64, i64* %PC
  %3182 = add i64 %3181, 2
  store i64 %3182, i64* %PC
  %3183 = xor i64 %3180, %3178
  %3184 = trunc i64 %3183 to i32
  %3185 = and i64 %3183, 4294967295
  store i64 %3185, i64* %RDX, align 8, !tbaa !2424
  %3186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3186, align 1, !tbaa !2428
  %3187 = and i32 %3184, 255
  %3188 = call i32 @llvm.ctpop.i32(i32 %3187) #16
  %3189 = trunc i32 %3188 to i8
  %3190 = and i8 %3189, 1
  %3191 = xor i8 %3190, 1
  %3192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3191, i8* %3192, align 1, !tbaa !2442
  %3193 = icmp eq i32 %3184, 0
  %3194 = zext i1 %3193 to i8
  %3195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3194, i8* %3195, align 1, !tbaa !2444
  %3196 = lshr i32 %3184, 31
  %3197 = trunc i32 %3196 to i8
  %3198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3197, i8* %3198, align 1, !tbaa !2445
  %3199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3199, align 1, !tbaa !2446
  %3200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3200, align 1, !tbaa !2443
  %3201 = load i64, i64* %RBP
  %3202 = sub i64 %3201, 68
  %3203 = load i64, i64* %PC
  %3204 = add i64 %3203, 3
  store i64 %3204, i64* %PC
  %3205 = inttoptr i64 %3202 to i32*
  %3206 = load i32, i32* %3205
  %3207 = zext i32 %3206 to i64
  store i64 %3207, i64* %RCX, align 8, !tbaa !2424
  %3208 = load i32, i32* %ECX
  %3209 = zext i32 %3208 to i64
  %3210 = load i64, i64* %PC
  %3211 = add i64 %3210, 2
  store i64 %3211, i64* %PC
  %3212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3213 = bitcast %union.anon* %3212 to i32*
  %3214 = load i32, i32* %3213, align 8, !tbaa !2448
  %3215 = zext i32 %3214 to i64
  %3216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %3217 = bitcast %union.anon* %3216 to i32*
  %3218 = load i32, i32* %3217, align 8, !tbaa !2448
  %3219 = zext i32 %3218 to i64
  %3220 = and i64 %3209, 4294967295
  %3221 = shl nuw i64 %3219, 32
  %3222 = or i64 %3221, %3215
  %3223 = udiv i64 %3222, %3220
  %3224 = and i64 %3223, 4294967295
  %3225 = icmp eq i64 %3223, %3224
  br i1 %3225, label %3230, label %3226

; <label>:3226:                                   ; preds = %block_400a06
  %3227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3228 = load i64, i64* %3227, align 8, !tbaa !2424
  %3229 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3228, %struct.Memory* %2165) #17
  br label %_ZN12_GLOBAL__N_1L9DIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:3230:                                   ; preds = %block_400a06
  %3231 = urem i64 %3222, %3220
  %3232 = getelementptr inbounds %union.anon, %union.anon* %3212, i64 0, i32 0
  store i64 %3223, i64* %3232, align 8, !tbaa !2424
  %3233 = getelementptr inbounds %union.anon, %union.anon* %3216, i64 0, i32 0
  store i64 %3231, i64* %3233, align 8, !tbaa !2424
  %3234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3234, align 1, !tbaa !2428
  %3235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %3235, align 1, !tbaa !2442
  %3236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3236, align 1, !tbaa !2443
  %3237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3237, align 1, !tbaa !2444
  %3238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3238, align 1, !tbaa !2445
  %3239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3239, align 1, !tbaa !2446
  br label %_ZN12_GLOBAL__N_1L9DIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L9DIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %3226, %3230
  %3240 = phi %struct.Memory* [ %3229, %3226 ], [ %2165, %3230 ]
  %3241 = load i64, i64* %RBP
  %3242 = sub i64 %3241, 60
  %3243 = load i32, i32* %EAX
  %3244 = zext i32 %3243 to i64
  %3245 = load i64, i64* %PC
  %3246 = add i64 %3245, 3
  store i64 %3246, i64* %PC
  %3247 = inttoptr i64 %3242 to i32*
  store i32 %3243, i32* %3247
  %3248 = load i64, i64* %RBP
  %3249 = sub i64 %3248, 60
  %3250 = load i64, i64* %PC
  %3251 = add i64 %3250, 4
  store i64 %3251, i64* %PC
  %3252 = inttoptr i64 %3249 to i32*
  %3253 = load i32, i32* %3252
  %3254 = sub i32 %3253, 3
  %3255 = icmp ult i32 %3253, 3
  %3256 = zext i1 %3255 to i8
  %3257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3256, i8* %3257, align 1, !tbaa !2428
  %3258 = and i32 %3254, 255
  %3259 = call i32 @llvm.ctpop.i32(i32 %3258) #16
  %3260 = trunc i32 %3259 to i8
  %3261 = and i8 %3260, 1
  %3262 = xor i8 %3261, 1
  %3263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3262, i8* %3263, align 1, !tbaa !2442
  %3264 = xor i32 %3253, 3
  %3265 = xor i32 %3264, %3254
  %3266 = lshr i32 %3265, 4
  %3267 = trunc i32 %3266 to i8
  %3268 = and i8 %3267, 1
  %3269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3268, i8* %3269, align 1, !tbaa !2443
  %3270 = icmp eq i32 %3254, 0
  %3271 = zext i1 %3270 to i8
  %3272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3271, i8* %3272, align 1, !tbaa !2444
  %3273 = lshr i32 %3254, 31
  %3274 = trunc i32 %3273 to i8
  %3275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3274, i8* %3275, align 1, !tbaa !2445
  %3276 = lshr i32 %3253, 31
  %3277 = xor i32 %3273, %3276
  %3278 = add nuw nsw i32 %3277, %3276
  %3279 = icmp eq i32 %3278, 2
  %3280 = zext i1 %3279 to i8
  %3281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3280, i8* %3281, align 1, !tbaa !2446
  %3282 = load i64, i64* %PC
  %3283 = add i64 %3282, 17
  %3284 = load i64, i64* %PC
  %3285 = add i64 %3284, 6
  %3286 = load i64, i64* %PC
  %3287 = add i64 %3286, 6
  store i64 %3287, i64* %PC
  %3288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3289 = load i8, i8* %3288, align 1, !tbaa !2444
  store i8 %3289, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %3290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3291 = icmp ne i8 %3289, 0
  %3292 = select i1 %3291, i64 %3283, i64 %3285
  store i64 %3292, i64* %3290, align 8, !tbaa !2424
  %3293 = load i8, i8* %BRANCH_TAKEN
  %3294 = icmp eq i8 %3293, 1
  br i1 %3294, label %block_400a53, label %block_400a48

block_40091a:                                     ; preds = %block_4008e8
  %3295 = load i64, i64* %RBP
  %3296 = sub i64 %3295, 38
  %3297 = load i64, i64* %PC
  %3298 = add i64 %3297, 4
  store i64 %3298, i64* %PC
  %3299 = inttoptr i64 %3296 to i16*
  %3300 = load i16, i16* %3299
  %3301 = zext i16 %3300 to i64
  store i64 %3301, i64* %RAX, align 8, !tbaa !2424
  %3302 = load i64, i64* %RAX
  %3303 = load i64, i64* %PC
  %3304 = add i64 %3303, 5
  store i64 %3304, i64* %PC
  %3305 = or i64 43690, %3302
  %3306 = trunc i64 %3305 to i32
  %3307 = and i64 %3305, 4294967295
  store i64 %3307, i64* %RAX, align 8, !tbaa !2424
  %3308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3308, align 1, !tbaa !2428
  %3309 = and i32 %3306, 255
  %3310 = call i32 @llvm.ctpop.i32(i32 %3309) #16
  %3311 = trunc i32 %3310 to i8
  %3312 = and i8 %3311, 1
  %3313 = xor i8 %3312, 1
  %3314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3313, i8* %3314, align 1, !tbaa !2442
  %3315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3315, align 1, !tbaa !2444
  %3316 = lshr i32 %3306, 31
  %3317 = trunc i32 %3316 to i8
  %3318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3317, i8* %3318, align 1, !tbaa !2445
  %3319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3319, align 1, !tbaa !2446
  %3320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3320, align 1, !tbaa !2443
  %3321 = load i32, i32* %EAX
  %3322 = zext i32 %3321 to i64
  %3323 = load i64, i64* %PC
  %3324 = add i64 %3323, 5
  store i64 %3324, i64* %PC
  %3325 = sub i32 %3321, 65211
  %3326 = icmp ult i32 %3321, 65211
  %3327 = zext i1 %3326 to i8
  %3328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3327, i8* %3328, align 1, !tbaa !2428
  %3329 = and i32 %3325, 255
  %3330 = call i32 @llvm.ctpop.i32(i32 %3329) #16
  %3331 = trunc i32 %3330 to i8
  %3332 = and i8 %3331, 1
  %3333 = xor i8 %3332, 1
  %3334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3333, i8* %3334, align 1, !tbaa !2442
  %3335 = xor i64 65211, %3322
  %3336 = trunc i64 %3335 to i32
  %3337 = xor i32 %3336, %3325
  %3338 = lshr i32 %3337, 4
  %3339 = trunc i32 %3338 to i8
  %3340 = and i8 %3339, 1
  %3341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3340, i8* %3341, align 1, !tbaa !2443
  %3342 = icmp eq i32 %3325, 0
  %3343 = zext i1 %3342 to i8
  %3344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3343, i8* %3344, align 1, !tbaa !2444
  %3345 = lshr i32 %3325, 31
  %3346 = trunc i32 %3345 to i8
  %3347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3346, i8* %3347, align 1, !tbaa !2445
  %3348 = lshr i32 %3321, 31
  %3349 = xor i32 %3345, %3348
  %3350 = add nuw nsw i32 %3349, %3348
  %3351 = icmp eq i32 %3350, 2
  %3352 = zext i1 %3351 to i8
  %3353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3352, i8* %3353, align 1, !tbaa !2446
  %3354 = load i64, i64* %PC
  %3355 = add i64 %3354, 18
  %3356 = load i64, i64* %PC
  %3357 = add i64 %3356, 6
  %3358 = load i64, i64* %PC
  %3359 = add i64 %3358, 6
  store i64 %3359, i64* %PC
  %3360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3361 = load i8, i8* %3360, align 1, !tbaa !2444
  %3362 = icmp eq i8 %3361, 0
  %3363 = zext i1 %3362 to i8
  store i8 %3363, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %3364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3365 = select i1 %3362, i64 %3355, i64 %3357
  store i64 %3365, i64* %3364, align 8, !tbaa !2424
  %3366 = load i8, i8* %BRANCH_TAKEN
  %3367 = icmp eq i8 %3366, 1
  br i1 %3367, label %block_40093a, label %block_40092e

block_400984:                                     ; preds = %block_400941
  %3368 = load i64, i64* %RBP
  %3369 = sub i64 %3368, 56
  %3370 = load i64, i64* %PC
  %3371 = add i64 %3370, 3
  store i64 %3371, i64* %PC
  %3372 = inttoptr i64 %3369 to i32*
  %3373 = load i32, i32* %3372
  %3374 = zext i32 %3373 to i64
  store i64 %3374, i64* %RAX, align 8, !tbaa !2424
  %3375 = load i32, i32* %EAX
  %3376 = zext i32 %3375 to i64
  %3377 = load i64, i64* %RBP
  %3378 = sub i64 %3377, 20
  %3379 = load i64, i64* %PC
  %3380 = add i64 %3379, 3
  store i64 %3380, i64* %PC
  %3381 = inttoptr i64 %3378 to i32*
  %3382 = load i32, i32* %3381
  %3383 = sub i32 %3375, %3382
  %3384 = icmp ult i32 %3375, %3382
  %3385 = zext i1 %3384 to i8
  %3386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3385, i8* %3386, align 1, !tbaa !2428
  %3387 = and i32 %3383, 255
  %3388 = call i32 @llvm.ctpop.i32(i32 %3387) #16
  %3389 = trunc i32 %3388 to i8
  %3390 = and i8 %3389, 1
  %3391 = xor i8 %3390, 1
  %3392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3391, i8* %3392, align 1, !tbaa !2442
  %3393 = xor i32 %3382, %3375
  %3394 = xor i32 %3393, %3383
  %3395 = lshr i32 %3394, 4
  %3396 = trunc i32 %3395 to i8
  %3397 = and i8 %3396, 1
  %3398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3397, i8* %3398, align 1, !tbaa !2443
  %3399 = icmp eq i32 %3383, 0
  %3400 = zext i1 %3399 to i8
  %3401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3400, i8* %3401, align 1, !tbaa !2444
  %3402 = lshr i32 %3383, 31
  %3403 = trunc i32 %3402 to i8
  %3404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3403, i8* %3404, align 1, !tbaa !2445
  %3405 = lshr i32 %3375, 31
  %3406 = lshr i32 %3382, 31
  %3407 = xor i32 %3406, %3405
  %3408 = xor i32 %3402, %3405
  %3409 = add nuw nsw i32 %3408, %3407
  %3410 = icmp eq i32 %3409, 2
  %3411 = zext i1 %3410 to i8
  %3412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3411, i8* %3412, align 1, !tbaa !2446
  %3413 = load i64, i64* %PC
  %3414 = add i64 %3413, 18
  %3415 = load i64, i64* %PC
  %3416 = add i64 %3415, 6
  %3417 = load i64, i64* %PC
  %3418 = add i64 %3417, 6
  store i64 %3418, i64* %PC
  %3419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3420 = load i8, i8* %3419, align 1, !tbaa !2444
  %3421 = icmp eq i8 %3420, 0
  %3422 = zext i1 %3421 to i8
  store i8 %3422, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %3423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3424 = select i1 %3421, i64 %3414, i64 %3416
  store i64 %3424, i64* %3423, align 8, !tbaa !2424
  %3425 = load i8, i8* %BRANCH_TAKEN
  %3426 = icmp eq i8 %3425, 1
  br i1 %3426, label %block_40099c, label %block_400990
}

; Function Attrs: noinline
define %struct.Memory* @sub_400550___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400550:
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
  %14 = load i8, i8* inttoptr (i64 add (i64 ptrtoint (%seg_601040__bss_type* @seg_601040__bss to i64), i64 8) to i8*)
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %15, align 1, !tbaa !2428
  %16 = zext i8 %14 to i32
  %17 = call i32 @llvm.ctpop.i32(i32 %16) #16
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1, !tbaa !2442
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %22, align 1, !tbaa !2443
  %23 = icmp eq i8 %14, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1, !tbaa !2444
  %26 = lshr i8 %14, 7
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1, !tbaa !2445
  %28 = lshr i8 %14, 7
  %29 = xor i8 %26, %28
  %30 = add nuw nsw i8 %29, %28
  %31 = icmp eq i8 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1, !tbaa !2446
  %34 = load i64, i64* %PC
  %35 = add i64 %34, 25
  %36 = load i64, i64* %PC
  %37 = add i64 %36, 2
  %38 = load i64, i64* %PC
  %39 = add i64 %38, 2
  store i64 %39, i64* %PC
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %41 = load i8, i8* %40, align 1, !tbaa !2444
  %42 = icmp eq i8 %41, 0
  %43 = zext i1 %42 to i8
  store i8 %43, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %45 = select i1 %42, i64 %35, i64 %37
  store i64 %45, i64* %44, align 8, !tbaa !2424
  %46 = load i8, i8* %BRANCH_TAKEN
  %47 = icmp eq i8 %46, 1
  br i1 %47, label %block_400570, label %block_400559

block_400570:                                     ; preds = %block_400550
  %48 = load i64, i64* %PC
  %49 = add i64 %48, 2
  store i64 %49, i64* %PC
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %52 = load i64, i64* %51, align 8, !tbaa !2424
  %53 = inttoptr i64 %52 to i64*
  %54 = load i64, i64* %53
  store i64 %54, i64* %50, align 8, !tbaa !2424
  %55 = add i64 %52, 8
  store i64 %55, i64* %51, align 8, !tbaa !2424
  ret %struct.Memory* %2

block_400559:                                     ; preds = %block_400550
  %56 = load i64, i64* %RBP
  %57 = load i64, i64* %PC
  %58 = add i64 %57, 1
  store i64 %58, i64* %PC
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %60 = load i64, i64* %59, align 8, !tbaa !2424
  %61 = add i64 %60, -8
  %62 = inttoptr i64 %61 to i64*
  store i64 %56, i64* %62
  store i64 %61, i64* %59, align 8, !tbaa !2424
  %63 = load i64, i64* %RSP
  %64 = load i64, i64* %PC
  %65 = add i64 %64, 3
  store i64 %65, i64* %PC
  store i64 %63, i64* %RBP, align 8, !tbaa !2424
  %66 = load i64, i64* %PC
  %67 = sub i64 %66, 125
  %68 = load i64, i64* %PC
  %69 = add i64 %68, 5
  %70 = load i64, i64* %PC
  %71 = add i64 %70, 5
  store i64 %71, i64* %PC
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %73 = load i64, i64* %72, align 8, !tbaa !2424
  %74 = add i64 %73, -8
  %75 = inttoptr i64 %74 to i64*
  store i64 %69, i64* %75
  store i64 %74, i64* %72, align 8, !tbaa !2424
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %67, i64* %76, align 8, !tbaa !2424
  %77 = load i64, i64* %PC
  %78 = call %struct.Memory* @sub_4004e0_deregister_tm_clones(%struct.State* %0, i64 %77, %struct.Memory* %2)
  %79 = load i64, i64* %PC
  %80 = add i64 %79, 7
  store i64 %80, i64* %PC
  store i8 1, i8* inttoptr (i64 add (i64 ptrtoint (%seg_601040__bss_type* @seg_601040__bss to i64), i64 8) to i8*)
  %81 = load i64, i64* %PC
  %82 = add i64 %81, 1
  store i64 %82, i64* %PC
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %84 = load i64, i64* %83, align 8, !tbaa !2424
  %85 = add i64 %84, 8
  %86 = inttoptr i64 %84 to i64*
  %87 = load i64, i64* %86
  store i64 %87, i64* %RBP, align 8, !tbaa !2424
  store i64 %85, i64* %83, align 8, !tbaa !2424
  %88 = load i64, i64* %PC
  %89 = add i64 %88, 1
  store i64 %89, i64* %PC
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %92 = load i64, i64* %91, align 8, !tbaa !2424
  %93 = inttoptr i64 %92 to i64*
  %94 = load i64, i64* %93
  store i64 %94, i64* %90, align 8, !tbaa !2424
  %95 = add i64 %92, 8
  store i64 %95, i64* %91, align 8, !tbaa !2424
  ret %struct.Memory* %78
}

; Function Attrs: noinline
define %struct.Memory* @sub_400510_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  store i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64* %RSI, align 8, !tbaa !2424
  %29 = load i64, i64* %RBP
  %30 = load i64, i64* %PC
  %31 = add i64 %30, 1
  store i64 %31, i64* %PC
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %33 = load i64, i64* %32, align 8, !tbaa !2424
  %34 = add i64 %33, -8
  %35 = inttoptr i64 %34 to i64*
  store i64 %29, i64* %35
  store i64 %34, i64* %32, align 8, !tbaa !2424
  %36 = load i64, i64* %RSI
  %37 = load i64, i64* %PC
  %38 = add i64 %37, 7
  store i64 %38, i64* %PC
  %39 = sub i64 %36, ptrtoint (i64* @stderr to i64)
  store i64 %39, i64* %RSI, align 8, !tbaa !2424
  %40 = icmp ult i64 %36, ptrtoint (i64* @stderr to i64)
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %41, i8* %42, align 1, !tbaa !2428
  %43 = trunc i64 %39 to i32
  %44 = and i32 %43, 255
  %45 = call i32 @llvm.ctpop.i32(i32 %44) #16
  %46 = trunc i32 %45 to i8
  %47 = and i8 %46, 1
  %48 = xor i8 %47, 1
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %48, i8* %49, align 1, !tbaa !2442
  %50 = xor i64 ptrtoint (i64* @stderr to i64), %36
  %51 = xor i64 %50, %39
  %52 = lshr i64 %51, 4
  %53 = trunc i64 %52 to i8
  %54 = and i8 %53, 1
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %54, i8* %55, align 1, !tbaa !2443
  %56 = icmp eq i64 %39, 0
  %57 = zext i1 %56 to i8
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %57, i8* %58, align 1, !tbaa !2444
  %59 = lshr i64 %39, 63
  %60 = trunc i64 %59 to i8
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %60, i8* %61, align 1, !tbaa !2445
  %62 = lshr i64 %36, 63
  %63 = xor i64 lshr (i64 ptrtoint (i64* @stderr to i64), i64 63), %62
  %64 = xor i64 %59, %62
  %65 = add nuw nsw i64 %64, %63
  %66 = icmp eq i64 %65, 2
  %67 = zext i1 %66 to i8
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %67, i8* %68, align 1, !tbaa !2446
  %69 = load i64, i64* %RSP
  %70 = load i64, i64* %PC
  %71 = add i64 %70, 3
  store i64 %71, i64* %PC
  store i64 %69, i64* %RBP, align 8, !tbaa !2424
  %72 = load i64, i64* %RSI
  %73 = load i64, i64* %PC
  %74 = add i64 %73, 4
  store i64 %74, i64* %PC
  %75 = ashr i64 %72, 2
  %76 = trunc i64 %75 to i8
  %77 = and i8 %76, 1
  %78 = ashr i64 %75, 1
  store i64 %78, i64* %RSI, align 8, !tbaa !2424
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %77, i8* %79, align 1, !tbaa !2447
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %81 = trunc i64 %78 to i32
  %82 = and i32 %81, 255
  %83 = call i32 @llvm.ctpop.i32(i32 %82) #16
  %84 = trunc i32 %83 to i8
  %85 = and i8 %84, 1
  %86 = xor i8 %85, 1
  store i8 %86, i8* %80, align 1, !tbaa !2447
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %87, align 1, !tbaa !2447
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %89 = icmp eq i64 %78, 0
  %90 = zext i1 %89 to i8
  store i8 %90, i8* %88, align 1, !tbaa !2447
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %92 = lshr i64 %78, 63
  %93 = trunc i64 %92 to i8
  store i8 %93, i8* %91, align 1, !tbaa !2447
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %94, align 1, !tbaa !2447
  %95 = load i64, i64* %RSI
  %96 = load i64, i64* %PC
  %97 = add i64 %96, 3
  store i64 %97, i64* %PC
  store i64 %95, i64* %RAX, align 8, !tbaa !2424
  %98 = load i64, i64* %RAX
  %99 = load i64, i64* %PC
  %100 = add i64 %99, 4
  store i64 %100, i64* %PC
  %101 = lshr i64 %98, 62
  %102 = trunc i64 %101 to i8
  %103 = and i8 %102, 1
  %104 = lshr i64 %101, 1
  store i64 %104, i64* %RAX, align 8, !tbaa !2424
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %103, i8* %105, align 1, !tbaa !2447
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %107 = trunc i64 %104 to i32
  %108 = and i32 %107, 255
  %109 = call i32 @llvm.ctpop.i32(i32 %108) #16
  %110 = trunc i32 %109 to i8
  %111 = and i8 %110, 1
  %112 = xor i8 %111, 1
  store i8 %112, i8* %106, align 1, !tbaa !2447
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %113, align 1, !tbaa !2447
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %115 = icmp eq i64 %104, 0
  %116 = zext i1 %115 to i8
  store i8 %116, i8* %114, align 1, !tbaa !2447
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %117, align 1, !tbaa !2447
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %118, align 1, !tbaa !2447
  %119 = load i64, i64* %RSI
  %120 = load i64, i64* %RAX
  %121 = load i64, i64* %PC
  %122 = add i64 %121, 3
  store i64 %122, i64* %PC
  %123 = add i64 %120, %119
  store i64 %123, i64* %RSI, align 8, !tbaa !2424
  %124 = icmp ult i64 %123, %119
  %125 = icmp ult i64 %123, %120
  %126 = or i1 %124, %125
  %127 = zext i1 %126 to i8
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %127, i8* %128, align 1, !tbaa !2428
  %129 = trunc i64 %123 to i32
  %130 = and i32 %129, 255
  %131 = call i32 @llvm.ctpop.i32(i32 %130) #16
  %132 = trunc i32 %131 to i8
  %133 = and i8 %132, 1
  %134 = xor i8 %133, 1
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %134, i8* %135, align 1, !tbaa !2442
  %136 = xor i64 %120, %119
  %137 = xor i64 %136, %123
  %138 = lshr i64 %137, 4
  %139 = trunc i64 %138 to i8
  %140 = and i8 %139, 1
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %140, i8* %141, align 1, !tbaa !2443
  %142 = icmp eq i64 %123, 0
  %143 = zext i1 %142 to i8
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %143, i8* %144, align 1, !tbaa !2444
  %145 = lshr i64 %123, 63
  %146 = trunc i64 %145 to i8
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %146, i8* %147, align 1, !tbaa !2445
  %148 = lshr i64 %119, 63
  %149 = lshr i64 %120, 63
  %150 = xor i64 %145, %148
  %151 = xor i64 %145, %149
  %152 = add nuw nsw i64 %150, %151
  %153 = icmp eq i64 %152, 2
  %154 = zext i1 %153 to i8
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %154, i8* %155, align 1, !tbaa !2446
  %156 = load i64, i64* %RSI
  %157 = load i64, i64* %PC
  %158 = add i64 %157, 3
  store i64 %158, i64* %PC
  %159 = trunc i64 %156 to i8
  %160 = and i8 %159, 1
  %161 = ashr i64 %156, 1
  store i64 %161, i64* %RSI, align 8, !tbaa !2424
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %160, i8* %162, align 1, !tbaa !2447
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %164 = trunc i64 %161 to i32
  %165 = and i32 %164, 255
  %166 = call i32 @llvm.ctpop.i32(i32 %165) #16
  %167 = trunc i32 %166 to i8
  %168 = and i8 %167, 1
  %169 = xor i8 %168, 1
  store i8 %169, i8* %163, align 1, !tbaa !2447
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %170, align 1, !tbaa !2447
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %172 = icmp eq i64 %161, 0
  %173 = zext i1 %172 to i8
  store i8 %173, i8* %171, align 1, !tbaa !2447
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %175 = lshr i64 %161, 63
  %176 = trunc i64 %175 to i8
  store i8 %176, i8* %174, align 1, !tbaa !2447
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %177, align 1, !tbaa !2447
  %178 = load i64, i64* %PC
  %179 = add i64 %178, 23
  %180 = load i64, i64* %PC
  %181 = add i64 %180, 2
  %182 = load i64, i64* %PC
  %183 = add i64 %182, 2
  store i64 %183, i64* %PC
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %185 = load i8, i8* %184, align 1, !tbaa !2444
  store i8 %185, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %187 = icmp ne i8 %185, 0
  %188 = select i1 %187, i64 %179, i64 %181
  store i64 %188, i64* %186, align 8, !tbaa !2424
  %189 = load i8, i8* %BRANCH_TAKEN
  %190 = icmp eq i8 %189, 1
  br i1 %190, label %block_400548, label %block_400533

block_40053d:                                     ; preds = %block_400533
  %191 = load i64, i64* %PC
  %192 = add i64 %191, 1
  store i64 %192, i64* %PC
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %194 = load i64, i64* %193, align 8, !tbaa !2424
  %195 = add i64 %194, 8
  %196 = inttoptr i64 %194 to i64*
  %197 = load i64, i64* %196
  store i64 %197, i64* %RBP, align 8, !tbaa !2424
  store i64 %195, i64* %193, align 8, !tbaa !2424
  %198 = load i64, i64* %PC
  %199 = add i64 %198, 5
  store i64 %199, i64* %PC
  store i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64* %RDI, align 8, !tbaa !2424
  %200 = load i64, i64* %RAX
  %201 = load i64, i64* %PC
  %202 = add i64 %201, 2
  store i64 %202, i64* %PC
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %200, i64* %203, align 8, !tbaa !2424
  %204 = load i64, i64* %PC
  switch i64 %204, label %270 [
    i64 4195658, label %block_40054a
    i64 4195653, label %block_400545
  ]

block_40054a:                                     ; preds = %block_40053d
  %205 = load i64, i64* %RAX
  %206 = load i64, i64* %RAX
  %207 = add i64 %206, %205
  %208 = load i16, i16* %AX
  %209 = zext i16 %208 to i64
  %210 = load i64, i64* %PC
  %211 = add i64 %210, 6
  store i64 %211, i64* %PC
  %212 = load i64, i64* %PC
  %213 = tail call %struct.Memory* @sub_400550___do_global_dtors_aux(%struct.State* %0, i64 %212, %struct.Memory* %2)
  ret %struct.Memory* %213

block_400533:                                     ; preds = %block_400510
  %214 = load i64, i64* %PC
  %215 = add i64 %214, 5
  store i64 %215, i64* %PC
  store i64 0, i64* %RAX, align 8, !tbaa !2424
  %216 = load i64, i64* %RAX
  %217 = load i64, i64* %RAX
  %218 = load i64, i64* %PC
  %219 = add i64 %218, 3
  store i64 %219, i64* %PC
  %220 = and i64 %217, %216
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %221, align 1, !tbaa !2428
  %222 = trunc i64 %220 to i32
  %223 = and i32 %222, 255
  %224 = call i32 @llvm.ctpop.i32(i32 %223) #16
  %225 = trunc i32 %224 to i8
  %226 = and i8 %225, 1
  %227 = xor i8 %226, 1
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %227, i8* %228, align 1, !tbaa !2442
  %229 = icmp eq i64 %220, 0
  %230 = zext i1 %229 to i8
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %230, i8* %231, align 1, !tbaa !2444
  %232 = lshr i64 %220, 63
  %233 = trunc i64 %232 to i8
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %233, i8* %234, align 1, !tbaa !2445
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %235, align 1, !tbaa !2446
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %236, align 1, !tbaa !2443
  %237 = load i64, i64* %PC
  %238 = add i64 %237, 13
  %239 = load i64, i64* %PC
  %240 = add i64 %239, 2
  %241 = load i64, i64* %PC
  %242 = add i64 %241, 2
  store i64 %242, i64* %PC
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %244 = load i8, i8* %243, align 1, !tbaa !2444
  store i8 %244, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %246 = icmp ne i8 %244, 0
  %247 = select i1 %246, i64 %238, i64 %240
  store i64 %247, i64* %245, align 8, !tbaa !2424
  %248 = load i8, i8* %BRANCH_TAKEN
  %249 = icmp eq i8 %248, 1
  br i1 %249, label %block_400548, label %block_40053d

block_400548:                                     ; preds = %block_400545, %block_400533, %block_400510
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400510 ], [ %2, %block_400533 ], [ %2, %block_400545 ]
  %250 = load i64, i64* %PC
  %251 = add i64 %250, 1
  store i64 %251, i64* %PC
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %253 = load i64, i64* %252, align 8, !tbaa !2424
  %254 = add i64 %253, 8
  %255 = inttoptr i64 %253 to i64*
  %256 = load i64, i64* %255
  store i64 %256, i64* %RBP, align 8, !tbaa !2424
  store i64 %254, i64* %252, align 8, !tbaa !2424
  %257 = load i64, i64* %PC
  %258 = add i64 %257, 1
  store i64 %258, i64* %PC
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %261 = load i64, i64* %260, align 8, !tbaa !2424
  %262 = inttoptr i64 %261 to i64*
  %263 = load i64, i64* %262
  store i64 %263, i64* %259, align 8, !tbaa !2424
  %264 = add i64 %261, 8
  store i64 %264, i64* %260, align 8, !tbaa !2424
  ret %struct.Memory* %MEMORY.0

block_400545:                                     ; preds = %block_40053d
  %265 = load i64, i64* %RAX
  %266 = load i32, i32* %EAX
  %267 = zext i32 %266 to i64
  %268 = load i64, i64* %PC
  %269 = add i64 %268, 3
  store i64 %269, i64* %PC
  br label %block_400548

; <label>:270:                                    ; preds = %block_40053d
  %271 = load i64, i64* %PC
  %272 = tail call %struct.Memory* @__remill_jump(%struct.State* %0, i64 %271, %struct.Memory* %2)
  ret %struct.Memory* %272
}

; Function Attrs: noinline
define %struct.Memory* @sub_4004e0_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4004e0:
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
  %28 = load i64, i64* %27, align 8, !tbaa !2424
  %29 = add i64 %28, -8
  %30 = inttoptr i64 %29 to i64*
  store i64 %24, i64* %30
  store i64 %29, i64* %27, align 8, !tbaa !2424
  %31 = load i64, i64* %PC
  %32 = add i64 %31, 5
  store i64 %32, i64* %PC
  store i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64* %RAX, align 8, !tbaa !2424
  %33 = load i64, i64* %RAX
  %34 = load i64, i64* %PC
  %35 = add i64 %34, 6
  store i64 %35, i64* %PC
  %36 = sub i64 %33, ptrtoint (i64* @stderr to i64)
  %37 = icmp ult i64 %33, ptrtoint (i64* @stderr to i64)
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %38, i8* %39, align 1, !tbaa !2428
  %40 = trunc i64 %36 to i32
  %41 = and i32 %40, 255
  %42 = call i32 @llvm.ctpop.i32(i32 %41) #16
  %43 = trunc i32 %42 to i8
  %44 = and i8 %43, 1
  %45 = xor i8 %44, 1
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %45, i8* %46, align 1, !tbaa !2442
  %47 = xor i64 ptrtoint (i64* @stderr to i64), %33
  %48 = xor i64 %47, %36
  %49 = lshr i64 %48, 4
  %50 = trunc i64 %49 to i8
  %51 = and i8 %50, 1
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %51, i8* %52, align 1, !tbaa !2443
  %53 = icmp eq i64 %36, 0
  %54 = zext i1 %53 to i8
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %54, i8* %55, align 1, !tbaa !2444
  %56 = lshr i64 %36, 63
  %57 = trunc i64 %56 to i8
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %57, i8* %58, align 1, !tbaa !2445
  %59 = lshr i64 %33, 63
  %60 = xor i64 lshr (i64 ptrtoint (i64* @stderr to i64), i64 63), %59
  %61 = xor i64 %56, %59
  %62 = add nuw nsw i64 %61, %60
  %63 = icmp eq i64 %62, 2
  %64 = zext i1 %63 to i8
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %64, i8* %65, align 1, !tbaa !2446
  %66 = load i64, i64* %RSP
  %67 = load i64, i64* %PC
  %68 = add i64 %67, 3
  store i64 %68, i64* %PC
  store i64 %66, i64* %RBP, align 8, !tbaa !2424
  %69 = load i64, i64* %PC
  %70 = add i64 %69, 25
  %71 = load i64, i64* %PC
  %72 = add i64 %71, 2
  %73 = load i64, i64* %PC
  %74 = add i64 %73, 2
  store i64 %74, i64* %PC
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %76 = load i8, i8* %75, align 1, !tbaa !2444
  store i8 %76, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %78 = icmp ne i8 %76, 0
  %79 = select i1 %78, i64 %70, i64 %72
  store i64 %79, i64* %77, align 8, !tbaa !2424
  %80 = load i8, i8* %BRANCH_TAKEN
  %81 = icmp eq i8 %80, 1
  br i1 %81, label %block_400508, label %block_4004f1

block_4004fb:                                     ; preds = %block_4004f1
  %82 = load i64, i64* %PC
  %83 = add i64 %82, 1
  store i64 %83, i64* %PC
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %85 = load i64, i64* %84, align 8, !tbaa !2424
  %86 = add i64 %85, 8
  %87 = inttoptr i64 %85 to i64*
  %88 = load i64, i64* %87
  store i64 %88, i64* %RBP, align 8, !tbaa !2424
  store i64 %86, i64* %84, align 8, !tbaa !2424
  %89 = load i64, i64* %PC
  %90 = add i64 %89, 5
  store i64 %90, i64* %PC
  store i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64* %RDI, align 8, !tbaa !2424
  %91 = load i64, i64* %RAX
  %92 = load i64, i64* %PC
  %93 = add i64 %92, 2
  store i64 %93, i64* %PC
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %91, i64* %94, align 8, !tbaa !2424
  %95 = load i64, i64* %PC
  switch i64 %95, label %163 [
    i64 4195594, label %block_40050a
    i64 4195587, label %block_400503
  ]

block_4004f1:                                     ; preds = %block_4004e0
  %96 = load i64, i64* %PC
  %97 = add i64 %96, 5
  store i64 %97, i64* %PC
  store i64 0, i64* %RAX, align 8, !tbaa !2424
  %98 = load i64, i64* %RAX
  %99 = load i64, i64* %RAX
  %100 = load i64, i64* %PC
  %101 = add i64 %100, 3
  store i64 %101, i64* %PC
  %102 = and i64 %99, %98
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %103, align 1, !tbaa !2428
  %104 = trunc i64 %102 to i32
  %105 = and i32 %104, 255
  %106 = call i32 @llvm.ctpop.i32(i32 %105) #16
  %107 = trunc i32 %106 to i8
  %108 = and i8 %107, 1
  %109 = xor i8 %108, 1
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %109, i8* %110, align 1, !tbaa !2442
  %111 = icmp eq i64 %102, 0
  %112 = zext i1 %111 to i8
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %112, i8* %113, align 1, !tbaa !2444
  %114 = lshr i64 %102, 63
  %115 = trunc i64 %114 to i8
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %115, i8* %116, align 1, !tbaa !2445
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %117, align 1, !tbaa !2446
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %118, align 1, !tbaa !2443
  %119 = load i64, i64* %PC
  %120 = add i64 %119, 15
  %121 = load i64, i64* %PC
  %122 = add i64 %121, 2
  %123 = load i64, i64* %PC
  %124 = add i64 %123, 2
  store i64 %124, i64* %PC
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %126 = load i8, i8* %125, align 1, !tbaa !2444
  store i8 %126, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %128 = icmp ne i8 %126, 0
  %129 = select i1 %128, i64 %120, i64 %122
  store i64 %129, i64* %127, align 8, !tbaa !2424
  %130 = load i8, i8* %BRANCH_TAKEN
  %131 = icmp eq i8 %130, 1
  br i1 %131, label %block_400508, label %block_4004fb

block_400508:                                     ; preds = %block_400503, %block_4004f1, %block_4004e0
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4004e0 ], [ %2, %block_4004f1 ], [ %2, %block_400503 ]
  %132 = load i64, i64* %PC
  %133 = add i64 %132, 1
  store i64 %133, i64* %PC
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %135 = load i64, i64* %134, align 8, !tbaa !2424
  %136 = add i64 %135, 8
  %137 = inttoptr i64 %135 to i64*
  %138 = load i64, i64* %137
  store i64 %138, i64* %RBP, align 8, !tbaa !2424
  store i64 %136, i64* %134, align 8, !tbaa !2424
  %139 = load i64, i64* %PC
  %140 = add i64 %139, 1
  store i64 %140, i64* %PC
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %143 = load i64, i64* %142, align 8, !tbaa !2424
  %144 = inttoptr i64 %143 to i64*
  %145 = load i64, i64* %144
  store i64 %145, i64* %141, align 8, !tbaa !2424
  %146 = add i64 %143, 8
  store i64 %146, i64* %142, align 8, !tbaa !2424
  ret %struct.Memory* %MEMORY.0

block_40050a:                                     ; preds = %block_4004fb
  %147 = load i64, i64* %RAX
  %148 = load i64, i64* %RAX
  %149 = add i64 %148, %147
  %150 = load i16, i16* %AX
  %151 = zext i16 %150 to i64
  %152 = load i64, i64* %PC
  %153 = add i64 %152, 6
  store i64 %153, i64* %PC
  %154 = load i64, i64* %PC
  %155 = tail call %struct.Memory* @sub_400510_register_tm_clones(%struct.State* %0, i64 %154, %struct.Memory* %2)
  ret %struct.Memory* %155

block_400503:                                     ; preds = %block_4004fb
  %156 = load i64, i64* %RAX
  %157 = load i64, i64* %RAX
  %158 = add i64 %157, %156
  %159 = load i32, i32* %EAX
  %160 = zext i32 %159 to i64
  %161 = load i64, i64* %PC
  %162 = add i64 %161, 5
  store i64 %162, i64* %PC
  br label %block_400508

; <label>:163:                                    ; preds = %block_4004fb
  %164 = load i64, i64* %PC
  %165 = tail call %struct.Memory* @__remill_jump(%struct.State* %0, i64 %164, %struct.Memory* %2)
  ret %struct.Memory* %165
}

; Function Attrs: noinline
define %struct.Memory* @sub_400600_read_bytes(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  %36 = load i64, i64* %RBP
  %37 = load i64, i64* %PC
  %38 = add i64 %37, 1
  store i64 %38, i64* %PC
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %40 = load i64, i64* %39, align 8, !tbaa !2424
  %41 = add i64 %40, -8
  %42 = inttoptr i64 %41 to i64*
  store i64 %36, i64* %42
  store i64 %41, i64* %39, align 8, !tbaa !2424
  %43 = load i64, i64* %RSP
  %44 = load i64, i64* %PC
  %45 = add i64 %44, 3
  store i64 %45, i64* %PC
  store i64 %43, i64* %RBP, align 8, !tbaa !2424
  %46 = load i64, i64* %RSP
  %47 = load i64, i64* %PC
  %48 = add i64 %47, 4
  store i64 %48, i64* %PC
  %49 = sub i64 %46, 32
  store i64 %49, i64* %RSP, align 8, !tbaa !2424
  %50 = icmp ult i64 %46, 32
  %51 = zext i1 %50 to i8
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %51, i8* %52, align 1, !tbaa !2428
  %53 = trunc i64 %49 to i32
  %54 = and i32 %53, 255
  %55 = call i32 @llvm.ctpop.i32(i32 %54) #16
  %56 = trunc i32 %55 to i8
  %57 = and i8 %56, 1
  %58 = xor i8 %57, 1
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %58, i8* %59, align 1, !tbaa !2442
  %60 = xor i64 32, %46
  %61 = xor i64 %60, %49
  %62 = lshr i64 %61, 4
  %63 = trunc i64 %62 to i8
  %64 = and i8 %63, 1
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %64, i8* %65, align 1, !tbaa !2443
  %66 = icmp eq i64 %49, 0
  %67 = zext i1 %66 to i8
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %67, i8* %68, align 1, !tbaa !2444
  %69 = lshr i64 %49, 63
  %70 = trunc i64 %69 to i8
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %70, i8* %71, align 1, !tbaa !2445
  %72 = lshr i64 %46, 63
  %73 = xor i64 %69, %72
  %74 = add nuw nsw i64 %73, %72
  %75 = icmp eq i64 %74, 2
  %76 = zext i1 %75 to i8
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %76, i8* %77, align 1, !tbaa !2446
  %78 = load i64, i64* %RBP
  %79 = sub i64 %78, 4
  %80 = load i32, i32* %EDI
  %81 = zext i32 %80 to i64
  %82 = load i64, i64* %PC
  %83 = add i64 %82, 3
  store i64 %83, i64* %PC
  %84 = inttoptr i64 %79 to i32*
  store i32 %80, i32* %84
  %85 = load i64, i64* %RBP
  %86 = sub i64 %85, 16
  %87 = load i64, i64* %RSI
  %88 = load i64, i64* %PC
  %89 = add i64 %88, 4
  store i64 %89, i64* %PC
  %90 = inttoptr i64 %86 to i64*
  store i64 %87, i64* %90
  %91 = load i64, i64* %RBP
  %92 = sub i64 %91, 20
  %93 = load i32, i32* %EDX
  %94 = zext i32 %93 to i64
  %95 = load i64, i64* %PC
  %96 = add i64 %95, 3
  store i64 %96, i64* %PC
  %97 = inttoptr i64 %92 to i32*
  store i32 %93, i32* %97
  %98 = load i64, i64* %RBP
  %99 = sub i64 %98, 24
  %100 = load i64, i64* %PC
  %101 = add i64 %100, 7
  store i64 %101, i64* %PC
  %102 = inttoptr i64 %99 to i32*
  store i32 0, i32* %102
  br label %block_400619

block_400625:                                     ; preds = %block_400619
  %103 = load i64, i64* %RAX
  %104 = load i64, i64* %PC
  %105 = add i64 %104, 3
  store i64 %105, i64* %PC
  %106 = and i64 %103, 4294967295
  %107 = shl i64 %106, 3
  %108 = trunc i64 %107 to i32
  %109 = icmp slt i32 %108, 0
  %110 = shl i32 %108, 1
  %111 = zext i32 %110 to i64
  store i64 %111, i64* %RAX, align 8, !tbaa !2424
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %113 = zext i1 %109 to i8
  store i8 %113, i8* %112, align 1, !tbaa !2447
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %115 = and i32 %110, 254
  %116 = call i32 @llvm.ctpop.i32(i32 %115) #16
  %117 = trunc i32 %116 to i8
  %118 = and i8 %117, 1
  %119 = xor i8 %118, 1
  store i8 %119, i8* %114, align 1, !tbaa !2447
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %120, align 1, !tbaa !2447
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %122 = icmp eq i32 %110, 0
  %123 = zext i1 %122 to i8
  store i8 %123, i8* %121, align 1, !tbaa !2447
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %125 = lshr i32 %110, 31
  %126 = trunc i32 %125 to i8
  store i8 %126, i8* %124, align 1, !tbaa !2447
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %127, align 1, !tbaa !2447
  %128 = load i64, i64* %RBP
  %129 = sub i64 %128, 4
  %130 = load i32, i32* %EAX
  %131 = zext i32 %130 to i64
  %132 = load i64, i64* %PC
  %133 = add i64 %132, 3
  store i64 %133, i64* %PC
  %134 = inttoptr i64 %129 to i32*
  store i32 %130, i32* %134
  %135 = load i64, i64* %RBP
  %136 = sub i64 %135, 16
  %137 = load i64, i64* %PC
  %138 = add i64 %137, 4
  store i64 %138, i64* %PC
  %139 = inttoptr i64 %136 to i64*
  %140 = load i64, i64* %139
  store i64 %140, i64* %RCX, align 8, !tbaa !2424
  %141 = load i64, i64* %RBP
  %142 = sub i64 %141, 24
  %143 = load i64, i64* %PC
  %144 = add i64 %143, 4
  store i64 %144, i64* %PC
  %145 = inttoptr i64 %142 to i32*
  %146 = load i32, i32* %145
  %147 = sext i32 %146 to i64
  store i64 %147, i64* %RDX, align 8, !tbaa !2424
  %148 = load i64, i64* %RCX
  %149 = load i64, i64* %RDX
  %150 = add i64 %149, %148
  %151 = load i64, i64* %PC
  %152 = add i64 %151, 4
  store i64 %152, i64* %PC
  %153 = inttoptr i64 %150 to i8*
  %154 = load i8, i8* %153
  %155 = zext i8 %154 to i64
  store i64 %155, i64* %RDI, align 8, !tbaa !2424
  %156 = load i64, i64* %PC
  %157 = sub i64 %156, 170
  %158 = load i64, i64* %PC
  %159 = add i64 %158, 5
  %160 = load i64, i64* %PC
  %161 = add i64 %160, 5
  store i64 %161, i64* %PC
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %163 = load i64, i64* %162, align 8, !tbaa !2424
  %164 = add i64 %163, -8
  %165 = inttoptr i64 %164 to i64*
  store i64 %159, i64* %165
  store i64 %164, i64* %162, align 8, !tbaa !2424
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %157, i64* %166, align 8, !tbaa !2424
  %167 = load i64, i64* %PC
  %168 = call %struct.Memory* @sub_400590_to_byte(%struct.State* %0, i64 %167, %struct.Memory* %MEMORY.0)
  %169 = load i64, i64* %RAX
  %170 = load i64, i64* %RBP
  %171 = sub i64 %170, 4
  %172 = load i64, i64* %PC
  %173 = add i64 %172, 3
  store i64 %173, i64* %PC
  %174 = trunc i64 %169 to i32
  %175 = inttoptr i64 %171 to i32*
  %176 = load i32, i32* %175
  %177 = or i32 %176, %174
  %178 = zext i32 %177 to i64
  store i64 %178, i64* %RAX, align 8, !tbaa !2424
  %179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %179, align 1, !tbaa !2428
  %180 = and i32 %177, 255
  %181 = call i32 @llvm.ctpop.i32(i32 %180) #16
  %182 = trunc i32 %181 to i8
  %183 = and i8 %182, 1
  %184 = xor i8 %183, 1
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %184, i8* %185, align 1, !tbaa !2442
  %186 = icmp eq i32 %177, 0
  %187 = zext i1 %186 to i8
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %187, i8* %188, align 1, !tbaa !2444
  %189 = lshr i32 %177, 31
  %190 = trunc i32 %189 to i8
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %190, i8* %191, align 1, !tbaa !2445
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %192, align 1, !tbaa !2446
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %193, align 1, !tbaa !2443
  %194 = load i64, i64* %RBP
  %195 = sub i64 %194, 4
  %196 = load i32, i32* %EAX
  %197 = zext i32 %196 to i64
  %198 = load i64, i64* %PC
  %199 = add i64 %198, 3
  store i64 %199, i64* %PC
  %200 = inttoptr i64 %195 to i32*
  store i32 %196, i32* %200
  %201 = load i64, i64* %RBP
  %202 = sub i64 %201, 24
  %203 = load i64, i64* %PC
  %204 = add i64 %203, 3
  store i64 %204, i64* %PC
  %205 = inttoptr i64 %202 to i32*
  %206 = load i32, i32* %205
  %207 = zext i32 %206 to i64
  store i64 %207, i64* %RAX, align 8, !tbaa !2424
  %208 = load i64, i64* %RAX
  %209 = load i64, i64* %PC
  %210 = add i64 %209, 3
  store i64 %210, i64* %PC
  %211 = trunc i64 %208 to i32
  %212 = add i32 1, %211
  %213 = zext i32 %212 to i64
  store i64 %213, i64* %RAX, align 8, !tbaa !2424
  %214 = icmp ult i32 %212, %211
  %215 = icmp ult i32 %212, 1
  %216 = or i1 %214, %215
  %217 = zext i1 %216 to i8
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %217, i8* %218, align 1, !tbaa !2428
  %219 = and i32 %212, 255
  %220 = call i32 @llvm.ctpop.i32(i32 %219) #16
  %221 = trunc i32 %220 to i8
  %222 = and i8 %221, 1
  %223 = xor i8 %222, 1
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %223, i8* %224, align 1, !tbaa !2442
  %225 = xor i64 1, %208
  %226 = trunc i64 %225 to i32
  %227 = xor i32 %226, %212
  %228 = lshr i32 %227, 4
  %229 = trunc i32 %228 to i8
  %230 = and i8 %229, 1
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %230, i8* %231, align 1, !tbaa !2443
  %232 = icmp eq i32 %212, 0
  %233 = zext i1 %232 to i8
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %233, i8* %234, align 1, !tbaa !2444
  %235 = lshr i32 %212, 31
  %236 = trunc i32 %235 to i8
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %236, i8* %237, align 1, !tbaa !2445
  %238 = lshr i32 %211, 31
  %239 = xor i32 %235, %238
  %240 = add nuw nsw i32 %239, %235
  %241 = icmp eq i32 %240, 2
  %242 = zext i1 %241 to i8
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %242, i8* %243, align 1, !tbaa !2446
  %244 = load i64, i64* %RBP
  %245 = sub i64 %244, 24
  %246 = load i32, i32* %EAX
  %247 = zext i32 %246 to i64
  %248 = load i64, i64* %PC
  %249 = add i64 %248, 3
  store i64 %249, i64* %PC
  %250 = inttoptr i64 %245 to i32*
  store i32 %246, i32* %250
  %251 = load i64, i64* %PC
  %252 = sub i64 %251, 53
  %253 = load i64, i64* %PC
  %254 = add i64 %253, 5
  store i64 %254, i64* %PC
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %252, i64* %255, align 8, !tbaa !2424
  br label %block_400619

block_400653:                                     ; preds = %block_400619
  %256 = load i64, i64* %RSP
  %257 = load i64, i64* %PC
  %258 = add i64 %257, 4
  store i64 %258, i64* %PC
  %259 = add i64 32, %256
  store i64 %259, i64* %RSP, align 8, !tbaa !2424
  %260 = icmp ult i64 %259, %256
  %261 = icmp ult i64 %259, 32
  %262 = or i1 %260, %261
  %263 = zext i1 %262 to i8
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %263, i8* %264, align 1, !tbaa !2428
  %265 = trunc i64 %259 to i32
  %266 = and i32 %265, 255
  %267 = call i32 @llvm.ctpop.i32(i32 %266) #16
  %268 = trunc i32 %267 to i8
  %269 = and i8 %268, 1
  %270 = xor i8 %269, 1
  %271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %270, i8* %271, align 1, !tbaa !2442
  %272 = xor i64 32, %256
  %273 = xor i64 %272, %259
  %274 = lshr i64 %273, 4
  %275 = trunc i64 %274 to i8
  %276 = and i8 %275, 1
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %276, i8* %277, align 1, !tbaa !2443
  %278 = icmp eq i64 %259, 0
  %279 = zext i1 %278 to i8
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %279, i8* %280, align 1, !tbaa !2444
  %281 = lshr i64 %259, 63
  %282 = trunc i64 %281 to i8
  %283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %282, i8* %283, align 1, !tbaa !2445
  %284 = lshr i64 %256, 63
  %285 = xor i64 %281, %284
  %286 = add nuw nsw i64 %285, %281
  %287 = icmp eq i64 %286, 2
  %288 = zext i1 %287 to i8
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %288, i8* %289, align 1, !tbaa !2446
  %290 = load i64, i64* %PC
  %291 = add i64 %290, 1
  store i64 %291, i64* %PC
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %293 = load i64, i64* %292, align 8, !tbaa !2424
  %294 = add i64 %293, 8
  %295 = inttoptr i64 %293 to i64*
  %296 = load i64, i64* %295
  store i64 %296, i64* %RBP, align 8, !tbaa !2424
  store i64 %294, i64* %292, align 8, !tbaa !2424
  %297 = load i64, i64* %PC
  %298 = add i64 %297, 1
  store i64 %298, i64* %PC
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %301 = load i64, i64* %300, align 8, !tbaa !2424
  %302 = inttoptr i64 %301 to i64*
  %303 = load i64, i64* %302
  store i64 %303, i64* %299, align 8, !tbaa !2424
  %304 = add i64 %301, 8
  store i64 %304, i64* %300, align 8, !tbaa !2424
  ret %struct.Memory* %MEMORY.0

block_400619:                                     ; preds = %block_400625, %block_400600
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400600 ], [ %168, %block_400625 ]
  %305 = load i64, i64* %RBP
  %306 = sub i64 %305, 24
  %307 = load i64, i64* %PC
  %308 = add i64 %307, 3
  store i64 %308, i64* %PC
  %309 = inttoptr i64 %306 to i32*
  %310 = load i32, i32* %309
  %311 = zext i32 %310 to i64
  store i64 %311, i64* %RAX, align 8, !tbaa !2424
  %312 = load i32, i32* %EAX
  %313 = zext i32 %312 to i64
  %314 = load i64, i64* %RBP
  %315 = sub i64 %314, 20
  %316 = load i64, i64* %PC
  %317 = add i64 %316, 3
  store i64 %317, i64* %PC
  %318 = inttoptr i64 %315 to i32*
  %319 = load i32, i32* %318
  %320 = sub i32 %312, %319
  %321 = icmp ult i32 %312, %319
  %322 = zext i1 %321 to i8
  %323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %322, i8* %323, align 1, !tbaa !2428
  %324 = and i32 %320, 255
  %325 = call i32 @llvm.ctpop.i32(i32 %324) #16
  %326 = trunc i32 %325 to i8
  %327 = and i8 %326, 1
  %328 = xor i8 %327, 1
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %328, i8* %329, align 1, !tbaa !2442
  %330 = xor i32 %319, %312
  %331 = xor i32 %330, %320
  %332 = lshr i32 %331, 4
  %333 = trunc i32 %332 to i8
  %334 = and i8 %333, 1
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %334, i8* %335, align 1, !tbaa !2443
  %336 = icmp eq i32 %320, 0
  %337 = zext i1 %336 to i8
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %337, i8* %338, align 1, !tbaa !2444
  %339 = lshr i32 %320, 31
  %340 = trunc i32 %339 to i8
  %341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %340, i8* %341, align 1, !tbaa !2445
  %342 = lshr i32 %312, 31
  %343 = lshr i32 %319, 31
  %344 = xor i32 %343, %342
  %345 = xor i32 %339, %342
  %346 = add nuw nsw i32 %345, %344
  %347 = icmp eq i32 %346, 2
  %348 = zext i1 %347 to i8
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %348, i8* %349, align 1, !tbaa !2446
  %350 = load i64, i64* %PC
  %351 = add i64 %350, 52
  %352 = load i64, i64* %PC
  %353 = add i64 %352, 6
  %354 = load i64, i64* %PC
  %355 = add i64 %354, 6
  store i64 %355, i64* %PC
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %357 = load i8, i8* %356, align 1, !tbaa !2445
  %358 = icmp ne i8 %357, 0
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %360 = load i8, i8* %359, align 1, !tbaa !2446
  %361 = icmp ne i8 %360, 0
  %362 = xor i1 %358, %361
  %363 = xor i1 %362, true
  %364 = zext i1 %363 to i8
  store i8 %364, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %366 = select i1 %362, i64 %353, i64 %351
  store i64 %366, i64* %365, align 8, !tbaa !2424
  %367 = load i8, i8* %BRANCH_TAKEN
  %368 = icmp eq i8 %367, 1
  %369 = load i64, i64* %RBP
  %370 = sub i64 %369, 4
  %371 = load i64, i64* %PC
  %372 = add i64 %371, 3
  store i64 %372, i64* %PC
  %373 = inttoptr i64 %370 to i32*
  %374 = load i32, i32* %373
  %375 = zext i32 %374 to i64
  store i64 %375, i64* %RAX, align 8, !tbaa !2424
  br i1 %368, label %block_400653, label %block_400625
}

; Function Attrs: noinline
define %struct.Memory* @sub_4004b0__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4004b0:
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
  store i64 %43, i64* %RBP, align 8, !tbaa !2424
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %44, align 1, !tbaa !2428
  %45 = and i32 %42, 255
  %46 = call i32 @llvm.ctpop.i32(i32 %45) #16
  %47 = trunc i32 %46 to i8
  %48 = and i8 %47, 1
  %49 = xor i8 %48, 1
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %49, i8* %50, align 1, !tbaa !2442
  %51 = icmp eq i32 %42, 0
  %52 = zext i1 %51 to i8
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %52, i8* %53, align 1, !tbaa !2444
  %54 = lshr i32 %42, 31
  %55 = trunc i32 %54 to i8
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %55, i8* %56, align 1, !tbaa !2445
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %57, align 1, !tbaa !2446
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %58, align 1, !tbaa !2443
  %59 = load i64, i64* %RDX
  %60 = load i64, i64* %PC
  %61 = add i64 %60, 3
  store i64 %61, i64* %PC
  store i64 %59, i64* %R9, align 8, !tbaa !2424
  %62 = load i64, i64* %PC
  %63 = add i64 %62, 1
  store i64 %63, i64* %PC
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %65 = load i64, i64* %64, align 8, !tbaa !2424
  %66 = add i64 %65, 8
  %67 = inttoptr i64 %65 to i64*
  %68 = load i64, i64* %67
  store i64 %68, i64* %RSI, align 8, !tbaa !2424
  store i64 %66, i64* %64, align 8, !tbaa !2424
  %69 = load i64, i64* %RSP
  %70 = load i64, i64* %PC
  %71 = add i64 %70, 3
  store i64 %71, i64* %PC
  store i64 %69, i64* %RDX, align 8, !tbaa !2424
  %72 = load i64, i64* %RSP
  %73 = load i64, i64* %PC
  %74 = add i64 %73, 4
  store i64 %74, i64* %PC
  %75 = and i64 -16, %72
  store i64 %75, i64* %RSP, align 8, !tbaa !2424
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %76, align 1, !tbaa !2428
  %77 = trunc i64 %75 to i32
  %78 = and i32 %77, 255
  %79 = call i32 @llvm.ctpop.i32(i32 %78) #16
  %80 = trunc i32 %79 to i8
  %81 = and i8 %80, 1
  %82 = xor i8 %81, 1
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %82, i8* %83, align 1, !tbaa !2442
  %84 = icmp eq i64 %75, 0
  %85 = zext i1 %84 to i8
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %85, i8* %86, align 1, !tbaa !2444
  %87 = lshr i64 %75, 63
  %88 = trunc i64 %87 to i8
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %88, i8* %89, align 1, !tbaa !2445
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %90, align 1, !tbaa !2446
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %91, align 1, !tbaa !2443
  %92 = load i64, i64* %RAX
  %93 = load i64, i64* %PC
  %94 = add i64 %93, 1
  store i64 %94, i64* %PC
  %95 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %96 = load i64, i64* %95, align 8, !tbaa !2424
  %97 = add i64 %96, -8
  %98 = inttoptr i64 %97 to i64*
  store i64 %92, i64* %98
  store i64 %97, i64* %95, align 8, !tbaa !2424
  %99 = load i64, i64* %RSP
  %100 = load i64, i64* %PC
  %101 = add i64 %100, 1
  store i64 %101, i64* %PC
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %103 = load i64, i64* %102, align 8, !tbaa !2424
  %104 = add i64 %103, -8
  %105 = inttoptr i64 %104 to i64*
  store i64 %99, i64* %105
  store i64 %104, i64* %102, align 8, !tbaa !2424
  %106 = load i64, i64* %PC
  %107 = add i64 %106, 7
  store i64 %107, i64* %PC
  store i64 ptrtoint (void ()* @callback_sub_400ba0___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2424
  %108 = load i64, i64* %PC
  %109 = add i64 %108, 7
  store i64 %109, i64* %PC
  store i64 ptrtoint (void ()* @callback_sub_400b30___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2424
  %110 = load i64, i64* %PC
  %111 = add i64 %110, 7
  store i64 %111, i64* %PC
  store i64 ptrtoint (void ()* @main to i64), i64* %RDI, align 8, !tbaa !2424
  %112 = load i64, i64* %PC
  %113 = add i64 %112, 6
  %114 = load i64, i64* %PC
  %115 = add i64 %114, 6
  store i64 %115, i64* %PC
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %117 = load i64, i64* %116, align 8, !tbaa !2424
  %118 = add i64 %117, -8
  %119 = inttoptr i64 %118 to i64*
  store i64 %113, i64* %119
  store i64 %118, i64* %116, align 8, !tbaa !2424
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %121 = load i64, i64* getelementptr inbounds (%seg_600ff0__got_type, %seg_600ff0__got_type* @seg_600ff0__got, i32 0, i32 0)
  store i64 %121, i64* %120, align 8, !tbaa !2424
  %122 = load i64, i64* %PC
  %123 = call %struct.Memory* @ext_601080___libc_start_main(%struct.State* %0, i64 %122, %struct.Memory* %2)
  %124 = load i64, i64* %PC
  %125 = add i64 %124, 1
  store i64 %125, i64* %PC
  %126 = load i64, i64* %PC
  %127 = tail call %struct.Memory* @__remill_error(%struct.State* %0, i64 %126, %struct.Memory* %123)
  ret %struct.Memory* %127
}

; Function Attrs: noinline
define %struct.Memory* @sub_400ba0___libc_csu_fini(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400ba0:
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
  %10 = load i64, i64* %9, align 8, !tbaa !2424
  %11 = inttoptr i64 %10 to i64*
  %12 = load i64, i64* %11
  store i64 %12, i64* %8, align 8, !tbaa !2424
  %13 = add i64 %10, 8
  store i64 %13, i64* %9, align 8, !tbaa !2424
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_400590_to_byte(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %AL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 11
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %DIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %15 = getelementptr inbounds %struct.GPR, %struct.GPR* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.Reg, %struct.Reg* %15, i32 0, i32 0
  %EAX = bitcast %union.anon* %16 to i32*
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 11
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %EDI = bitcast %union.anon* %19 to i32*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RAX = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 11
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RDI = bitcast %union.anon* %25 to i64*
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %27 = getelementptr inbounds %struct.GPR, %struct.GPR* %26, i32 0, i32 13
  %28 = getelementptr inbounds %struct.Reg, %struct.Reg* %27, i32 0, i32 0
  %RSP = bitcast %union.anon* %28 to i64*
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 15
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %RBP = bitcast %union.anon* %31 to i64*
  %32 = load i64, i64* %RBP
  %33 = load i64, i64* %PC
  %34 = add i64 %33, 1
  store i64 %34, i64* %PC
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %36 = load i64, i64* %35, align 8, !tbaa !2424
  %37 = add i64 %36, -8
  %38 = inttoptr i64 %37 to i64*
  store i64 %32, i64* %38
  store i64 %37, i64* %35, align 8, !tbaa !2424
  %39 = load i64, i64* %RSP
  %40 = load i64, i64* %PC
  %41 = add i64 %40, 3
  store i64 %41, i64* %PC
  store i64 %39, i64* %RBP, align 8, !tbaa !2424
  %42 = load i8, i8* %DIL
  %43 = zext i8 %42 to i64
  %44 = load i64, i64* %PC
  %45 = add i64 %44, 3
  store i64 %45, i64* %PC
  store i8 %42, i8* %AL, align 1, !tbaa !2447
  %46 = load i64, i64* %RBP
  %47 = sub i64 %46, 5
  %48 = load i8, i8* %AL
  %49 = zext i8 %48 to i64
  %50 = load i64, i64* %PC
  %51 = add i64 %50, 3
  store i64 %51, i64* %PC
  %52 = inttoptr i64 %47 to i8*
  store i8 %48, i8* %52
  %53 = load i64, i64* %RBP
  %54 = sub i64 %53, 5
  %55 = load i64, i64* %PC
  %56 = add i64 %55, 4
  store i64 %56, i64* %PC
  %57 = inttoptr i64 %54 to i8*
  %58 = load i8, i8* %57
  %59 = zext i8 %58 to i64
  store i64 %59, i64* %RDI, align 8, !tbaa !2424
  %60 = load i32, i32* %EDI
  %61 = zext i32 %60 to i64
  %62 = load i64, i64* %PC
  %63 = add i64 %62, 3
  store i64 %63, i64* %PC
  %64 = sub i32 %60, 57
  %65 = icmp ult i32 %60, 57
  %66 = zext i1 %65 to i8
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %66, i8* %67, align 1, !tbaa !2428
  %68 = and i32 %64, 255
  %69 = call i32 @llvm.ctpop.i32(i32 %68) #16
  %70 = trunc i32 %69 to i8
  %71 = and i8 %70, 1
  %72 = xor i8 %71, 1
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %72, i8* %73, align 1, !tbaa !2442
  %74 = xor i64 57, %61
  %75 = trunc i64 %74 to i32
  %76 = xor i32 %75, %64
  %77 = lshr i32 %76, 4
  %78 = trunc i32 %77 to i8
  %79 = and i8 %78, 1
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %79, i8* %80, align 1, !tbaa !2443
  %81 = icmp eq i32 %64, 0
  %82 = zext i1 %81 to i8
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %82, i8* %83, align 1, !tbaa !2444
  %84 = lshr i32 %64, 31
  %85 = trunc i32 %84 to i8
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %85, i8* %86, align 1, !tbaa !2445
  %87 = lshr i32 %60, 31
  %88 = xor i32 %84, %87
  %89 = add nuw nsw i32 %88, %87
  %90 = icmp eq i32 %89, 2
  %91 = zext i1 %90 to i8
  %92 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %91, i8* %92, align 1, !tbaa !2446
  %93 = load i64, i64* %PC
  %94 = add i64 %93, 21
  %95 = load i64, i64* %PC
  %96 = add i64 %95, 6
  %97 = load i64, i64* %PC
  %98 = add i64 %97, 6
  store i64 %98, i64* %PC
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %100 = load i8, i8* %99, align 1, !tbaa !2444
  %101 = icmp eq i8 %100, 0
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %103 = load i8, i8* %102, align 1, !tbaa !2445
  %104 = icmp ne i8 %103, 0
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %106 = load i8, i8* %105, align 1, !tbaa !2446
  %107 = icmp ne i8 %106, 0
  %108 = xor i1 %104, %107
  %109 = xor i1 %108, true
  %110 = and i1 %101, %109
  %111 = zext i1 %110 to i8
  store i8 %111, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %113 = select i1 %110, i64 %94, i64 %96
  store i64 %113, i64* %112, align 8, !tbaa !2424
  %114 = load i8, i8* %BRANCH_TAKEN
  %115 = icmp eq i8 %114, 1
  %116 = load i64, i64* %RBP
  %117 = sub i64 %116, 5
  %118 = load i64, i64* %PC
  %119 = add i64 %118, 4
  store i64 %119, i64* %PC
  %120 = inttoptr i64 %117 to i8*
  %121 = load i8, i8* %120
  %122 = zext i8 %121 to i64
  store i64 %122, i64* %RAX, align 8, !tbaa !2424
  br i1 %115, label %block_4005b6, label %block_4005a7

block_4005b6:                                     ; preds = %block_400590
  %123 = load i32, i32* %EAX
  %124 = zext i32 %123 to i64
  %125 = load i64, i64* %PC
  %126 = add i64 %125, 3
  store i64 %126, i64* %PC
  %127 = sub i32 %123, 70
  %128 = icmp ult i32 %123, 70
  %129 = zext i1 %128 to i8
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %129, i8* %130, align 1, !tbaa !2428
  %131 = and i32 %127, 255
  %132 = call i32 @llvm.ctpop.i32(i32 %131) #16
  %133 = trunc i32 %132 to i8
  %134 = and i8 %133, 1
  %135 = xor i8 %134, 1
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %135, i8* %136, align 1, !tbaa !2442
  %137 = xor i64 70, %124
  %138 = trunc i64 %137 to i32
  %139 = xor i32 %138, %127
  %140 = lshr i32 %139, 4
  %141 = trunc i32 %140 to i8
  %142 = and i8 %141, 1
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %142, i8* %143, align 1, !tbaa !2443
  %144 = icmp eq i32 %127, 0
  %145 = zext i1 %144 to i8
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %145, i8* %146, align 1, !tbaa !2444
  %147 = lshr i32 %127, 31
  %148 = trunc i32 %147 to i8
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %148, i8* %149, align 1, !tbaa !2445
  %150 = lshr i32 %123, 31
  %151 = xor i32 %147, %150
  %152 = add nuw nsw i32 %151, %150
  %153 = icmp eq i32 %152, 2
  %154 = zext i1 %153 to i8
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %154, i8* %155, align 1, !tbaa !2446
  %156 = load i64, i64* %PC
  %157 = add i64 %156, 21
  %158 = load i64, i64* %PC
  %159 = add i64 %158, 6
  %160 = load i64, i64* %PC
  %161 = add i64 %160, 6
  store i64 %161, i64* %PC
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %163 = load i8, i8* %162, align 1, !tbaa !2444
  %164 = icmp eq i8 %163, 0
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %166 = load i8, i8* %165, align 1, !tbaa !2445
  %167 = icmp ne i8 %166, 0
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %169 = load i8, i8* %168, align 1, !tbaa !2446
  %170 = icmp ne i8 %169, 0
  %171 = xor i1 %167, %170
  %172 = xor i1 %171, true
  %173 = and i1 %164, %172
  %174 = zext i1 %173 to i8
  store i8 %174, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %176 = select i1 %173, i64 %157, i64 %159
  store i64 %176, i64* %175, align 8, !tbaa !2424
  %177 = load i8, i8* %BRANCH_TAKEN
  %178 = icmp eq i8 %177, 1
  %179 = load i64, i64* %RBP
  %180 = sub i64 %179, 5
  %181 = load i64, i64* %PC
  %182 = add i64 %181, 4
  store i64 %182, i64* %PC
  %183 = inttoptr i64 %180 to i8*
  %184 = load i8, i8* %183
  %185 = zext i8 %184 to i64
  store i64 %185, i64* %RAX, align 8, !tbaa !2424
  br i1 %178, label %block_4005d2, label %block_4005c3

block_4005df:                                     ; preds = %block_4005d2
  %186 = sub i64 %316, 5
  %187 = load i64, i64* %PC
  %188 = add i64 %187, 4
  store i64 %188, i64* %PC
  %189 = inttoptr i64 %186 to i8*
  %190 = load i8, i8* %189
  %191 = zext i8 %190 to i64
  store i64 %191, i64* %RAX, align 8, !tbaa !2424
  %192 = load i64, i64* %RAX
  %193 = load i64, i64* %PC
  %194 = add i64 %193, 3
  store i64 %194, i64* %PC
  %195 = trunc i64 %192 to i32
  %196 = sub i32 %195, 87
  %197 = zext i32 %196 to i64
  store i64 %197, i64* %RAX, align 8, !tbaa !2424
  %198 = icmp ult i32 %195, 87
  %199 = zext i1 %198 to i8
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %199, i8* %200, align 1, !tbaa !2428
  %201 = and i32 %196, 255
  %202 = call i32 @llvm.ctpop.i32(i32 %201) #16
  %203 = trunc i32 %202 to i8
  %204 = and i8 %203, 1
  %205 = xor i8 %204, 1
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %205, i8* %206, align 1, !tbaa !2442
  %207 = xor i64 87, %192
  %208 = trunc i64 %207 to i32
  %209 = xor i32 %208, %196
  %210 = lshr i32 %209, 4
  %211 = trunc i32 %210 to i8
  %212 = and i8 %211, 1
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %212, i8* %213, align 1, !tbaa !2443
  %214 = icmp eq i32 %196, 0
  %215 = zext i1 %214 to i8
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %215, i8* %216, align 1, !tbaa !2444
  %217 = lshr i32 %196, 31
  %218 = trunc i32 %217 to i8
  %219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %218, i8* %219, align 1, !tbaa !2445
  %220 = lshr i32 %195, 31
  %221 = xor i32 %217, %220
  %222 = add nuw nsw i32 %221, %220
  %223 = icmp eq i32 %222, 2
  %224 = zext i1 %223 to i8
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %224, i8* %225, align 1, !tbaa !2446
  %226 = load i64, i64* %RBP
  %227 = sub i64 %226, 4
  %228 = load i32, i32* %EAX
  %229 = zext i32 %228 to i64
  %230 = load i64, i64* %PC
  %231 = add i64 %230, 3
  store i64 %231, i64* %PC
  %232 = inttoptr i64 %227 to i32*
  store i32 %228, i32* %232
  %233 = load i64, i64* %PC
  %234 = add i64 %233, 12
  %235 = load i64, i64* %PC
  %236 = add i64 %235, 5
  store i64 %236, i64* %PC
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %234, i64* %237, align 8, !tbaa !2424
  br label %block_4005f5

block_4005f5:                                     ; preds = %block_4005c3, %block_4005a7, %block_4005ee, %block_4005df
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4005ee ], [ %2, %block_4005df ], [ %2, %block_4005c3 ], [ %2, %block_4005a7 ]
  %238 = load i64, i64* %RBP
  %239 = sub i64 %238, 4
  %240 = load i64, i64* %PC
  %241 = add i64 %240, 3
  store i64 %241, i64* %PC
  %242 = inttoptr i64 %239 to i32*
  %243 = load i32, i32* %242
  %244 = zext i32 %243 to i64
  store i64 %244, i64* %RAX, align 8, !tbaa !2424
  %245 = load i64, i64* %PC
  %246 = add i64 %245, 1
  store i64 %246, i64* %PC
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %248 = load i64, i64* %247, align 8, !tbaa !2424
  %249 = add i64 %248, 8
  %250 = inttoptr i64 %248 to i64*
  %251 = load i64, i64* %250
  store i64 %251, i64* %RBP, align 8, !tbaa !2424
  store i64 %249, i64* %247, align 8, !tbaa !2424
  %252 = load i64, i64* %PC
  %253 = add i64 %252, 1
  store i64 %253, i64* %PC
  %254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %256 = load i64, i64* %255, align 8, !tbaa !2424
  %257 = inttoptr i64 %256 to i64*
  %258 = load i64, i64* %257
  store i64 %258, i64* %254, align 8, !tbaa !2424
  %259 = add i64 %256, 8
  store i64 %259, i64* %255, align 8, !tbaa !2424
  ret %struct.Memory* %MEMORY.0

block_4005d2:                                     ; preds = %block_4005b6
  %260 = load i32, i32* %EAX
  %261 = zext i32 %260 to i64
  %262 = load i64, i64* %PC
  %263 = add i64 %262, 3
  store i64 %263, i64* %PC
  %264 = sub i32 %260, 102
  %265 = icmp ult i32 %260, 102
  %266 = zext i1 %265 to i8
  %267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %266, i8* %267, align 1, !tbaa !2428
  %268 = and i32 %264, 255
  %269 = call i32 @llvm.ctpop.i32(i32 %268) #16
  %270 = trunc i32 %269 to i8
  %271 = and i8 %270, 1
  %272 = xor i8 %271, 1
  %273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %272, i8* %273, align 1, !tbaa !2442
  %274 = xor i64 102, %261
  %275 = trunc i64 %274 to i32
  %276 = xor i32 %275, %264
  %277 = lshr i32 %276, 4
  %278 = trunc i32 %277 to i8
  %279 = and i8 %278, 1
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %279, i8* %280, align 1, !tbaa !2443
  %281 = icmp eq i32 %264, 0
  %282 = zext i1 %281 to i8
  %283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %282, i8* %283, align 1, !tbaa !2444
  %284 = lshr i32 %264, 31
  %285 = trunc i32 %284 to i8
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %285, i8* %286, align 1, !tbaa !2445
  %287 = lshr i32 %260, 31
  %288 = xor i32 %284, %287
  %289 = add nuw nsw i32 %288, %287
  %290 = icmp eq i32 %289, 2
  %291 = zext i1 %290 to i8
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %291, i8* %292, align 1, !tbaa !2446
  %293 = load i64, i64* %PC
  %294 = add i64 %293, 21
  %295 = load i64, i64* %PC
  %296 = add i64 %295, 6
  %297 = load i64, i64* %PC
  %298 = add i64 %297, 6
  store i64 %298, i64* %PC
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %300 = load i8, i8* %299, align 1, !tbaa !2444
  %301 = icmp eq i8 %300, 0
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %303 = load i8, i8* %302, align 1, !tbaa !2445
  %304 = icmp ne i8 %303, 0
  %305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %306 = load i8, i8* %305, align 1, !tbaa !2446
  %307 = icmp ne i8 %306, 0
  %308 = xor i1 %304, %307
  %309 = xor i1 %308, true
  %310 = and i1 %301, %309
  %311 = zext i1 %310 to i8
  store i8 %311, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %313 = select i1 %310, i64 %294, i64 %296
  store i64 %313, i64* %312, align 8, !tbaa !2424
  %314 = load i8, i8* %BRANCH_TAKEN
  %315 = icmp eq i8 %314, 1
  %316 = load i64, i64* %RBP
  br i1 %315, label %block_4005ee, label %block_4005df

block_4005ee:                                     ; preds = %block_4005d2
  %317 = sub i64 %316, 4
  %318 = load i64, i64* %PC
  %319 = add i64 %318, 7
  store i64 %319, i64* %PC
  %320 = inttoptr i64 %317 to i32*
  store i32 0, i32* %320
  br label %block_4005f5

block_4005a7:                                     ; preds = %block_400590
  %321 = load i64, i64* %RAX
  %322 = load i64, i64* %PC
  %323 = add i64 %322, 3
  store i64 %323, i64* %PC
  %324 = trunc i64 %321 to i32
  %325 = sub i32 %324, 48
  %326 = zext i32 %325 to i64
  store i64 %326, i64* %RAX, align 8, !tbaa !2424
  %327 = icmp ult i32 %324, 48
  %328 = zext i1 %327 to i8
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %328, i8* %329, align 1, !tbaa !2428
  %330 = and i32 %325, 255
  %331 = call i32 @llvm.ctpop.i32(i32 %330) #16
  %332 = trunc i32 %331 to i8
  %333 = and i8 %332, 1
  %334 = xor i8 %333, 1
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %334, i8* %335, align 1, !tbaa !2442
  %336 = xor i64 48, %321
  %337 = trunc i64 %336 to i32
  %338 = xor i32 %337, %325
  %339 = lshr i32 %338, 4
  %340 = trunc i32 %339 to i8
  %341 = and i8 %340, 1
  %342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %341, i8* %342, align 1, !tbaa !2443
  %343 = icmp eq i32 %325, 0
  %344 = zext i1 %343 to i8
  %345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %344, i8* %345, align 1, !tbaa !2444
  %346 = lshr i32 %325, 31
  %347 = trunc i32 %346 to i8
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %347, i8* %348, align 1, !tbaa !2445
  %349 = lshr i32 %324, 31
  %350 = xor i32 %346, %349
  %351 = add nuw nsw i32 %350, %349
  %352 = icmp eq i32 %351, 2
  %353 = zext i1 %352 to i8
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %353, i8* %354, align 1, !tbaa !2446
  %355 = load i64, i64* %RBP
  %356 = sub i64 %355, 4
  %357 = load i32, i32* %EAX
  %358 = zext i32 %357 to i64
  %359 = load i64, i64* %PC
  %360 = add i64 %359, 3
  store i64 %360, i64* %PC
  %361 = inttoptr i64 %356 to i32*
  store i32 %357, i32* %361
  %362 = load i64, i64* %PC
  %363 = add i64 %362, 68
  %364 = load i64, i64* %PC
  %365 = add i64 %364, 5
  store i64 %365, i64* %PC
  %366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %363, i64* %366, align 8, !tbaa !2424
  br label %block_4005f5

block_4005c3:                                     ; preds = %block_4005b6
  %367 = load i64, i64* %RAX
  %368 = load i64, i64* %PC
  %369 = add i64 %368, 3
  store i64 %369, i64* %PC
  %370 = trunc i64 %367 to i32
  %371 = sub i32 %370, 55
  %372 = zext i32 %371 to i64
  store i64 %372, i64* %RAX, align 8, !tbaa !2424
  %373 = icmp ult i32 %370, 55
  %374 = zext i1 %373 to i8
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %374, i8* %375, align 1, !tbaa !2428
  %376 = and i32 %371, 255
  %377 = call i32 @llvm.ctpop.i32(i32 %376) #16
  %378 = trunc i32 %377 to i8
  %379 = and i8 %378, 1
  %380 = xor i8 %379, 1
  %381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %380, i8* %381, align 1, !tbaa !2442
  %382 = xor i64 55, %367
  %383 = trunc i64 %382 to i32
  %384 = xor i32 %383, %371
  %385 = lshr i32 %384, 4
  %386 = trunc i32 %385 to i8
  %387 = and i8 %386, 1
  %388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %387, i8* %388, align 1, !tbaa !2443
  %389 = icmp eq i32 %371, 0
  %390 = zext i1 %389 to i8
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %390, i8* %391, align 1, !tbaa !2444
  %392 = lshr i32 %371, 31
  %393 = trunc i32 %392 to i8
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %393, i8* %394, align 1, !tbaa !2445
  %395 = lshr i32 %370, 31
  %396 = xor i32 %392, %395
  %397 = add nuw nsw i32 %396, %395
  %398 = icmp eq i32 %397, 2
  %399 = zext i1 %398 to i8
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %399, i8* %400, align 1, !tbaa !2446
  %401 = load i64, i64* %RBP
  %402 = sub i64 %401, 4
  %403 = load i32, i32* %EAX
  %404 = zext i32 %403 to i64
  %405 = load i64, i64* %PC
  %406 = add i64 %405, 3
  store i64 %406, i64* %PC
  %407 = inttoptr i64 %402 to i32*
  store i32 %403, i32* %407
  %408 = load i64, i64* %PC
  %409 = add i64 %408, 40
  %410 = load i64, i64* %PC
  %411 = add i64 %410, 5
  store i64 %411, i64* %PC
  %412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %409, i64* %412, align 8, !tbaa !2424
  br label %block_4005f5
}

; Function Attrs: noinline
define %struct.Memory* @sub_400b30___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400b30:
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
  %16 = getelementptr inbounds %struct.GPR, %struct.GPR* %15, i32 0, i32 31
  %17 = getelementptr inbounds %struct.Reg, %struct.Reg* %16, i32 0, i32 0
  %R15D = bitcast %union.anon* %17 to i32*
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
  %55 = load i64, i64* %54, align 8, !tbaa !2424
  %56 = add i64 %55, -8
  %57 = inttoptr i64 %56 to i64*
  store i64 %51, i64* %57
  store i64 %56, i64* %54, align 8, !tbaa !2424
  %58 = load i64, i64* %R14
  %59 = load i64, i64* %PC
  %60 = add i64 %59, 2
  store i64 %60, i64* %PC
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %62 = load i64, i64* %61, align 8, !tbaa !2424
  %63 = add i64 %62, -8
  %64 = inttoptr i64 %63 to i64*
  store i64 %58, i64* %64
  store i64 %63, i64* %61, align 8, !tbaa !2424
  %65 = bitcast i32* %R15D to i64*
  %66 = load i32, i32* %EDI
  %67 = zext i32 %66 to i64
  %68 = load i64, i64* %PC
  %69 = add i64 %68, 3
  store i64 %69, i64* %PC
  %70 = and i64 %67, 4294967295
  store i64 %70, i64* %65, align 8, !tbaa !2424
  %71 = load i64, i64* %R13
  %72 = load i64, i64* %PC
  %73 = add i64 %72, 2
  store i64 %73, i64* %PC
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %75 = load i64, i64* %74, align 8, !tbaa !2424
  %76 = add i64 %75, -8
  %77 = inttoptr i64 %76 to i64*
  store i64 %71, i64* %77
  store i64 %76, i64* %74, align 8, !tbaa !2424
  %78 = load i64, i64* %R12
  %79 = load i64, i64* %PC
  %80 = add i64 %79, 2
  store i64 %80, i64* %PC
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %82 = load i64, i64* %81, align 8, !tbaa !2424
  %83 = add i64 %82, -8
  %84 = inttoptr i64 %83 to i64*
  store i64 %78, i64* %84
  store i64 %83, i64* %81, align 8, !tbaa !2424
  %85 = load i64, i64* %PC
  %86 = add i64 %85, 7
  store i64 %86, i64* %PC
  store i64 ptrtoint (%seg_600e10__init_array_type* @seg_600e10__init_array to i64), i64* %R12, align 8, !tbaa !2424
  %87 = load i64, i64* %RBP
  %88 = load i64, i64* %PC
  %89 = add i64 %88, 1
  store i64 %89, i64* %PC
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %91 = load i64, i64* %90, align 8, !tbaa !2424
  %92 = add i64 %91, -8
  %93 = inttoptr i64 %92 to i64*
  store i64 %87, i64* %93
  store i64 %92, i64* %90, align 8, !tbaa !2424
  %94 = load i64, i64* %PC
  %95 = add i64 %94, 7
  store i64 %95, i64* %PC
  store i64 add (i64 ptrtoint (%seg_600e10__init_array_type* @seg_600e10__init_array to i64), i64 8), i64* %RBP, align 8, !tbaa !2424
  %96 = load i64, i64* %RBX
  %97 = load i64, i64* %PC
  %98 = add i64 %97, 1
  store i64 %98, i64* %PC
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %100 = load i64, i64* %99, align 8, !tbaa !2424
  %101 = add i64 %100, -8
  %102 = inttoptr i64 %101 to i64*
  store i64 %96, i64* %102
  store i64 %101, i64* %99, align 8, !tbaa !2424
  %103 = load i64, i64* %RSI
  %104 = load i64, i64* %PC
  %105 = add i64 %104, 3
  store i64 %105, i64* %PC
  store i64 %103, i64* %R14, align 8, !tbaa !2424
  %106 = load i64, i64* %RDX
  %107 = load i64, i64* %PC
  %108 = add i64 %107, 3
  store i64 %108, i64* %PC
  store i64 %106, i64* %R13, align 8, !tbaa !2424
  %109 = load i64, i64* %RBP
  %110 = load i64, i64* %R12
  %111 = load i64, i64* %PC
  %112 = add i64 %111, 3
  store i64 %112, i64* %PC
  %113 = sub i64 %109, %110
  store i64 %113, i64* %RBP, align 8, !tbaa !2424
  %114 = icmp ult i64 %109, %110
  %115 = zext i1 %114 to i8
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %115, i8* %116, align 1, !tbaa !2428
  %117 = trunc i64 %113 to i32
  %118 = and i32 %117, 255
  %119 = call i32 @llvm.ctpop.i32(i32 %118) #16
  %120 = trunc i32 %119 to i8
  %121 = and i8 %120, 1
  %122 = xor i8 %121, 1
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %122, i8* %123, align 1, !tbaa !2442
  %124 = xor i64 %110, %109
  %125 = xor i64 %124, %113
  %126 = lshr i64 %125, 4
  %127 = trunc i64 %126 to i8
  %128 = and i8 %127, 1
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %128, i8* %129, align 1, !tbaa !2443
  %130 = icmp eq i64 %113, 0
  %131 = zext i1 %130 to i8
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %131, i8* %132, align 1, !tbaa !2444
  %133 = lshr i64 %113, 63
  %134 = trunc i64 %133 to i8
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %134, i8* %135, align 1, !tbaa !2445
  %136 = lshr i64 %109, 63
  %137 = lshr i64 %110, 63
  %138 = xor i64 %137, %136
  %139 = xor i64 %133, %136
  %140 = add nuw nsw i64 %139, %138
  %141 = icmp eq i64 %140, 2
  %142 = zext i1 %141 to i8
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %142, i8* %143, align 1, !tbaa !2446
  %144 = load i64, i64* %RSP
  %145 = load i64, i64* %PC
  %146 = add i64 %145, 4
  store i64 %146, i64* %PC
  %147 = sub i64 %144, 8
  store i64 %147, i64* %RSP, align 8, !tbaa !2424
  %148 = icmp ult i64 %144, 8
  %149 = zext i1 %148 to i8
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %149, i8* %150, align 1, !tbaa !2428
  %151 = trunc i64 %147 to i32
  %152 = and i32 %151, 255
  %153 = call i32 @llvm.ctpop.i32(i32 %152) #16
  %154 = trunc i32 %153 to i8
  %155 = and i8 %154, 1
  %156 = xor i8 %155, 1
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %156, i8* %157, align 1, !tbaa !2442
  %158 = xor i64 8, %144
  %159 = xor i64 %158, %147
  %160 = lshr i64 %159, 4
  %161 = trunc i64 %160 to i8
  %162 = and i8 %161, 1
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %162, i8* %163, align 1, !tbaa !2443
  %164 = icmp eq i64 %147, 0
  %165 = zext i1 %164 to i8
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %165, i8* %166, align 1, !tbaa !2444
  %167 = lshr i64 %147, 63
  %168 = trunc i64 %167 to i8
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %168, i8* %169, align 1, !tbaa !2445
  %170 = lshr i64 %144, 63
  %171 = xor i64 %167, %170
  %172 = add nuw nsw i64 %171, %170
  %173 = icmp eq i64 %172, 2
  %174 = zext i1 %173 to i8
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %174, i8* %175, align 1, !tbaa !2446
  %176 = load i64, i64* %RBP
  %177 = load i64, i64* %PC
  %178 = add i64 %177, 4
  store i64 %178, i64* %PC
  %179 = ashr i64 %176, 2
  %180 = trunc i64 %179 to i8
  %181 = and i8 %180, 1
  %182 = ashr i64 %179, 1
  store i64 %182, i64* %RBP, align 8, !tbaa !2424
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %181, i8* %183, align 1, !tbaa !2447
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %185 = trunc i64 %182 to i32
  %186 = and i32 %185, 255
  %187 = call i32 @llvm.ctpop.i32(i32 %186) #16
  %188 = trunc i32 %187 to i8
  %189 = and i8 %188, 1
  %190 = xor i8 %189, 1
  store i8 %190, i8* %184, align 1, !tbaa !2447
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %191, align 1, !tbaa !2447
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %193 = icmp eq i64 %182, 0
  %194 = zext i1 %193 to i8
  store i8 %194, i8* %192, align 1, !tbaa !2447
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %196 = lshr i64 %182, 63
  %197 = trunc i64 %196 to i8
  store i8 %197, i8* %195, align 1, !tbaa !2447
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %198, align 1, !tbaa !2447
  %199 = load i64, i64* %PC
  %200 = sub i64 %199, 1796
  %201 = load i64, i64* %PC
  %202 = add i64 %201, 5
  %203 = load i64, i64* %PC
  %204 = add i64 %203, 5
  store i64 %204, i64* %PC
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %206 = load i64, i64* %205, align 8, !tbaa !2424
  %207 = add i64 %206, -8
  %208 = inttoptr i64 %207 to i64*
  store i64 %202, i64* %208
  store i64 %207, i64* %205, align 8, !tbaa !2424
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %200, i64* %209, align 8, !tbaa !2424
  %210 = load i64, i64* %PC
  %211 = call %struct.Memory* @sub_400458__init_proc(%struct.State* %0, i64 %210, %struct.Memory* %2)
  %212 = load i64, i64* %RBP
  %213 = load i64, i64* %RBP
  %214 = load i64, i64* %PC
  %215 = add i64 %214, 3
  store i64 %215, i64* %PC
  %216 = and i64 %213, %212
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %217, align 1, !tbaa !2428
  %218 = trunc i64 %216 to i32
  %219 = and i32 %218, 255
  %220 = call i32 @llvm.ctpop.i32(i32 %219) #16
  %221 = trunc i32 %220 to i8
  %222 = and i8 %221, 1
  %223 = xor i8 %222, 1
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %223, i8* %224, align 1, !tbaa !2442
  %225 = icmp eq i64 %216, 0
  %226 = zext i1 %225 to i8
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %226, i8* %227, align 1, !tbaa !2444
  %228 = lshr i64 %216, 63
  %229 = trunc i64 %228 to i8
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %229, i8* %230, align 1, !tbaa !2445
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %231, align 1, !tbaa !2446
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %232, align 1, !tbaa !2443
  %233 = load i64, i64* %PC
  %234 = add i64 %233, 34
  %235 = load i64, i64* %PC
  %236 = add i64 %235, 2
  %237 = load i64, i64* %PC
  %238 = add i64 %237, 2
  store i64 %238, i64* %PC
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %240 = load i8, i8* %239, align 1, !tbaa !2444
  store i8 %240, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %242 = icmp ne i8 %240, 0
  %243 = select i1 %242, i64 %234, i64 %236
  store i64 %243, i64* %241, align 8, !tbaa !2424
  %244 = load i8, i8* %BRANCH_TAKEN
  %245 = icmp eq i8 %244, 1
  br i1 %245, label %block_400b86, label %block_400b66

block_400b86:                                     ; preds = %block_400b70, %block_400b30
  %MEMORY.0 = phi %struct.Memory* [ %211, %block_400b30 ], [ %387, %block_400b70 ]
  %246 = load i64, i64* %RSP
  %247 = load i64, i64* %PC
  %248 = add i64 %247, 4
  store i64 %248, i64* %PC
  %249 = add i64 8, %246
  store i64 %249, i64* %RSP, align 8, !tbaa !2424
  %250 = icmp ult i64 %249, %246
  %251 = icmp ult i64 %249, 8
  %252 = or i1 %250, %251
  %253 = zext i1 %252 to i8
  %254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %253, i8* %254, align 1, !tbaa !2428
  %255 = trunc i64 %249 to i32
  %256 = and i32 %255, 255
  %257 = call i32 @llvm.ctpop.i32(i32 %256) #16
  %258 = trunc i32 %257 to i8
  %259 = and i8 %258, 1
  %260 = xor i8 %259, 1
  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %260, i8* %261, align 1, !tbaa !2442
  %262 = xor i64 8, %246
  %263 = xor i64 %262, %249
  %264 = lshr i64 %263, 4
  %265 = trunc i64 %264 to i8
  %266 = and i8 %265, 1
  %267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %266, i8* %267, align 1, !tbaa !2443
  %268 = icmp eq i64 %249, 0
  %269 = zext i1 %268 to i8
  %270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %269, i8* %270, align 1, !tbaa !2444
  %271 = lshr i64 %249, 63
  %272 = trunc i64 %271 to i8
  %273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %272, i8* %273, align 1, !tbaa !2445
  %274 = lshr i64 %246, 63
  %275 = xor i64 %271, %274
  %276 = add nuw nsw i64 %275, %271
  %277 = icmp eq i64 %276, 2
  %278 = zext i1 %277 to i8
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %278, i8* %279, align 1, !tbaa !2446
  %280 = load i64, i64* %PC
  %281 = add i64 %280, 1
  store i64 %281, i64* %PC
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %283 = load i64, i64* %282, align 8, !tbaa !2424
  %284 = add i64 %283, 8
  %285 = inttoptr i64 %283 to i64*
  %286 = load i64, i64* %285
  store i64 %286, i64* %RBX, align 8, !tbaa !2424
  store i64 %284, i64* %282, align 8, !tbaa !2424
  %287 = load i64, i64* %PC
  %288 = add i64 %287, 1
  store i64 %288, i64* %PC
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %290 = load i64, i64* %289, align 8, !tbaa !2424
  %291 = add i64 %290, 8
  %292 = inttoptr i64 %290 to i64*
  %293 = load i64, i64* %292
  store i64 %293, i64* %RBP, align 8, !tbaa !2424
  store i64 %291, i64* %289, align 8, !tbaa !2424
  %294 = load i64, i64* %PC
  %295 = add i64 %294, 2
  store i64 %295, i64* %PC
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %297 = load i64, i64* %296, align 8, !tbaa !2424
  %298 = add i64 %297, 8
  %299 = inttoptr i64 %297 to i64*
  %300 = load i64, i64* %299
  store i64 %300, i64* %R12, align 8, !tbaa !2424
  store i64 %298, i64* %296, align 8, !tbaa !2424
  %301 = load i64, i64* %PC
  %302 = add i64 %301, 2
  store i64 %302, i64* %PC
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %304 = load i64, i64* %303, align 8, !tbaa !2424
  %305 = add i64 %304, 8
  %306 = inttoptr i64 %304 to i64*
  %307 = load i64, i64* %306
  store i64 %307, i64* %R13, align 8, !tbaa !2424
  store i64 %305, i64* %303, align 8, !tbaa !2424
  %308 = load i64, i64* %PC
  %309 = add i64 %308, 2
  store i64 %309, i64* %PC
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %311 = load i64, i64* %310, align 8, !tbaa !2424
  %312 = add i64 %311, 8
  %313 = inttoptr i64 %311 to i64*
  %314 = load i64, i64* %313
  store i64 %314, i64* %R14, align 8, !tbaa !2424
  store i64 %312, i64* %310, align 8, !tbaa !2424
  %315 = load i64, i64* %PC
  %316 = add i64 %315, 2
  store i64 %316, i64* %PC
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %318 = load i64, i64* %317, align 8, !tbaa !2424
  %319 = add i64 %318, 8
  %320 = inttoptr i64 %318 to i64*
  %321 = load i64, i64* %320
  store i64 %321, i64* %R15, align 8, !tbaa !2424
  store i64 %319, i64* %317, align 8, !tbaa !2424
  %322 = load i64, i64* %PC
  %323 = add i64 %322, 1
  store i64 %323, i64* %PC
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %326 = load i64, i64* %325, align 8, !tbaa !2424
  %327 = inttoptr i64 %326 to i64*
  %328 = load i64, i64* %327
  store i64 %328, i64* %324, align 8, !tbaa !2424
  %329 = add i64 %326, 8
  store i64 %329, i64* %325, align 8, !tbaa !2424
  ret %struct.Memory* %MEMORY.0

block_400b66:                                     ; preds = %block_400b30
  %330 = load i64, i64* %RBX
  %331 = load i32, i32* %EBX
  %332 = zext i32 %331 to i64
  %333 = load i64, i64* %PC
  %334 = add i64 %333, 2
  store i64 %334, i64* %PC
  %335 = xor i64 %332, %330
  %336 = trunc i64 %335 to i32
  %337 = and i64 %335, 4294967295
  store i64 %337, i64* %RBX, align 8, !tbaa !2424
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %338, align 1, !tbaa !2428
  %339 = and i32 %336, 255
  %340 = call i32 @llvm.ctpop.i32(i32 %339) #16
  %341 = trunc i32 %340 to i8
  %342 = and i8 %341, 1
  %343 = xor i8 %342, 1
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %343, i8* %344, align 1, !tbaa !2442
  %345 = icmp eq i32 %336, 0
  %346 = zext i1 %345 to i8
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %346, i8* %347, align 1, !tbaa !2444
  %348 = lshr i32 %336, 31
  %349 = trunc i32 %348 to i8
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %349, i8* %350, align 1, !tbaa !2445
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %351, align 1, !tbaa !2446
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %352, align 1, !tbaa !2443
  %353 = load i64, i64* %RAX
  %354 = load i64, i64* %RAX
  %355 = add i64 %354, %353
  %356 = load i32, i32* %EAX
  %357 = zext i32 %356 to i64
  %358 = load i64, i64* %PC
  %359 = add i64 %358, 8
  store i64 %359, i64* %PC
  br label %block_400b70

block_400b70:                                     ; preds = %block_400b70, %block_400b66
  %MEMORY.1 = phi %struct.Memory* [ %211, %block_400b66 ], [ %387, %block_400b70 ]
  %360 = load i64, i64* %R13
  %361 = load i64, i64* %PC
  %362 = add i64 %361, 3
  store i64 %362, i64* %PC
  store i64 %360, i64* %RDX, align 8, !tbaa !2424
  %363 = load i64, i64* %R14
  %364 = load i64, i64* %PC
  %365 = add i64 %364, 3
  store i64 %365, i64* %PC
  store i64 %363, i64* %RSI, align 8, !tbaa !2424
  %366 = load i32, i32* %R15D
  %367 = zext i32 %366 to i64
  %368 = load i64, i64* %PC
  %369 = add i64 %368, 3
  store i64 %369, i64* %PC
  %370 = and i64 %367, 4294967295
  store i64 %370, i64* %RDI, align 8, !tbaa !2424
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
  %380 = load i64, i64* %379, align 8, !tbaa !2424
  %381 = add i64 %380, -8
  %382 = inttoptr i64 %381 to i64*
  store i64 %376, i64* %382
  store i64 %381, i64* %379, align 8, !tbaa !2424
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %384 = inttoptr i64 %374 to i64*
  %385 = load i64, i64* %384
  store i64 %385, i64* %383, align 8, !tbaa !2424
  %386 = load i64, i64* %PC
  %387 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 %386, %struct.Memory* %MEMORY.1)
  %388 = load i64, i64* %RBX
  %389 = load i64, i64* %PC
  %390 = add i64 %389, 4
  store i64 %390, i64* %PC
  %391 = add i64 1, %388
  store i64 %391, i64* %RBX, align 8, !tbaa !2424
  %392 = icmp ult i64 %391, %388
  %393 = icmp ult i64 %391, 1
  %394 = or i1 %392, %393
  %395 = zext i1 %394 to i8
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %395, i8* %396, align 1, !tbaa !2428
  %397 = trunc i64 %391 to i32
  %398 = and i32 %397, 255
  %399 = call i32 @llvm.ctpop.i32(i32 %398) #16
  %400 = trunc i32 %399 to i8
  %401 = and i8 %400, 1
  %402 = xor i8 %401, 1
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %402, i8* %403, align 1, !tbaa !2442
  %404 = xor i64 1, %388
  %405 = xor i64 %404, %391
  %406 = lshr i64 %405, 4
  %407 = trunc i64 %406 to i8
  %408 = and i8 %407, 1
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %408, i8* %409, align 1, !tbaa !2443
  %410 = icmp eq i64 %391, 0
  %411 = zext i1 %410 to i8
  %412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %411, i8* %412, align 1, !tbaa !2444
  %413 = lshr i64 %391, 63
  %414 = trunc i64 %413 to i8
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %414, i8* %415, align 1, !tbaa !2445
  %416 = lshr i64 %388, 63
  %417 = xor i64 %413, %416
  %418 = add nuw nsw i64 %417, %413
  %419 = icmp eq i64 %418, 2
  %420 = zext i1 %419 to i8
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %420, i8* %421, align 1, !tbaa !2446
  %422 = load i64, i64* %RBP
  %423 = load i64, i64* %RBX
  %424 = load i64, i64* %PC
  %425 = add i64 %424, 3
  store i64 %425, i64* %PC
  %426 = sub i64 %422, %423
  %427 = icmp ult i64 %422, %423
  %428 = zext i1 %427 to i8
  %429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %428, i8* %429, align 1, !tbaa !2428
  %430 = trunc i64 %426 to i32
  %431 = and i32 %430, 255
  %432 = call i32 @llvm.ctpop.i32(i32 %431) #16
  %433 = trunc i32 %432 to i8
  %434 = and i8 %433, 1
  %435 = xor i8 %434, 1
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %435, i8* %436, align 1, !tbaa !2442
  %437 = xor i64 %423, %422
  %438 = xor i64 %437, %426
  %439 = lshr i64 %438, 4
  %440 = trunc i64 %439 to i8
  %441 = and i8 %440, 1
  %442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %441, i8* %442, align 1, !tbaa !2443
  %443 = icmp eq i64 %426, 0
  %444 = zext i1 %443 to i8
  %445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %444, i8* %445, align 1, !tbaa !2444
  %446 = lshr i64 %426, 63
  %447 = trunc i64 %446 to i8
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %447, i8* %448, align 1, !tbaa !2445
  %449 = lshr i64 %422, 63
  %450 = lshr i64 %423, 63
  %451 = xor i64 %450, %449
  %452 = xor i64 %446, %449
  %453 = add nuw nsw i64 %452, %451
  %454 = icmp eq i64 %453, 2
  %455 = zext i1 %454 to i8
  %456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %455, i8* %456, align 1, !tbaa !2446
  %457 = load i64, i64* %PC
  %458 = sub i64 %457, 20
  %459 = load i64, i64* %PC
  %460 = add i64 %459, 2
  %461 = load i64, i64* %PC
  %462 = add i64 %461, 2
  store i64 %462, i64* %PC
  %463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %464 = load i8, i8* %463, align 1, !tbaa !2444
  %465 = icmp eq i8 %464, 0
  %466 = zext i1 %465 to i8
  store i8 %466, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %468 = select i1 %465, i64 %458, i64 %460
  store i64 %468, i64* %467, align 8, !tbaa !2424
  %469 = load i8, i8* %BRANCH_TAKEN
  %470 = icmp eq i8 %469, 1
  br i1 %470, label %block_400b70, label %block_400b86
}

; Function Attrs: noinline
define %struct.Memory* @sub_400ba4__term_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400ba4:
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
  store i64 %12, i64* %RSP, align 8, !tbaa !2424
  %13 = icmp ult i64 %9, 8
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1, !tbaa !2428
  %16 = trunc i64 %12 to i32
  %17 = and i32 %16, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17) #16
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1, !tbaa !2442
  %23 = xor i64 8, %9
  %24 = xor i64 %23, %12
  %25 = lshr i64 %24, 4
  %26 = trunc i64 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1, !tbaa !2443
  %29 = icmp eq i64 %12, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1, !tbaa !2444
  %32 = lshr i64 %12, 63
  %33 = trunc i64 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1, !tbaa !2445
  %35 = lshr i64 %9, 63
  %36 = xor i64 %32, %35
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1, !tbaa !2446
  %41 = load i64, i64* %RSP
  %42 = load i64, i64* %PC
  %43 = add i64 %42, 4
  store i64 %43, i64* %PC
  %44 = add i64 8, %41
  store i64 %44, i64* %RSP, align 8, !tbaa !2424
  %45 = icmp ult i64 %44, %41
  %46 = icmp ult i64 %44, 8
  %47 = or i1 %45, %46
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %48, i8* %49, align 1, !tbaa !2428
  %50 = trunc i64 %44 to i32
  %51 = and i32 %50, 255
  %52 = call i32 @llvm.ctpop.i32(i32 %51) #16
  %53 = trunc i32 %52 to i8
  %54 = and i8 %53, 1
  %55 = xor i8 %54, 1
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %55, i8* %56, align 1, !tbaa !2442
  %57 = xor i64 8, %41
  %58 = xor i64 %57, %44
  %59 = lshr i64 %58, 4
  %60 = trunc i64 %59 to i8
  %61 = and i8 %60, 1
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %61, i8* %62, align 1, !tbaa !2443
  %63 = icmp eq i64 %44, 0
  %64 = zext i1 %63 to i8
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %64, i8* %65, align 1, !tbaa !2444
  %66 = lshr i64 %44, 63
  %67 = trunc i64 %66 to i8
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %67, i8* %68, align 1, !tbaa !2445
  %69 = lshr i64 %41, 63
  %70 = xor i64 %66, %69
  %71 = add nuw nsw i64 %70, %66
  %72 = icmp eq i64 %71, 2
  %73 = zext i1 %72 to i8
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %73, i8* %74, align 1, !tbaa !2446
  %75 = load i64, i64* %PC
  %76 = add i64 %75, 1
  store i64 %76, i64* %PC
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %79 = load i64, i64* %78, align 8, !tbaa !2424
  %80 = inttoptr i64 %79 to i64*
  %81 = load i64, i64* %80
  store i64 %81, i64* %77, align 8, !tbaa !2424
  %82 = add i64 %79, 8
  store i64 %82, i64* %78, align 8, !tbaa !2424
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_400660_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400660:
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
  %20 = getelementptr inbounds %struct.GPR, %struct.GPR* %19, i32 0, i32 9
  %21 = getelementptr inbounds %struct.Reg, %struct.Reg* %20, i32 0, i32 0
  %RSI = bitcast %union.anon* %21 to i64*
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %23 = getelementptr inbounds %struct.GPR, %struct.GPR* %22, i32 0, i32 11
  %24 = getelementptr inbounds %struct.Reg, %struct.Reg* %23, i32 0, i32 0
  %RDI = bitcast %union.anon* %24 to i64*
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %26 = getelementptr inbounds %struct.GPR, %struct.GPR* %25, i32 0, i32 13
  %27 = getelementptr inbounds %struct.Reg, %struct.Reg* %26, i32 0, i32 0
  %RSP = bitcast %union.anon* %27 to i64*
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %29 = getelementptr inbounds %struct.GPR, %struct.GPR* %28, i32 0, i32 15
  %30 = getelementptr inbounds %struct.Reg, %struct.Reg* %29, i32 0, i32 0
  %RBP = bitcast %union.anon* %30 to i64*
  %31 = load i64, i64* %RBP
  %32 = load i64, i64* %PC
  %33 = add i64 %32, 1
  store i64 %33, i64* %PC
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %35 = load i64, i64* %34, align 8, !tbaa !2424
  %36 = add i64 %35, -8
  %37 = inttoptr i64 %36 to i64*
  store i64 %31, i64* %37
  store i64 %36, i64* %34, align 8, !tbaa !2424
  %38 = load i64, i64* %RSP
  %39 = load i64, i64* %PC
  %40 = add i64 %39, 3
  store i64 %40, i64* %PC
  store i64 %38, i64* %RBP, align 8, !tbaa !2424
  %41 = load i64, i64* %RSP
  %42 = load i64, i64* %PC
  %43 = add i64 %42, 4
  store i64 %43, i64* %PC
  %44 = sub i64 %41, 48
  store i64 %44, i64* %RSP, align 8, !tbaa !2424
  %45 = icmp ult i64 %41, 48
  %46 = zext i1 %45 to i8
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %46, i8* %47, align 1, !tbaa !2428
  %48 = trunc i64 %44 to i32
  %49 = and i32 %48, 255
  %50 = call i32 @llvm.ctpop.i32(i32 %49) #16
  %51 = trunc i32 %50 to i8
  %52 = and i8 %51, 1
  %53 = xor i8 %52, 1
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %53, i8* %54, align 1, !tbaa !2442
  %55 = xor i64 48, %41
  %56 = xor i64 %55, %44
  %57 = lshr i64 %56, 4
  %58 = trunc i64 %57 to i8
  %59 = and i8 %58, 1
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %59, i8* %60, align 1, !tbaa !2443
  %61 = icmp eq i64 %44, 0
  %62 = zext i1 %61 to i8
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %62, i8* %63, align 1, !tbaa !2444
  %64 = lshr i64 %44, 63
  %65 = trunc i64 %64 to i8
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %65, i8* %66, align 1, !tbaa !2445
  %67 = lshr i64 %41, 63
  %68 = xor i64 %64, %67
  %69 = add nuw nsw i64 %68, %67
  %70 = icmp eq i64 %69, 2
  %71 = zext i1 %70 to i8
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %71, i8* %72, align 1, !tbaa !2446
  %73 = load i64, i64* %RBP
  %74 = sub i64 %73, 4
  %75 = load i64, i64* %PC
  %76 = add i64 %75, 7
  store i64 %76, i64* %PC
  %77 = inttoptr i64 %74 to i32*
  store i32 0, i32* %77
  %78 = load i64, i64* %RBP
  %79 = sub i64 %78, 8
  %80 = load i32, i32* %EDI
  %81 = zext i32 %80 to i64
  %82 = load i64, i64* %PC
  %83 = add i64 %82, 3
  store i64 %83, i64* %PC
  %84 = inttoptr i64 %79 to i32*
  store i32 %80, i32* %84
  %85 = load i64, i64* %RBP
  %86 = sub i64 %85, 16
  %87 = load i64, i64* %RSI
  %88 = load i64, i64* %PC
  %89 = add i64 %88, 4
  store i64 %89, i64* %PC
  %90 = inttoptr i64 %86 to i64*
  store i64 %87, i64* %90
  %91 = load i64, i64* %RBP
  %92 = sub i64 %91, 8
  %93 = load i64, i64* %PC
  %94 = add i64 %93, 4
  store i64 %94, i64* %PC
  %95 = inttoptr i64 %92 to i32*
  %96 = load i32, i32* %95
  %97 = sub i32 %96, 2
  %98 = icmp ult i32 %96, 2
  %99 = zext i1 %98 to i8
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %99, i8* %100, align 1, !tbaa !2428
  %101 = and i32 %97, 255
  %102 = call i32 @llvm.ctpop.i32(i32 %101) #16
  %103 = trunc i32 %102 to i8
  %104 = and i8 %103, 1
  %105 = xor i8 %104, 1
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %105, i8* %106, align 1, !tbaa !2442
  %107 = xor i32 %96, 2
  %108 = xor i32 %107, %97
  %109 = lshr i32 %108, 4
  %110 = trunc i32 %109 to i8
  %111 = and i8 %110, 1
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %111, i8* %112, align 1, !tbaa !2443
  %113 = icmp eq i32 %97, 0
  %114 = zext i1 %113 to i8
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %114, i8* %115, align 1, !tbaa !2444
  %116 = lshr i32 %97, 31
  %117 = trunc i32 %116 to i8
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %117, i8* %118, align 1, !tbaa !2445
  %119 = lshr i32 %96, 31
  %120 = xor i32 %116, %119
  %121 = add nuw nsw i32 %120, %119
  %122 = icmp eq i32 %121, 2
  %123 = zext i1 %122 to i8
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %123, i8* %124, align 1, !tbaa !2446
  %125 = load i64, i64* %PC
  %126 = add i64 %125, 46
  %127 = load i64, i64* %PC
  %128 = add i64 %127, 6
  %129 = load i64, i64* %PC
  %130 = add i64 %129, 6
  store i64 %130, i64* %PC
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %132 = load i8, i8* %131, align 1, !tbaa !2445
  %133 = icmp ne i8 %132, 0
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %135 = load i8, i8* %134, align 1, !tbaa !2446
  %136 = icmp ne i8 %135, 0
  %137 = xor i1 %133, %136
  %138 = xor i1 %137, true
  %139 = zext i1 %138 to i8
  store i8 %139, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %141 = select i1 %137, i64 %128, i64 %126
  store i64 %141, i64* %140, align 8, !tbaa !2424
  %142 = load i8, i8* %BRANCH_TAKEN
  %143 = icmp eq i8 %142, 1
  br i1 %143, label %block_4006a8, label %block_400680

block_4006fc:                                     ; preds = %block_4006e5, %block_4006cc
  %MEMORY.0 = phi %struct.Memory* [ %294, %block_4006e5 ], [ %172, %block_4006cc ]
  %144 = load i64, i64* %RBP
  %145 = sub i64 %144, 28
  %146 = load i64, i64* %PC
  %147 = add i64 %146, 3
  store i64 %147, i64* %PC
  %148 = inttoptr i64 %145 to i32*
  %149 = load i32, i32* %148
  %150 = zext i32 %149 to i64
  store i64 %150, i64* %RAX, align 8, !tbaa !2424
  %151 = load i64, i64* %RBP
  %152 = sub i64 %151, 4
  %153 = load i32, i32* %EAX
  %154 = zext i32 %153 to i64
  %155 = load i64, i64* %PC
  %156 = add i64 %155, 3
  store i64 %156, i64* %PC
  %157 = inttoptr i64 %152 to i32*
  store i32 %153, i32* %157
  br label %block_400702

block_4006cc:                                     ; preds = %block_4006a8
  store i64 add (i64 ptrtoint (%seg_400bb0__rodata_type* @seg_400bb0__rodata to i64), i64 42), i64* %RDI, align 8, !tbaa !2424
  %158 = load i64, i64* %PC
  %159 = add i64 %158, 2
  store i64 %159, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2447
  %160 = load i64, i64* %PC
  %161 = sub i64 %160, 584
  %162 = load i64, i64* %PC
  %163 = add i64 %162, 5
  %164 = load i64, i64* %PC
  %165 = add i64 %164, 5
  store i64 %165, i64* %PC
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %167 = load i64, i64* %166, align 8, !tbaa !2424
  %168 = add i64 %167, -8
  %169 = inttoptr i64 %168 to i64*
  store i64 %163, i64* %169
  store i64 %168, i64* %166, align 8, !tbaa !2424
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %161, i64* %170, align 8, !tbaa !2424
  %171 = load i64, i64* %PC
  %172 = call %struct.Memory* @ext_601078_printf(%struct.State* %0, i64 %171, %struct.Memory* %223)
  %173 = load i64, i64* %RBP
  %174 = sub i64 %173, 36
  %175 = load i32, i32* %EAX
  %176 = zext i32 %175 to i64
  %177 = load i64, i64* %PC
  %178 = add i64 %177, 3
  store i64 %178, i64* %PC
  %179 = inttoptr i64 %174 to i32*
  store i32 %175, i32* %179
  %180 = load i64, i64* %PC
  %181 = add i64 %180, 28
  %182 = load i64, i64* %PC
  %183 = add i64 %182, 5
  store i64 %183, i64* %PC
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %181, i64* %184, align 8, !tbaa !2424
  br label %block_4006fc

block_4006a8:                                     ; preds = %block_400660
  %185 = load i64, i64* %RBP
  %186 = sub i64 %185, 16
  %187 = load i64, i64* %PC
  %188 = add i64 %187, 4
  store i64 %188, i64* %PC
  %189 = inttoptr i64 %186 to i64*
  %190 = load i64, i64* %189
  store i64 %190, i64* %RAX, align 8, !tbaa !2424
  %191 = load i64, i64* %RAX
  %192 = add i64 %191, 8
  %193 = load i64, i64* %PC
  %194 = add i64 %193, 4
  store i64 %194, i64* %PC
  %195 = inttoptr i64 %192 to i64*
  %196 = load i64, i64* %195
  store i64 %196, i64* %RAX, align 8, !tbaa !2424
  %197 = load i64, i64* %RBP
  %198 = sub i64 %197, 24
  %199 = load i64, i64* %RAX
  %200 = load i64, i64* %PC
  %201 = add i64 %200, 4
  store i64 %201, i64* %PC
  %202 = inttoptr i64 %198 to i64*
  store i64 %199, i64* %202
  %203 = load i64, i64* %RBP
  %204 = sub i64 %203, 24
  %205 = load i64, i64* %PC
  %206 = add i64 %205, 4
  store i64 %206, i64* %PC
  %207 = inttoptr i64 %204 to i64*
  %208 = load i64, i64* %207
  store i64 %208, i64* %RDI, align 8, !tbaa !2424
  %209 = load i64, i64* %PC
  %210 = add i64 %209, 2
  store i64 %210, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2447
  %211 = load i64, i64* %PC
  %212 = add i64 %211, 86
  %213 = load i64, i64* %PC
  %214 = add i64 %213, 5
  %215 = load i64, i64* %PC
  %216 = add i64 %215, 5
  store i64 %216, i64* %PC
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %218 = load i64, i64* %217, align 8, !tbaa !2424
  %219 = add i64 %218, -8
  %220 = inttoptr i64 %219 to i64*
  store i64 %214, i64* %220
  store i64 %219, i64* %217, align 8, !tbaa !2424
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %212, i64* %221, align 8, !tbaa !2424
  %222 = load i64, i64* %PC
  %223 = call %struct.Memory* @sub_400710_keycomp(%struct.State* %0, i64 %222, %struct.Memory* %2)
  %224 = load i64, i64* %RBP
  %225 = sub i64 %224, 28
  %226 = load i32, i32* %EAX
  %227 = zext i32 %226 to i64
  %228 = load i64, i64* %PC
  %229 = add i64 %228, 3
  store i64 %229, i64* %PC
  %230 = inttoptr i64 %225 to i32*
  store i32 %226, i32* %230
  %231 = load i64, i64* %RBP
  %232 = sub i64 %231, 28
  %233 = load i64, i64* %PC
  %234 = add i64 %233, 4
  store i64 %234, i64* %PC
  %235 = inttoptr i64 %232 to i32*
  %236 = load i32, i32* %235
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %237, align 1, !tbaa !2428
  %238 = and i32 %236, 255
  %239 = call i32 @llvm.ctpop.i32(i32 %238) #16
  %240 = trunc i32 %239 to i8
  %241 = and i8 %240, 1
  %242 = xor i8 %241, 1
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %242, i8* %243, align 1, !tbaa !2442
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %244, align 1, !tbaa !2443
  %245 = icmp eq i32 %236, 0
  %246 = zext i1 %245 to i8
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %246, i8* %247, align 1, !tbaa !2444
  %248 = lshr i32 %236, 31
  %249 = trunc i32 %248 to i8
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %249, i8* %250, align 1, !tbaa !2445
  %251 = lshr i32 %236, 31
  %252 = xor i32 %248, %251
  %253 = add nuw nsw i32 %252, %251
  %254 = icmp eq i32 %253, 2
  %255 = zext i1 %254 to i8
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %255, i8* %256, align 1, !tbaa !2446
  %257 = load i64, i64* %PC
  %258 = add i64 %257, 31
  %259 = load i64, i64* %PC
  %260 = add i64 %259, 6
  %261 = load i64, i64* %PC
  %262 = add i64 %261, 6
  store i64 %262, i64* %PC
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %264 = load i8, i8* %263, align 1, !tbaa !2444
  %265 = icmp eq i8 %264, 0
  %266 = zext i1 %265 to i8
  store i8 %266, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %268 = select i1 %265, i64 %258, i64 %260
  store i64 %268, i64* %267, align 8, !tbaa !2424
  %269 = load i8, i8* %BRANCH_TAKEN
  %270 = icmp eq i8 %269, 1
  %271 = load i64, i64* %PC
  %272 = add i64 %271, 10
  store i64 %272, i64* %PC
  br i1 %270, label %block_4006e5, label %block_4006cc

block_4006e5:                                     ; preds = %block_4006a8
  store i64 add (i64 ptrtoint (%seg_400bb0__rodata_type* @seg_400bb0__rodata to i64), i64 60), i64* %RDI, align 8, !tbaa !2424
  %273 = load i64, i64* %RBP
  %274 = sub i64 %273, 28
  %275 = load i64, i64* %PC
  %276 = add i64 %275, 3
  store i64 %276, i64* %PC
  %277 = inttoptr i64 %274 to i32*
  %278 = load i32, i32* %277
  %279 = zext i32 %278 to i64
  store i64 %279, i64* %RSI, align 8, !tbaa !2424
  %280 = load i64, i64* %PC
  %281 = add i64 %280, 2
  store i64 %281, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2447
  %282 = load i64, i64* %PC
  %283 = sub i64 %282, 612
  %284 = load i64, i64* %PC
  %285 = add i64 %284, 5
  %286 = load i64, i64* %PC
  %287 = add i64 %286, 5
  store i64 %287, i64* %PC
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %289 = load i64, i64* %288, align 8, !tbaa !2424
  %290 = add i64 %289, -8
  %291 = inttoptr i64 %290 to i64*
  store i64 %285, i64* %291
  store i64 %290, i64* %288, align 8, !tbaa !2424
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %283, i64* %292, align 8, !tbaa !2424
  %293 = load i64, i64* %PC
  %294 = call %struct.Memory* @ext_601078_printf(%struct.State* %0, i64 %293, %struct.Memory* %223)
  %295 = load i64, i64* %RBP
  %296 = sub i64 %295, 40
  %297 = load i32, i32* %EAX
  %298 = zext i32 %297 to i64
  %299 = load i64, i64* %PC
  %300 = add i64 %299, 3
  store i64 %300, i64* %PC
  %301 = inttoptr i64 %296 to i32*
  store i32 %297, i32* %301
  br label %block_4006fc

block_400702:                                     ; preds = %block_400680, %block_4006fc
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_4006fc ], [ %377, %block_400680 ]
  %302 = load i64, i64* %RBP
  %303 = sub i64 %302, 4
  %304 = load i64, i64* %PC
  %305 = add i64 %304, 3
  store i64 %305, i64* %PC
  %306 = inttoptr i64 %303 to i32*
  %307 = load i32, i32* %306
  %308 = zext i32 %307 to i64
  store i64 %308, i64* %RAX, align 8, !tbaa !2424
  %309 = load i64, i64* %RSP
  %310 = load i64, i64* %PC
  %311 = add i64 %310, 4
  store i64 %311, i64* %PC
  %312 = add i64 48, %309
  store i64 %312, i64* %RSP, align 8, !tbaa !2424
  %313 = icmp ult i64 %312, %309
  %314 = icmp ult i64 %312, 48
  %315 = or i1 %313, %314
  %316 = zext i1 %315 to i8
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %316, i8* %317, align 1, !tbaa !2428
  %318 = trunc i64 %312 to i32
  %319 = and i32 %318, 255
  %320 = call i32 @llvm.ctpop.i32(i32 %319) #16
  %321 = trunc i32 %320 to i8
  %322 = and i8 %321, 1
  %323 = xor i8 %322, 1
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %323, i8* %324, align 1, !tbaa !2442
  %325 = xor i64 48, %309
  %326 = xor i64 %325, %312
  %327 = lshr i64 %326, 4
  %328 = trunc i64 %327 to i8
  %329 = and i8 %328, 1
  %330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %329, i8* %330, align 1, !tbaa !2443
  %331 = icmp eq i64 %312, 0
  %332 = zext i1 %331 to i8
  %333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %332, i8* %333, align 1, !tbaa !2444
  %334 = lshr i64 %312, 63
  %335 = trunc i64 %334 to i8
  %336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %335, i8* %336, align 1, !tbaa !2445
  %337 = lshr i64 %309, 63
  %338 = xor i64 %334, %337
  %339 = add nuw nsw i64 %338, %334
  %340 = icmp eq i64 %339, 2
  %341 = zext i1 %340 to i8
  %342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %341, i8* %342, align 1, !tbaa !2446
  %343 = load i64, i64* %PC
  %344 = add i64 %343, 1
  store i64 %344, i64* %PC
  %345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %346 = load i64, i64* %345, align 8, !tbaa !2424
  %347 = add i64 %346, 8
  %348 = inttoptr i64 %346 to i64*
  %349 = load i64, i64* %348
  store i64 %349, i64* %RBP, align 8, !tbaa !2424
  store i64 %347, i64* %345, align 8, !tbaa !2424
  %350 = load i64, i64* %PC
  %351 = add i64 %350, 1
  store i64 %351, i64* %PC
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %354 = load i64, i64* %353, align 8, !tbaa !2424
  %355 = inttoptr i64 %354 to i64*
  %356 = load i64, i64* %355
  store i64 %356, i64* %352, align 8, !tbaa !2424
  %357 = add i64 %354, 8
  store i64 %357, i64* %353, align 8, !tbaa !2424
  ret %struct.Memory* %MEMORY.1

block_400680:                                     ; preds = %block_400660
  %358 = load i64, i64* %PC
  %359 = add i64 %358, 10
  store i64 %359, i64* %PC
  store i64 add (i64 ptrtoint (%seg_400bb0__rodata_type* @seg_400bb0__rodata to i64), i64 4), i64* %RSI, align 8, !tbaa !2424
  %360 = load i64, i64* %PC
  %361 = add i64 %360, 8
  store i64 %361, i64* %PC
  %362 = load i64, i64* @stderr
  store i64 %362, i64* %RDI, align 8, !tbaa !2424
  %363 = load i64, i64* %PC
  %364 = add i64 %363, 2
  store i64 %364, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2447
  %365 = load i64, i64* %PC
  %366 = sub i64 %365, 500
  %367 = load i64, i64* %PC
  %368 = add i64 %367, 5
  %369 = load i64, i64* %PC
  %370 = add i64 %369, 5
  store i64 %370, i64* %PC
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %372 = load i64, i64* %371, align 8, !tbaa !2424
  %373 = add i64 %372, -8
  %374 = inttoptr i64 %373 to i64*
  store i64 %368, i64* %374
  store i64 %373, i64* %371, align 8, !tbaa !2424
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %366, i64* %375, align 8, !tbaa !2424
  %376 = load i64, i64* %PC
  %377 = call %struct.Memory* @ext_601088_fprintf(%struct.State* %0, i64 %376, %struct.Memory* %2)
  %378 = load i64, i64* %RBP
  %379 = sub i64 %378, 4
  %380 = load i64, i64* %PC
  %381 = add i64 %380, 7
  store i64 %381, i64* %PC
  %382 = inttoptr i64 %379 to i32*
  store i32 -1, i32* %382
  %383 = load i64, i64* %RBP
  %384 = sub i64 %383, 32
  %385 = load i32, i32* %EAX
  %386 = zext i32 %385 to i64
  %387 = load i64, i64* %PC
  %388 = add i64 %387, 3
  store i64 %388, i64* %PC
  %389 = inttoptr i64 %384 to i32*
  store i32 %385, i32* %389
  %390 = load i64, i64* %PC
  %391 = add i64 %390, 95
  %392 = load i64, i64* %PC
  %393 = add i64 %392, 5
  store i64 %393, i64* %PC
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %391, i64* %394, align 8, !tbaa !2424
  br label %block_400702
}

; Function Attrs: noinline
declare void @__mcsema_attach_call() #13

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400580_frame_dummy() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400580;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @1, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_400580_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400580_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400550___do_global_dtors_aux() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400550;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @3, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_400550___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400550___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_601070_strlen(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400ba0___libc_csu_fini() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400ba0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @4, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_400ba0___libc_csu_fini_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400ba0___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400b30___libc_csu_init() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400b30;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @5, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_400b30___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400b30___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @main() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400660;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @6, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400660_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_601080___libc_start_main(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_601078_printf(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_601088_fprintf(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @keycomp() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400710;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @7, void ()** @2)
  ret void
}

define internal %struct.Memory* @keycomp_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400710_keycomp(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.init_proc() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400458;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @8, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400458__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.term_proc() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400ba4;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @9, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400ba4__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @read_bytes() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400600;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @10, void ()** @2)
  ret void
}

define internal %struct.Memory* @read_bytes_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400600_read_bytes(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @to_byte() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400590;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @11, void ()** @2)
  ret void
}

define internal %struct.Memory* @to_byte_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400590_to_byte(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

define internal void @__mcsema_destructor() {
  call void @callback_sub_400ba0___libc_csu_fini()
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
  call void @callback_sub_400b30___libc_csu_init()
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
!llvm.module.flags = !{!1255, !1256}

!0 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!1 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !2, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !3, retainedTypes: !67, imports: !70)
!2 = !DIFile(filename: "/home/sdasgup3/Github/remill/remill/Arch/X86/Runtime/BasicBlock.cpp", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!3 = !{!4, !26, !35, !39, !45, !51, !55, !61}
!4 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "Name", scope: !6, file: !5, line: 70, baseType: !8, size: 32, elements: !11, identifier: "_ZTSN14AsyncHyperCall4NameE")
!5 = !DIFile(filename: "/home/sdasgup3/Github/remill/remill/Arch/Runtime/HyperCall.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!6 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "AsyncHyperCall", file: !5, line: 68, size: 8, elements: !7, identifier: "_ZTS14AsyncHyperCall")
!7 = !{}
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !9, line: 183, baseType: !10)
!9 = !DIFile(filename: "/home/sdasgup3/Github/remill/remill-build/libraries/llvm/bin/../lib/clang/4.0.1/include/stdint.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
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
!27 = !DIFile(filename: "/home/sdasgup3/Github/remill/remill/Arch/X86/Runtime/State.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
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
!70 = !{!71, !77, !83, !86, !93, !97, !102, !104, !112, !116, !120, !132, !136, !140, !144, !148, !153, !157, !161, !165, !169, !177, !181, !185, !187, !191, !195, !199, !205, !209, !213, !215, !223, !227, !235, !237, !241, !245, !249, !253, !258, !263, !268, !269, !270, !271, !274, !275, !276, !277, !278, !279, !280, !335, !339, !354, !356, !360, !368, !373, !377, !381, !385, !389, !391, !393, !397, !403, !407, !413, !419, !421, !425, !429, !433, !437, !448, !450, !454, !458, !462, !464, !468, !472, !476, !478, !480, !484, !492, !496, !500, !504, !506, !512, !514, !520, !524, !528, !532, !536, !540, !544, !546, !548, !552, !556, !560, !562, !566, !570, !572, !574, !578, !582, !586, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !604, !607, !609, !611, !613, !615, !617, !619, !621, !623, !625, !627, !629, !631, !632, !633, !634, !636, !638, !640, !642, !644, !646, !648, !650, !652, !654, !656, !658, !660, !663, !667, !672, !675, !677, !679, !681, !683, !685, !687, !689, !691, !693, !695, !697, !699, !701, !703, !708, !713, !717, !719, !721, !723, !725, !732, !736, !740, !744, !748, !752, !757, !761, !763, !767, !773, !777, !782, !784, !786, !790, !794, !798, !800, !802, !804, !806, !810, !812, !814, !818, !822, !826, !830, !834, !836, !838, !842, !846, !850, !854, !856, !858, !862, !866, !867, !868, !869, !870, !871, !876, !878, !880, !884, !886, !888, !890, !892, !894, !896, !898, !903, !907, !909, !911, !916, !918, !920, !922, !924, !926, !928, !931, !933, !935, !939, !943, !945, !947, !949, !951, !953, !955, !957, !959, !961, !963, !967, !971, !973, !975, !977, !979, !981, !983, !985, !987, !989, !991, !993, !995, !997, !999, !1001, !1005, !1009, !1013, !1015, !1017, !1019, !1021, !1023, !1025, !1027, !1029, !1031, !1035, !1039, !1043, !1045, !1047, !1049, !1053, !1057, !1061, !1063, !1065, !1067, !1069, !1071, !1073, !1075, !1077, !1079, !1081, !1083, !1085, !1089, !1093, !1097, !1099, !1101, !1103, !1105, !1109, !1113, !1115, !1117, !1119, !1121, !1123, !1125, !1129, !1133, !1135, !1137, !1139, !1141, !1145, !1149, !1153, !1155, !1157, !1159, !1161, !1163, !1165, !1169, !1173, !1177, !1179, !1183, !1187, !1189, !1191, !1193, !1195, !1197, !1199, !1203, !1205, !1208, !1213, !1215, !1221, !1223, !1225, !1227, !1232, !1234, !1240, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254}
!71 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !72, entity: !74, line: 58)
!72 = !DINamespace(name: "__gnu_debug", scope: null, file: !73, line: 56)
!73 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.0.1/../../../../include/c++/7.0.1/debug/debug.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!74 = !DINamespace(name: "__debug", scope: !75, file: !73, line: 50)
!75 = !DINamespace(name: "std", scope: null, file: !76, line: 229)
!76 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.0.1/../../../../include/x86_64-linux-gnu/c++/7.0.1/bits/c++config.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!77 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !78, line: 52)
!78 = !DISubprogram(name: "abs", scope: !79, file: !79, line: 735, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!79 = !DIFile(filename: "/usr/include/stdlib.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!80 = !DISubroutineType(types: !81)
!81 = !{!82, !82}
!82 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!83 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !84, line: 124)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !79, line: 62, baseType: !85)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !79, line: 58, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!86 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !87, line: 125)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !79, line: 70, baseType: !88)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !79, line: 66, size: 128, elements: !89, identifier: "_ZTS6ldiv_t")
!89 = !{!90, !92}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !88, file: !79, line: 68, baseType: !91, size: 64)
!91 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !88, file: !79, line: 69, baseType: !91, size: 64, offset: 64)
!93 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !94, line: 127)
!94 = !DISubprogram(name: "abort", scope: !79, file: !79, line: 476, type: !95, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!95 = !DISubroutineType(types: !96)
!96 = !{null}
!97 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !98, line: 128)
!98 = !DISubprogram(name: "atexit", scope: !79, file: !79, line: 480, type: !99, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!99 = !DISubroutineType(types: !100)
!100 = !{!82, !101}
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!102 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !103, line: 131)
!103 = !DISubprogram(name: "at_quick_exit", scope: !79, file: !79, line: 485, type: !99, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!104 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !105, line: 134)
!105 = !DISubprogram(name: "atof", scope: !79, file: !79, line: 105, type: !106, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!106 = !DISubroutineType(types: !107)
!107 = !{!108, !109}
!108 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!111 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!112 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !113, line: 135)
!113 = !DISubprogram(name: "atoi", scope: !79, file: !79, line: 108, type: !114, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!114 = !DISubroutineType(types: !115)
!115 = !{!82, !109}
!116 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !117, line: 136)
!117 = !DISubprogram(name: "atol", scope: !79, file: !79, line: 111, type: !118, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!118 = !DISubroutineType(types: !119)
!119 = !{!91, !109}
!120 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !121, line: 137)
!121 = !DISubprogram(name: "bsearch", scope: !79, file: !79, line: 715, type: !122, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!122 = !DISubroutineType(types: !123)
!123 = !{!124, !68, !68, !125, !125, !128}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !126, line: 62, baseType: !127)
!126 = !DIFile(filename: "/home/sdasgup3/Github/remill/remill-build/libraries/llvm/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!127 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !79, line: 702, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DISubroutineType(types: !131)
!131 = !{!82, !68, !68}
!132 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !133, line: 138)
!133 = !DISubprogram(name: "calloc", scope: !79, file: !79, line: 429, type: !134, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!134 = !DISubroutineType(types: !135)
!135 = !{!124, !125, !125}
!136 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !137, line: 139)
!137 = !DISubprogram(name: "div", scope: !79, file: !79, line: 749, type: !138, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!138 = !DISubroutineType(types: !139)
!139 = !{!84, !82, !82}
!140 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !141, line: 140)
!141 = !DISubprogram(name: "exit", scope: !79, file: !79, line: 504, type: !142, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!142 = !DISubroutineType(types: !143)
!143 = !{null, !82}
!144 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !145, line: 141)
!145 = !DISubprogram(name: "free", scope: !79, file: !79, line: 444, type: !146, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!146 = !DISubroutineType(types: !147)
!147 = !{null, !124}
!148 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !149, line: 142)
!149 = !DISubprogram(name: "getenv", scope: !79, file: !79, line: 525, type: !150, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!150 = !DISubroutineType(types: !151)
!151 = !{!152, !109}
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!153 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !154, line: 143)
!154 = !DISubprogram(name: "labs", scope: !79, file: !79, line: 736, type: !155, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!155 = !DISubroutineType(types: !156)
!156 = !{!91, !91}
!157 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !158, line: 144)
!158 = !DISubprogram(name: "ldiv", scope: !79, file: !79, line: 751, type: !159, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!159 = !DISubroutineType(types: !160)
!160 = !{!87, !91, !91}
!161 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !162, line: 145)
!162 = !DISubprogram(name: "malloc", scope: !79, file: !79, line: 427, type: !163, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!163 = !DISubroutineType(types: !164)
!164 = !{!124, !125}
!165 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !166, line: 147)
!166 = !DISubprogram(name: "mblen", scope: !79, file: !79, line: 823, type: !167, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!167 = !DISubroutineType(types: !168)
!168 = !{!82, !109, !125}
!169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !170, line: 148)
!170 = !DISubprogram(name: "mbstowcs", scope: !79, file: !79, line: 834, type: !171, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!171 = !DISubroutineType(types: !172)
!172 = !{!125, !173, !176, !125}
!173 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !174)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!176 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !109)
!177 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !178, line: 149)
!178 = !DISubprogram(name: "mbtowc", scope: !79, file: !79, line: 826, type: !179, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!179 = !DISubroutineType(types: !180)
!180 = !{!82, !173, !176, !125}
!181 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !182, line: 151)
!182 = !DISubprogram(name: "qsort", scope: !79, file: !79, line: 725, type: !183, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!183 = !DISubroutineType(types: !184)
!184 = !{null, !124, !125, !125, !128}
!185 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !186, line: 154)
!186 = !DISubprogram(name: "quick_exit", scope: !79, file: !79, line: 510, type: !142, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!187 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !188, line: 157)
!188 = !DISubprogram(name: "rand", scope: !79, file: !79, line: 335, type: !189, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!189 = !DISubroutineType(types: !190)
!190 = !{!82}
!191 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !192, line: 158)
!192 = !DISubprogram(name: "realloc", scope: !79, file: !79, line: 441, type: !193, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!193 = !DISubroutineType(types: !194)
!194 = !{!124, !124, !125}
!195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !196, line: 159)
!196 = !DISubprogram(name: "srand", scope: !79, file: !79, line: 337, type: !197, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!197 = !DISubroutineType(types: !198)
!198 = !{null, !10}
!199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !200, line: 160)
!200 = !DISubprogram(name: "strtod", scope: !79, file: !79, line: 125, type: !201, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!201 = !DISubroutineType(types: !202)
!202 = !{!108, !176, !203}
!203 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!205 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !206, line: 161)
!206 = !DISubprogram(name: "strtol", scope: !79, file: !79, line: 144, type: !207, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!207 = !DISubroutineType(types: !208)
!208 = !{!91, !176, !203, !82}
!209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !210, line: 162)
!210 = !DISubprogram(name: "strtoul", scope: !79, file: !79, line: 148, type: !211, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!211 = !DISubroutineType(types: !212)
!212 = !{!127, !176, !203, !82}
!213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !214, line: 163)
!214 = !DISubprogram(name: "system", scope: !79, file: !79, line: 677, type: !114, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!215 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !216, line: 165)
!216 = !DISubprogram(name: "wcstombs", scope: !79, file: !79, line: 837, type: !217, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!217 = !DISubroutineType(types: !218)
!218 = !{!125, !219, !220, !125}
!219 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !152)
!220 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !175)
!223 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !224, line: 166)
!224 = !DISubprogram(name: "wctomb", scope: !79, file: !79, line: 830, type: !225, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!225 = !DISubroutineType(types: !226)
!226 = !{!82, !152, !175}
!227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !229, line: 194)
!228 = !DINamespace(name: "__gnu_cxx", scope: null, file: !76, line: 255)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !79, line: 82, baseType: !230)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !79, line: 78, size: 128, elements: !231, identifier: "_ZTS7lldiv_t")
!231 = !{!232, !234}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !230, file: !79, line: 80, baseType: !233, size: 64)
!233 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !230, file: !79, line: 81, baseType: !233, size: 64, offset: 64)
!235 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !236, line: 200)
!236 = !DISubprogram(name: "_Exit", scope: !79, file: !79, line: 518, type: !142, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!237 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !238, line: 204)
!238 = !DISubprogram(name: "llabs", scope: !79, file: !79, line: 740, type: !239, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!239 = !DISubroutineType(types: !240)
!240 = !{!233, !233}
!241 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !242, line: 210)
!242 = !DISubprogram(name: "lldiv", scope: !79, file: !79, line: 757, type: !243, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!243 = !DISubroutineType(types: !244)
!244 = !{!229, !233, !233}
!245 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !246, line: 221)
!246 = !DISubprogram(name: "atoll", scope: !79, file: !79, line: 118, type: !247, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!247 = !DISubroutineType(types: !248)
!248 = !{!233, !109}
!249 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !250, line: 222)
!250 = !DISubprogram(name: "strtoll", scope: !79, file: !79, line: 170, type: !251, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!251 = !DISubroutineType(types: !252)
!252 = !{!233, !176, !203, !82}
!253 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !254, line: 223)
!254 = !DISubprogram(name: "strtoull", scope: !79, file: !79, line: 175, type: !255, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!255 = !DISubroutineType(types: !256)
!256 = !{!257, !176, !203, !82}
!257 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!258 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !259, line: 225)
!259 = !DISubprogram(name: "strtof", scope: !79, file: !79, line: 133, type: !260, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!260 = !DISubroutineType(types: !261)
!261 = !{!262, !176, !203}
!262 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!263 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !264, line: 226)
!264 = !DISubprogram(name: "strtold", scope: !79, file: !79, line: 136, type: !265, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!265 = !DISubroutineType(types: !266)
!266 = !{!267, !176, !203}
!267 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!268 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !229, line: 234)
!269 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !236, line: 236)
!270 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !238, line: 238)
!271 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !272, line: 239)
!272 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !228, file: !273, line: 207, type: !243, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!273 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.0.1/../../../../include/c++/7.0.1/cstdlib", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!274 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !242, line: 240)
!275 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !246, line: 242)
!276 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !259, line: 243)
!277 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !250, line: 244)
!278 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !254, line: 245)
!279 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !264, line: 246)
!280 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !281, line: 57)
!281 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !283, file: !282, line: 79, size: 64, elements: !284, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!282 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.0.1/../../../../include/c++/7.0.1/bits/exception_ptr.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
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
!334 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.0.1/../../../../include/c++/7.0.1/typeinfo", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!335 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !283, entity: !336, line: 73)
!336 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !75, file: !282, line: 69, type: !337, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!337 = !DISubroutineType(types: !338)
!338 = !{null, !281}
!339 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !340, line: 64)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !341, line: 106, baseType: !342)
!341 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !341, line: 94, baseType: !343)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !341, line: 82, size: 64, elements: !344, identifier: "_ZTS11__mbstate_t")
!344 = !{!345, !346}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !343, file: !341, line: 84, baseType: !82, size: 32)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !343, file: !341, line: 93, baseType: !347, size: 32, offset: 32)
!347 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !343, file: !341, line: 85, size: 32, elements: !348, identifier: "_ZTSN11__mbstate_tUt_E")
!348 = !{!349, !350}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !347, file: !341, line: 88, baseType: !10, size: 32)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !347, file: !341, line: 92, baseType: !351, size: 32)
!351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 32, elements: !352)
!352 = !{!353}
!353 = !DISubrange(count: 4)
!354 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !355, line: 139)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !126, line: 132, baseType: !10)
!356 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !357, line: 141)
!357 = !DISubprogram(name: "btowc", scope: !341, file: !341, line: 356, type: !358, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!358 = !DISubroutineType(types: !359)
!359 = !{!355, !82}
!360 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !361, line: 142)
!361 = !DISubprogram(name: "fgetwc", scope: !341, file: !341, line: 748, type: !362, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!362 = !DISubroutineType(types: !363)
!363 = !{!355, !364}
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !366, line: 64, baseType: !367)
!366 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !366, line: 44, flags: DIFlagFwdDecl, identifier: "_ZTS8_IO_FILE")
!368 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !369, line: 143)
!369 = !DISubprogram(name: "fgetws", scope: !341, file: !341, line: 777, type: !370, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!370 = !DISubroutineType(types: !371)
!371 = !{!174, !173, !82, !372}
!372 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !364)
!373 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !374, line: 144)
!374 = !DISubprogram(name: "fputwc", scope: !341, file: !341, line: 762, type: !375, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!375 = !DISubroutineType(types: !376)
!376 = !{!355, !175, !364}
!377 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !378, line: 145)
!378 = !DISubprogram(name: "fputws", scope: !341, file: !341, line: 784, type: !379, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!379 = !DISubroutineType(types: !380)
!380 = !{!82, !220, !372}
!381 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !382, line: 146)
!382 = !DISubprogram(name: "fwide", scope: !341, file: !341, line: 590, type: !383, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!383 = !DISubroutineType(types: !384)
!384 = !{!82, !364, !82}
!385 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !386, line: 147)
!386 = !DISubprogram(name: "fwprintf", scope: !341, file: !341, line: 597, type: !387, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!387 = !DISubroutineType(types: !388)
!388 = !{!82, !372, !220, null}
!389 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !390, line: 148)
!390 = !DISubprogram(name: "fwscanf", scope: !341, file: !341, line: 638, type: !387, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!391 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !392, line: 149)
!392 = !DISubprogram(name: "getwc", scope: !341, file: !341, line: 749, type: !362, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!393 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !394, line: 150)
!394 = !DISubprogram(name: "getwchar", scope: !341, file: !341, line: 755, type: !395, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!395 = !DISubroutineType(types: !396)
!396 = !{!355}
!397 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !398, line: 151)
!398 = !DISubprogram(name: "mbrlen", scope: !341, file: !341, line: 379, type: !399, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!399 = !DISubroutineType(types: !400)
!400 = !{!125, !176, !125, !401}
!401 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !402)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!403 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !404, line: 152)
!404 = !DISubprogram(name: "mbrtowc", scope: !341, file: !341, line: 368, type: !405, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!405 = !DISubroutineType(types: !406)
!406 = !{!125, !173, !176, !125, !401}
!407 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !408, line: 153)
!408 = !DISubprogram(name: "mbsinit", scope: !341, file: !341, line: 364, type: !409, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!409 = !DISubroutineType(types: !410)
!410 = !{!82, !411}
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !340)
!413 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !414, line: 154)
!414 = !DISubprogram(name: "mbsrtowcs", scope: !341, file: !341, line: 411, type: !415, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!415 = !DISubroutineType(types: !416)
!416 = !{!125, !173, !417, !125, !401}
!417 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !418)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!419 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !420, line: 155)
!420 = !DISubprogram(name: "putwc", scope: !341, file: !341, line: 763, type: !375, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!421 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !422, line: 156)
!422 = !DISubprogram(name: "putwchar", scope: !341, file: !341, line: 769, type: !423, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!423 = !DISubroutineType(types: !424)
!424 = !{!355, !175}
!425 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !426, line: 158)
!426 = !DISubprogram(name: "swprintf", scope: !341, file: !341, line: 607, type: !427, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!427 = !DISubroutineType(types: !428)
!428 = !{!82, !173, !125, !220, null}
!429 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !430, line: 160)
!430 = !DISubprogram(name: "swscanf", scope: !341, file: !341, line: 648, type: !431, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!431 = !DISubroutineType(types: !432)
!432 = !{!82, !220, !220, null}
!433 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !434, line: 161)
!434 = !DISubprogram(name: "ungetwc", scope: !341, file: !341, line: 792, type: !435, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!435 = !DISubroutineType(types: !436)
!436 = !{!355, !355, !364}
!437 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !438, line: 162)
!438 = !DISubprogram(name: "vfwprintf", scope: !341, file: !341, line: 615, type: !439, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!439 = !DISubroutineType(types: !440)
!440 = !{!82, !372, !220, !441}
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !2, size: 192, elements: !443, identifier: "_ZTS13__va_list_tag")
!443 = !{!444, !445, !446, !447}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !442, file: !2, baseType: !10, size: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !442, file: !2, baseType: !10, size: 32, offset: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !442, file: !2, baseType: !124, size: 64, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !442, file: !2, baseType: !124, size: 64, offset: 128)
!448 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !449, line: 164)
!449 = !DISubprogram(name: "vfwscanf", scope: !341, file: !341, line: 692, type: !439, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!450 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !451, line: 167)
!451 = !DISubprogram(name: "vswprintf", scope: !341, file: !341, line: 628, type: !452, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!452 = !DISubroutineType(types: !453)
!453 = !{!82, !173, !125, !220, !441}
!454 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !455, line: 170)
!455 = !DISubprogram(name: "vswscanf", scope: !341, file: !341, line: 704, type: !456, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!456 = !DISubroutineType(types: !457)
!457 = !{!82, !220, !220, !441}
!458 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !459, line: 172)
!459 = !DISubprogram(name: "vwprintf", scope: !341, file: !341, line: 623, type: !460, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!460 = !DISubroutineType(types: !461)
!461 = !{!82, !220, !441}
!462 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !463, line: 174)
!463 = !DISubprogram(name: "vwscanf", scope: !341, file: !341, line: 700, type: !460, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!464 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !465, line: 176)
!465 = !DISubprogram(name: "wcrtomb", scope: !341, file: !341, line: 373, type: !466, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!466 = !DISubroutineType(types: !467)
!467 = !{!125, !219, !175, !401}
!468 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !469, line: 177)
!469 = !DISubprogram(name: "wcscat", scope: !341, file: !341, line: 157, type: !470, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!470 = !DISubroutineType(types: !471)
!471 = !{!174, !173, !220}
!472 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !473, line: 178)
!473 = !DISubprogram(name: "wcscmp", scope: !341, file: !341, line: 166, type: !474, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!474 = !DISubroutineType(types: !475)
!475 = !{!82, !221, !221}
!476 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !477, line: 179)
!477 = !DISubprogram(name: "wcscoll", scope: !341, file: !341, line: 195, type: !474, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!478 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !479, line: 180)
!479 = !DISubprogram(name: "wcscpy", scope: !341, file: !341, line: 147, type: !470, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!480 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !481, line: 181)
!481 = !DISubprogram(name: "wcscspn", scope: !341, file: !341, line: 255, type: !482, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!482 = !DISubroutineType(types: !483)
!483 = !{!125, !221, !221}
!484 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !485, line: 182)
!485 = !DISubprogram(name: "wcsftime", scope: !341, file: !341, line: 858, type: !486, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!486 = !DISubroutineType(types: !487)
!487 = !{!125, !173, !125, !220, !488}
!488 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !489)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !491)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !341, line: 137, flags: DIFlagFwdDecl, identifier: "_ZTS2tm")
!492 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !493, line: 183)
!493 = !DISubprogram(name: "wcslen", scope: !341, file: !341, line: 290, type: !494, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!494 = !DISubroutineType(types: !495)
!495 = !{!125, !221}
!496 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !497, line: 184)
!497 = !DISubprogram(name: "wcsncat", scope: !341, file: !341, line: 161, type: !498, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!498 = !DISubroutineType(types: !499)
!499 = !{!174, !173, !220, !125}
!500 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !501, line: 185)
!501 = !DISubprogram(name: "wcsncmp", scope: !341, file: !341, line: 169, type: !502, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!502 = !DISubroutineType(types: !503)
!503 = !{!82, !221, !221, !125}
!504 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !505, line: 186)
!505 = !DISubprogram(name: "wcsncpy", scope: !341, file: !341, line: 152, type: !498, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!506 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !507, line: 187)
!507 = !DISubprogram(name: "wcsrtombs", scope: !341, file: !341, line: 417, type: !508, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!508 = !DISubroutineType(types: !509)
!509 = !{!125, !219, !510, !125, !401}
!510 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !511)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!512 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !513, line: 188)
!513 = !DISubprogram(name: "wcsspn", scope: !341, file: !341, line: 259, type: !482, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!514 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !515, line: 189)
!515 = !DISubprogram(name: "wcstod", scope: !341, file: !341, line: 453, type: !516, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!516 = !DISubroutineType(types: !517)
!517 = !{!108, !220, !518}
!518 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !519)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!520 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !521, line: 191)
!521 = !DISubprogram(name: "wcstof", scope: !341, file: !341, line: 460, type: !522, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!522 = !DISubroutineType(types: !523)
!523 = !{!262, !220, !518}
!524 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !525, line: 193)
!525 = !DISubprogram(name: "wcstok", scope: !341, file: !341, line: 285, type: !526, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!526 = !DISubroutineType(types: !527)
!527 = !{!174, !173, !220, !518}
!528 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !529, line: 194)
!529 = !DISubprogram(name: "wcstol", scope: !341, file: !341, line: 471, type: !530, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!530 = !DISubroutineType(types: !531)
!531 = !{!91, !220, !518, !82}
!532 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !533, line: 195)
!533 = !DISubprogram(name: "wcstoul", scope: !341, file: !341, line: 476, type: !534, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!534 = !DISubroutineType(types: !535)
!535 = !{!127, !220, !518, !82}
!536 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !537, line: 196)
!537 = !DISubprogram(name: "wcsxfrm", scope: !341, file: !341, line: 199, type: !538, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!538 = !DISubroutineType(types: !539)
!539 = !{!125, !173, !220, !125}
!540 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !541, line: 197)
!541 = !DISubprogram(name: "wctob", scope: !341, file: !341, line: 360, type: !542, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!542 = !DISubroutineType(types: !543)
!543 = !{!82, !355}
!544 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !545, line: 198)
!545 = !DISubprogram(name: "wmemcmp", scope: !341, file: !341, line: 328, type: !502, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!546 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !547, line: 199)
!547 = !DISubprogram(name: "wmemcpy", scope: !341, file: !341, line: 332, type: !498, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!548 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !549, line: 200)
!549 = !DISubprogram(name: "wmemmove", scope: !341, file: !341, line: 337, type: !550, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!550 = !DISubroutineType(types: !551)
!551 = !{!174, !174, !221, !125}
!552 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !553, line: 201)
!553 = !DISubprogram(name: "wmemset", scope: !341, file: !341, line: 341, type: !554, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!554 = !DISubroutineType(types: !555)
!555 = !{!174, !174, !175, !125}
!556 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !557, line: 202)
!557 = !DISubprogram(name: "wprintf", scope: !341, file: !341, line: 604, type: !558, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!558 = !DISubroutineType(types: !559)
!559 = !{!82, !220, null}
!560 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !561, line: 203)
!561 = !DISubprogram(name: "wscanf", scope: !341, file: !341, line: 645, type: !558, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!562 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !563, line: 204)
!563 = !DISubprogram(name: "wcschr", scope: !341, file: !341, line: 230, type: !564, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!564 = !DISubroutineType(types: !565)
!565 = !{!174, !221, !175}
!566 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !567, line: 205)
!567 = !DISubprogram(name: "wcspbrk", scope: !341, file: !341, line: 269, type: !568, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!568 = !DISubroutineType(types: !569)
!569 = !{!174, !221, !221}
!570 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !571, line: 206)
!571 = !DISubprogram(name: "wcsrchr", scope: !341, file: !341, line: 240, type: !564, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!572 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !573, line: 207)
!573 = !DISubprogram(name: "wcsstr", scope: !341, file: !341, line: 280, type: !568, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!574 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !575, line: 208)
!575 = !DISubprogram(name: "wmemchr", scope: !341, file: !341, line: 323, type: !576, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!576 = !DISubroutineType(types: !577)
!577 = !{!174, !221, !175, !125}
!578 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !579, line: 248)
!579 = !DISubprogram(name: "wcstold", scope: !341, file: !341, line: 462, type: !580, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!580 = !DISubroutineType(types: !581)
!581 = !{!267, !220, !518}
!582 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !583, line: 257)
!583 = !DISubprogram(name: "wcstoll", scope: !341, file: !341, line: 486, type: !584, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!584 = !DISubroutineType(types: !585)
!585 = !{!233, !220, !518, !82}
!586 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !587, line: 258)
!587 = !DISubprogram(name: "wcstoull", scope: !341, file: !341, line: 493, type: !588, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!588 = !DISubroutineType(types: !589)
!589 = !{!257, !220, !518, !82}
!590 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !579, line: 264)
!591 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !583, line: 265)
!592 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !587, line: 266)
!593 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !521, line: 280)
!594 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !449, line: 283)
!595 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !455, line: 286)
!596 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !463, line: 289)
!597 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !579, line: 293)
!598 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !583, line: 294)
!599 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !587, line: 295)
!600 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !601, line: 48)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !602, line: 194, baseType: !603)
!602 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!603 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!604 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !605, line: 49)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !602, line: 195, baseType: !606)
!606 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!607 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !608, line: 50)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !602, line: 196, baseType: !82)
!609 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !610, line: 51)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !602, line: 197, baseType: !91)
!611 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !612, line: 53)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !9, line: 245, baseType: !601)
!613 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !614, line: 54)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !9, line: 228, baseType: !605)
!615 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !616, line: 55)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !9, line: 197, baseType: !608)
!617 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !618, line: 56)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !9, line: 123, baseType: !610)
!619 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !620, line: 58)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !9, line: 243, baseType: !601)
!621 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !622, line: 59)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !9, line: 226, baseType: !605)
!623 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !624, line: 60)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !9, line: 195, baseType: !608)
!625 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !626, line: 61)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !9, line: 121, baseType: !610)
!627 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !628, line: 63)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !9, line: 276, baseType: !91)
!629 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !630, line: 64)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !9, line: 263, baseType: !610)
!631 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !62, line: 66)
!632 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !28, line: 67)
!633 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !8, line: 68)
!634 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !635, line: 69)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !9, line: 109, baseType: !127)
!636 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !637, line: 71)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !9, line: 246, baseType: !62)
!638 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !639, line: 72)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !9, line: 229, baseType: !28)
!640 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !641, line: 73)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !9, line: 198, baseType: !8)
!642 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !643, line: 74)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !9, line: 124, baseType: !635)
!644 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !645, line: 76)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !9, line: 244, baseType: !62)
!646 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !647, line: 77)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !9, line: 227, baseType: !28)
!648 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !649, line: 78)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !9, line: 196, baseType: !8)
!650 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !651, line: 79)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !9, line: 122, baseType: !635)
!652 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !653, line: 81)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !9, line: 277, baseType: !127)
!654 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !655, line: 82)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !9, line: 270, baseType: !635)
!656 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !657, line: 44)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !75, file: !76, line: 231, baseType: !127)
!658 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !659, line: 45)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", scope: !75, file: !76, line: 232, baseType: !91)
!660 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !661, line: 53)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !662, line: 53, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!662 = !DIFile(filename: "/usr/include/locale.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!663 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !664, line: 54)
!664 = !DISubprogram(name: "setlocale", scope: !662, file: !662, line: 124, type: !665, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!665 = !DISubroutineType(types: !666)
!666 = !{!152, !82, !109}
!667 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !668, line: 55)
!668 = !DISubprogram(name: "localeconv", scope: !662, file: !662, line: 127, type: !669, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!669 = !DISubroutineType(types: !670)
!670 = !{!671}
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!672 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !673, line: 64)
!673 = !DISubprogram(name: "isalnum", scope: !674, file: !674, line: 110, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!674 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!675 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !676, line: 65)
!676 = !DISubprogram(name: "isalpha", scope: !674, file: !674, line: 111, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!677 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !678, line: 66)
!678 = !DISubprogram(name: "iscntrl", scope: !674, file: !674, line: 112, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!679 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !680, line: 67)
!680 = !DISubprogram(name: "isdigit", scope: !674, file: !674, line: 113, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!681 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !682, line: 68)
!682 = !DISubprogram(name: "isgraph", scope: !674, file: !674, line: 115, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!683 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !684, line: 69)
!684 = !DISubprogram(name: "islower", scope: !674, file: !674, line: 114, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!685 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !686, line: 70)
!686 = !DISubprogram(name: "isprint", scope: !674, file: !674, line: 116, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!687 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !688, line: 71)
!688 = !DISubprogram(name: "ispunct", scope: !674, file: !674, line: 117, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!689 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !690, line: 72)
!690 = !DISubprogram(name: "isspace", scope: !674, file: !674, line: 118, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!691 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !692, line: 73)
!692 = !DISubprogram(name: "isupper", scope: !674, file: !674, line: 119, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!693 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !694, line: 74)
!694 = !DISubprogram(name: "isxdigit", scope: !674, file: !674, line: 120, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!695 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !696, line: 75)
!696 = !DISubprogram(name: "tolower", scope: !674, file: !674, line: 124, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!697 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !698, line: 76)
!698 = !DISubprogram(name: "toupper", scope: !674, file: !674, line: 127, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!699 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !700, line: 87)
!700 = !DISubprogram(name: "isblank", scope: !674, file: !674, line: 136, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!701 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !702, line: 98)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !366, line: 48, baseType: !367)
!703 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !704, line: 99)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !366, line: 112, baseType: !705)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "_G_fpos_t", file: !706, line: 25, baseType: !707)
!706 = !DIFile(filename: "/usr/include/_G_config.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !706, line: 21, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!708 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !709, line: 101)
!709 = !DISubprogram(name: "clearerr", scope: !366, file: !366, line: 828, type: !710, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!710 = !DISubroutineType(types: !711)
!711 = !{null, !712}
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!713 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !714, line: 102)
!714 = !DISubprogram(name: "fclose", scope: !366, file: !366, line: 239, type: !715, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!715 = !DISubroutineType(types: !716)
!716 = !{!82, !712}
!717 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !718, line: 103)
!718 = !DISubprogram(name: "feof", scope: !366, file: !366, line: 830, type: !715, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!719 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !720, line: 104)
!720 = !DISubprogram(name: "ferror", scope: !366, file: !366, line: 832, type: !715, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!721 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !722, line: 105)
!722 = !DISubprogram(name: "fflush", scope: !366, file: !366, line: 244, type: !715, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!723 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !724, line: 106)
!724 = !DISubprogram(name: "fgetc", scope: !366, file: !366, line: 533, type: !715, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!725 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !726, line: 107)
!726 = !DISubprogram(name: "fgetpos", scope: !366, file: !366, line: 800, type: !727, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!727 = !DISubroutineType(types: !728)
!728 = !{!82, !729, !730}
!729 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !712)
!730 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !731)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!732 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !733, line: 108)
!733 = !DISubprogram(name: "fgets", scope: !366, file: !366, line: 624, type: !734, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!734 = !DISubroutineType(types: !735)
!735 = !{!152, !219, !82, !729}
!736 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !737, line: 109)
!737 = !DISubprogram(name: "fopen", scope: !366, file: !366, line: 274, type: !738, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!738 = !DISubroutineType(types: !739)
!739 = !{!712, !176, !176}
!740 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !741, line: 110)
!741 = !DISubprogram(name: "fprintf", scope: !366, file: !366, line: 358, type: !742, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!742 = !DISubroutineType(types: !743)
!743 = !{!82, !729, !176, null}
!744 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !745, line: 111)
!745 = !DISubprogram(name: "fputc", scope: !366, file: !366, line: 575, type: !746, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!746 = !DISubroutineType(types: !747)
!747 = !{!82, !82, !712}
!748 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !749, line: 112)
!749 = !DISubprogram(name: "fputs", scope: !366, file: !366, line: 691, type: !750, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!750 = !DISubroutineType(types: !751)
!751 = !{!82, !176, !729}
!752 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !753, line: 113)
!753 = !DISubprogram(name: "fread", scope: !366, file: !366, line: 711, type: !754, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!754 = !DISubroutineType(types: !755)
!755 = !{!125, !756, !125, !125, !729}
!756 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !124)
!757 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !758, line: 114)
!758 = !DISubprogram(name: "freopen", scope: !366, file: !366, line: 280, type: !759, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!759 = !DISubroutineType(types: !760)
!760 = !{!712, !176, !176, !729}
!761 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !762, line: 115)
!762 = !DISubprogram(name: "fscanf", scope: !366, file: !366, line: 427, type: !742, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!763 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !764, line: 116)
!764 = !DISubprogram(name: "fseek", scope: !366, file: !366, line: 751, type: !765, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!765 = !DISubroutineType(types: !766)
!766 = !{!82, !712, !91, !82}
!767 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !768, line: 117)
!768 = !DISubprogram(name: "fsetpos", scope: !366, file: !366, line: 805, type: !769, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!769 = !DISubroutineType(types: !770)
!770 = !{!82, !712, !771}
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !704)
!773 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !774, line: 118)
!774 = !DISubprogram(name: "ftell", scope: !366, file: !366, line: 756, type: !775, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!775 = !DISubroutineType(types: !776)
!776 = !{!91, !712}
!777 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !778, line: 119)
!778 = !DISubprogram(name: "fwrite", scope: !366, file: !366, line: 717, type: !779, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!779 = !DISubroutineType(types: !780)
!780 = !{!125, !781, !125, !125, !729}
!781 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !68)
!782 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !783, line: 120)
!783 = !DISubprogram(name: "getc", scope: !366, file: !366, line: 534, type: !715, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!784 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !785, line: 121)
!785 = !DISubprogram(name: "getchar", scope: !366, file: !366, line: 540, type: !189, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!786 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !787, line: 124)
!787 = !DISubprogram(name: "gets", scope: !366, file: !366, line: 640, type: !788, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!788 = !DISubroutineType(types: !789)
!789 = !{!152, !152}
!790 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !791, line: 126)
!791 = !DISubprogram(name: "perror", scope: !366, file: !366, line: 848, type: !792, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!792 = !DISubroutineType(types: !793)
!793 = !{null, !109}
!794 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !795, line: 127)
!795 = !DISubprogram(name: "printf", scope: !366, file: !366, line: 364, type: !796, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!796 = !DISubroutineType(types: !797)
!797 = !{!82, !176, null}
!798 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !799, line: 128)
!799 = !DISubprogram(name: "putc", scope: !366, file: !366, line: 576, type: !746, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!800 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !801, line: 129)
!801 = !DISubprogram(name: "putchar", scope: !366, file: !366, line: 582, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!802 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !803, line: 130)
!803 = !DISubprogram(name: "puts", scope: !366, file: !366, line: 697, type: !114, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!804 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !805, line: 131)
!805 = !DISubprogram(name: "remove", scope: !366, file: !366, line: 180, type: !114, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!806 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !807, line: 132)
!807 = !DISubprogram(name: "rename", scope: !366, file: !366, line: 182, type: !808, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!808 = !DISubroutineType(types: !809)
!809 = !{!82, !109, !109}
!810 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !811, line: 133)
!811 = !DISubprogram(name: "rewind", scope: !366, file: !366, line: 761, type: !710, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!812 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !813, line: 134)
!813 = !DISubprogram(name: "scanf", scope: !366, file: !366, line: 433, type: !796, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!814 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !815, line: 135)
!815 = !DISubprogram(name: "setbuf", scope: !366, file: !366, line: 334, type: !816, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!816 = !DISubroutineType(types: !817)
!817 = !{null, !729, !219}
!818 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !819, line: 136)
!819 = !DISubprogram(name: "setvbuf", scope: !366, file: !366, line: 338, type: !820, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!820 = !DISubroutineType(types: !821)
!821 = !{!82, !729, !219, !82, !125}
!822 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !823, line: 137)
!823 = !DISubprogram(name: "sprintf", scope: !366, file: !366, line: 366, type: !824, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!824 = !DISubroutineType(types: !825)
!825 = !{!82, !219, !176, null}
!826 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !827, line: 138)
!827 = !DISubprogram(name: "sscanf", scope: !366, file: !366, line: 435, type: !828, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!828 = !DISubroutineType(types: !829)
!829 = !{!82, !176, !176, null}
!830 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !831, line: 139)
!831 = !DISubprogram(name: "tmpfile", scope: !366, file: !366, line: 197, type: !832, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!832 = !DISubroutineType(types: !833)
!833 = !{!712}
!834 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !835, line: 141)
!835 = !DISubprogram(name: "tmpnam", scope: !366, file: !366, line: 211, type: !788, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!836 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !837, line: 143)
!837 = !DISubprogram(name: "ungetc", scope: !366, file: !366, line: 704, type: !746, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!838 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !839, line: 144)
!839 = !DISubprogram(name: "vfprintf", scope: !366, file: !366, line: 373, type: !840, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!840 = !DISubroutineType(types: !841)
!841 = !{!82, !729, !176, !441}
!842 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !843, line: 145)
!843 = !DISubprogram(name: "vprintf", scope: !366, file: !366, line: 379, type: !844, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!844 = !DISubroutineType(types: !845)
!845 = !{!82, !176, !441}
!846 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !847, line: 146)
!847 = !DISubprogram(name: "vsprintf", scope: !366, file: !366, line: 381, type: !848, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!848 = !DISubroutineType(types: !849)
!849 = !{!82, !219, !176, !441}
!850 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !851, line: 175)
!851 = !DISubprogram(name: "snprintf", scope: !366, file: !366, line: 388, type: !852, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!852 = !DISubroutineType(types: !853)
!853 = !{!82, !219, !125, !176, null}
!854 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !855, line: 176)
!855 = !DISubprogram(name: "vfscanf", scope: !366, file: !366, line: 473, type: !840, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!856 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !857, line: 177)
!857 = !DISubprogram(name: "vscanf", scope: !366, file: !366, line: 481, type: !844, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!858 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !859, line: 178)
!859 = !DISubprogram(name: "vsnprintf", scope: !366, file: !366, line: 392, type: !860, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!860 = !DISubroutineType(types: !861)
!861 = !{!82, !219, !125, !176, !441}
!862 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !863, line: 179)
!863 = !DISubprogram(name: "vsscanf", scope: !366, file: !366, line: 485, type: !864, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!864 = !DISubroutineType(types: !865)
!865 = !{!82, !176, !176, !441}
!866 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !851, line: 185)
!867 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !855, line: 186)
!868 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !857, line: 187)
!869 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !859, line: 188)
!870 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !863, line: 189)
!871 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !872, line: 83)
!872 = !DISubprogram(name: "acos", scope: !873, file: !873, line: 54, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!873 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!874 = !DISubroutineType(types: !875)
!875 = !{!108, !108}
!876 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !877, line: 102)
!877 = !DISubprogram(name: "asin", scope: !873, file: !873, line: 56, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!878 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !879, line: 121)
!879 = !DISubprogram(name: "atan", scope: !873, file: !873, line: 58, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!880 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !881, line: 140)
!881 = !DISubprogram(name: "atan2", scope: !873, file: !873, line: 60, type: !882, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!882 = !DISubroutineType(types: !883)
!883 = !{!108, !108, !108}
!884 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !885, line: 161)
!885 = !DISubprogram(name: "ceil", scope: !873, file: !873, line: 178, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!886 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !887, line: 180)
!887 = !DISubprogram(name: "cos", scope: !873, file: !873, line: 63, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!888 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !889, line: 199)
!889 = !DISubprogram(name: "cosh", scope: !873, file: !873, line: 72, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!890 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !891, line: 218)
!891 = !DISubprogram(name: "exp", scope: !873, file: !873, line: 100, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!892 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !893, line: 237)
!893 = !DISubprogram(name: "fabs", scope: !873, file: !873, line: 181, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!894 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !895, line: 256)
!895 = !DISubprogram(name: "floor", scope: !873, file: !873, line: 184, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!896 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !897, line: 275)
!897 = !DISubprogram(name: "fmod", scope: !873, file: !873, line: 187, type: !882, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!898 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !899, line: 296)
!899 = !DISubprogram(name: "frexp", scope: !873, file: !873, line: 103, type: !900, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!900 = !DISubroutineType(types: !901)
!901 = !{!108, !108, !902}
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!903 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !904, line: 315)
!904 = !DISubprogram(name: "ldexp", scope: !873, file: !873, line: 106, type: !905, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!905 = !DISubroutineType(types: !906)
!906 = !{!108, !108, !82}
!907 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !908, line: 334)
!908 = !DISubprogram(name: "log", scope: !873, file: !873, line: 109, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!909 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !910, line: 353)
!910 = !DISubprogram(name: "log10", scope: !873, file: !873, line: 112, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!911 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !912, line: 372)
!912 = !DISubprogram(name: "modf", scope: !873, file: !873, line: 115, type: !913, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!913 = !DISubroutineType(types: !914)
!914 = !{!108, !108, !915}
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!916 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !917, line: 384)
!917 = !DISubprogram(name: "pow", scope: !873, file: !873, line: 153, type: !882, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!918 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !919, line: 421)
!919 = !DISubprogram(name: "sin", scope: !873, file: !873, line: 65, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!920 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !921, line: 440)
!921 = !DISubprogram(name: "sinh", scope: !873, file: !873, line: 74, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!922 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !923, line: 459)
!923 = !DISubprogram(name: "sqrt", scope: !873, file: !873, line: 156, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!924 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !925, line: 478)
!925 = !DISubprogram(name: "tan", scope: !873, file: !873, line: 67, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!926 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !927, line: 497)
!927 = !DISubprogram(name: "tanh", scope: !873, file: !873, line: 76, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!928 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !929, line: 1080)
!929 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_t", file: !930, line: 29, baseType: !108)
!930 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathdef.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!931 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !932, line: 1081)
!932 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_t", file: !930, line: 28, baseType: !262)
!933 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !934, line: 1084)
!934 = !DISubprogram(name: "acosh", scope: !873, file: !873, line: 88, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!935 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !936, line: 1085)
!936 = !DISubprogram(name: "acoshf", scope: !873, file: !873, line: 88, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!937 = !DISubroutineType(types: !938)
!938 = !{!262, !262}
!939 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !940, line: 1086)
!940 = !DISubprogram(name: "acoshl", scope: !873, file: !873, line: 88, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!941 = !DISubroutineType(types: !942)
!942 = !{!267, !267}
!943 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !944, line: 1088)
!944 = !DISubprogram(name: "asinh", scope: !873, file: !873, line: 90, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!945 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !946, line: 1089)
!946 = !DISubprogram(name: "asinhf", scope: !873, file: !873, line: 90, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!947 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !948, line: 1090)
!948 = !DISubprogram(name: "asinhl", scope: !873, file: !873, line: 90, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!949 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !950, line: 1092)
!950 = !DISubprogram(name: "atanh", scope: !873, file: !873, line: 92, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!951 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !952, line: 1093)
!952 = !DISubprogram(name: "atanhf", scope: !873, file: !873, line: 92, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!953 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !954, line: 1094)
!954 = !DISubprogram(name: "atanhl", scope: !873, file: !873, line: 92, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!955 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !956, line: 1096)
!956 = !DISubprogram(name: "cbrt", scope: !873, file: !873, line: 169, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!957 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !958, line: 1097)
!958 = !DISubprogram(name: "cbrtf", scope: !873, file: !873, line: 169, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!959 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !960, line: 1098)
!960 = !DISubprogram(name: "cbrtl", scope: !873, file: !873, line: 169, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!961 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !962, line: 1100)
!962 = !DISubprogram(name: "copysign", scope: !873, file: !873, line: 221, type: !882, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!963 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !964, line: 1101)
!964 = !DISubprogram(name: "copysignf", scope: !873, file: !873, line: 221, type: !965, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!965 = !DISubroutineType(types: !966)
!966 = !{!262, !262, !262}
!967 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !968, line: 1102)
!968 = !DISubprogram(name: "copysignl", scope: !873, file: !873, line: 221, type: !969, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!969 = !DISubroutineType(types: !970)
!970 = !{!267, !267, !267}
!971 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !972, line: 1104)
!972 = !DISubprogram(name: "erf", scope: !873, file: !873, line: 259, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!973 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !974, line: 1105)
!974 = !DISubprogram(name: "erff", scope: !873, file: !873, line: 259, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!975 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !976, line: 1106)
!976 = !DISubprogram(name: "erfl", scope: !873, file: !873, line: 259, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!977 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !978, line: 1108)
!978 = !DISubprogram(name: "erfc", scope: !873, file: !873, line: 260, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!979 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !980, line: 1109)
!980 = !DISubprogram(name: "erfcf", scope: !873, file: !873, line: 260, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!981 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !982, line: 1110)
!982 = !DISubprogram(name: "erfcl", scope: !873, file: !873, line: 260, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!983 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !984, line: 1112)
!984 = !DISubprogram(name: "exp2", scope: !873, file: !873, line: 141, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!985 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !986, line: 1113)
!986 = !DISubprogram(name: "exp2f", scope: !873, file: !873, line: 141, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!987 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !988, line: 1114)
!988 = !DISubprogram(name: "exp2l", scope: !873, file: !873, line: 141, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!989 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !990, line: 1116)
!990 = !DISubprogram(name: "expm1", scope: !873, file: !873, line: 128, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!991 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !992, line: 1117)
!992 = !DISubprogram(name: "expm1f", scope: !873, file: !873, line: 128, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!993 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !994, line: 1118)
!994 = !DISubprogram(name: "expm1l", scope: !873, file: !873, line: 128, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!995 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !996, line: 1120)
!996 = !DISubprogram(name: "fdim", scope: !873, file: !873, line: 354, type: !882, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!997 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !998, line: 1121)
!998 = !DISubprogram(name: "fdimf", scope: !873, file: !873, line: 354, type: !965, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!999 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1000, line: 1122)
!1000 = !DISubprogram(name: "fdiml", scope: !873, file: !873, line: 354, type: !969, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1001 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1002, line: 1124)
!1002 = !DISubprogram(name: "fma", scope: !873, file: !873, line: 373, type: !1003, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!108, !108, !108, !108}
!1005 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1006, line: 1125)
!1006 = !DISubprogram(name: "fmaf", scope: !873, file: !873, line: 373, type: !1007, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!262, !262, !262, !262}
!1009 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1010, line: 1126)
!1010 = !DISubprogram(name: "fmal", scope: !873, file: !873, line: 373, type: !1011, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!267, !267, !267, !267}
!1013 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1014, line: 1128)
!1014 = !DISubprogram(name: "fmax", scope: !873, file: !873, line: 357, type: !882, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1015 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1016, line: 1129)
!1016 = !DISubprogram(name: "fmaxf", scope: !873, file: !873, line: 357, type: !965, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1017 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1018, line: 1130)
!1018 = !DISubprogram(name: "fmaxl", scope: !873, file: !873, line: 357, type: !969, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1019 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1020, line: 1132)
!1020 = !DISubprogram(name: "fmin", scope: !873, file: !873, line: 360, type: !882, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1021 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1022, line: 1133)
!1022 = !DISubprogram(name: "fminf", scope: !873, file: !873, line: 360, type: !965, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1023 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1024, line: 1134)
!1024 = !DISubprogram(name: "fminl", scope: !873, file: !873, line: 360, type: !969, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1025 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1026, line: 1136)
!1026 = !DISubprogram(name: "hypot", scope: !873, file: !873, line: 162, type: !882, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1027 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1028, line: 1137)
!1028 = !DISubprogram(name: "hypotf", scope: !873, file: !873, line: 162, type: !965, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1029 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1030, line: 1138)
!1030 = !DISubprogram(name: "hypotl", scope: !873, file: !873, line: 162, type: !969, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1031 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1032, line: 1140)
!1032 = !DISubprogram(name: "ilogb", scope: !873, file: !873, line: 313, type: !1033, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{!82, !108}
!1035 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1036, line: 1141)
!1036 = !DISubprogram(name: "ilogbf", scope: !873, file: !873, line: 313, type: !1037, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!82, !262}
!1039 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1040, line: 1142)
!1040 = !DISubprogram(name: "ilogbl", scope: !873, file: !873, line: 313, type: !1041, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!82, !267}
!1043 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1044, line: 1144)
!1044 = !DISubprogram(name: "lgamma", scope: !873, file: !873, line: 261, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1045 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1046, line: 1145)
!1046 = !DISubprogram(name: "lgammaf", scope: !873, file: !873, line: 261, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1047 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1048, line: 1146)
!1048 = !DISubprogram(name: "lgammal", scope: !873, file: !873, line: 261, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1049 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1050, line: 1149)
!1050 = !DISubprogram(name: "llrint", scope: !873, file: !873, line: 344, type: !1051, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!233, !108}
!1053 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1054, line: 1150)
!1054 = !DISubprogram(name: "llrintf", scope: !873, file: !873, line: 344, type: !1055, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!233, !262}
!1057 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1058, line: 1151)
!1058 = !DISubprogram(name: "llrintl", scope: !873, file: !873, line: 344, type: !1059, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!233, !267}
!1061 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1062, line: 1153)
!1062 = !DISubprogram(name: "llround", scope: !873, file: !873, line: 350, type: !1051, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1063 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1064, line: 1154)
!1064 = !DISubprogram(name: "llroundf", scope: !873, file: !873, line: 350, type: !1055, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1065 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1066, line: 1155)
!1066 = !DISubprogram(name: "llroundl", scope: !873, file: !873, line: 350, type: !1059, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1067 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1068, line: 1158)
!1068 = !DISubprogram(name: "log1p", scope: !873, file: !873, line: 131, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1069 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1070, line: 1159)
!1070 = !DISubprogram(name: "log1pf", scope: !873, file: !873, line: 131, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1071 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1072, line: 1160)
!1072 = !DISubprogram(name: "log1pl", scope: !873, file: !873, line: 131, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1073 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1074, line: 1162)
!1074 = !DISubprogram(name: "log2", scope: !873, file: !873, line: 144, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1075 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1076, line: 1163)
!1076 = !DISubprogram(name: "log2f", scope: !873, file: !873, line: 144, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1077 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1078, line: 1164)
!1078 = !DISubprogram(name: "log2l", scope: !873, file: !873, line: 144, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1079 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1080, line: 1166)
!1080 = !DISubprogram(name: "logb", scope: !873, file: !873, line: 134, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1081 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1082, line: 1167)
!1082 = !DISubprogram(name: "logbf", scope: !873, file: !873, line: 134, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1083 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1084, line: 1168)
!1084 = !DISubprogram(name: "logbl", scope: !873, file: !873, line: 134, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1085 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1086, line: 1170)
!1086 = !DISubprogram(name: "lrint", scope: !873, file: !873, line: 342, type: !1087, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!91, !108}
!1089 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1090, line: 1171)
!1090 = !DISubprogram(name: "lrintf", scope: !873, file: !873, line: 342, type: !1091, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!91, !262}
!1093 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1094, line: 1172)
!1094 = !DISubprogram(name: "lrintl", scope: !873, file: !873, line: 342, type: !1095, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!91, !267}
!1097 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1098, line: 1174)
!1098 = !DISubprogram(name: "lround", scope: !873, file: !873, line: 348, type: !1087, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1099 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1100, line: 1175)
!1100 = !DISubprogram(name: "lroundf", scope: !873, file: !873, line: 348, type: !1091, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1101 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1102, line: 1176)
!1102 = !DISubprogram(name: "lroundl", scope: !873, file: !873, line: 348, type: !1095, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1103 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1104, line: 1178)
!1104 = !DISubprogram(name: "nan", scope: !873, file: !873, line: 228, type: !106, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1105 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1106, line: 1179)
!1106 = !DISubprogram(name: "nanf", scope: !873, file: !873, line: 228, type: !1107, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!262, !109}
!1109 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1110, line: 1180)
!1110 = !DISubprogram(name: "nanl", scope: !873, file: !873, line: 228, type: !1111, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!267, !109}
!1113 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1114, line: 1182)
!1114 = !DISubprogram(name: "nearbyint", scope: !873, file: !873, line: 322, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1115 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1116, line: 1183)
!1116 = !DISubprogram(name: "nearbyintf", scope: !873, file: !873, line: 322, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1117 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1118, line: 1184)
!1118 = !DISubprogram(name: "nearbyintl", scope: !873, file: !873, line: 322, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1119 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1120, line: 1186)
!1120 = !DISubprogram(name: "nextafter", scope: !873, file: !873, line: 292, type: !882, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1121 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1122, line: 1187)
!1122 = !DISubprogram(name: "nextafterf", scope: !873, file: !873, line: 292, type: !965, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1123 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1124, line: 1188)
!1124 = !DISubprogram(name: "nextafterl", scope: !873, file: !873, line: 292, type: !969, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1125 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1126, line: 1190)
!1126 = !DISubprogram(name: "nexttoward", scope: !873, file: !873, line: 294, type: !1127, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{!108, !108, !267}
!1129 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1130, line: 1191)
!1130 = !DISubprogram(name: "nexttowardf", scope: !873, file: !873, line: 294, type: !1131, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!262, !262, !267}
!1133 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1134, line: 1192)
!1134 = !DISubprogram(name: "nexttowardl", scope: !873, file: !873, line: 294, type: !969, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1135 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1136, line: 1194)
!1136 = !DISubprogram(name: "remainder", scope: !873, file: !873, line: 305, type: !882, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1137 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1138, line: 1195)
!1138 = !DISubprogram(name: "remainderf", scope: !873, file: !873, line: 305, type: !965, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1139 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1140, line: 1196)
!1140 = !DISubprogram(name: "remainderl", scope: !873, file: !873, line: 305, type: !969, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1141 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1142, line: 1198)
!1142 = !DISubprogram(name: "remquo", scope: !873, file: !873, line: 335, type: !1143, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{!108, !108, !108, !902}
!1145 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1146, line: 1199)
!1146 = !DISubprogram(name: "remquof", scope: !873, file: !873, line: 335, type: !1147, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!262, !262, !262, !902}
!1149 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1150, line: 1200)
!1150 = !DISubprogram(name: "remquol", scope: !873, file: !873, line: 335, type: !1151, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!267, !267, !267, !902}
!1153 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1154, line: 1202)
!1154 = !DISubprogram(name: "rint", scope: !873, file: !873, line: 289, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1155 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1156, line: 1203)
!1156 = !DISubprogram(name: "rintf", scope: !873, file: !873, line: 289, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1157 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1158, line: 1204)
!1158 = !DISubprogram(name: "rintl", scope: !873, file: !873, line: 289, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1159 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1160, line: 1206)
!1160 = !DISubprogram(name: "round", scope: !873, file: !873, line: 326, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1161 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1162, line: 1207)
!1162 = !DISubprogram(name: "roundf", scope: !873, file: !873, line: 326, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1163 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1164, line: 1208)
!1164 = !DISubprogram(name: "roundl", scope: !873, file: !873, line: 326, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1165 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1166, line: 1210)
!1166 = !DISubprogram(name: "scalbln", scope: !873, file: !873, line: 318, type: !1167, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!108, !108, !91}
!1169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1170, line: 1211)
!1170 = !DISubprogram(name: "scalblnf", scope: !873, file: !873, line: 318, type: !1171, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!262, !262, !91}
!1173 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1174, line: 1212)
!1174 = !DISubprogram(name: "scalblnl", scope: !873, file: !873, line: 318, type: !1175, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!267, !267, !91}
!1177 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1178, line: 1214)
!1178 = !DISubprogram(name: "scalbn", scope: !873, file: !873, line: 309, type: !905, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1179 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1180, line: 1215)
!1180 = !DISubprogram(name: "scalbnf", scope: !873, file: !873, line: 309, type: !1181, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!262, !262, !82}
!1183 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1184, line: 1216)
!1184 = !DISubprogram(name: "scalbnl", scope: !873, file: !873, line: 309, type: !1185, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!267, !267, !82}
!1187 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1188, line: 1218)
!1188 = !DISubprogram(name: "tgamma", scope: !873, file: !873, line: 268, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1189 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1190, line: 1219)
!1190 = !DISubprogram(name: "tgammaf", scope: !873, file: !873, line: 268, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1191 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1192, line: 1220)
!1192 = !DISubprogram(name: "tgammal", scope: !873, file: !873, line: 268, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1193 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1194, line: 1222)
!1194 = !DISubprogram(name: "trunc", scope: !873, file: !873, line: 330, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1196, line: 1223)
!1196 = !DISubprogram(name: "truncf", scope: !873, file: !873, line: 330, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1197 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1198, line: 1224)
!1198 = !DISubprogram(name: "truncl", scope: !873, file: !873, line: 330, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1200, line: 58)
!1200 = !DIDerivedType(tag: DW_TAG_typedef, name: "fenv_t", file: !1201, line: 94, baseType: !1202)
!1201 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/fenv.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1201, line: 75, flags: DIFlagFwdDecl, identifier: "_ZTS6fenv_t")
!1203 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1204, line: 59)
!1204 = !DIDerivedType(tag: DW_TAG_typedef, name: "fexcept_t", file: !1201, line: 68, baseType: !29)
!1205 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1206, line: 62)
!1206 = !DISubprogram(name: "feclearexcept", scope: !1207, file: !1207, line: 64, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1207 = !DIFile(filename: "/usr/include/fenv.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!1208 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1209, line: 63)
!1209 = !DISubprogram(name: "fegetexceptflag", scope: !1207, file: !1207, line: 68, type: !1210, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!82, !1212, !82}
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1214, line: 64)
!1214 = !DISubprogram(name: "feraiseexcept", scope: !1207, file: !1207, line: 71, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1215 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1216, line: 65)
!1216 = !DISubprogram(name: "fesetexceptflag", scope: !1207, file: !1207, line: 75, type: !1217, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!82, !1219, !82}
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1204)
!1221 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1222, line: 66)
!1222 = !DISubprogram(name: "fetestexcept", scope: !1207, file: !1207, line: 79, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1223 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1224, line: 68)
!1224 = !DISubprogram(name: "fegetround", scope: !1207, file: !1207, line: 85, type: !189, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1225 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1226, line: 69)
!1226 = !DISubprogram(name: "fesetround", scope: !1207, file: !1207, line: 88, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1228, line: 71)
!1228 = !DISubprogram(name: "fegetenv", scope: !1207, file: !1207, line: 95, type: !1229, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!82, !1231}
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1232 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1233, line: 72)
!1233 = !DISubprogram(name: "feholdexcept", scope: !1207, file: !1207, line: 100, type: !1229, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1234 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1235, line: 73)
!1235 = !DISubprogram(name: "fesetenv", scope: !1207, file: !1207, line: 104, type: !1236, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!82, !1238}
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1200)
!1240 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1241, line: 74)
!1241 = !DISubprogram(name: "feupdateenv", scope: !1207, file: !1207, line: 109, type: !1236, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1242 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1200, line: 61)
!1243 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1204, line: 62)
!1244 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1206, line: 65)
!1245 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1209, line: 66)
!1246 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1214, line: 67)
!1247 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1216, line: 68)
!1248 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1222, line: 69)
!1249 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1224, line: 71)
!1250 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1226, line: 72)
!1251 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1228, line: 74)
!1252 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1233, line: 75)
!1253 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1235, line: 76)
!1254 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1241, line: 77)
!1255 = !{i32 2, !"Dwarf Version", i32 4}
!1256 = !{i32 2, !"Debug Info Version", i32 3}
!1257 = distinct !DISubprogram(name: "__remill_basic_block", scope: !2, file: !2, line: 52, type: !1258, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: false, unit: !1, variables: !7)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!1260, !1263, !1946, !1260}
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Memory", file: !1262, line: 36, flags: DIFlagFwdDecl, identifier: "_ZTS6Memory")
!1262 = !DIFile(filename: "/home/sdasgup3/Github/remill/remill/Arch/Runtime/Types.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!1263 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1264, size: 64)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "State", file: !27, line: 742, size: 27008, align: 128, elements: !1265, identifier: "_ZTS5State")
!1265 = !{!1266, !1278, !1487, !1507, !1537, !1562, !1591, !1628, !1638, !1699, !1724, !1748, !1928}
!1266 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1264, baseType: !1267)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ArchState", file: !1268, line: 21, size: 128, elements: !1269, identifier: "_ZTS9ArchState")
!1268 = !DIFile(filename: "/home/sdasgup3/Github/remill/remill/Arch/Runtime/State.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!1269 = !{!1270, !1271, !1272}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "hyper_call", scope: !1267, file: !1268, line: 23, baseType: !4, size: 32)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !1267, file: !1268, line: 25, baseType: !8, size: 32, offset: 32)
!1272 = !DIDerivedType(tag: DW_TAG_member, scope: !1267, file: !1268, line: 31, baseType: !1273, size: 64, offset: 64)
!1273 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1267, file: !1268, line: 31, size: 64, elements: !1274, identifier: "_ZTSN9ArchStateUt_E")
!1274 = !{!1275, !1276, !1277}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "addr_to_load", scope: !1273, file: !1268, line: 32, baseType: !635, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "addr_to_store", scope: !1273, file: !1268, line: 33, baseType: !635, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "hyper_call_vector", scope: !1273, file: !1268, line: 34, baseType: !8, size: 32)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1264, file: !27, line: 747, baseType: !1279, size: 16384, offset: 128)
!1279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1280, size: 16384, elements: !1365)
!1280 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "VectorReg", file: !27, line: 636, size: 512, align: 128, elements: !1281, identifier: "_ZTS9VectorReg")
!1281 = !{!1282, !1357, !1422}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "xmm", scope: !1280, file: !27, line: 637, baseType: !1283, size: 128, align: 128)
!1283 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "vec128_t", file: !1262, line: 317, size: 128, elements: !1284, identifier: "_ZTS8vec128_t")
!1284 = !{!1285, !1294, !1301, !1308, !1313, !1320, !1325, !1330, !1335, !1340, !1345, !1350}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "dqwords", scope: !1283, file: !1262, line: 321, baseType: !1286, size: 128)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint128v1_t", file: !1262, line: 205, size: 128, elements: !1287, identifier: "_ZTS11uint128v1_t")
!1287 = !{!1288}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1286, file: !1262, line: 205, baseType: !1289, size: 128)
!1289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1290, size: 128, elements: !1292)
!1290 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint128_t", file: !1262, line: 46, baseType: !1291)
!1291 = !DIBasicType(name: "unsigned __int128", size: 128, encoding: DW_ATE_unsigned)
!1292 = !{!1293}
!1293 = !DISubrange(count: 1)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !1283, file: !1262, line: 323, baseType: !1295, size: 128)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint8v16_t", file: !1262, line: 182, size: 128, elements: !1296, identifier: "_ZTS10uint8v16_t")
!1296 = !{!1297}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1295, file: !1262, line: 182, baseType: !1298, size: 128)
!1298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 128, elements: !1299)
!1299 = !{!1300}
!1300 = !DISubrange(count: 16)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !1283, file: !1262, line: 324, baseType: !1302, size: 128)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint16v8_t", file: !1262, line: 189, size: 128, elements: !1303, identifier: "_ZTS10uint16v8_t")
!1303 = !{!1304}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1302, file: !1262, line: 189, baseType: !1305, size: 128)
!1305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 128, elements: !1306)
!1306 = !{!1307}
!1307 = !DISubrange(count: 8)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "dwords", scope: !1283, file: !1262, line: 325, baseType: !1309, size: 128)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint32v4_t", file: !1262, line: 195, size: 128, elements: !1310, identifier: "_ZTS10uint32v4_t")
!1310 = !{!1311}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1309, file: !1262, line: 195, baseType: !1312, size: 128)
!1312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 128, elements: !352)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "qwords", scope: !1283, file: !1262, line: 326, baseType: !1314, size: 128)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint64v2_t", file: !1262, line: 200, size: 128, elements: !1315, identifier: "_ZTS10uint64v2_t")
!1315 = !{!1316}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1314, file: !1262, line: 200, baseType: !1317, size: 128)
!1317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !635, size: 128, elements: !1318)
!1318 = !{!1319}
!1319 = !DISubrange(count: 2)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "floats", scope: !1283, file: !1262, line: 327, baseType: !1321, size: 128)
!1321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "float32v4_t", file: !1262, line: 242, size: 128, elements: !1322, identifier: "_ZTS11float32v4_t")
!1322 = !{!1323}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1321, file: !1262, line: 242, baseType: !1324, size: 128)
!1324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 128, elements: !352)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "doubles", scope: !1283, file: !1262, line: 328, baseType: !1326, size: 128)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "float64v2_t", file: !1262, line: 247, size: 128, elements: !1327, identifier: "_ZTS11float64v2_t")
!1327 = !{!1328}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1326, file: !1262, line: 247, baseType: !1329, size: 128)
!1329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 128, elements: !1318)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "sbytes", scope: !1283, file: !1262, line: 330, baseType: !1331, size: 128)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int8v16_t", file: !1262, line: 213, size: 128, elements: !1332, identifier: "_ZTS9int8v16_t")
!1332 = !{!1333}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1331, file: !1262, line: 213, baseType: !1334, size: 128)
!1334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !601, size: 128, elements: !1299)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "swords", scope: !1283, file: !1262, line: 331, baseType: !1336, size: 128)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int16v8_t", file: !1262, line: 220, size: 128, elements: !1337, identifier: "_ZTS9int16v8_t")
!1337 = !{!1338}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1336, file: !1262, line: 220, baseType: !1339, size: 128)
!1339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !605, size: 128, elements: !1306)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "sdwords", scope: !1283, file: !1262, line: 332, baseType: !1341, size: 128)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int32v4_t", file: !1262, line: 226, size: 128, elements: !1342, identifier: "_ZTS9int32v4_t")
!1342 = !{!1343}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1341, file: !1262, line: 226, baseType: !1344, size: 128)
!1344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !608, size: 128, elements: !352)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "sqwords", scope: !1283, file: !1262, line: 333, baseType: !1346, size: 128)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int64v2_t", file: !1262, line: 231, size: 128, elements: !1347, identifier: "_ZTS9int64v2_t")
!1347 = !{!1348}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1346, file: !1262, line: 231, baseType: !1349, size: 128)
!1349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !610, size: 128, elements: !1318)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "sdqwords", scope: !1283, file: !1262, line: 334, baseType: !1351, size: 128)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int128v1_t", file: !1262, line: 236, size: 128, elements: !1352, identifier: "_ZTS10int128v1_t")
!1352 = !{!1353}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1351, file: !1262, line: 236, baseType: !1354, size: 128)
!1354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1355, size: 128, elements: !1292)
!1355 = !DIDerivedType(tag: DW_TAG_typedef, name: "int128_t", file: !1262, line: 47, baseType: !1356)
!1356 = !DIBasicType(name: "__int128", size: 128, encoding: DW_ATE_signed)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "ymm", scope: !1280, file: !27, line: 638, baseType: !1358, size: 256, align: 128)
!1358 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "vec256_t", file: !1262, line: 340, size: 256, elements: !1359, identifier: "_ZTS8vec256_t")
!1359 = !{!1360, !1367, !1372, !1377, !1382, !1387, !1392, !1397, !1402, !1407, !1412, !1417}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !1358, file: !1262, line: 341, baseType: !1361, size: 256)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint8v32_t", file: !1262, line: 183, size: 256, elements: !1362, identifier: "_ZTS10uint8v32_t")
!1362 = !{!1363}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1361, file: !1262, line: 183, baseType: !1364, size: 256)
!1364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 256, elements: !1365)
!1365 = !{!1366}
!1366 = !DISubrange(count: 32)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !1358, file: !1262, line: 342, baseType: !1368, size: 256)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint16v16_t", file: !1262, line: 190, size: 256, elements: !1369, identifier: "_ZTS11uint16v16_t")
!1369 = !{!1370}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1368, file: !1262, line: 190, baseType: !1371, size: 256)
!1371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 256, elements: !1299)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "dwords", scope: !1358, file: !1262, line: 343, baseType: !1373, size: 256)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint32v8_t", file: !1262, line: 196, size: 256, elements: !1374, identifier: "_ZTS10uint32v8_t")
!1374 = !{!1375}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1373, file: !1262, line: 196, baseType: !1376, size: 256)
!1376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 256, elements: !1306)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "qwords", scope: !1358, file: !1262, line: 344, baseType: !1378, size: 256)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint64v4_t", file: !1262, line: 201, size: 256, elements: !1379, identifier: "_ZTS10uint64v4_t")
!1379 = !{!1380}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1378, file: !1262, line: 201, baseType: !1381, size: 256)
!1381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !635, size: 256, elements: !352)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "dqwords", scope: !1358, file: !1262, line: 345, baseType: !1383, size: 256)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint128v2_t", file: !1262, line: 206, size: 256, elements: !1384, identifier: "_ZTS11uint128v2_t")
!1384 = !{!1385}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1383, file: !1262, line: 206, baseType: !1386, size: 256)
!1386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1290, size: 256, elements: !1318)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "floats", scope: !1358, file: !1262, line: 346, baseType: !1388, size: 256)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "float32v8_t", file: !1262, line: 243, size: 256, elements: !1389, identifier: "_ZTS11float32v8_t")
!1389 = !{!1390}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1388, file: !1262, line: 243, baseType: !1391, size: 256)
!1391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 256, elements: !1306)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "doubles", scope: !1358, file: !1262, line: 347, baseType: !1393, size: 256)
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "float64v4_t", file: !1262, line: 248, size: 256, elements: !1394, identifier: "_ZTS11float64v4_t")
!1394 = !{!1395}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1393, file: !1262, line: 248, baseType: !1396, size: 256)
!1396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 256, elements: !352)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "sbytes", scope: !1358, file: !1262, line: 349, baseType: !1398, size: 256)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int8v32_t", file: !1262, line: 214, size: 256, elements: !1399, identifier: "_ZTS9int8v32_t")
!1399 = !{!1400}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1398, file: !1262, line: 214, baseType: !1401, size: 256)
!1401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !601, size: 256, elements: !1365)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "swords", scope: !1358, file: !1262, line: 350, baseType: !1403, size: 256)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int16v16_t", file: !1262, line: 221, size: 256, elements: !1404, identifier: "_ZTS10int16v16_t")
!1404 = !{!1405}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1403, file: !1262, line: 221, baseType: !1406, size: 256)
!1406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !605, size: 256, elements: !1299)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "sdwords", scope: !1358, file: !1262, line: 351, baseType: !1408, size: 256)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int32v8_t", file: !1262, line: 227, size: 256, elements: !1409, identifier: "_ZTS9int32v8_t")
!1409 = !{!1410}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1408, file: !1262, line: 227, baseType: !1411, size: 256)
!1411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !608, size: 256, elements: !1306)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "sqwords", scope: !1358, file: !1262, line: 352, baseType: !1413, size: 256)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int64v4_t", file: !1262, line: 232, size: 256, elements: !1414, identifier: "_ZTS9int64v4_t")
!1414 = !{!1415}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1413, file: !1262, line: 232, baseType: !1416, size: 256)
!1416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !610, size: 256, elements: !352)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "sdqwords", scope: !1358, file: !1262, line: 353, baseType: !1418, size: 256)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int128v2_t", file: !1262, line: 237, size: 256, elements: !1419, identifier: "_ZTS10int128v2_t")
!1419 = !{!1420}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1418, file: !1262, line: 237, baseType: !1421, size: 256)
!1421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1355, size: 256, elements: !1318)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "zmm", scope: !1280, file: !27, line: 639, baseType: !1423, size: 512, align: 128)
!1423 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "vec512_t", file: !1262, line: 359, size: 512, elements: !1424, identifier: "_ZTS8vec512_t")
!1424 = !{!1425, !1432, !1437, !1442, !1447, !1452, !1457, !1462, !1467, !1472, !1477, !1482}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !1423, file: !1262, line: 360, baseType: !1426, size: 512)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint8v64_t", file: !1262, line: 184, size: 512, elements: !1427, identifier: "_ZTS10uint8v64_t")
!1427 = !{!1428}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1426, file: !1262, line: 184, baseType: !1429, size: 512)
!1429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 512, elements: !1430)
!1430 = !{!1431}
!1431 = !DISubrange(count: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !1423, file: !1262, line: 361, baseType: !1433, size: 512)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint16v32_t", file: !1262, line: 191, size: 512, elements: !1434, identifier: "_ZTS11uint16v32_t")
!1434 = !{!1435}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1433, file: !1262, line: 191, baseType: !1436, size: 512)
!1436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 512, elements: !1365)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "dwords", scope: !1423, file: !1262, line: 362, baseType: !1438, size: 512)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint32v16_t", file: !1262, line: 197, size: 512, elements: !1439, identifier: "_ZTS11uint32v16_t")
!1439 = !{!1440}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1438, file: !1262, line: 197, baseType: !1441, size: 512)
!1441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 512, elements: !1299)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "qwords", scope: !1423, file: !1262, line: 363, baseType: !1443, size: 512)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint64v8_t", file: !1262, line: 202, size: 512, elements: !1444, identifier: "_ZTS10uint64v8_t")
!1444 = !{!1445}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1443, file: !1262, line: 202, baseType: !1446, size: 512)
!1446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !635, size: 512, elements: !1306)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "dqwords", scope: !1423, file: !1262, line: 364, baseType: !1448, size: 512)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint128v4_t", file: !1262, line: 207, size: 512, elements: !1449, identifier: "_ZTS11uint128v4_t")
!1449 = !{!1450}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1448, file: !1262, line: 207, baseType: !1451, size: 512)
!1451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1290, size: 512, elements: !352)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "floats", scope: !1423, file: !1262, line: 365, baseType: !1453, size: 512)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "float32v16_t", file: !1262, line: 244, size: 512, elements: !1454, identifier: "_ZTS12float32v16_t")
!1454 = !{!1455}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1453, file: !1262, line: 244, baseType: !1456, size: 512)
!1456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 512, elements: !1299)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "doubles", scope: !1423, file: !1262, line: 366, baseType: !1458, size: 512)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "float64v8_t", file: !1262, line: 249, size: 512, elements: !1459, identifier: "_ZTS11float64v8_t")
!1459 = !{!1460}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1458, file: !1262, line: 249, baseType: !1461, size: 512)
!1461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 512, elements: !1306)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "sbytes", scope: !1423, file: !1262, line: 368, baseType: !1463, size: 512)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int8v64_t", file: !1262, line: 215, size: 512, elements: !1464, identifier: "_ZTS9int8v64_t")
!1464 = !{!1465}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1463, file: !1262, line: 215, baseType: !1466, size: 512)
!1466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !601, size: 512, elements: !1430)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "swords", scope: !1423, file: !1262, line: 369, baseType: !1468, size: 512)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int16v32_t", file: !1262, line: 222, size: 512, elements: !1469, identifier: "_ZTS10int16v32_t")
!1469 = !{!1470}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1468, file: !1262, line: 222, baseType: !1471, size: 512)
!1471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !605, size: 512, elements: !1365)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "sdwords", scope: !1423, file: !1262, line: 370, baseType: !1473, size: 512)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int32v16_t", file: !1262, line: 228, size: 512, elements: !1474, identifier: "_ZTS10int32v16_t")
!1474 = !{!1475}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1473, file: !1262, line: 228, baseType: !1476, size: 512)
!1476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !608, size: 512, elements: !1299)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "sqwords", scope: !1423, file: !1262, line: 371, baseType: !1478, size: 512)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int64v8_t", file: !1262, line: 233, size: 512, elements: !1479, identifier: "_ZTS9int64v8_t")
!1479 = !{!1480}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1478, file: !1262, line: 233, baseType: !1481, size: 512)
!1481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !610, size: 512, elements: !1306)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "sdqwords", scope: !1423, file: !1262, line: 372, baseType: !1483, size: 512)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int128v4_t", file: !1262, line: 238, size: 512, elements: !1484, identifier: "_ZTS10int128v4_t")
!1484 = !{!1485}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1483, file: !1262, line: 238, baseType: !1486, size: 512)
!1486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1355, size: 512, elements: !352)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "aflag", scope: !1264, file: !27, line: 751, baseType: !1488, size: 128, align: 64, offset: 16512)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ArithFlags", file: !27, line: 402, size: 128, align: 64, elements: !1489, identifier: "_ZTS10ArithFlags")
!1489 = !{!1490, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !1488, file: !27, line: 404, baseType: !1491, size: 8)
!1491 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !62)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "cf", scope: !1488, file: !27, line: 405, baseType: !62, size: 8, offset: 8)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "_1", scope: !1488, file: !27, line: 406, baseType: !1491, size: 8, offset: 16)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "pf", scope: !1488, file: !27, line: 407, baseType: !62, size: 8, offset: 24)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "_2", scope: !1488, file: !27, line: 408, baseType: !1491, size: 8, offset: 32)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "af", scope: !1488, file: !27, line: 409, baseType: !62, size: 8, offset: 40)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "_3", scope: !1488, file: !27, line: 410, baseType: !1491, size: 8, offset: 48)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "zf", scope: !1488, file: !27, line: 411, baseType: !62, size: 8, offset: 56)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "_4", scope: !1488, file: !27, line: 412, baseType: !1491, size: 8, offset: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "sf", scope: !1488, file: !27, line: 413, baseType: !62, size: 8, offset: 72)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "_5", scope: !1488, file: !27, line: 414, baseType: !1491, size: 8, offset: 80)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "df", scope: !1488, file: !27, line: 415, baseType: !62, size: 8, offset: 88)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "_6", scope: !1488, file: !27, line: 416, baseType: !1491, size: 8, offset: 96)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "of", scope: !1488, file: !27, line: 417, baseType: !62, size: 8, offset: 104)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "_7", scope: !1488, file: !27, line: 418, baseType: !1491, size: 8, offset: 112)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "_8", scope: !1488, file: !27, line: 419, baseType: !1491, size: 8, offset: 120)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "rflag", scope: !1264, file: !27, line: 752, baseType: !1508, size: 64, align: 64, offset: 16640)
!1508 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "Flags", file: !27, line: 366, size: 64, align: 64, elements: !1509, identifier: "_ZTS5Flags")
!1509 = !{!1510, !1511}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !1508, file: !27, line: 367, baseType: !635, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_member, scope: !1508, file: !27, line: 368, baseType: !1512, size: 64)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1508, file: !27, line: 368, size: 64, elements: !1513, identifier: "_ZTSN5FlagsUt_E")
!1513 = !{!1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "cf", scope: !1512, file: !27, line: 369, baseType: !8, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "must_be_1", scope: !1512, file: !27, line: 370, baseType: !8, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "pf", scope: !1512, file: !27, line: 371, baseType: !8, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "must_be_0a", scope: !1512, file: !27, line: 372, baseType: !8, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "af", scope: !1512, file: !27, line: 374, baseType: !8, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "must_be_0b", scope: !1512, file: !27, line: 375, baseType: !8, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "zf", scope: !1512, file: !27, line: 376, baseType: !8, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "sf", scope: !1512, file: !27, line: 377, baseType: !8, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "tf", scope: !1512, file: !27, line: 379, baseType: !8, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "_if", scope: !1512, file: !27, line: 380, baseType: !8, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "df", scope: !1512, file: !27, line: 381, baseType: !8, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "of", scope: !1512, file: !27, line: 382, baseType: !8, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "iopl", scope: !1512, file: !27, line: 384, baseType: !8, size: 2, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "nt", scope: !1512, file: !27, line: 385, baseType: !8, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "must_be_0c", scope: !1512, file: !27, line: 386, baseType: !8, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "rf", scope: !1512, file: !27, line: 388, baseType: !8, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "vm", scope: !1512, file: !27, line: 389, baseType: !8, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "ac", scope: !1512, file: !27, line: 390, baseType: !8, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "vif", scope: !1512, file: !27, line: 391, baseType: !8, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "vip", scope: !1512, file: !27, line: 393, baseType: !8, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1512, file: !27, line: 394, baseType: !8, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_eflags", scope: !1512, file: !27, line: 395, baseType: !8, size: 10, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_rflags", scope: !1512, file: !27, line: 396, baseType: !8, size: 32, offset: 32)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "seg", scope: !1264, file: !27, line: 753, baseType: !1538, size: 192, align: 64, offset: 16704)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Segments", file: !27, line: 451, size: 192, align: 64, elements: !1539, identifier: "_ZTS8Segments")
!1539 = !{!1540, !1542, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !1538, file: !27, line: 452, baseType: !1541, size: 16)
!1541 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !28)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1538, file: !27, line: 453, baseType: !1543, size: 16, offset: 16)
!1543 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "SegmentSelector", file: !27, line: 76, size: 16, elements: !1544, identifier: "_ZTS15SegmentSelector")
!1544 = !{!1545, !1546}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !1543, file: !27, line: 77, baseType: !28, size: 16)
!1546 = !DIDerivedType(tag: DW_TAG_member, scope: !1543, file: !27, line: 78, baseType: !1547, size: 16)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1543, file: !27, line: 78, size: 16, elements: !1548, identifier: "_ZTSN15SegmentSelectorUt_E")
!1548 = !{!1549, !1550, !1551}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "rpi", scope: !1547, file: !27, line: 79, baseType: !26, size: 2, flags: DIFlagBitField, extraData: i64 0)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "ti", scope: !1547, file: !27, line: 80, baseType: !35, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1547, file: !27, line: 81, baseType: !28, size: 13, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "_1", scope: !1538, file: !27, line: 454, baseType: !1541, size: 16, offset: 32)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1538, file: !27, line: 455, baseType: !1543, size: 16, offset: 48)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "_2", scope: !1538, file: !27, line: 456, baseType: !1541, size: 16, offset: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "gs", scope: !1538, file: !27, line: 457, baseType: !1543, size: 16, offset: 80)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "_3", scope: !1538, file: !27, line: 458, baseType: !1541, size: 16, offset: 96)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1538, file: !27, line: 459, baseType: !1543, size: 16, offset: 112)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "_4", scope: !1538, file: !27, line: 460, baseType: !1541, size: 16, offset: 128)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1538, file: !27, line: 461, baseType: !1543, size: 16, offset: 144)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "_5", scope: !1538, file: !27, line: 462, baseType: !1541, size: 16, offset: 160)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1538, file: !27, line: 463, baseType: !1543, size: 16, offset: 176)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1264, file: !27, line: 754, baseType: !1563, size: 768, align: 64, offset: 16896)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "AddressSpace", file: !27, line: 654, size: 768, align: 64, elements: !1564, identifier: "_ZTS12AddressSpace")
!1564 = !{!1565, !1567, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !1563, file: !27, line: 655, baseType: !1566, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !635)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "ss_base", scope: !1563, file: !27, line: 656, baseType: !1568, size: 64, offset: 64)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Reg", file: !27, line: 610, size: 64, elements: !1569, identifier: "_ZTS3Reg")
!1569 = !{!1570}
!1570 = !DIDerivedType(tag: DW_TAG_member, scope: !1568, file: !27, line: 611, baseType: !1571, size: 64)
!1571 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1568, file: !27, line: 611, size: 64, elements: !1572, identifier: "_ZTSN3RegUt_E")
!1572 = !{!1573, !1578, !1579, !1580}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !1571, file: !27, line: 615, baseType: !1574, size: 16, align: 8)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1571, file: !27, line: 612, size: 16, elements: !1575, identifier: "_ZTSN3RegUt_Ut_E")
!1575 = !{!1576, !1577}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !1574, file: !27, line: 613, baseType: !62, size: 8)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !1574, file: !27, line: 614, baseType: !62, size: 8, offset: 8)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !1571, file: !27, line: 616, baseType: !28, size: 16, align: 16)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "dword", scope: !1571, file: !27, line: 617, baseType: !8, size: 32, align: 32)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "qword", scope: !1571, file: !27, line: 618, baseType: !635, size: 64, align: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "_1", scope: !1563, file: !27, line: 657, baseType: !1566, size: 64, offset: 128)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "es_base", scope: !1563, file: !27, line: 658, baseType: !1568, size: 64, offset: 192)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "_2", scope: !1563, file: !27, line: 659, baseType: !1566, size: 64, offset: 256)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "gs_base", scope: !1563, file: !27, line: 660, baseType: !1568, size: 64, offset: 320)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "_3", scope: !1563, file: !27, line: 661, baseType: !1566, size: 64, offset: 384)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "fs_base", scope: !1563, file: !27, line: 662, baseType: !1568, size: 64, offset: 448)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "_4", scope: !1563, file: !27, line: 663, baseType: !1566, size: 64, offset: 512)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "ds_base", scope: !1563, file: !27, line: 664, baseType: !1568, size: 64, offset: 576)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "_5", scope: !1563, file: !27, line: 665, baseType: !1566, size: 64, offset: 640)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "cs_base", scope: !1563, file: !27, line: 666, baseType: !1568, size: 64, offset: 704)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "gpr", scope: !1264, file: !27, line: 755, baseType: !1592, size: 2176, align: 64, offset: 17664)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GPR", file: !27, line: 677, size: 2176, align: 64, elements: !1593, identifier: "_ZTS3GPR")
!1593 = !{!1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !1592, file: !27, line: 679, baseType: !1566, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "rax", scope: !1592, file: !27, line: 680, baseType: !1568, size: 64, offset: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "_1", scope: !1592, file: !27, line: 681, baseType: !1566, size: 64, offset: 128)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "rbx", scope: !1592, file: !27, line: 682, baseType: !1568, size: 64, offset: 192)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "_2", scope: !1592, file: !27, line: 683, baseType: !1566, size: 64, offset: 256)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "rcx", scope: !1592, file: !27, line: 684, baseType: !1568, size: 64, offset: 320)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "_3", scope: !1592, file: !27, line: 685, baseType: !1566, size: 64, offset: 384)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "rdx", scope: !1592, file: !27, line: 686, baseType: !1568, size: 64, offset: 448)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "_4", scope: !1592, file: !27, line: 687, baseType: !1566, size: 64, offset: 512)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "rsi", scope: !1592, file: !27, line: 688, baseType: !1568, size: 64, offset: 576)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "_5", scope: !1592, file: !27, line: 689, baseType: !1566, size: 64, offset: 640)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "rdi", scope: !1592, file: !27, line: 690, baseType: !1568, size: 64, offset: 704)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "_6", scope: !1592, file: !27, line: 691, baseType: !1566, size: 64, offset: 768)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "rsp", scope: !1592, file: !27, line: 692, baseType: !1568, size: 64, offset: 832)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "_7", scope: !1592, file: !27, line: 693, baseType: !1566, size: 64, offset: 896)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "rbp", scope: !1592, file: !27, line: 694, baseType: !1568, size: 64, offset: 960)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "_8", scope: !1592, file: !27, line: 695, baseType: !1566, size: 64, offset: 1024)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1592, file: !27, line: 696, baseType: !1568, size: 64, offset: 1088)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "_9", scope: !1592, file: !27, line: 697, baseType: !1566, size: 64, offset: 1152)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1592, file: !27, line: 698, baseType: !1568, size: 64, offset: 1216)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "_10", scope: !1592, file: !27, line: 699, baseType: !1566, size: 64, offset: 1280)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1592, file: !27, line: 700, baseType: !1568, size: 64, offset: 1344)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "_11", scope: !1592, file: !27, line: 701, baseType: !1566, size: 64, offset: 1408)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1592, file: !27, line: 702, baseType: !1568, size: 64, offset: 1472)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "_12", scope: !1592, file: !27, line: 703, baseType: !1566, size: 64, offset: 1536)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1592, file: !27, line: 704, baseType: !1568, size: 64, offset: 1600)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "_13", scope: !1592, file: !27, line: 705, baseType: !1566, size: 64, offset: 1664)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1592, file: !27, line: 706, baseType: !1568, size: 64, offset: 1728)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "_14", scope: !1592, file: !27, line: 707, baseType: !1566, size: 64, offset: 1792)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1592, file: !27, line: 708, baseType: !1568, size: 64, offset: 1856)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "_15", scope: !1592, file: !27, line: 709, baseType: !1566, size: 64, offset: 1920)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1592, file: !27, line: 710, baseType: !1568, size: 64, offset: 1984)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "_16", scope: !1592, file: !27, line: 711, baseType: !1566, size: 64, offset: 2048)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1592, file: !27, line: 714, baseType: !1568, size: 64, offset: 2112)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !1264, file: !27, line: 756, baseType: !1629, size: 1024, align: 64, offset: 19840)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X87Stack", file: !27, line: 719, size: 1024, align: 64, elements: !1630, identifier: "_ZTS8X87Stack")
!1630 = !{!1631}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1629, file: !27, line: 723, baseType: !1632, size: 1024)
!1632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1633, size: 1024, elements: !1306)
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1629, file: !27, line: 720, size: 128, align: 64, elements: !1634, identifier: "_ZTSN8X87StackUt_E")
!1634 = !{!1635, !1636}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !1633, file: !27, line: 721, baseType: !635, size: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1633, file: !27, line: 722, baseType: !1637, size: 64, offset: 64)
!1637 = !DIDerivedType(tag: DW_TAG_typedef, name: "float64_t", file: !1262, line: 61, baseType: !108)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "mmx", scope: !1264, file: !27, line: 757, baseType: !1639, size: 1024, align: 64, offset: 20864)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MMX", file: !27, line: 729, size: 1024, align: 64, elements: !1640, identifier: "_ZTS3MMX")
!1640 = !{!1641}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1639, file: !27, line: 733, baseType: !1642, size: 1024)
!1642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1643, size: 1024, elements: !1306)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1639, file: !27, line: 730, size: 128, align: 64, elements: !1644, identifier: "_ZTSN3MMXUt_E")
!1644 = !{!1645, !1646}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !1643, file: !27, line: 731, baseType: !635, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1643, file: !27, line: 732, baseType: !1647, size: 64, offset: 64)
!1647 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "vec64_t", file: !1262, line: 294, size: 64, elements: !1648, identifier: "_ZTS7vec64_t")
!1648 = !{!1649, !1654, !1659, !1664, !1669, !1674, !1679, !1684, !1689, !1694}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "qwords", scope: !1647, file: !1262, line: 298, baseType: !1650, size: 64)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint64v1_t", file: !1262, line: 199, size: 64, elements: !1651, identifier: "_ZTS10uint64v1_t")
!1651 = !{!1652}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1650, file: !1262, line: 199, baseType: !1653, size: 64)
!1653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !635, size: 64, elements: !1292)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !1647, file: !1262, line: 300, baseType: !1655, size: 64)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint8v8_t", file: !1262, line: 181, size: 64, elements: !1656, identifier: "_ZTS9uint8v8_t")
!1656 = !{!1657}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1655, file: !1262, line: 181, baseType: !1658, size: 64)
!1658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 64, elements: !1306)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !1647, file: !1262, line: 301, baseType: !1660, size: 64)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint16v4_t", file: !1262, line: 188, size: 64, elements: !1661, identifier: "_ZTS10uint16v4_t")
!1661 = !{!1662}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1660, file: !1262, line: 188, baseType: !1663, size: 64)
!1663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 64, elements: !352)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "dwords", scope: !1647, file: !1262, line: 302, baseType: !1665, size: 64)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint32v2_t", file: !1262, line: 194, size: 64, elements: !1666, identifier: "_ZTS10uint32v2_t")
!1666 = !{!1667}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1665, file: !1262, line: 194, baseType: !1668, size: 64)
!1668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 64, elements: !1318)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "floats", scope: !1647, file: !1262, line: 303, baseType: !1670, size: 64)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "float32v2_t", file: !1262, line: 241, size: 64, elements: !1671, identifier: "_ZTS11float32v2_t")
!1671 = !{!1672}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1670, file: !1262, line: 241, baseType: !1673, size: 64)
!1673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 64, elements: !1318)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "doubles", scope: !1647, file: !1262, line: 304, baseType: !1675, size: 64)
!1675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "float64v1_t", file: !1262, line: 246, size: 64, elements: !1676, identifier: "_ZTS11float64v1_t")
!1676 = !{!1677}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1675, file: !1262, line: 246, baseType: !1678, size: 64)
!1678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 64, elements: !1292)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "sbytes", scope: !1647, file: !1262, line: 306, baseType: !1680, size: 64)
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int8v8_t", file: !1262, line: 212, size: 64, elements: !1681, identifier: "_ZTS8int8v8_t")
!1681 = !{!1682}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1680, file: !1262, line: 212, baseType: !1683, size: 64)
!1683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !601, size: 64, elements: !1306)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "swords", scope: !1647, file: !1262, line: 307, baseType: !1685, size: 64)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int16v4_t", file: !1262, line: 219, size: 64, elements: !1686, identifier: "_ZTS9int16v4_t")
!1686 = !{!1687}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1685, file: !1262, line: 219, baseType: !1688, size: 64)
!1688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !605, size: 64, elements: !352)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "sdwords", scope: !1647, file: !1262, line: 308, baseType: !1690, size: 64)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int32v2_t", file: !1262, line: 225, size: 64, elements: !1691, identifier: "_ZTS9int32v2_t")
!1691 = !{!1692}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1690, file: !1262, line: 225, baseType: !1693, size: 64)
!1693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !608, size: 64, elements: !1318)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "sqwords", scope: !1647, file: !1262, line: 309, baseType: !1695, size: 64)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int64v1_t", file: !1262, line: 230, size: 64, elements: !1696, identifier: "_ZTS9int64v1_t")
!1696 = !{!1697}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1695, file: !1262, line: 230, baseType: !1698, size: 64)
!1698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !610, size: 64, elements: !1292)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "sw", scope: !1264, file: !27, line: 758, baseType: !1700, size: 192, offset: 21888)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FPUStatusFlags", file: !27, line: 332, size: 192, elements: !1701, identifier: "_ZTS14FPUStatusFlags")
!1701 = !{!1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !1700, file: !27, line: 333, baseType: !62, size: 8)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "c0", scope: !1700, file: !27, line: 334, baseType: !62, size: 8, offset: 8)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "_1", scope: !1700, file: !27, line: 335, baseType: !62, size: 8, offset: 16)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "c1", scope: !1700, file: !27, line: 336, baseType: !62, size: 8, offset: 24)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "_2", scope: !1700, file: !27, line: 337, baseType: !62, size: 8, offset: 32)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "c2", scope: !1700, file: !27, line: 338, baseType: !62, size: 8, offset: 40)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "_3", scope: !1700, file: !27, line: 339, baseType: !62, size: 8, offset: 48)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "c3", scope: !1700, file: !27, line: 340, baseType: !62, size: 8, offset: 56)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "_4", scope: !1700, file: !27, line: 342, baseType: !62, size: 8, offset: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "pe", scope: !1700, file: !27, line: 343, baseType: !62, size: 8, offset: 72)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "_5", scope: !1700, file: !27, line: 345, baseType: !62, size: 8, offset: 80)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "ue", scope: !1700, file: !27, line: 346, baseType: !62, size: 8, offset: 88)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "_6", scope: !1700, file: !27, line: 348, baseType: !62, size: 8, offset: 96)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "oe", scope: !1700, file: !27, line: 349, baseType: !62, size: 8, offset: 104)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "_7", scope: !1700, file: !27, line: 351, baseType: !62, size: 8, offset: 112)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "ze", scope: !1700, file: !27, line: 352, baseType: !62, size: 8, offset: 120)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "_8", scope: !1700, file: !27, line: 354, baseType: !62, size: 8, offset: 128)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "de", scope: !1700, file: !27, line: 355, baseType: !62, size: 8, offset: 136)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "_9", scope: !1700, file: !27, line: 357, baseType: !62, size: 8, offset: 144)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "ie", scope: !1700, file: !27, line: 358, baseType: !62, size: 8, offset: 152)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "_padding", scope: !1700, file: !27, line: 360, baseType: !1723, size: 32, offset: 160)
!1723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 32, elements: !352)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "xcr0", scope: !1264, file: !27, line: 759, baseType: !1725, size: 64, offset: 22080)
!1725 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "XCR0", file: !27, line: 424, size: 64, elements: !1726, identifier: "_ZTS4XCR0")
!1726 = !{!1727, !1728, !1733}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !1725, file: !27, line: 425, baseType: !635, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, scope: !1725, file: !27, line: 427, baseType: !1729, size: 64)
!1729 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1725, file: !27, line: 427, size: 64, elements: !1730, identifier: "_ZTSN4XCR0Ut_E")
!1730 = !{!1731, !1732}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "eax", scope: !1729, file: !27, line: 428, baseType: !8, size: 32)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "edx", scope: !1729, file: !27, line: 429, baseType: !8, size: 32, offset: 32)
!1733 = !DIDerivedType(tag: DW_TAG_member, scope: !1725, file: !27, line: 433, baseType: !1734, size: 64)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1725, file: !27, line: 433, size: 64, elements: !1735, identifier: "_ZTSN4XCR0Ut0_E")
!1735 = !{!1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "x87_fpu_mmx", scope: !1734, file: !27, line: 434, baseType: !635, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "xmm", scope: !1734, file: !27, line: 435, baseType: !635, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "ymm", scope: !1734, file: !27, line: 436, baseType: !635, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "bndreg", scope: !1734, file: !27, line: 437, baseType: !635, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "bndcsr", scope: !1734, file: !27, line: 438, baseType: !635, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "opmask", scope: !1734, file: !27, line: 439, baseType: !635, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "zmm_hi256", scope: !1734, file: !27, line: 440, baseType: !635, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "hi16_zmm", scope: !1734, file: !27, line: 441, baseType: !635, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !1734, file: !27, line: 442, baseType: !635, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "_reserved0", scope: !1734, file: !27, line: 443, baseType: !635, size: 53, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "lwp", scope: !1734, file: !27, line: 444, baseType: !635, size: 1, offset: 62, flags: DIFlagBitField, extraData: i64 0)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "_reserved1", scope: !1734, file: !27, line: 445, baseType: !635, size: 1, offset: 63, flags: DIFlagBitField, extraData: i64 0)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "x87", scope: !1264, file: !27, line: 760, baseType: !1749, size: 4096, align: 128, offset: 22144)
!1749 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "FPU", file: !27, line: 314, size: 4096, align: 128, elements: !1750, identifier: "_ZTS3FPU")
!1750 = !{!1751, !1847, !1910}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1749, file: !27, line: 317, baseType: !1752, size: 4096)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1749, file: !27, line: 315, size: 4096, elements: !1753, identifier: "_ZTSN3FPUUt_E")
!1753 = !{!1754, !1843}
!1754 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1752, baseType: !1755)
!1755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FpuFSAVE", file: !27, line: 263, size: 1248, elements: !1756, identifier: "_ZTS8FpuFSAVE")
!1756 = !{!1757, !1775, !1776, !1797, !1798, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1755, file: !27, line: 264, baseType: !1758, size: 16)
!1758 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "FPUControlWord", file: !27, line: 142, size: 16, elements: !1759, identifier: "_ZTS14FPUControlWord")
!1759 = !{!1760, !1761}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !1758, file: !27, line: 143, baseType: !28, size: 16)
!1761 = !DIDerivedType(tag: DW_TAG_member, scope: !1758, file: !27, line: 144, baseType: !1762, size: 16)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1758, file: !27, line: 144, size: 16, elements: !1763, identifier: "_ZTSN14FPUControlWordUt_E")
!1763 = !{!1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "im", scope: !1762, file: !27, line: 145, baseType: !28, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "dm", scope: !1762, file: !27, line: 146, baseType: !28, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "zm", scope: !1762, file: !27, line: 147, baseType: !28, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "om", scope: !1762, file: !27, line: 148, baseType: !28, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "um", scope: !1762, file: !27, line: 149, baseType: !28, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1762, file: !27, line: 150, baseType: !28, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd0", scope: !1762, file: !27, line: 151, baseType: !28, size: 2, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "pc", scope: !1762, file: !27, line: 152, baseType: !39, size: 2, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !1762, file: !27, line: 153, baseType: !45, size: 2, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1762, file: !27, line: 154, baseType: !51, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd1", scope: !1762, file: !27, line: 155, baseType: !28, size: 3, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd0", scope: !1755, file: !27, line: 265, baseType: !28, size: 16, offset: 16)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1755, file: !27, line: 266, baseType: !1777, size: 16, offset: 32)
!1777 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "FPUStatusWord", file: !27, line: 100, size: 16, elements: !1778, identifier: "_ZTS13FPUStatusWord")
!1778 = !{!1779, !1780}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !1777, file: !27, line: 101, baseType: !28, size: 16)
!1780 = !DIDerivedType(tag: DW_TAG_member, scope: !1777, file: !27, line: 102, baseType: !1781, size: 16)
!1781 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1777, file: !27, line: 102, size: 16, elements: !1782, identifier: "_ZTSN13FPUStatusWordUt_E")
!1782 = !{!1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "ie", scope: !1781, file: !27, line: 103, baseType: !28, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "de", scope: !1781, file: !27, line: 104, baseType: !28, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "ze", scope: !1781, file: !27, line: 105, baseType: !28, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "oe", scope: !1781, file: !27, line: 106, baseType: !28, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "ue", scope: !1781, file: !27, line: 107, baseType: !28, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "pe", scope: !1781, file: !27, line: 108, baseType: !28, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "sf", scope: !1781, file: !27, line: 109, baseType: !28, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1781, file: !27, line: 110, baseType: !28, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "c0", scope: !1781, file: !27, line: 111, baseType: !28, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "c1", scope: !1781, file: !27, line: 112, baseType: !28, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "c2", scope: !1781, file: !27, line: 113, baseType: !28, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !1781, file: !27, line: 114, baseType: !28, size: 3, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "c3", scope: !1781, file: !27, line: 115, baseType: !28, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1781, file: !27, line: 116, baseType: !28, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd1", scope: !1755, file: !27, line: 267, baseType: !28, size: 16, offset: 48)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "ftw", scope: !1755, file: !27, line: 268, baseType: !1799, size: 16, offset: 64)
!1799 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "FPUTagWord", file: !27, line: 227, size: 16, elements: !1800, identifier: "_ZTS10FPUTagWord")
!1800 = !{!1801, !1802}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !1799, file: !27, line: 228, baseType: !28, size: 16)
!1802 = !DIDerivedType(tag: DW_TAG_member, scope: !1799, file: !27, line: 229, baseType: !1803, size: 16)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1799, file: !27, line: 229, size: 16, elements: !1804, identifier: "_ZTSN10FPUTagWordUt_E")
!1804 = !{!1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "tag0", scope: !1803, file: !27, line: 230, baseType: !55, size: 2, flags: DIFlagBitField, extraData: i64 0)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "tag1", scope: !1803, file: !27, line: 231, baseType: !55, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "tag2", scope: !1803, file: !27, line: 232, baseType: !55, size: 2, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "tag3", scope: !1803, file: !27, line: 233, baseType: !55, size: 2, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "tag4", scope: !1803, file: !27, line: 234, baseType: !55, size: 2, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "tag5", scope: !1803, file: !27, line: 235, baseType: !55, size: 2, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "tag6", scope: !1803, file: !27, line: 236, baseType: !55, size: 2, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "tag7", scope: !1803, file: !27, line: 237, baseType: !55, size: 2, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1755, file: !27, line: 269, baseType: !28, size: 16, offset: 80)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1755, file: !27, line: 270, baseType: !8, size: 32, offset: 96)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1755, file: !27, line: 271, baseType: !1543, size: 16, offset: 128)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd2", scope: !1755, file: !27, line: 272, baseType: !28, size: 16, offset: 144)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "dp", scope: !1755, file: !27, line: 273, baseType: !8, size: 32, offset: 160)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1755, file: !27, line: 274, baseType: !1543, size: 16, offset: 192)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd3", scope: !1755, file: !27, line: 275, baseType: !28, size: 16, offset: 208)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !1755, file: !27, line: 276, baseType: !1821, size: 1024, offset: 224)
!1821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1822, size: 1024, elements: !1306)
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FPUStackElem", file: !27, line: 162, size: 128, elements: !1823, identifier: "_ZTS12FPUStackElem")
!1823 = !{!1824, !1839}
!1824 = !DIDerivedType(tag: DW_TAG_member, scope: !1822, file: !27, line: 163, baseType: !1825, size: 80)
!1825 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1822, file: !27, line: 163, size: 80, elements: !1826, identifier: "_ZTSN12FPUStackElemUt_E")
!1826 = !{!1827, !1834}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !1825, file: !27, line: 164, baseType: !1828, size: 80)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "float80_t", file: !1262, line: 65, size: 80, elements: !1829, identifier: "_ZTS9float80_t")
!1829 = !{!1830}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1828, file: !1262, line: 66, baseType: !1831, size: 80)
!1831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 80, elements: !1832)
!1832 = !{!1833}
!1833 = !DISubrange(count: 10)
!1834 = !DIDerivedType(tag: DW_TAG_member, scope: !1825, file: !27, line: 165, baseType: !1835, size: 80)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1825, file: !27, line: 165, size: 80, elements: !1836, identifier: "_ZTSN12FPUStackElemUt_Ut_E")
!1836 = !{!1837, !1838}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "mmx", scope: !1835, file: !27, line: 166, baseType: !635, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "infinity", scope: !1835, file: !27, line: 167, baseType: !28, size: 16, offset: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd", scope: !1822, file: !27, line: 170, baseType: !1840, size: 48, offset: 80)
!1840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 48, elements: !1841)
!1841 = !{!1842}
!1842 = !DISubrange(count: 6)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "_padding0", scope: !1752, file: !27, line: 316, baseType: !1844, size: 2848, offset: 1248)
!1844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 2848, elements: !1845)
!1845 = !{!1846}
!1846 = !DISubrange(count: 356)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave32", scope: !1749, file: !27, line: 321, baseType: !1848, size: 4096)
!1848 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1749, file: !27, line: 319, size: 4096, elements: !1849, identifier: "_ZTSN3FPUUt0_E")
!1849 = !{!1850, !1906}
!1850 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1848, baseType: !1851)
!1851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FpuFXSAVE", file: !27, line: 280, size: 3328, elements: !1852, identifier: "_ZTS9FpuFXSAVE")
!1852 = !{!1853, !1854, !1855, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1902, !1903, !1904}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1851, file: !27, line: 281, baseType: !1758, size: 16)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1851, file: !27, line: 282, baseType: !1777, size: 16, offset: 16)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "ftw", scope: !1851, file: !27, line: 283, baseType: !1856, size: 8, offset: 32)
!1856 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "FPUAbridgedTagWord", file: !27, line: 245, size: 8, elements: !1857, identifier: "_ZTS18FPUAbridgedTagWord")
!1857 = !{!1858, !1859}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !1856, file: !27, line: 246, baseType: !62, size: 8)
!1859 = !DIDerivedType(tag: DW_TAG_member, scope: !1856, file: !27, line: 247, baseType: !1860, size: 8)
!1860 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1856, file: !27, line: 247, size: 8, elements: !1861, identifier: "_ZTSN18FPUAbridgedTagWordUt_E")
!1861 = !{!1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "r0", scope: !1860, file: !27, line: 248, baseType: !61, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "r1", scope: !1860, file: !27, line: 249, baseType: !61, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "r2", scope: !1860, file: !27, line: 250, baseType: !61, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "r3", scope: !1860, file: !27, line: 251, baseType: !61, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "r4", scope: !1860, file: !27, line: 252, baseType: !61, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "r5", scope: !1860, file: !27, line: 253, baseType: !61, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "r6", scope: !1860, file: !27, line: 254, baseType: !61, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "r7", scope: !1860, file: !27, line: 255, baseType: !61, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd0", scope: !1851, file: !27, line: 284, baseType: !62, size: 8, offset: 40)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1851, file: !27, line: 285, baseType: !28, size: 16, offset: 48)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1851, file: !27, line: 286, baseType: !8, size: 32, offset: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1851, file: !27, line: 287, baseType: !1543, size: 16, offset: 96)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd1", scope: !1851, file: !27, line: 288, baseType: !28, size: 16, offset: 112)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "dp", scope: !1851, file: !27, line: 289, baseType: !8, size: 32, offset: 128)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1851, file: !27, line: 290, baseType: !1543, size: 16, offset: 160)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd2", scope: !1851, file: !27, line: 291, baseType: !28, size: 16, offset: 176)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1851, file: !27, line: 292, baseType: !1879, size: 32, offset: 192)
!1879 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "FPUControlStatus", file: !27, line: 188, size: 32, elements: !1880, identifier: "_ZTS16FPUControlStatus")
!1880 = !{!1881, !1882}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !1879, file: !27, line: 189, baseType: !8, size: 32)
!1882 = !DIDerivedType(tag: DW_TAG_member, scope: !1879, file: !27, line: 190, baseType: !1883, size: 32)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1879, file: !27, line: 190, size: 32, elements: !1884, identifier: "_ZTSN16FPUControlStatusUt_E")
!1884 = !{!1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "ie", scope: !1883, file: !27, line: 191, baseType: !8, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "de", scope: !1883, file: !27, line: 192, baseType: !8, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "ze", scope: !1883, file: !27, line: 193, baseType: !8, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "oe", scope: !1883, file: !27, line: 194, baseType: !8, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "ue", scope: !1883, file: !27, line: 195, baseType: !8, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "pe", scope: !1883, file: !27, line: 196, baseType: !8, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "daz", scope: !1883, file: !27, line: 197, baseType: !8, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "im", scope: !1883, file: !27, line: 198, baseType: !8, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "dm", scope: !1883, file: !27, line: 199, baseType: !8, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "zm", scope: !1883, file: !27, line: 200, baseType: !8, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "om", scope: !1883, file: !27, line: 201, baseType: !8, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "um", scope: !1883, file: !27, line: 202, baseType: !8, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1883, file: !27, line: 203, baseType: !8, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "rn", scope: !1883, file: !27, line: 204, baseType: !8, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "rp", scope: !1883, file: !27, line: 205, baseType: !8, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "fz", scope: !1883, file: !27, line: 206, baseType: !8, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd", scope: !1883, file: !27, line: 207, baseType: !8, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1851, file: !27, line: 293, baseType: !1879, size: 32, offset: 224)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !1851, file: !27, line: 294, baseType: !1821, size: 1024, offset: 256)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "xmm", scope: !1851, file: !27, line: 295, baseType: !1905, size: 2048, offset: 1280)
!1905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1283, size: 2048, elements: !1299)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "_padding0", scope: !1848, file: !27, line: 320, baseType: !1907, size: 768, offset: 3328)
!1907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 768, elements: !1908)
!1908 = !{!1909}
!1909 = !DISubrange(count: 96)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave64", scope: !1749, file: !27, line: 325, baseType: !1911, size: 4096)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1749, file: !27, line: 323, size: 4096, elements: !1912, identifier: "_ZTSN3FPUUt1_E")
!1912 = !{!1913, !1927}
!1913 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1911, baseType: !1914)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FpuFXSAVE64", file: !27, line: 299, size: 3328, elements: !1915, identifier: "_ZTS11FpuFXSAVE64")
!1915 = !{!1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1914, file: !27, line: 300, baseType: !1758, size: 16)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1914, file: !27, line: 301, baseType: !1777, size: 16, offset: 16)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "ftw", scope: !1914, file: !27, line: 302, baseType: !1856, size: 8, offset: 32)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd0", scope: !1914, file: !27, line: 303, baseType: !62, size: 8, offset: 40)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1914, file: !27, line: 304, baseType: !28, size: 16, offset: 48)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1914, file: !27, line: 305, baseType: !635, size: 64, offset: 64)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "dp", scope: !1914, file: !27, line: 306, baseType: !635, size: 64, offset: 128)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1914, file: !27, line: 307, baseType: !1879, size: 32, offset: 192)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1914, file: !27, line: 308, baseType: !1879, size: 32, offset: 224)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !1914, file: !27, line: 309, baseType: !1821, size: 1024, offset: 256)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "xmm", scope: !1914, file: !27, line: 310, baseType: !1905, size: 2048, offset: 1280)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "_padding0", scope: !1911, file: !27, line: 324, baseType: !1907, size: 768, offset: 3328)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "seg_caches", scope: !1264, file: !27, line: 761, baseType: !1929, size: 768, align: 64, offset: 26240)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SegmentCaches", file: !27, line: 468, size: 768, align: 64, elements: !1930, identifier: "_ZTS13SegmentCaches")
!1930 = !{!1931, !1941, !1942, !1943, !1944, !1945}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1929, file: !27, line: 469, baseType: !1932, size: 128)
!1932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SegmentShadow", file: !27, line: 88, size: 128, elements: !1933, identifier: "_ZTS13SegmentShadow")
!1933 = !{!1934, !1939, !1940}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1932, file: !27, line: 92, baseType: !1935, size: 64)
!1935 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1932, file: !27, line: 89, size: 64, elements: !1936, identifier: "_ZTSN13SegmentShadowUt_E")
!1936 = !{!1937, !1938}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "dword", scope: !1935, file: !27, line: 90, baseType: !8, size: 32)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "qword", scope: !1935, file: !27, line: 91, baseType: !635, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !1932, file: !27, line: 93, baseType: !8, size: 32, offset: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1932, file: !27, line: 94, baseType: !8, size: 32, offset: 96)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1929, file: !27, line: 470, baseType: !1932, size: 128, offset: 128)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1929, file: !27, line: 471, baseType: !1932, size: 128, offset: 256)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1929, file: !27, line: 472, baseType: !1932, size: 128, offset: 384)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1929, file: !27, line: 473, baseType: !1932, size: 128, offset: 512)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "gs", scope: !1929, file: !27, line: 474, baseType: !1932, size: 128, offset: 640)
!1946 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_t", file: !1262, line: 42, baseType: !1947)
!1947 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr64_t", file: !1262, line: 41, baseType: !635)
!1948 = !DILocation(line: 54, column: 8, scope: !1257)
!1949 = !DILocation(line: 55, column: 10, scope: !1257)
!1950 = !DILocation(line: 56, column: 10, scope: !1257)
!1951 = !DILocation(line: 57, column: 10, scope: !1257)
!1952 = !DILocation(line: 58, column: 10, scope: !1257)
!1953 = !DILocation(line: 61, column: 9, scope: !1257)
!1954 = !DILocation(line: 62, column: 9, scope: !1257)
!1955 = !DILocation(line: 63, column: 20, scope: !1257)
!1956 = !DILocation(line: 63, column: 24, scope: !1257)
!1957 = !DILocation(line: 63, column: 28, scope: !1257)
!1958 = !DILocation(line: 69, column: 6, scope: !1257)
!1959 = !DILocation(line: 74, column: 20, scope: !1257)
!1960 = !DILocation(line: 74, column: 24, scope: !1257)
!1961 = !DILocation(line: 74, column: 28, scope: !1257)
!1962 = !DILocation(line: 74, column: 33, scope: !1257)
!1963 = !DILocation(line: 75, column: 20, scope: !1257)
!1964 = !DILocation(line: 75, column: 24, scope: !1257)
!1965 = !DILocation(line: 75, column: 28, scope: !1257)
!1966 = !DILocation(line: 75, column: 33, scope: !1257)
!1967 = !DILocation(line: 76, column: 20, scope: !1257)
!1968 = !DILocation(line: 76, column: 24, scope: !1257)
!1969 = !DILocation(line: 76, column: 28, scope: !1257)
!1970 = !DILocation(line: 76, column: 33, scope: !1257)
!1971 = !DILocation(line: 77, column: 20, scope: !1257)
!1972 = !DILocation(line: 77, column: 24, scope: !1257)
!1973 = !DILocation(line: 77, column: 28, scope: !1257)
!1974 = !DILocation(line: 77, column: 33, scope: !1257)
!1975 = !DILocation(line: 78, column: 20, scope: !1257)
!1976 = !DILocation(line: 78, column: 24, scope: !1257)
!1977 = !DILocation(line: 78, column: 28, scope: !1257)
!1978 = !DILocation(line: 78, column: 33, scope: !1257)
!1979 = !DILocation(line: 79, column: 20, scope: !1257)
!1980 = !DILocation(line: 79, column: 24, scope: !1257)
!1981 = !DILocation(line: 79, column: 28, scope: !1257)
!1982 = !DILocation(line: 79, column: 33, scope: !1257)
!1983 = !DILocation(line: 80, column: 20, scope: !1257)
!1984 = !DILocation(line: 80, column: 24, scope: !1257)
!1985 = !DILocation(line: 80, column: 28, scope: !1257)
!1986 = !DILocation(line: 80, column: 33, scope: !1257)
!1987 = !DILocation(line: 81, column: 20, scope: !1257)
!1988 = !DILocation(line: 81, column: 24, scope: !1257)
!1989 = !DILocation(line: 81, column: 28, scope: !1257)
!1990 = !DILocation(line: 81, column: 33, scope: !1257)
!1991 = !DILocation(line: 83, column: 21, scope: !1257)
!1992 = !DILocation(line: 83, column: 25, scope: !1257)
!1993 = !DILocation(line: 83, column: 29, scope: !1257)
!1994 = !DILocation(line: 83, column: 34, scope: !1257)
!1995 = !DILocation(line: 84, column: 21, scope: !1257)
!1996 = !DILocation(line: 84, column: 25, scope: !1257)
!1997 = !DILocation(line: 84, column: 29, scope: !1257)
!1998 = !DILocation(line: 84, column: 34, scope: !1257)
!1999 = !DILocation(line: 85, column: 21, scope: !1257)
!2000 = !DILocation(line: 85, column: 25, scope: !1257)
!2001 = !DILocation(line: 85, column: 29, scope: !1257)
!2002 = !DILocation(line: 85, column: 34, scope: !1257)
!2003 = !DILocation(line: 86, column: 21, scope: !1257)
!2004 = !DILocation(line: 86, column: 25, scope: !1257)
!2005 = !DILocation(line: 86, column: 29, scope: !1257)
!2006 = !DILocation(line: 86, column: 34, scope: !1257)
!2007 = !DILocation(line: 87, column: 21, scope: !1257)
!2008 = !DILocation(line: 87, column: 25, scope: !1257)
!2009 = !DILocation(line: 87, column: 28, scope: !1257)
!2010 = !DILocation(line: 87, column: 33, scope: !1257)
!2011 = !DILocation(line: 88, column: 21, scope: !1257)
!2012 = !DILocation(line: 88, column: 25, scope: !1257)
!2013 = !DILocation(line: 88, column: 28, scope: !1257)
!2014 = !DILocation(line: 88, column: 33, scope: !1257)
!2015 = !DILocation(line: 89, column: 22, scope: !1257)
!2016 = !DILocation(line: 89, column: 26, scope: !1257)
!2017 = !DILocation(line: 89, column: 30, scope: !1257)
!2018 = !DILocation(line: 89, column: 35, scope: !1257)
!2019 = !DILocation(line: 90, column: 22, scope: !1257)
!2020 = !DILocation(line: 90, column: 26, scope: !1257)
!2021 = !DILocation(line: 90, column: 30, scope: !1257)
!2022 = !DILocation(line: 90, column: 35, scope: !1257)
!2023 = !DILocation(line: 91, column: 22, scope: !1257)
!2024 = !DILocation(line: 91, column: 26, scope: !1257)
!2025 = !DILocation(line: 91, column: 30, scope: !1257)
!2026 = !DILocation(line: 91, column: 35, scope: !1257)
!2027 = !DILocation(line: 92, column: 22, scope: !1257)
!2028 = !DILocation(line: 92, column: 26, scope: !1257)
!2029 = !DILocation(line: 92, column: 30, scope: !1257)
!2030 = !DILocation(line: 92, column: 35, scope: !1257)
!2031 = !DILocation(line: 93, column: 22, scope: !1257)
!2032 = !DILocation(line: 93, column: 26, scope: !1257)
!2033 = !DILocation(line: 93, column: 30, scope: !1257)
!2034 = !DILocation(line: 93, column: 35, scope: !1257)
!2035 = !DILocation(line: 94, column: 22, scope: !1257)
!2036 = !DILocation(line: 94, column: 26, scope: !1257)
!2037 = !DILocation(line: 94, column: 30, scope: !1257)
!2038 = !DILocation(line: 94, column: 35, scope: !1257)
!2039 = !DILocation(line: 96, column: 20, scope: !1257)
!2040 = !DILocation(line: 96, column: 24, scope: !1257)
!2041 = !DILocation(line: 96, column: 28, scope: !1257)
!2042 = !DILocation(line: 97, column: 20, scope: !1257)
!2043 = !DILocation(line: 97, column: 24, scope: !1257)
!2044 = !DILocation(line: 97, column: 28, scope: !1257)
!2045 = !DILocation(line: 98, column: 20, scope: !1257)
!2046 = !DILocation(line: 98, column: 24, scope: !1257)
!2047 = !DILocation(line: 98, column: 28, scope: !1257)
!2048 = !DILocation(line: 99, column: 20, scope: !1257)
!2049 = !DILocation(line: 99, column: 24, scope: !1257)
!2050 = !DILocation(line: 99, column: 28, scope: !1257)
!2051 = !DILocation(line: 100, column: 20, scope: !1257)
!2052 = !DILocation(line: 100, column: 24, scope: !1257)
!2053 = !DILocation(line: 100, column: 28, scope: !1257)
!2054 = !DILocation(line: 101, column: 20, scope: !1257)
!2055 = !DILocation(line: 101, column: 24, scope: !1257)
!2056 = !DILocation(line: 101, column: 28, scope: !1257)
!2057 = !DILocation(line: 102, column: 20, scope: !1257)
!2058 = !DILocation(line: 102, column: 24, scope: !1257)
!2059 = !DILocation(line: 102, column: 28, scope: !1257)
!2060 = !DILocation(line: 103, column: 20, scope: !1257)
!2061 = !DILocation(line: 103, column: 24, scope: !1257)
!2062 = !DILocation(line: 103, column: 28, scope: !1257)
!2063 = !DILocation(line: 105, column: 21, scope: !1257)
!2064 = !DILocation(line: 105, column: 25, scope: !1257)
!2065 = !DILocation(line: 105, column: 28, scope: !1257)
!2066 = !DILocation(line: 106, column: 21, scope: !1257)
!2067 = !DILocation(line: 106, column: 25, scope: !1257)
!2068 = !DILocation(line: 106, column: 28, scope: !1257)
!2069 = !DILocation(line: 107, column: 22, scope: !1257)
!2070 = !DILocation(line: 107, column: 26, scope: !1257)
!2071 = !DILocation(line: 107, column: 30, scope: !1257)
!2072 = !DILocation(line: 108, column: 22, scope: !1257)
!2073 = !DILocation(line: 108, column: 26, scope: !1257)
!2074 = !DILocation(line: 108, column: 30, scope: !1257)
!2075 = !DILocation(line: 109, column: 22, scope: !1257)
!2076 = !DILocation(line: 109, column: 26, scope: !1257)
!2077 = !DILocation(line: 109, column: 30, scope: !1257)
!2078 = !DILocation(line: 110, column: 22, scope: !1257)
!2079 = !DILocation(line: 110, column: 26, scope: !1257)
!2080 = !DILocation(line: 110, column: 30, scope: !1257)
!2081 = !DILocation(line: 111, column: 22, scope: !1257)
!2082 = !DILocation(line: 111, column: 26, scope: !1257)
!2083 = !DILocation(line: 111, column: 30, scope: !1257)
!2084 = !DILocation(line: 112, column: 22, scope: !1257)
!2085 = !DILocation(line: 112, column: 26, scope: !1257)
!2086 = !DILocation(line: 112, column: 30, scope: !1257)
!2087 = !DILocation(line: 114, column: 20, scope: !1257)
!2088 = !DILocation(line: 114, column: 24, scope: !1257)
!2089 = !DILocation(line: 114, column: 28, scope: !1257)
!2090 = !DILocation(line: 116, column: 21, scope: !1257)
!2091 = !DILocation(line: 116, column: 25, scope: !1257)
!2092 = !DILocation(line: 116, column: 29, scope: !1257)
!2093 = !DILocation(line: 117, column: 21, scope: !1257)
!2094 = !DILocation(line: 117, column: 25, scope: !1257)
!2095 = !DILocation(line: 117, column: 29, scope: !1257)
!2096 = !DILocation(line: 118, column: 21, scope: !1257)
!2097 = !DILocation(line: 118, column: 25, scope: !1257)
!2098 = !DILocation(line: 118, column: 29, scope: !1257)
!2099 = !DILocation(line: 119, column: 21, scope: !1257)
!2100 = !DILocation(line: 119, column: 25, scope: !1257)
!2101 = !DILocation(line: 119, column: 29, scope: !1257)
!2102 = !DILocation(line: 120, column: 21, scope: !1257)
!2103 = !DILocation(line: 120, column: 25, scope: !1257)
!2104 = !DILocation(line: 120, column: 29, scope: !1257)
!2105 = !DILocation(line: 121, column: 21, scope: !1257)
!2106 = !DILocation(line: 121, column: 25, scope: !1257)
!2107 = !DILocation(line: 121, column: 29, scope: !1257)
!2108 = !DILocation(line: 122, column: 21, scope: !1257)
!2109 = !DILocation(line: 122, column: 25, scope: !1257)
!2110 = !DILocation(line: 122, column: 29, scope: !1257)
!2111 = !DILocation(line: 123, column: 21, scope: !1257)
!2112 = !DILocation(line: 123, column: 25, scope: !1257)
!2113 = !DILocation(line: 123, column: 29, scope: !1257)
!2114 = !DILocation(line: 124, column: 21, scope: !1257)
!2115 = !DILocation(line: 124, column: 25, scope: !1257)
!2116 = !DILocation(line: 124, column: 29, scope: !1257)
!2117 = !DILocation(line: 127, column: 21, scope: !1257)
!2118 = !DILocation(line: 127, column: 25, scope: !1257)
!2119 = !DILocation(line: 127, column: 28, scope: !1257)
!2120 = !DILocation(line: 128, column: 21, scope: !1257)
!2121 = !DILocation(line: 128, column: 25, scope: !1257)
!2122 = !DILocation(line: 128, column: 28, scope: !1257)
!2123 = !DILocation(line: 129, column: 22, scope: !1257)
!2124 = !DILocation(line: 129, column: 26, scope: !1257)
!2125 = !DILocation(line: 129, column: 30, scope: !1257)
!2126 = !DILocation(line: 130, column: 22, scope: !1257)
!2127 = !DILocation(line: 130, column: 26, scope: !1257)
!2128 = !DILocation(line: 130, column: 30, scope: !1257)
!2129 = !DILocation(line: 131, column: 22, scope: !1257)
!2130 = !DILocation(line: 131, column: 26, scope: !1257)
!2131 = !DILocation(line: 131, column: 30, scope: !1257)
!2132 = !DILocation(line: 132, column: 22, scope: !1257)
!2133 = !DILocation(line: 132, column: 26, scope: !1257)
!2134 = !DILocation(line: 132, column: 30, scope: !1257)
!2135 = !DILocation(line: 133, column: 22, scope: !1257)
!2136 = !DILocation(line: 133, column: 26, scope: !1257)
!2137 = !DILocation(line: 133, column: 30, scope: !1257)
!2138 = !DILocation(line: 134, column: 22, scope: !1257)
!2139 = !DILocation(line: 134, column: 26, scope: !1257)
!2140 = !DILocation(line: 134, column: 30, scope: !1257)
!2141 = !DILocation(line: 136, column: 21, scope: !1257)
!2142 = !DILocation(line: 136, column: 25, scope: !1257)
!2143 = !DILocation(line: 136, column: 29, scope: !1257)
!2144 = !DILocation(line: 137, column: 21, scope: !1257)
!2145 = !DILocation(line: 137, column: 25, scope: !1257)
!2146 = !DILocation(line: 137, column: 29, scope: !1257)
!2147 = !DILocation(line: 138, column: 21, scope: !1257)
!2148 = !DILocation(line: 138, column: 25, scope: !1257)
!2149 = !DILocation(line: 138, column: 29, scope: !1257)
!2150 = !DILocation(line: 139, column: 21, scope: !1257)
!2151 = !DILocation(line: 139, column: 25, scope: !1257)
!2152 = !DILocation(line: 139, column: 29, scope: !1257)
!2153 = !DILocation(line: 140, column: 21, scope: !1257)
!2154 = !DILocation(line: 140, column: 25, scope: !1257)
!2155 = !DILocation(line: 140, column: 29, scope: !1257)
!2156 = !DILocation(line: 141, column: 21, scope: !1257)
!2157 = !DILocation(line: 141, column: 25, scope: !1257)
!2158 = !DILocation(line: 141, column: 29, scope: !1257)
!2159 = !DILocation(line: 142, column: 21, scope: !1257)
!2160 = !DILocation(line: 142, column: 25, scope: !1257)
!2161 = !DILocation(line: 142, column: 29, scope: !1257)
!2162 = !DILocation(line: 143, column: 21, scope: !1257)
!2163 = !DILocation(line: 143, column: 25, scope: !1257)
!2164 = !DILocation(line: 143, column: 29, scope: !1257)
!2165 = !DILocation(line: 144, column: 20, scope: !1257)
!2166 = !DILocation(line: 144, column: 24, scope: !1257)
!2167 = !DILocation(line: 144, column: 27, scope: !1257)
!2168 = !DILocation(line: 145, column: 20, scope: !1257)
!2169 = !DILocation(line: 145, column: 24, scope: !1257)
!2170 = !DILocation(line: 145, column: 27, scope: !1257)
!2171 = !DILocation(line: 146, column: 21, scope: !1257)
!2172 = !DILocation(line: 146, column: 25, scope: !1257)
!2173 = !DILocation(line: 146, column: 29, scope: !1257)
!2174 = !DILocation(line: 147, column: 21, scope: !1257)
!2175 = !DILocation(line: 147, column: 25, scope: !1257)
!2176 = !DILocation(line: 147, column: 29, scope: !1257)
!2177 = !DILocation(line: 148, column: 21, scope: !1257)
!2178 = !DILocation(line: 148, column: 25, scope: !1257)
!2179 = !DILocation(line: 148, column: 29, scope: !1257)
!2180 = !DILocation(line: 149, column: 21, scope: !1257)
!2181 = !DILocation(line: 149, column: 25, scope: !1257)
!2182 = !DILocation(line: 149, column: 29, scope: !1257)
!2183 = !DILocation(line: 150, column: 21, scope: !1257)
!2184 = !DILocation(line: 150, column: 25, scope: !1257)
!2185 = !DILocation(line: 150, column: 29, scope: !1257)
!2186 = !DILocation(line: 151, column: 21, scope: !1257)
!2187 = !DILocation(line: 151, column: 25, scope: !1257)
!2188 = !DILocation(line: 151, column: 29, scope: !1257)
!2189 = !DILocation(line: 152, column: 21, scope: !1257)
!2190 = !DILocation(line: 152, column: 25, scope: !1257)
!2191 = !DILocation(line: 152, column: 29, scope: !1257)
!2192 = !DILocation(line: 155, column: 20, scope: !1257)
!2193 = !DILocation(line: 155, column: 24, scope: !1257)
!2194 = !DILocation(line: 155, column: 27, scope: !1257)
!2195 = !DILocation(line: 156, column: 20, scope: !1257)
!2196 = !DILocation(line: 156, column: 24, scope: !1257)
!2197 = !DILocation(line: 156, column: 27, scope: !1257)
!2198 = !DILocation(line: 157, column: 20, scope: !1257)
!2199 = !DILocation(line: 157, column: 24, scope: !1257)
!2200 = !DILocation(line: 157, column: 27, scope: !1257)
!2201 = !DILocation(line: 158, column: 20, scope: !1257)
!2202 = !DILocation(line: 158, column: 24, scope: !1257)
!2203 = !DILocation(line: 158, column: 27, scope: !1257)
!2204 = !DILocation(line: 159, column: 20, scope: !1257)
!2205 = !DILocation(line: 159, column: 24, scope: !1257)
!2206 = !DILocation(line: 159, column: 27, scope: !1257)
!2207 = !DILocation(line: 160, column: 20, scope: !1257)
!2208 = !DILocation(line: 160, column: 24, scope: !1257)
!2209 = !DILocation(line: 160, column: 27, scope: !1257)
!2210 = !DILocation(line: 164, column: 25, scope: !1257)
!2211 = !DILocation(line: 164, column: 30, scope: !1257)
!2212 = !DILocation(line: 164, column: 38, scope: !1257)
!2213 = !DILocation(line: 165, column: 25, scope: !1257)
!2214 = !DILocation(line: 165, column: 30, scope: !1257)
!2215 = !DILocation(line: 165, column: 38, scope: !1257)
!2216 = !DILocation(line: 205, column: 22, scope: !1257)
!2217 = !DILocation(line: 205, column: 16, scope: !1257)
!2218 = !DILocation(line: 205, column: 29, scope: !1257)
!2219 = !DILocation(line: 206, column: 22, scope: !1257)
!2220 = !DILocation(line: 206, column: 16, scope: !1257)
!2221 = !DILocation(line: 206, column: 29, scope: !1257)
!2222 = !DILocation(line: 207, column: 22, scope: !1257)
!2223 = !DILocation(line: 207, column: 16, scope: !1257)
!2224 = !DILocation(line: 207, column: 29, scope: !1257)
!2225 = !DILocation(line: 208, column: 22, scope: !1257)
!2226 = !DILocation(line: 208, column: 16, scope: !1257)
!2227 = !DILocation(line: 208, column: 29, scope: !1257)
!2228 = !DILocation(line: 209, column: 22, scope: !1257)
!2229 = !DILocation(line: 209, column: 16, scope: !1257)
!2230 = !DILocation(line: 209, column: 29, scope: !1257)
!2231 = !DILocation(line: 210, column: 22, scope: !1257)
!2232 = !DILocation(line: 210, column: 16, scope: !1257)
!2233 = !DILocation(line: 210, column: 29, scope: !1257)
!2234 = !DILocation(line: 211, column: 22, scope: !1257)
!2235 = !DILocation(line: 211, column: 16, scope: !1257)
!2236 = !DILocation(line: 211, column: 29, scope: !1257)
!2237 = !DILocation(line: 212, column: 22, scope: !1257)
!2238 = !DILocation(line: 212, column: 16, scope: !1257)
!2239 = !DILocation(line: 212, column: 29, scope: !1257)
!2240 = !DILocation(line: 214, column: 22, scope: !1257)
!2241 = !DILocation(line: 214, column: 16, scope: !1257)
!2242 = !DILocation(line: 214, column: 29, scope: !1257)
!2243 = !DILocation(line: 215, column: 22, scope: !1257)
!2244 = !DILocation(line: 215, column: 16, scope: !1257)
!2245 = !DILocation(line: 215, column: 29, scope: !1257)
!2246 = !DILocation(line: 216, column: 23, scope: !1257)
!2247 = !DILocation(line: 216, column: 17, scope: !1257)
!2248 = !DILocation(line: 216, column: 31, scope: !1257)
!2249 = !DILocation(line: 217, column: 23, scope: !1257)
!2250 = !DILocation(line: 217, column: 17, scope: !1257)
!2251 = !DILocation(line: 217, column: 31, scope: !1257)
!2252 = !DILocation(line: 218, column: 23, scope: !1257)
!2253 = !DILocation(line: 218, column: 17, scope: !1257)
!2254 = !DILocation(line: 218, column: 31, scope: !1257)
!2255 = !DILocation(line: 219, column: 23, scope: !1257)
!2256 = !DILocation(line: 219, column: 17, scope: !1257)
!2257 = !DILocation(line: 219, column: 31, scope: !1257)
!2258 = !DILocation(line: 220, column: 23, scope: !1257)
!2259 = !DILocation(line: 220, column: 17, scope: !1257)
!2260 = !DILocation(line: 220, column: 31, scope: !1257)
!2261 = !DILocation(line: 221, column: 23, scope: !1257)
!2262 = !DILocation(line: 221, column: 17, scope: !1257)
!2263 = !DILocation(line: 221, column: 31, scope: !1257)
!2264 = !DILocation(line: 245, column: 22, scope: !1257)
!2265 = !DILocation(line: 245, column: 16, scope: !1257)
!2266 = !DILocation(line: 245, column: 29, scope: !1257)
!2267 = !DILocation(line: 246, column: 22, scope: !1257)
!2268 = !DILocation(line: 246, column: 16, scope: !1257)
!2269 = !DILocation(line: 246, column: 29, scope: !1257)
!2270 = !DILocation(line: 247, column: 22, scope: !1257)
!2271 = !DILocation(line: 247, column: 16, scope: !1257)
!2272 = !DILocation(line: 247, column: 29, scope: !1257)
!2273 = !DILocation(line: 248, column: 22, scope: !1257)
!2274 = !DILocation(line: 248, column: 16, scope: !1257)
!2275 = !DILocation(line: 248, column: 29, scope: !1257)
!2276 = !DILocation(line: 249, column: 22, scope: !1257)
!2277 = !DILocation(line: 249, column: 16, scope: !1257)
!2278 = !DILocation(line: 249, column: 29, scope: !1257)
!2279 = !DILocation(line: 250, column: 22, scope: !1257)
!2280 = !DILocation(line: 250, column: 16, scope: !1257)
!2281 = !DILocation(line: 250, column: 29, scope: !1257)
!2282 = !DILocation(line: 251, column: 22, scope: !1257)
!2283 = !DILocation(line: 251, column: 16, scope: !1257)
!2284 = !DILocation(line: 251, column: 29, scope: !1257)
!2285 = !DILocation(line: 252, column: 22, scope: !1257)
!2286 = !DILocation(line: 252, column: 16, scope: !1257)
!2287 = !DILocation(line: 252, column: 29, scope: !1257)
!2288 = !DILocation(line: 255, column: 22, scope: !1257)
!2289 = !DILocation(line: 255, column: 16, scope: !1257)
!2290 = !DILocation(line: 255, column: 29, scope: !1257)
!2291 = !DILocation(line: 256, column: 22, scope: !1257)
!2292 = !DILocation(line: 256, column: 16, scope: !1257)
!2293 = !DILocation(line: 256, column: 29, scope: !1257)
!2294 = !DILocation(line: 257, column: 23, scope: !1257)
!2295 = !DILocation(line: 257, column: 17, scope: !1257)
!2296 = !DILocation(line: 257, column: 31, scope: !1257)
!2297 = !DILocation(line: 258, column: 23, scope: !1257)
!2298 = !DILocation(line: 258, column: 17, scope: !1257)
!2299 = !DILocation(line: 258, column: 31, scope: !1257)
!2300 = !DILocation(line: 259, column: 23, scope: !1257)
!2301 = !DILocation(line: 259, column: 17, scope: !1257)
!2302 = !DILocation(line: 259, column: 31, scope: !1257)
!2303 = !DILocation(line: 260, column: 23, scope: !1257)
!2304 = !DILocation(line: 260, column: 17, scope: !1257)
!2305 = !DILocation(line: 260, column: 31, scope: !1257)
!2306 = !DILocation(line: 261, column: 23, scope: !1257)
!2307 = !DILocation(line: 261, column: 17, scope: !1257)
!2308 = !DILocation(line: 261, column: 31, scope: !1257)
!2309 = !DILocation(line: 262, column: 23, scope: !1257)
!2310 = !DILocation(line: 262, column: 17, scope: !1257)
!2311 = !DILocation(line: 262, column: 31, scope: !1257)
!2312 = !DILocation(line: 285, column: 21, scope: !1257)
!2313 = !DILocation(line: 285, column: 24, scope: !1257)
!2314 = !DILocation(line: 285, column: 15, scope: !1257)
!2315 = !DILocation(line: 285, column: 33, scope: !1257)
!2316 = !DILocation(line: 286, column: 21, scope: !1257)
!2317 = !DILocation(line: 286, column: 24, scope: !1257)
!2318 = !DILocation(line: 286, column: 15, scope: !1257)
!2319 = !DILocation(line: 286, column: 33, scope: !1257)
!2320 = !DILocation(line: 287, column: 21, scope: !1257)
!2321 = !DILocation(line: 287, column: 24, scope: !1257)
!2322 = !DILocation(line: 287, column: 15, scope: !1257)
!2323 = !DILocation(line: 287, column: 33, scope: !1257)
!2324 = !DILocation(line: 288, column: 21, scope: !1257)
!2325 = !DILocation(line: 288, column: 24, scope: !1257)
!2326 = !DILocation(line: 288, column: 15, scope: !1257)
!2327 = !DILocation(line: 288, column: 33, scope: !1257)
!2328 = !DILocation(line: 289, column: 21, scope: !1257)
!2329 = !DILocation(line: 289, column: 24, scope: !1257)
!2330 = !DILocation(line: 289, column: 15, scope: !1257)
!2331 = !DILocation(line: 289, column: 33, scope: !1257)
!2332 = !DILocation(line: 290, column: 21, scope: !1257)
!2333 = !DILocation(line: 290, column: 24, scope: !1257)
!2334 = !DILocation(line: 290, column: 15, scope: !1257)
!2335 = !DILocation(line: 290, column: 33, scope: !1257)
!2336 = !DILocation(line: 291, column: 21, scope: !1257)
!2337 = !DILocation(line: 291, column: 24, scope: !1257)
!2338 = !DILocation(line: 291, column: 15, scope: !1257)
!2339 = !DILocation(line: 291, column: 33, scope: !1257)
!2340 = !DILocation(line: 292, column: 21, scope: !1257)
!2341 = !DILocation(line: 292, column: 24, scope: !1257)
!2342 = !DILocation(line: 292, column: 15, scope: !1257)
!2343 = !DILocation(line: 292, column: 33, scope: !1257)
!2344 = !DILocation(line: 318, column: 21, scope: !1257)
!2345 = !DILocation(line: 318, column: 25, scope: !1257)
!2346 = !DILocation(line: 318, column: 15, scope: !1257)
!2347 = !DILocation(line: 318, column: 34, scope: !1257)
!2348 = !DILocation(line: 318, column: 38, scope: !1257)
!2349 = !DILocation(line: 318, column: 45, scope: !1257)
!2350 = !DILocation(line: 319, column: 21, scope: !1257)
!2351 = !DILocation(line: 319, column: 25, scope: !1257)
!2352 = !DILocation(line: 319, column: 15, scope: !1257)
!2353 = !DILocation(line: 319, column: 34, scope: !1257)
!2354 = !DILocation(line: 319, column: 38, scope: !1257)
!2355 = !DILocation(line: 319, column: 45, scope: !1257)
!2356 = !DILocation(line: 320, column: 21, scope: !1257)
!2357 = !DILocation(line: 320, column: 25, scope: !1257)
!2358 = !DILocation(line: 320, column: 15, scope: !1257)
!2359 = !DILocation(line: 320, column: 34, scope: !1257)
!2360 = !DILocation(line: 320, column: 38, scope: !1257)
!2361 = !DILocation(line: 320, column: 45, scope: !1257)
!2362 = !DILocation(line: 321, column: 21, scope: !1257)
!2363 = !DILocation(line: 321, column: 25, scope: !1257)
!2364 = !DILocation(line: 321, column: 15, scope: !1257)
!2365 = !DILocation(line: 321, column: 34, scope: !1257)
!2366 = !DILocation(line: 321, column: 38, scope: !1257)
!2367 = !DILocation(line: 321, column: 45, scope: !1257)
!2368 = !DILocation(line: 322, column: 21, scope: !1257)
!2369 = !DILocation(line: 322, column: 25, scope: !1257)
!2370 = !DILocation(line: 322, column: 15, scope: !1257)
!2371 = !DILocation(line: 322, column: 34, scope: !1257)
!2372 = !DILocation(line: 322, column: 38, scope: !1257)
!2373 = !DILocation(line: 322, column: 45, scope: !1257)
!2374 = !DILocation(line: 323, column: 21, scope: !1257)
!2375 = !DILocation(line: 323, column: 25, scope: !1257)
!2376 = !DILocation(line: 323, column: 15, scope: !1257)
!2377 = !DILocation(line: 323, column: 34, scope: !1257)
!2378 = !DILocation(line: 323, column: 38, scope: !1257)
!2379 = !DILocation(line: 323, column: 45, scope: !1257)
!2380 = !DILocation(line: 324, column: 21, scope: !1257)
!2381 = !DILocation(line: 324, column: 25, scope: !1257)
!2382 = !DILocation(line: 324, column: 15, scope: !1257)
!2383 = !DILocation(line: 324, column: 34, scope: !1257)
!2384 = !DILocation(line: 324, column: 38, scope: !1257)
!2385 = !DILocation(line: 324, column: 45, scope: !1257)
!2386 = !DILocation(line: 325, column: 21, scope: !1257)
!2387 = !DILocation(line: 325, column: 25, scope: !1257)
!2388 = !DILocation(line: 325, column: 15, scope: !1257)
!2389 = !DILocation(line: 325, column: 34, scope: !1257)
!2390 = !DILocation(line: 325, column: 38, scope: !1257)
!2391 = !DILocation(line: 325, column: 45, scope: !1257)
!2392 = !DILocation(line: 328, column: 20, scope: !1257)
!2393 = !DILocation(line: 328, column: 26, scope: !1257)
!2394 = !DILocation(line: 329, column: 20, scope: !1257)
!2395 = !DILocation(line: 329, column: 26, scope: !1257)
!2396 = !DILocation(line: 330, column: 20, scope: !1257)
!2397 = !DILocation(line: 330, column: 26, scope: !1257)
!2398 = !DILocation(line: 331, column: 20, scope: !1257)
!2399 = !DILocation(line: 331, column: 26, scope: !1257)
!2400 = !DILocation(line: 332, column: 20, scope: !1257)
!2401 = !DILocation(line: 332, column: 26, scope: !1257)
!2402 = !DILocation(line: 333, column: 20, scope: !1257)
!2403 = !DILocation(line: 333, column: 26, scope: !1257)
!2404 = !DILocation(line: 334, column: 20, scope: !1257)
!2405 = !DILocation(line: 334, column: 26, scope: !1257)
!2406 = !DILocation(line: 337, column: 9, scope: !1257)
!2407 = !DILocation(line: 338, column: 9, scope: !1257)
!2408 = !DILocation(line: 339, column: 9, scope: !1257)
!2409 = !DILocation(line: 340, column: 9, scope: !1257)
!2410 = !DILocation(line: 341, column: 9, scope: !1257)
!2411 = !DILocation(line: 342, column: 9, scope: !1257)
!2412 = !DILocation(line: 343, column: 9, scope: !1257)
!2413 = !DILocation(line: 344, column: 9, scope: !1257)
!2414 = !DILocation(line: 347, column: 9, scope: !1257)
!2415 = !DILocation(line: 348, column: 9, scope: !1257)
!2416 = !DILocation(line: 349, column: 9, scope: !1257)
!2417 = !DILocation(line: 350, column: 9, scope: !1257)
!2418 = !DILocation(line: 351, column: 9, scope: !1257)
!2419 = !DILocation(line: 353, column: 9, scope: !1257)
!2420 = !DILocation(line: 357, column: 3, scope: !1257)
!2421 = distinct !DISubprogram(name: "__remill_intrinsics", scope: !2422, file: !2422, line: 35, type: !95, isLocal: false, isDefinition: true, scopeLine: 35, flags: DIFlagPrototyped, isOptimized: false, unit: !1, variables: !7)
!2422 = !DIFile(filename: "/home/sdasgup3/Github/remill/remill/Arch/Runtime/Intrinsics.cpp", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!2423 = !DILocation(line: 116, column: 1, scope: !2421)
!2424 = !{!2425, !2425, i64 0}
!2425 = !{!"long", !2426, i64 0}
!2426 = !{!"omnipotent char", !2427, i64 0}
!2427 = !{!"Simple C++ TBAA"}
!2428 = !{!2429, !2426, i64 2065}
!2429 = !{!"_ZTS5State", !2426, i64 16, !2430, i64 2064, !2426, i64 2080, !2431, i64 2088, !2433, i64 2112, !2435, i64 2208, !2436, i64 2480, !2437, i64 2608, !2438, i64 2736, !2426, i64 2760, !2426, i64 2768, !2439, i64 3280}
!2430 = !{!"_ZTS10ArithFlags", !2426, i64 0, !2426, i64 1, !2426, i64 2, !2426, i64 3, !2426, i64 4, !2426, i64 5, !2426, i64 6, !2426, i64 7, !2426, i64 8, !2426, i64 9, !2426, i64 10, !2426, i64 11, !2426, i64 12, !2426, i64 13, !2426, i64 14, !2426, i64 15}
!2431 = !{!"_ZTS8Segments", !2432, i64 0, !2426, i64 2, !2432, i64 4, !2426, i64 6, !2432, i64 8, !2426, i64 10, !2432, i64 12, !2426, i64 14, !2432, i64 16, !2426, i64 18, !2432, i64 20, !2426, i64 22}
!2432 = !{!"short", !2426, i64 0}
!2433 = !{!"_ZTS12AddressSpace", !2425, i64 0, !2434, i64 8, !2425, i64 16, !2434, i64 24, !2425, i64 32, !2434, i64 40, !2425, i64 48, !2434, i64 56, !2425, i64 64, !2434, i64 72, !2425, i64 80, !2434, i64 88}
!2434 = !{!"_ZTS3Reg", !2426, i64 0}
!2435 = !{!"_ZTS3GPR", !2425, i64 0, !2434, i64 8, !2425, i64 16, !2434, i64 24, !2425, i64 32, !2434, i64 40, !2425, i64 48, !2434, i64 56, !2425, i64 64, !2434, i64 72, !2425, i64 80, !2434, i64 88, !2425, i64 96, !2434, i64 104, !2425, i64 112, !2434, i64 120, !2425, i64 128, !2434, i64 136, !2425, i64 144, !2434, i64 152, !2425, i64 160, !2434, i64 168, !2425, i64 176, !2434, i64 184, !2425, i64 192, !2434, i64 200, !2425, i64 208, !2434, i64 216, !2425, i64 224, !2434, i64 232, !2425, i64 240, !2434, i64 248, !2425, i64 256, !2434, i64 264}
!2436 = !{!"_ZTS8X87Stack", !2426, i64 0}
!2437 = !{!"_ZTS3MMX", !2426, i64 0}
!2438 = !{!"_ZTS14FPUStatusFlags", !2426, i64 0, !2426, i64 1, !2426, i64 2, !2426, i64 3, !2426, i64 4, !2426, i64 5, !2426, i64 6, !2426, i64 7, !2426, i64 8, !2426, i64 9, !2426, i64 10, !2426, i64 11, !2426, i64 12, !2426, i64 13, !2426, i64 14, !2426, i64 15, !2426, i64 16, !2426, i64 17, !2426, i64 18, !2426, i64 19, !2426, i64 20}
!2439 = !{!"_ZTS13SegmentCaches", !2440, i64 0, !2440, i64 16, !2440, i64 32, !2440, i64 48, !2440, i64 64, !2440, i64 80}
!2440 = !{!"_ZTS13SegmentShadow", !2426, i64 0, !2441, i64 8, !2441, i64 12}
!2441 = !{!"int", !2426, i64 0}
!2442 = !{!2429, !2426, i64 2067}
!2443 = !{!2429, !2426, i64 2069}
!2444 = !{!2429, !2426, i64 2071}
!2445 = !{!2429, !2426, i64 2073}
!2446 = !{!2429, !2426, i64 2077}
!2447 = !{!2426, !2426, i64 0}
!2448 = !{!2441, !2441, i64 0}
!2449 = !{!2432, !2432, i64 0}
