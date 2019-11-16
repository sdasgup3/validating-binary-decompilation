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
%G_0x6cb8f8_type = type <{ [8 x i8] }>
@G_0x6cb8f8= global %G_0x6cb8f8_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6cb900_type = type <{ [8 x i8] }>
@G_0x6cb900= global %G_0x6cb900_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @CalculateOffsetParam(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .CalculateOffsetParam:	 RIP: 47b860	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 47b860	 Bytes: 1
  %loadMem_47b860 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b860 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b860)
  store %struct.Memory* %call_47b860, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 47b861	 Bytes: 3
  %loadMem_47b861 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b861 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b861)
  store %struct.Memory* %call_47b861, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 47b864	 Bytes: 8
  %loadMem_47b864 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b864 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b864)
  store %struct.Memory* %call_47b864, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xe00(%rax)	 RIP: 47b86c	 Bytes: 7
  %loadMem_47b86c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b86c = call %struct.Memory* @routine_cmpl__0x0__0xe00__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b86c)
  store %struct.Memory* %call_47b86c, %struct.Memory** %MEMORY

  ; Code: je .L_47bb30	 RIP: 47b873	 Bytes: 6
  %loadMem_47b873 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b873 = call %struct.Memory* @routine_je_.L_47bb30(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b873, i8* %BRANCH_TAKEN, i64 701, i64 6, i64 6)
  store %struct.Memory* %call_47b873, %struct.Memory** %MEMORY

  %loadBr_47b873 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47b873 = icmp eq i8 %loadBr_47b873, 1
  br i1 %cmpBr_47b873, label %block_.L_47bb30, label %block_47b879

block_47b879:
  ; Code: movl $0x0, -0xc(%rbp)	 RIP: 47b879	 Bytes: 7
  %loadMem_47b879 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b879 = call %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b879)
  store %struct.Memory* %call_47b879, %struct.Memory** %MEMORY

  ; Code: .L_47b880:	 RIP: 47b880	 Bytes: 0
  br label %block_.L_47b880
block_.L_47b880:

  ; Code: cmpl $0xd, -0xc(%rbp)	 RIP: 47b880	 Bytes: 4
  %loadMem_47b880 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b880 = call %struct.Memory* @routine_cmpl__0xd__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b880)
  store %struct.Memory* %call_47b880, %struct.Memory** %MEMORY

  ; Code: jge .L_47bb2b	 RIP: 47b884	 Bytes: 6
  %loadMem_47b884 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b884 = call %struct.Memory* @routine_jge_.L_47bb2b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b884, i8* %BRANCH_TAKEN, i64 679, i64 6, i64 6)
  store %struct.Memory* %call_47b884, %struct.Memory** %MEMORY

  %loadBr_47b884 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47b884 = icmp eq i8 %loadBr_47b884, 1
  br i1 %cmpBr_47b884, label %block_.L_47bb2b, label %block_47b88a

block_47b88a:
  ; Code: movl -0xc(%rbp), %eax	 RIP: 47b88a	 Bytes: 3
  %loadMem_47b88a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b88a = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b88a)
  store %struct.Memory* %call_47b88a, %struct.Memory** %MEMORY

  ; Code: addl $0xf, %eax	 RIP: 47b88d	 Bytes: 3
  %loadMem_47b88d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b88d = call %struct.Memory* @routine_addl__0xf___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b88d)
  store %struct.Memory* %call_47b88d, %struct.Memory** %MEMORY

  ; Code: subl $0xa, %eax	 RIP: 47b890	 Bytes: 3
  %loadMem_47b890 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b890 = call %struct.Memory* @routine_subl__0xa___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b890)
  store %struct.Memory* %call_47b890, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 47b893	 Bytes: 3
  %loadMem_47b893 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b893 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b893)
  store %struct.Memory* %call_47b893, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x8(%rbp)	 RIP: 47b896	 Bytes: 7
  %loadMem_47b896 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b896 = call %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b896)
  store %struct.Memory* %call_47b896, %struct.Memory** %MEMORY

  ; Code: .L_47b89d:	 RIP: 47b89d	 Bytes: 0
  br label %block_.L_47b89d
block_.L_47b89d:

  ; Code: cmpl $0x4, -0x8(%rbp)	 RIP: 47b89d	 Bytes: 4
  %loadMem_47b89d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b89d = call %struct.Memory* @routine_cmpl__0x4__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b89d)
  store %struct.Memory* %call_47b89d, %struct.Memory** %MEMORY

  ; Code: jge .L_47bb18	 RIP: 47b8a1	 Bytes: 6
  %loadMem_47b8a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b8a1 = call %struct.Memory* @routine_jge_.L_47bb18(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b8a1, i8* %BRANCH_TAKEN, i64 631, i64 6, i64 6)
  store %struct.Memory* %call_47b8a1, %struct.Memory** %MEMORY

  %loadBr_47b8a1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47b8a1 = icmp eq i8 %loadBr_47b8a1, 1
  br i1 %cmpBr_47b8a1, label %block_.L_47bb18, label %block_47b8a7

block_47b8a7:
  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 47b8a7	 Bytes: 7
  %loadMem_47b8a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b8a7 = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b8a7)
  store %struct.Memory* %call_47b8a7, %struct.Memory** %MEMORY

  ; Code: .L_47b8ae:	 RIP: 47b8ae	 Bytes: 0
  br label %block_.L_47b8ae
block_.L_47b8ae:

  ; Code: cmpl $0x4, -0x4(%rbp)	 RIP: 47b8ae	 Bytes: 4
  %loadMem_47b8ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b8ae = call %struct.Memory* @routine_cmpl__0x4__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b8ae)
  store %struct.Memory* %call_47b8ae, %struct.Memory** %MEMORY

  ; Code: jge .L_47bb05	 RIP: 47b8b2	 Bytes: 6
  %loadMem_47b8b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b8b2 = call %struct.Memory* @routine_jge_.L_47bb05(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b8b2, i8* %BRANCH_TAKEN, i64 595, i64 6, i64 6)
  store %struct.Memory* %call_47b8b2, %struct.Memory** %MEMORY

  %loadBr_47b8b2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47b8b2 = icmp eq i8 %loadBr_47b8b2, 1
  br i1 %cmpBr_47b8b2, label %block_.L_47bb05, label %block_47b8b8

block_47b8b8:
  ; Code: movl -0x4(%rbp), %eax	 RIP: 47b8b8	 Bytes: 3
  %loadMem_47b8b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b8b8 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b8b8)
  store %struct.Memory* %call_47b8b8, %struct.Memory** %MEMORY

  ; Code: shll $0x2, %eax	 RIP: 47b8bb	 Bytes: 3
  %loadMem_47b8bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b8bb = call %struct.Memory* @routine_shll__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b8bb)
  store %struct.Memory* %call_47b8bb, %struct.Memory** %MEMORY

  ; Code: addl -0x8(%rbp), %eax	 RIP: 47b8be	 Bytes: 3
  %loadMem_47b8be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b8be = call %struct.Memory* @routine_addl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b8be)
  store %struct.Memory* %call_47b8be, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x10(%rbp)	 RIP: 47b8c1	 Bytes: 3
  %loadMem_47b8c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b8c1 = call %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b8c1)
  store %struct.Memory* %call_47b8c1, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 47b8c4	 Bytes: 8
  %loadMem_47b8c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b8c4 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b8c4)
  store %struct.Memory* %call_47b8c4, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x18(%rcx)	 RIP: 47b8cc	 Bytes: 4
  %loadMem_47b8cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b8cc = call %struct.Memory* @routine_cmpl__0x2__0x18__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b8cc)
  store %struct.Memory* %call_47b8cc, %struct.Memory** %MEMORY

  ; Code: jne .L_47b98f	 RIP: 47b8d0	 Bytes: 6
  %loadMem_47b8d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b8d0 = call %struct.Memory* @routine_jne_.L_47b98f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b8d0, i8* %BRANCH_TAKEN, i64 191, i64 6, i64 6)
  store %struct.Memory* %call_47b8d0, %struct.Memory** %MEMORY

  %loadBr_47b8d0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47b8d0 = icmp eq i8 %loadBr_47b8d0, 1
  br i1 %cmpBr_47b8d0, label %block_.L_47b98f, label %block_47b8d6

block_47b8d6:
  ; Code: movq $0x724be0, %rax	 RIP: 47b8d6	 Bytes: 10
  %loadMem_47b8d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b8d6 = call %struct.Memory* @routine_movq__0x724be0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b8d6)
  store %struct.Memory* %call_47b8d6, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rcx	 RIP: 47b8e0	 Bytes: 3
  %loadMem_47b8e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b8e0 = call %struct.Memory* @routine_movq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b8e0)
  store %struct.Memory* %call_47b8e0, %struct.Memory** %MEMORY

  ; Code: addq $0x340, %rcx	 RIP: 47b8e3	 Bytes: 7
  %loadMem_47b8e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b8e3 = call %struct.Memory* @routine_addq__0x340___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b8e3)
  store %struct.Memory* %call_47b8e3, %struct.Memory** %MEMORY

  ; Code: movq $0x710020, %rdx	 RIP: 47b8ea	 Bytes: 10
  %loadMem_47b8ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b8ea = call %struct.Memory* @routine_movq__0x710020___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b8ea)
  store %struct.Memory* %call_47b8ea, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rsi	 RIP: 47b8f4	 Bytes: 4
  %loadMem_47b8f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b8f4 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b8f4)
  store %struct.Memory* %call_47b8f4, %struct.Memory** %MEMORY

  ; Code: movswl 0x70fd60(,%rsi,2), %edi	 RIP: 47b8f8	 Bytes: 8
  %loadMem_47b8f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b8f8 = call %struct.Memory* @routine_movswl_0x70fd60___rsi_2____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b8f8)
  store %struct.Memory* %call_47b8f8, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %r8d	 RIP: 47b900	 Bytes: 4
  %loadMem_47b900 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b900 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b900)
  store %struct.Memory* %call_47b900, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x20(%rbp)	 RIP: 47b904	 Bytes: 4
  %loadMem_47b904 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b904 = call %struct.Memory* @routine_movq__rcx__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b904)
  store %struct.Memory* %call_47b904, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %ecx	 RIP: 47b908	 Bytes: 3
  %loadMem_47b908 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b908 = call %struct.Memory* @routine_movl__r8d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b908)
  store %struct.Memory* %call_47b908, %struct.Memory** %MEMORY

  ; Code: shll %cl, %edi	 RIP: 47b90b	 Bytes: 2
  %loadMem_47b90b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b90b = call %struct.Memory* @routine_shll__cl___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b90b)
  store %struct.Memory* %call_47b90b, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rsi	 RIP: 47b90d	 Bytes: 4
  %loadMem_47b90d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b90d = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b90d)
  store %struct.Memory* %call_47b90d, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rsi	 RIP: 47b911	 Bytes: 4
  %loadMem_47b911 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b911 = call %struct.Memory* @routine_shlq__0x6___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b911)
  store %struct.Memory* %call_47b911, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 47b915	 Bytes: 3
  %loadMem_47b915 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b915 = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b915)
  store %struct.Memory* %call_47b915, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rsi	 RIP: 47b918	 Bytes: 4
  %loadMem_47b918 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b918 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b918)
  store %struct.Memory* %call_47b918, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rsi	 RIP: 47b91c	 Bytes: 4
  %loadMem_47b91c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b91c = call %struct.Memory* @routine_shlq__0x4___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b91c)
  store %struct.Memory* %call_47b91c, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 47b920	 Bytes: 3
  %loadMem_47b920 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b920 = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b920)
  store %struct.Memory* %call_47b920, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rsi	 RIP: 47b923	 Bytes: 4
  %loadMem_47b923 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b923 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b923)
  store %struct.Memory* %call_47b923, %struct.Memory** %MEMORY

  ; Code: movl %edi, (%rdx,%rsi,4)	 RIP: 47b927	 Bytes: 3
  %loadMem_47b927 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b927 = call %struct.Memory* @routine_movl__edi____rdx__rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b927)
  store %struct.Memory* %call_47b927, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 47b92a	 Bytes: 4
  %loadMem_47b92a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b92a = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b92a)
  store %struct.Memory* %call_47b92a, %struct.Memory** %MEMORY

  ; Code: movswl 0x70fd80(,%rdx,2), %edi	 RIP: 47b92e	 Bytes: 8
  %loadMem_47b92e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b92e = call %struct.Memory* @routine_movswl_0x70fd80___rdx_2____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b92e)
  store %struct.Memory* %call_47b92e, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 47b936	 Bytes: 3
  %loadMem_47b936 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b936 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b936)
  store %struct.Memory* %call_47b936, %struct.Memory** %MEMORY

  ; Code: shll %cl, %edi	 RIP: 47b939	 Bytes: 2
  %loadMem_47b939 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b939 = call %struct.Memory* @routine_shll__cl___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b939)
  store %struct.Memory* %call_47b939, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rdx	 RIP: 47b93b	 Bytes: 4
  %loadMem_47b93b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b93b = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b93b)
  store %struct.Memory* %call_47b93b, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 47b93f	 Bytes: 4
  %loadMem_47b93f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b93f = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b93f)
  store %struct.Memory* %call_47b93f, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 47b943	 Bytes: 3
  %loadMem_47b943 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b943 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b943)
  store %struct.Memory* %call_47b943, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 47b946	 Bytes: 4
  %loadMem_47b946 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b946 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b946)
  store %struct.Memory* %call_47b946, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 47b94a	 Bytes: 4
  %loadMem_47b94a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b94a = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b94a)
  store %struct.Memory* %call_47b94a, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 47b94e	 Bytes: 3
  %loadMem_47b94e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b94e = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b94e)
  store %struct.Memory* %call_47b94e, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 47b951	 Bytes: 4
  %loadMem_47b951 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b951 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b951)
  store %struct.Memory* %call_47b951, %struct.Memory** %MEMORY

  ; Code: movl %edi, (%rax,%rdx,4)	 RIP: 47b955	 Bytes: 3
  %loadMem_47b955 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b955 = call %struct.Memory* @routine_movl__edi____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b955)
  store %struct.Memory* %call_47b955, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 47b958	 Bytes: 4
  %loadMem_47b958 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b958 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b958)
  store %struct.Memory* %call_47b958, %struct.Memory** %MEMORY

  ; Code: movswl 0x70fda0(,%rax,2), %edi	 RIP: 47b95c	 Bytes: 8
  %loadMem_47b95c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b95c = call %struct.Memory* @routine_movswl_0x70fda0___rax_2____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b95c)
  store %struct.Memory* %call_47b95c, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 47b964	 Bytes: 3
  %loadMem_47b964 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b964 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b964)
  store %struct.Memory* %call_47b964, %struct.Memory** %MEMORY

  ; Code: shll %cl, %edi	 RIP: 47b967	 Bytes: 2
  %loadMem_47b967 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b967 = call %struct.Memory* @routine_shll__cl___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b967)
  store %struct.Memory* %call_47b967, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rax	 RIP: 47b969	 Bytes: 4
  %loadMem_47b969 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b969 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b969)
  store %struct.Memory* %call_47b969, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rax	 RIP: 47b96d	 Bytes: 4
  %loadMem_47b96d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b96d = call %struct.Memory* @routine_shlq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b96d)
  store %struct.Memory* %call_47b96d, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdx	 RIP: 47b971	 Bytes: 4
  %loadMem_47b971 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b971 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b971)
  store %struct.Memory* %call_47b971, %struct.Memory** %MEMORY

  ; Code: addq %rax, %rdx	 RIP: 47b975	 Bytes: 3
  %loadMem_47b975 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b975 = call %struct.Memory* @routine_addq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b975)
  store %struct.Memory* %call_47b975, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rax	 RIP: 47b978	 Bytes: 4
  %loadMem_47b978 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b978 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b978)
  store %struct.Memory* %call_47b978, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rax	 RIP: 47b97c	 Bytes: 4
  %loadMem_47b97c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b97c = call %struct.Memory* @routine_shlq__0x4___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b97c)
  store %struct.Memory* %call_47b97c, %struct.Memory** %MEMORY

  ; Code: addq %rax, %rdx	 RIP: 47b980	 Bytes: 3
  %loadMem_47b980 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b980 = call %struct.Memory* @routine_addq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b980)
  store %struct.Memory* %call_47b980, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rax	 RIP: 47b983	 Bytes: 4
  %loadMem_47b983 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b983 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b983)
  store %struct.Memory* %call_47b983, %struct.Memory** %MEMORY

  ; Code: movl %edi, (%rdx,%rax,4)	 RIP: 47b987	 Bytes: 3
  %loadMem_47b987 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b987 = call %struct.Memory* @routine_movl__edi____rdx__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b987)
  store %struct.Memory* %call_47b987, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47ba43	 RIP: 47b98a	 Bytes: 5
  %loadMem_47b98a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b98a = call %struct.Memory* @routine_jmpq_.L_47ba43(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b98a, i64 185, i64 5)
  store %struct.Memory* %call_47b98a, %struct.Memory** %MEMORY

  br label %block_.L_47ba43

  ; Code: .L_47b98f:	 RIP: 47b98f	 Bytes: 0
block_.L_47b98f:

  ; Code: movq $0x724be0, %rax	 RIP: 47b98f	 Bytes: 10
  %loadMem_47b98f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b98f = call %struct.Memory* @routine_movq__0x724be0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b98f)
  store %struct.Memory* %call_47b98f, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rcx	 RIP: 47b999	 Bytes: 3
  %loadMem_47b999 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b999 = call %struct.Memory* @routine_movq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b999)
  store %struct.Memory* %call_47b999, %struct.Memory** %MEMORY

  ; Code: addq $0x340, %rcx	 RIP: 47b99c	 Bytes: 7
  %loadMem_47b99c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b99c = call %struct.Memory* @routine_addq__0x340___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b99c)
  store %struct.Memory* %call_47b99c, %struct.Memory** %MEMORY

  ; Code: movq $0x710020, %rdx	 RIP: 47b9a3	 Bytes: 10
  %loadMem_47b9a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b9a3 = call %struct.Memory* @routine_movq__0x710020___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b9a3)
  store %struct.Memory* %call_47b9a3, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rsi	 RIP: 47b9ad	 Bytes: 4
  %loadMem_47b9ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b9ad = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b9ad)
  store %struct.Memory* %call_47b9ad, %struct.Memory** %MEMORY

  ; Code: movswl 0x70fdc0(,%rsi,2), %edi	 RIP: 47b9b1	 Bytes: 8
  %loadMem_47b9b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b9b1 = call %struct.Memory* @routine_movswl_0x70fdc0___rsi_2____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b9b1)
  store %struct.Memory* %call_47b9b1, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %r8d	 RIP: 47b9b9	 Bytes: 4
  %loadMem_47b9b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b9b9 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b9b9)
  store %struct.Memory* %call_47b9b9, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x28(%rbp)	 RIP: 47b9bd	 Bytes: 4
  %loadMem_47b9bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b9bd = call %struct.Memory* @routine_movq__rcx__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b9bd)
  store %struct.Memory* %call_47b9bd, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %ecx	 RIP: 47b9c1	 Bytes: 3
  %loadMem_47b9c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b9c1 = call %struct.Memory* @routine_movl__r8d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b9c1)
  store %struct.Memory* %call_47b9c1, %struct.Memory** %MEMORY

  ; Code: shll %cl, %edi	 RIP: 47b9c4	 Bytes: 2
  %loadMem_47b9c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b9c4 = call %struct.Memory* @routine_shll__cl___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b9c4)
  store %struct.Memory* %call_47b9c4, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rsi	 RIP: 47b9c6	 Bytes: 4
  %loadMem_47b9c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b9c6 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b9c6)
  store %struct.Memory* %call_47b9c6, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rsi	 RIP: 47b9ca	 Bytes: 4
  %loadMem_47b9ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b9ca = call %struct.Memory* @routine_shlq__0x6___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b9ca)
  store %struct.Memory* %call_47b9ca, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 47b9ce	 Bytes: 3
  %loadMem_47b9ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b9ce = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b9ce)
  store %struct.Memory* %call_47b9ce, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rsi	 RIP: 47b9d1	 Bytes: 4
  %loadMem_47b9d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b9d1 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b9d1)
  store %struct.Memory* %call_47b9d1, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rsi	 RIP: 47b9d5	 Bytes: 4
  %loadMem_47b9d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b9d5 = call %struct.Memory* @routine_shlq__0x4___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b9d5)
  store %struct.Memory* %call_47b9d5, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 47b9d9	 Bytes: 3
  %loadMem_47b9d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b9d9 = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b9d9)
  store %struct.Memory* %call_47b9d9, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rsi	 RIP: 47b9dc	 Bytes: 4
  %loadMem_47b9dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b9dc = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b9dc)
  store %struct.Memory* %call_47b9dc, %struct.Memory** %MEMORY

  ; Code: movl %edi, (%rdx,%rsi,4)	 RIP: 47b9e0	 Bytes: 3
  %loadMem_47b9e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b9e0 = call %struct.Memory* @routine_movl__edi____rdx__rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b9e0)
  store %struct.Memory* %call_47b9e0, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 47b9e3	 Bytes: 4
  %loadMem_47b9e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b9e3 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b9e3)
  store %struct.Memory* %call_47b9e3, %struct.Memory** %MEMORY

  ; Code: movswl 0x70fde0(,%rdx,2), %edi	 RIP: 47b9e7	 Bytes: 8
  %loadMem_47b9e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b9e7 = call %struct.Memory* @routine_movswl_0x70fde0___rdx_2____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b9e7)
  store %struct.Memory* %call_47b9e7, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 47b9ef	 Bytes: 3
  %loadMem_47b9ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b9ef = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b9ef)
  store %struct.Memory* %call_47b9ef, %struct.Memory** %MEMORY

  ; Code: shll %cl, %edi	 RIP: 47b9f2	 Bytes: 2
  %loadMem_47b9f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b9f2 = call %struct.Memory* @routine_shll__cl___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b9f2)
  store %struct.Memory* %call_47b9f2, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rdx	 RIP: 47b9f4	 Bytes: 4
  %loadMem_47b9f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b9f4 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b9f4)
  store %struct.Memory* %call_47b9f4, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 47b9f8	 Bytes: 4
  %loadMem_47b9f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b9f8 = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b9f8)
  store %struct.Memory* %call_47b9f8, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 47b9fc	 Bytes: 3
  %loadMem_47b9fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b9fc = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b9fc)
  store %struct.Memory* %call_47b9fc, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 47b9ff	 Bytes: 4
  %loadMem_47b9ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47b9ff = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47b9ff)
  store %struct.Memory* %call_47b9ff, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 47ba03	 Bytes: 4
  %loadMem_47ba03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ba03 = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ba03)
  store %struct.Memory* %call_47ba03, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 47ba07	 Bytes: 3
  %loadMem_47ba07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ba07 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ba07)
  store %struct.Memory* %call_47ba07, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 47ba0a	 Bytes: 4
  %loadMem_47ba0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ba0a = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ba0a)
  store %struct.Memory* %call_47ba0a, %struct.Memory** %MEMORY

  ; Code: movl %edi, (%rax,%rdx,4)	 RIP: 47ba0e	 Bytes: 3
  %loadMem_47ba0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ba0e = call %struct.Memory* @routine_movl__edi____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ba0e)
  store %struct.Memory* %call_47ba0e, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 47ba11	 Bytes: 4
  %loadMem_47ba11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ba11 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ba11)
  store %struct.Memory* %call_47ba11, %struct.Memory** %MEMORY

  ; Code: movswl 0x70fe00(,%rax,2), %edi	 RIP: 47ba15	 Bytes: 8
  %loadMem_47ba15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ba15 = call %struct.Memory* @routine_movswl_0x70fe00___rax_2____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ba15)
  store %struct.Memory* %call_47ba15, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 47ba1d	 Bytes: 3
  %loadMem_47ba1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ba1d = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ba1d)
  store %struct.Memory* %call_47ba1d, %struct.Memory** %MEMORY

  ; Code: shll %cl, %edi	 RIP: 47ba20	 Bytes: 2
  %loadMem_47ba20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ba20 = call %struct.Memory* @routine_shll__cl___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ba20)
  store %struct.Memory* %call_47ba20, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rax	 RIP: 47ba22	 Bytes: 4
  %loadMem_47ba22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ba22 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ba22)
  store %struct.Memory* %call_47ba22, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rax	 RIP: 47ba26	 Bytes: 4
  %loadMem_47ba26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ba26 = call %struct.Memory* @routine_shlq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ba26)
  store %struct.Memory* %call_47ba26, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rdx	 RIP: 47ba2a	 Bytes: 4
  %loadMem_47ba2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ba2a = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ba2a)
  store %struct.Memory* %call_47ba2a, %struct.Memory** %MEMORY

  ; Code: addq %rax, %rdx	 RIP: 47ba2e	 Bytes: 3
  %loadMem_47ba2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ba2e = call %struct.Memory* @routine_addq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ba2e)
  store %struct.Memory* %call_47ba2e, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rax	 RIP: 47ba31	 Bytes: 4
  %loadMem_47ba31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ba31 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ba31)
  store %struct.Memory* %call_47ba31, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rax	 RIP: 47ba35	 Bytes: 4
  %loadMem_47ba35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ba35 = call %struct.Memory* @routine_shlq__0x4___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ba35)
  store %struct.Memory* %call_47ba35, %struct.Memory** %MEMORY

  ; Code: addq %rax, %rdx	 RIP: 47ba39	 Bytes: 3
  %loadMem_47ba39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ba39 = call %struct.Memory* @routine_addq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ba39)
  store %struct.Memory* %call_47ba39, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rax	 RIP: 47ba3c	 Bytes: 4
  %loadMem_47ba3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ba3c = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ba3c)
  store %struct.Memory* %call_47ba3c, %struct.Memory** %MEMORY

  ; Code: movl %edi, (%rdx,%rax,4)	 RIP: 47ba40	 Bytes: 3
  %loadMem_47ba40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ba40 = call %struct.Memory* @routine_movl__edi____rdx__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ba40)
  store %struct.Memory* %call_47ba40, %struct.Memory** %MEMORY

  ; Code: .L_47ba43:	 RIP: 47ba43	 Bytes: 0
  br label %block_.L_47ba43
block_.L_47ba43:

  ; Code: movq $0x70e250, %rax	 RIP: 47ba43	 Bytes: 10
  %loadMem_47ba43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ba43 = call %struct.Memory* @routine_movq__0x70e250___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ba43)
  store %struct.Memory* %call_47ba43, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rcx	 RIP: 47ba4d	 Bytes: 3
  %loadMem_47ba4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ba4d = call %struct.Memory* @routine_movq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ba4d)
  store %struct.Memory* %call_47ba4d, %struct.Memory** %MEMORY

  ; Code: addq $0x340, %rcx	 RIP: 47ba50	 Bytes: 7
  %loadMem_47ba50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ba50 = call %struct.Memory* @routine_addq__0x340___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ba50)
  store %struct.Memory* %call_47ba50, %struct.Memory** %MEMORY

  ; Code: movq $0x6ccf90, %rdx	 RIP: 47ba57	 Bytes: 10
  %loadMem_47ba57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ba57 = call %struct.Memory* @routine_movq__0x6ccf90___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ba57)
  store %struct.Memory* %call_47ba57, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rsi	 RIP: 47ba61	 Bytes: 4
  %loadMem_47ba61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ba61 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ba61)
  store %struct.Memory* %call_47ba61, %struct.Memory** %MEMORY

  ; Code: movswl 0x70fe20(,%rsi,2), %edi	 RIP: 47ba65	 Bytes: 8
  %loadMem_47ba65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ba65 = call %struct.Memory* @routine_movswl_0x70fe20___rsi_2____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ba65)
  store %struct.Memory* %call_47ba65, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %r8d	 RIP: 47ba6d	 Bytes: 4
  %loadMem_47ba6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ba6d = call %struct.Memory* @routine_movl_MINUS0x14__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ba6d)
  store %struct.Memory* %call_47ba6d, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x30(%rbp)	 RIP: 47ba71	 Bytes: 4
  %loadMem_47ba71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ba71 = call %struct.Memory* @routine_movq__rcx__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ba71)
  store %struct.Memory* %call_47ba71, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %ecx	 RIP: 47ba75	 Bytes: 3
  %loadMem_47ba75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ba75 = call %struct.Memory* @routine_movl__r8d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ba75)
  store %struct.Memory* %call_47ba75, %struct.Memory** %MEMORY

  ; Code: shll %cl, %edi	 RIP: 47ba78	 Bytes: 2
  %loadMem_47ba78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ba78 = call %struct.Memory* @routine_shll__cl___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ba78)
  store %struct.Memory* %call_47ba78, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rsi	 RIP: 47ba7a	 Bytes: 4
  %loadMem_47ba7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ba7a = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ba7a)
  store %struct.Memory* %call_47ba7a, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rsi	 RIP: 47ba7e	 Bytes: 4
  %loadMem_47ba7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ba7e = call %struct.Memory* @routine_shlq__0x6___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ba7e)
  store %struct.Memory* %call_47ba7e, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 47ba82	 Bytes: 3
  %loadMem_47ba82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ba82 = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ba82)
  store %struct.Memory* %call_47ba82, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rsi	 RIP: 47ba85	 Bytes: 4
  %loadMem_47ba85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ba85 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ba85)
  store %struct.Memory* %call_47ba85, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rsi	 RIP: 47ba89	 Bytes: 4
  %loadMem_47ba89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ba89 = call %struct.Memory* @routine_shlq__0x4___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ba89)
  store %struct.Memory* %call_47ba89, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 47ba8d	 Bytes: 3
  %loadMem_47ba8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ba8d = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ba8d)
  store %struct.Memory* %call_47ba8d, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rsi	 RIP: 47ba90	 Bytes: 4
  %loadMem_47ba90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ba90 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ba90)
  store %struct.Memory* %call_47ba90, %struct.Memory** %MEMORY

  ; Code: movl %edi, (%rdx,%rsi,4)	 RIP: 47ba94	 Bytes: 3
  %loadMem_47ba94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ba94 = call %struct.Memory* @routine_movl__edi____rdx__rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ba94)
  store %struct.Memory* %call_47ba94, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 47ba97	 Bytes: 4
  %loadMem_47ba97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ba97 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ba97)
  store %struct.Memory* %call_47ba97, %struct.Memory** %MEMORY

  ; Code: movswl 0x70fe40(,%rdx,2), %edi	 RIP: 47ba9b	 Bytes: 8
  %loadMem_47ba9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ba9b = call %struct.Memory* @routine_movswl_0x70fe40___rdx_2____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ba9b)
  store %struct.Memory* %call_47ba9b, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 47baa3	 Bytes: 3
  %loadMem_47baa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47baa3 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47baa3)
  store %struct.Memory* %call_47baa3, %struct.Memory** %MEMORY

  ; Code: shll %cl, %edi	 RIP: 47baa6	 Bytes: 2
  %loadMem_47baa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47baa6 = call %struct.Memory* @routine_shll__cl___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47baa6)
  store %struct.Memory* %call_47baa6, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rdx	 RIP: 47baa8	 Bytes: 4
  %loadMem_47baa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47baa8 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47baa8)
  store %struct.Memory* %call_47baa8, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 47baac	 Bytes: 4
  %loadMem_47baac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47baac = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47baac)
  store %struct.Memory* %call_47baac, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 47bab0	 Bytes: 3
  %loadMem_47bab0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bab0 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bab0)
  store %struct.Memory* %call_47bab0, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 47bab3	 Bytes: 4
  %loadMem_47bab3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bab3 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bab3)
  store %struct.Memory* %call_47bab3, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 47bab7	 Bytes: 4
  %loadMem_47bab7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bab7 = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bab7)
  store %struct.Memory* %call_47bab7, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 47babb	 Bytes: 3
  %loadMem_47babb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47babb = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47babb)
  store %struct.Memory* %call_47babb, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 47babe	 Bytes: 4
  %loadMem_47babe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47babe = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47babe)
  store %struct.Memory* %call_47babe, %struct.Memory** %MEMORY

  ; Code: movl %edi, (%rax,%rdx,4)	 RIP: 47bac2	 Bytes: 3
  %loadMem_47bac2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bac2 = call %struct.Memory* @routine_movl__edi____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bac2)
  store %struct.Memory* %call_47bac2, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 47bac5	 Bytes: 4
  %loadMem_47bac5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bac5 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bac5)
  store %struct.Memory* %call_47bac5, %struct.Memory** %MEMORY

  ; Code: movswl 0x70fe60(,%rax,2), %edi	 RIP: 47bac9	 Bytes: 8
  %loadMem_47bac9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bac9 = call %struct.Memory* @routine_movswl_0x70fe60___rax_2____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bac9)
  store %struct.Memory* %call_47bac9, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 47bad1	 Bytes: 3
  %loadMem_47bad1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bad1 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bad1)
  store %struct.Memory* %call_47bad1, %struct.Memory** %MEMORY

  ; Code: shll %cl, %edi	 RIP: 47bad4	 Bytes: 2
  %loadMem_47bad4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bad4 = call %struct.Memory* @routine_shll__cl___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bad4)
  store %struct.Memory* %call_47bad4, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rax	 RIP: 47bad6	 Bytes: 4
  %loadMem_47bad6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bad6 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bad6)
  store %struct.Memory* %call_47bad6, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rax	 RIP: 47bada	 Bytes: 4
  %loadMem_47bada = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bada = call %struct.Memory* @routine_shlq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bada)
  store %struct.Memory* %call_47bada, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rdx	 RIP: 47bade	 Bytes: 4
  %loadMem_47bade = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bade = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bade)
  store %struct.Memory* %call_47bade, %struct.Memory** %MEMORY

  ; Code: addq %rax, %rdx	 RIP: 47bae2	 Bytes: 3
  %loadMem_47bae2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bae2 = call %struct.Memory* @routine_addq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bae2)
  store %struct.Memory* %call_47bae2, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rax	 RIP: 47bae5	 Bytes: 4
  %loadMem_47bae5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bae5 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bae5)
  store %struct.Memory* %call_47bae5, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rax	 RIP: 47bae9	 Bytes: 4
  %loadMem_47bae9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bae9 = call %struct.Memory* @routine_shlq__0x4___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bae9)
  store %struct.Memory* %call_47bae9, %struct.Memory** %MEMORY

  ; Code: addq %rax, %rdx	 RIP: 47baed	 Bytes: 3
  %loadMem_47baed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47baed = call %struct.Memory* @routine_addq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47baed)
  store %struct.Memory* %call_47baed, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rax	 RIP: 47baf0	 Bytes: 4
  %loadMem_47baf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47baf0 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47baf0)
  store %struct.Memory* %call_47baf0, %struct.Memory** %MEMORY

  ; Code: movl %edi, (%rdx,%rax,4)	 RIP: 47baf4	 Bytes: 3
  %loadMem_47baf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47baf4 = call %struct.Memory* @routine_movl__edi____rdx__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47baf4)
  store %struct.Memory* %call_47baf4, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %eax	 RIP: 47baf7	 Bytes: 3
  %loadMem_47baf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47baf7 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47baf7)
  store %struct.Memory* %call_47baf7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 47bafa	 Bytes: 3
  %loadMem_47bafa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bafa = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bafa)
  store %struct.Memory* %call_47bafa, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 47bafd	 Bytes: 3
  %loadMem_47bafd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bafd = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bafd)
  store %struct.Memory* %call_47bafd, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47b8ae	 RIP: 47bb00	 Bytes: 5
  %loadMem_47bb00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bb00 = call %struct.Memory* @routine_jmpq_.L_47b8ae(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bb00, i64 -594, i64 5)
  store %struct.Memory* %call_47bb00, %struct.Memory** %MEMORY

  br label %block_.L_47b8ae

  ; Code: .L_47bb05:	 RIP: 47bb05	 Bytes: 0
block_.L_47bb05:

  ; Code: jmpq .L_47bb0a	 RIP: 47bb05	 Bytes: 5
  %loadMem_47bb05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bb05 = call %struct.Memory* @routine_jmpq_.L_47bb0a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bb05, i64 5, i64 5)
  store %struct.Memory* %call_47bb05, %struct.Memory** %MEMORY

  br label %block_.L_47bb0a

  ; Code: .L_47bb0a:	 RIP: 47bb0a	 Bytes: 0
block_.L_47bb0a:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 47bb0a	 Bytes: 3
  %loadMem_47bb0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bb0a = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bb0a)
  store %struct.Memory* %call_47bb0a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 47bb0d	 Bytes: 3
  %loadMem_47bb0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bb0d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bb0d)
  store %struct.Memory* %call_47bb0d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8(%rbp)	 RIP: 47bb10	 Bytes: 3
  %loadMem_47bb10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bb10 = call %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bb10)
  store %struct.Memory* %call_47bb10, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47b89d	 RIP: 47bb13	 Bytes: 5
  %loadMem_47bb13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bb13 = call %struct.Memory* @routine_jmpq_.L_47b89d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bb13, i64 -630, i64 5)
  store %struct.Memory* %call_47bb13, %struct.Memory** %MEMORY

  br label %block_.L_47b89d

  ; Code: .L_47bb18:	 RIP: 47bb18	 Bytes: 0
block_.L_47bb18:

  ; Code: jmpq .L_47bb1d	 RIP: 47bb18	 Bytes: 5
  %loadMem_47bb18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bb18 = call %struct.Memory* @routine_jmpq_.L_47bb1d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bb18, i64 5, i64 5)
  store %struct.Memory* %call_47bb18, %struct.Memory** %MEMORY

  br label %block_.L_47bb1d

  ; Code: .L_47bb1d:	 RIP: 47bb1d	 Bytes: 0
block_.L_47bb1d:

  ; Code: movl -0xc(%rbp), %eax	 RIP: 47bb1d	 Bytes: 3
  %loadMem_47bb1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bb1d = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bb1d)
  store %struct.Memory* %call_47bb1d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 47bb20	 Bytes: 3
  %loadMem_47bb20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bb20 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bb20)
  store %struct.Memory* %call_47bb20, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 47bb23	 Bytes: 3
  %loadMem_47bb23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bb23 = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bb23)
  store %struct.Memory* %call_47bb23, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47b880	 RIP: 47bb26	 Bytes: 5
  %loadMem_47bb26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bb26 = call %struct.Memory* @routine_jmpq_.L_47b880(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bb26, i64 -678, i64 5)
  store %struct.Memory* %call_47bb26, %struct.Memory** %MEMORY

  br label %block_.L_47b880

  ; Code: .L_47bb2b:	 RIP: 47bb2b	 Bytes: 0
block_.L_47bb2b:

  ; Code: jmpq .L_47bde7	 RIP: 47bb2b	 Bytes: 5
  %loadMem_47bb2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bb2b = call %struct.Memory* @routine_jmpq_.L_47bde7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bb2b, i64 700, i64 5)
  store %struct.Memory* %call_47bb2b, %struct.Memory** %MEMORY

  br label %block_.L_47bde7

  ; Code: .L_47bb30:	 RIP: 47bb30	 Bytes: 0
block_.L_47bb30:

  ; Code: movl $0x0, -0xc(%rbp)	 RIP: 47bb30	 Bytes: 7
  %loadMem_47bb30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bb30 = call %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bb30)
  store %struct.Memory* %call_47bb30, %struct.Memory** %MEMORY

  ; Code: .L_47bb37:	 RIP: 47bb37	 Bytes: 0
  br label %block_.L_47bb37
block_.L_47bb37:

  ; Code: cmpl $0xd, -0xc(%rbp)	 RIP: 47bb37	 Bytes: 4
  %loadMem_47bb37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bb37 = call %struct.Memory* @routine_cmpl__0xd__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bb37)
  store %struct.Memory* %call_47bb37, %struct.Memory** %MEMORY

  ; Code: jge .L_47bde2	 RIP: 47bb3b	 Bytes: 6
  %loadMem_47bb3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bb3b = call %struct.Memory* @routine_jge_.L_47bde2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bb3b, i8* %BRANCH_TAKEN, i64 679, i64 6, i64 6)
  store %struct.Memory* %call_47bb3b, %struct.Memory** %MEMORY

  %loadBr_47bb3b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47bb3b = icmp eq i8 %loadBr_47bb3b, 1
  br i1 %cmpBr_47bb3b, label %block_.L_47bde2, label %block_47bb41

block_47bb41:
  ; Code: movl -0xc(%rbp), %eax	 RIP: 47bb41	 Bytes: 3
  %loadMem_47bb41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bb41 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bb41)
  store %struct.Memory* %call_47bb41, %struct.Memory** %MEMORY

  ; Code: addl $0xf, %eax	 RIP: 47bb44	 Bytes: 3
  %loadMem_47bb44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bb44 = call %struct.Memory* @routine_addl__0xf___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bb44)
  store %struct.Memory* %call_47bb44, %struct.Memory** %MEMORY

  ; Code: subl $0xa, %eax	 RIP: 47bb47	 Bytes: 3
  %loadMem_47bb47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bb47 = call %struct.Memory* @routine_subl__0xa___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bb47)
  store %struct.Memory* %call_47bb47, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 47bb4a	 Bytes: 3
  %loadMem_47bb4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bb4a = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bb4a)
  store %struct.Memory* %call_47bb4a, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x8(%rbp)	 RIP: 47bb4d	 Bytes: 7
  %loadMem_47bb4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bb4d = call %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bb4d)
  store %struct.Memory* %call_47bb4d, %struct.Memory** %MEMORY

  ; Code: .L_47bb54:	 RIP: 47bb54	 Bytes: 0
  br label %block_.L_47bb54
block_.L_47bb54:

  ; Code: cmpl $0x4, -0x8(%rbp)	 RIP: 47bb54	 Bytes: 4
  %loadMem_47bb54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bb54 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bb54)
  store %struct.Memory* %call_47bb54, %struct.Memory** %MEMORY

  ; Code: jge .L_47bdcf	 RIP: 47bb58	 Bytes: 6
  %loadMem_47bb58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bb58 = call %struct.Memory* @routine_jge_.L_47bdcf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bb58, i8* %BRANCH_TAKEN, i64 631, i64 6, i64 6)
  store %struct.Memory* %call_47bb58, %struct.Memory** %MEMORY

  %loadBr_47bb58 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47bb58 = icmp eq i8 %loadBr_47bb58, 1
  br i1 %cmpBr_47bb58, label %block_.L_47bdcf, label %block_47bb5e

block_47bb5e:
  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 47bb5e	 Bytes: 7
  %loadMem_47bb5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bb5e = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bb5e)
  store %struct.Memory* %call_47bb5e, %struct.Memory** %MEMORY

  ; Code: .L_47bb65:	 RIP: 47bb65	 Bytes: 0
  br label %block_.L_47bb65
block_.L_47bb65:

  ; Code: cmpl $0x4, -0x4(%rbp)	 RIP: 47bb65	 Bytes: 4
  %loadMem_47bb65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bb65 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bb65)
  store %struct.Memory* %call_47bb65, %struct.Memory** %MEMORY

  ; Code: jge .L_47bdbc	 RIP: 47bb69	 Bytes: 6
  %loadMem_47bb69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bb69 = call %struct.Memory* @routine_jge_.L_47bdbc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bb69, i8* %BRANCH_TAKEN, i64 595, i64 6, i64 6)
  store %struct.Memory* %call_47bb69, %struct.Memory** %MEMORY

  %loadBr_47bb69 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47bb69 = icmp eq i8 %loadBr_47bb69, 1
  br i1 %cmpBr_47bb69, label %block_.L_47bdbc, label %block_47bb6f

block_47bb6f:
  ; Code: movl -0x4(%rbp), %eax	 RIP: 47bb6f	 Bytes: 3
  %loadMem_47bb6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bb6f = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bb6f)
  store %struct.Memory* %call_47bb6f, %struct.Memory** %MEMORY

  ; Code: shll $0x2, %eax	 RIP: 47bb72	 Bytes: 3
  %loadMem_47bb72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bb72 = call %struct.Memory* @routine_shll__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bb72)
  store %struct.Memory* %call_47bb72, %struct.Memory** %MEMORY

  ; Code: addl -0x8(%rbp), %eax	 RIP: 47bb75	 Bytes: 3
  %loadMem_47bb75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bb75 = call %struct.Memory* @routine_addl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bb75)
  store %struct.Memory* %call_47bb75, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x10(%rbp)	 RIP: 47bb78	 Bytes: 3
  %loadMem_47bb78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bb78 = call %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bb78)
  store %struct.Memory* %call_47bb78, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 47bb7b	 Bytes: 8
  %loadMem_47bb7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bb7b = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bb7b)
  store %struct.Memory* %call_47bb7b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x18(%rcx)	 RIP: 47bb83	 Bytes: 4
  %loadMem_47bb83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bb83 = call %struct.Memory* @routine_cmpl__0x2__0x18__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bb83)
  store %struct.Memory* %call_47bb83, %struct.Memory** %MEMORY

  ; Code: jne .L_47bc46	 RIP: 47bb87	 Bytes: 6
  %loadMem_47bb87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bb87 = call %struct.Memory* @routine_jne_.L_47bc46(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bb87, i8* %BRANCH_TAKEN, i64 191, i64 6, i64 6)
  store %struct.Memory* %call_47bb87, %struct.Memory** %MEMORY

  %loadBr_47bb87 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47bb87 = icmp eq i8 %loadBr_47bb87, 1
  br i1 %cmpBr_47bb87, label %block_.L_47bc46, label %block_47bb8d

block_47bb8d:
  ; Code: movq $0x724be0, %rax	 RIP: 47bb8d	 Bytes: 10
  %loadMem_47bb8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bb8d = call %struct.Memory* @routine_movq__0x724be0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bb8d)
  store %struct.Memory* %call_47bb8d, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rcx	 RIP: 47bb97	 Bytes: 3
  %loadMem_47bb97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bb97 = call %struct.Memory* @routine_movq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bb97)
  store %struct.Memory* %call_47bb97, %struct.Memory** %MEMORY

  ; Code: addq $0x340, %rcx	 RIP: 47bb9a	 Bytes: 7
  %loadMem_47bb9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bb9a = call %struct.Memory* @routine_addq__0x340___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bb9a)
  store %struct.Memory* %call_47bb9a, %struct.Memory** %MEMORY

  ; Code: movq $0x710020, %rdx	 RIP: 47bba1	 Bytes: 10
  %loadMem_47bba1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bba1 = call %struct.Memory* @routine_movq__0x710020___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bba1)
  store %struct.Memory* %call_47bba1, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rsi	 RIP: 47bbab	 Bytes: 4
  %loadMem_47bbab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bbab = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bbab)
  store %struct.Memory* %call_47bbab, %struct.Memory** %MEMORY

  ; Code: movswl 0x4b94b0(,%rsi,2), %edi	 RIP: 47bbaf	 Bytes: 8
  %loadMem_47bbaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bbaf = call %struct.Memory* @routine_movswl_0x4b94b0___rsi_2____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bbaf)
  store %struct.Memory* %call_47bbaf, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %r8d	 RIP: 47bbb7	 Bytes: 4
  %loadMem_47bbb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bbb7 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bbb7)
  store %struct.Memory* %call_47bbb7, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x38(%rbp)	 RIP: 47bbbb	 Bytes: 4
  %loadMem_47bbbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bbbb = call %struct.Memory* @routine_movq__rcx__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bbbb)
  store %struct.Memory* %call_47bbbb, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %ecx	 RIP: 47bbbf	 Bytes: 3
  %loadMem_47bbbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bbbf = call %struct.Memory* @routine_movl__r8d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bbbf)
  store %struct.Memory* %call_47bbbf, %struct.Memory** %MEMORY

  ; Code: shll %cl, %edi	 RIP: 47bbc2	 Bytes: 2
  %loadMem_47bbc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bbc2 = call %struct.Memory* @routine_shll__cl___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bbc2)
  store %struct.Memory* %call_47bbc2, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rsi	 RIP: 47bbc4	 Bytes: 4
  %loadMem_47bbc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bbc4 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bbc4)
  store %struct.Memory* %call_47bbc4, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rsi	 RIP: 47bbc8	 Bytes: 4
  %loadMem_47bbc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bbc8 = call %struct.Memory* @routine_shlq__0x6___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bbc8)
  store %struct.Memory* %call_47bbc8, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 47bbcc	 Bytes: 3
  %loadMem_47bbcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bbcc = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bbcc)
  store %struct.Memory* %call_47bbcc, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rsi	 RIP: 47bbcf	 Bytes: 4
  %loadMem_47bbcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bbcf = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bbcf)
  store %struct.Memory* %call_47bbcf, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rsi	 RIP: 47bbd3	 Bytes: 4
  %loadMem_47bbd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bbd3 = call %struct.Memory* @routine_shlq__0x4___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bbd3)
  store %struct.Memory* %call_47bbd3, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 47bbd7	 Bytes: 3
  %loadMem_47bbd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bbd7 = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bbd7)
  store %struct.Memory* %call_47bbd7, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rsi	 RIP: 47bbda	 Bytes: 4
  %loadMem_47bbda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bbda = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bbda)
  store %struct.Memory* %call_47bbda, %struct.Memory** %MEMORY

  ; Code: movl %edi, (%rdx,%rsi,4)	 RIP: 47bbde	 Bytes: 3
  %loadMem_47bbde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bbde = call %struct.Memory* @routine_movl__edi____rdx__rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bbde)
  store %struct.Memory* %call_47bbde, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 47bbe1	 Bytes: 4
  %loadMem_47bbe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bbe1 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bbe1)
  store %struct.Memory* %call_47bbe1, %struct.Memory** %MEMORY

  ; Code: movswl 0x4b94b0(,%rdx,2), %edi	 RIP: 47bbe5	 Bytes: 8
  %loadMem_47bbe5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bbe5 = call %struct.Memory* @routine_movswl_0x4b94b0___rdx_2____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bbe5)
  store %struct.Memory* %call_47bbe5, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 47bbed	 Bytes: 3
  %loadMem_47bbed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bbed = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bbed)
  store %struct.Memory* %call_47bbed, %struct.Memory** %MEMORY

  ; Code: shll %cl, %edi	 RIP: 47bbf0	 Bytes: 2
  %loadMem_47bbf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bbf0 = call %struct.Memory* @routine_shll__cl___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bbf0)
  store %struct.Memory* %call_47bbf0, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rdx	 RIP: 47bbf2	 Bytes: 4
  %loadMem_47bbf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bbf2 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bbf2)
  store %struct.Memory* %call_47bbf2, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 47bbf6	 Bytes: 4
  %loadMem_47bbf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bbf6 = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bbf6)
  store %struct.Memory* %call_47bbf6, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 47bbfa	 Bytes: 3
  %loadMem_47bbfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bbfa = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bbfa)
  store %struct.Memory* %call_47bbfa, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 47bbfd	 Bytes: 4
  %loadMem_47bbfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bbfd = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bbfd)
  store %struct.Memory* %call_47bbfd, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 47bc01	 Bytes: 4
  %loadMem_47bc01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bc01 = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bc01)
  store %struct.Memory* %call_47bc01, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 47bc05	 Bytes: 3
  %loadMem_47bc05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bc05 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bc05)
  store %struct.Memory* %call_47bc05, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 47bc08	 Bytes: 4
  %loadMem_47bc08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bc08 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bc08)
  store %struct.Memory* %call_47bc08, %struct.Memory** %MEMORY

  ; Code: movl %edi, (%rax,%rdx,4)	 RIP: 47bc0c	 Bytes: 3
  %loadMem_47bc0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bc0c = call %struct.Memory* @routine_movl__edi____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bc0c)
  store %struct.Memory* %call_47bc0c, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 47bc0f	 Bytes: 4
  %loadMem_47bc0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bc0f = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bc0f)
  store %struct.Memory* %call_47bc0f, %struct.Memory** %MEMORY

  ; Code: movswl 0x4b94b0(,%rax,2), %edi	 RIP: 47bc13	 Bytes: 8
  %loadMem_47bc13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bc13 = call %struct.Memory* @routine_movswl_0x4b94b0___rax_2____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bc13)
  store %struct.Memory* %call_47bc13, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 47bc1b	 Bytes: 3
  %loadMem_47bc1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bc1b = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bc1b)
  store %struct.Memory* %call_47bc1b, %struct.Memory** %MEMORY

  ; Code: shll %cl, %edi	 RIP: 47bc1e	 Bytes: 2
  %loadMem_47bc1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bc1e = call %struct.Memory* @routine_shll__cl___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bc1e)
  store %struct.Memory* %call_47bc1e, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rax	 RIP: 47bc20	 Bytes: 4
  %loadMem_47bc20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bc20 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bc20)
  store %struct.Memory* %call_47bc20, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rax	 RIP: 47bc24	 Bytes: 4
  %loadMem_47bc24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bc24 = call %struct.Memory* @routine_shlq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bc24)
  store %struct.Memory* %call_47bc24, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rdx	 RIP: 47bc28	 Bytes: 4
  %loadMem_47bc28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bc28 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bc28)
  store %struct.Memory* %call_47bc28, %struct.Memory** %MEMORY

  ; Code: addq %rax, %rdx	 RIP: 47bc2c	 Bytes: 3
  %loadMem_47bc2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bc2c = call %struct.Memory* @routine_addq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bc2c)
  store %struct.Memory* %call_47bc2c, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rax	 RIP: 47bc2f	 Bytes: 4
  %loadMem_47bc2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bc2f = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bc2f)
  store %struct.Memory* %call_47bc2f, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rax	 RIP: 47bc33	 Bytes: 4
  %loadMem_47bc33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bc33 = call %struct.Memory* @routine_shlq__0x4___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bc33)
  store %struct.Memory* %call_47bc33, %struct.Memory** %MEMORY

  ; Code: addq %rax, %rdx	 RIP: 47bc37	 Bytes: 3
  %loadMem_47bc37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bc37 = call %struct.Memory* @routine_addq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bc37)
  store %struct.Memory* %call_47bc37, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rax	 RIP: 47bc3a	 Bytes: 4
  %loadMem_47bc3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bc3a = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bc3a)
  store %struct.Memory* %call_47bc3a, %struct.Memory** %MEMORY

  ; Code: movl %edi, (%rdx,%rax,4)	 RIP: 47bc3e	 Bytes: 3
  %loadMem_47bc3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bc3e = call %struct.Memory* @routine_movl__edi____rdx__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bc3e)
  store %struct.Memory* %call_47bc3e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47bcfa	 RIP: 47bc41	 Bytes: 5
  %loadMem_47bc41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bc41 = call %struct.Memory* @routine_jmpq_.L_47bcfa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bc41, i64 185, i64 5)
  store %struct.Memory* %call_47bc41, %struct.Memory** %MEMORY

  br label %block_.L_47bcfa

  ; Code: .L_47bc46:	 RIP: 47bc46	 Bytes: 0
block_.L_47bc46:

  ; Code: movq $0x724be0, %rax	 RIP: 47bc46	 Bytes: 10
  %loadMem_47bc46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bc46 = call %struct.Memory* @routine_movq__0x724be0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bc46)
  store %struct.Memory* %call_47bc46, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rcx	 RIP: 47bc50	 Bytes: 3
  %loadMem_47bc50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bc50 = call %struct.Memory* @routine_movq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bc50)
  store %struct.Memory* %call_47bc50, %struct.Memory** %MEMORY

  ; Code: addq $0x340, %rcx	 RIP: 47bc53	 Bytes: 7
  %loadMem_47bc53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bc53 = call %struct.Memory* @routine_addq__0x340___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bc53)
  store %struct.Memory* %call_47bc53, %struct.Memory** %MEMORY

  ; Code: movq $0x710020, %rdx	 RIP: 47bc5a	 Bytes: 10
  %loadMem_47bc5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bc5a = call %struct.Memory* @routine_movq__0x710020___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bc5a)
  store %struct.Memory* %call_47bc5a, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rsi	 RIP: 47bc64	 Bytes: 4
  %loadMem_47bc64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bc64 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bc64)
  store %struct.Memory* %call_47bc64, %struct.Memory** %MEMORY

  ; Code: movswl 0x4b94d0(,%rsi,2), %edi	 RIP: 47bc68	 Bytes: 8
  %loadMem_47bc68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bc68 = call %struct.Memory* @routine_movswl_0x4b94d0___rsi_2____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bc68)
  store %struct.Memory* %call_47bc68, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %r8d	 RIP: 47bc70	 Bytes: 4
  %loadMem_47bc70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bc70 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bc70)
  store %struct.Memory* %call_47bc70, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x40(%rbp)	 RIP: 47bc74	 Bytes: 4
  %loadMem_47bc74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bc74 = call %struct.Memory* @routine_movq__rcx__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bc74)
  store %struct.Memory* %call_47bc74, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %ecx	 RIP: 47bc78	 Bytes: 3
  %loadMem_47bc78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bc78 = call %struct.Memory* @routine_movl__r8d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bc78)
  store %struct.Memory* %call_47bc78, %struct.Memory** %MEMORY

  ; Code: shll %cl, %edi	 RIP: 47bc7b	 Bytes: 2
  %loadMem_47bc7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bc7b = call %struct.Memory* @routine_shll__cl___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bc7b)
  store %struct.Memory* %call_47bc7b, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rsi	 RIP: 47bc7d	 Bytes: 4
  %loadMem_47bc7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bc7d = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bc7d)
  store %struct.Memory* %call_47bc7d, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rsi	 RIP: 47bc81	 Bytes: 4
  %loadMem_47bc81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bc81 = call %struct.Memory* @routine_shlq__0x6___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bc81)
  store %struct.Memory* %call_47bc81, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 47bc85	 Bytes: 3
  %loadMem_47bc85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bc85 = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bc85)
  store %struct.Memory* %call_47bc85, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rsi	 RIP: 47bc88	 Bytes: 4
  %loadMem_47bc88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bc88 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bc88)
  store %struct.Memory* %call_47bc88, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rsi	 RIP: 47bc8c	 Bytes: 4
  %loadMem_47bc8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bc8c = call %struct.Memory* @routine_shlq__0x4___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bc8c)
  store %struct.Memory* %call_47bc8c, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 47bc90	 Bytes: 3
  %loadMem_47bc90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bc90 = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bc90)
  store %struct.Memory* %call_47bc90, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rsi	 RIP: 47bc93	 Bytes: 4
  %loadMem_47bc93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bc93 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bc93)
  store %struct.Memory* %call_47bc93, %struct.Memory** %MEMORY

  ; Code: movl %edi, (%rdx,%rsi,4)	 RIP: 47bc97	 Bytes: 3
  %loadMem_47bc97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bc97 = call %struct.Memory* @routine_movl__edi____rdx__rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bc97)
  store %struct.Memory* %call_47bc97, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 47bc9a	 Bytes: 4
  %loadMem_47bc9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bc9a = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bc9a)
  store %struct.Memory* %call_47bc9a, %struct.Memory** %MEMORY

  ; Code: movswl 0x4b94d0(,%rdx,2), %edi	 RIP: 47bc9e	 Bytes: 8
  %loadMem_47bc9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bc9e = call %struct.Memory* @routine_movswl_0x4b94d0___rdx_2____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bc9e)
  store %struct.Memory* %call_47bc9e, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 47bca6	 Bytes: 3
  %loadMem_47bca6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bca6 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bca6)
  store %struct.Memory* %call_47bca6, %struct.Memory** %MEMORY

  ; Code: shll %cl, %edi	 RIP: 47bca9	 Bytes: 2
  %loadMem_47bca9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bca9 = call %struct.Memory* @routine_shll__cl___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bca9)
  store %struct.Memory* %call_47bca9, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rdx	 RIP: 47bcab	 Bytes: 4
  %loadMem_47bcab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bcab = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bcab)
  store %struct.Memory* %call_47bcab, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 47bcaf	 Bytes: 4
  %loadMem_47bcaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bcaf = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bcaf)
  store %struct.Memory* %call_47bcaf, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 47bcb3	 Bytes: 3
  %loadMem_47bcb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bcb3 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bcb3)
  store %struct.Memory* %call_47bcb3, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 47bcb6	 Bytes: 4
  %loadMem_47bcb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bcb6 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bcb6)
  store %struct.Memory* %call_47bcb6, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 47bcba	 Bytes: 4
  %loadMem_47bcba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bcba = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bcba)
  store %struct.Memory* %call_47bcba, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 47bcbe	 Bytes: 3
  %loadMem_47bcbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bcbe = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bcbe)
  store %struct.Memory* %call_47bcbe, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 47bcc1	 Bytes: 4
  %loadMem_47bcc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bcc1 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bcc1)
  store %struct.Memory* %call_47bcc1, %struct.Memory** %MEMORY

  ; Code: movl %edi, (%rax,%rdx,4)	 RIP: 47bcc5	 Bytes: 3
  %loadMem_47bcc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bcc5 = call %struct.Memory* @routine_movl__edi____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bcc5)
  store %struct.Memory* %call_47bcc5, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 47bcc8	 Bytes: 4
  %loadMem_47bcc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bcc8 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bcc8)
  store %struct.Memory* %call_47bcc8, %struct.Memory** %MEMORY

  ; Code: movswl 0x4b94d0(,%rax,2), %edi	 RIP: 47bccc	 Bytes: 8
  %loadMem_47bccc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bccc = call %struct.Memory* @routine_movswl_0x4b94d0___rax_2____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bccc)
  store %struct.Memory* %call_47bccc, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 47bcd4	 Bytes: 3
  %loadMem_47bcd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bcd4 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bcd4)
  store %struct.Memory* %call_47bcd4, %struct.Memory** %MEMORY

  ; Code: shll %cl, %edi	 RIP: 47bcd7	 Bytes: 2
  %loadMem_47bcd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bcd7 = call %struct.Memory* @routine_shll__cl___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bcd7)
  store %struct.Memory* %call_47bcd7, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rax	 RIP: 47bcd9	 Bytes: 4
  %loadMem_47bcd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bcd9 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bcd9)
  store %struct.Memory* %call_47bcd9, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rax	 RIP: 47bcdd	 Bytes: 4
  %loadMem_47bcdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bcdd = call %struct.Memory* @routine_shlq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bcdd)
  store %struct.Memory* %call_47bcdd, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rdx	 RIP: 47bce1	 Bytes: 4
  %loadMem_47bce1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bce1 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bce1)
  store %struct.Memory* %call_47bce1, %struct.Memory** %MEMORY

  ; Code: addq %rax, %rdx	 RIP: 47bce5	 Bytes: 3
  %loadMem_47bce5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bce5 = call %struct.Memory* @routine_addq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bce5)
  store %struct.Memory* %call_47bce5, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rax	 RIP: 47bce8	 Bytes: 4
  %loadMem_47bce8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bce8 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bce8)
  store %struct.Memory* %call_47bce8, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rax	 RIP: 47bcec	 Bytes: 4
  %loadMem_47bcec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bcec = call %struct.Memory* @routine_shlq__0x4___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bcec)
  store %struct.Memory* %call_47bcec, %struct.Memory** %MEMORY

  ; Code: addq %rax, %rdx	 RIP: 47bcf0	 Bytes: 3
  %loadMem_47bcf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bcf0 = call %struct.Memory* @routine_addq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bcf0)
  store %struct.Memory* %call_47bcf0, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rax	 RIP: 47bcf3	 Bytes: 4
  %loadMem_47bcf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bcf3 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bcf3)
  store %struct.Memory* %call_47bcf3, %struct.Memory** %MEMORY

  ; Code: movl %edi, (%rdx,%rax,4)	 RIP: 47bcf7	 Bytes: 3
  %loadMem_47bcf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bcf7 = call %struct.Memory* @routine_movl__edi____rdx__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bcf7)
  store %struct.Memory* %call_47bcf7, %struct.Memory** %MEMORY

  ; Code: .L_47bcfa:	 RIP: 47bcfa	 Bytes: 0
  br label %block_.L_47bcfa
block_.L_47bcfa:

  ; Code: movq $0x70e250, %rax	 RIP: 47bcfa	 Bytes: 10
  %loadMem_47bcfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bcfa = call %struct.Memory* @routine_movq__0x70e250___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bcfa)
  store %struct.Memory* %call_47bcfa, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rcx	 RIP: 47bd04	 Bytes: 3
  %loadMem_47bd04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bd04 = call %struct.Memory* @routine_movq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bd04)
  store %struct.Memory* %call_47bd04, %struct.Memory** %MEMORY

  ; Code: addq $0x340, %rcx	 RIP: 47bd07	 Bytes: 7
  %loadMem_47bd07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bd07 = call %struct.Memory* @routine_addq__0x340___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bd07)
  store %struct.Memory* %call_47bd07, %struct.Memory** %MEMORY

  ; Code: movq $0x6ccf90, %rdx	 RIP: 47bd0e	 Bytes: 10
  %loadMem_47bd0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bd0e = call %struct.Memory* @routine_movq__0x6ccf90___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bd0e)
  store %struct.Memory* %call_47bd0e, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rsi	 RIP: 47bd18	 Bytes: 4
  %loadMem_47bd18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bd18 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bd18)
  store %struct.Memory* %call_47bd18, %struct.Memory** %MEMORY

  ; Code: movswl 0x4b94f0(,%rsi,2), %edi	 RIP: 47bd1c	 Bytes: 8
  %loadMem_47bd1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bd1c = call %struct.Memory* @routine_movswl_0x4b94f0___rsi_2____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bd1c)
  store %struct.Memory* %call_47bd1c, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %r8d	 RIP: 47bd24	 Bytes: 4
  %loadMem_47bd24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bd24 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bd24)
  store %struct.Memory* %call_47bd24, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x48(%rbp)	 RIP: 47bd28	 Bytes: 4
  %loadMem_47bd28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bd28 = call %struct.Memory* @routine_movq__rcx__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bd28)
  store %struct.Memory* %call_47bd28, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %ecx	 RIP: 47bd2c	 Bytes: 3
  %loadMem_47bd2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bd2c = call %struct.Memory* @routine_movl__r8d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bd2c)
  store %struct.Memory* %call_47bd2c, %struct.Memory** %MEMORY

  ; Code: shll %cl, %edi	 RIP: 47bd2f	 Bytes: 2
  %loadMem_47bd2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bd2f = call %struct.Memory* @routine_shll__cl___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bd2f)
  store %struct.Memory* %call_47bd2f, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rsi	 RIP: 47bd31	 Bytes: 4
  %loadMem_47bd31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bd31 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bd31)
  store %struct.Memory* %call_47bd31, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rsi	 RIP: 47bd35	 Bytes: 4
  %loadMem_47bd35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bd35 = call %struct.Memory* @routine_shlq__0x6___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bd35)
  store %struct.Memory* %call_47bd35, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 47bd39	 Bytes: 3
  %loadMem_47bd39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bd39 = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bd39)
  store %struct.Memory* %call_47bd39, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rsi	 RIP: 47bd3c	 Bytes: 4
  %loadMem_47bd3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bd3c = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bd3c)
  store %struct.Memory* %call_47bd3c, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rsi	 RIP: 47bd40	 Bytes: 4
  %loadMem_47bd40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bd40 = call %struct.Memory* @routine_shlq__0x4___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bd40)
  store %struct.Memory* %call_47bd40, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 47bd44	 Bytes: 3
  %loadMem_47bd44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bd44 = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bd44)
  store %struct.Memory* %call_47bd44, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rsi	 RIP: 47bd47	 Bytes: 4
  %loadMem_47bd47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bd47 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bd47)
  store %struct.Memory* %call_47bd47, %struct.Memory** %MEMORY

  ; Code: movl %edi, (%rdx,%rsi,4)	 RIP: 47bd4b	 Bytes: 3
  %loadMem_47bd4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bd4b = call %struct.Memory* @routine_movl__edi____rdx__rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bd4b)
  store %struct.Memory* %call_47bd4b, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 47bd4e	 Bytes: 4
  %loadMem_47bd4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bd4e = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bd4e)
  store %struct.Memory* %call_47bd4e, %struct.Memory** %MEMORY

  ; Code: movswl 0x4b94f0(,%rdx,2), %edi	 RIP: 47bd52	 Bytes: 8
  %loadMem_47bd52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bd52 = call %struct.Memory* @routine_movswl_0x4b94f0___rdx_2____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bd52)
  store %struct.Memory* %call_47bd52, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 47bd5a	 Bytes: 3
  %loadMem_47bd5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bd5a = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bd5a)
  store %struct.Memory* %call_47bd5a, %struct.Memory** %MEMORY

  ; Code: shll %cl, %edi	 RIP: 47bd5d	 Bytes: 2
  %loadMem_47bd5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bd5d = call %struct.Memory* @routine_shll__cl___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bd5d)
  store %struct.Memory* %call_47bd5d, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rdx	 RIP: 47bd5f	 Bytes: 4
  %loadMem_47bd5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bd5f = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bd5f)
  store %struct.Memory* %call_47bd5f, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 47bd63	 Bytes: 4
  %loadMem_47bd63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bd63 = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bd63)
  store %struct.Memory* %call_47bd63, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 47bd67	 Bytes: 3
  %loadMem_47bd67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bd67 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bd67)
  store %struct.Memory* %call_47bd67, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 47bd6a	 Bytes: 4
  %loadMem_47bd6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bd6a = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bd6a)
  store %struct.Memory* %call_47bd6a, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 47bd6e	 Bytes: 4
  %loadMem_47bd6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bd6e = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bd6e)
  store %struct.Memory* %call_47bd6e, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 47bd72	 Bytes: 3
  %loadMem_47bd72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bd72 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bd72)
  store %struct.Memory* %call_47bd72, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 47bd75	 Bytes: 4
  %loadMem_47bd75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bd75 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bd75)
  store %struct.Memory* %call_47bd75, %struct.Memory** %MEMORY

  ; Code: movl %edi, (%rax,%rdx,4)	 RIP: 47bd79	 Bytes: 3
  %loadMem_47bd79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bd79 = call %struct.Memory* @routine_movl__edi____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bd79)
  store %struct.Memory* %call_47bd79, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 47bd7c	 Bytes: 4
  %loadMem_47bd7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bd7c = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bd7c)
  store %struct.Memory* %call_47bd7c, %struct.Memory** %MEMORY

  ; Code: movswl 0x4b94f0(,%rax,2), %edi	 RIP: 47bd80	 Bytes: 8
  %loadMem_47bd80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bd80 = call %struct.Memory* @routine_movswl_0x4b94f0___rax_2____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bd80)
  store %struct.Memory* %call_47bd80, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 47bd88	 Bytes: 3
  %loadMem_47bd88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bd88 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bd88)
  store %struct.Memory* %call_47bd88, %struct.Memory** %MEMORY

  ; Code: shll %cl, %edi	 RIP: 47bd8b	 Bytes: 2
  %loadMem_47bd8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bd8b = call %struct.Memory* @routine_shll__cl___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bd8b)
  store %struct.Memory* %call_47bd8b, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rax	 RIP: 47bd8d	 Bytes: 4
  %loadMem_47bd8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bd8d = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bd8d)
  store %struct.Memory* %call_47bd8d, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rax	 RIP: 47bd91	 Bytes: 4
  %loadMem_47bd91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bd91 = call %struct.Memory* @routine_shlq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bd91)
  store %struct.Memory* %call_47bd91, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rdx	 RIP: 47bd95	 Bytes: 4
  %loadMem_47bd95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bd95 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bd95)
  store %struct.Memory* %call_47bd95, %struct.Memory** %MEMORY

  ; Code: addq %rax, %rdx	 RIP: 47bd99	 Bytes: 3
  %loadMem_47bd99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bd99 = call %struct.Memory* @routine_addq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bd99)
  store %struct.Memory* %call_47bd99, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rax	 RIP: 47bd9c	 Bytes: 4
  %loadMem_47bd9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bd9c = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bd9c)
  store %struct.Memory* %call_47bd9c, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rax	 RIP: 47bda0	 Bytes: 4
  %loadMem_47bda0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bda0 = call %struct.Memory* @routine_shlq__0x4___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bda0)
  store %struct.Memory* %call_47bda0, %struct.Memory** %MEMORY

  ; Code: addq %rax, %rdx	 RIP: 47bda4	 Bytes: 3
  %loadMem_47bda4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bda4 = call %struct.Memory* @routine_addq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bda4)
  store %struct.Memory* %call_47bda4, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rax	 RIP: 47bda7	 Bytes: 4
  %loadMem_47bda7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bda7 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bda7)
  store %struct.Memory* %call_47bda7, %struct.Memory** %MEMORY

  ; Code: movl %edi, (%rdx,%rax,4)	 RIP: 47bdab	 Bytes: 3
  %loadMem_47bdab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bdab = call %struct.Memory* @routine_movl__edi____rdx__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bdab)
  store %struct.Memory* %call_47bdab, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %eax	 RIP: 47bdae	 Bytes: 3
  %loadMem_47bdae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bdae = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bdae)
  store %struct.Memory* %call_47bdae, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 47bdb1	 Bytes: 3
  %loadMem_47bdb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bdb1 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bdb1)
  store %struct.Memory* %call_47bdb1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 47bdb4	 Bytes: 3
  %loadMem_47bdb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bdb4 = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bdb4)
  store %struct.Memory* %call_47bdb4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47bb65	 RIP: 47bdb7	 Bytes: 5
  %loadMem_47bdb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bdb7 = call %struct.Memory* @routine_jmpq_.L_47bb65(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bdb7, i64 -594, i64 5)
  store %struct.Memory* %call_47bdb7, %struct.Memory** %MEMORY

  br label %block_.L_47bb65

  ; Code: .L_47bdbc:	 RIP: 47bdbc	 Bytes: 0
block_.L_47bdbc:

  ; Code: jmpq .L_47bdc1	 RIP: 47bdbc	 Bytes: 5
  %loadMem_47bdbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bdbc = call %struct.Memory* @routine_jmpq_.L_47bdc1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bdbc, i64 5, i64 5)
  store %struct.Memory* %call_47bdbc, %struct.Memory** %MEMORY

  br label %block_.L_47bdc1

  ; Code: .L_47bdc1:	 RIP: 47bdc1	 Bytes: 0
block_.L_47bdc1:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 47bdc1	 Bytes: 3
  %loadMem_47bdc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bdc1 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bdc1)
  store %struct.Memory* %call_47bdc1, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 47bdc4	 Bytes: 3
  %loadMem_47bdc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bdc4 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bdc4)
  store %struct.Memory* %call_47bdc4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8(%rbp)	 RIP: 47bdc7	 Bytes: 3
  %loadMem_47bdc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bdc7 = call %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bdc7)
  store %struct.Memory* %call_47bdc7, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47bb54	 RIP: 47bdca	 Bytes: 5
  %loadMem_47bdca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bdca = call %struct.Memory* @routine_jmpq_.L_47bb54(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bdca, i64 -630, i64 5)
  store %struct.Memory* %call_47bdca, %struct.Memory** %MEMORY

  br label %block_.L_47bb54

  ; Code: .L_47bdcf:	 RIP: 47bdcf	 Bytes: 0
block_.L_47bdcf:

  ; Code: jmpq .L_47bdd4	 RIP: 47bdcf	 Bytes: 5
  %loadMem_47bdcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bdcf = call %struct.Memory* @routine_jmpq_.L_47bdd4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bdcf, i64 5, i64 5)
  store %struct.Memory* %call_47bdcf, %struct.Memory** %MEMORY

  br label %block_.L_47bdd4

  ; Code: .L_47bdd4:	 RIP: 47bdd4	 Bytes: 0
block_.L_47bdd4:

  ; Code: movl -0xc(%rbp), %eax	 RIP: 47bdd4	 Bytes: 3
  %loadMem_47bdd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bdd4 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bdd4)
  store %struct.Memory* %call_47bdd4, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 47bdd7	 Bytes: 3
  %loadMem_47bdd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bdd7 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bdd7)
  store %struct.Memory* %call_47bdd7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 47bdda	 Bytes: 3
  %loadMem_47bdda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bdda = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bdda)
  store %struct.Memory* %call_47bdda, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47bb37	 RIP: 47bddd	 Bytes: 5
  %loadMem_47bddd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bddd = call %struct.Memory* @routine_jmpq_.L_47bb37(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bddd, i64 -678, i64 5)
  store %struct.Memory* %call_47bddd, %struct.Memory** %MEMORY

  br label %block_.L_47bb37

  ; Code: .L_47bde2:	 RIP: 47bde2	 Bytes: 0
block_.L_47bde2:

  ; Code: jmpq .L_47bde7	 RIP: 47bde2	 Bytes: 5
  %loadMem_47bde2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bde2 = call %struct.Memory* @routine_jmpq_.L_47bde7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bde2, i64 5, i64 5)
  store %struct.Memory* %call_47bde2, %struct.Memory** %MEMORY

  br label %block_.L_47bde7

  ; Code: .L_47bde7:	 RIP: 47bde7	 Bytes: 0
block_.L_47bde7:

  ; Code: popq %rbp	 RIP: 47bde7	 Bytes: 1
  %loadMem_47bde7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bde7 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bde7)
  store %struct.Memory* %call_47bde7, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 47bde8	 Bytes: 1
  %loadMem_47bde8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47bde8 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47bde8)
  store %struct.Memory* %call_47bde8, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_47bde8
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x6cb8f8_type* @G_0x6cb8f8 to i64))
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_cmpl__0x0__0xe00__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 3584
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_je_.L_47bb30(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0xd__MINUS0xc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 13)
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

define %struct.Memory* @routine_jge_.L_47bb2b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
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

define %struct.Memory* @routine_addl__0xf___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 15)
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

define %struct.Memory* @routine_subl__0xa___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 10)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x4__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 4)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_47bb18(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x4__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 4)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_47bb05(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_shll__0x2___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 2)
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
  %14 = sub i64 %13, 8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x6cb900_type* @G_0x6cb900 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_cmpl__0x2__0x18__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
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

define %struct.Memory* @routine_jne_.L_47b98f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x724be0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 7490528)
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_addq__0x340___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 832)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__0x710020___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 7405600)
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i16*
  %6 = load i16, i16* %5
  %7 = sext i16 %6 to i64
  %8 = and i64 %7, 4294967295
  store i64 %8, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movswl_0x70fd60___rsi_2____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 2
  %14 = add i64 %13, 7404896
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl_MINUS0x14__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 20
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rcx__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__r8d___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R8D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* readnone, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
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

define %struct.Memory* @routine_shll__cl___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 11
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RDI = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RDI
  %14 = load i8, i8* %CL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
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

define %struct.Memory* @routine_shlq__0x6___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 6)
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




define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edi____rdx__rsi_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RSI
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %EDI
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}


define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movswl_0x70fd80___rdx_2____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 2
  %14 = add i64 %13, 7404928
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %14)
  ret %struct.Memory* %17
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




define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_shlq__0x6___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 6)
  ret %struct.Memory* %12
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




define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edi____rax__rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %EDI
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
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


define %struct.Memory* @routine_movswl_0x70fda0___rax_2____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 2
  %14 = add i64 %13, 7404960
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_shlq__0x6___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 6)
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


define %struct.Memory* @routine_addq__rax___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_shlq__0x4___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 4)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edi____rdx__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %EDI
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_47ba43(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_movswl_0x70fdc0___rsi_2____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 2
  %14 = add i64 %13, 7404992
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq__rcx__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}
























define %struct.Memory* @routine_movswl_0x70fde0___rdx_2____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 2
  %14 = add i64 %13, 7405024
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %14)
  ret %struct.Memory* %17
}
























define %struct.Memory* @routine_movswl_0x70fe00___rax_2____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 2
  %14 = add i64 %13, 7405056
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %14)
  ret %struct.Memory* %17
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














define %struct.Memory* @routine_movq__0x70e250___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 7397968)
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movq__0x6ccf90___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 7131024)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movswl_0x70fe20___rsi_2____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 2
  %14 = add i64 %13, 7405088
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %14)
  ret %struct.Memory* %17
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
























define %struct.Memory* @routine_movswl_0x70fe40___rdx_2____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 2
  %14 = add i64 %13, 7405120
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %14)
  ret %struct.Memory* %17
}
























define %struct.Memory* @routine_movswl_0x70fe60___rax_2____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 2
  %14 = add i64 %13, 7405152
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %14)
  ret %struct.Memory* %17
}










define %struct.Memory* @routine_movq_MINUS0x30__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_47b8ae(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_47bb0a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 8
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_47b89d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_47bb1d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_47b880(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_47bde7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_jge_.L_47bde2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jge_.L_47bdcf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_47bdbc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jne_.L_47bc46(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_movswl_0x4b94b0___rsi_2____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 2
  %14 = add i64 %13, 4953264
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq__rcx__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}
























define %struct.Memory* @routine_movswl_0x4b94b0___rdx_2____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 2
  %14 = add i64 %13, 4953264
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %14)
  ret %struct.Memory* %17
}
























define %struct.Memory* @routine_movswl_0x4b94b0___rax_2____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 2
  %14 = add i64 %13, 4953264
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %14)
  ret %struct.Memory* %17
}










define %struct.Memory* @routine_movq_MINUS0x38__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}














define %struct.Memory* @routine_jmpq_.L_47bcfa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_movswl_0x4b94d0___rsi_2____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 2
  %14 = add i64 %13, 4953296
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq__rcx__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}
























define %struct.Memory* @routine_movswl_0x4b94d0___rdx_2____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 2
  %14 = add i64 %13, 4953296
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %14)
  ret %struct.Memory* %17
}
























define %struct.Memory* @routine_movswl_0x4b94d0___rax_2____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 2
  %14 = add i64 %13, 4953296
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %14)
  ret %struct.Memory* %17
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
























define %struct.Memory* @routine_movswl_0x4b94f0___rsi_2____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 2
  %14 = add i64 %13, 4953328
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq__rcx__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}
























define %struct.Memory* @routine_movswl_0x4b94f0___rdx_2____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 2
  %14 = add i64 %13, 4953328
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %14)
  ret %struct.Memory* %17
}
























define %struct.Memory* @routine_movswl_0x4b94f0___rax_2____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 2
  %14 = add i64 %13, 4953328
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %14)
  ret %struct.Memory* %17
}










define %struct.Memory* @routine_movq_MINUS0x48__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




















define %struct.Memory* @routine_jmpq_.L_47bb65(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_47bdc1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_47bb54(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_47bdd4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_47bb37(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

