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

declare %struct.Memory* @sub_41bb50.hmmcalibrate(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_416760.Getopt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_443fb0.String2SeqfileFormat(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_43ea10.Die(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_428ba0.HMMERBanner(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4254e0.Strparse(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_43ee00.SeqfileOpen(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_41c900.HMMFileOpen(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_422500.HMMFileRead(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_432f30.P7Logoddsify(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_428f20.SetAutocuts(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_418610.AllocHistogram(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_44c5b0.AllocTophits(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_424f90.main_loop_pvm(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_424ff0.main_loop_threaded(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_425060.main_loop_serial_393(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_419b20.ExtremeValueSetHistogram(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_44d110.FullSortTophits(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_44cfe0.TophitsMaxName(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_44cc80.GetRankedHit(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_44ff40.PrintFancyAli(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_418710.FreeHistogram(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_41d100.HMMFileClose(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_43fd60.SeqfileClose(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_44c6b0.FreeTophits(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4325d0.FreePlan7(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4273e0.SqdClean(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x30165__rip__type = type <{ [8 x i8] }>
@G_0x30165__rip_= global %G_0x30165__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x301b5__rip__type = type <{ [4 x i8] }>
@G_0x301b5__rip_= global %G_0x301b5__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x301d7__rip__type = type <{ [8 x i8] }>
@G_0x301d7__rip_= global %G_0x301d7__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x302c7__rip__type = type <{ [4 x i8] }>
@G_0x302c7__rip_= global %G_0x302c7__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x30a84__rip__type = type <{ [4 x i8] }>
@G_0x30a84__rip_= global %G_0x30a84__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x30bb8__rip__type = type <{ [8 x i8] }>
@G_0x30bb8__rip_= global %G_0x30bb8__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x30bc0__rip__type = type <{ [8 x i8] }>
@G_0x30bc0__rip_= global %G_0x30bc0__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x663040_type = type <{ [8 x i8] }>
@G_0x663040= global %G_0x663040_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x676d90_type = type <{ [1 x i8] }>
@G_0x676d90= global %G_0x676d90_type <{ [1 x i8] c"\00" }>
%G__0x456fc4_type = type <{ [4 x i8] }>
@G__0x456fc4= global %G__0x456fc4_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x45713b_type = type <{ [4 x i8] }>
@G__0x45713b= global %G__0x45713b_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x457161_type = type <{ [4 x i8] }>
@G__0x457161= global %G__0x457161_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x457173_type = type <{ [4 x i8] }>
@G__0x457173= global %G__0x457173_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x457176_type = type <{ [8 x i8] }>
@G__0x457176= global %G__0x457176_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457b4b_type = type <{ [4 x i8] }>
@G__0x457b4b= global %G__0x457b4b_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x457b4e_type = type <{ [4 x i8] }>
@G__0x457b4e= global %G__0x457b4e_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x457b51_type = type <{ [4 x i8] }>
@G__0x457b51= global %G__0x457b51_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x457b54_type = type <{ [4 x i8] }>
@G__0x457b54= global %G__0x457b54_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x457b57_type = type <{ [4 x i8] }>
@G__0x457b57= global %G__0x457b57_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x457b60_type = type <{ [4 x i8] }>
@G__0x457b60= global %G__0x457b60_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x457b69_type = type <{ [4 x i8] }>
@G__0x457b69= global %G__0x457b69_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x457b72_type = type <{ [4 x i8] }>
@G__0x457b72= global %G__0x457b72_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x457b7b_type = type <{ [4 x i8] }>
@G__0x457b7b= global %G__0x457b7b_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x457b82_type = type <{ [4 x i8] }>
@G__0x457b82= global %G__0x457b82_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x457b89_type = type <{ [4 x i8] }>
@G__0x457b89= global %G__0x457b89_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x457b93_type = type <{ [4 x i8] }>
@G__0x457b93= global %G__0x457b93_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x457b9b_type = type <{ [4 x i8] }>
@G__0x457b9b= global %G__0x457b9b_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x457ba1_type = type <{ [4 x i8] }>
@G__0x457ba1= global %G__0x457ba1_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x457bac_type = type <{ [8 x i8] }>
@G__0x457bac= global %G__0x457bac_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457bd3_type = type <{ [8 x i8] }>
@G__0x457bd3= global %G__0x457bd3_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457c1d_type = type <{ [8 x i8] }>
@G__0x457c1d= global %G__0x457c1d_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457c6d_type = type <{ [8 x i8] }>
@G__0x457c6d= global %G__0x457c6d_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457c76_type = type <{ [8 x i8] }>
@G__0x457c76= global %G__0x457c76_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457c7e_type = type <{ [8 x i8] }>
@G__0x457c7e= global %G__0x457c7e_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457cab_type = type <{ [8 x i8] }>
@G__0x457cab= global %G__0x457cab_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457cb3_type = type <{ [8 x i8] }>
@G__0x457cb3= global %G__0x457cb3_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457cd1_type = type <{ [8 x i8] }>
@G__0x457cd1= global %G__0x457cd1_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457cf2_type = type <{ [8 x i8] }>
@G__0x457cf2= global %G__0x457cf2_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457d2b_type = type <{ [8 x i8] }>
@G__0x457d2b= global %G__0x457d2b_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457d72_type = type <{ [8 x i8] }>
@G__0x457d72= global %G__0x457d72_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457dae_type = type <{ [8 x i8] }>
@G__0x457dae= global %G__0x457dae_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457dd3_type = type <{ [8 x i8] }>
@G__0x457dd3= global %G__0x457dd3_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457df3_type = type <{ [8 x i8] }>
@G__0x457df3= global %G__0x457df3_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457e17_type = type <{ [8 x i8] }>
@G__0x457e17= global %G__0x457e17_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457e34_type = type <{ [8 x i8] }>
@G__0x457e34= global %G__0x457e34_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457e3c_type = type <{ [8 x i8] }>
@G__0x457e3c= global %G__0x457e3c_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457e44_type = type <{ [8 x i8] }>
@G__0x457e44= global %G__0x457e44_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457e4c_type = type <{ [8 x i8] }>
@G__0x457e4c= global %G__0x457e4c_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457e54_type = type <{ [8 x i8] }>
@G__0x457e54= global %G__0x457e54_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457e5c_type = type <{ [8 x i8] }>
@G__0x457e5c= global %G__0x457e5c_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457e79_type = type <{ [8 x i8] }>
@G__0x457e79= global %G__0x457e79_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457e81_type = type <{ [8 x i8] }>
@G__0x457e81= global %G__0x457e81_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457e89_type = type <{ [8 x i8] }>
@G__0x457e89= global %G__0x457e89_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457e91_type = type <{ [8 x i8] }>
@G__0x457e91= global %G__0x457e91_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457eae_type = type <{ [8 x i8] }>
@G__0x457eae= global %G__0x457eae_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457eba_type = type <{ [8 x i8] }>
@G__0x457eba= global %G__0x457eba_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457ed7_type = type <{ [8 x i8] }>
@G__0x457ed7= global %G__0x457ed7_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457ee2_type = type <{ [8 x i8] }>
@G__0x457ee2= global %G__0x457ee2_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457ef8_type = type <{ [8 x i8] }>
@G__0x457ef8= global %G__0x457ef8_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457f0a_type = type <{ [8 x i8] }>
@G__0x457f0a= global %G__0x457f0a_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457f11_type = type <{ [8 x i8] }>
@G__0x457f11= global %G__0x457f11_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457f22_type = type <{ [8 x i8] }>
@G__0x457f22= global %G__0x457f22_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457f33_type = type <{ [8 x i8] }>
@G__0x457f33= global %G__0x457f33_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457f72_type = type <{ [8 x i8] }>
@G__0x457f72= global %G__0x457f72_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457fa9_type = type <{ [8 x i8] }>
@G__0x457fa9= global %G__0x457fa9_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457fce_type = type <{ [8 x i8] }>
@G__0x457fce= global %G__0x457fce_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x458008_type = type <{ [8 x i8] }>
@G__0x458008= global %G__0x458008_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x458025_type = type <{ [8 x i8] }>
@G__0x458025= global %G__0x458025_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x458051_type = type <{ [8 x i8] }>
@G__0x458051= global %G__0x458051_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x458548_type = type <{ [8 x i8] }>
@G__0x458548= global %G__0x458548_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x458d45_type = type <{ [8 x i8] }>
@G__0x458d45= global %G__0x458d45_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x45a1f7_type = type <{ [8 x i8] }>
@G__0x45a1f7= global %G__0x45a1f7_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x661560_type = type <{ [8 x i8] }>
@G__0x661560= global %G__0x661560_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x661670_type = type <{ [8 x i8] }>
@G__0x661670= global %G__0x661670_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x6617f0_type = type <{ [8 x i8] }>
@G__0x6617f0= global %G__0x6617f0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x661830_type = type <{ [8 x i8] }>
@G__0x661830= global %G__0x661830_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @main(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .main:	 RIP: 423c90	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 423c90	 Bytes: 1
  %loadMem_423c90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423c90 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423c90)
  store %struct.Memory* %call_423c90, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 423c91	 Bytes: 3
  %loadMem_423c91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423c91 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423c91)
  store %struct.Memory* %call_423c91, %struct.Memory** %MEMORY

  ; Code: pushq %r15	 RIP: 423c94	 Bytes: 2
  %loadMem_423c94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423c94 = call %struct.Memory* @routine_pushq__r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423c94)
  store %struct.Memory* %call_423c94, %struct.Memory** %MEMORY

  ; Code: pushq %r14	 RIP: 423c96	 Bytes: 2
  %loadMem_423c96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423c96 = call %struct.Memory* @routine_pushq__r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423c96)
  store %struct.Memory* %call_423c96, %struct.Memory** %MEMORY

  ; Code: pushq %r13	 RIP: 423c98	 Bytes: 2
  %loadMem_423c98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423c98 = call %struct.Memory* @routine_pushq__r13(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423c98)
  store %struct.Memory* %call_423c98, %struct.Memory** %MEMORY

  ; Code: pushq %r12	 RIP: 423c9a	 Bytes: 2
  %loadMem_423c9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423c9a = call %struct.Memory* @routine_pushq__r12(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423c9a)
  store %struct.Memory* %call_423c9a, %struct.Memory** %MEMORY

  ; Code: pushq %rbx	 RIP: 423c9c	 Bytes: 1
  %loadMem_423c9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423c9c = call %struct.Memory* @routine_pushq__rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423c9c)
  store %struct.Memory* %call_423c9c, %struct.Memory** %MEMORY

  ; Code: subq $0x288, %rsp	 RIP: 423c9d	 Bytes: 7
  %loadMem_423c9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423c9d = call %struct.Memory* @routine_subq__0x288___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423c9d)
  store %struct.Memory* %call_423c9d, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x2c(%rbp)	 RIP: 423ca4	 Bytes: 7
  %loadMem_423ca4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423ca4 = call %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423ca4)
  store %struct.Memory* %call_423ca4, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x30(%rbp)	 RIP: 423cab	 Bytes: 3
  %loadMem_423cab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423cab = call %struct.Memory* @routine_movl__edi__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423cab)
  store %struct.Memory* %call_423cab, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x38(%rbp)	 RIP: 423cae	 Bytes: 4
  %loadMem_423cae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423cae = call %struct.Memory* @routine_movq__rsi__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423cae)
  store %struct.Memory* %call_423cae, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, -0x30(%rbp)	 RIP: 423cb2	 Bytes: 4
  %loadMem_423cb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423cb2 = call %struct.Memory* @routine_cmpl__0x3__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423cb2)
  store %struct.Memory* %call_423cb2, %struct.Memory** %MEMORY

  ; Code: je .L_423cd0	 RIP: 423cb6	 Bytes: 6
  %loadMem_423cb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423cb6 = call %struct.Memory* @routine_je_.L_423cd0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423cb6, i8* %BRANCH_TAKEN, i64 26, i64 6, i64 6)
  store %struct.Memory* %call_423cb6, %struct.Memory** %MEMORY

  %loadBr_423cb6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_423cb6 = icmp eq i8 %loadBr_423cb6, 1
  br i1 %cmpBr_423cb6, label %block_.L_423cd0, label %block_423cbc

block_423cbc:
  ; Code: movl -0x30(%rbp), %edi	 RIP: 423cbc	 Bytes: 3
  %loadMem_423cbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423cbc = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423cbc)
  store %struct.Memory* %call_423cbc, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rsi	 RIP: 423cbf	 Bytes: 4
  %loadMem_423cbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423cbf = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423cbf)
  store %struct.Memory* %call_423cbf, %struct.Memory** %MEMORY

  ; Code: callq .hmmcalibrate	 RIP: 423cc3	 Bytes: 5
  %loadMem1_423cc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423cc3 = call %struct.Memory* @routine_callq_.hmmcalibrate(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423cc3, i64 -33139, i64 5, i64 5)
  store %struct.Memory* %call1_423cc3, %struct.Memory** %MEMORY

  %loadMem2_423cc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423cc3 = load i64, i64* %3
  %call2_423cc3 = call %struct.Memory* @sub_41bb50.hmmcalibrate(%struct.State* %0, i64  %loadPC_423cc3, %struct.Memory* %loadMem2_423cc3)
  store %struct.Memory* %call2_423cc3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 423cc8	 Bytes: 3
  %loadMem_423cc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423cc8 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423cc8)
  store %struct.Memory* %call_423cc8, %struct.Memory** %MEMORY

  ; Code: jmpq .L_424f71	 RIP: 423ccb	 Bytes: 5
  %loadMem_423ccb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423ccb = call %struct.Memory* @routine_jmpq_.L_424f71(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423ccb, i64 4774, i64 5)
  store %struct.Memory* %call_423ccb, %struct.Memory** %MEMORY

  br label %block_.L_424f71

  ; Code: .L_423cd0:	 RIP: 423cd0	 Bytes: 0
block_.L_423cd0:

  ; Code: movsd 0x30bc0(%rip), %xmm0	 RIP: 423cd0	 Bytes: 8
  %loadMem_423cd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423cd0 = call %struct.Memory* @routine_movsd_0x30bc0__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423cd0)
  store %struct.Memory* %call_423cd0, %struct.Memory** %MEMORY

  ; Code: movss 0x30a84(%rip), %xmm1	 RIP: 423cd8	 Bytes: 8
  %loadMem_423cd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423cd8 = call %struct.Memory* @routine_movss_0x30a84__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423cd8)
  store %struct.Memory* %call_423cd8, %struct.Memory** %MEMORY

  ; Code: movsd 0x30bb8(%rip), %xmm2	 RIP: 423ce0	 Bytes: 8
  %loadMem_423ce0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423ce0 = call %struct.Memory* @routine_movsd_0x30bb8__rip____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423ce0)
  store %struct.Memory* %call_423ce0, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x5c(%rbp)	 RIP: 423ce8	 Bytes: 7
  %loadMem_423ce8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423ce8 = call %struct.Memory* @routine_movl__0x0__MINUS0x5c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423ce8)
  store %struct.Memory* %call_423ce8, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x13c(%rbp)	 RIP: 423cef	 Bytes: 10
  %loadMem_423cef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423cef = call %struct.Memory* @routine_movl__0x0__MINUS0x13c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423cef)
  store %struct.Memory* %call_423cef, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x138(%rbp)	 RIP: 423cf9	 Bytes: 10
  %loadMem_423cf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423cf9 = call %struct.Memory* @routine_movl__0x1__MINUS0x138__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423cf9)
  store %struct.Memory* %call_423cf9, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x140(%rbp)	 RIP: 423d03	 Bytes: 10
  %loadMem_423d03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423d03 = call %struct.Memory* @routine_movl__0x0__MINUS0x140__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423d03)
  store %struct.Memory* %call_423d03, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x144(%rbp)	 RIP: 423d0d	 Bytes: 10
  %loadMem_423d0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423d0d = call %struct.Memory* @routine_movl__0x0__MINUS0x144__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423d0d)
  store %struct.Memory* %call_423d0d, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0xdc(%rbp)	 RIP: 423d17	 Bytes: 10
  %loadMem_423d17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423d17 = call %struct.Memory* @routine_movl__0x0__MINUS0xdc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423d17)
  store %struct.Memory* %call_423d17, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x148(%rbp)	 RIP: 423d21	 Bytes: 10
  %loadMem_423d21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423d21 = call %struct.Memory* @routine_movl__0x0__MINUS0x148__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423d21)
  store %struct.Memory* %call_423d21, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x154(%rbp)	 RIP: 423d2b	 Bytes: 10
  %loadMem_423d2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423d2b = call %struct.Memory* @routine_movl__0x0__MINUS0x154__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423d2b)
  store %struct.Memory* %call_423d2b, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x150(%rbp)	 RIP: 423d35	 Bytes: 10
  %loadMem_423d35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423d35 = call %struct.Memory* @routine_movl__0x0__MINUS0x150__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423d35)
  store %struct.Memory* %call_423d35, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x14c(%rbp)	 RIP: 423d3f	 Bytes: 10
  %loadMem_423d3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423d3f = call %struct.Memory* @routine_movl__0x0__MINUS0x14c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423d3f)
  store %struct.Memory* %call_423d3f, %struct.Memory** %MEMORY

  ; Code: movl $0x7fffffff, -0xf4(%rbp)	 RIP: 423d49	 Bytes: 10
  %loadMem_423d49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423d49 = call %struct.Memory* @routine_movl__0x7fffffff__MINUS0xf4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423d49)
  store %struct.Memory* %call_423d49, %struct.Memory** %MEMORY

  ; Code: movsd %xmm2, -0x118(%rbp)	 RIP: 423d53	 Bytes: 8
  %loadMem_423d53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423d53 = call %struct.Memory* @routine_movsd__xmm2__MINUS0x118__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423d53)
  store %struct.Memory* %call_423d53, %struct.Memory** %MEMORY

  ; Code: movss %xmm1, -0x120(%rbp)	 RIP: 423d5b	 Bytes: 8
  %loadMem_423d5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423d5b = call %struct.Memory* @routine_movss__xmm1__MINUS0x120__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423d5b)
  store %struct.Memory* %call_423d5b, %struct.Memory** %MEMORY

  ; Code: movss %xmm1, -0x110(%rbp)	 RIP: 423d63	 Bytes: 8
  %loadMem_423d63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423d63 = call %struct.Memory* @routine_movss__xmm1__MINUS0x110__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423d63)
  store %struct.Memory* %call_423d63, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x108(%rbp)	 RIP: 423d6b	 Bytes: 8
  %loadMem_423d6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423d6b = call %struct.Memory* @routine_movsd__xmm0__MINUS0x108__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423d6b)
  store %struct.Memory* %call_423d6b, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x100(%rbp)	 RIP: 423d73	 Bytes: 10
  %loadMem_423d73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423d73 = call %struct.Memory* @routine_movl__0x0__MINUS0x100__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423d73)
  store %struct.Memory* %call_423d73, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0xfc(%rbp)	 RIP: 423d7d	 Bytes: 10
  %loadMem_423d7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423d7d = call %struct.Memory* @routine_movl__0x0__MINUS0xfc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423d7d)
  store %struct.Memory* %call_423d7d, %struct.Memory** %MEMORY

  ; Code: .L_423d87:	 RIP: 423d87	 Bytes: 0
  br label %block_.L_423d87
block_.L_423d87:

  ; Code: movq $0x661560, %rdx	 RIP: 423d87	 Bytes: 10
  %loadMem_423d87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423d87 = call %struct.Memory* @routine_movq__0x661560___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423d87)
  store %struct.Memory* %call_423d87, %struct.Memory** %MEMORY

  ; Code: movl $0x11, %ecx	 RIP: 423d91	 Bytes: 5
  %loadMem_423d91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423d91 = call %struct.Memory* @routine_movl__0x11___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423d91)
  store %struct.Memory* %call_423d91, %struct.Memory** %MEMORY

  ; Code: movq $0x661670, %r8	 RIP: 423d96	 Bytes: 10
  %loadMem_423d96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423d96 = call %struct.Memory* @routine_movq__0x661670___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423d96)
  store %struct.Memory* %call_423d96, %struct.Memory** %MEMORY

  ; Code: leaq -0x134(%rbp), %r9	 RIP: 423da0	 Bytes: 7
  %loadMem_423da0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423da0 = call %struct.Memory* @routine_leaq_MINUS0x134__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423da0)
  store %struct.Memory* %call_423da0, %struct.Memory** %MEMORY

  ; Code: leaq -0x128(%rbp), %rax	 RIP: 423da7	 Bytes: 7
  %loadMem_423da7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423da7 = call %struct.Memory* @routine_leaq_MINUS0x128__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423da7)
  store %struct.Memory* %call_423da7, %struct.Memory** %MEMORY

  ; Code: leaq -0x130(%rbp), %rsi	 RIP: 423dae	 Bytes: 7
  %loadMem_423dae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423dae = call %struct.Memory* @routine_leaq_MINUS0x130__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423dae)
  store %struct.Memory* %call_423dae, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 423db5	 Bytes: 3
  %loadMem_423db5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423db5 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423db5)
  store %struct.Memory* %call_423db5, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %r10	 RIP: 423db8	 Bytes: 4
  %loadMem_423db8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423db8 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423db8)
  store %struct.Memory* %call_423db8, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x160(%rbp)	 RIP: 423dbc	 Bytes: 7
  %loadMem_423dbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423dbc = call %struct.Memory* @routine_movq__rsi__MINUS0x160__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423dbc)
  store %struct.Memory* %call_423dbc, %struct.Memory** %MEMORY

  ; Code: movq %r10, %rsi	 RIP: 423dc3	 Bytes: 3
  %loadMem_423dc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423dc3 = call %struct.Memory* @routine_movq__r10___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423dc3)
  store %struct.Memory* %call_423dc3, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rsp)	 RIP: 423dc6	 Bytes: 4
  %loadMem_423dc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423dc6 = call %struct.Memory* @routine_movq__rax____rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423dc6)
  store %struct.Memory* %call_423dc6, %struct.Memory** %MEMORY

  ; Code: movq -0x160(%rbp), %rax	 RIP: 423dca	 Bytes: 7
  %loadMem_423dca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423dca = call %struct.Memory* @routine_movq_MINUS0x160__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423dca)
  store %struct.Memory* %call_423dca, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x8(%rsp)	 RIP: 423dd1	 Bytes: 5
  %loadMem_423dd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423dd1 = call %struct.Memory* @routine_movq__rax__0x8__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423dd1)
  store %struct.Memory* %call_423dd1, %struct.Memory** %MEMORY

  ; Code: callq .Getopt	 RIP: 423dd6	 Bytes: 5
  %loadMem1_423dd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423dd6 = call %struct.Memory* @routine_callq_.Getopt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423dd6, i64 -54902, i64 5, i64 5)
  store %struct.Memory* %call1_423dd6, %struct.Memory** %MEMORY

  %loadMem2_423dd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423dd6 = load i64, i64* %3
  %call2_423dd6 = call %struct.Memory* @sub_416760.Getopt(%struct.State* %0, i64  %loadPC_423dd6, %struct.Memory* %loadMem2_423dd6)
  store %struct.Memory* %call2_423dd6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 423ddb	 Bytes: 3
  %loadMem_423ddb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423ddb = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423ddb)
  store %struct.Memory* %call_423ddb, %struct.Memory** %MEMORY

  ; Code: je .L_4241bc	 RIP: 423dde	 Bytes: 6
  %loadMem_423dde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423dde = call %struct.Memory* @routine_je_.L_4241bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423dde, i8* %BRANCH_TAKEN, i64 990, i64 6, i64 6)
  store %struct.Memory* %call_423dde, %struct.Memory** %MEMORY

  %loadBr_423dde = load i8, i8* %BRANCH_TAKEN
  %cmpBr_423dde = icmp eq i8 %loadBr_423dde, 1
  br i1 %cmpBr_423dde, label %block_.L_4241bc, label %block_423de4

block_423de4:
  ; Code: movq -0x128(%rbp), %rdi	 RIP: 423de4	 Bytes: 7
  %loadMem_423de4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423de4 = call %struct.Memory* @routine_movq_MINUS0x128__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423de4)
  store %struct.Memory* %call_423de4, %struct.Memory** %MEMORY

  ; Code: movl $0x457b4b, %eax	 RIP: 423deb	 Bytes: 5
  %loadMem_423deb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423deb = call %struct.Memory* @routine_movl__0x457b4b___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423deb)
  store %struct.Memory* %call_423deb, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 423df0	 Bytes: 2
  %loadMem_423df0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423df0 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423df0)
  store %struct.Memory* %call_423df0, %struct.Memory** %MEMORY

  ; Code: callq .strcmp_plt	 RIP: 423df2	 Bytes: 5
  %loadMem1_423df2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423df2 = call %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423df2, i64 -141458, i64 5, i64 5)
  store %struct.Memory* %call1_423df2, %struct.Memory** %MEMORY

  %loadMem2_423df2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423df2 = load i64, i64* %3
  %call2_423df2 = call %struct.Memory* @ext_strcmp(%struct.State* %0, i64  %loadPC_423df2, %struct.Memory* %loadMem2_423df2)
  store %struct.Memory* %call2_423df2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 423df7	 Bytes: 3
  %loadMem_423df7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423df7 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423df7)
  store %struct.Memory* %call_423df7, %struct.Memory** %MEMORY

  ; Code: jne .L_423e17	 RIP: 423dfa	 Bytes: 6
  %loadMem_423dfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423dfa = call %struct.Memory* @routine_jne_.L_423e17(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423dfa, i8* %BRANCH_TAKEN, i64 29, i64 6, i64 6)
  store %struct.Memory* %call_423dfa, %struct.Memory** %MEMORY

  %loadBr_423dfa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_423dfa = icmp eq i8 %loadBr_423dfa, 1
  br i1 %cmpBr_423dfa, label %block_.L_423e17, label %block_423e00

block_423e00:
  ; Code: movq -0x130(%rbp), %rdi	 RIP: 423e00	 Bytes: 7
  %loadMem_423e00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423e00 = call %struct.Memory* @routine_movq_MINUS0x130__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423e00)
  store %struct.Memory* %call_423e00, %struct.Memory** %MEMORY

  ; Code: callq .atoi_plt	 RIP: 423e07	 Bytes: 5
  %loadMem1_423e07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423e07 = call %struct.Memory* @routine_callq_.atoi_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423e07, i64 -141159, i64 5, i64 5)
  store %struct.Memory* %call1_423e07, %struct.Memory** %MEMORY

  %loadMem2_423e07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423e07 = load i64, i64* %3
  %call2_423e07 = call %struct.Memory* @ext_atoi(%struct.State* %0, i64  %loadPC_423e07, %struct.Memory* %loadMem2_423e07)
  store %struct.Memory* %call2_423e07, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xf4(%rbp)	 RIP: 423e0c	 Bytes: 6
  %loadMem_423e0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423e0c = call %struct.Memory* @routine_movl__eax__MINUS0xf4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423e0c)
  store %struct.Memory* %call_423e0c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4241b7	 RIP: 423e12	 Bytes: 5
  %loadMem_423e12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423e12 = call %struct.Memory* @routine_jmpq_.L_4241b7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423e12, i64 933, i64 5)
  store %struct.Memory* %call_423e12, %struct.Memory** %MEMORY

  br label %block_.L_4241b7

  ; Code: .L_423e17:	 RIP: 423e17	 Bytes: 0
block_.L_423e17:

  ; Code: movq -0x128(%rbp), %rdi	 RIP: 423e17	 Bytes: 7
  %loadMem_423e17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423e17 = call %struct.Memory* @routine_movq_MINUS0x128__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423e17)
  store %struct.Memory* %call_423e17, %struct.Memory** %MEMORY

  ; Code: movl $0x457b4e, %eax	 RIP: 423e1e	 Bytes: 5
  %loadMem_423e1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423e1e = call %struct.Memory* @routine_movl__0x457b4e___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423e1e)
  store %struct.Memory* %call_423e1e, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 423e23	 Bytes: 2
  %loadMem_423e23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423e23 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423e23)
  store %struct.Memory* %call_423e23, %struct.Memory** %MEMORY

  ; Code: callq .strcmp_plt	 RIP: 423e25	 Bytes: 5
  %loadMem1_423e25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423e25 = call %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423e25, i64 -141509, i64 5, i64 5)
  store %struct.Memory* %call1_423e25, %struct.Memory** %MEMORY

  %loadMem2_423e25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423e25 = load i64, i64* %3
  %call2_423e25 = call %struct.Memory* @ext_strcmp(%struct.State* %0, i64  %loadPC_423e25, %struct.Memory* %loadMem2_423e25)
  store %struct.Memory* %call2_423e25, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 423e2a	 Bytes: 3
  %loadMem_423e2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423e2a = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423e2a)
  store %struct.Memory* %call_423e2a, %struct.Memory** %MEMORY

  ; Code: jne .L_423e4c	 RIP: 423e2d	 Bytes: 6
  %loadMem_423e2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423e2d = call %struct.Memory* @routine_jne_.L_423e4c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423e2d, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_423e2d, %struct.Memory** %MEMORY

  %loadBr_423e2d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_423e2d = icmp eq i8 %loadBr_423e2d, 1
  br i1 %cmpBr_423e2d, label %block_.L_423e4c, label %block_423e33

block_423e33:
  ; Code: movq -0x130(%rbp), %rdi	 RIP: 423e33	 Bytes: 7
  %loadMem_423e33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423e33 = call %struct.Memory* @routine_movq_MINUS0x130__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423e33)
  store %struct.Memory* %call_423e33, %struct.Memory** %MEMORY

  ; Code: callq .atof_plt	 RIP: 423e3a	 Bytes: 5
  %loadMem1_423e3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423e3a = call %struct.Memory* @routine_callq_.atof_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423e3a, i64 -141834, i64 5, i64 5)
  store %struct.Memory* %call1_423e3a, %struct.Memory** %MEMORY

  %loadMem2_423e3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423e3a = load i64, i64* %3
  %call2_423e3a = call %struct.Memory* @ext_atof(%struct.State* %0, i64  %loadPC_423e3a, %struct.Memory* %loadMem2_423e3a)
  store %struct.Memory* %call2_423e3a, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x118(%rbp)	 RIP: 423e3f	 Bytes: 8
  %loadMem_423e3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423e3f = call %struct.Memory* @routine_movsd__xmm0__MINUS0x118__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423e3f)
  store %struct.Memory* %call_423e3f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4241b2	 RIP: 423e47	 Bytes: 5
  %loadMem_423e47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423e47 = call %struct.Memory* @routine_jmpq_.L_4241b2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423e47, i64 875, i64 5)
  store %struct.Memory* %call_423e47, %struct.Memory** %MEMORY

  br label %block_.L_4241b2

  ; Code: .L_423e4c:	 RIP: 423e4c	 Bytes: 0
block_.L_423e4c:

  ; Code: movq -0x128(%rbp), %rdi	 RIP: 423e4c	 Bytes: 7
  %loadMem_423e4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423e4c = call %struct.Memory* @routine_movq_MINUS0x128__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423e4c)
  store %struct.Memory* %call_423e4c, %struct.Memory** %MEMORY

  ; Code: movl $0x457b51, %eax	 RIP: 423e53	 Bytes: 5
  %loadMem_423e53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423e53 = call %struct.Memory* @routine_movl__0x457b51___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423e53)
  store %struct.Memory* %call_423e53, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 423e58	 Bytes: 2
  %loadMem_423e58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423e58 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423e58)
  store %struct.Memory* %call_423e58, %struct.Memory** %MEMORY

  ; Code: callq .strcmp_plt	 RIP: 423e5a	 Bytes: 5
  %loadMem1_423e5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423e5a = call %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423e5a, i64 -141562, i64 5, i64 5)
  store %struct.Memory* %call1_423e5a, %struct.Memory** %MEMORY

  %loadMem2_423e5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423e5a = load i64, i64* %3
  %call2_423e5a = call %struct.Memory* @ext_strcmp(%struct.State* %0, i64  %loadPC_423e5a, %struct.Memory* %loadMem2_423e5a)
  store %struct.Memory* %call2_423e5a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 423e5f	 Bytes: 3
  %loadMem_423e5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423e5f = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423e5f)
  store %struct.Memory* %call_423e5f, %struct.Memory** %MEMORY

  ; Code: jne .L_423e85	 RIP: 423e62	 Bytes: 6
  %loadMem_423e62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423e62 = call %struct.Memory* @routine_jne_.L_423e85(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423e62, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_423e62, %struct.Memory** %MEMORY

  %loadBr_423e62 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_423e62 = icmp eq i8 %loadBr_423e62, 1
  br i1 %cmpBr_423e62, label %block_.L_423e85, label %block_423e68

block_423e68:
  ; Code: movq -0x130(%rbp), %rdi	 RIP: 423e68	 Bytes: 7
  %loadMem_423e68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423e68 = call %struct.Memory* @routine_movq_MINUS0x130__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423e68)
  store %struct.Memory* %call_423e68, %struct.Memory** %MEMORY

  ; Code: callq .atof_plt	 RIP: 423e6f	 Bytes: 5
  %loadMem1_423e6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423e6f = call %struct.Memory* @routine_callq_.atof_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423e6f, i64 -141887, i64 5, i64 5)
  store %struct.Memory* %call1_423e6f, %struct.Memory** %MEMORY

  %loadMem2_423e6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423e6f = load i64, i64* %3
  %call2_423e6f = call %struct.Memory* @ext_atof(%struct.State* %0, i64  %loadPC_423e6f, %struct.Memory* %loadMem2_423e6f)
  store %struct.Memory* %call2_423e6f, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 423e74	 Bytes: 4
  %loadMem_423e74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423e74 = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423e74)
  store %struct.Memory* %call_423e74, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x120(%rbp)	 RIP: 423e78	 Bytes: 8
  %loadMem_423e78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423e78 = call %struct.Memory* @routine_movss__xmm0__MINUS0x120__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423e78)
  store %struct.Memory* %call_423e78, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4241ad	 RIP: 423e80	 Bytes: 5
  %loadMem_423e80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423e80 = call %struct.Memory* @routine_jmpq_.L_4241ad(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423e80, i64 813, i64 5)
  store %struct.Memory* %call_423e80, %struct.Memory** %MEMORY

  br label %block_.L_4241ad

  ; Code: .L_423e85:	 RIP: 423e85	 Bytes: 0
block_.L_423e85:

  ; Code: movq -0x128(%rbp), %rdi	 RIP: 423e85	 Bytes: 7
  %loadMem_423e85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423e85 = call %struct.Memory* @routine_movq_MINUS0x128__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423e85)
  store %struct.Memory* %call_423e85, %struct.Memory** %MEMORY

  ; Code: movl $0x457b54, %eax	 RIP: 423e8c	 Bytes: 5
  %loadMem_423e8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423e8c = call %struct.Memory* @routine_movl__0x457b54___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423e8c)
  store %struct.Memory* %call_423e8c, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 423e91	 Bytes: 2
  %loadMem_423e91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423e91 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423e91)
  store %struct.Memory* %call_423e91, %struct.Memory** %MEMORY

  ; Code: callq .strcmp_plt	 RIP: 423e93	 Bytes: 5
  %loadMem1_423e93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423e93 = call %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423e93, i64 -141619, i64 5, i64 5)
  store %struct.Memory* %call1_423e93, %struct.Memory** %MEMORY

  %loadMem2_423e93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423e93 = load i64, i64* %3
  %call2_423e93 = call %struct.Memory* @ext_strcmp(%struct.State* %0, i64  %loadPC_423e93, %struct.Memory* %loadMem2_423e93)
  store %struct.Memory* %call2_423e93, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 423e98	 Bytes: 3
  %loadMem_423e98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423e98 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423e98)
  store %struct.Memory* %call_423e98, %struct.Memory** %MEMORY

  ; Code: jne .L_423eb8	 RIP: 423e9b	 Bytes: 6
  %loadMem_423e9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423e9b = call %struct.Memory* @routine_jne_.L_423eb8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423e9b, i8* %BRANCH_TAKEN, i64 29, i64 6, i64 6)
  store %struct.Memory* %call_423e9b, %struct.Memory** %MEMORY

  %loadBr_423e9b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_423e9b = icmp eq i8 %loadBr_423e9b, 1
  br i1 %cmpBr_423e9b, label %block_.L_423eb8, label %block_423ea1

block_423ea1:
  ; Code: movq -0x130(%rbp), %rdi	 RIP: 423ea1	 Bytes: 7
  %loadMem_423ea1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423ea1 = call %struct.Memory* @routine_movq_MINUS0x130__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423ea1)
  store %struct.Memory* %call_423ea1, %struct.Memory** %MEMORY

  ; Code: callq .atoi_plt	 RIP: 423ea8	 Bytes: 5
  %loadMem1_423ea8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423ea8 = call %struct.Memory* @routine_callq_.atoi_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423ea8, i64 -141320, i64 5, i64 5)
  store %struct.Memory* %call1_423ea8, %struct.Memory** %MEMORY

  %loadMem2_423ea8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423ea8 = load i64, i64* %3
  %call2_423ea8 = call %struct.Memory* @ext_atoi(%struct.State* %0, i64  %loadPC_423ea8, %struct.Memory* %loadMem2_423ea8)
  store %struct.Memory* %call2_423ea8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xfc(%rbp)	 RIP: 423ead	 Bytes: 6
  %loadMem_423ead = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423ead = call %struct.Memory* @routine_movl__eax__MINUS0xfc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423ead)
  store %struct.Memory* %call_423ead, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4241a8	 RIP: 423eb3	 Bytes: 5
  %loadMem_423eb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423eb3 = call %struct.Memory* @routine_jmpq_.L_4241a8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423eb3, i64 757, i64 5)
  store %struct.Memory* %call_423eb3, %struct.Memory** %MEMORY

  br label %block_.L_4241a8

  ; Code: .L_423eb8:	 RIP: 423eb8	 Bytes: 0
block_.L_423eb8:

  ; Code: movq -0x128(%rbp), %rdi	 RIP: 423eb8	 Bytes: 7
  %loadMem_423eb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423eb8 = call %struct.Memory* @routine_movq_MINUS0x128__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423eb8)
  store %struct.Memory* %call_423eb8, %struct.Memory** %MEMORY

  ; Code: movl $0x457b57, %eax	 RIP: 423ebf	 Bytes: 5
  %loadMem_423ebf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423ebf = call %struct.Memory* @routine_movl__0x457b57___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423ebf)
  store %struct.Memory* %call_423ebf, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 423ec4	 Bytes: 2
  %loadMem_423ec4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423ec4 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423ec4)
  store %struct.Memory* %call_423ec4, %struct.Memory** %MEMORY

  ; Code: callq .strcmp_plt	 RIP: 423ec6	 Bytes: 5
  %loadMem1_423ec6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423ec6 = call %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423ec6, i64 -141670, i64 5, i64 5)
  store %struct.Memory* %call1_423ec6, %struct.Memory** %MEMORY

  %loadMem2_423ec6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423ec6 = load i64, i64* %3
  %call2_423ec6 = call %struct.Memory* @ext_strcmp(%struct.State* %0, i64  %loadPC_423ec6, %struct.Memory* %loadMem2_423ec6)
  store %struct.Memory* %call2_423ec6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 423ecb	 Bytes: 3
  %loadMem_423ecb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423ecb = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423ecb)
  store %struct.Memory* %call_423ecb, %struct.Memory** %MEMORY

  ; Code: jne .L_423ee3	 RIP: 423ece	 Bytes: 6
  %loadMem_423ece = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423ece = call %struct.Memory* @routine_jne_.L_423ee3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423ece, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_423ece, %struct.Memory** %MEMORY

  %loadBr_423ece = load i8, i8* %BRANCH_TAKEN
  %cmpBr_423ece = icmp eq i8 %loadBr_423ece, 1
  br i1 %cmpBr_423ece, label %block_.L_423ee3, label %block_423ed4

block_423ed4:
  ; Code: movl $0x1, -0x148(%rbp)	 RIP: 423ed4	 Bytes: 10
  %loadMem_423ed4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423ed4 = call %struct.Memory* @routine_movl__0x1__MINUS0x148__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423ed4)
  store %struct.Memory* %call_423ed4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4241a3	 RIP: 423ede	 Bytes: 5
  %loadMem_423ede = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423ede = call %struct.Memory* @routine_jmpq_.L_4241a3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423ede, i64 709, i64 5)
  store %struct.Memory* %call_423ede, %struct.Memory** %MEMORY

  br label %block_.L_4241a3

  ; Code: .L_423ee3:	 RIP: 423ee3	 Bytes: 0
block_.L_423ee3:

  ; Code: movq -0x128(%rbp), %rdi	 RIP: 423ee3	 Bytes: 7
  %loadMem_423ee3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423ee3 = call %struct.Memory* @routine_movq_MINUS0x128__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423ee3)
  store %struct.Memory* %call_423ee3, %struct.Memory** %MEMORY

  ; Code: movl $0x45713b, %eax	 RIP: 423eea	 Bytes: 5
  %loadMem_423eea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423eea = call %struct.Memory* @routine_movl__0x45713b___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423eea)
  store %struct.Memory* %call_423eea, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 423eef	 Bytes: 2
  %loadMem_423eef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423eef = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423eef)
  store %struct.Memory* %call_423eef, %struct.Memory** %MEMORY

  ; Code: callq .strcmp_plt	 RIP: 423ef1	 Bytes: 5
  %loadMem1_423ef1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423ef1 = call %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423ef1, i64 -141713, i64 5, i64 5)
  store %struct.Memory* %call1_423ef1, %struct.Memory** %MEMORY

  %loadMem2_423ef1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423ef1 = load i64, i64* %3
  %call2_423ef1 = call %struct.Memory* @ext_strcmp(%struct.State* %0, i64  %loadPC_423ef1, %struct.Memory* %loadMem2_423ef1)
  store %struct.Memory* %call2_423ef1, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 423ef6	 Bytes: 3
  %loadMem_423ef6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423ef6 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423ef6)
  store %struct.Memory* %call_423ef6, %struct.Memory** %MEMORY

  ; Code: jne .L_423f16	 RIP: 423ef9	 Bytes: 6
  %loadMem_423ef9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423ef9 = call %struct.Memory* @routine_jne_.L_423f16(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423ef9, i8* %BRANCH_TAKEN, i64 29, i64 6, i64 6)
  store %struct.Memory* %call_423ef9, %struct.Memory** %MEMORY

  %loadBr_423ef9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_423ef9 = icmp eq i8 %loadBr_423ef9, 1
  br i1 %cmpBr_423ef9, label %block_.L_423f16, label %block_423eff

block_423eff:
  ; Code: movq -0x130(%rbp), %rdi	 RIP: 423eff	 Bytes: 7
  %loadMem_423eff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423eff = call %struct.Memory* @routine_movq_MINUS0x130__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423eff)
  store %struct.Memory* %call_423eff, %struct.Memory** %MEMORY

  ; Code: callq .atoi_plt	 RIP: 423f06	 Bytes: 5
  %loadMem1_423f06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423f06 = call %struct.Memory* @routine_callq_.atoi_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423f06, i64 -141414, i64 5, i64 5)
  store %struct.Memory* %call1_423f06, %struct.Memory** %MEMORY

  %loadMem2_423f06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423f06 = load i64, i64* %3
  %call2_423f06 = call %struct.Memory* @ext_atoi(%struct.State* %0, i64  %loadPC_423f06, %struct.Memory* %loadMem2_423f06)
  store %struct.Memory* %call2_423f06, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14c(%rbp)	 RIP: 423f0b	 Bytes: 6
  %loadMem_423f0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423f0b = call %struct.Memory* @routine_movl__eax__MINUS0x14c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423f0b)
  store %struct.Memory* %call_423f0b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42419e	 RIP: 423f11	 Bytes: 5
  %loadMem_423f11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423f11 = call %struct.Memory* @routine_jmpq_.L_42419e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423f11, i64 653, i64 5)
  store %struct.Memory* %call_423f11, %struct.Memory** %MEMORY

  br label %block_.L_42419e

  ; Code: .L_423f16:	 RIP: 423f16	 Bytes: 0
block_.L_423f16:

  ; Code: movq -0x128(%rbp), %rdi	 RIP: 423f16	 Bytes: 7
  %loadMem_423f16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423f16 = call %struct.Memory* @routine_movq_MINUS0x128__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423f16)
  store %struct.Memory* %call_423f16, %struct.Memory** %MEMORY

  ; Code: movl $0x457b60, %eax	 RIP: 423f1d	 Bytes: 5
  %loadMem_423f1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423f1d = call %struct.Memory* @routine_movl__0x457b60___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423f1d)
  store %struct.Memory* %call_423f1d, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 423f22	 Bytes: 2
  %loadMem_423f22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423f22 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423f22)
  store %struct.Memory* %call_423f22, %struct.Memory** %MEMORY

  ; Code: callq .strcmp_plt	 RIP: 423f24	 Bytes: 5
  %loadMem1_423f24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423f24 = call %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423f24, i64 -141764, i64 5, i64 5)
  store %struct.Memory* %call1_423f24, %struct.Memory** %MEMORY

  %loadMem2_423f24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423f24 = load i64, i64* %3
  %call2_423f24 = call %struct.Memory* @ext_strcmp(%struct.State* %0, i64  %loadPC_423f24, %struct.Memory* %loadMem2_423f24)
  store %struct.Memory* %call2_423f24, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 423f29	 Bytes: 3
  %loadMem_423f29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423f29 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423f29)
  store %struct.Memory* %call_423f29, %struct.Memory** %MEMORY

  ; Code: jne .L_423f41	 RIP: 423f2c	 Bytes: 6
  %loadMem_423f2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423f2c = call %struct.Memory* @routine_jne_.L_423f41(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423f2c, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_423f2c, %struct.Memory** %MEMORY

  %loadBr_423f2c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_423f2c = icmp eq i8 %loadBr_423f2c, 1
  br i1 %cmpBr_423f2c, label %block_.L_423f41, label %block_423f32

block_423f32:
  ; Code: movl $0x1, -0x100(%rbp)	 RIP: 423f32	 Bytes: 10
  %loadMem_423f32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423f32 = call %struct.Memory* @routine_movl__0x1__MINUS0x100__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423f32)
  store %struct.Memory* %call_423f32, %struct.Memory** %MEMORY

  ; Code: jmpq .L_424199	 RIP: 423f3c	 Bytes: 5
  %loadMem_423f3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423f3c = call %struct.Memory* @routine_jmpq_.L_424199(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423f3c, i64 605, i64 5)
  store %struct.Memory* %call_423f3c, %struct.Memory** %MEMORY

  br label %block_.L_424199

  ; Code: .L_423f41:	 RIP: 423f41	 Bytes: 0
block_.L_423f41:

  ; Code: movq -0x128(%rbp), %rdi	 RIP: 423f41	 Bytes: 7
  %loadMem_423f41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423f41 = call %struct.Memory* @routine_movq_MINUS0x128__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423f41)
  store %struct.Memory* %call_423f41, %struct.Memory** %MEMORY

  ; Code: movl $0x457b69, %eax	 RIP: 423f48	 Bytes: 5
  %loadMem_423f48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423f48 = call %struct.Memory* @routine_movl__0x457b69___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423f48)
  store %struct.Memory* %call_423f48, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 423f4d	 Bytes: 2
  %loadMem_423f4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423f4d = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423f4d)
  store %struct.Memory* %call_423f4d, %struct.Memory** %MEMORY

  ; Code: callq .strcmp_plt	 RIP: 423f4f	 Bytes: 5
  %loadMem1_423f4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423f4f = call %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423f4f, i64 -141807, i64 5, i64 5)
  store %struct.Memory* %call1_423f4f, %struct.Memory** %MEMORY

  %loadMem2_423f4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423f4f = load i64, i64* %3
  %call2_423f4f = call %struct.Memory* @ext_strcmp(%struct.State* %0, i64  %loadPC_423f4f, %struct.Memory* %loadMem2_423f4f)
  store %struct.Memory* %call2_423f4f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 423f54	 Bytes: 3
  %loadMem_423f54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423f54 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423f54)
  store %struct.Memory* %call_423f54, %struct.Memory** %MEMORY

  ; Code: jne .L_423f6c	 RIP: 423f57	 Bytes: 6
  %loadMem_423f57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423f57 = call %struct.Memory* @routine_jne_.L_423f6c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423f57, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_423f57, %struct.Memory** %MEMORY

  %loadBr_423f57 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_423f57 = icmp eq i8 %loadBr_423f57, 1
  br i1 %cmpBr_423f57, label %block_.L_423f6c, label %block_423f5d

block_423f5d:
  ; Code: movl $0x2, -0x100(%rbp)	 RIP: 423f5d	 Bytes: 10
  %loadMem_423f5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423f5d = call %struct.Memory* @routine_movl__0x2__MINUS0x100__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423f5d)
  store %struct.Memory* %call_423f5d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_424194	 RIP: 423f67	 Bytes: 5
  %loadMem_423f67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423f67 = call %struct.Memory* @routine_jmpq_.L_424194(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423f67, i64 557, i64 5)
  store %struct.Memory* %call_423f67, %struct.Memory** %MEMORY

  br label %block_.L_424194

  ; Code: .L_423f6c:	 RIP: 423f6c	 Bytes: 0
block_.L_423f6c:

  ; Code: movq -0x128(%rbp), %rdi	 RIP: 423f6c	 Bytes: 7
  %loadMem_423f6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423f6c = call %struct.Memory* @routine_movq_MINUS0x128__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423f6c)
  store %struct.Memory* %call_423f6c, %struct.Memory** %MEMORY

  ; Code: movl $0x457b72, %eax	 RIP: 423f73	 Bytes: 5
  %loadMem_423f73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423f73 = call %struct.Memory* @routine_movl__0x457b72___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423f73)
  store %struct.Memory* %call_423f73, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 423f78	 Bytes: 2
  %loadMem_423f78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423f78 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423f78)
  store %struct.Memory* %call_423f78, %struct.Memory** %MEMORY

  ; Code: callq .strcmp_plt	 RIP: 423f7a	 Bytes: 5
  %loadMem1_423f7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423f7a = call %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423f7a, i64 -141850, i64 5, i64 5)
  store %struct.Memory* %call1_423f7a, %struct.Memory** %MEMORY

  %loadMem2_423f7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423f7a = load i64, i64* %3
  %call2_423f7a = call %struct.Memory* @ext_strcmp(%struct.State* %0, i64  %loadPC_423f7a, %struct.Memory* %loadMem2_423f7a)
  store %struct.Memory* %call2_423f7a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 423f7f	 Bytes: 3
  %loadMem_423f7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423f7f = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423f7f)
  store %struct.Memory* %call_423f7f, %struct.Memory** %MEMORY

  ; Code: jne .L_423f97	 RIP: 423f82	 Bytes: 6
  %loadMem_423f82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423f82 = call %struct.Memory* @routine_jne_.L_423f97(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423f82, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_423f82, %struct.Memory** %MEMORY

  %loadBr_423f82 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_423f82 = icmp eq i8 %loadBr_423f82, 1
  br i1 %cmpBr_423f82, label %block_.L_423f97, label %block_423f88

block_423f88:
  ; Code: movl $0x3, -0x100(%rbp)	 RIP: 423f88	 Bytes: 10
  %loadMem_423f88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423f88 = call %struct.Memory* @routine_movl__0x3__MINUS0x100__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423f88)
  store %struct.Memory* %call_423f88, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42418f	 RIP: 423f92	 Bytes: 5
  %loadMem_423f92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423f92 = call %struct.Memory* @routine_jmpq_.L_42418f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423f92, i64 509, i64 5)
  store %struct.Memory* %call_423f92, %struct.Memory** %MEMORY

  br label %block_.L_42418f

  ; Code: .L_423f97:	 RIP: 423f97	 Bytes: 0
block_.L_423f97:

  ; Code: movq -0x128(%rbp), %rdi	 RIP: 423f97	 Bytes: 7
  %loadMem_423f97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423f97 = call %struct.Memory* @routine_movq_MINUS0x128__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423f97)
  store %struct.Memory* %call_423f97, %struct.Memory** %MEMORY

  ; Code: movl $0x457b7b, %eax	 RIP: 423f9e	 Bytes: 5
  %loadMem_423f9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423f9e = call %struct.Memory* @routine_movl__0x457b7b___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423f9e)
  store %struct.Memory* %call_423f9e, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 423fa3	 Bytes: 2
  %loadMem_423fa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423fa3 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423fa3)
  store %struct.Memory* %call_423fa3, %struct.Memory** %MEMORY

  ; Code: callq .strcmp_plt	 RIP: 423fa5	 Bytes: 5
  %loadMem1_423fa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423fa5 = call %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423fa5, i64 -141893, i64 5, i64 5)
  store %struct.Memory* %call1_423fa5, %struct.Memory** %MEMORY

  %loadMem2_423fa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423fa5 = load i64, i64* %3
  %call2_423fa5 = call %struct.Memory* @ext_strcmp(%struct.State* %0, i64  %loadPC_423fa5, %struct.Memory* %loadMem2_423fa5)
  store %struct.Memory* %call2_423fa5, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 423faa	 Bytes: 3
  %loadMem_423faa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423faa = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423faa)
  store %struct.Memory* %call_423faa, %struct.Memory** %MEMORY

  ; Code: jne .L_423fcc	 RIP: 423fad	 Bytes: 6
  %loadMem_423fad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423fad = call %struct.Memory* @routine_jne_.L_423fcc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423fad, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_423fad, %struct.Memory** %MEMORY

  %loadBr_423fad = load i8, i8* %BRANCH_TAKEN
  %cmpBr_423fad = icmp eq i8 %loadBr_423fad, 1
  br i1 %cmpBr_423fad, label %block_.L_423fcc, label %block_423fb3

block_423fb3:
  ; Code: movq -0x130(%rbp), %rdi	 RIP: 423fb3	 Bytes: 7
  %loadMem_423fb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423fb3 = call %struct.Memory* @routine_movq_MINUS0x130__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423fb3)
  store %struct.Memory* %call_423fb3, %struct.Memory** %MEMORY

  ; Code: callq .atof_plt	 RIP: 423fba	 Bytes: 5
  %loadMem1_423fba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423fba = call %struct.Memory* @routine_callq_.atof_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423fba, i64 -142218, i64 5, i64 5)
  store %struct.Memory* %call1_423fba, %struct.Memory** %MEMORY

  %loadMem2_423fba = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423fba = load i64, i64* %3
  %call2_423fba = call %struct.Memory* @ext_atof(%struct.State* %0, i64  %loadPC_423fba, %struct.Memory* %loadMem2_423fba)
  store %struct.Memory* %call2_423fba, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x108(%rbp)	 RIP: 423fbf	 Bytes: 8
  %loadMem_423fbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423fbf = call %struct.Memory* @routine_movsd__xmm0__MINUS0x108__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423fbf)
  store %struct.Memory* %call_423fbf, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42418a	 RIP: 423fc7	 Bytes: 5
  %loadMem_423fc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423fc7 = call %struct.Memory* @routine_jmpq_.L_42418a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423fc7, i64 451, i64 5)
  store %struct.Memory* %call_423fc7, %struct.Memory** %MEMORY

  br label %block_.L_42418a

  ; Code: .L_423fcc:	 RIP: 423fcc	 Bytes: 0
block_.L_423fcc:

  ; Code: movq -0x128(%rbp), %rdi	 RIP: 423fcc	 Bytes: 7
  %loadMem_423fcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423fcc = call %struct.Memory* @routine_movq_MINUS0x128__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423fcc)
  store %struct.Memory* %call_423fcc, %struct.Memory** %MEMORY

  ; Code: movl $0x457b82, %eax	 RIP: 423fd3	 Bytes: 5
  %loadMem_423fd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423fd3 = call %struct.Memory* @routine_movl__0x457b82___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423fd3)
  store %struct.Memory* %call_423fd3, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 423fd8	 Bytes: 2
  %loadMem_423fd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423fd8 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423fd8)
  store %struct.Memory* %call_423fd8, %struct.Memory** %MEMORY

  ; Code: callq .strcmp_plt	 RIP: 423fda	 Bytes: 5
  %loadMem1_423fda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423fda = call %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423fda, i64 -141946, i64 5, i64 5)
  store %struct.Memory* %call1_423fda, %struct.Memory** %MEMORY

  %loadMem2_423fda = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423fda = load i64, i64* %3
  %call2_423fda = call %struct.Memory* @ext_strcmp(%struct.State* %0, i64  %loadPC_423fda, %struct.Memory* %loadMem2_423fda)
  store %struct.Memory* %call2_423fda, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 423fdf	 Bytes: 3
  %loadMem_423fdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423fdf = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423fdf)
  store %struct.Memory* %call_423fdf, %struct.Memory** %MEMORY

  ; Code: jne .L_424005	 RIP: 423fe2	 Bytes: 6
  %loadMem_423fe2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423fe2 = call %struct.Memory* @routine_jne_.L_424005(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423fe2, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_423fe2, %struct.Memory** %MEMORY

  %loadBr_423fe2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_423fe2 = icmp eq i8 %loadBr_423fe2, 1
  br i1 %cmpBr_423fe2, label %block_.L_424005, label %block_423fe8

block_423fe8:
  ; Code: movq -0x130(%rbp), %rdi	 RIP: 423fe8	 Bytes: 7
  %loadMem_423fe8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423fe8 = call %struct.Memory* @routine_movq_MINUS0x130__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423fe8)
  store %struct.Memory* %call_423fe8, %struct.Memory** %MEMORY

  ; Code: callq .atof_plt	 RIP: 423fef	 Bytes: 5
  %loadMem1_423fef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423fef = call %struct.Memory* @routine_callq_.atof_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423fef, i64 -142271, i64 5, i64 5)
  store %struct.Memory* %call1_423fef, %struct.Memory** %MEMORY

  %loadMem2_423fef = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423fef = load i64, i64* %3
  %call2_423fef = call %struct.Memory* @ext_atof(%struct.State* %0, i64  %loadPC_423fef, %struct.Memory* %loadMem2_423fef)
  store %struct.Memory* %call2_423fef, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 423ff4	 Bytes: 4
  %loadMem_423ff4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423ff4 = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423ff4)
  store %struct.Memory* %call_423ff4, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x110(%rbp)	 RIP: 423ff8	 Bytes: 8
  %loadMem_423ff8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423ff8 = call %struct.Memory* @routine_movss__xmm0__MINUS0x110__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423ff8)
  store %struct.Memory* %call_423ff8, %struct.Memory** %MEMORY

  ; Code: jmpq .L_424185	 RIP: 424000	 Bytes: 5
  %loadMem_424000 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424000 = call %struct.Memory* @routine_jmpq_.L_424185(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424000, i64 389, i64 5)
  store %struct.Memory* %call_424000, %struct.Memory** %MEMORY

  br label %block_.L_424185

  ; Code: .L_424005:	 RIP: 424005	 Bytes: 0
block_.L_424005:

  ; Code: movq -0x128(%rbp), %rdi	 RIP: 424005	 Bytes: 7
  %loadMem_424005 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424005 = call %struct.Memory* @routine_movq_MINUS0x128__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424005)
  store %struct.Memory* %call_424005, %struct.Memory** %MEMORY

  ; Code: movl $0x457b89, %eax	 RIP: 42400c	 Bytes: 5
  %loadMem_42400c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42400c = call %struct.Memory* @routine_movl__0x457b89___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42400c)
  store %struct.Memory* %call_42400c, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 424011	 Bytes: 2
  %loadMem_424011 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424011 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424011)
  store %struct.Memory* %call_424011, %struct.Memory** %MEMORY

  ; Code: callq .strcmp_plt	 RIP: 424013	 Bytes: 5
  %loadMem1_424013 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_424013 = call %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_424013, i64 -142003, i64 5, i64 5)
  store %struct.Memory* %call1_424013, %struct.Memory** %MEMORY

  %loadMem2_424013 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424013 = load i64, i64* %3
  %call2_424013 = call %struct.Memory* @ext_strcmp(%struct.State* %0, i64  %loadPC_424013, %struct.Memory* %loadMem2_424013)
  store %struct.Memory* %call2_424013, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 424018	 Bytes: 3
  %loadMem_424018 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424018 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424018)
  store %struct.Memory* %call_424018, %struct.Memory** %MEMORY

  ; Code: jne .L_424030	 RIP: 42401b	 Bytes: 6
  %loadMem_42401b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42401b = call %struct.Memory* @routine_jne_.L_424030(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42401b, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_42401b, %struct.Memory** %MEMORY

  %loadBr_42401b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42401b = icmp eq i8 %loadBr_42401b, 1
  br i1 %cmpBr_42401b, label %block_.L_424030, label %block_424021

block_424021:
  ; Code: movl $0x1, -0x13c(%rbp)	 RIP: 424021	 Bytes: 10
  %loadMem_424021 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424021 = call %struct.Memory* @routine_movl__0x1__MINUS0x13c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424021)
  store %struct.Memory* %call_424021, %struct.Memory** %MEMORY

  ; Code: jmpq .L_424180	 RIP: 42402b	 Bytes: 5
  %loadMem_42402b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42402b = call %struct.Memory* @routine_jmpq_.L_424180(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42402b, i64 341, i64 5)
  store %struct.Memory* %call_42402b, %struct.Memory** %MEMORY

  br label %block_.L_424180

  ; Code: .L_424030:	 RIP: 424030	 Bytes: 0
block_.L_424030:

  ; Code: movq -0x128(%rbp), %rdi	 RIP: 424030	 Bytes: 7
  %loadMem_424030 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424030 = call %struct.Memory* @routine_movq_MINUS0x128__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424030)
  store %struct.Memory* %call_424030, %struct.Memory** %MEMORY

  ; Code: movl $0x457b93, %eax	 RIP: 424037	 Bytes: 5
  %loadMem_424037 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424037 = call %struct.Memory* @routine_movl__0x457b93___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424037)
  store %struct.Memory* %call_424037, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 42403c	 Bytes: 2
  %loadMem_42403c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42403c = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42403c)
  store %struct.Memory* %call_42403c, %struct.Memory** %MEMORY

  ; Code: callq .strcmp_plt	 RIP: 42403e	 Bytes: 5
  %loadMem1_42403e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42403e = call %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42403e, i64 -142046, i64 5, i64 5)
  store %struct.Memory* %call1_42403e, %struct.Memory** %MEMORY

  %loadMem2_42403e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42403e = load i64, i64* %3
  %call2_42403e = call %struct.Memory* @ext_strcmp(%struct.State* %0, i64  %loadPC_42403e, %struct.Memory* %loadMem2_42403e)
  store %struct.Memory* %call2_42403e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 424043	 Bytes: 3
  %loadMem_424043 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424043 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424043)
  store %struct.Memory* %call_424043, %struct.Memory** %MEMORY

  ; Code: jne .L_42405b	 RIP: 424046	 Bytes: 6
  %loadMem_424046 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424046 = call %struct.Memory* @routine_jne_.L_42405b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424046, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_424046, %struct.Memory** %MEMORY

  %loadBr_424046 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424046 = icmp eq i8 %loadBr_424046, 1
  br i1 %cmpBr_424046, label %block_.L_42405b, label %block_42404c

block_42404c:
  ; Code: movl $0x0, -0x138(%rbp)	 RIP: 42404c	 Bytes: 10
  %loadMem_42404c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42404c = call %struct.Memory* @routine_movl__0x0__MINUS0x138__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42404c)
  store %struct.Memory* %call_42404c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42417b	 RIP: 424056	 Bytes: 5
  %loadMem_424056 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424056 = call %struct.Memory* @routine_jmpq_.L_42417b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424056, i64 293, i64 5)
  store %struct.Memory* %call_424056, %struct.Memory** %MEMORY

  br label %block_.L_42417b

  ; Code: .L_42405b:	 RIP: 42405b	 Bytes: 0
block_.L_42405b:

  ; Code: movq -0x128(%rbp), %rdi	 RIP: 42405b	 Bytes: 7
  %loadMem_42405b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42405b = call %struct.Memory* @routine_movq_MINUS0x128__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42405b)
  store %struct.Memory* %call_42405b, %struct.Memory** %MEMORY

  ; Code: movl $0x457161, %eax	 RIP: 424062	 Bytes: 5
  %loadMem_424062 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424062 = call %struct.Memory* @routine_movl__0x457161___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424062)
  store %struct.Memory* %call_424062, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 424067	 Bytes: 2
  %loadMem_424067 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424067 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424067)
  store %struct.Memory* %call_424067, %struct.Memory** %MEMORY

  ; Code: callq .strcmp_plt	 RIP: 424069	 Bytes: 5
  %loadMem1_424069 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_424069 = call %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_424069, i64 -142089, i64 5, i64 5)
  store %struct.Memory* %call1_424069, %struct.Memory** %MEMORY

  %loadMem2_424069 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424069 = load i64, i64* %3
  %call2_424069 = call %struct.Memory* @ext_strcmp(%struct.State* %0, i64  %loadPC_424069, %struct.Memory* %loadMem2_424069)
  store %struct.Memory* %call2_424069, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 42406e	 Bytes: 3
  %loadMem_42406e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42406e = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42406e)
  store %struct.Memory* %call_42406e, %struct.Memory** %MEMORY

  ; Code: jne .L_424086	 RIP: 424071	 Bytes: 6
  %loadMem_424071 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424071 = call %struct.Memory* @routine_jne_.L_424086(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424071, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_424071, %struct.Memory** %MEMORY

  %loadBr_424071 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424071 = icmp eq i8 %loadBr_424071, 1
  br i1 %cmpBr_424071, label %block_.L_424086, label %block_424077

block_424077:
  ; Code: movl $0x1, -0x144(%rbp)	 RIP: 424077	 Bytes: 10
  %loadMem_424077 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424077 = call %struct.Memory* @routine_movl__0x1__MINUS0x144__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424077)
  store %struct.Memory* %call_424077, %struct.Memory** %MEMORY

  ; Code: jmpq .L_424176	 RIP: 424081	 Bytes: 5
  %loadMem_424081 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424081 = call %struct.Memory* @routine_jmpq_.L_424176(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424081, i64 245, i64 5)
  store %struct.Memory* %call_424081, %struct.Memory** %MEMORY

  br label %block_.L_424176

  ; Code: .L_424086:	 RIP: 424086	 Bytes: 0
block_.L_424086:

  ; Code: movq -0x128(%rbp), %rdi	 RIP: 424086	 Bytes: 7
  %loadMem_424086 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424086 = call %struct.Memory* @routine_movq_MINUS0x128__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424086)
  store %struct.Memory* %call_424086, %struct.Memory** %MEMORY

  ; Code: movl $0x457b9b, %eax	 RIP: 42408d	 Bytes: 5
  %loadMem_42408d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42408d = call %struct.Memory* @routine_movl__0x457b9b___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42408d)
  store %struct.Memory* %call_42408d, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 424092	 Bytes: 2
  %loadMem_424092 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424092 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424092)
  store %struct.Memory* %call_424092, %struct.Memory** %MEMORY

  ; Code: callq .strcmp_plt	 RIP: 424094	 Bytes: 5
  %loadMem1_424094 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_424094 = call %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_424094, i64 -142132, i64 5, i64 5)
  store %struct.Memory* %call1_424094, %struct.Memory** %MEMORY

  %loadMem2_424094 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424094 = load i64, i64* %3
  %call2_424094 = call %struct.Memory* @ext_strcmp(%struct.State* %0, i64  %loadPC_424094, %struct.Memory* %loadMem2_424094)
  store %struct.Memory* %call2_424094, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 424099	 Bytes: 3
  %loadMem_424099 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424099 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424099)
  store %struct.Memory* %call_424099, %struct.Memory** %MEMORY

  ; Code: jne .L_4240b1	 RIP: 42409c	 Bytes: 6
  %loadMem_42409c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42409c = call %struct.Memory* @routine_jne_.L_4240b1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42409c, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_42409c, %struct.Memory** %MEMORY

  %loadBr_42409c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42409c = icmp eq i8 %loadBr_42409c, 1
  br i1 %cmpBr_42409c, label %block_.L_4240b1, label %block_4240a2

block_4240a2:
  ; Code: movl $0x1, -0x140(%rbp)	 RIP: 4240a2	 Bytes: 10
  %loadMem_4240a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4240a2 = call %struct.Memory* @routine_movl__0x1__MINUS0x140__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4240a2)
  store %struct.Memory* %call_4240a2, %struct.Memory** %MEMORY

  ; Code: jmpq .L_424171	 RIP: 4240ac	 Bytes: 5
  %loadMem_4240ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4240ac = call %struct.Memory* @routine_jmpq_.L_424171(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4240ac, i64 197, i64 5)
  store %struct.Memory* %call_4240ac, %struct.Memory** %MEMORY

  br label %block_.L_424171

  ; Code: .L_4240b1:	 RIP: 4240b1	 Bytes: 0
block_.L_4240b1:

  ; Code: movq -0x128(%rbp), %rdi	 RIP: 4240b1	 Bytes: 7
  %loadMem_4240b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4240b1 = call %struct.Memory* @routine_movq_MINUS0x128__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4240b1)
  store %struct.Memory* %call_4240b1, %struct.Memory** %MEMORY

  ; Code: movl $0x457ba1, %eax	 RIP: 4240b8	 Bytes: 5
  %loadMem_4240b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4240b8 = call %struct.Memory* @routine_movl__0x457ba1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4240b8)
  store %struct.Memory* %call_4240b8, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 4240bd	 Bytes: 2
  %loadMem_4240bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4240bd = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4240bd)
  store %struct.Memory* %call_4240bd, %struct.Memory** %MEMORY

  ; Code: callq .strcmp_plt	 RIP: 4240bf	 Bytes: 5
  %loadMem1_4240bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4240bf = call %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4240bf, i64 -142175, i64 5, i64 5)
  store %struct.Memory* %call1_4240bf, %struct.Memory** %MEMORY

  %loadMem2_4240bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4240bf = load i64, i64* %3
  %call2_4240bf = call %struct.Memory* @ext_strcmp(%struct.State* %0, i64  %loadPC_4240bf, %struct.Memory* %loadMem2_4240bf)
  store %struct.Memory* %call2_4240bf, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4240c4	 Bytes: 3
  %loadMem_4240c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4240c4 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4240c4)
  store %struct.Memory* %call_4240c4, %struct.Memory** %MEMORY

  ; Code: jne .L_424103	 RIP: 4240c7	 Bytes: 6
  %loadMem_4240c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4240c7 = call %struct.Memory* @routine_jne_.L_424103(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4240c7, i8* %BRANCH_TAKEN, i64 60, i64 6, i64 6)
  store %struct.Memory* %call_4240c7, %struct.Memory** %MEMORY

  %loadBr_4240c7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4240c7 = icmp eq i8 %loadBr_4240c7, 1
  br i1 %cmpBr_4240c7, label %block_.L_424103, label %block_4240cd

block_4240cd:
  ; Code: movq -0x130(%rbp), %rdi	 RIP: 4240cd	 Bytes: 7
  %loadMem_4240cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4240cd = call %struct.Memory* @routine_movq_MINUS0x130__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4240cd)
  store %struct.Memory* %call_4240cd, %struct.Memory** %MEMORY

  ; Code: callq .String2SeqfileFormat	 RIP: 4240d4	 Bytes: 5
  %loadMem1_4240d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4240d4 = call %struct.Memory* @routine_callq_.String2SeqfileFormat(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4240d4, i64 130780, i64 5, i64 5)
  store %struct.Memory* %call1_4240d4, %struct.Memory** %MEMORY

  %loadMem2_4240d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4240d4 = load i64, i64* %3
  %call2_4240d4 = call %struct.Memory* @sub_443fb0.String2SeqfileFormat(%struct.State* %0, i64  %loadPC_4240d4, %struct.Memory* %loadMem2_4240d4)
  store %struct.Memory* %call2_4240d4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x5c(%rbp)	 RIP: 4240d9	 Bytes: 3
  %loadMem_4240d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4240d9 = call %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4240d9)
  store %struct.Memory* %call_4240d9, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x5c(%rbp)	 RIP: 4240dc	 Bytes: 4
  %loadMem_4240dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4240dc = call %struct.Memory* @routine_cmpl__0x0__MINUS0x5c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4240dc)
  store %struct.Memory* %call_4240dc, %struct.Memory** %MEMORY

  ; Code: jne .L_4240fe	 RIP: 4240e0	 Bytes: 6
  %loadMem_4240e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4240e0 = call %struct.Memory* @routine_jne_.L_4240fe(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4240e0, i8* %BRANCH_TAKEN, i64 30, i64 6, i64 6)
  store %struct.Memory* %call_4240e0, %struct.Memory** %MEMORY

  %loadBr_4240e0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4240e0 = icmp eq i8 %loadBr_4240e0, 1
  br i1 %cmpBr_4240e0, label %block_.L_4240fe, label %block_4240e6

block_4240e6:
  ; Code: movq $0x457bac, %rdi	 RIP: 4240e6	 Bytes: 10
  %loadMem_4240e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4240e6 = call %struct.Memory* @routine_movq__0x457bac___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4240e6)
  store %struct.Memory* %call_4240e6, %struct.Memory** %MEMORY

  ; Code: movq -0x130(%rbp), %rsi	 RIP: 4240f0	 Bytes: 7
  %loadMem_4240f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4240f0 = call %struct.Memory* @routine_movq_MINUS0x130__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4240f0)
  store %struct.Memory* %call_4240f0, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4240f7	 Bytes: 2
  %loadMem_4240f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4240f7 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4240f7)
  store %struct.Memory* %call_4240f7, %struct.Memory** %MEMORY

  ; Code: callq .Die	 RIP: 4240f9	 Bytes: 5
  %loadMem1_4240f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4240f9 = call %struct.Memory* @routine_callq_.Die(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4240f9, i64 108823, i64 5, i64 5)
  store %struct.Memory* %call1_4240f9, %struct.Memory** %MEMORY

  %loadMem2_4240f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4240f9 = load i64, i64* %3
  %call2_4240f9 = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64  %loadPC_4240f9, %struct.Memory* %loadMem2_4240f9)
  store %struct.Memory* %call2_4240f9, %struct.Memory** %MEMORY

  ; Code: .L_4240fe:	 RIP: 4240fe	 Bytes: 0
  br label %block_.L_4240fe
block_.L_4240fe:

  ; Code: jmpq .L_42416c	 RIP: 4240fe	 Bytes: 5
  %loadMem_4240fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4240fe = call %struct.Memory* @routine_jmpq_.L_42416c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4240fe, i64 110, i64 5)
  store %struct.Memory* %call_4240fe, %struct.Memory** %MEMORY

  br label %block_.L_42416c

  ; Code: .L_424103:	 RIP: 424103	 Bytes: 0
block_.L_424103:

  ; Code: movq -0x128(%rbp), %rdi	 RIP: 424103	 Bytes: 7
  %loadMem_424103 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424103 = call %struct.Memory* @routine_movq_MINUS0x128__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424103)
  store %struct.Memory* %call_424103, %struct.Memory** %MEMORY

  ; Code: movl $0x457173, %eax	 RIP: 42410a	 Bytes: 5
  %loadMem_42410a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42410a = call %struct.Memory* @routine_movl__0x457173___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42410a)
  store %struct.Memory* %call_42410a, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 42410f	 Bytes: 2
  %loadMem_42410f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42410f = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42410f)
  store %struct.Memory* %call_42410f, %struct.Memory** %MEMORY

  ; Code: callq .strcmp_plt	 RIP: 424111	 Bytes: 5
  %loadMem1_424111 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_424111 = call %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_424111, i64 -142257, i64 5, i64 5)
  store %struct.Memory* %call1_424111, %struct.Memory** %MEMORY

  %loadMem2_424111 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424111 = load i64, i64* %3
  %call2_424111 = call %struct.Memory* @ext_strcmp(%struct.State* %0, i64  %loadPC_424111, %struct.Memory* %loadMem2_424111)
  store %struct.Memory* %call2_424111, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 424116	 Bytes: 3
  %loadMem_424116 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424116 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424116)
  store %struct.Memory* %call_424116, %struct.Memory** %MEMORY

  ; Code: jne .L_424167	 RIP: 424119	 Bytes: 6
  %loadMem_424119 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424119 = call %struct.Memory* @routine_jne_.L_424167(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424119, i8* %BRANCH_TAKEN, i64 78, i64 6, i64 6)
  store %struct.Memory* %call_424119, %struct.Memory** %MEMORY

  %loadBr_424119 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424119 = icmp eq i8 %loadBr_424119, 1
  br i1 %cmpBr_424119, label %block_.L_424167, label %block_42411f

block_42411f:
  ; Code: movq $0x6617f0, %rsi	 RIP: 42411f	 Bytes: 10
  %loadMem_42411f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42411f = call %struct.Memory* @routine_movq__0x6617f0___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42411f)
  store %struct.Memory* %call_42411f, %struct.Memory** %MEMORY

  ; Code: movq 0x663040, %rdi	 RIP: 424129	 Bytes: 8
  %loadMem_424129 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424129 = call %struct.Memory* @routine_movq_0x663040___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424129)
  store %struct.Memory* %call_424129, %struct.Memory** %MEMORY

  ; Code: callq .HMMERBanner	 RIP: 424131	 Bytes: 5
  %loadMem1_424131 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_424131 = call %struct.Memory* @routine_callq_.HMMERBanner(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_424131, i64 19055, i64 5, i64 5)
  store %struct.Memory* %call1_424131, %struct.Memory** %MEMORY

  %loadMem2_424131 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424131 = load i64, i64* %3
  %call2_424131 = call %struct.Memory* @sub_428ba0.HMMERBanner(%struct.State* %0, i64  %loadPC_424131, %struct.Memory* %loadMem2_424131)
  store %struct.Memory* %call2_424131, %struct.Memory** %MEMORY

  ; Code: movq $0x661670, %rdi	 RIP: 424136	 Bytes: 10
  %loadMem_424136 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424136 = call %struct.Memory* @routine_movq__0x661670___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424136)
  store %struct.Memory* %call_424136, %struct.Memory** %MEMORY

  ; Code: callq .puts_plt	 RIP: 424140	 Bytes: 5
  %loadMem1_424140 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_424140 = call %struct.Memory* @routine_callq_.puts_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_424140, i64 -142656, i64 5, i64 5)
  store %struct.Memory* %call1_424140, %struct.Memory** %MEMORY

  %loadMem2_424140 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424140 = load i64, i64* %3
  %call2_424140 = call %struct.Memory* @ext_puts(%struct.State* %0, i64  %loadPC_424140, %struct.Memory* %loadMem2_424140)
  store %struct.Memory* %call2_424140, %struct.Memory** %MEMORY

  ; Code: movq $0x661830, %rdi	 RIP: 424145	 Bytes: 10
  %loadMem_424145 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424145 = call %struct.Memory* @routine_movq__0x661830___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424145)
  store %struct.Memory* %call_424145, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x164(%rbp)	 RIP: 42414f	 Bytes: 6
  %loadMem_42414f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42414f = call %struct.Memory* @routine_movl__eax__MINUS0x164__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42414f)
  store %struct.Memory* %call_42414f, %struct.Memory** %MEMORY

  ; Code: callq .puts_plt	 RIP: 424155	 Bytes: 5
  %loadMem1_424155 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_424155 = call %struct.Memory* @routine_callq_.puts_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_424155, i64 -142677, i64 5, i64 5)
  store %struct.Memory* %call1_424155, %struct.Memory** %MEMORY

  %loadMem2_424155 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424155 = load i64, i64* %3
  %call2_424155 = call %struct.Memory* @ext_puts(%struct.State* %0, i64  %loadPC_424155, %struct.Memory* %loadMem2_424155)
  store %struct.Memory* %call2_424155, %struct.Memory** %MEMORY

  ; Code: xorl %edi, %edi	 RIP: 42415a	 Bytes: 2
  %loadMem_42415a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42415a = call %struct.Memory* @routine_xorl__edi___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42415a)
  store %struct.Memory* %call_42415a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x168(%rbp)	 RIP: 42415c	 Bytes: 6
  %loadMem_42415c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42415c = call %struct.Memory* @routine_movl__eax__MINUS0x168__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42415c)
  store %struct.Memory* %call_42415c, %struct.Memory** %MEMORY

  ; Code: callq .exit_plt	 RIP: 424162	 Bytes: 5
  %loadMem1_424162 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_424162 = call %struct.Memory* @routine_callq_.exit_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_424162, i64 -141970, i64 5, i64 5)
  store %struct.Memory* %call1_424162, %struct.Memory** %MEMORY

  %loadMem2_424162 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424162 = load i64, i64* %3
  %call2_424162 = call %struct.Memory* @ext_exit(%struct.State* %0, i64  %loadPC_424162, %struct.Memory* %loadMem2_424162)
  store %struct.Memory* %call2_424162, %struct.Memory** %MEMORY

  ; Code: .L_424167:	 RIP: 424167	 Bytes: 0
  br label %block_.L_424167
block_.L_424167:

  ; Code: jmpq .L_42416c	 RIP: 424167	 Bytes: 5
  %loadMem_424167 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424167 = call %struct.Memory* @routine_jmpq_.L_42416c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424167, i64 5, i64 5)
  store %struct.Memory* %call_424167, %struct.Memory** %MEMORY

  br label %block_.L_42416c

  ; Code: .L_42416c:	 RIP: 42416c	 Bytes: 0
block_.L_42416c:

  ; Code: jmpq .L_424171	 RIP: 42416c	 Bytes: 5
  %loadMem_42416c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42416c = call %struct.Memory* @routine_jmpq_.L_424171(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42416c, i64 5, i64 5)
  store %struct.Memory* %call_42416c, %struct.Memory** %MEMORY

  br label %block_.L_424171

  ; Code: .L_424171:	 RIP: 424171	 Bytes: 0
block_.L_424171:

  ; Code: jmpq .L_424176	 RIP: 424171	 Bytes: 5
  %loadMem_424171 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424171 = call %struct.Memory* @routine_jmpq_.L_424176(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424171, i64 5, i64 5)
  store %struct.Memory* %call_424171, %struct.Memory** %MEMORY

  br label %block_.L_424176

  ; Code: .L_424176:	 RIP: 424176	 Bytes: 0
block_.L_424176:

  ; Code: jmpq .L_42417b	 RIP: 424176	 Bytes: 5
  %loadMem_424176 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424176 = call %struct.Memory* @routine_jmpq_.L_42417b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424176, i64 5, i64 5)
  store %struct.Memory* %call_424176, %struct.Memory** %MEMORY

  br label %block_.L_42417b

  ; Code: .L_42417b:	 RIP: 42417b	 Bytes: 0
block_.L_42417b:

  ; Code: jmpq .L_424180	 RIP: 42417b	 Bytes: 5
  %loadMem_42417b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42417b = call %struct.Memory* @routine_jmpq_.L_424180(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42417b, i64 5, i64 5)
  store %struct.Memory* %call_42417b, %struct.Memory** %MEMORY

  br label %block_.L_424180

  ; Code: .L_424180:	 RIP: 424180	 Bytes: 0
block_.L_424180:

  ; Code: jmpq .L_424185	 RIP: 424180	 Bytes: 5
  %loadMem_424180 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424180 = call %struct.Memory* @routine_jmpq_.L_424185(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424180, i64 5, i64 5)
  store %struct.Memory* %call_424180, %struct.Memory** %MEMORY

  br label %block_.L_424185

  ; Code: .L_424185:	 RIP: 424185	 Bytes: 0
block_.L_424185:

  ; Code: jmpq .L_42418a	 RIP: 424185	 Bytes: 5
  %loadMem_424185 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424185 = call %struct.Memory* @routine_jmpq_.L_42418a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424185, i64 5, i64 5)
  store %struct.Memory* %call_424185, %struct.Memory** %MEMORY

  br label %block_.L_42418a

  ; Code: .L_42418a:	 RIP: 42418a	 Bytes: 0
block_.L_42418a:

  ; Code: jmpq .L_42418f	 RIP: 42418a	 Bytes: 5
  %loadMem_42418a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42418a = call %struct.Memory* @routine_jmpq_.L_42418f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42418a, i64 5, i64 5)
  store %struct.Memory* %call_42418a, %struct.Memory** %MEMORY

  br label %block_.L_42418f

  ; Code: .L_42418f:	 RIP: 42418f	 Bytes: 0
block_.L_42418f:

  ; Code: jmpq .L_424194	 RIP: 42418f	 Bytes: 5
  %loadMem_42418f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42418f = call %struct.Memory* @routine_jmpq_.L_424194(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42418f, i64 5, i64 5)
  store %struct.Memory* %call_42418f, %struct.Memory** %MEMORY

  br label %block_.L_424194

  ; Code: .L_424194:	 RIP: 424194	 Bytes: 0
block_.L_424194:

  ; Code: jmpq .L_424199	 RIP: 424194	 Bytes: 5
  %loadMem_424194 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424194 = call %struct.Memory* @routine_jmpq_.L_424199(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424194, i64 5, i64 5)
  store %struct.Memory* %call_424194, %struct.Memory** %MEMORY

  br label %block_.L_424199

  ; Code: .L_424199:	 RIP: 424199	 Bytes: 0
block_.L_424199:

  ; Code: jmpq .L_42419e	 RIP: 424199	 Bytes: 5
  %loadMem_424199 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424199 = call %struct.Memory* @routine_jmpq_.L_42419e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424199, i64 5, i64 5)
  store %struct.Memory* %call_424199, %struct.Memory** %MEMORY

  br label %block_.L_42419e

  ; Code: .L_42419e:	 RIP: 42419e	 Bytes: 0
block_.L_42419e:

  ; Code: jmpq .L_4241a3	 RIP: 42419e	 Bytes: 5
  %loadMem_42419e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42419e = call %struct.Memory* @routine_jmpq_.L_4241a3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42419e, i64 5, i64 5)
  store %struct.Memory* %call_42419e, %struct.Memory** %MEMORY

  br label %block_.L_4241a3

  ; Code: .L_4241a3:	 RIP: 4241a3	 Bytes: 0
block_.L_4241a3:

  ; Code: jmpq .L_4241a8	 RIP: 4241a3	 Bytes: 5
  %loadMem_4241a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4241a3 = call %struct.Memory* @routine_jmpq_.L_4241a8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4241a3, i64 5, i64 5)
  store %struct.Memory* %call_4241a3, %struct.Memory** %MEMORY

  br label %block_.L_4241a8

  ; Code: .L_4241a8:	 RIP: 4241a8	 Bytes: 0
block_.L_4241a8:

  ; Code: jmpq .L_4241ad	 RIP: 4241a8	 Bytes: 5
  %loadMem_4241a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4241a8 = call %struct.Memory* @routine_jmpq_.L_4241ad(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4241a8, i64 5, i64 5)
  store %struct.Memory* %call_4241a8, %struct.Memory** %MEMORY

  br label %block_.L_4241ad

  ; Code: .L_4241ad:	 RIP: 4241ad	 Bytes: 0
block_.L_4241ad:

  ; Code: jmpq .L_4241b2	 RIP: 4241ad	 Bytes: 5
  %loadMem_4241ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4241ad = call %struct.Memory* @routine_jmpq_.L_4241b2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4241ad, i64 5, i64 5)
  store %struct.Memory* %call_4241ad, %struct.Memory** %MEMORY

  br label %block_.L_4241b2

  ; Code: .L_4241b2:	 RIP: 4241b2	 Bytes: 0
block_.L_4241b2:

  ; Code: jmpq .L_4241b7	 RIP: 4241b2	 Bytes: 5
  %loadMem_4241b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4241b2 = call %struct.Memory* @routine_jmpq_.L_4241b7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4241b2, i64 5, i64 5)
  store %struct.Memory* %call_4241b2, %struct.Memory** %MEMORY

  br label %block_.L_4241b7

  ; Code: .L_4241b7:	 RIP: 4241b7	 Bytes: 0
block_.L_4241b7:

  ; Code: jmpq .L_423d87	 RIP: 4241b7	 Bytes: 5
  %loadMem_4241b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4241b7 = call %struct.Memory* @routine_jmpq_.L_423d87(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4241b7, i64 -1072, i64 5)
  store %struct.Memory* %call_4241b7, %struct.Memory** %MEMORY

  br label %block_.L_423d87

  ; Code: .L_4241bc:	 RIP: 4241bc	 Bytes: 0
block_.L_4241bc:

  ; Code: movl -0x30(%rbp), %eax	 RIP: 4241bc	 Bytes: 3
  %loadMem_4241bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4241bc = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4241bc)
  store %struct.Memory* %call_4241bc, %struct.Memory** %MEMORY

  ; Code: subl -0x134(%rbp), %eax	 RIP: 4241bf	 Bytes: 6
  %loadMem_4241bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4241bf = call %struct.Memory* @routine_subl_MINUS0x134__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4241bf)
  store %struct.Memory* %call_4241bf, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, %eax	 RIP: 4241c5	 Bytes: 3
  %loadMem_4241c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4241c5 = call %struct.Memory* @routine_cmpl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4241c5)
  store %struct.Memory* %call_4241c5, %struct.Memory** %MEMORY

  ; Code: je .L_4241e9	 RIP: 4241c8	 Bytes: 6
  %loadMem_4241c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4241c8 = call %struct.Memory* @routine_je_.L_4241e9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4241c8, i8* %BRANCH_TAKEN, i64 33, i64 6, i64 6)
  store %struct.Memory* %call_4241c8, %struct.Memory** %MEMORY

  %loadBr_4241c8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4241c8 = icmp eq i8 %loadBr_4241c8, 1
  br i1 %cmpBr_4241c8, label %block_.L_4241e9, label %block_4241ce

block_4241ce:
  ; Code: movq $0x457176, %rdi	 RIP: 4241ce	 Bytes: 10
  %loadMem_4241ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4241ce = call %struct.Memory* @routine_movq__0x457176___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4241ce)
  store %struct.Memory* %call_4241ce, %struct.Memory** %MEMORY

  ; Code: movq $0x661670, %rsi	 RIP: 4241d8	 Bytes: 10
  %loadMem_4241d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4241d8 = call %struct.Memory* @routine_movq__0x661670___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4241d8)
  store %struct.Memory* %call_4241d8, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4241e2	 Bytes: 2
  %loadMem_4241e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4241e2 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4241e2)
  store %struct.Memory* %call_4241e2, %struct.Memory** %MEMORY

  ; Code: callq .Die	 RIP: 4241e4	 Bytes: 5
  %loadMem1_4241e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4241e4 = call %struct.Memory* @routine_callq_.Die(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4241e4, i64 108588, i64 5, i64 5)
  store %struct.Memory* %call1_4241e4, %struct.Memory** %MEMORY

  %loadMem2_4241e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4241e4 = load i64, i64* %3
  %call2_4241e4 = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64  %loadPC_4241e4, %struct.Memory* %loadMem2_4241e4)
  store %struct.Memory* %call2_4241e4, %struct.Memory** %MEMORY

  ; Code: .L_4241e9:	 RIP: 4241e9	 Bytes: 0
  br label %block_.L_4241e9
block_.L_4241e9:

  ; Code: movq -0x38(%rbp), %rax	 RIP: 4241e9	 Bytes: 4
  %loadMem_4241e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4241e9 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4241e9)
  store %struct.Memory* %call_4241e9, %struct.Memory** %MEMORY

  ; Code: movl -0x134(%rbp), %ecx	 RIP: 4241ed	 Bytes: 6
  %loadMem_4241ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4241ed = call %struct.Memory* @routine_movl_MINUS0x134__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4241ed)
  store %struct.Memory* %call_4241ed, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 4241f3	 Bytes: 2
  %loadMem_4241f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4241f3 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4241f3)
  store %struct.Memory* %call_4241f3, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 4241f5	 Bytes: 3
  %loadMem_4241f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4241f5 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4241f5)
  store %struct.Memory* %call_4241f5, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x134(%rbp)	 RIP: 4241f8	 Bytes: 6
  %loadMem_4241f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4241f8 = call %struct.Memory* @routine_movl__edx__MINUS0x134__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4241f8)
  store %struct.Memory* %call_4241f8, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 4241fe	 Bytes: 3
  %loadMem_4241fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4241fe = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4241fe)
  store %struct.Memory* %call_4241fe, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rsi,8), %rax	 RIP: 424201	 Bytes: 4
  %loadMem_424201 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424201 = call %struct.Memory* @routine_movq___rax__rsi_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424201)
  store %struct.Memory* %call_424201, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x40(%rbp)	 RIP: 424205	 Bytes: 4
  %loadMem_424205 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424205 = call %struct.Memory* @routine_movq__rax__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424205)
  store %struct.Memory* %call_424205, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rax	 RIP: 424209	 Bytes: 4
  %loadMem_424209 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424209 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424209)
  store %struct.Memory* %call_424209, %struct.Memory** %MEMORY

  ; Code: movl -0x134(%rbp), %ecx	 RIP: 42420d	 Bytes: 6
  %loadMem_42420d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42420d = call %struct.Memory* @routine_movl_MINUS0x134__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42420d)
  store %struct.Memory* %call_42420d, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 424213	 Bytes: 2
  %loadMem_424213 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424213 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424213)
  store %struct.Memory* %call_424213, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 424215	 Bytes: 3
  %loadMem_424215 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424215 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424215)
  store %struct.Memory* %call_424215, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x134(%rbp)	 RIP: 424218	 Bytes: 6
  %loadMem_424218 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424218 = call %struct.Memory* @routine_movl__edx__MINUS0x134__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424218)
  store %struct.Memory* %call_424218, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 42421e	 Bytes: 3
  %loadMem_42421e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42421e = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42421e)
  store %struct.Memory* %call_42421e, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rsi,8), %rax	 RIP: 424221	 Bytes: 4
  %loadMem_424221 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424221 = call %struct.Memory* @routine_movq___rax__rsi_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424221)
  store %struct.Memory* %call_424221, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x50(%rbp)	 RIP: 424225	 Bytes: 4
  %loadMem_424225 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424225 = call %struct.Memory* @routine_movq__rax__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424225)
  store %struct.Memory* %call_424225, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x144(%rbp)	 RIP: 424229	 Bytes: 7
  %loadMem_424229 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424229 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x144__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424229)
  store %struct.Memory* %call_424229, %struct.Memory** %MEMORY

  ; Code: je .L_424254	 RIP: 424230	 Bytes: 6
  %loadMem_424230 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424230 = call %struct.Memory* @routine_je_.L_424254(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424230, i8* %BRANCH_TAKEN, i64 36, i64 6, i64 6)
  store %struct.Memory* %call_424230, %struct.Memory** %MEMORY

  %loadBr_424230 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424230 = icmp eq i8 %loadBr_424230, 1
  br i1 %cmpBr_424230, label %block_.L_424254, label %block_424236

block_424236:
  ; Code: cmpl $0x0, -0x154(%rbp)	 RIP: 424236	 Bytes: 7
  %loadMem_424236 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424236 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x154__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424236)
  store %struct.Memory* %call_424236, %struct.Memory** %MEMORY

  ; Code: jne .L_424254	 RIP: 42423d	 Bytes: 6
  %loadMem_42423d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42423d = call %struct.Memory* @routine_jne_.L_424254(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42423d, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_42423d, %struct.Memory** %MEMORY

  %loadBr_42423d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42423d = icmp eq i8 %loadBr_42423d, 1
  br i1 %cmpBr_42423d, label %block_.L_424254, label %block_424243

block_424243:
  ; Code: movq $0x457bd3, %rdi	 RIP: 424243	 Bytes: 10
  %loadMem_424243 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424243 = call %struct.Memory* @routine_movq__0x457bd3___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424243)
  store %struct.Memory* %call_424243, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 42424d	 Bytes: 2
  %loadMem_42424d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42424d = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42424d)
  store %struct.Memory* %call_42424d, %struct.Memory** %MEMORY

  ; Code: callq .Die	 RIP: 42424f	 Bytes: 5
  %loadMem1_42424f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42424f = call %struct.Memory* @routine_callq_.Die(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42424f, i64 108481, i64 5, i64 5)
  store %struct.Memory* %call1_42424f, %struct.Memory** %MEMORY

  %loadMem2_42424f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42424f = load i64, i64* %3
  %call2_42424f = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64  %loadPC_42424f, %struct.Memory* %loadMem2_42424f)
  store %struct.Memory* %call2_42424f, %struct.Memory** %MEMORY

  ; Code: .L_424254:	 RIP: 424254	 Bytes: 0
  br label %block_.L_424254
block_.L_424254:

  ; Code: cmpl $0x0, -0x14c(%rbp)	 RIP: 424254	 Bytes: 7
  %loadMem_424254 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424254 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x14c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424254)
  store %struct.Memory* %call_424254, %struct.Memory** %MEMORY

  ; Code: je .L_42427f	 RIP: 42425b	 Bytes: 6
  %loadMem_42425b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42425b = call %struct.Memory* @routine_je_.L_42427f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42425b, i8* %BRANCH_TAKEN, i64 36, i64 6, i64 6)
  store %struct.Memory* %call_42425b, %struct.Memory** %MEMORY

  %loadBr_42425b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42425b = icmp eq i8 %loadBr_42425b, 1
  br i1 %cmpBr_42425b, label %block_.L_42427f, label %block_424261

block_424261:
  ; Code: cmpl $0x0, -0x150(%rbp)	 RIP: 424261	 Bytes: 7
  %loadMem_424261 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424261 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x150__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424261)
  store %struct.Memory* %call_424261, %struct.Memory** %MEMORY

  ; Code: jne .L_42427f	 RIP: 424268	 Bytes: 6
  %loadMem_424268 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424268 = call %struct.Memory* @routine_jne_.L_42427f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424268, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_424268, %struct.Memory** %MEMORY

  %loadBr_424268 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424268 = icmp eq i8 %loadBr_424268, 1
  br i1 %cmpBr_424268, label %block_.L_42427f, label %block_42426e

block_42426e:
  ; Code: movq $0x457c1d, %rdi	 RIP: 42426e	 Bytes: 10
  %loadMem_42426e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42426e = call %struct.Memory* @routine_movq__0x457c1d___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42426e)
  store %struct.Memory* %call_42426e, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 424278	 Bytes: 2
  %loadMem_424278 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424278 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424278)
  store %struct.Memory* %call_424278, %struct.Memory** %MEMORY

  ; Code: callq .Die	 RIP: 42427a	 Bytes: 5
  %loadMem1_42427a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42427a = call %struct.Memory* @routine_callq_.Die(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42427a, i64 108438, i64 5, i64 5)
  store %struct.Memory* %call1_42427a, %struct.Memory** %MEMORY

  %loadMem2_42427a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42427a = load i64, i64* %3
  %call2_42427a = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64  %loadPC_42427a, %struct.Memory* %loadMem2_42427a)
  store %struct.Memory* %call2_42427a, %struct.Memory** %MEMORY

  ; Code: .L_42427f:	 RIP: 42427f	 Bytes: 0
  br label %block_.L_42427f
block_.L_42427f:

  ; Code: cmpl $0x0, -0x5c(%rbp)	 RIP: 42427f	 Bytes: 4
  %loadMem_42427f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42427f = call %struct.Memory* @routine_cmpl__0x0__MINUS0x5c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42427f)
  store %struct.Memory* %call_42427f, %struct.Memory** %MEMORY

  ; Code: jne .L_4242c7	 RIP: 424283	 Bytes: 6
  %loadMem_424283 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424283 = call %struct.Memory* @routine_jne_.L_4242c7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424283, i8* %BRANCH_TAKEN, i64 68, i64 6, i64 6)
  store %struct.Memory* %call_424283, %struct.Memory** %MEMORY

  %loadBr_424283 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424283 = icmp eq i8 %loadBr_424283, 1
  br i1 %cmpBr_424283, label %block_.L_4242c7, label %block_424289

block_424289:
  ; Code: movq $0x457c6d, %rdi	 RIP: 424289	 Bytes: 10
  %loadMem_424289 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424289 = call %struct.Memory* @routine_movq__0x457c6d___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424289)
  store %struct.Memory* %call_424289, %struct.Memory** %MEMORY

  ; Code: xorl %edx, %edx	 RIP: 424293	 Bytes: 2
  %loadMem_424293 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424293 = call %struct.Memory* @routine_xorl__edx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424293)
  store %struct.Memory* %call_424293, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rsi	 RIP: 424295	 Bytes: 4
  %loadMem_424295 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424295 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424295)
  store %struct.Memory* %call_424295, %struct.Memory** %MEMORY

  ; Code: callq .Strparse	 RIP: 424299	 Bytes: 5
  %loadMem1_424299 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_424299 = call %struct.Memory* @routine_callq_.Strparse(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_424299, i64 4679, i64 5, i64 5)
  store %struct.Memory* %call1_424299, %struct.Memory** %MEMORY

  %loadMem2_424299 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424299 = load i64, i64* %3
  %call2_424299 = call %struct.Memory* @sub_4254e0.Strparse(%struct.State* %0, i64  %loadPC_424299, %struct.Memory* %loadMem2_424299)
  store %struct.Memory* %call2_424299, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 42429e	 Bytes: 3
  %loadMem_42429e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42429e = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42429e)
  store %struct.Memory* %call_42429e, %struct.Memory** %MEMORY

  ; Code: jne .L_4242c0	 RIP: 4242a1	 Bytes: 6
  %loadMem_4242a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4242a1 = call %struct.Memory* @routine_jne_.L_4242c0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4242a1, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_4242a1, %struct.Memory** %MEMORY

  %loadBr_4242a1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4242a1 = icmp eq i8 %loadBr_4242a1, 1
  br i1 %cmpBr_4242a1, label %block_.L_4242c0, label %block_4242a7

block_4242a7:
  ; Code: movq -0x50(%rbp), %rdi	 RIP: 4242a7	 Bytes: 4
  %loadMem_4242a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4242a7 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4242a7)
  store %struct.Memory* %call_4242a7, %struct.Memory** %MEMORY

  ; Code: movl $0x456fc4, %eax	 RIP: 4242ab	 Bytes: 5
  %loadMem_4242ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4242ab = call %struct.Memory* @routine_movl__0x456fc4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4242ab)
  store %struct.Memory* %call_4242ab, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 4242b0	 Bytes: 2
  %loadMem_4242b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4242b0 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4242b0)
  store %struct.Memory* %call_4242b0, %struct.Memory** %MEMORY

  ; Code: callq .strcmp_plt	 RIP: 4242b2	 Bytes: 5
  %loadMem1_4242b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4242b2 = call %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4242b2, i64 -142674, i64 5, i64 5)
  store %struct.Memory* %call1_4242b2, %struct.Memory** %MEMORY

  %loadMem2_4242b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4242b2 = load i64, i64* %3
  %call2_4242b2 = call %struct.Memory* @ext_strcmp(%struct.State* %0, i64  %loadPC_4242b2, %struct.Memory* %loadMem2_4242b2)
  store %struct.Memory* %call2_4242b2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4242b7	 Bytes: 3
  %loadMem_4242b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4242b7 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4242b7)
  store %struct.Memory* %call_4242b7, %struct.Memory** %MEMORY

  ; Code: jne .L_4242c7	 RIP: 4242ba	 Bytes: 6
  %loadMem_4242ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4242ba = call %struct.Memory* @routine_jne_.L_4242c7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4242ba, i8* %BRANCH_TAKEN, i64 13, i64 6, i64 6)
  store %struct.Memory* %call_4242ba, %struct.Memory** %MEMORY

  %loadBr_4242ba = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4242ba = icmp eq i8 %loadBr_4242ba, 1
  br i1 %cmpBr_4242ba, label %block_.L_4242c7, label %block_.L_4242c0

  ; Code: .L_4242c0:	 RIP: 4242c0	 Bytes: 0
block_.L_4242c0:

  ; Code: movl $0x7, -0x5c(%rbp)	 RIP: 4242c0	 Bytes: 7
  %loadMem_4242c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4242c0 = call %struct.Memory* @routine_movl__0x7__MINUS0x5c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4242c0)
  store %struct.Memory* %call_4242c0, %struct.Memory** %MEMORY

  ; Code: .L_4242c7:	 RIP: 4242c7	 Bytes: 0
  br label %block_.L_4242c7
block_.L_4242c7:

  ; Code: movq $0x457c76, %rdx	 RIP: 4242c7	 Bytes: 10
  %loadMem_4242c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4242c7 = call %struct.Memory* @routine_movq__0x457c76___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4242c7)
  store %struct.Memory* %call_4242c7, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rdi	 RIP: 4242d1	 Bytes: 4
  %loadMem_4242d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4242d1 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4242d1)
  store %struct.Memory* %call_4242d1, %struct.Memory** %MEMORY

  ; Code: movl -0x5c(%rbp), %esi	 RIP: 4242d5	 Bytes: 3
  %loadMem_4242d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4242d5 = call %struct.Memory* @routine_movl_MINUS0x5c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4242d5)
  store %struct.Memory* %call_4242d5, %struct.Memory** %MEMORY

  ; Code: callq .SeqfileOpen	 RIP: 4242d8	 Bytes: 5
  %loadMem1_4242d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4242d8 = call %struct.Memory* @routine_callq_.SeqfileOpen(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4242d8, i64 109352, i64 5, i64 5)
  store %struct.Memory* %call1_4242d8, %struct.Memory** %MEMORY

  %loadMem2_4242d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4242d8 = load i64, i64* %3
  %call2_4242d8 = call %struct.Memory* @sub_43ee00.SeqfileOpen(%struct.State* %0, i64  %loadPC_4242d8, %struct.Memory* %loadMem2_4242d8)
  store %struct.Memory* %call2_4242d8, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x58(%rbp)	 RIP: 4242dd	 Bytes: 4
  %loadMem_4242dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4242dd = call %struct.Memory* @routine_movq__rax__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4242dd)
  store %struct.Memory* %call_4242dd, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 4242e1	 Bytes: 4
  %loadMem_4242e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4242e1 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4242e1)
  store %struct.Memory* %call_4242e1, %struct.Memory** %MEMORY

  ; Code: jne .L_42430a	 RIP: 4242e5	 Bytes: 6
  %loadMem_4242e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4242e5 = call %struct.Memory* @routine_jne_.L_42430a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4242e5, i8* %BRANCH_TAKEN, i64 37, i64 6, i64 6)
  store %struct.Memory* %call_4242e5, %struct.Memory** %MEMORY

  %loadBr_4242e5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4242e5 = icmp eq i8 %loadBr_4242e5, 1
  br i1 %cmpBr_4242e5, label %block_.L_42430a, label %block_4242eb

block_4242eb:
  ; Code: movq $0x457c7e, %rdi	 RIP: 4242eb	 Bytes: 10
  %loadMem_4242eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4242eb = call %struct.Memory* @routine_movq__0x457c7e___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4242eb)
  store %struct.Memory* %call_4242eb, %struct.Memory** %MEMORY

  ; Code: movq $0x661670, %rdx	 RIP: 4242f5	 Bytes: 10
  %loadMem_4242f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4242f5 = call %struct.Memory* @routine_movq__0x661670___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4242f5)
  store %struct.Memory* %call_4242f5, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rsi	 RIP: 4242ff	 Bytes: 4
  %loadMem_4242ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4242ff = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4242ff)
  store %struct.Memory* %call_4242ff, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 424303	 Bytes: 2
  %loadMem_424303 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424303 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424303)
  store %struct.Memory* %call_424303, %struct.Memory** %MEMORY

  ; Code: callq .Die	 RIP: 424305	 Bytes: 5
  %loadMem1_424305 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_424305 = call %struct.Memory* @routine_callq_.Die(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_424305, i64 108299, i64 5, i64 5)
  store %struct.Memory* %call1_424305, %struct.Memory** %MEMORY

  %loadMem2_424305 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424305 = load i64, i64* %3
  %call2_424305 = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64  %loadPC_424305, %struct.Memory* %loadMem2_424305)
  store %struct.Memory* %call2_424305, %struct.Memory** %MEMORY

  ; Code: .L_42430a:	 RIP: 42430a	 Bytes: 0
  br label %block_.L_42430a
block_.L_42430a:

  ; Code: movq $0x457cab, %rsi	 RIP: 42430a	 Bytes: 10
  %loadMem_42430a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42430a = call %struct.Memory* @routine_movq__0x457cab___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42430a)
  store %struct.Memory* %call_42430a, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rdi	 RIP: 424314	 Bytes: 4
  %loadMem_424314 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424314 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424314)
  store %struct.Memory* %call_424314, %struct.Memory** %MEMORY

  ; Code: callq .HMMFileOpen	 RIP: 424318	 Bytes: 5
  %loadMem1_424318 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_424318 = call %struct.Memory* @routine_callq_.HMMFileOpen(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_424318, i64 -31256, i64 5, i64 5)
  store %struct.Memory* %call1_424318, %struct.Memory** %MEMORY

  %loadMem2_424318 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424318 = load i64, i64* %3
  %call2_424318 = call %struct.Memory* @sub_41c900.HMMFileOpen(%struct.State* %0, i64  %loadPC_424318, %struct.Memory* %loadMem2_424318)
  store %struct.Memory* %call2_424318, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x48(%rbp)	 RIP: 42431d	 Bytes: 4
  %loadMem_42431d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42431d = call %struct.Memory* @routine_movq__rax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42431d)
  store %struct.Memory* %call_42431d, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 424321	 Bytes: 4
  %loadMem_424321 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424321 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424321)
  store %struct.Memory* %call_424321, %struct.Memory** %MEMORY

  ; Code: jne .L_42434a	 RIP: 424325	 Bytes: 6
  %loadMem_424325 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424325 = call %struct.Memory* @routine_jne_.L_42434a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424325, i8* %BRANCH_TAKEN, i64 37, i64 6, i64 6)
  store %struct.Memory* %call_424325, %struct.Memory** %MEMORY

  %loadBr_424325 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424325 = icmp eq i8 %loadBr_424325, 1
  br i1 %cmpBr_424325, label %block_.L_42434a, label %block_42432b

block_42432b:
  ; Code: movq $0x457cb3, %rdi	 RIP: 42432b	 Bytes: 10
  %loadMem_42432b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42432b = call %struct.Memory* @routine_movq__0x457cb3___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42432b)
  store %struct.Memory* %call_42432b, %struct.Memory** %MEMORY

  ; Code: movq $0x661670, %rdx	 RIP: 424335	 Bytes: 10
  %loadMem_424335 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424335 = call %struct.Memory* @routine_movq__0x661670___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424335)
  store %struct.Memory* %call_424335, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rsi	 RIP: 42433f	 Bytes: 4
  %loadMem_42433f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42433f = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42433f)
  store %struct.Memory* %call_42433f, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 424343	 Bytes: 2
  %loadMem_424343 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424343 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424343)
  store %struct.Memory* %call_424343, %struct.Memory** %MEMORY

  ; Code: callq .Die	 RIP: 424345	 Bytes: 5
  %loadMem1_424345 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_424345 = call %struct.Memory* @routine_callq_.Die(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_424345, i64 108235, i64 5, i64 5)
  store %struct.Memory* %call1_424345, %struct.Memory** %MEMORY

  %loadMem2_424345 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424345 = load i64, i64* %3
  %call2_424345 = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64  %loadPC_424345, %struct.Memory* %loadMem2_424345)
  store %struct.Memory* %call2_424345, %struct.Memory** %MEMORY

  ; Code: .L_42434a:	 RIP: 42434a	 Bytes: 0
  br label %block_.L_42434a
block_.L_42434a:

  ; Code: leaq -0x68(%rbp), %rsi	 RIP: 42434a	 Bytes: 4
  %loadMem_42434a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42434a = call %struct.Memory* @routine_leaq_MINUS0x68__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42434a)
  store %struct.Memory* %call_42434a, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rdi	 RIP: 42434e	 Bytes: 4
  %loadMem_42434e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42434e = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42434e)
  store %struct.Memory* %call_42434e, %struct.Memory** %MEMORY

  ; Code: callq .HMMFileRead	 RIP: 424352	 Bytes: 5
  %loadMem1_424352 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_424352 = call %struct.Memory* @routine_callq_.HMMFileRead(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_424352, i64 -7762, i64 5, i64 5)
  store %struct.Memory* %call1_424352, %struct.Memory** %MEMORY

  %loadMem2_424352 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424352 = load i64, i64* %3
  %call2_424352 = call %struct.Memory* @sub_422500.HMMFileRead(%struct.State* %0, i64  %loadPC_424352, %struct.Memory* %loadMem2_424352)
  store %struct.Memory* %call2_424352, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 424357	 Bytes: 3
  %loadMem_424357 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424357 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424357)
  store %struct.Memory* %call_424357, %struct.Memory** %MEMORY

  ; Code: jne .L_424375	 RIP: 42435a	 Bytes: 6
  %loadMem_42435a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42435a = call %struct.Memory* @routine_jne_.L_424375(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42435a, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_42435a, %struct.Memory** %MEMORY

  %loadBr_42435a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42435a = icmp eq i8 %loadBr_42435a, 1
  br i1 %cmpBr_42435a, label %block_.L_424375, label %block_424360

block_424360:
  ; Code: movq $0x457cd1, %rdi	 RIP: 424360	 Bytes: 10
  %loadMem_424360 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424360 = call %struct.Memory* @routine_movq__0x457cd1___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424360)
  store %struct.Memory* %call_424360, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rsi	 RIP: 42436a	 Bytes: 4
  %loadMem_42436a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42436a = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42436a)
  store %struct.Memory* %call_42436a, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 42436e	 Bytes: 2
  %loadMem_42436e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42436e = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42436e)
  store %struct.Memory* %call_42436e, %struct.Memory** %MEMORY

  ; Code: callq .Die	 RIP: 424370	 Bytes: 5
  %loadMem1_424370 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_424370 = call %struct.Memory* @routine_callq_.Die(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_424370, i64 108192, i64 5, i64 5)
  store %struct.Memory* %call1_424370, %struct.Memory** %MEMORY

  %loadMem2_424370 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424370 = load i64, i64* %3
  %call2_424370 = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64  %loadPC_424370, %struct.Memory* %loadMem2_424370)
  store %struct.Memory* %call2_424370, %struct.Memory** %MEMORY

  ; Code: .L_424375:	 RIP: 424375	 Bytes: 0
  br label %block_.L_424375
block_.L_424375:

  ; Code: cmpq $0x0, -0x68(%rbp)	 RIP: 424375	 Bytes: 5
  %loadMem_424375 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424375 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424375)
  store %struct.Memory* %call_424375, %struct.Memory** %MEMORY

  ; Code: jne .L_424395	 RIP: 42437a	 Bytes: 6
  %loadMem_42437a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42437a = call %struct.Memory* @routine_jne_.L_424395(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42437a, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_42437a, %struct.Memory** %MEMORY

  %loadBr_42437a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42437a = icmp eq i8 %loadBr_42437a, 1
  br i1 %cmpBr_42437a, label %block_.L_424395, label %block_424380

block_424380:
  ; Code: movq $0x457cf2, %rdi	 RIP: 424380	 Bytes: 10
  %loadMem_424380 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424380 = call %struct.Memory* @routine_movq__0x457cf2___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424380)
  store %struct.Memory* %call_424380, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rsi	 RIP: 42438a	 Bytes: 4
  %loadMem_42438a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42438a = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42438a)
  store %struct.Memory* %call_42438a, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 42438e	 Bytes: 2
  %loadMem_42438e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42438e = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42438e)
  store %struct.Memory* %call_42438e, %struct.Memory** %MEMORY

  ; Code: callq .Die	 RIP: 424390	 Bytes: 5
  %loadMem1_424390 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_424390 = call %struct.Memory* @routine_callq_.Die(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_424390, i64 108160, i64 5, i64 5)
  store %struct.Memory* %call1_424390, %struct.Memory** %MEMORY

  %loadMem2_424390 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424390 = load i64, i64* %3
  %call2_424390 = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64  %loadPC_424390, %struct.Memory* %loadMem2_424390)
  store %struct.Memory* %call2_424390, %struct.Memory** %MEMORY

  ; Code: .L_424395:	 RIP: 424395	 Bytes: 0
  br label %block_.L_424395
block_.L_424395:

  ; Code: movq -0x68(%rbp), %rdi	 RIP: 424395	 Bytes: 4
  %loadMem_424395 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424395 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424395)
  store %struct.Memory* %call_424395, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x13c(%rbp)	 RIP: 424399	 Bytes: 7
  %loadMem_424399 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424399 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x13c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424399)
  store %struct.Memory* %call_424399, %struct.Memory** %MEMORY

  ; Code: setne %al	 RIP: 4243a0	 Bytes: 3
  %loadMem_4243a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4243a0 = call %struct.Memory* @routine_setne__al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4243a0)
  store %struct.Memory* %call_4243a0, %struct.Memory** %MEMORY

  ; Code: xorb $0xff, %al	 RIP: 4243a3	 Bytes: 2
  %loadMem_4243a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4243a3 = call %struct.Memory* @routine_xorb__0xff___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4243a3)
  store %struct.Memory* %call_4243a3, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %al	 RIP: 4243a5	 Bytes: 2
  %loadMem_4243a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4243a5 = call %struct.Memory* @routine_andb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4243a5)
  store %struct.Memory* %call_4243a5, %struct.Memory** %MEMORY

  ; Code: movzbl %al, %esi	 RIP: 4243a7	 Bytes: 3
  %loadMem_4243a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4243a7 = call %struct.Memory* @routine_movzbl__al___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4243a7)
  store %struct.Memory* %call_4243a7, %struct.Memory** %MEMORY

  ; Code: callq .P7Logoddsify	 RIP: 4243aa	 Bytes: 5
  %loadMem1_4243aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4243aa = call %struct.Memory* @routine_callq_.P7Logoddsify(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4243aa, i64 60294, i64 5, i64 5)
  store %struct.Memory* %call1_4243aa, %struct.Memory** %MEMORY

  %loadMem2_4243aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4243aa = load i64, i64* %3
  %call2_4243aa = call %struct.Memory* @sub_432f30.P7Logoddsify(%struct.State* %0, i64  %loadPC_4243aa, %struct.Memory* %loadMem2_4243aa)
  store %struct.Memory* %call2_4243aa, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x140(%rbp)	 RIP: 4243af	 Bytes: 7
  %loadMem_4243af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4243af = call %struct.Memory* @routine_cmpl__0x0__MINUS0x140__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4243af)
  store %struct.Memory* %call_4243af, %struct.Memory** %MEMORY

  ; Code: je .L_4243db	 RIP: 4243b6	 Bytes: 6
  %loadMem_4243b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4243b6 = call %struct.Memory* @routine_je_.L_4243db(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4243b6, i8* %BRANCH_TAKEN, i64 37, i64 6, i64 6)
  store %struct.Memory* %call_4243b6, %struct.Memory** %MEMORY

  %loadBr_4243b6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4243b6 = icmp eq i8 %loadBr_4243b6, 1
  br i1 %cmpBr_4243b6, label %block_.L_4243db, label %block_4243bc

block_4243bc:
  ; Code: cmpl $0x2, 0x676d90	 RIP: 4243bc	 Bytes: 8
  %loadMem_4243bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4243bc = call %struct.Memory* @routine_cmpl__0x2__0x676d90(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4243bc)
  store %struct.Memory* %call_4243bc, %struct.Memory** %MEMORY

  ; Code: jne .L_4243db	 RIP: 4243c4	 Bytes: 6
  %loadMem_4243c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4243c4 = call %struct.Memory* @routine_jne_.L_4243db(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4243c4, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_4243c4, %struct.Memory** %MEMORY

  %loadBr_4243c4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4243c4 = icmp eq i8 %loadBr_4243c4, 1
  br i1 %cmpBr_4243c4, label %block_.L_4243db, label %block_4243ca

block_4243ca:
  ; Code: movq $0x457d2b, %rdi	 RIP: 4243ca	 Bytes: 10
  %loadMem_4243ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4243ca = call %struct.Memory* @routine_movq__0x457d2b___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4243ca)
  store %struct.Memory* %call_4243ca, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4243d4	 Bytes: 2
  %loadMem_4243d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4243d4 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4243d4)
  store %struct.Memory* %call_4243d4, %struct.Memory** %MEMORY

  ; Code: callq .Die	 RIP: 4243d6	 Bytes: 5
  %loadMem1_4243d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4243d6 = call %struct.Memory* @routine_callq_.Die(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4243d6, i64 108090, i64 5, i64 5)
  store %struct.Memory* %call1_4243d6, %struct.Memory** %MEMORY

  %loadMem2_4243d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4243d6 = load i64, i64* %3
  %call2_4243d6 = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64  %loadPC_4243d6, %struct.Memory* %loadMem2_4243d6)
  store %struct.Memory* %call2_4243d6, %struct.Memory** %MEMORY

  ; Code: .L_4243db:	 RIP: 4243db	 Bytes: 0
  br label %block_.L_4243db
block_.L_4243db:

  ; Code: leaq -0x120(%rbp), %rdi	 RIP: 4243db	 Bytes: 7
  %loadMem_4243db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4243db = call %struct.Memory* @routine_leaq_MINUS0x120__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4243db)
  store %struct.Memory* %call_4243db, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rsi	 RIP: 4243e2	 Bytes: 4
  %loadMem_4243e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4243e2 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4243e2)
  store %struct.Memory* %call_4243e2, %struct.Memory** %MEMORY

  ; Code: callq .SetAutocuts	 RIP: 4243e6	 Bytes: 5
  %loadMem1_4243e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4243e6 = call %struct.Memory* @routine_callq_.SetAutocuts(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4243e6, i64 19258, i64 5, i64 5)
  store %struct.Memory* %call1_4243e6, %struct.Memory** %MEMORY

  %loadMem2_4243e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4243e6 = load i64, i64* %3
  %call2_4243e6 = call %struct.Memory* @sub_428f20.SetAutocuts(%struct.State* %0, i64  %loadPC_4243e6, %struct.Memory* %loadMem2_4243e6)
  store %struct.Memory* %call2_4243e6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4243eb	 Bytes: 3
  %loadMem_4243eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4243eb = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4243eb)
  store %struct.Memory* %call_4243eb, %struct.Memory** %MEMORY

  ; Code: jne .L_42440c	 RIP: 4243ee	 Bytes: 6
  %loadMem_4243ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4243ee = call %struct.Memory* @routine_jne_.L_42440c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4243ee, i8* %BRANCH_TAKEN, i64 30, i64 6, i64 6)
  store %struct.Memory* %call_4243ee, %struct.Memory** %MEMORY

  %loadBr_4243ee = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4243ee = icmp eq i8 %loadBr_4243ee, 1
  br i1 %cmpBr_4243ee, label %block_.L_42440c, label %block_4243f4

block_4243f4:
  ; Code: movq $0x457d72, %rdi	 RIP: 4243f4	 Bytes: 10
  %loadMem_4243f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4243f4 = call %struct.Memory* @routine_movq__0x457d72___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4243f4)
  store %struct.Memory* %call_4243f4, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rax	 RIP: 4243fe	 Bytes: 4
  %loadMem_4243fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4243fe = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4243fe)
  store %struct.Memory* %call_4243fe, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rsi	 RIP: 424402	 Bytes: 3
  %loadMem_424402 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424402 = call %struct.Memory* @routine_movq___rax____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424402)
  store %struct.Memory* %call_424402, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 424405	 Bytes: 2
  %loadMem_424405 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424405 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424405)
  store %struct.Memory* %call_424405, %struct.Memory** %MEMORY

  ; Code: callq .Die	 RIP: 424407	 Bytes: 5
  %loadMem1_424407 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_424407 = call %struct.Memory* @routine_callq_.Die(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_424407, i64 108041, i64 5, i64 5)
  store %struct.Memory* %call1_424407, %struct.Memory** %MEMORY

  %loadMem2_424407 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424407 = load i64, i64* %3
  %call2_424407 = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64  %loadPC_424407, %struct.Memory* %loadMem2_424407)
  store %struct.Memory* %call2_424407, %struct.Memory** %MEMORY

  ; Code: .L_42440c:	 RIP: 42440c	 Bytes: 0
  br label %block_.L_42440c
block_.L_42440c:

  ; Code: movq $0x6617f0, %rsi	 RIP: 42440c	 Bytes: 10
  %loadMem_42440c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42440c = call %struct.Memory* @routine_movq__0x6617f0___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42440c)
  store %struct.Memory* %call_42440c, %struct.Memory** %MEMORY

  ; Code: movq 0x663040, %rdi	 RIP: 424416	 Bytes: 8
  %loadMem_424416 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424416 = call %struct.Memory* @routine_movq_0x663040___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424416)
  store %struct.Memory* %call_424416, %struct.Memory** %MEMORY

  ; Code: callq .HMMERBanner	 RIP: 42441e	 Bytes: 5
  %loadMem1_42441e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42441e = call %struct.Memory* @routine_callq_.HMMERBanner(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42441e, i64 18306, i64 5, i64 5)
  store %struct.Memory* %call1_42441e, %struct.Memory** %MEMORY

  %loadMem2_42441e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42441e = load i64, i64* %3
  %call2_42441e = call %struct.Memory* @sub_428ba0.HMMERBanner(%struct.State* %0, i64  %loadPC_42441e, %struct.Memory* %loadMem2_42441e)
  store %struct.Memory* %call2_42441e, %struct.Memory** %MEMORY

  ; Code: movq $0x457dae, %rdi	 RIP: 424423	 Bytes: 10
  %loadMem_424423 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424423 = call %struct.Memory* @routine_movq__0x457dae___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424423)
  store %struct.Memory* %call_424423, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rsi	 RIP: 42442d	 Bytes: 4
  %loadMem_42442d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42442d = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42442d)
  store %struct.Memory* %call_42442d, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rax	 RIP: 424431	 Bytes: 4
  %loadMem_424431 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424431 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424431)
  store %struct.Memory* %call_424431, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdx	 RIP: 424435	 Bytes: 3
  %loadMem_424435 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424435 = call %struct.Memory* @routine_movq___rax____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424435)
  store %struct.Memory* %call_424435, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 424438	 Bytes: 2
  %loadMem_424438 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424438 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424438)
  store %struct.Memory* %call_424438, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 42443a	 Bytes: 5
  %loadMem1_42443a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42443a = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42443a, i64 -143274, i64 5, i64 5)
  store %struct.Memory* %call1_42443a, %struct.Memory** %MEMORY

  %loadMem2_42443a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42443a = load i64, i64* %3
  %call2_42443a = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_42443a, %struct.Memory* %loadMem2_42443a)
  store %struct.Memory* %call2_42443a, %struct.Memory** %MEMORY

  ; Code: movq $0x457dd3, %rdi	 RIP: 42443f	 Bytes: 10
  %loadMem_42443f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42443f = call %struct.Memory* @routine_movq__0x457dd3___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42443f)
  store %struct.Memory* %call_42443f, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rsi	 RIP: 424449	 Bytes: 4
  %loadMem_424449 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424449 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424449)
  store %struct.Memory* %call_424449, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x16c(%rbp)	 RIP: 42444d	 Bytes: 6
  %loadMem_42444d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42444d = call %struct.Memory* @routine_movl__eax__MINUS0x16c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42444d)
  store %struct.Memory* %call_42444d, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 424453	 Bytes: 2
  %loadMem_424453 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424453 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424453)
  store %struct.Memory* %call_424453, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 424455	 Bytes: 5
  %loadMem1_424455 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_424455 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_424455, i64 -143301, i64 5, i64 5)
  store %struct.Memory* %call1_424455, %struct.Memory** %MEMORY

  %loadMem2_424455 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424455 = load i64, i64* %3
  %call2_424455 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_424455, %struct.Memory* %loadMem2_424455)
  store %struct.Memory* %call2_424455, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x144(%rbp)	 RIP: 42445a	 Bytes: 7
  %loadMem_42445a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42445a = call %struct.Memory* @routine_cmpl__0x0__MINUS0x144__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42445a)
  store %struct.Memory* %call_42445a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x170(%rbp)	 RIP: 424461	 Bytes: 6
  %loadMem_424461 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424461 = call %struct.Memory* @routine_movl__eax__MINUS0x170__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424461)
  store %struct.Memory* %call_424461, %struct.Memory** %MEMORY

  ; Code: je .L_424484	 RIP: 424467	 Bytes: 6
  %loadMem_424467 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424467 = call %struct.Memory* @routine_je_.L_424484(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424467, i8* %BRANCH_TAKEN, i64 29, i64 6, i64 6)
  store %struct.Memory* %call_424467, %struct.Memory** %MEMORY

  %loadBr_424467 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424467 = icmp eq i8 %loadBr_424467, 1
  br i1 %cmpBr_424467, label %block_.L_424484, label %block_42446d

block_42446d:
  ; Code: movq $0x457df3, %rdi	 RIP: 42446d	 Bytes: 10
  %loadMem_42446d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42446d = call %struct.Memory* @routine_movq__0x457df3___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42446d)
  store %struct.Memory* %call_42446d, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 424477	 Bytes: 2
  %loadMem_424477 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424477 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424477)
  store %struct.Memory* %call_424477, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 424479	 Bytes: 5
  %loadMem1_424479 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_424479 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_424479, i64 -143337, i64 5, i64 5)
  store %struct.Memory* %call1_424479, %struct.Memory** %MEMORY

  %loadMem2_424479 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424479 = load i64, i64* %3
  %call2_424479 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_424479, %struct.Memory* %loadMem2_424479)
  store %struct.Memory* %call2_424479, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x174(%rbp)	 RIP: 42447e	 Bytes: 6
  %loadMem_42447e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42447e = call %struct.Memory* @routine_movl__eax__MINUS0x174__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42447e)
  store %struct.Memory* %call_42447e, %struct.Memory** %MEMORY

  ; Code: .L_424484:	 RIP: 424484	 Bytes: 0
  br label %block_.L_424484
block_.L_424484:

  ; Code: movq $0x457e17, %rdi	 RIP: 424484	 Bytes: 10
  %loadMem_424484 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424484 = call %struct.Memory* @routine_movq__0x457e17___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424484)
  store %struct.Memory* %call_424484, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 42448e	 Bytes: 2
  %loadMem_42448e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42448e = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42448e)
  store %struct.Memory* %call_42448e, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 424490	 Bytes: 5
  %loadMem1_424490 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_424490 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_424490, i64 -143360, i64 5, i64 5)
  store %struct.Memory* %call1_424490, %struct.Memory** %MEMORY

  %loadMem2_424490 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424490 = load i64, i64* %3
  %call2_424490 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_424490, %struct.Memory* %loadMem2_424490)
  store %struct.Memory* %call2_424490, %struct.Memory** %MEMORY

  ; Code: movss 0x302c7(%rip), %xmm0	 RIP: 424495	 Bytes: 8
  %loadMem_424495 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424495 = call %struct.Memory* @routine_movss_0x302c7__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424495)
  store %struct.Memory* %call_424495, %struct.Memory** %MEMORY

  ; Code: movss -0x120(%rbp), %xmm1	 RIP: 42449d	 Bytes: 8
  %loadMem_42449d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42449d = call %struct.Memory* @routine_movss_MINUS0x120__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42449d)
  store %struct.Memory* %call_42449d, %struct.Memory** %MEMORY

  ; Code: ucomiss %xmm0, %xmm1	 RIP: 4244a5	 Bytes: 3
  %loadMem_4244a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4244a5 = call %struct.Memory* @routine_ucomiss__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4244a5)
  store %struct.Memory* %call_4244a5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x178(%rbp)	 RIP: 4244a8	 Bytes: 6
  %loadMem_4244a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4244a8 = call %struct.Memory* @routine_movl__eax__MINUS0x178__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4244a8)
  store %struct.Memory* %call_4244a8, %struct.Memory** %MEMORY

  ; Code: jne .L_4244d6	 RIP: 4244ae	 Bytes: 6
  %loadMem_4244ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4244ae = call %struct.Memory* @routine_jne_.L_4244d6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4244ae, i8* %BRANCH_TAKEN, i64 40, i64 6, i64 6)
  store %struct.Memory* %call_4244ae, %struct.Memory** %MEMORY

  %loadBr_4244ae = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4244ae = icmp eq i8 %loadBr_4244ae, 1
  br i1 %cmpBr_4244ae, label %block_.L_4244d6, label %block_4244b4

block_4244b4:
  ; Code: jp .L_4244d6	 RIP: 4244b4	 Bytes: 6
  %loadMem_4244b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4244b4 = call %struct.Memory* @routine_jp_.L_4244d6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4244b4, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_4244b4, %struct.Memory** %MEMORY

  %loadBr_4244b4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4244b4 = icmp eq i8 %loadBr_4244b4, 1
  br i1 %cmpBr_4244b4, label %block_.L_4244d6, label %block_4244ba

block_4244ba:
  ; Code: movq $0x457e34, %rdi	 RIP: 4244ba	 Bytes: 10
  %loadMem_4244ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4244ba = call %struct.Memory* @routine_movq__0x457e34___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4244ba)
  store %struct.Memory* %call_4244ba, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4244c4	 Bytes: 2
  %loadMem_4244c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4244c4 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4244c4)
  store %struct.Memory* %call_4244c4, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 4244c6	 Bytes: 5
  %loadMem1_4244c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4244c6 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4244c6, i64 -143414, i64 5, i64 5)
  store %struct.Memory* %call1_4244c6, %struct.Memory** %MEMORY

  %loadMem2_4244c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4244c6 = load i64, i64* %3
  %call2_4244c6 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_4244c6, %struct.Memory* %loadMem2_4244c6)
  store %struct.Memory* %call2_4244c6, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x17c(%rbp)	 RIP: 4244cb	 Bytes: 6
  %loadMem_4244cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4244cb = call %struct.Memory* @routine_movl__eax__MINUS0x17c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4244cb)
  store %struct.Memory* %call_4244cb, %struct.Memory** %MEMORY

  ; Code: jmpq .L_424596	 RIP: 4244d1	 Bytes: 5
  %loadMem_4244d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4244d1 = call %struct.Memory* @routine_jmpq_.L_424596(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4244d1, i64 197, i64 5)
  store %struct.Memory* %call_4244d1, %struct.Memory** %MEMORY

  br label %block_.L_424596

  ; Code: .L_4244d6:	 RIP: 4244d6	 Bytes: 0
block_.L_4244d6:

  ; Code: movq $0x457e3c, %rdi	 RIP: 4244d6	 Bytes: 10
  %loadMem_4244d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4244d6 = call %struct.Memory* @routine_movq__0x457e3c___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4244d6)
  store %struct.Memory* %call_4244d6, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x120(%rbp), %xmm0	 RIP: 4244e0	 Bytes: 8
  %loadMem_4244e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4244e0 = call %struct.Memory* @routine_cvtss2sd_MINUS0x120__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4244e0)
  store %struct.Memory* %call_4244e0, %struct.Memory** %MEMORY

  ; Code: movb $0x1, %al	 RIP: 4244e8	 Bytes: 2
  %loadMem_4244e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4244e8 = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4244e8)
  store %struct.Memory* %call_4244e8, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 4244ea	 Bytes: 5
  %loadMem1_4244ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4244ea = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4244ea, i64 -143450, i64 5, i64 5)
  store %struct.Memory* %call1_4244ea, %struct.Memory** %MEMORY

  %loadMem2_4244ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4244ea = load i64, i64* %3
  %call2_4244ea = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_4244ea, %struct.Memory* %loadMem2_4244ea)
  store %struct.Memory* %call2_4244ea, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, -0x100(%rbp)	 RIP: 4244ef	 Bytes: 7
  %loadMem_4244ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4244ef = call %struct.Memory* @routine_cmpl__0x1__MINUS0x100__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4244ef)
  store %struct.Memory* %call_4244ef, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x180(%rbp)	 RIP: 4244f6	 Bytes: 6
  %loadMem_4244f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4244f6 = call %struct.Memory* @routine_movl__eax__MINUS0x180__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4244f6)
  store %struct.Memory* %call_4244f6, %struct.Memory** %MEMORY

  ; Code: jne .L_42451e	 RIP: 4244fc	 Bytes: 6
  %loadMem_4244fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4244fc = call %struct.Memory* @routine_jne_.L_42451e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4244fc, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_4244fc, %struct.Memory** %MEMORY

  %loadBr_4244fc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4244fc = icmp eq i8 %loadBr_4244fc, 1
  br i1 %cmpBr_4244fc, label %block_.L_42451e, label %block_424502

block_424502:
  ; Code: movq $0x457e44, %rdi	 RIP: 424502	 Bytes: 10
  %loadMem_424502 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424502 = call %struct.Memory* @routine_movq__0x457e44___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424502)
  store %struct.Memory* %call_424502, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 42450c	 Bytes: 2
  %loadMem_42450c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42450c = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42450c)
  store %struct.Memory* %call_42450c, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 42450e	 Bytes: 5
  %loadMem1_42450e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42450e = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42450e, i64 -143486, i64 5, i64 5)
  store %struct.Memory* %call1_42450e, %struct.Memory** %MEMORY

  %loadMem2_42450e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42450e = load i64, i64* %3
  %call2_42450e = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_42450e, %struct.Memory* %loadMem2_42450e)
  store %struct.Memory* %call2_42450e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x184(%rbp)	 RIP: 424513	 Bytes: 6
  %loadMem_424513 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424513 = call %struct.Memory* @routine_movl__eax__MINUS0x184__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424513)
  store %struct.Memory* %call_424513, %struct.Memory** %MEMORY

  ; Code: jmpq .L_424591	 RIP: 424519	 Bytes: 5
  %loadMem_424519 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424519 = call %struct.Memory* @routine_jmpq_.L_424591(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424519, i64 120, i64 5)
  store %struct.Memory* %call_424519, %struct.Memory** %MEMORY

  br label %block_.L_424591

  ; Code: .L_42451e:	 RIP: 42451e	 Bytes: 0
block_.L_42451e:

  ; Code: cmpl $0x2, -0x100(%rbp)	 RIP: 42451e	 Bytes: 7
  %loadMem_42451e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42451e = call %struct.Memory* @routine_cmpl__0x2__MINUS0x100__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42451e)
  store %struct.Memory* %call_42451e, %struct.Memory** %MEMORY

  ; Code: jne .L_424547	 RIP: 424525	 Bytes: 6
  %loadMem_424525 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424525 = call %struct.Memory* @routine_jne_.L_424547(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424525, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_424525, %struct.Memory** %MEMORY

  %loadBr_424525 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424525 = icmp eq i8 %loadBr_424525, 1
  br i1 %cmpBr_424525, label %block_.L_424547, label %block_42452b

block_42452b:
  ; Code: movq $0x457e4c, %rdi	 RIP: 42452b	 Bytes: 10
  %loadMem_42452b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42452b = call %struct.Memory* @routine_movq__0x457e4c___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42452b)
  store %struct.Memory* %call_42452b, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 424535	 Bytes: 2
  %loadMem_424535 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424535 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424535)
  store %struct.Memory* %call_424535, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 424537	 Bytes: 5
  %loadMem1_424537 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_424537 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_424537, i64 -143527, i64 5, i64 5)
  store %struct.Memory* %call1_424537, %struct.Memory** %MEMORY

  %loadMem2_424537 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424537 = load i64, i64* %3
  %call2_424537 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_424537, %struct.Memory* %loadMem2_424537)
  store %struct.Memory* %call2_424537, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x188(%rbp)	 RIP: 42453c	 Bytes: 6
  %loadMem_42453c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42453c = call %struct.Memory* @routine_movl__eax__MINUS0x188__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42453c)
  store %struct.Memory* %call_42453c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42458c	 RIP: 424542	 Bytes: 5
  %loadMem_424542 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424542 = call %struct.Memory* @routine_jmpq_.L_42458c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424542, i64 74, i64 5)
  store %struct.Memory* %call_424542, %struct.Memory** %MEMORY

  br label %block_.L_42458c

  ; Code: .L_424547:	 RIP: 424547	 Bytes: 0
block_.L_424547:

  ; Code: cmpl $0x3, -0x100(%rbp)	 RIP: 424547	 Bytes: 7
  %loadMem_424547 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424547 = call %struct.Memory* @routine_cmpl__0x3__MINUS0x100__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424547)
  store %struct.Memory* %call_424547, %struct.Memory** %MEMORY

  ; Code: jne .L_424570	 RIP: 42454e	 Bytes: 6
  %loadMem_42454e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42454e = call %struct.Memory* @routine_jne_.L_424570(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42454e, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_42454e, %struct.Memory** %MEMORY

  %loadBr_42454e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42454e = icmp eq i8 %loadBr_42454e, 1
  br i1 %cmpBr_42454e, label %block_.L_424570, label %block_424554

block_424554:
  ; Code: movq $0x457e54, %rdi	 RIP: 424554	 Bytes: 10
  %loadMem_424554 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424554 = call %struct.Memory* @routine_movq__0x457e54___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424554)
  store %struct.Memory* %call_424554, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 42455e	 Bytes: 2
  %loadMem_42455e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42455e = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42455e)
  store %struct.Memory* %call_42455e, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 424560	 Bytes: 5
  %loadMem1_424560 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_424560 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_424560, i64 -143568, i64 5, i64 5)
  store %struct.Memory* %call1_424560, %struct.Memory** %MEMORY

  %loadMem2_424560 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424560 = load i64, i64* %3
  %call2_424560 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_424560, %struct.Memory* %loadMem2_424560)
  store %struct.Memory* %call2_424560, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18c(%rbp)	 RIP: 424565	 Bytes: 6
  %loadMem_424565 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424565 = call %struct.Memory* @routine_movl__eax__MINUS0x18c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424565)
  store %struct.Memory* %call_424565, %struct.Memory** %MEMORY

  ; Code: jmpq .L_424587	 RIP: 42456b	 Bytes: 5
  %loadMem_42456b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42456b = call %struct.Memory* @routine_jmpq_.L_424587(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42456b, i64 28, i64 5)
  store %struct.Memory* %call_42456b, %struct.Memory** %MEMORY

  br label %block_.L_424587

  ; Code: .L_424570:	 RIP: 424570	 Bytes: 0
block_.L_424570:

  ; Code: movq $0x45a1f7, %rdi	 RIP: 424570	 Bytes: 10
  %loadMem_424570 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424570 = call %struct.Memory* @routine_movq__0x45a1f7___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424570)
  store %struct.Memory* %call_424570, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 42457a	 Bytes: 2
  %loadMem_42457a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42457a = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42457a)
  store %struct.Memory* %call_42457a, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 42457c	 Bytes: 5
  %loadMem1_42457c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42457c = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42457c, i64 -143596, i64 5, i64 5)
  store %struct.Memory* %call1_42457c, %struct.Memory** %MEMORY

  %loadMem2_42457c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42457c = load i64, i64* %3
  %call2_42457c = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_42457c, %struct.Memory* %loadMem2_42457c)
  store %struct.Memory* %call2_42457c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x190(%rbp)	 RIP: 424581	 Bytes: 6
  %loadMem_424581 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424581 = call %struct.Memory* @routine_movl__eax__MINUS0x190__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424581)
  store %struct.Memory* %call_424581, %struct.Memory** %MEMORY

  ; Code: .L_424587:	 RIP: 424587	 Bytes: 0
  br label %block_.L_424587
block_.L_424587:

  ; Code: jmpq .L_42458c	 RIP: 424587	 Bytes: 5
  %loadMem_424587 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424587 = call %struct.Memory* @routine_jmpq_.L_42458c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424587, i64 5, i64 5)
  store %struct.Memory* %call_424587, %struct.Memory** %MEMORY

  br label %block_.L_42458c

  ; Code: .L_42458c:	 RIP: 42458c	 Bytes: 0
block_.L_42458c:

  ; Code: jmpq .L_424591	 RIP: 42458c	 Bytes: 5
  %loadMem_42458c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42458c = call %struct.Memory* @routine_jmpq_.L_424591(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42458c, i64 5, i64 5)
  store %struct.Memory* %call_42458c, %struct.Memory** %MEMORY

  br label %block_.L_424591

  ; Code: .L_424591:	 RIP: 424591	 Bytes: 0
block_.L_424591:

  ; Code: jmpq .L_424596	 RIP: 424591	 Bytes: 5
  %loadMem_424591 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424591 = call %struct.Memory* @routine_jmpq_.L_424596(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424591, i64 5, i64 5)
  store %struct.Memory* %call_424591, %struct.Memory** %MEMORY

  br label %block_.L_424596

  ; Code: .L_424596:	 RIP: 424596	 Bytes: 0
block_.L_424596:

  ; Code: movq $0x457e5c, %rdi	 RIP: 424596	 Bytes: 10
  %loadMem_424596 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424596 = call %struct.Memory* @routine_movq__0x457e5c___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424596)
  store %struct.Memory* %call_424596, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4245a0	 Bytes: 2
  %loadMem_4245a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4245a0 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4245a0)
  store %struct.Memory* %call_4245a0, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 4245a2	 Bytes: 5
  %loadMem1_4245a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4245a2 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4245a2, i64 -143634, i64 5, i64 5)
  store %struct.Memory* %call1_4245a2, %struct.Memory** %MEMORY

  %loadMem2_4245a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4245a2 = load i64, i64* %3
  %call2_4245a2 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_4245a2, %struct.Memory* %loadMem2_4245a2)
  store %struct.Memory* %call2_4245a2, %struct.Memory** %MEMORY

  ; Code: movss 0x301b5(%rip), %xmm0	 RIP: 4245a7	 Bytes: 8
  %loadMem_4245a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4245a7 = call %struct.Memory* @routine_movss_0x301b5__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4245a7)
  store %struct.Memory* %call_4245a7, %struct.Memory** %MEMORY

  ; Code: movss -0x110(%rbp), %xmm1	 RIP: 4245af	 Bytes: 8
  %loadMem_4245af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4245af = call %struct.Memory* @routine_movss_MINUS0x110__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4245af)
  store %struct.Memory* %call_4245af, %struct.Memory** %MEMORY

  ; Code: ucomiss %xmm0, %xmm1	 RIP: 4245b7	 Bytes: 3
  %loadMem_4245b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4245b7 = call %struct.Memory* @routine_ucomiss__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4245b7)
  store %struct.Memory* %call_4245b7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x194(%rbp)	 RIP: 4245ba	 Bytes: 6
  %loadMem_4245ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4245ba = call %struct.Memory* @routine_movl__eax__MINUS0x194__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4245ba)
  store %struct.Memory* %call_4245ba, %struct.Memory** %MEMORY

  ; Code: jne .L_4245e8	 RIP: 4245c0	 Bytes: 6
  %loadMem_4245c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4245c0 = call %struct.Memory* @routine_jne_.L_4245e8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4245c0, i8* %BRANCH_TAKEN, i64 40, i64 6, i64 6)
  store %struct.Memory* %call_4245c0, %struct.Memory** %MEMORY

  %loadBr_4245c0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4245c0 = icmp eq i8 %loadBr_4245c0, 1
  br i1 %cmpBr_4245c0, label %block_.L_4245e8, label %block_4245c6

block_4245c6:
  ; Code: jp .L_4245e8	 RIP: 4245c6	 Bytes: 6
  %loadMem_4245c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4245c6 = call %struct.Memory* @routine_jp_.L_4245e8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4245c6, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_4245c6, %struct.Memory** %MEMORY

  %loadBr_4245c6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4245c6 = icmp eq i8 %loadBr_4245c6, 1
  br i1 %cmpBr_4245c6, label %block_.L_4245e8, label %block_4245cc

block_4245cc:
  ; Code: movq $0x457e34, %rdi	 RIP: 4245cc	 Bytes: 10
  %loadMem_4245cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4245cc = call %struct.Memory* @routine_movq__0x457e34___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4245cc)
  store %struct.Memory* %call_4245cc, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4245d6	 Bytes: 2
  %loadMem_4245d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4245d6 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4245d6)
  store %struct.Memory* %call_4245d6, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 4245d8	 Bytes: 5
  %loadMem1_4245d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4245d8 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4245d8, i64 -143688, i64 5, i64 5)
  store %struct.Memory* %call1_4245d8, %struct.Memory** %MEMORY

  %loadMem2_4245d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4245d8 = load i64, i64* %3
  %call2_4245d8 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_4245d8, %struct.Memory* %loadMem2_4245d8)
  store %struct.Memory* %call2_4245d8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x198(%rbp)	 RIP: 4245dd	 Bytes: 6
  %loadMem_4245dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4245dd = call %struct.Memory* @routine_movl__eax__MINUS0x198__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4245dd)
  store %struct.Memory* %call_4245dd, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4246a8	 RIP: 4245e3	 Bytes: 5
  %loadMem_4245e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4245e3 = call %struct.Memory* @routine_jmpq_.L_4246a8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4245e3, i64 197, i64 5)
  store %struct.Memory* %call_4245e3, %struct.Memory** %MEMORY

  br label %block_.L_4246a8

  ; Code: .L_4245e8:	 RIP: 4245e8	 Bytes: 0
block_.L_4245e8:

  ; Code: movq $0x457e3c, %rdi	 RIP: 4245e8	 Bytes: 10
  %loadMem_4245e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4245e8 = call %struct.Memory* @routine_movq__0x457e3c___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4245e8)
  store %struct.Memory* %call_4245e8, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x110(%rbp), %xmm0	 RIP: 4245f2	 Bytes: 8
  %loadMem_4245f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4245f2 = call %struct.Memory* @routine_cvtss2sd_MINUS0x110__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4245f2)
  store %struct.Memory* %call_4245f2, %struct.Memory** %MEMORY

  ; Code: movb $0x1, %al	 RIP: 4245fa	 Bytes: 2
  %loadMem_4245fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4245fa = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4245fa)
  store %struct.Memory* %call_4245fa, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 4245fc	 Bytes: 5
  %loadMem1_4245fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4245fc = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4245fc, i64 -143724, i64 5, i64 5)
  store %struct.Memory* %call1_4245fc, %struct.Memory** %MEMORY

  %loadMem2_4245fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4245fc = load i64, i64* %3
  %call2_4245fc = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_4245fc, %struct.Memory* %loadMem2_4245fc)
  store %struct.Memory* %call2_4245fc, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, -0x100(%rbp)	 RIP: 424601	 Bytes: 7
  %loadMem_424601 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424601 = call %struct.Memory* @routine_cmpl__0x1__MINUS0x100__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424601)
  store %struct.Memory* %call_424601, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x19c(%rbp)	 RIP: 424608	 Bytes: 6
  %loadMem_424608 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424608 = call %struct.Memory* @routine_movl__eax__MINUS0x19c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424608)
  store %struct.Memory* %call_424608, %struct.Memory** %MEMORY

  ; Code: jne .L_424630	 RIP: 42460e	 Bytes: 6
  %loadMem_42460e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42460e = call %struct.Memory* @routine_jne_.L_424630(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42460e, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_42460e, %struct.Memory** %MEMORY

  %loadBr_42460e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42460e = icmp eq i8 %loadBr_42460e, 1
  br i1 %cmpBr_42460e, label %block_.L_424630, label %block_424614

block_424614:
  ; Code: movq $0x457e79, %rdi	 RIP: 424614	 Bytes: 10
  %loadMem_424614 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424614 = call %struct.Memory* @routine_movq__0x457e79___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424614)
  store %struct.Memory* %call_424614, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 42461e	 Bytes: 2
  %loadMem_42461e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42461e = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42461e)
  store %struct.Memory* %call_42461e, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 424620	 Bytes: 5
  %loadMem1_424620 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_424620 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_424620, i64 -143760, i64 5, i64 5)
  store %struct.Memory* %call1_424620, %struct.Memory** %MEMORY

  %loadMem2_424620 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424620 = load i64, i64* %3
  %call2_424620 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_424620, %struct.Memory* %loadMem2_424620)
  store %struct.Memory* %call2_424620, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1a0(%rbp)	 RIP: 424625	 Bytes: 6
  %loadMem_424625 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424625 = call %struct.Memory* @routine_movl__eax__MINUS0x1a0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424625)
  store %struct.Memory* %call_424625, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4246a3	 RIP: 42462b	 Bytes: 5
  %loadMem_42462b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42462b = call %struct.Memory* @routine_jmpq_.L_4246a3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42462b, i64 120, i64 5)
  store %struct.Memory* %call_42462b, %struct.Memory** %MEMORY

  br label %block_.L_4246a3

  ; Code: .L_424630:	 RIP: 424630	 Bytes: 0
block_.L_424630:

  ; Code: cmpl $0x2, -0x100(%rbp)	 RIP: 424630	 Bytes: 7
  %loadMem_424630 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424630 = call %struct.Memory* @routine_cmpl__0x2__MINUS0x100__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424630)
  store %struct.Memory* %call_424630, %struct.Memory** %MEMORY

  ; Code: jne .L_424659	 RIP: 424637	 Bytes: 6
  %loadMem_424637 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424637 = call %struct.Memory* @routine_jne_.L_424659(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424637, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_424637, %struct.Memory** %MEMORY

  %loadBr_424637 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424637 = icmp eq i8 %loadBr_424637, 1
  br i1 %cmpBr_424637, label %block_.L_424659, label %block_42463d

block_42463d:
  ; Code: movq $0x457e81, %rdi	 RIP: 42463d	 Bytes: 10
  %loadMem_42463d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42463d = call %struct.Memory* @routine_movq__0x457e81___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42463d)
  store %struct.Memory* %call_42463d, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 424647	 Bytes: 2
  %loadMem_424647 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424647 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424647)
  store %struct.Memory* %call_424647, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 424649	 Bytes: 5
  %loadMem1_424649 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_424649 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_424649, i64 -143801, i64 5, i64 5)
  store %struct.Memory* %call1_424649, %struct.Memory** %MEMORY

  %loadMem2_424649 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424649 = load i64, i64* %3
  %call2_424649 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_424649, %struct.Memory* %loadMem2_424649)
  store %struct.Memory* %call2_424649, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1a4(%rbp)	 RIP: 42464e	 Bytes: 6
  %loadMem_42464e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42464e = call %struct.Memory* @routine_movl__eax__MINUS0x1a4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42464e)
  store %struct.Memory* %call_42464e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42469e	 RIP: 424654	 Bytes: 5
  %loadMem_424654 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424654 = call %struct.Memory* @routine_jmpq_.L_42469e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424654, i64 74, i64 5)
  store %struct.Memory* %call_424654, %struct.Memory** %MEMORY

  br label %block_.L_42469e

  ; Code: .L_424659:	 RIP: 424659	 Bytes: 0
block_.L_424659:

  ; Code: cmpl $0x3, -0x100(%rbp)	 RIP: 424659	 Bytes: 7
  %loadMem_424659 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424659 = call %struct.Memory* @routine_cmpl__0x3__MINUS0x100__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424659)
  store %struct.Memory* %call_424659, %struct.Memory** %MEMORY

  ; Code: jne .L_424682	 RIP: 424660	 Bytes: 6
  %loadMem_424660 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424660 = call %struct.Memory* @routine_jne_.L_424682(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424660, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_424660, %struct.Memory** %MEMORY

  %loadBr_424660 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424660 = icmp eq i8 %loadBr_424660, 1
  br i1 %cmpBr_424660, label %block_.L_424682, label %block_424666

block_424666:
  ; Code: movq $0x457e89, %rdi	 RIP: 424666	 Bytes: 10
  %loadMem_424666 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424666 = call %struct.Memory* @routine_movq__0x457e89___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424666)
  store %struct.Memory* %call_424666, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 424670	 Bytes: 2
  %loadMem_424670 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424670 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424670)
  store %struct.Memory* %call_424670, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 424672	 Bytes: 5
  %loadMem1_424672 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_424672 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_424672, i64 -143842, i64 5, i64 5)
  store %struct.Memory* %call1_424672, %struct.Memory** %MEMORY

  %loadMem2_424672 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424672 = load i64, i64* %3
  %call2_424672 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_424672, %struct.Memory* %loadMem2_424672)
  store %struct.Memory* %call2_424672, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1a8(%rbp)	 RIP: 424677	 Bytes: 6
  %loadMem_424677 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424677 = call %struct.Memory* @routine_movl__eax__MINUS0x1a8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424677)
  store %struct.Memory* %call_424677, %struct.Memory** %MEMORY

  ; Code: jmpq .L_424699	 RIP: 42467d	 Bytes: 5
  %loadMem_42467d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42467d = call %struct.Memory* @routine_jmpq_.L_424699(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42467d, i64 28, i64 5)
  store %struct.Memory* %call_42467d, %struct.Memory** %MEMORY

  br label %block_.L_424699

  ; Code: .L_424682:	 RIP: 424682	 Bytes: 0
block_.L_424682:

  ; Code: movq $0x45a1f7, %rdi	 RIP: 424682	 Bytes: 10
  %loadMem_424682 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424682 = call %struct.Memory* @routine_movq__0x45a1f7___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424682)
  store %struct.Memory* %call_424682, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 42468c	 Bytes: 2
  %loadMem_42468c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42468c = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42468c)
  store %struct.Memory* %call_42468c, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 42468e	 Bytes: 5
  %loadMem1_42468e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42468e = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42468e, i64 -143870, i64 5, i64 5)
  store %struct.Memory* %call1_42468e, %struct.Memory** %MEMORY

  %loadMem2_42468e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42468e = load i64, i64* %3
  %call2_42468e = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_42468e, %struct.Memory* %loadMem2_42468e)
  store %struct.Memory* %call2_42468e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1ac(%rbp)	 RIP: 424693	 Bytes: 6
  %loadMem_424693 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424693 = call %struct.Memory* @routine_movl__eax__MINUS0x1ac__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424693)
  store %struct.Memory* %call_424693, %struct.Memory** %MEMORY

  ; Code: .L_424699:	 RIP: 424699	 Bytes: 0
  br label %block_.L_424699
block_.L_424699:

  ; Code: jmpq .L_42469e	 RIP: 424699	 Bytes: 5
  %loadMem_424699 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424699 = call %struct.Memory* @routine_jmpq_.L_42469e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424699, i64 5, i64 5)
  store %struct.Memory* %call_424699, %struct.Memory** %MEMORY

  br label %block_.L_42469e

  ; Code: .L_42469e:	 RIP: 42469e	 Bytes: 0
block_.L_42469e:

  ; Code: jmpq .L_4246a3	 RIP: 42469e	 Bytes: 5
  %loadMem_42469e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42469e = call %struct.Memory* @routine_jmpq_.L_4246a3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42469e, i64 5, i64 5)
  store %struct.Memory* %call_42469e, %struct.Memory** %MEMORY

  br label %block_.L_4246a3

  ; Code: .L_4246a3:	 RIP: 4246a3	 Bytes: 0
block_.L_4246a3:

  ; Code: jmpq .L_4246a8	 RIP: 4246a3	 Bytes: 5
  %loadMem_4246a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4246a3 = call %struct.Memory* @routine_jmpq_.L_4246a8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4246a3, i64 5, i64 5)
  store %struct.Memory* %call_4246a3, %struct.Memory** %MEMORY

  br label %block_.L_4246a8

  ; Code: .L_4246a8:	 RIP: 4246a8	 Bytes: 0
block_.L_4246a8:

  ; Code: movq $0x457e91, %rdi	 RIP: 4246a8	 Bytes: 10
  %loadMem_4246a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4246a8 = call %struct.Memory* @routine_movq__0x457e91___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4246a8)
  store %struct.Memory* %call_4246a8, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4246b2	 Bytes: 2
  %loadMem_4246b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4246b2 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4246b2)
  store %struct.Memory* %call_4246b2, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 4246b4	 Bytes: 5
  %loadMem1_4246b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4246b4 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4246b4, i64 -143908, i64 5, i64 5)
  store %struct.Memory* %call1_4246b4, %struct.Memory** %MEMORY

  %loadMem2_4246b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4246b4 = load i64, i64* %3
  %call2_4246b4 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_4246b4, %struct.Memory* %loadMem2_4246b4)
  store %struct.Memory* %call2_4246b4, %struct.Memory** %MEMORY

  ; Code: movsd 0x301d7(%rip), %xmm0	 RIP: 4246b9	 Bytes: 8
  %loadMem_4246b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4246b9 = call %struct.Memory* @routine_movsd_0x301d7__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4246b9)
  store %struct.Memory* %call_4246b9, %struct.Memory** %MEMORY

  ; Code: movsd -0x118(%rbp), %xmm1	 RIP: 4246c1	 Bytes: 8
  %loadMem_4246c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4246c1 = call %struct.Memory* @routine_movsd_MINUS0x118__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4246c1)
  store %struct.Memory* %call_4246c1, %struct.Memory** %MEMORY

  ; Code: ucomisd %xmm0, %xmm1	 RIP: 4246c9	 Bytes: 4
  %loadMem_4246c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4246c9 = call %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4246c9)
  store %struct.Memory* %call_4246c9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1b0(%rbp)	 RIP: 4246cd	 Bytes: 6
  %loadMem_4246cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4246cd = call %struct.Memory* @routine_movl__eax__MINUS0x1b0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4246cd)
  store %struct.Memory* %call_4246cd, %struct.Memory** %MEMORY

  ; Code: jne .L_4246fb	 RIP: 4246d3	 Bytes: 6
  %loadMem_4246d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4246d3 = call %struct.Memory* @routine_jne_.L_4246fb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4246d3, i8* %BRANCH_TAKEN, i64 40, i64 6, i64 6)
  store %struct.Memory* %call_4246d3, %struct.Memory** %MEMORY

  %loadBr_4246d3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4246d3 = icmp eq i8 %loadBr_4246d3, 1
  br i1 %cmpBr_4246d3, label %block_.L_4246fb, label %block_4246d9

block_4246d9:
  ; Code: jp .L_4246fb	 RIP: 4246d9	 Bytes: 6
  %loadMem_4246d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4246d9 = call %struct.Memory* @routine_jp_.L_4246fb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4246d9, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_4246d9, %struct.Memory** %MEMORY

  %loadBr_4246d9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4246d9 = icmp eq i8 %loadBr_4246d9, 1
  br i1 %cmpBr_4246d9, label %block_.L_4246fb, label %block_4246df

block_4246df:
  ; Code: movq $0x457e34, %rdi	 RIP: 4246df	 Bytes: 10
  %loadMem_4246df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4246df = call %struct.Memory* @routine_movq__0x457e34___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4246df)
  store %struct.Memory* %call_4246df, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4246e9	 Bytes: 2
  %loadMem_4246e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4246e9 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4246e9)
  store %struct.Memory* %call_4246e9, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 4246eb	 Bytes: 5
  %loadMem1_4246eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4246eb = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4246eb, i64 -143963, i64 5, i64 5)
  store %struct.Memory* %call1_4246eb, %struct.Memory** %MEMORY

  %loadMem2_4246eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4246eb = load i64, i64* %3
  %call2_4246eb = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_4246eb, %struct.Memory* %loadMem2_4246eb)
  store %struct.Memory* %call2_4246eb, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1b4(%rbp)	 RIP: 4246f0	 Bytes: 6
  %loadMem_4246f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4246f0 = call %struct.Memory* @routine_movl__eax__MINUS0x1b4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4246f0)
  store %struct.Memory* %call_4246f0, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42471a	 RIP: 4246f6	 Bytes: 5
  %loadMem_4246f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4246f6 = call %struct.Memory* @routine_jmpq_.L_42471a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4246f6, i64 36, i64 5)
  store %struct.Memory* %call_4246f6, %struct.Memory** %MEMORY

  br label %block_.L_42471a

  ; Code: .L_4246fb:	 RIP: 4246fb	 Bytes: 0
block_.L_4246fb:

  ; Code: movq $0x457eae, %rdi	 RIP: 4246fb	 Bytes: 10
  %loadMem_4246fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4246fb = call %struct.Memory* @routine_movq__0x457eae___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4246fb)
  store %struct.Memory* %call_4246fb, %struct.Memory** %MEMORY

  ; Code: movsd -0x118(%rbp), %xmm0	 RIP: 424705	 Bytes: 8
  %loadMem_424705 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424705 = call %struct.Memory* @routine_movsd_MINUS0x118__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424705)
  store %struct.Memory* %call_424705, %struct.Memory** %MEMORY

  ; Code: movb $0x1, %al	 RIP: 42470d	 Bytes: 2
  %loadMem_42470d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42470d = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42470d)
  store %struct.Memory* %call_42470d, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 42470f	 Bytes: 5
  %loadMem1_42470f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42470f = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42470f, i64 -143999, i64 5, i64 5)
  store %struct.Memory* %call1_42470f, %struct.Memory** %MEMORY

  %loadMem2_42470f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42470f = load i64, i64* %3
  %call2_42470f = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_42470f, %struct.Memory* %loadMem2_42470f)
  store %struct.Memory* %call2_42470f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1b8(%rbp)	 RIP: 424714	 Bytes: 6
  %loadMem_424714 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424714 = call %struct.Memory* @routine_movl__eax__MINUS0x1b8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424714)
  store %struct.Memory* %call_424714, %struct.Memory** %MEMORY

  ; Code: .L_42471a:	 RIP: 42471a	 Bytes: 0
  br label %block_.L_42471a
block_.L_42471a:

  ; Code: movq $0x457eba, %rdi	 RIP: 42471a	 Bytes: 10
  %loadMem_42471a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42471a = call %struct.Memory* @routine_movq__0x457eba___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42471a)
  store %struct.Memory* %call_42471a, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 424724	 Bytes: 2
  %loadMem_424724 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424724 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424724)
  store %struct.Memory* %call_424724, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 424726	 Bytes: 5
  %loadMem1_424726 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_424726 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_424726, i64 -144022, i64 5, i64 5)
  store %struct.Memory* %call1_424726, %struct.Memory** %MEMORY

  %loadMem2_424726 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424726 = load i64, i64* %3
  %call2_424726 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_424726, %struct.Memory* %loadMem2_424726)
  store %struct.Memory* %call2_424726, %struct.Memory** %MEMORY

  ; Code: movsd 0x30165(%rip), %xmm0	 RIP: 42472b	 Bytes: 8
  %loadMem_42472b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42472b = call %struct.Memory* @routine_movsd_0x30165__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42472b)
  store %struct.Memory* %call_42472b, %struct.Memory** %MEMORY

  ; Code: movsd -0x108(%rbp), %xmm1	 RIP: 424733	 Bytes: 8
  %loadMem_424733 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424733 = call %struct.Memory* @routine_movsd_MINUS0x108__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424733)
  store %struct.Memory* %call_424733, %struct.Memory** %MEMORY

  ; Code: ucomisd %xmm0, %xmm1	 RIP: 42473b	 Bytes: 4
  %loadMem_42473b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42473b = call %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42473b)
  store %struct.Memory* %call_42473b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1bc(%rbp)	 RIP: 42473f	 Bytes: 6
  %loadMem_42473f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42473f = call %struct.Memory* @routine_movl__eax__MINUS0x1bc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42473f)
  store %struct.Memory* %call_42473f, %struct.Memory** %MEMORY

  ; Code: jne .L_42476d	 RIP: 424745	 Bytes: 6
  %loadMem_424745 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424745 = call %struct.Memory* @routine_jne_.L_42476d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424745, i8* %BRANCH_TAKEN, i64 40, i64 6, i64 6)
  store %struct.Memory* %call_424745, %struct.Memory** %MEMORY

  %loadBr_424745 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424745 = icmp eq i8 %loadBr_424745, 1
  br i1 %cmpBr_424745, label %block_.L_42476d, label %block_42474b

block_42474b:
  ; Code: jp .L_42476d	 RIP: 42474b	 Bytes: 6
  %loadMem_42474b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42474b = call %struct.Memory* @routine_jp_.L_42476d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42474b, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_42474b, %struct.Memory** %MEMORY

  %loadBr_42474b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42474b = icmp eq i8 %loadBr_42474b, 1
  br i1 %cmpBr_42474b, label %block_.L_42476d, label %block_424751

block_424751:
  ; Code: movq $0x457e34, %rdi	 RIP: 424751	 Bytes: 10
  %loadMem_424751 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424751 = call %struct.Memory* @routine_movq__0x457e34___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424751)
  store %struct.Memory* %call_424751, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 42475b	 Bytes: 2
  %loadMem_42475b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42475b = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42475b)
  store %struct.Memory* %call_42475b, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 42475d	 Bytes: 5
  %loadMem1_42475d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42475d = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42475d, i64 -144077, i64 5, i64 5)
  store %struct.Memory* %call1_42475d, %struct.Memory** %MEMORY

  %loadMem2_42475d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42475d = load i64, i64* %3
  %call2_42475d = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_42475d, %struct.Memory* %loadMem2_42475d)
  store %struct.Memory* %call2_42475d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c0(%rbp)	 RIP: 424762	 Bytes: 6
  %loadMem_424762 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424762 = call %struct.Memory* @routine_movl__eax__MINUS0x1c0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424762)
  store %struct.Memory* %call_424762, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42478c	 RIP: 424768	 Bytes: 5
  %loadMem_424768 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424768 = call %struct.Memory* @routine_jmpq_.L_42478c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424768, i64 36, i64 5)
  store %struct.Memory* %call_424768, %struct.Memory** %MEMORY

  br label %block_.L_42478c

  ; Code: .L_42476d:	 RIP: 42476d	 Bytes: 0
block_.L_42476d:

  ; Code: movq $0x457ed7, %rdi	 RIP: 42476d	 Bytes: 10
  %loadMem_42476d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42476d = call %struct.Memory* @routine_movq__0x457ed7___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42476d)
  store %struct.Memory* %call_42476d, %struct.Memory** %MEMORY

  ; Code: movsd -0x108(%rbp), %xmm0	 RIP: 424777	 Bytes: 8
  %loadMem_424777 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424777 = call %struct.Memory* @routine_movsd_MINUS0x108__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424777)
  store %struct.Memory* %call_424777, %struct.Memory** %MEMORY

  ; Code: movb $0x1, %al	 RIP: 42477f	 Bytes: 2
  %loadMem_42477f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42477f = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42477f)
  store %struct.Memory* %call_42477f, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 424781	 Bytes: 5
  %loadMem1_424781 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_424781 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_424781, i64 -144113, i64 5, i64 5)
  store %struct.Memory* %call1_424781, %struct.Memory** %MEMORY

  %loadMem2_424781 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424781 = load i64, i64* %3
  %call2_424781 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_424781, %struct.Memory* %loadMem2_424781)
  store %struct.Memory* %call2_424781, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c4(%rbp)	 RIP: 424786	 Bytes: 6
  %loadMem_424786 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424786 = call %struct.Memory* @routine_movl__eax__MINUS0x1c4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424786)
  store %struct.Memory* %call_424786, %struct.Memory** %MEMORY

  ; Code: .L_42478c:	 RIP: 42478c	 Bytes: 0
  br label %block_.L_42478c
block_.L_42478c:

  ; Code: movq $0x458548, %rdi	 RIP: 42478c	 Bytes: 10
  %loadMem_42478c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42478c = call %struct.Memory* @routine_movq__0x458548___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42478c)
  store %struct.Memory* %call_42478c, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 424796	 Bytes: 2
  %loadMem_424796 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424796 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424796)
  store %struct.Memory* %call_424796, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 424798	 Bytes: 5
  %loadMem1_424798 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_424798 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_424798, i64 -144136, i64 5, i64 5)
  store %struct.Memory* %call1_424798, %struct.Memory** %MEMORY

  %loadMem2_424798 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424798 = load i64, i64* %3
  %call2_424798 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_424798, %struct.Memory* %loadMem2_424798)
  store %struct.Memory* %call2_424798, %struct.Memory** %MEMORY

  ; Code: movl $0xffffff38, %edi	 RIP: 42479d	 Bytes: 5
  %loadMem_42479d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42479d = call %struct.Memory* @routine_movl__0xffffff38___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42479d)
  store %struct.Memory* %call_42479d, %struct.Memory** %MEMORY

  ; Code: movl $0xc8, %esi	 RIP: 4247a2	 Bytes: 5
  %loadMem_4247a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4247a2 = call %struct.Memory* @routine_movl__0xc8___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4247a2)
  store %struct.Memory* %call_4247a2, %struct.Memory** %MEMORY

  ; Code: movl $0x64, %edx	 RIP: 4247a7	 Bytes: 5
  %loadMem_4247a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4247a7 = call %struct.Memory* @routine_movl__0x64___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4247a7)
  store %struct.Memory* %call_4247a7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c8(%rbp)	 RIP: 4247ac	 Bytes: 6
  %loadMem_4247ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4247ac = call %struct.Memory* @routine_movl__eax__MINUS0x1c8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4247ac)
  store %struct.Memory* %call_4247ac, %struct.Memory** %MEMORY

  ; Code: callq .AllocHistogram	 RIP: 4247b2	 Bytes: 5
  %loadMem1_4247b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4247b2 = call %struct.Memory* @routine_callq_.AllocHistogram(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4247b2, i64 -49570, i64 5, i64 5)
  store %struct.Memory* %call1_4247b2, %struct.Memory** %MEMORY

  %loadMem2_4247b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4247b2 = load i64, i64* %3
  %call2_4247b2 = call %struct.Memory* @sub_418610.AllocHistogram(%struct.State* %0, i64  %loadPC_4247b2, %struct.Memory* %loadMem2_4247b2)
  store %struct.Memory* %call2_4247b2, %struct.Memory** %MEMORY

  ; Code: movl $0xc8, %edi	 RIP: 4247b7	 Bytes: 5
  %loadMem_4247b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4247b7 = call %struct.Memory* @routine_movl__0xc8___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4247b7)
  store %struct.Memory* %call_4247b7, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x70(%rbp)	 RIP: 4247bc	 Bytes: 4
  %loadMem_4247bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4247bc = call %struct.Memory* @routine_movq__rax__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4247bc)
  store %struct.Memory* %call_4247bc, %struct.Memory** %MEMORY

  ; Code: callq .AllocTophits	 RIP: 4247c0	 Bytes: 5
  %loadMem1_4247c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4247c0 = call %struct.Memory* @routine_callq_.AllocTophits(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4247c0, i64 163312, i64 5, i64 5)
  store %struct.Memory* %call1_4247c0, %struct.Memory** %MEMORY

  %loadMem2_4247c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4247c0 = load i64, i64* %3
  %call2_4247c0 = call %struct.Memory* @sub_44c5b0.AllocTophits(%struct.State* %0, i64  %loadPC_4247c0, %struct.Memory* %loadMem2_4247c0)
  store %struct.Memory* %call2_4247c0, %struct.Memory** %MEMORY

  ; Code: movl $0xc8, %edi	 RIP: 4247c5	 Bytes: 5
  %loadMem_4247c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4247c5 = call %struct.Memory* @routine_movl__0xc8___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4247c5)
  store %struct.Memory* %call_4247c5, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x80(%rbp)	 RIP: 4247ca	 Bytes: 4
  %loadMem_4247ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4247ca = call %struct.Memory* @routine_movq__rax__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4247ca)
  store %struct.Memory* %call_4247ca, %struct.Memory** %MEMORY

  ; Code: callq .AllocTophits	 RIP: 4247ce	 Bytes: 5
  %loadMem1_4247ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4247ce = call %struct.Memory* @routine_callq_.AllocTophits(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4247ce, i64 163298, i64 5, i64 5)
  store %struct.Memory* %call1_4247ce, %struct.Memory** %MEMORY

  %loadMem2_4247ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4247ce = load i64, i64* %3
  %call2_4247ce = call %struct.Memory* @sub_44c5b0.AllocTophits(%struct.State* %0, i64  %loadPC_4247ce, %struct.Memory* %loadMem2_4247ce)
  store %struct.Memory* %call2_4247ce, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x88(%rbp)	 RIP: 4247d3	 Bytes: 7
  %loadMem_4247d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4247d3 = call %struct.Memory* @routine_movq__rax__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4247d3)
  store %struct.Memory* %call_4247d3, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x154(%rbp)	 RIP: 4247da	 Bytes: 7
  %loadMem_4247da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4247da = call %struct.Memory* @routine_cmpl__0x0__MINUS0x154__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4247da)
  store %struct.Memory* %call_4247da, %struct.Memory** %MEMORY

  ; Code: je .L_42484a	 RIP: 4247e1	 Bytes: 6
  %loadMem_4247e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4247e1 = call %struct.Memory* @routine_je_.L_42484a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4247e1, i8* %BRANCH_TAKEN, i64 105, i64 6, i64 6)
  store %struct.Memory* %call_4247e1, %struct.Memory** %MEMORY

  %loadBr_4247e1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4247e1 = icmp eq i8 %loadBr_4247e1, 1
  br i1 %cmpBr_4247e1, label %block_.L_42484a, label %block_4247e7

block_4247e7:
  ; Code: cmpl $0x0, -0x144(%rbp)	 RIP: 4247e7	 Bytes: 7
  %loadMem_4247e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4247e7 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x144__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4247e7)
  store %struct.Memory* %call_4247e7, %struct.Memory** %MEMORY

  ; Code: je .L_42484a	 RIP: 4247ee	 Bytes: 6
  %loadMem_4247ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4247ee = call %struct.Memory* @routine_je_.L_42484a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4247ee, i8* %BRANCH_TAKEN, i64 92, i64 6, i64 6)
  store %struct.Memory* %call_4247ee, %struct.Memory** %MEMORY

  %loadBr_4247ee = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4247ee = icmp eq i8 %loadBr_4247ee, 1
  br i1 %cmpBr_4247ee, label %block_.L_42484a, label %block_4247f4

block_4247f4:
  ; Code: leaq -0x120(%rbp), %rdx	 RIP: 4247f4	 Bytes: 7
  %loadMem_4247f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4247f4 = call %struct.Memory* @routine_leaq_MINUS0x120__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4247f4)
  store %struct.Memory* %call_4247f4, %struct.Memory** %MEMORY

  ; Code: leaq -0xd8(%rbp), %rax	 RIP: 4247fb	 Bytes: 7
  %loadMem_4247fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4247fb = call %struct.Memory* @routine_leaq_MINUS0xd8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4247fb)
  store %struct.Memory* %call_4247fb, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rdi	 RIP: 424802	 Bytes: 4
  %loadMem_424802 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424802 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424802)
  store %struct.Memory* %call_424802, %struct.Memory** %MEMORY

  ; Code: movq -0x58(%rbp), %rsi	 RIP: 424806	 Bytes: 4
  %loadMem_424806 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424806 = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424806)
  store %struct.Memory* %call_424806, %struct.Memory** %MEMORY

  ; Code: movl -0x13c(%rbp), %ecx	 RIP: 42480a	 Bytes: 6
  %loadMem_42480a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42480a = call %struct.Memory* @routine_movl_MINUS0x13c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42480a)
  store %struct.Memory* %call_42480a, %struct.Memory** %MEMORY

  ; Code: movl -0x138(%rbp), %r8d	 RIP: 424810	 Bytes: 7
  %loadMem_424810 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424810 = call %struct.Memory* @routine_movl_MINUS0x138__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424810)
  store %struct.Memory* %call_424810, %struct.Memory** %MEMORY

  ; Code: movl -0x140(%rbp), %r9d	 RIP: 424817	 Bytes: 7
  %loadMem_424817 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424817 = call %struct.Memory* @routine_movl_MINUS0x140__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424817)
  store %struct.Memory* %call_424817, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %r10	 RIP: 42481e	 Bytes: 4
  %loadMem_42481e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42481e = call %struct.Memory* @routine_movq_MINUS0x70__rbp____r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42481e)
  store %struct.Memory* %call_42481e, %struct.Memory** %MEMORY

  ; Code: movq -0x80(%rbp), %r11	 RIP: 424822	 Bytes: 4
  %loadMem_424822 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424822 = call %struct.Memory* @routine_movq_MINUS0x80__rbp____r11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424822)
  store %struct.Memory* %call_424822, %struct.Memory** %MEMORY

  ; Code: movq -0x88(%rbp), %rbx	 RIP: 424826	 Bytes: 7
  %loadMem_424826 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424826 = call %struct.Memory* @routine_movq_MINUS0x88__rbp____rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424826)
  store %struct.Memory* %call_424826, %struct.Memory** %MEMORY

  ; Code: movq %r10, (%rsp)	 RIP: 42482d	 Bytes: 4
  %loadMem_42482d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42482d = call %struct.Memory* @routine_movq__r10____rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42482d)
  store %struct.Memory* %call_42482d, %struct.Memory** %MEMORY

  ; Code: movq %r11, 0x8(%rsp)	 RIP: 424831	 Bytes: 5
  %loadMem_424831 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424831 = call %struct.Memory* @routine_movq__r11__0x8__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424831)
  store %struct.Memory* %call_424831, %struct.Memory** %MEMORY

  ; Code: movq %rbx, 0x10(%rsp)	 RIP: 424836	 Bytes: 5
  %loadMem_424836 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424836 = call %struct.Memory* @routine_movq__rbx__0x10__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424836)
  store %struct.Memory* %call_424836, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x18(%rsp)	 RIP: 42483b	 Bytes: 5
  %loadMem_42483b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42483b = call %struct.Memory* @routine_movq__rax__0x18__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42483b)
  store %struct.Memory* %call_42483b, %struct.Memory** %MEMORY

  ; Code: callq .main_loop_pvm	 RIP: 424840	 Bytes: 5
  %loadMem1_424840 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_424840 = call %struct.Memory* @routine_callq_.main_loop_pvm(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_424840, i64 1872, i64 5, i64 5)
  store %struct.Memory* %call1_424840, %struct.Memory** %MEMORY

  %loadMem2_424840 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424840 = load i64, i64* %3
  %call2_424840 = call %struct.Memory* @sub_424f90.main_loop_pvm(%struct.State* %0, i64  %loadPC_424840, %struct.Memory* %loadMem2_424840)
  store %struct.Memory* %call2_424840, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42491c	 RIP: 424845	 Bytes: 5
  %loadMem_424845 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424845 = call %struct.Memory* @routine_jmpq_.L_42491c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424845, i64 215, i64 5)
  store %struct.Memory* %call_424845, %struct.Memory** %MEMORY

  br label %block_.L_42491c

  ; Code: .L_42484a:	 RIP: 42484a	 Bytes: 0
block_.L_42484a:

  ; Code: cmpl $0x0, -0x150(%rbp)	 RIP: 42484a	 Bytes: 7
  %loadMem_42484a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42484a = call %struct.Memory* @routine_cmpl__0x0__MINUS0x150__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42484a)
  store %struct.Memory* %call_42484a, %struct.Memory** %MEMORY

  ; Code: je .L_4248c6	 RIP: 424851	 Bytes: 6
  %loadMem_424851 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424851 = call %struct.Memory* @routine_je_.L_4248c6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424851, i8* %BRANCH_TAKEN, i64 117, i64 6, i64 6)
  store %struct.Memory* %call_424851, %struct.Memory** %MEMORY

  %loadBr_424851 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424851 = icmp eq i8 %loadBr_424851, 1
  br i1 %cmpBr_424851, label %block_.L_4248c6, label %block_424857

block_424857:
  ; Code: cmpl $0x0, -0x14c(%rbp)	 RIP: 424857	 Bytes: 7
  %loadMem_424857 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424857 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x14c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424857)
  store %struct.Memory* %call_424857, %struct.Memory** %MEMORY

  ; Code: je .L_4248c6	 RIP: 42485e	 Bytes: 6
  %loadMem_42485e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42485e = call %struct.Memory* @routine_je_.L_4248c6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42485e, i8* %BRANCH_TAKEN, i64 104, i64 6, i64 6)
  store %struct.Memory* %call_42485e, %struct.Memory** %MEMORY

  %loadBr_42485e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42485e = icmp eq i8 %loadBr_42485e, 1
  br i1 %cmpBr_42485e, label %block_.L_4248c6, label %block_424864

block_424864:
  ; Code: leaq -0x120(%rbp), %rdx	 RIP: 424864	 Bytes: 7
  %loadMem_424864 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424864 = call %struct.Memory* @routine_leaq_MINUS0x120__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424864)
  store %struct.Memory* %call_424864, %struct.Memory** %MEMORY

  ; Code: leaq -0xd8(%rbp), %rax	 RIP: 42486b	 Bytes: 7
  %loadMem_42486b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42486b = call %struct.Memory* @routine_leaq_MINUS0xd8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42486b)
  store %struct.Memory* %call_42486b, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rdi	 RIP: 424872	 Bytes: 4
  %loadMem_424872 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424872 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424872)
  store %struct.Memory* %call_424872, %struct.Memory** %MEMORY

  ; Code: movq -0x58(%rbp), %rsi	 RIP: 424876	 Bytes: 4
  %loadMem_424876 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424876 = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424876)
  store %struct.Memory* %call_424876, %struct.Memory** %MEMORY

  ; Code: movl -0x13c(%rbp), %ecx	 RIP: 42487a	 Bytes: 6
  %loadMem_42487a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42487a = call %struct.Memory* @routine_movl_MINUS0x13c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42487a)
  store %struct.Memory* %call_42487a, %struct.Memory** %MEMORY

  ; Code: movl -0x138(%rbp), %r8d	 RIP: 424880	 Bytes: 7
  %loadMem_424880 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424880 = call %struct.Memory* @routine_movl_MINUS0x138__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424880)
  store %struct.Memory* %call_424880, %struct.Memory** %MEMORY

  ; Code: movl -0x140(%rbp), %r9d	 RIP: 424887	 Bytes: 7
  %loadMem_424887 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424887 = call %struct.Memory* @routine_movl_MINUS0x140__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424887)
  store %struct.Memory* %call_424887, %struct.Memory** %MEMORY

  ; Code: movl -0x14c(%rbp), %r10d	 RIP: 42488e	 Bytes: 7
  %loadMem_42488e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42488e = call %struct.Memory* @routine_movl_MINUS0x14c__rbp____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42488e)
  store %struct.Memory* %call_42488e, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %r11	 RIP: 424895	 Bytes: 4
  %loadMem_424895 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424895 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____r11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424895)
  store %struct.Memory* %call_424895, %struct.Memory** %MEMORY

  ; Code: movq -0x80(%rbp), %rbx	 RIP: 424899	 Bytes: 4
  %loadMem_424899 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424899 = call %struct.Memory* @routine_movq_MINUS0x80__rbp____rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424899)
  store %struct.Memory* %call_424899, %struct.Memory** %MEMORY

  ; Code: movq -0x88(%rbp), %r14	 RIP: 42489d	 Bytes: 7
  %loadMem_42489d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42489d = call %struct.Memory* @routine_movq_MINUS0x88__rbp____r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42489d)
  store %struct.Memory* %call_42489d, %struct.Memory** %MEMORY

  ; Code: movl %r10d, (%rsp)	 RIP: 4248a4	 Bytes: 4
  %loadMem_4248a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4248a4 = call %struct.Memory* @routine_movl__r10d____rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4248a4)
  store %struct.Memory* %call_4248a4, %struct.Memory** %MEMORY

  ; Code: movq %r11, 0x8(%rsp)	 RIP: 4248a8	 Bytes: 5
  %loadMem_4248a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4248a8 = call %struct.Memory* @routine_movq__r11__0x8__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4248a8)
  store %struct.Memory* %call_4248a8, %struct.Memory** %MEMORY

  ; Code: movq %rbx, 0x10(%rsp)	 RIP: 4248ad	 Bytes: 5
  %loadMem_4248ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4248ad = call %struct.Memory* @routine_movq__rbx__0x10__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4248ad)
  store %struct.Memory* %call_4248ad, %struct.Memory** %MEMORY

  ; Code: movq %r14, 0x18(%rsp)	 RIP: 4248b2	 Bytes: 5
  %loadMem_4248b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4248b2 = call %struct.Memory* @routine_movq__r14__0x18__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4248b2)
  store %struct.Memory* %call_4248b2, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x20(%rsp)	 RIP: 4248b7	 Bytes: 5
  %loadMem_4248b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4248b7 = call %struct.Memory* @routine_movq__rax__0x20__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4248b7)
  store %struct.Memory* %call_4248b7, %struct.Memory** %MEMORY

  ; Code: callq .main_loop_threaded	 RIP: 4248bc	 Bytes: 5
  %loadMem1_4248bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4248bc = call %struct.Memory* @routine_callq_.main_loop_threaded(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4248bc, i64 1844, i64 5, i64 5)
  store %struct.Memory* %call1_4248bc, %struct.Memory** %MEMORY

  %loadMem2_4248bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4248bc = load i64, i64* %3
  %call2_4248bc = call %struct.Memory* @sub_424ff0.main_loop_threaded(%struct.State* %0, i64  %loadPC_4248bc, %struct.Memory* %loadMem2_4248bc)
  store %struct.Memory* %call2_4248bc, %struct.Memory** %MEMORY

  ; Code: jmpq .L_424917	 RIP: 4248c1	 Bytes: 5
  %loadMem_4248c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4248c1 = call %struct.Memory* @routine_jmpq_.L_424917(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4248c1, i64 86, i64 5)
  store %struct.Memory* %call_4248c1, %struct.Memory** %MEMORY

  br label %block_.L_424917

  ; Code: .L_4248c6:	 RIP: 4248c6	 Bytes: 0
block_.L_4248c6:

  ; Code: leaq -0x120(%rbp), %rdx	 RIP: 4248c6	 Bytes: 7
  %loadMem_4248c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4248c6 = call %struct.Memory* @routine_leaq_MINUS0x120__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4248c6)
  store %struct.Memory* %call_4248c6, %struct.Memory** %MEMORY

  ; Code: leaq -0xd8(%rbp), %rax	 RIP: 4248cd	 Bytes: 7
  %loadMem_4248cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4248cd = call %struct.Memory* @routine_leaq_MINUS0xd8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4248cd)
  store %struct.Memory* %call_4248cd, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rdi	 RIP: 4248d4	 Bytes: 4
  %loadMem_4248d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4248d4 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4248d4)
  store %struct.Memory* %call_4248d4, %struct.Memory** %MEMORY

  ; Code: movq -0x58(%rbp), %rsi	 RIP: 4248d8	 Bytes: 4
  %loadMem_4248d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4248d8 = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4248d8)
  store %struct.Memory* %call_4248d8, %struct.Memory** %MEMORY

  ; Code: movl -0x13c(%rbp), %ecx	 RIP: 4248dc	 Bytes: 6
  %loadMem_4248dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4248dc = call %struct.Memory* @routine_movl_MINUS0x13c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4248dc)
  store %struct.Memory* %call_4248dc, %struct.Memory** %MEMORY

  ; Code: movl -0x138(%rbp), %r8d	 RIP: 4248e2	 Bytes: 7
  %loadMem_4248e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4248e2 = call %struct.Memory* @routine_movl_MINUS0x138__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4248e2)
  store %struct.Memory* %call_4248e2, %struct.Memory** %MEMORY

  ; Code: movl -0x140(%rbp), %r9d	 RIP: 4248e9	 Bytes: 7
  %loadMem_4248e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4248e9 = call %struct.Memory* @routine_movl_MINUS0x140__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4248e9)
  store %struct.Memory* %call_4248e9, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %r10	 RIP: 4248f0	 Bytes: 4
  %loadMem_4248f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4248f0 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4248f0)
  store %struct.Memory* %call_4248f0, %struct.Memory** %MEMORY

  ; Code: movq -0x80(%rbp), %r11	 RIP: 4248f4	 Bytes: 4
  %loadMem_4248f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4248f4 = call %struct.Memory* @routine_movq_MINUS0x80__rbp____r11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4248f4)
  store %struct.Memory* %call_4248f4, %struct.Memory** %MEMORY

  ; Code: movq -0x88(%rbp), %rbx	 RIP: 4248f8	 Bytes: 7
  %loadMem_4248f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4248f8 = call %struct.Memory* @routine_movq_MINUS0x88__rbp____rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4248f8)
  store %struct.Memory* %call_4248f8, %struct.Memory** %MEMORY

  ; Code: movq %r10, (%rsp)	 RIP: 4248ff	 Bytes: 4
  %loadMem_4248ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4248ff = call %struct.Memory* @routine_movq__r10____rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4248ff)
  store %struct.Memory* %call_4248ff, %struct.Memory** %MEMORY

  ; Code: movq %r11, 0x8(%rsp)	 RIP: 424903	 Bytes: 5
  %loadMem_424903 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424903 = call %struct.Memory* @routine_movq__r11__0x8__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424903)
  store %struct.Memory* %call_424903, %struct.Memory** %MEMORY

  ; Code: movq %rbx, 0x10(%rsp)	 RIP: 424908	 Bytes: 5
  %loadMem_424908 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424908 = call %struct.Memory* @routine_movq__rbx__0x10__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424908)
  store %struct.Memory* %call_424908, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x18(%rsp)	 RIP: 42490d	 Bytes: 5
  %loadMem_42490d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42490d = call %struct.Memory* @routine_movq__rax__0x18__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42490d)
  store %struct.Memory* %call_42490d, %struct.Memory** %MEMORY

  ; Code: callq .main_loop_serial_393	 RIP: 424912	 Bytes: 5
  %loadMem1_424912 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_424912 = call %struct.Memory* @routine_callq_.main_loop_serial_393(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_424912, i64 1870, i64 5, i64 5)
  store %struct.Memory* %call1_424912, %struct.Memory** %MEMORY

  %loadMem2_424912 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424912 = load i64, i64* %3
  %call2_424912 = call %struct.Memory* @sub_425060.main_loop_serial_393(%struct.State* %0, i64  %loadPC_424912, %struct.Memory* %loadMem2_424912)
  store %struct.Memory* %call2_424912, %struct.Memory** %MEMORY

  ; Code: .L_424917:	 RIP: 424917	 Bytes: 0
  br label %block_.L_424917
block_.L_424917:

  ; Code: jmpq .L_42491c	 RIP: 424917	 Bytes: 5
  %loadMem_424917 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424917 = call %struct.Memory* @routine_jmpq_.L_42491c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424917, i64 5, i64 5)
  store %struct.Memory* %call_424917, %struct.Memory** %MEMORY

  br label %block_.L_42491c

  ; Code: .L_42491c:	 RIP: 42491c	 Bytes: 0
block_.L_42491c:

  ; Code: movq -0x68(%rbp), %rax	 RIP: 42491c	 Bytes: 4
  %loadMem_42491c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42491c = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42491c)
  store %struct.Memory* %call_42491c, %struct.Memory** %MEMORY

  ; Code: movl 0x1c8(%rax), %ecx	 RIP: 424920	 Bytes: 6
  %loadMem_424920 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424920 = call %struct.Memory* @routine_movl_0x1c8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424920)
  store %struct.Memory* %call_424920, %struct.Memory** %MEMORY

  ; Code: andl $0x80, %ecx	 RIP: 424926	 Bytes: 6
  %loadMem_424926 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424926 = call %struct.Memory* @routine_andl__0x80___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424926)
  store %struct.Memory* %call_424926, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 42492c	 Bytes: 3
  %loadMem_42492c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42492c = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42492c)
  store %struct.Memory* %call_42492c, %struct.Memory** %MEMORY

  ; Code: je .L_42496a	 RIP: 42492f	 Bytes: 6
  %loadMem_42492f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42492f = call %struct.Memory* @routine_je_.L_42496a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42492f, i8* %BRANCH_TAKEN, i64 59, i64 6, i64 6)
  store %struct.Memory* %call_42492f, %struct.Memory** %MEMORY

  %loadBr_42492f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42492f = icmp eq i8 %loadBr_42492f, 1
  br i1 %cmpBr_42492f, label %block_.L_42496a, label %block_424935

block_424935:
  ; Code: xorl %esi, %esi	 RIP: 424935	 Bytes: 2
  %loadMem_424935 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424935 = call %struct.Memory* @routine_xorl__esi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424935)
  store %struct.Memory* %call_424935, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rdi	 RIP: 424937	 Bytes: 4
  %loadMem_424937 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424937 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424937)
  store %struct.Memory* %call_424937, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rax	 RIP: 42493b	 Bytes: 4
  %loadMem_42493b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42493b = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42493b)
  store %struct.Memory* %call_42493b, %struct.Memory** %MEMORY

  ; Code: movss 0x1c0(%rax), %xmm0	 RIP: 42493f	 Bytes: 8
  %loadMem_42493f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42493f = call %struct.Memory* @routine_movss_0x1c0__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42493f)
  store %struct.Memory* %call_42493f, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rax	 RIP: 424947	 Bytes: 4
  %loadMem_424947 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424947 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424947)
  store %struct.Memory* %call_424947, %struct.Memory** %MEMORY

  ; Code: movss 0x1c4(%rax), %xmm1	 RIP: 42494b	 Bytes: 8
  %loadMem_42494b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42494b = call %struct.Memory* @routine_movss_0x1c4__rax____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42494b)
  store %struct.Memory* %call_42494b, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rax	 RIP: 424953	 Bytes: 4
  %loadMem_424953 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424953 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424953)
  store %struct.Memory* %call_424953, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl 0x14(%rax), %xmm2	 RIP: 424957	 Bytes: 5
  %loadMem_424957 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424957 = call %struct.Memory* @routine_cvtsi2ssl_0x14__rax____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424957)
  store %struct.Memory* %call_424957, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rax	 RIP: 42495c	 Bytes: 4
  %loadMem_42495c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42495c = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42495c)
  store %struct.Memory* %call_42495c, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl 0x10(%rax), %xmm3	 RIP: 424960	 Bytes: 5
  %loadMem_424960 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424960 = call %struct.Memory* @routine_cvtsi2ssl_0x10__rax____xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424960)
  store %struct.Memory* %call_424960, %struct.Memory** %MEMORY

  ; Code: callq .ExtremeValueSetHistogram	 RIP: 424965	 Bytes: 5
  %loadMem1_424965 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_424965 = call %struct.Memory* @routine_callq_.ExtremeValueSetHistogram(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_424965, i64 -44613, i64 5, i64 5)
  store %struct.Memory* %call1_424965, %struct.Memory** %MEMORY

  %loadMem2_424965 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424965 = load i64, i64* %3
  %call2_424965 = call %struct.Memory* @sub_419b20.ExtremeValueSetHistogram(%struct.State* %0, i64  %loadPC_424965, %struct.Memory* %loadMem2_424965)
  store %struct.Memory* %call2_424965, %struct.Memory** %MEMORY

  ; Code: .L_42496a:	 RIP: 42496a	 Bytes: 0
  br label %block_.L_42496a
block_.L_42496a:

  ; Code: cmpl $0x0, -0xfc(%rbp)	 RIP: 42496a	 Bytes: 7
  %loadMem_42496a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42496a = call %struct.Memory* @routine_cmpl__0x0__MINUS0xfc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42496a)
  store %struct.Memory* %call_42496a, %struct.Memory** %MEMORY

  ; Code: jne .L_424983	 RIP: 424971	 Bytes: 6
  %loadMem_424971 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424971 = call %struct.Memory* @routine_jne_.L_424983(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424971, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_424971, %struct.Memory** %MEMORY

  %loadBr_424971 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424971 = icmp eq i8 %loadBr_424971, 1
  br i1 %cmpBr_424971, label %block_.L_424983, label %block_424977

block_424977:
  ; Code: movl -0xd8(%rbp), %eax	 RIP: 424977	 Bytes: 6
  %loadMem_424977 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424977 = call %struct.Memory* @routine_movl_MINUS0xd8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424977)
  store %struct.Memory* %call_424977, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xfc(%rbp)	 RIP: 42497d	 Bytes: 6
  %loadMem_42497d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42497d = call %struct.Memory* @routine_movl__eax__MINUS0xfc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42497d)
  store %struct.Memory* %call_42497d, %struct.Memory** %MEMORY

  ; Code: .L_424983:	 RIP: 424983	 Bytes: 0
  br label %block_.L_424983
block_.L_424983:

  ; Code: cmpl $0x0, -0x148(%rbp)	 RIP: 424983	 Bytes: 7
  %loadMem_424983 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424983 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x148__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424983)
  store %struct.Memory* %call_424983, %struct.Memory** %MEMORY

  ; Code: je .L_424a63	 RIP: 42498a	 Bytes: 6
  %loadMem_42498a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42498a = call %struct.Memory* @routine_je_.L_424a63(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42498a, i8* %BRANCH_TAKEN, i64 217, i64 6, i64 6)
  store %struct.Memory* %call_42498a, %struct.Memory** %MEMORY

  %loadBr_42498a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42498a = icmp eq i8 %loadBr_42498a, 1
  br i1 %cmpBr_42498a, label %block_.L_424a63, label %block_424990

block_424990:
  ; Code: movq -0x68(%rbp), %rax	 RIP: 424990	 Bytes: 4
  %loadMem_424990 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424990 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424990)
  store %struct.Memory* %call_424990, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rsi	 RIP: 424994	 Bytes: 3
  %loadMem_424994 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424994 = call %struct.Memory* @routine_movq___rax____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424994)
  store %struct.Memory* %call_424994, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rax	 RIP: 424997	 Bytes: 4
  %loadMem_424997 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424997 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424997)
  store %struct.Memory* %call_424997, %struct.Memory** %MEMORY

  ; Code: movl 0x1c8(%rax), %ecx	 RIP: 42499b	 Bytes: 6
  %loadMem_42499b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42499b = call %struct.Memory* @routine_movl_0x1c8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42499b)
  store %struct.Memory* %call_42499b, %struct.Memory** %MEMORY

  ; Code: andl $0x200, %ecx	 RIP: 4249a1	 Bytes: 6
  %loadMem_4249a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4249a1 = call %struct.Memory* @routine_andl__0x200___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4249a1)
  store %struct.Memory* %call_4249a1, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 4249a7	 Bytes: 3
  %loadMem_4249a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4249a7 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4249a7)
  store %struct.Memory* %call_4249a7, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x1d0(%rbp)	 RIP: 4249aa	 Bytes: 7
  %loadMem_4249aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4249aa = call %struct.Memory* @routine_movq__rsi__MINUS0x1d0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4249aa)
  store %struct.Memory* %call_4249aa, %struct.Memory** %MEMORY

  ; Code: je .L_4249cb	 RIP: 4249b1	 Bytes: 6
  %loadMem_4249b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4249b1 = call %struct.Memory* @routine_je_.L_4249cb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4249b1, i8* %BRANCH_TAKEN, i64 26, i64 6, i64 6)
  store %struct.Memory* %call_4249b1, %struct.Memory** %MEMORY

  %loadBr_4249b1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4249b1 = icmp eq i8 %loadBr_4249b1, 1
  br i1 %cmpBr_4249b1, label %block_.L_4249cb, label %block_4249b7

block_4249b7:
  ; Code: movq -0x68(%rbp), %rax	 RIP: 4249b7	 Bytes: 4
  %loadMem_4249b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4249b7 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4249b7)
  store %struct.Memory* %call_4249b7, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 4249bb	 Bytes: 4
  %loadMem_4249bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4249bb = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4249bb)
  store %struct.Memory* %call_4249bb, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x1d8(%rbp)	 RIP: 4249bf	 Bytes: 7
  %loadMem_4249bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4249bf = call %struct.Memory* @routine_movq__rax__MINUS0x1d8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4249bf)
  store %struct.Memory* %call_4249bf, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4249e1	 RIP: 4249c6	 Bytes: 5
  %loadMem_4249c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4249c6 = call %struct.Memory* @routine_jmpq_.L_4249e1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4249c6, i64 27, i64 5)
  store %struct.Memory* %call_4249c6, %struct.Memory** %MEMORY

  br label %block_.L_4249e1

  ; Code: .L_4249cb:	 RIP: 4249cb	 Bytes: 0
block_.L_4249cb:

  ; Code: movq $0x458d45, %rax	 RIP: 4249cb	 Bytes: 10
  %loadMem_4249cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4249cb = call %struct.Memory* @routine_movq__0x458d45___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4249cb)
  store %struct.Memory* %call_4249cb, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x1d8(%rbp)	 RIP: 4249d5	 Bytes: 7
  %loadMem_4249d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4249d5 = call %struct.Memory* @routine_movq__rax__MINUS0x1d8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4249d5)
  store %struct.Memory* %call_4249d5, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4249e1	 RIP: 4249dc	 Bytes: 5
  %loadMem_4249dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4249dc = call %struct.Memory* @routine_jmpq_.L_4249e1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4249dc, i64 5, i64 5)
  store %struct.Memory* %call_4249dc, %struct.Memory** %MEMORY

  br label %block_.L_4249e1

  ; Code: .L_4249e1:	 RIP: 4249e1	 Bytes: 0
block_.L_4249e1:

  ; Code: movq -0x1d8(%rbp), %rax	 RIP: 4249e1	 Bytes: 7
  %loadMem_4249e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4249e1 = call %struct.Memory* @routine_movq_MINUS0x1d8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4249e1)
  store %struct.Memory* %call_4249e1, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rcx	 RIP: 4249e8	 Bytes: 4
  %loadMem_4249e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4249e8 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4249e8)
  store %struct.Memory* %call_4249e8, %struct.Memory** %MEMORY

  ; Code: movl 0x1c8(%rcx), %edx	 RIP: 4249ec	 Bytes: 6
  %loadMem_4249ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4249ec = call %struct.Memory* @routine_movl_0x1c8__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4249ec)
  store %struct.Memory* %call_4249ec, %struct.Memory** %MEMORY

  ; Code: andl $0x2, %edx	 RIP: 4249f2	 Bytes: 3
  %loadMem_4249f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4249f2 = call %struct.Memory* @routine_andl__0x2___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4249f2)
  store %struct.Memory* %call_4249f2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 4249f5	 Bytes: 3
  %loadMem_4249f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4249f5 = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4249f5)
  store %struct.Memory* %call_4249f5, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x1e0(%rbp)	 RIP: 4249f8	 Bytes: 7
  %loadMem_4249f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4249f8 = call %struct.Memory* @routine_movq__rax__MINUS0x1e0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4249f8)
  store %struct.Memory* %call_4249f8, %struct.Memory** %MEMORY

  ; Code: je .L_424a19	 RIP: 4249ff	 Bytes: 6
  %loadMem_4249ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4249ff = call %struct.Memory* @routine_je_.L_424a19(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4249ff, i8* %BRANCH_TAKEN, i64 26, i64 6, i64 6)
  store %struct.Memory* %call_4249ff, %struct.Memory** %MEMORY

  %loadBr_4249ff = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4249ff = icmp eq i8 %loadBr_4249ff, 1
  br i1 %cmpBr_4249ff, label %block_.L_424a19, label %block_424a05

block_424a05:
  ; Code: movq -0x68(%rbp), %rax	 RIP: 424a05	 Bytes: 4
  %loadMem_424a05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424a05 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424a05)
  store %struct.Memory* %call_424a05, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 424a09	 Bytes: 4
  %loadMem_424a09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424a09 = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424a09)
  store %struct.Memory* %call_424a09, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x1e8(%rbp)	 RIP: 424a0d	 Bytes: 7
  %loadMem_424a0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424a0d = call %struct.Memory* @routine_movq__rax__MINUS0x1e8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424a0d)
  store %struct.Memory* %call_424a0d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_424a2f	 RIP: 424a14	 Bytes: 5
  %loadMem_424a14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424a14 = call %struct.Memory* @routine_jmpq_.L_424a2f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424a14, i64 27, i64 5)
  store %struct.Memory* %call_424a14, %struct.Memory** %MEMORY

  br label %block_.L_424a2f

  ; Code: .L_424a19:	 RIP: 424a19	 Bytes: 0
block_.L_424a19:

  ; Code: movq $0x458d45, %rax	 RIP: 424a19	 Bytes: 10
  %loadMem_424a19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424a19 = call %struct.Memory* @routine_movq__0x458d45___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424a19)
  store %struct.Memory* %call_424a19, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x1e8(%rbp)	 RIP: 424a23	 Bytes: 7
  %loadMem_424a23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424a23 = call %struct.Memory* @routine_movq__rax__MINUS0x1e8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424a23)
  store %struct.Memory* %call_424a23, %struct.Memory** %MEMORY

  ; Code: jmpq .L_424a2f	 RIP: 424a2a	 Bytes: 5
  %loadMem_424a2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424a2a = call %struct.Memory* @routine_jmpq_.L_424a2f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424a2a, i64 5, i64 5)
  store %struct.Memory* %call_424a2a, %struct.Memory** %MEMORY

  br label %block_.L_424a2f

  ; Code: .L_424a2f:	 RIP: 424a2f	 Bytes: 0
block_.L_424a2f:

  ; Code: movq -0x1e8(%rbp), %rax	 RIP: 424a2f	 Bytes: 7
  %loadMem_424a2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424a2f = call %struct.Memory* @routine_movq_MINUS0x1e8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424a2f)
  store %struct.Memory* %call_424a2f, %struct.Memory** %MEMORY

  ; Code: movq $0x457ee2, %rdi	 RIP: 424a36	 Bytes: 10
  %loadMem_424a36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424a36 = call %struct.Memory* @routine_movq__0x457ee2___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424a36)
  store %struct.Memory* %call_424a36, %struct.Memory** %MEMORY

  ; Code: movq -0x1d0(%rbp), %rsi	 RIP: 424a40	 Bytes: 7
  %loadMem_424a40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424a40 = call %struct.Memory* @routine_movq_MINUS0x1d0__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424a40)
  store %struct.Memory* %call_424a40, %struct.Memory** %MEMORY

  ; Code: movq -0x1e0(%rbp), %rdx	 RIP: 424a47	 Bytes: 7
  %loadMem_424a47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424a47 = call %struct.Memory* @routine_movq_MINUS0x1e0__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424a47)
  store %struct.Memory* %call_424a47, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rcx	 RIP: 424a4e	 Bytes: 3
  %loadMem_424a4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424a4e = call %struct.Memory* @routine_movq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424a4e)
  store %struct.Memory* %call_424a4e, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 424a51	 Bytes: 2
  %loadMem_424a51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424a51 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424a51)
  store %struct.Memory* %call_424a51, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 424a53	 Bytes: 5
  %loadMem1_424a53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_424a53 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_424a53, i64 -144835, i64 5, i64 5)
  store %struct.Memory* %call1_424a53, %struct.Memory** %MEMORY

  %loadMem2_424a53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424a53 = load i64, i64* %3
  %call2_424a53 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_424a53, %struct.Memory* %loadMem2_424a53)
  store %struct.Memory* %call2_424a53, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1ec(%rbp)	 RIP: 424a58	 Bytes: 6
  %loadMem_424a58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424a58 = call %struct.Memory* @routine_movl__eax__MINUS0x1ec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424a58)
  store %struct.Memory* %call_424a58, %struct.Memory** %MEMORY

  ; Code: jmpq .L_424b46	 RIP: 424a5e	 Bytes: 5
  %loadMem_424a5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424a5e = call %struct.Memory* @routine_jmpq_.L_424b46(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424a5e, i64 232, i64 5)
  store %struct.Memory* %call_424a5e, %struct.Memory** %MEMORY

  br label %block_.L_424b46

  ; Code: .L_424a63:	 RIP: 424a63	 Bytes: 0
block_.L_424a63:

  ; Code: movq $0x457ef8, %rdi	 RIP: 424a63	 Bytes: 10
  %loadMem_424a63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424a63 = call %struct.Memory* @routine_movq__0x457ef8___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424a63)
  store %struct.Memory* %call_424a63, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rax	 RIP: 424a6d	 Bytes: 4
  %loadMem_424a6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424a6d = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424a6d)
  store %struct.Memory* %call_424a6d, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rsi	 RIP: 424a71	 Bytes: 3
  %loadMem_424a71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424a71 = call %struct.Memory* @routine_movq___rax____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424a71)
  store %struct.Memory* %call_424a71, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 424a74	 Bytes: 2
  %loadMem_424a74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424a74 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424a74)
  store %struct.Memory* %call_424a74, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 424a76	 Bytes: 5
  %loadMem1_424a76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_424a76 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_424a76, i64 -144870, i64 5, i64 5)
  store %struct.Memory* %call1_424a76, %struct.Memory** %MEMORY

  %loadMem2_424a76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424a76 = load i64, i64* %3
  %call2_424a76 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_424a76, %struct.Memory* %loadMem2_424a76)
  store %struct.Memory* %call2_424a76, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rsi	 RIP: 424a7b	 Bytes: 4
  %loadMem_424a7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424a7b = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424a7b)
  store %struct.Memory* %call_424a7b, %struct.Memory** %MEMORY

  ; Code: movl 0x1c8(%rsi), %ecx	 RIP: 424a7f	 Bytes: 6
  %loadMem_424a7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424a7f = call %struct.Memory* @routine_movl_0x1c8__rsi____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424a7f)
  store %struct.Memory* %call_424a7f, %struct.Memory** %MEMORY

  ; Code: andl $0x200, %ecx	 RIP: 424a85	 Bytes: 6
  %loadMem_424a85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424a85 = call %struct.Memory* @routine_andl__0x200___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424a85)
  store %struct.Memory* %call_424a85, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 424a8b	 Bytes: 3
  %loadMem_424a8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424a8b = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424a8b)
  store %struct.Memory* %call_424a8b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1f0(%rbp)	 RIP: 424a8e	 Bytes: 6
  %loadMem_424a8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424a8e = call %struct.Memory* @routine_movl__eax__MINUS0x1f0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424a8e)
  store %struct.Memory* %call_424a8e, %struct.Memory** %MEMORY

  ; Code: je .L_424aae	 RIP: 424a94	 Bytes: 6
  %loadMem_424a94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424a94 = call %struct.Memory* @routine_je_.L_424aae(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424a94, i8* %BRANCH_TAKEN, i64 26, i64 6, i64 6)
  store %struct.Memory* %call_424a94, %struct.Memory** %MEMORY

  %loadBr_424a94 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424a94 = icmp eq i8 %loadBr_424a94, 1
  br i1 %cmpBr_424a94, label %block_.L_424aae, label %block_424a9a

block_424a9a:
  ; Code: movq -0x68(%rbp), %rax	 RIP: 424a9a	 Bytes: 4
  %loadMem_424a9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424a9a = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424a9a)
  store %struct.Memory* %call_424a9a, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 424a9e	 Bytes: 4
  %loadMem_424a9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424a9e = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424a9e)
  store %struct.Memory* %call_424a9e, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x1f8(%rbp)	 RIP: 424aa2	 Bytes: 7
  %loadMem_424aa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424aa2 = call %struct.Memory* @routine_movq__rax__MINUS0x1f8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424aa2)
  store %struct.Memory* %call_424aa2, %struct.Memory** %MEMORY

  ; Code: jmpq .L_424ac4	 RIP: 424aa9	 Bytes: 5
  %loadMem_424aa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424aa9 = call %struct.Memory* @routine_jmpq_.L_424ac4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424aa9, i64 27, i64 5)
  store %struct.Memory* %call_424aa9, %struct.Memory** %MEMORY

  br label %block_.L_424ac4

  ; Code: .L_424aae:	 RIP: 424aae	 Bytes: 0
block_.L_424aae:

  ; Code: movq $0x457f0a, %rax	 RIP: 424aae	 Bytes: 10
  %loadMem_424aae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424aae = call %struct.Memory* @routine_movq__0x457f0a___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424aae)
  store %struct.Memory* %call_424aae, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x1f8(%rbp)	 RIP: 424ab8	 Bytes: 7
  %loadMem_424ab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424ab8 = call %struct.Memory* @routine_movq__rax__MINUS0x1f8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424ab8)
  store %struct.Memory* %call_424ab8, %struct.Memory** %MEMORY

  ; Code: jmpq .L_424ac4	 RIP: 424abf	 Bytes: 5
  %loadMem_424abf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424abf = call %struct.Memory* @routine_jmpq_.L_424ac4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424abf, i64 5, i64 5)
  store %struct.Memory* %call_424abf, %struct.Memory** %MEMORY

  br label %block_.L_424ac4

  ; Code: .L_424ac4:	 RIP: 424ac4	 Bytes: 0
block_.L_424ac4:

  ; Code: movq -0x1f8(%rbp), %rax	 RIP: 424ac4	 Bytes: 7
  %loadMem_424ac4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424ac4 = call %struct.Memory* @routine_movq_MINUS0x1f8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424ac4)
  store %struct.Memory* %call_424ac4, %struct.Memory** %MEMORY

  ; Code: movq $0x457f11, %rdi	 RIP: 424acb	 Bytes: 10
  %loadMem_424acb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424acb = call %struct.Memory* @routine_movq__0x457f11___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424acb)
  store %struct.Memory* %call_424acb, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 424ad5	 Bytes: 3
  %loadMem_424ad5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424ad5 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424ad5)
  store %struct.Memory* %call_424ad5, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 424ad8	 Bytes: 2
  %loadMem_424ad8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424ad8 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424ad8)
  store %struct.Memory* %call_424ad8, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 424ada	 Bytes: 5
  %loadMem1_424ada = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_424ada = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_424ada, i64 -144970, i64 5, i64 5)
  store %struct.Memory* %call1_424ada, %struct.Memory** %MEMORY

  %loadMem2_424ada = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424ada = load i64, i64* %3
  %call2_424ada = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_424ada, %struct.Memory* %loadMem2_424ada)
  store %struct.Memory* %call2_424ada, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rsi	 RIP: 424adf	 Bytes: 4
  %loadMem_424adf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424adf = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424adf)
  store %struct.Memory* %call_424adf, %struct.Memory** %MEMORY

  ; Code: movl 0x1c8(%rsi), %ecx	 RIP: 424ae3	 Bytes: 6
  %loadMem_424ae3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424ae3 = call %struct.Memory* @routine_movl_0x1c8__rsi____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424ae3)
  store %struct.Memory* %call_424ae3, %struct.Memory** %MEMORY

  ; Code: andl $0x2, %ecx	 RIP: 424ae9	 Bytes: 3
  %loadMem_424ae9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424ae9 = call %struct.Memory* @routine_andl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424ae9)
  store %struct.Memory* %call_424ae9, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 424aec	 Bytes: 3
  %loadMem_424aec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424aec = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424aec)
  store %struct.Memory* %call_424aec, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1fc(%rbp)	 RIP: 424aef	 Bytes: 6
  %loadMem_424aef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424aef = call %struct.Memory* @routine_movl__eax__MINUS0x1fc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424aef)
  store %struct.Memory* %call_424aef, %struct.Memory** %MEMORY

  ; Code: je .L_424b0f	 RIP: 424af5	 Bytes: 6
  %loadMem_424af5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424af5 = call %struct.Memory* @routine_je_.L_424b0f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424af5, i8* %BRANCH_TAKEN, i64 26, i64 6, i64 6)
  store %struct.Memory* %call_424af5, %struct.Memory** %MEMORY

  %loadBr_424af5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424af5 = icmp eq i8 %loadBr_424af5, 1
  br i1 %cmpBr_424af5, label %block_.L_424b0f, label %block_424afb

block_424afb:
  ; Code: movq -0x68(%rbp), %rax	 RIP: 424afb	 Bytes: 4
  %loadMem_424afb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424afb = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424afb)
  store %struct.Memory* %call_424afb, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 424aff	 Bytes: 4
  %loadMem_424aff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424aff = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424aff)
  store %struct.Memory* %call_424aff, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x208(%rbp)	 RIP: 424b03	 Bytes: 7
  %loadMem_424b03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424b03 = call %struct.Memory* @routine_movq__rax__MINUS0x208__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424b03)
  store %struct.Memory* %call_424b03, %struct.Memory** %MEMORY

  ; Code: jmpq .L_424b25	 RIP: 424b0a	 Bytes: 5
  %loadMem_424b0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424b0a = call %struct.Memory* @routine_jmpq_.L_424b25(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424b0a, i64 27, i64 5)
  store %struct.Memory* %call_424b0a, %struct.Memory** %MEMORY

  br label %block_.L_424b25

  ; Code: .L_424b0f:	 RIP: 424b0f	 Bytes: 0
block_.L_424b0f:

  ; Code: movq $0x457f0a, %rax	 RIP: 424b0f	 Bytes: 10
  %loadMem_424b0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424b0f = call %struct.Memory* @routine_movq__0x457f0a___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424b0f)
  store %struct.Memory* %call_424b0f, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x208(%rbp)	 RIP: 424b19	 Bytes: 7
  %loadMem_424b19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424b19 = call %struct.Memory* @routine_movq__rax__MINUS0x208__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424b19)
  store %struct.Memory* %call_424b19, %struct.Memory** %MEMORY

  ; Code: jmpq .L_424b25	 RIP: 424b20	 Bytes: 5
  %loadMem_424b20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424b20 = call %struct.Memory* @routine_jmpq_.L_424b25(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424b20, i64 5, i64 5)
  store %struct.Memory* %call_424b20, %struct.Memory** %MEMORY

  br label %block_.L_424b25

  ; Code: .L_424b25:	 RIP: 424b25	 Bytes: 0
block_.L_424b25:

  ; Code: movq -0x208(%rbp), %rax	 RIP: 424b25	 Bytes: 7
  %loadMem_424b25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424b25 = call %struct.Memory* @routine_movq_MINUS0x208__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424b25)
  store %struct.Memory* %call_424b25, %struct.Memory** %MEMORY

  ; Code: movq $0x457f22, %rdi	 RIP: 424b2c	 Bytes: 10
  %loadMem_424b2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424b2c = call %struct.Memory* @routine_movq__0x457f22___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424b2c)
  store %struct.Memory* %call_424b2c, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 424b36	 Bytes: 3
  %loadMem_424b36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424b36 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424b36)
  store %struct.Memory* %call_424b36, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 424b39	 Bytes: 2
  %loadMem_424b39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424b39 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424b39)
  store %struct.Memory* %call_424b39, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 424b3b	 Bytes: 5
  %loadMem1_424b3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_424b3b = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_424b3b, i64 -145067, i64 5, i64 5)
  store %struct.Memory* %call1_424b3b, %struct.Memory** %MEMORY

  %loadMem2_424b3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424b3b = load i64, i64* %3
  %call2_424b3b = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_424b3b, %struct.Memory* %loadMem2_424b3b)
  store %struct.Memory* %call2_424b3b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20c(%rbp)	 RIP: 424b40	 Bytes: 6
  %loadMem_424b40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424b40 = call %struct.Memory* @routine_movl__eax__MINUS0x20c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424b40)
  store %struct.Memory* %call_424b40, %struct.Memory** %MEMORY

  ; Code: .L_424b46:	 RIP: 424b46	 Bytes: 0
  br label %block_.L_424b46
block_.L_424b46:

  ; Code: movq -0x68(%rbp), %rax	 RIP: 424b46	 Bytes: 4
  %loadMem_424b46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424b46 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424b46)
  store %struct.Memory* %call_424b46, %struct.Memory** %MEMORY

  ; Code: movl 0x1c8(%rax), %ecx	 RIP: 424b4a	 Bytes: 6
  %loadMem_424b4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424b4a = call %struct.Memory* @routine_movl_0x1c8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424b4a)
  store %struct.Memory* %call_424b4a, %struct.Memory** %MEMORY

  ; Code: andl $0x80, %ecx	 RIP: 424b50	 Bytes: 6
  %loadMem_424b50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424b50 = call %struct.Memory* @routine_andl__0x80___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424b50)
  store %struct.Memory* %call_424b50, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 424b56	 Bytes: 3
  %loadMem_424b56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424b56 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424b56)
  store %struct.Memory* %call_424b56, %struct.Memory** %MEMORY

  ; Code: je .L_424b7b	 RIP: 424b59	 Bytes: 6
  %loadMem_424b59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424b59 = call %struct.Memory* @routine_je_.L_424b7b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424b59, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_424b59, %struct.Memory** %MEMORY

  %loadBr_424b59 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424b59 = icmp eq i8 %loadBr_424b59, 1
  br i1 %cmpBr_424b59, label %block_.L_424b7b, label %block_424b5f

block_424b5f:
  ; Code: movq $0x457f33, %rdi	 RIP: 424b5f	 Bytes: 10
  %loadMem_424b5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424b5f = call %struct.Memory* @routine_movq__0x457f33___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424b5f)
  store %struct.Memory* %call_424b5f, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 424b69	 Bytes: 2
  %loadMem_424b69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424b69 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424b69)
  store %struct.Memory* %call_424b69, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 424b6b	 Bytes: 5
  %loadMem1_424b6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_424b6b = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_424b6b, i64 -145115, i64 5, i64 5)
  store %struct.Memory* %call1_424b6b, %struct.Memory** %MEMORY

  %loadMem2_424b6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424b6b = load i64, i64* %3
  %call2_424b6b = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_424b6b, %struct.Memory* %loadMem2_424b6b)
  store %struct.Memory* %call2_424b6b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x210(%rbp)	 RIP: 424b70	 Bytes: 6
  %loadMem_424b70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424b70 = call %struct.Memory* @routine_movl__eax__MINUS0x210__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424b70)
  store %struct.Memory* %call_424b70, %struct.Memory** %MEMORY

  ; Code: jmpq .L_424b92	 RIP: 424b76	 Bytes: 5
  %loadMem_424b76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424b76 = call %struct.Memory* @routine_jmpq_.L_424b92(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424b76, i64 28, i64 5)
  store %struct.Memory* %call_424b76, %struct.Memory** %MEMORY

  br label %block_.L_424b92

  ; Code: .L_424b7b:	 RIP: 424b7b	 Bytes: 0
block_.L_424b7b:

  ; Code: movq $0x457f72, %rdi	 RIP: 424b7b	 Bytes: 10
  %loadMem_424b7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424b7b = call %struct.Memory* @routine_movq__0x457f72___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424b7b)
  store %struct.Memory* %call_424b7b, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 424b85	 Bytes: 2
  %loadMem_424b85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424b85 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424b85)
  store %struct.Memory* %call_424b85, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 424b87	 Bytes: 5
  %loadMem1_424b87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_424b87 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_424b87, i64 -145143, i64 5, i64 5)
  store %struct.Memory* %call1_424b87, %struct.Memory** %MEMORY

  %loadMem2_424b87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424b87 = load i64, i64* %3
  %call2_424b87 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_424b87, %struct.Memory* %loadMem2_424b87)
  store %struct.Memory* %call2_424b87, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x214(%rbp)	 RIP: 424b8c	 Bytes: 6
  %loadMem_424b8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424b8c = call %struct.Memory* @routine_movl__eax__MINUS0x214__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424b8c)
  store %struct.Memory* %call_424b8c, %struct.Memory** %MEMORY

  ; Code: .L_424b92:	 RIP: 424b92	 Bytes: 0
  br label %block_.L_424b92
block_.L_424b92:

  ; Code: movq -0x80(%rbp), %rdi	 RIP: 424b92	 Bytes: 4
  %loadMem_424b92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424b92 = call %struct.Memory* @routine_movq_MINUS0x80__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424b92)
  store %struct.Memory* %call_424b92, %struct.Memory** %MEMORY

  ; Code: callq .FullSortTophits	 RIP: 424b96	 Bytes: 5
  %loadMem1_424b96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_424b96 = call %struct.Memory* @routine_callq_.FullSortTophits(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_424b96, i64 165242, i64 5, i64 5)
  store %struct.Memory* %call1_424b96, %struct.Memory** %MEMORY

  %loadMem2_424b96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424b96 = load i64, i64* %3
  %call2_424b96 = call %struct.Memory* @sub_44d110.FullSortTophits(%struct.State* %0, i64  %loadPC_424b96, %struct.Memory* %loadMem2_424b96)
  store %struct.Memory* %call2_424b96, %struct.Memory** %MEMORY

  ; Code: movq -0x80(%rbp), %rdi	 RIP: 424b9b	 Bytes: 4
  %loadMem_424b9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424b9b = call %struct.Memory* @routine_movq_MINUS0x80__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424b9b)
  store %struct.Memory* %call_424b9b, %struct.Memory** %MEMORY

  ; Code: callq .TophitsMaxName	 RIP: 424b9f	 Bytes: 5
  %loadMem1_424b9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_424b9f = call %struct.Memory* @routine_callq_.TophitsMaxName(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_424b9f, i64 164929, i64 5, i64 5)
  store %struct.Memory* %call1_424b9f, %struct.Memory** %MEMORY

  %loadMem2_424b9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424b9f = load i64, i64* %3
  %call2_424b9f = call %struct.Memory* @sub_44cfe0.TophitsMaxName(%struct.State* %0, i64  %loadPC_424b9f, %struct.Memory* %loadMem2_424b9f)
  store %struct.Memory* %call2_424b9f, %struct.Memory** %MEMORY

  ; Code: movl $0x8, %ecx	 RIP: 424ba4	 Bytes: 5
  %loadMem_424ba4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424ba4 = call %struct.Memory* @routine_movl__0x8___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424ba4)
  store %struct.Memory* %call_424ba4, %struct.Memory** %MEMORY

  ; Code: cmpl %eax, %ecx	 RIP: 424ba9	 Bytes: 2
  %loadMem_424ba9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424ba9 = call %struct.Memory* @routine_cmpl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424ba9)
  store %struct.Memory* %call_424ba9, %struct.Memory** %MEMORY

  ; Code: jle .L_424bc1	 RIP: 424bab	 Bytes: 6
  %loadMem_424bab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424bab = call %struct.Memory* @routine_jle_.L_424bc1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424bab, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_424bab, %struct.Memory** %MEMORY

  %loadBr_424bab = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424bab = icmp eq i8 %loadBr_424bab, 1
  br i1 %cmpBr_424bab, label %block_.L_424bc1, label %block_424bb1

block_424bb1:
  ; Code: movl $0x8, %eax	 RIP: 424bb1	 Bytes: 5
  %loadMem_424bb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424bb1 = call %struct.Memory* @routine_movl__0x8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424bb1)
  store %struct.Memory* %call_424bb1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x218(%rbp)	 RIP: 424bb6	 Bytes: 6
  %loadMem_424bb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424bb6 = call %struct.Memory* @routine_movl__eax__MINUS0x218__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424bb6)
  store %struct.Memory* %call_424bb6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_424bd0	 RIP: 424bbc	 Bytes: 5
  %loadMem_424bbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424bbc = call %struct.Memory* @routine_jmpq_.L_424bd0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424bbc, i64 20, i64 5)
  store %struct.Memory* %call_424bbc, %struct.Memory** %MEMORY

  br label %block_.L_424bd0

  ; Code: .L_424bc1:	 RIP: 424bc1	 Bytes: 0
block_.L_424bc1:

  ; Code: movq -0x80(%rbp), %rdi	 RIP: 424bc1	 Bytes: 4
  %loadMem_424bc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424bc1 = call %struct.Memory* @routine_movq_MINUS0x80__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424bc1)
  store %struct.Memory* %call_424bc1, %struct.Memory** %MEMORY

  ; Code: callq .TophitsMaxName	 RIP: 424bc5	 Bytes: 5
  %loadMem1_424bc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_424bc5 = call %struct.Memory* @routine_callq_.TophitsMaxName(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_424bc5, i64 164891, i64 5, i64 5)
  store %struct.Memory* %call1_424bc5, %struct.Memory** %MEMORY

  %loadMem2_424bc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424bc5 = load i64, i64* %3
  %call2_424bc5 = call %struct.Memory* @sub_44cfe0.TophitsMaxName(%struct.State* %0, i64  %loadPC_424bc5, %struct.Memory* %loadMem2_424bc5)
  store %struct.Memory* %call2_424bc5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x218(%rbp)	 RIP: 424bca	 Bytes: 6
  %loadMem_424bca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424bca = call %struct.Memory* @routine_movl__eax__MINUS0x218__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424bca)
  store %struct.Memory* %call_424bca, %struct.Memory** %MEMORY

  ; Code: .L_424bd0:	 RIP: 424bd0	 Bytes: 0
  br label %block_.L_424bd0
block_.L_424bd0:

  ; Code: movl -0x218(%rbp), %eax	 RIP: 424bd0	 Bytes: 6
  %loadMem_424bd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424bd0 = call %struct.Memory* @routine_movl_MINUS0x218__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424bd0)
  store %struct.Memory* %call_424bd0, %struct.Memory** %MEMORY

  ; Code: movl $0x34, %ecx	 RIP: 424bd6	 Bytes: 5
  %loadMem_424bd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424bd6 = call %struct.Memory* @routine_movl__0x34___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424bd6)
  store %struct.Memory* %call_424bd6, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xe8(%rbp)	 RIP: 424bdb	 Bytes: 6
  %loadMem_424bdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424bdb = call %struct.Memory* @routine_movl__eax__MINUS0xe8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424bdb)
  store %struct.Memory* %call_424bdb, %struct.Memory** %MEMORY

  ; Code: subl -0xe8(%rbp), %ecx	 RIP: 424be1	 Bytes: 6
  %loadMem_424be1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424be1 = call %struct.Memory* @routine_subl_MINUS0xe8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424be1)
  store %struct.Memory* %call_424be1, %struct.Memory** %MEMORY

  ; Code: cmpl $0xb, %ecx	 RIP: 424be7	 Bytes: 3
  %loadMem_424be7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424be7 = call %struct.Memory* @routine_cmpl__0xb___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424be7)
  store %struct.Memory* %call_424be7, %struct.Memory** %MEMORY

  ; Code: jle .L_424c06	 RIP: 424bea	 Bytes: 6
  %loadMem_424bea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424bea = call %struct.Memory* @routine_jle_.L_424c06(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424bea, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_424bea, %struct.Memory** %MEMORY

  %loadBr_424bea = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424bea = icmp eq i8 %loadBr_424bea, 1
  br i1 %cmpBr_424bea, label %block_.L_424c06, label %block_424bf0

block_424bf0:
  ; Code: movl $0x34, %eax	 RIP: 424bf0	 Bytes: 5
  %loadMem_424bf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424bf0 = call %struct.Memory* @routine_movl__0x34___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424bf0)
  store %struct.Memory* %call_424bf0, %struct.Memory** %MEMORY

  ; Code: subl -0xe8(%rbp), %eax	 RIP: 424bf5	 Bytes: 6
  %loadMem_424bf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424bf5 = call %struct.Memory* @routine_subl_MINUS0xe8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424bf5)
  store %struct.Memory* %call_424bf5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x21c(%rbp)	 RIP: 424bfb	 Bytes: 6
  %loadMem_424bfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424bfb = call %struct.Memory* @routine_movl__eax__MINUS0x21c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424bfb)
  store %struct.Memory* %call_424bfb, %struct.Memory** %MEMORY

  ; Code: jmpq .L_424c16	 RIP: 424c01	 Bytes: 5
  %loadMem_424c01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424c01 = call %struct.Memory* @routine_jmpq_.L_424c16(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424c01, i64 21, i64 5)
  store %struct.Memory* %call_424c01, %struct.Memory** %MEMORY

  br label %block_.L_424c16

  ; Code: .L_424c06:	 RIP: 424c06	 Bytes: 0
block_.L_424c06:

  ; Code: movl $0xb, %eax	 RIP: 424c06	 Bytes: 5
  %loadMem_424c06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424c06 = call %struct.Memory* @routine_movl__0xb___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424c06)
  store %struct.Memory* %call_424c06, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x21c(%rbp)	 RIP: 424c0b	 Bytes: 6
  %loadMem_424c0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424c0b = call %struct.Memory* @routine_movl__eax__MINUS0x21c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424c0b)
  store %struct.Memory* %call_424c0b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_424c16	 RIP: 424c11	 Bytes: 5
  %loadMem_424c11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424c11 = call %struct.Memory* @routine_jmpq_.L_424c16(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424c11, i64 5, i64 5)
  store %struct.Memory* %call_424c11, %struct.Memory** %MEMORY

  br label %block_.L_424c16

  ; Code: .L_424c16:	 RIP: 424c16	 Bytes: 0
block_.L_424c16:

  ; Code: movl -0x21c(%rbp), %eax	 RIP: 424c16	 Bytes: 6
  %loadMem_424c16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424c16 = call %struct.Memory* @routine_movl_MINUS0x21c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424c16)
  store %struct.Memory* %call_424c16, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xec(%rbp)	 RIP: 424c1c	 Bytes: 6
  %loadMem_424c1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424c1c = call %struct.Memory* @routine_movl__eax__MINUS0xec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424c1c)
  store %struct.Memory* %call_424c1c, %struct.Memory** %MEMORY

  ; Code: movq -0x88(%rbp), %rdi	 RIP: 424c22	 Bytes: 7
  %loadMem_424c22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424c22 = call %struct.Memory* @routine_movq_MINUS0x88__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424c22)
  store %struct.Memory* %call_424c22, %struct.Memory** %MEMORY

  ; Code: callq .FullSortTophits	 RIP: 424c29	 Bytes: 5
  %loadMem1_424c29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_424c29 = call %struct.Memory* @routine_callq_.FullSortTophits(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_424c29, i64 165095, i64 5, i64 5)
  store %struct.Memory* %call1_424c29, %struct.Memory** %MEMORY

  %loadMem2_424c29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424c29 = load i64, i64* %3
  %call2_424c29 = call %struct.Memory* @sub_44d110.FullSortTophits(%struct.State* %0, i64  %loadPC_424c29, %struct.Memory* %loadMem2_424c29)
  store %struct.Memory* %call2_424c29, %struct.Memory** %MEMORY

  ; Code: movq -0x88(%rbp), %rdi	 RIP: 424c2e	 Bytes: 7
  %loadMem_424c2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424c2e = call %struct.Memory* @routine_movq_MINUS0x88__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424c2e)
  store %struct.Memory* %call_424c2e, %struct.Memory** %MEMORY

  ; Code: callq .TophitsMaxName	 RIP: 424c35	 Bytes: 5
  %loadMem1_424c35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_424c35 = call %struct.Memory* @routine_callq_.TophitsMaxName(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_424c35, i64 164779, i64 5, i64 5)
  store %struct.Memory* %call1_424c35, %struct.Memory** %MEMORY

  %loadMem2_424c35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424c35 = load i64, i64* %3
  %call2_424c35 = call %struct.Memory* @sub_44cfe0.TophitsMaxName(%struct.State* %0, i64  %loadPC_424c35, %struct.Memory* %loadMem2_424c35)
  store %struct.Memory* %call2_424c35, %struct.Memory** %MEMORY

  ; Code: movl $0x8, %ecx	 RIP: 424c3a	 Bytes: 5
  %loadMem_424c3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424c3a = call %struct.Memory* @routine_movl__0x8___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424c3a)
  store %struct.Memory* %call_424c3a, %struct.Memory** %MEMORY

  ; Code: cmpl %eax, %ecx	 RIP: 424c3f	 Bytes: 2
  %loadMem_424c3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424c3f = call %struct.Memory* @routine_cmpl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424c3f)
  store %struct.Memory* %call_424c3f, %struct.Memory** %MEMORY

  ; Code: jle .L_424c57	 RIP: 424c41	 Bytes: 6
  %loadMem_424c41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424c41 = call %struct.Memory* @routine_jle_.L_424c57(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424c41, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_424c41, %struct.Memory** %MEMORY

  %loadBr_424c41 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424c41 = icmp eq i8 %loadBr_424c41, 1
  br i1 %cmpBr_424c41, label %block_.L_424c57, label %block_424c47

block_424c47:
  ; Code: movl $0x8, %eax	 RIP: 424c47	 Bytes: 5
  %loadMem_424c47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424c47 = call %struct.Memory* @routine_movl__0x8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424c47)
  store %struct.Memory* %call_424c47, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x220(%rbp)	 RIP: 424c4c	 Bytes: 6
  %loadMem_424c4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424c4c = call %struct.Memory* @routine_movl__eax__MINUS0x220__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424c4c)
  store %struct.Memory* %call_424c4c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_424c69	 RIP: 424c52	 Bytes: 5
  %loadMem_424c52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424c52 = call %struct.Memory* @routine_jmpq_.L_424c69(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424c52, i64 23, i64 5)
  store %struct.Memory* %call_424c52, %struct.Memory** %MEMORY

  br label %block_.L_424c69

  ; Code: .L_424c57:	 RIP: 424c57	 Bytes: 0
block_.L_424c57:

  ; Code: movq -0x88(%rbp), %rdi	 RIP: 424c57	 Bytes: 7
  %loadMem_424c57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424c57 = call %struct.Memory* @routine_movq_MINUS0x88__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424c57)
  store %struct.Memory* %call_424c57, %struct.Memory** %MEMORY

  ; Code: callq .TophitsMaxName	 RIP: 424c5e	 Bytes: 5
  %loadMem1_424c5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_424c5e = call %struct.Memory* @routine_callq_.TophitsMaxName(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_424c5e, i64 164738, i64 5, i64 5)
  store %struct.Memory* %call1_424c5e, %struct.Memory** %MEMORY

  %loadMem2_424c5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424c5e = load i64, i64* %3
  %call2_424c5e = call %struct.Memory* @sub_44cfe0.TophitsMaxName(%struct.State* %0, i64  %loadPC_424c5e, %struct.Memory* %loadMem2_424c5e)
  store %struct.Memory* %call2_424c5e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x220(%rbp)	 RIP: 424c63	 Bytes: 6
  %loadMem_424c63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424c63 = call %struct.Memory* @routine_movl__eax__MINUS0x220__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424c63)
  store %struct.Memory* %call_424c63, %struct.Memory** %MEMORY

  ; Code: .L_424c69:	 RIP: 424c69	 Bytes: 0
  br label %block_.L_424c69
block_.L_424c69:

  ; Code: movl -0x220(%rbp), %eax	 RIP: 424c69	 Bytes: 6
  %loadMem_424c69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424c69 = call %struct.Memory* @routine_movl_MINUS0x220__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424c69)
  store %struct.Memory* %call_424c69, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xe8(%rbp)	 RIP: 424c6f	 Bytes: 6
  %loadMem_424c6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424c6f = call %struct.Memory* @routine_movl__eax__MINUS0xe8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424c6f)
  store %struct.Memory* %call_424c6f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0xf4(%rbp)	 RIP: 424c75	 Bytes: 7
  %loadMem_424c75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424c75 = call %struct.Memory* @routine_cmpl__0x0__MINUS0xf4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424c75)
  store %struct.Memory* %call_424c75, %struct.Memory** %MEMORY

  ; Code: je .L_424f0f	 RIP: 424c7c	 Bytes: 6
  %loadMem_424c7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424c7c = call %struct.Memory* @routine_je_.L_424f0f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424c7c, i8* %BRANCH_TAKEN, i64 659, i64 6, i64 6)
  store %struct.Memory* %call_424c7c, %struct.Memory** %MEMORY

  %loadBr_424c7c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424c7c = icmp eq i8 %loadBr_424c7c, 1
  br i1 %cmpBr_424c7c, label %block_.L_424f0f, label %block_424c82

block_424c82:
  ; Code: movq $0x457fa9, %rdi	 RIP: 424c82	 Bytes: 10
  %loadMem_424c82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424c82 = call %struct.Memory* @routine_movq__0x457fa9___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424c82)
  store %struct.Memory* %call_424c82, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 424c8c	 Bytes: 2
  %loadMem_424c8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424c8c = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424c8c)
  store %struct.Memory* %call_424c8c, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 424c8e	 Bytes: 5
  %loadMem1_424c8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_424c8e = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_424c8e, i64 -145406, i64 5, i64 5)
  store %struct.Memory* %call1_424c8e, %struct.Memory** %MEMORY

  %loadMem2_424c8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424c8e = load i64, i64* %3
  %call2_424c8e = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_424c8e, %struct.Memory* %loadMem2_424c8e)
  store %struct.Memory* %call2_424c8e, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x60(%rbp)	 RIP: 424c93	 Bytes: 7
  %loadMem_424c93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424c93 = call %struct.Memory* @routine_movl__0x0__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424c93)
  store %struct.Memory* %call_424c93, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0xf0(%rbp)	 RIP: 424c9a	 Bytes: 10
  %loadMem_424c9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424c9a = call %struct.Memory* @routine_movl__0x0__MINUS0xf0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424c9a)
  store %struct.Memory* %call_424c9a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x224(%rbp)	 RIP: 424ca4	 Bytes: 6
  %loadMem_424ca4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424ca4 = call %struct.Memory* @routine_movl__eax__MINUS0x224__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424ca4)
  store %struct.Memory* %call_424ca4, %struct.Memory** %MEMORY

  ; Code: .L_424caa:	 RIP: 424caa	 Bytes: 0
  br label %block_.L_424caa
block_.L_424caa:

  ; Code: movl -0x60(%rbp), %eax	 RIP: 424caa	 Bytes: 3
  %loadMem_424caa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424caa = call %struct.Memory* @routine_movl_MINUS0x60__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424caa)
  store %struct.Memory* %call_424caa, %struct.Memory** %MEMORY

  ; Code: movq -0x88(%rbp), %rcx	 RIP: 424cad	 Bytes: 7
  %loadMem_424cad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424cad = call %struct.Memory* @routine_movq_MINUS0x88__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424cad)
  store %struct.Memory* %call_424cad, %struct.Memory** %MEMORY

  ; Code: cmpl 0x14(%rcx), %eax	 RIP: 424cb4	 Bytes: 3
  %loadMem_424cb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424cb4 = call %struct.Memory* @routine_cmpl_0x14__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424cb4)
  store %struct.Memory* %call_424cb4, %struct.Memory** %MEMORY

  ; Code: jge .L_424eb7	 RIP: 424cb7	 Bytes: 6
  %loadMem_424cb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424cb7 = call %struct.Memory* @routine_jge_.L_424eb7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424cb7, i8* %BRANCH_TAKEN, i64 512, i64 6, i64 6)
  store %struct.Memory* %call_424cb7, %struct.Memory** %MEMORY

  %loadBr_424cb7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424cb7 = icmp eq i8 %loadBr_424cb7, 1
  br i1 %cmpBr_424cb7, label %block_.L_424eb7, label %block_424cbd

block_424cbd:
  ; Code: movl -0xf0(%rbp), %eax	 RIP: 424cbd	 Bytes: 6
  %loadMem_424cbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424cbd = call %struct.Memory* @routine_movl_MINUS0xf0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424cbd)
  store %struct.Memory* %call_424cbd, %struct.Memory** %MEMORY

  ; Code: cmpl -0xf4(%rbp), %eax	 RIP: 424cc3	 Bytes: 6
  %loadMem_424cc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424cc3 = call %struct.Memory* @routine_cmpl_MINUS0xf4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424cc3)
  store %struct.Memory* %call_424cc3, %struct.Memory** %MEMORY

  ; Code: jne .L_424cd4	 RIP: 424cc9	 Bytes: 6
  %loadMem_424cc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424cc9 = call %struct.Memory* @routine_jne_.L_424cd4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424cc9, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_424cc9, %struct.Memory** %MEMORY

  %loadBr_424cc9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424cc9 = icmp eq i8 %loadBr_424cc9, 1
  br i1 %cmpBr_424cc9, label %block_.L_424cd4, label %block_424ccf

block_424ccf:
  ; Code: jmpq .L_424eb7	 RIP: 424ccf	 Bytes: 5
  %loadMem_424ccf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424ccf = call %struct.Memory* @routine_jmpq_.L_424eb7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424ccf, i64 488, i64 5)
  store %struct.Memory* %call_424ccf, %struct.Memory** %MEMORY

  br label %block_.L_424eb7

  ; Code: .L_424cd4:	 RIP: 424cd4	 Bytes: 0
block_.L_424cd4:

  ; Code: leaq -0x98(%rbp), %rdx	 RIP: 424cd4	 Bytes: 7
  %loadMem_424cd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424cd4 = call %struct.Memory* @routine_leaq_MINUS0x98__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424cd4)
  store %struct.Memory* %call_424cd4, %struct.Memory** %MEMORY

  ; Code: leaq -0x8c(%rbp), %rcx	 RIP: 424cdb	 Bytes: 7
  %loadMem_424cdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424cdb = call %struct.Memory* @routine_leaq_MINUS0x8c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424cdb)
  store %struct.Memory* %call_424cdb, %struct.Memory** %MEMORY

  ; Code: leaq -0xa8(%rbp), %r8	 RIP: 424ce2	 Bytes: 7
  %loadMem_424ce2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424ce2 = call %struct.Memory* @routine_leaq_MINUS0xa8__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424ce2)
  store %struct.Memory* %call_424ce2, %struct.Memory** %MEMORY

  ; Code: leaq -0xac(%rbp), %r9	 RIP: 424ce9	 Bytes: 7
  %loadMem_424ce9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424ce9 = call %struct.Memory* @routine_leaq_MINUS0xac__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424ce9)
  store %struct.Memory* %call_424ce9, %struct.Memory** %MEMORY

  ; Code: leaq -0xc8(%rbp), %rax	 RIP: 424cf0	 Bytes: 7
  %loadMem_424cf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424cf0 = call %struct.Memory* @routine_leaq_MINUS0xc8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424cf0)
  store %struct.Memory* %call_424cf0, %struct.Memory** %MEMORY

  ; Code: xorl %esi, %esi	 RIP: 424cf7	 Bytes: 2
  %loadMem_424cf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424cf7 = call %struct.Memory* @routine_xorl__esi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424cf7)
  store %struct.Memory* %call_424cf7, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edi	 RIP: 424cf9	 Bytes: 2
  %loadMem_424cf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424cf9 = call %struct.Memory* @routine_movl__esi___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424cf9)
  store %struct.Memory* %call_424cf9, %struct.Memory** %MEMORY

  ; Code: leaq -0xb0(%rbp), %r10	 RIP: 424cfb	 Bytes: 7
  %loadMem_424cfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424cfb = call %struct.Memory* @routine_leaq_MINUS0xb0__rbp____r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424cfb)
  store %struct.Memory* %call_424cfb, %struct.Memory** %MEMORY

  ; Code: leaq -0xb4(%rbp), %r11	 RIP: 424d02	 Bytes: 7
  %loadMem_424d02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424d02 = call %struct.Memory* @routine_leaq_MINUS0xb4__rbp____r11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424d02)
  store %struct.Memory* %call_424d02, %struct.Memory** %MEMORY

  ; Code: leaq -0xd4(%rbp), %rbx	 RIP: 424d09	 Bytes: 7
  %loadMem_424d09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424d09 = call %struct.Memory* @routine_leaq_MINUS0xd4__rbp____rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424d09)
  store %struct.Memory* %call_424d09, %struct.Memory** %MEMORY

  ; Code: leaq -0xb8(%rbp), %r14	 RIP: 424d10	 Bytes: 7
  %loadMem_424d10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424d10 = call %struct.Memory* @routine_leaq_MINUS0xb8__rbp____r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424d10)
  store %struct.Memory* %call_424d10, %struct.Memory** %MEMORY

  ; Code: leaq -0xbc(%rbp), %r15	 RIP: 424d17	 Bytes: 7
  %loadMem_424d17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424d17 = call %struct.Memory* @routine_leaq_MINUS0xbc__rbp____r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424d17)
  store %struct.Memory* %call_424d17, %struct.Memory** %MEMORY

  ; Code: leaq -0xe0(%rbp), %r12	 RIP: 424d1e	 Bytes: 7
  %loadMem_424d1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424d1e = call %struct.Memory* @routine_leaq_MINUS0xe0__rbp____r12(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424d1e)
  store %struct.Memory* %call_424d1e, %struct.Memory** %MEMORY

  ; Code: leaq -0xe4(%rbp), %r13	 RIP: 424d25	 Bytes: 7
  %loadMem_424d25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424d25 = call %struct.Memory* @routine_leaq_MINUS0xe4__rbp____r13(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424d25)
  store %struct.Memory* %call_424d25, %struct.Memory** %MEMORY

  ; Code: leaq -0x78(%rbp), %rsi	 RIP: 424d2c	 Bytes: 4
  %loadMem_424d2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424d2c = call %struct.Memory* @routine_leaq_MINUS0x78__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424d2c)
  store %struct.Memory* %call_424d2c, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x230(%rbp)	 RIP: 424d30	 Bytes: 7
  %loadMem_424d30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424d30 = call %struct.Memory* @routine_movq__rax__MINUS0x230__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424d30)
  store %struct.Memory* %call_424d30, %struct.Memory** %MEMORY

  ; Code: movq -0x88(%rbp), %rax	 RIP: 424d37	 Bytes: 7
  %loadMem_424d37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424d37 = call %struct.Memory* @routine_movq_MINUS0x88__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424d37)
  store %struct.Memory* %call_424d37, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x238(%rbp)	 RIP: 424d3e	 Bytes: 7
  %loadMem_424d3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424d3e = call %struct.Memory* @routine_movq__rsi__MINUS0x238__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424d3e)
  store %struct.Memory* %call_424d3e, %struct.Memory** %MEMORY

  ; Code: movl -0x60(%rbp), %esi	 RIP: 424d45	 Bytes: 3
  %loadMem_424d45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424d45 = call %struct.Memory* @routine_movl_MINUS0x60__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424d45)
  store %struct.Memory* %call_424d45, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x240(%rbp)	 RIP: 424d48	 Bytes: 7
  %loadMem_424d48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424d48 = call %struct.Memory* @routine_movq__rdi__MINUS0x240__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424d48)
  store %struct.Memory* %call_424d48, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 424d4f	 Bytes: 3
  %loadMem_424d4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424d4f = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424d4f)
  store %struct.Memory* %call_424d4f, %struct.Memory** %MEMORY

  ; Code: movq -0x230(%rbp), %rax	 RIP: 424d52	 Bytes: 7
  %loadMem_424d52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424d52 = call %struct.Memory* @routine_movq_MINUS0x230__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424d52)
  store %struct.Memory* %call_424d52, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rsp)	 RIP: 424d59	 Bytes: 4
  %loadMem_424d59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424d59 = call %struct.Memory* @routine_movq__rax____rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424d59)
  store %struct.Memory* %call_424d59, %struct.Memory** %MEMORY

  ; Code: movq $0x0, 0x8(%rsp)	 RIP: 424d5d	 Bytes: 9
  %loadMem_424d5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424d5d = call %struct.Memory* @routine_movq__0x0__0x8__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424d5d)
  store %struct.Memory* %call_424d5d, %struct.Memory** %MEMORY

  ; Code: movq $0x0, 0x10(%rsp)	 RIP: 424d66	 Bytes: 9
  %loadMem_424d66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424d66 = call %struct.Memory* @routine_movq__0x0__0x10__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424d66)
  store %struct.Memory* %call_424d66, %struct.Memory** %MEMORY

  ; Code: movq %r10, 0x18(%rsp)	 RIP: 424d6f	 Bytes: 5
  %loadMem_424d6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424d6f = call %struct.Memory* @routine_movq__r10__0x18__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424d6f)
  store %struct.Memory* %call_424d6f, %struct.Memory** %MEMORY

  ; Code: movq %r11, 0x20(%rsp)	 RIP: 424d74	 Bytes: 5
  %loadMem_424d74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424d74 = call %struct.Memory* @routine_movq__r11__0x20__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424d74)
  store %struct.Memory* %call_424d74, %struct.Memory** %MEMORY

  ; Code: movq %rbx, 0x28(%rsp)	 RIP: 424d79	 Bytes: 5
  %loadMem_424d79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424d79 = call %struct.Memory* @routine_movq__rbx__0x28__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424d79)
  store %struct.Memory* %call_424d79, %struct.Memory** %MEMORY

  ; Code: movq %r14, 0x30(%rsp)	 RIP: 424d7e	 Bytes: 5
  %loadMem_424d7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424d7e = call %struct.Memory* @routine_movq__r14__0x30__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424d7e)
  store %struct.Memory* %call_424d7e, %struct.Memory** %MEMORY

  ; Code: movq %r15, 0x38(%rsp)	 RIP: 424d83	 Bytes: 5
  %loadMem_424d83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424d83 = call %struct.Memory* @routine_movq__r15__0x38__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424d83)
  store %struct.Memory* %call_424d83, %struct.Memory** %MEMORY

  ; Code: movq $0x0, 0x40(%rsp)	 RIP: 424d88	 Bytes: 9
  %loadMem_424d88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424d88 = call %struct.Memory* @routine_movq__0x0__0x40__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424d88)
  store %struct.Memory* %call_424d88, %struct.Memory** %MEMORY

  ; Code: movq %r12, 0x48(%rsp)	 RIP: 424d91	 Bytes: 5
  %loadMem_424d91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424d91 = call %struct.Memory* @routine_movq__r12__0x48__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424d91)
  store %struct.Memory* %call_424d91, %struct.Memory** %MEMORY

  ; Code: movq %r13, 0x50(%rsp)	 RIP: 424d96	 Bytes: 5
  %loadMem_424d96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424d96 = call %struct.Memory* @routine_movq__r13__0x50__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424d96)
  store %struct.Memory* %call_424d96, %struct.Memory** %MEMORY

  ; Code: movq -0x238(%rbp), %r10	 RIP: 424d9b	 Bytes: 7
  %loadMem_424d9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424d9b = call %struct.Memory* @routine_movq_MINUS0x238__rbp____r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424d9b)
  store %struct.Memory* %call_424d9b, %struct.Memory** %MEMORY

  ; Code: movq %r10, 0x58(%rsp)	 RIP: 424da2	 Bytes: 5
  %loadMem_424da2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424da2 = call %struct.Memory* @routine_movq__r10__0x58__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424da2)
  store %struct.Memory* %call_424da2, %struct.Memory** %MEMORY

  ; Code: callq .GetRankedHit	 RIP: 424da7	 Bytes: 5
  %loadMem1_424da7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_424da7 = call %struct.Memory* @routine_callq_.GetRankedHit(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_424da7, i64 163545, i64 5, i64 5)
  store %struct.Memory* %call1_424da7, %struct.Memory** %MEMORY

  %loadMem2_424da7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424da7 = load i64, i64* %3
  %call2_424da7 = call %struct.Memory* @sub_44cc80.GetRankedHit(%struct.State* %0, i64  %loadPC_424da7, %struct.Memory* %loadMem2_424da7)
  store %struct.Memory* %call2_424da7, %struct.Memory** %MEMORY

  ; Code: movsd -0x98(%rbp), %xmm0	 RIP: 424dac	 Bytes: 8
  %loadMem_424dac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424dac = call %struct.Memory* @routine_movsd_MINUS0x98__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424dac)
  store %struct.Memory* %call_424dac, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl -0xfc(%rbp), %xmm1	 RIP: 424db4	 Bytes: 8
  %loadMem_424db4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424db4 = call %struct.Memory* @routine_cvtsi2sdl_MINUS0xfc__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424db4)
  store %struct.Memory* %call_424db4, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm1, %xmm0	 RIP: 424dbc	 Bytes: 4
  %loadMem_424dbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424dbc = call %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424dbc)
  store %struct.Memory* %call_424dbc, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0xa0(%rbp)	 RIP: 424dc0	 Bytes: 8
  %loadMem_424dc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424dc0 = call %struct.Memory* @routine_movsd__xmm0__MINUS0xa0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424dc0)
  store %struct.Memory* %call_424dc0, %struct.Memory** %MEMORY

  ; Code: movsd -0xa8(%rbp), %xmm0	 RIP: 424dc8	 Bytes: 8
  %loadMem_424dc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424dc8 = call %struct.Memory* @routine_movsd_MINUS0xa8__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424dc8)
  store %struct.Memory* %call_424dc8, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl -0xfc(%rbp), %xmm1	 RIP: 424dd0	 Bytes: 8
  %loadMem_424dd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424dd0 = call %struct.Memory* @routine_cvtsi2sdl_MINUS0xfc__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424dd0)
  store %struct.Memory* %call_424dd0, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm1, %xmm0	 RIP: 424dd8	 Bytes: 4
  %loadMem_424dd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424dd8 = call %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424dd8)
  store %struct.Memory* %call_424dd8, %struct.Memory** %MEMORY

  ; Code: ucomisd -0x118(%rbp), %xmm0	 RIP: 424ddc	 Bytes: 8
  %loadMem_424ddc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424ddc = call %struct.Memory* @routine_ucomisd_MINUS0x118__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424ddc)
  store %struct.Memory* %call_424ddc, %struct.Memory** %MEMORY

  ; Code: ja .L_424e03	 RIP: 424de4	 Bytes: 6
  %loadMem_424de4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424de4 = call %struct.Memory* @routine_ja_.L_424e03(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424de4, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_424de4, %struct.Memory** %MEMORY

  %loadBr_424de4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424de4 = icmp eq i8 %loadBr_424de4, 1
  br i1 %cmpBr_424de4, label %block_.L_424e03, label %block_424dea

block_424dea:
  ; Code: movss -0xac(%rbp), %xmm0	 RIP: 424dea	 Bytes: 8
  %loadMem_424dea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424dea = call %struct.Memory* @routine_movss_MINUS0xac__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424dea)
  store %struct.Memory* %call_424dea, %struct.Memory** %MEMORY

  ; Code: movss -0x120(%rbp), %xmm1	 RIP: 424df2	 Bytes: 8
  %loadMem_424df2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424df2 = call %struct.Memory* @routine_movss_MINUS0x120__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424df2)
  store %struct.Memory* %call_424df2, %struct.Memory** %MEMORY

  ; Code: ucomiss %xmm0, %xmm1	 RIP: 424dfa	 Bytes: 3
  %loadMem_424dfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424dfa = call %struct.Memory* @routine_ucomiss__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424dfa)
  store %struct.Memory* %call_424dfa, %struct.Memory** %MEMORY

  ; Code: jbe .L_424e08	 RIP: 424dfd	 Bytes: 6
  %loadMem_424dfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424dfd = call %struct.Memory* @routine_jbe_.L_424e08(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424dfd, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_424dfd, %struct.Memory** %MEMORY

  %loadBr_424dfd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424dfd = icmp eq i8 %loadBr_424dfd, 1
  br i1 %cmpBr_424dfd, label %block_.L_424e08, label %block_.L_424e03

  ; Code: .L_424e03:	 RIP: 424e03	 Bytes: 0
block_.L_424e03:

  ; Code: jmpq .L_424ea9	 RIP: 424e03	 Bytes: 5
  %loadMem_424e03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424e03 = call %struct.Memory* @routine_jmpq_.L_424ea9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424e03, i64 166, i64 5)
  store %struct.Memory* %call_424e03, %struct.Memory** %MEMORY

  br label %block_.L_424ea9

  ; Code: .L_424e08:	 RIP: 424e08	 Bytes: 0
block_.L_424e08:

  ; Code: movsd -0xa0(%rbp), %xmm0	 RIP: 424e08	 Bytes: 8
  %loadMem_424e08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424e08 = call %struct.Memory* @routine_movsd_MINUS0xa0__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424e08)
  store %struct.Memory* %call_424e08, %struct.Memory** %MEMORY

  ; Code: movsd -0x108(%rbp), %xmm1	 RIP: 424e10	 Bytes: 8
  %loadMem_424e10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424e10 = call %struct.Memory* @routine_movsd_MINUS0x108__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424e10)
  store %struct.Memory* %call_424e10, %struct.Memory** %MEMORY

  ; Code: ucomisd %xmm0, %xmm1	 RIP: 424e18	 Bytes: 4
  %loadMem_424e18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424e18 = call %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424e18)
  store %struct.Memory* %call_424e18, %struct.Memory** %MEMORY

  ; Code: jb .L_424e9f	 RIP: 424e1c	 Bytes: 6
  %loadMem_424e1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424e1c = call %struct.Memory* @routine_jb_.L_424e9f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424e1c, i8* %BRANCH_TAKEN, i64 131, i64 6, i64 6)
  store %struct.Memory* %call_424e1c, %struct.Memory** %MEMORY

  %loadBr_424e1c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424e1c = icmp eq i8 %loadBr_424e1c, 1
  br i1 %cmpBr_424e1c, label %block_.L_424e9f, label %block_424e22

block_424e22:
  ; Code: movss -0x8c(%rbp), %xmm0	 RIP: 424e22	 Bytes: 8
  %loadMem_424e22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424e22 = call %struct.Memory* @routine_movss_MINUS0x8c__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424e22)
  store %struct.Memory* %call_424e22, %struct.Memory** %MEMORY

  ; Code: ucomiss -0x110(%rbp), %xmm0	 RIP: 424e2a	 Bytes: 7
  %loadMem_424e2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424e2a = call %struct.Memory* @routine_ucomiss_MINUS0x110__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424e2a)
  store %struct.Memory* %call_424e2a, %struct.Memory** %MEMORY

  ; Code: jb .L_424e9f	 RIP: 424e31	 Bytes: 6
  %loadMem_424e31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424e31 = call %struct.Memory* @routine_jb_.L_424e9f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424e31, i8* %BRANCH_TAKEN, i64 110, i64 6, i64 6)
  store %struct.Memory* %call_424e31, %struct.Memory** %MEMORY

  %loadBr_424e31 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424e31 = icmp eq i8 %loadBr_424e31, 1
  br i1 %cmpBr_424e31, label %block_.L_424e9f, label %block_424e37

block_424e37:
  ; Code: movq $0x457fce, %rdi	 RIP: 424e37	 Bytes: 10
  %loadMem_424e37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424e37 = call %struct.Memory* @routine_movq__0x457fce___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424e37)
  store %struct.Memory* %call_424e37, %struct.Memory** %MEMORY

  ; Code: movq -0xc8(%rbp), %rsi	 RIP: 424e41	 Bytes: 7
  %loadMem_424e41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424e41 = call %struct.Memory* @routine_movq_MINUS0xc8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424e41)
  store %struct.Memory* %call_424e41, %struct.Memory** %MEMORY

  ; Code: movl -0xe0(%rbp), %edx	 RIP: 424e48	 Bytes: 6
  %loadMem_424e48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424e48 = call %struct.Memory* @routine_movl_MINUS0xe0__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424e48)
  store %struct.Memory* %call_424e48, %struct.Memory** %MEMORY

  ; Code: movl -0xe4(%rbp), %ecx	 RIP: 424e4e	 Bytes: 6
  %loadMem_424e4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424e4e = call %struct.Memory* @routine_movl_MINUS0xe4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424e4e)
  store %struct.Memory* %call_424e4e, %struct.Memory** %MEMORY

  ; Code: movl -0xb0(%rbp), %r8d	 RIP: 424e54	 Bytes: 7
  %loadMem_424e54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424e54 = call %struct.Memory* @routine_movl_MINUS0xb0__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424e54)
  store %struct.Memory* %call_424e54, %struct.Memory** %MEMORY

  ; Code: movl -0xb4(%rbp), %r9d	 RIP: 424e5b	 Bytes: 7
  %loadMem_424e5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424e5b = call %struct.Memory* @routine_movl_MINUS0xb4__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424e5b)
  store %struct.Memory* %call_424e5b, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x8c(%rbp), %xmm0	 RIP: 424e62	 Bytes: 8
  %loadMem_424e62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424e62 = call %struct.Memory* @routine_cvtss2sd_MINUS0x8c__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424e62)
  store %struct.Memory* %call_424e62, %struct.Memory** %MEMORY

  ; Code: movsd -0xa0(%rbp), %xmm1	 RIP: 424e6a	 Bytes: 8
  %loadMem_424e6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424e6a = call %struct.Memory* @routine_movsd_MINUS0xa0__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424e6a)
  store %struct.Memory* %call_424e6a, %struct.Memory** %MEMORY

  ; Code: movb $0x2, %al	 RIP: 424e72	 Bytes: 2
  %loadMem_424e72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424e72 = call %struct.Memory* @routine_movb__0x2___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424e72)
  store %struct.Memory* %call_424e72, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 424e74	 Bytes: 5
  %loadMem1_424e74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_424e74 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_424e74, i64 -145892, i64 5, i64 5)
  store %struct.Memory* %call1_424e74, %struct.Memory** %MEMORY

  %loadMem2_424e74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424e74 = load i64, i64* %3
  %call2_424e74 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_424e74, %struct.Memory* %loadMem2_424e74)
  store %struct.Memory* %call2_424e74, %struct.Memory** %MEMORY

  ; Code: movq 0x663040, %rdi	 RIP: 424e79	 Bytes: 8
  %loadMem_424e79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424e79 = call %struct.Memory* @routine_movq_0x663040___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424e79)
  store %struct.Memory* %call_424e79, %struct.Memory** %MEMORY

  ; Code: movq -0x78(%rbp), %rsi	 RIP: 424e81	 Bytes: 4
  %loadMem_424e81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424e81 = call %struct.Memory* @routine_movq_MINUS0x78__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424e81)
  store %struct.Memory* %call_424e81, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x244(%rbp)	 RIP: 424e85	 Bytes: 6
  %loadMem_424e85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424e85 = call %struct.Memory* @routine_movl__eax__MINUS0x244__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424e85)
  store %struct.Memory* %call_424e85, %struct.Memory** %MEMORY

  ; Code: callq .PrintFancyAli	 RIP: 424e8b	 Bytes: 5
  %loadMem1_424e8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_424e8b = call %struct.Memory* @routine_callq_.PrintFancyAli(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_424e8b, i64 176309, i64 5, i64 5)
  store %struct.Memory* %call1_424e8b, %struct.Memory** %MEMORY

  %loadMem2_424e8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424e8b = load i64, i64* %3
  %call2_424e8b = call %struct.Memory* @sub_44ff40.PrintFancyAli(%struct.State* %0, i64  %loadPC_424e8b, %struct.Memory* %loadMem2_424e8b)
  store %struct.Memory* %call2_424e8b, %struct.Memory** %MEMORY

  ; Code: movl -0xf0(%rbp), %eax	 RIP: 424e90	 Bytes: 6
  %loadMem_424e90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424e90 = call %struct.Memory* @routine_movl_MINUS0xf0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424e90)
  store %struct.Memory* %call_424e90, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 424e96	 Bytes: 3
  %loadMem_424e96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424e96 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424e96)
  store %struct.Memory* %call_424e96, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xf0(%rbp)	 RIP: 424e99	 Bytes: 6
  %loadMem_424e99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424e99 = call %struct.Memory* @routine_movl__eax__MINUS0xf0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424e99)
  store %struct.Memory* %call_424e99, %struct.Memory** %MEMORY

  ; Code: .L_424e9f:	 RIP: 424e9f	 Bytes: 0
  br label %block_.L_424e9f
block_.L_424e9f:

  ; Code: jmpq .L_424ea4	 RIP: 424e9f	 Bytes: 5
  %loadMem_424e9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424e9f = call %struct.Memory* @routine_jmpq_.L_424ea4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424e9f, i64 5, i64 5)
  store %struct.Memory* %call_424e9f, %struct.Memory** %MEMORY

  br label %block_.L_424ea4

  ; Code: .L_424ea4:	 RIP: 424ea4	 Bytes: 0
block_.L_424ea4:

  ; Code: jmpq .L_424ea9	 RIP: 424ea4	 Bytes: 5
  %loadMem_424ea4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424ea4 = call %struct.Memory* @routine_jmpq_.L_424ea9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424ea4, i64 5, i64 5)
  store %struct.Memory* %call_424ea4, %struct.Memory** %MEMORY

  br label %block_.L_424ea9

  ; Code: .L_424ea9:	 RIP: 424ea9	 Bytes: 0
block_.L_424ea9:

  ; Code: movl -0x60(%rbp), %eax	 RIP: 424ea9	 Bytes: 3
  %loadMem_424ea9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424ea9 = call %struct.Memory* @routine_movl_MINUS0x60__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424ea9)
  store %struct.Memory* %call_424ea9, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 424eac	 Bytes: 3
  %loadMem_424eac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424eac = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424eac)
  store %struct.Memory* %call_424eac, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x60(%rbp)	 RIP: 424eaf	 Bytes: 3
  %loadMem_424eaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424eaf = call %struct.Memory* @routine_movl__eax__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424eaf)
  store %struct.Memory* %call_424eaf, %struct.Memory** %MEMORY

  ; Code: jmpq .L_424caa	 RIP: 424eb2	 Bytes: 5
  %loadMem_424eb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424eb2 = call %struct.Memory* @routine_jmpq_.L_424caa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424eb2, i64 -520, i64 5)
  store %struct.Memory* %call_424eb2, %struct.Memory** %MEMORY

  br label %block_.L_424caa

  ; Code: .L_424eb7:	 RIP: 424eb7	 Bytes: 0
block_.L_424eb7:

  ; Code: cmpl $0x0, -0xf0(%rbp)	 RIP: 424eb7	 Bytes: 7
  %loadMem_424eb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424eb7 = call %struct.Memory* @routine_cmpl__0x0__MINUS0xf0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424eb7)
  store %struct.Memory* %call_424eb7, %struct.Memory** %MEMORY

  ; Code: jne .L_424edb	 RIP: 424ebe	 Bytes: 6
  %loadMem_424ebe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424ebe = call %struct.Memory* @routine_jne_.L_424edb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424ebe, i8* %BRANCH_TAKEN, i64 29, i64 6, i64 6)
  store %struct.Memory* %call_424ebe, %struct.Memory** %MEMORY

  %loadBr_424ebe = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424ebe = icmp eq i8 %loadBr_424ebe, 1
  br i1 %cmpBr_424ebe, label %block_.L_424edb, label %block_424ec4

block_424ec4:
  ; Code: movq $0x458008, %rdi	 RIP: 424ec4	 Bytes: 10
  %loadMem_424ec4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424ec4 = call %struct.Memory* @routine_movq__0x458008___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424ec4)
  store %struct.Memory* %call_424ec4, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 424ece	 Bytes: 2
  %loadMem_424ece = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424ece = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424ece)
  store %struct.Memory* %call_424ece, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 424ed0	 Bytes: 5
  %loadMem1_424ed0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_424ed0 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_424ed0, i64 -145984, i64 5, i64 5)
  store %struct.Memory* %call1_424ed0, %struct.Memory** %MEMORY

  %loadMem2_424ed0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424ed0 = load i64, i64* %3
  %call2_424ed0 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_424ed0, %struct.Memory* %loadMem2_424ed0)
  store %struct.Memory* %call2_424ed0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x248(%rbp)	 RIP: 424ed5	 Bytes: 6
  %loadMem_424ed5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424ed5 = call %struct.Memory* @routine_movl__eax__MINUS0x248__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424ed5)
  store %struct.Memory* %call_424ed5, %struct.Memory** %MEMORY

  ; Code: .L_424edb:	 RIP: 424edb	 Bytes: 0
  br label %block_.L_424edb
block_.L_424edb:

  ; Code: movl -0xf0(%rbp), %eax	 RIP: 424edb	 Bytes: 6
  %loadMem_424edb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424edb = call %struct.Memory* @routine_movl_MINUS0xf0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424edb)
  store %struct.Memory* %call_424edb, %struct.Memory** %MEMORY

  ; Code: cmpl -0xf4(%rbp), %eax	 RIP: 424ee1	 Bytes: 6
  %loadMem_424ee1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424ee1 = call %struct.Memory* @routine_cmpl_MINUS0xf4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424ee1)
  store %struct.Memory* %call_424ee1, %struct.Memory** %MEMORY

  ; Code: jne .L_424f0a	 RIP: 424ee7	 Bytes: 6
  %loadMem_424ee7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424ee7 = call %struct.Memory* @routine_jne_.L_424f0a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424ee7, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_424ee7, %struct.Memory** %MEMORY

  %loadBr_424ee7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424ee7 = icmp eq i8 %loadBr_424ee7, 1
  br i1 %cmpBr_424ee7, label %block_.L_424f0a, label %block_424eed

block_424eed:
  ; Code: movq $0x458025, %rdi	 RIP: 424eed	 Bytes: 10
  %loadMem_424eed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424eed = call %struct.Memory* @routine_movq__0x458025___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424eed)
  store %struct.Memory* %call_424eed, %struct.Memory** %MEMORY

  ; Code: movl -0xf4(%rbp), %esi	 RIP: 424ef7	 Bytes: 6
  %loadMem_424ef7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424ef7 = call %struct.Memory* @routine_movl_MINUS0xf4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424ef7)
  store %struct.Memory* %call_424ef7, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 424efd	 Bytes: 2
  %loadMem_424efd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424efd = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424efd)
  store %struct.Memory* %call_424efd, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 424eff	 Bytes: 5
  %loadMem1_424eff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_424eff = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_424eff, i64 -146031, i64 5, i64 5)
  store %struct.Memory* %call1_424eff, %struct.Memory** %MEMORY

  %loadMem2_424eff = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424eff = load i64, i64* %3
  %call2_424eff = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_424eff, %struct.Memory* %loadMem2_424eff)
  store %struct.Memory* %call2_424eff, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24c(%rbp)	 RIP: 424f04	 Bytes: 6
  %loadMem_424f04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424f04 = call %struct.Memory* @routine_movl__eax__MINUS0x24c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424f04)
  store %struct.Memory* %call_424f04, %struct.Memory** %MEMORY

  ; Code: .L_424f0a:	 RIP: 424f0a	 Bytes: 0
  br label %block_.L_424f0a
block_.L_424f0a:

  ; Code: jmpq .L_424f0f	 RIP: 424f0a	 Bytes: 5
  %loadMem_424f0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424f0a = call %struct.Memory* @routine_jmpq_.L_424f0f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424f0a, i64 5, i64 5)
  store %struct.Memory* %call_424f0a, %struct.Memory** %MEMORY

  br label %block_.L_424f0f

  ; Code: .L_424f0f:	 RIP: 424f0f	 Bytes: 0
block_.L_424f0f:

  ; Code: movq $0x458051, %rdi	 RIP: 424f0f	 Bytes: 10
  %loadMem_424f0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424f0f = call %struct.Memory* @routine_movq__0x458051___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424f0f)
  store %struct.Memory* %call_424f0f, %struct.Memory** %MEMORY

  ; Code: movl -0xd8(%rbp), %esi	 RIP: 424f19	 Bytes: 6
  %loadMem_424f19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424f19 = call %struct.Memory* @routine_movl_MINUS0xd8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424f19)
  store %struct.Memory* %call_424f19, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 424f1f	 Bytes: 2
  %loadMem_424f1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424f1f = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424f1f)
  store %struct.Memory* %call_424f1f, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 424f21	 Bytes: 5
  %loadMem1_424f21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_424f21 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_424f21, i64 -146065, i64 5, i64 5)
  store %struct.Memory* %call1_424f21, %struct.Memory** %MEMORY

  %loadMem2_424f21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424f21 = load i64, i64* %3
  %call2_424f21 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_424f21, %struct.Memory* %loadMem2_424f21)
  store %struct.Memory* %call2_424f21, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rdi	 RIP: 424f26	 Bytes: 4
  %loadMem_424f26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424f26 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424f26)
  store %struct.Memory* %call_424f26, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x250(%rbp)	 RIP: 424f2a	 Bytes: 6
  %loadMem_424f2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424f2a = call %struct.Memory* @routine_movl__eax__MINUS0x250__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424f2a)
  store %struct.Memory* %call_424f2a, %struct.Memory** %MEMORY

  ; Code: callq .FreeHistogram	 RIP: 424f30	 Bytes: 5
  %loadMem1_424f30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_424f30 = call %struct.Memory* @routine_callq_.FreeHistogram(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_424f30, i64 -51232, i64 5, i64 5)
  store %struct.Memory* %call1_424f30, %struct.Memory** %MEMORY

  %loadMem2_424f30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424f30 = load i64, i64* %3
  %call2_424f30 = call %struct.Memory* @sub_418710.FreeHistogram(%struct.State* %0, i64  %loadPC_424f30, %struct.Memory* %loadMem2_424f30)
  store %struct.Memory* %call2_424f30, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rdi	 RIP: 424f35	 Bytes: 4
  %loadMem_424f35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424f35 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424f35)
  store %struct.Memory* %call_424f35, %struct.Memory** %MEMORY

  ; Code: callq .HMMFileClose	 RIP: 424f39	 Bytes: 5
  %loadMem1_424f39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_424f39 = call %struct.Memory* @routine_callq_.HMMFileClose(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_424f39, i64 -32313, i64 5, i64 5)
  store %struct.Memory* %call1_424f39, %struct.Memory** %MEMORY

  %loadMem2_424f39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424f39 = load i64, i64* %3
  %call2_424f39 = call %struct.Memory* @sub_41d100.HMMFileClose(%struct.State* %0, i64  %loadPC_424f39, %struct.Memory* %loadMem2_424f39)
  store %struct.Memory* %call2_424f39, %struct.Memory** %MEMORY

  ; Code: movq -0x58(%rbp), %rdi	 RIP: 424f3e	 Bytes: 4
  %loadMem_424f3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424f3e = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424f3e)
  store %struct.Memory* %call_424f3e, %struct.Memory** %MEMORY

  ; Code: callq .SeqfileClose	 RIP: 424f42	 Bytes: 5
  %loadMem1_424f42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_424f42 = call %struct.Memory* @routine_callq_.SeqfileClose(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_424f42, i64 110110, i64 5, i64 5)
  store %struct.Memory* %call1_424f42, %struct.Memory** %MEMORY

  %loadMem2_424f42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424f42 = load i64, i64* %3
  %call2_424f42 = call %struct.Memory* @sub_43fd60.SeqfileClose(%struct.State* %0, i64  %loadPC_424f42, %struct.Memory* %loadMem2_424f42)
  store %struct.Memory* %call2_424f42, %struct.Memory** %MEMORY

  ; Code: movq -0x80(%rbp), %rdi	 RIP: 424f47	 Bytes: 4
  %loadMem_424f47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424f47 = call %struct.Memory* @routine_movq_MINUS0x80__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424f47)
  store %struct.Memory* %call_424f47, %struct.Memory** %MEMORY

  ; Code: callq .FreeTophits	 RIP: 424f4b	 Bytes: 5
  %loadMem1_424f4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_424f4b = call %struct.Memory* @routine_callq_.FreeTophits(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_424f4b, i64 161637, i64 5, i64 5)
  store %struct.Memory* %call1_424f4b, %struct.Memory** %MEMORY

  %loadMem2_424f4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424f4b = load i64, i64* %3
  %call2_424f4b = call %struct.Memory* @sub_44c6b0.FreeTophits(%struct.State* %0, i64  %loadPC_424f4b, %struct.Memory* %loadMem2_424f4b)
  store %struct.Memory* %call2_424f4b, %struct.Memory** %MEMORY

  ; Code: movq -0x88(%rbp), %rdi	 RIP: 424f50	 Bytes: 7
  %loadMem_424f50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424f50 = call %struct.Memory* @routine_movq_MINUS0x88__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424f50)
  store %struct.Memory* %call_424f50, %struct.Memory** %MEMORY

  ; Code: callq .FreeTophits	 RIP: 424f57	 Bytes: 5
  %loadMem1_424f57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_424f57 = call %struct.Memory* @routine_callq_.FreeTophits(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_424f57, i64 161625, i64 5, i64 5)
  store %struct.Memory* %call1_424f57, %struct.Memory** %MEMORY

  %loadMem2_424f57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424f57 = load i64, i64* %3
  %call2_424f57 = call %struct.Memory* @sub_44c6b0.FreeTophits(%struct.State* %0, i64  %loadPC_424f57, %struct.Memory* %loadMem2_424f57)
  store %struct.Memory* %call2_424f57, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rdi	 RIP: 424f5c	 Bytes: 4
  %loadMem_424f5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424f5c = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424f5c)
  store %struct.Memory* %call_424f5c, %struct.Memory** %MEMORY

  ; Code: callq .FreePlan7	 RIP: 424f60	 Bytes: 5
  %loadMem1_424f60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_424f60 = call %struct.Memory* @routine_callq_.FreePlan7(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_424f60, i64 54896, i64 5, i64 5)
  store %struct.Memory* %call1_424f60, %struct.Memory** %MEMORY

  %loadMem2_424f60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424f60 = load i64, i64* %3
  %call2_424f60 = call %struct.Memory* @sub_4325d0.FreePlan7(%struct.State* %0, i64  %loadPC_424f60, %struct.Memory* %loadMem2_424f60)
  store %struct.Memory* %call2_424f60, %struct.Memory** %MEMORY

  ; Code: callq .SqdClean	 RIP: 424f65	 Bytes: 5
  %loadMem1_424f65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_424f65 = call %struct.Memory* @routine_callq_.SqdClean(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_424f65, i64 9339, i64 5, i64 5)
  store %struct.Memory* %call1_424f65, %struct.Memory** %MEMORY

  %loadMem2_424f65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424f65 = load i64, i64* %3
  %call2_424f65 = call %struct.Memory* @sub_4273e0.SqdClean(%struct.State* %0, i64  %loadPC_424f65, %struct.Memory* %loadMem2_424f65)
  store %struct.Memory* %call2_424f65, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x2c(%rbp)	 RIP: 424f6a	 Bytes: 7
  %loadMem_424f6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424f6a = call %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424f6a)
  store %struct.Memory* %call_424f6a, %struct.Memory** %MEMORY

  ; Code: .L_424f71:	 RIP: 424f71	 Bytes: 0
  br label %block_.L_424f71
block_.L_424f71:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 424f71	 Bytes: 3
  %loadMem_424f71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424f71 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424f71)
  store %struct.Memory* %call_424f71, %struct.Memory** %MEMORY

  ; Code: addq $0x288, %rsp	 RIP: 424f74	 Bytes: 7
  %loadMem_424f74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424f74 = call %struct.Memory* @routine_addq__0x288___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424f74)
  store %struct.Memory* %call_424f74, %struct.Memory** %MEMORY

  ; Code: popq %rbx	 RIP: 424f7b	 Bytes: 1
  %loadMem_424f7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424f7b = call %struct.Memory* @routine_popq__rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424f7b)
  store %struct.Memory* %call_424f7b, %struct.Memory** %MEMORY

  ; Code: popq %r12	 RIP: 424f7c	 Bytes: 2
  %loadMem_424f7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424f7c = call %struct.Memory* @routine_popq__r12(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424f7c)
  store %struct.Memory* %call_424f7c, %struct.Memory** %MEMORY

  ; Code: popq %r13	 RIP: 424f7e	 Bytes: 2
  %loadMem_424f7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424f7e = call %struct.Memory* @routine_popq__r13(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424f7e)
  store %struct.Memory* %call_424f7e, %struct.Memory** %MEMORY

  ; Code: popq %r14	 RIP: 424f80	 Bytes: 2
  %loadMem_424f80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424f80 = call %struct.Memory* @routine_popq__r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424f80)
  store %struct.Memory* %call_424f80, %struct.Memory** %MEMORY

  ; Code: popq %r15	 RIP: 424f82	 Bytes: 2
  %loadMem_424f82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424f82 = call %struct.Memory* @routine_popq__r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424f82)
  store %struct.Memory* %call_424f82, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 424f84	 Bytes: 1
  %loadMem_424f84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424f84 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424f84)
  store %struct.Memory* %call_424f84, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 424f85	 Bytes: 1
  %loadMem_424f85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424f85 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424f85)
  store %struct.Memory* %call_424f85, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_424f85
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


define %struct.Memory* @routine_pushq__r15(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 31
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R15 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R15
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4PUSHI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_pushq__r14(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 29
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R14 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R14
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4PUSHI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_pushq__r13(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 27
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R13 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R13
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4PUSHI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_pushq__r12(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 25
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R12 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R12
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4PUSHI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_pushq__rbx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RBX
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 1
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4PUSHI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %9)
  ret %struct.Memory* %12
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

define %struct.Memory* @routine_subq__0x288___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 648)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 44
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__edi__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 48
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

define %struct.Memory* @routine_movq__rsi__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_cmpl__0x3__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 48
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
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

define %struct.Memory* @routine_je_.L_423cd0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq_MINUS0x38__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
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

define %struct.Memory* @routine_callq_.hmmcalibrate(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 44
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

define %struct.Memory* @routine_jmpq_.L_424f71(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsd_0x30bc0__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x30bc0__rip__type* @G_0x30bc0__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_movss_0x30a84__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x30a84__rip__type* @G_0x30a84__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movsd_0x30bb8__rip____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x30bb8__rip__type* @G_0x30bb8__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x5c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 92
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x13c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 316
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x1__MINUS0x138__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 312
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x140__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 320
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x144__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 324
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0xdc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 220
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x148__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 328
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x154__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 340
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x150__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 336
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x14c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 332
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x7fffffff__MINUS0xf4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 244
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2147483647)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i8* nocapture readonly) #7 {
  %5 = bitcast i8* %3 to double*
  %6 = load double, double* %5, align 1
  %7 = inttoptr i64 %2 to double*
  store double %6, double* %7
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movsd__xmm2__MINUS0x118__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 280
  %13 = bitcast %union.vec128_t* %XMM2 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i8* nocapture readonly) #7 {
  %5 = bitcast i8* %3 to <2 x float>*
  %6 = load <2 x float>, <2 x float>* %5, align 1
  %7 = extractelement <2 x float> %6, i32 0
  %8 = inttoptr i64 %2 to float*
  store float %7, float* %8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movss__xmm1__MINUS0x120__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 288
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movss__xmm1__MINUS0x110__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 272
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd__xmm0__MINUS0x108__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 264
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__0x0__MINUS0x100__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 256
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0xfc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 252
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x661560___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x661560_type* @G__0x661560 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x11___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 17)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x661670___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 ptrtoint( %G__0x661670_type* @G__0x661670 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_leaq_MINUS0x134__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 308
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x128__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 296
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x130__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 304
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq_MINUS0x38__rbp____r10(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R10, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rsi__MINUS0x160__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 352
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r10___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R10
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movq__rax____rsp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = load i64, i64* %RAX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x160__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 352
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax__0x8__rsp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = add i64 %12, 8
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_callq_.Getopt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_je_.L_4241bc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq_MINUS0x128__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 296
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__0x457b4b___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x457b4b_type* @G__0x457b4b to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__eax___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_jne_.L_423e17(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq_MINUS0x130__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 304
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.atoi_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__eax__MINUS0xf4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 244
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4241b7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0x457b4e___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x457b4e_type* @G__0x457b4e to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_jne_.L_423e4c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_callq_.atof_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movsd__xmm0__MINUS0x118__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 280
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jmpq_.L_4241b2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0x457b51___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x457b51_type* @G__0x457b51 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_jne_.L_423e85(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movss__xmm0__MINUS0x120__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 288
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jmpq_.L_4241ad(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0x457b54___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x457b54_type* @G__0x457b54 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_jne_.L_423eb8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






define %struct.Memory* @routine_movl__eax__MINUS0xfc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 252
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4241a8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0x457b57___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x457b57_type* @G__0x457b57 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_jne_.L_423ee3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x1__MINUS0x148__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 328
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_4241a3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0x45713b___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x45713b_type* @G__0x45713b to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_jne_.L_423f16(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






define %struct.Memory* @routine_movl__eax__MINUS0x14c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 332
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_42419e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0x457b60___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x457b60_type* @G__0x457b60 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_jne_.L_423f41(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x1__MINUS0x100__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 256
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_424199(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0x457b69___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x457b69_type* @G__0x457b69 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_jne_.L_423f6c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x2__MINUS0x100__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 256
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_424194(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0x457b72___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x457b72_type* @G__0x457b72 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_jne_.L_423f97(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x3__MINUS0x100__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 256
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_42418f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0x457b7b___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x457b7b_type* @G__0x457b7b to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_jne_.L_423fcc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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








define %struct.Memory* @routine_jmpq_.L_42418a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0x457b82___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x457b82_type* @G__0x457b82 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_jne_.L_424005(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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








define %struct.Memory* @routine_movss__xmm0__MINUS0x110__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 272
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jmpq_.L_424185(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0x457b89___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x457b89_type* @G__0x457b89 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_jne_.L_424030(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x1__MINUS0x13c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 316
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_424180(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0x457b93___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x457b93_type* @G__0x457b93 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_jne_.L_42405b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x0__MINUS0x138__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 312
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_42417b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0x457161___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x457161_type* @G__0x457161 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_jne_.L_424086(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x1__MINUS0x144__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 324
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_424176(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0x457b9b___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x457b9b_type* @G__0x457b9b to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_jne_.L_4240b1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x1__MINUS0x140__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 320
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_424171(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0x457ba1___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x457ba1_type* @G__0x457ba1 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_jne_.L_424103(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_callq_.String2SeqfileFormat(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 92
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_cmpl__0x0__MINUS0x5c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 92
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_4240fe(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq__0x457bac___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x457bac_type* @G__0x457bac to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_MINUS0x130__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 304
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
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


define %struct.Memory* @routine_jmpq_.L_42416c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0x457173___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x457173_type* @G__0x457173 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_jne_.L_424167(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq__0x6617f0___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x6617f0_type* @G__0x6617f0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_0x663040___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G_0x663040_type* @G_0x663040 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_callq_.HMMERBanner(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq__0x661670___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x661670_type* @G__0x661670 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_callq_.puts_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq__0x661830___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x661830_type* @G__0x661830 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__eax__MINUS0x164__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 356
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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

define %struct.Memory* @routine_xorl__edi___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = load i32, i32* %EDI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__eax__MINUS0x168__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 360
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_callq_.exit_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


































define %struct.Memory* @routine_jmpq_.L_423d87(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_subl_MINUS0x134__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 308
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_je_.L_4241e9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq__0x457176___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x457176_type* @G__0x457176 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x661670___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x661670_type* @G__0x661670 to i64))
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


define %struct.Memory* @routine_movl_MINUS0x134__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 308
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl__edx__MINUS0x134__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 308
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq__ecx___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq___rax__rsi_8____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RSI
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %15)
  ret %struct.Memory* %18
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
















define %struct.Memory* @routine_movq__rax__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_cmpl__0x0__MINUS0x144__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 324
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_424254(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x154__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 340
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_424254(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq__0x457bd3___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x457bd3_type* @G__0x457bd3 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_cmpl__0x0__MINUS0x14c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 332
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_42427f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x150__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 336
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_42427f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq__0x457c1d___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x457c1d_type* @G__0x457c1d to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_jne_.L_4242c7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq__0x457c6d___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x457c6d_type* @G__0x457c6d to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_xorl__edx___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = load i32, i32* %EDX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_callq_.Strparse(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_jne_.L_4242c0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__0x456fc4___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x456fc4_type* @G__0x456fc4 to i64))
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_movl__0x7__MINUS0x5c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 92
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 7)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq__0x457c76___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x457c76_type* @G__0x457c76 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl_MINUS0x5c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 92
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.SeqfileOpen(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq__rax__MINUS0x58__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_jne_.L_42430a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq__0x457c7e___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x457c7e_type* @G__0x457c7e to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x661670___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x661670_type* @G__0x661670 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movq__0x457cab___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x457cab_type* @G__0x457cab to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_callq_.HMMFileOpen(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq__rax__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jne_.L_42434a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq__0x457cb3___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x457cb3_type* @G__0x457cb3 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movq_MINUS0x40__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_leaq_MINUS0x68__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x48__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.HMMFileRead(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_jne_.L_424375(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq__0x457cd1___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x457cd1_type* @G__0x457cd1 to i64))
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_cmpq__0x0__MINUS0x68__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 104
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_424395(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq__0x457cf2___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x457cf2_type* @G__0x457cf2 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movq_MINUS0x68__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl__0x0__MINUS0x13c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 316
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5SETNZI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture readonly dereferenceable(3376), i8* nocapture) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_setne__al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SETNZI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i8* %AL)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWIhE2RnIhE2InIhEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #0 {
  %6 = xor i64 %4, %3
  %7 = trunc i64 %6 to i8
  store i8 %7, i8* %2, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = trunc i64 %6 to i32
  %10 = and i32 %9, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10) #22
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = icmp eq i8 %7, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i8 %7, 7
  %20 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %22, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_xorb__0xff___al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWIhE2RnIhE2InIhEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %11, i64 255)
  ret %struct.Memory* %14
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWIhE2RnIhE2InIhEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #0 {
  %6 = and i64 %4, %3
  %7 = trunc i64 %6 to i8
  store i8 %7, i8* %2, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = trunc i64 %6 to i32
  %10 = and i32 %9, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10) #22
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = icmp eq i8 %7, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i8 %7, 7
  %20 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %22, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_andb__0x1___al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWIhE2RnIhE2InIhEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %11, i64 1)
  ret %struct.Memory* %14
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 255
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movzbl__al___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 9
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RSI = bitcast %union.anon* %12 to i64*
  %13 = load i8, i8* %AL
  %14 = zext i8 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_callq_.P7Logoddsify(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x140__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 320
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_4243db(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_cmpl__0x2__0x676d90(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x676d90_type* @G_0x676d90 to i64), i64 2)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jne_.L_4243db(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq__0x457d2b___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x457d2b_type* @G__0x457d2b to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_leaq_MINUS0x120__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 288
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x68__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.SetAutocuts(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_jne_.L_42440c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq__0x457d72___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x457d72_type* @G__0x457d72 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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












define %struct.Memory* @routine_movq__0x457dae___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x457dae_type* @G__0x457dae to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movq___rax____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12)
  ret %struct.Memory* %15
}




define %struct.Memory* @routine_callq_.printf_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq__0x457dd3___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x457dd3_type* @G__0x457dd3 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__eax__MINUS0x16c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 364
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_movl__eax__MINUS0x170__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 368
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_je_.L_424484(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq__0x457df3___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x457df3_type* @G__0x457df3 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__eax__MINUS0x174__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 372
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq__0x457e17___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x457e17_type* @G__0x457e17 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movss_0x302c7__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x302c7__rip__type* @G_0x302c7__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movss_MINUS0x120__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 288
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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


define %struct.Memory* @routine_movl__eax__MINUS0x178__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 376
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_4244d6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jp_.L_4244d6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq__0x457e34___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x457e34_type* @G__0x457e34 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__eax__MINUS0x17c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 380
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_424596(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x457e3c___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x457e3c_type* @G__0x457e3c to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to float*
  %6 = load float, float* %5
  %7 = fpext float %6 to double
  %8 = bitcast i8* %2 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvtss2sd_MINUS0x120__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 288
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
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




define %struct.Memory* @routine_cmpl__0x1__MINUS0x100__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 256
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__eax__MINUS0x180__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 384
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_42451e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq__0x457e44___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x457e44_type* @G__0x457e44 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__eax__MINUS0x184__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 388
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_424591(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_cmpl__0x2__MINUS0x100__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 256
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_424547(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq__0x457e4c___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x457e4c_type* @G__0x457e4c to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__eax__MINUS0x188__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 392
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_42458c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_cmpl__0x3__MINUS0x100__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 256
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_424570(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq__0x457e54___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x457e54_type* @G__0x457e54 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__eax__MINUS0x18c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 396
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_424587(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x45a1f7___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x45a1f7_type* @G__0x45a1f7 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__eax__MINUS0x190__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 400
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_movq__0x457e5c___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x457e5c_type* @G__0x457e5c to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movss_0x301b5__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x301b5__rip__type* @G_0x301b5__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movss_MINUS0x110__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 272
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0x194__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 404
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_4245e8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jp_.L_4245e8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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








define %struct.Memory* @routine_movl__eax__MINUS0x198__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 408
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4246a8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_cvtss2sd_MINUS0x110__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 272
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movl__eax__MINUS0x19c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 412
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_424630(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq__0x457e79___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x457e79_type* @G__0x457e79 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__eax__MINUS0x1a0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 416
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4246a3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jne_.L_424659(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq__0x457e81___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x457e81_type* @G__0x457e81 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__eax__MINUS0x1a4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 420
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_42469e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jne_.L_424682(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq__0x457e89___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x457e89_type* @G__0x457e89 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__eax__MINUS0x1a8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 424
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_424699(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_movl__eax__MINUS0x1ac__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 428
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_movq__0x457e91___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x457e91_type* @G__0x457e91 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movsd_0x301d7__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x301d7__rip__type* @G_0x301d7__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movsd_MINUS0x118__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 280
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
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


define %struct.Memory* @routine_movl__eax__MINUS0x1b0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 432
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_4246fb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jp_.L_4246fb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jmpq_.L_42471a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x457eae___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x457eae_type* @G__0x457eae to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movsd_MINUS0x118__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 280
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movq__0x457eba___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x457eba_type* @G__0x457eba to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movsd_0x30165__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x30165__rip__type* @G_0x30165__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movsd_MINUS0x108__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 264
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0x1bc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 444
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_42476d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jp_.L_42476d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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








define %struct.Memory* @routine_movl__eax__MINUS0x1c0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 448
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_42478c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x457ed7___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x457ed7_type* @G__0x457ed7 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movsd_MINUS0x108__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 264
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl__eax__MINUS0x1c4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 452
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq__0x458548___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x458548_type* @G__0x458548 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__0xffffff38___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 4294967096)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0xc8___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 200)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x64___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 100)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__eax__MINUS0x1c8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 456
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_callq_.AllocHistogram(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0xc8___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 200)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__rax__MINUS0x70__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_callq_.AllocTophits(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_movq__rax__MINUS0x80__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq__rax__MINUS0x88__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 136
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_je_.L_42484a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






define %struct.Memory* @routine_leaq_MINUS0x120__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 288
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0xd8__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 216
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq_MINUS0x58__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x13c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 316
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x138__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 312
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl_MINUS0x140__rbp____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R9D to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 320
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0x70__rbp____r10(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R10, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x80__rbp____r11(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 23
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R11 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x88__rbp____rbx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RBX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__r10____rsp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = load i64, i64* %R10
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__r11__0x8__rsp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 23
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R11 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = add i64 %12, 8
  %14 = load i64, i64* %R11
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rbx__0x10__rsp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = add i64 %12, 16
  %14 = load i64, i64* %RBX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rax__0x18__rsp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = add i64 %12, 24
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_callq_.main_loop_pvm(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jmpq_.L_42491c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_je_.L_4248c6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




















define %struct.Memory* @routine_movl_MINUS0x14c__rbp____r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R10D to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 332
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0x70__rbp____r11(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 23
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R11 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x80__rbp____rbx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RBX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x88__rbp____r14(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 29
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R14 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R14, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__r10d____rsp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = load i32, i32* %R10D
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movq__r14__0x18__rsp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 29
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R14 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = add i64 %12, 24
  %14 = load i64, i64* %R14
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rax__0x20__rsp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = add i64 %12, 32
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_callq_.main_loop_threaded(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jmpq_.L_424917(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






























define %struct.Memory* @routine_callq_.main_loop_serial_393(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






define %struct.Memory* @routine_movl_0x1c8__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 456
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = and i64 %4, %3
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

define %struct.Memory* @routine_andl__0x80___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 128)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_je_.L_42496a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_xorl__esi___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = load i32, i32* %ESI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0x70__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movss_0x1c0__rax____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 448
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movss_0x1c4__rax____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 452
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_cvtsi2ssl_0x14__rax____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SSI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_cvtsi2ssl_0x10__rax____xmm3(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SSI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.ExtremeValueSetHistogram(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0xfc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 252
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_424983(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl_MINUS0xd8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 216
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_cmpl__0x0__MINUS0x148__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 328
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_424a63(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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










define %struct.Memory* @routine_andl__0x200___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 512)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movq__rsi__MINUS0x1d0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 464
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_je_.L_4249cb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq__rax__MINUS0x1d8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 472
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jmpq_.L_4249e1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x458d45___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x458d45_type* @G__0x458d45 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movq_MINUS0x1d8__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 472
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x68__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x1c8__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 456
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_andl__0x2___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 2)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_cmpl__0x0___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq__rax__MINUS0x1e0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 480
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_je_.L_424a19(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 16
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq__rax__MINUS0x1e8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 488
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jmpq_.L_424a2f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_movq_MINUS0x1e8__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 488
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__0x457ee2___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x457ee2_type* @G__0x457ee2 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_MINUS0x1d0__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 464
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x1e0__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12)
  ret %struct.Memory* %15
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


define %struct.Memory* @routine_jmpq_.L_424b46(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x457ef8___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x457ef8_type* @G__0x457ef8 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_movl_0x1c8__rsi____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RSI
  %13 = add i64 %12, 456
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl__eax__MINUS0x1f0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 496
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_je_.L_424aae(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






define %struct.Memory* @routine_movq__rax__MINUS0x1f8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 504
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jmpq_.L_424ac4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x457f0a___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x457f0a_type* @G__0x457f0a to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movq_MINUS0x1f8__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 504
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__0x457f11___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x457f11_type* @G__0x457f11 to i64))
  ret %struct.Memory* %11
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










define %struct.Memory* @routine_andl__0x2___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 2)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movl__eax__MINUS0x1fc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 508
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_je_.L_424b0f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






define %struct.Memory* @routine_movq__rax__MINUS0x208__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 520
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jmpq_.L_424b25(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_movq_MINUS0x208__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 520
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__0x457f22___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x457f22_type* @G__0x457f22 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl__eax__MINUS0x20c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 524
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}










define %struct.Memory* @routine_je_.L_424b7b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq__0x457f33___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x457f33_type* @G__0x457f33 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__eax__MINUS0x210__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 528
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_424b92(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x457f72___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x457f72_type* @G__0x457f72 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__eax__MINUS0x214__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 532
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq_MINUS0x80__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.FullSortTophits(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_callq_.TophitsMaxName(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x8___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 8)
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_cmpl__eax___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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

define %struct.Memory* @routine_jle_.L_424bc1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x8___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 8)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__eax__MINUS0x218__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 536
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_424bd0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_movl_MINUS0x218__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 536
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__0x34___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 52)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__eax__MINUS0xe8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 232
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_subl_MINUS0xe8__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 232
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_cmpl__0xb___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 11)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jle_.L_424c06(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x34___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 52)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_subl_MINUS0xe8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 232
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__eax__MINUS0x21c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 540
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_424c16(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl__0xb___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 11)
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl_MINUS0x21c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 540
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0xec__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 236
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq_MINUS0x88__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_jle_.L_424c57(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_movl__eax__MINUS0x220__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 544
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_424c69(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_movl_MINUS0x220__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 544
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_cmpl__0x0__MINUS0xf4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 244
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_424f0f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq__0x457fa9___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x457fa9_type* @G__0x457fa9 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__0x0__MINUS0x60__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 96
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0xf0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 240
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__eax__MINUS0x224__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 548
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x60__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x88__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
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

define %struct.Memory* @routine_cmpl_0x14__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RCX
  %15 = add i64 %14, 20
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

define %struct.Memory* @routine_jge_.L_424eb7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl_MINUS0xf0__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 240
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl_MINUS0xf4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 244
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_424cd4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jmpq_.L_424eb7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_leaq_MINUS0x98__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x8c__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 140
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0xa8__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0xac__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 172
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0xc8__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 200
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__esi___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0xb0__rbp____r10(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 176
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R10, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0xb4__rbp____r11(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 23
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R11 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 180
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0xd4__rbp____rbx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 212
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RBX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0xb8__rbp____r14(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 29
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R14 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 184
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R14, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0xbc__rbp____r15(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 31
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R15 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 188
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R15, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0xe0__rbp____r12(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 25
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R12 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 224
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0xe4__rbp____r13(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 27
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R13 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 228
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R13, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x78__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 120
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax__MINUS0x230__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 560
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0x88__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rsi__MINUS0x238__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 568
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl_MINUS0x60__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rdi__MINUS0x240__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 576
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rax___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movq_MINUS0x230__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 560
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x0__0x8__rsp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 9
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq__0x0__0x10__rsp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 16
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 9
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq__r10__0x18__rsp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = add i64 %12, 24
  %14 = load i64, i64* %R10
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r11__0x20__rsp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 23
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R11 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = add i64 %12, 32
  %14 = load i64, i64* %R11
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rbx__0x28__rsp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = add i64 %12, 40
  %14 = load i64, i64* %RBX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r14__0x30__rsp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 29
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R14 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = add i64 %12, 48
  %14 = load i64, i64* %R14
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r15__0x38__rsp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 31
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R15 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = add i64 %12, 56
  %14 = load i64, i64* %R15
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__0x0__0x40__rsp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 9
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq__r12__0x48__rsp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 25
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R12 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = add i64 %12, 72
  %14 = load i64, i64* %R12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r13__0x50__rsp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 27
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R13 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = add i64 %12, 80
  %14 = load i64, i64* %R13
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0x238__rbp____r10(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 568
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R10, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__r10__0x58__rsp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = add i64 %12, 88
  %14 = load i64, i64* %R10
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_callq_.GetRankedHit(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory*, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sitofp i32 %6 to double
  %8 = bitcast i8* %2 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvtsi2sdl_MINUS0xfc__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 252
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movsd_MINUS0xa8__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}





define internal %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory*, %struct.State* dereferenceable(3376), i8* nocapture readonly, i64) #0 {
  %5 = bitcast i8* %2 to double*
  %6 = load double, double* %5, align 1
  %7 = inttoptr i64 %3 to double*
  %8 = load double, double* %7
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

define %struct.Memory* @routine_ucomisd_MINUS0x118__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 280
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_ja_.L_424e03(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movss_MINUS0xac__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 172
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_jbe_.L_424e08(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jmpq_.L_424ea9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jb_.L_424e9f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movss_MINUS0x8c__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 140
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_ucomiss_MINUS0x110__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 272
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq__0x457fce___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x457fce_type* @G__0x457fce to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_MINUS0xc8__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 200
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0xe0__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 224
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0xe4__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 228
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0xb0__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 176
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl_MINUS0xb4__rbp____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R9D to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 180
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_cvtss2sd_MINUS0x8c__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 140
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd_MINUS0xa0__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 160
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
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






define %struct.Memory* @routine_movq_MINUS0x78__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 120
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x244__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 580
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_callq_.PrintFancyAli(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__eax__MINUS0xf0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 240
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_424ea4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_movl__eax__MINUS0x60__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 96
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_424caa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0xf0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 240
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_424edb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq__0x458008___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x458008_type* @G__0x458008 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__eax__MINUS0x248__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 584
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_jne_.L_424f0a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq__0x458025___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x458025_type* @G__0x458025 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_MINUS0xf4__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 244
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl__eax__MINUS0x24c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 588
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_424f0f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x458051___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x458051_type* @G__0x458051 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_MINUS0xd8__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 216
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movl__eax__MINUS0x250__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 592
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_callq_.FreeHistogram(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_callq_.HMMFileClose(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq_MINUS0x58__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.SeqfileClose(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_callq_.FreeTophits(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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








define %struct.Memory* @routine_callq_.FreePlan7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_callq_.SqdClean(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 44
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

define %struct.Memory* @routine_addq__0x288___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 648)
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

define %struct.Memory* @routine_popq__rbx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 1
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3POPI3RnWImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64* %RBX)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_popq__r12(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 25
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R12 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 2
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3POPI3RnWImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64* %R12)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_popq__r13(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 27
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R13 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 2
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3POPI3RnWImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64* %R13)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_popq__r14(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 29
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R14 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 2
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3POPI3RnWImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64* %R14)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_popq__r15(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 31
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R15 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 2
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3POPI3RnWImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64* %R15)
  ret %struct.Memory* %11
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

