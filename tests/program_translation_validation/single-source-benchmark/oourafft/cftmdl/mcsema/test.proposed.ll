; ModuleID = 'test.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"
%union.anon = type { i64 }
%seg_400370__init_type = type <{ [23 x i8] }>
%seg_400390__text_type = type <{ [354 x i8] }>
%seg_4004f4__fini_type = type <{ [9 x i8] }>
%seg_400500__rodata_type = type <{ [4 x i8] }>
%seg_400504__eh_frame_hdr_type = type <{ [52 x i8] }>
%seg_400538__eh_frame_type = type <{ [208 x i8] }>
%seg_600e50__init_array_type = type <{ i64, i64 }>
%seg_601018__data_type = type <{ [16 x i8] }>
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
%struct.uint8v32_t = type { [32 x i8] }
%struct.anon.2 = type { i8, i8 }
%struct.int32v8_t = type { [8 x i32] }
%struct.float32v8_t = type { [8 x float] }
%struct.uint8v8_t = type { [8 x i8] }
%struct.uint8v16_t = type { [16 x i8] }
%struct.uint16v8_t = type { [8 x i16] }
%struct.uint8v4_t = type { [4 x i8] }
%struct.int16v4_t = type { [4 x i16] }
%struct.int32v4_t = type { [4 x i32] }
%struct.uint64v2_t = type { [2 x i64] }
%struct.uint64v4_t = type { [4 x i64] }
%struct.uint128v2_t = type { [2 x i128] }
%struct.uint16v16_t = type { [16 x i16] }
%struct.float64v4_t = type { [4 x double] }
%"class.(anonymous namespace)::BitMatrix" = type { %"class.std::bitset", [16 x [16 x i8]] }
%"class.std::bitset" = type { %struct.uint64v4_t }
%struct.bcd80_t = type { [9 x %union.FPUAbridgedTagWord], %union.FPUAbridgedTagWord }
%struct.FpuFSAVE = type { %union.SegmentSelector, i16, %union.SegmentSelector, i16, %union.SegmentSelector, i16, i32, %union.SegmentSelector, i16, i32, %union.SegmentSelector, i16, [8 x %struct.FPUStackElem] }
%struct.anon.5 = type { i32, i32 }
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
@seg_400370__init = internal constant %seg_400370__init_type <{ [23 x i8] c"H\83\EC\08H\8B\05}\0C \00H\85\C0t\02\FF\D0H\83\C4\08\C3" }>
@seg_400390__text = internal constant %seg_400390__text_type <{ [354 x i8] c"1\EDI\89\D1^H\89\E2H\83\E4\F0PTI\C7\C0\F0\04@\00H\C7\C1\80\04@\00H\C7\C7x\04@\00\FF\156\0C \00\F4\0F\1FD\00\00\F3\C3f.\0F\1F\84\00\00\00\00\00\0F\1F@\00U\B8(\10`\00H=(\10`\00H\89\E5t\17\B8\00\00\00\00H\85\C0t\0D]\BF(\10`\00\FF\E0\0F\1FD\00\00]\C3f\0F\1FD\00\00\BE(\10`\00UH\81\EE(\10`\00H\89\E5H\C1\FE\03H\89\F0H\C1\E8?H\01\C6H\D1\FEt\15\B8\00\00\00\00H\85\C0t\0B]\BF(\10`\00\FF\E0\0F\1F\00]\C3f\0F\1FD\00\00\80=\E1\0B \00\00u\17UH\89\E5\E8~\FF\FF\FF\C6\05\CF\0B \00\01]\C3\0F\1FD\00\00\F3\C3\0F\1F@\00f.\0F\1F\84\00\00\00\00\00UH\89\E5]\EB\89\90U\C3f\0F\1FD\00\00AWAVI\89\D7AUATL\8D%\BE\09 \00UH\8D-\BE\09 \00SA\89\FDI\89\F6L)\E5H\83\EC\08H\C1\FD\03\E8\BF\FE\FF\FFH\85\EDt 1\DB\0F\1F\84\00\00\00\00\00L\89\FAL\89\F6D\89\EFA\FF\14\DCH\83\C3\01H9\DDu\EAH\83\C4\08[]A\5CA]A^A_\C3\90f.\0F\1F\84\00\00\00\00\00\F3\C3" }>
@seg_4004f4__fini = internal constant %seg_4004f4__fini_type <{ [9 x i8] c"H\83\EC\08H\83\C4\08\C3" }>
@seg_400500__rodata = internal constant %seg_400500__rodata_type <{ [4 x i8] c"\01\00\02\00" }>
@seg_400504__eh_frame_hdr = internal constant %seg_400504__eh_frame_hdr_type <{ [52 x i8] c"\01\1B\03;0\00\00\00\05\00\00\00\8C\FE\FF\FFL\00\00\00\BC\FE\FF\FFx\00\00\00t\FF\FF\FF\8C\00\00\00|\FF\FF\FF\A4\00\00\00\EC\FF\FF\FF\EC\00\00\00" }>
@seg_400538__eh_frame = internal constant %seg_400538__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\008\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00<\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\E0\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@seg_601018__data = internal global %seg_601018__data_type zeroinitializer
@__bss_start = global %__bss_start_type zeroinitializer
@0 = internal global i1 false
%seg_400504__fini_type = type <{ [9 x i8] }>
%seg_400510__rodata_type = type <{ [4 x i8] }>
%seg_400514__eh_frame_hdr_type = type <{ [52 x i8] }>
%seg_400548__eh_frame_type = type <{ [208 x i8] }>
@seg_400504__fini = internal constant %seg_400504__fini_type <{ [9 x i8] c"H\83\EC\08H\83\C4\08\C3" }>
@seg_400510__rodata = internal constant %seg_400510__rodata_type <{ [4 x i8] c"\01\00\02\00" }>
@seg_400514__eh_frame_hdr = internal constant %seg_400514__eh_frame_hdr_type <{ [52 x i8] c"\01\1B\03;0\00\00\00\05\00\00\00|\FE\FF\FFL\00\00\00\AC\FE\FF\FFx\00\00\00d\FF\FF\FF\8C\00\00\00|\FF\FF\FF\A4\00\00\00\EC\FF\FF\FF\EC\00\00\00" }>
@seg_400548__eh_frame = internal constant %seg_400548__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\09\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>

; Function Declaraions
declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare i32 @__remill_fpu_exception_test_and_clear(i32, i32)
declare void @llvm.lifetime.start(i64, i8* nocapture)
declare void @llvm.lifetime.end(i64, i8* nocapture)
declare i32 @llvm.ctpop.i32(i32)
declare i32 @llvm.bswap.i32(i32)
declare i64 @llvm.bswap.i64(i64)
declare i32 @llvm.cttz.i32(i32, i1)
declare i64 @llvm.cttz.i64(i64, i1)
declare i32 @llvm.ctlz.i32(i32, i1)
declare i64 @llvm.ctlz.i64(i64, i1)
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1)
declare double @llvm.nearbyint.f64(double)
declare double @llvm.fabs.f64(double)
declare <4 x double> @llvm.nearbyint.v4f64(<4 x double>)
declare <4 x double> @llvm.fabs.v4f64(<4 x double>)
declare double @llvm.trunc.f64(double)
declare <4 x double> @llvm.trunc.v4f64(<4 x double>)
declare float @llvm.nearbyint.f32(float)
declare float @llvm.fabs.f32(float)
declare <4 x float> @llvm.nearbyint.v4f32(<4 x float>)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>)
declare float @llvm.trunc.f32(float)
declare <4 x float> @llvm.trunc.v4f32(<4 x float>)
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1)

; Buiitins  
declare double @atan(double) local_unnamed_addr #9
declare double @cos(double) local_unnamed_addr #9
declare double @sin(double) local_unnamed_addr #9
declare double @sqrt(double) local_unnamed_addr #9
declare double @tan(double) local_unnamed_addr #9
declare extern_weak x86_64_sysvcc i64 @abort() #18
declare extern_weak x86_64_sysvcc i64 @abs(i64) #18
declare extern_weak x86_64_sysvcc i64 @asin(i64) #18
declare extern_weak x86_64_sysvcc i64 @atof(i64) #18
declare extern_weak x86_64_sysvcc i64 @atoi(i64) #18
declare extern_weak x86_64_sysvcc i64 @atol(i64) #18
declare extern_weak x86_64_sysvcc i64 @calloc(i64, i64) #18
declare extern_weak x86_64_sysvcc i64 @clock() #18
declare extern_weak x86_64_sysvcc i64 @cosf(i64) #18
declare extern_weak x86_64_sysvcc i64 @exit(i64) #18
declare extern_weak x86_64_sysvcc i64 @exp(i64) #18
declare extern_weak x86_64_sysvcc i64 @fflush(i64) #18
declare extern_weak x86_64_sysvcc i64 @floor(i64) #18
declare extern_weak x86_64_sysvcc i64 @fprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #18
declare extern_weak x86_64_sysvcc i64 @fputs(i64, i64) #18
declare extern_weak x86_64_sysvcc i64 @free(i64) #18
declare extern_weak x86_64_sysvcc i64 @fwrite(i64, i64, i64, i64) #18
declare extern_weak x86_64_sysvcc i64 @getchar() #18
declare extern_weak x86_64_sysvcc i64 @gettimeofday(i64, i64) #18
declare extern_weak x86_64_sysvcc i64 @__isoc99_fscanf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #18
declare extern_weak x86_64_sysvcc i64 @__isoc99_scanf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #18
declare extern_weak x86_64_sysvcc i64 @__isoc99_sscanf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #18
declare extern_weak x86_64_sysvcc i64 @log(i64) #18
declare extern_weak x86_64_sysvcc i64 @lrand48() #18
declare extern_weak x86_64_sysvcc i64 @malloc(i64) #18
declare extern_weak x86_64_sysvcc i64 @memalign(i64, i64) #18
declare extern_weak x86_64_sysvcc i64 @memcpy(i64, i64, i64) #18
declare extern_weak x86_64_sysvcc i64 @memset(i64, i64, i64) #18
declare extern_weak x86_64_sysvcc i64 @perror(i64) #18
declare extern_weak x86_64_sysvcc i64 @posix_memalign(i64, i64, i64) #18
declare extern_weak x86_64_sysvcc i64 @pow(i64, i64) #18
declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #18
declare extern_weak x86_64_sysvcc i64 @putchar(i64) #18
declare extern_weak x86_64_sysvcc i64 @puts(i64) #18
declare extern_weak x86_64_sysvcc i64 @rand() #18
declare extern_weak x86_64_sysvcc i64 @random() #18
declare extern_weak x86_64_sysvcc i64 @realloc(i64, i64) #18
declare extern_weak x86_64_sysvcc i64 @seed48(i64) #18
declare extern_weak x86_64_sysvcc i64 @sinf(i64) #18
declare extern_weak x86_64_sysvcc i64 @sprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #18
declare extern_weak x86_64_sysvcc i64 @srand(i64) #18
declare extern_weak x86_64_sysvcc i64 @strcat(i64, i64) #18
declare extern_weak x86_64_sysvcc i64 @strcmp(i64, i64) #18
declare extern_weak x86_64_sysvcc i64 @strcpy(i64, i64) #18
declare extern_weak x86_64_sysvcc i64 @strdup(i64) #18
declare extern_weak x86_64_sysvcc i64 @strlen(i64) #18
declare extern_weak x86_64_sysvcc i64 @strncmp(i64, i64, i64) #18
declare extern_weak x86_64_sysvcc i64 @strtoll(i64, i64, i64) #18
declare extern_weak x86_64_sysvcc i64 @time(i64) #18
declare extern_weak x86_64_sysvcc i64 @ungetc(i64, i64) #18
declare extern_weak x86_64_sysvcc i64 @pthread_join(i64, i64) #18
declare extern_weak x86_64_sysvcc i64 @pthread_create(i64, i64, i64, i64) #18

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

define internal %struct.Memory* @ext_pthread_create(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64)* @pthread_create to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_pthread_join(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @pthread_join to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_gettimeofday(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @gettimeofday to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext___isoc99_scanf(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @__isoc99_scanf to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}


define internal %struct.Memory* @ext_fflush(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @fflush to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext___isoc99_fscanf(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @__isoc99_fscanf to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext___isoc99_sscanf(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @__isoc99_sscanf to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_memcpy(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memcpy to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_posix_memalign(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @posix_memalign to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_fprintf(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_memset(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_perror(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @perror to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_floor(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @floor to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_malloc(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_atoi(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @atoi to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_strcpy(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @strcpy to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_ungetc(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @ungetc to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_pow(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @pow to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_seed48(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @seed48 to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_asin(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @asin to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_strdup(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @strdup to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_cosf(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @cosf to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_abs(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_abort(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 ()* @abort to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_exit(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exit to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_putchar(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @putchar to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_strncmp(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_strcmp(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_rand(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 ()* @rand to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_calloc(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_fwrite(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64)* @fwrite to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_realloc(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @realloc to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}


define internal %struct.Memory* @ext_log(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}


define internal %struct.Memory* @ext_exp(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exp to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_sprintf(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @sprintf to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_strcat(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @strcat to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_puts(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @puts to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_atol(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @atol to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_atof(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @atof to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_clock(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 ()* @clock to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_strlen(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_free(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_srand(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @srand to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_fputs(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @fputs to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_strtoll(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strtoll to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_sinf(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @sinf to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_time(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @time to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_printf(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_memalign(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @memalign to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_random(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 ()* @random to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_lrand48(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 ()* @lrand48 to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

define internal %struct.Memory* @ext_getchar(%struct.State*, i64, %struct.Memory*) #18 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 ()* @getchar to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

declare %struct.Memory* @ext_sqrt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias)
declare %struct.Memory* @ext_atan(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias)
declare %struct.Memory* @ext_cos(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) 
declare %struct.Memory* @ext_tan(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) 
declare %struct.Memory* @ext_sin(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) 


; Data Access Globals
%G_0x496__rip__4209706__type = type <{ [16 x i8] }>
@G_0x496__rip__4209706_= global %G_0x496__rip__4209706__type <{ [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>
%G_0x849__rip__4208759__type = type <{ [16 x i8] }>
@G_0x849__rip__4208759_= global %G_0x849__rip__4208759__type <{ [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @cftmdl(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .cftmdl:	 RIP: 403300	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 403300	 Bytes: 1
  %loadMem_403300 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403300 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403300)
  store %struct.Memory* %call_403300, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 403301	 Bytes: 3
  %loadMem_403301 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403301 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403301)
  store %struct.Memory* %call_403301, %struct.Memory** %MEMORY

  ; Code: subq $0x30, %rsp	 RIP: 403304	 Bytes: 4
  %loadMem_403304 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403304 = call %struct.Memory* @routine_subq__0x30___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403304)
  store %struct.Memory* %call_403304, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x4(%rbp)	 RIP: 403308	 Bytes: 3
  %loadMem_403308 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403308 = call %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403308)
  store %struct.Memory* %call_403308, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x8(%rbp)	 RIP: 40330b	 Bytes: 3
  %loadMem_40330b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40330b = call %struct.Memory* @routine_movl__esi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40330b)
  store %struct.Memory* %call_40330b, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x10(%rbp)	 RIP: 40330e	 Bytes: 4
  %loadMem_40330e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40330e = call %struct.Memory* @routine_movq__rdx__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40330e)
  store %struct.Memory* %call_40330e, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x18(%rbp)	 RIP: 403312	 Bytes: 4
  %loadMem_403312 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403312 = call %struct.Memory* @routine_movq__rcx__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403312)
  store %struct.Memory* %call_403312, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %esi	 RIP: 403316	 Bytes: 3
  %loadMem_403316 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403316 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403316)
  store %struct.Memory* %call_403316, %struct.Memory** %MEMORY

  ; Code: shll $0x2, %esi	 RIP: 403319	 Bytes: 3
  %loadMem_403319 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403319 = call %struct.Memory* @routine_shll__0x2___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403319)
  store %struct.Memory* %call_403319, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x38(%rbp)	 RIP: 40331c	 Bytes: 3
  %loadMem_40331c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40331c = call %struct.Memory* @routine_movl__esi__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40331c)
  store %struct.Memory* %call_40331c, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x1c(%rbp)	 RIP: 40331f	 Bytes: 7
  %loadMem_40331f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40331f = call %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40331f)
  store %struct.Memory* %call_40331f, %struct.Memory** %MEMORY

  ; Code: .L_403326:	 RIP: 403326	 Bytes: 0
  br label %block_.L_403326
block_.L_403326:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 403326	 Bytes: 3
  %loadMem_403326 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403326 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403326)
  store %struct.Memory* %call_403326, %struct.Memory** %MEMORY

  ; Code: cmpl -0x8(%rbp), %eax	 RIP: 403329	 Bytes: 3
  %loadMem_403329 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403329 = call %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403329)
  store %struct.Memory* %call_403329, %struct.Memory** %MEMORY

  ; Code: jge .L_40357d	 RIP: 40332c	 Bytes: 6
  %loadMem_40332c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40332c = call %struct.Memory* @routine_jge_.L_40357d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40332c, i8* %BRANCH_TAKEN, i64 593, i64 6, i64 6)
  store %struct.Memory* %call_40332c, %struct.Memory** %MEMORY

  %loadBr_40332c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40332c = icmp eq i8 %loadBr_40332c, 1
  br i1 %cmpBr_40332c, label %block_.L_40357d, label %block_403332

block_403332:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 403332	 Bytes: 3
  %loadMem_403332 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403332 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403332)
  store %struct.Memory* %call_403332, %struct.Memory** %MEMORY

  ; Code: addl -0x8(%rbp), %eax	 RIP: 403335	 Bytes: 3
  %loadMem_403335 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403335 = call %struct.Memory* @routine_addl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403335)
  store %struct.Memory* %call_403335, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 403338	 Bytes: 3
  %loadMem_403338 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403338 = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403338)
  store %struct.Memory* %call_403338, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 40333b	 Bytes: 3
  %loadMem_40333b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40333b = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40333b)
  store %struct.Memory* %call_40333b, %struct.Memory** %MEMORY

  ; Code: addl -0x8(%rbp), %eax	 RIP: 40333e	 Bytes: 3
  %loadMem_40333e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40333e = call %struct.Memory* @routine_addl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40333e)
  store %struct.Memory* %call_40333e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 403341	 Bytes: 3
  %loadMem_403341 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403341 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403341)
  store %struct.Memory* %call_403341, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 403344	 Bytes: 3
  %loadMem_403344 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403344 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403344)
  store %struct.Memory* %call_403344, %struct.Memory** %MEMORY

  ; Code: addl -0x8(%rbp), %eax	 RIP: 403347	 Bytes: 3
  %loadMem_403347 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403347 = call %struct.Memory* @routine_addl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403347)
  store %struct.Memory* %call_403347, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 40334a	 Bytes: 3
  %loadMem_40334a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40334a = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40334a)
  store %struct.Memory* %call_40334a, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40334d	 Bytes: 4
  %loadMem_40334d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40334d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40334d)
  store %struct.Memory* %call_40334d, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 403351	 Bytes: 4
  %loadMem_403351 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403351 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403351)
  store %struct.Memory* %call_403351, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 403355	 Bytes: 5
  %loadMem_403355 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403355 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403355)
  store %struct.Memory* %call_403355, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40335a	 Bytes: 4
  %loadMem_40335a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40335a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40335a)
  store %struct.Memory* %call_40335a, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 40335e	 Bytes: 4
  %loadMem_40335e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40335e = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40335e)
  store %struct.Memory* %call_40335e, %struct.Memory** %MEMORY

  ; Code: addsd (%rcx,%rdx,8), %xmm0	 RIP: 403362	 Bytes: 5
  %loadMem_403362 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403362 = call %struct.Memory* @routine_addsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403362)
  store %struct.Memory* %call_403362, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x78(%rbp)	 RIP: 403367	 Bytes: 5
  %loadMem_403367 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403367 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403367)
  store %struct.Memory* %call_403367, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40336c	 Bytes: 4
  %loadMem_40336c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40336c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40336c)
  store %struct.Memory* %call_40336c, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 403370	 Bytes: 3
  %loadMem_403370 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403370 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403370)
  store %struct.Memory* %call_403370, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 403373	 Bytes: 3
  %loadMem_403373 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403373 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403373)
  store %struct.Memory* %call_403373, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 403376	 Bytes: 3
  %loadMem_403376 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403376 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403376)
  store %struct.Memory* %call_403376, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 403379	 Bytes: 5
  %loadMem_403379 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403379 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403379)
  store %struct.Memory* %call_403379, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40337e	 Bytes: 4
  %loadMem_40337e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40337e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40337e)
  store %struct.Memory* %call_40337e, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 403382	 Bytes: 3
  %loadMem_403382 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403382 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403382)
  store %struct.Memory* %call_403382, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 403385	 Bytes: 3
  %loadMem_403385 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403385 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403385)
  store %struct.Memory* %call_403385, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 403388	 Bytes: 3
  %loadMem_403388 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403388 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403388)
  store %struct.Memory* %call_403388, %struct.Memory** %MEMORY

  ; Code: addsd (%rcx,%rdx,8), %xmm0	 RIP: 40338b	 Bytes: 5
  %loadMem_40338b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40338b = call %struct.Memory* @routine_addsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40338b)
  store %struct.Memory* %call_40338b, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x80(%rbp)	 RIP: 403390	 Bytes: 5
  %loadMem_403390 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403390 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403390)
  store %struct.Memory* %call_403390, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403395	 Bytes: 4
  %loadMem_403395 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403395 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403395)
  store %struct.Memory* %call_403395, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 403399	 Bytes: 4
  %loadMem_403399 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403399 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403399)
  store %struct.Memory* %call_403399, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 40339d	 Bytes: 5
  %loadMem_40339d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40339d = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40339d)
  store %struct.Memory* %call_40339d, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4033a2	 Bytes: 4
  %loadMem_4033a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033a2 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033a2)
  store %struct.Memory* %call_4033a2, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 4033a6	 Bytes: 4
  %loadMem_4033a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033a6 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033a6)
  store %struct.Memory* %call_4033a6, %struct.Memory** %MEMORY

  ; Code: subsd (%rcx,%rdx,8), %xmm0	 RIP: 4033aa	 Bytes: 5
  %loadMem_4033aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033aa = call %struct.Memory* @routine_subsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033aa)
  store %struct.Memory* %call_4033aa, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x88(%rbp)	 RIP: 4033af	 Bytes: 8
  %loadMem_4033af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033af = call %struct.Memory* @routine_movsd__xmm0__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033af)
  store %struct.Memory* %call_4033af, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4033b7	 Bytes: 4
  %loadMem_4033b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033b7 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033b7)
  store %struct.Memory* %call_4033b7, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4033bb	 Bytes: 3
  %loadMem_4033bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033bb = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033bb)
  store %struct.Memory* %call_4033bb, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4033be	 Bytes: 3
  %loadMem_4033be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033be = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033be)
  store %struct.Memory* %call_4033be, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4033c1	 Bytes: 3
  %loadMem_4033c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033c1 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033c1)
  store %struct.Memory* %call_4033c1, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 4033c4	 Bytes: 5
  %loadMem_4033c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033c4 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033c4)
  store %struct.Memory* %call_4033c4, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4033c9	 Bytes: 4
  %loadMem_4033c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033c9 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033c9)
  store %struct.Memory* %call_4033c9, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 4033cd	 Bytes: 3
  %loadMem_4033cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033cd = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033cd)
  store %struct.Memory* %call_4033cd, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4033d0	 Bytes: 3
  %loadMem_4033d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033d0 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033d0)
  store %struct.Memory* %call_4033d0, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4033d3	 Bytes: 3
  %loadMem_4033d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033d3 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033d3)
  store %struct.Memory* %call_4033d3, %struct.Memory** %MEMORY

  ; Code: subsd (%rcx,%rdx,8), %xmm0	 RIP: 4033d6	 Bytes: 5
  %loadMem_4033d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033d6 = call %struct.Memory* @routine_subsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033d6)
  store %struct.Memory* %call_4033d6, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x90(%rbp)	 RIP: 4033db	 Bytes: 8
  %loadMem_4033db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033db = call %struct.Memory* @routine_movsd__xmm0__MINUS0x90__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033db)
  store %struct.Memory* %call_4033db, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4033e3	 Bytes: 4
  %loadMem_4033e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033e3 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033e3)
  store %struct.Memory* %call_4033e3, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 4033e7	 Bytes: 4
  %loadMem_4033e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033e7 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033e7)
  store %struct.Memory* %call_4033e7, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 4033eb	 Bytes: 5
  %loadMem_4033eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033eb = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033eb)
  store %struct.Memory* %call_4033eb, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4033f0	 Bytes: 4
  %loadMem_4033f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033f0 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033f0)
  store %struct.Memory* %call_4033f0, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 4033f4	 Bytes: 4
  %loadMem_4033f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033f4 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033f4)
  store %struct.Memory* %call_4033f4, %struct.Memory** %MEMORY

  ; Code: addsd (%rcx,%rdx,8), %xmm0	 RIP: 4033f8	 Bytes: 5
  %loadMem_4033f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033f8 = call %struct.Memory* @routine_addsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033f8)
  store %struct.Memory* %call_4033f8, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x98(%rbp)	 RIP: 4033fd	 Bytes: 8
  %loadMem_4033fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033fd = call %struct.Memory* @routine_movsd__xmm0__MINUS0x98__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033fd)
  store %struct.Memory* %call_4033fd, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403405	 Bytes: 4
  %loadMem_403405 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403405 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403405)
  store %struct.Memory* %call_403405, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 403409	 Bytes: 3
  %loadMem_403409 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403409 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403409)
  store %struct.Memory* %call_403409, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40340c	 Bytes: 3
  %loadMem_40340c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40340c = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40340c)
  store %struct.Memory* %call_40340c, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 40340f	 Bytes: 3
  %loadMem_40340f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40340f = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40340f)
  store %struct.Memory* %call_40340f, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 403412	 Bytes: 5
  %loadMem_403412 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403412 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403412)
  store %struct.Memory* %call_403412, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403417	 Bytes: 4
  %loadMem_403417 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403417 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403417)
  store %struct.Memory* %call_403417, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 40341b	 Bytes: 3
  %loadMem_40341b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40341b = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40341b)
  store %struct.Memory* %call_40341b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40341e	 Bytes: 3
  %loadMem_40341e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40341e = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40341e)
  store %struct.Memory* %call_40341e, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 403421	 Bytes: 3
  %loadMem_403421 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403421 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403421)
  store %struct.Memory* %call_403421, %struct.Memory** %MEMORY

  ; Code: addsd (%rcx,%rdx,8), %xmm0	 RIP: 403424	 Bytes: 5
  %loadMem_403424 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403424 = call %struct.Memory* @routine_addsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403424)
  store %struct.Memory* %call_403424, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0xa0(%rbp)	 RIP: 403429	 Bytes: 8
  %loadMem_403429 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403429 = call %struct.Memory* @routine_movsd__xmm0__MINUS0xa0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403429)
  store %struct.Memory* %call_403429, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403431	 Bytes: 4
  %loadMem_403431 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403431 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403431)
  store %struct.Memory* %call_403431, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 403435	 Bytes: 4
  %loadMem_403435 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403435 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403435)
  store %struct.Memory* %call_403435, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 403439	 Bytes: 5
  %loadMem_403439 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403439 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403439)
  store %struct.Memory* %call_403439, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40343e	 Bytes: 4
  %loadMem_40343e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40343e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40343e)
  store %struct.Memory* %call_40343e, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 403442	 Bytes: 4
  %loadMem_403442 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403442 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403442)
  store %struct.Memory* %call_403442, %struct.Memory** %MEMORY

  ; Code: subsd (%rcx,%rdx,8), %xmm0	 RIP: 403446	 Bytes: 5
  %loadMem_403446 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403446 = call %struct.Memory* @routine_subsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403446)
  store %struct.Memory* %call_403446, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0xa8(%rbp)	 RIP: 40344b	 Bytes: 8
  %loadMem_40344b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40344b = call %struct.Memory* @routine_movsd__xmm0__MINUS0xa8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40344b)
  store %struct.Memory* %call_40344b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403453	 Bytes: 4
  %loadMem_403453 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403453 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403453)
  store %struct.Memory* %call_403453, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 403457	 Bytes: 3
  %loadMem_403457 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403457 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403457)
  store %struct.Memory* %call_403457, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40345a	 Bytes: 3
  %loadMem_40345a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40345a = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40345a)
  store %struct.Memory* %call_40345a, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 40345d	 Bytes: 3
  %loadMem_40345d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40345d = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40345d)
  store %struct.Memory* %call_40345d, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 403460	 Bytes: 5
  %loadMem_403460 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403460 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403460)
  store %struct.Memory* %call_403460, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403465	 Bytes: 4
  %loadMem_403465 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403465 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403465)
  store %struct.Memory* %call_403465, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 403469	 Bytes: 3
  %loadMem_403469 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403469 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403469)
  store %struct.Memory* %call_403469, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40346c	 Bytes: 3
  %loadMem_40346c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40346c = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40346c)
  store %struct.Memory* %call_40346c, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 40346f	 Bytes: 3
  %loadMem_40346f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40346f = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40346f)
  store %struct.Memory* %call_40346f, %struct.Memory** %MEMORY

  ; Code: subsd (%rcx,%rdx,8), %xmm0	 RIP: 403472	 Bytes: 5
  %loadMem_403472 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403472 = call %struct.Memory* @routine_subsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403472)
  store %struct.Memory* %call_403472, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0xb0(%rbp)	 RIP: 403477	 Bytes: 8
  %loadMem_403477 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403477 = call %struct.Memory* @routine_movsd__xmm0__MINUS0xb0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403477)
  store %struct.Memory* %call_403477, %struct.Memory** %MEMORY

  ; Code: movsd -0x78(%rbp), %xmm0	 RIP: 40347f	 Bytes: 5
  %loadMem_40347f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40347f = call %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40347f)
  store %struct.Memory* %call_40347f, %struct.Memory** %MEMORY

  ; Code: addsd -0x98(%rbp), %xmm0	 RIP: 403484	 Bytes: 8
  %loadMem_403484 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403484 = call %struct.Memory* @routine_addsd_MINUS0x98__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403484)
  store %struct.Memory* %call_403484, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40348c	 Bytes: 4
  %loadMem_40348c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40348c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40348c)
  store %struct.Memory* %call_40348c, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 403490	 Bytes: 4
  %loadMem_403490 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403490 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403490)
  store %struct.Memory* %call_403490, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 403494	 Bytes: 5
  %loadMem_403494 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403494 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403494)
  store %struct.Memory* %call_403494, %struct.Memory** %MEMORY

  ; Code: movsd -0x80(%rbp), %xmm0	 RIP: 403499	 Bytes: 5
  %loadMem_403499 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403499 = call %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403499)
  store %struct.Memory* %call_403499, %struct.Memory** %MEMORY

  ; Code: addsd -0xa0(%rbp), %xmm0	 RIP: 40349e	 Bytes: 8
  %loadMem_40349e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40349e = call %struct.Memory* @routine_addsd_MINUS0xa0__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40349e)
  store %struct.Memory* %call_40349e, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4034a6	 Bytes: 4
  %loadMem_4034a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034a6 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034a6)
  store %struct.Memory* %call_4034a6, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4034aa	 Bytes: 3
  %loadMem_4034aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034aa = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034aa)
  store %struct.Memory* %call_4034aa, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4034ad	 Bytes: 3
  %loadMem_4034ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034ad = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034ad)
  store %struct.Memory* %call_4034ad, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4034b0	 Bytes: 3
  %loadMem_4034b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034b0 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034b0)
  store %struct.Memory* %call_4034b0, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 4034b3	 Bytes: 5
  %loadMem_4034b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034b3 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034b3)
  store %struct.Memory* %call_4034b3, %struct.Memory** %MEMORY

  ; Code: movsd -0x78(%rbp), %xmm0	 RIP: 4034b8	 Bytes: 5
  %loadMem_4034b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034b8 = call %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034b8)
  store %struct.Memory* %call_4034b8, %struct.Memory** %MEMORY

  ; Code: subsd -0x98(%rbp), %xmm0	 RIP: 4034bd	 Bytes: 8
  %loadMem_4034bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034bd = call %struct.Memory* @routine_subsd_MINUS0x98__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034bd)
  store %struct.Memory* %call_4034bd, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4034c5	 Bytes: 4
  %loadMem_4034c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034c5 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034c5)
  store %struct.Memory* %call_4034c5, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 4034c9	 Bytes: 4
  %loadMem_4034c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034c9 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034c9)
  store %struct.Memory* %call_4034c9, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 4034cd	 Bytes: 5
  %loadMem_4034cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034cd = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034cd)
  store %struct.Memory* %call_4034cd, %struct.Memory** %MEMORY

  ; Code: movsd -0x80(%rbp), %xmm0	 RIP: 4034d2	 Bytes: 5
  %loadMem_4034d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034d2 = call %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034d2)
  store %struct.Memory* %call_4034d2, %struct.Memory** %MEMORY

  ; Code: subsd -0xa0(%rbp), %xmm0	 RIP: 4034d7	 Bytes: 8
  %loadMem_4034d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034d7 = call %struct.Memory* @routine_subsd_MINUS0xa0__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034d7)
  store %struct.Memory* %call_4034d7, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4034df	 Bytes: 4
  %loadMem_4034df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034df = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034df)
  store %struct.Memory* %call_4034df, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 4034e3	 Bytes: 3
  %loadMem_4034e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034e3 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034e3)
  store %struct.Memory* %call_4034e3, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4034e6	 Bytes: 3
  %loadMem_4034e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034e6 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034e6)
  store %struct.Memory* %call_4034e6, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4034e9	 Bytes: 3
  %loadMem_4034e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034e9 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034e9)
  store %struct.Memory* %call_4034e9, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 4034ec	 Bytes: 5
  %loadMem_4034ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034ec = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034ec)
  store %struct.Memory* %call_4034ec, %struct.Memory** %MEMORY

  ; Code: movsd -0x88(%rbp), %xmm0	 RIP: 4034f1	 Bytes: 8
  %loadMem_4034f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034f1 = call %struct.Memory* @routine_movsd_MINUS0x88__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034f1)
  store %struct.Memory* %call_4034f1, %struct.Memory** %MEMORY

  ; Code: subsd -0xb0(%rbp), %xmm0	 RIP: 4034f9	 Bytes: 8
  %loadMem_4034f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034f9 = call %struct.Memory* @routine_subsd_MINUS0xb0__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034f9)
  store %struct.Memory* %call_4034f9, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403501	 Bytes: 4
  %loadMem_403501 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403501 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403501)
  store %struct.Memory* %call_403501, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 403505	 Bytes: 4
  %loadMem_403505 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403505 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403505)
  store %struct.Memory* %call_403505, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 403509	 Bytes: 5
  %loadMem_403509 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403509 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403509)
  store %struct.Memory* %call_403509, %struct.Memory** %MEMORY

  ; Code: movsd -0x90(%rbp), %xmm0	 RIP: 40350e	 Bytes: 8
  %loadMem_40350e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40350e = call %struct.Memory* @routine_movsd_MINUS0x90__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40350e)
  store %struct.Memory* %call_40350e, %struct.Memory** %MEMORY

  ; Code: addsd -0xa8(%rbp), %xmm0	 RIP: 403516	 Bytes: 8
  %loadMem_403516 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403516 = call %struct.Memory* @routine_addsd_MINUS0xa8__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403516)
  store %struct.Memory* %call_403516, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40351e	 Bytes: 4
  %loadMem_40351e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40351e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40351e)
  store %struct.Memory* %call_40351e, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 403522	 Bytes: 3
  %loadMem_403522 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403522 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403522)
  store %struct.Memory* %call_403522, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 403525	 Bytes: 3
  %loadMem_403525 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403525 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403525)
  store %struct.Memory* %call_403525, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 403528	 Bytes: 3
  %loadMem_403528 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403528 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403528)
  store %struct.Memory* %call_403528, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 40352b	 Bytes: 5
  %loadMem_40352b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40352b = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40352b)
  store %struct.Memory* %call_40352b, %struct.Memory** %MEMORY

  ; Code: movsd -0x88(%rbp), %xmm0	 RIP: 403530	 Bytes: 8
  %loadMem_403530 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403530 = call %struct.Memory* @routine_movsd_MINUS0x88__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403530)
  store %struct.Memory* %call_403530, %struct.Memory** %MEMORY

  ; Code: addsd -0xb0(%rbp), %xmm0	 RIP: 403538	 Bytes: 8
  %loadMem_403538 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403538 = call %struct.Memory* @routine_addsd_MINUS0xb0__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403538)
  store %struct.Memory* %call_403538, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403540	 Bytes: 4
  %loadMem_403540 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403540 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403540)
  store %struct.Memory* %call_403540, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 403544	 Bytes: 4
  %loadMem_403544 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403544 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403544)
  store %struct.Memory* %call_403544, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 403548	 Bytes: 5
  %loadMem_403548 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403548 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403548)
  store %struct.Memory* %call_403548, %struct.Memory** %MEMORY

  ; Code: movsd -0x90(%rbp), %xmm0	 RIP: 40354d	 Bytes: 8
  %loadMem_40354d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40354d = call %struct.Memory* @routine_movsd_MINUS0x90__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40354d)
  store %struct.Memory* %call_40354d, %struct.Memory** %MEMORY

  ; Code: subsd -0xa8(%rbp), %xmm0	 RIP: 403555	 Bytes: 8
  %loadMem_403555 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403555 = call %struct.Memory* @routine_subsd_MINUS0xa8__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403555)
  store %struct.Memory* %call_403555, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40355d	 Bytes: 4
  %loadMem_40355d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40355d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40355d)
  store %struct.Memory* %call_40355d, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 403561	 Bytes: 3
  %loadMem_403561 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403561 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403561)
  store %struct.Memory* %call_403561, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 403564	 Bytes: 3
  %loadMem_403564 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403564 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403564)
  store %struct.Memory* %call_403564, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 403567	 Bytes: 3
  %loadMem_403567 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403567 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403567)
  store %struct.Memory* %call_403567, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 40356a	 Bytes: 5
  %loadMem_40356a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40356a = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40356a)
  store %struct.Memory* %call_40356a, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 40356f	 Bytes: 3
  %loadMem_40356f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40356f = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40356f)
  store %struct.Memory* %call_40356f, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %eax	 RIP: 403572	 Bytes: 3
  %loadMem_403572 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403572 = call %struct.Memory* @routine_addl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403572)
  store %struct.Memory* %call_403572, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 403575	 Bytes: 3
  %loadMem_403575 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403575 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403575)
  store %struct.Memory* %call_403575, %struct.Memory** %MEMORY

  ; Code: jmpq .L_403326	 RIP: 403578	 Bytes: 5
  %loadMem_403578 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403578 = call %struct.Memory* @routine_jmpq_.L_403326(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403578, i64 -594, i64 5)
  store %struct.Memory* %call_403578, %struct.Memory** %MEMORY

  br label %block_.L_403326

  ; Code: .L_40357d:	 RIP: 40357d	 Bytes: 0
block_.L_40357d:

  ; Code: movq -0x18(%rbp), %rax	 RIP: 40357d	 Bytes: 4
  %loadMem_40357d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40357d = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40357d)
  store %struct.Memory* %call_40357d, %struct.Memory** %MEMORY

  ; Code: movsd 0x10(%rax), %xmm0	 RIP: 403581	 Bytes: 5
  %loadMem_403581 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403581 = call %struct.Memory* @routine_movsd_0x10__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403581)
  store %struct.Memory* %call_403581, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x48(%rbp)	 RIP: 403586	 Bytes: 5
  %loadMem_403586 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403586 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403586)
  store %struct.Memory* %call_403586, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %ecx	 RIP: 40358b	 Bytes: 3
  %loadMem_40358b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40358b = call %struct.Memory* @routine_movl_MINUS0x38__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40358b)
  store %struct.Memory* %call_40358b, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x1c(%rbp)	 RIP: 40358e	 Bytes: 3
  %loadMem_40358e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40358e = call %struct.Memory* @routine_movl__ecx__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40358e)
  store %struct.Memory* %call_40358e, %struct.Memory** %MEMORY

  ; Code: .L_403591:	 RIP: 403591	 Bytes: 0
  br label %block_.L_403591
block_.L_403591:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 403591	 Bytes: 3
  %loadMem_403591 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403591 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403591)
  store %struct.Memory* %call_403591, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %ecx	 RIP: 403594	 Bytes: 3
  %loadMem_403594 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403594 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403594)
  store %struct.Memory* %call_403594, %struct.Memory** %MEMORY

  ; Code: addl -0x38(%rbp), %ecx	 RIP: 403597	 Bytes: 3
  %loadMem_403597 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403597 = call %struct.Memory* @routine_addl_MINUS0x38__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403597)
  store %struct.Memory* %call_403597, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 40359a	 Bytes: 2
  %loadMem_40359a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40359a = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40359a)
  store %struct.Memory* %call_40359a, %struct.Memory** %MEMORY

  ; Code: jge .L_40384d	 RIP: 40359c	 Bytes: 6
  %loadMem_40359c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40359c = call %struct.Memory* @routine_jge_.L_40384d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40359c, i8* %BRANCH_TAKEN, i64 689, i64 6, i64 6)
  store %struct.Memory* %call_40359c, %struct.Memory** %MEMORY

  %loadBr_40359c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40359c = icmp eq i8 %loadBr_40359c, 1
  br i1 %cmpBr_40359c, label %block_.L_40384d, label %block_4035a2

block_4035a2:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4035a2	 Bytes: 3
  %loadMem_4035a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035a2 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035a2)
  store %struct.Memory* %call_4035a2, %struct.Memory** %MEMORY

  ; Code: addl -0x8(%rbp), %eax	 RIP: 4035a5	 Bytes: 3
  %loadMem_4035a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035a5 = call %struct.Memory* @routine_addl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035a5)
  store %struct.Memory* %call_4035a5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 4035a8	 Bytes: 3
  %loadMem_4035a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035a8 = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035a8)
  store %struct.Memory* %call_4035a8, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 4035ab	 Bytes: 3
  %loadMem_4035ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035ab = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035ab)
  store %struct.Memory* %call_4035ab, %struct.Memory** %MEMORY

  ; Code: addl -0x8(%rbp), %eax	 RIP: 4035ae	 Bytes: 3
  %loadMem_4035ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035ae = call %struct.Memory* @routine_addl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035ae)
  store %struct.Memory* %call_4035ae, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 4035b1	 Bytes: 3
  %loadMem_4035b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035b1 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035b1)
  store %struct.Memory* %call_4035b1, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 4035b4	 Bytes: 3
  %loadMem_4035b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035b4 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035b4)
  store %struct.Memory* %call_4035b4, %struct.Memory** %MEMORY

  ; Code: addl -0x8(%rbp), %eax	 RIP: 4035b7	 Bytes: 3
  %loadMem_4035b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035b7 = call %struct.Memory* @routine_addl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035b7)
  store %struct.Memory* %call_4035b7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 4035ba	 Bytes: 3
  %loadMem_4035ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035ba = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035ba)
  store %struct.Memory* %call_4035ba, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4035bd	 Bytes: 4
  %loadMem_4035bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035bd = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035bd)
  store %struct.Memory* %call_4035bd, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 4035c1	 Bytes: 4
  %loadMem_4035c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035c1 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035c1)
  store %struct.Memory* %call_4035c1, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 4035c5	 Bytes: 5
  %loadMem_4035c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035c5 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035c5)
  store %struct.Memory* %call_4035c5, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4035ca	 Bytes: 4
  %loadMem_4035ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035ca = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035ca)
  store %struct.Memory* %call_4035ca, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 4035ce	 Bytes: 4
  %loadMem_4035ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035ce = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035ce)
  store %struct.Memory* %call_4035ce, %struct.Memory** %MEMORY

  ; Code: addsd (%rcx,%rdx,8), %xmm0	 RIP: 4035d2	 Bytes: 5
  %loadMem_4035d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035d2 = call %struct.Memory* @routine_addsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035d2)
  store %struct.Memory* %call_4035d2, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x78(%rbp)	 RIP: 4035d7	 Bytes: 5
  %loadMem_4035d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035d7 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035d7)
  store %struct.Memory* %call_4035d7, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4035dc	 Bytes: 4
  %loadMem_4035dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035dc = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035dc)
  store %struct.Memory* %call_4035dc, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4035e0	 Bytes: 3
  %loadMem_4035e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035e0 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035e0)
  store %struct.Memory* %call_4035e0, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4035e3	 Bytes: 3
  %loadMem_4035e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035e3 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035e3)
  store %struct.Memory* %call_4035e3, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4035e6	 Bytes: 3
  %loadMem_4035e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035e6 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035e6)
  store %struct.Memory* %call_4035e6, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 4035e9	 Bytes: 5
  %loadMem_4035e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035e9 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035e9)
  store %struct.Memory* %call_4035e9, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4035ee	 Bytes: 4
  %loadMem_4035ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035ee = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035ee)
  store %struct.Memory* %call_4035ee, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 4035f2	 Bytes: 3
  %loadMem_4035f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035f2 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035f2)
  store %struct.Memory* %call_4035f2, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4035f5	 Bytes: 3
  %loadMem_4035f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035f5 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035f5)
  store %struct.Memory* %call_4035f5, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4035f8	 Bytes: 3
  %loadMem_4035f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035f8 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035f8)
  store %struct.Memory* %call_4035f8, %struct.Memory** %MEMORY

  ; Code: addsd (%rcx,%rdx,8), %xmm0	 RIP: 4035fb	 Bytes: 5
  %loadMem_4035fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035fb = call %struct.Memory* @routine_addsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035fb)
  store %struct.Memory* %call_4035fb, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x80(%rbp)	 RIP: 403600	 Bytes: 5
  %loadMem_403600 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403600 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403600)
  store %struct.Memory* %call_403600, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403605	 Bytes: 4
  %loadMem_403605 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403605 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403605)
  store %struct.Memory* %call_403605, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 403609	 Bytes: 4
  %loadMem_403609 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403609 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403609)
  store %struct.Memory* %call_403609, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 40360d	 Bytes: 5
  %loadMem_40360d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40360d = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40360d)
  store %struct.Memory* %call_40360d, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403612	 Bytes: 4
  %loadMem_403612 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403612 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403612)
  store %struct.Memory* %call_403612, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 403616	 Bytes: 4
  %loadMem_403616 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403616 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403616)
  store %struct.Memory* %call_403616, %struct.Memory** %MEMORY

  ; Code: subsd (%rcx,%rdx,8), %xmm0	 RIP: 40361a	 Bytes: 5
  %loadMem_40361a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40361a = call %struct.Memory* @routine_subsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40361a)
  store %struct.Memory* %call_40361a, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x88(%rbp)	 RIP: 40361f	 Bytes: 8
  %loadMem_40361f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40361f = call %struct.Memory* @routine_movsd__xmm0__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40361f)
  store %struct.Memory* %call_40361f, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403627	 Bytes: 4
  %loadMem_403627 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403627 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403627)
  store %struct.Memory* %call_403627, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 40362b	 Bytes: 3
  %loadMem_40362b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40362b = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40362b)
  store %struct.Memory* %call_40362b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40362e	 Bytes: 3
  %loadMem_40362e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40362e = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40362e)
  store %struct.Memory* %call_40362e, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 403631	 Bytes: 3
  %loadMem_403631 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403631 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403631)
  store %struct.Memory* %call_403631, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 403634	 Bytes: 5
  %loadMem_403634 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403634 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403634)
  store %struct.Memory* %call_403634, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403639	 Bytes: 4
  %loadMem_403639 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403639 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403639)
  store %struct.Memory* %call_403639, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 40363d	 Bytes: 3
  %loadMem_40363d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40363d = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40363d)
  store %struct.Memory* %call_40363d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 403640	 Bytes: 3
  %loadMem_403640 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403640 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403640)
  store %struct.Memory* %call_403640, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 403643	 Bytes: 3
  %loadMem_403643 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403643 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403643)
  store %struct.Memory* %call_403643, %struct.Memory** %MEMORY

  ; Code: subsd (%rcx,%rdx,8), %xmm0	 RIP: 403646	 Bytes: 5
  %loadMem_403646 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403646 = call %struct.Memory* @routine_subsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403646)
  store %struct.Memory* %call_403646, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x90(%rbp)	 RIP: 40364b	 Bytes: 8
  %loadMem_40364b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40364b = call %struct.Memory* @routine_movsd__xmm0__MINUS0x90__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40364b)
  store %struct.Memory* %call_40364b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403653	 Bytes: 4
  %loadMem_403653 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403653 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403653)
  store %struct.Memory* %call_403653, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 403657	 Bytes: 4
  %loadMem_403657 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403657 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403657)
  store %struct.Memory* %call_403657, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 40365b	 Bytes: 5
  %loadMem_40365b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40365b = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40365b)
  store %struct.Memory* %call_40365b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403660	 Bytes: 4
  %loadMem_403660 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403660 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403660)
  store %struct.Memory* %call_403660, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 403664	 Bytes: 4
  %loadMem_403664 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403664 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403664)
  store %struct.Memory* %call_403664, %struct.Memory** %MEMORY

  ; Code: addsd (%rcx,%rdx,8), %xmm0	 RIP: 403668	 Bytes: 5
  %loadMem_403668 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403668 = call %struct.Memory* @routine_addsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403668)
  store %struct.Memory* %call_403668, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x98(%rbp)	 RIP: 40366d	 Bytes: 8
  %loadMem_40366d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40366d = call %struct.Memory* @routine_movsd__xmm0__MINUS0x98__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40366d)
  store %struct.Memory* %call_40366d, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403675	 Bytes: 4
  %loadMem_403675 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403675 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403675)
  store %struct.Memory* %call_403675, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 403679	 Bytes: 3
  %loadMem_403679 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403679 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403679)
  store %struct.Memory* %call_403679, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40367c	 Bytes: 3
  %loadMem_40367c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40367c = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40367c)
  store %struct.Memory* %call_40367c, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 40367f	 Bytes: 3
  %loadMem_40367f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40367f = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40367f)
  store %struct.Memory* %call_40367f, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 403682	 Bytes: 5
  %loadMem_403682 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403682 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403682)
  store %struct.Memory* %call_403682, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403687	 Bytes: 4
  %loadMem_403687 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403687 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403687)
  store %struct.Memory* %call_403687, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 40368b	 Bytes: 3
  %loadMem_40368b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40368b = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40368b)
  store %struct.Memory* %call_40368b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40368e	 Bytes: 3
  %loadMem_40368e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40368e = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40368e)
  store %struct.Memory* %call_40368e, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 403691	 Bytes: 3
  %loadMem_403691 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403691 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403691)
  store %struct.Memory* %call_403691, %struct.Memory** %MEMORY

  ; Code: addsd (%rcx,%rdx,8), %xmm0	 RIP: 403694	 Bytes: 5
  %loadMem_403694 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403694 = call %struct.Memory* @routine_addsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403694)
  store %struct.Memory* %call_403694, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0xa0(%rbp)	 RIP: 403699	 Bytes: 8
  %loadMem_403699 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403699 = call %struct.Memory* @routine_movsd__xmm0__MINUS0xa0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403699)
  store %struct.Memory* %call_403699, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4036a1	 Bytes: 4
  %loadMem_4036a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036a1 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036a1)
  store %struct.Memory* %call_4036a1, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 4036a5	 Bytes: 4
  %loadMem_4036a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036a5 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036a5)
  store %struct.Memory* %call_4036a5, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 4036a9	 Bytes: 5
  %loadMem_4036a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036a9 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036a9)
  store %struct.Memory* %call_4036a9, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4036ae	 Bytes: 4
  %loadMem_4036ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036ae = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036ae)
  store %struct.Memory* %call_4036ae, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 4036b2	 Bytes: 4
  %loadMem_4036b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036b2 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036b2)
  store %struct.Memory* %call_4036b2, %struct.Memory** %MEMORY

  ; Code: subsd (%rcx,%rdx,8), %xmm0	 RIP: 4036b6	 Bytes: 5
  %loadMem_4036b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036b6 = call %struct.Memory* @routine_subsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036b6)
  store %struct.Memory* %call_4036b6, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0xa8(%rbp)	 RIP: 4036bb	 Bytes: 8
  %loadMem_4036bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036bb = call %struct.Memory* @routine_movsd__xmm0__MINUS0xa8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036bb)
  store %struct.Memory* %call_4036bb, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4036c3	 Bytes: 4
  %loadMem_4036c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036c3 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036c3)
  store %struct.Memory* %call_4036c3, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 4036c7	 Bytes: 3
  %loadMem_4036c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036c7 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036c7)
  store %struct.Memory* %call_4036c7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4036ca	 Bytes: 3
  %loadMem_4036ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036ca = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036ca)
  store %struct.Memory* %call_4036ca, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4036cd	 Bytes: 3
  %loadMem_4036cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036cd = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036cd)
  store %struct.Memory* %call_4036cd, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 4036d0	 Bytes: 5
  %loadMem_4036d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036d0 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036d0)
  store %struct.Memory* %call_4036d0, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4036d5	 Bytes: 4
  %loadMem_4036d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036d5 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036d5)
  store %struct.Memory* %call_4036d5, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 4036d9	 Bytes: 3
  %loadMem_4036d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036d9 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036d9)
  store %struct.Memory* %call_4036d9, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4036dc	 Bytes: 3
  %loadMem_4036dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036dc = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036dc)
  store %struct.Memory* %call_4036dc, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4036df	 Bytes: 3
  %loadMem_4036df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036df = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036df)
  store %struct.Memory* %call_4036df, %struct.Memory** %MEMORY

  ; Code: subsd (%rcx,%rdx,8), %xmm0	 RIP: 4036e2	 Bytes: 5
  %loadMem_4036e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036e2 = call %struct.Memory* @routine_subsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036e2)
  store %struct.Memory* %call_4036e2, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0xb0(%rbp)	 RIP: 4036e7	 Bytes: 8
  %loadMem_4036e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036e7 = call %struct.Memory* @routine_movsd__xmm0__MINUS0xb0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036e7)
  store %struct.Memory* %call_4036e7, %struct.Memory** %MEMORY

  ; Code: movsd -0x78(%rbp), %xmm0	 RIP: 4036ef	 Bytes: 5
  %loadMem_4036ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036ef = call %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036ef)
  store %struct.Memory* %call_4036ef, %struct.Memory** %MEMORY

  ; Code: addsd -0x98(%rbp), %xmm0	 RIP: 4036f4	 Bytes: 8
  %loadMem_4036f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036f4 = call %struct.Memory* @routine_addsd_MINUS0x98__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036f4)
  store %struct.Memory* %call_4036f4, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4036fc	 Bytes: 4
  %loadMem_4036fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036fc = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036fc)
  store %struct.Memory* %call_4036fc, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 403700	 Bytes: 4
  %loadMem_403700 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403700 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403700)
  store %struct.Memory* %call_403700, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 403704	 Bytes: 5
  %loadMem_403704 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403704 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403704)
  store %struct.Memory* %call_403704, %struct.Memory** %MEMORY

  ; Code: movsd -0x80(%rbp), %xmm0	 RIP: 403709	 Bytes: 5
  %loadMem_403709 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403709 = call %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403709)
  store %struct.Memory* %call_403709, %struct.Memory** %MEMORY

  ; Code: addsd -0xa0(%rbp), %xmm0	 RIP: 40370e	 Bytes: 8
  %loadMem_40370e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40370e = call %struct.Memory* @routine_addsd_MINUS0xa0__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40370e)
  store %struct.Memory* %call_40370e, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403716	 Bytes: 4
  %loadMem_403716 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403716 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403716)
  store %struct.Memory* %call_403716, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 40371a	 Bytes: 3
  %loadMem_40371a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40371a = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40371a)
  store %struct.Memory* %call_40371a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40371d	 Bytes: 3
  %loadMem_40371d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40371d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40371d)
  store %struct.Memory* %call_40371d, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 403720	 Bytes: 3
  %loadMem_403720 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403720 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403720)
  store %struct.Memory* %call_403720, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 403723	 Bytes: 5
  %loadMem_403723 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403723 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403723)
  store %struct.Memory* %call_403723, %struct.Memory** %MEMORY

  ; Code: movsd -0xa0(%rbp), %xmm0	 RIP: 403728	 Bytes: 8
  %loadMem_403728 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403728 = call %struct.Memory* @routine_movsd_MINUS0xa0__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403728)
  store %struct.Memory* %call_403728, %struct.Memory** %MEMORY

  ; Code: subsd -0x80(%rbp), %xmm0	 RIP: 403730	 Bytes: 5
  %loadMem_403730 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403730 = call %struct.Memory* @routine_subsd_MINUS0x80__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403730)
  store %struct.Memory* %call_403730, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403735	 Bytes: 4
  %loadMem_403735 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403735 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403735)
  store %struct.Memory* %call_403735, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 403739	 Bytes: 4
  %loadMem_403739 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403739 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403739)
  store %struct.Memory* %call_403739, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 40373d	 Bytes: 5
  %loadMem_40373d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40373d = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40373d)
  store %struct.Memory* %call_40373d, %struct.Memory** %MEMORY

  ; Code: movsd -0x78(%rbp), %xmm0	 RIP: 403742	 Bytes: 5
  %loadMem_403742 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403742 = call %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403742)
  store %struct.Memory* %call_403742, %struct.Memory** %MEMORY

  ; Code: subsd -0x98(%rbp), %xmm0	 RIP: 403747	 Bytes: 8
  %loadMem_403747 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403747 = call %struct.Memory* @routine_subsd_MINUS0x98__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403747)
  store %struct.Memory* %call_403747, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40374f	 Bytes: 4
  %loadMem_40374f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40374f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40374f)
  store %struct.Memory* %call_40374f, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 403753	 Bytes: 3
  %loadMem_403753 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403753 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403753)
  store %struct.Memory* %call_403753, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 403756	 Bytes: 3
  %loadMem_403756 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403756 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403756)
  store %struct.Memory* %call_403756, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 403759	 Bytes: 3
  %loadMem_403759 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403759 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403759)
  store %struct.Memory* %call_403759, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 40375c	 Bytes: 5
  %loadMem_40375c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40375c = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40375c)
  store %struct.Memory* %call_40375c, %struct.Memory** %MEMORY

  ; Code: movsd -0x88(%rbp), %xmm0	 RIP: 403761	 Bytes: 8
  %loadMem_403761 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403761 = call %struct.Memory* @routine_movsd_MINUS0x88__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403761)
  store %struct.Memory* %call_403761, %struct.Memory** %MEMORY

  ; Code: subsd -0xb0(%rbp), %xmm0	 RIP: 403769	 Bytes: 8
  %loadMem_403769 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403769 = call %struct.Memory* @routine_subsd_MINUS0xb0__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403769)
  store %struct.Memory* %call_403769, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x78(%rbp)	 RIP: 403771	 Bytes: 5
  %loadMem_403771 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403771 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403771)
  store %struct.Memory* %call_403771, %struct.Memory** %MEMORY

  ; Code: movsd -0x90(%rbp), %xmm0	 RIP: 403776	 Bytes: 8
  %loadMem_403776 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403776 = call %struct.Memory* @routine_movsd_MINUS0x90__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403776)
  store %struct.Memory* %call_403776, %struct.Memory** %MEMORY

  ; Code: addsd -0xa8(%rbp), %xmm0	 RIP: 40377e	 Bytes: 8
  %loadMem_40377e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40377e = call %struct.Memory* @routine_addsd_MINUS0xa8__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40377e)
  store %struct.Memory* %call_40377e, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x80(%rbp)	 RIP: 403786	 Bytes: 5
  %loadMem_403786 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403786 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403786)
  store %struct.Memory* %call_403786, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm0	 RIP: 40378b	 Bytes: 5
  %loadMem_40378b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40378b = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40378b)
  store %struct.Memory* %call_40378b, %struct.Memory** %MEMORY

  ; Code: movsd -0x78(%rbp), %xmm1	 RIP: 403790	 Bytes: 5
  %loadMem_403790 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403790 = call %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403790)
  store %struct.Memory* %call_403790, %struct.Memory** %MEMORY

  ; Code: subsd -0x80(%rbp), %xmm1	 RIP: 403795	 Bytes: 5
  %loadMem_403795 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403795 = call %struct.Memory* @routine_subsd_MINUS0x80__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403795)
  store %struct.Memory* %call_403795, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm1, %xmm0	 RIP: 40379a	 Bytes: 4
  %loadMem_40379a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40379a = call %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40379a)
  store %struct.Memory* %call_40379a, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40379e	 Bytes: 4
  %loadMem_40379e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40379e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40379e)
  store %struct.Memory* %call_40379e, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 4037a2	 Bytes: 4
  %loadMem_4037a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037a2 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037a2)
  store %struct.Memory* %call_4037a2, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 4037a6	 Bytes: 5
  %loadMem_4037a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037a6 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037a6)
  store %struct.Memory* %call_4037a6, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm0	 RIP: 4037ab	 Bytes: 5
  %loadMem_4037ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037ab = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037ab)
  store %struct.Memory* %call_4037ab, %struct.Memory** %MEMORY

  ; Code: movsd -0x78(%rbp), %xmm1	 RIP: 4037b0	 Bytes: 5
  %loadMem_4037b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037b0 = call %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037b0)
  store %struct.Memory* %call_4037b0, %struct.Memory** %MEMORY

  ; Code: addsd -0x80(%rbp), %xmm1	 RIP: 4037b5	 Bytes: 5
  %loadMem_4037b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037b5 = call %struct.Memory* @routine_addsd_MINUS0x80__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037b5)
  store %struct.Memory* %call_4037b5, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm1, %xmm0	 RIP: 4037ba	 Bytes: 4
  %loadMem_4037ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037ba = call %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037ba)
  store %struct.Memory* %call_4037ba, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4037be	 Bytes: 4
  %loadMem_4037be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037be = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037be)
  store %struct.Memory* %call_4037be, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 4037c2	 Bytes: 3
  %loadMem_4037c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037c2 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037c2)
  store %struct.Memory* %call_4037c2, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4037c5	 Bytes: 3
  %loadMem_4037c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037c5 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037c5)
  store %struct.Memory* %call_4037c5, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4037c8	 Bytes: 3
  %loadMem_4037c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037c8 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037c8)
  store %struct.Memory* %call_4037c8, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 4037cb	 Bytes: 5
  %loadMem_4037cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037cb = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037cb)
  store %struct.Memory* %call_4037cb, %struct.Memory** %MEMORY

  ; Code: movsd -0xb0(%rbp), %xmm0	 RIP: 4037d0	 Bytes: 8
  %loadMem_4037d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037d0 = call %struct.Memory* @routine_movsd_MINUS0xb0__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037d0)
  store %struct.Memory* %call_4037d0, %struct.Memory** %MEMORY

  ; Code: addsd -0x88(%rbp), %xmm0	 RIP: 4037d8	 Bytes: 8
  %loadMem_4037d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037d8 = call %struct.Memory* @routine_addsd_MINUS0x88__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037d8)
  store %struct.Memory* %call_4037d8, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x78(%rbp)	 RIP: 4037e0	 Bytes: 5
  %loadMem_4037e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037e0 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037e0)
  store %struct.Memory* %call_4037e0, %struct.Memory** %MEMORY

  ; Code: movsd -0xa8(%rbp), %xmm0	 RIP: 4037e5	 Bytes: 8
  %loadMem_4037e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037e5 = call %struct.Memory* @routine_movsd_MINUS0xa8__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037e5)
  store %struct.Memory* %call_4037e5, %struct.Memory** %MEMORY

  ; Code: subsd -0x90(%rbp), %xmm0	 RIP: 4037ed	 Bytes: 8
  %loadMem_4037ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037ed = call %struct.Memory* @routine_subsd_MINUS0x90__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037ed)
  store %struct.Memory* %call_4037ed, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x80(%rbp)	 RIP: 4037f5	 Bytes: 5
  %loadMem_4037f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037f5 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037f5)
  store %struct.Memory* %call_4037f5, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm0	 RIP: 4037fa	 Bytes: 5
  %loadMem_4037fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037fa = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037fa)
  store %struct.Memory* %call_4037fa, %struct.Memory** %MEMORY

  ; Code: movsd -0x80(%rbp), %xmm1	 RIP: 4037ff	 Bytes: 5
  %loadMem_4037ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037ff = call %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037ff)
  store %struct.Memory* %call_4037ff, %struct.Memory** %MEMORY

  ; Code: subsd -0x78(%rbp), %xmm1	 RIP: 403804	 Bytes: 5
  %loadMem_403804 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403804 = call %struct.Memory* @routine_subsd_MINUS0x78__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403804)
  store %struct.Memory* %call_403804, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm1, %xmm0	 RIP: 403809	 Bytes: 4
  %loadMem_403809 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403809 = call %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403809)
  store %struct.Memory* %call_403809, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40380d	 Bytes: 4
  %loadMem_40380d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40380d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40380d)
  store %struct.Memory* %call_40380d, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 403811	 Bytes: 4
  %loadMem_403811 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403811 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403811)
  store %struct.Memory* %call_403811, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 403815	 Bytes: 5
  %loadMem_403815 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403815 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403815)
  store %struct.Memory* %call_403815, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm0	 RIP: 40381a	 Bytes: 5
  %loadMem_40381a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40381a = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40381a)
  store %struct.Memory* %call_40381a, %struct.Memory** %MEMORY

  ; Code: movsd -0x80(%rbp), %xmm1	 RIP: 40381f	 Bytes: 5
  %loadMem_40381f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40381f = call %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40381f)
  store %struct.Memory* %call_40381f, %struct.Memory** %MEMORY

  ; Code: addsd -0x78(%rbp), %xmm1	 RIP: 403824	 Bytes: 5
  %loadMem_403824 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403824 = call %struct.Memory* @routine_addsd_MINUS0x78__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403824)
  store %struct.Memory* %call_403824, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm1, %xmm0	 RIP: 403829	 Bytes: 4
  %loadMem_403829 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403829 = call %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403829)
  store %struct.Memory* %call_403829, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40382d	 Bytes: 4
  %loadMem_40382d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40382d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40382d)
  store %struct.Memory* %call_40382d, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 403831	 Bytes: 3
  %loadMem_403831 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403831 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403831)
  store %struct.Memory* %call_403831, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 403834	 Bytes: 3
  %loadMem_403834 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403834 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403834)
  store %struct.Memory* %call_403834, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 403837	 Bytes: 3
  %loadMem_403837 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403837 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403837)
  store %struct.Memory* %call_403837, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 40383a	 Bytes: 5
  %loadMem_40383a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40383a = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40383a)
  store %struct.Memory* %call_40383a, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 40383f	 Bytes: 3
  %loadMem_40383f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40383f = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40383f)
  store %struct.Memory* %call_40383f, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %eax	 RIP: 403842	 Bytes: 3
  %loadMem_403842 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403842 = call %struct.Memory* @routine_addl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403842)
  store %struct.Memory* %call_403842, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 403845	 Bytes: 3
  %loadMem_403845 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403845 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403845)
  store %struct.Memory* %call_403845, %struct.Memory** %MEMORY

  ; Code: jmpq .L_403591	 RIP: 403848	 Bytes: 5
  %loadMem_403848 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403848 = call %struct.Memory* @routine_jmpq_.L_403591(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403848, i64 -695, i64 5)
  store %struct.Memory* %call_403848, %struct.Memory** %MEMORY

  br label %block_.L_403591

  ; Code: .L_40384d:	 RIP: 40384d	 Bytes: 0
block_.L_40384d:

  ; Code: movl $0x0, -0x30(%rbp)	 RIP: 40384d	 Bytes: 7
  %loadMem_40384d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40384d = call %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40384d)
  store %struct.Memory* %call_40384d, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %eax	 RIP: 403854	 Bytes: 3
  %loadMem_403854 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403854 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403854)
  store %struct.Memory* %call_403854, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 403857	 Bytes: 3
  %loadMem_403857 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403857 = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403857)
  store %struct.Memory* %call_403857, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3c(%rbp)	 RIP: 40385a	 Bytes: 3
  %loadMem_40385a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40385a = call %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40385a)
  store %struct.Memory* %call_40385a, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %eax	 RIP: 40385d	 Bytes: 3
  %loadMem_40385d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40385d = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40385d)
  store %struct.Memory* %call_40385d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 403860	 Bytes: 3
  %loadMem_403860 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403860 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403860)
  store %struct.Memory* %call_403860, %struct.Memory** %MEMORY

  ; Code: .L_403863:	 RIP: 403863	 Bytes: 0
  br label %block_.L_403863
block_.L_403863:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 403863	 Bytes: 3
  %loadMem_403863 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403863 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403863)
  store %struct.Memory* %call_403863, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4(%rbp), %eax	 RIP: 403866	 Bytes: 3
  %loadMem_403866 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403866 = call %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403866)
  store %struct.Memory* %call_403866, %struct.Memory** %MEMORY

  ; Code: jge .L_403fde	 RIP: 403869	 Bytes: 6
  %loadMem_403869 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403869 = call %struct.Memory* @routine_jge_.L_403fde(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403869, i8* %BRANCH_TAKEN, i64 1909, i64 6, i64 6)
  store %struct.Memory* %call_403869, %struct.Memory** %MEMORY

  %loadBr_403869 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_403869 = icmp eq i8 %loadBr_403869, 1
  br i1 %cmpBr_403869, label %block_.L_403fde, label %block_40386f

block_40386f:
  ; Code: movsd 0x849(%rip), %xmm0	 RIP: 40386f	 Bytes: 8
  %loadMem_40386f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40386f = call %struct.Memory* @routine_movsd_0x849__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40386f)
  store %struct.Memory* %call_40386f, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %eax	 RIP: 403877	 Bytes: 3
  %loadMem_403877 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403877 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403877)
  store %struct.Memory* %call_403877, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %eax	 RIP: 40387a	 Bytes: 3
  %loadMem_40387a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40387a = call %struct.Memory* @routine_addl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40387a)
  store %struct.Memory* %call_40387a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x30(%rbp)	 RIP: 40387d	 Bytes: 3
  %loadMem_40387d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40387d = call %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40387d)
  store %struct.Memory* %call_40387d, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %eax	 RIP: 403880	 Bytes: 3
  %loadMem_403880 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403880 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403880)
  store %struct.Memory* %call_403880, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 403883	 Bytes: 3
  %loadMem_403883 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403883 = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403883)
  store %struct.Memory* %call_403883, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x34(%rbp)	 RIP: 403886	 Bytes: 3
  %loadMem_403886 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403886 = call %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403886)
  store %struct.Memory* %call_403886, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 403889	 Bytes: 4
  %loadMem_403889 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403889 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403889)
  store %struct.Memory* %call_403889, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rdx	 RIP: 40388d	 Bytes: 4
  %loadMem_40388d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40388d = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40388d)
  store %struct.Memory* %call_40388d, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm1	 RIP: 403891	 Bytes: 5
  %loadMem_403891 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403891 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403891)
  store %struct.Memory* %call_403891, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x58(%rbp)	 RIP: 403896	 Bytes: 5
  %loadMem_403896 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403896 = call %struct.Memory* @routine_movsd__xmm1__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403896)
  store %struct.Memory* %call_403896, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 40389b	 Bytes: 4
  %loadMem_40389b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40389b = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40389b)
  store %struct.Memory* %call_40389b, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %eax	 RIP: 40389f	 Bytes: 3
  %loadMem_40389f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40389f = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40389f)
  store %struct.Memory* %call_40389f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4038a2	 Bytes: 3
  %loadMem_4038a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038a2 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038a2)
  store %struct.Memory* %call_4038a2, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4038a5	 Bytes: 3
  %loadMem_4038a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038a5 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038a5)
  store %struct.Memory* %call_4038a5, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm1	 RIP: 4038a8	 Bytes: 5
  %loadMem_4038a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038a8 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038a8)
  store %struct.Memory* %call_4038a8, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x60(%rbp)	 RIP: 4038ad	 Bytes: 5
  %loadMem_4038ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038ad = call %struct.Memory* @routine_movsd__xmm1__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038ad)
  store %struct.Memory* %call_4038ad, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4038b2	 Bytes: 4
  %loadMem_4038b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038b2 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038b2)
  store %struct.Memory* %call_4038b2, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rdx	 RIP: 4038b6	 Bytes: 4
  %loadMem_4038b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038b6 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038b6)
  store %struct.Memory* %call_4038b6, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm1	 RIP: 4038ba	 Bytes: 5
  %loadMem_4038ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038ba = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038ba)
  store %struct.Memory* %call_4038ba, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x48(%rbp)	 RIP: 4038bf	 Bytes: 5
  %loadMem_4038bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038bf = call %struct.Memory* @routine_movsd__xmm1__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038bf)
  store %struct.Memory* %call_4038bf, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4038c4	 Bytes: 4
  %loadMem_4038c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038c4 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038c4)
  store %struct.Memory* %call_4038c4, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %eax	 RIP: 4038c8	 Bytes: 3
  %loadMem_4038c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038c8 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038c8)
  store %struct.Memory* %call_4038c8, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4038cb	 Bytes: 3
  %loadMem_4038cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038cb = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038cb)
  store %struct.Memory* %call_4038cb, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4038ce	 Bytes: 3
  %loadMem_4038ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038ce = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038ce)
  store %struct.Memory* %call_4038ce, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm1	 RIP: 4038d1	 Bytes: 5
  %loadMem_4038d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038d1 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038d1)
  store %struct.Memory* %call_4038d1, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x50(%rbp)	 RIP: 4038d6	 Bytes: 5
  %loadMem_4038d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038d6 = call %struct.Memory* @routine_movsd__xmm1__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038d6)
  store %struct.Memory* %call_4038d6, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm1	 RIP: 4038db	 Bytes: 5
  %loadMem_4038db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038db = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038db)
  store %struct.Memory* %call_4038db, %struct.Memory** %MEMORY

  ; Code: movaps %xmm0, %xmm2	 RIP: 4038e0	 Bytes: 3
  %loadMem_4038e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038e0 = call %struct.Memory* @routine_movaps__xmm0___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038e0)
  store %struct.Memory* %call_4038e0, %struct.Memory** %MEMORY

  ; Code: mulsd -0x60(%rbp), %xmm2	 RIP: 4038e3	 Bytes: 5
  %loadMem_4038e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038e3 = call %struct.Memory* @routine_mulsd_MINUS0x60__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038e3)
  store %struct.Memory* %call_4038e3, %struct.Memory** %MEMORY

  ; Code: mulsd -0x50(%rbp), %xmm2	 RIP: 4038e8	 Bytes: 5
  %loadMem_4038e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038e8 = call %struct.Memory* @routine_mulsd_MINUS0x50__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038e8)
  store %struct.Memory* %call_4038e8, %struct.Memory** %MEMORY

  ; Code: subsd %xmm2, %xmm1	 RIP: 4038ed	 Bytes: 4
  %loadMem_4038ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038ed = call %struct.Memory* @routine_subsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038ed)
  store %struct.Memory* %call_4038ed, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x68(%rbp)	 RIP: 4038f1	 Bytes: 5
  %loadMem_4038f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038f1 = call %struct.Memory* @routine_movsd__xmm1__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038f1)
  store %struct.Memory* %call_4038f1, %struct.Memory** %MEMORY

  ; Code: mulsd -0x60(%rbp), %xmm0	 RIP: 4038f6	 Bytes: 5
  %loadMem_4038f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038f6 = call %struct.Memory* @routine_mulsd_MINUS0x60__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038f6)
  store %struct.Memory* %call_4038f6, %struct.Memory** %MEMORY

  ; Code: mulsd -0x48(%rbp), %xmm0	 RIP: 4038fb	 Bytes: 5
  %loadMem_4038fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038fb = call %struct.Memory* @routine_mulsd_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038fb)
  store %struct.Memory* %call_4038fb, %struct.Memory** %MEMORY

  ; Code: subsd -0x50(%rbp), %xmm0	 RIP: 403900	 Bytes: 5
  %loadMem_403900 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403900 = call %struct.Memory* @routine_subsd_MINUS0x50__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403900)
  store %struct.Memory* %call_403900, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x70(%rbp)	 RIP: 403905	 Bytes: 5
  %loadMem_403905 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403905 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403905)
  store %struct.Memory* %call_403905, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 40390a	 Bytes: 3
  %loadMem_40390a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40390a = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40390a)
  store %struct.Memory* %call_40390a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 40390d	 Bytes: 3
  %loadMem_40390d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40390d = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40390d)
  store %struct.Memory* %call_40390d, %struct.Memory** %MEMORY

  ; Code: .L_403910:	 RIP: 403910	 Bytes: 0
  br label %block_.L_403910
block_.L_403910:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 403910	 Bytes: 3
  %loadMem_403910 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403910 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403910)
  store %struct.Memory* %call_403910, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %ecx	 RIP: 403913	 Bytes: 3
  %loadMem_403913 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403913 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403913)
  store %struct.Memory* %call_403913, %struct.Memory** %MEMORY

  ; Code: addl -0x2c(%rbp), %ecx	 RIP: 403916	 Bytes: 3
  %loadMem_403916 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403916 = call %struct.Memory* @routine_addl_MINUS0x2c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403916)
  store %struct.Memory* %call_403916, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 403919	 Bytes: 2
  %loadMem_403919 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403919 = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403919)
  store %struct.Memory* %call_403919, %struct.Memory** %MEMORY

  ; Code: jge .L_403c22	 RIP: 40391b	 Bytes: 6
  %loadMem_40391b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40391b = call %struct.Memory* @routine_jge_.L_403c22(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40391b, i8* %BRANCH_TAKEN, i64 775, i64 6, i64 6)
  store %struct.Memory* %call_40391b, %struct.Memory** %MEMORY

  %loadBr_40391b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40391b = icmp eq i8 %loadBr_40391b, 1
  br i1 %cmpBr_40391b, label %block_.L_403c22, label %block_403921

block_403921:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 403921	 Bytes: 3
  %loadMem_403921 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403921 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403921)
  store %struct.Memory* %call_403921, %struct.Memory** %MEMORY

  ; Code: addl -0x8(%rbp), %eax	 RIP: 403924	 Bytes: 3
  %loadMem_403924 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403924 = call %struct.Memory* @routine_addl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403924)
  store %struct.Memory* %call_403924, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 403927	 Bytes: 3
  %loadMem_403927 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403927 = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403927)
  store %struct.Memory* %call_403927, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 40392a	 Bytes: 3
  %loadMem_40392a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40392a = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40392a)
  store %struct.Memory* %call_40392a, %struct.Memory** %MEMORY

  ; Code: addl -0x8(%rbp), %eax	 RIP: 40392d	 Bytes: 3
  %loadMem_40392d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40392d = call %struct.Memory* @routine_addl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40392d)
  store %struct.Memory* %call_40392d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 403930	 Bytes: 3
  %loadMem_403930 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403930 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403930)
  store %struct.Memory* %call_403930, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 403933	 Bytes: 3
  %loadMem_403933 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403933 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403933)
  store %struct.Memory* %call_403933, %struct.Memory** %MEMORY

  ; Code: addl -0x8(%rbp), %eax	 RIP: 403936	 Bytes: 3
  %loadMem_403936 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403936 = call %struct.Memory* @routine_addl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403936)
  store %struct.Memory* %call_403936, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 403939	 Bytes: 3
  %loadMem_403939 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403939 = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403939)
  store %struct.Memory* %call_403939, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40393c	 Bytes: 4
  %loadMem_40393c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40393c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40393c)
  store %struct.Memory* %call_40393c, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 403940	 Bytes: 4
  %loadMem_403940 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403940 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403940)
  store %struct.Memory* %call_403940, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 403944	 Bytes: 5
  %loadMem_403944 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403944 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403944)
  store %struct.Memory* %call_403944, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403949	 Bytes: 4
  %loadMem_403949 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403949 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403949)
  store %struct.Memory* %call_403949, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 40394d	 Bytes: 4
  %loadMem_40394d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40394d = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40394d)
  store %struct.Memory* %call_40394d, %struct.Memory** %MEMORY

  ; Code: addsd (%rcx,%rdx,8), %xmm0	 RIP: 403951	 Bytes: 5
  %loadMem_403951 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403951 = call %struct.Memory* @routine_addsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403951)
  store %struct.Memory* %call_403951, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x78(%rbp)	 RIP: 403956	 Bytes: 5
  %loadMem_403956 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403956 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403956)
  store %struct.Memory* %call_403956, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40395b	 Bytes: 4
  %loadMem_40395b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40395b = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40395b)
  store %struct.Memory* %call_40395b, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 40395f	 Bytes: 3
  %loadMem_40395f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40395f = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40395f)
  store %struct.Memory* %call_40395f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 403962	 Bytes: 3
  %loadMem_403962 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403962 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403962)
  store %struct.Memory* %call_403962, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 403965	 Bytes: 3
  %loadMem_403965 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403965 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403965)
  store %struct.Memory* %call_403965, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 403968	 Bytes: 5
  %loadMem_403968 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403968 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403968)
  store %struct.Memory* %call_403968, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40396d	 Bytes: 4
  %loadMem_40396d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40396d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40396d)
  store %struct.Memory* %call_40396d, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 403971	 Bytes: 3
  %loadMem_403971 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403971 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403971)
  store %struct.Memory* %call_403971, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 403974	 Bytes: 3
  %loadMem_403974 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403974 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403974)
  store %struct.Memory* %call_403974, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 403977	 Bytes: 3
  %loadMem_403977 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403977 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403977)
  store %struct.Memory* %call_403977, %struct.Memory** %MEMORY

  ; Code: addsd (%rcx,%rdx,8), %xmm0	 RIP: 40397a	 Bytes: 5
  %loadMem_40397a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40397a = call %struct.Memory* @routine_addsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40397a)
  store %struct.Memory* %call_40397a, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x80(%rbp)	 RIP: 40397f	 Bytes: 5
  %loadMem_40397f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40397f = call %struct.Memory* @routine_movsd__xmm0__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40397f)
  store %struct.Memory* %call_40397f, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403984	 Bytes: 4
  %loadMem_403984 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403984 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403984)
  store %struct.Memory* %call_403984, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 403988	 Bytes: 4
  %loadMem_403988 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403988 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403988)
  store %struct.Memory* %call_403988, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 40398c	 Bytes: 5
  %loadMem_40398c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40398c = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40398c)
  store %struct.Memory* %call_40398c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403991	 Bytes: 4
  %loadMem_403991 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403991 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403991)
  store %struct.Memory* %call_403991, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 403995	 Bytes: 4
  %loadMem_403995 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403995 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403995)
  store %struct.Memory* %call_403995, %struct.Memory** %MEMORY

  ; Code: subsd (%rcx,%rdx,8), %xmm0	 RIP: 403999	 Bytes: 5
  %loadMem_403999 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403999 = call %struct.Memory* @routine_subsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403999)
  store %struct.Memory* %call_403999, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x88(%rbp)	 RIP: 40399e	 Bytes: 8
  %loadMem_40399e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40399e = call %struct.Memory* @routine_movsd__xmm0__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40399e)
  store %struct.Memory* %call_40399e, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4039a6	 Bytes: 4
  %loadMem_4039a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039a6 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039a6)
  store %struct.Memory* %call_4039a6, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4039aa	 Bytes: 3
  %loadMem_4039aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039aa = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039aa)
  store %struct.Memory* %call_4039aa, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4039ad	 Bytes: 3
  %loadMem_4039ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039ad = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039ad)
  store %struct.Memory* %call_4039ad, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4039b0	 Bytes: 3
  %loadMem_4039b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039b0 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039b0)
  store %struct.Memory* %call_4039b0, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 4039b3	 Bytes: 5
  %loadMem_4039b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039b3 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039b3)
  store %struct.Memory* %call_4039b3, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4039b8	 Bytes: 4
  %loadMem_4039b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039b8 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039b8)
  store %struct.Memory* %call_4039b8, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 4039bc	 Bytes: 3
  %loadMem_4039bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039bc = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039bc)
  store %struct.Memory* %call_4039bc, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4039bf	 Bytes: 3
  %loadMem_4039bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039bf = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039bf)
  store %struct.Memory* %call_4039bf, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4039c2	 Bytes: 3
  %loadMem_4039c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039c2 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039c2)
  store %struct.Memory* %call_4039c2, %struct.Memory** %MEMORY

  ; Code: subsd (%rcx,%rdx,8), %xmm0	 RIP: 4039c5	 Bytes: 5
  %loadMem_4039c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039c5 = call %struct.Memory* @routine_subsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039c5)
  store %struct.Memory* %call_4039c5, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x90(%rbp)	 RIP: 4039ca	 Bytes: 8
  %loadMem_4039ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039ca = call %struct.Memory* @routine_movsd__xmm0__MINUS0x90__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039ca)
  store %struct.Memory* %call_4039ca, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4039d2	 Bytes: 4
  %loadMem_4039d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039d2 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039d2)
  store %struct.Memory* %call_4039d2, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 4039d6	 Bytes: 4
  %loadMem_4039d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039d6 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039d6)
  store %struct.Memory* %call_4039d6, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 4039da	 Bytes: 5
  %loadMem_4039da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039da = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039da)
  store %struct.Memory* %call_4039da, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4039df	 Bytes: 4
  %loadMem_4039df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039df = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039df)
  store %struct.Memory* %call_4039df, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 4039e3	 Bytes: 4
  %loadMem_4039e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039e3 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039e3)
  store %struct.Memory* %call_4039e3, %struct.Memory** %MEMORY

  ; Code: addsd (%rcx,%rdx,8), %xmm0	 RIP: 4039e7	 Bytes: 5
  %loadMem_4039e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039e7 = call %struct.Memory* @routine_addsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039e7)
  store %struct.Memory* %call_4039e7, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x98(%rbp)	 RIP: 4039ec	 Bytes: 8
  %loadMem_4039ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039ec = call %struct.Memory* @routine_movsd__xmm0__MINUS0x98__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039ec)
  store %struct.Memory* %call_4039ec, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4039f4	 Bytes: 4
  %loadMem_4039f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039f4 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039f4)
  store %struct.Memory* %call_4039f4, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 4039f8	 Bytes: 3
  %loadMem_4039f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039f8 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039f8)
  store %struct.Memory* %call_4039f8, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4039fb	 Bytes: 3
  %loadMem_4039fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039fb = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039fb)
  store %struct.Memory* %call_4039fb, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4039fe	 Bytes: 3
  %loadMem_4039fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039fe = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039fe)
  store %struct.Memory* %call_4039fe, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 403a01	 Bytes: 5
  %loadMem_403a01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a01 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a01)
  store %struct.Memory* %call_403a01, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403a06	 Bytes: 4
  %loadMem_403a06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a06 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a06)
  store %struct.Memory* %call_403a06, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 403a0a	 Bytes: 3
  %loadMem_403a0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a0a = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a0a)
  store %struct.Memory* %call_403a0a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 403a0d	 Bytes: 3
  %loadMem_403a0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a0d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a0d)
  store %struct.Memory* %call_403a0d, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 403a10	 Bytes: 3
  %loadMem_403a10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a10 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a10)
  store %struct.Memory* %call_403a10, %struct.Memory** %MEMORY

  ; Code: addsd (%rcx,%rdx,8), %xmm0	 RIP: 403a13	 Bytes: 5
  %loadMem_403a13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a13 = call %struct.Memory* @routine_addsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a13)
  store %struct.Memory* %call_403a13, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0xa0(%rbp)	 RIP: 403a18	 Bytes: 8
  %loadMem_403a18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a18 = call %struct.Memory* @routine_movsd__xmm0__MINUS0xa0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a18)
  store %struct.Memory* %call_403a18, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403a20	 Bytes: 4
  %loadMem_403a20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a20 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a20)
  store %struct.Memory* %call_403a20, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 403a24	 Bytes: 4
  %loadMem_403a24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a24 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a24)
  store %struct.Memory* %call_403a24, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 403a28	 Bytes: 5
  %loadMem_403a28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a28 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a28)
  store %struct.Memory* %call_403a28, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403a2d	 Bytes: 4
  %loadMem_403a2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a2d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a2d)
  store %struct.Memory* %call_403a2d, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 403a31	 Bytes: 4
  %loadMem_403a31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a31 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a31)
  store %struct.Memory* %call_403a31, %struct.Memory** %MEMORY

  ; Code: subsd (%rcx,%rdx,8), %xmm0	 RIP: 403a35	 Bytes: 5
  %loadMem_403a35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a35 = call %struct.Memory* @routine_subsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a35)
  store %struct.Memory* %call_403a35, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0xa8(%rbp)	 RIP: 403a3a	 Bytes: 8
  %loadMem_403a3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a3a = call %struct.Memory* @routine_movsd__xmm0__MINUS0xa8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a3a)
  store %struct.Memory* %call_403a3a, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403a42	 Bytes: 4
  %loadMem_403a42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a42 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a42)
  store %struct.Memory* %call_403a42, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 403a46	 Bytes: 3
  %loadMem_403a46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a46 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a46)
  store %struct.Memory* %call_403a46, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 403a49	 Bytes: 3
  %loadMem_403a49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a49 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a49)
  store %struct.Memory* %call_403a49, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 403a4c	 Bytes: 3
  %loadMem_403a4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a4c = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a4c)
  store %struct.Memory* %call_403a4c, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 403a4f	 Bytes: 5
  %loadMem_403a4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a4f = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a4f)
  store %struct.Memory* %call_403a4f, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403a54	 Bytes: 4
  %loadMem_403a54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a54 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a54)
  store %struct.Memory* %call_403a54, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 403a58	 Bytes: 3
  %loadMem_403a58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a58 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a58)
  store %struct.Memory* %call_403a58, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 403a5b	 Bytes: 3
  %loadMem_403a5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a5b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a5b)
  store %struct.Memory* %call_403a5b, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 403a5e	 Bytes: 3
  %loadMem_403a5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a5e = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a5e)
  store %struct.Memory* %call_403a5e, %struct.Memory** %MEMORY

  ; Code: subsd (%rcx,%rdx,8), %xmm0	 RIP: 403a61	 Bytes: 5
  %loadMem_403a61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a61 = call %struct.Memory* @routine_subsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a61)
  store %struct.Memory* %call_403a61, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0xb0(%rbp)	 RIP: 403a66	 Bytes: 8
  %loadMem_403a66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a66 = call %struct.Memory* @routine_movsd__xmm0__MINUS0xb0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a66)
  store %struct.Memory* %call_403a66, %struct.Memory** %MEMORY

  ; Code: movsd -0x78(%rbp), %xmm0	 RIP: 403a6e	 Bytes: 5
  %loadMem_403a6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a6e = call %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a6e)
  store %struct.Memory* %call_403a6e, %struct.Memory** %MEMORY

  ; Code: addsd -0x98(%rbp), %xmm0	 RIP: 403a73	 Bytes: 8
  %loadMem_403a73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a73 = call %struct.Memory* @routine_addsd_MINUS0x98__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a73)
  store %struct.Memory* %call_403a73, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403a7b	 Bytes: 4
  %loadMem_403a7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a7b = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a7b)
  store %struct.Memory* %call_403a7b, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 403a7f	 Bytes: 4
  %loadMem_403a7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a7f = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a7f)
  store %struct.Memory* %call_403a7f, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 403a83	 Bytes: 5
  %loadMem_403a83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a83 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a83)
  store %struct.Memory* %call_403a83, %struct.Memory** %MEMORY

  ; Code: movsd -0x80(%rbp), %xmm0	 RIP: 403a88	 Bytes: 5
  %loadMem_403a88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a88 = call %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a88)
  store %struct.Memory* %call_403a88, %struct.Memory** %MEMORY

  ; Code: addsd -0xa0(%rbp), %xmm0	 RIP: 403a8d	 Bytes: 8
  %loadMem_403a8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a8d = call %struct.Memory* @routine_addsd_MINUS0xa0__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a8d)
  store %struct.Memory* %call_403a8d, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403a95	 Bytes: 4
  %loadMem_403a95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a95 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a95)
  store %struct.Memory* %call_403a95, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 403a99	 Bytes: 3
  %loadMem_403a99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a99 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a99)
  store %struct.Memory* %call_403a99, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 403a9c	 Bytes: 3
  %loadMem_403a9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a9c = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a9c)
  store %struct.Memory* %call_403a9c, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 403a9f	 Bytes: 3
  %loadMem_403a9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a9f = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a9f)
  store %struct.Memory* %call_403a9f, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 403aa2	 Bytes: 5
  %loadMem_403aa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403aa2 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403aa2)
  store %struct.Memory* %call_403aa2, %struct.Memory** %MEMORY

  ; Code: movsd -0x98(%rbp), %xmm0	 RIP: 403aa7	 Bytes: 8
  %loadMem_403aa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403aa7 = call %struct.Memory* @routine_movsd_MINUS0x98__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403aa7)
  store %struct.Memory* %call_403aa7, %struct.Memory** %MEMORY

  ; Code: movsd -0x78(%rbp), %xmm1	 RIP: 403aaf	 Bytes: 5
  %loadMem_403aaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403aaf = call %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403aaf)
  store %struct.Memory* %call_403aaf, %struct.Memory** %MEMORY

  ; Code: subsd %xmm0, %xmm1	 RIP: 403ab4	 Bytes: 4
  %loadMem_403ab4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ab4 = call %struct.Memory* @routine_subsd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ab4)
  store %struct.Memory* %call_403ab4, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x78(%rbp)	 RIP: 403ab8	 Bytes: 5
  %loadMem_403ab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ab8 = call %struct.Memory* @routine_movsd__xmm1__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ab8)
  store %struct.Memory* %call_403ab8, %struct.Memory** %MEMORY

  ; Code: movsd -0xa0(%rbp), %xmm0	 RIP: 403abd	 Bytes: 8
  %loadMem_403abd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403abd = call %struct.Memory* @routine_movsd_MINUS0xa0__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403abd)
  store %struct.Memory* %call_403abd, %struct.Memory** %MEMORY

  ; Code: movsd -0x80(%rbp), %xmm1	 RIP: 403ac5	 Bytes: 5
  %loadMem_403ac5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ac5 = call %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ac5)
  store %struct.Memory* %call_403ac5, %struct.Memory** %MEMORY

  ; Code: subsd %xmm0, %xmm1	 RIP: 403aca	 Bytes: 4
  %loadMem_403aca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403aca = call %struct.Memory* @routine_subsd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403aca)
  store %struct.Memory* %call_403aca, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x80(%rbp)	 RIP: 403ace	 Bytes: 5
  %loadMem_403ace = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ace = call %struct.Memory* @routine_movsd__xmm1__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ace)
  store %struct.Memory* %call_403ace, %struct.Memory** %MEMORY

  ; Code: movsd -0x58(%rbp), %xmm0	 RIP: 403ad3	 Bytes: 5
  %loadMem_403ad3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ad3 = call %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ad3)
  store %struct.Memory* %call_403ad3, %struct.Memory** %MEMORY

  ; Code: mulsd -0x78(%rbp), %xmm0	 RIP: 403ad8	 Bytes: 5
  %loadMem_403ad8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ad8 = call %struct.Memory* @routine_mulsd_MINUS0x78__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ad8)
  store %struct.Memory* %call_403ad8, %struct.Memory** %MEMORY

  ; Code: movsd -0x60(%rbp), %xmm1	 RIP: 403add	 Bytes: 5
  %loadMem_403add = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403add = call %struct.Memory* @routine_movsd_MINUS0x60__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403add)
  store %struct.Memory* %call_403add, %struct.Memory** %MEMORY

  ; Code: mulsd -0x80(%rbp), %xmm1	 RIP: 403ae2	 Bytes: 5
  %loadMem_403ae2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ae2 = call %struct.Memory* @routine_mulsd_MINUS0x80__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ae2)
  store %struct.Memory* %call_403ae2, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 403ae7	 Bytes: 4
  %loadMem_403ae7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ae7 = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ae7)
  store %struct.Memory* %call_403ae7, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403aeb	 Bytes: 4
  %loadMem_403aeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403aeb = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403aeb)
  store %struct.Memory* %call_403aeb, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 403aef	 Bytes: 4
  %loadMem_403aef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403aef = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403aef)
  store %struct.Memory* %call_403aef, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 403af3	 Bytes: 5
  %loadMem_403af3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403af3 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403af3)
  store %struct.Memory* %call_403af3, %struct.Memory** %MEMORY

  ; Code: movsd -0x58(%rbp), %xmm0	 RIP: 403af8	 Bytes: 5
  %loadMem_403af8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403af8 = call %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403af8)
  store %struct.Memory* %call_403af8, %struct.Memory** %MEMORY

  ; Code: mulsd -0x80(%rbp), %xmm0	 RIP: 403afd	 Bytes: 5
  %loadMem_403afd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403afd = call %struct.Memory* @routine_mulsd_MINUS0x80__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403afd)
  store %struct.Memory* %call_403afd, %struct.Memory** %MEMORY

  ; Code: movsd -0x60(%rbp), %xmm1	 RIP: 403b02	 Bytes: 5
  %loadMem_403b02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b02 = call %struct.Memory* @routine_movsd_MINUS0x60__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b02)
  store %struct.Memory* %call_403b02, %struct.Memory** %MEMORY

  ; Code: mulsd -0x78(%rbp), %xmm1	 RIP: 403b07	 Bytes: 5
  %loadMem_403b07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b07 = call %struct.Memory* @routine_mulsd_MINUS0x78__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b07)
  store %struct.Memory* %call_403b07, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 403b0c	 Bytes: 4
  %loadMem_403b0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b0c = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b0c)
  store %struct.Memory* %call_403b0c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403b10	 Bytes: 4
  %loadMem_403b10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b10 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b10)
  store %struct.Memory* %call_403b10, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 403b14	 Bytes: 3
  %loadMem_403b14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b14 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b14)
  store %struct.Memory* %call_403b14, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 403b17	 Bytes: 3
  %loadMem_403b17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b17 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b17)
  store %struct.Memory* %call_403b17, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 403b1a	 Bytes: 3
  %loadMem_403b1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b1a = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b1a)
  store %struct.Memory* %call_403b1a, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 403b1d	 Bytes: 5
  %loadMem_403b1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b1d = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b1d)
  store %struct.Memory* %call_403b1d, %struct.Memory** %MEMORY

  ; Code: movsd -0x88(%rbp), %xmm0	 RIP: 403b22	 Bytes: 8
  %loadMem_403b22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b22 = call %struct.Memory* @routine_movsd_MINUS0x88__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b22)
  store %struct.Memory* %call_403b22, %struct.Memory** %MEMORY

  ; Code: subsd -0xb0(%rbp), %xmm0	 RIP: 403b2a	 Bytes: 8
  %loadMem_403b2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b2a = call %struct.Memory* @routine_subsd_MINUS0xb0__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b2a)
  store %struct.Memory* %call_403b2a, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x78(%rbp)	 RIP: 403b32	 Bytes: 5
  %loadMem_403b32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b32 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b32)
  store %struct.Memory* %call_403b32, %struct.Memory** %MEMORY

  ; Code: movsd -0x90(%rbp), %xmm0	 RIP: 403b37	 Bytes: 8
  %loadMem_403b37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b37 = call %struct.Memory* @routine_movsd_MINUS0x90__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b37)
  store %struct.Memory* %call_403b37, %struct.Memory** %MEMORY

  ; Code: addsd -0xa8(%rbp), %xmm0	 RIP: 403b3f	 Bytes: 8
  %loadMem_403b3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b3f = call %struct.Memory* @routine_addsd_MINUS0xa8__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b3f)
  store %struct.Memory* %call_403b3f, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x80(%rbp)	 RIP: 403b47	 Bytes: 5
  %loadMem_403b47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b47 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b47)
  store %struct.Memory* %call_403b47, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm0	 RIP: 403b4c	 Bytes: 5
  %loadMem_403b4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b4c = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b4c)
  store %struct.Memory* %call_403b4c, %struct.Memory** %MEMORY

  ; Code: mulsd -0x78(%rbp), %xmm0	 RIP: 403b51	 Bytes: 5
  %loadMem_403b51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b51 = call %struct.Memory* @routine_mulsd_MINUS0x78__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b51)
  store %struct.Memory* %call_403b51, %struct.Memory** %MEMORY

  ; Code: movsd -0x50(%rbp), %xmm1	 RIP: 403b56	 Bytes: 5
  %loadMem_403b56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b56 = call %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b56)
  store %struct.Memory* %call_403b56, %struct.Memory** %MEMORY

  ; Code: mulsd -0x80(%rbp), %xmm1	 RIP: 403b5b	 Bytes: 5
  %loadMem_403b5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b5b = call %struct.Memory* @routine_mulsd_MINUS0x80__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b5b)
  store %struct.Memory* %call_403b5b, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 403b60	 Bytes: 4
  %loadMem_403b60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b60 = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b60)
  store %struct.Memory* %call_403b60, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403b64	 Bytes: 4
  %loadMem_403b64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b64 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b64)
  store %struct.Memory* %call_403b64, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 403b68	 Bytes: 4
  %loadMem_403b68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b68 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b68)
  store %struct.Memory* %call_403b68, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 403b6c	 Bytes: 5
  %loadMem_403b6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b6c = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b6c)
  store %struct.Memory* %call_403b6c, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm0	 RIP: 403b71	 Bytes: 5
  %loadMem_403b71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b71 = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b71)
  store %struct.Memory* %call_403b71, %struct.Memory** %MEMORY

  ; Code: mulsd -0x80(%rbp), %xmm0	 RIP: 403b76	 Bytes: 5
  %loadMem_403b76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b76 = call %struct.Memory* @routine_mulsd_MINUS0x80__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b76)
  store %struct.Memory* %call_403b76, %struct.Memory** %MEMORY

  ; Code: movsd -0x50(%rbp), %xmm1	 RIP: 403b7b	 Bytes: 5
  %loadMem_403b7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b7b = call %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b7b)
  store %struct.Memory* %call_403b7b, %struct.Memory** %MEMORY

  ; Code: mulsd -0x78(%rbp), %xmm1	 RIP: 403b80	 Bytes: 5
  %loadMem_403b80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b80 = call %struct.Memory* @routine_mulsd_MINUS0x78__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b80)
  store %struct.Memory* %call_403b80, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 403b85	 Bytes: 4
  %loadMem_403b85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b85 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b85)
  store %struct.Memory* %call_403b85, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403b89	 Bytes: 4
  %loadMem_403b89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b89 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b89)
  store %struct.Memory* %call_403b89, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 403b8d	 Bytes: 3
  %loadMem_403b8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b8d = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b8d)
  store %struct.Memory* %call_403b8d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 403b90	 Bytes: 3
  %loadMem_403b90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b90 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b90)
  store %struct.Memory* %call_403b90, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 403b93	 Bytes: 3
  %loadMem_403b93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b93 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b93)
  store %struct.Memory* %call_403b93, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 403b96	 Bytes: 5
  %loadMem_403b96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b96 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b96)
  store %struct.Memory* %call_403b96, %struct.Memory** %MEMORY

  ; Code: movsd -0x88(%rbp), %xmm0	 RIP: 403b9b	 Bytes: 8
  %loadMem_403b9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b9b = call %struct.Memory* @routine_movsd_MINUS0x88__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b9b)
  store %struct.Memory* %call_403b9b, %struct.Memory** %MEMORY

  ; Code: addsd -0xb0(%rbp), %xmm0	 RIP: 403ba3	 Bytes: 8
  %loadMem_403ba3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ba3 = call %struct.Memory* @routine_addsd_MINUS0xb0__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ba3)
  store %struct.Memory* %call_403ba3, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x78(%rbp)	 RIP: 403bab	 Bytes: 5
  %loadMem_403bab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403bab = call %struct.Memory* @routine_movsd__xmm0__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403bab)
  store %struct.Memory* %call_403bab, %struct.Memory** %MEMORY

  ; Code: movsd -0x90(%rbp), %xmm0	 RIP: 403bb0	 Bytes: 8
  %loadMem_403bb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403bb0 = call %struct.Memory* @routine_movsd_MINUS0x90__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403bb0)
  store %struct.Memory* %call_403bb0, %struct.Memory** %MEMORY

  ; Code: subsd -0xa8(%rbp), %xmm0	 RIP: 403bb8	 Bytes: 8
  %loadMem_403bb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403bb8 = call %struct.Memory* @routine_subsd_MINUS0xa8__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403bb8)
  store %struct.Memory* %call_403bb8, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x80(%rbp)	 RIP: 403bc0	 Bytes: 5
  %loadMem_403bc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403bc0 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403bc0)
  store %struct.Memory* %call_403bc0, %struct.Memory** %MEMORY

  ; Code: movsd -0x68(%rbp), %xmm0	 RIP: 403bc5	 Bytes: 5
  %loadMem_403bc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403bc5 = call %struct.Memory* @routine_movsd_MINUS0x68__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403bc5)
  store %struct.Memory* %call_403bc5, %struct.Memory** %MEMORY

  ; Code: mulsd -0x78(%rbp), %xmm0	 RIP: 403bca	 Bytes: 5
  %loadMem_403bca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403bca = call %struct.Memory* @routine_mulsd_MINUS0x78__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403bca)
  store %struct.Memory* %call_403bca, %struct.Memory** %MEMORY

  ; Code: movsd -0x70(%rbp), %xmm1	 RIP: 403bcf	 Bytes: 5
  %loadMem_403bcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403bcf = call %struct.Memory* @routine_movsd_MINUS0x70__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403bcf)
  store %struct.Memory* %call_403bcf, %struct.Memory** %MEMORY

  ; Code: mulsd -0x80(%rbp), %xmm1	 RIP: 403bd4	 Bytes: 5
  %loadMem_403bd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403bd4 = call %struct.Memory* @routine_mulsd_MINUS0x80__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403bd4)
  store %struct.Memory* %call_403bd4, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 403bd9	 Bytes: 4
  %loadMem_403bd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403bd9 = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403bd9)
  store %struct.Memory* %call_403bd9, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403bdd	 Bytes: 4
  %loadMem_403bdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403bdd = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403bdd)
  store %struct.Memory* %call_403bdd, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 403be1	 Bytes: 4
  %loadMem_403be1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403be1 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403be1)
  store %struct.Memory* %call_403be1, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 403be5	 Bytes: 5
  %loadMem_403be5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403be5 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403be5)
  store %struct.Memory* %call_403be5, %struct.Memory** %MEMORY

  ; Code: movsd -0x68(%rbp), %xmm0	 RIP: 403bea	 Bytes: 5
  %loadMem_403bea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403bea = call %struct.Memory* @routine_movsd_MINUS0x68__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403bea)
  store %struct.Memory* %call_403bea, %struct.Memory** %MEMORY

  ; Code: mulsd -0x80(%rbp), %xmm0	 RIP: 403bef	 Bytes: 5
  %loadMem_403bef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403bef = call %struct.Memory* @routine_mulsd_MINUS0x80__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403bef)
  store %struct.Memory* %call_403bef, %struct.Memory** %MEMORY

  ; Code: movsd -0x70(%rbp), %xmm1	 RIP: 403bf4	 Bytes: 5
  %loadMem_403bf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403bf4 = call %struct.Memory* @routine_movsd_MINUS0x70__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403bf4)
  store %struct.Memory* %call_403bf4, %struct.Memory** %MEMORY

  ; Code: mulsd -0x78(%rbp), %xmm1	 RIP: 403bf9	 Bytes: 5
  %loadMem_403bf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403bf9 = call %struct.Memory* @routine_mulsd_MINUS0x78__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403bf9)
  store %struct.Memory* %call_403bf9, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 403bfe	 Bytes: 4
  %loadMem_403bfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403bfe = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403bfe)
  store %struct.Memory* %call_403bfe, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403c02	 Bytes: 4
  %loadMem_403c02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c02 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c02)
  store %struct.Memory* %call_403c02, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 403c06	 Bytes: 3
  %loadMem_403c06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c06 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c06)
  store %struct.Memory* %call_403c06, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 403c09	 Bytes: 3
  %loadMem_403c09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c09 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c09)
  store %struct.Memory* %call_403c09, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 403c0c	 Bytes: 3
  %loadMem_403c0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c0c = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c0c)
  store %struct.Memory* %call_403c0c, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 403c0f	 Bytes: 5
  %loadMem_403c0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c0f = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c0f)
  store %struct.Memory* %call_403c0f, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 403c14	 Bytes: 3
  %loadMem_403c14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c14 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c14)
  store %struct.Memory* %call_403c14, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %eax	 RIP: 403c17	 Bytes: 3
  %loadMem_403c17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c17 = call %struct.Memory* @routine_addl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c17)
  store %struct.Memory* %call_403c17, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 403c1a	 Bytes: 3
  %loadMem_403c1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c1a = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c1a)
  store %struct.Memory* %call_403c1a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_403910	 RIP: 403c1d	 Bytes: 5
  %loadMem_403c1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c1d = call %struct.Memory* @routine_jmpq_.L_403910(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c1d, i64 -781, i64 5)
  store %struct.Memory* %call_403c1d, %struct.Memory** %MEMORY

  br label %block_.L_403910

  ; Code: .L_403c22:	 RIP: 403c22	 Bytes: 0
block_.L_403c22:

  ; Code: movsd 0x496(%rip), %xmm0	 RIP: 403c22	 Bytes: 8
  %loadMem_403c22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c22 = call %struct.Memory* @routine_movsd_0x496__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c22)
  store %struct.Memory* %call_403c22, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 403c2a	 Bytes: 4
  %loadMem_403c2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c2a = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c2a)
  store %struct.Memory* %call_403c2a, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 403c2e	 Bytes: 3
  %loadMem_403c2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c2e = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c2e)
  store %struct.Memory* %call_403c2e, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %ecx	 RIP: 403c31	 Bytes: 3
  %loadMem_403c31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c31 = call %struct.Memory* @routine_addl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c31)
  store %struct.Memory* %call_403c31, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 403c34	 Bytes: 3
  %loadMem_403c34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c34 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c34)
  store %struct.Memory* %call_403c34, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rdx,8), %xmm1	 RIP: 403c37	 Bytes: 5
  %loadMem_403c37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c37 = call %struct.Memory* @routine_movsd___rax__rdx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c37)
  store %struct.Memory* %call_403c37, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x48(%rbp)	 RIP: 403c3c	 Bytes: 5
  %loadMem_403c3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c3c = call %struct.Memory* @routine_movsd__xmm1__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c3c)
  store %struct.Memory* %call_403c3c, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 403c41	 Bytes: 4
  %loadMem_403c41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c41 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c41)
  store %struct.Memory* %call_403c41, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 403c45	 Bytes: 3
  %loadMem_403c45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c45 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c45)
  store %struct.Memory* %call_403c45, %struct.Memory** %MEMORY

  ; Code: addl $0x3, %ecx	 RIP: 403c48	 Bytes: 3
  %loadMem_403c48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c48 = call %struct.Memory* @routine_addl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c48)
  store %struct.Memory* %call_403c48, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 403c4b	 Bytes: 3
  %loadMem_403c4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c4b = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c4b)
  store %struct.Memory* %call_403c4b, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rdx,8), %xmm1	 RIP: 403c4e	 Bytes: 5
  %loadMem_403c4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c4e = call %struct.Memory* @routine_movsd___rax__rdx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c4e)
  store %struct.Memory* %call_403c4e, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x50(%rbp)	 RIP: 403c53	 Bytes: 5
  %loadMem_403c53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c53 = call %struct.Memory* @routine_movsd__xmm1__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c53)
  store %struct.Memory* %call_403c53, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm1	 RIP: 403c58	 Bytes: 5
  %loadMem_403c58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c58 = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c58)
  store %struct.Memory* %call_403c58, %struct.Memory** %MEMORY

  ; Code: movaps %xmm0, %xmm2	 RIP: 403c5d	 Bytes: 3
  %loadMem_403c5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c5d = call %struct.Memory* @routine_movaps__xmm0___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c5d)
  store %struct.Memory* %call_403c5d, %struct.Memory** %MEMORY

  ; Code: mulsd -0x58(%rbp), %xmm2	 RIP: 403c60	 Bytes: 5
  %loadMem_403c60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c60 = call %struct.Memory* @routine_mulsd_MINUS0x58__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c60)
  store %struct.Memory* %call_403c60, %struct.Memory** %MEMORY

  ; Code: mulsd -0x50(%rbp), %xmm2	 RIP: 403c65	 Bytes: 5
  %loadMem_403c65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c65 = call %struct.Memory* @routine_mulsd_MINUS0x50__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c65)
  store %struct.Memory* %call_403c65, %struct.Memory** %MEMORY

  ; Code: subsd %xmm2, %xmm1	 RIP: 403c6a	 Bytes: 4
  %loadMem_403c6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c6a = call %struct.Memory* @routine_subsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c6a)
  store %struct.Memory* %call_403c6a, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x68(%rbp)	 RIP: 403c6e	 Bytes: 5
  %loadMem_403c6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c6e = call %struct.Memory* @routine_movsd__xmm1__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c6e)
  store %struct.Memory* %call_403c6e, %struct.Memory** %MEMORY

  ; Code: mulsd -0x58(%rbp), %xmm0	 RIP: 403c73	 Bytes: 5
  %loadMem_403c73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c73 = call %struct.Memory* @routine_mulsd_MINUS0x58__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c73)
  store %struct.Memory* %call_403c73, %struct.Memory** %MEMORY

  ; Code: mulsd -0x48(%rbp), %xmm0	 RIP: 403c78	 Bytes: 5
  %loadMem_403c78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c78 = call %struct.Memory* @routine_mulsd_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c78)
  store %struct.Memory* %call_403c78, %struct.Memory** %MEMORY

  ; Code: subsd -0x50(%rbp), %xmm0	 RIP: 403c7d	 Bytes: 5
  %loadMem_403c7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c7d = call %struct.Memory* @routine_subsd_MINUS0x50__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c7d)
  store %struct.Memory* %call_403c7d, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x70(%rbp)	 RIP: 403c82	 Bytes: 5
  %loadMem_403c82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c82 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c82)
  store %struct.Memory* %call_403c82, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %ecx	 RIP: 403c87	 Bytes: 3
  %loadMem_403c87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c87 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c87)
  store %struct.Memory* %call_403c87, %struct.Memory** %MEMORY

  ; Code: addl -0x38(%rbp), %ecx	 RIP: 403c8a	 Bytes: 3
  %loadMem_403c8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c8a = call %struct.Memory* @routine_addl_MINUS0x38__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c8a)
  store %struct.Memory* %call_403c8a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x1c(%rbp)	 RIP: 403c8d	 Bytes: 3
  %loadMem_403c8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c8d = call %struct.Memory* @routine_movl__ecx__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c8d)
  store %struct.Memory* %call_403c8d, %struct.Memory** %MEMORY

  ; Code: .L_403c90:	 RIP: 403c90	 Bytes: 0
  br label %block_.L_403c90
block_.L_403c90:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 403c90	 Bytes: 3
  %loadMem_403c90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c90 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c90)
  store %struct.Memory* %call_403c90, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %ecx	 RIP: 403c93	 Bytes: 3
  %loadMem_403c93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c93 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c93)
  store %struct.Memory* %call_403c93, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 403c96	 Bytes: 3
  %loadMem_403c96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c96 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c96)
  store %struct.Memory* %call_403c96, %struct.Memory** %MEMORY

  ; Code: addl -0x38(%rbp), %edx	 RIP: 403c99	 Bytes: 3
  %loadMem_403c99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c99 = call %struct.Memory* @routine_addl_MINUS0x38__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c99)
  store %struct.Memory* %call_403c99, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 403c9c	 Bytes: 2
  %loadMem_403c9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c9c = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c9c)
  store %struct.Memory* %call_403c9c, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 403c9e	 Bytes: 2
  %loadMem_403c9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c9e = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c9e)
  store %struct.Memory* %call_403c9e, %struct.Memory** %MEMORY

  ; Code: jge .L_403fcb	 RIP: 403ca0	 Bytes: 6
  %loadMem_403ca0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ca0 = call %struct.Memory* @routine_jge_.L_403fcb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ca0, i8* %BRANCH_TAKEN, i64 811, i64 6, i64 6)
  store %struct.Memory* %call_403ca0, %struct.Memory** %MEMORY

  %loadBr_403ca0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_403ca0 = icmp eq i8 %loadBr_403ca0, 1
  br i1 %cmpBr_403ca0, label %block_.L_403fcb, label %block_403ca6

block_403ca6:
  ; Code: movq $0x8000000000000000, %rax	 RIP: 403ca6	 Bytes: 10
  %loadMem_403ca6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ca6 = call %struct.Memory* @routine_movq__0x8000000000000000___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ca6)
  store %struct.Memory* %call_403ca6, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 403cb0	 Bytes: 3
  %loadMem_403cb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cb0 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cb0)
  store %struct.Memory* %call_403cb0, %struct.Memory** %MEMORY

  ; Code: addl -0x8(%rbp), %ecx	 RIP: 403cb3	 Bytes: 3
  %loadMem_403cb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cb3 = call %struct.Memory* @routine_addl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cb3)
  store %struct.Memory* %call_403cb3, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x20(%rbp)	 RIP: 403cb6	 Bytes: 3
  %loadMem_403cb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cb6 = call %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cb6)
  store %struct.Memory* %call_403cb6, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %ecx	 RIP: 403cb9	 Bytes: 3
  %loadMem_403cb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cb9 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cb9)
  store %struct.Memory* %call_403cb9, %struct.Memory** %MEMORY

  ; Code: addl -0x8(%rbp), %ecx	 RIP: 403cbc	 Bytes: 3
  %loadMem_403cbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cbc = call %struct.Memory* @routine_addl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cbc)
  store %struct.Memory* %call_403cbc, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x24(%rbp)	 RIP: 403cbf	 Bytes: 3
  %loadMem_403cbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cbf = call %struct.Memory* @routine_movl__ecx__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cbf)
  store %struct.Memory* %call_403cbf, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 403cc2	 Bytes: 3
  %loadMem_403cc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cc2 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cc2)
  store %struct.Memory* %call_403cc2, %struct.Memory** %MEMORY

  ; Code: addl -0x8(%rbp), %ecx	 RIP: 403cc5	 Bytes: 3
  %loadMem_403cc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cc5 = call %struct.Memory* @routine_addl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cc5)
  store %struct.Memory* %call_403cc5, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x28(%rbp)	 RIP: 403cc8	 Bytes: 3
  %loadMem_403cc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cc8 = call %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cc8)
  store %struct.Memory* %call_403cc8, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403ccb	 Bytes: 4
  %loadMem_403ccb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ccb = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ccb)
  store %struct.Memory* %call_403ccb, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rsi	 RIP: 403ccf	 Bytes: 4
  %loadMem_403ccf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ccf = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ccf)
  store %struct.Memory* %call_403ccf, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 403cd3	 Bytes: 5
  %loadMem_403cd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cd3 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cd3)
  store %struct.Memory* %call_403cd3, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403cd8	 Bytes: 4
  %loadMem_403cd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cd8 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cd8)
  store %struct.Memory* %call_403cd8, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rsi	 RIP: 403cdc	 Bytes: 4
  %loadMem_403cdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cdc = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cdc)
  store %struct.Memory* %call_403cdc, %struct.Memory** %MEMORY

  ; Code: addsd (%rdx,%rsi,8), %xmm0	 RIP: 403ce0	 Bytes: 5
  %loadMem_403ce0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ce0 = call %struct.Memory* @routine_addsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ce0)
  store %struct.Memory* %call_403ce0, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x78(%rbp)	 RIP: 403ce5	 Bytes: 5
  %loadMem_403ce5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ce5 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ce5)
  store %struct.Memory* %call_403ce5, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403cea	 Bytes: 4
  %loadMem_403cea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cea = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cea)
  store %struct.Memory* %call_403cea, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 403cee	 Bytes: 3
  %loadMem_403cee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cee = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cee)
  store %struct.Memory* %call_403cee, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 403cf1	 Bytes: 3
  %loadMem_403cf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cf1 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cf1)
  store %struct.Memory* %call_403cf1, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 403cf4	 Bytes: 3
  %loadMem_403cf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cf4 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cf4)
  store %struct.Memory* %call_403cf4, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 403cf7	 Bytes: 5
  %loadMem_403cf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cf7 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cf7)
  store %struct.Memory* %call_403cf7, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403cfc	 Bytes: 4
  %loadMem_403cfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cfc = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cfc)
  store %struct.Memory* %call_403cfc, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %ecx	 RIP: 403d00	 Bytes: 3
  %loadMem_403d00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d00 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d00)
  store %struct.Memory* %call_403d00, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 403d03	 Bytes: 3
  %loadMem_403d03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d03 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d03)
  store %struct.Memory* %call_403d03, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 403d06	 Bytes: 3
  %loadMem_403d06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d06 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d06)
  store %struct.Memory* %call_403d06, %struct.Memory** %MEMORY

  ; Code: addsd (%rdx,%rsi,8), %xmm0	 RIP: 403d09	 Bytes: 5
  %loadMem_403d09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d09 = call %struct.Memory* @routine_addsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d09)
  store %struct.Memory* %call_403d09, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x80(%rbp)	 RIP: 403d0e	 Bytes: 5
  %loadMem_403d0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d0e = call %struct.Memory* @routine_movsd__xmm0__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d0e)
  store %struct.Memory* %call_403d0e, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403d13	 Bytes: 4
  %loadMem_403d13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d13 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d13)
  store %struct.Memory* %call_403d13, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rsi	 RIP: 403d17	 Bytes: 4
  %loadMem_403d17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d17 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d17)
  store %struct.Memory* %call_403d17, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 403d1b	 Bytes: 5
  %loadMem_403d1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d1b = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d1b)
  store %struct.Memory* %call_403d1b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403d20	 Bytes: 4
  %loadMem_403d20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d20 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d20)
  store %struct.Memory* %call_403d20, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rsi	 RIP: 403d24	 Bytes: 4
  %loadMem_403d24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d24 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d24)
  store %struct.Memory* %call_403d24, %struct.Memory** %MEMORY

  ; Code: subsd (%rdx,%rsi,8), %xmm0	 RIP: 403d28	 Bytes: 5
  %loadMem_403d28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d28 = call %struct.Memory* @routine_subsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d28)
  store %struct.Memory* %call_403d28, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x88(%rbp)	 RIP: 403d2d	 Bytes: 8
  %loadMem_403d2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d2d = call %struct.Memory* @routine_movsd__xmm0__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d2d)
  store %struct.Memory* %call_403d2d, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403d35	 Bytes: 4
  %loadMem_403d35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d35 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d35)
  store %struct.Memory* %call_403d35, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 403d39	 Bytes: 3
  %loadMem_403d39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d39 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d39)
  store %struct.Memory* %call_403d39, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 403d3c	 Bytes: 3
  %loadMem_403d3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d3c = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d3c)
  store %struct.Memory* %call_403d3c, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 403d3f	 Bytes: 3
  %loadMem_403d3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d3f = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d3f)
  store %struct.Memory* %call_403d3f, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 403d42	 Bytes: 5
  %loadMem_403d42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d42 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d42)
  store %struct.Memory* %call_403d42, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403d47	 Bytes: 4
  %loadMem_403d47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d47 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d47)
  store %struct.Memory* %call_403d47, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %ecx	 RIP: 403d4b	 Bytes: 3
  %loadMem_403d4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d4b = call %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d4b)
  store %struct.Memory* %call_403d4b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 403d4e	 Bytes: 3
  %loadMem_403d4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d4e = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d4e)
  store %struct.Memory* %call_403d4e, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 403d51	 Bytes: 3
  %loadMem_403d51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d51 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d51)
  store %struct.Memory* %call_403d51, %struct.Memory** %MEMORY

  ; Code: subsd (%rdx,%rsi,8), %xmm0	 RIP: 403d54	 Bytes: 5
  %loadMem_403d54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d54 = call %struct.Memory* @routine_subsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d54)
  store %struct.Memory* %call_403d54, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x90(%rbp)	 RIP: 403d59	 Bytes: 8
  %loadMem_403d59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d59 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x90__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d59)
  store %struct.Memory* %call_403d59, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403d61	 Bytes: 4
  %loadMem_403d61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d61 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d61)
  store %struct.Memory* %call_403d61, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rsi	 RIP: 403d65	 Bytes: 4
  %loadMem_403d65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d65 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d65)
  store %struct.Memory* %call_403d65, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 403d69	 Bytes: 5
  %loadMem_403d69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d69 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d69)
  store %struct.Memory* %call_403d69, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403d6e	 Bytes: 4
  %loadMem_403d6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d6e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d6e)
  store %struct.Memory* %call_403d6e, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rsi	 RIP: 403d72	 Bytes: 4
  %loadMem_403d72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d72 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d72)
  store %struct.Memory* %call_403d72, %struct.Memory** %MEMORY

  ; Code: addsd (%rdx,%rsi,8), %xmm0	 RIP: 403d76	 Bytes: 5
  %loadMem_403d76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d76 = call %struct.Memory* @routine_addsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d76)
  store %struct.Memory* %call_403d76, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x98(%rbp)	 RIP: 403d7b	 Bytes: 8
  %loadMem_403d7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d7b = call %struct.Memory* @routine_movsd__xmm0__MINUS0x98__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d7b)
  store %struct.Memory* %call_403d7b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403d83	 Bytes: 4
  %loadMem_403d83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d83 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d83)
  store %struct.Memory* %call_403d83, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 403d87	 Bytes: 3
  %loadMem_403d87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d87 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d87)
  store %struct.Memory* %call_403d87, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 403d8a	 Bytes: 3
  %loadMem_403d8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d8a = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d8a)
  store %struct.Memory* %call_403d8a, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 403d8d	 Bytes: 3
  %loadMem_403d8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d8d = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d8d)
  store %struct.Memory* %call_403d8d, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 403d90	 Bytes: 5
  %loadMem_403d90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d90 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d90)
  store %struct.Memory* %call_403d90, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403d95	 Bytes: 4
  %loadMem_403d95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d95 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d95)
  store %struct.Memory* %call_403d95, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 403d99	 Bytes: 3
  %loadMem_403d99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d99 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d99)
  store %struct.Memory* %call_403d99, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 403d9c	 Bytes: 3
  %loadMem_403d9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d9c = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d9c)
  store %struct.Memory* %call_403d9c, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 403d9f	 Bytes: 3
  %loadMem_403d9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d9f = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d9f)
  store %struct.Memory* %call_403d9f, %struct.Memory** %MEMORY

  ; Code: addsd (%rdx,%rsi,8), %xmm0	 RIP: 403da2	 Bytes: 5
  %loadMem_403da2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403da2 = call %struct.Memory* @routine_addsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403da2)
  store %struct.Memory* %call_403da2, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0xa0(%rbp)	 RIP: 403da7	 Bytes: 8
  %loadMem_403da7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403da7 = call %struct.Memory* @routine_movsd__xmm0__MINUS0xa0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403da7)
  store %struct.Memory* %call_403da7, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403daf	 Bytes: 4
  %loadMem_403daf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403daf = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403daf)
  store %struct.Memory* %call_403daf, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rsi	 RIP: 403db3	 Bytes: 4
  %loadMem_403db3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403db3 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403db3)
  store %struct.Memory* %call_403db3, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 403db7	 Bytes: 5
  %loadMem_403db7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403db7 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403db7)
  store %struct.Memory* %call_403db7, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403dbc	 Bytes: 4
  %loadMem_403dbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403dbc = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403dbc)
  store %struct.Memory* %call_403dbc, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rsi	 RIP: 403dc0	 Bytes: 4
  %loadMem_403dc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403dc0 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403dc0)
  store %struct.Memory* %call_403dc0, %struct.Memory** %MEMORY

  ; Code: subsd (%rdx,%rsi,8), %xmm0	 RIP: 403dc4	 Bytes: 5
  %loadMem_403dc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403dc4 = call %struct.Memory* @routine_subsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403dc4)
  store %struct.Memory* %call_403dc4, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0xa8(%rbp)	 RIP: 403dc9	 Bytes: 8
  %loadMem_403dc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403dc9 = call %struct.Memory* @routine_movsd__xmm0__MINUS0xa8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403dc9)
  store %struct.Memory* %call_403dc9, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403dd1	 Bytes: 4
  %loadMem_403dd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403dd1 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403dd1)
  store %struct.Memory* %call_403dd1, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 403dd5	 Bytes: 3
  %loadMem_403dd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403dd5 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403dd5)
  store %struct.Memory* %call_403dd5, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 403dd8	 Bytes: 3
  %loadMem_403dd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403dd8 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403dd8)
  store %struct.Memory* %call_403dd8, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 403ddb	 Bytes: 3
  %loadMem_403ddb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ddb = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ddb)
  store %struct.Memory* %call_403ddb, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 403dde	 Bytes: 5
  %loadMem_403dde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403dde = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403dde)
  store %struct.Memory* %call_403dde, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403de3	 Bytes: 4
  %loadMem_403de3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403de3 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403de3)
  store %struct.Memory* %call_403de3, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 403de7	 Bytes: 3
  %loadMem_403de7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403de7 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403de7)
  store %struct.Memory* %call_403de7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 403dea	 Bytes: 3
  %loadMem_403dea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403dea = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403dea)
  store %struct.Memory* %call_403dea, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 403ded	 Bytes: 3
  %loadMem_403ded = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ded = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ded)
  store %struct.Memory* %call_403ded, %struct.Memory** %MEMORY

  ; Code: subsd (%rdx,%rsi,8), %xmm0	 RIP: 403df0	 Bytes: 5
  %loadMem_403df0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403df0 = call %struct.Memory* @routine_subsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403df0)
  store %struct.Memory* %call_403df0, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0xb0(%rbp)	 RIP: 403df5	 Bytes: 8
  %loadMem_403df5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403df5 = call %struct.Memory* @routine_movsd__xmm0__MINUS0xb0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403df5)
  store %struct.Memory* %call_403df5, %struct.Memory** %MEMORY

  ; Code: movsd -0x78(%rbp), %xmm0	 RIP: 403dfd	 Bytes: 5
  %loadMem_403dfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403dfd = call %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403dfd)
  store %struct.Memory* %call_403dfd, %struct.Memory** %MEMORY

  ; Code: addsd -0x98(%rbp), %xmm0	 RIP: 403e02	 Bytes: 8
  %loadMem_403e02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e02 = call %struct.Memory* @routine_addsd_MINUS0x98__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e02)
  store %struct.Memory* %call_403e02, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403e0a	 Bytes: 4
  %loadMem_403e0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e0a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e0a)
  store %struct.Memory* %call_403e0a, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rsi	 RIP: 403e0e	 Bytes: 4
  %loadMem_403e0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e0e = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e0e)
  store %struct.Memory* %call_403e0e, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rdx,%rsi,8)	 RIP: 403e12	 Bytes: 5
  %loadMem_403e12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e12 = call %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e12)
  store %struct.Memory* %call_403e12, %struct.Memory** %MEMORY

  ; Code: movsd -0x80(%rbp), %xmm0	 RIP: 403e17	 Bytes: 5
  %loadMem_403e17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e17 = call %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e17)
  store %struct.Memory* %call_403e17, %struct.Memory** %MEMORY

  ; Code: addsd -0xa0(%rbp), %xmm0	 RIP: 403e1c	 Bytes: 8
  %loadMem_403e1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e1c = call %struct.Memory* @routine_addsd_MINUS0xa0__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e1c)
  store %struct.Memory* %call_403e1c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403e24	 Bytes: 4
  %loadMem_403e24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e24 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e24)
  store %struct.Memory* %call_403e24, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 403e28	 Bytes: 3
  %loadMem_403e28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e28 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e28)
  store %struct.Memory* %call_403e28, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 403e2b	 Bytes: 3
  %loadMem_403e2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e2b = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e2b)
  store %struct.Memory* %call_403e2b, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 403e2e	 Bytes: 3
  %loadMem_403e2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e2e = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e2e)
  store %struct.Memory* %call_403e2e, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rdx,%rsi,8)	 RIP: 403e31	 Bytes: 5
  %loadMem_403e31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e31 = call %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e31)
  store %struct.Memory* %call_403e31, %struct.Memory** %MEMORY

  ; Code: movsd -0x98(%rbp), %xmm0	 RIP: 403e36	 Bytes: 8
  %loadMem_403e36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e36 = call %struct.Memory* @routine_movsd_MINUS0x98__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e36)
  store %struct.Memory* %call_403e36, %struct.Memory** %MEMORY

  ; Code: movsd -0x78(%rbp), %xmm1	 RIP: 403e3e	 Bytes: 5
  %loadMem_403e3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e3e = call %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e3e)
  store %struct.Memory* %call_403e3e, %struct.Memory** %MEMORY

  ; Code: subsd %xmm0, %xmm1	 RIP: 403e43	 Bytes: 4
  %loadMem_403e43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e43 = call %struct.Memory* @routine_subsd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e43)
  store %struct.Memory* %call_403e43, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x78(%rbp)	 RIP: 403e47	 Bytes: 5
  %loadMem_403e47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e47 = call %struct.Memory* @routine_movsd__xmm1__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e47)
  store %struct.Memory* %call_403e47, %struct.Memory** %MEMORY

  ; Code: movsd -0xa0(%rbp), %xmm0	 RIP: 403e4c	 Bytes: 8
  %loadMem_403e4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e4c = call %struct.Memory* @routine_movsd_MINUS0xa0__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e4c)
  store %struct.Memory* %call_403e4c, %struct.Memory** %MEMORY

  ; Code: movsd -0x80(%rbp), %xmm1	 RIP: 403e54	 Bytes: 5
  %loadMem_403e54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e54 = call %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e54)
  store %struct.Memory* %call_403e54, %struct.Memory** %MEMORY

  ; Code: subsd %xmm0, %xmm1	 RIP: 403e59	 Bytes: 4
  %loadMem_403e59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e59 = call %struct.Memory* @routine_subsd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e59)
  store %struct.Memory* %call_403e59, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x80(%rbp)	 RIP: 403e5d	 Bytes: 5
  %loadMem_403e5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e5d = call %struct.Memory* @routine_movsd__xmm1__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e5d)
  store %struct.Memory* %call_403e5d, %struct.Memory** %MEMORY

  ; Code: movsd -0x60(%rbp), %xmm0	 RIP: 403e62	 Bytes: 5
  %loadMem_403e62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e62 = call %struct.Memory* @routine_movsd_MINUS0x60__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e62)
  store %struct.Memory* %call_403e62, %struct.Memory** %MEMORY

  ; Code: movq %xmm0, %rdx	 RIP: 403e67	 Bytes: 5
  %loadMem_403e67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e67 = call %struct.Memory* @routine_movq__xmm0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e67)
  store %struct.Memory* %call_403e67, %struct.Memory** %MEMORY

  ; Code: xorq %rax, %rdx	 RIP: 403e6c	 Bytes: 3
  %loadMem_403e6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e6c = call %struct.Memory* @routine_xorq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e6c)
  store %struct.Memory* %call_403e6c, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %xmm0	 RIP: 403e6f	 Bytes: 5
  %loadMem_403e6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e6f = call %struct.Memory* @routine_movq__rdx___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e6f)
  store %struct.Memory* %call_403e6f, %struct.Memory** %MEMORY

  ; Code: mulsd -0x78(%rbp), %xmm0	 RIP: 403e74	 Bytes: 5
  %loadMem_403e74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e74 = call %struct.Memory* @routine_mulsd_MINUS0x78__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e74)
  store %struct.Memory* %call_403e74, %struct.Memory** %MEMORY

  ; Code: movsd -0x58(%rbp), %xmm1	 RIP: 403e79	 Bytes: 5
  %loadMem_403e79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e79 = call %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e79)
  store %struct.Memory* %call_403e79, %struct.Memory** %MEMORY

  ; Code: mulsd -0x80(%rbp), %xmm1	 RIP: 403e7e	 Bytes: 5
  %loadMem_403e7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e7e = call %struct.Memory* @routine_mulsd_MINUS0x80__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e7e)
  store %struct.Memory* %call_403e7e, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 403e83	 Bytes: 4
  %loadMem_403e83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e83 = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e83)
  store %struct.Memory* %call_403e83, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403e87	 Bytes: 4
  %loadMem_403e87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e87 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e87)
  store %struct.Memory* %call_403e87, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rsi	 RIP: 403e8b	 Bytes: 4
  %loadMem_403e8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e8b = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e8b)
  store %struct.Memory* %call_403e8b, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rdx,%rsi,8)	 RIP: 403e8f	 Bytes: 5
  %loadMem_403e8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e8f = call %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e8f)
  store %struct.Memory* %call_403e8f, %struct.Memory** %MEMORY

  ; Code: movsd -0x60(%rbp), %xmm0	 RIP: 403e94	 Bytes: 5
  %loadMem_403e94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e94 = call %struct.Memory* @routine_movsd_MINUS0x60__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e94)
  store %struct.Memory* %call_403e94, %struct.Memory** %MEMORY

  ; Code: movq %xmm0, %rdx	 RIP: 403e99	 Bytes: 5
  %loadMem_403e99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e99 = call %struct.Memory* @routine_movq__xmm0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e99)
  store %struct.Memory* %call_403e99, %struct.Memory** %MEMORY

  ; Code: xorq %rax, %rdx	 RIP: 403e9e	 Bytes: 3
  %loadMem_403e9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e9e = call %struct.Memory* @routine_xorq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e9e)
  store %struct.Memory* %call_403e9e, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %xmm0	 RIP: 403ea1	 Bytes: 5
  %loadMem_403ea1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ea1 = call %struct.Memory* @routine_movq__rdx___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ea1)
  store %struct.Memory* %call_403ea1, %struct.Memory** %MEMORY

  ; Code: mulsd -0x80(%rbp), %xmm0	 RIP: 403ea6	 Bytes: 5
  %loadMem_403ea6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ea6 = call %struct.Memory* @routine_mulsd_MINUS0x80__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ea6)
  store %struct.Memory* %call_403ea6, %struct.Memory** %MEMORY

  ; Code: movsd -0x58(%rbp), %xmm1	 RIP: 403eab	 Bytes: 5
  %loadMem_403eab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403eab = call %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403eab)
  store %struct.Memory* %call_403eab, %struct.Memory** %MEMORY

  ; Code: mulsd -0x78(%rbp), %xmm1	 RIP: 403eb0	 Bytes: 5
  %loadMem_403eb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403eb0 = call %struct.Memory* @routine_mulsd_MINUS0x78__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403eb0)
  store %struct.Memory* %call_403eb0, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 403eb5	 Bytes: 4
  %loadMem_403eb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403eb5 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403eb5)
  store %struct.Memory* %call_403eb5, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 403eb9	 Bytes: 4
  %loadMem_403eb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403eb9 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403eb9)
  store %struct.Memory* %call_403eb9, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 403ebd	 Bytes: 3
  %loadMem_403ebd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ebd = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ebd)
  store %struct.Memory* %call_403ebd, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 403ec0	 Bytes: 3
  %loadMem_403ec0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ec0 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ec0)
  store %struct.Memory* %call_403ec0, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 403ec3	 Bytes: 3
  %loadMem_403ec3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ec3 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ec3)
  store %struct.Memory* %call_403ec3, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rdx,8)	 RIP: 403ec6	 Bytes: 5
  %loadMem_403ec6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ec6 = call %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ec6)
  store %struct.Memory* %call_403ec6, %struct.Memory** %MEMORY

  ; Code: movsd -0x88(%rbp), %xmm0	 RIP: 403ecb	 Bytes: 8
  %loadMem_403ecb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ecb = call %struct.Memory* @routine_movsd_MINUS0x88__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ecb)
  store %struct.Memory* %call_403ecb, %struct.Memory** %MEMORY

  ; Code: subsd -0xb0(%rbp), %xmm0	 RIP: 403ed3	 Bytes: 8
  %loadMem_403ed3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ed3 = call %struct.Memory* @routine_subsd_MINUS0xb0__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ed3)
  store %struct.Memory* %call_403ed3, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x78(%rbp)	 RIP: 403edb	 Bytes: 5
  %loadMem_403edb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403edb = call %struct.Memory* @routine_movsd__xmm0__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403edb)
  store %struct.Memory* %call_403edb, %struct.Memory** %MEMORY

  ; Code: movsd -0x90(%rbp), %xmm0	 RIP: 403ee0	 Bytes: 8
  %loadMem_403ee0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ee0 = call %struct.Memory* @routine_movsd_MINUS0x90__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ee0)
  store %struct.Memory* %call_403ee0, %struct.Memory** %MEMORY

  ; Code: addsd -0xa8(%rbp), %xmm0	 RIP: 403ee8	 Bytes: 8
  %loadMem_403ee8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ee8 = call %struct.Memory* @routine_addsd_MINUS0xa8__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ee8)
  store %struct.Memory* %call_403ee8, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x80(%rbp)	 RIP: 403ef0	 Bytes: 5
  %loadMem_403ef0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ef0 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ef0)
  store %struct.Memory* %call_403ef0, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm0	 RIP: 403ef5	 Bytes: 5
  %loadMem_403ef5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ef5 = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ef5)
  store %struct.Memory* %call_403ef5, %struct.Memory** %MEMORY

  ; Code: mulsd -0x78(%rbp), %xmm0	 RIP: 403efa	 Bytes: 5
  %loadMem_403efa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403efa = call %struct.Memory* @routine_mulsd_MINUS0x78__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403efa)
  store %struct.Memory* %call_403efa, %struct.Memory** %MEMORY

  ; Code: movsd -0x50(%rbp), %xmm1	 RIP: 403eff	 Bytes: 5
  %loadMem_403eff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403eff = call %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403eff)
  store %struct.Memory* %call_403eff, %struct.Memory** %MEMORY

  ; Code: mulsd -0x80(%rbp), %xmm1	 RIP: 403f04	 Bytes: 5
  %loadMem_403f04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f04 = call %struct.Memory* @routine_mulsd_MINUS0x80__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f04)
  store %struct.Memory* %call_403f04, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 403f09	 Bytes: 4
  %loadMem_403f09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f09 = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f09)
  store %struct.Memory* %call_403f09, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 403f0d	 Bytes: 4
  %loadMem_403f0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f0d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f0d)
  store %struct.Memory* %call_403f0d, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 403f11	 Bytes: 4
  %loadMem_403f11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f11 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f11)
  store %struct.Memory* %call_403f11, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rdx,8)	 RIP: 403f15	 Bytes: 5
  %loadMem_403f15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f15 = call %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f15)
  store %struct.Memory* %call_403f15, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm0	 RIP: 403f1a	 Bytes: 5
  %loadMem_403f1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f1a = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f1a)
  store %struct.Memory* %call_403f1a, %struct.Memory** %MEMORY

  ; Code: mulsd -0x80(%rbp), %xmm0	 RIP: 403f1f	 Bytes: 5
  %loadMem_403f1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f1f = call %struct.Memory* @routine_mulsd_MINUS0x80__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f1f)
  store %struct.Memory* %call_403f1f, %struct.Memory** %MEMORY

  ; Code: movsd -0x50(%rbp), %xmm1	 RIP: 403f24	 Bytes: 5
  %loadMem_403f24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f24 = call %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f24)
  store %struct.Memory* %call_403f24, %struct.Memory** %MEMORY

  ; Code: mulsd -0x78(%rbp), %xmm1	 RIP: 403f29	 Bytes: 5
  %loadMem_403f29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f29 = call %struct.Memory* @routine_mulsd_MINUS0x78__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f29)
  store %struct.Memory* %call_403f29, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 403f2e	 Bytes: 4
  %loadMem_403f2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f2e = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f2e)
  store %struct.Memory* %call_403f2e, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 403f32	 Bytes: 4
  %loadMem_403f32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f32 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f32)
  store %struct.Memory* %call_403f32, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %ecx	 RIP: 403f36	 Bytes: 3
  %loadMem_403f36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f36 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f36)
  store %struct.Memory* %call_403f36, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 403f39	 Bytes: 3
  %loadMem_403f39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f39 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f39)
  store %struct.Memory* %call_403f39, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 403f3c	 Bytes: 3
  %loadMem_403f3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f3c = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f3c)
  store %struct.Memory* %call_403f3c, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rdx,8)	 RIP: 403f3f	 Bytes: 5
  %loadMem_403f3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f3f = call %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f3f)
  store %struct.Memory* %call_403f3f, %struct.Memory** %MEMORY

  ; Code: movsd -0x88(%rbp), %xmm0	 RIP: 403f44	 Bytes: 8
  %loadMem_403f44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f44 = call %struct.Memory* @routine_movsd_MINUS0x88__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f44)
  store %struct.Memory* %call_403f44, %struct.Memory** %MEMORY

  ; Code: addsd -0xb0(%rbp), %xmm0	 RIP: 403f4c	 Bytes: 8
  %loadMem_403f4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f4c = call %struct.Memory* @routine_addsd_MINUS0xb0__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f4c)
  store %struct.Memory* %call_403f4c, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x78(%rbp)	 RIP: 403f54	 Bytes: 5
  %loadMem_403f54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f54 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f54)
  store %struct.Memory* %call_403f54, %struct.Memory** %MEMORY

  ; Code: movsd -0x90(%rbp), %xmm0	 RIP: 403f59	 Bytes: 8
  %loadMem_403f59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f59 = call %struct.Memory* @routine_movsd_MINUS0x90__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f59)
  store %struct.Memory* %call_403f59, %struct.Memory** %MEMORY

  ; Code: subsd -0xa8(%rbp), %xmm0	 RIP: 403f61	 Bytes: 8
  %loadMem_403f61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f61 = call %struct.Memory* @routine_subsd_MINUS0xa8__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f61)
  store %struct.Memory* %call_403f61, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x80(%rbp)	 RIP: 403f69	 Bytes: 5
  %loadMem_403f69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f69 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f69)
  store %struct.Memory* %call_403f69, %struct.Memory** %MEMORY

  ; Code: movsd -0x68(%rbp), %xmm0	 RIP: 403f6e	 Bytes: 5
  %loadMem_403f6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f6e = call %struct.Memory* @routine_movsd_MINUS0x68__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f6e)
  store %struct.Memory* %call_403f6e, %struct.Memory** %MEMORY

  ; Code: mulsd -0x78(%rbp), %xmm0	 RIP: 403f73	 Bytes: 5
  %loadMem_403f73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f73 = call %struct.Memory* @routine_mulsd_MINUS0x78__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f73)
  store %struct.Memory* %call_403f73, %struct.Memory** %MEMORY

  ; Code: movsd -0x70(%rbp), %xmm1	 RIP: 403f78	 Bytes: 5
  %loadMem_403f78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f78 = call %struct.Memory* @routine_movsd_MINUS0x70__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f78)
  store %struct.Memory* %call_403f78, %struct.Memory** %MEMORY

  ; Code: mulsd -0x80(%rbp), %xmm1	 RIP: 403f7d	 Bytes: 5
  %loadMem_403f7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f7d = call %struct.Memory* @routine_mulsd_MINUS0x80__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f7d)
  store %struct.Memory* %call_403f7d, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 403f82	 Bytes: 4
  %loadMem_403f82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f82 = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f82)
  store %struct.Memory* %call_403f82, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 403f86	 Bytes: 4
  %loadMem_403f86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f86 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f86)
  store %struct.Memory* %call_403f86, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 403f8a	 Bytes: 4
  %loadMem_403f8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f8a = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f8a)
  store %struct.Memory* %call_403f8a, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rdx,8)	 RIP: 403f8e	 Bytes: 5
  %loadMem_403f8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f8e = call %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f8e)
  store %struct.Memory* %call_403f8e, %struct.Memory** %MEMORY

  ; Code: movsd -0x68(%rbp), %xmm0	 RIP: 403f93	 Bytes: 5
  %loadMem_403f93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f93 = call %struct.Memory* @routine_movsd_MINUS0x68__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f93)
  store %struct.Memory* %call_403f93, %struct.Memory** %MEMORY

  ; Code: mulsd -0x80(%rbp), %xmm0	 RIP: 403f98	 Bytes: 5
  %loadMem_403f98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f98 = call %struct.Memory* @routine_mulsd_MINUS0x80__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f98)
  store %struct.Memory* %call_403f98, %struct.Memory** %MEMORY

  ; Code: movsd -0x70(%rbp), %xmm1	 RIP: 403f9d	 Bytes: 5
  %loadMem_403f9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f9d = call %struct.Memory* @routine_movsd_MINUS0x70__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f9d)
  store %struct.Memory* %call_403f9d, %struct.Memory** %MEMORY

  ; Code: mulsd -0x78(%rbp), %xmm1	 RIP: 403fa2	 Bytes: 5
  %loadMem_403fa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fa2 = call %struct.Memory* @routine_mulsd_MINUS0x78__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fa2)
  store %struct.Memory* %call_403fa2, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 403fa7	 Bytes: 4
  %loadMem_403fa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fa7 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fa7)
  store %struct.Memory* %call_403fa7, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 403fab	 Bytes: 4
  %loadMem_403fab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fab = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fab)
  store %struct.Memory* %call_403fab, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 403faf	 Bytes: 3
  %loadMem_403faf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403faf = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403faf)
  store %struct.Memory* %call_403faf, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 403fb2	 Bytes: 3
  %loadMem_403fb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fb2 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fb2)
  store %struct.Memory* %call_403fb2, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 403fb5	 Bytes: 3
  %loadMem_403fb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fb5 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fb5)
  store %struct.Memory* %call_403fb5, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rdx,8)	 RIP: 403fb8	 Bytes: 5
  %loadMem_403fb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fb8 = call %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fb8)
  store %struct.Memory* %call_403fb8, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 403fbd	 Bytes: 3
  %loadMem_403fbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fbd = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fbd)
  store %struct.Memory* %call_403fbd, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %eax	 RIP: 403fc0	 Bytes: 3
  %loadMem_403fc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fc0 = call %struct.Memory* @routine_addl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fc0)
  store %struct.Memory* %call_403fc0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 403fc3	 Bytes: 3
  %loadMem_403fc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fc3 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fc3)
  store %struct.Memory* %call_403fc3, %struct.Memory** %MEMORY

  ; Code: jmpq .L_403c90	 RIP: 403fc6	 Bytes: 5
  %loadMem_403fc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fc6 = call %struct.Memory* @routine_jmpq_.L_403c90(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fc6, i64 -822, i64 5)
  store %struct.Memory* %call_403fc6, %struct.Memory** %MEMORY

  br label %block_.L_403c90

  ; Code: .L_403fcb:	 RIP: 403fcb	 Bytes: 0
block_.L_403fcb:

  ; Code: jmpq .L_403fd0	 RIP: 403fcb	 Bytes: 5
  %loadMem_403fcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fcb = call %struct.Memory* @routine_jmpq_.L_403fd0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fcb, i64 5, i64 5)
  store %struct.Memory* %call_403fcb, %struct.Memory** %MEMORY

  br label %block_.L_403fd0

  ; Code: .L_403fd0:	 RIP: 403fd0	 Bytes: 0
block_.L_403fd0:

  ; Code: movl -0x3c(%rbp), %eax	 RIP: 403fd0	 Bytes: 3
  %loadMem_403fd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fd0 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fd0)
  store %struct.Memory* %call_403fd0, %struct.Memory** %MEMORY

  ; Code: addl -0x2c(%rbp), %eax	 RIP: 403fd3	 Bytes: 3
  %loadMem_403fd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fd3 = call %struct.Memory* @routine_addl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fd3)
  store %struct.Memory* %call_403fd3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 403fd6	 Bytes: 3
  %loadMem_403fd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fd6 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fd6)
  store %struct.Memory* %call_403fd6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_403863	 RIP: 403fd9	 Bytes: 5
  %loadMem_403fd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fd9 = call %struct.Memory* @routine_jmpq_.L_403863(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fd9, i64 -1910, i64 5)
  store %struct.Memory* %call_403fd9, %struct.Memory** %MEMORY

  br label %block_.L_403863

  ; Code: .L_403fde:	 RIP: 403fde	 Bytes: 0
block_.L_403fde:

  ; Code: addq $0x30, %rsp	 RIP: 403fde	 Bytes: 4
  %loadMem_403fde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fde = call %struct.Memory* @routine_addq__0x30___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fde)
  store %struct.Memory* %call_403fde, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 403fe2	 Bytes: 1
  %loadMem_403fe2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fe2 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fe2)
  store %struct.Memory* %call_403fe2, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 403fe3	 Bytes: 1
  %loadMem_403fe3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fe3 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fe3)
  store %struct.Memory* %call_403fe3, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_403fe3
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4PUSHI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64) #0 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 13, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = add i64 %5, -8
  %7 = inttoptr i64 %6 to i64*
  store i64 %2, i64* %7
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_pushq__rbp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RBP
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 1
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4PUSHI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %9)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rsp___rbp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 13
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RBP, i64 %12)
  ret %struct.Memory* %15
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = sub i64 %3, %4
  store i64 %6, i64* %2, align 8
  %7 = icmp ult i64 %3, %4
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = trunc i64 %6 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11) #22
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i64 %4, %3
  %18 = xor i64 %17, %6
  %19 = lshr i64 %18, 4
  %20 = trunc i64 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i64 %6, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i64 %6, 63
  %27 = trunc i64 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %3, 63
  %30 = lshr i64 %4, 63
  %31 = xor i64 %30, %29
  %32 = xor i64 %26, %29
  %33 = add   i64 %32, %31
  %34 = icmp eq i64 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_subq__0x30___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 13
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSP = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RSP
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 48)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDI = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 4
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__esi__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ESI = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 8
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rdx__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rcx__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = trunc i64 %4 to i5
  switch i5 %6, label %13 [
    i5 0, label %45
    i5 1, label %7
  ]

; <label>:7:                                      ; preds = %5
  %8 = trunc i64 %3 to i32
  %9 = shl i32 %8, 1
  %10 = icmp slt i32 %8, 0
  %11 = icmp slt i32 %9, 0
  %12 = xor i1 %10, %11
  br label %23

; <label>:13:                                     ; preds = %5
  %14 = and i64 %4, 31
  %15 = add   i64 %14, 4294967295
  %16 = and i64 %3, 4294967295
  %17 = and i64 %15, 4294967295
  %18 = shl i64 %16, %17
  %19 = trunc i64 %18 to i32
  %20 = icmp slt i32 %19, 0
  %21 = icmp ne i8 0, 0
  %22 = shl i32 %19, 1
  br label %23

; <label>:23:                                     ; preds = %13, %7
  %24 = phi i1 [ %10, %7 ], [ %20, %13 ]
  %25 = phi i1 [ %12, %7 ], [ %21, %13 ]
  %26 = phi i32 [ %9, %7 ], [ %22, %13 ]
  %27 = zext i32 %26 to i64
  store i64 %27, i64* %2, align 8
  %28 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  %29 = zext i1 %24 to i8
  store i8 %29, i8* %28, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  %31 = and i32 %26, 254
  %32 = tail call i32 @llvm.ctpop.i32(i32 %31) #22
  %33 = trunc i32 %32 to i8
  %34 = and i8 %33, 1
  %35 = xor i8 %34, 1
  store i8 %35, i8* %30, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %38 = icmp eq i32 %26, 0
  %39 = zext i1 %38 to i8
  store i8 %39, i8* %37, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  %41 = lshr i32 %26, 31
  %42 = trunc i32 %41 to i8
  store i8 %42, i8* %40, align 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  %44 = zext i1 %25 to i8
  store i8 %44, i8* %43, align 1
  br label %45

; <label>:45:                                     ; preds = %23, %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_shll__0x2___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RSI
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 2)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__esi__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ESI = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 56
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RBP
  %10 = sub i64 %9, 28
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 {
  %5 = trunc i64 %2 to i32
  %6 = inttoptr i64 %3 to i32*
  %7 = load i32, i32* %6
  %8 = sub i32 %5, %7
  %9 = icmp ult i32 %5, %7
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %8, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12) #22
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %5
  %19 = xor i32 %18, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %8, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %8, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %5, 31
  %31 = lshr i32 %7, 31
  %32 = xor i32 %31, %30
  %33 = xor i32 %27, %30
  %34 = add   i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RBP
  %15 = sub i64 %14, 8
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JNLEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #2 {
  %6 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  %7 = load i8, i8* %6, align 1
  %8 = icmp ne i8 %7, 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  %12 = xor i1 %8, %11
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i8
  store i8 %14, i8* %2, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %16 = select i1 %12, i64 %4, i64 %3
  store i64 %16, i64* %15, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jge_.L_40357d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNLEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = trunc i64 %3 to i32
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7
  %9 = add i32 %8, %6
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %2, align 8
  %11 = icmp ult i32 %9, %6
  %12 = icmp ult i32 %9, %8
  %13 = or i1 %11, %12
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %9, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16) #22
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %8, %6
  %23 = xor i32 %22, %9
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %9, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %9, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %6, 31
  %35 = lshr i32 %8, 31
  %36 = xor i32 %31, %34
  %37 = xor i32 %31, %35
  %38 = add   i32 %36, %37
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_addl_MINUS0x8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 32
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 36
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 40
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to double*
  %6 = load double, double* %5
  %7 = bitcast i8* %2 to double*
  store double %6, double* %7, align 1
  %8 = getelementptr inbounds i8, i8* %2, i64 8
  %9 = bitcast i8* %8 to double*
  store double 0.000000e+00, double* %9, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %14, i64 %18)
  ret %struct.Memory* %21
}




define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i64) #0 {
  %6 = bitcast i8* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to double*
  %12 = load double, double* %11
  %13 = fadd double %7, %12
  %14 = bitcast i8* %2 to double*
  store double %13, double* %14, align 1
  %15 = getelementptr inbounds i8, i8* %2, i64 8
  %16 = bitcast i8* %15 to i64*
  store i64 %10, i64* %16, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_addsd___rcx__rdx_8____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %RDX
  %18 = mul i64 %17, 8
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %14, i8* %15, i64 %19)
  ret %struct.Memory* %22
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i8* nocapture readonly) #7 {
  %5 = bitcast i8* %3 to double*
  %6 = load double, double* %5, align 1
  %7 = inttoptr i64 %2 to double*
  store double %6, double* %7
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x78__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 120
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}





define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = trunc i64 %3 to i32
  %7 = trunc i64 %4 to i32
  %8 = add i32 %7, %6
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %2, align 8
  %10 = icmp ult i32 %8, %6
  %11 = icmp ult i32 %8, %7
  %12 = or i1 %10, %11
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %8, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15) #22
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %4, %3
  %22 = trunc i64 %21 to i32
  %23 = xor i32 %22, %8
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %8, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %8, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %6, 31
  %35 = lshr i32 %7, 31
  %36 = xor i32 %31, %34
  %37 = xor i32 %31, %35
  %38 = add   i32 %36, %37
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_addl__0x1___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RAX
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 1)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq__eax___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}














define %struct.Memory* @routine_movsd__xmm0__MINUS0x80__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 128
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}











define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i64) #0 {
  %6 = bitcast i8* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to double*
  %12 = load double, double* %11
  %13 = fsub double %7, %12
  %14 = bitcast i8* %2 to double*
  store double %13, double* %14, align 1
  %15 = getelementptr inbounds i8, i8* %2, i64 8
  %16 = bitcast i8* %15 to i64*
  store i64 %10, i64* %16, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_subsd___rcx__rdx_8____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %RDX
  %18 = mul i64 %17, 8
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %14, i8* %15, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movsd__xmm0__MINUS0x88__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 136
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}






















define %struct.Memory* @routine_movsd__xmm0__MINUS0x90__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 144
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movsd__xmm0__MINUS0x98__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 152
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}














define %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movsd__xmm0__MINUS0xa0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 160
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}














define %struct.Memory* @routine_movsd__xmm0__MINUS0xa8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 168
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}






















define %struct.Memory* @routine_movsd__xmm0__MINUS0xb0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 176
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 120
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addsd_MINUS0x98__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 152
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %RDX
  %16 = mul i64 %15, 8
  %17 = add i64 %16, %14
  %18 = bitcast %union.vec128_t* %XMM0 to i8*
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %17, i8* %18)
  ret %struct.Memory* %21
}


define %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addsd_MINUS0xa0__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 160
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}














define %struct.Memory* @routine_subsd_MINUS0x98__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 152
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}










define %struct.Memory* @routine_subsd_MINUS0xa0__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 160
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}












define %struct.Memory* @routine_movsd_MINUS0x88__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_subsd_MINUS0xb0__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 176
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_movsd_MINUS0x90__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addsd_MINUS0xa8__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 168
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}














define %struct.Memory* @routine_addsd_MINUS0xb0__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 176
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}










define %struct.Memory* @routine_subsd_MINUS0xa8__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 168
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}














define %struct.Memory* @routine_addl__0x2___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RAX
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 2)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 28
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_403326(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd_0x10__rax____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 72
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x38__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ECX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 28
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x38__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 56
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 {
  %5 = trunc i64 %2 to i32
  %6 = trunc i64 %3 to i32
  %7 = sub i32 %5, %6
  %8 = icmp ult i32 %5, %6
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = and i32 %7, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11) #22
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i64 %3, %2
  %18 = trunc i64 %17 to i32
  %19 = xor i32 %18, %7
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %7, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %7, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %5, 31
  %31 = lshr i32 %6, 31
  %32 = xor i32 %31, %30
  %33 = xor i32 %27, %30
  %34 = add   i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cmpl__ecx___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %ECX = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_40384d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNLEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}




























































































































































































define %struct.Memory* @routine_movsd_MINUS0xa0__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 160
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_subsd_MINUS0x80__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 128
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}


































define %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 120
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_subsd_MINUS0x80__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 128
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = bitcast i8* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  %11 = bitcast i8* %4 to double*
  %12 = load double, double* %11, align 1
  %13 = fmul double %7, %12
  %14 = bitcast i8* %2 to double*
  store double %13, double* %14, align 1
  %15 = getelementptr inbounds i8, i8* %2, i64 8
  %16 = bitcast i8* %15 to i64*
  store i64 %10, i64* %16, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %union.vec128_t* %XMM1 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}












define %struct.Memory* @routine_addsd_MINUS0x80__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 128
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}














define %struct.Memory* @routine_movsd_MINUS0xb0__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 176
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addsd_MINUS0x88__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 136
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movsd_MINUS0xa8__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_subsd_MINUS0x90__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 144
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_subsd_MINUS0x78__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 120
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}














define %struct.Memory* @routine_addsd_MINUS0x78__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 120
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}




















define %struct.Memory* @routine_jmpq_.L_403591(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RBP
  %10 = sub i64 %9, 48
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_shll__0x1___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RAX
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 60
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 44
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RBP
  %15 = sub i64 %14, 4
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_403fde(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNLEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movsd_0x849__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = ptrtoint %G_0x849__rip__4208759__type* @G_0x849__rip__4208759_ to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 48
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 52
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd___rcx__rdx_8____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %14, i64 %18)
  ret %struct.Memory* %21
}


define %struct.Memory* @routine_movsd__xmm1__MINUS0x58__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 88
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_movsd__xmm1__MINUS0x60__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 96
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movsd__xmm1__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 72
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movsd__xmm1__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 80
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L6MOVxPSI3VnWI8vec128_tE2VnIS2_EEEP6MemoryS7_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly) #0 {
  %5 = bitcast i8* %3 to <2 x i32>*
  %6 = load <2 x i32>, <2 x i32>* %5, align 1
  %7 = getelementptr inbounds i8, i8* %3, i64 8
  %8 = bitcast i8* %7 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = extractelement <2 x i32> %6, i32 0
  %11 = bitcast i8* %2 to i32*
  store i32 %10, i32* %11, align 1
  %12 = extractelement <2 x i32> %6, i32 1
  %13 = getelementptr inbounds i8, i8* %2, i64 4
  %14 = bitcast i8* %13 to i32*
  store i32 %12, i32* %14, align 1
  %15 = extractelement <2 x i32> %9, i32 0
  %16 = getelementptr inbounds i8, i8* %2, i64 8
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %9, i32 1
  %19 = getelementptr inbounds i8, i8* %2, i64 12
  %20 = bitcast i8* %19 to i32*
  store i32 %18, i32* %20, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movaps__xmm0___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6MOVxPSI3VnWI8vec128_tE2VnIS2_EEEP6MemoryS7_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i64) #0 {
  %6 = bitcast i8* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to double*
  %12 = load double, double* %11
  %13 = fmul double %7, %12
  %14 = bitcast i8* %2 to double*
  store double %13, double* %14, align 1
  %15 = getelementptr inbounds i8, i8* %2, i64 8
  %16 = bitcast i8* %15 to i64*
  store i64 %10, i64* %16, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_mulsd_MINUS0x60__rbp____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 96
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_mulsd_MINUS0x50__rbp____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 80
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = bitcast i8* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  %11 = bitcast i8* %4 to double*
  %12 = load double, double* %11, align 1
  %13 = fsub double %7, %12
  %14 = bitcast i8* %2 to double*
  store double %13, double* %14, align 1
  %15 = getelementptr inbounds i8, i8* %2, i64 8
  %16 = bitcast i8* %15 to i64*
  store i64 %10, i64* %16, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_subsd__xmm2___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %union.vec128_t* %XMM2 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movsd__xmm1__MINUS0x68__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 104
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_mulsd_MINUS0x60__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 96
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_mulsd_MINUS0x48__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 72
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_subsd_MINUS0x50__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 80
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movsd__xmm0__MINUS0x70__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 112
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_addl_MINUS0x2c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 44
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jge_.L_403c22(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNLEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}




























































































































































































define %struct.Memory* @routine_movsd_MINUS0x98__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_subsd__xmm0___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movsd__xmm1__MINUS0x78__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 120
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movsd__xmm1__MINUS0x80__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 128
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_mulsd_MINUS0x78__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 120
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movsd_MINUS0x60__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_mulsd_MINUS0x80__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 128
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %union.vec128_t* %XMM1 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}










define %struct.Memory* @routine_mulsd_MINUS0x80__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 128
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_mulsd_MINUS0x78__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 120
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = bitcast i8* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  %11 = bitcast i8* %4 to double*
  %12 = load double, double* %11, align 1
  %13 = fadd double %7, %12
  %14 = bitcast i8* %2 to double*
  store double %13, double* %14, align 1
  %15 = getelementptr inbounds i8, i8* %2, i64 8
  %16 = bitcast i8* %15 to i64*
  store i64 %10, i64* %16, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %union.vec128_t* %XMM1 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}




























define %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}












































define %struct.Memory* @routine_movsd_MINUS0x68__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movsd_MINUS0x70__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}






































define %struct.Memory* @routine_jmpq_.L_403910(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movsd_0x496__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = ptrtoint %G_0x496__rip__4209706__type* @G_0x496__rip__4209706_ to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl__0x2___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RCX
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 2)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movslq__ecx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ECX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd___rax__rdx_8____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %14, i64 %18)
  ret %struct.Memory* %21
}








define %struct.Memory* @routine_addl__0x3___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RCX
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 3)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_mulsd_MINUS0x58__rbp____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 88
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_mulsd_MINUS0x58__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 88
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_movl_MINUS0x2c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x38__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 56
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = trunc i64 %3 to i32
  %7 = trunc i64 %4 to i32
  %8 = add i32 %7, %6
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %2, align 8
  %10 = icmp ult i32 %8, %6
  %11 = icmp ult i32 %8, %7
  %12 = or i1 %10, %11
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %8, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15) #22
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %4, %3
  %22 = trunc i64 %21 to i32
  %23 = xor i32 %22, %8
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %8, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %8, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %6, 31
  %35 = lshr i32 %7, 31
  %36 = xor i32 %31, %34
  %37 = xor i32 %31, %35
  %38 = add   i32 %36, %37
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_addl__edx___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = load i32, i32* %EDX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jge_.L_403fcb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNLEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x8000000000000000___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 -9223372036854775808)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x8__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ECX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 32
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__ecx__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ECX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 36
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ECX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 40
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RSI
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %14, i64 %18)
  ret %struct.Memory* %21
}




define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addsd___rdx__rsi_8____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %16 = load i64, i64* %RDX
  %17 = load i64, i64* %RSI
  %18 = mul i64 %17, 8
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %14, i8* %15, i64 %19)
  ret %struct.Memory* %22
}








define %struct.Memory* @routine_addl__0x1___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RCX
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movslq__ecx___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ECX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


























define %struct.Memory* @routine_subsd___rdx__rsi_8____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %16 = load i64, i64* %RDX
  %17 = load i64, i64* %RSI
  %18 = mul i64 %17, 8
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %14, i8* %15, i64 %19)
  ret %struct.Memory* %22
}




























define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


















define %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






















































define %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %RSI
  %16 = mul i64 %15, 8
  %17 = add i64 %16, %14
  %18 = bitcast %union.vec128_t* %XMM0 to i8*
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %17, i8* %18)
  ret %struct.Memory* %21
}
































define %struct.Memory* @routine_movsd_MINUS0x60__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4MOVQI4RVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i8* nocapture readonly) #0 {
  %5 = bitcast i8* %3 to i64*
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__xmm0___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 5
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4MOVQI4RVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i8* %11)
  ret %struct.Memory* %14
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = xor i64 %4, %3
  store i64 %6, i64* %2, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = trunc i64 %6 to i32
  %9 = and i32 %8, 255
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9) #22
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %15 = icmp eq i64 %6, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i64 %6, 63
  %19 = trunc i64 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %22, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_xorq__rax___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %RAX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4MOVQI3VnWI8vec128_tE3RVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = bitcast i8* %2 to i64*
  store i64 %3, i64* %5, align 1
  %6 = getelementptr inbounds i8, i8* %2, i64 8
  %7 = bitcast i8* %6 to i64*
  store i64 0, i64* %7, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rdx___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 5
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4MOVQI3VnWI8vec128_tE3RVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %12)
  ret %struct.Memory* %15
}




define %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




























define %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %RDX
  %16 = mul i64 %15, 8
  %17 = add i64 %16, %14
  %18 = bitcast %union.vec128_t* %XMM0 to i8*
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %17, i8* %18)
  ret %struct.Memory* %21
}








































































































define %struct.Memory* @routine_jmpq_.L_403c90(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_403fd0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_addl_MINUS0x2c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 44
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jmpq_.L_403863(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = add i64 %4, %3
  store i64 %6, i64* %2, align 8
  %7 = icmp ult i64 %6, %3
  %8 = icmp ult i64 %6, %4
  %9 = or i1 %7, %8
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13) #22
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i64 %4, %3
  %20 = xor i64 %19, %6
  %21 = lshr i64 %20, 4
  %22 = trunc i64 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i64 %6, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i64 %6, 63
  %29 = trunc i64 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i64 %3, 63
  %32 = lshr i64 %4, 63
  %33 = xor i64 %28, %31
  %34 = xor i64 %28, %32
  %35 = add   i64 %33, %34
  %36 = icmp eq i64 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_addq__0x30___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 13
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSP = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RSP
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 48)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3POPI3RnWImEEEP6MemoryS4_R5StateT_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64* nocapture) #0 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 13, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = add i64 %5, 8
  %7 = inttoptr i64 %5 to i64*
  %8 = load i64, i64* %7
  store i64 %8, i64* %2, align 8
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_popq__rbp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 1
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3POPI3RnWImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64* %RBP)
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3RETEP6MemoryR5State(%struct.Memory* returned, %struct.State* nocapture dereferenceable(3376)) #0 {
  %3 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 13, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = inttoptr i64 %5 to i64*
  %7 = load i64, i64* %6
  store i64 %7, i64* %3, align 8
  %8 = add i64 %5, 8
  store i64 %8, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_retq(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 1
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3RETEP6MemoryR5State(%struct.Memory* %2, %struct.State* %0)
  ret %struct.Memory* %8
}

