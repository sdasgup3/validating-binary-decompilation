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

declare %struct.Memory* @sub_401540.fgets_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_401660.strtok_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_401710.__ctype_b_loc_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_43ea10.Die(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_404ca0.SetAlphabet(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_410e60.AlphabetType2String(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_435250.P9AllocHMM(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4356e0.P9DefaultNullModel(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4355e0.P9Renormalize(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x676d90_type = type <{ [4 x i8] }>
@G_0x676d90= global %G_0x676d90_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x677060_type = type <{ [4 x i8] }>
@G_0x677060= global %G_0x677060_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x457852_type = type <{ [8 x i8] }>
@G__0x457852= global %G__0x457852_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457899_type = type <{ [8 x i8] }>
@G__0x457899= global %G__0x457899_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4578f2_type = type <{ [8 x i8] }>
@G__0x4578f2= global %G__0x4578f2_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457914_type = type <{ [8 x i8] }>
@G__0x457914= global %G__0x457914_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457918_type = type <{ [4 x i8] }>
@G__0x457918= global %G__0x457918_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x457927_type = type <{ [4 x i8] }>
@G__0x457927= global %G__0x457927_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x457937_type = type <{ [4 x i8] }>
@G__0x457937= global %G__0x457937_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x45a1f5_type = type <{ [8 x i8] }>
@G__0x45a1f5= global %G__0x45a1f5_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x45a1f7_type = type <{ [8 x i8] }>
@G__0x45a1f7= global %G__0x45a1f7_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @read_plan9_aschmm(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .read_plan9_aschmm:	 RIP: 420820	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 420820	 Bytes: 1
  %loadMem_420820 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420820 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420820)
  store %struct.Memory* %call_420820, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 420821	 Bytes: 3
  %loadMem_420821 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420821 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420821)
  store %struct.Memory* %call_420821, %struct.Memory** %MEMORY

  ; Code: subq $0x260, %rsp	 RIP: 420824	 Bytes: 7
  %loadMem_420824 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420824 = call %struct.Memory* @routine_subq__0x260___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420824)
  store %struct.Memory* %call_420824, %struct.Memory** %MEMORY

  ; Code: movl $0x200, %eax	 RIP: 42082b	 Bytes: 5
  %loadMem_42082b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42082b = call %struct.Memory* @routine_movl__0x200___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42082b)
  store %struct.Memory* %call_42082b, %struct.Memory** %MEMORY

  ; Code: leaq -0x230(%rbp), %rcx	 RIP: 420830	 Bytes: 7
  %loadMem_420830 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420830 = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420830)
  store %struct.Memory* %call_420830, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x10(%rbp)	 RIP: 420837	 Bytes: 4
  %loadMem_420837 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420837 = call %struct.Memory* @routine_movq__rdi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420837)
  store %struct.Memory* %call_420837, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x14(%rbp)	 RIP: 42083b	 Bytes: 3
  %loadMem_42083b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42083b = call %struct.Memory* @routine_movl__esi__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42083b)
  store %struct.Memory* %call_42083b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 42083e	 Bytes: 4
  %loadMem_42083e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42083e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42083e)
  store %struct.Memory* %call_42083e, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 420842	 Bytes: 3
  %loadMem_420842 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420842 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420842)
  store %struct.Memory* %call_420842, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 420845	 Bytes: 2
  %loadMem_420845 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420845 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420845)
  store %struct.Memory* %call_420845, %struct.Memory** %MEMORY

  ; Code: callq .fgets_plt	 RIP: 420847	 Bytes: 5
  %loadMem1_420847 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_420847 = call %struct.Memory* @routine_callq_.fgets_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_420847, i64 -127751, i64 5, i64 5)
  store %struct.Memory* %call1_420847, %struct.Memory** %MEMORY

  %loadMem2_420847 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_420847 = load i64, i64* %3
  %call2_420847 = call %struct.Memory* @sub_401540.fgets_plt(%struct.State* %0, i64  %loadPC_420847, %struct.Memory* %loadMem2_420847)
  store %struct.Memory* %call2_420847, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 42084c	 Bytes: 4
  %loadMem_42084c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42084c = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42084c)
  store %struct.Memory* %call_42084c, %struct.Memory** %MEMORY

  ; Code: jne .L_420863	 RIP: 420850	 Bytes: 6
  %loadMem_420850 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420850 = call %struct.Memory* @routine_jne_.L_420863(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420850, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_420850, %struct.Memory** %MEMORY

  %loadBr_420850 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420850 = icmp eq i8 %loadBr_420850, 1
  br i1 %cmpBr_420850, label %block_.L_420863, label %block_420856

block_420856:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 420856	 Bytes: 8
  %loadMem_420856 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420856 = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420856)
  store %struct.Memory* %call_420856, %struct.Memory** %MEMORY

  ; Code: jmpq .L_421764	 RIP: 42085e	 Bytes: 5
  %loadMem_42085e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42085e = call %struct.Memory* @routine_jmpq_.L_421764(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42085e, i64 3846, i64 5)
  store %struct.Memory* %call_42085e, %struct.Memory** %MEMORY

  br label %block_.L_421764

  ; Code: .L_420863:	 RIP: 420863	 Bytes: 0
block_.L_420863:

  ; Code: movq $0x45a1f5, %rsi	 RIP: 420863	 Bytes: 10
  %loadMem_420863 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420863 = call %struct.Memory* @routine_movq__0x45a1f5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420863)
  store %struct.Memory* %call_420863, %struct.Memory** %MEMORY

  ; Code: leaq -0x230(%rbp), %rdi	 RIP: 42086d	 Bytes: 7
  %loadMem_42086d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42086d = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42086d)
  store %struct.Memory* %call_42086d, %struct.Memory** %MEMORY

  ; Code: callq .strtok_plt	 RIP: 420874	 Bytes: 5
  %loadMem1_420874 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_420874 = call %struct.Memory* @routine_callq_.strtok_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_420874, i64 -127508, i64 5, i64 5)
  store %struct.Memory* %call1_420874, %struct.Memory** %MEMORY

  %loadMem2_420874 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_420874 = load i64, i64* %3
  %call2_420874 = call %struct.Memory* @sub_401660.strtok_plt(%struct.State* %0, i64  %loadPC_420874, %struct.Memory* %loadMem2_420874)
  store %struct.Memory* %call2_420874, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x240(%rbp)	 RIP: 420879	 Bytes: 7
  %loadMem_420879 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420879 = call %struct.Memory* @routine_movq__rax__MINUS0x240__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420879)
  store %struct.Memory* %call_420879, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 420880	 Bytes: 4
  %loadMem_420880 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420880 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420880)
  store %struct.Memory* %call_420880, %struct.Memory** %MEMORY

  ; Code: jne .L_420897	 RIP: 420884	 Bytes: 6
  %loadMem_420884 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420884 = call %struct.Memory* @routine_jne_.L_420897(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420884, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_420884, %struct.Memory** %MEMORY

  %loadBr_420884 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420884 = icmp eq i8 %loadBr_420884, 1
  br i1 %cmpBr_420884, label %block_.L_420897, label %block_42088a

block_42088a:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 42088a	 Bytes: 8
  %loadMem_42088a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42088a = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42088a)
  store %struct.Memory* %call_42088a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_421764	 RIP: 420892	 Bytes: 5
  %loadMem_420892 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420892 = call %struct.Memory* @routine_jmpq_.L_421764(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420892, i64 3794, i64 5)
  store %struct.Memory* %call_420892, %struct.Memory** %MEMORY

  br label %block_.L_421764

  ; Code: .L_420897:	 RIP: 420897	 Bytes: 0
block_.L_420897:

  ; Code: callq .__ctype_b_loc_plt	 RIP: 420897	 Bytes: 5
  %loadMem1_420897 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_420897 = call %struct.Memory* @routine_callq_.__ctype_b_loc_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_420897, i64 -127367, i64 5, i64 5)
  store %struct.Memory* %call1_420897, %struct.Memory** %MEMORY

  %loadMem2_420897 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_420897 = load i64, i64* %3
  %call2_420897 = call %struct.Memory* @sub_401710.__ctype_b_loc_plt(%struct.State* %0, i64  %loadPC_420897, %struct.Memory* %loadMem2_420897)
  store %struct.Memory* %call2_420897, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 42089c	 Bytes: 3
  %loadMem_42089c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42089c = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42089c)
  store %struct.Memory* %call_42089c, %struct.Memory** %MEMORY

  ; Code: movq -0x240(%rbp), %rcx	 RIP: 42089f	 Bytes: 7
  %loadMem_42089f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42089f = call %struct.Memory* @routine_movq_MINUS0x240__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42089f)
  store %struct.Memory* %call_42089f, %struct.Memory** %MEMORY

  ; Code: movsbl (%rcx), %edx	 RIP: 4208a6	 Bytes: 3
  %loadMem_4208a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4208a6 = call %struct.Memory* @routine_movsbl___rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4208a6)
  store %struct.Memory* %call_4208a6, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4208a9	 Bytes: 3
  %loadMem_4208a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4208a9 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4208a9)
  store %struct.Memory* %call_4208a9, %struct.Memory** %MEMORY

  ; Code: movzwl (%rax,%rcx,2), %edx	 RIP: 4208ac	 Bytes: 4
  %loadMem_4208ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4208ac = call %struct.Memory* @routine_movzwl___rax__rcx_2____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4208ac)
  store %struct.Memory* %call_4208ac, %struct.Memory** %MEMORY

  ; Code: andl $0x800, %edx	 RIP: 4208b0	 Bytes: 6
  %loadMem_4208b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4208b0 = call %struct.Memory* @routine_andl__0x800___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4208b0)
  store %struct.Memory* %call_4208b0, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 4208b6	 Bytes: 3
  %loadMem_4208b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4208b6 = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4208b6)
  store %struct.Memory* %call_4208b6, %struct.Memory** %MEMORY

  ; Code: jne .L_4208cc	 RIP: 4208b9	 Bytes: 6
  %loadMem_4208b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4208b9 = call %struct.Memory* @routine_jne_.L_4208cc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4208b9, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_4208b9, %struct.Memory** %MEMORY

  %loadBr_4208b9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4208b9 = icmp eq i8 %loadBr_4208b9, 1
  br i1 %cmpBr_4208b9, label %block_.L_4208cc, label %block_4208bf

block_4208bf:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 4208bf	 Bytes: 8
  %loadMem_4208bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4208bf = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4208bf)
  store %struct.Memory* %call_4208bf, %struct.Memory** %MEMORY

  ; Code: jmpq .L_421764	 RIP: 4208c7	 Bytes: 5
  %loadMem_4208c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4208c7 = call %struct.Memory* @routine_jmpq_.L_421764(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4208c7, i64 3741, i64 5)
  store %struct.Memory* %call_4208c7, %struct.Memory** %MEMORY

  br label %block_.L_421764

  ; Code: .L_4208cc:	 RIP: 4208cc	 Bytes: 0
block_.L_4208cc:

  ; Code: movq -0x240(%rbp), %rdi	 RIP: 4208cc	 Bytes: 7
  %loadMem_4208cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4208cc = call %struct.Memory* @routine_movq_MINUS0x240__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4208cc)
  store %struct.Memory* %call_4208cc, %struct.Memory** %MEMORY

  ; Code: callq .atoi_plt	 RIP: 4208d3	 Bytes: 5
  %loadMem1_4208d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4208d3 = call %struct.Memory* @routine_callq_.atoi_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4208d3, i64 -127539, i64 5, i64 5)
  store %struct.Memory* %call1_4208d3, %struct.Memory** %MEMORY

  %loadMem2_4208d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4208d3 = load i64, i64* %3
  %call2_4208d3 = call %struct.Memory* @ext_atoi(%struct.State* %0, i64  %loadPC_4208d3, %struct.Memory* %loadMem2_4208d3)
  store %struct.Memory* %call2_4208d3, %struct.Memory** %MEMORY

  ; Code: movl $0x200, %esi	 RIP: 4208d8	 Bytes: 5
  %loadMem_4208d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4208d8 = call %struct.Memory* @routine_movl__0x200___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4208d8)
  store %struct.Memory* %call_4208d8, %struct.Memory** %MEMORY

  ; Code: leaq -0x230(%rbp), %rdi	 RIP: 4208dd	 Bytes: 7
  %loadMem_4208dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4208dd = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4208dd)
  store %struct.Memory* %call_4208dd, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 4208e4	 Bytes: 3
  %loadMem_4208e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4208e4 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4208e4)
  store %struct.Memory* %call_4208e4, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4208e7	 Bytes: 4
  %loadMem_4208e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4208e7 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4208e7)
  store %struct.Memory* %call_4208e7, %struct.Memory** %MEMORY

  ; Code: callq .fgets_plt	 RIP: 4208eb	 Bytes: 5
  %loadMem1_4208eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4208eb = call %struct.Memory* @routine_callq_.fgets_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4208eb, i64 -127915, i64 5, i64 5)
  store %struct.Memory* %call1_4208eb, %struct.Memory** %MEMORY

  %loadMem2_4208eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4208eb = load i64, i64* %3
  %call2_4208eb = call %struct.Memory* @sub_401540.fgets_plt(%struct.State* %0, i64  %loadPC_4208eb, %struct.Memory* %loadMem2_4208eb)
  store %struct.Memory* %call2_4208eb, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 4208f0	 Bytes: 4
  %loadMem_4208f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4208f0 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4208f0)
  store %struct.Memory* %call_4208f0, %struct.Memory** %MEMORY

  ; Code: jne .L_420907	 RIP: 4208f4	 Bytes: 6
  %loadMem_4208f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4208f4 = call %struct.Memory* @routine_jne_.L_420907(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4208f4, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_4208f4, %struct.Memory** %MEMORY

  %loadBr_4208f4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4208f4 = icmp eq i8 %loadBr_4208f4, 1
  br i1 %cmpBr_4208f4, label %block_.L_420907, label %block_4208fa

block_4208fa:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 4208fa	 Bytes: 8
  %loadMem_4208fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4208fa = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4208fa)
  store %struct.Memory* %call_4208fa, %struct.Memory** %MEMORY

  ; Code: jmpq .L_421764	 RIP: 420902	 Bytes: 5
  %loadMem_420902 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420902 = call %struct.Memory* @routine_jmpq_.L_421764(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420902, i64 3682, i64 5)
  store %struct.Memory* %call_420902, %struct.Memory** %MEMORY

  br label %block_.L_421764

  ; Code: .L_420907:	 RIP: 420907	 Bytes: 0
block_.L_420907:

  ; Code: movq $0x45a1f5, %rsi	 RIP: 420907	 Bytes: 10
  %loadMem_420907 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420907 = call %struct.Memory* @routine_movq__0x45a1f5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420907)
  store %struct.Memory* %call_420907, %struct.Memory** %MEMORY

  ; Code: leaq -0x230(%rbp), %rdi	 RIP: 420911	 Bytes: 7
  %loadMem_420911 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420911 = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420911)
  store %struct.Memory* %call_420911, %struct.Memory** %MEMORY

  ; Code: callq .strtok_plt	 RIP: 420918	 Bytes: 5
  %loadMem1_420918 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_420918 = call %struct.Memory* @routine_callq_.strtok_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_420918, i64 -127672, i64 5, i64 5)
  store %struct.Memory* %call1_420918, %struct.Memory** %MEMORY

  %loadMem2_420918 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_420918 = load i64, i64* %3
  %call2_420918 = call %struct.Memory* @sub_401660.strtok_plt(%struct.State* %0, i64  %loadPC_420918, %struct.Memory* %loadMem2_420918)
  store %struct.Memory* %call2_420918, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x240(%rbp)	 RIP: 42091d	 Bytes: 7
  %loadMem_42091d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42091d = call %struct.Memory* @routine_movq__rax__MINUS0x240__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42091d)
  store %struct.Memory* %call_42091d, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 420924	 Bytes: 4
  %loadMem_420924 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420924 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420924)
  store %struct.Memory* %call_420924, %struct.Memory** %MEMORY

  ; Code: jne .L_42093b	 RIP: 420928	 Bytes: 6
  %loadMem_420928 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420928 = call %struct.Memory* @routine_jne_.L_42093b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420928, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_420928, %struct.Memory** %MEMORY

  %loadBr_420928 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420928 = icmp eq i8 %loadBr_420928, 1
  br i1 %cmpBr_420928, label %block_.L_42093b, label %block_42092e

block_42092e:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 42092e	 Bytes: 8
  %loadMem_42092e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42092e = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42092e)
  store %struct.Memory* %call_42092e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_421764	 RIP: 420936	 Bytes: 5
  %loadMem_420936 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420936 = call %struct.Memory* @routine_jmpq_.L_421764(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420936, i64 3630, i64 5)
  store %struct.Memory* %call_420936, %struct.Memory** %MEMORY

  br label %block_.L_421764

  ; Code: .L_42093b:	 RIP: 42093b	 Bytes: 0
block_.L_42093b:

  ; Code: callq .__ctype_b_loc_plt	 RIP: 42093b	 Bytes: 5
  %loadMem1_42093b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42093b = call %struct.Memory* @routine_callq_.__ctype_b_loc_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42093b, i64 -127531, i64 5, i64 5)
  store %struct.Memory* %call1_42093b, %struct.Memory** %MEMORY

  %loadMem2_42093b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42093b = load i64, i64* %3
  %call2_42093b = call %struct.Memory* @sub_401710.__ctype_b_loc_plt(%struct.State* %0, i64  %loadPC_42093b, %struct.Memory* %loadMem2_42093b)
  store %struct.Memory* %call2_42093b, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 420940	 Bytes: 3
  %loadMem_420940 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420940 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420940)
  store %struct.Memory* %call_420940, %struct.Memory** %MEMORY

  ; Code: movq -0x240(%rbp), %rcx	 RIP: 420943	 Bytes: 7
  %loadMem_420943 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420943 = call %struct.Memory* @routine_movq_MINUS0x240__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420943)
  store %struct.Memory* %call_420943, %struct.Memory** %MEMORY

  ; Code: movsbl (%rcx), %edx	 RIP: 42094a	 Bytes: 3
  %loadMem_42094a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42094a = call %struct.Memory* @routine_movsbl___rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42094a)
  store %struct.Memory* %call_42094a, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 42094d	 Bytes: 3
  %loadMem_42094d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42094d = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42094d)
  store %struct.Memory* %call_42094d, %struct.Memory** %MEMORY

  ; Code: movzwl (%rax,%rcx,2), %edx	 RIP: 420950	 Bytes: 4
  %loadMem_420950 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420950 = call %struct.Memory* @routine_movzwl___rax__rcx_2____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420950)
  store %struct.Memory* %call_420950, %struct.Memory** %MEMORY

  ; Code: andl $0x800, %edx	 RIP: 420954	 Bytes: 6
  %loadMem_420954 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420954 = call %struct.Memory* @routine_andl__0x800___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420954)
  store %struct.Memory* %call_420954, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 42095a	 Bytes: 3
  %loadMem_42095a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42095a = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42095a)
  store %struct.Memory* %call_42095a, %struct.Memory** %MEMORY

  ; Code: jne .L_420970	 RIP: 42095d	 Bytes: 6
  %loadMem_42095d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42095d = call %struct.Memory* @routine_jne_.L_420970(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42095d, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_42095d, %struct.Memory** %MEMORY

  %loadBr_42095d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42095d = icmp eq i8 %loadBr_42095d, 1
  br i1 %cmpBr_42095d, label %block_.L_420970, label %block_420963

block_420963:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 420963	 Bytes: 8
  %loadMem_420963 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420963 = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420963)
  store %struct.Memory* %call_420963, %struct.Memory** %MEMORY

  ; Code: jmpq .L_421764	 RIP: 42096b	 Bytes: 5
  %loadMem_42096b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42096b = call %struct.Memory* @routine_jmpq_.L_421764(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42096b, i64 3577, i64 5)
  store %struct.Memory* %call_42096b, %struct.Memory** %MEMORY

  br label %block_.L_421764

  ; Code: .L_420970:	 RIP: 420970	 Bytes: 0
block_.L_420970:

  ; Code: movq -0x240(%rbp), %rdi	 RIP: 420970	 Bytes: 7
  %loadMem_420970 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420970 = call %struct.Memory* @routine_movq_MINUS0x240__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420970)
  store %struct.Memory* %call_420970, %struct.Memory** %MEMORY

  ; Code: callq .atoi_plt	 RIP: 420977	 Bytes: 5
  %loadMem1_420977 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_420977 = call %struct.Memory* @routine_callq_.atoi_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_420977, i64 -127703, i64 5, i64 5)
  store %struct.Memory* %call1_420977, %struct.Memory** %MEMORY

  %loadMem2_420977 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_420977 = load i64, i64* %3
  %call2_420977 = call %struct.Memory* @ext_atoi(%struct.State* %0, i64  %loadPC_420977, %struct.Memory* %loadMem2_420977)
  store %struct.Memory* %call2_420977, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24c(%rbp)	 RIP: 42097c	 Bytes: 6
  %loadMem_42097c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42097c = call %struct.Memory* @routine_movl__eax__MINUS0x24c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42097c)
  store %struct.Memory* %call_42097c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x4, -0x24c(%rbp)	 RIP: 420982	 Bytes: 7
  %loadMem_420982 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420982 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x24c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420982)
  store %struct.Memory* %call_420982, %struct.Memory** %MEMORY

  ; Code: jne .L_42099e	 RIP: 420989	 Bytes: 6
  %loadMem_420989 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420989 = call %struct.Memory* @routine_jne_.L_42099e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420989, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_420989, %struct.Memory** %MEMORY

  %loadBr_420989 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420989 = icmp eq i8 %loadBr_420989, 1
  br i1 %cmpBr_420989, label %block_.L_42099e, label %block_42098f

block_42098f:
  ; Code: movl $0x2, -0x250(%rbp)	 RIP: 42098f	 Bytes: 10
  %loadMem_42098f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42098f = call %struct.Memory* @routine_movl__0x2__MINUS0x250__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42098f)
  store %struct.Memory* %call_42098f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4209d6	 RIP: 420999	 Bytes: 5
  %loadMem_420999 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420999 = call %struct.Memory* @routine_jmpq_.L_4209d6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420999, i64 61, i64 5)
  store %struct.Memory* %call_420999, %struct.Memory** %MEMORY

  br label %block_.L_4209d6

  ; Code: .L_42099e:	 RIP: 42099e	 Bytes: 0
block_.L_42099e:

  ; Code: cmpl $0x14, -0x24c(%rbp)	 RIP: 42099e	 Bytes: 7
  %loadMem_42099e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42099e = call %struct.Memory* @routine_cmpl__0x14__MINUS0x24c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42099e)
  store %struct.Memory* %call_42099e, %struct.Memory** %MEMORY

  ; Code: jne .L_4209ba	 RIP: 4209a5	 Bytes: 6
  %loadMem_4209a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4209a5 = call %struct.Memory* @routine_jne_.L_4209ba(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4209a5, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_4209a5, %struct.Memory** %MEMORY

  %loadBr_4209a5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4209a5 = icmp eq i8 %loadBr_4209a5, 1
  br i1 %cmpBr_4209a5, label %block_.L_4209ba, label %block_4209ab

block_4209ab:
  ; Code: movl $0x3, -0x250(%rbp)	 RIP: 4209ab	 Bytes: 10
  %loadMem_4209ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4209ab = call %struct.Memory* @routine_movl__0x3__MINUS0x250__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4209ab)
  store %struct.Memory* %call_4209ab, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4209d1	 RIP: 4209b5	 Bytes: 5
  %loadMem_4209b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4209b5 = call %struct.Memory* @routine_jmpq_.L_4209d1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4209b5, i64 28, i64 5)
  store %struct.Memory* %call_4209b5, %struct.Memory** %MEMORY

  br label %block_.L_4209d1

  ; Code: .L_4209ba:	 RIP: 4209ba	 Bytes: 0
block_.L_4209ba:

  ; Code: movq $0x457852, %rdi	 RIP: 4209ba	 Bytes: 10
  %loadMem_4209ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4209ba = call %struct.Memory* @routine_movq__0x457852___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4209ba)
  store %struct.Memory* %call_4209ba, %struct.Memory** %MEMORY

  ; Code: movl -0x24c(%rbp), %esi	 RIP: 4209c4	 Bytes: 6
  %loadMem_4209c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4209c4 = call %struct.Memory* @routine_movl_MINUS0x24c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4209c4)
  store %struct.Memory* %call_4209c4, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4209ca	 Bytes: 2
  %loadMem_4209ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4209ca = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4209ca)
  store %struct.Memory* %call_4209ca, %struct.Memory** %MEMORY

  ; Code: callq .Die	 RIP: 4209cc	 Bytes: 5
  %loadMem1_4209cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4209cc = call %struct.Memory* @routine_callq_.Die(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4209cc, i64 122948, i64 5, i64 5)
  store %struct.Memory* %call1_4209cc, %struct.Memory** %MEMORY

  %loadMem2_4209cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4209cc = load i64, i64* %3
  %call2_4209cc = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64  %loadPC_4209cc, %struct.Memory* %loadMem2_4209cc)
  store %struct.Memory* %call2_4209cc, %struct.Memory** %MEMORY

  ; Code: .L_4209d1:	 RIP: 4209d1	 Bytes: 0
  br label %block_.L_4209d1
block_.L_4209d1:

  ; Code: jmpq .L_4209d6	 RIP: 4209d1	 Bytes: 5
  %loadMem_4209d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4209d1 = call %struct.Memory* @routine_jmpq_.L_4209d6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4209d1, i64 5, i64 5)
  store %struct.Memory* %call_4209d1, %struct.Memory** %MEMORY

  br label %block_.L_4209d6

  ; Code: .L_4209d6:	 RIP: 4209d6	 Bytes: 0
block_.L_4209d6:

  ; Code: cmpl $0x0, 0x676d90	 RIP: 4209d6	 Bytes: 8
  %loadMem_4209d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4209d6 = call %struct.Memory* @routine_cmpl__0x0__0x676d90(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4209d6)
  store %struct.Memory* %call_4209d6, %struct.Memory** %MEMORY

  ; Code: jne .L_4209f4	 RIP: 4209de	 Bytes: 6
  %loadMem_4209de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4209de = call %struct.Memory* @routine_jne_.L_4209f4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4209de, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_4209de, %struct.Memory** %MEMORY

  %loadBr_4209de = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4209de = icmp eq i8 %loadBr_4209de, 1
  br i1 %cmpBr_4209de, label %block_.L_4209f4, label %block_4209e4

block_4209e4:
  ; Code: movl -0x250(%rbp), %edi	 RIP: 4209e4	 Bytes: 6
  %loadMem_4209e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4209e4 = call %struct.Memory* @routine_movl_MINUS0x250__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4209e4)
  store %struct.Memory* %call_4209e4, %struct.Memory** %MEMORY

  ; Code: callq .SetAlphabet	 RIP: 4209ea	 Bytes: 5
  %loadMem1_4209ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4209ea = call %struct.Memory* @routine_callq_.SetAlphabet(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4209ea, i64 -113994, i64 5, i64 5)
  store %struct.Memory* %call1_4209ea, %struct.Memory** %MEMORY

  %loadMem2_4209ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4209ea = load i64, i64* %3
  %call2_4209ea = call %struct.Memory* @sub_404ca0.SetAlphabet(%struct.State* %0, i64  %loadPC_4209ea, %struct.Memory* %loadMem2_4209ea)
  store %struct.Memory* %call2_4209ea, %struct.Memory** %MEMORY

  ; Code: jmpq .L_420a45	 RIP: 4209ef	 Bytes: 5
  %loadMem_4209ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4209ef = call %struct.Memory* @routine_jmpq_.L_420a45(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4209ef, i64 86, i64 5)
  store %struct.Memory* %call_4209ef, %struct.Memory** %MEMORY

  br label %block_.L_420a45

  ; Code: .L_4209f4:	 RIP: 4209f4	 Bytes: 0
block_.L_4209f4:

  ; Code: movl -0x250(%rbp), %eax	 RIP: 4209f4	 Bytes: 6
  %loadMem_4209f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4209f4 = call %struct.Memory* @routine_movl_MINUS0x250__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4209f4)
  store %struct.Memory* %call_4209f4, %struct.Memory** %MEMORY

  ; Code: cmpl 0x676d90, %eax	 RIP: 4209fa	 Bytes: 7
  %loadMem_4209fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4209fa = call %struct.Memory* @routine_cmpl_0x676d90___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4209fa)
  store %struct.Memory* %call_4209fa, %struct.Memory** %MEMORY

  ; Code: je .L_420a40	 RIP: 420a01	 Bytes: 6
  %loadMem_420a01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420a01 = call %struct.Memory* @routine_je_.L_420a40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420a01, i8* %BRANCH_TAKEN, i64 63, i64 6, i64 6)
  store %struct.Memory* %call_420a01, %struct.Memory** %MEMORY

  %loadBr_420a01 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420a01 = icmp eq i8 %loadBr_420a01, 1
  br i1 %cmpBr_420a01, label %block_.L_420a40, label %block_420a07

block_420a07:
  ; Code: movl 0x676d90, %edi	 RIP: 420a07	 Bytes: 7
  %loadMem_420a07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420a07 = call %struct.Memory* @routine_movl_0x676d90___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420a07)
  store %struct.Memory* %call_420a07, %struct.Memory** %MEMORY

  ; Code: callq .AlphabetType2String	 RIP: 420a0e	 Bytes: 5
  %loadMem1_420a0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_420a0e = call %struct.Memory* @routine_callq_.AlphabetType2String(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_420a0e, i64 -64430, i64 5, i64 5)
  store %struct.Memory* %call1_420a0e, %struct.Memory** %MEMORY

  %loadMem2_420a0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_420a0e = load i64, i64* %3
  %call2_420a0e = call %struct.Memory* @sub_410e60.AlphabetType2String(%struct.State* %0, i64  %loadPC_420a0e, %struct.Memory* %loadMem2_420a0e)
  store %struct.Memory* %call2_420a0e, %struct.Memory** %MEMORY

  ; Code: movl -0x250(%rbp), %edi	 RIP: 420a13	 Bytes: 6
  %loadMem_420a13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420a13 = call %struct.Memory* @routine_movl_MINUS0x250__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420a13)
  store %struct.Memory* %call_420a13, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x258(%rbp)	 RIP: 420a19	 Bytes: 7
  %loadMem_420a19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420a19 = call %struct.Memory* @routine_movq__rax__MINUS0x258__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420a19)
  store %struct.Memory* %call_420a19, %struct.Memory** %MEMORY

  ; Code: callq .AlphabetType2String	 RIP: 420a20	 Bytes: 5
  %loadMem1_420a20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_420a20 = call %struct.Memory* @routine_callq_.AlphabetType2String(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_420a20, i64 -64448, i64 5, i64 5)
  store %struct.Memory* %call1_420a20, %struct.Memory** %MEMORY

  %loadMem2_420a20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_420a20 = load i64, i64* %3
  %call2_420a20 = call %struct.Memory* @sub_410e60.AlphabetType2String(%struct.State* %0, i64  %loadPC_420a20, %struct.Memory* %loadMem2_420a20)
  store %struct.Memory* %call2_420a20, %struct.Memory** %MEMORY

  ; Code: movq $0x457899, %rdi	 RIP: 420a25	 Bytes: 10
  %loadMem_420a25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420a25 = call %struct.Memory* @routine_movq__0x457899___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420a25)
  store %struct.Memory* %call_420a25, %struct.Memory** %MEMORY

  ; Code: movq -0x258(%rbp), %rsi	 RIP: 420a2f	 Bytes: 7
  %loadMem_420a2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420a2f = call %struct.Memory* @routine_movq_MINUS0x258__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420a2f)
  store %struct.Memory* %call_420a2f, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 420a36	 Bytes: 3
  %loadMem_420a36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420a36 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420a36)
  store %struct.Memory* %call_420a36, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 420a39	 Bytes: 2
  %loadMem_420a39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420a39 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420a39)
  store %struct.Memory* %call_420a39, %struct.Memory** %MEMORY

  ; Code: callq .Die	 RIP: 420a3b	 Bytes: 5
  %loadMem1_420a3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_420a3b = call %struct.Memory* @routine_callq_.Die(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_420a3b, i64 122837, i64 5, i64 5)
  store %struct.Memory* %call1_420a3b, %struct.Memory** %MEMORY

  %loadMem2_420a3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_420a3b = load i64, i64* %3
  %call2_420a3b = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64  %loadPC_420a3b, %struct.Memory* %loadMem2_420a3b)
  store %struct.Memory* %call2_420a3b, %struct.Memory** %MEMORY

  ; Code: .L_420a40:	 RIP: 420a40	 Bytes: 0
  br label %block_.L_420a40
block_.L_420a40:

  ; Code: jmpq .L_420a45	 RIP: 420a40	 Bytes: 5
  %loadMem_420a40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420a40 = call %struct.Memory* @routine_jmpq_.L_420a45(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420a40, i64 5, i64 5)
  store %struct.Memory* %call_420a40, %struct.Memory** %MEMORY

  br label %block_.L_420a45

  ; Code: .L_420a45:	 RIP: 420a45	 Bytes: 0
block_.L_420a45:

  ; Code: movl -0x24(%rbp), %edi	 RIP: 420a45	 Bytes: 3
  %loadMem_420a45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420a45 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420a45)
  store %struct.Memory* %call_420a45, %struct.Memory** %MEMORY

  ; Code: callq .P9AllocHMM	 RIP: 420a48	 Bytes: 5
  %loadMem1_420a48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_420a48 = call %struct.Memory* @routine_callq_.P9AllocHMM(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_420a48, i64 83976, i64 5, i64 5)
  store %struct.Memory* %call1_420a48, %struct.Memory** %MEMORY

  %loadMem2_420a48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_420a48 = load i64, i64* %3
  %call2_420a48 = call %struct.Memory* @sub_435250.P9AllocHMM(%struct.State* %0, i64  %loadPC_420a48, %struct.Memory* %loadMem2_420a48)
  store %struct.Memory* %call2_420a48, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x20(%rbp)	 RIP: 420a4d	 Bytes: 4
  %loadMem_420a4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420a4d = call %struct.Memory* @routine_movq__rax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420a4d)
  store %struct.Memory* %call_420a4d, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 420a51	 Bytes: 4
  %loadMem_420a51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420a51 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420a51)
  store %struct.Memory* %call_420a51, %struct.Memory** %MEMORY

  ; Code: jne .L_420a6c	 RIP: 420a55	 Bytes: 6
  %loadMem_420a55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420a55 = call %struct.Memory* @routine_jne_.L_420a6c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420a55, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_420a55, %struct.Memory** %MEMORY

  %loadBr_420a55 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420a55 = icmp eq i8 %loadBr_420a55, 1
  br i1 %cmpBr_420a55, label %block_.L_420a6c, label %block_420a5b

block_420a5b:
  ; Code: movq $0x4578f2, %rdi	 RIP: 420a5b	 Bytes: 10
  %loadMem_420a5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420a5b = call %struct.Memory* @routine_movq__0x4578f2___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420a5b)
  store %struct.Memory* %call_420a5b, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 420a65	 Bytes: 2
  %loadMem_420a65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420a65 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420a65)
  store %struct.Memory* %call_420a65, %struct.Memory** %MEMORY

  ; Code: callq .Die	 RIP: 420a67	 Bytes: 5
  %loadMem1_420a67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_420a67 = call %struct.Memory* @routine_callq_.Die(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_420a67, i64 122793, i64 5, i64 5)
  store %struct.Memory* %call1_420a67, %struct.Memory** %MEMORY

  %loadMem2_420a67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_420a67 = load i64, i64* %3
  %call2_420a67 = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64  %loadPC_420a67, %struct.Memory* %loadMem2_420a67)
  store %struct.Memory* %call2_420a67, %struct.Memory** %MEMORY

  ; Code: .L_420a6c:	 RIP: 420a6c	 Bytes: 0
  br label %block_.L_420a6c
block_.L_420a6c:

  ; Code: movl $0x200, %esi	 RIP: 420a6c	 Bytes: 5
  %loadMem_420a6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420a6c = call %struct.Memory* @routine_movl__0x200___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420a6c)
  store %struct.Memory* %call_420a6c, %struct.Memory** %MEMORY

  ; Code: leaq -0x230(%rbp), %rdi	 RIP: 420a71	 Bytes: 7
  %loadMem_420a71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420a71 = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420a71)
  store %struct.Memory* %call_420a71, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 420a78	 Bytes: 4
  %loadMem_420a78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420a78 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420a78)
  store %struct.Memory* %call_420a78, %struct.Memory** %MEMORY

  ; Code: callq .fgets_plt	 RIP: 420a7c	 Bytes: 5
  %loadMem1_420a7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_420a7c = call %struct.Memory* @routine_callq_.fgets_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_420a7c, i64 -128316, i64 5, i64 5)
  store %struct.Memory* %call1_420a7c, %struct.Memory** %MEMORY

  %loadMem2_420a7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_420a7c = load i64, i64* %3
  %call2_420a7c = call %struct.Memory* @sub_401540.fgets_plt(%struct.State* %0, i64  %loadPC_420a7c, %struct.Memory* %loadMem2_420a7c)
  store %struct.Memory* %call2_420a7c, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 420a81	 Bytes: 4
  %loadMem_420a81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420a81 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420a81)
  store %struct.Memory* %call_420a81, %struct.Memory** %MEMORY

  ; Code: jne .L_420a98	 RIP: 420a85	 Bytes: 6
  %loadMem_420a85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420a85 = call %struct.Memory* @routine_jne_.L_420a98(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420a85, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_420a85, %struct.Memory** %MEMORY

  %loadBr_420a85 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420a85 = icmp eq i8 %loadBr_420a85, 1
  br i1 %cmpBr_420a85, label %block_.L_420a98, label %block_420a8b

block_420a8b:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 420a8b	 Bytes: 8
  %loadMem_420a8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420a8b = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420a8b)
  store %struct.Memory* %call_420a8b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_421764	 RIP: 420a93	 Bytes: 5
  %loadMem_420a93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420a93 = call %struct.Memory* @routine_jmpq_.L_421764(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420a93, i64 3281, i64 5)
  store %struct.Memory* %call_420a93, %struct.Memory** %MEMORY

  br label %block_.L_421764

  ; Code: .L_420a98:	 RIP: 420a98	 Bytes: 0
block_.L_420a98:

  ; Code: movq $0x45a1f5, %rsi	 RIP: 420a98	 Bytes: 10
  %loadMem_420a98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420a98 = call %struct.Memory* @routine_movq__0x45a1f5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420a98)
  store %struct.Memory* %call_420a98, %struct.Memory** %MEMORY

  ; Code: leaq -0x230(%rbp), %rdi	 RIP: 420aa2	 Bytes: 7
  %loadMem_420aa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420aa2 = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420aa2)
  store %struct.Memory* %call_420aa2, %struct.Memory** %MEMORY

  ; Code: callq .strtok_plt	 RIP: 420aa9	 Bytes: 5
  %loadMem1_420aa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_420aa9 = call %struct.Memory* @routine_callq_.strtok_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_420aa9, i64 -128073, i64 5, i64 5)
  store %struct.Memory* %call1_420aa9, %struct.Memory** %MEMORY

  %loadMem2_420aa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_420aa9 = load i64, i64* %3
  %call2_420aa9 = call %struct.Memory* @sub_401660.strtok_plt(%struct.State* %0, i64  %loadPC_420aa9, %struct.Memory* %loadMem2_420aa9)
  store %struct.Memory* %call2_420aa9, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x240(%rbp)	 RIP: 420aae	 Bytes: 7
  %loadMem_420aae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420aae = call %struct.Memory* @routine_movq__rax__MINUS0x240__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420aae)
  store %struct.Memory* %call_420aae, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 420ab5	 Bytes: 4
  %loadMem_420ab5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420ab5 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420ab5)
  store %struct.Memory* %call_420ab5, %struct.Memory** %MEMORY

  ; Code: jne .L_420acc	 RIP: 420ab9	 Bytes: 6
  %loadMem_420ab9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420ab9 = call %struct.Memory* @routine_jne_.L_420acc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420ab9, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_420ab9, %struct.Memory** %MEMORY

  %loadBr_420ab9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420ab9 = icmp eq i8 %loadBr_420ab9, 1
  br i1 %cmpBr_420ab9, label %block_.L_420acc, label %block_420abf

block_420abf:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 420abf	 Bytes: 8
  %loadMem_420abf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420abf = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420abf)
  store %struct.Memory* %call_420abf, %struct.Memory** %MEMORY

  ; Code: jmpq .L_421764	 RIP: 420ac7	 Bytes: 5
  %loadMem_420ac7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420ac7 = call %struct.Memory* @routine_jmpq_.L_421764(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420ac7, i64 3229, i64 5)
  store %struct.Memory* %call_420ac7, %struct.Memory** %MEMORY

  br label %block_.L_421764

  ; Code: .L_420acc:	 RIP: 420acc	 Bytes: 0
block_.L_420acc:

  ; Code: callq .__ctype_b_loc_plt	 RIP: 420acc	 Bytes: 5
  %loadMem1_420acc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_420acc = call %struct.Memory* @routine_callq_.__ctype_b_loc_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_420acc, i64 -127932, i64 5, i64 5)
  store %struct.Memory* %call1_420acc, %struct.Memory** %MEMORY

  %loadMem2_420acc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_420acc = load i64, i64* %3
  %call2_420acc = call %struct.Memory* @sub_401710.__ctype_b_loc_plt(%struct.State* %0, i64  %loadPC_420acc, %struct.Memory* %loadMem2_420acc)
  store %struct.Memory* %call2_420acc, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 420ad1	 Bytes: 3
  %loadMem_420ad1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420ad1 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420ad1)
  store %struct.Memory* %call_420ad1, %struct.Memory** %MEMORY

  ; Code: movq -0x240(%rbp), %rcx	 RIP: 420ad4	 Bytes: 7
  %loadMem_420ad4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420ad4 = call %struct.Memory* @routine_movq_MINUS0x240__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420ad4)
  store %struct.Memory* %call_420ad4, %struct.Memory** %MEMORY

  ; Code: movsbl (%rcx), %edx	 RIP: 420adb	 Bytes: 3
  %loadMem_420adb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420adb = call %struct.Memory* @routine_movsbl___rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420adb)
  store %struct.Memory* %call_420adb, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 420ade	 Bytes: 3
  %loadMem_420ade = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420ade = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420ade)
  store %struct.Memory* %call_420ade, %struct.Memory** %MEMORY

  ; Code: movzwl (%rax,%rcx,2), %edx	 RIP: 420ae1	 Bytes: 4
  %loadMem_420ae1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420ae1 = call %struct.Memory* @routine_movzwl___rax__rcx_2____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420ae1)
  store %struct.Memory* %call_420ae1, %struct.Memory** %MEMORY

  ; Code: andl $0x800, %edx	 RIP: 420ae5	 Bytes: 6
  %loadMem_420ae5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420ae5 = call %struct.Memory* @routine_andl__0x800___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420ae5)
  store %struct.Memory* %call_420ae5, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 420aeb	 Bytes: 3
  %loadMem_420aeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420aeb = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420aeb)
  store %struct.Memory* %call_420aeb, %struct.Memory** %MEMORY

  ; Code: jne .L_420b01	 RIP: 420aee	 Bytes: 6
  %loadMem_420aee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420aee = call %struct.Memory* @routine_jne_.L_420b01(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420aee, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_420aee, %struct.Memory** %MEMORY

  %loadBr_420aee = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420aee = icmp eq i8 %loadBr_420aee, 1
  br i1 %cmpBr_420aee, label %block_.L_420b01, label %block_420af4

block_420af4:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 420af4	 Bytes: 8
  %loadMem_420af4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420af4 = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420af4)
  store %struct.Memory* %call_420af4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_421764	 RIP: 420afc	 Bytes: 5
  %loadMem_420afc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420afc = call %struct.Memory* @routine_jmpq_.L_421764(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420afc, i64 3176, i64 5)
  store %struct.Memory* %call_420afc, %struct.Memory** %MEMORY

  br label %block_.L_421764

  ; Code: .L_420b01:	 RIP: 420b01	 Bytes: 0
block_.L_420b01:

  ; Code: movl $0x200, %esi	 RIP: 420b01	 Bytes: 5
  %loadMem_420b01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420b01 = call %struct.Memory* @routine_movl__0x200___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420b01)
  store %struct.Memory* %call_420b01, %struct.Memory** %MEMORY

  ; Code: leaq -0x230(%rbp), %rdi	 RIP: 420b06	 Bytes: 7
  %loadMem_420b06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420b06 = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420b06)
  store %struct.Memory* %call_420b06, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 420b0d	 Bytes: 4
  %loadMem_420b0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420b0d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420b0d)
  store %struct.Memory* %call_420b0d, %struct.Memory** %MEMORY

  ; Code: callq .fgets_plt	 RIP: 420b11	 Bytes: 5
  %loadMem1_420b11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_420b11 = call %struct.Memory* @routine_callq_.fgets_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_420b11, i64 -128465, i64 5, i64 5)
  store %struct.Memory* %call1_420b11, %struct.Memory** %MEMORY

  %loadMem2_420b11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_420b11 = load i64, i64* %3
  %call2_420b11 = call %struct.Memory* @sub_401540.fgets_plt(%struct.State* %0, i64  %loadPC_420b11, %struct.Memory* %loadMem2_420b11)
  store %struct.Memory* %call2_420b11, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 420b16	 Bytes: 4
  %loadMem_420b16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420b16 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420b16)
  store %struct.Memory* %call_420b16, %struct.Memory** %MEMORY

  ; Code: jne .L_420b2d	 RIP: 420b1a	 Bytes: 6
  %loadMem_420b1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420b1a = call %struct.Memory* @routine_jne_.L_420b2d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420b1a, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_420b1a, %struct.Memory** %MEMORY

  %loadBr_420b1a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420b1a = icmp eq i8 %loadBr_420b1a, 1
  br i1 %cmpBr_420b1a, label %block_.L_420b2d, label %block_420b20

block_420b20:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 420b20	 Bytes: 8
  %loadMem_420b20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420b20 = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420b20)
  store %struct.Memory* %call_420b20, %struct.Memory** %MEMORY

  ; Code: jmpq .L_421764	 RIP: 420b28	 Bytes: 5
  %loadMem_420b28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420b28 = call %struct.Memory* @routine_jmpq_.L_421764(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420b28, i64 3132, i64 5)
  store %struct.Memory* %call_420b28, %struct.Memory** %MEMORY

  br label %block_.L_421764

  ; Code: .L_420b2d:	 RIP: 420b2d	 Bytes: 0
block_.L_420b2d:

  ; Code: movq $0x45a1f5, %rsi	 RIP: 420b2d	 Bytes: 10
  %loadMem_420b2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420b2d = call %struct.Memory* @routine_movq__0x45a1f5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420b2d)
  store %struct.Memory* %call_420b2d, %struct.Memory** %MEMORY

  ; Code: leaq -0x230(%rbp), %rdi	 RIP: 420b37	 Bytes: 7
  %loadMem_420b37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420b37 = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420b37)
  store %struct.Memory* %call_420b37, %struct.Memory** %MEMORY

  ; Code: callq .strtok_plt	 RIP: 420b3e	 Bytes: 5
  %loadMem1_420b3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_420b3e = call %struct.Memory* @routine_callq_.strtok_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_420b3e, i64 -128222, i64 5, i64 5)
  store %struct.Memory* %call1_420b3e, %struct.Memory** %MEMORY

  %loadMem2_420b3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_420b3e = load i64, i64* %3
  %call2_420b3e = call %struct.Memory* @sub_401660.strtok_plt(%struct.State* %0, i64  %loadPC_420b3e, %struct.Memory* %loadMem2_420b3e)
  store %struct.Memory* %call2_420b3e, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x240(%rbp)	 RIP: 420b43	 Bytes: 7
  %loadMem_420b43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420b43 = call %struct.Memory* @routine_movq__rax__MINUS0x240__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420b43)
  store %struct.Memory* %call_420b43, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 420b4a	 Bytes: 4
  %loadMem_420b4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420b4a = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420b4a)
  store %struct.Memory* %call_420b4a, %struct.Memory** %MEMORY

  ; Code: jne .L_420b61	 RIP: 420b4e	 Bytes: 6
  %loadMem_420b4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420b4e = call %struct.Memory* @routine_jne_.L_420b61(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420b4e, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_420b4e, %struct.Memory** %MEMORY

  %loadBr_420b4e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420b4e = icmp eq i8 %loadBr_420b4e, 1
  br i1 %cmpBr_420b4e, label %block_.L_420b61, label %block_420b54

block_420b54:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 420b54	 Bytes: 8
  %loadMem_420b54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420b54 = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420b54)
  store %struct.Memory* %call_420b54, %struct.Memory** %MEMORY

  ; Code: jmpq .L_421764	 RIP: 420b5c	 Bytes: 5
  %loadMem_420b5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420b5c = call %struct.Memory* @routine_jmpq_.L_421764(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420b5c, i64 3080, i64 5)
  store %struct.Memory* %call_420b5c, %struct.Memory** %MEMORY

  br label %block_.L_421764

  ; Code: .L_420b61:	 RIP: 420b61	 Bytes: 0
block_.L_420b61:

  ; Code: cmpl $0x2, -0x14(%rbp)	 RIP: 420b61	 Bytes: 4
  %loadMem_420b61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420b61 = call %struct.Memory* @routine_cmpl__0x2__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420b61)
  store %struct.Memory* %call_420b61, %struct.Memory** %MEMORY

  ; Code: jne .L_420bd2	 RIP: 420b65	 Bytes: 6
  %loadMem_420b65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420b65 = call %struct.Memory* @routine_jne_.L_420bd2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420b65, i8* %BRANCH_TAKEN, i64 109, i64 6, i64 6)
  store %struct.Memory* %call_420b65, %struct.Memory** %MEMORY

  %loadBr_420b65 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420b65 = icmp eq i8 %loadBr_420b65, 1
  br i1 %cmpBr_420b65, label %block_.L_420bd2, label %block_420b6b

block_420b6b:
  ; Code: movl $0x0, -0x248(%rbp)	 RIP: 420b6b	 Bytes: 10
  %loadMem_420b6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420b6b = call %struct.Memory* @routine_movl__0x0__MINUS0x248__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420b6b)
  store %struct.Memory* %call_420b6b, %struct.Memory** %MEMORY

  ; Code: .L_420b75:	 RIP: 420b75	 Bytes: 0
  br label %block_.L_420b75
block_.L_420b75:

  ; Code: movl -0x248(%rbp), %eax	 RIP: 420b75	 Bytes: 6
  %loadMem_420b75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420b75 = call %struct.Memory* @routine_movl_MINUS0x248__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420b75)
  store %struct.Memory* %call_420b75, %struct.Memory** %MEMORY

  ; Code: cmpl 0x677060, %eax	 RIP: 420b7b	 Bytes: 7
  %loadMem_420b7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420b7b = call %struct.Memory* @routine_cmpl_0x677060___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420b7b)
  store %struct.Memory* %call_420b7b, %struct.Memory** %MEMORY

  ; Code: jge .L_420bcd	 RIP: 420b82	 Bytes: 6
  %loadMem_420b82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420b82 = call %struct.Memory* @routine_jge_.L_420bcd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420b82, i8* %BRANCH_TAKEN, i64 75, i64 6, i64 6)
  store %struct.Memory* %call_420b82, %struct.Memory** %MEMORY

  %loadBr_420b82 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420b82 = icmp eq i8 %loadBr_420b82, 1
  br i1 %cmpBr_420b82, label %block_.L_420bcd, label %block_420b88

block_420b88:
  ; Code: movl $0x200, %esi	 RIP: 420b88	 Bytes: 5
  %loadMem_420b88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420b88 = call %struct.Memory* @routine_movl__0x200___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420b88)
  store %struct.Memory* %call_420b88, %struct.Memory** %MEMORY

  ; Code: leaq -0x230(%rbp), %rdi	 RIP: 420b8d	 Bytes: 7
  %loadMem_420b8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420b8d = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420b8d)
  store %struct.Memory* %call_420b8d, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 420b94	 Bytes: 4
  %loadMem_420b94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420b94 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420b94)
  store %struct.Memory* %call_420b94, %struct.Memory** %MEMORY

  ; Code: callq .fgets_plt	 RIP: 420b98	 Bytes: 5
  %loadMem1_420b98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_420b98 = call %struct.Memory* @routine_callq_.fgets_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_420b98, i64 -128600, i64 5, i64 5)
  store %struct.Memory* %call1_420b98, %struct.Memory** %MEMORY

  %loadMem2_420b98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_420b98 = load i64, i64* %3
  %call2_420b98 = call %struct.Memory* @sub_401540.fgets_plt(%struct.State* %0, i64  %loadPC_420b98, %struct.Memory* %loadMem2_420b98)
  store %struct.Memory* %call2_420b98, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 420b9d	 Bytes: 4
  %loadMem_420b9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420b9d = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420b9d)
  store %struct.Memory* %call_420b9d, %struct.Memory** %MEMORY

  ; Code: jne .L_420bb4	 RIP: 420ba1	 Bytes: 6
  %loadMem_420ba1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420ba1 = call %struct.Memory* @routine_jne_.L_420bb4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420ba1, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_420ba1, %struct.Memory** %MEMORY

  %loadBr_420ba1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420ba1 = icmp eq i8 %loadBr_420ba1, 1
  br i1 %cmpBr_420ba1, label %block_.L_420bb4, label %block_420ba7

block_420ba7:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 420ba7	 Bytes: 8
  %loadMem_420ba7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420ba7 = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420ba7)
  store %struct.Memory* %call_420ba7, %struct.Memory** %MEMORY

  ; Code: jmpq .L_421764	 RIP: 420baf	 Bytes: 5
  %loadMem_420baf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420baf = call %struct.Memory* @routine_jmpq_.L_421764(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420baf, i64 2997, i64 5)
  store %struct.Memory* %call_420baf, %struct.Memory** %MEMORY

  br label %block_.L_421764

  ; Code: .L_420bb4:	 RIP: 420bb4	 Bytes: 0
block_.L_420bb4:

  ; Code: jmpq .L_420bb9	 RIP: 420bb4	 Bytes: 5
  %loadMem_420bb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420bb4 = call %struct.Memory* @routine_jmpq_.L_420bb9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420bb4, i64 5, i64 5)
  store %struct.Memory* %call_420bb4, %struct.Memory** %MEMORY

  br label %block_.L_420bb9

  ; Code: .L_420bb9:	 RIP: 420bb9	 Bytes: 0
block_.L_420bb9:

  ; Code: movl -0x248(%rbp), %eax	 RIP: 420bb9	 Bytes: 6
  %loadMem_420bb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420bb9 = call %struct.Memory* @routine_movl_MINUS0x248__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420bb9)
  store %struct.Memory* %call_420bb9, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 420bbf	 Bytes: 3
  %loadMem_420bbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420bbf = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420bbf)
  store %struct.Memory* %call_420bbf, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x248(%rbp)	 RIP: 420bc2	 Bytes: 6
  %loadMem_420bc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420bc2 = call %struct.Memory* @routine_movl__eax__MINUS0x248__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420bc2)
  store %struct.Memory* %call_420bc2, %struct.Memory** %MEMORY

  ; Code: jmpq .L_420b75	 RIP: 420bc8	 Bytes: 5
  %loadMem_420bc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420bc8 = call %struct.Memory* @routine_jmpq_.L_420b75(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420bc8, i64 -83, i64 5)
  store %struct.Memory* %call_420bc8, %struct.Memory** %MEMORY

  br label %block_.L_420b75

  ; Code: .L_420bcd:	 RIP: 420bcd	 Bytes: 0
block_.L_420bcd:

  ; Code: jmpq .L_420bd2	 RIP: 420bcd	 Bytes: 5
  %loadMem_420bcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420bcd = call %struct.Memory* @routine_jmpq_.L_420bd2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420bcd, i64 5, i64 5)
  store %struct.Memory* %call_420bcd, %struct.Memory** %MEMORY

  br label %block_.L_420bd2

  ; Code: .L_420bd2:	 RIP: 420bd2	 Bytes: 0
block_.L_420bd2:

  ; Code: cmpl $0x6, -0x14(%rbp)	 RIP: 420bd2	 Bytes: 4
  %loadMem_420bd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420bd2 = call %struct.Memory* @routine_cmpl__0x6__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420bd2)
  store %struct.Memory* %call_420bd2, %struct.Memory** %MEMORY

  ; Code: jne .L_420cab	 RIP: 420bd6	 Bytes: 6
  %loadMem_420bd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420bd6 = call %struct.Memory* @routine_jne_.L_420cab(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420bd6, i8* %BRANCH_TAKEN, i64 213, i64 6, i64 6)
  store %struct.Memory* %call_420bd6, %struct.Memory** %MEMORY

  %loadBr_420bd6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420bd6 = icmp eq i8 %loadBr_420bd6, 1
  br i1 %cmpBr_420bd6, label %block_.L_420cab, label %block_420bdc

block_420bdc:
  ; Code: movl $0x200, %esi	 RIP: 420bdc	 Bytes: 5
  %loadMem_420bdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420bdc = call %struct.Memory* @routine_movl__0x200___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420bdc)
  store %struct.Memory* %call_420bdc, %struct.Memory** %MEMORY

  ; Code: leaq -0x230(%rbp), %rdi	 RIP: 420be1	 Bytes: 7
  %loadMem_420be1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420be1 = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420be1)
  store %struct.Memory* %call_420be1, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 420be8	 Bytes: 4
  %loadMem_420be8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420be8 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420be8)
  store %struct.Memory* %call_420be8, %struct.Memory** %MEMORY

  ; Code: callq .fgets_plt	 RIP: 420bec	 Bytes: 5
  %loadMem1_420bec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_420bec = call %struct.Memory* @routine_callq_.fgets_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_420bec, i64 -128684, i64 5, i64 5)
  store %struct.Memory* %call1_420bec, %struct.Memory** %MEMORY

  %loadMem2_420bec = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_420bec = load i64, i64* %3
  %call2_420bec = call %struct.Memory* @sub_401540.fgets_plt(%struct.State* %0, i64  %loadPC_420bec, %struct.Memory* %loadMem2_420bec)
  store %struct.Memory* %call2_420bec, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 420bf1	 Bytes: 4
  %loadMem_420bf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420bf1 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420bf1)
  store %struct.Memory* %call_420bf1, %struct.Memory** %MEMORY

  ; Code: jne .L_420c08	 RIP: 420bf5	 Bytes: 6
  %loadMem_420bf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420bf5 = call %struct.Memory* @routine_jne_.L_420c08(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420bf5, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_420bf5, %struct.Memory** %MEMORY

  %loadBr_420bf5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420bf5 = icmp eq i8 %loadBr_420bf5, 1
  br i1 %cmpBr_420bf5, label %block_.L_420c08, label %block_420bfb

block_420bfb:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 420bfb	 Bytes: 8
  %loadMem_420bfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420bfb = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420bfb)
  store %struct.Memory* %call_420bfb, %struct.Memory** %MEMORY

  ; Code: jmpq .L_421764	 RIP: 420c03	 Bytes: 5
  %loadMem_420c03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420c03 = call %struct.Memory* @routine_jmpq_.L_421764(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420c03, i64 2913, i64 5)
  store %struct.Memory* %call_420c03, %struct.Memory** %MEMORY

  br label %block_.L_421764

  ; Code: .L_420c08:	 RIP: 420c08	 Bytes: 0
block_.L_420c08:

  ; Code: movq $0x457914, %rsi	 RIP: 420c08	 Bytes: 10
  %loadMem_420c08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420c08 = call %struct.Memory* @routine_movq__0x457914___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420c08)
  store %struct.Memory* %call_420c08, %struct.Memory** %MEMORY

  ; Code: movl $0x3, %eax	 RIP: 420c12	 Bytes: 5
  %loadMem_420c12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420c12 = call %struct.Memory* @routine_movl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420c12)
  store %struct.Memory* %call_420c12, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 420c17	 Bytes: 2
  %loadMem_420c17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420c17 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420c17)
  store %struct.Memory* %call_420c17, %struct.Memory** %MEMORY

  ; Code: leaq -0x230(%rbp), %rdi	 RIP: 420c19	 Bytes: 7
  %loadMem_420c19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420c19 = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420c19)
  store %struct.Memory* %call_420c19, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 420c20	 Bytes: 5
  %loadMem1_420c20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_420c20 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_420c20, i64 -129104, i64 5, i64 5)
  store %struct.Memory* %call1_420c20, %struct.Memory** %MEMORY

  %loadMem2_420c20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_420c20 = load i64, i64* %3
  %call2_420c20 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_420c20, %struct.Memory* %loadMem2_420c20)
  store %struct.Memory* %call2_420c20, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 420c25	 Bytes: 3
  %loadMem_420c25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420c25 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420c25)
  store %struct.Memory* %call_420c25, %struct.Memory** %MEMORY

  ; Code: jne .L_420c41	 RIP: 420c28	 Bytes: 6
  %loadMem_420c28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420c28 = call %struct.Memory* @routine_jne_.L_420c41(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420c28, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_420c28, %struct.Memory** %MEMORY

  %loadBr_420c28 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420c28 = icmp eq i8 %loadBr_420c28, 1
  br i1 %cmpBr_420c28, label %block_.L_420c41, label %block_420c2e

block_420c2e:
  ; Code: movq -0x20(%rbp), %rax	 RIP: 420c2e	 Bytes: 4
  %loadMem_420c2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420c2e = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420c2e)
  store %struct.Memory* %call_420c2e, %struct.Memory** %MEMORY

  ; Code: movl 0x90(%rax), %ecx	 RIP: 420c32	 Bytes: 6
  %loadMem_420c32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420c32 = call %struct.Memory* @routine_movl_0x90__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420c32)
  store %struct.Memory* %call_420c32, %struct.Memory** %MEMORY

  ; Code: orl $0x1, %ecx	 RIP: 420c38	 Bytes: 3
  %loadMem_420c38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420c38 = call %struct.Memory* @routine_orl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420c38)
  store %struct.Memory* %call_420c38, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x90(%rax)	 RIP: 420c3b	 Bytes: 6
  %loadMem_420c3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420c3b = call %struct.Memory* @routine_movl__ecx__0x90__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420c3b)
  store %struct.Memory* %call_420c3b, %struct.Memory** %MEMORY

  ; Code: .L_420c41:	 RIP: 420c41	 Bytes: 0
  br label %block_.L_420c41
block_.L_420c41:

  ; Code: movl $0x200, %esi	 RIP: 420c41	 Bytes: 5
  %loadMem_420c41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420c41 = call %struct.Memory* @routine_movl__0x200___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420c41)
  store %struct.Memory* %call_420c41, %struct.Memory** %MEMORY

  ; Code: leaq -0x230(%rbp), %rdi	 RIP: 420c46	 Bytes: 7
  %loadMem_420c46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420c46 = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420c46)
  store %struct.Memory* %call_420c46, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 420c4d	 Bytes: 4
  %loadMem_420c4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420c4d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420c4d)
  store %struct.Memory* %call_420c4d, %struct.Memory** %MEMORY

  ; Code: callq .fgets_plt	 RIP: 420c51	 Bytes: 5
  %loadMem1_420c51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_420c51 = call %struct.Memory* @routine_callq_.fgets_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_420c51, i64 -128785, i64 5, i64 5)
  store %struct.Memory* %call1_420c51, %struct.Memory** %MEMORY

  %loadMem2_420c51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_420c51 = load i64, i64* %3
  %call2_420c51 = call %struct.Memory* @sub_401540.fgets_plt(%struct.State* %0, i64  %loadPC_420c51, %struct.Memory* %loadMem2_420c51)
  store %struct.Memory* %call2_420c51, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 420c56	 Bytes: 4
  %loadMem_420c56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420c56 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420c56)
  store %struct.Memory* %call_420c56, %struct.Memory** %MEMORY

  ; Code: jne .L_420c6d	 RIP: 420c5a	 Bytes: 6
  %loadMem_420c5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420c5a = call %struct.Memory* @routine_jne_.L_420c6d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420c5a, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_420c5a, %struct.Memory** %MEMORY

  %loadBr_420c5a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420c5a = icmp eq i8 %loadBr_420c5a, 1
  br i1 %cmpBr_420c5a, label %block_.L_420c6d, label %block_420c60

block_420c60:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 420c60	 Bytes: 8
  %loadMem_420c60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420c60 = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420c60)
  store %struct.Memory* %call_420c60, %struct.Memory** %MEMORY

  ; Code: jmpq .L_421764	 RIP: 420c68	 Bytes: 5
  %loadMem_420c68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420c68 = call %struct.Memory* @routine_jmpq_.L_421764(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420c68, i64 2812, i64 5)
  store %struct.Memory* %call_420c68, %struct.Memory** %MEMORY

  br label %block_.L_421764

  ; Code: .L_420c6d:	 RIP: 420c6d	 Bytes: 0
block_.L_420c6d:

  ; Code: movq $0x457914, %rsi	 RIP: 420c6d	 Bytes: 10
  %loadMem_420c6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420c6d = call %struct.Memory* @routine_movq__0x457914___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420c6d)
  store %struct.Memory* %call_420c6d, %struct.Memory** %MEMORY

  ; Code: movl $0x3, %eax	 RIP: 420c77	 Bytes: 5
  %loadMem_420c77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420c77 = call %struct.Memory* @routine_movl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420c77)
  store %struct.Memory* %call_420c77, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 420c7c	 Bytes: 2
  %loadMem_420c7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420c7c = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420c7c)
  store %struct.Memory* %call_420c7c, %struct.Memory** %MEMORY

  ; Code: leaq -0x230(%rbp), %rdi	 RIP: 420c7e	 Bytes: 7
  %loadMem_420c7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420c7e = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420c7e)
  store %struct.Memory* %call_420c7e, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 420c85	 Bytes: 5
  %loadMem1_420c85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_420c85 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_420c85, i64 -129205, i64 5, i64 5)
  store %struct.Memory* %call1_420c85, %struct.Memory** %MEMORY

  %loadMem2_420c85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_420c85 = load i64, i64* %3
  %call2_420c85 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_420c85, %struct.Memory* %loadMem2_420c85)
  store %struct.Memory* %call2_420c85, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 420c8a	 Bytes: 3
  %loadMem_420c8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420c8a = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420c8a)
  store %struct.Memory* %call_420c8a, %struct.Memory** %MEMORY

  ; Code: jne .L_420ca6	 RIP: 420c8d	 Bytes: 6
  %loadMem_420c8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420c8d = call %struct.Memory* @routine_jne_.L_420ca6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420c8d, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_420c8d, %struct.Memory** %MEMORY

  %loadBr_420c8d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420c8d = icmp eq i8 %loadBr_420c8d, 1
  br i1 %cmpBr_420c8d, label %block_.L_420ca6, label %block_420c93

block_420c93:
  ; Code: movq -0x20(%rbp), %rax	 RIP: 420c93	 Bytes: 4
  %loadMem_420c93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420c93 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420c93)
  store %struct.Memory* %call_420c93, %struct.Memory** %MEMORY

  ; Code: movl 0x90(%rax), %ecx	 RIP: 420c97	 Bytes: 6
  %loadMem_420c97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420c97 = call %struct.Memory* @routine_movl_0x90__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420c97)
  store %struct.Memory* %call_420c97, %struct.Memory** %MEMORY

  ; Code: orl $0x2, %ecx	 RIP: 420c9d	 Bytes: 3
  %loadMem_420c9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420c9d = call %struct.Memory* @routine_orl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420c9d)
  store %struct.Memory* %call_420c9d, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x90(%rax)	 RIP: 420ca0	 Bytes: 6
  %loadMem_420ca0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420ca0 = call %struct.Memory* @routine_movl__ecx__0x90__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420ca0)
  store %struct.Memory* %call_420ca0, %struct.Memory** %MEMORY

  ; Code: .L_420ca6:	 RIP: 420ca6	 Bytes: 0
  br label %block_.L_420ca6
block_.L_420ca6:

  ; Code: jmpq .L_420cab	 RIP: 420ca6	 Bytes: 5
  %loadMem_420ca6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420ca6 = call %struct.Memory* @routine_jmpq_.L_420cab(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420ca6, i64 5, i64 5)
  store %struct.Memory* %call_420ca6, %struct.Memory** %MEMORY

  br label %block_.L_420cab

  ; Code: .L_420cab:	 RIP: 420cab	 Bytes: 0
block_.L_420cab:

  ; Code: jmpq .L_420cb0	 RIP: 420cab	 Bytes: 5
  %loadMem_420cab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420cab = call %struct.Memory* @routine_jmpq_.L_420cb0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420cab, i64 5, i64 5)
  store %struct.Memory* %call_420cab, %struct.Memory** %MEMORY

  br label %block_.L_420cb0

  ; Code: .L_420cb0:	 RIP: 420cb0	 Bytes: 0
block_.L_420cb0:

  ; Code: movl $0x200, %esi	 RIP: 420cb0	 Bytes: 5
  %loadMem_420cb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420cb0 = call %struct.Memory* @routine_movl__0x200___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420cb0)
  store %struct.Memory* %call_420cb0, %struct.Memory** %MEMORY

  ; Code: leaq -0x230(%rbp), %rdi	 RIP: 420cb5	 Bytes: 7
  %loadMem_420cb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420cb5 = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420cb5)
  store %struct.Memory* %call_420cb5, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 420cbc	 Bytes: 4
  %loadMem_420cbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420cbc = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420cbc)
  store %struct.Memory* %call_420cbc, %struct.Memory** %MEMORY

  ; Code: callq .fgets_plt	 RIP: 420cc0	 Bytes: 5
  %loadMem1_420cc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_420cc0 = call %struct.Memory* @routine_callq_.fgets_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_420cc0, i64 -128896, i64 5, i64 5)
  store %struct.Memory* %call1_420cc0, %struct.Memory** %MEMORY

  %loadMem2_420cc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_420cc0 = load i64, i64* %3
  %call2_420cc0 = call %struct.Memory* @sub_401540.fgets_plt(%struct.State* %0, i64  %loadPC_420cc0, %struct.Memory* %loadMem2_420cc0)
  store %struct.Memory* %call2_420cc0, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 420cc5	 Bytes: 4
  %loadMem_420cc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420cc5 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420cc5)
  store %struct.Memory* %call_420cc5, %struct.Memory** %MEMORY

  ; Code: je .L_421743	 RIP: 420cc9	 Bytes: 6
  %loadMem_420cc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420cc9 = call %struct.Memory* @routine_je_.L_421743(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420cc9, i8* %BRANCH_TAKEN, i64 2682, i64 6, i64 6)
  store %struct.Memory* %call_420cc9, %struct.Memory** %MEMORY

  %loadBr_420cc9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420cc9 = icmp eq i8 %loadBr_420cc9, 1
  br i1 %cmpBr_420cc9, label %block_.L_421743, label %block_420ccf

block_420ccf:
  ; Code: movq $0x45a1f5, %rsi	 RIP: 420ccf	 Bytes: 10
  %loadMem_420ccf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420ccf = call %struct.Memory* @routine_movq__0x45a1f5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420ccf)
  store %struct.Memory* %call_420ccf, %struct.Memory** %MEMORY

  ; Code: leaq -0x230(%rbp), %rdi	 RIP: 420cd9	 Bytes: 7
  %loadMem_420cd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420cd9 = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420cd9)
  store %struct.Memory* %call_420cd9, %struct.Memory** %MEMORY

  ; Code: callq .strtok_plt	 RIP: 420ce0	 Bytes: 5
  %loadMem1_420ce0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_420ce0 = call %struct.Memory* @routine_callq_.strtok_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_420ce0, i64 -128640, i64 5, i64 5)
  store %struct.Memory* %call1_420ce0, %struct.Memory** %MEMORY

  %loadMem2_420ce0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_420ce0 = load i64, i64* %3
  %call2_420ce0 = call %struct.Memory* @sub_401660.strtok_plt(%struct.State* %0, i64  %loadPC_420ce0, %struct.Memory* %loadMem2_420ce0)
  store %struct.Memory* %call2_420ce0, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x238(%rbp)	 RIP: 420ce5	 Bytes: 7
  %loadMem_420ce5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420ce5 = call %struct.Memory* @routine_movq__rax__MINUS0x238__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420ce5)
  store %struct.Memory* %call_420ce5, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 420cec	 Bytes: 4
  %loadMem_420cec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420cec = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420cec)
  store %struct.Memory* %call_420cec, %struct.Memory** %MEMORY

  ; Code: jne .L_420d03	 RIP: 420cf0	 Bytes: 6
  %loadMem_420cf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420cf0 = call %struct.Memory* @routine_jne_.L_420d03(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420cf0, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_420cf0, %struct.Memory** %MEMORY

  %loadBr_420cf0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420cf0 = icmp eq i8 %loadBr_420cf0, 1
  br i1 %cmpBr_420cf0, label %block_.L_420d03, label %block_420cf6

block_420cf6:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 420cf6	 Bytes: 8
  %loadMem_420cf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420cf6 = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420cf6)
  store %struct.Memory* %call_420cf6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_421764	 RIP: 420cfe	 Bytes: 5
  %loadMem_420cfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420cfe = call %struct.Memory* @routine_jmpq_.L_421764(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420cfe, i64 2662, i64 5)
  store %struct.Memory* %call_420cfe, %struct.Memory** %MEMORY

  br label %block_.L_421764

  ; Code: .L_420d03:	 RIP: 420d03	 Bytes: 0
block_.L_420d03:

  ; Code: xorl %eax, %eax	 RIP: 420d03	 Bytes: 2
  %loadMem_420d03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420d03 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420d03)
  store %struct.Memory* %call_420d03, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 420d05	 Bytes: 2
  %loadMem_420d05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420d05 = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420d05)
  store %struct.Memory* %call_420d05, %struct.Memory** %MEMORY

  ; Code: movq $0x45a1f5, %rsi	 RIP: 420d07	 Bytes: 10
  %loadMem_420d07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420d07 = call %struct.Memory* @routine_movq__0x45a1f5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420d07)
  store %struct.Memory* %call_420d07, %struct.Memory** %MEMORY

  ; Code: callq .strtok_plt	 RIP: 420d11	 Bytes: 5
  %loadMem1_420d11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_420d11 = call %struct.Memory* @routine_callq_.strtok_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_420d11, i64 -128689, i64 5, i64 5)
  store %struct.Memory* %call1_420d11, %struct.Memory** %MEMORY

  %loadMem2_420d11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_420d11 = load i64, i64* %3
  %call2_420d11 = call %struct.Memory* @sub_401660.strtok_plt(%struct.State* %0, i64  %loadPC_420d11, %struct.Memory* %loadMem2_420d11)
  store %struct.Memory* %call2_420d11, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x240(%rbp)	 RIP: 420d16	 Bytes: 7
  %loadMem_420d16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420d16 = call %struct.Memory* @routine_movq__rax__MINUS0x240__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420d16)
  store %struct.Memory* %call_420d16, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 420d1d	 Bytes: 4
  %loadMem_420d1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420d1d = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420d1d)
  store %struct.Memory* %call_420d1d, %struct.Memory** %MEMORY

  ; Code: jne .L_420d34	 RIP: 420d21	 Bytes: 6
  %loadMem_420d21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420d21 = call %struct.Memory* @routine_jne_.L_420d34(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420d21, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_420d21, %struct.Memory** %MEMORY

  %loadBr_420d21 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420d21 = icmp eq i8 %loadBr_420d21, 1
  br i1 %cmpBr_420d21, label %block_.L_420d34, label %block_420d27

block_420d27:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 420d27	 Bytes: 8
  %loadMem_420d27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420d27 = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420d27)
  store %struct.Memory* %call_420d27, %struct.Memory** %MEMORY

  ; Code: jmpq .L_421764	 RIP: 420d2f	 Bytes: 5
  %loadMem_420d2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420d2f = call %struct.Memory* @routine_jmpq_.L_421764(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420d2f, i64 2613, i64 5)
  store %struct.Memory* %call_420d2f, %struct.Memory** %MEMORY

  br label %block_.L_421764

  ; Code: .L_420d34:	 RIP: 420d34	 Bytes: 0
block_.L_420d34:

  ; Code: callq .__ctype_b_loc_plt	 RIP: 420d34	 Bytes: 5
  %loadMem1_420d34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_420d34 = call %struct.Memory* @routine_callq_.__ctype_b_loc_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_420d34, i64 -128548, i64 5, i64 5)
  store %struct.Memory* %call1_420d34, %struct.Memory** %MEMORY

  %loadMem2_420d34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_420d34 = load i64, i64* %3
  %call2_420d34 = call %struct.Memory* @sub_401710.__ctype_b_loc_plt(%struct.State* %0, i64  %loadPC_420d34, %struct.Memory* %loadMem2_420d34)
  store %struct.Memory* %call2_420d34, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 420d39	 Bytes: 3
  %loadMem_420d39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420d39 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420d39)
  store %struct.Memory* %call_420d39, %struct.Memory** %MEMORY

  ; Code: movq -0x240(%rbp), %rcx	 RIP: 420d3c	 Bytes: 7
  %loadMem_420d3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420d3c = call %struct.Memory* @routine_movq_MINUS0x240__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420d3c)
  store %struct.Memory* %call_420d3c, %struct.Memory** %MEMORY

  ; Code: movsbl (%rcx), %edx	 RIP: 420d43	 Bytes: 3
  %loadMem_420d43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420d43 = call %struct.Memory* @routine_movsbl___rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420d43)
  store %struct.Memory* %call_420d43, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 420d46	 Bytes: 3
  %loadMem_420d46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420d46 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420d46)
  store %struct.Memory* %call_420d46, %struct.Memory** %MEMORY

  ; Code: movzwl (%rax,%rcx,2), %edx	 RIP: 420d49	 Bytes: 4
  %loadMem_420d49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420d49 = call %struct.Memory* @routine_movzwl___rax__rcx_2____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420d49)
  store %struct.Memory* %call_420d49, %struct.Memory** %MEMORY

  ; Code: andl $0x800, %edx	 RIP: 420d4d	 Bytes: 6
  %loadMem_420d4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420d4d = call %struct.Memory* @routine_andl__0x800___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420d4d)
  store %struct.Memory* %call_420d4d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 420d53	 Bytes: 3
  %loadMem_420d53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420d53 = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420d53)
  store %struct.Memory* %call_420d53, %struct.Memory** %MEMORY

  ; Code: jne .L_420d69	 RIP: 420d56	 Bytes: 6
  %loadMem_420d56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420d56 = call %struct.Memory* @routine_jne_.L_420d69(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420d56, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_420d56, %struct.Memory** %MEMORY

  %loadBr_420d56 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420d56 = icmp eq i8 %loadBr_420d56, 1
  br i1 %cmpBr_420d56, label %block_.L_420d69, label %block_420d5c

block_420d5c:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 420d5c	 Bytes: 8
  %loadMem_420d5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420d5c = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420d5c)
  store %struct.Memory* %call_420d5c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_421764	 RIP: 420d64	 Bytes: 5
  %loadMem_420d64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420d64 = call %struct.Memory* @routine_jmpq_.L_421764(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420d64, i64 2560, i64 5)
  store %struct.Memory* %call_420d64, %struct.Memory** %MEMORY

  br label %block_.L_421764

  ; Code: .L_420d69:	 RIP: 420d69	 Bytes: 0
block_.L_420d69:

  ; Code: movq -0x240(%rbp), %rdi	 RIP: 420d69	 Bytes: 7
  %loadMem_420d69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420d69 = call %struct.Memory* @routine_movq_MINUS0x240__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420d69)
  store %struct.Memory* %call_420d69, %struct.Memory** %MEMORY

  ; Code: callq .atoi_plt	 RIP: 420d70	 Bytes: 5
  %loadMem1_420d70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_420d70 = call %struct.Memory* @routine_callq_.atoi_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_420d70, i64 -128720, i64 5, i64 5)
  store %struct.Memory* %call1_420d70, %struct.Memory** %MEMORY

  %loadMem2_420d70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_420d70 = load i64, i64* %3
  %call2_420d70 = call %struct.Memory* @ext_atoi(%struct.State* %0, i64  %loadPC_420d70, %struct.Memory* %loadMem2_420d70)
  store %struct.Memory* %call2_420d70, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x244(%rbp)	 RIP: 420d75	 Bytes: 6
  %loadMem_420d75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420d75 = call %struct.Memory* @routine_movl__eax__MINUS0x244__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420d75)
  store %struct.Memory* %call_420d75, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x244(%rbp)	 RIP: 420d7b	 Bytes: 7
  %loadMem_420d7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420d7b = call %struct.Memory* @routine_cmpl__0x0__MINUS0x244__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420d7b)
  store %struct.Memory* %call_420d7b, %struct.Memory** %MEMORY

  ; Code: jl .L_420d9f	 RIP: 420d82	 Bytes: 6
  %loadMem_420d82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420d82 = call %struct.Memory* @routine_jl_.L_420d9f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420d82, i8* %BRANCH_TAKEN, i64 29, i64 6, i64 6)
  store %struct.Memory* %call_420d82, %struct.Memory** %MEMORY

  %loadBr_420d82 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420d82 = icmp eq i8 %loadBr_420d82, 1
  br i1 %cmpBr_420d82, label %block_.L_420d9f, label %block_420d88

block_420d88:
  ; Code: movl -0x244(%rbp), %eax	 RIP: 420d88	 Bytes: 6
  %loadMem_420d88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420d88 = call %struct.Memory* @routine_movl_MINUS0x244__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420d88)
  store %struct.Memory* %call_420d88, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 420d8e	 Bytes: 4
  %loadMem_420d8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420d8e = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420d8e)
  store %struct.Memory* %call_420d8e, %struct.Memory** %MEMORY

  ; Code: movl (%rcx), %edx	 RIP: 420d92	 Bytes: 2
  %loadMem_420d92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420d92 = call %struct.Memory* @routine_movl___rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420d92)
  store %struct.Memory* %call_420d92, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 420d94	 Bytes: 3
  %loadMem_420d94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420d94 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420d94)
  store %struct.Memory* %call_420d94, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %eax	 RIP: 420d97	 Bytes: 2
  %loadMem_420d97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420d97 = call %struct.Memory* @routine_cmpl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420d97)
  store %struct.Memory* %call_420d97, %struct.Memory** %MEMORY

  ; Code: jle .L_420dac	 RIP: 420d99	 Bytes: 6
  %loadMem_420d99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420d99 = call %struct.Memory* @routine_jle_.L_420dac(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420d99, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_420d99, %struct.Memory** %MEMORY

  %loadBr_420d99 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420d99 = icmp eq i8 %loadBr_420d99, 1
  br i1 %cmpBr_420d99, label %block_.L_420dac, label %block_.L_420d9f

  ; Code: .L_420d9f:	 RIP: 420d9f	 Bytes: 0
block_.L_420d9f:

  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 420d9f	 Bytes: 8
  %loadMem_420d9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420d9f = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420d9f)
  store %struct.Memory* %call_420d9f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_421764	 RIP: 420da7	 Bytes: 5
  %loadMem_420da7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420da7 = call %struct.Memory* @routine_jmpq_.L_421764(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420da7, i64 2493, i64 5)
  store %struct.Memory* %call_420da7, %struct.Memory** %MEMORY

  br label %block_.L_421764

  ; Code: .L_420dac:	 RIP: 420dac	 Bytes: 0
block_.L_420dac:

  ; Code: movq -0x238(%rbp), %rdi	 RIP: 420dac	 Bytes: 7
  %loadMem_420dac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420dac = call %struct.Memory* @routine_movq_MINUS0x238__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420dac)
  store %struct.Memory* %call_420dac, %struct.Memory** %MEMORY

  ; Code: movl $0x457918, %eax	 RIP: 420db3	 Bytes: 5
  %loadMem_420db3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420db3 = call %struct.Memory* @routine_movl__0x457918___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420db3)
  store %struct.Memory* %call_420db3, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 420db8	 Bytes: 2
  %loadMem_420db8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420db8 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420db8)
  store %struct.Memory* %call_420db8, %struct.Memory** %MEMORY

  ; Code: callq .strcmp_plt	 RIP: 420dba	 Bytes: 5
  %loadMem1_420dba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_420dba = call %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_420dba, i64 -129114, i64 5, i64 5)
  store %struct.Memory* %call1_420dba, %struct.Memory** %MEMORY

  %loadMem2_420dba = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_420dba = load i64, i64* %3
  %call2_420dba = call %struct.Memory* @ext_strcmp(%struct.State* %0, i64  %loadPC_420dba, %struct.Memory* %loadMem2_420dba)
  store %struct.Memory* %call2_420dba, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 420dbf	 Bytes: 3
  %loadMem_420dbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420dbf = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420dbf)
  store %struct.Memory* %call_420dbf, %struct.Memory** %MEMORY

  ; Code: jne .L_421200	 RIP: 420dc2	 Bytes: 6
  %loadMem_420dc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420dc2 = call %struct.Memory* @routine_jne_.L_421200(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420dc2, i8* %BRANCH_TAKEN, i64 1086, i64 6, i64 6)
  store %struct.Memory* %call_420dc2, %struct.Memory** %MEMORY

  %loadBr_420dc2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420dc2 = icmp eq i8 %loadBr_420dc2, 1
  br i1 %cmpBr_420dc2, label %block_.L_421200, label %block_420dc8

block_420dc8:
  ; Code: cmpl $0x6, -0x14(%rbp)	 RIP: 420dc8	 Bytes: 4
  %loadMem_420dc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420dc8 = call %struct.Memory* @routine_cmpl__0x6__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420dc8)
  store %struct.Memory* %call_420dc8, %struct.Memory** %MEMORY

  ; Code: jne .L_420f21	 RIP: 420dcc	 Bytes: 6
  %loadMem_420dcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420dcc = call %struct.Memory* @routine_jne_.L_420f21(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420dcc, i8* %BRANCH_TAKEN, i64 341, i64 6, i64 6)
  store %struct.Memory* %call_420dcc, %struct.Memory** %MEMORY

  %loadBr_420dcc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420dcc = icmp eq i8 %loadBr_420dcc, 1
  br i1 %cmpBr_420dcc, label %block_.L_420f21, label %block_420dd2

block_420dd2:
  ; Code: xorl %eax, %eax	 RIP: 420dd2	 Bytes: 2
  %loadMem_420dd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420dd2 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420dd2)
  store %struct.Memory* %call_420dd2, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 420dd4	 Bytes: 2
  %loadMem_420dd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420dd4 = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420dd4)
  store %struct.Memory* %call_420dd4, %struct.Memory** %MEMORY

  ; Code: movq $0x45a1f7, %rsi	 RIP: 420dd6	 Bytes: 10
  %loadMem_420dd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420dd6 = call %struct.Memory* @routine_movq__0x45a1f7___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420dd6)
  store %struct.Memory* %call_420dd6, %struct.Memory** %MEMORY

  ; Code: callq .strtok_plt	 RIP: 420de0	 Bytes: 5
  %loadMem1_420de0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_420de0 = call %struct.Memory* @routine_callq_.strtok_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_420de0, i64 -128896, i64 5, i64 5)
  store %struct.Memory* %call1_420de0, %struct.Memory** %MEMORY

  %loadMem2_420de0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_420de0 = load i64, i64* %3
  %call2_420de0 = call %struct.Memory* @sub_401660.strtok_plt(%struct.State* %0, i64  %loadPC_420de0, %struct.Memory* %loadMem2_420de0)
  store %struct.Memory* %call2_420de0, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x240(%rbp)	 RIP: 420de5	 Bytes: 7
  %loadMem_420de5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420de5 = call %struct.Memory* @routine_movq__rax__MINUS0x240__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420de5)
  store %struct.Memory* %call_420de5, %struct.Memory** %MEMORY

  ; Code: .L_420dec:	 RIP: 420dec	 Bytes: 0
  br label %block_.L_420dec
block_.L_420dec:

  ; Code: xorl %eax, %eax	 RIP: 420dec	 Bytes: 2
  %loadMem_420dec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420dec = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420dec)
  store %struct.Memory* %call_420dec, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 420dee	 Bytes: 2
  %loadMem_420dee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420dee = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420dee)
  store %struct.Memory* %call_420dee, %struct.Memory** %MEMORY

  ; Code: movq -0x240(%rbp), %rdx	 RIP: 420df0	 Bytes: 7
  %loadMem_420df0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420df0 = call %struct.Memory* @routine_movq_MINUS0x240__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420df0)
  store %struct.Memory* %call_420df0, %struct.Memory** %MEMORY

  ; Code: movsbl (%rdx), %eax	 RIP: 420df7	 Bytes: 3
  %loadMem_420df7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420df7 = call %struct.Memory* @routine_movsbl___rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420df7)
  store %struct.Memory* %call_420df7, %struct.Memory** %MEMORY

  ; Code: cmpl $0x28, %eax	 RIP: 420dfa	 Bytes: 3
  %loadMem_420dfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420dfa = call %struct.Memory* @routine_cmpl__0x28___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420dfa)
  store %struct.Memory* %call_420dfa, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x259(%rbp)	 RIP: 420dfd	 Bytes: 6
  %loadMem_420dfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420dfd = call %struct.Memory* @routine_movb__cl__MINUS0x259__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420dfd)
  store %struct.Memory* %call_420dfd, %struct.Memory** %MEMORY

  ; Code: je .L_420e1f	 RIP: 420e03	 Bytes: 6
  %loadMem_420e03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420e03 = call %struct.Memory* @routine_je_.L_420e1f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420e03, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_420e03, %struct.Memory** %MEMORY

  %loadBr_420e03 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420e03 = icmp eq i8 %loadBr_420e03, 1
  br i1 %cmpBr_420e03, label %block_.L_420e1f, label %block_420e09

block_420e09:
  ; Code: movq -0x240(%rbp), %rax	 RIP: 420e09	 Bytes: 7
  %loadMem_420e09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420e09 = call %struct.Memory* @routine_movq_MINUS0x240__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420e09)
  store %struct.Memory* %call_420e09, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax), %ecx	 RIP: 420e10	 Bytes: 3
  %loadMem_420e10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420e10 = call %struct.Memory* @routine_movsbl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420e10)
  store %struct.Memory* %call_420e10, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 420e13	 Bytes: 3
  %loadMem_420e13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420e13 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420e13)
  store %struct.Memory* %call_420e13, %struct.Memory** %MEMORY

  ; Code: setne %dl	 RIP: 420e16	 Bytes: 3
  %loadMem_420e16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420e16 = call %struct.Memory* @routine_setne__dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420e16)
  store %struct.Memory* %call_420e16, %struct.Memory** %MEMORY

  ; Code: movb %dl, -0x259(%rbp)	 RIP: 420e19	 Bytes: 6
  %loadMem_420e19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420e19 = call %struct.Memory* @routine_movb__dl__MINUS0x259__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420e19)
  store %struct.Memory* %call_420e19, %struct.Memory** %MEMORY

  ; Code: .L_420e1f:	 RIP: 420e1f	 Bytes: 0
  br label %block_.L_420e1f
block_.L_420e1f:

  ; Code: movb -0x259(%rbp), %al	 RIP: 420e1f	 Bytes: 6
  %loadMem_420e1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420e1f = call %struct.Memory* @routine_movb_MINUS0x259__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420e1f)
  store %struct.Memory* %call_420e1f, %struct.Memory** %MEMORY

  ; Code: testb $0x1, %al	 RIP: 420e25	 Bytes: 2
  %loadMem_420e25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420e25 = call %struct.Memory* @routine_testb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420e25)
  store %struct.Memory* %call_420e25, %struct.Memory** %MEMORY

  ; Code: jne .L_420e32	 RIP: 420e27	 Bytes: 6
  %loadMem_420e27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420e27 = call %struct.Memory* @routine_jne_.L_420e32(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420e27, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_420e27, %struct.Memory** %MEMORY

  %loadBr_420e27 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420e27 = icmp eq i8 %loadBr_420e27, 1
  br i1 %cmpBr_420e27, label %block_.L_420e32, label %block_420e2d

block_420e2d:
  ; Code: jmpq .L_420e49	 RIP: 420e2d	 Bytes: 5
  %loadMem_420e2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420e2d = call %struct.Memory* @routine_jmpq_.L_420e49(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420e2d, i64 28, i64 5)
  store %struct.Memory* %call_420e2d, %struct.Memory** %MEMORY

  br label %block_.L_420e49

  ; Code: .L_420e32:	 RIP: 420e32	 Bytes: 0
block_.L_420e32:

  ; Code: movq -0x240(%rbp), %rax	 RIP: 420e32	 Bytes: 7
  %loadMem_420e32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420e32 = call %struct.Memory* @routine_movq_MINUS0x240__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420e32)
  store %struct.Memory* %call_420e32, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rax	 RIP: 420e39	 Bytes: 4
  %loadMem_420e39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420e39 = call %struct.Memory* @routine_addq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420e39)
  store %struct.Memory* %call_420e39, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x240(%rbp)	 RIP: 420e3d	 Bytes: 7
  %loadMem_420e3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420e3d = call %struct.Memory* @routine_movq__rax__MINUS0x240__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420e3d)
  store %struct.Memory* %call_420e3d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_420dec	 RIP: 420e44	 Bytes: 5
  %loadMem_420e44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420e44 = call %struct.Memory* @routine_jmpq_.L_420dec(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420e44, i64 -88, i64 5)
  store %struct.Memory* %call_420e44, %struct.Memory** %MEMORY

  br label %block_.L_420dec

  ; Code: .L_420e49:	 RIP: 420e49	 Bytes: 0
block_.L_420e49:

  ; Code: movq -0x240(%rbp), %rax	 RIP: 420e49	 Bytes: 7
  %loadMem_420e49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420e49 = call %struct.Memory* @routine_movq_MINUS0x240__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420e49)
  store %struct.Memory* %call_420e49, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax), %ecx	 RIP: 420e50	 Bytes: 3
  %loadMem_420e50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420e50 = call %struct.Memory* @routine_movsbl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420e50)
  store %struct.Memory* %call_420e50, %struct.Memory** %MEMORY

  ; Code: cmpl $0x28, %ecx	 RIP: 420e53	 Bytes: 3
  %loadMem_420e53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420e53 = call %struct.Memory* @routine_cmpl__0x28___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420e53)
  store %struct.Memory* %call_420e53, %struct.Memory** %MEMORY

  ; Code: je .L_420e69	 RIP: 420e56	 Bytes: 6
  %loadMem_420e56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420e56 = call %struct.Memory* @routine_je_.L_420e69(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420e56, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_420e56, %struct.Memory** %MEMORY

  %loadBr_420e56 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420e56 = icmp eq i8 %loadBr_420e56, 1
  br i1 %cmpBr_420e56, label %block_.L_420e69, label %block_420e5c

block_420e5c:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 420e5c	 Bytes: 8
  %loadMem_420e5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420e5c = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420e5c)
  store %struct.Memory* %call_420e5c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_421764	 RIP: 420e64	 Bytes: 5
  %loadMem_420e64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420e64 = call %struct.Memory* @routine_jmpq_.L_421764(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420e64, i64 2304, i64 5)
  store %struct.Memory* %call_420e64, %struct.Memory** %MEMORY

  br label %block_.L_421764

  ; Code: .L_420e69:	 RIP: 420e69	 Bytes: 0
block_.L_420e69:

  ; Code: movq -0x240(%rbp), %rax	 RIP: 420e69	 Bytes: 7
  %loadMem_420e69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420e69 = call %struct.Memory* @routine_movq_MINUS0x240__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420e69)
  store %struct.Memory* %call_420e69, %struct.Memory** %MEMORY

  ; Code: movb 0x1(%rax), %cl	 RIP: 420e70	 Bytes: 3
  %loadMem_420e70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420e70 = call %struct.Memory* @routine_movb_0x1__rax____cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420e70)
  store %struct.Memory* %call_420e70, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 420e73	 Bytes: 4
  %loadMem_420e73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420e73 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420e73)
  store %struct.Memory* %call_420e73, %struct.Memory** %MEMORY

  ; Code: movq 0x78(%rax), %rax	 RIP: 420e77	 Bytes: 4
  %loadMem_420e77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420e77 = call %struct.Memory* @routine_movq_0x78__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420e77)
  store %struct.Memory* %call_420e77, %struct.Memory** %MEMORY

  ; Code: movslq -0x244(%rbp), %rdx	 RIP: 420e7b	 Bytes: 7
  %loadMem_420e7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420e7b = call %struct.Memory* @routine_movslq_MINUS0x244__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420e7b)
  store %struct.Memory* %call_420e7b, %struct.Memory** %MEMORY

  ; Code: movb %cl, (%rax,%rdx,1)	 RIP: 420e82	 Bytes: 3
  %loadMem_420e82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420e82 = call %struct.Memory* @routine_movb__cl____rax__rdx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420e82)
  store %struct.Memory* %call_420e82, %struct.Memory** %MEMORY

  ; Code: .L_420e85:	 RIP: 420e85	 Bytes: 0
  br label %block_.L_420e85
block_.L_420e85:

  ; Code: xorl %eax, %eax	 RIP: 420e85	 Bytes: 2
  %loadMem_420e85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420e85 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420e85)
  store %struct.Memory* %call_420e85, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 420e87	 Bytes: 2
  %loadMem_420e87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420e87 = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420e87)
  store %struct.Memory* %call_420e87, %struct.Memory** %MEMORY

  ; Code: movq -0x240(%rbp), %rdx	 RIP: 420e89	 Bytes: 7
  %loadMem_420e89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420e89 = call %struct.Memory* @routine_movq_MINUS0x240__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420e89)
  store %struct.Memory* %call_420e89, %struct.Memory** %MEMORY

  ; Code: movsbl (%rdx), %eax	 RIP: 420e90	 Bytes: 3
  %loadMem_420e90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420e90 = call %struct.Memory* @routine_movsbl___rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420e90)
  store %struct.Memory* %call_420e90, %struct.Memory** %MEMORY

  ; Code: cmpl $0x28, %eax	 RIP: 420e93	 Bytes: 3
  %loadMem_420e93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420e93 = call %struct.Memory* @routine_cmpl__0x28___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420e93)
  store %struct.Memory* %call_420e93, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x25a(%rbp)	 RIP: 420e96	 Bytes: 6
  %loadMem_420e96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420e96 = call %struct.Memory* @routine_movb__cl__MINUS0x25a__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420e96)
  store %struct.Memory* %call_420e96, %struct.Memory** %MEMORY

  ; Code: je .L_420eb8	 RIP: 420e9c	 Bytes: 6
  %loadMem_420e9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420e9c = call %struct.Memory* @routine_je_.L_420eb8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420e9c, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_420e9c, %struct.Memory** %MEMORY

  %loadBr_420e9c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420e9c = icmp eq i8 %loadBr_420e9c, 1
  br i1 %cmpBr_420e9c, label %block_.L_420eb8, label %block_420ea2

block_420ea2:
  ; Code: movq -0x240(%rbp), %rax	 RIP: 420ea2	 Bytes: 7
  %loadMem_420ea2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420ea2 = call %struct.Memory* @routine_movq_MINUS0x240__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420ea2)
  store %struct.Memory* %call_420ea2, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax), %ecx	 RIP: 420ea9	 Bytes: 3
  %loadMem_420ea9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420ea9 = call %struct.Memory* @routine_movsbl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420ea9)
  store %struct.Memory* %call_420ea9, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 420eac	 Bytes: 3
  %loadMem_420eac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420eac = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420eac)
  store %struct.Memory* %call_420eac, %struct.Memory** %MEMORY

  ; Code: setne %dl	 RIP: 420eaf	 Bytes: 3
  %loadMem_420eaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420eaf = call %struct.Memory* @routine_setne__dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420eaf)
  store %struct.Memory* %call_420eaf, %struct.Memory** %MEMORY

  ; Code: movb %dl, -0x25a(%rbp)	 RIP: 420eb2	 Bytes: 6
  %loadMem_420eb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420eb2 = call %struct.Memory* @routine_movb__dl__MINUS0x25a__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420eb2)
  store %struct.Memory* %call_420eb2, %struct.Memory** %MEMORY

  ; Code: .L_420eb8:	 RIP: 420eb8	 Bytes: 0
  br label %block_.L_420eb8
block_.L_420eb8:

  ; Code: movb -0x25a(%rbp), %al	 RIP: 420eb8	 Bytes: 6
  %loadMem_420eb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420eb8 = call %struct.Memory* @routine_movb_MINUS0x25a__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420eb8)
  store %struct.Memory* %call_420eb8, %struct.Memory** %MEMORY

  ; Code: testb $0x1, %al	 RIP: 420ebe	 Bytes: 2
  %loadMem_420ebe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420ebe = call %struct.Memory* @routine_testb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420ebe)
  store %struct.Memory* %call_420ebe, %struct.Memory** %MEMORY

  ; Code: jne .L_420ecb	 RIP: 420ec0	 Bytes: 6
  %loadMem_420ec0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420ec0 = call %struct.Memory* @routine_jne_.L_420ecb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420ec0, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_420ec0, %struct.Memory** %MEMORY

  %loadBr_420ec0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420ec0 = icmp eq i8 %loadBr_420ec0, 1
  br i1 %cmpBr_420ec0, label %block_.L_420ecb, label %block_420ec6

block_420ec6:
  ; Code: jmpq .L_420ee2	 RIP: 420ec6	 Bytes: 5
  %loadMem_420ec6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420ec6 = call %struct.Memory* @routine_jmpq_.L_420ee2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420ec6, i64 28, i64 5)
  store %struct.Memory* %call_420ec6, %struct.Memory** %MEMORY

  br label %block_.L_420ee2

  ; Code: .L_420ecb:	 RIP: 420ecb	 Bytes: 0
block_.L_420ecb:

  ; Code: movq -0x240(%rbp), %rax	 RIP: 420ecb	 Bytes: 7
  %loadMem_420ecb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420ecb = call %struct.Memory* @routine_movq_MINUS0x240__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420ecb)
  store %struct.Memory* %call_420ecb, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rax	 RIP: 420ed2	 Bytes: 4
  %loadMem_420ed2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420ed2 = call %struct.Memory* @routine_addq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420ed2)
  store %struct.Memory* %call_420ed2, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x240(%rbp)	 RIP: 420ed6	 Bytes: 7
  %loadMem_420ed6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420ed6 = call %struct.Memory* @routine_movq__rax__MINUS0x240__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420ed6)
  store %struct.Memory* %call_420ed6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_420e85	 RIP: 420edd	 Bytes: 5
  %loadMem_420edd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420edd = call %struct.Memory* @routine_jmpq_.L_420e85(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420edd, i64 -88, i64 5)
  store %struct.Memory* %call_420edd, %struct.Memory** %MEMORY

  br label %block_.L_420e85

  ; Code: .L_420ee2:	 RIP: 420ee2	 Bytes: 0
block_.L_420ee2:

  ; Code: movq -0x240(%rbp), %rax	 RIP: 420ee2	 Bytes: 7
  %loadMem_420ee2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420ee2 = call %struct.Memory* @routine_movq_MINUS0x240__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420ee2)
  store %struct.Memory* %call_420ee2, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax), %ecx	 RIP: 420ee9	 Bytes: 3
  %loadMem_420ee9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420ee9 = call %struct.Memory* @routine_movsbl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420ee9)
  store %struct.Memory* %call_420ee9, %struct.Memory** %MEMORY

  ; Code: cmpl $0x28, %ecx	 RIP: 420eec	 Bytes: 3
  %loadMem_420eec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420eec = call %struct.Memory* @routine_cmpl__0x28___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420eec)
  store %struct.Memory* %call_420eec, %struct.Memory** %MEMORY

  ; Code: je .L_420f02	 RIP: 420eef	 Bytes: 6
  %loadMem_420eef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420eef = call %struct.Memory* @routine_je_.L_420f02(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420eef, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_420eef, %struct.Memory** %MEMORY

  %loadBr_420eef = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420eef = icmp eq i8 %loadBr_420eef, 1
  br i1 %cmpBr_420eef, label %block_.L_420f02, label %block_420ef5

block_420ef5:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 420ef5	 Bytes: 8
  %loadMem_420ef5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420ef5 = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420ef5)
  store %struct.Memory* %call_420ef5, %struct.Memory** %MEMORY

  ; Code: jmpq .L_421764	 RIP: 420efd	 Bytes: 5
  %loadMem_420efd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420efd = call %struct.Memory* @routine_jmpq_.L_421764(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420efd, i64 2151, i64 5)
  store %struct.Memory* %call_420efd, %struct.Memory** %MEMORY

  br label %block_.L_421764

  ; Code: .L_420f02:	 RIP: 420f02	 Bytes: 0
block_.L_420f02:

  ; Code: movq -0x240(%rbp), %rax	 RIP: 420f02	 Bytes: 7
  %loadMem_420f02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420f02 = call %struct.Memory* @routine_movq_MINUS0x240__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420f02)
  store %struct.Memory* %call_420f02, %struct.Memory** %MEMORY

  ; Code: movb 0x1(%rax), %cl	 RIP: 420f09	 Bytes: 3
  %loadMem_420f09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420f09 = call %struct.Memory* @routine_movb_0x1__rax____cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420f09)
  store %struct.Memory* %call_420f09, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 420f0c	 Bytes: 4
  %loadMem_420f0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420f0c = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420f0c)
  store %struct.Memory* %call_420f0c, %struct.Memory** %MEMORY

  ; Code: movq 0x80(%rax), %rax	 RIP: 420f10	 Bytes: 7
  %loadMem_420f10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420f10 = call %struct.Memory* @routine_movq_0x80__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420f10)
  store %struct.Memory* %call_420f10, %struct.Memory** %MEMORY

  ; Code: movslq -0x244(%rbp), %rdx	 RIP: 420f17	 Bytes: 7
  %loadMem_420f17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420f17 = call %struct.Memory* @routine_movslq_MINUS0x244__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420f17)
  store %struct.Memory* %call_420f17, %struct.Memory** %MEMORY

  ; Code: movb %cl, (%rax,%rdx,1)	 RIP: 420f1e	 Bytes: 3
  %loadMem_420f1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420f1e = call %struct.Memory* @routine_movb__cl____rax__rdx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420f1e)
  store %struct.Memory* %call_420f1e, %struct.Memory** %MEMORY

  ; Code: .L_420f21:	 RIP: 420f21	 Bytes: 0
  br label %block_.L_420f21
block_.L_420f21:

  ; Code: movl $0x200, %esi	 RIP: 420f21	 Bytes: 5
  %loadMem_420f21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420f21 = call %struct.Memory* @routine_movl__0x200___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420f21)
  store %struct.Memory* %call_420f21, %struct.Memory** %MEMORY

  ; Code: leaq -0x230(%rbp), %rdi	 RIP: 420f26	 Bytes: 7
  %loadMem_420f26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420f26 = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420f26)
  store %struct.Memory* %call_420f26, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 420f2d	 Bytes: 4
  %loadMem_420f2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420f2d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420f2d)
  store %struct.Memory* %call_420f2d, %struct.Memory** %MEMORY

  ; Code: callq .fgets_plt	 RIP: 420f31	 Bytes: 5
  %loadMem1_420f31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_420f31 = call %struct.Memory* @routine_callq_.fgets_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_420f31, i64 -129521, i64 5, i64 5)
  store %struct.Memory* %call1_420f31, %struct.Memory** %MEMORY

  %loadMem2_420f31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_420f31 = load i64, i64* %3
  %call2_420f31 = call %struct.Memory* @sub_401540.fgets_plt(%struct.State* %0, i64  %loadPC_420f31, %struct.Memory* %loadMem2_420f31)
  store %struct.Memory* %call2_420f31, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 420f36	 Bytes: 4
  %loadMem_420f36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420f36 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420f36)
  store %struct.Memory* %call_420f36, %struct.Memory** %MEMORY

  ; Code: jne .L_420f4d	 RIP: 420f3a	 Bytes: 6
  %loadMem_420f3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420f3a = call %struct.Memory* @routine_jne_.L_420f4d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420f3a, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_420f3a, %struct.Memory** %MEMORY

  %loadBr_420f3a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420f3a = icmp eq i8 %loadBr_420f3a, 1
  br i1 %cmpBr_420f3a, label %block_.L_420f4d, label %block_420f40

block_420f40:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 420f40	 Bytes: 8
  %loadMem_420f40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420f40 = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420f40)
  store %struct.Memory* %call_420f40, %struct.Memory** %MEMORY

  ; Code: jmpq .L_421764	 RIP: 420f48	 Bytes: 5
  %loadMem_420f48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420f48 = call %struct.Memory* @routine_jmpq_.L_421764(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420f48, i64 2076, i64 5)
  store %struct.Memory* %call_420f48, %struct.Memory** %MEMORY

  br label %block_.L_421764

  ; Code: .L_420f4d:	 RIP: 420f4d	 Bytes: 0
block_.L_420f4d:

  ; Code: movq $0x45a1f5, %rsi	 RIP: 420f4d	 Bytes: 10
  %loadMem_420f4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420f4d = call %struct.Memory* @routine_movq__0x45a1f5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420f4d)
  store %struct.Memory* %call_420f4d, %struct.Memory** %MEMORY

  ; Code: leaq -0x230(%rbp), %rdi	 RIP: 420f57	 Bytes: 7
  %loadMem_420f57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420f57 = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420f57)
  store %struct.Memory* %call_420f57, %struct.Memory** %MEMORY

  ; Code: callq .strtok_plt	 RIP: 420f5e	 Bytes: 5
  %loadMem1_420f5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_420f5e = call %struct.Memory* @routine_callq_.strtok_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_420f5e, i64 -129278, i64 5, i64 5)
  store %struct.Memory* %call1_420f5e, %struct.Memory** %MEMORY

  %loadMem2_420f5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_420f5e = load i64, i64* %3
  %call2_420f5e = call %struct.Memory* @sub_401660.strtok_plt(%struct.State* %0, i64  %loadPC_420f5e, %struct.Memory* %loadMem2_420f5e)
  store %struct.Memory* %call2_420f5e, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x240(%rbp)	 RIP: 420f63	 Bytes: 7
  %loadMem_420f63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420f63 = call %struct.Memory* @routine_movq__rax__MINUS0x240__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420f63)
  store %struct.Memory* %call_420f63, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 420f6a	 Bytes: 4
  %loadMem_420f6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420f6a = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420f6a)
  store %struct.Memory* %call_420f6a, %struct.Memory** %MEMORY

  ; Code: jne .L_420f81	 RIP: 420f6e	 Bytes: 6
  %loadMem_420f6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420f6e = call %struct.Memory* @routine_jne_.L_420f81(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420f6e, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_420f6e, %struct.Memory** %MEMORY

  %loadBr_420f6e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420f6e = icmp eq i8 %loadBr_420f6e, 1
  br i1 %cmpBr_420f6e, label %block_.L_420f81, label %block_420f74

block_420f74:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 420f74	 Bytes: 8
  %loadMem_420f74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420f74 = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420f74)
  store %struct.Memory* %call_420f74, %struct.Memory** %MEMORY

  ; Code: jmpq .L_421764	 RIP: 420f7c	 Bytes: 5
  %loadMem_420f7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420f7c = call %struct.Memory* @routine_jmpq_.L_421764(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420f7c, i64 2024, i64 5)
  store %struct.Memory* %call_420f7c, %struct.Memory** %MEMORY

  br label %block_.L_421764

  ; Code: .L_420f81:	 RIP: 420f81	 Bytes: 0
block_.L_420f81:

  ; Code: movq -0x240(%rbp), %rdi	 RIP: 420f81	 Bytes: 7
  %loadMem_420f81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420f81 = call %struct.Memory* @routine_movq_MINUS0x240__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420f81)
  store %struct.Memory* %call_420f81, %struct.Memory** %MEMORY

  ; Code: callq .atof_plt	 RIP: 420f88	 Bytes: 5
  %loadMem1_420f88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_420f88 = call %struct.Memory* @routine_callq_.atof_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_420f88, i64 -129880, i64 5, i64 5)
  store %struct.Memory* %call1_420f88, %struct.Memory** %MEMORY

  %loadMem2_420f88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_420f88 = load i64, i64* %3
  %call2_420f88 = call %struct.Memory* @ext_atof(%struct.State* %0, i64  %loadPC_420f88, %struct.Memory* %loadMem2_420f88)
  store %struct.Memory* %call2_420f88, %struct.Memory** %MEMORY

  ; Code: movl $0x200, %esi	 RIP: 420f8d	 Bytes: 5
  %loadMem_420f8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420f8d = call %struct.Memory* @routine_movl__0x200___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420f8d)
  store %struct.Memory* %call_420f8d, %struct.Memory** %MEMORY

  ; Code: leaq -0x230(%rbp), %rdi	 RIP: 420f92	 Bytes: 7
  %loadMem_420f92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420f92 = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420f92)
  store %struct.Memory* %call_420f92, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 420f99	 Bytes: 4
  %loadMem_420f99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420f99 = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420f99)
  store %struct.Memory* %call_420f99, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 420f9d	 Bytes: 4
  %loadMem_420f9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420f9d = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420f9d)
  store %struct.Memory* %call_420f9d, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 420fa1	 Bytes: 4
  %loadMem_420fa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420fa1 = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420fa1)
  store %struct.Memory* %call_420fa1, %struct.Memory** %MEMORY

  ; Code: movslq -0x244(%rbp), %rcx	 RIP: 420fa5	 Bytes: 7
  %loadMem_420fa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420fa5 = call %struct.Memory* @routine_movslq_MINUS0x244__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420fa5)
  store %struct.Memory* %call_420fa5, %struct.Memory** %MEMORY

  ; Code: imulq $0x5c, %rcx, %rcx	 RIP: 420fac	 Bytes: 4
  %loadMem_420fac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420fac = call %struct.Memory* @routine_imulq__0x5c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420fac)
  store %struct.Memory* %call_420fac, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 420fb0	 Bytes: 3
  %loadMem_420fb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420fb0 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420fb0)
  store %struct.Memory* %call_420fb0, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, (%rax)	 RIP: 420fb3	 Bytes: 4
  %loadMem_420fb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420fb3 = call %struct.Memory* @routine_movss__xmm0____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420fb3)
  store %struct.Memory* %call_420fb3, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 420fb7	 Bytes: 4
  %loadMem_420fb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420fb7 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420fb7)
  store %struct.Memory* %call_420fb7, %struct.Memory** %MEMORY

  ; Code: callq .fgets_plt	 RIP: 420fbb	 Bytes: 5
  %loadMem1_420fbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_420fbb = call %struct.Memory* @routine_callq_.fgets_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_420fbb, i64 -129659, i64 5, i64 5)
  store %struct.Memory* %call1_420fbb, %struct.Memory** %MEMORY

  %loadMem2_420fbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_420fbb = load i64, i64* %3
  %call2_420fbb = call %struct.Memory* @sub_401540.fgets_plt(%struct.State* %0, i64  %loadPC_420fbb, %struct.Memory* %loadMem2_420fbb)
  store %struct.Memory* %call2_420fbb, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 420fc0	 Bytes: 4
  %loadMem_420fc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420fc0 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420fc0)
  store %struct.Memory* %call_420fc0, %struct.Memory** %MEMORY

  ; Code: jne .L_420fd7	 RIP: 420fc4	 Bytes: 6
  %loadMem_420fc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420fc4 = call %struct.Memory* @routine_jne_.L_420fd7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420fc4, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_420fc4, %struct.Memory** %MEMORY

  %loadBr_420fc4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420fc4 = icmp eq i8 %loadBr_420fc4, 1
  br i1 %cmpBr_420fc4, label %block_.L_420fd7, label %block_420fca

block_420fca:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 420fca	 Bytes: 8
  %loadMem_420fca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420fca = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420fca)
  store %struct.Memory* %call_420fca, %struct.Memory** %MEMORY

  ; Code: jmpq .L_421764	 RIP: 420fd2	 Bytes: 5
  %loadMem_420fd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420fd2 = call %struct.Memory* @routine_jmpq_.L_421764(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420fd2, i64 1938, i64 5)
  store %struct.Memory* %call_420fd2, %struct.Memory** %MEMORY

  br label %block_.L_421764

  ; Code: .L_420fd7:	 RIP: 420fd7	 Bytes: 0
block_.L_420fd7:

  ; Code: movq $0x45a1f5, %rsi	 RIP: 420fd7	 Bytes: 10
  %loadMem_420fd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420fd7 = call %struct.Memory* @routine_movq__0x45a1f5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420fd7)
  store %struct.Memory* %call_420fd7, %struct.Memory** %MEMORY

  ; Code: leaq -0x230(%rbp), %rdi	 RIP: 420fe1	 Bytes: 7
  %loadMem_420fe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420fe1 = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420fe1)
  store %struct.Memory* %call_420fe1, %struct.Memory** %MEMORY

  ; Code: callq .strtok_plt	 RIP: 420fe8	 Bytes: 5
  %loadMem1_420fe8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_420fe8 = call %struct.Memory* @routine_callq_.strtok_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_420fe8, i64 -129416, i64 5, i64 5)
  store %struct.Memory* %call1_420fe8, %struct.Memory** %MEMORY

  %loadMem2_420fe8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_420fe8 = load i64, i64* %3
  %call2_420fe8 = call %struct.Memory* @sub_401660.strtok_plt(%struct.State* %0, i64  %loadPC_420fe8, %struct.Memory* %loadMem2_420fe8)
  store %struct.Memory* %call2_420fe8, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x240(%rbp)	 RIP: 420fed	 Bytes: 7
  %loadMem_420fed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420fed = call %struct.Memory* @routine_movq__rax__MINUS0x240__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420fed)
  store %struct.Memory* %call_420fed, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 420ff4	 Bytes: 4
  %loadMem_420ff4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420ff4 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420ff4)
  store %struct.Memory* %call_420ff4, %struct.Memory** %MEMORY

  ; Code: jne .L_42100b	 RIP: 420ff8	 Bytes: 6
  %loadMem_420ff8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420ff8 = call %struct.Memory* @routine_jne_.L_42100b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420ff8, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_420ff8, %struct.Memory** %MEMORY

  %loadBr_420ff8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420ff8 = icmp eq i8 %loadBr_420ff8, 1
  br i1 %cmpBr_420ff8, label %block_.L_42100b, label %block_420ffe

block_420ffe:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 420ffe	 Bytes: 8
  %loadMem_420ffe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420ffe = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420ffe)
  store %struct.Memory* %call_420ffe, %struct.Memory** %MEMORY

  ; Code: jmpq .L_421764	 RIP: 421006	 Bytes: 5
  %loadMem_421006 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421006 = call %struct.Memory* @routine_jmpq_.L_421764(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421006, i64 1886, i64 5)
  store %struct.Memory* %call_421006, %struct.Memory** %MEMORY

  br label %block_.L_421764

  ; Code: .L_42100b:	 RIP: 42100b	 Bytes: 0
block_.L_42100b:

  ; Code: movq -0x240(%rbp), %rdi	 RIP: 42100b	 Bytes: 7
  %loadMem_42100b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42100b = call %struct.Memory* @routine_movq_MINUS0x240__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42100b)
  store %struct.Memory* %call_42100b, %struct.Memory** %MEMORY

  ; Code: callq .atof_plt	 RIP: 421012	 Bytes: 5
  %loadMem1_421012 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421012 = call %struct.Memory* @routine_callq_.atof_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421012, i64 -130018, i64 5, i64 5)
  store %struct.Memory* %call1_421012, %struct.Memory** %MEMORY

  %loadMem2_421012 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421012 = load i64, i64* %3
  %call2_421012 = call %struct.Memory* @ext_atof(%struct.State* %0, i64  %loadPC_421012, %struct.Memory* %loadMem2_421012)
  store %struct.Memory* %call2_421012, %struct.Memory** %MEMORY

  ; Code: movl $0x200, %esi	 RIP: 421017	 Bytes: 5
  %loadMem_421017 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421017 = call %struct.Memory* @routine_movl__0x200___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421017)
  store %struct.Memory* %call_421017, %struct.Memory** %MEMORY

  ; Code: leaq -0x230(%rbp), %rdi	 RIP: 42101c	 Bytes: 7
  %loadMem_42101c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42101c = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42101c)
  store %struct.Memory* %call_42101c, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 421023	 Bytes: 4
  %loadMem_421023 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421023 = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421023)
  store %struct.Memory* %call_421023, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 421027	 Bytes: 4
  %loadMem_421027 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421027 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421027)
  store %struct.Memory* %call_421027, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 42102b	 Bytes: 4
  %loadMem_42102b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42102b = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42102b)
  store %struct.Memory* %call_42102b, %struct.Memory** %MEMORY

  ; Code: movslq -0x244(%rbp), %rcx	 RIP: 42102f	 Bytes: 7
  %loadMem_42102f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42102f = call %struct.Memory* @routine_movslq_MINUS0x244__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42102f)
  store %struct.Memory* %call_42102f, %struct.Memory** %MEMORY

  ; Code: imulq $0x5c, %rcx, %rcx	 RIP: 421036	 Bytes: 4
  %loadMem_421036 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421036 = call %struct.Memory* @routine_imulq__0x5c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421036)
  store %struct.Memory* %call_421036, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 42103a	 Bytes: 3
  %loadMem_42103a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42103a = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42103a)
  store %struct.Memory* %call_42103a, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x8(%rax)	 RIP: 42103d	 Bytes: 5
  %loadMem_42103d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42103d = call %struct.Memory* @routine_movss__xmm0__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42103d)
  store %struct.Memory* %call_42103d, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 421042	 Bytes: 4
  %loadMem_421042 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421042 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421042)
  store %struct.Memory* %call_421042, %struct.Memory** %MEMORY

  ; Code: callq .fgets_plt	 RIP: 421046	 Bytes: 5
  %loadMem1_421046 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421046 = call %struct.Memory* @routine_callq_.fgets_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421046, i64 -129798, i64 5, i64 5)
  store %struct.Memory* %call1_421046, %struct.Memory** %MEMORY

  %loadMem2_421046 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421046 = load i64, i64* %3
  %call2_421046 = call %struct.Memory* @sub_401540.fgets_plt(%struct.State* %0, i64  %loadPC_421046, %struct.Memory* %loadMem2_421046)
  store %struct.Memory* %call2_421046, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 42104b	 Bytes: 4
  %loadMem_42104b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42104b = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42104b)
  store %struct.Memory* %call_42104b, %struct.Memory** %MEMORY

  ; Code: jne .L_421062	 RIP: 42104f	 Bytes: 6
  %loadMem_42104f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42104f = call %struct.Memory* @routine_jne_.L_421062(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42104f, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_42104f, %struct.Memory** %MEMORY

  %loadBr_42104f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42104f = icmp eq i8 %loadBr_42104f, 1
  br i1 %cmpBr_42104f, label %block_.L_421062, label %block_421055

block_421055:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 421055	 Bytes: 8
  %loadMem_421055 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421055 = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421055)
  store %struct.Memory* %call_421055, %struct.Memory** %MEMORY

  ; Code: jmpq .L_421764	 RIP: 42105d	 Bytes: 5
  %loadMem_42105d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42105d = call %struct.Memory* @routine_jmpq_.L_421764(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42105d, i64 1799, i64 5)
  store %struct.Memory* %call_42105d, %struct.Memory** %MEMORY

  br label %block_.L_421764

  ; Code: .L_421062:	 RIP: 421062	 Bytes: 0
block_.L_421062:

  ; Code: movq $0x45a1f5, %rsi	 RIP: 421062	 Bytes: 10
  %loadMem_421062 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421062 = call %struct.Memory* @routine_movq__0x45a1f5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421062)
  store %struct.Memory* %call_421062, %struct.Memory** %MEMORY

  ; Code: leaq -0x230(%rbp), %rdi	 RIP: 42106c	 Bytes: 7
  %loadMem_42106c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42106c = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42106c)
  store %struct.Memory* %call_42106c, %struct.Memory** %MEMORY

  ; Code: callq .strtok_plt	 RIP: 421073	 Bytes: 5
  %loadMem1_421073 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421073 = call %struct.Memory* @routine_callq_.strtok_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421073, i64 -129555, i64 5, i64 5)
  store %struct.Memory* %call1_421073, %struct.Memory** %MEMORY

  %loadMem2_421073 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421073 = load i64, i64* %3
  %call2_421073 = call %struct.Memory* @sub_401660.strtok_plt(%struct.State* %0, i64  %loadPC_421073, %struct.Memory* %loadMem2_421073)
  store %struct.Memory* %call2_421073, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x240(%rbp)	 RIP: 421078	 Bytes: 7
  %loadMem_421078 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421078 = call %struct.Memory* @routine_movq__rax__MINUS0x240__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421078)
  store %struct.Memory* %call_421078, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 42107f	 Bytes: 4
  %loadMem_42107f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42107f = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42107f)
  store %struct.Memory* %call_42107f, %struct.Memory** %MEMORY

  ; Code: jne .L_421096	 RIP: 421083	 Bytes: 6
  %loadMem_421083 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421083 = call %struct.Memory* @routine_jne_.L_421096(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421083, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_421083, %struct.Memory** %MEMORY

  %loadBr_421083 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421083 = icmp eq i8 %loadBr_421083, 1
  br i1 %cmpBr_421083, label %block_.L_421096, label %block_421089

block_421089:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 421089	 Bytes: 8
  %loadMem_421089 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421089 = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421089)
  store %struct.Memory* %call_421089, %struct.Memory** %MEMORY

  ; Code: jmpq .L_421764	 RIP: 421091	 Bytes: 5
  %loadMem_421091 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421091 = call %struct.Memory* @routine_jmpq_.L_421764(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421091, i64 1747, i64 5)
  store %struct.Memory* %call_421091, %struct.Memory** %MEMORY

  br label %block_.L_421764

  ; Code: .L_421096:	 RIP: 421096	 Bytes: 0
block_.L_421096:

  ; Code: movq -0x240(%rbp), %rdi	 RIP: 421096	 Bytes: 7
  %loadMem_421096 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421096 = call %struct.Memory* @routine_movq_MINUS0x240__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421096)
  store %struct.Memory* %call_421096, %struct.Memory** %MEMORY

  ; Code: callq .atof_plt	 RIP: 42109d	 Bytes: 5
  %loadMem1_42109d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42109d = call %struct.Memory* @routine_callq_.atof_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42109d, i64 -130157, i64 5, i64 5)
  store %struct.Memory* %call1_42109d, %struct.Memory** %MEMORY

  %loadMem2_42109d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42109d = load i64, i64* %3
  %call2_42109d = call %struct.Memory* @ext_atof(%struct.State* %0, i64  %loadPC_42109d, %struct.Memory* %loadMem2_42109d)
  store %struct.Memory* %call2_42109d, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 4210a2	 Bytes: 4
  %loadMem_4210a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4210a2 = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4210a2)
  store %struct.Memory* %call_4210a2, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 4210a6	 Bytes: 4
  %loadMem_4210a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4210a6 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4210a6)
  store %struct.Memory* %call_4210a6, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rdi), %rdi	 RIP: 4210aa	 Bytes: 4
  %loadMem_4210aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4210aa = call %struct.Memory* @routine_movq_0x10__rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4210aa)
  store %struct.Memory* %call_4210aa, %struct.Memory** %MEMORY

  ; Code: movslq -0x244(%rbp), %rax	 RIP: 4210ae	 Bytes: 7
  %loadMem_4210ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4210ae = call %struct.Memory* @routine_movslq_MINUS0x244__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4210ae)
  store %struct.Memory* %call_4210ae, %struct.Memory** %MEMORY

  ; Code: imulq $0x5c, %rax, %rax	 RIP: 4210b5	 Bytes: 4
  %loadMem_4210b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4210b5 = call %struct.Memory* @routine_imulq__0x5c___rax___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4210b5)
  store %struct.Memory* %call_4210b5, %struct.Memory** %MEMORY

  ; Code: addq %rax, %rdi	 RIP: 4210b9	 Bytes: 3
  %loadMem_4210b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4210b9 = call %struct.Memory* @routine_addq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4210b9)
  store %struct.Memory* %call_4210b9, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x4(%rdi)	 RIP: 4210bc	 Bytes: 5
  %loadMem_4210bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4210bc = call %struct.Memory* @routine_movss__xmm0__0x4__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4210bc)
  store %struct.Memory* %call_4210bc, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x248(%rbp)	 RIP: 4210c1	 Bytes: 10
  %loadMem_4210c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4210c1 = call %struct.Memory* @routine_movl__0x0__MINUS0x248__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4210c1)
  store %struct.Memory* %call_4210c1, %struct.Memory** %MEMORY

  ; Code: .L_4210cb:	 RIP: 4210cb	 Bytes: 0
  br label %block_.L_4210cb
block_.L_4210cb:

  ; Code: movl -0x248(%rbp), %eax	 RIP: 4210cb	 Bytes: 6
  %loadMem_4210cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4210cb = call %struct.Memory* @routine_movl_MINUS0x248__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4210cb)
  store %struct.Memory* %call_4210cb, %struct.Memory** %MEMORY

  ; Code: cmpl 0x677060, %eax	 RIP: 4210d1	 Bytes: 7
  %loadMem_4210d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4210d1 = call %struct.Memory* @routine_cmpl_0x677060___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4210d1)
  store %struct.Memory* %call_4210d1, %struct.Memory** %MEMORY

  ; Code: jge .L_421185	 RIP: 4210d8	 Bytes: 6
  %loadMem_4210d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4210d8 = call %struct.Memory* @routine_jge_.L_421185(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4210d8, i8* %BRANCH_TAKEN, i64 173, i64 6, i64 6)
  store %struct.Memory* %call_4210d8, %struct.Memory** %MEMORY

  %loadBr_4210d8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4210d8 = icmp eq i8 %loadBr_4210d8, 1
  br i1 %cmpBr_4210d8, label %block_.L_421185, label %block_4210de

block_4210de:
  ; Code: movl $0x200, %esi	 RIP: 4210de	 Bytes: 5
  %loadMem_4210de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4210de = call %struct.Memory* @routine_movl__0x200___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4210de)
  store %struct.Memory* %call_4210de, %struct.Memory** %MEMORY

  ; Code: leaq -0x230(%rbp), %rdi	 RIP: 4210e3	 Bytes: 7
  %loadMem_4210e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4210e3 = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4210e3)
  store %struct.Memory* %call_4210e3, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4210ea	 Bytes: 4
  %loadMem_4210ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4210ea = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4210ea)
  store %struct.Memory* %call_4210ea, %struct.Memory** %MEMORY

  ; Code: callq .fgets_plt	 RIP: 4210ee	 Bytes: 5
  %loadMem1_4210ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4210ee = call %struct.Memory* @routine_callq_.fgets_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4210ee, i64 -129966, i64 5, i64 5)
  store %struct.Memory* %call1_4210ee, %struct.Memory** %MEMORY

  %loadMem2_4210ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4210ee = load i64, i64* %3
  %call2_4210ee = call %struct.Memory* @sub_401540.fgets_plt(%struct.State* %0, i64  %loadPC_4210ee, %struct.Memory* %loadMem2_4210ee)
  store %struct.Memory* %call2_4210ee, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 4210f3	 Bytes: 4
  %loadMem_4210f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4210f3 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4210f3)
  store %struct.Memory* %call_4210f3, %struct.Memory** %MEMORY

  ; Code: jne .L_42110a	 RIP: 4210f7	 Bytes: 6
  %loadMem_4210f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4210f7 = call %struct.Memory* @routine_jne_.L_42110a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4210f7, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_4210f7, %struct.Memory** %MEMORY

  %loadBr_4210f7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4210f7 = icmp eq i8 %loadBr_4210f7, 1
  br i1 %cmpBr_4210f7, label %block_.L_42110a, label %block_4210fd

block_4210fd:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 4210fd	 Bytes: 8
  %loadMem_4210fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4210fd = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4210fd)
  store %struct.Memory* %call_4210fd, %struct.Memory** %MEMORY

  ; Code: jmpq .L_421764	 RIP: 421105	 Bytes: 5
  %loadMem_421105 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421105 = call %struct.Memory* @routine_jmpq_.L_421764(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421105, i64 1631, i64 5)
  store %struct.Memory* %call_421105, %struct.Memory** %MEMORY

  br label %block_.L_421764

  ; Code: .L_42110a:	 RIP: 42110a	 Bytes: 0
block_.L_42110a:

  ; Code: movq $0x45a1f5, %rsi	 RIP: 42110a	 Bytes: 10
  %loadMem_42110a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42110a = call %struct.Memory* @routine_movq__0x45a1f5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42110a)
  store %struct.Memory* %call_42110a, %struct.Memory** %MEMORY

  ; Code: leaq -0x230(%rbp), %rdi	 RIP: 421114	 Bytes: 7
  %loadMem_421114 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421114 = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421114)
  store %struct.Memory* %call_421114, %struct.Memory** %MEMORY

  ; Code: callq .strtok_plt	 RIP: 42111b	 Bytes: 5
  %loadMem1_42111b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42111b = call %struct.Memory* @routine_callq_.strtok_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42111b, i64 -129723, i64 5, i64 5)
  store %struct.Memory* %call1_42111b, %struct.Memory** %MEMORY

  %loadMem2_42111b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42111b = load i64, i64* %3
  %call2_42111b = call %struct.Memory* @sub_401660.strtok_plt(%struct.State* %0, i64  %loadPC_42111b, %struct.Memory* %loadMem2_42111b)
  store %struct.Memory* %call2_42111b, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x240(%rbp)	 RIP: 421120	 Bytes: 7
  %loadMem_421120 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421120 = call %struct.Memory* @routine_movq__rax__MINUS0x240__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421120)
  store %struct.Memory* %call_421120, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 421127	 Bytes: 4
  %loadMem_421127 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421127 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421127)
  store %struct.Memory* %call_421127, %struct.Memory** %MEMORY

  ; Code: jne .L_42113e	 RIP: 42112b	 Bytes: 6
  %loadMem_42112b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42112b = call %struct.Memory* @routine_jne_.L_42113e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42112b, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_42112b, %struct.Memory** %MEMORY

  %loadBr_42112b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42112b = icmp eq i8 %loadBr_42112b, 1
  br i1 %cmpBr_42112b, label %block_.L_42113e, label %block_421131

block_421131:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 421131	 Bytes: 8
  %loadMem_421131 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421131 = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421131)
  store %struct.Memory* %call_421131, %struct.Memory** %MEMORY

  ; Code: jmpq .L_421764	 RIP: 421139	 Bytes: 5
  %loadMem_421139 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421139 = call %struct.Memory* @routine_jmpq_.L_421764(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421139, i64 1579, i64 5)
  store %struct.Memory* %call_421139, %struct.Memory** %MEMORY

  br label %block_.L_421764

  ; Code: .L_42113e:	 RIP: 42113e	 Bytes: 0
block_.L_42113e:

  ; Code: movq -0x240(%rbp), %rdi	 RIP: 42113e	 Bytes: 7
  %loadMem_42113e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42113e = call %struct.Memory* @routine_movq_MINUS0x240__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42113e)
  store %struct.Memory* %call_42113e, %struct.Memory** %MEMORY

  ; Code: callq .atof_plt	 RIP: 421145	 Bytes: 5
  %loadMem1_421145 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421145 = call %struct.Memory* @routine_callq_.atof_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421145, i64 -130325, i64 5, i64 5)
  store %struct.Memory* %call1_421145, %struct.Memory** %MEMORY

  %loadMem2_421145 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421145 = load i64, i64* %3
  %call2_421145 = call %struct.Memory* @ext_atof(%struct.State* %0, i64  %loadPC_421145, %struct.Memory* %loadMem2_421145)
  store %struct.Memory* %call2_421145, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 42114a	 Bytes: 4
  %loadMem_42114a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42114a = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42114a)
  store %struct.Memory* %call_42114a, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 42114e	 Bytes: 4
  %loadMem_42114e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42114e = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42114e)
  store %struct.Memory* %call_42114e, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rdi), %rdi	 RIP: 421152	 Bytes: 4
  %loadMem_421152 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421152 = call %struct.Memory* @routine_movq_0x10__rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421152)
  store %struct.Memory* %call_421152, %struct.Memory** %MEMORY

  ; Code: movslq -0x244(%rbp), %rax	 RIP: 421156	 Bytes: 7
  %loadMem_421156 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421156 = call %struct.Memory* @routine_movslq_MINUS0x244__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421156)
  store %struct.Memory* %call_421156, %struct.Memory** %MEMORY

  ; Code: imulq $0x5c, %rax, %rax	 RIP: 42115d	 Bytes: 4
  %loadMem_42115d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42115d = call %struct.Memory* @routine_imulq__0x5c___rax___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42115d)
  store %struct.Memory* %call_42115d, %struct.Memory** %MEMORY

  ; Code: addq %rax, %rdi	 RIP: 421161	 Bytes: 3
  %loadMem_421161 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421161 = call %struct.Memory* @routine_addq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421161)
  store %struct.Memory* %call_421161, %struct.Memory** %MEMORY

  ; Code: movslq -0x248(%rbp), %rax	 RIP: 421164	 Bytes: 7
  %loadMem_421164 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421164 = call %struct.Memory* @routine_movslq_MINUS0x248__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421164)
  store %struct.Memory* %call_421164, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0xc(%rdi,%rax,4)	 RIP: 42116b	 Bytes: 6
  %loadMem_42116b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42116b = call %struct.Memory* @routine_movss__xmm0__0xc__rdi__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42116b)
  store %struct.Memory* %call_42116b, %struct.Memory** %MEMORY

  ; Code: movl -0x248(%rbp), %eax	 RIP: 421171	 Bytes: 6
  %loadMem_421171 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421171 = call %struct.Memory* @routine_movl_MINUS0x248__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421171)
  store %struct.Memory* %call_421171, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 421177	 Bytes: 3
  %loadMem_421177 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421177 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421177)
  store %struct.Memory* %call_421177, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x248(%rbp)	 RIP: 42117a	 Bytes: 6
  %loadMem_42117a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42117a = call %struct.Memory* @routine_movl__eax__MINUS0x248__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42117a)
  store %struct.Memory* %call_42117a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4210cb	 RIP: 421180	 Bytes: 5
  %loadMem_421180 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421180 = call %struct.Memory* @routine_jmpq_.L_4210cb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421180, i64 -181, i64 5)
  store %struct.Memory* %call_421180, %struct.Memory** %MEMORY

  br label %block_.L_4210cb

  ; Code: .L_421185:	 RIP: 421185	 Bytes: 0
block_.L_421185:

  ; Code: cmpl $0x2, -0x14(%rbp)	 RIP: 421185	 Bytes: 4
  %loadMem_421185 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421185 = call %struct.Memory* @routine_cmpl__0x2__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421185)
  store %struct.Memory* %call_421185, %struct.Memory** %MEMORY

  ; Code: jne .L_4211fb	 RIP: 421189	 Bytes: 6
  %loadMem_421189 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421189 = call %struct.Memory* @routine_jne_.L_4211fb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421189, i8* %BRANCH_TAKEN, i64 114, i64 6, i64 6)
  store %struct.Memory* %call_421189, %struct.Memory** %MEMORY

  %loadBr_421189 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421189 = icmp eq i8 %loadBr_421189, 1
  br i1 %cmpBr_421189, label %block_.L_4211fb, label %block_42118f

block_42118f:
  ; Code: movl $0x0, -0x248(%rbp)	 RIP: 42118f	 Bytes: 10
  %loadMem_42118f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42118f = call %struct.Memory* @routine_movl__0x0__MINUS0x248__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42118f)
  store %struct.Memory* %call_42118f, %struct.Memory** %MEMORY

  ; Code: .L_421199:	 RIP: 421199	 Bytes: 0
  br label %block_.L_421199
block_.L_421199:

  ; Code: movl -0x248(%rbp), %eax	 RIP: 421199	 Bytes: 6
  %loadMem_421199 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421199 = call %struct.Memory* @routine_movl_MINUS0x248__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421199)
  store %struct.Memory* %call_421199, %struct.Memory** %MEMORY

  ; Code: movl 0x677060, %ecx	 RIP: 42119f	 Bytes: 7
  %loadMem_42119f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42119f = call %struct.Memory* @routine_movl_0x677060___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42119f)
  store %struct.Memory* %call_42119f, %struct.Memory** %MEMORY

  ; Code: addl $0x3, %ecx	 RIP: 4211a6	 Bytes: 3
  %loadMem_4211a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4211a6 = call %struct.Memory* @routine_addl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4211a6)
  store %struct.Memory* %call_4211a6, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 4211a9	 Bytes: 2
  %loadMem_4211a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4211a9 = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4211a9)
  store %struct.Memory* %call_4211a9, %struct.Memory** %MEMORY

  ; Code: jge .L_4211f6	 RIP: 4211ab	 Bytes: 6
  %loadMem_4211ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4211ab = call %struct.Memory* @routine_jge_.L_4211f6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4211ab, i8* %BRANCH_TAKEN, i64 75, i64 6, i64 6)
  store %struct.Memory* %call_4211ab, %struct.Memory** %MEMORY

  %loadBr_4211ab = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4211ab = icmp eq i8 %loadBr_4211ab, 1
  br i1 %cmpBr_4211ab, label %block_.L_4211f6, label %block_4211b1

block_4211b1:
  ; Code: movl $0x200, %esi	 RIP: 4211b1	 Bytes: 5
  %loadMem_4211b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4211b1 = call %struct.Memory* @routine_movl__0x200___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4211b1)
  store %struct.Memory* %call_4211b1, %struct.Memory** %MEMORY

  ; Code: leaq -0x230(%rbp), %rdi	 RIP: 4211b6	 Bytes: 7
  %loadMem_4211b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4211b6 = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4211b6)
  store %struct.Memory* %call_4211b6, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4211bd	 Bytes: 4
  %loadMem_4211bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4211bd = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4211bd)
  store %struct.Memory* %call_4211bd, %struct.Memory** %MEMORY

  ; Code: callq .fgets_plt	 RIP: 4211c1	 Bytes: 5
  %loadMem1_4211c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4211c1 = call %struct.Memory* @routine_callq_.fgets_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4211c1, i64 -130177, i64 5, i64 5)
  store %struct.Memory* %call1_4211c1, %struct.Memory** %MEMORY

  %loadMem2_4211c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4211c1 = load i64, i64* %3
  %call2_4211c1 = call %struct.Memory* @sub_401540.fgets_plt(%struct.State* %0, i64  %loadPC_4211c1, %struct.Memory* %loadMem2_4211c1)
  store %struct.Memory* %call2_4211c1, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 4211c6	 Bytes: 4
  %loadMem_4211c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4211c6 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4211c6)
  store %struct.Memory* %call_4211c6, %struct.Memory** %MEMORY

  ; Code: jne .L_4211dd	 RIP: 4211ca	 Bytes: 6
  %loadMem_4211ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4211ca = call %struct.Memory* @routine_jne_.L_4211dd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4211ca, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_4211ca, %struct.Memory** %MEMORY

  %loadBr_4211ca = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4211ca = icmp eq i8 %loadBr_4211ca, 1
  br i1 %cmpBr_4211ca, label %block_.L_4211dd, label %block_4211d0

block_4211d0:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 4211d0	 Bytes: 8
  %loadMem_4211d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4211d0 = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4211d0)
  store %struct.Memory* %call_4211d0, %struct.Memory** %MEMORY

  ; Code: jmpq .L_421764	 RIP: 4211d8	 Bytes: 5
  %loadMem_4211d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4211d8 = call %struct.Memory* @routine_jmpq_.L_421764(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4211d8, i64 1420, i64 5)
  store %struct.Memory* %call_4211d8, %struct.Memory** %MEMORY

  br label %block_.L_421764

  ; Code: .L_4211dd:	 RIP: 4211dd	 Bytes: 0
block_.L_4211dd:

  ; Code: jmpq .L_4211e2	 RIP: 4211dd	 Bytes: 5
  %loadMem_4211dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4211dd = call %struct.Memory* @routine_jmpq_.L_4211e2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4211dd, i64 5, i64 5)
  store %struct.Memory* %call_4211dd, %struct.Memory** %MEMORY

  br label %block_.L_4211e2

  ; Code: .L_4211e2:	 RIP: 4211e2	 Bytes: 0
block_.L_4211e2:

  ; Code: movl -0x248(%rbp), %eax	 RIP: 4211e2	 Bytes: 6
  %loadMem_4211e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4211e2 = call %struct.Memory* @routine_movl_MINUS0x248__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4211e2)
  store %struct.Memory* %call_4211e2, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4211e8	 Bytes: 3
  %loadMem_4211e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4211e8 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4211e8)
  store %struct.Memory* %call_4211e8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x248(%rbp)	 RIP: 4211eb	 Bytes: 6
  %loadMem_4211eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4211eb = call %struct.Memory* @routine_movl__eax__MINUS0x248__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4211eb)
  store %struct.Memory* %call_4211eb, %struct.Memory** %MEMORY

  ; Code: jmpq .L_421199	 RIP: 4211f1	 Bytes: 5
  %loadMem_4211f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4211f1 = call %struct.Memory* @routine_jmpq_.L_421199(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4211f1, i64 -88, i64 5)
  store %struct.Memory* %call_4211f1, %struct.Memory** %MEMORY

  br label %block_.L_421199

  ; Code: .L_4211f6:	 RIP: 4211f6	 Bytes: 0
block_.L_4211f6:

  ; Code: jmpq .L_4211fb	 RIP: 4211f6	 Bytes: 5
  %loadMem_4211f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4211f6 = call %struct.Memory* @routine_jmpq_.L_4211fb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4211f6, i64 5, i64 5)
  store %struct.Memory* %call_4211f6, %struct.Memory** %MEMORY

  br label %block_.L_4211fb

  ; Code: .L_4211fb:	 RIP: 4211fb	 Bytes: 0
block_.L_4211fb:

  ; Code: jmpq .L_42173e	 RIP: 4211fb	 Bytes: 5
  %loadMem_4211fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4211fb = call %struct.Memory* @routine_jmpq_.L_42173e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4211fb, i64 1347, i64 5)
  store %struct.Memory* %call_4211fb, %struct.Memory** %MEMORY

  br label %block_.L_42173e

  ; Code: .L_421200:	 RIP: 421200	 Bytes: 0
block_.L_421200:

  ; Code: movq -0x238(%rbp), %rdi	 RIP: 421200	 Bytes: 7
  %loadMem_421200 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421200 = call %struct.Memory* @routine_movq_MINUS0x238__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421200)
  store %struct.Memory* %call_421200, %struct.Memory** %MEMORY

  ; Code: movl $0x457927, %eax	 RIP: 421207	 Bytes: 5
  %loadMem_421207 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421207 = call %struct.Memory* @routine_movl__0x457927___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421207)
  store %struct.Memory* %call_421207, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 42120c	 Bytes: 2
  %loadMem_42120c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42120c = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42120c)
  store %struct.Memory* %call_42120c, %struct.Memory** %MEMORY

  ; Code: callq .strcmp_plt	 RIP: 42120e	 Bytes: 5
  %loadMem1_42120e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42120e = call %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42120e, i64 -130222, i64 5, i64 5)
  store %struct.Memory* %call1_42120e, %struct.Memory** %MEMORY

  %loadMem2_42120e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42120e = load i64, i64* %3
  %call2_42120e = call %struct.Memory* @ext_strcmp(%struct.State* %0, i64  %loadPC_42120e, %struct.Memory* %loadMem2_42120e)
  store %struct.Memory* %call2_42120e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 421213	 Bytes: 3
  %loadMem_421213 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421213 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421213)
  store %struct.Memory* %call_421213, %struct.Memory** %MEMORY

  ; Code: jne .L_4214fb	 RIP: 421216	 Bytes: 6
  %loadMem_421216 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421216 = call %struct.Memory* @routine_jne_.L_4214fb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421216, i8* %BRANCH_TAKEN, i64 741, i64 6, i64 6)
  store %struct.Memory* %call_421216, %struct.Memory** %MEMORY

  %loadBr_421216 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421216 = icmp eq i8 %loadBr_421216, 1
  br i1 %cmpBr_421216, label %block_.L_4214fb, label %block_42121c

block_42121c:
  ; Code: movl $0x200, %esi	 RIP: 42121c	 Bytes: 5
  %loadMem_42121c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42121c = call %struct.Memory* @routine_movl__0x200___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42121c)
  store %struct.Memory* %call_42121c, %struct.Memory** %MEMORY

  ; Code: leaq -0x230(%rbp), %rdi	 RIP: 421221	 Bytes: 7
  %loadMem_421221 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421221 = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421221)
  store %struct.Memory* %call_421221, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 421228	 Bytes: 4
  %loadMem_421228 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421228 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421228)
  store %struct.Memory* %call_421228, %struct.Memory** %MEMORY

  ; Code: callq .fgets_plt	 RIP: 42122c	 Bytes: 5
  %loadMem1_42122c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42122c = call %struct.Memory* @routine_callq_.fgets_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42122c, i64 -130284, i64 5, i64 5)
  store %struct.Memory* %call1_42122c, %struct.Memory** %MEMORY

  %loadMem2_42122c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42122c = load i64, i64* %3
  %call2_42122c = call %struct.Memory* @sub_401540.fgets_plt(%struct.State* %0, i64  %loadPC_42122c, %struct.Memory* %loadMem2_42122c)
  store %struct.Memory* %call2_42122c, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 421231	 Bytes: 4
  %loadMem_421231 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421231 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421231)
  store %struct.Memory* %call_421231, %struct.Memory** %MEMORY

  ; Code: jne .L_421248	 RIP: 421235	 Bytes: 6
  %loadMem_421235 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421235 = call %struct.Memory* @routine_jne_.L_421248(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421235, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_421235, %struct.Memory** %MEMORY

  %loadBr_421235 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421235 = icmp eq i8 %loadBr_421235, 1
  br i1 %cmpBr_421235, label %block_.L_421248, label %block_42123b

block_42123b:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 42123b	 Bytes: 8
  %loadMem_42123b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42123b = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42123b)
  store %struct.Memory* %call_42123b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_421764	 RIP: 421243	 Bytes: 5
  %loadMem_421243 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421243 = call %struct.Memory* @routine_jmpq_.L_421764(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421243, i64 1313, i64 5)
  store %struct.Memory* %call_421243, %struct.Memory** %MEMORY

  br label %block_.L_421764

  ; Code: .L_421248:	 RIP: 421248	 Bytes: 0
block_.L_421248:

  ; Code: movq $0x45a1f5, %rsi	 RIP: 421248	 Bytes: 10
  %loadMem_421248 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421248 = call %struct.Memory* @routine_movq__0x45a1f5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421248)
  store %struct.Memory* %call_421248, %struct.Memory** %MEMORY

  ; Code: leaq -0x230(%rbp), %rdi	 RIP: 421252	 Bytes: 7
  %loadMem_421252 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421252 = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421252)
  store %struct.Memory* %call_421252, %struct.Memory** %MEMORY

  ; Code: callq .strtok_plt	 RIP: 421259	 Bytes: 5
  %loadMem1_421259 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421259 = call %struct.Memory* @routine_callq_.strtok_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421259, i64 -130041, i64 5, i64 5)
  store %struct.Memory* %call1_421259, %struct.Memory** %MEMORY

  %loadMem2_421259 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421259 = load i64, i64* %3
  %call2_421259 = call %struct.Memory* @sub_401660.strtok_plt(%struct.State* %0, i64  %loadPC_421259, %struct.Memory* %loadMem2_421259)
  store %struct.Memory* %call2_421259, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x240(%rbp)	 RIP: 42125e	 Bytes: 7
  %loadMem_42125e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42125e = call %struct.Memory* @routine_movq__rax__MINUS0x240__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42125e)
  store %struct.Memory* %call_42125e, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 421265	 Bytes: 4
  %loadMem_421265 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421265 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421265)
  store %struct.Memory* %call_421265, %struct.Memory** %MEMORY

  ; Code: jne .L_42127c	 RIP: 421269	 Bytes: 6
  %loadMem_421269 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421269 = call %struct.Memory* @routine_jne_.L_42127c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421269, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_421269, %struct.Memory** %MEMORY

  %loadBr_421269 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421269 = icmp eq i8 %loadBr_421269, 1
  br i1 %cmpBr_421269, label %block_.L_42127c, label %block_42126f

block_42126f:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 42126f	 Bytes: 8
  %loadMem_42126f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42126f = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42126f)
  store %struct.Memory* %call_42126f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_421764	 RIP: 421277	 Bytes: 5
  %loadMem_421277 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421277 = call %struct.Memory* @routine_jmpq_.L_421764(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421277, i64 1261, i64 5)
  store %struct.Memory* %call_421277, %struct.Memory** %MEMORY

  br label %block_.L_421764

  ; Code: .L_42127c:	 RIP: 42127c	 Bytes: 0
block_.L_42127c:

  ; Code: movq -0x240(%rbp), %rdi	 RIP: 42127c	 Bytes: 7
  %loadMem_42127c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42127c = call %struct.Memory* @routine_movq_MINUS0x240__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42127c)
  store %struct.Memory* %call_42127c, %struct.Memory** %MEMORY

  ; Code: callq .atof_plt	 RIP: 421283	 Bytes: 5
  %loadMem1_421283 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421283 = call %struct.Memory* @routine_callq_.atof_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421283, i64 -130643, i64 5, i64 5)
  store %struct.Memory* %call1_421283, %struct.Memory** %MEMORY

  %loadMem2_421283 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421283 = load i64, i64* %3
  %call2_421283 = call %struct.Memory* @ext_atof(%struct.State* %0, i64  %loadPC_421283, %struct.Memory* %loadMem2_421283)
  store %struct.Memory* %call2_421283, %struct.Memory** %MEMORY

  ; Code: movl $0x200, %esi	 RIP: 421288	 Bytes: 5
  %loadMem_421288 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421288 = call %struct.Memory* @routine_movl__0x200___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421288)
  store %struct.Memory* %call_421288, %struct.Memory** %MEMORY

  ; Code: leaq -0x230(%rbp), %rdi	 RIP: 42128d	 Bytes: 7
  %loadMem_42128d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42128d = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42128d)
  store %struct.Memory* %call_42128d, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 421294	 Bytes: 4
  %loadMem_421294 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421294 = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421294)
  store %struct.Memory* %call_421294, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 421298	 Bytes: 4
  %loadMem_421298 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421298 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421298)
  store %struct.Memory* %call_421298, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 42129c	 Bytes: 4
  %loadMem_42129c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42129c = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42129c)
  store %struct.Memory* %call_42129c, %struct.Memory** %MEMORY

  ; Code: movslq -0x244(%rbp), %rcx	 RIP: 4212a0	 Bytes: 7
  %loadMem_4212a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4212a0 = call %struct.Memory* @routine_movslq_MINUS0x244__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4212a0)
  store %struct.Memory* %call_4212a0, %struct.Memory** %MEMORY

  ; Code: imulq $0x5c, %rcx, %rcx	 RIP: 4212a7	 Bytes: 4
  %loadMem_4212a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4212a7 = call %struct.Memory* @routine_imulq__0x5c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4212a7)
  store %struct.Memory* %call_4212a7, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4212ab	 Bytes: 3
  %loadMem_4212ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4212ab = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4212ab)
  store %struct.Memory* %call_4212ab, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, (%rax)	 RIP: 4212ae	 Bytes: 4
  %loadMem_4212ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4212ae = call %struct.Memory* @routine_movss__xmm0____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4212ae)
  store %struct.Memory* %call_4212ae, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4212b2	 Bytes: 4
  %loadMem_4212b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4212b2 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4212b2)
  store %struct.Memory* %call_4212b2, %struct.Memory** %MEMORY

  ; Code: callq .fgets_plt	 RIP: 4212b6	 Bytes: 5
  %loadMem1_4212b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4212b6 = call %struct.Memory* @routine_callq_.fgets_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4212b6, i64 -130422, i64 5, i64 5)
  store %struct.Memory* %call1_4212b6, %struct.Memory** %MEMORY

  %loadMem2_4212b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4212b6 = load i64, i64* %3
  %call2_4212b6 = call %struct.Memory* @sub_401540.fgets_plt(%struct.State* %0, i64  %loadPC_4212b6, %struct.Memory* %loadMem2_4212b6)
  store %struct.Memory* %call2_4212b6, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 4212bb	 Bytes: 4
  %loadMem_4212bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4212bb = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4212bb)
  store %struct.Memory* %call_4212bb, %struct.Memory** %MEMORY

  ; Code: jne .L_4212d2	 RIP: 4212bf	 Bytes: 6
  %loadMem_4212bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4212bf = call %struct.Memory* @routine_jne_.L_4212d2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4212bf, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_4212bf, %struct.Memory** %MEMORY

  %loadBr_4212bf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4212bf = icmp eq i8 %loadBr_4212bf, 1
  br i1 %cmpBr_4212bf, label %block_.L_4212d2, label %block_4212c5

block_4212c5:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 4212c5	 Bytes: 8
  %loadMem_4212c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4212c5 = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4212c5)
  store %struct.Memory* %call_4212c5, %struct.Memory** %MEMORY

  ; Code: jmpq .L_421764	 RIP: 4212cd	 Bytes: 5
  %loadMem_4212cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4212cd = call %struct.Memory* @routine_jmpq_.L_421764(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4212cd, i64 1175, i64 5)
  store %struct.Memory* %call_4212cd, %struct.Memory** %MEMORY

  br label %block_.L_421764

  ; Code: .L_4212d2:	 RIP: 4212d2	 Bytes: 0
block_.L_4212d2:

  ; Code: movq $0x45a1f5, %rsi	 RIP: 4212d2	 Bytes: 10
  %loadMem_4212d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4212d2 = call %struct.Memory* @routine_movq__0x45a1f5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4212d2)
  store %struct.Memory* %call_4212d2, %struct.Memory** %MEMORY

  ; Code: leaq -0x230(%rbp), %rdi	 RIP: 4212dc	 Bytes: 7
  %loadMem_4212dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4212dc = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4212dc)
  store %struct.Memory* %call_4212dc, %struct.Memory** %MEMORY

  ; Code: callq .strtok_plt	 RIP: 4212e3	 Bytes: 5
  %loadMem1_4212e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4212e3 = call %struct.Memory* @routine_callq_.strtok_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4212e3, i64 -130179, i64 5, i64 5)
  store %struct.Memory* %call1_4212e3, %struct.Memory** %MEMORY

  %loadMem2_4212e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4212e3 = load i64, i64* %3
  %call2_4212e3 = call %struct.Memory* @sub_401660.strtok_plt(%struct.State* %0, i64  %loadPC_4212e3, %struct.Memory* %loadMem2_4212e3)
  store %struct.Memory* %call2_4212e3, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x240(%rbp)	 RIP: 4212e8	 Bytes: 7
  %loadMem_4212e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4212e8 = call %struct.Memory* @routine_movq__rax__MINUS0x240__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4212e8)
  store %struct.Memory* %call_4212e8, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 4212ef	 Bytes: 4
  %loadMem_4212ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4212ef = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4212ef)
  store %struct.Memory* %call_4212ef, %struct.Memory** %MEMORY

  ; Code: jne .L_421306	 RIP: 4212f3	 Bytes: 6
  %loadMem_4212f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4212f3 = call %struct.Memory* @routine_jne_.L_421306(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4212f3, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_4212f3, %struct.Memory** %MEMORY

  %loadBr_4212f3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4212f3 = icmp eq i8 %loadBr_4212f3, 1
  br i1 %cmpBr_4212f3, label %block_.L_421306, label %block_4212f9

block_4212f9:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 4212f9	 Bytes: 8
  %loadMem_4212f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4212f9 = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4212f9)
  store %struct.Memory* %call_4212f9, %struct.Memory** %MEMORY

  ; Code: jmpq .L_421764	 RIP: 421301	 Bytes: 5
  %loadMem_421301 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421301 = call %struct.Memory* @routine_jmpq_.L_421764(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421301, i64 1123, i64 5)
  store %struct.Memory* %call_421301, %struct.Memory** %MEMORY

  br label %block_.L_421764

  ; Code: .L_421306:	 RIP: 421306	 Bytes: 0
block_.L_421306:

  ; Code: movq -0x240(%rbp), %rdi	 RIP: 421306	 Bytes: 7
  %loadMem_421306 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421306 = call %struct.Memory* @routine_movq_MINUS0x240__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421306)
  store %struct.Memory* %call_421306, %struct.Memory** %MEMORY

  ; Code: callq .atof_plt	 RIP: 42130d	 Bytes: 5
  %loadMem1_42130d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42130d = call %struct.Memory* @routine_callq_.atof_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42130d, i64 -130781, i64 5, i64 5)
  store %struct.Memory* %call1_42130d, %struct.Memory** %MEMORY

  %loadMem2_42130d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42130d = load i64, i64* %3
  %call2_42130d = call %struct.Memory* @ext_atof(%struct.State* %0, i64  %loadPC_42130d, %struct.Memory* %loadMem2_42130d)
  store %struct.Memory* %call2_42130d, %struct.Memory** %MEMORY

  ; Code: movl $0x200, %esi	 RIP: 421312	 Bytes: 5
  %loadMem_421312 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421312 = call %struct.Memory* @routine_movl__0x200___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421312)
  store %struct.Memory* %call_421312, %struct.Memory** %MEMORY

  ; Code: leaq -0x230(%rbp), %rdi	 RIP: 421317	 Bytes: 7
  %loadMem_421317 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421317 = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421317)
  store %struct.Memory* %call_421317, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 42131e	 Bytes: 4
  %loadMem_42131e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42131e = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42131e)
  store %struct.Memory* %call_42131e, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 421322	 Bytes: 4
  %loadMem_421322 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421322 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421322)
  store %struct.Memory* %call_421322, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 421326	 Bytes: 4
  %loadMem_421326 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421326 = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421326)
  store %struct.Memory* %call_421326, %struct.Memory** %MEMORY

  ; Code: movslq -0x244(%rbp), %rcx	 RIP: 42132a	 Bytes: 7
  %loadMem_42132a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42132a = call %struct.Memory* @routine_movslq_MINUS0x244__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42132a)
  store %struct.Memory* %call_42132a, %struct.Memory** %MEMORY

  ; Code: imulq $0x5c, %rcx, %rcx	 RIP: 421331	 Bytes: 4
  %loadMem_421331 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421331 = call %struct.Memory* @routine_imulq__0x5c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421331)
  store %struct.Memory* %call_421331, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 421335	 Bytes: 3
  %loadMem_421335 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421335 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421335)
  store %struct.Memory* %call_421335, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x8(%rax)	 RIP: 421338	 Bytes: 5
  %loadMem_421338 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421338 = call %struct.Memory* @routine_movss__xmm0__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421338)
  store %struct.Memory* %call_421338, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 42133d	 Bytes: 4
  %loadMem_42133d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42133d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42133d)
  store %struct.Memory* %call_42133d, %struct.Memory** %MEMORY

  ; Code: callq .fgets_plt	 RIP: 421341	 Bytes: 5
  %loadMem1_421341 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421341 = call %struct.Memory* @routine_callq_.fgets_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421341, i64 -130561, i64 5, i64 5)
  store %struct.Memory* %call1_421341, %struct.Memory** %MEMORY

  %loadMem2_421341 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421341 = load i64, i64* %3
  %call2_421341 = call %struct.Memory* @sub_401540.fgets_plt(%struct.State* %0, i64  %loadPC_421341, %struct.Memory* %loadMem2_421341)
  store %struct.Memory* %call2_421341, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 421346	 Bytes: 4
  %loadMem_421346 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421346 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421346)
  store %struct.Memory* %call_421346, %struct.Memory** %MEMORY

  ; Code: jne .L_42135d	 RIP: 42134a	 Bytes: 6
  %loadMem_42134a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42134a = call %struct.Memory* @routine_jne_.L_42135d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42134a, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_42134a, %struct.Memory** %MEMORY

  %loadBr_42134a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42134a = icmp eq i8 %loadBr_42134a, 1
  br i1 %cmpBr_42134a, label %block_.L_42135d, label %block_421350

block_421350:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 421350	 Bytes: 8
  %loadMem_421350 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421350 = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421350)
  store %struct.Memory* %call_421350, %struct.Memory** %MEMORY

  ; Code: jmpq .L_421764	 RIP: 421358	 Bytes: 5
  %loadMem_421358 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421358 = call %struct.Memory* @routine_jmpq_.L_421764(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421358, i64 1036, i64 5)
  store %struct.Memory* %call_421358, %struct.Memory** %MEMORY

  br label %block_.L_421764

  ; Code: .L_42135d:	 RIP: 42135d	 Bytes: 0
block_.L_42135d:

  ; Code: movq $0x45a1f5, %rsi	 RIP: 42135d	 Bytes: 10
  %loadMem_42135d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42135d = call %struct.Memory* @routine_movq__0x45a1f5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42135d)
  store %struct.Memory* %call_42135d, %struct.Memory** %MEMORY

  ; Code: leaq -0x230(%rbp), %rdi	 RIP: 421367	 Bytes: 7
  %loadMem_421367 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421367 = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421367)
  store %struct.Memory* %call_421367, %struct.Memory** %MEMORY

  ; Code: callq .strtok_plt	 RIP: 42136e	 Bytes: 5
  %loadMem1_42136e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42136e = call %struct.Memory* @routine_callq_.strtok_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42136e, i64 -130318, i64 5, i64 5)
  store %struct.Memory* %call1_42136e, %struct.Memory** %MEMORY

  %loadMem2_42136e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42136e = load i64, i64* %3
  %call2_42136e = call %struct.Memory* @sub_401660.strtok_plt(%struct.State* %0, i64  %loadPC_42136e, %struct.Memory* %loadMem2_42136e)
  store %struct.Memory* %call2_42136e, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x240(%rbp)	 RIP: 421373	 Bytes: 7
  %loadMem_421373 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421373 = call %struct.Memory* @routine_movq__rax__MINUS0x240__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421373)
  store %struct.Memory* %call_421373, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 42137a	 Bytes: 4
  %loadMem_42137a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42137a = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42137a)
  store %struct.Memory* %call_42137a, %struct.Memory** %MEMORY

  ; Code: jne .L_421391	 RIP: 42137e	 Bytes: 6
  %loadMem_42137e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42137e = call %struct.Memory* @routine_jne_.L_421391(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42137e, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_42137e, %struct.Memory** %MEMORY

  %loadBr_42137e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42137e = icmp eq i8 %loadBr_42137e, 1
  br i1 %cmpBr_42137e, label %block_.L_421391, label %block_421384

block_421384:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 421384	 Bytes: 8
  %loadMem_421384 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421384 = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421384)
  store %struct.Memory* %call_421384, %struct.Memory** %MEMORY

  ; Code: jmpq .L_421764	 RIP: 42138c	 Bytes: 5
  %loadMem_42138c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42138c = call %struct.Memory* @routine_jmpq_.L_421764(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42138c, i64 984, i64 5)
  store %struct.Memory* %call_42138c, %struct.Memory** %MEMORY

  br label %block_.L_421764

  ; Code: .L_421391:	 RIP: 421391	 Bytes: 0
block_.L_421391:

  ; Code: movq -0x240(%rbp), %rdi	 RIP: 421391	 Bytes: 7
  %loadMem_421391 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421391 = call %struct.Memory* @routine_movq_MINUS0x240__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421391)
  store %struct.Memory* %call_421391, %struct.Memory** %MEMORY

  ; Code: callq .atof_plt	 RIP: 421398	 Bytes: 5
  %loadMem1_421398 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421398 = call %struct.Memory* @routine_callq_.atof_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421398, i64 -130920, i64 5, i64 5)
  store %struct.Memory* %call1_421398, %struct.Memory** %MEMORY

  %loadMem2_421398 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421398 = load i64, i64* %3
  %call2_421398 = call %struct.Memory* @ext_atof(%struct.State* %0, i64  %loadPC_421398, %struct.Memory* %loadMem2_421398)
  store %struct.Memory* %call2_421398, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 42139d	 Bytes: 4
  %loadMem_42139d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42139d = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42139d)
  store %struct.Memory* %call_42139d, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 4213a1	 Bytes: 4
  %loadMem_4213a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4213a1 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4213a1)
  store %struct.Memory* %call_4213a1, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rdi), %rdi	 RIP: 4213a5	 Bytes: 4
  %loadMem_4213a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4213a5 = call %struct.Memory* @routine_movq_0x8__rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4213a5)
  store %struct.Memory* %call_4213a5, %struct.Memory** %MEMORY

  ; Code: movslq -0x244(%rbp), %rax	 RIP: 4213a9	 Bytes: 7
  %loadMem_4213a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4213a9 = call %struct.Memory* @routine_movslq_MINUS0x244__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4213a9)
  store %struct.Memory* %call_4213a9, %struct.Memory** %MEMORY

  ; Code: imulq $0x5c, %rax, %rax	 RIP: 4213b0	 Bytes: 4
  %loadMem_4213b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4213b0 = call %struct.Memory* @routine_imulq__0x5c___rax___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4213b0)
  store %struct.Memory* %call_4213b0, %struct.Memory** %MEMORY

  ; Code: addq %rax, %rdi	 RIP: 4213b4	 Bytes: 3
  %loadMem_4213b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4213b4 = call %struct.Memory* @routine_addq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4213b4)
  store %struct.Memory* %call_4213b4, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x4(%rdi)	 RIP: 4213b7	 Bytes: 5
  %loadMem_4213b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4213b7 = call %struct.Memory* @routine_movss__xmm0__0x4__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4213b7)
  store %struct.Memory* %call_4213b7, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x248(%rbp)	 RIP: 4213bc	 Bytes: 10
  %loadMem_4213bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4213bc = call %struct.Memory* @routine_movl__0x0__MINUS0x248__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4213bc)
  store %struct.Memory* %call_4213bc, %struct.Memory** %MEMORY

  ; Code: .L_4213c6:	 RIP: 4213c6	 Bytes: 0
  br label %block_.L_4213c6
block_.L_4213c6:

  ; Code: movl -0x248(%rbp), %eax	 RIP: 4213c6	 Bytes: 6
  %loadMem_4213c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4213c6 = call %struct.Memory* @routine_movl_MINUS0x248__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4213c6)
  store %struct.Memory* %call_4213c6, %struct.Memory** %MEMORY

  ; Code: cmpl 0x677060, %eax	 RIP: 4213cc	 Bytes: 7
  %loadMem_4213cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4213cc = call %struct.Memory* @routine_cmpl_0x677060___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4213cc)
  store %struct.Memory* %call_4213cc, %struct.Memory** %MEMORY

  ; Code: jge .L_421480	 RIP: 4213d3	 Bytes: 6
  %loadMem_4213d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4213d3 = call %struct.Memory* @routine_jge_.L_421480(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4213d3, i8* %BRANCH_TAKEN, i64 173, i64 6, i64 6)
  store %struct.Memory* %call_4213d3, %struct.Memory** %MEMORY

  %loadBr_4213d3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4213d3 = icmp eq i8 %loadBr_4213d3, 1
  br i1 %cmpBr_4213d3, label %block_.L_421480, label %block_4213d9

block_4213d9:
  ; Code: movl $0x200, %esi	 RIP: 4213d9	 Bytes: 5
  %loadMem_4213d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4213d9 = call %struct.Memory* @routine_movl__0x200___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4213d9)
  store %struct.Memory* %call_4213d9, %struct.Memory** %MEMORY

  ; Code: leaq -0x230(%rbp), %rdi	 RIP: 4213de	 Bytes: 7
  %loadMem_4213de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4213de = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4213de)
  store %struct.Memory* %call_4213de, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4213e5	 Bytes: 4
  %loadMem_4213e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4213e5 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4213e5)
  store %struct.Memory* %call_4213e5, %struct.Memory** %MEMORY

  ; Code: callq .fgets_plt	 RIP: 4213e9	 Bytes: 5
  %loadMem1_4213e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4213e9 = call %struct.Memory* @routine_callq_.fgets_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4213e9, i64 -130729, i64 5, i64 5)
  store %struct.Memory* %call1_4213e9, %struct.Memory** %MEMORY

  %loadMem2_4213e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4213e9 = load i64, i64* %3
  %call2_4213e9 = call %struct.Memory* @sub_401540.fgets_plt(%struct.State* %0, i64  %loadPC_4213e9, %struct.Memory* %loadMem2_4213e9)
  store %struct.Memory* %call2_4213e9, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 4213ee	 Bytes: 4
  %loadMem_4213ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4213ee = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4213ee)
  store %struct.Memory* %call_4213ee, %struct.Memory** %MEMORY

  ; Code: jne .L_421405	 RIP: 4213f2	 Bytes: 6
  %loadMem_4213f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4213f2 = call %struct.Memory* @routine_jne_.L_421405(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4213f2, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_4213f2, %struct.Memory** %MEMORY

  %loadBr_4213f2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4213f2 = icmp eq i8 %loadBr_4213f2, 1
  br i1 %cmpBr_4213f2, label %block_.L_421405, label %block_4213f8

block_4213f8:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 4213f8	 Bytes: 8
  %loadMem_4213f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4213f8 = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4213f8)
  store %struct.Memory* %call_4213f8, %struct.Memory** %MEMORY

  ; Code: jmpq .L_421764	 RIP: 421400	 Bytes: 5
  %loadMem_421400 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421400 = call %struct.Memory* @routine_jmpq_.L_421764(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421400, i64 868, i64 5)
  store %struct.Memory* %call_421400, %struct.Memory** %MEMORY

  br label %block_.L_421764

  ; Code: .L_421405:	 RIP: 421405	 Bytes: 0
block_.L_421405:

  ; Code: movq $0x45a1f5, %rsi	 RIP: 421405	 Bytes: 10
  %loadMem_421405 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421405 = call %struct.Memory* @routine_movq__0x45a1f5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421405)
  store %struct.Memory* %call_421405, %struct.Memory** %MEMORY

  ; Code: leaq -0x230(%rbp), %rdi	 RIP: 42140f	 Bytes: 7
  %loadMem_42140f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42140f = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42140f)
  store %struct.Memory* %call_42140f, %struct.Memory** %MEMORY

  ; Code: callq .strtok_plt	 RIP: 421416	 Bytes: 5
  %loadMem1_421416 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421416 = call %struct.Memory* @routine_callq_.strtok_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421416, i64 -130486, i64 5, i64 5)
  store %struct.Memory* %call1_421416, %struct.Memory** %MEMORY

  %loadMem2_421416 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421416 = load i64, i64* %3
  %call2_421416 = call %struct.Memory* @sub_401660.strtok_plt(%struct.State* %0, i64  %loadPC_421416, %struct.Memory* %loadMem2_421416)
  store %struct.Memory* %call2_421416, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x240(%rbp)	 RIP: 42141b	 Bytes: 7
  %loadMem_42141b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42141b = call %struct.Memory* @routine_movq__rax__MINUS0x240__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42141b)
  store %struct.Memory* %call_42141b, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 421422	 Bytes: 4
  %loadMem_421422 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421422 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421422)
  store %struct.Memory* %call_421422, %struct.Memory** %MEMORY

  ; Code: jne .L_421439	 RIP: 421426	 Bytes: 6
  %loadMem_421426 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421426 = call %struct.Memory* @routine_jne_.L_421439(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421426, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_421426, %struct.Memory** %MEMORY

  %loadBr_421426 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421426 = icmp eq i8 %loadBr_421426, 1
  br i1 %cmpBr_421426, label %block_.L_421439, label %block_42142c

block_42142c:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 42142c	 Bytes: 8
  %loadMem_42142c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42142c = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42142c)
  store %struct.Memory* %call_42142c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_421764	 RIP: 421434	 Bytes: 5
  %loadMem_421434 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421434 = call %struct.Memory* @routine_jmpq_.L_421764(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421434, i64 816, i64 5)
  store %struct.Memory* %call_421434, %struct.Memory** %MEMORY

  br label %block_.L_421764

  ; Code: .L_421439:	 RIP: 421439	 Bytes: 0
block_.L_421439:

  ; Code: movq -0x240(%rbp), %rdi	 RIP: 421439	 Bytes: 7
  %loadMem_421439 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421439 = call %struct.Memory* @routine_movq_MINUS0x240__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421439)
  store %struct.Memory* %call_421439, %struct.Memory** %MEMORY

  ; Code: callq .atof_plt	 RIP: 421440	 Bytes: 5
  %loadMem1_421440 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421440 = call %struct.Memory* @routine_callq_.atof_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421440, i64 -131088, i64 5, i64 5)
  store %struct.Memory* %call1_421440, %struct.Memory** %MEMORY

  %loadMem2_421440 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421440 = load i64, i64* %3
  %call2_421440 = call %struct.Memory* @ext_atof(%struct.State* %0, i64  %loadPC_421440, %struct.Memory* %loadMem2_421440)
  store %struct.Memory* %call2_421440, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 421445	 Bytes: 4
  %loadMem_421445 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421445 = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421445)
  store %struct.Memory* %call_421445, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 421449	 Bytes: 4
  %loadMem_421449 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421449 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421449)
  store %struct.Memory* %call_421449, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rdi), %rdi	 RIP: 42144d	 Bytes: 4
  %loadMem_42144d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42144d = call %struct.Memory* @routine_movq_0x8__rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42144d)
  store %struct.Memory* %call_42144d, %struct.Memory** %MEMORY

  ; Code: movslq -0x244(%rbp), %rax	 RIP: 421451	 Bytes: 7
  %loadMem_421451 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421451 = call %struct.Memory* @routine_movslq_MINUS0x244__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421451)
  store %struct.Memory* %call_421451, %struct.Memory** %MEMORY

  ; Code: imulq $0x5c, %rax, %rax	 RIP: 421458	 Bytes: 4
  %loadMem_421458 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421458 = call %struct.Memory* @routine_imulq__0x5c___rax___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421458)
  store %struct.Memory* %call_421458, %struct.Memory** %MEMORY

  ; Code: addq %rax, %rdi	 RIP: 42145c	 Bytes: 3
  %loadMem_42145c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42145c = call %struct.Memory* @routine_addq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42145c)
  store %struct.Memory* %call_42145c, %struct.Memory** %MEMORY

  ; Code: movslq -0x248(%rbp), %rax	 RIP: 42145f	 Bytes: 7
  %loadMem_42145f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42145f = call %struct.Memory* @routine_movslq_MINUS0x248__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42145f)
  store %struct.Memory* %call_42145f, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0xc(%rdi,%rax,4)	 RIP: 421466	 Bytes: 6
  %loadMem_421466 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421466 = call %struct.Memory* @routine_movss__xmm0__0xc__rdi__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421466)
  store %struct.Memory* %call_421466, %struct.Memory** %MEMORY

  ; Code: movl -0x248(%rbp), %eax	 RIP: 42146c	 Bytes: 6
  %loadMem_42146c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42146c = call %struct.Memory* @routine_movl_MINUS0x248__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42146c)
  store %struct.Memory* %call_42146c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 421472	 Bytes: 3
  %loadMem_421472 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421472 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421472)
  store %struct.Memory* %call_421472, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x248(%rbp)	 RIP: 421475	 Bytes: 6
  %loadMem_421475 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421475 = call %struct.Memory* @routine_movl__eax__MINUS0x248__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421475)
  store %struct.Memory* %call_421475, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4213c6	 RIP: 42147b	 Bytes: 5
  %loadMem_42147b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42147b = call %struct.Memory* @routine_jmpq_.L_4213c6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42147b, i64 -181, i64 5)
  store %struct.Memory* %call_42147b, %struct.Memory** %MEMORY

  br label %block_.L_4213c6

  ; Code: .L_421480:	 RIP: 421480	 Bytes: 0
block_.L_421480:

  ; Code: cmpl $0x2, -0x14(%rbp)	 RIP: 421480	 Bytes: 4
  %loadMem_421480 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421480 = call %struct.Memory* @routine_cmpl__0x2__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421480)
  store %struct.Memory* %call_421480, %struct.Memory** %MEMORY

  ; Code: jne .L_4214f6	 RIP: 421484	 Bytes: 6
  %loadMem_421484 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421484 = call %struct.Memory* @routine_jne_.L_4214f6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421484, i8* %BRANCH_TAKEN, i64 114, i64 6, i64 6)
  store %struct.Memory* %call_421484, %struct.Memory** %MEMORY

  %loadBr_421484 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421484 = icmp eq i8 %loadBr_421484, 1
  br i1 %cmpBr_421484, label %block_.L_4214f6, label %block_42148a

block_42148a:
  ; Code: movl $0x0, -0x248(%rbp)	 RIP: 42148a	 Bytes: 10
  %loadMem_42148a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42148a = call %struct.Memory* @routine_movl__0x0__MINUS0x248__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42148a)
  store %struct.Memory* %call_42148a, %struct.Memory** %MEMORY

  ; Code: .L_421494:	 RIP: 421494	 Bytes: 0
  br label %block_.L_421494
block_.L_421494:

  ; Code: movl -0x248(%rbp), %eax	 RIP: 421494	 Bytes: 6
  %loadMem_421494 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421494 = call %struct.Memory* @routine_movl_MINUS0x248__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421494)
  store %struct.Memory* %call_421494, %struct.Memory** %MEMORY

  ; Code: movl 0x677060, %ecx	 RIP: 42149a	 Bytes: 7
  %loadMem_42149a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42149a = call %struct.Memory* @routine_movl_0x677060___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42149a)
  store %struct.Memory* %call_42149a, %struct.Memory** %MEMORY

  ; Code: addl $0x3, %ecx	 RIP: 4214a1	 Bytes: 3
  %loadMem_4214a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4214a1 = call %struct.Memory* @routine_addl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4214a1)
  store %struct.Memory* %call_4214a1, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 4214a4	 Bytes: 2
  %loadMem_4214a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4214a4 = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4214a4)
  store %struct.Memory* %call_4214a4, %struct.Memory** %MEMORY

  ; Code: jge .L_4214f1	 RIP: 4214a6	 Bytes: 6
  %loadMem_4214a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4214a6 = call %struct.Memory* @routine_jge_.L_4214f1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4214a6, i8* %BRANCH_TAKEN, i64 75, i64 6, i64 6)
  store %struct.Memory* %call_4214a6, %struct.Memory** %MEMORY

  %loadBr_4214a6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4214a6 = icmp eq i8 %loadBr_4214a6, 1
  br i1 %cmpBr_4214a6, label %block_.L_4214f1, label %block_4214ac

block_4214ac:
  ; Code: movl $0x200, %esi	 RIP: 4214ac	 Bytes: 5
  %loadMem_4214ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4214ac = call %struct.Memory* @routine_movl__0x200___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4214ac)
  store %struct.Memory* %call_4214ac, %struct.Memory** %MEMORY

  ; Code: leaq -0x230(%rbp), %rdi	 RIP: 4214b1	 Bytes: 7
  %loadMem_4214b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4214b1 = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4214b1)
  store %struct.Memory* %call_4214b1, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4214b8	 Bytes: 4
  %loadMem_4214b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4214b8 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4214b8)
  store %struct.Memory* %call_4214b8, %struct.Memory** %MEMORY

  ; Code: callq .fgets_plt	 RIP: 4214bc	 Bytes: 5
  %loadMem1_4214bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4214bc = call %struct.Memory* @routine_callq_.fgets_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4214bc, i64 -130940, i64 5, i64 5)
  store %struct.Memory* %call1_4214bc, %struct.Memory** %MEMORY

  %loadMem2_4214bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4214bc = load i64, i64* %3
  %call2_4214bc = call %struct.Memory* @sub_401540.fgets_plt(%struct.State* %0, i64  %loadPC_4214bc, %struct.Memory* %loadMem2_4214bc)
  store %struct.Memory* %call2_4214bc, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 4214c1	 Bytes: 4
  %loadMem_4214c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4214c1 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4214c1)
  store %struct.Memory* %call_4214c1, %struct.Memory** %MEMORY

  ; Code: jne .L_4214d8	 RIP: 4214c5	 Bytes: 6
  %loadMem_4214c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4214c5 = call %struct.Memory* @routine_jne_.L_4214d8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4214c5, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_4214c5, %struct.Memory** %MEMORY

  %loadBr_4214c5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4214c5 = icmp eq i8 %loadBr_4214c5, 1
  br i1 %cmpBr_4214c5, label %block_.L_4214d8, label %block_4214cb

block_4214cb:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 4214cb	 Bytes: 8
  %loadMem_4214cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4214cb = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4214cb)
  store %struct.Memory* %call_4214cb, %struct.Memory** %MEMORY

  ; Code: jmpq .L_421764	 RIP: 4214d3	 Bytes: 5
  %loadMem_4214d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4214d3 = call %struct.Memory* @routine_jmpq_.L_421764(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4214d3, i64 657, i64 5)
  store %struct.Memory* %call_4214d3, %struct.Memory** %MEMORY

  br label %block_.L_421764

  ; Code: .L_4214d8:	 RIP: 4214d8	 Bytes: 0
block_.L_4214d8:

  ; Code: jmpq .L_4214dd	 RIP: 4214d8	 Bytes: 5
  %loadMem_4214d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4214d8 = call %struct.Memory* @routine_jmpq_.L_4214dd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4214d8, i64 5, i64 5)
  store %struct.Memory* %call_4214d8, %struct.Memory** %MEMORY

  br label %block_.L_4214dd

  ; Code: .L_4214dd:	 RIP: 4214dd	 Bytes: 0
block_.L_4214dd:

  ; Code: movl -0x248(%rbp), %eax	 RIP: 4214dd	 Bytes: 6
  %loadMem_4214dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4214dd = call %struct.Memory* @routine_movl_MINUS0x248__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4214dd)
  store %struct.Memory* %call_4214dd, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4214e3	 Bytes: 3
  %loadMem_4214e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4214e3 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4214e3)
  store %struct.Memory* %call_4214e3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x248(%rbp)	 RIP: 4214e6	 Bytes: 6
  %loadMem_4214e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4214e6 = call %struct.Memory* @routine_movl__eax__MINUS0x248__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4214e6)
  store %struct.Memory* %call_4214e6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_421494	 RIP: 4214ec	 Bytes: 5
  %loadMem_4214ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4214ec = call %struct.Memory* @routine_jmpq_.L_421494(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4214ec, i64 -88, i64 5)
  store %struct.Memory* %call_4214ec, %struct.Memory** %MEMORY

  br label %block_.L_421494

  ; Code: .L_4214f1:	 RIP: 4214f1	 Bytes: 0
block_.L_4214f1:

  ; Code: jmpq .L_4214f6	 RIP: 4214f1	 Bytes: 5
  %loadMem_4214f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4214f1 = call %struct.Memory* @routine_jmpq_.L_4214f6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4214f1, i64 5, i64 5)
  store %struct.Memory* %call_4214f1, %struct.Memory** %MEMORY

  br label %block_.L_4214f6

  ; Code: .L_4214f6:	 RIP: 4214f6	 Bytes: 0
block_.L_4214f6:

  ; Code: jmpq .L_421739	 RIP: 4214f6	 Bytes: 5
  %loadMem_4214f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4214f6 = call %struct.Memory* @routine_jmpq_.L_421739(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4214f6, i64 579, i64 5)
  store %struct.Memory* %call_4214f6, %struct.Memory** %MEMORY

  br label %block_.L_421739

  ; Code: .L_4214fb:	 RIP: 4214fb	 Bytes: 0
block_.L_4214fb:

  ; Code: movq -0x238(%rbp), %rdi	 RIP: 4214fb	 Bytes: 7
  %loadMem_4214fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4214fb = call %struct.Memory* @routine_movq_MINUS0x238__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4214fb)
  store %struct.Memory* %call_4214fb, %struct.Memory** %MEMORY

  ; Code: movl $0x457937, %eax	 RIP: 421502	 Bytes: 5
  %loadMem_421502 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421502 = call %struct.Memory* @routine_movl__0x457937___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421502)
  store %struct.Memory* %call_421502, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 421507	 Bytes: 2
  %loadMem_421507 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421507 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421507)
  store %struct.Memory* %call_421507, %struct.Memory** %MEMORY

  ; Code: callq .strcmp_plt	 RIP: 421509	 Bytes: 5
  %loadMem1_421509 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421509 = call %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421509, i64 -130985, i64 5, i64 5)
  store %struct.Memory* %call1_421509, %struct.Memory** %MEMORY

  %loadMem2_421509 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421509 = load i64, i64* %3
  %call2_421509 = call %struct.Memory* @ext_strcmp(%struct.State* %0, i64  %loadPC_421509, %struct.Memory* %loadMem2_421509)
  store %struct.Memory* %call2_421509, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 42150e	 Bytes: 3
  %loadMem_42150e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42150e = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42150e)
  store %struct.Memory* %call_42150e, %struct.Memory** %MEMORY

  ; Code: jne .L_421727	 RIP: 421511	 Bytes: 6
  %loadMem_421511 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421511 = call %struct.Memory* @routine_jne_.L_421727(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421511, i8* %BRANCH_TAKEN, i64 534, i64 6, i64 6)
  store %struct.Memory* %call_421511, %struct.Memory** %MEMORY

  %loadBr_421511 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421511 = icmp eq i8 %loadBr_421511, 1
  br i1 %cmpBr_421511, label %block_.L_421727, label %block_421517

block_421517:
  ; Code: movl $0x200, %esi	 RIP: 421517	 Bytes: 5
  %loadMem_421517 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421517 = call %struct.Memory* @routine_movl__0x200___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421517)
  store %struct.Memory* %call_421517, %struct.Memory** %MEMORY

  ; Code: leaq -0x230(%rbp), %rdi	 RIP: 42151c	 Bytes: 7
  %loadMem_42151c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42151c = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42151c)
  store %struct.Memory* %call_42151c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 421523	 Bytes: 4
  %loadMem_421523 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421523 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421523)
  store %struct.Memory* %call_421523, %struct.Memory** %MEMORY

  ; Code: callq .fgets_plt	 RIP: 421527	 Bytes: 5
  %loadMem1_421527 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421527 = call %struct.Memory* @routine_callq_.fgets_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421527, i64 -131047, i64 5, i64 5)
  store %struct.Memory* %call1_421527, %struct.Memory** %MEMORY

  %loadMem2_421527 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421527 = load i64, i64* %3
  %call2_421527 = call %struct.Memory* @sub_401540.fgets_plt(%struct.State* %0, i64  %loadPC_421527, %struct.Memory* %loadMem2_421527)
  store %struct.Memory* %call2_421527, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 42152c	 Bytes: 4
  %loadMem_42152c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42152c = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42152c)
  store %struct.Memory* %call_42152c, %struct.Memory** %MEMORY

  ; Code: jne .L_421543	 RIP: 421530	 Bytes: 6
  %loadMem_421530 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421530 = call %struct.Memory* @routine_jne_.L_421543(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421530, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_421530, %struct.Memory** %MEMORY

  %loadBr_421530 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421530 = icmp eq i8 %loadBr_421530, 1
  br i1 %cmpBr_421530, label %block_.L_421543, label %block_421536

block_421536:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 421536	 Bytes: 8
  %loadMem_421536 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421536 = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421536)
  store %struct.Memory* %call_421536, %struct.Memory** %MEMORY

  ; Code: jmpq .L_421764	 RIP: 42153e	 Bytes: 5
  %loadMem_42153e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42153e = call %struct.Memory* @routine_jmpq_.L_421764(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42153e, i64 550, i64 5)
  store %struct.Memory* %call_42153e, %struct.Memory** %MEMORY

  br label %block_.L_421764

  ; Code: .L_421543:	 RIP: 421543	 Bytes: 0
block_.L_421543:

  ; Code: movq $0x45a1f5, %rsi	 RIP: 421543	 Bytes: 10
  %loadMem_421543 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421543 = call %struct.Memory* @routine_movq__0x45a1f5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421543)
  store %struct.Memory* %call_421543, %struct.Memory** %MEMORY

  ; Code: leaq -0x230(%rbp), %rdi	 RIP: 42154d	 Bytes: 7
  %loadMem_42154d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42154d = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42154d)
  store %struct.Memory* %call_42154d, %struct.Memory** %MEMORY

  ; Code: callq .strtok_plt	 RIP: 421554	 Bytes: 5
  %loadMem1_421554 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421554 = call %struct.Memory* @routine_callq_.strtok_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421554, i64 -130804, i64 5, i64 5)
  store %struct.Memory* %call1_421554, %struct.Memory** %MEMORY

  %loadMem2_421554 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421554 = load i64, i64* %3
  %call2_421554 = call %struct.Memory* @sub_401660.strtok_plt(%struct.State* %0, i64  %loadPC_421554, %struct.Memory* %loadMem2_421554)
  store %struct.Memory* %call2_421554, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x240(%rbp)	 RIP: 421559	 Bytes: 7
  %loadMem_421559 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421559 = call %struct.Memory* @routine_movq__rax__MINUS0x240__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421559)
  store %struct.Memory* %call_421559, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 421560	 Bytes: 4
  %loadMem_421560 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421560 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421560)
  store %struct.Memory* %call_421560, %struct.Memory** %MEMORY

  ; Code: jne .L_421577	 RIP: 421564	 Bytes: 6
  %loadMem_421564 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421564 = call %struct.Memory* @routine_jne_.L_421577(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421564, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_421564, %struct.Memory** %MEMORY

  %loadBr_421564 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421564 = icmp eq i8 %loadBr_421564, 1
  br i1 %cmpBr_421564, label %block_.L_421577, label %block_42156a

block_42156a:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 42156a	 Bytes: 8
  %loadMem_42156a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42156a = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42156a)
  store %struct.Memory* %call_42156a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_421764	 RIP: 421572	 Bytes: 5
  %loadMem_421572 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421572 = call %struct.Memory* @routine_jmpq_.L_421764(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421572, i64 498, i64 5)
  store %struct.Memory* %call_421572, %struct.Memory** %MEMORY

  br label %block_.L_421764

  ; Code: .L_421577:	 RIP: 421577	 Bytes: 0
block_.L_421577:

  ; Code: movq -0x240(%rbp), %rdi	 RIP: 421577	 Bytes: 7
  %loadMem_421577 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421577 = call %struct.Memory* @routine_movq_MINUS0x240__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421577)
  store %struct.Memory* %call_421577, %struct.Memory** %MEMORY

  ; Code: callq .atof_plt	 RIP: 42157e	 Bytes: 5
  %loadMem1_42157e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42157e = call %struct.Memory* @routine_callq_.atof_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42157e, i64 -131406, i64 5, i64 5)
  store %struct.Memory* %call1_42157e, %struct.Memory** %MEMORY

  %loadMem2_42157e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42157e = load i64, i64* %3
  %call2_42157e = call %struct.Memory* @ext_atof(%struct.State* %0, i64  %loadPC_42157e, %struct.Memory* %loadMem2_42157e)
  store %struct.Memory* %call2_42157e, %struct.Memory** %MEMORY

  ; Code: movl $0x200, %esi	 RIP: 421583	 Bytes: 5
  %loadMem_421583 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421583 = call %struct.Memory* @routine_movl__0x200___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421583)
  store %struct.Memory* %call_421583, %struct.Memory** %MEMORY

  ; Code: leaq -0x230(%rbp), %rdi	 RIP: 421588	 Bytes: 7
  %loadMem_421588 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421588 = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421588)
  store %struct.Memory* %call_421588, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 42158f	 Bytes: 4
  %loadMem_42158f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42158f = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42158f)
  store %struct.Memory* %call_42158f, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 421593	 Bytes: 4
  %loadMem_421593 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421593 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421593)
  store %struct.Memory* %call_421593, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rax), %rax	 RIP: 421597	 Bytes: 4
  %loadMem_421597 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421597 = call %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421597)
  store %struct.Memory* %call_421597, %struct.Memory** %MEMORY

  ; Code: movslq -0x244(%rbp), %rcx	 RIP: 42159b	 Bytes: 7
  %loadMem_42159b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42159b = call %struct.Memory* @routine_movslq_MINUS0x244__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42159b)
  store %struct.Memory* %call_42159b, %struct.Memory** %MEMORY

  ; Code: imulq $0x5c, %rcx, %rcx	 RIP: 4215a2	 Bytes: 4
  %loadMem_4215a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4215a2 = call %struct.Memory* @routine_imulq__0x5c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4215a2)
  store %struct.Memory* %call_4215a2, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4215a6	 Bytes: 3
  %loadMem_4215a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4215a6 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4215a6)
  store %struct.Memory* %call_4215a6, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, (%rax)	 RIP: 4215a9	 Bytes: 4
  %loadMem_4215a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4215a9 = call %struct.Memory* @routine_movss__xmm0____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4215a9)
  store %struct.Memory* %call_4215a9, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4215ad	 Bytes: 4
  %loadMem_4215ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4215ad = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4215ad)
  store %struct.Memory* %call_4215ad, %struct.Memory** %MEMORY

  ; Code: callq .fgets_plt	 RIP: 4215b1	 Bytes: 5
  %loadMem1_4215b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4215b1 = call %struct.Memory* @routine_callq_.fgets_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4215b1, i64 -131185, i64 5, i64 5)
  store %struct.Memory* %call1_4215b1, %struct.Memory** %MEMORY

  %loadMem2_4215b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4215b1 = load i64, i64* %3
  %call2_4215b1 = call %struct.Memory* @sub_401540.fgets_plt(%struct.State* %0, i64  %loadPC_4215b1, %struct.Memory* %loadMem2_4215b1)
  store %struct.Memory* %call2_4215b1, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 4215b6	 Bytes: 4
  %loadMem_4215b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4215b6 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4215b6)
  store %struct.Memory* %call_4215b6, %struct.Memory** %MEMORY

  ; Code: jne .L_4215cd	 RIP: 4215ba	 Bytes: 6
  %loadMem_4215ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4215ba = call %struct.Memory* @routine_jne_.L_4215cd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4215ba, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_4215ba, %struct.Memory** %MEMORY

  %loadBr_4215ba = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4215ba = icmp eq i8 %loadBr_4215ba, 1
  br i1 %cmpBr_4215ba, label %block_.L_4215cd, label %block_4215c0

block_4215c0:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 4215c0	 Bytes: 8
  %loadMem_4215c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4215c0 = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4215c0)
  store %struct.Memory* %call_4215c0, %struct.Memory** %MEMORY

  ; Code: jmpq .L_421764	 RIP: 4215c8	 Bytes: 5
  %loadMem_4215c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4215c8 = call %struct.Memory* @routine_jmpq_.L_421764(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4215c8, i64 412, i64 5)
  store %struct.Memory* %call_4215c8, %struct.Memory** %MEMORY

  br label %block_.L_421764

  ; Code: .L_4215cd:	 RIP: 4215cd	 Bytes: 0
block_.L_4215cd:

  ; Code: movq $0x45a1f5, %rsi	 RIP: 4215cd	 Bytes: 10
  %loadMem_4215cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4215cd = call %struct.Memory* @routine_movq__0x45a1f5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4215cd)
  store %struct.Memory* %call_4215cd, %struct.Memory** %MEMORY

  ; Code: leaq -0x230(%rbp), %rdi	 RIP: 4215d7	 Bytes: 7
  %loadMem_4215d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4215d7 = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4215d7)
  store %struct.Memory* %call_4215d7, %struct.Memory** %MEMORY

  ; Code: callq .strtok_plt	 RIP: 4215de	 Bytes: 5
  %loadMem1_4215de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4215de = call %struct.Memory* @routine_callq_.strtok_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4215de, i64 -130942, i64 5, i64 5)
  store %struct.Memory* %call1_4215de, %struct.Memory** %MEMORY

  %loadMem2_4215de = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4215de = load i64, i64* %3
  %call2_4215de = call %struct.Memory* @sub_401660.strtok_plt(%struct.State* %0, i64  %loadPC_4215de, %struct.Memory* %loadMem2_4215de)
  store %struct.Memory* %call2_4215de, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x240(%rbp)	 RIP: 4215e3	 Bytes: 7
  %loadMem_4215e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4215e3 = call %struct.Memory* @routine_movq__rax__MINUS0x240__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4215e3)
  store %struct.Memory* %call_4215e3, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 4215ea	 Bytes: 4
  %loadMem_4215ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4215ea = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4215ea)
  store %struct.Memory* %call_4215ea, %struct.Memory** %MEMORY

  ; Code: jne .L_421601	 RIP: 4215ee	 Bytes: 6
  %loadMem_4215ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4215ee = call %struct.Memory* @routine_jne_.L_421601(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4215ee, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_4215ee, %struct.Memory** %MEMORY

  %loadBr_4215ee = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4215ee = icmp eq i8 %loadBr_4215ee, 1
  br i1 %cmpBr_4215ee, label %block_.L_421601, label %block_4215f4

block_4215f4:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 4215f4	 Bytes: 8
  %loadMem_4215f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4215f4 = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4215f4)
  store %struct.Memory* %call_4215f4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_421764	 RIP: 4215fc	 Bytes: 5
  %loadMem_4215fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4215fc = call %struct.Memory* @routine_jmpq_.L_421764(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4215fc, i64 360, i64 5)
  store %struct.Memory* %call_4215fc, %struct.Memory** %MEMORY

  br label %block_.L_421764

  ; Code: .L_421601:	 RIP: 421601	 Bytes: 0
block_.L_421601:

  ; Code: movq -0x240(%rbp), %rdi	 RIP: 421601	 Bytes: 7
  %loadMem_421601 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421601 = call %struct.Memory* @routine_movq_MINUS0x240__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421601)
  store %struct.Memory* %call_421601, %struct.Memory** %MEMORY

  ; Code: callq .atof_plt	 RIP: 421608	 Bytes: 5
  %loadMem1_421608 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421608 = call %struct.Memory* @routine_callq_.atof_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421608, i64 -131544, i64 5, i64 5)
  store %struct.Memory* %call1_421608, %struct.Memory** %MEMORY

  %loadMem2_421608 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421608 = load i64, i64* %3
  %call2_421608 = call %struct.Memory* @ext_atof(%struct.State* %0, i64  %loadPC_421608, %struct.Memory* %loadMem2_421608)
  store %struct.Memory* %call2_421608, %struct.Memory** %MEMORY

  ; Code: movl $0x200, %esi	 RIP: 42160d	 Bytes: 5
  %loadMem_42160d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42160d = call %struct.Memory* @routine_movl__0x200___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42160d)
  store %struct.Memory* %call_42160d, %struct.Memory** %MEMORY

  ; Code: leaq -0x230(%rbp), %rdi	 RIP: 421612	 Bytes: 7
  %loadMem_421612 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421612 = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421612)
  store %struct.Memory* %call_421612, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 421619	 Bytes: 4
  %loadMem_421619 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421619 = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421619)
  store %struct.Memory* %call_421619, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 42161d	 Bytes: 4
  %loadMem_42161d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42161d = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42161d)
  store %struct.Memory* %call_42161d, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rax), %rax	 RIP: 421621	 Bytes: 4
  %loadMem_421621 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421621 = call %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421621)
  store %struct.Memory* %call_421621, %struct.Memory** %MEMORY

  ; Code: movslq -0x244(%rbp), %rcx	 RIP: 421625	 Bytes: 7
  %loadMem_421625 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421625 = call %struct.Memory* @routine_movslq_MINUS0x244__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421625)
  store %struct.Memory* %call_421625, %struct.Memory** %MEMORY

  ; Code: imulq $0x5c, %rcx, %rcx	 RIP: 42162c	 Bytes: 4
  %loadMem_42162c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42162c = call %struct.Memory* @routine_imulq__0x5c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42162c)
  store %struct.Memory* %call_42162c, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 421630	 Bytes: 3
  %loadMem_421630 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421630 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421630)
  store %struct.Memory* %call_421630, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x8(%rax)	 RIP: 421633	 Bytes: 5
  %loadMem_421633 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421633 = call %struct.Memory* @routine_movss__xmm0__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421633)
  store %struct.Memory* %call_421633, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 421638	 Bytes: 4
  %loadMem_421638 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421638 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421638)
  store %struct.Memory* %call_421638, %struct.Memory** %MEMORY

  ; Code: callq .fgets_plt	 RIP: 42163c	 Bytes: 5
  %loadMem1_42163c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42163c = call %struct.Memory* @routine_callq_.fgets_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42163c, i64 -131324, i64 5, i64 5)
  store %struct.Memory* %call1_42163c, %struct.Memory** %MEMORY

  %loadMem2_42163c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42163c = load i64, i64* %3
  %call2_42163c = call %struct.Memory* @sub_401540.fgets_plt(%struct.State* %0, i64  %loadPC_42163c, %struct.Memory* %loadMem2_42163c)
  store %struct.Memory* %call2_42163c, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 421641	 Bytes: 4
  %loadMem_421641 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421641 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421641)
  store %struct.Memory* %call_421641, %struct.Memory** %MEMORY

  ; Code: jne .L_421658	 RIP: 421645	 Bytes: 6
  %loadMem_421645 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421645 = call %struct.Memory* @routine_jne_.L_421658(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421645, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_421645, %struct.Memory** %MEMORY

  %loadBr_421645 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421645 = icmp eq i8 %loadBr_421645, 1
  br i1 %cmpBr_421645, label %block_.L_421658, label %block_42164b

block_42164b:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 42164b	 Bytes: 8
  %loadMem_42164b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42164b = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42164b)
  store %struct.Memory* %call_42164b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_421764	 RIP: 421653	 Bytes: 5
  %loadMem_421653 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421653 = call %struct.Memory* @routine_jmpq_.L_421764(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421653, i64 273, i64 5)
  store %struct.Memory* %call_421653, %struct.Memory** %MEMORY

  br label %block_.L_421764

  ; Code: .L_421658:	 RIP: 421658	 Bytes: 0
block_.L_421658:

  ; Code: movq $0x45a1f5, %rsi	 RIP: 421658	 Bytes: 10
  %loadMem_421658 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421658 = call %struct.Memory* @routine_movq__0x45a1f5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421658)
  store %struct.Memory* %call_421658, %struct.Memory** %MEMORY

  ; Code: leaq -0x230(%rbp), %rdi	 RIP: 421662	 Bytes: 7
  %loadMem_421662 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421662 = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421662)
  store %struct.Memory* %call_421662, %struct.Memory** %MEMORY

  ; Code: callq .strtok_plt	 RIP: 421669	 Bytes: 5
  %loadMem1_421669 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421669 = call %struct.Memory* @routine_callq_.strtok_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421669, i64 -131081, i64 5, i64 5)
  store %struct.Memory* %call1_421669, %struct.Memory** %MEMORY

  %loadMem2_421669 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421669 = load i64, i64* %3
  %call2_421669 = call %struct.Memory* @sub_401660.strtok_plt(%struct.State* %0, i64  %loadPC_421669, %struct.Memory* %loadMem2_421669)
  store %struct.Memory* %call2_421669, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x240(%rbp)	 RIP: 42166e	 Bytes: 7
  %loadMem_42166e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42166e = call %struct.Memory* @routine_movq__rax__MINUS0x240__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42166e)
  store %struct.Memory* %call_42166e, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 421675	 Bytes: 4
  %loadMem_421675 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421675 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421675)
  store %struct.Memory* %call_421675, %struct.Memory** %MEMORY

  ; Code: jne .L_42168c	 RIP: 421679	 Bytes: 6
  %loadMem_421679 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421679 = call %struct.Memory* @routine_jne_.L_42168c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421679, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_421679, %struct.Memory** %MEMORY

  %loadBr_421679 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421679 = icmp eq i8 %loadBr_421679, 1
  br i1 %cmpBr_421679, label %block_.L_42168c, label %block_42167f

block_42167f:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 42167f	 Bytes: 8
  %loadMem_42167f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42167f = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42167f)
  store %struct.Memory* %call_42167f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_421764	 RIP: 421687	 Bytes: 5
  %loadMem_421687 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421687 = call %struct.Memory* @routine_jmpq_.L_421764(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421687, i64 221, i64 5)
  store %struct.Memory* %call_421687, %struct.Memory** %MEMORY

  br label %block_.L_421764

  ; Code: .L_42168c:	 RIP: 42168c	 Bytes: 0
block_.L_42168c:

  ; Code: movq -0x240(%rbp), %rdi	 RIP: 42168c	 Bytes: 7
  %loadMem_42168c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42168c = call %struct.Memory* @routine_movq_MINUS0x240__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42168c)
  store %struct.Memory* %call_42168c, %struct.Memory** %MEMORY

  ; Code: callq .atof_plt	 RIP: 421693	 Bytes: 5
  %loadMem1_421693 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421693 = call %struct.Memory* @routine_callq_.atof_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421693, i64 -131683, i64 5, i64 5)
  store %struct.Memory* %call1_421693, %struct.Memory** %MEMORY

  %loadMem2_421693 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421693 = load i64, i64* %3
  %call2_421693 = call %struct.Memory* @ext_atof(%struct.State* %0, i64  %loadPC_421693, %struct.Memory* %loadMem2_421693)
  store %struct.Memory* %call2_421693, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 421698	 Bytes: 4
  %loadMem_421698 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421698 = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421698)
  store %struct.Memory* %call_421698, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 42169c	 Bytes: 4
  %loadMem_42169c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42169c = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42169c)
  store %struct.Memory* %call_42169c, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rdi), %rdi	 RIP: 4216a0	 Bytes: 4
  %loadMem_4216a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4216a0 = call %struct.Memory* @routine_movq_0x18__rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4216a0)
  store %struct.Memory* %call_4216a0, %struct.Memory** %MEMORY

  ; Code: movslq -0x244(%rbp), %rax	 RIP: 4216a4	 Bytes: 7
  %loadMem_4216a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4216a4 = call %struct.Memory* @routine_movslq_MINUS0x244__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4216a4)
  store %struct.Memory* %call_4216a4, %struct.Memory** %MEMORY

  ; Code: imulq $0x5c, %rax, %rax	 RIP: 4216ab	 Bytes: 4
  %loadMem_4216ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4216ab = call %struct.Memory* @routine_imulq__0x5c___rax___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4216ab)
  store %struct.Memory* %call_4216ab, %struct.Memory** %MEMORY

  ; Code: addq %rax, %rdi	 RIP: 4216af	 Bytes: 3
  %loadMem_4216af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4216af = call %struct.Memory* @routine_addq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4216af)
  store %struct.Memory* %call_4216af, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x4(%rdi)	 RIP: 4216b2	 Bytes: 5
  %loadMem_4216b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4216b2 = call %struct.Memory* @routine_movss__xmm0__0x4__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4216b2)
  store %struct.Memory* %call_4216b2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, -0x14(%rbp)	 RIP: 4216b7	 Bytes: 4
  %loadMem_4216b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4216b7 = call %struct.Memory* @routine_cmpl__0x2__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4216b7)
  store %struct.Memory* %call_4216b7, %struct.Memory** %MEMORY

  ; Code: jne .L_421722	 RIP: 4216bb	 Bytes: 6
  %loadMem_4216bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4216bb = call %struct.Memory* @routine_jne_.L_421722(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4216bb, i8* %BRANCH_TAKEN, i64 103, i64 6, i64 6)
  store %struct.Memory* %call_4216bb, %struct.Memory** %MEMORY

  %loadBr_4216bb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4216bb = icmp eq i8 %loadBr_4216bb, 1
  br i1 %cmpBr_4216bb, label %block_.L_421722, label %block_4216c1

block_4216c1:
  ; Code: movl $0x0, -0x248(%rbp)	 RIP: 4216c1	 Bytes: 10
  %loadMem_4216c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4216c1 = call %struct.Memory* @routine_movl__0x0__MINUS0x248__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4216c1)
  store %struct.Memory* %call_4216c1, %struct.Memory** %MEMORY

  ; Code: .L_4216cb:	 RIP: 4216cb	 Bytes: 0
  br label %block_.L_4216cb
block_.L_4216cb:

  ; Code: cmpl $0x3, -0x248(%rbp)	 RIP: 4216cb	 Bytes: 7
  %loadMem_4216cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4216cb = call %struct.Memory* @routine_cmpl__0x3__MINUS0x248__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4216cb)
  store %struct.Memory* %call_4216cb, %struct.Memory** %MEMORY

  ; Code: jge .L_42171d	 RIP: 4216d2	 Bytes: 6
  %loadMem_4216d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4216d2 = call %struct.Memory* @routine_jge_.L_42171d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4216d2, i8* %BRANCH_TAKEN, i64 75, i64 6, i64 6)
  store %struct.Memory* %call_4216d2, %struct.Memory** %MEMORY

  %loadBr_4216d2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4216d2 = icmp eq i8 %loadBr_4216d2, 1
  br i1 %cmpBr_4216d2, label %block_.L_42171d, label %block_4216d8

block_4216d8:
  ; Code: movl $0x200, %esi	 RIP: 4216d8	 Bytes: 5
  %loadMem_4216d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4216d8 = call %struct.Memory* @routine_movl__0x200___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4216d8)
  store %struct.Memory* %call_4216d8, %struct.Memory** %MEMORY

  ; Code: leaq -0x230(%rbp), %rdi	 RIP: 4216dd	 Bytes: 7
  %loadMem_4216dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4216dd = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4216dd)
  store %struct.Memory* %call_4216dd, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4216e4	 Bytes: 4
  %loadMem_4216e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4216e4 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4216e4)
  store %struct.Memory* %call_4216e4, %struct.Memory** %MEMORY

  ; Code: callq .fgets_plt	 RIP: 4216e8	 Bytes: 5
  %loadMem1_4216e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4216e8 = call %struct.Memory* @routine_callq_.fgets_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4216e8, i64 -131496, i64 5, i64 5)
  store %struct.Memory* %call1_4216e8, %struct.Memory** %MEMORY

  %loadMem2_4216e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4216e8 = load i64, i64* %3
  %call2_4216e8 = call %struct.Memory* @sub_401540.fgets_plt(%struct.State* %0, i64  %loadPC_4216e8, %struct.Memory* %loadMem2_4216e8)
  store %struct.Memory* %call2_4216e8, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 4216ed	 Bytes: 4
  %loadMem_4216ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4216ed = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4216ed)
  store %struct.Memory* %call_4216ed, %struct.Memory** %MEMORY

  ; Code: jne .L_421704	 RIP: 4216f1	 Bytes: 6
  %loadMem_4216f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4216f1 = call %struct.Memory* @routine_jne_.L_421704(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4216f1, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_4216f1, %struct.Memory** %MEMORY

  %loadBr_4216f1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4216f1 = icmp eq i8 %loadBr_4216f1, 1
  br i1 %cmpBr_4216f1, label %block_.L_421704, label %block_4216f7

block_4216f7:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 4216f7	 Bytes: 8
  %loadMem_4216f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4216f7 = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4216f7)
  store %struct.Memory* %call_4216f7, %struct.Memory** %MEMORY

  ; Code: jmpq .L_421764	 RIP: 4216ff	 Bytes: 5
  %loadMem_4216ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4216ff = call %struct.Memory* @routine_jmpq_.L_421764(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4216ff, i64 101, i64 5)
  store %struct.Memory* %call_4216ff, %struct.Memory** %MEMORY

  br label %block_.L_421764

  ; Code: .L_421704:	 RIP: 421704	 Bytes: 0
block_.L_421704:

  ; Code: jmpq .L_421709	 RIP: 421704	 Bytes: 5
  %loadMem_421704 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421704 = call %struct.Memory* @routine_jmpq_.L_421709(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421704, i64 5, i64 5)
  store %struct.Memory* %call_421704, %struct.Memory** %MEMORY

  br label %block_.L_421709

  ; Code: .L_421709:	 RIP: 421709	 Bytes: 0
block_.L_421709:

  ; Code: movl -0x248(%rbp), %eax	 RIP: 421709	 Bytes: 6
  %loadMem_421709 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421709 = call %struct.Memory* @routine_movl_MINUS0x248__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421709)
  store %struct.Memory* %call_421709, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 42170f	 Bytes: 3
  %loadMem_42170f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42170f = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42170f)
  store %struct.Memory* %call_42170f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x248(%rbp)	 RIP: 421712	 Bytes: 6
  %loadMem_421712 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421712 = call %struct.Memory* @routine_movl__eax__MINUS0x248__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421712)
  store %struct.Memory* %call_421712, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4216cb	 RIP: 421718	 Bytes: 5
  %loadMem_421718 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421718 = call %struct.Memory* @routine_jmpq_.L_4216cb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421718, i64 -77, i64 5)
  store %struct.Memory* %call_421718, %struct.Memory** %MEMORY

  br label %block_.L_4216cb

  ; Code: .L_42171d:	 RIP: 42171d	 Bytes: 0
block_.L_42171d:

  ; Code: jmpq .L_421722	 RIP: 42171d	 Bytes: 5
  %loadMem_42171d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42171d = call %struct.Memory* @routine_jmpq_.L_421722(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42171d, i64 5, i64 5)
  store %struct.Memory* %call_42171d, %struct.Memory** %MEMORY

  br label %block_.L_421722

  ; Code: .L_421722:	 RIP: 421722	 Bytes: 0
block_.L_421722:

  ; Code: jmpq .L_421734	 RIP: 421722	 Bytes: 5
  %loadMem_421722 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421722 = call %struct.Memory* @routine_jmpq_.L_421734(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421722, i64 18, i64 5)
  store %struct.Memory* %call_421722, %struct.Memory** %MEMORY

  br label %block_.L_421734

  ; Code: .L_421727:	 RIP: 421727	 Bytes: 0
block_.L_421727:

  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 421727	 Bytes: 8
  %loadMem_421727 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421727 = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421727)
  store %struct.Memory* %call_421727, %struct.Memory** %MEMORY

  ; Code: jmpq .L_421764	 RIP: 42172f	 Bytes: 5
  %loadMem_42172f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42172f = call %struct.Memory* @routine_jmpq_.L_421764(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42172f, i64 53, i64 5)
  store %struct.Memory* %call_42172f, %struct.Memory** %MEMORY

  br label %block_.L_421764

  ; Code: .L_421734:	 RIP: 421734	 Bytes: 0
block_.L_421734:

  ; Code: jmpq .L_421739	 RIP: 421734	 Bytes: 5
  %loadMem_421734 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421734 = call %struct.Memory* @routine_jmpq_.L_421739(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421734, i64 5, i64 5)
  store %struct.Memory* %call_421734, %struct.Memory** %MEMORY

  br label %block_.L_421739

  ; Code: .L_421739:	 RIP: 421739	 Bytes: 0
block_.L_421739:

  ; Code: jmpq .L_42173e	 RIP: 421739	 Bytes: 5
  %loadMem_421739 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421739 = call %struct.Memory* @routine_jmpq_.L_42173e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421739, i64 5, i64 5)
  store %struct.Memory* %call_421739, %struct.Memory** %MEMORY

  br label %block_.L_42173e

  ; Code: .L_42173e:	 RIP: 42173e	 Bytes: 0
block_.L_42173e:

  ; Code: jmpq .L_420cb0	 RIP: 42173e	 Bytes: 5
  %loadMem_42173e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42173e = call %struct.Memory* @routine_jmpq_.L_420cb0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42173e, i64 -2702, i64 5)
  store %struct.Memory* %call_42173e, %struct.Memory** %MEMORY

  br label %block_.L_420cb0

  ; Code: .L_421743:	 RIP: 421743	 Bytes: 0
block_.L_421743:

  ; Code: movq -0x20(%rbp), %rax	 RIP: 421743	 Bytes: 4
  %loadMem_421743 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421743 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421743)
  store %struct.Memory* %call_421743, %struct.Memory** %MEMORY

  ; Code: addq $0x20, %rax	 RIP: 421747	 Bytes: 4
  %loadMem_421747 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421747 = call %struct.Memory* @routine_addq__0x20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421747)
  store %struct.Memory* %call_421747, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 42174b	 Bytes: 3
  %loadMem_42174b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42174b = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42174b)
  store %struct.Memory* %call_42174b, %struct.Memory** %MEMORY

  ; Code: callq .P9DefaultNullModel	 RIP: 42174e	 Bytes: 5
  %loadMem1_42174e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42174e = call %struct.Memory* @routine_callq_.P9DefaultNullModel(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42174e, i64 81810, i64 5, i64 5)
  store %struct.Memory* %call1_42174e, %struct.Memory** %MEMORY

  %loadMem2_42174e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42174e = load i64, i64* %3
  %call2_42174e = call %struct.Memory* @sub_4356e0.P9DefaultNullModel(%struct.State* %0, i64  %loadPC_42174e, %struct.Memory* %loadMem2_42174e)
  store %struct.Memory* %call2_42174e, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 421753	 Bytes: 4
  %loadMem_421753 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421753 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421753)
  store %struct.Memory* %call_421753, %struct.Memory** %MEMORY

  ; Code: callq .P9Renormalize	 RIP: 421757	 Bytes: 5
  %loadMem1_421757 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421757 = call %struct.Memory* @routine_callq_.P9Renormalize(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421757, i64 81545, i64 5, i64 5)
  store %struct.Memory* %call1_421757, %struct.Memory** %MEMORY

  %loadMem2_421757 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421757 = load i64, i64* %3
  %call2_421757 = call %struct.Memory* @sub_4355e0.P9Renormalize(%struct.State* %0, i64  %loadPC_421757, %struct.Memory* %loadMem2_421757)
  store %struct.Memory* %call2_421757, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 42175c	 Bytes: 4
  %loadMem_42175c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42175c = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42175c)
  store %struct.Memory* %call_42175c, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x8(%rbp)	 RIP: 421760	 Bytes: 4
  %loadMem_421760 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421760 = call %struct.Memory* @routine_movq__rax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421760)
  store %struct.Memory* %call_421760, %struct.Memory** %MEMORY

  ; Code: .L_421764:	 RIP: 421764	 Bytes: 0
  br label %block_.L_421764
block_.L_421764:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 421764	 Bytes: 4
  %loadMem_421764 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421764 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421764)
  store %struct.Memory* %call_421764, %struct.Memory** %MEMORY

  ; Code: addq $0x260, %rsp	 RIP: 421768	 Bytes: 7
  %loadMem_421768 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421768 = call %struct.Memory* @routine_addq__0x260___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421768)
  store %struct.Memory* %call_421768, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 42176f	 Bytes: 1
  %loadMem_42176f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42176f = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42176f)
  store %struct.Memory* %call_42176f, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 421770	 Bytes: 1
  %loadMem_421770 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421770 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421770)
  store %struct.Memory* %call_421770, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_421770
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

define %struct.Memory* @routine_subq__0x260___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 608)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x200___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 512)
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_leaq_MINUS0x230__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 560
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__esi__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 20
  %14 = load i32, i32* %ESI
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

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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

define %struct.Memory* @routine_jne_.L_420863(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_421764(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_leaq_MINUS0x230__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 560
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movq__rax__MINUS0x240__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 576
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jne_.L_420897(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_callq_.__ctype_b_loc_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_MINUS0x240__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 576
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
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

define %struct.Memory* @routine_movsbl___rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12)
  ret %struct.Memory* %15
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq__edx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i16*
  %6 = load i16, i16* %5
  %7 = zext i16 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movzwl___rax__rcx_2____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 2
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %18)
  ret %struct.Memory* %21
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

define %struct.Memory* @routine_andl__0x800___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 2048)
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


define %struct.Memory* @routine_jne_.L_4208cc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movq_MINUS0x240__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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




define %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 36
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_jne_.L_420907(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_jne_.L_42093b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






















define %struct.Memory* @routine_jne_.L_420970(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl__0x4__MINUS0x24c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 588
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 4)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_42099e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__0x2__MINUS0x250__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 592
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_4209d6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_cmpl__0x14__MINUS0x24c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 588
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 20)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_4209ba(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x3__MINUS0x250__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 592
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_4209d1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x457852___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x457852_type* @G__0x457852 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_MINUS0x24c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 588
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
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


define %struct.Memory* @routine_jne_.L_4209f4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x250__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_jmpq_.L_420a45(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_MINUS0x250__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 592
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

define %struct.Memory* @routine_je_.L_420a40(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq__rax__MINUS0x258__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 600
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


define %struct.Memory* @routine_movq_MINUS0x258__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 600
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








define %struct.Memory* @routine_movl_MINUS0x24__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.P9AllocHMM(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_420a6c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4578f2___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4578f2_type* @G__0x4578f2 to i64))
  ret %struct.Memory* %11
}
















define %struct.Memory* @routine_jne_.L_420a98(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_jne_.L_420acc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






















define %struct.Memory* @routine_jne_.L_420b01(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_jne_.L_420b2d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_jne_.L_420b61(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_cmpl__0x2__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_420bd2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x0__MINUS0x248__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 584
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x248__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_jge_.L_420bcd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jne_.L_420bb4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jmpq_.L_420bb9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_420b75(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_420bd2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_cmpl__0x6__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 6)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_420cab(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jne_.L_420c08(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movq__0x457914___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x457914_type* @G__0x457914 to i64))
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


define %struct.Memory* @routine_jne_.L_420c41(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_0x90__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 144
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

define %struct.Memory* @routine_orl__0x1___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2ORI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__ecx__0x90__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 144
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}












define %struct.Memory* @routine_jne_.L_420c6d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


















define %struct.Memory* @routine_jne_.L_420ca6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_orl__0x2___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2ORI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 2)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_jmpq_.L_420cab(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_420cb0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_je_.L_421743(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movq__rax__MINUS0x238__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jne_.L_420d03(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jne_.L_420d34(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






















define %struct.Memory* @routine_jne_.L_420d69(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x244__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 580
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
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

define %struct.Memory* @routine_jl_.L_420d9f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x244__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 580
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl___rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12)
  ret %struct.Memory* %15
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

define %struct.Memory* @routine_cmpl__edx___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %EDX = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %EDX
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

define %struct.Memory* @routine_jle_.L_420dac(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movq_MINUS0x238__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__0x457918___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x457918_type* @G__0x457918 to i64))
  ret %struct.Memory* %11
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




define %struct.Memory* @routine_jne_.L_421200(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_420f21(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_MINUS0x240__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 576
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsbl___rdx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_cmpl__0x28___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 40)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i8
  %6 = inttoptr i64 %2 to i8*
  store i8 %5, i8* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__cl__MINUS0x259__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 601
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_je_.L_420e1f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_MINUS0x240__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 576
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5SETNZI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture readonly dereferenceable(3376), i8* nocapture) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_setne__dl(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SETNZI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i8* %DL)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movb__dl__MINUS0x259__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 601
  %15 = load i8, i8* %DL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
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

define %struct.Memory* @routine_movb_MINUS0x259__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 601
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
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


define %struct.Memory* @routine_jne_.L_420e32(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_420e49(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jmpq_.L_420dec(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_cmpl__0x28___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 40)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_420e69(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movb_0x1__rax____cl(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 1
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %CL, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_0x78__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 120
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_MINUS0x244__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 580
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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












define %struct.Memory* @routine_movb__cl__MINUS0x25a__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 602
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_je_.L_420eb8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movb__dl__MINUS0x25a__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 602
  %15 = load i8, i8* %DL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movb_MINUS0x25a__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 602
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jne_.L_420ecb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_420ee2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_420e85(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_je_.L_420f02(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_movq_0x80__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 128
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}
















define %struct.Memory* @routine_jne_.L_420f4d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_jne_.L_420f81(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x244__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 580
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

define %struct.Memory* @routine_imulq__0x5c___rcx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 92)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i8* nocapture readonly) #7 {
  %5 = bitcast i8* %3 to <2 x float>*
  %6 = load <2 x float>, <2 x float>* %5, align 1
  %7 = extractelement <2 x float> %6, i32 0
  %8 = inttoptr i64 %2 to float*
  store float %7, float* %8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movss__xmm0____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i8* %12)
  ret %struct.Memory* %15
}








define %struct.Memory* @routine_jne_.L_420fd7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_jne_.L_42100b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jne_.L_421062(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_jne_.L_421096(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_0x10__rdi____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 16
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movslq_MINUS0x244__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 580
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_imulq__0x5c___rax___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 92)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_addq__rax___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movss__xmm0__0x4__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_jge_.L_421185(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jne_.L_42110a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_jne_.L_42113e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






















define %struct.Memory* @routine_movslq_MINUS0x248__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movss__xmm0__0xc__rdi__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = add i64 %14, 12
  %18 = add i64 %17, %16
  %19 = bitcast %union.vec128_t* %XMM0 to i8*
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 6
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i8* %19)
  ret %struct.Memory* %22
}








define %struct.Memory* @routine_jmpq_.L_4210cb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jne_.L_4211fb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl_0x677060___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x677060_type* @G_0x677060 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_addl__0x3___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 3)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_jge_.L_4211f6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jne_.L_4211dd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jmpq_.L_4211e2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_421199(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_4211fb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_42173e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0x457927___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x457927_type* @G__0x457927 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_jne_.L_4214fb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jne_.L_421248(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_jne_.L_42127c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_jne_.L_4212d2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_jne_.L_421306(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


































define %struct.Memory* @routine_jne_.L_42135d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_jne_.L_421391(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_movq_0x8__rdi____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %10)
  ret %struct.Memory* %13
}
















define %struct.Memory* @routine_jge_.L_421480(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jne_.L_421405(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_jne_.L_421439(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
































define %struct.Memory* @routine_jmpq_.L_4213c6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jne_.L_4214f6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jge_.L_4214f1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jne_.L_4214d8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jmpq_.L_4214dd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_421494(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_4214f6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_421739(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0x457937___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x457937_type* @G__0x457937 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_jne_.L_421727(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jne_.L_421543(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_jne_.L_421577(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_jne_.L_4215cd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_jne_.L_421601(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


































define %struct.Memory* @routine_jne_.L_421658(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_jne_.L_42168c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_movq_0x18__rdi____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %10)
  ret %struct.Memory* %13
}












define %struct.Memory* @routine_jne_.L_421722(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x3__MINUS0x248__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 584
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_42171d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jne_.L_421704(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jmpq_.L_421709(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_4216cb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_421722(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_421734(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_addq__0x20___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 32)
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


define %struct.Memory* @routine_callq_.P9DefaultNullModel(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_callq_.P9Renormalize(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq__rax__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addq__0x260___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 608)
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

