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

declare %struct.Memory* @sub_446320.sre_fgets(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_446800.IsBlankline(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_401700.strstr_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_446720.sre_strdup(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_446650.sre_strtok(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_451270.IsInt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_401480.strchr_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_43f970.Seqtype(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_43ea10.Die(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4014a0.rewind_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G__0x455d2b_type = type <{ [8 x i8] }>
@G__0x455d2b= global %G__0x455d2b_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x455d33_type = type <{ [8 x i8] }>
@G__0x455d33= global %G__0x455d33_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x458ccb_type = type <{ [8 x i8] }>
@G__0x458ccb= global %G__0x458ccb_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x458ce3_type = type <{ [8 x i8] }>
@G__0x458ce3= global %G__0x458ce3_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x458cfb_type = type <{ [8 x i8] }>
@G__0x458cfb= global %G__0x458cfb_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x458cfe_type = type <{ [8 x i8] }>
@G__0x458cfe= global %G__0x458cfe_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x45992c_type = type <{ [8 x i8] }>
@G__0x45992c= global %G__0x45992c_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x459931_type = type <{ [8 x i8] }>
@G__0x459931= global %G__0x459931_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4599e3_type = type <{ [8 x i8] }>
@G__0x4599e3= global %G__0x4599e3_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x459a08_type = type <{ [8 x i8] }>
@G__0x459a08= global %G__0x459a08_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x459a0d_type = type <{ [8 x i8] }>
@G__0x459a0d= global %G__0x459a0d_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x459a12_type = type <{ [8 x i8] }>
@G__0x459a12= global %G__0x459a12_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x459a17_type = type <{ [8 x i8] }>
@G__0x459a17= global %G__0x459a17_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x459a1c_type = type <{ [8 x i8] }>
@G__0x459a1c= global %G__0x459a1c_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x459a49_type = type <{ [8 x i8] }>
@G__0x459a49= global %G__0x459a49_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x459a76_type = type <{ [8 x i8] }>
@G__0x459a76= global %G__0x459a76_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x459aa3_type = type <{ [8 x i8] }>
@G__0x459aa3= global %G__0x459aa3_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x459fa3_type = type <{ [8 x i8] }>
@G__0x459fa3= global %G__0x459fa3_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x459fa8_type = type <{ [8 x i8] }>
@G__0x459fa8= global %G__0x459fa8_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x459fae_type = type <{ [8 x i8] }>
@G__0x459fae= global %G__0x459fae_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x459fbc_type = type <{ [8 x i8] }>
@G__0x459fbc= global %G__0x459fbc_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x459fca_type = type <{ [8 x i8] }>
@G__0x459fca= global %G__0x459fca_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x459fd9_type = type <{ [8 x i8] }>
@G__0x459fd9= global %G__0x459fd9_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x459fe0_type = type <{ [8 x i8] }>
@G__0x459fe0= global %G__0x459fe0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x459fe7_type = type <{ [8 x i8] }>
@G__0x459fe7= global %G__0x459fe7_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x459ff0_type = type <{ [8 x i8] }>
@G__0x459ff0= global %G__0x459ff0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x459ff7_type = type <{ [8 x i8] }>
@G__0x459ff7= global %G__0x459ff7_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x459fff_type = type <{ [8 x i8] }>
@G__0x459fff= global %G__0x459fff_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x45a005_type = type <{ [8 x i8] }>
@G__0x45a005= global %G__0x45a005_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x45a00b_type = type <{ [8 x i8] }>
@G__0x45a00b= global %G__0x45a00b_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x45a00e_type = type <{ [8 x i8] }>
@G__0x45a00e= global %G__0x45a00e_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x45a1f5_type = type <{ [8 x i8] }>
@G__0x45a1f5= global %G__0x45a1f5_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x45a46f_type = type <{ [8 x i8] }>
@G__0x45a46f= global %G__0x45a46f_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @SeqfileFormat(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .SeqfileFormat:	 RIP: 43f1d0	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 43f1d0	 Bytes: 1
  %loadMem_43f1d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f1d0 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f1d0)
  store %struct.Memory* %call_43f1d0, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 43f1d1	 Bytes: 3
  %loadMem_43f1d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f1d1 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f1d1)
  store %struct.Memory* %call_43f1d1, %struct.Memory** %MEMORY

  ; Code: subq $0x50, %rsp	 RIP: 43f1d4	 Bytes: 4
  %loadMem_43f1d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f1d4 = call %struct.Memory* @routine_subq__0x50___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f1d4)
  store %struct.Memory* %call_43f1d4, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x8(%rbp)	 RIP: 43f1d8	 Bytes: 4
  %loadMem_43f1d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f1d8 = call %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f1d8)
  store %struct.Memory* %call_43f1d8, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 43f1dc	 Bytes: 7
  %loadMem_43f1dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f1dc = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f1dc)
  store %struct.Memory* %call_43f1dc, %struct.Memory** %MEMORY

  ; Code: movq $0x0, -0x10(%rbp)	 RIP: 43f1e3	 Bytes: 8
  %loadMem_43f1e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f1e3 = call %struct.Memory* @routine_movq__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f1e3)
  store %struct.Memory* %call_43f1e3, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x14(%rbp)	 RIP: 43f1eb	 Bytes: 7
  %loadMem_43f1eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f1eb = call %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f1eb)
  store %struct.Memory* %call_43f1eb, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x1c(%rbp)	 RIP: 43f1f2	 Bytes: 7
  %loadMem_43f1f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f1f2 = call %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f1f2)
  store %struct.Memory* %call_43f1f2, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x44(%rbp)	 RIP: 43f1f9	 Bytes: 7
  %loadMem_43f1f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f1f9 = call %struct.Memory* @routine_movl__0x0__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f1f9)
  store %struct.Memory* %call_43f1f9, %struct.Memory** %MEMORY

  ; Code: .L_43f200:	 RIP: 43f200	 Bytes: 0
  br label %block_.L_43f200
block_.L_43f200:

  ; Code: leaq -0x10(%rbp), %rdi	 RIP: 43f200	 Bytes: 4
  %loadMem_43f200 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f200 = call %struct.Memory* @routine_leaq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f200)
  store %struct.Memory* %call_43f200, %struct.Memory** %MEMORY

  ; Code: leaq -0x14(%rbp), %rsi	 RIP: 43f204	 Bytes: 4
  %loadMem_43f204 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f204 = call %struct.Memory* @routine_leaq_MINUS0x14__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f204)
  store %struct.Memory* %call_43f204, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 43f208	 Bytes: 4
  %loadMem_43f208 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f208 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f208)
  store %struct.Memory* %call_43f208, %struct.Memory** %MEMORY

  ; Code: callq .sre_fgets	 RIP: 43f20c	 Bytes: 5
  %loadMem1_43f20c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43f20c = call %struct.Memory* @routine_callq_.sre_fgets(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43f20c, i64 28948, i64 5, i64 5)
  store %struct.Memory* %call1_43f20c, %struct.Memory** %MEMORY

  %loadMem2_43f20c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f20c = load i64, i64* %3
  %call2_43f20c = call %struct.Memory* @sub_446320.sre_fgets(%struct.State* %0, i64  %loadPC_43f20c, %struct.Memory* %loadMem2_43f20c)
  store %struct.Memory* %call2_43f20c, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 43f211	 Bytes: 4
  %loadMem_43f211 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f211 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f211)
  store %struct.Memory* %call_43f211, %struct.Memory** %MEMORY

  ; Code: je .L_43f85c	 RIP: 43f215	 Bytes: 6
  %loadMem_43f215 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f215 = call %struct.Memory* @routine_je_.L_43f85c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f215, i8* %BRANCH_TAKEN, i64 1607, i64 6, i64 6)
  store %struct.Memory* %call_43f215, %struct.Memory** %MEMORY

  %loadBr_43f215 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f215 = icmp eq i8 %loadBr_43f215, 1
  br i1 %cmpBr_43f215, label %block_.L_43f85c, label %block_43f21b

block_43f21b:
  ; Code: movq -0x10(%rbp), %rdi	 RIP: 43f21b	 Bytes: 4
  %loadMem_43f21b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f21b = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f21b)
  store %struct.Memory* %call_43f21b, %struct.Memory** %MEMORY

  ; Code: callq .IsBlankline	 RIP: 43f21f	 Bytes: 5
  %loadMem1_43f21f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43f21f = call %struct.Memory* @routine_callq_.IsBlankline(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43f21f, i64 30177, i64 5, i64 5)
  store %struct.Memory* %call1_43f21f, %struct.Memory** %MEMORY

  %loadMem2_43f21f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f21f = load i64, i64* %3
  %call2_43f21f = call %struct.Memory* @sub_446800.IsBlankline(%struct.State* %0, i64  %loadPC_43f21f, %struct.Memory* %loadMem2_43f21f)
  store %struct.Memory* %call2_43f21f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 43f224	 Bytes: 3
  %loadMem_43f224 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f224 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f224)
  store %struct.Memory* %call_43f224, %struct.Memory** %MEMORY

  ; Code: je .L_43f232	 RIP: 43f227	 Bytes: 6
  %loadMem_43f227 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f227 = call %struct.Memory* @routine_je_.L_43f232(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f227, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_43f227, %struct.Memory** %MEMORY

  %loadBr_43f227 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f227 = icmp eq i8 %loadBr_43f227, 1
  br i1 %cmpBr_43f227, label %block_.L_43f232, label %block_43f22d

block_43f22d:
  ; Code: jmpq .L_43f200	 RIP: 43f22d	 Bytes: 5
  %loadMem_43f22d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f22d = call %struct.Memory* @routine_jmpq_.L_43f200(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f22d, i64 -45, i64 5)
  store %struct.Memory* %call_43f22d, %struct.Memory** %MEMORY

  br label %block_.L_43f200

  ; Code: .L_43f232:	 RIP: 43f232	 Bytes: 0
block_.L_43f232:

  ; Code: cmpl $0x0, -0x1c(%rbp)	 RIP: 43f232	 Bytes: 4
  %loadMem_43f232 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f232 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f232)
  store %struct.Memory* %call_43f232, %struct.Memory** %MEMORY

  ; Code: jne .L_43f469	 RIP: 43f236	 Bytes: 6
  %loadMem_43f236 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f236 = call %struct.Memory* @routine_jne_.L_43f469(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f236, i8* %BRANCH_TAKEN, i64 563, i64 6, i64 6)
  store %struct.Memory* %call_43f236, %struct.Memory** %MEMORY

  %loadBr_43f236 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f236 = icmp eq i8 %loadBr_43f236, 1
  br i1 %cmpBr_43f236, label %block_.L_43f469, label %block_43f23c

block_43f23c:
  ; Code: movq $0x459fa3, %rsi	 RIP: 43f23c	 Bytes: 10
  %loadMem_43f23c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f23c = call %struct.Memory* @routine_movq__0x459fa3___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f23c)
  store %struct.Memory* %call_43f23c, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %eax	 RIP: 43f246	 Bytes: 5
  %loadMem_43f246 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f246 = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f246)
  store %struct.Memory* %call_43f246, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 43f24b	 Bytes: 2
  %loadMem_43f24b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f24b = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f24b)
  store %struct.Memory* %call_43f24b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 43f24d	 Bytes: 4
  %loadMem_43f24d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f24d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f24d)
  store %struct.Memory* %call_43f24d, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 43f251	 Bytes: 5
  %loadMem1_43f251 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43f251 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43f251, i64 -253569, i64 5, i64 5)
  store %struct.Memory* %call1_43f251, %struct.Memory** %MEMORY

  %loadMem2_43f251 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f251 = load i64, i64* %3
  %call2_43f251 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_43f251, %struct.Memory* %loadMem2_43f251)
  store %struct.Memory* %call2_43f251, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 43f256	 Bytes: 3
  %loadMem_43f256 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f256 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f256)
  store %struct.Memory* %call_43f256, %struct.Memory** %MEMORY

  ; Code: jne .L_43f288	 RIP: 43f259	 Bytes: 6
  %loadMem_43f259 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f259 = call %struct.Memory* @routine_jne_.L_43f288(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f259, i8* %BRANCH_TAKEN, i64 47, i64 6, i64 6)
  store %struct.Memory* %call_43f259, %struct.Memory** %MEMORY

  %loadBr_43f259 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f259 = icmp eq i8 %loadBr_43f259, 1
  br i1 %cmpBr_43f259, label %block_.L_43f288, label %block_43f25f

block_43f25f:
  ; Code: movq $0x459fa8, %rsi	 RIP: 43f25f	 Bytes: 10
  %loadMem_43f25f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f25f = call %struct.Memory* @routine_movq__0x459fa8___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f25f)
  store %struct.Memory* %call_43f25f, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 43f269	 Bytes: 4
  %loadMem_43f269 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f269 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f269)
  store %struct.Memory* %call_43f269, %struct.Memory** %MEMORY

  ; Code: callq .strstr_plt	 RIP: 43f26d	 Bytes: 5
  %loadMem1_43f26d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43f26d = call %struct.Memory* @routine_callq_.strstr_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43f26d, i64 -252781, i64 5, i64 5)
  store %struct.Memory* %call1_43f26d, %struct.Memory** %MEMORY

  %loadMem2_43f26d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f26d = load i64, i64* %3
  %call2_43f26d = call %struct.Memory* @sub_401700.strstr_plt(%struct.State* %0, i64  %loadPC_43f26d, %struct.Memory* %loadMem2_43f26d)
  store %struct.Memory* %call2_43f26d, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 43f272	 Bytes: 4
  %loadMem_43f272 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f272 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f272)
  store %struct.Memory* %call_43f272, %struct.Memory** %MEMORY

  ; Code: je .L_43f288	 RIP: 43f276	 Bytes: 6
  %loadMem_43f276 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f276 = call %struct.Memory* @routine_je_.L_43f288(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f276, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_43f276, %struct.Memory** %MEMORY

  %loadBr_43f276 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f276 = icmp eq i8 %loadBr_43f276, 1
  br i1 %cmpBr_43f276, label %block_.L_43f288, label %block_43f27c

block_43f27c:
  ; Code: movl $0x10, -0x18(%rbp)	 RIP: 43f27c	 Bytes: 7
  %loadMem_43f27c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f27c = call %struct.Memory* @routine_movl__0x10__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f27c)
  store %struct.Memory* %call_43f27c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43f899	 RIP: 43f283	 Bytes: 5
  %loadMem_43f283 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f283 = call %struct.Memory* @routine_jmpq_.L_43f899(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f283, i64 1558, i64 5)
  store %struct.Memory* %call_43f283, %struct.Memory** %MEMORY

  br label %block_.L_43f899

  ; Code: .L_43f288:	 RIP: 43f288	 Bytes: 0
block_.L_43f288:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43f288	 Bytes: 4
  %loadMem_43f288 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f288 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f288)
  store %struct.Memory* %call_43f288, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax), %ecx	 RIP: 43f28c	 Bytes: 3
  %loadMem_43f28c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f28c = call %struct.Memory* @routine_movsbl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f28c)
  store %struct.Memory* %call_43f28c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3e, %ecx	 RIP: 43f28f	 Bytes: 3
  %loadMem_43f28f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f28f = call %struct.Memory* @routine_cmpl__0x3e___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f28f)
  store %struct.Memory* %call_43f28f, %struct.Memory** %MEMORY

  ; Code: jne .L_43f2a4	 RIP: 43f292	 Bytes: 6
  %loadMem_43f292 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f292 = call %struct.Memory* @routine_jne_.L_43f2a4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f292, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_43f292, %struct.Memory** %MEMORY

  %loadBr_43f292 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f292 = icmp eq i8 %loadBr_43f292, 1
  br i1 %cmpBr_43f292, label %block_.L_43f2a4, label %block_43f298

block_43f298:
  ; Code: movl $0x7, -0x18(%rbp)	 RIP: 43f298	 Bytes: 7
  %loadMem_43f298 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f298 = call %struct.Memory* @routine_movl__0x7__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f298)
  store %struct.Memory* %call_43f298, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43f899	 RIP: 43f29f	 Bytes: 5
  %loadMem_43f29f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f29f = call %struct.Memory* @routine_jmpq_.L_43f899(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f29f, i64 1530, i64 5)
  store %struct.Memory* %call_43f29f, %struct.Memory** %MEMORY

  br label %block_.L_43f899

  ; Code: .L_43f2a4:	 RIP: 43f2a4	 Bytes: 0
block_.L_43f2a4:

  ; Code: movq $0x459fae, %rsi	 RIP: 43f2a4	 Bytes: 10
  %loadMem_43f2a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f2a4 = call %struct.Memory* @routine_movq__0x459fae___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f2a4)
  store %struct.Memory* %call_43f2a4, %struct.Memory** %MEMORY

  ; Code: movl $0xd, %eax	 RIP: 43f2ae	 Bytes: 5
  %loadMem_43f2ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f2ae = call %struct.Memory* @routine_movl__0xd___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f2ae)
  store %struct.Memory* %call_43f2ae, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 43f2b3	 Bytes: 2
  %loadMem_43f2b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f2b3 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f2b3)
  store %struct.Memory* %call_43f2b3, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 43f2b5	 Bytes: 4
  %loadMem_43f2b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f2b5 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f2b5)
  store %struct.Memory* %call_43f2b5, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 43f2b9	 Bytes: 5
  %loadMem1_43f2b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43f2b9 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43f2b9, i64 -253673, i64 5, i64 5)
  store %struct.Memory* %call1_43f2b9, %struct.Memory** %MEMORY

  %loadMem2_43f2b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f2b9 = load i64, i64* %3
  %call2_43f2b9 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_43f2b9, %struct.Memory* %loadMem2_43f2b9)
  store %struct.Memory* %call2_43f2b9, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 43f2be	 Bytes: 3
  %loadMem_43f2be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f2be = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f2be)
  store %struct.Memory* %call_43f2be, %struct.Memory** %MEMORY

  ; Code: je .L_43f2ea	 RIP: 43f2c1	 Bytes: 6
  %loadMem_43f2c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f2c1 = call %struct.Memory* @routine_je_.L_43f2ea(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f2c1, i8* %BRANCH_TAKEN, i64 41, i64 6, i64 6)
  store %struct.Memory* %call_43f2c1, %struct.Memory** %MEMORY

  %loadBr_43f2c1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f2c1 = icmp eq i8 %loadBr_43f2c1, 1
  br i1 %cmpBr_43f2c1, label %block_.L_43f2ea, label %block_43f2c7

block_43f2c7:
  ; Code: movq $0x459fbc, %rsi	 RIP: 43f2c7	 Bytes: 10
  %loadMem_43f2c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f2c7 = call %struct.Memory* @routine_movq__0x459fbc___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f2c7)
  store %struct.Memory* %call_43f2c7, %struct.Memory** %MEMORY

  ; Code: movl $0xd, %eax	 RIP: 43f2d1	 Bytes: 5
  %loadMem_43f2d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f2d1 = call %struct.Memory* @routine_movl__0xd___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f2d1)
  store %struct.Memory* %call_43f2d1, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 43f2d6	 Bytes: 2
  %loadMem_43f2d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f2d6 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f2d6)
  store %struct.Memory* %call_43f2d6, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 43f2d8	 Bytes: 4
  %loadMem_43f2d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f2d8 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f2d8)
  store %struct.Memory* %call_43f2d8, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 43f2dc	 Bytes: 5
  %loadMem1_43f2dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43f2dc = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43f2dc, i64 -253708, i64 5, i64 5)
  store %struct.Memory* %call1_43f2dc, %struct.Memory** %MEMORY

  %loadMem2_43f2dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f2dc = load i64, i64* %3
  %call2_43f2dc = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_43f2dc, %struct.Memory* %loadMem2_43f2dc)
  store %struct.Memory* %call2_43f2dc, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 43f2e1	 Bytes: 3
  %loadMem_43f2e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f2e1 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f2e1)
  store %struct.Memory* %call_43f2e1, %struct.Memory** %MEMORY

  ; Code: jne .L_43f2f6	 RIP: 43f2e4	 Bytes: 6
  %loadMem_43f2e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f2e4 = call %struct.Memory* @routine_jne_.L_43f2f6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f2e4, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_43f2e4, %struct.Memory** %MEMORY

  %loadBr_43f2e4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f2e4 = icmp eq i8 %loadBr_43f2e4, 1
  br i1 %cmpBr_43f2e4, label %block_.L_43f2f6, label %block_.L_43f2ea

  ; Code: .L_43f2ea:	 RIP: 43f2ea	 Bytes: 0
block_.L_43f2ea:

  ; Code: movl $0x5, -0x18(%rbp)	 RIP: 43f2ea	 Bytes: 7
  %loadMem_43f2ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f2ea = call %struct.Memory* @routine_movl__0x5__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f2ea)
  store %struct.Memory* %call_43f2ea, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43f899	 RIP: 43f2f1	 Bytes: 5
  %loadMem_43f2f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f2f1 = call %struct.Memory* @routine_jmpq_.L_43f899(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f2f1, i64 1448, i64 5)
  store %struct.Memory* %call_43f2f1, %struct.Memory** %MEMORY

  br label %block_.L_43f899

  ; Code: .L_43f2f6:	 RIP: 43f2f6	 Bytes: 0
block_.L_43f2f6:

  ; Code: movq $0x459fca, %rsi	 RIP: 43f2f6	 Bytes: 10
  %loadMem_43f2f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f2f6 = call %struct.Memory* @routine_movq__0x459fca___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f2f6)
  store %struct.Memory* %call_43f2f6, %struct.Memory** %MEMORY

  ; Code: movl $0xe, %eax	 RIP: 43f300	 Bytes: 5
  %loadMem_43f300 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f300 = call %struct.Memory* @routine_movl__0xe___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f300)
  store %struct.Memory* %call_43f300, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 43f305	 Bytes: 2
  %loadMem_43f305 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f305 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f305)
  store %struct.Memory* %call_43f305, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 43f307	 Bytes: 4
  %loadMem_43f307 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f307 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f307)
  store %struct.Memory* %call_43f307, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 43f30b	 Bytes: 5
  %loadMem1_43f30b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43f30b = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43f30b, i64 -253755, i64 5, i64 5)
  store %struct.Memory* %call1_43f30b, %struct.Memory** %MEMORY

  %loadMem2_43f30b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f30b = load i64, i64* %3
  %call2_43f30b = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_43f30b, %struct.Memory* %loadMem2_43f30b)
  store %struct.Memory* %call2_43f30b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 43f310	 Bytes: 3
  %loadMem_43f310 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f310 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f310)
  store %struct.Memory* %call_43f310, %struct.Memory** %MEMORY

  ; Code: jne .L_43f325	 RIP: 43f313	 Bytes: 6
  %loadMem_43f313 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f313 = call %struct.Memory* @routine_jne_.L_43f325(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f313, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_43f313, %struct.Memory** %MEMORY

  %loadBr_43f313 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f313 = icmp eq i8 %loadBr_43f313, 1
  br i1 %cmpBr_43f313, label %block_.L_43f325, label %block_43f319

block_43f319:
  ; Code: movl $0x65, -0x18(%rbp)	 RIP: 43f319	 Bytes: 7
  %loadMem_43f319 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f319 = call %struct.Memory* @routine_movl__0x65__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f319)
  store %struct.Memory* %call_43f319, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43f899	 RIP: 43f320	 Bytes: 5
  %loadMem_43f320 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f320 = call %struct.Memory* @routine_jmpq_.L_43f899(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f320, i64 1401, i64 5)
  store %struct.Memory* %call_43f320, %struct.Memory** %MEMORY

  br label %block_.L_43f899

  ; Code: .L_43f325:	 RIP: 43f325	 Bytes: 0
block_.L_43f325:

  ; Code: movq $0x455d2b, %rsi	 RIP: 43f325	 Bytes: 10
  %loadMem_43f325 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f325 = call %struct.Memory* @routine_movq__0x455d2b___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f325)
  store %struct.Memory* %call_43f325, %struct.Memory** %MEMORY

  ; Code: movl $0x7, %eax	 RIP: 43f32f	 Bytes: 5
  %loadMem_43f32f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f32f = call %struct.Memory* @routine_movl__0x7___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f32f)
  store %struct.Memory* %call_43f32f, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 43f334	 Bytes: 2
  %loadMem_43f334 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f334 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f334)
  store %struct.Memory* %call_43f334, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 43f336	 Bytes: 4
  %loadMem_43f336 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f336 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f336)
  store %struct.Memory* %call_43f336, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 43f33a	 Bytes: 5
  %loadMem1_43f33a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43f33a = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43f33a, i64 -253802, i64 5, i64 5)
  store %struct.Memory* %call1_43f33a, %struct.Memory** %MEMORY

  %loadMem2_43f33a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f33a = load i64, i64* %3
  %call2_43f33a = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_43f33a, %struct.Memory* %loadMem2_43f33a)
  store %struct.Memory* %call2_43f33a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 43f33f	 Bytes: 3
  %loadMem_43f33f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f33f = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f33f)
  store %struct.Memory* %call_43f33f, %struct.Memory** %MEMORY

  ; Code: jne .L_43f371	 RIP: 43f342	 Bytes: 6
  %loadMem_43f342 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f342 = call %struct.Memory* @routine_jne_.L_43f371(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f342, i8* %BRANCH_TAKEN, i64 47, i64 6, i64 6)
  store %struct.Memory* %call_43f342, %struct.Memory** %MEMORY

  %loadBr_43f342 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f342 = icmp eq i8 %loadBr_43f342, 1
  br i1 %cmpBr_43f342, label %block_.L_43f371, label %block_43f348

block_43f348:
  ; Code: movq $0x455d33, %rsi	 RIP: 43f348	 Bytes: 10
  %loadMem_43f348 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f348 = call %struct.Memory* @routine_movq__0x455d33___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f348)
  store %struct.Memory* %call_43f348, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 43f352	 Bytes: 4
  %loadMem_43f352 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f352 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f352)
  store %struct.Memory* %call_43f352, %struct.Memory** %MEMORY

  ; Code: callq .strstr_plt	 RIP: 43f356	 Bytes: 5
  %loadMem1_43f356 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43f356 = call %struct.Memory* @routine_callq_.strstr_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43f356, i64 -253014, i64 5, i64 5)
  store %struct.Memory* %call1_43f356, %struct.Memory** %MEMORY

  %loadMem2_43f356 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f356 = load i64, i64* %3
  %call2_43f356 = call %struct.Memory* @sub_401700.strstr_plt(%struct.State* %0, i64  %loadPC_43f356, %struct.Memory* %loadMem2_43f356)
  store %struct.Memory* %call2_43f356, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 43f35b	 Bytes: 4
  %loadMem_43f35b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f35b = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f35b)
  store %struct.Memory* %call_43f35b, %struct.Memory** %MEMORY

  ; Code: je .L_43f371	 RIP: 43f35f	 Bytes: 6
  %loadMem_43f35f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f35f = call %struct.Memory* @routine_je_.L_43f371(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f35f, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_43f35f, %struct.Memory** %MEMORY

  %loadBr_43f35f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f35f = icmp eq i8 %loadBr_43f35f, 1
  br i1 %cmpBr_43f35f, label %block_.L_43f371, label %block_43f365

block_43f365:
  ; Code: movl $0x68, -0x18(%rbp)	 RIP: 43f365	 Bytes: 7
  %loadMem_43f365 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f365 = call %struct.Memory* @routine_movl__0x68__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f365)
  store %struct.Memory* %call_43f365, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43f899	 RIP: 43f36c	 Bytes: 5
  %loadMem_43f36c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f36c = call %struct.Memory* @routine_jmpq_.L_43f899(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f36c, i64 1325, i64 5)
  store %struct.Memory* %call_43f36c, %struct.Memory** %MEMORY

  br label %block_.L_43f899

  ; Code: .L_43f371:	 RIP: 43f371	 Bytes: 0
block_.L_43f371:

  ; Code: movq $0x458ccb, %rsi	 RIP: 43f371	 Bytes: 10
  %loadMem_43f371 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f371 = call %struct.Memory* @routine_movq__0x458ccb___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f371)
  store %struct.Memory* %call_43f371, %struct.Memory** %MEMORY

  ; Code: movl $0x17, %eax	 RIP: 43f37b	 Bytes: 5
  %loadMem_43f37b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f37b = call %struct.Memory* @routine_movl__0x17___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f37b)
  store %struct.Memory* %call_43f37b, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 43f380	 Bytes: 2
  %loadMem_43f380 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f380 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f380)
  store %struct.Memory* %call_43f380, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 43f382	 Bytes: 4
  %loadMem_43f382 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f382 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f382)
  store %struct.Memory* %call_43f382, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 43f386	 Bytes: 5
  %loadMem1_43f386 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43f386 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43f386, i64 -253878, i64 5, i64 5)
  store %struct.Memory* %call1_43f386, %struct.Memory** %MEMORY

  %loadMem2_43f386 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f386 = load i64, i64* %3
  %call2_43f386 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_43f386, %struct.Memory* %loadMem2_43f386)
  store %struct.Memory* %call2_43f386, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 43f38b	 Bytes: 3
  %loadMem_43f38b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f38b = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f38b)
  store %struct.Memory* %call_43f38b, %struct.Memory** %MEMORY

  ; Code: je .L_43f3b7	 RIP: 43f38e	 Bytes: 6
  %loadMem_43f38e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f38e = call %struct.Memory* @routine_je_.L_43f3b7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f38e, i8* %BRANCH_TAKEN, i64 41, i64 6, i64 6)
  store %struct.Memory* %call_43f38e, %struct.Memory** %MEMORY

  %loadBr_43f38e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f38e = icmp eq i8 %loadBr_43f38e, 1
  br i1 %cmpBr_43f38e, label %block_.L_43f3b7, label %block_43f394

block_43f394:
  ; Code: movq $0x458ce3, %rsi	 RIP: 43f394	 Bytes: 10
  %loadMem_43f394 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f394 = call %struct.Memory* @routine_movq__0x458ce3___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f394)
  store %struct.Memory* %call_43f394, %struct.Memory** %MEMORY

  ; Code: movl $0x17, %eax	 RIP: 43f39e	 Bytes: 5
  %loadMem_43f39e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f39e = call %struct.Memory* @routine_movl__0x17___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f39e)
  store %struct.Memory* %call_43f39e, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 43f3a3	 Bytes: 2
  %loadMem_43f3a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f3a3 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f3a3)
  store %struct.Memory* %call_43f3a3, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 43f3a5	 Bytes: 4
  %loadMem_43f3a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f3a5 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f3a5)
  store %struct.Memory* %call_43f3a5, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 43f3a9	 Bytes: 5
  %loadMem1_43f3a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43f3a9 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43f3a9, i64 -253913, i64 5, i64 5)
  store %struct.Memory* %call1_43f3a9, %struct.Memory** %MEMORY

  %loadMem2_43f3a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f3a9 = load i64, i64* %3
  %call2_43f3a9 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_43f3a9, %struct.Memory* %loadMem2_43f3a9)
  store %struct.Memory* %call2_43f3a9, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 43f3ae	 Bytes: 3
  %loadMem_43f3ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f3ae = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f3ae)
  store %struct.Memory* %call_43f3ae, %struct.Memory** %MEMORY

  ; Code: jne .L_43f3c3	 RIP: 43f3b1	 Bytes: 6
  %loadMem_43f3b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f3b1 = call %struct.Memory* @routine_jne_.L_43f3c3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f3b1, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_43f3b1, %struct.Memory** %MEMORY

  %loadBr_43f3b1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f3b1 = icmp eq i8 %loadBr_43f3b1, 1
  br i1 %cmpBr_43f3b1, label %block_.L_43f3c3, label %block_.L_43f3b7

  ; Code: .L_43f3b7:	 RIP: 43f3b7	 Bytes: 0
block_.L_43f3b7:

  ; Code: movl $0x67, -0x18(%rbp)	 RIP: 43f3b7	 Bytes: 7
  %loadMem_43f3b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f3b7 = call %struct.Memory* @routine_movl__0x67__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f3b7)
  store %struct.Memory* %call_43f3b7, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43f899	 RIP: 43f3be	 Bytes: 5
  %loadMem_43f3be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f3be = call %struct.Memory* @routine_jmpq_.L_43f899(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f3be, i64 1243, i64 5)
  store %struct.Memory* %call_43f3be, %struct.Memory** %MEMORY

  br label %block_.L_43f899

  ; Code: .L_43f3c3:	 RIP: 43f3c3	 Bytes: 0
block_.L_43f3c3:

  ; Code: movl $0xffffffff, %esi	 RIP: 43f3c3	 Bytes: 5
  %loadMem_43f3c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f3c3 = call %struct.Memory* @routine_movl__0xffffffff___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f3c3)
  store %struct.Memory* %call_43f3c3, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 43f3c8	 Bytes: 4
  %loadMem_43f3c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f3c8 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f3c8)
  store %struct.Memory* %call_43f3c8, %struct.Memory** %MEMORY

  ; Code: callq .sre_strdup	 RIP: 43f3cc	 Bytes: 5
  %loadMem1_43f3cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43f3cc = call %struct.Memory* @routine_callq_.sre_strdup(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43f3cc, i64 29524, i64 5, i64 5)
  store %struct.Memory* %call1_43f3cc, %struct.Memory** %MEMORY

  %loadMem2_43f3cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f3cc = load i64, i64* %3
  %call2_43f3cc = call %struct.Memory* @sub_446720.sre_strdup(%struct.State* %0, i64  %loadPC_43f3cc, %struct.Memory* %loadMem2_43f3cc)
  store %struct.Memory* %call2_43f3cc, %struct.Memory** %MEMORY

  ; Code: leaq -0x30(%rbp), %rdi	 RIP: 43f3d1	 Bytes: 4
  %loadMem_43f3d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f3d1 = call %struct.Memory* @routine_leaq_MINUS0x30__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f3d1)
  store %struct.Memory* %call_43f3d1, %struct.Memory** %MEMORY

  ; Code: movq $0x45a1f5, %rsi	 RIP: 43f3d5	 Bytes: 10
  %loadMem_43f3d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f3d5 = call %struct.Memory* @routine_movq__0x45a1f5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f3d5)
  store %struct.Memory* %call_43f3d5, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 43f3df	 Bytes: 2
  %loadMem_43f3df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f3df = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f3df)
  store %struct.Memory* %call_43f3df, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 43f3e1	 Bytes: 2
  %loadMem_43f3e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f3e1 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f3e1)
  store %struct.Memory* %call_43f3e1, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x28(%rbp)	 RIP: 43f3e3	 Bytes: 4
  %loadMem_43f3e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f3e3 = call %struct.Memory* @routine_movq__rax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f3e3)
  store %struct.Memory* %call_43f3e3, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43f3e7	 Bytes: 4
  %loadMem_43f3e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f3e7 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f3e7)
  store %struct.Memory* %call_43f3e7, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x30(%rbp)	 RIP: 43f3eb	 Bytes: 4
  %loadMem_43f3eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f3eb = call %struct.Memory* @routine_movq__rax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f3eb)
  store %struct.Memory* %call_43f3eb, %struct.Memory** %MEMORY

  ; Code: callq .sre_strtok	 RIP: 43f3ef	 Bytes: 5
  %loadMem1_43f3ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43f3ef = call %struct.Memory* @routine_callq_.sre_strtok(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43f3ef, i64 29281, i64 5, i64 5)
  store %struct.Memory* %call1_43f3ef, %struct.Memory** %MEMORY

  %loadMem2_43f3ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f3ef = load i64, i64* %3
  %call2_43f3ef = call %struct.Memory* @sub_446650.sre_strtok(%struct.State* %0, i64  %loadPC_43f3ef, %struct.Memory* %loadMem2_43f3ef)
  store %struct.Memory* %call2_43f3ef, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x38(%rbp)	 RIP: 43f3f4	 Bytes: 4
  %loadMem_43f3f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f3f4 = call %struct.Memory* @routine_movq__rax__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f3f4)
  store %struct.Memory* %call_43f3f4, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 43f3f8	 Bytes: 4
  %loadMem_43f3f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f3f8 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f3f8)
  store %struct.Memory* %call_43f3f8, %struct.Memory** %MEMORY

  ; Code: je .L_43f460	 RIP: 43f3fc	 Bytes: 6
  %loadMem_43f3fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f3fc = call %struct.Memory* @routine_je_.L_43f460(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f3fc, i8* %BRANCH_TAKEN, i64 100, i64 6, i64 6)
  store %struct.Memory* %call_43f3fc, %struct.Memory** %MEMORY

  %loadBr_43f3fc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f3fc = icmp eq i8 %loadBr_43f3fc, 1
  br i1 %cmpBr_43f3fc, label %block_.L_43f460, label %block_43f402

block_43f402:
  ; Code: leaq -0x30(%rbp), %rdi	 RIP: 43f402	 Bytes: 4
  %loadMem_43f402 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f402 = call %struct.Memory* @routine_leaq_MINUS0x30__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f402)
  store %struct.Memory* %call_43f402, %struct.Memory** %MEMORY

  ; Code: movq $0x45a1f5, %rsi	 RIP: 43f406	 Bytes: 10
  %loadMem_43f406 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f406 = call %struct.Memory* @routine_movq__0x45a1f5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f406)
  store %struct.Memory* %call_43f406, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %eax	 RIP: 43f410	 Bytes: 2
  %loadMem_43f410 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f410 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f410)
  store %struct.Memory* %call_43f410, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 43f412	 Bytes: 2
  %loadMem_43f412 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f412 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f412)
  store %struct.Memory* %call_43f412, %struct.Memory** %MEMORY

  ; Code: callq .sre_strtok	 RIP: 43f414	 Bytes: 5
  %loadMem1_43f414 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43f414 = call %struct.Memory* @routine_callq_.sre_strtok(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43f414, i64 29244, i64 5, i64 5)
  store %struct.Memory* %call1_43f414, %struct.Memory** %MEMORY

  %loadMem2_43f414 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f414 = load i64, i64* %3
  %call2_43f414 = call %struct.Memory* @sub_446650.sre_strtok(%struct.State* %0, i64  %loadPC_43f414, %struct.Memory* %loadMem2_43f414)
  store %struct.Memory* %call2_43f414, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x40(%rbp)	 RIP: 43f419	 Bytes: 4
  %loadMem_43f419 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f419 = call %struct.Memory* @routine_movq__rax__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f419)
  store %struct.Memory* %call_43f419, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 43f41d	 Bytes: 4
  %loadMem_43f41d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f41d = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f41d)
  store %struct.Memory* %call_43f41d, %struct.Memory** %MEMORY

  ; Code: je .L_43f460	 RIP: 43f421	 Bytes: 6
  %loadMem_43f421 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f421 = call %struct.Memory* @routine_je_.L_43f460(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f421, i8* %BRANCH_TAKEN, i64 63, i64 6, i64 6)
  store %struct.Memory* %call_43f421, %struct.Memory** %MEMORY

  %loadBr_43f421 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f421 = icmp eq i8 %loadBr_43f421, 1
  br i1 %cmpBr_43f421, label %block_.L_43f460, label %block_43f427

block_43f427:
  ; Code: movq -0x38(%rbp), %rdi	 RIP: 43f427	 Bytes: 4
  %loadMem_43f427 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f427 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f427)
  store %struct.Memory* %call_43f427, %struct.Memory** %MEMORY

  ; Code: callq .IsInt	 RIP: 43f42b	 Bytes: 5
  %loadMem1_43f42b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43f42b = call %struct.Memory* @routine_callq_.IsInt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43f42b, i64 73285, i64 5, i64 5)
  store %struct.Memory* %call1_43f42b, %struct.Memory** %MEMORY

  %loadMem2_43f42b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f42b = load i64, i64* %3
  %call2_43f42b = call %struct.Memory* @sub_451270.IsInt(%struct.State* %0, i64  %loadPC_43f42b, %struct.Memory* %loadMem2_43f42b)
  store %struct.Memory* %call2_43f42b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 43f430	 Bytes: 3
  %loadMem_43f430 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f430 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f430)
  store %struct.Memory* %call_43f430, %struct.Memory** %MEMORY

  ; Code: je .L_43f460	 RIP: 43f433	 Bytes: 6
  %loadMem_43f433 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f433 = call %struct.Memory* @routine_je_.L_43f460(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f433, i8* %BRANCH_TAKEN, i64 45, i64 6, i64 6)
  store %struct.Memory* %call_43f433, %struct.Memory** %MEMORY

  %loadBr_43f433 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f433 = icmp eq i8 %loadBr_43f433, 1
  br i1 %cmpBr_43f433, label %block_.L_43f460, label %block_43f439

block_43f439:
  ; Code: movq -0x40(%rbp), %rdi	 RIP: 43f439	 Bytes: 4
  %loadMem_43f439 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f439 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f439)
  store %struct.Memory* %call_43f439, %struct.Memory** %MEMORY

  ; Code: callq .IsInt	 RIP: 43f43d	 Bytes: 5
  %loadMem1_43f43d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43f43d = call %struct.Memory* @routine_callq_.IsInt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43f43d, i64 73267, i64 5, i64 5)
  store %struct.Memory* %call1_43f43d, %struct.Memory** %MEMORY

  %loadMem2_43f43d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f43d = load i64, i64* %3
  %call2_43f43d = call %struct.Memory* @sub_451270.IsInt(%struct.State* %0, i64  %loadPC_43f43d, %struct.Memory* %loadMem2_43f43d)
  store %struct.Memory* %call2_43f43d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 43f442	 Bytes: 3
  %loadMem_43f442 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f442 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f442)
  store %struct.Memory* %call_43f442, %struct.Memory** %MEMORY

  ; Code: je .L_43f460	 RIP: 43f445	 Bytes: 6
  %loadMem_43f445 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f445 = call %struct.Memory* @routine_je_.L_43f460(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f445, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_43f445, %struct.Memory** %MEMORY

  %loadBr_43f445 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f445 = icmp eq i8 %loadBr_43f445, 1
  br i1 %cmpBr_43f445, label %block_.L_43f460, label %block_43f44b

block_43f44b:
  ; Code: movq -0x28(%rbp), %rdi	 RIP: 43f44b	 Bytes: 4
  %loadMem_43f44b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f44b = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f44b)
  store %struct.Memory* %call_43f44b, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 43f44f	 Bytes: 5
  %loadMem1_43f44f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43f44f = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43f44f, i64 -254159, i64 5, i64 5)
  store %struct.Memory* %call1_43f44f, %struct.Memory** %MEMORY

  %loadMem2_43f44f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f44f = load i64, i64* %3
  %call2_43f44f = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_43f44f, %struct.Memory* %loadMem2_43f44f)
  store %struct.Memory* %call2_43f44f, %struct.Memory** %MEMORY

  ; Code: movl $0x6a, -0x18(%rbp)	 RIP: 43f454	 Bytes: 7
  %loadMem_43f454 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f454 = call %struct.Memory* @routine_movl__0x6a__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f454)
  store %struct.Memory* %call_43f454, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43f899	 RIP: 43f45b	 Bytes: 5
  %loadMem_43f45b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f45b = call %struct.Memory* @routine_jmpq_.L_43f899(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f45b, i64 1086, i64 5)
  store %struct.Memory* %call_43f45b, %struct.Memory** %MEMORY

  br label %block_.L_43f899

  ; Code: .L_43f460:	 RIP: 43f460	 Bytes: 0
block_.L_43f460:

  ; Code: movq -0x28(%rbp), %rdi	 RIP: 43f460	 Bytes: 4
  %loadMem_43f460 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f460 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f460)
  store %struct.Memory* %call_43f460, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 43f464	 Bytes: 5
  %loadMem1_43f464 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43f464 = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43f464, i64 -254180, i64 5, i64 5)
  store %struct.Memory* %call1_43f464, %struct.Memory** %MEMORY

  %loadMem2_43f464 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f464 = load i64, i64* %3
  %call2_43f464 = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_43f464, %struct.Memory* %loadMem2_43f464)
  store %struct.Memory* %call2_43f464, %struct.Memory** %MEMORY

  ; Code: .L_43f469:	 RIP: 43f469	 Bytes: 0
  br label %block_.L_43f469
block_.L_43f469:

  ; Code: movq $0x459a08, %rsi	 RIP: 43f469	 Bytes: 10
  %loadMem_43f469 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f469 = call %struct.Memory* @routine_movq__0x459a08___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f469)
  store %struct.Memory* %call_43f469, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %eax	 RIP: 43f473	 Bytes: 5
  %loadMem_43f473 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f473 = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f473)
  store %struct.Memory* %call_43f473, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 43f478	 Bytes: 2
  %loadMem_43f478 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f478 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f478)
  store %struct.Memory* %call_43f478, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 43f47a	 Bytes: 4
  %loadMem_43f47a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f47a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f47a)
  store %struct.Memory* %call_43f47a, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 43f47e	 Bytes: 5
  %loadMem1_43f47e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43f47e = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43f47e, i64 -254126, i64 5, i64 5)
  store %struct.Memory* %call1_43f47e, %struct.Memory** %MEMORY

  %loadMem2_43f47e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f47e = load i64, i64* %3
  %call2_43f47e = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_43f47e, %struct.Memory* %loadMem2_43f47e)
  store %struct.Memory* %call2_43f47e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 43f483	 Bytes: 3
  %loadMem_43f483 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f483 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f483)
  store %struct.Memory* %call_43f483, %struct.Memory** %MEMORY

  ; Code: je .L_43f5ea	 RIP: 43f486	 Bytes: 6
  %loadMem_43f486 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f486 = call %struct.Memory* @routine_je_.L_43f5ea(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f486, i8* %BRANCH_TAKEN, i64 356, i64 6, i64 6)
  store %struct.Memory* %call_43f486, %struct.Memory** %MEMORY

  %loadBr_43f486 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f486 = icmp eq i8 %loadBr_43f486, 1
  br i1 %cmpBr_43f486, label %block_.L_43f5ea, label %block_43f48c

block_43f48c:
  ; Code: movq $0x459a0d, %rsi	 RIP: 43f48c	 Bytes: 10
  %loadMem_43f48c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f48c = call %struct.Memory* @routine_movq__0x459a0d___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f48c)
  store %struct.Memory* %call_43f48c, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %eax	 RIP: 43f496	 Bytes: 5
  %loadMem_43f496 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f496 = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f496)
  store %struct.Memory* %call_43f496, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 43f49b	 Bytes: 2
  %loadMem_43f49b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f49b = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f49b)
  store %struct.Memory* %call_43f49b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 43f49d	 Bytes: 4
  %loadMem_43f49d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f49d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f49d)
  store %struct.Memory* %call_43f49d, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 43f4a1	 Bytes: 5
  %loadMem1_43f4a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43f4a1 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43f4a1, i64 -254161, i64 5, i64 5)
  store %struct.Memory* %call1_43f4a1, %struct.Memory** %MEMORY

  %loadMem2_43f4a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f4a1 = load i64, i64* %3
  %call2_43f4a1 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_43f4a1, %struct.Memory* %loadMem2_43f4a1)
  store %struct.Memory* %call2_43f4a1, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 43f4a6	 Bytes: 3
  %loadMem_43f4a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f4a6 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f4a6)
  store %struct.Memory* %call_43f4a6, %struct.Memory** %MEMORY

  ; Code: je .L_43f5ea	 RIP: 43f4a9	 Bytes: 6
  %loadMem_43f4a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f4a9 = call %struct.Memory* @routine_je_.L_43f5ea(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f4a9, i8* %BRANCH_TAKEN, i64 321, i64 6, i64 6)
  store %struct.Memory* %call_43f4a9, %struct.Memory** %MEMORY

  %loadBr_43f4a9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f4a9 = icmp eq i8 %loadBr_43f4a9, 1
  br i1 %cmpBr_43f4a9, label %block_.L_43f5ea, label %block_43f4af

block_43f4af:
  ; Code: movq $0x459a12, %rsi	 RIP: 43f4af	 Bytes: 10
  %loadMem_43f4af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f4af = call %struct.Memory* @routine_movq__0x459a12___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f4af)
  store %struct.Memory* %call_43f4af, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %eax	 RIP: 43f4b9	 Bytes: 5
  %loadMem_43f4b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f4b9 = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f4b9)
  store %struct.Memory* %call_43f4b9, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 43f4be	 Bytes: 2
  %loadMem_43f4be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f4be = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f4be)
  store %struct.Memory* %call_43f4be, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 43f4c0	 Bytes: 4
  %loadMem_43f4c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f4c0 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f4c0)
  store %struct.Memory* %call_43f4c0, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 43f4c4	 Bytes: 5
  %loadMem1_43f4c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43f4c4 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43f4c4, i64 -254196, i64 5, i64 5)
  store %struct.Memory* %call1_43f4c4, %struct.Memory** %MEMORY

  %loadMem2_43f4c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f4c4 = load i64, i64* %3
  %call2_43f4c4 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_43f4c4, %struct.Memory* %loadMem2_43f4c4)
  store %struct.Memory* %call2_43f4c4, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 43f4c9	 Bytes: 3
  %loadMem_43f4c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f4c9 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f4c9)
  store %struct.Memory* %call_43f4c9, %struct.Memory** %MEMORY

  ; Code: je .L_43f5ea	 RIP: 43f4cc	 Bytes: 6
  %loadMem_43f4cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f4cc = call %struct.Memory* @routine_je_.L_43f5ea(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f4cc, i8* %BRANCH_TAKEN, i64 286, i64 6, i64 6)
  store %struct.Memory* %call_43f4cc, %struct.Memory** %MEMORY

  %loadBr_43f4cc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f4cc = icmp eq i8 %loadBr_43f4cc, 1
  br i1 %cmpBr_43f4cc, label %block_.L_43f5ea, label %block_43f4d2

block_43f4d2:
  ; Code: movq $0x459a17, %rsi	 RIP: 43f4d2	 Bytes: 10
  %loadMem_43f4d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f4d2 = call %struct.Memory* @routine_movq__0x459a17___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f4d2)
  store %struct.Memory* %call_43f4d2, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %eax	 RIP: 43f4dc	 Bytes: 5
  %loadMem_43f4dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f4dc = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f4dc)
  store %struct.Memory* %call_43f4dc, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 43f4e1	 Bytes: 2
  %loadMem_43f4e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f4e1 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f4e1)
  store %struct.Memory* %call_43f4e1, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 43f4e3	 Bytes: 4
  %loadMem_43f4e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f4e3 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f4e3)
  store %struct.Memory* %call_43f4e3, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 43f4e7	 Bytes: 5
  %loadMem1_43f4e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43f4e7 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43f4e7, i64 -254231, i64 5, i64 5)
  store %struct.Memory* %call1_43f4e7, %struct.Memory** %MEMORY

  %loadMem2_43f4e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f4e7 = load i64, i64* %3
  %call2_43f4e7 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_43f4e7, %struct.Memory* %loadMem2_43f4e7)
  store %struct.Memory* %call2_43f4e7, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 43f4ec	 Bytes: 3
  %loadMem_43f4ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f4ec = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f4ec)
  store %struct.Memory* %call_43f4ec, %struct.Memory** %MEMORY

  ; Code: je .L_43f5ea	 RIP: 43f4ef	 Bytes: 6
  %loadMem_43f4ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f4ef = call %struct.Memory* @routine_je_.L_43f5ea(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f4ef, i8* %BRANCH_TAKEN, i64 251, i64 6, i64 6)
  store %struct.Memory* %call_43f4ef, %struct.Memory** %MEMORY

  %loadBr_43f4ef = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f4ef = icmp eq i8 %loadBr_43f4ef, 1
  br i1 %cmpBr_43f4ef, label %block_.L_43f5ea, label %block_43f4f5

block_43f4f5:
  ; Code: movq $0x459a1c, %rsi	 RIP: 43f4f5	 Bytes: 10
  %loadMem_43f4f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f4f5 = call %struct.Memory* @routine_movq__0x459a1c___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f4f5)
  store %struct.Memory* %call_43f4f5, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %eax	 RIP: 43f4ff	 Bytes: 5
  %loadMem_43f4ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f4ff = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f4ff)
  store %struct.Memory* %call_43f4ff, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 43f504	 Bytes: 2
  %loadMem_43f504 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f504 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f504)
  store %struct.Memory* %call_43f504, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 43f506	 Bytes: 4
  %loadMem_43f506 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f506 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f506)
  store %struct.Memory* %call_43f506, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 43f50a	 Bytes: 5
  %loadMem1_43f50a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43f50a = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43f50a, i64 -254266, i64 5, i64 5)
  store %struct.Memory* %call1_43f50a, %struct.Memory** %MEMORY

  %loadMem2_43f50a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f50a = load i64, i64* %3
  %call2_43f50a = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_43f50a, %struct.Memory* %loadMem2_43f50a)
  store %struct.Memory* %call2_43f50a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 43f50f	 Bytes: 3
  %loadMem_43f50f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f50f = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f50f)
  store %struct.Memory* %call_43f50f, %struct.Memory** %MEMORY

  ; Code: je .L_43f5ea	 RIP: 43f512	 Bytes: 6
  %loadMem_43f512 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f512 = call %struct.Memory* @routine_je_.L_43f5ea(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f512, i8* %BRANCH_TAKEN, i64 216, i64 6, i64 6)
  store %struct.Memory* %call_43f512, %struct.Memory** %MEMORY

  %loadBr_43f512 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f512 = icmp eq i8 %loadBr_43f512, 1
  br i1 %cmpBr_43f512, label %block_.L_43f5ea, label %block_43f518

block_43f518:
  ; Code: movq $0x459a49, %rsi	 RIP: 43f518	 Bytes: 10
  %loadMem_43f518 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f518 = call %struct.Memory* @routine_movq__0x459a49___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f518)
  store %struct.Memory* %call_43f518, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %eax	 RIP: 43f522	 Bytes: 5
  %loadMem_43f522 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f522 = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f522)
  store %struct.Memory* %call_43f522, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 43f527	 Bytes: 2
  %loadMem_43f527 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f527 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f527)
  store %struct.Memory* %call_43f527, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 43f529	 Bytes: 4
  %loadMem_43f529 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f529 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f529)
  store %struct.Memory* %call_43f529, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 43f52d	 Bytes: 5
  %loadMem1_43f52d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43f52d = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43f52d, i64 -254301, i64 5, i64 5)
  store %struct.Memory* %call1_43f52d, %struct.Memory** %MEMORY

  %loadMem2_43f52d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f52d = load i64, i64* %3
  %call2_43f52d = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_43f52d, %struct.Memory* %loadMem2_43f52d)
  store %struct.Memory* %call2_43f52d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 43f532	 Bytes: 3
  %loadMem_43f532 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f532 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f532)
  store %struct.Memory* %call_43f532, %struct.Memory** %MEMORY

  ; Code: je .L_43f5ea	 RIP: 43f535	 Bytes: 6
  %loadMem_43f535 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f535 = call %struct.Memory* @routine_je_.L_43f5ea(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f535, i8* %BRANCH_TAKEN, i64 181, i64 6, i64 6)
  store %struct.Memory* %call_43f535, %struct.Memory** %MEMORY

  %loadBr_43f535 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f535 = icmp eq i8 %loadBr_43f535, 1
  br i1 %cmpBr_43f535, label %block_.L_43f5ea, label %block_43f53b

block_43f53b:
  ; Code: movq $0x459a76, %rsi	 RIP: 43f53b	 Bytes: 10
  %loadMem_43f53b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f53b = call %struct.Memory* @routine_movq__0x459a76___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f53b)
  store %struct.Memory* %call_43f53b, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %eax	 RIP: 43f545	 Bytes: 5
  %loadMem_43f545 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f545 = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f545)
  store %struct.Memory* %call_43f545, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 43f54a	 Bytes: 2
  %loadMem_43f54a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f54a = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f54a)
  store %struct.Memory* %call_43f54a, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 43f54c	 Bytes: 4
  %loadMem_43f54c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f54c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f54c)
  store %struct.Memory* %call_43f54c, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 43f550	 Bytes: 5
  %loadMem1_43f550 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43f550 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43f550, i64 -254336, i64 5, i64 5)
  store %struct.Memory* %call1_43f550, %struct.Memory** %MEMORY

  %loadMem2_43f550 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f550 = load i64, i64* %3
  %call2_43f550 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_43f550, %struct.Memory* %loadMem2_43f550)
  store %struct.Memory* %call2_43f550, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 43f555	 Bytes: 3
  %loadMem_43f555 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f555 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f555)
  store %struct.Memory* %call_43f555, %struct.Memory** %MEMORY

  ; Code: je .L_43f5ea	 RIP: 43f558	 Bytes: 6
  %loadMem_43f558 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f558 = call %struct.Memory* @routine_je_.L_43f5ea(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f558, i8* %BRANCH_TAKEN, i64 146, i64 6, i64 6)
  store %struct.Memory* %call_43f558, %struct.Memory** %MEMORY

  %loadBr_43f558 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f558 = icmp eq i8 %loadBr_43f558, 1
  br i1 %cmpBr_43f558, label %block_.L_43f5ea, label %block_43f55e

block_43f55e:
  ; Code: movq $0x459aa3, %rsi	 RIP: 43f55e	 Bytes: 10
  %loadMem_43f55e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f55e = call %struct.Memory* @routine_movq__0x459aa3___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f55e)
  store %struct.Memory* %call_43f55e, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %eax	 RIP: 43f568	 Bytes: 5
  %loadMem_43f568 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f568 = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f568)
  store %struct.Memory* %call_43f568, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 43f56d	 Bytes: 2
  %loadMem_43f56d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f56d = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f56d)
  store %struct.Memory* %call_43f56d, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 43f56f	 Bytes: 4
  %loadMem_43f56f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f56f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f56f)
  store %struct.Memory* %call_43f56f, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 43f573	 Bytes: 5
  %loadMem1_43f573 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43f573 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43f573, i64 -254371, i64 5, i64 5)
  store %struct.Memory* %call1_43f573, %struct.Memory** %MEMORY

  %loadMem2_43f573 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f573 = load i64, i64* %3
  %call2_43f573 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_43f573, %struct.Memory* %loadMem2_43f573)
  store %struct.Memory* %call2_43f573, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 43f578	 Bytes: 3
  %loadMem_43f578 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f578 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f578)
  store %struct.Memory* %call_43f578, %struct.Memory** %MEMORY

  ; Code: je .L_43f5ea	 RIP: 43f57b	 Bytes: 6
  %loadMem_43f57b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f57b = call %struct.Memory* @routine_je_.L_43f5ea(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f57b, i8* %BRANCH_TAKEN, i64 111, i64 6, i64 6)
  store %struct.Memory* %call_43f57b, %struct.Memory** %MEMORY

  %loadBr_43f57b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f57b = icmp eq i8 %loadBr_43f57b, 1
  br i1 %cmpBr_43f57b, label %block_.L_43f5ea, label %block_43f581

block_43f581:
  ; Code: movq $0x4599e3, %rsi	 RIP: 43f581	 Bytes: 10
  %loadMem_43f581 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f581 = call %struct.Memory* @routine_movq__0x4599e3___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f581)
  store %struct.Memory* %call_43f581, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %eax	 RIP: 43f58b	 Bytes: 5
  %loadMem_43f58b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f58b = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f58b)
  store %struct.Memory* %call_43f58b, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 43f590	 Bytes: 2
  %loadMem_43f590 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f590 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f590)
  store %struct.Memory* %call_43f590, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 43f592	 Bytes: 4
  %loadMem_43f592 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f592 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f592)
  store %struct.Memory* %call_43f592, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 43f596	 Bytes: 5
  %loadMem1_43f596 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43f596 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43f596, i64 -254406, i64 5, i64 5)
  store %struct.Memory* %call1_43f596, %struct.Memory** %MEMORY

  %loadMem2_43f596 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f596 = load i64, i64* %3
  %call2_43f596 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_43f596, %struct.Memory* %loadMem2_43f596)
  store %struct.Memory* %call2_43f596, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 43f59b	 Bytes: 3
  %loadMem_43f59b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f59b = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f59b)
  store %struct.Memory* %call_43f59b, %struct.Memory** %MEMORY

  ; Code: je .L_43f5ea	 RIP: 43f59e	 Bytes: 6
  %loadMem_43f59e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f59e = call %struct.Memory* @routine_je_.L_43f5ea(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f59e, i8* %BRANCH_TAKEN, i64 76, i64 6, i64 6)
  store %struct.Memory* %call_43f59e, %struct.Memory** %MEMORY

  %loadBr_43f59e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f59e = icmp eq i8 %loadBr_43f59e, 1
  br i1 %cmpBr_43f59e, label %block_.L_43f5ea, label %block_43f5a4

block_43f5a4:
  ; Code: movq $0x45992c, %rsi	 RIP: 43f5a4	 Bytes: 10
  %loadMem_43f5a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f5a4 = call %struct.Memory* @routine_movq__0x45992c___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f5a4)
  store %struct.Memory* %call_43f5a4, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %eax	 RIP: 43f5ae	 Bytes: 5
  %loadMem_43f5ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f5ae = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f5ae)
  store %struct.Memory* %call_43f5ae, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 43f5b3	 Bytes: 2
  %loadMem_43f5b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f5b3 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f5b3)
  store %struct.Memory* %call_43f5b3, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 43f5b5	 Bytes: 4
  %loadMem_43f5b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f5b5 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f5b5)
  store %struct.Memory* %call_43f5b5, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 43f5b9	 Bytes: 5
  %loadMem1_43f5b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43f5b9 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43f5b9, i64 -254441, i64 5, i64 5)
  store %struct.Memory* %call1_43f5b9, %struct.Memory** %MEMORY

  %loadMem2_43f5b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f5b9 = load i64, i64* %3
  %call2_43f5b9 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_43f5b9, %struct.Memory* %loadMem2_43f5b9)
  store %struct.Memory* %call2_43f5b9, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 43f5be	 Bytes: 3
  %loadMem_43f5be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f5be = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f5be)
  store %struct.Memory* %call_43f5be, %struct.Memory** %MEMORY

  ; Code: je .L_43f5ea	 RIP: 43f5c1	 Bytes: 6
  %loadMem_43f5c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f5c1 = call %struct.Memory* @routine_je_.L_43f5ea(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f5c1, i8* %BRANCH_TAKEN, i64 41, i64 6, i64 6)
  store %struct.Memory* %call_43f5c1, %struct.Memory** %MEMORY

  %loadBr_43f5c1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f5c1 = icmp eq i8 %loadBr_43f5c1, 1
  br i1 %cmpBr_43f5c1, label %block_.L_43f5ea, label %block_43f5c7

block_43f5c7:
  ; Code: movq $0x459931, %rsi	 RIP: 43f5c7	 Bytes: 10
  %loadMem_43f5c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f5c7 = call %struct.Memory* @routine_movq__0x459931___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f5c7)
  store %struct.Memory* %call_43f5c7, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %eax	 RIP: 43f5d1	 Bytes: 5
  %loadMem_43f5d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f5d1 = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f5d1)
  store %struct.Memory* %call_43f5d1, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 43f5d6	 Bytes: 2
  %loadMem_43f5d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f5d6 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f5d6)
  store %struct.Memory* %call_43f5d6, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 43f5d8	 Bytes: 4
  %loadMem_43f5d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f5d8 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f5d8)
  store %struct.Memory* %call_43f5d8, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 43f5dc	 Bytes: 5
  %loadMem1_43f5dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43f5dc = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43f5dc, i64 -254476, i64 5, i64 5)
  store %struct.Memory* %call1_43f5dc, %struct.Memory** %MEMORY

  %loadMem2_43f5dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f5dc = load i64, i64* %3
  %call2_43f5dc = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_43f5dc, %struct.Memory* %loadMem2_43f5dc)
  store %struct.Memory* %call2_43f5dc, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 43f5e1	 Bytes: 3
  %loadMem_43f5e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f5e1 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f5e1)
  store %struct.Memory* %call_43f5e1, %struct.Memory** %MEMORY

  ; Code: jne .L_43f5f6	 RIP: 43f5e4	 Bytes: 6
  %loadMem_43f5e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f5e4 = call %struct.Memory* @routine_jne_.L_43f5f6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f5e4, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_43f5e4, %struct.Memory** %MEMORY

  %loadBr_43f5e4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f5e4 = icmp eq i8 %loadBr_43f5e4, 1
  br i1 %cmpBr_43f5e4, label %block_.L_43f5f6, label %block_.L_43f5ea

  ; Code: .L_43f5ea:	 RIP: 43f5ea	 Bytes: 0
block_.L_43f5ea:

  ; Code: movl $0x66, -0x18(%rbp)	 RIP: 43f5ea	 Bytes: 7
  %loadMem_43f5ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f5ea = call %struct.Memory* @routine_movl__0x66__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f5ea)
  store %struct.Memory* %call_43f5ea, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43f899	 RIP: 43f5f1	 Bytes: 5
  %loadMem_43f5f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f5f1 = call %struct.Memory* @routine_jmpq_.L_43f899(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f5f1, i64 680, i64 5)
  store %struct.Memory* %call_43f5f1, %struct.Memory** %MEMORY

  br label %block_.L_43f899

  ; Code: .L_43f5f6:	 RIP: 43f5f6	 Bytes: 0
block_.L_43f5f6:

  ; Code: movq $0x45a46f, %rsi	 RIP: 43f5f6	 Bytes: 10
  %loadMem_43f5f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f5f6 = call %struct.Memory* @routine_movq__0x45a46f___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f5f6)
  store %struct.Memory* %call_43f5f6, %struct.Memory** %MEMORY

  ; Code: movl $0x3, %eax	 RIP: 43f600	 Bytes: 5
  %loadMem_43f600 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f600 = call %struct.Memory* @routine_movl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f600)
  store %struct.Memory* %call_43f600, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 43f605	 Bytes: 2
  %loadMem_43f605 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f605 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f605)
  store %struct.Memory* %call_43f605, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 43f607	 Bytes: 4
  %loadMem_43f607 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f607 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f607)
  store %struct.Memory* %call_43f607, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 43f60b	 Bytes: 5
  %loadMem1_43f60b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43f60b = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43f60b, i64 -254523, i64 5, i64 5)
  store %struct.Memory* %call1_43f60b, %struct.Memory** %MEMORY

  %loadMem2_43f60b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f60b = load i64, i64* %3
  %call2_43f60b = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_43f60b, %struct.Memory* %loadMem2_43f60b)
  store %struct.Memory* %call2_43f60b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 43f610	 Bytes: 3
  %loadMem_43f610 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f610 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f610)
  store %struct.Memory* %call_43f610, %struct.Memory** %MEMORY

  ; Code: je .L_43f63c	 RIP: 43f613	 Bytes: 6
  %loadMem_43f613 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f613 = call %struct.Memory* @routine_je_.L_43f63c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f613, i8* %BRANCH_TAKEN, i64 41, i64 6, i64 6)
  store %struct.Memory* %call_43f613, %struct.Memory** %MEMORY

  %loadBr_43f613 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f613 = icmp eq i8 %loadBr_43f613, 1
  br i1 %cmpBr_43f613, label %block_.L_43f63c, label %block_43f619

block_43f619:
  ; Code: movq $0x459fd9, %rsi	 RIP: 43f619	 Bytes: 10
  %loadMem_43f619 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f619 = call %struct.Memory* @routine_movq__0x459fd9___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f619)
  store %struct.Memory* %call_43f619, %struct.Memory** %MEMORY

  ; Code: movl $0x6, %eax	 RIP: 43f623	 Bytes: 5
  %loadMem_43f623 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f623 = call %struct.Memory* @routine_movl__0x6___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f623)
  store %struct.Memory* %call_43f623, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 43f628	 Bytes: 2
  %loadMem_43f628 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f628 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f628)
  store %struct.Memory* %call_43f628, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 43f62a	 Bytes: 4
  %loadMem_43f62a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f62a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f62a)
  store %struct.Memory* %call_43f62a, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 43f62e	 Bytes: 5
  %loadMem1_43f62e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43f62e = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43f62e, i64 -254558, i64 5, i64 5)
  store %struct.Memory* %call1_43f62e, %struct.Memory** %MEMORY

  %loadMem2_43f62e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f62e = load i64, i64* %3
  %call2_43f62e = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_43f62e, %struct.Memory* %loadMem2_43f62e)
  store %struct.Memory* %call2_43f62e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 43f633	 Bytes: 3
  %loadMem_43f633 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f633 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f633)
  store %struct.Memory* %call_43f633, %struct.Memory** %MEMORY

  ; Code: jne .L_43f648	 RIP: 43f636	 Bytes: 6
  %loadMem_43f636 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f636 = call %struct.Memory* @routine_jne_.L_43f648(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f636, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_43f636, %struct.Memory** %MEMORY

  %loadBr_43f636 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f636 = icmp eq i8 %loadBr_43f636, 1
  br i1 %cmpBr_43f636, label %block_.L_43f648, label %block_.L_43f63c

  ; Code: .L_43f63c:	 RIP: 43f63c	 Bytes: 0
block_.L_43f63c:

  ; Code: movl $0xc, -0x18(%rbp)	 RIP: 43f63c	 Bytes: 7
  %loadMem_43f63c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f63c = call %struct.Memory* @routine_movl__0xc__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f63c)
  store %struct.Memory* %call_43f63c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43f899	 RIP: 43f643	 Bytes: 5
  %loadMem_43f643 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f643 = call %struct.Memory* @routine_jmpq_.L_43f899(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f643, i64 598, i64 5)
  store %struct.Memory* %call_43f643, %struct.Memory** %MEMORY

  br label %block_.L_43f899

  ; Code: .L_43f648:	 RIP: 43f648	 Bytes: 0
block_.L_43f648:

  ; Code: movq $0x458cfb, %rsi	 RIP: 43f648	 Bytes: 10
  %loadMem_43f648 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f648 = call %struct.Memory* @routine_movq__0x458cfb___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f648)
  store %struct.Memory* %call_43f648, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 43f652	 Bytes: 4
  %loadMem_43f652 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f652 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f652)
  store %struct.Memory* %call_43f652, %struct.Memory** %MEMORY

  ; Code: callq .strstr_plt	 RIP: 43f656	 Bytes: 5
  %loadMem1_43f656 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43f656 = call %struct.Memory* @routine_callq_.strstr_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43f656, i64 -253782, i64 5, i64 5)
  store %struct.Memory* %call1_43f656, %struct.Memory** %MEMORY

  %loadMem2_43f656 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f656 = load i64, i64* %3
  %call2_43f656 = call %struct.Memory* @sub_401700.strstr_plt(%struct.State* %0, i64  %loadPC_43f656, %struct.Memory* %loadMem2_43f656)
  store %struct.Memory* %call2_43f656, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 43f65b	 Bytes: 4
  %loadMem_43f65b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f65b = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f65b)
  store %struct.Memory* %call_43f65b, %struct.Memory** %MEMORY

  ; Code: je .L_43f6ab	 RIP: 43f65f	 Bytes: 6
  %loadMem_43f65f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f65f = call %struct.Memory* @routine_je_.L_43f6ab(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f65f, i8* %BRANCH_TAKEN, i64 76, i64 6, i64 6)
  store %struct.Memory* %call_43f65f, %struct.Memory** %MEMORY

  %loadBr_43f65f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f65f = icmp eq i8 %loadBr_43f65f, 1
  br i1 %cmpBr_43f65f, label %block_.L_43f6ab, label %block_43f665

block_43f665:
  ; Code: movq $0x458cfe, %rsi	 RIP: 43f665	 Bytes: 10
  %loadMem_43f665 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f665 = call %struct.Memory* @routine_movq__0x458cfe___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f665)
  store %struct.Memory* %call_43f665, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 43f66f	 Bytes: 4
  %loadMem_43f66f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f66f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f66f)
  store %struct.Memory* %call_43f66f, %struct.Memory** %MEMORY

  ; Code: callq .strstr_plt	 RIP: 43f673	 Bytes: 5
  %loadMem1_43f673 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43f673 = call %struct.Memory* @routine_callq_.strstr_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43f673, i64 -253811, i64 5, i64 5)
  store %struct.Memory* %call1_43f673, %struct.Memory** %MEMORY

  %loadMem2_43f673 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f673 = load i64, i64* %3
  %call2_43f673 = call %struct.Memory* @sub_401700.strstr_plt(%struct.State* %0, i64  %loadPC_43f673, %struct.Memory* %loadMem2_43f673)
  store %struct.Memory* %call2_43f673, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 43f678	 Bytes: 4
  %loadMem_43f678 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f678 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f678)
  store %struct.Memory* %call_43f678, %struct.Memory** %MEMORY

  ; Code: je .L_43f6ab	 RIP: 43f67c	 Bytes: 6
  %loadMem_43f67c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f67c = call %struct.Memory* @routine_je_.L_43f6ab(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f67c, i8* %BRANCH_TAKEN, i64 47, i64 6, i64 6)
  store %struct.Memory* %call_43f67c, %struct.Memory** %MEMORY

  %loadBr_43f67c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f67c = icmp eq i8 %loadBr_43f67c, 1
  br i1 %cmpBr_43f67c, label %block_.L_43f6ab, label %block_43f682

block_43f682:
  ; Code: movq $0x459fe0, %rsi	 RIP: 43f682	 Bytes: 10
  %loadMem_43f682 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f682 = call %struct.Memory* @routine_movq__0x459fe0___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f682)
  store %struct.Memory* %call_43f682, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 43f68c	 Bytes: 4
  %loadMem_43f68c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f68c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f68c)
  store %struct.Memory* %call_43f68c, %struct.Memory** %MEMORY

  ; Code: callq .strstr_plt	 RIP: 43f690	 Bytes: 5
  %loadMem1_43f690 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43f690 = call %struct.Memory* @routine_callq_.strstr_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43f690, i64 -253840, i64 5, i64 5)
  store %struct.Memory* %call1_43f690, %struct.Memory** %MEMORY

  %loadMem2_43f690 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f690 = load i64, i64* %3
  %call2_43f690 = call %struct.Memory* @sub_401700.strstr_plt(%struct.State* %0, i64  %loadPC_43f690, %struct.Memory* %loadMem2_43f690)
  store %struct.Memory* %call2_43f690, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 43f695	 Bytes: 4
  %loadMem_43f695 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f695 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f695)
  store %struct.Memory* %call_43f695, %struct.Memory** %MEMORY

  ; Code: je .L_43f6ab	 RIP: 43f699	 Bytes: 6
  %loadMem_43f699 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f699 = call %struct.Memory* @routine_je_.L_43f6ab(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f699, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_43f699, %struct.Memory** %MEMORY

  %loadBr_43f699 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f699 = icmp eq i8 %loadBr_43f699, 1
  br i1 %cmpBr_43f699, label %block_.L_43f6ab, label %block_43f69f

block_43f69f:
  ; Code: movl $0x67, -0x18(%rbp)	 RIP: 43f69f	 Bytes: 7
  %loadMem_43f69f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f69f = call %struct.Memory* @routine_movl__0x67__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f69f)
  store %struct.Memory* %call_43f69f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43f899	 RIP: 43f6a6	 Bytes: 5
  %loadMem_43f6a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f6a6 = call %struct.Memory* @routine_jmpq_.L_43f899(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f6a6, i64 499, i64 5)
  store %struct.Memory* %call_43f6a6, %struct.Memory** %MEMORY

  br label %block_.L_43f899

  ; Code: .L_43f6ab:	 RIP: 43f6ab	 Bytes: 0
block_.L_43f6ab:

  ; Code: movq $0x459fe7, %rsi	 RIP: 43f6ab	 Bytes: 10
  %loadMem_43f6ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f6ab = call %struct.Memory* @routine_movq__0x459fe7___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f6ab)
  store %struct.Memory* %call_43f6ab, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 43f6b5	 Bytes: 4
  %loadMem_43f6b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f6b5 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f6b5)
  store %struct.Memory* %call_43f6b5, %struct.Memory** %MEMORY

  ; Code: callq .strstr_plt	 RIP: 43f6b9	 Bytes: 5
  %loadMem1_43f6b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43f6b9 = call %struct.Memory* @routine_callq_.strstr_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43f6b9, i64 -253881, i64 5, i64 5)
  store %struct.Memory* %call1_43f6b9, %struct.Memory** %MEMORY

  %loadMem2_43f6b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f6b9 = load i64, i64* %3
  %call2_43f6b9 = call %struct.Memory* @sub_401700.strstr_plt(%struct.State* %0, i64  %loadPC_43f6b9, %struct.Memory* %loadMem2_43f6b9)
  store %struct.Memory* %call2_43f6b9, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 43f6be	 Bytes: 4
  %loadMem_43f6be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f6be = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f6be)
  store %struct.Memory* %call_43f6be, %struct.Memory** %MEMORY

  ; Code: je .L_43f6f1	 RIP: 43f6c2	 Bytes: 6
  %loadMem_43f6c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f6c2 = call %struct.Memory* @routine_je_.L_43f6f1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f6c2, i8* %BRANCH_TAKEN, i64 47, i64 6, i64 6)
  store %struct.Memory* %call_43f6c2, %struct.Memory** %MEMORY

  %loadBr_43f6c2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f6c2 = icmp eq i8 %loadBr_43f6c2, 1
  br i1 %cmpBr_43f6c2, label %block_.L_43f6f1, label %block_43f6c8

block_43f6c8:
  ; Code: movq $0x458cfb, %rsi	 RIP: 43f6c8	 Bytes: 10
  %loadMem_43f6c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f6c8 = call %struct.Memory* @routine_movq__0x458cfb___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f6c8)
  store %struct.Memory* %call_43f6c8, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 43f6d2	 Bytes: 4
  %loadMem_43f6d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f6d2 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f6d2)
  store %struct.Memory* %call_43f6d2, %struct.Memory** %MEMORY

  ; Code: callq .strstr_plt	 RIP: 43f6d6	 Bytes: 5
  %loadMem1_43f6d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43f6d6 = call %struct.Memory* @routine_callq_.strstr_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43f6d6, i64 -253910, i64 5, i64 5)
  store %struct.Memory* %call1_43f6d6, %struct.Memory** %MEMORY

  %loadMem2_43f6d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f6d6 = load i64, i64* %3
  %call2_43f6d6 = call %struct.Memory* @sub_401700.strstr_plt(%struct.State* %0, i64  %loadPC_43f6d6, %struct.Memory* %loadMem2_43f6d6)
  store %struct.Memory* %call2_43f6d6, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 43f6db	 Bytes: 4
  %loadMem_43f6db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f6db = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f6db)
  store %struct.Memory* %call_43f6db, %struct.Memory** %MEMORY

  ; Code: je .L_43f6f1	 RIP: 43f6df	 Bytes: 6
  %loadMem_43f6df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f6df = call %struct.Memory* @routine_je_.L_43f6f1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f6df, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_43f6df, %struct.Memory** %MEMORY

  %loadBr_43f6df = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f6df = icmp eq i8 %loadBr_43f6df, 1
  br i1 %cmpBr_43f6df, label %block_.L_43f6f1, label %block_43f6e5

block_43f6e5:
  ; Code: movl $0x5, -0x18(%rbp)	 RIP: 43f6e5	 Bytes: 7
  %loadMem_43f6e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f6e5 = call %struct.Memory* @routine_movl__0x5__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f6e5)
  store %struct.Memory* %call_43f6e5, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43f899	 RIP: 43f6ec	 Bytes: 5
  %loadMem_43f6ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f6ec = call %struct.Memory* @routine_jmpq_.L_43f899(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f6ec, i64 429, i64 5)
  store %struct.Memory* %call_43f6ec, %struct.Memory** %MEMORY

  br label %block_.L_43f899

  ; Code: .L_43f6f1:	 RIP: 43f6f1	 Bytes: 0
block_.L_43f6f1:

  ; Code: movq $0x459ff0, %rsi	 RIP: 43f6f1	 Bytes: 10
  %loadMem_43f6f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f6f1 = call %struct.Memory* @routine_movq__0x459ff0___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f6f1)
  store %struct.Memory* %call_43f6f1, %struct.Memory** %MEMORY

  ; Code: movl $0x6, %eax	 RIP: 43f6fb	 Bytes: 5
  %loadMem_43f6fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f6fb = call %struct.Memory* @routine_movl__0x6___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f6fb)
  store %struct.Memory* %call_43f6fb, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 43f700	 Bytes: 2
  %loadMem_43f700 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f700 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f700)
  store %struct.Memory* %call_43f700, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 43f702	 Bytes: 4
  %loadMem_43f702 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f702 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f702)
  store %struct.Memory* %call_43f702, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 43f706	 Bytes: 5
  %loadMem1_43f706 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43f706 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43f706, i64 -254774, i64 5, i64 5)
  store %struct.Memory* %call1_43f706, %struct.Memory** %MEMORY

  %loadMem2_43f706 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f706 = load i64, i64* %3
  %call2_43f706 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_43f706, %struct.Memory* %loadMem2_43f706)
  store %struct.Memory* %call2_43f706, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 43f70b	 Bytes: 3
  %loadMem_43f70b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f70b = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f70b)
  store %struct.Memory* %call_43f70b, %struct.Memory** %MEMORY

  ; Code: je .L_43f737	 RIP: 43f70e	 Bytes: 6
  %loadMem_43f70e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f70e = call %struct.Memory* @routine_je_.L_43f737(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f70e, i8* %BRANCH_TAKEN, i64 41, i64 6, i64 6)
  store %struct.Memory* %call_43f70e, %struct.Memory** %MEMORY

  %loadBr_43f70e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f70e = icmp eq i8 %loadBr_43f70e, 1
  br i1 %cmpBr_43f70e, label %block_.L_43f737, label %block_43f714

block_43f714:
  ; Code: movq $0x459ff7, %rsi	 RIP: 43f714	 Bytes: 10
  %loadMem_43f714 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f714 = call %struct.Memory* @routine_movq__0x459ff7___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f714)
  store %struct.Memory* %call_43f714, %struct.Memory** %MEMORY

  ; Code: movl $0x6, %eax	 RIP: 43f71e	 Bytes: 5
  %loadMem_43f71e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f71e = call %struct.Memory* @routine_movl__0x6___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f71e)
  store %struct.Memory* %call_43f71e, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 43f723	 Bytes: 2
  %loadMem_43f723 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f723 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f723)
  store %struct.Memory* %call_43f723, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 43f725	 Bytes: 4
  %loadMem_43f725 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f725 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f725)
  store %struct.Memory* %call_43f725, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 43f729	 Bytes: 5
  %loadMem1_43f729 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43f729 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43f729, i64 -254809, i64 5, i64 5)
  store %struct.Memory* %call1_43f729, %struct.Memory** %MEMORY

  %loadMem2_43f729 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f729 = load i64, i64* %3
  %call2_43f729 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_43f729, %struct.Memory* %loadMem2_43f729)
  store %struct.Memory* %call2_43f729, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 43f72e	 Bytes: 3
  %loadMem_43f72e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f72e = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f72e)
  store %struct.Memory* %call_43f72e, %struct.Memory** %MEMORY

  ; Code: jne .L_43f743	 RIP: 43f731	 Bytes: 6
  %loadMem_43f731 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f731 = call %struct.Memory* @routine_jne_.L_43f743(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f731, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_43f731, %struct.Memory** %MEMORY

  %loadBr_43f731 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f731 = icmp eq i8 %loadBr_43f731, 1
  br i1 %cmpBr_43f731, label %block_.L_43f743, label %block_.L_43f737

  ; Code: .L_43f737:	 RIP: 43f737	 Bytes: 0
block_.L_43f737:

  ; Code: movl $0x2, -0x18(%rbp)	 RIP: 43f737	 Bytes: 7
  %loadMem_43f737 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f737 = call %struct.Memory* @routine_movl__0x2__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f737)
  store %struct.Memory* %call_43f737, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43f899	 RIP: 43f73e	 Bytes: 5
  %loadMem_43f73e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f73e = call %struct.Memory* @routine_jmpq_.L_43f899(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f73e, i64 347, i64 5)
  store %struct.Memory* %call_43f73e, %struct.Memory** %MEMORY

  br label %block_.L_43f899

  ; Code: .L_43f743:	 RIP: 43f743	 Bytes: 0
block_.L_43f743:

  ; Code: movq $0x459fff, %rsi	 RIP: 43f743	 Bytes: 10
  %loadMem_43f743 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f743 = call %struct.Memory* @routine_movq__0x459fff___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f743)
  store %struct.Memory* %call_43f743, %struct.Memory** %MEMORY

  ; Code: movl $0x5, %eax	 RIP: 43f74d	 Bytes: 5
  %loadMem_43f74d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f74d = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f74d)
  store %struct.Memory* %call_43f74d, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 43f752	 Bytes: 2
  %loadMem_43f752 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f752 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f752)
  store %struct.Memory* %call_43f752, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 43f754	 Bytes: 4
  %loadMem_43f754 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f754 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f754)
  store %struct.Memory* %call_43f754, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 43f758	 Bytes: 5
  %loadMem1_43f758 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43f758 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43f758, i64 -254856, i64 5, i64 5)
  store %struct.Memory* %call1_43f758, %struct.Memory** %MEMORY

  %loadMem2_43f758 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f758 = load i64, i64* %3
  %call2_43f758 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_43f758, %struct.Memory* %loadMem2_43f758)
  store %struct.Memory* %call2_43f758, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 43f75d	 Bytes: 3
  %loadMem_43f75d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f75d = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f75d)
  store %struct.Memory* %call_43f75d, %struct.Memory** %MEMORY

  ; Code: je .L_43f789	 RIP: 43f760	 Bytes: 6
  %loadMem_43f760 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f760 = call %struct.Memory* @routine_je_.L_43f789(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f760, i8* %BRANCH_TAKEN, i64 41, i64 6, i64 6)
  store %struct.Memory* %call_43f760, %struct.Memory** %MEMORY

  %loadBr_43f760 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f760 = icmp eq i8 %loadBr_43f760, 1
  br i1 %cmpBr_43f760, label %block_.L_43f789, label %block_43f766

block_43f766:
  ; Code: movq $0x45a005, %rsi	 RIP: 43f766	 Bytes: 10
  %loadMem_43f766 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f766 = call %struct.Memory* @routine_movq__0x45a005___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f766)
  store %struct.Memory* %call_43f766, %struct.Memory** %MEMORY

  ; Code: movl $0x5, %eax	 RIP: 43f770	 Bytes: 5
  %loadMem_43f770 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f770 = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f770)
  store %struct.Memory* %call_43f770, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 43f775	 Bytes: 2
  %loadMem_43f775 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f775 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f775)
  store %struct.Memory* %call_43f775, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 43f777	 Bytes: 4
  %loadMem_43f777 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f777 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f777)
  store %struct.Memory* %call_43f777, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 43f77b	 Bytes: 5
  %loadMem1_43f77b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43f77b = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43f77b, i64 -254891, i64 5, i64 5)
  store %struct.Memory* %call1_43f77b, %struct.Memory** %MEMORY

  %loadMem2_43f77b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f77b = load i64, i64* %3
  %call2_43f77b = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_43f77b, %struct.Memory* %loadMem2_43f77b)
  store %struct.Memory* %call2_43f77b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 43f780	 Bytes: 3
  %loadMem_43f780 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f780 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f780)
  store %struct.Memory* %call_43f780, %struct.Memory** %MEMORY

  ; Code: jne .L_43f795	 RIP: 43f783	 Bytes: 6
  %loadMem_43f783 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f783 = call %struct.Memory* @routine_jne_.L_43f795(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f783, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_43f783, %struct.Memory** %MEMORY

  %loadBr_43f783 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f783 = icmp eq i8 %loadBr_43f783, 1
  br i1 %cmpBr_43f783, label %block_.L_43f795, label %block_.L_43f789

  ; Code: .L_43f789:	 RIP: 43f789	 Bytes: 0
block_.L_43f789:

  ; Code: movl $0x4, -0x18(%rbp)	 RIP: 43f789	 Bytes: 7
  %loadMem_43f789 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f789 = call %struct.Memory* @routine_movl__0x4__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f789)
  store %struct.Memory* %call_43f789, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43f899	 RIP: 43f790	 Bytes: 5
  %loadMem_43f790 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f790 = call %struct.Memory* @routine_jmpq_.L_43f899(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f790, i64 265, i64 5)
  store %struct.Memory* %call_43f790, %struct.Memory** %MEMORY

  br label %block_.L_43f899

  ; Code: .L_43f795:	 RIP: 43f795	 Bytes: 0
block_.L_43f795:

  ; Code: leaq -0x30(%rbp), %rdi	 RIP: 43f795	 Bytes: 4
  %loadMem_43f795 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f795 = call %struct.Memory* @routine_leaq_MINUS0x30__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f795)
  store %struct.Memory* %call_43f795, %struct.Memory** %MEMORY

  ; Code: movq $0x45a1f5, %rsi	 RIP: 43f799	 Bytes: 10
  %loadMem_43f799 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f799 = call %struct.Memory* @routine_movq__0x45a1f5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f799)
  store %struct.Memory* %call_43f799, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %eax	 RIP: 43f7a3	 Bytes: 2
  %loadMem_43f7a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f7a3 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f7a3)
  store %struct.Memory* %call_43f7a3, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 43f7a5	 Bytes: 2
  %loadMem_43f7a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f7a5 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f7a5)
  store %struct.Memory* %call_43f7a5, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 43f7a7	 Bytes: 4
  %loadMem_43f7a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f7a7 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f7a7)
  store %struct.Memory* %call_43f7a7, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x30(%rbp)	 RIP: 43f7ab	 Bytes: 4
  %loadMem_43f7ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f7ab = call %struct.Memory* @routine_movq__rcx__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f7ab)
  store %struct.Memory* %call_43f7ab, %struct.Memory** %MEMORY

  ; Code: callq .sre_strtok	 RIP: 43f7af	 Bytes: 5
  %loadMem1_43f7af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43f7af = call %struct.Memory* @routine_callq_.sre_strtok(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43f7af, i64 28321, i64 5, i64 5)
  store %struct.Memory* %call1_43f7af, %struct.Memory** %MEMORY

  %loadMem2_43f7af = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f7af = load i64, i64* %3
  %call2_43f7af = call %struct.Memory* @sub_446650.sre_strtok(%struct.State* %0, i64  %loadPC_43f7af, %struct.Memory* %loadMem2_43f7af)
  store %struct.Memory* %call2_43f7af, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x38(%rbp)	 RIP: 43f7b4	 Bytes: 4
  %loadMem_43f7b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f7b4 = call %struct.Memory* @routine_movq__rax__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f7b4)
  store %struct.Memory* %call_43f7b4, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 43f7b8	 Bytes: 4
  %loadMem_43f7b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f7b8 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f7b8)
  store %struct.Memory* %call_43f7b8, %struct.Memory** %MEMORY

  ; Code: jne .L_43f7c7	 RIP: 43f7bc	 Bytes: 6
  %loadMem_43f7bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f7bc = call %struct.Memory* @routine_jne_.L_43f7c7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f7bc, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_43f7bc, %struct.Memory** %MEMORY

  %loadBr_43f7bc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f7bc = icmp eq i8 %loadBr_43f7bc, 1
  br i1 %cmpBr_43f7bc, label %block_.L_43f7c7, label %block_43f7c2

block_43f7c2:
  ; Code: jmpq .L_43f200	 RIP: 43f7c2	 Bytes: 5
  %loadMem_43f7c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f7c2 = call %struct.Memory* @routine_jmpq_.L_43f200(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f7c2, i64 -1474, i64 5)
  store %struct.Memory* %call_43f7c2, %struct.Memory** %MEMORY

  br label %block_.L_43f200

  ; Code: .L_43f7c7:	 RIP: 43f7c7	 Bytes: 0
block_.L_43f7c7:

  ; Code: movq $0x45a00b, %rdi	 RIP: 43f7c7	 Bytes: 10
  %loadMem_43f7c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f7c7 = call %struct.Memory* @routine_movq__0x45a00b___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f7c7)
  store %struct.Memory* %call_43f7c7, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rax	 RIP: 43f7d1	 Bytes: 4
  %loadMem_43f7d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f7d1 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f7d1)
  store %struct.Memory* %call_43f7d1, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax), %esi	 RIP: 43f7d5	 Bytes: 3
  %loadMem_43f7d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f7d5 = call %struct.Memory* @routine_movsbl___rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f7d5)
  store %struct.Memory* %call_43f7d5, %struct.Memory** %MEMORY

  ; Code: callq .strchr_plt	 RIP: 43f7d8	 Bytes: 5
  %loadMem1_43f7d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43f7d8 = call %struct.Memory* @routine_callq_.strchr_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43f7d8, i64 -254808, i64 5, i64 5)
  store %struct.Memory* %call1_43f7d8, %struct.Memory** %MEMORY

  %loadMem2_43f7d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f7d8 = load i64, i64* %3
  %call2_43f7d8 = call %struct.Memory* @sub_401480.strchr_plt(%struct.State* %0, i64  %loadPC_43f7d8, %struct.Memory* %loadMem2_43f7d8)
  store %struct.Memory* %call2_43f7d8, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 43f7dd	 Bytes: 4
  %loadMem_43f7dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f7dd = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f7dd)
  store %struct.Memory* %call_43f7dd, %struct.Memory** %MEMORY

  ; Code: je .L_43f7ec	 RIP: 43f7e1	 Bytes: 6
  %loadMem_43f7e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f7e1 = call %struct.Memory* @routine_je_.L_43f7ec(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f7e1, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_43f7e1, %struct.Memory** %MEMORY

  %loadBr_43f7e1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f7e1 = icmp eq i8 %loadBr_43f7e1, 1
  br i1 %cmpBr_43f7e1, label %block_.L_43f7ec, label %block_43f7e7

block_43f7e7:
  ; Code: jmpq .L_43f200	 RIP: 43f7e7	 Bytes: 5
  %loadMem_43f7e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f7e7 = call %struct.Memory* @routine_jmpq_.L_43f200(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f7e7, i64 -1511, i64 5)
  store %struct.Memory* %call_43f7e7, %struct.Memory** %MEMORY

  br label %block_.L_43f200

  ; Code: .L_43f7ec:	 RIP: 43f7ec	 Bytes: 0
block_.L_43f7ec:

  ; Code: leaq -0x30(%rbp), %rdi	 RIP: 43f7ec	 Bytes: 4
  %loadMem_43f7ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f7ec = call %struct.Memory* @routine_leaq_MINUS0x30__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f7ec)
  store %struct.Memory* %call_43f7ec, %struct.Memory** %MEMORY

  ; Code: movq $0x45a1f5, %rsi	 RIP: 43f7f0	 Bytes: 10
  %loadMem_43f7f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f7f0 = call %struct.Memory* @routine_movq__0x45a1f5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f7f0)
  store %struct.Memory* %call_43f7f0, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %eax	 RIP: 43f7fa	 Bytes: 2
  %loadMem_43f7fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f7fa = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f7fa)
  store %struct.Memory* %call_43f7fa, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 43f7fc	 Bytes: 2
  %loadMem_43f7fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f7fc = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f7fc)
  store %struct.Memory* %call_43f7fc, %struct.Memory** %MEMORY

  ; Code: callq .sre_strtok	 RIP: 43f7fe	 Bytes: 5
  %loadMem1_43f7fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43f7fe = call %struct.Memory* @routine_callq_.sre_strtok(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43f7fe, i64 28242, i64 5, i64 5)
  store %struct.Memory* %call1_43f7fe, %struct.Memory** %MEMORY

  %loadMem2_43f7fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f7fe = load i64, i64* %3
  %call2_43f7fe = call %struct.Memory* @sub_446650.sre_strtok(%struct.State* %0, i64  %loadPC_43f7fe, %struct.Memory* %loadMem2_43f7fe)
  store %struct.Memory* %call2_43f7fe, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x40(%rbp)	 RIP: 43f803	 Bytes: 4
  %loadMem_43f803 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f803 = call %struct.Memory* @routine_movq__rax__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f803)
  store %struct.Memory* %call_43f803, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 43f807	 Bytes: 4
  %loadMem_43f807 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f807 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f807)
  store %struct.Memory* %call_43f807, %struct.Memory** %MEMORY

  ; Code: jne .L_43f818	 RIP: 43f80b	 Bytes: 6
  %loadMem_43f80b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f80b = call %struct.Memory* @routine_jne_.L_43f818(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f80b, i8* %BRANCH_TAKEN, i64 13, i64 6, i64 6)
  store %struct.Memory* %call_43f80b, %struct.Memory** %MEMORY

  %loadBr_43f80b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f80b = icmp eq i8 %loadBr_43f80b, 1
  br i1 %cmpBr_43f80b, label %block_.L_43f818, label %block_43f811

block_43f811:
  ; Code: movl $0x1, -0x44(%rbp)	 RIP: 43f811	 Bytes: 7
  %loadMem_43f811 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f811 = call %struct.Memory* @routine_movl__0x1__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f811)
  store %struct.Memory* %call_43f811, %struct.Memory** %MEMORY

  ; Code: .L_43f818:	 RIP: 43f818	 Bytes: 0
  br label %block_.L_43f818
block_.L_43f818:

  ; Code: cmpq $0x0, -0x40(%rbp)	 RIP: 43f818	 Bytes: 5
  %loadMem_43f818 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f818 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f818)
  store %struct.Memory* %call_43f818, %struct.Memory** %MEMORY

  ; Code: je .L_43f83c	 RIP: 43f81d	 Bytes: 6
  %loadMem_43f81d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f81d = call %struct.Memory* @routine_je_.L_43f83c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f81d, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_43f81d, %struct.Memory** %MEMORY

  %loadBr_43f81d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f81d = icmp eq i8 %loadBr_43f81d, 1
  br i1 %cmpBr_43f81d, label %block_.L_43f83c, label %block_43f823

block_43f823:
  ; Code: movq -0x40(%rbp), %rdi	 RIP: 43f823	 Bytes: 4
  %loadMem_43f823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f823 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f823)
  store %struct.Memory* %call_43f823, %struct.Memory** %MEMORY

  ; Code: callq .Seqtype	 RIP: 43f827	 Bytes: 5
  %loadMem1_43f827 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43f827 = call %struct.Memory* @routine_callq_.Seqtype(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43f827, i64 329, i64 5, i64 5)
  store %struct.Memory* %call1_43f827, %struct.Memory** %MEMORY

  %loadMem2_43f827 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f827 = load i64, i64* %3
  %call2_43f827 = call %struct.Memory* @sub_43f970.Seqtype(%struct.State* %0, i64  %loadPC_43f827, %struct.Memory* %loadMem2_43f827)
  store %struct.Memory* %call2_43f827, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 43f82c	 Bytes: 3
  %loadMem_43f82c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f82c = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f82c)
  store %struct.Memory* %call_43f82c, %struct.Memory** %MEMORY

  ; Code: jne .L_43f83c	 RIP: 43f82f	 Bytes: 6
  %loadMem_43f82f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f82f = call %struct.Memory* @routine_jne_.L_43f83c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f82f, i8* %BRANCH_TAKEN, i64 13, i64 6, i64 6)
  store %struct.Memory* %call_43f82f, %struct.Memory** %MEMORY

  %loadBr_43f82f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f82f = icmp eq i8 %loadBr_43f82f, 1
  br i1 %cmpBr_43f82f, label %block_.L_43f83c, label %block_43f835

block_43f835:
  ; Code: movl $0x1, -0x44(%rbp)	 RIP: 43f835	 Bytes: 7
  %loadMem_43f835 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f835 = call %struct.Memory* @routine_movl__0x1__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f835)
  store %struct.Memory* %call_43f835, %struct.Memory** %MEMORY

  ; Code: .L_43f83c:	 RIP: 43f83c	 Bytes: 0
  br label %block_.L_43f83c
block_.L_43f83c:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 43f83c	 Bytes: 3
  %loadMem_43f83c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f83c = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f83c)
  store %struct.Memory* %call_43f83c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 43f83f	 Bytes: 3
  %loadMem_43f83f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f83f = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f83f)
  store %struct.Memory* %call_43f83f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 43f842	 Bytes: 3
  %loadMem_43f842 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f842 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f842)
  store %struct.Memory* %call_43f842, %struct.Memory** %MEMORY

  ; Code: cmpl $0x12c, -0x1c(%rbp)	 RIP: 43f845	 Bytes: 7
  %loadMem_43f845 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f845 = call %struct.Memory* @routine_cmpl__0x12c__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f845)
  store %struct.Memory* %call_43f845, %struct.Memory** %MEMORY

  ; Code: jne .L_43f857	 RIP: 43f84c	 Bytes: 6
  %loadMem_43f84c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f84c = call %struct.Memory* @routine_jne_.L_43f857(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f84c, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_43f84c, %struct.Memory** %MEMORY

  %loadBr_43f84c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f84c = icmp eq i8 %loadBr_43f84c, 1
  br i1 %cmpBr_43f84c, label %block_.L_43f857, label %block_43f852

block_43f852:
  ; Code: jmpq .L_43f85c	 RIP: 43f852	 Bytes: 5
  %loadMem_43f852 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f852 = call %struct.Memory* @routine_jmpq_.L_43f85c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f852, i64 10, i64 5)
  store %struct.Memory* %call_43f852, %struct.Memory** %MEMORY

  br label %block_.L_43f85c

  ; Code: .L_43f857:	 RIP: 43f857	 Bytes: 0
block_.L_43f857:

  ; Code: jmpq .L_43f200	 RIP: 43f857	 Bytes: 5
  %loadMem_43f857 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f857 = call %struct.Memory* @routine_jmpq_.L_43f200(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f857, i64 -1623, i64 5)
  store %struct.Memory* %call_43f857, %struct.Memory** %MEMORY

  br label %block_.L_43f200

  ; Code: .L_43f85c:	 RIP: 43f85c	 Bytes: 0
block_.L_43f85c:

  ; Code: cmpl $0x0, -0x1c(%rbp)	 RIP: 43f85c	 Bytes: 4
  %loadMem_43f85c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f85c = call %struct.Memory* @routine_cmpl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f85c)
  store %struct.Memory* %call_43f85c, %struct.Memory** %MEMORY

  ; Code: jne .L_43f877	 RIP: 43f860	 Bytes: 6
  %loadMem_43f860 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f860 = call %struct.Memory* @routine_jne_.L_43f877(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f860, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_43f860, %struct.Memory** %MEMORY

  %loadBr_43f860 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f860 = icmp eq i8 %loadBr_43f860, 1
  br i1 %cmpBr_43f860, label %block_.L_43f877, label %block_43f866

block_43f866:
  ; Code: movq $0x45a00e, %rdi	 RIP: 43f866	 Bytes: 10
  %loadMem_43f866 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f866 = call %struct.Memory* @routine_movq__0x45a00e___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f866)
  store %struct.Memory* %call_43f866, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 43f870	 Bytes: 2
  %loadMem_43f870 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f870 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f870)
  store %struct.Memory* %call_43f870, %struct.Memory** %MEMORY

  ; Code: callq .Die	 RIP: 43f872	 Bytes: 5
  %loadMem1_43f872 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43f872 = call %struct.Memory* @routine_callq_.Die(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43f872, i64 -3682, i64 5, i64 5)
  store %struct.Memory* %call1_43f872, %struct.Memory** %MEMORY

  %loadMem2_43f872 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f872 = load i64, i64* %3
  %call2_43f872 = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64  %loadPC_43f872, %struct.Memory* %loadMem2_43f872)
  store %struct.Memory* %call2_43f872, %struct.Memory** %MEMORY

  ; Code: .L_43f877:	 RIP: 43f877	 Bytes: 0
  br label %block_.L_43f877
block_.L_43f877:

  ; Code: cmpl $0x1, -0x44(%rbp)	 RIP: 43f877	 Bytes: 4
  %loadMem_43f877 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f877 = call %struct.Memory* @routine_cmpl__0x1__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f877)
  store %struct.Memory* %call_43f877, %struct.Memory** %MEMORY

  ; Code: jne .L_43f88d	 RIP: 43f87b	 Bytes: 6
  %loadMem_43f87b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f87b = call %struct.Memory* @routine_jne_.L_43f88d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f87b, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_43f87b, %struct.Memory** %MEMORY

  %loadBr_43f87b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f87b = icmp eq i8 %loadBr_43f87b, 1
  br i1 %cmpBr_43f87b, label %block_.L_43f88d, label %block_43f881

block_43f881:
  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 43f881	 Bytes: 7
  %loadMem_43f881 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f881 = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f881)
  store %struct.Memory* %call_43f881, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43f894	 RIP: 43f888	 Bytes: 5
  %loadMem_43f888 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f888 = call %struct.Memory* @routine_jmpq_.L_43f894(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f888, i64 12, i64 5)
  store %struct.Memory* %call_43f888, %struct.Memory** %MEMORY

  br label %block_.L_43f894

  ; Code: .L_43f88d:	 RIP: 43f88d	 Bytes: 0
block_.L_43f88d:

  ; Code: movl $0x66, -0x18(%rbp)	 RIP: 43f88d	 Bytes: 7
  %loadMem_43f88d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f88d = call %struct.Memory* @routine_movl__0x66__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f88d)
  store %struct.Memory* %call_43f88d, %struct.Memory** %MEMORY

  ; Code: .L_43f894:	 RIP: 43f894	 Bytes: 0
  br label %block_.L_43f894
block_.L_43f894:

  ; Code: jmpq .L_43f899	 RIP: 43f894	 Bytes: 5
  %loadMem_43f894 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f894 = call %struct.Memory* @routine_jmpq_.L_43f899(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f894, i64 5, i64 5)
  store %struct.Memory* %call_43f894, %struct.Memory** %MEMORY

  br label %block_.L_43f899

  ; Code: .L_43f899:	 RIP: 43f899	 Bytes: 0
block_.L_43f899:

  ; Code: cmpq $0x0, -0x10(%rbp)	 RIP: 43f899	 Bytes: 5
  %loadMem_43f899 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f899 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f899)
  store %struct.Memory* %call_43f899, %struct.Memory** %MEMORY

  ; Code: je .L_43f8ad	 RIP: 43f89e	 Bytes: 6
  %loadMem_43f89e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f89e = call %struct.Memory* @routine_je_.L_43f8ad(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f89e, i8* %BRANCH_TAKEN, i64 15, i64 6, i64 6)
  store %struct.Memory* %call_43f89e, %struct.Memory** %MEMORY

  %loadBr_43f89e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f89e = icmp eq i8 %loadBr_43f89e, 1
  br i1 %cmpBr_43f89e, label %block_.L_43f8ad, label %block_43f8a4

block_43f8a4:
  ; Code: movq -0x10(%rbp), %rdi	 RIP: 43f8a4	 Bytes: 4
  %loadMem_43f8a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f8a4 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f8a4)
  store %struct.Memory* %call_43f8a4, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 43f8a8	 Bytes: 5
  %loadMem1_43f8a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43f8a8 = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43f8a8, i64 -255272, i64 5, i64 5)
  store %struct.Memory* %call1_43f8a8, %struct.Memory** %MEMORY

  %loadMem2_43f8a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f8a8 = load i64, i64* %3
  %call2_43f8a8 = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_43f8a8, %struct.Memory* %loadMem2_43f8a8)
  store %struct.Memory* %call2_43f8a8, %struct.Memory** %MEMORY

  ; Code: .L_43f8ad:	 RIP: 43f8ad	 Bytes: 0
  br label %block_.L_43f8ad
block_.L_43f8ad:

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 43f8ad	 Bytes: 4
  %loadMem_43f8ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f8ad = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f8ad)
  store %struct.Memory* %call_43f8ad, %struct.Memory** %MEMORY

  ; Code: callq .rewind_plt	 RIP: 43f8b1	 Bytes: 5
  %loadMem1_43f8b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43f8b1 = call %struct.Memory* @routine_callq_.rewind_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43f8b1, i64 -254993, i64 5, i64 5)
  store %struct.Memory* %call1_43f8b1, %struct.Memory** %MEMORY

  %loadMem2_43f8b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f8b1 = load i64, i64* %3
  %call2_43f8b1 = call %struct.Memory* @sub_4014a0.rewind_plt(%struct.State* %0, i64  %loadPC_43f8b1, %struct.Memory* %loadMem2_43f8b1)
  store %struct.Memory* %call2_43f8b1, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %eax	 RIP: 43f8b6	 Bytes: 3
  %loadMem_43f8b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f8b6 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f8b6)
  store %struct.Memory* %call_43f8b6, %struct.Memory** %MEMORY

  ; Code: addq $0x50, %rsp	 RIP: 43f8b9	 Bytes: 4
  %loadMem_43f8b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f8b9 = call %struct.Memory* @routine_addq__0x50___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f8b9)
  store %struct.Memory* %call_43f8b9, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 43f8bd	 Bytes: 1
  %loadMem_43f8bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f8bd = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f8bd)
  store %struct.Memory* %call_43f8bd, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 43f8be	 Bytes: 1
  %loadMem_43f8be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f8be = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f8be)
  store %struct.Memory* %call_43f8be, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_43f8be
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

define %struct.Memory* @routine_subq__0x50___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 80)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RDI
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

define %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x0__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 20
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 28
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_leaq_MINUS0x10__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x14__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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

define %struct.Memory* @routine_callq_.sre_fgets(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_43f85c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.IsBlankline(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_je_.L_43f232(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_43f200(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 28
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
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

define %struct.Memory* @routine_jne_.L_43f469(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x459fa3___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x459fa3_type* @G__0x459fa3 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
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




define %struct.Memory* @routine_jne_.L_43f288(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq__0x459fa8___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x459fa8_type* @G__0x459fa8 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_callq_.strstr_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_je_.L_43f288(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x10__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 16)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_43f899(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  %7 = sext i8 %6 to i64
  %8 = and i64 %7, 4294967295
  store i64 %8, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_cmpl__0x3e___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 62)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_43f2a4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x7__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 7)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__0x459fae___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x459fae_type* @G__0x459fae to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0xd___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 13)
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_je_.L_43f2ea(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq__0x459fbc___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x459fbc_type* @G__0x459fbc to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_43f2f6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x5__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 5)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__0x459fca___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x459fca_type* @G__0x459fca to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0xe___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 14)
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_jne_.L_43f325(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x65__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 101)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__0x455d2b___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x455d2b_type* @G__0x455d2b to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x7___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 7)
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_jne_.L_43f371(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq__0x455d33___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x455d33_type* @G__0x455d33 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_je_.L_43f371(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x68__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 104)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__0x458ccb___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x458ccb_type* @G__0x458ccb to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x17___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 23)
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_je_.L_43f3b7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq__0x458ce3___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x458ce3_type* @G__0x458ce3 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_43f3c3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x67__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 103)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl__0xffffffff___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4294967295)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_callq_.sre_strdup(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_leaq_MINUS0x30__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__0x45a1f5___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x45a1f5_type* @G__0x45a1f5 to i64))
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_xorl__ecx___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = load i32, i32* %ECX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__ecx___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_callq_.sre_strtok(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq__rax__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_je_.L_43f460(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






define %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
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






define %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.free_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x6a__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 106)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_movq__0x459a08___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x459a08_type* @G__0x459a08 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_je_.L_43f5ea(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq__0x459a0d___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x459a0d_type* @G__0x459a0d to i64))
  ret %struct.Memory* %11
}














define %struct.Memory* @routine_movq__0x459a12___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x459a12_type* @G__0x459a12 to i64))
  ret %struct.Memory* %11
}














define %struct.Memory* @routine_movq__0x459a17___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x459a17_type* @G__0x459a17 to i64))
  ret %struct.Memory* %11
}














define %struct.Memory* @routine_movq__0x459a1c___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x459a1c_type* @G__0x459a1c to i64))
  ret %struct.Memory* %11
}














define %struct.Memory* @routine_movq__0x459a49___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x459a49_type* @G__0x459a49 to i64))
  ret %struct.Memory* %11
}














define %struct.Memory* @routine_movq__0x459a76___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x459a76_type* @G__0x459a76 to i64))
  ret %struct.Memory* %11
}














define %struct.Memory* @routine_movq__0x459aa3___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x459aa3_type* @G__0x459aa3 to i64))
  ret %struct.Memory* %11
}














define %struct.Memory* @routine_movq__0x4599e3___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4599e3_type* @G__0x4599e3 to i64))
  ret %struct.Memory* %11
}














define %struct.Memory* @routine_movq__0x45992c___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x45992c_type* @G__0x45992c to i64))
  ret %struct.Memory* %11
}














define %struct.Memory* @routine_movq__0x459931___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x459931_type* @G__0x459931 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_43f5f6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x66__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 102)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__0x45a46f___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x45a46f_type* @G__0x45a46f to i64))
  ret %struct.Memory* %11
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










define %struct.Memory* @routine_je_.L_43f63c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq__0x459fd9___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x459fd9_type* @G__0x459fd9 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x6___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 6)
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_jne_.L_43f648(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0xc__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 12)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__0x458cfb___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x458cfb_type* @G__0x458cfb to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_je_.L_43f6ab(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq__0x458cfe___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x458cfe_type* @G__0x458cfe to i64))
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_movq__0x459fe0___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x459fe0_type* @G__0x459fe0 to i64))
  ret %struct.Memory* %11
}














define %struct.Memory* @routine_movq__0x459fe7___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x459fe7_type* @G__0x459fe7 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_je_.L_43f6f1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
















define %struct.Memory* @routine_movq__0x459ff0___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x459ff0_type* @G__0x459ff0 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_je_.L_43f737(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq__0x459ff7___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x459ff7_type* @G__0x459ff7 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_43f743(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x2__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__0x459fff___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x459fff_type* @G__0x459fff to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x5___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 5)
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_je_.L_43f789(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq__0x45a005___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x45a005_type* @G__0x45a005 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_43f795(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x4__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 4)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_movq__rcx__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_jne_.L_43f7c7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_movq__0x45a00b___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x45a00b_type* @G__0x45a00b to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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




define %struct.Memory* @routine_je_.L_43f7ec(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


















define %struct.Memory* @routine_jne_.L_43f818(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x1__MINUS0x44__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
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

define %struct.Memory* @routine_cmpq__0x0__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_43f83c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_callq_.Seqtype(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_jne_.L_43f83c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 28
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 28
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_cmpl__0x12c__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 28
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 300)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_43f857(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jmpq_.L_43f85c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_jne_.L_43f877(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq__0x45a00e___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x45a00e_type* @G__0x45a00e to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_cmpl__0x1__MINUS0x44__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_43f88d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_jmpq_.L_43f894(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_cmpq__0x0__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_43f8ad(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






define %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.rewind_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
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

define %struct.Memory* @routine_addq__0x50___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 80)
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

