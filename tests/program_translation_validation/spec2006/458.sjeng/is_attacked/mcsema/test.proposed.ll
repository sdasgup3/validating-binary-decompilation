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


; Data Access Globals


define %struct.Memory* @is_attacked(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .is_attacked:	 RIP: 4013e0	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 4013e0	 Bytes: 1
  %loadMem_4013e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013e0 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013e0)
  store %struct.Memory* %call_4013e0, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 4013e1	 Bytes: 3
  %loadMem_4013e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013e1 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013e1)
  store %struct.Memory* %call_4013e1, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x8(%rbp)	 RIP: 4013e4	 Bytes: 3
  %loadMem_4013e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013e4 = call %struct.Memory* @routine_movl__edi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013e4)
  store %struct.Memory* %call_4013e4, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0xc(%rbp)	 RIP: 4013e7	 Bytes: 3
  %loadMem_4013e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013e7 = call %struct.Memory* @routine_movl__esi__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013e7)
  store %struct.Memory* %call_4013e7, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %esi	 RIP: 4013ea	 Bytes: 3
  %loadMem_4013ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013ea = call %struct.Memory* @routine_movl_MINUS0xc__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013ea)
  store %struct.Memory* %call_4013ea, %struct.Memory** %MEMORY

  ; Code: andl $0x1, %esi	 RIP: 4013ed	 Bytes: 3
  %loadMem_4013ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013ed = call %struct.Memory* @routine_andl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013ed)
  store %struct.Memory* %call_4013ed, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %esi	 RIP: 4013f0	 Bytes: 3
  %loadMem_4013f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013f0 = call %struct.Memory* @routine_cmpl__0x0___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013f0)
  store %struct.Memory* %call_4013f0, %struct.Memory** %MEMORY

  ; Code: je .L_4015eb	 RIP: 4013f3	 Bytes: 6
  %loadMem_4013f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013f3 = call %struct.Memory* @routine_je_.L_4015eb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013f3, i8* %BRANCH_TAKEN, i64 504, i64 6, i64 6)
  store %struct.Memory* %call_4013f3, %struct.Memory** %MEMORY

  %loadBr_4013f3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4013f3 = icmp eq i8 %loadBr_4013f3, 1
  br i1 %cmpBr_4013f3, label %block_.L_4015eb, label %block_4013f9

block_4013f9:
  ; Code: movl $0x0, -0x1c(%rbp)	 RIP: 4013f9	 Bytes: 7
  %loadMem_4013f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013f9 = call %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013f9)
  store %struct.Memory* %call_4013f9, %struct.Memory** %MEMORY

  ; Code: .L_401400:	 RIP: 401400	 Bytes: 0
  br label %block_.L_401400
block_.L_401400:

  ; Code: cmpl $0x4, -0x1c(%rbp)	 RIP: 401400	 Bytes: 4
  %loadMem_401400 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401400 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401400)
  store %struct.Memory* %call_401400, %struct.Memory** %MEMORY

  ; Code: jge .L_4014d7	 RIP: 401404	 Bytes: 6
  %loadMem_401404 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401404 = call %struct.Memory* @routine_jge_.L_4014d7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401404, i8* %BRANCH_TAKEN, i64 211, i64 6, i64 6)
  store %struct.Memory* %call_401404, %struct.Memory** %MEMORY

  %loadBr_401404 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401404 = icmp eq i8 %loadBr_401404, 1
  br i1 %cmpBr_401404, label %block_.L_4014d7, label %block_40140a

block_40140a:
  ; Code: movslq -0x1c(%rbp), %rax	 RIP: 40140a	 Bytes: 4
  %loadMem_40140a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40140a = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40140a)
  store %struct.Memory* %call_40140a, %struct.Memory** %MEMORY

  ; Code: movl 0x425550(,%rax,4), %ecx	 RIP: 40140e	 Bytes: 7
  %loadMem_40140e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40140e = call %struct.Memory* @routine_movl_0x425550___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40140e)
  store %struct.Memory* %call_40140e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x10(%rbp)	 RIP: 401415	 Bytes: 3
  %loadMem_401415 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401415 = call %struct.Memory* @routine_movl__ecx__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401415)
  store %struct.Memory* %call_401415, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %ecx	 RIP: 401418	 Bytes: 3
  %loadMem_401418 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401418 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401418)
  store %struct.Memory* %call_401418, %struct.Memory** %MEMORY

  ; Code: addl -0x10(%rbp), %ecx	 RIP: 40141b	 Bytes: 3
  %loadMem_40141b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40141b = call %struct.Memory* @routine_addl_MINUS0x10__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40141b)
  store %struct.Memory* %call_40141b, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x14(%rbp)	 RIP: 40141e	 Bytes: 3
  %loadMem_40141e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40141e = call %struct.Memory* @routine_movl__ecx__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40141e)
  store %struct.Memory* %call_40141e, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rax	 RIP: 401421	 Bytes: 4
  %loadMem_401421 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401421 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401421)
  store %struct.Memory* %call_401421, %struct.Memory** %MEMORY

  ; Code: movl 0x866540(,%rax,4), %ecx	 RIP: 401425	 Bytes: 7
  %loadMem_401425 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401425 = call %struct.Memory* @routine_movl_0x866540___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401425)
  store %struct.Memory* %call_401425, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x18(%rbp)	 RIP: 40142c	 Bytes: 3
  %loadMem_40142c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40142c = call %struct.Memory* @routine_movl__ecx__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40142c)
  store %struct.Memory* %call_40142c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, -0x18(%rbp)	 RIP: 40142f	 Bytes: 4
  %loadMem_40142f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40142f = call %struct.Memory* @routine_cmpl__0x1__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40142f)
  store %struct.Memory* %call_40142f, %struct.Memory** %MEMORY

  ; Code: jne .L_401454	 RIP: 401433	 Bytes: 6
  %loadMem_401433 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401433 = call %struct.Memory* @routine_jne_.L_401454(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401433, i8* %BRANCH_TAKEN, i64 33, i64 6, i64 6)
  store %struct.Memory* %call_401433, %struct.Memory** %MEMORY

  %loadBr_401433 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401433 = icmp eq i8 %loadBr_401433, 1
  br i1 %cmpBr_401433, label %block_.L_401454, label %block_401439

block_401439:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 401439	 Bytes: 3
  %loadMem_401439 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401439 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401439)
  store %struct.Memory* %call_401439, %struct.Memory** %MEMORY

  ; Code: andl $0x1, %eax	 RIP: 40143c	 Bytes: 3
  %loadMem_40143c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40143c = call %struct.Memory* @routine_andl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40143c)
  store %struct.Memory* %call_40143c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 40143f	 Bytes: 3
  %loadMem_40143f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40143f = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40143f)
  store %struct.Memory* %call_40143f, %struct.Memory** %MEMORY

  ; Code: je .L_401454	 RIP: 401442	 Bytes: 6
  %loadMem_401442 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401442 = call %struct.Memory* @routine_je_.L_401454(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401442, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_401442, %struct.Memory** %MEMORY

  %loadBr_401442 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401442 = icmp eq i8 %loadBr_401442, 1
  br i1 %cmpBr_401442, label %block_.L_401454, label %block_401448

block_401448:
  ; Code: movl $0x1, -0x4(%rbp)	 RIP: 401448	 Bytes: 7
  %loadMem_401448 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401448 = call %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401448)
  store %struct.Memory* %call_401448, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4017e0	 RIP: 40144f	 Bytes: 5
  %loadMem_40144f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40144f = call %struct.Memory* @routine_jmpq_.L_4017e0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40144f, i64 913, i64 5)
  store %struct.Memory* %call_40144f, %struct.Memory** %MEMORY

  br label %block_.L_4017e0

  ; Code: .L_401454:	 RIP: 401454	 Bytes: 0
block_.L_401454:

  ; Code: cmpl $0x5, -0x18(%rbp)	 RIP: 401454	 Bytes: 4
  %loadMem_401454 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401454 = call %struct.Memory* @routine_cmpl__0x5__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401454)
  store %struct.Memory* %call_401454, %struct.Memory** %MEMORY

  ; Code: jne .L_40146a	 RIP: 401458	 Bytes: 6
  %loadMem_401458 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401458 = call %struct.Memory* @routine_jne_.L_40146a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401458, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_401458, %struct.Memory** %MEMORY

  %loadBr_401458 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401458 = icmp eq i8 %loadBr_401458, 1
  br i1 %cmpBr_401458, label %block_.L_40146a, label %block_40145e

block_40145e:
  ; Code: movl $0x1, -0x4(%rbp)	 RIP: 40145e	 Bytes: 7
  %loadMem_40145e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40145e = call %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40145e)
  store %struct.Memory* %call_40145e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4017e0	 RIP: 401465	 Bytes: 5
  %loadMem_401465 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401465 = call %struct.Memory* @routine_jmpq_.L_4017e0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401465, i64 891, i64 5)
  store %struct.Memory* %call_401465, %struct.Memory** %MEMORY

  br label %block_.L_4017e0

  ; Code: .L_40146a:	 RIP: 40146a	 Bytes: 0
block_.L_40146a:

  ; Code: jmpq .L_40146f	 RIP: 40146a	 Bytes: 5
  %loadMem_40146a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40146a = call %struct.Memory* @routine_jmpq_.L_40146f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40146a, i64 5, i64 5)
  store %struct.Memory* %call_40146a, %struct.Memory** %MEMORY

  br label %block_.L_40146f

  ; Code: .L_40146f:	 RIP: 40146f	 Bytes: 0
block_.L_40146f:

  ; Code: cmpl $0x0, -0x18(%rbp)	 RIP: 40146f	 Bytes: 4
  %loadMem_40146f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40146f = call %struct.Memory* @routine_cmpl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40146f)
  store %struct.Memory* %call_40146f, %struct.Memory** %MEMORY

  ; Code: je .L_4014c4	 RIP: 401473	 Bytes: 6
  %loadMem_401473 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401473 = call %struct.Memory* @routine_je_.L_4014c4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401473, i8* %BRANCH_TAKEN, i64 81, i64 6, i64 6)
  store %struct.Memory* %call_401473, %struct.Memory** %MEMORY

  %loadBr_401473 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401473 = icmp eq i8 %loadBr_401473, 1
  br i1 %cmpBr_401473, label %block_.L_4014c4, label %block_401479

block_401479:
  ; Code: cmpl $0xb, -0x18(%rbp)	 RIP: 401479	 Bytes: 4
  %loadMem_401479 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401479 = call %struct.Memory* @routine_cmpl__0xb__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401479)
  store %struct.Memory* %call_401479, %struct.Memory** %MEMORY

  ; Code: je .L_40148d	 RIP: 40147d	 Bytes: 6
  %loadMem_40147d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40147d = call %struct.Memory* @routine_je_.L_40148d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40147d, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_40147d, %struct.Memory** %MEMORY

  %loadBr_40147d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40147d = icmp eq i8 %loadBr_40147d, 1
  br i1 %cmpBr_40147d, label %block_.L_40148d, label %block_401483

block_401483:
  ; Code: cmpl $0x9, -0x18(%rbp)	 RIP: 401483	 Bytes: 4
  %loadMem_401483 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401483 = call %struct.Memory* @routine_cmpl__0x9__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401483)
  store %struct.Memory* %call_401483, %struct.Memory** %MEMORY

  ; Code: jne .L_401499	 RIP: 401487	 Bytes: 6
  %loadMem_401487 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401487 = call %struct.Memory* @routine_jne_.L_401499(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401487, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_401487, %struct.Memory** %MEMORY

  %loadBr_401487 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401487 = icmp eq i8 %loadBr_401487, 1
  br i1 %cmpBr_401487, label %block_.L_401499, label %block_.L_40148d

  ; Code: .L_40148d:	 RIP: 40148d	 Bytes: 0
block_.L_40148d:

  ; Code: movl $0x1, -0x4(%rbp)	 RIP: 40148d	 Bytes: 7
  %loadMem_40148d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40148d = call %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40148d)
  store %struct.Memory* %call_40148d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4017e0	 RIP: 401494	 Bytes: 5
  %loadMem_401494 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401494 = call %struct.Memory* @routine_jmpq_.L_4017e0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401494, i64 844, i64 5)
  store %struct.Memory* %call_401494, %struct.Memory** %MEMORY

  br label %block_.L_4017e0

  ; Code: .L_401499:	 RIP: 401499	 Bytes: 0
block_.L_401499:

  ; Code: cmpl $0xd, -0x18(%rbp)	 RIP: 401499	 Bytes: 4
  %loadMem_401499 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401499 = call %struct.Memory* @routine_cmpl__0xd__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401499)
  store %struct.Memory* %call_401499, %struct.Memory** %MEMORY

  ; Code: je .L_4014a8	 RIP: 40149d	 Bytes: 6
  %loadMem_40149d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40149d = call %struct.Memory* @routine_je_.L_4014a8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40149d, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_40149d, %struct.Memory** %MEMORY

  %loadBr_40149d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40149d = icmp eq i8 %loadBr_40149d, 1
  br i1 %cmpBr_40149d, label %block_.L_4014a8, label %block_4014a3

block_4014a3:
  ; Code: jmpq .L_4014c4	 RIP: 4014a3	 Bytes: 5
  %loadMem_4014a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014a3 = call %struct.Memory* @routine_jmpq_.L_4014c4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014a3, i64 33, i64 5)
  store %struct.Memory* %call_4014a3, %struct.Memory** %MEMORY

  br label %block_.L_4014c4

  ; Code: .L_4014a8:	 RIP: 4014a8	 Bytes: 0
block_.L_4014a8:

  ; Code: movl -0x10(%rbp), %eax	 RIP: 4014a8	 Bytes: 3
  %loadMem_4014a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014a8 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014a8)
  store %struct.Memory* %call_4014a8, %struct.Memory** %MEMORY

  ; Code: addl -0x14(%rbp), %eax	 RIP: 4014ab	 Bytes: 3
  %loadMem_4014ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014ab = call %struct.Memory* @routine_addl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014ab)
  store %struct.Memory* %call_4014ab, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 4014ae	 Bytes: 3
  %loadMem_4014ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014ae = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014ae)
  store %struct.Memory* %call_4014ae, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 4014b1	 Bytes: 4
  %loadMem_4014b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014b1 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014b1)
  store %struct.Memory* %call_4014b1, %struct.Memory** %MEMORY

  ; Code: movl 0x866540(,%rcx,4), %eax	 RIP: 4014b5	 Bytes: 7
  %loadMem_4014b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014b5 = call %struct.Memory* @routine_movl_0x866540___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014b5)
  store %struct.Memory* %call_4014b5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 4014bc	 Bytes: 3
  %loadMem_4014bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014bc = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014bc)
  store %struct.Memory* %call_4014bc, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40146f	 RIP: 4014bf	 Bytes: 5
  %loadMem_4014bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014bf = call %struct.Memory* @routine_jmpq_.L_40146f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014bf, i64 -80, i64 5)
  store %struct.Memory* %call_4014bf, %struct.Memory** %MEMORY

  br label %block_.L_40146f

  ; Code: .L_4014c4:	 RIP: 4014c4	 Bytes: 0
block_.L_4014c4:

  ; Code: jmpq .L_4014c9	 RIP: 4014c4	 Bytes: 5
  %loadMem_4014c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014c4 = call %struct.Memory* @routine_jmpq_.L_4014c9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014c4, i64 5, i64 5)
  store %struct.Memory* %call_4014c4, %struct.Memory** %MEMORY

  br label %block_.L_4014c9

  ; Code: .L_4014c9:	 RIP: 4014c9	 Bytes: 0
block_.L_4014c9:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4014c9	 Bytes: 3
  %loadMem_4014c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014c9 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014c9)
  store %struct.Memory* %call_4014c9, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4014cc	 Bytes: 3
  %loadMem_4014cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014cc = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014cc)
  store %struct.Memory* %call_4014cc, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 4014cf	 Bytes: 3
  %loadMem_4014cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014cf = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014cf)
  store %struct.Memory* %call_4014cf, %struct.Memory** %MEMORY

  ; Code: jmpq .L_401400	 RIP: 4014d2	 Bytes: 5
  %loadMem_4014d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014d2 = call %struct.Memory* @routine_jmpq_.L_401400(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014d2, i64 -210, i64 5)
  store %struct.Memory* %call_4014d2, %struct.Memory** %MEMORY

  br label %block_.L_401400

  ; Code: .L_4014d7:	 RIP: 4014d7	 Bytes: 0
block_.L_4014d7:

  ; Code: movl $0x0, -0x1c(%rbp)	 RIP: 4014d7	 Bytes: 7
  %loadMem_4014d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014d7 = call %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014d7)
  store %struct.Memory* %call_4014d7, %struct.Memory** %MEMORY

  ; Code: .L_4014de:	 RIP: 4014de	 Bytes: 0
  br label %block_.L_4014de
block_.L_4014de:

  ; Code: cmpl $0x8, -0x1c(%rbp)	 RIP: 4014de	 Bytes: 4
  %loadMem_4014de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014de = call %struct.Memory* @routine_cmpl__0x8__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014de)
  store %struct.Memory* %call_4014de, %struct.Memory** %MEMORY

  ; Code: jge .L_401526	 RIP: 4014e2	 Bytes: 6
  %loadMem_4014e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014e2 = call %struct.Memory* @routine_jge_.L_401526(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014e2, i8* %BRANCH_TAKEN, i64 68, i64 6, i64 6)
  store %struct.Memory* %call_4014e2, %struct.Memory** %MEMORY

  %loadBr_4014e2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4014e2 = icmp eq i8 %loadBr_4014e2, 1
  br i1 %cmpBr_4014e2, label %block_.L_401526, label %block_4014e8

block_4014e8:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 4014e8	 Bytes: 3
  %loadMem_4014e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014e8 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014e8)
  store %struct.Memory* %call_4014e8, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 4014eb	 Bytes: 4
  %loadMem_4014eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014eb = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014eb)
  store %struct.Memory* %call_4014eb, %struct.Memory** %MEMORY

  ; Code: addl 0x425560(,%rcx,4), %eax	 RIP: 4014ef	 Bytes: 7
  %loadMem_4014ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014ef = call %struct.Memory* @routine_addl_0x425560___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014ef)
  store %struct.Memory* %call_4014ef, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4014f6	 Bytes: 3
  %loadMem_4014f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014f6 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014f6)
  store %struct.Memory* %call_4014f6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, 0x866540(,%rcx,4)	 RIP: 4014f9	 Bytes: 8
  %loadMem_4014f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014f9 = call %struct.Memory* @routine_cmpl__0x3__0x866540___rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014f9)
  store %struct.Memory* %call_4014f9, %struct.Memory** %MEMORY

  ; Code: jne .L_401513	 RIP: 401501	 Bytes: 6
  %loadMem_401501 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401501 = call %struct.Memory* @routine_jne_.L_401513(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401501, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_401501, %struct.Memory** %MEMORY

  %loadBr_401501 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401501 = icmp eq i8 %loadBr_401501, 1
  br i1 %cmpBr_401501, label %block_.L_401513, label %block_401507

block_401507:
  ; Code: movl $0x1, -0x4(%rbp)	 RIP: 401507	 Bytes: 7
  %loadMem_401507 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401507 = call %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401507)
  store %struct.Memory* %call_401507, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4017e0	 RIP: 40150e	 Bytes: 5
  %loadMem_40150e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40150e = call %struct.Memory* @routine_jmpq_.L_4017e0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40150e, i64 722, i64 5)
  store %struct.Memory* %call_40150e, %struct.Memory** %MEMORY

  br label %block_.L_4017e0

  ; Code: .L_401513:	 RIP: 401513	 Bytes: 0
block_.L_401513:

  ; Code: jmpq .L_401518	 RIP: 401513	 Bytes: 5
  %loadMem_401513 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401513 = call %struct.Memory* @routine_jmpq_.L_401518(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401513, i64 5, i64 5)
  store %struct.Memory* %call_401513, %struct.Memory** %MEMORY

  br label %block_.L_401518

  ; Code: .L_401518:	 RIP: 401518	 Bytes: 0
block_.L_401518:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 401518	 Bytes: 3
  %loadMem_401518 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401518 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401518)
  store %struct.Memory* %call_401518, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40151b	 Bytes: 3
  %loadMem_40151b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40151b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40151b)
  store %struct.Memory* %call_40151b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 40151e	 Bytes: 3
  %loadMem_40151e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40151e = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40151e)
  store %struct.Memory* %call_40151e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4014de	 RIP: 401521	 Bytes: 5
  %loadMem_401521 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401521 = call %struct.Memory* @routine_jmpq_.L_4014de(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401521, i64 -67, i64 5)
  store %struct.Memory* %call_401521, %struct.Memory** %MEMORY

  br label %block_.L_4014de

  ; Code: .L_401526:	 RIP: 401526	 Bytes: 0
block_.L_401526:

  ; Code: movl $0x0, -0x1c(%rbp)	 RIP: 401526	 Bytes: 7
  %loadMem_401526 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401526 = call %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401526)
  store %struct.Memory* %call_401526, %struct.Memory** %MEMORY

  ; Code: .L_40152d:	 RIP: 40152d	 Bytes: 0
  br label %block_.L_40152d
block_.L_40152d:

  ; Code: cmpl $0x4, -0x1c(%rbp)	 RIP: 40152d	 Bytes: 4
  %loadMem_40152d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40152d = call %struct.Memory* @routine_cmpl__0x4__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40152d)
  store %struct.Memory* %call_40152d, %struct.Memory** %MEMORY

  ; Code: jge .L_4015df	 RIP: 401531	 Bytes: 6
  %loadMem_401531 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401531 = call %struct.Memory* @routine_jge_.L_4015df(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401531, i8* %BRANCH_TAKEN, i64 174, i64 6, i64 6)
  store %struct.Memory* %call_401531, %struct.Memory** %MEMORY

  %loadBr_401531 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401531 = icmp eq i8 %loadBr_401531, 1
  br i1 %cmpBr_401531, label %block_.L_4015df, label %block_401537

block_401537:
  ; Code: movslq -0x1c(%rbp), %rax	 RIP: 401537	 Bytes: 4
  %loadMem_401537 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401537 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401537)
  store %struct.Memory* %call_401537, %struct.Memory** %MEMORY

  ; Code: movl 0x425580(,%rax,4), %ecx	 RIP: 40153b	 Bytes: 7
  %loadMem_40153b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40153b = call %struct.Memory* @routine_movl_0x425580___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40153b)
  store %struct.Memory* %call_40153b, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x10(%rbp)	 RIP: 401542	 Bytes: 3
  %loadMem_401542 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401542 = call %struct.Memory* @routine_movl__ecx__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401542)
  store %struct.Memory* %call_401542, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %ecx	 RIP: 401545	 Bytes: 3
  %loadMem_401545 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401545 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401545)
  store %struct.Memory* %call_401545, %struct.Memory** %MEMORY

  ; Code: addl -0x10(%rbp), %ecx	 RIP: 401548	 Bytes: 3
  %loadMem_401548 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401548 = call %struct.Memory* @routine_addl_MINUS0x10__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401548)
  store %struct.Memory* %call_401548, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x14(%rbp)	 RIP: 40154b	 Bytes: 3
  %loadMem_40154b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40154b = call %struct.Memory* @routine_movl__ecx__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40154b)
  store %struct.Memory* %call_40154b, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rax	 RIP: 40154e	 Bytes: 4
  %loadMem_40154e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40154e = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40154e)
  store %struct.Memory* %call_40154e, %struct.Memory** %MEMORY

  ; Code: movl 0x866540(,%rax,4), %ecx	 RIP: 401552	 Bytes: 7
  %loadMem_401552 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401552 = call %struct.Memory* @routine_movl_0x866540___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401552)
  store %struct.Memory* %call_401552, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x18(%rbp)	 RIP: 401559	 Bytes: 3
  %loadMem_401559 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401559 = call %struct.Memory* @routine_movl__ecx__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401559)
  store %struct.Memory* %call_401559, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5, -0x18(%rbp)	 RIP: 40155c	 Bytes: 4
  %loadMem_40155c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40155c = call %struct.Memory* @routine_cmpl__0x5__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40155c)
  store %struct.Memory* %call_40155c, %struct.Memory** %MEMORY

  ; Code: jne .L_401572	 RIP: 401560	 Bytes: 6
  %loadMem_401560 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401560 = call %struct.Memory* @routine_jne_.L_401572(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401560, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_401560, %struct.Memory** %MEMORY

  %loadBr_401560 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401560 = icmp eq i8 %loadBr_401560, 1
  br i1 %cmpBr_401560, label %block_.L_401572, label %block_401566

block_401566:
  ; Code: movl $0x1, -0x4(%rbp)	 RIP: 401566	 Bytes: 7
  %loadMem_401566 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401566 = call %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401566)
  store %struct.Memory* %call_401566, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4017e0	 RIP: 40156d	 Bytes: 5
  %loadMem_40156d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40156d = call %struct.Memory* @routine_jmpq_.L_4017e0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40156d, i64 627, i64 5)
  store %struct.Memory* %call_40156d, %struct.Memory** %MEMORY

  br label %block_.L_4017e0

  ; Code: .L_401572:	 RIP: 401572	 Bytes: 0
block_.L_401572:

  ; Code: jmpq .L_401577	 RIP: 401572	 Bytes: 5
  %loadMem_401572 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401572 = call %struct.Memory* @routine_jmpq_.L_401577(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401572, i64 5, i64 5)
  store %struct.Memory* %call_401572, %struct.Memory** %MEMORY

  br label %block_.L_401577

  ; Code: .L_401577:	 RIP: 401577	 Bytes: 0
block_.L_401577:

  ; Code: cmpl $0x0, -0x18(%rbp)	 RIP: 401577	 Bytes: 4
  %loadMem_401577 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401577 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401577)
  store %struct.Memory* %call_401577, %struct.Memory** %MEMORY

  ; Code: je .L_4015cc	 RIP: 40157b	 Bytes: 6
  %loadMem_40157b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40157b = call %struct.Memory* @routine_je_.L_4015cc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40157b, i8* %BRANCH_TAKEN, i64 81, i64 6, i64 6)
  store %struct.Memory* %call_40157b, %struct.Memory** %MEMORY

  %loadBr_40157b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40157b = icmp eq i8 %loadBr_40157b, 1
  br i1 %cmpBr_40157b, label %block_.L_4015cc, label %block_401581

block_401581:
  ; Code: cmpl $0x7, -0x18(%rbp)	 RIP: 401581	 Bytes: 4
  %loadMem_401581 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401581 = call %struct.Memory* @routine_cmpl__0x7__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401581)
  store %struct.Memory* %call_401581, %struct.Memory** %MEMORY

  ; Code: je .L_401595	 RIP: 401585	 Bytes: 6
  %loadMem_401585 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401585 = call %struct.Memory* @routine_je_.L_401595(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401585, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_401585, %struct.Memory** %MEMORY

  %loadBr_401585 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401585 = icmp eq i8 %loadBr_401585, 1
  br i1 %cmpBr_401585, label %block_.L_401595, label %block_40158b

block_40158b:
  ; Code: cmpl $0x9, -0x18(%rbp)	 RIP: 40158b	 Bytes: 4
  %loadMem_40158b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40158b = call %struct.Memory* @routine_cmpl__0x9__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40158b)
  store %struct.Memory* %call_40158b, %struct.Memory** %MEMORY

  ; Code: jne .L_4015a1	 RIP: 40158f	 Bytes: 6
  %loadMem_40158f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40158f = call %struct.Memory* @routine_jne_.L_4015a1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40158f, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_40158f, %struct.Memory** %MEMORY

  %loadBr_40158f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40158f = icmp eq i8 %loadBr_40158f, 1
  br i1 %cmpBr_40158f, label %block_.L_4015a1, label %block_.L_401595

  ; Code: .L_401595:	 RIP: 401595	 Bytes: 0
block_.L_401595:

  ; Code: movl $0x1, -0x4(%rbp)	 RIP: 401595	 Bytes: 7
  %loadMem_401595 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401595 = call %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401595)
  store %struct.Memory* %call_401595, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4017e0	 RIP: 40159c	 Bytes: 5
  %loadMem_40159c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40159c = call %struct.Memory* @routine_jmpq_.L_4017e0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40159c, i64 580, i64 5)
  store %struct.Memory* %call_40159c, %struct.Memory** %MEMORY

  br label %block_.L_4017e0

  ; Code: .L_4015a1:	 RIP: 4015a1	 Bytes: 0
block_.L_4015a1:

  ; Code: cmpl $0xd, -0x18(%rbp)	 RIP: 4015a1	 Bytes: 4
  %loadMem_4015a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015a1 = call %struct.Memory* @routine_cmpl__0xd__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015a1)
  store %struct.Memory* %call_4015a1, %struct.Memory** %MEMORY

  ; Code: je .L_4015b0	 RIP: 4015a5	 Bytes: 6
  %loadMem_4015a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015a5 = call %struct.Memory* @routine_je_.L_4015b0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015a5, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_4015a5, %struct.Memory** %MEMORY

  %loadBr_4015a5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4015a5 = icmp eq i8 %loadBr_4015a5, 1
  br i1 %cmpBr_4015a5, label %block_.L_4015b0, label %block_4015ab

block_4015ab:
  ; Code: jmpq .L_4015cc	 RIP: 4015ab	 Bytes: 5
  %loadMem_4015ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015ab = call %struct.Memory* @routine_jmpq_.L_4015cc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015ab, i64 33, i64 5)
  store %struct.Memory* %call_4015ab, %struct.Memory** %MEMORY

  br label %block_.L_4015cc

  ; Code: .L_4015b0:	 RIP: 4015b0	 Bytes: 0
block_.L_4015b0:

  ; Code: movl -0x10(%rbp), %eax	 RIP: 4015b0	 Bytes: 3
  %loadMem_4015b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015b0 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015b0)
  store %struct.Memory* %call_4015b0, %struct.Memory** %MEMORY

  ; Code: addl -0x14(%rbp), %eax	 RIP: 4015b3	 Bytes: 3
  %loadMem_4015b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015b3 = call %struct.Memory* @routine_addl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015b3)
  store %struct.Memory* %call_4015b3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 4015b6	 Bytes: 3
  %loadMem_4015b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015b6 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015b6)
  store %struct.Memory* %call_4015b6, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 4015b9	 Bytes: 4
  %loadMem_4015b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015b9 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015b9)
  store %struct.Memory* %call_4015b9, %struct.Memory** %MEMORY

  ; Code: movl 0x866540(,%rcx,4), %eax	 RIP: 4015bd	 Bytes: 7
  %loadMem_4015bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015bd = call %struct.Memory* @routine_movl_0x866540___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015bd)
  store %struct.Memory* %call_4015bd, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 4015c4	 Bytes: 3
  %loadMem_4015c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015c4 = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015c4)
  store %struct.Memory* %call_4015c4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_401577	 RIP: 4015c7	 Bytes: 5
  %loadMem_4015c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015c7 = call %struct.Memory* @routine_jmpq_.L_401577(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015c7, i64 -80, i64 5)
  store %struct.Memory* %call_4015c7, %struct.Memory** %MEMORY

  br label %block_.L_401577

  ; Code: .L_4015cc:	 RIP: 4015cc	 Bytes: 0
block_.L_4015cc:

  ; Code: jmpq .L_4015d1	 RIP: 4015cc	 Bytes: 5
  %loadMem_4015cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015cc = call %struct.Memory* @routine_jmpq_.L_4015d1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015cc, i64 5, i64 5)
  store %struct.Memory* %call_4015cc, %struct.Memory** %MEMORY

  br label %block_.L_4015d1

  ; Code: .L_4015d1:	 RIP: 4015d1	 Bytes: 0
block_.L_4015d1:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4015d1	 Bytes: 3
  %loadMem_4015d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015d1 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015d1)
  store %struct.Memory* %call_4015d1, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4015d4	 Bytes: 3
  %loadMem_4015d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015d4 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015d4)
  store %struct.Memory* %call_4015d4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 4015d7	 Bytes: 3
  %loadMem_4015d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015d7 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015d7)
  store %struct.Memory* %call_4015d7, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40152d	 RIP: 4015da	 Bytes: 5
  %loadMem_4015da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015da = call %struct.Memory* @routine_jmpq_.L_40152d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015da, i64 -173, i64 5)
  store %struct.Memory* %call_4015da, %struct.Memory** %MEMORY

  br label %block_.L_40152d

  ; Code: .L_4015df:	 RIP: 4015df	 Bytes: 0
block_.L_4015df:

  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 4015df	 Bytes: 7
  %loadMem_4015df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015df = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015df)
  store %struct.Memory* %call_4015df, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4017e0	 RIP: 4015e6	 Bytes: 5
  %loadMem_4015e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015e6 = call %struct.Memory* @routine_jmpq_.L_4017e0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015e6, i64 506, i64 5)
  store %struct.Memory* %call_4015e6, %struct.Memory** %MEMORY

  br label %block_.L_4017e0

  ; Code: .L_4015eb:	 RIP: 4015eb	 Bytes: 0
block_.L_4015eb:

  ; Code: movl $0x0, -0x1c(%rbp)	 RIP: 4015eb	 Bytes: 7
  %loadMem_4015eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015eb = call %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015eb)
  store %struct.Memory* %call_4015eb, %struct.Memory** %MEMORY

  ; Code: .L_4015f2:	 RIP: 4015f2	 Bytes: 0
  br label %block_.L_4015f2
block_.L_4015f2:

  ; Code: cmpl $0x4, -0x1c(%rbp)	 RIP: 4015f2	 Bytes: 4
  %loadMem_4015f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015f2 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015f2)
  store %struct.Memory* %call_4015f2, %struct.Memory** %MEMORY

  ; Code: jge .L_4016c9	 RIP: 4015f6	 Bytes: 6
  %loadMem_4015f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015f6 = call %struct.Memory* @routine_jge_.L_4016c9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015f6, i8* %BRANCH_TAKEN, i64 211, i64 6, i64 6)
  store %struct.Memory* %call_4015f6, %struct.Memory** %MEMORY

  %loadBr_4015f6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4015f6 = icmp eq i8 %loadBr_4015f6, 1
  br i1 %cmpBr_4015f6, label %block_.L_4016c9, label %block_4015fc

block_4015fc:
  ; Code: movslq -0x1c(%rbp), %rax	 RIP: 4015fc	 Bytes: 4
  %loadMem_4015fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015fc = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015fc)
  store %struct.Memory* %call_4015fc, %struct.Memory** %MEMORY

  ; Code: movl 0x425550(,%rax,4), %ecx	 RIP: 401600	 Bytes: 7
  %loadMem_401600 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401600 = call %struct.Memory* @routine_movl_0x425550___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401600)
  store %struct.Memory* %call_401600, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x10(%rbp)	 RIP: 401607	 Bytes: 3
  %loadMem_401607 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401607 = call %struct.Memory* @routine_movl__ecx__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401607)
  store %struct.Memory* %call_401607, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %ecx	 RIP: 40160a	 Bytes: 3
  %loadMem_40160a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40160a = call %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40160a)
  store %struct.Memory* %call_40160a, %struct.Memory** %MEMORY

  ; Code: addl -0x10(%rbp), %ecx	 RIP: 40160d	 Bytes: 3
  %loadMem_40160d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40160d = call %struct.Memory* @routine_addl_MINUS0x10__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40160d)
  store %struct.Memory* %call_40160d, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x14(%rbp)	 RIP: 401610	 Bytes: 3
  %loadMem_401610 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401610 = call %struct.Memory* @routine_movl__ecx__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401610)
  store %struct.Memory* %call_401610, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rax	 RIP: 401613	 Bytes: 4
  %loadMem_401613 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401613 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401613)
  store %struct.Memory* %call_401613, %struct.Memory** %MEMORY

  ; Code: movl 0x866540(,%rax,4), %ecx	 RIP: 401617	 Bytes: 7
  %loadMem_401617 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401617 = call %struct.Memory* @routine_movl_0x866540___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401617)
  store %struct.Memory* %call_401617, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x18(%rbp)	 RIP: 40161e	 Bytes: 3
  %loadMem_40161e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40161e = call %struct.Memory* @routine_movl__ecx__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40161e)
  store %struct.Memory* %call_40161e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, -0x18(%rbp)	 RIP: 401621	 Bytes: 4
  %loadMem_401621 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401621 = call %struct.Memory* @routine_cmpl__0x2__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401621)
  store %struct.Memory* %call_401621, %struct.Memory** %MEMORY

  ; Code: jne .L_401646	 RIP: 401625	 Bytes: 6
  %loadMem_401625 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401625 = call %struct.Memory* @routine_jne_.L_401646(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401625, i8* %BRANCH_TAKEN, i64 33, i64 6, i64 6)
  store %struct.Memory* %call_401625, %struct.Memory** %MEMORY

  %loadBr_401625 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401625 = icmp eq i8 %loadBr_401625, 1
  br i1 %cmpBr_401625, label %block_.L_401646, label %block_40162b

block_40162b:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 40162b	 Bytes: 3
  %loadMem_40162b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40162b = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40162b)
  store %struct.Memory* %call_40162b, %struct.Memory** %MEMORY

  ; Code: andl $0x1, %eax	 RIP: 40162e	 Bytes: 3
  %loadMem_40162e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40162e = call %struct.Memory* @routine_andl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40162e)
  store %struct.Memory* %call_40162e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 401631	 Bytes: 3
  %loadMem_401631 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401631 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401631)
  store %struct.Memory* %call_401631, %struct.Memory** %MEMORY

  ; Code: jne .L_401646	 RIP: 401634	 Bytes: 6
  %loadMem_401634 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401634 = call %struct.Memory* @routine_jne_.L_401646(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401634, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_401634, %struct.Memory** %MEMORY

  %loadBr_401634 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401634 = icmp eq i8 %loadBr_401634, 1
  br i1 %cmpBr_401634, label %block_.L_401646, label %block_40163a

block_40163a:
  ; Code: movl $0x1, -0x4(%rbp)	 RIP: 40163a	 Bytes: 7
  %loadMem_40163a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40163a = call %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40163a)
  store %struct.Memory* %call_40163a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4017e0	 RIP: 401641	 Bytes: 5
  %loadMem_401641 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401641 = call %struct.Memory* @routine_jmpq_.L_4017e0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401641, i64 415, i64 5)
  store %struct.Memory* %call_401641, %struct.Memory** %MEMORY

  br label %block_.L_4017e0

  ; Code: .L_401646:	 RIP: 401646	 Bytes: 0
block_.L_401646:

  ; Code: cmpl $0x6, -0x18(%rbp)	 RIP: 401646	 Bytes: 4
  %loadMem_401646 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401646 = call %struct.Memory* @routine_cmpl__0x6__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401646)
  store %struct.Memory* %call_401646, %struct.Memory** %MEMORY

  ; Code: jne .L_40165c	 RIP: 40164a	 Bytes: 6
  %loadMem_40164a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40164a = call %struct.Memory* @routine_jne_.L_40165c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40164a, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_40164a, %struct.Memory** %MEMORY

  %loadBr_40164a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40164a = icmp eq i8 %loadBr_40164a, 1
  br i1 %cmpBr_40164a, label %block_.L_40165c, label %block_401650

block_401650:
  ; Code: movl $0x1, -0x4(%rbp)	 RIP: 401650	 Bytes: 7
  %loadMem_401650 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401650 = call %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401650)
  store %struct.Memory* %call_401650, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4017e0	 RIP: 401657	 Bytes: 5
  %loadMem_401657 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401657 = call %struct.Memory* @routine_jmpq_.L_4017e0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401657, i64 393, i64 5)
  store %struct.Memory* %call_401657, %struct.Memory** %MEMORY

  br label %block_.L_4017e0

  ; Code: .L_40165c:	 RIP: 40165c	 Bytes: 0
block_.L_40165c:

  ; Code: jmpq .L_401661	 RIP: 40165c	 Bytes: 5
  %loadMem_40165c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40165c = call %struct.Memory* @routine_jmpq_.L_401661(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40165c, i64 5, i64 5)
  store %struct.Memory* %call_40165c, %struct.Memory** %MEMORY

  br label %block_.L_401661

  ; Code: .L_401661:	 RIP: 401661	 Bytes: 0
block_.L_401661:

  ; Code: cmpl $0x0, -0x18(%rbp)	 RIP: 401661	 Bytes: 4
  %loadMem_401661 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401661 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401661)
  store %struct.Memory* %call_401661, %struct.Memory** %MEMORY

  ; Code: je .L_4016b6	 RIP: 401665	 Bytes: 6
  %loadMem_401665 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401665 = call %struct.Memory* @routine_je_.L_4016b6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401665, i8* %BRANCH_TAKEN, i64 81, i64 6, i64 6)
  store %struct.Memory* %call_401665, %struct.Memory** %MEMORY

  %loadBr_401665 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401665 = icmp eq i8 %loadBr_401665, 1
  br i1 %cmpBr_401665, label %block_.L_4016b6, label %block_40166b

block_40166b:
  ; Code: cmpl $0xc, -0x18(%rbp)	 RIP: 40166b	 Bytes: 4
  %loadMem_40166b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40166b = call %struct.Memory* @routine_cmpl__0xc__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40166b)
  store %struct.Memory* %call_40166b, %struct.Memory** %MEMORY

  ; Code: je .L_40167f	 RIP: 40166f	 Bytes: 6
  %loadMem_40166f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40166f = call %struct.Memory* @routine_je_.L_40167f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40166f, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_40166f, %struct.Memory** %MEMORY

  %loadBr_40166f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40166f = icmp eq i8 %loadBr_40166f, 1
  br i1 %cmpBr_40166f, label %block_.L_40167f, label %block_401675

block_401675:
  ; Code: cmpl $0xa, -0x18(%rbp)	 RIP: 401675	 Bytes: 4
  %loadMem_401675 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401675 = call %struct.Memory* @routine_cmpl__0xa__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401675)
  store %struct.Memory* %call_401675, %struct.Memory** %MEMORY

  ; Code: jne .L_40168b	 RIP: 401679	 Bytes: 6
  %loadMem_401679 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401679 = call %struct.Memory* @routine_jne_.L_40168b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401679, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_401679, %struct.Memory** %MEMORY

  %loadBr_401679 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401679 = icmp eq i8 %loadBr_401679, 1
  br i1 %cmpBr_401679, label %block_.L_40168b, label %block_.L_40167f

  ; Code: .L_40167f:	 RIP: 40167f	 Bytes: 0
block_.L_40167f:

  ; Code: movl $0x1, -0x4(%rbp)	 RIP: 40167f	 Bytes: 7
  %loadMem_40167f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40167f = call %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40167f)
  store %struct.Memory* %call_40167f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4017e0	 RIP: 401686	 Bytes: 5
  %loadMem_401686 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401686 = call %struct.Memory* @routine_jmpq_.L_4017e0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401686, i64 346, i64 5)
  store %struct.Memory* %call_401686, %struct.Memory** %MEMORY

  br label %block_.L_4017e0

  ; Code: .L_40168b:	 RIP: 40168b	 Bytes: 0
block_.L_40168b:

  ; Code: cmpl $0xd, -0x18(%rbp)	 RIP: 40168b	 Bytes: 4
  %loadMem_40168b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40168b = call %struct.Memory* @routine_cmpl__0xd__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40168b)
  store %struct.Memory* %call_40168b, %struct.Memory** %MEMORY

  ; Code: je .L_40169a	 RIP: 40168f	 Bytes: 6
  %loadMem_40168f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40168f = call %struct.Memory* @routine_je_.L_40169a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40168f, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_40168f, %struct.Memory** %MEMORY

  %loadBr_40168f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40168f = icmp eq i8 %loadBr_40168f, 1
  br i1 %cmpBr_40168f, label %block_.L_40169a, label %block_401695

block_401695:
  ; Code: jmpq .L_4016b6	 RIP: 401695	 Bytes: 5
  %loadMem_401695 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401695 = call %struct.Memory* @routine_jmpq_.L_4016b6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401695, i64 33, i64 5)
  store %struct.Memory* %call_401695, %struct.Memory** %MEMORY

  br label %block_.L_4016b6

  ; Code: .L_40169a:	 RIP: 40169a	 Bytes: 0
block_.L_40169a:

  ; Code: movl -0x10(%rbp), %eax	 RIP: 40169a	 Bytes: 3
  %loadMem_40169a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40169a = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40169a)
  store %struct.Memory* %call_40169a, %struct.Memory** %MEMORY

  ; Code: addl -0x14(%rbp), %eax	 RIP: 40169d	 Bytes: 3
  %loadMem_40169d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40169d = call %struct.Memory* @routine_addl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40169d)
  store %struct.Memory* %call_40169d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 4016a0	 Bytes: 3
  %loadMem_4016a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016a0 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016a0)
  store %struct.Memory* %call_4016a0, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 4016a3	 Bytes: 4
  %loadMem_4016a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016a3 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016a3)
  store %struct.Memory* %call_4016a3, %struct.Memory** %MEMORY

  ; Code: movl 0x866540(,%rcx,4), %eax	 RIP: 4016a7	 Bytes: 7
  %loadMem_4016a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016a7 = call %struct.Memory* @routine_movl_0x866540___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016a7)
  store %struct.Memory* %call_4016a7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 4016ae	 Bytes: 3
  %loadMem_4016ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016ae = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016ae)
  store %struct.Memory* %call_4016ae, %struct.Memory** %MEMORY

  ; Code: jmpq .L_401661	 RIP: 4016b1	 Bytes: 5
  %loadMem_4016b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016b1 = call %struct.Memory* @routine_jmpq_.L_401661(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016b1, i64 -80, i64 5)
  store %struct.Memory* %call_4016b1, %struct.Memory** %MEMORY

  br label %block_.L_401661

  ; Code: .L_4016b6:	 RIP: 4016b6	 Bytes: 0
block_.L_4016b6:

  ; Code: jmpq .L_4016bb	 RIP: 4016b6	 Bytes: 5
  %loadMem_4016b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016b6 = call %struct.Memory* @routine_jmpq_.L_4016bb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016b6, i64 5, i64 5)
  store %struct.Memory* %call_4016b6, %struct.Memory** %MEMORY

  br label %block_.L_4016bb

  ; Code: .L_4016bb:	 RIP: 4016bb	 Bytes: 0
block_.L_4016bb:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4016bb	 Bytes: 3
  %loadMem_4016bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016bb = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016bb)
  store %struct.Memory* %call_4016bb, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4016be	 Bytes: 3
  %loadMem_4016be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016be = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016be)
  store %struct.Memory* %call_4016be, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 4016c1	 Bytes: 3
  %loadMem_4016c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016c1 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016c1)
  store %struct.Memory* %call_4016c1, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4015f2	 RIP: 4016c4	 Bytes: 5
  %loadMem_4016c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016c4 = call %struct.Memory* @routine_jmpq_.L_4015f2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016c4, i64 -210, i64 5)
  store %struct.Memory* %call_4016c4, %struct.Memory** %MEMORY

  br label %block_.L_4015f2

  ; Code: .L_4016c9:	 RIP: 4016c9	 Bytes: 0
block_.L_4016c9:

  ; Code: movl $0x0, -0x1c(%rbp)	 RIP: 4016c9	 Bytes: 7
  %loadMem_4016c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016c9 = call %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016c9)
  store %struct.Memory* %call_4016c9, %struct.Memory** %MEMORY

  ; Code: .L_4016d0:	 RIP: 4016d0	 Bytes: 0
  br label %block_.L_4016d0
block_.L_4016d0:

  ; Code: cmpl $0x8, -0x1c(%rbp)	 RIP: 4016d0	 Bytes: 4
  %loadMem_4016d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016d0 = call %struct.Memory* @routine_cmpl__0x8__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016d0)
  store %struct.Memory* %call_4016d0, %struct.Memory** %MEMORY

  ; Code: jge .L_401718	 RIP: 4016d4	 Bytes: 6
  %loadMem_4016d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016d4 = call %struct.Memory* @routine_jge_.L_401718(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016d4, i8* %BRANCH_TAKEN, i64 68, i64 6, i64 6)
  store %struct.Memory* %call_4016d4, %struct.Memory** %MEMORY

  %loadBr_4016d4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4016d4 = icmp eq i8 %loadBr_4016d4, 1
  br i1 %cmpBr_4016d4, label %block_.L_401718, label %block_4016da

block_4016da:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 4016da	 Bytes: 3
  %loadMem_4016da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016da = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016da)
  store %struct.Memory* %call_4016da, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 4016dd	 Bytes: 4
  %loadMem_4016dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016dd = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016dd)
  store %struct.Memory* %call_4016dd, %struct.Memory** %MEMORY

  ; Code: addl 0x425560(,%rcx,4), %eax	 RIP: 4016e1	 Bytes: 7
  %loadMem_4016e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016e1 = call %struct.Memory* @routine_addl_0x425560___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016e1)
  store %struct.Memory* %call_4016e1, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4016e8	 Bytes: 3
  %loadMem_4016e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016e8 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016e8)
  store %struct.Memory* %call_4016e8, %struct.Memory** %MEMORY

  ; Code: cmpl $0x4, 0x866540(,%rcx,4)	 RIP: 4016eb	 Bytes: 8
  %loadMem_4016eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016eb = call %struct.Memory* @routine_cmpl__0x4__0x866540___rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016eb)
  store %struct.Memory* %call_4016eb, %struct.Memory** %MEMORY

  ; Code: jne .L_401705	 RIP: 4016f3	 Bytes: 6
  %loadMem_4016f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016f3 = call %struct.Memory* @routine_jne_.L_401705(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016f3, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_4016f3, %struct.Memory** %MEMORY

  %loadBr_4016f3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4016f3 = icmp eq i8 %loadBr_4016f3, 1
  br i1 %cmpBr_4016f3, label %block_.L_401705, label %block_4016f9

block_4016f9:
  ; Code: movl $0x1, -0x4(%rbp)	 RIP: 4016f9	 Bytes: 7
  %loadMem_4016f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016f9 = call %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016f9)
  store %struct.Memory* %call_4016f9, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4017e0	 RIP: 401700	 Bytes: 5
  %loadMem_401700 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401700 = call %struct.Memory* @routine_jmpq_.L_4017e0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401700, i64 224, i64 5)
  store %struct.Memory* %call_401700, %struct.Memory** %MEMORY

  br label %block_.L_4017e0

  ; Code: .L_401705:	 RIP: 401705	 Bytes: 0
block_.L_401705:

  ; Code: jmpq .L_40170a	 RIP: 401705	 Bytes: 5
  %loadMem_401705 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401705 = call %struct.Memory* @routine_jmpq_.L_40170a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401705, i64 5, i64 5)
  store %struct.Memory* %call_401705, %struct.Memory** %MEMORY

  br label %block_.L_40170a

  ; Code: .L_40170a:	 RIP: 40170a	 Bytes: 0
block_.L_40170a:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 40170a	 Bytes: 3
  %loadMem_40170a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40170a = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40170a)
  store %struct.Memory* %call_40170a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40170d	 Bytes: 3
  %loadMem_40170d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40170d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40170d)
  store %struct.Memory* %call_40170d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 401710	 Bytes: 3
  %loadMem_401710 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401710 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401710)
  store %struct.Memory* %call_401710, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4016d0	 RIP: 401713	 Bytes: 5
  %loadMem_401713 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401713 = call %struct.Memory* @routine_jmpq_.L_4016d0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401713, i64 -67, i64 5)
  store %struct.Memory* %call_401713, %struct.Memory** %MEMORY

  br label %block_.L_4016d0

  ; Code: .L_401718:	 RIP: 401718	 Bytes: 0
block_.L_401718:

  ; Code: movl $0x0, -0x1c(%rbp)	 RIP: 401718	 Bytes: 7
  %loadMem_401718 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401718 = call %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401718)
  store %struct.Memory* %call_401718, %struct.Memory** %MEMORY

  ; Code: .L_40171f:	 RIP: 40171f	 Bytes: 0
  br label %block_.L_40171f
block_.L_40171f:

  ; Code: cmpl $0x4, -0x1c(%rbp)	 RIP: 40171f	 Bytes: 4
  %loadMem_40171f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40171f = call %struct.Memory* @routine_cmpl__0x4__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40171f)
  store %struct.Memory* %call_40171f, %struct.Memory** %MEMORY

  ; Code: jge .L_4017d9	 RIP: 401723	 Bytes: 6
  %loadMem_401723 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401723 = call %struct.Memory* @routine_jge_.L_4017d9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401723, i8* %BRANCH_TAKEN, i64 182, i64 6, i64 6)
  store %struct.Memory* %call_401723, %struct.Memory** %MEMORY

  %loadBr_401723 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401723 = icmp eq i8 %loadBr_401723, 1
  br i1 %cmpBr_401723, label %block_.L_4017d9, label %block_401729

block_401729:
  ; Code: movslq -0x1c(%rbp), %rax	 RIP: 401729	 Bytes: 4
  %loadMem_401729 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401729 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401729)
  store %struct.Memory* %call_401729, %struct.Memory** %MEMORY

  ; Code: movl 0x425580(,%rax,4), %ecx	 RIP: 40172d	 Bytes: 7
  %loadMem_40172d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40172d = call %struct.Memory* @routine_movl_0x425580___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40172d)
  store %struct.Memory* %call_40172d, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x10(%rbp)	 RIP: 401734	 Bytes: 3
  %loadMem_401734 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401734 = call %struct.Memory* @routine_movl__ecx__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401734)
  store %struct.Memory* %call_401734, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %ecx	 RIP: 401737	 Bytes: 3
  %loadMem_401737 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401737 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401737)
  store %struct.Memory* %call_401737, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rax	 RIP: 40173a	 Bytes: 4
  %loadMem_40173a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40173a = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40173a)
  store %struct.Memory* %call_40173a, %struct.Memory** %MEMORY

  ; Code: addl 0x425580(,%rax,4), %ecx	 RIP: 40173e	 Bytes: 7
  %loadMem_40173e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40173e = call %struct.Memory* @routine_addl_0x425580___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40173e)
  store %struct.Memory* %call_40173e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x14(%rbp)	 RIP: 401745	 Bytes: 3
  %loadMem_401745 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401745 = call %struct.Memory* @routine_movl__ecx__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401745)
  store %struct.Memory* %call_401745, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rax	 RIP: 401748	 Bytes: 4
  %loadMem_401748 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401748 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401748)
  store %struct.Memory* %call_401748, %struct.Memory** %MEMORY

  ; Code: movl 0x866540(,%rax,4), %ecx	 RIP: 40174c	 Bytes: 7
  %loadMem_40174c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40174c = call %struct.Memory* @routine_movl_0x866540___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40174c)
  store %struct.Memory* %call_40174c, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x18(%rbp)	 RIP: 401753	 Bytes: 3
  %loadMem_401753 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401753 = call %struct.Memory* @routine_movl__ecx__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401753)
  store %struct.Memory* %call_401753, %struct.Memory** %MEMORY

  ; Code: cmpl $0x6, -0x18(%rbp)	 RIP: 401756	 Bytes: 4
  %loadMem_401756 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401756 = call %struct.Memory* @routine_cmpl__0x6__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401756)
  store %struct.Memory* %call_401756, %struct.Memory** %MEMORY

  ; Code: jne .L_40176c	 RIP: 40175a	 Bytes: 6
  %loadMem_40175a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40175a = call %struct.Memory* @routine_jne_.L_40176c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40175a, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_40175a, %struct.Memory** %MEMORY

  %loadBr_40175a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40175a = icmp eq i8 %loadBr_40175a, 1
  br i1 %cmpBr_40175a, label %block_.L_40176c, label %block_401760

block_401760:
  ; Code: movl $0x1, -0x4(%rbp)	 RIP: 401760	 Bytes: 7
  %loadMem_401760 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401760 = call %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401760)
  store %struct.Memory* %call_401760, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4017e0	 RIP: 401767	 Bytes: 5
  %loadMem_401767 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401767 = call %struct.Memory* @routine_jmpq_.L_4017e0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401767, i64 121, i64 5)
  store %struct.Memory* %call_401767, %struct.Memory** %MEMORY

  br label %block_.L_4017e0

  ; Code: .L_40176c:	 RIP: 40176c	 Bytes: 0
block_.L_40176c:

  ; Code: jmpq .L_401771	 RIP: 40176c	 Bytes: 5
  %loadMem_40176c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40176c = call %struct.Memory* @routine_jmpq_.L_401771(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40176c, i64 5, i64 5)
  store %struct.Memory* %call_40176c, %struct.Memory** %MEMORY

  br label %block_.L_401771

  ; Code: .L_401771:	 RIP: 401771	 Bytes: 0
block_.L_401771:

  ; Code: cmpl $0x0, -0x18(%rbp)	 RIP: 401771	 Bytes: 4
  %loadMem_401771 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401771 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401771)
  store %struct.Memory* %call_401771, %struct.Memory** %MEMORY

  ; Code: je .L_4017c6	 RIP: 401775	 Bytes: 6
  %loadMem_401775 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401775 = call %struct.Memory* @routine_je_.L_4017c6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401775, i8* %BRANCH_TAKEN, i64 81, i64 6, i64 6)
  store %struct.Memory* %call_401775, %struct.Memory** %MEMORY

  %loadBr_401775 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401775 = icmp eq i8 %loadBr_401775, 1
  br i1 %cmpBr_401775, label %block_.L_4017c6, label %block_40177b

block_40177b:
  ; Code: cmpl $0x8, -0x18(%rbp)	 RIP: 40177b	 Bytes: 4
  %loadMem_40177b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40177b = call %struct.Memory* @routine_cmpl__0x8__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40177b)
  store %struct.Memory* %call_40177b, %struct.Memory** %MEMORY

  ; Code: je .L_40178f	 RIP: 40177f	 Bytes: 6
  %loadMem_40177f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40177f = call %struct.Memory* @routine_je_.L_40178f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40177f, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_40177f, %struct.Memory** %MEMORY

  %loadBr_40177f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40177f = icmp eq i8 %loadBr_40177f, 1
  br i1 %cmpBr_40177f, label %block_.L_40178f, label %block_401785

block_401785:
  ; Code: cmpl $0xa, -0x18(%rbp)	 RIP: 401785	 Bytes: 4
  %loadMem_401785 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401785 = call %struct.Memory* @routine_cmpl__0xa__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401785)
  store %struct.Memory* %call_401785, %struct.Memory** %MEMORY

  ; Code: jne .L_40179b	 RIP: 401789	 Bytes: 6
  %loadMem_401789 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401789 = call %struct.Memory* @routine_jne_.L_40179b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401789, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_401789, %struct.Memory** %MEMORY

  %loadBr_401789 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401789 = icmp eq i8 %loadBr_401789, 1
  br i1 %cmpBr_401789, label %block_.L_40179b, label %block_.L_40178f

  ; Code: .L_40178f:	 RIP: 40178f	 Bytes: 0
block_.L_40178f:

  ; Code: movl $0x1, -0x4(%rbp)	 RIP: 40178f	 Bytes: 7
  %loadMem_40178f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40178f = call %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40178f)
  store %struct.Memory* %call_40178f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4017e0	 RIP: 401796	 Bytes: 5
  %loadMem_401796 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401796 = call %struct.Memory* @routine_jmpq_.L_4017e0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401796, i64 74, i64 5)
  store %struct.Memory* %call_401796, %struct.Memory** %MEMORY

  br label %block_.L_4017e0

  ; Code: .L_40179b:	 RIP: 40179b	 Bytes: 0
block_.L_40179b:

  ; Code: cmpl $0xd, -0x18(%rbp)	 RIP: 40179b	 Bytes: 4
  %loadMem_40179b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40179b = call %struct.Memory* @routine_cmpl__0xd__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40179b)
  store %struct.Memory* %call_40179b, %struct.Memory** %MEMORY

  ; Code: je .L_4017aa	 RIP: 40179f	 Bytes: 6
  %loadMem_40179f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40179f = call %struct.Memory* @routine_je_.L_4017aa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40179f, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_40179f, %struct.Memory** %MEMORY

  %loadBr_40179f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40179f = icmp eq i8 %loadBr_40179f, 1
  br i1 %cmpBr_40179f, label %block_.L_4017aa, label %block_4017a5

block_4017a5:
  ; Code: jmpq .L_4017c6	 RIP: 4017a5	 Bytes: 5
  %loadMem_4017a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017a5 = call %struct.Memory* @routine_jmpq_.L_4017c6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017a5, i64 33, i64 5)
  store %struct.Memory* %call_4017a5, %struct.Memory** %MEMORY

  br label %block_.L_4017c6

  ; Code: .L_4017aa:	 RIP: 4017aa	 Bytes: 0
block_.L_4017aa:

  ; Code: movl -0x10(%rbp), %eax	 RIP: 4017aa	 Bytes: 3
  %loadMem_4017aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017aa = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017aa)
  store %struct.Memory* %call_4017aa, %struct.Memory** %MEMORY

  ; Code: addl -0x14(%rbp), %eax	 RIP: 4017ad	 Bytes: 3
  %loadMem_4017ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017ad = call %struct.Memory* @routine_addl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017ad)
  store %struct.Memory* %call_4017ad, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 4017b0	 Bytes: 3
  %loadMem_4017b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017b0 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017b0)
  store %struct.Memory* %call_4017b0, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 4017b3	 Bytes: 4
  %loadMem_4017b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017b3 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017b3)
  store %struct.Memory* %call_4017b3, %struct.Memory** %MEMORY

  ; Code: movl 0x866540(,%rcx,4), %eax	 RIP: 4017b7	 Bytes: 7
  %loadMem_4017b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017b7 = call %struct.Memory* @routine_movl_0x866540___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017b7)
  store %struct.Memory* %call_4017b7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 4017be	 Bytes: 3
  %loadMem_4017be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017be = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017be)
  store %struct.Memory* %call_4017be, %struct.Memory** %MEMORY

  ; Code: jmpq .L_401771	 RIP: 4017c1	 Bytes: 5
  %loadMem_4017c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017c1 = call %struct.Memory* @routine_jmpq_.L_401771(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017c1, i64 -80, i64 5)
  store %struct.Memory* %call_4017c1, %struct.Memory** %MEMORY

  br label %block_.L_401771

  ; Code: .L_4017c6:	 RIP: 4017c6	 Bytes: 0
block_.L_4017c6:

  ; Code: jmpq .L_4017cb	 RIP: 4017c6	 Bytes: 5
  %loadMem_4017c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017c6 = call %struct.Memory* @routine_jmpq_.L_4017cb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017c6, i64 5, i64 5)
  store %struct.Memory* %call_4017c6, %struct.Memory** %MEMORY

  br label %block_.L_4017cb

  ; Code: .L_4017cb:	 RIP: 4017cb	 Bytes: 0
block_.L_4017cb:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4017cb	 Bytes: 3
  %loadMem_4017cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017cb = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017cb)
  store %struct.Memory* %call_4017cb, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4017ce	 Bytes: 3
  %loadMem_4017ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017ce = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017ce)
  store %struct.Memory* %call_4017ce, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 4017d1	 Bytes: 3
  %loadMem_4017d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017d1 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017d1)
  store %struct.Memory* %call_4017d1, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40171f	 RIP: 4017d4	 Bytes: 5
  %loadMem_4017d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017d4 = call %struct.Memory* @routine_jmpq_.L_40171f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017d4, i64 -181, i64 5)
  store %struct.Memory* %call_4017d4, %struct.Memory** %MEMORY

  br label %block_.L_40171f

  ; Code: .L_4017d9:	 RIP: 4017d9	 Bytes: 0
block_.L_4017d9:

  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 4017d9	 Bytes: 7
  %loadMem_4017d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017d9 = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017d9)
  store %struct.Memory* %call_4017d9, %struct.Memory** %MEMORY

  ; Code: .L_4017e0:	 RIP: 4017e0	 Bytes: 0
  br label %block_.L_4017e0
block_.L_4017e0:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 4017e0	 Bytes: 3
  %loadMem_4017e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017e0 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017e0)
  store %struct.Memory* %call_4017e0, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 4017e3	 Bytes: 1
  %loadMem_4017e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017e3 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017e3)
  store %struct.Memory* %call_4017e3, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 4017e4	 Bytes: 1
  %loadMem_4017e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017e4 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017e4)
  store %struct.Memory* %call_4017e4, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_4017e4
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
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

define %struct.Memory* @routine_andl__0x1___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 1)
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

define %struct.Memory* @routine_je_.L_4015eb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
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

define %struct.Memory* @routine_cmpl__0x4__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_jge_.L_4014d7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x425550___rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 4347216
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
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

define %struct.Memory* @routine_addl_MINUS0x10__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 16
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__ecx__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 20
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x866540___rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8807744
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__ecx__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_cmpl__0x1__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
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

define %struct.Memory* @routine_jne_.L_401454(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_andl__0x1___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 1)
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


define %struct.Memory* @routine_je_.L_401454(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_4017e0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_cmpl__0x5__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 5)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_40146a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jmpq_.L_40146f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_4014c4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0xb__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 11)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_40148d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x9__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 9)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_401499(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_cmpl__0xd__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 13)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_4014a8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_4014c4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x14__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 20
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 20
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x866540___rcx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8807744
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_jmpq_.L_4014c9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_401400(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_cmpl__0x8__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 8)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_401526(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_0x425560___rcx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4347232
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_cmpl__0x3__0x866540___rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8807744
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 3)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_jne_.L_401513(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jmpq_.L_401518(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_4014de(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_jge_.L_4015df(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_0x425580___rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 4347264
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %14)
  ret %struct.Memory* %17
}


















define %struct.Memory* @routine_jne_.L_401572(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jmpq_.L_401577(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_je_.L_4015cc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x7__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 7)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_401595(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_4015a1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_je_.L_4015b0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_4015cc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
















define %struct.Memory* @routine_jmpq_.L_4015d1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_40152d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jge_.L_4016c9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_cmpl__0x2__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_401646(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_cmpl__0x6__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 6)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_40165c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jmpq_.L_401661(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_je_.L_4016b6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0xc__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 12)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_40167f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0xa__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_40168b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_je_.L_40169a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_4016b6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
















define %struct.Memory* @routine_jmpq_.L_4016bb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_4015f2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_jge_.L_401718(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_cmpl__0x4__0x866540___rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8807744
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 4)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_jne_.L_401705(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jmpq_.L_40170a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_4016d0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_jge_.L_4017d9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_addl_0x425580___rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %14, 4347264
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %15)
  ret %struct.Memory* %18
}












define %struct.Memory* @routine_jne_.L_40176c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jmpq_.L_401771(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_je_.L_4017c6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x8__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 8)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_40178f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_40179b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_je_.L_4017aa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_4017c6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
















define %struct.Memory* @routine_jmpq_.L_4017cb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_40171f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

