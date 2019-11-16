; ModuleID = 'test.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"
%union.anon = type { i64 }
%seg_400388__init_type = type <{ [23 x i8] }>
%seg_4003a0__text_type = type <{ [354 x i8] }>
%seg_400504__fini_type = type <{ [9 x i8] }>
%seg_400510__rodata_type = type <{ [4 x i8] }>
%seg_400514__eh_frame_hdr_type = type <{ [52 x i8] }>
%seg_400548__eh_frame_type = type <{ [208 x i8] }>
%seg_600e40__init_array_type = type <{ i64, i64 }>
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
@seg_400388__init = internal constant %seg_400388__init_type <{ [23 x i8] c"H\83\EC\08H\8B\05e\0C \00H\85\C0t\02\FF\D0H\83\C4\08\C3" }>
@seg_4003a0__text = internal constant %seg_4003a0__text_type <{ [354 x i8] c"1\EDI\89\D1^H\89\E2H\83\E4\F0PTI\C7\C0\00\05@\00H\C7\C1\90\04@\00H\C7\C7\88\04@\00\FF\15&\0C \00\F4\0F\1FD\00\00\F3\C3f.\0F\1F\84\00\00\00\00\00\0F\1F@\00U\B8(\10`\00H=(\10`\00H\89\E5t\17\B8\00\00\00\00H\85\C0t\0D]\BF(\10`\00\FF\E0\0F\1FD\00\00]\C3f\0F\1FD\00\00\BE(\10`\00UH\81\EE(\10`\00H\89\E5H\C1\FE\03H\89\F0H\C1\E8?H\01\C6H\D1\FEt\15\B8\00\00\00\00H\85\C0t\0B]\BF(\10`\00\FF\E0\0F\1F\00]\C3f\0F\1FD\00\00\80=\D1\0B \00\00u\17UH\89\E5\E8~\FF\FF\FF\C6\05\BF\0B \00\01]\C3\0F\1FD\00\00\F3\C3\0F\1F@\00f.\0F\1F\84\00\00\00\00\00UH\89\E5]\EB\89\90U\C3f\0F\1FD\00\00AWAVI\89\D7AUATL\8D%\9E\09 \00UH\8D-\9E\09 \00SA\89\FDI\89\F6L)\E5H\83\EC\08H\C1\FD\03\E8\C7\FE\FF\FFH\85\EDt 1\DB\0F\1F\84\00\00\00\00\00L\89\FAL\89\F6D\89\EFA\FF\14\DCH\83\C3\01H9\DDu\EAH\83\C4\08[]A\5CA]A^A_\C3\90f.\0F\1F\84\00\00\00\00\00\F3\C3" }>
@seg_400504__fini = internal constant %seg_400504__fini_type <{ [9 x i8] c"H\83\EC\08H\83\C4\08\C3" }>
@seg_400510__rodata = internal constant %seg_400510__rodata_type <{ [4 x i8] c"\01\00\02\00" }>
@seg_400514__eh_frame_hdr = internal constant %seg_400514__eh_frame_hdr_type <{ [52 x i8] c"\01\1B\03;0\00\00\00\05\00\00\00\8C\FE\FF\FFL\00\00\00\BC\FE\FF\FFx\00\00\00t\FF\FF\FF\8C\00\00\00|\FF\FF\FF\A4\00\00\00\EC\FF\FF\FF\EC\00\00\00" }>
@seg_400548__eh_frame = internal constant %seg_400548__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\008\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00<\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\E0\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@seg_601018__data = internal global %seg_601018__data_type zeroinitializer
@__bss_start = global %__bss_start_type zeroinitializer
@0 = internal global i1 false
%seg_400514__fini_type = type <{ [9 x i8] }>
%seg_400520__rodata_type = type <{ [4 x i8] }>
%seg_400524__eh_frame_hdr_type = type <{ [52 x i8] }>
%seg_400558__eh_frame_type = type <{ [208 x i8] }>
@seg_400514__fini = internal constant %seg_400514__fini_type <{ [9 x i8] c"H\83\EC\08H\83\C4\08\C3" }>
@seg_400520__rodata = internal constant %seg_400520__rodata_type <{ [4 x i8] c"\01\00\02\00" }>
@seg_400524__eh_frame_hdr = internal constant %seg_400524__eh_frame_hdr_type <{ [52 x i8] c"\01\1B\03;0\00\00\00\05\00\00\00|\FE\FF\FFL\00\00\00\AC\FE\FF\FFx\00\00\00d\FF\FF\FF\8C\00\00\00|\FF\FF\FF\A4\00\00\00\EC\FF\FF\FF\EC\00\00\00" }>
@seg_400558__eh_frame = internal constant %seg_400558__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\09\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>

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

declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_415df0.get_move_from_stack(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_415cb0.mark_string(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x7ae438_type = type <{ [4 x i8] }>
@G_0x7ae438= global %G_0x7ae438_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xac5d28_type = type <{ [4 x i8] }>
@G_0xac5d28= global %G_0xac5d28_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xafdfb0_type = type <{ [4 x i8] }>
@G_0xafdfb0= global %G_0xafdfb0_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xb54ce4_type = type <{ [4 x i8] }>
@G_0xb54ce4= global %G_0xb54ce4_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xb8b854_type = type <{ [4 x i8] }>
@G_0xb8b854= global %G_0xb8b854_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x57eec5_type = type <{ [8 x i8] }>
@G__0x57eec5= global %G__0x57eec5_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57f043_type = type <{ [8 x i8] }>
@G__0x57f043= global %G__0x57f043_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0xac5d30_type = type <{ [8 x i8] }>
@G__0xac5d30= global %G__0xac5d30_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0xb0eff0_type = type <{ [8 x i8] }>
@G__0xb0eff0= global %G__0xb0eff0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @store_persistent_reading_cache(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .store_persistent_reading_cache:	 RIP: 44ea10	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 44ea10	 Bytes: 1
  %loadMem_44ea10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ea10 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ea10)
  store %struct.Memory* %call_44ea10, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 44ea11	 Bytes: 3
  %loadMem_44ea11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ea11 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ea11)
  store %struct.Memory* %call_44ea11, %struct.Memory** %MEMORY

  ; Code: subq $0x1f0, %rsp	 RIP: 44ea14	 Bytes: 7
  %loadMem_44ea14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ea14 = call %struct.Memory* @routine_subq__0x1f0___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ea14)
  store %struct.Memory* %call_44ea14, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x4(%rbp)	 RIP: 44ea1b	 Bytes: 3
  %loadMem_44ea1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ea1b = call %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ea1b)
  store %struct.Memory* %call_44ea1b, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x8(%rbp)	 RIP: 44ea1e	 Bytes: 3
  %loadMem_44ea1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ea1e = call %struct.Memory* @routine_movl__esi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ea1e)
  store %struct.Memory* %call_44ea1e, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0xc(%rbp)	 RIP: 44ea21	 Bytes: 3
  %loadMem_44ea21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ea21 = call %struct.Memory* @routine_movl__edx__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ea21)
  store %struct.Memory* %call_44ea21, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x10(%rbp)	 RIP: 44ea24	 Bytes: 3
  %loadMem_44ea24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ea24 = call %struct.Memory* @routine_movl__ecx__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ea24)
  store %struct.Memory* %call_44ea24, %struct.Memory** %MEMORY

  ; Code: movl %r8d, -0x14(%rbp)	 RIP: 44ea27	 Bytes: 4
  %loadMem_44ea27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ea27 = call %struct.Memory* @routine_movl__r8d__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ea27)
  store %struct.Memory* %call_44ea27, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 44ea2b	 Bytes: 3
  %loadMem_44ea2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ea2b = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ea2b)
  store %struct.Memory* %call_44ea2b, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x1bc(%rbp)	 RIP: 44ea2e	 Bytes: 6
  %loadMem_44ea2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ea2e = call %struct.Memory* @routine_movl__ecx__MINUS0x1bc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ea2e)
  store %struct.Memory* %call_44ea2e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0xc(%rbp)	 RIP: 44ea34	 Bytes: 4
  %loadMem_44ea34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ea34 = call %struct.Memory* @routine_cmpl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ea34)
  store %struct.Memory* %call_44ea34, %struct.Memory** %MEMORY

  ; Code: je .L_44ea5d	 RIP: 44ea38	 Bytes: 6
  %loadMem_44ea38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ea38 = call %struct.Memory* @routine_je_.L_44ea5d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ea38, i8* %BRANCH_TAKEN, i64 37, i64 6, i64 6)
  store %struct.Memory* %call_44ea38, %struct.Memory** %MEMORY

  %loadBr_44ea38 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44ea38 = icmp eq i8 %loadBr_44ea38, 1
  br i1 %cmpBr_44ea38, label %block_.L_44ea5d, label %block_44ea3e

block_44ea3e:
  ; Code: cmpl $0x0, -0x10(%rbp)	 RIP: 44ea3e	 Bytes: 4
  %loadMem_44ea3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ea3e = call %struct.Memory* @routine_cmpl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ea3e)
  store %struct.Memory* %call_44ea3e, %struct.Memory** %MEMORY

  ; Code: je .L_44ea5d	 RIP: 44ea42	 Bytes: 6
  %loadMem_44ea42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ea42 = call %struct.Memory* @routine_je_.L_44ea5d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ea42, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_44ea42, %struct.Memory** %MEMORY

  %loadBr_44ea42 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44ea42 = icmp eq i8 %loadBr_44ea42, 1
  br i1 %cmpBr_44ea42, label %block_.L_44ea5d, label %block_44ea48

block_44ea48:
  ; Code: movslq -0x10(%rbp), %rax	 RIP: 44ea48	 Bytes: 4
  %loadMem_44ea48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ea48 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ea48)
  store %struct.Memory* %call_44ea48, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 44ea4c	 Bytes: 8
  %loadMem_44ea4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ea4c = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ea4c)
  store %struct.Memory* %call_44ea4c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %ecx	 RIP: 44ea54	 Bytes: 3
  %loadMem_44ea54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ea54 = call %struct.Memory* @routine_cmpl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ea54)
  store %struct.Memory* %call_44ea54, %struct.Memory** %MEMORY

  ; Code: je .L_44ea62	 RIP: 44ea57	 Bytes: 6
  %loadMem_44ea57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ea57 = call %struct.Memory* @routine_je_.L_44ea62(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ea57, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_44ea57, %struct.Memory** %MEMORY

  %loadBr_44ea57 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44ea57 = icmp eq i8 %loadBr_44ea57, 1
  br i1 %cmpBr_44ea57, label %block_.L_44ea62, label %block_.L_44ea5d

  ; Code: .L_44ea5d:	 RIP: 44ea5d	 Bytes: 0
block_.L_44ea5d:

  ; Code: jmpq .L_44ead3	 RIP: 44ea5d	 Bytes: 5
  %loadMem_44ea5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ea5d = call %struct.Memory* @routine_jmpq_.L_44ead3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ea5d, i64 118, i64 5)
  store %struct.Memory* %call_44ea5d, %struct.Memory** %MEMORY

  br label %block_.L_44ead3

  ; Code: .L_44ea62:	 RIP: 44ea62	 Bytes: 0
block_.L_44ea62:

  ; Code: movq $0x57eec5, %rdi	 RIP: 44ea62	 Bytes: 10
  %loadMem_44ea62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ea62 = call %struct.Memory* @routine_movq__0x57eec5___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ea62)
  store %struct.Memory* %call_44ea62, %struct.Memory** %MEMORY

  ; Code: movl $0x171, %esi	 RIP: 44ea6c	 Bytes: 5
  %loadMem_44ea6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ea6c = call %struct.Memory* @routine_movl__0x171___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ea6c)
  store %struct.Memory* %call_44ea6c, %struct.Memory** %MEMORY

  ; Code: movq $0x57f043, %rdx	 RIP: 44ea71	 Bytes: 10
  %loadMem_44ea71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ea71 = call %struct.Memory* @routine_movq__0x57f043___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ea71)
  store %struct.Memory* %call_44ea71, %struct.Memory** %MEMORY

  ; Code: movl $0x14, %eax	 RIP: 44ea7b	 Bytes: 5
  %loadMem_44ea7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ea7b = call %struct.Memory* @routine_movl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ea7b)
  store %struct.Memory* %call_44ea7b, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %ecx	 RIP: 44ea80	 Bytes: 3
  %loadMem_44ea80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ea80 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ea80)
  store %struct.Memory* %call_44ea80, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1d4(%rbp)	 RIP: 44ea83	 Bytes: 6
  %loadMem_44ea83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ea83 = call %struct.Memory* @routine_movl__eax__MINUS0x1d4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ea83)
  store %struct.Memory* %call_44ea83, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 44ea89	 Bytes: 2
  %loadMem_44ea89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ea89 = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ea89)
  store %struct.Memory* %call_44ea89, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x1e0(%rbp)	 RIP: 44ea8b	 Bytes: 7
  %loadMem_44ea8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ea8b = call %struct.Memory* @routine_movq__rdx__MINUS0x1e0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ea8b)
  store %struct.Memory* %call_44ea8b, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 44ea92	 Bytes: 1
  %loadMem_44ea92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ea92 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ea92)
  store %struct.Memory* %call_44ea92, %struct.Memory** %MEMORY

  ; Code: movl -0x1d4(%rbp), %ecx	 RIP: 44ea93	 Bytes: 6
  %loadMem_44ea93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ea93 = call %struct.Memory* @routine_movl_MINUS0x1d4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ea93)
  store %struct.Memory* %call_44ea93, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 44ea99	 Bytes: 2
  %loadMem_44ea99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ea99 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ea99)
  store %struct.Memory* %call_44ea99, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 44ea9b	 Bytes: 3
  %loadMem_44ea9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ea9b = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ea9b)
  store %struct.Memory* %call_44ea9b, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %r8d	 RIP: 44ea9e	 Bytes: 4
  %loadMem_44ea9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ea9e = call %struct.Memory* @routine_movl_MINUS0x10__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ea9e)
  store %struct.Memory* %call_44ea9e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1e4(%rbp)	 RIP: 44eaa2	 Bytes: 6
  %loadMem_44eaa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eaa2 = call %struct.Memory* @routine_movl__eax__MINUS0x1e4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eaa2)
  store %struct.Memory* %call_44eaa2, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %eax	 RIP: 44eaa8	 Bytes: 3
  %loadMem_44eaa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eaa8 = call %struct.Memory* @routine_movl__r8d___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eaa8)
  store %struct.Memory* %call_44eaa8, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 44eaab	 Bytes: 1
  %loadMem_44eaab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eaab = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eaab)
  store %struct.Memory* %call_44eaab, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 44eaac	 Bytes: 2
  %loadMem_44eaac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eaac = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eaac)
  store %struct.Memory* %call_44eaac, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 44eaae	 Bytes: 3
  %loadMem_44eaae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eaae = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eaae)
  store %struct.Memory* %call_44eaae, %struct.Memory** %MEMORY

  ; Code: movq -0x1e0(%rbp), %r9	 RIP: 44eab1	 Bytes: 7
  %loadMem_44eab1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eab1 = call %struct.Memory* @routine_movq_MINUS0x1e0__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eab1)
  store %struct.Memory* %call_44eab1, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x1e8(%rbp)	 RIP: 44eab8	 Bytes: 6
  %loadMem_44eab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eab8 = call %struct.Memory* @routine_movl__edx__MINUS0x1e8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eab8)
  store %struct.Memory* %call_44eab8, %struct.Memory** %MEMORY

  ; Code: movq %r9, %rdx	 RIP: 44eabe	 Bytes: 3
  %loadMem_44eabe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eabe = call %struct.Memory* @routine_movq__r9___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eabe)
  store %struct.Memory* %call_44eabe, %struct.Memory** %MEMORY

  ; Code: movl -0x1e4(%rbp), %ecx	 RIP: 44eac1	 Bytes: 6
  %loadMem_44eac1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eac1 = call %struct.Memory* @routine_movl_MINUS0x1e4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eac1)
  store %struct.Memory* %call_44eac1, %struct.Memory** %MEMORY

  ; Code: movl -0x1e8(%rbp), %r8d	 RIP: 44eac7	 Bytes: 7
  %loadMem_44eac7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eac7 = call %struct.Memory* @routine_movl_MINUS0x1e8__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eac7)
  store %struct.Memory* %call_44eac7, %struct.Memory** %MEMORY

  ; Code: callq .abortgo	 RIP: 44eace	 Bytes: 5
  %loadMem1_44eace = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44eace = call %struct.Memory* @routine_callq_.abortgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44eace, i64 13762, i64 5, i64 5)
  store %struct.Memory* %call1_44eace, %struct.Memory** %MEMORY

  %loadMem2_44eace = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44eace = load i64, i64* %3
  %call2_44eace = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64  %loadPC_44eace, %struct.Memory* %loadMem2_44eace)
  store %struct.Memory* %call2_44eace, %struct.Memory** %MEMORY

  ; Code: .L_44ead3:	 RIP: 44ead3	 Bytes: 0
  br label %block_.L_44ead3
block_.L_44ead3:

  ; Code: cmpl $0x5, 0xb54ce4	 RIP: 44ead3	 Bytes: 8
  %loadMem_44ead3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ead3 = call %struct.Memory* @routine_cmpl__0x5__0xb54ce4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ead3)
  store %struct.Memory* %call_44ead3, %struct.Memory** %MEMORY

  ; Code: jle .L_44eae6	 RIP: 44eadb	 Bytes: 6
  %loadMem_44eadb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eadb = call %struct.Memory* @routine_jle_.L_44eae6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eadb, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_44eadb, %struct.Memory** %MEMORY

  %loadBr_44eadb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44eadb = icmp eq i8 %loadBr_44eadb, 1
  br i1 %cmpBr_44eadb, label %block_.L_44eae6, label %block_44eae1

block_44eae1:
  ; Code: jmpq .L_44f4ed	 RIP: 44eae1	 Bytes: 5
  %loadMem_44eae1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eae1 = call %struct.Memory* @routine_jmpq_.L_44f4ed(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eae1, i64 2572, i64 5)
  store %struct.Memory* %call_44eae1, %struct.Memory** %MEMORY

  br label %block_.L_44f4ed

  ; Code: .L_44eae6:	 RIP: 44eae6	 Bytes: 0
block_.L_44eae6:

  ; Code: cmpl $0x64, 0xac5d28	 RIP: 44eae6	 Bytes: 8
  %loadMem_44eae6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eae6 = call %struct.Memory* @routine_cmpl__0x64__0xac5d28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eae6)
  store %struct.Memory* %call_44eae6, %struct.Memory** %MEMORY

  ; Code: jne .L_44ec29	 RIP: 44eaee	 Bytes: 6
  %loadMem_44eaee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eaee = call %struct.Memory* @routine_jne_.L_44ec29(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eaee, i8* %BRANCH_TAKEN, i64 315, i64 6, i64 6)
  store %struct.Memory* %call_44eaee, %struct.Memory** %MEMORY

  %loadBr_44eaee = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44eaee = icmp eq i8 %loadBr_44eaee, 1
  br i1 %cmpBr_44eaee, label %block_.L_44ec29, label %block_44eaf4

block_44eaf4:
  ; Code: movl $0xffffffff, -0x1cc(%rbp)	 RIP: 44eaf4	 Bytes: 10
  %loadMem_44eaf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eaf4 = call %struct.Memory* @routine_movl__0xffffffff__MINUS0x1cc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eaf4)
  store %struct.Memory* %call_44eaf4, %struct.Memory** %MEMORY

  ; Code: movl -0x1bc(%rbp), %eax	 RIP: 44eafe	 Bytes: 6
  %loadMem_44eafe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eafe = call %struct.Memory* @routine_movl_MINUS0x1bc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eafe)
  store %struct.Memory* %call_44eafe, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1d0(%rbp)	 RIP: 44eb04	 Bytes: 6
  %loadMem_44eb04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eb04 = call %struct.Memory* @routine_movl__eax__MINUS0x1d0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eb04)
  store %struct.Memory* %call_44eb04, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x1b4(%rbp)	 RIP: 44eb0a	 Bytes: 10
  %loadMem_44eb0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eb0a = call %struct.Memory* @routine_movl__0x1__MINUS0x1b4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eb0a)
  store %struct.Memory* %call_44eb0a, %struct.Memory** %MEMORY

  ; Code: .L_44eb14:	 RIP: 44eb14	 Bytes: 0
  br label %block_.L_44eb14
block_.L_44eb14:

  ; Code: movl -0x1b4(%rbp), %eax	 RIP: 44eb14	 Bytes: 6
  %loadMem_44eb14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eb14 = call %struct.Memory* @routine_movl_MINUS0x1b4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eb14)
  store %struct.Memory* %call_44eb14, %struct.Memory** %MEMORY

  ; Code: cmpl 0xac5d28, %eax	 RIP: 44eb1a	 Bytes: 7
  %loadMem_44eb1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eb1a = call %struct.Memory* @routine_cmpl_0xac5d28___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eb1a)
  store %struct.Memory* %call_44eb1a, %struct.Memory** %MEMORY

  ; Code: jge .L_44eba0	 RIP: 44eb21	 Bytes: 6
  %loadMem_44eb21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eb21 = call %struct.Memory* @routine_jge_.L_44eba0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eb21, i8* %BRANCH_TAKEN, i64 127, i64 6, i64 6)
  store %struct.Memory* %call_44eb21, %struct.Memory** %MEMORY

  %loadBr_44eb21 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44eb21 = icmp eq i8 %loadBr_44eb21, 1
  br i1 %cmpBr_44eb21, label %block_.L_44eba0, label %block_44eb27

block_44eb27:
  ; Code: movq $0xac5d30, %rax	 RIP: 44eb27	 Bytes: 10
  %loadMem_44eb27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eb27 = call %struct.Memory* @routine_movq__0xac5d30___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eb27)
  store %struct.Memory* %call_44eb27, %struct.Memory** %MEMORY

  ; Code: movslq -0x1b4(%rbp), %rcx	 RIP: 44eb31	 Bytes: 7
  %loadMem_44eb31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eb31 = call %struct.Memory* @routine_movslq_MINUS0x1b4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eb31)
  store %struct.Memory* %call_44eb31, %struct.Memory** %MEMORY

  ; Code: imulq $0x1dc, %rcx, %rcx	 RIP: 44eb38	 Bytes: 7
  %loadMem_44eb38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eb38 = call %struct.Memory* @routine_imulq__0x1dc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eb38)
  store %struct.Memory* %call_44eb38, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44eb3f	 Bytes: 3
  %loadMem_44eb3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eb3f = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eb3f)
  store %struct.Memory* %call_44eb3f, %struct.Memory** %MEMORY

  ; Code: movl 0x19c(%rax), %edx	 RIP: 44eb42	 Bytes: 6
  %loadMem_44eb42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eb42 = call %struct.Memory* @routine_movl_0x19c__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eb42)
  store %struct.Memory* %call_44eb42, %struct.Memory** %MEMORY

  ; Code: cmpl -0x1d0(%rbp), %edx	 RIP: 44eb48	 Bytes: 6
  %loadMem_44eb48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eb48 = call %struct.Memory* @routine_cmpl_MINUS0x1d0__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eb48)
  store %struct.Memory* %call_44eb48, %struct.Memory** %MEMORY

  ; Code: jge .L_44eb87	 RIP: 44eb4e	 Bytes: 6
  %loadMem_44eb4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eb4e = call %struct.Memory* @routine_jge_.L_44eb87(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eb4e, i8* %BRANCH_TAKEN, i64 57, i64 6, i64 6)
  store %struct.Memory* %call_44eb4e, %struct.Memory** %MEMORY

  %loadBr_44eb4e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44eb4e = icmp eq i8 %loadBr_44eb4e, 1
  br i1 %cmpBr_44eb4e, label %block_.L_44eb87, label %block_44eb54

block_44eb54:
  ; Code: movq $0xac5d30, %rax	 RIP: 44eb54	 Bytes: 10
  %loadMem_44eb54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eb54 = call %struct.Memory* @routine_movq__0xac5d30___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eb54)
  store %struct.Memory* %call_44eb54, %struct.Memory** %MEMORY

  ; Code: movslq -0x1b4(%rbp), %rcx	 RIP: 44eb5e	 Bytes: 7
  %loadMem_44eb5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eb5e = call %struct.Memory* @routine_movslq_MINUS0x1b4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eb5e)
  store %struct.Memory* %call_44eb5e, %struct.Memory** %MEMORY

  ; Code: imulq $0x1dc, %rcx, %rcx	 RIP: 44eb65	 Bytes: 7
  %loadMem_44eb65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eb65 = call %struct.Memory* @routine_imulq__0x1dc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eb65)
  store %struct.Memory* %call_44eb65, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44eb6c	 Bytes: 3
  %loadMem_44eb6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eb6c = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eb6c)
  store %struct.Memory* %call_44eb6c, %struct.Memory** %MEMORY

  ; Code: movl 0x19c(%rax), %edx	 RIP: 44eb6f	 Bytes: 6
  %loadMem_44eb6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eb6f = call %struct.Memory* @routine_movl_0x19c__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eb6f)
  store %struct.Memory* %call_44eb6f, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x1d0(%rbp)	 RIP: 44eb75	 Bytes: 6
  %loadMem_44eb75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eb75 = call %struct.Memory* @routine_movl__edx__MINUS0x1d0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eb75)
  store %struct.Memory* %call_44eb75, %struct.Memory** %MEMORY

  ; Code: movl -0x1b4(%rbp), %edx	 RIP: 44eb7b	 Bytes: 6
  %loadMem_44eb7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eb7b = call %struct.Memory* @routine_movl_MINUS0x1b4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eb7b)
  store %struct.Memory* %call_44eb7b, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x1cc(%rbp)	 RIP: 44eb81	 Bytes: 6
  %loadMem_44eb81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eb81 = call %struct.Memory* @routine_movl__edx__MINUS0x1cc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eb81)
  store %struct.Memory* %call_44eb81, %struct.Memory** %MEMORY

  ; Code: .L_44eb87:	 RIP: 44eb87	 Bytes: 0
  br label %block_.L_44eb87
block_.L_44eb87:

  ; Code: jmpq .L_44eb8c	 RIP: 44eb87	 Bytes: 5
  %loadMem_44eb87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eb87 = call %struct.Memory* @routine_jmpq_.L_44eb8c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eb87, i64 5, i64 5)
  store %struct.Memory* %call_44eb87, %struct.Memory** %MEMORY

  br label %block_.L_44eb8c

  ; Code: .L_44eb8c:	 RIP: 44eb8c	 Bytes: 0
block_.L_44eb8c:

  ; Code: movl -0x1b4(%rbp), %eax	 RIP: 44eb8c	 Bytes: 6
  %loadMem_44eb8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eb8c = call %struct.Memory* @routine_movl_MINUS0x1b4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eb8c)
  store %struct.Memory* %call_44eb8c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44eb92	 Bytes: 3
  %loadMem_44eb92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eb92 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eb92)
  store %struct.Memory* %call_44eb92, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1b4(%rbp)	 RIP: 44eb95	 Bytes: 6
  %loadMem_44eb95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eb95 = call %struct.Memory* @routine_movl__eax__MINUS0x1b4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eb95)
  store %struct.Memory* %call_44eb95, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44eb14	 RIP: 44eb9b	 Bytes: 5
  %loadMem_44eb9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eb9b = call %struct.Memory* @routine_jmpq_.L_44eb14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eb9b, i64 -135, i64 5)
  store %struct.Memory* %call_44eb9b, %struct.Memory** %MEMORY

  br label %block_.L_44eb14

  ; Code: .L_44eba0:	 RIP: 44eba0	 Bytes: 0
block_.L_44eba0:

  ; Code: cmpl $0xffffffff, -0x1cc(%rbp)	 RIP: 44eba0	 Bytes: 7
  %loadMem_44eba0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eba0 = call %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x1cc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eba0)
  store %struct.Memory* %call_44eba0, %struct.Memory** %MEMORY

  ; Code: je .L_44ec1f	 RIP: 44eba7	 Bytes: 6
  %loadMem_44eba7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eba7 = call %struct.Memory* @routine_je_.L_44ec1f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eba7, i8* %BRANCH_TAKEN, i64 120, i64 6, i64 6)
  store %struct.Memory* %call_44eba7, %struct.Memory** %MEMORY

  %loadBr_44eba7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44eba7 = icmp eq i8 %loadBr_44eba7, 1
  br i1 %cmpBr_44eba7, label %block_.L_44ec1f, label %block_44ebad

block_44ebad:
  ; Code: movl -0x1cc(%rbp), %eax	 RIP: 44ebad	 Bytes: 6
  %loadMem_44ebad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ebad = call %struct.Memory* @routine_movl_MINUS0x1cc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ebad)
  store %struct.Memory* %call_44ebad, %struct.Memory** %MEMORY

  ; Code: movl 0xac5d28, %ecx	 RIP: 44ebb3	 Bytes: 7
  %loadMem_44ebb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ebb3 = call %struct.Memory* @routine_movl_0xac5d28___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ebb3)
  store %struct.Memory* %call_44ebb3, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 44ebba	 Bytes: 3
  %loadMem_44ebba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ebba = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ebba)
  store %struct.Memory* %call_44ebba, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 44ebbd	 Bytes: 2
  %loadMem_44ebbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ebbd = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ebbd)
  store %struct.Memory* %call_44ebbd, %struct.Memory** %MEMORY

  ; Code: jge .L_44ec09	 RIP: 44ebbf	 Bytes: 6
  %loadMem_44ebbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ebbf = call %struct.Memory* @routine_jge_.L_44ec09(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ebbf, i8* %BRANCH_TAKEN, i64 74, i64 6, i64 6)
  store %struct.Memory* %call_44ebbf, %struct.Memory** %MEMORY

  %loadBr_44ebbf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44ebbf = icmp eq i8 %loadBr_44ebbf, 1
  br i1 %cmpBr_44ebbf, label %block_.L_44ec09, label %block_44ebc5

block_44ebc5:
  ; Code: movl $0x1dc, %eax	 RIP: 44ebc5	 Bytes: 5
  %loadMem_44ebc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ebc5 = call %struct.Memory* @routine_movl__0x1dc___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ebc5)
  store %struct.Memory* %call_44ebc5, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 44ebca	 Bytes: 2
  %loadMem_44ebca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ebca = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ebca)
  store %struct.Memory* %call_44ebca, %struct.Memory** %MEMORY

  ; Code: movq $0xac5d30, %rcx	 RIP: 44ebcc	 Bytes: 10
  %loadMem_44ebcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ebcc = call %struct.Memory* @routine_movq__0xac5d30___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ebcc)
  store %struct.Memory* %call_44ebcc, %struct.Memory** %MEMORY

  ; Code: movslq -0x1cc(%rbp), %rsi	 RIP: 44ebd6	 Bytes: 7
  %loadMem_44ebd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ebd6 = call %struct.Memory* @routine_movslq_MINUS0x1cc__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ebd6)
  store %struct.Memory* %call_44ebd6, %struct.Memory** %MEMORY

  ; Code: imulq $0x1dc, %rsi, %rsi	 RIP: 44ebdd	 Bytes: 7
  %loadMem_44ebdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ebdd = call %struct.Memory* @routine_imulq__0x1dc___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ebdd)
  store %struct.Memory* %call_44ebdd, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 44ebe4	 Bytes: 3
  %loadMem_44ebe4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ebe4 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ebe4)
  store %struct.Memory* %call_44ebe4, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdi	 RIP: 44ebe7	 Bytes: 3
  %loadMem_44ebe7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ebe7 = call %struct.Memory* @routine_addq__rsi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ebe7)
  store %struct.Memory* %call_44ebe7, %struct.Memory** %MEMORY

  ; Code: movl 0xac5d28, %eax	 RIP: 44ebea	 Bytes: 7
  %loadMem_44ebea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ebea = call %struct.Memory* @routine_movl_0xac5d28___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ebea)
  store %struct.Memory* %call_44ebea, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 44ebf1	 Bytes: 3
  %loadMem_44ebf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ebf1 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ebf1)
  store %struct.Memory* %call_44ebf1, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 44ebf4	 Bytes: 3
  %loadMem_44ebf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ebf4 = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ebf4)
  store %struct.Memory* %call_44ebf4, %struct.Memory** %MEMORY

  ; Code: imulq $0x1dc, %rsi, %rsi	 RIP: 44ebf7	 Bytes: 7
  %loadMem_44ebf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ebf7 = call %struct.Memory* @routine_imulq__0x1dc___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ebf7)
  store %struct.Memory* %call_44ebf7, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rcx	 RIP: 44ebfe	 Bytes: 3
  %loadMem_44ebfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ebfe = call %struct.Memory* @routine_addq__rsi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ebfe)
  store %struct.Memory* %call_44ebfe, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rsi	 RIP: 44ec01	 Bytes: 3
  %loadMem_44ec01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ec01 = call %struct.Memory* @routine_movq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ec01)
  store %struct.Memory* %call_44ec01, %struct.Memory** %MEMORY

  ; Code: callq .memcpy_plt	 RIP: 44ec04	 Bytes: 5
  %loadMem1_44ec04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44ec04 = call %struct.Memory* @routine_callq_.memcpy_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44ec04, i64 -318228, i64 5, i64 5)
  store %struct.Memory* %call1_44ec04, %struct.Memory** %MEMORY

  %loadMem2_44ec04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44ec04 = load i64, i64* %3
  %call2_44ec04 = call %struct.Memory* @ext_memcpy(%struct.State* %0, i64  %loadPC_44ec04, %struct.Memory* %loadMem2_44ec04)
  store %struct.Memory* %call2_44ec04, %struct.Memory** %MEMORY

  ; Code: .L_44ec09:	 RIP: 44ec09	 Bytes: 0
  br label %block_.L_44ec09
block_.L_44ec09:

  ; Code: movl 0xac5d28, %eax	 RIP: 44ec09	 Bytes: 7
  %loadMem_44ec09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ec09 = call %struct.Memory* @routine_movl_0xac5d28___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ec09)
  store %struct.Memory* %call_44ec09, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %eax	 RIP: 44ec10	 Bytes: 3
  %loadMem_44ec10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ec10 = call %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ec10)
  store %struct.Memory* %call_44ec10, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0xac5d28	 RIP: 44ec13	 Bytes: 7
  %loadMem_44ec13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ec13 = call %struct.Memory* @routine_movl__eax__0xac5d28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ec13)
  store %struct.Memory* %call_44ec13, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44ec24	 RIP: 44ec1a	 Bytes: 5
  %loadMem_44ec1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ec1a = call %struct.Memory* @routine_jmpq_.L_44ec24(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ec1a, i64 10, i64 5)
  store %struct.Memory* %call_44ec1a, %struct.Memory** %MEMORY

  br label %block_.L_44ec24

  ; Code: .L_44ec1f:	 RIP: 44ec1f	 Bytes: 0
block_.L_44ec1f:

  ; Code: jmpq .L_44f4ed	 RIP: 44ec1f	 Bytes: 5
  %loadMem_44ec1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ec1f = call %struct.Memory* @routine_jmpq_.L_44f4ed(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ec1f, i64 2254, i64 5)
  store %struct.Memory* %call_44ec1f, %struct.Memory** %MEMORY

  br label %block_.L_44f4ed

  ; Code: .L_44ec24:	 RIP: 44ec24	 Bytes: 0
block_.L_44ec24:

  ; Code: jmpq .L_44ec29	 RIP: 44ec24	 Bytes: 5
  %loadMem_44ec24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ec24 = call %struct.Memory* @routine_jmpq_.L_44ec29(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ec24, i64 5, i64 5)
  store %struct.Memory* %call_44ec24, %struct.Memory** %MEMORY

  br label %block_.L_44ec29

  ; Code: .L_44ec29:	 RIP: 44ec29	 Bytes: 0
block_.L_44ec29:

  ; Code: movq $0xac5d30, %rax	 RIP: 44ec29	 Bytes: 10
  %loadMem_44ec29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ec29 = call %struct.Memory* @routine_movq__0xac5d30___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ec29)
  store %struct.Memory* %call_44ec29, %struct.Memory** %MEMORY

  ; Code: movslq 0xac5d28, %rcx	 RIP: 44ec33	 Bytes: 8
  %loadMem_44ec33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ec33 = call %struct.Memory* @routine_movslq_0xac5d28___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ec33)
  store %struct.Memory* %call_44ec33, %struct.Memory** %MEMORY

  ; Code: imulq $0x1dc, %rcx, %rcx	 RIP: 44ec3b	 Bytes: 7
  %loadMem_44ec3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ec3b = call %struct.Memory* @routine_imulq__0x1dc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ec3b)
  store %struct.Memory* %call_44ec3b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44ec42	 Bytes: 3
  %loadMem_44ec42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ec42 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ec42)
  store %struct.Memory* %call_44ec42, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x1c8(%rbp)	 RIP: 44ec45	 Bytes: 7
  %loadMem_44ec45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ec45 = call %struct.Memory* @routine_movq__rax__MINUS0x1c8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ec45)
  store %struct.Memory* %call_44ec45, %struct.Memory** %MEMORY

  ; Code: movl 0x7ae438, %edx	 RIP: 44ec4c	 Bytes: 7
  %loadMem_44ec4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ec4c = call %struct.Memory* @routine_movl_0x7ae438___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ec4c)
  store %struct.Memory* %call_44ec4c, %struct.Memory** %MEMORY

  ; Code: movq -0x1c8(%rbp), %rax	 RIP: 44ec53	 Bytes: 7
  %loadMem_44ec53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ec53 = call %struct.Memory* @routine_movq_MINUS0x1c8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ec53)
  store %struct.Memory* %call_44ec53, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rax)	 RIP: 44ec5a	 Bytes: 2
  %loadMem_44ec5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ec5a = call %struct.Memory* @routine_movl__edx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ec5a)
  store %struct.Memory* %call_44ec5a, %struct.Memory** %MEMORY

  ; Code: movl 0xafdfb0, %edx	 RIP: 44ec5c	 Bytes: 7
  %loadMem_44ec5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ec5c = call %struct.Memory* @routine_movl_0xafdfb0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ec5c)
  store %struct.Memory* %call_44ec5c, %struct.Memory** %MEMORY

  ; Code: movq -0x1c8(%rbp), %rax	 RIP: 44ec63	 Bytes: 7
  %loadMem_44ec63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ec63 = call %struct.Memory* @routine_movq_MINUS0x1c8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ec63)
  store %struct.Memory* %call_44ec63, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x194(%rax)	 RIP: 44ec6a	 Bytes: 6
  %loadMem_44ec6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ec6a = call %struct.Memory* @routine_movl__edx__0x194__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ec6a)
  store %struct.Memory* %call_44ec6a, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %edx	 RIP: 44ec70	 Bytes: 3
  %loadMem_44ec70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ec70 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ec70)
  store %struct.Memory* %call_44ec70, %struct.Memory** %MEMORY

  ; Code: movq -0x1c8(%rbp), %rax	 RIP: 44ec73	 Bytes: 7
  %loadMem_44ec73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ec73 = call %struct.Memory* @routine_movq_MINUS0x1c8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ec73)
  store %struct.Memory* %call_44ec73, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x198(%rax)	 RIP: 44ec7a	 Bytes: 6
  %loadMem_44ec7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ec7a = call %struct.Memory* @routine_movl__edx__0x198__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ec7a)
  store %struct.Memory* %call_44ec7a, %struct.Memory** %MEMORY

  ; Code: movl -0x1bc(%rbp), %edx	 RIP: 44ec80	 Bytes: 6
  %loadMem_44ec80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ec80 = call %struct.Memory* @routine_movl_MINUS0x1bc__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ec80)
  store %struct.Memory* %call_44ec80, %struct.Memory** %MEMORY

  ; Code: movq -0x1c8(%rbp), %rax	 RIP: 44ec86	 Bytes: 7
  %loadMem_44ec86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ec86 = call %struct.Memory* @routine_movq_MINUS0x1c8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ec86)
  store %struct.Memory* %call_44ec86, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x19c(%rax)	 RIP: 44ec8d	 Bytes: 6
  %loadMem_44ec8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ec8d = call %struct.Memory* @routine_movl__edx__0x19c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ec8d)
  store %struct.Memory* %call_44ec8d, %struct.Memory** %MEMORY

  ; Code: movl 0xb8b854, %edx	 RIP: 44ec93	 Bytes: 7
  %loadMem_44ec93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ec93 = call %struct.Memory* @routine_movl_0xb8b854___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ec93)
  store %struct.Memory* %call_44ec93, %struct.Memory** %MEMORY

  ; Code: subl 0xb54ce4, %edx	 RIP: 44ec9a	 Bytes: 7
  %loadMem_44ec9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ec9a = call %struct.Memory* @routine_subl_0xb54ce4___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ec9a)
  store %struct.Memory* %call_44ec9a, %struct.Memory** %MEMORY

  ; Code: movq -0x1c8(%rbp), %rax	 RIP: 44eca1	 Bytes: 7
  %loadMem_44eca1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eca1 = call %struct.Memory* @routine_movq_MINUS0x1c8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eca1)
  store %struct.Memory* %call_44eca1, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x1a0(%rax)	 RIP: 44eca8	 Bytes: 6
  %loadMem_44eca8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eca8 = call %struct.Memory* @routine_movl__edx__0x1a0__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eca8)
  store %struct.Memory* %call_44eca8, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %edx	 RIP: 44ecae	 Bytes: 3
  %loadMem_44ecae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ecae = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ecae)
  store %struct.Memory* %call_44ecae, %struct.Memory** %MEMORY

  ; Code: movq -0x1c8(%rbp), %rax	 RIP: 44ecb1	 Bytes: 7
  %loadMem_44ecb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ecb1 = call %struct.Memory* @routine_movq_MINUS0x1c8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ecb1)
  store %struct.Memory* %call_44ecb1, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x1a4(%rax)	 RIP: 44ecb8	 Bytes: 6
  %loadMem_44ecb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ecb8 = call %struct.Memory* @routine_movl__edx__0x1a4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ecb8)
  store %struct.Memory* %call_44ecb8, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %edx	 RIP: 44ecbe	 Bytes: 3
  %loadMem_44ecbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ecbe = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ecbe)
  store %struct.Memory* %call_44ecbe, %struct.Memory** %MEMORY

  ; Code: movq -0x1c8(%rbp), %rax	 RIP: 44ecc1	 Bytes: 7
  %loadMem_44ecc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ecc1 = call %struct.Memory* @routine_movq_MINUS0x1c8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ecc1)
  store %struct.Memory* %call_44ecc1, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x1a8(%rax)	 RIP: 44ecc8	 Bytes: 6
  %loadMem_44ecc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ecc8 = call %struct.Memory* @routine_movl__edx__0x1a8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ecc8)
  store %struct.Memory* %call_44ecc8, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %edx	 RIP: 44ecce	 Bytes: 3
  %loadMem_44ecce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ecce = call %struct.Memory* @routine_movl_MINUS0xc__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ecce)
  store %struct.Memory* %call_44ecce, %struct.Memory** %MEMORY

  ; Code: movq -0x1c8(%rbp), %rax	 RIP: 44ecd1	 Bytes: 7
  %loadMem_44ecd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ecd1 = call %struct.Memory* @routine_movq_MINUS0x1c8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ecd1)
  store %struct.Memory* %call_44ecd1, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x1ac(%rax)	 RIP: 44ecd8	 Bytes: 6
  %loadMem_44ecd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ecd8 = call %struct.Memory* @routine_movl__edx__0x1ac__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ecd8)
  store %struct.Memory* %call_44ecd8, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %edx	 RIP: 44ecde	 Bytes: 3
  %loadMem_44ecde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ecde = call %struct.Memory* @routine_movl_MINUS0x10__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ecde)
  store %struct.Memory* %call_44ecde, %struct.Memory** %MEMORY

  ; Code: movq -0x1c8(%rbp), %rax	 RIP: 44ece1	 Bytes: 7
  %loadMem_44ece1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ece1 = call %struct.Memory* @routine_movq_MINUS0x1c8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ece1)
  store %struct.Memory* %call_44ece1, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x1b0(%rax)	 RIP: 44ece8	 Bytes: 6
  %loadMem_44ece8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ece8 = call %struct.Memory* @routine_movl__edx__0x1b0__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ece8)
  store %struct.Memory* %call_44ece8, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x1b8(%rbp)	 RIP: 44ecee	 Bytes: 10
  %loadMem_44ecee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ecee = call %struct.Memory* @routine_movl__0x0__MINUS0x1b8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ecee)
  store %struct.Memory* %call_44ecee, %struct.Memory** %MEMORY

  ; Code: .L_44ecf8:	 RIP: 44ecf8	 Bytes: 0
  br label %block_.L_44ecf8
block_.L_44ecf8:

  ; Code: cmpl $0x5, -0x1b8(%rbp)	 RIP: 44ecf8	 Bytes: 7
  %loadMem_44ecf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ecf8 = call %struct.Memory* @routine_cmpl__0x5__MINUS0x1b8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ecf8)
  store %struct.Memory* %call_44ecf8, %struct.Memory** %MEMORY

  ; Code: jge .L_44edb0	 RIP: 44ecff	 Bytes: 6
  %loadMem_44ecff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ecff = call %struct.Memory* @routine_jge_.L_44edb0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ecff, i8* %BRANCH_TAKEN, i64 177, i64 6, i64 6)
  store %struct.Memory* %call_44ecff, %struct.Memory** %MEMORY

  %loadBr_44ecff = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44ecff = icmp eq i8 %loadBr_44ecff, 1
  br i1 %cmpBr_44ecff, label %block_.L_44edb0, label %block_44ed05

block_44ed05:
  ; Code: movl -0x1b8(%rbp), %eax	 RIP: 44ed05	 Bytes: 6
  %loadMem_44ed05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ed05 = call %struct.Memory* @routine_movl_MINUS0x1b8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ed05)
  store %struct.Memory* %call_44ed05, %struct.Memory** %MEMORY

  ; Code: cmpl 0xb54ce4, %eax	 RIP: 44ed0b	 Bytes: 7
  %loadMem_44ed0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ed0b = call %struct.Memory* @routine_cmpl_0xb54ce4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ed0b)
  store %struct.Memory* %call_44ed0b, %struct.Memory** %MEMORY

  ; Code: jge .L_44ed65	 RIP: 44ed12	 Bytes: 6
  %loadMem_44ed12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ed12 = call %struct.Memory* @routine_jge_.L_44ed65(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ed12, i8* %BRANCH_TAKEN, i64 83, i64 6, i64 6)
  store %struct.Memory* %call_44ed12, %struct.Memory** %MEMORY

  %loadBr_44ed12 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44ed12 = icmp eq i8 %loadBr_44ed12, 1
  br i1 %cmpBr_44ed12, label %block_.L_44ed65, label %block_44ed18

block_44ed18:
  ; Code: movl -0x1b8(%rbp), %edi	 RIP: 44ed18	 Bytes: 6
  %loadMem_44ed18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ed18 = call %struct.Memory* @routine_movl_MINUS0x1b8__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ed18)
  store %struct.Memory* %call_44ed18, %struct.Memory** %MEMORY

  ; Code: movq -0x1c8(%rbp), %rax	 RIP: 44ed1e	 Bytes: 7
  %loadMem_44ed1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ed1e = call %struct.Memory* @routine_movq_MINUS0x1c8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ed1e)
  store %struct.Memory* %call_44ed1e, %struct.Memory** %MEMORY

  ; Code: addq $0x1b4, %rax	 RIP: 44ed25	 Bytes: 6
  %loadMem_44ed25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ed25 = call %struct.Memory* @routine_addq__0x1b4___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ed25)
  store %struct.Memory* %call_44ed25, %struct.Memory** %MEMORY

  ; Code: movslq -0x1b8(%rbp), %rcx	 RIP: 44ed2b	 Bytes: 7
  %loadMem_44ed2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ed2b = call %struct.Memory* @routine_movslq_MINUS0x1b8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ed2b)
  store %struct.Memory* %call_44ed2b, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rcx	 RIP: 44ed32	 Bytes: 4
  %loadMem_44ed32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ed32 = call %struct.Memory* @routine_shlq__0x2___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ed32)
  store %struct.Memory* %call_44ed32, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44ed36	 Bytes: 3
  %loadMem_44ed36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ed36 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ed36)
  store %struct.Memory* %call_44ed36, %struct.Memory** %MEMORY

  ; Code: movq -0x1c8(%rbp), %rcx	 RIP: 44ed39	 Bytes: 7
  %loadMem_44ed39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ed39 = call %struct.Memory* @routine_movq_MINUS0x1c8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ed39)
  store %struct.Memory* %call_44ed39, %struct.Memory** %MEMORY

  ; Code: addq $0x1c8, %rcx	 RIP: 44ed40	 Bytes: 7
  %loadMem_44ed40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ed40 = call %struct.Memory* @routine_addq__0x1c8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ed40)
  store %struct.Memory* %call_44ed40, %struct.Memory** %MEMORY

  ; Code: movslq -0x1b8(%rbp), %rdx	 RIP: 44ed47	 Bytes: 7
  %loadMem_44ed47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ed47 = call %struct.Memory* @routine_movslq_MINUS0x1b8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ed47)
  store %struct.Memory* %call_44ed47, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rdx	 RIP: 44ed4e	 Bytes: 4
  %loadMem_44ed4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ed4e = call %struct.Memory* @routine_shlq__0x2___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ed4e)
  store %struct.Memory* %call_44ed4e, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 44ed52	 Bytes: 3
  %loadMem_44ed52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ed52 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ed52)
  store %struct.Memory* %call_44ed52, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 44ed55	 Bytes: 3
  %loadMem_44ed55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ed55 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ed55)
  store %struct.Memory* %call_44ed55, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdx	 RIP: 44ed58	 Bytes: 3
  %loadMem_44ed58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ed58 = call %struct.Memory* @routine_movq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ed58)
  store %struct.Memory* %call_44ed58, %struct.Memory** %MEMORY

  ; Code: callq .get_move_from_stack	 RIP: 44ed5b	 Bytes: 5
  %loadMem1_44ed5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44ed5b = call %struct.Memory* @routine_callq_.get_move_from_stack(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44ed5b, i64 -233323, i64 5, i64 5)
  store %struct.Memory* %call1_44ed5b, %struct.Memory** %MEMORY

  %loadMem2_44ed5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44ed5b = load i64, i64* %3
  %call2_44ed5b = call %struct.Memory* @sub_415df0.get_move_from_stack(%struct.State* %0, i64  %loadPC_44ed5b, %struct.Memory* %loadMem2_44ed5b)
  store %struct.Memory* %call2_44ed5b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44ed97	 RIP: 44ed60	 Bytes: 5
  %loadMem_44ed60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ed60 = call %struct.Memory* @routine_jmpq_.L_44ed97(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ed60, i64 55, i64 5)
  store %struct.Memory* %call_44ed60, %struct.Memory** %MEMORY

  br label %block_.L_44ed97

  ; Code: .L_44ed65:	 RIP: 44ed65	 Bytes: 0
block_.L_44ed65:

  ; Code: movq -0x1c8(%rbp), %rax	 RIP: 44ed65	 Bytes: 7
  %loadMem_44ed65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ed65 = call %struct.Memory* @routine_movq_MINUS0x1c8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ed65)
  store %struct.Memory* %call_44ed65, %struct.Memory** %MEMORY

  ; Code: movslq -0x1b8(%rbp), %rcx	 RIP: 44ed6c	 Bytes: 7
  %loadMem_44ed6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ed6c = call %struct.Memory* @routine_movslq_MINUS0x1b8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ed6c)
  store %struct.Memory* %call_44ed6c, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x1b4(%rax,%rcx,4)	 RIP: 44ed73	 Bytes: 11
  %loadMem_44ed73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ed73 = call %struct.Memory* @routine_movl__0x0__0x1b4__rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ed73)
  store %struct.Memory* %call_44ed73, %struct.Memory** %MEMORY

  ; Code: movq -0x1c8(%rbp), %rax	 RIP: 44ed7e	 Bytes: 7
  %loadMem_44ed7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ed7e = call %struct.Memory* @routine_movq_MINUS0x1c8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ed7e)
  store %struct.Memory* %call_44ed7e, %struct.Memory** %MEMORY

  ; Code: movslq -0x1b8(%rbp), %rcx	 RIP: 44ed85	 Bytes: 7
  %loadMem_44ed85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ed85 = call %struct.Memory* @routine_movslq_MINUS0x1b8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ed85)
  store %struct.Memory* %call_44ed85, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x1c8(%rax,%rcx,4)	 RIP: 44ed8c	 Bytes: 11
  %loadMem_44ed8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ed8c = call %struct.Memory* @routine_movl__0x0__0x1c8__rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ed8c)
  store %struct.Memory* %call_44ed8c, %struct.Memory** %MEMORY

  ; Code: .L_44ed97:	 RIP: 44ed97	 Bytes: 0
  br label %block_.L_44ed97
block_.L_44ed97:

  ; Code: jmpq .L_44ed9c	 RIP: 44ed97	 Bytes: 5
  %loadMem_44ed97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ed97 = call %struct.Memory* @routine_jmpq_.L_44ed9c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ed97, i64 5, i64 5)
  store %struct.Memory* %call_44ed97, %struct.Memory** %MEMORY

  br label %block_.L_44ed9c

  ; Code: .L_44ed9c:	 RIP: 44ed9c	 Bytes: 0
block_.L_44ed9c:

  ; Code: movl -0x1b8(%rbp), %eax	 RIP: 44ed9c	 Bytes: 6
  %loadMem_44ed9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ed9c = call %struct.Memory* @routine_movl_MINUS0x1b8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ed9c)
  store %struct.Memory* %call_44ed9c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44eda2	 Bytes: 3
  %loadMem_44eda2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eda2 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eda2)
  store %struct.Memory* %call_44eda2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1b8(%rbp)	 RIP: 44eda5	 Bytes: 6
  %loadMem_44eda5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eda5 = call %struct.Memory* @routine_movl__eax__MINUS0x1b8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eda5)
  store %struct.Memory* %call_44eda5, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44ecf8	 RIP: 44edab	 Bytes: 5
  %loadMem_44edab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44edab = call %struct.Memory* @routine_jmpq_.L_44ecf8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44edab, i64 -179, i64 5)
  store %struct.Memory* %call_44edab, %struct.Memory** %MEMORY

  br label %block_.L_44ecf8

  ; Code: .L_44edb0:	 RIP: 44edb0	 Bytes: 0
block_.L_44edb0:

  ; Code: movl $0x15, -0x1b4(%rbp)	 RIP: 44edb0	 Bytes: 10
  %loadMem_44edb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44edb0 = call %struct.Memory* @routine_movl__0x15__MINUS0x1b4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44edb0)
  store %struct.Memory* %call_44edb0, %struct.Memory** %MEMORY

  ; Code: .L_44edba:	 RIP: 44edba	 Bytes: 0
  br label %block_.L_44edba
block_.L_44edba:

  ; Code: cmpl $0x190, -0x1b4(%rbp)	 RIP: 44edba	 Bytes: 10
  %loadMem_44edba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44edba = call %struct.Memory* @routine_cmpl__0x190__MINUS0x1b4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44edba)
  store %struct.Memory* %call_44edba, %struct.Memory** %MEMORY

  ; Code: jge .L_44edfa	 RIP: 44edc4	 Bytes: 6
  %loadMem_44edc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44edc4 = call %struct.Memory* @routine_jge_.L_44edfa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44edc4, i8* %BRANCH_TAKEN, i64 54, i64 6, i64 6)
  store %struct.Memory* %call_44edc4, %struct.Memory** %MEMORY

  %loadBr_44edc4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44edc4 = icmp eq i8 %loadBr_44edc4, 1
  br i1 %cmpBr_44edc4, label %block_.L_44edfa, label %block_44edca

block_44edca:
  ; Code: movslq -0x1b4(%rbp), %rax	 RIP: 44edca	 Bytes: 7
  %loadMem_44edca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44edca = call %struct.Memory* @routine_movslq_MINUS0x1b4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44edca)
  store %struct.Memory* %call_44edca, %struct.Memory** %MEMORY

  ; Code: movb 0xb05020(,%rax,1), %cl	 RIP: 44edd1	 Bytes: 7
  %loadMem_44edd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44edd1 = call %struct.Memory* @routine_movb_0xb05020___rax_1____cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44edd1)
  store %struct.Memory* %call_44edd1, %struct.Memory** %MEMORY

  ; Code: movslq -0x1b4(%rbp), %rax	 RIP: 44edd8	 Bytes: 7
  %loadMem_44edd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44edd8 = call %struct.Memory* @routine_movslq_MINUS0x1b4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44edd8)
  store %struct.Memory* %call_44edd8, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x1b0(%rbp,%rax,1)	 RIP: 44eddf	 Bytes: 7
  %loadMem_44eddf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eddf = call %struct.Memory* @routine_movb__cl__MINUS0x1b0__rbp__rax_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eddf)
  store %struct.Memory* %call_44eddf, %struct.Memory** %MEMORY

  ; Code: movl -0x1b4(%rbp), %eax	 RIP: 44ede6	 Bytes: 6
  %loadMem_44ede6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ede6 = call %struct.Memory* @routine_movl_MINUS0x1b4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ede6)
  store %struct.Memory* %call_44ede6, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44edec	 Bytes: 3
  %loadMem_44edec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44edec = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44edec)
  store %struct.Memory* %call_44edec, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1b4(%rbp)	 RIP: 44edef	 Bytes: 6
  %loadMem_44edef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44edef = call %struct.Memory* @routine_movl__eax__MINUS0x1b4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44edef)
  store %struct.Memory* %call_44edef, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44edba	 RIP: 44edf5	 Bytes: 5
  %loadMem_44edf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44edf5 = call %struct.Memory* @routine_jmpq_.L_44edba(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44edf5, i64 -59, i64 5)
  store %struct.Memory* %call_44edf5, %struct.Memory** %MEMORY

  br label %block_.L_44edba

  ; Code: .L_44edfa:	 RIP: 44edfa	 Bytes: 0
block_.L_44edfa:

  ; Code: movl $0x1, %edx	 RIP: 44edfa	 Bytes: 5
  %loadMem_44edfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44edfa = call %struct.Memory* @routine_movl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44edfa)
  store %struct.Memory* %call_44edfa, %struct.Memory** %MEMORY

  ; Code: leaq -0x1b0(%rbp), %rsi	 RIP: 44edff	 Bytes: 7
  %loadMem_44edff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44edff = call %struct.Memory* @routine_leaq_MINUS0x1b0__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44edff)
  store %struct.Memory* %call_44edff, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %edi	 RIP: 44ee06	 Bytes: 3
  %loadMem_44ee06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ee06 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ee06)
  store %struct.Memory* %call_44ee06, %struct.Memory** %MEMORY

  ; Code: callq .mark_string	 RIP: 44ee09	 Bytes: 5
  %loadMem1_44ee09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44ee09 = call %struct.Memory* @routine_callq_.mark_string(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44ee09, i64 -233817, i64 5, i64 5)
  store %struct.Memory* %call1_44ee09, %struct.Memory** %MEMORY

  %loadMem2_44ee09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44ee09 = load i64, i64* %3
  %call2_44ee09 = call %struct.Memory* @sub_415cb0.mark_string(%struct.State* %0, i64  %loadPC_44ee09, %struct.Memory* %loadMem2_44ee09)
  store %struct.Memory* %call2_44ee09, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0xc(%rbp)	 RIP: 44ee0e	 Bytes: 4
  %loadMem_44ee0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ee0e = call %struct.Memory* @routine_cmpl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ee0e)
  store %struct.Memory* %call_44ee0e, %struct.Memory** %MEMORY

  ; Code: je .L_44ee2e	 RIP: 44ee12	 Bytes: 6
  %loadMem_44ee12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ee12 = call %struct.Memory* @routine_je_.L_44ee2e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ee12, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_44ee12, %struct.Memory** %MEMORY

  %loadBr_44ee12 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44ee12 = icmp eq i8 %loadBr_44ee12, 1
  br i1 %cmpBr_44ee12, label %block_.L_44ee2e, label %block_44ee18

block_44ee18:
  ; Code: cmpl $0x0, -0x10(%rbp)	 RIP: 44ee18	 Bytes: 4
  %loadMem_44ee18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ee18 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ee18)
  store %struct.Memory* %call_44ee18, %struct.Memory** %MEMORY

  ; Code: je .L_44ee2e	 RIP: 44ee1c	 Bytes: 6
  %loadMem_44ee1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ee1c = call %struct.Memory* @routine_je_.L_44ee2e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ee1c, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_44ee1c, %struct.Memory** %MEMORY

  %loadBr_44ee1c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44ee1c = icmp eq i8 %loadBr_44ee1c, 1
  br i1 %cmpBr_44ee1c, label %block_.L_44ee2e, label %block_44ee22

block_44ee22:
  ; Code: movslq -0x10(%rbp), %rax	 RIP: 44ee22	 Bytes: 4
  %loadMem_44ee22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ee22 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ee22)
  store %struct.Memory* %call_44ee22, %struct.Memory** %MEMORY

  ; Code: movb $0x1, -0x1b0(%rbp,%rax,1)	 RIP: 44ee26	 Bytes: 8
  %loadMem_44ee26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ee26 = call %struct.Memory* @routine_movb__0x1__MINUS0x1b0__rbp__rax_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ee26)
  store %struct.Memory* %call_44ee26, %struct.Memory** %MEMORY

  ; Code: .L_44ee2e:	 RIP: 44ee2e	 Bytes: 0
  br label %block_.L_44ee2e
block_.L_44ee2e:

  ; Code: movl $0x15, -0x1b4(%rbp)	 RIP: 44ee2e	 Bytes: 10
  %loadMem_44ee2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ee2e = call %struct.Memory* @routine_movl__0x15__MINUS0x1b4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ee2e)
  store %struct.Memory* %call_44ee2e, %struct.Memory** %MEMORY

  ; Code: .L_44ee38:	 RIP: 44ee38	 Bytes: 0
  br label %block_.L_44ee38
block_.L_44ee38:

  ; Code: cmpl $0x190, -0x1b4(%rbp)	 RIP: 44ee38	 Bytes: 10
  %loadMem_44ee38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ee38 = call %struct.Memory* @routine_cmpl__0x190__MINUS0x1b4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ee38)
  store %struct.Memory* %call_44ee38, %struct.Memory** %MEMORY

  ; Code: jge .L_44efe3	 RIP: 44ee42	 Bytes: 6
  %loadMem_44ee42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ee42 = call %struct.Memory* @routine_jge_.L_44efe3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ee42, i8* %BRANCH_TAKEN, i64 417, i64 6, i64 6)
  store %struct.Memory* %call_44ee42, %struct.Memory** %MEMORY

  %loadBr_44ee42 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44ee42 = icmp eq i8 %loadBr_44ee42, 1
  br i1 %cmpBr_44ee42, label %block_.L_44efe3, label %block_44ee48

block_44ee48:
  ; Code: movslq -0x1b4(%rbp), %rax	 RIP: 44ee48	 Bytes: 7
  %loadMem_44ee48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ee48 = call %struct.Memory* @routine_movslq_MINUS0x1b4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ee48)
  store %struct.Memory* %call_44ee48, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 44ee4f	 Bytes: 8
  %loadMem_44ee4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ee4f = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ee4f)
  store %struct.Memory* %call_44ee4f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %ecx	 RIP: 44ee57	 Bytes: 3
  %loadMem_44ee57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ee57 = call %struct.Memory* @routine_cmpl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ee57)
  store %struct.Memory* %call_44ee57, %struct.Memory** %MEMORY

  ; Code: jne .L_44ee65	 RIP: 44ee5a	 Bytes: 6
  %loadMem_44ee5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ee5a = call %struct.Memory* @routine_jne_.L_44ee65(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ee5a, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_44ee5a, %struct.Memory** %MEMORY

  %loadBr_44ee5a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44ee5a = icmp eq i8 %loadBr_44ee5a, 1
  br i1 %cmpBr_44ee5a, label %block_.L_44ee65, label %block_44ee60

block_44ee60:
  ; Code: jmpq .L_44efcf	 RIP: 44ee60	 Bytes: 5
  %loadMem_44ee60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ee60 = call %struct.Memory* @routine_jmpq_.L_44efcf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ee60, i64 367, i64 5)
  store %struct.Memory* %call_44ee60, %struct.Memory** %MEMORY

  br label %block_.L_44efcf

  ; Code: .L_44ee65:	 RIP: 44ee65	 Bytes: 0
block_.L_44ee65:

  ; Code: movslq -0x1b4(%rbp), %rax	 RIP: 44ee65	 Bytes: 7
  %loadMem_44ee65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ee65 = call %struct.Memory* @routine_movslq_MINUS0x1b4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ee65)
  store %struct.Memory* %call_44ee65, %struct.Memory** %MEMORY

  ; Code: movsbl -0x1b0(%rbp,%rax,1), %ecx	 RIP: 44ee6c	 Bytes: 8
  %loadMem_44ee6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ee6c = call %struct.Memory* @routine_movsbl_MINUS0x1b0__rbp__rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ee6c)
  store %struct.Memory* %call_44ee6c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 44ee74	 Bytes: 3
  %loadMem_44ee74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ee74 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ee74)
  store %struct.Memory* %call_44ee74, %struct.Memory** %MEMORY

  ; Code: je .L_44ee82	 RIP: 44ee77	 Bytes: 6
  %loadMem_44ee77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ee77 = call %struct.Memory* @routine_je_.L_44ee82(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ee77, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_44ee77, %struct.Memory** %MEMORY

  %loadBr_44ee77 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44ee77 = icmp eq i8 %loadBr_44ee77, 1
  br i1 %cmpBr_44ee77, label %block_.L_44ee82, label %block_44ee7d

block_44ee7d:
  ; Code: jmpq .L_44efcf	 RIP: 44ee7d	 Bytes: 5
  %loadMem_44ee7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ee7d = call %struct.Memory* @routine_jmpq_.L_44efcf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ee7d, i64 338, i64 5)
  store %struct.Memory* %call_44ee7d, %struct.Memory** %MEMORY

  br label %block_.L_44efcf

  ; Code: .L_44ee82:	 RIP: 44ee82	 Bytes: 0
block_.L_44ee82:

  ; Code: movl -0x1b4(%rbp), %eax	 RIP: 44ee82	 Bytes: 6
  %loadMem_44ee82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ee82 = call %struct.Memory* @routine_movl_MINUS0x1b4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ee82)
  store %struct.Memory* %call_44ee82, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 44ee88	 Bytes: 3
  %loadMem_44ee88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ee88 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ee88)
  store %struct.Memory* %call_44ee88, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 44ee8b	 Bytes: 3
  %loadMem_44ee8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ee8b = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ee8b)
  store %struct.Memory* %call_44ee8b, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 44ee8e	 Bytes: 8
  %loadMem_44ee8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ee8e = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ee8e)
  store %struct.Memory* %call_44ee8e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 44ee96	 Bytes: 3
  %loadMem_44ee96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ee96 = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ee96)
  store %struct.Memory* %call_44ee96, %struct.Memory** %MEMORY

  ; Code: je .L_44eebc	 RIP: 44ee99	 Bytes: 6
  %loadMem_44ee99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ee99 = call %struct.Memory* @routine_je_.L_44eebc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ee99, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_44ee99, %struct.Memory** %MEMORY

  %loadBr_44ee99 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44ee99 = icmp eq i8 %loadBr_44ee99, 1
  br i1 %cmpBr_44ee99, label %block_.L_44eebc, label %block_44ee9f

block_44ee9f:
  ; Code: movl -0x1b4(%rbp), %eax	 RIP: 44ee9f	 Bytes: 6
  %loadMem_44ee9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ee9f = call %struct.Memory* @routine_movl_MINUS0x1b4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ee9f)
  store %struct.Memory* %call_44ee9f, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 44eea5	 Bytes: 3
  %loadMem_44eea5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eea5 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eea5)
  store %struct.Memory* %call_44eea5, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 44eea8	 Bytes: 3
  %loadMem_44eea8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eea8 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eea8)
  store %struct.Memory* %call_44eea8, %struct.Memory** %MEMORY

  ; Code: movsbl -0x1b0(%rbp,%rcx,1), %eax	 RIP: 44eeab	 Bytes: 8
  %loadMem_44eeab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eeab = call %struct.Memory* @routine_movsbl_MINUS0x1b0__rbp__rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eeab)
  store %struct.Memory* %call_44eeab, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, %eax	 RIP: 44eeb3	 Bytes: 3
  %loadMem_44eeb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eeb3 = call %struct.Memory* @routine_cmpl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eeb3)
  store %struct.Memory* %call_44eeb3, %struct.Memory** %MEMORY

  ; Code: je .L_44ef6a	 RIP: 44eeb6	 Bytes: 6
  %loadMem_44eeb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eeb6 = call %struct.Memory* @routine_je_.L_44ef6a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eeb6, i8* %BRANCH_TAKEN, i64 180, i64 6, i64 6)
  store %struct.Memory* %call_44eeb6, %struct.Memory** %MEMORY

  %loadBr_44eeb6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44eeb6 = icmp eq i8 %loadBr_44eeb6, 1
  br i1 %cmpBr_44eeb6, label %block_.L_44ef6a, label %block_.L_44eebc

  ; Code: .L_44eebc:	 RIP: 44eebc	 Bytes: 0
block_.L_44eebc:

  ; Code: movl -0x1b4(%rbp), %eax	 RIP: 44eebc	 Bytes: 6
  %loadMem_44eebc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eebc = call %struct.Memory* @routine_movl_MINUS0x1b4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eebc)
  store %struct.Memory* %call_44eebc, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 44eec2	 Bytes: 3
  %loadMem_44eec2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eec2 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eec2)
  store %struct.Memory* %call_44eec2, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 44eec5	 Bytes: 3
  %loadMem_44eec5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eec5 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eec5)
  store %struct.Memory* %call_44eec5, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 44eec8	 Bytes: 8
  %loadMem_44eec8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eec8 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eec8)
  store %struct.Memory* %call_44eec8, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 44eed0	 Bytes: 3
  %loadMem_44eed0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eed0 = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eed0)
  store %struct.Memory* %call_44eed0, %struct.Memory** %MEMORY

  ; Code: je .L_44eef6	 RIP: 44eed3	 Bytes: 6
  %loadMem_44eed3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eed3 = call %struct.Memory* @routine_je_.L_44eef6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eed3, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_44eed3, %struct.Memory** %MEMORY

  %loadBr_44eed3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44eed3 = icmp eq i8 %loadBr_44eed3, 1
  br i1 %cmpBr_44eed3, label %block_.L_44eef6, label %block_44eed9

block_44eed9:
  ; Code: movl -0x1b4(%rbp), %eax	 RIP: 44eed9	 Bytes: 6
  %loadMem_44eed9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eed9 = call %struct.Memory* @routine_movl_MINUS0x1b4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eed9)
  store %struct.Memory* %call_44eed9, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 44eedf	 Bytes: 3
  %loadMem_44eedf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eedf = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eedf)
  store %struct.Memory* %call_44eedf, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 44eee2	 Bytes: 3
  %loadMem_44eee2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eee2 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eee2)
  store %struct.Memory* %call_44eee2, %struct.Memory** %MEMORY

  ; Code: movsbl -0x1b0(%rbp,%rcx,1), %eax	 RIP: 44eee5	 Bytes: 8
  %loadMem_44eee5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eee5 = call %struct.Memory* @routine_movsbl_MINUS0x1b0__rbp__rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eee5)
  store %struct.Memory* %call_44eee5, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, %eax	 RIP: 44eeed	 Bytes: 3
  %loadMem_44eeed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eeed = call %struct.Memory* @routine_cmpl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eeed)
  store %struct.Memory* %call_44eeed, %struct.Memory** %MEMORY

  ; Code: je .L_44ef6a	 RIP: 44eef0	 Bytes: 6
  %loadMem_44eef0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eef0 = call %struct.Memory* @routine_je_.L_44ef6a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eef0, i8* %BRANCH_TAKEN, i64 122, i64 6, i64 6)
  store %struct.Memory* %call_44eef0, %struct.Memory** %MEMORY

  %loadBr_44eef0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44eef0 = icmp eq i8 %loadBr_44eef0, 1
  br i1 %cmpBr_44eef0, label %block_.L_44ef6a, label %block_.L_44eef6

  ; Code: .L_44eef6:	 RIP: 44eef6	 Bytes: 0
block_.L_44eef6:

  ; Code: movl -0x1b4(%rbp), %eax	 RIP: 44eef6	 Bytes: 6
  %loadMem_44eef6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eef6 = call %struct.Memory* @routine_movl_MINUS0x1b4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eef6)
  store %struct.Memory* %call_44eef6, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 44eefc	 Bytes: 3
  %loadMem_44eefc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eefc = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eefc)
  store %struct.Memory* %call_44eefc, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 44eeff	 Bytes: 3
  %loadMem_44eeff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eeff = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eeff)
  store %struct.Memory* %call_44eeff, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 44ef02	 Bytes: 8
  %loadMem_44ef02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ef02 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ef02)
  store %struct.Memory* %call_44ef02, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 44ef0a	 Bytes: 3
  %loadMem_44ef0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ef0a = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ef0a)
  store %struct.Memory* %call_44ef0a, %struct.Memory** %MEMORY

  ; Code: je .L_44ef30	 RIP: 44ef0d	 Bytes: 6
  %loadMem_44ef0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ef0d = call %struct.Memory* @routine_je_.L_44ef30(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ef0d, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_44ef0d, %struct.Memory** %MEMORY

  %loadBr_44ef0d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44ef0d = icmp eq i8 %loadBr_44ef0d, 1
  br i1 %cmpBr_44ef0d, label %block_.L_44ef30, label %block_44ef13

block_44ef13:
  ; Code: movl -0x1b4(%rbp), %eax	 RIP: 44ef13	 Bytes: 6
  %loadMem_44ef13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ef13 = call %struct.Memory* @routine_movl_MINUS0x1b4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ef13)
  store %struct.Memory* %call_44ef13, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 44ef19	 Bytes: 3
  %loadMem_44ef19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ef19 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ef19)
  store %struct.Memory* %call_44ef19, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 44ef1c	 Bytes: 3
  %loadMem_44ef1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ef1c = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ef1c)
  store %struct.Memory* %call_44ef1c, %struct.Memory** %MEMORY

  ; Code: movsbl -0x1b0(%rbp,%rcx,1), %eax	 RIP: 44ef1f	 Bytes: 8
  %loadMem_44ef1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ef1f = call %struct.Memory* @routine_movsbl_MINUS0x1b0__rbp__rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ef1f)
  store %struct.Memory* %call_44ef1f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, %eax	 RIP: 44ef27	 Bytes: 3
  %loadMem_44ef27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ef27 = call %struct.Memory* @routine_cmpl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ef27)
  store %struct.Memory* %call_44ef27, %struct.Memory** %MEMORY

  ; Code: je .L_44ef6a	 RIP: 44ef2a	 Bytes: 6
  %loadMem_44ef2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ef2a = call %struct.Memory* @routine_je_.L_44ef6a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ef2a, i8* %BRANCH_TAKEN, i64 64, i64 6, i64 6)
  store %struct.Memory* %call_44ef2a, %struct.Memory** %MEMORY

  %loadBr_44ef2a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44ef2a = icmp eq i8 %loadBr_44ef2a, 1
  br i1 %cmpBr_44ef2a, label %block_.L_44ef6a, label %block_.L_44ef30

  ; Code: .L_44ef30:	 RIP: 44ef30	 Bytes: 0
block_.L_44ef30:

  ; Code: movl -0x1b4(%rbp), %eax	 RIP: 44ef30	 Bytes: 6
  %loadMem_44ef30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ef30 = call %struct.Memory* @routine_movl_MINUS0x1b4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ef30)
  store %struct.Memory* %call_44ef30, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44ef36	 Bytes: 3
  %loadMem_44ef36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ef36 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ef36)
  store %struct.Memory* %call_44ef36, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 44ef39	 Bytes: 3
  %loadMem_44ef39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ef39 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ef39)
  store %struct.Memory* %call_44ef39, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 44ef3c	 Bytes: 8
  %loadMem_44ef3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ef3c = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ef3c)
  store %struct.Memory* %call_44ef3c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 44ef44	 Bytes: 3
  %loadMem_44ef44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ef44 = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ef44)
  store %struct.Memory* %call_44ef44, %struct.Memory** %MEMORY

  ; Code: je .L_44efca	 RIP: 44ef47	 Bytes: 6
  %loadMem_44ef47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ef47 = call %struct.Memory* @routine_je_.L_44efca(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ef47, i8* %BRANCH_TAKEN, i64 131, i64 6, i64 6)
  store %struct.Memory* %call_44ef47, %struct.Memory** %MEMORY

  %loadBr_44ef47 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44ef47 = icmp eq i8 %loadBr_44ef47, 1
  br i1 %cmpBr_44ef47, label %block_.L_44efca, label %block_44ef4d

block_44ef4d:
  ; Code: movl -0x1b4(%rbp), %eax	 RIP: 44ef4d	 Bytes: 6
  %loadMem_44ef4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ef4d = call %struct.Memory* @routine_movl_MINUS0x1b4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ef4d)
  store %struct.Memory* %call_44ef4d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44ef53	 Bytes: 3
  %loadMem_44ef53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ef53 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ef53)
  store %struct.Memory* %call_44ef53, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 44ef56	 Bytes: 3
  %loadMem_44ef56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ef56 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ef56)
  store %struct.Memory* %call_44ef56, %struct.Memory** %MEMORY

  ; Code: movsbl -0x1b0(%rbp,%rcx,1), %eax	 RIP: 44ef59	 Bytes: 8
  %loadMem_44ef59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ef59 = call %struct.Memory* @routine_movsbl_MINUS0x1b0__rbp__rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ef59)
  store %struct.Memory* %call_44ef59, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, %eax	 RIP: 44ef61	 Bytes: 3
  %loadMem_44ef61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ef61 = call %struct.Memory* @routine_cmpl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ef61)
  store %struct.Memory* %call_44ef61, %struct.Memory** %MEMORY

  ; Code: jne .L_44efca	 RIP: 44ef64	 Bytes: 6
  %loadMem_44ef64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ef64 = call %struct.Memory* @routine_jne_.L_44efca(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ef64, i8* %BRANCH_TAKEN, i64 102, i64 6, i64 6)
  store %struct.Memory* %call_44ef64, %struct.Memory** %MEMORY

  %loadBr_44ef64 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44ef64 = icmp eq i8 %loadBr_44ef64, 1
  br i1 %cmpBr_44ef64, label %block_.L_44efca, label %block_.L_44ef6a

  ; Code: .L_44ef6a:	 RIP: 44ef6a	 Bytes: 0
block_.L_44ef6a:

  ; Code: movslq -0x1b4(%rbp), %rax	 RIP: 44ef6a	 Bytes: 7
  %loadMem_44ef6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ef6a = call %struct.Memory* @routine_movslq_MINUS0x1b4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ef6a)
  store %struct.Memory* %call_44ef6a, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 44ef71	 Bytes: 8
  %loadMem_44ef71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ef71 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ef71)
  store %struct.Memory* %call_44ef71, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, %ecx	 RIP: 44ef79	 Bytes: 3
  %loadMem_44ef79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ef79 = call %struct.Memory* @routine_cmpl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ef79)
  store %struct.Memory* %call_44ef79, %struct.Memory** %MEMORY

  ; Code: je .L_44ef9a	 RIP: 44ef7c	 Bytes: 6
  %loadMem_44ef7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ef7c = call %struct.Memory* @routine_je_.L_44ef9a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ef7c, i8* %BRANCH_TAKEN, i64 30, i64 6, i64 6)
  store %struct.Memory* %call_44ef7c, %struct.Memory** %MEMORY

  %loadBr_44ef7c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44ef7c = icmp eq i8 %loadBr_44ef7c, 1
  br i1 %cmpBr_44ef7c, label %block_.L_44ef9a, label %block_44ef82

block_44ef82:
  ; Code: movslq -0x1b4(%rbp), %rax	 RIP: 44ef82	 Bytes: 7
  %loadMem_44ef82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ef82 = call %struct.Memory* @routine_movslq_MINUS0x1b4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ef82)
  store %struct.Memory* %call_44ef82, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 44ef89	 Bytes: 8
  %loadMem_44ef89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ef89 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ef89)
  store %struct.Memory* %call_44ef89, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, %ecx	 RIP: 44ef91	 Bytes: 3
  %loadMem_44ef91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ef91 = call %struct.Memory* @routine_cmpl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ef91)
  store %struct.Memory* %call_44ef91, %struct.Memory** %MEMORY

  ; Code: jne .L_44efb6	 RIP: 44ef94	 Bytes: 6
  %loadMem_44ef94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ef94 = call %struct.Memory* @routine_jne_.L_44efb6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ef94, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_44ef94, %struct.Memory** %MEMORY

  %loadBr_44ef94 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44ef94 = icmp eq i8 %loadBr_44ef94, 1
  br i1 %cmpBr_44ef94, label %block_.L_44efb6, label %block_.L_44ef9a

  ; Code: .L_44ef9a:	 RIP: 44ef9a	 Bytes: 0
block_.L_44ef9a:

  ; Code: movl $0x2, %edx	 RIP: 44ef9a	 Bytes: 5
  %loadMem_44ef9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ef9a = call %struct.Memory* @routine_movl__0x2___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ef9a)
  store %struct.Memory* %call_44ef9a, %struct.Memory** %MEMORY

  ; Code: leaq -0x1b0(%rbp), %rsi	 RIP: 44ef9f	 Bytes: 7
  %loadMem_44ef9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ef9f = call %struct.Memory* @routine_leaq_MINUS0x1b0__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ef9f)
  store %struct.Memory* %call_44ef9f, %struct.Memory** %MEMORY

  ; Code: movl -0x1b4(%rbp), %edi	 RIP: 44efa6	 Bytes: 6
  %loadMem_44efa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44efa6 = call %struct.Memory* @routine_movl_MINUS0x1b4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44efa6)
  store %struct.Memory* %call_44efa6, %struct.Memory** %MEMORY

  ; Code: callq .mark_string	 RIP: 44efac	 Bytes: 5
  %loadMem1_44efac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44efac = call %struct.Memory* @routine_callq_.mark_string(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44efac, i64 -234236, i64 5, i64 5)
  store %struct.Memory* %call1_44efac, %struct.Memory** %MEMORY

  %loadMem2_44efac = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44efac = load i64, i64* %3
  %call2_44efac = call %struct.Memory* @sub_415cb0.mark_string(%struct.State* %0, i64  %loadPC_44efac, %struct.Memory* %loadMem2_44efac)
  store %struct.Memory* %call2_44efac, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44efc5	 RIP: 44efb1	 Bytes: 5
  %loadMem_44efb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44efb1 = call %struct.Memory* @routine_jmpq_.L_44efc5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44efb1, i64 20, i64 5)
  store %struct.Memory* %call_44efb1, %struct.Memory** %MEMORY

  br label %block_.L_44efc5

  ; Code: .L_44efb6:	 RIP: 44efb6	 Bytes: 0
block_.L_44efb6:

  ; Code: movslq -0x1b4(%rbp), %rax	 RIP: 44efb6	 Bytes: 7
  %loadMem_44efb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44efb6 = call %struct.Memory* @routine_movslq_MINUS0x1b4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44efb6)
  store %struct.Memory* %call_44efb6, %struct.Memory** %MEMORY

  ; Code: movb $0x2, -0x1b0(%rbp,%rax,1)	 RIP: 44efbd	 Bytes: 8
  %loadMem_44efbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44efbd = call %struct.Memory* @routine_movb__0x2__MINUS0x1b0__rbp__rax_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44efbd)
  store %struct.Memory* %call_44efbd, %struct.Memory** %MEMORY

  ; Code: .L_44efc5:	 RIP: 44efc5	 Bytes: 0
  br label %block_.L_44efc5
block_.L_44efc5:

  ; Code: jmpq .L_44efca	 RIP: 44efc5	 Bytes: 5
  %loadMem_44efc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44efc5 = call %struct.Memory* @routine_jmpq_.L_44efca(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44efc5, i64 5, i64 5)
  store %struct.Memory* %call_44efc5, %struct.Memory** %MEMORY

  br label %block_.L_44efca

  ; Code: .L_44efca:	 RIP: 44efca	 Bytes: 0
block_.L_44efca:

  ; Code: jmpq .L_44efcf	 RIP: 44efca	 Bytes: 5
  %loadMem_44efca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44efca = call %struct.Memory* @routine_jmpq_.L_44efcf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44efca, i64 5, i64 5)
  store %struct.Memory* %call_44efca, %struct.Memory** %MEMORY

  br label %block_.L_44efcf

  ; Code: .L_44efcf:	 RIP: 44efcf	 Bytes: 0
block_.L_44efcf:

  ; Code: movl -0x1b4(%rbp), %eax	 RIP: 44efcf	 Bytes: 6
  %loadMem_44efcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44efcf = call %struct.Memory* @routine_movl_MINUS0x1b4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44efcf)
  store %struct.Memory* %call_44efcf, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44efd5	 Bytes: 3
  %loadMem_44efd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44efd5 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44efd5)
  store %struct.Memory* %call_44efd5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1b4(%rbp)	 RIP: 44efd8	 Bytes: 6
  %loadMem_44efd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44efd8 = call %struct.Memory* @routine_movl__eax__MINUS0x1b4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44efd8)
  store %struct.Memory* %call_44efd8, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44ee38	 RIP: 44efde	 Bytes: 5
  %loadMem_44efde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44efde = call %struct.Memory* @routine_jmpq_.L_44ee38(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44efde, i64 -422, i64 5)
  store %struct.Memory* %call_44efde, %struct.Memory** %MEMORY

  br label %block_.L_44ee38

  ; Code: .L_44efe3:	 RIP: 44efe3	 Bytes: 0
block_.L_44efe3:

  ; Code: movl $0x15, -0x1b4(%rbp)	 RIP: 44efe3	 Bytes: 10
  %loadMem_44efe3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44efe3 = call %struct.Memory* @routine_movl__0x15__MINUS0x1b4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44efe3)
  store %struct.Memory* %call_44efe3, %struct.Memory** %MEMORY

  ; Code: .L_44efed:	 RIP: 44efed	 Bytes: 0
  br label %block_.L_44efed
block_.L_44efed:

  ; Code: cmpl $0x190, -0x1b4(%rbp)	 RIP: 44efed	 Bytes: 10
  %loadMem_44efed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44efed = call %struct.Memory* @routine_cmpl__0x190__MINUS0x1b4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44efed)
  store %struct.Memory* %call_44efed, %struct.Memory** %MEMORY

  ; Code: jge .L_44f097	 RIP: 44eff7	 Bytes: 6
  %loadMem_44eff7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44eff7 = call %struct.Memory* @routine_jge_.L_44f097(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44eff7, i8* %BRANCH_TAKEN, i64 160, i64 6, i64 6)
  store %struct.Memory* %call_44eff7, %struct.Memory** %MEMORY

  %loadBr_44eff7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44eff7 = icmp eq i8 %loadBr_44eff7, 1
  br i1 %cmpBr_44eff7, label %block_.L_44f097, label %block_44effd

block_44effd:
  ; Code: movslq -0x1b4(%rbp), %rax	 RIP: 44effd	 Bytes: 7
  %loadMem_44effd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44effd = call %struct.Memory* @routine_movslq_MINUS0x1b4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44effd)
  store %struct.Memory* %call_44effd, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 44f004	 Bytes: 8
  %loadMem_44f004 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f004 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f004)
  store %struct.Memory* %call_44f004, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %ecx	 RIP: 44f00c	 Bytes: 3
  %loadMem_44f00c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f00c = call %struct.Memory* @routine_cmpl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f00c)
  store %struct.Memory* %call_44f00c, %struct.Memory** %MEMORY

  ; Code: jne .L_44f01a	 RIP: 44f00f	 Bytes: 6
  %loadMem_44f00f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f00f = call %struct.Memory* @routine_jne_.L_44f01a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f00f, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_44f00f, %struct.Memory** %MEMORY

  %loadBr_44f00f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44f00f = icmp eq i8 %loadBr_44f00f, 1
  br i1 %cmpBr_44f00f, label %block_.L_44f01a, label %block_44f015

block_44f015:
  ; Code: jmpq .L_44f083	 RIP: 44f015	 Bytes: 5
  %loadMem_44f015 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f015 = call %struct.Memory* @routine_jmpq_.L_44f083(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f015, i64 110, i64 5)
  store %struct.Memory* %call_44f015, %struct.Memory** %MEMORY

  br label %block_.L_44f083

  ; Code: .L_44f01a:	 RIP: 44f01a	 Bytes: 0
block_.L_44f01a:

  ; Code: movslq -0x1b4(%rbp), %rax	 RIP: 44f01a	 Bytes: 7
  %loadMem_44f01a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f01a = call %struct.Memory* @routine_movslq_MINUS0x1b4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f01a)
  store %struct.Memory* %call_44f01a, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 44f021	 Bytes: 8
  %loadMem_44f021 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f021 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f021)
  store %struct.Memory* %call_44f021, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, %ecx	 RIP: 44f029	 Bytes: 3
  %loadMem_44f029 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f029 = call %struct.Memory* @routine_cmpl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f029)
  store %struct.Memory* %call_44f029, %struct.Memory** %MEMORY

  ; Code: je .L_44f04a	 RIP: 44f02c	 Bytes: 6
  %loadMem_44f02c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f02c = call %struct.Memory* @routine_je_.L_44f04a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f02c, i8* %BRANCH_TAKEN, i64 30, i64 6, i64 6)
  store %struct.Memory* %call_44f02c, %struct.Memory** %MEMORY

  %loadBr_44f02c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44f02c = icmp eq i8 %loadBr_44f02c, 1
  br i1 %cmpBr_44f02c, label %block_.L_44f04a, label %block_44f032

block_44f032:
  ; Code: movslq -0x1b4(%rbp), %rax	 RIP: 44f032	 Bytes: 7
  %loadMem_44f032 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f032 = call %struct.Memory* @routine_movslq_MINUS0x1b4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f032)
  store %struct.Memory* %call_44f032, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 44f039	 Bytes: 8
  %loadMem_44f039 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f039 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f039)
  store %struct.Memory* %call_44f039, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, %ecx	 RIP: 44f041	 Bytes: 3
  %loadMem_44f041 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f041 = call %struct.Memory* @routine_cmpl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f041)
  store %struct.Memory* %call_44f041, %struct.Memory** %MEMORY

  ; Code: jne .L_44f07e	 RIP: 44f044	 Bytes: 6
  %loadMem_44f044 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f044 = call %struct.Memory* @routine_jne_.L_44f07e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f044, i8* %BRANCH_TAKEN, i64 58, i64 6, i64 6)
  store %struct.Memory* %call_44f044, %struct.Memory** %MEMORY

  %loadBr_44f044 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44f044 = icmp eq i8 %loadBr_44f044, 1
  br i1 %cmpBr_44f044, label %block_.L_44f07e, label %block_.L_44f04a

  ; Code: .L_44f04a:	 RIP: 44f04a	 Bytes: 0
block_.L_44f04a:

  ; Code: movq $0xb0eff0, %rax	 RIP: 44f04a	 Bytes: 10
  %loadMem_44f04a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f04a = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f04a)
  store %struct.Memory* %call_44f04a, %struct.Memory** %MEMORY

  ; Code: movslq -0x1b4(%rbp), %rcx	 RIP: 44f054	 Bytes: 7
  %loadMem_44f054 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f054 = call %struct.Memory* @routine_movslq_MINUS0x1b4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f054)
  store %struct.Memory* %call_44f054, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 44f05b	 Bytes: 7
  %loadMem_44f05b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f05b = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f05b)
  store %struct.Memory* %call_44f05b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44f062	 Bytes: 3
  %loadMem_44f062 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f062 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f062)
  store %struct.Memory* %call_44f062, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x34(%rax)	 RIP: 44f065	 Bytes: 4
  %loadMem_44f065 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f065 = call %struct.Memory* @routine_cmpl__0x0__0x34__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f065)
  store %struct.Memory* %call_44f065, %struct.Memory** %MEMORY

  ; Code: je .L_44f07e	 RIP: 44f069	 Bytes: 6
  %loadMem_44f069 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f069 = call %struct.Memory* @routine_je_.L_44f07e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f069, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_44f069, %struct.Memory** %MEMORY

  %loadBr_44f069 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44f069 = icmp eq i8 %loadBr_44f069, 1
  br i1 %cmpBr_44f069, label %block_.L_44f07e, label %block_44f06f

block_44f06f:
  ; Code: movslq -0x1b4(%rbp), %rax	 RIP: 44f06f	 Bytes: 7
  %loadMem_44f06f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f06f = call %struct.Memory* @routine_movslq_MINUS0x1b4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f06f)
  store %struct.Memory* %call_44f06f, %struct.Memory** %MEMORY

  ; Code: movb $0x0, -0x1b0(%rbp,%rax,1)	 RIP: 44f076	 Bytes: 8
  %loadMem_44f076 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f076 = call %struct.Memory* @routine_movb__0x0__MINUS0x1b0__rbp__rax_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f076)
  store %struct.Memory* %call_44f076, %struct.Memory** %MEMORY

  ; Code: .L_44f07e:	 RIP: 44f07e	 Bytes: 0
  br label %block_.L_44f07e
block_.L_44f07e:

  ; Code: jmpq .L_44f083	 RIP: 44f07e	 Bytes: 5
  %loadMem_44f07e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f07e = call %struct.Memory* @routine_jmpq_.L_44f083(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f07e, i64 5, i64 5)
  store %struct.Memory* %call_44f07e, %struct.Memory** %MEMORY

  br label %block_.L_44f083

  ; Code: .L_44f083:	 RIP: 44f083	 Bytes: 0
block_.L_44f083:

  ; Code: movl -0x1b4(%rbp), %eax	 RIP: 44f083	 Bytes: 6
  %loadMem_44f083 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f083 = call %struct.Memory* @routine_movl_MINUS0x1b4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f083)
  store %struct.Memory* %call_44f083, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44f089	 Bytes: 3
  %loadMem_44f089 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f089 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f089)
  store %struct.Memory* %call_44f089, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1b4(%rbp)	 RIP: 44f08c	 Bytes: 6
  %loadMem_44f08c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f08c = call %struct.Memory* @routine_movl__eax__MINUS0x1b4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f08c)
  store %struct.Memory* %call_44f08c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44efed	 RIP: 44f092	 Bytes: 5
  %loadMem_44f092 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f092 = call %struct.Memory* @routine_jmpq_.L_44efed(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f092, i64 -165, i64 5)
  store %struct.Memory* %call_44f092, %struct.Memory** %MEMORY

  br label %block_.L_44efed

  ; Code: .L_44f097:	 RIP: 44f097	 Bytes: 0
block_.L_44f097:

  ; Code: movl $0x15, -0x1b4(%rbp)	 RIP: 44f097	 Bytes: 10
  %loadMem_44f097 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f097 = call %struct.Memory* @routine_movl__0x15__MINUS0x1b4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f097)
  store %struct.Memory* %call_44f097, %struct.Memory** %MEMORY

  ; Code: .L_44f0a1:	 RIP: 44f0a1	 Bytes: 0
  br label %block_.L_44f0a1
block_.L_44f0a1:

  ; Code: cmpl $0x190, -0x1b4(%rbp)	 RIP: 44f0a1	 Bytes: 10
  %loadMem_44f0a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f0a1 = call %struct.Memory* @routine_cmpl__0x190__MINUS0x1b4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f0a1)
  store %struct.Memory* %call_44f0a1, %struct.Memory** %MEMORY

  ; Code: jge .L_44f20e	 RIP: 44f0ab	 Bytes: 6
  %loadMem_44f0ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f0ab = call %struct.Memory* @routine_jge_.L_44f20e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f0ab, i8* %BRANCH_TAKEN, i64 355, i64 6, i64 6)
  store %struct.Memory* %call_44f0ab, %struct.Memory** %MEMORY

  %loadBr_44f0ab = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44f0ab = icmp eq i8 %loadBr_44f0ab, 1
  br i1 %cmpBr_44f0ab, label %block_.L_44f20e, label %block_44f0b1

block_44f0b1:
  ; Code: movslq -0x1b4(%rbp), %rax	 RIP: 44f0b1	 Bytes: 7
  %loadMem_44f0b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f0b1 = call %struct.Memory* @routine_movslq_MINUS0x1b4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f0b1)
  store %struct.Memory* %call_44f0b1, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 44f0b8	 Bytes: 8
  %loadMem_44f0b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f0b8 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f0b8)
  store %struct.Memory* %call_44f0b8, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, %ecx	 RIP: 44f0c0	 Bytes: 3
  %loadMem_44f0c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f0c0 = call %struct.Memory* @routine_cmpl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f0c0)
  store %struct.Memory* %call_44f0c0, %struct.Memory** %MEMORY

  ; Code: je .L_44f0f9	 RIP: 44f0c3	 Bytes: 6
  %loadMem_44f0c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f0c3 = call %struct.Memory* @routine_je_.L_44f0f9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f0c3, i8* %BRANCH_TAKEN, i64 54, i64 6, i64 6)
  store %struct.Memory* %call_44f0c3, %struct.Memory** %MEMORY

  %loadBr_44f0c3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44f0c3 = icmp eq i8 %loadBr_44f0c3, 1
  br i1 %cmpBr_44f0c3, label %block_.L_44f0f9, label %block_44f0c9

block_44f0c9:
  ; Code: movslq -0x1b4(%rbp), %rax	 RIP: 44f0c9	 Bytes: 7
  %loadMem_44f0c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f0c9 = call %struct.Memory* @routine_movslq_MINUS0x1b4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f0c9)
  store %struct.Memory* %call_44f0c9, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 44f0d0	 Bytes: 8
  %loadMem_44f0d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f0d0 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f0d0)
  store %struct.Memory* %call_44f0d0, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, %ecx	 RIP: 44f0d8	 Bytes: 3
  %loadMem_44f0d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f0d8 = call %struct.Memory* @routine_cmpl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f0d8)
  store %struct.Memory* %call_44f0d8, %struct.Memory** %MEMORY

  ; Code: je .L_44f0f9	 RIP: 44f0db	 Bytes: 6
  %loadMem_44f0db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f0db = call %struct.Memory* @routine_je_.L_44f0f9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f0db, i8* %BRANCH_TAKEN, i64 30, i64 6, i64 6)
  store %struct.Memory* %call_44f0db, %struct.Memory** %MEMORY

  %loadBr_44f0db = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44f0db = icmp eq i8 %loadBr_44f0db, 1
  br i1 %cmpBr_44f0db, label %block_.L_44f0f9, label %block_44f0e1

block_44f0e1:
  ; Code: movslq -0x1b4(%rbp), %rax	 RIP: 44f0e1	 Bytes: 7
  %loadMem_44f0e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f0e1 = call %struct.Memory* @routine_movslq_MINUS0x1b4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f0e1)
  store %struct.Memory* %call_44f0e1, %struct.Memory** %MEMORY

  ; Code: movsbl -0x1b0(%rbp,%rax,1), %ecx	 RIP: 44f0e8	 Bytes: 8
  %loadMem_44f0e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f0e8 = call %struct.Memory* @routine_movsbl_MINUS0x1b0__rbp__rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f0e8)
  store %struct.Memory* %call_44f0e8, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 44f0f0	 Bytes: 3
  %loadMem_44f0f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f0f0 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f0f0)
  store %struct.Memory* %call_44f0f0, %struct.Memory** %MEMORY

  ; Code: je .L_44f0fe	 RIP: 44f0f3	 Bytes: 6
  %loadMem_44f0f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f0f3 = call %struct.Memory* @routine_je_.L_44f0fe(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f0f3, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_44f0f3, %struct.Memory** %MEMORY

  %loadBr_44f0f3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44f0f3 = icmp eq i8 %loadBr_44f0f3, 1
  br i1 %cmpBr_44f0f3, label %block_.L_44f0fe, label %block_.L_44f0f9

  ; Code: .L_44f0f9:	 RIP: 44f0f9	 Bytes: 0
block_.L_44f0f9:

  ; Code: jmpq .L_44f1fa	 RIP: 44f0f9	 Bytes: 5
  %loadMem_44f0f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f0f9 = call %struct.Memory* @routine_jmpq_.L_44f1fa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f0f9, i64 257, i64 5)
  store %struct.Memory* %call_44f0f9, %struct.Memory** %MEMORY

  br label %block_.L_44f1fa

  ; Code: .L_44f0fe:	 RIP: 44f0fe	 Bytes: 0
block_.L_44f0fe:

  ; Code: movl -0x1b4(%rbp), %eax	 RIP: 44f0fe	 Bytes: 6
  %loadMem_44f0fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f0fe = call %struct.Memory* @routine_movl_MINUS0x1b4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f0fe)
  store %struct.Memory* %call_44f0fe, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 44f104	 Bytes: 3
  %loadMem_44f104 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f104 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f104)
  store %struct.Memory* %call_44f104, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 44f107	 Bytes: 3
  %loadMem_44f107 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f107 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f107)
  store %struct.Memory* %call_44f107, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 44f10a	 Bytes: 8
  %loadMem_44f10a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f10a = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f10a)
  store %struct.Memory* %call_44f10a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 44f112	 Bytes: 3
  %loadMem_44f112 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f112 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f112)
  store %struct.Memory* %call_44f112, %struct.Memory** %MEMORY

  ; Code: jne .L_44f138	 RIP: 44f115	 Bytes: 6
  %loadMem_44f115 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f115 = call %struct.Memory* @routine_jne_.L_44f138(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f115, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_44f115, %struct.Memory** %MEMORY

  %loadBr_44f115 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44f115 = icmp eq i8 %loadBr_44f115, 1
  br i1 %cmpBr_44f115, label %block_.L_44f138, label %block_44f11b

block_44f11b:
  ; Code: movl -0x1b4(%rbp), %eax	 RIP: 44f11b	 Bytes: 6
  %loadMem_44f11b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f11b = call %struct.Memory* @routine_movl_MINUS0x1b4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f11b)
  store %struct.Memory* %call_44f11b, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 44f121	 Bytes: 3
  %loadMem_44f121 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f121 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f121)
  store %struct.Memory* %call_44f121, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 44f124	 Bytes: 3
  %loadMem_44f124 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f124 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f124)
  store %struct.Memory* %call_44f124, %struct.Memory** %MEMORY

  ; Code: movsbl -0x1b0(%rbp,%rcx,1), %eax	 RIP: 44f127	 Bytes: 8
  %loadMem_44f127 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f127 = call %struct.Memory* @routine_movsbl_MINUS0x1b0__rbp__rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f127)
  store %struct.Memory* %call_44f127, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, %eax	 RIP: 44f12f	 Bytes: 3
  %loadMem_44f12f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f12f = call %struct.Memory* @routine_cmpl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f12f)
  store %struct.Memory* %call_44f12f, %struct.Memory** %MEMORY

  ; Code: je .L_44f1e6	 RIP: 44f132	 Bytes: 6
  %loadMem_44f132 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f132 = call %struct.Memory* @routine_je_.L_44f1e6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f132, i8* %BRANCH_TAKEN, i64 180, i64 6, i64 6)
  store %struct.Memory* %call_44f132, %struct.Memory** %MEMORY

  %loadBr_44f132 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44f132 = icmp eq i8 %loadBr_44f132, 1
  br i1 %cmpBr_44f132, label %block_.L_44f1e6, label %block_.L_44f138

  ; Code: .L_44f138:	 RIP: 44f138	 Bytes: 0
block_.L_44f138:

  ; Code: movl -0x1b4(%rbp), %eax	 RIP: 44f138	 Bytes: 6
  %loadMem_44f138 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f138 = call %struct.Memory* @routine_movl_MINUS0x1b4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f138)
  store %struct.Memory* %call_44f138, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 44f13e	 Bytes: 3
  %loadMem_44f13e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f13e = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f13e)
  store %struct.Memory* %call_44f13e, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 44f141	 Bytes: 3
  %loadMem_44f141 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f141 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f141)
  store %struct.Memory* %call_44f141, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 44f144	 Bytes: 8
  %loadMem_44f144 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f144 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f144)
  store %struct.Memory* %call_44f144, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 44f14c	 Bytes: 3
  %loadMem_44f14c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f14c = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f14c)
  store %struct.Memory* %call_44f14c, %struct.Memory** %MEMORY

  ; Code: jne .L_44f172	 RIP: 44f14f	 Bytes: 6
  %loadMem_44f14f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f14f = call %struct.Memory* @routine_jne_.L_44f172(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f14f, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_44f14f, %struct.Memory** %MEMORY

  %loadBr_44f14f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44f14f = icmp eq i8 %loadBr_44f14f, 1
  br i1 %cmpBr_44f14f, label %block_.L_44f172, label %block_44f155

block_44f155:
  ; Code: movl -0x1b4(%rbp), %eax	 RIP: 44f155	 Bytes: 6
  %loadMem_44f155 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f155 = call %struct.Memory* @routine_movl_MINUS0x1b4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f155)
  store %struct.Memory* %call_44f155, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 44f15b	 Bytes: 3
  %loadMem_44f15b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f15b = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f15b)
  store %struct.Memory* %call_44f15b, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 44f15e	 Bytes: 3
  %loadMem_44f15e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f15e = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f15e)
  store %struct.Memory* %call_44f15e, %struct.Memory** %MEMORY

  ; Code: movsbl -0x1b0(%rbp,%rcx,1), %eax	 RIP: 44f161	 Bytes: 8
  %loadMem_44f161 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f161 = call %struct.Memory* @routine_movsbl_MINUS0x1b0__rbp__rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f161)
  store %struct.Memory* %call_44f161, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, %eax	 RIP: 44f169	 Bytes: 3
  %loadMem_44f169 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f169 = call %struct.Memory* @routine_cmpl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f169)
  store %struct.Memory* %call_44f169, %struct.Memory** %MEMORY

  ; Code: je .L_44f1e6	 RIP: 44f16c	 Bytes: 6
  %loadMem_44f16c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f16c = call %struct.Memory* @routine_je_.L_44f1e6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f16c, i8* %BRANCH_TAKEN, i64 122, i64 6, i64 6)
  store %struct.Memory* %call_44f16c, %struct.Memory** %MEMORY

  %loadBr_44f16c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44f16c = icmp eq i8 %loadBr_44f16c, 1
  br i1 %cmpBr_44f16c, label %block_.L_44f1e6, label %block_.L_44f172

  ; Code: .L_44f172:	 RIP: 44f172	 Bytes: 0
block_.L_44f172:

  ; Code: movl -0x1b4(%rbp), %eax	 RIP: 44f172	 Bytes: 6
  %loadMem_44f172 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f172 = call %struct.Memory* @routine_movl_MINUS0x1b4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f172)
  store %struct.Memory* %call_44f172, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 44f178	 Bytes: 3
  %loadMem_44f178 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f178 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f178)
  store %struct.Memory* %call_44f178, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 44f17b	 Bytes: 3
  %loadMem_44f17b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f17b = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f17b)
  store %struct.Memory* %call_44f17b, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 44f17e	 Bytes: 8
  %loadMem_44f17e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f17e = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f17e)
  store %struct.Memory* %call_44f17e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 44f186	 Bytes: 3
  %loadMem_44f186 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f186 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f186)
  store %struct.Memory* %call_44f186, %struct.Memory** %MEMORY

  ; Code: jne .L_44f1ac	 RIP: 44f189	 Bytes: 6
  %loadMem_44f189 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f189 = call %struct.Memory* @routine_jne_.L_44f1ac(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f189, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_44f189, %struct.Memory** %MEMORY

  %loadBr_44f189 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44f189 = icmp eq i8 %loadBr_44f189, 1
  br i1 %cmpBr_44f189, label %block_.L_44f1ac, label %block_44f18f

block_44f18f:
  ; Code: movl -0x1b4(%rbp), %eax	 RIP: 44f18f	 Bytes: 6
  %loadMem_44f18f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f18f = call %struct.Memory* @routine_movl_MINUS0x1b4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f18f)
  store %struct.Memory* %call_44f18f, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 44f195	 Bytes: 3
  %loadMem_44f195 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f195 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f195)
  store %struct.Memory* %call_44f195, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 44f198	 Bytes: 3
  %loadMem_44f198 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f198 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f198)
  store %struct.Memory* %call_44f198, %struct.Memory** %MEMORY

  ; Code: movsbl -0x1b0(%rbp,%rcx,1), %eax	 RIP: 44f19b	 Bytes: 8
  %loadMem_44f19b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f19b = call %struct.Memory* @routine_movsbl_MINUS0x1b0__rbp__rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f19b)
  store %struct.Memory* %call_44f19b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, %eax	 RIP: 44f1a3	 Bytes: 3
  %loadMem_44f1a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f1a3 = call %struct.Memory* @routine_cmpl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f1a3)
  store %struct.Memory* %call_44f1a3, %struct.Memory** %MEMORY

  ; Code: je .L_44f1e6	 RIP: 44f1a6	 Bytes: 6
  %loadMem_44f1a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f1a6 = call %struct.Memory* @routine_je_.L_44f1e6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f1a6, i8* %BRANCH_TAKEN, i64 64, i64 6, i64 6)
  store %struct.Memory* %call_44f1a6, %struct.Memory** %MEMORY

  %loadBr_44f1a6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44f1a6 = icmp eq i8 %loadBr_44f1a6, 1
  br i1 %cmpBr_44f1a6, label %block_.L_44f1e6, label %block_.L_44f1ac

  ; Code: .L_44f1ac:	 RIP: 44f1ac	 Bytes: 0
block_.L_44f1ac:

  ; Code: movl -0x1b4(%rbp), %eax	 RIP: 44f1ac	 Bytes: 6
  %loadMem_44f1ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f1ac = call %struct.Memory* @routine_movl_MINUS0x1b4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f1ac)
  store %struct.Memory* %call_44f1ac, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44f1b2	 Bytes: 3
  %loadMem_44f1b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f1b2 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f1b2)
  store %struct.Memory* %call_44f1b2, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 44f1b5	 Bytes: 3
  %loadMem_44f1b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f1b5 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f1b5)
  store %struct.Memory* %call_44f1b5, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 44f1b8	 Bytes: 8
  %loadMem_44f1b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f1b8 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f1b8)
  store %struct.Memory* %call_44f1b8, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 44f1c0	 Bytes: 3
  %loadMem_44f1c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f1c0 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f1c0)
  store %struct.Memory* %call_44f1c0, %struct.Memory** %MEMORY

  ; Code: jne .L_44f1f5	 RIP: 44f1c3	 Bytes: 6
  %loadMem_44f1c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f1c3 = call %struct.Memory* @routine_jne_.L_44f1f5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f1c3, i8* %BRANCH_TAKEN, i64 50, i64 6, i64 6)
  store %struct.Memory* %call_44f1c3, %struct.Memory** %MEMORY

  %loadBr_44f1c3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44f1c3 = icmp eq i8 %loadBr_44f1c3, 1
  br i1 %cmpBr_44f1c3, label %block_.L_44f1f5, label %block_44f1c9

block_44f1c9:
  ; Code: movl -0x1b4(%rbp), %eax	 RIP: 44f1c9	 Bytes: 6
  %loadMem_44f1c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f1c9 = call %struct.Memory* @routine_movl_MINUS0x1b4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f1c9)
  store %struct.Memory* %call_44f1c9, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44f1cf	 Bytes: 3
  %loadMem_44f1cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f1cf = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f1cf)
  store %struct.Memory* %call_44f1cf, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 44f1d2	 Bytes: 3
  %loadMem_44f1d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f1d2 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f1d2)
  store %struct.Memory* %call_44f1d2, %struct.Memory** %MEMORY

  ; Code: movsbl -0x1b0(%rbp,%rcx,1), %eax	 RIP: 44f1d5	 Bytes: 8
  %loadMem_44f1d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f1d5 = call %struct.Memory* @routine_movsbl_MINUS0x1b0__rbp__rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f1d5)
  store %struct.Memory* %call_44f1d5, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, %eax	 RIP: 44f1dd	 Bytes: 3
  %loadMem_44f1dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f1dd = call %struct.Memory* @routine_cmpl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f1dd)
  store %struct.Memory* %call_44f1dd, %struct.Memory** %MEMORY

  ; Code: jne .L_44f1f5	 RIP: 44f1e0	 Bytes: 6
  %loadMem_44f1e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f1e0 = call %struct.Memory* @routine_jne_.L_44f1f5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f1e0, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_44f1e0, %struct.Memory** %MEMORY

  %loadBr_44f1e0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44f1e0 = icmp eq i8 %loadBr_44f1e0, 1
  br i1 %cmpBr_44f1e0, label %block_.L_44f1f5, label %block_.L_44f1e6

  ; Code: .L_44f1e6:	 RIP: 44f1e6	 Bytes: 0
block_.L_44f1e6:

  ; Code: movslq -0x1b4(%rbp), %rax	 RIP: 44f1e6	 Bytes: 7
  %loadMem_44f1e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f1e6 = call %struct.Memory* @routine_movslq_MINUS0x1b4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f1e6)
  store %struct.Memory* %call_44f1e6, %struct.Memory** %MEMORY

  ; Code: movb $0x3, -0x1b0(%rbp,%rax,1)	 RIP: 44f1ed	 Bytes: 8
  %loadMem_44f1ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f1ed = call %struct.Memory* @routine_movb__0x3__MINUS0x1b0__rbp__rax_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f1ed)
  store %struct.Memory* %call_44f1ed, %struct.Memory** %MEMORY

  ; Code: .L_44f1f5:	 RIP: 44f1f5	 Bytes: 0
  br label %block_.L_44f1f5
block_.L_44f1f5:

  ; Code: jmpq .L_44f1fa	 RIP: 44f1f5	 Bytes: 5
  %loadMem_44f1f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f1f5 = call %struct.Memory* @routine_jmpq_.L_44f1fa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f1f5, i64 5, i64 5)
  store %struct.Memory* %call_44f1f5, %struct.Memory** %MEMORY

  br label %block_.L_44f1fa

  ; Code: .L_44f1fa:	 RIP: 44f1fa	 Bytes: 0
block_.L_44f1fa:

  ; Code: movl -0x1b4(%rbp), %eax	 RIP: 44f1fa	 Bytes: 6
  %loadMem_44f1fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f1fa = call %struct.Memory* @routine_movl_MINUS0x1b4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f1fa)
  store %struct.Memory* %call_44f1fa, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44f200	 Bytes: 3
  %loadMem_44f200 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f200 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f200)
  store %struct.Memory* %call_44f200, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1b4(%rbp)	 RIP: 44f203	 Bytes: 6
  %loadMem_44f203 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f203 = call %struct.Memory* @routine_movl__eax__MINUS0x1b4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f203)
  store %struct.Memory* %call_44f203, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44f0a1	 RIP: 44f209	 Bytes: 5
  %loadMem_44f209 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f209 = call %struct.Memory* @routine_jmpq_.L_44f0a1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f209, i64 -360, i64 5)
  store %struct.Memory* %call_44f209, %struct.Memory** %MEMORY

  br label %block_.L_44f0a1

  ; Code: .L_44f20e:	 RIP: 44f20e	 Bytes: 0
block_.L_44f20e:

  ; Code: movl $0x15, -0x1b4(%rbp)	 RIP: 44f20e	 Bytes: 10
  %loadMem_44f20e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f20e = call %struct.Memory* @routine_movl__0x15__MINUS0x1b4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f20e)
  store %struct.Memory* %call_44f20e, %struct.Memory** %MEMORY

  ; Code: .L_44f218:	 RIP: 44f218	 Bytes: 0
  br label %block_.L_44f218
block_.L_44f218:

  ; Code: cmpl $0x190, -0x1b4(%rbp)	 RIP: 44f218	 Bytes: 10
  %loadMem_44f218 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f218 = call %struct.Memory* @routine_cmpl__0x190__MINUS0x1b4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f218)
  store %struct.Memory* %call_44f218, %struct.Memory** %MEMORY

  ; Code: jge .L_44f3e6	 RIP: 44f222	 Bytes: 6
  %loadMem_44f222 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f222 = call %struct.Memory* @routine_jge_.L_44f3e6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f222, i8* %BRANCH_TAKEN, i64 452, i64 6, i64 6)
  store %struct.Memory* %call_44f222, %struct.Memory** %MEMORY

  %loadBr_44f222 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44f222 = icmp eq i8 %loadBr_44f222, 1
  br i1 %cmpBr_44f222, label %block_.L_44f3e6, label %block_44f228

block_44f228:
  ; Code: movslq -0x1b4(%rbp), %rax	 RIP: 44f228	 Bytes: 7
  %loadMem_44f228 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f228 = call %struct.Memory* @routine_movslq_MINUS0x1b4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f228)
  store %struct.Memory* %call_44f228, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 44f22f	 Bytes: 8
  %loadMem_44f22f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f22f = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f22f)
  store %struct.Memory* %call_44f22f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %ecx	 RIP: 44f237	 Bytes: 3
  %loadMem_44f237 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f237 = call %struct.Memory* @routine_cmpl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f237)
  store %struct.Memory* %call_44f237, %struct.Memory** %MEMORY

  ; Code: jne .L_44f245	 RIP: 44f23a	 Bytes: 6
  %loadMem_44f23a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f23a = call %struct.Memory* @routine_jne_.L_44f245(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f23a, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_44f23a, %struct.Memory** %MEMORY

  %loadBr_44f23a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44f23a = icmp eq i8 %loadBr_44f23a, 1
  br i1 %cmpBr_44f23a, label %block_.L_44f245, label %block_44f240

block_44f240:
  ; Code: jmpq .L_44f3d2	 RIP: 44f240	 Bytes: 5
  %loadMem_44f240 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f240 = call %struct.Memory* @routine_jmpq_.L_44f3d2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f240, i64 402, i64 5)
  store %struct.Memory* %call_44f240, %struct.Memory** %MEMORY

  br label %block_.L_44f3d2

  ; Code: .L_44f245:	 RIP: 44f245	 Bytes: 0
block_.L_44f245:

  ; Code: movslq -0x1b4(%rbp), %rax	 RIP: 44f245	 Bytes: 7
  %loadMem_44f245 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f245 = call %struct.Memory* @routine_movslq_MINUS0x1b4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f245)
  store %struct.Memory* %call_44f245, %struct.Memory** %MEMORY

  ; Code: movsbl -0x1b0(%rbp,%rax,1), %ecx	 RIP: 44f24c	 Bytes: 8
  %loadMem_44f24c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f24c = call %struct.Memory* @routine_movsbl_MINUS0x1b0__rbp__rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f24c)
  store %struct.Memory* %call_44f24c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 44f254	 Bytes: 3
  %loadMem_44f254 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f254 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f254)
  store %struct.Memory* %call_44f254, %struct.Memory** %MEMORY

  ; Code: je .L_44f262	 RIP: 44f257	 Bytes: 6
  %loadMem_44f257 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f257 = call %struct.Memory* @routine_je_.L_44f262(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f257, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_44f257, %struct.Memory** %MEMORY

  %loadBr_44f257 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44f257 = icmp eq i8 %loadBr_44f257, 1
  br i1 %cmpBr_44f257, label %block_.L_44f262, label %block_44f25d

block_44f25d:
  ; Code: jmpq .L_44f3d2	 RIP: 44f25d	 Bytes: 5
  %loadMem_44f25d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f25d = call %struct.Memory* @routine_jmpq_.L_44f3d2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f25d, i64 373, i64 5)
  store %struct.Memory* %call_44f25d, %struct.Memory** %MEMORY

  br label %block_.L_44f3d2

  ; Code: .L_44f262:	 RIP: 44f262	 Bytes: 0
block_.L_44f262:

  ; Code: movl -0x1b4(%rbp), %eax	 RIP: 44f262	 Bytes: 6
  %loadMem_44f262 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f262 = call %struct.Memory* @routine_movl_MINUS0x1b4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f262)
  store %struct.Memory* %call_44f262, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 44f268	 Bytes: 3
  %loadMem_44f268 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f268 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f268)
  store %struct.Memory* %call_44f268, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 44f26b	 Bytes: 3
  %loadMem_44f26b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f26b = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f26b)
  store %struct.Memory* %call_44f26b, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 44f26e	 Bytes: 8
  %loadMem_44f26e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f26e = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f26e)
  store %struct.Memory* %call_44f26e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 44f276	 Bytes: 3
  %loadMem_44f276 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f276 = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f276)
  store %struct.Memory* %call_44f276, %struct.Memory** %MEMORY

  ; Code: je .L_44f2b9	 RIP: 44f279	 Bytes: 6
  %loadMem_44f279 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f279 = call %struct.Memory* @routine_je_.L_44f2b9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f279, i8* %BRANCH_TAKEN, i64 64, i64 6, i64 6)
  store %struct.Memory* %call_44f279, %struct.Memory** %MEMORY

  %loadBr_44f279 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44f279 = icmp eq i8 %loadBr_44f279, 1
  br i1 %cmpBr_44f279, label %block_.L_44f2b9, label %block_44f27f

block_44f27f:
  ; Code: movl -0x1b4(%rbp), %eax	 RIP: 44f27f	 Bytes: 6
  %loadMem_44f27f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f27f = call %struct.Memory* @routine_movl_MINUS0x1b4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f27f)
  store %struct.Memory* %call_44f27f, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 44f285	 Bytes: 3
  %loadMem_44f285 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f285 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f285)
  store %struct.Memory* %call_44f285, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 44f288	 Bytes: 3
  %loadMem_44f288 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f288 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f288)
  store %struct.Memory* %call_44f288, %struct.Memory** %MEMORY

  ; Code: movsbl -0x1b0(%rbp,%rcx,1), %eax	 RIP: 44f28b	 Bytes: 8
  %loadMem_44f28b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f28b = call %struct.Memory* @routine_movsbl_MINUS0x1b0__rbp__rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f28b)
  store %struct.Memory* %call_44f28b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 44f293	 Bytes: 3
  %loadMem_44f293 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f293 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f293)
  store %struct.Memory* %call_44f293, %struct.Memory** %MEMORY

  ; Code: jle .L_44f2b9	 RIP: 44f296	 Bytes: 6
  %loadMem_44f296 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f296 = call %struct.Memory* @routine_jle_.L_44f2b9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f296, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_44f296, %struct.Memory** %MEMORY

  %loadBr_44f296 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44f296 = icmp eq i8 %loadBr_44f296, 1
  br i1 %cmpBr_44f296, label %block_.L_44f2b9, label %block_44f29c

block_44f29c:
  ; Code: movl -0x1b4(%rbp), %eax	 RIP: 44f29c	 Bytes: 6
  %loadMem_44f29c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f29c = call %struct.Memory* @routine_movl_MINUS0x1b4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f29c)
  store %struct.Memory* %call_44f29c, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 44f2a2	 Bytes: 3
  %loadMem_44f2a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f2a2 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f2a2)
  store %struct.Memory* %call_44f2a2, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 44f2a5	 Bytes: 3
  %loadMem_44f2a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f2a5 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f2a5)
  store %struct.Memory* %call_44f2a5, %struct.Memory** %MEMORY

  ; Code: movsbl -0x1b0(%rbp,%rcx,1), %eax	 RIP: 44f2a8	 Bytes: 8
  %loadMem_44f2a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f2a8 = call %struct.Memory* @routine_movsbl_MINUS0x1b0__rbp__rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f2a8)
  store %struct.Memory* %call_44f2a8, %struct.Memory** %MEMORY

  ; Code: cmpl $0x4, %eax	 RIP: 44f2b0	 Bytes: 3
  %loadMem_44f2b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f2b0 = call %struct.Memory* @routine_cmpl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f2b0)
  store %struct.Memory* %call_44f2b0, %struct.Memory** %MEMORY

  ; Code: jl .L_44f3be	 RIP: 44f2b3	 Bytes: 6
  %loadMem_44f2b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f2b3 = call %struct.Memory* @routine_jl_.L_44f3be(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f2b3, i8* %BRANCH_TAKEN, i64 267, i64 6, i64 6)
  store %struct.Memory* %call_44f2b3, %struct.Memory** %MEMORY

  %loadBr_44f2b3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44f2b3 = icmp eq i8 %loadBr_44f2b3, 1
  br i1 %cmpBr_44f2b3, label %block_.L_44f3be, label %block_.L_44f2b9

  ; Code: .L_44f2b9:	 RIP: 44f2b9	 Bytes: 0
block_.L_44f2b9:

  ; Code: movl -0x1b4(%rbp), %eax	 RIP: 44f2b9	 Bytes: 6
  %loadMem_44f2b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f2b9 = call %struct.Memory* @routine_movl_MINUS0x1b4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f2b9)
  store %struct.Memory* %call_44f2b9, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 44f2bf	 Bytes: 3
  %loadMem_44f2bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f2bf = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f2bf)
  store %struct.Memory* %call_44f2bf, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 44f2c2	 Bytes: 3
  %loadMem_44f2c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f2c2 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f2c2)
  store %struct.Memory* %call_44f2c2, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 44f2c5	 Bytes: 8
  %loadMem_44f2c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f2c5 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f2c5)
  store %struct.Memory* %call_44f2c5, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 44f2cd	 Bytes: 3
  %loadMem_44f2cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f2cd = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f2cd)
  store %struct.Memory* %call_44f2cd, %struct.Memory** %MEMORY

  ; Code: je .L_44f310	 RIP: 44f2d0	 Bytes: 6
  %loadMem_44f2d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f2d0 = call %struct.Memory* @routine_je_.L_44f310(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f2d0, i8* %BRANCH_TAKEN, i64 64, i64 6, i64 6)
  store %struct.Memory* %call_44f2d0, %struct.Memory** %MEMORY

  %loadBr_44f2d0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44f2d0 = icmp eq i8 %loadBr_44f2d0, 1
  br i1 %cmpBr_44f2d0, label %block_.L_44f310, label %block_44f2d6

block_44f2d6:
  ; Code: movl -0x1b4(%rbp), %eax	 RIP: 44f2d6	 Bytes: 6
  %loadMem_44f2d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f2d6 = call %struct.Memory* @routine_movl_MINUS0x1b4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f2d6)
  store %struct.Memory* %call_44f2d6, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 44f2dc	 Bytes: 3
  %loadMem_44f2dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f2dc = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f2dc)
  store %struct.Memory* %call_44f2dc, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 44f2df	 Bytes: 3
  %loadMem_44f2df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f2df = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f2df)
  store %struct.Memory* %call_44f2df, %struct.Memory** %MEMORY

  ; Code: movsbl -0x1b0(%rbp,%rcx,1), %eax	 RIP: 44f2e2	 Bytes: 8
  %loadMem_44f2e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f2e2 = call %struct.Memory* @routine_movsbl_MINUS0x1b0__rbp__rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f2e2)
  store %struct.Memory* %call_44f2e2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 44f2ea	 Bytes: 3
  %loadMem_44f2ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f2ea = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f2ea)
  store %struct.Memory* %call_44f2ea, %struct.Memory** %MEMORY

  ; Code: jle .L_44f310	 RIP: 44f2ed	 Bytes: 6
  %loadMem_44f2ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f2ed = call %struct.Memory* @routine_jle_.L_44f310(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f2ed, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_44f2ed, %struct.Memory** %MEMORY

  %loadBr_44f2ed = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44f2ed = icmp eq i8 %loadBr_44f2ed, 1
  br i1 %cmpBr_44f2ed, label %block_.L_44f310, label %block_44f2f3

block_44f2f3:
  ; Code: movl -0x1b4(%rbp), %eax	 RIP: 44f2f3	 Bytes: 6
  %loadMem_44f2f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f2f3 = call %struct.Memory* @routine_movl_MINUS0x1b4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f2f3)
  store %struct.Memory* %call_44f2f3, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 44f2f9	 Bytes: 3
  %loadMem_44f2f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f2f9 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f2f9)
  store %struct.Memory* %call_44f2f9, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 44f2fc	 Bytes: 3
  %loadMem_44f2fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f2fc = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f2fc)
  store %struct.Memory* %call_44f2fc, %struct.Memory** %MEMORY

  ; Code: movsbl -0x1b0(%rbp,%rcx,1), %eax	 RIP: 44f2ff	 Bytes: 8
  %loadMem_44f2ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f2ff = call %struct.Memory* @routine_movsbl_MINUS0x1b0__rbp__rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f2ff)
  store %struct.Memory* %call_44f2ff, %struct.Memory** %MEMORY

  ; Code: cmpl $0x4, %eax	 RIP: 44f307	 Bytes: 3
  %loadMem_44f307 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f307 = call %struct.Memory* @routine_cmpl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f307)
  store %struct.Memory* %call_44f307, %struct.Memory** %MEMORY

  ; Code: jl .L_44f3be	 RIP: 44f30a	 Bytes: 6
  %loadMem_44f30a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f30a = call %struct.Memory* @routine_jl_.L_44f3be(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f30a, i8* %BRANCH_TAKEN, i64 180, i64 6, i64 6)
  store %struct.Memory* %call_44f30a, %struct.Memory** %MEMORY

  %loadBr_44f30a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44f30a = icmp eq i8 %loadBr_44f30a, 1
  br i1 %cmpBr_44f30a, label %block_.L_44f3be, label %block_.L_44f310

  ; Code: .L_44f310:	 RIP: 44f310	 Bytes: 0
block_.L_44f310:

  ; Code: movl -0x1b4(%rbp), %eax	 RIP: 44f310	 Bytes: 6
  %loadMem_44f310 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f310 = call %struct.Memory* @routine_movl_MINUS0x1b4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f310)
  store %struct.Memory* %call_44f310, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 44f316	 Bytes: 3
  %loadMem_44f316 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f316 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f316)
  store %struct.Memory* %call_44f316, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 44f319	 Bytes: 3
  %loadMem_44f319 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f319 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f319)
  store %struct.Memory* %call_44f319, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 44f31c	 Bytes: 8
  %loadMem_44f31c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f31c = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f31c)
  store %struct.Memory* %call_44f31c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 44f324	 Bytes: 3
  %loadMem_44f324 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f324 = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f324)
  store %struct.Memory* %call_44f324, %struct.Memory** %MEMORY

  ; Code: je .L_44f367	 RIP: 44f327	 Bytes: 6
  %loadMem_44f327 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f327 = call %struct.Memory* @routine_je_.L_44f367(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f327, i8* %BRANCH_TAKEN, i64 64, i64 6, i64 6)
  store %struct.Memory* %call_44f327, %struct.Memory** %MEMORY

  %loadBr_44f327 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44f327 = icmp eq i8 %loadBr_44f327, 1
  br i1 %cmpBr_44f327, label %block_.L_44f367, label %block_44f32d

block_44f32d:
  ; Code: movl -0x1b4(%rbp), %eax	 RIP: 44f32d	 Bytes: 6
  %loadMem_44f32d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f32d = call %struct.Memory* @routine_movl_MINUS0x1b4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f32d)
  store %struct.Memory* %call_44f32d, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 44f333	 Bytes: 3
  %loadMem_44f333 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f333 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f333)
  store %struct.Memory* %call_44f333, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 44f336	 Bytes: 3
  %loadMem_44f336 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f336 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f336)
  store %struct.Memory* %call_44f336, %struct.Memory** %MEMORY

  ; Code: movsbl -0x1b0(%rbp,%rcx,1), %eax	 RIP: 44f339	 Bytes: 8
  %loadMem_44f339 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f339 = call %struct.Memory* @routine_movsbl_MINUS0x1b0__rbp__rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f339)
  store %struct.Memory* %call_44f339, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 44f341	 Bytes: 3
  %loadMem_44f341 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f341 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f341)
  store %struct.Memory* %call_44f341, %struct.Memory** %MEMORY

  ; Code: jle .L_44f367	 RIP: 44f344	 Bytes: 6
  %loadMem_44f344 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f344 = call %struct.Memory* @routine_jle_.L_44f367(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f344, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_44f344, %struct.Memory** %MEMORY

  %loadBr_44f344 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44f344 = icmp eq i8 %loadBr_44f344, 1
  br i1 %cmpBr_44f344, label %block_.L_44f367, label %block_44f34a

block_44f34a:
  ; Code: movl -0x1b4(%rbp), %eax	 RIP: 44f34a	 Bytes: 6
  %loadMem_44f34a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f34a = call %struct.Memory* @routine_movl_MINUS0x1b4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f34a)
  store %struct.Memory* %call_44f34a, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 44f350	 Bytes: 3
  %loadMem_44f350 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f350 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f350)
  store %struct.Memory* %call_44f350, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 44f353	 Bytes: 3
  %loadMem_44f353 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f353 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f353)
  store %struct.Memory* %call_44f353, %struct.Memory** %MEMORY

  ; Code: movsbl -0x1b0(%rbp,%rcx,1), %eax	 RIP: 44f356	 Bytes: 8
  %loadMem_44f356 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f356 = call %struct.Memory* @routine_movsbl_MINUS0x1b0__rbp__rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f356)
  store %struct.Memory* %call_44f356, %struct.Memory** %MEMORY

  ; Code: cmpl $0x4, %eax	 RIP: 44f35e	 Bytes: 3
  %loadMem_44f35e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f35e = call %struct.Memory* @routine_cmpl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f35e)
  store %struct.Memory* %call_44f35e, %struct.Memory** %MEMORY

  ; Code: jl .L_44f3be	 RIP: 44f361	 Bytes: 6
  %loadMem_44f361 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f361 = call %struct.Memory* @routine_jl_.L_44f3be(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f361, i8* %BRANCH_TAKEN, i64 93, i64 6, i64 6)
  store %struct.Memory* %call_44f361, %struct.Memory** %MEMORY

  %loadBr_44f361 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44f361 = icmp eq i8 %loadBr_44f361, 1
  br i1 %cmpBr_44f361, label %block_.L_44f3be, label %block_.L_44f367

  ; Code: .L_44f367:	 RIP: 44f367	 Bytes: 0
block_.L_44f367:

  ; Code: movl -0x1b4(%rbp), %eax	 RIP: 44f367	 Bytes: 6
  %loadMem_44f367 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f367 = call %struct.Memory* @routine_movl_MINUS0x1b4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f367)
  store %struct.Memory* %call_44f367, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44f36d	 Bytes: 3
  %loadMem_44f36d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f36d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f36d)
  store %struct.Memory* %call_44f36d, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 44f370	 Bytes: 3
  %loadMem_44f370 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f370 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f370)
  store %struct.Memory* %call_44f370, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 44f373	 Bytes: 8
  %loadMem_44f373 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f373 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f373)
  store %struct.Memory* %call_44f373, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 44f37b	 Bytes: 3
  %loadMem_44f37b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f37b = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f37b)
  store %struct.Memory* %call_44f37b, %struct.Memory** %MEMORY

  ; Code: je .L_44f3cd	 RIP: 44f37e	 Bytes: 6
  %loadMem_44f37e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f37e = call %struct.Memory* @routine_je_.L_44f3cd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f37e, i8* %BRANCH_TAKEN, i64 79, i64 6, i64 6)
  store %struct.Memory* %call_44f37e, %struct.Memory** %MEMORY

  %loadBr_44f37e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44f37e = icmp eq i8 %loadBr_44f37e, 1
  br i1 %cmpBr_44f37e, label %block_.L_44f3cd, label %block_44f384

block_44f384:
  ; Code: movl -0x1b4(%rbp), %eax	 RIP: 44f384	 Bytes: 6
  %loadMem_44f384 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f384 = call %struct.Memory* @routine_movl_MINUS0x1b4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f384)
  store %struct.Memory* %call_44f384, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44f38a	 Bytes: 3
  %loadMem_44f38a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f38a = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f38a)
  store %struct.Memory* %call_44f38a, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 44f38d	 Bytes: 3
  %loadMem_44f38d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f38d = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f38d)
  store %struct.Memory* %call_44f38d, %struct.Memory** %MEMORY

  ; Code: movsbl -0x1b0(%rbp,%rcx,1), %eax	 RIP: 44f390	 Bytes: 8
  %loadMem_44f390 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f390 = call %struct.Memory* @routine_movsbl_MINUS0x1b0__rbp__rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f390)
  store %struct.Memory* %call_44f390, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 44f398	 Bytes: 3
  %loadMem_44f398 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f398 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f398)
  store %struct.Memory* %call_44f398, %struct.Memory** %MEMORY

  ; Code: jle .L_44f3cd	 RIP: 44f39b	 Bytes: 6
  %loadMem_44f39b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f39b = call %struct.Memory* @routine_jle_.L_44f3cd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f39b, i8* %BRANCH_TAKEN, i64 50, i64 6, i64 6)
  store %struct.Memory* %call_44f39b, %struct.Memory** %MEMORY

  %loadBr_44f39b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44f39b = icmp eq i8 %loadBr_44f39b, 1
  br i1 %cmpBr_44f39b, label %block_.L_44f3cd, label %block_44f3a1

block_44f3a1:
  ; Code: movl -0x1b4(%rbp), %eax	 RIP: 44f3a1	 Bytes: 6
  %loadMem_44f3a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f3a1 = call %struct.Memory* @routine_movl_MINUS0x1b4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f3a1)
  store %struct.Memory* %call_44f3a1, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44f3a7	 Bytes: 3
  %loadMem_44f3a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f3a7 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f3a7)
  store %struct.Memory* %call_44f3a7, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 44f3aa	 Bytes: 3
  %loadMem_44f3aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f3aa = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f3aa)
  store %struct.Memory* %call_44f3aa, %struct.Memory** %MEMORY

  ; Code: movsbl -0x1b0(%rbp,%rcx,1), %eax	 RIP: 44f3ad	 Bytes: 8
  %loadMem_44f3ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f3ad = call %struct.Memory* @routine_movsbl_MINUS0x1b0__rbp__rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f3ad)
  store %struct.Memory* %call_44f3ad, %struct.Memory** %MEMORY

  ; Code: cmpl $0x4, %eax	 RIP: 44f3b5	 Bytes: 3
  %loadMem_44f3b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f3b5 = call %struct.Memory* @routine_cmpl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f3b5)
  store %struct.Memory* %call_44f3b5, %struct.Memory** %MEMORY

  ; Code: jge .L_44f3cd	 RIP: 44f3b8	 Bytes: 6
  %loadMem_44f3b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f3b8 = call %struct.Memory* @routine_jge_.L_44f3cd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f3b8, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_44f3b8, %struct.Memory** %MEMORY

  %loadBr_44f3b8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44f3b8 = icmp eq i8 %loadBr_44f3b8, 1
  br i1 %cmpBr_44f3b8, label %block_.L_44f3cd, label %block_.L_44f3be

  ; Code: .L_44f3be:	 RIP: 44f3be	 Bytes: 0
block_.L_44f3be:

  ; Code: movslq -0x1b4(%rbp), %rax	 RIP: 44f3be	 Bytes: 7
  %loadMem_44f3be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f3be = call %struct.Memory* @routine_movslq_MINUS0x1b4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f3be)
  store %struct.Memory* %call_44f3be, %struct.Memory** %MEMORY

  ; Code: movb $0x4, -0x1b0(%rbp,%rax,1)	 RIP: 44f3c5	 Bytes: 8
  %loadMem_44f3c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f3c5 = call %struct.Memory* @routine_movb__0x4__MINUS0x1b0__rbp__rax_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f3c5)
  store %struct.Memory* %call_44f3c5, %struct.Memory** %MEMORY

  ; Code: .L_44f3cd:	 RIP: 44f3cd	 Bytes: 0
  br label %block_.L_44f3cd
block_.L_44f3cd:

  ; Code: jmpq .L_44f3d2	 RIP: 44f3cd	 Bytes: 5
  %loadMem_44f3cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f3cd = call %struct.Memory* @routine_jmpq_.L_44f3d2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f3cd, i64 5, i64 5)
  store %struct.Memory* %call_44f3cd, %struct.Memory** %MEMORY

  br label %block_.L_44f3d2

  ; Code: .L_44f3d2:	 RIP: 44f3d2	 Bytes: 0
block_.L_44f3d2:

  ; Code: movl -0x1b4(%rbp), %eax	 RIP: 44f3d2	 Bytes: 6
  %loadMem_44f3d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f3d2 = call %struct.Memory* @routine_movl_MINUS0x1b4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f3d2)
  store %struct.Memory* %call_44f3d2, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44f3d8	 Bytes: 3
  %loadMem_44f3d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f3d8 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f3d8)
  store %struct.Memory* %call_44f3d8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1b4(%rbp)	 RIP: 44f3db	 Bytes: 6
  %loadMem_44f3db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f3db = call %struct.Memory* @routine_movl__eax__MINUS0x1b4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f3db)
  store %struct.Memory* %call_44f3db, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44f218	 RIP: 44f3e1	 Bytes: 5
  %loadMem_44f3e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f3e1 = call %struct.Memory* @routine_jmpq_.L_44f218(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f3e1, i64 -457, i64 5)
  store %struct.Memory* %call_44f3e1, %struct.Memory** %MEMORY

  br label %block_.L_44f218

  ; Code: .L_44f3e6:	 RIP: 44f3e6	 Bytes: 0
block_.L_44f3e6:

  ; Code: movl $0x0, -0x1b8(%rbp)	 RIP: 44f3e6	 Bytes: 10
  %loadMem_44f3e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f3e6 = call %struct.Memory* @routine_movl__0x0__MINUS0x1b8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f3e6)
  store %struct.Memory* %call_44f3e6, %struct.Memory** %MEMORY

  ; Code: .L_44f3f0:	 RIP: 44f3f0	 Bytes: 0
  br label %block_.L_44f3f0
block_.L_44f3f0:

  ; Code: movl -0x1b8(%rbp), %eax	 RIP: 44f3f0	 Bytes: 6
  %loadMem_44f3f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f3f0 = call %struct.Memory* @routine_movl_MINUS0x1b8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f3f0)
  store %struct.Memory* %call_44f3f0, %struct.Memory** %MEMORY

  ; Code: cmpl 0xb54ce4, %eax	 RIP: 44f3f6	 Bytes: 7
  %loadMem_44f3f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f3f6 = call %struct.Memory* @routine_cmpl_0xb54ce4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f3f6)
  store %struct.Memory* %call_44f3f6, %struct.Memory** %MEMORY

  ; Code: jge .L_44f435	 RIP: 44f3fd	 Bytes: 6
  %loadMem_44f3fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f3fd = call %struct.Memory* @routine_jge_.L_44f435(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f3fd, i8* %BRANCH_TAKEN, i64 56, i64 6, i64 6)
  store %struct.Memory* %call_44f3fd, %struct.Memory** %MEMORY

  %loadBr_44f3fd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44f3fd = icmp eq i8 %loadBr_44f3fd, 1
  br i1 %cmpBr_44f3fd, label %block_.L_44f435, label %block_44f403

block_44f403:
  ; Code: movq -0x1c8(%rbp), %rax	 RIP: 44f403	 Bytes: 7
  %loadMem_44f403 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f403 = call %struct.Memory* @routine_movq_MINUS0x1c8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f403)
  store %struct.Memory* %call_44f403, %struct.Memory** %MEMORY

  ; Code: movslq -0x1b8(%rbp), %rcx	 RIP: 44f40a	 Bytes: 7
  %loadMem_44f40a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f40a = call %struct.Memory* @routine_movslq_MINUS0x1b8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f40a)
  store %struct.Memory* %call_44f40a, %struct.Memory** %MEMORY

  ; Code: movslq 0x1b4(%rax,%rcx,4), %rax	 RIP: 44f411	 Bytes: 8
  %loadMem_44f411 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f411 = call %struct.Memory* @routine_movslq_0x1b4__rax__rcx_4____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f411)
  store %struct.Memory* %call_44f411, %struct.Memory** %MEMORY

  ; Code: movb $0x5, -0x1b0(%rbp,%rax,1)	 RIP: 44f419	 Bytes: 8
  %loadMem_44f419 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f419 = call %struct.Memory* @routine_movb__0x5__MINUS0x1b0__rbp__rax_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f419)
  store %struct.Memory* %call_44f419, %struct.Memory** %MEMORY

  ; Code: movl -0x1b8(%rbp), %eax	 RIP: 44f421	 Bytes: 6
  %loadMem_44f421 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f421 = call %struct.Memory* @routine_movl_MINUS0x1b8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f421)
  store %struct.Memory* %call_44f421, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44f427	 Bytes: 3
  %loadMem_44f427 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f427 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f427)
  store %struct.Memory* %call_44f427, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1b8(%rbp)	 RIP: 44f42a	 Bytes: 6
  %loadMem_44f42a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f42a = call %struct.Memory* @routine_movl__eax__MINUS0x1b8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f42a)
  store %struct.Memory* %call_44f42a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44f3f0	 RIP: 44f430	 Bytes: 5
  %loadMem_44f430 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f430 = call %struct.Memory* @routine_jmpq_.L_44f3f0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f430, i64 -64, i64 5)
  store %struct.Memory* %call_44f430, %struct.Memory** %MEMORY

  br label %block_.L_44f3f0

  ; Code: .L_44f435:	 RIP: 44f435	 Bytes: 0
block_.L_44f435:

  ; Code: movl $0x15, -0x1b4(%rbp)	 RIP: 44f435	 Bytes: 10
  %loadMem_44f435 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f435 = call %struct.Memory* @routine_movl__0x15__MINUS0x1b4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f435)
  store %struct.Memory* %call_44f435, %struct.Memory** %MEMORY

  ; Code: .L_44f43f:	 RIP: 44f43f	 Bytes: 0
  br label %block_.L_44f43f
block_.L_44f43f:

  ; Code: cmpl $0x190, -0x1b4(%rbp)	 RIP: 44f43f	 Bytes: 10
  %loadMem_44f43f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f43f = call %struct.Memory* @routine_cmpl__0x190__MINUS0x1b4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f43f)
  store %struct.Memory* %call_44f43f, %struct.Memory** %MEMORY

  ; Code: jge .L_44f4dc	 RIP: 44f449	 Bytes: 6
  %loadMem_44f449 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f449 = call %struct.Memory* @routine_jge_.L_44f4dc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f449, i8* %BRANCH_TAKEN, i64 147, i64 6, i64 6)
  store %struct.Memory* %call_44f449, %struct.Memory** %MEMORY

  %loadBr_44f449 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44f449 = icmp eq i8 %loadBr_44f449, 1
  br i1 %cmpBr_44f449, label %block_.L_44f4dc, label %block_44f44f

block_44f44f:
  ; Code: movslq -0x1b4(%rbp), %rax	 RIP: 44f44f	 Bytes: 7
  %loadMem_44f44f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f44f = call %struct.Memory* @routine_movslq_MINUS0x1b4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f44f)
  store %struct.Memory* %call_44f44f, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 44f456	 Bytes: 8
  %loadMem_44f456 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f456 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f456)
  store %struct.Memory* %call_44f456, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %ecx	 RIP: 44f45e	 Bytes: 3
  %loadMem_44f45e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f45e = call %struct.Memory* @routine_cmpl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f45e)
  store %struct.Memory* %call_44f45e, %struct.Memory** %MEMORY

  ; Code: jne .L_44f46c	 RIP: 44f461	 Bytes: 6
  %loadMem_44f461 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f461 = call %struct.Memory* @routine_jne_.L_44f46c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f461, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_44f461, %struct.Memory** %MEMORY

  %loadBr_44f461 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44f461 = icmp eq i8 %loadBr_44f461, 1
  br i1 %cmpBr_44f461, label %block_.L_44f46c, label %block_44f467

block_44f467:
  ; Code: jmpq .L_44f4c8	 RIP: 44f467	 Bytes: 5
  %loadMem_44f467 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f467 = call %struct.Memory* @routine_jmpq_.L_44f4c8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f467, i64 97, i64 5)
  store %struct.Memory* %call_44f467, %struct.Memory** %MEMORY

  br label %block_.L_44f4c8

  ; Code: .L_44f46c:	 RIP: 44f46c	 Bytes: 0
block_.L_44f46c:

  ; Code: movslq -0x1b4(%rbp), %rax	 RIP: 44f46c	 Bytes: 7
  %loadMem_44f46c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f46c = call %struct.Memory* @routine_movslq_MINUS0x1b4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f46c)
  store %struct.Memory* %call_44f46c, %struct.Memory** %MEMORY

  ; Code: movsbl -0x1b0(%rbp,%rax,1), %ecx	 RIP: 44f473	 Bytes: 8
  %loadMem_44f473 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f473 = call %struct.Memory* @routine_movsbl_MINUS0x1b0__rbp__rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f473)
  store %struct.Memory* %call_44f473, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 44f47b	 Bytes: 3
  %loadMem_44f47b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f47b = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f47b)
  store %struct.Memory* %call_44f47b, %struct.Memory** %MEMORY

  ; Code: je .L_44f49e	 RIP: 44f47e	 Bytes: 6
  %loadMem_44f47e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f47e = call %struct.Memory* @routine_je_.L_44f49e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f47e, i8* %BRANCH_TAKEN, i64 32, i64 6, i64 6)
  store %struct.Memory* %call_44f47e, %struct.Memory** %MEMORY

  %loadBr_44f47e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44f47e = icmp eq i8 %loadBr_44f47e, 1
  br i1 %cmpBr_44f47e, label %block_.L_44f49e, label %block_44f484

block_44f484:
  ; Code: movslq -0x1b4(%rbp), %rax	 RIP: 44f484	 Bytes: 7
  %loadMem_44f484 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f484 = call %struct.Memory* @routine_movslq_MINUS0x1b4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f484)
  store %struct.Memory* %call_44f484, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 44f48b	 Bytes: 8
  %loadMem_44f48b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f48b = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f48b)
  store %struct.Memory* %call_44f48b, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x1ec(%rbp)	 RIP: 44f493	 Bytes: 6
  %loadMem_44f493 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f493 = call %struct.Memory* @routine_movl__ecx__MINUS0x1ec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f493)
  store %struct.Memory* %call_44f493, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44f4ae	 RIP: 44f499	 Bytes: 5
  %loadMem_44f499 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f499 = call %struct.Memory* @routine_jmpq_.L_44f4ae(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f499, i64 21, i64 5)
  store %struct.Memory* %call_44f499, %struct.Memory** %MEMORY

  br label %block_.L_44f4ae

  ; Code: .L_44f49e:	 RIP: 44f49e	 Bytes: 0
block_.L_44f49e:

  ; Code: movl $0x3, %eax	 RIP: 44f49e	 Bytes: 5
  %loadMem_44f49e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f49e = call %struct.Memory* @routine_movl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f49e)
  store %struct.Memory* %call_44f49e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1ec(%rbp)	 RIP: 44f4a3	 Bytes: 6
  %loadMem_44f4a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f4a3 = call %struct.Memory* @routine_movl__eax__MINUS0x1ec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f4a3)
  store %struct.Memory* %call_44f4a3, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44f4ae	 RIP: 44f4a9	 Bytes: 5
  %loadMem_44f4a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f4a9 = call %struct.Memory* @routine_jmpq_.L_44f4ae(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f4a9, i64 5, i64 5)
  store %struct.Memory* %call_44f4a9, %struct.Memory** %MEMORY

  br label %block_.L_44f4ae

  ; Code: .L_44f4ae:	 RIP: 44f4ae	 Bytes: 0
block_.L_44f4ae:

  ; Code: movl -0x1ec(%rbp), %eax	 RIP: 44f4ae	 Bytes: 6
  %loadMem_44f4ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f4ae = call %struct.Memory* @routine_movl_MINUS0x1ec__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f4ae)
  store %struct.Memory* %call_44f4ae, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 44f4b4	 Bytes: 2
  %loadMem_44f4b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f4b4 = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f4b4)
  store %struct.Memory* %call_44f4b4, %struct.Memory** %MEMORY

  ; Code: movq -0x1c8(%rbp), %rdx	 RIP: 44f4b6	 Bytes: 7
  %loadMem_44f4b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f4b6 = call %struct.Memory* @routine_movq_MINUS0x1c8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f4b6)
  store %struct.Memory* %call_44f4b6, %struct.Memory** %MEMORY

  ; Code: movslq -0x1b4(%rbp), %rsi	 RIP: 44f4bd	 Bytes: 7
  %loadMem_44f4bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f4bd = call %struct.Memory* @routine_movslq_MINUS0x1b4__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f4bd)
  store %struct.Memory* %call_44f4bd, %struct.Memory** %MEMORY

  ; Code: movb %cl, 0x4(%rdx,%rsi,1)	 RIP: 44f4c4	 Bytes: 4
  %loadMem_44f4c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f4c4 = call %struct.Memory* @routine_movb__cl__0x4__rdx__rsi_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f4c4)
  store %struct.Memory* %call_44f4c4, %struct.Memory** %MEMORY

  ; Code: .L_44f4c8:	 RIP: 44f4c8	 Bytes: 0
  br label %block_.L_44f4c8
block_.L_44f4c8:

  ; Code: movl -0x1b4(%rbp), %eax	 RIP: 44f4c8	 Bytes: 6
  %loadMem_44f4c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f4c8 = call %struct.Memory* @routine_movl_MINUS0x1b4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f4c8)
  store %struct.Memory* %call_44f4c8, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44f4ce	 Bytes: 3
  %loadMem_44f4ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f4ce = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f4ce)
  store %struct.Memory* %call_44f4ce, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1b4(%rbp)	 RIP: 44f4d1	 Bytes: 6
  %loadMem_44f4d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f4d1 = call %struct.Memory* @routine_movl__eax__MINUS0x1b4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f4d1)
  store %struct.Memory* %call_44f4d1, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44f43f	 RIP: 44f4d7	 Bytes: 5
  %loadMem_44f4d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f4d7 = call %struct.Memory* @routine_jmpq_.L_44f43f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f4d7, i64 -152, i64 5)
  store %struct.Memory* %call_44f4d7, %struct.Memory** %MEMORY

  br label %block_.L_44f43f

  ; Code: .L_44f4dc:	 RIP: 44f4dc	 Bytes: 0
block_.L_44f4dc:

  ; Code: movl 0xac5d28, %eax	 RIP: 44f4dc	 Bytes: 7
  %loadMem_44f4dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f4dc = call %struct.Memory* @routine_movl_0xac5d28___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f4dc)
  store %struct.Memory* %call_44f4dc, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44f4e3	 Bytes: 3
  %loadMem_44f4e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f4e3 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f4e3)
  store %struct.Memory* %call_44f4e3, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0xac5d28	 RIP: 44f4e6	 Bytes: 7
  %loadMem_44f4e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f4e6 = call %struct.Memory* @routine_movl__eax__0xac5d28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f4e6)
  store %struct.Memory* %call_44f4e6, %struct.Memory** %MEMORY

  ; Code: .L_44f4ed:	 RIP: 44f4ed	 Bytes: 0
  br label %block_.L_44f4ed
block_.L_44f4ed:

  ; Code: addq $0x1f0, %rsp	 RIP: 44f4ed	 Bytes: 7
  %loadMem_44f4ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f4ed = call %struct.Memory* @routine_addq__0x1f0___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f4ed)
  store %struct.Memory* %call_44f4ed, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 44f4f4	 Bytes: 1
  %loadMem_44f4f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f4f4 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f4f4)
  store %struct.Memory* %call_44f4f4, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 44f4f5	 Bytes: 1
  %loadMem_44f4f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44f4f5 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44f4f5)
  store %struct.Memory* %call_44f4f5, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_44f4f5
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
block_400488:
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
block_400488:
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

define %struct.Memory* @routine_subq__0x1f0___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 496)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
block_400488:
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


define %struct.Memory* @routine_movl__edx__MINUS0xc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 12
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__ecx__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 16
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__r8d__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 20
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx__MINUS0x1bc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 444
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 {
  %5 = inttoptr i64 %2 to i32*
  %6 = load i32, i32* %5
  %7 = trunc i64 %3 to i32
  %8 = sub i32 %6, %7
  %9 = icmp ult i32 %6, %7
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
  %18 = xor i32 %6, %7
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
  %30 = lshr i32 %6, 31
  %31 = lshr i32 %7, 31
  %32 = xor i32 %30, %31
  %33 = xor i32 %27, %30
  %34 = add   i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cmpl__0x0__MINUS0xc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RBP
  %10 = sub i64 %9, 12
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L2JZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #2 {
  %6 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  store i8 %7, i8* %2, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %9 = icmp ne i8 %7, 0
  %10 = select i1 %9, i64 %3, i64 %4
  store i64 %10, i64* %8, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_je_.L_44ea5d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_cmpl__0x0__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RBP
  %10 = sub i64 %9, 16
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  %7 = zext i8 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 12099168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 {
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

define %struct.Memory* @routine_cmpl__0x3___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ECX = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %ECX
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 3
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_44ea62(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_44ead3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x57eec5___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57eec5_type* @G__0x57eec5 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x171___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 369)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x57f043___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x57f043_type* @G__0x57f043 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x14___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 20)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_MINUS0x10__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x1d4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 468
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__ecx___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ECX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rdx__MINUS0x1e0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 480
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L7CDQ_EAXEP6MemoryR5State(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376)) #2 {
  %3 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 1, i32 0
  %5 = bitcast %union.anon* %4 to i32*
  %6 = load i32, i32* %5, align 8
  %7 = sext i32 %6 to i64
  %8 = lshr i64 %7, 32
  store i64 %8, i64* %3, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cltd(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 1
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L7CDQ_EAXEP6MemoryR5State(%struct.Memory* %2, %struct.State* %0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl_MINUS0x1d4__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 468
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_(%struct.Memory*, %struct.State* dereferenceable(3376), i64) #0 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 1, i32 0
  %5 = bitcast %union.anon* %4 to i32*
  %6 = load i32, i32* %5, align 8
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 7, i32 0
  %9 = bitcast %union.anon* %8 to i32*
  %10 = load i32, i32* %9, align 8
  %11 = zext i32 %10 to i64
  %12 = shl i64 %2, 32
  %13 = ashr exact i64 %12, 32
  %14 = shl  i64 %11, 32
  %15 = or i64 %14, %7
  %16 = sdiv i64 %15, %13
  %17 = shl i64 %16, 32
  %18 = ashr exact i64 %17, 32
  %19 = icmp eq i64 %16, %18
  br i1 %19, label %24, label %20

; <label>:20:                                     ; preds = %3
  %21 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %1, i64 %22, %struct.Memory* %0) #21
  br label %36

; <label>:24:                                     ; preds = %3
  %25 = srem i64 %15, %13
  %26 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %27 = and i64 %16, 4294967295
  store i64 %27, i64* %26, align 8
  %28 = getelementptr inbounds %union.anon, %union.anon* %8, i64 0, i32 0
  %29 = and i64 %25, 4294967295
  store i64 %29, i64* %28, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 0, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %35, align 1
  br label %36

; <label>:36:                                     ; preds = %24, %20
  %37 = phi %struct.Memory* [ %23, %20 ], [ %0, %24 ]
  ret %struct.Memory* %37
}

define %struct.Memory* @routine_idivl__ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ECX = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %ECX
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 2
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %10)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = trunc i64 %3 to i32
  %7 = trunc i64 %4 to i32
  %8 = sub i32 %6, %7
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %2, align 8
  %10 = icmp ult i32 %6, %7
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %8, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13) #22
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i64 %4, %3
  %20 = trunc i64 %19 to i32
  %21 = xor i32 %20, %8
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %8, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %8, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %6, 31
  %33 = lshr i32 %7, 31
  %34 = xor i32 %33, %32
  %35 = xor i32 %29, %32
  %36 = add   i32 %35, %34
  %37 = icmp eq i32 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_subl__0x1___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl_MINUS0x10__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 16
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__eax__MINUS0x1e4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 484
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__r8d___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R8D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_subl__0x1___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RDX
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 1)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq_MINUS0x1e0__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 480
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edx__MINUS0x1e8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 488
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq__r9___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R9
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movl_MINUS0x1e4__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 484
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x1e8__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 488
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4CALLI2InImEEEP6MemoryS4_R5StateT_S2_(%struct.Memory* readnone, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 {
  %5 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, -8
  %8 = inttoptr i64 %7 to i64*
  store i64 %3, i64* %8
  store i64 %7, i64* %5, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %9, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_callq_.abortgo(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4CALLI2InImEEEP6MemoryS4_R5StateT_S2_(%struct.Memory* %2, %struct.State* %0, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_cmpl__0x5__0xb54ce4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xb54ce4_type* @G_0xb54ce4 to i64), i64 5)
  ret %struct.Memory* %8
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JLEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #2 {
  %6 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = icmp ne i8 %7, 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  %12 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  %15 = xor i1 %11, %14
  %16 = or i1 %8, %15
  %17 = zext i1 %16 to i8
  store i8 %17, i8* %2, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %19 = select i1 %16, i64 %3, i64 %4
  store i64 %19, i64* %18, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jle_.L_44eae6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JLEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jmpq_.L_44f4ed(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
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


define %struct.Memory* @routine_cmpl__0x64__0xac5d28(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xac5d28_type* @G_0xac5d28 to i64), i64 100)
  ret %struct.Memory* %8
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #2 {
  %6 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 0
  %9 = zext i1 %8 to i8
  store i8 %9, i8* %2, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %11 = select i1 %8, i64 %3, i64 %4
  store i64 %11, i64* %10, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jne_.L_44ec29(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0xffffffff__MINUS0x1cc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RBP
  %10 = sub i64 %9, 460
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x1bc__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 444
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x1d0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 464
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__0x1__MINUS0x1b4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RBP
  %10 = sub i64 %9, 436
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x1b4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 436
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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

define %struct.Memory* @routine_cmpl_0xac5d28___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %EAX
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0xac5d28_type* @G_0xac5d28 to i64))
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_jge_.L_44eba0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
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


define %struct.Memory* @routine_movq__0xac5d30___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0xac5d30_type* @G__0xac5d30 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movslq_MINUS0x1b4__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 436
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = sext i64 %4 to i128
  %9 = and i128 %8, -18446744073709551616
  %10 = zext i64 %3 to i128
  %11 = or i128 %7, %10
  %12 = zext i64 %4 to i128
  %13 = or i128 %9, %12
  %14 = mul  i128 %13, %11
  %15 = trunc i128 %14 to i64
  store i64 %15, i64* %2, align 8
  %16 = sext i64 %15 to i128
  %17 = icmp ne i128 %16, %14
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = trunc i128 %14 to i32
  %21 = and i32 %20, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21) #22
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 0, i8* %28, align 1
  %29 = lshr i64 %15, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %18, i8* %32, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_imulq__0x1dc___rcx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 476)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
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

define %struct.Memory* @routine_addq__rcx___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %RCX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x19c__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 412
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl_MINUS0x1d0__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RBP
  %15 = sub i64 %14, 464
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_44eb87(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
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












define %struct.Memory* @routine_movl__edx__MINUS0x1d0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 464
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x1b4__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 436
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edx__MINUS0x1cc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 460
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_44eb8c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
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
block_400488:
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


define %struct.Memory* @routine_movl__eax__MINUS0x1b4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 436
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_44eb14(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
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


define %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x1cc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RBP
  %10 = sub i64 %9, 460
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_44ec1f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl_MINUS0x1cc__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 460
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0xac5d28___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0xac5d28_type* @G_0xac5d28 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_subl__0x1___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 1)
  ret %struct.Memory* %12
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
block_400488:
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


define %struct.Memory* @routine_jge_.L_44ec09(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
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


define %struct.Memory* @routine_movl__0x1dc___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 476)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__eax___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__0xac5d30___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G__0xac5d30_type* @G__0xac5d30 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movslq_MINUS0x1cc__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 460
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_imulq__0x1dc___rsi___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 476)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__rcx___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_addq__rsi___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %RSI
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0xac5d28___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0xac5d28_type* @G_0xac5d28 to i64))
  ret %struct.Memory* %11
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq__eax___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addq__rsi___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %RSI
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rcx___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_callq_.memcpy_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4CALLI2InImEEEP6MemoryS4_R5StateT_S2_(%struct.Memory* %2, %struct.State* %0, i64 %7, i64 %9)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 -1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__eax__0xac5d28(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %EAX
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xac5d28_type* @G_0xac5d28 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_44ec24(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
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




define %struct.Memory* @routine_jmpq_.L_44ec29(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
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




define %struct.Memory* @routine_movslq_0xac5d28___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0xac5d28_type* @G_0xac5d28 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movq__rax__MINUS0x1c8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 456
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl_0x7ae438___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G_0x7ae438_type* @G_0x7ae438 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_MINUS0x1c8__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 456
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edx____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = load i32, i32* %EDX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl_0xafdfb0___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G_0xafdfb0_type* @G_0xafdfb0 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__edx__0x194__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 404
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x14__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__edx__0x198__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 408
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x1bc__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 444
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__edx__0x19c__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 412
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_0xb8b854___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G_0xb8b854_type* @G_0xb8b854 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = trunc i64 %3 to i32
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7
  %9 = sub i32 %6, %8
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %2, align 8
  %11 = icmp ult i32 %6, %8
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = and i32 %9, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14) #22
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i32 %8, %6
  %21 = xor i32 %20, %9
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %9, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %9, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %6, 31
  %33 = lshr i32 %8, 31
  %34 = xor i32 %33, %32
  %35 = xor i32 %29, %32
  %36 = add   i32 %35, %34
  %37 = icmp eq i32 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_subl_0xb54ce4___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RDX
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 ptrtoint( %G_0xb54ce4_type* @G_0xb54ce4 to i64))
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movl__edx__0x1a0__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 416
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x4__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__edx__0x1a4__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 420
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x8__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__edx__0x1a8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 424
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0xc__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__edx__0x1ac__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 428
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x10__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__edx__0x1b0__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 432
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__0x0__MINUS0x1b8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RBP
  %10 = sub i64 %9, 440
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x5__MINUS0x1b8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RBP
  %10 = sub i64 %9, 440
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 5)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_44edb0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
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


define %struct.Memory* @routine_movl_MINUS0x1b8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 440
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl_0xb54ce4___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %EAX
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0xb54ce4_type* @G_0xb54ce4 to i64))
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_44ed65(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
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


define %struct.Memory* @routine_movl_MINUS0x1b8__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 440
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_addq__0x1b4___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 436)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movslq_MINUS0x1b8__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 440
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = trunc i64 %4 to i6
  switch i6 %6, label %12 [
    i6 0, label %41
    i6 1, label %7
  ]

; <label>:7:                                      ; preds = %5
  %8 = shl i64 %3, 1
  %9 = icmp slt i64 %3, 0
  %10 = icmp slt i64 %8, 0
  %11 = xor i1 %9, %10
  br label %19

; <label>:12:                                     ; preds = %5
  %13 = and i64 %4, 63
  %14 = add  i64 %13, -1
  %15 = shl i64 %3, %14
  %16 = icmp slt i64 %15, 0
  %17 = icmp ne i8 0, 0
  %18 = shl i64 %15, 1
  br label %19

; <label>:19:                                     ; preds = %12, %7
  %20 = phi i1 [ %9, %7 ], [ %16, %12 ]
  %21 = phi i1 [ %11, %7 ], [ %17, %12 ]
  %22 = phi i64 [ %8, %7 ], [ %18, %12 ]
  store i64 %22, i64* %2, align 8
  %23 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  %24 = zext i1 %20 to i8
  store i8 %24, i8* %23, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  %26 = trunc i64 %22 to i32
  %27 = and i32 %26, 254
  %28 = tail call i32 @llvm.ctpop.i32(i32 %27) #22
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = xor i8 %30, 1
  store i8 %31, i8* %25, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %34 = icmp eq i64 %22, 0
  %35 = zext i1 %34 to i8
  store i8 %35, i8* %33, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  %37 = lshr i64 %22, 63
  %38 = trunc i64 %37 to i8
  store i8 %38, i8* %36, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  %40 = zext i1 %21 to i8
  store i8 %40, i8* %39, align 1
  br label %41

; <label>:41:                                     ; preds = %19, %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_shlq__0x2___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 2)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movq_MINUS0x1c8__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 456
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addq__0x1c8___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 456)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movslq_MINUS0x1b8__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 440
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_shlq__0x2___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RDX
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 2)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_addq__rdx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %RDX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movq__rcx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_callq_.get_move_from_stack(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4CALLI2InImEEEP6MemoryS4_R5StateT_S2_(%struct.Memory* %2, %struct.State* %0, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jmpq_.L_44ed97(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
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






define %struct.Memory* @routine_movl__0x0__0x1b4__rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %RCX
  %14 = mul i64 %13, 4
  %15 = add i64 %12, 436
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 11
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 0)
  ret %struct.Memory* %19
}






define %struct.Memory* @routine_movl__0x0__0x1c8__rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %RCX
  %14 = mul i64 %13, 4
  %15 = add i64 %12, 456
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 11
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 0)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_jmpq_.L_44ed9c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
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






define %struct.Memory* @routine_movl__eax__MINUS0x1b8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 440
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_44ecf8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
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


define %struct.Memory* @routine_movl__0x15__MINUS0x1b4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RBP
  %10 = sub i64 %9, 436
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 21)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x190__MINUS0x1b4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RBP
  %10 = sub i64 %9, 436
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 400)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_44edfa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
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


define %struct.Memory* @routine_movslq_MINUS0x1b4__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 436
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  store i8 %6, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb_0xb05020___rax_1____cl(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RAX = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 11554848
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %CL, i64 %14)
  ret %struct.Memory* %17
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i8
  %6 = inttoptr i64 %2 to i8*
  store i8 %5, i8* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__cl__MINUS0x1b0__rbp__rax_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RAX = bitcast %union.anon* %12 to i64*
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 15
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RBP = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RAX
  %18 = add i64 %16, -432
  %19 = add i64 %18, %17
  %20 = load i8, i8* %CL
  %21 = zext i8 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}








define %struct.Memory* @routine_jmpq_.L_44edba(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
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


define %struct.Memory* @routine_movl__0x1___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 1)
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_leaq_MINUS0x1b0__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 432
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.mark_string(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4CALLI2InImEEEP6MemoryS4_R5StateT_S2_(%struct.Memory* %2, %struct.State* %0, i64 %7, i64 %9)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_je_.L_44ee2e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}







define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i8
  %6 = inttoptr i64 %2 to i8*
  store i8 %5, i8* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__0x1__MINUS0x1b0__rbp__rax_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = load i64, i64* %RAX
  %14 = add i64 %12, -432
  %15 = add i64 %14, %13
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 8
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 1)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_jge_.L_44efe3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
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








define %struct.Memory* @routine_jne_.L_44ee65(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jmpq_.L_44efcf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
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



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  %7 = sext i8 %6 to i64
  %8 = and i64 %7, 4294967295
  store i64 %8, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movsbl_MINUS0x1b0__rbp__rax_1____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = add i64 %15, -432
  %18 = add i64 %17, %16
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 8
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %18)
  ret %struct.Memory* %21
}


define %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ECX = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %ECX
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 3
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_44ee82(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_addl__0x14___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 20)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movslq__eax___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = add i64 %12, 12099168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl__0x3___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %EAX
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 3
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_44eebc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}








define %struct.Memory* @routine_movsbl_MINUS0x1b0__rbp__rcx_1____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = add i64 %15, -432
  %18 = add i64 %17, %16
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 8
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %18)
  ret %struct.Memory* %21
}


define %struct.Memory* @routine_cmpl__0x1___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %EAX
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 3
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_44ef6a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_je_.L_44eef6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}
















define %struct.Memory* @routine_subl__0x14___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 20)
  ret %struct.Memory* %12
}








define %struct.Memory* @routine_je_.L_44ef30(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}
























define %struct.Memory* @routine_je_.L_44efca(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_jne_.L_44efca(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_cmpl__0x1___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ECX = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %ECX
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 3
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_44ef9a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_cmpl__0x2___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ECX = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %ECX
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 3
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_44efb6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__0x2___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 2)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl_MINUS0x1b4__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 436
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jmpq_.L_44efc5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
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




define %struct.Memory* @routine_movb__0x2__MINUS0x1b0__rbp__rax_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = load i64, i64* %RAX
  %14 = add i64 %12, -432
  %15 = add i64 %14, %13
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 8
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 2)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_44efca(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
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










define %struct.Memory* @routine_jmpq_.L_44ee38(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
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






define %struct.Memory* @routine_jge_.L_44f097(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
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








define %struct.Memory* @routine_jne_.L_44f01a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jmpq_.L_44f083(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
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








define %struct.Memory* @routine_je_.L_44f04a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}








define %struct.Memory* @routine_jne_.L_44f07e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0xb0eff0_type* @G__0xb0eff0 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 380)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_cmpl__0x0__0x34__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RAX
  %10 = add i64 %9, 52
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_44f07e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movb__0x0__MINUS0x1b0__rbp__rax_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = load i64, i64* %RAX
  %14 = add i64 %12, -432
  %15 = add i64 %14, %13
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 8
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 0)
  ret %struct.Memory* %18
}










define %struct.Memory* @routine_jmpq_.L_44efed(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
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






define %struct.Memory* @routine_jge_.L_44f20e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
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








define %struct.Memory* @routine_je_.L_44f0f9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}
















define %struct.Memory* @routine_je_.L_44f0fe(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jmpq_.L_44f1fa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
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










define %struct.Memory* @routine_cmpl__0x0___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %EAX
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 3
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_44f138(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_cmpl__0x2___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %EAX
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 3
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_44f1e6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_jne_.L_44f172(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}
























define %struct.Memory* @routine_jne_.L_44f1ac(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}
























define %struct.Memory* @routine_jne_.L_44f1f5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}
















define %struct.Memory* @routine_movb__0x3__MINUS0x1b0__rbp__rax_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = load i64, i64* %RAX
  %14 = add i64 %12, -432
  %15 = add i64 %14, %13
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 8
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 3)
  ret %struct.Memory* %18
}










define %struct.Memory* @routine_jmpq_.L_44f0a1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
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






define %struct.Memory* @routine_jge_.L_44f3e6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
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








define %struct.Memory* @routine_jne_.L_44f245(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jmpq_.L_44f3d2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
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








define %struct.Memory* @routine_je_.L_44f262(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}














define %struct.Memory* @routine_je_.L_44f2b9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_jle_.L_44f2b9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JLEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_cmpl__0x4___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %EAX
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 3
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 4)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L2JLEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #2 {
  %6 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  %7 = load i8, i8* %6, align 1
  %8 = icmp ne i8 %7, 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  %12 = xor i1 %8, %11
  %13 = zext i1 %12 to i8
  store i8 %13, i8* %2, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %15 = select i1 %12, i64 %3, i64 %4
  store i64 %15, i64* %14, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jl_.L_44f3be(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JLEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_je_.L_44f310(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_jle_.L_44f310(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JLEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}
























define %struct.Memory* @routine_je_.L_44f367(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_jle_.L_44f367(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JLEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}
























define %struct.Memory* @routine_je_.L_44f3cd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_jle_.L_44f3cd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JLEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_jge_.L_44f3cd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
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




define %struct.Memory* @routine_movb__0x4__MINUS0x1b0__rbp__rax_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = load i64, i64* %RAX
  %14 = add i64 %12, -432
  %15 = add i64 %14, %13
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 8
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 4)
  ret %struct.Memory* %18
}










define %struct.Memory* @routine_jmpq_.L_44f218(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
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








define %struct.Memory* @routine_jge_.L_44f435(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
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






define %struct.Memory* @routine_movslq_0x1b4__rax__rcx_4____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %RCX
  %14 = mul i64 %13, 4
  %15 = add i64 %12, 436
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movb__0x5__MINUS0x1b0__rbp__rax_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = load i64, i64* %RAX
  %14 = add i64 %12, -432
  %15 = add i64 %14, %13
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 8
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 5)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_jmpq_.L_44f3f0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
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






define %struct.Memory* @routine_jge_.L_44f4dc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
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








define %struct.Memory* @routine_jne_.L_44f46c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jmpq_.L_44f4c8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
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








define %struct.Memory* @routine_je_.L_44f49e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_movl__ecx__MINUS0x1ec__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 492
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_44f4ae(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
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


define %struct.Memory* @routine_movl__0x3___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 3)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__eax__MINUS0x1ec__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 492
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_MINUS0x1ec__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 492
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #2 {
  %5 = trunc i64 %3 to i8
  store i8 %5, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__al___cl(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
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
  %14 = load i8, i8* %AL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %CL, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq_MINUS0x1c8__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 456
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x1b4__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 436
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movb__cl__0x4__rdx__rsi_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 7
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RDX = bitcast %union.anon* %12 to i64*
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 9
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RSI = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RDX
  %17 = load i64, i64* %RSI
  %18 = add i64 %16, 4
  %19 = add i64 %18, %17
  %20 = load i8, i8* %CL
  %21 = zext i8 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 4
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}








define %struct.Memory* @routine_jmpq_.L_44f43f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
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








define %struct.Memory* @routine_addq__0x1f0___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 496)
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
block_400488:
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
block_400488:
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

