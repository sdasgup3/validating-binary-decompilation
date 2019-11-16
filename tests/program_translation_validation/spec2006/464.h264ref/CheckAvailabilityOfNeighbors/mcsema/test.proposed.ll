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

declare %struct.Memory* @sub_449dc0.mb_is_available(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x6cb900_type = type <{ [8 x i8] }>
@G_0x6cb900= global %G_0x6cb900_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @CheckAvailabilityOfNeighbors(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .CheckAvailabilityOfNeighbors:	 RIP: 449e80	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 449e80	 Bytes: 1
  %loadMem_449e80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449e80 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449e80)
  store %struct.Memory* %call_449e80, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 449e81	 Bytes: 3
  %loadMem_449e81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449e81 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449e81)
  store %struct.Memory* %call_449e81, %struct.Memory** %MEMORY

  ; Code: subq $0x30, %rsp	 RIP: 449e84	 Bytes: 4
  %loadMem_449e84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449e84 = call %struct.Memory* @routine_subq__0x30___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449e84)
  store %struct.Memory* %call_449e84, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 449e88	 Bytes: 8
  %loadMem_449e88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449e88 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449e88)
  store %struct.Memory* %call_449e88, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %ecx	 RIP: 449e90	 Bytes: 3
  %loadMem_449e90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449e90 = call %struct.Memory* @routine_movl_0xc__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449e90)
  store %struct.Memory* %call_449e90, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x4(%rbp)	 RIP: 449e93	 Bytes: 3
  %loadMem_449e93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449e93 = call %struct.Memory* @routine_movl__ecx__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449e93)
  store %struct.Memory* %call_449e93, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 449e96	 Bytes: 8
  %loadMem_449e96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449e96 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449e96)
  store %struct.Memory* %call_449e96, %struct.Memory** %MEMORY

  ; Code: movq 0x3758(%rax), %rax	 RIP: 449e9e	 Bytes: 7
  %loadMem_449e9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449e9e = call %struct.Memory* @routine_movq_0x3758__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449e9e)
  store %struct.Memory* %call_449e9e, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 449ea5	 Bytes: 4
  %loadMem_449ea5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449ea5 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449ea5)
  store %struct.Memory* %call_449ea5, %struct.Memory** %MEMORY

  ; Code: imulq $0x278, %rdx, %rdx	 RIP: 449ea9	 Bytes: 7
  %loadMem_449ea9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449ea9 = call %struct.Memory* @routine_imulq__0x278___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449ea9)
  store %struct.Memory* %call_449ea9, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 449eb0	 Bytes: 3
  %loadMem_449eb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449eb0 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449eb0)
  store %struct.Memory* %call_449eb0, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x10(%rbp)	 RIP: 449eb3	 Bytes: 4
  %loadMem_449eb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449eb3 = call %struct.Memory* @routine_movq__rax__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449eb3)
  store %struct.Memory* %call_449eb3, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 449eb7	 Bytes: 4
  %loadMem_449eb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449eb7 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449eb7)
  store %struct.Memory* %call_449eb7, %struct.Memory** %MEMORY

  ; Code: movq $0x0, 0x38(%rax)	 RIP: 449ebb	 Bytes: 8
  %loadMem_449ebb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449ebb = call %struct.Memory* @routine_movq__0x0__0x38__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449ebb)
  store %struct.Memory* %call_449ebb, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 449ec3	 Bytes: 4
  %loadMem_449ec3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449ec3 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449ec3)
  store %struct.Memory* %call_449ec3, %struct.Memory** %MEMORY

  ; Code: movq $0x0, 0x40(%rax)	 RIP: 449ec7	 Bytes: 8
  %loadMem_449ec7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449ec7 = call %struct.Memory* @routine_movq__0x0__0x40__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449ec7)
  store %struct.Memory* %call_449ec7, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 449ecf	 Bytes: 8
  %loadMem_449ecf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449ecf = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449ecf)
  store %struct.Memory* %call_449ecf, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11ad0(%rax)	 RIP: 449ed7	 Bytes: 7
  %loadMem_449ed7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449ed7 = call %struct.Memory* @routine_cmpl__0x0__0x11ad0__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449ed7)
  store %struct.Memory* %call_449ed7, %struct.Memory** %MEMORY

  ; Code: je .L_44a0c6	 RIP: 449ede	 Bytes: 6
  %loadMem_449ede = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449ede = call %struct.Memory* @routine_je_.L_44a0c6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449ede, i8* %BRANCH_TAKEN, i64 488, i64 6, i64 6)
  store %struct.Memory* %call_449ede, %struct.Memory** %MEMORY

  %loadBr_449ede = load i8, i8* %BRANCH_TAKEN
  %cmpBr_449ede = icmp eq i8 %loadBr_449ede, 1
  br i1 %cmpBr_449ede, label %block_.L_44a0c6, label %block_449ee4

block_449ee4:
  ; Code: movl $0x2, %eax	 RIP: 449ee4	 Bytes: 5
  %loadMem_449ee4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449ee4 = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449ee4)
  store %struct.Memory* %call_449ee4, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 449ee9	 Bytes: 3
  %loadMem_449ee9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449ee9 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449ee9)
  store %struct.Memory* %call_449ee9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 449eec	 Bytes: 3
  %loadMem_449eec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449eec = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449eec)
  store %struct.Memory* %call_449eec, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 449eef	 Bytes: 2
  %loadMem_449eef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449eef = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449eef)
  store %struct.Memory* %call_449eef, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 449ef1	 Bytes: 1
  %loadMem_449ef1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449ef1 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449ef1)
  store %struct.Memory* %call_449ef1, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 449ef2	 Bytes: 3
  %loadMem_449ef2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449ef2 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449ef2)
  store %struct.Memory* %call_449ef2, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 449ef5	 Bytes: 2
  %loadMem_449ef5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449ef5 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449ef5)
  store %struct.Memory* %call_449ef5, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 449ef7	 Bytes: 3
  %loadMem_449ef7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449ef7 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449ef7)
  store %struct.Memory* %call_449ef7, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 449efa	 Bytes: 3
  %loadMem_449efa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449efa = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449efa)
  store %struct.Memory* %call_449efa, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rsi	 RIP: 449efd	 Bytes: 4
  %loadMem_449efd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449efd = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449efd)
  store %struct.Memory* %call_449efd, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x218(%rsi)	 RIP: 449f01	 Bytes: 6
  %loadMem_449f01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449f01 = call %struct.Memory* @routine_movl__eax__0x218__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449f01)
  store %struct.Memory* %call_449f01, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %eax	 RIP: 449f07	 Bytes: 3
  %loadMem_449f07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449f07 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449f07)
  store %struct.Memory* %call_449f07, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 449f0a	 Bytes: 1
  %loadMem_449f0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449f0a = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449f0a)
  store %struct.Memory* %call_449f0a, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 449f0b	 Bytes: 2
  %loadMem_449f0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449f0b = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449f0b)
  store %struct.Memory* %call_449f0b, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rsi	 RIP: 449f0d	 Bytes: 8
  %loadMem_449f0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449f0d = call %struct.Memory* @routine_movq_0x6cb900___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449f0d)
  store %struct.Memory* %call_449f0d, %struct.Memory** %MEMORY

  ; Code: subl 0x11b14(%rsi), %eax	 RIP: 449f15	 Bytes: 6
  %loadMem_449f15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449f15 = call %struct.Memory* @routine_subl_0x11b14__rsi____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449f15)
  store %struct.Memory* %call_449f15, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 449f1b	 Bytes: 3
  %loadMem_449f1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449f1b = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449f1b)
  store %struct.Memory* %call_449f1b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rsi	 RIP: 449f1e	 Bytes: 4
  %loadMem_449f1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449f1e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449f1e)
  store %struct.Memory* %call_449f1e, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x21c(%rsi)	 RIP: 449f22	 Bytes: 6
  %loadMem_449f22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449f22 = call %struct.Memory* @routine_movl__eax__0x21c__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449f22)
  store %struct.Memory* %call_449f22, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %eax	 RIP: 449f28	 Bytes: 3
  %loadMem_449f28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449f28 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449f28)
  store %struct.Memory* %call_449f28, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 449f2b	 Bytes: 1
  %loadMem_449f2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449f2b = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449f2b)
  store %struct.Memory* %call_449f2b, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 449f2c	 Bytes: 2
  %loadMem_449f2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449f2c = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449f2c)
  store %struct.Memory* %call_449f2c, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rsi	 RIP: 449f2e	 Bytes: 8
  %loadMem_449f2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449f2e = call %struct.Memory* @routine_movq_0x6cb900___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449f2e)
  store %struct.Memory* %call_449f2e, %struct.Memory** %MEMORY

  ; Code: subl 0x11b14(%rsi), %eax	 RIP: 449f36	 Bytes: 6
  %loadMem_449f36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449f36 = call %struct.Memory* @routine_subl_0x11b14__rsi____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449f36)
  store %struct.Memory* %call_449f36, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 449f3c	 Bytes: 3
  %loadMem_449f3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449f3c = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449f3c)
  store %struct.Memory* %call_449f3c, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 449f3f	 Bytes: 3
  %loadMem_449f3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449f3f = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449f3f)
  store %struct.Memory* %call_449f3f, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rsi	 RIP: 449f42	 Bytes: 4
  %loadMem_449f42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449f42 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449f42)
  store %struct.Memory* %call_449f42, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x220(%rsi)	 RIP: 449f46	 Bytes: 6
  %loadMem_449f46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449f46 = call %struct.Memory* @routine_movl__eax__0x220__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449f46)
  store %struct.Memory* %call_449f46, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %eax	 RIP: 449f4c	 Bytes: 3
  %loadMem_449f4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449f4c = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449f4c)
  store %struct.Memory* %call_449f4c, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 449f4f	 Bytes: 1
  %loadMem_449f4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449f4f = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449f4f)
  store %struct.Memory* %call_449f4f, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 449f50	 Bytes: 2
  %loadMem_449f50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449f50 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449f50)
  store %struct.Memory* %call_449f50, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rsi	 RIP: 449f52	 Bytes: 8
  %loadMem_449f52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449f52 = call %struct.Memory* @routine_movq_0x6cb900___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449f52)
  store %struct.Memory* %call_449f52, %struct.Memory** %MEMORY

  ; Code: subl 0x11b14(%rsi), %eax	 RIP: 449f5a	 Bytes: 6
  %loadMem_449f5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449f5a = call %struct.Memory* @routine_subl_0x11b14__rsi____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449f5a)
  store %struct.Memory* %call_449f5a, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 449f60	 Bytes: 3
  %loadMem_449f60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449f60 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449f60)
  store %struct.Memory* %call_449f60, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 449f63	 Bytes: 3
  %loadMem_449f63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449f63 = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449f63)
  store %struct.Memory* %call_449f63, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rsi	 RIP: 449f66	 Bytes: 4
  %loadMem_449f66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449f66 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449f66)
  store %struct.Memory* %call_449f66, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x224(%rsi)	 RIP: 449f6a	 Bytes: 6
  %loadMem_449f6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449f6a = call %struct.Memory* @routine_movl__eax__0x224__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449f6a)
  store %struct.Memory* %call_449f6a, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rsi	 RIP: 449f70	 Bytes: 4
  %loadMem_449f70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449f70 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449f70)
  store %struct.Memory* %call_449f70, %struct.Memory** %MEMORY

  ; Code: movl 0x218(%rsi), %edi	 RIP: 449f74	 Bytes: 6
  %loadMem_449f74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449f74 = call %struct.Memory* @routine_movl_0x218__rsi____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449f74)
  store %struct.Memory* %call_449f74, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 449f7a	 Bytes: 3
  %loadMem_449f7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449f7a = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449f7a)
  store %struct.Memory* %call_449f7a, %struct.Memory** %MEMORY

  ; Code: callq .mb_is_available	 RIP: 449f7d	 Bytes: 5
  %loadMem1_449f7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_449f7d = call %struct.Memory* @routine_callq_.mb_is_available(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_449f7d, i64 -445, i64 5, i64 5)
  store %struct.Memory* %call1_449f7d, %struct.Memory** %MEMORY

  %loadMem2_449f7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_449f7d = load i64, i64* %3
  %call2_449f7d = call %struct.Memory* @sub_449dc0.mb_is_available(%struct.State* %0, i64  %loadPC_449f7d, %struct.Memory* %loadMem2_449f7d)
  store %struct.Memory* %call2_449f7d, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 449f82	 Bytes: 2
  %loadMem_449f82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449f82 = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449f82)
  store %struct.Memory* %call_449f82, %struct.Memory** %MEMORY

  ; Code: movb %cl, %r8b	 RIP: 449f84	 Bytes: 3
  %loadMem_449f84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449f84 = call %struct.Memory* @routine_movb__cl___r8b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449f84)
  store %struct.Memory* %call_449f84, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 449f87	 Bytes: 3
  %loadMem_449f87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449f87 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449f87)
  store %struct.Memory* %call_449f87, %struct.Memory** %MEMORY

  ; Code: movb %r8b, -0x15(%rbp)	 RIP: 449f8a	 Bytes: 4
  %loadMem_449f8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449f8a = call %struct.Memory* @routine_movb__r8b__MINUS0x15__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449f8a)
  store %struct.Memory* %call_449f8a, %struct.Memory** %MEMORY

  ; Code: je .L_449fc4	 RIP: 449f8e	 Bytes: 6
  %loadMem_449f8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449f8e = call %struct.Memory* @routine_je_.L_449fc4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449f8e, i8* %BRANCH_TAKEN, i64 54, i64 6, i64 6)
  store %struct.Memory* %call_449f8e, %struct.Memory** %MEMORY

  %loadBr_449f8e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_449f8e = icmp eq i8 %loadBr_449f8e, 1
  br i1 %cmpBr_449f8e, label %block_.L_449fc4, label %block_449f94

block_449f94:
  ; Code: movl $0x2, %eax	 RIP: 449f94	 Bytes: 5
  %loadMem_449f94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449f94 = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449f94)
  store %struct.Memory* %call_449f94, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 449f99	 Bytes: 3
  %loadMem_449f99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449f99 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449f99)
  store %struct.Memory* %call_449f99, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 449f9c	 Bytes: 3
  %loadMem_449f9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449f9c = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449f9c)
  store %struct.Memory* %call_449f9c, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 449f9f	 Bytes: 2
  %loadMem_449f9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449f9f = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449f9f)
  store %struct.Memory* %call_449f9f, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 449fa1	 Bytes: 1
  %loadMem_449fa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449fa1 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449fa1)
  store %struct.Memory* %call_449fa1, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 449fa2	 Bytes: 3
  %loadMem_449fa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449fa2 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449fa2)
  store %struct.Memory* %call_449fa2, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 449fa5	 Bytes: 2
  %loadMem_449fa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449fa5 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449fa5)
  store %struct.Memory* %call_449fa5, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rsi	 RIP: 449fa7	 Bytes: 8
  %loadMem_449fa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449fa7 = call %struct.Memory* @routine_movq_0x6cb900___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449fa7)
  store %struct.Memory* %call_449fa7, %struct.Memory** %MEMORY

  ; Code: xorl %edi, %edi	 RIP: 449faf	 Bytes: 2
  %loadMem_449faf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449faf = call %struct.Memory* @routine_xorl__edi___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449faf)
  store %struct.Memory* %call_449faf, %struct.Memory** %MEMORY

  ; Code: movl %edi, %edx	 RIP: 449fb1	 Bytes: 2
  %loadMem_449fb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449fb1 = call %struct.Memory* @routine_movl__edi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449fb1)
  store %struct.Memory* %call_449fb1, %struct.Memory** %MEMORY

  ; Code: divl 0x11b14(%rsi)	 RIP: 449fb3	 Bytes: 6
  %loadMem_449fb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449fb3 = call %struct.Memory* @routine_divl_0x11b14__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449fb3)
  store %struct.Memory* %call_449fb3, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 449fb9	 Bytes: 3
  %loadMem_449fb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449fb9 = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449fb9)
  store %struct.Memory* %call_449fb9, %struct.Memory** %MEMORY

  ; Code: setne %r8b	 RIP: 449fbc	 Bytes: 4
  %loadMem_449fbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449fbc = call %struct.Memory* @routine_setne__r8b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449fbc)
  store %struct.Memory* %call_449fbc, %struct.Memory** %MEMORY

  ; Code: movb %r8b, -0x15(%rbp)	 RIP: 449fc0	 Bytes: 4
  %loadMem_449fc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449fc0 = call %struct.Memory* @routine_movb__r8b__MINUS0x15__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449fc0)
  store %struct.Memory* %call_449fc0, %struct.Memory** %MEMORY

  ; Code: .L_449fc4:	 RIP: 449fc4	 Bytes: 0
  br label %block_.L_449fc4
block_.L_449fc4:

  ; Code: movb -0x15(%rbp), %al	 RIP: 449fc4	 Bytes: 3
  %loadMem_449fc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449fc4 = call %struct.Memory* @routine_movb_MINUS0x15__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449fc4)
  store %struct.Memory* %call_449fc4, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %al	 RIP: 449fc7	 Bytes: 2
  %loadMem_449fc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449fc7 = call %struct.Memory* @routine_andb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449fc7)
  store %struct.Memory* %call_449fc7, %struct.Memory** %MEMORY

  ; Code: movzbl %al, %ecx	 RIP: 449fc9	 Bytes: 3
  %loadMem_449fc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449fc9 = call %struct.Memory* @routine_movzbl__al___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449fc9)
  store %struct.Memory* %call_449fc9, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 449fcc	 Bytes: 4
  %loadMem_449fcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449fcc = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449fcc)
  store %struct.Memory* %call_449fcc, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x228(%rdx)	 RIP: 449fd0	 Bytes: 6
  %loadMem_449fd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449fd0 = call %struct.Memory* @routine_movl__ecx__0x228__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449fd0)
  store %struct.Memory* %call_449fd0, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 449fd6	 Bytes: 4
  %loadMem_449fd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449fd6 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449fd6)
  store %struct.Memory* %call_449fd6, %struct.Memory** %MEMORY

  ; Code: movl 0x21c(%rdx), %edi	 RIP: 449fda	 Bytes: 6
  %loadMem_449fda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449fda = call %struct.Memory* @routine_movl_0x21c__rdx____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449fda)
  store %struct.Memory* %call_449fda, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 449fe0	 Bytes: 3
  %loadMem_449fe0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449fe0 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449fe0)
  store %struct.Memory* %call_449fe0, %struct.Memory** %MEMORY

  ; Code: callq .mb_is_available	 RIP: 449fe3	 Bytes: 5
  %loadMem1_449fe3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_449fe3 = call %struct.Memory* @routine_callq_.mb_is_available(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_449fe3, i64 -547, i64 5, i64 5)
  store %struct.Memory* %call1_449fe3, %struct.Memory** %MEMORY

  %loadMem2_449fe3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_449fe3 = load i64, i64* %3
  %call2_449fe3 = call %struct.Memory* @sub_449dc0.mb_is_available(%struct.State* %0, i64  %loadPC_449fe3, %struct.Memory* %loadMem2_449fe3)
  store %struct.Memory* %call2_449fe3, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 449fe8	 Bytes: 4
  %loadMem_449fe8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449fe8 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449fe8)
  store %struct.Memory* %call_449fe8, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x22c(%rdx)	 RIP: 449fec	 Bytes: 6
  %loadMem_449fec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449fec = call %struct.Memory* @routine_movl__eax__0x22c__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449fec)
  store %struct.Memory* %call_449fec, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 449ff2	 Bytes: 4
  %loadMem_449ff2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449ff2 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449ff2)
  store %struct.Memory* %call_449ff2, %struct.Memory** %MEMORY

  ; Code: movl 0x220(%rdx), %edi	 RIP: 449ff6	 Bytes: 6
  %loadMem_449ff6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449ff6 = call %struct.Memory* @routine_movl_0x220__rdx____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449ff6)
  store %struct.Memory* %call_449ff6, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 449ffc	 Bytes: 3
  %loadMem_449ffc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449ffc = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449ffc)
  store %struct.Memory* %call_449ffc, %struct.Memory** %MEMORY

  ; Code: callq .mb_is_available	 RIP: 449fff	 Bytes: 5
  %loadMem1_449fff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_449fff = call %struct.Memory* @routine_callq_.mb_is_available(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_449fff, i64 -575, i64 5, i64 5)
  store %struct.Memory* %call1_449fff, %struct.Memory** %MEMORY

  %loadMem2_449fff = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_449fff = load i64, i64* %3
  %call2_449fff = call %struct.Memory* @sub_449dc0.mb_is_available(%struct.State* %0, i64  %loadPC_449fff, %struct.Memory* %loadMem2_449fff)
  store %struct.Memory* %call2_449fff, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 44a004	 Bytes: 2
  %loadMem_44a004 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a004 = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a004)
  store %struct.Memory* %call_44a004, %struct.Memory** %MEMORY

  ; Code: movb %cl, %r8b	 RIP: 44a006	 Bytes: 3
  %loadMem_44a006 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a006 = call %struct.Memory* @routine_movb__cl___r8b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a006)
  store %struct.Memory* %call_44a006, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 44a009	 Bytes: 3
  %loadMem_44a009 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a009 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a009)
  store %struct.Memory* %call_44a009, %struct.Memory** %MEMORY

  ; Code: movb %r8b, -0x1d(%rbp)	 RIP: 44a00c	 Bytes: 4
  %loadMem_44a00c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a00c = call %struct.Memory* @routine_movb__r8b__MINUS0x1d__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a00c)
  store %struct.Memory* %call_44a00c, %struct.Memory** %MEMORY

  ; Code: je .L_44a049	 RIP: 44a010	 Bytes: 6
  %loadMem_44a010 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a010 = call %struct.Memory* @routine_je_.L_44a049(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a010, i8* %BRANCH_TAKEN, i64 57, i64 6, i64 6)
  store %struct.Memory* %call_44a010, %struct.Memory** %MEMORY

  %loadBr_44a010 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44a010 = icmp eq i8 %loadBr_44a010, 1
  br i1 %cmpBr_44a010, label %block_.L_44a049, label %block_44a016

block_44a016:
  ; Code: movl $0x2, %eax	 RIP: 44a016	 Bytes: 5
  %loadMem_44a016 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a016 = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a016)
  store %struct.Memory* %call_44a016, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 44a01b	 Bytes: 3
  %loadMem_44a01b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a01b = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a01b)
  store %struct.Memory* %call_44a01b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 44a01e	 Bytes: 3
  %loadMem_44a01e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a01e = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a01e)
  store %struct.Memory* %call_44a01e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 44a021	 Bytes: 2
  %loadMem_44a021 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a021 = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a021)
  store %struct.Memory* %call_44a021, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 44a023	 Bytes: 1
  %loadMem_44a023 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a023 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a023)
  store %struct.Memory* %call_44a023, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 44a024	 Bytes: 3
  %loadMem_44a024 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a024 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a024)
  store %struct.Memory* %call_44a024, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 44a027	 Bytes: 2
  %loadMem_44a027 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a027 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a027)
  store %struct.Memory* %call_44a027, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44a029	 Bytes: 3
  %loadMem_44a029 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a029 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a029)
  store %struct.Memory* %call_44a029, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rsi	 RIP: 44a02c	 Bytes: 8
  %loadMem_44a02c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a02c = call %struct.Memory* @routine_movq_0x6cb900___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a02c)
  store %struct.Memory* %call_44a02c, %struct.Memory** %MEMORY

  ; Code: xorl %edi, %edi	 RIP: 44a034	 Bytes: 2
  %loadMem_44a034 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a034 = call %struct.Memory* @routine_xorl__edi___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a034)
  store %struct.Memory* %call_44a034, %struct.Memory** %MEMORY

  ; Code: movl %edi, %edx	 RIP: 44a036	 Bytes: 2
  %loadMem_44a036 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a036 = call %struct.Memory* @routine_movl__edi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a036)
  store %struct.Memory* %call_44a036, %struct.Memory** %MEMORY

  ; Code: divl 0x11b14(%rsi)	 RIP: 44a038	 Bytes: 6
  %loadMem_44a038 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a038 = call %struct.Memory* @routine_divl_0x11b14__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a038)
  store %struct.Memory* %call_44a038, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 44a03e	 Bytes: 3
  %loadMem_44a03e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a03e = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a03e)
  store %struct.Memory* %call_44a03e, %struct.Memory** %MEMORY

  ; Code: setne %r8b	 RIP: 44a041	 Bytes: 4
  %loadMem_44a041 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a041 = call %struct.Memory* @routine_setne__r8b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a041)
  store %struct.Memory* %call_44a041, %struct.Memory** %MEMORY

  ; Code: movb %r8b, -0x1d(%rbp)	 RIP: 44a045	 Bytes: 4
  %loadMem_44a045 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a045 = call %struct.Memory* @routine_movb__r8b__MINUS0x1d__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a045)
  store %struct.Memory* %call_44a045, %struct.Memory** %MEMORY

  ; Code: .L_44a049:	 RIP: 44a049	 Bytes: 0
  br label %block_.L_44a049
block_.L_44a049:

  ; Code: movb -0x1d(%rbp), %al	 RIP: 44a049	 Bytes: 3
  %loadMem_44a049 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a049 = call %struct.Memory* @routine_movb_MINUS0x1d__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a049)
  store %struct.Memory* %call_44a049, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %al	 RIP: 44a04c	 Bytes: 2
  %loadMem_44a04c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a04c = call %struct.Memory* @routine_andb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a04c)
  store %struct.Memory* %call_44a04c, %struct.Memory** %MEMORY

  ; Code: movzbl %al, %ecx	 RIP: 44a04e	 Bytes: 3
  %loadMem_44a04e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a04e = call %struct.Memory* @routine_movzbl__al___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a04e)
  store %struct.Memory* %call_44a04e, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 44a051	 Bytes: 4
  %loadMem_44a051 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a051 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a051)
  store %struct.Memory* %call_44a051, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x230(%rdx)	 RIP: 44a055	 Bytes: 6
  %loadMem_44a055 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a055 = call %struct.Memory* @routine_movl__ecx__0x230__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a055)
  store %struct.Memory* %call_44a055, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 44a05b	 Bytes: 4
  %loadMem_44a05b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a05b = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a05b)
  store %struct.Memory* %call_44a05b, %struct.Memory** %MEMORY

  ; Code: movl 0x224(%rdx), %edi	 RIP: 44a05f	 Bytes: 6
  %loadMem_44a05f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a05f = call %struct.Memory* @routine_movl_0x224__rdx____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a05f)
  store %struct.Memory* %call_44a05f, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 44a065	 Bytes: 3
  %loadMem_44a065 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a065 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a065)
  store %struct.Memory* %call_44a065, %struct.Memory** %MEMORY

  ; Code: callq .mb_is_available	 RIP: 44a068	 Bytes: 5
  %loadMem1_44a068 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44a068 = call %struct.Memory* @routine_callq_.mb_is_available(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44a068, i64 -680, i64 5, i64 5)
  store %struct.Memory* %call1_44a068, %struct.Memory** %MEMORY

  %loadMem2_44a068 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44a068 = load i64, i64* %3
  %call2_44a068 = call %struct.Memory* @sub_449dc0.mb_is_available(%struct.State* %0, i64  %loadPC_44a068, %struct.Memory* %loadMem2_44a068)
  store %struct.Memory* %call2_44a068, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 44a06d	 Bytes: 2
  %loadMem_44a06d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a06d = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a06d)
  store %struct.Memory* %call_44a06d, %struct.Memory** %MEMORY

  ; Code: movb %cl, %r8b	 RIP: 44a06f	 Bytes: 3
  %loadMem_44a06f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a06f = call %struct.Memory* @routine_movb__cl___r8b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a06f)
  store %struct.Memory* %call_44a06f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 44a072	 Bytes: 3
  %loadMem_44a072 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a072 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a072)
  store %struct.Memory* %call_44a072, %struct.Memory** %MEMORY

  ; Code: movb %r8b, -0x25(%rbp)	 RIP: 44a075	 Bytes: 4
  %loadMem_44a075 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a075 = call %struct.Memory* @routine_movb__r8b__MINUS0x25__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a075)
  store %struct.Memory* %call_44a075, %struct.Memory** %MEMORY

  ; Code: je .L_44a0af	 RIP: 44a079	 Bytes: 6
  %loadMem_44a079 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a079 = call %struct.Memory* @routine_je_.L_44a0af(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a079, i8* %BRANCH_TAKEN, i64 54, i64 6, i64 6)
  store %struct.Memory* %call_44a079, %struct.Memory** %MEMORY

  %loadBr_44a079 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44a079 = icmp eq i8 %loadBr_44a079, 1
  br i1 %cmpBr_44a079, label %block_.L_44a0af, label %block_44a07f

block_44a07f:
  ; Code: movl $0x2, %eax	 RIP: 44a07f	 Bytes: 5
  %loadMem_44a07f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a07f = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a07f)
  store %struct.Memory* %call_44a07f, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 44a084	 Bytes: 3
  %loadMem_44a084 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a084 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a084)
  store %struct.Memory* %call_44a084, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 44a087	 Bytes: 3
  %loadMem_44a087 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a087 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a087)
  store %struct.Memory* %call_44a087, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 44a08a	 Bytes: 2
  %loadMem_44a08a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a08a = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a08a)
  store %struct.Memory* %call_44a08a, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 44a08c	 Bytes: 1
  %loadMem_44a08c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a08c = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a08c)
  store %struct.Memory* %call_44a08c, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %ecx	 RIP: 44a08d	 Bytes: 3
  %loadMem_44a08d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a08d = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a08d)
  store %struct.Memory* %call_44a08d, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 44a090	 Bytes: 2
  %loadMem_44a090 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a090 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a090)
  store %struct.Memory* %call_44a090, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rsi	 RIP: 44a092	 Bytes: 8
  %loadMem_44a092 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a092 = call %struct.Memory* @routine_movq_0x6cb900___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a092)
  store %struct.Memory* %call_44a092, %struct.Memory** %MEMORY

  ; Code: xorl %edi, %edi	 RIP: 44a09a	 Bytes: 2
  %loadMem_44a09a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a09a = call %struct.Memory* @routine_xorl__edi___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a09a)
  store %struct.Memory* %call_44a09a, %struct.Memory** %MEMORY

  ; Code: movl %edi, %edx	 RIP: 44a09c	 Bytes: 2
  %loadMem_44a09c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a09c = call %struct.Memory* @routine_movl__edi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a09c)
  store %struct.Memory* %call_44a09c, %struct.Memory** %MEMORY

  ; Code: divl 0x11b14(%rsi)	 RIP: 44a09e	 Bytes: 6
  %loadMem_44a09e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a09e = call %struct.Memory* @routine_divl_0x11b14__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a09e)
  store %struct.Memory* %call_44a09e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 44a0a4	 Bytes: 3
  %loadMem_44a0a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a0a4 = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a0a4)
  store %struct.Memory* %call_44a0a4, %struct.Memory** %MEMORY

  ; Code: setne %r8b	 RIP: 44a0a7	 Bytes: 4
  %loadMem_44a0a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a0a7 = call %struct.Memory* @routine_setne__r8b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a0a7)
  store %struct.Memory* %call_44a0a7, %struct.Memory** %MEMORY

  ; Code: movb %r8b, -0x25(%rbp)	 RIP: 44a0ab	 Bytes: 4
  %loadMem_44a0ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a0ab = call %struct.Memory* @routine_movb__r8b__MINUS0x25__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a0ab)
  store %struct.Memory* %call_44a0ab, %struct.Memory** %MEMORY

  ; Code: .L_44a0af:	 RIP: 44a0af	 Bytes: 0
  br label %block_.L_44a0af
block_.L_44a0af:

  ; Code: movb -0x25(%rbp), %al	 RIP: 44a0af	 Bytes: 3
  %loadMem_44a0af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a0af = call %struct.Memory* @routine_movb_MINUS0x25__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a0af)
  store %struct.Memory* %call_44a0af, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %al	 RIP: 44a0b2	 Bytes: 2
  %loadMem_44a0b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a0b2 = call %struct.Memory* @routine_andb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a0b2)
  store %struct.Memory* %call_44a0b2, %struct.Memory** %MEMORY

  ; Code: movzbl %al, %ecx	 RIP: 44a0b4	 Bytes: 3
  %loadMem_44a0b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a0b4 = call %struct.Memory* @routine_movzbl__al___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a0b4)
  store %struct.Memory* %call_44a0b4, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 44a0b7	 Bytes: 4
  %loadMem_44a0b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a0b7 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a0b7)
  store %struct.Memory* %call_44a0b7, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x234(%rdx)	 RIP: 44a0bb	 Bytes: 6
  %loadMem_44a0bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a0bb = call %struct.Memory* @routine_movl__ecx__0x234__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a0bb)
  store %struct.Memory* %call_44a0bb, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44a247	 RIP: 44a0c1	 Bytes: 5
  %loadMem_44a0c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a0c1 = call %struct.Memory* @routine_jmpq_.L_44a247(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a0c1, i64 390, i64 5)
  store %struct.Memory* %call_44a0c1, %struct.Memory** %MEMORY

  br label %block_.L_44a247

  ; Code: .L_44a0c6:	 RIP: 44a0c6	 Bytes: 0
block_.L_44a0c6:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 44a0c6	 Bytes: 3
  %loadMem_44a0c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a0c6 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a0c6)
  store %struct.Memory* %call_44a0c6, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 44a0c9	 Bytes: 3
  %loadMem_44a0c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a0c9 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a0c9)
  store %struct.Memory* %call_44a0c9, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 44a0cc	 Bytes: 4
  %loadMem_44a0cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a0cc = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a0cc)
  store %struct.Memory* %call_44a0cc, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x218(%rcx)	 RIP: 44a0d0	 Bytes: 6
  %loadMem_44a0d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a0d0 = call %struct.Memory* @routine_movl__eax__0x218__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a0d0)
  store %struct.Memory* %call_44a0d0, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %eax	 RIP: 44a0d6	 Bytes: 3
  %loadMem_44a0d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a0d6 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a0d6)
  store %struct.Memory* %call_44a0d6, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 44a0d9	 Bytes: 8
  %loadMem_44a0d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a0d9 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a0d9)
  store %struct.Memory* %call_44a0d9, %struct.Memory** %MEMORY

  ; Code: subl 0x11b14(%rcx), %eax	 RIP: 44a0e1	 Bytes: 6
  %loadMem_44a0e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a0e1 = call %struct.Memory* @routine_subl_0x11b14__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a0e1)
  store %struct.Memory* %call_44a0e1, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 44a0e7	 Bytes: 4
  %loadMem_44a0e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a0e7 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a0e7)
  store %struct.Memory* %call_44a0e7, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x21c(%rcx)	 RIP: 44a0eb	 Bytes: 6
  %loadMem_44a0eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a0eb = call %struct.Memory* @routine_movl__eax__0x21c__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a0eb)
  store %struct.Memory* %call_44a0eb, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %eax	 RIP: 44a0f1	 Bytes: 3
  %loadMem_44a0f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a0f1 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a0f1)
  store %struct.Memory* %call_44a0f1, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 44a0f4	 Bytes: 8
  %loadMem_44a0f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a0f4 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a0f4)
  store %struct.Memory* %call_44a0f4, %struct.Memory** %MEMORY

  ; Code: subl 0x11b14(%rcx), %eax	 RIP: 44a0fc	 Bytes: 6
  %loadMem_44a0fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a0fc = call %struct.Memory* @routine_subl_0x11b14__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a0fc)
  store %struct.Memory* %call_44a0fc, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44a102	 Bytes: 3
  %loadMem_44a102 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a102 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a102)
  store %struct.Memory* %call_44a102, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 44a105	 Bytes: 4
  %loadMem_44a105 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a105 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a105)
  store %struct.Memory* %call_44a105, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x220(%rcx)	 RIP: 44a109	 Bytes: 6
  %loadMem_44a109 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a109 = call %struct.Memory* @routine_movl__eax__0x220__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a109)
  store %struct.Memory* %call_44a109, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %eax	 RIP: 44a10f	 Bytes: 3
  %loadMem_44a10f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a10f = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a10f)
  store %struct.Memory* %call_44a10f, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 44a112	 Bytes: 8
  %loadMem_44a112 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a112 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a112)
  store %struct.Memory* %call_44a112, %struct.Memory** %MEMORY

  ; Code: subl 0x11b14(%rcx), %eax	 RIP: 44a11a	 Bytes: 6
  %loadMem_44a11a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a11a = call %struct.Memory* @routine_subl_0x11b14__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a11a)
  store %struct.Memory* %call_44a11a, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 44a120	 Bytes: 3
  %loadMem_44a120 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a120 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a120)
  store %struct.Memory* %call_44a120, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 44a123	 Bytes: 4
  %loadMem_44a123 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a123 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a123)
  store %struct.Memory* %call_44a123, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x224(%rcx)	 RIP: 44a127	 Bytes: 6
  %loadMem_44a127 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a127 = call %struct.Memory* @routine_movl__eax__0x224__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a127)
  store %struct.Memory* %call_44a127, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 44a12d	 Bytes: 4
  %loadMem_44a12d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a12d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a12d)
  store %struct.Memory* %call_44a12d, %struct.Memory** %MEMORY

  ; Code: movl 0x218(%rcx), %edi	 RIP: 44a131	 Bytes: 6
  %loadMem_44a131 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a131 = call %struct.Memory* @routine_movl_0x218__rcx____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a131)
  store %struct.Memory* %call_44a131, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 44a137	 Bytes: 3
  %loadMem_44a137 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a137 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a137)
  store %struct.Memory* %call_44a137, %struct.Memory** %MEMORY

  ; Code: callq .mb_is_available	 RIP: 44a13a	 Bytes: 5
  %loadMem1_44a13a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44a13a = call %struct.Memory* @routine_callq_.mb_is_available(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44a13a, i64 -890, i64 5, i64 5)
  store %struct.Memory* %call1_44a13a, %struct.Memory** %MEMORY

  %loadMem2_44a13a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44a13a = load i64, i64* %3
  %call2_44a13a = call %struct.Memory* @sub_449dc0.mb_is_available(%struct.State* %0, i64  %loadPC_44a13a, %struct.Memory* %loadMem2_44a13a)
  store %struct.Memory* %call2_44a13a, %struct.Memory** %MEMORY

  ; Code: xorl %esi, %esi	 RIP: 44a13f	 Bytes: 2
  %loadMem_44a13f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a13f = call %struct.Memory* @routine_xorl__esi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a13f)
  store %struct.Memory* %call_44a13f, %struct.Memory** %MEMORY

  ; Code: movb %sil, %dl	 RIP: 44a141	 Bytes: 3
  %loadMem_44a141 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a141 = call %struct.Memory* @routine_movb__sil___dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a141)
  store %struct.Memory* %call_44a141, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 44a144	 Bytes: 3
  %loadMem_44a144 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a144 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a144)
  store %struct.Memory* %call_44a144, %struct.Memory** %MEMORY

  ; Code: movb %dl, -0x2d(%rbp)	 RIP: 44a147	 Bytes: 3
  %loadMem_44a147 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a147 = call %struct.Memory* @routine_movb__dl__MINUS0x2d__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a147)
  store %struct.Memory* %call_44a147, %struct.Memory** %MEMORY

  ; Code: je .L_44a16e	 RIP: 44a14a	 Bytes: 6
  %loadMem_44a14a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a14a = call %struct.Memory* @routine_je_.L_44a16e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a14a, i8* %BRANCH_TAKEN, i64 36, i64 6, i64 6)
  store %struct.Memory* %call_44a14a, %struct.Memory** %MEMORY

  %loadBr_44a14a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44a14a = icmp eq i8 %loadBr_44a14a, 1
  br i1 %cmpBr_44a14a, label %block_.L_44a16e, label %block_44a150

block_44a150:
  ; Code: movl -0x4(%rbp), %eax	 RIP: 44a150	 Bytes: 3
  %loadMem_44a150 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a150 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a150)
  store %struct.Memory* %call_44a150, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 44a153	 Bytes: 8
  %loadMem_44a153 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a153 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a153)
  store %struct.Memory* %call_44a153, %struct.Memory** %MEMORY

  ; Code: xorl %edx, %edx	 RIP: 44a15b	 Bytes: 2
  %loadMem_44a15b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a15b = call %struct.Memory* @routine_xorl__edx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a15b)
  store %struct.Memory* %call_44a15b, %struct.Memory** %MEMORY

  ; Code: divl 0x11b14(%rcx)	 RIP: 44a15d	 Bytes: 6
  %loadMem_44a15d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a15d = call %struct.Memory* @routine_divl_0x11b14__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a15d)
  store %struct.Memory* %call_44a15d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 44a163	 Bytes: 3
  %loadMem_44a163 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a163 = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a163)
  store %struct.Memory* %call_44a163, %struct.Memory** %MEMORY

  ; Code: setne %sil	 RIP: 44a166	 Bytes: 4
  %loadMem_44a166 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a166 = call %struct.Memory* @routine_setne__sil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a166)
  store %struct.Memory* %call_44a166, %struct.Memory** %MEMORY

  ; Code: movb %sil, -0x2d(%rbp)	 RIP: 44a16a	 Bytes: 4
  %loadMem_44a16a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a16a = call %struct.Memory* @routine_movb__sil__MINUS0x2d__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a16a)
  store %struct.Memory* %call_44a16a, %struct.Memory** %MEMORY

  ; Code: .L_44a16e:	 RIP: 44a16e	 Bytes: 0
  br label %block_.L_44a16e
block_.L_44a16e:

  ; Code: movb -0x2d(%rbp), %al	 RIP: 44a16e	 Bytes: 3
  %loadMem_44a16e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a16e = call %struct.Memory* @routine_movb_MINUS0x2d__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a16e)
  store %struct.Memory* %call_44a16e, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %al	 RIP: 44a171	 Bytes: 2
  %loadMem_44a171 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a171 = call %struct.Memory* @routine_andb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a171)
  store %struct.Memory* %call_44a171, %struct.Memory** %MEMORY

  ; Code: movzbl %al, %ecx	 RIP: 44a173	 Bytes: 3
  %loadMem_44a173 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a173 = call %struct.Memory* @routine_movzbl__al___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a173)
  store %struct.Memory* %call_44a173, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 44a176	 Bytes: 4
  %loadMem_44a176 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a176 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a176)
  store %struct.Memory* %call_44a176, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x228(%rdx)	 RIP: 44a17a	 Bytes: 6
  %loadMem_44a17a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a17a = call %struct.Memory* @routine_movl__ecx__0x228__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a17a)
  store %struct.Memory* %call_44a17a, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 44a180	 Bytes: 4
  %loadMem_44a180 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a180 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a180)
  store %struct.Memory* %call_44a180, %struct.Memory** %MEMORY

  ; Code: movl 0x21c(%rdx), %edi	 RIP: 44a184	 Bytes: 6
  %loadMem_44a184 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a184 = call %struct.Memory* @routine_movl_0x21c__rdx____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a184)
  store %struct.Memory* %call_44a184, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 44a18a	 Bytes: 3
  %loadMem_44a18a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a18a = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a18a)
  store %struct.Memory* %call_44a18a, %struct.Memory** %MEMORY

  ; Code: callq .mb_is_available	 RIP: 44a18d	 Bytes: 5
  %loadMem1_44a18d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44a18d = call %struct.Memory* @routine_callq_.mb_is_available(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44a18d, i64 -973, i64 5, i64 5)
  store %struct.Memory* %call1_44a18d, %struct.Memory** %MEMORY

  %loadMem2_44a18d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44a18d = load i64, i64* %3
  %call2_44a18d = call %struct.Memory* @sub_449dc0.mb_is_available(%struct.State* %0, i64  %loadPC_44a18d, %struct.Memory* %loadMem2_44a18d)
  store %struct.Memory* %call2_44a18d, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 44a192	 Bytes: 4
  %loadMem_44a192 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a192 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a192)
  store %struct.Memory* %call_44a192, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x22c(%rdx)	 RIP: 44a196	 Bytes: 6
  %loadMem_44a196 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a196 = call %struct.Memory* @routine_movl__eax__0x22c__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a196)
  store %struct.Memory* %call_44a196, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 44a19c	 Bytes: 4
  %loadMem_44a19c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a19c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a19c)
  store %struct.Memory* %call_44a19c, %struct.Memory** %MEMORY

  ; Code: movl 0x220(%rdx), %edi	 RIP: 44a1a0	 Bytes: 6
  %loadMem_44a1a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a1a0 = call %struct.Memory* @routine_movl_0x220__rdx____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a1a0)
  store %struct.Memory* %call_44a1a0, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 44a1a6	 Bytes: 3
  %loadMem_44a1a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a1a6 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a1a6)
  store %struct.Memory* %call_44a1a6, %struct.Memory** %MEMORY

  ; Code: callq .mb_is_available	 RIP: 44a1a9	 Bytes: 5
  %loadMem1_44a1a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44a1a9 = call %struct.Memory* @routine_callq_.mb_is_available(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44a1a9, i64 -1001, i64 5, i64 5)
  store %struct.Memory* %call1_44a1a9, %struct.Memory** %MEMORY

  %loadMem2_44a1a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44a1a9 = load i64, i64* %3
  %call2_44a1a9 = call %struct.Memory* @sub_449dc0.mb_is_available(%struct.State* %0, i64  %loadPC_44a1a9, %struct.Memory* %loadMem2_44a1a9)
  store %struct.Memory* %call2_44a1a9, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 44a1ae	 Bytes: 2
  %loadMem_44a1ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a1ae = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a1ae)
  store %struct.Memory* %call_44a1ae, %struct.Memory** %MEMORY

  ; Code: movb %cl, %r8b	 RIP: 44a1b0	 Bytes: 3
  %loadMem_44a1b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a1b0 = call %struct.Memory* @routine_movb__cl___r8b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a1b0)
  store %struct.Memory* %call_44a1b0, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 44a1b3	 Bytes: 3
  %loadMem_44a1b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a1b3 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a1b3)
  store %struct.Memory* %call_44a1b3, %struct.Memory** %MEMORY

  ; Code: movb %r8b, -0x2e(%rbp)	 RIP: 44a1b6	 Bytes: 4
  %loadMem_44a1b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a1b6 = call %struct.Memory* @routine_movb__r8b__MINUS0x2e__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a1b6)
  store %struct.Memory* %call_44a1b6, %struct.Memory** %MEMORY

  ; Code: je .L_44a1e1	 RIP: 44a1ba	 Bytes: 6
  %loadMem_44a1ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a1ba = call %struct.Memory* @routine_je_.L_44a1e1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a1ba, i8* %BRANCH_TAKEN, i64 39, i64 6, i64 6)
  store %struct.Memory* %call_44a1ba, %struct.Memory** %MEMORY

  %loadBr_44a1ba = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44a1ba = icmp eq i8 %loadBr_44a1ba, 1
  br i1 %cmpBr_44a1ba, label %block_.L_44a1e1, label %block_44a1c0

block_44a1c0:
  ; Code: movl -0x4(%rbp), %eax	 RIP: 44a1c0	 Bytes: 3
  %loadMem_44a1c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a1c0 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a1c0)
  store %struct.Memory* %call_44a1c0, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44a1c3	 Bytes: 3
  %loadMem_44a1c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a1c3 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a1c3)
  store %struct.Memory* %call_44a1c3, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 44a1c6	 Bytes: 8
  %loadMem_44a1c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a1c6 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a1c6)
  store %struct.Memory* %call_44a1c6, %struct.Memory** %MEMORY

  ; Code: xorl %edx, %edx	 RIP: 44a1ce	 Bytes: 2
  %loadMem_44a1ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a1ce = call %struct.Memory* @routine_xorl__edx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a1ce)
  store %struct.Memory* %call_44a1ce, %struct.Memory** %MEMORY

  ; Code: divl 0x11b14(%rcx)	 RIP: 44a1d0	 Bytes: 6
  %loadMem_44a1d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a1d0 = call %struct.Memory* @routine_divl_0x11b14__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a1d0)
  store %struct.Memory* %call_44a1d0, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 44a1d6	 Bytes: 3
  %loadMem_44a1d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a1d6 = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a1d6)
  store %struct.Memory* %call_44a1d6, %struct.Memory** %MEMORY

  ; Code: setne %sil	 RIP: 44a1d9	 Bytes: 4
  %loadMem_44a1d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a1d9 = call %struct.Memory* @routine_setne__sil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a1d9)
  store %struct.Memory* %call_44a1d9, %struct.Memory** %MEMORY

  ; Code: movb %sil, -0x2e(%rbp)	 RIP: 44a1dd	 Bytes: 4
  %loadMem_44a1dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a1dd = call %struct.Memory* @routine_movb__sil__MINUS0x2e__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a1dd)
  store %struct.Memory* %call_44a1dd, %struct.Memory** %MEMORY

  ; Code: .L_44a1e1:	 RIP: 44a1e1	 Bytes: 0
  br label %block_.L_44a1e1
block_.L_44a1e1:

  ; Code: movb -0x2e(%rbp), %al	 RIP: 44a1e1	 Bytes: 3
  %loadMem_44a1e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a1e1 = call %struct.Memory* @routine_movb_MINUS0x2e__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a1e1)
  store %struct.Memory* %call_44a1e1, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %al	 RIP: 44a1e4	 Bytes: 2
  %loadMem_44a1e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a1e4 = call %struct.Memory* @routine_andb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a1e4)
  store %struct.Memory* %call_44a1e4, %struct.Memory** %MEMORY

  ; Code: movzbl %al, %ecx	 RIP: 44a1e6	 Bytes: 3
  %loadMem_44a1e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a1e6 = call %struct.Memory* @routine_movzbl__al___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a1e6)
  store %struct.Memory* %call_44a1e6, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 44a1e9	 Bytes: 4
  %loadMem_44a1e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a1e9 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a1e9)
  store %struct.Memory* %call_44a1e9, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x230(%rdx)	 RIP: 44a1ed	 Bytes: 6
  %loadMem_44a1ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a1ed = call %struct.Memory* @routine_movl__ecx__0x230__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a1ed)
  store %struct.Memory* %call_44a1ed, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 44a1f3	 Bytes: 4
  %loadMem_44a1f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a1f3 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a1f3)
  store %struct.Memory* %call_44a1f3, %struct.Memory** %MEMORY

  ; Code: movl 0x224(%rdx), %edi	 RIP: 44a1f7	 Bytes: 6
  %loadMem_44a1f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a1f7 = call %struct.Memory* @routine_movl_0x224__rdx____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a1f7)
  store %struct.Memory* %call_44a1f7, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 44a1fd	 Bytes: 3
  %loadMem_44a1fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a1fd = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a1fd)
  store %struct.Memory* %call_44a1fd, %struct.Memory** %MEMORY

  ; Code: callq .mb_is_available	 RIP: 44a200	 Bytes: 5
  %loadMem1_44a200 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44a200 = call %struct.Memory* @routine_callq_.mb_is_available(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44a200, i64 -1088, i64 5, i64 5)
  store %struct.Memory* %call1_44a200, %struct.Memory** %MEMORY

  %loadMem2_44a200 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44a200 = load i64, i64* %3
  %call2_44a200 = call %struct.Memory* @sub_449dc0.mb_is_available(%struct.State* %0, i64  %loadPC_44a200, %struct.Memory* %loadMem2_44a200)
  store %struct.Memory* %call2_44a200, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 44a205	 Bytes: 2
  %loadMem_44a205 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a205 = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a205)
  store %struct.Memory* %call_44a205, %struct.Memory** %MEMORY

  ; Code: movb %cl, %r8b	 RIP: 44a207	 Bytes: 3
  %loadMem_44a207 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a207 = call %struct.Memory* @routine_movb__cl___r8b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a207)
  store %struct.Memory* %call_44a207, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 44a20a	 Bytes: 3
  %loadMem_44a20a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a20a = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a20a)
  store %struct.Memory* %call_44a20a, %struct.Memory** %MEMORY

  ; Code: movb %r8b, -0x2f(%rbp)	 RIP: 44a20d	 Bytes: 4
  %loadMem_44a20d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a20d = call %struct.Memory* @routine_movb__r8b__MINUS0x2f__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a20d)
  store %struct.Memory* %call_44a20d, %struct.Memory** %MEMORY

  ; Code: je .L_44a235	 RIP: 44a211	 Bytes: 6
  %loadMem_44a211 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a211 = call %struct.Memory* @routine_je_.L_44a235(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a211, i8* %BRANCH_TAKEN, i64 36, i64 6, i64 6)
  store %struct.Memory* %call_44a211, %struct.Memory** %MEMORY

  %loadBr_44a211 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44a211 = icmp eq i8 %loadBr_44a211, 1
  br i1 %cmpBr_44a211, label %block_.L_44a235, label %block_44a217

block_44a217:
  ; Code: movl -0x4(%rbp), %eax	 RIP: 44a217	 Bytes: 3
  %loadMem_44a217 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a217 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a217)
  store %struct.Memory* %call_44a217, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 44a21a	 Bytes: 8
  %loadMem_44a21a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a21a = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a21a)
  store %struct.Memory* %call_44a21a, %struct.Memory** %MEMORY

  ; Code: xorl %edx, %edx	 RIP: 44a222	 Bytes: 2
  %loadMem_44a222 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a222 = call %struct.Memory* @routine_xorl__edx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a222)
  store %struct.Memory* %call_44a222, %struct.Memory** %MEMORY

  ; Code: divl 0x11b14(%rcx)	 RIP: 44a224	 Bytes: 6
  %loadMem_44a224 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a224 = call %struct.Memory* @routine_divl_0x11b14__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a224)
  store %struct.Memory* %call_44a224, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 44a22a	 Bytes: 3
  %loadMem_44a22a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a22a = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a22a)
  store %struct.Memory* %call_44a22a, %struct.Memory** %MEMORY

  ; Code: setne %sil	 RIP: 44a22d	 Bytes: 4
  %loadMem_44a22d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a22d = call %struct.Memory* @routine_setne__sil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a22d)
  store %struct.Memory* %call_44a22d, %struct.Memory** %MEMORY

  ; Code: movb %sil, -0x2f(%rbp)	 RIP: 44a231	 Bytes: 4
  %loadMem_44a231 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a231 = call %struct.Memory* @routine_movb__sil__MINUS0x2f__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a231)
  store %struct.Memory* %call_44a231, %struct.Memory** %MEMORY

  ; Code: .L_44a235:	 RIP: 44a235	 Bytes: 0
  br label %block_.L_44a235
block_.L_44a235:

  ; Code: movb -0x2f(%rbp), %al	 RIP: 44a235	 Bytes: 3
  %loadMem_44a235 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a235 = call %struct.Memory* @routine_movb_MINUS0x2f__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a235)
  store %struct.Memory* %call_44a235, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %al	 RIP: 44a238	 Bytes: 2
  %loadMem_44a238 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a238 = call %struct.Memory* @routine_andb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a238)
  store %struct.Memory* %call_44a238, %struct.Memory** %MEMORY

  ; Code: movzbl %al, %ecx	 RIP: 44a23a	 Bytes: 3
  %loadMem_44a23a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a23a = call %struct.Memory* @routine_movzbl__al___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a23a)
  store %struct.Memory* %call_44a23a, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 44a23d	 Bytes: 4
  %loadMem_44a23d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a23d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a23d)
  store %struct.Memory* %call_44a23d, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x234(%rdx)	 RIP: 44a241	 Bytes: 6
  %loadMem_44a241 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a241 = call %struct.Memory* @routine_movl__ecx__0x234__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a241)
  store %struct.Memory* %call_44a241, %struct.Memory** %MEMORY

  ; Code: .L_44a247:	 RIP: 44a247	 Bytes: 0
  br label %block_.L_44a247
block_.L_44a247:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 44a247	 Bytes: 4
  %loadMem_44a247 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a247 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a247)
  store %struct.Memory* %call_44a247, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x228(%rax)	 RIP: 44a24b	 Bytes: 7
  %loadMem_44a24b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a24b = call %struct.Memory* @routine_cmpl__0x0__0x228__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a24b)
  store %struct.Memory* %call_44a24b, %struct.Memory** %MEMORY

  ; Code: je .L_44a284	 RIP: 44a252	 Bytes: 6
  %loadMem_44a252 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a252 = call %struct.Memory* @routine_je_.L_44a284(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a252, i8* %BRANCH_TAKEN, i64 50, i64 6, i64 6)
  store %struct.Memory* %call_44a252, %struct.Memory** %MEMORY

  %loadBr_44a252 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44a252 = icmp eq i8 %loadBr_44a252, 1
  br i1 %cmpBr_44a252, label %block_.L_44a284, label %block_44a258

block_44a258:
  ; Code: movq 0x6cb900, %rax	 RIP: 44a258	 Bytes: 8
  %loadMem_44a258 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a258 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a258)
  store %struct.Memory* %call_44a258, %struct.Memory** %MEMORY

  ; Code: movq 0x3758(%rax), %rax	 RIP: 44a260	 Bytes: 7
  %loadMem_44a260 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a260 = call %struct.Memory* @routine_movq_0x3758__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a260)
  store %struct.Memory* %call_44a260, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 44a267	 Bytes: 4
  %loadMem_44a267 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a267 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a267)
  store %struct.Memory* %call_44a267, %struct.Memory** %MEMORY

  ; Code: movslq 0x218(%rcx), %rcx	 RIP: 44a26b	 Bytes: 7
  %loadMem_44a26b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a26b = call %struct.Memory* @routine_movslq_0x218__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a26b)
  store %struct.Memory* %call_44a26b, %struct.Memory** %MEMORY

  ; Code: imulq $0x278, %rcx, %rcx	 RIP: 44a272	 Bytes: 7
  %loadMem_44a272 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a272 = call %struct.Memory* @routine_imulq__0x278___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a272)
  store %struct.Memory* %call_44a272, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44a279	 Bytes: 3
  %loadMem_44a279 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a279 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a279)
  store %struct.Memory* %call_44a279, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 44a27c	 Bytes: 4
  %loadMem_44a27c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a27c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a27c)
  store %struct.Memory* %call_44a27c, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x40(%rcx)	 RIP: 44a280	 Bytes: 4
  %loadMem_44a280 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a280 = call %struct.Memory* @routine_movq__rax__0x40__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a280)
  store %struct.Memory* %call_44a280, %struct.Memory** %MEMORY

  ; Code: .L_44a284:	 RIP: 44a284	 Bytes: 0
  br label %block_.L_44a284
block_.L_44a284:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 44a284	 Bytes: 4
  %loadMem_44a284 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a284 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a284)
  store %struct.Memory* %call_44a284, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x22c(%rax)	 RIP: 44a288	 Bytes: 7
  %loadMem_44a288 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a288 = call %struct.Memory* @routine_cmpl__0x0__0x22c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a288)
  store %struct.Memory* %call_44a288, %struct.Memory** %MEMORY

  ; Code: je .L_44a2c1	 RIP: 44a28f	 Bytes: 6
  %loadMem_44a28f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a28f = call %struct.Memory* @routine_je_.L_44a2c1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a28f, i8* %BRANCH_TAKEN, i64 50, i64 6, i64 6)
  store %struct.Memory* %call_44a28f, %struct.Memory** %MEMORY

  %loadBr_44a28f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44a28f = icmp eq i8 %loadBr_44a28f, 1
  br i1 %cmpBr_44a28f, label %block_.L_44a2c1, label %block_44a295

block_44a295:
  ; Code: movq 0x6cb900, %rax	 RIP: 44a295	 Bytes: 8
  %loadMem_44a295 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a295 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a295)
  store %struct.Memory* %call_44a295, %struct.Memory** %MEMORY

  ; Code: movq 0x3758(%rax), %rax	 RIP: 44a29d	 Bytes: 7
  %loadMem_44a29d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a29d = call %struct.Memory* @routine_movq_0x3758__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a29d)
  store %struct.Memory* %call_44a29d, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 44a2a4	 Bytes: 4
  %loadMem_44a2a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a2a4 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a2a4)
  store %struct.Memory* %call_44a2a4, %struct.Memory** %MEMORY

  ; Code: movslq 0x21c(%rcx), %rcx	 RIP: 44a2a8	 Bytes: 7
  %loadMem_44a2a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a2a8 = call %struct.Memory* @routine_movslq_0x21c__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a2a8)
  store %struct.Memory* %call_44a2a8, %struct.Memory** %MEMORY

  ; Code: imulq $0x278, %rcx, %rcx	 RIP: 44a2af	 Bytes: 7
  %loadMem_44a2af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a2af = call %struct.Memory* @routine_imulq__0x278___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a2af)
  store %struct.Memory* %call_44a2af, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44a2b6	 Bytes: 3
  %loadMem_44a2b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a2b6 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a2b6)
  store %struct.Memory* %call_44a2b6, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 44a2b9	 Bytes: 4
  %loadMem_44a2b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a2b9 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a2b9)
  store %struct.Memory* %call_44a2b9, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x38(%rcx)	 RIP: 44a2bd	 Bytes: 4
  %loadMem_44a2bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a2bd = call %struct.Memory* @routine_movq__rax__0x38__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a2bd)
  store %struct.Memory* %call_44a2bd, %struct.Memory** %MEMORY

  ; Code: .L_44a2c1:	 RIP: 44a2c1	 Bytes: 0
  br label %block_.L_44a2c1
block_.L_44a2c1:

  ; Code: addq $0x30, %rsp	 RIP: 44a2c1	 Bytes: 4
  %loadMem_44a2c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a2c1 = call %struct.Memory* @routine_addq__0x30___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a2c1)
  store %struct.Memory* %call_44a2c1, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 44a2c5	 Bytes: 1
  %loadMem_44a2c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a2c5 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a2c5)
  store %struct.Memory* %call_44a2c5, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 44a2c6	 Bytes: 1
  %loadMem_44a2c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a2c6 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a2c6)
  store %struct.Memory* %call_44a2c6, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_44a2c6
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

define %struct.Memory* @routine_subq__0x30___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 48)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x6cb900_type* @G_0x6cb900 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_0xc__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__ecx__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movq_0x3758__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 14168
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_imulq__0x278___rdx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 632)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rax__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x0__0x38__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 56
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__0x0__0x40__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
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

define %struct.Memory* @routine_cmpl__0x0__0x11ad0__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72400
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

define %struct.Memory* @routine_je_.L_44a0c6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
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

define %struct.Memory* @routine_shll__0x1___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 1)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_movl__eax__0x218__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 536
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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






define %struct.Memory* @routine_movq_0x6cb900___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0x6cb900_type* @G_0x6cb900 to i64))
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

define %struct.Memory* @routine_subl_0x11b14__rsi____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 72468
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movl__eax__0x21c__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 540
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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






define %struct.Memory* @routine_movl__eax__0x220__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 544
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


















define %struct.Memory* @routine_movl__eax__0x224__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 548
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_0x218__rsi____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 536
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
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

define %struct.Memory* @routine_callq_.mb_is_available(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #2 {
  %5 = trunc i64 %3 to i8
  store i8 %5, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__cl___r8b(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 17
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %R8B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %CL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %R8B, i64 %15)
  ret %struct.Memory* %18
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i8
  %6 = inttoptr i64 %2 to i8*
  store i8 %5, i8* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__r8b__MINUS0x15__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %R8B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 21
  %15 = load i8, i8* %R8B
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 4
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_je_.L_449fc4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9DIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_(%struct.Memory*, %struct.State* dereferenceable(3376), i64) #0 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 1, i32 0
  %5 = bitcast %union.anon* %4 to i32*
  %6 = load i32, i32* %5, align 8
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 7, i32 0
  %9 = bitcast %union.anon* %8 to i32*
  %10 = load i32, i32* %9, align 8
  %11 = zext i32 %10 to i64
  %12 = inttoptr i64 %2 to i32*
  %13 = load i32, i32* %12
  %14 = zext i32 %13 to i64
  %15 = shl  i64 %11, 32
  %16 = or i64 %15, %7
  %17 = udiv i64 %16, %14
  %18 = and i64 %17, 4294967295
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %24, label %20

; <label>:20:                                     ; preds = %3
  %21 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %1, i64 %22, %struct.Memory* %0) #21
  br label %34

; <label>:24:                                     ; preds = %3
  %25 = urem i64 %16, %14
  %26 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  store i64 %17, i64* %26, align 8
  %27 = getelementptr inbounds %union.anon, %union.anon* %8, i64 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 0, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 0, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %33, align 1
  br label %34

; <label>:34:                                     ; preds = %24, %20
  %35 = phi %struct.Memory* [ %23, %20 ], [ %0, %24 ]
  ret %struct.Memory* %35
}

define %struct.Memory* @routine_divl_0x11b14__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72468
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 6
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9DIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %10)
  ret %struct.Memory* %13
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5SETNZI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture readonly dereferenceable(3376), i8* nocapture) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_setne__r8b(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %R8B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SETNZI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i8* %R8B)
  ret %struct.Memory* %12
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  store i8 %6, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb_MINUS0x15__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 21
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_movzbl__al___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %RCX = bitcast %union.anon* %12 to i64*
  %13 = load i8, i8* %AL
  %14 = zext i8 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movl__ecx__0x228__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 552
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_0x21c__rdx____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 540
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movl__eax__0x22c__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 556
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_0x220__rdx____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 544
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_movb__r8b__MINUS0x1d__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %R8B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 29
  %15 = load i8, i8* %R8B
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 4
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_je_.L_44a049(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




















define %struct.Memory* @routine_movb_MINUS0x1d__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 29
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_movl__ecx__0x230__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 560
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_0x224__rdx____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 548
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_movb__r8b__MINUS0x25__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %R8B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 37
  %15 = load i8, i8* %R8B
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 4
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_je_.L_44a0af(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl_MINUS0x2c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


















define %struct.Memory* @routine_movb_MINUS0x25__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 37
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_movl__ecx__0x234__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 564
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_44a247(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl__eax__0x218__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 536
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
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


define %struct.Memory* @routine_subl_0x11b14__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 72468
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl__eax__0x21c__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 540
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}












define %struct.Memory* @routine_movl__eax__0x220__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 544
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}












define %struct.Memory* @routine_movl__eax__0x224__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 548
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_0x218__rcx____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 536
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movb__sil___dl(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 9
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %SIL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %DL, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movb__dl__MINUS0x2d__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 45
  %15 = load i8, i8* %DL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 3
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_je_.L_44a16e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_divl_0x11b14__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72468
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 6
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9DIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_setne__sil(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SETNZI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i8* %SIL)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movb__sil__MINUS0x2d__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 45
  %15 = load i8, i8* %SIL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 4
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movb_MINUS0x2d__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 45
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
}




































define %struct.Memory* @routine_movb__r8b__MINUS0x2e__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %R8B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 46
  %15 = load i8, i8* %R8B
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 4
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_je_.L_44a1e1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_movb__sil__MINUS0x2e__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 46
  %15 = load i8, i8* %SIL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 4
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movb_MINUS0x2e__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 46
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
}
























define %struct.Memory* @routine_movb__r8b__MINUS0x2f__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %R8B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 47
  %15 = load i8, i8* %R8B
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 4
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_je_.L_44a235(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_movb__sil__MINUS0x2f__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 47
  %15 = load i8, i8* %SIL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 4
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movb_MINUS0x2f__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 47
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
}












define %struct.Memory* @routine_cmpl__0x0__0x228__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 552
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_44a284(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movslq_0x218__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 536
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_imulq__0x278___rcx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 632)
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




define %struct.Memory* @routine_movq__rax__0x40__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 64
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_je_.L_44a2c1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movslq_0x21c__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 540
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_movq__rax__0x38__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 56
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_addq__0x30___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 48)
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

