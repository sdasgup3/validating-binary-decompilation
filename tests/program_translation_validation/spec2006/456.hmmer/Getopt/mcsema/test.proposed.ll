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

declare %struct.Memory* @sub_401480.strchr_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_43ea10.Die(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_451270.IsInt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4514a0.IsReal(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x661200_type = type <{ [4 x i8] }>
@G_0x661200= global %G_0x661200_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x663070_type = type <{ [8 x i8] }>
@G_0x663070= global %G_0x663070_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x456a2a_type = type <{ [8 x i8] }>
@G__0x456a2a= global %G__0x456a2a_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x456a60_type = type <{ [8 x i8] }>
@G__0x456a60= global %G__0x456a60_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x456a78_type = type <{ [8 x i8] }>
@G__0x456a78= global %G__0x456a78_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x456a9a_type = type <{ [8 x i8] }>
@G__0x456a9a= global %G__0x456a9a_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x456ac1_type = type <{ [8 x i8] }>
@G__0x456ac1= global %G__0x456ac1_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x456ad9_type = type <{ [8 x i8] }>
@G__0x456ad9= global %G__0x456ad9_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x456b03_type = type <{ [8 x i8] }>
@G__0x456b03= global %G__0x456b03_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x456b2e_type = type <{ [8 x i8] }>
@G__0x456b2e= global %G__0x456b2e_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x456fc3_type = type <{ [8 x i8] }>
@G__0x456fc3= global %G__0x456fc3_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x456fc4_type = type <{ [4 x i8] }>
@G__0x456fc4= global %G__0x456fc4_type <{ [4 x i8] c"\00\00\00\00" }>


define %struct.Memory* @Getopt(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .Getopt:	 RIP: 416760	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 416760	 Bytes: 1
  %loadMem_416760 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416760 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416760)
  store %struct.Memory* %call_416760, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 416761	 Bytes: 3
  %loadMem_416761 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416761 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416761)
  store %struct.Memory* %call_416761, %struct.Memory** %MEMORY

  ; Code: subq $0x60, %rsp	 RIP: 416764	 Bytes: 4
  %loadMem_416764 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416764 = call %struct.Memory* @routine_subq__0x60___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416764)
  store %struct.Memory* %call_416764, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rbp), %rax	 RIP: 416768	 Bytes: 4
  %loadMem_416768 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416768 = call %struct.Memory* @routine_movq_0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416768)
  store %struct.Memory* %call_416768, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rbp), %r10	 RIP: 41676c	 Bytes: 4
  %loadMem_41676c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41676c = call %struct.Memory* @routine_movq_0x10__rbp____r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41676c)
  store %struct.Memory* %call_41676c, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x8(%rbp)	 RIP: 416770	 Bytes: 3
  %loadMem_416770 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416770 = call %struct.Memory* @routine_movl__edi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416770)
  store %struct.Memory* %call_416770, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x10(%rbp)	 RIP: 416773	 Bytes: 4
  %loadMem_416773 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416773 = call %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416773)
  store %struct.Memory* %call_416773, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x18(%rbp)	 RIP: 416777	 Bytes: 4
  %loadMem_416777 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416777 = call %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416777)
  store %struct.Memory* %call_416777, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x1c(%rbp)	 RIP: 41677b	 Bytes: 3
  %loadMem_41677b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41677b = call %struct.Memory* @routine_movl__ecx__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41677b)
  store %struct.Memory* %call_41677b, %struct.Memory** %MEMORY

  ; Code: movq %r8, -0x28(%rbp)	 RIP: 41677e	 Bytes: 4
  %loadMem_41677e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41677e = call %struct.Memory* @routine_movq__r8__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41677e)
  store %struct.Memory* %call_41677e, %struct.Memory** %MEMORY

  ; Code: movq %r9, -0x30(%rbp)	 RIP: 416782	 Bytes: 4
  %loadMem_416782 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416782 = call %struct.Memory* @routine_movq__r9__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416782)
  store %struct.Memory* %call_416782, %struct.Memory** %MEMORY

  ; Code: movq %r10, -0x38(%rbp)	 RIP: 416786	 Bytes: 4
  %loadMem_416786 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416786 = call %struct.Memory* @routine_movq__r10__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416786)
  store %struct.Memory* %call_416786, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x40(%rbp)	 RIP: 41678a	 Bytes: 4
  %loadMem_41678a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41678a = call %struct.Memory* @routine_movq__rax__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41678a)
  store %struct.Memory* %call_41678a, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x50(%rbp)	 RIP: 41678e	 Bytes: 7
  %loadMem_41678e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41678e = call %struct.Memory* @routine_movl__0x0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41678e)
  store %struct.Memory* %call_41678e, %struct.Memory** %MEMORY

  ; Code: movl 0x661200, %ecx	 RIP: 416795	 Bytes: 7
  %loadMem_416795 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416795 = call %struct.Memory* @routine_movl_0x661200___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416795)
  store %struct.Memory* %call_416795, %struct.Memory** %MEMORY

  ; Code: cmpl -0x8(%rbp), %ecx	 RIP: 41679c	 Bytes: 3
  %loadMem_41679c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41679c = call %struct.Memory* @routine_cmpl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41679c)
  store %struct.Memory* %call_41679c, %struct.Memory** %MEMORY

  ; Code: jge .L_4167e6	 RIP: 41679f	 Bytes: 6
  %loadMem_41679f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41679f = call %struct.Memory* @routine_jge_.L_4167e6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41679f, i8* %BRANCH_TAKEN, i64 71, i64 6, i64 6)
  store %struct.Memory* %call_41679f, %struct.Memory** %MEMORY

  %loadBr_41679f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41679f = icmp eq i8 %loadBr_41679f, 1
  br i1 %cmpBr_41679f, label %block_.L_4167e6, label %block_4167a5

block_4167a5:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 4167a5	 Bytes: 4
  %loadMem_4167a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4167a5 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4167a5)
  store %struct.Memory* %call_4167a5, %struct.Memory** %MEMORY

  ; Code: movslq 0x661200, %rcx	 RIP: 4167a9	 Bytes: 8
  %loadMem_4167a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4167a9 = call %struct.Memory* @routine_movslq_0x661200___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4167a9)
  store %struct.Memory* %call_4167a9, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4167b1	 Bytes: 4
  %loadMem_4167b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4167b1 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4167b1)
  store %struct.Memory* %call_4167b1, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax), %edx	 RIP: 4167b5	 Bytes: 3
  %loadMem_4167b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4167b5 = call %struct.Memory* @routine_movsbl___rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4167b5)
  store %struct.Memory* %call_4167b5, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2d, %edx	 RIP: 4167b8	 Bytes: 3
  %loadMem_4167b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4167b8 = call %struct.Memory* @routine_cmpl__0x2d___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4167b8)
  store %struct.Memory* %call_4167b8, %struct.Memory** %MEMORY

  ; Code: jne .L_4167e6	 RIP: 4167bb	 Bytes: 6
  %loadMem_4167bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4167bb = call %struct.Memory* @routine_jne_.L_4167e6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4167bb, i8* %BRANCH_TAKEN, i64 43, i64 6, i64 6)
  store %struct.Memory* %call_4167bb, %struct.Memory** %MEMORY

  %loadBr_4167bb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4167bb = icmp eq i8 %loadBr_4167bb, 1
  br i1 %cmpBr_4167bb, label %block_.L_4167e6, label %block_4167c1

block_4167c1:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 4167c1	 Bytes: 4
  %loadMem_4167c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4167c1 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4167c1)
  store %struct.Memory* %call_4167c1, %struct.Memory** %MEMORY

  ; Code: movslq 0x661200, %rcx	 RIP: 4167c5	 Bytes: 8
  %loadMem_4167c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4167c5 = call %struct.Memory* @routine_movslq_0x661200___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4167c5)
  store %struct.Memory* %call_4167c5, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rdi	 RIP: 4167cd	 Bytes: 4
  %loadMem_4167cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4167cd = call %struct.Memory* @routine_movq___rax__rcx_8____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4167cd)
  store %struct.Memory* %call_4167cd, %struct.Memory** %MEMORY

  ; Code: movl $0x456fc4, %edx	 RIP: 4167d1	 Bytes: 5
  %loadMem_4167d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4167d1 = call %struct.Memory* @routine_movl__0x456fc4___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4167d1)
  store %struct.Memory* %call_4167d1, %struct.Memory** %MEMORY

  ; Code: movl %edx, %esi	 RIP: 4167d6	 Bytes: 2
  %loadMem_4167d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4167d6 = call %struct.Memory* @routine_movl__edx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4167d6)
  store %struct.Memory* %call_4167d6, %struct.Memory** %MEMORY

  ; Code: callq .strcmp_plt	 RIP: 4167d8	 Bytes: 5
  %loadMem1_4167d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4167d8 = call %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4167d8, i64 -86648, i64 5, i64 5)
  store %struct.Memory* %call1_4167d8, %struct.Memory** %MEMORY

  %loadMem2_4167d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4167d8 = load i64, i64* %3
  %call2_4167d8 = call %struct.Memory* @ext_strcmp(%struct.State* %0, i64  %loadPC_4167d8, %struct.Memory* %loadMem2_4167d8)
  store %struct.Memory* %call2_4167d8, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4167dd	 Bytes: 3
  %loadMem_4167dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4167dd = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4167dd)
  store %struct.Memory* %call_4167dd, %struct.Memory** %MEMORY

  ; Code: jne .L_416815	 RIP: 4167e0	 Bytes: 6
  %loadMem_4167e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4167e0 = call %struct.Memory* @routine_jne_.L_416815(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4167e0, i8* %BRANCH_TAKEN, i64 53, i64 6, i64 6)
  store %struct.Memory* %call_4167e0, %struct.Memory** %MEMORY

  %loadBr_4167e0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4167e0 = icmp eq i8 %loadBr_4167e0, 1
  br i1 %cmpBr_4167e0, label %block_.L_416815, label %block_.L_4167e6

  ; Code: .L_4167e6:	 RIP: 4167e6	 Bytes: 0
block_.L_4167e6:

  ; Code: movl 0x661200, %eax	 RIP: 4167e6	 Bytes: 7
  %loadMem_4167e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4167e6 = call %struct.Memory* @routine_movl_0x661200___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4167e6)
  store %struct.Memory* %call_4167e6, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rcx	 RIP: 4167ed	 Bytes: 4
  %loadMem_4167ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4167ed = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4167ed)
  store %struct.Memory* %call_4167ed, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx)	 RIP: 4167f1	 Bytes: 2
  %loadMem_4167f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4167f1 = call %struct.Memory* @routine_movl__eax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4167f1)
  store %struct.Memory* %call_4167f1, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 4167f3	 Bytes: 4
  %loadMem_4167f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4167f3 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4167f3)
  store %struct.Memory* %call_4167f3, %struct.Memory** %MEMORY

  ; Code: movq $0x0, (%rcx)	 RIP: 4167f7	 Bytes: 7
  %loadMem_4167f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4167f7 = call %struct.Memory* @routine_movq__0x0____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4167f7)
  store %struct.Memory* %call_4167f7, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 4167fe	 Bytes: 4
  %loadMem_4167fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4167fe = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4167fe)
  store %struct.Memory* %call_4167fe, %struct.Memory** %MEMORY

  ; Code: movq $0x0, (%rcx)	 RIP: 416802	 Bytes: 7
  %loadMem_416802 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416802 = call %struct.Memory* @routine_movq__0x0____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416802)
  store %struct.Memory* %call_416802, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 416809	 Bytes: 7
  %loadMem_416809 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416809 = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416809)
  store %struct.Memory* %call_416809, %struct.Memory** %MEMORY

  ; Code: jmpq .L_416f0c	 RIP: 416810	 Bytes: 5
  %loadMem_416810 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416810 = call %struct.Memory* @routine_jmpq_.L_416f0c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416810, i64 1788, i64 5)
  store %struct.Memory* %call_416810, %struct.Memory** %MEMORY

  br label %block_.L_416f0c

  ; Code: .L_416815:	 RIP: 416815	 Bytes: 0
block_.L_416815:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 416815	 Bytes: 4
  %loadMem_416815 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416815 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416815)
  store %struct.Memory* %call_416815, %struct.Memory** %MEMORY

  ; Code: movslq 0x661200, %rcx	 RIP: 416819	 Bytes: 8
  %loadMem_416819 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416819 = call %struct.Memory* @routine_movslq_0x661200___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416819)
  store %struct.Memory* %call_416819, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rdi	 RIP: 416821	 Bytes: 4
  %loadMem_416821 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416821 = call %struct.Memory* @routine_movq___rax__rcx_8____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416821)
  store %struct.Memory* %call_416821, %struct.Memory** %MEMORY

  ; Code: movl $0x456fc3, %edx	 RIP: 416825	 Bytes: 5
  %loadMem_416825 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416825 = call %struct.Memory* @routine_movl__0x456fc3___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416825)
  store %struct.Memory* %call_416825, %struct.Memory** %MEMORY

  ; Code: movl %edx, %esi	 RIP: 41682a	 Bytes: 2
  %loadMem_41682a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41682a = call %struct.Memory* @routine_movl__edx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41682a)
  store %struct.Memory* %call_41682a, %struct.Memory** %MEMORY

  ; Code: callq .strcmp_plt	 RIP: 41682c	 Bytes: 5
  %loadMem1_41682c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41682c = call %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41682c, i64 -86732, i64 5, i64 5)
  store %struct.Memory* %call1_41682c, %struct.Memory** %MEMORY

  %loadMem2_41682c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41682c = load i64, i64* %3
  %call2_41682c = call %struct.Memory* @ext_strcmp(%struct.State* %0, i64  %loadPC_41682c, %struct.Memory* %loadMem2_41682c)
  store %struct.Memory* %call2_41682c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 416831	 Bytes: 3
  %loadMem_416831 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416831 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416831)
  store %struct.Memory* %call_416831, %struct.Memory** %MEMORY

  ; Code: jne .L_41687a	 RIP: 416834	 Bytes: 6
  %loadMem_416834 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416834 = call %struct.Memory* @routine_jne_.L_41687a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416834, i8* %BRANCH_TAKEN, i64 70, i64 6, i64 6)
  store %struct.Memory* %call_416834, %struct.Memory** %MEMORY

  %loadBr_416834 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416834 = icmp eq i8 %loadBr_416834, 1
  br i1 %cmpBr_416834, label %block_.L_41687a, label %block_41683a

block_41683a:
  ; Code: movl 0x661200, %eax	 RIP: 41683a	 Bytes: 7
  %loadMem_41683a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41683a = call %struct.Memory* @routine_movl_0x661200___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41683a)
  store %struct.Memory* %call_41683a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 416841	 Bytes: 3
  %loadMem_416841 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416841 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416841)
  store %struct.Memory* %call_416841, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x661200	 RIP: 416844	 Bytes: 7
  %loadMem_416844 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416844 = call %struct.Memory* @routine_movl__eax__0x661200(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416844)
  store %struct.Memory* %call_416844, %struct.Memory** %MEMORY

  ; Code: movl 0x661200, %eax	 RIP: 41684b	 Bytes: 7
  %loadMem_41684b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41684b = call %struct.Memory* @routine_movl_0x661200___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41684b)
  store %struct.Memory* %call_41684b, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rcx	 RIP: 416852	 Bytes: 4
  %loadMem_416852 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416852 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416852)
  store %struct.Memory* %call_416852, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx)	 RIP: 416856	 Bytes: 2
  %loadMem_416856 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416856 = call %struct.Memory* @routine_movl__eax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416856)
  store %struct.Memory* %call_416856, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 416858	 Bytes: 4
  %loadMem_416858 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416858 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416858)
  store %struct.Memory* %call_416858, %struct.Memory** %MEMORY

  ; Code: movq $0x0, (%rcx)	 RIP: 41685c	 Bytes: 7
  %loadMem_41685c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41685c = call %struct.Memory* @routine_movq__0x0____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41685c)
  store %struct.Memory* %call_41685c, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 416863	 Bytes: 4
  %loadMem_416863 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416863 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416863)
  store %struct.Memory* %call_416863, %struct.Memory** %MEMORY

  ; Code: movq $0x0, (%rcx)	 RIP: 416867	 Bytes: 7
  %loadMem_416867 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416867 = call %struct.Memory* @routine_movq__0x0____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416867)
  store %struct.Memory* %call_416867, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 41686e	 Bytes: 7
  %loadMem_41686e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41686e = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41686e)
  store %struct.Memory* %call_41686e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_416f0c	 RIP: 416875	 Bytes: 5
  %loadMem_416875 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416875 = call %struct.Memory* @routine_jmpq_.L_416f0c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416875, i64 1687, i64 5)
  store %struct.Memory* %call_416875, %struct.Memory** %MEMORY

  br label %block_.L_416f0c

  ; Code: .L_41687a:	 RIP: 41687a	 Bytes: 0
block_.L_41687a:

  ; Code: cmpq $0x0, 0x663070	 RIP: 41687a	 Bytes: 9
  %loadMem_41687a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41687a = call %struct.Memory* @routine_cmpq__0x0__0x663070(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41687a)
  store %struct.Memory* %call_41687a, %struct.Memory** %MEMORY

  ; Code: jne .L_416ba5	 RIP: 416883	 Bytes: 6
  %loadMem_416883 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416883 = call %struct.Memory* @routine_jne_.L_416ba5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416883, i8* %BRANCH_TAKEN, i64 802, i64 6, i64 6)
  store %struct.Memory* %call_416883, %struct.Memory** %MEMORY

  %loadBr_416883 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416883 = icmp eq i8 %loadBr_416883, 1
  br i1 %cmpBr_416883, label %block_.L_416ba5, label %block_416889

block_416889:
  ; Code: movq $0x456fc3, %rsi	 RIP: 416889	 Bytes: 10
  %loadMem_416889 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416889 = call %struct.Memory* @routine_movq__0x456fc3___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416889)
  store %struct.Memory* %call_416889, %struct.Memory** %MEMORY

  ; Code: movl $0x2, %eax	 RIP: 416893	 Bytes: 5
  %loadMem_416893 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416893 = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416893)
  store %struct.Memory* %call_416893, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 416898	 Bytes: 2
  %loadMem_416898 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416898 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416898)
  store %struct.Memory* %call_416898, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 41689a	 Bytes: 4
  %loadMem_41689a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41689a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41689a)
  store %struct.Memory* %call_41689a, %struct.Memory** %MEMORY

  ; Code: movslq 0x661200, %rdi	 RIP: 41689e	 Bytes: 8
  %loadMem_41689e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41689e = call %struct.Memory* @routine_movslq_0x661200___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41689e)
  store %struct.Memory* %call_41689e, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdi,8), %rdi	 RIP: 4168a6	 Bytes: 4
  %loadMem_4168a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4168a6 = call %struct.Memory* @routine_movq___rcx__rdi_8____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4168a6)
  store %struct.Memory* %call_4168a6, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 4168aa	 Bytes: 5
  %loadMem1_4168aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4168aa = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4168aa, i64 -87258, i64 5, i64 5)
  store %struct.Memory* %call1_4168aa, %struct.Memory** %MEMORY

  %loadMem2_4168aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4168aa = load i64, i64* %3
  %call2_4168aa = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_4168aa, %struct.Memory* %loadMem2_4168aa)
  store %struct.Memory* %call2_4168aa, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4168af	 Bytes: 3
  %loadMem_4168af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4168af = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4168af)
  store %struct.Memory* %call_4168af, %struct.Memory** %MEMORY

  ; Code: jne .L_416ba5	 RIP: 4168b2	 Bytes: 6
  %loadMem_4168b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4168b2 = call %struct.Memory* @routine_jne_.L_416ba5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4168b2, i8* %BRANCH_TAKEN, i64 755, i64 6, i64 6)
  store %struct.Memory* %call_4168b2, %struct.Memory** %MEMORY

  %loadBr_4168b2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4168b2 = icmp eq i8 %loadBr_4168b2, 1
  br i1 %cmpBr_4168b2, label %block_.L_416ba5, label %block_4168b8

block_4168b8:
  ; Code: movl $0x3d, %esi	 RIP: 4168b8	 Bytes: 5
  %loadMem_4168b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4168b8 = call %struct.Memory* @routine_movl__0x3d___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4168b8)
  store %struct.Memory* %call_4168b8, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4168bd	 Bytes: 4
  %loadMem_4168bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4168bd = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4168bd)
  store %struct.Memory* %call_4168bd, %struct.Memory** %MEMORY

  ; Code: movslq 0x661200, %rcx	 RIP: 4168c1	 Bytes: 8
  %loadMem_4168c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4168c1 = call %struct.Memory* @routine_movslq_0x661200___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4168c1)
  store %struct.Memory* %call_4168c1, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rdi	 RIP: 4168c9	 Bytes: 4
  %loadMem_4168c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4168c9 = call %struct.Memory* @routine_movq___rax__rcx_8____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4168c9)
  store %struct.Memory* %call_4168c9, %struct.Memory** %MEMORY

  ; Code: callq .strchr_plt	 RIP: 4168cd	 Bytes: 5
  %loadMem1_4168cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4168cd = call %struct.Memory* @routine_callq_.strchr_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4168cd, i64 -87117, i64 5, i64 5)
  store %struct.Memory* %call1_4168cd, %struct.Memory** %MEMORY

  %loadMem2_4168cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4168cd = load i64, i64* %3
  %call2_4168cd = call %struct.Memory* @sub_401480.strchr_plt(%struct.State* %0, i64  %loadPC_4168cd, %struct.Memory* %loadMem2_4168cd)
  store %struct.Memory* %call2_4168cd, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x663070	 RIP: 4168d2	 Bytes: 8
  %loadMem_4168d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4168d2 = call %struct.Memory* @routine_movq__rax__0x663070(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4168d2)
  store %struct.Memory* %call_4168d2, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 4168da	 Bytes: 4
  %loadMem_4168da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4168da = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4168da)
  store %struct.Memory* %call_4168da, %struct.Memory** %MEMORY

  ; Code: je .L_416903	 RIP: 4168de	 Bytes: 6
  %loadMem_4168de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4168de = call %struct.Memory* @routine_je_.L_416903(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4168de, i8* %BRANCH_TAKEN, i64 37, i64 6, i64 6)
  store %struct.Memory* %call_4168de, %struct.Memory** %MEMORY

  %loadBr_4168de = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4168de = icmp eq i8 %loadBr_4168de, 1
  br i1 %cmpBr_4168de, label %block_.L_416903, label %block_4168e4

block_4168e4:
  ; Code: movq 0x663070, %rax	 RIP: 4168e4	 Bytes: 8
  %loadMem_4168e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4168e4 = call %struct.Memory* @routine_movq_0x663070___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4168e4)
  store %struct.Memory* %call_4168e4, %struct.Memory** %MEMORY

  ; Code: movb $0x0, (%rax)	 RIP: 4168ec	 Bytes: 3
  %loadMem_4168ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4168ec = call %struct.Memory* @routine_movb__0x0____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4168ec)
  store %struct.Memory* %call_4168ec, %struct.Memory** %MEMORY

  ; Code: movq 0x663070, %rax	 RIP: 4168ef	 Bytes: 8
  %loadMem_4168ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4168ef = call %struct.Memory* @routine_movq_0x663070___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4168ef)
  store %struct.Memory* %call_4168ef, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rax	 RIP: 4168f7	 Bytes: 4
  %loadMem_4168f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4168f7 = call %struct.Memory* @routine_addq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4168f7)
  store %struct.Memory* %call_4168f7, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x663070	 RIP: 4168fb	 Bytes: 8
  %loadMem_4168fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4168fb = call %struct.Memory* @routine_movq__rax__0x663070(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4168fb)
  store %struct.Memory* %call_4168fb, %struct.Memory** %MEMORY

  ; Code: .L_416903:	 RIP: 416903	 Bytes: 0
  br label %block_.L_416903
block_.L_416903:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 416903	 Bytes: 4
  %loadMem_416903 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416903 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416903)
  store %struct.Memory* %call_416903, %struct.Memory** %MEMORY

  ; Code: movslq 0x661200, %rcx	 RIP: 416907	 Bytes: 8
  %loadMem_416907 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416907 = call %struct.Memory* @routine_movslq_0x661200___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416907)
  store %struct.Memory* %call_416907, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rdi	 RIP: 41690f	 Bytes: 4
  %loadMem_41690f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41690f = call %struct.Memory* @routine_movq___rax__rcx_8____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41690f)
  store %struct.Memory* %call_41690f, %struct.Memory** %MEMORY

  ; Code: callq .strlen_plt	 RIP: 416913	 Bytes: 5
  %loadMem1_416913 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_416913 = call %struct.Memory* @routine_callq_.strlen_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_416913, i64 -87219, i64 5, i64 5)
  store %struct.Memory* %call1_416913, %struct.Memory** %MEMORY

  %loadMem2_416913 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_416913 = load i64, i64* %3
  %call2_416913 = call %struct.Memory* @ext_strlen(%struct.State* %0, i64  %loadPC_416913, %struct.Memory* %loadMem2_416913)
  store %struct.Memory* %call2_416913, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 416918	 Bytes: 2
  %loadMem_416918 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416918 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416918)
  store %struct.Memory* %call_416918, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x48(%rbp)	 RIP: 41691a	 Bytes: 3
  %loadMem_41691a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41691a = call %struct.Memory* @routine_movl__edx__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41691a)
  store %struct.Memory* %call_41691a, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x4c(%rbp)	 RIP: 41691d	 Bytes: 7
  %loadMem_41691d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41691d = call %struct.Memory* @routine_movl__0x0__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41691d)
  store %struct.Memory* %call_41691d, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x44(%rbp)	 RIP: 416924	 Bytes: 7
  %loadMem_416924 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416924 = call %struct.Memory* @routine_movl__0x0__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416924)
  store %struct.Memory* %call_416924, %struct.Memory** %MEMORY

  ; Code: .L_41692b:	 RIP: 41692b	 Bytes: 0
  br label %block_.L_41692b
block_.L_41692b:

  ; Code: movl -0x44(%rbp), %eax	 RIP: 41692b	 Bytes: 3
  %loadMem_41692b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41692b = call %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41692b)
  store %struct.Memory* %call_41692b, %struct.Memory** %MEMORY

  ; Code: cmpl -0x1c(%rbp), %eax	 RIP: 41692e	 Bytes: 3
  %loadMem_41692e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41692e = call %struct.Memory* @routine_cmpl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41692e)
  store %struct.Memory* %call_41692e, %struct.Memory** %MEMORY

  ; Code: jge .L_4169dc	 RIP: 416931	 Bytes: 6
  %loadMem_416931 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416931 = call %struct.Memory* @routine_jge_.L_4169dc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416931, i8* %BRANCH_TAKEN, i64 171, i64 6, i64 6)
  store %struct.Memory* %call_416931, %struct.Memory** %MEMORY

  %loadBr_416931 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416931 = icmp eq i8 %loadBr_416931, 1
  br i1 %cmpBr_416931, label %block_.L_4169dc, label %block_416937

block_416937:
  ; Code: movq -0x18(%rbp), %rax	 RIP: 416937	 Bytes: 4
  %loadMem_416937 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416937 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416937)
  store %struct.Memory* %call_416937, %struct.Memory** %MEMORY

  ; Code: movslq -0x44(%rbp), %rcx	 RIP: 41693b	 Bytes: 4
  %loadMem_41693b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41693b = call %struct.Memory* @routine_movslq_MINUS0x44__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41693b)
  store %struct.Memory* %call_41693b, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 41693f	 Bytes: 4
  %loadMem_41693f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41693f = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41693f)
  store %struct.Memory* %call_41693f, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 416943	 Bytes: 3
  %loadMem_416943 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416943 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416943)
  store %struct.Memory* %call_416943, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8(%rax)	 RIP: 416946	 Bytes: 4
  %loadMem_416946 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416946 = call %struct.Memory* @routine_cmpl__0x0__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416946)
  store %struct.Memory* %call_416946, %struct.Memory** %MEMORY

  ; Code: jne .L_4169c9	 RIP: 41694a	 Bytes: 6
  %loadMem_41694a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41694a = call %struct.Memory* @routine_jne_.L_4169c9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41694a, i8* %BRANCH_TAKEN, i64 127, i64 6, i64 6)
  store %struct.Memory* %call_41694a, %struct.Memory** %MEMORY

  %loadBr_41694a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41694a = icmp eq i8 %loadBr_41694a, 1
  br i1 %cmpBr_41694a, label %block_.L_4169c9, label %block_416950

block_416950:
  ; Code: movq -0x18(%rbp), %rax	 RIP: 416950	 Bytes: 4
  %loadMem_416950 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416950 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416950)
  store %struct.Memory* %call_416950, %struct.Memory** %MEMORY

  ; Code: movslq -0x44(%rbp), %rcx	 RIP: 416954	 Bytes: 4
  %loadMem_416954 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416954 = call %struct.Memory* @routine_movslq_MINUS0x44__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416954)
  store %struct.Memory* %call_416954, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 416958	 Bytes: 4
  %loadMem_416958 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416958 = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416958)
  store %struct.Memory* %call_416958, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 41695c	 Bytes: 3
  %loadMem_41695c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41695c = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41695c)
  store %struct.Memory* %call_41695c, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdi	 RIP: 41695f	 Bytes: 3
  %loadMem_41695f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41695f = call %struct.Memory* @routine_movq___rax____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41695f)
  store %struct.Memory* %call_41695f, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 416962	 Bytes: 4
  %loadMem_416962 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416962 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416962)
  store %struct.Memory* %call_416962, %struct.Memory** %MEMORY

  ; Code: movslq 0x661200, %rcx	 RIP: 416966	 Bytes: 8
  %loadMem_416966 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416966 = call %struct.Memory* @routine_movslq_0x661200___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416966)
  store %struct.Memory* %call_416966, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rsi	 RIP: 41696e	 Bytes: 4
  %loadMem_41696e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41696e = call %struct.Memory* @routine_movq___rax__rcx_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41696e)
  store %struct.Memory* %call_41696e, %struct.Memory** %MEMORY

  ; Code: movslq -0x48(%rbp), %rdx	 RIP: 416972	 Bytes: 4
  %loadMem_416972 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416972 = call %struct.Memory* @routine_movslq_MINUS0x48__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416972)
  store %struct.Memory* %call_416972, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 416976	 Bytes: 5
  %loadMem1_416976 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_416976 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_416976, i64 -87462, i64 5, i64 5)
  store %struct.Memory* %call1_416976, %struct.Memory** %MEMORY

  %loadMem2_416976 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_416976 = load i64, i64* %3
  %call2_416976 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_416976, %struct.Memory* %loadMem2_416976)
  store %struct.Memory* %call2_416976, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41697b	 Bytes: 3
  %loadMem_41697b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41697b = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41697b)
  store %struct.Memory* %call_41697b, %struct.Memory** %MEMORY

  ; Code: jne .L_4169c9	 RIP: 41697e	 Bytes: 6
  %loadMem_41697e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41697e = call %struct.Memory* @routine_jne_.L_4169c9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41697e, i8* %BRANCH_TAKEN, i64 75, i64 6, i64 6)
  store %struct.Memory* %call_41697e, %struct.Memory** %MEMORY

  %loadBr_41697e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41697e = icmp eq i8 %loadBr_41697e, 1
  br i1 %cmpBr_41697e, label %block_.L_4169c9, label %block_416984

block_416984:
  ; Code: movl -0x4c(%rbp), %eax	 RIP: 416984	 Bytes: 3
  %loadMem_416984 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416984 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416984)
  store %struct.Memory* %call_416984, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 416987	 Bytes: 3
  %loadMem_416987 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416987 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416987)
  store %struct.Memory* %call_416987, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c(%rbp)	 RIP: 41698a	 Bytes: 3
  %loadMem_41698a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41698a = call %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41698a)
  store %struct.Memory* %call_41698a, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %eax	 RIP: 41698d	 Bytes: 3
  %loadMem_41698d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41698d = call %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41698d)
  store %struct.Memory* %call_41698d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x50(%rbp)	 RIP: 416990	 Bytes: 3
  %loadMem_416990 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416990 = call %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416990)
  store %struct.Memory* %call_416990, %struct.Memory** %MEMORY

  ; Code: movslq -0x48(%rbp), %rcx	 RIP: 416993	 Bytes: 4
  %loadMem_416993 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416993 = call %struct.Memory* @routine_movslq_MINUS0x48__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416993)
  store %struct.Memory* %call_416993, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 416997	 Bytes: 4
  %loadMem_416997 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416997 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416997)
  store %struct.Memory* %call_416997, %struct.Memory** %MEMORY

  ; Code: movslq -0x44(%rbp), %rsi	 RIP: 41699b	 Bytes: 4
  %loadMem_41699b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41699b = call %struct.Memory* @routine_movslq_MINUS0x44__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41699b)
  store %struct.Memory* %call_41699b, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rsi	 RIP: 41699f	 Bytes: 4
  %loadMem_41699f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41699f = call %struct.Memory* @routine_shlq__0x4___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41699f)
  store %struct.Memory* %call_41699f, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 4169a3	 Bytes: 3
  %loadMem_4169a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4169a3 = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4169a3)
  store %struct.Memory* %call_4169a3, %struct.Memory** %MEMORY

  ; Code: movq (%rdx), %rdi	 RIP: 4169a6	 Bytes: 3
  %loadMem_4169a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4169a6 = call %struct.Memory* @routine_movq___rdx____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4169a6)
  store %struct.Memory* %call_4169a6, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x58(%rbp)	 RIP: 4169a9	 Bytes: 4
  %loadMem_4169a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4169a9 = call %struct.Memory* @routine_movq__rcx__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4169a9)
  store %struct.Memory* %call_4169a9, %struct.Memory** %MEMORY

  ; Code: callq .strlen_plt	 RIP: 4169ad	 Bytes: 5
  %loadMem1_4169ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4169ad = call %struct.Memory* @routine_callq_.strlen_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4169ad, i64 -87373, i64 5, i64 5)
  store %struct.Memory* %call1_4169ad, %struct.Memory** %MEMORY

  %loadMem2_4169ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4169ad = load i64, i64* %3
  %call2_4169ad = call %struct.Memory* @ext_strlen(%struct.State* %0, i64  %loadPC_4169ad, %struct.Memory* %loadMem2_4169ad)
  store %struct.Memory* %call2_4169ad, %struct.Memory** %MEMORY

  ; Code: movq -0x58(%rbp), %rcx	 RIP: 4169b2	 Bytes: 4
  %loadMem_4169b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4169b2 = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4169b2)
  store %struct.Memory* %call_4169b2, %struct.Memory** %MEMORY

  ; Code: cmpq %rax, %rcx	 RIP: 4169b6	 Bytes: 3
  %loadMem_4169b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4169b6 = call %struct.Memory* @routine_cmpq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4169b6)
  store %struct.Memory* %call_4169b6, %struct.Memory** %MEMORY

  ; Code: jne .L_4169c4	 RIP: 4169b9	 Bytes: 6
  %loadMem_4169b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4169b9 = call %struct.Memory* @routine_jne_.L_4169c4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4169b9, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_4169b9, %struct.Memory** %MEMORY

  %loadBr_4169b9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4169b9 = icmp eq i8 %loadBr_4169b9, 1
  br i1 %cmpBr_4169b9, label %block_.L_4169c4, label %block_4169bf

block_4169bf:
  ; Code: jmpq .L_4169dc	 RIP: 4169bf	 Bytes: 5
  %loadMem_4169bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4169bf = call %struct.Memory* @routine_jmpq_.L_4169dc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4169bf, i64 29, i64 5)
  store %struct.Memory* %call_4169bf, %struct.Memory** %MEMORY

  br label %block_.L_4169dc

  ; Code: .L_4169c4:	 RIP: 4169c4	 Bytes: 0
block_.L_4169c4:

  ; Code: jmpq .L_4169c9	 RIP: 4169c4	 Bytes: 5
  %loadMem_4169c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4169c4 = call %struct.Memory* @routine_jmpq_.L_4169c9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4169c4, i64 5, i64 5)
  store %struct.Memory* %call_4169c4, %struct.Memory** %MEMORY

  br label %block_.L_4169c9

  ; Code: .L_4169c9:	 RIP: 4169c9	 Bytes: 0
block_.L_4169c9:

  ; Code: jmpq .L_4169ce	 RIP: 4169c9	 Bytes: 5
  %loadMem_4169c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4169c9 = call %struct.Memory* @routine_jmpq_.L_4169ce(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4169c9, i64 5, i64 5)
  store %struct.Memory* %call_4169c9, %struct.Memory** %MEMORY

  br label %block_.L_4169ce

  ; Code: .L_4169ce:	 RIP: 4169ce	 Bytes: 0
block_.L_4169ce:

  ; Code: movl -0x44(%rbp), %eax	 RIP: 4169ce	 Bytes: 3
  %loadMem_4169ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4169ce = call %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4169ce)
  store %struct.Memory* %call_4169ce, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4169d1	 Bytes: 3
  %loadMem_4169d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4169d1 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4169d1)
  store %struct.Memory* %call_4169d1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x44(%rbp)	 RIP: 4169d4	 Bytes: 3
  %loadMem_4169d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4169d4 = call %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4169d4)
  store %struct.Memory* %call_4169d4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41692b	 RIP: 4169d7	 Bytes: 5
  %loadMem_4169d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4169d7 = call %struct.Memory* @routine_jmpq_.L_41692b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4169d7, i64 -172, i64 5)
  store %struct.Memory* %call_4169d7, %struct.Memory** %MEMORY

  br label %block_.L_41692b

  ; Code: .L_4169dc:	 RIP: 4169dc	 Bytes: 0
block_.L_4169dc:

  ; Code: cmpl $0x1, -0x4c(%rbp)	 RIP: 4169dc	 Bytes: 4
  %loadMem_4169dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4169dc = call %struct.Memory* @routine_cmpl__0x1__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4169dc)
  store %struct.Memory* %call_4169dc, %struct.Memory** %MEMORY

  ; Code: jle .L_416a37	 RIP: 4169e0	 Bytes: 6
  %loadMem_4169e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4169e0 = call %struct.Memory* @routine_jle_.L_416a37(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4169e0, i8* %BRANCH_TAKEN, i64 87, i64 6, i64 6)
  store %struct.Memory* %call_4169e0, %struct.Memory** %MEMORY

  %loadBr_4169e0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4169e0 = icmp eq i8 %loadBr_4169e0, 1
  br i1 %cmpBr_4169e0, label %block_.L_416a37, label %block_4169e6

block_4169e6:
  ; Code: movslq -0x48(%rbp), %rax	 RIP: 4169e6	 Bytes: 4
  %loadMem_4169e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4169e6 = call %struct.Memory* @routine_movslq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4169e6)
  store %struct.Memory* %call_4169e6, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4169ea	 Bytes: 4
  %loadMem_4169ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4169ea = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4169ea)
  store %struct.Memory* %call_4169ea, %struct.Memory** %MEMORY

  ; Code: movslq -0x44(%rbp), %rdx	 RIP: 4169ee	 Bytes: 4
  %loadMem_4169ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4169ee = call %struct.Memory* @routine_movslq_MINUS0x44__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4169ee)
  store %struct.Memory* %call_4169ee, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 4169f2	 Bytes: 4
  %loadMem_4169f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4169f2 = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4169f2)
  store %struct.Memory* %call_4169f2, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4169f6	 Bytes: 3
  %loadMem_4169f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4169f6 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4169f6)
  store %struct.Memory* %call_4169f6, %struct.Memory** %MEMORY

  ; Code: movq (%rcx), %rdi	 RIP: 4169f9	 Bytes: 3
  %loadMem_4169f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4169f9 = call %struct.Memory* @routine_movq___rcx____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4169f9)
  store %struct.Memory* %call_4169f9, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x60(%rbp)	 RIP: 4169fc	 Bytes: 4
  %loadMem_4169fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4169fc = call %struct.Memory* @routine_movq__rax__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4169fc)
  store %struct.Memory* %call_4169fc, %struct.Memory** %MEMORY

  ; Code: callq .strlen_plt	 RIP: 416a00	 Bytes: 5
  %loadMem1_416a00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_416a00 = call %struct.Memory* @routine_callq_.strlen_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_416a00, i64 -87456, i64 5, i64 5)
  store %struct.Memory* %call1_416a00, %struct.Memory** %MEMORY

  %loadMem2_416a00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_416a00 = load i64, i64* %3
  %call2_416a00 = call %struct.Memory* @ext_strlen(%struct.State* %0, i64  %loadPC_416a00, %struct.Memory* %loadMem2_416a00)
  store %struct.Memory* %call2_416a00, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rcx	 RIP: 416a05	 Bytes: 4
  %loadMem_416a05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a05 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a05)
  store %struct.Memory* %call_416a05, %struct.Memory** %MEMORY

  ; Code: cmpq %rax, %rcx	 RIP: 416a09	 Bytes: 3
  %loadMem_416a09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a09 = call %struct.Memory* @routine_cmpq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a09)
  store %struct.Memory* %call_416a09, %struct.Memory** %MEMORY

  ; Code: je .L_416a37	 RIP: 416a0c	 Bytes: 6
  %loadMem_416a0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a0c = call %struct.Memory* @routine_je_.L_416a37(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a0c, i8* %BRANCH_TAKEN, i64 43, i64 6, i64 6)
  store %struct.Memory* %call_416a0c, %struct.Memory** %MEMORY

  %loadBr_416a0c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416a0c = icmp eq i8 %loadBr_416a0c, 1
  br i1 %cmpBr_416a0c, label %block_.L_416a37, label %block_416a12

block_416a12:
  ; Code: movq $0x456a2a, %rdi	 RIP: 416a12	 Bytes: 10
  %loadMem_416a12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a12 = call %struct.Memory* @routine_movq__0x456a2a___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a12)
  store %struct.Memory* %call_416a12, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 416a1c	 Bytes: 4
  %loadMem_416a1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a1c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a1c)
  store %struct.Memory* %call_416a1c, %struct.Memory** %MEMORY

  ; Code: movslq 0x661200, %rcx	 RIP: 416a20	 Bytes: 8
  %loadMem_416a20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a20 = call %struct.Memory* @routine_movslq_0x661200___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a20)
  store %struct.Memory* %call_416a20, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rsi	 RIP: 416a28	 Bytes: 4
  %loadMem_416a28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a28 = call %struct.Memory* @routine_movq___rax__rcx_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a28)
  store %struct.Memory* %call_416a28, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rdx	 RIP: 416a2c	 Bytes: 4
  %loadMem_416a2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a2c = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a2c)
  store %struct.Memory* %call_416a2c, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 416a30	 Bytes: 2
  %loadMem_416a30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a30 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a30)
  store %struct.Memory* %call_416a30, %struct.Memory** %MEMORY

  ; Code: callq .Die	 RIP: 416a32	 Bytes: 5
  %loadMem1_416a32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_416a32 = call %struct.Memory* @routine_callq_.Die(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_416a32, i64 163806, i64 5, i64 5)
  store %struct.Memory* %call1_416a32, %struct.Memory** %MEMORY

  %loadMem2_416a32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_416a32 = load i64, i64* %3
  %call2_416a32 = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64  %loadPC_416a32, %struct.Memory* %loadMem2_416a32)
  store %struct.Memory* %call2_416a32, %struct.Memory** %MEMORY

  ; Code: .L_416a37:	 RIP: 416a37	 Bytes: 0
  br label %block_.L_416a37
block_.L_416a37:

  ; Code: cmpl $0x0, -0x4c(%rbp)	 RIP: 416a37	 Bytes: 4
  %loadMem_416a37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a37 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a37)
  store %struct.Memory* %call_416a37, %struct.Memory** %MEMORY

  ; Code: jne .L_416a66	 RIP: 416a3b	 Bytes: 6
  %loadMem_416a3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a3b = call %struct.Memory* @routine_jne_.L_416a66(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a3b, i8* %BRANCH_TAKEN, i64 43, i64 6, i64 6)
  store %struct.Memory* %call_416a3b, %struct.Memory** %MEMORY

  %loadBr_416a3b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416a3b = icmp eq i8 %loadBr_416a3b, 1
  br i1 %cmpBr_416a3b, label %block_.L_416a66, label %block_416a41

block_416a41:
  ; Code: movq $0x456a60, %rdi	 RIP: 416a41	 Bytes: 10
  %loadMem_416a41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a41 = call %struct.Memory* @routine_movq__0x456a60___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a41)
  store %struct.Memory* %call_416a41, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 416a4b	 Bytes: 4
  %loadMem_416a4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a4b = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a4b)
  store %struct.Memory* %call_416a4b, %struct.Memory** %MEMORY

  ; Code: movslq 0x661200, %rcx	 RIP: 416a4f	 Bytes: 8
  %loadMem_416a4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a4f = call %struct.Memory* @routine_movslq_0x661200___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a4f)
  store %struct.Memory* %call_416a4f, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rsi	 RIP: 416a57	 Bytes: 4
  %loadMem_416a57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a57 = call %struct.Memory* @routine_movq___rax__rcx_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a57)
  store %struct.Memory* %call_416a57, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rdx	 RIP: 416a5b	 Bytes: 4
  %loadMem_416a5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a5b = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a5b)
  store %struct.Memory* %call_416a5b, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 416a5f	 Bytes: 2
  %loadMem_416a5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a5f = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a5f)
  store %struct.Memory* %call_416a5f, %struct.Memory** %MEMORY

  ; Code: callq .Die	 RIP: 416a61	 Bytes: 5
  %loadMem1_416a61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_416a61 = call %struct.Memory* @routine_callq_.Die(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_416a61, i64 163759, i64 5, i64 5)
  store %struct.Memory* %call1_416a61, %struct.Memory** %MEMORY

  %loadMem2_416a61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_416a61 = load i64, i64* %3
  %call2_416a61 = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64  %loadPC_416a61, %struct.Memory* %loadMem2_416a61)
  store %struct.Memory* %call2_416a61, %struct.Memory** %MEMORY

  ; Code: .L_416a66:	 RIP: 416a66	 Bytes: 0
  br label %block_.L_416a66
block_.L_416a66:

  ; Code: movq -0x18(%rbp), %rax	 RIP: 416a66	 Bytes: 4
  %loadMem_416a66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a66 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a66)
  store %struct.Memory* %call_416a66, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 416a6a	 Bytes: 4
  %loadMem_416a6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a6a = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a6a)
  store %struct.Memory* %call_416a6a, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 416a6e	 Bytes: 4
  %loadMem_416a6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a6e = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a6e)
  store %struct.Memory* %call_416a6e, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 416a72	 Bytes: 3
  %loadMem_416a72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a72 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a72)
  store %struct.Memory* %call_416a72, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 416a75	 Bytes: 3
  %loadMem_416a75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a75 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a75)
  store %struct.Memory* %call_416a75, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 416a78	 Bytes: 4
  %loadMem_416a78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a78 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a78)
  store %struct.Memory* %call_416a78, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rcx)	 RIP: 416a7c	 Bytes: 3
  %loadMem_416a7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a7c = call %struct.Memory* @routine_movq__rax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a7c)
  store %struct.Memory* %call_416a7c, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 416a7f	 Bytes: 4
  %loadMem_416a7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a7f = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a7f)
  store %struct.Memory* %call_416a7f, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 416a83	 Bytes: 4
  %loadMem_416a83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a83 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a83)
  store %struct.Memory* %call_416a83, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 416a87	 Bytes: 4
  %loadMem_416a87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a87 = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a87)
  store %struct.Memory* %call_416a87, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 416a8b	 Bytes: 3
  %loadMem_416a8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a8b = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a8b)
  store %struct.Memory* %call_416a8b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xc(%rax)	 RIP: 416a8e	 Bytes: 4
  %loadMem_416a8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a8e = call %struct.Memory* @routine_cmpl__0x0__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a8e)
  store %struct.Memory* %call_416a8e, %struct.Memory** %MEMORY

  ; Code: je .L_416b4e	 RIP: 416a92	 Bytes: 6
  %loadMem_416a92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a92 = call %struct.Memory* @routine_je_.L_416b4e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a92, i8* %BRANCH_TAKEN, i64 188, i64 6, i64 6)
  store %struct.Memory* %call_416a92, %struct.Memory** %MEMORY

  %loadBr_416a92 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416a92 = icmp eq i8 %loadBr_416a92, 1
  br i1 %cmpBr_416a92, label %block_.L_416b4e, label %block_416a98

block_416a98:
  ; Code: cmpq $0x0, 0x663070	 RIP: 416a98	 Bytes: 9
  %loadMem_416a98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a98 = call %struct.Memory* @routine_cmpq__0x0__0x663070(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a98)
  store %struct.Memory* %call_416a98, %struct.Memory** %MEMORY

  ; Code: je .L_416ad8	 RIP: 416aa1	 Bytes: 6
  %loadMem_416aa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416aa1 = call %struct.Memory* @routine_je_.L_416ad8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416aa1, i8* %BRANCH_TAKEN, i64 55, i64 6, i64 6)
  store %struct.Memory* %call_416aa1, %struct.Memory** %MEMORY

  %loadBr_416aa1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416aa1 = icmp eq i8 %loadBr_416aa1, 1
  br i1 %cmpBr_416aa1, label %block_.L_416ad8, label %block_416aa7

block_416aa7:
  ; Code: movq 0x663070, %rax	 RIP: 416aa7	 Bytes: 8
  %loadMem_416aa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416aa7 = call %struct.Memory* @routine_movq_0x663070___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416aa7)
  store %struct.Memory* %call_416aa7, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 416aaf	 Bytes: 4
  %loadMem_416aaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416aaf = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416aaf)
  store %struct.Memory* %call_416aaf, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rcx)	 RIP: 416ab3	 Bytes: 3
  %loadMem_416ab3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416ab3 = call %struct.Memory* @routine_movq__rax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416ab3)
  store %struct.Memory* %call_416ab3, %struct.Memory** %MEMORY

  ; Code: movq $0x0, 0x663070	 RIP: 416ab6	 Bytes: 12
  %loadMem_416ab6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416ab6 = call %struct.Memory* @routine_movq__0x0__0x663070(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416ab6)
  store %struct.Memory* %call_416ab6, %struct.Memory** %MEMORY

  ; Code: movl 0x661200, %edx	 RIP: 416ac2	 Bytes: 7
  %loadMem_416ac2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416ac2 = call %struct.Memory* @routine_movl_0x661200___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416ac2)
  store %struct.Memory* %call_416ac2, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 416ac9	 Bytes: 3
  %loadMem_416ac9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416ac9 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416ac9)
  store %struct.Memory* %call_416ac9, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x661200	 RIP: 416acc	 Bytes: 7
  %loadMem_416acc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416acc = call %struct.Memory* @routine_movl__edx__0x661200(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416acc)
  store %struct.Memory* %call_416acc, %struct.Memory** %MEMORY

  ; Code: jmpq .L_416b49	 RIP: 416ad3	 Bytes: 5
  %loadMem_416ad3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416ad3 = call %struct.Memory* @routine_jmpq_.L_416b49(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416ad3, i64 118, i64 5)
  store %struct.Memory* %call_416ad3, %struct.Memory** %MEMORY

  br label %block_.L_416b49

  ; Code: .L_416ad8:	 RIP: 416ad8	 Bytes: 0
block_.L_416ad8:

  ; Code: movl 0x661200, %eax	 RIP: 416ad8	 Bytes: 7
  %loadMem_416ad8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416ad8 = call %struct.Memory* @routine_movl_0x661200___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416ad8)
  store %struct.Memory* %call_416ad8, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 416adf	 Bytes: 3
  %loadMem_416adf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416adf = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416adf)
  store %struct.Memory* %call_416adf, %struct.Memory** %MEMORY

  ; Code: cmpl -0x8(%rbp), %eax	 RIP: 416ae2	 Bytes: 3
  %loadMem_416ae2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416ae2 = call %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416ae2)
  store %struct.Memory* %call_416ae2, %struct.Memory** %MEMORY

  ; Code: jl .L_416b17	 RIP: 416ae5	 Bytes: 6
  %loadMem_416ae5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416ae5 = call %struct.Memory* @routine_jl_.L_416b17(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416ae5, i8* %BRANCH_TAKEN, i64 50, i64 6, i64 6)
  store %struct.Memory* %call_416ae5, %struct.Memory** %MEMORY

  %loadBr_416ae5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416ae5 = icmp eq i8 %loadBr_416ae5, 1
  br i1 %cmpBr_416ae5, label %block_.L_416b17, label %block_416aeb

block_416aeb:
  ; Code: movq $0x456a78, %rdi	 RIP: 416aeb	 Bytes: 10
  %loadMem_416aeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416aeb = call %struct.Memory* @routine_movq__0x456a78___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416aeb)
  store %struct.Memory* %call_416aeb, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 416af5	 Bytes: 4
  %loadMem_416af5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416af5 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416af5)
  store %struct.Memory* %call_416af5, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 416af9	 Bytes: 4
  %loadMem_416af9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416af9 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416af9)
  store %struct.Memory* %call_416af9, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 416afd	 Bytes: 4
  %loadMem_416afd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416afd = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416afd)
  store %struct.Memory* %call_416afd, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 416b01	 Bytes: 3
  %loadMem_416b01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b01 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b01)
  store %struct.Memory* %call_416b01, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rsi	 RIP: 416b04	 Bytes: 3
  %loadMem_416b04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b04 = call %struct.Memory* @routine_movq___rax____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b04)
  store %struct.Memory* %call_416b04, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rdx	 RIP: 416b07	 Bytes: 4
  %loadMem_416b07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b07 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b07)
  store %struct.Memory* %call_416b07, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 416b0b	 Bytes: 2
  %loadMem_416b0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b0b = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b0b)
  store %struct.Memory* %call_416b0b, %struct.Memory** %MEMORY

  ; Code: callq .Die	 RIP: 416b0d	 Bytes: 5
  %loadMem1_416b0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_416b0d = call %struct.Memory* @routine_callq_.Die(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_416b0d, i64 163587, i64 5, i64 5)
  store %struct.Memory* %call1_416b0d, %struct.Memory** %MEMORY

  %loadMem2_416b0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_416b0d = load i64, i64* %3
  %call2_416b0d = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64  %loadPC_416b0d, %struct.Memory* %loadMem2_416b0d)
  store %struct.Memory* %call2_416b0d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_416b44	 RIP: 416b12	 Bytes: 5
  %loadMem_416b12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b12 = call %struct.Memory* @routine_jmpq_.L_416b44(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b12, i64 50, i64 5)
  store %struct.Memory* %call_416b12, %struct.Memory** %MEMORY

  br label %block_.L_416b44

  ; Code: .L_416b17:	 RIP: 416b17	 Bytes: 0
block_.L_416b17:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 416b17	 Bytes: 4
  %loadMem_416b17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b17 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b17)
  store %struct.Memory* %call_416b17, %struct.Memory** %MEMORY

  ; Code: movl 0x661200, %ecx	 RIP: 416b1b	 Bytes: 7
  %loadMem_416b1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b1b = call %struct.Memory* @routine_movl_0x661200___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b1b)
  store %struct.Memory* %call_416b1b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 416b22	 Bytes: 3
  %loadMem_416b22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b22 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b22)
  store %struct.Memory* %call_416b22, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 416b25	 Bytes: 3
  %loadMem_416b25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b25 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b25)
  store %struct.Memory* %call_416b25, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 416b28	 Bytes: 4
  %loadMem_416b28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b28 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b28)
  store %struct.Memory* %call_416b28, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rdx	 RIP: 416b2c	 Bytes: 4
  %loadMem_416b2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b2c = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b2c)
  store %struct.Memory* %call_416b2c, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rdx)	 RIP: 416b30	 Bytes: 3
  %loadMem_416b30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b30 = call %struct.Memory* @routine_movq__rax____rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b30)
  store %struct.Memory* %call_416b30, %struct.Memory** %MEMORY

  ; Code: movl 0x661200, %ecx	 RIP: 416b33	 Bytes: 7
  %loadMem_416b33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b33 = call %struct.Memory* @routine_movl_0x661200___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b33)
  store %struct.Memory* %call_416b33, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %ecx	 RIP: 416b3a	 Bytes: 3
  %loadMem_416b3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b3a = call %struct.Memory* @routine_addl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b3a)
  store %struct.Memory* %call_416b3a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x661200	 RIP: 416b3d	 Bytes: 7
  %loadMem_416b3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b3d = call %struct.Memory* @routine_movl__ecx__0x661200(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b3d)
  store %struct.Memory* %call_416b3d, %struct.Memory** %MEMORY

  ; Code: .L_416b44:	 RIP: 416b44	 Bytes: 0
  br label %block_.L_416b44
block_.L_416b44:

  ; Code: jmpq .L_416b49	 RIP: 416b44	 Bytes: 5
  %loadMem_416b44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b44 = call %struct.Memory* @routine_jmpq_.L_416b49(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b44, i64 5, i64 5)
  store %struct.Memory* %call_416b44, %struct.Memory** %MEMORY

  br label %block_.L_416b49

  ; Code: .L_416b49:	 RIP: 416b49	 Bytes: 0
block_.L_416b49:

  ; Code: jmpq .L_416ba0	 RIP: 416b49	 Bytes: 5
  %loadMem_416b49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b49 = call %struct.Memory* @routine_jmpq_.L_416ba0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b49, i64 87, i64 5)
  store %struct.Memory* %call_416b49, %struct.Memory** %MEMORY

  br label %block_.L_416ba0

  ; Code: .L_416b4e:	 RIP: 416b4e	 Bytes: 0
block_.L_416b4e:

  ; Code: cmpq $0x0, 0x663070	 RIP: 416b4e	 Bytes: 9
  %loadMem_416b4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b4e = call %struct.Memory* @routine_cmpq__0x0__0x663070(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b4e)
  store %struct.Memory* %call_416b4e, %struct.Memory** %MEMORY

  ; Code: je .L_416b84	 RIP: 416b57	 Bytes: 6
  %loadMem_416b57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b57 = call %struct.Memory* @routine_je_.L_416b84(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b57, i8* %BRANCH_TAKEN, i64 45, i64 6, i64 6)
  store %struct.Memory* %call_416b57, %struct.Memory** %MEMORY

  %loadBr_416b57 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416b57 = icmp eq i8 %loadBr_416b57, 1
  br i1 %cmpBr_416b57, label %block_.L_416b84, label %block_416b5d

block_416b5d:
  ; Code: movq $0x456a9a, %rdi	 RIP: 416b5d	 Bytes: 10
  %loadMem_416b5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b5d = call %struct.Memory* @routine_movq__0x456a9a___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b5d)
  store %struct.Memory* %call_416b5d, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 416b67	 Bytes: 4
  %loadMem_416b67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b67 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b67)
  store %struct.Memory* %call_416b67, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 416b6b	 Bytes: 4
  %loadMem_416b6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b6b = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b6b)
  store %struct.Memory* %call_416b6b, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 416b6f	 Bytes: 4
  %loadMem_416b6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b6f = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b6f)
  store %struct.Memory* %call_416b6f, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 416b73	 Bytes: 3
  %loadMem_416b73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b73 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b73)
  store %struct.Memory* %call_416b73, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rsi	 RIP: 416b76	 Bytes: 3
  %loadMem_416b76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b76 = call %struct.Memory* @routine_movq___rax____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b76)
  store %struct.Memory* %call_416b76, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rdx	 RIP: 416b79	 Bytes: 4
  %loadMem_416b79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b79 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b79)
  store %struct.Memory* %call_416b79, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 416b7d	 Bytes: 2
  %loadMem_416b7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b7d = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b7d)
  store %struct.Memory* %call_416b7d, %struct.Memory** %MEMORY

  ; Code: callq .Die	 RIP: 416b7f	 Bytes: 5
  %loadMem1_416b7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_416b7f = call %struct.Memory* @routine_callq_.Die(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_416b7f, i64 163473, i64 5, i64 5)
  store %struct.Memory* %call1_416b7f, %struct.Memory** %MEMORY

  %loadMem2_416b7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_416b7f = load i64, i64* %3
  %call2_416b7f = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64  %loadPC_416b7f, %struct.Memory* %loadMem2_416b7f)
  store %struct.Memory* %call2_416b7f, %struct.Memory** %MEMORY

  ; Code: .L_416b84:	 RIP: 416b84	 Bytes: 0
  br label %block_.L_416b84
block_.L_416b84:

  ; Code: movq -0x40(%rbp), %rax	 RIP: 416b84	 Bytes: 4
  %loadMem_416b84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b84 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b84)
  store %struct.Memory* %call_416b84, %struct.Memory** %MEMORY

  ; Code: movq $0x0, (%rax)	 RIP: 416b88	 Bytes: 7
  %loadMem_416b88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b88 = call %struct.Memory* @routine_movq__0x0____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b88)
  store %struct.Memory* %call_416b88, %struct.Memory** %MEMORY

  ; Code: movl 0x661200, %ecx	 RIP: 416b8f	 Bytes: 7
  %loadMem_416b8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b8f = call %struct.Memory* @routine_movl_0x661200___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b8f)
  store %struct.Memory* %call_416b8f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 416b96	 Bytes: 3
  %loadMem_416b96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b96 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b96)
  store %struct.Memory* %call_416b96, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x661200	 RIP: 416b99	 Bytes: 7
  %loadMem_416b99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b99 = call %struct.Memory* @routine_movl__ecx__0x661200(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b99)
  store %struct.Memory* %call_416b99, %struct.Memory** %MEMORY

  ; Code: .L_416ba0:	 RIP: 416ba0	 Bytes: 0
  br label %block_.L_416ba0
block_.L_416ba0:

  ; Code: jmpq .L_416dc6	 RIP: 416ba0	 Bytes: 5
  %loadMem_416ba0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416ba0 = call %struct.Memory* @routine_jmpq_.L_416dc6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416ba0, i64 550, i64 5)
  store %struct.Memory* %call_416ba0, %struct.Memory** %MEMORY

  br label %block_.L_416dc6

  ; Code: .L_416ba5:	 RIP: 416ba5	 Bytes: 0
block_.L_416ba5:

  ; Code: cmpq $0x0, 0x663070	 RIP: 416ba5	 Bytes: 9
  %loadMem_416ba5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416ba5 = call %struct.Memory* @routine_cmpq__0x0__0x663070(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416ba5)
  store %struct.Memory* %call_416ba5, %struct.Memory** %MEMORY

  ; Code: jne .L_416bd0	 RIP: 416bae	 Bytes: 6
  %loadMem_416bae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416bae = call %struct.Memory* @routine_jne_.L_416bd0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416bae, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_416bae, %struct.Memory** %MEMORY

  %loadBr_416bae = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416bae = icmp eq i8 %loadBr_416bae, 1
  br i1 %cmpBr_416bae, label %block_.L_416bd0, label %block_416bb4

block_416bb4:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 416bb4	 Bytes: 4
  %loadMem_416bb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416bb4 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416bb4)
  store %struct.Memory* %call_416bb4, %struct.Memory** %MEMORY

  ; Code: movslq 0x661200, %rcx	 RIP: 416bb8	 Bytes: 8
  %loadMem_416bb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416bb8 = call %struct.Memory* @routine_movslq_0x661200___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416bb8)
  store %struct.Memory* %call_416bb8, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 416bc0	 Bytes: 4
  %loadMem_416bc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416bc0 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416bc0)
  store %struct.Memory* %call_416bc0, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rax	 RIP: 416bc4	 Bytes: 4
  %loadMem_416bc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416bc4 = call %struct.Memory* @routine_addq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416bc4)
  store %struct.Memory* %call_416bc4, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x663070	 RIP: 416bc8	 Bytes: 8
  %loadMem_416bc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416bc8 = call %struct.Memory* @routine_movq__rax__0x663070(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416bc8)
  store %struct.Memory* %call_416bc8, %struct.Memory** %MEMORY

  ; Code: .L_416bd0:	 RIP: 416bd0	 Bytes: 0
  br label %block_.L_416bd0
block_.L_416bd0:

  ; Code: movl $0xffffffff, -0x50(%rbp)	 RIP: 416bd0	 Bytes: 7
  %loadMem_416bd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416bd0 = call %struct.Memory* @routine_movl__0xffffffff__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416bd0)
  store %struct.Memory* %call_416bd0, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x44(%rbp)	 RIP: 416bd7	 Bytes: 7
  %loadMem_416bd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416bd7 = call %struct.Memory* @routine_movl__0x0__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416bd7)
  store %struct.Memory* %call_416bd7, %struct.Memory** %MEMORY

  ; Code: .L_416bde:	 RIP: 416bde	 Bytes: 0
  br label %block_.L_416bde
block_.L_416bde:

  ; Code: movl -0x44(%rbp), %eax	 RIP: 416bde	 Bytes: 3
  %loadMem_416bde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416bde = call %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416bde)
  store %struct.Memory* %call_416bde, %struct.Memory** %MEMORY

  ; Code: cmpl -0x1c(%rbp), %eax	 RIP: 416be1	 Bytes: 3
  %loadMem_416be1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416be1 = call %struct.Memory* @routine_cmpl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416be1)
  store %struct.Memory* %call_416be1, %struct.Memory** %MEMORY

  ; Code: jge .L_416c4a	 RIP: 416be4	 Bytes: 6
  %loadMem_416be4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416be4 = call %struct.Memory* @routine_jge_.L_416c4a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416be4, i8* %BRANCH_TAKEN, i64 102, i64 6, i64 6)
  store %struct.Memory* %call_416be4, %struct.Memory** %MEMORY

  %loadBr_416be4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416be4 = icmp eq i8 %loadBr_416be4, 1
  br i1 %cmpBr_416be4, label %block_.L_416c4a, label %block_416bea

block_416bea:
  ; Code: movq -0x18(%rbp), %rax	 RIP: 416bea	 Bytes: 4
  %loadMem_416bea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416bea = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416bea)
  store %struct.Memory* %call_416bea, %struct.Memory** %MEMORY

  ; Code: movslq -0x44(%rbp), %rcx	 RIP: 416bee	 Bytes: 4
  %loadMem_416bee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416bee = call %struct.Memory* @routine_movslq_MINUS0x44__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416bee)
  store %struct.Memory* %call_416bee, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 416bf2	 Bytes: 4
  %loadMem_416bf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416bf2 = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416bf2)
  store %struct.Memory* %call_416bf2, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 416bf6	 Bytes: 3
  %loadMem_416bf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416bf6 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416bf6)
  store %struct.Memory* %call_416bf6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x8(%rax)	 RIP: 416bf9	 Bytes: 4
  %loadMem_416bf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416bf9 = call %struct.Memory* @routine_cmpl__0x1__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416bf9)
  store %struct.Memory* %call_416bf9, %struct.Memory** %MEMORY

  ; Code: jne .L_416c37	 RIP: 416bfd	 Bytes: 6
  %loadMem_416bfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416bfd = call %struct.Memory* @routine_jne_.L_416c37(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416bfd, i8* %BRANCH_TAKEN, i64 58, i64 6, i64 6)
  store %struct.Memory* %call_416bfd, %struct.Memory** %MEMORY

  %loadBr_416bfd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416bfd = icmp eq i8 %loadBr_416bfd, 1
  br i1 %cmpBr_416bfd, label %block_.L_416c37, label %block_416c03

block_416c03:
  ; Code: movq 0x663070, %rax	 RIP: 416c03	 Bytes: 8
  %loadMem_416c03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c03 = call %struct.Memory* @routine_movq_0x663070___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c03)
  store %struct.Memory* %call_416c03, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax), %ecx	 RIP: 416c0b	 Bytes: 3
  %loadMem_416c0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c0b = call %struct.Memory* @routine_movsbl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c0b)
  store %struct.Memory* %call_416c0b, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 416c0e	 Bytes: 4
  %loadMem_416c0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c0e = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c0e)
  store %struct.Memory* %call_416c0e, %struct.Memory** %MEMORY

  ; Code: movslq -0x44(%rbp), %rdx	 RIP: 416c12	 Bytes: 4
  %loadMem_416c12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c12 = call %struct.Memory* @routine_movslq_MINUS0x44__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c12)
  store %struct.Memory* %call_416c12, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 416c16	 Bytes: 4
  %loadMem_416c16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c16 = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c16)
  store %struct.Memory* %call_416c16, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 416c1a	 Bytes: 3
  %loadMem_416c1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c1a = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c1a)
  store %struct.Memory* %call_416c1a, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 416c1d	 Bytes: 3
  %loadMem_416c1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c1d = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c1d)
  store %struct.Memory* %call_416c1d, %struct.Memory** %MEMORY

  ; Code: movsbl 0x1(%rax), %esi	 RIP: 416c20	 Bytes: 4
  %loadMem_416c20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c20 = call %struct.Memory* @routine_movsbl_0x1__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c20)
  store %struct.Memory* %call_416c20, %struct.Memory** %MEMORY

  ; Code: cmpl %esi, %ecx	 RIP: 416c24	 Bytes: 2
  %loadMem_416c24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c24 = call %struct.Memory* @routine_cmpl__esi___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c24)
  store %struct.Memory* %call_416c24, %struct.Memory** %MEMORY

  ; Code: jne .L_416c37	 RIP: 416c26	 Bytes: 6
  %loadMem_416c26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c26 = call %struct.Memory* @routine_jne_.L_416c37(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c26, i8* %BRANCH_TAKEN, i64 17, i64 6, i64 6)
  store %struct.Memory* %call_416c26, %struct.Memory** %MEMORY

  %loadBr_416c26 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416c26 = icmp eq i8 %loadBr_416c26, 1
  br i1 %cmpBr_416c26, label %block_.L_416c37, label %block_416c2c

block_416c2c:
  ; Code: movl -0x44(%rbp), %eax	 RIP: 416c2c	 Bytes: 3
  %loadMem_416c2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c2c = call %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c2c)
  store %struct.Memory* %call_416c2c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x50(%rbp)	 RIP: 416c2f	 Bytes: 3
  %loadMem_416c2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c2f = call %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c2f)
  store %struct.Memory* %call_416c2f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_416c4a	 RIP: 416c32	 Bytes: 5
  %loadMem_416c32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c32 = call %struct.Memory* @routine_jmpq_.L_416c4a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c32, i64 24, i64 5)
  store %struct.Memory* %call_416c32, %struct.Memory** %MEMORY

  br label %block_.L_416c4a

  ; Code: .L_416c37:	 RIP: 416c37	 Bytes: 0
block_.L_416c37:

  ; Code: jmpq .L_416c3c	 RIP: 416c37	 Bytes: 5
  %loadMem_416c37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c37 = call %struct.Memory* @routine_jmpq_.L_416c3c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c37, i64 5, i64 5)
  store %struct.Memory* %call_416c37, %struct.Memory** %MEMORY

  br label %block_.L_416c3c

  ; Code: .L_416c3c:	 RIP: 416c3c	 Bytes: 0
block_.L_416c3c:

  ; Code: movl -0x44(%rbp), %eax	 RIP: 416c3c	 Bytes: 3
  %loadMem_416c3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c3c = call %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c3c)
  store %struct.Memory* %call_416c3c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 416c3f	 Bytes: 3
  %loadMem_416c3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c3f = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c3f)
  store %struct.Memory* %call_416c3f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x44(%rbp)	 RIP: 416c42	 Bytes: 3
  %loadMem_416c42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c42 = call %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c42)
  store %struct.Memory* %call_416c42, %struct.Memory** %MEMORY

  ; Code: jmpq .L_416bde	 RIP: 416c45	 Bytes: 5
  %loadMem_416c45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c45 = call %struct.Memory* @routine_jmpq_.L_416bde(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c45, i64 -103, i64 5)
  store %struct.Memory* %call_416c45, %struct.Memory** %MEMORY

  br label %block_.L_416bde

  ; Code: .L_416c4a:	 RIP: 416c4a	 Bytes: 0
block_.L_416c4a:

  ; Code: cmpl $0xffffffff, -0x50(%rbp)	 RIP: 416c4a	 Bytes: 4
  %loadMem_416c4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c4a = call %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c4a)
  store %struct.Memory* %call_416c4a, %struct.Memory** %MEMORY

  ; Code: jne .L_416c74	 RIP: 416c4e	 Bytes: 6
  %loadMem_416c4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c4e = call %struct.Memory* @routine_jne_.L_416c74(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c4e, i8* %BRANCH_TAKEN, i64 38, i64 6, i64 6)
  store %struct.Memory* %call_416c4e, %struct.Memory** %MEMORY

  %loadBr_416c4e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416c4e = icmp eq i8 %loadBr_416c4e, 1
  br i1 %cmpBr_416c4e, label %block_.L_416c74, label %block_416c54

block_416c54:
  ; Code: movq $0x456ac1, %rdi	 RIP: 416c54	 Bytes: 10
  %loadMem_416c54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c54 = call %struct.Memory* @routine_movq__0x456ac1___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c54)
  store %struct.Memory* %call_416c54, %struct.Memory** %MEMORY

  ; Code: movq 0x663070, %rax	 RIP: 416c5e	 Bytes: 8
  %loadMem_416c5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c5e = call %struct.Memory* @routine_movq_0x663070___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c5e)
  store %struct.Memory* %call_416c5e, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax), %esi	 RIP: 416c66	 Bytes: 3
  %loadMem_416c66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c66 = call %struct.Memory* @routine_movsbl___rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c66)
  store %struct.Memory* %call_416c66, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rdx	 RIP: 416c69	 Bytes: 4
  %loadMem_416c69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c69 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c69)
  store %struct.Memory* %call_416c69, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 416c6d	 Bytes: 2
  %loadMem_416c6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c6d = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c6d)
  store %struct.Memory* %call_416c6d, %struct.Memory** %MEMORY

  ; Code: callq .Die	 RIP: 416c6f	 Bytes: 5
  %loadMem1_416c6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_416c6f = call %struct.Memory* @routine_callq_.Die(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_416c6f, i64 163233, i64 5, i64 5)
  store %struct.Memory* %call1_416c6f, %struct.Memory** %MEMORY

  %loadMem2_416c6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_416c6f = load i64, i64* %3
  %call2_416c6f = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64  %loadPC_416c6f, %struct.Memory* %loadMem2_416c6f)
  store %struct.Memory* %call2_416c6f, %struct.Memory** %MEMORY

  ; Code: .L_416c74:	 RIP: 416c74	 Bytes: 0
  br label %block_.L_416c74
block_.L_416c74:

  ; Code: movq -0x18(%rbp), %rax	 RIP: 416c74	 Bytes: 4
  %loadMem_416c74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c74 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c74)
  store %struct.Memory* %call_416c74, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 416c78	 Bytes: 4
  %loadMem_416c78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c78 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c78)
  store %struct.Memory* %call_416c78, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 416c7c	 Bytes: 4
  %loadMem_416c7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c7c = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c7c)
  store %struct.Memory* %call_416c7c, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 416c80	 Bytes: 3
  %loadMem_416c80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c80 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c80)
  store %struct.Memory* %call_416c80, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 416c83	 Bytes: 3
  %loadMem_416c83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c83 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c83)
  store %struct.Memory* %call_416c83, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 416c86	 Bytes: 4
  %loadMem_416c86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c86 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c86)
  store %struct.Memory* %call_416c86, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rcx)	 RIP: 416c8a	 Bytes: 3
  %loadMem_416c8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c8a = call %struct.Memory* @routine_movq__rax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c8a)
  store %struct.Memory* %call_416c8a, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 416c8d	 Bytes: 4
  %loadMem_416c8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c8d = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c8d)
  store %struct.Memory* %call_416c8d, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 416c91	 Bytes: 4
  %loadMem_416c91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c91 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c91)
  store %struct.Memory* %call_416c91, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 416c95	 Bytes: 4
  %loadMem_416c95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c95 = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c95)
  store %struct.Memory* %call_416c95, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 416c99	 Bytes: 3
  %loadMem_416c99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c99 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c99)
  store %struct.Memory* %call_416c99, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xc(%rax)	 RIP: 416c9c	 Bytes: 4
  %loadMem_416c9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c9c = call %struct.Memory* @routine_cmpl__0x0__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c9c)
  store %struct.Memory* %call_416c9c, %struct.Memory** %MEMORY

  ; Code: je .L_416d66	 RIP: 416ca0	 Bytes: 6
  %loadMem_416ca0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416ca0 = call %struct.Memory* @routine_je_.L_416d66(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416ca0, i8* %BRANCH_TAKEN, i64 198, i64 6, i64 6)
  store %struct.Memory* %call_416ca0, %struct.Memory** %MEMORY

  %loadBr_416ca0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416ca0 = icmp eq i8 %loadBr_416ca0, 1
  br i1 %cmpBr_416ca0, label %block_.L_416d66, label %block_416ca6

block_416ca6:
  ; Code: movq 0x663070, %rax	 RIP: 416ca6	 Bytes: 8
  %loadMem_416ca6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416ca6 = call %struct.Memory* @routine_movq_0x663070___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416ca6)
  store %struct.Memory* %call_416ca6, %struct.Memory** %MEMORY

  ; Code: movsbl 0x1(%rax), %ecx	 RIP: 416cae	 Bytes: 4
  %loadMem_416cae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416cae = call %struct.Memory* @routine_movsbl_0x1__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416cae)
  store %struct.Memory* %call_416cae, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 416cb2	 Bytes: 3
  %loadMem_416cb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416cb2 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416cb2)
  store %struct.Memory* %call_416cb2, %struct.Memory** %MEMORY

  ; Code: je .L_416ce4	 RIP: 416cb5	 Bytes: 6
  %loadMem_416cb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416cb5 = call %struct.Memory* @routine_je_.L_416ce4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416cb5, i8* %BRANCH_TAKEN, i64 47, i64 6, i64 6)
  store %struct.Memory* %call_416cb5, %struct.Memory** %MEMORY

  %loadBr_416cb5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416cb5 = icmp eq i8 %loadBr_416cb5, 1
  br i1 %cmpBr_416cb5, label %block_.L_416ce4, label %block_416cbb

block_416cbb:
  ; Code: movq 0x663070, %rax	 RIP: 416cbb	 Bytes: 8
  %loadMem_416cbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416cbb = call %struct.Memory* @routine_movq_0x663070___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416cbb)
  store %struct.Memory* %call_416cbb, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rax	 RIP: 416cc3	 Bytes: 4
  %loadMem_416cc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416cc3 = call %struct.Memory* @routine_addq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416cc3)
  store %struct.Memory* %call_416cc3, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 416cc7	 Bytes: 4
  %loadMem_416cc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416cc7 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416cc7)
  store %struct.Memory* %call_416cc7, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rcx)	 RIP: 416ccb	 Bytes: 3
  %loadMem_416ccb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416ccb = call %struct.Memory* @routine_movq__rax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416ccb)
  store %struct.Memory* %call_416ccb, %struct.Memory** %MEMORY

  ; Code: movl 0x661200, %edx	 RIP: 416cce	 Bytes: 7
  %loadMem_416cce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416cce = call %struct.Memory* @routine_movl_0x661200___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416cce)
  store %struct.Memory* %call_416cce, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 416cd5	 Bytes: 3
  %loadMem_416cd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416cd5 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416cd5)
  store %struct.Memory* %call_416cd5, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x661200	 RIP: 416cd8	 Bytes: 7
  %loadMem_416cd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416cd8 = call %struct.Memory* @routine_movl__edx__0x661200(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416cd8)
  store %struct.Memory* %call_416cd8, %struct.Memory** %MEMORY

  ; Code: jmpq .L_416d55	 RIP: 416cdf	 Bytes: 5
  %loadMem_416cdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416cdf = call %struct.Memory* @routine_jmpq_.L_416d55(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416cdf, i64 118, i64 5)
  store %struct.Memory* %call_416cdf, %struct.Memory** %MEMORY

  br label %block_.L_416d55

  ; Code: .L_416ce4:	 RIP: 416ce4	 Bytes: 0
block_.L_416ce4:

  ; Code: movl 0x661200, %eax	 RIP: 416ce4	 Bytes: 7
  %loadMem_416ce4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416ce4 = call %struct.Memory* @routine_movl_0x661200___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416ce4)
  store %struct.Memory* %call_416ce4, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 416ceb	 Bytes: 3
  %loadMem_416ceb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416ceb = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416ceb)
  store %struct.Memory* %call_416ceb, %struct.Memory** %MEMORY

  ; Code: cmpl -0x8(%rbp), %eax	 RIP: 416cee	 Bytes: 3
  %loadMem_416cee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416cee = call %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416cee)
  store %struct.Memory* %call_416cee, %struct.Memory** %MEMORY

  ; Code: jge .L_416d29	 RIP: 416cf1	 Bytes: 6
  %loadMem_416cf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416cf1 = call %struct.Memory* @routine_jge_.L_416d29(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416cf1, i8* %BRANCH_TAKEN, i64 56, i64 6, i64 6)
  store %struct.Memory* %call_416cf1, %struct.Memory** %MEMORY

  %loadBr_416cf1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416cf1 = icmp eq i8 %loadBr_416cf1, 1
  br i1 %cmpBr_416cf1, label %block_.L_416d29, label %block_416cf7

block_416cf7:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 416cf7	 Bytes: 4
  %loadMem_416cf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416cf7 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416cf7)
  store %struct.Memory* %call_416cf7, %struct.Memory** %MEMORY

  ; Code: movl 0x661200, %ecx	 RIP: 416cfb	 Bytes: 7
  %loadMem_416cfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416cfb = call %struct.Memory* @routine_movl_0x661200___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416cfb)
  store %struct.Memory* %call_416cfb, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 416d02	 Bytes: 3
  %loadMem_416d02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416d02 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416d02)
  store %struct.Memory* %call_416d02, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 416d05	 Bytes: 3
  %loadMem_416d05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416d05 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416d05)
  store %struct.Memory* %call_416d05, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 416d08	 Bytes: 4
  %loadMem_416d08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416d08 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416d08)
  store %struct.Memory* %call_416d08, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rdx	 RIP: 416d0c	 Bytes: 4
  %loadMem_416d0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416d0c = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416d0c)
  store %struct.Memory* %call_416d0c, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rdx)	 RIP: 416d10	 Bytes: 3
  %loadMem_416d10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416d10 = call %struct.Memory* @routine_movq__rax____rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416d10)
  store %struct.Memory* %call_416d10, %struct.Memory** %MEMORY

  ; Code: movl 0x661200, %ecx	 RIP: 416d13	 Bytes: 7
  %loadMem_416d13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416d13 = call %struct.Memory* @routine_movl_0x661200___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416d13)
  store %struct.Memory* %call_416d13, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %ecx	 RIP: 416d1a	 Bytes: 3
  %loadMem_416d1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416d1a = call %struct.Memory* @routine_addl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416d1a)
  store %struct.Memory* %call_416d1a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x661200	 RIP: 416d1d	 Bytes: 7
  %loadMem_416d1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416d1d = call %struct.Memory* @routine_movl__ecx__0x661200(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416d1d)
  store %struct.Memory* %call_416d1d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_416d50	 RIP: 416d24	 Bytes: 5
  %loadMem_416d24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416d24 = call %struct.Memory* @routine_jmpq_.L_416d50(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416d24, i64 44, i64 5)
  store %struct.Memory* %call_416d24, %struct.Memory** %MEMORY

  br label %block_.L_416d50

  ; Code: .L_416d29:	 RIP: 416d29	 Bytes: 0
block_.L_416d29:

  ; Code: movq $0x456a78, %rdi	 RIP: 416d29	 Bytes: 10
  %loadMem_416d29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416d29 = call %struct.Memory* @routine_movq__0x456a78___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416d29)
  store %struct.Memory* %call_416d29, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 416d33	 Bytes: 4
  %loadMem_416d33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416d33 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416d33)
  store %struct.Memory* %call_416d33, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 416d37	 Bytes: 4
  %loadMem_416d37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416d37 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416d37)
  store %struct.Memory* %call_416d37, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 416d3b	 Bytes: 4
  %loadMem_416d3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416d3b = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416d3b)
  store %struct.Memory* %call_416d3b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 416d3f	 Bytes: 3
  %loadMem_416d3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416d3f = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416d3f)
  store %struct.Memory* %call_416d3f, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rsi	 RIP: 416d42	 Bytes: 3
  %loadMem_416d42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416d42 = call %struct.Memory* @routine_movq___rax____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416d42)
  store %struct.Memory* %call_416d42, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rdx	 RIP: 416d45	 Bytes: 4
  %loadMem_416d45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416d45 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416d45)
  store %struct.Memory* %call_416d45, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 416d49	 Bytes: 2
  %loadMem_416d49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416d49 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416d49)
  store %struct.Memory* %call_416d49, %struct.Memory** %MEMORY

  ; Code: callq .Die	 RIP: 416d4b	 Bytes: 5
  %loadMem1_416d4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_416d4b = call %struct.Memory* @routine_callq_.Die(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_416d4b, i64 163013, i64 5, i64 5)
  store %struct.Memory* %call1_416d4b, %struct.Memory** %MEMORY

  %loadMem2_416d4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_416d4b = load i64, i64* %3
  %call2_416d4b = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64  %loadPC_416d4b, %struct.Memory* %loadMem2_416d4b)
  store %struct.Memory* %call2_416d4b, %struct.Memory** %MEMORY

  ; Code: .L_416d50:	 RIP: 416d50	 Bytes: 0
  br label %block_.L_416d50
block_.L_416d50:

  ; Code: jmpq .L_416d55	 RIP: 416d50	 Bytes: 5
  %loadMem_416d50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416d50 = call %struct.Memory* @routine_jmpq_.L_416d55(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416d50, i64 5, i64 5)
  store %struct.Memory* %call_416d50, %struct.Memory** %MEMORY

  br label %block_.L_416d55

  ; Code: .L_416d55:	 RIP: 416d55	 Bytes: 0
block_.L_416d55:

  ; Code: movq $0x0, 0x663070	 RIP: 416d55	 Bytes: 12
  %loadMem_416d55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416d55 = call %struct.Memory* @routine_movq__0x0__0x663070(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416d55)
  store %struct.Memory* %call_416d55, %struct.Memory** %MEMORY

  ; Code: jmpq .L_416dc1	 RIP: 416d61	 Bytes: 5
  %loadMem_416d61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416d61 = call %struct.Memory* @routine_jmpq_.L_416dc1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416d61, i64 96, i64 5)
  store %struct.Memory* %call_416d61, %struct.Memory** %MEMORY

  br label %block_.L_416dc1

  ; Code: .L_416d66:	 RIP: 416d66	 Bytes: 0
block_.L_416d66:

  ; Code: movq -0x40(%rbp), %rax	 RIP: 416d66	 Bytes: 4
  %loadMem_416d66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416d66 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416d66)
  store %struct.Memory* %call_416d66, %struct.Memory** %MEMORY

  ; Code: movq $0x0, (%rax)	 RIP: 416d6a	 Bytes: 7
  %loadMem_416d6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416d6a = call %struct.Memory* @routine_movq__0x0____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416d6a)
  store %struct.Memory* %call_416d6a, %struct.Memory** %MEMORY

  ; Code: movq 0x663070, %rax	 RIP: 416d71	 Bytes: 8
  %loadMem_416d71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416d71 = call %struct.Memory* @routine_movq_0x663070___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416d71)
  store %struct.Memory* %call_416d71, %struct.Memory** %MEMORY

  ; Code: movsbl 0x1(%rax), %ecx	 RIP: 416d79	 Bytes: 4
  %loadMem_416d79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416d79 = call %struct.Memory* @routine_movsbl_0x1__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416d79)
  store %struct.Memory* %call_416d79, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 416d7d	 Bytes: 3
  %loadMem_416d7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416d7d = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416d7d)
  store %struct.Memory* %call_416d7d, %struct.Memory** %MEMORY

  ; Code: je .L_416d9f	 RIP: 416d80	 Bytes: 6
  %loadMem_416d80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416d80 = call %struct.Memory* @routine_je_.L_416d9f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416d80, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_416d80, %struct.Memory** %MEMORY

  %loadBr_416d80 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416d80 = icmp eq i8 %loadBr_416d80, 1
  br i1 %cmpBr_416d80, label %block_.L_416d9f, label %block_416d86

block_416d86:
  ; Code: movq 0x663070, %rax	 RIP: 416d86	 Bytes: 8
  %loadMem_416d86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416d86 = call %struct.Memory* @routine_movq_0x663070___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416d86)
  store %struct.Memory* %call_416d86, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rax	 RIP: 416d8e	 Bytes: 4
  %loadMem_416d8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416d8e = call %struct.Memory* @routine_addq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416d8e)
  store %struct.Memory* %call_416d8e, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x663070	 RIP: 416d92	 Bytes: 8
  %loadMem_416d92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416d92 = call %struct.Memory* @routine_movq__rax__0x663070(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416d92)
  store %struct.Memory* %call_416d92, %struct.Memory** %MEMORY

  ; Code: jmpq .L_416dbc	 RIP: 416d9a	 Bytes: 5
  %loadMem_416d9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416d9a = call %struct.Memory* @routine_jmpq_.L_416dbc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416d9a, i64 34, i64 5)
  store %struct.Memory* %call_416d9a, %struct.Memory** %MEMORY

  br label %block_.L_416dbc

  ; Code: .L_416d9f:	 RIP: 416d9f	 Bytes: 0
block_.L_416d9f:

  ; Code: movl 0x661200, %eax	 RIP: 416d9f	 Bytes: 7
  %loadMem_416d9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416d9f = call %struct.Memory* @routine_movl_0x661200___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416d9f)
  store %struct.Memory* %call_416d9f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 416da6	 Bytes: 3
  %loadMem_416da6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416da6 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416da6)
  store %struct.Memory* %call_416da6, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x661200	 RIP: 416da9	 Bytes: 7
  %loadMem_416da9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416da9 = call %struct.Memory* @routine_movl__eax__0x661200(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416da9)
  store %struct.Memory* %call_416da9, %struct.Memory** %MEMORY

  ; Code: movq $0x0, 0x663070	 RIP: 416db0	 Bytes: 12
  %loadMem_416db0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416db0 = call %struct.Memory* @routine_movq__0x0__0x663070(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416db0)
  store %struct.Memory* %call_416db0, %struct.Memory** %MEMORY

  ; Code: .L_416dbc:	 RIP: 416dbc	 Bytes: 0
  br label %block_.L_416dbc
block_.L_416dbc:

  ; Code: jmpq .L_416dc1	 RIP: 416dbc	 Bytes: 5
  %loadMem_416dbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416dbc = call %struct.Memory* @routine_jmpq_.L_416dc1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416dbc, i64 5, i64 5)
  store %struct.Memory* %call_416dbc, %struct.Memory** %MEMORY

  br label %block_.L_416dc1

  ; Code: .L_416dc1:	 RIP: 416dc1	 Bytes: 0
block_.L_416dc1:

  ; Code: jmpq .L_416dc6	 RIP: 416dc1	 Bytes: 5
  %loadMem_416dc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416dc1 = call %struct.Memory* @routine_jmpq_.L_416dc6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416dc1, i64 5, i64 5)
  store %struct.Memory* %call_416dc1, %struct.Memory** %MEMORY

  br label %block_.L_416dc6

  ; Code: .L_416dc6:	 RIP: 416dc6	 Bytes: 0
block_.L_416dc6:

  ; Code: movq -0x18(%rbp), %rax	 RIP: 416dc6	 Bytes: 4
  %loadMem_416dc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416dc6 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416dc6)
  store %struct.Memory* %call_416dc6, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 416dca	 Bytes: 4
  %loadMem_416dca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416dca = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416dca)
  store %struct.Memory* %call_416dca, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 416dce	 Bytes: 4
  %loadMem_416dce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416dce = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416dce)
  store %struct.Memory* %call_416dce, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 416dd2	 Bytes: 3
  %loadMem_416dd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416dd2 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416dd2)
  store %struct.Memory* %call_416dd2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xc(%rax)	 RIP: 416dd5	 Bytes: 4
  %loadMem_416dd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416dd5 = call %struct.Memory* @routine_cmpl__0x0__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416dd5)
  store %struct.Memory* %call_416dd5, %struct.Memory** %MEMORY

  ; Code: je .L_416ef8	 RIP: 416dd9	 Bytes: 6
  %loadMem_416dd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416dd9 = call %struct.Memory* @routine_je_.L_416ef8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416dd9, i8* %BRANCH_TAKEN, i64 287, i64 6, i64 6)
  store %struct.Memory* %call_416dd9, %struct.Memory** %MEMORY

  %loadBr_416dd9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416dd9 = icmp eq i8 %loadBr_416dd9, 1
  br i1 %cmpBr_416dd9, label %block_.L_416ef8, label %block_416ddf

block_416ddf:
  ; Code: movq -0x18(%rbp), %rax	 RIP: 416ddf	 Bytes: 4
  %loadMem_416ddf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416ddf = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416ddf)
  store %struct.Memory* %call_416ddf, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 416de3	 Bytes: 4
  %loadMem_416de3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416de3 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416de3)
  store %struct.Memory* %call_416de3, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 416de7	 Bytes: 4
  %loadMem_416de7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416de7 = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416de7)
  store %struct.Memory* %call_416de7, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 416deb	 Bytes: 3
  %loadMem_416deb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416deb = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416deb)
  store %struct.Memory* %call_416deb, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0xc(%rax)	 RIP: 416dee	 Bytes: 4
  %loadMem_416dee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416dee = call %struct.Memory* @routine_cmpl__0x1__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416dee)
  store %struct.Memory* %call_416dee, %struct.Memory** %MEMORY

  ; Code: jne .L_416e39	 RIP: 416df2	 Bytes: 6
  %loadMem_416df2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416df2 = call %struct.Memory* @routine_jne_.L_416e39(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416df2, i8* %BRANCH_TAKEN, i64 71, i64 6, i64 6)
  store %struct.Memory* %call_416df2, %struct.Memory** %MEMORY

  %loadBr_416df2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416df2 = icmp eq i8 %loadBr_416df2, 1
  br i1 %cmpBr_416df2, label %block_.L_416e39, label %block_416df8

block_416df8:
  ; Code: movq -0x40(%rbp), %rax	 RIP: 416df8	 Bytes: 4
  %loadMem_416df8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416df8 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416df8)
  store %struct.Memory* %call_416df8, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdi	 RIP: 416dfc	 Bytes: 3
  %loadMem_416dfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416dfc = call %struct.Memory* @routine_movq___rax____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416dfc)
  store %struct.Memory* %call_416dfc, %struct.Memory** %MEMORY

  ; Code: callq .IsInt	 RIP: 416dff	 Bytes: 5
  %loadMem1_416dff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_416dff = call %struct.Memory* @routine_callq_.IsInt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_416dff, i64 238705, i64 5, i64 5)
  store %struct.Memory* %call1_416dff, %struct.Memory** %MEMORY

  %loadMem2_416dff = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_416dff = load i64, i64* %3
  %call2_416dff = call %struct.Memory* @sub_451270.IsInt(%struct.State* %0, i64  %loadPC_416dff, %struct.Memory* %loadMem2_416dff)
  store %struct.Memory* %call2_416dff, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 416e04	 Bytes: 3
  %loadMem_416e04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416e04 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416e04)
  store %struct.Memory* %call_416e04, %struct.Memory** %MEMORY

  ; Code: jne .L_416e39	 RIP: 416e07	 Bytes: 6
  %loadMem_416e07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416e07 = call %struct.Memory* @routine_jne_.L_416e39(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416e07, i8* %BRANCH_TAKEN, i64 50, i64 6, i64 6)
  store %struct.Memory* %call_416e07, %struct.Memory** %MEMORY

  %loadBr_416e07 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416e07 = icmp eq i8 %loadBr_416e07, 1
  br i1 %cmpBr_416e07, label %block_.L_416e39, label %block_416e0d

block_416e0d:
  ; Code: movq $0x456ad9, %rdi	 RIP: 416e0d	 Bytes: 10
  %loadMem_416e0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416e0d = call %struct.Memory* @routine_movq__0x456ad9___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416e0d)
  store %struct.Memory* %call_416e0d, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 416e17	 Bytes: 4
  %loadMem_416e17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416e17 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416e17)
  store %struct.Memory* %call_416e17, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 416e1b	 Bytes: 4
  %loadMem_416e1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416e1b = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416e1b)
  store %struct.Memory* %call_416e1b, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 416e1f	 Bytes: 4
  %loadMem_416e1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416e1f = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416e1f)
  store %struct.Memory* %call_416e1f, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 416e23	 Bytes: 3
  %loadMem_416e23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416e23 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416e23)
  store %struct.Memory* %call_416e23, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rsi	 RIP: 416e26	 Bytes: 3
  %loadMem_416e26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416e26 = call %struct.Memory* @routine_movq___rax____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416e26)
  store %struct.Memory* %call_416e26, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rdx	 RIP: 416e29	 Bytes: 4
  %loadMem_416e29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416e29 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416e29)
  store %struct.Memory* %call_416e29, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 416e2d	 Bytes: 2
  %loadMem_416e2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416e2d = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416e2d)
  store %struct.Memory* %call_416e2d, %struct.Memory** %MEMORY

  ; Code: callq .Die	 RIP: 416e2f	 Bytes: 5
  %loadMem1_416e2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_416e2f = call %struct.Memory* @routine_callq_.Die(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_416e2f, i64 162785, i64 5, i64 5)
  store %struct.Memory* %call1_416e2f, %struct.Memory** %MEMORY

  %loadMem2_416e2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_416e2f = load i64, i64* %3
  %call2_416e2f = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64  %loadPC_416e2f, %struct.Memory* %loadMem2_416e2f)
  store %struct.Memory* %call2_416e2f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_416ef3	 RIP: 416e34	 Bytes: 5
  %loadMem_416e34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416e34 = call %struct.Memory* @routine_jmpq_.L_416ef3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416e34, i64 191, i64 5)
  store %struct.Memory* %call_416e34, %struct.Memory** %MEMORY

  br label %block_.L_416ef3

  ; Code: .L_416e39:	 RIP: 416e39	 Bytes: 0
block_.L_416e39:

  ; Code: movq -0x18(%rbp), %rax	 RIP: 416e39	 Bytes: 4
  %loadMem_416e39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416e39 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416e39)
  store %struct.Memory* %call_416e39, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 416e3d	 Bytes: 4
  %loadMem_416e3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416e3d = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416e3d)
  store %struct.Memory* %call_416e3d, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 416e41	 Bytes: 4
  %loadMem_416e41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416e41 = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416e41)
  store %struct.Memory* %call_416e41, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 416e45	 Bytes: 3
  %loadMem_416e45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416e45 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416e45)
  store %struct.Memory* %call_416e45, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0xc(%rax)	 RIP: 416e48	 Bytes: 4
  %loadMem_416e48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416e48 = call %struct.Memory* @routine_cmpl__0x2__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416e48)
  store %struct.Memory* %call_416e48, %struct.Memory** %MEMORY

  ; Code: jne .L_416e93	 RIP: 416e4c	 Bytes: 6
  %loadMem_416e4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416e4c = call %struct.Memory* @routine_jne_.L_416e93(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416e4c, i8* %BRANCH_TAKEN, i64 71, i64 6, i64 6)
  store %struct.Memory* %call_416e4c, %struct.Memory** %MEMORY

  %loadBr_416e4c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416e4c = icmp eq i8 %loadBr_416e4c, 1
  br i1 %cmpBr_416e4c, label %block_.L_416e93, label %block_416e52

block_416e52:
  ; Code: movq -0x40(%rbp), %rax	 RIP: 416e52	 Bytes: 4
  %loadMem_416e52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416e52 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416e52)
  store %struct.Memory* %call_416e52, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdi	 RIP: 416e56	 Bytes: 3
  %loadMem_416e56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416e56 = call %struct.Memory* @routine_movq___rax____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416e56)
  store %struct.Memory* %call_416e56, %struct.Memory** %MEMORY

  ; Code: callq .IsReal	 RIP: 416e59	 Bytes: 5
  %loadMem1_416e59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_416e59 = call %struct.Memory* @routine_callq_.IsReal(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_416e59, i64 239175, i64 5, i64 5)
  store %struct.Memory* %call1_416e59, %struct.Memory** %MEMORY

  %loadMem2_416e59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_416e59 = load i64, i64* %3
  %call2_416e59 = call %struct.Memory* @sub_4514a0.IsReal(%struct.State* %0, i64  %loadPC_416e59, %struct.Memory* %loadMem2_416e59)
  store %struct.Memory* %call2_416e59, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 416e5e	 Bytes: 3
  %loadMem_416e5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416e5e = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416e5e)
  store %struct.Memory* %call_416e5e, %struct.Memory** %MEMORY

  ; Code: jne .L_416e93	 RIP: 416e61	 Bytes: 6
  %loadMem_416e61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416e61 = call %struct.Memory* @routine_jne_.L_416e93(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416e61, i8* %BRANCH_TAKEN, i64 50, i64 6, i64 6)
  store %struct.Memory* %call_416e61, %struct.Memory** %MEMORY

  %loadBr_416e61 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416e61 = icmp eq i8 %loadBr_416e61, 1
  br i1 %cmpBr_416e61, label %block_.L_416e93, label %block_416e67

block_416e67:
  ; Code: movq $0x456b03, %rdi	 RIP: 416e67	 Bytes: 10
  %loadMem_416e67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416e67 = call %struct.Memory* @routine_movq__0x456b03___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416e67)
  store %struct.Memory* %call_416e67, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 416e71	 Bytes: 4
  %loadMem_416e71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416e71 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416e71)
  store %struct.Memory* %call_416e71, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 416e75	 Bytes: 4
  %loadMem_416e75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416e75 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416e75)
  store %struct.Memory* %call_416e75, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 416e79	 Bytes: 4
  %loadMem_416e79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416e79 = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416e79)
  store %struct.Memory* %call_416e79, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 416e7d	 Bytes: 3
  %loadMem_416e7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416e7d = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416e7d)
  store %struct.Memory* %call_416e7d, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rsi	 RIP: 416e80	 Bytes: 3
  %loadMem_416e80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416e80 = call %struct.Memory* @routine_movq___rax____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416e80)
  store %struct.Memory* %call_416e80, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rdx	 RIP: 416e83	 Bytes: 4
  %loadMem_416e83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416e83 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416e83)
  store %struct.Memory* %call_416e83, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 416e87	 Bytes: 2
  %loadMem_416e87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416e87 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416e87)
  store %struct.Memory* %call_416e87, %struct.Memory** %MEMORY

  ; Code: callq .Die	 RIP: 416e89	 Bytes: 5
  %loadMem1_416e89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_416e89 = call %struct.Memory* @routine_callq_.Die(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_416e89, i64 162695, i64 5, i64 5)
  store %struct.Memory* %call1_416e89, %struct.Memory** %MEMORY

  %loadMem2_416e89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_416e89 = load i64, i64* %3
  %call2_416e89 = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64  %loadPC_416e89, %struct.Memory* %loadMem2_416e89)
  store %struct.Memory* %call2_416e89, %struct.Memory** %MEMORY

  ; Code: jmpq .L_416eee	 RIP: 416e8e	 Bytes: 5
  %loadMem_416e8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416e8e = call %struct.Memory* @routine_jmpq_.L_416eee(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416e8e, i64 96, i64 5)
  store %struct.Memory* %call_416e8e, %struct.Memory** %MEMORY

  br label %block_.L_416eee

  ; Code: .L_416e93:	 RIP: 416e93	 Bytes: 0
block_.L_416e93:

  ; Code: movq -0x18(%rbp), %rax	 RIP: 416e93	 Bytes: 4
  %loadMem_416e93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416e93 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416e93)
  store %struct.Memory* %call_416e93, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 416e97	 Bytes: 4
  %loadMem_416e97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416e97 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416e97)
  store %struct.Memory* %call_416e97, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 416e9b	 Bytes: 4
  %loadMem_416e9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416e9b = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416e9b)
  store %struct.Memory* %call_416e9b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 416e9f	 Bytes: 3
  %loadMem_416e9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416e9f = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416e9f)
  store %struct.Memory* %call_416e9f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, 0xc(%rax)	 RIP: 416ea2	 Bytes: 4
  %loadMem_416ea2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416ea2 = call %struct.Memory* @routine_cmpl__0x3__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416ea2)
  store %struct.Memory* %call_416ea2, %struct.Memory** %MEMORY

  ; Code: jne .L_416ee9	 RIP: 416ea6	 Bytes: 6
  %loadMem_416ea6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416ea6 = call %struct.Memory* @routine_jne_.L_416ee9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416ea6, i8* %BRANCH_TAKEN, i64 67, i64 6, i64 6)
  store %struct.Memory* %call_416ea6, %struct.Memory** %MEMORY

  %loadBr_416ea6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416ea6 = icmp eq i8 %loadBr_416ea6, 1
  br i1 %cmpBr_416ea6, label %block_.L_416ee9, label %block_416eac

block_416eac:
  ; Code: movq -0x40(%rbp), %rax	 RIP: 416eac	 Bytes: 4
  %loadMem_416eac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416eac = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416eac)
  store %struct.Memory* %call_416eac, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdi	 RIP: 416eb0	 Bytes: 3
  %loadMem_416eb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416eb0 = call %struct.Memory* @routine_movq___rax____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416eb0)
  store %struct.Memory* %call_416eb0, %struct.Memory** %MEMORY

  ; Code: callq .strlen_plt	 RIP: 416eb3	 Bytes: 5
  %loadMem1_416eb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_416eb3 = call %struct.Memory* @routine_callq_.strlen_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_416eb3, i64 -88659, i64 5, i64 5)
  store %struct.Memory* %call1_416eb3, %struct.Memory** %MEMORY

  %loadMem2_416eb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_416eb3 = load i64, i64* %3
  %call2_416eb3 = call %struct.Memory* @ext_strlen(%struct.State* %0, i64  %loadPC_416eb3, %struct.Memory* %loadMem2_416eb3)
  store %struct.Memory* %call2_416eb3, %struct.Memory** %MEMORY

  ; Code: cmpq $0x1, %rax	 RIP: 416eb8	 Bytes: 4
  %loadMem_416eb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416eb8 = call %struct.Memory* @routine_cmpq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416eb8)
  store %struct.Memory* %call_416eb8, %struct.Memory** %MEMORY

  ; Code: je .L_416ee9	 RIP: 416ebc	 Bytes: 6
  %loadMem_416ebc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416ebc = call %struct.Memory* @routine_je_.L_416ee9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416ebc, i8* %BRANCH_TAKEN, i64 45, i64 6, i64 6)
  store %struct.Memory* %call_416ebc, %struct.Memory** %MEMORY

  %loadBr_416ebc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416ebc = icmp eq i8 %loadBr_416ebc, 1
  br i1 %cmpBr_416ebc, label %block_.L_416ee9, label %block_416ec2

block_416ec2:
  ; Code: movq $0x456b2e, %rdi	 RIP: 416ec2	 Bytes: 10
  %loadMem_416ec2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416ec2 = call %struct.Memory* @routine_movq__0x456b2e___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416ec2)
  store %struct.Memory* %call_416ec2, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 416ecc	 Bytes: 4
  %loadMem_416ecc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416ecc = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416ecc)
  store %struct.Memory* %call_416ecc, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 416ed0	 Bytes: 4
  %loadMem_416ed0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416ed0 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416ed0)
  store %struct.Memory* %call_416ed0, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 416ed4	 Bytes: 4
  %loadMem_416ed4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416ed4 = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416ed4)
  store %struct.Memory* %call_416ed4, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 416ed8	 Bytes: 3
  %loadMem_416ed8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416ed8 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416ed8)
  store %struct.Memory* %call_416ed8, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rsi	 RIP: 416edb	 Bytes: 3
  %loadMem_416edb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416edb = call %struct.Memory* @routine_movq___rax____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416edb)
  store %struct.Memory* %call_416edb, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rdx	 RIP: 416ede	 Bytes: 4
  %loadMem_416ede = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416ede = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416ede)
  store %struct.Memory* %call_416ede, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 416ee2	 Bytes: 2
  %loadMem_416ee2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416ee2 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416ee2)
  store %struct.Memory* %call_416ee2, %struct.Memory** %MEMORY

  ; Code: callq .Die	 RIP: 416ee4	 Bytes: 5
  %loadMem1_416ee4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_416ee4 = call %struct.Memory* @routine_callq_.Die(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_416ee4, i64 162604, i64 5, i64 5)
  store %struct.Memory* %call1_416ee4, %struct.Memory** %MEMORY

  %loadMem2_416ee4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_416ee4 = load i64, i64* %3
  %call2_416ee4 = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64  %loadPC_416ee4, %struct.Memory* %loadMem2_416ee4)
  store %struct.Memory* %call2_416ee4, %struct.Memory** %MEMORY

  ; Code: .L_416ee9:	 RIP: 416ee9	 Bytes: 0
  br label %block_.L_416ee9
block_.L_416ee9:

  ; Code: jmpq .L_416eee	 RIP: 416ee9	 Bytes: 5
  %loadMem_416ee9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416ee9 = call %struct.Memory* @routine_jmpq_.L_416eee(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416ee9, i64 5, i64 5)
  store %struct.Memory* %call_416ee9, %struct.Memory** %MEMORY

  br label %block_.L_416eee

  ; Code: .L_416eee:	 RIP: 416eee	 Bytes: 0
block_.L_416eee:

  ; Code: jmpq .L_416ef3	 RIP: 416eee	 Bytes: 5
  %loadMem_416eee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416eee = call %struct.Memory* @routine_jmpq_.L_416ef3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416eee, i64 5, i64 5)
  store %struct.Memory* %call_416eee, %struct.Memory** %MEMORY

  br label %block_.L_416ef3

  ; Code: .L_416ef3:	 RIP: 416ef3	 Bytes: 0
block_.L_416ef3:

  ; Code: jmpq .L_416ef8	 RIP: 416ef3	 Bytes: 5
  %loadMem_416ef3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416ef3 = call %struct.Memory* @routine_jmpq_.L_416ef8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416ef3, i64 5, i64 5)
  store %struct.Memory* %call_416ef3, %struct.Memory** %MEMORY

  br label %block_.L_416ef8

  ; Code: .L_416ef8:	 RIP: 416ef8	 Bytes: 0
block_.L_416ef8:

  ; Code: movl 0x661200, %eax	 RIP: 416ef8	 Bytes: 7
  %loadMem_416ef8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416ef8 = call %struct.Memory* @routine_movl_0x661200___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416ef8)
  store %struct.Memory* %call_416ef8, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rcx	 RIP: 416eff	 Bytes: 4
  %loadMem_416eff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416eff = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416eff)
  store %struct.Memory* %call_416eff, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx)	 RIP: 416f03	 Bytes: 2
  %loadMem_416f03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416f03 = call %struct.Memory* @routine_movl__eax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416f03)
  store %struct.Memory* %call_416f03, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x4(%rbp)	 RIP: 416f05	 Bytes: 7
  %loadMem_416f05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416f05 = call %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416f05)
  store %struct.Memory* %call_416f05, %struct.Memory** %MEMORY

  ; Code: .L_416f0c:	 RIP: 416f0c	 Bytes: 0
  br label %block_.L_416f0c
block_.L_416f0c:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 416f0c	 Bytes: 3
  %loadMem_416f0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416f0c = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416f0c)
  store %struct.Memory* %call_416f0c, %struct.Memory** %MEMORY

  ; Code: addq $0x60, %rsp	 RIP: 416f0f	 Bytes: 4
  %loadMem_416f0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416f0f = call %struct.Memory* @routine_addq__0x60___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416f0f)
  store %struct.Memory* %call_416f0f, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 416f13	 Bytes: 1
  %loadMem_416f13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416f13 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416f13)
  store %struct.Memory* %call_416f13, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 416f14	 Bytes: 1
  %loadMem_416f14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416f14 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416f14)
  store %struct.Memory* %call_416f14, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_416f14
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

define %struct.Memory* @routine_subq__0x60___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 96)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq_0x18__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x10__rbp____r10(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R10, i64 %13)
  ret %struct.Memory* %16
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__ecx__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 28
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq__r8__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %R8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r9__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %R9
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r10__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %R10
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rax__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x0__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 80
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_0x661200___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x661200_type* @G_0x661200 to i64))
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_cmpl_MINUS0x8__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %ECX
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

define %struct.Memory* @routine_jge_.L_4167e6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_0x661200___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x661200_type* @G_0x661200 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  %7 = sext i8 %6 to i64
  %8 = and i64 %7, 4294967295
  store i64 %8, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movsbl___rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12)
  ret %struct.Memory* %15
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

define %struct.Memory* @routine_cmpl__0x2d___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDX = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %EDX
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 3
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 45)
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_jne_.L_4167e6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






define %struct.Memory* @routine_movq___rax__rcx_8____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %18)
  ret %struct.Memory* %21
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x456fc4___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x456fc4_type* @G__0x456fc4 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__edx___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_callq_.strcmp_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jne_.L_416815(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl_0x661200___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x661200_type* @G_0x661200 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax____rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RCX
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x0____rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 0)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 4
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_416f0c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_movl__0x456fc3___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x456fc3_type* @G__0x456fc3 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_jne_.L_41687a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__eax__0x661200(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x661200_type* @G_0x661200 to i64), i64 %10)
  ret %struct.Memory* %13
}



















define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 {
  %5 = inttoptr i64 %2 to i64*
  %6 = load i64, i64* %5
  %7 = sub i64 %6, %3
  %8 = icmp ult i64 %6, %3
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = trunc i64 %7 to i32
  %12 = and i32 %11, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12) #22
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i64 %6, %3
  %19 = xor i64 %18, %7
  %20 = lshr i64 %19, 4
  %21 = trunc i64 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i64 %7, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i64 %7, 63
  %28 = trunc i64 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %6, 63
  %31 = lshr i64 %3, 63
  %32 = xor i64 %30, %31
  %33 = xor i64 %27, %30
  %34 = add   i64 %33, %32
  %35 = icmp eq i64 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cmpq__0x0__0x663070(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 9
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x663070_type* @G_0x663070 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jne_.L_416ba5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x456fc3___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x456fc3_type* @G__0x456fc3 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x2___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 2)
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


define %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_0x661200___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G_0x661200_type* @G_0x661200 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq___rcx__rdi_8____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RDI
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_callq_.strncmp_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






define %struct.Memory* @routine_movl__0x3d___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 61)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_.strchr_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq__rax__0x663070(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x663070_type* @G_0x663070 to i64), i64 %9)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 {
  %5 = sub i64 %2, %3
  %6 = icmp ult i64 %2, %3
  %7 = zext i1 %6 to i8
  %8 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %7, i8* %8, align 1
  %9 = trunc i64 %5 to i32
  %10 = and i32 %9, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10) #22
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = xor i64 %3, %2
  %17 = xor i64 %16, %5
  %18 = lshr i64 %17, 4
  %19 = trunc i64 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i64 %5, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i64 %5, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i64 %2, 63
  %29 = lshr i64 %3, 63
  %30 = xor i64 %29, %28
  %31 = xor i64 %25, %28
  %32 = add   i64 %31, %30
  %33 = icmp eq i64 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cmpq__0x0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 0)
  ret %struct.Memory* %12
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

define %struct.Memory* @routine_je_.L_416903(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq_0x663070___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x663070_type* @G_0x663070 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i8
  %6 = inttoptr i64 %2 to i8*
  store i8 %5, i8* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__0x0____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 0)
  ret %struct.Memory* %12
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

define %struct.Memory* @routine_addq__0x1___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 1)
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_callq_.strlen_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_movl__edx__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 72
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__0x0__MINUS0x4c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 76
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x44__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 68
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl_MINUS0x1c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RBP
  %15 = sub i64 %14, 28
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_4169dc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x44__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
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

define %struct.Memory* @routine_shlq__0x4___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 4)
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

define %struct.Memory* @routine_cmpl__0x0__0x8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_4169c9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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










define %struct.Memory* @routine_movq___rax____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12)
  ret %struct.Memory* %15
}






define %struct.Memory* @routine_movq___rax__rcx_8____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %18)
  ret %struct.Memory* %21
}


define %struct.Memory* @routine_movslq_MINUS0x48__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 76
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 80
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movslq_MINUS0x48__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x44__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_shlq__0x4___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 4)
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


define %struct.Memory* @routine_movq___rdx____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movq__rcx__MINUS0x58__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0x58__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 {
  %5 = sub i64 %2, %3
  %6 = icmp ult i64 %2, %3
  %7 = zext i1 %6 to i8
  %8 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %7, i8* %8, align 1
  %9 = trunc i64 %5 to i32
  %10 = and i32 %9, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10) #22
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = xor i64 %3, %2
  %17 = xor i64 %16, %5
  %18 = lshr i64 %17, 4
  %19 = trunc i64 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i64 %5, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i64 %5, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i64 %2, 63
  %29 = lshr i64 %3, 63
  %30 = xor i64 %29, %28
  %31 = xor i64 %25, %28
  %32 = add   i64 %31, %30
  %33 = icmp eq i64 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cmpq__rax___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RAX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jne_.L_4169c4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jmpq_.L_4169dc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_4169c9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_4169ce(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 68
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_41692b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_cmpl__0x1__MINUS0x4c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 76
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
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

define %struct.Memory* @routine_jle_.L_416a37(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movslq_MINUS0x48__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x44__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_shlq__0x4___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 4)
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


define %struct.Memory* @routine_movq___rcx____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movq__rax__MINUS0x60__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0x60__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_je_.L_416a37(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq__0x456a2a___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x456a2a_type* @G__0x456a2a to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movq_MINUS0x28__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #2 {
  %5 = trunc i64 %3 to i8
  store i8 %5, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__0x0___al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 0)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_callq_.Die(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x4c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 76
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_416a66(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq__0x456a60___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x456a60_type* @G__0x456a60 to i64))
  ret %struct.Memory* %11
}
















define %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movq___rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movq__rax____rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RAX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_cmpl__0x0__0xc__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 12
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_416b4e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_je_.L_416ad8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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








define %struct.Memory* @routine_movq__0x0__0x663070(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 12
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x663070_type* @G_0x663070 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl_0x661200___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G_0x661200_type* @G_0x661200 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_addl__0x1___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__edx__0x661200(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDX = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %EDX
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x661200_type* @G_0x661200 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_416b49(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_jl_.L_416b17(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq__0x456a78___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x456a78_type* @G__0x456a78 to i64))
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_movq___rax____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12)
  ret %struct.Memory* %15
}








define %struct.Memory* @routine_jmpq_.L_416b44(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_addl__0x1___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 1)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq__ecx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RDX
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq_MINUS0x40__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax____rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %RAX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addl__0x2___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 2)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__ecx__0x661200(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x661200_type* @G_0x661200 to i64), i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_jmpq_.L_416ba0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_je_.L_416b84(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq__0x456a9a___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x456a9a_type* @G__0x456a9a to i64))
  ret %struct.Memory* %11
}


















define %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__0x0____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 0)
  ret %struct.Memory* %12
}








define %struct.Memory* @routine_jmpq_.L_416dc6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jne_.L_416bd0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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












define %struct.Memory* @routine_movl__0xffffffff__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 80
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -1)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_jge_.L_416c4a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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










define %struct.Memory* @routine_cmpl__0x1__0x8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_416c37(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_movsbl___rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12)
  ret %struct.Memory* %15
}








define %struct.Memory* @routine_addq__rdx___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RDX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movsbl_0x1__rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 1
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_cmpl__esi___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %ESI = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_jmpq_.L_416c4a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_416c3c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_416bde(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 80
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_416c74(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq__0x456ac1___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x456ac1_type* @G__0x456ac1 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movsbl___rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12)
  ret %struct.Memory* %15
}
































define %struct.Memory* @routine_je_.L_416d66(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_movsbl_0x1__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 1
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
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


define %struct.Memory* @routine_je_.L_416ce4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
















define %struct.Memory* @routine_jmpq_.L_416d55(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jge_.L_416d29(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






















define %struct.Memory* @routine_jmpq_.L_416d50(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
























define %struct.Memory* @routine_jmpq_.L_416dc1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_je_.L_416d9f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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








define %struct.Memory* @routine_jmpq_.L_416dbc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
























define %struct.Memory* @routine_je_.L_416ef8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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










define %struct.Memory* @routine_cmpl__0x1__0xc__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 12
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_416e39(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






define %struct.Memory* @routine_callq_.IsInt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






define %struct.Memory* @routine_movq__0x456ad9___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x456ad9_type* @G__0x456ad9 to i64))
  ret %struct.Memory* %11
}


















define %struct.Memory* @routine_jmpq_.L_416ef3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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










define %struct.Memory* @routine_cmpl__0x2__0xc__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 12
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_416e93(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






define %struct.Memory* @routine_callq_.IsReal(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






define %struct.Memory* @routine_movq__0x456b03___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x456b03_type* @G__0x456b03 to i64))
  ret %struct.Memory* %11
}


















define %struct.Memory* @routine_jmpq_.L_416eee(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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










define %struct.Memory* @routine_cmpl__0x3__0xc__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 12
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_416ee9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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








define %struct.Memory* @routine_cmpq__0x1___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_je_.L_416ee9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq__0x456b2e___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x456b2e_type* @G__0x456b2e to i64))
  ret %struct.Memory* %11
}






















define %struct.Memory* @routine_jmpq_.L_416ef8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 4
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addq__0x60___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 96)
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

