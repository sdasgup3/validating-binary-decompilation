; ModuleID = '../binary/test.mcsema.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_4004e8__init_type = type <{ [23 x i8] }>
%seg_400500__plt_type = type <{ [96 x i8] }>
%seg_400560__text_type = type <{ [1714 x i8] }>
%seg_400c14__fini_type = type <{ [9 x i8] }>
%seg_400c20__rodata_type = type <{ [32 x i8], [8 x i8], [9 x i8], [8 x i8], [7 x i8], [9 x i8], [12 x i8], [14 x i8], [13 x i8], [12 x i8], [9 x i8], [8 x i8] }>
%seg_400cb0__eh_frame_hdr_type = type <{ [76 x i8] }>
%seg_400d00__eh_frame_type = type <{ [312 x i8] }>
%seg_601df0__init_array_type = type <{ i64, i64 }>
%seg_601ff0__got_type = type <{ i64, i64 }>
%seg_602000__got_plt_type = type <{ [24 x i8], i64, i64, i64, i64, i64 }>
%seg_602040__data_type = type <{ [16 x i8] }>
%__bss_start_type = type <{ [8 x i8] }>
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
@seg_4004e8__init = internal constant %seg_4004e8__init_type <{ [23 x i8] c"H\83\EC\08H\8B\05\05\1B \00H\85\C0t\02\FF\D0H\83\C4\08\C3" }>
@seg_400500__plt = internal constant %seg_400500__plt_type <{ [96 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF%\02\1B \00\00\00\00\00\00\00\00\00\00\00\FF%\FA\1A \00\00\00\00\00\00\00\00\00\00\00\FF%\F2\1A \00\00\00\00\00\00\00\00\00\00\00\FF%\EA\1A \00\00\00\00\00\00\00\00\00\00\00\FF%\E2\1A \00\00\00\00\00\00\00\00\00\00\00" }>
@seg_400560__text = internal constant %seg_400560__text_type <{ [1714 x i8] c"1\EDI\89\D1^H\89\E2H\83\E4\F0PTI\C7\C0\10\0C@\00H\C7\C1\A0\0B@\00H\C7\C7\C0\06@\00\FF\15f\1A \00\F4\0F\1FD\00\00\F3\C3f.\0F\1F\84\00\00\00\00\00\0F\1F@\00U\B8P `\00H=P `\00H\89\E5t\17\B8\00\00\00\00H\85\C0t\0D]\BFP `\00\FF\E0\0F\1FD\00\00]\C3f\0F\1FD\00\00\BEP `\00UH\81\EEP `\00H\89\E5H\C1\FE\03H\89\F0H\C1\E8?H\01\C6H\D1\FEt\15\B8\00\00\00\00H\85\C0t\0B]\BFP `\00\FF\E0\0F\1F\00]\C3f\0F\1FD\00\00\80=9\1A \00\00u\17UH\89\E5\E8~\FF\FF\FF\C6\05'\1A \00\01]\C3\0F\1FD\00\00\F3\C3\0F\1F@\00f.\0F\1F\84\00\00\00\00\00UH\89\E5]\EB\89f\0F\1F\84\00\00\00\00\00UH\89\E5H\8DE\E0\F2\0F\11E\F8\F2\0F\11M\F0H\89E\D8\F2\0F\10E\F8H\8BE\D8\F2\0F\11\00\F2\0F\10E\F0H\8BE\D8\F2\0F\11@\08f\0F(E\E0]\C3\0F\1F\84\00\00\00\00\00UH\89\E5H\8DE\F0f\0F)E\F0H\89E\E8H\8BE\E8\F2\0F\10\00H\8BE\E8\F2\0FX@\08]\C3fff.\0F\1F\84\00\00\00\00\00UH\89\E5H\81\ECP\01\00\00\0FW\C0\C7E\FC\00\00\00\00\89}\F8H\89u\F0\F2\0F\11E\E8\F2\0F\11E\E0\F2\0F\11E\D8\F2\0F\11E\D0\C7\85\EC\FE\FF\FF\A0%&\00\F2\0F\11\85\E0\FE\FF\FF\F2\0F\10\8D\E0\FE\FF\FF\E8A\FF\FF\FF\F2\0F\10\0D\11\05\00\00f\0F)\85p\FF\FF\FF\0F(\C1\E8)\FF\FF\FF\F2\0F\10\0D\09\05\00\00f\0F)\85`\FF\FF\FF\0F(\C1\E8\11\FF\FF\FF\F2\0F\10\0D\E9\04\00\00f\0F)\85P\FF\FF\FF\0F(\C1\E8\F9\FE\FF\FF\F2\0F\10\0D\C9\04\00\00\F2\0F\10\15\D1\04\00\00f\0F)\850\FF\FF\FF\0F(\C1\0F(\CA\E8\D6\FE\FF\FF\F2\0F\10\0D\A6\04\00\00\F2\0F\10\15\A6\04\00\00f\0F)\85@\FF\FF\FF\0F(\C1\0F(\CA\E8\B3\FE\FF\FF\F2\0F\10\0D\83\04\00\00f\0F)\85\10\FF\FF\FFf\0F(\85p\FF\FF\FFf\0F)E\80f\0F)E\90f\0F)E\A0f\0F)E\B0f\0F)E\C0\F2\0F\11\8D\08\FF\FF\FF\F2\0F\10\85\08\FF\FF\FF\F2\0F*\8D\EC\FE\FF\FFf\0F.\C8\0F\82$\01\00\00\F2\0F\10\05H\04\00\00\F2\0F\10\0D(\04\00\00\F2\0F\10\95\08\FF\FF\FF\F2\0F\5C\D1\0F(\CA\E8\0C\FD\FF\FF\F2\0F\10\0D\0C\04\00\00\F2\0FXE\E8\F2\0F\11E\E8\F2\0F\10\85\08\FF\FF\FF\F2\0F\11\8D\D8\FE\FF\FF\E8\15\FD\FF\FF\F2\0F\10\8D\D8\FE\FF\FF\F2\0F^\C8\F2\0FXM\E0\F2\0F\11M\E0\F2\0F\10\85\08\FF\FF\FF\F2\0FY\85\08\FF\FF\FF\F2\0FY\85\08\FF\FF\FF\F2\0F\11\85\00\FF\FF\FF\F2\0F\10\85\08\FF\FF\FF\E8\C2\FC\FF\FF\F2\0F\11\85\F8\FE\FF\FF\F2\0F\10\85\08\FF\FF\FF\E8\9D\FC\FF\FF\F2\0F\11\85\F0\FE\FF\FF\F2\0F\10\85\00\FF\FF\FF\F2\0FY\85\F8\FE\FF\FF\F2\0FY\85\F8\FE\FF\FF\F2\0F\10\8D\D8\FE\FF\FF\F2\0F^\C8\F2\0FXM\D8\F2\0F\11M\D8\F2\0F\10\85\00\FF\FF\FF\F2\0FY\85\F0\FE\FF\FF\F2\0FY\85\F0\FE\FF\FF\F2\0F\10\8D\D8\FE\FF\FF\F2\0F^\C8\F2\0FXM\D0\F2\0F\11M\D0\F2\0F\10\05)\03\00\00\F2\0FX\85\08\FF\FF\FF\F2\0F\11\85\08\FF\FF\FF\E9\C2\FE\FF\FFf\0F(\85@\FF\FF\FFf\0F)\85 \FF\FF\FF\F2\0F\10\85 \FF\FF\FF\F2\0F*\8D\EC\FE\FF\FFf\0F.\C8\0F\82\D7\00\00\00f\0F(\85`\FF\FF\FFf\0F(\8D \FF\FF\FFf\0F(\95 \FF\FF\FFf\0FX\95`\FF\FF\FFf\0FY\CAf\0F^\C1f\0FXE\A0f\0F)E\A0f\0F(\85`\FF\FF\FFf\0F^\85 \FF\FF\FFf\0FXE\C0f\0F)E\C0f\0F(\85`\FF\FF\FFf\0F(\8D \FF\FF\FFf\0FY\8D \FF\FF\FFf\0F^\C1f\0FXE\B0f\0F)E\B0f\0F(\85\10\FF\FF\FFf\0F^\85 \FF\FF\FFf\0FXE\90f\0F)E\90f\0F(\85\10\FF\FF\FFf\0F(\8DP\FF\FF\FFf\0FY\8D \FF\FF\FFf\0F\5C\8D`\FF\FF\FFf\0F^\C1f\0FXE\80f\0F)E\80f\0F(\85P\FF\FF\FFf\0FX\85 \FF\FF\FFf\0F)\85 \FF\FF\FF\E9\0F\FF\FF\FFH\BFH\0C@\00\00\00\00\00H\BEQ\0C@\00\00\00\00\00\F2\0F\10E\E8\B0\01\E8\DB\FA\FF\FFH\BFH\0C@\00\00\00\00\00H\BEY\0C@\00\00\00\00\00\F2\0F\10E\E0\89\85\D4\FE\FF\FF\B0\01\E8\B5\FA\FF\FFf\0F(E\A0\89\85\D0\FE\FF\FF\E8%\FC\FF\FFH\BFH\0C@\00\00\00\00\00H\BE`\0C@\00\00\00\00\00\B0\01\E8\8A\FA\FF\FFH\BFH\0C@\00\00\00\00\00H\BEi\0C@\00\00\00\00\00\F2\0F\10E\D8\89\85\CC\FE\FF\FF\B0\01\E8d\FA\FF\FFH\BFH\0C@\00\00\00\00\00H\BEu\0C@\00\00\00\00\00\F2\0F\10E\D0\89\85\C8\FE\FF\FF\B0\01\E8>\FA\FF\FFf\0F(E\C0\89\85\C4\FE\FF\FF\E8\AE\FB\FF\FFH\BFH\0C@\00\00\00\00\00H\BE\9C\0C@\00\00\00\00\00\B0\01\E8\13\FA\FF\FFf\0F(E\B0\89\85\C0\FE\FF\FF\E8\83\FB\FF\FFH\BFH\0C@\00\00\00\00\00H\BE\83\0C@\00\00\00\00\00\B0\01\E8\E8\F9\FF\FFf\0F(E\90\89\85\BC\FE\FF\FF\E8X\FB\FF\FFH\BFH\0C@\00\00\00\00\00H\BE\90\0C@\00\00\00\00\00\B0\01\E8\BD\F9\FF\FFf\0F(E\80\89\85\B8\FE\FF\FF\E8-\FB\FF\FFH\BFH\0C@\00\00\00\00\00H\BE\A5\0C@\00\00\00\00\00\B0\01\E8\92\F9\FF\FF1\C9\89\85\B4\FE\FF\FF\89\C8H\81\C4P\01\00\00]\C3f.\0F\1F\84\00\00\00\00\00\0F\1FD\00\00AWAVI\89\D7AUATL\8D%>\12 \00UH\8D->\12 \00SA\89\FDI\89\F6L)\E5H\83\EC\08H\C1\FD\03\E8\17\F9\FF\FFH\85\EDt 1\DB\0F\1F\84\00\00\00\00\00L\89\FAL\89\F6D\89\EFA\FF\14\DCH\83\C3\01H9\DDu\EAH\83\C4\08[]A\5CA]A^A_\C3\90f.\0F\1F\84\00\00\00\00\00\F3\C3" }>
@seg_400c14__fini = internal constant %seg_400c14__fini_type <{ [9 x i8] c"H\83\EC\08H\83\C4\08\C3" }>
@seg_400c20__rodata = internal constant %seg_400c20__rodata_type <{ [32 x i8] c"\01\00\02\00\00\00\00\00\00\00\00\00\00\00\F0?\00\00\00\00\00\00\F0\BF\00\00\00\00\00\00\00@", [8 x i8] c"UUUUUU\E5?", [9 x i8] c"%.9f\09%s\0A\00", [8 x i8] c"(2/3)^k\00", [7 x i8] c"k^-0.5\00", [9 x i8] c"1/k(k+1)\00", [12 x i8] c"Flint Hills\00", [14 x i8] c"Cookson Hills\00", [13 x i8] c"Riemann Zeta\00", [12 x i8] c"Alternating ", [9 x i8] c"Harmonic\00", [8 x i8] c"Gregory\00" }>
@seg_400cb0__eh_frame_hdr = internal constant %seg_400cb0__eh_frame_hdr_type <{ [76 x i8] c"\01\1B\03;L\00\00\00\08\00\00\00P\F8\FF\FF\A8\00\00\00\B0\F8\FF\FFh\00\00\00\E0\F8\FF\FF\94\00\00\00\A0\F9\FF\FF\D0\00\00\00\E0\F9\FF\FF\EC\00\00\00\10\FA\FF\FF\08\01\00\00\F0\FE\FF\FF(\01\00\00`\FF\FF\FFp\01\00\00" }>
@seg_400d00__eh_frame = internal constant %seg_400d00__eh_frame_type <{ [312 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00@\F8\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00D\F8\FF\FF\02\00\00\00\00\00\00\00$\00\00\000\00\00\00\A0\F7\FF\FF`\00\00\00\00\0E\10F\0E\18J\0F\0Bw\08\80\00?\1A;*3$\22\00\00\00\00\18\00\00\00X\00\00\00\C8\F8\FF\FF8\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00t\00\00\00\EC\F8\FF\FF$\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\1C\00\00\00\90\00\00\00\00\F9\FF\FF\D1\04\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00D\00\00\00\B0\00\00\00\C0\FD\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\F8\00\00\00\E8\FD\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@seg_601df0__init_array = internal global %seg_601df0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_400640_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_400610___do_global_dtors_aux to i64) }>
@seg_601ff0__got = internal global %seg_601ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@seg_602000__got_plt = internal global %seg_602000__got_plt_type <{ [24 x i8] zeroinitializer, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 ptrtoint (i64 (i64, i64)* @pow to i64), i64 ptrtoint (double (double)* @cos to i64), i64 ptrtoint (double (double)* @sin to i64), i64 ptrtoint (double (double)* @sqrt to i64) }>
@seg_602040__data = internal global %seg_602040__data_type zeroinitializer
@__bss_start = global %__bss_start_type zeroinitializer
@0 = internal global i1 false
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400640_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400610___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400c10___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400ba0___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @sum_vec_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @make_vec_wrapper
@10 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
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
declare extern_weak x86_64_sysvcc i64 @pow(i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #13

; Function Attrs: noinline
define %struct.Memory* @sub_4006c0_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4006c0:
  %state.i160 = alloca %struct.State*, align 8
  %curr_pc.i161 = alloca i64, align 8
  %memory.i162 = alloca %struct.Memory*, align 8
  %BRANCH_TAKEN.i163 = alloca i8, align 1
  %SS_BASE.i164 = alloca i64, align 8
  %ES_BASE.i165 = alloca i64, align 8
  %DS_BASE.i166 = alloca i64, align 8
  %CS_BASE.i167 = alloca i64, align 8
  %STATE.i168 = alloca %struct.State*, align 8
  %MEMORY.i169 = alloca %struct.Memory*, align 8
  %_DR0.i170 = alloca i64*, align 8
  %_DR1.i171 = alloca i64*, align 8
  %_DR2.i172 = alloca i64*, align 8
  %_DR3.i173 = alloca i64*, align 8
  %_DR4.i174 = alloca i64*, align 8
  %_DR5.i175 = alloca i64*, align 8
  %_DR6.i176 = alloca i64*, align 8
  %_DR7.i177 = alloca i64*, align 8
  %CR0.i178 = alloca i64*, align 8
  %CR1.i179 = alloca i64*, align 8
  %CR2.i180 = alloca i64*, align 8
  %CR3.i181 = alloca i64*, align 8
  %CR4.i182 = alloca i64*, align 8
  %CR8.i183 = alloca i64*, align 8
  %state.i1 = alloca %struct.State*, align 8
  %curr_pc.i2 = alloca i64, align 8
  %memory.i3 = alloca %struct.Memory*, align 8
  %BRANCH_TAKEN.i4 = alloca i8, align 1
  %SS_BASE.i5 = alloca i64, align 8
  %ES_BASE.i6 = alloca i64, align 8
  %DS_BASE.i7 = alloca i64, align 8
  %CS_BASE.i8 = alloca i64, align 8
  %STATE.i9 = alloca %struct.State*, align 8
  %MEMORY.i10 = alloca %struct.Memory*, align 8
  %_DR0.i11 = alloca i64*, align 8
  %_DR1.i12 = alloca i64*, align 8
  %_DR2.i13 = alloca i64*, align 8
  %_DR3.i14 = alloca i64*, align 8
  %_DR4.i15 = alloca i64*, align 8
  %_DR5.i16 = alloca i64*, align 8
  %_DR6.i17 = alloca i64*, align 8
  %_DR7.i18 = alloca i64*, align 8
  %CR0.i19 = alloca i64*, align 8
  %CR1.i20 = alloca i64*, align 8
  %CR2.i21 = alloca i64*, align 8
  %CR3.i22 = alloca i64*, align 8
  %CR4.i23 = alloca i64*, align 8
  %CR8.i24 = alloca i64*, align 8
  %state.i = alloca %struct.State*, align 8
  %curr_pc.i = alloca i64, align 8
  %memory.i = alloca %struct.Memory*, align 8
  %BRANCH_TAKEN.i = alloca i8, align 1
  %SS_BASE.i = alloca i64, align 8
  %ES_BASE.i = alloca i64, align 8
  %DS_BASE.i = alloca i64, align 8
  %CS_BASE.i = alloca i64, align 8
  %STATE.i = alloca %struct.State*, align 8
  %MEMORY.i = alloca %struct.Memory*, align 8
  %_DR0.i = alloca i64*, align 8
  %_DR1.i = alloca i64*, align 8
  %_DR2.i = alloca i64*, align 8
  %_DR3.i = alloca i64*, align 8
  %_DR4.i = alloca i64*, align 8
  %_DR5.i = alloca i64*, align 8
  %_DR6.i = alloca i64*, align 8
  %_DR7.i = alloca i64*, align 8
  %CR0.i = alloca i64*, align 8
  %CR1.i = alloca i64*, align 8
  %CR2.i = alloca i64*, align 8
  %CR3.i = alloca i64*, align 8
  %CR4.i = alloca i64*, align 8
  %CR8.i = alloca i64*, align 8
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
  %40 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %39, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %40 to %"class.std::bitset"*
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %42 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %41, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %42 to %"class.std::bitset"*
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %44 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %43, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %44 to %union.vec128_t*
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %46 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %45, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %46 to %union.vec128_t*
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %48 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %47, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %48 to %union.vec128_t*
  %49 = load i64, i64* %RBP
  %50 = load i64, i64* %PC
  %51 = add i64 %50, 1
  store i64 %51, i64* %PC
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %53 = load i64, i64* %52, align 8, !tbaa !2428
  %54 = add i64 %53, -8
  %55 = inttoptr i64 %54 to i64*
  store i64 %49, i64* %55
  store i64 %54, i64* %52, align 8, !tbaa !2428
  %56 = load i64, i64* %RSP
  %57 = load i64, i64* %PC
  %58 = add i64 %57, 3
  store i64 %58, i64* %PC
  store i64 %56, i64* %RBP, align 8, !tbaa !2428
  %59 = load i64, i64* %RSP
  %60 = load i64, i64* %PC
  %61 = add i64 %60, 7
  store i64 %61, i64* %PC
  %62 = sub i64 %59, 336
  store i64 %62, i64* %RSP, align 8, !tbaa !2428
  %63 = icmp ult i64 %59, 336
  %64 = zext i1 %63 to i8
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %64, i8* %65, align 1, !tbaa !2432
  %66 = trunc i64 %62 to i32
  %67 = and i32 %66, 255
  %68 = call i32 @llvm.ctpop.i32(i32 %67) #17
  %69 = trunc i32 %68 to i8
  %70 = and i8 %69, 1
  %71 = xor i8 %70, 1
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %71, i8* %72, align 1, !tbaa !2446
  %73 = xor i64 336, %59
  %74 = xor i64 %73, %62
  %75 = lshr i64 %74, 4
  %76 = trunc i64 %75 to i8
  %77 = and i8 %76, 1
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %77, i8* %78, align 1, !tbaa !2447
  %79 = icmp eq i64 %62, 0
  %80 = zext i1 %79 to i8
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %80, i8* %81, align 1, !tbaa !2448
  %82 = lshr i64 %62, 63
  %83 = trunc i64 %82 to i8
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %83, i8* %84, align 1, !tbaa !2449
  %85 = lshr i64 %59, 63
  %86 = xor i64 %82, %85
  %87 = add nuw nsw i64 %86, %85
  %88 = icmp eq i64 %87, 2
  %89 = zext i1 %88 to i8
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %89, i8* %90, align 1, !tbaa !2450
  %91 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %92 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %93 = bitcast %union.vec128_t* %XMM0 to i8*
  %94 = load i64, i64* %PC
  %95 = add i64 %94, 3
  store i64 %95, i64* %PC
  %96 = bitcast i8* %92 to i64*
  %97 = load i64, i64* %96, align 1
  %98 = getelementptr inbounds i8, i8* %92, i64 8
  %99 = bitcast i8* %98 to i64*
  %100 = load i64, i64* %99, align 1
  %101 = bitcast i8* %93 to i64*
  %102 = load i64, i64* %101, align 1
  %103 = getelementptr inbounds i8, i8* %93, i64 8
  %104 = bitcast i8* %103 to i64*
  %105 = load i64, i64* %104, align 1
  %106 = xor i64 %102, %97
  %107 = xor i64 %105, %100
  %108 = trunc i64 %106 to i32
  %109 = lshr i64 %106, 32
  %110 = trunc i64 %109 to i32
  %111 = bitcast i8* %91 to i32*
  store i32 %108, i32* %111, align 1, !tbaa !2451
  %112 = getelementptr inbounds i8, i8* %91, i64 4
  %113 = bitcast i8* %112 to i32*
  store i32 %110, i32* %113, align 1, !tbaa !2451
  %114 = trunc i64 %107 to i32
  %115 = getelementptr inbounds i8, i8* %91, i64 8
  %116 = bitcast i8* %115 to i32*
  store i32 %114, i32* %116, align 1, !tbaa !2451
  %117 = lshr i64 %107, 32
  %118 = trunc i64 %117 to i32
  %119 = getelementptr inbounds i8, i8* %91, i64 12
  %120 = bitcast i8* %119 to i32*
  store i32 %118, i32* %120, align 1, !tbaa !2451
  %121 = load i64, i64* %RBP
  %122 = sub i64 %121, 4
  %123 = load i64, i64* %PC
  %124 = add i64 %123, 7
  store i64 %124, i64* %PC
  %125 = inttoptr i64 %122 to i32*
  store i32 0, i32* %125
  %126 = load i64, i64* %RBP
  %127 = sub i64 %126, 8
  %128 = load i32, i32* %EDI
  %129 = zext i32 %128 to i64
  %130 = load i64, i64* %PC
  %131 = add i64 %130, 3
  store i64 %131, i64* %PC
  %132 = inttoptr i64 %127 to i32*
  store i32 %128, i32* %132
  %133 = load i64, i64* %RBP
  %134 = sub i64 %133, 16
  %135 = load i64, i64* %RSI
  %136 = load i64, i64* %PC
  %137 = add i64 %136, 4
  store i64 %137, i64* %PC
  %138 = inttoptr i64 %134 to i64*
  store i64 %135, i64* %138
  %139 = load i64, i64* %RBP
  %140 = sub i64 %139, 24
  %141 = bitcast %union.vec128_t* %XMM0 to i8*
  %142 = load i64, i64* %PC
  %143 = add i64 %142, 5
  store i64 %143, i64* %PC
  %144 = bitcast i8* %141 to double*
  %145 = load double, double* %144, align 1
  %146 = inttoptr i64 %140 to double*
  store double %145, double* %146
  %147 = load i64, i64* %RBP
  %148 = sub i64 %147, 32
  %149 = bitcast %union.vec128_t* %XMM0 to i8*
  %150 = load i64, i64* %PC
  %151 = add i64 %150, 5
  store i64 %151, i64* %PC
  %152 = bitcast i8* %149 to double*
  %153 = load double, double* %152, align 1
  %154 = inttoptr i64 %148 to double*
  store double %153, double* %154
  %155 = load i64, i64* %RBP
  %156 = sub i64 %155, 40
  %157 = bitcast %union.vec128_t* %XMM0 to i8*
  %158 = load i64, i64* %PC
  %159 = add i64 %158, 5
  store i64 %159, i64* %PC
  %160 = bitcast i8* %157 to double*
  %161 = load double, double* %160, align 1
  %162 = inttoptr i64 %156 to double*
  store double %161, double* %162
  %163 = load i64, i64* %RBP
  %164 = sub i64 %163, 48
  %165 = bitcast %union.vec128_t* %XMM0 to i8*
  %166 = load i64, i64* %PC
  %167 = add i64 %166, 5
  store i64 %167, i64* %PC
  %168 = bitcast i8* %165 to double*
  %169 = load double, double* %168, align 1
  %170 = inttoptr i64 %164 to double*
  store double %169, double* %170
  %171 = load i64, i64* %RBP
  %172 = sub i64 %171, 276
  %173 = load i64, i64* %PC
  %174 = add i64 %173, 10
  store i64 %174, i64* %PC
  %175 = inttoptr i64 %172 to i32*
  store i32 2500000, i32* %175
  %176 = load i64, i64* %RBP
  %177 = sub i64 %176, 288
  %178 = bitcast %union.vec128_t* %XMM0 to i8*
  %179 = load i64, i64* %PC
  %180 = add i64 %179, 8
  store i64 %180, i64* %PC
  %181 = bitcast i8* %178 to double*
  %182 = load double, double* %181, align 1
  %183 = inttoptr i64 %177 to double*
  store double %182, double* %183
  %184 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %185 = load i64, i64* %RBP
  %186 = sub i64 %185, 288
  %187 = load i64, i64* %PC
  %188 = add i64 %187, 8
  store i64 %188, i64* %PC
  %189 = inttoptr i64 %186 to double*
  %190 = load double, double* %189
  %191 = bitcast i8* %184 to double*
  store double %190, double* %191, align 1, !tbaa !2452
  %192 = getelementptr inbounds i8, i8* %184, i64 8
  %193 = bitcast i8* %192 to double*
  store double 0.000000e+00, double* %193, align 1, !tbaa !2452
  %194 = load i64, i64* %PC
  %195 = sub i64 %194, 186
  %196 = load i64, i64* %PC
  %197 = add i64 %196, 5
  %198 = load i64, i64* %PC
  %199 = add i64 %198, 5
  store i64 %199, i64* %PC
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %201 = load i64, i64* %200, align 8, !tbaa !2428
  %202 = add i64 %201, -8
  %203 = inttoptr i64 %202 to i64*
  store i64 %197, i64* %203
  store i64 %202, i64* %200, align 8, !tbaa !2428
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %195, i64* %204, align 8, !tbaa !2428
  %205 = load i64, i64* %PC
  %206 = call %struct.Memory* @sub_400650_make_vec(%struct.State* %0, i64 %205, %struct.Memory* %2)
  %207 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %208 = load i64, i64* %PC
  %209 = add i64 %208, 8
  store i64 %209, i64* %PC
  %210 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_400c20__rodata_type* @seg_400c20__rodata to i64), i64 8) to double*)
  %211 = bitcast i8* %207 to double*
  store double %210, double* %211, align 1, !tbaa !2452
  %212 = getelementptr inbounds i8, i8* %207, i64 8
  %213 = bitcast i8* %212 to double*
  store double 0.000000e+00, double* %213, align 1, !tbaa !2452
  %214 = load i64, i64* %RBP
  %215 = sub i64 %214, 144
  %216 = bitcast %union.vec128_t* %XMM0 to i8*
  %217 = load i64, i64* %PC
  %218 = add i64 %217, 8
  store i64 %218, i64* %PC
  %219 = bitcast i8* %216 to double*
  %220 = load double, double* %219, align 1
  %221 = getelementptr inbounds i8, i8* %216, i64 8
  %222 = bitcast i8* %221 to double*
  %223 = load double, double* %222, align 1
  %224 = inttoptr i64 %215 to double*
  store double %220, double* %224
  %225 = add i64 %215, 8
  %226 = inttoptr i64 %225 to double*
  store double %223, double* %226
  %227 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %228 = bitcast %union.vec128_t* %XMM1 to i8*
  %229 = load i64, i64* %PC
  %230 = add i64 %229, 3
  store i64 %230, i64* %PC
  %231 = bitcast i8* %228 to <2 x i32>*
  %232 = load <2 x i32>, <2 x i32>* %231, align 1
  %233 = getelementptr inbounds i8, i8* %228, i64 8
  %234 = bitcast i8* %233 to <2 x i32>*
  %235 = load <2 x i32>, <2 x i32>* %234, align 1
  %236 = extractelement <2 x i32> %232, i32 0
  %237 = bitcast i8* %227 to i32*
  store i32 %236, i32* %237, align 1, !tbaa !2454
  %238 = extractelement <2 x i32> %232, i32 1
  %239 = getelementptr inbounds i8, i8* %227, i64 4
  %240 = bitcast i8* %239 to i32*
  store i32 %238, i32* %240, align 1, !tbaa !2454
  %241 = extractelement <2 x i32> %235, i32 0
  %242 = getelementptr inbounds i8, i8* %227, i64 8
  %243 = bitcast i8* %242 to i32*
  store i32 %241, i32* %243, align 1, !tbaa !2454
  %244 = extractelement <2 x i32> %235, i32 1
  %245 = getelementptr inbounds i8, i8* %227, i64 12
  %246 = bitcast i8* %245 to i32*
  store i32 %244, i32* %246, align 1, !tbaa !2454
  %247 = load i64, i64* %PC
  %248 = sub i64 %247, 210
  %249 = load i64, i64* %PC
  %250 = add i64 %249, 5
  %251 = load i64, i64* %PC
  %252 = add i64 %251, 5
  store i64 %252, i64* %PC
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %254 = load i64, i64* %253, align 8, !tbaa !2428
  %255 = add i64 %254, -8
  %256 = inttoptr i64 %255 to i64*
  store i64 %250, i64* %256
  store i64 %255, i64* %253, align 8, !tbaa !2428
  %257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %248, i64* %257, align 8, !tbaa !2428
  %258 = load i64, i64* %PC
  %259 = call %struct.Memory* @sub_400650_make_vec(%struct.State* %0, i64 %258, %struct.Memory* %206)
  %260 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %261 = load i64, i64* %PC
  %262 = add i64 %261, 8
  store i64 %262, i64* %PC
  %263 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_400c20__rodata_type* @seg_400c20__rodata to i64), i64 24) to double*)
  %264 = bitcast i8* %260 to double*
  store double %263, double* %264, align 1, !tbaa !2452
  %265 = getelementptr inbounds i8, i8* %260, i64 8
  %266 = bitcast i8* %265 to double*
  store double 0.000000e+00, double* %266, align 1, !tbaa !2452
  %267 = load i64, i64* %RBP
  %268 = sub i64 %267, 160
  %269 = bitcast %union.vec128_t* %XMM0 to i8*
  %270 = load i64, i64* %PC
  %271 = add i64 %270, 8
  store i64 %271, i64* %PC
  %272 = bitcast i8* %269 to double*
  %273 = load double, double* %272, align 1
  %274 = getelementptr inbounds i8, i8* %269, i64 8
  %275 = bitcast i8* %274 to double*
  %276 = load double, double* %275, align 1
  %277 = inttoptr i64 %268 to double*
  store double %273, double* %277
  %278 = add i64 %268, 8
  %279 = inttoptr i64 %278 to double*
  store double %276, double* %279
  %280 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %281 = bitcast %union.vec128_t* %XMM1 to i8*
  %282 = load i64, i64* %PC
  %283 = add i64 %282, 3
  store i64 %283, i64* %PC
  %284 = bitcast i8* %281 to <2 x i32>*
  %285 = load <2 x i32>, <2 x i32>* %284, align 1
  %286 = getelementptr inbounds i8, i8* %281, i64 8
  %287 = bitcast i8* %286 to <2 x i32>*
  %288 = load <2 x i32>, <2 x i32>* %287, align 1
  %289 = extractelement <2 x i32> %285, i32 0
  %290 = bitcast i8* %280 to i32*
  store i32 %289, i32* %290, align 1, !tbaa !2454
  %291 = extractelement <2 x i32> %285, i32 1
  %292 = getelementptr inbounds i8, i8* %280, i64 4
  %293 = bitcast i8* %292 to i32*
  store i32 %291, i32* %293, align 1, !tbaa !2454
  %294 = extractelement <2 x i32> %288, i32 0
  %295 = getelementptr inbounds i8, i8* %280, i64 8
  %296 = bitcast i8* %295 to i32*
  store i32 %294, i32* %296, align 1, !tbaa !2454
  %297 = extractelement <2 x i32> %288, i32 1
  %298 = getelementptr inbounds i8, i8* %280, i64 12
  %299 = bitcast i8* %298 to i32*
  store i32 %297, i32* %299, align 1, !tbaa !2454
  %300 = load i64, i64* %PC
  %301 = sub i64 %300, 234
  %302 = load i64, i64* %PC
  %303 = add i64 %302, 5
  %304 = load i64, i64* %PC
  %305 = add i64 %304, 5
  store i64 %305, i64* %PC
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %307 = load i64, i64* %306, align 8, !tbaa !2428
  %308 = add i64 %307, -8
  %309 = inttoptr i64 %308 to i64*
  store i64 %303, i64* %309
  store i64 %308, i64* %306, align 8, !tbaa !2428
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %301, i64* %310, align 8, !tbaa !2428
  %311 = load i64, i64* %PC
  %312 = call %struct.Memory* @sub_400650_make_vec(%struct.State* %0, i64 %311, %struct.Memory* %259)
  %313 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %314 = load i64, i64* %PC
  %315 = add i64 %314, 8
  store i64 %315, i64* %PC
  %316 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_400c20__rodata_type* @seg_400c20__rodata to i64), i64 16) to double*)
  %317 = bitcast i8* %313 to double*
  store double %316, double* %317, align 1, !tbaa !2452
  %318 = getelementptr inbounds i8, i8* %313, i64 8
  %319 = bitcast i8* %318 to double*
  store double 0.000000e+00, double* %319, align 1, !tbaa !2452
  %320 = load i64, i64* %RBP
  %321 = sub i64 %320, 176
  %322 = bitcast %union.vec128_t* %XMM0 to i8*
  %323 = load i64, i64* %PC
  %324 = add i64 %323, 8
  store i64 %324, i64* %PC
  %325 = bitcast i8* %322 to double*
  %326 = load double, double* %325, align 1
  %327 = getelementptr inbounds i8, i8* %322, i64 8
  %328 = bitcast i8* %327 to double*
  %329 = load double, double* %328, align 1
  %330 = inttoptr i64 %321 to double*
  store double %326, double* %330
  %331 = add i64 %321, 8
  %332 = inttoptr i64 %331 to double*
  store double %329, double* %332
  %333 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %334 = bitcast %union.vec128_t* %XMM1 to i8*
  %335 = load i64, i64* %PC
  %336 = add i64 %335, 3
  store i64 %336, i64* %PC
  %337 = bitcast i8* %334 to <2 x i32>*
  %338 = load <2 x i32>, <2 x i32>* %337, align 1
  %339 = getelementptr inbounds i8, i8* %334, i64 8
  %340 = bitcast i8* %339 to <2 x i32>*
  %341 = load <2 x i32>, <2 x i32>* %340, align 1
  %342 = extractelement <2 x i32> %338, i32 0
  %343 = bitcast i8* %333 to i32*
  store i32 %342, i32* %343, align 1, !tbaa !2454
  %344 = extractelement <2 x i32> %338, i32 1
  %345 = getelementptr inbounds i8, i8* %333, i64 4
  %346 = bitcast i8* %345 to i32*
  store i32 %344, i32* %346, align 1, !tbaa !2454
  %347 = extractelement <2 x i32> %341, i32 0
  %348 = getelementptr inbounds i8, i8* %333, i64 8
  %349 = bitcast i8* %348 to i32*
  store i32 %347, i32* %349, align 1, !tbaa !2454
  %350 = extractelement <2 x i32> %341, i32 1
  %351 = getelementptr inbounds i8, i8* %333, i64 12
  %352 = bitcast i8* %351 to i32*
  store i32 %350, i32* %352, align 1, !tbaa !2454
  %353 = load i64, i64* %PC
  %354 = sub i64 %353, 258
  %355 = load i64, i64* %PC
  %356 = add i64 %355, 5
  %357 = load i64, i64* %PC
  %358 = add i64 %357, 5
  store i64 %358, i64* %PC
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %360 = load i64, i64* %359, align 8, !tbaa !2428
  %361 = add i64 %360, -8
  %362 = inttoptr i64 %361 to i64*
  store i64 %356, i64* %362
  store i64 %361, i64* %359, align 8, !tbaa !2428
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %354, i64* %363, align 8, !tbaa !2428
  %364 = load i64, i64* %PC
  %365 = call %struct.Memory* @sub_400650_make_vec(%struct.State* %0, i64 %364, %struct.Memory* %312)
  %366 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %367 = load i64, i64* %PC
  %368 = add i64 %367, 8
  store i64 %368, i64* %PC
  %369 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_400c20__rodata_type* @seg_400c20__rodata to i64), i64 8) to double*)
  %370 = bitcast i8* %366 to double*
  store double %369, double* %370, align 1, !tbaa !2452
  %371 = getelementptr inbounds i8, i8* %366, i64 8
  %372 = bitcast i8* %371 to double*
  store double 0.000000e+00, double* %372, align 1, !tbaa !2452
  %373 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %374 = load i64, i64* %PC
  %375 = add i64 %374, 8
  store i64 %375, i64* %PC
  %376 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_400c20__rodata_type* @seg_400c20__rodata to i64), i64 24) to double*)
  %377 = bitcast i8* %373 to double*
  store double %376, double* %377, align 1, !tbaa !2452
  %378 = getelementptr inbounds i8, i8* %373, i64 8
  %379 = bitcast i8* %378 to double*
  store double 0.000000e+00, double* %379, align 1, !tbaa !2452
  %380 = load i64, i64* %RBP
  %381 = sub i64 %380, 208
  %382 = bitcast %union.vec128_t* %XMM0 to i8*
  %383 = load i64, i64* %PC
  %384 = add i64 %383, 8
  store i64 %384, i64* %PC
  %385 = bitcast i8* %382 to double*
  %386 = load double, double* %385, align 1
  %387 = getelementptr inbounds i8, i8* %382, i64 8
  %388 = bitcast i8* %387 to double*
  %389 = load double, double* %388, align 1
  %390 = inttoptr i64 %381 to double*
  store double %386, double* %390
  %391 = add i64 %381, 8
  %392 = inttoptr i64 %391 to double*
  store double %389, double* %392
  %393 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %394 = bitcast %union.vec128_t* %XMM1 to i8*
  %395 = load i64, i64* %PC
  %396 = add i64 %395, 3
  store i64 %396, i64* %PC
  %397 = bitcast i8* %394 to <2 x i32>*
  %398 = load <2 x i32>, <2 x i32>* %397, align 1
  %399 = getelementptr inbounds i8, i8* %394, i64 8
  %400 = bitcast i8* %399 to <2 x i32>*
  %401 = load <2 x i32>, <2 x i32>* %400, align 1
  %402 = extractelement <2 x i32> %398, i32 0
  %403 = bitcast i8* %393 to i32*
  store i32 %402, i32* %403, align 1, !tbaa !2454
  %404 = extractelement <2 x i32> %398, i32 1
  %405 = getelementptr inbounds i8, i8* %393, i64 4
  %406 = bitcast i8* %405 to i32*
  store i32 %404, i32* %406, align 1, !tbaa !2454
  %407 = extractelement <2 x i32> %401, i32 0
  %408 = getelementptr inbounds i8, i8* %393, i64 8
  %409 = bitcast i8* %408 to i32*
  store i32 %407, i32* %409, align 1, !tbaa !2454
  %410 = extractelement <2 x i32> %401, i32 1
  %411 = getelementptr inbounds i8, i8* %393, i64 12
  %412 = bitcast i8* %411 to i32*
  store i32 %410, i32* %412, align 1, !tbaa !2454
  %413 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %414 = bitcast %union.vec128_t* %XMM2 to i8*
  %415 = load i64, i64* %PC
  %416 = add i64 %415, 3
  store i64 %416, i64* %PC
  %417 = bitcast i8* %414 to <2 x i32>*
  %418 = load <2 x i32>, <2 x i32>* %417, align 1
  %419 = getelementptr inbounds i8, i8* %414, i64 8
  %420 = bitcast i8* %419 to <2 x i32>*
  %421 = load <2 x i32>, <2 x i32>* %420, align 1
  %422 = extractelement <2 x i32> %418, i32 0
  %423 = bitcast i8* %413 to i32*
  store i32 %422, i32* %423, align 1, !tbaa !2454
  %424 = extractelement <2 x i32> %418, i32 1
  %425 = getelementptr inbounds i8, i8* %413, i64 4
  %426 = bitcast i8* %425 to i32*
  store i32 %424, i32* %426, align 1, !tbaa !2454
  %427 = extractelement <2 x i32> %421, i32 0
  %428 = getelementptr inbounds i8, i8* %413, i64 8
  %429 = bitcast i8* %428 to i32*
  store i32 %427, i32* %429, align 1, !tbaa !2454
  %430 = extractelement <2 x i32> %421, i32 1
  %431 = getelementptr inbounds i8, i8* %413, i64 12
  %432 = bitcast i8* %431 to i32*
  store i32 %430, i32* %432, align 1, !tbaa !2454
  %433 = load i64, i64* %PC
  %434 = sub i64 %433, 293
  %435 = load i64, i64* %PC
  %436 = add i64 %435, 5
  %437 = load i64, i64* %PC
  %438 = add i64 %437, 5
  store i64 %438, i64* %PC
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %440 = load i64, i64* %439, align 8, !tbaa !2428
  %441 = add i64 %440, -8
  %442 = inttoptr i64 %441 to i64*
  store i64 %436, i64* %442
  store i64 %441, i64* %439, align 8, !tbaa !2428
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %434, i64* %443, align 8, !tbaa !2428
  %444 = load i64, i64* %PC
  %445 = call %struct.Memory* @sub_400650_make_vec(%struct.State* %0, i64 %444, %struct.Memory* %365)
  %446 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %447 = load i64, i64* %PC
  %448 = add i64 %447, 8
  store i64 %448, i64* %PC
  %449 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_400c20__rodata_type* @seg_400c20__rodata to i64), i64 8) to double*)
  %450 = bitcast i8* %446 to double*
  store double %449, double* %450, align 1, !tbaa !2452
  %451 = getelementptr inbounds i8, i8* %446, i64 8
  %452 = bitcast i8* %451 to double*
  store double 0.000000e+00, double* %452, align 1, !tbaa !2452
  %453 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %454 = load i64, i64* %PC
  %455 = add i64 %454, 8
  store i64 %455, i64* %PC
  %456 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_400c20__rodata_type* @seg_400c20__rodata to i64), i64 16) to double*)
  %457 = bitcast i8* %453 to double*
  store double %456, double* %457, align 1, !tbaa !2452
  %458 = getelementptr inbounds i8, i8* %453, i64 8
  %459 = bitcast i8* %458 to double*
  store double 0.000000e+00, double* %459, align 1, !tbaa !2452
  %460 = load i64, i64* %RBP
  %461 = sub i64 %460, 192
  %462 = bitcast %union.vec128_t* %XMM0 to i8*
  %463 = load i64, i64* %PC
  %464 = add i64 %463, 8
  store i64 %464, i64* %PC
  %465 = bitcast i8* %462 to double*
  %466 = load double, double* %465, align 1
  %467 = getelementptr inbounds i8, i8* %462, i64 8
  %468 = bitcast i8* %467 to double*
  %469 = load double, double* %468, align 1
  %470 = inttoptr i64 %461 to double*
  store double %466, double* %470
  %471 = add i64 %461, 8
  %472 = inttoptr i64 %471 to double*
  store double %469, double* %472
  %473 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %474 = bitcast %union.vec128_t* %XMM1 to i8*
  %475 = load i64, i64* %PC
  %476 = add i64 %475, 3
  store i64 %476, i64* %PC
  %477 = bitcast i8* %474 to <2 x i32>*
  %478 = load <2 x i32>, <2 x i32>* %477, align 1
  %479 = getelementptr inbounds i8, i8* %474, i64 8
  %480 = bitcast i8* %479 to <2 x i32>*
  %481 = load <2 x i32>, <2 x i32>* %480, align 1
  %482 = extractelement <2 x i32> %478, i32 0
  %483 = bitcast i8* %473 to i32*
  store i32 %482, i32* %483, align 1, !tbaa !2454
  %484 = extractelement <2 x i32> %478, i32 1
  %485 = getelementptr inbounds i8, i8* %473, i64 4
  %486 = bitcast i8* %485 to i32*
  store i32 %484, i32* %486, align 1, !tbaa !2454
  %487 = extractelement <2 x i32> %481, i32 0
  %488 = getelementptr inbounds i8, i8* %473, i64 8
  %489 = bitcast i8* %488 to i32*
  store i32 %487, i32* %489, align 1, !tbaa !2454
  %490 = extractelement <2 x i32> %481, i32 1
  %491 = getelementptr inbounds i8, i8* %473, i64 12
  %492 = bitcast i8* %491 to i32*
  store i32 %490, i32* %492, align 1, !tbaa !2454
  %493 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %494 = bitcast %union.vec128_t* %XMM2 to i8*
  %495 = load i64, i64* %PC
  %496 = add i64 %495, 3
  store i64 %496, i64* %PC
  %497 = bitcast i8* %494 to <2 x i32>*
  %498 = load <2 x i32>, <2 x i32>* %497, align 1
  %499 = getelementptr inbounds i8, i8* %494, i64 8
  %500 = bitcast i8* %499 to <2 x i32>*
  %501 = load <2 x i32>, <2 x i32>* %500, align 1
  %502 = extractelement <2 x i32> %498, i32 0
  %503 = bitcast i8* %493 to i32*
  store i32 %502, i32* %503, align 1, !tbaa !2454
  %504 = extractelement <2 x i32> %498, i32 1
  %505 = getelementptr inbounds i8, i8* %493, i64 4
  %506 = bitcast i8* %505 to i32*
  store i32 %504, i32* %506, align 1, !tbaa !2454
  %507 = extractelement <2 x i32> %501, i32 0
  %508 = getelementptr inbounds i8, i8* %493, i64 8
  %509 = bitcast i8* %508 to i32*
  store i32 %507, i32* %509, align 1, !tbaa !2454
  %510 = extractelement <2 x i32> %501, i32 1
  %511 = getelementptr inbounds i8, i8* %493, i64 12
  %512 = bitcast i8* %511 to i32*
  store i32 %510, i32* %512, align 1, !tbaa !2454
  %513 = load i64, i64* %PC
  %514 = sub i64 %513, 328
  %515 = load i64, i64* %PC
  %516 = add i64 %515, 5
  %517 = load i64, i64* %PC
  %518 = add i64 %517, 5
  store i64 %518, i64* %PC
  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %520 = load i64, i64* %519, align 8, !tbaa !2428
  %521 = add i64 %520, -8
  %522 = inttoptr i64 %521 to i64*
  store i64 %516, i64* %522
  store i64 %521, i64* %519, align 8, !tbaa !2428
  %523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %514, i64* %523, align 8, !tbaa !2428
  %524 = load i64, i64* %PC
  %525 = call %struct.Memory* @sub_400650_make_vec(%struct.State* %0, i64 %524, %struct.Memory* %445)
  %526 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %527 = load i64, i64* %PC
  %528 = add i64 %527, 8
  store i64 %528, i64* %PC
  %529 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_400c20__rodata_type* @seg_400c20__rodata to i64), i64 8) to double*)
  %530 = bitcast i8* %526 to double*
  store double %529, double* %530, align 1, !tbaa !2452
  %531 = getelementptr inbounds i8, i8* %526, i64 8
  %532 = bitcast i8* %531 to double*
  store double 0.000000e+00, double* %532, align 1, !tbaa !2452
  %533 = load i64, i64* %RBP
  %534 = sub i64 %533, 240
  %535 = bitcast %union.vec128_t* %XMM0 to i8*
  %536 = load i64, i64* %PC
  %537 = add i64 %536, 8
  store i64 %537, i64* %PC
  %538 = bitcast i8* %535 to double*
  %539 = load double, double* %538, align 1
  %540 = getelementptr inbounds i8, i8* %535, i64 8
  %541 = bitcast i8* %540 to double*
  %542 = load double, double* %541, align 1
  %543 = inttoptr i64 %534 to double*
  store double %539, double* %543
  %544 = add i64 %534, 8
  %545 = inttoptr i64 %544 to double*
  store double %542, double* %545
  %546 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %547 = load i64, i64* %RBP
  %548 = sub i64 %547, 144
  %549 = load i64, i64* %PC
  %550 = add i64 %549, 8
  store i64 %550, i64* %PC
  %551 = inttoptr i64 %548 to double*
  %552 = load double, double* %551
  %553 = add i64 %548, 8
  %554 = inttoptr i64 %553 to double*
  %555 = load double, double* %554
  %556 = bitcast i8* %546 to double*
  store double %552, double* %556, align 1, !tbaa !2452
  %557 = getelementptr inbounds i8, i8* %546, i64 8
  %558 = bitcast i8* %557 to double*
  store double %555, double* %558, align 1, !tbaa !2452
  %559 = load i64, i64* %RBP
  %560 = sub i64 %559, 128
  %561 = bitcast %union.vec128_t* %XMM0 to i8*
  %562 = load i64, i64* %PC
  %563 = add i64 %562, 5
  store i64 %563, i64* %PC
  %564 = bitcast i8* %561 to double*
  %565 = load double, double* %564, align 1
  %566 = getelementptr inbounds i8, i8* %561, i64 8
  %567 = bitcast i8* %566 to double*
  %568 = load double, double* %567, align 1
  %569 = inttoptr i64 %560 to double*
  store double %565, double* %569
  %570 = add i64 %560, 8
  %571 = inttoptr i64 %570 to double*
  store double %568, double* %571
  %572 = load i64, i64* %RBP
  %573 = sub i64 %572, 112
  %574 = bitcast %union.vec128_t* %XMM0 to i8*
  %575 = load i64, i64* %PC
  %576 = add i64 %575, 5
  store i64 %576, i64* %PC
  %577 = bitcast i8* %574 to double*
  %578 = load double, double* %577, align 1
  %579 = getelementptr inbounds i8, i8* %574, i64 8
  %580 = bitcast i8* %579 to double*
  %581 = load double, double* %580, align 1
  %582 = inttoptr i64 %573 to double*
  store double %578, double* %582
  %583 = add i64 %573, 8
  %584 = inttoptr i64 %583 to double*
  store double %581, double* %584
  %585 = load i64, i64* %RBP
  %586 = sub i64 %585, 96
  %587 = bitcast %union.vec128_t* %XMM0 to i8*
  %588 = load i64, i64* %PC
  %589 = add i64 %588, 5
  store i64 %589, i64* %PC
  %590 = bitcast i8* %587 to double*
  %591 = load double, double* %590, align 1
  %592 = getelementptr inbounds i8, i8* %587, i64 8
  %593 = bitcast i8* %592 to double*
  %594 = load double, double* %593, align 1
  %595 = inttoptr i64 %586 to double*
  store double %591, double* %595
  %596 = add i64 %586, 8
  %597 = inttoptr i64 %596 to double*
  store double %594, double* %597
  %598 = load i64, i64* %RBP
  %599 = sub i64 %598, 80
  %600 = bitcast %union.vec128_t* %XMM0 to i8*
  %601 = load i64, i64* %PC
  %602 = add i64 %601, 5
  store i64 %602, i64* %PC
  %603 = bitcast i8* %600 to double*
  %604 = load double, double* %603, align 1
  %605 = getelementptr inbounds i8, i8* %600, i64 8
  %606 = bitcast i8* %605 to double*
  %607 = load double, double* %606, align 1
  %608 = inttoptr i64 %599 to double*
  store double %604, double* %608
  %609 = add i64 %599, 8
  %610 = inttoptr i64 %609 to double*
  store double %607, double* %610
  %611 = load i64, i64* %RBP
  %612 = sub i64 %611, 64
  %613 = bitcast %union.vec128_t* %XMM0 to i8*
  %614 = load i64, i64* %PC
  %615 = add i64 %614, 5
  store i64 %615, i64* %PC
  %616 = bitcast i8* %613 to double*
  %617 = load double, double* %616, align 1
  %618 = getelementptr inbounds i8, i8* %613, i64 8
  %619 = bitcast i8* %618 to double*
  %620 = load double, double* %619, align 1
  %621 = inttoptr i64 %612 to double*
  store double %617, double* %621
  %622 = add i64 %612, 8
  %623 = inttoptr i64 %622 to double*
  store double %620, double* %623
  %624 = load i64, i64* %RBP
  %625 = sub i64 %624, 248
  %626 = bitcast %union.vec128_t* %XMM1 to i8*
  %627 = load i64, i64* %PC
  %628 = add i64 %627, 8
  store i64 %628, i64* %PC
  %629 = bitcast i8* %626 to double*
  %630 = load double, double* %629, align 1
  %631 = inttoptr i64 %625 to double*
  store double %630, double* %631
  br label %block_4007d6

block_4007d6:                                     ; preds = %block_4007f0, %block_4006c0
  %MEMORY.0 = phi %struct.Memory* [ %525, %block_4006c0 ], [ %2834, %block_4007f0 ]
  %632 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %633 = load i64, i64* %RBP
  %634 = sub i64 %633, 248
  %635 = load i64, i64* %PC
  %636 = add i64 %635, 8
  store i64 %636, i64* %PC
  %637 = inttoptr i64 %634 to double*
  %638 = load double, double* %637
  %639 = bitcast i8* %632 to double*
  store double %638, double* %639, align 1, !tbaa !2452
  %640 = getelementptr inbounds i8, i8* %632, i64 8
  %641 = bitcast i8* %640 to double*
  store double 0.000000e+00, double* %641, align 1, !tbaa !2452
  %642 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %643 = load i64, i64* %RBP
  %644 = sub i64 %643, 276
  %645 = load i64, i64* %PC
  %646 = add i64 %645, 8
  store i64 %646, i64* %PC
  %647 = inttoptr i64 %644 to i32*
  %648 = load i32, i32* %647
  %649 = sitofp i32 %648 to double
  %650 = bitcast i8* %642 to double*
  store double %649, double* %650, align 1, !tbaa !2452
  %651 = bitcast %union.vec128_t* %XMM1 to i8*
  %652 = bitcast %union.vec128_t* %XMM0 to i8*
  %653 = load i64, i64* %PC
  %654 = add i64 %653, 4
  store i64 %654, i64* %PC
  %655 = bitcast i8* %651 to double*
  %656 = load double, double* %655, align 1
  %657 = bitcast i8* %652 to double*
  %658 = load double, double* %657, align 1
  %659 = fcmp uno double %656, %658
  br i1 %659, label %660, label %672

; <label>:660:                                    ; preds = %block_4007d6
  %661 = fadd double %656, %658
  %662 = bitcast double %661 to i64
  %663 = and i64 %662, 9221120237041090560
  %664 = icmp eq i64 %663, 9218868437227405312
  %665 = and i64 %662, 2251799813685247
  %666 = icmp ne i64 %665, 0
  %667 = and i1 %664, %666
  br i1 %667, label %668, label %678

; <label>:668:                                    ; preds = %660
  %669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %670 = load i64, i64* %669, align 8, !tbaa !2428
  %671 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %670, %struct.Memory* %MEMORY.0) #18
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit319

; <label>:672:                                    ; preds = %block_4007d6
  %673 = fcmp ogt double %656, %658
  br i1 %673, label %678, label %674

; <label>:674:                                    ; preds = %672
  %675 = fcmp olt double %656, %658
  br i1 %675, label %678, label %676

; <label>:676:                                    ; preds = %674
  %677 = fcmp oeq double %656, %658
  br i1 %677, label %678, label %685

; <label>:678:                                    ; preds = %676, %674, %672, %660
  %679 = phi i8 [ 0, %672 ], [ 0, %674 ], [ 1, %676 ], [ 1, %660 ]
  %680 = phi i8 [ 0, %672 ], [ 0, %674 ], [ 0, %676 ], [ 1, %660 ]
  %681 = phi i8 [ 0, %672 ], [ 1, %674 ], [ 0, %676 ], [ 1, %660 ]
  %682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %679, i8* %682, align 1, !tbaa !2456
  %683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %680, i8* %683, align 1, !tbaa !2456
  %684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %681, i8* %684, align 1, !tbaa !2456
  br label %685

; <label>:685:                                    ; preds = %678, %676
  %686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %686, align 1, !tbaa !2456
  %687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %687, align 1, !tbaa !2456
  %688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %688, align 1, !tbaa !2456
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit319

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit319: ; preds = %668, %685
  %689 = phi %struct.Memory* [ %671, %668 ], [ %MEMORY.0, %685 ]
  %690 = load i64, i64* %PC
  %691 = add i64 %690, 298
  %692 = load i64, i64* %PC
  %693 = add i64 %692, 6
  %694 = load i64, i64* %PC
  %695 = add i64 %694, 6
  store i64 %695, i64* %PC
  %696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %697 = load i8, i8* %696, align 1, !tbaa !2432
  store i8 %697, i8* %BRANCH_TAKEN, align 1, !tbaa !2456
  %698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %699 = icmp ne i8 %697, 0
  %700 = select i1 %699, i64 %691, i64 %693
  store i64 %700, i64* %698, align 8, !tbaa !2428
  %701 = load i8, i8* %BRANCH_TAKEN
  %702 = icmp eq i8 %701, 1
  %703 = bitcast %"class.std::bitset"* %YMM0 to i8*
  br i1 %702, label %block_400914, label %block_4007f0

block_400a15:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit
  %704 = load i64, i64* %PC
  %705 = add i64 %704, 10
  store i64 %705, i64* %PC
  store i64 add (i64 ptrtoint (%seg_400c20__rodata_type* @seg_400c20__rodata to i64), i64 40), i64* %RDI, align 8, !tbaa !2428
  %706 = load i64, i64* %PC
  %707 = add i64 %706, 10
  store i64 %707, i64* %PC
  store i64 add (i64 ptrtoint (%seg_400c20__rodata_type* @seg_400c20__rodata to i64), i64 49), i64* %RSI, align 8, !tbaa !2428
  %708 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %709 = load i64, i64* %RBP
  %710 = sub i64 %709, 24
  %711 = load i64, i64* %PC
  %712 = add i64 %711, 5
  store i64 %712, i64* %PC
  %713 = inttoptr i64 %710 to double*
  %714 = load double, double* %713
  %715 = bitcast i8* %708 to double*
  store double %714, double* %715, align 1, !tbaa !2452
  %716 = getelementptr inbounds i8, i8* %708, i64 8
  %717 = bitcast i8* %716 to double*
  store double 0.000000e+00, double* %717, align 1, !tbaa !2452
  %718 = load i64, i64* %PC
  %719 = add i64 %718, 2
  store i64 %719, i64* %PC
  store i8 1, i8* %AL, align 1, !tbaa !2456
  %720 = load i64, i64* %PC
  %721 = sub i64 %720, 1312
  %722 = load i64, i64* %PC
  %723 = add i64 %722, 5
  %724 = load i64, i64* %PC
  %725 = add i64 %724, 5
  store i64 %725, i64* %PC
  %726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %727 = load i64, i64* %726, align 8, !tbaa !2428
  %728 = add i64 %727, -8
  %729 = inttoptr i64 %728 to i64*
  store i64 %723, i64* %729
  store i64 %728, i64* %726, align 8, !tbaa !2428
  %730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %721, i64* %730, align 8, !tbaa !2428
  %731 = load i64, i64* %PC
  %732 = call %struct.Memory* @ext_602088_printf(%struct.State* %0, i64 %731, %struct.Memory* %3150)
  %733 = load i64, i64* %PC
  %734 = add i64 %733, 10
  store i64 %734, i64* %PC
  store i64 add (i64 ptrtoint (%seg_400c20__rodata_type* @seg_400c20__rodata to i64), i64 40), i64* %RDI, align 8, !tbaa !2428
  %735 = load i64, i64* %PC
  %736 = add i64 %735, 10
  store i64 %736, i64* %PC
  store i64 add (i64 ptrtoint (%seg_400c20__rodata_type* @seg_400c20__rodata to i64), i64 57), i64* %RSI, align 8, !tbaa !2428
  %737 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %738 = load i64, i64* %RBP
  %739 = sub i64 %738, 32
  %740 = load i64, i64* %PC
  %741 = add i64 %740, 5
  store i64 %741, i64* %PC
  %742 = inttoptr i64 %739 to double*
  %743 = load double, double* %742
  %744 = bitcast i8* %737 to double*
  store double %743, double* %744, align 1, !tbaa !2452
  %745 = getelementptr inbounds i8, i8* %737, i64 8
  %746 = bitcast i8* %745 to double*
  store double 0.000000e+00, double* %746, align 1, !tbaa !2452
  %747 = load i64, i64* %RBP
  %748 = sub i64 %747, 300
  %749 = load i32, i32* %EAX
  %750 = zext i32 %749 to i64
  %751 = load i64, i64* %PC
  %752 = add i64 %751, 6
  store i64 %752, i64* %PC
  %753 = inttoptr i64 %748 to i32*
  store i32 %749, i32* %753
  %754 = load i64, i64* %PC
  %755 = add i64 %754, 2
  store i64 %755, i64* %PC
  store i8 1, i8* %AL, align 1, !tbaa !2456
  %756 = load i64, i64* %PC
  %757 = sub i64 %756, 1350
  %758 = load i64, i64* %PC
  %759 = add i64 %758, 5
  %760 = load i64, i64* %PC
  %761 = add i64 %760, 5
  store i64 %761, i64* %PC
  %762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %763 = load i64, i64* %762, align 8, !tbaa !2428
  %764 = add i64 %763, -8
  %765 = inttoptr i64 %764 to i64*
  store i64 %759, i64* %765
  store i64 %764, i64* %762, align 8, !tbaa !2428
  %766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %757, i64* %766, align 8, !tbaa !2428
  %767 = load i64, i64* %PC
  %768 = call %struct.Memory* @ext_602088_printf(%struct.State* %0, i64 %767, %struct.Memory* %732)
  %769 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %770 = load i64, i64* %RBP
  %771 = sub i64 %770, 96
  %772 = load i64, i64* %PC
  %773 = add i64 %772, 5
  store i64 %773, i64* %PC
  %774 = inttoptr i64 %771 to double*
  %775 = load double, double* %774
  %776 = add i64 %771, 8
  %777 = inttoptr i64 %776 to double*
  %778 = load double, double* %777
  %779 = bitcast i8* %769 to double*
  store double %775, double* %779, align 1, !tbaa !2452
  %780 = getelementptr inbounds i8, i8* %769, i64 8
  %781 = bitcast i8* %780 to double*
  store double %778, double* %781, align 1, !tbaa !2452
  %782 = load i64, i64* %RBP
  %783 = sub i64 %782, 304
  %784 = load i32, i32* %EAX
  %785 = zext i32 %784 to i64
  %786 = load i64, i64* %PC
  %787 = add i64 %786, 6
  store i64 %787, i64* %PC
  %788 = inttoptr i64 %783 to i32*
  store i32 %784, i32* %788
  %789 = load i64, i64* %PC
  %790 = sub i64 %789, 982
  %791 = load i64, i64* %PC
  %792 = add i64 %791, 5
  %793 = load i64, i64* %PC
  %794 = add i64 %793, 5
  store i64 %794, i64* %PC
  %795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %796 = load i64, i64* %795, align 8, !tbaa !2428
  %797 = add i64 %796, -8
  %798 = inttoptr i64 %797 to i64*
  store i64 %792, i64* %798
  store i64 %797, i64* %795, align 8, !tbaa !2428
  %799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %790, i64* %799, align 8, !tbaa !2428
  %800 = load i64, i64* %PC
  %801 = call %struct.Memory* @sub_400690_sum_vec(%struct.State* %0, i64 %800, %struct.Memory* %768)
  %802 = load i64, i64* %PC
  %803 = add i64 %802, 10
  store i64 %803, i64* %PC
  store i64 add (i64 ptrtoint (%seg_400c20__rodata_type* @seg_400c20__rodata to i64), i64 40), i64* %RDI, align 8, !tbaa !2428
  %804 = load i64, i64* %PC
  %805 = add i64 %804, 10
  store i64 %805, i64* %PC
  store i64 add (i64 ptrtoint (%seg_400c20__rodata_type* @seg_400c20__rodata to i64), i64 64), i64* %RSI, align 8, !tbaa !2428
  %806 = load i64, i64* %PC
  %807 = add i64 %806, 2
  store i64 %807, i64* %PC
  store i8 1, i8* %AL, align 1, !tbaa !2456
  %808 = load i64, i64* %PC
  %809 = sub i64 %808, 1393
  %810 = load i64, i64* %PC
  %811 = add i64 %810, 5
  %812 = load i64, i64* %PC
  %813 = add i64 %812, 5
  store i64 %813, i64* %PC
  %814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %815 = load i64, i64* %814, align 8, !tbaa !2428
  %816 = add i64 %815, -8
  %817 = inttoptr i64 %816 to i64*
  store i64 %811, i64* %817
  store i64 %816, i64* %814, align 8, !tbaa !2428
  %818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %809, i64* %818, align 8, !tbaa !2428
  %819 = load i64, i64* %PC
  %820 = call %struct.Memory* @ext_602088_printf(%struct.State* %0, i64 %819, %struct.Memory* %801)
  %821 = load i64, i64* %PC
  %822 = add i64 %821, 10
  store i64 %822, i64* %PC
  store i64 add (i64 ptrtoint (%seg_400c20__rodata_type* @seg_400c20__rodata to i64), i64 40), i64* %RDI, align 8, !tbaa !2428
  %823 = load i64, i64* %PC
  %824 = add i64 %823, 10
  store i64 %824, i64* %PC
  store i64 add (i64 ptrtoint (%seg_400c20__rodata_type* @seg_400c20__rodata to i64), i64 73), i64* %RSI, align 8, !tbaa !2428
  %825 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %826 = load i64, i64* %RBP
  %827 = sub i64 %826, 40
  %828 = load i64, i64* %PC
  %829 = add i64 %828, 5
  store i64 %829, i64* %PC
  %830 = inttoptr i64 %827 to double*
  %831 = load double, double* %830
  %832 = bitcast i8* %825 to double*
  store double %831, double* %832, align 1, !tbaa !2452
  %833 = getelementptr inbounds i8, i8* %825, i64 8
  %834 = bitcast i8* %833 to double*
  store double 0.000000e+00, double* %834, align 1, !tbaa !2452
  %835 = load i64, i64* %RBP
  %836 = sub i64 %835, 308
  %837 = load i32, i32* %EAX
  %838 = zext i32 %837 to i64
  %839 = load i64, i64* %PC
  %840 = add i64 %839, 6
  store i64 %840, i64* %PC
  %841 = inttoptr i64 %836 to i32*
  store i32 %837, i32* %841
  %842 = load i64, i64* %PC
  %843 = add i64 %842, 2
  store i64 %843, i64* %PC
  store i8 1, i8* %AL, align 1, !tbaa !2456
  %844 = load i64, i64* %PC
  %845 = sub i64 %844, 1431
  %846 = load i64, i64* %PC
  %847 = add i64 %846, 5
  %848 = load i64, i64* %PC
  %849 = add i64 %848, 5
  store i64 %849, i64* %PC
  %850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %851 = load i64, i64* %850, align 8, !tbaa !2428
  %852 = add i64 %851, -8
  %853 = inttoptr i64 %852 to i64*
  store i64 %847, i64* %853
  store i64 %852, i64* %850, align 8, !tbaa !2428
  %854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %845, i64* %854, align 8, !tbaa !2428
  %855 = load i64, i64* %PC
  %856 = call %struct.Memory* @ext_602088_printf(%struct.State* %0, i64 %855, %struct.Memory* %820)
  %857 = load i64, i64* %PC
  %858 = add i64 %857, 10
  store i64 %858, i64* %PC
  store i64 add (i64 ptrtoint (%seg_400c20__rodata_type* @seg_400c20__rodata to i64), i64 40), i64* %RDI, align 8, !tbaa !2428
  %859 = load i64, i64* %PC
  %860 = add i64 %859, 10
  store i64 %860, i64* %PC
  store i64 add (i64 ptrtoint (%seg_400c20__rodata_type* @seg_400c20__rodata to i64), i64 85), i64* %RSI, align 8, !tbaa !2428
  %861 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %862 = load i64, i64* %RBP
  %863 = sub i64 %862, 48
  %864 = load i64, i64* %PC
  %865 = add i64 %864, 5
  store i64 %865, i64* %PC
  %866 = inttoptr i64 %863 to double*
  %867 = load double, double* %866
  %868 = bitcast i8* %861 to double*
  store double %867, double* %868, align 1, !tbaa !2452
  %869 = getelementptr inbounds i8, i8* %861, i64 8
  %870 = bitcast i8* %869 to double*
  store double 0.000000e+00, double* %870, align 1, !tbaa !2452
  %871 = load i64, i64* %RBP
  %872 = sub i64 %871, 312
  %873 = load i32, i32* %EAX
  %874 = zext i32 %873 to i64
  %875 = load i64, i64* %PC
  %876 = add i64 %875, 6
  store i64 %876, i64* %PC
  %877 = inttoptr i64 %872 to i32*
  store i32 %873, i32* %877
  %878 = load i64, i64* %PC
  %879 = add i64 %878, 2
  store i64 %879, i64* %PC
  store i8 1, i8* %AL, align 1, !tbaa !2456
  %880 = load i64, i64* %PC
  %881 = sub i64 %880, 1469
  %882 = load i64, i64* %PC
  %883 = add i64 %882, 5
  %884 = load i64, i64* %PC
  %885 = add i64 %884, 5
  store i64 %885, i64* %PC
  %886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %887 = load i64, i64* %886, align 8, !tbaa !2428
  %888 = add i64 %887, -8
  %889 = inttoptr i64 %888 to i64*
  store i64 %883, i64* %889
  store i64 %888, i64* %886, align 8, !tbaa !2428
  %890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %881, i64* %890, align 8, !tbaa !2428
  %891 = load i64, i64* %PC
  %892 = call %struct.Memory* @ext_602088_printf(%struct.State* %0, i64 %891, %struct.Memory* %856)
  %893 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %894 = load i64, i64* %RBP
  %895 = sub i64 %894, 64
  %896 = load i64, i64* %PC
  %897 = add i64 %896, 5
  store i64 %897, i64* %PC
  %898 = inttoptr i64 %895 to double*
  %899 = load double, double* %898
  %900 = add i64 %895, 8
  %901 = inttoptr i64 %900 to double*
  %902 = load double, double* %901
  %903 = bitcast i8* %893 to double*
  store double %899, double* %903, align 1, !tbaa !2452
  %904 = getelementptr inbounds i8, i8* %893, i64 8
  %905 = bitcast i8* %904 to double*
  store double %902, double* %905, align 1, !tbaa !2452
  %906 = load i64, i64* %RBP
  %907 = sub i64 %906, 316
  %908 = load i32, i32* %EAX
  %909 = zext i32 %908 to i64
  %910 = load i64, i64* %PC
  %911 = add i64 %910, 6
  store i64 %911, i64* %PC
  %912 = inttoptr i64 %907 to i32*
  store i32 %908, i32* %912
  %913 = load i64, i64* %PC
  %914 = sub i64 %913, 1101
  %915 = load i64, i64* %PC
  %916 = add i64 %915, 5
  %917 = load i64, i64* %PC
  %918 = add i64 %917, 5
  store i64 %918, i64* %PC
  %919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %920 = load i64, i64* %919, align 8, !tbaa !2428
  %921 = add i64 %920, -8
  %922 = inttoptr i64 %921 to i64*
  store i64 %916, i64* %922
  store i64 %921, i64* %919, align 8, !tbaa !2428
  %923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %914, i64* %923, align 8, !tbaa !2428
  %924 = load i64, i64* %PC
  %925 = call %struct.Memory* @sub_400690_sum_vec(%struct.State* %0, i64 %924, %struct.Memory* %892)
  %926 = load i64, i64* %PC
  %927 = add i64 %926, 10
  store i64 %927, i64* %PC
  store i64 add (i64 ptrtoint (%seg_400c20__rodata_type* @seg_400c20__rodata to i64), i64 40), i64* %RDI, align 8, !tbaa !2428
  %928 = load i64, i64* %PC
  %929 = add i64 %928, 10
  store i64 %929, i64* %PC
  store i64 add (i64 ptrtoint (%seg_400c20__rodata_type* @seg_400c20__rodata to i64), i64 124), i64* %RSI, align 8, !tbaa !2428
  %930 = load i64, i64* %PC
  %931 = add i64 %930, 2
  store i64 %931, i64* %PC
  store i8 1, i8* %AL, align 1, !tbaa !2456
  %932 = load i64, i64* %PC
  %933 = sub i64 %932, 1512
  %934 = load i64, i64* %PC
  %935 = add i64 %934, 5
  %936 = load i64, i64* %PC
  %937 = add i64 %936, 5
  store i64 %937, i64* %PC
  %938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %939 = load i64, i64* %938, align 8, !tbaa !2428
  %940 = add i64 %939, -8
  %941 = inttoptr i64 %940 to i64*
  store i64 %935, i64* %941
  store i64 %940, i64* %938, align 8, !tbaa !2428
  %942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %933, i64* %942, align 8, !tbaa !2428
  %943 = load i64, i64* %PC
  %944 = call %struct.Memory* @ext_602088_printf(%struct.State* %0, i64 %943, %struct.Memory* %925)
  %945 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %946 = load i64, i64* %RBP
  %947 = sub i64 %946, 80
  %948 = load i64, i64* %PC
  %949 = add i64 %948, 5
  store i64 %949, i64* %PC
  %950 = inttoptr i64 %947 to double*
  %951 = load double, double* %950
  %952 = add i64 %947, 8
  %953 = inttoptr i64 %952 to double*
  %954 = load double, double* %953
  %955 = bitcast i8* %945 to double*
  store double %951, double* %955, align 1, !tbaa !2452
  %956 = getelementptr inbounds i8, i8* %945, i64 8
  %957 = bitcast i8* %956 to double*
  store double %954, double* %957, align 1, !tbaa !2452
  %958 = load i64, i64* %RBP
  %959 = sub i64 %958, 320
  %960 = load i32, i32* %EAX
  %961 = zext i32 %960 to i64
  %962 = load i64, i64* %PC
  %963 = add i64 %962, 6
  store i64 %963, i64* %PC
  %964 = inttoptr i64 %959 to i32*
  store i32 %960, i32* %964
  %965 = load i64, i64* %PC
  %966 = sub i64 %965, 1144
  %967 = load i64, i64* %PC
  %968 = add i64 %967, 5
  %969 = load i64, i64* %PC
  %970 = add i64 %969, 5
  store i64 %970, i64* %PC
  %971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %972 = load i64, i64* %971, align 8, !tbaa !2428
  %973 = add i64 %972, -8
  %974 = inttoptr i64 %973 to i64*
  store i64 %968, i64* %974
  store i64 %973, i64* %971, align 8, !tbaa !2428
  %975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %966, i64* %975, align 8, !tbaa !2428
  %976 = load i64, i64* %PC
  %977 = call %struct.Memory* @sub_400690_sum_vec(%struct.State* %0, i64 %976, %struct.Memory* %944)
  %978 = load i64, i64* %PC
  %979 = add i64 %978, 10
  store i64 %979, i64* %PC
  store i64 add (i64 ptrtoint (%seg_400c20__rodata_type* @seg_400c20__rodata to i64), i64 40), i64* %RDI, align 8, !tbaa !2428
  %980 = load i64, i64* %PC
  %981 = add i64 %980, 10
  store i64 %981, i64* %PC
  store i64 add (i64 ptrtoint (%seg_400c20__rodata_type* @seg_400c20__rodata to i64), i64 99), i64* %RSI, align 8, !tbaa !2428
  %982 = load i64, i64* %PC
  %983 = add i64 %982, 2
  store i64 %983, i64* %PC
  store i8 1, i8* %AL, align 1, !tbaa !2456
  %984 = load i64, i64* %PC
  %985 = sub i64 %984, 1555
  %986 = load i64, i64* %PC
  %987 = add i64 %986, 5
  %988 = load i64, i64* %PC
  %989 = add i64 %988, 5
  store i64 %989, i64* %PC
  %990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %991 = load i64, i64* %990, align 8, !tbaa !2428
  %992 = add i64 %991, -8
  %993 = inttoptr i64 %992 to i64*
  store i64 %987, i64* %993
  store i64 %992, i64* %990, align 8, !tbaa !2428
  %994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %985, i64* %994, align 8, !tbaa !2428
  %995 = load i64, i64* %PC
  %996 = call %struct.Memory* @ext_602088_printf(%struct.State* %0, i64 %995, %struct.Memory* %977)
  %997 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %998 = load i64, i64* %RBP
  %999 = sub i64 %998, 112
  %1000 = load i64, i64* %PC
  %1001 = add i64 %1000, 5
  store i64 %1001, i64* %PC
  %1002 = inttoptr i64 %999 to double*
  %1003 = load double, double* %1002
  %1004 = add i64 %999, 8
  %1005 = inttoptr i64 %1004 to double*
  %1006 = load double, double* %1005
  %1007 = bitcast i8* %997 to double*
  store double %1003, double* %1007, align 1, !tbaa !2452
  %1008 = getelementptr inbounds i8, i8* %997, i64 8
  %1009 = bitcast i8* %1008 to double*
  store double %1006, double* %1009, align 1, !tbaa !2452
  %1010 = load i64, i64* %RBP
  %1011 = sub i64 %1010, 324
  %1012 = load i32, i32* %EAX
  %1013 = zext i32 %1012 to i64
  %1014 = load i64, i64* %PC
  %1015 = add i64 %1014, 6
  store i64 %1015, i64* %PC
  %1016 = inttoptr i64 %1011 to i32*
  store i32 %1012, i32* %1016
  %1017 = load i64, i64* %PC
  %1018 = sub i64 %1017, 1187
  %1019 = load i64, i64* %PC
  %1020 = add i64 %1019, 5
  %1021 = load i64, i64* %PC
  %1022 = add i64 %1021, 5
  store i64 %1022, i64* %PC
  %1023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1024 = load i64, i64* %1023, align 8, !tbaa !2428
  %1025 = add i64 %1024, -8
  %1026 = inttoptr i64 %1025 to i64*
  store i64 %1020, i64* %1026
  store i64 %1025, i64* %1023, align 8, !tbaa !2428
  %1027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1018, i64* %1027, align 8, !tbaa !2428
  %1028 = load i64, i64* %PC
  %1029 = call %struct.Memory* @sub_400690_sum_vec(%struct.State* %0, i64 %1028, %struct.Memory* %996)
  %1030 = load i64, i64* %PC
  %1031 = add i64 %1030, 10
  store i64 %1031, i64* %PC
  store i64 add (i64 ptrtoint (%seg_400c20__rodata_type* @seg_400c20__rodata to i64), i64 40), i64* %RDI, align 8, !tbaa !2428
  %1032 = load i64, i64* %PC
  %1033 = add i64 %1032, 10
  store i64 %1033, i64* %PC
  store i64 add (i64 ptrtoint (%seg_400c20__rodata_type* @seg_400c20__rodata to i64), i64 112), i64* %RSI, align 8, !tbaa !2428
  %1034 = load i64, i64* %PC
  %1035 = add i64 %1034, 2
  store i64 %1035, i64* %PC
  store i8 1, i8* %AL, align 1, !tbaa !2456
  %1036 = load i64, i64* %PC
  %1037 = sub i64 %1036, 1598
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
  %1048 = call %struct.Memory* @ext_602088_printf(%struct.State* %0, i64 %1047, %struct.Memory* %1029)
  %1049 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1050 = load i64, i64* %RBP
  %1051 = sub i64 %1050, 128
  %1052 = load i64, i64* %PC
  %1053 = add i64 %1052, 5
  store i64 %1053, i64* %PC
  %1054 = inttoptr i64 %1051 to double*
  %1055 = load double, double* %1054
  %1056 = add i64 %1051, 8
  %1057 = inttoptr i64 %1056 to double*
  %1058 = load double, double* %1057
  %1059 = bitcast i8* %1049 to double*
  store double %1055, double* %1059, align 1, !tbaa !2452
  %1060 = getelementptr inbounds i8, i8* %1049, i64 8
  %1061 = bitcast i8* %1060 to double*
  store double %1058, double* %1061, align 1, !tbaa !2452
  %1062 = load i64, i64* %RBP
  %1063 = sub i64 %1062, 328
  %1064 = load i32, i32* %EAX
  %1065 = zext i32 %1064 to i64
  %1066 = load i64, i64* %PC
  %1067 = add i64 %1066, 6
  store i64 %1067, i64* %PC
  %1068 = inttoptr i64 %1063 to i32*
  store i32 %1064, i32* %1068
  %1069 = load i64, i64* %PC
  %1070 = sub i64 %1069, 1230
  %1071 = load i64, i64* %PC
  %1072 = add i64 %1071, 5
  %1073 = load i64, i64* %PC
  %1074 = add i64 %1073, 5
  store i64 %1074, i64* %PC
  %1075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1076 = load i64, i64* %1075, align 8, !tbaa !2428
  %1077 = add i64 %1076, -8
  %1078 = inttoptr i64 %1077 to i64*
  store i64 %1072, i64* %1078
  store i64 %1077, i64* %1075, align 8, !tbaa !2428
  %1079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1070, i64* %1079, align 8, !tbaa !2428
  %1080 = load i64, i64* %PC
  %1081 = call %struct.Memory* @sub_400690_sum_vec(%struct.State* %0, i64 %1080, %struct.Memory* %1048)
  %1082 = load i64, i64* %PC
  %1083 = add i64 %1082, 10
  store i64 %1083, i64* %PC
  store i64 add (i64 ptrtoint (%seg_400c20__rodata_type* @seg_400c20__rodata to i64), i64 40), i64* %RDI, align 8, !tbaa !2428
  %1084 = load i64, i64* %PC
  %1085 = add i64 %1084, 10
  store i64 %1085, i64* %PC
  store i64 add (i64 ptrtoint (%seg_400c20__rodata_type* @seg_400c20__rodata to i64), i64 133), i64* %RSI, align 8, !tbaa !2428
  %1086 = load i64, i64* %PC
  %1087 = add i64 %1086, 2
  store i64 %1087, i64* %PC
  store i8 1, i8* %AL, align 1, !tbaa !2456
  %1088 = load i64, i64* %PC
  %1089 = sub i64 %1088, 1641
  %1090 = load i64, i64* %PC
  %1091 = add i64 %1090, 5
  %1092 = load i64, i64* %PC
  %1093 = add i64 %1092, 5
  store i64 %1093, i64* %PC
  %1094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1095 = load i64, i64* %1094, align 8, !tbaa !2428
  %1096 = add i64 %1095, -8
  %1097 = inttoptr i64 %1096 to i64*
  store i64 %1091, i64* %1097
  store i64 %1096, i64* %1094, align 8, !tbaa !2428
  %1098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1089, i64* %1098, align 8, !tbaa !2428
  %1099 = load i64, i64* %PC
  %1100 = call %struct.Memory* @ext_602088_printf(%struct.State* %0, i64 %1099, %struct.Memory* %1081)
  %1101 = load i64, i64* %RCX
  %1102 = load i32, i32* %ECX
  %1103 = zext i32 %1102 to i64
  %1104 = load i64, i64* %PC
  %1105 = add i64 %1104, 2
  store i64 %1105, i64* %PC
  %1106 = xor i64 %1103, %1101
  %1107 = trunc i64 %1106 to i32
  %1108 = and i64 %1106, 4294967295
  store i64 %1108, i64* %RCX, align 8, !tbaa !2428
  %1109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1109, align 1, !tbaa !2432
  %1110 = and i32 %1107, 255
  %1111 = call i32 @llvm.ctpop.i32(i32 %1110) #17
  %1112 = trunc i32 %1111 to i8
  %1113 = and i8 %1112, 1
  %1114 = xor i8 %1113, 1
  %1115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1114, i8* %1115, align 1, !tbaa !2446
  %1116 = icmp eq i32 %1107, 0
  %1117 = zext i1 %1116 to i8
  %1118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1117, i8* %1118, align 1, !tbaa !2448
  %1119 = lshr i32 %1107, 31
  %1120 = trunc i32 %1119 to i8
  %1121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1120, i8* %1121, align 1, !tbaa !2449
  %1122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1122, align 1, !tbaa !2450
  %1123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1123, align 1, !tbaa !2447
  %1124 = load i64, i64* %RBP
  %1125 = sub i64 %1124, 332
  %1126 = load i32, i32* %EAX
  %1127 = zext i32 %1126 to i64
  %1128 = load i64, i64* %PC
  %1129 = add i64 %1128, 6
  store i64 %1129, i64* %PC
  %1130 = inttoptr i64 %1125 to i32*
  store i32 %1126, i32* %1130
  %1131 = load i32, i32* %ECX
  %1132 = zext i32 %1131 to i64
  %1133 = load i64, i64* %PC
  %1134 = add i64 %1133, 2
  store i64 %1134, i64* %PC
  %1135 = and i64 %1132, 4294967295
  store i64 %1135, i64* %RAX, align 8, !tbaa !2428
  %1136 = load i64, i64* %RSP
  %1137 = load i64, i64* %PC
  %1138 = add i64 %1137, 7
  store i64 %1138, i64* %PC
  %1139 = add i64 336, %1136
  store i64 %1139, i64* %RSP, align 8, !tbaa !2428
  %1140 = icmp ult i64 %1139, %1136
  %1141 = icmp ult i64 %1139, 336
  %1142 = or i1 %1140, %1141
  %1143 = zext i1 %1142 to i8
  %1144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1143, i8* %1144, align 1, !tbaa !2432
  %1145 = trunc i64 %1139 to i32
  %1146 = and i32 %1145, 255
  %1147 = call i32 @llvm.ctpop.i32(i32 %1146) #17
  %1148 = trunc i32 %1147 to i8
  %1149 = and i8 %1148, 1
  %1150 = xor i8 %1149, 1
  %1151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1150, i8* %1151, align 1, !tbaa !2446
  %1152 = xor i64 336, %1136
  %1153 = xor i64 %1152, %1139
  %1154 = lshr i64 %1153, 4
  %1155 = trunc i64 %1154 to i8
  %1156 = and i8 %1155, 1
  %1157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1156, i8* %1157, align 1, !tbaa !2447
  %1158 = icmp eq i64 %1139, 0
  %1159 = zext i1 %1158 to i8
  %1160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1159, i8* %1160, align 1, !tbaa !2448
  %1161 = lshr i64 %1139, 63
  %1162 = trunc i64 %1161 to i8
  %1163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1162, i8* %1163, align 1, !tbaa !2449
  %1164 = lshr i64 %1136, 63
  %1165 = xor i64 %1161, %1164
  %1166 = add nuw nsw i64 %1165, %1161
  %1167 = icmp eq i64 %1166, 2
  %1168 = zext i1 %1167 to i8
  %1169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1168, i8* %1169, align 1, !tbaa !2450
  %1170 = load i64, i64* %PC
  %1171 = add i64 %1170, 1
  store i64 %1171, i64* %PC
  %1172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1173 = load i64, i64* %1172, align 8, !tbaa !2428
  %1174 = add i64 %1173, 8
  %1175 = inttoptr i64 %1173 to i64*
  %1176 = load i64, i64* %1175
  store i64 %1176, i64* %RBP, align 8, !tbaa !2428
  store i64 %1174, i64* %1172, align 8, !tbaa !2428
  %1177 = load i64, i64* %PC
  %1178 = add i64 %1177, 1
  store i64 %1178, i64* %PC
  %1179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1181 = load i64, i64* %1180, align 8, !tbaa !2428
  %1182 = inttoptr i64 %1181 to i64*
  %1183 = load i64, i64* %1182
  store i64 %1183, i64* %1179, align 8, !tbaa !2428
  %1184 = add i64 %1181, 8
  store i64 %1184, i64* %1180, align 8, !tbaa !2428
  ret %struct.Memory* %1100

block_400914:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit319
  %1185 = load i64, i64* %RBP
  %1186 = sub i64 %1185, 192
  %1187 = load i64, i64* %PC
  %1188 = add i64 %1187, 8
  store i64 %1188, i64* %PC
  %1189 = inttoptr i64 %1186 to double*
  %1190 = load double, double* %1189
  %1191 = add i64 %1186, 8
  %1192 = inttoptr i64 %1191 to double*
  %1193 = load double, double* %1192
  %1194 = bitcast i8* %703 to double*
  store double %1190, double* %1194, align 1, !tbaa !2452
  %1195 = getelementptr inbounds i8, i8* %703, i64 8
  %1196 = bitcast i8* %1195 to double*
  store double %1193, double* %1196, align 1, !tbaa !2452
  %1197 = load i64, i64* %RBP
  %1198 = sub i64 %1197, 224
  %1199 = bitcast %union.vec128_t* %XMM0 to i8*
  %1200 = load i64, i64* %PC
  %1201 = add i64 %1200, 8
  store i64 %1201, i64* %PC
  %1202 = bitcast i8* %1199 to double*
  %1203 = load double, double* %1202, align 1
  %1204 = getelementptr inbounds i8, i8* %1199, i64 8
  %1205 = bitcast i8* %1204 to double*
  %1206 = load double, double* %1205, align 1
  %1207 = inttoptr i64 %1198 to double*
  store double %1203, double* %1207
  %1208 = add i64 %1198, 8
  %1209 = inttoptr i64 %1208 to double*
  store double %1206, double* %1209
  br label %block_400924

block_4007f0:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit319
  %1210 = load i64, i64* %PC
  %1211 = add i64 %1210, 8
  store i64 %1211, i64* %PC
  %1212 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_400c20__rodata_type* @seg_400c20__rodata to i64), i64 32) to double*)
  %1213 = bitcast i8* %703 to double*
  store double %1212, double* %1213, align 1, !tbaa !2452
  %1214 = getelementptr inbounds i8, i8* %703, i64 8
  %1215 = bitcast i8* %1214 to double*
  store double 0.000000e+00, double* %1215, align 1, !tbaa !2452
  %1216 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1217 = load i64, i64* %PC
  %1218 = add i64 %1217, 8
  store i64 %1218, i64* %PC
  %1219 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_400c20__rodata_type* @seg_400c20__rodata to i64), i64 8) to double*)
  %1220 = bitcast i8* %1216 to double*
  store double %1219, double* %1220, align 1, !tbaa !2452
  %1221 = getelementptr inbounds i8, i8* %1216, i64 8
  %1222 = bitcast i8* %1221 to double*
  store double 0.000000e+00, double* %1222, align 1, !tbaa !2452
  %1223 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %1224 = load i64, i64* %RBP
  %1225 = sub i64 %1224, 248
  %1226 = load i64, i64* %PC
  %1227 = add i64 %1226, 8
  store i64 %1227, i64* %PC
  %1228 = inttoptr i64 %1225 to double*
  %1229 = load double, double* %1228
  %1230 = bitcast i8* %1223 to double*
  store double %1229, double* %1230, align 1, !tbaa !2452
  %1231 = getelementptr inbounds i8, i8* %1223, i64 8
  %1232 = bitcast i8* %1231 to double*
  store double 0.000000e+00, double* %1232, align 1, !tbaa !2452
  %1233 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %1234 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %1235 = bitcast %union.vec128_t* %XMM1 to i8*
  %1236 = load i64, i64* %PC
  %1237 = add i64 %1236, 4
  store i64 %1237, i64* %PC
  %1238 = bitcast i8* %1234 to double*
  %1239 = load double, double* %1238, align 1
  %1240 = getelementptr inbounds i8, i8* %1234, i64 8
  %1241 = bitcast i8* %1240 to i64*
  %1242 = load i64, i64* %1241, align 1
  %1243 = bitcast i8* %1235 to double*
  %1244 = load double, double* %1243, align 1
  %1245 = fsub double %1239, %1244
  %1246 = bitcast i8* %1233 to double*
  store double %1245, double* %1246, align 1, !tbaa !2452
  %1247 = getelementptr inbounds i8, i8* %1233, i64 8
  %1248 = bitcast i8* %1247 to i64*
  store i64 %1242, i64* %1248, align 1, !tbaa !2452
  %1249 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1250 = bitcast %union.vec128_t* %XMM2 to i8*
  %1251 = load i64, i64* %PC
  %1252 = add i64 %1251, 3
  store i64 %1252, i64* %PC
  %1253 = bitcast i8* %1250 to <2 x i32>*
  %1254 = load <2 x i32>, <2 x i32>* %1253, align 1
  %1255 = getelementptr inbounds i8, i8* %1250, i64 8
  %1256 = bitcast i8* %1255 to <2 x i32>*
  %1257 = load <2 x i32>, <2 x i32>* %1256, align 1
  %1258 = extractelement <2 x i32> %1254, i32 0
  %1259 = bitcast i8* %1249 to i32*
  store i32 %1258, i32* %1259, align 1, !tbaa !2454
  %1260 = extractelement <2 x i32> %1254, i32 1
  %1261 = getelementptr inbounds i8, i8* %1249, i64 4
  %1262 = bitcast i8* %1261 to i32*
  store i32 %1260, i32* %1262, align 1, !tbaa !2454
  %1263 = extractelement <2 x i32> %1257, i32 0
  %1264 = getelementptr inbounds i8, i8* %1249, i64 8
  %1265 = bitcast i8* %1264 to i32*
  store i32 %1263, i32* %1265, align 1, !tbaa !2454
  %1266 = extractelement <2 x i32> %1257, i32 1
  %1267 = getelementptr inbounds i8, i8* %1249, i64 12
  %1268 = bitcast i8* %1267 to i32*
  store i32 %1266, i32* %1268, align 1, !tbaa !2454
  %1269 = load i64, i64* %PC
  %1270 = sub i64 %1269, 751
  %1271 = load i64, i64* %PC
  %1272 = add i64 %1271, 5
  %1273 = load i64, i64* %PC
  %1274 = add i64 %1273, 5
  store i64 %1274, i64* %PC
  %1275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1276 = load i64, i64* %1275, align 8, !tbaa !2428
  %1277 = add i64 %1276, -8
  %1278 = inttoptr i64 %1277 to i64*
  store i64 %1272, i64* %1278
  store i64 %1277, i64* %1275, align 8, !tbaa !2428
  %1279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1270, i64* %1279, align 8, !tbaa !2428
  %1280 = load i64, i64* %PC
  %1281 = call %struct.Memory* @ext_602090_pow(%struct.State* %0, i64 %1280, %struct.Memory* %689)
  %1282 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1283 = load i64, i64* %PC
  %1284 = add i64 %1283, 8
  store i64 %1284, i64* %PC
  %1285 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_400c20__rodata_type* @seg_400c20__rodata to i64), i64 8) to double*)
  %1286 = bitcast i8* %1282 to double*
  store double %1285, double* %1286, align 1, !tbaa !2452
  %1287 = getelementptr inbounds i8, i8* %1282, i64 8
  %1288 = bitcast i8* %1287 to double*
  store double 0.000000e+00, double* %1288, align 1, !tbaa !2452
  %1289 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1290 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1291 = load i64, i64* %RBP
  %1292 = sub i64 %1291, 24
  %1293 = load i64, i64* %PC
  %1294 = add i64 %1293, 5
  store i64 %1294, i64* %PC
  %1295 = bitcast i8* %1290 to double*
  %1296 = load double, double* %1295, align 1
  %1297 = getelementptr inbounds i8, i8* %1290, i64 8
  %1298 = bitcast i8* %1297 to i64*
  %1299 = load i64, i64* %1298, align 1
  %1300 = inttoptr i64 %1292 to double*
  %1301 = load double, double* %1300
  %1302 = fadd double %1296, %1301
  %1303 = bitcast i8* %1289 to double*
  store double %1302, double* %1303, align 1, !tbaa !2452
  %1304 = getelementptr inbounds i8, i8* %1289, i64 8
  %1305 = bitcast i8* %1304 to i64*
  store i64 %1299, i64* %1305, align 1, !tbaa !2452
  %1306 = load i64, i64* %RBP
  %1307 = sub i64 %1306, 24
  %1308 = bitcast %union.vec128_t* %XMM0 to i8*
  %1309 = load i64, i64* %PC
  %1310 = add i64 %1309, 5
  store i64 %1310, i64* %PC
  %1311 = bitcast i8* %1308 to double*
  %1312 = load double, double* %1311, align 1
  %1313 = inttoptr i64 %1307 to double*
  store double %1312, double* %1313
  %1314 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1315 = load i64, i64* %RBP
  %1316 = sub i64 %1315, 248
  %1317 = load i64, i64* %PC
  %1318 = add i64 %1317, 8
  store i64 %1318, i64* %PC
  %1319 = inttoptr i64 %1316 to double*
  %1320 = load double, double* %1319
  %1321 = bitcast i8* %1314 to double*
  store double %1320, double* %1321, align 1, !tbaa !2452
  %1322 = getelementptr inbounds i8, i8* %1314, i64 8
  %1323 = bitcast i8* %1322 to double*
  store double 0.000000e+00, double* %1323, align 1, !tbaa !2452
  %1324 = load i64, i64* %RBP
  %1325 = sub i64 %1324, 296
  %1326 = bitcast %union.vec128_t* %XMM1 to i8*
  %1327 = load i64, i64* %PC
  %1328 = add i64 %1327, 8
  store i64 %1328, i64* %PC
  %1329 = bitcast i8* %1326 to double*
  %1330 = load double, double* %1329, align 1
  %1331 = inttoptr i64 %1325 to double*
  store double %1330, double* %1331
  %1332 = load i64, i64* %PC
  %1333 = sub i64 %1332, 742
  %1334 = load i64, i64* %PC
  %1335 = add i64 %1334, 5
  %1336 = load i64, i64* %PC
  %1337 = add i64 %1336, 5
  store i64 %1337, i64* %PC
  %1338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1339 = load i64, i64* %1338, align 8, !tbaa !2428
  %1340 = add i64 %1339, -8
  %1341 = inttoptr i64 %1340 to i64*
  store i64 %1335, i64* %1341
  store i64 %1340, i64* %1338, align 8, !tbaa !2428
  %1342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1333, i64* %1342, align 8, !tbaa !2428
  %1343 = load i64, i64* %PC
  %1344 = bitcast %struct.State** %state.i160 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1344)
  %1345 = bitcast i64* %curr_pc.i161 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1345)
  %1346 = bitcast %struct.Memory** %memory.i162 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1346)
  call void @llvm.lifetime.start(i64 1, i8* %BRANCH_TAKEN.i163)
  %1347 = bitcast i64* %SS_BASE.i164 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1347)
  %1348 = bitcast i64* %ES_BASE.i165 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1348)
  %1349 = bitcast i64* %DS_BASE.i166 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1349)
  %1350 = bitcast i64* %CS_BASE.i167 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1350)
  %1351 = bitcast %struct.State** %STATE.i168 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1351)
  %1352 = bitcast %struct.Memory** %MEMORY.i169 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1352)
  %1353 = bitcast i64** %_DR0.i170 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1353)
  %1354 = bitcast i64** %_DR1.i171 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1354)
  %1355 = bitcast i64** %_DR2.i172 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1355)
  %1356 = bitcast i64** %_DR3.i173 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1356)
  %1357 = bitcast i64** %_DR4.i174 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1357)
  %1358 = bitcast i64** %_DR5.i175 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1358)
  %1359 = bitcast i64** %_DR6.i176 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1359)
  %1360 = bitcast i64** %_DR7.i177 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1360)
  %1361 = bitcast i64** %CR0.i178 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1361)
  %1362 = bitcast i64** %CR1.i179 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1362)
  %1363 = bitcast i64** %CR2.i180 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1363)
  %1364 = bitcast i64** %CR3.i181 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1364)
  %1365 = bitcast i64** %CR4.i182 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1365)
  %1366 = bitcast i64** %CR8.i183 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1366)
  store %struct.State* %0, %struct.State** %state.i160, align 8, !noalias !2457
  store i64 %1343, i64* %curr_pc.i161, align 8, !noalias !2457
  store %struct.Memory* %1281, %struct.Memory** %memory.i162, align 8, !noalias !2457
  store i8 0, i8* %BRANCH_TAKEN.i163, align 1, !noalias !2457
  store i64 0, i64* %SS_BASE.i164, align 8, !noalias !2457
  store i64 0, i64* %ES_BASE.i165, align 8, !noalias !2457
  store i64 0, i64* %DS_BASE.i166, align 8, !noalias !2457
  store i64 0, i64* %CS_BASE.i167, align 8, !noalias !2457
  store %struct.State* %0, %struct.State** %STATE.i168, align 8, !noalias !2457
  store %struct.Memory* %1281, %struct.Memory** %MEMORY.i169, align 8, !noalias !2457
  %1367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1368 = getelementptr inbounds %struct.GPR, %struct.GPR* %1367, i32 0, i32 33
  %1369 = getelementptr inbounds %struct.Reg, %struct.Reg* %1368, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %1369 to i64*
  store i64 %1343, i64* %PC.i184, align 8, !alias.scope !2461, !noalias !2462
  %1370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1371 = getelementptr inbounds %struct.GPR, %struct.GPR* %1370, i32 0, i32 1
  %1372 = getelementptr inbounds %struct.Reg, %struct.Reg* %1371, i32 0, i32 0
  %1373 = bitcast %union.anon* %1372 to %struct.anon.2*
  %AH.i185 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1373, i32 0, i32 1
  %1374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1375 = getelementptr inbounds %struct.GPR, %struct.GPR* %1374, i32 0, i32 3
  %1376 = getelementptr inbounds %struct.Reg, %struct.Reg* %1375, i32 0, i32 0
  %1377 = bitcast %union.anon* %1376 to %struct.anon.2*
  %BH.i186 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1377, i32 0, i32 1
  %1378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1379 = getelementptr inbounds %struct.GPR, %struct.GPR* %1378, i32 0, i32 5
  %1380 = getelementptr inbounds %struct.Reg, %struct.Reg* %1379, i32 0, i32 0
  %1381 = bitcast %union.anon* %1380 to %struct.anon.2*
  %CH.i187 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1381, i32 0, i32 1
  %1382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1383 = getelementptr inbounds %struct.GPR, %struct.GPR* %1382, i32 0, i32 7
  %1384 = getelementptr inbounds %struct.Reg, %struct.Reg* %1383, i32 0, i32 0
  %1385 = bitcast %union.anon* %1384 to %struct.anon.2*
  %DH.i188 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1385, i32 0, i32 1
  %1386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1387 = getelementptr inbounds %struct.GPR, %struct.GPR* %1386, i32 0, i32 1
  %1388 = getelementptr inbounds %struct.Reg, %struct.Reg* %1387, i32 0, i32 0
  %1389 = bitcast %union.anon* %1388 to %struct.anon.2*
  %AL.i189 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1389, i32 0, i32 0
  %1390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1391 = getelementptr inbounds %struct.GPR, %struct.GPR* %1390, i32 0, i32 3
  %1392 = getelementptr inbounds %struct.Reg, %struct.Reg* %1391, i32 0, i32 0
  %1393 = bitcast %union.anon* %1392 to %struct.anon.2*
  %BL.i190 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1393, i32 0, i32 0
  %1394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1395 = getelementptr inbounds %struct.GPR, %struct.GPR* %1394, i32 0, i32 5
  %1396 = getelementptr inbounds %struct.Reg, %struct.Reg* %1395, i32 0, i32 0
  %1397 = bitcast %union.anon* %1396 to %struct.anon.2*
  %CL.i191 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1397, i32 0, i32 0
  %1398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1399 = getelementptr inbounds %struct.GPR, %struct.GPR* %1398, i32 0, i32 7
  %1400 = getelementptr inbounds %struct.Reg, %struct.Reg* %1399, i32 0, i32 0
  %1401 = bitcast %union.anon* %1400 to %struct.anon.2*
  %DL.i192 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1401, i32 0, i32 0
  %1402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1403 = getelementptr inbounds %struct.GPR, %struct.GPR* %1402, i32 0, i32 9
  %1404 = getelementptr inbounds %struct.Reg, %struct.Reg* %1403, i32 0, i32 0
  %1405 = bitcast %union.anon* %1404 to %struct.anon.2*
  %SIL.i193 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1405, i32 0, i32 0
  %1406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1407 = getelementptr inbounds %struct.GPR, %struct.GPR* %1406, i32 0, i32 11
  %1408 = getelementptr inbounds %struct.Reg, %struct.Reg* %1407, i32 0, i32 0
  %1409 = bitcast %union.anon* %1408 to %struct.anon.2*
  %DIL.i194 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1409, i32 0, i32 0
  %1410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1411 = getelementptr inbounds %struct.GPR, %struct.GPR* %1410, i32 0, i32 13
  %1412 = getelementptr inbounds %struct.Reg, %struct.Reg* %1411, i32 0, i32 0
  %1413 = bitcast %union.anon* %1412 to %struct.anon.2*
  %SPL.i195 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1413, i32 0, i32 0
  %1414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1415 = getelementptr inbounds %struct.GPR, %struct.GPR* %1414, i32 0, i32 15
  %1416 = getelementptr inbounds %struct.Reg, %struct.Reg* %1415, i32 0, i32 0
  %1417 = bitcast %union.anon* %1416 to %struct.anon.2*
  %BPL.i196 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1417, i32 0, i32 0
  %1418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1419 = getelementptr inbounds %struct.GPR, %struct.GPR* %1418, i32 0, i32 17
  %1420 = getelementptr inbounds %struct.Reg, %struct.Reg* %1419, i32 0, i32 0
  %1421 = bitcast %union.anon* %1420 to %struct.anon.2*
  %R8B.i197 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1421, i32 0, i32 0
  %1422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1423 = getelementptr inbounds %struct.GPR, %struct.GPR* %1422, i32 0, i32 19
  %1424 = getelementptr inbounds %struct.Reg, %struct.Reg* %1423, i32 0, i32 0
  %1425 = bitcast %union.anon* %1424 to %struct.anon.2*
  %R9B.i198 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1425, i32 0, i32 0
  %1426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1427 = getelementptr inbounds %struct.GPR, %struct.GPR* %1426, i32 0, i32 21
  %1428 = getelementptr inbounds %struct.Reg, %struct.Reg* %1427, i32 0, i32 0
  %1429 = bitcast %union.anon* %1428 to %struct.anon.2*
  %R10B.i199 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1429, i32 0, i32 0
  %1430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1431 = getelementptr inbounds %struct.GPR, %struct.GPR* %1430, i32 0, i32 23
  %1432 = getelementptr inbounds %struct.Reg, %struct.Reg* %1431, i32 0, i32 0
  %1433 = bitcast %union.anon* %1432 to %struct.anon.2*
  %R11B.i200 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1433, i32 0, i32 0
  %1434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1435 = getelementptr inbounds %struct.GPR, %struct.GPR* %1434, i32 0, i32 25
  %1436 = getelementptr inbounds %struct.Reg, %struct.Reg* %1435, i32 0, i32 0
  %1437 = bitcast %union.anon* %1436 to %struct.anon.2*
  %R12B.i201 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1437, i32 0, i32 0
  %1438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1439 = getelementptr inbounds %struct.GPR, %struct.GPR* %1438, i32 0, i32 27
  %1440 = getelementptr inbounds %struct.Reg, %struct.Reg* %1439, i32 0, i32 0
  %1441 = bitcast %union.anon* %1440 to %struct.anon.2*
  %R13B.i202 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1441, i32 0, i32 0
  %1442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1443 = getelementptr inbounds %struct.GPR, %struct.GPR* %1442, i32 0, i32 29
  %1444 = getelementptr inbounds %struct.Reg, %struct.Reg* %1443, i32 0, i32 0
  %1445 = bitcast %union.anon* %1444 to %struct.anon.2*
  %R14B.i203 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1445, i32 0, i32 0
  %1446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1447 = getelementptr inbounds %struct.GPR, %struct.GPR* %1446, i32 0, i32 31
  %1448 = getelementptr inbounds %struct.Reg, %struct.Reg* %1447, i32 0, i32 0
  %1449 = bitcast %union.anon* %1448 to %struct.anon.2*
  %R15B.i204 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1449, i32 0, i32 0
  %1450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1451 = getelementptr inbounds %struct.GPR, %struct.GPR* %1450, i32 0, i32 1
  %1452 = getelementptr inbounds %struct.Reg, %struct.Reg* %1451, i32 0, i32 0
  %AX.i205 = bitcast %union.anon* %1452 to i16*
  %1453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1454 = getelementptr inbounds %struct.GPR, %struct.GPR* %1453, i32 0, i32 3
  %1455 = getelementptr inbounds %struct.Reg, %struct.Reg* %1454, i32 0, i32 0
  %BX.i206 = bitcast %union.anon* %1455 to i16*
  %1456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1457 = getelementptr inbounds %struct.GPR, %struct.GPR* %1456, i32 0, i32 5
  %1458 = getelementptr inbounds %struct.Reg, %struct.Reg* %1457, i32 0, i32 0
  %CX.i207 = bitcast %union.anon* %1458 to i16*
  %1459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1460 = getelementptr inbounds %struct.GPR, %struct.GPR* %1459, i32 0, i32 7
  %1461 = getelementptr inbounds %struct.Reg, %struct.Reg* %1460, i32 0, i32 0
  %DX.i208 = bitcast %union.anon* %1461 to i16*
  %1462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1463 = getelementptr inbounds %struct.GPR, %struct.GPR* %1462, i32 0, i32 9
  %1464 = getelementptr inbounds %struct.Reg, %struct.Reg* %1463, i32 0, i32 0
  %SI.i209 = bitcast %union.anon* %1464 to i16*
  %1465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1466 = getelementptr inbounds %struct.GPR, %struct.GPR* %1465, i32 0, i32 11
  %1467 = getelementptr inbounds %struct.Reg, %struct.Reg* %1466, i32 0, i32 0
  %DI.i210 = bitcast %union.anon* %1467 to i16*
  %1468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1469 = getelementptr inbounds %struct.GPR, %struct.GPR* %1468, i32 0, i32 13
  %1470 = getelementptr inbounds %struct.Reg, %struct.Reg* %1469, i32 0, i32 0
  %SP.i211 = bitcast %union.anon* %1470 to i16*
  %1471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1472 = getelementptr inbounds %struct.GPR, %struct.GPR* %1471, i32 0, i32 15
  %1473 = getelementptr inbounds %struct.Reg, %struct.Reg* %1472, i32 0, i32 0
  %BP.i212 = bitcast %union.anon* %1473 to i16*
  %1474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1475 = getelementptr inbounds %struct.GPR, %struct.GPR* %1474, i32 0, i32 17
  %1476 = getelementptr inbounds %struct.Reg, %struct.Reg* %1475, i32 0, i32 0
  %R8W.i213 = bitcast %union.anon* %1476 to i16*
  %1477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1478 = getelementptr inbounds %struct.GPR, %struct.GPR* %1477, i32 0, i32 19
  %1479 = getelementptr inbounds %struct.Reg, %struct.Reg* %1478, i32 0, i32 0
  %R9W.i214 = bitcast %union.anon* %1479 to i16*
  %1480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1481 = getelementptr inbounds %struct.GPR, %struct.GPR* %1480, i32 0, i32 21
  %1482 = getelementptr inbounds %struct.Reg, %struct.Reg* %1481, i32 0, i32 0
  %R10W.i215 = bitcast %union.anon* %1482 to i16*
  %1483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1484 = getelementptr inbounds %struct.GPR, %struct.GPR* %1483, i32 0, i32 23
  %1485 = getelementptr inbounds %struct.Reg, %struct.Reg* %1484, i32 0, i32 0
  %R11W.i216 = bitcast %union.anon* %1485 to i16*
  %1486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1487 = getelementptr inbounds %struct.GPR, %struct.GPR* %1486, i32 0, i32 25
  %1488 = getelementptr inbounds %struct.Reg, %struct.Reg* %1487, i32 0, i32 0
  %R12W.i217 = bitcast %union.anon* %1488 to i16*
  %1489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1490 = getelementptr inbounds %struct.GPR, %struct.GPR* %1489, i32 0, i32 27
  %1491 = getelementptr inbounds %struct.Reg, %struct.Reg* %1490, i32 0, i32 0
  %R13W.i218 = bitcast %union.anon* %1491 to i16*
  %1492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1493 = getelementptr inbounds %struct.GPR, %struct.GPR* %1492, i32 0, i32 29
  %1494 = getelementptr inbounds %struct.Reg, %struct.Reg* %1493, i32 0, i32 0
  %R14W.i219 = bitcast %union.anon* %1494 to i16*
  %1495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1496 = getelementptr inbounds %struct.GPR, %struct.GPR* %1495, i32 0, i32 31
  %1497 = getelementptr inbounds %struct.Reg, %struct.Reg* %1496, i32 0, i32 0
  %R15W.i220 = bitcast %union.anon* %1497 to i16*
  %1498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1499 = getelementptr inbounds %struct.GPR, %struct.GPR* %1498, i32 0, i32 33
  %1500 = getelementptr inbounds %struct.Reg, %struct.Reg* %1499, i32 0, i32 0
  %IP.i221 = bitcast %union.anon* %1500 to i16*
  %1501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1502 = getelementptr inbounds %struct.GPR, %struct.GPR* %1501, i32 0, i32 1
  %1503 = getelementptr inbounds %struct.Reg, %struct.Reg* %1502, i32 0, i32 0
  %EAX.i222 = bitcast %union.anon* %1503 to i32*
  %1504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1505 = getelementptr inbounds %struct.GPR, %struct.GPR* %1504, i32 0, i32 3
  %1506 = getelementptr inbounds %struct.Reg, %struct.Reg* %1505, i32 0, i32 0
  %EBX.i223 = bitcast %union.anon* %1506 to i32*
  %1507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1508 = getelementptr inbounds %struct.GPR, %struct.GPR* %1507, i32 0, i32 5
  %1509 = getelementptr inbounds %struct.Reg, %struct.Reg* %1508, i32 0, i32 0
  %ECX.i224 = bitcast %union.anon* %1509 to i32*
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1511 = getelementptr inbounds %struct.GPR, %struct.GPR* %1510, i32 0, i32 7
  %1512 = getelementptr inbounds %struct.Reg, %struct.Reg* %1511, i32 0, i32 0
  %EDX.i225 = bitcast %union.anon* %1512 to i32*
  %1513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1514 = getelementptr inbounds %struct.GPR, %struct.GPR* %1513, i32 0, i32 9
  %1515 = getelementptr inbounds %struct.Reg, %struct.Reg* %1514, i32 0, i32 0
  %ESI.i226 = bitcast %union.anon* %1515 to i32*
  %1516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1517 = getelementptr inbounds %struct.GPR, %struct.GPR* %1516, i32 0, i32 11
  %1518 = getelementptr inbounds %struct.Reg, %struct.Reg* %1517, i32 0, i32 0
  %EDI.i227 = bitcast %union.anon* %1518 to i32*
  %1519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1520 = getelementptr inbounds %struct.GPR, %struct.GPR* %1519, i32 0, i32 13
  %1521 = getelementptr inbounds %struct.Reg, %struct.Reg* %1520, i32 0, i32 0
  %ESP.i228 = bitcast %union.anon* %1521 to i32*
  %1522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1523 = getelementptr inbounds %struct.GPR, %struct.GPR* %1522, i32 0, i32 15
  %1524 = getelementptr inbounds %struct.Reg, %struct.Reg* %1523, i32 0, i32 0
  %EBP.i229 = bitcast %union.anon* %1524 to i32*
  %1525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1526 = getelementptr inbounds %struct.GPR, %struct.GPR* %1525, i32 0, i32 33
  %1527 = getelementptr inbounds %struct.Reg, %struct.Reg* %1526, i32 0, i32 0
  %EIP.i230 = bitcast %union.anon* %1527 to i32*
  %1528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1529 = getelementptr inbounds %struct.GPR, %struct.GPR* %1528, i32 0, i32 17
  %1530 = getelementptr inbounds %struct.Reg, %struct.Reg* %1529, i32 0, i32 0
  %R8D.i231 = bitcast %union.anon* %1530 to i32*
  %1531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1532 = getelementptr inbounds %struct.GPR, %struct.GPR* %1531, i32 0, i32 19
  %1533 = getelementptr inbounds %struct.Reg, %struct.Reg* %1532, i32 0, i32 0
  %R9D.i232 = bitcast %union.anon* %1533 to i32*
  %1534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1535 = getelementptr inbounds %struct.GPR, %struct.GPR* %1534, i32 0, i32 21
  %1536 = getelementptr inbounds %struct.Reg, %struct.Reg* %1535, i32 0, i32 0
  %R10D.i233 = bitcast %union.anon* %1536 to i32*
  %1537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1538 = getelementptr inbounds %struct.GPR, %struct.GPR* %1537, i32 0, i32 23
  %1539 = getelementptr inbounds %struct.Reg, %struct.Reg* %1538, i32 0, i32 0
  %R11D.i234 = bitcast %union.anon* %1539 to i32*
  %1540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1541 = getelementptr inbounds %struct.GPR, %struct.GPR* %1540, i32 0, i32 25
  %1542 = getelementptr inbounds %struct.Reg, %struct.Reg* %1541, i32 0, i32 0
  %R12D.i235 = bitcast %union.anon* %1542 to i32*
  %1543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1544 = getelementptr inbounds %struct.GPR, %struct.GPR* %1543, i32 0, i32 27
  %1545 = getelementptr inbounds %struct.Reg, %struct.Reg* %1544, i32 0, i32 0
  %R13D.i236 = bitcast %union.anon* %1545 to i32*
  %1546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1547 = getelementptr inbounds %struct.GPR, %struct.GPR* %1546, i32 0, i32 29
  %1548 = getelementptr inbounds %struct.Reg, %struct.Reg* %1547, i32 0, i32 0
  %R14D.i237 = bitcast %union.anon* %1548 to i32*
  %1549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1550 = getelementptr inbounds %struct.GPR, %struct.GPR* %1549, i32 0, i32 31
  %1551 = getelementptr inbounds %struct.Reg, %struct.Reg* %1550, i32 0, i32 0
  %R15D.i238 = bitcast %union.anon* %1551 to i32*
  %1552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1553 = getelementptr inbounds %struct.GPR, %struct.GPR* %1552, i32 0, i32 1
  %1554 = getelementptr inbounds %struct.Reg, %struct.Reg* %1553, i32 0, i32 0
  %RAX.i239 = bitcast %union.anon* %1554 to i64*
  %1555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1556 = getelementptr inbounds %struct.GPR, %struct.GPR* %1555, i32 0, i32 3
  %1557 = getelementptr inbounds %struct.Reg, %struct.Reg* %1556, i32 0, i32 0
  %RBX.i240 = bitcast %union.anon* %1557 to i64*
  %1558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1559 = getelementptr inbounds %struct.GPR, %struct.GPR* %1558, i32 0, i32 5
  %1560 = getelementptr inbounds %struct.Reg, %struct.Reg* %1559, i32 0, i32 0
  %RCX.i241 = bitcast %union.anon* %1560 to i64*
  %1561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1562 = getelementptr inbounds %struct.GPR, %struct.GPR* %1561, i32 0, i32 7
  %1563 = getelementptr inbounds %struct.Reg, %struct.Reg* %1562, i32 0, i32 0
  %RDX.i242 = bitcast %union.anon* %1563 to i64*
  %1564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1565 = getelementptr inbounds %struct.GPR, %struct.GPR* %1564, i32 0, i32 9
  %1566 = getelementptr inbounds %struct.Reg, %struct.Reg* %1565, i32 0, i32 0
  %RSI.i243 = bitcast %union.anon* %1566 to i64*
  %1567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1568 = getelementptr inbounds %struct.GPR, %struct.GPR* %1567, i32 0, i32 11
  %1569 = getelementptr inbounds %struct.Reg, %struct.Reg* %1568, i32 0, i32 0
  %RDI.i244 = bitcast %union.anon* %1569 to i64*
  %1570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1571 = getelementptr inbounds %struct.GPR, %struct.GPR* %1570, i32 0, i32 13
  %1572 = getelementptr inbounds %struct.Reg, %struct.Reg* %1571, i32 0, i32 0
  %RSP.i245 = bitcast %union.anon* %1572 to i64*
  %1573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1574 = getelementptr inbounds %struct.GPR, %struct.GPR* %1573, i32 0, i32 15
  %1575 = getelementptr inbounds %struct.Reg, %struct.Reg* %1574, i32 0, i32 0
  %RBP.i246 = bitcast %union.anon* %1575 to i64*
  %1576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1577 = getelementptr inbounds %struct.GPR, %struct.GPR* %1576, i32 0, i32 17
  %1578 = getelementptr inbounds %struct.Reg, %struct.Reg* %1577, i32 0, i32 0
  %R8.i247 = bitcast %union.anon* %1578 to i64*
  %1579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1580 = getelementptr inbounds %struct.GPR, %struct.GPR* %1579, i32 0, i32 19
  %1581 = getelementptr inbounds %struct.Reg, %struct.Reg* %1580, i32 0, i32 0
  %R9.i248 = bitcast %union.anon* %1581 to i64*
  %1582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1583 = getelementptr inbounds %struct.GPR, %struct.GPR* %1582, i32 0, i32 21
  %1584 = getelementptr inbounds %struct.Reg, %struct.Reg* %1583, i32 0, i32 0
  %R10.i249 = bitcast %union.anon* %1584 to i64*
  %1585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1586 = getelementptr inbounds %struct.GPR, %struct.GPR* %1585, i32 0, i32 23
  %1587 = getelementptr inbounds %struct.Reg, %struct.Reg* %1586, i32 0, i32 0
  %R11.i250 = bitcast %union.anon* %1587 to i64*
  %1588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1589 = getelementptr inbounds %struct.GPR, %struct.GPR* %1588, i32 0, i32 25
  %1590 = getelementptr inbounds %struct.Reg, %struct.Reg* %1589, i32 0, i32 0
  %R12.i251 = bitcast %union.anon* %1590 to i64*
  %1591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1592 = getelementptr inbounds %struct.GPR, %struct.GPR* %1591, i32 0, i32 27
  %1593 = getelementptr inbounds %struct.Reg, %struct.Reg* %1592, i32 0, i32 0
  %R13.i252 = bitcast %union.anon* %1593 to i64*
  %1594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1595 = getelementptr inbounds %struct.GPR, %struct.GPR* %1594, i32 0, i32 29
  %1596 = getelementptr inbounds %struct.Reg, %struct.Reg* %1595, i32 0, i32 0
  %R14.i253 = bitcast %union.anon* %1596 to i64*
  %1597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1598 = getelementptr inbounds %struct.GPR, %struct.GPR* %1597, i32 0, i32 31
  %1599 = getelementptr inbounds %struct.Reg, %struct.Reg* %1598, i32 0, i32 0
  %R15.i254 = bitcast %union.anon* %1599 to i64*
  %1600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1601 = getelementptr inbounds %struct.GPR, %struct.GPR* %1600, i32 0, i32 33
  %1602 = getelementptr inbounds %struct.Reg, %struct.Reg* %1601, i32 0, i32 0
  %RIP.i255 = bitcast %union.anon* %1602 to i64*
  %1603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %1604 = getelementptr inbounds %struct.Segments, %struct.Segments* %1603, i32 0, i32 1
  %SS.i256 = bitcast %union.SegmentSelector* %1604 to i16*
  %1605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %1606 = getelementptr inbounds %struct.Segments, %struct.Segments* %1605, i32 0, i32 3
  %ES.i257 = bitcast %union.SegmentSelector* %1606 to i16*
  %1607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %1608 = getelementptr inbounds %struct.Segments, %struct.Segments* %1607, i32 0, i32 5
  %GS.i258 = bitcast %union.SegmentSelector* %1608 to i16*
  %1609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %1610 = getelementptr inbounds %struct.Segments, %struct.Segments* %1609, i32 0, i32 7
  %FS.i259 = bitcast %union.SegmentSelector* %1610 to i16*
  %1611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %1612 = getelementptr inbounds %struct.Segments, %struct.Segments* %1611, i32 0, i32 9
  %DS.i260 = bitcast %union.SegmentSelector* %1612 to i16*
  %1613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %1614 = getelementptr inbounds %struct.Segments, %struct.Segments* %1613, i32 0, i32 11
  %CS.i261 = bitcast %union.SegmentSelector* %1614 to i16*
  %1615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 5
  %1616 = getelementptr inbounds %struct.AddressSpace, %struct.AddressSpace* %1615, i32 0, i32 5
  %1617 = getelementptr inbounds %struct.Reg, %struct.Reg* %1616, i32 0, i32 0
  %GS_BASE.i262 = bitcast %union.anon* %1617 to i64*
  %1618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 5
  %1619 = getelementptr inbounds %struct.AddressSpace, %struct.AddressSpace* %1618, i32 0, i32 7
  %1620 = getelementptr inbounds %struct.Reg, %struct.Reg* %1619, i32 0, i32 0
  %FS_BASE.i263 = bitcast %union.anon* %1620 to i64*
  %1621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1622 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1621, i64 0, i64 0
  %YMM0.i264 = bitcast %union.VectorReg* %1622 to %"class.std::bitset"*
  %1623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1624 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1623, i64 0, i64 1
  %YMM1.i265 = bitcast %union.VectorReg* %1624 to %"class.std::bitset"*
  %1625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1626 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1625, i64 0, i64 2
  %YMM2.i266 = bitcast %union.VectorReg* %1626 to %"class.std::bitset"*
  %1627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1628 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1627, i64 0, i64 3
  %YMM3.i267 = bitcast %union.VectorReg* %1628 to %"class.std::bitset"*
  %1629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1630 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1629, i64 0, i64 4
  %YMM4.i268 = bitcast %union.VectorReg* %1630 to %"class.std::bitset"*
  %1631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1632 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1631, i64 0, i64 5
  %YMM5.i269 = bitcast %union.VectorReg* %1632 to %"class.std::bitset"*
  %1633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1634 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1633, i64 0, i64 6
  %YMM6.i270 = bitcast %union.VectorReg* %1634 to %"class.std::bitset"*
  %1635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1636 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1635, i64 0, i64 7
  %YMM7.i271 = bitcast %union.VectorReg* %1636 to %"class.std::bitset"*
  %1637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1638 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1637, i64 0, i64 8
  %YMM8.i272 = bitcast %union.VectorReg* %1638 to %"class.std::bitset"*
  %1639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1640 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1639, i64 0, i64 9
  %YMM9.i273 = bitcast %union.VectorReg* %1640 to %"class.std::bitset"*
  %1641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1642 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1641, i64 0, i64 10
  %YMM10.i274 = bitcast %union.VectorReg* %1642 to %"class.std::bitset"*
  %1643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1644 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1643, i64 0, i64 11
  %YMM11.i275 = bitcast %union.VectorReg* %1644 to %"class.std::bitset"*
  %1645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1646 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1645, i64 0, i64 12
  %YMM12.i276 = bitcast %union.VectorReg* %1646 to %"class.std::bitset"*
  %1647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1648 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1647, i64 0, i64 13
  %YMM13.i277 = bitcast %union.VectorReg* %1648 to %"class.std::bitset"*
  %1649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1650 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1649, i64 0, i64 14
  %YMM14.i278 = bitcast %union.VectorReg* %1650 to %"class.std::bitset"*
  %1651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1652 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1651, i64 0, i64 15
  %YMM15.i279 = bitcast %union.VectorReg* %1652 to %"class.std::bitset"*
  %1653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1654 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1653, i64 0, i64 0
  %XMM0.i280 = bitcast %union.VectorReg* %1654 to %union.vec128_t*
  %1655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1656 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1655, i64 0, i64 1
  %XMM1.i281 = bitcast %union.VectorReg* %1656 to %union.vec128_t*
  %1657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1658 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1657, i64 0, i64 2
  %XMM2.i282 = bitcast %union.VectorReg* %1658 to %union.vec128_t*
  %1659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1660 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1659, i64 0, i64 3
  %XMM3.i283 = bitcast %union.VectorReg* %1660 to %union.vec128_t*
  %1661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1662 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1661, i64 0, i64 4
  %XMM4.i284 = bitcast %union.VectorReg* %1662 to %union.vec128_t*
  %1663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1664 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1663, i64 0, i64 5
  %XMM5.i285 = bitcast %union.VectorReg* %1664 to %union.vec128_t*
  %1665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1666 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1665, i64 0, i64 6
  %XMM6.i286 = bitcast %union.VectorReg* %1666 to %union.vec128_t*
  %1667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1668 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1667, i64 0, i64 7
  %XMM7.i287 = bitcast %union.VectorReg* %1668 to %union.vec128_t*
  %1669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1670 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1669, i64 0, i64 8
  %XMM8.i288 = bitcast %union.VectorReg* %1670 to %union.vec128_t*
  %1671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1672 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1671, i64 0, i64 9
  %XMM9.i289 = bitcast %union.VectorReg* %1672 to %union.vec128_t*
  %1673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1674 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1673, i64 0, i64 10
  %XMM10.i290 = bitcast %union.VectorReg* %1674 to %union.vec128_t*
  %1675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1676 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1675, i64 0, i64 11
  %XMM11.i291 = bitcast %union.VectorReg* %1676 to %union.vec128_t*
  %1677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1678 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1677, i64 0, i64 12
  %XMM12.i292 = bitcast %union.VectorReg* %1678 to %union.vec128_t*
  %1679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1680 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1679, i64 0, i64 13
  %XMM13.i293 = bitcast %union.VectorReg* %1680 to %union.vec128_t*
  %1681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1682 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1681, i64 0, i64 14
  %XMM14.i294 = bitcast %union.VectorReg* %1682 to %union.vec128_t*
  %1683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1684 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1683, i64 0, i64 15
  %XMM15.i295 = bitcast %union.VectorReg* %1684 to %union.vec128_t*
  %1685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %1686 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %1685, i32 0, i32 0
  %1687 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %1686, i64 0, i64 0
  %ST0.i296 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %1687, i32 0, i32 1
  %1688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %1689 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %1688, i32 0, i32 0
  %1690 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %1689, i64 0, i64 1
  %ST1.i297 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %1690, i32 0, i32 1
  %1691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %1692 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %1691, i32 0, i32 0
  %1693 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %1692, i64 0, i64 2
  %ST2.i298 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %1693, i32 0, i32 1
  %1694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %1695 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %1694, i32 0, i32 0
  %1696 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %1695, i64 0, i64 3
  %ST3.i299 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %1696, i32 0, i32 1
  %1697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %1698 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %1697, i32 0, i32 0
  %1699 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %1698, i64 0, i64 4
  %ST4.i300 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %1699, i32 0, i32 1
  %1700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %1701 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %1700, i32 0, i32 0
  %1702 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %1701, i64 0, i64 5
  %ST5.i301 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %1702, i32 0, i32 1
  %1703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %1704 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %1703, i32 0, i32 0
  %1705 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %1704, i64 0, i64 6
  %ST6.i302 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %1705, i32 0, i32 1
  %1706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %1707 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %1706, i32 0, i32 0
  %1708 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %1707, i64 0, i64 7
  %ST7.i303 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %1708, i32 0, i32 1
  %1709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %1710 = getelementptr inbounds %struct.MMX, %struct.MMX* %1709, i32 0, i32 0
  %1711 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %1710, i64 0, i64 0
  %1712 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %1711, i32 0, i32 1
  %1713 = bitcast %union.vec64_t* %1712 to %struct.uint64v1_t*
  %1714 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %1713, i32 0, i32 0
  %MM0.i304 = getelementptr inbounds [1 x i64], [1 x i64]* %1714, i64 0, i64 0
  %1715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %1716 = getelementptr inbounds %struct.MMX, %struct.MMX* %1715, i32 0, i32 0
  %1717 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %1716, i64 0, i64 1
  %1718 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %1717, i32 0, i32 1
  %1719 = bitcast %union.vec64_t* %1718 to %struct.uint64v1_t*
  %1720 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %1719, i32 0, i32 0
  %MM1.i305 = getelementptr inbounds [1 x i64], [1 x i64]* %1720, i64 0, i64 0
  %1721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %1722 = getelementptr inbounds %struct.MMX, %struct.MMX* %1721, i32 0, i32 0
  %1723 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %1722, i64 0, i64 2
  %1724 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %1723, i32 0, i32 1
  %1725 = bitcast %union.vec64_t* %1724 to %struct.uint64v1_t*
  %1726 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %1725, i32 0, i32 0
  %MM2.i306 = getelementptr inbounds [1 x i64], [1 x i64]* %1726, i64 0, i64 0
  %1727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %1728 = getelementptr inbounds %struct.MMX, %struct.MMX* %1727, i32 0, i32 0
  %1729 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %1728, i64 0, i64 3
  %1730 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %1729, i32 0, i32 1
  %1731 = bitcast %union.vec64_t* %1730 to %struct.uint64v1_t*
  %1732 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %1731, i32 0, i32 0
  %MM3.i307 = getelementptr inbounds [1 x i64], [1 x i64]* %1732, i64 0, i64 0
  %1733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %1734 = getelementptr inbounds %struct.MMX, %struct.MMX* %1733, i32 0, i32 0
  %1735 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %1734, i64 0, i64 4
  %1736 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %1735, i32 0, i32 1
  %1737 = bitcast %union.vec64_t* %1736 to %struct.uint64v1_t*
  %1738 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %1737, i32 0, i32 0
  %MM4.i308 = getelementptr inbounds [1 x i64], [1 x i64]* %1738, i64 0, i64 0
  %1739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %1740 = getelementptr inbounds %struct.MMX, %struct.MMX* %1739, i32 0, i32 0
  %1741 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %1740, i64 0, i64 5
  %1742 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %1741, i32 0, i32 1
  %1743 = bitcast %union.vec64_t* %1742 to %struct.uint64v1_t*
  %1744 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %1743, i32 0, i32 0
  %MM5.i309 = getelementptr inbounds [1 x i64], [1 x i64]* %1744, i64 0, i64 0
  %1745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %1746 = getelementptr inbounds %struct.MMX, %struct.MMX* %1745, i32 0, i32 0
  %1747 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %1746, i64 0, i64 6
  %1748 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %1747, i32 0, i32 1
  %1749 = bitcast %union.vec64_t* %1748 to %struct.uint64v1_t*
  %1750 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %1749, i32 0, i32 0
  %MM6.i310 = getelementptr inbounds [1 x i64], [1 x i64]* %1750, i64 0, i64 0
  %1751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %1752 = getelementptr inbounds %struct.MMX, %struct.MMX* %1751, i32 0, i32 0
  %1753 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %1752, i64 0, i64 7
  %1754 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %1753, i32 0, i32 1
  %1755 = bitcast %union.vec64_t* %1754 to %struct.uint64v1_t*
  %1756 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %1755, i32 0, i32 0
  %MM7.i311 = getelementptr inbounds [1 x i64], [1 x i64]* %1756, i64 0, i64 0
  %1757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %AF.i312 = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %1757, i32 0, i32 5
  %1758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %CF.i313 = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %1758, i32 0, i32 1
  %1759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %DF.i314 = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %1759, i32 0, i32 11
  %1760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %OF.i315 = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %1760, i32 0, i32 13
  %1761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %PF.i316 = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %1761, i32 0, i32 3
  %1762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %SF.i317 = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %1762, i32 0, i32 9
  %1763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %ZF.i318 = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %1763, i32 0, i32 7
  store i64* @DR0, i64** %_DR0.i170, align 8, !noalias !2457
  store i64* @DR1, i64** %_DR1.i171, align 8, !noalias !2457
  store i64* @DR2, i64** %_DR2.i172, align 8, !noalias !2457
  store i64* @DR3, i64** %_DR3.i173, align 8, !noalias !2457
  store i64* @DR4, i64** %_DR4.i174, align 8, !noalias !2457
  store i64* @DR5, i64** %_DR5.i175, align 8, !noalias !2457
  store i64* @DR6, i64** %_DR6.i176, align 8, !noalias !2457
  store i64* @DR7, i64** %_DR7.i177, align 8, !noalias !2457
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR0, i32 0, i32 0), i64** %CR0.i178, align 8, !noalias !2457
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR1, i32 0, i32 0), i64** %CR1.i179, align 8, !noalias !2457
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR2, i32 0, i32 0), i64** %CR2.i180, align 8, !noalias !2457
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR3, i32 0, i32 0), i64** %CR3.i181, align 8, !noalias !2457
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR4, i32 0, i32 0), i64** %CR4.i182, align 8, !noalias !2457
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR8, i32 0, i32 0), i64** %CR8.i183, align 8, !noalias !2457
  %1764 = bitcast %"class.std::bitset"* %YMM0.i264 to double*
  %1765 = load double, double* %1764, !alias.scope !2461, !noalias !2462
  %1766 = load i64, i64* %RSP.i245, !alias.scope !2461, !noalias !2462
  %1767 = load %struct.Memory*, %struct.Memory** %MEMORY.i169, !noalias !2457
  %1768 = inttoptr i64 %1766 to i64*
  %1769 = load i64, i64* %1768
  store i64 %1769, i64* %PC.i184, !alias.scope !2461, !noalias !2462
  %1770 = add i64 %1766, 8
  store i64 %1770, i64* %RSP.i245, !alias.scope !2461, !noalias !2462
  %1771 = call double @sqrt(double %1765)
  store %"class.std::bitset" zeroinitializer, %"class.std::bitset"* %YMM0.i264, !alias.scope !2461, !noalias !2462
  %1772 = bitcast %"class.std::bitset"* %YMM0.i264 to double*
  store double %1771, double* %1772, !alias.scope !2461, !noalias !2462
  %1773 = load %struct.Memory*, %struct.Memory** %MEMORY.i169, !noalias !2457
  %1774 = bitcast %struct.State** %state.i160 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1774)
  %1775 = bitcast i64* %curr_pc.i161 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1775)
  %1776 = bitcast %struct.Memory** %memory.i162 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1776)
  call void @llvm.lifetime.end(i64 1, i8* %BRANCH_TAKEN.i163)
  %1777 = bitcast i64* %SS_BASE.i164 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1777)
  %1778 = bitcast i64* %ES_BASE.i165 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1778)
  %1779 = bitcast i64* %DS_BASE.i166 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1779)
  %1780 = bitcast i64* %CS_BASE.i167 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1780)
  %1781 = bitcast %struct.State** %STATE.i168 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1781)
  %1782 = bitcast %struct.Memory** %MEMORY.i169 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1782)
  %1783 = bitcast i64** %_DR0.i170 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1783)
  %1784 = bitcast i64** %_DR1.i171 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1784)
  %1785 = bitcast i64** %_DR2.i172 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1785)
  %1786 = bitcast i64** %_DR3.i173 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1786)
  %1787 = bitcast i64** %_DR4.i174 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1787)
  %1788 = bitcast i64** %_DR5.i175 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1788)
  %1789 = bitcast i64** %_DR6.i176 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1789)
  %1790 = bitcast i64** %_DR7.i177 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1790)
  %1791 = bitcast i64** %CR0.i178 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1791)
  %1792 = bitcast i64** %CR1.i179 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1792)
  %1793 = bitcast i64** %CR2.i180 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1793)
  %1794 = bitcast i64** %CR3.i181 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1794)
  %1795 = bitcast i64** %CR4.i182 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1795)
  %1796 = bitcast i64** %CR8.i183 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1796)
  %1797 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1798 = load i64, i64* %RBP
  %1799 = sub i64 %1798, 296
  %1800 = load i64, i64* %PC
  %1801 = add i64 %1800, 8
  store i64 %1801, i64* %PC
  %1802 = inttoptr i64 %1799 to double*
  %1803 = load double, double* %1802
  %1804 = bitcast i8* %1797 to double*
  store double %1803, double* %1804, align 1, !tbaa !2452
  %1805 = getelementptr inbounds i8, i8* %1797, i64 8
  %1806 = bitcast i8* %1805 to double*
  store double 0.000000e+00, double* %1806, align 1, !tbaa !2452
  %1807 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1808 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1809 = bitcast %union.vec128_t* %XMM0 to i8*
  %1810 = load i64, i64* %PC
  %1811 = add i64 %1810, 4
  store i64 %1811, i64* %PC
  %1812 = bitcast i8* %1808 to double*
  %1813 = load double, double* %1812, align 1
  %1814 = getelementptr inbounds i8, i8* %1808, i64 8
  %1815 = bitcast i8* %1814 to i64*
  %1816 = load i64, i64* %1815, align 1
  %1817 = bitcast i8* %1809 to double*
  %1818 = load double, double* %1817, align 1
  %1819 = fdiv double %1813, %1818
  %1820 = bitcast i8* %1807 to double*
  store double %1819, double* %1820, align 1, !tbaa !2452
  %1821 = getelementptr inbounds i8, i8* %1807, i64 8
  %1822 = bitcast i8* %1821 to i64*
  store i64 %1816, i64* %1822, align 1, !tbaa !2452
  %1823 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1824 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1825 = load i64, i64* %RBP
  %1826 = sub i64 %1825, 32
  %1827 = load i64, i64* %PC
  %1828 = add i64 %1827, 5
  store i64 %1828, i64* %PC
  %1829 = bitcast i8* %1824 to double*
  %1830 = load double, double* %1829, align 1
  %1831 = getelementptr inbounds i8, i8* %1824, i64 8
  %1832 = bitcast i8* %1831 to i64*
  %1833 = load i64, i64* %1832, align 1
  %1834 = inttoptr i64 %1826 to double*
  %1835 = load double, double* %1834
  %1836 = fadd double %1830, %1835
  %1837 = bitcast i8* %1823 to double*
  store double %1836, double* %1837, align 1, !tbaa !2452
  %1838 = getelementptr inbounds i8, i8* %1823, i64 8
  %1839 = bitcast i8* %1838 to i64*
  store i64 %1833, i64* %1839, align 1, !tbaa !2452
  %1840 = load i64, i64* %RBP
  %1841 = sub i64 %1840, 32
  %1842 = bitcast %union.vec128_t* %XMM1 to i8*
  %1843 = load i64, i64* %PC
  %1844 = add i64 %1843, 5
  store i64 %1844, i64* %PC
  %1845 = bitcast i8* %1842 to double*
  %1846 = load double, double* %1845, align 1
  %1847 = inttoptr i64 %1841 to double*
  store double %1846, double* %1847
  %1848 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1849 = load i64, i64* %RBP
  %1850 = sub i64 %1849, 248
  %1851 = load i64, i64* %PC
  %1852 = add i64 %1851, 8
  store i64 %1852, i64* %PC
  %1853 = inttoptr i64 %1850 to double*
  %1854 = load double, double* %1853
  %1855 = bitcast i8* %1848 to double*
  store double %1854, double* %1855, align 1, !tbaa !2452
  %1856 = getelementptr inbounds i8, i8* %1848, i64 8
  %1857 = bitcast i8* %1856 to double*
  store double 0.000000e+00, double* %1857, align 1, !tbaa !2452
  %1858 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1859 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1860 = load i64, i64* %RBP
  %1861 = sub i64 %1860, 248
  %1862 = load i64, i64* %PC
  %1863 = add i64 %1862, 8
  store i64 %1863, i64* %PC
  %1864 = bitcast i8* %1859 to double*
  %1865 = load double, double* %1864, align 1
  %1866 = getelementptr inbounds i8, i8* %1859, i64 8
  %1867 = bitcast i8* %1866 to i64*
  %1868 = load i64, i64* %1867, align 1
  %1869 = inttoptr i64 %1861 to double*
  %1870 = load double, double* %1869
  %1871 = fmul double %1865, %1870
  %1872 = bitcast i8* %1858 to double*
  store double %1871, double* %1872, align 1, !tbaa !2452
  %1873 = getelementptr inbounds i8, i8* %1858, i64 8
  %1874 = bitcast i8* %1873 to i64*
  store i64 %1868, i64* %1874, align 1, !tbaa !2452
  %1875 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1876 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1877 = load i64, i64* %RBP
  %1878 = sub i64 %1877, 248
  %1879 = load i64, i64* %PC
  %1880 = add i64 %1879, 8
  store i64 %1880, i64* %PC
  %1881 = bitcast i8* %1876 to double*
  %1882 = load double, double* %1881, align 1
  %1883 = getelementptr inbounds i8, i8* %1876, i64 8
  %1884 = bitcast i8* %1883 to i64*
  %1885 = load i64, i64* %1884, align 1
  %1886 = inttoptr i64 %1878 to double*
  %1887 = load double, double* %1886
  %1888 = fmul double %1882, %1887
  %1889 = bitcast i8* %1875 to double*
  store double %1888, double* %1889, align 1, !tbaa !2452
  %1890 = getelementptr inbounds i8, i8* %1875, i64 8
  %1891 = bitcast i8* %1890 to i64*
  store i64 %1885, i64* %1891, align 1, !tbaa !2452
  %1892 = load i64, i64* %RBP
  %1893 = sub i64 %1892, 256
  %1894 = bitcast %union.vec128_t* %XMM0 to i8*
  %1895 = load i64, i64* %PC
  %1896 = add i64 %1895, 8
  store i64 %1896, i64* %PC
  %1897 = bitcast i8* %1894 to double*
  %1898 = load double, double* %1897, align 1
  %1899 = inttoptr i64 %1893 to double*
  store double %1898, double* %1899
  %1900 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1901 = load i64, i64* %RBP
  %1902 = sub i64 %1901, 248
  %1903 = load i64, i64* %PC
  %1904 = add i64 %1903, 8
  store i64 %1904, i64* %PC
  %1905 = inttoptr i64 %1902 to double*
  %1906 = load double, double* %1905
  %1907 = bitcast i8* %1900 to double*
  store double %1906, double* %1907, align 1, !tbaa !2452
  %1908 = getelementptr inbounds i8, i8* %1900, i64 8
  %1909 = bitcast i8* %1908 to double*
  store double 0.000000e+00, double* %1909, align 1, !tbaa !2452
  %1910 = load i64, i64* %PC
  %1911 = sub i64 %1910, 825
  %1912 = load i64, i64* %PC
  %1913 = add i64 %1912, 5
  %1914 = load i64, i64* %PC
  %1915 = add i64 %1914, 5
  store i64 %1915, i64* %PC
  %1916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1917 = load i64, i64* %1916, align 8, !tbaa !2428
  %1918 = add i64 %1917, -8
  %1919 = inttoptr i64 %1918 to i64*
  store i64 %1913, i64* %1919
  store i64 %1918, i64* %1916, align 8, !tbaa !2428
  %1920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1911, i64* %1920, align 8, !tbaa !2428
  %1921 = load i64, i64* %PC
  %1922 = bitcast %struct.State** %state.i1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1922)
  %1923 = bitcast i64* %curr_pc.i2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1923)
  %1924 = bitcast %struct.Memory** %memory.i3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1924)
  call void @llvm.lifetime.start(i64 1, i8* %BRANCH_TAKEN.i4)
  %1925 = bitcast i64* %SS_BASE.i5 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1925)
  %1926 = bitcast i64* %ES_BASE.i6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1926)
  %1927 = bitcast i64* %DS_BASE.i7 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1927)
  %1928 = bitcast i64* %CS_BASE.i8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1928)
  %1929 = bitcast %struct.State** %STATE.i9 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1929)
  %1930 = bitcast %struct.Memory** %MEMORY.i10 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1930)
  %1931 = bitcast i64** %_DR0.i11 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1931)
  %1932 = bitcast i64** %_DR1.i12 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1932)
  %1933 = bitcast i64** %_DR2.i13 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1933)
  %1934 = bitcast i64** %_DR3.i14 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1934)
  %1935 = bitcast i64** %_DR4.i15 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1935)
  %1936 = bitcast i64** %_DR5.i16 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1936)
  %1937 = bitcast i64** %_DR6.i17 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1937)
  %1938 = bitcast i64** %_DR7.i18 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1938)
  %1939 = bitcast i64** %CR0.i19 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1939)
  %1940 = bitcast i64** %CR1.i20 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1940)
  %1941 = bitcast i64** %CR2.i21 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1941)
  %1942 = bitcast i64** %CR3.i22 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1942)
  %1943 = bitcast i64** %CR4.i23 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1943)
  %1944 = bitcast i64** %CR8.i24 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1944)
  store %struct.State* %0, %struct.State** %state.i1, align 8, !noalias !2463
  store i64 %1921, i64* %curr_pc.i2, align 8, !noalias !2463
  store %struct.Memory* %1773, %struct.Memory** %memory.i3, align 8, !noalias !2463
  store i8 0, i8* %BRANCH_TAKEN.i4, align 1, !noalias !2463
  store i64 0, i64* %SS_BASE.i5, align 8, !noalias !2463
  store i64 0, i64* %ES_BASE.i6, align 8, !noalias !2463
  store i64 0, i64* %DS_BASE.i7, align 8, !noalias !2463
  store i64 0, i64* %CS_BASE.i8, align 8, !noalias !2463
  store %struct.State* %0, %struct.State** %STATE.i9, align 8, !noalias !2463
  store %struct.Memory* %1773, %struct.Memory** %MEMORY.i10, align 8, !noalias !2463
  %1945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1946 = getelementptr inbounds %struct.GPR, %struct.GPR* %1945, i32 0, i32 33
  %1947 = getelementptr inbounds %struct.Reg, %struct.Reg* %1946, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %1947 to i64*
  store i64 %1921, i64* %PC.i25, align 8, !alias.scope !2467, !noalias !2468
  %1948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1949 = getelementptr inbounds %struct.GPR, %struct.GPR* %1948, i32 0, i32 1
  %1950 = getelementptr inbounds %struct.Reg, %struct.Reg* %1949, i32 0, i32 0
  %1951 = bitcast %union.anon* %1950 to %struct.anon.2*
  %AH.i26 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1951, i32 0, i32 1
  %1952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1953 = getelementptr inbounds %struct.GPR, %struct.GPR* %1952, i32 0, i32 3
  %1954 = getelementptr inbounds %struct.Reg, %struct.Reg* %1953, i32 0, i32 0
  %1955 = bitcast %union.anon* %1954 to %struct.anon.2*
  %BH.i27 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1955, i32 0, i32 1
  %1956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1957 = getelementptr inbounds %struct.GPR, %struct.GPR* %1956, i32 0, i32 5
  %1958 = getelementptr inbounds %struct.Reg, %struct.Reg* %1957, i32 0, i32 0
  %1959 = bitcast %union.anon* %1958 to %struct.anon.2*
  %CH.i28 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1959, i32 0, i32 1
  %1960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1961 = getelementptr inbounds %struct.GPR, %struct.GPR* %1960, i32 0, i32 7
  %1962 = getelementptr inbounds %struct.Reg, %struct.Reg* %1961, i32 0, i32 0
  %1963 = bitcast %union.anon* %1962 to %struct.anon.2*
  %DH.i29 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1963, i32 0, i32 1
  %1964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1965 = getelementptr inbounds %struct.GPR, %struct.GPR* %1964, i32 0, i32 1
  %1966 = getelementptr inbounds %struct.Reg, %struct.Reg* %1965, i32 0, i32 0
  %1967 = bitcast %union.anon* %1966 to %struct.anon.2*
  %AL.i30 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1967, i32 0, i32 0
  %1968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1969 = getelementptr inbounds %struct.GPR, %struct.GPR* %1968, i32 0, i32 3
  %1970 = getelementptr inbounds %struct.Reg, %struct.Reg* %1969, i32 0, i32 0
  %1971 = bitcast %union.anon* %1970 to %struct.anon.2*
  %BL.i31 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1971, i32 0, i32 0
  %1972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1973 = getelementptr inbounds %struct.GPR, %struct.GPR* %1972, i32 0, i32 5
  %1974 = getelementptr inbounds %struct.Reg, %struct.Reg* %1973, i32 0, i32 0
  %1975 = bitcast %union.anon* %1974 to %struct.anon.2*
  %CL.i32 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1975, i32 0, i32 0
  %1976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1977 = getelementptr inbounds %struct.GPR, %struct.GPR* %1976, i32 0, i32 7
  %1978 = getelementptr inbounds %struct.Reg, %struct.Reg* %1977, i32 0, i32 0
  %1979 = bitcast %union.anon* %1978 to %struct.anon.2*
  %DL.i33 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1979, i32 0, i32 0
  %1980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1981 = getelementptr inbounds %struct.GPR, %struct.GPR* %1980, i32 0, i32 9
  %1982 = getelementptr inbounds %struct.Reg, %struct.Reg* %1981, i32 0, i32 0
  %1983 = bitcast %union.anon* %1982 to %struct.anon.2*
  %SIL.i34 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1983, i32 0, i32 0
  %1984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1985 = getelementptr inbounds %struct.GPR, %struct.GPR* %1984, i32 0, i32 11
  %1986 = getelementptr inbounds %struct.Reg, %struct.Reg* %1985, i32 0, i32 0
  %1987 = bitcast %union.anon* %1986 to %struct.anon.2*
  %DIL.i35 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1987, i32 0, i32 0
  %1988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1989 = getelementptr inbounds %struct.GPR, %struct.GPR* %1988, i32 0, i32 13
  %1990 = getelementptr inbounds %struct.Reg, %struct.Reg* %1989, i32 0, i32 0
  %1991 = bitcast %union.anon* %1990 to %struct.anon.2*
  %SPL.i36 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1991, i32 0, i32 0
  %1992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1993 = getelementptr inbounds %struct.GPR, %struct.GPR* %1992, i32 0, i32 15
  %1994 = getelementptr inbounds %struct.Reg, %struct.Reg* %1993, i32 0, i32 0
  %1995 = bitcast %union.anon* %1994 to %struct.anon.2*
  %BPL.i37 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1995, i32 0, i32 0
  %1996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1997 = getelementptr inbounds %struct.GPR, %struct.GPR* %1996, i32 0, i32 17
  %1998 = getelementptr inbounds %struct.Reg, %struct.Reg* %1997, i32 0, i32 0
  %1999 = bitcast %union.anon* %1998 to %struct.anon.2*
  %R8B.i38 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1999, i32 0, i32 0
  %2000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2001 = getelementptr inbounds %struct.GPR, %struct.GPR* %2000, i32 0, i32 19
  %2002 = getelementptr inbounds %struct.Reg, %struct.Reg* %2001, i32 0, i32 0
  %2003 = bitcast %union.anon* %2002 to %struct.anon.2*
  %R9B.i39 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2003, i32 0, i32 0
  %2004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2005 = getelementptr inbounds %struct.GPR, %struct.GPR* %2004, i32 0, i32 21
  %2006 = getelementptr inbounds %struct.Reg, %struct.Reg* %2005, i32 0, i32 0
  %2007 = bitcast %union.anon* %2006 to %struct.anon.2*
  %R10B.i40 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2007, i32 0, i32 0
  %2008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2009 = getelementptr inbounds %struct.GPR, %struct.GPR* %2008, i32 0, i32 23
  %2010 = getelementptr inbounds %struct.Reg, %struct.Reg* %2009, i32 0, i32 0
  %2011 = bitcast %union.anon* %2010 to %struct.anon.2*
  %R11B.i41 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2011, i32 0, i32 0
  %2012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2013 = getelementptr inbounds %struct.GPR, %struct.GPR* %2012, i32 0, i32 25
  %2014 = getelementptr inbounds %struct.Reg, %struct.Reg* %2013, i32 0, i32 0
  %2015 = bitcast %union.anon* %2014 to %struct.anon.2*
  %R12B.i42 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2015, i32 0, i32 0
  %2016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2017 = getelementptr inbounds %struct.GPR, %struct.GPR* %2016, i32 0, i32 27
  %2018 = getelementptr inbounds %struct.Reg, %struct.Reg* %2017, i32 0, i32 0
  %2019 = bitcast %union.anon* %2018 to %struct.anon.2*
  %R13B.i43 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2019, i32 0, i32 0
  %2020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2021 = getelementptr inbounds %struct.GPR, %struct.GPR* %2020, i32 0, i32 29
  %2022 = getelementptr inbounds %struct.Reg, %struct.Reg* %2021, i32 0, i32 0
  %2023 = bitcast %union.anon* %2022 to %struct.anon.2*
  %R14B.i44 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2023, i32 0, i32 0
  %2024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2025 = getelementptr inbounds %struct.GPR, %struct.GPR* %2024, i32 0, i32 31
  %2026 = getelementptr inbounds %struct.Reg, %struct.Reg* %2025, i32 0, i32 0
  %2027 = bitcast %union.anon* %2026 to %struct.anon.2*
  %R15B.i45 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2027, i32 0, i32 0
  %2028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2029 = getelementptr inbounds %struct.GPR, %struct.GPR* %2028, i32 0, i32 1
  %2030 = getelementptr inbounds %struct.Reg, %struct.Reg* %2029, i32 0, i32 0
  %AX.i46 = bitcast %union.anon* %2030 to i16*
  %2031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2032 = getelementptr inbounds %struct.GPR, %struct.GPR* %2031, i32 0, i32 3
  %2033 = getelementptr inbounds %struct.Reg, %struct.Reg* %2032, i32 0, i32 0
  %BX.i47 = bitcast %union.anon* %2033 to i16*
  %2034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2035 = getelementptr inbounds %struct.GPR, %struct.GPR* %2034, i32 0, i32 5
  %2036 = getelementptr inbounds %struct.Reg, %struct.Reg* %2035, i32 0, i32 0
  %CX.i48 = bitcast %union.anon* %2036 to i16*
  %2037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2038 = getelementptr inbounds %struct.GPR, %struct.GPR* %2037, i32 0, i32 7
  %2039 = getelementptr inbounds %struct.Reg, %struct.Reg* %2038, i32 0, i32 0
  %DX.i49 = bitcast %union.anon* %2039 to i16*
  %2040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2041 = getelementptr inbounds %struct.GPR, %struct.GPR* %2040, i32 0, i32 9
  %2042 = getelementptr inbounds %struct.Reg, %struct.Reg* %2041, i32 0, i32 0
  %SI.i50 = bitcast %union.anon* %2042 to i16*
  %2043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2044 = getelementptr inbounds %struct.GPR, %struct.GPR* %2043, i32 0, i32 11
  %2045 = getelementptr inbounds %struct.Reg, %struct.Reg* %2044, i32 0, i32 0
  %DI.i51 = bitcast %union.anon* %2045 to i16*
  %2046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2047 = getelementptr inbounds %struct.GPR, %struct.GPR* %2046, i32 0, i32 13
  %2048 = getelementptr inbounds %struct.Reg, %struct.Reg* %2047, i32 0, i32 0
  %SP.i52 = bitcast %union.anon* %2048 to i16*
  %2049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2050 = getelementptr inbounds %struct.GPR, %struct.GPR* %2049, i32 0, i32 15
  %2051 = getelementptr inbounds %struct.Reg, %struct.Reg* %2050, i32 0, i32 0
  %BP.i53 = bitcast %union.anon* %2051 to i16*
  %2052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2053 = getelementptr inbounds %struct.GPR, %struct.GPR* %2052, i32 0, i32 17
  %2054 = getelementptr inbounds %struct.Reg, %struct.Reg* %2053, i32 0, i32 0
  %R8W.i54 = bitcast %union.anon* %2054 to i16*
  %2055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2056 = getelementptr inbounds %struct.GPR, %struct.GPR* %2055, i32 0, i32 19
  %2057 = getelementptr inbounds %struct.Reg, %struct.Reg* %2056, i32 0, i32 0
  %R9W.i55 = bitcast %union.anon* %2057 to i16*
  %2058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2059 = getelementptr inbounds %struct.GPR, %struct.GPR* %2058, i32 0, i32 21
  %2060 = getelementptr inbounds %struct.Reg, %struct.Reg* %2059, i32 0, i32 0
  %R10W.i56 = bitcast %union.anon* %2060 to i16*
  %2061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2062 = getelementptr inbounds %struct.GPR, %struct.GPR* %2061, i32 0, i32 23
  %2063 = getelementptr inbounds %struct.Reg, %struct.Reg* %2062, i32 0, i32 0
  %R11W.i57 = bitcast %union.anon* %2063 to i16*
  %2064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2065 = getelementptr inbounds %struct.GPR, %struct.GPR* %2064, i32 0, i32 25
  %2066 = getelementptr inbounds %struct.Reg, %struct.Reg* %2065, i32 0, i32 0
  %R12W.i58 = bitcast %union.anon* %2066 to i16*
  %2067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2068 = getelementptr inbounds %struct.GPR, %struct.GPR* %2067, i32 0, i32 27
  %2069 = getelementptr inbounds %struct.Reg, %struct.Reg* %2068, i32 0, i32 0
  %R13W.i59 = bitcast %union.anon* %2069 to i16*
  %2070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2071 = getelementptr inbounds %struct.GPR, %struct.GPR* %2070, i32 0, i32 29
  %2072 = getelementptr inbounds %struct.Reg, %struct.Reg* %2071, i32 0, i32 0
  %R14W.i60 = bitcast %union.anon* %2072 to i16*
  %2073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2074 = getelementptr inbounds %struct.GPR, %struct.GPR* %2073, i32 0, i32 31
  %2075 = getelementptr inbounds %struct.Reg, %struct.Reg* %2074, i32 0, i32 0
  %R15W.i61 = bitcast %union.anon* %2075 to i16*
  %2076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2077 = getelementptr inbounds %struct.GPR, %struct.GPR* %2076, i32 0, i32 33
  %2078 = getelementptr inbounds %struct.Reg, %struct.Reg* %2077, i32 0, i32 0
  %IP.i62 = bitcast %union.anon* %2078 to i16*
  %2079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2080 = getelementptr inbounds %struct.GPR, %struct.GPR* %2079, i32 0, i32 1
  %2081 = getelementptr inbounds %struct.Reg, %struct.Reg* %2080, i32 0, i32 0
  %EAX.i63 = bitcast %union.anon* %2081 to i32*
  %2082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2083 = getelementptr inbounds %struct.GPR, %struct.GPR* %2082, i32 0, i32 3
  %2084 = getelementptr inbounds %struct.Reg, %struct.Reg* %2083, i32 0, i32 0
  %EBX.i64 = bitcast %union.anon* %2084 to i32*
  %2085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2086 = getelementptr inbounds %struct.GPR, %struct.GPR* %2085, i32 0, i32 5
  %2087 = getelementptr inbounds %struct.Reg, %struct.Reg* %2086, i32 0, i32 0
  %ECX.i65 = bitcast %union.anon* %2087 to i32*
  %2088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2089 = getelementptr inbounds %struct.GPR, %struct.GPR* %2088, i32 0, i32 7
  %2090 = getelementptr inbounds %struct.Reg, %struct.Reg* %2089, i32 0, i32 0
  %EDX.i66 = bitcast %union.anon* %2090 to i32*
  %2091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2092 = getelementptr inbounds %struct.GPR, %struct.GPR* %2091, i32 0, i32 9
  %2093 = getelementptr inbounds %struct.Reg, %struct.Reg* %2092, i32 0, i32 0
  %ESI.i67 = bitcast %union.anon* %2093 to i32*
  %2094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2095 = getelementptr inbounds %struct.GPR, %struct.GPR* %2094, i32 0, i32 11
  %2096 = getelementptr inbounds %struct.Reg, %struct.Reg* %2095, i32 0, i32 0
  %EDI.i68 = bitcast %union.anon* %2096 to i32*
  %2097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2098 = getelementptr inbounds %struct.GPR, %struct.GPR* %2097, i32 0, i32 13
  %2099 = getelementptr inbounds %struct.Reg, %struct.Reg* %2098, i32 0, i32 0
  %ESP.i69 = bitcast %union.anon* %2099 to i32*
  %2100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2101 = getelementptr inbounds %struct.GPR, %struct.GPR* %2100, i32 0, i32 15
  %2102 = getelementptr inbounds %struct.Reg, %struct.Reg* %2101, i32 0, i32 0
  %EBP.i70 = bitcast %union.anon* %2102 to i32*
  %2103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2104 = getelementptr inbounds %struct.GPR, %struct.GPR* %2103, i32 0, i32 33
  %2105 = getelementptr inbounds %struct.Reg, %struct.Reg* %2104, i32 0, i32 0
  %EIP.i71 = bitcast %union.anon* %2105 to i32*
  %2106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2107 = getelementptr inbounds %struct.GPR, %struct.GPR* %2106, i32 0, i32 17
  %2108 = getelementptr inbounds %struct.Reg, %struct.Reg* %2107, i32 0, i32 0
  %R8D.i72 = bitcast %union.anon* %2108 to i32*
  %2109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2110 = getelementptr inbounds %struct.GPR, %struct.GPR* %2109, i32 0, i32 19
  %2111 = getelementptr inbounds %struct.Reg, %struct.Reg* %2110, i32 0, i32 0
  %R9D.i73 = bitcast %union.anon* %2111 to i32*
  %2112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2113 = getelementptr inbounds %struct.GPR, %struct.GPR* %2112, i32 0, i32 21
  %2114 = getelementptr inbounds %struct.Reg, %struct.Reg* %2113, i32 0, i32 0
  %R10D.i74 = bitcast %union.anon* %2114 to i32*
  %2115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2116 = getelementptr inbounds %struct.GPR, %struct.GPR* %2115, i32 0, i32 23
  %2117 = getelementptr inbounds %struct.Reg, %struct.Reg* %2116, i32 0, i32 0
  %R11D.i75 = bitcast %union.anon* %2117 to i32*
  %2118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2119 = getelementptr inbounds %struct.GPR, %struct.GPR* %2118, i32 0, i32 25
  %2120 = getelementptr inbounds %struct.Reg, %struct.Reg* %2119, i32 0, i32 0
  %R12D.i76 = bitcast %union.anon* %2120 to i32*
  %2121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2122 = getelementptr inbounds %struct.GPR, %struct.GPR* %2121, i32 0, i32 27
  %2123 = getelementptr inbounds %struct.Reg, %struct.Reg* %2122, i32 0, i32 0
  %R13D.i77 = bitcast %union.anon* %2123 to i32*
  %2124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2125 = getelementptr inbounds %struct.GPR, %struct.GPR* %2124, i32 0, i32 29
  %2126 = getelementptr inbounds %struct.Reg, %struct.Reg* %2125, i32 0, i32 0
  %R14D.i78 = bitcast %union.anon* %2126 to i32*
  %2127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2128 = getelementptr inbounds %struct.GPR, %struct.GPR* %2127, i32 0, i32 31
  %2129 = getelementptr inbounds %struct.Reg, %struct.Reg* %2128, i32 0, i32 0
  %R15D.i79 = bitcast %union.anon* %2129 to i32*
  %2130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2131 = getelementptr inbounds %struct.GPR, %struct.GPR* %2130, i32 0, i32 1
  %2132 = getelementptr inbounds %struct.Reg, %struct.Reg* %2131, i32 0, i32 0
  %RAX.i80 = bitcast %union.anon* %2132 to i64*
  %2133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2134 = getelementptr inbounds %struct.GPR, %struct.GPR* %2133, i32 0, i32 3
  %2135 = getelementptr inbounds %struct.Reg, %struct.Reg* %2134, i32 0, i32 0
  %RBX.i81 = bitcast %union.anon* %2135 to i64*
  %2136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2137 = getelementptr inbounds %struct.GPR, %struct.GPR* %2136, i32 0, i32 5
  %2138 = getelementptr inbounds %struct.Reg, %struct.Reg* %2137, i32 0, i32 0
  %RCX.i82 = bitcast %union.anon* %2138 to i64*
  %2139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2140 = getelementptr inbounds %struct.GPR, %struct.GPR* %2139, i32 0, i32 7
  %2141 = getelementptr inbounds %struct.Reg, %struct.Reg* %2140, i32 0, i32 0
  %RDX.i83 = bitcast %union.anon* %2141 to i64*
  %2142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2143 = getelementptr inbounds %struct.GPR, %struct.GPR* %2142, i32 0, i32 9
  %2144 = getelementptr inbounds %struct.Reg, %struct.Reg* %2143, i32 0, i32 0
  %RSI.i84 = bitcast %union.anon* %2144 to i64*
  %2145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2146 = getelementptr inbounds %struct.GPR, %struct.GPR* %2145, i32 0, i32 11
  %2147 = getelementptr inbounds %struct.Reg, %struct.Reg* %2146, i32 0, i32 0
  %RDI.i85 = bitcast %union.anon* %2147 to i64*
  %2148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2149 = getelementptr inbounds %struct.GPR, %struct.GPR* %2148, i32 0, i32 13
  %2150 = getelementptr inbounds %struct.Reg, %struct.Reg* %2149, i32 0, i32 0
  %RSP.i86 = bitcast %union.anon* %2150 to i64*
  %2151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2152 = getelementptr inbounds %struct.GPR, %struct.GPR* %2151, i32 0, i32 15
  %2153 = getelementptr inbounds %struct.Reg, %struct.Reg* %2152, i32 0, i32 0
  %RBP.i87 = bitcast %union.anon* %2153 to i64*
  %2154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2155 = getelementptr inbounds %struct.GPR, %struct.GPR* %2154, i32 0, i32 17
  %2156 = getelementptr inbounds %struct.Reg, %struct.Reg* %2155, i32 0, i32 0
  %R8.i88 = bitcast %union.anon* %2156 to i64*
  %2157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2158 = getelementptr inbounds %struct.GPR, %struct.GPR* %2157, i32 0, i32 19
  %2159 = getelementptr inbounds %struct.Reg, %struct.Reg* %2158, i32 0, i32 0
  %R9.i89 = bitcast %union.anon* %2159 to i64*
  %2160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2161 = getelementptr inbounds %struct.GPR, %struct.GPR* %2160, i32 0, i32 21
  %2162 = getelementptr inbounds %struct.Reg, %struct.Reg* %2161, i32 0, i32 0
  %R10.i90 = bitcast %union.anon* %2162 to i64*
  %2163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2164 = getelementptr inbounds %struct.GPR, %struct.GPR* %2163, i32 0, i32 23
  %2165 = getelementptr inbounds %struct.Reg, %struct.Reg* %2164, i32 0, i32 0
  %R11.i91 = bitcast %union.anon* %2165 to i64*
  %2166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2167 = getelementptr inbounds %struct.GPR, %struct.GPR* %2166, i32 0, i32 25
  %2168 = getelementptr inbounds %struct.Reg, %struct.Reg* %2167, i32 0, i32 0
  %R12.i92 = bitcast %union.anon* %2168 to i64*
  %2169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2170 = getelementptr inbounds %struct.GPR, %struct.GPR* %2169, i32 0, i32 27
  %2171 = getelementptr inbounds %struct.Reg, %struct.Reg* %2170, i32 0, i32 0
  %R13.i93 = bitcast %union.anon* %2171 to i64*
  %2172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2173 = getelementptr inbounds %struct.GPR, %struct.GPR* %2172, i32 0, i32 29
  %2174 = getelementptr inbounds %struct.Reg, %struct.Reg* %2173, i32 0, i32 0
  %R14.i94 = bitcast %union.anon* %2174 to i64*
  %2175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2176 = getelementptr inbounds %struct.GPR, %struct.GPR* %2175, i32 0, i32 31
  %2177 = getelementptr inbounds %struct.Reg, %struct.Reg* %2176, i32 0, i32 0
  %R15.i95 = bitcast %union.anon* %2177 to i64*
  %2178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2179 = getelementptr inbounds %struct.GPR, %struct.GPR* %2178, i32 0, i32 33
  %2180 = getelementptr inbounds %struct.Reg, %struct.Reg* %2179, i32 0, i32 0
  %RIP.i96 = bitcast %union.anon* %2180 to i64*
  %2181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %2182 = getelementptr inbounds %struct.Segments, %struct.Segments* %2181, i32 0, i32 1
  %SS.i97 = bitcast %union.SegmentSelector* %2182 to i16*
  %2183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %2184 = getelementptr inbounds %struct.Segments, %struct.Segments* %2183, i32 0, i32 3
  %ES.i98 = bitcast %union.SegmentSelector* %2184 to i16*
  %2185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %2186 = getelementptr inbounds %struct.Segments, %struct.Segments* %2185, i32 0, i32 5
  %GS.i99 = bitcast %union.SegmentSelector* %2186 to i16*
  %2187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %2188 = getelementptr inbounds %struct.Segments, %struct.Segments* %2187, i32 0, i32 7
  %FS.i100 = bitcast %union.SegmentSelector* %2188 to i16*
  %2189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %2190 = getelementptr inbounds %struct.Segments, %struct.Segments* %2189, i32 0, i32 9
  %DS.i101 = bitcast %union.SegmentSelector* %2190 to i16*
  %2191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %2192 = getelementptr inbounds %struct.Segments, %struct.Segments* %2191, i32 0, i32 11
  %CS.i102 = bitcast %union.SegmentSelector* %2192 to i16*
  %2193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 5
  %2194 = getelementptr inbounds %struct.AddressSpace, %struct.AddressSpace* %2193, i32 0, i32 5
  %2195 = getelementptr inbounds %struct.Reg, %struct.Reg* %2194, i32 0, i32 0
  %GS_BASE.i103 = bitcast %union.anon* %2195 to i64*
  %2196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 5
  %2197 = getelementptr inbounds %struct.AddressSpace, %struct.AddressSpace* %2196, i32 0, i32 7
  %2198 = getelementptr inbounds %struct.Reg, %struct.Reg* %2197, i32 0, i32 0
  %FS_BASE.i104 = bitcast %union.anon* %2198 to i64*
  %2199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2200 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2199, i64 0, i64 0
  %YMM0.i105 = bitcast %union.VectorReg* %2200 to %"class.std::bitset"*
  %2201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2202 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2201, i64 0, i64 1
  %YMM1.i106 = bitcast %union.VectorReg* %2202 to %"class.std::bitset"*
  %2203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2204 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2203, i64 0, i64 2
  %YMM2.i107 = bitcast %union.VectorReg* %2204 to %"class.std::bitset"*
  %2205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2206 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2205, i64 0, i64 3
  %YMM3.i108 = bitcast %union.VectorReg* %2206 to %"class.std::bitset"*
  %2207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2208 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2207, i64 0, i64 4
  %YMM4.i109 = bitcast %union.VectorReg* %2208 to %"class.std::bitset"*
  %2209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2210 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2209, i64 0, i64 5
  %YMM5.i110 = bitcast %union.VectorReg* %2210 to %"class.std::bitset"*
  %2211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2212 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2211, i64 0, i64 6
  %YMM6.i111 = bitcast %union.VectorReg* %2212 to %"class.std::bitset"*
  %2213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2214 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2213, i64 0, i64 7
  %YMM7.i112 = bitcast %union.VectorReg* %2214 to %"class.std::bitset"*
  %2215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2216 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2215, i64 0, i64 8
  %YMM8.i113 = bitcast %union.VectorReg* %2216 to %"class.std::bitset"*
  %2217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2218 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2217, i64 0, i64 9
  %YMM9.i114 = bitcast %union.VectorReg* %2218 to %"class.std::bitset"*
  %2219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2220 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2219, i64 0, i64 10
  %YMM10.i115 = bitcast %union.VectorReg* %2220 to %"class.std::bitset"*
  %2221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2222 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2221, i64 0, i64 11
  %YMM11.i116 = bitcast %union.VectorReg* %2222 to %"class.std::bitset"*
  %2223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2224 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2223, i64 0, i64 12
  %YMM12.i117 = bitcast %union.VectorReg* %2224 to %"class.std::bitset"*
  %2225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2226 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2225, i64 0, i64 13
  %YMM13.i118 = bitcast %union.VectorReg* %2226 to %"class.std::bitset"*
  %2227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2228 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2227, i64 0, i64 14
  %YMM14.i119 = bitcast %union.VectorReg* %2228 to %"class.std::bitset"*
  %2229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2230 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2229, i64 0, i64 15
  %YMM15.i120 = bitcast %union.VectorReg* %2230 to %"class.std::bitset"*
  %2231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2232 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2231, i64 0, i64 0
  %XMM0.i121 = bitcast %union.VectorReg* %2232 to %union.vec128_t*
  %2233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2234 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2233, i64 0, i64 1
  %XMM1.i122 = bitcast %union.VectorReg* %2234 to %union.vec128_t*
  %2235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2236 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2235, i64 0, i64 2
  %XMM2.i123 = bitcast %union.VectorReg* %2236 to %union.vec128_t*
  %2237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2238 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2237, i64 0, i64 3
  %XMM3.i124 = bitcast %union.VectorReg* %2238 to %union.vec128_t*
  %2239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2240 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2239, i64 0, i64 4
  %XMM4.i125 = bitcast %union.VectorReg* %2240 to %union.vec128_t*
  %2241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2242 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2241, i64 0, i64 5
  %XMM5.i126 = bitcast %union.VectorReg* %2242 to %union.vec128_t*
  %2243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2244 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2243, i64 0, i64 6
  %XMM6.i127 = bitcast %union.VectorReg* %2244 to %union.vec128_t*
  %2245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2246 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2245, i64 0, i64 7
  %XMM7.i128 = bitcast %union.VectorReg* %2246 to %union.vec128_t*
  %2247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2248 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2247, i64 0, i64 8
  %XMM8.i129 = bitcast %union.VectorReg* %2248 to %union.vec128_t*
  %2249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2250 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2249, i64 0, i64 9
  %XMM9.i130 = bitcast %union.VectorReg* %2250 to %union.vec128_t*
  %2251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2252 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2251, i64 0, i64 10
  %XMM10.i131 = bitcast %union.VectorReg* %2252 to %union.vec128_t*
  %2253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2254 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2253, i64 0, i64 11
  %XMM11.i132 = bitcast %union.VectorReg* %2254 to %union.vec128_t*
  %2255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2256 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2255, i64 0, i64 12
  %XMM12.i133 = bitcast %union.VectorReg* %2256 to %union.vec128_t*
  %2257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2258 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2257, i64 0, i64 13
  %XMM13.i134 = bitcast %union.VectorReg* %2258 to %union.vec128_t*
  %2259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2260 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2259, i64 0, i64 14
  %XMM14.i135 = bitcast %union.VectorReg* %2260 to %union.vec128_t*
  %2261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2262 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2261, i64 0, i64 15
  %XMM15.i136 = bitcast %union.VectorReg* %2262 to %union.vec128_t*
  %2263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %2264 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %2263, i32 0, i32 0
  %2265 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %2264, i64 0, i64 0
  %ST0.i137 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %2265, i32 0, i32 1
  %2266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %2267 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %2266, i32 0, i32 0
  %2268 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %2267, i64 0, i64 1
  %ST1.i138 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %2268, i32 0, i32 1
  %2269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %2270 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %2269, i32 0, i32 0
  %2271 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %2270, i64 0, i64 2
  %ST2.i139 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %2271, i32 0, i32 1
  %2272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %2273 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %2272, i32 0, i32 0
  %2274 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %2273, i64 0, i64 3
  %ST3.i140 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %2274, i32 0, i32 1
  %2275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %2276 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %2275, i32 0, i32 0
  %2277 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %2276, i64 0, i64 4
  %ST4.i141 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %2277, i32 0, i32 1
  %2278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %2279 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %2278, i32 0, i32 0
  %2280 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %2279, i64 0, i64 5
  %ST5.i142 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %2280, i32 0, i32 1
  %2281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %2282 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %2281, i32 0, i32 0
  %2283 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %2282, i64 0, i64 6
  %ST6.i143 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %2283, i32 0, i32 1
  %2284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %2285 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %2284, i32 0, i32 0
  %2286 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %2285, i64 0, i64 7
  %ST7.i144 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %2286, i32 0, i32 1
  %2287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %2288 = getelementptr inbounds %struct.MMX, %struct.MMX* %2287, i32 0, i32 0
  %2289 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %2288, i64 0, i64 0
  %2290 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %2289, i32 0, i32 1
  %2291 = bitcast %union.vec64_t* %2290 to %struct.uint64v1_t*
  %2292 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %2291, i32 0, i32 0
  %MM0.i145 = getelementptr inbounds [1 x i64], [1 x i64]* %2292, i64 0, i64 0
  %2293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %2294 = getelementptr inbounds %struct.MMX, %struct.MMX* %2293, i32 0, i32 0
  %2295 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %2294, i64 0, i64 1
  %2296 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %2295, i32 0, i32 1
  %2297 = bitcast %union.vec64_t* %2296 to %struct.uint64v1_t*
  %2298 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %2297, i32 0, i32 0
  %MM1.i146 = getelementptr inbounds [1 x i64], [1 x i64]* %2298, i64 0, i64 0
  %2299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %2300 = getelementptr inbounds %struct.MMX, %struct.MMX* %2299, i32 0, i32 0
  %2301 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %2300, i64 0, i64 2
  %2302 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %2301, i32 0, i32 1
  %2303 = bitcast %union.vec64_t* %2302 to %struct.uint64v1_t*
  %2304 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %2303, i32 0, i32 0
  %MM2.i147 = getelementptr inbounds [1 x i64], [1 x i64]* %2304, i64 0, i64 0
  %2305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %2306 = getelementptr inbounds %struct.MMX, %struct.MMX* %2305, i32 0, i32 0
  %2307 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %2306, i64 0, i64 3
  %2308 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %2307, i32 0, i32 1
  %2309 = bitcast %union.vec64_t* %2308 to %struct.uint64v1_t*
  %2310 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %2309, i32 0, i32 0
  %MM3.i148 = getelementptr inbounds [1 x i64], [1 x i64]* %2310, i64 0, i64 0
  %2311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %2312 = getelementptr inbounds %struct.MMX, %struct.MMX* %2311, i32 0, i32 0
  %2313 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %2312, i64 0, i64 4
  %2314 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %2313, i32 0, i32 1
  %2315 = bitcast %union.vec64_t* %2314 to %struct.uint64v1_t*
  %2316 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %2315, i32 0, i32 0
  %MM4.i149 = getelementptr inbounds [1 x i64], [1 x i64]* %2316, i64 0, i64 0
  %2317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %2318 = getelementptr inbounds %struct.MMX, %struct.MMX* %2317, i32 0, i32 0
  %2319 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %2318, i64 0, i64 5
  %2320 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %2319, i32 0, i32 1
  %2321 = bitcast %union.vec64_t* %2320 to %struct.uint64v1_t*
  %2322 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %2321, i32 0, i32 0
  %MM5.i150 = getelementptr inbounds [1 x i64], [1 x i64]* %2322, i64 0, i64 0
  %2323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %2324 = getelementptr inbounds %struct.MMX, %struct.MMX* %2323, i32 0, i32 0
  %2325 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %2324, i64 0, i64 6
  %2326 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %2325, i32 0, i32 1
  %2327 = bitcast %union.vec64_t* %2326 to %struct.uint64v1_t*
  %2328 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %2327, i32 0, i32 0
  %MM6.i151 = getelementptr inbounds [1 x i64], [1 x i64]* %2328, i64 0, i64 0
  %2329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %2330 = getelementptr inbounds %struct.MMX, %struct.MMX* %2329, i32 0, i32 0
  %2331 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %2330, i64 0, i64 7
  %2332 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %2331, i32 0, i32 1
  %2333 = bitcast %union.vec64_t* %2332 to %struct.uint64v1_t*
  %2334 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %2333, i32 0, i32 0
  %MM7.i152 = getelementptr inbounds [1 x i64], [1 x i64]* %2334, i64 0, i64 0
  %2335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %AF.i153 = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %2335, i32 0, i32 5
  %2336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %CF.i154 = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %2336, i32 0, i32 1
  %2337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %DF.i155 = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %2337, i32 0, i32 11
  %2338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %OF.i156 = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %2338, i32 0, i32 13
  %2339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %PF.i157 = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %2339, i32 0, i32 3
  %2340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %SF.i158 = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %2340, i32 0, i32 9
  %2341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %ZF.i159 = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %2341, i32 0, i32 7
  store i64* @DR0, i64** %_DR0.i11, align 8, !noalias !2463
  store i64* @DR1, i64** %_DR1.i12, align 8, !noalias !2463
  store i64* @DR2, i64** %_DR2.i13, align 8, !noalias !2463
  store i64* @DR3, i64** %_DR3.i14, align 8, !noalias !2463
  store i64* @DR4, i64** %_DR4.i15, align 8, !noalias !2463
  store i64* @DR5, i64** %_DR5.i16, align 8, !noalias !2463
  store i64* @DR6, i64** %_DR6.i17, align 8, !noalias !2463
  store i64* @DR7, i64** %_DR7.i18, align 8, !noalias !2463
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR0, i32 0, i32 0), i64** %CR0.i19, align 8, !noalias !2463
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR1, i32 0, i32 0), i64** %CR1.i20, align 8, !noalias !2463
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR2, i32 0, i32 0), i64** %CR2.i21, align 8, !noalias !2463
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR3, i32 0, i32 0), i64** %CR3.i22, align 8, !noalias !2463
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR4, i32 0, i32 0), i64** %CR4.i23, align 8, !noalias !2463
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR8, i32 0, i32 0), i64** %CR8.i24, align 8, !noalias !2463
  %2342 = bitcast %"class.std::bitset"* %YMM0.i105 to double*
  %2343 = load double, double* %2342, !alias.scope !2467, !noalias !2468
  %2344 = load i64, i64* %RSP.i86, !alias.scope !2467, !noalias !2468
  %2345 = load %struct.Memory*, %struct.Memory** %MEMORY.i10, !noalias !2463
  %2346 = inttoptr i64 %2344 to i64*
  %2347 = load i64, i64* %2346
  store i64 %2347, i64* %PC.i25, !alias.scope !2467, !noalias !2468
  %2348 = add i64 %2344, 8
  store i64 %2348, i64* %RSP.i86, !alias.scope !2467, !noalias !2468
  %2349 = call double @sin(double %2343)
  store %"class.std::bitset" zeroinitializer, %"class.std::bitset"* %YMM0.i105, !alias.scope !2467, !noalias !2468
  %2350 = bitcast %"class.std::bitset"* %YMM0.i105 to double*
  store double %2349, double* %2350, !alias.scope !2467, !noalias !2468
  %2351 = load %struct.Memory*, %struct.Memory** %MEMORY.i10, !noalias !2463
  %2352 = bitcast %struct.State** %state.i1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2352)
  %2353 = bitcast i64* %curr_pc.i2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2353)
  %2354 = bitcast %struct.Memory** %memory.i3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2354)
  call void @llvm.lifetime.end(i64 1, i8* %BRANCH_TAKEN.i4)
  %2355 = bitcast i64* %SS_BASE.i5 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2355)
  %2356 = bitcast i64* %ES_BASE.i6 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2356)
  %2357 = bitcast i64* %DS_BASE.i7 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2357)
  %2358 = bitcast i64* %CS_BASE.i8 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2358)
  %2359 = bitcast %struct.State** %STATE.i9 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2359)
  %2360 = bitcast %struct.Memory** %MEMORY.i10 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2360)
  %2361 = bitcast i64** %_DR0.i11 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2361)
  %2362 = bitcast i64** %_DR1.i12 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2362)
  %2363 = bitcast i64** %_DR2.i13 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2363)
  %2364 = bitcast i64** %_DR3.i14 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2364)
  %2365 = bitcast i64** %_DR4.i15 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2365)
  %2366 = bitcast i64** %_DR5.i16 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2366)
  %2367 = bitcast i64** %_DR6.i17 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2367)
  %2368 = bitcast i64** %_DR7.i18 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2368)
  %2369 = bitcast i64** %CR0.i19 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2369)
  %2370 = bitcast i64** %CR1.i20 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2370)
  %2371 = bitcast i64** %CR2.i21 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2371)
  %2372 = bitcast i64** %CR3.i22 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2372)
  %2373 = bitcast i64** %CR4.i23 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2373)
  %2374 = bitcast i64** %CR8.i24 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2374)
  %2375 = load i64, i64* %RBP
  %2376 = sub i64 %2375, 264
  %2377 = bitcast %union.vec128_t* %XMM0 to i8*
  %2378 = load i64, i64* %PC
  %2379 = add i64 %2378, 8
  store i64 %2379, i64* %PC
  %2380 = bitcast i8* %2377 to double*
  %2381 = load double, double* %2380, align 1
  %2382 = inttoptr i64 %2376 to double*
  store double %2381, double* %2382
  %2383 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2384 = load i64, i64* %RBP
  %2385 = sub i64 %2384, 248
  %2386 = load i64, i64* %PC
  %2387 = add i64 %2386, 8
  store i64 %2387, i64* %PC
  %2388 = inttoptr i64 %2385 to double*
  %2389 = load double, double* %2388
  %2390 = bitcast i8* %2383 to double*
  store double %2389, double* %2390, align 1, !tbaa !2452
  %2391 = getelementptr inbounds i8, i8* %2383, i64 8
  %2392 = bitcast i8* %2391 to double*
  store double 0.000000e+00, double* %2392, align 1, !tbaa !2452
  %2393 = load i64, i64* %PC
  %2394 = sub i64 %2393, 862
  %2395 = load i64, i64* %PC
  %2396 = add i64 %2395, 5
  %2397 = load i64, i64* %PC
  %2398 = add i64 %2397, 5
  store i64 %2398, i64* %PC
  %2399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2400 = load i64, i64* %2399, align 8, !tbaa !2428
  %2401 = add i64 %2400, -8
  %2402 = inttoptr i64 %2401 to i64*
  store i64 %2396, i64* %2402
  store i64 %2401, i64* %2399, align 8, !tbaa !2428
  %2403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2394, i64* %2403, align 8, !tbaa !2428
  %2404 = load i64, i64* %PC
  %2405 = bitcast %struct.State** %state.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2405)
  %2406 = bitcast i64* %curr_pc.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2406)
  %2407 = bitcast %struct.Memory** %memory.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2407)
  call void @llvm.lifetime.start(i64 1, i8* %BRANCH_TAKEN.i)
  %2408 = bitcast i64* %SS_BASE.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2408)
  %2409 = bitcast i64* %ES_BASE.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2409)
  %2410 = bitcast i64* %DS_BASE.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2410)
  %2411 = bitcast i64* %CS_BASE.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2411)
  %2412 = bitcast %struct.State** %STATE.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2412)
  %2413 = bitcast %struct.Memory** %MEMORY.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2413)
  %2414 = bitcast i64** %_DR0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2414)
  %2415 = bitcast i64** %_DR1.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2415)
  %2416 = bitcast i64** %_DR2.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2416)
  %2417 = bitcast i64** %_DR3.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2417)
  %2418 = bitcast i64** %_DR4.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2418)
  %2419 = bitcast i64** %_DR5.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2419)
  %2420 = bitcast i64** %_DR6.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2420)
  %2421 = bitcast i64** %_DR7.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2421)
  %2422 = bitcast i64** %CR0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2422)
  %2423 = bitcast i64** %CR1.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2423)
  %2424 = bitcast i64** %CR2.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2424)
  %2425 = bitcast i64** %CR3.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2425)
  %2426 = bitcast i64** %CR4.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2426)
  %2427 = bitcast i64** %CR8.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2427)
  store %struct.State* %0, %struct.State** %state.i, align 8, !noalias !2469
  store i64 %2404, i64* %curr_pc.i, align 8, !noalias !2469
  store %struct.Memory* %2351, %struct.Memory** %memory.i, align 8, !noalias !2469
  store i8 0, i8* %BRANCH_TAKEN.i, align 1, !noalias !2469
  store i64 0, i64* %SS_BASE.i, align 8, !noalias !2469
  store i64 0, i64* %ES_BASE.i, align 8, !noalias !2469
  store i64 0, i64* %DS_BASE.i, align 8, !noalias !2469
  store i64 0, i64* %CS_BASE.i, align 8, !noalias !2469
  store %struct.State* %0, %struct.State** %STATE.i, align 8, !noalias !2469
  store %struct.Memory* %2351, %struct.Memory** %MEMORY.i, align 8, !noalias !2469
  %2428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2429 = getelementptr inbounds %struct.GPR, %struct.GPR* %2428, i32 0, i32 33
  %2430 = getelementptr inbounds %struct.Reg, %struct.Reg* %2429, i32 0, i32 0
  %PC.i = bitcast %union.anon* %2430 to i64*
  store i64 %2404, i64* %PC.i, align 8, !alias.scope !2473, !noalias !2474
  %2431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2432 = getelementptr inbounds %struct.GPR, %struct.GPR* %2431, i32 0, i32 1
  %2433 = getelementptr inbounds %struct.Reg, %struct.Reg* %2432, i32 0, i32 0
  %2434 = bitcast %union.anon* %2433 to %struct.anon.2*
  %AH.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2434, i32 0, i32 1
  %2435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2436 = getelementptr inbounds %struct.GPR, %struct.GPR* %2435, i32 0, i32 3
  %2437 = getelementptr inbounds %struct.Reg, %struct.Reg* %2436, i32 0, i32 0
  %2438 = bitcast %union.anon* %2437 to %struct.anon.2*
  %BH.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2438, i32 0, i32 1
  %2439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2440 = getelementptr inbounds %struct.GPR, %struct.GPR* %2439, i32 0, i32 5
  %2441 = getelementptr inbounds %struct.Reg, %struct.Reg* %2440, i32 0, i32 0
  %2442 = bitcast %union.anon* %2441 to %struct.anon.2*
  %CH.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2442, i32 0, i32 1
  %2443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2444 = getelementptr inbounds %struct.GPR, %struct.GPR* %2443, i32 0, i32 7
  %2445 = getelementptr inbounds %struct.Reg, %struct.Reg* %2444, i32 0, i32 0
  %2446 = bitcast %union.anon* %2445 to %struct.anon.2*
  %DH.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2446, i32 0, i32 1
  %2447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2448 = getelementptr inbounds %struct.GPR, %struct.GPR* %2447, i32 0, i32 1
  %2449 = getelementptr inbounds %struct.Reg, %struct.Reg* %2448, i32 0, i32 0
  %2450 = bitcast %union.anon* %2449 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2450, i32 0, i32 0
  %2451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2452 = getelementptr inbounds %struct.GPR, %struct.GPR* %2451, i32 0, i32 3
  %2453 = getelementptr inbounds %struct.Reg, %struct.Reg* %2452, i32 0, i32 0
  %2454 = bitcast %union.anon* %2453 to %struct.anon.2*
  %BL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2454, i32 0, i32 0
  %2455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2456 = getelementptr inbounds %struct.GPR, %struct.GPR* %2455, i32 0, i32 5
  %2457 = getelementptr inbounds %struct.Reg, %struct.Reg* %2456, i32 0, i32 0
  %2458 = bitcast %union.anon* %2457 to %struct.anon.2*
  %CL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2458, i32 0, i32 0
  %2459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2460 = getelementptr inbounds %struct.GPR, %struct.GPR* %2459, i32 0, i32 7
  %2461 = getelementptr inbounds %struct.Reg, %struct.Reg* %2460, i32 0, i32 0
  %2462 = bitcast %union.anon* %2461 to %struct.anon.2*
  %DL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2462, i32 0, i32 0
  %2463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2464 = getelementptr inbounds %struct.GPR, %struct.GPR* %2463, i32 0, i32 9
  %2465 = getelementptr inbounds %struct.Reg, %struct.Reg* %2464, i32 0, i32 0
  %2466 = bitcast %union.anon* %2465 to %struct.anon.2*
  %SIL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2466, i32 0, i32 0
  %2467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2468 = getelementptr inbounds %struct.GPR, %struct.GPR* %2467, i32 0, i32 11
  %2469 = getelementptr inbounds %struct.Reg, %struct.Reg* %2468, i32 0, i32 0
  %2470 = bitcast %union.anon* %2469 to %struct.anon.2*
  %DIL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2470, i32 0, i32 0
  %2471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2472 = getelementptr inbounds %struct.GPR, %struct.GPR* %2471, i32 0, i32 13
  %2473 = getelementptr inbounds %struct.Reg, %struct.Reg* %2472, i32 0, i32 0
  %2474 = bitcast %union.anon* %2473 to %struct.anon.2*
  %SPL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2474, i32 0, i32 0
  %2475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2476 = getelementptr inbounds %struct.GPR, %struct.GPR* %2475, i32 0, i32 15
  %2477 = getelementptr inbounds %struct.Reg, %struct.Reg* %2476, i32 0, i32 0
  %2478 = bitcast %union.anon* %2477 to %struct.anon.2*
  %BPL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2478, i32 0, i32 0
  %2479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2480 = getelementptr inbounds %struct.GPR, %struct.GPR* %2479, i32 0, i32 17
  %2481 = getelementptr inbounds %struct.Reg, %struct.Reg* %2480, i32 0, i32 0
  %2482 = bitcast %union.anon* %2481 to %struct.anon.2*
  %R8B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2482, i32 0, i32 0
  %2483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2484 = getelementptr inbounds %struct.GPR, %struct.GPR* %2483, i32 0, i32 19
  %2485 = getelementptr inbounds %struct.Reg, %struct.Reg* %2484, i32 0, i32 0
  %2486 = bitcast %union.anon* %2485 to %struct.anon.2*
  %R9B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2486, i32 0, i32 0
  %2487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2488 = getelementptr inbounds %struct.GPR, %struct.GPR* %2487, i32 0, i32 21
  %2489 = getelementptr inbounds %struct.Reg, %struct.Reg* %2488, i32 0, i32 0
  %2490 = bitcast %union.anon* %2489 to %struct.anon.2*
  %R10B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2490, i32 0, i32 0
  %2491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2492 = getelementptr inbounds %struct.GPR, %struct.GPR* %2491, i32 0, i32 23
  %2493 = getelementptr inbounds %struct.Reg, %struct.Reg* %2492, i32 0, i32 0
  %2494 = bitcast %union.anon* %2493 to %struct.anon.2*
  %R11B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2494, i32 0, i32 0
  %2495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2496 = getelementptr inbounds %struct.GPR, %struct.GPR* %2495, i32 0, i32 25
  %2497 = getelementptr inbounds %struct.Reg, %struct.Reg* %2496, i32 0, i32 0
  %2498 = bitcast %union.anon* %2497 to %struct.anon.2*
  %R12B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2498, i32 0, i32 0
  %2499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2500 = getelementptr inbounds %struct.GPR, %struct.GPR* %2499, i32 0, i32 27
  %2501 = getelementptr inbounds %struct.Reg, %struct.Reg* %2500, i32 0, i32 0
  %2502 = bitcast %union.anon* %2501 to %struct.anon.2*
  %R13B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2502, i32 0, i32 0
  %2503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2504 = getelementptr inbounds %struct.GPR, %struct.GPR* %2503, i32 0, i32 29
  %2505 = getelementptr inbounds %struct.Reg, %struct.Reg* %2504, i32 0, i32 0
  %2506 = bitcast %union.anon* %2505 to %struct.anon.2*
  %R14B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2506, i32 0, i32 0
  %2507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2508 = getelementptr inbounds %struct.GPR, %struct.GPR* %2507, i32 0, i32 31
  %2509 = getelementptr inbounds %struct.Reg, %struct.Reg* %2508, i32 0, i32 0
  %2510 = bitcast %union.anon* %2509 to %struct.anon.2*
  %R15B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2510, i32 0, i32 0
  %2511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2512 = getelementptr inbounds %struct.GPR, %struct.GPR* %2511, i32 0, i32 1
  %2513 = getelementptr inbounds %struct.Reg, %struct.Reg* %2512, i32 0, i32 0
  %AX.i = bitcast %union.anon* %2513 to i16*
  %2514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2515 = getelementptr inbounds %struct.GPR, %struct.GPR* %2514, i32 0, i32 3
  %2516 = getelementptr inbounds %struct.Reg, %struct.Reg* %2515, i32 0, i32 0
  %BX.i = bitcast %union.anon* %2516 to i16*
  %2517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2518 = getelementptr inbounds %struct.GPR, %struct.GPR* %2517, i32 0, i32 5
  %2519 = getelementptr inbounds %struct.Reg, %struct.Reg* %2518, i32 0, i32 0
  %CX.i = bitcast %union.anon* %2519 to i16*
  %2520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2521 = getelementptr inbounds %struct.GPR, %struct.GPR* %2520, i32 0, i32 7
  %2522 = getelementptr inbounds %struct.Reg, %struct.Reg* %2521, i32 0, i32 0
  %DX.i = bitcast %union.anon* %2522 to i16*
  %2523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2524 = getelementptr inbounds %struct.GPR, %struct.GPR* %2523, i32 0, i32 9
  %2525 = getelementptr inbounds %struct.Reg, %struct.Reg* %2524, i32 0, i32 0
  %SI.i = bitcast %union.anon* %2525 to i16*
  %2526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2527 = getelementptr inbounds %struct.GPR, %struct.GPR* %2526, i32 0, i32 11
  %2528 = getelementptr inbounds %struct.Reg, %struct.Reg* %2527, i32 0, i32 0
  %DI.i = bitcast %union.anon* %2528 to i16*
  %2529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2530 = getelementptr inbounds %struct.GPR, %struct.GPR* %2529, i32 0, i32 13
  %2531 = getelementptr inbounds %struct.Reg, %struct.Reg* %2530, i32 0, i32 0
  %SP.i = bitcast %union.anon* %2531 to i16*
  %2532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2533 = getelementptr inbounds %struct.GPR, %struct.GPR* %2532, i32 0, i32 15
  %2534 = getelementptr inbounds %struct.Reg, %struct.Reg* %2533, i32 0, i32 0
  %BP.i = bitcast %union.anon* %2534 to i16*
  %2535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2536 = getelementptr inbounds %struct.GPR, %struct.GPR* %2535, i32 0, i32 17
  %2537 = getelementptr inbounds %struct.Reg, %struct.Reg* %2536, i32 0, i32 0
  %R8W.i = bitcast %union.anon* %2537 to i16*
  %2538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2539 = getelementptr inbounds %struct.GPR, %struct.GPR* %2538, i32 0, i32 19
  %2540 = getelementptr inbounds %struct.Reg, %struct.Reg* %2539, i32 0, i32 0
  %R9W.i = bitcast %union.anon* %2540 to i16*
  %2541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2542 = getelementptr inbounds %struct.GPR, %struct.GPR* %2541, i32 0, i32 21
  %2543 = getelementptr inbounds %struct.Reg, %struct.Reg* %2542, i32 0, i32 0
  %R10W.i = bitcast %union.anon* %2543 to i16*
  %2544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2545 = getelementptr inbounds %struct.GPR, %struct.GPR* %2544, i32 0, i32 23
  %2546 = getelementptr inbounds %struct.Reg, %struct.Reg* %2545, i32 0, i32 0
  %R11W.i = bitcast %union.anon* %2546 to i16*
  %2547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2548 = getelementptr inbounds %struct.GPR, %struct.GPR* %2547, i32 0, i32 25
  %2549 = getelementptr inbounds %struct.Reg, %struct.Reg* %2548, i32 0, i32 0
  %R12W.i = bitcast %union.anon* %2549 to i16*
  %2550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2551 = getelementptr inbounds %struct.GPR, %struct.GPR* %2550, i32 0, i32 27
  %2552 = getelementptr inbounds %struct.Reg, %struct.Reg* %2551, i32 0, i32 0
  %R13W.i = bitcast %union.anon* %2552 to i16*
  %2553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2554 = getelementptr inbounds %struct.GPR, %struct.GPR* %2553, i32 0, i32 29
  %2555 = getelementptr inbounds %struct.Reg, %struct.Reg* %2554, i32 0, i32 0
  %R14W.i = bitcast %union.anon* %2555 to i16*
  %2556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2557 = getelementptr inbounds %struct.GPR, %struct.GPR* %2556, i32 0, i32 31
  %2558 = getelementptr inbounds %struct.Reg, %struct.Reg* %2557, i32 0, i32 0
  %R15W.i = bitcast %union.anon* %2558 to i16*
  %2559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2560 = getelementptr inbounds %struct.GPR, %struct.GPR* %2559, i32 0, i32 33
  %2561 = getelementptr inbounds %struct.Reg, %struct.Reg* %2560, i32 0, i32 0
  %IP.i = bitcast %union.anon* %2561 to i16*
  %2562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2563 = getelementptr inbounds %struct.GPR, %struct.GPR* %2562, i32 0, i32 1
  %2564 = getelementptr inbounds %struct.Reg, %struct.Reg* %2563, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %2564 to i32*
  %2565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2566 = getelementptr inbounds %struct.GPR, %struct.GPR* %2565, i32 0, i32 3
  %2567 = getelementptr inbounds %struct.Reg, %struct.Reg* %2566, i32 0, i32 0
  %EBX.i = bitcast %union.anon* %2567 to i32*
  %2568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2569 = getelementptr inbounds %struct.GPR, %struct.GPR* %2568, i32 0, i32 5
  %2570 = getelementptr inbounds %struct.Reg, %struct.Reg* %2569, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %2570 to i32*
  %2571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2572 = getelementptr inbounds %struct.GPR, %struct.GPR* %2571, i32 0, i32 7
  %2573 = getelementptr inbounds %struct.Reg, %struct.Reg* %2572, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %2573 to i32*
  %2574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2575 = getelementptr inbounds %struct.GPR, %struct.GPR* %2574, i32 0, i32 9
  %2576 = getelementptr inbounds %struct.Reg, %struct.Reg* %2575, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %2576 to i32*
  %2577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2578 = getelementptr inbounds %struct.GPR, %struct.GPR* %2577, i32 0, i32 11
  %2579 = getelementptr inbounds %struct.Reg, %struct.Reg* %2578, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %2579 to i32*
  %2580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2581 = getelementptr inbounds %struct.GPR, %struct.GPR* %2580, i32 0, i32 13
  %2582 = getelementptr inbounds %struct.Reg, %struct.Reg* %2581, i32 0, i32 0
  %ESP.i = bitcast %union.anon* %2582 to i32*
  %2583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2584 = getelementptr inbounds %struct.GPR, %struct.GPR* %2583, i32 0, i32 15
  %2585 = getelementptr inbounds %struct.Reg, %struct.Reg* %2584, i32 0, i32 0
  %EBP.i = bitcast %union.anon* %2585 to i32*
  %2586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2587 = getelementptr inbounds %struct.GPR, %struct.GPR* %2586, i32 0, i32 33
  %2588 = getelementptr inbounds %struct.Reg, %struct.Reg* %2587, i32 0, i32 0
  %EIP.i = bitcast %union.anon* %2588 to i32*
  %2589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2590 = getelementptr inbounds %struct.GPR, %struct.GPR* %2589, i32 0, i32 17
  %2591 = getelementptr inbounds %struct.Reg, %struct.Reg* %2590, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %2591 to i32*
  %2592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2593 = getelementptr inbounds %struct.GPR, %struct.GPR* %2592, i32 0, i32 19
  %2594 = getelementptr inbounds %struct.Reg, %struct.Reg* %2593, i32 0, i32 0
  %R9D.i = bitcast %union.anon* %2594 to i32*
  %2595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2596 = getelementptr inbounds %struct.GPR, %struct.GPR* %2595, i32 0, i32 21
  %2597 = getelementptr inbounds %struct.Reg, %struct.Reg* %2596, i32 0, i32 0
  %R10D.i = bitcast %union.anon* %2597 to i32*
  %2598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2599 = getelementptr inbounds %struct.GPR, %struct.GPR* %2598, i32 0, i32 23
  %2600 = getelementptr inbounds %struct.Reg, %struct.Reg* %2599, i32 0, i32 0
  %R11D.i = bitcast %union.anon* %2600 to i32*
  %2601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2602 = getelementptr inbounds %struct.GPR, %struct.GPR* %2601, i32 0, i32 25
  %2603 = getelementptr inbounds %struct.Reg, %struct.Reg* %2602, i32 0, i32 0
  %R12D.i = bitcast %union.anon* %2603 to i32*
  %2604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2605 = getelementptr inbounds %struct.GPR, %struct.GPR* %2604, i32 0, i32 27
  %2606 = getelementptr inbounds %struct.Reg, %struct.Reg* %2605, i32 0, i32 0
  %R13D.i = bitcast %union.anon* %2606 to i32*
  %2607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2608 = getelementptr inbounds %struct.GPR, %struct.GPR* %2607, i32 0, i32 29
  %2609 = getelementptr inbounds %struct.Reg, %struct.Reg* %2608, i32 0, i32 0
  %R14D.i = bitcast %union.anon* %2609 to i32*
  %2610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2611 = getelementptr inbounds %struct.GPR, %struct.GPR* %2610, i32 0, i32 31
  %2612 = getelementptr inbounds %struct.Reg, %struct.Reg* %2611, i32 0, i32 0
  %R15D.i = bitcast %union.anon* %2612 to i32*
  %2613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2614 = getelementptr inbounds %struct.GPR, %struct.GPR* %2613, i32 0, i32 1
  %2615 = getelementptr inbounds %struct.Reg, %struct.Reg* %2614, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %2615 to i64*
  %2616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2617 = getelementptr inbounds %struct.GPR, %struct.GPR* %2616, i32 0, i32 3
  %2618 = getelementptr inbounds %struct.Reg, %struct.Reg* %2617, i32 0, i32 0
  %RBX.i = bitcast %union.anon* %2618 to i64*
  %2619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2620 = getelementptr inbounds %struct.GPR, %struct.GPR* %2619, i32 0, i32 5
  %2621 = getelementptr inbounds %struct.Reg, %struct.Reg* %2620, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %2621 to i64*
  %2622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2623 = getelementptr inbounds %struct.GPR, %struct.GPR* %2622, i32 0, i32 7
  %2624 = getelementptr inbounds %struct.Reg, %struct.Reg* %2623, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %2624 to i64*
  %2625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2626 = getelementptr inbounds %struct.GPR, %struct.GPR* %2625, i32 0, i32 9
  %2627 = getelementptr inbounds %struct.Reg, %struct.Reg* %2626, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %2627 to i64*
  %2628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2629 = getelementptr inbounds %struct.GPR, %struct.GPR* %2628, i32 0, i32 11
  %2630 = getelementptr inbounds %struct.Reg, %struct.Reg* %2629, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %2630 to i64*
  %2631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2632 = getelementptr inbounds %struct.GPR, %struct.GPR* %2631, i32 0, i32 13
  %2633 = getelementptr inbounds %struct.Reg, %struct.Reg* %2632, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %2633 to i64*
  %2634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2635 = getelementptr inbounds %struct.GPR, %struct.GPR* %2634, i32 0, i32 15
  %2636 = getelementptr inbounds %struct.Reg, %struct.Reg* %2635, i32 0, i32 0
  %RBP.i = bitcast %union.anon* %2636 to i64*
  %2637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2638 = getelementptr inbounds %struct.GPR, %struct.GPR* %2637, i32 0, i32 17
  %2639 = getelementptr inbounds %struct.Reg, %struct.Reg* %2638, i32 0, i32 0
  %R8.i = bitcast %union.anon* %2639 to i64*
  %2640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2641 = getelementptr inbounds %struct.GPR, %struct.GPR* %2640, i32 0, i32 19
  %2642 = getelementptr inbounds %struct.Reg, %struct.Reg* %2641, i32 0, i32 0
  %R9.i = bitcast %union.anon* %2642 to i64*
  %2643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2644 = getelementptr inbounds %struct.GPR, %struct.GPR* %2643, i32 0, i32 21
  %2645 = getelementptr inbounds %struct.Reg, %struct.Reg* %2644, i32 0, i32 0
  %R10.i = bitcast %union.anon* %2645 to i64*
  %2646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2647 = getelementptr inbounds %struct.GPR, %struct.GPR* %2646, i32 0, i32 23
  %2648 = getelementptr inbounds %struct.Reg, %struct.Reg* %2647, i32 0, i32 0
  %R11.i = bitcast %union.anon* %2648 to i64*
  %2649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2650 = getelementptr inbounds %struct.GPR, %struct.GPR* %2649, i32 0, i32 25
  %2651 = getelementptr inbounds %struct.Reg, %struct.Reg* %2650, i32 0, i32 0
  %R12.i = bitcast %union.anon* %2651 to i64*
  %2652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2653 = getelementptr inbounds %struct.GPR, %struct.GPR* %2652, i32 0, i32 27
  %2654 = getelementptr inbounds %struct.Reg, %struct.Reg* %2653, i32 0, i32 0
  %R13.i = bitcast %union.anon* %2654 to i64*
  %2655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2656 = getelementptr inbounds %struct.GPR, %struct.GPR* %2655, i32 0, i32 29
  %2657 = getelementptr inbounds %struct.Reg, %struct.Reg* %2656, i32 0, i32 0
  %R14.i = bitcast %union.anon* %2657 to i64*
  %2658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2659 = getelementptr inbounds %struct.GPR, %struct.GPR* %2658, i32 0, i32 31
  %2660 = getelementptr inbounds %struct.Reg, %struct.Reg* %2659, i32 0, i32 0
  %R15.i = bitcast %union.anon* %2660 to i64*
  %2661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2662 = getelementptr inbounds %struct.GPR, %struct.GPR* %2661, i32 0, i32 33
  %2663 = getelementptr inbounds %struct.Reg, %struct.Reg* %2662, i32 0, i32 0
  %RIP.i = bitcast %union.anon* %2663 to i64*
  %2664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %2665 = getelementptr inbounds %struct.Segments, %struct.Segments* %2664, i32 0, i32 1
  %SS.i = bitcast %union.SegmentSelector* %2665 to i16*
  %2666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %2667 = getelementptr inbounds %struct.Segments, %struct.Segments* %2666, i32 0, i32 3
  %ES.i = bitcast %union.SegmentSelector* %2667 to i16*
  %2668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %2669 = getelementptr inbounds %struct.Segments, %struct.Segments* %2668, i32 0, i32 5
  %GS.i = bitcast %union.SegmentSelector* %2669 to i16*
  %2670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %2671 = getelementptr inbounds %struct.Segments, %struct.Segments* %2670, i32 0, i32 7
  %FS.i = bitcast %union.SegmentSelector* %2671 to i16*
  %2672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %2673 = getelementptr inbounds %struct.Segments, %struct.Segments* %2672, i32 0, i32 9
  %DS.i = bitcast %union.SegmentSelector* %2673 to i16*
  %2674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %2675 = getelementptr inbounds %struct.Segments, %struct.Segments* %2674, i32 0, i32 11
  %CS.i = bitcast %union.SegmentSelector* %2675 to i16*
  %2676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 5
  %2677 = getelementptr inbounds %struct.AddressSpace, %struct.AddressSpace* %2676, i32 0, i32 5
  %2678 = getelementptr inbounds %struct.Reg, %struct.Reg* %2677, i32 0, i32 0
  %GS_BASE.i = bitcast %union.anon* %2678 to i64*
  %2679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 5
  %2680 = getelementptr inbounds %struct.AddressSpace, %struct.AddressSpace* %2679, i32 0, i32 7
  %2681 = getelementptr inbounds %struct.Reg, %struct.Reg* %2680, i32 0, i32 0
  %FS_BASE.i = bitcast %union.anon* %2681 to i64*
  %2682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2683 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2682, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %2683 to %"class.std::bitset"*
  %2684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2685 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2684, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %2685 to %"class.std::bitset"*
  %2686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2687 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2686, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %2687 to %"class.std::bitset"*
  %2688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2689 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2688, i64 0, i64 3
  %YMM3.i = bitcast %union.VectorReg* %2689 to %"class.std::bitset"*
  %2690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2691 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2690, i64 0, i64 4
  %YMM4.i = bitcast %union.VectorReg* %2691 to %"class.std::bitset"*
  %2692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2693 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2692, i64 0, i64 5
  %YMM5.i = bitcast %union.VectorReg* %2693 to %"class.std::bitset"*
  %2694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2695 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2694, i64 0, i64 6
  %YMM6.i = bitcast %union.VectorReg* %2695 to %"class.std::bitset"*
  %2696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2697 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2696, i64 0, i64 7
  %YMM7.i = bitcast %union.VectorReg* %2697 to %"class.std::bitset"*
  %2698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2699 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2698, i64 0, i64 8
  %YMM8.i = bitcast %union.VectorReg* %2699 to %"class.std::bitset"*
  %2700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2701 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2700, i64 0, i64 9
  %YMM9.i = bitcast %union.VectorReg* %2701 to %"class.std::bitset"*
  %2702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2703 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2702, i64 0, i64 10
  %YMM10.i = bitcast %union.VectorReg* %2703 to %"class.std::bitset"*
  %2704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2705 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2704, i64 0, i64 11
  %YMM11.i = bitcast %union.VectorReg* %2705 to %"class.std::bitset"*
  %2706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2707 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2706, i64 0, i64 12
  %YMM12.i = bitcast %union.VectorReg* %2707 to %"class.std::bitset"*
  %2708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2709 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2708, i64 0, i64 13
  %YMM13.i = bitcast %union.VectorReg* %2709 to %"class.std::bitset"*
  %2710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2711 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2710, i64 0, i64 14
  %YMM14.i = bitcast %union.VectorReg* %2711 to %"class.std::bitset"*
  %2712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2713 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2712, i64 0, i64 15
  %YMM15.i = bitcast %union.VectorReg* %2713 to %"class.std::bitset"*
  %2714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2715 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2714, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %2715 to %union.vec128_t*
  %2716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2717 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2716, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %2717 to %union.vec128_t*
  %2718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2719 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2718, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %2719 to %union.vec128_t*
  %2720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2721 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2720, i64 0, i64 3
  %XMM3.i = bitcast %union.VectorReg* %2721 to %union.vec128_t*
  %2722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2723 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2722, i64 0, i64 4
  %XMM4.i = bitcast %union.VectorReg* %2723 to %union.vec128_t*
  %2724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2725 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2724, i64 0, i64 5
  %XMM5.i = bitcast %union.VectorReg* %2725 to %union.vec128_t*
  %2726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2727 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2726, i64 0, i64 6
  %XMM6.i = bitcast %union.VectorReg* %2727 to %union.vec128_t*
  %2728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2729 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2728, i64 0, i64 7
  %XMM7.i = bitcast %union.VectorReg* %2729 to %union.vec128_t*
  %2730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2731 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2730, i64 0, i64 8
  %XMM8.i = bitcast %union.VectorReg* %2731 to %union.vec128_t*
  %2732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2733 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2732, i64 0, i64 9
  %XMM9.i = bitcast %union.VectorReg* %2733 to %union.vec128_t*
  %2734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2735 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2734, i64 0, i64 10
  %XMM10.i = bitcast %union.VectorReg* %2735 to %union.vec128_t*
  %2736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2737 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2736, i64 0, i64 11
  %XMM11.i = bitcast %union.VectorReg* %2737 to %union.vec128_t*
  %2738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2739 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2738, i64 0, i64 12
  %XMM12.i = bitcast %union.VectorReg* %2739 to %union.vec128_t*
  %2740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2741 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2740, i64 0, i64 13
  %XMM13.i = bitcast %union.VectorReg* %2741 to %union.vec128_t*
  %2742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2743 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2742, i64 0, i64 14
  %XMM14.i = bitcast %union.VectorReg* %2743 to %union.vec128_t*
  %2744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2745 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2744, i64 0, i64 15
  %XMM15.i = bitcast %union.VectorReg* %2745 to %union.vec128_t*
  %2746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %2747 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %2746, i32 0, i32 0
  %2748 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %2747, i64 0, i64 0
  %ST0.i = getelementptr inbounds %struct.anon.3, %struct.anon.3* %2748, i32 0, i32 1
  %2749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %2750 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %2749, i32 0, i32 0
  %2751 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %2750, i64 0, i64 1
  %ST1.i = getelementptr inbounds %struct.anon.3, %struct.anon.3* %2751, i32 0, i32 1
  %2752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %2753 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %2752, i32 0, i32 0
  %2754 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %2753, i64 0, i64 2
  %ST2.i = getelementptr inbounds %struct.anon.3, %struct.anon.3* %2754, i32 0, i32 1
  %2755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %2756 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %2755, i32 0, i32 0
  %2757 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %2756, i64 0, i64 3
  %ST3.i = getelementptr inbounds %struct.anon.3, %struct.anon.3* %2757, i32 0, i32 1
  %2758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %2759 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %2758, i32 0, i32 0
  %2760 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %2759, i64 0, i64 4
  %ST4.i = getelementptr inbounds %struct.anon.3, %struct.anon.3* %2760, i32 0, i32 1
  %2761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %2762 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %2761, i32 0, i32 0
  %2763 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %2762, i64 0, i64 5
  %ST5.i = getelementptr inbounds %struct.anon.3, %struct.anon.3* %2763, i32 0, i32 1
  %2764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %2765 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %2764, i32 0, i32 0
  %2766 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %2765, i64 0, i64 6
  %ST6.i = getelementptr inbounds %struct.anon.3, %struct.anon.3* %2766, i32 0, i32 1
  %2767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %2768 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %2767, i32 0, i32 0
  %2769 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %2768, i64 0, i64 7
  %ST7.i = getelementptr inbounds %struct.anon.3, %struct.anon.3* %2769, i32 0, i32 1
  %2770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %2771 = getelementptr inbounds %struct.MMX, %struct.MMX* %2770, i32 0, i32 0
  %2772 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %2771, i64 0, i64 0
  %2773 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %2772, i32 0, i32 1
  %2774 = bitcast %union.vec64_t* %2773 to %struct.uint64v1_t*
  %2775 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %2774, i32 0, i32 0
  %MM0.i = getelementptr inbounds [1 x i64], [1 x i64]* %2775, i64 0, i64 0
  %2776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %2777 = getelementptr inbounds %struct.MMX, %struct.MMX* %2776, i32 0, i32 0
  %2778 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %2777, i64 0, i64 1
  %2779 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %2778, i32 0, i32 1
  %2780 = bitcast %union.vec64_t* %2779 to %struct.uint64v1_t*
  %2781 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %2780, i32 0, i32 0
  %MM1.i = getelementptr inbounds [1 x i64], [1 x i64]* %2781, i64 0, i64 0
  %2782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %2783 = getelementptr inbounds %struct.MMX, %struct.MMX* %2782, i32 0, i32 0
  %2784 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %2783, i64 0, i64 2
  %2785 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %2784, i32 0, i32 1
  %2786 = bitcast %union.vec64_t* %2785 to %struct.uint64v1_t*
  %2787 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %2786, i32 0, i32 0
  %MM2.i = getelementptr inbounds [1 x i64], [1 x i64]* %2787, i64 0, i64 0
  %2788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %2789 = getelementptr inbounds %struct.MMX, %struct.MMX* %2788, i32 0, i32 0
  %2790 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %2789, i64 0, i64 3
  %2791 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %2790, i32 0, i32 1
  %2792 = bitcast %union.vec64_t* %2791 to %struct.uint64v1_t*
  %2793 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %2792, i32 0, i32 0
  %MM3.i = getelementptr inbounds [1 x i64], [1 x i64]* %2793, i64 0, i64 0
  %2794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %2795 = getelementptr inbounds %struct.MMX, %struct.MMX* %2794, i32 0, i32 0
  %2796 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %2795, i64 0, i64 4
  %2797 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %2796, i32 0, i32 1
  %2798 = bitcast %union.vec64_t* %2797 to %struct.uint64v1_t*
  %2799 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %2798, i32 0, i32 0
  %MM4.i = getelementptr inbounds [1 x i64], [1 x i64]* %2799, i64 0, i64 0
  %2800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %2801 = getelementptr inbounds %struct.MMX, %struct.MMX* %2800, i32 0, i32 0
  %2802 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %2801, i64 0, i64 5
  %2803 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %2802, i32 0, i32 1
  %2804 = bitcast %union.vec64_t* %2803 to %struct.uint64v1_t*
  %2805 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %2804, i32 0, i32 0
  %MM5.i = getelementptr inbounds [1 x i64], [1 x i64]* %2805, i64 0, i64 0
  %2806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %2807 = getelementptr inbounds %struct.MMX, %struct.MMX* %2806, i32 0, i32 0
  %2808 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %2807, i64 0, i64 6
  %2809 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %2808, i32 0, i32 1
  %2810 = bitcast %union.vec64_t* %2809 to %struct.uint64v1_t*
  %2811 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %2810, i32 0, i32 0
  %MM6.i = getelementptr inbounds [1 x i64], [1 x i64]* %2811, i64 0, i64 0
  %2812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %2813 = getelementptr inbounds %struct.MMX, %struct.MMX* %2812, i32 0, i32 0
  %2814 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %2813, i64 0, i64 7
  %2815 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %2814, i32 0, i32 1
  %2816 = bitcast %union.vec64_t* %2815 to %struct.uint64v1_t*
  %2817 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %2816, i32 0, i32 0
  %MM7.i = getelementptr inbounds [1 x i64], [1 x i64]* %2817, i64 0, i64 0
  %2818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %AF.i = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %2818, i32 0, i32 5
  %2819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %CF.i = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %2819, i32 0, i32 1
  %2820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %DF.i = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %2820, i32 0, i32 11
  %2821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %OF.i = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %2821, i32 0, i32 13
  %2822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %PF.i = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %2822, i32 0, i32 3
  %2823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %SF.i = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %2823, i32 0, i32 9
  %2824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %ZF.i = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %2824, i32 0, i32 7
  store i64* @DR0, i64** %_DR0.i, align 8, !noalias !2469
  store i64* @DR1, i64** %_DR1.i, align 8, !noalias !2469
  store i64* @DR2, i64** %_DR2.i, align 8, !noalias !2469
  store i64* @DR3, i64** %_DR3.i, align 8, !noalias !2469
  store i64* @DR4, i64** %_DR4.i, align 8, !noalias !2469
  store i64* @DR5, i64** %_DR5.i, align 8, !noalias !2469
  store i64* @DR6, i64** %_DR6.i, align 8, !noalias !2469
  store i64* @DR7, i64** %_DR7.i, align 8, !noalias !2469
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR0, i32 0, i32 0), i64** %CR0.i, align 8, !noalias !2469
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR1, i32 0, i32 0), i64** %CR1.i, align 8, !noalias !2469
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR2, i32 0, i32 0), i64** %CR2.i, align 8, !noalias !2469
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR3, i32 0, i32 0), i64** %CR3.i, align 8, !noalias !2469
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR4, i32 0, i32 0), i64** %CR4.i, align 8, !noalias !2469
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR8, i32 0, i32 0), i64** %CR8.i, align 8, !noalias !2469
  %2825 = bitcast %"class.std::bitset"* %YMM0.i to double*
  %2826 = load double, double* %2825, !alias.scope !2473, !noalias !2474
  %2827 = load i64, i64* %RSP.i, !alias.scope !2473, !noalias !2474
  %2828 = load %struct.Memory*, %struct.Memory** %MEMORY.i, !noalias !2469
  %2829 = inttoptr i64 %2827 to i64*
  %2830 = load i64, i64* %2829
  store i64 %2830, i64* %PC.i, !alias.scope !2473, !noalias !2474
  %2831 = add i64 %2827, 8
  store i64 %2831, i64* %RSP.i, !alias.scope !2473, !noalias !2474
  %2832 = call double @cos(double %2826)
  store %"class.std::bitset" zeroinitializer, %"class.std::bitset"* %YMM0.i, !alias.scope !2473, !noalias !2474
  %2833 = bitcast %"class.std::bitset"* %YMM0.i to double*
  store double %2832, double* %2833, !alias.scope !2473, !noalias !2474
  %2834 = load %struct.Memory*, %struct.Memory** %MEMORY.i, !noalias !2469
  %2835 = bitcast %struct.State** %state.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2835)
  %2836 = bitcast i64* %curr_pc.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2836)
  %2837 = bitcast %struct.Memory** %memory.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2837)
  call void @llvm.lifetime.end(i64 1, i8* %BRANCH_TAKEN.i)
  %2838 = bitcast i64* %SS_BASE.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2838)
  %2839 = bitcast i64* %ES_BASE.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2839)
  %2840 = bitcast i64* %DS_BASE.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2840)
  %2841 = bitcast i64* %CS_BASE.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2841)
  %2842 = bitcast %struct.State** %STATE.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2842)
  %2843 = bitcast %struct.Memory** %MEMORY.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2843)
  %2844 = bitcast i64** %_DR0.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2844)
  %2845 = bitcast i64** %_DR1.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2845)
  %2846 = bitcast i64** %_DR2.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2846)
  %2847 = bitcast i64** %_DR3.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2847)
  %2848 = bitcast i64** %_DR4.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2848)
  %2849 = bitcast i64** %_DR5.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2849)
  %2850 = bitcast i64** %_DR6.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2850)
  %2851 = bitcast i64** %_DR7.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2851)
  %2852 = bitcast i64** %CR0.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2852)
  %2853 = bitcast i64** %CR1.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2853)
  %2854 = bitcast i64** %CR2.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2854)
  %2855 = bitcast i64** %CR3.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2855)
  %2856 = bitcast i64** %CR4.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2856)
  %2857 = bitcast i64** %CR8.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2857)
  %2858 = load i64, i64* %RBP
  %2859 = sub i64 %2858, 272
  %2860 = bitcast %union.vec128_t* %XMM0 to i8*
  %2861 = load i64, i64* %PC
  %2862 = add i64 %2861, 8
  store i64 %2862, i64* %PC
  %2863 = bitcast i8* %2860 to double*
  %2864 = load double, double* %2863, align 1
  %2865 = inttoptr i64 %2859 to double*
  store double %2864, double* %2865
  %2866 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2867 = load i64, i64* %RBP
  %2868 = sub i64 %2867, 256
  %2869 = load i64, i64* %PC
  %2870 = add i64 %2869, 8
  store i64 %2870, i64* %PC
  %2871 = inttoptr i64 %2868 to double*
  %2872 = load double, double* %2871
  %2873 = bitcast i8* %2866 to double*
  store double %2872, double* %2873, align 1, !tbaa !2452
  %2874 = getelementptr inbounds i8, i8* %2866, i64 8
  %2875 = bitcast i8* %2874 to double*
  store double 0.000000e+00, double* %2875, align 1, !tbaa !2452
  %2876 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2877 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2878 = load i64, i64* %RBP
  %2879 = sub i64 %2878, 264
  %2880 = load i64, i64* %PC
  %2881 = add i64 %2880, 8
  store i64 %2881, i64* %PC
  %2882 = bitcast i8* %2877 to double*
  %2883 = load double, double* %2882, align 1
  %2884 = getelementptr inbounds i8, i8* %2877, i64 8
  %2885 = bitcast i8* %2884 to i64*
  %2886 = load i64, i64* %2885, align 1
  %2887 = inttoptr i64 %2879 to double*
  %2888 = load double, double* %2887
  %2889 = fmul double %2883, %2888
  %2890 = bitcast i8* %2876 to double*
  store double %2889, double* %2890, align 1, !tbaa !2452
  %2891 = getelementptr inbounds i8, i8* %2876, i64 8
  %2892 = bitcast i8* %2891 to i64*
  store i64 %2886, i64* %2892, align 1, !tbaa !2452
  %2893 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2894 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2895 = load i64, i64* %RBP
  %2896 = sub i64 %2895, 264
  %2897 = load i64, i64* %PC
  %2898 = add i64 %2897, 8
  store i64 %2898, i64* %PC
  %2899 = bitcast i8* %2894 to double*
  %2900 = load double, double* %2899, align 1
  %2901 = getelementptr inbounds i8, i8* %2894, i64 8
  %2902 = bitcast i8* %2901 to i64*
  %2903 = load i64, i64* %2902, align 1
  %2904 = inttoptr i64 %2896 to double*
  %2905 = load double, double* %2904
  %2906 = fmul double %2900, %2905
  %2907 = bitcast i8* %2893 to double*
  store double %2906, double* %2907, align 1, !tbaa !2452
  %2908 = getelementptr inbounds i8, i8* %2893, i64 8
  %2909 = bitcast i8* %2908 to i64*
  store i64 %2903, i64* %2909, align 1, !tbaa !2452
  %2910 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %2911 = load i64, i64* %RBP
  %2912 = sub i64 %2911, 296
  %2913 = load i64, i64* %PC
  %2914 = add i64 %2913, 8
  store i64 %2914, i64* %PC
  %2915 = inttoptr i64 %2912 to double*
  %2916 = load double, double* %2915
  %2917 = bitcast i8* %2910 to double*
  store double %2916, double* %2917, align 1, !tbaa !2452
  %2918 = getelementptr inbounds i8, i8* %2910, i64 8
  %2919 = bitcast i8* %2918 to double*
  store double 0.000000e+00, double* %2919, align 1, !tbaa !2452
  %2920 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %2921 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %2922 = bitcast %union.vec128_t* %XMM0 to i8*
  %2923 = load i64, i64* %PC
  %2924 = add i64 %2923, 4
  store i64 %2924, i64* %PC
  %2925 = bitcast i8* %2921 to double*
  %2926 = load double, double* %2925, align 1
  %2927 = getelementptr inbounds i8, i8* %2921, i64 8
  %2928 = bitcast i8* %2927 to i64*
  %2929 = load i64, i64* %2928, align 1
  %2930 = bitcast i8* %2922 to double*
  %2931 = load double, double* %2930, align 1
  %2932 = fdiv double %2926, %2931
  %2933 = bitcast i8* %2920 to double*
  store double %2932, double* %2933, align 1, !tbaa !2452
  %2934 = getelementptr inbounds i8, i8* %2920, i64 8
  %2935 = bitcast i8* %2934 to i64*
  store i64 %2929, i64* %2935, align 1, !tbaa !2452
  %2936 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %2937 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %2938 = load i64, i64* %RBP
  %2939 = sub i64 %2938, 40
  %2940 = load i64, i64* %PC
  %2941 = add i64 %2940, 5
  store i64 %2941, i64* %PC
  %2942 = bitcast i8* %2937 to double*
  %2943 = load double, double* %2942, align 1
  %2944 = getelementptr inbounds i8, i8* %2937, i64 8
  %2945 = bitcast i8* %2944 to i64*
  %2946 = load i64, i64* %2945, align 1
  %2947 = inttoptr i64 %2939 to double*
  %2948 = load double, double* %2947
  %2949 = fadd double %2943, %2948
  %2950 = bitcast i8* %2936 to double*
  store double %2949, double* %2950, align 1, !tbaa !2452
  %2951 = getelementptr inbounds i8, i8* %2936, i64 8
  %2952 = bitcast i8* %2951 to i64*
  store i64 %2946, i64* %2952, align 1, !tbaa !2452
  %2953 = load i64, i64* %RBP
  %2954 = sub i64 %2953, 40
  %2955 = bitcast %union.vec128_t* %XMM1 to i8*
  %2956 = load i64, i64* %PC
  %2957 = add i64 %2956, 5
  store i64 %2957, i64* %PC
  %2958 = bitcast i8* %2955 to double*
  %2959 = load double, double* %2958, align 1
  %2960 = inttoptr i64 %2954 to double*
  store double %2959, double* %2960
  %2961 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2962 = load i64, i64* %RBP
  %2963 = sub i64 %2962, 256
  %2964 = load i64, i64* %PC
  %2965 = add i64 %2964, 8
  store i64 %2965, i64* %PC
  %2966 = inttoptr i64 %2963 to double*
  %2967 = load double, double* %2966
  %2968 = bitcast i8* %2961 to double*
  store double %2967, double* %2968, align 1, !tbaa !2452
  %2969 = getelementptr inbounds i8, i8* %2961, i64 8
  %2970 = bitcast i8* %2969 to double*
  store double 0.000000e+00, double* %2970, align 1, !tbaa !2452
  %2971 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2972 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2973 = load i64, i64* %RBP
  %2974 = sub i64 %2973, 272
  %2975 = load i64, i64* %PC
  %2976 = add i64 %2975, 8
  store i64 %2976, i64* %PC
  %2977 = bitcast i8* %2972 to double*
  %2978 = load double, double* %2977, align 1
  %2979 = getelementptr inbounds i8, i8* %2972, i64 8
  %2980 = bitcast i8* %2979 to i64*
  %2981 = load i64, i64* %2980, align 1
  %2982 = inttoptr i64 %2974 to double*
  %2983 = load double, double* %2982
  %2984 = fmul double %2978, %2983
  %2985 = bitcast i8* %2971 to double*
  store double %2984, double* %2985, align 1, !tbaa !2452
  %2986 = getelementptr inbounds i8, i8* %2971, i64 8
  %2987 = bitcast i8* %2986 to i64*
  store i64 %2981, i64* %2987, align 1, !tbaa !2452
  %2988 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2989 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2990 = load i64, i64* %RBP
  %2991 = sub i64 %2990, 272
  %2992 = load i64, i64* %PC
  %2993 = add i64 %2992, 8
  store i64 %2993, i64* %PC
  %2994 = bitcast i8* %2989 to double*
  %2995 = load double, double* %2994, align 1
  %2996 = getelementptr inbounds i8, i8* %2989, i64 8
  %2997 = bitcast i8* %2996 to i64*
  %2998 = load i64, i64* %2997, align 1
  %2999 = inttoptr i64 %2991 to double*
  %3000 = load double, double* %2999
  %3001 = fmul double %2995, %3000
  %3002 = bitcast i8* %2988 to double*
  store double %3001, double* %3002, align 1, !tbaa !2452
  %3003 = getelementptr inbounds i8, i8* %2988, i64 8
  %3004 = bitcast i8* %3003 to i64*
  store i64 %2998, i64* %3004, align 1, !tbaa !2452
  %3005 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %3006 = load i64, i64* %RBP
  %3007 = sub i64 %3006, 296
  %3008 = load i64, i64* %PC
  %3009 = add i64 %3008, 8
  store i64 %3009, i64* %PC
  %3010 = inttoptr i64 %3007 to double*
  %3011 = load double, double* %3010
  %3012 = bitcast i8* %3005 to double*
  store double %3011, double* %3012, align 1, !tbaa !2452
  %3013 = getelementptr inbounds i8, i8* %3005, i64 8
  %3014 = bitcast i8* %3013 to double*
  store double 0.000000e+00, double* %3014, align 1, !tbaa !2452
  %3015 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %3016 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %3017 = bitcast %union.vec128_t* %XMM0 to i8*
  %3018 = load i64, i64* %PC
  %3019 = add i64 %3018, 4
  store i64 %3019, i64* %PC
  %3020 = bitcast i8* %3016 to double*
  %3021 = load double, double* %3020, align 1
  %3022 = getelementptr inbounds i8, i8* %3016, i64 8
  %3023 = bitcast i8* %3022 to i64*
  %3024 = load i64, i64* %3023, align 1
  %3025 = bitcast i8* %3017 to double*
  %3026 = load double, double* %3025, align 1
  %3027 = fdiv double %3021, %3026
  %3028 = bitcast i8* %3015 to double*
  store double %3027, double* %3028, align 1, !tbaa !2452
  %3029 = getelementptr inbounds i8, i8* %3015, i64 8
  %3030 = bitcast i8* %3029 to i64*
  store i64 %3024, i64* %3030, align 1, !tbaa !2452
  %3031 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %3032 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %3033 = load i64, i64* %RBP
  %3034 = sub i64 %3033, 48
  %3035 = load i64, i64* %PC
  %3036 = add i64 %3035, 5
  store i64 %3036, i64* %PC
  %3037 = bitcast i8* %3032 to double*
  %3038 = load double, double* %3037, align 1
  %3039 = getelementptr inbounds i8, i8* %3032, i64 8
  %3040 = bitcast i8* %3039 to i64*
  %3041 = load i64, i64* %3040, align 1
  %3042 = inttoptr i64 %3034 to double*
  %3043 = load double, double* %3042
  %3044 = fadd double %3038, %3043
  %3045 = bitcast i8* %3031 to double*
  store double %3044, double* %3045, align 1, !tbaa !2452
  %3046 = getelementptr inbounds i8, i8* %3031, i64 8
  %3047 = bitcast i8* %3046 to i64*
  store i64 %3041, i64* %3047, align 1, !tbaa !2452
  %3048 = load i64, i64* %RBP
  %3049 = sub i64 %3048, 48
  %3050 = bitcast %union.vec128_t* %XMM1 to i8*
  %3051 = load i64, i64* %PC
  %3052 = add i64 %3051, 5
  store i64 %3052, i64* %PC
  %3053 = bitcast i8* %3050 to double*
  %3054 = load double, double* %3053, align 1
  %3055 = inttoptr i64 %3049 to double*
  store double %3054, double* %3055
  %3056 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %3057 = load i64, i64* %PC
  %3058 = add i64 %3057, 8
  store i64 %3058, i64* %PC
  %3059 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_400c20__rodata_type* @seg_400c20__rodata to i64), i64 8) to double*)
  %3060 = bitcast i8* %3056 to double*
  store double %3059, double* %3060, align 1, !tbaa !2452
  %3061 = getelementptr inbounds i8, i8* %3056, i64 8
  %3062 = bitcast i8* %3061 to double*
  store double 0.000000e+00, double* %3062, align 1, !tbaa !2452
  %3063 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %3064 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %3065 = load i64, i64* %RBP
  %3066 = sub i64 %3065, 248
  %3067 = load i64, i64* %PC
  %3068 = add i64 %3067, 8
  store i64 %3068, i64* %PC
  %3069 = bitcast i8* %3064 to double*
  %3070 = load double, double* %3069, align 1
  %3071 = getelementptr inbounds i8, i8* %3064, i64 8
  %3072 = bitcast i8* %3071 to i64*
  %3073 = load i64, i64* %3072, align 1
  %3074 = inttoptr i64 %3066 to double*
  %3075 = load double, double* %3074
  %3076 = fadd double %3070, %3075
  %3077 = bitcast i8* %3063 to double*
  store double %3076, double* %3077, align 1, !tbaa !2452
  %3078 = getelementptr inbounds i8, i8* %3063, i64 8
  %3079 = bitcast i8* %3078 to i64*
  store i64 %3073, i64* %3079, align 1, !tbaa !2452
  %3080 = load i64, i64* %RBP
  %3081 = sub i64 %3080, 248
  %3082 = bitcast %union.vec128_t* %XMM0 to i8*
  %3083 = load i64, i64* %PC
  %3084 = add i64 %3083, 8
  store i64 %3084, i64* %PC
  %3085 = bitcast i8* %3082 to double*
  %3086 = load double, double* %3085, align 1
  %3087 = inttoptr i64 %3081 to double*
  store double %3086, double* %3087
  %3088 = load i64, i64* %PC
  %3089 = sub i64 %3088, 313
  %3090 = load i64, i64* %PC
  %3091 = add i64 %3090, 5
  store i64 %3091, i64* %PC
  %3092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3089, i64* %3092, align 8, !tbaa !2428
  br label %block_4007d6

block_400924:                                     ; preds = %block_40093e, %block_400914
  %MEMORY.1 = phi %struct.Memory* [ %689, %block_400914 ], [ %3150, %block_40093e ]
  %3093 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %3094 = load i64, i64* %RBP
  %3095 = sub i64 %3094, 224
  %3096 = load i64, i64* %PC
  %3097 = add i64 %3096, 8
  store i64 %3097, i64* %PC
  %3098 = inttoptr i64 %3095 to double*
  %3099 = load double, double* %3098
  %3100 = bitcast i8* %3093 to double*
  store double %3099, double* %3100, align 1, !tbaa !2452
  %3101 = getelementptr inbounds i8, i8* %3093, i64 8
  %3102 = bitcast i8* %3101 to double*
  store double 0.000000e+00, double* %3102, align 1, !tbaa !2452
  %3103 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %3104 = load i64, i64* %RBP
  %3105 = sub i64 %3104, 276
  %3106 = load i64, i64* %PC
  %3107 = add i64 %3106, 8
  store i64 %3107, i64* %PC
  %3108 = inttoptr i64 %3105 to i32*
  %3109 = load i32, i32* %3108
  %3110 = sitofp i32 %3109 to double
  %3111 = bitcast i8* %3103 to double*
  store double %3110, double* %3111, align 1, !tbaa !2452
  %3112 = bitcast %union.vec128_t* %XMM1 to i8*
  %3113 = bitcast %union.vec128_t* %XMM0 to i8*
  %3114 = load i64, i64* %PC
  %3115 = add i64 %3114, 4
  store i64 %3115, i64* %PC
  %3116 = bitcast i8* %3112 to double*
  %3117 = load double, double* %3116, align 1
  %3118 = bitcast i8* %3113 to double*
  %3119 = load double, double* %3118, align 1
  %3120 = fcmp uno double %3117, %3119
  br i1 %3120, label %3121, label %3133

; <label>:3121:                                   ; preds = %block_400924
  %3122 = fadd double %3117, %3119
  %3123 = bitcast double %3122 to i64
  %3124 = and i64 %3123, 9221120237041090560
  %3125 = icmp eq i64 %3124, 9218868437227405312
  %3126 = and i64 %3123, 2251799813685247
  %3127 = icmp ne i64 %3126, 0
  %3128 = and i1 %3125, %3127
  br i1 %3128, label %3129, label %3139

; <label>:3129:                                   ; preds = %3121
  %3130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3131 = load i64, i64* %3130, align 8, !tbaa !2428
  %3132 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3131, %struct.Memory* %MEMORY.1) #18
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:3133:                                   ; preds = %block_400924
  %3134 = fcmp ogt double %3117, %3119
  br i1 %3134, label %3139, label %3135

; <label>:3135:                                   ; preds = %3133
  %3136 = fcmp olt double %3117, %3119
  br i1 %3136, label %3139, label %3137

; <label>:3137:                                   ; preds = %3135
  %3138 = fcmp oeq double %3117, %3119
  br i1 %3138, label %3139, label %3146

; <label>:3139:                                   ; preds = %3137, %3135, %3133, %3121
  %3140 = phi i8 [ 0, %3133 ], [ 0, %3135 ], [ 1, %3137 ], [ 1, %3121 ]
  %3141 = phi i8 [ 0, %3133 ], [ 0, %3135 ], [ 0, %3137 ], [ 1, %3121 ]
  %3142 = phi i8 [ 0, %3133 ], [ 1, %3135 ], [ 0, %3137 ], [ 1, %3121 ]
  %3143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3140, i8* %3143, align 1, !tbaa !2456
  %3144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3141, i8* %3144, align 1, !tbaa !2456
  %3145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3142, i8* %3145, align 1, !tbaa !2456
  br label %3146

; <label>:3146:                                   ; preds = %3139, %3137
  %3147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3147, align 1, !tbaa !2456
  %3148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3148, align 1, !tbaa !2456
  %3149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3149, align 1, !tbaa !2456
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %3129, %3146
  %3150 = phi %struct.Memory* [ %3132, %3129 ], [ %MEMORY.1, %3146 ]
  %3151 = load i64, i64* %PC
  %3152 = add i64 %3151, 221
  %3153 = load i64, i64* %PC
  %3154 = add i64 %3153, 6
  %3155 = load i64, i64* %PC
  %3156 = add i64 %3155, 6
  store i64 %3156, i64* %PC
  %3157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3158 = load i8, i8* %3157, align 1, !tbaa !2432
  store i8 %3158, i8* %BRANCH_TAKEN, align 1, !tbaa !2456
  %3159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3160 = icmp ne i8 %3158, 0
  %3161 = select i1 %3160, i64 %3152, i64 %3154
  store i64 %3161, i64* %3159, align 8, !tbaa !2428
  %3162 = load i8, i8* %BRANCH_TAKEN
  %3163 = icmp eq i8 %3162, 1
  br i1 %3163, label %block_400a15, label %block_40093e

block_40093e:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit
  %3164 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %3165 = load i64, i64* %RBP
  %3166 = sub i64 %3165, 160
  %3167 = load i64, i64* %PC
  %3168 = add i64 %3167, 8
  store i64 %3168, i64* %PC
  %3169 = inttoptr i64 %3166 to double*
  %3170 = load double, double* %3169
  %3171 = add i64 %3166, 8
  %3172 = inttoptr i64 %3171 to double*
  %3173 = load double, double* %3172
  %3174 = bitcast i8* %3164 to double*
  store double %3170, double* %3174, align 1, !tbaa !2452
  %3175 = getelementptr inbounds i8, i8* %3164, i64 8
  %3176 = bitcast i8* %3175 to double*
  store double %3173, double* %3176, align 1, !tbaa !2452
  %3177 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %3178 = load i64, i64* %RBP
  %3179 = sub i64 %3178, 224
  %3180 = load i64, i64* %PC
  %3181 = add i64 %3180, 8
  store i64 %3181, i64* %PC
  %3182 = inttoptr i64 %3179 to double*
  %3183 = load double, double* %3182
  %3184 = add i64 %3179, 8
  %3185 = inttoptr i64 %3184 to double*
  %3186 = load double, double* %3185
  %3187 = bitcast i8* %3177 to double*
  store double %3183, double* %3187, align 1, !tbaa !2452
  %3188 = getelementptr inbounds i8, i8* %3177, i64 8
  %3189 = bitcast i8* %3188 to double*
  store double %3186, double* %3189, align 1, !tbaa !2452
  %3190 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %3191 = load i64, i64* %RBP
  %3192 = sub i64 %3191, 224
  %3193 = load i64, i64* %PC
  %3194 = add i64 %3193, 8
  store i64 %3194, i64* %PC
  %3195 = inttoptr i64 %3192 to double*
  %3196 = load double, double* %3195
  %3197 = add i64 %3192, 8
  %3198 = inttoptr i64 %3197 to double*
  %3199 = load double, double* %3198
  %3200 = bitcast i8* %3190 to double*
  store double %3196, double* %3200, align 1, !tbaa !2452
  %3201 = getelementptr inbounds i8, i8* %3190, i64 8
  %3202 = bitcast i8* %3201 to double*
  store double %3199, double* %3202, align 1, !tbaa !2452
  %3203 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %3204 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %3205 = load i64, i64* %RBP
  %3206 = sub i64 %3205, 160
  %3207 = load i64, i64* %PC
  %3208 = add i64 %3207, 8
  store i64 %3208, i64* %PC
  %3209 = bitcast i8* %3204 to <2 x double>*
  %3210 = load <2 x double>, <2 x double>* %3209, align 1
  %3211 = inttoptr i64 %3206 to double*
  %3212 = load double, double* %3211
  %3213 = add i64 %3206, 8
  %3214 = inttoptr i64 %3213 to double*
  %3215 = load double, double* %3214
  %3216 = insertelement <2 x double> undef, double %3212, i32 0
  %3217 = insertelement <2 x double> %3216, double %3215, i32 1
  %3218 = fadd <2 x double> %3210, %3217
  %3219 = bitcast i8* %3203 to <2 x double>*
  store <2 x double> %3218, <2 x double>* %3219, align 1, !tbaa !2452
  %3220 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %3221 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %3222 = bitcast %union.vec128_t* %XMM2 to i8*
  %3223 = load i64, i64* %PC
  %3224 = add i64 %3223, 4
  store i64 %3224, i64* %PC
  %3225 = bitcast i8* %3221 to <2 x double>*
  %3226 = load <2 x double>, <2 x double>* %3225, align 1
  %3227 = bitcast i8* %3222 to <2 x double>*
  %3228 = load <2 x double>, <2 x double>* %3227, align 1
  %3229 = fmul <2 x double> %3226, %3228
  %3230 = bitcast i8* %3220 to <2 x double>*
  store <2 x double> %3229, <2 x double>* %3230, align 1, !tbaa !2452
  %3231 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %3232 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %3233 = bitcast %union.vec128_t* %XMM1 to i8*
  %3234 = load i64, i64* %PC
  %3235 = add i64 %3234, 4
  store i64 %3235, i64* %PC
  %3236 = bitcast i8* %3232 to <2 x double>*
  %3237 = load <2 x double>, <2 x double>* %3236, align 1
  %3238 = bitcast i8* %3233 to <2 x double>*
  %3239 = load <2 x double>, <2 x double>* %3238, align 1
  %3240 = fdiv <2 x double> %3237, %3239
  %3241 = bitcast i8* %3231 to <2 x double>*
  store <2 x double> %3240, <2 x double>* %3241, align 1, !tbaa !2452
  %3242 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %3243 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %3244 = load i64, i64* %RBP
  %3245 = sub i64 %3244, 96
  %3246 = load i64, i64* %PC
  %3247 = add i64 %3246, 5
  store i64 %3247, i64* %PC
  %3248 = bitcast i8* %3243 to <2 x double>*
  %3249 = load <2 x double>, <2 x double>* %3248, align 1
  %3250 = inttoptr i64 %3245 to double*
  %3251 = load double, double* %3250
  %3252 = add i64 %3245, 8
  %3253 = inttoptr i64 %3252 to double*
  %3254 = load double, double* %3253
  %3255 = insertelement <2 x double> undef, double %3251, i32 0
  %3256 = insertelement <2 x double> %3255, double %3254, i32 1
  %3257 = fadd <2 x double> %3249, %3256
  %3258 = bitcast i8* %3242 to <2 x double>*
  store <2 x double> %3257, <2 x double>* %3258, align 1, !tbaa !2452
  %3259 = load i64, i64* %RBP
  %3260 = sub i64 %3259, 96
  %3261 = bitcast %union.vec128_t* %XMM0 to i8*
  %3262 = load i64, i64* %PC
  %3263 = add i64 %3262, 5
  store i64 %3263, i64* %PC
  %3264 = bitcast i8* %3261 to double*
  %3265 = load double, double* %3264, align 1
  %3266 = getelementptr inbounds i8, i8* %3261, i64 8
  %3267 = bitcast i8* %3266 to double*
  %3268 = load double, double* %3267, align 1
  %3269 = inttoptr i64 %3260 to double*
  store double %3265, double* %3269
  %3270 = add i64 %3260, 8
  %3271 = inttoptr i64 %3270 to double*
  store double %3268, double* %3271
  %3272 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %3273 = load i64, i64* %RBP
  %3274 = sub i64 %3273, 160
  %3275 = load i64, i64* %PC
  %3276 = add i64 %3275, 8
  store i64 %3276, i64* %PC
  %3277 = inttoptr i64 %3274 to double*
  %3278 = load double, double* %3277
  %3279 = add i64 %3274, 8
  %3280 = inttoptr i64 %3279 to double*
  %3281 = load double, double* %3280
  %3282 = bitcast i8* %3272 to double*
  store double %3278, double* %3282, align 1, !tbaa !2452
  %3283 = getelementptr inbounds i8, i8* %3272, i64 8
  %3284 = bitcast i8* %3283 to double*
  store double %3281, double* %3284, align 1, !tbaa !2452
  %3285 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %3286 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %3287 = load i64, i64* %RBP
  %3288 = sub i64 %3287, 224
  %3289 = load i64, i64* %PC
  %3290 = add i64 %3289, 8
  store i64 %3290, i64* %PC
  %3291 = bitcast i8* %3286 to <2 x double>*
  %3292 = load <2 x double>, <2 x double>* %3291, align 1
  %3293 = inttoptr i64 %3288 to double*
  %3294 = load double, double* %3293
  %3295 = add i64 %3288, 8
  %3296 = inttoptr i64 %3295 to double*
  %3297 = load double, double* %3296
  %3298 = insertelement <2 x double> undef, double %3294, i32 0
  %3299 = insertelement <2 x double> %3298, double %3297, i32 1
  %3300 = fdiv <2 x double> %3292, %3299
  %3301 = bitcast i8* %3285 to <2 x double>*
  store <2 x double> %3300, <2 x double>* %3301, align 1, !tbaa !2452
  %3302 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %3303 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %3304 = load i64, i64* %RBP
  %3305 = sub i64 %3304, 64
  %3306 = load i64, i64* %PC
  %3307 = add i64 %3306, 5
  store i64 %3307, i64* %PC
  %3308 = bitcast i8* %3303 to <2 x double>*
  %3309 = load <2 x double>, <2 x double>* %3308, align 1
  %3310 = inttoptr i64 %3305 to double*
  %3311 = load double, double* %3310
  %3312 = add i64 %3305, 8
  %3313 = inttoptr i64 %3312 to double*
  %3314 = load double, double* %3313
  %3315 = insertelement <2 x double> undef, double %3311, i32 0
  %3316 = insertelement <2 x double> %3315, double %3314, i32 1
  %3317 = fadd <2 x double> %3309, %3316
  %3318 = bitcast i8* %3302 to <2 x double>*
  store <2 x double> %3317, <2 x double>* %3318, align 1, !tbaa !2452
  %3319 = load i64, i64* %RBP
  %3320 = sub i64 %3319, 64
  %3321 = bitcast %union.vec128_t* %XMM0 to i8*
  %3322 = load i64, i64* %PC
  %3323 = add i64 %3322, 5
  store i64 %3323, i64* %PC
  %3324 = bitcast i8* %3321 to double*
  %3325 = load double, double* %3324, align 1
  %3326 = getelementptr inbounds i8, i8* %3321, i64 8
  %3327 = bitcast i8* %3326 to double*
  %3328 = load double, double* %3327, align 1
  %3329 = inttoptr i64 %3320 to double*
  store double %3325, double* %3329
  %3330 = add i64 %3320, 8
  %3331 = inttoptr i64 %3330 to double*
  store double %3328, double* %3331
  %3332 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %3333 = load i64, i64* %RBP
  %3334 = sub i64 %3333, 160
  %3335 = load i64, i64* %PC
  %3336 = add i64 %3335, 8
  store i64 %3336, i64* %PC
  %3337 = inttoptr i64 %3334 to double*
  %3338 = load double, double* %3337
  %3339 = add i64 %3334, 8
  %3340 = inttoptr i64 %3339 to double*
  %3341 = load double, double* %3340
  %3342 = bitcast i8* %3332 to double*
  store double %3338, double* %3342, align 1, !tbaa !2452
  %3343 = getelementptr inbounds i8, i8* %3332, i64 8
  %3344 = bitcast i8* %3343 to double*
  store double %3341, double* %3344, align 1, !tbaa !2452
  %3345 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %3346 = load i64, i64* %RBP
  %3347 = sub i64 %3346, 224
  %3348 = load i64, i64* %PC
  %3349 = add i64 %3348, 8
  store i64 %3349, i64* %PC
  %3350 = inttoptr i64 %3347 to double*
  %3351 = load double, double* %3350
  %3352 = add i64 %3347, 8
  %3353 = inttoptr i64 %3352 to double*
  %3354 = load double, double* %3353
  %3355 = bitcast i8* %3345 to double*
  store double %3351, double* %3355, align 1, !tbaa !2452
  %3356 = getelementptr inbounds i8, i8* %3345, i64 8
  %3357 = bitcast i8* %3356 to double*
  store double %3354, double* %3357, align 1, !tbaa !2452
  %3358 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %3359 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %3360 = load i64, i64* %RBP
  %3361 = sub i64 %3360, 224
  %3362 = load i64, i64* %PC
  %3363 = add i64 %3362, 8
  store i64 %3363, i64* %PC
  %3364 = bitcast i8* %3359 to <2 x double>*
  %3365 = load <2 x double>, <2 x double>* %3364, align 1
  %3366 = inttoptr i64 %3361 to double*
  %3367 = load double, double* %3366
  %3368 = add i64 %3361, 8
  %3369 = inttoptr i64 %3368 to double*
  %3370 = load double, double* %3369
  %3371 = insertelement <2 x double> undef, double %3367, i32 0
  %3372 = insertelement <2 x double> %3371, double %3370, i32 1
  %3373 = fmul <2 x double> %3365, %3372
  %3374 = bitcast i8* %3358 to <2 x double>*
  store <2 x double> %3373, <2 x double>* %3374, align 1, !tbaa !2452
  %3375 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %3376 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %3377 = bitcast %union.vec128_t* %XMM1 to i8*
  %3378 = load i64, i64* %PC
  %3379 = add i64 %3378, 4
  store i64 %3379, i64* %PC
  %3380 = bitcast i8* %3376 to <2 x double>*
  %3381 = load <2 x double>, <2 x double>* %3380, align 1
  %3382 = bitcast i8* %3377 to <2 x double>*
  %3383 = load <2 x double>, <2 x double>* %3382, align 1
  %3384 = fdiv <2 x double> %3381, %3383
  %3385 = bitcast i8* %3375 to <2 x double>*
  store <2 x double> %3384, <2 x double>* %3385, align 1, !tbaa !2452
  %3386 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %3387 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %3388 = load i64, i64* %RBP
  %3389 = sub i64 %3388, 80
  %3390 = load i64, i64* %PC
  %3391 = add i64 %3390, 5
  store i64 %3391, i64* %PC
  %3392 = bitcast i8* %3387 to <2 x double>*
  %3393 = load <2 x double>, <2 x double>* %3392, align 1
  %3394 = inttoptr i64 %3389 to double*
  %3395 = load double, double* %3394
  %3396 = add i64 %3389, 8
  %3397 = inttoptr i64 %3396 to double*
  %3398 = load double, double* %3397
  %3399 = insertelement <2 x double> undef, double %3395, i32 0
  %3400 = insertelement <2 x double> %3399, double %3398, i32 1
  %3401 = fadd <2 x double> %3393, %3400
  %3402 = bitcast i8* %3386 to <2 x double>*
  store <2 x double> %3401, <2 x double>* %3402, align 1, !tbaa !2452
  %3403 = load i64, i64* %RBP
  %3404 = sub i64 %3403, 80
  %3405 = bitcast %union.vec128_t* %XMM0 to i8*
  %3406 = load i64, i64* %PC
  %3407 = add i64 %3406, 5
  store i64 %3407, i64* %PC
  %3408 = bitcast i8* %3405 to double*
  %3409 = load double, double* %3408, align 1
  %3410 = getelementptr inbounds i8, i8* %3405, i64 8
  %3411 = bitcast i8* %3410 to double*
  %3412 = load double, double* %3411, align 1
  %3413 = inttoptr i64 %3404 to double*
  store double %3409, double* %3413
  %3414 = add i64 %3404, 8
  %3415 = inttoptr i64 %3414 to double*
  store double %3412, double* %3415
  %3416 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %3417 = load i64, i64* %RBP
  %3418 = sub i64 %3417, 240
  %3419 = load i64, i64* %PC
  %3420 = add i64 %3419, 8
  store i64 %3420, i64* %PC
  %3421 = inttoptr i64 %3418 to double*
  %3422 = load double, double* %3421
  %3423 = add i64 %3418, 8
  %3424 = inttoptr i64 %3423 to double*
  %3425 = load double, double* %3424
  %3426 = bitcast i8* %3416 to double*
  store double %3422, double* %3426, align 1, !tbaa !2452
  %3427 = getelementptr inbounds i8, i8* %3416, i64 8
  %3428 = bitcast i8* %3427 to double*
  store double %3425, double* %3428, align 1, !tbaa !2452
  %3429 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %3430 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %3431 = load i64, i64* %RBP
  %3432 = sub i64 %3431, 224
  %3433 = load i64, i64* %PC
  %3434 = add i64 %3433, 8
  store i64 %3434, i64* %PC
  %3435 = bitcast i8* %3430 to <2 x double>*
  %3436 = load <2 x double>, <2 x double>* %3435, align 1
  %3437 = inttoptr i64 %3432 to double*
  %3438 = load double, double* %3437
  %3439 = add i64 %3432, 8
  %3440 = inttoptr i64 %3439 to double*
  %3441 = load double, double* %3440
  %3442 = insertelement <2 x double> undef, double %3438, i32 0
  %3443 = insertelement <2 x double> %3442, double %3441, i32 1
  %3444 = fdiv <2 x double> %3436, %3443
  %3445 = bitcast i8* %3429 to <2 x double>*
  store <2 x double> %3444, <2 x double>* %3445, align 1, !tbaa !2452
  %3446 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %3447 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %3448 = load i64, i64* %RBP
  %3449 = sub i64 %3448, 112
  %3450 = load i64, i64* %PC
  %3451 = add i64 %3450, 5
  store i64 %3451, i64* %PC
  %3452 = bitcast i8* %3447 to <2 x double>*
  %3453 = load <2 x double>, <2 x double>* %3452, align 1
  %3454 = inttoptr i64 %3449 to double*
  %3455 = load double, double* %3454
  %3456 = add i64 %3449, 8
  %3457 = inttoptr i64 %3456 to double*
  %3458 = load double, double* %3457
  %3459 = insertelement <2 x double> undef, double %3455, i32 0
  %3460 = insertelement <2 x double> %3459, double %3458, i32 1
  %3461 = fadd <2 x double> %3453, %3460
  %3462 = bitcast i8* %3446 to <2 x double>*
  store <2 x double> %3461, <2 x double>* %3462, align 1, !tbaa !2452
  %3463 = load i64, i64* %RBP
  %3464 = sub i64 %3463, 112
  %3465 = bitcast %union.vec128_t* %XMM0 to i8*
  %3466 = load i64, i64* %PC
  %3467 = add i64 %3466, 5
  store i64 %3467, i64* %PC
  %3468 = bitcast i8* %3465 to double*
  %3469 = load double, double* %3468, align 1
  %3470 = getelementptr inbounds i8, i8* %3465, i64 8
  %3471 = bitcast i8* %3470 to double*
  %3472 = load double, double* %3471, align 1
  %3473 = inttoptr i64 %3464 to double*
  store double %3469, double* %3473
  %3474 = add i64 %3464, 8
  %3475 = inttoptr i64 %3474 to double*
  store double %3472, double* %3475
  %3476 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %3477 = load i64, i64* %RBP
  %3478 = sub i64 %3477, 240
  %3479 = load i64, i64* %PC
  %3480 = add i64 %3479, 8
  store i64 %3480, i64* %PC
  %3481 = inttoptr i64 %3478 to double*
  %3482 = load double, double* %3481
  %3483 = add i64 %3478, 8
  %3484 = inttoptr i64 %3483 to double*
  %3485 = load double, double* %3484
  %3486 = bitcast i8* %3476 to double*
  store double %3482, double* %3486, align 1, !tbaa !2452
  %3487 = getelementptr inbounds i8, i8* %3476, i64 8
  %3488 = bitcast i8* %3487 to double*
  store double %3485, double* %3488, align 1, !tbaa !2452
  %3489 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %3490 = load i64, i64* %RBP
  %3491 = sub i64 %3490, 176
  %3492 = load i64, i64* %PC
  %3493 = add i64 %3492, 8
  store i64 %3493, i64* %PC
  %3494 = inttoptr i64 %3491 to double*
  %3495 = load double, double* %3494
  %3496 = add i64 %3491, 8
  %3497 = inttoptr i64 %3496 to double*
  %3498 = load double, double* %3497
  %3499 = bitcast i8* %3489 to double*
  store double %3495, double* %3499, align 1, !tbaa !2452
  %3500 = getelementptr inbounds i8, i8* %3489, i64 8
  %3501 = bitcast i8* %3500 to double*
  store double %3498, double* %3501, align 1, !tbaa !2452
  %3502 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %3503 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %3504 = load i64, i64* %RBP
  %3505 = sub i64 %3504, 224
  %3506 = load i64, i64* %PC
  %3507 = add i64 %3506, 8
  store i64 %3507, i64* %PC
  %3508 = bitcast i8* %3503 to <2 x double>*
  %3509 = load <2 x double>, <2 x double>* %3508, align 1
  %3510 = inttoptr i64 %3505 to double*
  %3511 = load double, double* %3510
  %3512 = add i64 %3505, 8
  %3513 = inttoptr i64 %3512 to double*
  %3514 = load double, double* %3513
  %3515 = insertelement <2 x double> undef, double %3511, i32 0
  %3516 = insertelement <2 x double> %3515, double %3514, i32 1
  %3517 = fmul <2 x double> %3509, %3516
  %3518 = bitcast i8* %3502 to <2 x double>*
  store <2 x double> %3517, <2 x double>* %3518, align 1, !tbaa !2452
  %3519 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %3520 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %3521 = load i64, i64* %RBP
  %3522 = sub i64 %3521, 160
  %3523 = load i64, i64* %PC
  %3524 = add i64 %3523, 8
  store i64 %3524, i64* %PC
  %3525 = bitcast i8* %3520 to <2 x double>*
  %3526 = load <2 x double>, <2 x double>* %3525, align 1
  %3527 = inttoptr i64 %3522 to double*
  %3528 = load double, double* %3527
  %3529 = add i64 %3522, 8
  %3530 = inttoptr i64 %3529 to double*
  %3531 = load double, double* %3530
  %3532 = insertelement <2 x double> undef, double %3528, i32 0
  %3533 = insertelement <2 x double> %3532, double %3531, i32 1
  %3534 = fsub <2 x double> %3526, %3533
  %3535 = bitcast i8* %3519 to <2 x double>*
  store <2 x double> %3534, <2 x double>* %3535, align 1, !tbaa !2452
  %3536 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %3537 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %3538 = bitcast %union.vec128_t* %XMM1 to i8*
  %3539 = load i64, i64* %PC
  %3540 = add i64 %3539, 4
  store i64 %3540, i64* %PC
  %3541 = bitcast i8* %3537 to <2 x double>*
  %3542 = load <2 x double>, <2 x double>* %3541, align 1
  %3543 = bitcast i8* %3538 to <2 x double>*
  %3544 = load <2 x double>, <2 x double>* %3543, align 1
  %3545 = fdiv <2 x double> %3542, %3544
  %3546 = bitcast i8* %3536 to <2 x double>*
  store <2 x double> %3545, <2 x double>* %3546, align 1, !tbaa !2452
  %3547 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %3548 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %3549 = load i64, i64* %RBP
  %3550 = sub i64 %3549, 128
  %3551 = load i64, i64* %PC
  %3552 = add i64 %3551, 5
  store i64 %3552, i64* %PC
  %3553 = bitcast i8* %3548 to <2 x double>*
  %3554 = load <2 x double>, <2 x double>* %3553, align 1
  %3555 = inttoptr i64 %3550 to double*
  %3556 = load double, double* %3555
  %3557 = add i64 %3550, 8
  %3558 = inttoptr i64 %3557 to double*
  %3559 = load double, double* %3558
  %3560 = insertelement <2 x double> undef, double %3556, i32 0
  %3561 = insertelement <2 x double> %3560, double %3559, i32 1
  %3562 = fadd <2 x double> %3554, %3561
  %3563 = bitcast i8* %3547 to <2 x double>*
  store <2 x double> %3562, <2 x double>* %3563, align 1, !tbaa !2452
  %3564 = load i64, i64* %RBP
  %3565 = sub i64 %3564, 128
  %3566 = bitcast %union.vec128_t* %XMM0 to i8*
  %3567 = load i64, i64* %PC
  %3568 = add i64 %3567, 5
  store i64 %3568, i64* %PC
  %3569 = bitcast i8* %3566 to double*
  %3570 = load double, double* %3569, align 1
  %3571 = getelementptr inbounds i8, i8* %3566, i64 8
  %3572 = bitcast i8* %3571 to double*
  %3573 = load double, double* %3572, align 1
  %3574 = inttoptr i64 %3565 to double*
  store double %3570, double* %3574
  %3575 = add i64 %3565, 8
  %3576 = inttoptr i64 %3575 to double*
  store double %3573, double* %3576
  %3577 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %3578 = load i64, i64* %RBP
  %3579 = sub i64 %3578, 176
  %3580 = load i64, i64* %PC
  %3581 = add i64 %3580, 8
  store i64 %3581, i64* %PC
  %3582 = inttoptr i64 %3579 to double*
  %3583 = load double, double* %3582
  %3584 = add i64 %3579, 8
  %3585 = inttoptr i64 %3584 to double*
  %3586 = load double, double* %3585
  %3587 = bitcast i8* %3577 to double*
  store double %3583, double* %3587, align 1, !tbaa !2452
  %3588 = getelementptr inbounds i8, i8* %3577, i64 8
  %3589 = bitcast i8* %3588 to double*
  store double %3586, double* %3589, align 1, !tbaa !2452
  %3590 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %3591 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %3592 = load i64, i64* %RBP
  %3593 = sub i64 %3592, 224
  %3594 = load i64, i64* %PC
  %3595 = add i64 %3594, 8
  store i64 %3595, i64* %PC
  %3596 = bitcast i8* %3591 to <2 x double>*
  %3597 = load <2 x double>, <2 x double>* %3596, align 1
  %3598 = inttoptr i64 %3593 to double*
  %3599 = load double, double* %3598
  %3600 = add i64 %3593, 8
  %3601 = inttoptr i64 %3600 to double*
  %3602 = load double, double* %3601
  %3603 = insertelement <2 x double> undef, double %3599, i32 0
  %3604 = insertelement <2 x double> %3603, double %3602, i32 1
  %3605 = fadd <2 x double> %3597, %3604
  %3606 = bitcast i8* %3590 to <2 x double>*
  store <2 x double> %3605, <2 x double>* %3606, align 1, !tbaa !2452
  %3607 = load i64, i64* %RBP
  %3608 = sub i64 %3607, 224
  %3609 = bitcast %union.vec128_t* %XMM0 to i8*
  %3610 = load i64, i64* %PC
  %3611 = add i64 %3610, 8
  store i64 %3611, i64* %PC
  %3612 = bitcast i8* %3609 to double*
  %3613 = load double, double* %3612, align 1
  %3614 = getelementptr inbounds i8, i8* %3609, i64 8
  %3615 = bitcast i8* %3614 to double*
  %3616 = load double, double* %3615, align 1
  %3617 = inttoptr i64 %3608 to double*
  store double %3613, double* %3617
  %3618 = add i64 %3608, 8
  %3619 = inttoptr i64 %3618 to double*
  store double %3616, double* %3619
  %3620 = load i64, i64* %PC
  %3621 = sub i64 %3620, 236
  %3622 = load i64, i64* %PC
  %3623 = add i64 %3622, 5
  store i64 %3623, i64* %PC
  %3624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3621, i64* %3624, align 8, !tbaa !2428
  br label %block_400924
}

; Function Attrs: noinline
define %struct.Memory* @sub_400690_sum_vec(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400690:
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
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %16 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %15, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %16 to %"class.std::bitset"*
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %18 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %17, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %18 to %union.vec128_t*
  %19 = load i64, i64* %RBP
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 1
  store i64 %21, i64* %PC
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %23 = load i64, i64* %22, align 8, !tbaa !2428
  %24 = add i64 %23, -8
  %25 = inttoptr i64 %24 to i64*
  store i64 %19, i64* %25
  store i64 %24, i64* %22, align 8, !tbaa !2428
  %26 = load i64, i64* %RSP
  %27 = load i64, i64* %PC
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC
  store i64 %26, i64* %RBP, align 8, !tbaa !2428
  %29 = load i64, i64* %RBP
  %30 = sub i64 %29, 16
  %31 = load i64, i64* %PC
  %32 = add i64 %31, 4
  store i64 %32, i64* %PC
  store i64 %30, i64* %RAX, align 8, !tbaa !2428
  %33 = load i64, i64* %RBP
  %34 = sub i64 %33, 16
  %35 = bitcast %union.vec128_t* %XMM0 to i8*
  %36 = load i64, i64* %PC
  %37 = add i64 %36, 5
  store i64 %37, i64* %PC
  %38 = bitcast i8* %35 to double*
  %39 = load double, double* %38, align 1
  %40 = getelementptr inbounds i8, i8* %35, i64 8
  %41 = bitcast i8* %40 to double*
  %42 = load double, double* %41, align 1
  %43 = inttoptr i64 %34 to double*
  store double %39, double* %43
  %44 = add i64 %34, 8
  %45 = inttoptr i64 %44 to double*
  store double %42, double* %45
  %46 = load i64, i64* %RBP
  %47 = sub i64 %46, 24
  %48 = load i64, i64* %RAX
  %49 = load i64, i64* %PC
  %50 = add i64 %49, 4
  store i64 %50, i64* %PC
  %51 = inttoptr i64 %47 to i64*
  store i64 %48, i64* %51
  %52 = load i64, i64* %RBP
  %53 = sub i64 %52, 24
  %54 = load i64, i64* %PC
  %55 = add i64 %54, 4
  store i64 %55, i64* %PC
  %56 = inttoptr i64 %53 to i64*
  %57 = load i64, i64* %56
  store i64 %57, i64* %RAX, align 8, !tbaa !2428
  %58 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %59 = load i64, i64* %RAX
  %60 = load i64, i64* %PC
  %61 = add i64 %60, 4
  store i64 %61, i64* %PC
  %62 = inttoptr i64 %59 to double*
  %63 = load double, double* %62
  %64 = bitcast i8* %58 to double*
  store double %63, double* %64, align 1, !tbaa !2452
  %65 = getelementptr inbounds i8, i8* %58, i64 8
  %66 = bitcast i8* %65 to double*
  store double 0.000000e+00, double* %66, align 1, !tbaa !2452
  %67 = load i64, i64* %RBP
  %68 = sub i64 %67, 24
  %69 = load i64, i64* %PC
  %70 = add i64 %69, 4
  store i64 %70, i64* %PC
  %71 = inttoptr i64 %68 to i64*
  %72 = load i64, i64* %71
  store i64 %72, i64* %RAX, align 8, !tbaa !2428
  %73 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %74 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %75 = load i64, i64* %RAX
  %76 = add i64 %75, 8
  %77 = load i64, i64* %PC
  %78 = add i64 %77, 5
  store i64 %78, i64* %PC
  %79 = bitcast i8* %74 to double*
  %80 = load double, double* %79, align 1
  %81 = getelementptr inbounds i8, i8* %74, i64 8
  %82 = bitcast i8* %81 to i64*
  %83 = load i64, i64* %82, align 1
  %84 = inttoptr i64 %76 to double*
  %85 = load double, double* %84
  %86 = fadd double %80, %85
  %87 = bitcast i8* %73 to double*
  store double %86, double* %87, align 1, !tbaa !2452
  %88 = getelementptr inbounds i8, i8* %73, i64 8
  %89 = bitcast i8* %88 to i64*
  store i64 %83, i64* %89, align 1, !tbaa !2452
  %90 = load i64, i64* %PC
  %91 = add i64 %90, 1
  store i64 %91, i64* %PC
  %92 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %93 = load i64, i64* %92, align 8, !tbaa !2428
  %94 = add i64 %93, 8
  %95 = inttoptr i64 %93 to i64*
  %96 = load i64, i64* %95
  store i64 %96, i64* %RBP, align 8, !tbaa !2428
  store i64 %94, i64* %92, align 8, !tbaa !2428
  %97 = load i64, i64* %PC
  %98 = add i64 %97, 1
  store i64 %98, i64* %PC
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %101 = load i64, i64* %100, align 8, !tbaa !2428
  %102 = inttoptr i64 %101 to i64*
  %103 = load i64, i64* %102
  store i64 %103, i64* %99, align 8, !tbaa !2428
  %104 = add i64 %101, 8
  store i64 %104, i64* %100, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_400c10___libc_csu_fini(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400c10:
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
define %struct.Memory* @sub_400590__dl_relocate_static_pie(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400590:
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
define %struct.Memory* @sub_400560__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400560:
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
  %46 = call i32 @llvm.ctpop.i32(i32 %45) #17
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
  %79 = call i32 @llvm.ctpop.i32(i32 %78) #17
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
  store i64 ptrtoint (void ()* @callback_sub_400c10___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  %108 = load i64, i64* %PC
  %109 = add i64 %108, 7
  store i64 %109, i64* %PC
  store i64 ptrtoint (void ()* @callback_sub_400ba0___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
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
  %123 = call %struct.Memory* @ext_602070___libc_start_main(%struct.State* %0, i64 %122, %struct.Memory* %2)
  %124 = load i64, i64* %PC
  %125 = add i64 %124, 1
  store i64 %125, i64* %PC
  %126 = load i64, i64* %PC
  %127 = tail call %struct.Memory* @__remill_error(%struct.State* %0, i64 %126, %struct.Memory* %123)
  ret %struct.Memory* %127
}

; Function Attrs: noinline
define %struct.Memory* @sub_400ba0___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400ba0:
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
  %119 = call i32 @llvm.ctpop.i32(i32 %118) #17
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
  %153 = call i32 @llvm.ctpop.i32(i32 %152) #17
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
  store i8 %181, i8* %183, align 1, !tbaa !2456
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %185 = trunc i64 %182 to i32
  %186 = and i32 %185, 255
  %187 = call i32 @llvm.ctpop.i32(i32 %186) #17
  %188 = trunc i32 %187 to i8
  %189 = and i8 %188, 1
  %190 = xor i8 %189, 1
  store i8 %190, i8* %184, align 1, !tbaa !2456
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %191, align 1, !tbaa !2456
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %193 = icmp eq i64 %182, 0
  %194 = zext i1 %193 to i8
  store i8 %194, i8* %192, align 1, !tbaa !2456
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %196 = lshr i64 %182, 63
  %197 = trunc i64 %196 to i8
  store i8 %197, i8* %195, align 1, !tbaa !2456
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %198, align 1, !tbaa !2456
  %199 = load i64, i64* %PC
  %200 = sub i64 %199, 1764
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
  %211 = call %struct.Memory* @sub_4004e8__init_proc(%struct.State* %0, i64 %210, %struct.Memory* %2)
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
  %220 = call i32 @llvm.ctpop.i32(i32 %219) #17
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
  store i8 %240, i8* %BRANCH_TAKEN, align 1, !tbaa !2456
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %242 = icmp ne i8 %240, 0
  %243 = select i1 %242, i64 %234, i64 %236
  store i64 %243, i64* %241, align 8, !tbaa !2428
  %244 = load i8, i8* %BRANCH_TAKEN
  %245 = icmp eq i8 %244, 1
  br i1 %245, label %block_400bf6, label %block_400bd6

block_400bf6:                                     ; preds = %block_400be0, %block_400ba0
  %MEMORY.0 = phi %struct.Memory* [ %211, %block_400ba0 ], [ %387, %block_400be0 ]
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
  %257 = call i32 @llvm.ctpop.i32(i32 %256) #17
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

block_400bd6:                                     ; preds = %block_400ba0
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
  %340 = call i32 @llvm.ctpop.i32(i32 %339) #17
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
  br label %block_400be0

block_400be0:                                     ; preds = %block_400be0, %block_400bd6
  %MEMORY.1 = phi %struct.Memory* [ %211, %block_400bd6 ], [ %387, %block_400be0 ]
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
  %399 = call i32 @llvm.ctpop.i32(i32 %398) #17
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
  %432 = call i32 @llvm.ctpop.i32(i32 %431) #17
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
  store i8 %466, i8* %BRANCH_TAKEN, align 1, !tbaa !2456
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %468 = select i1 %465, i64 %458, i64 %460
  store i64 %468, i64* %467, align 8, !tbaa !2428
  %469 = load i8, i8* %BRANCH_TAKEN
  %470 = icmp eq i8 %469, 1
  br i1 %470, label %block_400be0, label %block_400bf6
}

; Function Attrs: noinline
define %struct.Memory* @sub_400c14__term_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400c14:
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
  %18 = call i32 @llvm.ctpop.i32(i32 %17) #17
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
  %52 = call i32 @llvm.ctpop.i32(i32 %51) #17
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
define %struct.Memory* @sub_4005a0_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4005a0:
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
  %42 = call i32 @llvm.ctpop.i32(i32 %41) #17
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
  store i8 %76, i8* %BRANCH_TAKEN, align 1, !tbaa !2456
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %78 = icmp ne i8 %76, 0
  %79 = select i1 %78, i64 %70, i64 %72
  store i64 %79, i64* %77, align 8, !tbaa !2428
  %80 = load i8, i8* %BRANCH_TAKEN
  %81 = icmp eq i8 %80, 1
  br i1 %81, label %block_4005c8, label %block_4005b1

block_4005bb:                                     ; preds = %block_4005b1
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
    i64 4195786, label %block_4005ca
    i64 4195779, label %block_4005c3
  ]

block_4005b1:                                     ; preds = %block_4005a0
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
  %106 = call i32 @llvm.ctpop.i32(i32 %105) #17
  %107 = trunc i32 %106 to i8
  %108 = and i8 %107, 1
  %109 = xor i8 %108, 1
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %109, i8* %110, align 1, !tbaa !2446
  %111 = icmp eq i64 %102, 0
  %112 = zext i1 %111 to i8
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %112, i8* %113, align 1, !tbaa !2448
  %114 = lshr i64 %102, 63
  %115 = trunc i64 %114 to i8
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %115, i8* %116, align 1, !tbaa !2449
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %117, align 1, !tbaa !2450
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %118, align 1, !tbaa !2447
  %119 = load i64, i64* %PC
  %120 = add i64 %119, 15
  %121 = load i64, i64* %PC
  %122 = add i64 %121, 2
  %123 = load i64, i64* %PC
  %124 = add i64 %123, 2
  store i64 %124, i64* %PC
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %126 = load i8, i8* %125, align 1, !tbaa !2448
  store i8 %126, i8* %BRANCH_TAKEN, align 1, !tbaa !2456
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %128 = icmp ne i8 %126, 0
  %129 = select i1 %128, i64 %120, i64 %122
  store i64 %129, i64* %127, align 8, !tbaa !2428
  %130 = load i8, i8* %BRANCH_TAKEN
  %131 = icmp eq i8 %130, 1
  br i1 %131, label %block_4005c8, label %block_4005bb

block_4005c8:                                     ; preds = %block_4005c3, %block_4005b1, %block_4005a0
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4005a0 ], [ %2, %block_4005b1 ], [ %2, %block_4005c3 ]
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

block_4005ca:                                     ; preds = %block_4005bb
  %147 = load i64, i64* %RAX
  %148 = load i64, i64* %RAX
  %149 = add i64 %148, %147
  %150 = load i16, i16* %AX
  %151 = zext i16 %150 to i64
  %152 = load i64, i64* %PC
  %153 = add i64 %152, 6
  store i64 %153, i64* %PC
  %154 = load i64, i64* %PC
  %155 = tail call %struct.Memory* @sub_4005d0_register_tm_clones(%struct.State* %0, i64 %154, %struct.Memory* %2)
  ret %struct.Memory* %155

block_4005c3:                                     ; preds = %block_4005bb
  %156 = load i64, i64* %RAX
  %157 = load i64, i64* %RAX
  %158 = add i64 %157, %156
  %159 = load i32, i32* %EAX
  %160 = zext i32 %159 to i64
  %161 = load i64, i64* %PC
  %162 = add i64 %161, 5
  store i64 %162, i64* %PC
  br label %block_4005c8

; <label>:163:                                    ; preds = %block_4005bb
  %164 = load i64, i64* %PC
  %165 = tail call %struct.Memory* @__remill_jump(%struct.State* %0, i64 %164, %struct.Memory* %2)
  ret %struct.Memory* %165
}

; Function Attrs: noinline
define %struct.Memory* @sub_4005d0_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  %45 = call i32 @llvm.ctpop.i32(i32 %44) #17
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
  store i8 %77, i8* %79, align 1, !tbaa !2456
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %81 = trunc i64 %78 to i32
  %82 = and i32 %81, 255
  %83 = call i32 @llvm.ctpop.i32(i32 %82) #17
  %84 = trunc i32 %83 to i8
  %85 = and i8 %84, 1
  %86 = xor i8 %85, 1
  store i8 %86, i8* %80, align 1, !tbaa !2456
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %87, align 1, !tbaa !2456
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %89 = icmp eq i64 %78, 0
  %90 = zext i1 %89 to i8
  store i8 %90, i8* %88, align 1, !tbaa !2456
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %92 = lshr i64 %78, 63
  %93 = trunc i64 %92 to i8
  store i8 %93, i8* %91, align 1, !tbaa !2456
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %94, align 1, !tbaa !2456
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
  store i8 %103, i8* %105, align 1, !tbaa !2456
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %107 = trunc i64 %104 to i32
  %108 = and i32 %107, 255
  %109 = call i32 @llvm.ctpop.i32(i32 %108) #17
  %110 = trunc i32 %109 to i8
  %111 = and i8 %110, 1
  %112 = xor i8 %111, 1
  store i8 %112, i8* %106, align 1, !tbaa !2456
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %113, align 1, !tbaa !2456
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %115 = icmp eq i64 %104, 0
  %116 = zext i1 %115 to i8
  store i8 %116, i8* %114, align 1, !tbaa !2456
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %117, align 1, !tbaa !2456
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %118, align 1, !tbaa !2456
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
  %131 = call i32 @llvm.ctpop.i32(i32 %130) #17
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
  store i8 %160, i8* %162, align 1, !tbaa !2456
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %164 = trunc i64 %161 to i32
  %165 = and i32 %164, 255
  %166 = call i32 @llvm.ctpop.i32(i32 %165) #17
  %167 = trunc i32 %166 to i8
  %168 = and i8 %167, 1
  %169 = xor i8 %168, 1
  store i8 %169, i8* %163, align 1, !tbaa !2456
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %170, align 1, !tbaa !2456
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %172 = icmp eq i64 %161, 0
  %173 = zext i1 %172 to i8
  store i8 %173, i8* %171, align 1, !tbaa !2456
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %175 = lshr i64 %161, 63
  %176 = trunc i64 %175 to i8
  store i8 %176, i8* %174, align 1, !tbaa !2456
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %177, align 1, !tbaa !2456
  %178 = load i64, i64* %PC
  %179 = add i64 %178, 23
  %180 = load i64, i64* %PC
  %181 = add i64 %180, 2
  %182 = load i64, i64* %PC
  %183 = add i64 %182, 2
  store i64 %183, i64* %PC
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %185 = load i8, i8* %184, align 1, !tbaa !2448
  store i8 %185, i8* %BRANCH_TAKEN, align 1, !tbaa !2456
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %187 = icmp ne i8 %185, 0
  %188 = select i1 %187, i64 %179, i64 %181
  store i64 %188, i64* %186, align 8, !tbaa !2428
  %189 = load i8, i8* %BRANCH_TAKEN
  %190 = icmp eq i8 %189, 1
  br i1 %190, label %block_400608, label %block_4005f3

block_4005fd:                                     ; preds = %block_4005f3
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
    i64 4195850, label %block_40060a
    i64 4195845, label %block_400605
  ]

block_40060a:                                     ; preds = %block_4005fd
  %205 = load i64, i64* %RAX
  %206 = load i64, i64* %RAX
  %207 = add i64 %206, %205
  %208 = load i16, i16* %AX
  %209 = zext i16 %208 to i64
  %210 = load i64, i64* %PC
  %211 = add i64 %210, 6
  store i64 %211, i64* %PC
  %212 = load i64, i64* %PC
  %213 = tail call %struct.Memory* @sub_400610___do_global_dtors_aux(%struct.State* %0, i64 %212, %struct.Memory* %2)
  ret %struct.Memory* %213

block_4005f3:                                     ; preds = %block_4005d0
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
  %224 = call i32 @llvm.ctpop.i32(i32 %223) #17
  %225 = trunc i32 %224 to i8
  %226 = and i8 %225, 1
  %227 = xor i8 %226, 1
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %227, i8* %228, align 1, !tbaa !2446
  %229 = icmp eq i64 %220, 0
  %230 = zext i1 %229 to i8
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %230, i8* %231, align 1, !tbaa !2448
  %232 = lshr i64 %220, 63
  %233 = trunc i64 %232 to i8
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %233, i8* %234, align 1, !tbaa !2449
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %235, align 1, !tbaa !2450
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %236, align 1, !tbaa !2447
  %237 = load i64, i64* %PC
  %238 = add i64 %237, 13
  %239 = load i64, i64* %PC
  %240 = add i64 %239, 2
  %241 = load i64, i64* %PC
  %242 = add i64 %241, 2
  store i64 %242, i64* %PC
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %244 = load i8, i8* %243, align 1, !tbaa !2448
  store i8 %244, i8* %BRANCH_TAKEN, align 1, !tbaa !2456
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %246 = icmp ne i8 %244, 0
  %247 = select i1 %246, i64 %238, i64 %240
  store i64 %247, i64* %245, align 8, !tbaa !2428
  %248 = load i8, i8* %BRANCH_TAKEN
  %249 = icmp eq i8 %248, 1
  br i1 %249, label %block_400608, label %block_4005fd

block_400608:                                     ; preds = %block_400605, %block_4005f3, %block_4005d0
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4005d0 ], [ %2, %block_4005f3 ], [ %2, %block_400605 ]
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

block_400605:                                     ; preds = %block_4005fd
  %265 = load i64, i64* %RAX
  %266 = load i32, i32* %EAX
  %267 = zext i32 %266 to i64
  %268 = load i64, i64* %PC
  %269 = add i64 %268, 3
  store i64 %269, i64* %PC
  br label %block_400608

; <label>:270:                                    ; preds = %block_4005fd
  %271 = load i64, i64* %PC
  %272 = tail call %struct.Memory* @__remill_jump(%struct.State* %0, i64 %271, %struct.Memory* %2)
  ret %struct.Memory* %272
}

; Function Attrs: noinline
define %struct.Memory* @sub_4004e8__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4004e8:
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
  %21 = call i32 @llvm.ctpop.i32(i32 %20) #17
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
  %55 = call i32 @llvm.ctpop.i32(i32 %54) #17
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
  store i8 %75, i8* %BRANCH_TAKEN, align 1, !tbaa !2456
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %77 = icmp ne i8 %75, 0
  %78 = select i1 %77, i64 %69, i64 %71
  store i64 %78, i64* %76, align 8, !tbaa !2428
  %79 = load i8, i8* %BRANCH_TAKEN
  %80 = icmp eq i8 %79, 1
  br i1 %80, label %block_4004fa, label %block_4004f8

block_4004f8:                                     ; preds = %block_4004e8
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
  br label %block_4004fa

block_4004fa:                                     ; preds = %block_4004f8, %block_4004e8
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4004e8 ], [ %92, %block_4004f8 ]
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
  %104 = call i32 @llvm.ctpop.i32(i32 %103) #17
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
define %struct.Memory* @sub_400610___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400610:
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
  %17 = call i32 @llvm.ctpop.i32(i32 %16) #17
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
  store i8 %43, i8* %BRANCH_TAKEN, align 1, !tbaa !2456
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %45 = select i1 %42, i64 %35, i64 %37
  store i64 %45, i64* %44, align 8, !tbaa !2428
  %46 = load i8, i8* %BRANCH_TAKEN
  %47 = icmp eq i8 %46, 1
  br i1 %47, label %block_400630, label %block_400619

block_400630:                                     ; preds = %block_400610
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

block_400619:                                     ; preds = %block_400610
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
  %78 = call %struct.Memory* @sub_4005a0_deregister_tm_clones(%struct.State* %0, i64 %77, %struct.Memory* %2)
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
define %struct.Memory* @sub_400640_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400640:
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
  %35 = tail call %struct.Memory* @sub_4005d0_register_tm_clones(%struct.State* %0, i64 %34, %struct.Memory* %2)
  ret %struct.Memory* %35
}

; Function Attrs: noinline
define %struct.Memory* @sub_400650_make_vec(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400650:
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
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %16 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %15, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %16 to %"class.std::bitset"*
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %18 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %17, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %18 to %union.vec128_t*
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %20 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %19, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %20 to %union.vec128_t*
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
  %32 = sub i64 %31, 32
  %33 = load i64, i64* %PC
  %34 = add i64 %33, 4
  store i64 %34, i64* %PC
  store i64 %32, i64* %RAX, align 8, !tbaa !2428
  %35 = load i64, i64* %RBP
  %36 = sub i64 %35, 8
  %37 = bitcast %union.vec128_t* %XMM0 to i8*
  %38 = load i64, i64* %PC
  %39 = add i64 %38, 5
  store i64 %39, i64* %PC
  %40 = bitcast i8* %37 to double*
  %41 = load double, double* %40, align 1
  %42 = inttoptr i64 %36 to double*
  store double %41, double* %42
  %43 = load i64, i64* %RBP
  %44 = sub i64 %43, 16
  %45 = bitcast %union.vec128_t* %XMM1 to i8*
  %46 = load i64, i64* %PC
  %47 = add i64 %46, 5
  store i64 %47, i64* %PC
  %48 = bitcast i8* %45 to double*
  %49 = load double, double* %48, align 1
  %50 = inttoptr i64 %44 to double*
  store double %49, double* %50
  %51 = load i64, i64* %RBP
  %52 = sub i64 %51, 40
  %53 = load i64, i64* %RAX
  %54 = load i64, i64* %PC
  %55 = add i64 %54, 4
  store i64 %55, i64* %PC
  %56 = inttoptr i64 %52 to i64*
  store i64 %53, i64* %56
  %57 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %58 = load i64, i64* %RBP
  %59 = sub i64 %58, 8
  %60 = load i64, i64* %PC
  %61 = add i64 %60, 5
  store i64 %61, i64* %PC
  %62 = inttoptr i64 %59 to double*
  %63 = load double, double* %62
  %64 = bitcast i8* %57 to double*
  store double %63, double* %64, align 1, !tbaa !2452
  %65 = getelementptr inbounds i8, i8* %57, i64 8
  %66 = bitcast i8* %65 to double*
  store double 0.000000e+00, double* %66, align 1, !tbaa !2452
  %67 = load i64, i64* %RBP
  %68 = sub i64 %67, 40
  %69 = load i64, i64* %PC
  %70 = add i64 %69, 4
  store i64 %70, i64* %PC
  %71 = inttoptr i64 %68 to i64*
  %72 = load i64, i64* %71
  store i64 %72, i64* %RAX, align 8, !tbaa !2428
  %73 = load i64, i64* %RAX
  %74 = bitcast %union.vec128_t* %XMM0 to i8*
  %75 = load i64, i64* %PC
  %76 = add i64 %75, 4
  store i64 %76, i64* %PC
  %77 = bitcast i8* %74 to double*
  %78 = load double, double* %77, align 1
  %79 = inttoptr i64 %73 to double*
  store double %78, double* %79
  %80 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %81 = load i64, i64* %RBP
  %82 = sub i64 %81, 16
  %83 = load i64, i64* %PC
  %84 = add i64 %83, 5
  store i64 %84, i64* %PC
  %85 = inttoptr i64 %82 to double*
  %86 = load double, double* %85
  %87 = bitcast i8* %80 to double*
  store double %86, double* %87, align 1, !tbaa !2452
  %88 = getelementptr inbounds i8, i8* %80, i64 8
  %89 = bitcast i8* %88 to double*
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %90 = load i64, i64* %RBP
  %91 = sub i64 %90, 40
  %92 = load i64, i64* %PC
  %93 = add i64 %92, 4
  store i64 %93, i64* %PC
  %94 = inttoptr i64 %91 to i64*
  %95 = load i64, i64* %94
  store i64 %95, i64* %RAX, align 8, !tbaa !2428
  %96 = load i64, i64* %RAX
  %97 = add i64 %96, 8
  %98 = bitcast %union.vec128_t* %XMM0 to i8*
  %99 = load i64, i64* %PC
  %100 = add i64 %99, 5
  store i64 %100, i64* %PC
  %101 = bitcast i8* %98 to double*
  %102 = load double, double* %101, align 1
  %103 = inttoptr i64 %97 to double*
  store double %102, double* %103
  %104 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %105 = load i64, i64* %RBP
  %106 = sub i64 %105, 32
  %107 = load i64, i64* %PC
  %108 = add i64 %107, 5
  store i64 %108, i64* %PC
  %109 = inttoptr i64 %106 to double*
  %110 = load double, double* %109
  %111 = add i64 %106, 8
  %112 = inttoptr i64 %111 to double*
  %113 = load double, double* %112
  %114 = bitcast i8* %104 to double*
  store double %110, double* %114, align 1, !tbaa !2452
  %115 = getelementptr inbounds i8, i8* %104, i64 8
  %116 = bitcast i8* %115 to double*
  store double %113, double* %116, align 1, !tbaa !2452
  %117 = load i64, i64* %PC
  %118 = add i64 %117, 1
  store i64 %118, i64* %PC
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %120 = load i64, i64* %119, align 8, !tbaa !2428
  %121 = add i64 %120, 8
  %122 = inttoptr i64 %120 to i64*
  %123 = load i64, i64* %122
  store i64 %123, i64* %RBP, align 8, !tbaa !2428
  store i64 %121, i64* %119, align 8, !tbaa !2428
  %124 = load i64, i64* %PC
  %125 = add i64 %124, 1
  store i64 %125, i64* %PC
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %128 = load i64, i64* %127, align 8, !tbaa !2428
  %129 = inttoptr i64 %128 to i64*
  %130 = load i64, i64* %129
  store i64 %130, i64* %126, align 8, !tbaa !2428
  %131 = add i64 %128, 8
  store i64 %131, i64* %127, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline
declare void @__mcsema_attach_call() #13

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400640_frame_dummy() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400640;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @1, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_400640_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400640_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400610___do_global_dtors_aux() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400610;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @3, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_400610___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400610___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_602088_printf(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_602090_pow(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @pow to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: alwaysinline inlinehint
define %struct.Memory* @ext_6020b0_sqrt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #16 {
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
  store i8 0, i8* %BRANCH_TAKEN, align 1
  store i64 0, i64* %SS_BASE, align 8
  store i64 0, i64* %ES_BASE, align 8
  store i64 0, i64* %DS_BASE, align 8
  store i64 0, i64* %CS_BASE, align 8
  store %struct.State* %0, %struct.State** %STATE, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 33
  %6 = getelementptr inbounds %struct.Reg, %struct.Reg* %5, i32 0, i32 0
  %PC = bitcast %union.anon* %6 to i64*
  store i64 %1, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0
  %10 = bitcast %union.anon* %9 to %struct.anon.2*
  %AH = getelementptr inbounds %struct.anon.2, %struct.anon.2* %10, i32 0, i32 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %12 = getelementptr inbounds %struct.GPR, %struct.GPR* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.Reg, %struct.Reg* %12, i32 0, i32 0
  %14 = bitcast %union.anon* %13 to %struct.anon.2*
  %BH = getelementptr inbounds %struct.anon.2, %struct.anon.2* %14, i32 0, i32 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %16 = getelementptr inbounds %struct.GPR, %struct.GPR* %15, i32 0, i32 5
  %17 = getelementptr inbounds %struct.Reg, %struct.Reg* %16, i32 0, i32 0
  %18 = bitcast %union.anon* %17 to %struct.anon.2*
  %CH = getelementptr inbounds %struct.anon.2, %struct.anon.2* %18, i32 0, i32 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %20 = getelementptr inbounds %struct.GPR, %struct.GPR* %19, i32 0, i32 7
  %21 = getelementptr inbounds %struct.Reg, %struct.Reg* %20, i32 0, i32 0
  %22 = bitcast %union.anon* %21 to %struct.anon.2*
  %DH = getelementptr inbounds %struct.anon.2, %struct.anon.2* %22, i32 0, i32 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %26 = bitcast %union.anon* %25 to %struct.anon.2*
  %AL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %26, i32 0, i32 0
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %28 = getelementptr inbounds %struct.GPR, %struct.GPR* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.Reg, %struct.Reg* %28, i32 0, i32 0
  %30 = bitcast %union.anon* %29 to %struct.anon.2*
  %BL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %30, i32 0, i32 0
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %32 = getelementptr inbounds %struct.GPR, %struct.GPR* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.Reg, %struct.Reg* %32, i32 0, i32 0
  %34 = bitcast %union.anon* %33 to %struct.anon.2*
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %34, i32 0, i32 0
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %36 = getelementptr inbounds %struct.GPR, %struct.GPR* %35, i32 0, i32 7
  %37 = getelementptr inbounds %struct.Reg, %struct.Reg* %36, i32 0, i32 0
  %38 = bitcast %union.anon* %37 to %struct.anon.2*
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %38, i32 0, i32 0
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %40 = getelementptr inbounds %struct.GPR, %struct.GPR* %39, i32 0, i32 9
  %41 = getelementptr inbounds %struct.Reg, %struct.Reg* %40, i32 0, i32 0
  %42 = bitcast %union.anon* %41 to %struct.anon.2*
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %42, i32 0, i32 0
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %44 = getelementptr inbounds %struct.GPR, %struct.GPR* %43, i32 0, i32 11
  %45 = getelementptr inbounds %struct.Reg, %struct.Reg* %44, i32 0, i32 0
  %46 = bitcast %union.anon* %45 to %struct.anon.2*
  %DIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %46, i32 0, i32 0
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %48 = getelementptr inbounds %struct.GPR, %struct.GPR* %47, i32 0, i32 13
  %49 = getelementptr inbounds %struct.Reg, %struct.Reg* %48, i32 0, i32 0
  %50 = bitcast %union.anon* %49 to %struct.anon.2*
  %SPL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %50, i32 0, i32 0
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %52 = getelementptr inbounds %struct.GPR, %struct.GPR* %51, i32 0, i32 15
  %53 = getelementptr inbounds %struct.Reg, %struct.Reg* %52, i32 0, i32 0
  %54 = bitcast %union.anon* %53 to %struct.anon.2*
  %BPL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %54, i32 0, i32 0
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %56 = getelementptr inbounds %struct.GPR, %struct.GPR* %55, i32 0, i32 17
  %57 = getelementptr inbounds %struct.Reg, %struct.Reg* %56, i32 0, i32 0
  %58 = bitcast %union.anon* %57 to %struct.anon.2*
  %R8B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %58, i32 0, i32 0
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %60 = getelementptr inbounds %struct.GPR, %struct.GPR* %59, i32 0, i32 19
  %61 = getelementptr inbounds %struct.Reg, %struct.Reg* %60, i32 0, i32 0
  %62 = bitcast %union.anon* %61 to %struct.anon.2*
  %R9B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %62, i32 0, i32 0
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %64 = getelementptr inbounds %struct.GPR, %struct.GPR* %63, i32 0, i32 21
  %65 = getelementptr inbounds %struct.Reg, %struct.Reg* %64, i32 0, i32 0
  %66 = bitcast %union.anon* %65 to %struct.anon.2*
  %R10B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %66, i32 0, i32 0
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 23
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %70 = bitcast %union.anon* %69 to %struct.anon.2*
  %R11B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %70, i32 0, i32 0
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %72 = getelementptr inbounds %struct.GPR, %struct.GPR* %71, i32 0, i32 25
  %73 = getelementptr inbounds %struct.Reg, %struct.Reg* %72, i32 0, i32 0
  %74 = bitcast %union.anon* %73 to %struct.anon.2*
  %R12B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %74, i32 0, i32 0
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 27
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %78 = bitcast %union.anon* %77 to %struct.anon.2*
  %R13B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %78, i32 0, i32 0
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %80 = getelementptr inbounds %struct.GPR, %struct.GPR* %79, i32 0, i32 29
  %81 = getelementptr inbounds %struct.Reg, %struct.Reg* %80, i32 0, i32 0
  %82 = bitcast %union.anon* %81 to %struct.anon.2*
  %R14B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %82, i32 0, i32 0
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %84 = getelementptr inbounds %struct.GPR, %struct.GPR* %83, i32 0, i32 31
  %85 = getelementptr inbounds %struct.Reg, %struct.Reg* %84, i32 0, i32 0
  %86 = bitcast %union.anon* %85 to %struct.anon.2*
  %R15B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %86, i32 0, i32 0
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %88 = getelementptr inbounds %struct.GPR, %struct.GPR* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.Reg, %struct.Reg* %88, i32 0, i32 0
  %AX = bitcast %union.anon* %89 to i16*
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %91 = getelementptr inbounds %struct.GPR, %struct.GPR* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.Reg, %struct.Reg* %91, i32 0, i32 0
  %BX = bitcast %union.anon* %92 to i16*
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %94 = getelementptr inbounds %struct.GPR, %struct.GPR* %93, i32 0, i32 5
  %95 = getelementptr inbounds %struct.Reg, %struct.Reg* %94, i32 0, i32 0
  %CX = bitcast %union.anon* %95 to i16*
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %97 = getelementptr inbounds %struct.GPR, %struct.GPR* %96, i32 0, i32 7
  %98 = getelementptr inbounds %struct.Reg, %struct.Reg* %97, i32 0, i32 0
  %DX = bitcast %union.anon* %98 to i16*
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %100 = getelementptr inbounds %struct.GPR, %struct.GPR* %99, i32 0, i32 9
  %101 = getelementptr inbounds %struct.Reg, %struct.Reg* %100, i32 0, i32 0
  %SI = bitcast %union.anon* %101 to i16*
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %103 = getelementptr inbounds %struct.GPR, %struct.GPR* %102, i32 0, i32 11
  %104 = getelementptr inbounds %struct.Reg, %struct.Reg* %103, i32 0, i32 0
  %DI = bitcast %union.anon* %104 to i16*
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %106 = getelementptr inbounds %struct.GPR, %struct.GPR* %105, i32 0, i32 13
  %107 = getelementptr inbounds %struct.Reg, %struct.Reg* %106, i32 0, i32 0
  %SP = bitcast %union.anon* %107 to i16*
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %109 = getelementptr inbounds %struct.GPR, %struct.GPR* %108, i32 0, i32 15
  %110 = getelementptr inbounds %struct.Reg, %struct.Reg* %109, i32 0, i32 0
  %BP = bitcast %union.anon* %110 to i16*
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %112 = getelementptr inbounds %struct.GPR, %struct.GPR* %111, i32 0, i32 17
  %113 = getelementptr inbounds %struct.Reg, %struct.Reg* %112, i32 0, i32 0
  %R8W = bitcast %union.anon* %113 to i16*
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %115 = getelementptr inbounds %struct.GPR, %struct.GPR* %114, i32 0, i32 19
  %116 = getelementptr inbounds %struct.Reg, %struct.Reg* %115, i32 0, i32 0
  %R9W = bitcast %union.anon* %116 to i16*
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %118 = getelementptr inbounds %struct.GPR, %struct.GPR* %117, i32 0, i32 21
  %119 = getelementptr inbounds %struct.Reg, %struct.Reg* %118, i32 0, i32 0
  %R10W = bitcast %union.anon* %119 to i16*
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %121 = getelementptr inbounds %struct.GPR, %struct.GPR* %120, i32 0, i32 23
  %122 = getelementptr inbounds %struct.Reg, %struct.Reg* %121, i32 0, i32 0
  %R11W = bitcast %union.anon* %122 to i16*
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %124 = getelementptr inbounds %struct.GPR, %struct.GPR* %123, i32 0, i32 25
  %125 = getelementptr inbounds %struct.Reg, %struct.Reg* %124, i32 0, i32 0
  %R12W = bitcast %union.anon* %125 to i16*
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %127 = getelementptr inbounds %struct.GPR, %struct.GPR* %126, i32 0, i32 27
  %128 = getelementptr inbounds %struct.Reg, %struct.Reg* %127, i32 0, i32 0
  %R13W = bitcast %union.anon* %128 to i16*
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %130 = getelementptr inbounds %struct.GPR, %struct.GPR* %129, i32 0, i32 29
  %131 = getelementptr inbounds %struct.Reg, %struct.Reg* %130, i32 0, i32 0
  %R14W = bitcast %union.anon* %131 to i16*
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %133 = getelementptr inbounds %struct.GPR, %struct.GPR* %132, i32 0, i32 31
  %134 = getelementptr inbounds %struct.Reg, %struct.Reg* %133, i32 0, i32 0
  %R15W = bitcast %union.anon* %134 to i16*
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %136 = getelementptr inbounds %struct.GPR, %struct.GPR* %135, i32 0, i32 33
  %137 = getelementptr inbounds %struct.Reg, %struct.Reg* %136, i32 0, i32 0
  %IP = bitcast %union.anon* %137 to i16*
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %139 = getelementptr inbounds %struct.GPR, %struct.GPR* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.Reg, %struct.Reg* %139, i32 0, i32 0
  %EAX = bitcast %union.anon* %140 to i32*
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %142 = getelementptr inbounds %struct.GPR, %struct.GPR* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.Reg, %struct.Reg* %142, i32 0, i32 0
  %EBX = bitcast %union.anon* %143 to i32*
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %145 = getelementptr inbounds %struct.GPR, %struct.GPR* %144, i32 0, i32 5
  %146 = getelementptr inbounds %struct.Reg, %struct.Reg* %145, i32 0, i32 0
  %ECX = bitcast %union.anon* %146 to i32*
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %148 = getelementptr inbounds %struct.GPR, %struct.GPR* %147, i32 0, i32 7
  %149 = getelementptr inbounds %struct.Reg, %struct.Reg* %148, i32 0, i32 0
  %EDX = bitcast %union.anon* %149 to i32*
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %151 = getelementptr inbounds %struct.GPR, %struct.GPR* %150, i32 0, i32 9
  %152 = getelementptr inbounds %struct.Reg, %struct.Reg* %151, i32 0, i32 0
  %ESI = bitcast %union.anon* %152 to i32*
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %154 = getelementptr inbounds %struct.GPR, %struct.GPR* %153, i32 0, i32 11
  %155 = getelementptr inbounds %struct.Reg, %struct.Reg* %154, i32 0, i32 0
  %EDI = bitcast %union.anon* %155 to i32*
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %157 = getelementptr inbounds %struct.GPR, %struct.GPR* %156, i32 0, i32 13
  %158 = getelementptr inbounds %struct.Reg, %struct.Reg* %157, i32 0, i32 0
  %ESP = bitcast %union.anon* %158 to i32*
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %160 = getelementptr inbounds %struct.GPR, %struct.GPR* %159, i32 0, i32 15
  %161 = getelementptr inbounds %struct.Reg, %struct.Reg* %160, i32 0, i32 0
  %EBP = bitcast %union.anon* %161 to i32*
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %163 = getelementptr inbounds %struct.GPR, %struct.GPR* %162, i32 0, i32 33
  %164 = getelementptr inbounds %struct.Reg, %struct.Reg* %163, i32 0, i32 0
  %EIP = bitcast %union.anon* %164 to i32*
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %166 = getelementptr inbounds %struct.GPR, %struct.GPR* %165, i32 0, i32 17
  %167 = getelementptr inbounds %struct.Reg, %struct.Reg* %166, i32 0, i32 0
  %R8D = bitcast %union.anon* %167 to i32*
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %169 = getelementptr inbounds %struct.GPR, %struct.GPR* %168, i32 0, i32 19
  %170 = getelementptr inbounds %struct.Reg, %struct.Reg* %169, i32 0, i32 0
  %R9D = bitcast %union.anon* %170 to i32*
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %172 = getelementptr inbounds %struct.GPR, %struct.GPR* %171, i32 0, i32 21
  %173 = getelementptr inbounds %struct.Reg, %struct.Reg* %172, i32 0, i32 0
  %R10D = bitcast %union.anon* %173 to i32*
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %175 = getelementptr inbounds %struct.GPR, %struct.GPR* %174, i32 0, i32 23
  %176 = getelementptr inbounds %struct.Reg, %struct.Reg* %175, i32 0, i32 0
  %R11D = bitcast %union.anon* %176 to i32*
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %178 = getelementptr inbounds %struct.GPR, %struct.GPR* %177, i32 0, i32 25
  %179 = getelementptr inbounds %struct.Reg, %struct.Reg* %178, i32 0, i32 0
  %R12D = bitcast %union.anon* %179 to i32*
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %181 = getelementptr inbounds %struct.GPR, %struct.GPR* %180, i32 0, i32 27
  %182 = getelementptr inbounds %struct.Reg, %struct.Reg* %181, i32 0, i32 0
  %R13D = bitcast %union.anon* %182 to i32*
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %184 = getelementptr inbounds %struct.GPR, %struct.GPR* %183, i32 0, i32 29
  %185 = getelementptr inbounds %struct.Reg, %struct.Reg* %184, i32 0, i32 0
  %R14D = bitcast %union.anon* %185 to i32*
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %187 = getelementptr inbounds %struct.GPR, %struct.GPR* %186, i32 0, i32 31
  %188 = getelementptr inbounds %struct.Reg, %struct.Reg* %187, i32 0, i32 0
  %R15D = bitcast %union.anon* %188 to i32*
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %190 = getelementptr inbounds %struct.GPR, %struct.GPR* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.Reg, %struct.Reg* %190, i32 0, i32 0
  %RAX = bitcast %union.anon* %191 to i64*
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %193 = getelementptr inbounds %struct.GPR, %struct.GPR* %192, i32 0, i32 3
  %194 = getelementptr inbounds %struct.Reg, %struct.Reg* %193, i32 0, i32 0
  %RBX = bitcast %union.anon* %194 to i64*
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %196 = getelementptr inbounds %struct.GPR, %struct.GPR* %195, i32 0, i32 5
  %197 = getelementptr inbounds %struct.Reg, %struct.Reg* %196, i32 0, i32 0
  %RCX = bitcast %union.anon* %197 to i64*
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %199 = getelementptr inbounds %struct.GPR, %struct.GPR* %198, i32 0, i32 7
  %200 = getelementptr inbounds %struct.Reg, %struct.Reg* %199, i32 0, i32 0
  %RDX = bitcast %union.anon* %200 to i64*
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %202 = getelementptr inbounds %struct.GPR, %struct.GPR* %201, i32 0, i32 9
  %203 = getelementptr inbounds %struct.Reg, %struct.Reg* %202, i32 0, i32 0
  %RSI = bitcast %union.anon* %203 to i64*
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %205 = getelementptr inbounds %struct.GPR, %struct.GPR* %204, i32 0, i32 11
  %206 = getelementptr inbounds %struct.Reg, %struct.Reg* %205, i32 0, i32 0
  %RDI = bitcast %union.anon* %206 to i64*
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %208 = getelementptr inbounds %struct.GPR, %struct.GPR* %207, i32 0, i32 13
  %209 = getelementptr inbounds %struct.Reg, %struct.Reg* %208, i32 0, i32 0
  %RSP = bitcast %union.anon* %209 to i64*
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %211 = getelementptr inbounds %struct.GPR, %struct.GPR* %210, i32 0, i32 15
  %212 = getelementptr inbounds %struct.Reg, %struct.Reg* %211, i32 0, i32 0
  %RBP = bitcast %union.anon* %212 to i64*
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %214 = getelementptr inbounds %struct.GPR, %struct.GPR* %213, i32 0, i32 17
  %215 = getelementptr inbounds %struct.Reg, %struct.Reg* %214, i32 0, i32 0
  %R8 = bitcast %union.anon* %215 to i64*
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %217 = getelementptr inbounds %struct.GPR, %struct.GPR* %216, i32 0, i32 19
  %218 = getelementptr inbounds %struct.Reg, %struct.Reg* %217, i32 0, i32 0
  %R9 = bitcast %union.anon* %218 to i64*
  %219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %220 = getelementptr inbounds %struct.GPR, %struct.GPR* %219, i32 0, i32 21
  %221 = getelementptr inbounds %struct.Reg, %struct.Reg* %220, i32 0, i32 0
  %R10 = bitcast %union.anon* %221 to i64*
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %223 = getelementptr inbounds %struct.GPR, %struct.GPR* %222, i32 0, i32 23
  %224 = getelementptr inbounds %struct.Reg, %struct.Reg* %223, i32 0, i32 0
  %R11 = bitcast %union.anon* %224 to i64*
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %226 = getelementptr inbounds %struct.GPR, %struct.GPR* %225, i32 0, i32 25
  %227 = getelementptr inbounds %struct.Reg, %struct.Reg* %226, i32 0, i32 0
  %R12 = bitcast %union.anon* %227 to i64*
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %229 = getelementptr inbounds %struct.GPR, %struct.GPR* %228, i32 0, i32 27
  %230 = getelementptr inbounds %struct.Reg, %struct.Reg* %229, i32 0, i32 0
  %R13 = bitcast %union.anon* %230 to i64*
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %232 = getelementptr inbounds %struct.GPR, %struct.GPR* %231, i32 0, i32 29
  %233 = getelementptr inbounds %struct.Reg, %struct.Reg* %232, i32 0, i32 0
  %R14 = bitcast %union.anon* %233 to i64*
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %235 = getelementptr inbounds %struct.GPR, %struct.GPR* %234, i32 0, i32 31
  %236 = getelementptr inbounds %struct.Reg, %struct.Reg* %235, i32 0, i32 0
  %R15 = bitcast %union.anon* %236 to i64*
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %238 = getelementptr inbounds %struct.GPR, %struct.GPR* %237, i32 0, i32 33
  %239 = getelementptr inbounds %struct.Reg, %struct.Reg* %238, i32 0, i32 0
  %RIP = bitcast %union.anon* %239 to i64*
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %241 = getelementptr inbounds %struct.Segments, %struct.Segments* %240, i32 0, i32 1
  %SS = bitcast %union.SegmentSelector* %241 to i16*
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %243 = getelementptr inbounds %struct.Segments, %struct.Segments* %242, i32 0, i32 3
  %ES = bitcast %union.SegmentSelector* %243 to i16*
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %245 = getelementptr inbounds %struct.Segments, %struct.Segments* %244, i32 0, i32 5
  %GS = bitcast %union.SegmentSelector* %245 to i16*
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %247 = getelementptr inbounds %struct.Segments, %struct.Segments* %246, i32 0, i32 7
  %FS = bitcast %union.SegmentSelector* %247 to i16*
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %249 = getelementptr inbounds %struct.Segments, %struct.Segments* %248, i32 0, i32 9
  %DS = bitcast %union.SegmentSelector* %249 to i16*
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %251 = getelementptr inbounds %struct.Segments, %struct.Segments* %250, i32 0, i32 11
  %CS = bitcast %union.SegmentSelector* %251 to i16*
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 5
  %253 = getelementptr inbounds %struct.AddressSpace, %struct.AddressSpace* %252, i32 0, i32 5
  %254 = getelementptr inbounds %struct.Reg, %struct.Reg* %253, i32 0, i32 0
  %GS_BASE = bitcast %union.anon* %254 to i64*
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 5
  %256 = getelementptr inbounds %struct.AddressSpace, %struct.AddressSpace* %255, i32 0, i32 7
  %257 = getelementptr inbounds %struct.Reg, %struct.Reg* %256, i32 0, i32 0
  %FS_BASE = bitcast %union.anon* %257 to i64*
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %259 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %258, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %259 to %"class.std::bitset"*
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %261 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %260, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %261 to %"class.std::bitset"*
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %263 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %262, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %263 to %"class.std::bitset"*
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %265 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %264, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %265 to %"class.std::bitset"*
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %267 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %266, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %267 to %"class.std::bitset"*
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %269 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %268, i64 0, i64 5
  %YMM5 = bitcast %union.VectorReg* %269 to %"class.std::bitset"*
  %270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %271 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %270, i64 0, i64 6
  %YMM6 = bitcast %union.VectorReg* %271 to %"class.std::bitset"*
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %273 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %272, i64 0, i64 7
  %YMM7 = bitcast %union.VectorReg* %273 to %"class.std::bitset"*
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %275 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %274, i64 0, i64 8
  %YMM8 = bitcast %union.VectorReg* %275 to %"class.std::bitset"*
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %277 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %276, i64 0, i64 9
  %YMM9 = bitcast %union.VectorReg* %277 to %"class.std::bitset"*
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %279 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %278, i64 0, i64 10
  %YMM10 = bitcast %union.VectorReg* %279 to %"class.std::bitset"*
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %281 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %280, i64 0, i64 11
  %YMM11 = bitcast %union.VectorReg* %281 to %"class.std::bitset"*
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %283 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %282, i64 0, i64 12
  %YMM12 = bitcast %union.VectorReg* %283 to %"class.std::bitset"*
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %285 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %284, i64 0, i64 13
  %YMM13 = bitcast %union.VectorReg* %285 to %"class.std::bitset"*
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %287 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %286, i64 0, i64 14
  %YMM14 = bitcast %union.VectorReg* %287 to %"class.std::bitset"*
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %289 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %288, i64 0, i64 15
  %YMM15 = bitcast %union.VectorReg* %289 to %"class.std::bitset"*
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %291 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %290, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %291 to %union.vec128_t*
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %293 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %292, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %293 to %union.vec128_t*
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %295 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %294, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %295 to %union.vec128_t*
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %297 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %296, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %297 to %union.vec128_t*
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %299 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %298, i64 0, i64 4
  %XMM4 = bitcast %union.VectorReg* %299 to %union.vec128_t*
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %301 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %300, i64 0, i64 5
  %XMM5 = bitcast %union.VectorReg* %301 to %union.vec128_t*
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %303 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %302, i64 0, i64 6
  %XMM6 = bitcast %union.VectorReg* %303 to %union.vec128_t*
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %305 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %304, i64 0, i64 7
  %XMM7 = bitcast %union.VectorReg* %305 to %union.vec128_t*
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %307 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %306, i64 0, i64 8
  %XMM8 = bitcast %union.VectorReg* %307 to %union.vec128_t*
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %309 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %308, i64 0, i64 9
  %XMM9 = bitcast %union.VectorReg* %309 to %union.vec128_t*
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %311 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %310, i64 0, i64 10
  %XMM10 = bitcast %union.VectorReg* %311 to %union.vec128_t*
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %313 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %312, i64 0, i64 11
  %XMM11 = bitcast %union.VectorReg* %313 to %union.vec128_t*
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %315 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %314, i64 0, i64 12
  %XMM12 = bitcast %union.VectorReg* %315 to %union.vec128_t*
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %317 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %316, i64 0, i64 13
  %XMM13 = bitcast %union.VectorReg* %317 to %union.vec128_t*
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %319 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %318, i64 0, i64 14
  %XMM14 = bitcast %union.VectorReg* %319 to %union.vec128_t*
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %321 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %320, i64 0, i64 15
  %XMM15 = bitcast %union.VectorReg* %321 to %union.vec128_t*
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %323 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %322, i32 0, i32 0
  %324 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %323, i64 0, i64 0
  %ST0 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %324, i32 0, i32 1
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %326 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %325, i32 0, i32 0
  %327 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %326, i64 0, i64 1
  %ST1 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %327, i32 0, i32 1
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %329 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %328, i32 0, i32 0
  %330 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %329, i64 0, i64 2
  %ST2 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %330, i32 0, i32 1
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %332 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %331, i32 0, i32 0
  %333 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %332, i64 0, i64 3
  %ST3 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %333, i32 0, i32 1
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %335 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %334, i32 0, i32 0
  %336 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %335, i64 0, i64 4
  %ST4 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %336, i32 0, i32 1
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %338 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %337, i32 0, i32 0
  %339 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %338, i64 0, i64 5
  %ST5 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %339, i32 0, i32 1
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %341 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %340, i32 0, i32 0
  %342 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %341, i64 0, i64 6
  %ST6 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %342, i32 0, i32 1
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %344 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %343, i32 0, i32 0
  %345 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %344, i64 0, i64 7
  %ST7 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %345, i32 0, i32 1
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %347 = getelementptr inbounds %struct.MMX, %struct.MMX* %346, i32 0, i32 0
  %348 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %347, i64 0, i64 0
  %349 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %348, i32 0, i32 1
  %350 = bitcast %union.vec64_t* %349 to %struct.uint64v1_t*
  %351 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %350, i32 0, i32 0
  %MM0 = getelementptr inbounds [1 x i64], [1 x i64]* %351, i64 0, i64 0
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %353 = getelementptr inbounds %struct.MMX, %struct.MMX* %352, i32 0, i32 0
  %354 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %353, i64 0, i64 1
  %355 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %354, i32 0, i32 1
  %356 = bitcast %union.vec64_t* %355 to %struct.uint64v1_t*
  %357 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %356, i32 0, i32 0
  %MM1 = getelementptr inbounds [1 x i64], [1 x i64]* %357, i64 0, i64 0
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %359 = getelementptr inbounds %struct.MMX, %struct.MMX* %358, i32 0, i32 0
  %360 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %359, i64 0, i64 2
  %361 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %360, i32 0, i32 1
  %362 = bitcast %union.vec64_t* %361 to %struct.uint64v1_t*
  %363 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %362, i32 0, i32 0
  %MM2 = getelementptr inbounds [1 x i64], [1 x i64]* %363, i64 0, i64 0
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %365 = getelementptr inbounds %struct.MMX, %struct.MMX* %364, i32 0, i32 0
  %366 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %365, i64 0, i64 3
  %367 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %366, i32 0, i32 1
  %368 = bitcast %union.vec64_t* %367 to %struct.uint64v1_t*
  %369 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %368, i32 0, i32 0
  %MM3 = getelementptr inbounds [1 x i64], [1 x i64]* %369, i64 0, i64 0
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %371 = getelementptr inbounds %struct.MMX, %struct.MMX* %370, i32 0, i32 0
  %372 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %371, i64 0, i64 4
  %373 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %372, i32 0, i32 1
  %374 = bitcast %union.vec64_t* %373 to %struct.uint64v1_t*
  %375 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %374, i32 0, i32 0
  %MM4 = getelementptr inbounds [1 x i64], [1 x i64]* %375, i64 0, i64 0
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %377 = getelementptr inbounds %struct.MMX, %struct.MMX* %376, i32 0, i32 0
  %378 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %377, i64 0, i64 5
  %379 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %378, i32 0, i32 1
  %380 = bitcast %union.vec64_t* %379 to %struct.uint64v1_t*
  %381 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %380, i32 0, i32 0
  %MM5 = getelementptr inbounds [1 x i64], [1 x i64]* %381, i64 0, i64 0
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %383 = getelementptr inbounds %struct.MMX, %struct.MMX* %382, i32 0, i32 0
  %384 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %383, i64 0, i64 6
  %385 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %384, i32 0, i32 1
  %386 = bitcast %union.vec64_t* %385 to %struct.uint64v1_t*
  %387 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %386, i32 0, i32 0
  %MM6 = getelementptr inbounds [1 x i64], [1 x i64]* %387, i64 0, i64 0
  %388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %389 = getelementptr inbounds %struct.MMX, %struct.MMX* %388, i32 0, i32 0
  %390 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %389, i64 0, i64 7
  %391 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %390, i32 0, i32 1
  %392 = bitcast %union.vec64_t* %391 to %struct.uint64v1_t*
  %393 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %392, i32 0, i32 0
  %MM7 = getelementptr inbounds [1 x i64], [1 x i64]* %393, i64 0, i64 0
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %AF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %394, i32 0, i32 5
  %395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %CF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %395, i32 0, i32 1
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %DF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %396, i32 0, i32 11
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %OF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %397, i32 0, i32 13
  %398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %PF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %398, i32 0, i32 3
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %SF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %399, i32 0, i32 9
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %ZF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %400, i32 0, i32 7
  store i64* @DR0, i64** %_DR0, align 8
  store i64* @DR1, i64** %_DR1, align 8
  store i64* @DR2, i64** %_DR2, align 8
  store i64* @DR3, i64** %_DR3, align 8
  store i64* @DR4, i64** %_DR4, align 8
  store i64* @DR5, i64** %_DR5, align 8
  store i64* @DR6, i64** %_DR6, align 8
  store i64* @DR7, i64** %_DR7, align 8
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR0, i32 0, i32 0), i64** %CR0, align 8
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR1, i32 0, i32 0), i64** %CR1, align 8
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR2, i32 0, i32 0), i64** %CR2, align 8
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR3, i32 0, i32 0), i64** %CR3, align 8
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR4, i32 0, i32 0), i64** %CR4, align 8
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR8, i32 0, i32 0), i64** %CR8, align 8
  %401 = bitcast %"class.std::bitset"* %YMM0 to double*
  %402 = load double, double* %401
  %403 = load i64, i64* %RSP
  %404 = load %struct.Memory*, %struct.Memory** %MEMORY
  %405 = inttoptr i64 %403 to i64*
  %406 = load i64, i64* %405
  store i64 %406, i64* %PC
  %407 = add i64 %403, 8
  store i64 %407, i64* %RSP
  %408 = call double @sqrt(double %402)
  store %"class.std::bitset" zeroinitializer, %"class.std::bitset"* %YMM0
  %409 = bitcast %"class.std::bitset"* %YMM0 to double*
  store double %408, double* %409
  %410 = load %struct.Memory*, %struct.Memory** %MEMORY
  ret %struct.Memory* %410
}

; Function Attrs: alwaysinline inlinehint
define %struct.Memory* @ext_6020a8_sin(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #16 {
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
  store i8 0, i8* %BRANCH_TAKEN, align 1
  store i64 0, i64* %SS_BASE, align 8
  store i64 0, i64* %ES_BASE, align 8
  store i64 0, i64* %DS_BASE, align 8
  store i64 0, i64* %CS_BASE, align 8
  store %struct.State* %0, %struct.State** %STATE, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 33
  %6 = getelementptr inbounds %struct.Reg, %struct.Reg* %5, i32 0, i32 0
  %PC = bitcast %union.anon* %6 to i64*
  store i64 %1, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0
  %10 = bitcast %union.anon* %9 to %struct.anon.2*
  %AH = getelementptr inbounds %struct.anon.2, %struct.anon.2* %10, i32 0, i32 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %12 = getelementptr inbounds %struct.GPR, %struct.GPR* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.Reg, %struct.Reg* %12, i32 0, i32 0
  %14 = bitcast %union.anon* %13 to %struct.anon.2*
  %BH = getelementptr inbounds %struct.anon.2, %struct.anon.2* %14, i32 0, i32 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %16 = getelementptr inbounds %struct.GPR, %struct.GPR* %15, i32 0, i32 5
  %17 = getelementptr inbounds %struct.Reg, %struct.Reg* %16, i32 0, i32 0
  %18 = bitcast %union.anon* %17 to %struct.anon.2*
  %CH = getelementptr inbounds %struct.anon.2, %struct.anon.2* %18, i32 0, i32 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %20 = getelementptr inbounds %struct.GPR, %struct.GPR* %19, i32 0, i32 7
  %21 = getelementptr inbounds %struct.Reg, %struct.Reg* %20, i32 0, i32 0
  %22 = bitcast %union.anon* %21 to %struct.anon.2*
  %DH = getelementptr inbounds %struct.anon.2, %struct.anon.2* %22, i32 0, i32 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %26 = bitcast %union.anon* %25 to %struct.anon.2*
  %AL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %26, i32 0, i32 0
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %28 = getelementptr inbounds %struct.GPR, %struct.GPR* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.Reg, %struct.Reg* %28, i32 0, i32 0
  %30 = bitcast %union.anon* %29 to %struct.anon.2*
  %BL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %30, i32 0, i32 0
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %32 = getelementptr inbounds %struct.GPR, %struct.GPR* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.Reg, %struct.Reg* %32, i32 0, i32 0
  %34 = bitcast %union.anon* %33 to %struct.anon.2*
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %34, i32 0, i32 0
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %36 = getelementptr inbounds %struct.GPR, %struct.GPR* %35, i32 0, i32 7
  %37 = getelementptr inbounds %struct.Reg, %struct.Reg* %36, i32 0, i32 0
  %38 = bitcast %union.anon* %37 to %struct.anon.2*
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %38, i32 0, i32 0
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %40 = getelementptr inbounds %struct.GPR, %struct.GPR* %39, i32 0, i32 9
  %41 = getelementptr inbounds %struct.Reg, %struct.Reg* %40, i32 0, i32 0
  %42 = bitcast %union.anon* %41 to %struct.anon.2*
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %42, i32 0, i32 0
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %44 = getelementptr inbounds %struct.GPR, %struct.GPR* %43, i32 0, i32 11
  %45 = getelementptr inbounds %struct.Reg, %struct.Reg* %44, i32 0, i32 0
  %46 = bitcast %union.anon* %45 to %struct.anon.2*
  %DIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %46, i32 0, i32 0
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %48 = getelementptr inbounds %struct.GPR, %struct.GPR* %47, i32 0, i32 13
  %49 = getelementptr inbounds %struct.Reg, %struct.Reg* %48, i32 0, i32 0
  %50 = bitcast %union.anon* %49 to %struct.anon.2*
  %SPL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %50, i32 0, i32 0
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %52 = getelementptr inbounds %struct.GPR, %struct.GPR* %51, i32 0, i32 15
  %53 = getelementptr inbounds %struct.Reg, %struct.Reg* %52, i32 0, i32 0
  %54 = bitcast %union.anon* %53 to %struct.anon.2*
  %BPL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %54, i32 0, i32 0
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %56 = getelementptr inbounds %struct.GPR, %struct.GPR* %55, i32 0, i32 17
  %57 = getelementptr inbounds %struct.Reg, %struct.Reg* %56, i32 0, i32 0
  %58 = bitcast %union.anon* %57 to %struct.anon.2*
  %R8B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %58, i32 0, i32 0
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %60 = getelementptr inbounds %struct.GPR, %struct.GPR* %59, i32 0, i32 19
  %61 = getelementptr inbounds %struct.Reg, %struct.Reg* %60, i32 0, i32 0
  %62 = bitcast %union.anon* %61 to %struct.anon.2*
  %R9B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %62, i32 0, i32 0
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %64 = getelementptr inbounds %struct.GPR, %struct.GPR* %63, i32 0, i32 21
  %65 = getelementptr inbounds %struct.Reg, %struct.Reg* %64, i32 0, i32 0
  %66 = bitcast %union.anon* %65 to %struct.anon.2*
  %R10B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %66, i32 0, i32 0
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 23
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %70 = bitcast %union.anon* %69 to %struct.anon.2*
  %R11B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %70, i32 0, i32 0
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %72 = getelementptr inbounds %struct.GPR, %struct.GPR* %71, i32 0, i32 25
  %73 = getelementptr inbounds %struct.Reg, %struct.Reg* %72, i32 0, i32 0
  %74 = bitcast %union.anon* %73 to %struct.anon.2*
  %R12B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %74, i32 0, i32 0
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 27
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %78 = bitcast %union.anon* %77 to %struct.anon.2*
  %R13B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %78, i32 0, i32 0
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %80 = getelementptr inbounds %struct.GPR, %struct.GPR* %79, i32 0, i32 29
  %81 = getelementptr inbounds %struct.Reg, %struct.Reg* %80, i32 0, i32 0
  %82 = bitcast %union.anon* %81 to %struct.anon.2*
  %R14B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %82, i32 0, i32 0
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %84 = getelementptr inbounds %struct.GPR, %struct.GPR* %83, i32 0, i32 31
  %85 = getelementptr inbounds %struct.Reg, %struct.Reg* %84, i32 0, i32 0
  %86 = bitcast %union.anon* %85 to %struct.anon.2*
  %R15B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %86, i32 0, i32 0
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %88 = getelementptr inbounds %struct.GPR, %struct.GPR* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.Reg, %struct.Reg* %88, i32 0, i32 0
  %AX = bitcast %union.anon* %89 to i16*
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %91 = getelementptr inbounds %struct.GPR, %struct.GPR* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.Reg, %struct.Reg* %91, i32 0, i32 0
  %BX = bitcast %union.anon* %92 to i16*
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %94 = getelementptr inbounds %struct.GPR, %struct.GPR* %93, i32 0, i32 5
  %95 = getelementptr inbounds %struct.Reg, %struct.Reg* %94, i32 0, i32 0
  %CX = bitcast %union.anon* %95 to i16*
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %97 = getelementptr inbounds %struct.GPR, %struct.GPR* %96, i32 0, i32 7
  %98 = getelementptr inbounds %struct.Reg, %struct.Reg* %97, i32 0, i32 0
  %DX = bitcast %union.anon* %98 to i16*
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %100 = getelementptr inbounds %struct.GPR, %struct.GPR* %99, i32 0, i32 9
  %101 = getelementptr inbounds %struct.Reg, %struct.Reg* %100, i32 0, i32 0
  %SI = bitcast %union.anon* %101 to i16*
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %103 = getelementptr inbounds %struct.GPR, %struct.GPR* %102, i32 0, i32 11
  %104 = getelementptr inbounds %struct.Reg, %struct.Reg* %103, i32 0, i32 0
  %DI = bitcast %union.anon* %104 to i16*
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %106 = getelementptr inbounds %struct.GPR, %struct.GPR* %105, i32 0, i32 13
  %107 = getelementptr inbounds %struct.Reg, %struct.Reg* %106, i32 0, i32 0
  %SP = bitcast %union.anon* %107 to i16*
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %109 = getelementptr inbounds %struct.GPR, %struct.GPR* %108, i32 0, i32 15
  %110 = getelementptr inbounds %struct.Reg, %struct.Reg* %109, i32 0, i32 0
  %BP = bitcast %union.anon* %110 to i16*
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %112 = getelementptr inbounds %struct.GPR, %struct.GPR* %111, i32 0, i32 17
  %113 = getelementptr inbounds %struct.Reg, %struct.Reg* %112, i32 0, i32 0
  %R8W = bitcast %union.anon* %113 to i16*
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %115 = getelementptr inbounds %struct.GPR, %struct.GPR* %114, i32 0, i32 19
  %116 = getelementptr inbounds %struct.Reg, %struct.Reg* %115, i32 0, i32 0
  %R9W = bitcast %union.anon* %116 to i16*
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %118 = getelementptr inbounds %struct.GPR, %struct.GPR* %117, i32 0, i32 21
  %119 = getelementptr inbounds %struct.Reg, %struct.Reg* %118, i32 0, i32 0
  %R10W = bitcast %union.anon* %119 to i16*
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %121 = getelementptr inbounds %struct.GPR, %struct.GPR* %120, i32 0, i32 23
  %122 = getelementptr inbounds %struct.Reg, %struct.Reg* %121, i32 0, i32 0
  %R11W = bitcast %union.anon* %122 to i16*
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %124 = getelementptr inbounds %struct.GPR, %struct.GPR* %123, i32 0, i32 25
  %125 = getelementptr inbounds %struct.Reg, %struct.Reg* %124, i32 0, i32 0
  %R12W = bitcast %union.anon* %125 to i16*
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %127 = getelementptr inbounds %struct.GPR, %struct.GPR* %126, i32 0, i32 27
  %128 = getelementptr inbounds %struct.Reg, %struct.Reg* %127, i32 0, i32 0
  %R13W = bitcast %union.anon* %128 to i16*
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %130 = getelementptr inbounds %struct.GPR, %struct.GPR* %129, i32 0, i32 29
  %131 = getelementptr inbounds %struct.Reg, %struct.Reg* %130, i32 0, i32 0
  %R14W = bitcast %union.anon* %131 to i16*
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %133 = getelementptr inbounds %struct.GPR, %struct.GPR* %132, i32 0, i32 31
  %134 = getelementptr inbounds %struct.Reg, %struct.Reg* %133, i32 0, i32 0
  %R15W = bitcast %union.anon* %134 to i16*
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %136 = getelementptr inbounds %struct.GPR, %struct.GPR* %135, i32 0, i32 33
  %137 = getelementptr inbounds %struct.Reg, %struct.Reg* %136, i32 0, i32 0
  %IP = bitcast %union.anon* %137 to i16*
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %139 = getelementptr inbounds %struct.GPR, %struct.GPR* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.Reg, %struct.Reg* %139, i32 0, i32 0
  %EAX = bitcast %union.anon* %140 to i32*
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %142 = getelementptr inbounds %struct.GPR, %struct.GPR* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.Reg, %struct.Reg* %142, i32 0, i32 0
  %EBX = bitcast %union.anon* %143 to i32*
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %145 = getelementptr inbounds %struct.GPR, %struct.GPR* %144, i32 0, i32 5
  %146 = getelementptr inbounds %struct.Reg, %struct.Reg* %145, i32 0, i32 0
  %ECX = bitcast %union.anon* %146 to i32*
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %148 = getelementptr inbounds %struct.GPR, %struct.GPR* %147, i32 0, i32 7
  %149 = getelementptr inbounds %struct.Reg, %struct.Reg* %148, i32 0, i32 0
  %EDX = bitcast %union.anon* %149 to i32*
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %151 = getelementptr inbounds %struct.GPR, %struct.GPR* %150, i32 0, i32 9
  %152 = getelementptr inbounds %struct.Reg, %struct.Reg* %151, i32 0, i32 0
  %ESI = bitcast %union.anon* %152 to i32*
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %154 = getelementptr inbounds %struct.GPR, %struct.GPR* %153, i32 0, i32 11
  %155 = getelementptr inbounds %struct.Reg, %struct.Reg* %154, i32 0, i32 0
  %EDI = bitcast %union.anon* %155 to i32*
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %157 = getelementptr inbounds %struct.GPR, %struct.GPR* %156, i32 0, i32 13
  %158 = getelementptr inbounds %struct.Reg, %struct.Reg* %157, i32 0, i32 0
  %ESP = bitcast %union.anon* %158 to i32*
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %160 = getelementptr inbounds %struct.GPR, %struct.GPR* %159, i32 0, i32 15
  %161 = getelementptr inbounds %struct.Reg, %struct.Reg* %160, i32 0, i32 0
  %EBP = bitcast %union.anon* %161 to i32*
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %163 = getelementptr inbounds %struct.GPR, %struct.GPR* %162, i32 0, i32 33
  %164 = getelementptr inbounds %struct.Reg, %struct.Reg* %163, i32 0, i32 0
  %EIP = bitcast %union.anon* %164 to i32*
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %166 = getelementptr inbounds %struct.GPR, %struct.GPR* %165, i32 0, i32 17
  %167 = getelementptr inbounds %struct.Reg, %struct.Reg* %166, i32 0, i32 0
  %R8D = bitcast %union.anon* %167 to i32*
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %169 = getelementptr inbounds %struct.GPR, %struct.GPR* %168, i32 0, i32 19
  %170 = getelementptr inbounds %struct.Reg, %struct.Reg* %169, i32 0, i32 0
  %R9D = bitcast %union.anon* %170 to i32*
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %172 = getelementptr inbounds %struct.GPR, %struct.GPR* %171, i32 0, i32 21
  %173 = getelementptr inbounds %struct.Reg, %struct.Reg* %172, i32 0, i32 0
  %R10D = bitcast %union.anon* %173 to i32*
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %175 = getelementptr inbounds %struct.GPR, %struct.GPR* %174, i32 0, i32 23
  %176 = getelementptr inbounds %struct.Reg, %struct.Reg* %175, i32 0, i32 0
  %R11D = bitcast %union.anon* %176 to i32*
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %178 = getelementptr inbounds %struct.GPR, %struct.GPR* %177, i32 0, i32 25
  %179 = getelementptr inbounds %struct.Reg, %struct.Reg* %178, i32 0, i32 0
  %R12D = bitcast %union.anon* %179 to i32*
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %181 = getelementptr inbounds %struct.GPR, %struct.GPR* %180, i32 0, i32 27
  %182 = getelementptr inbounds %struct.Reg, %struct.Reg* %181, i32 0, i32 0
  %R13D = bitcast %union.anon* %182 to i32*
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %184 = getelementptr inbounds %struct.GPR, %struct.GPR* %183, i32 0, i32 29
  %185 = getelementptr inbounds %struct.Reg, %struct.Reg* %184, i32 0, i32 0
  %R14D = bitcast %union.anon* %185 to i32*
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %187 = getelementptr inbounds %struct.GPR, %struct.GPR* %186, i32 0, i32 31
  %188 = getelementptr inbounds %struct.Reg, %struct.Reg* %187, i32 0, i32 0
  %R15D = bitcast %union.anon* %188 to i32*
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %190 = getelementptr inbounds %struct.GPR, %struct.GPR* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.Reg, %struct.Reg* %190, i32 0, i32 0
  %RAX = bitcast %union.anon* %191 to i64*
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %193 = getelementptr inbounds %struct.GPR, %struct.GPR* %192, i32 0, i32 3
  %194 = getelementptr inbounds %struct.Reg, %struct.Reg* %193, i32 0, i32 0
  %RBX = bitcast %union.anon* %194 to i64*
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %196 = getelementptr inbounds %struct.GPR, %struct.GPR* %195, i32 0, i32 5
  %197 = getelementptr inbounds %struct.Reg, %struct.Reg* %196, i32 0, i32 0
  %RCX = bitcast %union.anon* %197 to i64*
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %199 = getelementptr inbounds %struct.GPR, %struct.GPR* %198, i32 0, i32 7
  %200 = getelementptr inbounds %struct.Reg, %struct.Reg* %199, i32 0, i32 0
  %RDX = bitcast %union.anon* %200 to i64*
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %202 = getelementptr inbounds %struct.GPR, %struct.GPR* %201, i32 0, i32 9
  %203 = getelementptr inbounds %struct.Reg, %struct.Reg* %202, i32 0, i32 0
  %RSI = bitcast %union.anon* %203 to i64*
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %205 = getelementptr inbounds %struct.GPR, %struct.GPR* %204, i32 0, i32 11
  %206 = getelementptr inbounds %struct.Reg, %struct.Reg* %205, i32 0, i32 0
  %RDI = bitcast %union.anon* %206 to i64*
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %208 = getelementptr inbounds %struct.GPR, %struct.GPR* %207, i32 0, i32 13
  %209 = getelementptr inbounds %struct.Reg, %struct.Reg* %208, i32 0, i32 0
  %RSP = bitcast %union.anon* %209 to i64*
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %211 = getelementptr inbounds %struct.GPR, %struct.GPR* %210, i32 0, i32 15
  %212 = getelementptr inbounds %struct.Reg, %struct.Reg* %211, i32 0, i32 0
  %RBP = bitcast %union.anon* %212 to i64*
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %214 = getelementptr inbounds %struct.GPR, %struct.GPR* %213, i32 0, i32 17
  %215 = getelementptr inbounds %struct.Reg, %struct.Reg* %214, i32 0, i32 0
  %R8 = bitcast %union.anon* %215 to i64*
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %217 = getelementptr inbounds %struct.GPR, %struct.GPR* %216, i32 0, i32 19
  %218 = getelementptr inbounds %struct.Reg, %struct.Reg* %217, i32 0, i32 0
  %R9 = bitcast %union.anon* %218 to i64*
  %219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %220 = getelementptr inbounds %struct.GPR, %struct.GPR* %219, i32 0, i32 21
  %221 = getelementptr inbounds %struct.Reg, %struct.Reg* %220, i32 0, i32 0
  %R10 = bitcast %union.anon* %221 to i64*
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %223 = getelementptr inbounds %struct.GPR, %struct.GPR* %222, i32 0, i32 23
  %224 = getelementptr inbounds %struct.Reg, %struct.Reg* %223, i32 0, i32 0
  %R11 = bitcast %union.anon* %224 to i64*
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %226 = getelementptr inbounds %struct.GPR, %struct.GPR* %225, i32 0, i32 25
  %227 = getelementptr inbounds %struct.Reg, %struct.Reg* %226, i32 0, i32 0
  %R12 = bitcast %union.anon* %227 to i64*
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %229 = getelementptr inbounds %struct.GPR, %struct.GPR* %228, i32 0, i32 27
  %230 = getelementptr inbounds %struct.Reg, %struct.Reg* %229, i32 0, i32 0
  %R13 = bitcast %union.anon* %230 to i64*
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %232 = getelementptr inbounds %struct.GPR, %struct.GPR* %231, i32 0, i32 29
  %233 = getelementptr inbounds %struct.Reg, %struct.Reg* %232, i32 0, i32 0
  %R14 = bitcast %union.anon* %233 to i64*
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %235 = getelementptr inbounds %struct.GPR, %struct.GPR* %234, i32 0, i32 31
  %236 = getelementptr inbounds %struct.Reg, %struct.Reg* %235, i32 0, i32 0
  %R15 = bitcast %union.anon* %236 to i64*
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %238 = getelementptr inbounds %struct.GPR, %struct.GPR* %237, i32 0, i32 33
  %239 = getelementptr inbounds %struct.Reg, %struct.Reg* %238, i32 0, i32 0
  %RIP = bitcast %union.anon* %239 to i64*
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %241 = getelementptr inbounds %struct.Segments, %struct.Segments* %240, i32 0, i32 1
  %SS = bitcast %union.SegmentSelector* %241 to i16*
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %243 = getelementptr inbounds %struct.Segments, %struct.Segments* %242, i32 0, i32 3
  %ES = bitcast %union.SegmentSelector* %243 to i16*
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %245 = getelementptr inbounds %struct.Segments, %struct.Segments* %244, i32 0, i32 5
  %GS = bitcast %union.SegmentSelector* %245 to i16*
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %247 = getelementptr inbounds %struct.Segments, %struct.Segments* %246, i32 0, i32 7
  %FS = bitcast %union.SegmentSelector* %247 to i16*
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %249 = getelementptr inbounds %struct.Segments, %struct.Segments* %248, i32 0, i32 9
  %DS = bitcast %union.SegmentSelector* %249 to i16*
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %251 = getelementptr inbounds %struct.Segments, %struct.Segments* %250, i32 0, i32 11
  %CS = bitcast %union.SegmentSelector* %251 to i16*
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 5
  %253 = getelementptr inbounds %struct.AddressSpace, %struct.AddressSpace* %252, i32 0, i32 5
  %254 = getelementptr inbounds %struct.Reg, %struct.Reg* %253, i32 0, i32 0
  %GS_BASE = bitcast %union.anon* %254 to i64*
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 5
  %256 = getelementptr inbounds %struct.AddressSpace, %struct.AddressSpace* %255, i32 0, i32 7
  %257 = getelementptr inbounds %struct.Reg, %struct.Reg* %256, i32 0, i32 0
  %FS_BASE = bitcast %union.anon* %257 to i64*
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %259 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %258, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %259 to %"class.std::bitset"*
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %261 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %260, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %261 to %"class.std::bitset"*
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %263 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %262, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %263 to %"class.std::bitset"*
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %265 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %264, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %265 to %"class.std::bitset"*
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %267 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %266, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %267 to %"class.std::bitset"*
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %269 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %268, i64 0, i64 5
  %YMM5 = bitcast %union.VectorReg* %269 to %"class.std::bitset"*
  %270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %271 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %270, i64 0, i64 6
  %YMM6 = bitcast %union.VectorReg* %271 to %"class.std::bitset"*
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %273 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %272, i64 0, i64 7
  %YMM7 = bitcast %union.VectorReg* %273 to %"class.std::bitset"*
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %275 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %274, i64 0, i64 8
  %YMM8 = bitcast %union.VectorReg* %275 to %"class.std::bitset"*
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %277 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %276, i64 0, i64 9
  %YMM9 = bitcast %union.VectorReg* %277 to %"class.std::bitset"*
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %279 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %278, i64 0, i64 10
  %YMM10 = bitcast %union.VectorReg* %279 to %"class.std::bitset"*
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %281 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %280, i64 0, i64 11
  %YMM11 = bitcast %union.VectorReg* %281 to %"class.std::bitset"*
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %283 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %282, i64 0, i64 12
  %YMM12 = bitcast %union.VectorReg* %283 to %"class.std::bitset"*
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %285 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %284, i64 0, i64 13
  %YMM13 = bitcast %union.VectorReg* %285 to %"class.std::bitset"*
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %287 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %286, i64 0, i64 14
  %YMM14 = bitcast %union.VectorReg* %287 to %"class.std::bitset"*
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %289 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %288, i64 0, i64 15
  %YMM15 = bitcast %union.VectorReg* %289 to %"class.std::bitset"*
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %291 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %290, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %291 to %union.vec128_t*
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %293 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %292, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %293 to %union.vec128_t*
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %295 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %294, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %295 to %union.vec128_t*
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %297 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %296, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %297 to %union.vec128_t*
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %299 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %298, i64 0, i64 4
  %XMM4 = bitcast %union.VectorReg* %299 to %union.vec128_t*
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %301 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %300, i64 0, i64 5
  %XMM5 = bitcast %union.VectorReg* %301 to %union.vec128_t*
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %303 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %302, i64 0, i64 6
  %XMM6 = bitcast %union.VectorReg* %303 to %union.vec128_t*
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %305 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %304, i64 0, i64 7
  %XMM7 = bitcast %union.VectorReg* %305 to %union.vec128_t*
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %307 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %306, i64 0, i64 8
  %XMM8 = bitcast %union.VectorReg* %307 to %union.vec128_t*
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %309 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %308, i64 0, i64 9
  %XMM9 = bitcast %union.VectorReg* %309 to %union.vec128_t*
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %311 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %310, i64 0, i64 10
  %XMM10 = bitcast %union.VectorReg* %311 to %union.vec128_t*
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %313 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %312, i64 0, i64 11
  %XMM11 = bitcast %union.VectorReg* %313 to %union.vec128_t*
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %315 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %314, i64 0, i64 12
  %XMM12 = bitcast %union.VectorReg* %315 to %union.vec128_t*
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %317 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %316, i64 0, i64 13
  %XMM13 = bitcast %union.VectorReg* %317 to %union.vec128_t*
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %319 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %318, i64 0, i64 14
  %XMM14 = bitcast %union.VectorReg* %319 to %union.vec128_t*
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %321 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %320, i64 0, i64 15
  %XMM15 = bitcast %union.VectorReg* %321 to %union.vec128_t*
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %323 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %322, i32 0, i32 0
  %324 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %323, i64 0, i64 0
  %ST0 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %324, i32 0, i32 1
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %326 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %325, i32 0, i32 0
  %327 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %326, i64 0, i64 1
  %ST1 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %327, i32 0, i32 1
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %329 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %328, i32 0, i32 0
  %330 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %329, i64 0, i64 2
  %ST2 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %330, i32 0, i32 1
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %332 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %331, i32 0, i32 0
  %333 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %332, i64 0, i64 3
  %ST3 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %333, i32 0, i32 1
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %335 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %334, i32 0, i32 0
  %336 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %335, i64 0, i64 4
  %ST4 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %336, i32 0, i32 1
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %338 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %337, i32 0, i32 0
  %339 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %338, i64 0, i64 5
  %ST5 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %339, i32 0, i32 1
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %341 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %340, i32 0, i32 0
  %342 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %341, i64 0, i64 6
  %ST6 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %342, i32 0, i32 1
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %344 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %343, i32 0, i32 0
  %345 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %344, i64 0, i64 7
  %ST7 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %345, i32 0, i32 1
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %347 = getelementptr inbounds %struct.MMX, %struct.MMX* %346, i32 0, i32 0
  %348 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %347, i64 0, i64 0
  %349 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %348, i32 0, i32 1
  %350 = bitcast %union.vec64_t* %349 to %struct.uint64v1_t*
  %351 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %350, i32 0, i32 0
  %MM0 = getelementptr inbounds [1 x i64], [1 x i64]* %351, i64 0, i64 0
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %353 = getelementptr inbounds %struct.MMX, %struct.MMX* %352, i32 0, i32 0
  %354 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %353, i64 0, i64 1
  %355 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %354, i32 0, i32 1
  %356 = bitcast %union.vec64_t* %355 to %struct.uint64v1_t*
  %357 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %356, i32 0, i32 0
  %MM1 = getelementptr inbounds [1 x i64], [1 x i64]* %357, i64 0, i64 0
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %359 = getelementptr inbounds %struct.MMX, %struct.MMX* %358, i32 0, i32 0
  %360 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %359, i64 0, i64 2
  %361 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %360, i32 0, i32 1
  %362 = bitcast %union.vec64_t* %361 to %struct.uint64v1_t*
  %363 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %362, i32 0, i32 0
  %MM2 = getelementptr inbounds [1 x i64], [1 x i64]* %363, i64 0, i64 0
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %365 = getelementptr inbounds %struct.MMX, %struct.MMX* %364, i32 0, i32 0
  %366 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %365, i64 0, i64 3
  %367 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %366, i32 0, i32 1
  %368 = bitcast %union.vec64_t* %367 to %struct.uint64v1_t*
  %369 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %368, i32 0, i32 0
  %MM3 = getelementptr inbounds [1 x i64], [1 x i64]* %369, i64 0, i64 0
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %371 = getelementptr inbounds %struct.MMX, %struct.MMX* %370, i32 0, i32 0
  %372 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %371, i64 0, i64 4
  %373 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %372, i32 0, i32 1
  %374 = bitcast %union.vec64_t* %373 to %struct.uint64v1_t*
  %375 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %374, i32 0, i32 0
  %MM4 = getelementptr inbounds [1 x i64], [1 x i64]* %375, i64 0, i64 0
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %377 = getelementptr inbounds %struct.MMX, %struct.MMX* %376, i32 0, i32 0
  %378 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %377, i64 0, i64 5
  %379 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %378, i32 0, i32 1
  %380 = bitcast %union.vec64_t* %379 to %struct.uint64v1_t*
  %381 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %380, i32 0, i32 0
  %MM5 = getelementptr inbounds [1 x i64], [1 x i64]* %381, i64 0, i64 0
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %383 = getelementptr inbounds %struct.MMX, %struct.MMX* %382, i32 0, i32 0
  %384 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %383, i64 0, i64 6
  %385 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %384, i32 0, i32 1
  %386 = bitcast %union.vec64_t* %385 to %struct.uint64v1_t*
  %387 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %386, i32 0, i32 0
  %MM6 = getelementptr inbounds [1 x i64], [1 x i64]* %387, i64 0, i64 0
  %388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %389 = getelementptr inbounds %struct.MMX, %struct.MMX* %388, i32 0, i32 0
  %390 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %389, i64 0, i64 7
  %391 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %390, i32 0, i32 1
  %392 = bitcast %union.vec64_t* %391 to %struct.uint64v1_t*
  %393 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %392, i32 0, i32 0
  %MM7 = getelementptr inbounds [1 x i64], [1 x i64]* %393, i64 0, i64 0
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %AF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %394, i32 0, i32 5
  %395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %CF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %395, i32 0, i32 1
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %DF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %396, i32 0, i32 11
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %OF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %397, i32 0, i32 13
  %398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %PF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %398, i32 0, i32 3
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %SF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %399, i32 0, i32 9
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %ZF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %400, i32 0, i32 7
  store i64* @DR0, i64** %_DR0, align 8
  store i64* @DR1, i64** %_DR1, align 8
  store i64* @DR2, i64** %_DR2, align 8
  store i64* @DR3, i64** %_DR3, align 8
  store i64* @DR4, i64** %_DR4, align 8
  store i64* @DR5, i64** %_DR5, align 8
  store i64* @DR6, i64** %_DR6, align 8
  store i64* @DR7, i64** %_DR7, align 8
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR0, i32 0, i32 0), i64** %CR0, align 8
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR1, i32 0, i32 0), i64** %CR1, align 8
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR2, i32 0, i32 0), i64** %CR2, align 8
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR3, i32 0, i32 0), i64** %CR3, align 8
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR4, i32 0, i32 0), i64** %CR4, align 8
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR8, i32 0, i32 0), i64** %CR8, align 8
  %401 = bitcast %"class.std::bitset"* %YMM0 to double*
  %402 = load double, double* %401
  %403 = load i64, i64* %RSP
  %404 = load %struct.Memory*, %struct.Memory** %MEMORY
  %405 = inttoptr i64 %403 to i64*
  %406 = load i64, i64* %405
  store i64 %406, i64* %PC
  %407 = add i64 %403, 8
  store i64 %407, i64* %RSP
  %408 = call double @sin(double %402)
  store %"class.std::bitset" zeroinitializer, %"class.std::bitset"* %YMM0
  %409 = bitcast %"class.std::bitset"* %YMM0 to double*
  store double %408, double* %409
  %410 = load %struct.Memory*, %struct.Memory** %MEMORY
  ret %struct.Memory* %410
}

; Function Attrs: alwaysinline inlinehint
define %struct.Memory* @ext_400530_cos(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #16 {
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
  store i8 0, i8* %BRANCH_TAKEN, align 1
  store i64 0, i64* %SS_BASE, align 8
  store i64 0, i64* %ES_BASE, align 8
  store i64 0, i64* %DS_BASE, align 8
  store i64 0, i64* %CS_BASE, align 8
  store %struct.State* %0, %struct.State** %STATE, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 33
  %6 = getelementptr inbounds %struct.Reg, %struct.Reg* %5, i32 0, i32 0
  %PC = bitcast %union.anon* %6 to i64*
  store i64 %1, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0
  %10 = bitcast %union.anon* %9 to %struct.anon.2*
  %AH = getelementptr inbounds %struct.anon.2, %struct.anon.2* %10, i32 0, i32 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %12 = getelementptr inbounds %struct.GPR, %struct.GPR* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.Reg, %struct.Reg* %12, i32 0, i32 0
  %14 = bitcast %union.anon* %13 to %struct.anon.2*
  %BH = getelementptr inbounds %struct.anon.2, %struct.anon.2* %14, i32 0, i32 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %16 = getelementptr inbounds %struct.GPR, %struct.GPR* %15, i32 0, i32 5
  %17 = getelementptr inbounds %struct.Reg, %struct.Reg* %16, i32 0, i32 0
  %18 = bitcast %union.anon* %17 to %struct.anon.2*
  %CH = getelementptr inbounds %struct.anon.2, %struct.anon.2* %18, i32 0, i32 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %20 = getelementptr inbounds %struct.GPR, %struct.GPR* %19, i32 0, i32 7
  %21 = getelementptr inbounds %struct.Reg, %struct.Reg* %20, i32 0, i32 0
  %22 = bitcast %union.anon* %21 to %struct.anon.2*
  %DH = getelementptr inbounds %struct.anon.2, %struct.anon.2* %22, i32 0, i32 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %26 = bitcast %union.anon* %25 to %struct.anon.2*
  %AL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %26, i32 0, i32 0
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %28 = getelementptr inbounds %struct.GPR, %struct.GPR* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.Reg, %struct.Reg* %28, i32 0, i32 0
  %30 = bitcast %union.anon* %29 to %struct.anon.2*
  %BL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %30, i32 0, i32 0
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %32 = getelementptr inbounds %struct.GPR, %struct.GPR* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.Reg, %struct.Reg* %32, i32 0, i32 0
  %34 = bitcast %union.anon* %33 to %struct.anon.2*
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %34, i32 0, i32 0
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %36 = getelementptr inbounds %struct.GPR, %struct.GPR* %35, i32 0, i32 7
  %37 = getelementptr inbounds %struct.Reg, %struct.Reg* %36, i32 0, i32 0
  %38 = bitcast %union.anon* %37 to %struct.anon.2*
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %38, i32 0, i32 0
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %40 = getelementptr inbounds %struct.GPR, %struct.GPR* %39, i32 0, i32 9
  %41 = getelementptr inbounds %struct.Reg, %struct.Reg* %40, i32 0, i32 0
  %42 = bitcast %union.anon* %41 to %struct.anon.2*
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %42, i32 0, i32 0
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %44 = getelementptr inbounds %struct.GPR, %struct.GPR* %43, i32 0, i32 11
  %45 = getelementptr inbounds %struct.Reg, %struct.Reg* %44, i32 0, i32 0
  %46 = bitcast %union.anon* %45 to %struct.anon.2*
  %DIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %46, i32 0, i32 0
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %48 = getelementptr inbounds %struct.GPR, %struct.GPR* %47, i32 0, i32 13
  %49 = getelementptr inbounds %struct.Reg, %struct.Reg* %48, i32 0, i32 0
  %50 = bitcast %union.anon* %49 to %struct.anon.2*
  %SPL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %50, i32 0, i32 0
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %52 = getelementptr inbounds %struct.GPR, %struct.GPR* %51, i32 0, i32 15
  %53 = getelementptr inbounds %struct.Reg, %struct.Reg* %52, i32 0, i32 0
  %54 = bitcast %union.anon* %53 to %struct.anon.2*
  %BPL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %54, i32 0, i32 0
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %56 = getelementptr inbounds %struct.GPR, %struct.GPR* %55, i32 0, i32 17
  %57 = getelementptr inbounds %struct.Reg, %struct.Reg* %56, i32 0, i32 0
  %58 = bitcast %union.anon* %57 to %struct.anon.2*
  %R8B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %58, i32 0, i32 0
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %60 = getelementptr inbounds %struct.GPR, %struct.GPR* %59, i32 0, i32 19
  %61 = getelementptr inbounds %struct.Reg, %struct.Reg* %60, i32 0, i32 0
  %62 = bitcast %union.anon* %61 to %struct.anon.2*
  %R9B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %62, i32 0, i32 0
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %64 = getelementptr inbounds %struct.GPR, %struct.GPR* %63, i32 0, i32 21
  %65 = getelementptr inbounds %struct.Reg, %struct.Reg* %64, i32 0, i32 0
  %66 = bitcast %union.anon* %65 to %struct.anon.2*
  %R10B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %66, i32 0, i32 0
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 23
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %70 = bitcast %union.anon* %69 to %struct.anon.2*
  %R11B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %70, i32 0, i32 0
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %72 = getelementptr inbounds %struct.GPR, %struct.GPR* %71, i32 0, i32 25
  %73 = getelementptr inbounds %struct.Reg, %struct.Reg* %72, i32 0, i32 0
  %74 = bitcast %union.anon* %73 to %struct.anon.2*
  %R12B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %74, i32 0, i32 0
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 27
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %78 = bitcast %union.anon* %77 to %struct.anon.2*
  %R13B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %78, i32 0, i32 0
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %80 = getelementptr inbounds %struct.GPR, %struct.GPR* %79, i32 0, i32 29
  %81 = getelementptr inbounds %struct.Reg, %struct.Reg* %80, i32 0, i32 0
  %82 = bitcast %union.anon* %81 to %struct.anon.2*
  %R14B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %82, i32 0, i32 0
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %84 = getelementptr inbounds %struct.GPR, %struct.GPR* %83, i32 0, i32 31
  %85 = getelementptr inbounds %struct.Reg, %struct.Reg* %84, i32 0, i32 0
  %86 = bitcast %union.anon* %85 to %struct.anon.2*
  %R15B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %86, i32 0, i32 0
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %88 = getelementptr inbounds %struct.GPR, %struct.GPR* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.Reg, %struct.Reg* %88, i32 0, i32 0
  %AX = bitcast %union.anon* %89 to i16*
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %91 = getelementptr inbounds %struct.GPR, %struct.GPR* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.Reg, %struct.Reg* %91, i32 0, i32 0
  %BX = bitcast %union.anon* %92 to i16*
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %94 = getelementptr inbounds %struct.GPR, %struct.GPR* %93, i32 0, i32 5
  %95 = getelementptr inbounds %struct.Reg, %struct.Reg* %94, i32 0, i32 0
  %CX = bitcast %union.anon* %95 to i16*
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %97 = getelementptr inbounds %struct.GPR, %struct.GPR* %96, i32 0, i32 7
  %98 = getelementptr inbounds %struct.Reg, %struct.Reg* %97, i32 0, i32 0
  %DX = bitcast %union.anon* %98 to i16*
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %100 = getelementptr inbounds %struct.GPR, %struct.GPR* %99, i32 0, i32 9
  %101 = getelementptr inbounds %struct.Reg, %struct.Reg* %100, i32 0, i32 0
  %SI = bitcast %union.anon* %101 to i16*
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %103 = getelementptr inbounds %struct.GPR, %struct.GPR* %102, i32 0, i32 11
  %104 = getelementptr inbounds %struct.Reg, %struct.Reg* %103, i32 0, i32 0
  %DI = bitcast %union.anon* %104 to i16*
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %106 = getelementptr inbounds %struct.GPR, %struct.GPR* %105, i32 0, i32 13
  %107 = getelementptr inbounds %struct.Reg, %struct.Reg* %106, i32 0, i32 0
  %SP = bitcast %union.anon* %107 to i16*
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %109 = getelementptr inbounds %struct.GPR, %struct.GPR* %108, i32 0, i32 15
  %110 = getelementptr inbounds %struct.Reg, %struct.Reg* %109, i32 0, i32 0
  %BP = bitcast %union.anon* %110 to i16*
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %112 = getelementptr inbounds %struct.GPR, %struct.GPR* %111, i32 0, i32 17
  %113 = getelementptr inbounds %struct.Reg, %struct.Reg* %112, i32 0, i32 0
  %R8W = bitcast %union.anon* %113 to i16*
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %115 = getelementptr inbounds %struct.GPR, %struct.GPR* %114, i32 0, i32 19
  %116 = getelementptr inbounds %struct.Reg, %struct.Reg* %115, i32 0, i32 0
  %R9W = bitcast %union.anon* %116 to i16*
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %118 = getelementptr inbounds %struct.GPR, %struct.GPR* %117, i32 0, i32 21
  %119 = getelementptr inbounds %struct.Reg, %struct.Reg* %118, i32 0, i32 0
  %R10W = bitcast %union.anon* %119 to i16*
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %121 = getelementptr inbounds %struct.GPR, %struct.GPR* %120, i32 0, i32 23
  %122 = getelementptr inbounds %struct.Reg, %struct.Reg* %121, i32 0, i32 0
  %R11W = bitcast %union.anon* %122 to i16*
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %124 = getelementptr inbounds %struct.GPR, %struct.GPR* %123, i32 0, i32 25
  %125 = getelementptr inbounds %struct.Reg, %struct.Reg* %124, i32 0, i32 0
  %R12W = bitcast %union.anon* %125 to i16*
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %127 = getelementptr inbounds %struct.GPR, %struct.GPR* %126, i32 0, i32 27
  %128 = getelementptr inbounds %struct.Reg, %struct.Reg* %127, i32 0, i32 0
  %R13W = bitcast %union.anon* %128 to i16*
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %130 = getelementptr inbounds %struct.GPR, %struct.GPR* %129, i32 0, i32 29
  %131 = getelementptr inbounds %struct.Reg, %struct.Reg* %130, i32 0, i32 0
  %R14W = bitcast %union.anon* %131 to i16*
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %133 = getelementptr inbounds %struct.GPR, %struct.GPR* %132, i32 0, i32 31
  %134 = getelementptr inbounds %struct.Reg, %struct.Reg* %133, i32 0, i32 0
  %R15W = bitcast %union.anon* %134 to i16*
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %136 = getelementptr inbounds %struct.GPR, %struct.GPR* %135, i32 0, i32 33
  %137 = getelementptr inbounds %struct.Reg, %struct.Reg* %136, i32 0, i32 0
  %IP = bitcast %union.anon* %137 to i16*
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %139 = getelementptr inbounds %struct.GPR, %struct.GPR* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.Reg, %struct.Reg* %139, i32 0, i32 0
  %EAX = bitcast %union.anon* %140 to i32*
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %142 = getelementptr inbounds %struct.GPR, %struct.GPR* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.Reg, %struct.Reg* %142, i32 0, i32 0
  %EBX = bitcast %union.anon* %143 to i32*
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %145 = getelementptr inbounds %struct.GPR, %struct.GPR* %144, i32 0, i32 5
  %146 = getelementptr inbounds %struct.Reg, %struct.Reg* %145, i32 0, i32 0
  %ECX = bitcast %union.anon* %146 to i32*
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %148 = getelementptr inbounds %struct.GPR, %struct.GPR* %147, i32 0, i32 7
  %149 = getelementptr inbounds %struct.Reg, %struct.Reg* %148, i32 0, i32 0
  %EDX = bitcast %union.anon* %149 to i32*
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %151 = getelementptr inbounds %struct.GPR, %struct.GPR* %150, i32 0, i32 9
  %152 = getelementptr inbounds %struct.Reg, %struct.Reg* %151, i32 0, i32 0
  %ESI = bitcast %union.anon* %152 to i32*
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %154 = getelementptr inbounds %struct.GPR, %struct.GPR* %153, i32 0, i32 11
  %155 = getelementptr inbounds %struct.Reg, %struct.Reg* %154, i32 0, i32 0
  %EDI = bitcast %union.anon* %155 to i32*
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %157 = getelementptr inbounds %struct.GPR, %struct.GPR* %156, i32 0, i32 13
  %158 = getelementptr inbounds %struct.Reg, %struct.Reg* %157, i32 0, i32 0
  %ESP = bitcast %union.anon* %158 to i32*
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %160 = getelementptr inbounds %struct.GPR, %struct.GPR* %159, i32 0, i32 15
  %161 = getelementptr inbounds %struct.Reg, %struct.Reg* %160, i32 0, i32 0
  %EBP = bitcast %union.anon* %161 to i32*
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %163 = getelementptr inbounds %struct.GPR, %struct.GPR* %162, i32 0, i32 33
  %164 = getelementptr inbounds %struct.Reg, %struct.Reg* %163, i32 0, i32 0
  %EIP = bitcast %union.anon* %164 to i32*
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %166 = getelementptr inbounds %struct.GPR, %struct.GPR* %165, i32 0, i32 17
  %167 = getelementptr inbounds %struct.Reg, %struct.Reg* %166, i32 0, i32 0
  %R8D = bitcast %union.anon* %167 to i32*
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %169 = getelementptr inbounds %struct.GPR, %struct.GPR* %168, i32 0, i32 19
  %170 = getelementptr inbounds %struct.Reg, %struct.Reg* %169, i32 0, i32 0
  %R9D = bitcast %union.anon* %170 to i32*
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %172 = getelementptr inbounds %struct.GPR, %struct.GPR* %171, i32 0, i32 21
  %173 = getelementptr inbounds %struct.Reg, %struct.Reg* %172, i32 0, i32 0
  %R10D = bitcast %union.anon* %173 to i32*
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %175 = getelementptr inbounds %struct.GPR, %struct.GPR* %174, i32 0, i32 23
  %176 = getelementptr inbounds %struct.Reg, %struct.Reg* %175, i32 0, i32 0
  %R11D = bitcast %union.anon* %176 to i32*
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %178 = getelementptr inbounds %struct.GPR, %struct.GPR* %177, i32 0, i32 25
  %179 = getelementptr inbounds %struct.Reg, %struct.Reg* %178, i32 0, i32 0
  %R12D = bitcast %union.anon* %179 to i32*
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %181 = getelementptr inbounds %struct.GPR, %struct.GPR* %180, i32 0, i32 27
  %182 = getelementptr inbounds %struct.Reg, %struct.Reg* %181, i32 0, i32 0
  %R13D = bitcast %union.anon* %182 to i32*
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %184 = getelementptr inbounds %struct.GPR, %struct.GPR* %183, i32 0, i32 29
  %185 = getelementptr inbounds %struct.Reg, %struct.Reg* %184, i32 0, i32 0
  %R14D = bitcast %union.anon* %185 to i32*
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %187 = getelementptr inbounds %struct.GPR, %struct.GPR* %186, i32 0, i32 31
  %188 = getelementptr inbounds %struct.Reg, %struct.Reg* %187, i32 0, i32 0
  %R15D = bitcast %union.anon* %188 to i32*
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %190 = getelementptr inbounds %struct.GPR, %struct.GPR* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.Reg, %struct.Reg* %190, i32 0, i32 0
  %RAX = bitcast %union.anon* %191 to i64*
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %193 = getelementptr inbounds %struct.GPR, %struct.GPR* %192, i32 0, i32 3
  %194 = getelementptr inbounds %struct.Reg, %struct.Reg* %193, i32 0, i32 0
  %RBX = bitcast %union.anon* %194 to i64*
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %196 = getelementptr inbounds %struct.GPR, %struct.GPR* %195, i32 0, i32 5
  %197 = getelementptr inbounds %struct.Reg, %struct.Reg* %196, i32 0, i32 0
  %RCX = bitcast %union.anon* %197 to i64*
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %199 = getelementptr inbounds %struct.GPR, %struct.GPR* %198, i32 0, i32 7
  %200 = getelementptr inbounds %struct.Reg, %struct.Reg* %199, i32 0, i32 0
  %RDX = bitcast %union.anon* %200 to i64*
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %202 = getelementptr inbounds %struct.GPR, %struct.GPR* %201, i32 0, i32 9
  %203 = getelementptr inbounds %struct.Reg, %struct.Reg* %202, i32 0, i32 0
  %RSI = bitcast %union.anon* %203 to i64*
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %205 = getelementptr inbounds %struct.GPR, %struct.GPR* %204, i32 0, i32 11
  %206 = getelementptr inbounds %struct.Reg, %struct.Reg* %205, i32 0, i32 0
  %RDI = bitcast %union.anon* %206 to i64*
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %208 = getelementptr inbounds %struct.GPR, %struct.GPR* %207, i32 0, i32 13
  %209 = getelementptr inbounds %struct.Reg, %struct.Reg* %208, i32 0, i32 0
  %RSP = bitcast %union.anon* %209 to i64*
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %211 = getelementptr inbounds %struct.GPR, %struct.GPR* %210, i32 0, i32 15
  %212 = getelementptr inbounds %struct.Reg, %struct.Reg* %211, i32 0, i32 0
  %RBP = bitcast %union.anon* %212 to i64*
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %214 = getelementptr inbounds %struct.GPR, %struct.GPR* %213, i32 0, i32 17
  %215 = getelementptr inbounds %struct.Reg, %struct.Reg* %214, i32 0, i32 0
  %R8 = bitcast %union.anon* %215 to i64*
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %217 = getelementptr inbounds %struct.GPR, %struct.GPR* %216, i32 0, i32 19
  %218 = getelementptr inbounds %struct.Reg, %struct.Reg* %217, i32 0, i32 0
  %R9 = bitcast %union.anon* %218 to i64*
  %219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %220 = getelementptr inbounds %struct.GPR, %struct.GPR* %219, i32 0, i32 21
  %221 = getelementptr inbounds %struct.Reg, %struct.Reg* %220, i32 0, i32 0
  %R10 = bitcast %union.anon* %221 to i64*
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %223 = getelementptr inbounds %struct.GPR, %struct.GPR* %222, i32 0, i32 23
  %224 = getelementptr inbounds %struct.Reg, %struct.Reg* %223, i32 0, i32 0
  %R11 = bitcast %union.anon* %224 to i64*
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %226 = getelementptr inbounds %struct.GPR, %struct.GPR* %225, i32 0, i32 25
  %227 = getelementptr inbounds %struct.Reg, %struct.Reg* %226, i32 0, i32 0
  %R12 = bitcast %union.anon* %227 to i64*
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %229 = getelementptr inbounds %struct.GPR, %struct.GPR* %228, i32 0, i32 27
  %230 = getelementptr inbounds %struct.Reg, %struct.Reg* %229, i32 0, i32 0
  %R13 = bitcast %union.anon* %230 to i64*
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %232 = getelementptr inbounds %struct.GPR, %struct.GPR* %231, i32 0, i32 29
  %233 = getelementptr inbounds %struct.Reg, %struct.Reg* %232, i32 0, i32 0
  %R14 = bitcast %union.anon* %233 to i64*
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %235 = getelementptr inbounds %struct.GPR, %struct.GPR* %234, i32 0, i32 31
  %236 = getelementptr inbounds %struct.Reg, %struct.Reg* %235, i32 0, i32 0
  %R15 = bitcast %union.anon* %236 to i64*
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %238 = getelementptr inbounds %struct.GPR, %struct.GPR* %237, i32 0, i32 33
  %239 = getelementptr inbounds %struct.Reg, %struct.Reg* %238, i32 0, i32 0
  %RIP = bitcast %union.anon* %239 to i64*
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %241 = getelementptr inbounds %struct.Segments, %struct.Segments* %240, i32 0, i32 1
  %SS = bitcast %union.SegmentSelector* %241 to i16*
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %243 = getelementptr inbounds %struct.Segments, %struct.Segments* %242, i32 0, i32 3
  %ES = bitcast %union.SegmentSelector* %243 to i16*
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %245 = getelementptr inbounds %struct.Segments, %struct.Segments* %244, i32 0, i32 5
  %GS = bitcast %union.SegmentSelector* %245 to i16*
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %247 = getelementptr inbounds %struct.Segments, %struct.Segments* %246, i32 0, i32 7
  %FS = bitcast %union.SegmentSelector* %247 to i16*
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %249 = getelementptr inbounds %struct.Segments, %struct.Segments* %248, i32 0, i32 9
  %DS = bitcast %union.SegmentSelector* %249 to i16*
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %251 = getelementptr inbounds %struct.Segments, %struct.Segments* %250, i32 0, i32 11
  %CS = bitcast %union.SegmentSelector* %251 to i16*
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 5
  %253 = getelementptr inbounds %struct.AddressSpace, %struct.AddressSpace* %252, i32 0, i32 5
  %254 = getelementptr inbounds %struct.Reg, %struct.Reg* %253, i32 0, i32 0
  %GS_BASE = bitcast %union.anon* %254 to i64*
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 5
  %256 = getelementptr inbounds %struct.AddressSpace, %struct.AddressSpace* %255, i32 0, i32 7
  %257 = getelementptr inbounds %struct.Reg, %struct.Reg* %256, i32 0, i32 0
  %FS_BASE = bitcast %union.anon* %257 to i64*
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %259 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %258, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %259 to %"class.std::bitset"*
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %261 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %260, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %261 to %"class.std::bitset"*
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %263 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %262, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %263 to %"class.std::bitset"*
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %265 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %264, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %265 to %"class.std::bitset"*
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %267 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %266, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %267 to %"class.std::bitset"*
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %269 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %268, i64 0, i64 5
  %YMM5 = bitcast %union.VectorReg* %269 to %"class.std::bitset"*
  %270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %271 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %270, i64 0, i64 6
  %YMM6 = bitcast %union.VectorReg* %271 to %"class.std::bitset"*
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %273 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %272, i64 0, i64 7
  %YMM7 = bitcast %union.VectorReg* %273 to %"class.std::bitset"*
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %275 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %274, i64 0, i64 8
  %YMM8 = bitcast %union.VectorReg* %275 to %"class.std::bitset"*
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %277 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %276, i64 0, i64 9
  %YMM9 = bitcast %union.VectorReg* %277 to %"class.std::bitset"*
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %279 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %278, i64 0, i64 10
  %YMM10 = bitcast %union.VectorReg* %279 to %"class.std::bitset"*
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %281 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %280, i64 0, i64 11
  %YMM11 = bitcast %union.VectorReg* %281 to %"class.std::bitset"*
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %283 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %282, i64 0, i64 12
  %YMM12 = bitcast %union.VectorReg* %283 to %"class.std::bitset"*
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %285 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %284, i64 0, i64 13
  %YMM13 = bitcast %union.VectorReg* %285 to %"class.std::bitset"*
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %287 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %286, i64 0, i64 14
  %YMM14 = bitcast %union.VectorReg* %287 to %"class.std::bitset"*
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %289 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %288, i64 0, i64 15
  %YMM15 = bitcast %union.VectorReg* %289 to %"class.std::bitset"*
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %291 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %290, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %291 to %union.vec128_t*
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %293 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %292, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %293 to %union.vec128_t*
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %295 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %294, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %295 to %union.vec128_t*
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %297 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %296, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %297 to %union.vec128_t*
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %299 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %298, i64 0, i64 4
  %XMM4 = bitcast %union.VectorReg* %299 to %union.vec128_t*
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %301 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %300, i64 0, i64 5
  %XMM5 = bitcast %union.VectorReg* %301 to %union.vec128_t*
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %303 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %302, i64 0, i64 6
  %XMM6 = bitcast %union.VectorReg* %303 to %union.vec128_t*
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %305 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %304, i64 0, i64 7
  %XMM7 = bitcast %union.VectorReg* %305 to %union.vec128_t*
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %307 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %306, i64 0, i64 8
  %XMM8 = bitcast %union.VectorReg* %307 to %union.vec128_t*
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %309 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %308, i64 0, i64 9
  %XMM9 = bitcast %union.VectorReg* %309 to %union.vec128_t*
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %311 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %310, i64 0, i64 10
  %XMM10 = bitcast %union.VectorReg* %311 to %union.vec128_t*
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %313 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %312, i64 0, i64 11
  %XMM11 = bitcast %union.VectorReg* %313 to %union.vec128_t*
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %315 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %314, i64 0, i64 12
  %XMM12 = bitcast %union.VectorReg* %315 to %union.vec128_t*
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %317 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %316, i64 0, i64 13
  %XMM13 = bitcast %union.VectorReg* %317 to %union.vec128_t*
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %319 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %318, i64 0, i64 14
  %XMM14 = bitcast %union.VectorReg* %319 to %union.vec128_t*
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %321 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %320, i64 0, i64 15
  %XMM15 = bitcast %union.VectorReg* %321 to %union.vec128_t*
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %323 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %322, i32 0, i32 0
  %324 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %323, i64 0, i64 0
  %ST0 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %324, i32 0, i32 1
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %326 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %325, i32 0, i32 0
  %327 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %326, i64 0, i64 1
  %ST1 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %327, i32 0, i32 1
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %329 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %328, i32 0, i32 0
  %330 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %329, i64 0, i64 2
  %ST2 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %330, i32 0, i32 1
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %332 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %331, i32 0, i32 0
  %333 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %332, i64 0, i64 3
  %ST3 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %333, i32 0, i32 1
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %335 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %334, i32 0, i32 0
  %336 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %335, i64 0, i64 4
  %ST4 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %336, i32 0, i32 1
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %338 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %337, i32 0, i32 0
  %339 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %338, i64 0, i64 5
  %ST5 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %339, i32 0, i32 1
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %341 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %340, i32 0, i32 0
  %342 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %341, i64 0, i64 6
  %ST6 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %342, i32 0, i32 1
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %344 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %343, i32 0, i32 0
  %345 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %344, i64 0, i64 7
  %ST7 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %345, i32 0, i32 1
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %347 = getelementptr inbounds %struct.MMX, %struct.MMX* %346, i32 0, i32 0
  %348 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %347, i64 0, i64 0
  %349 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %348, i32 0, i32 1
  %350 = bitcast %union.vec64_t* %349 to %struct.uint64v1_t*
  %351 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %350, i32 0, i32 0
  %MM0 = getelementptr inbounds [1 x i64], [1 x i64]* %351, i64 0, i64 0
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %353 = getelementptr inbounds %struct.MMX, %struct.MMX* %352, i32 0, i32 0
  %354 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %353, i64 0, i64 1
  %355 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %354, i32 0, i32 1
  %356 = bitcast %union.vec64_t* %355 to %struct.uint64v1_t*
  %357 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %356, i32 0, i32 0
  %MM1 = getelementptr inbounds [1 x i64], [1 x i64]* %357, i64 0, i64 0
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %359 = getelementptr inbounds %struct.MMX, %struct.MMX* %358, i32 0, i32 0
  %360 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %359, i64 0, i64 2
  %361 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %360, i32 0, i32 1
  %362 = bitcast %union.vec64_t* %361 to %struct.uint64v1_t*
  %363 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %362, i32 0, i32 0
  %MM2 = getelementptr inbounds [1 x i64], [1 x i64]* %363, i64 0, i64 0
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %365 = getelementptr inbounds %struct.MMX, %struct.MMX* %364, i32 0, i32 0
  %366 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %365, i64 0, i64 3
  %367 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %366, i32 0, i32 1
  %368 = bitcast %union.vec64_t* %367 to %struct.uint64v1_t*
  %369 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %368, i32 0, i32 0
  %MM3 = getelementptr inbounds [1 x i64], [1 x i64]* %369, i64 0, i64 0
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %371 = getelementptr inbounds %struct.MMX, %struct.MMX* %370, i32 0, i32 0
  %372 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %371, i64 0, i64 4
  %373 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %372, i32 0, i32 1
  %374 = bitcast %union.vec64_t* %373 to %struct.uint64v1_t*
  %375 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %374, i32 0, i32 0
  %MM4 = getelementptr inbounds [1 x i64], [1 x i64]* %375, i64 0, i64 0
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %377 = getelementptr inbounds %struct.MMX, %struct.MMX* %376, i32 0, i32 0
  %378 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %377, i64 0, i64 5
  %379 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %378, i32 0, i32 1
  %380 = bitcast %union.vec64_t* %379 to %struct.uint64v1_t*
  %381 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %380, i32 0, i32 0
  %MM5 = getelementptr inbounds [1 x i64], [1 x i64]* %381, i64 0, i64 0
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %383 = getelementptr inbounds %struct.MMX, %struct.MMX* %382, i32 0, i32 0
  %384 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %383, i64 0, i64 6
  %385 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %384, i32 0, i32 1
  %386 = bitcast %union.vec64_t* %385 to %struct.uint64v1_t*
  %387 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %386, i32 0, i32 0
  %MM6 = getelementptr inbounds [1 x i64], [1 x i64]* %387, i64 0, i64 0
  %388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %389 = getelementptr inbounds %struct.MMX, %struct.MMX* %388, i32 0, i32 0
  %390 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %389, i64 0, i64 7
  %391 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %390, i32 0, i32 1
  %392 = bitcast %union.vec64_t* %391 to %struct.uint64v1_t*
  %393 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %392, i32 0, i32 0
  %MM7 = getelementptr inbounds [1 x i64], [1 x i64]* %393, i64 0, i64 0
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %AF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %394, i32 0, i32 5
  %395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %CF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %395, i32 0, i32 1
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %DF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %396, i32 0, i32 11
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %OF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %397, i32 0, i32 13
  %398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %PF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %398, i32 0, i32 3
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %SF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %399, i32 0, i32 9
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %ZF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %400, i32 0, i32 7
  store i64* @DR0, i64** %_DR0, align 8
  store i64* @DR1, i64** %_DR1, align 8
  store i64* @DR2, i64** %_DR2, align 8
  store i64* @DR3, i64** %_DR3, align 8
  store i64* @DR4, i64** %_DR4, align 8
  store i64* @DR5, i64** %_DR5, align 8
  store i64* @DR6, i64** %_DR6, align 8
  store i64* @DR7, i64** %_DR7, align 8
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR0, i32 0, i32 0), i64** %CR0, align 8
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR1, i32 0, i32 0), i64** %CR1, align 8
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR2, i32 0, i32 0), i64** %CR2, align 8
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR3, i32 0, i32 0), i64** %CR3, align 8
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR4, i32 0, i32 0), i64** %CR4, align 8
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR8, i32 0, i32 0), i64** %CR8, align 8
  %401 = bitcast %"class.std::bitset"* %YMM0 to double*
  %402 = load double, double* %401
  %403 = load i64, i64* %RSP
  %404 = load %struct.Memory*, %struct.Memory** %MEMORY
  %405 = inttoptr i64 %403 to i64*
  %406 = load i64, i64* %405
  store i64 %406, i64* %PC
  %407 = add i64 %403, 8
  store i64 %407, i64* %RSP
  %408 = call double @cos(double %402)
  store %"class.std::bitset" zeroinitializer, %"class.std::bitset"* %YMM0
  %409 = bitcast %"class.std::bitset"* %YMM0 to double*
  store double %408, double* %409
  %410 = load %struct.Memory*, %struct.Memory** %MEMORY
  ret %struct.Memory* %410
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400c10___libc_csu_fini() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400c10;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @4, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_400c10___libc_csu_fini_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400c10___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400ba0___libc_csu_init() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400ba0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @5, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_400ba0___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400ba0___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @main() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4006c0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @6, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_4006c0_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_602070___libc_start_main(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.term_proc() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400c14;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @7, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400c14__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @sum_vec() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400690;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @8, void ()** @2)
  ret void
}

define internal %struct.Memory* @sum_vec_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400690_sum_vec(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @make_vec() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400650;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @9, void ()** @2)
  ret void
}

define internal %struct.Memory* @make_vec_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400650_make_vec(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.init_proc() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4004e8;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @10, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_4004e8__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

define internal void @__mcsema_destructor() {
  call void @callback_sub_400c10___libc_csu_fini()
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
  call void @callback_sub_400ba0___libc_csu_init()
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
attributes #16 = { alwaysinline inlinehint "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { nounwind }
attributes #18 = { alwaysinline nobuiltin nounwind }

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
!2452 = !{!2453, !2453, i64 0}
!2453 = !{!"double", !2430, i64 0}
!2454 = !{!2455, !2455, i64 0}
!2455 = !{!"float", !2430, i64 0}
!2456 = !{!2430, !2430, i64 0}
!2457 = !{!2458, !2460}
!2458 = distinct !{!2458, !2459, !"ext_6020b0_sqrt: argument 0"}
!2459 = distinct !{!2459, !"ext_6020b0_sqrt"}
!2460 = distinct !{!2460, !2459, !"ext_6020b0_sqrt: argument 1"}
!2461 = !{!2458}
!2462 = !{!2460}
!2463 = !{!2464, !2466}
!2464 = distinct !{!2464, !2465, !"ext_6020a8_sin: argument 0"}
!2465 = distinct !{!2465, !"ext_6020a8_sin"}
!2466 = distinct !{!2466, !2465, !"ext_6020a8_sin: argument 1"}
!2467 = !{!2464}
!2468 = !{!2466}
!2469 = !{!2470, !2472}
!2470 = distinct !{!2470, !2471, !"ext_400530_cos: argument 0"}
!2471 = distinct !{!2471, !"ext_400530_cos"}
!2472 = distinct !{!2472, !2471, !"ext_400530_cos: argument 1"}
!2473 = !{!2470}
!2474 = !{!2472}
