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
declare %struct.Memory* @sub_437800.is_antisuji_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4e2700.gg_sort(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_437120.discard_redundant_move_reasons(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_481030.estimate_territorial_value(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_483400.estimate_strategical_value(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_484d10.compute_shape_factor(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_451db0.gprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_484e90.move_connects_strings(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40ead0.is_legal(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4850c0.value_moves_confirm_safety(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_427a70.move_considered(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x62334__rip__type = type <{ [8 x i8] }>
@G_0x62334__rip_= global %G_0x62334__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x623be__rip__type = type <{ [8 x i8] }>
@G_0x623be__rip_= global %G_0x623be__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x62404__rip__type = type <{ [8 x i8] }>
@G_0x62404__rip_= global %G_0x62404__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x62406__rip__type = type <{ [4 x i8] }>
@G_0x62406__rip_= global %G_0x62406__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x62411__rip__type = type <{ [8 x i8] }>
@G_0x62411__rip_= global %G_0x62411__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x62436__rip__type = type <{ [4 x i8] }>
@G_0x62436__rip_= global %G_0x62436__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x62657__rip__type = type <{ [8 x i8] }>
@G_0x62657__rip_= global %G_0x62657__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x62669__rip__type = type <{ [8 x i8] }>
@G_0x62669__rip_= global %G_0x62669__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x626bc__rip__type = type <{ [8 x i8] }>
@G_0x626bc__rip_= global %G_0x626bc__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x626c1__rip__type = type <{ [8 x i8] }>
@G_0x626c1__rip_= global %G_0x626c1__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x626ea__rip__type = type <{ [8 x i8] }>
@G_0x626ea__rip_= global %G_0x626ea__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6272e__rip__type = type <{ [8 x i8] }>
@G_0x6272e__rip_= global %G_0x6272e__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6276c__rip__type = type <{ [8 x i8] }>
@G_0x6276c__rip_= global %G_0x6276c__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x62812__rip__type = type <{ [8 x i8] }>
@G_0x62812__rip_= global %G_0x62812__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6298a__rip__type = type <{ [8 x i8] }>
@G_0x6298a__rip_= global %G_0x6298a__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x62a03__rip__type = type <{ [8 x i8] }>
@G_0x62a03__rip_= global %G_0x62a03__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x62ab5__rip__type = type <{ [8 x i8] }>
@G_0x62ab5__rip_= global %G_0x62ab5__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x62b20__rip__type = type <{ [8 x i8] }>
@G_0x62b20__rip_= global %G_0x62b20__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x62b55__rip__type = type <{ [8 x i8] }>
@G_0x62b55__rip_= global %G_0x62b55__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x62b75__rip__type = type <{ [8 x i8] }>
@G_0x62b75__rip_= global %G_0x62b75__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x62ba5__rip__type = type <{ [8 x i8] }>
@G_0x62ba5__rip_= global %G_0x62ba5__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x62bb5__rip__type = type <{ [8 x i8] }>
@G_0x62bb5__rip_= global %G_0x62bb5__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x62c20__rip__type = type <{ [8 x i8] }>
@G_0x62c20__rip_= global %G_0x62c20__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x62c5f__rip__type = type <{ [8 x i8] }>
@G_0x62c5f__rip_= global %G_0x62c5f__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x62c7f__rip__type = type <{ [8 x i8] }>
@G_0x62c7f__rip_= global %G_0x62c7f__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x62c8e__rip__type = type <{ [8 x i8] }>
@G_0x62c8e__rip_= global %G_0x62c8e__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x62caf__rip__type = type <{ [8 x i8] }>
@G_0x62caf__rip_= global %G_0x62caf__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x62ccd__rip__type = type <{ [8 x i8] }>
@G_0x62ccd__rip_= global %G_0x62ccd__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x62e72__rip__type = type <{ [8 x i8] }>
@G_0x62e72__rip_= global %G_0x62e72__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x62e96__rip__type = type <{ [8 x i8] }>
@G_0x62e96__rip_= global %G_0x62e96__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x99c0a0_type = type <{ [8 x i8] }>
@G_0x99c0a0= global %G_0x99c0a0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0xab0edc_type = type <{ [1 x i8] }>
@G_0xab0edc= global %G_0xab0edc_type <{ [1 x i8] c"\00" }>
%G_0xab0f20_type = type <{ [1 x i8] }>
@G_0xab0f20= global %G_0xab0f20_type <{ [1 x i8] c"\00" }>
%G_0xab0f28_type = type <{ [1 x i8] }>
@G_0xab0f28= global %G_0xab0f28_type <{ [1 x i8] c"\00" }>
%G_0xb54ce4_type = type <{ [1 x i8] }>
@G_0xb54ce4= global %G_0xb54ce4_type <{ [1 x i8] c"\00" }>
%G__0x480f80_type = type <{ [8 x i8] }>
@G__0x480f80= global %G__0x480f80_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57a100_type = type <{ [8 x i8] }>
@G__0x57a100= global %G__0x57a100_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x581e84_type = type <{ [8 x i8] }>
@G__0x581e84= global %G__0x581e84_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x582044_type = type <{ [8 x i8] }>
@G__0x582044= global %G__0x582044_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x58208a_type = type <{ [8 x i8] }>
@G__0x58208a= global %G__0x58208a_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x5820d3_type = type <{ [8 x i8] }>
@G__0x5820d3= global %G__0x5820d3_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x5820ea_type = type <{ [8 x i8] }>
@G__0x5820ea= global %G__0x5820ea_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x5820fd_type = type <{ [8 x i8] }>
@G__0x5820fd= global %G__0x5820fd_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x582137_type = type <{ [8 x i8] }>
@G__0x582137= global %G__0x582137_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x582155_type = type <{ [8 x i8] }>
@G__0x582155= global %G__0x582155_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x58217d_type = type <{ [8 x i8] }>
@G__0x58217d= global %G__0x58217d_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x5821b4_type = type <{ [8 x i8] }>
@G__0x5821b4= global %G__0x5821b4_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x5821da_type = type <{ [8 x i8] }>
@G__0x5821da= global %G__0x5821da_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x582200_type = type <{ [8 x i8] }>
@G__0x582200= global %G__0x582200_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0xb9d8f0_type = type <{ [8 x i8] }>
@G__0xb9d8f0= global %G__0xb9d8f0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @value_move_reasons(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .value_move_reasons:	 RIP: 480000	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 480000	 Bytes: 1
  %loadMem_480000 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480000 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480000)
  store %struct.Memory* %call_480000, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 480001	 Bytes: 3
  %loadMem_480001 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480001 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480001)
  store %struct.Memory* %call_480001, %struct.Memory** %MEMORY

  ; Code: subq $0xd0, %rsp	 RIP: 480004	 Bytes: 7
  %loadMem_480004 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480004 = call %struct.Memory* @routine_subq__0xd0___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480004)
  store %struct.Memory* %call_480004, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x8(%rbp)	 RIP: 48000b	 Bytes: 3
  %loadMem_48000b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48000b = call %struct.Memory* @routine_movl__edi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48000b)
  store %struct.Memory* %call_48000b, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0xc(%rbp)	 RIP: 48000e	 Bytes: 3
  %loadMem_48000e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48000e = call %struct.Memory* @routine_movl__esi__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48000e)
  store %struct.Memory* %call_48000e, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x10(%rbp)	 RIP: 480011	 Bytes: 5
  %loadMem_480011 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480011 = call %struct.Memory* @routine_movss__xmm0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480011)
  store %struct.Memory* %call_480011, %struct.Memory** %MEMORY

  ; Code: movss %xmm1, -0x14(%rbp)	 RIP: 480016	 Bytes: 5
  %loadMem_480016 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480016 = call %struct.Memory* @routine_movss__xmm1__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480016)
  store %struct.Memory* %call_480016, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xb54ce4	 RIP: 48001b	 Bytes: 8
  %loadMem_48001b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48001b = call %struct.Memory* @routine_cmpl__0x0__0xb54ce4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48001b)
  store %struct.Memory* %call_48001b, %struct.Memory** %MEMORY

  ; Code: jne .L_48002e	 RIP: 480023	 Bytes: 6
  %loadMem_480023 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480023 = call %struct.Memory* @routine_jne_.L_48002e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480023, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_480023, %struct.Memory** %MEMORY

  %loadBr_480023 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_480023 = icmp eq i8 %loadBr_480023, 1
  br i1 %cmpBr_480023, label %block_.L_48002e, label %block_480029

block_480029:
  ; Code: jmpq .L_480056	 RIP: 480029	 Bytes: 5
  %loadMem_480029 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480029 = call %struct.Memory* @routine_jmpq_.L_480056(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480029, i64 45, i64 5)
  store %struct.Memory* %call_480029, %struct.Memory** %MEMORY

  br label %block_.L_480056

  ; Code: .L_48002e:	 RIP: 48002e	 Bytes: 0
block_.L_48002e:

  ; Code: movq $0x581e84, %rdi	 RIP: 48002e	 Bytes: 10
  %loadMem_48002e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48002e = call %struct.Memory* @routine_movq__0x581e84___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48002e)
  store %struct.Memory* %call_48002e, %struct.Memory** %MEMORY

  ; Code: movl $0x957, %esi	 RIP: 480038	 Bytes: 5
  %loadMem_480038 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480038 = call %struct.Memory* @routine_movl__0x957___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480038)
  store %struct.Memory* %call_480038, %struct.Memory** %MEMORY

  ; Code: movq $0x57a100, %rdx	 RIP: 48003d	 Bytes: 10
  %loadMem_48003d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48003d = call %struct.Memory* @routine_movq__0x57a100___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48003d)
  store %struct.Memory* %call_48003d, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, %eax	 RIP: 480047	 Bytes: 5
  %loadMem_480047 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480047 = call %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480047)
  store %struct.Memory* %call_480047, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 48004c	 Bytes: 2
  %loadMem_48004c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48004c = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48004c)
  store %struct.Memory* %call_48004c, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 48004e	 Bytes: 3
  %loadMem_48004e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48004e = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48004e)
  store %struct.Memory* %call_48004e, %struct.Memory** %MEMORY

  ; Code: callq .abortgo	 RIP: 480051	 Bytes: 5
  %loadMem1_480051 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_480051 = call %struct.Memory* @routine_callq_.abortgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_480051, i64 -188353, i64 5, i64 5)
  store %struct.Memory* %call1_480051, %struct.Memory** %MEMORY

  %loadMem2_480051 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_480051 = load i64, i64* %3
  %call2_480051 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64  %loadPC_480051, %struct.Memory* %loadMem2_480051)
  store %struct.Memory* %call2_480051, %struct.Memory** %MEMORY

  ; Code: .L_480056:	 RIP: 480056	 Bytes: 0
  br label %block_.L_480056
block_.L_480056:

  ; Code: movl -0x8(%rbp), %edi	 RIP: 480056	 Bytes: 3
  %loadMem_480056 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480056 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480056)
  store %struct.Memory* %call_480056, %struct.Memory** %MEMORY

  ; Code: callq .is_antisuji_move	 RIP: 480059	 Bytes: 5
  %loadMem1_480059 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_480059 = call %struct.Memory* @routine_callq_.is_antisuji_move(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_480059, i64 -297049, i64 5, i64 5)
  store %struct.Memory* %call1_480059, %struct.Memory** %MEMORY

  %loadMem2_480059 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_480059 = load i64, i64* %3
  %call2_480059 = call %struct.Memory* @sub_437800.is_antisuji_move(%struct.State* %0, i64  %loadPC_480059, %struct.Memory* %loadMem2_480059)
  store %struct.Memory* %call2_480059, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 48005e	 Bytes: 3
  %loadMem_48005e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48005e = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48005e)
  store %struct.Memory* %call_48005e, %struct.Memory** %MEMORY

  ; Code: je .L_480074	 RIP: 480061	 Bytes: 6
  %loadMem_480061 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480061 = call %struct.Memory* @routine_je_.L_480074(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480061, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_480061, %struct.Memory** %MEMORY

  %loadBr_480061 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_480061 = icmp eq i8 %loadBr_480061, 1
  br i1 %cmpBr_480061, label %block_.L_480074, label %block_480067

block_480067:
  ; Code: xorps %xmm0, %xmm0	 RIP: 480067	 Bytes: 3
  %loadMem_480067 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480067 = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480067)
  store %struct.Memory* %call_480067, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x4(%rbp)	 RIP: 48006a	 Bytes: 5
  %loadMem_48006a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48006a = call %struct.Memory* @routine_movss__xmm0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48006a)
  store %struct.Memory* %call_48006a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_480f68	 RIP: 48006f	 Bytes: 5
  %loadMem_48006f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48006f = call %struct.Memory* @routine_jmpq_.L_480f68(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48006f, i64 3833, i64 5)
  store %struct.Memory* %call_48006f, %struct.Memory** %MEMORY

  br label %block_.L_480f68

  ; Code: .L_480074:	 RIP: 480074	 Bytes: 0
block_.L_480074:

  ; Code: cmpl $0x0, 0xab0f20	 RIP: 480074	 Bytes: 8
  %loadMem_480074 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480074 = call %struct.Memory* @routine_cmpl__0x0__0xab0f20(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480074)
  store %struct.Memory* %call_480074, %struct.Memory** %MEMORY

  ; Code: je .L_480090	 RIP: 48007c	 Bytes: 6
  %loadMem_48007c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48007c = call %struct.Memory* @routine_je_.L_480090(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48007c, i8* %BRANCH_TAKEN, i64 20, i64 6, i64 6)
  store %struct.Memory* %call_48007c, %struct.Memory** %MEMORY

  %loadBr_48007c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48007c = icmp eq i8 %loadBr_48007c, 1
  br i1 %cmpBr_48007c, label %block_.L_480090, label %block_480082

block_480082:
  ; Code: cmpl $0x0, 0xab0edc	 RIP: 480082	 Bytes: 8
  %loadMem_480082 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480082 = call %struct.Memory* @routine_cmpl__0x0__0xab0edc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480082)
  store %struct.Memory* %call_480082, %struct.Memory** %MEMORY

  ; Code: je .L_4801a2	 RIP: 48008a	 Bytes: 6
  %loadMem_48008a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48008a = call %struct.Memory* @routine_je_.L_4801a2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48008a, i8* %BRANCH_TAKEN, i64 280, i64 6, i64 6)
  store %struct.Memory* %call_48008a, %struct.Memory** %MEMORY

  %loadBr_48008a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48008a = icmp eq i8 %loadBr_48008a, 1
  br i1 %cmpBr_48008a, label %block_.L_4801a2, label %block_.L_480090

  ; Code: .L_480090:	 RIP: 480090	 Bytes: 0
block_.L_480090:

  ; Code: movq $0xb9d8f0, %rax	 RIP: 480090	 Bytes: 10
  %loadMem_480090 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480090 = call %struct.Memory* @routine_movq__0xb9d8f0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480090)
  store %struct.Memory* %call_480090, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 48009a	 Bytes: 4
  %loadMem_48009a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48009a = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48009a)
  store %struct.Memory* %call_48009a, %struct.Memory** %MEMORY

  ; Code: imulq $0x234, %rcx, %rcx	 RIP: 48009e	 Bytes: 7
  %loadMem_48009e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48009e = call %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48009e)
  store %struct.Memory* %call_48009e, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4800a5	 Bytes: 3
  %loadMem_4800a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4800a5 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4800a5)
  store %struct.Memory* %call_4800a5, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x48(%rax)	 RIP: 4800a8	 Bytes: 4
  %loadMem_4800a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4800a8 = call %struct.Memory* @routine_cmpl__0x0__0x48__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4800a8)
  store %struct.Memory* %call_4800a8, %struct.Memory** %MEMORY

  ; Code: jge .L_4800dc	 RIP: 4800ac	 Bytes: 6
  %loadMem_4800ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4800ac = call %struct.Memory* @routine_jge_.L_4800dc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4800ac, i8* %BRANCH_TAKEN, i64 48, i64 6, i64 6)
  store %struct.Memory* %call_4800ac, %struct.Memory** %MEMORY

  %loadBr_4800ac = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4800ac = icmp eq i8 %loadBr_4800ac, 1
  br i1 %cmpBr_4800ac, label %block_.L_4800dc, label %block_4800b2

block_4800b2:
  ; Code: xorps %xmm0, %xmm0	 RIP: 4800b2	 Bytes: 3
  %loadMem_4800b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4800b2 = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4800b2)
  store %struct.Memory* %call_4800b2, %struct.Memory** %MEMORY

  ; Code: movq $0xb9d8f0, %rax	 RIP: 4800b5	 Bytes: 10
  %loadMem_4800b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4800b5 = call %struct.Memory* @routine_movq__0xb9d8f0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4800b5)
  store %struct.Memory* %call_4800b5, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 4800bf	 Bytes: 4
  %loadMem_4800bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4800bf = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4800bf)
  store %struct.Memory* %call_4800bf, %struct.Memory** %MEMORY

  ; Code: imulq $0x234, %rcx, %rcx	 RIP: 4800c3	 Bytes: 7
  %loadMem_4800c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4800c3 = call %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4800c3)
  store %struct.Memory* %call_4800c3, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4800ca	 Bytes: 3
  %loadMem_4800ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4800ca = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4800ca)
  store %struct.Memory* %call_4800ca, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x3c(%rax), %xmm1	 RIP: 4800cd	 Bytes: 5
  %loadMem_4800cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4800cd = call %struct.Memory* @routine_cvtss2sd_0x3c__rax____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4800cd)
  store %struct.Memory* %call_4800cd, %struct.Memory** %MEMORY

  ; Code: ucomisd %xmm0, %xmm1	 RIP: 4800d2	 Bytes: 4
  %loadMem_4800d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4800d2 = call %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4800d2)
  store %struct.Memory* %call_4800d2, %struct.Memory** %MEMORY

  ; Code: jbe .L_4801a2	 RIP: 4800d6	 Bytes: 6
  %loadMem_4800d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4800d6 = call %struct.Memory* @routine_jbe_.L_4801a2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4800d6, i8* %BRANCH_TAKEN, i64 204, i64 6, i64 6)
  store %struct.Memory* %call_4800d6, %struct.Memory** %MEMORY

  %loadBr_4800d6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4800d6 = icmp eq i8 %loadBr_4800d6, 1
  br i1 %cmpBr_4800d6, label %block_.L_4801a2, label %block_.L_4800dc

  ; Code: .L_4800dc:	 RIP: 4800dc	 Bytes: 0
block_.L_4800dc:

  ; Code: movl $0x0, -0x20(%rbp)	 RIP: 4800dc	 Bytes: 7
  %loadMem_4800dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4800dc = call %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4800dc)
  store %struct.Memory* %call_4800dc, %struct.Memory** %MEMORY

  ; Code: .L_4800e3:	 RIP: 4800e3	 Bytes: 0
  br label %block_.L_4800e3
block_.L_4800e3:

  ; Code: xorl %eax, %eax	 RIP: 4800e3	 Bytes: 2
  %loadMem_4800e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4800e3 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4800e3)
  store %struct.Memory* %call_4800e3, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 4800e5	 Bytes: 2
  %loadMem_4800e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4800e5 = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4800e5)
  store %struct.Memory* %call_4800e5, %struct.Memory** %MEMORY

  ; Code: movq $0xb9d8f0, %rdx	 RIP: 4800e7	 Bytes: 10
  %loadMem_4800e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4800e7 = call %struct.Memory* @routine_movq__0xb9d8f0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4800e7)
  store %struct.Memory* %call_4800e7, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rsi	 RIP: 4800f1	 Bytes: 4
  %loadMem_4800f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4800f1 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4800f1)
  store %struct.Memory* %call_4800f1, %struct.Memory** %MEMORY

  ; Code: imulq $0x234, %rsi, %rsi	 RIP: 4800f5	 Bytes: 7
  %loadMem_4800f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4800f5 = call %struct.Memory* @routine_imulq__0x234___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4800f5)
  store %struct.Memory* %call_4800f5, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 4800fc	 Bytes: 3
  %loadMem_4800fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4800fc = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4800fc)
  store %struct.Memory* %call_4800fc, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rsi	 RIP: 4800ff	 Bytes: 4
  %loadMem_4800ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4800ff = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4800ff)
  store %struct.Memory* %call_4800ff, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x48(%rdx,%rsi,4)	 RIP: 480103	 Bytes: 5
  %loadMem_480103 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480103 = call %struct.Memory* @routine_cmpl__0x0__0x48__rdx__rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480103)
  store %struct.Memory* %call_480103, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x41(%rbp)	 RIP: 480108	 Bytes: 3
  %loadMem_480108 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480108 = call %struct.Memory* @routine_movb__cl__MINUS0x41__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480108)
  store %struct.Memory* %call_480108, %struct.Memory** %MEMORY

  ; Code: jl .L_48011b	 RIP: 48010b	 Bytes: 6
  %loadMem_48010b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48010b = call %struct.Memory* @routine_jl_.L_48011b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48010b, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_48010b, %struct.Memory** %MEMORY

  %loadBr_48010b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48010b = icmp eq i8 %loadBr_48010b, 1
  br i1 %cmpBr_48010b, label %block_.L_48011b, label %block_480111

block_480111:
  ; Code: cmpl $0x78, -0x20(%rbp)	 RIP: 480111	 Bytes: 4
  %loadMem_480111 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480111 = call %struct.Memory* @routine_cmpl__0x78__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480111)
  store %struct.Memory* %call_480111, %struct.Memory** %MEMORY

  ; Code: setl %al	 RIP: 480115	 Bytes: 3
  %loadMem_480115 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480115 = call %struct.Memory* @routine_setl__al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480115)
  store %struct.Memory* %call_480115, %struct.Memory** %MEMORY

  ; Code: movb %al, -0x41(%rbp)	 RIP: 480118	 Bytes: 3
  %loadMem_480118 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480118 = call %struct.Memory* @routine_movb__al__MINUS0x41__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480118)
  store %struct.Memory* %call_480118, %struct.Memory** %MEMORY

  ; Code: .L_48011b:	 RIP: 48011b	 Bytes: 0
  br label %block_.L_48011b
block_.L_48011b:

  ; Code: movb -0x41(%rbp), %al	 RIP: 48011b	 Bytes: 3
  %loadMem_48011b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48011b = call %struct.Memory* @routine_movb_MINUS0x41__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48011b)
  store %struct.Memory* %call_48011b, %struct.Memory** %MEMORY

  ; Code: testb $0x1, %al	 RIP: 48011e	 Bytes: 2
  %loadMem_48011e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48011e = call %struct.Memory* @routine_testb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48011e)
  store %struct.Memory* %call_48011e, %struct.Memory** %MEMORY

  ; Code: jne .L_48012b	 RIP: 480120	 Bytes: 6
  %loadMem_480120 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480120 = call %struct.Memory* @routine_jne_.L_48012b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480120, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_480120, %struct.Memory** %MEMORY

  %loadBr_480120 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_480120 = icmp eq i8 %loadBr_480120, 1
  br i1 %cmpBr_480120, label %block_.L_48012b, label %block_480126

block_480126:
  ; Code: jmpq .L_480139	 RIP: 480126	 Bytes: 5
  %loadMem_480126 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480126 = call %struct.Memory* @routine_jmpq_.L_480139(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480126, i64 19, i64 5)
  store %struct.Memory* %call_480126, %struct.Memory** %MEMORY

  br label %block_.L_480139

  ; Code: .L_48012b:	 RIP: 48012b	 Bytes: 0
block_.L_48012b:

  ; Code: movl -0x20(%rbp), %eax	 RIP: 48012b	 Bytes: 3
  %loadMem_48012b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48012b = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48012b)
  store %struct.Memory* %call_48012b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 48012e	 Bytes: 3
  %loadMem_48012e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48012e = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48012e)
  store %struct.Memory* %call_48012e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 480131	 Bytes: 3
  %loadMem_480131 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480131 = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480131)
  store %struct.Memory* %call_480131, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4800e3	 RIP: 480134	 Bytes: 5
  %loadMem_480134 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480134 = call %struct.Memory* @routine_jmpq_.L_4800e3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480134, i64 -81, i64 5)
  store %struct.Memory* %call_480134, %struct.Memory** %MEMORY

  br label %block_.L_4800e3

  ; Code: .L_480139:	 RIP: 480139	 Bytes: 0
block_.L_480139:

  ; Code: movl $0x4, %eax	 RIP: 480139	 Bytes: 5
  %loadMem_480139 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480139 = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480139)
  store %struct.Memory* %call_480139, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 48013e	 Bytes: 2
  %loadMem_48013e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48013e = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48013e)
  store %struct.Memory* %call_48013e, %struct.Memory** %MEMORY

  ; Code: movq $0x480f80, %rcx	 RIP: 480140	 Bytes: 10
  %loadMem_480140 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480140 = call %struct.Memory* @routine_movq__0x480f80___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480140)
  store %struct.Memory* %call_480140, %struct.Memory** %MEMORY

  ; Code: movq $0xb9d8f0, %rsi	 RIP: 48014a	 Bytes: 10
  %loadMem_48014a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48014a = call %struct.Memory* @routine_movq__0xb9d8f0___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48014a)
  store %struct.Memory* %call_48014a, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdi	 RIP: 480154	 Bytes: 4
  %loadMem_480154 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480154 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480154)
  store %struct.Memory* %call_480154, %struct.Memory** %MEMORY

  ; Code: imulq $0x234, %rdi, %rdi	 RIP: 480158	 Bytes: 7
  %loadMem_480158 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480158 = call %struct.Memory* @routine_imulq__0x234___rdi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480158)
  store %struct.Memory* %call_480158, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rsi	 RIP: 48015f	 Bytes: 3
  %loadMem_48015f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48015f = call %struct.Memory* @routine_addq__rdi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48015f)
  store %struct.Memory* %call_48015f, %struct.Memory** %MEMORY

  ; Code: addq $0x48, %rsi	 RIP: 480162	 Bytes: 4
  %loadMem_480162 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480162 = call %struct.Memory* @routine_addq__0x48___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480162)
  store %struct.Memory* %call_480162, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdi	 RIP: 480166	 Bytes: 4
  %loadMem_480166 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480166 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480166)
  store %struct.Memory* %call_480166, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x50(%rbp)	 RIP: 48016a	 Bytes: 4
  %loadMem_48016a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48016a = call %struct.Memory* @routine_movq__rdi__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48016a)
  store %struct.Memory* %call_48016a, %struct.Memory** %MEMORY

  ; Code: movq %rsi, %rdi	 RIP: 48016e	 Bytes: 3
  %loadMem_48016e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48016e = call %struct.Memory* @routine_movq__rsi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48016e)
  store %struct.Memory* %call_48016e, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rsi	 RIP: 480171	 Bytes: 4
  %loadMem_480171 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480171 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480171)
  store %struct.Memory* %call_480171, %struct.Memory** %MEMORY

  ; Code: callq .gg_sort	 RIP: 480175	 Bytes: 5
  %loadMem1_480175 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_480175 = call %struct.Memory* @routine_callq_.gg_sort(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_480175, i64 402827, i64 5, i64 5)
  store %struct.Memory* %call1_480175, %struct.Memory** %MEMORY

  %loadMem2_480175 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_480175 = load i64, i64* %3
  %call2_480175 = call %struct.Memory* @sub_4e2700.gg_sort(%struct.State* %0, i64  %loadPC_480175, %struct.Memory* %loadMem2_480175)
  store %struct.Memory* %call2_480175, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %edi	 RIP: 48017a	 Bytes: 3
  %loadMem_48017a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48017a = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48017a)
  store %struct.Memory* %call_48017a, %struct.Memory** %MEMORY

  ; Code: callq .discard_redundant_move_reasons	 RIP: 48017d	 Bytes: 5
  %loadMem1_48017d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48017d = call %struct.Memory* @routine_callq_.discard_redundant_move_reasons(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48017d, i64 -299101, i64 5, i64 5)
  store %struct.Memory* %call1_48017d, %struct.Memory** %MEMORY

  %loadMem2_48017d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48017d = load i64, i64* %3
  %call2_48017d = call %struct.Memory* @sub_437120.discard_redundant_move_reasons(%struct.State* %0, i64  %loadPC_48017d, %struct.Memory* %loadMem2_48017d)
  store %struct.Memory* %call2_48017d, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %edi	 RIP: 480182	 Bytes: 3
  %loadMem_480182 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480182 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480182)
  store %struct.Memory* %call_480182, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %esi	 RIP: 480185	 Bytes: 3
  %loadMem_480185 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480185 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480185)
  store %struct.Memory* %call_480185, %struct.Memory** %MEMORY

  ; Code: movss -0x14(%rbp), %xmm0	 RIP: 480188	 Bytes: 5
  %loadMem_480188 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480188 = call %struct.Memory* @routine_movss_MINUS0x14__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480188)
  store %struct.Memory* %call_480188, %struct.Memory** %MEMORY

  ; Code: callq .estimate_territorial_value	 RIP: 48018d	 Bytes: 5
  %loadMem1_48018d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48018d = call %struct.Memory* @routine_callq_.estimate_territorial_value(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48018d, i64 3747, i64 5, i64 5)
  store %struct.Memory* %call1_48018d, %struct.Memory** %MEMORY

  %loadMem2_48018d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48018d = load i64, i64* %3
  %call2_48018d = call %struct.Memory* @sub_481030.estimate_territorial_value(%struct.State* %0, i64  %loadPC_48018d, %struct.Memory* %loadMem2_48018d)
  store %struct.Memory* %call2_48018d, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %edi	 RIP: 480192	 Bytes: 3
  %loadMem_480192 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480192 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480192)
  store %struct.Memory* %call_480192, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %esi	 RIP: 480195	 Bytes: 3
  %loadMem_480195 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480195 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480195)
  store %struct.Memory* %call_480195, %struct.Memory** %MEMORY

  ; Code: movss -0x14(%rbp), %xmm0	 RIP: 480198	 Bytes: 5
  %loadMem_480198 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480198 = call %struct.Memory* @routine_movss_MINUS0x14__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480198)
  store %struct.Memory* %call_480198, %struct.Memory** %MEMORY

  ; Code: callq .estimate_strategical_value	 RIP: 48019d	 Bytes: 5
  %loadMem1_48019d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48019d = call %struct.Memory* @routine_callq_.estimate_strategical_value(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48019d, i64 12899, i64 5, i64 5)
  store %struct.Memory* %call1_48019d, %struct.Memory** %MEMORY

  %loadMem2_48019d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48019d = load i64, i64* %3
  %call2_48019d = call %struct.Memory* @sub_483400.estimate_strategical_value(%struct.State* %0, i64  %loadPC_48019d, %struct.Memory* %loadMem2_48019d)
  store %struct.Memory* %call2_48019d, %struct.Memory** %MEMORY

  ; Code: .L_4801a2:	 RIP: 4801a2	 Bytes: 0
  br label %block_.L_4801a2
block_.L_4801a2:

  ; Code: movq $0xb9d8f0, %rax	 RIP: 4801a2	 Bytes: 10
  %loadMem_4801a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4801a2 = call %struct.Memory* @routine_movq__0xb9d8f0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4801a2)
  store %struct.Memory* %call_4801a2, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 4801ac	 Bytes: 4
  %loadMem_4801ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4801ac = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4801ac)
  store %struct.Memory* %call_4801ac, %struct.Memory** %MEMORY

  ; Code: imulq $0x234, %rcx, %rcx	 RIP: 4801b0	 Bytes: 7
  %loadMem_4801b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4801b0 = call %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4801b0)
  store %struct.Memory* %call_4801b0, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 4801b7	 Bytes: 3
  %loadMem_4801b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4801b7 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4801b7)
  store %struct.Memory* %call_4801b7, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 4801ba	 Bytes: 3
  %loadMem_4801ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4801ba = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4801ba)
  store %struct.Memory* %call_4801ba, %struct.Memory** %MEMORY

  ; Code: movss 0xc(%rdx), %xmm0	 RIP: 4801bd	 Bytes: 5
  %loadMem_4801bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4801bd = call %struct.Memory* @routine_movss_0xc__rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4801bd)
  store %struct.Memory* %call_4801bd, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 4801c2	 Bytes: 4
  %loadMem_4801c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4801c2 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4801c2)
  store %struct.Memory* %call_4801c2, %struct.Memory** %MEMORY

  ; Code: imulq $0x234, %rcx, %rcx	 RIP: 4801c6	 Bytes: 7
  %loadMem_4801c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4801c6 = call %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4801c6)
  store %struct.Memory* %call_4801c6, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4801cd	 Bytes: 3
  %loadMem_4801cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4801cd = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4801cd)
  store %struct.Memory* %call_4801cd, %struct.Memory** %MEMORY

  ; Code: addss 0x10(%rax), %xmm0	 RIP: 4801d0	 Bytes: 5
  %loadMem_4801d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4801d0 = call %struct.Memory* @routine_addss_0x10__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4801d0)
  store %struct.Memory* %call_4801d0, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x18(%rbp)	 RIP: 4801d5	 Bytes: 5
  %loadMem_4801d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4801d5 = call %struct.Memory* @routine_movss__xmm0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4801d5)
  store %struct.Memory* %call_4801d5, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %edi	 RIP: 4801da	 Bytes: 3
  %loadMem_4801da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4801da = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4801da)
  store %struct.Memory* %call_4801da, %struct.Memory** %MEMORY

  ; Code: callq .compute_shape_factor	 RIP: 4801dd	 Bytes: 5
  %loadMem1_4801dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4801dd = call %struct.Memory* @routine_callq_.compute_shape_factor(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4801dd, i64 19251, i64 5, i64 5)
  store %struct.Memory* %call1_4801dd, %struct.Memory** %MEMORY

  %loadMem2_4801dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4801dd = load i64, i64* %3
  %call2_4801dd = call %struct.Memory* @sub_484d10.compute_shape_factor(%struct.State* %0, i64  %loadPC_4801dd, %struct.Memory* %loadMem2_4801dd)
  store %struct.Memory* %call2_4801dd, %struct.Memory** %MEMORY

  ; Code: movsd 0x62e96(%rip), %xmm1	 RIP: 4801e2	 Bytes: 8
  %loadMem_4801e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4801e2 = call %struct.Memory* @routine_movsd_0x62e96__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4801e2)
  store %struct.Memory* %call_4801e2, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x1c(%rbp)	 RIP: 4801ea	 Bytes: 5
  %loadMem_4801ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4801ea = call %struct.Memory* @routine_movss__xmm0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4801ea)
  store %struct.Memory* %call_4801ea, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x18(%rbp), %xmm0	 RIP: 4801ef	 Bytes: 5
  %loadMem_4801ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4801ef = call %struct.Memory* @routine_cvtss2sd_MINUS0x18__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4801ef)
  store %struct.Memory* %call_4801ef, %struct.Memory** %MEMORY

  ; Code: ucomisd %xmm0, %xmm1	 RIP: 4801f4	 Bytes: 4
  %loadMem_4801f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4801f4 = call %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4801f4)
  store %struct.Memory* %call_4801f4, %struct.Memory** %MEMORY

  ; Code: jbe .L_48021d	 RIP: 4801f8	 Bytes: 6
  %loadMem_4801f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4801f8 = call %struct.Memory* @routine_jbe_.L_48021d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4801f8, i8* %BRANCH_TAKEN, i64 37, i64 6, i64 6)
  store %struct.Memory* %call_4801f8, %struct.Memory** %MEMORY

  %loadBr_4801f8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4801f8 = icmp eq i8 %loadBr_4801f8, 1
  br i1 %cmpBr_4801f8, label %block_.L_48021d, label %block_4801fe

block_4801fe:
  ; Code: movsd 0x62e72(%rip), %xmm0	 RIP: 4801fe	 Bytes: 8
  %loadMem_4801fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4801fe = call %struct.Memory* @routine_movsd_0x62e72__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4801fe)
  store %struct.Memory* %call_4801fe, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x18(%rbp), %xmm1	 RIP: 480206	 Bytes: 5
  %loadMem_480206 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480206 = call %struct.Memory* @routine_cvtss2sd_MINUS0x18__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480206)
  store %struct.Memory* %call_480206, %struct.Memory** %MEMORY

  ; Code: ucomisd %xmm0, %xmm1	 RIP: 48020b	 Bytes: 4
  %loadMem_48020b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48020b = call %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48020b)
  store %struct.Memory* %call_48020b, %struct.Memory** %MEMORY

  ; Code: jbe .L_48021d	 RIP: 48020f	 Bytes: 6
  %loadMem_48020f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48020f = call %struct.Memory* @routine_jbe_.L_48021d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48020f, i8* %BRANCH_TAKEN, i64 14, i64 6, i64 6)
  store %struct.Memory* %call_48020f, %struct.Memory** %MEMORY

  %loadBr_48020f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48020f = icmp eq i8 %loadBr_48020f, 1
  br i1 %cmpBr_48020f, label %block_.L_48021d, label %block_480215

block_480215:
  ; Code: xorps %xmm0, %xmm0	 RIP: 480215	 Bytes: 3
  %loadMem_480215 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480215 = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480215)
  store %struct.Memory* %call_480215, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x18(%rbp)	 RIP: 480218	 Bytes: 5
  %loadMem_480218 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480218 = call %struct.Memory* @routine_movss__xmm0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480218)
  store %struct.Memory* %call_480218, %struct.Memory** %MEMORY

  ; Code: .L_48021d:	 RIP: 48021d	 Bytes: 0
  br label %block_.L_48021d
block_.L_48021d:

  ; Code: xorps %xmm0, %xmm0	 RIP: 48021d	 Bytes: 3
  %loadMem_48021d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48021d = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48021d)
  store %struct.Memory* %call_48021d, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x18(%rbp), %xmm1	 RIP: 480220	 Bytes: 5
  %loadMem_480220 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480220 = call %struct.Memory* @routine_cvtss2sd_MINUS0x18__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480220)
  store %struct.Memory* %call_480220, %struct.Memory** %MEMORY

  ; Code: ucomisd %xmm0, %xmm1	 RIP: 480225	 Bytes: 4
  %loadMem_480225 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480225 = call %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480225)
  store %struct.Memory* %call_480225, %struct.Memory** %MEMORY

  ; Code: jbe .L_4809eb	 RIP: 480229	 Bytes: 6
  %loadMem_480229 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480229 = call %struct.Memory* @routine_jbe_.L_4809eb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480229, i8* %BRANCH_TAKEN, i64 1986, i64 6, i64 6)
  store %struct.Memory* %call_480229, %struct.Memory** %MEMORY

  %loadBr_480229 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_480229 = icmp eq i8 %loadBr_480229, 1
  br i1 %cmpBr_480229, label %block_.L_4809eb, label %block_48022f

block_48022f:
  ; Code: movq $0xb9d8f0, %rax	 RIP: 48022f	 Bytes: 10
  %loadMem_48022f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48022f = call %struct.Memory* @routine_movq__0xb9d8f0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48022f)
  store %struct.Memory* %call_48022f, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 480239	 Bytes: 4
  %loadMem_480239 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480239 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480239)
  store %struct.Memory* %call_480239, %struct.Memory** %MEMORY

  ; Code: imulq $0x234, %rcx, %rcx	 RIP: 48023d	 Bytes: 7
  %loadMem_48023d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48023d = call %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48023d)
  store %struct.Memory* %call_48023d, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 480244	 Bytes: 3
  %loadMem_480244 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480244 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480244)
  store %struct.Memory* %call_480244, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 480247	 Bytes: 3
  %loadMem_480247 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480247 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480247)
  store %struct.Memory* %call_480247, %struct.Memory** %MEMORY

  ; Code: movss 0x24(%rdx), %xmm0	 RIP: 48024a	 Bytes: 5
  %loadMem_48024a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48024a = call %struct.Memory* @routine_movss_0x24__rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48024a)
  store %struct.Memory* %call_48024a, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 48024f	 Bytes: 4
  %loadMem_48024f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48024f = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48024f)
  store %struct.Memory* %call_48024f, %struct.Memory** %MEMORY

  ; Code: imulq $0x234, %rcx, %rcx	 RIP: 480253	 Bytes: 7
  %loadMem_480253 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480253 = call %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480253)
  store %struct.Memory* %call_480253, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 48025a	 Bytes: 3
  %loadMem_48025a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48025a = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48025a)
  store %struct.Memory* %call_48025a, %struct.Memory** %MEMORY

  ; Code: addss 0x28(%rax), %xmm0	 RIP: 48025d	 Bytes: 5
  %loadMem_48025d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48025d = call %struct.Memory* @routine_addss_0x28__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48025d)
  store %struct.Memory* %call_48025d, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x28(%rbp)	 RIP: 480262	 Bytes: 5
  %loadMem_480262 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480262 = call %struct.Memory* @routine_movss__xmm0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480262)
  store %struct.Memory* %call_480262, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xab0f28	 RIP: 480267	 Bytes: 8
  %loadMem_480267 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480267 = call %struct.Memory* @routine_cmpl__0x0__0xab0f28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480267)
  store %struct.Memory* %call_480267, %struct.Memory** %MEMORY

  ; Code: jne .L_48027a	 RIP: 48026f	 Bytes: 6
  %loadMem_48026f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48026f = call %struct.Memory* @routine_jne_.L_48027a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48026f, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_48026f, %struct.Memory** %MEMORY

  %loadBr_48026f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48026f = icmp eq i8 %loadBr_48026f, 1
  br i1 %cmpBr_48026f, label %block_.L_48027a, label %block_480275

block_480275:
  ; Code: jmpq .L_4802b3	 RIP: 480275	 Bytes: 5
  %loadMem_480275 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480275 = call %struct.Memory* @routine_jmpq_.L_4802b3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480275, i64 62, i64 5)
  store %struct.Memory* %call_480275, %struct.Memory** %MEMORY

  br label %block_.L_4802b3

  ; Code: .L_48027a:	 RIP: 48027a	 Bytes: 0
block_.L_48027a:

  ; Code: movq $0x582044, %rdi	 RIP: 48027a	 Bytes: 10
  %loadMem_48027a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48027a = call %struct.Memory* @routine_movq__0x582044___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48027a)
  store %struct.Memory* %call_48027a, %struct.Memory** %MEMORY

  ; Code: movq $0xb9d8f0, %rax	 RIP: 480284	 Bytes: 10
  %loadMem_480284 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480284 = call %struct.Memory* @routine_movq__0xb9d8f0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480284)
  store %struct.Memory* %call_480284, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %esi	 RIP: 48028e	 Bytes: 3
  %loadMem_48028e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48028e = call %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48028e)
  store %struct.Memory* %call_48028e, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x28(%rbp), %xmm0	 RIP: 480291	 Bytes: 5
  %loadMem_480291 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480291 = call %struct.Memory* @routine_cvtss2sd_MINUS0x28__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480291)
  store %struct.Memory* %call_480291, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 480296	 Bytes: 4
  %loadMem_480296 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480296 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480296)
  store %struct.Memory* %call_480296, %struct.Memory** %MEMORY

  ; Code: imulq $0x234, %rcx, %rcx	 RIP: 48029a	 Bytes: 7
  %loadMem_48029a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48029a = call %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48029a)
  store %struct.Memory* %call_48029a, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4802a1	 Bytes: 3
  %loadMem_4802a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4802a1 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4802a1)
  store %struct.Memory* %call_4802a1, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x28(%rax), %xmm1	 RIP: 4802a4	 Bytes: 5
  %loadMem_4802a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4802a4 = call %struct.Memory* @routine_cvtss2sd_0x28__rax____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4802a4)
  store %struct.Memory* %call_4802a4, %struct.Memory** %MEMORY

  ; Code: movb $0x2, %al	 RIP: 4802a9	 Bytes: 2
  %loadMem_4802a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4802a9 = call %struct.Memory* @routine_movb__0x2___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4802a9)
  store %struct.Memory* %call_4802a9, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 4802ab	 Bytes: 5
  %loadMem1_4802ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4802ab = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4802ab, i64 -189691, i64 5, i64 5)
  store %struct.Memory* %call1_4802ab, %struct.Memory** %MEMORY

  %loadMem2_4802ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4802ab = load i64, i64* %3
  %call2_4802ab = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_4802ab, %struct.Memory* %loadMem2_4802ab)
  store %struct.Memory* %call2_4802ab, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x54(%rbp)	 RIP: 4802b0	 Bytes: 3
  %loadMem_4802b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4802b0 = call %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4802b0)
  store %struct.Memory* %call_4802b0, %struct.Memory** %MEMORY

  ; Code: .L_4802b3:	 RIP: 4802b3	 Bytes: 0
  br label %block_.L_4802b3
block_.L_4802b3:

  ; Code: movsd 0x62ccd(%rip), %xmm0	 RIP: 4802b3	 Bytes: 8
  %loadMem_4802b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4802b3 = call %struct.Memory* @routine_movsd_0x62ccd__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4802b3)
  store %struct.Memory* %call_4802b3, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x18(%rbp), %xmm1	 RIP: 4802bb	 Bytes: 5
  %loadMem_4802bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4802bb = call %struct.Memory* @routine_cvtss2sd_MINUS0x18__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4802bb)
  store %struct.Memory* %call_4802bb, %struct.Memory** %MEMORY

  ; Code: ucomisd %xmm0, %xmm1	 RIP: 4802c0	 Bytes: 4
  %loadMem_4802c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4802c0 = call %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4802c0)
  store %struct.Memory* %call_4802c0, %struct.Memory** %MEMORY

  ; Code: jae .L_4802f9	 RIP: 4802c4	 Bytes: 6
  %loadMem_4802c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4802c4 = call %struct.Memory* @routine_jae_.L_4802f9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4802c4, i8* %BRANCH_TAKEN, i64 53, i64 6, i64 6)
  store %struct.Memory* %call_4802c4, %struct.Memory** %MEMORY

  %loadBr_4802c4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4802c4 = icmp eq i8 %loadBr_4802c4, 1
  br i1 %cmpBr_4802c4, label %block_.L_4802f9, label %block_4802ca

block_4802ca:
  ; Code: movsd 0x62c8e(%rip), %xmm0	 RIP: 4802ca	 Bytes: 8
  %loadMem_4802ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4802ca = call %struct.Memory* @routine_movsd_0x62c8e__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4802ca)
  store %struct.Memory* %call_4802ca, %struct.Memory** %MEMORY

  ; Code: movq $0xb9d8f0, %rax	 RIP: 4802d2	 Bytes: 10
  %loadMem_4802d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4802d2 = call %struct.Memory* @routine_movq__0xb9d8f0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4802d2)
  store %struct.Memory* %call_4802d2, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 4802dc	 Bytes: 4
  %loadMem_4802dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4802dc = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4802dc)
  store %struct.Memory* %call_4802dc, %struct.Memory** %MEMORY

  ; Code: imulq $0x234, %rcx, %rcx	 RIP: 4802e0	 Bytes: 7
  %loadMem_4802e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4802e0 = call %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4802e0)
  store %struct.Memory* %call_4802e0, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4802e7	 Bytes: 3
  %loadMem_4802e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4802e7 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4802e7)
  store %struct.Memory* %call_4802e7, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x2c(%rax), %xmm1	 RIP: 4802ea	 Bytes: 5
  %loadMem_4802ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4802ea = call %struct.Memory* @routine_cvtss2sd_0x2c__rax____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4802ea)
  store %struct.Memory* %call_4802ea, %struct.Memory** %MEMORY

  ; Code: ucomisd %xmm0, %xmm1	 RIP: 4802ef	 Bytes: 4
  %loadMem_4802ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4802ef = call %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4802ef)
  store %struct.Memory* %call_4802ef, %struct.Memory** %MEMORY

  ; Code: jb .L_480626	 RIP: 4802f3	 Bytes: 6
  %loadMem_4802f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4802f3 = call %struct.Memory* @routine_jb_.L_480626(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4802f3, i8* %BRANCH_TAKEN, i64 819, i64 6, i64 6)
  store %struct.Memory* %call_4802f3, %struct.Memory** %MEMORY

  %loadBr_4802f3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4802f3 = icmp eq i8 %loadBr_4802f3, 1
  br i1 %cmpBr_4802f3, label %block_.L_480626, label %block_.L_4802f9

  ; Code: .L_4802f9:	 RIP: 4802f9	 Bytes: 0
block_.L_4802f9:

  ; Code: movsd 0x62c5f(%rip), %xmm0	 RIP: 4802f9	 Bytes: 8
  %loadMem_4802f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4802f9 = call %struct.Memory* @routine_movsd_0x62c5f__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4802f9)
  store %struct.Memory* %call_4802f9, %struct.Memory** %MEMORY

  ; Code: movsd 0x62c7f(%rip), %xmm1	 RIP: 480301	 Bytes: 8
  %loadMem_480301 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480301 = call %struct.Memory* @routine_movsd_0x62c7f__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480301)
  store %struct.Memory* %call_480301, %struct.Memory** %MEMORY

  ; Code: movq $0xb9d8f0, %rax	 RIP: 480309	 Bytes: 10
  %loadMem_480309 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480309 = call %struct.Memory* @routine_movq__0xb9d8f0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480309)
  store %struct.Memory* %call_480309, %struct.Memory** %MEMORY

  ; Code: movss -0x18(%rbp), %xmm2	 RIP: 480313	 Bytes: 5
  %loadMem_480313 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480313 = call %struct.Memory* @routine_movss_MINUS0x18__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480313)
  store %struct.Memory* %call_480313, %struct.Memory** %MEMORY

  ; Code: movss %xmm2, -0x2c(%rbp)	 RIP: 480318	 Bytes: 5
  %loadMem_480318 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480318 = call %struct.Memory* @routine_movss__xmm2__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480318)
  store %struct.Memory* %call_480318, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x28(%rbp), %xmm2	 RIP: 48031d	 Bytes: 5
  %loadMem_48031d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48031d = call %struct.Memory* @routine_cvtss2sd_MINUS0x28__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48031d)
  store %struct.Memory* %call_48031d, %struct.Memory** %MEMORY

  ; Code: movaps %xmm1, %xmm3	 RIP: 480322	 Bytes: 3
  %loadMem_480322 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480322 = call %struct.Memory* @routine_movaps__xmm1___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480322)
  store %struct.Memory* %call_480322, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm2, %xmm3	 RIP: 480325	 Bytes: 4
  %loadMem_480325 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480325 = call %struct.Memory* @routine_mulsd__xmm2___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480325)
  store %struct.Memory* %call_480325, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 480329	 Bytes: 4
  %loadMem_480329 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480329 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480329)
  store %struct.Memory* %call_480329, %struct.Memory** %MEMORY

  ; Code: imulq $0x234, %rcx, %rcx	 RIP: 48032d	 Bytes: 7
  %loadMem_48032d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48032d = call %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48032d)
  store %struct.Memory* %call_48032d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 480334	 Bytes: 3
  %loadMem_480334 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480334 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480334)
  store %struct.Memory* %call_480334, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x2c(%rax), %xmm2	 RIP: 480337	 Bytes: 5
  %loadMem_480337 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480337 = call %struct.Memory* @routine_cvtss2sd_0x2c__rax____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480337)
  store %struct.Memory* %call_480337, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm2, %xmm1	 RIP: 48033c	 Bytes: 4
  %loadMem_48033c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48033c = call %struct.Memory* @routine_mulsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48033c)
  store %struct.Memory* %call_48033c, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm3	 RIP: 480340	 Bytes: 4
  %loadMem_480340 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480340 = call %struct.Memory* @routine_addsd__xmm1___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480340)
  store %struct.Memory* %call_480340, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x18(%rbp), %xmm1	 RIP: 480344	 Bytes: 5
  %loadMem_480344 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480344 = call %struct.Memory* @routine_cvtss2sd_MINUS0x18__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480344)
  store %struct.Memory* %call_480344, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm1, %xmm0	 RIP: 480349	 Bytes: 4
  %loadMem_480349 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480349 = call %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480349)
  store %struct.Memory* %call_480349, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x28(%rbp), %xmm1	 RIP: 48034d	 Bytes: 5
  %loadMem_48034d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48034d = call %struct.Memory* @routine_cvtss2sd_MINUS0x28__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48034d)
  store %struct.Memory* %call_48034d, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 480352	 Bytes: 4
  %loadMem_480352 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480352 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480352)
  store %struct.Memory* %call_480352, %struct.Memory** %MEMORY

  ; Code: ucomisd %xmm3, %xmm0	 RIP: 480356	 Bytes: 4
  %loadMem_480356 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480356 = call %struct.Memory* @routine_ucomisd__xmm3___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480356)
  store %struct.Memory* %call_480356, %struct.Memory** %MEMORY

  ; Code: jbe .L_4803a3	 RIP: 48035a	 Bytes: 6
  %loadMem_48035a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48035a = call %struct.Memory* @routine_jbe_.L_4803a3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48035a, i8* %BRANCH_TAKEN, i64 73, i64 6, i64 6)
  store %struct.Memory* %call_48035a, %struct.Memory** %MEMORY

  %loadBr_48035a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48035a = icmp eq i8 %loadBr_48035a, 1
  br i1 %cmpBr_48035a, label %block_.L_4803a3, label %block_480360

block_480360:
  ; Code: movsd 0x62c20(%rip), %xmm0	 RIP: 480360	 Bytes: 8
  %loadMem_480360 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480360 = call %struct.Memory* @routine_movsd_0x62c20__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480360)
  store %struct.Memory* %call_480360, %struct.Memory** %MEMORY

  ; Code: movq $0xb9d8f0, %rax	 RIP: 480368	 Bytes: 10
  %loadMem_480368 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480368 = call %struct.Memory* @routine_movq__0xb9d8f0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480368)
  store %struct.Memory* %call_480368, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x28(%rbp), %xmm1	 RIP: 480372	 Bytes: 5
  %loadMem_480372 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480372 = call %struct.Memory* @routine_cvtss2sd_MINUS0x28__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480372)
  store %struct.Memory* %call_480372, %struct.Memory** %MEMORY

  ; Code: movaps %xmm0, %xmm2	 RIP: 480377	 Bytes: 3
  %loadMem_480377 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480377 = call %struct.Memory* @routine_movaps__xmm0___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480377)
  store %struct.Memory* %call_480377, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm1, %xmm2	 RIP: 48037a	 Bytes: 4
  %loadMem_48037a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48037a = call %struct.Memory* @routine_mulsd__xmm1___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48037a)
  store %struct.Memory* %call_48037a, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 48037e	 Bytes: 4
  %loadMem_48037e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48037e = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48037e)
  store %struct.Memory* %call_48037e, %struct.Memory** %MEMORY

  ; Code: imulq $0x234, %rcx, %rcx	 RIP: 480382	 Bytes: 7
  %loadMem_480382 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480382 = call %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480382)
  store %struct.Memory* %call_480382, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 480389	 Bytes: 3
  %loadMem_480389 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480389 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480389)
  store %struct.Memory* %call_480389, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x2c(%rax), %xmm1	 RIP: 48038c	 Bytes: 5
  %loadMem_48038c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48038c = call %struct.Memory* @routine_cvtss2sd_0x2c__rax____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48038c)
  store %struct.Memory* %call_48038c, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm1, %xmm0	 RIP: 480391	 Bytes: 4
  %loadMem_480391 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480391 = call %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480391)
  store %struct.Memory* %call_480391, %struct.Memory** %MEMORY

  ; Code: addsd %xmm0, %xmm2	 RIP: 480395	 Bytes: 4
  %loadMem_480395 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480395 = call %struct.Memory* @routine_addsd__xmm0___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480395)
  store %struct.Memory* %call_480395, %struct.Memory** %MEMORY

  ; Code: movsd %xmm2, -0x60(%rbp)	 RIP: 480399	 Bytes: 5
  %loadMem_480399 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480399 = call %struct.Memory* @routine_movsd__xmm2__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480399)
  store %struct.Memory* %call_480399, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4803c2	 RIP: 48039e	 Bytes: 5
  %loadMem_48039e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48039e = call %struct.Memory* @routine_jmpq_.L_4803c2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48039e, i64 36, i64 5)
  store %struct.Memory* %call_48039e, %struct.Memory** %MEMORY

  br label %block_.L_4803c2

  ; Code: .L_4803a3:	 RIP: 4803a3	 Bytes: 0
block_.L_4803a3:

  ; Code: movsd 0x62bb5(%rip), %xmm0	 RIP: 4803a3	 Bytes: 8
  %loadMem_4803a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4803a3 = call %struct.Memory* @routine_movsd_0x62bb5__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4803a3)
  store %struct.Memory* %call_4803a3, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x18(%rbp), %xmm1	 RIP: 4803ab	 Bytes: 5
  %loadMem_4803ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4803ab = call %struct.Memory* @routine_cvtss2sd_MINUS0x18__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4803ab)
  store %struct.Memory* %call_4803ab, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm1, %xmm0	 RIP: 4803b0	 Bytes: 4
  %loadMem_4803b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4803b0 = call %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4803b0)
  store %struct.Memory* %call_4803b0, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x28(%rbp), %xmm1	 RIP: 4803b4	 Bytes: 5
  %loadMem_4803b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4803b4 = call %struct.Memory* @routine_cvtss2sd_MINUS0x28__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4803b4)
  store %struct.Memory* %call_4803b4, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 4803b9	 Bytes: 4
  %loadMem_4803b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4803b9 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4803b9)
  store %struct.Memory* %call_4803b9, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x60(%rbp)	 RIP: 4803bd	 Bytes: 5
  %loadMem_4803bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4803bd = call %struct.Memory* @routine_movsd__xmm0__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4803bd)
  store %struct.Memory* %call_4803bd, %struct.Memory** %MEMORY

  ; Code: .L_4803c2:	 RIP: 4803c2	 Bytes: 0
  br label %block_.L_4803c2
block_.L_4803c2:

  ; Code: movsd -0x60(%rbp), %xmm0	 RIP: 4803c2	 Bytes: 5
  %loadMem_4803c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4803c2 = call %struct.Memory* @routine_movsd_MINUS0x60__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4803c2)
  store %struct.Memory* %call_4803c2, %struct.Memory** %MEMORY

  ; Code: movq $0xb9d8f0, %rax	 RIP: 4803c7	 Bytes: 10
  %loadMem_4803c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4803c7 = call %struct.Memory* @routine_movq__0xb9d8f0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4803c7)
  store %struct.Memory* %call_4803c7, %struct.Memory** %MEMORY

  ; Code: movsd 0x62caf(%rip), %xmm1	 RIP: 4803d1	 Bytes: 8
  %loadMem_4803d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4803d1 = call %struct.Memory* @routine_movsd_0x62caf__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4803d1)
  store %struct.Memory* %call_4803d1, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x18(%rbp), %xmm2	 RIP: 4803d9	 Bytes: 5
  %loadMem_4803d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4803d9 = call %struct.Memory* @routine_cvtss2sd_MINUS0x18__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4803d9)
  store %struct.Memory* %call_4803d9, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm2, %xmm1	 RIP: 4803de	 Bytes: 4
  %loadMem_4803de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4803de = call %struct.Memory* @routine_mulsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4803de)
  store %struct.Memory* %call_4803de, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 4803e2	 Bytes: 4
  %loadMem_4803e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4803e2 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4803e2)
  store %struct.Memory* %call_4803e2, %struct.Memory** %MEMORY

  ; Code: imulq $0x234, %rcx, %rcx	 RIP: 4803e6	 Bytes: 7
  %loadMem_4803e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4803e6 = call %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4803e6)
  store %struct.Memory* %call_4803e6, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4803ed	 Bytes: 3
  %loadMem_4803ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4803ed = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4803ed)
  store %struct.Memory* %call_4803ed, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x2c(%rax), %xmm2	 RIP: 4803f0	 Bytes: 5
  %loadMem_4803f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4803f0 = call %struct.Memory* @routine_cvtss2sd_0x2c__rax____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4803f0)
  store %struct.Memory* %call_4803f0, %struct.Memory** %MEMORY

  ; Code: addsd %xmm2, %xmm1	 RIP: 4803f5	 Bytes: 4
  %loadMem_4803f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4803f5 = call %struct.Memory* @routine_addsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4803f5)
  store %struct.Memory* %call_4803f5, %struct.Memory** %MEMORY

  ; Code: ucomisd %xmm0, %xmm1	 RIP: 4803f9	 Bytes: 4
  %loadMem_4803f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4803f9 = call %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4803f9)
  store %struct.Memory* %call_4803f9, %struct.Memory** %MEMORY

  ; Code: jbe .L_4804d1	 RIP: 4803fd	 Bytes: 6
  %loadMem_4803fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4803fd = call %struct.Memory* @routine_jbe_.L_4804d1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4803fd, i8* %BRANCH_TAKEN, i64 212, i64 6, i64 6)
  store %struct.Memory* %call_4803fd, %struct.Memory** %MEMORY

  %loadBr_4803fd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4803fd = icmp eq i8 %loadBr_4803fd, 1
  br i1 %cmpBr_4803fd, label %block_.L_4804d1, label %block_480403

block_480403:
  ; Code: movsd 0x62b55(%rip), %xmm0	 RIP: 480403	 Bytes: 8
  %loadMem_480403 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480403 = call %struct.Memory* @routine_movsd_0x62b55__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480403)
  store %struct.Memory* %call_480403, %struct.Memory** %MEMORY

  ; Code: movsd 0x62b75(%rip), %xmm1	 RIP: 48040b	 Bytes: 8
  %loadMem_48040b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48040b = call %struct.Memory* @routine_movsd_0x62b75__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48040b)
  store %struct.Memory* %call_48040b, %struct.Memory** %MEMORY

  ; Code: movq $0xb9d8f0, %rax	 RIP: 480413	 Bytes: 10
  %loadMem_480413 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480413 = call %struct.Memory* @routine_movq__0xb9d8f0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480413)
  store %struct.Memory* %call_480413, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x28(%rbp), %xmm2	 RIP: 48041d	 Bytes: 5
  %loadMem_48041d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48041d = call %struct.Memory* @routine_cvtss2sd_MINUS0x28__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48041d)
  store %struct.Memory* %call_48041d, %struct.Memory** %MEMORY

  ; Code: movaps %xmm1, %xmm3	 RIP: 480422	 Bytes: 3
  %loadMem_480422 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480422 = call %struct.Memory* @routine_movaps__xmm1___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480422)
  store %struct.Memory* %call_480422, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm2, %xmm3	 RIP: 480425	 Bytes: 4
  %loadMem_480425 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480425 = call %struct.Memory* @routine_mulsd__xmm2___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480425)
  store %struct.Memory* %call_480425, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 480429	 Bytes: 4
  %loadMem_480429 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480429 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480429)
  store %struct.Memory* %call_480429, %struct.Memory** %MEMORY

  ; Code: imulq $0x234, %rcx, %rcx	 RIP: 48042d	 Bytes: 7
  %loadMem_48042d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48042d = call %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48042d)
  store %struct.Memory* %call_48042d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 480434	 Bytes: 3
  %loadMem_480434 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480434 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480434)
  store %struct.Memory* %call_480434, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x2c(%rax), %xmm2	 RIP: 480437	 Bytes: 5
  %loadMem_480437 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480437 = call %struct.Memory* @routine_cvtss2sd_0x2c__rax____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480437)
  store %struct.Memory* %call_480437, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm2, %xmm1	 RIP: 48043c	 Bytes: 4
  %loadMem_48043c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48043c = call %struct.Memory* @routine_mulsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48043c)
  store %struct.Memory* %call_48043c, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm3	 RIP: 480440	 Bytes: 4
  %loadMem_480440 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480440 = call %struct.Memory* @routine_addsd__xmm1___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480440)
  store %struct.Memory* %call_480440, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x18(%rbp), %xmm1	 RIP: 480444	 Bytes: 5
  %loadMem_480444 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480444 = call %struct.Memory* @routine_cvtss2sd_MINUS0x18__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480444)
  store %struct.Memory* %call_480444, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm1, %xmm0	 RIP: 480449	 Bytes: 4
  %loadMem_480449 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480449 = call %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480449)
  store %struct.Memory* %call_480449, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x28(%rbp), %xmm1	 RIP: 48044d	 Bytes: 5
  %loadMem_48044d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48044d = call %struct.Memory* @routine_cvtss2sd_MINUS0x28__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48044d)
  store %struct.Memory* %call_48044d, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 480452	 Bytes: 4
  %loadMem_480452 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480452 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480452)
  store %struct.Memory* %call_480452, %struct.Memory** %MEMORY

  ; Code: ucomisd %xmm3, %xmm0	 RIP: 480456	 Bytes: 4
  %loadMem_480456 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480456 = call %struct.Memory* @routine_ucomisd__xmm3___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480456)
  store %struct.Memory* %call_480456, %struct.Memory** %MEMORY

  ; Code: jbe .L_4804a3	 RIP: 48045a	 Bytes: 6
  %loadMem_48045a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48045a = call %struct.Memory* @routine_jbe_.L_4804a3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48045a, i8* %BRANCH_TAKEN, i64 73, i64 6, i64 6)
  store %struct.Memory* %call_48045a, %struct.Memory** %MEMORY

  %loadBr_48045a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48045a = icmp eq i8 %loadBr_48045a, 1
  br i1 %cmpBr_48045a, label %block_.L_4804a3, label %block_480460

block_480460:
  ; Code: movsd 0x62b20(%rip), %xmm0	 RIP: 480460	 Bytes: 8
  %loadMem_480460 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480460 = call %struct.Memory* @routine_movsd_0x62b20__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480460)
  store %struct.Memory* %call_480460, %struct.Memory** %MEMORY

  ; Code: movq $0xb9d8f0, %rax	 RIP: 480468	 Bytes: 10
  %loadMem_480468 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480468 = call %struct.Memory* @routine_movq__0xb9d8f0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480468)
  store %struct.Memory* %call_480468, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x28(%rbp), %xmm1	 RIP: 480472	 Bytes: 5
  %loadMem_480472 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480472 = call %struct.Memory* @routine_cvtss2sd_MINUS0x28__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480472)
  store %struct.Memory* %call_480472, %struct.Memory** %MEMORY

  ; Code: movaps %xmm0, %xmm2	 RIP: 480477	 Bytes: 3
  %loadMem_480477 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480477 = call %struct.Memory* @routine_movaps__xmm0___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480477)
  store %struct.Memory* %call_480477, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm1, %xmm2	 RIP: 48047a	 Bytes: 4
  %loadMem_48047a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48047a = call %struct.Memory* @routine_mulsd__xmm1___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48047a)
  store %struct.Memory* %call_48047a, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 48047e	 Bytes: 4
  %loadMem_48047e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48047e = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48047e)
  store %struct.Memory* %call_48047e, %struct.Memory** %MEMORY

  ; Code: imulq $0x234, %rcx, %rcx	 RIP: 480482	 Bytes: 7
  %loadMem_480482 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480482 = call %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480482)
  store %struct.Memory* %call_480482, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 480489	 Bytes: 3
  %loadMem_480489 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480489 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480489)
  store %struct.Memory* %call_480489, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x2c(%rax), %xmm1	 RIP: 48048c	 Bytes: 5
  %loadMem_48048c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48048c = call %struct.Memory* @routine_cvtss2sd_0x2c__rax____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48048c)
  store %struct.Memory* %call_48048c, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm1, %xmm0	 RIP: 480491	 Bytes: 4
  %loadMem_480491 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480491 = call %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480491)
  store %struct.Memory* %call_480491, %struct.Memory** %MEMORY

  ; Code: addsd %xmm0, %xmm2	 RIP: 480495	 Bytes: 4
  %loadMem_480495 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480495 = call %struct.Memory* @routine_addsd__xmm0___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480495)
  store %struct.Memory* %call_480495, %struct.Memory** %MEMORY

  ; Code: movsd %xmm2, -0x68(%rbp)	 RIP: 480499	 Bytes: 5
  %loadMem_480499 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480499 = call %struct.Memory* @routine_movsd__xmm2__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480499)
  store %struct.Memory* %call_480499, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4804c2	 RIP: 48049e	 Bytes: 5
  %loadMem_48049e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48049e = call %struct.Memory* @routine_jmpq_.L_4804c2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48049e, i64 36, i64 5)
  store %struct.Memory* %call_48049e, %struct.Memory** %MEMORY

  br label %block_.L_4804c2

  ; Code: .L_4804a3:	 RIP: 4804a3	 Bytes: 0
block_.L_4804a3:

  ; Code: movsd 0x62ab5(%rip), %xmm0	 RIP: 4804a3	 Bytes: 8
  %loadMem_4804a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4804a3 = call %struct.Memory* @routine_movsd_0x62ab5__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4804a3)
  store %struct.Memory* %call_4804a3, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x18(%rbp), %xmm1	 RIP: 4804ab	 Bytes: 5
  %loadMem_4804ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4804ab = call %struct.Memory* @routine_cvtss2sd_MINUS0x18__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4804ab)
  store %struct.Memory* %call_4804ab, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm1, %xmm0	 RIP: 4804b0	 Bytes: 4
  %loadMem_4804b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4804b0 = call %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4804b0)
  store %struct.Memory* %call_4804b0, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x28(%rbp), %xmm1	 RIP: 4804b4	 Bytes: 5
  %loadMem_4804b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4804b4 = call %struct.Memory* @routine_cvtss2sd_MINUS0x28__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4804b4)
  store %struct.Memory* %call_4804b4, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 4804b9	 Bytes: 4
  %loadMem_4804b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4804b9 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4804b9)
  store %struct.Memory* %call_4804b9, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x68(%rbp)	 RIP: 4804bd	 Bytes: 5
  %loadMem_4804bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4804bd = call %struct.Memory* @routine_movsd__xmm0__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4804bd)
  store %struct.Memory* %call_4804bd, %struct.Memory** %MEMORY

  ; Code: .L_4804c2:	 RIP: 4804c2	 Bytes: 0
  br label %block_.L_4804c2
block_.L_4804c2:

  ; Code: movsd -0x68(%rbp), %xmm0	 RIP: 4804c2	 Bytes: 5
  %loadMem_4804c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4804c2 = call %struct.Memory* @routine_movsd_MINUS0x68__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4804c2)
  store %struct.Memory* %call_4804c2, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x70(%rbp)	 RIP: 4804c7	 Bytes: 5
  %loadMem_4804c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4804c7 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4804c7)
  store %struct.Memory* %call_4804c7, %struct.Memory** %MEMORY

  ; Code: jmpq .L_480508	 RIP: 4804cc	 Bytes: 5
  %loadMem_4804cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4804cc = call %struct.Memory* @routine_jmpq_.L_480508(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4804cc, i64 60, i64 5)
  store %struct.Memory* %call_4804cc, %struct.Memory** %MEMORY

  br label %block_.L_480508

  ; Code: .L_4804d1:	 RIP: 4804d1	 Bytes: 0
block_.L_4804d1:

  ; Code: movq $0xb9d8f0, %rax	 RIP: 4804d1	 Bytes: 10
  %loadMem_4804d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4804d1 = call %struct.Memory* @routine_movq__0xb9d8f0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4804d1)
  store %struct.Memory* %call_4804d1, %struct.Memory** %MEMORY

  ; Code: movsd 0x62ba5(%rip), %xmm0	 RIP: 4804db	 Bytes: 8
  %loadMem_4804db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4804db = call %struct.Memory* @routine_movsd_0x62ba5__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4804db)
  store %struct.Memory* %call_4804db, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x18(%rbp), %xmm1	 RIP: 4804e3	 Bytes: 5
  %loadMem_4804e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4804e3 = call %struct.Memory* @routine_cvtss2sd_MINUS0x18__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4804e3)
  store %struct.Memory* %call_4804e3, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm1, %xmm0	 RIP: 4804e8	 Bytes: 4
  %loadMem_4804e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4804e8 = call %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4804e8)
  store %struct.Memory* %call_4804e8, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 4804ec	 Bytes: 4
  %loadMem_4804ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4804ec = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4804ec)
  store %struct.Memory* %call_4804ec, %struct.Memory** %MEMORY

  ; Code: imulq $0x234, %rcx, %rcx	 RIP: 4804f0	 Bytes: 7
  %loadMem_4804f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4804f0 = call %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4804f0)
  store %struct.Memory* %call_4804f0, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4804f7	 Bytes: 3
  %loadMem_4804f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4804f7 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4804f7)
  store %struct.Memory* %call_4804f7, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x2c(%rax), %xmm1	 RIP: 4804fa	 Bytes: 5
  %loadMem_4804fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4804fa = call %struct.Memory* @routine_cvtss2sd_0x2c__rax____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4804fa)
  store %struct.Memory* %call_4804fa, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 4804ff	 Bytes: 4
  %loadMem_4804ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4804ff = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4804ff)
  store %struct.Memory* %call_4804ff, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x70(%rbp)	 RIP: 480503	 Bytes: 5
  %loadMem_480503 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480503 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480503)
  store %struct.Memory* %call_480503, %struct.Memory** %MEMORY

  ; Code: .L_480508:	 RIP: 480508	 Bytes: 0
  br label %block_.L_480508
block_.L_480508:

  ; Code: movsd -0x70(%rbp), %xmm0	 RIP: 480508	 Bytes: 5
  %loadMem_480508 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480508 = call %struct.Memory* @routine_movsd_MINUS0x70__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480508)
  store %struct.Memory* %call_480508, %struct.Memory** %MEMORY

  ; Code: xorps %xmm1, %xmm1	 RIP: 48050d	 Bytes: 3
  %loadMem_48050d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48050d = call %struct.Memory* @routine_xorps__xmm1___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48050d)
  store %struct.Memory* %call_48050d, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 480510	 Bytes: 4
  %loadMem_480510 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480510 = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480510)
  store %struct.Memory* %call_480510, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x30(%rbp)	 RIP: 480514	 Bytes: 5
  %loadMem_480514 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480514 = call %struct.Memory* @routine_movss__xmm0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480514)
  store %struct.Memory* %call_480514, %struct.Memory** %MEMORY

  ; Code: movss -0x30(%rbp), %xmm0	 RIP: 480519	 Bytes: 5
  %loadMem_480519 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480519 = call %struct.Memory* @routine_movss_MINUS0x30__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480519)
  store %struct.Memory* %call_480519, %struct.Memory** %MEMORY

  ; Code: addss -0x18(%rbp), %xmm0	 RIP: 48051e	 Bytes: 5
  %loadMem_48051e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48051e = call %struct.Memory* @routine_addss_MINUS0x18__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48051e)
  store %struct.Memory* %call_48051e, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x18(%rbp)	 RIP: 480523	 Bytes: 5
  %loadMem_480523 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480523 = call %struct.Memory* @routine_movss__xmm0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480523)
  store %struct.Memory* %call_480523, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x30(%rbp), %xmm0	 RIP: 480528	 Bytes: 5
  %loadMem_480528 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480528 = call %struct.Memory* @routine_cvtss2sd_MINUS0x30__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480528)
  store %struct.Memory* %call_480528, %struct.Memory** %MEMORY

  ; Code: ucomisd %xmm1, %xmm0	 RIP: 48052d	 Bytes: 4
  %loadMem_48052d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48052d = call %struct.Memory* @routine_ucomisd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48052d)
  store %struct.Memory* %call_48052d, %struct.Memory** %MEMORY

  ; Code: jne .L_480542	 RIP: 480531	 Bytes: 6
  %loadMem_480531 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480531 = call %struct.Memory* @routine_jne_.L_480542(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480531, i8* %BRANCH_TAKEN, i64 17, i64 6, i64 6)
  store %struct.Memory* %call_480531, %struct.Memory** %MEMORY

  %loadBr_480531 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_480531 = icmp eq i8 %loadBr_480531, 1
  br i1 %cmpBr_480531, label %block_.L_480542, label %block_480537

block_480537:
  ; Code: jp .L_480542	 RIP: 480537	 Bytes: 6
  %loadMem_480537 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480537 = call %struct.Memory* @routine_jp_.L_480542(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480537, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_480537, %struct.Memory** %MEMORY

  %loadBr_480537 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_480537 = icmp eq i8 %loadBr_480537, 1
  br i1 %cmpBr_480537, label %block_.L_480542, label %block_48053d

block_48053d:
  ; Code: jmpq .L_480598	 RIP: 48053d	 Bytes: 5
  %loadMem_48053d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48053d = call %struct.Memory* @routine_jmpq_.L_480598(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48053d, i64 91, i64 5)
  store %struct.Memory* %call_48053d, %struct.Memory** %MEMORY

  br label %block_.L_480598

  ; Code: .L_480542:	 RIP: 480542	 Bytes: 0
block_.L_480542:

  ; Code: cmpl $0x0, 0xab0f28	 RIP: 480542	 Bytes: 8
  %loadMem_480542 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480542 = call %struct.Memory* @routine_cmpl__0x0__0xab0f28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480542)
  store %struct.Memory* %call_480542, %struct.Memory** %MEMORY

  ; Code: jne .L_480555	 RIP: 48054a	 Bytes: 6
  %loadMem_48054a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48054a = call %struct.Memory* @routine_jne_.L_480555(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48054a, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_48054a, %struct.Memory** %MEMORY

  %loadBr_48054a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48054a = icmp eq i8 %loadBr_48054a, 1
  br i1 %cmpBr_48054a, label %block_.L_480555, label %block_480550

block_480550:
  ; Code: jmpq .L_480593	 RIP: 480550	 Bytes: 5
  %loadMem_480550 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480550 = call %struct.Memory* @routine_jmpq_.L_480593(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480550, i64 67, i64 5)
  store %struct.Memory* %call_480550, %struct.Memory** %MEMORY

  br label %block_.L_480593

  ; Code: .L_480555:	 RIP: 480555	 Bytes: 0
block_.L_480555:

  ; Code: movq $0x58208a, %rdi	 RIP: 480555	 Bytes: 10
  %loadMem_480555 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480555 = call %struct.Memory* @routine_movq__0x58208a___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480555)
  store %struct.Memory* %call_480555, %struct.Memory** %MEMORY

  ; Code: movq $0xb9d8f0, %rax	 RIP: 48055f	 Bytes: 10
  %loadMem_48055f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48055f = call %struct.Memory* @routine_movq__0xb9d8f0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48055f)
  store %struct.Memory* %call_48055f, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %esi	 RIP: 480569	 Bytes: 3
  %loadMem_480569 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480569 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480569)
  store %struct.Memory* %call_480569, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x30(%rbp), %xmm0	 RIP: 48056c	 Bytes: 5
  %loadMem_48056c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48056c = call %struct.Memory* @routine_cvtss2sd_MINUS0x30__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48056c)
  store %struct.Memory* %call_48056c, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x28(%rbp), %xmm1	 RIP: 480571	 Bytes: 5
  %loadMem_480571 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480571 = call %struct.Memory* @routine_cvtss2sd_MINUS0x28__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480571)
  store %struct.Memory* %call_480571, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 480576	 Bytes: 4
  %loadMem_480576 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480576 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480576)
  store %struct.Memory* %call_480576, %struct.Memory** %MEMORY

  ; Code: imulq $0x234, %rcx, %rcx	 RIP: 48057a	 Bytes: 7
  %loadMem_48057a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48057a = call %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48057a)
  store %struct.Memory* %call_48057a, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 480581	 Bytes: 3
  %loadMem_480581 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480581 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480581)
  store %struct.Memory* %call_480581, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x2c(%rax), %xmm2	 RIP: 480584	 Bytes: 5
  %loadMem_480584 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480584 = call %struct.Memory* @routine_cvtss2sd_0x2c__rax____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480584)
  store %struct.Memory* %call_480584, %struct.Memory** %MEMORY

  ; Code: movb $0x3, %al	 RIP: 480589	 Bytes: 2
  %loadMem_480589 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480589 = call %struct.Memory* @routine_movb__0x3___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480589)
  store %struct.Memory* %call_480589, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 48058b	 Bytes: 5
  %loadMem1_48058b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48058b = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48058b, i64 -190427, i64 5, i64 5)
  store %struct.Memory* %call1_48058b, %struct.Memory** %MEMORY

  %loadMem2_48058b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48058b = load i64, i64* %3
  %call2_48058b = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_48058b, %struct.Memory* %loadMem2_48058b)
  store %struct.Memory* %call2_48058b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x74(%rbp)	 RIP: 480590	 Bytes: 3
  %loadMem_480590 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480590 = call %struct.Memory* @routine_movl__eax__MINUS0x74__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480590)
  store %struct.Memory* %call_480590, %struct.Memory** %MEMORY

  ; Code: .L_480593:	 RIP: 480593	 Bytes: 0
  br label %block_.L_480593
block_.L_480593:

  ; Code: jmpq .L_480598	 RIP: 480593	 Bytes: 5
  %loadMem_480593 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480593 = call %struct.Memory* @routine_jmpq_.L_480598(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480593, i64 5, i64 5)
  store %struct.Memory* %call_480593, %struct.Memory** %MEMORY

  br label %block_.L_480598

  ; Code: .L_480598:	 RIP: 480598	 Bytes: 0
block_.L_480598:

  ; Code: xorps %xmm0, %xmm0	 RIP: 480598	 Bytes: 3
  %loadMem_480598 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480598 = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480598)
  store %struct.Memory* %call_480598, %struct.Memory** %MEMORY

  ; Code: movq $0xb9d8f0, %rax	 RIP: 48059b	 Bytes: 10
  %loadMem_48059b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48059b = call %struct.Memory* @routine_movq__0xb9d8f0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48059b)
  store %struct.Memory* %call_48059b, %struct.Memory** %MEMORY

  ; Code: movss -0x28(%rbp), %xmm1	 RIP: 4805a5	 Bytes: 5
  %loadMem_4805a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4805a5 = call %struct.Memory* @routine_movss_MINUS0x28__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4805a5)
  store %struct.Memory* %call_4805a5, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 4805aa	 Bytes: 4
  %loadMem_4805aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4805aa = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4805aa)
  store %struct.Memory* %call_4805aa, %struct.Memory** %MEMORY

  ; Code: imulq $0x234, %rcx, %rcx	 RIP: 4805ae	 Bytes: 7
  %loadMem_4805ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4805ae = call %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4805ae)
  store %struct.Memory* %call_4805ae, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 4805b5	 Bytes: 3
  %loadMem_4805b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4805b5 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4805b5)
  store %struct.Memory* %call_4805b5, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 4805b8	 Bytes: 3
  %loadMem_4805b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4805b8 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4805b8)
  store %struct.Memory* %call_4805b8, %struct.Memory** %MEMORY

  ; Code: addss 0x2c(%rdx), %xmm1	 RIP: 4805bb	 Bytes: 5
  %loadMem_4805bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4805bb = call %struct.Memory* @routine_addss_0x2c__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4805bb)
  store %struct.Memory* %call_4805bb, %struct.Memory** %MEMORY

  ; Code: movss -0x18(%rbp), %xmm2	 RIP: 4805c0	 Bytes: 5
  %loadMem_4805c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4805c0 = call %struct.Memory* @routine_movss_MINUS0x18__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4805c0)
  store %struct.Memory* %call_4805c0, %struct.Memory** %MEMORY

  ; Code: subss -0x2c(%rbp), %xmm2	 RIP: 4805c5	 Bytes: 5
  %loadMem_4805c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4805c5 = call %struct.Memory* @routine_subss_MINUS0x2c__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4805c5)
  store %struct.Memory* %call_4805c5, %struct.Memory** %MEMORY

  ; Code: subss %xmm2, %xmm1	 RIP: 4805ca	 Bytes: 4
  %loadMem_4805ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4805ca = call %struct.Memory* @routine_subss__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4805ca)
  store %struct.Memory* %call_4805ca, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 4805ce	 Bytes: 4
  %loadMem_4805ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4805ce = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4805ce)
  store %struct.Memory* %call_4805ce, %struct.Memory** %MEMORY

  ; Code: imulq $0x234, %rcx, %rcx	 RIP: 4805d2	 Bytes: 7
  %loadMem_4805d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4805d2 = call %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4805d2)
  store %struct.Memory* %call_4805d2, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 4805d9	 Bytes: 3
  %loadMem_4805d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4805d9 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4805d9)
  store %struct.Memory* %call_4805d9, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 4805dc	 Bytes: 3
  %loadMem_4805dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4805dc = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4805dc)
  store %struct.Memory* %call_4805dc, %struct.Memory** %MEMORY

  ; Code: movss %xmm1, 0x8(%rdx)	 RIP: 4805df	 Bytes: 5
  %loadMem_4805df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4805df = call %struct.Memory* @routine_movss__xmm1__0x8__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4805df)
  store %struct.Memory* %call_4805df, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 4805e4	 Bytes: 4
  %loadMem_4805e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4805e4 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4805e4)
  store %struct.Memory* %call_4805e4, %struct.Memory** %MEMORY

  ; Code: imulq $0x234, %rcx, %rcx	 RIP: 4805e8	 Bytes: 7
  %loadMem_4805e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4805e8 = call %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4805e8)
  store %struct.Memory* %call_4805e8, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4805ef	 Bytes: 3
  %loadMem_4805ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4805ef = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4805ef)
  store %struct.Memory* %call_4805ef, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x8(%rax), %xmm1	 RIP: 4805f2	 Bytes: 5
  %loadMem_4805f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4805f2 = call %struct.Memory* @routine_cvtss2sd_0x8__rax____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4805f2)
  store %struct.Memory* %call_4805f2, %struct.Memory** %MEMORY

  ; Code: ucomisd %xmm1, %xmm0	 RIP: 4805f7	 Bytes: 4
  %loadMem_4805f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4805f7 = call %struct.Memory* @routine_ucomisd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4805f7)
  store %struct.Memory* %call_4805f7, %struct.Memory** %MEMORY

  ; Code: jbe .L_480621	 RIP: 4805fb	 Bytes: 6
  %loadMem_4805fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4805fb = call %struct.Memory* @routine_jbe_.L_480621(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4805fb, i8* %BRANCH_TAKEN, i64 38, i64 6, i64 6)
  store %struct.Memory* %call_4805fb, %struct.Memory** %MEMORY

  %loadBr_4805fb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4805fb = icmp eq i8 %loadBr_4805fb, 1
  br i1 %cmpBr_4805fb, label %block_.L_480621, label %block_480601

block_480601:
  ; Code: xorps %xmm0, %xmm0	 RIP: 480601	 Bytes: 3
  %loadMem_480601 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480601 = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480601)
  store %struct.Memory* %call_480601, %struct.Memory** %MEMORY

  ; Code: movq $0xb9d8f0, %rax	 RIP: 480604	 Bytes: 10
  %loadMem_480604 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480604 = call %struct.Memory* @routine_movq__0xb9d8f0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480604)
  store %struct.Memory* %call_480604, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 48060e	 Bytes: 4
  %loadMem_48060e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48060e = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48060e)
  store %struct.Memory* %call_48060e, %struct.Memory** %MEMORY

  ; Code: imulq $0x234, %rcx, %rcx	 RIP: 480612	 Bytes: 7
  %loadMem_480612 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480612 = call %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480612)
  store %struct.Memory* %call_480612, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 480619	 Bytes: 3
  %loadMem_480619 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480619 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480619)
  store %struct.Memory* %call_480619, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x8(%rax)	 RIP: 48061c	 Bytes: 5
  %loadMem_48061c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48061c = call %struct.Memory* @routine_movss__xmm0__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48061c)
  store %struct.Memory* %call_48061c, %struct.Memory** %MEMORY

  ; Code: .L_480621:	 RIP: 480621	 Bytes: 0
  br label %block_.L_480621
block_.L_480621:

  ; Code: jmpq .L_480678	 RIP: 480621	 Bytes: 5
  %loadMem_480621 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480621 = call %struct.Memory* @routine_jmpq_.L_480678(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480621, i64 87, i64 5)
  store %struct.Memory* %call_480621, %struct.Memory** %MEMORY

  br label %block_.L_480678

  ; Code: .L_480626:	 RIP: 480626	 Bytes: 0
block_.L_480626:

  ; Code: movq $0xb9d8f0, %rax	 RIP: 480626	 Bytes: 10
  %loadMem_480626 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480626 = call %struct.Memory* @routine_movq__0xb9d8f0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480626)
  store %struct.Memory* %call_480626, %struct.Memory** %MEMORY

  ; Code: movss -0x1c(%rbp), %xmm0	 RIP: 480630	 Bytes: 5
  %loadMem_480630 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480630 = call %struct.Memory* @routine_movss_MINUS0x1c__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480630)
  store %struct.Memory* %call_480630, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 480635	 Bytes: 4
  %loadMem_480635 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480635 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480635)
  store %struct.Memory* %call_480635, %struct.Memory** %MEMORY

  ; Code: imulq $0x234, %rcx, %rcx	 RIP: 480639	 Bytes: 7
  %loadMem_480639 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480639 = call %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480639)
  store %struct.Memory* %call_480639, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 480640	 Bytes: 3
  %loadMem_480640 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480640 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480640)
  store %struct.Memory* %call_480640, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 480643	 Bytes: 3
  %loadMem_480643 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480643 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480643)
  store %struct.Memory* %call_480643, %struct.Memory** %MEMORY

  ; Code: movss 0x24(%rdx), %xmm1	 RIP: 480646	 Bytes: 5
  %loadMem_480646 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480646 = call %struct.Memory* @routine_movss_0x24__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480646)
  store %struct.Memory* %call_480646, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 48064b	 Bytes: 4
  %loadMem_48064b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48064b = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48064b)
  store %struct.Memory* %call_48064b, %struct.Memory** %MEMORY

  ; Code: imulq $0x234, %rcx, %rcx	 RIP: 48064f	 Bytes: 7
  %loadMem_48064f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48064f = call %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48064f)
  store %struct.Memory* %call_48064f, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 480656	 Bytes: 3
  %loadMem_480656 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480656 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480656)
  store %struct.Memory* %call_480656, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 480659	 Bytes: 3
  %loadMem_480659 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480659 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480659)
  store %struct.Memory* %call_480659, %struct.Memory** %MEMORY

  ; Code: addss 0x2c(%rdx), %xmm1	 RIP: 48065c	 Bytes: 5
  %loadMem_48065c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48065c = call %struct.Memory* @routine_addss_0x2c__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48065c)
  store %struct.Memory* %call_48065c, %struct.Memory** %MEMORY

  ; Code: mulss %xmm1, %xmm0	 RIP: 480661	 Bytes: 4
  %loadMem_480661 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480661 = call %struct.Memory* @routine_mulss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480661)
  store %struct.Memory* %call_480661, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 480665	 Bytes: 4
  %loadMem_480665 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480665 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480665)
  store %struct.Memory* %call_480665, %struct.Memory** %MEMORY

  ; Code: imulq $0x234, %rcx, %rcx	 RIP: 480669	 Bytes: 7
  %loadMem_480669 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480669 = call %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480669)
  store %struct.Memory* %call_480669, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 480670	 Bytes: 3
  %loadMem_480670 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480670 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480670)
  store %struct.Memory* %call_480670, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x8(%rax)	 RIP: 480673	 Bytes: 5
  %loadMem_480673 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480673 = call %struct.Memory* @routine_movss__xmm0__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480673)
  store %struct.Memory* %call_480673, %struct.Memory** %MEMORY

  ; Code: .L_480678:	 RIP: 480678	 Bytes: 0
  br label %block_.L_480678
block_.L_480678:

  ; Code: xorps %xmm0, %xmm0	 RIP: 480678	 Bytes: 3
  %loadMem_480678 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480678 = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480678)
  store %struct.Memory* %call_480678, %struct.Memory** %MEMORY

  ; Code: movq $0xb9d8f0, %rax	 RIP: 48067b	 Bytes: 10
  %loadMem_48067b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48067b = call %struct.Memory* @routine_movq__0xb9d8f0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48067b)
  store %struct.Memory* %call_48067b, %struct.Memory** %MEMORY

  ; Code: movsd 0x62a03(%rip), %xmm1	 RIP: 480685	 Bytes: 8
  %loadMem_480685 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480685 = call %struct.Memory* @routine_movsd_0x62a03__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480685)
  store %struct.Memory* %call_480685, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 48068d	 Bytes: 4
  %loadMem_48068d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48068d = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48068d)
  store %struct.Memory* %call_48068d, %struct.Memory** %MEMORY

  ; Code: imulq $0x234, %rcx, %rcx	 RIP: 480691	 Bytes: 7
  %loadMem_480691 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480691 = call %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480691)
  store %struct.Memory* %call_480691, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 480698	 Bytes: 3
  %loadMem_480698 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480698 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480698)
  store %struct.Memory* %call_480698, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 48069b	 Bytes: 3
  %loadMem_48069b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48069b = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48069b)
  store %struct.Memory* %call_48069b, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x30(%rdx), %xmm2	 RIP: 48069e	 Bytes: 5
  %loadMem_48069e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48069e = call %struct.Memory* @routine_cvtss2sd_0x30__rdx____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48069e)
  store %struct.Memory* %call_48069e, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm2, %xmm1	 RIP: 4806a3	 Bytes: 4
  %loadMem_4806a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4806a3 = call %struct.Memory* @routine_mulsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4806a3)
  store %struct.Memory* %call_4806a3, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x18(%rbp), %xmm2	 RIP: 4806a7	 Bytes: 5
  %loadMem_4806a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4806a7 = call %struct.Memory* @routine_cvtss2sd_MINUS0x18__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4806a7)
  store %struct.Memory* %call_4806a7, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm2	 RIP: 4806ac	 Bytes: 4
  %loadMem_4806ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4806ac = call %struct.Memory* @routine_addsd__xmm1___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4806ac)
  store %struct.Memory* %call_4806ac, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm2, %xmm1	 RIP: 4806b0	 Bytes: 4
  %loadMem_4806b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4806b0 = call %struct.Memory* @routine_cvtsd2ss__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4806b0)
  store %struct.Memory* %call_4806b0, %struct.Memory** %MEMORY

  ; Code: movss %xmm1, -0x18(%rbp)	 RIP: 4806b4	 Bytes: 5
  %loadMem_4806b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4806b4 = call %struct.Memory* @routine_movss__xmm1__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4806b4)
  store %struct.Memory* %call_4806b4, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 4806b9	 Bytes: 4
  %loadMem_4806b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4806b9 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4806b9)
  store %struct.Memory* %call_4806b9, %struct.Memory** %MEMORY

  ; Code: imulq $0x234, %rcx, %rcx	 RIP: 4806bd	 Bytes: 7
  %loadMem_4806bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4806bd = call %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4806bd)
  store %struct.Memory* %call_4806bd, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4806c4	 Bytes: 3
  %loadMem_4806c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4806c4 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4806c4)
  store %struct.Memory* %call_4806c4, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x30(%rax), %xmm1	 RIP: 4806c7	 Bytes: 5
  %loadMem_4806c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4806c7 = call %struct.Memory* @routine_cvtss2sd_0x30__rax____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4806c7)
  store %struct.Memory* %call_4806c7, %struct.Memory** %MEMORY

  ; Code: ucomisd %xmm0, %xmm1	 RIP: 4806cc	 Bytes: 4
  %loadMem_4806cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4806cc = call %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4806cc)
  store %struct.Memory* %call_4806cc, %struct.Memory** %MEMORY

  ; Code: jne .L_4806e1	 RIP: 4806d0	 Bytes: 6
  %loadMem_4806d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4806d0 = call %struct.Memory* @routine_jne_.L_4806e1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4806d0, i8* %BRANCH_TAKEN, i64 17, i64 6, i64 6)
  store %struct.Memory* %call_4806d0, %struct.Memory** %MEMORY

  %loadBr_4806d0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4806d0 = icmp eq i8 %loadBr_4806d0, 1
  br i1 %cmpBr_4806d0, label %block_.L_4806e1, label %block_4806d6

block_4806d6:
  ; Code: jp .L_4806e1	 RIP: 4806d6	 Bytes: 6
  %loadMem_4806d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4806d6 = call %struct.Memory* @routine_jp_.L_4806e1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4806d6, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_4806d6, %struct.Memory** %MEMORY

  %loadBr_4806d6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4806d6 = icmp eq i8 %loadBr_4806d6, 1
  br i1 %cmpBr_4806d6, label %block_.L_4806e1, label %block_4806dc

block_4806dc:
  ; Code: jmpq .L_480739	 RIP: 4806dc	 Bytes: 5
  %loadMem_4806dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4806dc = call %struct.Memory* @routine_jmpq_.L_480739(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4806dc, i64 93, i64 5)
  store %struct.Memory* %call_4806dc, %struct.Memory** %MEMORY

  br label %block_.L_480739

  ; Code: .L_4806e1:	 RIP: 4806e1	 Bytes: 0
block_.L_4806e1:

  ; Code: cmpl $0x0, 0xab0f28	 RIP: 4806e1	 Bytes: 8
  %loadMem_4806e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4806e1 = call %struct.Memory* @routine_cmpl__0x0__0xab0f28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4806e1)
  store %struct.Memory* %call_4806e1, %struct.Memory** %MEMORY

  ; Code: jne .L_4806f4	 RIP: 4806e9	 Bytes: 6
  %loadMem_4806e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4806e9 = call %struct.Memory* @routine_jne_.L_4806f4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4806e9, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_4806e9, %struct.Memory** %MEMORY

  %loadBr_4806e9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4806e9 = icmp eq i8 %loadBr_4806e9, 1
  br i1 %cmpBr_4806e9, label %block_.L_4806f4, label %block_4806ef

block_4806ef:
  ; Code: jmpq .L_480734	 RIP: 4806ef	 Bytes: 5
  %loadMem_4806ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4806ef = call %struct.Memory* @routine_jmpq_.L_480734(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4806ef, i64 69, i64 5)
  store %struct.Memory* %call_4806ef, %struct.Memory** %MEMORY

  br label %block_.L_480734

  ; Code: .L_4806f4:	 RIP: 4806f4	 Bytes: 0
block_.L_4806f4:

  ; Code: movq $0x5820d3, %rdi	 RIP: 4806f4	 Bytes: 10
  %loadMem_4806f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4806f4 = call %struct.Memory* @routine_movq__0x5820d3___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4806f4)
  store %struct.Memory* %call_4806f4, %struct.Memory** %MEMORY

  ; Code: movsd 0x6298a(%rip), %xmm0	 RIP: 4806fe	 Bytes: 8
  %loadMem_4806fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4806fe = call %struct.Memory* @routine_movsd_0x6298a__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4806fe)
  store %struct.Memory* %call_4806fe, %struct.Memory** %MEMORY

  ; Code: movq $0xb9d8f0, %rax	 RIP: 480706	 Bytes: 10
  %loadMem_480706 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480706 = call %struct.Memory* @routine_movq__0xb9d8f0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480706)
  store %struct.Memory* %call_480706, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %esi	 RIP: 480710	 Bytes: 3
  %loadMem_480710 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480710 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480710)
  store %struct.Memory* %call_480710, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 480713	 Bytes: 4
  %loadMem_480713 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480713 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480713)
  store %struct.Memory* %call_480713, %struct.Memory** %MEMORY

  ; Code: imulq $0x234, %rcx, %rcx	 RIP: 480717	 Bytes: 7
  %loadMem_480717 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480717 = call %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480717)
  store %struct.Memory* %call_480717, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 48071e	 Bytes: 3
  %loadMem_48071e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48071e = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48071e)
  store %struct.Memory* %call_48071e, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x30(%rax), %xmm1	 RIP: 480721	 Bytes: 5
  %loadMem_480721 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480721 = call %struct.Memory* @routine_cvtss2sd_0x30__rax____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480721)
  store %struct.Memory* %call_480721, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm1, %xmm0	 RIP: 480726	 Bytes: 4
  %loadMem_480726 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480726 = call %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480726)
  store %struct.Memory* %call_480726, %struct.Memory** %MEMORY

  ; Code: movb $0x1, %al	 RIP: 48072a	 Bytes: 2
  %loadMem_48072a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48072a = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48072a)
  store %struct.Memory* %call_48072a, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 48072c	 Bytes: 5
  %loadMem1_48072c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48072c = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48072c, i64 -190844, i64 5, i64 5)
  store %struct.Memory* %call1_48072c, %struct.Memory** %MEMORY

  %loadMem2_48072c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48072c = load i64, i64* %3
  %call2_48072c = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_48072c, %struct.Memory* %loadMem2_48072c)
  store %struct.Memory* %call2_48072c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x78(%rbp)	 RIP: 480731	 Bytes: 3
  %loadMem_480731 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480731 = call %struct.Memory* @routine_movl__eax__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480731)
  store %struct.Memory* %call_480731, %struct.Memory** %MEMORY

  ; Code: .L_480734:	 RIP: 480734	 Bytes: 0
  br label %block_.L_480734
block_.L_480734:

  ; Code: jmpq .L_480739	 RIP: 480734	 Bytes: 5
  %loadMem_480734 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480734 = call %struct.Memory* @routine_jmpq_.L_480739(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480734, i64 5, i64 5)
  store %struct.Memory* %call_480734, %struct.Memory** %MEMORY

  br label %block_.L_480739

  ; Code: .L_480739:	 RIP: 480739	 Bytes: 0
block_.L_480739:

  ; Code: movq $0xb9d8f0, %rax	 RIP: 480739	 Bytes: 10
  %loadMem_480739 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480739 = call %struct.Memory* @routine_movq__0xb9d8f0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480739)
  store %struct.Memory* %call_480739, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 480743	 Bytes: 4
  %loadMem_480743 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480743 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480743)
  store %struct.Memory* %call_480743, %struct.Memory** %MEMORY

  ; Code: imulq $0x234, %rcx, %rcx	 RIP: 480747	 Bytes: 7
  %loadMem_480747 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480747 = call %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480747)
  store %struct.Memory* %call_480747, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 48074e	 Bytes: 3
  %loadMem_48074e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48074e = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48074e)
  store %struct.Memory* %call_48074e, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 480751	 Bytes: 3
  %loadMem_480751 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480751 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480751)
  store %struct.Memory* %call_480751, %struct.Memory** %MEMORY

  ; Code: movl 0x1c(%rdx), %esi	 RIP: 480754	 Bytes: 3
  %loadMem_480754 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480754 = call %struct.Memory* @routine_movl_0x1c__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480754)
  store %struct.Memory* %call_480754, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 480757	 Bytes: 4
  %loadMem_480757 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480757 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480757)
  store %struct.Memory* %call_480757, %struct.Memory** %MEMORY

  ; Code: imulq $0x234, %rcx, %rcx	 RIP: 48075b	 Bytes: 7
  %loadMem_48075b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48075b = call %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48075b)
  store %struct.Memory* %call_48075b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 480762	 Bytes: 3
  %loadMem_480762 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480762 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480762)
  store %struct.Memory* %call_480762, %struct.Memory** %MEMORY

  ; Code: addl 0x20(%rax), %esi	 RIP: 480765	 Bytes: 3
  %loadMem_480765 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480765 = call %struct.Memory* @routine_addl_0x20__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480765)
  store %struct.Memory* %call_480765, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %esi	 RIP: 480768	 Bytes: 3
  %loadMem_480768 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480768 = call %struct.Memory* @routine_cmpl__0x0___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480768)
  store %struct.Memory* %call_480768, %struct.Memory** %MEMORY

  ; Code: jle .L_480848	 RIP: 48076b	 Bytes: 6
  %loadMem_48076b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48076b = call %struct.Memory* @routine_jle_.L_480848(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48076b, i8* %BRANCH_TAKEN, i64 221, i64 6, i64 6)
  store %struct.Memory* %call_48076b, %struct.Memory** %MEMORY

  %loadBr_48076b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48076b = icmp eq i8 %loadBr_48076b, 1
  br i1 %cmpBr_48076b, label %block_.L_480848, label %block_480771

block_480771:
  ; Code: movss -0x18(%rbp), %xmm0	 RIP: 480771	 Bytes: 5
  %loadMem_480771 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480771 = call %struct.Memory* @routine_movss_MINUS0x18__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480771)
  store %struct.Memory* %call_480771, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x34(%rbp)	 RIP: 480776	 Bytes: 5
  %loadMem_480776 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480776 = call %struct.Memory* @routine_movss__xmm0__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480776)
  store %struct.Memory* %call_480776, %struct.Memory** %MEMORY

  ; Code: movss -0x1c(%rbp), %xmm0	 RIP: 48077b	 Bytes: 5
  %loadMem_48077b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48077b = call %struct.Memory* @routine_movss_MINUS0x1c__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48077b)
  store %struct.Memory* %call_48077b, %struct.Memory** %MEMORY

  ; Code: mulss -0x18(%rbp), %xmm0	 RIP: 480780	 Bytes: 5
  %loadMem_480780 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480780 = call %struct.Memory* @routine_mulss_MINUS0x18__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480780)
  store %struct.Memory* %call_480780, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x18(%rbp)	 RIP: 480785	 Bytes: 5
  %loadMem_480785 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480785 = call %struct.Memory* @routine_movss__xmm0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480785)
  store %struct.Memory* %call_480785, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xab0f28	 RIP: 48078a	 Bytes: 8
  %loadMem_48078a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48078a = call %struct.Memory* @routine_cmpl__0x0__0xab0f28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48078a)
  store %struct.Memory* %call_48078a, %struct.Memory** %MEMORY

  ; Code: je .L_480843	 RIP: 480792	 Bytes: 6
  %loadMem_480792 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480792 = call %struct.Memory* @routine_je_.L_480843(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480792, i8* %BRANCH_TAKEN, i64 177, i64 6, i64 6)
  store %struct.Memory* %call_480792, %struct.Memory** %MEMORY

  %loadBr_480792 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_480792 = icmp eq i8 %loadBr_480792, 1
  br i1 %cmpBr_480792, label %block_.L_480843, label %block_480798

block_480798:
  ; Code: movq $0x5820ea, %rdi	 RIP: 480798	 Bytes: 10
  %loadMem_480798 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480798 = call %struct.Memory* @routine_movq__0x5820ea___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480798)
  store %struct.Memory* %call_480798, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %esi	 RIP: 4807a2	 Bytes: 3
  %loadMem_4807a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4807a2 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4807a2)
  store %struct.Memory* %call_4807a2, %struct.Memory** %MEMORY

  ; Code: movss -0x18(%rbp), %xmm0	 RIP: 4807a5	 Bytes: 5
  %loadMem_4807a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4807a5 = call %struct.Memory* @routine_movss_MINUS0x18__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4807a5)
  store %struct.Memory* %call_4807a5, %struct.Memory** %MEMORY

  ; Code: subss -0x34(%rbp), %xmm0	 RIP: 4807aa	 Bytes: 5
  %loadMem_4807aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4807aa = call %struct.Memory* @routine_subss_MINUS0x34__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4807aa)
  store %struct.Memory* %call_4807aa, %struct.Memory** %MEMORY

  ; Code: cvtss2sd %xmm0, %xmm0	 RIP: 4807af	 Bytes: 4
  %loadMem_4807af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4807af = call %struct.Memory* @routine_cvtss2sd__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4807af)
  store %struct.Memory* %call_4807af, %struct.Memory** %MEMORY

  ; Code: movb $0x1, %al	 RIP: 4807b3	 Bytes: 2
  %loadMem_4807b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4807b3 = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4807b3)
  store %struct.Memory* %call_4807b3, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 4807b5	 Bytes: 5
  %loadMem1_4807b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4807b5 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4807b5, i64 -190981, i64 5, i64 5)
  store %struct.Memory* %call1_4807b5, %struct.Memory** %MEMORY

  %loadMem2_4807b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4807b5 = load i64, i64* %3
  %call2_4807b5 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_4807b5, %struct.Memory* %loadMem2_4807b5)
  store %struct.Memory* %call2_4807b5, %struct.Memory** %MEMORY

  ; Code: movq $0x5820fd, %rsi	 RIP: 4807ba	 Bytes: 10
  %loadMem_4807ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4807ba = call %struct.Memory* @routine_movq__0x5820fd___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4807ba)
  store %struct.Memory* %call_4807ba, %struct.Memory** %MEMORY

  ; Code: movq $0xb9d8f0, %rdi	 RIP: 4807c4	 Bytes: 10
  %loadMem_4807c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4807c4 = call %struct.Memory* @routine_movq__0xb9d8f0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4807c4)
  store %struct.Memory* %call_4807c4, %struct.Memory** %MEMORY

  ; Code: movq 0x99c0a0, %rcx	 RIP: 4807ce	 Bytes: 8
  %loadMem_4807ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4807ce = call %struct.Memory* @routine_movq_0x99c0a0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4807ce)
  store %struct.Memory* %call_4807ce, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 4807d6	 Bytes: 4
  %loadMem_4807d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4807d6 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4807d6)
  store %struct.Memory* %call_4807d6, %struct.Memory** %MEMORY

  ; Code: imulq $0x234, %rdx, %rdx	 RIP: 4807da	 Bytes: 7
  %loadMem_4807da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4807da = call %struct.Memory* @routine_imulq__0x234___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4807da)
  store %struct.Memory* %call_4807da, %struct.Memory** %MEMORY

  ; Code: movq %rdi, %r8	 RIP: 4807e1	 Bytes: 3
  %loadMem_4807e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4807e1 = call %struct.Memory* @routine_movq__rdi___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4807e1)
  store %struct.Memory* %call_4807e1, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %r8	 RIP: 4807e4	 Bytes: 3
  %loadMem_4807e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4807e4 = call %struct.Memory* @routine_addq__rdx___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4807e4)
  store %struct.Memory* %call_4807e4, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x14(%r8), %xmm0	 RIP: 4807e7	 Bytes: 6
  %loadMem_4807e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4807e7 = call %struct.Memory* @routine_cvtss2sd_0x14__r8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4807e7)
  store %struct.Memory* %call_4807e7, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 4807ed	 Bytes: 4
  %loadMem_4807ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4807ed = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4807ed)
  store %struct.Memory* %call_4807ed, %struct.Memory** %MEMORY

  ; Code: imulq $0x234, %rdx, %rdx	 RIP: 4807f1	 Bytes: 7
  %loadMem_4807f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4807f1 = call %struct.Memory* @routine_imulq__0x234___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4807f1)
  store %struct.Memory* %call_4807f1, %struct.Memory** %MEMORY

  ; Code: movq %rdi, %r8	 RIP: 4807f8	 Bytes: 3
  %loadMem_4807f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4807f8 = call %struct.Memory* @routine_movq__rdi___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4807f8)
  store %struct.Memory* %call_4807f8, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %r8	 RIP: 4807fb	 Bytes: 3
  %loadMem_4807fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4807fb = call %struct.Memory* @routine_addq__rdx___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4807fb)
  store %struct.Memory* %call_4807fb, %struct.Memory** %MEMORY

  ; Code: movl 0x1c(%r8), %edx	 RIP: 4807fe	 Bytes: 4
  %loadMem_4807fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4807fe = call %struct.Memory* @routine_movl_0x1c__r8____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4807fe)
  store %struct.Memory* %call_4807fe, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %r8	 RIP: 480802	 Bytes: 4
  %loadMem_480802 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480802 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480802)
  store %struct.Memory* %call_480802, %struct.Memory** %MEMORY

  ; Code: imulq $0x234, %r8, %r8	 RIP: 480806	 Bytes: 7
  %loadMem_480806 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480806 = call %struct.Memory* @routine_imulq__0x234___r8___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480806)
  store %struct.Memory* %call_480806, %struct.Memory** %MEMORY

  ; Code: movq %rdi, %r9	 RIP: 48080d	 Bytes: 3
  %loadMem_48080d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48080d = call %struct.Memory* @routine_movq__rdi___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48080d)
  store %struct.Memory* %call_48080d, %struct.Memory** %MEMORY

  ; Code: addq %r8, %r9	 RIP: 480810	 Bytes: 3
  %loadMem_480810 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480810 = call %struct.Memory* @routine_addq__r8___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480810)
  store %struct.Memory* %call_480810, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x18(%r9), %xmm1	 RIP: 480813	 Bytes: 6
  %loadMem_480813 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480813 = call %struct.Memory* @routine_cvtss2sd_0x18__r9____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480813)
  store %struct.Memory* %call_480813, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %r8	 RIP: 480819	 Bytes: 4
  %loadMem_480819 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480819 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480819)
  store %struct.Memory* %call_480819, %struct.Memory** %MEMORY

  ; Code: imulq $0x234, %r8, %r8	 RIP: 48081d	 Bytes: 7
  %loadMem_48081d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48081d = call %struct.Memory* @routine_imulq__0x234___r8___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48081d)
  store %struct.Memory* %call_48081d, %struct.Memory** %MEMORY

  ; Code: addq %r8, %rdi	 RIP: 480824	 Bytes: 3
  %loadMem_480824 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480824 = call %struct.Memory* @routine_addq__r8___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480824)
  store %struct.Memory* %call_480824, %struct.Memory** %MEMORY

  ; Code: movl 0x20(%rdi), %r10d	 RIP: 480827	 Bytes: 4
  %loadMem_480827 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480827 = call %struct.Memory* @routine_movl_0x20__rdi____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480827)
  store %struct.Memory* %call_480827, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x1c(%rbp), %xmm2	 RIP: 48082b	 Bytes: 5
  %loadMem_48082b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48082b = call %struct.Memory* @routine_cvtss2sd_MINUS0x1c__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48082b)
  store %struct.Memory* %call_48082b, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 480830	 Bytes: 3
  %loadMem_480830 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480830 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480830)
  store %struct.Memory* %call_480830, %struct.Memory** %MEMORY

  ; Code: movl %r10d, %ecx	 RIP: 480833	 Bytes: 3
  %loadMem_480833 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480833 = call %struct.Memory* @routine_movl__r10d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480833)
  store %struct.Memory* %call_480833, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x7c(%rbp)	 RIP: 480836	 Bytes: 3
  %loadMem_480836 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480836 = call %struct.Memory* @routine_movl__eax__MINUS0x7c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480836)
  store %struct.Memory* %call_480836, %struct.Memory** %MEMORY

  ; Code: movb $0x3, %al	 RIP: 480839	 Bytes: 2
  %loadMem_480839 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480839 = call %struct.Memory* @routine_movb__0x3___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480839)
  store %struct.Memory* %call_480839, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 48083b	 Bytes: 5
  %loadMem1_48083b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48083b = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48083b, i64 -522091, i64 5, i64 5)
  store %struct.Memory* %call1_48083b, %struct.Memory** %MEMORY

  %loadMem2_48083b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48083b = load i64, i64* %3
  %call2_48083b = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_48083b, %struct.Memory* %loadMem2_48083b)
  store %struct.Memory* %call2_48083b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x80(%rbp)	 RIP: 480840	 Bytes: 3
  %loadMem_480840 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480840 = call %struct.Memory* @routine_movl__eax__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480840)
  store %struct.Memory* %call_480840, %struct.Memory** %MEMORY

  ; Code: .L_480843:	 RIP: 480843	 Bytes: 0
  br label %block_.L_480843
block_.L_480843:

  ; Code: jmpq .L_480848	 RIP: 480843	 Bytes: 5
  %loadMem_480843 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480843 = call %struct.Memory* @routine_jmpq_.L_480848(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480843, i64 5, i64 5)
  store %struct.Memory* %call_480843, %struct.Memory** %MEMORY

  br label %block_.L_480848

  ; Code: .L_480848:	 RIP: 480848	 Bytes: 0
block_.L_480848:

  ; Code: movl -0x8(%rbp), %edi	 RIP: 480848	 Bytes: 3
  %loadMem_480848 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480848 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480848)
  store %struct.Memory* %call_480848, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %esi	 RIP: 48084b	 Bytes: 3
  %loadMem_48084b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48084b = call %struct.Memory* @routine_movl_MINUS0xc__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48084b)
  store %struct.Memory* %call_48084b, %struct.Memory** %MEMORY

  ; Code: callq .move_connects_strings	 RIP: 48084e	 Bytes: 5
  %loadMem1_48084e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48084e = call %struct.Memory* @routine_callq_.move_connects_strings(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48084e, i64 17986, i64 5, i64 5)
  store %struct.Memory* %call1_48084e, %struct.Memory** %MEMORY

  %loadMem2_48084e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48084e = load i64, i64* %3
  %call2_48084e = call %struct.Memory* @sub_484e90.move_connects_strings(%struct.State* %0, i64  %loadPC_48084e, %struct.Memory* %loadMem2_48084e)
  store %struct.Memory* %call2_48084e, %struct.Memory** %MEMORY

  ; Code: movl $0x3, %esi	 RIP: 480853	 Bytes: 5
  %loadMem_480853 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480853 = call %struct.Memory* @routine_movl__0x3___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480853)
  store %struct.Memory* %call_480853, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %edi	 RIP: 480858	 Bytes: 3
  %loadMem_480858 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480858 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480858)
  store %struct.Memory* %call_480858, %struct.Memory** %MEMORY

  ; Code: subl -0xc(%rbp), %esi	 RIP: 48085b	 Bytes: 3
  %loadMem_48085b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48085b = call %struct.Memory* @routine_subl_MINUS0xc__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48085b)
  store %struct.Memory* %call_48085b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x84(%rbp)	 RIP: 48085e	 Bytes: 6
  %loadMem_48085e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48085e = call %struct.Memory* @routine_movl__eax__MINUS0x84__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48085e)
  store %struct.Memory* %call_48085e, %struct.Memory** %MEMORY

  ; Code: callq .move_connects_strings	 RIP: 480864	 Bytes: 5
  %loadMem1_480864 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_480864 = call %struct.Memory* @routine_callq_.move_connects_strings(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_480864, i64 17964, i64 5, i64 5)
  store %struct.Memory* %call1_480864, %struct.Memory** %MEMORY

  %loadMem2_480864 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_480864 = load i64, i64* %3
  %call2_480864 = call %struct.Memory* @sub_484e90.move_connects_strings(%struct.State* %0, i64  %loadPC_480864, %struct.Memory* %loadMem2_480864)
  store %struct.Memory* %call2_480864, %struct.Memory** %MEMORY

  ; Code: movl -0x84(%rbp), %esi	 RIP: 480869	 Bytes: 6
  %loadMem_480869 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480869 = call %struct.Memory* @routine_movl_MINUS0x84__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480869)
  store %struct.Memory* %call_480869, %struct.Memory** %MEMORY

  ; Code: addl %eax, %esi	 RIP: 48086f	 Bytes: 2
  %loadMem_48086f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48086f = call %struct.Memory* @routine_addl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48086f)
  store %struct.Memory* %call_48086f, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x24(%rbp)	 RIP: 480871	 Bytes: 3
  %loadMem_480871 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480871 = call %struct.Memory* @routine_movl__esi__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480871)
  store %struct.Memory* %call_480871, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x24(%rbp)	 RIP: 480874	 Bytes: 4
  %loadMem_480874 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480874 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480874)
  store %struct.Memory* %call_480874, %struct.Memory** %MEMORY

  ; Code: jle .L_4809e6	 RIP: 480878	 Bytes: 6
  %loadMem_480878 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480878 = call %struct.Memory* @routine_jle_.L_4809e6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480878, i8* %BRANCH_TAKEN, i64 366, i64 6, i64 6)
  store %struct.Memory* %call_480878, %struct.Memory** %MEMORY

  %loadBr_480878 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_480878 = icmp eq i8 %loadBr_480878, 1
  br i1 %cmpBr_480878, label %block_.L_4809e6, label %block_48087e

block_48087e:
  ; Code: movsd 0x62812(%rip), %xmm0	 RIP: 48087e	 Bytes: 8
  %loadMem_48087e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48087e = call %struct.Memory* @routine_movsd_0x62812__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48087e)
  store %struct.Memory* %call_48087e, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl -0x24(%rbp), %xmm1	 RIP: 480886	 Bytes: 5
  %loadMem_480886 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480886 = call %struct.Memory* @routine_cvtsi2ssl_MINUS0x24__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480886)
  store %struct.Memory* %call_480886, %struct.Memory** %MEMORY

  ; Code: cvtss2sd %xmm1, %xmm1	 RIP: 48088b	 Bytes: 4
  %loadMem_48088b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48088b = call %struct.Memory* @routine_cvtss2sd__xmm1___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48088b)
  store %struct.Memory* %call_48088b, %struct.Memory** %MEMORY

  ; Code: callq .pow_plt	 RIP: 48088f	 Bytes: 5
  %loadMem1_48088f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48088f = call %struct.Memory* @routine_callq_.pow_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48088f, i64 -522255, i64 5, i64 5)
  store %struct.Memory* %call1_48088f, %struct.Memory** %MEMORY

  %loadMem2_48088f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48088f = load i64, i64* %3
  %call2_48088f = call %struct.Memory* @ext_pow(%struct.State* %0, i64  %loadPC_48088f, %struct.Memory* %loadMem2_48088f)
  store %struct.Memory* %call2_48088f, %struct.Memory** %MEMORY

  ; Code: movsd 0x6276c(%rip), %xmm1	 RIP: 480894	 Bytes: 8
  %loadMem_480894 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480894 = call %struct.Memory* @routine_movsd_0x6276c__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480894)
  store %struct.Memory* %call_480894, %struct.Memory** %MEMORY

  ; Code: movsd 0x626bc(%rip), %xmm2	 RIP: 48089c	 Bytes: 8
  %loadMem_48089c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48089c = call %struct.Memory* @routine_movsd_0x626bc__rip____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48089c)
  store %struct.Memory* %call_48089c, %struct.Memory** %MEMORY

  ; Code: subsd %xmm2, %xmm0	 RIP: 4808a4	 Bytes: 4
  %loadMem_4808a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4808a4 = call %struct.Memory* @routine_subsd__xmm2___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4808a4)
  store %struct.Memory* %call_4808a4, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 4808a8	 Bytes: 4
  %loadMem_4808a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4808a8 = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4808a8)
  store %struct.Memory* %call_4808a8, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x38(%rbp)	 RIP: 4808ac	 Bytes: 5
  %loadMem_4808ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4808ac = call %struct.Memory* @routine_movss__xmm0__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4808ac)
  store %struct.Memory* %call_4808ac, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x18(%rbp), %xmm0	 RIP: 4808b1	 Bytes: 5
  %loadMem_4808b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4808b1 = call %struct.Memory* @routine_cvtss2sd_MINUS0x18__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4808b1)
  store %struct.Memory* %call_4808b1, %struct.Memory** %MEMORY

  ; Code: ucomisd %xmm0, %xmm1	 RIP: 4808b6	 Bytes: 4
  %loadMem_4808b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4808b6 = call %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4808b6)
  store %struct.Memory* %call_4808b6, %struct.Memory** %MEMORY

  ; Code: jbe .L_4808d2	 RIP: 4808ba	 Bytes: 6
  %loadMem_4808ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4808ba = call %struct.Memory* @routine_jbe_.L_4808d2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4808ba, i8* %BRANCH_TAKEN, i64 24, i64 6, i64 6)
  store %struct.Memory* %call_4808ba, %struct.Memory** %MEMORY

  %loadBr_4808ba = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4808ba = icmp eq i8 %loadBr_4808ba, 1
  br i1 %cmpBr_4808ba, label %block_.L_4808d2, label %block_4808c0

block_4808c0:
  ; Code: cvtss2sd -0x18(%rbp), %xmm0	 RIP: 4808c0	 Bytes: 5
  %loadMem_4808c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4808c0 = call %struct.Memory* @routine_cvtss2sd_MINUS0x18__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4808c0)
  store %struct.Memory* %call_4808c0, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x90(%rbp)	 RIP: 4808c5	 Bytes: 8
  %loadMem_4808c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4808c5 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x90__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4808c5)
  store %struct.Memory* %call_4808c5, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4808e7	 RIP: 4808cd	 Bytes: 5
  %loadMem_4808cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4808cd = call %struct.Memory* @routine_jmpq_.L_4808e7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4808cd, i64 26, i64 5)
  store %struct.Memory* %call_4808cd, %struct.Memory** %MEMORY

  br label %block_.L_4808e7

  ; Code: .L_4808d2:	 RIP: 4808d2	 Bytes: 0
block_.L_4808d2:

  ; Code: movsd 0x6272e(%rip), %xmm0	 RIP: 4808d2	 Bytes: 8
  %loadMem_4808d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4808d2 = call %struct.Memory* @routine_movsd_0x6272e__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4808d2)
  store %struct.Memory* %call_4808d2, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x90(%rbp)	 RIP: 4808da	 Bytes: 8
  %loadMem_4808da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4808da = call %struct.Memory* @routine_movsd__xmm0__MINUS0x90__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4808da)
  store %struct.Memory* %call_4808da, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4808e7	 RIP: 4808e2	 Bytes: 5
  %loadMem_4808e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4808e2 = call %struct.Memory* @routine_jmpq_.L_4808e7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4808e2, i64 5, i64 5)
  store %struct.Memory* %call_4808e2, %struct.Memory** %MEMORY

  br label %block_.L_4808e7

  ; Code: .L_4808e7:	 RIP: 4808e7	 Bytes: 0
block_.L_4808e7:

  ; Code: movsd -0x90(%rbp), %xmm0	 RIP: 4808e7	 Bytes: 8
  %loadMem_4808e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4808e7 = call %struct.Memory* @routine_movsd_MINUS0x90__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4808e7)
  store %struct.Memory* %call_4808e7, %struct.Memory** %MEMORY

  ; Code: movsd 0x62669(%rip), %xmm1	 RIP: 4808ef	 Bytes: 8
  %loadMem_4808ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4808ef = call %struct.Memory* @routine_movsd_0x62669__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4808ef)
  store %struct.Memory* %call_4808ef, %struct.Memory** %MEMORY

  ; Code: ucomisd %xmm0, %xmm1	 RIP: 4808f7	 Bytes: 4
  %loadMem_4808f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4808f7 = call %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4808f7)
  store %struct.Memory* %call_4808f7, %struct.Memory** %MEMORY

  ; Code: jbe .L_480916	 RIP: 4808fb	 Bytes: 6
  %loadMem_4808fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4808fb = call %struct.Memory* @routine_jbe_.L_480916(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4808fb, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_4808fb, %struct.Memory** %MEMORY

  %loadBr_4808fb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4808fb = icmp eq i8 %loadBr_4808fb, 1
  br i1 %cmpBr_4808fb, label %block_.L_480916, label %block_480901

block_480901:
  ; Code: movsd 0x62657(%rip), %xmm0	 RIP: 480901	 Bytes: 8
  %loadMem_480901 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480901 = call %struct.Memory* @routine_movsd_0x62657__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480901)
  store %struct.Memory* %call_480901, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x98(%rbp)	 RIP: 480909	 Bytes: 8
  %loadMem_480909 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480909 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x98__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480909)
  store %struct.Memory* %call_480909, %struct.Memory** %MEMORY

  ; Code: jmpq .L_480964	 RIP: 480911	 Bytes: 5
  %loadMem_480911 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480911 = call %struct.Memory* @routine_jmpq_.L_480964(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480911, i64 83, i64 5)
  store %struct.Memory* %call_480911, %struct.Memory** %MEMORY

  br label %block_.L_480964

  ; Code: .L_480916:	 RIP: 480916	 Bytes: 0
block_.L_480916:

  ; Code: movsd 0x626ea(%rip), %xmm0	 RIP: 480916	 Bytes: 8
  %loadMem_480916 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480916 = call %struct.Memory* @routine_movsd_0x626ea__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480916)
  store %struct.Memory* %call_480916, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x18(%rbp), %xmm1	 RIP: 48091e	 Bytes: 5
  %loadMem_48091e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48091e = call %struct.Memory* @routine_cvtss2sd_MINUS0x18__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48091e)
  store %struct.Memory* %call_48091e, %struct.Memory** %MEMORY

  ; Code: ucomisd %xmm1, %xmm0	 RIP: 480923	 Bytes: 4
  %loadMem_480923 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480923 = call %struct.Memory* @routine_ucomisd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480923)
  store %struct.Memory* %call_480923, %struct.Memory** %MEMORY

  ; Code: jbe .L_48093f	 RIP: 480927	 Bytes: 6
  %loadMem_480927 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480927 = call %struct.Memory* @routine_jbe_.L_48093f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480927, i8* %BRANCH_TAKEN, i64 24, i64 6, i64 6)
  store %struct.Memory* %call_480927, %struct.Memory** %MEMORY

  %loadBr_480927 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_480927 = icmp eq i8 %loadBr_480927, 1
  br i1 %cmpBr_480927, label %block_.L_48093f, label %block_48092d

block_48092d:
  ; Code: cvtss2sd -0x18(%rbp), %xmm0	 RIP: 48092d	 Bytes: 5
  %loadMem_48092d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48092d = call %struct.Memory* @routine_cvtss2sd_MINUS0x18__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48092d)
  store %struct.Memory* %call_48092d, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0xa0(%rbp)	 RIP: 480932	 Bytes: 8
  %loadMem_480932 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480932 = call %struct.Memory* @routine_movsd__xmm0__MINUS0xa0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480932)
  store %struct.Memory* %call_480932, %struct.Memory** %MEMORY

  ; Code: jmpq .L_480954	 RIP: 48093a	 Bytes: 5
  %loadMem_48093a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48093a = call %struct.Memory* @routine_jmpq_.L_480954(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48093a, i64 26, i64 5)
  store %struct.Memory* %call_48093a, %struct.Memory** %MEMORY

  br label %block_.L_480954

  ; Code: .L_48093f:	 RIP: 48093f	 Bytes: 0
block_.L_48093f:

  ; Code: movsd 0x626c1(%rip), %xmm0	 RIP: 48093f	 Bytes: 8
  %loadMem_48093f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48093f = call %struct.Memory* @routine_movsd_0x626c1__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48093f)
  store %struct.Memory* %call_48093f, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0xa0(%rbp)	 RIP: 480947	 Bytes: 8
  %loadMem_480947 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480947 = call %struct.Memory* @routine_movsd__xmm0__MINUS0xa0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480947)
  store %struct.Memory* %call_480947, %struct.Memory** %MEMORY

  ; Code: jmpq .L_480954	 RIP: 48094f	 Bytes: 5
  %loadMem_48094f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48094f = call %struct.Memory* @routine_jmpq_.L_480954(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48094f, i64 5, i64 5)
  store %struct.Memory* %call_48094f, %struct.Memory** %MEMORY

  br label %block_.L_480954

  ; Code: .L_480954:	 RIP: 480954	 Bytes: 0
block_.L_480954:

  ; Code: movsd -0xa0(%rbp), %xmm0	 RIP: 480954	 Bytes: 8
  %loadMem_480954 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480954 = call %struct.Memory* @routine_movsd_MINUS0xa0__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480954)
  store %struct.Memory* %call_480954, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x98(%rbp)	 RIP: 48095c	 Bytes: 8
  %loadMem_48095c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48095c = call %struct.Memory* @routine_movsd__xmm0__MINUS0x98__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48095c)
  store %struct.Memory* %call_48095c, %struct.Memory** %MEMORY

  ; Code: .L_480964:	 RIP: 480964	 Bytes: 0
  br label %block_.L_480964
block_.L_480964:

  ; Code: movsd -0x98(%rbp), %xmm0	 RIP: 480964	 Bytes: 8
  %loadMem_480964 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480964 = call %struct.Memory* @routine_movsd_MINUS0x98__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480964)
  store %struct.Memory* %call_480964, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 48096c	 Bytes: 4
  %loadMem_48096c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48096c = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48096c)
  store %struct.Memory* %call_48096c, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x3c(%rbp)	 RIP: 480970	 Bytes: 5
  %loadMem_480970 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480970 = call %struct.Memory* @routine_movss__xmm0__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480970)
  store %struct.Memory* %call_480970, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xab0f28	 RIP: 480975	 Bytes: 8
  %loadMem_480975 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480975 = call %struct.Memory* @routine_cmpl__0x0__0xab0f28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480975)
  store %struct.Memory* %call_480975, %struct.Memory** %MEMORY

  ; Code: je .L_4809d2	 RIP: 48097d	 Bytes: 6
  %loadMem_48097d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48097d = call %struct.Memory* @routine_je_.L_4809d2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48097d, i8* %BRANCH_TAKEN, i64 85, i64 6, i64 6)
  store %struct.Memory* %call_48097d, %struct.Memory** %MEMORY

  %loadBr_48097d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48097d = icmp eq i8 %loadBr_48097d, 1
  br i1 %cmpBr_48097d, label %block_.L_4809d2, label %block_480983

block_480983:
  ; Code: movq $0x582137, %rdi	 RIP: 480983	 Bytes: 10
  %loadMem_480983 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480983 = call %struct.Memory* @routine_movq__0x582137___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480983)
  store %struct.Memory* %call_480983, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %esi	 RIP: 48098d	 Bytes: 3
  %loadMem_48098d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48098d = call %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48098d)
  store %struct.Memory* %call_48098d, %struct.Memory** %MEMORY

  ; Code: movss -0x3c(%rbp), %xmm0	 RIP: 480990	 Bytes: 5
  %loadMem_480990 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480990 = call %struct.Memory* @routine_movss_MINUS0x3c__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480990)
  store %struct.Memory* %call_480990, %struct.Memory** %MEMORY

  ; Code: mulss -0x38(%rbp), %xmm0	 RIP: 480995	 Bytes: 5
  %loadMem_480995 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480995 = call %struct.Memory* @routine_mulss_MINUS0x38__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480995)
  store %struct.Memory* %call_480995, %struct.Memory** %MEMORY

  ; Code: cvtss2sd %xmm0, %xmm0	 RIP: 48099a	 Bytes: 4
  %loadMem_48099a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48099a = call %struct.Memory* @routine_cvtss2sd__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48099a)
  store %struct.Memory* %call_48099a, %struct.Memory** %MEMORY

  ; Code: movb $0x1, %al	 RIP: 48099e	 Bytes: 2
  %loadMem_48099e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48099e = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48099e)
  store %struct.Memory* %call_48099e, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 4809a0	 Bytes: 5
  %loadMem1_4809a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4809a0 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4809a0, i64 -191472, i64 5, i64 5)
  store %struct.Memory* %call1_4809a0, %struct.Memory** %MEMORY

  %loadMem2_4809a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4809a0 = load i64, i64* %3
  %call2_4809a0 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_4809a0, %struct.Memory* %loadMem2_4809a0)
  store %struct.Memory* %call2_4809a0, %struct.Memory** %MEMORY

  ; Code: movq $0x582155, %rsi	 RIP: 4809a5	 Bytes: 10
  %loadMem_4809a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4809a5 = call %struct.Memory* @routine_movq__0x582155___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4809a5)
  store %struct.Memory* %call_4809a5, %struct.Memory** %MEMORY

  ; Code: movq 0x99c0a0, %rdi	 RIP: 4809af	 Bytes: 8
  %loadMem_4809af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4809af = call %struct.Memory* @routine_movq_0x99c0a0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4809af)
  store %struct.Memory* %call_4809af, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %edx	 RIP: 4809b7	 Bytes: 3
  %loadMem_4809b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4809b7 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4809b7)
  store %struct.Memory* %call_4809b7, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x38(%rbp), %xmm0	 RIP: 4809ba	 Bytes: 5
  %loadMem_4809ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4809ba = call %struct.Memory* @routine_cvtss2sd_MINUS0x38__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4809ba)
  store %struct.Memory* %call_4809ba, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xa4(%rbp)	 RIP: 4809bf	 Bytes: 6
  %loadMem_4809bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4809bf = call %struct.Memory* @routine_movl__eax__MINUS0xa4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4809bf)
  store %struct.Memory* %call_4809bf, %struct.Memory** %MEMORY

  ; Code: movb $0x1, %al	 RIP: 4809c5	 Bytes: 2
  %loadMem_4809c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4809c5 = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4809c5)
  store %struct.Memory* %call_4809c5, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 4809c7	 Bytes: 5
  %loadMem1_4809c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4809c7 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4809c7, i64 -522487, i64 5, i64 5)
  store %struct.Memory* %call1_4809c7, %struct.Memory** %MEMORY

  %loadMem2_4809c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4809c7 = load i64, i64* %3
  %call2_4809c7 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_4809c7, %struct.Memory* %loadMem2_4809c7)
  store %struct.Memory* %call2_4809c7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xa8(%rbp)	 RIP: 4809cc	 Bytes: 6
  %loadMem_4809cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4809cc = call %struct.Memory* @routine_movl__eax__MINUS0xa8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4809cc)
  store %struct.Memory* %call_4809cc, %struct.Memory** %MEMORY

  ; Code: .L_4809d2:	 RIP: 4809d2	 Bytes: 0
  br label %block_.L_4809d2
block_.L_4809d2:

  ; Code: movss -0x3c(%rbp), %xmm0	 RIP: 4809d2	 Bytes: 5
  %loadMem_4809d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4809d2 = call %struct.Memory* @routine_movss_MINUS0x3c__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4809d2)
  store %struct.Memory* %call_4809d2, %struct.Memory** %MEMORY

  ; Code: mulss -0x38(%rbp), %xmm0	 RIP: 4809d7	 Bytes: 5
  %loadMem_4809d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4809d7 = call %struct.Memory* @routine_mulss_MINUS0x38__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4809d7)
  store %struct.Memory* %call_4809d7, %struct.Memory** %MEMORY

  ; Code: addss -0x18(%rbp), %xmm0	 RIP: 4809dc	 Bytes: 5
  %loadMem_4809dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4809dc = call %struct.Memory* @routine_addss_MINUS0x18__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4809dc)
  store %struct.Memory* %call_4809dc, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x18(%rbp)	 RIP: 4809e1	 Bytes: 5
  %loadMem_4809e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4809e1 = call %struct.Memory* @routine_movss__xmm0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4809e1)
  store %struct.Memory* %call_4809e1, %struct.Memory** %MEMORY

  ; Code: .L_4809e6:	 RIP: 4809e6	 Bytes: 0
  br label %block_.L_4809e6
block_.L_4809e6:

  ; Code: jmpq .L_480ade	 RIP: 4809e6	 Bytes: 5
  %loadMem_4809e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4809e6 = call %struct.Memory* @routine_jmpq_.L_480ade(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4809e6, i64 248, i64 5)
  store %struct.Memory* %call_4809e6, %struct.Memory** %MEMORY

  br label %block_.L_480ade

  ; Code: .L_4809eb:	 RIP: 4809eb	 Bytes: 0
block_.L_4809eb:

  ; Code: movq $0xb9d8f0, %rax	 RIP: 4809eb	 Bytes: 10
  %loadMem_4809eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4809eb = call %struct.Memory* @routine_movq__0xb9d8f0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4809eb)
  store %struct.Memory* %call_4809eb, %struct.Memory** %MEMORY

  ; Code: movss -0x1c(%rbp), %xmm0	 RIP: 4809f5	 Bytes: 5
  %loadMem_4809f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4809f5 = call %struct.Memory* @routine_movss_MINUS0x1c__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4809f5)
  store %struct.Memory* %call_4809f5, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 4809fa	 Bytes: 4
  %loadMem_4809fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4809fa = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4809fa)
  store %struct.Memory* %call_4809fa, %struct.Memory** %MEMORY

  ; Code: imulq $0x234, %rcx, %rcx	 RIP: 4809fe	 Bytes: 7
  %loadMem_4809fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4809fe = call %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4809fe)
  store %struct.Memory* %call_4809fe, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 480a05	 Bytes: 3
  %loadMem_480a05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480a05 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480a05)
  store %struct.Memory* %call_480a05, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 480a08	 Bytes: 3
  %loadMem_480a08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480a08 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480a08)
  store %struct.Memory* %call_480a08, %struct.Memory** %MEMORY

  ; Code: movss 0x24(%rdx), %xmm1	 RIP: 480a0b	 Bytes: 5
  %loadMem_480a0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480a0b = call %struct.Memory* @routine_movss_0x24__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480a0b)
  store %struct.Memory* %call_480a0b, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 480a10	 Bytes: 4
  %loadMem_480a10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480a10 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480a10)
  store %struct.Memory* %call_480a10, %struct.Memory** %MEMORY

  ; Code: imulq $0x234, %rcx, %rcx	 RIP: 480a14	 Bytes: 7
  %loadMem_480a14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480a14 = call %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480a14)
  store %struct.Memory* %call_480a14, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 480a1b	 Bytes: 3
  %loadMem_480a1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480a1b = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480a1b)
  store %struct.Memory* %call_480a1b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 480a1e	 Bytes: 3
  %loadMem_480a1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480a1e = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480a1e)
  store %struct.Memory* %call_480a1e, %struct.Memory** %MEMORY

  ; Code: movss 0x24(%rdx), %xmm2	 RIP: 480a21	 Bytes: 5
  %loadMem_480a21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480a21 = call %struct.Memory* @routine_movss_0x24__rdx____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480a21)
  store %struct.Memory* %call_480a21, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 480a26	 Bytes: 4
  %loadMem_480a26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480a26 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480a26)
  store %struct.Memory* %call_480a26, %struct.Memory** %MEMORY

  ; Code: imulq $0x234, %rcx, %rcx	 RIP: 480a2a	 Bytes: 7
  %loadMem_480a2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480a2a = call %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480a2a)
  store %struct.Memory* %call_480a2a, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 480a31	 Bytes: 3
  %loadMem_480a31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480a31 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480a31)
  store %struct.Memory* %call_480a31, %struct.Memory** %MEMORY

  ; Code: movss 0x2c(%rax), %xmm3	 RIP: 480a34	 Bytes: 5
  %loadMem_480a34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480a34 = call %struct.Memory* @routine_movss_0x2c__rax____xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480a34)
  store %struct.Memory* %call_480a34, %struct.Memory** %MEMORY

  ; Code: ucomiss %xmm2, %xmm3	 RIP: 480a39	 Bytes: 3
  %loadMem_480a39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480a39 = call %struct.Memory* @routine_ucomiss__xmm2___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480a39)
  store %struct.Memory* %call_480a39, %struct.Memory** %MEMORY

  ; Code: movss %xmm1, -0xac(%rbp)	 RIP: 480a3c	 Bytes: 8
  %loadMem_480a3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480a3c = call %struct.Memory* @routine_movss__xmm1__MINUS0xac__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480a3c)
  store %struct.Memory* %call_480a3c, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0xb0(%rbp)	 RIP: 480a44	 Bytes: 8
  %loadMem_480a44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480a44 = call %struct.Memory* @routine_movss__xmm0__MINUS0xb0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480a44)
  store %struct.Memory* %call_480a44, %struct.Memory** %MEMORY

  ; Code: jbe .L_480a7c	 RIP: 480a4c	 Bytes: 6
  %loadMem_480a4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480a4c = call %struct.Memory* @routine_jbe_.L_480a7c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480a4c, i8* %BRANCH_TAKEN, i64 48, i64 6, i64 6)
  store %struct.Memory* %call_480a4c, %struct.Memory** %MEMORY

  %loadBr_480a4c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_480a4c = icmp eq i8 %loadBr_480a4c, 1
  br i1 %cmpBr_480a4c, label %block_.L_480a7c, label %block_480a52

block_480a52:
  ; Code: movq $0xb9d8f0, %rax	 RIP: 480a52	 Bytes: 10
  %loadMem_480a52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480a52 = call %struct.Memory* @routine_movq__0xb9d8f0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480a52)
  store %struct.Memory* %call_480a52, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 480a5c	 Bytes: 4
  %loadMem_480a5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480a5c = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480a5c)
  store %struct.Memory* %call_480a5c, %struct.Memory** %MEMORY

  ; Code: imulq $0x234, %rcx, %rcx	 RIP: 480a60	 Bytes: 7
  %loadMem_480a60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480a60 = call %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480a60)
  store %struct.Memory* %call_480a60, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 480a67	 Bytes: 3
  %loadMem_480a67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480a67 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480a67)
  store %struct.Memory* %call_480a67, %struct.Memory** %MEMORY

  ; Code: movss 0x24(%rax), %xmm0	 RIP: 480a6a	 Bytes: 5
  %loadMem_480a6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480a6a = call %struct.Memory* @routine_movss_0x24__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480a6a)
  store %struct.Memory* %call_480a6a, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0xb4(%rbp)	 RIP: 480a6f	 Bytes: 8
  %loadMem_480a6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480a6f = call %struct.Memory* @routine_movss__xmm0__MINUS0xb4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480a6f)
  store %struct.Memory* %call_480a6f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_480aa1	 RIP: 480a77	 Bytes: 5
  %loadMem_480a77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480a77 = call %struct.Memory* @routine_jmpq_.L_480aa1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480a77, i64 42, i64 5)
  store %struct.Memory* %call_480a77, %struct.Memory** %MEMORY

  br label %block_.L_480aa1

  ; Code: .L_480a7c:	 RIP: 480a7c	 Bytes: 0
block_.L_480a7c:

  ; Code: movq $0xb9d8f0, %rax	 RIP: 480a7c	 Bytes: 10
  %loadMem_480a7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480a7c = call %struct.Memory* @routine_movq__0xb9d8f0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480a7c)
  store %struct.Memory* %call_480a7c, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 480a86	 Bytes: 4
  %loadMem_480a86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480a86 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480a86)
  store %struct.Memory* %call_480a86, %struct.Memory** %MEMORY

  ; Code: imulq $0x234, %rcx, %rcx	 RIP: 480a8a	 Bytes: 7
  %loadMem_480a8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480a8a = call %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480a8a)
  store %struct.Memory* %call_480a8a, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 480a91	 Bytes: 3
  %loadMem_480a91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480a91 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480a91)
  store %struct.Memory* %call_480a91, %struct.Memory** %MEMORY

  ; Code: movss 0x2c(%rax), %xmm0	 RIP: 480a94	 Bytes: 5
  %loadMem_480a94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480a94 = call %struct.Memory* @routine_movss_0x2c__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480a94)
  store %struct.Memory* %call_480a94, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0xb4(%rbp)	 RIP: 480a99	 Bytes: 8
  %loadMem_480a99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480a99 = call %struct.Memory* @routine_movss__xmm0__MINUS0xb4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480a99)
  store %struct.Memory* %call_480a99, %struct.Memory** %MEMORY

  ; Code: .L_480aa1:	 RIP: 480aa1	 Bytes: 0
  br label %block_.L_480aa1
block_.L_480aa1:

  ; Code: movss -0xb4(%rbp), %xmm0	 RIP: 480aa1	 Bytes: 8
  %loadMem_480aa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480aa1 = call %struct.Memory* @routine_movss_MINUS0xb4__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480aa1)
  store %struct.Memory* %call_480aa1, %struct.Memory** %MEMORY

  ; Code: movq $0xb9d8f0, %rax	 RIP: 480aa9	 Bytes: 10
  %loadMem_480aa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480aa9 = call %struct.Memory* @routine_movq__0xb9d8f0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480aa9)
  store %struct.Memory* %call_480aa9, %struct.Memory** %MEMORY

  ; Code: movss -0xac(%rbp), %xmm1	 RIP: 480ab3	 Bytes: 8
  %loadMem_480ab3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480ab3 = call %struct.Memory* @routine_movss_MINUS0xac__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480ab3)
  store %struct.Memory* %call_480ab3, %struct.Memory** %MEMORY

  ; Code: addss %xmm0, %xmm1	 RIP: 480abb	 Bytes: 4
  %loadMem_480abb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480abb = call %struct.Memory* @routine_addss__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480abb)
  store %struct.Memory* %call_480abb, %struct.Memory** %MEMORY

  ; Code: movss -0xb0(%rbp), %xmm0	 RIP: 480abf	 Bytes: 8
  %loadMem_480abf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480abf = call %struct.Memory* @routine_movss_MINUS0xb0__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480abf)
  store %struct.Memory* %call_480abf, %struct.Memory** %MEMORY

  ; Code: mulss %xmm1, %xmm0	 RIP: 480ac7	 Bytes: 4
  %loadMem_480ac7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480ac7 = call %struct.Memory* @routine_mulss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480ac7)
  store %struct.Memory* %call_480ac7, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 480acb	 Bytes: 4
  %loadMem_480acb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480acb = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480acb)
  store %struct.Memory* %call_480acb, %struct.Memory** %MEMORY

  ; Code: imulq $0x234, %rcx, %rcx	 RIP: 480acf	 Bytes: 7
  %loadMem_480acf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480acf = call %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480acf)
  store %struct.Memory* %call_480acf, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 480ad6	 Bytes: 3
  %loadMem_480ad6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480ad6 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480ad6)
  store %struct.Memory* %call_480ad6, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x8(%rax)	 RIP: 480ad9	 Bytes: 5
  %loadMem_480ad9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480ad9 = call %struct.Memory* @routine_movss__xmm0__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480ad9)
  store %struct.Memory* %call_480ad9, %struct.Memory** %MEMORY

  ; Code: .L_480ade:	 RIP: 480ade	 Bytes: 0
  br label %block_.L_480ade
block_.L_480ade:

  ; Code: xorps %xmm0, %xmm0	 RIP: 480ade	 Bytes: 3
  %loadMem_480ade = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480ade = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480ade)
  store %struct.Memory* %call_480ade, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x10(%rbp), %xmm1	 RIP: 480ae1	 Bytes: 5
  %loadMem_480ae1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480ae1 = call %struct.Memory* @routine_cvtss2sd_MINUS0x10__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480ae1)
  store %struct.Memory* %call_480ae1, %struct.Memory** %MEMORY

  ; Code: ucomisd %xmm0, %xmm1	 RIP: 480ae6	 Bytes: 4
  %loadMem_480ae6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480ae6 = call %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480ae6)
  store %struct.Memory* %call_480ae6, %struct.Memory** %MEMORY

  ; Code: jbe .L_480cc7	 RIP: 480aea	 Bytes: 6
  %loadMem_480aea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480aea = call %struct.Memory* @routine_jbe_.L_480cc7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480aea, i8* %BRANCH_TAKEN, i64 477, i64 6, i64 6)
  store %struct.Memory* %call_480aea, %struct.Memory** %MEMORY

  %loadBr_480aea = load i8, i8* %BRANCH_TAKEN
  %cmpBr_480aea = icmp eq i8 %loadBr_480aea, 1
  br i1 %cmpBr_480aea, label %block_.L_480cc7, label %block_480af0

block_480af0:
  ; Code: movq $0xb9d8f0, %rax	 RIP: 480af0	 Bytes: 10
  %loadMem_480af0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480af0 = call %struct.Memory* @routine_movq__0xb9d8f0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480af0)
  store %struct.Memory* %call_480af0, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 480afa	 Bytes: 4
  %loadMem_480afa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480afa = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480afa)
  store %struct.Memory* %call_480afa, %struct.Memory** %MEMORY

  ; Code: imulq $0x234, %rcx, %rcx	 RIP: 480afe	 Bytes: 7
  %loadMem_480afe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480afe = call %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480afe)
  store %struct.Memory* %call_480afe, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 480b05	 Bytes: 3
  %loadMem_480b05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480b05 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480b05)
  store %struct.Memory* %call_480b05, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x22c(%rax)	 RIP: 480b08	 Bytes: 7
  %loadMem_480b08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480b08 = call %struct.Memory* @routine_cmpl__0x0__0x22c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480b08)
  store %struct.Memory* %call_480b08, %struct.Memory** %MEMORY

  ; Code: je .L_480cc7	 RIP: 480b0f	 Bytes: 6
  %loadMem_480b0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480b0f = call %struct.Memory* @routine_je_.L_480cc7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480b0f, i8* %BRANCH_TAKEN, i64 440, i64 6, i64 6)
  store %struct.Memory* %call_480b0f, %struct.Memory** %MEMORY

  %loadBr_480b0f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_480b0f = icmp eq i8 %loadBr_480b0f, 1
  br i1 %cmpBr_480b0f, label %block_.L_480cc7, label %block_480b15

block_480b15:
  ; Code: movss -0x18(%rbp), %xmm0	 RIP: 480b15	 Bytes: 5
  %loadMem_480b15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480b15 = call %struct.Memory* @routine_movss_MINUS0x18__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480b15)
  store %struct.Memory* %call_480b15, %struct.Memory** %MEMORY

  ; Code: movss -0x10(%rbp), %xmm1	 RIP: 480b1a	 Bytes: 5
  %loadMem_480b1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480b1a = call %struct.Memory* @routine_movss_MINUS0x10__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480b1a)
  store %struct.Memory* %call_480b1a, %struct.Memory** %MEMORY

  ; Code: ucomiss %xmm0, %xmm1	 RIP: 480b1f	 Bytes: 3
  %loadMem_480b1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480b1f = call %struct.Memory* @routine_ucomiss__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480b1f)
  store %struct.Memory* %call_480b1f, %struct.Memory** %MEMORY

  ; Code: jb .L_480cc7	 RIP: 480b22	 Bytes: 6
  %loadMem_480b22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480b22 = call %struct.Memory* @routine_jb_.L_480cc7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480b22, i8* %BRANCH_TAKEN, i64 421, i64 6, i64 6)
  store %struct.Memory* %call_480b22, %struct.Memory** %MEMORY

  %loadBr_480b22 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_480b22 = icmp eq i8 %loadBr_480b22, 1
  br i1 %cmpBr_480b22, label %block_.L_480cc7, label %block_480b28

block_480b28:
  ; Code: movslq -0x8(%rbp), %rax	 RIP: 480b28	 Bytes: 4
  %loadMem_480b28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480b28 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480b28)
  store %struct.Memory* %call_480b28, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 480b2c	 Bytes: 8
  %loadMem_480b2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480b2c = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480b2c)
  store %struct.Memory* %call_480b2c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 480b34	 Bytes: 3
  %loadMem_480b34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480b34 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480b34)
  store %struct.Memory* %call_480b34, %struct.Memory** %MEMORY

  ; Code: jne .L_480cc7	 RIP: 480b37	 Bytes: 6
  %loadMem_480b37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480b37 = call %struct.Memory* @routine_jne_.L_480cc7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480b37, i8* %BRANCH_TAKEN, i64 400, i64 6, i64 6)
  store %struct.Memory* %call_480b37, %struct.Memory** %MEMORY

  %loadBr_480b37 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_480b37 = icmp eq i8 %loadBr_480b37, 1
  br i1 %cmpBr_480b37, label %block_.L_480cc7, label %block_480b3d

block_480b3d:
  ; Code: xorps %xmm0, %xmm0	 RIP: 480b3d	 Bytes: 3
  %loadMem_480b3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480b3d = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480b3d)
  store %struct.Memory* %call_480b3d, %struct.Memory** %MEMORY

  ; Code: movq $0xb9d8f0, %rax	 RIP: 480b40	 Bytes: 10
  %loadMem_480b40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480b40 = call %struct.Memory* @routine_movq__0xb9d8f0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480b40)
  store %struct.Memory* %call_480b40, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 480b4a	 Bytes: 4
  %loadMem_480b4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480b4a = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480b4a)
  store %struct.Memory* %call_480b4a, %struct.Memory** %MEMORY

  ; Code: imulq $0x234, %rcx, %rcx	 RIP: 480b4e	 Bytes: 7
  %loadMem_480b4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480b4e = call %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480b4e)
  store %struct.Memory* %call_480b4e, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 480b55	 Bytes: 3
  %loadMem_480b55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480b55 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480b55)
  store %struct.Memory* %call_480b55, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x8(%rax), %xmm1	 RIP: 480b58	 Bytes: 5
  %loadMem_480b58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480b58 = call %struct.Memory* @routine_cvtss2sd_0x8__rax____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480b58)
  store %struct.Memory* %call_480b58, %struct.Memory** %MEMORY

  ; Code: ucomisd %xmm0, %xmm1	 RIP: 480b5d	 Bytes: 4
  %loadMem_480b5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480b5d = call %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480b5d)
  store %struct.Memory* %call_480b5d, %struct.Memory** %MEMORY

  ; Code: jbe .L_480cc7	 RIP: 480b61	 Bytes: 6
  %loadMem_480b61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480b61 = call %struct.Memory* @routine_jbe_.L_480cc7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480b61, i8* %BRANCH_TAKEN, i64 358, i64 6, i64 6)
  store %struct.Memory* %call_480b61, %struct.Memory** %MEMORY

  %loadBr_480b61 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_480b61 = icmp eq i8 %loadBr_480b61, 1
  br i1 %cmpBr_480b61, label %block_.L_480cc7, label %block_480b67

block_480b67:
  ; Code: movl -0x8(%rbp), %edi	 RIP: 480b67	 Bytes: 3
  %loadMem_480b67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480b67 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480b67)
  store %struct.Memory* %call_480b67, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %esi	 RIP: 480b6a	 Bytes: 3
  %loadMem_480b6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480b6a = call %struct.Memory* @routine_movl_MINUS0xc__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480b6a)
  store %struct.Memory* %call_480b6a, %struct.Memory** %MEMORY

  ; Code: callq .is_legal	 RIP: 480b6d	 Bytes: 5
  %loadMem1_480b6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_480b6d = call %struct.Memory* @routine_callq_.is_legal(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_480b6d, i64 -467101, i64 5, i64 5)
  store %struct.Memory* %call1_480b6d, %struct.Memory** %MEMORY

  %loadMem2_480b6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_480b6d = load i64, i64* %3
  %call2_480b6d = call %struct.Memory* @sub_40ead0.is_legal(%struct.State* %0, i64  %loadPC_480b6d, %struct.Memory* %loadMem2_480b6d)
  store %struct.Memory* %call2_480b6d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 480b72	 Bytes: 3
  %loadMem_480b72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480b72 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480b72)
  store %struct.Memory* %call_480b72, %struct.Memory** %MEMORY

  ; Code: je .L_480cc7	 RIP: 480b75	 Bytes: 6
  %loadMem_480b75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480b75 = call %struct.Memory* @routine_je_.L_480cc7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480b75, i8* %BRANCH_TAKEN, i64 338, i64 6, i64 6)
  store %struct.Memory* %call_480b75, %struct.Memory** %MEMORY

  %loadBr_480b75 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_480b75 = icmp eq i8 %loadBr_480b75, 1
  br i1 %cmpBr_480b75, label %block_.L_480cc7, label %block_480b7b

block_480b7b:
  ; Code: movl -0x8(%rbp), %edi	 RIP: 480b7b	 Bytes: 3
  %loadMem_480b7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480b7b = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480b7b)
  store %struct.Memory* %call_480b7b, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %esi	 RIP: 480b7e	 Bytes: 3
  %loadMem_480b7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480b7e = call %struct.Memory* @routine_movl_MINUS0xc__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480b7e)
  store %struct.Memory* %call_480b7e, %struct.Memory** %MEMORY

  ; Code: callq .value_moves_confirm_safety	 RIP: 480b81	 Bytes: 5
  %loadMem1_480b81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_480b81 = call %struct.Memory* @routine_callq_.value_moves_confirm_safety(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_480b81, i64 17727, i64 5, i64 5)
  store %struct.Memory* %call1_480b81, %struct.Memory** %MEMORY

  %loadMem2_480b81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_480b81 = load i64, i64* %3
  %call2_480b81 = call %struct.Memory* @sub_4850c0.value_moves_confirm_safety(%struct.State* %0, i64  %loadPC_480b81, %struct.Memory* %loadMem2_480b81)
  store %struct.Memory* %call2_480b81, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 480b86	 Bytes: 3
  %loadMem_480b86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480b86 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480b86)
  store %struct.Memory* %call_480b86, %struct.Memory** %MEMORY

  ; Code: je .L_480cc7	 RIP: 480b89	 Bytes: 6
  %loadMem_480b89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480b89 = call %struct.Memory* @routine_je_.L_480cc7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480b89, i8* %BRANCH_TAKEN, i64 318, i64 6, i64 6)
  store %struct.Memory* %call_480b89, %struct.Memory** %MEMORY

  %loadBr_480b89 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_480b89 = icmp eq i8 %loadBr_480b89, 1
  br i1 %cmpBr_480b89, label %block_.L_480cc7, label %block_480b8f

block_480b8f:
  ; Code: movsd 0x62411(%rip), %xmm0	 RIP: 480b8f	 Bytes: 8
  %loadMem_480b8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480b8f = call %struct.Memory* @routine_movsd_0x62411__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480b8f)
  store %struct.Memory* %call_480b8f, %struct.Memory** %MEMORY

  ; Code: movq $0xb9d8f0, %rax	 RIP: 480b97	 Bytes: 10
  %loadMem_480b97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480b97 = call %struct.Memory* @routine_movq__0xb9d8f0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480b97)
  store %struct.Memory* %call_480b97, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x10(%rbp), %xmm1	 RIP: 480ba1	 Bytes: 5
  %loadMem_480ba1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480ba1 = call %struct.Memory* @routine_cvtss2sd_MINUS0x10__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480ba1)
  store %struct.Memory* %call_480ba1, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x18(%rbp), %xmm2	 RIP: 480ba6	 Bytes: 5
  %loadMem_480ba6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480ba6 = call %struct.Memory* @routine_cvtss2sd_MINUS0x18__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480ba6)
  store %struct.Memory* %call_480ba6, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 480bab	 Bytes: 4
  %loadMem_480bab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480bab = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480bab)
  store %struct.Memory* %call_480bab, %struct.Memory** %MEMORY

  ; Code: imulq $0x234, %rcx, %rcx	 RIP: 480baf	 Bytes: 7
  %loadMem_480baf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480baf = call %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480baf)
  store %struct.Memory* %call_480baf, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 480bb6	 Bytes: 3
  %loadMem_480bb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480bb6 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480bb6)
  store %struct.Memory* %call_480bb6, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x8(%rax), %xmm3	 RIP: 480bb9	 Bytes: 5
  %loadMem_480bb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480bb9 = call %struct.Memory* @routine_cvtss2sd_0x8__rax____xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480bb9)
  store %struct.Memory* %call_480bb9, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm3, %xmm0	 RIP: 480bbe	 Bytes: 4
  %loadMem_480bbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480bbe = call %struct.Memory* @routine_mulsd__xmm3___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480bbe)
  store %struct.Memory* %call_480bbe, %struct.Memory** %MEMORY

  ; Code: addsd %xmm0, %xmm2	 RIP: 480bc2	 Bytes: 4
  %loadMem_480bc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480bc2 = call %struct.Memory* @routine_addsd__xmm0___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480bc2)
  store %struct.Memory* %call_480bc2, %struct.Memory** %MEMORY

  ; Code: ucomisd %xmm1, %xmm2	 RIP: 480bc6	 Bytes: 4
  %loadMem_480bc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480bc6 = call %struct.Memory* @routine_ucomisd__xmm1___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480bc6)
  store %struct.Memory* %call_480bc6, %struct.Memory** %MEMORY

  ; Code: jbe .L_480be2	 RIP: 480bca	 Bytes: 6
  %loadMem_480bca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480bca = call %struct.Memory* @routine_jbe_.L_480be2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480bca, i8* %BRANCH_TAKEN, i64 24, i64 6, i64 6)
  store %struct.Memory* %call_480bca, %struct.Memory** %MEMORY

  %loadBr_480bca = load i8, i8* %BRANCH_TAKEN
  %cmpBr_480bca = icmp eq i8 %loadBr_480bca, 1
  br i1 %cmpBr_480bca, label %block_.L_480be2, label %block_480bd0

block_480bd0:
  ; Code: cvtss2sd -0x10(%rbp), %xmm0	 RIP: 480bd0	 Bytes: 5
  %loadMem_480bd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480bd0 = call %struct.Memory* @routine_cvtss2sd_MINUS0x10__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480bd0)
  store %struct.Memory* %call_480bd0, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0xc0(%rbp)	 RIP: 480bd5	 Bytes: 8
  %loadMem_480bd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480bd5 = call %struct.Memory* @routine_movsd__xmm0__MINUS0xc0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480bd5)
  store %struct.Memory* %call_480bd5, %struct.Memory** %MEMORY

  ; Code: jmpq .L_480c1c	 RIP: 480bdd	 Bytes: 5
  %loadMem_480bdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480bdd = call %struct.Memory* @routine_jmpq_.L_480c1c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480bdd, i64 63, i64 5)
  store %struct.Memory* %call_480bdd, %struct.Memory** %MEMORY

  br label %block_.L_480c1c

  ; Code: .L_480be2:	 RIP: 480be2	 Bytes: 0
block_.L_480be2:

  ; Code: movsd 0x623be(%rip), %xmm0	 RIP: 480be2	 Bytes: 8
  %loadMem_480be2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480be2 = call %struct.Memory* @routine_movsd_0x623be__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480be2)
  store %struct.Memory* %call_480be2, %struct.Memory** %MEMORY

  ; Code: movq $0xb9d8f0, %rax	 RIP: 480bea	 Bytes: 10
  %loadMem_480bea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480bea = call %struct.Memory* @routine_movq__0xb9d8f0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480bea)
  store %struct.Memory* %call_480bea, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x18(%rbp), %xmm1	 RIP: 480bf4	 Bytes: 5
  %loadMem_480bf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480bf4 = call %struct.Memory* @routine_cvtss2sd_MINUS0x18__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480bf4)
  store %struct.Memory* %call_480bf4, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 480bf9	 Bytes: 4
  %loadMem_480bf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480bf9 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480bf9)
  store %struct.Memory* %call_480bf9, %struct.Memory** %MEMORY

  ; Code: imulq $0x234, %rcx, %rcx	 RIP: 480bfd	 Bytes: 7
  %loadMem_480bfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480bfd = call %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480bfd)
  store %struct.Memory* %call_480bfd, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 480c04	 Bytes: 3
  %loadMem_480c04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480c04 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480c04)
  store %struct.Memory* %call_480c04, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x8(%rax), %xmm2	 RIP: 480c07	 Bytes: 5
  %loadMem_480c07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480c07 = call %struct.Memory* @routine_cvtss2sd_0x8__rax____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480c07)
  store %struct.Memory* %call_480c07, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm2, %xmm0	 RIP: 480c0c	 Bytes: 4
  %loadMem_480c0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480c0c = call %struct.Memory* @routine_mulsd__xmm2___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480c0c)
  store %struct.Memory* %call_480c0c, %struct.Memory** %MEMORY

  ; Code: addsd %xmm0, %xmm1	 RIP: 480c10	 Bytes: 4
  %loadMem_480c10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480c10 = call %struct.Memory* @routine_addsd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480c10)
  store %struct.Memory* %call_480c10, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0xc0(%rbp)	 RIP: 480c14	 Bytes: 8
  %loadMem_480c14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480c14 = call %struct.Memory* @routine_movsd__xmm1__MINUS0xc0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480c14)
  store %struct.Memory* %call_480c14, %struct.Memory** %MEMORY

  ; Code: .L_480c1c:	 RIP: 480c1c	 Bytes: 0
  br label %block_.L_480c1c
block_.L_480c1c:

  ; Code: movsd -0xc0(%rbp), %xmm0	 RIP: 480c1c	 Bytes: 8
  %loadMem_480c1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480c1c = call %struct.Memory* @routine_movsd_MINUS0xc0__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480c1c)
  store %struct.Memory* %call_480c1c, %struct.Memory** %MEMORY

  ; Code: movsd 0x62334(%rip), %xmm1	 RIP: 480c24	 Bytes: 8
  %loadMem_480c24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480c24 = call %struct.Memory* @routine_movsd_0x62334__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480c24)
  store %struct.Memory* %call_480c24, %struct.Memory** %MEMORY

  ; Code: movsd 0x62404(%rip), %xmm2	 RIP: 480c2c	 Bytes: 8
  %loadMem_480c2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480c2c = call %struct.Memory* @routine_movsd_0x62404__rip____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480c2c)
  store %struct.Memory* %call_480c2c, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 480c34	 Bytes: 4
  %loadMem_480c34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480c34 = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480c34)
  store %struct.Memory* %call_480c34, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x40(%rbp)	 RIP: 480c38	 Bytes: 5
  %loadMem_480c38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480c38 = call %struct.Memory* @routine_movss__xmm0__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480c38)
  store %struct.Memory* %call_480c38, %struct.Memory** %MEMORY

  ; Code: movss -0x10(%rbp), %xmm0	 RIP: 480c3d	 Bytes: 5
  %loadMem_480c3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480c3d = call %struct.Memory* @routine_movss_MINUS0x10__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480c3d)
  store %struct.Memory* %call_480c3d, %struct.Memory** %MEMORY

  ; Code: subss -0x18(%rbp), %xmm0	 RIP: 480c42	 Bytes: 5
  %loadMem_480c42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480c42 = call %struct.Memory* @routine_subss_MINUS0x18__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480c42)
  store %struct.Memory* %call_480c42, %struct.Memory** %MEMORY

  ; Code: cvtss2sd %xmm0, %xmm0	 RIP: 480c47	 Bytes: 4
  %loadMem_480c47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480c47 = call %struct.Memory* @routine_cvtss2sd__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480c47)
  store %struct.Memory* %call_480c47, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm0, %xmm2	 RIP: 480c4b	 Bytes: 4
  %loadMem_480c4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480c4b = call %struct.Memory* @routine_mulsd__xmm0___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480c4b)
  store %struct.Memory* %call_480c4b, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x10(%rbp), %xmm0	 RIP: 480c4f	 Bytes: 5
  %loadMem_480c4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480c4f = call %struct.Memory* @routine_cvtss2sd_MINUS0x10__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480c4f)
  store %struct.Memory* %call_480c4f, %struct.Memory** %MEMORY

  ; Code: divsd %xmm0, %xmm2	 RIP: 480c54	 Bytes: 4
  %loadMem_480c54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480c54 = call %struct.Memory* @routine_divsd__xmm0___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480c54)
  store %struct.Memory* %call_480c54, %struct.Memory** %MEMORY

  ; Code: subsd %xmm2, %xmm1	 RIP: 480c58	 Bytes: 4
  %loadMem_480c58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480c58 = call %struct.Memory* @routine_subsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480c58)
  store %struct.Memory* %call_480c58, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x40(%rbp), %xmm0	 RIP: 480c5c	 Bytes: 5
  %loadMem_480c5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480c5c = call %struct.Memory* @routine_cvtss2sd_MINUS0x40__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480c5c)
  store %struct.Memory* %call_480c5c, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm1, %xmm0	 RIP: 480c61	 Bytes: 4
  %loadMem_480c61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480c61 = call %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480c61)
  store %struct.Memory* %call_480c61, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 480c65	 Bytes: 4
  %loadMem_480c65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480c65 = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480c65)
  store %struct.Memory* %call_480c65, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x40(%rbp)	 RIP: 480c69	 Bytes: 5
  %loadMem_480c69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480c69 = call %struct.Memory* @routine_movss__xmm0__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480c69)
  store %struct.Memory* %call_480c69, %struct.Memory** %MEMORY

  ; Code: movss -0x40(%rbp), %xmm0	 RIP: 480c6e	 Bytes: 5
  %loadMem_480c6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480c6e = call %struct.Memory* @routine_movss_MINUS0x40__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480c6e)
  store %struct.Memory* %call_480c6e, %struct.Memory** %MEMORY

  ; Code: ucomiss -0x18(%rbp), %xmm0	 RIP: 480c73	 Bytes: 4
  %loadMem_480c73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480c73 = call %struct.Memory* @routine_ucomiss_MINUS0x18__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480c73)
  store %struct.Memory* %call_480c73, %struct.Memory** %MEMORY

  ; Code: jbe .L_480cc2	 RIP: 480c77	 Bytes: 6
  %loadMem_480c77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480c77 = call %struct.Memory* @routine_jbe_.L_480cc2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480c77, i8* %BRANCH_TAKEN, i64 75, i64 6, i64 6)
  store %struct.Memory* %call_480c77, %struct.Memory** %MEMORY

  %loadBr_480c77 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_480c77 = icmp eq i8 %loadBr_480c77, 1
  br i1 %cmpBr_480c77, label %block_.L_480cc2, label %block_480c7d

block_480c7d:
  ; Code: cmpl $0x0, 0xab0f28	 RIP: 480c7d	 Bytes: 8
  %loadMem_480c7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480c7d = call %struct.Memory* @routine_cmpl__0x0__0xab0f28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480c7d)
  store %struct.Memory* %call_480c7d, %struct.Memory** %MEMORY

  ; Code: jne .L_480c90	 RIP: 480c85	 Bytes: 6
  %loadMem_480c85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480c85 = call %struct.Memory* @routine_jne_.L_480c90(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480c85, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_480c85, %struct.Memory** %MEMORY

  %loadBr_480c85 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_480c85 = icmp eq i8 %loadBr_480c85, 1
  br i1 %cmpBr_480c85, label %block_.L_480c90, label %block_480c8b

block_480c8b:
  ; Code: jmpq .L_480cb8	 RIP: 480c8b	 Bytes: 5
  %loadMem_480c8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480c8b = call %struct.Memory* @routine_jmpq_.L_480cb8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480c8b, i64 45, i64 5)
  store %struct.Memory* %call_480c8b, %struct.Memory** %MEMORY

  br label %block_.L_480cb8

  ; Code: .L_480c90:	 RIP: 480c90	 Bytes: 0
block_.L_480c90:

  ; Code: movq $0x58217d, %rdi	 RIP: 480c90	 Bytes: 10
  %loadMem_480c90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480c90 = call %struct.Memory* @routine_movq__0x58217d___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480c90)
  store %struct.Memory* %call_480c90, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %esi	 RIP: 480c9a	 Bytes: 3
  %loadMem_480c9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480c9a = call %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480c9a)
  store %struct.Memory* %call_480c9a, %struct.Memory** %MEMORY

  ; Code: movss -0x40(%rbp), %xmm0	 RIP: 480c9d	 Bytes: 5
  %loadMem_480c9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480c9d = call %struct.Memory* @routine_movss_MINUS0x40__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480c9d)
  store %struct.Memory* %call_480c9d, %struct.Memory** %MEMORY

  ; Code: subss -0x18(%rbp), %xmm0	 RIP: 480ca2	 Bytes: 5
  %loadMem_480ca2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480ca2 = call %struct.Memory* @routine_subss_MINUS0x18__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480ca2)
  store %struct.Memory* %call_480ca2, %struct.Memory** %MEMORY

  ; Code: cvtss2sd %xmm0, %xmm0	 RIP: 480ca7	 Bytes: 4
  %loadMem_480ca7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480ca7 = call %struct.Memory* @routine_cvtss2sd__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480ca7)
  store %struct.Memory* %call_480ca7, %struct.Memory** %MEMORY

  ; Code: movb $0x1, %al	 RIP: 480cab	 Bytes: 2
  %loadMem_480cab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480cab = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480cab)
  store %struct.Memory* %call_480cab, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 480cad	 Bytes: 5
  %loadMem1_480cad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_480cad = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_480cad, i64 -192253, i64 5, i64 5)
  store %struct.Memory* %call1_480cad, %struct.Memory** %MEMORY

  %loadMem2_480cad = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_480cad = load i64, i64* %3
  %call2_480cad = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_480cad, %struct.Memory* %loadMem2_480cad)
  store %struct.Memory* %call2_480cad, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc4(%rbp)	 RIP: 480cb2	 Bytes: 6
  %loadMem_480cb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480cb2 = call %struct.Memory* @routine_movl__eax__MINUS0xc4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480cb2)
  store %struct.Memory* %call_480cb2, %struct.Memory** %MEMORY

  ; Code: .L_480cb8:	 RIP: 480cb8	 Bytes: 0
  br label %block_.L_480cb8
block_.L_480cb8:

  ; Code: movss -0x40(%rbp), %xmm0	 RIP: 480cb8	 Bytes: 5
  %loadMem_480cb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480cb8 = call %struct.Memory* @routine_movss_MINUS0x40__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480cb8)
  store %struct.Memory* %call_480cb8, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x18(%rbp)	 RIP: 480cbd	 Bytes: 5
  %loadMem_480cbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480cbd = call %struct.Memory* @routine_movss__xmm0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480cbd)
  store %struct.Memory* %call_480cbd, %struct.Memory** %MEMORY

  ; Code: .L_480cc2:	 RIP: 480cc2	 Bytes: 0
  br label %block_.L_480cc2
block_.L_480cc2:

  ; Code: jmpq .L_480cc7	 RIP: 480cc2	 Bytes: 5
  %loadMem_480cc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480cc2 = call %struct.Memory* @routine_jmpq_.L_480cc7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480cc2, i64 5, i64 5)
  store %struct.Memory* %call_480cc2, %struct.Memory** %MEMORY

  br label %block_.L_480cc7

  ; Code: .L_480cc7:	 RIP: 480cc7	 Bytes: 0
block_.L_480cc7:

  ; Code: movq $0xb9d8f0, %rax	 RIP: 480cc7	 Bytes: 10
  %loadMem_480cc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480cc7 = call %struct.Memory* @routine_movq__0xb9d8f0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480cc7)
  store %struct.Memory* %call_480cc7, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 480cd1	 Bytes: 4
  %loadMem_480cd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480cd1 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480cd1)
  store %struct.Memory* %call_480cd1, %struct.Memory** %MEMORY

  ; Code: imulq $0x234, %rcx, %rcx	 RIP: 480cd5	 Bytes: 7
  %loadMem_480cd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480cd5 = call %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480cd5)
  store %struct.Memory* %call_480cd5, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 480cdc	 Bytes: 3
  %loadMem_480cdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480cdc = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480cdc)
  store %struct.Memory* %call_480cdc, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 480cdf	 Bytes: 3
  %loadMem_480cdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480cdf = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480cdf)
  store %struct.Memory* %call_480cdf, %struct.Memory** %MEMORY

  ; Code: movss 0x34(%rdx), %xmm0	 RIP: 480ce2	 Bytes: 5
  %loadMem_480ce2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480ce2 = call %struct.Memory* @routine_movss_0x34__rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480ce2)
  store %struct.Memory* %call_480ce2, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 480ce7	 Bytes: 4
  %loadMem_480ce7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480ce7 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480ce7)
  store %struct.Memory* %call_480ce7, %struct.Memory** %MEMORY

  ; Code: imulq $0x234, %rcx, %rcx	 RIP: 480ceb	 Bytes: 7
  %loadMem_480ceb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480ceb = call %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480ceb)
  store %struct.Memory* %call_480ceb, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 480cf2	 Bytes: 3
  %loadMem_480cf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480cf2 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480cf2)
  store %struct.Memory* %call_480cf2, %struct.Memory** %MEMORY

  ; Code: ucomiss 0x38(%rax), %xmm0	 RIP: 480cf5	 Bytes: 4
  %loadMem_480cf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480cf5 = call %struct.Memory* @routine_ucomiss_0x38__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480cf5)
  store %struct.Memory* %call_480cf5, %struct.Memory** %MEMORY

  ; Code: jbe .L_480d32	 RIP: 480cf9	 Bytes: 6
  %loadMem_480cf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480cf9 = call %struct.Memory* @routine_jbe_.L_480d32(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480cf9, i8* %BRANCH_TAKEN, i64 57, i64 6, i64 6)
  store %struct.Memory* %call_480cf9, %struct.Memory** %MEMORY

  %loadBr_480cf9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_480cf9 = icmp eq i8 %loadBr_480cf9, 1
  br i1 %cmpBr_480cf9, label %block_.L_480d32, label %block_480cff

block_480cff:
  ; Code: movq $0xb9d8f0, %rax	 RIP: 480cff	 Bytes: 10
  %loadMem_480cff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480cff = call %struct.Memory* @routine_movq__0xb9d8f0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480cff)
  store %struct.Memory* %call_480cff, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 480d09	 Bytes: 4
  %loadMem_480d09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480d09 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480d09)
  store %struct.Memory* %call_480d09, %struct.Memory** %MEMORY

  ; Code: imulq $0x234, %rcx, %rcx	 RIP: 480d0d	 Bytes: 7
  %loadMem_480d0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480d0d = call %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480d0d)
  store %struct.Memory* %call_480d0d, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 480d14	 Bytes: 3
  %loadMem_480d14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480d14 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480d14)
  store %struct.Memory* %call_480d14, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 480d17	 Bytes: 3
  %loadMem_480d17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480d17 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480d17)
  store %struct.Memory* %call_480d17, %struct.Memory** %MEMORY

  ; Code: movss 0x34(%rdx), %xmm0	 RIP: 480d1a	 Bytes: 5
  %loadMem_480d1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480d1a = call %struct.Memory* @routine_movss_0x34__rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480d1a)
  store %struct.Memory* %call_480d1a, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 480d1f	 Bytes: 4
  %loadMem_480d1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480d1f = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480d1f)
  store %struct.Memory* %call_480d1f, %struct.Memory** %MEMORY

  ; Code: imulq $0x234, %rcx, %rcx	 RIP: 480d23	 Bytes: 7
  %loadMem_480d23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480d23 = call %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480d23)
  store %struct.Memory* %call_480d23, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 480d2a	 Bytes: 3
  %loadMem_480d2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480d2a = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480d2a)
  store %struct.Memory* %call_480d2a, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x38(%rax)	 RIP: 480d2d	 Bytes: 5
  %loadMem_480d2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480d2d = call %struct.Memory* @routine_movss__xmm0__0x38__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480d2d)
  store %struct.Memory* %call_480d2d, %struct.Memory** %MEMORY

  ; Code: .L_480d32:	 RIP: 480d32	 Bytes: 0
  br label %block_.L_480d32
block_.L_480d32:

  ; Code: movss 0x62436(%rip), %xmm0	 RIP: 480d32	 Bytes: 8
  %loadMem_480d32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480d32 = call %struct.Memory* @routine_movss_0x62436__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480d32)
  store %struct.Memory* %call_480d32, %struct.Memory** %MEMORY

  ; Code: movq $0xb9d8f0, %rax	 RIP: 480d3a	 Bytes: 10
  %loadMem_480d3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480d3a = call %struct.Memory* @routine_movq__0xb9d8f0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480d3a)
  store %struct.Memory* %call_480d3a, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 480d44	 Bytes: 4
  %loadMem_480d44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480d44 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480d44)
  store %struct.Memory* %call_480d44, %struct.Memory** %MEMORY

  ; Code: imulq $0x234, %rcx, %rcx	 RIP: 480d48	 Bytes: 7
  %loadMem_480d48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480d48 = call %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480d48)
  store %struct.Memory* %call_480d48, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 480d4f	 Bytes: 3
  %loadMem_480d4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480d4f = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480d4f)
  store %struct.Memory* %call_480d4f, %struct.Memory** %MEMORY

  ; Code: ucomiss 0x34(%rax), %xmm0	 RIP: 480d52	 Bytes: 4
  %loadMem_480d52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480d52 = call %struct.Memory* @routine_ucomiss_0x34__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480d52)
  store %struct.Memory* %call_480d52, %struct.Memory** %MEMORY

  ; Code: jbe .L_480d8f	 RIP: 480d56	 Bytes: 6
  %loadMem_480d56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480d56 = call %struct.Memory* @routine_jbe_.L_480d8f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480d56, i8* %BRANCH_TAKEN, i64 57, i64 6, i64 6)
  store %struct.Memory* %call_480d56, %struct.Memory** %MEMORY

  %loadBr_480d56 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_480d56 = icmp eq i8 %loadBr_480d56, 1
  br i1 %cmpBr_480d56, label %block_.L_480d8f, label %block_480d5c

block_480d5c:
  ; Code: movq $0xb9d8f0, %rax	 RIP: 480d5c	 Bytes: 10
  %loadMem_480d5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480d5c = call %struct.Memory* @routine_movq__0xb9d8f0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480d5c)
  store %struct.Memory* %call_480d5c, %struct.Memory** %MEMORY

  ; Code: movss 0x62406(%rip), %xmm0	 RIP: 480d66	 Bytes: 8
  %loadMem_480d66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480d66 = call %struct.Memory* @routine_movss_0x62406__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480d66)
  store %struct.Memory* %call_480d66, %struct.Memory** %MEMORY

  ; Code: movss -0x18(%rbp), %xmm1	 RIP: 480d6e	 Bytes: 5
  %loadMem_480d6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480d6e = call %struct.Memory* @routine_movss_MINUS0x18__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480d6e)
  store %struct.Memory* %call_480d6e, %struct.Memory** %MEMORY

  ; Code: divss %xmm0, %xmm1	 RIP: 480d73	 Bytes: 4
  %loadMem_480d73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480d73 = call %struct.Memory* @routine_divss__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480d73)
  store %struct.Memory* %call_480d73, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 480d77	 Bytes: 4
  %loadMem_480d77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480d77 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480d77)
  store %struct.Memory* %call_480d77, %struct.Memory** %MEMORY

  ; Code: imulq $0x234, %rcx, %rcx	 RIP: 480d7b	 Bytes: 7
  %loadMem_480d7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480d7b = call %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480d7b)
  store %struct.Memory* %call_480d7b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 480d82	 Bytes: 3
  %loadMem_480d82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480d82 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480d82)
  store %struct.Memory* %call_480d82, %struct.Memory** %MEMORY

  ; Code: addss 0x34(%rax), %xmm1	 RIP: 480d85	 Bytes: 5
  %loadMem_480d85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480d85 = call %struct.Memory* @routine_addss_0x34__rax____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480d85)
  store %struct.Memory* %call_480d85, %struct.Memory** %MEMORY

  ; Code: movss %xmm1, 0x34(%rax)	 RIP: 480d8a	 Bytes: 5
  %loadMem_480d8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480d8a = call %struct.Memory* @routine_movss__xmm1__0x34__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480d8a)
  store %struct.Memory* %call_480d8a, %struct.Memory** %MEMORY

  ; Code: .L_480d8f:	 RIP: 480d8f	 Bytes: 0
  br label %block_.L_480d8f
block_.L_480d8f:

  ; Code: movq $0xb9d8f0, %rax	 RIP: 480d8f	 Bytes: 10
  %loadMem_480d8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480d8f = call %struct.Memory* @routine_movq__0xb9d8f0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480d8f)
  store %struct.Memory* %call_480d8f, %struct.Memory** %MEMORY

  ; Code: movss -0x18(%rbp), %xmm0	 RIP: 480d99	 Bytes: 5
  %loadMem_480d99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480d99 = call %struct.Memory* @routine_movss_MINUS0x18__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480d99)
  store %struct.Memory* %call_480d99, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 480d9e	 Bytes: 4
  %loadMem_480d9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480d9e = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480d9e)
  store %struct.Memory* %call_480d9e, %struct.Memory** %MEMORY

  ; Code: imulq $0x234, %rcx, %rcx	 RIP: 480da2	 Bytes: 7
  %loadMem_480da2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480da2 = call %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480da2)
  store %struct.Memory* %call_480da2, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 480da9	 Bytes: 3
  %loadMem_480da9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480da9 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480da9)
  store %struct.Memory* %call_480da9, %struct.Memory** %MEMORY

  ; Code: movss 0x34(%rax), %xmm1	 RIP: 480dac	 Bytes: 5
  %loadMem_480dac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480dac = call %struct.Memory* @routine_movss_0x34__rax____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480dac)
  store %struct.Memory* %call_480dac, %struct.Memory** %MEMORY

  ; Code: ucomiss %xmm0, %xmm1	 RIP: 480db1	 Bytes: 3
  %loadMem_480db1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480db1 = call %struct.Memory* @routine_ucomiss__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480db1)
  store %struct.Memory* %call_480db1, %struct.Memory** %MEMORY

  ; Code: jbe .L_480e3c	 RIP: 480db4	 Bytes: 6
  %loadMem_480db4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480db4 = call %struct.Memory* @routine_jbe_.L_480e3c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480db4, i8* %BRANCH_TAKEN, i64 136, i64 6, i64 6)
  store %struct.Memory* %call_480db4, %struct.Memory** %MEMORY

  %loadBr_480db4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_480db4 = icmp eq i8 %loadBr_480db4, 1
  br i1 %cmpBr_480db4, label %block_.L_480e3c, label %block_480dba

block_480dba:
  ; Code: xorps %xmm0, %xmm0	 RIP: 480dba	 Bytes: 3
  %loadMem_480dba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480dba = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480dba)
  store %struct.Memory* %call_480dba, %struct.Memory** %MEMORY

  ; Code: movq $0xb9d8f0, %rax	 RIP: 480dbd	 Bytes: 10
  %loadMem_480dbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480dbd = call %struct.Memory* @routine_movq__0xb9d8f0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480dbd)
  store %struct.Memory* %call_480dbd, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 480dc7	 Bytes: 4
  %loadMem_480dc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480dc7 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480dc7)
  store %struct.Memory* %call_480dc7, %struct.Memory** %MEMORY

  ; Code: imulq $0x234, %rcx, %rcx	 RIP: 480dcb	 Bytes: 7
  %loadMem_480dcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480dcb = call %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480dcb)
  store %struct.Memory* %call_480dcb, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 480dd2	 Bytes: 3
  %loadMem_480dd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480dd2 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480dd2)
  store %struct.Memory* %call_480dd2, %struct.Memory** %MEMORY

  ; Code: movss 0x34(%rax), %xmm1	 RIP: 480dd5	 Bytes: 5
  %loadMem_480dd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480dd5 = call %struct.Memory* @routine_movss_0x34__rax____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480dd5)
  store %struct.Memory* %call_480dd5, %struct.Memory** %MEMORY

  ; Code: ucomiss %xmm0, %xmm1	 RIP: 480dda	 Bytes: 3
  %loadMem_480dda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480dda = call %struct.Memory* @routine_ucomiss__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480dda)
  store %struct.Memory* %call_480dda, %struct.Memory** %MEMORY

  ; Code: jbe .L_480e3c	 RIP: 480ddd	 Bytes: 6
  %loadMem_480ddd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480ddd = call %struct.Memory* @routine_jbe_.L_480e3c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480ddd, i8* %BRANCH_TAKEN, i64 95, i64 6, i64 6)
  store %struct.Memory* %call_480ddd, %struct.Memory** %MEMORY

  %loadBr_480ddd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_480ddd = icmp eq i8 %loadBr_480ddd, 1
  br i1 %cmpBr_480ddd, label %block_.L_480e3c, label %block_480de3

block_480de3:
  ; Code: movq $0xb9d8f0, %rax	 RIP: 480de3	 Bytes: 10
  %loadMem_480de3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480de3 = call %struct.Memory* @routine_movq__0xb9d8f0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480de3)
  store %struct.Memory* %call_480de3, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 480ded	 Bytes: 4
  %loadMem_480ded = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480ded = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480ded)
  store %struct.Memory* %call_480ded, %struct.Memory** %MEMORY

  ; Code: imulq $0x234, %rcx, %rcx	 RIP: 480df1	 Bytes: 7
  %loadMem_480df1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480df1 = call %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480df1)
  store %struct.Memory* %call_480df1, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 480df8	 Bytes: 3
  %loadMem_480df8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480df8 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480df8)
  store %struct.Memory* %call_480df8, %struct.Memory** %MEMORY

  ; Code: movss 0x34(%rax), %xmm0	 RIP: 480dfb	 Bytes: 5
  %loadMem_480dfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480dfb = call %struct.Memory* @routine_movss_0x34__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480dfb)
  store %struct.Memory* %call_480dfb, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x18(%rbp)	 RIP: 480e00	 Bytes: 5
  %loadMem_480e00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480e00 = call %struct.Memory* @routine_movss__xmm0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480e00)
  store %struct.Memory* %call_480e00, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xab0f28	 RIP: 480e05	 Bytes: 8
  %loadMem_480e05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480e05 = call %struct.Memory* @routine_cmpl__0x0__0xab0f28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480e05)
  store %struct.Memory* %call_480e05, %struct.Memory** %MEMORY

  ; Code: jne .L_480e18	 RIP: 480e0d	 Bytes: 6
  %loadMem_480e0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480e0d = call %struct.Memory* @routine_jne_.L_480e18(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480e0d, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_480e0d, %struct.Memory** %MEMORY

  %loadBr_480e0d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_480e0d = icmp eq i8 %loadBr_480e0d, 1
  br i1 %cmpBr_480e0d, label %block_.L_480e18, label %block_480e13

block_480e13:
  ; Code: jmpq .L_480e37	 RIP: 480e13	 Bytes: 5
  %loadMem_480e13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480e13 = call %struct.Memory* @routine_jmpq_.L_480e37(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480e13, i64 36, i64 5)
  store %struct.Memory* %call_480e13, %struct.Memory** %MEMORY

  br label %block_.L_480e37

  ; Code: .L_480e18:	 RIP: 480e18	 Bytes: 0
block_.L_480e18:

  ; Code: movq $0x5821b4, %rdi	 RIP: 480e18	 Bytes: 10
  %loadMem_480e18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480e18 = call %struct.Memory* @routine_movq__0x5821b4___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480e18)
  store %struct.Memory* %call_480e18, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %esi	 RIP: 480e22	 Bytes: 3
  %loadMem_480e22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480e22 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480e22)
  store %struct.Memory* %call_480e22, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x18(%rbp), %xmm0	 RIP: 480e25	 Bytes: 5
  %loadMem_480e25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480e25 = call %struct.Memory* @routine_cvtss2sd_MINUS0x18__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480e25)
  store %struct.Memory* %call_480e25, %struct.Memory** %MEMORY

  ; Code: movb $0x1, %al	 RIP: 480e2a	 Bytes: 2
  %loadMem_480e2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480e2a = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480e2a)
  store %struct.Memory* %call_480e2a, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 480e2c	 Bytes: 5
  %loadMem1_480e2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_480e2c = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_480e2c, i64 -192636, i64 5, i64 5)
  store %struct.Memory* %call1_480e2c, %struct.Memory** %MEMORY

  %loadMem2_480e2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_480e2c = load i64, i64* %3
  %call2_480e2c = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_480e2c, %struct.Memory* %loadMem2_480e2c)
  store %struct.Memory* %call2_480e2c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc8(%rbp)	 RIP: 480e31	 Bytes: 6
  %loadMem_480e31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480e31 = call %struct.Memory* @routine_movl__eax__MINUS0xc8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480e31)
  store %struct.Memory* %call_480e31, %struct.Memory** %MEMORY

  ; Code: .L_480e37:	 RIP: 480e37	 Bytes: 0
  br label %block_.L_480e37
block_.L_480e37:

  ; Code: jmpq .L_480e3c	 RIP: 480e37	 Bytes: 5
  %loadMem_480e37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480e37 = call %struct.Memory* @routine_jmpq_.L_480e3c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480e37, i64 5, i64 5)
  store %struct.Memory* %call_480e37, %struct.Memory** %MEMORY

  br label %block_.L_480e3c

  ; Code: .L_480e3c:	 RIP: 480e3c	 Bytes: 0
block_.L_480e3c:

  ; Code: movq $0xb9d8f0, %rax	 RIP: 480e3c	 Bytes: 10
  %loadMem_480e3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480e3c = call %struct.Memory* @routine_movq__0xb9d8f0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480e3c)
  store %struct.Memory* %call_480e3c, %struct.Memory** %MEMORY

  ; Code: movss -0x18(%rbp), %xmm0	 RIP: 480e46	 Bytes: 5
  %loadMem_480e46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480e46 = call %struct.Memory* @routine_movss_MINUS0x18__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480e46)
  store %struct.Memory* %call_480e46, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 480e4b	 Bytes: 4
  %loadMem_480e4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480e4b = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480e4b)
  store %struct.Memory* %call_480e4b, %struct.Memory** %MEMORY

  ; Code: imulq $0x234, %rcx, %rcx	 RIP: 480e4f	 Bytes: 7
  %loadMem_480e4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480e4f = call %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480e4f)
  store %struct.Memory* %call_480e4f, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 480e56	 Bytes: 3
  %loadMem_480e56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480e56 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480e56)
  store %struct.Memory* %call_480e56, %struct.Memory** %MEMORY

  ; Code: ucomiss 0x38(%rax), %xmm0	 RIP: 480e59	 Bytes: 4
  %loadMem_480e59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480e59 = call %struct.Memory* @routine_ucomiss_0x38__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480e59)
  store %struct.Memory* %call_480e59, %struct.Memory** %MEMORY

  ; Code: jbe .L_480ebc	 RIP: 480e5d	 Bytes: 6
  %loadMem_480e5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480e5d = call %struct.Memory* @routine_jbe_.L_480ebc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480e5d, i8* %BRANCH_TAKEN, i64 95, i64 6, i64 6)
  store %struct.Memory* %call_480e5d, %struct.Memory** %MEMORY

  %loadBr_480e5d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_480e5d = icmp eq i8 %loadBr_480e5d, 1
  br i1 %cmpBr_480e5d, label %block_.L_480ebc, label %block_480e63

block_480e63:
  ; Code: movq $0xb9d8f0, %rax	 RIP: 480e63	 Bytes: 10
  %loadMem_480e63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480e63 = call %struct.Memory* @routine_movq__0xb9d8f0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480e63)
  store %struct.Memory* %call_480e63, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 480e6d	 Bytes: 4
  %loadMem_480e6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480e6d = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480e6d)
  store %struct.Memory* %call_480e6d, %struct.Memory** %MEMORY

  ; Code: imulq $0x234, %rcx, %rcx	 RIP: 480e71	 Bytes: 7
  %loadMem_480e71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480e71 = call %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480e71)
  store %struct.Memory* %call_480e71, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 480e78	 Bytes: 3
  %loadMem_480e78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480e78 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480e78)
  store %struct.Memory* %call_480e78, %struct.Memory** %MEMORY

  ; Code: movss 0x38(%rax), %xmm0	 RIP: 480e7b	 Bytes: 5
  %loadMem_480e7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480e7b = call %struct.Memory* @routine_movss_0x38__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480e7b)
  store %struct.Memory* %call_480e7b, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x18(%rbp)	 RIP: 480e80	 Bytes: 5
  %loadMem_480e80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480e80 = call %struct.Memory* @routine_movss__xmm0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480e80)
  store %struct.Memory* %call_480e80, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xab0f28	 RIP: 480e85	 Bytes: 8
  %loadMem_480e85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480e85 = call %struct.Memory* @routine_cmpl__0x0__0xab0f28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480e85)
  store %struct.Memory* %call_480e85, %struct.Memory** %MEMORY

  ; Code: jne .L_480e98	 RIP: 480e8d	 Bytes: 6
  %loadMem_480e8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480e8d = call %struct.Memory* @routine_jne_.L_480e98(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480e8d, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_480e8d, %struct.Memory** %MEMORY

  %loadBr_480e8d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_480e8d = icmp eq i8 %loadBr_480e8d, 1
  br i1 %cmpBr_480e8d, label %block_.L_480e98, label %block_480e93

block_480e93:
  ; Code: jmpq .L_480eb7	 RIP: 480e93	 Bytes: 5
  %loadMem_480e93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480e93 = call %struct.Memory* @routine_jmpq_.L_480eb7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480e93, i64 36, i64 5)
  store %struct.Memory* %call_480e93, %struct.Memory** %MEMORY

  br label %block_.L_480eb7

  ; Code: .L_480e98:	 RIP: 480e98	 Bytes: 0
block_.L_480e98:

  ; Code: movq $0x5821da, %rdi	 RIP: 480e98	 Bytes: 10
  %loadMem_480e98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480e98 = call %struct.Memory* @routine_movq__0x5821da___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480e98)
  store %struct.Memory* %call_480e98, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %esi	 RIP: 480ea2	 Bytes: 3
  %loadMem_480ea2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480ea2 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480ea2)
  store %struct.Memory* %call_480ea2, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x18(%rbp), %xmm0	 RIP: 480ea5	 Bytes: 5
  %loadMem_480ea5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480ea5 = call %struct.Memory* @routine_cvtss2sd_MINUS0x18__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480ea5)
  store %struct.Memory* %call_480ea5, %struct.Memory** %MEMORY

  ; Code: movb $0x1, %al	 RIP: 480eaa	 Bytes: 2
  %loadMem_480eaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480eaa = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480eaa)
  store %struct.Memory* %call_480eaa, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 480eac	 Bytes: 5
  %loadMem1_480eac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_480eac = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_480eac, i64 -192764, i64 5, i64 5)
  store %struct.Memory* %call1_480eac, %struct.Memory** %MEMORY

  %loadMem2_480eac = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_480eac = load i64, i64* %3
  %call2_480eac = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_480eac, %struct.Memory* %loadMem2_480eac)
  store %struct.Memory* %call2_480eac, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xcc(%rbp)	 RIP: 480eb1	 Bytes: 6
  %loadMem_480eb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480eb1 = call %struct.Memory* @routine_movl__eax__MINUS0xcc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480eb1)
  store %struct.Memory* %call_480eb1, %struct.Memory** %MEMORY

  ; Code: .L_480eb7:	 RIP: 480eb7	 Bytes: 0
  br label %block_.L_480eb7
block_.L_480eb7:

  ; Code: jmpq .L_480ebc	 RIP: 480eb7	 Bytes: 5
  %loadMem_480eb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480eb7 = call %struct.Memory* @routine_jmpq_.L_480ebc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480eb7, i64 5, i64 5)
  store %struct.Memory* %call_480eb7, %struct.Memory** %MEMORY

  br label %block_.L_480ebc

  ; Code: .L_480ebc:	 RIP: 480ebc	 Bytes: 0
block_.L_480ebc:

  ; Code: xorps %xmm0, %xmm0	 RIP: 480ebc	 Bytes: 3
  %loadMem_480ebc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480ebc = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480ebc)
  store %struct.Memory* %call_480ebc, %struct.Memory** %MEMORY

  ; Code: movss -0x18(%rbp), %xmm1	 RIP: 480ebf	 Bytes: 5
  %loadMem_480ebf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480ebf = call %struct.Memory* @routine_movss_MINUS0x18__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480ebf)
  store %struct.Memory* %call_480ebf, %struct.Memory** %MEMORY

  ; Code: ucomiss %xmm0, %xmm1	 RIP: 480ec4	 Bytes: 3
  %loadMem_480ec4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480ec4 = call %struct.Memory* @routine_ucomiss__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480ec4)
  store %struct.Memory* %call_480ec4, %struct.Memory** %MEMORY

  ; Code: ja .L_480f1f	 RIP: 480ec7	 Bytes: 6
  %loadMem_480ec7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480ec7 = call %struct.Memory* @routine_ja_.L_480f1f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480ec7, i8* %BRANCH_TAKEN, i64 88, i64 6, i64 6)
  store %struct.Memory* %call_480ec7, %struct.Memory** %MEMORY

  %loadBr_480ec7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_480ec7 = icmp eq i8 %loadBr_480ec7, 1
  br i1 %cmpBr_480ec7, label %block_.L_480f1f, label %block_480ecd

block_480ecd:
  ; Code: xorps %xmm0, %xmm0	 RIP: 480ecd	 Bytes: 3
  %loadMem_480ecd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480ecd = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480ecd)
  store %struct.Memory* %call_480ecd, %struct.Memory** %MEMORY

  ; Code: movq $0xb9d8f0, %rax	 RIP: 480ed0	 Bytes: 10
  %loadMem_480ed0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480ed0 = call %struct.Memory* @routine_movq__0xb9d8f0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480ed0)
  store %struct.Memory* %call_480ed0, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 480eda	 Bytes: 4
  %loadMem_480eda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480eda = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480eda)
  store %struct.Memory* %call_480eda, %struct.Memory** %MEMORY

  ; Code: imulq $0x234, %rcx, %rcx	 RIP: 480ede	 Bytes: 7
  %loadMem_480ede = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480ede = call %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480ede)
  store %struct.Memory* %call_480ede, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 480ee5	 Bytes: 3
  %loadMem_480ee5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480ee5 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480ee5)
  store %struct.Memory* %call_480ee5, %struct.Memory** %MEMORY

  ; Code: movss 0xc(%rax), %xmm1	 RIP: 480ee8	 Bytes: 5
  %loadMem_480ee8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480ee8 = call %struct.Memory* @routine_movss_0xc__rax____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480ee8)
  store %struct.Memory* %call_480ee8, %struct.Memory** %MEMORY

  ; Code: ucomiss %xmm0, %xmm1	 RIP: 480eed	 Bytes: 3
  %loadMem_480eed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480eed = call %struct.Memory* @routine_ucomiss__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480eed)
  store %struct.Memory* %call_480eed, %struct.Memory** %MEMORY

  ; Code: ja .L_480f1f	 RIP: 480ef0	 Bytes: 6
  %loadMem_480ef0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480ef0 = call %struct.Memory* @routine_ja_.L_480f1f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480ef0, i8* %BRANCH_TAKEN, i64 47, i64 6, i64 6)
  store %struct.Memory* %call_480ef0, %struct.Memory** %MEMORY

  %loadBr_480ef0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_480ef0 = icmp eq i8 %loadBr_480ef0, 1
  br i1 %cmpBr_480ef0, label %block_.L_480f1f, label %block_480ef6

block_480ef6:
  ; Code: xorps %xmm0, %xmm0	 RIP: 480ef6	 Bytes: 3
  %loadMem_480ef6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480ef6 = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480ef6)
  store %struct.Memory* %call_480ef6, %struct.Memory** %MEMORY

  ; Code: movq $0xb9d8f0, %rax	 RIP: 480ef9	 Bytes: 10
  %loadMem_480ef9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480ef9 = call %struct.Memory* @routine_movq__0xb9d8f0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480ef9)
  store %struct.Memory* %call_480ef9, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 480f03	 Bytes: 4
  %loadMem_480f03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480f03 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480f03)
  store %struct.Memory* %call_480f03, %struct.Memory** %MEMORY

  ; Code: imulq $0x234, %rcx, %rcx	 RIP: 480f07	 Bytes: 7
  %loadMem_480f07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480f07 = call %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480f07)
  store %struct.Memory* %call_480f07, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 480f0e	 Bytes: 3
  %loadMem_480f0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480f0e = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480f0e)
  store %struct.Memory* %call_480f0e, %struct.Memory** %MEMORY

  ; Code: movss 0x10(%rax), %xmm1	 RIP: 480f11	 Bytes: 5
  %loadMem_480f11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480f11 = call %struct.Memory* @routine_movss_0x10__rax____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480f11)
  store %struct.Memory* %call_480f11, %struct.Memory** %MEMORY

  ; Code: ucomiss %xmm0, %xmm1	 RIP: 480f16	 Bytes: 3
  %loadMem_480f16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480f16 = call %struct.Memory* @routine_ucomiss__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480f16)
  store %struct.Memory* %call_480f16, %struct.Memory** %MEMORY

  ; Code: jbe .L_480f5e	 RIP: 480f19	 Bytes: 6
  %loadMem_480f19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480f19 = call %struct.Memory* @routine_jbe_.L_480f5e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480f19, i8* %BRANCH_TAKEN, i64 69, i64 6, i64 6)
  store %struct.Memory* %call_480f19, %struct.Memory** %MEMORY

  %loadBr_480f19 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_480f19 = icmp eq i8 %loadBr_480f19, 1
  br i1 %cmpBr_480f19, label %block_.L_480f5e, label %block_.L_480f1f

  ; Code: .L_480f1f:	 RIP: 480f1f	 Bytes: 0
block_.L_480f1f:

  ; Code: cmpl $0x0, 0xab0f28	 RIP: 480f1f	 Bytes: 8
  %loadMem_480f1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480f1f = call %struct.Memory* @routine_cmpl__0x0__0xab0f28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480f1f)
  store %struct.Memory* %call_480f1f, %struct.Memory** %MEMORY

  ; Code: jne .L_480f32	 RIP: 480f27	 Bytes: 6
  %loadMem_480f27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480f27 = call %struct.Memory* @routine_jne_.L_480f32(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480f27, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_480f27, %struct.Memory** %MEMORY

  %loadBr_480f27 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_480f27 = icmp eq i8 %loadBr_480f27, 1
  br i1 %cmpBr_480f27, label %block_.L_480f32, label %block_480f2d

block_480f2d:
  ; Code: jmpq .L_480f51	 RIP: 480f2d	 Bytes: 5
  %loadMem_480f2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480f2d = call %struct.Memory* @routine_jmpq_.L_480f51(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480f2d, i64 36, i64 5)
  store %struct.Memory* %call_480f2d, %struct.Memory** %MEMORY

  br label %block_.L_480f51

  ; Code: .L_480f32:	 RIP: 480f32	 Bytes: 0
block_.L_480f32:

  ; Code: movq $0x582200, %rdi	 RIP: 480f32	 Bytes: 10
  %loadMem_480f32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480f32 = call %struct.Memory* @routine_movq__0x582200___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480f32)
  store %struct.Memory* %call_480f32, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %esi	 RIP: 480f3c	 Bytes: 3
  %loadMem_480f3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480f3c = call %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480f3c)
  store %struct.Memory* %call_480f3c, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x18(%rbp), %xmm0	 RIP: 480f3f	 Bytes: 5
  %loadMem_480f3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480f3f = call %struct.Memory* @routine_cvtss2sd_MINUS0x18__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480f3f)
  store %struct.Memory* %call_480f3f, %struct.Memory** %MEMORY

  ; Code: movb $0x1, %al	 RIP: 480f44	 Bytes: 2
  %loadMem_480f44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480f44 = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480f44)
  store %struct.Memory* %call_480f44, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 480f46	 Bytes: 5
  %loadMem1_480f46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_480f46 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_480f46, i64 -192918, i64 5, i64 5)
  store %struct.Memory* %call1_480f46, %struct.Memory** %MEMORY

  %loadMem2_480f46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_480f46 = load i64, i64* %3
  %call2_480f46 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_480f46, %struct.Memory* %loadMem2_480f46)
  store %struct.Memory* %call2_480f46, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xd0(%rbp)	 RIP: 480f4b	 Bytes: 6
  %loadMem_480f4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480f4b = call %struct.Memory* @routine_movl__eax__MINUS0xd0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480f4b)
  store %struct.Memory* %call_480f4b, %struct.Memory** %MEMORY

  ; Code: .L_480f51:	 RIP: 480f51	 Bytes: 0
  br label %block_.L_480f51
block_.L_480f51:

  ; Code: movl -0x8(%rbp), %edi	 RIP: 480f51	 Bytes: 3
  %loadMem_480f51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480f51 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480f51)
  store %struct.Memory* %call_480f51, %struct.Memory** %MEMORY

  ; Code: movss -0x18(%rbp), %xmm0	 RIP: 480f54	 Bytes: 5
  %loadMem_480f54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480f54 = call %struct.Memory* @routine_movss_MINUS0x18__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480f54)
  store %struct.Memory* %call_480f54, %struct.Memory** %MEMORY

  ; Code: callq .move_considered	 RIP: 480f59	 Bytes: 5
  %loadMem1_480f59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_480f59 = call %struct.Memory* @routine_callq_.move_considered(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_480f59, i64 -365801, i64 5, i64 5)
  store %struct.Memory* %call1_480f59, %struct.Memory** %MEMORY

  %loadMem2_480f59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_480f59 = load i64, i64* %3
  %call2_480f59 = call %struct.Memory* @sub_427a70.move_considered(%struct.State* %0, i64  %loadPC_480f59, %struct.Memory* %loadMem2_480f59)
  store %struct.Memory* %call2_480f59, %struct.Memory** %MEMORY

  ; Code: .L_480f5e:	 RIP: 480f5e	 Bytes: 0
  br label %block_.L_480f5e
block_.L_480f5e:

  ; Code: movss -0x18(%rbp), %xmm0	 RIP: 480f5e	 Bytes: 5
  %loadMem_480f5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480f5e = call %struct.Memory* @routine_movss_MINUS0x18__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480f5e)
  store %struct.Memory* %call_480f5e, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x4(%rbp)	 RIP: 480f63	 Bytes: 5
  %loadMem_480f63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480f63 = call %struct.Memory* @routine_movss__xmm0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480f63)
  store %struct.Memory* %call_480f63, %struct.Memory** %MEMORY

  ; Code: .L_480f68:	 RIP: 480f68	 Bytes: 0
  br label %block_.L_480f68
block_.L_480f68:

  ; Code: movss -0x4(%rbp), %xmm0	 RIP: 480f68	 Bytes: 5
  %loadMem_480f68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480f68 = call %struct.Memory* @routine_movss_MINUS0x4__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480f68)
  store %struct.Memory* %call_480f68, %struct.Memory** %MEMORY

  ; Code: addq $0xd0, %rsp	 RIP: 480f6d	 Bytes: 7
  %loadMem_480f6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480f6d = call %struct.Memory* @routine_addq__0xd0___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480f6d)
  store %struct.Memory* %call_480f6d, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 480f74	 Bytes: 1
  %loadMem_480f74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480f74 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480f74)
  store %struct.Memory* %call_480f74, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 480f75	 Bytes: 1
  %loadMem_480f75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_480f75 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_480f75)
  store %struct.Memory* %call_480f75, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_480f75
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

define %struct.Memory* @routine_subq__0xd0___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 208)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__edi__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 8
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__esi__MINUS0xc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i8* nocapture readonly) #7 {
  %5 = bitcast i8* %3 to <2 x float>*
  %6 = load <2 x float>, <2 x float>* %5, align 1
  %7 = extractelement <2 x float> %6, i32 0
  %8 = inttoptr i64 %2 to float*
  store float %7, float* %8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %12 = sub i64 %11, 16
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movss__xmm1__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %12 = sub i64 %11, 20
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_cmpl__0x0__0xb54ce4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xb54ce4_type* @G_0xb54ce4 to i64), i64 0)
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

define %struct.Memory* @routine_jne_.L_48002e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_480056(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x581e84___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x581e84_type* @G__0x581e84 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x957___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 2391)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x57a100___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x57a100_type* @G__0x57a100 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 4294967295)
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__eax___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_callq_.is_antisuji_move(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_480074(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4PXORI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = bitcast i8* %3 to i64*
  %7 = load i64, i64* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  %11 = bitcast i8* %4 to i64*
  %12 = load i64, i64* %11, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 8
  %14 = bitcast i8* %13 to i64*
  %15 = load i64, i64* %14, align 1
  %16 = xor i64 %12, %7
  %17 = xor i64 %15, %10
  %18 = trunc i64 %16 to i32
  %19 = lshr i64 %16, 32
  %20 = trunc i64 %19 to i32
  %21 = bitcast i8* %2 to i32*
  store i32 %18, i32* %21, align 1
  %22 = getelementptr inbounds i8, i8* %2, i64 4
  %23 = bitcast i8* %22 to i32*
  store i32 %20, i32* %23, align 1
  %24 = trunc i64 %17 to i32
  %25 = getelementptr inbounds i8, i8* %2, i64 8
  %26 = bitcast i8* %25 to i32*
  store i32 %24, i32* %26, align 1
  %27 = lshr i64 %17, 32
  %28 = trunc i64 %27 to i32
  %29 = getelementptr inbounds i8, i8* %2, i64 12
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4PXORI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movss__xmm0__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %12 = sub i64 %11, 4
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jmpq_.L_480f68(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_cmpl__0x0__0xab0f20(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xab0f20_type* @G_0xab0f20 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_je_.L_480090(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_cmpl__0x0__0xab0edc(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xab0edc_type* @G_0xab0edc to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_je_.L_4801a2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq__0xb9d8f0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0xb9d8f0_type* @G__0xb9d8f0 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
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

define %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 564)
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


define %struct.Memory* @routine_cmpl__0x0__0x48__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
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

define %struct.Memory* @routine_jge_.L_4800dc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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











define internal %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to float*
  %6 = load float, float* %5
  %7 = fpext float %6 to double
  %8 = bitcast i8* %2 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvtss2sd_0x3c__rax____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_(%struct.Memory*, %struct.State* dereferenceable(3376), i8* nocapture readonly, i8* nocapture readonly) #0 {
  %5 = bitcast i8* %2 to double*
  %6 = load double, double* %5, align 1
  %7 = bitcast i8* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = fcmp uno double %6, %8
  br i1 %9, label %10, label %22

; <label>:10:                                     ; preds = %4
  %11 = fadd double %6, %8
  %12 = bitcast double %11 to i64
  %13 = and i64 %12, 9221120237041090560
  %14 = icmp eq i64 %13, 9218868437227405312
  %15 = and i64 %12, 2251799813685247
  %16 = icmp ne i64 %15, 0
  %17 = and i1 %14, %16
  br i1 %17, label %18, label %28

; <label>:18:                                     ; preds = %10
  %19 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %1, i64 %20, %struct.Memory* %0) #21
  br label %39

; <label>:22:                                     ; preds = %4
  %23 = fcmp ogt double %6, %8
  br i1 %23, label %28, label %24

; <label>:24:                                     ; preds = %22
  %25 = fcmp olt double %6, %8
  br i1 %25, label %28, label %26

; <label>:26:                                     ; preds = %24
  %27 = fcmp oeq double %6, %8
  br i1 %27, label %28, label %35

; <label>:28:                                     ; preds = %26, %24, %22, %10
  %29 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 1, %26 ], [ 1, %10 ]
  %30 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 0, %26 ], [ 1, %10 ]
  %31 = phi i8 [ 0, %22 ], [ 1, %24 ], [ 0, %26 ], [ 1, %10 ]
  %32 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %29, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %30, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %31, i8* %34, align 1
  br label %35

; <label>:35:                                     ; preds = %28, %26
  %36 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %38, align 1
  br label %39

; <label>:39:                                     ; preds = %35, %18
  %40 = phi %struct.Memory* [ %21, %18 ], [ %0, %35 ]
  ret %struct.Memory* %40
}

define %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %union.vec128_t* %XMM1 to i8*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #2 {
  %6 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  %7 = load i8, i8* %6, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %9 = load i8, i8* %8, align 1
  %10 = or i8 %9, %7
  %11 = icmp ne i8 %10, 0
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %2, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %14 = select i1 %11, i64 %3, i64 %4
  store i64 %14, i64* %13, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jbe_.L_4801a2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 32
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = xor i64 %4, %3
  %7 = trunc i64 %6 to i32
  %8 = and i64 %6, 4294967295
  store i64 %8, i64* %2, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %7, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10) #22
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = icmp eq i32 %7, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i32 %7, 31
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_xorl__eax___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movq__0xb9d8f0___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0xb9d8f0_type* @G__0xb9d8f0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_imulq__0x234___rsi___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 564)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_addq__rsi___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %RSI
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl__0x0__0x48__rdx__rsi_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %RSI
  %14 = mul i64 %13, 4
  %15 = add i64 %12, 72
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 5
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 0)
  ret %struct.Memory* %19
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i8
  %6 = inttoptr i64 %2 to i8*
  store i8 %5, i8* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__cl__MINUS0x41__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 65
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 3
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
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

define %struct.Memory* @routine_jl_.L_48011b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_cmpl__0x78__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 32
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 120)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4SETLI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture readonly dereferenceable(3376), i8* nocapture) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_setl__al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4SETLI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i8* %AL)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movb__al__MINUS0x41__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 65
  %15 = load i8, i8* %AL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 3
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  store i8 %6, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb_MINUS0x41__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 65
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4TESTI2RnIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 {
  %5 = and i64 %3, %2
  %6 = trunc i64 %5 to i8
  %7 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = trunc i64 %5 to i32
  %9 = and i32 %8, 255
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9) #22
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %15 = icmp eq i8 %6, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i8 %6, 7
  %19 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_testb__0x1___al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = load i8, i8* %AL
  %11 = zext i8 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 2
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4TESTI2RnIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 1)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_jne_.L_48012b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jmpq_.L_480139(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
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


define %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 32
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4800e3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl__0x4___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 4)
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


define %struct.Memory* @routine_movq__0x480f80___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G__0x480f80_type* @G__0x480f80 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0xb9d8f0___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0xb9d8f0_type* @G__0xb9d8f0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_imulq__0x234___rdi___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RDI
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %9, i64 564)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_addq__rdi___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %RDI
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %13)
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

define %struct.Memory* @routine_addq__0x48___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 72)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rdi__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rsi___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12)
  ret %struct.Memory* %15
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq_MINUS0x50__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.gg_sort(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_callq_.discard_redundant_move_reasons(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_movl_MINUS0xc__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to float*
  %6 = load float, float* %5
  %7 = bitcast i8* %2 to float*
  store float %6, float* %7, align 1
  %8 = getelementptr inbounds i8, i8* %2, i64 4
  %9 = bitcast i8* %8 to float*
  store float 0.000000e+00, float* %9, align 1
  %10 = getelementptr inbounds i8, i8* %2, i64 8
  %11 = bitcast i8* %10 to float*
  store float 0.000000e+00, float* %11, align 1
  %12 = getelementptr inbounds i8, i8* %2, i64 12
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movss_MINUS0x14__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.estimate_territorial_value(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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








define %struct.Memory* @routine_callq_.estimate_strategical_value(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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








define %struct.Memory* @routine_movq__rax___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_addq__rcx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %RCX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movss_0xc__rdx____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}







define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSSI3VnWI8vec128_tE2VnIS2_E3MVnI7vec32_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i64) #0 {
  %6 = bitcast i8* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = inttoptr i64 %4 to float*
  %12 = load float, float* %11
  %13 = extractelement <2 x float> %7, i32 0
  %14 = fadd float %13, %12
  %15 = bitcast i8* %2 to float*
  store float %14, float* %15, align 1
  %16 = bitcast <2 x float> %7 to <2 x i32>
  %17 = extractelement <2 x i32> %16, i32 1
  %18 = getelementptr inbounds i8, i8* %2, i64 4
  %19 = bitcast i8* %18 to i32*
  store i32 %17, i32* %19, align 1
  %20 = extractelement <2 x i32> %10, i32 0
  %21 = getelementptr inbounds i8, i8* %2, i64 8
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %10, i32 1
  %24 = getelementptr inbounds i8, i8* %2, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_addss_0x10__rax____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 16
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSSI3VnWI8vec128_tE2VnIS2_E3MVnI7vec32_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movss__xmm0__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %12 = sub i64 %11, 24
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_callq_.compute_shape_factor(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x62e96__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x62e96__rip__type* @G_0x62e96__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movss__xmm0__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %12 = sub i64 %11, 28
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cvtss2sd_MINUS0x18__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jbe_.L_48021d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movsd_0x62e72__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x62e72__rip__type* @G_0x62e72__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cvtss2sd_MINUS0x18__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}
















define %struct.Memory* @routine_jbe_.L_4809eb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_movss_0x24__rdx____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_addss_0x28__rax____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 40
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSSI3VnWI8vec128_tE2VnIS2_E3MVnI7vec32_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movss__xmm0__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %12 = sub i64 %11, 40
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl__0x0__0xab0f28(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xab0f28_type* @G_0xab0f28 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jne_.L_48027a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jmpq_.L_4802b3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x582044___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x582044_type* @G__0x582044 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cvtss2sd_MINUS0x28__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_cvtss2sd_0x28__rax____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #2 {
  %5 = trunc i64 %3 to i8
  store i8 %5, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__0x2___al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 2)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_callq_.gprintf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 84
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movsd_0x62ccd__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x62ccd__rip__type* @G_0x62ccd__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}





define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JNBEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #2 {
  %6 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 0
  %9 = zext i1 %8 to i8
  store i8 %9, i8* %2, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %11 = select i1 %8, i64 %3, i64 %4
  store i64 %11, i64* %10, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jae_.L_4802f9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNBEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movsd_0x62c8e__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x62c8e__rip__type* @G_0x62c8e__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}










define %struct.Memory* @routine_cvtss2sd_0x2c__rax____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L2JBEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #2 {
  %6 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  %7 = load i8, i8* %6, align 1
  store i8 %7, i8* %2, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %9 = icmp ne i8 %7, 0
  %10 = select i1 %9, i64 %3, i64 %4
  store i64 %10, i64* %8, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jb_.L_480626(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JBEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movsd_0x62c5f__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x62c5f__rip__type* @G_0x62c5f__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movsd_0x62c7f__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x62c7f__rip__type* @G_0x62c7f__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movss_MINUS0x18__rbp____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movss__xmm2__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %XMM2 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 44
  %13 = bitcast %union.vec128_t* %XMM2 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cvtss2sd_MINUS0x28__rbp____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
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

define %struct.Memory* @routine_movaps__xmm1___xmm3(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %11 = bitcast %union.vec128_t* %XMM1 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6MOVxPSI3VnWI8vec128_tE2VnIS2_EEEP6MemoryS7_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
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

define %struct.Memory* @routine_mulsd__xmm2___xmm3(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = bitcast %union.vec128_t* %XMM2 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}








define %struct.Memory* @routine_cvtss2sd_0x2c__rax____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_mulsd__xmm2___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
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

define %struct.Memory* @routine_addsd__xmm1___xmm3(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = bitcast %union.vec128_t* %XMM1 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}




define %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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


define %struct.Memory* @routine_cvtss2sd_MINUS0x28__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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


define %struct.Memory* @routine_ucomisd__xmm3___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %union.vec128_t* %XMM0 to i8*
  %11 = bitcast %union.vec128_t* %XMM3 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_jbe_.L_4803a3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movsd_0x62c20__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x62c20__rip__type* @G_0x62c20__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_movaps__xmm0___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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


define %struct.Memory* @routine_mulsd__xmm1___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = bitcast %union.vec128_t* %XMM1 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}












define %struct.Memory* @routine_addsd__xmm0___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i8* nocapture readonly) #7 {
  %5 = bitcast i8* %3 to double*
  %6 = load double, double* %5, align 1
  %7 = inttoptr i64 %2 to double*
  store double %6, double* %7
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movsd__xmm2__MINUS0x60__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %XMM2 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 96
  %13 = bitcast %union.vec128_t* %XMM2 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jmpq_.L_4803c2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movsd_0x62bb5__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x62bb5__rip__type* @G_0x62bb5__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}










define %struct.Memory* @routine_movsd__xmm0__MINUS0x60__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %12 = sub i64 %11, 96
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd_MINUS0x60__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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




define %struct.Memory* @routine_movsd_0x62caf__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x62caf__rip__type* @G_0x62caf__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cvtss2sd_MINUS0x18__rbp____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_addsd__xmm2___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}




define %struct.Memory* @routine_jbe_.L_4804d1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movsd_0x62b55__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x62b55__rip__type* @G_0x62b55__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movsd_0x62b75__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x62b75__rip__type* @G_0x62b75__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}
































define %struct.Memory* @routine_jbe_.L_4804a3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movsd_0x62b20__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x62b20__rip__type* @G_0x62b20__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}






















define %struct.Memory* @routine_movsd__xmm2__MINUS0x68__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %XMM2 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 104
  %13 = bitcast %union.vec128_t* %XMM2 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jmpq_.L_4804c2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movsd_0x62ab5__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x62ab5__rip__type* @G_0x62ab5__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}










define %struct.Memory* @routine_movsd__xmm0__MINUS0x68__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %12 = sub i64 %11, 104
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd_MINUS0x68__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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


define %struct.Memory* @routine_movsd__xmm0__MINUS0x70__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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


define %struct.Memory* @routine_jmpq_.L_480508(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movsd_0x62ba5__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x62ba5__rip__type* @G_0x62ba5__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


















define %struct.Memory* @routine_movsd_MINUS0x70__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_xorps__xmm1___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %union.vec128_t* %XMM1 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4PXORI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSD2SSI2VnI8vec128_tEEEP6MemoryS5_R5State3VnWIS2_ET_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly) #0 {
  %5 = bitcast i8* %2 to <2 x i32>*
  %6 = load <2 x i32>, <2 x i32>* %5, align 1
  %7 = getelementptr inbounds i8, i8* %2, i64 8
  %8 = bitcast i8* %7 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = bitcast i8* %3 to double*
  %11 = load double, double* %10, align 1
  %12 = fptrunc double %11 to float
  %13 = bitcast i8* %2 to float*
  store float %12, float* %13, align 1
  %14 = extractelement <2 x i32> %6, i32 1
  %15 = getelementptr inbounds i8, i8* %2, i64 4
  %16 = bitcast i8* %15 to i32*
  store i32 %14, i32* %16, align 1
  %17 = extractelement <2 x i32> %9, i32 0
  %18 = bitcast i8* %7 to i32*
  store i32 %17, i32* %18, align 1
  %19 = extractelement <2 x i32> %9, i32 1
  %20 = getelementptr inbounds i8, i8* %2, i64 12
  %21 = bitcast i8* %20 to i32*
  store i32 %19, i32* %21, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSD2SSI2VnI8vec128_tEEEP6MemoryS5_R5State3VnWIS2_ET_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movss__xmm0__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %12 = sub i64 %11, 48
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movss_MINUS0x30__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addss_MINUS0x18__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 24
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSSI3VnWI8vec128_tE2VnIS2_E3MVnI7vec32_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_cvtss2sd_MINUS0x30__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_ucomisd__xmm1___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %union.vec128_t* %XMM0 to i8*
  %11 = bitcast %union.vec128_t* %XMM1 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_jne_.L_480542(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L2JPEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #2 {
  %6 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  %7 = load i8, i8* %6, align 1
  store i8 %7, i8* %2, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %9 = icmp ne i8 %7, 0
  %10 = select i1 %9, i64 %3, i64 %4
  store i64 %10, i64* %8, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jp_.L_480542(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JPEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jmpq_.L_480598(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jne_.L_480555(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jmpq_.L_480593(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x58208a___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x58208a_type* @G__0x58208a to i64))
  ret %struct.Memory* %11
}


















define %struct.Memory* @routine_movb__0x3___al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 3)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movl__eax__MINUS0x74__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 116
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_movss_MINUS0x28__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_addss_0x2c__rdx____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 44
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSSI3VnWI8vec128_tE2VnIS2_E3MVnI7vec32_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSSI3VnWI8vec128_tE2VnIS2_E3MVnI7vec32_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i64) #0 {
  %6 = bitcast i8* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = inttoptr i64 %4 to float*
  %12 = load float, float* %11
  %13 = extractelement <2 x float> %7, i32 0
  %14 = fsub float %13, %12
  %15 = bitcast i8* %2 to float*
  store float %14, float* %15, align 1
  %16 = bitcast <2 x float> %7 to <2 x i32>
  %17 = extractelement <2 x i32> %16, i32 1
  %18 = getelementptr inbounds i8, i8* %2, i64 4
  %19 = bitcast i8* %18 to i32*
  store i32 %17, i32* %19, align 1
  %20 = extractelement <2 x i32> %10, i32 0
  %21 = getelementptr inbounds i8, i8* %2, i64 8
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %10, i32 1
  %24 = getelementptr inbounds i8, i8* %2, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_subss_MINUS0x2c__rbp____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 44
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSSI3VnWI8vec128_tE2VnIS2_E3MVnI7vec32_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSSI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = bitcast i8* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = bitcast i8* %4 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %7, i32 0
  %14 = extractelement <2 x float> %12, i32 0
  %15 = fsub float %13, %14
  %16 = bitcast i8* %2 to float*
  store float %15, float* %16, align 1
  %17 = bitcast <2 x float> %7 to <2 x i32>
  %18 = extractelement <2 x i32> %17, i32 1
  %19 = getelementptr inbounds i8, i8* %2, i64 4
  %20 = bitcast i8* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %10, i32 0
  %22 = getelementptr inbounds i8, i8* %2, i64 8
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  %24 = extractelement <2 x i32> %10, i32 1
  %25 = getelementptr inbounds i8, i8* %2, i64 12
  %26 = bitcast i8* %25 to i32*
  store i32 %24, i32* %26, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_subss__xmm2___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSSI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}










define %struct.Memory* @routine_movss__xmm1__0x8__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RDX
  %12 = add i64 %11, 8
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_cvtss2sd_0x8__rax____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jbe_.L_480621(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_movss__xmm0__0x8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RAX
  %12 = add i64 %11, 8
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jmpq_.L_480678(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movss_MINUS0x1c__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movss_0x24__rdx____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}











define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSSI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = bitcast i8* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = bitcast i8* %4 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %7, i32 0
  %14 = extractelement <2 x float> %12, i32 0
  %15 = fmul float %13, %14
  %16 = bitcast i8* %2 to float*
  store float %15, float* %16, align 1
  %17 = bitcast <2 x float> %7 to <2 x i32>
  %18 = extractelement <2 x i32> %17, i32 1
  %19 = getelementptr inbounds i8, i8* %2, i64 4
  %20 = bitcast i8* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %10, i32 0
  %22 = getelementptr inbounds i8, i8* %2, i64 8
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  %24 = extractelement <2 x i32> %10, i32 1
  %25 = getelementptr inbounds i8, i8* %2, i64 12
  %26 = bitcast i8* %25 to i32*
  store i32 %24, i32* %26, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_mulss__xmm1___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSSI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}














define %struct.Memory* @routine_movsd_0x62a03__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x62a03__rip__type* @G_0x62a03__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}










define %struct.Memory* @routine_cvtss2sd_0x30__rdx____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_addsd__xmm1___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = bitcast %union.vec128_t* %XMM1 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_cvtsd2ss__xmm2___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %11 = bitcast %union.vec128_t* %XMM2 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSD2SSI2VnI8vec128_tEEEP6MemoryS5_R5State3VnWIS2_ET_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movss__xmm1__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %12 = sub i64 %11, 24
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_cvtss2sd_0x30__rax____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jne_.L_4806e1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jp_.L_4806e1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JPEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jmpq_.L_480739(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jne_.L_4806f4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jmpq_.L_480734(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x5820d3___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x5820d3_type* @G__0x5820d3 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movsd_0x6298a__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x6298a__rip__type* @G_0x6298a__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}
















define %struct.Memory* @routine_movb__0x1___al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 1)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movl__eax__MINUS0x78__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 120
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}














define %struct.Memory* @routine_movl_0x1c__rdx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_addl_0x20__rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 32
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_cmpl__0x0___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ESI = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %ESI
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 3
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_jle_.L_480848(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movss_MINUS0x18__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movss__xmm0__MINUS0x34__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %12 = sub i64 %11, 52
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSSI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i64) #0 {
  %6 = bitcast i8* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = inttoptr i64 %4 to float*
  %12 = load float, float* %11
  %13 = extractelement <2 x float> %7, i32 0
  %14 = fmul float %13, %12
  %15 = bitcast i8* %2 to float*
  store float %14, float* %15, align 1
  %16 = bitcast <2 x float> %7 to <2 x i32>
  %17 = extractelement <2 x i32> %16, i32 1
  %18 = getelementptr inbounds i8, i8* %2, i64 4
  %19 = bitcast i8* %18 to i32*
  store i32 %17, i32* %19, align 1
  %20 = extractelement <2 x i32> %10, i32 0
  %21 = getelementptr inbounds i8, i8* %2, i64 8
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %10, i32 1
  %24 = getelementptr inbounds i8, i8* %2, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_mulss_MINUS0x18__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 24
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSSI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_je_.L_480843(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq__0x5820ea___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x5820ea_type* @G__0x5820ea to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_subss_MINUS0x34__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 52
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSSI3VnWI8vec128_tE2VnIS2_E3MVnI7vec32_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI2VnI8vec128_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly) #0 {
  %5 = bitcast i8* %3 to <2 x float>*
  %6 = load <2 x float>, <2 x float>* %5, align 1
  %7 = extractelement <2 x float> %6, i32 0
  %8 = fpext float %7 to double
  %9 = bitcast i8* %2 to double*
  store double %8, double* %9, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvtss2sd__xmm0___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI2VnI8vec128_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
}






define %struct.Memory* @routine_movq__0x5820fd___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x5820fd_type* @G__0x5820fd to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0xb9d8f0___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0xb9d8f0_type* @G__0xb9d8f0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_0x99c0a0___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x99c0a0_type* @G_0x99c0a0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_imulq__0x234___rdx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 564)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__rdi___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_addq__rdx___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R8
  %13 = load i64, i64* %RDX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cvtss2sd_0x14__r8____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %R8
  %13 = add i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movl_0x1c__r8____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R8
  %13 = add i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x8__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_imulq__0x234___r8___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R8
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %9, i64 564)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__rdi___r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_addq__r8___r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R9
  %13 = load i64, i64* %R8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cvtss2sd_0x18__r9____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9 = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %R9
  %13 = add i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_addq__r8___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %R8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x20__rdi____r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R10D to i64*
  %13 = load i64, i64* %RDI
  %14 = add i64 %13, 32
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_cvtss2sd_MINUS0x1c__rbp____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl__r10d___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R10D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x7c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 124
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_callq_.fprintf_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__eax__MINUS0x80__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 128
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_480848(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_callq_.move_connects_strings(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x3___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 3)
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

define %struct.Memory* @routine_subl_MINUS0xc__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__eax__MINUS0x84__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 132
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_MINUS0x84__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 132
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_addl__eax___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RSI
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__esi__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 36
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_cmpl__0x0__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 36
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jle_.L_4809e6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movsd_0x62812__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x62812__rip__type* @G_0x62812__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SSI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory*, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = bitcast i8* %2 to <2 x i32>*
  %6 = load <2 x i32>, <2 x i32>* %5, align 1
  %7 = getelementptr inbounds i8, i8* %2, i64 8
  %8 = bitcast i8* %7 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = inttoptr i64 %3 to i32*
  %11 = load i32, i32* %10
  %12 = sitofp i32 %11 to float
  %13 = bitcast i8* %2 to float*
  store float %12, float* %13, align 1
  %14 = extractelement <2 x i32> %6, i32 1
  %15 = getelementptr inbounds i8, i8* %2, i64 4
  %16 = bitcast i8* %15 to i32*
  store i32 %14, i32* %16, align 1
  %17 = extractelement <2 x i32> %9, i32 0
  %18 = bitcast i8* %7 to i32*
  store i32 %17, i32* %18, align 1
  %19 = extractelement <2 x i32> %9, i32 1
  %20 = getelementptr inbounds i8, i8* %2, i64 12
  %21 = bitcast i8* %20 to i32*
  store i32 %19, i32* %21, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvtsi2ssl_MINUS0x24__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SSI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cvtss2sd__xmm1___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %union.vec128_t* %XMM1 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI2VnI8vec128_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_callq_.pow_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movsd_0x6276c__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x6276c__rip__type* @G_0x6276c__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movsd_0x626bc__rip____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x626bc__rip__type* @G_0x626bc__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_subsd__xmm2___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %union.vec128_t* %XMM2 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}




define %struct.Memory* @routine_movss__xmm0__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %12 = sub i64 %11, 56
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jbe_.L_4808d2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movsd__xmm0__MINUS0x90__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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


define %struct.Memory* @routine_jmpq_.L_4808e7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movsd_0x6272e__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x6272e__rip__type* @G_0x6272e__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_movsd_MINUS0x90__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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


define %struct.Memory* @routine_movsd_0x62669__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x62669__rip__type* @G_0x62669__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_jbe_.L_480916(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movsd_0x62657__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x62657__rip__type* @G_0x62657__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movsd__xmm0__MINUS0x98__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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


define %struct.Memory* @routine_jmpq_.L_480964(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movsd_0x626ea__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x626ea__rip__type* @G_0x626ea__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_jbe_.L_48093f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movsd__xmm0__MINUS0xa0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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


define %struct.Memory* @routine_jmpq_.L_480954(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movsd_0x626c1__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x626c1__rip__type* @G_0x626c1__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_movsd_MINUS0xa0__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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




define %struct.Memory* @routine_movsd_MINUS0x98__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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




define %struct.Memory* @routine_movss__xmm0__MINUS0x3c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %12 = sub i64 %11, 60
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_je_.L_4809d2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq__0x582137___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x582137_type* @G__0x582137 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movss_MINUS0x3c__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_mulss_MINUS0x38__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 56
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSSI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_movq__0x582155___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x582155_type* @G__0x582155 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_0x99c0a0___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G_0x99c0a0_type* @G_0x99c0a0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_MINUS0x24__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cvtss2sd_MINUS0x38__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0xa4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 164
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl__eax__MINUS0xa8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 168
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}










define %struct.Memory* @routine_jmpq_.L_480ade(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
























define %struct.Memory* @routine_movss_0x24__rdx____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movss_0x2c__rax____xmm3(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_(%struct.Memory*, %struct.State* dereferenceable(3376), i8* nocapture readonly, i8* nocapture readonly) #0 {
  %5 = bitcast i8* %2 to <2 x float>*
  %6 = load <2 x float>, <2 x float>* %5, align 1
  %7 = extractelement <2 x float> %6, i32 0
  %8 = bitcast i8* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = fcmp uno float %7, %10
  br i1 %11, label %12, label %24

; <label>:12:                                     ; preds = %4
  %13 = fadd float %7, %10
  %14 = bitcast float %13 to i32
  %15 = and i32 %14, 2143289344
  %16 = icmp eq i32 %15, 2139095040
  %17 = and i32 %14, 4194303
  %18 = icmp ne i32 %17, 0
  %19 = and i1 %16, %18
  br i1 %19, label %20, label %30

; <label>:20:                                     ; preds = %12
  %21 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %1, i64 %22, %struct.Memory* %0) #21
  br label %41

; <label>:24:                                     ; preds = %4
  %25 = fcmp ogt float %7, %10
  br i1 %25, label %30, label %26

; <label>:26:                                     ; preds = %24
  %27 = fcmp olt float %7, %10
  br i1 %27, label %30, label %28

; <label>:28:                                     ; preds = %26
  %29 = fcmp oeq float %7, %10
  br i1 %29, label %30, label %37

; <label>:30:                                     ; preds = %28, %26, %24, %12
  %31 = phi i8 [ 0, %24 ], [ 0, %26 ], [ 1, %28 ], [ 1, %12 ]
  %32 = phi i8 [ 0, %24 ], [ 0, %26 ], [ 0, %28 ], [ 1, %12 ]
  %33 = phi i8 [ 0, %24 ], [ 1, %26 ], [ 0, %28 ], [ 1, %12 ]
  %34 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %31, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %32, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %33, i8* %36, align 1
  br label %37

; <label>:37:                                     ; preds = %30, %28
  %38 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 0, i8* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %40, align 1
  br label %41

; <label>:41:                                     ; preds = %37, %20
  %42 = phi %struct.Memory* [ %23, %20 ], [ %0, %37 ]
  ret %struct.Memory* %42
}

define %struct.Memory* @routine_ucomiss__xmm2___xmm3(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %union.vec128_t* %XMM3 to i8*
  %11 = bitcast %union.vec128_t* %XMM2 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movss__xmm1__MINUS0xac__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %12 = sub i64 %11, 172
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movss__xmm0__MINUS0xb0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jbe_.L_480a7c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_movss_0x24__rax____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movss__xmm0__MINUS0xb4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %12 = sub i64 %11, 180
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jmpq_.L_480aa1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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










define %struct.Memory* @routine_movss_0x2c__rax____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movss_MINUS0xb4__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 180
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movss_MINUS0xac__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 172
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSSI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = bitcast i8* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = bitcast i8* %4 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %7, i32 0
  %14 = extractelement <2 x float> %12, i32 0
  %15 = fadd float %13, %14
  %16 = bitcast i8* %2 to float*
  store float %15, float* %16, align 1
  %17 = bitcast <2 x float> %7 to <2 x i32>
  %18 = extractelement <2 x i32> %17, i32 1
  %19 = getelementptr inbounds i8, i8* %2, i64 4
  %20 = bitcast i8* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %10, i32 0
  %22 = getelementptr inbounds i8, i8* %2, i64 8
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  %24 = extractelement <2 x i32> %10, i32 1
  %25 = getelementptr inbounds i8, i8* %2, i64 12
  %26 = bitcast i8* %25 to i32*
  store i32 %24, i32* %26, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_addss__xmm0___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSSI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movss_MINUS0xb0__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}














define %struct.Memory* @routine_cvtss2sd_MINUS0x10__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jbe_.L_480cc7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_cmpl__0x0__0x22c__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 556
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_480cc7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_movss_MINUS0x10__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_ucomiss__xmm0___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %union.vec128_t* %XMM1 to i8*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_jb_.L_480cc7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JBEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 8
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


define %struct.Memory* @routine_jne_.L_480cc7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






















define %struct.Memory* @routine_callq_.is_legal(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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










define %struct.Memory* @routine_callq_.value_moves_confirm_safety(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






define %struct.Memory* @routine_movsd_0x62411__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x62411__rip__type* @G_0x62411__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}














define %struct.Memory* @routine_cvtss2sd_0x8__rax____xmm3(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_mulsd__xmm3___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %union.vec128_t* %XMM3 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}




define %struct.Memory* @routine_ucomisd__xmm1___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %union.vec128_t* %XMM2 to i8*
  %11 = bitcast %union.vec128_t* %XMM1 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_jbe_.L_480be2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_cvtss2sd_MINUS0x10__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd__xmm0__MINUS0xc0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %12 = sub i64 %11, 192
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jmpq_.L_480c1c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movsd_0x623be__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x623be__rip__type* @G_0x623be__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}












define %struct.Memory* @routine_cvtss2sd_0x8__rax____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_mulsd__xmm2___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %union.vec128_t* %XMM2 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_addsd__xmm0___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movsd__xmm1__MINUS0xc0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %12 = sub i64 %11, 192
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd_MINUS0xc0__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 192
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd_0x62334__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x62334__rip__type* @G_0x62334__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movsd_0x62404__rip____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x62404__rip__type* @G_0x62404__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movss__xmm0__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %12 = sub i64 %11, 64
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movss_MINUS0x10__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_subss_MINUS0x18__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 24
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSSI3VnWI8vec128_tE2VnIS2_E3MVnI7vec32_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_mulsd__xmm0___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = bitcast i8* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  %11 = bitcast i8* %4 to double*
  %12 = load double, double* %11, align 1
  %13 = fdiv double %7, %12
  %14 = bitcast i8* %2 to double*
  store double %13, double* %14, align 1
  %15 = getelementptr inbounds i8, i8* %2, i64 8
  %16 = bitcast i8* %15 to i64*
  store i64 %10, i64* %16, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_divsd__xmm0___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_subsd__xmm2___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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


define %struct.Memory* @routine_cvtss2sd_MINUS0x40__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movss_MINUS0x40__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory*, %struct.State* dereferenceable(3376), i8* nocapture readonly, i64) #0 {
  %5 = bitcast i8* %2 to <2 x float>*
  %6 = load <2 x float>, <2 x float>* %5, align 1
  %7 = extractelement <2 x float> %6, i32 0
  %8 = inttoptr i64 %3 to float*
  %9 = load float, float* %8
  %10 = fcmp uno float %7, %9
  br i1 %10, label %11, label %23

; <label>:11:                                     ; preds = %4
  %12 = fadd float %7, %9
  %13 = bitcast float %12 to i32
  %14 = and i32 %13, 2143289344
  %15 = icmp eq i32 %14, 2139095040
  %16 = and i32 %13, 4194303
  %17 = icmp ne i32 %16, 0
  %18 = and i1 %15, %17
  br i1 %18, label %19, label %29

; <label>:19:                                     ; preds = %11
  %20 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %1, i64 %21, %struct.Memory* %0) #21
  br label %40

; <label>:23:                                     ; preds = %4
  %24 = fcmp ogt float %7, %9
  br i1 %24, label %29, label %25

; <label>:25:                                     ; preds = %23
  %26 = fcmp olt float %7, %9
  br i1 %26, label %29, label %27

; <label>:27:                                     ; preds = %25
  %28 = fcmp oeq float %7, %9
  br i1 %28, label %29, label %36

; <label>:29:                                     ; preds = %27, %25, %23, %11
  %30 = phi i8 [ 0, %23 ], [ 0, %25 ], [ 1, %27 ], [ 1, %11 ]
  %31 = phi i8 [ 0, %23 ], [ 0, %25 ], [ 0, %27 ], [ 1, %11 ]
  %32 = phi i8 [ 0, %23 ], [ 1, %25 ], [ 0, %27 ], [ 1, %11 ]
  %33 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %30, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %31, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %32, i8* %35, align 1
  br label %36

; <label>:36:                                     ; preds = %29, %27
  %37 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %39, align 1
  br label %40

; <label>:40:                                     ; preds = %36, %19
  %41 = phi %struct.Memory* [ %22, %19 ], [ %0, %36 ]
  ret %struct.Memory* %41
}

define %struct.Memory* @routine_ucomiss_MINUS0x18__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jbe_.L_480cc2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_jne_.L_480c90(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jmpq_.L_480cb8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x58217d___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x58217d_type* @G__0x58217d to i64))
  ret %struct.Memory* %11
}














define %struct.Memory* @routine_movl__eax__MINUS0xc4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 196
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_jmpq_.L_480cc7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_movss_0x34__rdx____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_ucomiss_0x38__rax____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jbe_.L_480d32(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}




















define %struct.Memory* @routine_movss__xmm0__0x38__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RAX
  %12 = add i64 %11, 56
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movss_0x62436__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x62436__rip__type* @G_0x62436__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}










define %struct.Memory* @routine_ucomiss_0x34__rax____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jbe_.L_480d8f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movss_0x62406__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x62406__rip__type* @G_0x62406__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movss_MINUS0x18__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSSI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = bitcast i8* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = bitcast i8* %4 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %7, i32 0
  %14 = extractelement <2 x float> %12, i32 0
  %15 = fdiv float %13, %14
  %16 = bitcast i8* %2 to float*
  store float %15, float* %16, align 1
  %17 = bitcast <2 x float> %7 to <2 x i32>
  %18 = extractelement <2 x i32> %17, i32 1
  %19 = getelementptr inbounds i8, i8* %2, i64 4
  %20 = bitcast i8* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %10, i32 0
  %22 = getelementptr inbounds i8, i8* %2, i64 8
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  %24 = extractelement <2 x i32> %10, i32 1
  %25 = getelementptr inbounds i8, i8* %2, i64 12
  %26 = bitcast i8* %25 to i32*
  store i32 %24, i32* %26, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_divss__xmm0___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSSI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}








define %struct.Memory* @routine_addss_0x34__rax____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 52
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSSI3VnWI8vec128_tE2VnIS2_E3MVnI7vec32_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movss__xmm1__0x34__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RAX
  %12 = add i64 %11, 52
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_movss_0x34__rax____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jbe_.L_480e3c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


























define %struct.Memory* @routine_movss_0x34__rax____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jne_.L_480e18(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jmpq_.L_480e37(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x5821b4___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x5821b4_type* @G__0x5821b4 to i64))
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_movl__eax__MINUS0xc8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 200
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_480e3c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_jbe_.L_480ebc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_movss_0x38__rax____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jne_.L_480e98(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jmpq_.L_480eb7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x5821da___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x5821da_type* @G__0x5821da to i64))
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_movl__eax__MINUS0xcc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 204
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_480ebc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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







define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4JNBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #2 {
  %6 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  %7 = load i8, i8* %6, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %9 = load i8, i8* %8, align 1
  %10 = or i8 %9, %7
  %11 = icmp eq i8 %10, 0
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %2, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %14 = select i1 %11, i64 %3, i64 %4
  store i64 %14, i64* %13, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_ja_.L_480f1f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4JNBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_movss_0xc__rax____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}
















define %struct.Memory* @routine_movss_0x10__rax____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jbe_.L_480f5e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_jne_.L_480f32(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jmpq_.L_480f51(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x582200___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x582200_type* @G__0x582200 to i64))
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_movl__eax__MINUS0xd0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 208
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_callq_.move_considered(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






define %struct.Memory* @routine_movss_MINUS0x4__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addq__0xd0___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 208)
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

