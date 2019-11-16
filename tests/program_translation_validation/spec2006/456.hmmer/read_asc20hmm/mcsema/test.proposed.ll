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

declare %struct.Memory* @sub_401590.feof_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_401540.fgets_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_431d60.AllocPlan7Shell(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_432b80.Plan7SetName(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_432bd0.Plan7SetAccession(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_432c40.Plan7SetDescription(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_446010.s2upper(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_404ca0.SetAlphabet(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_410e60.AlphabetType2String(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_43ea10.Die(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_444890.sre_toupper(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_445e70.StringChop(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_445df0.Strdup(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4460b0.sre_realloc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_401660.strtok_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_421780.ascii2prob(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_431fd0.AllocPlan7Body(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_433c30.Plan7Renormalize(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4325d0.FreePlan7(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x34f1e__rip__type = type <{ [4 x i8] }>
@G_0x34f1e__rip_= global %G_0x34f1e__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x34f72__rip__type = type <{ [4 x i8] }>
@G_0x34f72__rip_= global %G_0x34f72__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x34fea__rip__type = type <{ [4 x i8] }>
@G_0x34fea__rip_= global %G_0x34fea__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x353db__rip__type = type <{ [4 x i8] }>
@G_0x353db__rip_= global %G_0x353db__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x35449__rip__type = type <{ [4 x i8] }>
@G_0x35449__rip_= global %G_0x35449__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x357f5__rip__type = type <{ [8 x i8] }>
@G_0x357f5__rip_= global %G_0x357f5__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x3583b__rip__type = type <{ [4 x i8] }>
@G_0x3583b__rip_= global %G_0x3583b__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x35884__rip__type = type <{ [4 x i8] }>
@G_0x35884__rip_= global %G_0x35884__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x35962__rip__type = type <{ [4 x i8] }>
@G_0x35962__rip_= global %G_0x35962__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x676d90_type = type <{ [4 x i8] }>
@G_0x676d90= global %G_0x676d90_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x677060_type = type <{ [4 x i8] }>
@G_0x677060= global %G_0x677060_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x45763b_type = type <{ [8 x i8] }>
@G__0x45763b= global %G__0x45763b_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4577c5_type = type <{ [8 x i8] }>
@G__0x4577c5= global %G__0x4577c5_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457899_type = type <{ [8 x i8] }>
@G__0x457899= global %G__0x457899_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457947_type = type <{ [8 x i8] }>
@G__0x457947= global %G__0x457947_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x45794d_type = type <{ [8 x i8] }>
@G__0x45794d= global %G__0x45794d_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x45795a_type = type <{ [8 x i8] }>
@G__0x45795a= global %G__0x45795a_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457960_type = type <{ [8 x i8] }>
@G__0x457960= global %G__0x457960_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457966_type = type <{ [8 x i8] }>
@G__0x457966= global %G__0x457966_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x45796c_type = type <{ [8 x i8] }>
@G__0x45796c= global %G__0x45796c_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457972_type = type <{ [8 x i8] }>
@G__0x457972= global %G__0x457972_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457978_type = type <{ [8 x i8] }>
@G__0x457978= global %G__0x457978_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x45797e_type = type <{ [8 x i8] }>
@G__0x45797e= global %G__0x45797e_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457984_type = type <{ [8 x i8] }>
@G__0x457984= global %G__0x457984_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x45798a_type = type <{ [8 x i8] }>
@G__0x45798a= global %G__0x45798a_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457990_type = type <{ [8 x i8] }>
@G__0x457990= global %G__0x457990_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457996_type = type <{ [8 x i8] }>
@G__0x457996= global %G__0x457996_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x45799c_type = type <{ [8 x i8] }>
@G__0x45799c= global %G__0x45799c_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4579a2_type = type <{ [8 x i8] }>
@G__0x4579a2= global %G__0x4579a2_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4579a8_type = type <{ [8 x i8] }>
@G__0x4579a8= global %G__0x4579a8_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4579ae_type = type <{ [8 x i8] }>
@G__0x4579ae= global %G__0x4579ae_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4579b4_type = type <{ [8 x i8] }>
@G__0x4579b4= global %G__0x4579b4_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4579ba_type = type <{ [8 x i8] }>
@G__0x4579ba= global %G__0x4579ba_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4579c0_type = type <{ [8 x i8] }>
@G__0x4579c0= global %G__0x4579c0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4579e9_type = type <{ [8 x i8] }>
@G__0x4579e9= global %G__0x4579e9_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4579ef_type = type <{ [8 x i8] }>
@G__0x4579ef= global %G__0x4579ef_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4579f5_type = type <{ [8 x i8] }>
@G__0x4579f5= global %G__0x4579f5_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x45a1f5_type = type <{ [8 x i8] }>
@G__0x45a1f5= global %G__0x45a1f5_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x45a1f7_type = type <{ [8 x i8] }>
@G__0x45a1f7= global %G__0x45a1f7_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x45a381_type = type <{ [8 x i8] }>
@G__0x45a381= global %G__0x45a381_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @read_asc20hmm(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .read_asc20hmm:	 RIP: 41e4e0	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 41e4e0	 Bytes: 1
  %loadMem_41e4e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e4e0 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e4e0)
  store %struct.Memory* %call_41e4e0, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 41e4e1	 Bytes: 3
  %loadMem_41e4e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e4e1 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e4e1)
  store %struct.Memory* %call_41e4e1, %struct.Memory** %MEMORY

  ; Code: subq $0x290, %rsp	 RIP: 41e4e4	 Bytes: 7
  %loadMem_41e4e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e4e4 = call %struct.Memory* @routine_subq__0x290___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e4e4)
  store %struct.Memory* %call_41e4e4, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x10(%rbp)	 RIP: 41e4eb	 Bytes: 4
  %loadMem_41e4eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e4eb = call %struct.Memory* @routine_movq__rdi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e4eb)
  store %struct.Memory* %call_41e4eb, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x18(%rbp)	 RIP: 41e4ef	 Bytes: 4
  %loadMem_41e4ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e4ef = call %struct.Memory* @routine_movq__rsi__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e4ef)
  store %struct.Memory* %call_41e4ef, %struct.Memory** %MEMORY

  ; Code: movq $0x0, -0x20(%rbp)	 RIP: 41e4f3	 Bytes: 8
  %loadMem_41e4f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e4f3 = call %struct.Memory* @routine_movq__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e4f3)
  store %struct.Memory* %call_41e4f3, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rsi	 RIP: 41e4fb	 Bytes: 4
  %loadMem_41e4fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e4fb = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e4fb)
  store %struct.Memory* %call_41e4fb, %struct.Memory** %MEMORY

  ; Code: movq (%rsi), %rdi	 RIP: 41e4ff	 Bytes: 3
  %loadMem_41e4ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e4ff = call %struct.Memory* @routine_movq___rsi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e4ff)
  store %struct.Memory* %call_41e4ff, %struct.Memory** %MEMORY

  ; Code: callq .feof_plt	 RIP: 41e502	 Bytes: 5
  %loadMem1_41e502 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41e502 = call %struct.Memory* @routine_callq_.feof_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41e502, i64 -118642, i64 5, i64 5)
  store %struct.Memory* %call1_41e502, %struct.Memory** %MEMORY

  %loadMem2_41e502 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41e502 = load i64, i64* %3
  %call2_41e502 = call %struct.Memory* @sub_401590.feof_plt(%struct.State* %0, i64  %loadPC_41e502, %struct.Memory* %loadMem2_41e502)
  store %struct.Memory* %call2_41e502, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41e507	 Bytes: 3
  %loadMem_41e507 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e507 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e507)
  store %struct.Memory* %call_41e507, %struct.Memory** %MEMORY

  ; Code: jne .L_41e532	 RIP: 41e50a	 Bytes: 6
  %loadMem_41e50a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e50a = call %struct.Memory* @routine_jne_.L_41e532(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e50a, i8* %BRANCH_TAKEN, i64 40, i64 6, i64 6)
  store %struct.Memory* %call_41e50a, %struct.Memory** %MEMORY

  %loadBr_41e50a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41e50a = icmp eq i8 %loadBr_41e50a, 1
  br i1 %cmpBr_41e50a, label %block_.L_41e532, label %block_41e510

block_41e510:
  ; Code: movl $0x200, %esi	 RIP: 41e510	 Bytes: 5
  %loadMem_41e510 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e510 = call %struct.Memory* @routine_movl__0x200___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e510)
  store %struct.Memory* %call_41e510, %struct.Memory** %MEMORY

  ; Code: leaq -0x220(%rbp), %rdi	 RIP: 41e515	 Bytes: 7
  %loadMem_41e515 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e515 = call %struct.Memory* @routine_leaq_MINUS0x220__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e515)
  store %struct.Memory* %call_41e515, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 41e51c	 Bytes: 4
  %loadMem_41e51c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e51c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e51c)
  store %struct.Memory* %call_41e51c, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdx	 RIP: 41e520	 Bytes: 3
  %loadMem_41e520 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e520 = call %struct.Memory* @routine_movq___rax____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e520)
  store %struct.Memory* %call_41e520, %struct.Memory** %MEMORY

  ; Code: callq .fgets_plt	 RIP: 41e523	 Bytes: 5
  %loadMem1_41e523 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41e523 = call %struct.Memory* @routine_callq_.fgets_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41e523, i64 -118755, i64 5, i64 5)
  store %struct.Memory* %call1_41e523, %struct.Memory** %MEMORY

  %loadMem2_41e523 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41e523 = load i64, i64* %3
  %call2_41e523 = call %struct.Memory* @sub_401540.fgets_plt(%struct.State* %0, i64  %loadPC_41e523, %struct.Memory* %loadMem2_41e523)
  store %struct.Memory* %call2_41e523, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41e528	 Bytes: 4
  %loadMem_41e528 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e528 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e528)
  store %struct.Memory* %call_41e528, %struct.Memory** %MEMORY

  ; Code: jne .L_41e53e	 RIP: 41e52c	 Bytes: 6
  %loadMem_41e52c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e52c = call %struct.Memory* @routine_jne_.L_41e53e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e52c, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_41e52c, %struct.Memory** %MEMORY

  %loadBr_41e52c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41e52c = icmp eq i8 %loadBr_41e52c, 1
  br i1 %cmpBr_41e52c, label %block_.L_41e53e, label %block_.L_41e532

  ; Code: .L_41e532:	 RIP: 41e532	 Bytes: 0
block_.L_41e532:

  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 41e532	 Bytes: 7
  %loadMem_41e532 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e532 = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e532)
  store %struct.Memory* %call_41e532, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41f904	 RIP: 41e539	 Bytes: 5
  %loadMem_41e539 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e539 = call %struct.Memory* @routine_jmpq_.L_41f904(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e539, i64 5067, i64 5)
  store %struct.Memory* %call_41e539, %struct.Memory** %MEMORY

  br label %block_.L_41f904

  ; Code: .L_41e53e:	 RIP: 41e53e	 Bytes: 0
block_.L_41e53e:

  ; Code: movq $0x4577c5, %rsi	 RIP: 41e53e	 Bytes: 10
  %loadMem_41e53e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e53e = call %struct.Memory* @routine_movq__0x4577c5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e53e)
  store %struct.Memory* %call_41e53e, %struct.Memory** %MEMORY

  ; Code: movl $0x8, %eax	 RIP: 41e548	 Bytes: 5
  %loadMem_41e548 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e548 = call %struct.Memory* @routine_movl__0x8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e548)
  store %struct.Memory* %call_41e548, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 41e54d	 Bytes: 2
  %loadMem_41e54d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e54d = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e54d)
  store %struct.Memory* %call_41e54d, %struct.Memory** %MEMORY

  ; Code: leaq -0x220(%rbp), %rdi	 RIP: 41e54f	 Bytes: 7
  %loadMem_41e54f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e54f = call %struct.Memory* @routine_leaq_MINUS0x220__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e54f)
  store %struct.Memory* %call_41e54f, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 41e556	 Bytes: 5
  %loadMem1_41e556 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41e556 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41e556, i64 -119174, i64 5, i64 5)
  store %struct.Memory* %call1_41e556, %struct.Memory** %MEMORY

  %loadMem2_41e556 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41e556 = load i64, i64* %3
  %call2_41e556 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_41e556, %struct.Memory* %loadMem2_41e556)
  store %struct.Memory* %call2_41e556, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41e55b	 Bytes: 3
  %loadMem_41e55b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e55b = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e55b)
  store %struct.Memory* %call_41e55b, %struct.Memory** %MEMORY

  ; Code: je .L_41e569	 RIP: 41e55e	 Bytes: 6
  %loadMem_41e55e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e55e = call %struct.Memory* @routine_je_.L_41e569(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e55e, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41e55e, %struct.Memory** %MEMORY

  %loadBr_41e55e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41e55e = icmp eq i8 %loadBr_41e55e, 1
  br i1 %cmpBr_41e55e, label %block_.L_41e569, label %block_41e564

block_41e564:
  ; Code: jmpq .L_41f8de	 RIP: 41e564	 Bytes: 5
  %loadMem_41e564 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e564 = call %struct.Memory* @routine_jmpq_.L_41f8de(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e564, i64 4986, i64 5)
  store %struct.Memory* %call_41e564, %struct.Memory** %MEMORY

  br label %block_.L_41f8de

  ; Code: .L_41e569:	 RIP: 41e569	 Bytes: 0
block_.L_41e569:

  ; Code: callq .AllocPlan7Shell	 RIP: 41e569	 Bytes: 5
  %loadMem1_41e569 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41e569 = call %struct.Memory* @routine_callq_.AllocPlan7Shell(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41e569, i64 79863, i64 5, i64 5)
  store %struct.Memory* %call1_41e569, %struct.Memory** %MEMORY

  %loadMem2_41e569 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41e569 = load i64, i64* %3
  %call2_41e569 = call %struct.Memory* @sub_431d60.AllocPlan7Shell(%struct.State* %0, i64  %loadPC_41e569, %struct.Memory* %loadMem2_41e569)
  store %struct.Memory* %call2_41e569, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x20(%rbp)	 RIP: 41e56e	 Bytes: 4
  %loadMem_41e56e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e56e = call %struct.Memory* @routine_movq__rax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e56e)
  store %struct.Memory* %call_41e56e, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, -0x22c(%rbp)	 RIP: 41e572	 Bytes: 10
  %loadMem_41e572 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e572 = call %struct.Memory* @routine_movl__0xffffffff__MINUS0x22c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e572)
  store %struct.Memory* %call_41e572, %struct.Memory** %MEMORY

  ; Code: .L_41e57c:	 RIP: 41e57c	 Bytes: 0
  br label %block_.L_41e57c
block_.L_41e57c:

  ; Code: movl $0x200, %esi	 RIP: 41e57c	 Bytes: 5
  %loadMem_41e57c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e57c = call %struct.Memory* @routine_movl__0x200___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e57c)
  store %struct.Memory* %call_41e57c, %struct.Memory** %MEMORY

  ; Code: leaq -0x220(%rbp), %rdi	 RIP: 41e581	 Bytes: 7
  %loadMem_41e581 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e581 = call %struct.Memory* @routine_leaq_MINUS0x220__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e581)
  store %struct.Memory* %call_41e581, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 41e588	 Bytes: 4
  %loadMem_41e588 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e588 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e588)
  store %struct.Memory* %call_41e588, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdx	 RIP: 41e58c	 Bytes: 3
  %loadMem_41e58c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e58c = call %struct.Memory* @routine_movq___rax____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e58c)
  store %struct.Memory* %call_41e58c, %struct.Memory** %MEMORY

  ; Code: callq .fgets_plt	 RIP: 41e58f	 Bytes: 5
  %loadMem1_41e58f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41e58f = call %struct.Memory* @routine_callq_.fgets_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41e58f, i64 -118863, i64 5, i64 5)
  store %struct.Memory* %call1_41e58f, %struct.Memory** %MEMORY

  %loadMem2_41e58f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41e58f = load i64, i64* %3
  %call2_41e58f = call %struct.Memory* @sub_401540.fgets_plt(%struct.State* %0, i64  %loadPC_41e58f, %struct.Memory* %loadMem2_41e58f)
  store %struct.Memory* %call2_41e58f, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41e594	 Bytes: 4
  %loadMem_41e594 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e594 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e594)
  store %struct.Memory* %call_41e594, %struct.Memory** %MEMORY

  ; Code: je .L_41f1fc	 RIP: 41e598	 Bytes: 6
  %loadMem_41e598 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e598 = call %struct.Memory* @routine_je_.L_41f1fc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e598, i8* %BRANCH_TAKEN, i64 3172, i64 6, i64 6)
  store %struct.Memory* %call_41e598, %struct.Memory** %MEMORY

  %loadBr_41e598 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41e598 = icmp eq i8 %loadBr_41e598, 1
  br i1 %cmpBr_41e598, label %block_.L_41f1fc, label %block_41e59e

block_41e59e:
  ; Code: movq $0x45795a, %rsi	 RIP: 41e59e	 Bytes: 10
  %loadMem_41e59e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e59e = call %struct.Memory* @routine_movq__0x45795a___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e59e)
  store %struct.Memory* %call_41e59e, %struct.Memory** %MEMORY

  ; Code: movl $0x5, %eax	 RIP: 41e5a8	 Bytes: 5
  %loadMem_41e5a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e5a8 = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e5a8)
  store %struct.Memory* %call_41e5a8, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 41e5ad	 Bytes: 2
  %loadMem_41e5ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e5ad = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e5ad)
  store %struct.Memory* %call_41e5ad, %struct.Memory** %MEMORY

  ; Code: leaq -0x220(%rbp), %rdi	 RIP: 41e5af	 Bytes: 7
  %loadMem_41e5af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e5af = call %struct.Memory* @routine_leaq_MINUS0x220__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e5af)
  store %struct.Memory* %call_41e5af, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 41e5b6	 Bytes: 5
  %loadMem1_41e5b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41e5b6 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41e5b6, i64 -119270, i64 5, i64 5)
  store %struct.Memory* %call1_41e5b6, %struct.Memory** %MEMORY

  %loadMem2_41e5b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41e5b6 = load i64, i64* %3
  %call2_41e5b6 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_41e5b6, %struct.Memory* %loadMem2_41e5b6)
  store %struct.Memory* %call2_41e5b6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41e5bb	 Bytes: 3
  %loadMem_41e5bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e5bb = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e5bb)
  store %struct.Memory* %call_41e5bb, %struct.Memory** %MEMORY

  ; Code: jne .L_41e5e0	 RIP: 41e5be	 Bytes: 6
  %loadMem_41e5be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e5be = call %struct.Memory* @routine_jne_.L_41e5e0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e5be, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_41e5be, %struct.Memory** %MEMORY

  %loadBr_41e5be = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41e5be = icmp eq i8 %loadBr_41e5be, 1
  br i1 %cmpBr_41e5be, label %block_.L_41e5e0, label %block_41e5c4

block_41e5c4:
  ; Code: leaq -0x220(%rbp), %rax	 RIP: 41e5c4	 Bytes: 7
  %loadMem_41e5c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e5c4 = call %struct.Memory* @routine_leaq_MINUS0x220__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e5c4)
  store %struct.Memory* %call_41e5c4, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 41e5cb	 Bytes: 4
  %loadMem_41e5cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e5cb = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e5cb)
  store %struct.Memory* %call_41e5cb, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rax	 RIP: 41e5cf	 Bytes: 4
  %loadMem_41e5cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e5cf = call %struct.Memory* @routine_addq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e5cf)
  store %struct.Memory* %call_41e5cf, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 41e5d3	 Bytes: 3
  %loadMem_41e5d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e5d3 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e5d3)
  store %struct.Memory* %call_41e5d3, %struct.Memory** %MEMORY

  ; Code: callq .Plan7SetName	 RIP: 41e5d6	 Bytes: 5
  %loadMem1_41e5d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41e5d6 = call %struct.Memory* @routine_callq_.Plan7SetName(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41e5d6, i64 83370, i64 5, i64 5)
  store %struct.Memory* %call1_41e5d6, %struct.Memory** %MEMORY

  %loadMem2_41e5d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41e5d6 = load i64, i64* %3
  %call2_41e5d6 = call %struct.Memory* @sub_432b80.Plan7SetName(%struct.State* %0, i64  %loadPC_41e5d6, %struct.Memory* %loadMem2_41e5d6)
  store %struct.Memory* %call2_41e5d6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41f1f7	 RIP: 41e5db	 Bytes: 5
  %loadMem_41e5db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e5db = call %struct.Memory* @routine_jmpq_.L_41f1f7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e5db, i64 3100, i64 5)
  store %struct.Memory* %call_41e5db, %struct.Memory** %MEMORY

  br label %block_.L_41f1f7

  ; Code: .L_41e5e0:	 RIP: 41e5e0	 Bytes: 0
block_.L_41e5e0:

  ; Code: movq $0x457960, %rsi	 RIP: 41e5e0	 Bytes: 10
  %loadMem_41e5e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e5e0 = call %struct.Memory* @routine_movq__0x457960___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e5e0)
  store %struct.Memory* %call_41e5e0, %struct.Memory** %MEMORY

  ; Code: movl $0x5, %eax	 RIP: 41e5ea	 Bytes: 5
  %loadMem_41e5ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e5ea = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e5ea)
  store %struct.Memory* %call_41e5ea, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 41e5ef	 Bytes: 2
  %loadMem_41e5ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e5ef = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e5ef)
  store %struct.Memory* %call_41e5ef, %struct.Memory** %MEMORY

  ; Code: leaq -0x220(%rbp), %rdi	 RIP: 41e5f1	 Bytes: 7
  %loadMem_41e5f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e5f1 = call %struct.Memory* @routine_leaq_MINUS0x220__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e5f1)
  store %struct.Memory* %call_41e5f1, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 41e5f8	 Bytes: 5
  %loadMem1_41e5f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41e5f8 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41e5f8, i64 -119336, i64 5, i64 5)
  store %struct.Memory* %call1_41e5f8, %struct.Memory** %MEMORY

  %loadMem2_41e5f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41e5f8 = load i64, i64* %3
  %call2_41e5f8 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_41e5f8, %struct.Memory* %loadMem2_41e5f8)
  store %struct.Memory* %call2_41e5f8, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41e5fd	 Bytes: 3
  %loadMem_41e5fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e5fd = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e5fd)
  store %struct.Memory* %call_41e5fd, %struct.Memory** %MEMORY

  ; Code: jne .L_41e622	 RIP: 41e600	 Bytes: 6
  %loadMem_41e600 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e600 = call %struct.Memory* @routine_jne_.L_41e622(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e600, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_41e600, %struct.Memory** %MEMORY

  %loadBr_41e600 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41e600 = icmp eq i8 %loadBr_41e600, 1
  br i1 %cmpBr_41e600, label %block_.L_41e622, label %block_41e606

block_41e606:
  ; Code: leaq -0x220(%rbp), %rax	 RIP: 41e606	 Bytes: 7
  %loadMem_41e606 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e606 = call %struct.Memory* @routine_leaq_MINUS0x220__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e606)
  store %struct.Memory* %call_41e606, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 41e60d	 Bytes: 4
  %loadMem_41e60d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e60d = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e60d)
  store %struct.Memory* %call_41e60d, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rax	 RIP: 41e611	 Bytes: 4
  %loadMem_41e611 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e611 = call %struct.Memory* @routine_addq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e611)
  store %struct.Memory* %call_41e611, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 41e615	 Bytes: 3
  %loadMem_41e615 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e615 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e615)
  store %struct.Memory* %call_41e615, %struct.Memory** %MEMORY

  ; Code: callq .Plan7SetAccession	 RIP: 41e618	 Bytes: 5
  %loadMem1_41e618 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41e618 = call %struct.Memory* @routine_callq_.Plan7SetAccession(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41e618, i64 83384, i64 5, i64 5)
  store %struct.Memory* %call1_41e618, %struct.Memory** %MEMORY

  %loadMem2_41e618 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41e618 = load i64, i64* %3
  %call2_41e618 = call %struct.Memory* @sub_432bd0.Plan7SetAccession(%struct.State* %0, i64  %loadPC_41e618, %struct.Memory* %loadMem2_41e618)
  store %struct.Memory* %call2_41e618, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41f1f2	 RIP: 41e61d	 Bytes: 5
  %loadMem_41e61d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e61d = call %struct.Memory* @routine_jmpq_.L_41f1f2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e61d, i64 3029, i64 5)
  store %struct.Memory* %call_41e61d, %struct.Memory** %MEMORY

  br label %block_.L_41f1f2

  ; Code: .L_41e622:	 RIP: 41e622	 Bytes: 0
block_.L_41e622:

  ; Code: movq $0x457966, %rsi	 RIP: 41e622	 Bytes: 10
  %loadMem_41e622 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e622 = call %struct.Memory* @routine_movq__0x457966___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e622)
  store %struct.Memory* %call_41e622, %struct.Memory** %MEMORY

  ; Code: movl $0x5, %eax	 RIP: 41e62c	 Bytes: 5
  %loadMem_41e62c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e62c = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e62c)
  store %struct.Memory* %call_41e62c, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 41e631	 Bytes: 2
  %loadMem_41e631 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e631 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e631)
  store %struct.Memory* %call_41e631, %struct.Memory** %MEMORY

  ; Code: leaq -0x220(%rbp), %rdi	 RIP: 41e633	 Bytes: 7
  %loadMem_41e633 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e633 = call %struct.Memory* @routine_leaq_MINUS0x220__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e633)
  store %struct.Memory* %call_41e633, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 41e63a	 Bytes: 5
  %loadMem1_41e63a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41e63a = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41e63a, i64 -119402, i64 5, i64 5)
  store %struct.Memory* %call1_41e63a, %struct.Memory** %MEMORY

  %loadMem2_41e63a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41e63a = load i64, i64* %3
  %call2_41e63a = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_41e63a, %struct.Memory* %loadMem2_41e63a)
  store %struct.Memory* %call2_41e63a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41e63f	 Bytes: 3
  %loadMem_41e63f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e63f = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e63f)
  store %struct.Memory* %call_41e63f, %struct.Memory** %MEMORY

  ; Code: jne .L_41e664	 RIP: 41e642	 Bytes: 6
  %loadMem_41e642 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e642 = call %struct.Memory* @routine_jne_.L_41e664(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e642, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_41e642, %struct.Memory** %MEMORY

  %loadBr_41e642 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41e642 = icmp eq i8 %loadBr_41e642, 1
  br i1 %cmpBr_41e642, label %block_.L_41e664, label %block_41e648

block_41e648:
  ; Code: leaq -0x220(%rbp), %rax	 RIP: 41e648	 Bytes: 7
  %loadMem_41e648 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e648 = call %struct.Memory* @routine_leaq_MINUS0x220__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e648)
  store %struct.Memory* %call_41e648, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 41e64f	 Bytes: 4
  %loadMem_41e64f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e64f = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e64f)
  store %struct.Memory* %call_41e64f, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rax	 RIP: 41e653	 Bytes: 4
  %loadMem_41e653 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e653 = call %struct.Memory* @routine_addq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e653)
  store %struct.Memory* %call_41e653, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 41e657	 Bytes: 3
  %loadMem_41e657 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e657 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e657)
  store %struct.Memory* %call_41e657, %struct.Memory** %MEMORY

  ; Code: callq .Plan7SetDescription	 RIP: 41e65a	 Bytes: 5
  %loadMem1_41e65a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41e65a = call %struct.Memory* @routine_callq_.Plan7SetDescription(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41e65a, i64 83430, i64 5, i64 5)
  store %struct.Memory* %call1_41e65a, %struct.Memory** %MEMORY

  %loadMem2_41e65a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41e65a = load i64, i64* %3
  %call2_41e65a = call %struct.Memory* @sub_432c40.Plan7SetDescription(%struct.State* %0, i64  %loadPC_41e65a, %struct.Memory* %loadMem2_41e65a)
  store %struct.Memory* %call2_41e65a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41f1ed	 RIP: 41e65f	 Bytes: 5
  %loadMem_41e65f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e65f = call %struct.Memory* @routine_jmpq_.L_41f1ed(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e65f, i64 2958, i64 5)
  store %struct.Memory* %call_41e65f, %struct.Memory** %MEMORY

  br label %block_.L_41f1ed

  ; Code: .L_41e664:	 RIP: 41e664	 Bytes: 0
block_.L_41e664:

  ; Code: movq $0x45796c, %rsi	 RIP: 41e664	 Bytes: 10
  %loadMem_41e664 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e664 = call %struct.Memory* @routine_movq__0x45796c___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e664)
  store %struct.Memory* %call_41e664, %struct.Memory** %MEMORY

  ; Code: movl $0x5, %eax	 RIP: 41e66e	 Bytes: 5
  %loadMem_41e66e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e66e = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e66e)
  store %struct.Memory* %call_41e66e, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 41e673	 Bytes: 2
  %loadMem_41e673 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e673 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e673)
  store %struct.Memory* %call_41e673, %struct.Memory** %MEMORY

  ; Code: leaq -0x220(%rbp), %rdi	 RIP: 41e675	 Bytes: 7
  %loadMem_41e675 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e675 = call %struct.Memory* @routine_leaq_MINUS0x220__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e675)
  store %struct.Memory* %call_41e675, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 41e67c	 Bytes: 5
  %loadMem1_41e67c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41e67c = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41e67c, i64 -119468, i64 5, i64 5)
  store %struct.Memory* %call1_41e67c, %struct.Memory** %MEMORY

  %loadMem2_41e67c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41e67c = load i64, i64* %3
  %call2_41e67c = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_41e67c, %struct.Memory* %loadMem2_41e67c)
  store %struct.Memory* %call2_41e67c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41e681	 Bytes: 3
  %loadMem_41e681 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e681 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e681)
  store %struct.Memory* %call_41e681, %struct.Memory** %MEMORY

  ; Code: jne .L_41e6a8	 RIP: 41e684	 Bytes: 6
  %loadMem_41e684 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e684 = call %struct.Memory* @routine_jne_.L_41e6a8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e684, i8* %BRANCH_TAKEN, i64 36, i64 6, i64 6)
  store %struct.Memory* %call_41e684, %struct.Memory** %MEMORY

  %loadBr_41e684 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41e684 = icmp eq i8 %loadBr_41e684, 1
  br i1 %cmpBr_41e684, label %block_.L_41e6a8, label %block_41e68a

block_41e68a:
  ; Code: leaq -0x220(%rbp), %rax	 RIP: 41e68a	 Bytes: 7
  %loadMem_41e68a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e68a = call %struct.Memory* @routine_leaq_MINUS0x220__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e68a)
  store %struct.Memory* %call_41e68a, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rax	 RIP: 41e691	 Bytes: 4
  %loadMem_41e691 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e691 = call %struct.Memory* @routine_addq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e691)
  store %struct.Memory* %call_41e691, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 41e695	 Bytes: 3
  %loadMem_41e695 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e695 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e695)
  store %struct.Memory* %call_41e695, %struct.Memory** %MEMORY

  ; Code: callq .atoi_plt	 RIP: 41e698	 Bytes: 5
  %loadMem1_41e698 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41e698 = call %struct.Memory* @routine_callq_.atoi_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41e698, i64 -118776, i64 5, i64 5)
  store %struct.Memory* %call1_41e698, %struct.Memory** %MEMORY

  %loadMem2_41e698 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41e698 = load i64, i64* %3
  %call2_41e698 = call %struct.Memory* @ext_atoi(%struct.State* %0, i64  %loadPC_41e698, %struct.Memory* %loadMem2_41e698)
  store %struct.Memory* %call2_41e698, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x22c(%rbp)	 RIP: 41e69d	 Bytes: 6
  %loadMem_41e69d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e69d = call %struct.Memory* @routine_movl__eax__MINUS0x22c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e69d)
  store %struct.Memory* %call_41e69d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41f1e8	 RIP: 41e6a3	 Bytes: 5
  %loadMem_41e6a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e6a3 = call %struct.Memory* @routine_jmpq_.L_41f1e8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e6a3, i64 2885, i64 5)
  store %struct.Memory* %call_41e6a3, %struct.Memory** %MEMORY

  br label %block_.L_41f1e8

  ; Code: .L_41e6a8:	 RIP: 41e6a8	 Bytes: 0
block_.L_41e6a8:

  ; Code: movq $0x457972, %rsi	 RIP: 41e6a8	 Bytes: 10
  %loadMem_41e6a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e6a8 = call %struct.Memory* @routine_movq__0x457972___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e6a8)
  store %struct.Memory* %call_41e6a8, %struct.Memory** %MEMORY

  ; Code: movl $0x5, %eax	 RIP: 41e6b2	 Bytes: 5
  %loadMem_41e6b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e6b2 = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e6b2)
  store %struct.Memory* %call_41e6b2, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 41e6b7	 Bytes: 2
  %loadMem_41e6b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e6b7 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e6b7)
  store %struct.Memory* %call_41e6b7, %struct.Memory** %MEMORY

  ; Code: leaq -0x220(%rbp), %rdi	 RIP: 41e6b9	 Bytes: 7
  %loadMem_41e6b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e6b9 = call %struct.Memory* @routine_leaq_MINUS0x220__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e6b9)
  store %struct.Memory* %call_41e6b9, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 41e6c0	 Bytes: 5
  %loadMem1_41e6c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41e6c0 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41e6c0, i64 -119536, i64 5, i64 5)
  store %struct.Memory* %call1_41e6c0, %struct.Memory** %MEMORY

  %loadMem2_41e6c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41e6c0 = load i64, i64* %3
  %call2_41e6c0 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_41e6c0, %struct.Memory* %loadMem2_41e6c0)
  store %struct.Memory* %call2_41e6c0, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41e6c5	 Bytes: 3
  %loadMem_41e6c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e6c5 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e6c5)
  store %struct.Memory* %call_41e6c5, %struct.Memory** %MEMORY

  ; Code: jne .L_41e6ed	 RIP: 41e6c8	 Bytes: 6
  %loadMem_41e6c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e6c8 = call %struct.Memory* @routine_jne_.L_41e6ed(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e6c8, i8* %BRANCH_TAKEN, i64 37, i64 6, i64 6)
  store %struct.Memory* %call_41e6c8, %struct.Memory** %MEMORY

  %loadBr_41e6c8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41e6c8 = icmp eq i8 %loadBr_41e6c8, 1
  br i1 %cmpBr_41e6c8, label %block_.L_41e6ed, label %block_41e6ce

block_41e6ce:
  ; Code: leaq -0x220(%rbp), %rax	 RIP: 41e6ce	 Bytes: 7
  %loadMem_41e6ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e6ce = call %struct.Memory* @routine_leaq_MINUS0x220__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e6ce)
  store %struct.Memory* %call_41e6ce, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rax	 RIP: 41e6d5	 Bytes: 4
  %loadMem_41e6d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e6d5 = call %struct.Memory* @routine_addq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e6d5)
  store %struct.Memory* %call_41e6d5, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 41e6d9	 Bytes: 3
  %loadMem_41e6d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e6d9 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e6d9)
  store %struct.Memory* %call_41e6d9, %struct.Memory** %MEMORY

  ; Code: callq .atoi_plt	 RIP: 41e6dc	 Bytes: 5
  %loadMem1_41e6dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41e6dc = call %struct.Memory* @routine_callq_.atoi_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41e6dc, i64 -118844, i64 5, i64 5)
  store %struct.Memory* %call1_41e6dc, %struct.Memory** %MEMORY

  %loadMem2_41e6dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41e6dc = load i64, i64* %3
  %call2_41e6dc = call %struct.Memory* @ext_atoi(%struct.State* %0, i64  %loadPC_41e6dc, %struct.Memory* %loadMem2_41e6dc)
  store %struct.Memory* %call2_41e6dc, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 41e6e1	 Bytes: 4
  %loadMem_41e6e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e6e1 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e6e1)
  store %struct.Memory* %call_41e6e1, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x38(%rdi)	 RIP: 41e6e5	 Bytes: 3
  %loadMem_41e6e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e6e5 = call %struct.Memory* @routine_movl__eax__0x38__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e6e5)
  store %struct.Memory* %call_41e6e5, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41f1e3	 RIP: 41e6e8	 Bytes: 5
  %loadMem_41e6e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e6e8 = call %struct.Memory* @routine_jmpq_.L_41f1e3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e6e8, i64 2811, i64 5)
  store %struct.Memory* %call_41e6e8, %struct.Memory** %MEMORY

  br label %block_.L_41f1e3

  ; Code: .L_41e6ed:	 RIP: 41e6ed	 Bytes: 0
block_.L_41e6ed:

  ; Code: movq $0x457978, %rsi	 RIP: 41e6ed	 Bytes: 10
  %loadMem_41e6ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e6ed = call %struct.Memory* @routine_movq__0x457978___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e6ed)
  store %struct.Memory* %call_41e6ed, %struct.Memory** %MEMORY

  ; Code: movl $0x5, %eax	 RIP: 41e6f7	 Bytes: 5
  %loadMem_41e6f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e6f7 = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e6f7)
  store %struct.Memory* %call_41e6f7, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 41e6fc	 Bytes: 2
  %loadMem_41e6fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e6fc = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e6fc)
  store %struct.Memory* %call_41e6fc, %struct.Memory** %MEMORY

  ; Code: leaq -0x220(%rbp), %rdi	 RIP: 41e6fe	 Bytes: 7
  %loadMem_41e6fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e6fe = call %struct.Memory* @routine_leaq_MINUS0x220__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e6fe)
  store %struct.Memory* %call_41e6fe, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 41e705	 Bytes: 5
  %loadMem1_41e705 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41e705 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41e705, i64 -119605, i64 5, i64 5)
  store %struct.Memory* %call1_41e705, %struct.Memory** %MEMORY

  %loadMem2_41e705 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41e705 = load i64, i64* %3
  %call2_41e705 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_41e705, %struct.Memory* %loadMem2_41e705)
  store %struct.Memory* %call2_41e705, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41e70a	 Bytes: 3
  %loadMem_41e70a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e70a = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e70a)
  store %struct.Memory* %call_41e70a, %struct.Memory** %MEMORY

  ; Code: jne .L_41e81c	 RIP: 41e70d	 Bytes: 6
  %loadMem_41e70d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e70d = call %struct.Memory* @routine_jne_.L_41e81c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e70d, i8* %BRANCH_TAKEN, i64 271, i64 6, i64 6)
  store %struct.Memory* %call_41e70d, %struct.Memory** %MEMORY

  %loadBr_41e70d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41e70d = icmp eq i8 %loadBr_41e70d, 1
  br i1 %cmpBr_41e70d, label %block_.L_41e81c, label %block_41e713

block_41e713:
  ; Code: leaq -0x220(%rbp), %rax	 RIP: 41e713	 Bytes: 7
  %loadMem_41e713 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e713 = call %struct.Memory* @routine_leaq_MINUS0x220__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e713)
  store %struct.Memory* %call_41e713, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rax	 RIP: 41e71a	 Bytes: 4
  %loadMem_41e71a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e71a = call %struct.Memory* @routine_addq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e71a)
  store %struct.Memory* %call_41e71a, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 41e71e	 Bytes: 3
  %loadMem_41e71e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e71e = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e71e)
  store %struct.Memory* %call_41e71e, %struct.Memory** %MEMORY

  ; Code: callq .s2upper	 RIP: 41e721	 Bytes: 5
  %loadMem1_41e721 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41e721 = call %struct.Memory* @routine_callq_.s2upper(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41e721, i64 162031, i64 5, i64 5)
  store %struct.Memory* %call1_41e721, %struct.Memory** %MEMORY

  %loadMem2_41e721 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41e721 = load i64, i64* %3
  %call2_41e721 = call %struct.Memory* @sub_446010.s2upper(%struct.State* %0, i64  %loadPC_41e721, %struct.Memory* %loadMem2_41e721)
  store %struct.Memory* %call2_41e721, %struct.Memory** %MEMORY

  ; Code: movq $0x457947, %rsi	 RIP: 41e726	 Bytes: 10
  %loadMem_41e726 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e726 = call %struct.Memory* @routine_movq__0x457947___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e726)
  store %struct.Memory* %call_41e726, %struct.Memory** %MEMORY

  ; Code: movl $0x5, %ecx	 RIP: 41e730	 Bytes: 5
  %loadMem_41e730 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e730 = call %struct.Memory* @routine_movl__0x5___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e730)
  store %struct.Memory* %call_41e730, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 41e735	 Bytes: 2
  %loadMem_41e735 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e735 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e735)
  store %struct.Memory* %call_41e735, %struct.Memory** %MEMORY

  ; Code: leaq -0x220(%rbp), %rax	 RIP: 41e737	 Bytes: 7
  %loadMem_41e737 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e737 = call %struct.Memory* @routine_leaq_MINUS0x220__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e737)
  store %struct.Memory* %call_41e737, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rax	 RIP: 41e73e	 Bytes: 4
  %loadMem_41e73e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e73e = call %struct.Memory* @routine_addq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e73e)
  store %struct.Memory* %call_41e73e, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 41e742	 Bytes: 3
  %loadMem_41e742 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e742 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e742)
  store %struct.Memory* %call_41e742, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 41e745	 Bytes: 5
  %loadMem1_41e745 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41e745 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41e745, i64 -119669, i64 5, i64 5)
  store %struct.Memory* %call1_41e745, %struct.Memory** %MEMORY

  %loadMem2_41e745 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41e745 = load i64, i64* %3
  %call2_41e745 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_41e745, %struct.Memory* %loadMem2_41e745)
  store %struct.Memory* %call2_41e745, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41e74a	 Bytes: 3
  %loadMem_41e74a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e74a = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e74a)
  store %struct.Memory* %call_41e74a, %struct.Memory** %MEMORY

  ; Code: jne .L_41e762	 RIP: 41e74d	 Bytes: 6
  %loadMem_41e74d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e74d = call %struct.Memory* @routine_jne_.L_41e762(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e74d, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_41e74d, %struct.Memory** %MEMORY

  %loadBr_41e74d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41e74d = icmp eq i8 %loadBr_41e74d, 1
  br i1 %cmpBr_41e74d, label %block_.L_41e762, label %block_41e753

block_41e753:
  ; Code: movl $0x3, -0x23c(%rbp)	 RIP: 41e753	 Bytes: 10
  %loadMem_41e753 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e753 = call %struct.Memory* @routine_movl__0x3__MINUS0x23c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e753)
  store %struct.Memory* %call_41e753, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41e7a8	 RIP: 41e75d	 Bytes: 5
  %loadMem_41e75d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e75d = call %struct.Memory* @routine_jmpq_.L_41e7a8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e75d, i64 75, i64 5)
  store %struct.Memory* %call_41e75d, %struct.Memory** %MEMORY

  br label %block_.L_41e7a8

  ; Code: .L_41e762:	 RIP: 41e762	 Bytes: 0
block_.L_41e762:

  ; Code: movq $0x45794d, %rsi	 RIP: 41e762	 Bytes: 10
  %loadMem_41e762 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e762 = call %struct.Memory* @routine_movq__0x45794d___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e762)
  store %struct.Memory* %call_41e762, %struct.Memory** %MEMORY

  ; Code: movl $0x7, %eax	 RIP: 41e76c	 Bytes: 5
  %loadMem_41e76c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e76c = call %struct.Memory* @routine_movl__0x7___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e76c)
  store %struct.Memory* %call_41e76c, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 41e771	 Bytes: 2
  %loadMem_41e771 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e771 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e771)
  store %struct.Memory* %call_41e771, %struct.Memory** %MEMORY

  ; Code: leaq -0x220(%rbp), %rcx	 RIP: 41e773	 Bytes: 7
  %loadMem_41e773 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e773 = call %struct.Memory* @routine_leaq_MINUS0x220__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e773)
  store %struct.Memory* %call_41e773, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rcx	 RIP: 41e77a	 Bytes: 4
  %loadMem_41e77a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e77a = call %struct.Memory* @routine_addq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e77a)
  store %struct.Memory* %call_41e77a, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 41e77e	 Bytes: 3
  %loadMem_41e77e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e77e = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e77e)
  store %struct.Memory* %call_41e77e, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 41e781	 Bytes: 5
  %loadMem1_41e781 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41e781 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41e781, i64 -119729, i64 5, i64 5)
  store %struct.Memory* %call1_41e781, %struct.Memory** %MEMORY

  %loadMem2_41e781 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41e781 = load i64, i64* %3
  %call2_41e781 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_41e781, %struct.Memory* %loadMem2_41e781)
  store %struct.Memory* %call2_41e781, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41e786	 Bytes: 3
  %loadMem_41e786 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e786 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e786)
  store %struct.Memory* %call_41e786, %struct.Memory** %MEMORY

  ; Code: jne .L_41e79e	 RIP: 41e789	 Bytes: 6
  %loadMem_41e789 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e789 = call %struct.Memory* @routine_jne_.L_41e79e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e789, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_41e789, %struct.Memory** %MEMORY

  %loadBr_41e789 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41e789 = icmp eq i8 %loadBr_41e789, 1
  br i1 %cmpBr_41e789, label %block_.L_41e79e, label %block_41e78f

block_41e78f:
  ; Code: movl $0x2, -0x23c(%rbp)	 RIP: 41e78f	 Bytes: 10
  %loadMem_41e78f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e78f = call %struct.Memory* @routine_movl__0x2__MINUS0x23c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e78f)
  store %struct.Memory* %call_41e78f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41e7a3	 RIP: 41e799	 Bytes: 5
  %loadMem_41e799 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e799 = call %struct.Memory* @routine_jmpq_.L_41e7a3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e799, i64 10, i64 5)
  store %struct.Memory* %call_41e799, %struct.Memory** %MEMORY

  br label %block_.L_41e7a3

  ; Code: .L_41e79e:	 RIP: 41e79e	 Bytes: 0
block_.L_41e79e:

  ; Code: jmpq .L_41f8de	 RIP: 41e79e	 Bytes: 5
  %loadMem_41e79e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e79e = call %struct.Memory* @routine_jmpq_.L_41f8de(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e79e, i64 4416, i64 5)
  store %struct.Memory* %call_41e79e, %struct.Memory** %MEMORY

  br label %block_.L_41f8de

  ; Code: .L_41e7a3:	 RIP: 41e7a3	 Bytes: 0
block_.L_41e7a3:

  ; Code: jmpq .L_41e7a8	 RIP: 41e7a3	 Bytes: 5
  %loadMem_41e7a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e7a3 = call %struct.Memory* @routine_jmpq_.L_41e7a8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e7a3, i64 5, i64 5)
  store %struct.Memory* %call_41e7a3, %struct.Memory** %MEMORY

  br label %block_.L_41e7a8

  ; Code: .L_41e7a8:	 RIP: 41e7a8	 Bytes: 0
block_.L_41e7a8:

  ; Code: cmpl $0x0, 0x676d90	 RIP: 41e7a8	 Bytes: 8
  %loadMem_41e7a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e7a8 = call %struct.Memory* @routine_cmpl__0x0__0x676d90(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e7a8)
  store %struct.Memory* %call_41e7a8, %struct.Memory** %MEMORY

  ; Code: jne .L_41e7c6	 RIP: 41e7b0	 Bytes: 6
  %loadMem_41e7b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e7b0 = call %struct.Memory* @routine_jne_.L_41e7c6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e7b0, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_41e7b0, %struct.Memory** %MEMORY

  %loadBr_41e7b0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41e7b0 = icmp eq i8 %loadBr_41e7b0, 1
  br i1 %cmpBr_41e7b0, label %block_.L_41e7c6, label %block_41e7b6

block_41e7b6:
  ; Code: movl -0x23c(%rbp), %edi	 RIP: 41e7b6	 Bytes: 6
  %loadMem_41e7b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e7b6 = call %struct.Memory* @routine_movl_MINUS0x23c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e7b6)
  store %struct.Memory* %call_41e7b6, %struct.Memory** %MEMORY

  ; Code: callq .SetAlphabet	 RIP: 41e7bc	 Bytes: 5
  %loadMem1_41e7bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41e7bc = call %struct.Memory* @routine_callq_.SetAlphabet(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41e7bc, i64 -105244, i64 5, i64 5)
  store %struct.Memory* %call1_41e7bc, %struct.Memory** %MEMORY

  %loadMem2_41e7bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41e7bc = load i64, i64* %3
  %call2_41e7bc = call %struct.Memory* @sub_404ca0.SetAlphabet(%struct.State* %0, i64  %loadPC_41e7bc, %struct.Memory* %loadMem2_41e7bc)
  store %struct.Memory* %call2_41e7bc, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41e817	 RIP: 41e7c1	 Bytes: 5
  %loadMem_41e7c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e7c1 = call %struct.Memory* @routine_jmpq_.L_41e817(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e7c1, i64 86, i64 5)
  store %struct.Memory* %call_41e7c1, %struct.Memory** %MEMORY

  br label %block_.L_41e817

  ; Code: .L_41e7c6:	 RIP: 41e7c6	 Bytes: 0
block_.L_41e7c6:

  ; Code: movl -0x23c(%rbp), %eax	 RIP: 41e7c6	 Bytes: 6
  %loadMem_41e7c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e7c6 = call %struct.Memory* @routine_movl_MINUS0x23c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e7c6)
  store %struct.Memory* %call_41e7c6, %struct.Memory** %MEMORY

  ; Code: cmpl 0x676d90, %eax	 RIP: 41e7cc	 Bytes: 7
  %loadMem_41e7cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e7cc = call %struct.Memory* @routine_cmpl_0x676d90___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e7cc)
  store %struct.Memory* %call_41e7cc, %struct.Memory** %MEMORY

  ; Code: je .L_41e812	 RIP: 41e7d3	 Bytes: 6
  %loadMem_41e7d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e7d3 = call %struct.Memory* @routine_je_.L_41e812(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e7d3, i8* %BRANCH_TAKEN, i64 63, i64 6, i64 6)
  store %struct.Memory* %call_41e7d3, %struct.Memory** %MEMORY

  %loadBr_41e7d3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41e7d3 = icmp eq i8 %loadBr_41e7d3, 1
  br i1 %cmpBr_41e7d3, label %block_.L_41e812, label %block_41e7d9

block_41e7d9:
  ; Code: movl 0x676d90, %edi	 RIP: 41e7d9	 Bytes: 7
  %loadMem_41e7d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e7d9 = call %struct.Memory* @routine_movl_0x676d90___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e7d9)
  store %struct.Memory* %call_41e7d9, %struct.Memory** %MEMORY

  ; Code: callq .AlphabetType2String	 RIP: 41e7e0	 Bytes: 5
  %loadMem1_41e7e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41e7e0 = call %struct.Memory* @routine_callq_.AlphabetType2String(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41e7e0, i64 -55680, i64 5, i64 5)
  store %struct.Memory* %call1_41e7e0, %struct.Memory** %MEMORY

  %loadMem2_41e7e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41e7e0 = load i64, i64* %3
  %call2_41e7e0 = call %struct.Memory* @sub_410e60.AlphabetType2String(%struct.State* %0, i64  %loadPC_41e7e0, %struct.Memory* %loadMem2_41e7e0)
  store %struct.Memory* %call2_41e7e0, %struct.Memory** %MEMORY

  ; Code: movl -0x23c(%rbp), %edi	 RIP: 41e7e5	 Bytes: 6
  %loadMem_41e7e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e7e5 = call %struct.Memory* @routine_movl_MINUS0x23c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e7e5)
  store %struct.Memory* %call_41e7e5, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x248(%rbp)	 RIP: 41e7eb	 Bytes: 7
  %loadMem_41e7eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e7eb = call %struct.Memory* @routine_movq__rax__MINUS0x248__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e7eb)
  store %struct.Memory* %call_41e7eb, %struct.Memory** %MEMORY

  ; Code: callq .AlphabetType2String	 RIP: 41e7f2	 Bytes: 5
  %loadMem1_41e7f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41e7f2 = call %struct.Memory* @routine_callq_.AlphabetType2String(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41e7f2, i64 -55698, i64 5, i64 5)
  store %struct.Memory* %call1_41e7f2, %struct.Memory** %MEMORY

  %loadMem2_41e7f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41e7f2 = load i64, i64* %3
  %call2_41e7f2 = call %struct.Memory* @sub_410e60.AlphabetType2String(%struct.State* %0, i64  %loadPC_41e7f2, %struct.Memory* %loadMem2_41e7f2)
  store %struct.Memory* %call2_41e7f2, %struct.Memory** %MEMORY

  ; Code: movq $0x457899, %rdi	 RIP: 41e7f7	 Bytes: 10
  %loadMem_41e7f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e7f7 = call %struct.Memory* @routine_movq__0x457899___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e7f7)
  store %struct.Memory* %call_41e7f7, %struct.Memory** %MEMORY

  ; Code: movq -0x248(%rbp), %rsi	 RIP: 41e801	 Bytes: 7
  %loadMem_41e801 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e801 = call %struct.Memory* @routine_movq_MINUS0x248__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e801)
  store %struct.Memory* %call_41e801, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 41e808	 Bytes: 3
  %loadMem_41e808 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e808 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e808)
  store %struct.Memory* %call_41e808, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 41e80b	 Bytes: 2
  %loadMem_41e80b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e80b = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e80b)
  store %struct.Memory* %call_41e80b, %struct.Memory** %MEMORY

  ; Code: callq .Die	 RIP: 41e80d	 Bytes: 5
  %loadMem1_41e80d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41e80d = call %struct.Memory* @routine_callq_.Die(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41e80d, i64 131587, i64 5, i64 5)
  store %struct.Memory* %call1_41e80d, %struct.Memory** %MEMORY

  %loadMem2_41e80d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41e80d = load i64, i64* %3
  %call2_41e80d = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64  %loadPC_41e80d, %struct.Memory* %loadMem2_41e80d)
  store %struct.Memory* %call2_41e80d, %struct.Memory** %MEMORY

  ; Code: .L_41e812:	 RIP: 41e812	 Bytes: 0
  br label %block_.L_41e812
block_.L_41e812:

  ; Code: jmpq .L_41e817	 RIP: 41e812	 Bytes: 5
  %loadMem_41e812 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e812 = call %struct.Memory* @routine_jmpq_.L_41e817(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e812, i64 5, i64 5)
  store %struct.Memory* %call_41e812, %struct.Memory** %MEMORY

  br label %block_.L_41e817

  ; Code: .L_41e817:	 RIP: 41e817	 Bytes: 0
block_.L_41e817:

  ; Code: jmpq .L_41f1de	 RIP: 41e817	 Bytes: 5
  %loadMem_41e817 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e817 = call %struct.Memory* @routine_jmpq_.L_41f1de(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e817, i64 2503, i64 5)
  store %struct.Memory* %call_41e817, %struct.Memory** %MEMORY

  br label %block_.L_41f1de

  ; Code: .L_41e81c:	 RIP: 41e81c	 Bytes: 0
block_.L_41e81c:

  ; Code: movq $0x45797e, %rsi	 RIP: 41e81c	 Bytes: 10
  %loadMem_41e81c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e81c = call %struct.Memory* @routine_movq__0x45797e___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e81c)
  store %struct.Memory* %call_41e81c, %struct.Memory** %MEMORY

  ; Code: movl $0x5, %eax	 RIP: 41e826	 Bytes: 5
  %loadMem_41e826 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e826 = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e826)
  store %struct.Memory* %call_41e826, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 41e82b	 Bytes: 2
  %loadMem_41e82b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e82b = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e82b)
  store %struct.Memory* %call_41e82b, %struct.Memory** %MEMORY

  ; Code: leaq -0x220(%rbp), %rdi	 RIP: 41e82d	 Bytes: 7
  %loadMem_41e82d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e82d = call %struct.Memory* @routine_leaq_MINUS0x220__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e82d)
  store %struct.Memory* %call_41e82d, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 41e834	 Bytes: 5
  %loadMem1_41e834 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41e834 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41e834, i64 -119908, i64 5, i64 5)
  store %struct.Memory* %call1_41e834, %struct.Memory** %MEMORY

  %loadMem2_41e834 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41e834 = load i64, i64* %3
  %call2_41e834 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_41e834, %struct.Memory* %loadMem2_41e834)
  store %struct.Memory* %call2_41e834, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41e839	 Bytes: 3
  %loadMem_41e839 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e839 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e839)
  store %struct.Memory* %call_41e839, %struct.Memory** %MEMORY

  ; Code: jne .L_41e86f	 RIP: 41e83c	 Bytes: 6
  %loadMem_41e83c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e83c = call %struct.Memory* @routine_jne_.L_41e86f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e83c, i8* %BRANCH_TAKEN, i64 51, i64 6, i64 6)
  store %struct.Memory* %call_41e83c, %struct.Memory** %MEMORY

  %loadBr_41e83c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41e83c = icmp eq i8 %loadBr_41e83c, 1
  br i1 %cmpBr_41e83c, label %block_.L_41e86f, label %block_41e842

block_41e842:
  ; Code: movsbl -0x21a(%rbp), %edi	 RIP: 41e842	 Bytes: 7
  %loadMem_41e842 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e842 = call %struct.Memory* @routine_movsbl_MINUS0x21a__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e842)
  store %struct.Memory* %call_41e842, %struct.Memory** %MEMORY

  ; Code: callq .sre_toupper	 RIP: 41e849	 Bytes: 5
  %loadMem1_41e849 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41e849 = call %struct.Memory* @routine_callq_.sre_toupper(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41e849, i64 155719, i64 5, i64 5)
  store %struct.Memory* %call1_41e849, %struct.Memory** %MEMORY

  %loadMem2_41e849 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41e849 = load i64, i64* %3
  %call2_41e849 = call %struct.Memory* @sub_444890.sre_toupper(%struct.State* %0, i64  %loadPC_41e849, %struct.Memory* %loadMem2_41e849)
  store %struct.Memory* %call2_41e849, %struct.Memory** %MEMORY

  ; Code: cmpl $0x59, %eax	 RIP: 41e84e	 Bytes: 3
  %loadMem_41e84e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e84e = call %struct.Memory* @routine_cmpl__0x59___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e84e)
  store %struct.Memory* %call_41e84e, %struct.Memory** %MEMORY

  ; Code: jne .L_41e86a	 RIP: 41e851	 Bytes: 6
  %loadMem_41e851 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e851 = call %struct.Memory* @routine_jne_.L_41e86a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e851, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_41e851, %struct.Memory** %MEMORY

  %loadBr_41e851 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41e851 = icmp eq i8 %loadBr_41e851, 1
  br i1 %cmpBr_41e851, label %block_.L_41e86a, label %block_41e857

block_41e857:
  ; Code: movq -0x20(%rbp), %rax	 RIP: 41e857	 Bytes: 4
  %loadMem_41e857 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e857 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e857)
  store %struct.Memory* %call_41e857, %struct.Memory** %MEMORY

  ; Code: movl 0x1c8(%rax), %ecx	 RIP: 41e85b	 Bytes: 6
  %loadMem_41e85b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e85b = call %struct.Memory* @routine_movl_0x1c8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e85b)
  store %struct.Memory* %call_41e85b, %struct.Memory** %MEMORY

  ; Code: orl $0x4, %ecx	 RIP: 41e861	 Bytes: 3
  %loadMem_41e861 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e861 = call %struct.Memory* @routine_orl__0x4___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e861)
  store %struct.Memory* %call_41e861, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x1c8(%rax)	 RIP: 41e864	 Bytes: 6
  %loadMem_41e864 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e864 = call %struct.Memory* @routine_movl__ecx__0x1c8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e864)
  store %struct.Memory* %call_41e864, %struct.Memory** %MEMORY

  ; Code: .L_41e86a:	 RIP: 41e86a	 Bytes: 0
  br label %block_.L_41e86a
block_.L_41e86a:

  ; Code: jmpq .L_41f1d9	 RIP: 41e86a	 Bytes: 5
  %loadMem_41e86a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e86a = call %struct.Memory* @routine_jmpq_.L_41f1d9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e86a, i64 2415, i64 5)
  store %struct.Memory* %call_41e86a, %struct.Memory** %MEMORY

  br label %block_.L_41f1d9

  ; Code: .L_41e86f:	 RIP: 41e86f	 Bytes: 0
block_.L_41e86f:

  ; Code: movq $0x457984, %rsi	 RIP: 41e86f	 Bytes: 10
  %loadMem_41e86f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e86f = call %struct.Memory* @routine_movq__0x457984___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e86f)
  store %struct.Memory* %call_41e86f, %struct.Memory** %MEMORY

  ; Code: movl $0x5, %eax	 RIP: 41e879	 Bytes: 5
  %loadMem_41e879 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e879 = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e879)
  store %struct.Memory* %call_41e879, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 41e87e	 Bytes: 2
  %loadMem_41e87e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e87e = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e87e)
  store %struct.Memory* %call_41e87e, %struct.Memory** %MEMORY

  ; Code: leaq -0x220(%rbp), %rdi	 RIP: 41e880	 Bytes: 7
  %loadMem_41e880 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e880 = call %struct.Memory* @routine_leaq_MINUS0x220__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e880)
  store %struct.Memory* %call_41e880, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 41e887	 Bytes: 5
  %loadMem1_41e887 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41e887 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41e887, i64 -119991, i64 5, i64 5)
  store %struct.Memory* %call1_41e887, %struct.Memory** %MEMORY

  %loadMem2_41e887 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41e887 = load i64, i64* %3
  %call2_41e887 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_41e887, %struct.Memory* %loadMem2_41e887)
  store %struct.Memory* %call2_41e887, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41e88c	 Bytes: 3
  %loadMem_41e88c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e88c = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e88c)
  store %struct.Memory* %call_41e88c, %struct.Memory** %MEMORY

  ; Code: jne .L_41e8c2	 RIP: 41e88f	 Bytes: 6
  %loadMem_41e88f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e88f = call %struct.Memory* @routine_jne_.L_41e8c2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e88f, i8* %BRANCH_TAKEN, i64 51, i64 6, i64 6)
  store %struct.Memory* %call_41e88f, %struct.Memory** %MEMORY

  %loadBr_41e88f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41e88f = icmp eq i8 %loadBr_41e88f, 1
  br i1 %cmpBr_41e88f, label %block_.L_41e8c2, label %block_41e895

block_41e895:
  ; Code: movsbl -0x21a(%rbp), %edi	 RIP: 41e895	 Bytes: 7
  %loadMem_41e895 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e895 = call %struct.Memory* @routine_movsbl_MINUS0x21a__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e895)
  store %struct.Memory* %call_41e895, %struct.Memory** %MEMORY

  ; Code: callq .sre_toupper	 RIP: 41e89c	 Bytes: 5
  %loadMem1_41e89c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41e89c = call %struct.Memory* @routine_callq_.sre_toupper(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41e89c, i64 155636, i64 5, i64 5)
  store %struct.Memory* %call1_41e89c, %struct.Memory** %MEMORY

  %loadMem2_41e89c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41e89c = load i64, i64* %3
  %call2_41e89c = call %struct.Memory* @sub_444890.sre_toupper(%struct.State* %0, i64  %loadPC_41e89c, %struct.Memory* %loadMem2_41e89c)
  store %struct.Memory* %call2_41e89c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x59, %eax	 RIP: 41e8a1	 Bytes: 3
  %loadMem_41e8a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e8a1 = call %struct.Memory* @routine_cmpl__0x59___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e8a1)
  store %struct.Memory* %call_41e8a1, %struct.Memory** %MEMORY

  ; Code: jne .L_41e8bd	 RIP: 41e8a4	 Bytes: 6
  %loadMem_41e8a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e8a4 = call %struct.Memory* @routine_jne_.L_41e8bd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e8a4, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_41e8a4, %struct.Memory** %MEMORY

  %loadBr_41e8a4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41e8a4 = icmp eq i8 %loadBr_41e8a4, 1
  br i1 %cmpBr_41e8a4, label %block_.L_41e8bd, label %block_41e8aa

block_41e8aa:
  ; Code: movq -0x20(%rbp), %rax	 RIP: 41e8aa	 Bytes: 4
  %loadMem_41e8aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e8aa = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e8aa)
  store %struct.Memory* %call_41e8aa, %struct.Memory** %MEMORY

  ; Code: movl 0x1c8(%rax), %ecx	 RIP: 41e8ae	 Bytes: 6
  %loadMem_41e8ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e8ae = call %struct.Memory* @routine_movl_0x1c8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e8ae)
  store %struct.Memory* %call_41e8ae, %struct.Memory** %MEMORY

  ; Code: orl $0x8, %ecx	 RIP: 41e8b4	 Bytes: 3
  %loadMem_41e8b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e8b4 = call %struct.Memory* @routine_orl__0x8___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e8b4)
  store %struct.Memory* %call_41e8b4, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x1c8(%rax)	 RIP: 41e8b7	 Bytes: 6
  %loadMem_41e8b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e8b7 = call %struct.Memory* @routine_movl__ecx__0x1c8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e8b7)
  store %struct.Memory* %call_41e8b7, %struct.Memory** %MEMORY

  ; Code: .L_41e8bd:	 RIP: 41e8bd	 Bytes: 0
  br label %block_.L_41e8bd
block_.L_41e8bd:

  ; Code: jmpq .L_41f1d4	 RIP: 41e8bd	 Bytes: 5
  %loadMem_41e8bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e8bd = call %struct.Memory* @routine_jmpq_.L_41f1d4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e8bd, i64 2327, i64 5)
  store %struct.Memory* %call_41e8bd, %struct.Memory** %MEMORY

  br label %block_.L_41f1d4

  ; Code: .L_41e8c2:	 RIP: 41e8c2	 Bytes: 0
block_.L_41e8c2:

  ; Code: movq $0x45798a, %rsi	 RIP: 41e8c2	 Bytes: 10
  %loadMem_41e8c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e8c2 = call %struct.Memory* @routine_movq__0x45798a___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e8c2)
  store %struct.Memory* %call_41e8c2, %struct.Memory** %MEMORY

  ; Code: movl $0x5, %eax	 RIP: 41e8cc	 Bytes: 5
  %loadMem_41e8cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e8cc = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e8cc)
  store %struct.Memory* %call_41e8cc, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 41e8d1	 Bytes: 2
  %loadMem_41e8d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e8d1 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e8d1)
  store %struct.Memory* %call_41e8d1, %struct.Memory** %MEMORY

  ; Code: leaq -0x220(%rbp), %rdi	 RIP: 41e8d3	 Bytes: 7
  %loadMem_41e8d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e8d3 = call %struct.Memory* @routine_leaq_MINUS0x220__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e8d3)
  store %struct.Memory* %call_41e8d3, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 41e8da	 Bytes: 5
  %loadMem1_41e8da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41e8da = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41e8da, i64 -120074, i64 5, i64 5)
  store %struct.Memory* %call1_41e8da, %struct.Memory** %MEMORY

  %loadMem2_41e8da = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41e8da = load i64, i64* %3
  %call2_41e8da = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_41e8da, %struct.Memory* %loadMem2_41e8da)
  store %struct.Memory* %call2_41e8da, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41e8df	 Bytes: 3
  %loadMem_41e8df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e8df = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e8df)
  store %struct.Memory* %call_41e8df, %struct.Memory** %MEMORY

  ; Code: jne .L_41e918	 RIP: 41e8e2	 Bytes: 6
  %loadMem_41e8e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e8e2 = call %struct.Memory* @routine_jne_.L_41e918(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e8e2, i8* %BRANCH_TAKEN, i64 54, i64 6, i64 6)
  store %struct.Memory* %call_41e8e2, %struct.Memory** %MEMORY

  %loadBr_41e8e2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41e8e2 = icmp eq i8 %loadBr_41e8e2, 1
  br i1 %cmpBr_41e8e2, label %block_.L_41e918, label %block_41e8e8

block_41e8e8:
  ; Code: movsbl -0x21a(%rbp), %edi	 RIP: 41e8e8	 Bytes: 7
  %loadMem_41e8e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e8e8 = call %struct.Memory* @routine_movsbl_MINUS0x21a__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e8e8)
  store %struct.Memory* %call_41e8e8, %struct.Memory** %MEMORY

  ; Code: callq .sre_toupper	 RIP: 41e8ef	 Bytes: 5
  %loadMem1_41e8ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41e8ef = call %struct.Memory* @routine_callq_.sre_toupper(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41e8ef, i64 155553, i64 5, i64 5)
  store %struct.Memory* %call1_41e8ef, %struct.Memory** %MEMORY

  %loadMem2_41e8ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41e8ef = load i64, i64* %3
  %call2_41e8ef = call %struct.Memory* @sub_444890.sre_toupper(%struct.State* %0, i64  %loadPC_41e8ef, %struct.Memory* %loadMem2_41e8ef)
  store %struct.Memory* %call2_41e8ef, %struct.Memory** %MEMORY

  ; Code: cmpl $0x59, %eax	 RIP: 41e8f4	 Bytes: 3
  %loadMem_41e8f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e8f4 = call %struct.Memory* @routine_cmpl__0x59___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e8f4)
  store %struct.Memory* %call_41e8f4, %struct.Memory** %MEMORY

  ; Code: jne .L_41e913	 RIP: 41e8f7	 Bytes: 6
  %loadMem_41e8f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e8f7 = call %struct.Memory* @routine_jne_.L_41e913(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e8f7, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_41e8f7, %struct.Memory** %MEMORY

  %loadBr_41e8f7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41e8f7 = icmp eq i8 %loadBr_41e8f7, 1
  br i1 %cmpBr_41e8f7, label %block_.L_41e913, label %block_41e8fd

block_41e8fd:
  ; Code: movq -0x20(%rbp), %rax	 RIP: 41e8fd	 Bytes: 4
  %loadMem_41e8fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e8fd = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e8fd)
  store %struct.Memory* %call_41e8fd, %struct.Memory** %MEMORY

  ; Code: movl 0x1c8(%rax), %ecx	 RIP: 41e901	 Bytes: 6
  %loadMem_41e901 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e901 = call %struct.Memory* @routine_movl_0x1c8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e901)
  store %struct.Memory* %call_41e901, %struct.Memory** %MEMORY

  ; Code: orl $0x100, %ecx	 RIP: 41e907	 Bytes: 6
  %loadMem_41e907 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e907 = call %struct.Memory* @routine_orl__0x100___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e907)
  store %struct.Memory* %call_41e907, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x1c8(%rax)	 RIP: 41e90d	 Bytes: 6
  %loadMem_41e90d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e90d = call %struct.Memory* @routine_movl__ecx__0x1c8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e90d)
  store %struct.Memory* %call_41e90d, %struct.Memory** %MEMORY

  ; Code: .L_41e913:	 RIP: 41e913	 Bytes: 0
  br label %block_.L_41e913
block_.L_41e913:

  ; Code: jmpq .L_41f1cf	 RIP: 41e913	 Bytes: 5
  %loadMem_41e913 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e913 = call %struct.Memory* @routine_jmpq_.L_41f1cf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e913, i64 2236, i64 5)
  store %struct.Memory* %call_41e913, %struct.Memory** %MEMORY

  br label %block_.L_41f1cf

  ; Code: .L_41e918:	 RIP: 41e918	 Bytes: 0
block_.L_41e918:

  ; Code: movq $0x457990, %rsi	 RIP: 41e918	 Bytes: 10
  %loadMem_41e918 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e918 = call %struct.Memory* @routine_movq__0x457990___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e918)
  store %struct.Memory* %call_41e918, %struct.Memory** %MEMORY

  ; Code: movl $0x5, %eax	 RIP: 41e922	 Bytes: 5
  %loadMem_41e922 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e922 = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e922)
  store %struct.Memory* %call_41e922, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 41e927	 Bytes: 2
  %loadMem_41e927 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e927 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e927)
  store %struct.Memory* %call_41e927, %struct.Memory** %MEMORY

  ; Code: leaq -0x220(%rbp), %rdi	 RIP: 41e929	 Bytes: 7
  %loadMem_41e929 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e929 = call %struct.Memory* @routine_leaq_MINUS0x220__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e929)
  store %struct.Memory* %call_41e929, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 41e930	 Bytes: 5
  %loadMem1_41e930 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41e930 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41e930, i64 -120160, i64 5, i64 5)
  store %struct.Memory* %call1_41e930, %struct.Memory** %MEMORY

  %loadMem2_41e930 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41e930 = load i64, i64* %3
  %call2_41e930 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_41e930, %struct.Memory* %loadMem2_41e930)
  store %struct.Memory* %call2_41e930, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41e935	 Bytes: 3
  %loadMem_41e935 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e935 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e935)
  store %struct.Memory* %call_41e935, %struct.Memory** %MEMORY

  ; Code: jne .L_41ea5b	 RIP: 41e938	 Bytes: 6
  %loadMem_41e938 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e938 = call %struct.Memory* @routine_jne_.L_41ea5b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e938, i8* %BRANCH_TAKEN, i64 291, i64 6, i64 6)
  store %struct.Memory* %call_41e938, %struct.Memory** %MEMORY

  %loadBr_41e938 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41e938 = icmp eq i8 %loadBr_41e938, 1
  br i1 %cmpBr_41e938, label %block_.L_41ea5b, label %block_41e93e

block_41e93e:
  ; Code: leaq -0x220(%rbp), %rax	 RIP: 41e93e	 Bytes: 7
  %loadMem_41e93e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e93e = call %struct.Memory* @routine_leaq_MINUS0x220__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e93e)
  store %struct.Memory* %call_41e93e, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rax	 RIP: 41e945	 Bytes: 4
  %loadMem_41e945 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e945 = call %struct.Memory* @routine_addq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e945)
  store %struct.Memory* %call_41e945, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 41e949	 Bytes: 3
  %loadMem_41e949 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e949 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e949)
  store %struct.Memory* %call_41e949, %struct.Memory** %MEMORY

  ; Code: callq .StringChop	 RIP: 41e94c	 Bytes: 5
  %loadMem1_41e94c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41e94c = call %struct.Memory* @routine_callq_.StringChop(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41e94c, i64 161060, i64 5, i64 5)
  store %struct.Memory* %call1_41e94c, %struct.Memory** %MEMORY

  %loadMem2_41e94c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41e94c = load i64, i64* %3
  %call2_41e94c = call %struct.Memory* @sub_445e70.StringChop(%struct.State* %0, i64  %loadPC_41e94c, %struct.Memory* %loadMem2_41e94c)
  store %struct.Memory* %call2_41e94c, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41e951	 Bytes: 4
  %loadMem_41e951 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e951 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e951)
  store %struct.Memory* %call_41e951, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x30(%rax)	 RIP: 41e955	 Bytes: 5
  %loadMem_41e955 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e955 = call %struct.Memory* @routine_cmpq__0x0__0x30__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e955)
  store %struct.Memory* %call_41e955, %struct.Memory** %MEMORY

  ; Code: jne .L_41e980	 RIP: 41e95a	 Bytes: 6
  %loadMem_41e95a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e95a = call %struct.Memory* @routine_jne_.L_41e980(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e95a, i8* %BRANCH_TAKEN, i64 38, i64 6, i64 6)
  store %struct.Memory* %call_41e95a, %struct.Memory** %MEMORY

  %loadBr_41e95a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41e95a = icmp eq i8 %loadBr_41e95a, 1
  br i1 %cmpBr_41e95a, label %block_.L_41e980, label %block_41e960

block_41e960:
  ; Code: leaq -0x220(%rbp), %rax	 RIP: 41e960	 Bytes: 7
  %loadMem_41e960 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e960 = call %struct.Memory* @routine_leaq_MINUS0x220__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e960)
  store %struct.Memory* %call_41e960, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rax	 RIP: 41e967	 Bytes: 4
  %loadMem_41e967 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e967 = call %struct.Memory* @routine_addq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e967)
  store %struct.Memory* %call_41e967, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 41e96b	 Bytes: 3
  %loadMem_41e96b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e96b = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e96b)
  store %struct.Memory* %call_41e96b, %struct.Memory** %MEMORY

  ; Code: callq .Strdup	 RIP: 41e96e	 Bytes: 5
  %loadMem1_41e96e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41e96e = call %struct.Memory* @routine_callq_.Strdup(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41e96e, i64 160898, i64 5, i64 5)
  store %struct.Memory* %call1_41e96e, %struct.Memory** %MEMORY

  %loadMem2_41e96e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41e96e = load i64, i64* %3
  %call2_41e96e = call %struct.Memory* @sub_445df0.Strdup(%struct.State* %0, i64  %loadPC_41e96e, %struct.Memory* %loadMem2_41e96e)
  store %struct.Memory* %call2_41e96e, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 41e973	 Bytes: 4
  %loadMem_41e973 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e973 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e973)
  store %struct.Memory* %call_41e973, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x30(%rdi)	 RIP: 41e977	 Bytes: 4
  %loadMem_41e977 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e977 = call %struct.Memory* @routine_movq__rax__0x30__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e977)
  store %struct.Memory* %call_41e977, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41ea56	 RIP: 41e97b	 Bytes: 5
  %loadMem_41e97b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e97b = call %struct.Memory* @routine_jmpq_.L_41ea56(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e97b, i64 219, i64 5)
  store %struct.Memory* %call_41e97b, %struct.Memory** %MEMORY

  br label %block_.L_41ea56

  ; Code: .L_41e980:	 RIP: 41e980	 Bytes: 0
block_.L_41e980:

  ; Code: movq $0x45763b, %rdi	 RIP: 41e980	 Bytes: 10
  %loadMem_41e980 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e980 = call %struct.Memory* @routine_movq__0x45763b___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e980)
  store %struct.Memory* %call_41e980, %struct.Memory** %MEMORY

  ; Code: movl $0x270, %esi	 RIP: 41e98a	 Bytes: 5
  %loadMem_41e98a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e98a = call %struct.Memory* @routine_movl__0x270___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e98a)
  store %struct.Memory* %call_41e98a, %struct.Memory** %MEMORY

  ; Code: leaq -0x220(%rbp), %rax	 RIP: 41e98f	 Bytes: 7
  %loadMem_41e98f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e98f = call %struct.Memory* @routine_leaq_MINUS0x220__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e98f)
  store %struct.Memory* %call_41e98f, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41e996	 Bytes: 4
  %loadMem_41e996 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e996 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e996)
  store %struct.Memory* %call_41e996, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rcx), %rdx	 RIP: 41e99a	 Bytes: 4
  %loadMem_41e99a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e99a = call %struct.Memory* @routine_movq_0x30__rcx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e99a)
  store %struct.Memory* %call_41e99a, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41e99e	 Bytes: 4
  %loadMem_41e99e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e99e = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e99e)
  store %struct.Memory* %call_41e99e, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rcx), %rcx	 RIP: 41e9a2	 Bytes: 4
  %loadMem_41e9a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e9a2 = call %struct.Memory* @routine_movq_0x30__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e9a2)
  store %struct.Memory* %call_41e9a2, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x250(%rbp)	 RIP: 41e9a6	 Bytes: 7
  %loadMem_41e9a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e9a6 = call %struct.Memory* @routine_movq__rdi__MINUS0x250__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e9a6)
  store %struct.Memory* %call_41e9a6, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 41e9ad	 Bytes: 3
  %loadMem_41e9ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e9ad = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e9ad)
  store %struct.Memory* %call_41e9ad, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x258(%rbp)	 RIP: 41e9b0	 Bytes: 7
  %loadMem_41e9b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e9b0 = call %struct.Memory* @routine_movq__rdx__MINUS0x258__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e9b0)
  store %struct.Memory* %call_41e9b0, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x25c(%rbp)	 RIP: 41e9b7	 Bytes: 6
  %loadMem_41e9b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e9b7 = call %struct.Memory* @routine_movl__esi__MINUS0x25c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e9b7)
  store %struct.Memory* %call_41e9b7, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x268(%rbp)	 RIP: 41e9bd	 Bytes: 7
  %loadMem_41e9bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e9bd = call %struct.Memory* @routine_movq__rax__MINUS0x268__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e9bd)
  store %struct.Memory* %call_41e9bd, %struct.Memory** %MEMORY

  ; Code: callq .strlen_plt	 RIP: 41e9c4	 Bytes: 5
  %loadMem1_41e9c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41e9c4 = call %struct.Memory* @routine_callq_.strlen_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41e9c4, i64 -120164, i64 5, i64 5)
  store %struct.Memory* %call1_41e9c4, %struct.Memory** %MEMORY

  %loadMem2_41e9c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41e9c4 = load i64, i64* %3
  %call2_41e9c4 = call %struct.Memory* @ext_strlen(%struct.State* %0, i64  %loadPC_41e9c4, %struct.Memory* %loadMem2_41e9c4)
  store %struct.Memory* %call2_41e9c4, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rax	 RIP: 41e9c9	 Bytes: 4
  %loadMem_41e9c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e9c9 = call %struct.Memory* @routine_addq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e9c9)
  store %struct.Memory* %call_41e9c9, %struct.Memory** %MEMORY

  ; Code: movq -0x268(%rbp), %rcx	 RIP: 41e9cd	 Bytes: 7
  %loadMem_41e9cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e9cd = call %struct.Memory* @routine_movq_MINUS0x268__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e9cd)
  store %struct.Memory* %call_41e9cd, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rcx	 RIP: 41e9d4	 Bytes: 4
  %loadMem_41e9d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e9d4 = call %struct.Memory* @routine_addq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e9d4)
  store %struct.Memory* %call_41e9d4, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 41e9d8	 Bytes: 3
  %loadMem_41e9d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e9d8 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e9d8)
  store %struct.Memory* %call_41e9d8, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x270(%rbp)	 RIP: 41e9db	 Bytes: 7
  %loadMem_41e9db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e9db = call %struct.Memory* @routine_movq__rax__MINUS0x270__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e9db)
  store %struct.Memory* %call_41e9db, %struct.Memory** %MEMORY

  ; Code: callq .strlen_plt	 RIP: 41e9e2	 Bytes: 5
  %loadMem1_41e9e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41e9e2 = call %struct.Memory* @routine_callq_.strlen_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41e9e2, i64 -120194, i64 5, i64 5)
  store %struct.Memory* %call1_41e9e2, %struct.Memory** %MEMORY

  %loadMem2_41e9e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41e9e2 = load i64, i64* %3
  %call2_41e9e2 = call %struct.Memory* @ext_strlen(%struct.State* %0, i64  %loadPC_41e9e2, %struct.Memory* %loadMem2_41e9e2)
  store %struct.Memory* %call2_41e9e2, %struct.Memory** %MEMORY

  ; Code: movq -0x270(%rbp), %rcx	 RIP: 41e9e7	 Bytes: 7
  %loadMem_41e9e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e9e7 = call %struct.Memory* @routine_movq_MINUS0x270__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e9e7)
  store %struct.Memory* %call_41e9e7, %struct.Memory** %MEMORY

  ; Code: addq %rax, %rcx	 RIP: 41e9ee	 Bytes: 3
  %loadMem_41e9ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e9ee = call %struct.Memory* @routine_addq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e9ee)
  store %struct.Memory* %call_41e9ee, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rcx	 RIP: 41e9f1	 Bytes: 4
  %loadMem_41e9f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e9f1 = call %struct.Memory* @routine_shlq__0x3___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e9f1)
  store %struct.Memory* %call_41e9f1, %struct.Memory** %MEMORY

  ; Code: movq -0x250(%rbp), %rdi	 RIP: 41e9f5	 Bytes: 7
  %loadMem_41e9f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e9f5 = call %struct.Memory* @routine_movq_MINUS0x250__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e9f5)
  store %struct.Memory* %call_41e9f5, %struct.Memory** %MEMORY

  ; Code: movl -0x25c(%rbp), %esi	 RIP: 41e9fc	 Bytes: 6
  %loadMem_41e9fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e9fc = call %struct.Memory* @routine_movl_MINUS0x25c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e9fc)
  store %struct.Memory* %call_41e9fc, %struct.Memory** %MEMORY

  ; Code: movq -0x258(%rbp), %rdx	 RIP: 41ea02	 Bytes: 7
  %loadMem_41ea02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ea02 = call %struct.Memory* @routine_movq_MINUS0x258__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ea02)
  store %struct.Memory* %call_41ea02, %struct.Memory** %MEMORY

  ; Code: callq .sre_realloc	 RIP: 41ea09	 Bytes: 5
  %loadMem1_41ea09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41ea09 = call %struct.Memory* @routine_callq_.sre_realloc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41ea09, i64 161447, i64 5, i64 5)
  store %struct.Memory* %call1_41ea09, %struct.Memory** %MEMORY

  %loadMem2_41ea09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41ea09 = load i64, i64* %3
  %call2_41ea09 = call %struct.Memory* @sub_4460b0.sre_realloc(%struct.State* %0, i64  %loadPC_41ea09, %struct.Memory* %loadMem2_41ea09)
  store %struct.Memory* %call2_41ea09, %struct.Memory** %MEMORY

  ; Code: movq $0x45a1f7, %rsi	 RIP: 41ea0e	 Bytes: 10
  %loadMem_41ea0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ea0e = call %struct.Memory* @routine_movq__0x45a1f7___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ea0e)
  store %struct.Memory* %call_41ea0e, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41ea18	 Bytes: 4
  %loadMem_41ea18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ea18 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ea18)
  store %struct.Memory* %call_41ea18, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x30(%rcx)	 RIP: 41ea1c	 Bytes: 4
  %loadMem_41ea1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ea1c = call %struct.Memory* @routine_movq__rax__0x30__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ea1c)
  store %struct.Memory* %call_41ea1c, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41ea20	 Bytes: 4
  %loadMem_41ea20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ea20 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ea20)
  store %struct.Memory* %call_41ea20, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rax), %rdi	 RIP: 41ea24	 Bytes: 4
  %loadMem_41ea24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ea24 = call %struct.Memory* @routine_movq_0x30__rax____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ea24)
  store %struct.Memory* %call_41ea24, %struct.Memory** %MEMORY

  ; Code: callq .strcat_plt	 RIP: 41ea28	 Bytes: 5
  %loadMem1_41ea28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41ea28 = call %struct.Memory* @routine_callq_.strcat_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41ea28, i64 -119672, i64 5, i64 5)
  store %struct.Memory* %call1_41ea28, %struct.Memory** %MEMORY

  %loadMem2_41ea28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41ea28 = load i64, i64* %3
  %call2_41ea28 = call %struct.Memory* @ext_strcat(%struct.State* %0, i64  %loadPC_41ea28, %struct.Memory* %loadMem2_41ea28)
  store %struct.Memory* %call2_41ea28, %struct.Memory** %MEMORY

  ; Code: leaq -0x220(%rbp), %rcx	 RIP: 41ea2d	 Bytes: 7
  %loadMem_41ea2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ea2d = call %struct.Memory* @routine_leaq_MINUS0x220__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ea2d)
  store %struct.Memory* %call_41ea2d, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdx	 RIP: 41ea34	 Bytes: 4
  %loadMem_41ea34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ea34 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ea34)
  store %struct.Memory* %call_41ea34, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rdx), %rdi	 RIP: 41ea38	 Bytes: 4
  %loadMem_41ea38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ea38 = call %struct.Memory* @routine_movq_0x30__rdx____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ea38)
  store %struct.Memory* %call_41ea38, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rcx	 RIP: 41ea3c	 Bytes: 4
  %loadMem_41ea3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ea3c = call %struct.Memory* @routine_addq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ea3c)
  store %struct.Memory* %call_41ea3c, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rsi	 RIP: 41ea40	 Bytes: 3
  %loadMem_41ea40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ea40 = call %struct.Memory* @routine_movq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ea40)
  store %struct.Memory* %call_41ea40, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x278(%rbp)	 RIP: 41ea43	 Bytes: 7
  %loadMem_41ea43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ea43 = call %struct.Memory* @routine_movq__rax__MINUS0x278__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ea43)
  store %struct.Memory* %call_41ea43, %struct.Memory** %MEMORY

  ; Code: callq .strcat_plt	 RIP: 41ea4a	 Bytes: 5
  %loadMem1_41ea4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41ea4a = call %struct.Memory* @routine_callq_.strcat_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41ea4a, i64 -119706, i64 5, i64 5)
  store %struct.Memory* %call1_41ea4a, %struct.Memory** %MEMORY

  %loadMem2_41ea4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41ea4a = load i64, i64* %3
  %call2_41ea4a = call %struct.Memory* @ext_strcat(%struct.State* %0, i64  %loadPC_41ea4a, %struct.Memory* %loadMem2_41ea4a)
  store %struct.Memory* %call2_41ea4a, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x280(%rbp)	 RIP: 41ea4f	 Bytes: 7
  %loadMem_41ea4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ea4f = call %struct.Memory* @routine_movq__rax__MINUS0x280__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ea4f)
  store %struct.Memory* %call_41ea4f, %struct.Memory** %MEMORY

  ; Code: .L_41ea56:	 RIP: 41ea56	 Bytes: 0
  br label %block_.L_41ea56
block_.L_41ea56:

  ; Code: jmpq .L_41f1ca	 RIP: 41ea56	 Bytes: 5
  %loadMem_41ea56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ea56 = call %struct.Memory* @routine_jmpq_.L_41f1ca(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ea56, i64 1908, i64 5)
  store %struct.Memory* %call_41ea56, %struct.Memory** %MEMORY

  br label %block_.L_41f1ca

  ; Code: .L_41ea5b:	 RIP: 41ea5b	 Bytes: 0
block_.L_41ea5b:

  ; Code: movq $0x457996, %rsi	 RIP: 41ea5b	 Bytes: 10
  %loadMem_41ea5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ea5b = call %struct.Memory* @routine_movq__0x457996___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ea5b)
  store %struct.Memory* %call_41ea5b, %struct.Memory** %MEMORY

  ; Code: movl $0x5, %eax	 RIP: 41ea65	 Bytes: 5
  %loadMem_41ea65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ea65 = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ea65)
  store %struct.Memory* %call_41ea65, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 41ea6a	 Bytes: 2
  %loadMem_41ea6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ea6a = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ea6a)
  store %struct.Memory* %call_41ea6a, %struct.Memory** %MEMORY

  ; Code: leaq -0x220(%rbp), %rdi	 RIP: 41ea6c	 Bytes: 7
  %loadMem_41ea6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ea6c = call %struct.Memory* @routine_leaq_MINUS0x220__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ea6c)
  store %struct.Memory* %call_41ea6c, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 41ea73	 Bytes: 5
  %loadMem1_41ea73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41ea73 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41ea73, i64 -120483, i64 5, i64 5)
  store %struct.Memory* %call1_41ea73, %struct.Memory** %MEMORY

  %loadMem2_41ea73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41ea73 = load i64, i64* %3
  %call2_41ea73 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_41ea73, %struct.Memory* %loadMem2_41ea73)
  store %struct.Memory* %call2_41ea73, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41ea78	 Bytes: 3
  %loadMem_41ea78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ea78 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ea78)
  store %struct.Memory* %call_41ea78, %struct.Memory** %MEMORY

  ; Code: jne .L_41eab4	 RIP: 41ea7b	 Bytes: 6
  %loadMem_41ea7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ea7b = call %struct.Memory* @routine_jne_.L_41eab4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ea7b, i8* %BRANCH_TAKEN, i64 57, i64 6, i64 6)
  store %struct.Memory* %call_41ea7b, %struct.Memory** %MEMORY

  %loadBr_41ea7b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ea7b = icmp eq i8 %loadBr_41ea7b, 1
  br i1 %cmpBr_41ea7b, label %block_.L_41eab4, label %block_41ea81

block_41ea81:
  ; Code: leaq -0x220(%rbp), %rax	 RIP: 41ea81	 Bytes: 7
  %loadMem_41ea81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ea81 = call %struct.Memory* @routine_leaq_MINUS0x220__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ea81)
  store %struct.Memory* %call_41ea81, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rax	 RIP: 41ea88	 Bytes: 4
  %loadMem_41ea88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ea88 = call %struct.Memory* @routine_addq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ea88)
  store %struct.Memory* %call_41ea88, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 41ea8c	 Bytes: 3
  %loadMem_41ea8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ea8c = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ea8c)
  store %struct.Memory* %call_41ea8c, %struct.Memory** %MEMORY

  ; Code: callq .StringChop	 RIP: 41ea8f	 Bytes: 5
  %loadMem1_41ea8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41ea8f = call %struct.Memory* @routine_callq_.StringChop(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41ea8f, i64 160737, i64 5, i64 5)
  store %struct.Memory* %call1_41ea8f, %struct.Memory** %MEMORY

  %loadMem2_41ea8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41ea8f = load i64, i64* %3
  %call2_41ea8f = call %struct.Memory* @sub_445e70.StringChop(%struct.State* %0, i64  %loadPC_41ea8f, %struct.Memory* %loadMem2_41ea8f)
  store %struct.Memory* %call2_41ea8f, %struct.Memory** %MEMORY

  ; Code: leaq -0x220(%rbp), %rax	 RIP: 41ea94	 Bytes: 7
  %loadMem_41ea94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ea94 = call %struct.Memory* @routine_leaq_MINUS0x220__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ea94)
  store %struct.Memory* %call_41ea94, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rax	 RIP: 41ea9b	 Bytes: 4
  %loadMem_41ea9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ea9b = call %struct.Memory* @routine_addq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ea9b)
  store %struct.Memory* %call_41ea9b, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 41ea9f	 Bytes: 3
  %loadMem_41ea9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ea9f = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ea9f)
  store %struct.Memory* %call_41ea9f, %struct.Memory** %MEMORY

  ; Code: callq .Strdup	 RIP: 41eaa2	 Bytes: 5
  %loadMem1_41eaa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41eaa2 = call %struct.Memory* @routine_callq_.Strdup(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41eaa2, i64 160590, i64 5, i64 5)
  store %struct.Memory* %call1_41eaa2, %struct.Memory** %MEMORY

  %loadMem2_41eaa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41eaa2 = load i64, i64* %3
  %call2_41eaa2 = call %struct.Memory* @sub_445df0.Strdup(%struct.State* %0, i64  %loadPC_41eaa2, %struct.Memory* %loadMem2_41eaa2)
  store %struct.Memory* %call2_41eaa2, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 41eaa7	 Bytes: 4
  %loadMem_41eaa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eaa7 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eaa7)
  store %struct.Memory* %call_41eaa7, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x40(%rdi)	 RIP: 41eaab	 Bytes: 4
  %loadMem_41eaab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eaab = call %struct.Memory* @routine_movq__rax__0x40__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eaab)
  store %struct.Memory* %call_41eaab, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41f1c5	 RIP: 41eaaf	 Bytes: 5
  %loadMem_41eaaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eaaf = call %struct.Memory* @routine_jmpq_.L_41f1c5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eaaf, i64 1814, i64 5)
  store %struct.Memory* %call_41eaaf, %struct.Memory** %MEMORY

  br label %block_.L_41f1c5

  ; Code: .L_41eab4:	 RIP: 41eab4	 Bytes: 0
block_.L_41eab4:

  ; Code: movq $0x45799c, %rsi	 RIP: 41eab4	 Bytes: 10
  %loadMem_41eab4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eab4 = call %struct.Memory* @routine_movq__0x45799c___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eab4)
  store %struct.Memory* %call_41eab4, %struct.Memory** %MEMORY

  ; Code: movl $0x5, %eax	 RIP: 41eabe	 Bytes: 5
  %loadMem_41eabe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eabe = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eabe)
  store %struct.Memory* %call_41eabe, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 41eac3	 Bytes: 2
  %loadMem_41eac3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eac3 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eac3)
  store %struct.Memory* %call_41eac3, %struct.Memory** %MEMORY

  ; Code: leaq -0x220(%rbp), %rdi	 RIP: 41eac5	 Bytes: 7
  %loadMem_41eac5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eac5 = call %struct.Memory* @routine_leaq_MINUS0x220__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eac5)
  store %struct.Memory* %call_41eac5, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 41eacc	 Bytes: 5
  %loadMem1_41eacc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41eacc = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41eacc, i64 -120572, i64 5, i64 5)
  store %struct.Memory* %call1_41eacc, %struct.Memory** %MEMORY

  %loadMem2_41eacc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41eacc = load i64, i64* %3
  %call2_41eacc = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_41eacc, %struct.Memory* %loadMem2_41eacc)
  store %struct.Memory* %call2_41eacc, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41ead1	 Bytes: 3
  %loadMem_41ead1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ead1 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ead1)
  store %struct.Memory* %call_41ead1, %struct.Memory** %MEMORY

  ; Code: jne .L_41eb82	 RIP: 41ead4	 Bytes: 6
  %loadMem_41ead4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ead4 = call %struct.Memory* @routine_jne_.L_41eb82(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ead4, i8* %BRANCH_TAKEN, i64 174, i64 6, i64 6)
  store %struct.Memory* %call_41ead4, %struct.Memory** %MEMORY

  %loadBr_41ead4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ead4 = icmp eq i8 %loadBr_41ead4, 1
  br i1 %cmpBr_41ead4, label %block_.L_41eb82, label %block_41eada

block_41eada:
  ; Code: movq $0x45a1f5, %rsi	 RIP: 41eada	 Bytes: 10
  %loadMem_41eada = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eada = call %struct.Memory* @routine_movq__0x45a1f5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eada)
  store %struct.Memory* %call_41eada, %struct.Memory** %MEMORY

  ; Code: leaq -0x220(%rbp), %rax	 RIP: 41eae4	 Bytes: 7
  %loadMem_41eae4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eae4 = call %struct.Memory* @routine_leaq_MINUS0x220__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eae4)
  store %struct.Memory* %call_41eae4, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rax	 RIP: 41eaeb	 Bytes: 4
  %loadMem_41eaeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eaeb = call %struct.Memory* @routine_addq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eaeb)
  store %struct.Memory* %call_41eaeb, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 41eaef	 Bytes: 3
  %loadMem_41eaef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eaef = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eaef)
  store %struct.Memory* %call_41eaef, %struct.Memory** %MEMORY

  ; Code: callq .strtok_plt	 RIP: 41eaf2	 Bytes: 5
  %loadMem1_41eaf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41eaf2 = call %struct.Memory* @routine_callq_.strtok_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41eaf2, i64 -119954, i64 5, i64 5)
  store %struct.Memory* %call1_41eaf2, %struct.Memory** %MEMORY

  %loadMem2_41eaf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41eaf2 = load i64, i64* %3
  %call2_41eaf2 = call %struct.Memory* @sub_401660.strtok_plt(%struct.State* %0, i64  %loadPC_41eaf2, %struct.Memory* %loadMem2_41eaf2)
  store %struct.Memory* %call2_41eaf2, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x228(%rbp)	 RIP: 41eaf7	 Bytes: 7
  %loadMem_41eaf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eaf7 = call %struct.Memory* @routine_movq__rax__MINUS0x228__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eaf7)
  store %struct.Memory* %call_41eaf7, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41eafe	 Bytes: 4
  %loadMem_41eafe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eafe = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eafe)
  store %struct.Memory* %call_41eafe, %struct.Memory** %MEMORY

  ; Code: jne .L_41eb0d	 RIP: 41eb02	 Bytes: 6
  %loadMem_41eb02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eb02 = call %struct.Memory* @routine_jne_.L_41eb0d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eb02, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41eb02, %struct.Memory** %MEMORY

  %loadBr_41eb02 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41eb02 = icmp eq i8 %loadBr_41eb02, 1
  br i1 %cmpBr_41eb02, label %block_.L_41eb0d, label %block_41eb08

block_41eb08:
  ; Code: jmpq .L_41f8de	 RIP: 41eb08	 Bytes: 5
  %loadMem_41eb08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eb08 = call %struct.Memory* @routine_jmpq_.L_41f8de(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eb08, i64 3542, i64 5)
  store %struct.Memory* %call_41eb08, %struct.Memory** %MEMORY

  br label %block_.L_41f8de

  ; Code: .L_41eb0d:	 RIP: 41eb0d	 Bytes: 0
block_.L_41eb0d:

  ; Code: movq -0x228(%rbp), %rdi	 RIP: 41eb0d	 Bytes: 7
  %loadMem_41eb0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eb0d = call %struct.Memory* @routine_movq_MINUS0x228__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eb0d)
  store %struct.Memory* %call_41eb0d, %struct.Memory** %MEMORY

  ; Code: callq .atof_plt	 RIP: 41eb14	 Bytes: 5
  %loadMem1_41eb14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41eb14 = call %struct.Memory* @routine_callq_.atof_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41eb14, i64 -120548, i64 5, i64 5)
  store %struct.Memory* %call1_41eb14, %struct.Memory** %MEMORY

  %loadMem2_41eb14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41eb14 = load i64, i64* %3
  %call2_41eb14 = call %struct.Memory* @ext_atof(%struct.State* %0, i64  %loadPC_41eb14, %struct.Memory* %loadMem2_41eb14)
  store %struct.Memory* %call2_41eb14, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %eax	 RIP: 41eb19	 Bytes: 2
  %loadMem_41eb19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eb19 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eb19)
  store %struct.Memory* %call_41eb19, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 41eb1b	 Bytes: 2
  %loadMem_41eb1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eb1b = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eb1b)
  store %struct.Memory* %call_41eb1b, %struct.Memory** %MEMORY

  ; Code: movq $0x45a1f5, %rsi	 RIP: 41eb1d	 Bytes: 10
  %loadMem_41eb1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eb1d = call %struct.Memory* @routine_movq__0x45a1f5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eb1d)
  store %struct.Memory* %call_41eb1d, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 41eb27	 Bytes: 4
  %loadMem_41eb27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eb27 = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eb27)
  store %struct.Memory* %call_41eb27, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41eb2b	 Bytes: 4
  %loadMem_41eb2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eb2b = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eb2b)
  store %struct.Memory* %call_41eb2b, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x70(%rcx)	 RIP: 41eb2f	 Bytes: 5
  %loadMem_41eb2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eb2f = call %struct.Memory* @routine_movss__xmm0__0x70__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eb2f)
  store %struct.Memory* %call_41eb2f, %struct.Memory** %MEMORY

  ; Code: callq .strtok_plt	 RIP: 41eb34	 Bytes: 5
  %loadMem1_41eb34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41eb34 = call %struct.Memory* @routine_callq_.strtok_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41eb34, i64 -120020, i64 5, i64 5)
  store %struct.Memory* %call1_41eb34, %struct.Memory** %MEMORY

  %loadMem2_41eb34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41eb34 = load i64, i64* %3
  %call2_41eb34 = call %struct.Memory* @sub_401660.strtok_plt(%struct.State* %0, i64  %loadPC_41eb34, %struct.Memory* %loadMem2_41eb34)
  store %struct.Memory* %call2_41eb34, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x228(%rbp)	 RIP: 41eb39	 Bytes: 7
  %loadMem_41eb39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eb39 = call %struct.Memory* @routine_movq__rax__MINUS0x228__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eb39)
  store %struct.Memory* %call_41eb39, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41eb40	 Bytes: 4
  %loadMem_41eb40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eb40 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eb40)
  store %struct.Memory* %call_41eb40, %struct.Memory** %MEMORY

  ; Code: jne .L_41eb4f	 RIP: 41eb44	 Bytes: 6
  %loadMem_41eb44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eb44 = call %struct.Memory* @routine_jne_.L_41eb4f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eb44, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41eb44, %struct.Memory** %MEMORY

  %loadBr_41eb44 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41eb44 = icmp eq i8 %loadBr_41eb44, 1
  br i1 %cmpBr_41eb44, label %block_.L_41eb4f, label %block_41eb4a

block_41eb4a:
  ; Code: jmpq .L_41f8de	 RIP: 41eb4a	 Bytes: 5
  %loadMem_41eb4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eb4a = call %struct.Memory* @routine_jmpq_.L_41f8de(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eb4a, i64 3476, i64 5)
  store %struct.Memory* %call_41eb4a, %struct.Memory** %MEMORY

  br label %block_.L_41f8de

  ; Code: .L_41eb4f:	 RIP: 41eb4f	 Bytes: 0
block_.L_41eb4f:

  ; Code: movq -0x228(%rbp), %rdi	 RIP: 41eb4f	 Bytes: 7
  %loadMem_41eb4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eb4f = call %struct.Memory* @routine_movq_MINUS0x228__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eb4f)
  store %struct.Memory* %call_41eb4f, %struct.Memory** %MEMORY

  ; Code: callq .atof_plt	 RIP: 41eb56	 Bytes: 5
  %loadMem1_41eb56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41eb56 = call %struct.Memory* @routine_callq_.atof_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41eb56, i64 -120614, i64 5, i64 5)
  store %struct.Memory* %call1_41eb56, %struct.Memory** %MEMORY

  %loadMem2_41eb56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41eb56 = load i64, i64* %3
  %call2_41eb56 = call %struct.Memory* @ext_atof(%struct.State* %0, i64  %loadPC_41eb56, %struct.Memory* %loadMem2_41eb56)
  store %struct.Memory* %call2_41eb56, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 41eb5b	 Bytes: 4
  %loadMem_41eb5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eb5b = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eb5b)
  store %struct.Memory* %call_41eb5b, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 41eb5f	 Bytes: 4
  %loadMem_41eb5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eb5f = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eb5f)
  store %struct.Memory* %call_41eb5f, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x74(%rdi)	 RIP: 41eb63	 Bytes: 5
  %loadMem_41eb63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eb63 = call %struct.Memory* @routine_movss__xmm0__0x74__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eb63)
  store %struct.Memory* %call_41eb63, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 41eb68	 Bytes: 4
  %loadMem_41eb68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eb68 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eb68)
  store %struct.Memory* %call_41eb68, %struct.Memory** %MEMORY

  ; Code: movl 0x1c8(%rdi), %eax	 RIP: 41eb6c	 Bytes: 6
  %loadMem_41eb6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eb6c = call %struct.Memory* @routine_movl_0x1c8__rdi____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eb6c)
  store %struct.Memory* %call_41eb6c, %struct.Memory** %MEMORY

  ; Code: orl $0x400, %eax	 RIP: 41eb72	 Bytes: 5
  %loadMem_41eb72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eb72 = call %struct.Memory* @routine_orl__0x400___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eb72)
  store %struct.Memory* %call_41eb72, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x1c8(%rdi)	 RIP: 41eb77	 Bytes: 6
  %loadMem_41eb77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eb77 = call %struct.Memory* @routine_movl__eax__0x1c8__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eb77)
  store %struct.Memory* %call_41eb77, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41f1c0	 RIP: 41eb7d	 Bytes: 5
  %loadMem_41eb7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eb7d = call %struct.Memory* @routine_jmpq_.L_41f1c0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eb7d, i64 1603, i64 5)
  store %struct.Memory* %call_41eb7d, %struct.Memory** %MEMORY

  br label %block_.L_41f1c0

  ; Code: .L_41eb82:	 RIP: 41eb82	 Bytes: 0
block_.L_41eb82:

  ; Code: movq $0x4579a2, %rsi	 RIP: 41eb82	 Bytes: 10
  %loadMem_41eb82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eb82 = call %struct.Memory* @routine_movq__0x4579a2___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eb82)
  store %struct.Memory* %call_41eb82, %struct.Memory** %MEMORY

  ; Code: movl $0x5, %eax	 RIP: 41eb8c	 Bytes: 5
  %loadMem_41eb8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eb8c = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eb8c)
  store %struct.Memory* %call_41eb8c, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 41eb91	 Bytes: 2
  %loadMem_41eb91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eb91 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eb91)
  store %struct.Memory* %call_41eb91, %struct.Memory** %MEMORY

  ; Code: leaq -0x220(%rbp), %rdi	 RIP: 41eb93	 Bytes: 7
  %loadMem_41eb93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eb93 = call %struct.Memory* @routine_leaq_MINUS0x220__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eb93)
  store %struct.Memory* %call_41eb93, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 41eb9a	 Bytes: 5
  %loadMem1_41eb9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41eb9a = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41eb9a, i64 -120778, i64 5, i64 5)
  store %struct.Memory* %call1_41eb9a, %struct.Memory** %MEMORY

  %loadMem2_41eb9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41eb9a = load i64, i64* %3
  %call2_41eb9a = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_41eb9a, %struct.Memory* %loadMem2_41eb9a)
  store %struct.Memory* %call2_41eb9a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41eb9f	 Bytes: 3
  %loadMem_41eb9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eb9f = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eb9f)
  store %struct.Memory* %call_41eb9f, %struct.Memory** %MEMORY

  ; Code: jne .L_41ec50	 RIP: 41eba2	 Bytes: 6
  %loadMem_41eba2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eba2 = call %struct.Memory* @routine_jne_.L_41ec50(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eba2, i8* %BRANCH_TAKEN, i64 174, i64 6, i64 6)
  store %struct.Memory* %call_41eba2, %struct.Memory** %MEMORY

  %loadBr_41eba2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41eba2 = icmp eq i8 %loadBr_41eba2, 1
  br i1 %cmpBr_41eba2, label %block_.L_41ec50, label %block_41eba8

block_41eba8:
  ; Code: movq $0x45a1f5, %rsi	 RIP: 41eba8	 Bytes: 10
  %loadMem_41eba8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eba8 = call %struct.Memory* @routine_movq__0x45a1f5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eba8)
  store %struct.Memory* %call_41eba8, %struct.Memory** %MEMORY

  ; Code: leaq -0x220(%rbp), %rax	 RIP: 41ebb2	 Bytes: 7
  %loadMem_41ebb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ebb2 = call %struct.Memory* @routine_leaq_MINUS0x220__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ebb2)
  store %struct.Memory* %call_41ebb2, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rax	 RIP: 41ebb9	 Bytes: 4
  %loadMem_41ebb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ebb9 = call %struct.Memory* @routine_addq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ebb9)
  store %struct.Memory* %call_41ebb9, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 41ebbd	 Bytes: 3
  %loadMem_41ebbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ebbd = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ebbd)
  store %struct.Memory* %call_41ebbd, %struct.Memory** %MEMORY

  ; Code: callq .strtok_plt	 RIP: 41ebc0	 Bytes: 5
  %loadMem1_41ebc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41ebc0 = call %struct.Memory* @routine_callq_.strtok_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41ebc0, i64 -120160, i64 5, i64 5)
  store %struct.Memory* %call1_41ebc0, %struct.Memory** %MEMORY

  %loadMem2_41ebc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41ebc0 = load i64, i64* %3
  %call2_41ebc0 = call %struct.Memory* @sub_401660.strtok_plt(%struct.State* %0, i64  %loadPC_41ebc0, %struct.Memory* %loadMem2_41ebc0)
  store %struct.Memory* %call2_41ebc0, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x228(%rbp)	 RIP: 41ebc5	 Bytes: 7
  %loadMem_41ebc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ebc5 = call %struct.Memory* @routine_movq__rax__MINUS0x228__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ebc5)
  store %struct.Memory* %call_41ebc5, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41ebcc	 Bytes: 4
  %loadMem_41ebcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ebcc = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ebcc)
  store %struct.Memory* %call_41ebcc, %struct.Memory** %MEMORY

  ; Code: jne .L_41ebdb	 RIP: 41ebd0	 Bytes: 6
  %loadMem_41ebd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ebd0 = call %struct.Memory* @routine_jne_.L_41ebdb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ebd0, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41ebd0, %struct.Memory** %MEMORY

  %loadBr_41ebd0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ebd0 = icmp eq i8 %loadBr_41ebd0, 1
  br i1 %cmpBr_41ebd0, label %block_.L_41ebdb, label %block_41ebd6

block_41ebd6:
  ; Code: jmpq .L_41f8de	 RIP: 41ebd6	 Bytes: 5
  %loadMem_41ebd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ebd6 = call %struct.Memory* @routine_jmpq_.L_41f8de(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ebd6, i64 3336, i64 5)
  store %struct.Memory* %call_41ebd6, %struct.Memory** %MEMORY

  br label %block_.L_41f8de

  ; Code: .L_41ebdb:	 RIP: 41ebdb	 Bytes: 0
block_.L_41ebdb:

  ; Code: movq -0x228(%rbp), %rdi	 RIP: 41ebdb	 Bytes: 7
  %loadMem_41ebdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ebdb = call %struct.Memory* @routine_movq_MINUS0x228__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ebdb)
  store %struct.Memory* %call_41ebdb, %struct.Memory** %MEMORY

  ; Code: callq .atof_plt	 RIP: 41ebe2	 Bytes: 5
  %loadMem1_41ebe2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41ebe2 = call %struct.Memory* @routine_callq_.atof_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41ebe2, i64 -120754, i64 5, i64 5)
  store %struct.Memory* %call1_41ebe2, %struct.Memory** %MEMORY

  %loadMem2_41ebe2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41ebe2 = load i64, i64* %3
  %call2_41ebe2 = call %struct.Memory* @ext_atof(%struct.State* %0, i64  %loadPC_41ebe2, %struct.Memory* %loadMem2_41ebe2)
  store %struct.Memory* %call2_41ebe2, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %eax	 RIP: 41ebe7	 Bytes: 2
  %loadMem_41ebe7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ebe7 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ebe7)
  store %struct.Memory* %call_41ebe7, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 41ebe9	 Bytes: 2
  %loadMem_41ebe9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ebe9 = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ebe9)
  store %struct.Memory* %call_41ebe9, %struct.Memory** %MEMORY

  ; Code: movq $0x45a1f5, %rsi	 RIP: 41ebeb	 Bytes: 10
  %loadMem_41ebeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ebeb = call %struct.Memory* @routine_movq__0x45a1f5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ebeb)
  store %struct.Memory* %call_41ebeb, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 41ebf5	 Bytes: 4
  %loadMem_41ebf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ebf5 = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ebf5)
  store %struct.Memory* %call_41ebf5, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41ebf9	 Bytes: 4
  %loadMem_41ebf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ebf9 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ebf9)
  store %struct.Memory* %call_41ebf9, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x78(%rcx)	 RIP: 41ebfd	 Bytes: 5
  %loadMem_41ebfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ebfd = call %struct.Memory* @routine_movss__xmm0__0x78__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ebfd)
  store %struct.Memory* %call_41ebfd, %struct.Memory** %MEMORY

  ; Code: callq .strtok_plt	 RIP: 41ec02	 Bytes: 5
  %loadMem1_41ec02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41ec02 = call %struct.Memory* @routine_callq_.strtok_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41ec02, i64 -120226, i64 5, i64 5)
  store %struct.Memory* %call1_41ec02, %struct.Memory** %MEMORY

  %loadMem2_41ec02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41ec02 = load i64, i64* %3
  %call2_41ec02 = call %struct.Memory* @sub_401660.strtok_plt(%struct.State* %0, i64  %loadPC_41ec02, %struct.Memory* %loadMem2_41ec02)
  store %struct.Memory* %call2_41ec02, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x228(%rbp)	 RIP: 41ec07	 Bytes: 7
  %loadMem_41ec07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ec07 = call %struct.Memory* @routine_movq__rax__MINUS0x228__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ec07)
  store %struct.Memory* %call_41ec07, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41ec0e	 Bytes: 4
  %loadMem_41ec0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ec0e = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ec0e)
  store %struct.Memory* %call_41ec0e, %struct.Memory** %MEMORY

  ; Code: jne .L_41ec1d	 RIP: 41ec12	 Bytes: 6
  %loadMem_41ec12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ec12 = call %struct.Memory* @routine_jne_.L_41ec1d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ec12, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41ec12, %struct.Memory** %MEMORY

  %loadBr_41ec12 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ec12 = icmp eq i8 %loadBr_41ec12, 1
  br i1 %cmpBr_41ec12, label %block_.L_41ec1d, label %block_41ec18

block_41ec18:
  ; Code: jmpq .L_41f8de	 RIP: 41ec18	 Bytes: 5
  %loadMem_41ec18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ec18 = call %struct.Memory* @routine_jmpq_.L_41f8de(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ec18, i64 3270, i64 5)
  store %struct.Memory* %call_41ec18, %struct.Memory** %MEMORY

  br label %block_.L_41f8de

  ; Code: .L_41ec1d:	 RIP: 41ec1d	 Bytes: 0
block_.L_41ec1d:

  ; Code: movq -0x228(%rbp), %rdi	 RIP: 41ec1d	 Bytes: 7
  %loadMem_41ec1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ec1d = call %struct.Memory* @routine_movq_MINUS0x228__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ec1d)
  store %struct.Memory* %call_41ec1d, %struct.Memory** %MEMORY

  ; Code: callq .atof_plt	 RIP: 41ec24	 Bytes: 5
  %loadMem1_41ec24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41ec24 = call %struct.Memory* @routine_callq_.atof_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41ec24, i64 -120820, i64 5, i64 5)
  store %struct.Memory* %call1_41ec24, %struct.Memory** %MEMORY

  %loadMem2_41ec24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41ec24 = load i64, i64* %3
  %call2_41ec24 = call %struct.Memory* @ext_atof(%struct.State* %0, i64  %loadPC_41ec24, %struct.Memory* %loadMem2_41ec24)
  store %struct.Memory* %call2_41ec24, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 41ec29	 Bytes: 4
  %loadMem_41ec29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ec29 = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ec29)
  store %struct.Memory* %call_41ec29, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 41ec2d	 Bytes: 4
  %loadMem_41ec2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ec2d = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ec2d)
  store %struct.Memory* %call_41ec2d, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x7c(%rdi)	 RIP: 41ec31	 Bytes: 5
  %loadMem_41ec31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ec31 = call %struct.Memory* @routine_movss__xmm0__0x7c__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ec31)
  store %struct.Memory* %call_41ec31, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 41ec36	 Bytes: 4
  %loadMem_41ec36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ec36 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ec36)
  store %struct.Memory* %call_41ec36, %struct.Memory** %MEMORY

  ; Code: movl 0x1c8(%rdi), %eax	 RIP: 41ec3a	 Bytes: 6
  %loadMem_41ec3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ec3a = call %struct.Memory* @routine_movl_0x1c8__rdi____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ec3a)
  store %struct.Memory* %call_41ec3a, %struct.Memory** %MEMORY

  ; Code: orl $0x800, %eax	 RIP: 41ec40	 Bytes: 5
  %loadMem_41ec40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ec40 = call %struct.Memory* @routine_orl__0x800___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ec40)
  store %struct.Memory* %call_41ec40, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x1c8(%rdi)	 RIP: 41ec45	 Bytes: 6
  %loadMem_41ec45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ec45 = call %struct.Memory* @routine_movl__eax__0x1c8__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ec45)
  store %struct.Memory* %call_41ec45, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41f1bb	 RIP: 41ec4b	 Bytes: 5
  %loadMem_41ec4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ec4b = call %struct.Memory* @routine_jmpq_.L_41f1bb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ec4b, i64 1392, i64 5)
  store %struct.Memory* %call_41ec4b, %struct.Memory** %MEMORY

  br label %block_.L_41f1bb

  ; Code: .L_41ec50:	 RIP: 41ec50	 Bytes: 0
block_.L_41ec50:

  ; Code: movq $0x4579a8, %rsi	 RIP: 41ec50	 Bytes: 10
  %loadMem_41ec50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ec50 = call %struct.Memory* @routine_movq__0x4579a8___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ec50)
  store %struct.Memory* %call_41ec50, %struct.Memory** %MEMORY

  ; Code: movl $0x5, %eax	 RIP: 41ec5a	 Bytes: 5
  %loadMem_41ec5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ec5a = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ec5a)
  store %struct.Memory* %call_41ec5a, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 41ec5f	 Bytes: 2
  %loadMem_41ec5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ec5f = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ec5f)
  store %struct.Memory* %call_41ec5f, %struct.Memory** %MEMORY

  ; Code: leaq -0x220(%rbp), %rdi	 RIP: 41ec61	 Bytes: 7
  %loadMem_41ec61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ec61 = call %struct.Memory* @routine_leaq_MINUS0x220__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ec61)
  store %struct.Memory* %call_41ec61, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 41ec68	 Bytes: 5
  %loadMem1_41ec68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41ec68 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41ec68, i64 -120984, i64 5, i64 5)
  store %struct.Memory* %call1_41ec68, %struct.Memory** %MEMORY

  %loadMem2_41ec68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41ec68 = load i64, i64* %3
  %call2_41ec68 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_41ec68, %struct.Memory* %loadMem2_41ec68)
  store %struct.Memory* %call2_41ec68, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41ec6d	 Bytes: 3
  %loadMem_41ec6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ec6d = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ec6d)
  store %struct.Memory* %call_41ec6d, %struct.Memory** %MEMORY

  ; Code: jne .L_41ed24	 RIP: 41ec70	 Bytes: 6
  %loadMem_41ec70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ec70 = call %struct.Memory* @routine_jne_.L_41ed24(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ec70, i8* %BRANCH_TAKEN, i64 180, i64 6, i64 6)
  store %struct.Memory* %call_41ec70, %struct.Memory** %MEMORY

  %loadBr_41ec70 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ec70 = icmp eq i8 %loadBr_41ec70, 1
  br i1 %cmpBr_41ec70, label %block_.L_41ed24, label %block_41ec76

block_41ec76:
  ; Code: movq $0x45a1f5, %rsi	 RIP: 41ec76	 Bytes: 10
  %loadMem_41ec76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ec76 = call %struct.Memory* @routine_movq__0x45a1f5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ec76)
  store %struct.Memory* %call_41ec76, %struct.Memory** %MEMORY

  ; Code: leaq -0x220(%rbp), %rax	 RIP: 41ec80	 Bytes: 7
  %loadMem_41ec80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ec80 = call %struct.Memory* @routine_leaq_MINUS0x220__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ec80)
  store %struct.Memory* %call_41ec80, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rax	 RIP: 41ec87	 Bytes: 4
  %loadMem_41ec87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ec87 = call %struct.Memory* @routine_addq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ec87)
  store %struct.Memory* %call_41ec87, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 41ec8b	 Bytes: 3
  %loadMem_41ec8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ec8b = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ec8b)
  store %struct.Memory* %call_41ec8b, %struct.Memory** %MEMORY

  ; Code: callq .strtok_plt	 RIP: 41ec8e	 Bytes: 5
  %loadMem1_41ec8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41ec8e = call %struct.Memory* @routine_callq_.strtok_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41ec8e, i64 -120366, i64 5, i64 5)
  store %struct.Memory* %call1_41ec8e, %struct.Memory** %MEMORY

  %loadMem2_41ec8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41ec8e = load i64, i64* %3
  %call2_41ec8e = call %struct.Memory* @sub_401660.strtok_plt(%struct.State* %0, i64  %loadPC_41ec8e, %struct.Memory* %loadMem2_41ec8e)
  store %struct.Memory* %call2_41ec8e, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x228(%rbp)	 RIP: 41ec93	 Bytes: 7
  %loadMem_41ec93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ec93 = call %struct.Memory* @routine_movq__rax__MINUS0x228__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ec93)
  store %struct.Memory* %call_41ec93, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41ec9a	 Bytes: 4
  %loadMem_41ec9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ec9a = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ec9a)
  store %struct.Memory* %call_41ec9a, %struct.Memory** %MEMORY

  ; Code: jne .L_41eca9	 RIP: 41ec9e	 Bytes: 6
  %loadMem_41ec9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ec9e = call %struct.Memory* @routine_jne_.L_41eca9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ec9e, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41ec9e, %struct.Memory** %MEMORY

  %loadBr_41ec9e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ec9e = icmp eq i8 %loadBr_41ec9e, 1
  br i1 %cmpBr_41ec9e, label %block_.L_41eca9, label %block_41eca4

block_41eca4:
  ; Code: jmpq .L_41f8de	 RIP: 41eca4	 Bytes: 5
  %loadMem_41eca4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eca4 = call %struct.Memory* @routine_jmpq_.L_41f8de(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eca4, i64 3130, i64 5)
  store %struct.Memory* %call_41eca4, %struct.Memory** %MEMORY

  br label %block_.L_41f8de

  ; Code: .L_41eca9:	 RIP: 41eca9	 Bytes: 0
block_.L_41eca9:

  ; Code: movq -0x228(%rbp), %rdi	 RIP: 41eca9	 Bytes: 7
  %loadMem_41eca9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eca9 = call %struct.Memory* @routine_movq_MINUS0x228__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eca9)
  store %struct.Memory* %call_41eca9, %struct.Memory** %MEMORY

  ; Code: callq .atof_plt	 RIP: 41ecb0	 Bytes: 5
  %loadMem1_41ecb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41ecb0 = call %struct.Memory* @routine_callq_.atof_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41ecb0, i64 -120960, i64 5, i64 5)
  store %struct.Memory* %call1_41ecb0, %struct.Memory** %MEMORY

  %loadMem2_41ecb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41ecb0 = load i64, i64* %3
  %call2_41ecb0 = call %struct.Memory* @ext_atof(%struct.State* %0, i64  %loadPC_41ecb0, %struct.Memory* %loadMem2_41ecb0)
  store %struct.Memory* %call2_41ecb0, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %eax	 RIP: 41ecb5	 Bytes: 2
  %loadMem_41ecb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ecb5 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ecb5)
  store %struct.Memory* %call_41ecb5, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 41ecb7	 Bytes: 2
  %loadMem_41ecb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ecb7 = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ecb7)
  store %struct.Memory* %call_41ecb7, %struct.Memory** %MEMORY

  ; Code: movq $0x45a1f5, %rsi	 RIP: 41ecb9	 Bytes: 10
  %loadMem_41ecb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ecb9 = call %struct.Memory* @routine_movq__0x45a1f5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ecb9)
  store %struct.Memory* %call_41ecb9, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 41ecc3	 Bytes: 4
  %loadMem_41ecc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ecc3 = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ecc3)
  store %struct.Memory* %call_41ecc3, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41ecc7	 Bytes: 4
  %loadMem_41ecc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ecc7 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ecc7)
  store %struct.Memory* %call_41ecc7, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x80(%rcx)	 RIP: 41eccb	 Bytes: 8
  %loadMem_41eccb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eccb = call %struct.Memory* @routine_movss__xmm0__0x80__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eccb)
  store %struct.Memory* %call_41eccb, %struct.Memory** %MEMORY

  ; Code: callq .strtok_plt	 RIP: 41ecd3	 Bytes: 5
  %loadMem1_41ecd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41ecd3 = call %struct.Memory* @routine_callq_.strtok_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41ecd3, i64 -120435, i64 5, i64 5)
  store %struct.Memory* %call1_41ecd3, %struct.Memory** %MEMORY

  %loadMem2_41ecd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41ecd3 = load i64, i64* %3
  %call2_41ecd3 = call %struct.Memory* @sub_401660.strtok_plt(%struct.State* %0, i64  %loadPC_41ecd3, %struct.Memory* %loadMem2_41ecd3)
  store %struct.Memory* %call2_41ecd3, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x228(%rbp)	 RIP: 41ecd8	 Bytes: 7
  %loadMem_41ecd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ecd8 = call %struct.Memory* @routine_movq__rax__MINUS0x228__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ecd8)
  store %struct.Memory* %call_41ecd8, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41ecdf	 Bytes: 4
  %loadMem_41ecdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ecdf = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ecdf)
  store %struct.Memory* %call_41ecdf, %struct.Memory** %MEMORY

  ; Code: jne .L_41ecee	 RIP: 41ece3	 Bytes: 6
  %loadMem_41ece3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ece3 = call %struct.Memory* @routine_jne_.L_41ecee(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ece3, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41ece3, %struct.Memory** %MEMORY

  %loadBr_41ece3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ece3 = icmp eq i8 %loadBr_41ece3, 1
  br i1 %cmpBr_41ece3, label %block_.L_41ecee, label %block_41ece9

block_41ece9:
  ; Code: jmpq .L_41f8de	 RIP: 41ece9	 Bytes: 5
  %loadMem_41ece9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ece9 = call %struct.Memory* @routine_jmpq_.L_41f8de(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ece9, i64 3061, i64 5)
  store %struct.Memory* %call_41ece9, %struct.Memory** %MEMORY

  br label %block_.L_41f8de

  ; Code: .L_41ecee:	 RIP: 41ecee	 Bytes: 0
block_.L_41ecee:

  ; Code: movq -0x228(%rbp), %rdi	 RIP: 41ecee	 Bytes: 7
  %loadMem_41ecee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ecee = call %struct.Memory* @routine_movq_MINUS0x228__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ecee)
  store %struct.Memory* %call_41ecee, %struct.Memory** %MEMORY

  ; Code: callq .atof_plt	 RIP: 41ecf5	 Bytes: 5
  %loadMem1_41ecf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41ecf5 = call %struct.Memory* @routine_callq_.atof_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41ecf5, i64 -121029, i64 5, i64 5)
  store %struct.Memory* %call1_41ecf5, %struct.Memory** %MEMORY

  %loadMem2_41ecf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41ecf5 = load i64, i64* %3
  %call2_41ecf5 = call %struct.Memory* @ext_atof(%struct.State* %0, i64  %loadPC_41ecf5, %struct.Memory* %loadMem2_41ecf5)
  store %struct.Memory* %call2_41ecf5, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 41ecfa	 Bytes: 4
  %loadMem_41ecfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ecfa = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ecfa)
  store %struct.Memory* %call_41ecfa, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 41ecfe	 Bytes: 4
  %loadMem_41ecfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ecfe = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ecfe)
  store %struct.Memory* %call_41ecfe, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x84(%rdi)	 RIP: 41ed02	 Bytes: 8
  %loadMem_41ed02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ed02 = call %struct.Memory* @routine_movss__xmm0__0x84__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ed02)
  store %struct.Memory* %call_41ed02, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 41ed0a	 Bytes: 4
  %loadMem_41ed0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ed0a = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ed0a)
  store %struct.Memory* %call_41ed0a, %struct.Memory** %MEMORY

  ; Code: movl 0x1c8(%rdi), %eax	 RIP: 41ed0e	 Bytes: 6
  %loadMem_41ed0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ed0e = call %struct.Memory* @routine_movl_0x1c8__rdi____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ed0e)
  store %struct.Memory* %call_41ed0e, %struct.Memory** %MEMORY

  ; Code: orl $0x1000, %eax	 RIP: 41ed14	 Bytes: 5
  %loadMem_41ed14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ed14 = call %struct.Memory* @routine_orl__0x1000___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ed14)
  store %struct.Memory* %call_41ed14, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x1c8(%rdi)	 RIP: 41ed19	 Bytes: 6
  %loadMem_41ed19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ed19 = call %struct.Memory* @routine_movl__eax__0x1c8__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ed19)
  store %struct.Memory* %call_41ed19, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41f1b6	 RIP: 41ed1f	 Bytes: 5
  %loadMem_41ed1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ed1f = call %struct.Memory* @routine_jmpq_.L_41f1b6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ed1f, i64 1175, i64 5)
  store %struct.Memory* %call_41ed1f, %struct.Memory** %MEMORY

  br label %block_.L_41f1b6

  ; Code: .L_41ed24:	 RIP: 41ed24	 Bytes: 0
block_.L_41ed24:

  ; Code: movq $0x4579ae, %rsi	 RIP: 41ed24	 Bytes: 10
  %loadMem_41ed24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ed24 = call %struct.Memory* @routine_movq__0x4579ae___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ed24)
  store %struct.Memory* %call_41ed24, %struct.Memory** %MEMORY

  ; Code: movl $0x5, %eax	 RIP: 41ed2e	 Bytes: 5
  %loadMem_41ed2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ed2e = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ed2e)
  store %struct.Memory* %call_41ed2e, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 41ed33	 Bytes: 2
  %loadMem_41ed33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ed33 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ed33)
  store %struct.Memory* %call_41ed33, %struct.Memory** %MEMORY

  ; Code: leaq -0x220(%rbp), %rdi	 RIP: 41ed35	 Bytes: 7
  %loadMem_41ed35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ed35 = call %struct.Memory* @routine_leaq_MINUS0x220__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ed35)
  store %struct.Memory* %call_41ed35, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 41ed3c	 Bytes: 5
  %loadMem1_41ed3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41ed3c = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41ed3c, i64 -121196, i64 5, i64 5)
  store %struct.Memory* %call1_41ed3c, %struct.Memory** %MEMORY

  %loadMem2_41ed3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41ed3c = load i64, i64* %3
  %call2_41ed3c = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_41ed3c, %struct.Memory* %loadMem2_41ed3c)
  store %struct.Memory* %call2_41ed3c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41ed41	 Bytes: 3
  %loadMem_41ed41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ed41 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ed41)
  store %struct.Memory* %call_41ed41, %struct.Memory** %MEMORY

  ; Code: jne .L_41ee43	 RIP: 41ed44	 Bytes: 6
  %loadMem_41ed44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ed44 = call %struct.Memory* @routine_jne_.L_41ee43(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ed44, i8* %BRANCH_TAKEN, i64 255, i64 6, i64 6)
  store %struct.Memory* %call_41ed44, %struct.Memory** %MEMORY

  %loadBr_41ed44 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ed44 = icmp eq i8 %loadBr_41ed44, 1
  br i1 %cmpBr_41ed44, label %block_.L_41ee43, label %block_41ed4a

block_41ed4a:
  ; Code: movq $0x45a1f5, %rsi	 RIP: 41ed4a	 Bytes: 10
  %loadMem_41ed4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ed4a = call %struct.Memory* @routine_movq__0x45a1f5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ed4a)
  store %struct.Memory* %call_41ed4a, %struct.Memory** %MEMORY

  ; Code: leaq -0x220(%rbp), %rax	 RIP: 41ed54	 Bytes: 7
  %loadMem_41ed54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ed54 = call %struct.Memory* @routine_leaq_MINUS0x220__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ed54)
  store %struct.Memory* %call_41ed54, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rax	 RIP: 41ed5b	 Bytes: 4
  %loadMem_41ed5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ed5b = call %struct.Memory* @routine_addq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ed5b)
  store %struct.Memory* %call_41ed5b, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 41ed5f	 Bytes: 3
  %loadMem_41ed5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ed5f = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ed5f)
  store %struct.Memory* %call_41ed5f, %struct.Memory** %MEMORY

  ; Code: callq .strtok_plt	 RIP: 41ed62	 Bytes: 5
  %loadMem1_41ed62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41ed62 = call %struct.Memory* @routine_callq_.strtok_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41ed62, i64 -120578, i64 5, i64 5)
  store %struct.Memory* %call1_41ed62, %struct.Memory** %MEMORY

  %loadMem2_41ed62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41ed62 = load i64, i64* %3
  %call2_41ed62 = call %struct.Memory* @sub_401660.strtok_plt(%struct.State* %0, i64  %loadPC_41ed62, %struct.Memory* %loadMem2_41ed62)
  store %struct.Memory* %call2_41ed62, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x228(%rbp)	 RIP: 41ed67	 Bytes: 7
  %loadMem_41ed67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ed67 = call %struct.Memory* @routine_movq__rax__MINUS0x228__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ed67)
  store %struct.Memory* %call_41ed67, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41ed6e	 Bytes: 4
  %loadMem_41ed6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ed6e = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ed6e)
  store %struct.Memory* %call_41ed6e, %struct.Memory** %MEMORY

  ; Code: jne .L_41ed7d	 RIP: 41ed72	 Bytes: 6
  %loadMem_41ed72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ed72 = call %struct.Memory* @routine_jne_.L_41ed7d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ed72, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41ed72, %struct.Memory** %MEMORY

  %loadBr_41ed72 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ed72 = icmp eq i8 %loadBr_41ed72, 1
  br i1 %cmpBr_41ed72, label %block_.L_41ed7d, label %block_41ed78

block_41ed78:
  ; Code: jmpq .L_41f8de	 RIP: 41ed78	 Bytes: 5
  %loadMem_41ed78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ed78 = call %struct.Memory* @routine_jmpq_.L_41f8de(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ed78, i64 2918, i64 5)
  store %struct.Memory* %call_41ed78, %struct.Memory** %MEMORY

  br label %block_.L_41f8de

  ; Code: .L_41ed7d:	 RIP: 41ed7d	 Bytes: 0
block_.L_41ed7d:

  ; Code: movl $0x0, -0x234(%rbp)	 RIP: 41ed7d	 Bytes: 10
  %loadMem_41ed7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ed7d = call %struct.Memory* @routine_movl__0x0__MINUS0x234__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ed7d)
  store %struct.Memory* %call_41ed7d, %struct.Memory** %MEMORY

  ; Code: .L_41ed87:	 RIP: 41ed87	 Bytes: 0
  br label %block_.L_41ed87
block_.L_41ed87:

  ; Code: cmpl $0x4, -0x234(%rbp)	 RIP: 41ed87	 Bytes: 7
  %loadMem_41ed87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ed87 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x234__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ed87)
  store %struct.Memory* %call_41ed87, %struct.Memory** %MEMORY

  ; Code: jge .L_41ee3e	 RIP: 41ed8e	 Bytes: 6
  %loadMem_41ed8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ed8e = call %struct.Memory* @routine_jge_.L_41ee3e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ed8e, i8* %BRANCH_TAKEN, i64 176, i64 6, i64 6)
  store %struct.Memory* %call_41ed8e, %struct.Memory** %MEMORY

  %loadBr_41ed8e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ed8e = icmp eq i8 %loadBr_41ed8e, 1
  br i1 %cmpBr_41ed8e, label %block_.L_41ee3e, label %block_41ed94

block_41ed94:
  ; Code: movl $0x0, -0x238(%rbp)	 RIP: 41ed94	 Bytes: 10
  %loadMem_41ed94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ed94 = call %struct.Memory* @routine_movl__0x0__MINUS0x238__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ed94)
  store %struct.Memory* %call_41ed94, %struct.Memory** %MEMORY

  ; Code: .L_41ed9e:	 RIP: 41ed9e	 Bytes: 0
  br label %block_.L_41ed9e
block_.L_41ed9e:

  ; Code: cmpl $0x2, -0x238(%rbp)	 RIP: 41ed9e	 Bytes: 7
  %loadMem_41ed9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ed9e = call %struct.Memory* @routine_cmpl__0x2__MINUS0x238__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ed9e)
  store %struct.Memory* %call_41ed9e, %struct.Memory** %MEMORY

  ; Code: jge .L_41ee25	 RIP: 41eda5	 Bytes: 6
  %loadMem_41eda5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eda5 = call %struct.Memory* @routine_jge_.L_41ee25(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eda5, i8* %BRANCH_TAKEN, i64 128, i64 6, i64 6)
  store %struct.Memory* %call_41eda5, %struct.Memory** %MEMORY

  %loadBr_41eda5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41eda5 = icmp eq i8 %loadBr_41eda5, 1
  br i1 %cmpBr_41eda5, label %block_.L_41ee25, label %block_41edab

block_41edab:
  ; Code: cmpq $0x0, -0x228(%rbp)	 RIP: 41edab	 Bytes: 8
  %loadMem_41edab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41edab = call %struct.Memory* @routine_cmpq__0x0__MINUS0x228__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41edab)
  store %struct.Memory* %call_41edab, %struct.Memory** %MEMORY

  ; Code: jne .L_41edbe	 RIP: 41edb3	 Bytes: 6
  %loadMem_41edb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41edb3 = call %struct.Memory* @routine_jne_.L_41edbe(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41edb3, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41edb3, %struct.Memory** %MEMORY

  %loadBr_41edb3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41edb3 = icmp eq i8 %loadBr_41edb3, 1
  br i1 %cmpBr_41edb3, label %block_.L_41edbe, label %block_41edb9

block_41edb9:
  ; Code: jmpq .L_41f8de	 RIP: 41edb9	 Bytes: 5
  %loadMem_41edb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41edb9 = call %struct.Memory* @routine_jmpq_.L_41f8de(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41edb9, i64 2853, i64 5)
  store %struct.Memory* %call_41edb9, %struct.Memory** %MEMORY

  br label %block_.L_41f8de

  ; Code: .L_41edbe:	 RIP: 41edbe	 Bytes: 0
block_.L_41edbe:

  ; Code: movss 0x35962(%rip), %xmm0	 RIP: 41edbe	 Bytes: 8
  %loadMem_41edbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41edbe = call %struct.Memory* @routine_movss_0x35962__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41edbe)
  store %struct.Memory* %call_41edbe, %struct.Memory** %MEMORY

  ; Code: movq -0x228(%rbp), %rdi	 RIP: 41edc6	 Bytes: 7
  %loadMem_41edc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41edc6 = call %struct.Memory* @routine_movq_MINUS0x228__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41edc6)
  store %struct.Memory* %call_41edc6, %struct.Memory** %MEMORY

  ; Code: callq .ascii2prob	 RIP: 41edcd	 Bytes: 5
  %loadMem1_41edcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41edcd = call %struct.Memory* @routine_callq_.ascii2prob(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41edcd, i64 10675, i64 5, i64 5)
  store %struct.Memory* %call1_41edcd, %struct.Memory** %MEMORY

  %loadMem2_41edcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41edcd = load i64, i64* %3
  %call2_41edcd = call %struct.Memory* @sub_421780.ascii2prob(%struct.State* %0, i64  %loadPC_41edcd, %struct.Memory* %loadMem2_41edcd)
  store %struct.Memory* %call2_41edcd, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %eax	 RIP: 41edd2	 Bytes: 2
  %loadMem_41edd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41edd2 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41edd2)
  store %struct.Memory* %call_41edd2, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 41edd4	 Bytes: 2
  %loadMem_41edd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41edd4 = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41edd4)
  store %struct.Memory* %call_41edd4, %struct.Memory** %MEMORY

  ; Code: movq $0x45a1f5, %rsi	 RIP: 41edd6	 Bytes: 10
  %loadMem_41edd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41edd6 = call %struct.Memory* @routine_movq__0x45a1f5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41edd6)
  store %struct.Memory* %call_41edd6, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41ede0	 Bytes: 4
  %loadMem_41ede0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ede0 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ede0)
  store %struct.Memory* %call_41ede0, %struct.Memory** %MEMORY

  ; Code: addq $0xac, %rcx	 RIP: 41ede4	 Bytes: 7
  %loadMem_41ede4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ede4 = call %struct.Memory* @routine_addq__0xac___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ede4)
  store %struct.Memory* %call_41ede4, %struct.Memory** %MEMORY

  ; Code: movslq -0x234(%rbp), %rdx	 RIP: 41edeb	 Bytes: 7
  %loadMem_41edeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41edeb = call %struct.Memory* @routine_movslq_MINUS0x234__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41edeb)
  store %struct.Memory* %call_41edeb, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 41edf2	 Bytes: 4
  %loadMem_41edf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41edf2 = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41edf2)
  store %struct.Memory* %call_41edf2, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 41edf6	 Bytes: 3
  %loadMem_41edf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41edf6 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41edf6)
  store %struct.Memory* %call_41edf6, %struct.Memory** %MEMORY

  ; Code: movslq -0x238(%rbp), %rdx	 RIP: 41edf9	 Bytes: 7
  %loadMem_41edf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41edf9 = call %struct.Memory* @routine_movslq_MINUS0x238__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41edf9)
  store %struct.Memory* %call_41edf9, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, (%rcx,%rdx,4)	 RIP: 41ee00	 Bytes: 5
  %loadMem_41ee00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ee00 = call %struct.Memory* @routine_movss__xmm0____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ee00)
  store %struct.Memory* %call_41ee00, %struct.Memory** %MEMORY

  ; Code: callq .strtok_plt	 RIP: 41ee05	 Bytes: 5
  %loadMem1_41ee05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41ee05 = call %struct.Memory* @routine_callq_.strtok_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41ee05, i64 -120741, i64 5, i64 5)
  store %struct.Memory* %call1_41ee05, %struct.Memory** %MEMORY

  %loadMem2_41ee05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41ee05 = load i64, i64* %3
  %call2_41ee05 = call %struct.Memory* @sub_401660.strtok_plt(%struct.State* %0, i64  %loadPC_41ee05, %struct.Memory* %loadMem2_41ee05)
  store %struct.Memory* %call2_41ee05, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x228(%rbp)	 RIP: 41ee0a	 Bytes: 7
  %loadMem_41ee0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ee0a = call %struct.Memory* @routine_movq__rax__MINUS0x228__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ee0a)
  store %struct.Memory* %call_41ee0a, %struct.Memory** %MEMORY

  ; Code: movl -0x238(%rbp), %eax	 RIP: 41ee11	 Bytes: 6
  %loadMem_41ee11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ee11 = call %struct.Memory* @routine_movl_MINUS0x238__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ee11)
  store %struct.Memory* %call_41ee11, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41ee17	 Bytes: 3
  %loadMem_41ee17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ee17 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ee17)
  store %struct.Memory* %call_41ee17, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x238(%rbp)	 RIP: 41ee1a	 Bytes: 6
  %loadMem_41ee1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ee1a = call %struct.Memory* @routine_movl__eax__MINUS0x238__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ee1a)
  store %struct.Memory* %call_41ee1a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41ed9e	 RIP: 41ee20	 Bytes: 5
  %loadMem_41ee20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ee20 = call %struct.Memory* @routine_jmpq_.L_41ed9e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ee20, i64 -130, i64 5)
  store %struct.Memory* %call_41ee20, %struct.Memory** %MEMORY

  br label %block_.L_41ed9e

  ; Code: .L_41ee25:	 RIP: 41ee25	 Bytes: 0
block_.L_41ee25:

  ; Code: jmpq .L_41ee2a	 RIP: 41ee25	 Bytes: 5
  %loadMem_41ee25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ee25 = call %struct.Memory* @routine_jmpq_.L_41ee2a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ee25, i64 5, i64 5)
  store %struct.Memory* %call_41ee25, %struct.Memory** %MEMORY

  br label %block_.L_41ee2a

  ; Code: .L_41ee2a:	 RIP: 41ee2a	 Bytes: 0
block_.L_41ee2a:

  ; Code: movl -0x234(%rbp), %eax	 RIP: 41ee2a	 Bytes: 6
  %loadMem_41ee2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ee2a = call %struct.Memory* @routine_movl_MINUS0x234__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ee2a)
  store %struct.Memory* %call_41ee2a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41ee30	 Bytes: 3
  %loadMem_41ee30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ee30 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ee30)
  store %struct.Memory* %call_41ee30, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x234(%rbp)	 RIP: 41ee33	 Bytes: 6
  %loadMem_41ee33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ee33 = call %struct.Memory* @routine_movl__eax__MINUS0x234__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ee33)
  store %struct.Memory* %call_41ee33, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41ed87	 RIP: 41ee39	 Bytes: 5
  %loadMem_41ee39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ee39 = call %struct.Memory* @routine_jmpq_.L_41ed87(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ee39, i64 -178, i64 5)
  store %struct.Memory* %call_41ee39, %struct.Memory** %MEMORY

  br label %block_.L_41ed87

  ; Code: .L_41ee3e:	 RIP: 41ee3e	 Bytes: 0
block_.L_41ee3e:

  ; Code: jmpq .L_41f1b1	 RIP: 41ee3e	 Bytes: 5
  %loadMem_41ee3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ee3e = call %struct.Memory* @routine_jmpq_.L_41f1b1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ee3e, i64 883, i64 5)
  store %struct.Memory* %call_41ee3e, %struct.Memory** %MEMORY

  br label %block_.L_41f1b1

  ; Code: .L_41ee43:	 RIP: 41ee43	 Bytes: 0
block_.L_41ee43:

  ; Code: movq $0x4579b4, %rsi	 RIP: 41ee43	 Bytes: 10
  %loadMem_41ee43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ee43 = call %struct.Memory* @routine_movq__0x4579b4___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ee43)
  store %struct.Memory* %call_41ee43, %struct.Memory** %MEMORY

  ; Code: movl $0x5, %eax	 RIP: 41ee4d	 Bytes: 5
  %loadMem_41ee4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ee4d = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ee4d)
  store %struct.Memory* %call_41ee4d, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 41ee52	 Bytes: 2
  %loadMem_41ee52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ee52 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ee52)
  store %struct.Memory* %call_41ee52, %struct.Memory** %MEMORY

  ; Code: leaq -0x220(%rbp), %rdi	 RIP: 41ee54	 Bytes: 7
  %loadMem_41ee54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ee54 = call %struct.Memory* @routine_leaq_MINUS0x220__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ee54)
  store %struct.Memory* %call_41ee54, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 41ee5b	 Bytes: 5
  %loadMem1_41ee5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41ee5b = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41ee5b, i64 -121483, i64 5, i64 5)
  store %struct.Memory* %call1_41ee5b, %struct.Memory** %MEMORY

  %loadMem2_41ee5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41ee5b = load i64, i64* %3
  %call2_41ee5b = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_41ee5b, %struct.Memory* %loadMem2_41ee5b)
  store %struct.Memory* %call2_41ee5b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41ee60	 Bytes: 3
  %loadMem_41ee60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ee60 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ee60)
  store %struct.Memory* %call_41ee60, %struct.Memory** %MEMORY

  ; Code: jne .L_41ef4a	 RIP: 41ee63	 Bytes: 6
  %loadMem_41ee63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ee63 = call %struct.Memory* @routine_jne_.L_41ef4a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ee63, i8* %BRANCH_TAKEN, i64 231, i64 6, i64 6)
  store %struct.Memory* %call_41ee63, %struct.Memory** %MEMORY

  %loadBr_41ee63 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ee63 = icmp eq i8 %loadBr_41ee63, 1
  br i1 %cmpBr_41ee63, label %block_.L_41ef4a, label %block_41ee69

block_41ee69:
  ; Code: movq $0x45a1f5, %rsi	 RIP: 41ee69	 Bytes: 10
  %loadMem_41ee69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ee69 = call %struct.Memory* @routine_movq__0x45a1f5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ee69)
  store %struct.Memory* %call_41ee69, %struct.Memory** %MEMORY

  ; Code: leaq -0x220(%rbp), %rax	 RIP: 41ee73	 Bytes: 7
  %loadMem_41ee73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ee73 = call %struct.Memory* @routine_leaq_MINUS0x220__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ee73)
  store %struct.Memory* %call_41ee73, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rax	 RIP: 41ee7a	 Bytes: 4
  %loadMem_41ee7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ee7a = call %struct.Memory* @routine_addq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ee7a)
  store %struct.Memory* %call_41ee7a, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 41ee7e	 Bytes: 3
  %loadMem_41ee7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ee7e = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ee7e)
  store %struct.Memory* %call_41ee7e, %struct.Memory** %MEMORY

  ; Code: callq .strtok_plt	 RIP: 41ee81	 Bytes: 5
  %loadMem1_41ee81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41ee81 = call %struct.Memory* @routine_callq_.strtok_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41ee81, i64 -120865, i64 5, i64 5)
  store %struct.Memory* %call1_41ee81, %struct.Memory** %MEMORY

  %loadMem2_41ee81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41ee81 = load i64, i64* %3
  %call2_41ee81 = call %struct.Memory* @sub_401660.strtok_plt(%struct.State* %0, i64  %loadPC_41ee81, %struct.Memory* %loadMem2_41ee81)
  store %struct.Memory* %call2_41ee81, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x228(%rbp)	 RIP: 41ee86	 Bytes: 7
  %loadMem_41ee86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ee86 = call %struct.Memory* @routine_movq__rax__MINUS0x228__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ee86)
  store %struct.Memory* %call_41ee86, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41ee8d	 Bytes: 4
  %loadMem_41ee8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ee8d = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ee8d)
  store %struct.Memory* %call_41ee8d, %struct.Memory** %MEMORY

  ; Code: jne .L_41ee9c	 RIP: 41ee91	 Bytes: 6
  %loadMem_41ee91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ee91 = call %struct.Memory* @routine_jne_.L_41ee9c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ee91, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41ee91, %struct.Memory** %MEMORY

  %loadBr_41ee91 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ee91 = icmp eq i8 %loadBr_41ee91, 1
  br i1 %cmpBr_41ee91, label %block_.L_41ee9c, label %block_41ee97

block_41ee97:
  ; Code: jmpq .L_41f8de	 RIP: 41ee97	 Bytes: 5
  %loadMem_41ee97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ee97 = call %struct.Memory* @routine_jmpq_.L_41f8de(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ee97, i64 2631, i64 5)
  store %struct.Memory* %call_41ee97, %struct.Memory** %MEMORY

  br label %block_.L_41f8de

  ; Code: .L_41ee9c:	 RIP: 41ee9c	 Bytes: 0
block_.L_41ee9c:

  ; Code: movss 0x35884(%rip), %xmm0	 RIP: 41ee9c	 Bytes: 8
  %loadMem_41ee9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ee9c = call %struct.Memory* @routine_movss_0x35884__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ee9c)
  store %struct.Memory* %call_41ee9c, %struct.Memory** %MEMORY

  ; Code: movq -0x228(%rbp), %rdi	 RIP: 41eea4	 Bytes: 7
  %loadMem_41eea4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eea4 = call %struct.Memory* @routine_movq_MINUS0x228__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eea4)
  store %struct.Memory* %call_41eea4, %struct.Memory** %MEMORY

  ; Code: callq .ascii2prob	 RIP: 41eeab	 Bytes: 5
  %loadMem1_41eeab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41eeab = call %struct.Memory* @routine_callq_.ascii2prob(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41eeab, i64 10453, i64 5, i64 5)
  store %struct.Memory* %call1_41eeab, %struct.Memory** %MEMORY

  %loadMem2_41eeab = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41eeab = load i64, i64* %3
  %call2_41eeab = call %struct.Memory* @sub_421780.ascii2prob(%struct.State* %0, i64  %loadPC_41eeab, %struct.Memory* %loadMem2_41eeab)
  store %struct.Memory* %call2_41eeab, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %eax	 RIP: 41eeb0	 Bytes: 2
  %loadMem_41eeb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eeb0 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eeb0)
  store %struct.Memory* %call_41eeb0, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 41eeb2	 Bytes: 2
  %loadMem_41eeb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eeb2 = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eeb2)
  store %struct.Memory* %call_41eeb2, %struct.Memory** %MEMORY

  ; Code: movq $0x45a1f5, %rsi	 RIP: 41eeb4	 Bytes: 10
  %loadMem_41eeb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eeb4 = call %struct.Memory* @routine_movq__0x45a1f5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eeb4)
  store %struct.Memory* %call_41eeb4, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41eebe	 Bytes: 4
  %loadMem_41eebe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eebe = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eebe)
  store %struct.Memory* %call_41eebe, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x130(%rcx)	 RIP: 41eec2	 Bytes: 8
  %loadMem_41eec2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eec2 = call %struct.Memory* @routine_movss__xmm0__0x130__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eec2)
  store %struct.Memory* %call_41eec2, %struct.Memory** %MEMORY

  ; Code: callq .strtok_plt	 RIP: 41eeca	 Bytes: 5
  %loadMem1_41eeca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41eeca = call %struct.Memory* @routine_callq_.strtok_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41eeca, i64 -120938, i64 5, i64 5)
  store %struct.Memory* %call1_41eeca, %struct.Memory** %MEMORY

  %loadMem2_41eeca = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41eeca = load i64, i64* %3
  %call2_41eeca = call %struct.Memory* @sub_401660.strtok_plt(%struct.State* %0, i64  %loadPC_41eeca, %struct.Memory* %loadMem2_41eeca)
  store %struct.Memory* %call2_41eeca, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x228(%rbp)	 RIP: 41eecf	 Bytes: 7
  %loadMem_41eecf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eecf = call %struct.Memory* @routine_movq__rax__MINUS0x228__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eecf)
  store %struct.Memory* %call_41eecf, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41eed6	 Bytes: 4
  %loadMem_41eed6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eed6 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eed6)
  store %struct.Memory* %call_41eed6, %struct.Memory** %MEMORY

  ; Code: jne .L_41eee5	 RIP: 41eeda	 Bytes: 6
  %loadMem_41eeda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eeda = call %struct.Memory* @routine_jne_.L_41eee5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eeda, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41eeda, %struct.Memory** %MEMORY

  %loadBr_41eeda = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41eeda = icmp eq i8 %loadBr_41eeda, 1
  br i1 %cmpBr_41eeda, label %block_.L_41eee5, label %block_41eee0

block_41eee0:
  ; Code: jmpq .L_41f8de	 RIP: 41eee0	 Bytes: 5
  %loadMem_41eee0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eee0 = call %struct.Memory* @routine_jmpq_.L_41f8de(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eee0, i64 2558, i64 5)
  store %struct.Memory* %call_41eee0, %struct.Memory** %MEMORY

  br label %block_.L_41f8de

  ; Code: .L_41eee5:	 RIP: 41eee5	 Bytes: 0
block_.L_41eee5:

  ; Code: movss 0x3583b(%rip), %xmm0	 RIP: 41eee5	 Bytes: 8
  %loadMem_41eee5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eee5 = call %struct.Memory* @routine_movss_0x3583b__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eee5)
  store %struct.Memory* %call_41eee5, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41eeed	 Bytes: 4
  %loadMem_41eeed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eeed = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eeed)
  store %struct.Memory* %call_41eeed, %struct.Memory** %MEMORY

  ; Code: movss 0x130(%rax), %xmm1	 RIP: 41eef1	 Bytes: 8
  %loadMem_41eef1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eef1 = call %struct.Memory* @routine_movss_0x130__rax____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eef1)
  store %struct.Memory* %call_41eef1, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41eef9	 Bytes: 4
  %loadMem_41eef9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eef9 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eef9)
  store %struct.Memory* %call_41eef9, %struct.Memory** %MEMORY

  ; Code: movss 0x130(%rax), %xmm2	 RIP: 41eefd	 Bytes: 8
  %loadMem_41eefd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eefd = call %struct.Memory* @routine_movss_0x130__rax____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eefd)
  store %struct.Memory* %call_41eefd, %struct.Memory** %MEMORY

  ; Code: movq -0x228(%rbp), %rdi	 RIP: 41ef05	 Bytes: 7
  %loadMem_41ef05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ef05 = call %struct.Memory* @routine_movq_MINUS0x228__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ef05)
  store %struct.Memory* %call_41ef05, %struct.Memory** %MEMORY

  ; Code: movss %xmm2, -0x284(%rbp)	 RIP: 41ef0c	 Bytes: 8
  %loadMem_41ef0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ef0c = call %struct.Memory* @routine_movss__xmm2__MINUS0x284__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ef0c)
  store %struct.Memory* %call_41ef0c, %struct.Memory** %MEMORY

  ; Code: movss %xmm1, -0x288(%rbp)	 RIP: 41ef14	 Bytes: 8
  %loadMem_41ef14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ef14 = call %struct.Memory* @routine_movss__xmm1__MINUS0x288__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ef14)
  store %struct.Memory* %call_41ef14, %struct.Memory** %MEMORY

  ; Code: callq .ascii2prob	 RIP: 41ef1c	 Bytes: 5
  %loadMem1_41ef1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41ef1c = call %struct.Memory* @routine_callq_.ascii2prob(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41ef1c, i64 10340, i64 5, i64 5)
  store %struct.Memory* %call1_41ef1c, %struct.Memory** %MEMORY

  %loadMem2_41ef1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41ef1c = load i64, i64* %3
  %call2_41ef1c = call %struct.Memory* @sub_421780.ascii2prob(%struct.State* %0, i64  %loadPC_41ef1c, %struct.Memory* %loadMem2_41ef1c)
  store %struct.Memory* %call2_41ef1c, %struct.Memory** %MEMORY

  ; Code: movss -0x284(%rbp), %xmm1	 RIP: 41ef21	 Bytes: 8
  %loadMem_41ef21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ef21 = call %struct.Memory* @routine_movss_MINUS0x284__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ef21)
  store %struct.Memory* %call_41ef21, %struct.Memory** %MEMORY

  ; Code: addss %xmm0, %xmm1	 RIP: 41ef29	 Bytes: 4
  %loadMem_41ef29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ef29 = call %struct.Memory* @routine_addss__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ef29)
  store %struct.Memory* %call_41ef29, %struct.Memory** %MEMORY

  ; Code: movss -0x288(%rbp), %xmm0	 RIP: 41ef2d	 Bytes: 8
  %loadMem_41ef2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ef2d = call %struct.Memory* @routine_movss_MINUS0x288__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ef2d)
  store %struct.Memory* %call_41ef2d, %struct.Memory** %MEMORY

  ; Code: divss %xmm1, %xmm0	 RIP: 41ef35	 Bytes: 4
  %loadMem_41ef35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ef35 = call %struct.Memory* @routine_divss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ef35)
  store %struct.Memory* %call_41ef35, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41ef39	 Bytes: 4
  %loadMem_41ef39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ef39 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ef39)
  store %struct.Memory* %call_41ef39, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x130(%rax)	 RIP: 41ef3d	 Bytes: 8
  %loadMem_41ef3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ef3d = call %struct.Memory* @routine_movss__xmm0__0x130__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ef3d)
  store %struct.Memory* %call_41ef3d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41f1ac	 RIP: 41ef45	 Bytes: 5
  %loadMem_41ef45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ef45 = call %struct.Memory* @routine_jmpq_.L_41f1ac(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ef45, i64 615, i64 5)
  store %struct.Memory* %call_41ef45, %struct.Memory** %MEMORY

  br label %block_.L_41f1ac

  ; Code: .L_41ef4a:	 RIP: 41ef4a	 Bytes: 0
block_.L_41ef4a:

  ; Code: movq $0x4579ba, %rsi	 RIP: 41ef4a	 Bytes: 10
  %loadMem_41ef4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ef4a = call %struct.Memory* @routine_movq__0x4579ba___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ef4a)
  store %struct.Memory* %call_41ef4a, %struct.Memory** %MEMORY

  ; Code: movl $0x5, %eax	 RIP: 41ef54	 Bytes: 5
  %loadMem_41ef54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ef54 = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ef54)
  store %struct.Memory* %call_41ef54, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 41ef59	 Bytes: 2
  %loadMem_41ef59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ef59 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ef59)
  store %struct.Memory* %call_41ef59, %struct.Memory** %MEMORY

  ; Code: leaq -0x220(%rbp), %rdi	 RIP: 41ef5b	 Bytes: 7
  %loadMem_41ef5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ef5b = call %struct.Memory* @routine_leaq_MINUS0x220__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ef5b)
  store %struct.Memory* %call_41ef5b, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 41ef62	 Bytes: 5
  %loadMem1_41ef62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41ef62 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41ef62, i64 -121746, i64 5, i64 5)
  store %struct.Memory* %call1_41ef62, %struct.Memory** %MEMORY

  %loadMem2_41ef62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41ef62 = load i64, i64* %3
  %call2_41ef62 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_41ef62, %struct.Memory* %loadMem2_41ef62)
  store %struct.Memory* %call2_41ef62, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41ef67	 Bytes: 3
  %loadMem_41ef67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ef67 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ef67)
  store %struct.Memory* %call_41ef67, %struct.Memory** %MEMORY

  ; Code: jne .L_41f053	 RIP: 41ef6a	 Bytes: 6
  %loadMem_41ef6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ef6a = call %struct.Memory* @routine_jne_.L_41f053(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ef6a, i8* %BRANCH_TAKEN, i64 233, i64 6, i64 6)
  store %struct.Memory* %call_41ef6a, %struct.Memory** %MEMORY

  %loadBr_41ef6a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ef6a = icmp eq i8 %loadBr_41ef6a, 1
  br i1 %cmpBr_41ef6a, label %block_.L_41f053, label %block_41ef70

block_41ef70:
  ; Code: cmpl $0x0, 0x676d90	 RIP: 41ef70	 Bytes: 8
  %loadMem_41ef70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ef70 = call %struct.Memory* @routine_cmpl__0x0__0x676d90(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ef70)
  store %struct.Memory* %call_41ef70, %struct.Memory** %MEMORY

  ; Code: jne .L_41ef8f	 RIP: 41ef78	 Bytes: 6
  %loadMem_41ef78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ef78 = call %struct.Memory* @routine_jne_.L_41ef8f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ef78, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_41ef78, %struct.Memory** %MEMORY

  %loadBr_41ef78 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ef78 = icmp eq i8 %loadBr_41ef78, 1
  br i1 %cmpBr_41ef78, label %block_.L_41ef8f, label %block_41ef7e

block_41ef7e:
  ; Code: movq $0x4579c0, %rdi	 RIP: 41ef7e	 Bytes: 10
  %loadMem_41ef7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ef7e = call %struct.Memory* @routine_movq__0x4579c0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ef7e)
  store %struct.Memory* %call_41ef7e, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 41ef88	 Bytes: 2
  %loadMem_41ef88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ef88 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ef88)
  store %struct.Memory* %call_41ef88, %struct.Memory** %MEMORY

  ; Code: callq .Die	 RIP: 41ef8a	 Bytes: 5
  %loadMem1_41ef8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41ef8a = call %struct.Memory* @routine_callq_.Die(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41ef8a, i64 129670, i64 5, i64 5)
  store %struct.Memory* %call1_41ef8a, %struct.Memory** %MEMORY

  %loadMem2_41ef8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41ef8a = load i64, i64* %3
  %call2_41ef8a = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64  %loadPC_41ef8a, %struct.Memory* %loadMem2_41ef8a)
  store %struct.Memory* %call2_41ef8a, %struct.Memory** %MEMORY

  ; Code: .L_41ef8f:	 RIP: 41ef8f	 Bytes: 0
  br label %block_.L_41ef8f
block_.L_41ef8f:

  ; Code: movq $0x45a1f5, %rsi	 RIP: 41ef8f	 Bytes: 10
  %loadMem_41ef8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ef8f = call %struct.Memory* @routine_movq__0x45a1f5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ef8f)
  store %struct.Memory* %call_41ef8f, %struct.Memory** %MEMORY

  ; Code: leaq -0x220(%rbp), %rax	 RIP: 41ef99	 Bytes: 7
  %loadMem_41ef99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ef99 = call %struct.Memory* @routine_leaq_MINUS0x220__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ef99)
  store %struct.Memory* %call_41ef99, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rax	 RIP: 41efa0	 Bytes: 4
  %loadMem_41efa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41efa0 = call %struct.Memory* @routine_addq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41efa0)
  store %struct.Memory* %call_41efa0, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 41efa4	 Bytes: 3
  %loadMem_41efa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41efa4 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41efa4)
  store %struct.Memory* %call_41efa4, %struct.Memory** %MEMORY

  ; Code: callq .strtok_plt	 RIP: 41efa7	 Bytes: 5
  %loadMem1_41efa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41efa7 = call %struct.Memory* @routine_callq_.strtok_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41efa7, i64 -121159, i64 5, i64 5)
  store %struct.Memory* %call1_41efa7, %struct.Memory** %MEMORY

  %loadMem2_41efa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41efa7 = load i64, i64* %3
  %call2_41efa7 = call %struct.Memory* @sub_401660.strtok_plt(%struct.State* %0, i64  %loadPC_41efa7, %struct.Memory* %loadMem2_41efa7)
  store %struct.Memory* %call2_41efa7, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x228(%rbp)	 RIP: 41efac	 Bytes: 7
  %loadMem_41efac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41efac = call %struct.Memory* @routine_movq__rax__MINUS0x228__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41efac)
  store %struct.Memory* %call_41efac, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x238(%rbp)	 RIP: 41efb3	 Bytes: 10
  %loadMem_41efb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41efb3 = call %struct.Memory* @routine_movl__0x0__MINUS0x238__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41efb3)
  store %struct.Memory* %call_41efb3, %struct.Memory** %MEMORY

  ; Code: .L_41efbd:	 RIP: 41efbd	 Bytes: 0
  br label %block_.L_41efbd
block_.L_41efbd:

  ; Code: movl -0x238(%rbp), %eax	 RIP: 41efbd	 Bytes: 6
  %loadMem_41efbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41efbd = call %struct.Memory* @routine_movl_MINUS0x238__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41efbd)
  store %struct.Memory* %call_41efbd, %struct.Memory** %MEMORY

  ; Code: cmpl 0x677060, %eax	 RIP: 41efc3	 Bytes: 7
  %loadMem_41efc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41efc3 = call %struct.Memory* @routine_cmpl_0x677060___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41efc3)
  store %struct.Memory* %call_41efc3, %struct.Memory** %MEMORY

  ; Code: jge .L_41f04e	 RIP: 41efca	 Bytes: 6
  %loadMem_41efca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41efca = call %struct.Memory* @routine_jge_.L_41f04e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41efca, i8* %BRANCH_TAKEN, i64 132, i64 6, i64 6)
  store %struct.Memory* %call_41efca, %struct.Memory** %MEMORY

  %loadBr_41efca = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41efca = icmp eq i8 %loadBr_41efca, 1
  br i1 %cmpBr_41efca, label %block_.L_41f04e, label %block_41efd0

block_41efd0:
  ; Code: cmpq $0x0, -0x228(%rbp)	 RIP: 41efd0	 Bytes: 8
  %loadMem_41efd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41efd0 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x228__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41efd0)
  store %struct.Memory* %call_41efd0, %struct.Memory** %MEMORY

  ; Code: jne .L_41efe3	 RIP: 41efd8	 Bytes: 6
  %loadMem_41efd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41efd8 = call %struct.Memory* @routine_jne_.L_41efe3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41efd8, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41efd8, %struct.Memory** %MEMORY

  %loadBr_41efd8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41efd8 = icmp eq i8 %loadBr_41efd8, 1
  br i1 %cmpBr_41efd8, label %block_.L_41efe3, label %block_41efde

block_41efde:
  ; Code: jmpq .L_41f8de	 RIP: 41efde	 Bytes: 5
  %loadMem_41efde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41efde = call %struct.Memory* @routine_jmpq_.L_41f8de(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41efde, i64 2304, i64 5)
  store %struct.Memory* %call_41efde, %struct.Memory** %MEMORY

  br label %block_.L_41f8de

  ; Code: .L_41efe3:	 RIP: 41efe3	 Bytes: 0
block_.L_41efe3:

  ; Code: movsd 0x357f5(%rip), %xmm0	 RIP: 41efe3	 Bytes: 8
  %loadMem_41efe3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41efe3 = call %struct.Memory* @routine_movsd_0x357f5__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41efe3)
  store %struct.Memory* %call_41efe3, %struct.Memory** %MEMORY

  ; Code: movq -0x228(%rbp), %rdi	 RIP: 41efeb	 Bytes: 7
  %loadMem_41efeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41efeb = call %struct.Memory* @routine_movq_MINUS0x228__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41efeb)
  store %struct.Memory* %call_41efeb, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl 0x677060, %xmm1	 RIP: 41eff2	 Bytes: 9
  %loadMem_41eff2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eff2 = call %struct.Memory* @routine_cvtsi2ssl_0x677060___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eff2)
  store %struct.Memory* %call_41eff2, %struct.Memory** %MEMORY

  ; Code: cvtss2sd %xmm1, %xmm1	 RIP: 41effb	 Bytes: 4
  %loadMem_41effb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41effb = call %struct.Memory* @routine_cvtss2sd__xmm1___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41effb)
  store %struct.Memory* %call_41effb, %struct.Memory** %MEMORY

  ; Code: divsd %xmm1, %xmm0	 RIP: 41efff	 Bytes: 4
  %loadMem_41efff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41efff = call %struct.Memory* @routine_divsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41efff)
  store %struct.Memory* %call_41efff, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 41f003	 Bytes: 4
  %loadMem_41f003 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f003 = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f003)
  store %struct.Memory* %call_41f003, %struct.Memory** %MEMORY

  ; Code: callq .ascii2prob	 RIP: 41f007	 Bytes: 5
  %loadMem1_41f007 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41f007 = call %struct.Memory* @routine_callq_.ascii2prob(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41f007, i64 10105, i64 5, i64 5)
  store %struct.Memory* %call1_41f007, %struct.Memory** %MEMORY

  %loadMem2_41f007 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41f007 = load i64, i64* %3
  %call2_41f007 = call %struct.Memory* @sub_421780.ascii2prob(%struct.State* %0, i64  %loadPC_41f007, %struct.Memory* %loadMem2_41f007)
  store %struct.Memory* %call2_41f007, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %eax	 RIP: 41f00c	 Bytes: 2
  %loadMem_41f00c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f00c = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f00c)
  store %struct.Memory* %call_41f00c, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 41f00e	 Bytes: 2
  %loadMem_41f00e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f00e = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f00e)
  store %struct.Memory* %call_41f00e, %struct.Memory** %MEMORY

  ; Code: movq $0x45a1f5, %rsi	 RIP: 41f010	 Bytes: 10
  %loadMem_41f010 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f010 = call %struct.Memory* @routine_movq__0x45a1f5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f010)
  store %struct.Memory* %call_41f010, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41f01a	 Bytes: 4
  %loadMem_41f01a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f01a = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f01a)
  store %struct.Memory* %call_41f01a, %struct.Memory** %MEMORY

  ; Code: movslq -0x238(%rbp), %rdx	 RIP: 41f01e	 Bytes: 7
  %loadMem_41f01e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f01e = call %struct.Memory* @routine_movslq_MINUS0x238__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f01e)
  store %struct.Memory* %call_41f01e, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0xe0(%rcx,%rdx,4)	 RIP: 41f025	 Bytes: 9
  %loadMem_41f025 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f025 = call %struct.Memory* @routine_movss__xmm0__0xe0__rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f025)
  store %struct.Memory* %call_41f025, %struct.Memory** %MEMORY

  ; Code: callq .strtok_plt	 RIP: 41f02e	 Bytes: 5
  %loadMem1_41f02e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41f02e = call %struct.Memory* @routine_callq_.strtok_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41f02e, i64 -121294, i64 5, i64 5)
  store %struct.Memory* %call1_41f02e, %struct.Memory** %MEMORY

  %loadMem2_41f02e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41f02e = load i64, i64* %3
  %call2_41f02e = call %struct.Memory* @sub_401660.strtok_plt(%struct.State* %0, i64  %loadPC_41f02e, %struct.Memory* %loadMem2_41f02e)
  store %struct.Memory* %call2_41f02e, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x228(%rbp)	 RIP: 41f033	 Bytes: 7
  %loadMem_41f033 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f033 = call %struct.Memory* @routine_movq__rax__MINUS0x228__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f033)
  store %struct.Memory* %call_41f033, %struct.Memory** %MEMORY

  ; Code: movl -0x238(%rbp), %eax	 RIP: 41f03a	 Bytes: 6
  %loadMem_41f03a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f03a = call %struct.Memory* @routine_movl_MINUS0x238__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f03a)
  store %struct.Memory* %call_41f03a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41f040	 Bytes: 3
  %loadMem_41f040 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f040 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f040)
  store %struct.Memory* %call_41f040, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x238(%rbp)	 RIP: 41f043	 Bytes: 6
  %loadMem_41f043 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f043 = call %struct.Memory* @routine_movl__eax__MINUS0x238__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f043)
  store %struct.Memory* %call_41f043, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41efbd	 RIP: 41f049	 Bytes: 5
  %loadMem_41f049 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f049 = call %struct.Memory* @routine_jmpq_.L_41efbd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f049, i64 -140, i64 5)
  store %struct.Memory* %call_41f049, %struct.Memory** %MEMORY

  br label %block_.L_41efbd

  ; Code: .L_41f04e:	 RIP: 41f04e	 Bytes: 0
block_.L_41f04e:

  ; Code: jmpq .L_41f1a7	 RIP: 41f04e	 Bytes: 5
  %loadMem_41f04e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f04e = call %struct.Memory* @routine_jmpq_.L_41f1a7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f04e, i64 345, i64 5)
  store %struct.Memory* %call_41f04e, %struct.Memory** %MEMORY

  br label %block_.L_41f1a7

  ; Code: .L_41f053:	 RIP: 41f053	 Bytes: 0
block_.L_41f053:

  ; Code: movq $0x4579e9, %rsi	 RIP: 41f053	 Bytes: 10
  %loadMem_41f053 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f053 = call %struct.Memory* @routine_movq__0x4579e9___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f053)
  store %struct.Memory* %call_41f053, %struct.Memory** %MEMORY

  ; Code: movl $0x5, %eax	 RIP: 41f05d	 Bytes: 5
  %loadMem_41f05d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f05d = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f05d)
  store %struct.Memory* %call_41f05d, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 41f062	 Bytes: 2
  %loadMem_41f062 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f062 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f062)
  store %struct.Memory* %call_41f062, %struct.Memory** %MEMORY

  ; Code: leaq -0x220(%rbp), %rdi	 RIP: 41f064	 Bytes: 7
  %loadMem_41f064 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f064 = call %struct.Memory* @routine_leaq_MINUS0x220__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f064)
  store %struct.Memory* %call_41f064, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 41f06b	 Bytes: 5
  %loadMem1_41f06b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41f06b = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41f06b, i64 -122011, i64 5, i64 5)
  store %struct.Memory* %call1_41f06b, %struct.Memory** %MEMORY

  %loadMem2_41f06b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41f06b = load i64, i64* %3
  %call2_41f06b = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_41f06b, %struct.Memory* %loadMem2_41f06b)
  store %struct.Memory* %call2_41f06b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41f070	 Bytes: 3
  %loadMem_41f070 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f070 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f070)
  store %struct.Memory* %call_41f070, %struct.Memory** %MEMORY

  ; Code: jne .L_41f128	 RIP: 41f073	 Bytes: 6
  %loadMem_41f073 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f073 = call %struct.Memory* @routine_jne_.L_41f128(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f073, i8* %BRANCH_TAKEN, i64 181, i64 6, i64 6)
  store %struct.Memory* %call_41f073, %struct.Memory** %MEMORY

  %loadBr_41f073 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f073 = icmp eq i8 %loadBr_41f073, 1
  br i1 %cmpBr_41f073, label %block_.L_41f128, label %block_41f079

block_41f079:
  ; Code: movq $0x45a1f5, %rsi	 RIP: 41f079	 Bytes: 10
  %loadMem_41f079 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f079 = call %struct.Memory* @routine_movq__0x45a1f5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f079)
  store %struct.Memory* %call_41f079, %struct.Memory** %MEMORY

  ; Code: leaq -0x220(%rbp), %rax	 RIP: 41f083	 Bytes: 7
  %loadMem_41f083 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f083 = call %struct.Memory* @routine_leaq_MINUS0x220__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f083)
  store %struct.Memory* %call_41f083, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41f08a	 Bytes: 4
  %loadMem_41f08a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f08a = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f08a)
  store %struct.Memory* %call_41f08a, %struct.Memory** %MEMORY

  ; Code: movl 0x1c8(%rcx), %edx	 RIP: 41f08e	 Bytes: 6
  %loadMem_41f08e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f08e = call %struct.Memory* @routine_movl_0x1c8__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f08e)
  store %struct.Memory* %call_41f08e, %struct.Memory** %MEMORY

  ; Code: orl $0x80, %edx	 RIP: 41f094	 Bytes: 6
  %loadMem_41f094 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f094 = call %struct.Memory* @routine_orl__0x80___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f094)
  store %struct.Memory* %call_41f094, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x1c8(%rcx)	 RIP: 41f09a	 Bytes: 6
  %loadMem_41f09a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f09a = call %struct.Memory* @routine_movl__edx__0x1c8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f09a)
  store %struct.Memory* %call_41f09a, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rax	 RIP: 41f0a0	 Bytes: 4
  %loadMem_41f0a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f0a0 = call %struct.Memory* @routine_addq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f0a0)
  store %struct.Memory* %call_41f0a0, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 41f0a4	 Bytes: 3
  %loadMem_41f0a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f0a4 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f0a4)
  store %struct.Memory* %call_41f0a4, %struct.Memory** %MEMORY

  ; Code: callq .strtok_plt	 RIP: 41f0a7	 Bytes: 5
  %loadMem1_41f0a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41f0a7 = call %struct.Memory* @routine_callq_.strtok_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41f0a7, i64 -121415, i64 5, i64 5)
  store %struct.Memory* %call1_41f0a7, %struct.Memory** %MEMORY

  %loadMem2_41f0a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41f0a7 = load i64, i64* %3
  %call2_41f0a7 = call %struct.Memory* @sub_401660.strtok_plt(%struct.State* %0, i64  %loadPC_41f0a7, %struct.Memory* %loadMem2_41f0a7)
  store %struct.Memory* %call2_41f0a7, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x228(%rbp)	 RIP: 41f0ac	 Bytes: 7
  %loadMem_41f0ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f0ac = call %struct.Memory* @routine_movq__rax__MINUS0x228__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f0ac)
  store %struct.Memory* %call_41f0ac, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41f0b3	 Bytes: 4
  %loadMem_41f0b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f0b3 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f0b3)
  store %struct.Memory* %call_41f0b3, %struct.Memory** %MEMORY

  ; Code: jne .L_41f0c2	 RIP: 41f0b7	 Bytes: 6
  %loadMem_41f0b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f0b7 = call %struct.Memory* @routine_jne_.L_41f0c2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f0b7, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41f0b7, %struct.Memory** %MEMORY

  %loadBr_41f0b7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f0b7 = icmp eq i8 %loadBr_41f0b7, 1
  br i1 %cmpBr_41f0b7, label %block_.L_41f0c2, label %block_41f0bd

block_41f0bd:
  ; Code: jmpq .L_41f8de	 RIP: 41f0bd	 Bytes: 5
  %loadMem_41f0bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f0bd = call %struct.Memory* @routine_jmpq_.L_41f8de(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f0bd, i64 2081, i64 5)
  store %struct.Memory* %call_41f0bd, %struct.Memory** %MEMORY

  br label %block_.L_41f8de

  ; Code: .L_41f0c2:	 RIP: 41f0c2	 Bytes: 0
block_.L_41f0c2:

  ; Code: movq -0x228(%rbp), %rdi	 RIP: 41f0c2	 Bytes: 7
  %loadMem_41f0c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f0c2 = call %struct.Memory* @routine_movq_MINUS0x228__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f0c2)
  store %struct.Memory* %call_41f0c2, %struct.Memory** %MEMORY

  ; Code: callq .atof_plt	 RIP: 41f0c9	 Bytes: 5
  %loadMem1_41f0c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41f0c9 = call %struct.Memory* @routine_callq_.atof_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41f0c9, i64 -122009, i64 5, i64 5)
  store %struct.Memory* %call1_41f0c9, %struct.Memory** %MEMORY

  %loadMem2_41f0c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41f0c9 = load i64, i64* %3
  %call2_41f0c9 = call %struct.Memory* @ext_atof(%struct.State* %0, i64  %loadPC_41f0c9, %struct.Memory* %loadMem2_41f0c9)
  store %struct.Memory* %call2_41f0c9, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %eax	 RIP: 41f0ce	 Bytes: 2
  %loadMem_41f0ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f0ce = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f0ce)
  store %struct.Memory* %call_41f0ce, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 41f0d0	 Bytes: 2
  %loadMem_41f0d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f0d0 = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f0d0)
  store %struct.Memory* %call_41f0d0, %struct.Memory** %MEMORY

  ; Code: movq $0x45a1f5, %rsi	 RIP: 41f0d2	 Bytes: 10
  %loadMem_41f0d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f0d2 = call %struct.Memory* @routine_movq__0x45a1f5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f0d2)
  store %struct.Memory* %call_41f0d2, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 41f0dc	 Bytes: 4
  %loadMem_41f0dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f0dc = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f0dc)
  store %struct.Memory* %call_41f0dc, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41f0e0	 Bytes: 4
  %loadMem_41f0e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f0e0 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f0e0)
  store %struct.Memory* %call_41f0e0, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x1c0(%rcx)	 RIP: 41f0e4	 Bytes: 8
  %loadMem_41f0e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f0e4 = call %struct.Memory* @routine_movss__xmm0__0x1c0__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f0e4)
  store %struct.Memory* %call_41f0e4, %struct.Memory** %MEMORY

  ; Code: callq .strtok_plt	 RIP: 41f0ec	 Bytes: 5
  %loadMem1_41f0ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41f0ec = call %struct.Memory* @routine_callq_.strtok_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41f0ec, i64 -121484, i64 5, i64 5)
  store %struct.Memory* %call1_41f0ec, %struct.Memory** %MEMORY

  %loadMem2_41f0ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41f0ec = load i64, i64* %3
  %call2_41f0ec = call %struct.Memory* @sub_401660.strtok_plt(%struct.State* %0, i64  %loadPC_41f0ec, %struct.Memory* %loadMem2_41f0ec)
  store %struct.Memory* %call2_41f0ec, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x228(%rbp)	 RIP: 41f0f1	 Bytes: 7
  %loadMem_41f0f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f0f1 = call %struct.Memory* @routine_movq__rax__MINUS0x228__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f0f1)
  store %struct.Memory* %call_41f0f1, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41f0f8	 Bytes: 4
  %loadMem_41f0f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f0f8 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f0f8)
  store %struct.Memory* %call_41f0f8, %struct.Memory** %MEMORY

  ; Code: jne .L_41f107	 RIP: 41f0fc	 Bytes: 6
  %loadMem_41f0fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f0fc = call %struct.Memory* @routine_jne_.L_41f107(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f0fc, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41f0fc, %struct.Memory** %MEMORY

  %loadBr_41f0fc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f0fc = icmp eq i8 %loadBr_41f0fc, 1
  br i1 %cmpBr_41f0fc, label %block_.L_41f107, label %block_41f102

block_41f102:
  ; Code: jmpq .L_41f8de	 RIP: 41f102	 Bytes: 5
  %loadMem_41f102 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f102 = call %struct.Memory* @routine_jmpq_.L_41f8de(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f102, i64 2012, i64 5)
  store %struct.Memory* %call_41f102, %struct.Memory** %MEMORY

  br label %block_.L_41f8de

  ; Code: .L_41f107:	 RIP: 41f107	 Bytes: 0
block_.L_41f107:

  ; Code: movq -0x228(%rbp), %rdi	 RIP: 41f107	 Bytes: 7
  %loadMem_41f107 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f107 = call %struct.Memory* @routine_movq_MINUS0x228__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f107)
  store %struct.Memory* %call_41f107, %struct.Memory** %MEMORY

  ; Code: callq .atof_plt	 RIP: 41f10e	 Bytes: 5
  %loadMem1_41f10e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41f10e = call %struct.Memory* @routine_callq_.atof_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41f10e, i64 -122078, i64 5, i64 5)
  store %struct.Memory* %call1_41f10e, %struct.Memory** %MEMORY

  %loadMem2_41f10e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41f10e = load i64, i64* %3
  %call2_41f10e = call %struct.Memory* @ext_atof(%struct.State* %0, i64  %loadPC_41f10e, %struct.Memory* %loadMem2_41f10e)
  store %struct.Memory* %call2_41f10e, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 41f113	 Bytes: 4
  %loadMem_41f113 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f113 = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f113)
  store %struct.Memory* %call_41f113, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 41f117	 Bytes: 4
  %loadMem_41f117 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f117 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f117)
  store %struct.Memory* %call_41f117, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x1c4(%rdi)	 RIP: 41f11b	 Bytes: 8
  %loadMem_41f11b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f11b = call %struct.Memory* @routine_movss__xmm0__0x1c4__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f11b)
  store %struct.Memory* %call_41f11b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41f1a2	 RIP: 41f123	 Bytes: 5
  %loadMem_41f123 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f123 = call %struct.Memory* @routine_jmpq_.L_41f1a2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f123, i64 127, i64 5)
  store %struct.Memory* %call_41f123, %struct.Memory** %MEMORY

  br label %block_.L_41f1a2

  ; Code: .L_41f128:	 RIP: 41f128	 Bytes: 0
block_.L_41f128:

  ; Code: movq $0x4579ef, %rsi	 RIP: 41f128	 Bytes: 10
  %loadMem_41f128 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f128 = call %struct.Memory* @routine_movq__0x4579ef___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f128)
  store %struct.Memory* %call_41f128, %struct.Memory** %MEMORY

  ; Code: movl $0x5, %eax	 RIP: 41f132	 Bytes: 5
  %loadMem_41f132 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f132 = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f132)
  store %struct.Memory* %call_41f132, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 41f137	 Bytes: 2
  %loadMem_41f137 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f137 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f137)
  store %struct.Memory* %call_41f137, %struct.Memory** %MEMORY

  ; Code: leaq -0x220(%rbp), %rdi	 RIP: 41f139	 Bytes: 7
  %loadMem_41f139 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f139 = call %struct.Memory* @routine_leaq_MINUS0x220__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f139)
  store %struct.Memory* %call_41f139, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 41f140	 Bytes: 5
  %loadMem1_41f140 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41f140 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41f140, i64 -122224, i64 5, i64 5)
  store %struct.Memory* %call1_41f140, %struct.Memory** %MEMORY

  %loadMem2_41f140 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41f140 = load i64, i64* %3
  %call2_41f140 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_41f140, %struct.Memory* %loadMem2_41f140)
  store %struct.Memory* %call2_41f140, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41f145	 Bytes: 3
  %loadMem_41f145 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f145 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f145)
  store %struct.Memory* %call_41f145, %struct.Memory** %MEMORY

  ; Code: jne .L_41f16d	 RIP: 41f148	 Bytes: 6
  %loadMem_41f148 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f148 = call %struct.Memory* @routine_jne_.L_41f16d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f148, i8* %BRANCH_TAKEN, i64 37, i64 6, i64 6)
  store %struct.Memory* %call_41f148, %struct.Memory** %MEMORY

  %loadBr_41f148 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f148 = icmp eq i8 %loadBr_41f148, 1
  br i1 %cmpBr_41f148, label %block_.L_41f16d, label %block_41f14e

block_41f14e:
  ; Code: leaq -0x220(%rbp), %rax	 RIP: 41f14e	 Bytes: 7
  %loadMem_41f14e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f14e = call %struct.Memory* @routine_leaq_MINUS0x220__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f14e)
  store %struct.Memory* %call_41f14e, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rax	 RIP: 41f155	 Bytes: 4
  %loadMem_41f155 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f155 = call %struct.Memory* @routine_addq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f155)
  store %struct.Memory* %call_41f155, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 41f159	 Bytes: 3
  %loadMem_41f159 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f159 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f159)
  store %struct.Memory* %call_41f159, %struct.Memory** %MEMORY

  ; Code: callq .atoi_plt	 RIP: 41f15c	 Bytes: 5
  %loadMem1_41f15c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41f15c = call %struct.Memory* @routine_callq_.atoi_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41f15c, i64 -121532, i64 5, i64 5)
  store %struct.Memory* %call1_41f15c, %struct.Memory** %MEMORY

  %loadMem2_41f15c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41f15c = load i64, i64* %3
  %call2_41f15c = call %struct.Memory* @ext_atoi(%struct.State* %0, i64  %loadPC_41f15c, %struct.Memory* %loadMem2_41f15c)
  store %struct.Memory* %call2_41f15c, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 41f161	 Bytes: 4
  %loadMem_41f161 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f161 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f161)
  store %struct.Memory* %call_41f161, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x50(%rdi)	 RIP: 41f165	 Bytes: 3
  %loadMem_41f165 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f165 = call %struct.Memory* @routine_movl__eax__0x50__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f165)
  store %struct.Memory* %call_41f165, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41f19d	 RIP: 41f168	 Bytes: 5
  %loadMem_41f168 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f168 = call %struct.Memory* @routine_jmpq_.L_41f19d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f168, i64 53, i64 5)
  store %struct.Memory* %call_41f168, %struct.Memory** %MEMORY

  br label %block_.L_41f19d

  ; Code: .L_41f16d:	 RIP: 41f16d	 Bytes: 0
block_.L_41f16d:

  ; Code: movq $0x4579f5, %rsi	 RIP: 41f16d	 Bytes: 10
  %loadMem_41f16d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f16d = call %struct.Memory* @routine_movq__0x4579f5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f16d)
  store %struct.Memory* %call_41f16d, %struct.Memory** %MEMORY

  ; Code: movl $0x5, %eax	 RIP: 41f177	 Bytes: 5
  %loadMem_41f177 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f177 = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f177)
  store %struct.Memory* %call_41f177, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 41f17c	 Bytes: 2
  %loadMem_41f17c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f17c = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f17c)
  store %struct.Memory* %call_41f17c, %struct.Memory** %MEMORY

  ; Code: leaq -0x220(%rbp), %rdi	 RIP: 41f17e	 Bytes: 7
  %loadMem_41f17e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f17e = call %struct.Memory* @routine_leaq_MINUS0x220__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f17e)
  store %struct.Memory* %call_41f17e, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 41f185	 Bytes: 5
  %loadMem1_41f185 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41f185 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41f185, i64 -122293, i64 5, i64 5)
  store %struct.Memory* %call1_41f185, %struct.Memory** %MEMORY

  %loadMem2_41f185 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41f185 = load i64, i64* %3
  %call2_41f185 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_41f185, %struct.Memory* %loadMem2_41f185)
  store %struct.Memory* %call2_41f185, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41f18a	 Bytes: 3
  %loadMem_41f18a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f18a = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f18a)
  store %struct.Memory* %call_41f18a, %struct.Memory** %MEMORY

  ; Code: jne .L_41f198	 RIP: 41f18d	 Bytes: 6
  %loadMem_41f18d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f18d = call %struct.Memory* @routine_jne_.L_41f198(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f18d, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41f18d, %struct.Memory** %MEMORY

  %loadBr_41f18d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f18d = icmp eq i8 %loadBr_41f18d, 1
  br i1 %cmpBr_41f18d, label %block_.L_41f198, label %block_41f193

block_41f193:
  ; Code: jmpq .L_41f1fc	 RIP: 41f193	 Bytes: 5
  %loadMem_41f193 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f193 = call %struct.Memory* @routine_jmpq_.L_41f1fc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f193, i64 105, i64 5)
  store %struct.Memory* %call_41f193, %struct.Memory** %MEMORY

  br label %block_.L_41f1fc

  ; Code: .L_41f198:	 RIP: 41f198	 Bytes: 0
block_.L_41f198:

  ; Code: jmpq .L_41f19d	 RIP: 41f198	 Bytes: 5
  %loadMem_41f198 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f198 = call %struct.Memory* @routine_jmpq_.L_41f19d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f198, i64 5, i64 5)
  store %struct.Memory* %call_41f198, %struct.Memory** %MEMORY

  br label %block_.L_41f19d

  ; Code: .L_41f19d:	 RIP: 41f19d	 Bytes: 0
block_.L_41f19d:

  ; Code: jmpq .L_41f1a2	 RIP: 41f19d	 Bytes: 5
  %loadMem_41f19d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f19d = call %struct.Memory* @routine_jmpq_.L_41f1a2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f19d, i64 5, i64 5)
  store %struct.Memory* %call_41f19d, %struct.Memory** %MEMORY

  br label %block_.L_41f1a2

  ; Code: .L_41f1a2:	 RIP: 41f1a2	 Bytes: 0
block_.L_41f1a2:

  ; Code: jmpq .L_41f1a7	 RIP: 41f1a2	 Bytes: 5
  %loadMem_41f1a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f1a2 = call %struct.Memory* @routine_jmpq_.L_41f1a7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f1a2, i64 5, i64 5)
  store %struct.Memory* %call_41f1a2, %struct.Memory** %MEMORY

  br label %block_.L_41f1a7

  ; Code: .L_41f1a7:	 RIP: 41f1a7	 Bytes: 0
block_.L_41f1a7:

  ; Code: jmpq .L_41f1ac	 RIP: 41f1a7	 Bytes: 5
  %loadMem_41f1a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f1a7 = call %struct.Memory* @routine_jmpq_.L_41f1ac(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f1a7, i64 5, i64 5)
  store %struct.Memory* %call_41f1a7, %struct.Memory** %MEMORY

  br label %block_.L_41f1ac

  ; Code: .L_41f1ac:	 RIP: 41f1ac	 Bytes: 0
block_.L_41f1ac:

  ; Code: jmpq .L_41f1b1	 RIP: 41f1ac	 Bytes: 5
  %loadMem_41f1ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f1ac = call %struct.Memory* @routine_jmpq_.L_41f1b1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f1ac, i64 5, i64 5)
  store %struct.Memory* %call_41f1ac, %struct.Memory** %MEMORY

  br label %block_.L_41f1b1

  ; Code: .L_41f1b1:	 RIP: 41f1b1	 Bytes: 0
block_.L_41f1b1:

  ; Code: jmpq .L_41f1b6	 RIP: 41f1b1	 Bytes: 5
  %loadMem_41f1b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f1b1 = call %struct.Memory* @routine_jmpq_.L_41f1b6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f1b1, i64 5, i64 5)
  store %struct.Memory* %call_41f1b1, %struct.Memory** %MEMORY

  br label %block_.L_41f1b6

  ; Code: .L_41f1b6:	 RIP: 41f1b6	 Bytes: 0
block_.L_41f1b6:

  ; Code: jmpq .L_41f1bb	 RIP: 41f1b6	 Bytes: 5
  %loadMem_41f1b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f1b6 = call %struct.Memory* @routine_jmpq_.L_41f1bb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f1b6, i64 5, i64 5)
  store %struct.Memory* %call_41f1b6, %struct.Memory** %MEMORY

  br label %block_.L_41f1bb

  ; Code: .L_41f1bb:	 RIP: 41f1bb	 Bytes: 0
block_.L_41f1bb:

  ; Code: jmpq .L_41f1c0	 RIP: 41f1bb	 Bytes: 5
  %loadMem_41f1bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f1bb = call %struct.Memory* @routine_jmpq_.L_41f1c0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f1bb, i64 5, i64 5)
  store %struct.Memory* %call_41f1bb, %struct.Memory** %MEMORY

  br label %block_.L_41f1c0

  ; Code: .L_41f1c0:	 RIP: 41f1c0	 Bytes: 0
block_.L_41f1c0:

  ; Code: jmpq .L_41f1c5	 RIP: 41f1c0	 Bytes: 5
  %loadMem_41f1c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f1c0 = call %struct.Memory* @routine_jmpq_.L_41f1c5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f1c0, i64 5, i64 5)
  store %struct.Memory* %call_41f1c0, %struct.Memory** %MEMORY

  br label %block_.L_41f1c5

  ; Code: .L_41f1c5:	 RIP: 41f1c5	 Bytes: 0
block_.L_41f1c5:

  ; Code: jmpq .L_41f1ca	 RIP: 41f1c5	 Bytes: 5
  %loadMem_41f1c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f1c5 = call %struct.Memory* @routine_jmpq_.L_41f1ca(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f1c5, i64 5, i64 5)
  store %struct.Memory* %call_41f1c5, %struct.Memory** %MEMORY

  br label %block_.L_41f1ca

  ; Code: .L_41f1ca:	 RIP: 41f1ca	 Bytes: 0
block_.L_41f1ca:

  ; Code: jmpq .L_41f1cf	 RIP: 41f1ca	 Bytes: 5
  %loadMem_41f1ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f1ca = call %struct.Memory* @routine_jmpq_.L_41f1cf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f1ca, i64 5, i64 5)
  store %struct.Memory* %call_41f1ca, %struct.Memory** %MEMORY

  br label %block_.L_41f1cf

  ; Code: .L_41f1cf:	 RIP: 41f1cf	 Bytes: 0
block_.L_41f1cf:

  ; Code: jmpq .L_41f1d4	 RIP: 41f1cf	 Bytes: 5
  %loadMem_41f1cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f1cf = call %struct.Memory* @routine_jmpq_.L_41f1d4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f1cf, i64 5, i64 5)
  store %struct.Memory* %call_41f1cf, %struct.Memory** %MEMORY

  br label %block_.L_41f1d4

  ; Code: .L_41f1d4:	 RIP: 41f1d4	 Bytes: 0
block_.L_41f1d4:

  ; Code: jmpq .L_41f1d9	 RIP: 41f1d4	 Bytes: 5
  %loadMem_41f1d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f1d4 = call %struct.Memory* @routine_jmpq_.L_41f1d9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f1d4, i64 5, i64 5)
  store %struct.Memory* %call_41f1d4, %struct.Memory** %MEMORY

  br label %block_.L_41f1d9

  ; Code: .L_41f1d9:	 RIP: 41f1d9	 Bytes: 0
block_.L_41f1d9:

  ; Code: jmpq .L_41f1de	 RIP: 41f1d9	 Bytes: 5
  %loadMem_41f1d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f1d9 = call %struct.Memory* @routine_jmpq_.L_41f1de(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f1d9, i64 5, i64 5)
  store %struct.Memory* %call_41f1d9, %struct.Memory** %MEMORY

  br label %block_.L_41f1de

  ; Code: .L_41f1de:	 RIP: 41f1de	 Bytes: 0
block_.L_41f1de:

  ; Code: jmpq .L_41f1e3	 RIP: 41f1de	 Bytes: 5
  %loadMem_41f1de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f1de = call %struct.Memory* @routine_jmpq_.L_41f1e3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f1de, i64 5, i64 5)
  store %struct.Memory* %call_41f1de, %struct.Memory** %MEMORY

  br label %block_.L_41f1e3

  ; Code: .L_41f1e3:	 RIP: 41f1e3	 Bytes: 0
block_.L_41f1e3:

  ; Code: jmpq .L_41f1e8	 RIP: 41f1e3	 Bytes: 5
  %loadMem_41f1e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f1e3 = call %struct.Memory* @routine_jmpq_.L_41f1e8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f1e3, i64 5, i64 5)
  store %struct.Memory* %call_41f1e3, %struct.Memory** %MEMORY

  br label %block_.L_41f1e8

  ; Code: .L_41f1e8:	 RIP: 41f1e8	 Bytes: 0
block_.L_41f1e8:

  ; Code: jmpq .L_41f1ed	 RIP: 41f1e8	 Bytes: 5
  %loadMem_41f1e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f1e8 = call %struct.Memory* @routine_jmpq_.L_41f1ed(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f1e8, i64 5, i64 5)
  store %struct.Memory* %call_41f1e8, %struct.Memory** %MEMORY

  br label %block_.L_41f1ed

  ; Code: .L_41f1ed:	 RIP: 41f1ed	 Bytes: 0
block_.L_41f1ed:

  ; Code: jmpq .L_41f1f2	 RIP: 41f1ed	 Bytes: 5
  %loadMem_41f1ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f1ed = call %struct.Memory* @routine_jmpq_.L_41f1f2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f1ed, i64 5, i64 5)
  store %struct.Memory* %call_41f1ed, %struct.Memory** %MEMORY

  br label %block_.L_41f1f2

  ; Code: .L_41f1f2:	 RIP: 41f1f2	 Bytes: 0
block_.L_41f1f2:

  ; Code: jmpq .L_41f1f7	 RIP: 41f1f2	 Bytes: 5
  %loadMem_41f1f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f1f2 = call %struct.Memory* @routine_jmpq_.L_41f1f7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f1f2, i64 5, i64 5)
  store %struct.Memory* %call_41f1f2, %struct.Memory** %MEMORY

  br label %block_.L_41f1f7

  ; Code: .L_41f1f7:	 RIP: 41f1f7	 Bytes: 0
block_.L_41f1f7:

  ; Code: jmpq .L_41e57c	 RIP: 41f1f7	 Bytes: 5
  %loadMem_41f1f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f1f7 = call %struct.Memory* @routine_jmpq_.L_41e57c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f1f7, i64 -3195, i64 5)
  store %struct.Memory* %call_41f1f7, %struct.Memory** %MEMORY

  br label %block_.L_41e57c

  ; Code: .L_41f1fc:	 RIP: 41f1fc	 Bytes: 0
block_.L_41f1fc:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 41f1fc	 Bytes: 4
  %loadMem_41f1fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f1fc = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f1fc)
  store %struct.Memory* %call_41f1fc, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdi	 RIP: 41f200	 Bytes: 3
  %loadMem_41f200 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f200 = call %struct.Memory* @routine_movq___rax____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f200)
  store %struct.Memory* %call_41f200, %struct.Memory** %MEMORY

  ; Code: callq .feof_plt	 RIP: 41f203	 Bytes: 5
  %loadMem1_41f203 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41f203 = call %struct.Memory* @routine_callq_.feof_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41f203, i64 -121971, i64 5, i64 5)
  store %struct.Memory* %call1_41f203, %struct.Memory** %MEMORY

  %loadMem2_41f203 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41f203 = load i64, i64* %3
  %call2_41f203 = call %struct.Memory* @sub_401590.feof_plt(%struct.State* %0, i64  %loadPC_41f203, %struct.Memory* %loadMem2_41f203)
  store %struct.Memory* %call2_41f203, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41f208	 Bytes: 3
  %loadMem_41f208 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f208 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f208)
  store %struct.Memory* %call_41f208, %struct.Memory** %MEMORY

  ; Code: je .L_41f216	 RIP: 41f20b	 Bytes: 6
  %loadMem_41f20b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f20b = call %struct.Memory* @routine_je_.L_41f216(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f20b, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41f20b, %struct.Memory** %MEMORY

  %loadBr_41f20b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f20b = icmp eq i8 %loadBr_41f20b, 1
  br i1 %cmpBr_41f20b, label %block_.L_41f216, label %block_41f211

block_41f211:
  ; Code: jmpq .L_41f8de	 RIP: 41f211	 Bytes: 5
  %loadMem_41f211 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f211 = call %struct.Memory* @routine_jmpq_.L_41f8de(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f211, i64 1741, i64 5)
  store %struct.Memory* %call_41f211, %struct.Memory** %MEMORY

  br label %block_.L_41f8de

  ; Code: .L_41f216:	 RIP: 41f216	 Bytes: 0
block_.L_41f216:

  ; Code: cmpl $0x1, -0x22c(%rbp)	 RIP: 41f216	 Bytes: 7
  %loadMem_41f216 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f216 = call %struct.Memory* @routine_cmpl__0x1__MINUS0x22c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f216)
  store %struct.Memory* %call_41f216, %struct.Memory** %MEMORY

  ; Code: jge .L_41f228	 RIP: 41f21d	 Bytes: 6
  %loadMem_41f21d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f21d = call %struct.Memory* @routine_jge_.L_41f228(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f21d, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41f21d, %struct.Memory** %MEMORY

  %loadBr_41f21d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f21d = icmp eq i8 %loadBr_41f21d, 1
  br i1 %cmpBr_41f21d, label %block_.L_41f228, label %block_41f223

block_41f223:
  ; Code: jmpq .L_41f8de	 RIP: 41f223	 Bytes: 5
  %loadMem_41f223 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f223 = call %struct.Memory* @routine_jmpq_.L_41f8de(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f223, i64 1723, i64 5)
  store %struct.Memory* %call_41f223, %struct.Memory** %MEMORY

  br label %block_.L_41f8de

  ; Code: .L_41f228:	 RIP: 41f228	 Bytes: 0
block_.L_41f228:

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41f228	 Bytes: 4
  %loadMem_41f228 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f228 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f228)
  store %struct.Memory* %call_41f228, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, (%rax)	 RIP: 41f22c	 Bytes: 4
  %loadMem_41f22c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f22c = call %struct.Memory* @routine_cmpq__0x0____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f22c)
  store %struct.Memory* %call_41f22c, %struct.Memory** %MEMORY

  ; Code: jne .L_41f23b	 RIP: 41f230	 Bytes: 6
  %loadMem_41f230 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f230 = call %struct.Memory* @routine_jne_.L_41f23b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f230, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41f230, %struct.Memory** %MEMORY

  %loadBr_41f230 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f230 = icmp eq i8 %loadBr_41f230, 1
  br i1 %cmpBr_41f230, label %block_.L_41f23b, label %block_41f236

block_41f236:
  ; Code: jmpq .L_41f8de	 RIP: 41f236	 Bytes: 5
  %loadMem_41f236 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f236 = call %struct.Memory* @routine_jmpq_.L_41f8de(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f236, i64 1704, i64 5)
  store %struct.Memory* %call_41f236, %struct.Memory** %MEMORY

  br label %block_.L_41f8de

  ; Code: .L_41f23b:	 RIP: 41f23b	 Bytes: 0
block_.L_41f23b:

  ; Code: cmpl $0x0, 0x676d90	 RIP: 41f23b	 Bytes: 8
  %loadMem_41f23b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f23b = call %struct.Memory* @routine_cmpl__0x0__0x676d90(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f23b)
  store %struct.Memory* %call_41f23b, %struct.Memory** %MEMORY

  ; Code: jne .L_41f24e	 RIP: 41f243	 Bytes: 6
  %loadMem_41f243 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f243 = call %struct.Memory* @routine_jne_.L_41f24e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f243, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41f243, %struct.Memory** %MEMORY

  %loadBr_41f243 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f243 = icmp eq i8 %loadBr_41f243, 1
  br i1 %cmpBr_41f243, label %block_.L_41f24e, label %block_41f249

block_41f249:
  ; Code: jmpq .L_41f8de	 RIP: 41f249	 Bytes: 5
  %loadMem_41f249 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f249 = call %struct.Memory* @routine_jmpq_.L_41f8de(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f249, i64 1685, i64 5)
  store %struct.Memory* %call_41f249, %struct.Memory** %MEMORY

  br label %block_.L_41f8de

  ; Code: .L_41f24e:	 RIP: 41f24e	 Bytes: 0
block_.L_41f24e:

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 41f24e	 Bytes: 4
  %loadMem_41f24e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f24e = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f24e)
  store %struct.Memory* %call_41f24e, %struct.Memory** %MEMORY

  ; Code: movl -0x22c(%rbp), %esi	 RIP: 41f252	 Bytes: 6
  %loadMem_41f252 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f252 = call %struct.Memory* @routine_movl_MINUS0x22c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f252)
  store %struct.Memory* %call_41f252, %struct.Memory** %MEMORY

  ; Code: callq .AllocPlan7Body	 RIP: 41f258	 Bytes: 5
  %loadMem1_41f258 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41f258 = call %struct.Memory* @routine_callq_.AllocPlan7Body(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41f258, i64 77176, i64 5, i64 5)
  store %struct.Memory* %call1_41f258, %struct.Memory** %MEMORY

  %loadMem2_41f258 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41f258 = load i64, i64* %3
  %call2_41f258 = call %struct.Memory* @sub_431fd0.AllocPlan7Body(%struct.State* %0, i64  %loadPC_41f258, %struct.Memory* %loadMem2_41f258)
  store %struct.Memory* %call2_41f258, %struct.Memory** %MEMORY

  ; Code: movl $0x200, %esi	 RIP: 41f25d	 Bytes: 5
  %loadMem_41f25d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f25d = call %struct.Memory* @routine_movl__0x200___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f25d)
  store %struct.Memory* %call_41f25d, %struct.Memory** %MEMORY

  ; Code: leaq -0x220(%rbp), %rdi	 RIP: 41f262	 Bytes: 7
  %loadMem_41f262 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f262 = call %struct.Memory* @routine_leaq_MINUS0x220__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f262)
  store %struct.Memory* %call_41f262, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 41f269	 Bytes: 4
  %loadMem_41f269 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f269 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f269)
  store %struct.Memory* %call_41f269, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdx	 RIP: 41f26d	 Bytes: 3
  %loadMem_41f26d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f26d = call %struct.Memory* @routine_movq___rax____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f26d)
  store %struct.Memory* %call_41f26d, %struct.Memory** %MEMORY

  ; Code: callq .fgets_plt	 RIP: 41f270	 Bytes: 5
  %loadMem1_41f270 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41f270 = call %struct.Memory* @routine_callq_.fgets_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41f270, i64 -122160, i64 5, i64 5)
  store %struct.Memory* %call1_41f270, %struct.Memory** %MEMORY

  %loadMem2_41f270 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41f270 = load i64, i64* %3
  %call2_41f270 = call %struct.Memory* @sub_401540.fgets_plt(%struct.State* %0, i64  %loadPC_41f270, %struct.Memory* %loadMem2_41f270)
  store %struct.Memory* %call2_41f270, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41f275	 Bytes: 4
  %loadMem_41f275 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f275 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f275)
  store %struct.Memory* %call_41f275, %struct.Memory** %MEMORY

  ; Code: jne .L_41f284	 RIP: 41f279	 Bytes: 6
  %loadMem_41f279 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f279 = call %struct.Memory* @routine_jne_.L_41f284(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f279, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41f279, %struct.Memory** %MEMORY

  %loadBr_41f279 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f279 = icmp eq i8 %loadBr_41f279, 1
  br i1 %cmpBr_41f279, label %block_.L_41f284, label %block_41f27f

block_41f27f:
  ; Code: jmpq .L_41f8de	 RIP: 41f27f	 Bytes: 5
  %loadMem_41f27f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f27f = call %struct.Memory* @routine_jmpq_.L_41f8de(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f27f, i64 1631, i64 5)
  store %struct.Memory* %call_41f27f, %struct.Memory** %MEMORY

  br label %block_.L_41f8de

  ; Code: .L_41f284:	 RIP: 41f284	 Bytes: 0
block_.L_41f284:

  ; Code: movl $0x200, %esi	 RIP: 41f284	 Bytes: 5
  %loadMem_41f284 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f284 = call %struct.Memory* @routine_movl__0x200___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f284)
  store %struct.Memory* %call_41f284, %struct.Memory** %MEMORY

  ; Code: leaq -0x220(%rbp), %rdi	 RIP: 41f289	 Bytes: 7
  %loadMem_41f289 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f289 = call %struct.Memory* @routine_leaq_MINUS0x220__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f289)
  store %struct.Memory* %call_41f289, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 41f290	 Bytes: 4
  %loadMem_41f290 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f290 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f290)
  store %struct.Memory* %call_41f290, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdx	 RIP: 41f294	 Bytes: 3
  %loadMem_41f294 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f294 = call %struct.Memory* @routine_movq___rax____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f294)
  store %struct.Memory* %call_41f294, %struct.Memory** %MEMORY

  ; Code: callq .fgets_plt	 RIP: 41f297	 Bytes: 5
  %loadMem1_41f297 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41f297 = call %struct.Memory* @routine_callq_.fgets_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41f297, i64 -122199, i64 5, i64 5)
  store %struct.Memory* %call1_41f297, %struct.Memory** %MEMORY

  %loadMem2_41f297 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41f297 = load i64, i64* %3
  %call2_41f297 = call %struct.Memory* @sub_401540.fgets_plt(%struct.State* %0, i64  %loadPC_41f297, %struct.Memory* %loadMem2_41f297)
  store %struct.Memory* %call2_41f297, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41f29c	 Bytes: 4
  %loadMem_41f29c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f29c = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f29c)
  store %struct.Memory* %call_41f29c, %struct.Memory** %MEMORY

  ; Code: jne .L_41f2ab	 RIP: 41f2a0	 Bytes: 6
  %loadMem_41f2a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f2a0 = call %struct.Memory* @routine_jne_.L_41f2ab(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f2a0, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41f2a0, %struct.Memory** %MEMORY

  %loadBr_41f2a0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f2a0 = icmp eq i8 %loadBr_41f2a0, 1
  br i1 %cmpBr_41f2a0, label %block_.L_41f2ab, label %block_41f2a6

block_41f2a6:
  ; Code: jmpq .L_41f8de	 RIP: 41f2a6	 Bytes: 5
  %loadMem_41f2a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f2a6 = call %struct.Memory* @routine_jmpq_.L_41f8de(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f2a6, i64 1592, i64 5)
  store %struct.Memory* %call_41f2a6, %struct.Memory** %MEMORY

  br label %block_.L_41f8de

  ; Code: .L_41f2ab:	 RIP: 41f2ab	 Bytes: 0
block_.L_41f2ab:

  ; Code: movq $0x45a1f5, %rsi	 RIP: 41f2ab	 Bytes: 10
  %loadMem_41f2ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f2ab = call %struct.Memory* @routine_movq__0x45a1f5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f2ab)
  store %struct.Memory* %call_41f2ab, %struct.Memory** %MEMORY

  ; Code: leaq -0x220(%rbp), %rdi	 RIP: 41f2b5	 Bytes: 7
  %loadMem_41f2b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f2b5 = call %struct.Memory* @routine_leaq_MINUS0x220__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f2b5)
  store %struct.Memory* %call_41f2b5, %struct.Memory** %MEMORY

  ; Code: callq .strtok_plt	 RIP: 41f2bc	 Bytes: 5
  %loadMem1_41f2bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41f2bc = call %struct.Memory* @routine_callq_.strtok_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41f2bc, i64 -121948, i64 5, i64 5)
  store %struct.Memory* %call1_41f2bc, %struct.Memory** %MEMORY

  %loadMem2_41f2bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41f2bc = load i64, i64* %3
  %call2_41f2bc = call %struct.Memory* @sub_401660.strtok_plt(%struct.State* %0, i64  %loadPC_41f2bc, %struct.Memory* %loadMem2_41f2bc)
  store %struct.Memory* %call2_41f2bc, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x228(%rbp)	 RIP: 41f2c1	 Bytes: 7
  %loadMem_41f2c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f2c1 = call %struct.Memory* @routine_movq__rax__MINUS0x228__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f2c1)
  store %struct.Memory* %call_41f2c1, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41f2c8	 Bytes: 4
  %loadMem_41f2c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f2c8 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f2c8)
  store %struct.Memory* %call_41f2c8, %struct.Memory** %MEMORY

  ; Code: jne .L_41f2d7	 RIP: 41f2cc	 Bytes: 6
  %loadMem_41f2cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f2cc = call %struct.Memory* @routine_jne_.L_41f2d7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f2cc, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41f2cc, %struct.Memory** %MEMORY

  %loadBr_41f2cc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f2cc = icmp eq i8 %loadBr_41f2cc, 1
  br i1 %cmpBr_41f2cc, label %block_.L_41f2d7, label %block_41f2d2

block_41f2d2:
  ; Code: jmpq .L_41f8de	 RIP: 41f2d2	 Bytes: 5
  %loadMem_41f2d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f2d2 = call %struct.Memory* @routine_jmpq_.L_41f8de(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f2d2, i64 1548, i64 5)
  store %struct.Memory* %call_41f2d2, %struct.Memory** %MEMORY

  br label %block_.L_41f8de

  ; Code: .L_41f2d7:	 RIP: 41f2d7	 Bytes: 0
block_.L_41f2d7:

  ; Code: movss 0x35449(%rip), %xmm0	 RIP: 41f2d7	 Bytes: 8
  %loadMem_41f2d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f2d7 = call %struct.Memory* @routine_movss_0x35449__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f2d7)
  store %struct.Memory* %call_41f2d7, %struct.Memory** %MEMORY

  ; Code: movq -0x228(%rbp), %rdi	 RIP: 41f2df	 Bytes: 7
  %loadMem_41f2df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f2df = call %struct.Memory* @routine_movq_MINUS0x228__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f2df)
  store %struct.Memory* %call_41f2df, %struct.Memory** %MEMORY

  ; Code: callq .ascii2prob	 RIP: 41f2e6	 Bytes: 5
  %loadMem1_41f2e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41f2e6 = call %struct.Memory* @routine_callq_.ascii2prob(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41f2e6, i64 9370, i64 5, i64 5)
  store %struct.Memory* %call1_41f2e6, %struct.Memory** %MEMORY

  %loadMem2_41f2e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41f2e6 = load i64, i64* %3
  %call2_41f2e6 = call %struct.Memory* @sub_421780.ascii2prob(%struct.State* %0, i64  %loadPC_41f2e6, %struct.Memory* %loadMem2_41f2e6)
  store %struct.Memory* %call2_41f2e6, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %eax	 RIP: 41f2eb	 Bytes: 2
  %loadMem_41f2eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f2eb = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f2eb)
  store %struct.Memory* %call_41f2eb, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 41f2ed	 Bytes: 2
  %loadMem_41f2ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f2ed = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f2ed)
  store %struct.Memory* %call_41f2ed, %struct.Memory** %MEMORY

  ; Code: movq $0x45a1f5, %rsi	 RIP: 41f2ef	 Bytes: 10
  %loadMem_41f2ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f2ef = call %struct.Memory* @routine_movq__0x45a1f5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f2ef)
  store %struct.Memory* %call_41f2ef, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x230(%rbp)	 RIP: 41f2f9	 Bytes: 8
  %loadMem_41f2f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f2f9 = call %struct.Memory* @routine_movss__xmm0__MINUS0x230__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f2f9)
  store %struct.Memory* %call_41f2f9, %struct.Memory** %MEMORY

  ; Code: callq .strtok_plt	 RIP: 41f301	 Bytes: 5
  %loadMem1_41f301 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41f301 = call %struct.Memory* @routine_callq_.strtok_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41f301, i64 -122017, i64 5, i64 5)
  store %struct.Memory* %call1_41f301, %struct.Memory** %MEMORY

  %loadMem2_41f301 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41f301 = load i64, i64* %3
  %call2_41f301 = call %struct.Memory* @sub_401660.strtok_plt(%struct.State* %0, i64  %loadPC_41f301, %struct.Memory* %loadMem2_41f301)
  store %struct.Memory* %call2_41f301, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x228(%rbp)	 RIP: 41f306	 Bytes: 7
  %loadMem_41f306 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f306 = call %struct.Memory* @routine_movq__rax__MINUS0x228__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f306)
  store %struct.Memory* %call_41f306, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41f30d	 Bytes: 4
  %loadMem_41f30d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f30d = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f30d)
  store %struct.Memory* %call_41f30d, %struct.Memory** %MEMORY

  ; Code: jne .L_41f31c	 RIP: 41f311	 Bytes: 6
  %loadMem_41f311 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f311 = call %struct.Memory* @routine_jne_.L_41f31c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f311, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41f311, %struct.Memory** %MEMORY

  %loadBr_41f311 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f311 = icmp eq i8 %loadBr_41f311, 1
  br i1 %cmpBr_41f311, label %block_.L_41f31c, label %block_41f317

block_41f317:
  ; Code: jmpq .L_41f8de	 RIP: 41f317	 Bytes: 5
  %loadMem_41f317 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f317 = call %struct.Memory* @routine_jmpq_.L_41f8de(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f317, i64 1479, i64 5)
  store %struct.Memory* %call_41f317, %struct.Memory** %MEMORY

  br label %block_.L_41f8de

  ; Code: .L_41f31c:	 RIP: 41f31c	 Bytes: 0
block_.L_41f31c:

  ; Code: xorl %eax, %eax	 RIP: 41f31c	 Bytes: 2
  %loadMem_41f31c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f31c = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f31c)
  store %struct.Memory* %call_41f31c, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 41f31e	 Bytes: 2
  %loadMem_41f31e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f31e = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f31e)
  store %struct.Memory* %call_41f31e, %struct.Memory** %MEMORY

  ; Code: movq $0x45a1f5, %rsi	 RIP: 41f320	 Bytes: 10
  %loadMem_41f320 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f320 = call %struct.Memory* @routine_movq__0x45a1f5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f320)
  store %struct.Memory* %call_41f320, %struct.Memory** %MEMORY

  ; Code: callq .strtok_plt	 RIP: 41f32a	 Bytes: 5
  %loadMem1_41f32a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41f32a = call %struct.Memory* @routine_callq_.strtok_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41f32a, i64 -122058, i64 5, i64 5)
  store %struct.Memory* %call1_41f32a, %struct.Memory** %MEMORY

  %loadMem2_41f32a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41f32a = load i64, i64* %3
  %call2_41f32a = call %struct.Memory* @sub_401660.strtok_plt(%struct.State* %0, i64  %loadPC_41f32a, %struct.Memory* %loadMem2_41f32a)
  store %struct.Memory* %call2_41f32a, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x228(%rbp)	 RIP: 41f32f	 Bytes: 7
  %loadMem_41f32f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f32f = call %struct.Memory* @routine_movq__rax__MINUS0x228__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f32f)
  store %struct.Memory* %call_41f32f, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41f336	 Bytes: 4
  %loadMem_41f336 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f336 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f336)
  store %struct.Memory* %call_41f336, %struct.Memory** %MEMORY

  ; Code: jne .L_41f345	 RIP: 41f33a	 Bytes: 6
  %loadMem_41f33a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f33a = call %struct.Memory* @routine_jne_.L_41f345(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f33a, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41f33a, %struct.Memory** %MEMORY

  %loadBr_41f33a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f33a = icmp eq i8 %loadBr_41f33a, 1
  br i1 %cmpBr_41f33a, label %block_.L_41f345, label %block_41f340

block_41f340:
  ; Code: jmpq .L_41f8de	 RIP: 41f340	 Bytes: 5
  %loadMem_41f340 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f340 = call %struct.Memory* @routine_jmpq_.L_41f8de(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f340, i64 1438, i64 5)
  store %struct.Memory* %call_41f340, %struct.Memory** %MEMORY

  br label %block_.L_41f8de

  ; Code: .L_41f345:	 RIP: 41f345	 Bytes: 0
block_.L_41f345:

  ; Code: movss 0x353db(%rip), %xmm0	 RIP: 41f345	 Bytes: 8
  %loadMem_41f345 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f345 = call %struct.Memory* @routine_movss_0x353db__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f345)
  store %struct.Memory* %call_41f345, %struct.Memory** %MEMORY

  ; Code: movq -0x228(%rbp), %rdi	 RIP: 41f34d	 Bytes: 7
  %loadMem_41f34d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f34d = call %struct.Memory* @routine_movq_MINUS0x228__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f34d)
  store %struct.Memory* %call_41f34d, %struct.Memory** %MEMORY

  ; Code: callq .ascii2prob	 RIP: 41f354	 Bytes: 5
  %loadMem1_41f354 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41f354 = call %struct.Memory* @routine_callq_.ascii2prob(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41f354, i64 9260, i64 5, i64 5)
  store %struct.Memory* %call1_41f354, %struct.Memory** %MEMORY

  %loadMem2_41f354 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41f354 = load i64, i64* %3
  %call2_41f354 = call %struct.Memory* @sub_421780.ascii2prob(%struct.State* %0, i64  %loadPC_41f354, %struct.Memory* %loadMem2_41f354)
  store %struct.Memory* %call2_41f354, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 41f359	 Bytes: 4
  %loadMem_41f359 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f359 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f359)
  store %struct.Memory* %call_41f359, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0xa8(%rdi)	 RIP: 41f35d	 Bytes: 8
  %loadMem_41f35d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f35d = call %struct.Memory* @routine_movss__xmm0__0xa8__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f35d)
  store %struct.Memory* %call_41f35d, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 41f365	 Bytes: 4
  %loadMem_41f365 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f365 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f365)
  store %struct.Memory* %call_41f365, %struct.Memory** %MEMORY

  ; Code: movss 0xa8(%rdi), %xmm0	 RIP: 41f369	 Bytes: 8
  %loadMem_41f369 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f369 = call %struct.Memory* @routine_movss_0xa8__rdi____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f369)
  store %struct.Memory* %call_41f369, %struct.Memory** %MEMORY

  ; Code: movss -0x230(%rbp), %xmm1	 RIP: 41f371	 Bytes: 8
  %loadMem_41f371 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f371 = call %struct.Memory* @routine_movss_MINUS0x230__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f371)
  store %struct.Memory* %call_41f371, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 41f379	 Bytes: 4
  %loadMem_41f379 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f379 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f379)
  store %struct.Memory* %call_41f379, %struct.Memory** %MEMORY

  ; Code: addss 0xa8(%rdi), %xmm1	 RIP: 41f37d	 Bytes: 8
  %loadMem_41f37d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f37d = call %struct.Memory* @routine_addss_0xa8__rdi____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f37d)
  store %struct.Memory* %call_41f37d, %struct.Memory** %MEMORY

  ; Code: divss %xmm1, %xmm0	 RIP: 41f385	 Bytes: 4
  %loadMem_41f385 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f385 = call %struct.Memory* @routine_divss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f385)
  store %struct.Memory* %call_41f385, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 41f389	 Bytes: 4
  %loadMem_41f389 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f389 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f389)
  store %struct.Memory* %call_41f389, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0xa8(%rdi)	 RIP: 41f38d	 Bytes: 8
  %loadMem_41f38d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f38d = call %struct.Memory* @routine_movss__xmm0__0xa8__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f38d)
  store %struct.Memory* %call_41f38d, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x234(%rbp)	 RIP: 41f395	 Bytes: 10
  %loadMem_41f395 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f395 = call %struct.Memory* @routine_movl__0x1__MINUS0x234__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f395)
  store %struct.Memory* %call_41f395, %struct.Memory** %MEMORY

  ; Code: .L_41f39f:	 RIP: 41f39f	 Bytes: 0
  br label %block_.L_41f39f
block_.L_41f39f:

  ; Code: movl -0x234(%rbp), %eax	 RIP: 41f39f	 Bytes: 6
  %loadMem_41f39f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f39f = call %struct.Memory* @routine_movl_MINUS0x234__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f39f)
  store %struct.Memory* %call_41f39f, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41f3a5	 Bytes: 4
  %loadMem_41f3a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f3a5 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f3a5)
  store %struct.Memory* %call_41f3a5, %struct.Memory** %MEMORY

  ; Code: cmpl 0x88(%rcx), %eax	 RIP: 41f3a9	 Bytes: 6
  %loadMem_41f3a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f3a9 = call %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f3a9)
  store %struct.Memory* %call_41f3a9, %struct.Memory** %MEMORY

  ; Code: jg .L_41f841	 RIP: 41f3af	 Bytes: 6
  %loadMem_41f3af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f3af = call %struct.Memory* @routine_jg_.L_41f841(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f3af, i8* %BRANCH_TAKEN, i64 1170, i64 6, i64 6)
  store %struct.Memory* %call_41f3af, %struct.Memory** %MEMORY

  %loadBr_41f3af = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f3af = icmp eq i8 %loadBr_41f3af, 1
  br i1 %cmpBr_41f3af, label %block_.L_41f841, label %block_41f3b5

block_41f3b5:
  ; Code: movl $0x200, %esi	 RIP: 41f3b5	 Bytes: 5
  %loadMem_41f3b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f3b5 = call %struct.Memory* @routine_movl__0x200___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f3b5)
  store %struct.Memory* %call_41f3b5, %struct.Memory** %MEMORY

  ; Code: leaq -0x220(%rbp), %rdi	 RIP: 41f3ba	 Bytes: 7
  %loadMem_41f3ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f3ba = call %struct.Memory* @routine_leaq_MINUS0x220__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f3ba)
  store %struct.Memory* %call_41f3ba, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 41f3c1	 Bytes: 4
  %loadMem_41f3c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f3c1 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f3c1)
  store %struct.Memory* %call_41f3c1, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdx	 RIP: 41f3c5	 Bytes: 3
  %loadMem_41f3c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f3c5 = call %struct.Memory* @routine_movq___rax____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f3c5)
  store %struct.Memory* %call_41f3c5, %struct.Memory** %MEMORY

  ; Code: callq .fgets_plt	 RIP: 41f3c8	 Bytes: 5
  %loadMem1_41f3c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41f3c8 = call %struct.Memory* @routine_callq_.fgets_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41f3c8, i64 -122504, i64 5, i64 5)
  store %struct.Memory* %call1_41f3c8, %struct.Memory** %MEMORY

  %loadMem2_41f3c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41f3c8 = load i64, i64* %3
  %call2_41f3c8 = call %struct.Memory* @sub_401540.fgets_plt(%struct.State* %0, i64  %loadPC_41f3c8, %struct.Memory* %loadMem2_41f3c8)
  store %struct.Memory* %call2_41f3c8, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41f3cd	 Bytes: 4
  %loadMem_41f3cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f3cd = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f3cd)
  store %struct.Memory* %call_41f3cd, %struct.Memory** %MEMORY

  ; Code: jne .L_41f3dc	 RIP: 41f3d1	 Bytes: 6
  %loadMem_41f3d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f3d1 = call %struct.Memory* @routine_jne_.L_41f3dc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f3d1, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41f3d1, %struct.Memory** %MEMORY

  %loadBr_41f3d1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f3d1 = icmp eq i8 %loadBr_41f3d1, 1
  br i1 %cmpBr_41f3d1, label %block_.L_41f3dc, label %block_41f3d7

block_41f3d7:
  ; Code: jmpq .L_41f8de	 RIP: 41f3d7	 Bytes: 5
  %loadMem_41f3d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f3d7 = call %struct.Memory* @routine_jmpq_.L_41f8de(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f3d7, i64 1287, i64 5)
  store %struct.Memory* %call_41f3d7, %struct.Memory** %MEMORY

  br label %block_.L_41f8de

  ; Code: .L_41f3dc:	 RIP: 41f3dc	 Bytes: 0
block_.L_41f3dc:

  ; Code: movq $0x45a1f5, %rsi	 RIP: 41f3dc	 Bytes: 10
  %loadMem_41f3dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f3dc = call %struct.Memory* @routine_movq__0x45a1f5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f3dc)
  store %struct.Memory* %call_41f3dc, %struct.Memory** %MEMORY

  ; Code: leaq -0x220(%rbp), %rdi	 RIP: 41f3e6	 Bytes: 7
  %loadMem_41f3e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f3e6 = call %struct.Memory* @routine_leaq_MINUS0x220__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f3e6)
  store %struct.Memory* %call_41f3e6, %struct.Memory** %MEMORY

  ; Code: callq .strtok_plt	 RIP: 41f3ed	 Bytes: 5
  %loadMem1_41f3ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41f3ed = call %struct.Memory* @routine_callq_.strtok_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41f3ed, i64 -122253, i64 5, i64 5)
  store %struct.Memory* %call1_41f3ed, %struct.Memory** %MEMORY

  %loadMem2_41f3ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41f3ed = load i64, i64* %3
  %call2_41f3ed = call %struct.Memory* @sub_401660.strtok_plt(%struct.State* %0, i64  %loadPC_41f3ed, %struct.Memory* %loadMem2_41f3ed)
  store %struct.Memory* %call2_41f3ed, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x228(%rbp)	 RIP: 41f3f2	 Bytes: 7
  %loadMem_41f3f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f3f2 = call %struct.Memory* @routine_movq__rax__MINUS0x228__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f3f2)
  store %struct.Memory* %call_41f3f2, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41f3f9	 Bytes: 4
  %loadMem_41f3f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f3f9 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f3f9)
  store %struct.Memory* %call_41f3f9, %struct.Memory** %MEMORY

  ; Code: jne .L_41f408	 RIP: 41f3fd	 Bytes: 6
  %loadMem_41f3fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f3fd = call %struct.Memory* @routine_jne_.L_41f408(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f3fd, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41f3fd, %struct.Memory** %MEMORY

  %loadBr_41f3fd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f3fd = icmp eq i8 %loadBr_41f3fd, 1
  br i1 %cmpBr_41f3fd, label %block_.L_41f408, label %block_41f403

block_41f403:
  ; Code: jmpq .L_41f8de	 RIP: 41f403	 Bytes: 5
  %loadMem_41f403 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f403 = call %struct.Memory* @routine_jmpq_.L_41f8de(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f403, i64 1243, i64 5)
  store %struct.Memory* %call_41f403, %struct.Memory** %MEMORY

  br label %block_.L_41f8de

  ; Code: .L_41f408:	 RIP: 41f408	 Bytes: 0
block_.L_41f408:

  ; Code: movq -0x228(%rbp), %rdi	 RIP: 41f408	 Bytes: 7
  %loadMem_41f408 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f408 = call %struct.Memory* @routine_movq_MINUS0x228__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f408)
  store %struct.Memory* %call_41f408, %struct.Memory** %MEMORY

  ; Code: callq .atoi_plt	 RIP: 41f40f	 Bytes: 5
  %loadMem1_41f40f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41f40f = call %struct.Memory* @routine_callq_.atoi_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41f40f, i64 -122223, i64 5, i64 5)
  store %struct.Memory* %call1_41f40f, %struct.Memory** %MEMORY

  %loadMem2_41f40f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41f40f = load i64, i64* %3
  %call2_41f40f = call %struct.Memory* @ext_atoi(%struct.State* %0, i64  %loadPC_41f40f, %struct.Memory* %loadMem2_41f40f)
  store %struct.Memory* %call2_41f40f, %struct.Memory** %MEMORY

  ; Code: cmpl -0x234(%rbp), %eax	 RIP: 41f414	 Bytes: 6
  %loadMem_41f414 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f414 = call %struct.Memory* @routine_cmpl_MINUS0x234__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f414)
  store %struct.Memory* %call_41f414, %struct.Memory** %MEMORY

  ; Code: je .L_41f425	 RIP: 41f41a	 Bytes: 6
  %loadMem_41f41a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f41a = call %struct.Memory* @routine_je_.L_41f425(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f41a, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41f41a, %struct.Memory** %MEMORY

  %loadBr_41f41a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f41a = icmp eq i8 %loadBr_41f41a, 1
  br i1 %cmpBr_41f41a, label %block_.L_41f425, label %block_41f420

block_41f420:
  ; Code: jmpq .L_41f8de	 RIP: 41f420	 Bytes: 5
  %loadMem_41f420 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f420 = call %struct.Memory* @routine_jmpq_.L_41f8de(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f420, i64 1214, i64 5)
  store %struct.Memory* %call_41f420, %struct.Memory** %MEMORY

  br label %block_.L_41f8de

  ; Code: .L_41f425:	 RIP: 41f425	 Bytes: 0
block_.L_41f425:

  ; Code: movl $0x0, -0x238(%rbp)	 RIP: 41f425	 Bytes: 10
  %loadMem_41f425 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f425 = call %struct.Memory* @routine_movl__0x0__MINUS0x238__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f425)
  store %struct.Memory* %call_41f425, %struct.Memory** %MEMORY

  ; Code: .L_41f42f:	 RIP: 41f42f	 Bytes: 0
  br label %block_.L_41f42f
block_.L_41f42f:

  ; Code: movl -0x238(%rbp), %eax	 RIP: 41f42f	 Bytes: 6
  %loadMem_41f42f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f42f = call %struct.Memory* @routine_movl_MINUS0x238__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f42f)
  store %struct.Memory* %call_41f42f, %struct.Memory** %MEMORY

  ; Code: cmpl 0x677060, %eax	 RIP: 41f435	 Bytes: 7
  %loadMem_41f435 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f435 = call %struct.Memory* @routine_cmpl_0x677060___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f435)
  store %struct.Memory* %call_41f435, %struct.Memory** %MEMORY

  ; Code: jge .L_41f4c1	 RIP: 41f43c	 Bytes: 6
  %loadMem_41f43c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f43c = call %struct.Memory* @routine_jge_.L_41f4c1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f43c, i8* %BRANCH_TAKEN, i64 133, i64 6, i64 6)
  store %struct.Memory* %call_41f43c, %struct.Memory** %MEMORY

  %loadBr_41f43c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f43c = icmp eq i8 %loadBr_41f43c, 1
  br i1 %cmpBr_41f43c, label %block_.L_41f4c1, label %block_41f442

block_41f442:
  ; Code: xorl %eax, %eax	 RIP: 41f442	 Bytes: 2
  %loadMem_41f442 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f442 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f442)
  store %struct.Memory* %call_41f442, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 41f444	 Bytes: 2
  %loadMem_41f444 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f444 = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f444)
  store %struct.Memory* %call_41f444, %struct.Memory** %MEMORY

  ; Code: movq $0x45a1f5, %rsi	 RIP: 41f446	 Bytes: 10
  %loadMem_41f446 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f446 = call %struct.Memory* @routine_movq__0x45a1f5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f446)
  store %struct.Memory* %call_41f446, %struct.Memory** %MEMORY

  ; Code: callq .strtok_plt	 RIP: 41f450	 Bytes: 5
  %loadMem1_41f450 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41f450 = call %struct.Memory* @routine_callq_.strtok_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41f450, i64 -122352, i64 5, i64 5)
  store %struct.Memory* %call1_41f450, %struct.Memory** %MEMORY

  %loadMem2_41f450 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41f450 = load i64, i64* %3
  %call2_41f450 = call %struct.Memory* @sub_401660.strtok_plt(%struct.State* %0, i64  %loadPC_41f450, %struct.Memory* %loadMem2_41f450)
  store %struct.Memory* %call2_41f450, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x228(%rbp)	 RIP: 41f455	 Bytes: 7
  %loadMem_41f455 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f455 = call %struct.Memory* @routine_movq__rax__MINUS0x228__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f455)
  store %struct.Memory* %call_41f455, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41f45c	 Bytes: 4
  %loadMem_41f45c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f45c = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f45c)
  store %struct.Memory* %call_41f45c, %struct.Memory** %MEMORY

  ; Code: jne .L_41f46b	 RIP: 41f460	 Bytes: 6
  %loadMem_41f460 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f460 = call %struct.Memory* @routine_jne_.L_41f46b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f460, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41f460, %struct.Memory** %MEMORY

  %loadBr_41f460 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f460 = icmp eq i8 %loadBr_41f460, 1
  br i1 %cmpBr_41f460, label %block_.L_41f46b, label %block_41f466

block_41f466:
  ; Code: jmpq .L_41f8de	 RIP: 41f466	 Bytes: 5
  %loadMem_41f466 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f466 = call %struct.Memory* @routine_jmpq_.L_41f8de(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f466, i64 1144, i64 5)
  store %struct.Memory* %call_41f466, %struct.Memory** %MEMORY

  br label %block_.L_41f8de

  ; Code: .L_41f46b:	 RIP: 41f46b	 Bytes: 0
block_.L_41f46b:

  ; Code: movq -0x228(%rbp), %rdi	 RIP: 41f46b	 Bytes: 7
  %loadMem_41f46b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f46b = call %struct.Memory* @routine_movq_MINUS0x228__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f46b)
  store %struct.Memory* %call_41f46b, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41f472	 Bytes: 4
  %loadMem_41f472 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f472 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f472)
  store %struct.Memory* %call_41f472, %struct.Memory** %MEMORY

  ; Code: movslq -0x238(%rbp), %rcx	 RIP: 41f476	 Bytes: 7
  %loadMem_41f476 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f476 = call %struct.Memory* @routine_movslq_MINUS0x238__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f476)
  store %struct.Memory* %call_41f476, %struct.Memory** %MEMORY

  ; Code: movss 0xe0(%rax,%rcx,4), %xmm0	 RIP: 41f47d	 Bytes: 9
  %loadMem_41f47d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f47d = call %struct.Memory* @routine_movss_0xe0__rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f47d)
  store %struct.Memory* %call_41f47d, %struct.Memory** %MEMORY

  ; Code: callq .ascii2prob	 RIP: 41f486	 Bytes: 5
  %loadMem1_41f486 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41f486 = call %struct.Memory* @routine_callq_.ascii2prob(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41f486, i64 8954, i64 5, i64 5)
  store %struct.Memory* %call1_41f486, %struct.Memory** %MEMORY

  %loadMem2_41f486 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41f486 = load i64, i64* %3
  %call2_41f486 = call %struct.Memory* @sub_421780.ascii2prob(%struct.State* %0, i64  %loadPC_41f486, %struct.Memory* %loadMem2_41f486)
  store %struct.Memory* %call2_41f486, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41f48b	 Bytes: 4
  %loadMem_41f48b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f48b = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f48b)
  store %struct.Memory* %call_41f48b, %struct.Memory** %MEMORY

  ; Code: movq 0x98(%rax), %rax	 RIP: 41f48f	 Bytes: 7
  %loadMem_41f48f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f48f = call %struct.Memory* @routine_movq_0x98__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f48f)
  store %struct.Memory* %call_41f48f, %struct.Memory** %MEMORY

  ; Code: movslq -0x234(%rbp), %rcx	 RIP: 41f496	 Bytes: 7
  %loadMem_41f496 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f496 = call %struct.Memory* @routine_movslq_MINUS0x234__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f496)
  store %struct.Memory* %call_41f496, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 41f49d	 Bytes: 4
  %loadMem_41f49d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f49d = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f49d)
  store %struct.Memory* %call_41f49d, %struct.Memory** %MEMORY

  ; Code: movslq -0x238(%rbp), %rcx	 RIP: 41f4a1	 Bytes: 7
  %loadMem_41f4a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f4a1 = call %struct.Memory* @routine_movslq_MINUS0x238__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f4a1)
  store %struct.Memory* %call_41f4a1, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, (%rax,%rcx,4)	 RIP: 41f4a8	 Bytes: 5
  %loadMem_41f4a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f4a8 = call %struct.Memory* @routine_movss__xmm0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f4a8)
  store %struct.Memory* %call_41f4a8, %struct.Memory** %MEMORY

  ; Code: movl -0x238(%rbp), %eax	 RIP: 41f4ad	 Bytes: 6
  %loadMem_41f4ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f4ad = call %struct.Memory* @routine_movl_MINUS0x238__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f4ad)
  store %struct.Memory* %call_41f4ad, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41f4b3	 Bytes: 3
  %loadMem_41f4b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f4b3 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f4b3)
  store %struct.Memory* %call_41f4b3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x238(%rbp)	 RIP: 41f4b6	 Bytes: 6
  %loadMem_41f4b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f4b6 = call %struct.Memory* @routine_movl__eax__MINUS0x238__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f4b6)
  store %struct.Memory* %call_41f4b6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41f42f	 RIP: 41f4bc	 Bytes: 5
  %loadMem_41f4bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f4bc = call %struct.Memory* @routine_jmpq_.L_41f42f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f4bc, i64 -141, i64 5)
  store %struct.Memory* %call_41f4bc, %struct.Memory** %MEMORY

  br label %block_.L_41f42f

  ; Code: .L_41f4c1:	 RIP: 41f4c1	 Bytes: 0
block_.L_41f4c1:

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41f4c1	 Bytes: 4
  %loadMem_41f4c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f4c1 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f4c1)
  store %struct.Memory* %call_41f4c1, %struct.Memory** %MEMORY

  ; Code: movl 0x1c8(%rax), %ecx	 RIP: 41f4c5	 Bytes: 6
  %loadMem_41f4c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f4c5 = call %struct.Memory* @routine_movl_0x1c8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f4c5)
  store %struct.Memory* %call_41f4c5, %struct.Memory** %MEMORY

  ; Code: andl $0x100, %ecx	 RIP: 41f4cb	 Bytes: 6
  %loadMem_41f4cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f4cb = call %struct.Memory* @routine_andl__0x100___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f4cb)
  store %struct.Memory* %call_41f4cb, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 41f4d1	 Bytes: 3
  %loadMem_41f4d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f4d1 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f4d1)
  store %struct.Memory* %call_41f4d1, %struct.Memory** %MEMORY

  ; Code: je .L_41f521	 RIP: 41f4d4	 Bytes: 6
  %loadMem_41f4d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f4d4 = call %struct.Memory* @routine_je_.L_41f521(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f4d4, i8* %BRANCH_TAKEN, i64 77, i64 6, i64 6)
  store %struct.Memory* %call_41f4d4, %struct.Memory** %MEMORY

  %loadBr_41f4d4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f4d4 = icmp eq i8 %loadBr_41f4d4, 1
  br i1 %cmpBr_41f4d4, label %block_.L_41f521, label %block_41f4da

block_41f4da:
  ; Code: xorl %eax, %eax	 RIP: 41f4da	 Bytes: 2
  %loadMem_41f4da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f4da = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f4da)
  store %struct.Memory* %call_41f4da, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 41f4dc	 Bytes: 2
  %loadMem_41f4dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f4dc = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f4dc)
  store %struct.Memory* %call_41f4dc, %struct.Memory** %MEMORY

  ; Code: movq $0x45a1f5, %rsi	 RIP: 41f4de	 Bytes: 10
  %loadMem_41f4de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f4de = call %struct.Memory* @routine_movq__0x45a1f5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f4de)
  store %struct.Memory* %call_41f4de, %struct.Memory** %MEMORY

  ; Code: callq .strtok_plt	 RIP: 41f4e8	 Bytes: 5
  %loadMem1_41f4e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41f4e8 = call %struct.Memory* @routine_callq_.strtok_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41f4e8, i64 -122504, i64 5, i64 5)
  store %struct.Memory* %call1_41f4e8, %struct.Memory** %MEMORY

  %loadMem2_41f4e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41f4e8 = load i64, i64* %3
  %call2_41f4e8 = call %struct.Memory* @sub_401660.strtok_plt(%struct.State* %0, i64  %loadPC_41f4e8, %struct.Memory* %loadMem2_41f4e8)
  store %struct.Memory* %call2_41f4e8, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x228(%rbp)	 RIP: 41f4ed	 Bytes: 7
  %loadMem_41f4ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f4ed = call %struct.Memory* @routine_movq__rax__MINUS0x228__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f4ed)
  store %struct.Memory* %call_41f4ed, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41f4f4	 Bytes: 4
  %loadMem_41f4f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f4f4 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f4f4)
  store %struct.Memory* %call_41f4f4, %struct.Memory** %MEMORY

  ; Code: jne .L_41f503	 RIP: 41f4f8	 Bytes: 6
  %loadMem_41f4f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f4f8 = call %struct.Memory* @routine_jne_.L_41f503(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f4f8, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41f4f8, %struct.Memory** %MEMORY

  %loadBr_41f4f8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f4f8 = icmp eq i8 %loadBr_41f4f8, 1
  br i1 %cmpBr_41f4f8, label %block_.L_41f503, label %block_41f4fe

block_41f4fe:
  ; Code: jmpq .L_41f8de	 RIP: 41f4fe	 Bytes: 5
  %loadMem_41f4fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f4fe = call %struct.Memory* @routine_jmpq_.L_41f8de(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f4fe, i64 992, i64 5)
  store %struct.Memory* %call_41f4fe, %struct.Memory** %MEMORY

  br label %block_.L_41f8de

  ; Code: .L_41f503:	 RIP: 41f503	 Bytes: 0
block_.L_41f503:

  ; Code: movq -0x228(%rbp), %rdi	 RIP: 41f503	 Bytes: 7
  %loadMem_41f503 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f503 = call %struct.Memory* @routine_movq_MINUS0x228__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f503)
  store %struct.Memory* %call_41f503, %struct.Memory** %MEMORY

  ; Code: callq .atoi_plt	 RIP: 41f50a	 Bytes: 5
  %loadMem1_41f50a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41f50a = call %struct.Memory* @routine_callq_.atoi_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41f50a, i64 -122474, i64 5, i64 5)
  store %struct.Memory* %call1_41f50a, %struct.Memory** %MEMORY

  %loadMem2_41f50a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41f50a = load i64, i64* %3
  %call2_41f50a = call %struct.Memory* @ext_atoi(%struct.State* %0, i64  %loadPC_41f50a, %struct.Memory* %loadMem2_41f50a)
  store %struct.Memory* %call2_41f50a, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 41f50f	 Bytes: 4
  %loadMem_41f50f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f50f = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f50f)
  store %struct.Memory* %call_41f50f, %struct.Memory** %MEMORY

  ; Code: movq 0x48(%rdi), %rdi	 RIP: 41f513	 Bytes: 4
  %loadMem_41f513 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f513 = call %struct.Memory* @routine_movq_0x48__rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f513)
  store %struct.Memory* %call_41f513, %struct.Memory** %MEMORY

  ; Code: movslq -0x234(%rbp), %rcx	 RIP: 41f517	 Bytes: 7
  %loadMem_41f517 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f517 = call %struct.Memory* @routine_movslq_MINUS0x234__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f517)
  store %struct.Memory* %call_41f517, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rdi,%rcx,4)	 RIP: 41f51e	 Bytes: 3
  %loadMem_41f51e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f51e = call %struct.Memory* @routine_movl__eax____rdi__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f51e)
  store %struct.Memory* %call_41f51e, %struct.Memory** %MEMORY

  ; Code: .L_41f521:	 RIP: 41f521	 Bytes: 0
  br label %block_.L_41f521
block_.L_41f521:

  ; Code: movl $0x200, %esi	 RIP: 41f521	 Bytes: 5
  %loadMem_41f521 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f521 = call %struct.Memory* @routine_movl__0x200___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f521)
  store %struct.Memory* %call_41f521, %struct.Memory** %MEMORY

  ; Code: leaq -0x220(%rbp), %rdi	 RIP: 41f526	 Bytes: 7
  %loadMem_41f526 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f526 = call %struct.Memory* @routine_leaq_MINUS0x220__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f526)
  store %struct.Memory* %call_41f526, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 41f52d	 Bytes: 4
  %loadMem_41f52d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f52d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f52d)
  store %struct.Memory* %call_41f52d, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdx	 RIP: 41f531	 Bytes: 3
  %loadMem_41f531 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f531 = call %struct.Memory* @routine_movq___rax____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f531)
  store %struct.Memory* %call_41f531, %struct.Memory** %MEMORY

  ; Code: callq .fgets_plt	 RIP: 41f534	 Bytes: 5
  %loadMem1_41f534 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41f534 = call %struct.Memory* @routine_callq_.fgets_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41f534, i64 -122868, i64 5, i64 5)
  store %struct.Memory* %call1_41f534, %struct.Memory** %MEMORY

  %loadMem2_41f534 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41f534 = load i64, i64* %3
  %call2_41f534 = call %struct.Memory* @sub_401540.fgets_plt(%struct.State* %0, i64  %loadPC_41f534, %struct.Memory* %loadMem2_41f534)
  store %struct.Memory* %call2_41f534, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41f539	 Bytes: 4
  %loadMem_41f539 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f539 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f539)
  store %struct.Memory* %call_41f539, %struct.Memory** %MEMORY

  ; Code: jne .L_41f548	 RIP: 41f53d	 Bytes: 6
  %loadMem_41f53d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f53d = call %struct.Memory* @routine_jne_.L_41f548(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f53d, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41f53d, %struct.Memory** %MEMORY

  %loadBr_41f53d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f53d = icmp eq i8 %loadBr_41f53d, 1
  br i1 %cmpBr_41f53d, label %block_.L_41f548, label %block_41f543

block_41f543:
  ; Code: jmpq .L_41f8de	 RIP: 41f543	 Bytes: 5
  %loadMem_41f543 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f543 = call %struct.Memory* @routine_jmpq_.L_41f8de(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f543, i64 923, i64 5)
  store %struct.Memory* %call_41f543, %struct.Memory** %MEMORY

  br label %block_.L_41f8de

  ; Code: .L_41f548:	 RIP: 41f548	 Bytes: 0
block_.L_41f548:

  ; Code: movq $0x45a1f5, %rsi	 RIP: 41f548	 Bytes: 10
  %loadMem_41f548 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f548 = call %struct.Memory* @routine_movq__0x45a1f5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f548)
  store %struct.Memory* %call_41f548, %struct.Memory** %MEMORY

  ; Code: leaq -0x220(%rbp), %rdi	 RIP: 41f552	 Bytes: 7
  %loadMem_41f552 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f552 = call %struct.Memory* @routine_leaq_MINUS0x220__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f552)
  store %struct.Memory* %call_41f552, %struct.Memory** %MEMORY

  ; Code: callq .strtok_plt	 RIP: 41f559	 Bytes: 5
  %loadMem1_41f559 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41f559 = call %struct.Memory* @routine_callq_.strtok_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41f559, i64 -122617, i64 5, i64 5)
  store %struct.Memory* %call1_41f559, %struct.Memory** %MEMORY

  %loadMem2_41f559 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41f559 = load i64, i64* %3
  %call2_41f559 = call %struct.Memory* @sub_401660.strtok_plt(%struct.State* %0, i64  %loadPC_41f559, %struct.Memory* %loadMem2_41f559)
  store %struct.Memory* %call2_41f559, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x228(%rbp)	 RIP: 41f55e	 Bytes: 7
  %loadMem_41f55e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f55e = call %struct.Memory* @routine_movq__rax__MINUS0x228__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f55e)
  store %struct.Memory* %call_41f55e, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41f565	 Bytes: 4
  %loadMem_41f565 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f565 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f565)
  store %struct.Memory* %call_41f565, %struct.Memory** %MEMORY

  ; Code: jne .L_41f574	 RIP: 41f569	 Bytes: 6
  %loadMem_41f569 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f569 = call %struct.Memory* @routine_jne_.L_41f574(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f569, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41f569, %struct.Memory** %MEMORY

  %loadBr_41f569 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f569 = icmp eq i8 %loadBr_41f569, 1
  br i1 %cmpBr_41f569, label %block_.L_41f574, label %block_41f56f

block_41f56f:
  ; Code: jmpq .L_41f8de	 RIP: 41f56f	 Bytes: 5
  %loadMem_41f56f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f56f = call %struct.Memory* @routine_jmpq_.L_41f8de(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f56f, i64 879, i64 5)
  store %struct.Memory* %call_41f56f, %struct.Memory** %MEMORY

  br label %block_.L_41f8de

  ; Code: .L_41f574:	 RIP: 41f574	 Bytes: 0
block_.L_41f574:

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41f574	 Bytes: 4
  %loadMem_41f574 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f574 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f574)
  store %struct.Memory* %call_41f574, %struct.Memory** %MEMORY

  ; Code: movl 0x1c8(%rax), %ecx	 RIP: 41f578	 Bytes: 6
  %loadMem_41f578 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f578 = call %struct.Memory* @routine_movl_0x1c8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f578)
  store %struct.Memory* %call_41f578, %struct.Memory** %MEMORY

  ; Code: andl $0x4, %ecx	 RIP: 41f57e	 Bytes: 3
  %loadMem_41f57e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f57e = call %struct.Memory* @routine_andl__0x4___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f57e)
  store %struct.Memory* %call_41f57e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 41f581	 Bytes: 3
  %loadMem_41f581 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f581 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f581)
  store %struct.Memory* %call_41f581, %struct.Memory** %MEMORY

  ; Code: je .L_41f5a5	 RIP: 41f584	 Bytes: 6
  %loadMem_41f584 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f584 = call %struct.Memory* @routine_je_.L_41f5a5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f584, i8* %BRANCH_TAKEN, i64 33, i64 6, i64 6)
  store %struct.Memory* %call_41f584, %struct.Memory** %MEMORY

  %loadBr_41f584 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f584 = icmp eq i8 %loadBr_41f584, 1
  br i1 %cmpBr_41f584, label %block_.L_41f5a5, label %block_41f58a

block_41f58a:
  ; Code: movq -0x228(%rbp), %rax	 RIP: 41f58a	 Bytes: 7
  %loadMem_41f58a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f58a = call %struct.Memory* @routine_movq_MINUS0x228__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f58a)
  store %struct.Memory* %call_41f58a, %struct.Memory** %MEMORY

  ; Code: movb (%rax), %cl	 RIP: 41f591	 Bytes: 2
  %loadMem_41f591 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f591 = call %struct.Memory* @routine_movb___rax____cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f591)
  store %struct.Memory* %call_41f591, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41f593	 Bytes: 4
  %loadMem_41f593 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f593 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f593)
  store %struct.Memory* %call_41f593, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rax), %rax	 RIP: 41f597	 Bytes: 4
  %loadMem_41f597 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f597 = call %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f597)
  store %struct.Memory* %call_41f597, %struct.Memory** %MEMORY

  ; Code: movslq -0x234(%rbp), %rdx	 RIP: 41f59b	 Bytes: 7
  %loadMem_41f59b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f59b = call %struct.Memory* @routine_movslq_MINUS0x234__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f59b)
  store %struct.Memory* %call_41f59b, %struct.Memory** %MEMORY

  ; Code: movb %cl, (%rax,%rdx,1)	 RIP: 41f5a2	 Bytes: 3
  %loadMem_41f5a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f5a2 = call %struct.Memory* @routine_movb__cl____rax__rdx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f5a2)
  store %struct.Memory* %call_41f5a2, %struct.Memory** %MEMORY

  ; Code: .L_41f5a5:	 RIP: 41f5a5	 Bytes: 0
  br label %block_.L_41f5a5
block_.L_41f5a5:

  ; Code: movl -0x234(%rbp), %eax	 RIP: 41f5a5	 Bytes: 6
  %loadMem_41f5a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f5a5 = call %struct.Memory* @routine_movl_MINUS0x234__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f5a5)
  store %struct.Memory* %call_41f5a5, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41f5ab	 Bytes: 4
  %loadMem_41f5ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f5ab = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f5ab)
  store %struct.Memory* %call_41f5ab, %struct.Memory** %MEMORY

  ; Code: cmpl 0x88(%rcx), %eax	 RIP: 41f5af	 Bytes: 6
  %loadMem_41f5af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f5af = call %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f5af)
  store %struct.Memory* %call_41f5af, %struct.Memory** %MEMORY

  ; Code: jge .L_41f65c	 RIP: 41f5b5	 Bytes: 6
  %loadMem_41f5b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f5b5 = call %struct.Memory* @routine_jge_.L_41f65c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f5b5, i8* %BRANCH_TAKEN, i64 167, i64 6, i64 6)
  store %struct.Memory* %call_41f5b5, %struct.Memory** %MEMORY

  %loadBr_41f5b5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f5b5 = icmp eq i8 %loadBr_41f5b5, 1
  br i1 %cmpBr_41f5b5, label %block_.L_41f65c, label %block_41f5bb

block_41f5bb:
  ; Code: movl $0x0, -0x238(%rbp)	 RIP: 41f5bb	 Bytes: 10
  %loadMem_41f5bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f5bb = call %struct.Memory* @routine_movl__0x0__MINUS0x238__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f5bb)
  store %struct.Memory* %call_41f5bb, %struct.Memory** %MEMORY

  ; Code: .L_41f5c5:	 RIP: 41f5c5	 Bytes: 0
  br label %block_.L_41f5c5
block_.L_41f5c5:

  ; Code: movl -0x238(%rbp), %eax	 RIP: 41f5c5	 Bytes: 6
  %loadMem_41f5c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f5c5 = call %struct.Memory* @routine_movl_MINUS0x238__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f5c5)
  store %struct.Memory* %call_41f5c5, %struct.Memory** %MEMORY

  ; Code: cmpl 0x677060, %eax	 RIP: 41f5cb	 Bytes: 7
  %loadMem_41f5cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f5cb = call %struct.Memory* @routine_cmpl_0x677060___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f5cb)
  store %struct.Memory* %call_41f5cb, %struct.Memory** %MEMORY

  ; Code: jge .L_41f657	 RIP: 41f5d2	 Bytes: 6
  %loadMem_41f5d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f5d2 = call %struct.Memory* @routine_jge_.L_41f657(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f5d2, i8* %BRANCH_TAKEN, i64 133, i64 6, i64 6)
  store %struct.Memory* %call_41f5d2, %struct.Memory** %MEMORY

  %loadBr_41f5d2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f5d2 = icmp eq i8 %loadBr_41f5d2, 1
  br i1 %cmpBr_41f5d2, label %block_.L_41f657, label %block_41f5d8

block_41f5d8:
  ; Code: xorl %eax, %eax	 RIP: 41f5d8	 Bytes: 2
  %loadMem_41f5d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f5d8 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f5d8)
  store %struct.Memory* %call_41f5d8, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 41f5da	 Bytes: 2
  %loadMem_41f5da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f5da = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f5da)
  store %struct.Memory* %call_41f5da, %struct.Memory** %MEMORY

  ; Code: movq $0x45a1f5, %rsi	 RIP: 41f5dc	 Bytes: 10
  %loadMem_41f5dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f5dc = call %struct.Memory* @routine_movq__0x45a1f5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f5dc)
  store %struct.Memory* %call_41f5dc, %struct.Memory** %MEMORY

  ; Code: callq .strtok_plt	 RIP: 41f5e6	 Bytes: 5
  %loadMem1_41f5e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41f5e6 = call %struct.Memory* @routine_callq_.strtok_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41f5e6, i64 -122758, i64 5, i64 5)
  store %struct.Memory* %call1_41f5e6, %struct.Memory** %MEMORY

  %loadMem2_41f5e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41f5e6 = load i64, i64* %3
  %call2_41f5e6 = call %struct.Memory* @sub_401660.strtok_plt(%struct.State* %0, i64  %loadPC_41f5e6, %struct.Memory* %loadMem2_41f5e6)
  store %struct.Memory* %call2_41f5e6, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x228(%rbp)	 RIP: 41f5eb	 Bytes: 7
  %loadMem_41f5eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f5eb = call %struct.Memory* @routine_movq__rax__MINUS0x228__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f5eb)
  store %struct.Memory* %call_41f5eb, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41f5f2	 Bytes: 4
  %loadMem_41f5f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f5f2 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f5f2)
  store %struct.Memory* %call_41f5f2, %struct.Memory** %MEMORY

  ; Code: jne .L_41f601	 RIP: 41f5f6	 Bytes: 6
  %loadMem_41f5f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f5f6 = call %struct.Memory* @routine_jne_.L_41f601(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f5f6, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41f5f6, %struct.Memory** %MEMORY

  %loadBr_41f5f6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f5f6 = icmp eq i8 %loadBr_41f5f6, 1
  br i1 %cmpBr_41f5f6, label %block_.L_41f601, label %block_41f5fc

block_41f5fc:
  ; Code: jmpq .L_41f8de	 RIP: 41f5fc	 Bytes: 5
  %loadMem_41f5fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f5fc = call %struct.Memory* @routine_jmpq_.L_41f8de(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f5fc, i64 738, i64 5)
  store %struct.Memory* %call_41f5fc, %struct.Memory** %MEMORY

  br label %block_.L_41f8de

  ; Code: .L_41f601:	 RIP: 41f601	 Bytes: 0
block_.L_41f601:

  ; Code: movq -0x228(%rbp), %rdi	 RIP: 41f601	 Bytes: 7
  %loadMem_41f601 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f601 = call %struct.Memory* @routine_movq_MINUS0x228__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f601)
  store %struct.Memory* %call_41f601, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41f608	 Bytes: 4
  %loadMem_41f608 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f608 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f608)
  store %struct.Memory* %call_41f608, %struct.Memory** %MEMORY

  ; Code: movslq -0x238(%rbp), %rcx	 RIP: 41f60c	 Bytes: 7
  %loadMem_41f60c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f60c = call %struct.Memory* @routine_movslq_MINUS0x238__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f60c)
  store %struct.Memory* %call_41f60c, %struct.Memory** %MEMORY

  ; Code: movss 0xe0(%rax,%rcx,4), %xmm0	 RIP: 41f613	 Bytes: 9
  %loadMem_41f613 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f613 = call %struct.Memory* @routine_movss_0xe0__rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f613)
  store %struct.Memory* %call_41f613, %struct.Memory** %MEMORY

  ; Code: callq .ascii2prob	 RIP: 41f61c	 Bytes: 5
  %loadMem1_41f61c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41f61c = call %struct.Memory* @routine_callq_.ascii2prob(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41f61c, i64 8548, i64 5, i64 5)
  store %struct.Memory* %call1_41f61c, %struct.Memory** %MEMORY

  %loadMem2_41f61c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41f61c = load i64, i64* %3
  %call2_41f61c = call %struct.Memory* @sub_421780.ascii2prob(%struct.State* %0, i64  %loadPC_41f61c, %struct.Memory* %loadMem2_41f61c)
  store %struct.Memory* %call2_41f61c, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41f621	 Bytes: 4
  %loadMem_41f621 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f621 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f621)
  store %struct.Memory* %call_41f621, %struct.Memory** %MEMORY

  ; Code: movq 0xa0(%rax), %rax	 RIP: 41f625	 Bytes: 7
  %loadMem_41f625 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f625 = call %struct.Memory* @routine_movq_0xa0__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f625)
  store %struct.Memory* %call_41f625, %struct.Memory** %MEMORY

  ; Code: movslq -0x234(%rbp), %rcx	 RIP: 41f62c	 Bytes: 7
  %loadMem_41f62c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f62c = call %struct.Memory* @routine_movslq_MINUS0x234__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f62c)
  store %struct.Memory* %call_41f62c, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 41f633	 Bytes: 4
  %loadMem_41f633 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f633 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f633)
  store %struct.Memory* %call_41f633, %struct.Memory** %MEMORY

  ; Code: movslq -0x238(%rbp), %rcx	 RIP: 41f637	 Bytes: 7
  %loadMem_41f637 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f637 = call %struct.Memory* @routine_movslq_MINUS0x238__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f637)
  store %struct.Memory* %call_41f637, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, (%rax,%rcx,4)	 RIP: 41f63e	 Bytes: 5
  %loadMem_41f63e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f63e = call %struct.Memory* @routine_movss__xmm0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f63e)
  store %struct.Memory* %call_41f63e, %struct.Memory** %MEMORY

  ; Code: movl -0x238(%rbp), %eax	 RIP: 41f643	 Bytes: 6
  %loadMem_41f643 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f643 = call %struct.Memory* @routine_movl_MINUS0x238__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f643)
  store %struct.Memory* %call_41f643, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41f649	 Bytes: 3
  %loadMem_41f649 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f649 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f649)
  store %struct.Memory* %call_41f649, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x238(%rbp)	 RIP: 41f64c	 Bytes: 6
  %loadMem_41f64c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f64c = call %struct.Memory* @routine_movl__eax__MINUS0x238__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f64c)
  store %struct.Memory* %call_41f64c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41f5c5	 RIP: 41f652	 Bytes: 5
  %loadMem_41f652 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f652 = call %struct.Memory* @routine_jmpq_.L_41f5c5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f652, i64 -141, i64 5)
  store %struct.Memory* %call_41f652, %struct.Memory** %MEMORY

  br label %block_.L_41f5c5

  ; Code: .L_41f657:	 RIP: 41f657	 Bytes: 0
block_.L_41f657:

  ; Code: jmpq .L_41f65c	 RIP: 41f657	 Bytes: 5
  %loadMem_41f657 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f657 = call %struct.Memory* @routine_jmpq_.L_41f65c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f657, i64 5, i64 5)
  store %struct.Memory* %call_41f657, %struct.Memory** %MEMORY

  br label %block_.L_41f65c

  ; Code: .L_41f65c:	 RIP: 41f65c	 Bytes: 0
block_.L_41f65c:

  ; Code: movl $0x200, %esi	 RIP: 41f65c	 Bytes: 5
  %loadMem_41f65c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f65c = call %struct.Memory* @routine_movl__0x200___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f65c)
  store %struct.Memory* %call_41f65c, %struct.Memory** %MEMORY

  ; Code: leaq -0x220(%rbp), %rdi	 RIP: 41f661	 Bytes: 7
  %loadMem_41f661 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f661 = call %struct.Memory* @routine_leaq_MINUS0x220__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f661)
  store %struct.Memory* %call_41f661, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 41f668	 Bytes: 4
  %loadMem_41f668 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f668 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f668)
  store %struct.Memory* %call_41f668, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdx	 RIP: 41f66c	 Bytes: 3
  %loadMem_41f66c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f66c = call %struct.Memory* @routine_movq___rax____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f66c)
  store %struct.Memory* %call_41f66c, %struct.Memory** %MEMORY

  ; Code: callq .fgets_plt	 RIP: 41f66f	 Bytes: 5
  %loadMem1_41f66f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41f66f = call %struct.Memory* @routine_callq_.fgets_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41f66f, i64 -123183, i64 5, i64 5)
  store %struct.Memory* %call1_41f66f, %struct.Memory** %MEMORY

  %loadMem2_41f66f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41f66f = load i64, i64* %3
  %call2_41f66f = call %struct.Memory* @sub_401540.fgets_plt(%struct.State* %0, i64  %loadPC_41f66f, %struct.Memory* %loadMem2_41f66f)
  store %struct.Memory* %call2_41f66f, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41f674	 Bytes: 4
  %loadMem_41f674 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f674 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f674)
  store %struct.Memory* %call_41f674, %struct.Memory** %MEMORY

  ; Code: jne .L_41f683	 RIP: 41f678	 Bytes: 6
  %loadMem_41f678 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f678 = call %struct.Memory* @routine_jne_.L_41f683(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f678, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41f678, %struct.Memory** %MEMORY

  %loadBr_41f678 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f678 = icmp eq i8 %loadBr_41f678, 1
  br i1 %cmpBr_41f678, label %block_.L_41f683, label %block_41f67e

block_41f67e:
  ; Code: jmpq .L_41f8de	 RIP: 41f67e	 Bytes: 5
  %loadMem_41f67e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f67e = call %struct.Memory* @routine_jmpq_.L_41f8de(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f67e, i64 608, i64 5)
  store %struct.Memory* %call_41f67e, %struct.Memory** %MEMORY

  br label %block_.L_41f8de

  ; Code: .L_41f683:	 RIP: 41f683	 Bytes: 0
block_.L_41f683:

  ; Code: movq $0x45a1f5, %rsi	 RIP: 41f683	 Bytes: 10
  %loadMem_41f683 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f683 = call %struct.Memory* @routine_movq__0x45a1f5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f683)
  store %struct.Memory* %call_41f683, %struct.Memory** %MEMORY

  ; Code: leaq -0x220(%rbp), %rdi	 RIP: 41f68d	 Bytes: 7
  %loadMem_41f68d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f68d = call %struct.Memory* @routine_leaq_MINUS0x220__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f68d)
  store %struct.Memory* %call_41f68d, %struct.Memory** %MEMORY

  ; Code: callq .strtok_plt	 RIP: 41f694	 Bytes: 5
  %loadMem1_41f694 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41f694 = call %struct.Memory* @routine_callq_.strtok_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41f694, i64 -122932, i64 5, i64 5)
  store %struct.Memory* %call1_41f694, %struct.Memory** %MEMORY

  %loadMem2_41f694 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41f694 = load i64, i64* %3
  %call2_41f694 = call %struct.Memory* @sub_401660.strtok_plt(%struct.State* %0, i64  %loadPC_41f694, %struct.Memory* %loadMem2_41f694)
  store %struct.Memory* %call2_41f694, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x228(%rbp)	 RIP: 41f699	 Bytes: 7
  %loadMem_41f699 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f699 = call %struct.Memory* @routine_movq__rax__MINUS0x228__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f699)
  store %struct.Memory* %call_41f699, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41f6a0	 Bytes: 4
  %loadMem_41f6a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f6a0 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f6a0)
  store %struct.Memory* %call_41f6a0, %struct.Memory** %MEMORY

  ; Code: jne .L_41f6af	 RIP: 41f6a4	 Bytes: 6
  %loadMem_41f6a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f6a4 = call %struct.Memory* @routine_jne_.L_41f6af(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f6a4, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41f6a4, %struct.Memory** %MEMORY

  %loadBr_41f6a4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f6a4 = icmp eq i8 %loadBr_41f6a4, 1
  br i1 %cmpBr_41f6a4, label %block_.L_41f6af, label %block_41f6aa

block_41f6aa:
  ; Code: jmpq .L_41f8de	 RIP: 41f6aa	 Bytes: 5
  %loadMem_41f6aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f6aa = call %struct.Memory* @routine_jmpq_.L_41f8de(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f6aa, i64 564, i64 5)
  store %struct.Memory* %call_41f6aa, %struct.Memory** %MEMORY

  br label %block_.L_41f8de

  ; Code: .L_41f6af:	 RIP: 41f6af	 Bytes: 0
block_.L_41f6af:

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41f6af	 Bytes: 4
  %loadMem_41f6af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f6af = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f6af)
  store %struct.Memory* %call_41f6af, %struct.Memory** %MEMORY

  ; Code: movl 0x1c8(%rax), %ecx	 RIP: 41f6b3	 Bytes: 6
  %loadMem_41f6b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f6b3 = call %struct.Memory* @routine_movl_0x1c8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f6b3)
  store %struct.Memory* %call_41f6b3, %struct.Memory** %MEMORY

  ; Code: andl $0x8, %ecx	 RIP: 41f6b9	 Bytes: 3
  %loadMem_41f6b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f6b9 = call %struct.Memory* @routine_andl__0x8___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f6b9)
  store %struct.Memory* %call_41f6b9, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 41f6bc	 Bytes: 3
  %loadMem_41f6bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f6bc = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f6bc)
  store %struct.Memory* %call_41f6bc, %struct.Memory** %MEMORY

  ; Code: je .L_41f6e0	 RIP: 41f6bf	 Bytes: 6
  %loadMem_41f6bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f6bf = call %struct.Memory* @routine_je_.L_41f6e0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f6bf, i8* %BRANCH_TAKEN, i64 33, i64 6, i64 6)
  store %struct.Memory* %call_41f6bf, %struct.Memory** %MEMORY

  %loadBr_41f6bf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f6bf = icmp eq i8 %loadBr_41f6bf, 1
  br i1 %cmpBr_41f6bf, label %block_.L_41f6e0, label %block_41f6c5

block_41f6c5:
  ; Code: movq -0x228(%rbp), %rax	 RIP: 41f6c5	 Bytes: 7
  %loadMem_41f6c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f6c5 = call %struct.Memory* @routine_movq_MINUS0x228__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f6c5)
  store %struct.Memory* %call_41f6c5, %struct.Memory** %MEMORY

  ; Code: movb (%rax), %cl	 RIP: 41f6cc	 Bytes: 2
  %loadMem_41f6cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f6cc = call %struct.Memory* @routine_movb___rax____cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f6cc)
  store %struct.Memory* %call_41f6cc, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41f6ce	 Bytes: 4
  %loadMem_41f6ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f6ce = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f6ce)
  store %struct.Memory* %call_41f6ce, %struct.Memory** %MEMORY

  ; Code: movq 0x20(%rax), %rax	 RIP: 41f6d2	 Bytes: 4
  %loadMem_41f6d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f6d2 = call %struct.Memory* @routine_movq_0x20__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f6d2)
  store %struct.Memory* %call_41f6d2, %struct.Memory** %MEMORY

  ; Code: movslq -0x234(%rbp), %rdx	 RIP: 41f6d6	 Bytes: 7
  %loadMem_41f6d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f6d6 = call %struct.Memory* @routine_movslq_MINUS0x234__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f6d6)
  store %struct.Memory* %call_41f6d6, %struct.Memory** %MEMORY

  ; Code: movb %cl, (%rax,%rdx,1)	 RIP: 41f6dd	 Bytes: 3
  %loadMem_41f6dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f6dd = call %struct.Memory* @routine_movb__cl____rax__rdx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f6dd)
  store %struct.Memory* %call_41f6dd, %struct.Memory** %MEMORY

  ; Code: .L_41f6e0:	 RIP: 41f6e0	 Bytes: 0
  br label %block_.L_41f6e0
block_.L_41f6e0:

  ; Code: movl $0x0, -0x238(%rbp)	 RIP: 41f6e0	 Bytes: 10
  %loadMem_41f6e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f6e0 = call %struct.Memory* @routine_movl__0x0__MINUS0x238__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f6e0)
  store %struct.Memory* %call_41f6e0, %struct.Memory** %MEMORY

  ; Code: .L_41f6ea:	 RIP: 41f6ea	 Bytes: 0
  br label %block_.L_41f6ea
block_.L_41f6ea:

  ; Code: cmpl $0x7, -0x238(%rbp)	 RIP: 41f6ea	 Bytes: 7
  %loadMem_41f6ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f6ea = call %struct.Memory* @routine_cmpl__0x7__MINUS0x238__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f6ea)
  store %struct.Memory* %call_41f6ea, %struct.Memory** %MEMORY

  ; Code: jge .L_41f785	 RIP: 41f6f1	 Bytes: 6
  %loadMem_41f6f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f6f1 = call %struct.Memory* @routine_jge_.L_41f785(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f6f1, i8* %BRANCH_TAKEN, i64 148, i64 6, i64 6)
  store %struct.Memory* %call_41f6f1, %struct.Memory** %MEMORY

  %loadBr_41f6f1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f6f1 = icmp eq i8 %loadBr_41f6f1, 1
  br i1 %cmpBr_41f6f1, label %block_.L_41f785, label %block_41f6f7

block_41f6f7:
  ; Code: xorl %eax, %eax	 RIP: 41f6f7	 Bytes: 2
  %loadMem_41f6f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f6f7 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f6f7)
  store %struct.Memory* %call_41f6f7, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 41f6f9	 Bytes: 2
  %loadMem_41f6f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f6f9 = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f6f9)
  store %struct.Memory* %call_41f6f9, %struct.Memory** %MEMORY

  ; Code: movq $0x45a1f5, %rsi	 RIP: 41f6fb	 Bytes: 10
  %loadMem_41f6fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f6fb = call %struct.Memory* @routine_movq__0x45a1f5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f6fb)
  store %struct.Memory* %call_41f6fb, %struct.Memory** %MEMORY

  ; Code: callq .strtok_plt	 RIP: 41f705	 Bytes: 5
  %loadMem1_41f705 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41f705 = call %struct.Memory* @routine_callq_.strtok_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41f705, i64 -123045, i64 5, i64 5)
  store %struct.Memory* %call1_41f705, %struct.Memory** %MEMORY

  %loadMem2_41f705 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41f705 = load i64, i64* %3
  %call2_41f705 = call %struct.Memory* @sub_401660.strtok_plt(%struct.State* %0, i64  %loadPC_41f705, %struct.Memory* %loadMem2_41f705)
  store %struct.Memory* %call2_41f705, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x228(%rbp)	 RIP: 41f70a	 Bytes: 7
  %loadMem_41f70a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f70a = call %struct.Memory* @routine_movq__rax__MINUS0x228__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f70a)
  store %struct.Memory* %call_41f70a, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41f711	 Bytes: 4
  %loadMem_41f711 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f711 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f711)
  store %struct.Memory* %call_41f711, %struct.Memory** %MEMORY

  ; Code: jne .L_41f720	 RIP: 41f715	 Bytes: 6
  %loadMem_41f715 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f715 = call %struct.Memory* @routine_jne_.L_41f720(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f715, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41f715, %struct.Memory** %MEMORY

  %loadBr_41f715 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f715 = icmp eq i8 %loadBr_41f715, 1
  br i1 %cmpBr_41f715, label %block_.L_41f720, label %block_41f71b

block_41f71b:
  ; Code: jmpq .L_41f8de	 RIP: 41f71b	 Bytes: 5
  %loadMem_41f71b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f71b = call %struct.Memory* @routine_jmpq_.L_41f8de(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f71b, i64 451, i64 5)
  store %struct.Memory* %call_41f71b, %struct.Memory** %MEMORY

  br label %block_.L_41f8de

  ; Code: .L_41f720:	 RIP: 41f720	 Bytes: 0
block_.L_41f720:

  ; Code: movl -0x234(%rbp), %eax	 RIP: 41f720	 Bytes: 6
  %loadMem_41f720 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f720 = call %struct.Memory* @routine_movl_MINUS0x234__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f720)
  store %struct.Memory* %call_41f720, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41f726	 Bytes: 4
  %loadMem_41f726 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f726 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f726)
  store %struct.Memory* %call_41f726, %struct.Memory** %MEMORY

  ; Code: cmpl 0x88(%rcx), %eax	 RIP: 41f72a	 Bytes: 6
  %loadMem_41f72a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f72a = call %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f72a)
  store %struct.Memory* %call_41f72a, %struct.Memory** %MEMORY

  ; Code: jge .L_41f76c	 RIP: 41f730	 Bytes: 6
  %loadMem_41f730 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f730 = call %struct.Memory* @routine_jge_.L_41f76c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f730, i8* %BRANCH_TAKEN, i64 60, i64 6, i64 6)
  store %struct.Memory* %call_41f730, %struct.Memory** %MEMORY

  %loadBr_41f730 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f730 = icmp eq i8 %loadBr_41f730, 1
  br i1 %cmpBr_41f730, label %block_.L_41f76c, label %block_41f736

block_41f736:
  ; Code: movss 0x34fea(%rip), %xmm0	 RIP: 41f736	 Bytes: 8
  %loadMem_41f736 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f736 = call %struct.Memory* @routine_movss_0x34fea__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f736)
  store %struct.Memory* %call_41f736, %struct.Memory** %MEMORY

  ; Code: movq -0x228(%rbp), %rdi	 RIP: 41f73e	 Bytes: 7
  %loadMem_41f73e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f73e = call %struct.Memory* @routine_movq_MINUS0x228__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f73e)
  store %struct.Memory* %call_41f73e, %struct.Memory** %MEMORY

  ; Code: callq .ascii2prob	 RIP: 41f745	 Bytes: 5
  %loadMem1_41f745 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41f745 = call %struct.Memory* @routine_callq_.ascii2prob(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41f745, i64 8251, i64 5, i64 5)
  store %struct.Memory* %call1_41f745, %struct.Memory** %MEMORY

  %loadMem2_41f745 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41f745 = load i64, i64* %3
  %call2_41f745 = call %struct.Memory* @sub_421780.ascii2prob(%struct.State* %0, i64  %loadPC_41f745, %struct.Memory* %loadMem2_41f745)
  store %struct.Memory* %call2_41f745, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 41f74a	 Bytes: 4
  %loadMem_41f74a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f74a = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f74a)
  store %struct.Memory* %call_41f74a, %struct.Memory** %MEMORY

  ; Code: movq 0x90(%rdi), %rdi	 RIP: 41f74e	 Bytes: 7
  %loadMem_41f74e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f74e = call %struct.Memory* @routine_movq_0x90__rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f74e)
  store %struct.Memory* %call_41f74e, %struct.Memory** %MEMORY

  ; Code: movslq -0x234(%rbp), %rax	 RIP: 41f755	 Bytes: 7
  %loadMem_41f755 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f755 = call %struct.Memory* @routine_movslq_MINUS0x234__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f755)
  store %struct.Memory* %call_41f755, %struct.Memory** %MEMORY

  ; Code: movq (%rdi,%rax,8), %rax	 RIP: 41f75c	 Bytes: 4
  %loadMem_41f75c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f75c = call %struct.Memory* @routine_movq___rdi__rax_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f75c)
  store %struct.Memory* %call_41f75c, %struct.Memory** %MEMORY

  ; Code: movslq -0x238(%rbp), %rdi	 RIP: 41f760	 Bytes: 7
  %loadMem_41f760 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f760 = call %struct.Memory* @routine_movslq_MINUS0x238__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f760)
  store %struct.Memory* %call_41f760, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, (%rax,%rdi,4)	 RIP: 41f767	 Bytes: 5
  %loadMem_41f767 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f767 = call %struct.Memory* @routine_movss__xmm0____rax__rdi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f767)
  store %struct.Memory* %call_41f767, %struct.Memory** %MEMORY

  ; Code: .L_41f76c:	 RIP: 41f76c	 Bytes: 0
  br label %block_.L_41f76c
block_.L_41f76c:

  ; Code: jmpq .L_41f771	 RIP: 41f76c	 Bytes: 5
  %loadMem_41f76c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f76c = call %struct.Memory* @routine_jmpq_.L_41f771(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f76c, i64 5, i64 5)
  store %struct.Memory* %call_41f76c, %struct.Memory** %MEMORY

  br label %block_.L_41f771

  ; Code: .L_41f771:	 RIP: 41f771	 Bytes: 0
block_.L_41f771:

  ; Code: movl -0x238(%rbp), %eax	 RIP: 41f771	 Bytes: 6
  %loadMem_41f771 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f771 = call %struct.Memory* @routine_movl_MINUS0x238__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f771)
  store %struct.Memory* %call_41f771, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41f777	 Bytes: 3
  %loadMem_41f777 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f777 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f777)
  store %struct.Memory* %call_41f777, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x238(%rbp)	 RIP: 41f77a	 Bytes: 6
  %loadMem_41f77a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f77a = call %struct.Memory* @routine_movl__eax__MINUS0x238__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f77a)
  store %struct.Memory* %call_41f77a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41f6ea	 RIP: 41f780	 Bytes: 5
  %loadMem_41f780 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f780 = call %struct.Memory* @routine_jmpq_.L_41f6ea(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f780, i64 -150, i64 5)
  store %struct.Memory* %call_41f780, %struct.Memory** %MEMORY

  br label %block_.L_41f6ea

  ; Code: .L_41f785:	 RIP: 41f785	 Bytes: 0
block_.L_41f785:

  ; Code: xorl %eax, %eax	 RIP: 41f785	 Bytes: 2
  %loadMem_41f785 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f785 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f785)
  store %struct.Memory* %call_41f785, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 41f787	 Bytes: 2
  %loadMem_41f787 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f787 = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f787)
  store %struct.Memory* %call_41f787, %struct.Memory** %MEMORY

  ; Code: movq $0x45a1f5, %rsi	 RIP: 41f789	 Bytes: 10
  %loadMem_41f789 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f789 = call %struct.Memory* @routine_movq__0x45a1f5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f789)
  store %struct.Memory* %call_41f789, %struct.Memory** %MEMORY

  ; Code: callq .strtok_plt	 RIP: 41f793	 Bytes: 5
  %loadMem1_41f793 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41f793 = call %struct.Memory* @routine_callq_.strtok_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41f793, i64 -123187, i64 5, i64 5)
  store %struct.Memory* %call1_41f793, %struct.Memory** %MEMORY

  %loadMem2_41f793 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41f793 = load i64, i64* %3
  %call2_41f793 = call %struct.Memory* @sub_401660.strtok_plt(%struct.State* %0, i64  %loadPC_41f793, %struct.Memory* %loadMem2_41f793)
  store %struct.Memory* %call2_41f793, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x228(%rbp)	 RIP: 41f798	 Bytes: 7
  %loadMem_41f798 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f798 = call %struct.Memory* @routine_movq__rax__MINUS0x228__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f798)
  store %struct.Memory* %call_41f798, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41f79f	 Bytes: 4
  %loadMem_41f79f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f79f = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f79f)
  store %struct.Memory* %call_41f79f, %struct.Memory** %MEMORY

  ; Code: jne .L_41f7ae	 RIP: 41f7a3	 Bytes: 6
  %loadMem_41f7a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f7a3 = call %struct.Memory* @routine_jne_.L_41f7ae(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f7a3, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41f7a3, %struct.Memory** %MEMORY

  %loadBr_41f7a3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f7a3 = icmp eq i8 %loadBr_41f7a3, 1
  br i1 %cmpBr_41f7a3, label %block_.L_41f7ae, label %block_41f7a9

block_41f7a9:
  ; Code: jmpq .L_41f8de	 RIP: 41f7a9	 Bytes: 5
  %loadMem_41f7a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f7a9 = call %struct.Memory* @routine_jmpq_.L_41f8de(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f7a9, i64 309, i64 5)
  store %struct.Memory* %call_41f7a9, %struct.Memory** %MEMORY

  br label %block_.L_41f8de

  ; Code: .L_41f7ae:	 RIP: 41f7ae	 Bytes: 0
block_.L_41f7ae:

  ; Code: movss 0x34f72(%rip), %xmm0	 RIP: 41f7ae	 Bytes: 8
  %loadMem_41f7ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f7ae = call %struct.Memory* @routine_movss_0x34f72__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f7ae)
  store %struct.Memory* %call_41f7ae, %struct.Memory** %MEMORY

  ; Code: movq -0x228(%rbp), %rdi	 RIP: 41f7b6	 Bytes: 7
  %loadMem_41f7b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f7b6 = call %struct.Memory* @routine_movq_MINUS0x228__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f7b6)
  store %struct.Memory* %call_41f7b6, %struct.Memory** %MEMORY

  ; Code: callq .ascii2prob	 RIP: 41f7bd	 Bytes: 5
  %loadMem1_41f7bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41f7bd = call %struct.Memory* @routine_callq_.ascii2prob(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41f7bd, i64 8131, i64 5, i64 5)
  store %struct.Memory* %call1_41f7bd, %struct.Memory** %MEMORY

  %loadMem2_41f7bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41f7bd = load i64, i64* %3
  %call2_41f7bd = call %struct.Memory* @sub_421780.ascii2prob(%struct.State* %0, i64  %loadPC_41f7bd, %struct.Memory* %loadMem2_41f7bd)
  store %struct.Memory* %call2_41f7bd, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %eax	 RIP: 41f7c2	 Bytes: 2
  %loadMem_41f7c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f7c2 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f7c2)
  store %struct.Memory* %call_41f7c2, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 41f7c4	 Bytes: 2
  %loadMem_41f7c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f7c4 = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f7c4)
  store %struct.Memory* %call_41f7c4, %struct.Memory** %MEMORY

  ; Code: movq $0x45a1f5, %rsi	 RIP: 41f7c6	 Bytes: 10
  %loadMem_41f7c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f7c6 = call %struct.Memory* @routine_movq__0x45a1f5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f7c6)
  store %struct.Memory* %call_41f7c6, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41f7d0	 Bytes: 4
  %loadMem_41f7d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f7d0 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f7d0)
  store %struct.Memory* %call_41f7d0, %struct.Memory** %MEMORY

  ; Code: movq 0xd0(%rcx), %rcx	 RIP: 41f7d4	 Bytes: 7
  %loadMem_41f7d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f7d4 = call %struct.Memory* @routine_movq_0xd0__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f7d4)
  store %struct.Memory* %call_41f7d4, %struct.Memory** %MEMORY

  ; Code: movslq -0x234(%rbp), %rdx	 RIP: 41f7db	 Bytes: 7
  %loadMem_41f7db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f7db = call %struct.Memory* @routine_movslq_MINUS0x234__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f7db)
  store %struct.Memory* %call_41f7db, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, (%rcx,%rdx,4)	 RIP: 41f7e2	 Bytes: 5
  %loadMem_41f7e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f7e2 = call %struct.Memory* @routine_movss__xmm0____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f7e2)
  store %struct.Memory* %call_41f7e2, %struct.Memory** %MEMORY

  ; Code: callq .strtok_plt	 RIP: 41f7e7	 Bytes: 5
  %loadMem1_41f7e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41f7e7 = call %struct.Memory* @routine_callq_.strtok_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41f7e7, i64 -123271, i64 5, i64 5)
  store %struct.Memory* %call1_41f7e7, %struct.Memory** %MEMORY

  %loadMem2_41f7e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41f7e7 = load i64, i64* %3
  %call2_41f7e7 = call %struct.Memory* @sub_401660.strtok_plt(%struct.State* %0, i64  %loadPC_41f7e7, %struct.Memory* %loadMem2_41f7e7)
  store %struct.Memory* %call2_41f7e7, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x228(%rbp)	 RIP: 41f7ec	 Bytes: 7
  %loadMem_41f7ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f7ec = call %struct.Memory* @routine_movq__rax__MINUS0x228__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f7ec)
  store %struct.Memory* %call_41f7ec, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41f7f3	 Bytes: 4
  %loadMem_41f7f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f7f3 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f7f3)
  store %struct.Memory* %call_41f7f3, %struct.Memory** %MEMORY

  ; Code: jne .L_41f802	 RIP: 41f7f7	 Bytes: 6
  %loadMem_41f7f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f7f7 = call %struct.Memory* @routine_jne_.L_41f802(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f7f7, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41f7f7, %struct.Memory** %MEMORY

  %loadBr_41f7f7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f7f7 = icmp eq i8 %loadBr_41f7f7, 1
  br i1 %cmpBr_41f7f7, label %block_.L_41f802, label %block_41f7fd

block_41f7fd:
  ; Code: jmpq .L_41f8de	 RIP: 41f7fd	 Bytes: 5
  %loadMem_41f7fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f7fd = call %struct.Memory* @routine_jmpq_.L_41f8de(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f7fd, i64 225, i64 5)
  store %struct.Memory* %call_41f7fd, %struct.Memory** %MEMORY

  br label %block_.L_41f8de

  ; Code: .L_41f802:	 RIP: 41f802	 Bytes: 0
block_.L_41f802:

  ; Code: movss 0x34f1e(%rip), %xmm0	 RIP: 41f802	 Bytes: 8
  %loadMem_41f802 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f802 = call %struct.Memory* @routine_movss_0x34f1e__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f802)
  store %struct.Memory* %call_41f802, %struct.Memory** %MEMORY

  ; Code: movq -0x228(%rbp), %rdi	 RIP: 41f80a	 Bytes: 7
  %loadMem_41f80a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f80a = call %struct.Memory* @routine_movq_MINUS0x228__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f80a)
  store %struct.Memory* %call_41f80a, %struct.Memory** %MEMORY

  ; Code: callq .ascii2prob	 RIP: 41f811	 Bytes: 5
  %loadMem1_41f811 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41f811 = call %struct.Memory* @routine_callq_.ascii2prob(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41f811, i64 8047, i64 5, i64 5)
  store %struct.Memory* %call1_41f811, %struct.Memory** %MEMORY

  %loadMem2_41f811 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41f811 = load i64, i64* %3
  %call2_41f811 = call %struct.Memory* @sub_421780.ascii2prob(%struct.State* %0, i64  %loadPC_41f811, %struct.Memory* %loadMem2_41f811)
  store %struct.Memory* %call2_41f811, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 41f816	 Bytes: 4
  %loadMem_41f816 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f816 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f816)
  store %struct.Memory* %call_41f816, %struct.Memory** %MEMORY

  ; Code: movq 0xd8(%rdi), %rdi	 RIP: 41f81a	 Bytes: 7
  %loadMem_41f81a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f81a = call %struct.Memory* @routine_movq_0xd8__rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f81a)
  store %struct.Memory* %call_41f81a, %struct.Memory** %MEMORY

  ; Code: movslq -0x234(%rbp), %rax	 RIP: 41f821	 Bytes: 7
  %loadMem_41f821 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f821 = call %struct.Memory* @routine_movslq_MINUS0x234__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f821)
  store %struct.Memory* %call_41f821, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, (%rdi,%rax,4)	 RIP: 41f828	 Bytes: 5
  %loadMem_41f828 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f828 = call %struct.Memory* @routine_movss__xmm0____rdi__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f828)
  store %struct.Memory* %call_41f828, %struct.Memory** %MEMORY

  ; Code: movl -0x234(%rbp), %eax	 RIP: 41f82d	 Bytes: 6
  %loadMem_41f82d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f82d = call %struct.Memory* @routine_movl_MINUS0x234__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f82d)
  store %struct.Memory* %call_41f82d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41f833	 Bytes: 3
  %loadMem_41f833 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f833 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f833)
  store %struct.Memory* %call_41f833, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x234(%rbp)	 RIP: 41f836	 Bytes: 6
  %loadMem_41f836 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f836 = call %struct.Memory* @routine_movl__eax__MINUS0x234__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f836)
  store %struct.Memory* %call_41f836, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41f39f	 RIP: 41f83c	 Bytes: 5
  %loadMem_41f83c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f83c = call %struct.Memory* @routine_jmpq_.L_41f39f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f83c, i64 -1181, i64 5)
  store %struct.Memory* %call_41f83c, %struct.Memory** %MEMORY

  br label %block_.L_41f39f

  ; Code: .L_41f841:	 RIP: 41f841	 Bytes: 0
block_.L_41f841:

  ; Code: jmpq .L_41f846	 RIP: 41f841	 Bytes: 5
  %loadMem_41f841 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f841 = call %struct.Memory* @routine_jmpq_.L_41f846(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f841, i64 5, i64 5)
  store %struct.Memory* %call_41f841, %struct.Memory** %MEMORY

  br label %block_.L_41f846

  ; Code: .L_41f846:	 RIP: 41f846	 Bytes: 0
block_.L_41f846:

  ; Code: movl $0x200, %esi	 RIP: 41f846	 Bytes: 5
  %loadMem_41f846 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f846 = call %struct.Memory* @routine_movl__0x200___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f846)
  store %struct.Memory* %call_41f846, %struct.Memory** %MEMORY

  ; Code: leaq -0x220(%rbp), %rdi	 RIP: 41f84b	 Bytes: 7
  %loadMem_41f84b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f84b = call %struct.Memory* @routine_leaq_MINUS0x220__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f84b)
  store %struct.Memory* %call_41f84b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 41f852	 Bytes: 4
  %loadMem_41f852 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f852 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f852)
  store %struct.Memory* %call_41f852, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdx	 RIP: 41f856	 Bytes: 3
  %loadMem_41f856 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f856 = call %struct.Memory* @routine_movq___rax____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f856)
  store %struct.Memory* %call_41f856, %struct.Memory** %MEMORY

  ; Code: callq .fgets_plt	 RIP: 41f859	 Bytes: 5
  %loadMem1_41f859 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41f859 = call %struct.Memory* @routine_callq_.fgets_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41f859, i64 -123673, i64 5, i64 5)
  store %struct.Memory* %call1_41f859, %struct.Memory** %MEMORY

  %loadMem2_41f859 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41f859 = load i64, i64* %3
  %call2_41f859 = call %struct.Memory* @sub_401540.fgets_plt(%struct.State* %0, i64  %loadPC_41f859, %struct.Memory* %loadMem2_41f859)
  store %struct.Memory* %call2_41f859, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41f85e	 Bytes: 4
  %loadMem_41f85e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f85e = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f85e)
  store %struct.Memory* %call_41f85e, %struct.Memory** %MEMORY

  ; Code: je .L_41f898	 RIP: 41f862	 Bytes: 6
  %loadMem_41f862 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f862 = call %struct.Memory* @routine_je_.L_41f898(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f862, i8* %BRANCH_TAKEN, i64 54, i64 6, i64 6)
  store %struct.Memory* %call_41f862, %struct.Memory** %MEMORY

  %loadBr_41f862 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f862 = icmp eq i8 %loadBr_41f862, 1
  br i1 %cmpBr_41f862, label %block_.L_41f898, label %block_41f868

block_41f868:
  ; Code: movq $0x45a381, %rsi	 RIP: 41f868	 Bytes: 10
  %loadMem_41f868 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f868 = call %struct.Memory* @routine_movq__0x45a381___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f868)
  store %struct.Memory* %call_41f868, %struct.Memory** %MEMORY

  ; Code: movl $0x2, %eax	 RIP: 41f872	 Bytes: 5
  %loadMem_41f872 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f872 = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f872)
  store %struct.Memory* %call_41f872, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 41f877	 Bytes: 2
  %loadMem_41f877 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f877 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f877)
  store %struct.Memory* %call_41f877, %struct.Memory** %MEMORY

  ; Code: leaq -0x220(%rbp), %rdi	 RIP: 41f879	 Bytes: 7
  %loadMem_41f879 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f879 = call %struct.Memory* @routine_leaq_MINUS0x220__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f879)
  store %struct.Memory* %call_41f879, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 41f880	 Bytes: 5
  %loadMem1_41f880 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41f880 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41f880, i64 -124080, i64 5, i64 5)
  store %struct.Memory* %call1_41f880, %struct.Memory** %MEMORY

  %loadMem2_41f880 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41f880 = load i64, i64* %3
  %call2_41f880 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_41f880, %struct.Memory* %loadMem2_41f880)
  store %struct.Memory* %call2_41f880, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41f885	 Bytes: 3
  %loadMem_41f885 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f885 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f885)
  store %struct.Memory* %call_41f885, %struct.Memory** %MEMORY

  ; Code: jne .L_41f893	 RIP: 41f888	 Bytes: 6
  %loadMem_41f888 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f888 = call %struct.Memory* @routine_jne_.L_41f893(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f888, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41f888, %struct.Memory** %MEMORY

  %loadBr_41f888 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f888 = icmp eq i8 %loadBr_41f888, 1
  br i1 %cmpBr_41f888, label %block_.L_41f893, label %block_41f88e

block_41f88e:
  ; Code: jmpq .L_41f898	 RIP: 41f88e	 Bytes: 5
  %loadMem_41f88e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f88e = call %struct.Memory* @routine_jmpq_.L_41f898(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f88e, i64 10, i64 5)
  store %struct.Memory* %call_41f88e, %struct.Memory** %MEMORY

  br label %block_.L_41f898

  ; Code: .L_41f893:	 RIP: 41f893	 Bytes: 0
block_.L_41f893:

  ; Code: jmpq .L_41f846	 RIP: 41f893	 Bytes: 5
  %loadMem_41f893 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f893 = call %struct.Memory* @routine_jmpq_.L_41f846(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f893, i64 -77, i64 5)
  store %struct.Memory* %call_41f893, %struct.Memory** %MEMORY

  br label %block_.L_41f846

  ; Code: .L_41f898:	 RIP: 41f898	 Bytes: 0
block_.L_41f898:

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 41f898	 Bytes: 4
  %loadMem_41f898 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f898 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f898)
  store %struct.Memory* %call_41f898, %struct.Memory** %MEMORY

  ; Code: callq .Plan7Renormalize	 RIP: 41f89c	 Bytes: 5
  %loadMem1_41f89c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41f89c = call %struct.Memory* @routine_callq_.Plan7Renormalize(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41f89c, i64 82836, i64 5, i64 5)
  store %struct.Memory* %call1_41f89c, %struct.Memory** %MEMORY

  %loadMem2_41f89c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41f89c = load i64, i64* %3
  %call2_41f89c = call %struct.Memory* @sub_433c30.Plan7Renormalize(%struct.State* %0, i64  %loadPC_41f89c, %struct.Memory* %loadMem2_41f89c)
  store %struct.Memory* %call2_41f89c, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 41f8a1	 Bytes: 4
  %loadMem_41f8a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f8a1 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f8a1)
  store %struct.Memory* %call_41f8a1, %struct.Memory** %MEMORY

  ; Code: movl 0x1c8(%rdi), %eax	 RIP: 41f8a5	 Bytes: 6
  %loadMem_41f8a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f8a5 = call %struct.Memory* @routine_movl_0x1c8__rdi____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f8a5)
  store %struct.Memory* %call_41f8a5, %struct.Memory** %MEMORY

  ; Code: orl $0x20, %eax	 RIP: 41f8ab	 Bytes: 3
  %loadMem_41f8ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f8ab = call %struct.Memory* @routine_orl__0x20___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f8ab)
  store %struct.Memory* %call_41f8ab, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x1c8(%rdi)	 RIP: 41f8ae	 Bytes: 6
  %loadMem_41f8ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f8ae = call %struct.Memory* @routine_movl__eax__0x1c8__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f8ae)
  store %struct.Memory* %call_41f8ae, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 41f8b4	 Bytes: 4
  %loadMem_41f8b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f8b4 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f8b4)
  store %struct.Memory* %call_41f8b4, %struct.Memory** %MEMORY

  ; Code: movl 0x1c8(%rdi), %eax	 RIP: 41f8b8	 Bytes: 6
  %loadMem_41f8b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f8b8 = call %struct.Memory* @routine_movl_0x1c8__rdi____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f8b8)
  store %struct.Memory* %call_41f8b8, %struct.Memory** %MEMORY

  ; Code: andl $0xfffffffe, %eax	 RIP: 41f8be	 Bytes: 3
  %loadMem_41f8be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f8be = call %struct.Memory* @routine_andl__0xfffffffe___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f8be)
  store %struct.Memory* %call_41f8be, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x1c8(%rdi)	 RIP: 41f8c1	 Bytes: 6
  %loadMem_41f8c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f8c1 = call %struct.Memory* @routine_movl__eax__0x1c8__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f8c1)
  store %struct.Memory* %call_41f8c1, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 41f8c7	 Bytes: 4
  %loadMem_41f8c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f8c7 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f8c7)
  store %struct.Memory* %call_41f8c7, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 41f8cb	 Bytes: 4
  %loadMem_41f8cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f8cb = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f8cb)
  store %struct.Memory* %call_41f8cb, %struct.Memory** %MEMORY

  ; Code: movq %rdi, (%rcx)	 RIP: 41f8cf	 Bytes: 3
  %loadMem_41f8cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f8cf = call %struct.Memory* @routine_movq__rdi____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f8cf)
  store %struct.Memory* %call_41f8cf, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x4(%rbp)	 RIP: 41f8d2	 Bytes: 7
  %loadMem_41f8d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f8d2 = call %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f8d2)
  store %struct.Memory* %call_41f8d2, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41f904	 RIP: 41f8d9	 Bytes: 5
  %loadMem_41f8d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f8d9 = call %struct.Memory* @routine_jmpq_.L_41f904(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f8d9, i64 43, i64 5)
  store %struct.Memory* %call_41f8d9, %struct.Memory** %MEMORY

  br label %block_.L_41f904

  ; Code: .L_41f8de:	 RIP: 41f8de	 Bytes: 0
block_.L_41f8de:

  ; Code: cmpq $0x0, -0x20(%rbp)	 RIP: 41f8de	 Bytes: 5
  %loadMem_41f8de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f8de = call %struct.Memory* @routine_cmpq__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f8de)
  store %struct.Memory* %call_41f8de, %struct.Memory** %MEMORY

  ; Code: je .L_41f8f2	 RIP: 41f8e3	 Bytes: 6
  %loadMem_41f8e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f8e3 = call %struct.Memory* @routine_je_.L_41f8f2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f8e3, i8* %BRANCH_TAKEN, i64 15, i64 6, i64 6)
  store %struct.Memory* %call_41f8e3, %struct.Memory** %MEMORY

  %loadBr_41f8e3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f8e3 = icmp eq i8 %loadBr_41f8e3, 1
  br i1 %cmpBr_41f8e3, label %block_.L_41f8f2, label %block_41f8e9

block_41f8e9:
  ; Code: movq -0x20(%rbp), %rdi	 RIP: 41f8e9	 Bytes: 4
  %loadMem_41f8e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f8e9 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f8e9)
  store %struct.Memory* %call_41f8e9, %struct.Memory** %MEMORY

  ; Code: callq .FreePlan7	 RIP: 41f8ed	 Bytes: 5
  %loadMem1_41f8ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41f8ed = call %struct.Memory* @routine_callq_.FreePlan7(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41f8ed, i64 77027, i64 5, i64 5)
  store %struct.Memory* %call1_41f8ed, %struct.Memory** %MEMORY

  %loadMem2_41f8ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41f8ed = load i64, i64* %3
  %call2_41f8ed = call %struct.Memory* @sub_4325d0.FreePlan7(%struct.State* %0, i64  %loadPC_41f8ed, %struct.Memory* %loadMem2_41f8ed)
  store %struct.Memory* %call2_41f8ed, %struct.Memory** %MEMORY

  ; Code: .L_41f8f2:	 RIP: 41f8f2	 Bytes: 0
  br label %block_.L_41f8f2
block_.L_41f8f2:

  ; Code: movq -0x18(%rbp), %rax	 RIP: 41f8f2	 Bytes: 4
  %loadMem_41f8f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f8f2 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f8f2)
  store %struct.Memory* %call_41f8f2, %struct.Memory** %MEMORY

  ; Code: movq $0x0, (%rax)	 RIP: 41f8f6	 Bytes: 7
  %loadMem_41f8f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f8f6 = call %struct.Memory* @routine_movq__0x0____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f8f6)
  store %struct.Memory* %call_41f8f6, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x4(%rbp)	 RIP: 41f8fd	 Bytes: 7
  %loadMem_41f8fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f8fd = call %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f8fd)
  store %struct.Memory* %call_41f8fd, %struct.Memory** %MEMORY

  ; Code: .L_41f904:	 RIP: 41f904	 Bytes: 0
  br label %block_.L_41f904
block_.L_41f904:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 41f904	 Bytes: 3
  %loadMem_41f904 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f904 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f904)
  store %struct.Memory* %call_41f904, %struct.Memory** %MEMORY

  ; Code: addq $0x290, %rsp	 RIP: 41f907	 Bytes: 7
  %loadMem_41f907 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f907 = call %struct.Memory* @routine_addq__0x290___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f907)
  store %struct.Memory* %call_41f907, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 41f90e	 Bytes: 1
  %loadMem_41f90e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f90e = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f90e)
  store %struct.Memory* %call_41f90e, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 41f90f	 Bytes: 1
  %loadMem_41f90f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f90f = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f90f)
  store %struct.Memory* %call_41f90f, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_41f90f
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

define %struct.Memory* @routine_subq__0x290___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 656)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rdi__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rsi__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x0__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq___rsi____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12)
  ret %struct.Memory* %15
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

define %struct.Memory* @routine_callq_.feof_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jne_.L_41e532(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x200___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 512)
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_leaq_MINUS0x220__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 544
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_callq_.fgets_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jne_.L_41e53e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_41f904(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x4577c5___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4577c5_type* @G__0x4577c5 to i64))
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_je_.L_41e569(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_41f8de(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_callq_.AllocPlan7Shell(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__rax__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__0xffffffff__MINUS0x22c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 556
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -1)
  ret %struct.Memory* %13
}














define %struct.Memory* @routine_je_.L_41f1fc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x45795a___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x45795a_type* @G__0x45795a to i64))
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










define %struct.Memory* @routine_jne_.L_41e5e0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_leaq_MINUS0x220__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
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

define %struct.Memory* @routine_addq__0x6___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 6)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_callq_.Plan7SetName(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_41f1f7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x457960___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x457960_type* @G__0x457960 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_41e622(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_callq_.Plan7SetAccession(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_41f1f2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x457966___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x457966_type* @G__0x457966 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_41e664(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_callq_.Plan7SetDescription(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_41f1ed(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x45796c___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x45796c_type* @G__0x45796c to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_41e6a8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__eax__MINUS0x22c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 556
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_41f1e8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x457972___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x457972_type* @G__0x457972 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_41e6ed(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_movl__eax__0x38__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 56
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_41f1e3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x457978___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x457978_type* @G__0x457978 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_41e81c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_callq_.s2upper(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x457947___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x457947_type* @G__0x457947 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x5___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 5)
  ret %struct.Memory* %11
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












define %struct.Memory* @routine_jne_.L_41e762(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x3__MINUS0x23c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 572
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_41e7a8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x45794d___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x45794d_type* @G__0x45794d to i64))
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




define %struct.Memory* @routine_leaq_MINUS0x220__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 544
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addq__0x6___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 6)
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






define %struct.Memory* @routine_jne_.L_41e79e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x2__MINUS0x23c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 572
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_41e7a3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x0__0x676d90(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x676d90_type* @G_0x676d90 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jne_.L_41e7c6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl_MINUS0x23c__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 572
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.SetAlphabet(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_41e817(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_MINUS0x23c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 572
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

define %struct.Memory* @routine_cmpl_0x676d90___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0x676d90_type* @G_0x676d90 to i64))
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_41e812(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_0x676d90___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G_0x676d90_type* @G_0x676d90 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_callq_.AlphabetType2String(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq__rax__MINUS0x248__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 584
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq__0x457899___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x457899_type* @G__0x457899 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_MINUS0x248__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 584
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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




define %struct.Memory* @routine_jmpq_.L_41f1de(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x45797e___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x45797e_type* @G__0x45797e to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_41e86f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  %7 = sext i8 %6 to i64
  %8 = and i64 %7, 4294967295
  store i64 %8, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movsbl_MINUS0x21a__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 538
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.sre_toupper(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x59___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 89)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_41e86a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L2ORI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = or i64 %4, %3
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

define %struct.Memory* @routine_orl__0x4___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2ORI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 4)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__ecx__0x1c8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 456
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_41f1d9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x457984___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x457984_type* @G__0x457984 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_41e8c2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jne_.L_41e8bd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_orl__0x8___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2ORI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 8)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_jmpq_.L_41f1d4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x45798a___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x45798a_type* @G__0x45798a to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_41e918(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jne_.L_41e913(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_orl__0x100___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2ORI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 256)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_jmpq_.L_41f1cf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x457990___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x457990_type* @G__0x457990 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_41ea5b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_callq_.StringChop(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpq__0x0__0x30__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 48
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_41e980(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_callq_.Strdup(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq__rax__0x30__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 48
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jmpq_.L_41ea56(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x45763b___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x45763b_type* @G__0x45763b to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x270___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 624)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x30__rcx____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq_0x30__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 48
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq__rdi__MINUS0x250__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 592
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq__rdx__MINUS0x258__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 600
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__esi__MINUS0x25c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 604
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq__rax__MINUS0x268__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 616
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movq_MINUS0x268__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 616
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movq__rax__MINUS0x270__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 624
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0x270__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 624
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_addq__rax___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %13)
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

define %struct.Memory* @routine_shlq__0x3___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 3)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq_MINUS0x250__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 592
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x25c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 604
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x258__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 600
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.sre_realloc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x45a1f7___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x45a1f7_type* @G__0x45a1f7 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movq__rax__0x30__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 48
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_0x30__rax____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.strcat_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_MINUS0x20__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x30__rdx____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
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


define %struct.Memory* @routine_movq__rax__MINUS0x278__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 632
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq__rax__MINUS0x280__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 640
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jmpq_.L_41f1ca(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x457996___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x457996_type* @G__0x457996 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_41eab4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_movq__rax__0x40__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 64
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jmpq_.L_41f1c5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x45799c___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x45799c_type* @G__0x45799c to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_41eb82(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_callq_.strtok_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__rax__MINUS0x228__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 552
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jne_.L_41eb0d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_MINUS0x228__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 552
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl__eax___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
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



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i8* nocapture readonly) #7 {
  %5 = bitcast i8* %3 to <2 x float>*
  %6 = load <2 x float>, <2 x float>* %5, align 1
  %7 = extractelement <2 x float> %6, i32 0
  %8 = inttoptr i64 %2 to float*
  store float %7, float* %8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movss__xmm0__0x70__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RCX
  %12 = add i64 %11, 112
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_jne_.L_41eb4f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_movss__xmm0__0x74__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RDI
  %12 = add i64 %11, 116
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_0x1c8__rdi____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 456
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_orl__0x400___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 5
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2ORI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 1024)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__eax__0x1c8__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 456
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_41f1c0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x4579a2___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4579a2_type* @G__0x4579a2 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_41ec50(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_jne_.L_41ebdb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


















define %struct.Memory* @routine_movss__xmm0__0x78__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RCX
  %12 = add i64 %11, 120
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_jne_.L_41ec1d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_movss__xmm0__0x7c__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RDI
  %12 = add i64 %11, 124
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_orl__0x800___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 5
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2ORI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 2048)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_jmpq_.L_41f1bb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x4579a8___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4579a8_type* @G__0x4579a8 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_41ed24(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_jne_.L_41eca9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


















define %struct.Memory* @routine_movss__xmm0__0x80__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RCX
  %12 = add i64 %11, 128
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_jne_.L_41ecee(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_movss__xmm0__0x84__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RDI
  %12 = add i64 %11, 132
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_orl__0x1000___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 5
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2ORI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 4096)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_jmpq_.L_41f1b6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x4579ae___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4579ae_type* @G__0x4579ae to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_41ee43(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_jne_.L_41ed7d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__0x0__MINUS0x234__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 564
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x4__MINUS0x234__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 564
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 4)
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

define %struct.Memory* @routine_jge_.L_41ee3e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x0__MINUS0x238__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 568
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x2__MINUS0x238__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 568
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_41ee25(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpq__0x0__MINUS0x228__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 552
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_41edbe(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movss_0x35962__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x35962__rip__type* @G_0x35962__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_callq_.ascii2prob(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_addq__0xac___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 172)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_MINUS0x234__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 564
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_shlq__0x3___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 3)
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


define %struct.Memory* @routine_movslq_MINUS0x238__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 568
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movss__xmm0____rcx__rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %RDX
  %16 = mul i64 %15, 4
  %17 = add i64 %16, %14
  %18 = bitcast %union.vec128_t* %XMM0 to i8*
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %17, i8* %18)
  ret %struct.Memory* %21
}






define %struct.Memory* @routine_movl_MINUS0x238__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 568
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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


define %struct.Memory* @routine_movl__eax__MINUS0x238__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 568
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_41ed9e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_41ee2a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_MINUS0x234__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 564
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0x234__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 564
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_41ed87(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_41f1b1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x4579b4___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4579b4_type* @G__0x4579b4 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_41ef4a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_jne_.L_41ee9c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movss_0x35884__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x35884__rip__type* @G_0x35884__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}














define %struct.Memory* @routine_movss__xmm0__0x130__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RCX
  %12 = add i64 %11, 304
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_jne_.L_41eee5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movss_0x3583b__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x3583b__rip__type* @G_0x3583b__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movss_0x130__rax____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 304
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movss_0x130__rax____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 304
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movss__xmm2__MINUS0x284__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 644
  %13 = bitcast %union.vec128_t* %XMM2 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movss__xmm1__MINUS0x288__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 648
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movss_MINUS0x284__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 644
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


define %struct.Memory* @routine_movss_MINUS0x288__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 648
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_divss__xmm1___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSSI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}




define %struct.Memory* @routine_movss__xmm0__0x130__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 304
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jmpq_.L_41f1ac(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x4579ba___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4579ba_type* @G__0x4579ba to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_41f053(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_41ef8f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4579c0___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4579c0_type* @G__0x4579c0 to i64))
  ret %struct.Memory* %11
}






















define %struct.Memory* @routine_cmpl_0x677060___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0x677060_type* @G_0x677060 to i64))
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_41f04e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_41efe3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movsd_0x357f5__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x357f5__rip__type* @G_0x357f5__rip_ to i64)
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

define %struct.Memory* @routine_cvtsi2ssl_0x677060___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SSI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 ptrtoint( %G_0x677060_type* @G_0x677060 to i64))
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_divsd__xmm1___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}
















define %struct.Memory* @routine_movss__xmm0__0xe0__rcx__rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %RDX
  %16 = mul i64 %15, 4
  %17 = add i64 %14, 224
  %18 = add i64 %17, %16
  %19 = bitcast %union.vec128_t* %XMM0 to i8*
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 9
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i8* %19)
  ret %struct.Memory* %22
}












define %struct.Memory* @routine_jmpq_.L_41efbd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_41f1a7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x4579e9___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4579e9_type* @G__0x4579e9 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_41f128(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_orl__0x80___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2ORI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 128)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__edx__0x1c8__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = add i64 %12, 456
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}












define %struct.Memory* @routine_jne_.L_41f0c2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


















define %struct.Memory* @routine_movss__xmm0__0x1c0__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RCX
  %12 = add i64 %11, 448
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_jne_.L_41f107(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_movss__xmm0__0x1c4__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RDI
  %12 = add i64 %11, 452
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jmpq_.L_41f1a2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x4579ef___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4579ef_type* @G__0x4579ef to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_41f16d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_movl__eax__0x50__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 80
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_41f19d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x4579f5___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4579f5_type* @G__0x4579f5 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_41f198(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_41f1fc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








































define %struct.Memory* @routine_jmpq_.L_41e57c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_je_.L_41f216(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x1__MINUS0x22c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 556
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_41f228(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_cmpq__0x0____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 0)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jne_.L_41f23b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_41f24e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl_MINUS0x22c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 556
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.AllocPlan7Body(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jne_.L_41f284(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_jne_.L_41f2ab(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jne_.L_41f2d7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movss_0x35449__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x35449__rip__type* @G_0x35449__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}












define %struct.Memory* @routine_movss__xmm0__MINUS0x230__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 560
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_jne_.L_41f31c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_jne_.L_41f345(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movss_0x353db__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x353db__rip__type* @G_0x353db__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_movss__xmm0__0xa8__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RDI
  %12 = add i64 %11, 168
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movss_0xa8__rdi____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movss_MINUS0x230__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 560
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_addss_0xa8__rdi____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RDI
  %14 = add i64 %13, 168
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSSI3VnWI8vec128_tE2VnIS2_E3MVnI7vec32_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_movl__0x1__MINUS0x234__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 564
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 136
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4JNLEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #2 {
  %6 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  %12 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  %15 = xor i1 %11, %14
  %16 = xor i1 %15, true
  %17 = and i1 %8, %16
  %18 = zext i1 %17 to i8
  store i8 %18, i8* %2, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %20 = select i1 %17, i64 %3, i64 %4
  store i64 %20, i64* %19, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jg_.L_41f841(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4JNLEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}














define %struct.Memory* @routine_jne_.L_41f3dc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jne_.L_41f408(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_cmpl_MINUS0x234__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 564
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_je_.L_41f425(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jge_.L_41f4c1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jne_.L_41f46b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movslq_MINUS0x238__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 568
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movss_0xe0__rax__rcx_4____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, 224
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 9
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %14, i64 %19)
  ret %struct.Memory* %22
}






define %struct.Memory* @routine_movq_0x98__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 152
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movslq_MINUS0x234__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 564
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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




define %struct.Memory* @routine_movss__xmm0____rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %RCX
  %16 = mul i64 %15, 4
  %17 = add i64 %16, %14
  %18 = bitcast %union.vec128_t* %XMM0 to i8*
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %17, i8* %18)
  ret %struct.Memory* %21
}








define %struct.Memory* @routine_jmpq_.L_41f42f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_andl__0x100___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 256)
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


define %struct.Memory* @routine_je_.L_41f521(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jne_.L_41f503(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movq_0x48__rdi____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl__eax____rdi__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDI
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %EAX
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}














define %struct.Memory* @routine_jne_.L_41f548(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jne_.L_41f574(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_andl__0x4___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 4)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_je_.L_41f5a5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_MINUS0x228__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 552
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  store i8 %6, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb___rax____cl(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %CL, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i8
  %6 = inttoptr i64 %2 to i8*
  store i8 %5, i8* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__cl____rax__rdx_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 7
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RDX = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RDX
  %18 = add i64 %17, %16
  %19 = load i8, i8* %CL
  %20 = zext i8 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}








define %struct.Memory* @routine_jge_.L_41f65c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jge_.L_41f657(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jne_.L_41f601(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_movq_0xa0__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 160
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}
















define %struct.Memory* @routine_jmpq_.L_41f5c5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_41f65c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_jne_.L_41f683(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jne_.L_41f6af(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_andl__0x8___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 8)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_je_.L_41f6e0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movq_0x20__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 32
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_cmpl__0x7__MINUS0x238__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 568
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 7)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_41f785(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jne_.L_41f720(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jge_.L_41f76c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movss_0x34fea__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x34fea__rip__type* @G_0x34fea__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_movq_0x90__rdi____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 144
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movslq_MINUS0x234__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 564
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq___rdi__rax_8____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %RAX
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movslq_MINUS0x238__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 568
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movss__xmm0____rax__rdi_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %RDI
  %16 = mul i64 %15, 4
  %17 = add i64 %16, %14
  %18 = bitcast %union.vec128_t* %XMM0 to i8*
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %17, i8* %18)
  ret %struct.Memory* %21
}


define %struct.Memory* @routine_jmpq_.L_41f771(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_41f6ea(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_jne_.L_41f7ae(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movss_0x34f72__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x34f72__rip__type* @G_0x34f72__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}














define %struct.Memory* @routine_movq_0xd0__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 208
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}












define %struct.Memory* @routine_jne_.L_41f802(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movss_0x34f1e__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x34f1e__rip__type* @G_0x34f1e__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_movq_0xd8__rdi____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 216
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movss__xmm0____rdi__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %RAX
  %16 = mul i64 %15, 4
  %17 = add i64 %16, %14
  %18 = bitcast %union.vec128_t* %XMM0 to i8*
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %17, i8* %18)
  ret %struct.Memory* %21
}








define %struct.Memory* @routine_jmpq_.L_41f39f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_41f846(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_je_.L_41f898(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x45a381___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x45a381_type* @G__0x45a381 to i64))
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










define %struct.Memory* @routine_jne_.L_41f893(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_41f898(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_callq_.Plan7Renormalize(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_orl__0x20___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2ORI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 32)
  ret %struct.Memory* %12
}








define %struct.Memory* @routine_andl__0xfffffffe___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 -2)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_movq__rdi____rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %13)
  ret %struct.Memory* %16
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




define %struct.Memory* @routine_cmpq__0x0__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_41f8f2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_addq__0x290___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 656)
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

