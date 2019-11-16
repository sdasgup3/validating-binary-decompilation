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

declare %struct.Memory* @sub_402920.is_draw(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4098e0.in_check(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_407e30.gen(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40b730.make(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_406680.check_legal(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40c7a0.unmake(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_415f00.order_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4174b0.remove_one(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_421970.comp_to_san(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_409980.f_in_check(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_417560.search(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_423990.post_fh_thinking(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_423b80.post_fl_thinking(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_423410.post_thinking(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4237a0.post_fail_thinking(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x62db08_type = type <{ [8 x i8] }>
@G_0x62db08= global %G_0x62db08_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x62db10_type = type <{ [8 x i8] }>
@G_0x62db10= global %G_0x62db10_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x62db18_type = type <{ [8 x i8] }>
@G_0x62db18= global %G_0x62db18_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x62e51c_type = type <{ [1 x i8] }>
@G_0x62e51c= global %G_0x62e51c_type <{ [1 x i8] c"\00" }>
%G_0x62e9e0_type = type <{ [4 x i8] }>
@G_0x62e9e0= global %G_0x62e9e0_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x62e9f8_type = type <{ [4 x i8] }>
@G_0x62e9f8= global %G_0x62e9f8_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x62ea0c_type = type <{ [4 x i8] }>
@G_0x62ea0c= global %G_0x62ea0c_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x62ea38_type = type <{ [4 x i8] }>
@G_0x62ea38= global %G_0x62ea38_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x633b40_type = type <{ [4 x i8] }>
@G_0x633b40= global %G_0x633b40_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x633b50_type = type <{ [1 x i8] }>
@G_0x633b50= global %G_0x633b50_type <{ [1 x i8] c"\00" }>
%G_0x639110_type = type <{ [4 x i8] }>
@G_0x639110= global %G_0x639110_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x85f150_type = type <{ [4 x i8] }>
@G_0x85f150= global %G_0x85f150_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x85f154_type = type <{ [1 x i8] }>
@G_0x85f154= global %G_0x85f154_type <{ [1 x i8] c"\00" }>
%G_0x85f164_type = type <{ [4 x i8] }>
@G_0x85f164= global %G_0x85f164_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x8644f4_type = type <{ [4 x i8] }>
@G_0x8644f4= global %G_0x8644f4_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x864500_type = type <{ [4 x i8] }>
@G_0x864500= global %G_0x864500_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x86450c_type = type <{ [4 x i8] }>
@G_0x86450c= global %G_0x86450c_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x8661bc_type = type <{ [1 x i8] }>
@G_0x8661bc= global %G_0x8661bc_type <{ [1 x i8] c"\00" }>
%G_0x8661dc_type = type <{ [4 x i8] }>
@G_0x8661dc= global %G_0x8661dc_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x866530_type = type <{ [4 x i8] }>
@G_0x866530= global %G_0x866530_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x866788_type = type <{ [4 x i8] }>
@G_0x866788= global %G_0x866788_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x866790_type = type <{ [1 x i8] }>
@G_0x866790= global %G_0x866790_type <{ [1 x i8] c"\00" }>
%G_0x86679c_type = type <{ [1 x i8] }>
@G_0x86679c= global %G_0x86679c_type <{ [1 x i8] c"\00" }>
%G_0x8825f8_type = type <{ [4 x i8] }>
@G_0x8825f8= global %G_0x8825f8_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x886a5c_type = type <{ [4 x i8] }>
@G_0x886a5c= global %G_0x886a5c_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x886bbc_type = type <{ [1 x i8] }>
@G_0x886bbc= global %G_0x886bbc_type <{ [1 x i8] c"\00" }>
%G_0x886bc0_type = type <{ [4 x i8] }>
@G_0x886bc0= global %G_0x886bc0_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x8a2a04_type = type <{ [1 x i8] }>
@G_0x8a2a04= global %G_0x8a2a04_type <{ [1 x i8] c"\00" }>
%G__0x639220_type = type <{ [8 x i8] }>
@G__0x639220= global %G__0x639220_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x63ae50_type = type <{ [8 x i8] }>
@G__0x63ae50= global %G__0x63ae50_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x864510_type = type <{ [8 x i8] }>
@G__0x864510= global %G__0x864510_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x86bda0_type = type <{ [8 x i8] }>
@G__0x86bda0= global %G__0x86bda0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x882600_type = type <{ [8 x i8] }>
@G__0x882600= global %G__0x882600_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x884b20_type = type <{ [8 x i8] }>
@G__0x884b20= global %G__0x884b20_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x886bd0_type = type <{ [8 x i8] }>
@G__0x886bd0= global %G__0x886bd0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @search_root(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .search_root:	 RIP: 4193f0	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 4193f0	 Bytes: 1
  %loadMem_4193f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4193f0 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4193f0)
  store %struct.Memory* %call_4193f0, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 4193f1	 Bytes: 3
  %loadMem_4193f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4193f1 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4193f1)
  store %struct.Memory* %call_4193f1, %struct.Memory** %MEMORY

  ; Code: subq $0x40c0, %rsp	 RIP: 4193f4	 Bytes: 7
  %loadMem_4193f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4193f4 = call %struct.Memory* @routine_subq__0x40c0___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4193f4)
  store %struct.Memory* %call_4193f4, %struct.Memory** %MEMORY

  ; Code: movq %rdi, %rax	 RIP: 4193fb	 Bytes: 3
  %loadMem_4193fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4193fb = call %struct.Memory* @routine_movq__rdi___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4193fb)
  store %struct.Memory* %call_4193fb, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x4(%rbp)	 RIP: 4193fe	 Bytes: 3
  %loadMem_4193fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4193fe = call %struct.Memory* @routine_movl__esi__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4193fe)
  store %struct.Memory* %call_4193fe, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x8(%rbp)	 RIP: 419401	 Bytes: 3
  %loadMem_419401 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419401 = call %struct.Memory* @routine_movl__edx__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419401)
  store %struct.Memory* %call_419401, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0xc(%rbp)	 RIP: 419404	 Bytes: 3
  %loadMem_419404 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419404 = call %struct.Memory* @routine_movl__ecx__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419404)
  store %struct.Memory* %call_419404, %struct.Memory** %MEMORY

  ; Code: movq 0x62db08, %r8	 RIP: 419407	 Bytes: 8
  %loadMem_419407 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419407 = call %struct.Memory* @routine_movq_0x62db08___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419407)
  store %struct.Memory* %call_419407, %struct.Memory** %MEMORY

  ; Code: movq %r8, -0x3028(%rbp)	 RIP: 41940f	 Bytes: 7
  %loadMem_41940f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41940f = call %struct.Memory* @routine_movq__r8__MINUS0x3028__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41940f)
  store %struct.Memory* %call_41940f, %struct.Memory** %MEMORY

  ; Code: movq 0x62db10, %r8	 RIP: 419416	 Bytes: 8
  %loadMem_419416 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419416 = call %struct.Memory* @routine_movq_0x62db10___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419416)
  store %struct.Memory* %call_419416, %struct.Memory** %MEMORY

  ; Code: movq %r8, -0x3020(%rbp)	 RIP: 41941e	 Bytes: 7
  %loadMem_41941e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41941e = call %struct.Memory* @routine_movq__r8__MINUS0x3020__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41941e)
  store %struct.Memory* %call_41941e, %struct.Memory** %MEMORY

  ; Code: movq 0x62db18, %r8	 RIP: 419425	 Bytes: 8
  %loadMem_419425 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419425 = call %struct.Memory* @routine_movq_0x62db18___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419425)
  store %struct.Memory* %call_419425, %struct.Memory** %MEMORY

  ; Code: movq %r8, -0x3018(%rbp)	 RIP: 41942d	 Bytes: 7
  %loadMem_41942d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41942d = call %struct.Memory* @routine_movq__r8__MINUS0x3018__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41942d)
  store %struct.Memory* %call_41942d, %struct.Memory** %MEMORY

  ; Code: movl $0xfff0bdc0, -0x3038(%rbp)	 RIP: 419434	 Bytes: 10
  %loadMem_419434 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419434 = call %struct.Memory* @routine_movl__0xfff0bdc0__MINUS0x3038__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419434)
  store %struct.Memory* %call_419434, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x407c(%rbp)	 RIP: 41943e	 Bytes: 10
  %loadMem_41943e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41943e = call %struct.Memory* @routine_movl__0x0__MINUS0x407c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41943e)
  store %struct.Memory* %call_41943e, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 419448	 Bytes: 3
  %loadMem_419448 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419448 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419448)
  store %struct.Memory* %call_419448, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x4050(%rbp)	 RIP: 41944b	 Bytes: 6
  %loadMem_41944b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41944b = call %struct.Memory* @routine_movl__ecx__MINUS0x4050__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41944b)
  store %struct.Memory* %call_41944b, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %ecx	 RIP: 419451	 Bytes: 3
  %loadMem_419451 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419451 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419451)
  store %struct.Memory* %call_419451, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x4054(%rbp)	 RIP: 419454	 Bytes: 6
  %loadMem_419454 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419454 = call %struct.Memory* @routine_movl__ecx__MINUS0x4054__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419454)
  store %struct.Memory* %call_419454, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x302c(%rbp)	 RIP: 41945a	 Bytes: 10
  %loadMem_41945a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41945a = call %struct.Memory* @routine_movl__0x0__MINUS0x302c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41945a)
  store %struct.Memory* %call_41945a, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x4044(%rbp)	 RIP: 419464	 Bytes: 10
  %loadMem_419464 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419464 = call %struct.Memory* @routine_movl__0x1__MINUS0x4044__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419464)
  store %struct.Memory* %call_419464, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x886bc0	 RIP: 41946e	 Bytes: 11
  %loadMem_41946e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41946e = call %struct.Memory* @routine_movl__0x1__0x886bc0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41946e)
  store %struct.Memory* %call_41946e, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x639110	 RIP: 419479	 Bytes: 11
  %loadMem_419479 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419479 = call %struct.Memory* @routine_movl__0x1__0x639110(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419479)
  store %struct.Memory* %call_419479, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x866788	 RIP: 419484	 Bytes: 11
  %loadMem_419484 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419484 = call %struct.Memory* @routine_movl__0x0__0x866788(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419484)
  store %struct.Memory* %call_419484, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x8661dc	 RIP: 41948f	 Bytes: 11
  %loadMem_41948f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41948f = call %struct.Memory* @routine_movl__0x0__0x8661dc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41948f)
  store %struct.Memory* %call_41948f, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x404c(%rbp)	 RIP: 41949a	 Bytes: 10
  %loadMem_41949a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41949a = call %struct.Memory* @routine_movl__0x1__MINUS0x404c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41949a)
  store %struct.Memory* %call_41949a, %struct.Memory** %MEMORY

  ; Code: movl $0xfff0bdc0, 0x86450c	 RIP: 4194a4	 Bytes: 11
  %loadMem_4194a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4194a4 = call %struct.Memory* @routine_movl__0xfff0bdc0__0x86450c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4194a4)
  store %struct.Memory* %call_4194a4, %struct.Memory** %MEMORY

  ; Code: movl 0x864500, %ecx	 RIP: 4194af	 Bytes: 7
  %loadMem_4194af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4194af = call %struct.Memory* @routine_movl_0x864500___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4194af)
  store %struct.Memory* %call_4194af, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 4194b6	 Bytes: 3
  %loadMem_4194b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4194b6 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4194b6)
  store %struct.Memory* %call_4194b6, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x864500	 RIP: 4194b9	 Bytes: 7
  %loadMem_4194b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4194b9 = call %struct.Memory* @routine_movl__ecx__0x864500(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4194b9)
  store %struct.Memory* %call_4194b9, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x4088(%rbp)	 RIP: 4194c0	 Bytes: 7
  %loadMem_4194c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4194c0 = call %struct.Memory* @routine_movq__rax__MINUS0x4088__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4194c0)
  store %struct.Memory* %call_4194c0, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x4090(%rbp)	 RIP: 4194c7	 Bytes: 7
  %loadMem_4194c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4194c7 = call %struct.Memory* @routine_movq__rdi__MINUS0x4090__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4194c7)
  store %struct.Memory* %call_4194c7, %struct.Memory** %MEMORY

  ; Code: callq .is_draw	 RIP: 4194ce	 Bytes: 5
  %loadMem1_4194ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4194ce = call %struct.Memory* @routine_callq_.is_draw(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4194ce, i64 -93102, i64 5, i64 5)
  store %struct.Memory* %call1_4194ce, %struct.Memory** %MEMORY

  %loadMem2_4194ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4194ce = load i64, i64* %3
  %call2_4194ce = call %struct.Memory* @sub_402920.is_draw(%struct.State* %0, i64  %loadPC_4194ce, %struct.Memory* %loadMem2_4194ce)
  store %struct.Memory* %call2_4194ce, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4194d3	 Bytes: 3
  %loadMem_4194d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4194d3 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4194d3)
  store %struct.Memory* %call_4194d3, %struct.Memory** %MEMORY

  ; Code: je .L_419534	 RIP: 4194d6	 Bytes: 6
  %loadMem_4194d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4194d6 = call %struct.Memory* @routine_je_.L_419534(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4194d6, i8* %BRANCH_TAKEN, i64 94, i64 6, i64 6)
  store %struct.Memory* %call_4194d6, %struct.Memory** %MEMORY

  %loadBr_4194d6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4194d6 = icmp eq i8 %loadBr_4194d6, 1
  br i1 %cmpBr_4194d6, label %block_.L_419534, label %block_4194dc

block_4194dc:
  ; Code: movl $0x5, 0x866530	 RIP: 4194dc	 Bytes: 11
  %loadMem_4194dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4194dc = call %struct.Memory* @routine_movl__0x5__0x866530(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4194dc)
  store %struct.Memory* %call_4194dc, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x86450c	 RIP: 4194e7	 Bytes: 11
  %loadMem_4194e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4194e7 = call %struct.Memory* @routine_movl__0x0__0x86450c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4194e7)
  store %struct.Memory* %call_4194e7, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rax	 RIP: 4194f2	 Bytes: 8
  %loadMem_4194f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4194f2 = call %struct.Memory* @routine_movslq_0x886bc0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4194f2)
  store %struct.Memory* %call_4194f2, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x86b8b0(,%rax,4)	 RIP: 4194fa	 Bytes: 11
  %loadMem_4194fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4194fa = call %struct.Memory* @routine_movl__0x0__0x86b8b0___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4194fa)
  store %struct.Memory* %call_4194fa, %struct.Memory** %MEMORY

  ; Code: movq 0x62db08, %rax	 RIP: 419505	 Bytes: 8
  %loadMem_419505 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419505 = call %struct.Memory* @routine_movq_0x62db08___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419505)
  store %struct.Memory* %call_419505, %struct.Memory** %MEMORY

  ; Code: movq -0x4090(%rbp), %rcx	 RIP: 41950d	 Bytes: 7
  %loadMem_41950d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41950d = call %struct.Memory* @routine_movq_MINUS0x4090__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41950d)
  store %struct.Memory* %call_41950d, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rcx)	 RIP: 419514	 Bytes: 3
  %loadMem_419514 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419514 = call %struct.Memory* @routine_movq__rax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419514)
  store %struct.Memory* %call_419514, %struct.Memory** %MEMORY

  ; Code: movq 0x62db10, %rax	 RIP: 419517	 Bytes: 8
  %loadMem_419517 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419517 = call %struct.Memory* @routine_movq_0x62db10___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419517)
  store %struct.Memory* %call_419517, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x8(%rcx)	 RIP: 41951f	 Bytes: 4
  %loadMem_41951f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41951f = call %struct.Memory* @routine_movq__rax__0x8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41951f)
  store %struct.Memory* %call_41951f, %struct.Memory** %MEMORY

  ; Code: movq 0x62db18, %rax	 RIP: 419523	 Bytes: 8
  %loadMem_419523 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419523 = call %struct.Memory* @routine_movq_0x62db18___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419523)
  store %struct.Memory* %call_419523, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x10(%rcx)	 RIP: 41952b	 Bytes: 4
  %loadMem_41952b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41952b = call %struct.Memory* @routine_movq__rax__0x10__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41952b)
  store %struct.Memory* %call_41952b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41a92e	 RIP: 41952f	 Bytes: 5
  %loadMem_41952f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41952f = call %struct.Memory* @routine_jmpq_.L_41a92e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41952f, i64 5119, i64 5)
  store %struct.Memory* %call_41952f, %struct.Memory** %MEMORY

  br label %block_.L_41a92e

  ; Code: .L_419534:	 RIP: 419534	 Bytes: 0
block_.L_419534:

  ; Code: movl 0x886bc0, %eax	 RIP: 419534	 Bytes: 7
  %loadMem_419534 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419534 = call %struct.Memory* @routine_movl_0x886bc0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419534)
  store %struct.Memory* %call_419534, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rcx	 RIP: 41953b	 Bytes: 8
  %loadMem_41953b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41953b = call %struct.Memory* @routine_movslq_0x886bc0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41953b)
  store %struct.Memory* %call_41953b, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x86b8b0(,%rcx,4)	 RIP: 419543	 Bytes: 7
  %loadMem_419543 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419543 = call %struct.Memory* @routine_movl__eax__0x86b8b0___rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419543)
  store %struct.Memory* %call_419543, %struct.Memory** %MEMORY

  ; Code: movl 0x633b40, %eax	 RIP: 41954a	 Bytes: 7
  %loadMem_41954a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41954a = call %struct.Memory* @routine_movl_0x633b40___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41954a)
  store %struct.Memory* %call_41954a, %struct.Memory** %MEMORY

  ; Code: movl 0x62ea38, %edx	 RIP: 419551	 Bytes: 7
  %loadMem_419551 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419551 = call %struct.Memory* @routine_movl_0x62ea38___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419551)
  store %struct.Memory* %call_419551, %struct.Memory** %MEMORY

  ; Code: addl 0x886bc0, %edx	 RIP: 419558	 Bytes: 7
  %loadMem_419558 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419558 = call %struct.Memory* @routine_addl_0x886bc0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419558)
  store %struct.Memory* %call_419558, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 41955f	 Bytes: 3
  %loadMem_41955f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41955f = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41955f)
  store %struct.Memory* %call_41955f, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 419562	 Bytes: 3
  %loadMem_419562 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419562 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419562)
  store %struct.Memory* %call_419562, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x84a3d0(,%rcx,4)	 RIP: 419565	 Bytes: 7
  %loadMem_419565 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419565 = call %struct.Memory* @routine_movl__eax__0x84a3d0___rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419565)
  store %struct.Memory* %call_419565, %struct.Memory** %MEMORY

  ; Code: callq .in_check	 RIP: 41956c	 Bytes: 5
  %loadMem1_41956c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41956c = call %struct.Memory* @routine_callq_.in_check(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41956c, i64 -64652, i64 5, i64 5)
  store %struct.Memory* %call1_41956c, %struct.Memory** %MEMORY

  %loadMem2_41956c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41956c = load i64, i64* %3
  %call2_41956c = call %struct.Memory* @sub_4098e0.in_check(%struct.State* %0, i64  %loadPC_41956c, %struct.Memory* %loadMem2_41956c)
  store %struct.Memory* %call2_41956c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4078(%rbp)	 RIP: 419571	 Bytes: 6
  %loadMem_419571 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419571 = call %struct.Memory* @routine_movl__eax__MINUS0x4078__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419571)
  store %struct.Memory* %call_419571, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x4078(%rbp)	 RIP: 419577	 Bytes: 7
  %loadMem_419577 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419577 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x4078__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419577)
  store %struct.Memory* %call_419577, %struct.Memory** %MEMORY

  ; Code: je .L_41959e	 RIP: 41957e	 Bytes: 6
  %loadMem_41957e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41957e = call %struct.Memory* @routine_je_.L_41959e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41957e, i8* %BRANCH_TAKEN, i64 32, i64 6, i64 6)
  store %struct.Memory* %call_41957e, %struct.Memory** %MEMORY

  %loadBr_41957e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41957e = icmp eq i8 %loadBr_41957e, 1
  br i1 %cmpBr_41957e, label %block_.L_41959e, label %block_419584

block_419584:
  ; Code: movl 0x62e9f8, %eax	 RIP: 419584	 Bytes: 7
  %loadMem_419584 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419584 = call %struct.Memory* @routine_movl_0x62e9f8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419584)
  store %struct.Memory* %call_419584, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41958b	 Bytes: 3
  %loadMem_41958b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41958b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41958b)
  store %struct.Memory* %call_41958b, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62e9f8	 RIP: 41958e	 Bytes: 7
  %loadMem_41958e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41958e = call %struct.Memory* @routine_movl__eax__0x62e9f8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41958e)
  store %struct.Memory* %call_41958e, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %eax	 RIP: 419595	 Bytes: 3
  %loadMem_419595 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419595 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419595)
  store %struct.Memory* %call_419595, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 419598	 Bytes: 3
  %loadMem_419598 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419598 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419598)
  store %struct.Memory* %call_419598, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 41959b	 Bytes: 3
  %loadMem_41959b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41959b = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41959b)
  store %struct.Memory* %call_41959b, %struct.Memory** %MEMORY

  ; Code: .L_41959e:	 RIP: 41959e	 Bytes: 0
  br label %block_.L_41959e
block_.L_41959e:

  ; Code: movl -0x4078(%rbp), %eax	 RIP: 41959e	 Bytes: 6
  %loadMem_41959e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41959e = call %struct.Memory* @routine_movl_MINUS0x4078__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41959e)
  store %struct.Memory* %call_41959e, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rcx	 RIP: 4195a4	 Bytes: 8
  %loadMem_4195a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4195a4 = call %struct.Memory* @routine_movslq_0x886bc0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4195a4)
  store %struct.Memory* %call_4195a4, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x880660(,%rcx,4)	 RIP: 4195ac	 Bytes: 7
  %loadMem_4195ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4195ac = call %struct.Memory* @routine_movl__eax__0x880660___rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4195ac)
  store %struct.Memory* %call_4195ac, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rcx	 RIP: 4195b3	 Bytes: 8
  %loadMem_4195b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4195b3 = call %struct.Memory* @routine_movslq_0x886bc0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4195b3)
  store %struct.Memory* %call_4195b3, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x8a05c0(,%rcx,4)	 RIP: 4195bb	 Bytes: 11
  %loadMem_4195bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4195bb = call %struct.Memory* @routine_movl__0x0__0x8a05c0___rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4195bb)
  store %struct.Memory* %call_4195bb, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rcx	 RIP: 4195c6	 Bytes: 8
  %loadMem_4195c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4195c6 = call %struct.Memory* @routine_movslq_0x886bc0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4195c6)
  store %struct.Memory* %call_4195c6, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x8801a0(,%rcx,4)	 RIP: 4195ce	 Bytes: 11
  %loadMem_4195ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4195ce = call %struct.Memory* @routine_movl__0x0__0x8801a0___rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4195ce)
  store %struct.Memory* %call_4195ce, %struct.Memory** %MEMORY

  ; Code: cmpl $0x4, 0x85f154	 RIP: 4195d9	 Bytes: 8
  %loadMem_4195d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4195d9 = call %struct.Memory* @routine_cmpl__0x4__0x85f154(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4195d9)
  store %struct.Memory* %call_4195d9, %struct.Memory** %MEMORY

  ; Code: jne .L_41977b	 RIP: 4195e1	 Bytes: 6
  %loadMem_4195e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4195e1 = call %struct.Memory* @routine_jne_.L_41977b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4195e1, i8* %BRANCH_TAKEN, i64 410, i64 6, i64 6)
  store %struct.Memory* %call_4195e1, %struct.Memory** %MEMORY

  %loadBr_4195e1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4195e1 = icmp eq i8 %loadBr_4195e1, 1
  br i1 %cmpBr_4195e1, label %block_.L_41977b, label %block_4195e7

block_4195e7:
  ; Code: leaq -0x3010(%rbp), %rdi	 RIP: 4195e7	 Bytes: 7
  %loadMem_4195e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4195e7 = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4195e7)
  store %struct.Memory* %call_4195e7, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x62e9e0	 RIP: 4195ee	 Bytes: 11
  %loadMem_4195ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4195ee = call %struct.Memory* @routine_movl__0x0__0x62e9e0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4195ee)
  store %struct.Memory* %call_4195ee, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x85f164	 RIP: 4195f9	 Bytes: 11
  %loadMem_4195f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4195f9 = call %struct.Memory* @routine_movl__0x1__0x85f164(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4195f9)
  store %struct.Memory* %call_4195f9, %struct.Memory** %MEMORY

  ; Code: callq .gen	 RIP: 419604	 Bytes: 5
  %loadMem1_419604 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_419604 = call %struct.Memory* @routine_callq_.gen(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_419604, i64 -71636, i64 5, i64 5)
  store %struct.Memory* %call1_419604, %struct.Memory** %MEMORY

  %loadMem2_419604 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_419604 = load i64, i64* %3
  %call2_419604 = call %struct.Memory* @sub_407e30.gen(%struct.State* %0, i64  %loadPC_419604, %struct.Memory* %loadMem2_419604)
  store %struct.Memory* %call2_419604, %struct.Memory** %MEMORY

  ; Code: movl 0x85f150, %eax	 RIP: 419609	 Bytes: 7
  %loadMem_419609 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419609 = call %struct.Memory* @routine_movl_0x85f150___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419609)
  store %struct.Memory* %call_419609, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x302c(%rbp)	 RIP: 419610	 Bytes: 6
  %loadMem_419610 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419610 = call %struct.Memory* @routine_movl__eax__MINUS0x302c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419610)
  store %struct.Memory* %call_419610, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x85f164	 RIP: 419616	 Bytes: 11
  %loadMem_419616 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419616 = call %struct.Memory* @routine_movl__0x0__0x85f164(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419616)
  store %struct.Memory* %call_419616, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x302c(%rbp)	 RIP: 419621	 Bytes: 7
  %loadMem_419621 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419621 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x302c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419621)
  store %struct.Memory* %call_419621, %struct.Memory** %MEMORY

  ; Code: je .L_4196b9	 RIP: 419628	 Bytes: 6
  %loadMem_419628 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419628 = call %struct.Memory* @routine_je_.L_4196b9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419628, i8* %BRANCH_TAKEN, i64 145, i64 6, i64 6)
  store %struct.Memory* %call_419628, %struct.Memory** %MEMORY

  %loadBr_419628 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419628 = icmp eq i8 %loadBr_419628, 1
  br i1 %cmpBr_419628, label %block_.L_4196b9, label %block_41962e

block_41962e:
  ; Code: movl $0x0, -0x3030(%rbp)	 RIP: 41962e	 Bytes: 10
  %loadMem_41962e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41962e = call %struct.Memory* @routine_movl__0x0__MINUS0x3030__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41962e)
  store %struct.Memory* %call_41962e, %struct.Memory** %MEMORY

  ; Code: .L_419638:	 RIP: 419638	 Bytes: 0
  br label %block_.L_419638
block_.L_419638:

  ; Code: movl -0x3030(%rbp), %eax	 RIP: 419638	 Bytes: 6
  %loadMem_419638 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419638 = call %struct.Memory* @routine_movl_MINUS0x3030__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419638)
  store %struct.Memory* %call_419638, %struct.Memory** %MEMORY

  ; Code: cmpl -0x302c(%rbp), %eax	 RIP: 41963e	 Bytes: 6
  %loadMem_41963e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41963e = call %struct.Memory* @routine_cmpl_MINUS0x302c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41963e)
  store %struct.Memory* %call_41963e, %struct.Memory** %MEMORY

  ; Code: jge .L_4196b4	 RIP: 419644	 Bytes: 6
  %loadMem_419644 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419644 = call %struct.Memory* @routine_jge_.L_4196b4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419644, i8* %BRANCH_TAKEN, i64 112, i64 6, i64 6)
  store %struct.Memory* %call_419644, %struct.Memory** %MEMORY

  %loadBr_419644 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419644 = icmp eq i8 %loadBr_419644, 1
  br i1 %cmpBr_419644, label %block_.L_4196b4, label %block_41964a

block_41964a:
  ; Code: leaq -0x3010(%rbp), %rdi	 RIP: 41964a	 Bytes: 7
  %loadMem_41964a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41964a = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41964a)
  store %struct.Memory* %call_41964a, %struct.Memory** %MEMORY

  ; Code: movl -0x3030(%rbp), %esi	 RIP: 419651	 Bytes: 6
  %loadMem_419651 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419651 = call %struct.Memory* @routine_movl_MINUS0x3030__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419651)
  store %struct.Memory* %call_419651, %struct.Memory** %MEMORY

  ; Code: callq .make	 RIP: 419657	 Bytes: 5
  %loadMem1_419657 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_419657 = call %struct.Memory* @routine_callq_.make(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_419657, i64 -57127, i64 5, i64 5)
  store %struct.Memory* %call1_419657, %struct.Memory** %MEMORY

  %loadMem2_419657 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_419657 = load i64, i64* %3
  %call2_419657 = call %struct.Memory* @sub_40b730.make(%struct.State* %0, i64  %loadPC_419657, %struct.Memory* %loadMem2_419657)
  store %struct.Memory* %call2_419657, %struct.Memory** %MEMORY

  ; Code: leaq -0x3010(%rbp), %rdi	 RIP: 41965c	 Bytes: 7
  %loadMem_41965c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41965c = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41965c)
  store %struct.Memory* %call_41965c, %struct.Memory** %MEMORY

  ; Code: movl -0x3030(%rbp), %esi	 RIP: 419663	 Bytes: 6
  %loadMem_419663 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419663 = call %struct.Memory* @routine_movl_MINUS0x3030__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419663)
  store %struct.Memory* %call_419663, %struct.Memory** %MEMORY

  ; Code: movl -0x4078(%rbp), %edx	 RIP: 419669	 Bytes: 6
  %loadMem_419669 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419669 = call %struct.Memory* @routine_movl_MINUS0x4078__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419669)
  store %struct.Memory* %call_419669, %struct.Memory** %MEMORY

  ; Code: callq .check_legal	 RIP: 41966f	 Bytes: 5
  %loadMem1_41966f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41966f = call %struct.Memory* @routine_callq_.check_legal(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41966f, i64 -77807, i64 5, i64 5)
  store %struct.Memory* %call1_41966f, %struct.Memory** %MEMORY

  %loadMem2_41966f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41966f = load i64, i64* %3
  %call2_41966f = call %struct.Memory* @sub_406680.check_legal(%struct.State* %0, i64  %loadPC_41966f, %struct.Memory* %loadMem2_41966f)
  store %struct.Memory* %call2_41966f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 419674	 Bytes: 3
  %loadMem_419674 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419674 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419674)
  store %struct.Memory* %call_419674, %struct.Memory** %MEMORY

  ; Code: je .L_41968e	 RIP: 419677	 Bytes: 6
  %loadMem_419677 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419677 = call %struct.Memory* @routine_je_.L_41968e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419677, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_419677, %struct.Memory** %MEMORY

  %loadBr_419677 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419677 = icmp eq i8 %loadBr_419677, 1
  br i1 %cmpBr_419677, label %block_.L_41968e, label %block_41967d

block_41967d:
  ; Code: movl 0x62e9e0, %eax	 RIP: 41967d	 Bytes: 7
  %loadMem_41967d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41967d = call %struct.Memory* @routine_movl_0x62e9e0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41967d)
  store %struct.Memory* %call_41967d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 419684	 Bytes: 3
  %loadMem_419684 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419684 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419684)
  store %struct.Memory* %call_419684, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62e9e0	 RIP: 419687	 Bytes: 7
  %loadMem_419687 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419687 = call %struct.Memory* @routine_movl__eax__0x62e9e0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419687)
  store %struct.Memory* %call_419687, %struct.Memory** %MEMORY

  ; Code: .L_41968e:	 RIP: 41968e	 Bytes: 0
  br label %block_.L_41968e
block_.L_41968e:

  ; Code: leaq -0x3010(%rbp), %rdi	 RIP: 41968e	 Bytes: 7
  %loadMem_41968e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41968e = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41968e)
  store %struct.Memory* %call_41968e, %struct.Memory** %MEMORY

  ; Code: movl -0x3030(%rbp), %esi	 RIP: 419695	 Bytes: 6
  %loadMem_419695 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419695 = call %struct.Memory* @routine_movl_MINUS0x3030__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419695)
  store %struct.Memory* %call_419695, %struct.Memory** %MEMORY

  ; Code: callq .unmake	 RIP: 41969b	 Bytes: 5
  %loadMem1_41969b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41969b = call %struct.Memory* @routine_callq_.unmake(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41969b, i64 -52987, i64 5, i64 5)
  store %struct.Memory* %call1_41969b, %struct.Memory** %MEMORY

  %loadMem2_41969b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41969b = load i64, i64* %3
  %call2_41969b = call %struct.Memory* @sub_40c7a0.unmake(%struct.State* %0, i64  %loadPC_41969b, %struct.Memory* %loadMem2_41969b)
  store %struct.Memory* %call2_41969b, %struct.Memory** %MEMORY

  ; Code: movl -0x3030(%rbp), %eax	 RIP: 4196a0	 Bytes: 6
  %loadMem_4196a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4196a0 = call %struct.Memory* @routine_movl_MINUS0x3030__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4196a0)
  store %struct.Memory* %call_4196a0, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4196a6	 Bytes: 3
  %loadMem_4196a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4196a6 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4196a6)
  store %struct.Memory* %call_4196a6, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3030(%rbp)	 RIP: 4196a9	 Bytes: 6
  %loadMem_4196a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4196a9 = call %struct.Memory* @routine_movl__eax__MINUS0x3030__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4196a9)
  store %struct.Memory* %call_4196a9, %struct.Memory** %MEMORY

  ; Code: jmpq .L_419638	 RIP: 4196af	 Bytes: 5
  %loadMem_4196af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4196af = call %struct.Memory* @routine_jmpq_.L_419638(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4196af, i64 -119, i64 5)
  store %struct.Memory* %call_4196af, %struct.Memory** %MEMORY

  br label %block_.L_419638

  ; Code: .L_4196b4:	 RIP: 4196b4	 Bytes: 0
block_.L_4196b4:

  ; Code: jmpq .L_4196b9	 RIP: 4196b4	 Bytes: 5
  %loadMem_4196b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4196b4 = call %struct.Memory* @routine_jmpq_.L_4196b9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4196b4, i64 5, i64 5)
  store %struct.Memory* %call_4196b4, %struct.Memory** %MEMORY

  br label %block_.L_4196b9

  ; Code: .L_4196b9:	 RIP: 4196b9	 Bytes: 0
block_.L_4196b9:

  ; Code: cmpl $0x0, 0x62e9e0	 RIP: 4196b9	 Bytes: 8
  %loadMem_4196b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4196b9 = call %struct.Memory* @routine_cmpl__0x0__0x62e9e0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4196b9)
  store %struct.Memory* %call_4196b9, %struct.Memory** %MEMORY

  ; Code: jne .L_419776	 RIP: 4196c1	 Bytes: 6
  %loadMem_4196c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4196c1 = call %struct.Memory* @routine_jne_.L_419776(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4196c1, i8* %BRANCH_TAKEN, i64 181, i64 6, i64 6)
  store %struct.Memory* %call_4196c1, %struct.Memory** %MEMORY

  %loadBr_4196c1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4196c1 = icmp eq i8 %loadBr_4196c1, 1
  br i1 %cmpBr_4196c1, label %block_.L_419776, label %block_4196c7

block_4196c7:
  ; Code: leaq -0x3010(%rbp), %rdi	 RIP: 4196c7	 Bytes: 7
  %loadMem_4196c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4196c7 = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4196c7)
  store %struct.Memory* %call_4196c7, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x85f164	 RIP: 4196ce	 Bytes: 11
  %loadMem_4196ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4196ce = call %struct.Memory* @routine_movl__0x0__0x85f164(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4196ce)
  store %struct.Memory* %call_4196ce, %struct.Memory** %MEMORY

  ; Code: callq .gen	 RIP: 4196d9	 Bytes: 5
  %loadMem1_4196d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4196d9 = call %struct.Memory* @routine_callq_.gen(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4196d9, i64 -71849, i64 5, i64 5)
  store %struct.Memory* %call1_4196d9, %struct.Memory** %MEMORY

  %loadMem2_4196d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4196d9 = load i64, i64* %3
  %call2_4196d9 = call %struct.Memory* @sub_407e30.gen(%struct.State* %0, i64  %loadPC_4196d9, %struct.Memory* %loadMem2_4196d9)
  store %struct.Memory* %call2_4196d9, %struct.Memory** %MEMORY

  ; Code: movl 0x85f150, %eax	 RIP: 4196de	 Bytes: 7
  %loadMem_4196de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4196de = call %struct.Memory* @routine_movl_0x85f150___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4196de)
  store %struct.Memory* %call_4196de, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x302c(%rbp)	 RIP: 4196e5	 Bytes: 6
  %loadMem_4196e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4196e5 = call %struct.Memory* @routine_movl__eax__MINUS0x302c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4196e5)
  store %struct.Memory* %call_4196e5, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x3030(%rbp)	 RIP: 4196eb	 Bytes: 10
  %loadMem_4196eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4196eb = call %struct.Memory* @routine_movl__0x0__MINUS0x3030__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4196eb)
  store %struct.Memory* %call_4196eb, %struct.Memory** %MEMORY

  ; Code: .L_4196f5:	 RIP: 4196f5	 Bytes: 0
  br label %block_.L_4196f5
block_.L_4196f5:

  ; Code: movl -0x3030(%rbp), %eax	 RIP: 4196f5	 Bytes: 6
  %loadMem_4196f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4196f5 = call %struct.Memory* @routine_movl_MINUS0x3030__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4196f5)
  store %struct.Memory* %call_4196f5, %struct.Memory** %MEMORY

  ; Code: cmpl -0x302c(%rbp), %eax	 RIP: 4196fb	 Bytes: 6
  %loadMem_4196fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4196fb = call %struct.Memory* @routine_cmpl_MINUS0x302c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4196fb)
  store %struct.Memory* %call_4196fb, %struct.Memory** %MEMORY

  ; Code: jge .L_419771	 RIP: 419701	 Bytes: 6
  %loadMem_419701 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419701 = call %struct.Memory* @routine_jge_.L_419771(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419701, i8* %BRANCH_TAKEN, i64 112, i64 6, i64 6)
  store %struct.Memory* %call_419701, %struct.Memory** %MEMORY

  %loadBr_419701 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419701 = icmp eq i8 %loadBr_419701, 1
  br i1 %cmpBr_419701, label %block_.L_419771, label %block_419707

block_419707:
  ; Code: leaq -0x3010(%rbp), %rdi	 RIP: 419707	 Bytes: 7
  %loadMem_419707 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419707 = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419707)
  store %struct.Memory* %call_419707, %struct.Memory** %MEMORY

  ; Code: movl -0x3030(%rbp), %esi	 RIP: 41970e	 Bytes: 6
  %loadMem_41970e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41970e = call %struct.Memory* @routine_movl_MINUS0x3030__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41970e)
  store %struct.Memory* %call_41970e, %struct.Memory** %MEMORY

  ; Code: callq .make	 RIP: 419714	 Bytes: 5
  %loadMem1_419714 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_419714 = call %struct.Memory* @routine_callq_.make(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_419714, i64 -57316, i64 5, i64 5)
  store %struct.Memory* %call1_419714, %struct.Memory** %MEMORY

  %loadMem2_419714 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_419714 = load i64, i64* %3
  %call2_419714 = call %struct.Memory* @sub_40b730.make(%struct.State* %0, i64  %loadPC_419714, %struct.Memory* %loadMem2_419714)
  store %struct.Memory* %call2_419714, %struct.Memory** %MEMORY

  ; Code: leaq -0x3010(%rbp), %rdi	 RIP: 419719	 Bytes: 7
  %loadMem_419719 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419719 = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419719)
  store %struct.Memory* %call_419719, %struct.Memory** %MEMORY

  ; Code: movl -0x3030(%rbp), %esi	 RIP: 419720	 Bytes: 6
  %loadMem_419720 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419720 = call %struct.Memory* @routine_movl_MINUS0x3030__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419720)
  store %struct.Memory* %call_419720, %struct.Memory** %MEMORY

  ; Code: movl -0x4078(%rbp), %edx	 RIP: 419726	 Bytes: 6
  %loadMem_419726 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419726 = call %struct.Memory* @routine_movl_MINUS0x4078__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419726)
  store %struct.Memory* %call_419726, %struct.Memory** %MEMORY

  ; Code: callq .check_legal	 RIP: 41972c	 Bytes: 5
  %loadMem1_41972c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41972c = call %struct.Memory* @routine_callq_.check_legal(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41972c, i64 -77996, i64 5, i64 5)
  store %struct.Memory* %call1_41972c, %struct.Memory** %MEMORY

  %loadMem2_41972c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41972c = load i64, i64* %3
  %call2_41972c = call %struct.Memory* @sub_406680.check_legal(%struct.State* %0, i64  %loadPC_41972c, %struct.Memory* %loadMem2_41972c)
  store %struct.Memory* %call2_41972c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 419731	 Bytes: 3
  %loadMem_419731 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419731 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419731)
  store %struct.Memory* %call_419731, %struct.Memory** %MEMORY

  ; Code: je .L_41974b	 RIP: 419734	 Bytes: 6
  %loadMem_419734 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419734 = call %struct.Memory* @routine_je_.L_41974b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419734, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_419734, %struct.Memory** %MEMORY

  %loadBr_419734 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419734 = icmp eq i8 %loadBr_419734, 1
  br i1 %cmpBr_419734, label %block_.L_41974b, label %block_41973a

block_41973a:
  ; Code: movl 0x62e9e0, %eax	 RIP: 41973a	 Bytes: 7
  %loadMem_41973a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41973a = call %struct.Memory* @routine_movl_0x62e9e0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41973a)
  store %struct.Memory* %call_41973a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 419741	 Bytes: 3
  %loadMem_419741 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419741 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419741)
  store %struct.Memory* %call_419741, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62e9e0	 RIP: 419744	 Bytes: 7
  %loadMem_419744 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419744 = call %struct.Memory* @routine_movl__eax__0x62e9e0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419744)
  store %struct.Memory* %call_419744, %struct.Memory** %MEMORY

  ; Code: .L_41974b:	 RIP: 41974b	 Bytes: 0
  br label %block_.L_41974b
block_.L_41974b:

  ; Code: leaq -0x3010(%rbp), %rdi	 RIP: 41974b	 Bytes: 7
  %loadMem_41974b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41974b = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41974b)
  store %struct.Memory* %call_41974b, %struct.Memory** %MEMORY

  ; Code: movl -0x3030(%rbp), %esi	 RIP: 419752	 Bytes: 6
  %loadMem_419752 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419752 = call %struct.Memory* @routine_movl_MINUS0x3030__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419752)
  store %struct.Memory* %call_419752, %struct.Memory** %MEMORY

  ; Code: callq .unmake	 RIP: 419758	 Bytes: 5
  %loadMem1_419758 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_419758 = call %struct.Memory* @routine_callq_.unmake(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_419758, i64 -53176, i64 5, i64 5)
  store %struct.Memory* %call1_419758, %struct.Memory** %MEMORY

  %loadMem2_419758 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_419758 = load i64, i64* %3
  %call2_419758 = call %struct.Memory* @sub_40c7a0.unmake(%struct.State* %0, i64  %loadPC_419758, %struct.Memory* %loadMem2_419758)
  store %struct.Memory* %call2_419758, %struct.Memory** %MEMORY

  ; Code: movl -0x3030(%rbp), %eax	 RIP: 41975d	 Bytes: 6
  %loadMem_41975d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41975d = call %struct.Memory* @routine_movl_MINUS0x3030__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41975d)
  store %struct.Memory* %call_41975d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 419763	 Bytes: 3
  %loadMem_419763 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419763 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419763)
  store %struct.Memory* %call_419763, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3030(%rbp)	 RIP: 419766	 Bytes: 6
  %loadMem_419766 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419766 = call %struct.Memory* @routine_movl__eax__MINUS0x3030__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419766)
  store %struct.Memory* %call_419766, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4196f5	 RIP: 41976c	 Bytes: 5
  %loadMem_41976c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41976c = call %struct.Memory* @routine_jmpq_.L_4196f5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41976c, i64 -119, i64 5)
  store %struct.Memory* %call_41976c, %struct.Memory** %MEMORY

  br label %block_.L_4196f5

  ; Code: .L_419771:	 RIP: 419771	 Bytes: 0
block_.L_419771:

  ; Code: jmpq .L_419776	 RIP: 419771	 Bytes: 5
  %loadMem_419771 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419771 = call %struct.Memory* @routine_jmpq_.L_419776(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419771, i64 5, i64 5)
  store %struct.Memory* %call_419771, %struct.Memory** %MEMORY

  br label %block_.L_419776

  ; Code: .L_419776:	 RIP: 419776	 Bytes: 0
block_.L_419776:

  ; Code: jmpq .L_419794	 RIP: 419776	 Bytes: 5
  %loadMem_419776 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419776 = call %struct.Memory* @routine_jmpq_.L_419794(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419776, i64 30, i64 5)
  store %struct.Memory* %call_419776, %struct.Memory** %MEMORY

  br label %block_.L_419794

  ; Code: .L_41977b:	 RIP: 41977b	 Bytes: 0
block_.L_41977b:

  ; Code: leaq -0x3010(%rbp), %rdi	 RIP: 41977b	 Bytes: 7
  %loadMem_41977b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41977b = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41977b)
  store %struct.Memory* %call_41977b, %struct.Memory** %MEMORY

  ; Code: callq .gen	 RIP: 419782	 Bytes: 5
  %loadMem1_419782 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_419782 = call %struct.Memory* @routine_callq_.gen(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_419782, i64 -72018, i64 5, i64 5)
  store %struct.Memory* %call1_419782, %struct.Memory** %MEMORY

  %loadMem2_419782 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_419782 = load i64, i64* %3
  %call2_419782 = call %struct.Memory* @sub_407e30.gen(%struct.State* %0, i64  %loadPC_419782, %struct.Memory* %loadMem2_419782)
  store %struct.Memory* %call2_419782, %struct.Memory** %MEMORY

  ; Code: movl 0x85f150, %eax	 RIP: 419787	 Bytes: 7
  %loadMem_419787 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419787 = call %struct.Memory* @routine_movl_0x85f150___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419787)
  store %struct.Memory* %call_419787, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x302c(%rbp)	 RIP: 41978e	 Bytes: 6
  %loadMem_41978e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41978e = call %struct.Memory* @routine_movl__eax__MINUS0x302c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41978e)
  store %struct.Memory* %call_41978e, %struct.Memory** %MEMORY

  ; Code: .L_419794:	 RIP: 419794	 Bytes: 0
  br label %block_.L_419794
block_.L_419794:

  ; Code: movl $0xffffffff, %r8d	 RIP: 419794	 Bytes: 6
  %loadMem_419794 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419794 = call %struct.Memory* @routine_movl__0xffffffff___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419794)
  store %struct.Memory* %call_419794, %struct.Memory** %MEMORY

  ; Code: leaq -0x4040(%rbp), %rdx	 RIP: 41979a	 Bytes: 7
  %loadMem_41979a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41979a = call %struct.Memory* @routine_leaq_MINUS0x4040__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41979a)
  store %struct.Memory* %call_41979a, %struct.Memory** %MEMORY

  ; Code: leaq -0x3840(%rbp), %rsi	 RIP: 4197a1	 Bytes: 7
  %loadMem_4197a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4197a1 = call %struct.Memory* @routine_leaq_MINUS0x3840__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4197a1)
  store %struct.Memory* %call_4197a1, %struct.Memory** %MEMORY

  ; Code: leaq -0x3010(%rbp), %rdi	 RIP: 4197a8	 Bytes: 7
  %loadMem_4197a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4197a8 = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4197a8)
  store %struct.Memory* %call_4197a8, %struct.Memory** %MEMORY

  ; Code: movl 0x62e9e0, %eax	 RIP: 4197af	 Bytes: 7
  %loadMem_4197af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4197af = call %struct.Memory* @routine_movl_0x62e9e0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4197af)
  store %struct.Memory* %call_4197af, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62ea0c	 RIP: 4197b6	 Bytes: 7
  %loadMem_4197b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4197b6 = call %struct.Memory* @routine_movl__eax__0x62ea0c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4197b6)
  store %struct.Memory* %call_4197b6, %struct.Memory** %MEMORY

  ; Code: movl -0x302c(%rbp), %ecx	 RIP: 4197bd	 Bytes: 6
  %loadMem_4197bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4197bd = call %struct.Memory* @routine_movl_MINUS0x302c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4197bd)
  store %struct.Memory* %call_4197bd, %struct.Memory** %MEMORY

  ; Code: callq .order_moves	 RIP: 4197c3	 Bytes: 5
  %loadMem1_4197c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4197c3 = call %struct.Memory* @routine_callq_.order_moves(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4197c3, i64 -14531, i64 5, i64 5)
  store %struct.Memory* %call1_4197c3, %struct.Memory** %MEMORY

  %loadMem2_4197c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4197c3 = load i64, i64* %3
  %call2_4197c3 = call %struct.Memory* @sub_415f00.order_moves(%struct.State* %0, i64  %loadPC_4197c3, %struct.Memory* %loadMem2_4197c3)
  store %struct.Memory* %call2_4197c3, %struct.Memory** %MEMORY

  ; Code: .L_4197c8:	 RIP: 4197c8	 Bytes: 0
  br label %block_.L_4197c8
block_.L_4197c8:

  ; Code: leaq -0x3030(%rbp), %rdi	 RIP: 4197c8	 Bytes: 7
  %loadMem_4197c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4197c8 = call %struct.Memory* @routine_leaq_MINUS0x3030__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4197c8)
  store %struct.Memory* %call_4197c8, %struct.Memory** %MEMORY

  ; Code: leaq -0x3840(%rbp), %rsi	 RIP: 4197cf	 Bytes: 7
  %loadMem_4197cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4197cf = call %struct.Memory* @routine_leaq_MINUS0x3840__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4197cf)
  store %struct.Memory* %call_4197cf, %struct.Memory** %MEMORY

  ; Code: movl -0x302c(%rbp), %edx	 RIP: 4197d6	 Bytes: 6
  %loadMem_4197d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4197d6 = call %struct.Memory* @routine_movl_MINUS0x302c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4197d6)
  store %struct.Memory* %call_4197d6, %struct.Memory** %MEMORY

  ; Code: callq .remove_one	 RIP: 4197dc	 Bytes: 5
  %loadMem1_4197dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4197dc = call %struct.Memory* @routine_callq_.remove_one(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4197dc, i64 -9004, i64 5, i64 5)
  store %struct.Memory* %call1_4197dc, %struct.Memory** %MEMORY

  %loadMem2_4197dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4197dc = load i64, i64* %3
  %call2_4197dc = call %struct.Memory* @sub_4174b0.remove_one(%struct.State* %0, i64  %loadPC_4197dc, %struct.Memory* %loadMem2_4197dc)
  store %struct.Memory* %call2_4197dc, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4197e1	 Bytes: 3
  %loadMem_4197e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4197e1 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4197e1)
  store %struct.Memory* %call_4197e1, %struct.Memory** %MEMORY

  ; Code: je .L_41a7d3	 RIP: 4197e4	 Bytes: 6
  %loadMem_4197e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4197e4 = call %struct.Memory* @routine_je_.L_41a7d3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4197e4, i8* %BRANCH_TAKEN, i64 4079, i64 6, i64 6)
  store %struct.Memory* %call_4197e4, %struct.Memory** %MEMORY

  %loadBr_4197e4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4197e4 = icmp eq i8 %loadBr_4197e4, 1
  br i1 %cmpBr_4197e4, label %block_.L_41a7d3, label %block_4197ea

block_4197ea:
  ; Code: cmpl $0x0, 0x62e51c	 RIP: 4197ea	 Bytes: 8
  %loadMem_4197ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4197ea = call %struct.Memory* @routine_cmpl__0x0__0x62e51c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4197ea)
  store %struct.Memory* %call_4197ea, %struct.Memory** %MEMORY

  ; Code: jne .L_41982e	 RIP: 4197f2	 Bytes: 6
  %loadMem_4197f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4197f2 = call %struct.Memory* @routine_jne_.L_41982e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4197f2, i8* %BRANCH_TAKEN, i64 60, i64 6, i64 6)
  store %struct.Memory* %call_4197f2, %struct.Memory** %MEMORY

  %loadBr_4197f2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4197f2 = icmp eq i8 %loadBr_4197f2, 1
  br i1 %cmpBr_4197f2, label %block_.L_41982e, label %block_4197f8

block_4197f8:
  ; Code: movslq -0x3030(%rbp), %rax	 RIP: 4197f8	 Bytes: 7
  %loadMem_4197f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4197f8 = call %struct.Memory* @routine_movslq_MINUS0x3030__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4197f8)
  store %struct.Memory* %call_4197f8, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x886bf0(,%rax,4)	 RIP: 4197ff	 Bytes: 8
  %loadMem_4197ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4197ff = call %struct.Memory* @routine_cmpl__0x0__0x886bf0___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4197ff)
  store %struct.Memory* %call_4197ff, %struct.Memory** %MEMORY

  ; Code: je .L_41982e	 RIP: 419807	 Bytes: 6
  %loadMem_419807 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419807 = call %struct.Memory* @routine_je_.L_41982e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419807, i8* %BRANCH_TAKEN, i64 39, i64 6, i64 6)
  store %struct.Memory* %call_419807, %struct.Memory** %MEMORY

  %loadBr_419807 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419807 = icmp eq i8 %loadBr_419807, 1
  br i1 %cmpBr_419807, label %block_.L_41982e, label %block_41980d

block_41980d:
  ; Code: cmpl $0x4, 0x85f154	 RIP: 41980d	 Bytes: 8
  %loadMem_41980d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41980d = call %struct.Memory* @routine_cmpl__0x4__0x85f154(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41980d)
  store %struct.Memory* %call_41980d, %struct.Memory** %MEMORY

  ; Code: je .L_419829	 RIP: 419815	 Bytes: 6
  %loadMem_419815 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419815 = call %struct.Memory* @routine_je_.L_419829(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419815, i8* %BRANCH_TAKEN, i64 20, i64 6, i64 6)
  store %struct.Memory* %call_419815, %struct.Memory** %MEMORY

  %loadBr_419815 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419815 = icmp eq i8 %loadBr_419815, 1
  br i1 %cmpBr_419815, label %block_.L_419829, label %block_41981b

block_41981b:
  ; Code: cmpl $0x3, 0x85f154	 RIP: 41981b	 Bytes: 8
  %loadMem_41981b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41981b = call %struct.Memory* @routine_cmpl__0x3__0x85f154(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41981b)
  store %struct.Memory* %call_41981b, %struct.Memory** %MEMORY

  ; Code: jne .L_41982e	 RIP: 419823	 Bytes: 6
  %loadMem_419823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419823 = call %struct.Memory* @routine_jne_.L_41982e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419823, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_419823, %struct.Memory** %MEMORY

  %loadBr_419823 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419823 = icmp eq i8 %loadBr_419823, 1
  br i1 %cmpBr_419823, label %block_.L_41982e, label %block_.L_419829

  ; Code: .L_419829:	 RIP: 419829	 Bytes: 0
block_.L_419829:

  ; Code: jmpq .L_4197c8	 RIP: 419829	 Bytes: 5
  %loadMem_419829 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419829 = call %struct.Memory* @routine_jmpq_.L_4197c8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419829, i64 -97, i64 5)
  store %struct.Memory* %call_419829, %struct.Memory** %MEMORY

  br label %block_.L_4197c8

  ; Code: .L_41982e:	 RIP: 41982e	 Bytes: 0
block_.L_41982e:

  ; Code: leaq -0x3010(%rbp), %rdi	 RIP: 41982e	 Bytes: 7
  %loadMem_41982e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41982e = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41982e)
  store %struct.Memory* %call_41982e, %struct.Memory** %MEMORY

  ; Code: movl -0x3030(%rbp), %esi	 RIP: 419835	 Bytes: 6
  %loadMem_419835 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419835 = call %struct.Memory* @routine_movl_MINUS0x3030__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419835)
  store %struct.Memory* %call_419835, %struct.Memory** %MEMORY

  ; Code: callq .make	 RIP: 41983b	 Bytes: 5
  %loadMem1_41983b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41983b = call %struct.Memory* @routine_callq_.make(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41983b, i64 -57611, i64 5, i64 5)
  store %struct.Memory* %call1_41983b, %struct.Memory** %MEMORY

  %loadMem2_41983b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41983b = load i64, i64* %3
  %call2_41983b = call %struct.Memory* @sub_40b730.make(%struct.State* %0, i64  %loadPC_41983b, %struct.Memory* %loadMem2_41983b)
  store %struct.Memory* %call2_41983b, %struct.Memory** %MEMORY

  ; Code: leaq -0x3010(%rbp), %rdi	 RIP: 419840	 Bytes: 7
  %loadMem_419840 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419840 = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419840)
  store %struct.Memory* %call_419840, %struct.Memory** %MEMORY

  ; Code: movq $0x864510, %rax	 RIP: 419847	 Bytes: 10
  %loadMem_419847 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419847 = call %struct.Memory* @routine_movq__0x864510___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419847)
  store %struct.Memory* %call_419847, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x4048(%rbp)	 RIP: 419851	 Bytes: 10
  %loadMem_419851 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419851 = call %struct.Memory* @routine_movl__0x0__MINUS0x4048__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419851)
  store %struct.Memory* %call_419851, %struct.Memory** %MEMORY

  ; Code: movl 0x633b40, %esi	 RIP: 41985b	 Bytes: 7
  %loadMem_41985b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41985b = call %struct.Memory* @routine_movl_0x633b40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41985b)
  store %struct.Memory* %call_41985b, %struct.Memory** %MEMORY

  ; Code: movl 0x62ea38, %ecx	 RIP: 419862	 Bytes: 7
  %loadMem_419862 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419862 = call %struct.Memory* @routine_movl_0x62ea38___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419862)
  store %struct.Memory* %call_419862, %struct.Memory** %MEMORY

  ; Code: addl 0x886bc0, %ecx	 RIP: 419869	 Bytes: 7
  %loadMem_419869 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419869 = call %struct.Memory* @routine_addl_0x886bc0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419869)
  store %struct.Memory* %call_419869, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 419870	 Bytes: 3
  %loadMem_419870 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419870 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419870)
  store %struct.Memory* %call_419870, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 419873	 Bytes: 3
  %loadMem_419873 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419873 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419873)
  store %struct.Memory* %call_419873, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x84a3d0(,%rdx,4)	 RIP: 419876	 Bytes: 7
  %loadMem_419876 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419876 = call %struct.Memory* @routine_movl__esi__0x84a3d0___rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419876)
  store %struct.Memory* %call_419876, %struct.Memory** %MEMORY

  ; Code: movl 0x886bc0, %ecx	 RIP: 41987d	 Bytes: 7
  %loadMem_41987d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41987d = call %struct.Memory* @routine_movl_0x886bc0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41987d)
  store %struct.Memory* %call_41987d, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 419884	 Bytes: 3
  %loadMem_419884 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419884 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419884)
  store %struct.Memory* %call_419884, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 419887	 Bytes: 3
  %loadMem_419887 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419887 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419887)
  store %struct.Memory* %call_419887, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 41988a	 Bytes: 4
  %loadMem_41988a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41988a = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41988a)
  store %struct.Memory* %call_41988a, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41988e	 Bytes: 3
  %loadMem_41988e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41988e = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41988e)
  store %struct.Memory* %call_41988e, %struct.Memory** %MEMORY

  ; Code: movslq -0x3030(%rbp), %rdx	 RIP: 419891	 Bytes: 7
  %loadMem_419891 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419891 = call %struct.Memory* @routine_movslq_MINUS0x3030__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419891)
  store %struct.Memory* %call_419891, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 419898	 Bytes: 4
  %loadMem_419898 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419898 = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419898)
  store %struct.Memory* %call_419898, %struct.Memory** %MEMORY

  ; Code: movq %rdi, %r8	 RIP: 41989c	 Bytes: 3
  %loadMem_41989c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41989c = call %struct.Memory* @routine_movq__rdi___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41989c)
  store %struct.Memory* %call_41989c, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %r8	 RIP: 41989f	 Bytes: 3
  %loadMem_41989f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41989f = call %struct.Memory* @routine_addq__rdx___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41989f)
  store %struct.Memory* %call_41989f, %struct.Memory** %MEMORY

  ; Code: movq (%r8), %rdx	 RIP: 4198a2	 Bytes: 3
  %loadMem_4198a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4198a2 = call %struct.Memory* @routine_movq___r8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4198a2)
  store %struct.Memory* %call_4198a2, %struct.Memory** %MEMORY

  ; Code: movq %rdx, (%rax)	 RIP: 4198a5	 Bytes: 3
  %loadMem_4198a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4198a5 = call %struct.Memory* @routine_movq__rdx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4198a5)
  store %struct.Memory* %call_4198a5, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%r8), %rdx	 RIP: 4198a8	 Bytes: 4
  %loadMem_4198a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4198a8 = call %struct.Memory* @routine_movq_0x8__r8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4198a8)
  store %struct.Memory* %call_4198a8, %struct.Memory** %MEMORY

  ; Code: movq %rdx, 0x8(%rax)	 RIP: 4198ac	 Bytes: 4
  %loadMem_4198ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4198ac = call %struct.Memory* @routine_movq__rdx__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4198ac)
  store %struct.Memory* %call_4198ac, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%r8), %rdx	 RIP: 4198b0	 Bytes: 4
  %loadMem_4198b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4198b0 = call %struct.Memory* @routine_movq_0x10__r8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4198b0)
  store %struct.Memory* %call_4198b0, %struct.Memory** %MEMORY

  ; Code: movq %rdx, 0x10(%rax)	 RIP: 4198b4	 Bytes: 4
  %loadMem_4198b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4198b4 = call %struct.Memory* @routine_movq__rdx__0x10__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4198b4)
  store %struct.Memory* %call_4198b4, %struct.Memory** %MEMORY

  ; Code: movl 0x864500, %ecx	 RIP: 4198b8	 Bytes: 7
  %loadMem_4198b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4198b8 = call %struct.Memory* @routine_movl_0x864500___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4198b8)
  store %struct.Memory* %call_4198b8, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x4080(%rbp)	 RIP: 4198bf	 Bytes: 6
  %loadMem_4198bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4198bf = call %struct.Memory* @routine_movl__ecx__MINUS0x4080__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4198bf)
  store %struct.Memory* %call_4198bf, %struct.Memory** %MEMORY

  ; Code: movl -0x3030(%rbp), %esi	 RIP: 4198c5	 Bytes: 6
  %loadMem_4198c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4198c5 = call %struct.Memory* @routine_movl_MINUS0x3030__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4198c5)
  store %struct.Memory* %call_4198c5, %struct.Memory** %MEMORY

  ; Code: movl -0x4078(%rbp), %edx	 RIP: 4198cb	 Bytes: 6
  %loadMem_4198cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4198cb = call %struct.Memory* @routine_movl_MINUS0x4078__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4198cb)
  store %struct.Memory* %call_4198cb, %struct.Memory** %MEMORY

  ; Code: callq .check_legal	 RIP: 4198d1	 Bytes: 5
  %loadMem1_4198d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4198d1 = call %struct.Memory* @routine_callq_.check_legal(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4198d1, i64 -78417, i64 5, i64 5)
  store %struct.Memory* %call1_4198d1, %struct.Memory** %MEMORY

  %loadMem2_4198d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4198d1 = load i64, i64* %3
  %call2_4198d1 = call %struct.Memory* @sub_406680.check_legal(%struct.State* %0, i64  %loadPC_4198d1, %struct.Memory* %loadMem2_4198d1)
  store %struct.Memory* %call2_4198d1, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4198d6	 Bytes: 3
  %loadMem_4198d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4198d6 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4198d6)
  store %struct.Memory* %call_4198d6, %struct.Memory** %MEMORY

  ; Code: je .L_41a009	 RIP: 4198d9	 Bytes: 6
  %loadMem_4198d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4198d9 = call %struct.Memory* @routine_je_.L_41a009(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4198d9, i8* %BRANCH_TAKEN, i64 1840, i64 6, i64 6)
  store %struct.Memory* %call_4198d9, %struct.Memory** %MEMORY

  %loadBr_4198d9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4198d9 = icmp eq i8 %loadBr_4198d9, 1
  br i1 %cmpBr_4198d9, label %block_.L_41a009, label %block_4198df

block_4198df:
  ; Code: leaq -0x3010(%rbp), %rdi	 RIP: 4198df	 Bytes: 7
  %loadMem_4198df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4198df = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4198df)
  store %struct.Memory* %call_4198df, %struct.Memory** %MEMORY

  ; Code: movl -0x3030(%rbp), %esi	 RIP: 4198e6	 Bytes: 6
  %loadMem_4198e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4198e6 = call %struct.Memory* @routine_movl_MINUS0x3030__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4198e6)
  store %struct.Memory* %call_4198e6, %struct.Memory** %MEMORY

  ; Code: callq .unmake	 RIP: 4198ec	 Bytes: 5
  %loadMem1_4198ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4198ec = call %struct.Memory* @routine_callq_.unmake(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4198ec, i64 -53580, i64 5, i64 5)
  store %struct.Memory* %call1_4198ec, %struct.Memory** %MEMORY

  %loadMem2_4198ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4198ec = load i64, i64* %3
  %call2_4198ec = call %struct.Memory* @sub_40c7a0.unmake(%struct.State* %0, i64  %loadPC_4198ec, %struct.Memory* %loadMem2_4198ec)
  store %struct.Memory* %call2_4198ec, %struct.Memory** %MEMORY

  ; Code: movq $0x886bd0, %rdi	 RIP: 4198f1	 Bytes: 10
  %loadMem_4198f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4198f1 = call %struct.Memory* @routine_movq__0x886bd0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4198f1)
  store %struct.Memory* %call_4198f1, %struct.Memory** %MEMORY

  ; Code: leaq -0x3010(%rbp), %rax	 RIP: 4198fb	 Bytes: 7
  %loadMem_4198fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4198fb = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4198fb)
  store %struct.Memory* %call_4198fb, %struct.Memory** %MEMORY

  ; Code: movl -0x407c(%rbp), %esi	 RIP: 419902	 Bytes: 6
  %loadMem_419902 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419902 = call %struct.Memory* @routine_movl_MINUS0x407c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419902)
  store %struct.Memory* %call_419902, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 419908	 Bytes: 3
  %loadMem_419908 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419908 = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419908)
  store %struct.Memory* %call_419908, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x407c(%rbp)	 RIP: 41990b	 Bytes: 6
  %loadMem_41990b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41990b = call %struct.Memory* @routine_movl__esi__MINUS0x407c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41990b)
  store %struct.Memory* %call_41990b, %struct.Memory** %MEMORY

  ; Code: movl 0x62ea0c, %esi	 RIP: 419911	 Bytes: 7
  %loadMem_419911 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419911 = call %struct.Memory* @routine_movl_0x62ea0c___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419911)
  store %struct.Memory* %call_419911, %struct.Memory** %MEMORY

  ; Code: subl -0x407c(%rbp), %esi	 RIP: 419918	 Bytes: 6
  %loadMem_419918 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419918 = call %struct.Memory* @routine_subl_MINUS0x407c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419918)
  store %struct.Memory* %call_419918, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x886a5c	 RIP: 41991e	 Bytes: 7
  %loadMem_41991e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41991e = call %struct.Memory* @routine_movl__esi__0x886a5c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41991e)
  store %struct.Memory* %call_41991e, %struct.Memory** %MEMORY

  ; Code: movslq -0x3030(%rbp), %rcx	 RIP: 419925	 Bytes: 7
  %loadMem_419925 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419925 = call %struct.Memory* @routine_movslq_MINUS0x3030__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419925)
  store %struct.Memory* %call_419925, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rcx, %rcx	 RIP: 41992c	 Bytes: 4
  %loadMem_41992c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41992c = call %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41992c)
  store %struct.Memory* %call_41992c, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 419930	 Bytes: 3
  %loadMem_419930 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419930 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419930)
  store %struct.Memory* %call_419930, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rcx	 RIP: 419933	 Bytes: 3
  %loadMem_419933 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419933 = call %struct.Memory* @routine_movq___rax____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419933)
  store %struct.Memory* %call_419933, %struct.Memory** %MEMORY

  ; Code: movq %rcx, (%rsp)	 RIP: 419936	 Bytes: 4
  %loadMem_419936 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419936 = call %struct.Memory* @routine_movq__rcx____rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419936)
  store %struct.Memory* %call_419936, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rcx	 RIP: 41993a	 Bytes: 4
  %loadMem_41993a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41993a = call %struct.Memory* @routine_movq_0x8__rax____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41993a)
  store %struct.Memory* %call_41993a, %struct.Memory** %MEMORY

  ; Code: movq %rcx, 0x8(%rsp)	 RIP: 41993e	 Bytes: 5
  %loadMem_41993e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41993e = call %struct.Memory* @routine_movq__rcx__0x8__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41993e)
  store %struct.Memory* %call_41993e, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 419943	 Bytes: 4
  %loadMem_419943 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419943 = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419943)
  store %struct.Memory* %call_419943, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x10(%rsp)	 RIP: 419947	 Bytes: 5
  %loadMem_419947 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419947 = call %struct.Memory* @routine_movq__rax__0x10__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419947)
  store %struct.Memory* %call_419947, %struct.Memory** %MEMORY

  ; Code: callq .comp_to_san	 RIP: 41994c	 Bytes: 5
  %loadMem1_41994c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41994c = call %struct.Memory* @routine_callq_.comp_to_san(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41994c, i64 32804, i64 5, i64 5)
  store %struct.Memory* %call1_41994c, %struct.Memory** %MEMORY

  %loadMem2_41994c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41994c = load i64, i64* %3
  %call2_41994c = call %struct.Memory* @sub_421970.comp_to_san(%struct.State* %0, i64  %loadPC_41994c, %struct.Memory* %loadMem2_41994c)
  store %struct.Memory* %call2_41994c, %struct.Memory** %MEMORY

  ; Code: leaq -0x3010(%rbp), %rdi	 RIP: 419951	 Bytes: 7
  %loadMem_419951 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419951 = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419951)
  store %struct.Memory* %call_419951, %struct.Memory** %MEMORY

  ; Code: movl -0x3030(%rbp), %esi	 RIP: 419958	 Bytes: 6
  %loadMem_419958 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419958 = call %struct.Memory* @routine_movl_MINUS0x3030__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419958)
  store %struct.Memory* %call_419958, %struct.Memory** %MEMORY

  ; Code: callq .make	 RIP: 41995e	 Bytes: 5
  %loadMem1_41995e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41995e = call %struct.Memory* @routine_callq_.make(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41995e, i64 -57902, i64 5, i64 5)
  store %struct.Memory* %call1_41995e, %struct.Memory** %MEMORY

  %loadMem2_41995e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41995e = load i64, i64* %3
  %call2_41995e = call %struct.Memory* @sub_40b730.make(%struct.State* %0, i64  %loadPC_41995e, %struct.Memory* %loadMem2_41995e)
  store %struct.Memory* %call2_41995e, %struct.Memory** %MEMORY

  ; Code: leaq -0x3010(%rbp), %rdi	 RIP: 419963	 Bytes: 7
  %loadMem_419963 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419963 = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419963)
  store %struct.Memory* %call_419963, %struct.Memory** %MEMORY

  ; Code: movl -0x3030(%rbp), %esi	 RIP: 41996a	 Bytes: 6
  %loadMem_41996a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41996a = call %struct.Memory* @routine_movl_MINUS0x3030__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41996a)
  store %struct.Memory* %call_41996a, %struct.Memory** %MEMORY

  ; Code: callq .f_in_check	 RIP: 419970	 Bytes: 5
  %loadMem1_419970 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_419970 = call %struct.Memory* @routine_callq_.f_in_check(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_419970, i64 -65520, i64 5, i64 5)
  store %struct.Memory* %call1_419970, %struct.Memory** %MEMORY

  %loadMem2_419970 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_419970 = load i64, i64* %3
  %call2_419970 = call %struct.Memory* @sub_409980.f_in_check(%struct.State* %0, i64  %loadPC_419970, %struct.Memory* %loadMem2_419970)
  store %struct.Memory* %call2_419970, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rcx	 RIP: 419975	 Bytes: 8
  %loadMem_419975 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419975 = call %struct.Memory* @routine_movslq_0x886bc0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419975)
  store %struct.Memory* %call_419975, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x880660(,%rcx,4)	 RIP: 41997d	 Bytes: 7
  %loadMem_41997d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41997d = call %struct.Memory* @routine_movl__eax__0x880660___rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41997d)
  store %struct.Memory* %call_41997d, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rcx	 RIP: 419984	 Bytes: 8
  %loadMem_419984 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419984 = call %struct.Memory* @routine_movslq_0x886bc0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419984)
  store %struct.Memory* %call_419984, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x8a05c0(,%rcx,4)	 RIP: 41998c	 Bytes: 11
  %loadMem_41998c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41998c = call %struct.Memory* @routine_movl__0x0__0x8a05c0___rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41998c)
  store %struct.Memory* %call_41998c, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rcx	 RIP: 419997	 Bytes: 8
  %loadMem_419997 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419997 = call %struct.Memory* @routine_movslq_0x886bc0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419997)
  store %struct.Memory* %call_419997, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x8801a0(,%rcx,4)	 RIP: 41999f	 Bytes: 11
  %loadMem_41999f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41999f = call %struct.Memory* @routine_movl__0x0__0x8801a0___rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41999f)
  store %struct.Memory* %call_41999f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, -0x404c(%rbp)	 RIP: 4199aa	 Bytes: 7
  %loadMem_4199aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4199aa = call %struct.Memory* @routine_cmpl__0x1__MINUS0x404c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4199aa)
  store %struct.Memory* %call_4199aa, %struct.Memory** %MEMORY

  ; Code: je .L_4199c5	 RIP: 4199b1	 Bytes: 6
  %loadMem_4199b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4199b1 = call %struct.Memory* @routine_je_.L_4199c5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4199b1, i8* %BRANCH_TAKEN, i64 20, i64 6, i64 6)
  store %struct.Memory* %call_4199b1, %struct.Memory** %MEMORY

  %loadBr_4199b1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4199b1 = icmp eq i8 %loadBr_4199b1, 1
  br i1 %cmpBr_4199b1, label %block_.L_4199c5, label %block_4199b7

block_4199b7:
  ; Code: cmpl $0x2, 0x633b50	 RIP: 4199b7	 Bytes: 8
  %loadMem_4199b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4199b7 = call %struct.Memory* @routine_cmpl__0x2__0x633b50(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4199b7)
  store %struct.Memory* %call_4199b7, %struct.Memory** %MEMORY

  ; Code: jge .L_419c66	 RIP: 4199bf	 Bytes: 6
  %loadMem_4199bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4199bf = call %struct.Memory* @routine_jge_.L_419c66(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4199bf, i8* %BRANCH_TAKEN, i64 679, i64 6, i64 6)
  store %struct.Memory* %call_4199bf, %struct.Memory** %MEMORY

  %loadBr_4199bf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4199bf = icmp eq i8 %loadBr_4199bf, 1
  br i1 %cmpBr_4199bf, label %block_.L_419c66, label %block_.L_4199c5

  ; Code: .L_4199c5:	 RIP: 4199c5	 Bytes: 0
block_.L_4199c5:

  ; Code: xorl %eax, %eax	 RIP: 4199c5	 Bytes: 2
  %loadMem_4199c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4199c5 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4199c5)
  store %struct.Memory* %call_4199c5, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 4199c7	 Bytes: 2
  %loadMem_4199c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4199c7 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4199c7)
  store %struct.Memory* %call_4199c7, %struct.Memory** %MEMORY

  ; Code: subl -0x4054(%rbp), %ecx	 RIP: 4199c9	 Bytes: 6
  %loadMem_4199c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4199c9 = call %struct.Memory* @routine_subl_MINUS0x4054__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4199c9)
  store %struct.Memory* %call_4199c9, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 4199cf	 Bytes: 2
  %loadMem_4199cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4199cf = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4199cf)
  store %struct.Memory* %call_4199cf, %struct.Memory** %MEMORY

  ; Code: subl -0x4050(%rbp), %edx	 RIP: 4199d1	 Bytes: 6
  %loadMem_4199d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4199d1 = call %struct.Memory* @routine_subl_MINUS0x4050__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4199d1)
  store %struct.Memory* %call_4199d1, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %esi	 RIP: 4199d7	 Bytes: 3
  %loadMem_4199d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4199d7 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4199d7)
  store %struct.Memory* %call_4199d7, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 4199da	 Bytes: 3
  %loadMem_4199da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4199da = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4199da)
  store %struct.Memory* %call_4199da, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edi	 RIP: 4199dd	 Bytes: 2
  %loadMem_4199dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4199dd = call %struct.Memory* @routine_movl__ecx___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4199dd)
  store %struct.Memory* %call_4199dd, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x4094(%rbp)	 RIP: 4199df	 Bytes: 6
  %loadMem_4199df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4199df = call %struct.Memory* @routine_movl__esi__MINUS0x4094__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4199df)
  store %struct.Memory* %call_4199df, %struct.Memory** %MEMORY

  ; Code: movl %edx, %esi	 RIP: 4199e5	 Bytes: 2
  %loadMem_4199e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4199e5 = call %struct.Memory* @routine_movl__edx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4199e5)
  store %struct.Memory* %call_4199e5, %struct.Memory** %MEMORY

  ; Code: movl -0x4094(%rbp), %edx	 RIP: 4199e7	 Bytes: 6
  %loadMem_4199e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4199e7 = call %struct.Memory* @routine_movl_MINUS0x4094__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4199e7)
  store %struct.Memory* %call_4199e7, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 4199ed	 Bytes: 2
  %loadMem_4199ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4199ed = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4199ed)
  store %struct.Memory* %call_4199ed, %struct.Memory** %MEMORY

  ; Code: callq .search	 RIP: 4199ef	 Bytes: 5
  %loadMem1_4199ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4199ef = call %struct.Memory* @routine_callq_.search(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4199ef, i64 -9359, i64 5, i64 5)
  store %struct.Memory* %call1_4199ef, %struct.Memory** %MEMORY

  %loadMem2_4199ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4199ef = load i64, i64* %3
  %call2_4199ef = call %struct.Memory* @sub_417560.search(%struct.State* %0, i64  %loadPC_4199ef, %struct.Memory* %loadMem2_4199ef)
  store %struct.Memory* %call2_4199ef, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 4199f4	 Bytes: 2
  %loadMem_4199f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4199f4 = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4199f4)
  store %struct.Memory* %call_4199f4, %struct.Memory** %MEMORY

  ; Code: subl %eax, %ecx	 RIP: 4199f6	 Bytes: 2
  %loadMem_4199f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4199f6 = call %struct.Memory* @routine_subl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4199f6)
  store %struct.Memory* %call_4199f6, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x3038(%rbp)	 RIP: 4199f8	 Bytes: 6
  %loadMem_4199f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4199f8 = call %struct.Memory* @routine_movl__ecx__MINUS0x3038__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4199f8)
  store %struct.Memory* %call_4199f8, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x866788	 RIP: 4199fe	 Bytes: 8
  %loadMem_4199fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4199fe = call %struct.Memory* @routine_cmpl__0x0__0x866788(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4199fe)
  store %struct.Memory* %call_4199fe, %struct.Memory** %MEMORY

  ; Code: jne .L_419c61	 RIP: 419a06	 Bytes: 6
  %loadMem_419a06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419a06 = call %struct.Memory* @routine_jne_.L_419c61(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419a06, i8* %BRANCH_TAKEN, i64 603, i64 6, i64 6)
  store %struct.Memory* %call_419a06, %struct.Memory** %MEMORY

  %loadBr_419a06 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419a06 = icmp eq i8 %loadBr_419a06, 1
  br i1 %cmpBr_419a06, label %block_.L_419c61, label %block_419a0c

block_419a0c:
  ; Code: cmpl $0x0, 0x86679c	 RIP: 419a0c	 Bytes: 8
  %loadMem_419a0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419a0c = call %struct.Memory* @routine_cmpl__0x0__0x86679c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419a0c)
  store %struct.Memory* %call_419a0c, %struct.Memory** %MEMORY

  ; Code: jne .L_419a28	 RIP: 419a14	 Bytes: 6
  %loadMem_419a14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419a14 = call %struct.Memory* @routine_jne_.L_419a28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419a14, i8* %BRANCH_TAKEN, i64 20, i64 6, i64 6)
  store %struct.Memory* %call_419a14, %struct.Memory** %MEMORY

  %loadBr_419a14 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419a14 = icmp eq i8 %loadBr_419a14, 1
  br i1 %cmpBr_419a14, label %block_.L_419a28, label %block_419a1a

block_419a1a:
  ; Code: cmpl $0x0, 0x8a2a04	 RIP: 419a1a	 Bytes: 8
  %loadMem_419a1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419a1a = call %struct.Memory* @routine_cmpl__0x0__0x8a2a04(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419a1a)
  store %struct.Memory* %call_419a1a, %struct.Memory** %MEMORY

  ; Code: jne .L_419c61	 RIP: 419a22	 Bytes: 6
  %loadMem_419a22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419a22 = call %struct.Memory* @routine_jne_.L_419c61(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419a22, i8* %BRANCH_TAKEN, i64 575, i64 6, i64 6)
  store %struct.Memory* %call_419a22, %struct.Memory** %MEMORY

  %loadBr_419a22 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419a22 = icmp eq i8 %loadBr_419a22, 1
  br i1 %cmpBr_419a22, label %block_.L_419c61, label %block_.L_419a28

  ; Code: .L_419a28:	 RIP: 419a28	 Bytes: 0
block_.L_419a28:

  ; Code: cmpl $0x2, 0x633b50	 RIP: 419a28	 Bytes: 8
  %loadMem_419a28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419a28 = call %struct.Memory* @routine_cmpl__0x2__0x633b50(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419a28)
  store %struct.Memory* %call_419a28, %struct.Memory** %MEMORY

  ; Code: jl .L_419c61	 RIP: 419a30	 Bytes: 6
  %loadMem_419a30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419a30 = call %struct.Memory* @routine_jl_.L_419c61(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419a30, i8* %BRANCH_TAKEN, i64 561, i64 6, i64 6)
  store %struct.Memory* %call_419a30, %struct.Memory** %MEMORY

  %loadBr_419a30 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419a30 = icmp eq i8 %loadBr_419a30, 1
  br i1 %cmpBr_419a30, label %block_.L_419c61, label %block_419a36

block_419a36:
  ; Code: movl -0x3038(%rbp), %eax	 RIP: 419a36	 Bytes: 6
  %loadMem_419a36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419a36 = call %struct.Memory* @routine_movl_MINUS0x3038__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419a36)
  store %struct.Memory* %call_419a36, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4054(%rbp), %eax	 RIP: 419a3c	 Bytes: 6
  %loadMem_419a3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419a3c = call %struct.Memory* @routine_cmpl_MINUS0x4054__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419a3c)
  store %struct.Memory* %call_419a3c, %struct.Memory** %MEMORY

  ; Code: jl .L_419a70	 RIP: 419a42	 Bytes: 6
  %loadMem_419a42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419a42 = call %struct.Memory* @routine_jl_.L_419a70(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419a42, i8* %BRANCH_TAKEN, i64 46, i64 6, i64 6)
  store %struct.Memory* %call_419a42, %struct.Memory** %MEMORY

  %loadBr_419a42 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419a42 = icmp eq i8 %loadBr_419a42, 1
  br i1 %cmpBr_419a42, label %block_.L_419a70, label %block_419a48

block_419a48:
  ; Code: leaq -0x3010(%rbp), %rax	 RIP: 419a48	 Bytes: 7
  %loadMem_419a48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419a48 = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419a48)
  store %struct.Memory* %call_419a48, %struct.Memory** %MEMORY

  ; Code: movl -0x3038(%rbp), %edi	 RIP: 419a4f	 Bytes: 6
  %loadMem_419a4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419a4f = call %struct.Memory* @routine_movl_MINUS0x3038__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419a4f)
  store %struct.Memory* %call_419a4f, %struct.Memory** %MEMORY

  ; Code: movslq -0x3030(%rbp), %rcx	 RIP: 419a55	 Bytes: 7
  %loadMem_419a55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419a55 = call %struct.Memory* @routine_movslq_MINUS0x3030__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419a55)
  store %struct.Memory* %call_419a55, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rcx, %rcx	 RIP: 419a5c	 Bytes: 4
  %loadMem_419a5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419a5c = call %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419a5c)
  store %struct.Memory* %call_419a5c, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 419a60	 Bytes: 3
  %loadMem_419a60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419a60 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419a60)
  store %struct.Memory* %call_419a60, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 419a63	 Bytes: 3
  %loadMem_419a63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419a63 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419a63)
  store %struct.Memory* %call_419a63, %struct.Memory** %MEMORY

  ; Code: callq .post_fh_thinking	 RIP: 419a66	 Bytes: 5
  %loadMem1_419a66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_419a66 = call %struct.Memory* @routine_callq_.post_fh_thinking(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_419a66, i64 40746, i64 5, i64 5)
  store %struct.Memory* %call1_419a66, %struct.Memory** %MEMORY

  %loadMem2_419a66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_419a66 = load i64, i64* %3
  %call2_419a66 = call %struct.Memory* @sub_423990.post_fh_thinking(%struct.State* %0, i64  %loadPC_419a66, %struct.Memory* %loadMem2_419a66)
  store %struct.Memory* %call2_419a66, %struct.Memory** %MEMORY

  ; Code: jmpq .L_419bec	 RIP: 419a6b	 Bytes: 5
  %loadMem_419a6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419a6b = call %struct.Memory* @routine_jmpq_.L_419bec(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419a6b, i64 385, i64 5)
  store %struct.Memory* %call_419a6b, %struct.Memory** %MEMORY

  br label %block_.L_419bec

  ; Code: .L_419a70:	 RIP: 419a70	 Bytes: 0
block_.L_419a70:

  ; Code: movl -0x3038(%rbp), %eax	 RIP: 419a70	 Bytes: 6
  %loadMem_419a70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419a70 = call %struct.Memory* @routine_movl_MINUS0x3038__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419a70)
  store %struct.Memory* %call_419a70, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4050(%rbp), %eax	 RIP: 419a76	 Bytes: 6
  %loadMem_419a76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419a76 = call %struct.Memory* @routine_cmpl_MINUS0x4050__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419a76)
  store %struct.Memory* %call_419a76, %struct.Memory** %MEMORY

  ; Code: jg .L_419ab5	 RIP: 419a7c	 Bytes: 6
  %loadMem_419a7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419a7c = call %struct.Memory* @routine_jg_.L_419ab5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419a7c, i8* %BRANCH_TAKEN, i64 57, i64 6, i64 6)
  store %struct.Memory* %call_419a7c, %struct.Memory** %MEMORY

  %loadBr_419a7c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419a7c = icmp eq i8 %loadBr_419a7c, 1
  br i1 %cmpBr_419a7c, label %block_.L_419ab5, label %block_419a82

block_419a82:
  ; Code: leaq -0x3010(%rbp), %rax	 RIP: 419a82	 Bytes: 7
  %loadMem_419a82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419a82 = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419a82)
  store %struct.Memory* %call_419a82, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x8644f4	 RIP: 419a89	 Bytes: 11
  %loadMem_419a89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419a89 = call %struct.Memory* @routine_movl__0x1__0x8644f4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419a89)
  store %struct.Memory* %call_419a89, %struct.Memory** %MEMORY

  ; Code: movl -0x3038(%rbp), %edi	 RIP: 419a94	 Bytes: 6
  %loadMem_419a94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419a94 = call %struct.Memory* @routine_movl_MINUS0x3038__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419a94)
  store %struct.Memory* %call_419a94, %struct.Memory** %MEMORY

  ; Code: movslq -0x3030(%rbp), %rcx	 RIP: 419a9a	 Bytes: 7
  %loadMem_419a9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419a9a = call %struct.Memory* @routine_movslq_MINUS0x3030__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419a9a)
  store %struct.Memory* %call_419a9a, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rcx, %rcx	 RIP: 419aa1	 Bytes: 4
  %loadMem_419aa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419aa1 = call %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419aa1)
  store %struct.Memory* %call_419aa1, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 419aa5	 Bytes: 3
  %loadMem_419aa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419aa5 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419aa5)
  store %struct.Memory* %call_419aa5, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 419aa8	 Bytes: 3
  %loadMem_419aa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419aa8 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419aa8)
  store %struct.Memory* %call_419aa8, %struct.Memory** %MEMORY

  ; Code: callq .post_fl_thinking	 RIP: 419aab	 Bytes: 5
  %loadMem1_419aab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_419aab = call %struct.Memory* @routine_callq_.post_fl_thinking(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_419aab, i64 41173, i64 5, i64 5)
  store %struct.Memory* %call1_419aab, %struct.Memory** %MEMORY

  %loadMem2_419aab = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_419aab = load i64, i64* %3
  %call2_419aab = call %struct.Memory* @sub_423b80.post_fl_thinking(%struct.State* %0, i64  %loadPC_419aab, %struct.Memory* %loadMem2_419aab)
  store %struct.Memory* %call2_419aab, %struct.Memory** %MEMORY

  ; Code: jmpq .L_419be7	 RIP: 419ab0	 Bytes: 5
  %loadMem_419ab0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ab0 = call %struct.Memory* @routine_jmpq_.L_419be7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ab0, i64 311, i64 5)
  store %struct.Memory* %call_419ab0, %struct.Memory** %MEMORY

  br label %block_.L_419be7

  ; Code: .L_419ab5:	 RIP: 419ab5	 Bytes: 0
block_.L_419ab5:

  ; Code: leaq -0x3010(%rbp), %rax	 RIP: 419ab5	 Bytes: 7
  %loadMem_419ab5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ab5 = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ab5)
  store %struct.Memory* %call_419ab5, %struct.Memory** %MEMORY

  ; Code: movq $0x63ae50, %rcx	 RIP: 419abc	 Bytes: 10
  %loadMem_419abc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419abc = call %struct.Memory* @routine_movq__0x63ae50___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419abc)
  store %struct.Memory* %call_419abc, %struct.Memory** %MEMORY

  ; Code: movl 0x886bc0, %edx	 RIP: 419ac6	 Bytes: 7
  %loadMem_419ac6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ac6 = call %struct.Memory* @routine_movl_0x886bc0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ac6)
  store %struct.Memory* %call_419ac6, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 419acd	 Bytes: 3
  %loadMem_419acd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419acd = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419acd)
  store %struct.Memory* %call_419acd, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 419ad0	 Bytes: 3
  %loadMem_419ad0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ad0 = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ad0)
  store %struct.Memory* %call_419ad0, %struct.Memory** %MEMORY

  ; Code: imulq $0x1c20, %rsi, %rsi	 RIP: 419ad3	 Bytes: 7
  %loadMem_419ad3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ad3 = call %struct.Memory* @routine_imulq__0x1c20___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ad3)
  store %struct.Memory* %call_419ad3, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rcx	 RIP: 419ada	 Bytes: 3
  %loadMem_419ada = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ada = call %struct.Memory* @routine_addq__rsi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ada)
  store %struct.Memory* %call_419ada, %struct.Memory** %MEMORY

  ; Code: movl 0x886bc0, %edx	 RIP: 419add	 Bytes: 7
  %loadMem_419add = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419add = call %struct.Memory* @routine_movl_0x886bc0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419add)
  store %struct.Memory* %call_419add, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 419ae4	 Bytes: 3
  %loadMem_419ae4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ae4 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ae4)
  store %struct.Memory* %call_419ae4, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 419ae7	 Bytes: 3
  %loadMem_419ae7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ae7 = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ae7)
  store %struct.Memory* %call_419ae7, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rsi, %rsi	 RIP: 419aea	 Bytes: 4
  %loadMem_419aea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419aea = call %struct.Memory* @routine_imulq__0x18___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419aea)
  store %struct.Memory* %call_419aea, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rcx	 RIP: 419aee	 Bytes: 3
  %loadMem_419aee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419aee = call %struct.Memory* @routine_addq__rsi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419aee)
  store %struct.Memory* %call_419aee, %struct.Memory** %MEMORY

  ; Code: movslq -0x3030(%rbp), %rsi	 RIP: 419af1	 Bytes: 7
  %loadMem_419af1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419af1 = call %struct.Memory* @routine_movslq_MINUS0x3030__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419af1)
  store %struct.Memory* %call_419af1, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rsi, %rsi	 RIP: 419af8	 Bytes: 4
  %loadMem_419af8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419af8 = call %struct.Memory* @routine_imulq__0x18___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419af8)
  store %struct.Memory* %call_419af8, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rax	 RIP: 419afc	 Bytes: 3
  %loadMem_419afc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419afc = call %struct.Memory* @routine_addq__rsi___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419afc)
  store %struct.Memory* %call_419afc, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rsi	 RIP: 419aff	 Bytes: 3
  %loadMem_419aff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419aff = call %struct.Memory* @routine_movq___rax____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419aff)
  store %struct.Memory* %call_419aff, %struct.Memory** %MEMORY

  ; Code: movq %rsi, (%rcx)	 RIP: 419b02	 Bytes: 3
  %loadMem_419b02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b02 = call %struct.Memory* @routine_movq__rsi____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b02)
  store %struct.Memory* %call_419b02, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rsi	 RIP: 419b05	 Bytes: 4
  %loadMem_419b05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b05 = call %struct.Memory* @routine_movq_0x8__rax____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b05)
  store %struct.Memory* %call_419b05, %struct.Memory** %MEMORY

  ; Code: movq %rsi, 0x8(%rcx)	 RIP: 419b09	 Bytes: 4
  %loadMem_419b09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b09 = call %struct.Memory* @routine_movq__rsi__0x8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b09)
  store %struct.Memory* %call_419b09, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 419b0d	 Bytes: 4
  %loadMem_419b0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b0d = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b0d)
  store %struct.Memory* %call_419b0d, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x10(%rcx)	 RIP: 419b11	 Bytes: 4
  %loadMem_419b11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b11 = call %struct.Memory* @routine_movq__rax__0x10__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b11)
  store %struct.Memory* %call_419b11, %struct.Memory** %MEMORY

  ; Code: movl 0x886bc0, %edx	 RIP: 419b15	 Bytes: 7
  %loadMem_419b15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b15 = call %struct.Memory* @routine_movl_0x886bc0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b15)
  store %struct.Memory* %call_419b15, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x3034(%rbp)	 RIP: 419b1c	 Bytes: 6
  %loadMem_419b1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b1c = call %struct.Memory* @routine_movl__edx__MINUS0x3034__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b1c)
  store %struct.Memory* %call_419b1c, %struct.Memory** %MEMORY

  ; Code: .L_419b22:	 RIP: 419b22	 Bytes: 0
  br label %block_.L_419b22
block_.L_419b22:

  ; Code: movl -0x3034(%rbp), %eax	 RIP: 419b22	 Bytes: 6
  %loadMem_419b22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b22 = call %struct.Memory* @routine_movl_MINUS0x3034__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b22)
  store %struct.Memory* %call_419b22, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rcx	 RIP: 419b28	 Bytes: 8
  %loadMem_419b28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b28 = call %struct.Memory* @routine_movslq_0x886bc0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b28)
  store %struct.Memory* %call_419b28, %struct.Memory** %MEMORY

  ; Code: cmpl 0x86b8b0(,%rcx,4), %eax	 RIP: 419b30	 Bytes: 7
  %loadMem_419b30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b30 = call %struct.Memory* @routine_cmpl_0x86b8b0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b30)
  store %struct.Memory* %call_419b30, %struct.Memory** %MEMORY

  ; Code: jge .L_419bb9	 RIP: 419b37	 Bytes: 6
  %loadMem_419b37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b37 = call %struct.Memory* @routine_jge_.L_419bb9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b37, i8* %BRANCH_TAKEN, i64 130, i64 6, i64 6)
  store %struct.Memory* %call_419b37, %struct.Memory** %MEMORY

  %loadBr_419b37 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419b37 = icmp eq i8 %loadBr_419b37, 1
  br i1 %cmpBr_419b37, label %block_.L_419bb9, label %block_419b3d

block_419b3d:
  ; Code: movq $0x63ae50, %rax	 RIP: 419b3d	 Bytes: 10
  %loadMem_419b3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b3d = call %struct.Memory* @routine_movq__0x63ae50___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b3d)
  store %struct.Memory* %call_419b3d, %struct.Memory** %MEMORY

  ; Code: movl 0x886bc0, %ecx	 RIP: 419b47	 Bytes: 7
  %loadMem_419b47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b47 = call %struct.Memory* @routine_movl_0x886bc0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b47)
  store %struct.Memory* %call_419b47, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 419b4e	 Bytes: 3
  %loadMem_419b4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b4e = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b4e)
  store %struct.Memory* %call_419b4e, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 419b51	 Bytes: 3
  %loadMem_419b51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b51 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b51)
  store %struct.Memory* %call_419b51, %struct.Memory** %MEMORY

  ; Code: imulq $0x1c20, %rdx, %rdx	 RIP: 419b54	 Bytes: 7
  %loadMem_419b54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b54 = call %struct.Memory* @routine_imulq__0x1c20___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b54)
  store %struct.Memory* %call_419b54, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 419b5b	 Bytes: 3
  %loadMem_419b5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b5b = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b5b)
  store %struct.Memory* %call_419b5b, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 419b5e	 Bytes: 3
  %loadMem_419b5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b5e = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b5e)
  store %struct.Memory* %call_419b5e, %struct.Memory** %MEMORY

  ; Code: movslq -0x3034(%rbp), %rdx	 RIP: 419b61	 Bytes: 7
  %loadMem_419b61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b61 = call %struct.Memory* @routine_movslq_MINUS0x3034__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b61)
  store %struct.Memory* %call_419b61, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 419b68	 Bytes: 4
  %loadMem_419b68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b68 = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b68)
  store %struct.Memory* %call_419b68, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 419b6c	 Bytes: 3
  %loadMem_419b6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b6c = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b6c)
  store %struct.Memory* %call_419b6c, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rdx	 RIP: 419b6f	 Bytes: 8
  %loadMem_419b6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b6f = call %struct.Memory* @routine_movslq_0x886bc0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b6f)
  store %struct.Memory* %call_419b6f, %struct.Memory** %MEMORY

  ; Code: imulq $0x1c20, %rdx, %rdx	 RIP: 419b77	 Bytes: 7
  %loadMem_419b77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b77 = call %struct.Memory* @routine_imulq__0x1c20___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b77)
  store %struct.Memory* %call_419b77, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 419b7e	 Bytes: 3
  %loadMem_419b7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b7e = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b7e)
  store %struct.Memory* %call_419b7e, %struct.Memory** %MEMORY

  ; Code: movslq -0x3034(%rbp), %rdx	 RIP: 419b81	 Bytes: 7
  %loadMem_419b81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b81 = call %struct.Memory* @routine_movslq_MINUS0x3034__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b81)
  store %struct.Memory* %call_419b81, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 419b88	 Bytes: 4
  %loadMem_419b88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b88 = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b88)
  store %struct.Memory* %call_419b88, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 419b8c	 Bytes: 3
  %loadMem_419b8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b8c = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b8c)
  store %struct.Memory* %call_419b8c, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdx	 RIP: 419b8f	 Bytes: 3
  %loadMem_419b8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b8f = call %struct.Memory* @routine_movq___rax____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b8f)
  store %struct.Memory* %call_419b8f, %struct.Memory** %MEMORY

  ; Code: movq %rdx, (%rsi)	 RIP: 419b92	 Bytes: 3
  %loadMem_419b92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b92 = call %struct.Memory* @routine_movq__rdx____rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b92)
  store %struct.Memory* %call_419b92, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rdx	 RIP: 419b95	 Bytes: 4
  %loadMem_419b95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b95 = call %struct.Memory* @routine_movq_0x8__rax____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b95)
  store %struct.Memory* %call_419b95, %struct.Memory** %MEMORY

  ; Code: movq %rdx, 0x8(%rsi)	 RIP: 419b99	 Bytes: 4
  %loadMem_419b99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b99 = call %struct.Memory* @routine_movq__rdx__0x8__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b99)
  store %struct.Memory* %call_419b99, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 419b9d	 Bytes: 4
  %loadMem_419b9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b9d = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b9d)
  store %struct.Memory* %call_419b9d, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x10(%rsi)	 RIP: 419ba1	 Bytes: 4
  %loadMem_419ba1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ba1 = call %struct.Memory* @routine_movq__rax__0x10__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ba1)
  store %struct.Memory* %call_419ba1, %struct.Memory** %MEMORY

  ; Code: movl -0x3034(%rbp), %eax	 RIP: 419ba5	 Bytes: 6
  %loadMem_419ba5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ba5 = call %struct.Memory* @routine_movl_MINUS0x3034__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ba5)
  store %struct.Memory* %call_419ba5, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 419bab	 Bytes: 3
  %loadMem_419bab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419bab = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419bab)
  store %struct.Memory* %call_419bab, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3034(%rbp)	 RIP: 419bae	 Bytes: 6
  %loadMem_419bae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419bae = call %struct.Memory* @routine_movl__eax__MINUS0x3034__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419bae)
  store %struct.Memory* %call_419bae, %struct.Memory** %MEMORY

  ; Code: jmpq .L_419b22	 RIP: 419bb4	 Bytes: 5
  %loadMem_419bb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419bb4 = call %struct.Memory* @routine_jmpq_.L_419b22(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419bb4, i64 -146, i64 5)
  store %struct.Memory* %call_419bb4, %struct.Memory** %MEMORY

  br label %block_.L_419b22

  ; Code: .L_419bb9:	 RIP: 419bb9	 Bytes: 0
block_.L_419bb9:

  ; Code: movslq 0x886bc0, %rax	 RIP: 419bb9	 Bytes: 8
  %loadMem_419bb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419bb9 = call %struct.Memory* @routine_movslq_0x886bc0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419bb9)
  store %struct.Memory* %call_419bb9, %struct.Memory** %MEMORY

  ; Code: movl 0x86b8b0(,%rax,4), %ecx	 RIP: 419bc1	 Bytes: 7
  %loadMem_419bc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419bc1 = call %struct.Memory* @routine_movl_0x86b8b0___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419bc1)
  store %struct.Memory* %call_419bc1, %struct.Memory** %MEMORY

  ; Code: movl 0x886bc0, %edx	 RIP: 419bc8	 Bytes: 7
  %loadMem_419bc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419bc8 = call %struct.Memory* @routine_movl_0x886bc0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419bc8)
  store %struct.Memory* %call_419bc8, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 419bcf	 Bytes: 3
  %loadMem_419bcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419bcf = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419bcf)
  store %struct.Memory* %call_419bcf, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rax	 RIP: 419bd2	 Bytes: 3
  %loadMem_419bd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419bd2 = call %struct.Memory* @routine_movslq__edx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419bd2)
  store %struct.Memory* %call_419bd2, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x86b8b0(,%rax,4)	 RIP: 419bd5	 Bytes: 7
  %loadMem_419bd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419bd5 = call %struct.Memory* @routine_movl__ecx__0x86b8b0___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419bd5)
  store %struct.Memory* %call_419bd5, %struct.Memory** %MEMORY

  ; Code: movl -0x3038(%rbp), %edi	 RIP: 419bdc	 Bytes: 6
  %loadMem_419bdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419bdc = call %struct.Memory* @routine_movl_MINUS0x3038__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419bdc)
  store %struct.Memory* %call_419bdc, %struct.Memory** %MEMORY

  ; Code: callq .post_thinking	 RIP: 419be2	 Bytes: 5
  %loadMem1_419be2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_419be2 = call %struct.Memory* @routine_callq_.post_thinking(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_419be2, i64 38958, i64 5, i64 5)
  store %struct.Memory* %call1_419be2, %struct.Memory** %MEMORY

  %loadMem2_419be2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_419be2 = load i64, i64* %3
  %call2_419be2 = call %struct.Memory* @sub_423410.post_thinking(%struct.State* %0, i64  %loadPC_419be2, %struct.Memory* %loadMem2_419be2)
  store %struct.Memory* %call2_419be2, %struct.Memory** %MEMORY

  ; Code: .L_419be7:	 RIP: 419be7	 Bytes: 0
  br label %block_.L_419be7
block_.L_419be7:

  ; Code: jmpq .L_419bec	 RIP: 419be7	 Bytes: 5
  %loadMem_419be7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419be7 = call %struct.Memory* @routine_jmpq_.L_419bec(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419be7, i64 5, i64 5)
  store %struct.Memory* %call_419be7, %struct.Memory** %MEMORY

  br label %block_.L_419bec

  ; Code: .L_419bec:	 RIP: 419bec	 Bytes: 0
block_.L_419bec:

  ; Code: movl -0x3038(%rbp), %eax	 RIP: 419bec	 Bytes: 6
  %loadMem_419bec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419bec = call %struct.Memory* @routine_movl_MINUS0x3038__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419bec)
  store %struct.Memory* %call_419bec, %struct.Memory** %MEMORY

  ; Code: cmpl 0x86450c, %eax	 RIP: 419bf2	 Bytes: 7
  %loadMem_419bf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419bf2 = call %struct.Memory* @routine_cmpl_0x86450c___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419bf2)
  store %struct.Memory* %call_419bf2, %struct.Memory** %MEMORY

  ; Code: jle .L_419c5c	 RIP: 419bf9	 Bytes: 6
  %loadMem_419bf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419bf9 = call %struct.Memory* @routine_jle_.L_419c5c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419bf9, i8* %BRANCH_TAKEN, i64 99, i64 6, i64 6)
  store %struct.Memory* %call_419bf9, %struct.Memory** %MEMORY

  %loadBr_419bf9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419bf9 = icmp eq i8 %loadBr_419bf9, 1
  br i1 %cmpBr_419bf9, label %block_.L_419c5c, label %block_419bff

block_419bff:
  ; Code: cmpl $0x0, 0x866788	 RIP: 419bff	 Bytes: 8
  %loadMem_419bff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419bff = call %struct.Memory* @routine_cmpl__0x0__0x866788(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419bff)
  store %struct.Memory* %call_419bff, %struct.Memory** %MEMORY

  ; Code: jne .L_419c5c	 RIP: 419c07	 Bytes: 6
  %loadMem_419c07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c07 = call %struct.Memory* @routine_jne_.L_419c5c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c07, i8* %BRANCH_TAKEN, i64 85, i64 6, i64 6)
  store %struct.Memory* %call_419c07, %struct.Memory** %MEMORY

  %loadBr_419c07 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419c07 = icmp eq i8 %loadBr_419c07, 1
  br i1 %cmpBr_419c07, label %block_.L_419c5c, label %block_419c0d

block_419c0d:
  ; Code: leaq -0x3010(%rbp), %rax	 RIP: 419c0d	 Bytes: 7
  %loadMem_419c0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c0d = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c0d)
  store %struct.Memory* %call_419c0d, %struct.Memory** %MEMORY

  ; Code: movl -0x3038(%rbp), %ecx	 RIP: 419c14	 Bytes: 6
  %loadMem_419c14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c14 = call %struct.Memory* @routine_movl_MINUS0x3038__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c14)
  store %struct.Memory* %call_419c14, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x86450c	 RIP: 419c1a	 Bytes: 7
  %loadMem_419c1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c1a = call %struct.Memory* @routine_movl__ecx__0x86450c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c1a)
  store %struct.Memory* %call_419c1a, %struct.Memory** %MEMORY

  ; Code: movl -0x3030(%rbp), %ecx	 RIP: 419c21	 Bytes: 6
  %loadMem_419c21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c21 = call %struct.Memory* @routine_movl_MINUS0x3030__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c21)
  store %struct.Memory* %call_419c21, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8825f8	 RIP: 419c27	 Bytes: 7
  %loadMem_419c27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c27 = call %struct.Memory* @routine_movl__ecx__0x8825f8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c27)
  store %struct.Memory* %call_419c27, %struct.Memory** %MEMORY

  ; Code: movslq -0x3030(%rbp), %rdx	 RIP: 419c2e	 Bytes: 7
  %loadMem_419c2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c2e = call %struct.Memory* @routine_movslq_MINUS0x3030__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c2e)
  store %struct.Memory* %call_419c2e, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 419c35	 Bytes: 4
  %loadMem_419c35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c35 = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c35)
  store %struct.Memory* %call_419c35, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 419c39	 Bytes: 3
  %loadMem_419c39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c39 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c39)
  store %struct.Memory* %call_419c39, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdx	 RIP: 419c3c	 Bytes: 3
  %loadMem_419c3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c3c = call %struct.Memory* @routine_movq___rax____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c3c)
  store %struct.Memory* %call_419c3c, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x3028(%rbp)	 RIP: 419c3f	 Bytes: 7
  %loadMem_419c3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c3f = call %struct.Memory* @routine_movq__rdx__MINUS0x3028__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c3f)
  store %struct.Memory* %call_419c3f, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rdx	 RIP: 419c46	 Bytes: 4
  %loadMem_419c46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c46 = call %struct.Memory* @routine_movq_0x8__rax____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c46)
  store %struct.Memory* %call_419c46, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x3020(%rbp)	 RIP: 419c4a	 Bytes: 7
  %loadMem_419c4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c4a = call %struct.Memory* @routine_movq__rdx__MINUS0x3020__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c4a)
  store %struct.Memory* %call_419c4a, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 419c51	 Bytes: 4
  %loadMem_419c51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c51 = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c51)
  store %struct.Memory* %call_419c51, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x3018(%rbp)	 RIP: 419c55	 Bytes: 7
  %loadMem_419c55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c55 = call %struct.Memory* @routine_movq__rax__MINUS0x3018__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c55)
  store %struct.Memory* %call_419c55, %struct.Memory** %MEMORY

  ; Code: .L_419c5c:	 RIP: 419c5c	 Bytes: 0
  br label %block_.L_419c5c
block_.L_419c5c:

  ; Code: jmpq .L_419c61	 RIP: 419c5c	 Bytes: 5
  %loadMem_419c5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c5c = call %struct.Memory* @routine_jmpq_.L_419c61(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c5c, i64 5, i64 5)
  store %struct.Memory* %call_419c5c, %struct.Memory** %MEMORY

  br label %block_.L_419c61

  ; Code: .L_419c61:	 RIP: 419c61	 Bytes: 0
block_.L_419c61:

  ; Code: jmpq .L_419f49	 RIP: 419c61	 Bytes: 5
  %loadMem_419c61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c61 = call %struct.Memory* @routine_jmpq_.L_419f49(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c61, i64 744, i64 5)
  store %struct.Memory* %call_419c61, %struct.Memory** %MEMORY

  br label %block_.L_419f49

  ; Code: .L_419c66:	 RIP: 419c66	 Bytes: 0
block_.L_419c66:

  ; Code: xorl %eax, %eax	 RIP: 419c66	 Bytes: 2
  %loadMem_419c66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c66 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c66)
  store %struct.Memory* %call_419c66, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 419c68	 Bytes: 2
  %loadMem_419c68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c68 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c68)
  store %struct.Memory* %call_419c68, %struct.Memory** %MEMORY

  ; Code: subl -0x4050(%rbp), %ecx	 RIP: 419c6a	 Bytes: 6
  %loadMem_419c6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c6a = call %struct.Memory* @routine_subl_MINUS0x4050__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c6a)
  store %struct.Memory* %call_419c6a, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 419c70	 Bytes: 3
  %loadMem_419c70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c70 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c70)
  store %struct.Memory* %call_419c70, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 419c73	 Bytes: 2
  %loadMem_419c73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c73 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c73)
  store %struct.Memory* %call_419c73, %struct.Memory** %MEMORY

  ; Code: subl -0x4050(%rbp), %edx	 RIP: 419c75	 Bytes: 6
  %loadMem_419c75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c75 = call %struct.Memory* @routine_subl_MINUS0x4050__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c75)
  store %struct.Memory* %call_419c75, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %esi	 RIP: 419c7b	 Bytes: 3
  %loadMem_419c7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c7b = call %struct.Memory* @routine_movl_MINUS0xc__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c7b)
  store %struct.Memory* %call_419c7b, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 419c7e	 Bytes: 3
  %loadMem_419c7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c7e = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c7e)
  store %struct.Memory* %call_419c7e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edi	 RIP: 419c81	 Bytes: 2
  %loadMem_419c81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c81 = call %struct.Memory* @routine_movl__ecx___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c81)
  store %struct.Memory* %call_419c81, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x4098(%rbp)	 RIP: 419c83	 Bytes: 6
  %loadMem_419c83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c83 = call %struct.Memory* @routine_movl__esi__MINUS0x4098__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c83)
  store %struct.Memory* %call_419c83, %struct.Memory** %MEMORY

  ; Code: movl %edx, %esi	 RIP: 419c89	 Bytes: 2
  %loadMem_419c89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c89 = call %struct.Memory* @routine_movl__edx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c89)
  store %struct.Memory* %call_419c89, %struct.Memory** %MEMORY

  ; Code: movl -0x4098(%rbp), %edx	 RIP: 419c8b	 Bytes: 6
  %loadMem_419c8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c8b = call %struct.Memory* @routine_movl_MINUS0x4098__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c8b)
  store %struct.Memory* %call_419c8b, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 419c91	 Bytes: 2
  %loadMem_419c91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c91 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c91)
  store %struct.Memory* %call_419c91, %struct.Memory** %MEMORY

  ; Code: callq .search	 RIP: 419c93	 Bytes: 5
  %loadMem1_419c93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_419c93 = call %struct.Memory* @routine_callq_.search(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_419c93, i64 -10035, i64 5, i64 5)
  store %struct.Memory* %call1_419c93, %struct.Memory** %MEMORY

  %loadMem2_419c93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_419c93 = load i64, i64* %3
  %call2_419c93 = call %struct.Memory* @sub_417560.search(%struct.State* %0, i64  %loadPC_419c93, %struct.Memory* %loadMem2_419c93)
  store %struct.Memory* %call2_419c93, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 419c98	 Bytes: 2
  %loadMem_419c98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c98 = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c98)
  store %struct.Memory* %call_419c98, %struct.Memory** %MEMORY

  ; Code: subl %eax, %ecx	 RIP: 419c9a	 Bytes: 2
  %loadMem_419c9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c9a = call %struct.Memory* @routine_subl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c9a)
  store %struct.Memory* %call_419c9a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x3038(%rbp)	 RIP: 419c9c	 Bytes: 6
  %loadMem_419c9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c9c = call %struct.Memory* @routine_movl__ecx__MINUS0x3038__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c9c)
  store %struct.Memory* %call_419c9c, %struct.Memory** %MEMORY

  ; Code: movl -0x3038(%rbp), %eax	 RIP: 419ca2	 Bytes: 6
  %loadMem_419ca2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ca2 = call %struct.Memory* @routine_movl_MINUS0x3038__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ca2)
  store %struct.Memory* %call_419ca2, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4050(%rbp), %eax	 RIP: 419ca8	 Bytes: 6
  %loadMem_419ca8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ca8 = call %struct.Memory* @routine_cmpl_MINUS0x4050__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ca8)
  store %struct.Memory* %call_419ca8, %struct.Memory** %MEMORY

  ; Code: jle .L_419f01	 RIP: 419cae	 Bytes: 6
  %loadMem_419cae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419cae = call %struct.Memory* @routine_jle_.L_419f01(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419cae, i8* %BRANCH_TAKEN, i64 595, i64 6, i64 6)
  store %struct.Memory* %call_419cae, %struct.Memory** %MEMORY

  %loadBr_419cae = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419cae = icmp eq i8 %loadBr_419cae, 1
  br i1 %cmpBr_419cae, label %block_.L_419f01, label %block_419cb4

block_419cb4:
  ; Code: movl -0x3038(%rbp), %eax	 RIP: 419cb4	 Bytes: 6
  %loadMem_419cb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419cb4 = call %struct.Memory* @routine_movl_MINUS0x3038__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419cb4)
  store %struct.Memory* %call_419cb4, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4054(%rbp), %eax	 RIP: 419cba	 Bytes: 6
  %loadMem_419cba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419cba = call %struct.Memory* @routine_cmpl_MINUS0x4054__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419cba)
  store %struct.Memory* %call_419cba, %struct.Memory** %MEMORY

  ; Code: jge .L_419f01	 RIP: 419cc0	 Bytes: 6
  %loadMem_419cc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419cc0 = call %struct.Memory* @routine_jge_.L_419f01(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419cc0, i8* %BRANCH_TAKEN, i64 577, i64 6, i64 6)
  store %struct.Memory* %call_419cc0, %struct.Memory** %MEMORY

  %loadBr_419cc0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419cc0 = icmp eq i8 %loadBr_419cc0, 1
  br i1 %cmpBr_419cc0, label %block_.L_419f01, label %block_419cc6

block_419cc6:
  ; Code: cmpl $0x0, 0x866788	 RIP: 419cc6	 Bytes: 8
  %loadMem_419cc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419cc6 = call %struct.Memory* @routine_cmpl__0x0__0x866788(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419cc6)
  store %struct.Memory* %call_419cc6, %struct.Memory** %MEMORY

  ; Code: jne .L_419f01	 RIP: 419cce	 Bytes: 6
  %loadMem_419cce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419cce = call %struct.Memory* @routine_jne_.L_419f01(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419cce, i8* %BRANCH_TAKEN, i64 563, i64 6, i64 6)
  store %struct.Memory* %call_419cce, %struct.Memory** %MEMORY

  %loadBr_419cce = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419cce = icmp eq i8 %loadBr_419cce, 1
  br i1 %cmpBr_419cce, label %block_.L_419f01, label %block_419cd4

block_419cd4:
  ; Code: leaq -0x3010(%rbp), %rax	 RIP: 419cd4	 Bytes: 7
  %loadMem_419cd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419cd4 = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419cd4)
  store %struct.Memory* %call_419cd4, %struct.Memory** %MEMORY

  ; Code: movl -0x3038(%rbp), %edi	 RIP: 419cdb	 Bytes: 6
  %loadMem_419cdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419cdb = call %struct.Memory* @routine_movl_MINUS0x3038__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419cdb)
  store %struct.Memory* %call_419cdb, %struct.Memory** %MEMORY

  ; Code: movslq -0x3030(%rbp), %rcx	 RIP: 419ce1	 Bytes: 7
  %loadMem_419ce1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ce1 = call %struct.Memory* @routine_movslq_MINUS0x3030__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ce1)
  store %struct.Memory* %call_419ce1, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rcx, %rcx	 RIP: 419ce8	 Bytes: 4
  %loadMem_419ce8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ce8 = call %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ce8)
  store %struct.Memory* %call_419ce8, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 419cec	 Bytes: 3
  %loadMem_419cec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419cec = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419cec)
  store %struct.Memory* %call_419cec, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 419cef	 Bytes: 3
  %loadMem_419cef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419cef = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419cef)
  store %struct.Memory* %call_419cef, %struct.Memory** %MEMORY

  ; Code: callq .post_fail_thinking	 RIP: 419cf2	 Bytes: 5
  %loadMem1_419cf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_419cf2 = call %struct.Memory* @routine_callq_.post_fail_thinking(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_419cf2, i64 39598, i64 5, i64 5)
  store %struct.Memory* %call1_419cf2, %struct.Memory** %MEMORY

  %loadMem2_419cf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_419cf2 = load i64, i64* %3
  %call2_419cf2 = call %struct.Memory* @sub_4237a0.post_fail_thinking(%struct.State* %0, i64  %loadPC_419cf2, %struct.Memory* %loadMem2_419cf2)
  store %struct.Memory* %call2_419cf2, %struct.Memory** %MEMORY

  ; Code: xorl %edi, %edi	 RIP: 419cf7	 Bytes: 2
  %loadMem_419cf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419cf7 = call %struct.Memory* @routine_xorl__edi___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419cf7)
  store %struct.Memory* %call_419cf7, %struct.Memory** %MEMORY

  ; Code: movl %edi, %edx	 RIP: 419cf9	 Bytes: 2
  %loadMem_419cf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419cf9 = call %struct.Memory* @routine_movl__edi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419cf9)
  store %struct.Memory* %call_419cf9, %struct.Memory** %MEMORY

  ; Code: subl -0x4054(%rbp), %edx	 RIP: 419cfb	 Bytes: 6
  %loadMem_419cfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419cfb = call %struct.Memory* @routine_subl_MINUS0x4054__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419cfb)
  store %struct.Memory* %call_419cfb, %struct.Memory** %MEMORY

  ; Code: movl %edi, %r8d	 RIP: 419d01	 Bytes: 3
  %loadMem_419d01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d01 = call %struct.Memory* @routine_movl__edi___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d01)
  store %struct.Memory* %call_419d01, %struct.Memory** %MEMORY

  ; Code: subl -0x4050(%rbp), %r8d	 RIP: 419d04	 Bytes: 7
  %loadMem_419d04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d04 = call %struct.Memory* @routine_subl_MINUS0x4050__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d04)
  store %struct.Memory* %call_419d04, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %r9d	 RIP: 419d0b	 Bytes: 4
  %loadMem_419d0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d0b = call %struct.Memory* @routine_movl_MINUS0xc__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d0b)
  store %struct.Memory* %call_419d0b, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %r9d	 RIP: 419d0f	 Bytes: 4
  %loadMem_419d0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d0f = call %struct.Memory* @routine_subl__0x1___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d0f)
  store %struct.Memory* %call_419d0f, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x409c(%rbp)	 RIP: 419d13	 Bytes: 6
  %loadMem_419d13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d13 = call %struct.Memory* @routine_movl__edi__MINUS0x409c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d13)
  store %struct.Memory* %call_419d13, %struct.Memory** %MEMORY

  ; Code: movl %edx, %edi	 RIP: 419d19	 Bytes: 2
  %loadMem_419d19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d19 = call %struct.Memory* @routine_movl__edx___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d19)
  store %struct.Memory* %call_419d19, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %esi	 RIP: 419d1b	 Bytes: 3
  %loadMem_419d1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d1b = call %struct.Memory* @routine_movl__r8d___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d1b)
  store %struct.Memory* %call_419d1b, %struct.Memory** %MEMORY

  ; Code: movl %r9d, %edx	 RIP: 419d1e	 Bytes: 3
  %loadMem_419d1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d1e = call %struct.Memory* @routine_movl__r9d___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d1e)
  store %struct.Memory* %call_419d1e, %struct.Memory** %MEMORY

  ; Code: movl -0x409c(%rbp), %ecx	 RIP: 419d21	 Bytes: 6
  %loadMem_419d21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d21 = call %struct.Memory* @routine_movl_MINUS0x409c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d21)
  store %struct.Memory* %call_419d21, %struct.Memory** %MEMORY

  ; Code: callq .search	 RIP: 419d27	 Bytes: 5
  %loadMem1_419d27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_419d27 = call %struct.Memory* @routine_callq_.search(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_419d27, i64 -10183, i64 5, i64 5)
  store %struct.Memory* %call1_419d27, %struct.Memory** %MEMORY

  %loadMem2_419d27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_419d27 = load i64, i64* %3
  %call2_419d27 = call %struct.Memory* @sub_417560.search(%struct.State* %0, i64  %loadPC_419d27, %struct.Memory* %loadMem2_419d27)
  store %struct.Memory* %call2_419d27, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 419d2c	 Bytes: 2
  %loadMem_419d2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d2c = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d2c)
  store %struct.Memory* %call_419d2c, %struct.Memory** %MEMORY

  ; Code: subl %eax, %ecx	 RIP: 419d2e	 Bytes: 2
  %loadMem_419d2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d2e = call %struct.Memory* @routine_subl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d2e)
  store %struct.Memory* %call_419d2e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x3038(%rbp)	 RIP: 419d30	 Bytes: 6
  %loadMem_419d30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d30 = call %struct.Memory* @routine_movl__ecx__MINUS0x3038__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d30)
  store %struct.Memory* %call_419d30, %struct.Memory** %MEMORY

  ; Code: movl -0x3038(%rbp), %eax	 RIP: 419d36	 Bytes: 6
  %loadMem_419d36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d36 = call %struct.Memory* @routine_movl_MINUS0x3038__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d36)
  store %struct.Memory* %call_419d36, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4050(%rbp), %eax	 RIP: 419d3c	 Bytes: 6
  %loadMem_419d3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d3c = call %struct.Memory* @routine_cmpl_MINUS0x4050__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d3c)
  store %struct.Memory* %call_419d3c, %struct.Memory** %MEMORY

  ; Code: jle .L_419efc	 RIP: 419d42	 Bytes: 6
  %loadMem_419d42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d42 = call %struct.Memory* @routine_jle_.L_419efc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d42, i8* %BRANCH_TAKEN, i64 442, i64 6, i64 6)
  store %struct.Memory* %call_419d42, %struct.Memory** %MEMORY

  %loadBr_419d42 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419d42 = icmp eq i8 %loadBr_419d42, 1
  br i1 %cmpBr_419d42, label %block_.L_419efc, label %block_419d48

block_419d48:
  ; Code: cmpl $0x0, 0x866788	 RIP: 419d48	 Bytes: 8
  %loadMem_419d48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d48 = call %struct.Memory* @routine_cmpl__0x0__0x866788(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d48)
  store %struct.Memory* %call_419d48, %struct.Memory** %MEMORY

  ; Code: jne .L_419efc	 RIP: 419d50	 Bytes: 6
  %loadMem_419d50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d50 = call %struct.Memory* @routine_jne_.L_419efc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d50, i8* %BRANCH_TAKEN, i64 428, i64 6, i64 6)
  store %struct.Memory* %call_419d50, %struct.Memory** %MEMORY

  %loadBr_419d50 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419d50 = icmp eq i8 %loadBr_419d50, 1
  br i1 %cmpBr_419d50, label %block_.L_419efc, label %block_419d56

block_419d56:
  ; Code: leaq -0x3010(%rbp), %rax	 RIP: 419d56	 Bytes: 7
  %loadMem_419d56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d56 = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d56)
  store %struct.Memory* %call_419d56, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x8644f4	 RIP: 419d5d	 Bytes: 11
  %loadMem_419d5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d5d = call %struct.Memory* @routine_movl__0x0__0x8644f4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d5d)
  store %struct.Memory* %call_419d5d, %struct.Memory** %MEMORY

  ; Code: movl -0x3038(%rbp), %ecx	 RIP: 419d68	 Bytes: 6
  %loadMem_419d68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d68 = call %struct.Memory* @routine_movl_MINUS0x3038__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d68)
  store %struct.Memory* %call_419d68, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x86450c	 RIP: 419d6e	 Bytes: 7
  %loadMem_419d6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d6e = call %struct.Memory* @routine_movl__ecx__0x86450c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d6e)
  store %struct.Memory* %call_419d6e, %struct.Memory** %MEMORY

  ; Code: movl -0x3030(%rbp), %ecx	 RIP: 419d75	 Bytes: 6
  %loadMem_419d75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d75 = call %struct.Memory* @routine_movl_MINUS0x3030__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d75)
  store %struct.Memory* %call_419d75, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8825f8	 RIP: 419d7b	 Bytes: 7
  %loadMem_419d7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d7b = call %struct.Memory* @routine_movl__ecx__0x8825f8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d7b)
  store %struct.Memory* %call_419d7b, %struct.Memory** %MEMORY

  ; Code: movslq -0x3030(%rbp), %rdx	 RIP: 419d82	 Bytes: 7
  %loadMem_419d82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d82 = call %struct.Memory* @routine_movslq_MINUS0x3030__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d82)
  store %struct.Memory* %call_419d82, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 419d89	 Bytes: 4
  %loadMem_419d89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d89 = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d89)
  store %struct.Memory* %call_419d89, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 419d8d	 Bytes: 3
  %loadMem_419d8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d8d = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d8d)
  store %struct.Memory* %call_419d8d, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdx	 RIP: 419d90	 Bytes: 3
  %loadMem_419d90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d90 = call %struct.Memory* @routine_movq___rax____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d90)
  store %struct.Memory* %call_419d90, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x3028(%rbp)	 RIP: 419d93	 Bytes: 7
  %loadMem_419d93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d93 = call %struct.Memory* @routine_movq__rdx__MINUS0x3028__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d93)
  store %struct.Memory* %call_419d93, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rdx	 RIP: 419d9a	 Bytes: 4
  %loadMem_419d9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d9a = call %struct.Memory* @routine_movq_0x8__rax____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d9a)
  store %struct.Memory* %call_419d9a, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x3020(%rbp)	 RIP: 419d9e	 Bytes: 7
  %loadMem_419d9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d9e = call %struct.Memory* @routine_movq__rdx__MINUS0x3020__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d9e)
  store %struct.Memory* %call_419d9e, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 419da5	 Bytes: 4
  %loadMem_419da5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419da5 = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419da5)
  store %struct.Memory* %call_419da5, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x3018(%rbp)	 RIP: 419da9	 Bytes: 7
  %loadMem_419da9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419da9 = call %struct.Memory* @routine_movq__rax__MINUS0x3018__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419da9)
  store %struct.Memory* %call_419da9, %struct.Memory** %MEMORY

  ; Code: movl -0x3038(%rbp), %ecx	 RIP: 419db0	 Bytes: 6
  %loadMem_419db0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419db0 = call %struct.Memory* @routine_movl_MINUS0x3038__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419db0)
  store %struct.Memory* %call_419db0, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4054(%rbp), %ecx	 RIP: 419db6	 Bytes: 6
  %loadMem_419db6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419db6 = call %struct.Memory* @routine_cmpl_MINUS0x4054__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419db6)
  store %struct.Memory* %call_419db6, %struct.Memory** %MEMORY

  ; Code: jge .L_419ef7	 RIP: 419dbc	 Bytes: 6
  %loadMem_419dbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419dbc = call %struct.Memory* @routine_jge_.L_419ef7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419dbc, i8* %BRANCH_TAKEN, i64 315, i64 6, i64 6)
  store %struct.Memory* %call_419dbc, %struct.Memory** %MEMORY

  %loadBr_419dbc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419dbc = icmp eq i8 %loadBr_419dbc, 1
  br i1 %cmpBr_419dbc, label %block_.L_419ef7, label %block_419dc2

block_419dc2:
  ; Code: cmpl $0x2, 0x633b50	 RIP: 419dc2	 Bytes: 8
  %loadMem_419dc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419dc2 = call %struct.Memory* @routine_cmpl__0x2__0x633b50(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419dc2)
  store %struct.Memory* %call_419dc2, %struct.Memory** %MEMORY

  ; Code: jl .L_419ef7	 RIP: 419dca	 Bytes: 6
  %loadMem_419dca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419dca = call %struct.Memory* @routine_jl_.L_419ef7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419dca, i8* %BRANCH_TAKEN, i64 301, i64 6, i64 6)
  store %struct.Memory* %call_419dca, %struct.Memory** %MEMORY

  %loadBr_419dca = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419dca = icmp eq i8 %loadBr_419dca, 1
  br i1 %cmpBr_419dca, label %block_.L_419ef7, label %block_419dd0

block_419dd0:
  ; Code: leaq -0x3010(%rbp), %rax	 RIP: 419dd0	 Bytes: 7
  %loadMem_419dd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419dd0 = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419dd0)
  store %struct.Memory* %call_419dd0, %struct.Memory** %MEMORY

  ; Code: movq $0x63ae50, %rcx	 RIP: 419dd7	 Bytes: 10
  %loadMem_419dd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419dd7 = call %struct.Memory* @routine_movq__0x63ae50___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419dd7)
  store %struct.Memory* %call_419dd7, %struct.Memory** %MEMORY

  ; Code: movl 0x886bc0, %edx	 RIP: 419de1	 Bytes: 7
  %loadMem_419de1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419de1 = call %struct.Memory* @routine_movl_0x886bc0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419de1)
  store %struct.Memory* %call_419de1, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 419de8	 Bytes: 3
  %loadMem_419de8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419de8 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419de8)
  store %struct.Memory* %call_419de8, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 419deb	 Bytes: 3
  %loadMem_419deb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419deb = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419deb)
  store %struct.Memory* %call_419deb, %struct.Memory** %MEMORY

  ; Code: imulq $0x1c20, %rsi, %rsi	 RIP: 419dee	 Bytes: 7
  %loadMem_419dee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419dee = call %struct.Memory* @routine_imulq__0x1c20___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419dee)
  store %struct.Memory* %call_419dee, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rcx	 RIP: 419df5	 Bytes: 3
  %loadMem_419df5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419df5 = call %struct.Memory* @routine_addq__rsi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419df5)
  store %struct.Memory* %call_419df5, %struct.Memory** %MEMORY

  ; Code: movl 0x886bc0, %edx	 RIP: 419df8	 Bytes: 7
  %loadMem_419df8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419df8 = call %struct.Memory* @routine_movl_0x886bc0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419df8)
  store %struct.Memory* %call_419df8, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 419dff	 Bytes: 3
  %loadMem_419dff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419dff = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419dff)
  store %struct.Memory* %call_419dff, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 419e02	 Bytes: 3
  %loadMem_419e02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e02 = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e02)
  store %struct.Memory* %call_419e02, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rsi, %rsi	 RIP: 419e05	 Bytes: 4
  %loadMem_419e05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e05 = call %struct.Memory* @routine_imulq__0x18___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e05)
  store %struct.Memory* %call_419e05, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rcx	 RIP: 419e09	 Bytes: 3
  %loadMem_419e09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e09 = call %struct.Memory* @routine_addq__rsi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e09)
  store %struct.Memory* %call_419e09, %struct.Memory** %MEMORY

  ; Code: movslq -0x3030(%rbp), %rsi	 RIP: 419e0c	 Bytes: 7
  %loadMem_419e0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e0c = call %struct.Memory* @routine_movslq_MINUS0x3030__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e0c)
  store %struct.Memory* %call_419e0c, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rsi, %rsi	 RIP: 419e13	 Bytes: 4
  %loadMem_419e13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e13 = call %struct.Memory* @routine_imulq__0x18___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e13)
  store %struct.Memory* %call_419e13, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rax	 RIP: 419e17	 Bytes: 3
  %loadMem_419e17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e17 = call %struct.Memory* @routine_addq__rsi___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e17)
  store %struct.Memory* %call_419e17, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rsi	 RIP: 419e1a	 Bytes: 3
  %loadMem_419e1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e1a = call %struct.Memory* @routine_movq___rax____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e1a)
  store %struct.Memory* %call_419e1a, %struct.Memory** %MEMORY

  ; Code: movq %rsi, (%rcx)	 RIP: 419e1d	 Bytes: 3
  %loadMem_419e1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e1d = call %struct.Memory* @routine_movq__rsi____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e1d)
  store %struct.Memory* %call_419e1d, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rsi	 RIP: 419e20	 Bytes: 4
  %loadMem_419e20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e20 = call %struct.Memory* @routine_movq_0x8__rax____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e20)
  store %struct.Memory* %call_419e20, %struct.Memory** %MEMORY

  ; Code: movq %rsi, 0x8(%rcx)	 RIP: 419e24	 Bytes: 4
  %loadMem_419e24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e24 = call %struct.Memory* @routine_movq__rsi__0x8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e24)
  store %struct.Memory* %call_419e24, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 419e28	 Bytes: 4
  %loadMem_419e28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e28 = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e28)
  store %struct.Memory* %call_419e28, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x10(%rcx)	 RIP: 419e2c	 Bytes: 4
  %loadMem_419e2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e2c = call %struct.Memory* @routine_movq__rax__0x10__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e2c)
  store %struct.Memory* %call_419e2c, %struct.Memory** %MEMORY

  ; Code: movl 0x886bc0, %edx	 RIP: 419e30	 Bytes: 7
  %loadMem_419e30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e30 = call %struct.Memory* @routine_movl_0x886bc0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e30)
  store %struct.Memory* %call_419e30, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x3034(%rbp)	 RIP: 419e37	 Bytes: 6
  %loadMem_419e37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e37 = call %struct.Memory* @routine_movl__edx__MINUS0x3034__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e37)
  store %struct.Memory* %call_419e37, %struct.Memory** %MEMORY

  ; Code: .L_419e3d:	 RIP: 419e3d	 Bytes: 0
  br label %block_.L_419e3d
block_.L_419e3d:

  ; Code: movl -0x3034(%rbp), %eax	 RIP: 419e3d	 Bytes: 6
  %loadMem_419e3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e3d = call %struct.Memory* @routine_movl_MINUS0x3034__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e3d)
  store %struct.Memory* %call_419e3d, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rcx	 RIP: 419e43	 Bytes: 8
  %loadMem_419e43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e43 = call %struct.Memory* @routine_movslq_0x886bc0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e43)
  store %struct.Memory* %call_419e43, %struct.Memory** %MEMORY

  ; Code: cmpl 0x86b8b0(,%rcx,4), %eax	 RIP: 419e4b	 Bytes: 7
  %loadMem_419e4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e4b = call %struct.Memory* @routine_cmpl_0x86b8b0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e4b)
  store %struct.Memory* %call_419e4b, %struct.Memory** %MEMORY

  ; Code: jge .L_419ed4	 RIP: 419e52	 Bytes: 6
  %loadMem_419e52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e52 = call %struct.Memory* @routine_jge_.L_419ed4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e52, i8* %BRANCH_TAKEN, i64 130, i64 6, i64 6)
  store %struct.Memory* %call_419e52, %struct.Memory** %MEMORY

  %loadBr_419e52 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419e52 = icmp eq i8 %loadBr_419e52, 1
  br i1 %cmpBr_419e52, label %block_.L_419ed4, label %block_419e58

block_419e58:
  ; Code: movq $0x63ae50, %rax	 RIP: 419e58	 Bytes: 10
  %loadMem_419e58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e58 = call %struct.Memory* @routine_movq__0x63ae50___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e58)
  store %struct.Memory* %call_419e58, %struct.Memory** %MEMORY

  ; Code: movl 0x886bc0, %ecx	 RIP: 419e62	 Bytes: 7
  %loadMem_419e62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e62 = call %struct.Memory* @routine_movl_0x886bc0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e62)
  store %struct.Memory* %call_419e62, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 419e69	 Bytes: 3
  %loadMem_419e69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e69 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e69)
  store %struct.Memory* %call_419e69, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 419e6c	 Bytes: 3
  %loadMem_419e6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e6c = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e6c)
  store %struct.Memory* %call_419e6c, %struct.Memory** %MEMORY

  ; Code: imulq $0x1c20, %rdx, %rdx	 RIP: 419e6f	 Bytes: 7
  %loadMem_419e6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e6f = call %struct.Memory* @routine_imulq__0x1c20___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e6f)
  store %struct.Memory* %call_419e6f, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 419e76	 Bytes: 3
  %loadMem_419e76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e76 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e76)
  store %struct.Memory* %call_419e76, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 419e79	 Bytes: 3
  %loadMem_419e79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e79 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e79)
  store %struct.Memory* %call_419e79, %struct.Memory** %MEMORY

  ; Code: movslq -0x3034(%rbp), %rdx	 RIP: 419e7c	 Bytes: 7
  %loadMem_419e7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e7c = call %struct.Memory* @routine_movslq_MINUS0x3034__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e7c)
  store %struct.Memory* %call_419e7c, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 419e83	 Bytes: 4
  %loadMem_419e83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e83 = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e83)
  store %struct.Memory* %call_419e83, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 419e87	 Bytes: 3
  %loadMem_419e87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e87 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e87)
  store %struct.Memory* %call_419e87, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rdx	 RIP: 419e8a	 Bytes: 8
  %loadMem_419e8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e8a = call %struct.Memory* @routine_movslq_0x886bc0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e8a)
  store %struct.Memory* %call_419e8a, %struct.Memory** %MEMORY

  ; Code: imulq $0x1c20, %rdx, %rdx	 RIP: 419e92	 Bytes: 7
  %loadMem_419e92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e92 = call %struct.Memory* @routine_imulq__0x1c20___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e92)
  store %struct.Memory* %call_419e92, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 419e99	 Bytes: 3
  %loadMem_419e99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e99 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e99)
  store %struct.Memory* %call_419e99, %struct.Memory** %MEMORY

  ; Code: movslq -0x3034(%rbp), %rdx	 RIP: 419e9c	 Bytes: 7
  %loadMem_419e9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e9c = call %struct.Memory* @routine_movslq_MINUS0x3034__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e9c)
  store %struct.Memory* %call_419e9c, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 419ea3	 Bytes: 4
  %loadMem_419ea3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ea3 = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ea3)
  store %struct.Memory* %call_419ea3, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 419ea7	 Bytes: 3
  %loadMem_419ea7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ea7 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ea7)
  store %struct.Memory* %call_419ea7, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdx	 RIP: 419eaa	 Bytes: 3
  %loadMem_419eaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419eaa = call %struct.Memory* @routine_movq___rax____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419eaa)
  store %struct.Memory* %call_419eaa, %struct.Memory** %MEMORY

  ; Code: movq %rdx, (%rsi)	 RIP: 419ead	 Bytes: 3
  %loadMem_419ead = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ead = call %struct.Memory* @routine_movq__rdx____rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ead)
  store %struct.Memory* %call_419ead, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rdx	 RIP: 419eb0	 Bytes: 4
  %loadMem_419eb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419eb0 = call %struct.Memory* @routine_movq_0x8__rax____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419eb0)
  store %struct.Memory* %call_419eb0, %struct.Memory** %MEMORY

  ; Code: movq %rdx, 0x8(%rsi)	 RIP: 419eb4	 Bytes: 4
  %loadMem_419eb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419eb4 = call %struct.Memory* @routine_movq__rdx__0x8__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419eb4)
  store %struct.Memory* %call_419eb4, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 419eb8	 Bytes: 4
  %loadMem_419eb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419eb8 = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419eb8)
  store %struct.Memory* %call_419eb8, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x10(%rsi)	 RIP: 419ebc	 Bytes: 4
  %loadMem_419ebc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ebc = call %struct.Memory* @routine_movq__rax__0x10__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ebc)
  store %struct.Memory* %call_419ebc, %struct.Memory** %MEMORY

  ; Code: movl -0x3034(%rbp), %eax	 RIP: 419ec0	 Bytes: 6
  %loadMem_419ec0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ec0 = call %struct.Memory* @routine_movl_MINUS0x3034__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ec0)
  store %struct.Memory* %call_419ec0, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 419ec6	 Bytes: 3
  %loadMem_419ec6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ec6 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ec6)
  store %struct.Memory* %call_419ec6, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3034(%rbp)	 RIP: 419ec9	 Bytes: 6
  %loadMem_419ec9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ec9 = call %struct.Memory* @routine_movl__eax__MINUS0x3034__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ec9)
  store %struct.Memory* %call_419ec9, %struct.Memory** %MEMORY

  ; Code: jmpq .L_419e3d	 RIP: 419ecf	 Bytes: 5
  %loadMem_419ecf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ecf = call %struct.Memory* @routine_jmpq_.L_419e3d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ecf, i64 -146, i64 5)
  store %struct.Memory* %call_419ecf, %struct.Memory** %MEMORY

  br label %block_.L_419e3d

  ; Code: .L_419ed4:	 RIP: 419ed4	 Bytes: 0
block_.L_419ed4:

  ; Code: movslq 0x886bc0, %rax	 RIP: 419ed4	 Bytes: 8
  %loadMem_419ed4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ed4 = call %struct.Memory* @routine_movslq_0x886bc0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ed4)
  store %struct.Memory* %call_419ed4, %struct.Memory** %MEMORY

  ; Code: movl 0x86b8b0(,%rax,4), %ecx	 RIP: 419edc	 Bytes: 7
  %loadMem_419edc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419edc = call %struct.Memory* @routine_movl_0x86b8b0___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419edc)
  store %struct.Memory* %call_419edc, %struct.Memory** %MEMORY

  ; Code: movl 0x886bc0, %edx	 RIP: 419ee3	 Bytes: 7
  %loadMem_419ee3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ee3 = call %struct.Memory* @routine_movl_0x886bc0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ee3)
  store %struct.Memory* %call_419ee3, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 419eea	 Bytes: 3
  %loadMem_419eea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419eea = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419eea)
  store %struct.Memory* %call_419eea, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rax	 RIP: 419eed	 Bytes: 3
  %loadMem_419eed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419eed = call %struct.Memory* @routine_movslq__edx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419eed)
  store %struct.Memory* %call_419eed, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x86b8b0(,%rax,4)	 RIP: 419ef0	 Bytes: 7
  %loadMem_419ef0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ef0 = call %struct.Memory* @routine_movl__ecx__0x86b8b0___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ef0)
  store %struct.Memory* %call_419ef0, %struct.Memory** %MEMORY

  ; Code: .L_419ef7:	 RIP: 419ef7	 Bytes: 0
  br label %block_.L_419ef7
block_.L_419ef7:

  ; Code: jmpq .L_419efc	 RIP: 419ef7	 Bytes: 5
  %loadMem_419ef7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ef7 = call %struct.Memory* @routine_jmpq_.L_419efc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ef7, i64 5, i64 5)
  store %struct.Memory* %call_419ef7, %struct.Memory** %MEMORY

  br label %block_.L_419efc

  ; Code: .L_419efc:	 RIP: 419efc	 Bytes: 0
block_.L_419efc:

  ; Code: jmpq .L_419f01	 RIP: 419efc	 Bytes: 5
  %loadMem_419efc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419efc = call %struct.Memory* @routine_jmpq_.L_419f01(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419efc, i64 5, i64 5)
  store %struct.Memory* %call_419efc, %struct.Memory** %MEMORY

  br label %block_.L_419f01

  ; Code: .L_419f01:	 RIP: 419f01	 Bytes: 0
block_.L_419f01:

  ; Code: movl -0x3038(%rbp), %eax	 RIP: 419f01	 Bytes: 6
  %loadMem_419f01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419f01 = call %struct.Memory* @routine_movl_MINUS0x3038__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419f01)
  store %struct.Memory* %call_419f01, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4054(%rbp), %eax	 RIP: 419f07	 Bytes: 6
  %loadMem_419f07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419f07 = call %struct.Memory* @routine_cmpl_MINUS0x4054__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419f07)
  store %struct.Memory* %call_419f07, %struct.Memory** %MEMORY

  ; Code: jl .L_419f44	 RIP: 419f0d	 Bytes: 6
  %loadMem_419f0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419f0d = call %struct.Memory* @routine_jl_.L_419f44(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419f0d, i8* %BRANCH_TAKEN, i64 55, i64 6, i64 6)
  store %struct.Memory* %call_419f0d, %struct.Memory** %MEMORY

  %loadBr_419f0d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419f0d = icmp eq i8 %loadBr_419f0d, 1
  br i1 %cmpBr_419f0d, label %block_.L_419f44, label %block_419f13

block_419f13:
  ; Code: cmpl $0x0, 0x866788	 RIP: 419f13	 Bytes: 8
  %loadMem_419f13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419f13 = call %struct.Memory* @routine_cmpl__0x0__0x866788(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419f13)
  store %struct.Memory* %call_419f13, %struct.Memory** %MEMORY

  ; Code: jne .L_419f44	 RIP: 419f1b	 Bytes: 6
  %loadMem_419f1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419f1b = call %struct.Memory* @routine_jne_.L_419f44(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419f1b, i8* %BRANCH_TAKEN, i64 41, i64 6, i64 6)
  store %struct.Memory* %call_419f1b, %struct.Memory** %MEMORY

  %loadBr_419f1b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419f1b = icmp eq i8 %loadBr_419f1b, 1
  br i1 %cmpBr_419f1b, label %block_.L_419f44, label %block_419f21

block_419f21:
  ; Code: leaq -0x3010(%rbp), %rax	 RIP: 419f21	 Bytes: 7
  %loadMem_419f21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419f21 = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419f21)
  store %struct.Memory* %call_419f21, %struct.Memory** %MEMORY

  ; Code: movl -0x3038(%rbp), %edi	 RIP: 419f28	 Bytes: 6
  %loadMem_419f28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419f28 = call %struct.Memory* @routine_movl_MINUS0x3038__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419f28)
  store %struct.Memory* %call_419f28, %struct.Memory** %MEMORY

  ; Code: movslq -0x3030(%rbp), %rcx	 RIP: 419f2e	 Bytes: 7
  %loadMem_419f2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419f2e = call %struct.Memory* @routine_movslq_MINUS0x3030__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419f2e)
  store %struct.Memory* %call_419f2e, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rcx, %rcx	 RIP: 419f35	 Bytes: 4
  %loadMem_419f35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419f35 = call %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419f35)
  store %struct.Memory* %call_419f35, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 419f39	 Bytes: 3
  %loadMem_419f39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419f39 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419f39)
  store %struct.Memory* %call_419f39, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 419f3c	 Bytes: 3
  %loadMem_419f3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419f3c = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419f3c)
  store %struct.Memory* %call_419f3c, %struct.Memory** %MEMORY

  ; Code: callq .post_fh_thinking	 RIP: 419f3f	 Bytes: 5
  %loadMem1_419f3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_419f3f = call %struct.Memory* @routine_callq_.post_fh_thinking(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_419f3f, i64 39505, i64 5, i64 5)
  store %struct.Memory* %call1_419f3f, %struct.Memory** %MEMORY

  %loadMem2_419f3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_419f3f = load i64, i64* %3
  %call2_419f3f = call %struct.Memory* @sub_423990.post_fh_thinking(%struct.State* %0, i64  %loadPC_419f3f, %struct.Memory* %loadMem2_419f3f)
  store %struct.Memory* %call2_419f3f, %struct.Memory** %MEMORY

  ; Code: .L_419f44:	 RIP: 419f44	 Bytes: 0
  br label %block_.L_419f44
block_.L_419f44:

  ; Code: jmpq .L_419f49	 RIP: 419f44	 Bytes: 5
  %loadMem_419f44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419f44 = call %struct.Memory* @routine_jmpq_.L_419f49(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419f44, i64 5, i64 5)
  store %struct.Memory* %call_419f44, %struct.Memory** %MEMORY

  br label %block_.L_419f49

  ; Code: .L_419f49:	 RIP: 419f49	 Bytes: 0
block_.L_419f49:

  ; Code: movl -0x3038(%rbp), %eax	 RIP: 419f49	 Bytes: 6
  %loadMem_419f49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419f49 = call %struct.Memory* @routine_movl_MINUS0x3038__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419f49)
  store %struct.Memory* %call_419f49, %struct.Memory** %MEMORY

  ; Code: cmpl 0x86450c, %eax	 RIP: 419f4f	 Bytes: 7
  %loadMem_419f4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419f4f = call %struct.Memory* @routine_cmpl_0x86450c___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419f4f)
  store %struct.Memory* %call_419f4f, %struct.Memory** %MEMORY

  ; Code: jle .L_419fb9	 RIP: 419f56	 Bytes: 6
  %loadMem_419f56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419f56 = call %struct.Memory* @routine_jle_.L_419fb9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419f56, i8* %BRANCH_TAKEN, i64 99, i64 6, i64 6)
  store %struct.Memory* %call_419f56, %struct.Memory** %MEMORY

  %loadBr_419f56 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419f56 = icmp eq i8 %loadBr_419f56, 1
  br i1 %cmpBr_419f56, label %block_.L_419fb9, label %block_419f5c

block_419f5c:
  ; Code: cmpl $0x0, 0x866788	 RIP: 419f5c	 Bytes: 8
  %loadMem_419f5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419f5c = call %struct.Memory* @routine_cmpl__0x0__0x866788(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419f5c)
  store %struct.Memory* %call_419f5c, %struct.Memory** %MEMORY

  ; Code: jne .L_419fb9	 RIP: 419f64	 Bytes: 6
  %loadMem_419f64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419f64 = call %struct.Memory* @routine_jne_.L_419fb9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419f64, i8* %BRANCH_TAKEN, i64 85, i64 6, i64 6)
  store %struct.Memory* %call_419f64, %struct.Memory** %MEMORY

  %loadBr_419f64 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419f64 = icmp eq i8 %loadBr_419f64, 1
  br i1 %cmpBr_419f64, label %block_.L_419fb9, label %block_419f6a

block_419f6a:
  ; Code: leaq -0x3010(%rbp), %rax	 RIP: 419f6a	 Bytes: 7
  %loadMem_419f6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419f6a = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419f6a)
  store %struct.Memory* %call_419f6a, %struct.Memory** %MEMORY

  ; Code: movl -0x3038(%rbp), %ecx	 RIP: 419f71	 Bytes: 6
  %loadMem_419f71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419f71 = call %struct.Memory* @routine_movl_MINUS0x3038__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419f71)
  store %struct.Memory* %call_419f71, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x86450c	 RIP: 419f77	 Bytes: 7
  %loadMem_419f77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419f77 = call %struct.Memory* @routine_movl__ecx__0x86450c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419f77)
  store %struct.Memory* %call_419f77, %struct.Memory** %MEMORY

  ; Code: movl -0x3030(%rbp), %ecx	 RIP: 419f7e	 Bytes: 6
  %loadMem_419f7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419f7e = call %struct.Memory* @routine_movl_MINUS0x3030__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419f7e)
  store %struct.Memory* %call_419f7e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8825f8	 RIP: 419f84	 Bytes: 7
  %loadMem_419f84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419f84 = call %struct.Memory* @routine_movl__ecx__0x8825f8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419f84)
  store %struct.Memory* %call_419f84, %struct.Memory** %MEMORY

  ; Code: movslq -0x3030(%rbp), %rdx	 RIP: 419f8b	 Bytes: 7
  %loadMem_419f8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419f8b = call %struct.Memory* @routine_movslq_MINUS0x3030__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419f8b)
  store %struct.Memory* %call_419f8b, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 419f92	 Bytes: 4
  %loadMem_419f92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419f92 = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419f92)
  store %struct.Memory* %call_419f92, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 419f96	 Bytes: 3
  %loadMem_419f96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419f96 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419f96)
  store %struct.Memory* %call_419f96, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdx	 RIP: 419f99	 Bytes: 3
  %loadMem_419f99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419f99 = call %struct.Memory* @routine_movq___rax____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419f99)
  store %struct.Memory* %call_419f99, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x3028(%rbp)	 RIP: 419f9c	 Bytes: 7
  %loadMem_419f9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419f9c = call %struct.Memory* @routine_movq__rdx__MINUS0x3028__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419f9c)
  store %struct.Memory* %call_419f9c, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rdx	 RIP: 419fa3	 Bytes: 4
  %loadMem_419fa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419fa3 = call %struct.Memory* @routine_movq_0x8__rax____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419fa3)
  store %struct.Memory* %call_419fa3, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x3020(%rbp)	 RIP: 419fa7	 Bytes: 7
  %loadMem_419fa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419fa7 = call %struct.Memory* @routine_movq__rdx__MINUS0x3020__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419fa7)
  store %struct.Memory* %call_419fa7, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 419fae	 Bytes: 4
  %loadMem_419fae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419fae = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419fae)
  store %struct.Memory* %call_419fae, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x3018(%rbp)	 RIP: 419fb2	 Bytes: 7
  %loadMem_419fb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419fb2 = call %struct.Memory* @routine_movq__rax__MINUS0x3018__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419fb2)
  store %struct.Memory* %call_419fb2, %struct.Memory** %MEMORY

  ; Code: .L_419fb9:	 RIP: 419fb9	 Bytes: 0
  br label %block_.L_419fb9
block_.L_419fb9:

  ; Code: cmpl $0x0, 0x866788	 RIP: 419fb9	 Bytes: 8
  %loadMem_419fb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419fb9 = call %struct.Memory* @routine_cmpl__0x0__0x866788(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419fb9)
  store %struct.Memory* %call_419fb9, %struct.Memory** %MEMORY

  ; Code: je .L_419ff5	 RIP: 419fc1	 Bytes: 6
  %loadMem_419fc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419fc1 = call %struct.Memory* @routine_je_.L_419ff5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419fc1, i8* %BRANCH_TAKEN, i64 52, i64 6, i64 6)
  store %struct.Memory* %call_419fc1, %struct.Memory** %MEMORY

  %loadBr_419fc1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419fc1 = icmp eq i8 %loadBr_419fc1, 1
  br i1 %cmpBr_419fc1, label %block_.L_419ff5, label %block_419fc7

block_419fc7:
  ; Code: cmpl $0xfff0bdc0, 0x86450c	 RIP: 419fc7	 Bytes: 11
  %loadMem_419fc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419fc7 = call %struct.Memory* @routine_cmpl__0xfff0bdc0__0x86450c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419fc7)
  store %struct.Memory* %call_419fc7, %struct.Memory** %MEMORY

  ; Code: jne .L_419ff5	 RIP: 419fd2	 Bytes: 6
  %loadMem_419fd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419fd2 = call %struct.Memory* @routine_jne_.L_419ff5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419fd2, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_419fd2, %struct.Memory** %MEMORY

  %loadBr_419fd2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419fd2 = icmp eq i8 %loadBr_419fd2, 1
  br i1 %cmpBr_419fd2, label %block_.L_419ff5, label %block_419fd8

block_419fd8:
  ; Code: cmpl $0x0, -0x4044(%rbp)	 RIP: 419fd8	 Bytes: 7
  %loadMem_419fd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419fd8 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x4044__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419fd8)
  store %struct.Memory* %call_419fd8, %struct.Memory** %MEMORY

  ; Code: je .L_419ff0	 RIP: 419fdf	 Bytes: 6
  %loadMem_419fdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419fdf = call %struct.Memory* @routine_je_.L_419ff0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419fdf, i8* %BRANCH_TAKEN, i64 17, i64 6, i64 6)
  store %struct.Memory* %call_419fdf, %struct.Memory** %MEMORY

  %loadBr_419fdf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419fdf = icmp eq i8 %loadBr_419fdf, 1
  br i1 %cmpBr_419fdf, label %block_.L_419ff0, label %block_419fe5

block_419fe5:
  ; Code: movl $0x1, 0x8661dc	 RIP: 419fe5	 Bytes: 11
  %loadMem_419fe5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419fe5 = call %struct.Memory* @routine_movl__0x1__0x8661dc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419fe5)
  store %struct.Memory* %call_419fe5, %struct.Memory** %MEMORY

  ; Code: .L_419ff0:	 RIP: 419ff0	 Bytes: 0
  br label %block_.L_419ff0
block_.L_419ff0:

  ; Code: jmpq .L_419ff5	 RIP: 419ff0	 Bytes: 5
  %loadMem_419ff0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ff0 = call %struct.Memory* @routine_jmpq_.L_419ff5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ff0, i64 5, i64 5)
  store %struct.Memory* %call_419ff0, %struct.Memory** %MEMORY

  br label %block_.L_419ff5

  ; Code: .L_419ff5:	 RIP: 419ff5	 Bytes: 0
block_.L_419ff5:

  ; Code: movl $0x0, -0x4044(%rbp)	 RIP: 419ff5	 Bytes: 10
  %loadMem_419ff5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ff5 = call %struct.Memory* @routine_movl__0x0__MINUS0x4044__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ff5)
  store %struct.Memory* %call_419ff5, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x4048(%rbp)	 RIP: 419fff	 Bytes: 10
  %loadMem_419fff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419fff = call %struct.Memory* @routine_movl__0x1__MINUS0x4048__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419fff)
  store %struct.Memory* %call_419fff, %struct.Memory** %MEMORY

  ; Code: .L_41a009:	 RIP: 41a009	 Bytes: 0
  br label %block_.L_41a009
block_.L_41a009:

  ; Code: leaq -0x3010(%rbp), %rdi	 RIP: 41a009	 Bytes: 7
  %loadMem_41a009 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a009 = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a009)
  store %struct.Memory* %call_41a009, %struct.Memory** %MEMORY

  ; Code: movl -0x3030(%rbp), %esi	 RIP: 41a010	 Bytes: 6
  %loadMem_41a010 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a010 = call %struct.Memory* @routine_movl_MINUS0x3030__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a010)
  store %struct.Memory* %call_41a010, %struct.Memory** %MEMORY

  ; Code: callq .unmake	 RIP: 41a016	 Bytes: 5
  %loadMem1_41a016 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41a016 = call %struct.Memory* @routine_callq_.unmake(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41a016, i64 -55414, i64 5, i64 5)
  store %struct.Memory* %call1_41a016, %struct.Memory** %MEMORY

  %loadMem2_41a016 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41a016 = load i64, i64* %3
  %call2_41a016 = call %struct.Memory* @sub_40c7a0.unmake(%struct.State* %0, i64  %loadPC_41a016, %struct.Memory* %loadMem2_41a016)
  store %struct.Memory* %call2_41a016, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x866788	 RIP: 41a01b	 Bytes: 8
  %loadMem_41a01b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a01b = call %struct.Memory* @routine_cmpl__0x0__0x866788(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a01b)
  store %struct.Memory* %call_41a01b, %struct.Memory** %MEMORY

  ; Code: je .L_41a055	 RIP: 41a023	 Bytes: 6
  %loadMem_41a023 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a023 = call %struct.Memory* @routine_je_.L_41a055(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a023, i8* %BRANCH_TAKEN, i64 50, i64 6, i64 6)
  store %struct.Memory* %call_41a023, %struct.Memory** %MEMORY

  %loadBr_41a023 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a023 = icmp eq i8 %loadBr_41a023, 1
  br i1 %cmpBr_41a023, label %block_.L_41a055, label %block_41a029

block_41a029:
  ; Code: movq -0x3028(%rbp), %rax	 RIP: 41a029	 Bytes: 7
  %loadMem_41a029 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a029 = call %struct.Memory* @routine_movq_MINUS0x3028__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a029)
  store %struct.Memory* %call_41a029, %struct.Memory** %MEMORY

  ; Code: movq -0x4090(%rbp), %rcx	 RIP: 41a030	 Bytes: 7
  %loadMem_41a030 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a030 = call %struct.Memory* @routine_movq_MINUS0x4090__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a030)
  store %struct.Memory* %call_41a030, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rcx)	 RIP: 41a037	 Bytes: 3
  %loadMem_41a037 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a037 = call %struct.Memory* @routine_movq__rax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a037)
  store %struct.Memory* %call_41a037, %struct.Memory** %MEMORY

  ; Code: movq -0x3020(%rbp), %rax	 RIP: 41a03a	 Bytes: 7
  %loadMem_41a03a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a03a = call %struct.Memory* @routine_movq_MINUS0x3020__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a03a)
  store %struct.Memory* %call_41a03a, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x8(%rcx)	 RIP: 41a041	 Bytes: 4
  %loadMem_41a041 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a041 = call %struct.Memory* @routine_movq__rax__0x8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a041)
  store %struct.Memory* %call_41a041, %struct.Memory** %MEMORY

  ; Code: movq -0x3018(%rbp), %rax	 RIP: 41a045	 Bytes: 7
  %loadMem_41a045 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a045 = call %struct.Memory* @routine_movq_MINUS0x3018__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a045)
  store %struct.Memory* %call_41a045, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x10(%rcx)	 RIP: 41a04c	 Bytes: 4
  %loadMem_41a04c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a04c = call %struct.Memory* @routine_movq__rax__0x10__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a04c)
  store %struct.Memory* %call_41a04c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41a92e	 RIP: 41a050	 Bytes: 5
  %loadMem_41a050 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a050 = call %struct.Memory* @routine_jmpq_.L_41a92e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a050, i64 2270, i64 5)
  store %struct.Memory* %call_41a050, %struct.Memory** %MEMORY

  br label %block_.L_41a92e

  ; Code: .L_41a055:	 RIP: 41a055	 Bytes: 0
block_.L_41a055:

  ; Code: movl -0x3038(%rbp), %eax	 RIP: 41a055	 Bytes: 6
  %loadMem_41a055 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a055 = call %struct.Memory* @routine_movl_MINUS0x3038__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a055)
  store %struct.Memory* %call_41a055, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4050(%rbp), %eax	 RIP: 41a05b	 Bytes: 6
  %loadMem_41a05b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a05b = call %struct.Memory* @routine_cmpl_MINUS0x4050__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a05b)
  store %struct.Memory* %call_41a05b, %struct.Memory** %MEMORY

  ; Code: jle .L_41a79c	 RIP: 41a061	 Bytes: 6
  %loadMem_41a061 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a061 = call %struct.Memory* @routine_jle_.L_41a79c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a061, i8* %BRANCH_TAKEN, i64 1851, i64 6, i64 6)
  store %struct.Memory* %call_41a061, %struct.Memory** %MEMORY

  %loadBr_41a061 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a061 = icmp eq i8 %loadBr_41a061, 1
  br i1 %cmpBr_41a061, label %block_.L_41a79c, label %block_41a067

block_41a067:
  ; Code: cmpl $0x0, -0x4048(%rbp)	 RIP: 41a067	 Bytes: 7
  %loadMem_41a067 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a067 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x4048__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a067)
  store %struct.Memory* %call_41a067, %struct.Memory** %MEMORY

  ; Code: je .L_41a79c	 RIP: 41a06e	 Bytes: 6
  %loadMem_41a06e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a06e = call %struct.Memory* @routine_je_.L_41a79c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a06e, i8* %BRANCH_TAKEN, i64 1838, i64 6, i64 6)
  store %struct.Memory* %call_41a06e, %struct.Memory** %MEMORY

  %loadBr_41a06e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a06e = icmp eq i8 %loadBr_41a06e, 1
  br i1 %cmpBr_41a06e, label %block_.L_41a79c, label %block_41a074

block_41a074:
  ; Code: movq $0x884b20, %rax	 RIP: 41a074	 Bytes: 10
  %loadMem_41a074 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a074 = call %struct.Memory* @routine_movq__0x884b20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a074)
  store %struct.Memory* %call_41a074, %struct.Memory** %MEMORY

  ; Code: leaq -0x3010(%rbp), %rcx	 RIP: 41a07e	 Bytes: 7
  %loadMem_41a07e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a07e = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a07e)
  store %struct.Memory* %call_41a07e, %struct.Memory** %MEMORY

  ; Code: movslq -0x3030(%rbp), %rdx	 RIP: 41a085	 Bytes: 7
  %loadMem_41a085 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a085 = call %struct.Memory* @routine_movslq_MINUS0x3030__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a085)
  store %struct.Memory* %call_41a085, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 41a08c	 Bytes: 4
  %loadMem_41a08c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a08c = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a08c)
  store %struct.Memory* %call_41a08c, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 41a090	 Bytes: 3
  %loadMem_41a090 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a090 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a090)
  store %struct.Memory* %call_41a090, %struct.Memory** %MEMORY

  ; Code: movl (%rcx), %esi	 RIP: 41a093	 Bytes: 2
  %loadMem_41a093 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a093 = call %struct.Memory* @routine_movl___rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a093)
  store %struct.Memory* %call_41a093, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rcx	 RIP: 41a095	 Bytes: 8
  %loadMem_41a095 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a095 = call %struct.Memory* @routine_movslq_0x886bc0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a095)
  store %struct.Memory* %call_41a095, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rcx, %rcx	 RIP: 41a09d	 Bytes: 4
  %loadMem_41a09d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a09d = call %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a09d)
  store %struct.Memory* %call_41a09d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 41a0a1	 Bytes: 3
  %loadMem_41a0a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a0a1 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a0a1)
  store %struct.Memory* %call_41a0a1, %struct.Memory** %MEMORY

  ; Code: cmpl (%rax), %esi	 RIP: 41a0a4	 Bytes: 2
  %loadMem_41a0a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a0a4 = call %struct.Memory* @routine_cmpl___rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a0a4)
  store %struct.Memory* %call_41a0a4, %struct.Memory** %MEMORY

  ; Code: jne .L_41a13e	 RIP: 41a0a6	 Bytes: 6
  %loadMem_41a0a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a0a6 = call %struct.Memory* @routine_jne_.L_41a13e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a0a6, i8* %BRANCH_TAKEN, i64 152, i64 6, i64 6)
  store %struct.Memory* %call_41a0a6, %struct.Memory** %MEMORY

  %loadBr_41a0a6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a0a6 = icmp eq i8 %loadBr_41a0a6, 1
  br i1 %cmpBr_41a0a6, label %block_.L_41a13e, label %block_41a0ac

block_41a0ac:
  ; Code: movq $0x884b20, %rax	 RIP: 41a0ac	 Bytes: 10
  %loadMem_41a0ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a0ac = call %struct.Memory* @routine_movq__0x884b20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a0ac)
  store %struct.Memory* %call_41a0ac, %struct.Memory** %MEMORY

  ; Code: leaq -0x3010(%rbp), %rcx	 RIP: 41a0b6	 Bytes: 7
  %loadMem_41a0b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a0b6 = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a0b6)
  store %struct.Memory* %call_41a0b6, %struct.Memory** %MEMORY

  ; Code: movslq -0x3030(%rbp), %rdx	 RIP: 41a0bd	 Bytes: 7
  %loadMem_41a0bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a0bd = call %struct.Memory* @routine_movslq_MINUS0x3030__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a0bd)
  store %struct.Memory* %call_41a0bd, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 41a0c4	 Bytes: 4
  %loadMem_41a0c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a0c4 = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a0c4)
  store %struct.Memory* %call_41a0c4, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 41a0c8	 Bytes: 3
  %loadMem_41a0c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a0c8 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a0c8)
  store %struct.Memory* %call_41a0c8, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rcx), %esi	 RIP: 41a0cb	 Bytes: 3
  %loadMem_41a0cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a0cb = call %struct.Memory* @routine_movl_0x4__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a0cb)
  store %struct.Memory* %call_41a0cb, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rcx	 RIP: 41a0ce	 Bytes: 8
  %loadMem_41a0ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a0ce = call %struct.Memory* @routine_movslq_0x886bc0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a0ce)
  store %struct.Memory* %call_41a0ce, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rcx, %rcx	 RIP: 41a0d6	 Bytes: 4
  %loadMem_41a0d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a0d6 = call %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a0d6)
  store %struct.Memory* %call_41a0d6, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 41a0da	 Bytes: 3
  %loadMem_41a0da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a0da = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a0da)
  store %struct.Memory* %call_41a0da, %struct.Memory** %MEMORY

  ; Code: cmpl 0x4(%rax), %esi	 RIP: 41a0dd	 Bytes: 3
  %loadMem_41a0dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a0dd = call %struct.Memory* @routine_cmpl_0x4__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a0dd)
  store %struct.Memory* %call_41a0dd, %struct.Memory** %MEMORY

  ; Code: jne .L_41a13e	 RIP: 41a0e0	 Bytes: 6
  %loadMem_41a0e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a0e0 = call %struct.Memory* @routine_jne_.L_41a13e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a0e0, i8* %BRANCH_TAKEN, i64 94, i64 6, i64 6)
  store %struct.Memory* %call_41a0e0, %struct.Memory** %MEMORY

  %loadBr_41a0e0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a0e0 = icmp eq i8 %loadBr_41a0e0, 1
  br i1 %cmpBr_41a0e0, label %block_.L_41a13e, label %block_41a0e6

block_41a0e6:
  ; Code: movq $0x884b20, %rax	 RIP: 41a0e6	 Bytes: 10
  %loadMem_41a0e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a0e6 = call %struct.Memory* @routine_movq__0x884b20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a0e6)
  store %struct.Memory* %call_41a0e6, %struct.Memory** %MEMORY

  ; Code: leaq -0x3010(%rbp), %rcx	 RIP: 41a0f0	 Bytes: 7
  %loadMem_41a0f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a0f0 = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a0f0)
  store %struct.Memory* %call_41a0f0, %struct.Memory** %MEMORY

  ; Code: movslq -0x3030(%rbp), %rdx	 RIP: 41a0f7	 Bytes: 7
  %loadMem_41a0f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a0f7 = call %struct.Memory* @routine_movslq_MINUS0x3030__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a0f7)
  store %struct.Memory* %call_41a0f7, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 41a0fe	 Bytes: 4
  %loadMem_41a0fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a0fe = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a0fe)
  store %struct.Memory* %call_41a0fe, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 41a102	 Bytes: 3
  %loadMem_41a102 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a102 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a102)
  store %struct.Memory* %call_41a102, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rcx), %esi	 RIP: 41a105	 Bytes: 3
  %loadMem_41a105 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a105 = call %struct.Memory* @routine_movl_0xc__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a105)
  store %struct.Memory* %call_41a105, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rcx	 RIP: 41a108	 Bytes: 8
  %loadMem_41a108 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a108 = call %struct.Memory* @routine_movslq_0x886bc0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a108)
  store %struct.Memory* %call_41a108, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rcx, %rcx	 RIP: 41a110	 Bytes: 4
  %loadMem_41a110 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a110 = call %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a110)
  store %struct.Memory* %call_41a110, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 41a114	 Bytes: 3
  %loadMem_41a114 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a114 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a114)
  store %struct.Memory* %call_41a114, %struct.Memory** %MEMORY

  ; Code: cmpl 0xc(%rax), %esi	 RIP: 41a117	 Bytes: 3
  %loadMem_41a117 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a117 = call %struct.Memory* @routine_cmpl_0xc__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a117)
  store %struct.Memory* %call_41a117, %struct.Memory** %MEMORY

  ; Code: jne .L_41a13e	 RIP: 41a11a	 Bytes: 6
  %loadMem_41a11a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a11a = call %struct.Memory* @routine_jne_.L_41a13e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a11a, i8* %BRANCH_TAKEN, i64 36, i64 6, i64 6)
  store %struct.Memory* %call_41a11a, %struct.Memory** %MEMORY

  %loadBr_41a11a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a11a = icmp eq i8 %loadBr_41a11a, 1
  br i1 %cmpBr_41a11a, label %block_.L_41a13e, label %block_41a120

block_41a120:
  ; Code: movslq 0x886bc0, %rax	 RIP: 41a120	 Bytes: 8
  %loadMem_41a120 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a120 = call %struct.Memory* @routine_movslq_0x886bc0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a120)
  store %struct.Memory* %call_41a120, %struct.Memory** %MEMORY

  ; Code: movl 0x62e530(,%rax,4), %ecx	 RIP: 41a128	 Bytes: 7
  %loadMem_41a128 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a128 = call %struct.Memory* @routine_movl_0x62e530___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a128)
  store %struct.Memory* %call_41a128, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 41a12f	 Bytes: 3
  %loadMem_41a12f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a12f = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a12f)
  store %struct.Memory* %call_41a12f, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x62e530(,%rax,4)	 RIP: 41a132	 Bytes: 7
  %loadMem_41a132 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a132 = call %struct.Memory* @routine_movl__ecx__0x62e530___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a132)
  store %struct.Memory* %call_41a132, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41a563	 RIP: 41a139	 Bytes: 5
  %loadMem_41a139 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a139 = call %struct.Memory* @routine_jmpq_.L_41a563(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a139, i64 1066, i64 5)
  store %struct.Memory* %call_41a139, %struct.Memory** %MEMORY

  br label %block_.L_41a563

  ; Code: .L_41a13e:	 RIP: 41a13e	 Bytes: 0
block_.L_41a13e:

  ; Code: movq $0x639220, %rax	 RIP: 41a13e	 Bytes: 10
  %loadMem_41a13e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a13e = call %struct.Memory* @routine_movq__0x639220___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a13e)
  store %struct.Memory* %call_41a13e, %struct.Memory** %MEMORY

  ; Code: leaq -0x3010(%rbp), %rcx	 RIP: 41a148	 Bytes: 7
  %loadMem_41a148 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a148 = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a148)
  store %struct.Memory* %call_41a148, %struct.Memory** %MEMORY

  ; Code: movslq -0x3030(%rbp), %rdx	 RIP: 41a14f	 Bytes: 7
  %loadMem_41a14f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a14f = call %struct.Memory* @routine_movslq_MINUS0x3030__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a14f)
  store %struct.Memory* %call_41a14f, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 41a156	 Bytes: 4
  %loadMem_41a156 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a156 = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a156)
  store %struct.Memory* %call_41a156, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 41a15a	 Bytes: 3
  %loadMem_41a15a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a15a = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a15a)
  store %struct.Memory* %call_41a15a, %struct.Memory** %MEMORY

  ; Code: movl (%rcx), %esi	 RIP: 41a15d	 Bytes: 2
  %loadMem_41a15d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a15d = call %struct.Memory* @routine_movl___rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a15d)
  store %struct.Memory* %call_41a15d, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rcx	 RIP: 41a15f	 Bytes: 8
  %loadMem_41a15f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a15f = call %struct.Memory* @routine_movslq_0x886bc0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a15f)
  store %struct.Memory* %call_41a15f, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rcx, %rcx	 RIP: 41a167	 Bytes: 4
  %loadMem_41a167 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a167 = call %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a167)
  store %struct.Memory* %call_41a167, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 41a16b	 Bytes: 3
  %loadMem_41a16b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a16b = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a16b)
  store %struct.Memory* %call_41a16b, %struct.Memory** %MEMORY

  ; Code: cmpl (%rax), %esi	 RIP: 41a16e	 Bytes: 2
  %loadMem_41a16e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a16e = call %struct.Memory* @routine_cmpl___rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a16e)
  store %struct.Memory* %call_41a16e, %struct.Memory** %MEMORY

  ; Code: jne .L_41a320	 RIP: 41a170	 Bytes: 6
  %loadMem_41a170 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a170 = call %struct.Memory* @routine_jne_.L_41a320(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a170, i8* %BRANCH_TAKEN, i64 432, i64 6, i64 6)
  store %struct.Memory* %call_41a170, %struct.Memory** %MEMORY

  %loadBr_41a170 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a170 = icmp eq i8 %loadBr_41a170, 1
  br i1 %cmpBr_41a170, label %block_.L_41a320, label %block_41a176

block_41a176:
  ; Code: movq $0x639220, %rax	 RIP: 41a176	 Bytes: 10
  %loadMem_41a176 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a176 = call %struct.Memory* @routine_movq__0x639220___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a176)
  store %struct.Memory* %call_41a176, %struct.Memory** %MEMORY

  ; Code: leaq -0x3010(%rbp), %rcx	 RIP: 41a180	 Bytes: 7
  %loadMem_41a180 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a180 = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a180)
  store %struct.Memory* %call_41a180, %struct.Memory** %MEMORY

  ; Code: movslq -0x3030(%rbp), %rdx	 RIP: 41a187	 Bytes: 7
  %loadMem_41a187 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a187 = call %struct.Memory* @routine_movslq_MINUS0x3030__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a187)
  store %struct.Memory* %call_41a187, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 41a18e	 Bytes: 4
  %loadMem_41a18e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a18e = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a18e)
  store %struct.Memory* %call_41a18e, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 41a192	 Bytes: 3
  %loadMem_41a192 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a192 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a192)
  store %struct.Memory* %call_41a192, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rcx), %esi	 RIP: 41a195	 Bytes: 3
  %loadMem_41a195 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a195 = call %struct.Memory* @routine_movl_0x4__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a195)
  store %struct.Memory* %call_41a195, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rcx	 RIP: 41a198	 Bytes: 8
  %loadMem_41a198 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a198 = call %struct.Memory* @routine_movslq_0x886bc0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a198)
  store %struct.Memory* %call_41a198, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rcx, %rcx	 RIP: 41a1a0	 Bytes: 4
  %loadMem_41a1a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a1a0 = call %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a1a0)
  store %struct.Memory* %call_41a1a0, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 41a1a4	 Bytes: 3
  %loadMem_41a1a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a1a4 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a1a4)
  store %struct.Memory* %call_41a1a4, %struct.Memory** %MEMORY

  ; Code: cmpl 0x4(%rax), %esi	 RIP: 41a1a7	 Bytes: 3
  %loadMem_41a1a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a1a7 = call %struct.Memory* @routine_cmpl_0x4__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a1a7)
  store %struct.Memory* %call_41a1a7, %struct.Memory** %MEMORY

  ; Code: jne .L_41a320	 RIP: 41a1aa	 Bytes: 6
  %loadMem_41a1aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a1aa = call %struct.Memory* @routine_jne_.L_41a320(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a1aa, i8* %BRANCH_TAKEN, i64 374, i64 6, i64 6)
  store %struct.Memory* %call_41a1aa, %struct.Memory** %MEMORY

  %loadBr_41a1aa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a1aa = icmp eq i8 %loadBr_41a1aa, 1
  br i1 %cmpBr_41a1aa, label %block_.L_41a320, label %block_41a1b0

block_41a1b0:
  ; Code: movq $0x639220, %rax	 RIP: 41a1b0	 Bytes: 10
  %loadMem_41a1b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a1b0 = call %struct.Memory* @routine_movq__0x639220___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a1b0)
  store %struct.Memory* %call_41a1b0, %struct.Memory** %MEMORY

  ; Code: leaq -0x3010(%rbp), %rcx	 RIP: 41a1ba	 Bytes: 7
  %loadMem_41a1ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a1ba = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a1ba)
  store %struct.Memory* %call_41a1ba, %struct.Memory** %MEMORY

  ; Code: movslq -0x3030(%rbp), %rdx	 RIP: 41a1c1	 Bytes: 7
  %loadMem_41a1c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a1c1 = call %struct.Memory* @routine_movslq_MINUS0x3030__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a1c1)
  store %struct.Memory* %call_41a1c1, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 41a1c8	 Bytes: 4
  %loadMem_41a1c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a1c8 = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a1c8)
  store %struct.Memory* %call_41a1c8, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 41a1cc	 Bytes: 3
  %loadMem_41a1cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a1cc = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a1cc)
  store %struct.Memory* %call_41a1cc, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rcx), %esi	 RIP: 41a1cf	 Bytes: 3
  %loadMem_41a1cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a1cf = call %struct.Memory* @routine_movl_0xc__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a1cf)
  store %struct.Memory* %call_41a1cf, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rcx	 RIP: 41a1d2	 Bytes: 8
  %loadMem_41a1d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a1d2 = call %struct.Memory* @routine_movslq_0x886bc0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a1d2)
  store %struct.Memory* %call_41a1d2, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rcx, %rcx	 RIP: 41a1da	 Bytes: 4
  %loadMem_41a1da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a1da = call %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a1da)
  store %struct.Memory* %call_41a1da, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 41a1de	 Bytes: 3
  %loadMem_41a1de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a1de = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a1de)
  store %struct.Memory* %call_41a1de, %struct.Memory** %MEMORY

  ; Code: cmpl 0xc(%rax), %esi	 RIP: 41a1e1	 Bytes: 3
  %loadMem_41a1e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a1e1 = call %struct.Memory* @routine_cmpl_0xc__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a1e1)
  store %struct.Memory* %call_41a1e1, %struct.Memory** %MEMORY

  ; Code: jne .L_41a320	 RIP: 41a1e4	 Bytes: 6
  %loadMem_41a1e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a1e4 = call %struct.Memory* @routine_jne_.L_41a320(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a1e4, i8* %BRANCH_TAKEN, i64 316, i64 6, i64 6)
  store %struct.Memory* %call_41a1e4, %struct.Memory** %MEMORY

  %loadBr_41a1e4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a1e4 = icmp eq i8 %loadBr_41a1e4, 1
  br i1 %cmpBr_41a1e4, label %block_.L_41a320, label %block_41a1ea

block_41a1ea:
  ; Code: movslq 0x886bc0, %rax	 RIP: 41a1ea	 Bytes: 8
  %loadMem_41a1ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a1ea = call %struct.Memory* @routine_movslq_0x886bc0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a1ea)
  store %struct.Memory* %call_41a1ea, %struct.Memory** %MEMORY

  ; Code: movl 0x638c60(,%rax,4), %ecx	 RIP: 41a1f2	 Bytes: 7
  %loadMem_41a1f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a1f2 = call %struct.Memory* @routine_movl_0x638c60___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a1f2)
  store %struct.Memory* %call_41a1f2, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 41a1f9	 Bytes: 3
  %loadMem_41a1f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a1f9 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a1f9)
  store %struct.Memory* %call_41a1f9, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x638c60(,%rax,4)	 RIP: 41a1fc	 Bytes: 7
  %loadMem_41a1fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a1fc = call %struct.Memory* @routine_movl__ecx__0x638c60___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a1fc)
  store %struct.Memory* %call_41a1fc, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rax	 RIP: 41a203	 Bytes: 8
  %loadMem_41a203 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a203 = call %struct.Memory* @routine_movslq_0x886bc0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a203)
  store %struct.Memory* %call_41a203, %struct.Memory** %MEMORY

  ; Code: movl 0x638c60(,%rax,4), %ecx	 RIP: 41a20b	 Bytes: 7
  %loadMem_41a20b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a20b = call %struct.Memory* @routine_movl_0x638c60___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a20b)
  store %struct.Memory* %call_41a20b, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rax	 RIP: 41a212	 Bytes: 8
  %loadMem_41a212 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a212 = call %struct.Memory* @routine_movslq_0x886bc0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a212)
  store %struct.Memory* %call_41a212, %struct.Memory** %MEMORY

  ; Code: cmpl 0x62e530(,%rax,4), %ecx	 RIP: 41a21a	 Bytes: 7
  %loadMem_41a21a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a21a = call %struct.Memory* @routine_cmpl_0x62e530___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a21a)
  store %struct.Memory* %call_41a21a, %struct.Memory** %MEMORY

  ; Code: jle .L_41a31b	 RIP: 41a221	 Bytes: 6
  %loadMem_41a221 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a221 = call %struct.Memory* @routine_jle_.L_41a31b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a221, i8* %BRANCH_TAKEN, i64 250, i64 6, i64 6)
  store %struct.Memory* %call_41a221, %struct.Memory** %MEMORY

  %loadBr_41a221 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a221 = icmp eq i8 %loadBr_41a221, 1
  br i1 %cmpBr_41a221, label %block_.L_41a31b, label %block_41a227

block_41a227:
  ; Code: movq $0x639220, %rax	 RIP: 41a227	 Bytes: 10
  %loadMem_41a227 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a227 = call %struct.Memory* @routine_movq__0x639220___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a227)
  store %struct.Memory* %call_41a227, %struct.Memory** %MEMORY

  ; Code: movq $0x884b20, %rcx	 RIP: 41a231	 Bytes: 10
  %loadMem_41a231 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a231 = call %struct.Memory* @routine_movq__0x884b20___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a231)
  store %struct.Memory* %call_41a231, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rdx	 RIP: 41a23b	 Bytes: 8
  %loadMem_41a23b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a23b = call %struct.Memory* @routine_movslq_0x886bc0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a23b)
  store %struct.Memory* %call_41a23b, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 41a243	 Bytes: 4
  %loadMem_41a243 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a243 = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a243)
  store %struct.Memory* %call_41a243, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rsi	 RIP: 41a247	 Bytes: 3
  %loadMem_41a247 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a247 = call %struct.Memory* @routine_movq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a247)
  store %struct.Memory* %call_41a247, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 41a24a	 Bytes: 3
  %loadMem_41a24a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a24a = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a24a)
  store %struct.Memory* %call_41a24a, %struct.Memory** %MEMORY

  ; Code: movq (%rsi), %rdx	 RIP: 41a24d	 Bytes: 3
  %loadMem_41a24d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a24d = call %struct.Memory* @routine_movq___rsi____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a24d)
  store %struct.Memory* %call_41a24d, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x4070(%rbp)	 RIP: 41a250	 Bytes: 7
  %loadMem_41a250 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a250 = call %struct.Memory* @routine_movq__rdx__MINUS0x4070__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a250)
  store %struct.Memory* %call_41a250, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rsi), %rdx	 RIP: 41a257	 Bytes: 4
  %loadMem_41a257 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a257 = call %struct.Memory* @routine_movq_0x8__rsi____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a257)
  store %struct.Memory* %call_41a257, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x4068(%rbp)	 RIP: 41a25b	 Bytes: 7
  %loadMem_41a25b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a25b = call %struct.Memory* @routine_movq__rdx__MINUS0x4068__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a25b)
  store %struct.Memory* %call_41a25b, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rsi), %rdx	 RIP: 41a262	 Bytes: 4
  %loadMem_41a262 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a262 = call %struct.Memory* @routine_movq_0x10__rsi____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a262)
  store %struct.Memory* %call_41a262, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x4060(%rbp)	 RIP: 41a266	 Bytes: 7
  %loadMem_41a266 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a266 = call %struct.Memory* @routine_movq__rdx__MINUS0x4060__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a266)
  store %struct.Memory* %call_41a266, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rdx	 RIP: 41a26d	 Bytes: 8
  %loadMem_41a26d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a26d = call %struct.Memory* @routine_movslq_0x886bc0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a26d)
  store %struct.Memory* %call_41a26d, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 41a275	 Bytes: 4
  %loadMem_41a275 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a275 = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a275)
  store %struct.Memory* %call_41a275, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 41a279	 Bytes: 3
  %loadMem_41a279 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a279 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a279)
  store %struct.Memory* %call_41a279, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rdx	 RIP: 41a27c	 Bytes: 8
  %loadMem_41a27c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a27c = call %struct.Memory* @routine_movslq_0x886bc0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a27c)
  store %struct.Memory* %call_41a27c, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 41a284	 Bytes: 4
  %loadMem_41a284 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a284 = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a284)
  store %struct.Memory* %call_41a284, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 41a288	 Bytes: 3
  %loadMem_41a288 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a288 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a288)
  store %struct.Memory* %call_41a288, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 41a28b	 Bytes: 3
  %loadMem_41a28b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a28b = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a28b)
  store %struct.Memory* %call_41a28b, %struct.Memory** %MEMORY

  ; Code: movq (%rsi), %rdx	 RIP: 41a28e	 Bytes: 3
  %loadMem_41a28e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a28e = call %struct.Memory* @routine_movq___rsi____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a28e)
  store %struct.Memory* %call_41a28e, %struct.Memory** %MEMORY

  ; Code: movq %rdx, (%rcx)	 RIP: 41a291	 Bytes: 3
  %loadMem_41a291 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a291 = call %struct.Memory* @routine_movq__rdx____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a291)
  store %struct.Memory* %call_41a291, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rsi), %rdx	 RIP: 41a294	 Bytes: 4
  %loadMem_41a294 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a294 = call %struct.Memory* @routine_movq_0x8__rsi____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a294)
  store %struct.Memory* %call_41a294, %struct.Memory** %MEMORY

  ; Code: movq %rdx, 0x8(%rcx)	 RIP: 41a298	 Bytes: 4
  %loadMem_41a298 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a298 = call %struct.Memory* @routine_movq__rdx__0x8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a298)
  store %struct.Memory* %call_41a298, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rsi), %rdx	 RIP: 41a29c	 Bytes: 4
  %loadMem_41a29c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a29c = call %struct.Memory* @routine_movq_0x10__rsi____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a29c)
  store %struct.Memory* %call_41a29c, %struct.Memory** %MEMORY

  ; Code: movq %rdx, 0x10(%rcx)	 RIP: 41a2a0	 Bytes: 4
  %loadMem_41a2a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a2a0 = call %struct.Memory* @routine_movq__rdx__0x10__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a2a0)
  store %struct.Memory* %call_41a2a0, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rcx	 RIP: 41a2a4	 Bytes: 8
  %loadMem_41a2a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a2a4 = call %struct.Memory* @routine_movslq_0x886bc0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a2a4)
  store %struct.Memory* %call_41a2a4, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rcx, %rcx	 RIP: 41a2ac	 Bytes: 4
  %loadMem_41a2ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a2ac = call %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a2ac)
  store %struct.Memory* %call_41a2ac, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 41a2b0	 Bytes: 3
  %loadMem_41a2b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a2b0 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a2b0)
  store %struct.Memory* %call_41a2b0, %struct.Memory** %MEMORY

  ; Code: movq -0x4070(%rbp), %rcx	 RIP: 41a2b3	 Bytes: 7
  %loadMem_41a2b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a2b3 = call %struct.Memory* @routine_movq_MINUS0x4070__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a2b3)
  store %struct.Memory* %call_41a2b3, %struct.Memory** %MEMORY

  ; Code: movq %rcx, (%rax)	 RIP: 41a2ba	 Bytes: 3
  %loadMem_41a2ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a2ba = call %struct.Memory* @routine_movq__rcx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a2ba)
  store %struct.Memory* %call_41a2ba, %struct.Memory** %MEMORY

  ; Code: movq -0x4068(%rbp), %rcx	 RIP: 41a2bd	 Bytes: 7
  %loadMem_41a2bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a2bd = call %struct.Memory* @routine_movq_MINUS0x4068__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a2bd)
  store %struct.Memory* %call_41a2bd, %struct.Memory** %MEMORY

  ; Code: movq %rcx, 0x8(%rax)	 RIP: 41a2c4	 Bytes: 4
  %loadMem_41a2c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a2c4 = call %struct.Memory* @routine_movq__rcx__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a2c4)
  store %struct.Memory* %call_41a2c4, %struct.Memory** %MEMORY

  ; Code: movq -0x4060(%rbp), %rcx	 RIP: 41a2c8	 Bytes: 7
  %loadMem_41a2c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a2c8 = call %struct.Memory* @routine_movq_MINUS0x4060__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a2c8)
  store %struct.Memory* %call_41a2c8, %struct.Memory** %MEMORY

  ; Code: movq %rcx, 0x10(%rax)	 RIP: 41a2cf	 Bytes: 4
  %loadMem_41a2cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a2cf = call %struct.Memory* @routine_movq__rcx__0x10__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a2cf)
  store %struct.Memory* %call_41a2cf, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rax	 RIP: 41a2d3	 Bytes: 8
  %loadMem_41a2d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a2d3 = call %struct.Memory* @routine_movslq_0x886bc0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a2d3)
  store %struct.Memory* %call_41a2d3, %struct.Memory** %MEMORY

  ; Code: movl 0x62e530(,%rax,4), %edi	 RIP: 41a2db	 Bytes: 7
  %loadMem_41a2db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a2db = call %struct.Memory* @routine_movl_0x62e530___rax_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a2db)
  store %struct.Memory* %call_41a2db, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x4074(%rbp)	 RIP: 41a2e2	 Bytes: 6
  %loadMem_41a2e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a2e2 = call %struct.Memory* @routine_movl__edi__MINUS0x4074__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a2e2)
  store %struct.Memory* %call_41a2e2, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rax	 RIP: 41a2e8	 Bytes: 8
  %loadMem_41a2e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a2e8 = call %struct.Memory* @routine_movslq_0x886bc0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a2e8)
  store %struct.Memory* %call_41a2e8, %struct.Memory** %MEMORY

  ; Code: movl 0x638c60(,%rax,4), %edi	 RIP: 41a2f0	 Bytes: 7
  %loadMem_41a2f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a2f0 = call %struct.Memory* @routine_movl_0x638c60___rax_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a2f0)
  store %struct.Memory* %call_41a2f0, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rax	 RIP: 41a2f7	 Bytes: 8
  %loadMem_41a2f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a2f7 = call %struct.Memory* @routine_movslq_0x886bc0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a2f7)
  store %struct.Memory* %call_41a2f7, %struct.Memory** %MEMORY

  ; Code: movl %edi, 0x62e530(,%rax,4)	 RIP: 41a2ff	 Bytes: 7
  %loadMem_41a2ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a2ff = call %struct.Memory* @routine_movl__edi__0x62e530___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a2ff)
  store %struct.Memory* %call_41a2ff, %struct.Memory** %MEMORY

  ; Code: movl -0x4074(%rbp), %edi	 RIP: 41a306	 Bytes: 6
  %loadMem_41a306 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a306 = call %struct.Memory* @routine_movl_MINUS0x4074__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a306)
  store %struct.Memory* %call_41a306, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rax	 RIP: 41a30c	 Bytes: 8
  %loadMem_41a30c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a30c = call %struct.Memory* @routine_movslq_0x886bc0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a30c)
  store %struct.Memory* %call_41a30c, %struct.Memory** %MEMORY

  ; Code: movl %edi, 0x638c60(,%rax,4)	 RIP: 41a314	 Bytes: 7
  %loadMem_41a314 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a314 = call %struct.Memory* @routine_movl__edi__0x638c60___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a314)
  store %struct.Memory* %call_41a314, %struct.Memory** %MEMORY

  ; Code: .L_41a31b:	 RIP: 41a31b	 Bytes: 0
  br label %block_.L_41a31b
block_.L_41a31b:

  ; Code: jmpq .L_41a55e	 RIP: 41a31b	 Bytes: 5
  %loadMem_41a31b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a31b = call %struct.Memory* @routine_jmpq_.L_41a55e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a31b, i64 579, i64 5)
  store %struct.Memory* %call_41a31b, %struct.Memory** %MEMORY

  br label %block_.L_41a55e

  ; Code: .L_41a320:	 RIP: 41a320	 Bytes: 0
block_.L_41a320:

  ; Code: movq $0x882600, %rax	 RIP: 41a320	 Bytes: 10
  %loadMem_41a320 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a320 = call %struct.Memory* @routine_movq__0x882600___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a320)
  store %struct.Memory* %call_41a320, %struct.Memory** %MEMORY

  ; Code: leaq -0x3010(%rbp), %rcx	 RIP: 41a32a	 Bytes: 7
  %loadMem_41a32a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a32a = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a32a)
  store %struct.Memory* %call_41a32a, %struct.Memory** %MEMORY

  ; Code: movslq -0x3030(%rbp), %rdx	 RIP: 41a331	 Bytes: 7
  %loadMem_41a331 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a331 = call %struct.Memory* @routine_movslq_MINUS0x3030__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a331)
  store %struct.Memory* %call_41a331, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 41a338	 Bytes: 4
  %loadMem_41a338 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a338 = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a338)
  store %struct.Memory* %call_41a338, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 41a33c	 Bytes: 3
  %loadMem_41a33c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a33c = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a33c)
  store %struct.Memory* %call_41a33c, %struct.Memory** %MEMORY

  ; Code: movl (%rcx), %esi	 RIP: 41a33f	 Bytes: 2
  %loadMem_41a33f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a33f = call %struct.Memory* @routine_movl___rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a33f)
  store %struct.Memory* %call_41a33f, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rcx	 RIP: 41a341	 Bytes: 8
  %loadMem_41a341 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a341 = call %struct.Memory* @routine_movslq_0x886bc0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a341)
  store %struct.Memory* %call_41a341, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rcx, %rcx	 RIP: 41a349	 Bytes: 4
  %loadMem_41a349 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a349 = call %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a349)
  store %struct.Memory* %call_41a349, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 41a34d	 Bytes: 3
  %loadMem_41a34d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a34d = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a34d)
  store %struct.Memory* %call_41a34d, %struct.Memory** %MEMORY

  ; Code: cmpl (%rax), %esi	 RIP: 41a350	 Bytes: 2
  %loadMem_41a350 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a350 = call %struct.Memory* @routine_cmpl___rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a350)
  store %struct.Memory* %call_41a350, %struct.Memory** %MEMORY

  ; Code: jne .L_41a502	 RIP: 41a352	 Bytes: 6
  %loadMem_41a352 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a352 = call %struct.Memory* @routine_jne_.L_41a502(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a352, i8* %BRANCH_TAKEN, i64 432, i64 6, i64 6)
  store %struct.Memory* %call_41a352, %struct.Memory** %MEMORY

  %loadBr_41a352 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a352 = icmp eq i8 %loadBr_41a352, 1
  br i1 %cmpBr_41a352, label %block_.L_41a502, label %block_41a358

block_41a358:
  ; Code: movq $0x882600, %rax	 RIP: 41a358	 Bytes: 10
  %loadMem_41a358 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a358 = call %struct.Memory* @routine_movq__0x882600___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a358)
  store %struct.Memory* %call_41a358, %struct.Memory** %MEMORY

  ; Code: leaq -0x3010(%rbp), %rcx	 RIP: 41a362	 Bytes: 7
  %loadMem_41a362 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a362 = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a362)
  store %struct.Memory* %call_41a362, %struct.Memory** %MEMORY

  ; Code: movslq -0x3030(%rbp), %rdx	 RIP: 41a369	 Bytes: 7
  %loadMem_41a369 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a369 = call %struct.Memory* @routine_movslq_MINUS0x3030__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a369)
  store %struct.Memory* %call_41a369, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 41a370	 Bytes: 4
  %loadMem_41a370 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a370 = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a370)
  store %struct.Memory* %call_41a370, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 41a374	 Bytes: 3
  %loadMem_41a374 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a374 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a374)
  store %struct.Memory* %call_41a374, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rcx), %esi	 RIP: 41a377	 Bytes: 3
  %loadMem_41a377 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a377 = call %struct.Memory* @routine_movl_0x4__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a377)
  store %struct.Memory* %call_41a377, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rcx	 RIP: 41a37a	 Bytes: 8
  %loadMem_41a37a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a37a = call %struct.Memory* @routine_movslq_0x886bc0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a37a)
  store %struct.Memory* %call_41a37a, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rcx, %rcx	 RIP: 41a382	 Bytes: 4
  %loadMem_41a382 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a382 = call %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a382)
  store %struct.Memory* %call_41a382, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 41a386	 Bytes: 3
  %loadMem_41a386 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a386 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a386)
  store %struct.Memory* %call_41a386, %struct.Memory** %MEMORY

  ; Code: cmpl 0x4(%rax), %esi	 RIP: 41a389	 Bytes: 3
  %loadMem_41a389 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a389 = call %struct.Memory* @routine_cmpl_0x4__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a389)
  store %struct.Memory* %call_41a389, %struct.Memory** %MEMORY

  ; Code: jne .L_41a502	 RIP: 41a38c	 Bytes: 6
  %loadMem_41a38c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a38c = call %struct.Memory* @routine_jne_.L_41a502(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a38c, i8* %BRANCH_TAKEN, i64 374, i64 6, i64 6)
  store %struct.Memory* %call_41a38c, %struct.Memory** %MEMORY

  %loadBr_41a38c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a38c = icmp eq i8 %loadBr_41a38c, 1
  br i1 %cmpBr_41a38c, label %block_.L_41a502, label %block_41a392

block_41a392:
  ; Code: movq $0x882600, %rax	 RIP: 41a392	 Bytes: 10
  %loadMem_41a392 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a392 = call %struct.Memory* @routine_movq__0x882600___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a392)
  store %struct.Memory* %call_41a392, %struct.Memory** %MEMORY

  ; Code: leaq -0x3010(%rbp), %rcx	 RIP: 41a39c	 Bytes: 7
  %loadMem_41a39c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a39c = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a39c)
  store %struct.Memory* %call_41a39c, %struct.Memory** %MEMORY

  ; Code: movslq -0x3030(%rbp), %rdx	 RIP: 41a3a3	 Bytes: 7
  %loadMem_41a3a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a3a3 = call %struct.Memory* @routine_movslq_MINUS0x3030__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a3a3)
  store %struct.Memory* %call_41a3a3, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 41a3aa	 Bytes: 4
  %loadMem_41a3aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a3aa = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a3aa)
  store %struct.Memory* %call_41a3aa, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 41a3ae	 Bytes: 3
  %loadMem_41a3ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a3ae = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a3ae)
  store %struct.Memory* %call_41a3ae, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rcx), %esi	 RIP: 41a3b1	 Bytes: 3
  %loadMem_41a3b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a3b1 = call %struct.Memory* @routine_movl_0xc__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a3b1)
  store %struct.Memory* %call_41a3b1, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rcx	 RIP: 41a3b4	 Bytes: 8
  %loadMem_41a3b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a3b4 = call %struct.Memory* @routine_movslq_0x886bc0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a3b4)
  store %struct.Memory* %call_41a3b4, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rcx, %rcx	 RIP: 41a3bc	 Bytes: 4
  %loadMem_41a3bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a3bc = call %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a3bc)
  store %struct.Memory* %call_41a3bc, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 41a3c0	 Bytes: 3
  %loadMem_41a3c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a3c0 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a3c0)
  store %struct.Memory* %call_41a3c0, %struct.Memory** %MEMORY

  ; Code: cmpl 0xc(%rax), %esi	 RIP: 41a3c3	 Bytes: 3
  %loadMem_41a3c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a3c3 = call %struct.Memory* @routine_cmpl_0xc__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a3c3)
  store %struct.Memory* %call_41a3c3, %struct.Memory** %MEMORY

  ; Code: jne .L_41a502	 RIP: 41a3c6	 Bytes: 6
  %loadMem_41a3c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a3c6 = call %struct.Memory* @routine_jne_.L_41a502(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a3c6, i8* %BRANCH_TAKEN, i64 316, i64 6, i64 6)
  store %struct.Memory* %call_41a3c6, %struct.Memory** %MEMORY

  %loadBr_41a3c6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a3c6 = icmp eq i8 %loadBr_41a3c6, 1
  br i1 %cmpBr_41a3c6, label %block_.L_41a502, label %block_41a3cc

block_41a3cc:
  ; Code: movslq 0x886bc0, %rax	 RIP: 41a3cc	 Bytes: 8
  %loadMem_41a3cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a3cc = call %struct.Memory* @routine_movslq_0x886bc0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a3cc)
  store %struct.Memory* %call_41a3cc, %struct.Memory** %MEMORY

  ; Code: movl 0x881e00(,%rax,4), %ecx	 RIP: 41a3d4	 Bytes: 7
  %loadMem_41a3d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a3d4 = call %struct.Memory* @routine_movl_0x881e00___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a3d4)
  store %struct.Memory* %call_41a3d4, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 41a3db	 Bytes: 3
  %loadMem_41a3db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a3db = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a3db)
  store %struct.Memory* %call_41a3db, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x881e00(,%rax,4)	 RIP: 41a3de	 Bytes: 7
  %loadMem_41a3de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a3de = call %struct.Memory* @routine_movl__ecx__0x881e00___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a3de)
  store %struct.Memory* %call_41a3de, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rax	 RIP: 41a3e5	 Bytes: 8
  %loadMem_41a3e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a3e5 = call %struct.Memory* @routine_movslq_0x886bc0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a3e5)
  store %struct.Memory* %call_41a3e5, %struct.Memory** %MEMORY

  ; Code: movl 0x881e00(,%rax,4), %ecx	 RIP: 41a3ed	 Bytes: 7
  %loadMem_41a3ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a3ed = call %struct.Memory* @routine_movl_0x881e00___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a3ed)
  store %struct.Memory* %call_41a3ed, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rax	 RIP: 41a3f4	 Bytes: 8
  %loadMem_41a3f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a3f4 = call %struct.Memory* @routine_movslq_0x886bc0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a3f4)
  store %struct.Memory* %call_41a3f4, %struct.Memory** %MEMORY

  ; Code: cmpl 0x638c60(,%rax,4), %ecx	 RIP: 41a3fc	 Bytes: 7
  %loadMem_41a3fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a3fc = call %struct.Memory* @routine_cmpl_0x638c60___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a3fc)
  store %struct.Memory* %call_41a3fc, %struct.Memory** %MEMORY

  ; Code: jle .L_41a4fd	 RIP: 41a403	 Bytes: 6
  %loadMem_41a403 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a403 = call %struct.Memory* @routine_jle_.L_41a4fd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a403, i8* %BRANCH_TAKEN, i64 250, i64 6, i64 6)
  store %struct.Memory* %call_41a403, %struct.Memory** %MEMORY

  %loadBr_41a403 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a403 = icmp eq i8 %loadBr_41a403, 1
  br i1 %cmpBr_41a403, label %block_.L_41a4fd, label %block_41a409

block_41a409:
  ; Code: movq $0x882600, %rax	 RIP: 41a409	 Bytes: 10
  %loadMem_41a409 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a409 = call %struct.Memory* @routine_movq__0x882600___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a409)
  store %struct.Memory* %call_41a409, %struct.Memory** %MEMORY

  ; Code: movq $0x639220, %rcx	 RIP: 41a413	 Bytes: 10
  %loadMem_41a413 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a413 = call %struct.Memory* @routine_movq__0x639220___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a413)
  store %struct.Memory* %call_41a413, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rdx	 RIP: 41a41d	 Bytes: 8
  %loadMem_41a41d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a41d = call %struct.Memory* @routine_movslq_0x886bc0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a41d)
  store %struct.Memory* %call_41a41d, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 41a425	 Bytes: 4
  %loadMem_41a425 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a425 = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a425)
  store %struct.Memory* %call_41a425, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rsi	 RIP: 41a429	 Bytes: 3
  %loadMem_41a429 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a429 = call %struct.Memory* @routine_movq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a429)
  store %struct.Memory* %call_41a429, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 41a42c	 Bytes: 3
  %loadMem_41a42c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a42c = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a42c)
  store %struct.Memory* %call_41a42c, %struct.Memory** %MEMORY

  ; Code: movq (%rsi), %rdx	 RIP: 41a42f	 Bytes: 3
  %loadMem_41a42f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a42f = call %struct.Memory* @routine_movq___rsi____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a42f)
  store %struct.Memory* %call_41a42f, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x4070(%rbp)	 RIP: 41a432	 Bytes: 7
  %loadMem_41a432 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a432 = call %struct.Memory* @routine_movq__rdx__MINUS0x4070__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a432)
  store %struct.Memory* %call_41a432, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rsi), %rdx	 RIP: 41a439	 Bytes: 4
  %loadMem_41a439 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a439 = call %struct.Memory* @routine_movq_0x8__rsi____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a439)
  store %struct.Memory* %call_41a439, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x4068(%rbp)	 RIP: 41a43d	 Bytes: 7
  %loadMem_41a43d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a43d = call %struct.Memory* @routine_movq__rdx__MINUS0x4068__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a43d)
  store %struct.Memory* %call_41a43d, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rsi), %rdx	 RIP: 41a444	 Bytes: 4
  %loadMem_41a444 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a444 = call %struct.Memory* @routine_movq_0x10__rsi____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a444)
  store %struct.Memory* %call_41a444, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x4060(%rbp)	 RIP: 41a448	 Bytes: 7
  %loadMem_41a448 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a448 = call %struct.Memory* @routine_movq__rdx__MINUS0x4060__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a448)
  store %struct.Memory* %call_41a448, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rdx	 RIP: 41a44f	 Bytes: 8
  %loadMem_41a44f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a44f = call %struct.Memory* @routine_movslq_0x886bc0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a44f)
  store %struct.Memory* %call_41a44f, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 41a457	 Bytes: 4
  %loadMem_41a457 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a457 = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a457)
  store %struct.Memory* %call_41a457, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 41a45b	 Bytes: 3
  %loadMem_41a45b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a45b = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a45b)
  store %struct.Memory* %call_41a45b, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rdx	 RIP: 41a45e	 Bytes: 8
  %loadMem_41a45e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a45e = call %struct.Memory* @routine_movslq_0x886bc0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a45e)
  store %struct.Memory* %call_41a45e, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 41a466	 Bytes: 4
  %loadMem_41a466 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a466 = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a466)
  store %struct.Memory* %call_41a466, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 41a46a	 Bytes: 3
  %loadMem_41a46a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a46a = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a46a)
  store %struct.Memory* %call_41a46a, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 41a46d	 Bytes: 3
  %loadMem_41a46d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a46d = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a46d)
  store %struct.Memory* %call_41a46d, %struct.Memory** %MEMORY

  ; Code: movq (%rsi), %rdx	 RIP: 41a470	 Bytes: 3
  %loadMem_41a470 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a470 = call %struct.Memory* @routine_movq___rsi____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a470)
  store %struct.Memory* %call_41a470, %struct.Memory** %MEMORY

  ; Code: movq %rdx, (%rcx)	 RIP: 41a473	 Bytes: 3
  %loadMem_41a473 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a473 = call %struct.Memory* @routine_movq__rdx____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a473)
  store %struct.Memory* %call_41a473, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rsi), %rdx	 RIP: 41a476	 Bytes: 4
  %loadMem_41a476 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a476 = call %struct.Memory* @routine_movq_0x8__rsi____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a476)
  store %struct.Memory* %call_41a476, %struct.Memory** %MEMORY

  ; Code: movq %rdx, 0x8(%rcx)	 RIP: 41a47a	 Bytes: 4
  %loadMem_41a47a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a47a = call %struct.Memory* @routine_movq__rdx__0x8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a47a)
  store %struct.Memory* %call_41a47a, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rsi), %rdx	 RIP: 41a47e	 Bytes: 4
  %loadMem_41a47e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a47e = call %struct.Memory* @routine_movq_0x10__rsi____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a47e)
  store %struct.Memory* %call_41a47e, %struct.Memory** %MEMORY

  ; Code: movq %rdx, 0x10(%rcx)	 RIP: 41a482	 Bytes: 4
  %loadMem_41a482 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a482 = call %struct.Memory* @routine_movq__rdx__0x10__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a482)
  store %struct.Memory* %call_41a482, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rcx	 RIP: 41a486	 Bytes: 8
  %loadMem_41a486 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a486 = call %struct.Memory* @routine_movslq_0x886bc0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a486)
  store %struct.Memory* %call_41a486, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rcx, %rcx	 RIP: 41a48e	 Bytes: 4
  %loadMem_41a48e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a48e = call %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a48e)
  store %struct.Memory* %call_41a48e, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 41a492	 Bytes: 3
  %loadMem_41a492 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a492 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a492)
  store %struct.Memory* %call_41a492, %struct.Memory** %MEMORY

  ; Code: movq -0x4070(%rbp), %rcx	 RIP: 41a495	 Bytes: 7
  %loadMem_41a495 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a495 = call %struct.Memory* @routine_movq_MINUS0x4070__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a495)
  store %struct.Memory* %call_41a495, %struct.Memory** %MEMORY

  ; Code: movq %rcx, (%rax)	 RIP: 41a49c	 Bytes: 3
  %loadMem_41a49c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a49c = call %struct.Memory* @routine_movq__rcx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a49c)
  store %struct.Memory* %call_41a49c, %struct.Memory** %MEMORY

  ; Code: movq -0x4068(%rbp), %rcx	 RIP: 41a49f	 Bytes: 7
  %loadMem_41a49f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a49f = call %struct.Memory* @routine_movq_MINUS0x4068__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a49f)
  store %struct.Memory* %call_41a49f, %struct.Memory** %MEMORY

  ; Code: movq %rcx, 0x8(%rax)	 RIP: 41a4a6	 Bytes: 4
  %loadMem_41a4a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a4a6 = call %struct.Memory* @routine_movq__rcx__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a4a6)
  store %struct.Memory* %call_41a4a6, %struct.Memory** %MEMORY

  ; Code: movq -0x4060(%rbp), %rcx	 RIP: 41a4aa	 Bytes: 7
  %loadMem_41a4aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a4aa = call %struct.Memory* @routine_movq_MINUS0x4060__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a4aa)
  store %struct.Memory* %call_41a4aa, %struct.Memory** %MEMORY

  ; Code: movq %rcx, 0x10(%rax)	 RIP: 41a4b1	 Bytes: 4
  %loadMem_41a4b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a4b1 = call %struct.Memory* @routine_movq__rcx__0x10__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a4b1)
  store %struct.Memory* %call_41a4b1, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rax	 RIP: 41a4b5	 Bytes: 8
  %loadMem_41a4b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a4b5 = call %struct.Memory* @routine_movslq_0x886bc0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a4b5)
  store %struct.Memory* %call_41a4b5, %struct.Memory** %MEMORY

  ; Code: movl 0x638c60(,%rax,4), %edi	 RIP: 41a4bd	 Bytes: 7
  %loadMem_41a4bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a4bd = call %struct.Memory* @routine_movl_0x638c60___rax_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a4bd)
  store %struct.Memory* %call_41a4bd, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x4074(%rbp)	 RIP: 41a4c4	 Bytes: 6
  %loadMem_41a4c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a4c4 = call %struct.Memory* @routine_movl__edi__MINUS0x4074__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a4c4)
  store %struct.Memory* %call_41a4c4, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rax	 RIP: 41a4ca	 Bytes: 8
  %loadMem_41a4ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a4ca = call %struct.Memory* @routine_movslq_0x886bc0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a4ca)
  store %struct.Memory* %call_41a4ca, %struct.Memory** %MEMORY

  ; Code: movl 0x881e00(,%rax,4), %edi	 RIP: 41a4d2	 Bytes: 7
  %loadMem_41a4d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a4d2 = call %struct.Memory* @routine_movl_0x881e00___rax_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a4d2)
  store %struct.Memory* %call_41a4d2, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rax	 RIP: 41a4d9	 Bytes: 8
  %loadMem_41a4d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a4d9 = call %struct.Memory* @routine_movslq_0x886bc0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a4d9)
  store %struct.Memory* %call_41a4d9, %struct.Memory** %MEMORY

  ; Code: movl %edi, 0x638c60(,%rax,4)	 RIP: 41a4e1	 Bytes: 7
  %loadMem_41a4e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a4e1 = call %struct.Memory* @routine_movl__edi__0x638c60___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a4e1)
  store %struct.Memory* %call_41a4e1, %struct.Memory** %MEMORY

  ; Code: movl -0x4074(%rbp), %edi	 RIP: 41a4e8	 Bytes: 6
  %loadMem_41a4e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a4e8 = call %struct.Memory* @routine_movl_MINUS0x4074__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a4e8)
  store %struct.Memory* %call_41a4e8, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rax	 RIP: 41a4ee	 Bytes: 8
  %loadMem_41a4ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a4ee = call %struct.Memory* @routine_movslq_0x886bc0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a4ee)
  store %struct.Memory* %call_41a4ee, %struct.Memory** %MEMORY

  ; Code: movl %edi, 0x881e00(,%rax,4)	 RIP: 41a4f6	 Bytes: 7
  %loadMem_41a4f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a4f6 = call %struct.Memory* @routine_movl__edi__0x881e00___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a4f6)
  store %struct.Memory* %call_41a4f6, %struct.Memory** %MEMORY

  ; Code: .L_41a4fd:	 RIP: 41a4fd	 Bytes: 0
  br label %block_.L_41a4fd
block_.L_41a4fd:

  ; Code: jmpq .L_41a559	 RIP: 41a4fd	 Bytes: 5
  %loadMem_41a4fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a4fd = call %struct.Memory* @routine_jmpq_.L_41a559(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a4fd, i64 92, i64 5)
  store %struct.Memory* %call_41a4fd, %struct.Memory** %MEMORY

  br label %block_.L_41a559

  ; Code: .L_41a502:	 RIP: 41a502	 Bytes: 0
block_.L_41a502:

  ; Code: leaq -0x3010(%rbp), %rax	 RIP: 41a502	 Bytes: 7
  %loadMem_41a502 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a502 = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a502)
  store %struct.Memory* %call_41a502, %struct.Memory** %MEMORY

  ; Code: movq $0x882600, %rcx	 RIP: 41a509	 Bytes: 10
  %loadMem_41a509 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a509 = call %struct.Memory* @routine_movq__0x882600___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a509)
  store %struct.Memory* %call_41a509, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rdx	 RIP: 41a513	 Bytes: 8
  %loadMem_41a513 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a513 = call %struct.Memory* @routine_movslq_0x886bc0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a513)
  store %struct.Memory* %call_41a513, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x881e00(,%rdx,4)	 RIP: 41a51b	 Bytes: 11
  %loadMem_41a51b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a51b = call %struct.Memory* @routine_movl__0x1__0x881e00___rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a51b)
  store %struct.Memory* %call_41a51b, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rdx	 RIP: 41a526	 Bytes: 8
  %loadMem_41a526 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a526 = call %struct.Memory* @routine_movslq_0x886bc0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a526)
  store %struct.Memory* %call_41a526, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 41a52e	 Bytes: 4
  %loadMem_41a52e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a52e = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a52e)
  store %struct.Memory* %call_41a52e, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 41a532	 Bytes: 3
  %loadMem_41a532 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a532 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a532)
  store %struct.Memory* %call_41a532, %struct.Memory** %MEMORY

  ; Code: movslq -0x3030(%rbp), %rdx	 RIP: 41a535	 Bytes: 7
  %loadMem_41a535 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a535 = call %struct.Memory* @routine_movslq_MINUS0x3030__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a535)
  store %struct.Memory* %call_41a535, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 41a53c	 Bytes: 4
  %loadMem_41a53c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a53c = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a53c)
  store %struct.Memory* %call_41a53c, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41a540	 Bytes: 3
  %loadMem_41a540 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a540 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a540)
  store %struct.Memory* %call_41a540, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdx	 RIP: 41a543	 Bytes: 3
  %loadMem_41a543 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a543 = call %struct.Memory* @routine_movq___rax____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a543)
  store %struct.Memory* %call_41a543, %struct.Memory** %MEMORY

  ; Code: movq %rdx, (%rcx)	 RIP: 41a546	 Bytes: 3
  %loadMem_41a546 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a546 = call %struct.Memory* @routine_movq__rdx____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a546)
  store %struct.Memory* %call_41a546, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rdx	 RIP: 41a549	 Bytes: 4
  %loadMem_41a549 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a549 = call %struct.Memory* @routine_movq_0x8__rax____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a549)
  store %struct.Memory* %call_41a549, %struct.Memory** %MEMORY

  ; Code: movq %rdx, 0x8(%rcx)	 RIP: 41a54d	 Bytes: 4
  %loadMem_41a54d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a54d = call %struct.Memory* @routine_movq__rdx__0x8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a54d)
  store %struct.Memory* %call_41a54d, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 41a551	 Bytes: 4
  %loadMem_41a551 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a551 = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a551)
  store %struct.Memory* %call_41a551, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x10(%rcx)	 RIP: 41a555	 Bytes: 4
  %loadMem_41a555 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a555 = call %struct.Memory* @routine_movq__rax__0x10__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a555)
  store %struct.Memory* %call_41a555, %struct.Memory** %MEMORY

  ; Code: .L_41a559:	 RIP: 41a559	 Bytes: 0
  br label %block_.L_41a559
block_.L_41a559:

  ; Code: jmpq .L_41a55e	 RIP: 41a559	 Bytes: 5
  %loadMem_41a559 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a559 = call %struct.Memory* @routine_jmpq_.L_41a55e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a559, i64 5, i64 5)
  store %struct.Memory* %call_41a559, %struct.Memory** %MEMORY

  br label %block_.L_41a55e

  ; Code: .L_41a55e:	 RIP: 41a55e	 Bytes: 0
block_.L_41a55e:

  ; Code: jmpq .L_41a563	 RIP: 41a55e	 Bytes: 5
  %loadMem_41a55e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a55e = call %struct.Memory* @routine_jmpq_.L_41a563(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a55e, i64 5, i64 5)
  store %struct.Memory* %call_41a55e, %struct.Memory** %MEMORY

  br label %block_.L_41a563

  ; Code: .L_41a563:	 RIP: 41a563	 Bytes: 0
block_.L_41a563:

  ; Code: leaq -0x3010(%rbp), %rax	 RIP: 41a563	 Bytes: 7
  %loadMem_41a563 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a563 = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a563)
  store %struct.Memory* %call_41a563, %struct.Memory** %MEMORY

  ; Code: movq $0x63ae50, %rcx	 RIP: 41a56a	 Bytes: 10
  %loadMem_41a56a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a56a = call %struct.Memory* @routine_movq__0x63ae50___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a56a)
  store %struct.Memory* %call_41a56a, %struct.Memory** %MEMORY

  ; Code: movq $0x86bda0, %rdx	 RIP: 41a574	 Bytes: 10
  %loadMem_41a574 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a574 = call %struct.Memory* @routine_movq__0x86bda0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a574)
  store %struct.Memory* %call_41a574, %struct.Memory** %MEMORY

  ; Code: movslq -0x3030(%rbp), %rsi	 RIP: 41a57e	 Bytes: 7
  %loadMem_41a57e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a57e = call %struct.Memory* @routine_movslq_MINUS0x3030__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a57e)
  store %struct.Memory* %call_41a57e, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rsi, %rsi	 RIP: 41a585	 Bytes: 4
  %loadMem_41a585 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a585 = call %struct.Memory* @routine_imulq__0x18___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a585)
  store %struct.Memory* %call_41a585, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 41a589	 Bytes: 3
  %loadMem_41a589 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a589 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a589)
  store %struct.Memory* %call_41a589, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdi	 RIP: 41a58c	 Bytes: 3
  %loadMem_41a58c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a58c = call %struct.Memory* @routine_addq__rsi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a58c)
  store %struct.Memory* %call_41a58c, %struct.Memory** %MEMORY

  ; Code: movslq (%rdi), %rsi	 RIP: 41a58f	 Bytes: 3
  %loadMem_41a58f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a58f = call %struct.Memory* @routine_movslq___rdi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a58f)
  store %struct.Memory* %call_41a58f, %struct.Memory** %MEMORY

  ; Code: imulq $0x240, %rsi, %rsi	 RIP: 41a592	 Bytes: 7
  %loadMem_41a592 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a592 = call %struct.Memory* @routine_imulq__0x240___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a592)
  store %struct.Memory* %call_41a592, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 41a599	 Bytes: 3
  %loadMem_41a599 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a599 = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a599)
  store %struct.Memory* %call_41a599, %struct.Memory** %MEMORY

  ; Code: movslq -0x3030(%rbp), %rsi	 RIP: 41a59c	 Bytes: 7
  %loadMem_41a59c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a59c = call %struct.Memory* @routine_movslq_MINUS0x3030__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a59c)
  store %struct.Memory* %call_41a59c, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rsi, %rsi	 RIP: 41a5a3	 Bytes: 4
  %loadMem_41a5a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a5a3 = call %struct.Memory* @routine_imulq__0x18___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a5a3)
  store %struct.Memory* %call_41a5a3, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 41a5a7	 Bytes: 3
  %loadMem_41a5a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a5a7 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a5a7)
  store %struct.Memory* %call_41a5a7, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdi	 RIP: 41a5aa	 Bytes: 3
  %loadMem_41a5aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a5aa = call %struct.Memory* @routine_addq__rsi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a5aa)
  store %struct.Memory* %call_41a5aa, %struct.Memory** %MEMORY

  ; Code: movslq 0x4(%rdi), %rsi	 RIP: 41a5ad	 Bytes: 4
  %loadMem_41a5ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a5ad = call %struct.Memory* @routine_movslq_0x4__rdi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a5ad)
  store %struct.Memory* %call_41a5ad, %struct.Memory** %MEMORY

  ; Code: movl (%rdx,%rsi,4), %r8d	 RIP: 41a5b1	 Bytes: 4
  %loadMem_41a5b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a5b1 = call %struct.Memory* @routine_movl___rdx__rsi_4____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a5b1)
  store %struct.Memory* %call_41a5b1, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %r8d	 RIP: 41a5b5	 Bytes: 4
  %loadMem_41a5b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a5b5 = call %struct.Memory* @routine_addl__0x1___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a5b5)
  store %struct.Memory* %call_41a5b5, %struct.Memory** %MEMORY

  ; Code: movl %r8d, (%rdx,%rsi,4)	 RIP: 41a5b9	 Bytes: 4
  %loadMem_41a5b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a5b9 = call %struct.Memory* @routine_movl__r8d____rdx__rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a5b9)
  store %struct.Memory* %call_41a5b9, %struct.Memory** %MEMORY

  ; Code: movl -0x3038(%rbp), %r8d	 RIP: 41a5bd	 Bytes: 7
  %loadMem_41a5bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a5bd = call %struct.Memory* @routine_movl_MINUS0x3038__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a5bd)
  store %struct.Memory* %call_41a5bd, %struct.Memory** %MEMORY

  ; Code: movl %r8d, -0x4050(%rbp)	 RIP: 41a5c4	 Bytes: 7
  %loadMem_41a5c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a5c4 = call %struct.Memory* @routine_movl__r8d__MINUS0x4050__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a5c4)
  store %struct.Memory* %call_41a5c4, %struct.Memory** %MEMORY

  ; Code: movslq -0x3030(%rbp), %rdx	 RIP: 41a5cb	 Bytes: 7
  %loadMem_41a5cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a5cb = call %struct.Memory* @routine_movslq_MINUS0x3030__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a5cb)
  store %struct.Memory* %call_41a5cb, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 41a5d2	 Bytes: 4
  %loadMem_41a5d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a5d2 = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a5d2)
  store %struct.Memory* %call_41a5d2, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 41a5d6	 Bytes: 3
  %loadMem_41a5d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a5d6 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a5d6)
  store %struct.Memory* %call_41a5d6, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 41a5d9	 Bytes: 3
  %loadMem_41a5d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a5d9 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a5d9)
  store %struct.Memory* %call_41a5d9, %struct.Memory** %MEMORY

  ; Code: movq (%rsi), %rdx	 RIP: 41a5dc	 Bytes: 3
  %loadMem_41a5dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a5dc = call %struct.Memory* @routine_movq___rsi____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a5dc)
  store %struct.Memory* %call_41a5dc, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x3028(%rbp)	 RIP: 41a5df	 Bytes: 7
  %loadMem_41a5df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a5df = call %struct.Memory* @routine_movq__rdx__MINUS0x3028__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a5df)
  store %struct.Memory* %call_41a5df, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rsi), %rdx	 RIP: 41a5e6	 Bytes: 4
  %loadMem_41a5e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a5e6 = call %struct.Memory* @routine_movq_0x8__rsi____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a5e6)
  store %struct.Memory* %call_41a5e6, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x3020(%rbp)	 RIP: 41a5ea	 Bytes: 7
  %loadMem_41a5ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a5ea = call %struct.Memory* @routine_movq__rdx__MINUS0x3020__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a5ea)
  store %struct.Memory* %call_41a5ea, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rsi), %rdx	 RIP: 41a5f1	 Bytes: 4
  %loadMem_41a5f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a5f1 = call %struct.Memory* @routine_movq_0x10__rsi____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a5f1)
  store %struct.Memory* %call_41a5f1, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x3018(%rbp)	 RIP: 41a5f5	 Bytes: 7
  %loadMem_41a5f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a5f5 = call %struct.Memory* @routine_movq__rdx__MINUS0x3018__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a5f5)
  store %struct.Memory* %call_41a5f5, %struct.Memory** %MEMORY

  ; Code: movl -0x3030(%rbp), %r8d	 RIP: 41a5fc	 Bytes: 7
  %loadMem_41a5fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a5fc = call %struct.Memory* @routine_movl_MINUS0x3030__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a5fc)
  store %struct.Memory* %call_41a5fc, %struct.Memory** %MEMORY

  ; Code: movl %r8d, 0x8825f8	 RIP: 41a603	 Bytes: 8
  %loadMem_41a603 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a603 = call %struct.Memory* @routine_movl__r8d__0x8825f8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a603)
  store %struct.Memory* %call_41a603, %struct.Memory** %MEMORY

  ; Code: movl -0x4050(%rbp), %r8d	 RIP: 41a60b	 Bytes: 7
  %loadMem_41a60b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a60b = call %struct.Memory* @routine_movl_MINUS0x4050__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a60b)
  store %struct.Memory* %call_41a60b, %struct.Memory** %MEMORY

  ; Code: movl %r8d, 0x86450c	 RIP: 41a612	 Bytes: 8
  %loadMem_41a612 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a612 = call %struct.Memory* @routine_movl__r8d__0x86450c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a612)
  store %struct.Memory* %call_41a612, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rdx	 RIP: 41a61a	 Bytes: 8
  %loadMem_41a61a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a61a = call %struct.Memory* @routine_movslq_0x886bc0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a61a)
  store %struct.Memory* %call_41a61a, %struct.Memory** %MEMORY

  ; Code: imulq $0x1c20, %rdx, %rdx	 RIP: 41a622	 Bytes: 7
  %loadMem_41a622 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a622 = call %struct.Memory* @routine_imulq__0x1c20___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a622)
  store %struct.Memory* %call_41a622, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 41a629	 Bytes: 3
  %loadMem_41a629 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a629 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a629)
  store %struct.Memory* %call_41a629, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rdx	 RIP: 41a62c	 Bytes: 8
  %loadMem_41a62c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a62c = call %struct.Memory* @routine_movslq_0x886bc0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a62c)
  store %struct.Memory* %call_41a62c, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 41a634	 Bytes: 4
  %loadMem_41a634 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a634 = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a634)
  store %struct.Memory* %call_41a634, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 41a638	 Bytes: 3
  %loadMem_41a638 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a638 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a638)
  store %struct.Memory* %call_41a638, %struct.Memory** %MEMORY

  ; Code: movslq -0x3030(%rbp), %rdx	 RIP: 41a63b	 Bytes: 7
  %loadMem_41a63b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a63b = call %struct.Memory* @routine_movslq_MINUS0x3030__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a63b)
  store %struct.Memory* %call_41a63b, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 41a642	 Bytes: 4
  %loadMem_41a642 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a642 = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a642)
  store %struct.Memory* %call_41a642, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41a646	 Bytes: 3
  %loadMem_41a646 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a646 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a646)
  store %struct.Memory* %call_41a646, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdx	 RIP: 41a649	 Bytes: 3
  %loadMem_41a649 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a649 = call %struct.Memory* @routine_movq___rax____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a649)
  store %struct.Memory* %call_41a649, %struct.Memory** %MEMORY

  ; Code: movq %rdx, (%rcx)	 RIP: 41a64c	 Bytes: 3
  %loadMem_41a64c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a64c = call %struct.Memory* @routine_movq__rdx____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a64c)
  store %struct.Memory* %call_41a64c, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rdx	 RIP: 41a64f	 Bytes: 4
  %loadMem_41a64f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a64f = call %struct.Memory* @routine_movq_0x8__rax____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a64f)
  store %struct.Memory* %call_41a64f, %struct.Memory** %MEMORY

  ; Code: movq %rdx, 0x8(%rcx)	 RIP: 41a653	 Bytes: 4
  %loadMem_41a653 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a653 = call %struct.Memory* @routine_movq__rdx__0x8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a653)
  store %struct.Memory* %call_41a653, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 41a657	 Bytes: 4
  %loadMem_41a657 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a657 = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a657)
  store %struct.Memory* %call_41a657, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x10(%rcx)	 RIP: 41a65b	 Bytes: 4
  %loadMem_41a65b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a65b = call %struct.Memory* @routine_movq__rax__0x10__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a65b)
  store %struct.Memory* %call_41a65b, %struct.Memory** %MEMORY

  ; Code: movl 0x886bc0, %r8d	 RIP: 41a65f	 Bytes: 8
  %loadMem_41a65f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a65f = call %struct.Memory* @routine_movl_0x886bc0___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a65f)
  store %struct.Memory* %call_41a65f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %r8d	 RIP: 41a667	 Bytes: 4
  %loadMem_41a667 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a667 = call %struct.Memory* @routine_addl__0x1___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a667)
  store %struct.Memory* %call_41a667, %struct.Memory** %MEMORY

  ; Code: movl %r8d, -0x3034(%rbp)	 RIP: 41a66b	 Bytes: 7
  %loadMem_41a66b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a66b = call %struct.Memory* @routine_movl__r8d__MINUS0x3034__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a66b)
  store %struct.Memory* %call_41a66b, %struct.Memory** %MEMORY

  ; Code: .L_41a672:	 RIP: 41a672	 Bytes: 0
  br label %block_.L_41a672
block_.L_41a672:

  ; Code: movl -0x3034(%rbp), %eax	 RIP: 41a672	 Bytes: 6
  %loadMem_41a672 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a672 = call %struct.Memory* @routine_movl_MINUS0x3034__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a672)
  store %struct.Memory* %call_41a672, %struct.Memory** %MEMORY

  ; Code: movl 0x886bc0, %ecx	 RIP: 41a678	 Bytes: 7
  %loadMem_41a678 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a678 = call %struct.Memory* @routine_movl_0x886bc0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a678)
  store %struct.Memory* %call_41a678, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 41a67f	 Bytes: 3
  %loadMem_41a67f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a67f = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a67f)
  store %struct.Memory* %call_41a67f, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 41a682	 Bytes: 3
  %loadMem_41a682 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a682 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a682)
  store %struct.Memory* %call_41a682, %struct.Memory** %MEMORY

  ; Code: cmpl 0x86b8b0(,%rdx,4), %eax	 RIP: 41a685	 Bytes: 7
  %loadMem_41a685 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a685 = call %struct.Memory* @routine_cmpl_0x86b8b0___rdx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a685)
  store %struct.Memory* %call_41a685, %struct.Memory** %MEMORY

  ; Code: jge .L_41a70e	 RIP: 41a68c	 Bytes: 6
  %loadMem_41a68c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a68c = call %struct.Memory* @routine_jge_.L_41a70e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a68c, i8* %BRANCH_TAKEN, i64 130, i64 6, i64 6)
  store %struct.Memory* %call_41a68c, %struct.Memory** %MEMORY

  %loadBr_41a68c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a68c = icmp eq i8 %loadBr_41a68c, 1
  br i1 %cmpBr_41a68c, label %block_.L_41a70e, label %block_41a692

block_41a692:
  ; Code: movq $0x63ae50, %rax	 RIP: 41a692	 Bytes: 10
  %loadMem_41a692 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a692 = call %struct.Memory* @routine_movq__0x63ae50___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a692)
  store %struct.Memory* %call_41a692, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rcx	 RIP: 41a69c	 Bytes: 8
  %loadMem_41a69c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a69c = call %struct.Memory* @routine_movslq_0x886bc0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a69c)
  store %struct.Memory* %call_41a69c, %struct.Memory** %MEMORY

  ; Code: imulq $0x1c20, %rcx, %rcx	 RIP: 41a6a4	 Bytes: 7
  %loadMem_41a6a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a6a4 = call %struct.Memory* @routine_imulq__0x1c20___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a6a4)
  store %struct.Memory* %call_41a6a4, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 41a6ab	 Bytes: 3
  %loadMem_41a6ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a6ab = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a6ab)
  store %struct.Memory* %call_41a6ab, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 41a6ae	 Bytes: 3
  %loadMem_41a6ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a6ae = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a6ae)
  store %struct.Memory* %call_41a6ae, %struct.Memory** %MEMORY

  ; Code: movslq -0x3034(%rbp), %rcx	 RIP: 41a6b1	 Bytes: 7
  %loadMem_41a6b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a6b1 = call %struct.Memory* @routine_movslq_MINUS0x3034__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a6b1)
  store %struct.Memory* %call_41a6b1, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rcx, %rcx	 RIP: 41a6b8	 Bytes: 4
  %loadMem_41a6b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a6b8 = call %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a6b8)
  store %struct.Memory* %call_41a6b8, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 41a6bc	 Bytes: 3
  %loadMem_41a6bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a6bc = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a6bc)
  store %struct.Memory* %call_41a6bc, %struct.Memory** %MEMORY

  ; Code: movl 0x886bc0, %esi	 RIP: 41a6bf	 Bytes: 7
  %loadMem_41a6bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a6bf = call %struct.Memory* @routine_movl_0x886bc0___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a6bf)
  store %struct.Memory* %call_41a6bf, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 41a6c6	 Bytes: 3
  %loadMem_41a6c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a6c6 = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a6c6)
  store %struct.Memory* %call_41a6c6, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 41a6c9	 Bytes: 3
  %loadMem_41a6c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a6c9 = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a6c9)
  store %struct.Memory* %call_41a6c9, %struct.Memory** %MEMORY

  ; Code: imulq $0x1c20, %rcx, %rcx	 RIP: 41a6cc	 Bytes: 7
  %loadMem_41a6cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a6cc = call %struct.Memory* @routine_imulq__0x1c20___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a6cc)
  store %struct.Memory* %call_41a6cc, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 41a6d3	 Bytes: 3
  %loadMem_41a6d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a6d3 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a6d3)
  store %struct.Memory* %call_41a6d3, %struct.Memory** %MEMORY

  ; Code: movslq -0x3034(%rbp), %rcx	 RIP: 41a6d6	 Bytes: 7
  %loadMem_41a6d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a6d6 = call %struct.Memory* @routine_movslq_MINUS0x3034__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a6d6)
  store %struct.Memory* %call_41a6d6, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rcx, %rcx	 RIP: 41a6dd	 Bytes: 4
  %loadMem_41a6dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a6dd = call %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a6dd)
  store %struct.Memory* %call_41a6dd, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 41a6e1	 Bytes: 3
  %loadMem_41a6e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a6e1 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a6e1)
  store %struct.Memory* %call_41a6e1, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rcx	 RIP: 41a6e4	 Bytes: 3
  %loadMem_41a6e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a6e4 = call %struct.Memory* @routine_movq___rax____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a6e4)
  store %struct.Memory* %call_41a6e4, %struct.Memory** %MEMORY

  ; Code: movq %rcx, (%rdx)	 RIP: 41a6e7	 Bytes: 3
  %loadMem_41a6e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a6e7 = call %struct.Memory* @routine_movq__rcx____rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a6e7)
  store %struct.Memory* %call_41a6e7, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rcx	 RIP: 41a6ea	 Bytes: 4
  %loadMem_41a6ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a6ea = call %struct.Memory* @routine_movq_0x8__rax____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a6ea)
  store %struct.Memory* %call_41a6ea, %struct.Memory** %MEMORY

  ; Code: movq %rcx, 0x8(%rdx)	 RIP: 41a6ee	 Bytes: 4
  %loadMem_41a6ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a6ee = call %struct.Memory* @routine_movq__rcx__0x8__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a6ee)
  store %struct.Memory* %call_41a6ee, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 41a6f2	 Bytes: 4
  %loadMem_41a6f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a6f2 = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a6f2)
  store %struct.Memory* %call_41a6f2, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x10(%rdx)	 RIP: 41a6f6	 Bytes: 4
  %loadMem_41a6f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a6f6 = call %struct.Memory* @routine_movq__rax__0x10__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a6f6)
  store %struct.Memory* %call_41a6f6, %struct.Memory** %MEMORY

  ; Code: movl -0x3034(%rbp), %eax	 RIP: 41a6fa	 Bytes: 6
  %loadMem_41a6fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a6fa = call %struct.Memory* @routine_movl_MINUS0x3034__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a6fa)
  store %struct.Memory* %call_41a6fa, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41a700	 Bytes: 3
  %loadMem_41a700 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a700 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a700)
  store %struct.Memory* %call_41a700, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3034(%rbp)	 RIP: 41a703	 Bytes: 6
  %loadMem_41a703 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a703 = call %struct.Memory* @routine_movl__eax__MINUS0x3034__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a703)
  store %struct.Memory* %call_41a703, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41a672	 RIP: 41a709	 Bytes: 5
  %loadMem_41a709 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a709 = call %struct.Memory* @routine_jmpq_.L_41a672(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a709, i64 -151, i64 5)
  store %struct.Memory* %call_41a709, %struct.Memory** %MEMORY

  br label %block_.L_41a672

  ; Code: .L_41a70e:	 RIP: 41a70e	 Bytes: 0
block_.L_41a70e:

  ; Code: movl 0x886bc0, %eax	 RIP: 41a70e	 Bytes: 7
  %loadMem_41a70e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a70e = call %struct.Memory* @routine_movl_0x886bc0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a70e)
  store %struct.Memory* %call_41a70e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41a715	 Bytes: 3
  %loadMem_41a715 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a715 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a715)
  store %struct.Memory* %call_41a715, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 41a718	 Bytes: 3
  %loadMem_41a718 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a718 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a718)
  store %struct.Memory* %call_41a718, %struct.Memory** %MEMORY

  ; Code: movl 0x86b8b0(,%rcx,4), %eax	 RIP: 41a71b	 Bytes: 7
  %loadMem_41a71b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a71b = call %struct.Memory* @routine_movl_0x86b8b0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a71b)
  store %struct.Memory* %call_41a71b, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rcx	 RIP: 41a722	 Bytes: 8
  %loadMem_41a722 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a722 = call %struct.Memory* @routine_movslq_0x886bc0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a722)
  store %struct.Memory* %call_41a722, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x86b8b0(,%rcx,4)	 RIP: 41a72a	 Bytes: 7
  %loadMem_41a72a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a72a = call %struct.Memory* @routine_movl__eax__0x86b8b0___rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a72a)
  store %struct.Memory* %call_41a72a, %struct.Memory** %MEMORY

  ; Code: movl 0x86450c, %eax	 RIP: 41a731	 Bytes: 7
  %loadMem_41a731 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a731 = call %struct.Memory* @routine_movl_0x86450c___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a731)
  store %struct.Memory* %call_41a731, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4054(%rbp), %eax	 RIP: 41a738	 Bytes: 6
  %loadMem_41a738 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a738 = call %struct.Memory* @routine_cmpl_MINUS0x4054__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a738)
  store %struct.Memory* %call_41a738, %struct.Memory** %MEMORY

  ; Code: jl .L_41a770	 RIP: 41a73e	 Bytes: 6
  %loadMem_41a73e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a73e = call %struct.Memory* @routine_jl_.L_41a770(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a73e, i8* %BRANCH_TAKEN, i64 50, i64 6, i64 6)
  store %struct.Memory* %call_41a73e, %struct.Memory** %MEMORY

  %loadBr_41a73e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a73e = icmp eq i8 %loadBr_41a73e, 1
  br i1 %cmpBr_41a73e, label %block_.L_41a770, label %block_41a744

block_41a744:
  ; Code: movq -0x3028(%rbp), %rax	 RIP: 41a744	 Bytes: 7
  %loadMem_41a744 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a744 = call %struct.Memory* @routine_movq_MINUS0x3028__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a744)
  store %struct.Memory* %call_41a744, %struct.Memory** %MEMORY

  ; Code: movq -0x4090(%rbp), %rcx	 RIP: 41a74b	 Bytes: 7
  %loadMem_41a74b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a74b = call %struct.Memory* @routine_movq_MINUS0x4090__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a74b)
  store %struct.Memory* %call_41a74b, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rcx)	 RIP: 41a752	 Bytes: 3
  %loadMem_41a752 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a752 = call %struct.Memory* @routine_movq__rax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a752)
  store %struct.Memory* %call_41a752, %struct.Memory** %MEMORY

  ; Code: movq -0x3020(%rbp), %rax	 RIP: 41a755	 Bytes: 7
  %loadMem_41a755 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a755 = call %struct.Memory* @routine_movq_MINUS0x3020__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a755)
  store %struct.Memory* %call_41a755, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x8(%rcx)	 RIP: 41a75c	 Bytes: 4
  %loadMem_41a75c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a75c = call %struct.Memory* @routine_movq__rax__0x8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a75c)
  store %struct.Memory* %call_41a75c, %struct.Memory** %MEMORY

  ; Code: movq -0x3018(%rbp), %rax	 RIP: 41a760	 Bytes: 7
  %loadMem_41a760 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a760 = call %struct.Memory* @routine_movq_MINUS0x3018__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a760)
  store %struct.Memory* %call_41a760, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x10(%rcx)	 RIP: 41a767	 Bytes: 4
  %loadMem_41a767 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a767 = call %struct.Memory* @routine_movq__rax__0x10__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a767)
  store %struct.Memory* %call_41a767, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41a92e	 RIP: 41a76b	 Bytes: 5
  %loadMem_41a76b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a76b = call %struct.Memory* @routine_jmpq_.L_41a92e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a76b, i64 451, i64 5)
  store %struct.Memory* %call_41a76b, %struct.Memory** %MEMORY

  br label %block_.L_41a92e

  ; Code: .L_41a770:	 RIP: 41a770	 Bytes: 0
block_.L_41a770:

  ; Code: cmpl $0x0, 0x86679c	 RIP: 41a770	 Bytes: 8
  %loadMem_41a770 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a770 = call %struct.Memory* @routine_cmpl__0x0__0x86679c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a770)
  store %struct.Memory* %call_41a770, %struct.Memory** %MEMORY

  ; Code: je .L_41a797	 RIP: 41a778	 Bytes: 6
  %loadMem_41a778 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a778 = call %struct.Memory* @routine_je_.L_41a797(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a778, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_41a778, %struct.Memory** %MEMORY

  %loadBr_41a778 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a778 = icmp eq i8 %loadBr_41a778, 1
  br i1 %cmpBr_41a778, label %block_.L_41a797, label %block_41a77e

block_41a77e:
  ; Code: cmpl $0x2, 0x633b50	 RIP: 41a77e	 Bytes: 8
  %loadMem_41a77e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a77e = call %struct.Memory* @routine_cmpl__0x2__0x633b50(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a77e)
  store %struct.Memory* %call_41a77e, %struct.Memory** %MEMORY

  ; Code: jl .L_41a797	 RIP: 41a786	 Bytes: 6
  %loadMem_41a786 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a786 = call %struct.Memory* @routine_jl_.L_41a797(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a786, i8* %BRANCH_TAKEN, i64 17, i64 6, i64 6)
  store %struct.Memory* %call_41a786, %struct.Memory** %MEMORY

  %loadBr_41a786 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a786 = icmp eq i8 %loadBr_41a786, 1
  br i1 %cmpBr_41a786, label %block_.L_41a797, label %block_41a78c

block_41a78c:
  ; Code: movl -0x4050(%rbp), %edi	 RIP: 41a78c	 Bytes: 6
  %loadMem_41a78c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a78c = call %struct.Memory* @routine_movl_MINUS0x4050__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a78c)
  store %struct.Memory* %call_41a78c, %struct.Memory** %MEMORY

  ; Code: callq .post_thinking	 RIP: 41a792	 Bytes: 5
  %loadMem1_41a792 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41a792 = call %struct.Memory* @routine_callq_.post_thinking(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41a792, i64 35966, i64 5, i64 5)
  store %struct.Memory* %call1_41a792, %struct.Memory** %MEMORY

  %loadMem2_41a792 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41a792 = load i64, i64* %3
  %call2_41a792 = call %struct.Memory* @sub_423410.post_thinking(%struct.State* %0, i64  %loadPC_41a792, %struct.Memory* %loadMem2_41a792)
  store %struct.Memory* %call2_41a792, %struct.Memory** %MEMORY

  ; Code: .L_41a797:	 RIP: 41a797	 Bytes: 0
  br label %block_.L_41a797
block_.L_41a797:

  ; Code: jmpq .L_41a79c	 RIP: 41a797	 Bytes: 5
  %loadMem_41a797 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a797 = call %struct.Memory* @routine_jmpq_.L_41a79c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a797, i64 5, i64 5)
  store %struct.Memory* %call_41a797, %struct.Memory** %MEMORY

  br label %block_.L_41a79c

  ; Code: .L_41a79c:	 RIP: 41a79c	 Bytes: 0
block_.L_41a79c:

  ; Code: cmpl $0x0, -0x4048(%rbp)	 RIP: 41a79c	 Bytes: 7
  %loadMem_41a79c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a79c = call %struct.Memory* @routine_cmpl__0x0__MINUS0x4048__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a79c)
  store %struct.Memory* %call_41a79c, %struct.Memory** %MEMORY

  ; Code: je .L_41a7b3	 RIP: 41a7a3	 Bytes: 6
  %loadMem_41a7a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a7a3 = call %struct.Memory* @routine_je_.L_41a7b3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a7a3, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_41a7a3, %struct.Memory** %MEMORY

  %loadBr_41a7a3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a7a3 = icmp eq i8 %loadBr_41a7a3, 1
  br i1 %cmpBr_41a7a3, label %block_.L_41a7b3, label %block_41a7a9

block_41a7a9:
  ; Code: movl $0x0, -0x404c(%rbp)	 RIP: 41a7a9	 Bytes: 10
  %loadMem_41a7a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a7a9 = call %struct.Memory* @routine_movl__0x0__MINUS0x404c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a7a9)
  store %struct.Memory* %call_41a7a9, %struct.Memory** %MEMORY

  ; Code: .L_41a7b3:	 RIP: 41a7b3	 Bytes: 0
  br label %block_.L_41a7b3
block_.L_41a7b3:

  ; Code: movl 0x864500, %eax	 RIP: 41a7b3	 Bytes: 7
  %loadMem_41a7b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a7b3 = call %struct.Memory* @routine_movl_0x864500___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a7b3)
  store %struct.Memory* %call_41a7b3, %struct.Memory** %MEMORY

  ; Code: subl -0x4080(%rbp), %eax	 RIP: 41a7ba	 Bytes: 6
  %loadMem_41a7ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a7ba = call %struct.Memory* @routine_subl_MINUS0x4080__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a7ba)
  store %struct.Memory* %call_41a7ba, %struct.Memory** %MEMORY

  ; Code: movslq -0x3030(%rbp), %rcx	 RIP: 41a7c0	 Bytes: 7
  %loadMem_41a7c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a7c0 = call %struct.Memory* @routine_movslq_MINUS0x3030__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a7c0)
  store %struct.Memory* %call_41a7c0, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x884320(,%rcx,4)	 RIP: 41a7c7	 Bytes: 7
  %loadMem_41a7c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a7c7 = call %struct.Memory* @routine_movl__eax__0x884320___rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a7c7)
  store %struct.Memory* %call_41a7c7, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4197c8	 RIP: 41a7ce	 Bytes: 5
  %loadMem_41a7ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a7ce = call %struct.Memory* @routine_jmpq_.L_4197c8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a7ce, i64 -4102, i64 5)
  store %struct.Memory* %call_41a7ce, %struct.Memory** %MEMORY

  br label %block_.L_4197c8

  ; Code: .L_41a7d3:	 RIP: 41a7d3	 Bytes: 0
block_.L_41a7d3:

  ; Code: cmpl $0x0, -0x4044(%rbp)	 RIP: 41a7d3	 Bytes: 7
  %loadMem_41a7d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a7d3 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x4044__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a7d3)
  store %struct.Memory* %call_41a7d3, %struct.Memory** %MEMORY

  ; Code: je .L_41a889	 RIP: 41a7da	 Bytes: 6
  %loadMem_41a7da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a7da = call %struct.Memory* @routine_je_.L_41a889(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a7da, i8* %BRANCH_TAKEN, i64 175, i64 6, i64 6)
  store %struct.Memory* %call_41a7da, %struct.Memory** %MEMORY

  %loadBr_41a7da = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a7da = icmp eq i8 %loadBr_41a7da, 1
  br i1 %cmpBr_41a7da, label %block_.L_41a889, label %block_41a7e0

block_41a7e0:
  ; Code: cmpl $0x0, 0x886bbc	 RIP: 41a7e0	 Bytes: 8
  %loadMem_41a7e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a7e0 = call %struct.Memory* @routine_cmpl__0x0__0x886bbc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a7e0)
  store %struct.Memory* %call_41a7e0, %struct.Memory** %MEMORY

  ; Code: jne .L_41a889	 RIP: 41a7e8	 Bytes: 6
  %loadMem_41a7e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a7e8 = call %struct.Memory* @routine_jne_.L_41a889(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a7e8, i8* %BRANCH_TAKEN, i64 161, i64 6, i64 6)
  store %struct.Memory* %call_41a7e8, %struct.Memory** %MEMORY

  %loadBr_41a7e8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a7e8 = icmp eq i8 %loadBr_41a7e8, 1
  br i1 %cmpBr_41a7e8, label %block_.L_41a889, label %block_41a7ee

block_41a7ee:
  ; Code: cmpl $0x3, 0x85f154	 RIP: 41a7ee	 Bytes: 8
  %loadMem_41a7ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a7ee = call %struct.Memory* @routine_cmpl__0x3__0x85f154(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a7ee)
  store %struct.Memory* %call_41a7ee, %struct.Memory** %MEMORY

  ; Code: je .L_41a856	 RIP: 41a7f6	 Bytes: 6
  %loadMem_41a7f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a7f6 = call %struct.Memory* @routine_je_.L_41a856(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a7f6, i8* %BRANCH_TAKEN, i64 96, i64 6, i64 6)
  store %struct.Memory* %call_41a7f6, %struct.Memory** %MEMORY

  %loadBr_41a7f6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a7f6 = icmp eq i8 %loadBr_41a7f6, 1
  br i1 %cmpBr_41a7f6, label %block_.L_41a856, label %block_41a7fc

block_41a7fc:
  ; Code: cmpl $0x4, 0x85f154	 RIP: 41a7fc	 Bytes: 8
  %loadMem_41a7fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a7fc = call %struct.Memory* @routine_cmpl__0x4__0x85f154(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a7fc)
  store %struct.Memory* %call_41a7fc, %struct.Memory** %MEMORY

  ; Code: je .L_41a856	 RIP: 41a804	 Bytes: 6
  %loadMem_41a804 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a804 = call %struct.Memory* @routine_je_.L_41a856(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a804, i8* %BRANCH_TAKEN, i64 82, i64 6, i64 6)
  store %struct.Memory* %call_41a804, %struct.Memory** %MEMORY

  %loadBr_41a804 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a804 = icmp eq i8 %loadBr_41a804, 1
  br i1 %cmpBr_41a804, label %block_.L_41a856, label %block_41a80a

block_41a80a:
  ; Code: callq .in_check	 RIP: 41a80a	 Bytes: 5
  %loadMem1_41a80a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41a80a = call %struct.Memory* @routine_callq_.in_check(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41a80a, i64 -69418, i64 5, i64 5)
  store %struct.Memory* %call1_41a80a, %struct.Memory** %MEMORY

  %loadMem2_41a80a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41a80a = load i64, i64* %3
  %call2_41a80a = call %struct.Memory* @sub_4098e0.in_check(%struct.State* %0, i64  %loadPC_41a80a, %struct.Memory* %loadMem2_41a80a)
  store %struct.Memory* %call2_41a80a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41a80f	 Bytes: 3
  %loadMem_41a80f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a80f = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a80f)
  store %struct.Memory* %call_41a80f, %struct.Memory** %MEMORY

  ; Code: je .L_41a846	 RIP: 41a812	 Bytes: 6
  %loadMem_41a812 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a812 = call %struct.Memory* @routine_je_.L_41a846(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a812, i8* %BRANCH_TAKEN, i64 52, i64 6, i64 6)
  store %struct.Memory* %call_41a812, %struct.Memory** %MEMORY

  %loadBr_41a812 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a812 = icmp eq i8 %loadBr_41a812, 1
  br i1 %cmpBr_41a812, label %block_.L_41a846, label %block_41a818

block_41a818:
  ; Code: cmpl $0x1, 0x8661bc	 RIP: 41a818	 Bytes: 8
  %loadMem_41a818 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a818 = call %struct.Memory* @routine_cmpl__0x1__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a818)
  store %struct.Memory* %call_41a818, %struct.Memory** %MEMORY

  ; Code: jne .L_41a836	 RIP: 41a820	 Bytes: 6
  %loadMem_41a820 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a820 = call %struct.Memory* @routine_jne_.L_41a836(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a820, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_41a820, %struct.Memory** %MEMORY

  %loadBr_41a820 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a820 = icmp eq i8 %loadBr_41a820, 1
  br i1 %cmpBr_41a820, label %block_.L_41a836, label %block_41a826

block_41a826:
  ; Code: movl $0x2, 0x866530	 RIP: 41a826	 Bytes: 11
  %loadMem_41a826 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a826 = call %struct.Memory* @routine_movl__0x2__0x866530(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a826)
  store %struct.Memory* %call_41a826, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41a841	 RIP: 41a831	 Bytes: 5
  %loadMem_41a831 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a831 = call %struct.Memory* @routine_jmpq_.L_41a841(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a831, i64 16, i64 5)
  store %struct.Memory* %call_41a831, %struct.Memory** %MEMORY

  br label %block_.L_41a841

  ; Code: .L_41a836:	 RIP: 41a836	 Bytes: 0
block_.L_41a836:

  ; Code: movl $0x3, 0x866530	 RIP: 41a836	 Bytes: 11
  %loadMem_41a836 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a836 = call %struct.Memory* @routine_movl__0x3__0x866530(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a836)
  store %struct.Memory* %call_41a836, %struct.Memory** %MEMORY

  ; Code: .L_41a841:	 RIP: 41a841	 Bytes: 0
  br label %block_.L_41a841
block_.L_41a841:

  ; Code: jmpq .L_41a851	 RIP: 41a841	 Bytes: 5
  %loadMem_41a841 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a841 = call %struct.Memory* @routine_jmpq_.L_41a851(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a841, i64 16, i64 5)
  store %struct.Memory* %call_41a841, %struct.Memory** %MEMORY

  br label %block_.L_41a851

  ; Code: .L_41a846:	 RIP: 41a846	 Bytes: 0
block_.L_41a846:

  ; Code: movl $0x1, 0x866530	 RIP: 41a846	 Bytes: 11
  %loadMem_41a846 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a846 = call %struct.Memory* @routine_movl__0x1__0x866530(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a846)
  store %struct.Memory* %call_41a846, %struct.Memory** %MEMORY

  ; Code: .L_41a851:	 RIP: 41a851	 Bytes: 0
  br label %block_.L_41a851
block_.L_41a851:

  ; Code: jmpq .L_41a884	 RIP: 41a851	 Bytes: 5
  %loadMem_41a851 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a851 = call %struct.Memory* @routine_jmpq_.L_41a884(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a851, i64 51, i64 5)
  store %struct.Memory* %call_41a851, %struct.Memory** %MEMORY

  br label %block_.L_41a884

  ; Code: .L_41a856:	 RIP: 41a856	 Bytes: 0
block_.L_41a856:

  ; Code: cmpl $0x1, 0x8661bc	 RIP: 41a856	 Bytes: 8
  %loadMem_41a856 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a856 = call %struct.Memory* @routine_cmpl__0x1__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a856)
  store %struct.Memory* %call_41a856, %struct.Memory** %MEMORY

  ; Code: jne .L_41a874	 RIP: 41a85e	 Bytes: 6
  %loadMem_41a85e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a85e = call %struct.Memory* @routine_jne_.L_41a874(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a85e, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_41a85e, %struct.Memory** %MEMORY

  %loadBr_41a85e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a85e = icmp eq i8 %loadBr_41a85e, 1
  br i1 %cmpBr_41a85e, label %block_.L_41a874, label %block_41a864

block_41a864:
  ; Code: movl $0x3, 0x866530	 RIP: 41a864	 Bytes: 11
  %loadMem_41a864 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a864 = call %struct.Memory* @routine_movl__0x3__0x866530(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a864)
  store %struct.Memory* %call_41a864, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41a87f	 RIP: 41a86f	 Bytes: 5
  %loadMem_41a86f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a86f = call %struct.Memory* @routine_jmpq_.L_41a87f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a86f, i64 16, i64 5)
  store %struct.Memory* %call_41a86f, %struct.Memory** %MEMORY

  br label %block_.L_41a87f

  ; Code: .L_41a874:	 RIP: 41a874	 Bytes: 0
block_.L_41a874:

  ; Code: movl $0x2, 0x866530	 RIP: 41a874	 Bytes: 11
  %loadMem_41a874 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a874 = call %struct.Memory* @routine_movl__0x2__0x866530(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a874)
  store %struct.Memory* %call_41a874, %struct.Memory** %MEMORY

  ; Code: .L_41a87f:	 RIP: 41a87f	 Bytes: 0
  br label %block_.L_41a87f
block_.L_41a87f:

  ; Code: jmpq .L_41a884	 RIP: 41a87f	 Bytes: 5
  %loadMem_41a87f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a87f = call %struct.Memory* @routine_jmpq_.L_41a884(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a87f, i64 5, i64 5)
  store %struct.Memory* %call_41a87f, %struct.Memory** %MEMORY

  br label %block_.L_41a884

  ; Code: .L_41a884:	 RIP: 41a884	 Bytes: 0
block_.L_41a884:

  ; Code: jmpq .L_41a907	 RIP: 41a884	 Bytes: 5
  %loadMem_41a884 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a884 = call %struct.Memory* @routine_jmpq_.L_41a907(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a884, i64 131, i64 5)
  store %struct.Memory* %call_41a884, %struct.Memory** %MEMORY

  br label %block_.L_41a907

  ; Code: .L_41a889:	 RIP: 41a889	 Bytes: 0
block_.L_41a889:

  ; Code: cmpl $0x0, 0x886bbc	 RIP: 41a889	 Bytes: 8
  %loadMem_41a889 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a889 = call %struct.Memory* @routine_cmpl__0x0__0x886bbc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a889)
  store %struct.Memory* %call_41a889, %struct.Memory** %MEMORY

  ; Code: jne .L_41a902	 RIP: 41a891	 Bytes: 6
  %loadMem_41a891 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a891 = call %struct.Memory* @routine_jne_.L_41a902(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a891, i8* %BRANCH_TAKEN, i64 113, i64 6, i64 6)
  store %struct.Memory* %call_41a891, %struct.Memory** %MEMORY

  %loadBr_41a891 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a891 = icmp eq i8 %loadBr_41a891, 1
  br i1 %cmpBr_41a891, label %block_.L_41a902, label %block_41a897

block_41a897:
  ; Code: cmpl $0x64, 0x866790	 RIP: 41a897	 Bytes: 8
  %loadMem_41a897 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a897 = call %struct.Memory* @routine_cmpl__0x64__0x866790(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a897)
  store %struct.Memory* %call_41a897, %struct.Memory** %MEMORY

  ; Code: jle .L_41a8fd	 RIP: 41a89f	 Bytes: 6
  %loadMem_41a89f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a89f = call %struct.Memory* @routine_jle_.L_41a8fd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a89f, i8* %BRANCH_TAKEN, i64 94, i64 6, i64 6)
  store %struct.Memory* %call_41a89f, %struct.Memory** %MEMORY

  %loadBr_41a89f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a89f = icmp eq i8 %loadBr_41a89f, 1
  br i1 %cmpBr_41a89f, label %block_.L_41a8fd, label %block_41a8a5

block_41a8a5:
  ; Code: movl $0x4, 0x866530	 RIP: 41a8a5	 Bytes: 11
  %loadMem_41a8a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a8a5 = call %struct.Memory* @routine_movl__0x4__0x866530(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a8a5)
  store %struct.Memory* %call_41a8a5, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x86450c	 RIP: 41a8b0	 Bytes: 11
  %loadMem_41a8b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a8b0 = call %struct.Memory* @routine_movl__0x0__0x86450c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a8b0)
  store %struct.Memory* %call_41a8b0, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rax	 RIP: 41a8bb	 Bytes: 8
  %loadMem_41a8bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a8bb = call %struct.Memory* @routine_movslq_0x886bc0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a8bb)
  store %struct.Memory* %call_41a8bb, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x86b8b0(,%rax,4)	 RIP: 41a8c3	 Bytes: 11
  %loadMem_41a8c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a8c3 = call %struct.Memory* @routine_movl__0x0__0x86b8b0___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a8c3)
  store %struct.Memory* %call_41a8c3, %struct.Memory** %MEMORY

  ; Code: movq 0x62db08, %rax	 RIP: 41a8ce	 Bytes: 8
  %loadMem_41a8ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a8ce = call %struct.Memory* @routine_movq_0x62db08___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a8ce)
  store %struct.Memory* %call_41a8ce, %struct.Memory** %MEMORY

  ; Code: movq -0x4090(%rbp), %rcx	 RIP: 41a8d6	 Bytes: 7
  %loadMem_41a8d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a8d6 = call %struct.Memory* @routine_movq_MINUS0x4090__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a8d6)
  store %struct.Memory* %call_41a8d6, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rcx)	 RIP: 41a8dd	 Bytes: 3
  %loadMem_41a8dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a8dd = call %struct.Memory* @routine_movq__rax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a8dd)
  store %struct.Memory* %call_41a8dd, %struct.Memory** %MEMORY

  ; Code: movq 0x62db10, %rax	 RIP: 41a8e0	 Bytes: 8
  %loadMem_41a8e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a8e0 = call %struct.Memory* @routine_movq_0x62db10___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a8e0)
  store %struct.Memory* %call_41a8e0, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x8(%rcx)	 RIP: 41a8e8	 Bytes: 4
  %loadMem_41a8e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a8e8 = call %struct.Memory* @routine_movq__rax__0x8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a8e8)
  store %struct.Memory* %call_41a8e8, %struct.Memory** %MEMORY

  ; Code: movq 0x62db18, %rax	 RIP: 41a8ec	 Bytes: 8
  %loadMem_41a8ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a8ec = call %struct.Memory* @routine_movq_0x62db18___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a8ec)
  store %struct.Memory* %call_41a8ec, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x10(%rcx)	 RIP: 41a8f4	 Bytes: 4
  %loadMem_41a8f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a8f4 = call %struct.Memory* @routine_movq__rax__0x10__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a8f4)
  store %struct.Memory* %call_41a8f4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41a92e	 RIP: 41a8f8	 Bytes: 5
  %loadMem_41a8f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a8f8 = call %struct.Memory* @routine_jmpq_.L_41a92e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a8f8, i64 54, i64 5)
  store %struct.Memory* %call_41a8f8, %struct.Memory** %MEMORY

  br label %block_.L_41a92e

  ; Code: .L_41a8fd:	 RIP: 41a8fd	 Bytes: 0
block_.L_41a8fd:

  ; Code: jmpq .L_41a902	 RIP: 41a8fd	 Bytes: 5
  %loadMem_41a8fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a8fd = call %struct.Memory* @routine_jmpq_.L_41a902(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a8fd, i64 5, i64 5)
  store %struct.Memory* %call_41a8fd, %struct.Memory** %MEMORY

  br label %block_.L_41a902

  ; Code: .L_41a902:	 RIP: 41a902	 Bytes: 0
block_.L_41a902:

  ; Code: jmpq .L_41a907	 RIP: 41a902	 Bytes: 5
  %loadMem_41a902 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a902 = call %struct.Memory* @routine_jmpq_.L_41a907(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a902, i64 5, i64 5)
  store %struct.Memory* %call_41a902, %struct.Memory** %MEMORY

  br label %block_.L_41a907

  ; Code: .L_41a907:	 RIP: 41a907	 Bytes: 0
block_.L_41a907:

  ; Code: movq -0x3028(%rbp), %rax	 RIP: 41a907	 Bytes: 7
  %loadMem_41a907 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a907 = call %struct.Memory* @routine_movq_MINUS0x3028__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a907)
  store %struct.Memory* %call_41a907, %struct.Memory** %MEMORY

  ; Code: movq -0x4090(%rbp), %rcx	 RIP: 41a90e	 Bytes: 7
  %loadMem_41a90e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a90e = call %struct.Memory* @routine_movq_MINUS0x4090__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a90e)
  store %struct.Memory* %call_41a90e, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rcx)	 RIP: 41a915	 Bytes: 3
  %loadMem_41a915 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a915 = call %struct.Memory* @routine_movq__rax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a915)
  store %struct.Memory* %call_41a915, %struct.Memory** %MEMORY

  ; Code: movq -0x3020(%rbp), %rax	 RIP: 41a918	 Bytes: 7
  %loadMem_41a918 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a918 = call %struct.Memory* @routine_movq_MINUS0x3020__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a918)
  store %struct.Memory* %call_41a918, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x8(%rcx)	 RIP: 41a91f	 Bytes: 4
  %loadMem_41a91f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a91f = call %struct.Memory* @routine_movq__rax__0x8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a91f)
  store %struct.Memory* %call_41a91f, %struct.Memory** %MEMORY

  ; Code: movq -0x3018(%rbp), %rax	 RIP: 41a923	 Bytes: 7
  %loadMem_41a923 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a923 = call %struct.Memory* @routine_movq_MINUS0x3018__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a923)
  store %struct.Memory* %call_41a923, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x10(%rcx)	 RIP: 41a92a	 Bytes: 4
  %loadMem_41a92a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a92a = call %struct.Memory* @routine_movq__rax__0x10__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a92a)
  store %struct.Memory* %call_41a92a, %struct.Memory** %MEMORY

  ; Code: .L_41a92e:	 RIP: 41a92e	 Bytes: 0
  br label %block_.L_41a92e
block_.L_41a92e:

  ; Code: movq -0x4088(%rbp), %rax	 RIP: 41a92e	 Bytes: 7
  %loadMem_41a92e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a92e = call %struct.Memory* @routine_movq_MINUS0x4088__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a92e)
  store %struct.Memory* %call_41a92e, %struct.Memory** %MEMORY

  ; Code: addq $0x40c0, %rsp	 RIP: 41a935	 Bytes: 7
  %loadMem_41a935 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a935 = call %struct.Memory* @routine_addq__0x40c0___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a935)
  store %struct.Memory* %call_41a935, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 41a93c	 Bytes: 1
  %loadMem_41a93c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a93c = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a93c)
  store %struct.Memory* %call_41a93c, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 41a93d	 Bytes: 1
  %loadMem_41a93d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a93d = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a93d)
  store %struct.Memory* %call_41a93d, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_41a93d
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

define %struct.Memory* @routine_subq__0x40c0___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 16576)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__rdi___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12)
  ret %struct.Memory* %15
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__esi__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__edx__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 8
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__ecx__MINUS0xc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12
  %14 = load i32, i32* %ECX
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

define %struct.Memory* @routine_movq_0x62db08___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 ptrtoint( %G_0x62db08_type* @G_0x62db08 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__r8__MINUS0x3028__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12328
  %14 = load i64, i64* %R8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_0x62db10___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 ptrtoint( %G_0x62db10_type* @G_0x62db10 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__r8__MINUS0x3020__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12320
  %14 = load i64, i64* %R8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_0x62db18___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 ptrtoint( %G_0x62db18_type* @G_0x62db18 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__r8__MINUS0x3018__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12312
  %14 = load i64, i64* %R8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
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

define %struct.Memory* @routine_movl__0xfff0bdc0__MINUS0x3038__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 12344
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -1000000)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x407c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 16508
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
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

define %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx__MINUS0x4050__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16464
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
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


define %struct.Memory* @routine_movl__ecx__MINUS0x4054__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16468
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__0x0__MINUS0x302c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 12332
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x1__MINUS0x4044__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 16452
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x1__0x886bc0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x886bc0_type* @G_0x886bc0 to i64), i64 1)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x1__0x639110(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x639110_type* @G_0x639110 to i64), i64 1)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x0__0x866788(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x866788_type* @G_0x866788 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x0__0x8661dc(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x8661dc_type* @G_0x8661dc to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x1__MINUS0x404c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 16460
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0xfff0bdc0__0x86450c(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x86450c_type* @G_0x86450c to i64), i64 -1000000)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl_0x864500___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x864500_type* @G_0x864500 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movl__ecx__0x864500(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x864500_type* @G_0x864500 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq__rax__MINUS0x4088__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16520
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rdi__MINUS0x4090__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16528
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
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

define %struct.Memory* @routine_callq_.is_draw(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_je_.L_419534(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x5__0x866530(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x866530_type* @G_0x866530 to i64), i64 5)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x0__0x86450c(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x86450c_type* @G_0x86450c to i64), i64 0)
  ret %struct.Memory* %8
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_0x886bc0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x886bc0_type* @G_0x886bc0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x0__0x86b8b0___rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8829104
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 0)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movq_0x62db08___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x62db08_type* @G_0x62db08 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_MINUS0x4090__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16528
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movq_0x62db10___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x62db10_type* @G_0x62db10 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__rax__0x8__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_0x62db18___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x62db18_type* @G_0x62db18 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__rax__0x10__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_41a92e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_0x886bc0___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x886bc0_type* @G_0x886bc0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movslq_0x886bc0___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x886bc0_type* @G_0x886bc0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__eax__0x86b8b0___rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8829104
  %15 = load i32, i32* %EAX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movl_0x633b40___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x633b40_type* @G_0x633b40 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_0x62ea38___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G_0x62ea38_type* @G_0x62ea38 to i64))
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_addl_0x886bc0___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 ptrtoint( %G_0x886bc0_type* @G_0x886bc0 to i64))
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_movl__eax__0x84a3d0___rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8692688
  %15 = load i32, i32* %EAX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_callq_.in_check(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__eax__MINUS0x4078__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16504
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x4078__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 16504
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_41959e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_0x62e9f8___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x62e9f8_type* @G_0x62e9f8 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movl__eax__0x62e9f8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62e9f8_type* @G_0x62e9f8 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x4078__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16504
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__0x880660___rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8914528
  %15 = load i32, i32* %EAX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}




define %struct.Memory* @routine_movl__0x0__0x8a05c0___rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 9045440
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 0)
  ret %struct.Memory* %14
}




define %struct.Memory* @routine_movl__0x0__0x8801a0___rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 8913312
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 0)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_cmpl__0x4__0x85f154(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x85f154_type* @G_0x85f154 to i64), i64 4)
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

define %struct.Memory* @routine_jne_.L_41977b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12304
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__0x0__0x62e9e0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62e9e0_type* @G_0x62e9e0 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x1__0x85f164(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x85f164_type* @G_0x85f164 to i64), i64 1)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_callq_.gen(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_0x85f150___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x85f150_type* @G_0x85f150 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__eax__MINUS0x302c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12332
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__0x0__0x85f164(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x85f164_type* @G_0x85f164 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_cmpl__0x0__MINUS0x302c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 12332
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_4196b9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x0__MINUS0x3030__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 12336
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x3030__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12336
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

define %struct.Memory* @routine_cmpl_MINUS0x302c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 12332
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
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

define %struct.Memory* @routine_jge_.L_4196b4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x3030__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12336
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.make(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl_MINUS0x4078__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16504
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.check_legal(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_41968e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_0x62e9e0___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x62e9e0_type* @G_0x62e9e0 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__eax__0x62e9e0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62e9e0_type* @G_0x62e9e0 to i64), i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_callq_.unmake(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__eax__MINUS0x3030__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12336
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_419638(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_4196b9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_cmpl__0x0__0x62e9e0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62e9e0_type* @G_0x62e9e0 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jne_.L_419776(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


















define %struct.Memory* @routine_jge_.L_419771(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


















define %struct.Memory* @routine_je_.L_41974b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_jmpq_.L_4196f5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_419776(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_419794(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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









define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0xffffffff___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R8D to i64*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 4294967295)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_leaq_MINUS0x4040__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16448
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x3840__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 14400
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl__eax__0x62ea0c(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62ea0c_type* @G_0x62ea0c to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x302c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12332
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.order_moves(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_leaq_MINUS0x3030__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12336
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x302c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12332
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.remove_one(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_41a7d3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__0x62e51c(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62e51c_type* @G_0x62e51c to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jne_.L_41982e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x3030__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12336
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl__0x0__0x886bf0___rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8940528
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 0)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_je_.L_41982e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_419829(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x3__0x85f154(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x85f154_type* @G_0x85f154 to i64), i64 3)
  ret %struct.Memory* %8
}




define %struct.Memory* @routine_jmpq_.L_4197c8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x864510___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x864510_type* @G__0x864510 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x0__MINUS0x4048__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 16456
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_0x633b40___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0x633b40_type* @G_0x633b40 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_0x62ea38___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x62ea38_type* @G_0x62ea38 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_addl_0x886bc0___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 ptrtoint( %G_0x886bc0_type* @G_0x886bc0 to i64))
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_movl__esi__0x84a3d0___rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8692688
  %15 = load i32, i32* %ESI
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movl_0x886bc0___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x886bc0_type* @G_0x886bc0 to i64))
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 24)
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


define %struct.Memory* @routine_movslq_MINUS0x3030__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12336
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movq___r8____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movq__rdx____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x8__r8____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rdx__0x8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_0x10__r8____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rdx__0x10__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl__ecx__MINUS0x4080__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16512
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}










define %struct.Memory* @routine_je_.L_41a009(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movq__0x886bd0___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x886bd0_type* @G__0x886bd0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12304
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x407c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16508
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl__0x1___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__esi__MINUS0x407c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16508
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_0x62ea0c___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0x62ea0c_type* @G_0x62ea0c to i64))
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

define %struct.Memory* @routine_subl_MINUS0x407c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 16508
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__esi__0x886a5c(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x886a5c_type* @G_0x886a5c to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movslq_MINUS0x3030__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12336
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 24)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_movq___rax____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movq__rcx____rsp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = load i64, i64* %RCX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x8__rax____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rcx__0x8__rsp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = add i64 %12, 8
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movq__rax__0x10__rsp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_callq_.comp_to_san(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_callq_.f_in_check(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_cmpl__0x1__MINUS0x404c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 16460
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_4199c5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x2__0x633b50(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x633b50_type* @G_0x633b50 to i64), i64 2)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jge_.L_419c66(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_subl_MINUS0x4054__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 16468
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_subl_MINUS0x4050__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 16464
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_subl__0x1___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__ecx___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__esi__MINUS0x4094__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16532
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_movl_MINUS0x4094__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16532
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_callq_.search(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
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

define %struct.Memory* @routine_subl__eax___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__ecx__MINUS0x3038__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12344
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_cmpl__0x0__0x866788(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x866788_type* @G_0x866788 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jne_.L_419c61(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__0x86679c(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x86679c_type* @G_0x86679c to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jne_.L_419a28(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__0x8a2a04(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x8a2a04_type* @G_0x8a2a04 to i64), i64 0)
  ret %struct.Memory* %8
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

define %struct.Memory* @routine_jl_.L_419c61(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x3038__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12344
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl_MINUS0x4054__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 16468
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jl_.L_419a70(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x3038__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12344
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
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


define %struct.Memory* @routine_callq_.post_fh_thinking(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_419bec(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_cmpl_MINUS0x4050__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 16464
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

define %struct.Memory* @routine_jg_.L_419ab5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__0x1__0x8644f4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x8644f4_type* @G_0x8644f4 to i64), i64 1)
  ret %struct.Memory* %8
}












define %struct.Memory* @routine_callq_.post_fl_thinking(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_419be7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movq__0x63ae50___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G__0x63ae50_type* @G__0x63ae50 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_0x886bc0___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G_0x886bc0_type* @G_0x886bc0 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movslq__edx___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_imulq__0x1c20___rsi___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 7200)
  ret %struct.Memory* %12
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








define %struct.Memory* @routine_imulq__0x18___rsi___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 24)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movslq_MINUS0x3030__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12336
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addq__rsi___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %13)
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


define %struct.Memory* @routine_movq__rsi____rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x8__rax____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rsi__0x8__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_movl__edx__MINUS0x3034__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12340
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x3034__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12340
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_cmpl_0x86b8b0___rcx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = mul i64 %14, 4
  %16 = add i64 %15, 8829104
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_jge_.L_419bb9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x63ae50___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x63ae50_type* @G__0x63ae50 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_imulq__0x1c20___rdx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 7200)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_addq__rdx___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %RDX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x3034__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12340
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movslq_0x886bc0___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G_0x886bc0_type* @G_0x886bc0 to i64))
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


define %struct.Memory* @routine_movq__rdx____rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %RDX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x8__rax____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rdx__0x8__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RSI
  %13 = add i64 %12, 8
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq__rax__0x10__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movl__eax__MINUS0x3034__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12340
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_419b22(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl_0x86b8b0___rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 8829104
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movslq__edx___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx__0x86b8b0___rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8829104
  %15 = load i32, i32* %ECX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}




define %struct.Memory* @routine_callq_.post_thinking(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_cmpl_0x86450c___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0x86450c_type* @G_0x86450c to i64))
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

define %struct.Memory* @routine_jle_.L_419c5c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_419c5c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x3038__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12344
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx__0x86450c(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x86450c_type* @G_0x86450c to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x3030__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12336
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx__0x8825f8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x8825f8_type* @G_0x8825f8 to i64), i64 %10)
  ret %struct.Memory* %13
}










define %struct.Memory* @routine_movq__rdx__MINUS0x3028__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12328
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq__rdx__MINUS0x3020__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12320
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq__rax__MINUS0x3018__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12312
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jmpq_.L_419c61(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_419f49(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_subl_MINUS0x4050__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 16464
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}














define %struct.Memory* @routine_movl__esi__MINUS0x4098__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16536
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_MINUS0x4098__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16536
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}
















define %struct.Memory* @routine_jle_.L_419f01(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_419f01(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_419f01(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_callq_.post_fail_thinking(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__edi___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_subl_MINUS0x4054__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 16468
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__edi___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i32, i32* %EDI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_subl_MINUS0x4050__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i32, i32* %R8D
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %RBP
  %16 = sub i64 %15, 16464
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movl_MINUS0xc__rbp____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_subl__0x1___r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R9D to i64*
  %10 = load i32, i32* %R9D
  %11 = zext i32 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 %11, i64 1)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movl__edi__MINUS0x409c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16540
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__edx___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__r8d___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R8D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__r9d___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R9D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x409c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16540
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}














define %struct.Memory* @routine_jle_.L_419efc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_419efc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__0x0__0x8644f4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x8644f4_type* @G_0x8644f4 to i64), i64 0)
  ret %struct.Memory* %8
}






























define %struct.Memory* @routine_cmpl_MINUS0x4054__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 16468
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_419ef7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jl_.L_419ef7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






















































define %struct.Memory* @routine_jge_.L_419ed4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















































define %struct.Memory* @routine_jmpq_.L_419e3d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_jmpq_.L_419efc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_419f01(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_jl_.L_419f44(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_419f44(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






















define %struct.Memory* @routine_jle_.L_419fb9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_419fb9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
































define %struct.Memory* @routine_je_.L_419ff5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0xfff0bdc0__0x86450c(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x86450c_type* @G_0x86450c to i64), i64 -1000000)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jne_.L_419ff5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x4044__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 16452
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_419ff0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x1__0x8661dc(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x8661dc_type* @G_0x8661dc to i64), i64 1)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jmpq_.L_419ff5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl__0x0__MINUS0x4044__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 16452
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x1__MINUS0x4048__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 16456
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}










define %struct.Memory* @routine_je_.L_41a055(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_MINUS0x3028__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12328
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movq_MINUS0x3020__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12320
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq_MINUS0x3018__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12312
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_jle_.L_41a79c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x4048__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 16456
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_41a79c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x884b20___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x884b20_type* @G__0x884b20 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12304
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl___rcx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12)
  ret %struct.Memory* %15
}








define %struct.Memory* @routine_cmpl___rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jne_.L_41a13e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_movl_0x4__rcx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_cmpl_0x4__rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RAX
  %15 = add i64 %14, 4
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}














define %struct.Memory* @routine_movl_0xc__rcx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_cmpl_0xc__rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RAX
  %15 = add i64 %14, 12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl_0x62e530___rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 6481200
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl__ecx__0x62e530___rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 6481200
  %15 = load i32, i32* %ECX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_jmpq_.L_41a563(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x639220___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x639220_type* @G__0x639220 to i64))
  ret %struct.Memory* %11
}




















define %struct.Memory* @routine_jne_.L_41a320(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















































define %struct.Memory* @routine_movl_0x638c60___rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 6524000
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl__ecx__0x638c60___rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 6524000
  %15 = load i32, i32* %ECX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}








define %struct.Memory* @routine_cmpl_0x62e530___rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RAX
  %15 = mul i64 %14, 4
  %16 = add i64 %15, 6481200
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_jle_.L_41a31b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq__0x884b20___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G__0x884b20_type* @G__0x884b20 to i64))
  ret %struct.Memory* %11
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




define %struct.Memory* @routine_movq___rsi____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movq__rdx__MINUS0x4070__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16496
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_0x8__rsi____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RSI
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rdx__MINUS0x4068__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16488
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_0x10__rsi____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RSI
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rdx__MINUS0x4060__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16480
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


















define %struct.Memory* @routine_movq__rdx____rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq__rdx__0x8__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq__rdx__0x10__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_movq_MINUS0x4070__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16496
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rcx____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x4068__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16488
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rcx__0x8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0x4060__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16480
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rcx__0x10__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl_0x62e530___rax_4____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 6481200
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__edi__MINUS0x4074__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16500
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_0x638c60___rax_4____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 6524000
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl__edi__0x62e530___rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 6481200
  %15 = load i32, i32* %EDI
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movl_MINUS0x4074__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16500
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__edi__0x638c60___rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 6524000
  %15 = load i32, i32* %EDI
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_jmpq_.L_41a55e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x882600___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x882600_type* @G__0x882600 to i64))
  ret %struct.Memory* %11
}




















define %struct.Memory* @routine_jne_.L_41a502(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















































define %struct.Memory* @routine_movl_0x881e00___rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 8920576
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl__ecx__0x881e00___rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8920576
  %15 = load i32, i32* %ECX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}








define %struct.Memory* @routine_cmpl_0x638c60___rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RAX
  %15 = mul i64 %14, 4
  %16 = add i64 %15, 6524000
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_jle_.L_41a4fd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq__0x639220___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G__0x639220_type* @G__0x639220 to i64))
  ret %struct.Memory* %11
}










































































define %struct.Memory* @routine_movl_0x881e00___rax_4____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8920576
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %14)
  ret %struct.Memory* %17
}










define %struct.Memory* @routine_movl__edi__0x881e00___rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8920576
  %15 = load i32, i32* %EDI
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_jmpq_.L_41a559(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movq__0x882600___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G__0x882600_type* @G__0x882600 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__0x1__0x881e00___rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8920576
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 1)
  ret %struct.Memory* %14
}


































define %struct.Memory* @routine_movq__0x86bda0___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x86bda0_type* @G__0x86bda0 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movslq___rdi____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_imulq__0x240___rsi___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 576)
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










define %struct.Memory* @routine_movslq_0x4__rdi____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl___rdx__rsi_4____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = bitcast i32* %R8D to i64*
  %16 = load i64, i64* %RDX
  %17 = load i64, i64* %RSI
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %15, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_addl__0x1___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R8D to i64*
  %10 = load i32, i32* %R8D
  %11 = zext i32 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 %11, i64 1)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movl__r8d____rdx__rsi_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RSI
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %R8D
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}


define %struct.Memory* @routine_movl_MINUS0x3038__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 12344
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__r8d__MINUS0x4050__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16464
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




















define %struct.Memory* @routine_movq__rdx__MINUS0x3018__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12312
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl_MINUS0x3030__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 12336
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__r8d__0x8825f8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8D = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %R8D
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x8825f8_type* @G_0x8825f8 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x4050__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 16464
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__r8d__0x86450c(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8D = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %R8D
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x86450c_type* @G_0x86450c to i64), i64 %10)
  ret %struct.Memory* %13
}
































define %struct.Memory* @routine_movl_0x886bc0___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R8D to i64*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 ptrtoint( %G_0x886bc0_type* @G_0x886bc0 to i64))
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movl__r8d__MINUS0x3034__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12340
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}










define %struct.Memory* @routine_cmpl_0x86b8b0___rdx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RDX
  %15 = mul i64 %14, 4
  %16 = add i64 %15, 8829104
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_jge_.L_41a70e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_imulq__0x1c20___rcx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 7200)
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


define %struct.Memory* @routine_movslq_MINUS0x3034__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12340
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl_0x886bc0___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0x886bc0_type* @G_0x886bc0 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movslq__esi___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}














define %struct.Memory* @routine_movq__rcx____rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq__rcx__0x8__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq__rax__0x10__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_jmpq_.L_41a672(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_0x86b8b0___rcx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 8829104
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movl_0x86450c___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x86450c_type* @G_0x86450c to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_jl_.L_41a770(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_je_.L_41a797(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jl_.L_41a797(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x4050__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16464
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jmpq_.L_41a79c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_je_.L_41a7b3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x0__MINUS0x404c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 16460
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_0x864500___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x864500_type* @G_0x864500 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_subl_MINUS0x4080__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 16512
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl__eax__0x884320___rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8930080
  %15 = load i32, i32* %EAX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}






define %struct.Memory* @routine_je_.L_41a889(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__0x886bbc(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x886bbc_type* @G_0x886bbc to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jne_.L_41a889(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_41a856(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_je_.L_41a846(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x1__0x8661bc(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x8661bc_type* @G_0x8661bc to i64), i64 1)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jne_.L_41a836(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x2__0x866530(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x866530_type* @G_0x866530 to i64), i64 2)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jmpq_.L_41a841(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl__0x3__0x866530(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x866530_type* @G_0x866530 to i64), i64 3)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jmpq_.L_41a851(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl__0x1__0x866530(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x866530_type* @G_0x866530 to i64), i64 1)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jmpq_.L_41a884(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jne_.L_41a874(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jmpq_.L_41a87f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_jmpq_.L_41a907(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jne_.L_41a902(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x64__0x866790(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x866790_type* @G_0x866790 to i64), i64 100)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jle_.L_41a8fd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x4__0x866530(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x866530_type* @G_0x866530 to i64), i64 4)
  ret %struct.Memory* %8
}
























define %struct.Memory* @routine_jmpq_.L_41a902(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


















define %struct.Memory* @routine_movq_MINUS0x4088__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16520
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
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

define %struct.Memory* @routine_addq__0x40c0___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 16576)
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

