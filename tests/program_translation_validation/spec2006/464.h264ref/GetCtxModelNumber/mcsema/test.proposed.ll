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

declare %struct.Memory* @sub_418f80.XRate(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x6cb900_type = type <{ [8 x i8] }>
@G_0x6cb900= global %G_0x6cb900_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x986e0__rip__type = type <{ [8 x i8] }>
@G_0x986e0__rip_= global %G_0x986e0__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4b3290_type = type <{ [8 x i8] }>
@G__0x4b3290= global %G__0x4b3290_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4b33a0_type = type <{ [8 x i8] }>
@G__0x4b33a0= global %G__0x4b33a0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4b36c0_type = type <{ [8 x i8] }>
@G__0x4b36c0= global %G__0x4b36c0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4b3750_type = type <{ [8 x i8] }>
@G__0x4b3750= global %G__0x4b3750_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4b3900_type = type <{ [8 x i8] }>
@G__0x4b3900= global %G__0x4b3900_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4b39a0_type = type <{ [8 x i8] }>
@G__0x4b39a0= global %G__0x4b39a0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4b3b80_type = type <{ [8 x i8] }>
@G__0x4b3b80= global %G__0x4b3b80_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4b3be0_type = type <{ [8 x i8] }>
@G__0x4b3be0= global %G__0x4b3be0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4b3d00_type = type <{ [8 x i8] }>
@G__0x4b3d00= global %G__0x4b3d00_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4b3d20_type = type <{ [8 x i8] }>
@G__0x4b3d20= global %G__0x4b3d20_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4b3d80_type = type <{ [8 x i8] }>
@G__0x4b3d80= global %G__0x4b3d80_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4b3da0_type = type <{ [8 x i8] }>
@G__0x4b3da0= global %G__0x4b3da0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4b3e00_type = type <{ [8 x i8] }>
@G__0x4b3e00= global %G__0x4b3e00_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4b3e20_type = type <{ [8 x i8] }>
@G__0x4b3e20= global %G__0x4b3e20_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4b3e70_type = type <{ [8 x i8] }>
@G__0x4b3e70= global %G__0x4b3e70_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4b3e80_type = type <{ [8 x i8] }>
@G__0x4b3e80= global %G__0x4b3e80_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4b3eb0_type = type <{ [8 x i8] }>
@G__0x4b3eb0= global %G__0x4b3eb0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4b3ed0_type = type <{ [8 x i8] }>
@G__0x4b3ed0= global %G__0x4b3ed0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4b3f30_type = type <{ [8 x i8] }>
@G__0x4b3f30= global %G__0x4b3f30_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4b3f90_type = type <{ [8 x i8] }>
@G__0x4b3f90= global %G__0x4b3f90_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4b40b0_type = type <{ [8 x i8] }>
@G__0x4b40b0= global %G__0x4b40b0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4b41b0_type = type <{ [8 x i8] }>
@G__0x4b41b0= global %G__0x4b41b0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4b44b0_type = type <{ [8 x i8] }>
@G__0x4b44b0= global %G__0x4b44b0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4b4870_type = type <{ [8 x i8] }>
@G__0x4b4870= global %G__0x4b4870_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4b53b0_type = type <{ [8 x i8] }>
@G__0x4b53b0= global %G__0x4b53b0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4b5770_type = type <{ [8 x i8] }>
@G__0x4b5770= global %G__0x4b5770_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4b62b0_type = type <{ [8 x i8] }>
@G__0x4b62b0= global %G__0x4b62b0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4b63f0_type = type <{ [8 x i8] }>
@G__0x4b63f0= global %G__0x4b63f0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4b67b0_type = type <{ [8 x i8] }>
@G__0x4b67b0= global %G__0x4b67b0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4b68f0_type = type <{ [8 x i8] }>
@G__0x4b68f0= global %G__0x4b68f0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4b6cb0_type = type <{ [8 x i8] }>
@G__0x4b6cb0= global %G__0x4b6cb0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4b7070_type = type <{ [8 x i8] }>
@G__0x4b7070= global %G__0x4b7070_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4b7bb0_type = type <{ [8 x i8] }>
@G__0x4b7bb0= global %G__0x4b7bb0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4b7f70_type = type <{ [8 x i8] }>
@G__0x4b7f70= global %G__0x4b7f70_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @GetCtxModelNumber(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .GetCtxModelNumber:	 RIP: 419180	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 419180	 Bytes: 1
  %loadMem_419180 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419180 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419180)
  store %struct.Memory* %call_419180, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 419181	 Bytes: 3
  %loadMem_419181 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419181 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419181)
  store %struct.Memory* %call_419181, %struct.Memory** %MEMORY

  ; Code: subq $0x40, %rsp	 RIP: 419184	 Bytes: 4
  %loadMem_419184 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419184 = call %struct.Memory* @routine_subq__0x40___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419184)
  store %struct.Memory* %call_419184, %struct.Memory** %MEMORY

  ; Code: movsd 0x986e0(%rip), %xmm0	 RIP: 419188	 Bytes: 8
  %loadMem_419188 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419188 = call %struct.Memory* @routine_movsd_0x986e0__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419188)
  store %struct.Memory* %call_419188, %struct.Memory** %MEMORY

  ; Code: movl $0x3, %eax	 RIP: 419190	 Bytes: 5
  %loadMem_419190 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419190 = call %struct.Memory* @routine_movl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419190)
  store %struct.Memory* %call_419190, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %ecx	 RIP: 419195	 Bytes: 5
  %loadMem_419195 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419195 = call %struct.Memory* @routine_movl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419195)
  store %struct.Memory* %call_419195, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x8(%rbp)	 RIP: 41919a	 Bytes: 4
  %loadMem_41919a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41919a = call %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41919a)
  store %struct.Memory* %call_41919a, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x10(%rbp)	 RIP: 41919e	 Bytes: 4
  %loadMem_41919e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41919e = call %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41919e)
  store %struct.Memory* %call_41919e, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x18(%rbp)	 RIP: 4191a2	 Bytes: 4
  %loadMem_4191a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4191a2 = call %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4191a2)
  store %struct.Memory* %call_4191a2, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 4191a6	 Bytes: 8
  %loadMem_4191a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4191a6 = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4191a6)
  store %struct.Memory* %call_4191a6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x18(%rdx)	 RIP: 4191ae	 Bytes: 4
  %loadMem_4191ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4191ae = call %struct.Memory* @routine_cmpl__0x2__0x18__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4191ae)
  store %struct.Memory* %call_4191ae, %struct.Memory** %MEMORY

  ; Code: cmovel %ecx, %eax	 RIP: 4191b2	 Bytes: 3
  %loadMem_4191b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4191b2 = call %struct.Memory* @routine_cmovel__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4191b2)
  store %struct.Memory* %call_4191b2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 4191b5	 Bytes: 3
  %loadMem_4191b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4191b5 = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4191b5)
  store %struct.Memory* %call_4191b5, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x38(%rbp)	 RIP: 4191b8	 Bytes: 5
  %loadMem_4191b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4191b8 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4191b8)
  store %struct.Memory* %call_4191b8, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x1c(%rbp)	 RIP: 4191bd	 Bytes: 7
  %loadMem_4191bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4191bd = call %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4191bd)
  store %struct.Memory* %call_4191bd, %struct.Memory** %MEMORY

  ; Code: .L_4191c4:	 RIP: 4191c4	 Bytes: 0
  br label %block_.L_4191c4
block_.L_4191c4:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4191c4	 Bytes: 3
  %loadMem_4191c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4191c4 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4191c4)
  store %struct.Memory* %call_4191c4, %struct.Memory** %MEMORY

  ; Code: cmpl -0x28(%rbp), %eax	 RIP: 4191c7	 Bytes: 3
  %loadMem_4191c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4191c7 = call %struct.Memory* @routine_cmpl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4191c7)
  store %struct.Memory* %call_4191c7, %struct.Memory** %MEMORY

  ; Code: jge .L_41a3eb	 RIP: 4191ca	 Bytes: 6
  %loadMem_4191ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4191ca = call %struct.Memory* @routine_jge_.L_41a3eb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4191ca, i8* %BRANCH_TAKEN, i64 4641, i64 6, i64 6)
  store %struct.Memory* %call_4191ca, %struct.Memory** %MEMORY

  %loadBr_4191ca = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4191ca = icmp eq i8 %loadBr_4191ca, 1
  br i1 %cmpBr_4191ca, label %block_.L_41a3eb, label %block_4191d0

block_4191d0:
  ; Code: xorps %xmm0, %xmm0	 RIP: 4191d0	 Bytes: 3
  %loadMem_4191d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4191d0 = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4191d0)
  store %struct.Memory* %call_4191d0, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x30(%rbp)	 RIP: 4191d3	 Bytes: 5
  %loadMem_4191d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4191d3 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4191d3)
  store %struct.Memory* %call_4191d3, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x24(%rbp)	 RIP: 4191d8	 Bytes: 7
  %loadMem_4191d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4191d8 = call %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4191d8)
  store %struct.Memory* %call_4191d8, %struct.Memory** %MEMORY

  ; Code: .L_4191df:	 RIP: 4191df	 Bytes: 0
  br label %block_.L_4191df
block_.L_4191df:

  ; Code: cmpl $0x3, -0x24(%rbp)	 RIP: 4191df	 Bytes: 4
  %loadMem_4191df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4191df = call %struct.Memory* @routine_cmpl__0x3__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4191df)
  store %struct.Memory* %call_4191df, %struct.Memory** %MEMORY

  ; Code: jge .L_4192f7	 RIP: 4191e3	 Bytes: 6
  %loadMem_4191e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4191e3 = call %struct.Memory* @routine_jge_.L_4192f7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4191e3, i8* %BRANCH_TAKEN, i64 276, i64 6, i64 6)
  store %struct.Memory* %call_4191e3, %struct.Memory** %MEMORY

  %loadBr_4191e3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4191e3 = icmp eq i8 %loadBr_4191e3, 1
  br i1 %cmpBr_4191e3, label %block_.L_4192f7, label %block_4191e9

block_4191e9:
  ; Code: movl $0x0, -0x20(%rbp)	 RIP: 4191e9	 Bytes: 7
  %loadMem_4191e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4191e9 = call %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4191e9)
  store %struct.Memory* %call_4191e9, %struct.Memory** %MEMORY

  ; Code: .L_4191f0:	 RIP: 4191f0	 Bytes: 0
  br label %block_.L_4191f0
block_.L_4191f0:

  ; Code: cmpl $0xb, -0x20(%rbp)	 RIP: 4191f0	 Bytes: 4
  %loadMem_4191f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4191f0 = call %struct.Memory* @routine_cmpl__0xb__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4191f0)
  store %struct.Memory* %call_4191f0, %struct.Memory** %MEMORY

  ; Code: jge .L_4192e4	 RIP: 4191f4	 Bytes: 6
  %loadMem_4191f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4191f4 = call %struct.Memory* @routine_jge_.L_4192e4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4191f4, i8* %BRANCH_TAKEN, i64 240, i64 6, i64 6)
  store %struct.Memory* %call_4191f4, %struct.Memory** %MEMORY

  %loadBr_4191f4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4191f4 = icmp eq i8 %loadBr_4191f4, 1
  br i1 %cmpBr_4191f4, label %block_.L_4192e4, label %block_4191fa

block_4191fa:
  ; Code: movq 0x6cb900, %rax	 RIP: 4191fa	 Bytes: 8
  %loadMem_4191fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4191fa = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4191fa)
  store %struct.Memory* %call_4191fa, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x18(%rax)	 RIP: 419202	 Bytes: 4
  %loadMem_419202 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419202 = call %struct.Memory* @routine_cmpl__0x2__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419202)
  store %struct.Memory* %call_419202, %struct.Memory** %MEMORY

  ; Code: jne .L_419271	 RIP: 419206	 Bytes: 6
  %loadMem_419206 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419206 = call %struct.Memory* @routine_jne_.L_419271(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419206, i8* %BRANCH_TAKEN, i64 107, i64 6, i64 6)
  store %struct.Memory* %call_419206, %struct.Memory** %MEMORY

  %loadBr_419206 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419206 = icmp eq i8 %loadBr_419206, 1
  br i1 %cmpBr_419206, label %block_.L_419271, label %block_41920c

block_41920c:
  ; Code: movq $0x4b3290, %rax	 RIP: 41920c	 Bytes: 10
  %loadMem_41920c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41920c = call %struct.Memory* @routine_movq__0x4b3290___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41920c)
  store %struct.Memory* %call_41920c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 419216	 Bytes: 4
  %loadMem_419216 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419216 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419216)
  store %struct.Memory* %call_419216, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 41921a	 Bytes: 4
  %loadMem_41921a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41921a = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41921a)
  store %struct.Memory* %call_41921a, %struct.Memory** %MEMORY

  ; Code: imulq $0xb0, %rdx, %rdx	 RIP: 41921e	 Bytes: 7
  %loadMem_41921e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41921e = call %struct.Memory* @routine_imulq__0xb0___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41921e)
  store %struct.Memory* %call_41921e, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 419225	 Bytes: 3
  %loadMem_419225 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419225 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419225)
  store %struct.Memory* %call_419225, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 419228	 Bytes: 4
  %loadMem_419228 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419228 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419228)
  store %struct.Memory* %call_419228, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 41922c	 Bytes: 4
  %loadMem_41922c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41922c = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41922c)
  store %struct.Memory* %call_41922c, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 419230	 Bytes: 3
  %loadMem_419230 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419230 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419230)
  store %struct.Memory* %call_419230, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 419233	 Bytes: 4
  %loadMem_419233 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419233 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419233)
  store %struct.Memory* %call_419233, %struct.Memory** %MEMORY

  ; Code: imulq $0x108, %rdx, %rdx	 RIP: 419237	 Bytes: 7
  %loadMem_419237 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419237 = call %struct.Memory* @routine_imulq__0x108___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419237)
  store %struct.Memory* %call_419237, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41923e	 Bytes: 3
  %loadMem_41923e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41923e = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41923e)
  store %struct.Memory* %call_41923e, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 419241	 Bytes: 4
  %loadMem_419241 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419241 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419241)
  store %struct.Memory* %call_419241, %struct.Memory** %MEMORY

  ; Code: imulq $0x58, %rdx, %rdx	 RIP: 419245	 Bytes: 4
  %loadMem_419245 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419245 = call %struct.Memory* @routine_imulq__0x58___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419245)
  store %struct.Memory* %call_419245, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 419249	 Bytes: 3
  %loadMem_419249 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419249 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419249)
  store %struct.Memory* %call_419249, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 41924c	 Bytes: 4
  %loadMem_41924c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41924c = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41924c)
  store %struct.Memory* %call_41924c, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 419250	 Bytes: 4
  %loadMem_419250 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419250 = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419250)
  store %struct.Memory* %call_419250, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 419254	 Bytes: 3
  %loadMem_419254 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419254 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419254)
  store %struct.Memory* %call_419254, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 419257	 Bytes: 3
  %loadMem_419257 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419257 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419257)
  store %struct.Memory* %call_419257, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 41925a	 Bytes: 3
  %loadMem_41925a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41925a = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41925a)
  store %struct.Memory* %call_41925a, %struct.Memory** %MEMORY

  ; Code: callq .XRate	 RIP: 41925d	 Bytes: 5
  %loadMem1_41925d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41925d = call %struct.Memory* @routine_callq_.XRate(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41925d, i64 -733, i64 5, i64 5)
  store %struct.Memory* %call1_41925d, %struct.Memory** %MEMORY

  %loadMem2_41925d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41925d = load i64, i64* %3
  %call2_41925d = call %struct.Memory* @sub_418f80.XRate(%struct.State* %0, i64  %loadPC_41925d, %struct.Memory* %loadMem2_41925d)
  store %struct.Memory* %call2_41925d, %struct.Memory** %MEMORY

  ; Code: addsd -0x30(%rbp), %xmm0	 RIP: 419262	 Bytes: 5
  %loadMem_419262 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419262 = call %struct.Memory* @routine_addsd_MINUS0x30__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419262)
  store %struct.Memory* %call_419262, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x30(%rbp)	 RIP: 419267	 Bytes: 5
  %loadMem_419267 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419267 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419267)
  store %struct.Memory* %call_419267, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4192d1	 RIP: 41926c	 Bytes: 5
  %loadMem_41926c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41926c = call %struct.Memory* @routine_jmpq_.L_4192d1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41926c, i64 101, i64 5)
  store %struct.Memory* %call_41926c, %struct.Memory** %MEMORY

  br label %block_.L_4192d1

  ; Code: .L_419271:	 RIP: 419271	 Bytes: 0
block_.L_419271:

  ; Code: movq $0x4b33a0, %rax	 RIP: 419271	 Bytes: 10
  %loadMem_419271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419271 = call %struct.Memory* @routine_movq__0x4b33a0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419271)
  store %struct.Memory* %call_419271, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 41927b	 Bytes: 4
  %loadMem_41927b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41927b = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41927b)
  store %struct.Memory* %call_41927b, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 41927f	 Bytes: 4
  %loadMem_41927f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41927f = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41927f)
  store %struct.Memory* %call_41927f, %struct.Memory** %MEMORY

  ; Code: imulq $0xb0, %rdx, %rdx	 RIP: 419283	 Bytes: 7
  %loadMem_419283 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419283 = call %struct.Memory* @routine_imulq__0xb0___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419283)
  store %struct.Memory* %call_419283, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 41928a	 Bytes: 3
  %loadMem_41928a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41928a = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41928a)
  store %struct.Memory* %call_41928a, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 41928d	 Bytes: 4
  %loadMem_41928d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41928d = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41928d)
  store %struct.Memory* %call_41928d, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 419291	 Bytes: 4
  %loadMem_419291 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419291 = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419291)
  store %struct.Memory* %call_419291, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 419295	 Bytes: 3
  %loadMem_419295 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419295 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419295)
  store %struct.Memory* %call_419295, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 419298	 Bytes: 4
  %loadMem_419298 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419298 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419298)
  store %struct.Memory* %call_419298, %struct.Memory** %MEMORY

  ; Code: imulq $0x108, %rdx, %rdx	 RIP: 41929c	 Bytes: 7
  %loadMem_41929c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41929c = call %struct.Memory* @routine_imulq__0x108___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41929c)
  store %struct.Memory* %call_41929c, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4192a3	 Bytes: 3
  %loadMem_4192a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4192a3 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4192a3)
  store %struct.Memory* %call_4192a3, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 4192a6	 Bytes: 4
  %loadMem_4192a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4192a6 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4192a6)
  store %struct.Memory* %call_4192a6, %struct.Memory** %MEMORY

  ; Code: imulq $0x58, %rdx, %rdx	 RIP: 4192aa	 Bytes: 4
  %loadMem_4192aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4192aa = call %struct.Memory* @routine_imulq__0x58___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4192aa)
  store %struct.Memory* %call_4192aa, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4192ae	 Bytes: 3
  %loadMem_4192ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4192ae = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4192ae)
  store %struct.Memory* %call_4192ae, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 4192b1	 Bytes: 4
  %loadMem_4192b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4192b1 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4192b1)
  store %struct.Memory* %call_4192b1, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 4192b5	 Bytes: 4
  %loadMem_4192b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4192b5 = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4192b5)
  store %struct.Memory* %call_4192b5, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4192b9	 Bytes: 3
  %loadMem_4192b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4192b9 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4192b9)
  store %struct.Memory* %call_4192b9, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 4192bc	 Bytes: 3
  %loadMem_4192bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4192bc = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4192bc)
  store %struct.Memory* %call_4192bc, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 4192bf	 Bytes: 3
  %loadMem_4192bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4192bf = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4192bf)
  store %struct.Memory* %call_4192bf, %struct.Memory** %MEMORY

  ; Code: callq .XRate	 RIP: 4192c2	 Bytes: 5
  %loadMem1_4192c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4192c2 = call %struct.Memory* @routine_callq_.XRate(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4192c2, i64 -834, i64 5, i64 5)
  store %struct.Memory* %call1_4192c2, %struct.Memory** %MEMORY

  %loadMem2_4192c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4192c2 = load i64, i64* %3
  %call2_4192c2 = call %struct.Memory* @sub_418f80.XRate(%struct.State* %0, i64  %loadPC_4192c2, %struct.Memory* %loadMem2_4192c2)
  store %struct.Memory* %call2_4192c2, %struct.Memory** %MEMORY

  ; Code: addsd -0x30(%rbp), %xmm0	 RIP: 4192c7	 Bytes: 5
  %loadMem_4192c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4192c7 = call %struct.Memory* @routine_addsd_MINUS0x30__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4192c7)
  store %struct.Memory* %call_4192c7, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x30(%rbp)	 RIP: 4192cc	 Bytes: 5
  %loadMem_4192cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4192cc = call %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4192cc)
  store %struct.Memory* %call_4192cc, %struct.Memory** %MEMORY

  ; Code: .L_4192d1:	 RIP: 4192d1	 Bytes: 0
  br label %block_.L_4192d1
block_.L_4192d1:

  ; Code: jmpq .L_4192d6	 RIP: 4192d1	 Bytes: 5
  %loadMem_4192d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4192d1 = call %struct.Memory* @routine_jmpq_.L_4192d6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4192d1, i64 5, i64 5)
  store %struct.Memory* %call_4192d1, %struct.Memory** %MEMORY

  br label %block_.L_4192d6

  ; Code: .L_4192d6:	 RIP: 4192d6	 Bytes: 0
block_.L_4192d6:

  ; Code: movl -0x20(%rbp), %eax	 RIP: 4192d6	 Bytes: 3
  %loadMem_4192d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4192d6 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4192d6)
  store %struct.Memory* %call_4192d6, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4192d9	 Bytes: 3
  %loadMem_4192d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4192d9 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4192d9)
  store %struct.Memory* %call_4192d9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 4192dc	 Bytes: 3
  %loadMem_4192dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4192dc = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4192dc)
  store %struct.Memory* %call_4192dc, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4191f0	 RIP: 4192df	 Bytes: 5
  %loadMem_4192df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4192df = call %struct.Memory* @routine_jmpq_.L_4191f0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4192df, i64 -239, i64 5)
  store %struct.Memory* %call_4192df, %struct.Memory** %MEMORY

  br label %block_.L_4191f0

  ; Code: .L_4192e4:	 RIP: 4192e4	 Bytes: 0
block_.L_4192e4:

  ; Code: jmpq .L_4192e9	 RIP: 4192e4	 Bytes: 5
  %loadMem_4192e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4192e4 = call %struct.Memory* @routine_jmpq_.L_4192e9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4192e4, i64 5, i64 5)
  store %struct.Memory* %call_4192e4, %struct.Memory** %MEMORY

  br label %block_.L_4192e9

  ; Code: .L_4192e9:	 RIP: 4192e9	 Bytes: 0
block_.L_4192e9:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 4192e9	 Bytes: 3
  %loadMem_4192e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4192e9 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4192e9)
  store %struct.Memory* %call_4192e9, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4192ec	 Bytes: 3
  %loadMem_4192ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4192ec = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4192ec)
  store %struct.Memory* %call_4192ec, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 4192ef	 Bytes: 3
  %loadMem_4192ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4192ef = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4192ef)
  store %struct.Memory* %call_4192ef, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4191df	 RIP: 4192f2	 Bytes: 5
  %loadMem_4192f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4192f2 = call %struct.Memory* @routine_jmpq_.L_4191df(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4192f2, i64 -275, i64 5)
  store %struct.Memory* %call_4192f2, %struct.Memory** %MEMORY

  br label %block_.L_4191df

  ; Code: .L_4192f7:	 RIP: 4192f7	 Bytes: 0
block_.L_4192f7:

  ; Code: movl $0x0, -0x24(%rbp)	 RIP: 4192f7	 Bytes: 7
  %loadMem_4192f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4192f7 = call %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4192f7)
  store %struct.Memory* %call_4192f7, %struct.Memory** %MEMORY

  ; Code: .L_4192fe:	 RIP: 4192fe	 Bytes: 0
  br label %block_.L_4192fe
block_.L_4192fe:

  ; Code: cmpl $0x2, -0x24(%rbp)	 RIP: 4192fe	 Bytes: 4
  %loadMem_4192fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4192fe = call %struct.Memory* @routine_cmpl__0x2__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4192fe)
  store %struct.Memory* %call_4192fe, %struct.Memory** %MEMORY

  ; Code: jge .L_419424	 RIP: 419302	 Bytes: 6
  %loadMem_419302 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419302 = call %struct.Memory* @routine_jge_.L_419424(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419302, i8* %BRANCH_TAKEN, i64 290, i64 6, i64 6)
  store %struct.Memory* %call_419302, %struct.Memory** %MEMORY

  %loadBr_419302 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419302 = icmp eq i8 %loadBr_419302, 1
  br i1 %cmpBr_419302, label %block_.L_419424, label %block_419308

block_419308:
  ; Code: movl $0x0, -0x20(%rbp)	 RIP: 419308	 Bytes: 7
  %loadMem_419308 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419308 = call %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419308)
  store %struct.Memory* %call_419308, %struct.Memory** %MEMORY

  ; Code: .L_41930f:	 RIP: 41930f	 Bytes: 0
  br label %block_.L_41930f
block_.L_41930f:

  ; Code: cmpl $0x9, -0x20(%rbp)	 RIP: 41930f	 Bytes: 4
  %loadMem_41930f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41930f = call %struct.Memory* @routine_cmpl__0x9__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41930f)
  store %struct.Memory* %call_41930f, %struct.Memory** %MEMORY

  ; Code: jge .L_419411	 RIP: 419313	 Bytes: 6
  %loadMem_419313 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419313 = call %struct.Memory* @routine_jge_.L_419411(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419313, i8* %BRANCH_TAKEN, i64 254, i64 6, i64 6)
  store %struct.Memory* %call_419313, %struct.Memory** %MEMORY

  %loadBr_419313 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419313 = icmp eq i8 %loadBr_419313, 1
  br i1 %cmpBr_419313, label %block_.L_419411, label %block_419319

block_419319:
  ; Code: movq 0x6cb900, %rax	 RIP: 419319	 Bytes: 8
  %loadMem_419319 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419319 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419319)
  store %struct.Memory* %call_419319, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x18(%rax)	 RIP: 419321	 Bytes: 4
  %loadMem_419321 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419321 = call %struct.Memory* @routine_cmpl__0x2__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419321)
  store %struct.Memory* %call_419321, %struct.Memory** %MEMORY

  ; Code: jne .L_419397	 RIP: 419325	 Bytes: 6
  %loadMem_419325 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419325 = call %struct.Memory* @routine_jne_.L_419397(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419325, i8* %BRANCH_TAKEN, i64 114, i64 6, i64 6)
  store %struct.Memory* %call_419325, %struct.Memory** %MEMORY

  %loadBr_419325 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419325 = icmp eq i8 %loadBr_419325, 1
  br i1 %cmpBr_419325, label %block_.L_419397, label %block_41932b

block_41932b:
  ; Code: movq $0x4b36c0, %rax	 RIP: 41932b	 Bytes: 10
  %loadMem_41932b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41932b = call %struct.Memory* @routine_movq__0x4b36c0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41932b)
  store %struct.Memory* %call_41932b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 419335	 Bytes: 4
  %loadMem_419335 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419335 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419335)
  store %struct.Memory* %call_419335, %struct.Memory** %MEMORY

  ; Code: addq $0x210, %rcx	 RIP: 419339	 Bytes: 7
  %loadMem_419339 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419339 = call %struct.Memory* @routine_addq__0x210___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419339)
  store %struct.Memory* %call_419339, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 419340	 Bytes: 4
  %loadMem_419340 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419340 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419340)
  store %struct.Memory* %call_419340, %struct.Memory** %MEMORY

  ; Code: imulq $0x90, %rdx, %rdx	 RIP: 419344	 Bytes: 7
  %loadMem_419344 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419344 = call %struct.Memory* @routine_imulq__0x90___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419344)
  store %struct.Memory* %call_419344, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 41934b	 Bytes: 3
  %loadMem_41934b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41934b = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41934b)
  store %struct.Memory* %call_41934b, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 41934e	 Bytes: 4
  %loadMem_41934e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41934e = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41934e)
  store %struct.Memory* %call_41934e, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 419352	 Bytes: 4
  %loadMem_419352 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419352 = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419352)
  store %struct.Memory* %call_419352, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 419356	 Bytes: 3
  %loadMem_419356 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419356 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419356)
  store %struct.Memory* %call_419356, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 419359	 Bytes: 4
  %loadMem_419359 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419359 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419359)
  store %struct.Memory* %call_419359, %struct.Memory** %MEMORY

  ; Code: imulq $0x90, %rdx, %rdx	 RIP: 41935d	 Bytes: 7
  %loadMem_41935d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41935d = call %struct.Memory* @routine_imulq__0x90___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41935d)
  store %struct.Memory* %call_41935d, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 419364	 Bytes: 3
  %loadMem_419364 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419364 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419364)
  store %struct.Memory* %call_419364, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 419367	 Bytes: 4
  %loadMem_419367 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419367 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419367)
  store %struct.Memory* %call_419367, %struct.Memory** %MEMORY

  ; Code: imulq $0x48, %rdx, %rdx	 RIP: 41936b	 Bytes: 4
  %loadMem_41936b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41936b = call %struct.Memory* @routine_imulq__0x48___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41936b)
  store %struct.Memory* %call_41936b, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41936f	 Bytes: 3
  %loadMem_41936f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41936f = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41936f)
  store %struct.Memory* %call_41936f, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 419372	 Bytes: 4
  %loadMem_419372 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419372 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419372)
  store %struct.Memory* %call_419372, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 419376	 Bytes: 4
  %loadMem_419376 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419376 = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419376)
  store %struct.Memory* %call_419376, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41937a	 Bytes: 3
  %loadMem_41937a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41937a = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41937a)
  store %struct.Memory* %call_41937a, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 41937d	 Bytes: 3
  %loadMem_41937d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41937d = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41937d)
  store %struct.Memory* %call_41937d, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 419380	 Bytes: 3
  %loadMem_419380 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419380 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419380)
  store %struct.Memory* %call_419380, %struct.Memory** %MEMORY

  ; Code: callq .XRate	 RIP: 419383	 Bytes: 5
  %loadMem1_419383 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_419383 = call %struct.Memory* @routine_callq_.XRate(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_419383, i64 -1027, i64 5, i64 5)
  store %struct.Memory* %call1_419383, %struct.Memory** %MEMORY

  %loadMem2_419383 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_419383 = load i64, i64* %3
  %call2_419383 = call %struct.Memory* @sub_418f80.XRate(%struct.State* %0, i64  %loadPC_419383, %struct.Memory* %loadMem2_419383)
  store %struct.Memory* %call2_419383, %struct.Memory** %MEMORY

  ; Code: addsd -0x30(%rbp), %xmm0	 RIP: 419388	 Bytes: 5
  %loadMem_419388 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419388 = call %struct.Memory* @routine_addsd_MINUS0x30__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419388)
  store %struct.Memory* %call_419388, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x30(%rbp)	 RIP: 41938d	 Bytes: 5
  %loadMem_41938d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41938d = call %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41938d)
  store %struct.Memory* %call_41938d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4193fe	 RIP: 419392	 Bytes: 5
  %loadMem_419392 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419392 = call %struct.Memory* @routine_jmpq_.L_4193fe(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419392, i64 108, i64 5)
  store %struct.Memory* %call_419392, %struct.Memory** %MEMORY

  br label %block_.L_4193fe

  ; Code: .L_419397:	 RIP: 419397	 Bytes: 0
block_.L_419397:

  ; Code: movq $0x4b3750, %rax	 RIP: 419397	 Bytes: 10
  %loadMem_419397 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419397 = call %struct.Memory* @routine_movq__0x4b3750___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419397)
  store %struct.Memory* %call_419397, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4193a1	 Bytes: 4
  %loadMem_4193a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4193a1 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4193a1)
  store %struct.Memory* %call_4193a1, %struct.Memory** %MEMORY

  ; Code: addq $0x210, %rcx	 RIP: 4193a5	 Bytes: 7
  %loadMem_4193a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4193a5 = call %struct.Memory* @routine_addq__0x210___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4193a5)
  store %struct.Memory* %call_4193a5, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 4193ac	 Bytes: 4
  %loadMem_4193ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4193ac = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4193ac)
  store %struct.Memory* %call_4193ac, %struct.Memory** %MEMORY

  ; Code: imulq $0x90, %rdx, %rdx	 RIP: 4193b0	 Bytes: 7
  %loadMem_4193b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4193b0 = call %struct.Memory* @routine_imulq__0x90___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4193b0)
  store %struct.Memory* %call_4193b0, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4193b7	 Bytes: 3
  %loadMem_4193b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4193b7 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4193b7)
  store %struct.Memory* %call_4193b7, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 4193ba	 Bytes: 4
  %loadMem_4193ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4193ba = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4193ba)
  store %struct.Memory* %call_4193ba, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 4193be	 Bytes: 4
  %loadMem_4193be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4193be = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4193be)
  store %struct.Memory* %call_4193be, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4193c2	 Bytes: 3
  %loadMem_4193c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4193c2 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4193c2)
  store %struct.Memory* %call_4193c2, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 4193c5	 Bytes: 4
  %loadMem_4193c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4193c5 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4193c5)
  store %struct.Memory* %call_4193c5, %struct.Memory** %MEMORY

  ; Code: imulq $0x90, %rdx, %rdx	 RIP: 4193c9	 Bytes: 7
  %loadMem_4193c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4193c9 = call %struct.Memory* @routine_imulq__0x90___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4193c9)
  store %struct.Memory* %call_4193c9, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4193d0	 Bytes: 3
  %loadMem_4193d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4193d0 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4193d0)
  store %struct.Memory* %call_4193d0, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 4193d3	 Bytes: 4
  %loadMem_4193d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4193d3 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4193d3)
  store %struct.Memory* %call_4193d3, %struct.Memory** %MEMORY

  ; Code: imulq $0x48, %rdx, %rdx	 RIP: 4193d7	 Bytes: 4
  %loadMem_4193d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4193d7 = call %struct.Memory* @routine_imulq__0x48___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4193d7)
  store %struct.Memory* %call_4193d7, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4193db	 Bytes: 3
  %loadMem_4193db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4193db = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4193db)
  store %struct.Memory* %call_4193db, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 4193de	 Bytes: 4
  %loadMem_4193de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4193de = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4193de)
  store %struct.Memory* %call_4193de, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 4193e2	 Bytes: 4
  %loadMem_4193e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4193e2 = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4193e2)
  store %struct.Memory* %call_4193e2, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4193e6	 Bytes: 3
  %loadMem_4193e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4193e6 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4193e6)
  store %struct.Memory* %call_4193e6, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 4193e9	 Bytes: 3
  %loadMem_4193e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4193e9 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4193e9)
  store %struct.Memory* %call_4193e9, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 4193ec	 Bytes: 3
  %loadMem_4193ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4193ec = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4193ec)
  store %struct.Memory* %call_4193ec, %struct.Memory** %MEMORY

  ; Code: callq .XRate	 RIP: 4193ef	 Bytes: 5
  %loadMem1_4193ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4193ef = call %struct.Memory* @routine_callq_.XRate(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4193ef, i64 -1135, i64 5, i64 5)
  store %struct.Memory* %call1_4193ef, %struct.Memory** %MEMORY

  %loadMem2_4193ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4193ef = load i64, i64* %3
  %call2_4193ef = call %struct.Memory* @sub_418f80.XRate(%struct.State* %0, i64  %loadPC_4193ef, %struct.Memory* %loadMem2_4193ef)
  store %struct.Memory* %call2_4193ef, %struct.Memory** %MEMORY

  ; Code: addsd -0x30(%rbp), %xmm0	 RIP: 4193f4	 Bytes: 5
  %loadMem_4193f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4193f4 = call %struct.Memory* @routine_addsd_MINUS0x30__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4193f4)
  store %struct.Memory* %call_4193f4, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x30(%rbp)	 RIP: 4193f9	 Bytes: 5
  %loadMem_4193f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4193f9 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4193f9)
  store %struct.Memory* %call_4193f9, %struct.Memory** %MEMORY

  ; Code: .L_4193fe:	 RIP: 4193fe	 Bytes: 0
  br label %block_.L_4193fe
block_.L_4193fe:

  ; Code: jmpq .L_419403	 RIP: 4193fe	 Bytes: 5
  %loadMem_4193fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4193fe = call %struct.Memory* @routine_jmpq_.L_419403(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4193fe, i64 5, i64 5)
  store %struct.Memory* %call_4193fe, %struct.Memory** %MEMORY

  br label %block_.L_419403

  ; Code: .L_419403:	 RIP: 419403	 Bytes: 0
block_.L_419403:

  ; Code: movl -0x20(%rbp), %eax	 RIP: 419403	 Bytes: 3
  %loadMem_419403 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419403 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419403)
  store %struct.Memory* %call_419403, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 419406	 Bytes: 3
  %loadMem_419406 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419406 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419406)
  store %struct.Memory* %call_419406, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 419409	 Bytes: 3
  %loadMem_419409 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419409 = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419409)
  store %struct.Memory* %call_419409, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41930f	 RIP: 41940c	 Bytes: 5
  %loadMem_41940c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41940c = call %struct.Memory* @routine_jmpq_.L_41930f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41940c, i64 -253, i64 5)
  store %struct.Memory* %call_41940c, %struct.Memory** %MEMORY

  br label %block_.L_41930f

  ; Code: .L_419411:	 RIP: 419411	 Bytes: 0
block_.L_419411:

  ; Code: jmpq .L_419416	 RIP: 419411	 Bytes: 5
  %loadMem_419411 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419411 = call %struct.Memory* @routine_jmpq_.L_419416(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419411, i64 5, i64 5)
  store %struct.Memory* %call_419411, %struct.Memory** %MEMORY

  br label %block_.L_419416

  ; Code: .L_419416:	 RIP: 419416	 Bytes: 0
block_.L_419416:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 419416	 Bytes: 3
  %loadMem_419416 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419416 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419416)
  store %struct.Memory* %call_419416, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 419419	 Bytes: 3
  %loadMem_419419 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419419 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419419)
  store %struct.Memory* %call_419419, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 41941c	 Bytes: 3
  %loadMem_41941c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41941c = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41941c)
  store %struct.Memory* %call_41941c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4192fe	 RIP: 41941f	 Bytes: 5
  %loadMem_41941f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41941f = call %struct.Memory* @routine_jmpq_.L_4192fe(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41941f, i64 -289, i64 5)
  store %struct.Memory* %call_41941f, %struct.Memory** %MEMORY

  br label %block_.L_4192fe

  ; Code: .L_419424:	 RIP: 419424	 Bytes: 0
block_.L_419424:

  ; Code: movl $0x0, -0x24(%rbp)	 RIP: 419424	 Bytes: 7
  %loadMem_419424 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419424 = call %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419424)
  store %struct.Memory* %call_419424, %struct.Memory** %MEMORY

  ; Code: .L_41942b:	 RIP: 41942b	 Bytes: 0
  br label %block_.L_41942b
block_.L_41942b:

  ; Code: cmpl $0x2, -0x24(%rbp)	 RIP: 41942b	 Bytes: 4
  %loadMem_41942b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41942b = call %struct.Memory* @routine_cmpl__0x2__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41942b)
  store %struct.Memory* %call_41942b, %struct.Memory** %MEMORY

  ; Code: jge .L_419551	 RIP: 41942f	 Bytes: 6
  %loadMem_41942f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41942f = call %struct.Memory* @routine_jge_.L_419551(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41942f, i8* %BRANCH_TAKEN, i64 290, i64 6, i64 6)
  store %struct.Memory* %call_41942f, %struct.Memory** %MEMORY

  %loadBr_41942f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41942f = icmp eq i8 %loadBr_41942f, 1
  br i1 %cmpBr_41942f, label %block_.L_419551, label %block_419435

block_419435:
  ; Code: movl $0x0, -0x20(%rbp)	 RIP: 419435	 Bytes: 7
  %loadMem_419435 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419435 = call %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419435)
  store %struct.Memory* %call_419435, %struct.Memory** %MEMORY

  ; Code: .L_41943c:	 RIP: 41943c	 Bytes: 0
  br label %block_.L_41943c
block_.L_41943c:

  ; Code: cmpl $0xa, -0x20(%rbp)	 RIP: 41943c	 Bytes: 4
  %loadMem_41943c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41943c = call %struct.Memory* @routine_cmpl__0xa__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41943c)
  store %struct.Memory* %call_41943c, %struct.Memory** %MEMORY

  ; Code: jge .L_41953e	 RIP: 419440	 Bytes: 6
  %loadMem_419440 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419440 = call %struct.Memory* @routine_jge_.L_41953e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419440, i8* %BRANCH_TAKEN, i64 254, i64 6, i64 6)
  store %struct.Memory* %call_419440, %struct.Memory** %MEMORY

  %loadBr_419440 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419440 = icmp eq i8 %loadBr_419440, 1
  br i1 %cmpBr_419440, label %block_.L_41953e, label %block_419446

block_419446:
  ; Code: movq 0x6cb900, %rax	 RIP: 419446	 Bytes: 8
  %loadMem_419446 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419446 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419446)
  store %struct.Memory* %call_419446, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x18(%rax)	 RIP: 41944e	 Bytes: 4
  %loadMem_41944e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41944e = call %struct.Memory* @routine_cmpl__0x2__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41944e)
  store %struct.Memory* %call_41944e, %struct.Memory** %MEMORY

  ; Code: jne .L_4194c4	 RIP: 419452	 Bytes: 6
  %loadMem_419452 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419452 = call %struct.Memory* @routine_jne_.L_4194c4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419452, i8* %BRANCH_TAKEN, i64 114, i64 6, i64 6)
  store %struct.Memory* %call_419452, %struct.Memory** %MEMORY

  %loadBr_419452 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419452 = icmp eq i8 %loadBr_419452, 1
  br i1 %cmpBr_419452, label %block_.L_4194c4, label %block_419458

block_419458:
  ; Code: movq $0x4b3900, %rax	 RIP: 419458	 Bytes: 10
  %loadMem_419458 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419458 = call %struct.Memory* @routine_movq__0x4b3900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419458)
  store %struct.Memory* %call_419458, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 419462	 Bytes: 4
  %loadMem_419462 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419462 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419462)
  store %struct.Memory* %call_419462, %struct.Memory** %MEMORY

  ; Code: addq $0x330, %rcx	 RIP: 419466	 Bytes: 7
  %loadMem_419466 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419466 = call %struct.Memory* @routine_addq__0x330___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419466)
  store %struct.Memory* %call_419466, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 41946d	 Bytes: 4
  %loadMem_41946d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41946d = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41946d)
  store %struct.Memory* %call_41946d, %struct.Memory** %MEMORY

  ; Code: imulq $0xa0, %rdx, %rdx	 RIP: 419471	 Bytes: 7
  %loadMem_419471 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419471 = call %struct.Memory* @routine_imulq__0xa0___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419471)
  store %struct.Memory* %call_419471, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 419478	 Bytes: 3
  %loadMem_419478 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419478 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419478)
  store %struct.Memory* %call_419478, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 41947b	 Bytes: 4
  %loadMem_41947b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41947b = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41947b)
  store %struct.Memory* %call_41947b, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 41947f	 Bytes: 4
  %loadMem_41947f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41947f = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41947f)
  store %struct.Memory* %call_41947f, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 419483	 Bytes: 3
  %loadMem_419483 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419483 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419483)
  store %struct.Memory* %call_419483, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 419486	 Bytes: 4
  %loadMem_419486 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419486 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419486)
  store %struct.Memory* %call_419486, %struct.Memory** %MEMORY

  ; Code: imulq $0xa0, %rdx, %rdx	 RIP: 41948a	 Bytes: 7
  %loadMem_41948a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41948a = call %struct.Memory* @routine_imulq__0xa0___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41948a)
  store %struct.Memory* %call_41948a, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 419491	 Bytes: 3
  %loadMem_419491 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419491 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419491)
  store %struct.Memory* %call_419491, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 419494	 Bytes: 4
  %loadMem_419494 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419494 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419494)
  store %struct.Memory* %call_419494, %struct.Memory** %MEMORY

  ; Code: imulq $0x50, %rdx, %rdx	 RIP: 419498	 Bytes: 4
  %loadMem_419498 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419498 = call %struct.Memory* @routine_imulq__0x50___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419498)
  store %struct.Memory* %call_419498, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41949c	 Bytes: 3
  %loadMem_41949c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41949c = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41949c)
  store %struct.Memory* %call_41949c, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 41949f	 Bytes: 4
  %loadMem_41949f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41949f = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41949f)
  store %struct.Memory* %call_41949f, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 4194a3	 Bytes: 4
  %loadMem_4194a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4194a3 = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4194a3)
  store %struct.Memory* %call_4194a3, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4194a7	 Bytes: 3
  %loadMem_4194a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4194a7 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4194a7)
  store %struct.Memory* %call_4194a7, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 4194aa	 Bytes: 3
  %loadMem_4194aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4194aa = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4194aa)
  store %struct.Memory* %call_4194aa, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 4194ad	 Bytes: 3
  %loadMem_4194ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4194ad = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4194ad)
  store %struct.Memory* %call_4194ad, %struct.Memory** %MEMORY

  ; Code: callq .XRate	 RIP: 4194b0	 Bytes: 5
  %loadMem1_4194b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4194b0 = call %struct.Memory* @routine_callq_.XRate(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4194b0, i64 -1328, i64 5, i64 5)
  store %struct.Memory* %call1_4194b0, %struct.Memory** %MEMORY

  %loadMem2_4194b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4194b0 = load i64, i64* %3
  %call2_4194b0 = call %struct.Memory* @sub_418f80.XRate(%struct.State* %0, i64  %loadPC_4194b0, %struct.Memory* %loadMem2_4194b0)
  store %struct.Memory* %call2_4194b0, %struct.Memory** %MEMORY

  ; Code: addsd -0x30(%rbp), %xmm0	 RIP: 4194b5	 Bytes: 5
  %loadMem_4194b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4194b5 = call %struct.Memory* @routine_addsd_MINUS0x30__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4194b5)
  store %struct.Memory* %call_4194b5, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x30(%rbp)	 RIP: 4194ba	 Bytes: 5
  %loadMem_4194ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4194ba = call %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4194ba)
  store %struct.Memory* %call_4194ba, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41952b	 RIP: 4194bf	 Bytes: 5
  %loadMem_4194bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4194bf = call %struct.Memory* @routine_jmpq_.L_41952b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4194bf, i64 108, i64 5)
  store %struct.Memory* %call_4194bf, %struct.Memory** %MEMORY

  br label %block_.L_41952b

  ; Code: .L_4194c4:	 RIP: 4194c4	 Bytes: 0
block_.L_4194c4:

  ; Code: movq $0x4b39a0, %rax	 RIP: 4194c4	 Bytes: 10
  %loadMem_4194c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4194c4 = call %struct.Memory* @routine_movq__0x4b39a0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4194c4)
  store %struct.Memory* %call_4194c4, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4194ce	 Bytes: 4
  %loadMem_4194ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4194ce = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4194ce)
  store %struct.Memory* %call_4194ce, %struct.Memory** %MEMORY

  ; Code: addq $0x330, %rcx	 RIP: 4194d2	 Bytes: 7
  %loadMem_4194d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4194d2 = call %struct.Memory* @routine_addq__0x330___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4194d2)
  store %struct.Memory* %call_4194d2, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 4194d9	 Bytes: 4
  %loadMem_4194d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4194d9 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4194d9)
  store %struct.Memory* %call_4194d9, %struct.Memory** %MEMORY

  ; Code: imulq $0xa0, %rdx, %rdx	 RIP: 4194dd	 Bytes: 7
  %loadMem_4194dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4194dd = call %struct.Memory* @routine_imulq__0xa0___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4194dd)
  store %struct.Memory* %call_4194dd, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4194e4	 Bytes: 3
  %loadMem_4194e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4194e4 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4194e4)
  store %struct.Memory* %call_4194e4, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 4194e7	 Bytes: 4
  %loadMem_4194e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4194e7 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4194e7)
  store %struct.Memory* %call_4194e7, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 4194eb	 Bytes: 4
  %loadMem_4194eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4194eb = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4194eb)
  store %struct.Memory* %call_4194eb, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4194ef	 Bytes: 3
  %loadMem_4194ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4194ef = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4194ef)
  store %struct.Memory* %call_4194ef, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 4194f2	 Bytes: 4
  %loadMem_4194f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4194f2 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4194f2)
  store %struct.Memory* %call_4194f2, %struct.Memory** %MEMORY

  ; Code: imulq $0xa0, %rdx, %rdx	 RIP: 4194f6	 Bytes: 7
  %loadMem_4194f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4194f6 = call %struct.Memory* @routine_imulq__0xa0___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4194f6)
  store %struct.Memory* %call_4194f6, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4194fd	 Bytes: 3
  %loadMem_4194fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4194fd = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4194fd)
  store %struct.Memory* %call_4194fd, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 419500	 Bytes: 4
  %loadMem_419500 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419500 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419500)
  store %struct.Memory* %call_419500, %struct.Memory** %MEMORY

  ; Code: imulq $0x50, %rdx, %rdx	 RIP: 419504	 Bytes: 4
  %loadMem_419504 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419504 = call %struct.Memory* @routine_imulq__0x50___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419504)
  store %struct.Memory* %call_419504, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 419508	 Bytes: 3
  %loadMem_419508 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419508 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419508)
  store %struct.Memory* %call_419508, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 41950b	 Bytes: 4
  %loadMem_41950b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41950b = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41950b)
  store %struct.Memory* %call_41950b, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 41950f	 Bytes: 4
  %loadMem_41950f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41950f = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41950f)
  store %struct.Memory* %call_41950f, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 419513	 Bytes: 3
  %loadMem_419513 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419513 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419513)
  store %struct.Memory* %call_419513, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 419516	 Bytes: 3
  %loadMem_419516 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419516 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419516)
  store %struct.Memory* %call_419516, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 419519	 Bytes: 3
  %loadMem_419519 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419519 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419519)
  store %struct.Memory* %call_419519, %struct.Memory** %MEMORY

  ; Code: callq .XRate	 RIP: 41951c	 Bytes: 5
  %loadMem1_41951c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41951c = call %struct.Memory* @routine_callq_.XRate(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41951c, i64 -1436, i64 5, i64 5)
  store %struct.Memory* %call1_41951c, %struct.Memory** %MEMORY

  %loadMem2_41951c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41951c = load i64, i64* %3
  %call2_41951c = call %struct.Memory* @sub_418f80.XRate(%struct.State* %0, i64  %loadPC_41951c, %struct.Memory* %loadMem2_41951c)
  store %struct.Memory* %call2_41951c, %struct.Memory** %MEMORY

  ; Code: addsd -0x30(%rbp), %xmm0	 RIP: 419521	 Bytes: 5
  %loadMem_419521 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419521 = call %struct.Memory* @routine_addsd_MINUS0x30__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419521)
  store %struct.Memory* %call_419521, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x30(%rbp)	 RIP: 419526	 Bytes: 5
  %loadMem_419526 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419526 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419526)
  store %struct.Memory* %call_419526, %struct.Memory** %MEMORY

  ; Code: .L_41952b:	 RIP: 41952b	 Bytes: 0
  br label %block_.L_41952b
block_.L_41952b:

  ; Code: jmpq .L_419530	 RIP: 41952b	 Bytes: 5
  %loadMem_41952b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41952b = call %struct.Memory* @routine_jmpq_.L_419530(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41952b, i64 5, i64 5)
  store %struct.Memory* %call_41952b, %struct.Memory** %MEMORY

  br label %block_.L_419530

  ; Code: .L_419530:	 RIP: 419530	 Bytes: 0
block_.L_419530:

  ; Code: movl -0x20(%rbp), %eax	 RIP: 419530	 Bytes: 3
  %loadMem_419530 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419530 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419530)
  store %struct.Memory* %call_419530, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 419533	 Bytes: 3
  %loadMem_419533 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419533 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419533)
  store %struct.Memory* %call_419533, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 419536	 Bytes: 3
  %loadMem_419536 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419536 = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419536)
  store %struct.Memory* %call_419536, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41943c	 RIP: 419539	 Bytes: 5
  %loadMem_419539 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419539 = call %struct.Memory* @routine_jmpq_.L_41943c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419539, i64 -253, i64 5)
  store %struct.Memory* %call_419539, %struct.Memory** %MEMORY

  br label %block_.L_41943c

  ; Code: .L_41953e:	 RIP: 41953e	 Bytes: 0
block_.L_41953e:

  ; Code: jmpq .L_419543	 RIP: 41953e	 Bytes: 5
  %loadMem_41953e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41953e = call %struct.Memory* @routine_jmpq_.L_419543(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41953e, i64 5, i64 5)
  store %struct.Memory* %call_41953e, %struct.Memory** %MEMORY

  br label %block_.L_419543

  ; Code: .L_419543:	 RIP: 419543	 Bytes: 0
block_.L_419543:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 419543	 Bytes: 3
  %loadMem_419543 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419543 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419543)
  store %struct.Memory* %call_419543, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 419546	 Bytes: 3
  %loadMem_419546 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419546 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419546)
  store %struct.Memory* %call_419546, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 419549	 Bytes: 3
  %loadMem_419549 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419549 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419549)
  store %struct.Memory* %call_419549, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41942b	 RIP: 41954c	 Bytes: 5
  %loadMem_41954c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41954c = call %struct.Memory* @routine_jmpq_.L_41942b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41954c, i64 -289, i64 5)
  store %struct.Memory* %call_41954c, %struct.Memory** %MEMORY

  br label %block_.L_41942b

  ; Code: .L_419551:	 RIP: 419551	 Bytes: 0
block_.L_419551:

  ; Code: movl $0x0, -0x24(%rbp)	 RIP: 419551	 Bytes: 7
  %loadMem_419551 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419551 = call %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419551)
  store %struct.Memory* %call_419551, %struct.Memory** %MEMORY

  ; Code: .L_419558:	 RIP: 419558	 Bytes: 0
  br label %block_.L_419558
block_.L_419558:

  ; Code: cmpl $0x2, -0x24(%rbp)	 RIP: 419558	 Bytes: 4
  %loadMem_419558 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419558 = call %struct.Memory* @routine_cmpl__0x2__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419558)
  store %struct.Memory* %call_419558, %struct.Memory** %MEMORY

  ; Code: jge .L_419672	 RIP: 41955c	 Bytes: 6
  %loadMem_41955c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41955c = call %struct.Memory* @routine_jge_.L_419672(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41955c, i8* %BRANCH_TAKEN, i64 278, i64 6, i64 6)
  store %struct.Memory* %call_41955c, %struct.Memory** %MEMORY

  %loadBr_41955c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41955c = icmp eq i8 %loadBr_41955c, 1
  br i1 %cmpBr_41955c, label %block_.L_419672, label %block_419562

block_419562:
  ; Code: movl $0x0, -0x20(%rbp)	 RIP: 419562	 Bytes: 7
  %loadMem_419562 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419562 = call %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419562)
  store %struct.Memory* %call_419562, %struct.Memory** %MEMORY

  ; Code: .L_419569:	 RIP: 419569	 Bytes: 0
  br label %block_.L_419569
block_.L_419569:

  ; Code: cmpl $0x6, -0x20(%rbp)	 RIP: 419569	 Bytes: 4
  %loadMem_419569 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419569 = call %struct.Memory* @routine_cmpl__0x6__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419569)
  store %struct.Memory* %call_419569, %struct.Memory** %MEMORY

  ; Code: jge .L_41965f	 RIP: 41956d	 Bytes: 6
  %loadMem_41956d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41956d = call %struct.Memory* @routine_jge_.L_41965f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41956d, i8* %BRANCH_TAKEN, i64 242, i64 6, i64 6)
  store %struct.Memory* %call_41956d, %struct.Memory** %MEMORY

  %loadBr_41956d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41956d = icmp eq i8 %loadBr_41956d, 1
  br i1 %cmpBr_41956d, label %block_.L_41965f, label %block_419573

block_419573:
  ; Code: movq 0x6cb900, %rax	 RIP: 419573	 Bytes: 8
  %loadMem_419573 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419573 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419573)
  store %struct.Memory* %call_419573, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x18(%rax)	 RIP: 41957b	 Bytes: 4
  %loadMem_41957b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41957b = call %struct.Memory* @routine_cmpl__0x2__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41957b)
  store %struct.Memory* %call_41957b, %struct.Memory** %MEMORY

  ; Code: jne .L_4195eb	 RIP: 41957f	 Bytes: 6
  %loadMem_41957f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41957f = call %struct.Memory* @routine_jne_.L_4195eb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41957f, i8* %BRANCH_TAKEN, i64 108, i64 6, i64 6)
  store %struct.Memory* %call_41957f, %struct.Memory** %MEMORY

  %loadBr_41957f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41957f = icmp eq i8 %loadBr_41957f, 1
  br i1 %cmpBr_41957f, label %block_.L_4195eb, label %block_419585

block_419585:
  ; Code: movq $0x4b3b80, %rax	 RIP: 419585	 Bytes: 10
  %loadMem_419585 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419585 = call %struct.Memory* @routine_movq__0x4b3b80___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419585)
  store %struct.Memory* %call_419585, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 41958f	 Bytes: 4
  %loadMem_41958f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41958f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41958f)
  store %struct.Memory* %call_41958f, %struct.Memory** %MEMORY

  ; Code: addq $0x470, %rcx	 RIP: 419593	 Bytes: 7
  %loadMem_419593 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419593 = call %struct.Memory* @routine_addq__0x470___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419593)
  store %struct.Memory* %call_419593, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 41959a	 Bytes: 4
  %loadMem_41959a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41959a = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41959a)
  store %struct.Memory* %call_41959a, %struct.Memory** %MEMORY

  ; Code: imulq $0x60, %rdx, %rdx	 RIP: 41959e	 Bytes: 4
  %loadMem_41959e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41959e = call %struct.Memory* @routine_imulq__0x60___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41959e)
  store %struct.Memory* %call_41959e, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4195a2	 Bytes: 3
  %loadMem_4195a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4195a2 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4195a2)
  store %struct.Memory* %call_4195a2, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 4195a5	 Bytes: 4
  %loadMem_4195a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4195a5 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4195a5)
  store %struct.Memory* %call_4195a5, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 4195a9	 Bytes: 4
  %loadMem_4195a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4195a9 = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4195a9)
  store %struct.Memory* %call_4195a9, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4195ad	 Bytes: 3
  %loadMem_4195ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4195ad = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4195ad)
  store %struct.Memory* %call_4195ad, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 4195b0	 Bytes: 4
  %loadMem_4195b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4195b0 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4195b0)
  store %struct.Memory* %call_4195b0, %struct.Memory** %MEMORY

  ; Code: imulq $0x60, %rdx, %rdx	 RIP: 4195b4	 Bytes: 4
  %loadMem_4195b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4195b4 = call %struct.Memory* @routine_imulq__0x60___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4195b4)
  store %struct.Memory* %call_4195b4, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4195b8	 Bytes: 3
  %loadMem_4195b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4195b8 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4195b8)
  store %struct.Memory* %call_4195b8, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 4195bb	 Bytes: 4
  %loadMem_4195bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4195bb = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4195bb)
  store %struct.Memory* %call_4195bb, %struct.Memory** %MEMORY

  ; Code: imulq $0x30, %rdx, %rdx	 RIP: 4195bf	 Bytes: 4
  %loadMem_4195bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4195bf = call %struct.Memory* @routine_imulq__0x30___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4195bf)
  store %struct.Memory* %call_4195bf, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4195c3	 Bytes: 3
  %loadMem_4195c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4195c3 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4195c3)
  store %struct.Memory* %call_4195c3, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 4195c6	 Bytes: 4
  %loadMem_4195c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4195c6 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4195c6)
  store %struct.Memory* %call_4195c6, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 4195ca	 Bytes: 4
  %loadMem_4195ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4195ca = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4195ca)
  store %struct.Memory* %call_4195ca, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4195ce	 Bytes: 3
  %loadMem_4195ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4195ce = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4195ce)
  store %struct.Memory* %call_4195ce, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 4195d1	 Bytes: 3
  %loadMem_4195d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4195d1 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4195d1)
  store %struct.Memory* %call_4195d1, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 4195d4	 Bytes: 3
  %loadMem_4195d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4195d4 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4195d4)
  store %struct.Memory* %call_4195d4, %struct.Memory** %MEMORY

  ; Code: callq .XRate	 RIP: 4195d7	 Bytes: 5
  %loadMem1_4195d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4195d7 = call %struct.Memory* @routine_callq_.XRate(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4195d7, i64 -1623, i64 5, i64 5)
  store %struct.Memory* %call1_4195d7, %struct.Memory** %MEMORY

  %loadMem2_4195d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4195d7 = load i64, i64* %3
  %call2_4195d7 = call %struct.Memory* @sub_418f80.XRate(%struct.State* %0, i64  %loadPC_4195d7, %struct.Memory* %loadMem2_4195d7)
  store %struct.Memory* %call2_4195d7, %struct.Memory** %MEMORY

  ; Code: addsd -0x30(%rbp), %xmm0	 RIP: 4195dc	 Bytes: 5
  %loadMem_4195dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4195dc = call %struct.Memory* @routine_addsd_MINUS0x30__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4195dc)
  store %struct.Memory* %call_4195dc, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x30(%rbp)	 RIP: 4195e1	 Bytes: 5
  %loadMem_4195e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4195e1 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4195e1)
  store %struct.Memory* %call_4195e1, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41964c	 RIP: 4195e6	 Bytes: 5
  %loadMem_4195e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4195e6 = call %struct.Memory* @routine_jmpq_.L_41964c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4195e6, i64 102, i64 5)
  store %struct.Memory* %call_4195e6, %struct.Memory** %MEMORY

  br label %block_.L_41964c

  ; Code: .L_4195eb:	 RIP: 4195eb	 Bytes: 0
block_.L_4195eb:

  ; Code: movq $0x4b3be0, %rax	 RIP: 4195eb	 Bytes: 10
  %loadMem_4195eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4195eb = call %struct.Memory* @routine_movq__0x4b3be0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4195eb)
  store %struct.Memory* %call_4195eb, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4195f5	 Bytes: 4
  %loadMem_4195f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4195f5 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4195f5)
  store %struct.Memory* %call_4195f5, %struct.Memory** %MEMORY

  ; Code: addq $0x470, %rcx	 RIP: 4195f9	 Bytes: 7
  %loadMem_4195f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4195f9 = call %struct.Memory* @routine_addq__0x470___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4195f9)
  store %struct.Memory* %call_4195f9, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 419600	 Bytes: 4
  %loadMem_419600 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419600 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419600)
  store %struct.Memory* %call_419600, %struct.Memory** %MEMORY

  ; Code: imulq $0x60, %rdx, %rdx	 RIP: 419604	 Bytes: 4
  %loadMem_419604 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419604 = call %struct.Memory* @routine_imulq__0x60___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419604)
  store %struct.Memory* %call_419604, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 419608	 Bytes: 3
  %loadMem_419608 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419608 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419608)
  store %struct.Memory* %call_419608, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 41960b	 Bytes: 4
  %loadMem_41960b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41960b = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41960b)
  store %struct.Memory* %call_41960b, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 41960f	 Bytes: 4
  %loadMem_41960f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41960f = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41960f)
  store %struct.Memory* %call_41960f, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 419613	 Bytes: 3
  %loadMem_419613 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419613 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419613)
  store %struct.Memory* %call_419613, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 419616	 Bytes: 4
  %loadMem_419616 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419616 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419616)
  store %struct.Memory* %call_419616, %struct.Memory** %MEMORY

  ; Code: imulq $0x60, %rdx, %rdx	 RIP: 41961a	 Bytes: 4
  %loadMem_41961a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41961a = call %struct.Memory* @routine_imulq__0x60___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41961a)
  store %struct.Memory* %call_41961a, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41961e	 Bytes: 3
  %loadMem_41961e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41961e = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41961e)
  store %struct.Memory* %call_41961e, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 419621	 Bytes: 4
  %loadMem_419621 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419621 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419621)
  store %struct.Memory* %call_419621, %struct.Memory** %MEMORY

  ; Code: imulq $0x30, %rdx, %rdx	 RIP: 419625	 Bytes: 4
  %loadMem_419625 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419625 = call %struct.Memory* @routine_imulq__0x30___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419625)
  store %struct.Memory* %call_419625, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 419629	 Bytes: 3
  %loadMem_419629 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419629 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419629)
  store %struct.Memory* %call_419629, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 41962c	 Bytes: 4
  %loadMem_41962c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41962c = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41962c)
  store %struct.Memory* %call_41962c, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 419630	 Bytes: 4
  %loadMem_419630 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419630 = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419630)
  store %struct.Memory* %call_419630, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 419634	 Bytes: 3
  %loadMem_419634 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419634 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419634)
  store %struct.Memory* %call_419634, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 419637	 Bytes: 3
  %loadMem_419637 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419637 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419637)
  store %struct.Memory* %call_419637, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 41963a	 Bytes: 3
  %loadMem_41963a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41963a = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41963a)
  store %struct.Memory* %call_41963a, %struct.Memory** %MEMORY

  ; Code: callq .XRate	 RIP: 41963d	 Bytes: 5
  %loadMem1_41963d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41963d = call %struct.Memory* @routine_callq_.XRate(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41963d, i64 -1725, i64 5, i64 5)
  store %struct.Memory* %call1_41963d, %struct.Memory** %MEMORY

  %loadMem2_41963d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41963d = load i64, i64* %3
  %call2_41963d = call %struct.Memory* @sub_418f80.XRate(%struct.State* %0, i64  %loadPC_41963d, %struct.Memory* %loadMem2_41963d)
  store %struct.Memory* %call2_41963d, %struct.Memory** %MEMORY

  ; Code: addsd -0x30(%rbp), %xmm0	 RIP: 419642	 Bytes: 5
  %loadMem_419642 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419642 = call %struct.Memory* @routine_addsd_MINUS0x30__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419642)
  store %struct.Memory* %call_419642, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x30(%rbp)	 RIP: 419647	 Bytes: 5
  %loadMem_419647 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419647 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419647)
  store %struct.Memory* %call_419647, %struct.Memory** %MEMORY

  ; Code: .L_41964c:	 RIP: 41964c	 Bytes: 0
  br label %block_.L_41964c
block_.L_41964c:

  ; Code: jmpq .L_419651	 RIP: 41964c	 Bytes: 5
  %loadMem_41964c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41964c = call %struct.Memory* @routine_jmpq_.L_419651(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41964c, i64 5, i64 5)
  store %struct.Memory* %call_41964c, %struct.Memory** %MEMORY

  br label %block_.L_419651

  ; Code: .L_419651:	 RIP: 419651	 Bytes: 0
block_.L_419651:

  ; Code: movl -0x20(%rbp), %eax	 RIP: 419651	 Bytes: 3
  %loadMem_419651 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419651 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419651)
  store %struct.Memory* %call_419651, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 419654	 Bytes: 3
  %loadMem_419654 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419654 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419654)
  store %struct.Memory* %call_419654, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 419657	 Bytes: 3
  %loadMem_419657 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419657 = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419657)
  store %struct.Memory* %call_419657, %struct.Memory** %MEMORY

  ; Code: jmpq .L_419569	 RIP: 41965a	 Bytes: 5
  %loadMem_41965a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41965a = call %struct.Memory* @routine_jmpq_.L_419569(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41965a, i64 -241, i64 5)
  store %struct.Memory* %call_41965a, %struct.Memory** %MEMORY

  br label %block_.L_419569

  ; Code: .L_41965f:	 RIP: 41965f	 Bytes: 0
block_.L_41965f:

  ; Code: jmpq .L_419664	 RIP: 41965f	 Bytes: 5
  %loadMem_41965f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41965f = call %struct.Memory* @routine_jmpq_.L_419664(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41965f, i64 5, i64 5)
  store %struct.Memory* %call_41965f, %struct.Memory** %MEMORY

  br label %block_.L_419664

  ; Code: .L_419664:	 RIP: 419664	 Bytes: 0
block_.L_419664:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 419664	 Bytes: 3
  %loadMem_419664 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419664 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419664)
  store %struct.Memory* %call_419664, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 419667	 Bytes: 3
  %loadMem_419667 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419667 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419667)
  store %struct.Memory* %call_419667, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 41966a	 Bytes: 3
  %loadMem_41966a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41966a = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41966a)
  store %struct.Memory* %call_41966a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_419558	 RIP: 41966d	 Bytes: 5
  %loadMem_41966d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41966d = call %struct.Memory* @routine_jmpq_.L_419558(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41966d, i64 -277, i64 5)
  store %struct.Memory* %call_41966d, %struct.Memory** %MEMORY

  br label %block_.L_419558

  ; Code: .L_419672:	 RIP: 419672	 Bytes: 0
block_.L_419672:

  ; Code: movl $0x0, -0x20(%rbp)	 RIP: 419672	 Bytes: 7
  %loadMem_419672 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419672 = call %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419672)
  store %struct.Memory* %call_419672, %struct.Memory** %MEMORY

  ; Code: .L_419679:	 RIP: 419679	 Bytes: 0
  br label %block_.L_419679
block_.L_419679:

  ; Code: cmpl $0x4, -0x20(%rbp)	 RIP: 419679	 Bytes: 4
  %loadMem_419679 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419679 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419679)
  store %struct.Memory* %call_419679, %struct.Memory** %MEMORY

  ; Code: jge .L_419743	 RIP: 41967d	 Bytes: 6
  %loadMem_41967d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41967d = call %struct.Memory* @routine_jge_.L_419743(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41967d, i8* %BRANCH_TAKEN, i64 198, i64 6, i64 6)
  store %struct.Memory* %call_41967d, %struct.Memory** %MEMORY

  %loadBr_41967d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41967d = icmp eq i8 %loadBr_41967d, 1
  br i1 %cmpBr_41967d, label %block_.L_419743, label %block_419683

block_419683:
  ; Code: movq 0x6cb900, %rax	 RIP: 419683	 Bytes: 8
  %loadMem_419683 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419683 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419683)
  store %struct.Memory* %call_419683, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x18(%rax)	 RIP: 41968b	 Bytes: 4
  %loadMem_41968b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41968b = call %struct.Memory* @routine_cmpl__0x2__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41968b)
  store %struct.Memory* %call_41968b, %struct.Memory** %MEMORY

  ; Code: jne .L_4196e5	 RIP: 41968f	 Bytes: 6
  %loadMem_41968f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41968f = call %struct.Memory* @routine_jne_.L_4196e5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41968f, i8* %BRANCH_TAKEN, i64 86, i64 6, i64 6)
  store %struct.Memory* %call_41968f, %struct.Memory** %MEMORY

  %loadBr_41968f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41968f = icmp eq i8 %loadBr_41968f, 1
  br i1 %cmpBr_41968f, label %block_.L_4196e5, label %block_419695

block_419695:
  ; Code: movq $0x4b3d00, %rax	 RIP: 419695	 Bytes: 10
  %loadMem_419695 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419695 = call %struct.Memory* @routine_movq__0x4b3d00___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419695)
  store %struct.Memory* %call_419695, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 41969f	 Bytes: 4
  %loadMem_41969f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41969f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41969f)
  store %struct.Memory* %call_41969f, %struct.Memory** %MEMORY

  ; Code: addq $0x530, %rcx	 RIP: 4196a3	 Bytes: 7
  %loadMem_4196a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4196a3 = call %struct.Memory* @routine_addq__0x530___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4196a3)
  store %struct.Memory* %call_4196a3, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 4196aa	 Bytes: 4
  %loadMem_4196aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4196aa = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4196aa)
  store %struct.Memory* %call_4196aa, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 4196ae	 Bytes: 4
  %loadMem_4196ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4196ae = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4196ae)
  store %struct.Memory* %call_4196ae, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4196b2	 Bytes: 3
  %loadMem_4196b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4196b2 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4196b2)
  store %struct.Memory* %call_4196b2, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 4196b5	 Bytes: 4
  %loadMem_4196b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4196b5 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4196b5)
  store %struct.Memory* %call_4196b5, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 4196b9	 Bytes: 4
  %loadMem_4196b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4196b9 = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4196b9)
  store %struct.Memory* %call_4196b9, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4196bd	 Bytes: 3
  %loadMem_4196bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4196bd = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4196bd)
  store %struct.Memory* %call_4196bd, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 4196c0	 Bytes: 4
  %loadMem_4196c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4196c0 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4196c0)
  store %struct.Memory* %call_4196c0, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 4196c4	 Bytes: 4
  %loadMem_4196c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4196c4 = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4196c4)
  store %struct.Memory* %call_4196c4, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4196c8	 Bytes: 3
  %loadMem_4196c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4196c8 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4196c8)
  store %struct.Memory* %call_4196c8, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 4196cb	 Bytes: 3
  %loadMem_4196cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4196cb = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4196cb)
  store %struct.Memory* %call_4196cb, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 4196ce	 Bytes: 3
  %loadMem_4196ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4196ce = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4196ce)
  store %struct.Memory* %call_4196ce, %struct.Memory** %MEMORY

  ; Code: callq .XRate	 RIP: 4196d1	 Bytes: 5
  %loadMem1_4196d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4196d1 = call %struct.Memory* @routine_callq_.XRate(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4196d1, i64 -1873, i64 5, i64 5)
  store %struct.Memory* %call1_4196d1, %struct.Memory** %MEMORY

  %loadMem2_4196d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4196d1 = load i64, i64* %3
  %call2_4196d1 = call %struct.Memory* @sub_418f80.XRate(%struct.State* %0, i64  %loadPC_4196d1, %struct.Memory* %loadMem2_4196d1)
  store %struct.Memory* %call2_4196d1, %struct.Memory** %MEMORY

  ; Code: addsd -0x30(%rbp), %xmm0	 RIP: 4196d6	 Bytes: 5
  %loadMem_4196d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4196d6 = call %struct.Memory* @routine_addsd_MINUS0x30__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4196d6)
  store %struct.Memory* %call_4196d6, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x30(%rbp)	 RIP: 4196db	 Bytes: 5
  %loadMem_4196db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4196db = call %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4196db)
  store %struct.Memory* %call_4196db, %struct.Memory** %MEMORY

  ; Code: jmpq .L_419730	 RIP: 4196e0	 Bytes: 5
  %loadMem_4196e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4196e0 = call %struct.Memory* @routine_jmpq_.L_419730(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4196e0, i64 80, i64 5)
  store %struct.Memory* %call_4196e0, %struct.Memory** %MEMORY

  br label %block_.L_419730

  ; Code: .L_4196e5:	 RIP: 4196e5	 Bytes: 0
block_.L_4196e5:

  ; Code: movq $0x4b3d20, %rax	 RIP: 4196e5	 Bytes: 10
  %loadMem_4196e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4196e5 = call %struct.Memory* @routine_movq__0x4b3d20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4196e5)
  store %struct.Memory* %call_4196e5, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4196ef	 Bytes: 4
  %loadMem_4196ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4196ef = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4196ef)
  store %struct.Memory* %call_4196ef, %struct.Memory** %MEMORY

  ; Code: addq $0x530, %rcx	 RIP: 4196f3	 Bytes: 7
  %loadMem_4196f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4196f3 = call %struct.Memory* @routine_addq__0x530___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4196f3)
  store %struct.Memory* %call_4196f3, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 4196fa	 Bytes: 4
  %loadMem_4196fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4196fa = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4196fa)
  store %struct.Memory* %call_4196fa, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 4196fe	 Bytes: 4
  %loadMem_4196fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4196fe = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4196fe)
  store %struct.Memory* %call_4196fe, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 419702	 Bytes: 3
  %loadMem_419702 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419702 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419702)
  store %struct.Memory* %call_419702, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 419705	 Bytes: 4
  %loadMem_419705 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419705 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419705)
  store %struct.Memory* %call_419705, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 419709	 Bytes: 4
  %loadMem_419709 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419709 = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419709)
  store %struct.Memory* %call_419709, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41970d	 Bytes: 3
  %loadMem_41970d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41970d = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41970d)
  store %struct.Memory* %call_41970d, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 419710	 Bytes: 4
  %loadMem_419710 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419710 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419710)
  store %struct.Memory* %call_419710, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 419714	 Bytes: 4
  %loadMem_419714 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419714 = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419714)
  store %struct.Memory* %call_419714, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 419718	 Bytes: 3
  %loadMem_419718 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419718 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419718)
  store %struct.Memory* %call_419718, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 41971b	 Bytes: 3
  %loadMem_41971b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41971b = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41971b)
  store %struct.Memory* %call_41971b, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 41971e	 Bytes: 3
  %loadMem_41971e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41971e = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41971e)
  store %struct.Memory* %call_41971e, %struct.Memory** %MEMORY

  ; Code: callq .XRate	 RIP: 419721	 Bytes: 5
  %loadMem1_419721 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_419721 = call %struct.Memory* @routine_callq_.XRate(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_419721, i64 -1953, i64 5, i64 5)
  store %struct.Memory* %call1_419721, %struct.Memory** %MEMORY

  %loadMem2_419721 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_419721 = load i64, i64* %3
  %call2_419721 = call %struct.Memory* @sub_418f80.XRate(%struct.State* %0, i64  %loadPC_419721, %struct.Memory* %loadMem2_419721)
  store %struct.Memory* %call2_419721, %struct.Memory** %MEMORY

  ; Code: addsd -0x30(%rbp), %xmm0	 RIP: 419726	 Bytes: 5
  %loadMem_419726 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419726 = call %struct.Memory* @routine_addsd_MINUS0x30__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419726)
  store %struct.Memory* %call_419726, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x30(%rbp)	 RIP: 41972b	 Bytes: 5
  %loadMem_41972b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41972b = call %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41972b)
  store %struct.Memory* %call_41972b, %struct.Memory** %MEMORY

  ; Code: .L_419730:	 RIP: 419730	 Bytes: 0
  br label %block_.L_419730
block_.L_419730:

  ; Code: jmpq .L_419735	 RIP: 419730	 Bytes: 5
  %loadMem_419730 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419730 = call %struct.Memory* @routine_jmpq_.L_419735(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419730, i64 5, i64 5)
  store %struct.Memory* %call_419730, %struct.Memory** %MEMORY

  br label %block_.L_419735

  ; Code: .L_419735:	 RIP: 419735	 Bytes: 0
block_.L_419735:

  ; Code: movl -0x20(%rbp), %eax	 RIP: 419735	 Bytes: 3
  %loadMem_419735 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419735 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419735)
  store %struct.Memory* %call_419735, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 419738	 Bytes: 3
  %loadMem_419738 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419738 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419738)
  store %struct.Memory* %call_419738, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 41973b	 Bytes: 3
  %loadMem_41973b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41973b = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41973b)
  store %struct.Memory* %call_41973b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_419679	 RIP: 41973e	 Bytes: 5
  %loadMem_41973e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41973e = call %struct.Memory* @routine_jmpq_.L_419679(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41973e, i64 -197, i64 5)
  store %struct.Memory* %call_41973e, %struct.Memory** %MEMORY

  br label %block_.L_419679

  ; Code: .L_419743:	 RIP: 419743	 Bytes: 0
block_.L_419743:

  ; Code: movl $0x0, -0x20(%rbp)	 RIP: 419743	 Bytes: 7
  %loadMem_419743 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419743 = call %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419743)
  store %struct.Memory* %call_419743, %struct.Memory** %MEMORY

  ; Code: .L_41974a:	 RIP: 41974a	 Bytes: 0
  br label %block_.L_41974a
block_.L_41974a:

  ; Code: cmpl $0x4, -0x20(%rbp)	 RIP: 41974a	 Bytes: 4
  %loadMem_41974a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41974a = call %struct.Memory* @routine_cmpl__0x4__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41974a)
  store %struct.Memory* %call_41974a, %struct.Memory** %MEMORY

  ; Code: jge .L_419814	 RIP: 41974e	 Bytes: 6
  %loadMem_41974e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41974e = call %struct.Memory* @routine_jge_.L_419814(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41974e, i8* %BRANCH_TAKEN, i64 198, i64 6, i64 6)
  store %struct.Memory* %call_41974e, %struct.Memory** %MEMORY

  %loadBr_41974e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41974e = icmp eq i8 %loadBr_41974e, 1
  br i1 %cmpBr_41974e, label %block_.L_419814, label %block_419754

block_419754:
  ; Code: movq 0x6cb900, %rax	 RIP: 419754	 Bytes: 8
  %loadMem_419754 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419754 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419754)
  store %struct.Memory* %call_419754, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x18(%rax)	 RIP: 41975c	 Bytes: 4
  %loadMem_41975c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41975c = call %struct.Memory* @routine_cmpl__0x2__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41975c)
  store %struct.Memory* %call_41975c, %struct.Memory** %MEMORY

  ; Code: jne .L_4197b6	 RIP: 419760	 Bytes: 6
  %loadMem_419760 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419760 = call %struct.Memory* @routine_jne_.L_4197b6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419760, i8* %BRANCH_TAKEN, i64 86, i64 6, i64 6)
  store %struct.Memory* %call_419760, %struct.Memory** %MEMORY

  %loadBr_419760 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419760 = icmp eq i8 %loadBr_419760, 1
  br i1 %cmpBr_419760, label %block_.L_4197b6, label %block_419766

block_419766:
  ; Code: movq $0x4b3d80, %rax	 RIP: 419766	 Bytes: 10
  %loadMem_419766 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419766 = call %struct.Memory* @routine_movq__0x4b3d80___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419766)
  store %struct.Memory* %call_419766, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 419770	 Bytes: 4
  %loadMem_419770 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419770 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419770)
  store %struct.Memory* %call_419770, %struct.Memory** %MEMORY

  ; Code: addq $0x570, %rcx	 RIP: 419774	 Bytes: 7
  %loadMem_419774 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419774 = call %struct.Memory* @routine_addq__0x570___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419774)
  store %struct.Memory* %call_419774, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 41977b	 Bytes: 4
  %loadMem_41977b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41977b = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41977b)
  store %struct.Memory* %call_41977b, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 41977f	 Bytes: 4
  %loadMem_41977f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41977f = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41977f)
  store %struct.Memory* %call_41977f, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 419783	 Bytes: 3
  %loadMem_419783 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419783 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419783)
  store %struct.Memory* %call_419783, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 419786	 Bytes: 4
  %loadMem_419786 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419786 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419786)
  store %struct.Memory* %call_419786, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 41978a	 Bytes: 4
  %loadMem_41978a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41978a = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41978a)
  store %struct.Memory* %call_41978a, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41978e	 Bytes: 3
  %loadMem_41978e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41978e = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41978e)
  store %struct.Memory* %call_41978e, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 419791	 Bytes: 4
  %loadMem_419791 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419791 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419791)
  store %struct.Memory* %call_419791, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 419795	 Bytes: 4
  %loadMem_419795 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419795 = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419795)
  store %struct.Memory* %call_419795, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 419799	 Bytes: 3
  %loadMem_419799 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419799 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419799)
  store %struct.Memory* %call_419799, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 41979c	 Bytes: 3
  %loadMem_41979c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41979c = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41979c)
  store %struct.Memory* %call_41979c, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 41979f	 Bytes: 3
  %loadMem_41979f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41979f = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41979f)
  store %struct.Memory* %call_41979f, %struct.Memory** %MEMORY

  ; Code: callq .XRate	 RIP: 4197a2	 Bytes: 5
  %loadMem1_4197a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4197a2 = call %struct.Memory* @routine_callq_.XRate(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4197a2, i64 -2082, i64 5, i64 5)
  store %struct.Memory* %call1_4197a2, %struct.Memory** %MEMORY

  %loadMem2_4197a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4197a2 = load i64, i64* %3
  %call2_4197a2 = call %struct.Memory* @sub_418f80.XRate(%struct.State* %0, i64  %loadPC_4197a2, %struct.Memory* %loadMem2_4197a2)
  store %struct.Memory* %call2_4197a2, %struct.Memory** %MEMORY

  ; Code: addsd -0x30(%rbp), %xmm0	 RIP: 4197a7	 Bytes: 5
  %loadMem_4197a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4197a7 = call %struct.Memory* @routine_addsd_MINUS0x30__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4197a7)
  store %struct.Memory* %call_4197a7, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x30(%rbp)	 RIP: 4197ac	 Bytes: 5
  %loadMem_4197ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4197ac = call %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4197ac)
  store %struct.Memory* %call_4197ac, %struct.Memory** %MEMORY

  ; Code: jmpq .L_419801	 RIP: 4197b1	 Bytes: 5
  %loadMem_4197b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4197b1 = call %struct.Memory* @routine_jmpq_.L_419801(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4197b1, i64 80, i64 5)
  store %struct.Memory* %call_4197b1, %struct.Memory** %MEMORY

  br label %block_.L_419801

  ; Code: .L_4197b6:	 RIP: 4197b6	 Bytes: 0
block_.L_4197b6:

  ; Code: movq $0x4b3da0, %rax	 RIP: 4197b6	 Bytes: 10
  %loadMem_4197b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4197b6 = call %struct.Memory* @routine_movq__0x4b3da0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4197b6)
  store %struct.Memory* %call_4197b6, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4197c0	 Bytes: 4
  %loadMem_4197c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4197c0 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4197c0)
  store %struct.Memory* %call_4197c0, %struct.Memory** %MEMORY

  ; Code: addq $0x570, %rcx	 RIP: 4197c4	 Bytes: 7
  %loadMem_4197c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4197c4 = call %struct.Memory* @routine_addq__0x570___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4197c4)
  store %struct.Memory* %call_4197c4, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 4197cb	 Bytes: 4
  %loadMem_4197cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4197cb = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4197cb)
  store %struct.Memory* %call_4197cb, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 4197cf	 Bytes: 4
  %loadMem_4197cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4197cf = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4197cf)
  store %struct.Memory* %call_4197cf, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4197d3	 Bytes: 3
  %loadMem_4197d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4197d3 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4197d3)
  store %struct.Memory* %call_4197d3, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 4197d6	 Bytes: 4
  %loadMem_4197d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4197d6 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4197d6)
  store %struct.Memory* %call_4197d6, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 4197da	 Bytes: 4
  %loadMem_4197da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4197da = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4197da)
  store %struct.Memory* %call_4197da, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4197de	 Bytes: 3
  %loadMem_4197de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4197de = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4197de)
  store %struct.Memory* %call_4197de, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 4197e1	 Bytes: 4
  %loadMem_4197e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4197e1 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4197e1)
  store %struct.Memory* %call_4197e1, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 4197e5	 Bytes: 4
  %loadMem_4197e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4197e5 = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4197e5)
  store %struct.Memory* %call_4197e5, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4197e9	 Bytes: 3
  %loadMem_4197e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4197e9 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4197e9)
  store %struct.Memory* %call_4197e9, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 4197ec	 Bytes: 3
  %loadMem_4197ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4197ec = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4197ec)
  store %struct.Memory* %call_4197ec, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 4197ef	 Bytes: 3
  %loadMem_4197ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4197ef = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4197ef)
  store %struct.Memory* %call_4197ef, %struct.Memory** %MEMORY

  ; Code: callq .XRate	 RIP: 4197f2	 Bytes: 5
  %loadMem1_4197f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4197f2 = call %struct.Memory* @routine_callq_.XRate(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4197f2, i64 -2162, i64 5, i64 5)
  store %struct.Memory* %call1_4197f2, %struct.Memory** %MEMORY

  %loadMem2_4197f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4197f2 = load i64, i64* %3
  %call2_4197f2 = call %struct.Memory* @sub_418f80.XRate(%struct.State* %0, i64  %loadPC_4197f2, %struct.Memory* %loadMem2_4197f2)
  store %struct.Memory* %call2_4197f2, %struct.Memory** %MEMORY

  ; Code: addsd -0x30(%rbp), %xmm0	 RIP: 4197f7	 Bytes: 5
  %loadMem_4197f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4197f7 = call %struct.Memory* @routine_addsd_MINUS0x30__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4197f7)
  store %struct.Memory* %call_4197f7, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x30(%rbp)	 RIP: 4197fc	 Bytes: 5
  %loadMem_4197fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4197fc = call %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4197fc)
  store %struct.Memory* %call_4197fc, %struct.Memory** %MEMORY

  ; Code: .L_419801:	 RIP: 419801	 Bytes: 0
  br label %block_.L_419801
block_.L_419801:

  ; Code: jmpq .L_419806	 RIP: 419801	 Bytes: 5
  %loadMem_419801 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419801 = call %struct.Memory* @routine_jmpq_.L_419806(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419801, i64 5, i64 5)
  store %struct.Memory* %call_419801, %struct.Memory** %MEMORY

  br label %block_.L_419806

  ; Code: .L_419806:	 RIP: 419806	 Bytes: 0
block_.L_419806:

  ; Code: movl -0x20(%rbp), %eax	 RIP: 419806	 Bytes: 3
  %loadMem_419806 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419806 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419806)
  store %struct.Memory* %call_419806, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 419809	 Bytes: 3
  %loadMem_419809 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419809 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419809)
  store %struct.Memory* %call_419809, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 41980c	 Bytes: 3
  %loadMem_41980c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41980c = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41980c)
  store %struct.Memory* %call_41980c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41974a	 RIP: 41980f	 Bytes: 5
  %loadMem_41980f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41980f = call %struct.Memory* @routine_jmpq_.L_41974a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41980f, i64 -197, i64 5)
  store %struct.Memory* %call_41980f, %struct.Memory** %MEMORY

  br label %block_.L_41974a

  ; Code: .L_419814:	 RIP: 419814	 Bytes: 0
block_.L_419814:

  ; Code: movl $0x0, -0x20(%rbp)	 RIP: 419814	 Bytes: 7
  %loadMem_419814 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419814 = call %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419814)
  store %struct.Memory* %call_419814, %struct.Memory** %MEMORY

  ; Code: .L_41981b:	 RIP: 41981b	 Bytes: 0
  br label %block_.L_41981b
block_.L_41981b:

  ; Code: cmpl $0x3, -0x20(%rbp)	 RIP: 41981b	 Bytes: 4
  %loadMem_41981b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41981b = call %struct.Memory* @routine_cmpl__0x3__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41981b)
  store %struct.Memory* %call_41981b, %struct.Memory** %MEMORY

  ; Code: jge .L_4198e5	 RIP: 41981f	 Bytes: 6
  %loadMem_41981f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41981f = call %struct.Memory* @routine_jge_.L_4198e5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41981f, i8* %BRANCH_TAKEN, i64 198, i64 6, i64 6)
  store %struct.Memory* %call_41981f, %struct.Memory** %MEMORY

  %loadBr_41981f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41981f = icmp eq i8 %loadBr_41981f, 1
  br i1 %cmpBr_41981f, label %block_.L_4198e5, label %block_419825

block_419825:
  ; Code: movq 0x6cb900, %rax	 RIP: 419825	 Bytes: 8
  %loadMem_419825 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419825 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419825)
  store %struct.Memory* %call_419825, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x18(%rax)	 RIP: 41982d	 Bytes: 4
  %loadMem_41982d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41982d = call %struct.Memory* @routine_cmpl__0x2__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41982d)
  store %struct.Memory* %call_41982d, %struct.Memory** %MEMORY

  ; Code: jne .L_419887	 RIP: 419831	 Bytes: 6
  %loadMem_419831 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419831 = call %struct.Memory* @routine_jne_.L_419887(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419831, i8* %BRANCH_TAKEN, i64 86, i64 6, i64 6)
  store %struct.Memory* %call_419831, %struct.Memory** %MEMORY

  %loadBr_419831 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419831 = icmp eq i8 %loadBr_419831, 1
  br i1 %cmpBr_419831, label %block_.L_419887, label %block_419837

block_419837:
  ; Code: movq $0x4b3e00, %rax	 RIP: 419837	 Bytes: 10
  %loadMem_419837 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419837 = call %struct.Memory* @routine_movq__0x4b3e00___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419837)
  store %struct.Memory* %call_419837, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 419841	 Bytes: 4
  %loadMem_419841 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419841 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419841)
  store %struct.Memory* %call_419841, %struct.Memory** %MEMORY

  ; Code: addq $0x5b0, %rcx	 RIP: 419845	 Bytes: 7
  %loadMem_419845 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419845 = call %struct.Memory* @routine_addq__0x5b0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419845)
  store %struct.Memory* %call_419845, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 41984c	 Bytes: 4
  %loadMem_41984c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41984c = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41984c)
  store %struct.Memory* %call_41984c, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 419850	 Bytes: 4
  %loadMem_419850 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419850 = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419850)
  store %struct.Memory* %call_419850, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 419854	 Bytes: 3
  %loadMem_419854 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419854 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419854)
  store %struct.Memory* %call_419854, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 419857	 Bytes: 4
  %loadMem_419857 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419857 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419857)
  store %struct.Memory* %call_419857, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 41985b	 Bytes: 4
  %loadMem_41985b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41985b = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41985b)
  store %struct.Memory* %call_41985b, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41985f	 Bytes: 3
  %loadMem_41985f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41985f = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41985f)
  store %struct.Memory* %call_41985f, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 419862	 Bytes: 4
  %loadMem_419862 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419862 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419862)
  store %struct.Memory* %call_419862, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 419866	 Bytes: 4
  %loadMem_419866 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419866 = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419866)
  store %struct.Memory* %call_419866, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41986a	 Bytes: 3
  %loadMem_41986a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41986a = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41986a)
  store %struct.Memory* %call_41986a, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 41986d	 Bytes: 3
  %loadMem_41986d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41986d = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41986d)
  store %struct.Memory* %call_41986d, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 419870	 Bytes: 3
  %loadMem_419870 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419870 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419870)
  store %struct.Memory* %call_419870, %struct.Memory** %MEMORY

  ; Code: callq .XRate	 RIP: 419873	 Bytes: 5
  %loadMem1_419873 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_419873 = call %struct.Memory* @routine_callq_.XRate(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_419873, i64 -2291, i64 5, i64 5)
  store %struct.Memory* %call1_419873, %struct.Memory** %MEMORY

  %loadMem2_419873 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_419873 = load i64, i64* %3
  %call2_419873 = call %struct.Memory* @sub_418f80.XRate(%struct.State* %0, i64  %loadPC_419873, %struct.Memory* %loadMem2_419873)
  store %struct.Memory* %call2_419873, %struct.Memory** %MEMORY

  ; Code: addsd -0x30(%rbp), %xmm0	 RIP: 419878	 Bytes: 5
  %loadMem_419878 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419878 = call %struct.Memory* @routine_addsd_MINUS0x30__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419878)
  store %struct.Memory* %call_419878, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x30(%rbp)	 RIP: 41987d	 Bytes: 5
  %loadMem_41987d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41987d = call %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41987d)
  store %struct.Memory* %call_41987d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4198d2	 RIP: 419882	 Bytes: 5
  %loadMem_419882 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419882 = call %struct.Memory* @routine_jmpq_.L_4198d2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419882, i64 80, i64 5)
  store %struct.Memory* %call_419882, %struct.Memory** %MEMORY

  br label %block_.L_4198d2

  ; Code: .L_419887:	 RIP: 419887	 Bytes: 0
block_.L_419887:

  ; Code: movq $0x4b3e20, %rax	 RIP: 419887	 Bytes: 10
  %loadMem_419887 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419887 = call %struct.Memory* @routine_movq__0x4b3e20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419887)
  store %struct.Memory* %call_419887, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 419891	 Bytes: 4
  %loadMem_419891 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419891 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419891)
  store %struct.Memory* %call_419891, %struct.Memory** %MEMORY

  ; Code: addq $0x5b0, %rcx	 RIP: 419895	 Bytes: 7
  %loadMem_419895 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419895 = call %struct.Memory* @routine_addq__0x5b0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419895)
  store %struct.Memory* %call_419895, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 41989c	 Bytes: 4
  %loadMem_41989c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41989c = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41989c)
  store %struct.Memory* %call_41989c, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 4198a0	 Bytes: 4
  %loadMem_4198a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4198a0 = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4198a0)
  store %struct.Memory* %call_4198a0, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4198a4	 Bytes: 3
  %loadMem_4198a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4198a4 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4198a4)
  store %struct.Memory* %call_4198a4, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 4198a7	 Bytes: 4
  %loadMem_4198a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4198a7 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4198a7)
  store %struct.Memory* %call_4198a7, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 4198ab	 Bytes: 4
  %loadMem_4198ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4198ab = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4198ab)
  store %struct.Memory* %call_4198ab, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4198af	 Bytes: 3
  %loadMem_4198af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4198af = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4198af)
  store %struct.Memory* %call_4198af, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 4198b2	 Bytes: 4
  %loadMem_4198b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4198b2 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4198b2)
  store %struct.Memory* %call_4198b2, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 4198b6	 Bytes: 4
  %loadMem_4198b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4198b6 = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4198b6)
  store %struct.Memory* %call_4198b6, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4198ba	 Bytes: 3
  %loadMem_4198ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4198ba = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4198ba)
  store %struct.Memory* %call_4198ba, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 4198bd	 Bytes: 3
  %loadMem_4198bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4198bd = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4198bd)
  store %struct.Memory* %call_4198bd, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 4198c0	 Bytes: 3
  %loadMem_4198c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4198c0 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4198c0)
  store %struct.Memory* %call_4198c0, %struct.Memory** %MEMORY

  ; Code: callq .XRate	 RIP: 4198c3	 Bytes: 5
  %loadMem1_4198c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4198c3 = call %struct.Memory* @routine_callq_.XRate(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4198c3, i64 -2371, i64 5, i64 5)
  store %struct.Memory* %call1_4198c3, %struct.Memory** %MEMORY

  %loadMem2_4198c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4198c3 = load i64, i64* %3
  %call2_4198c3 = call %struct.Memory* @sub_418f80.XRate(%struct.State* %0, i64  %loadPC_4198c3, %struct.Memory* %loadMem2_4198c3)
  store %struct.Memory* %call2_4198c3, %struct.Memory** %MEMORY

  ; Code: addsd -0x30(%rbp), %xmm0	 RIP: 4198c8	 Bytes: 5
  %loadMem_4198c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4198c8 = call %struct.Memory* @routine_addsd_MINUS0x30__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4198c8)
  store %struct.Memory* %call_4198c8, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x30(%rbp)	 RIP: 4198cd	 Bytes: 5
  %loadMem_4198cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4198cd = call %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4198cd)
  store %struct.Memory* %call_4198cd, %struct.Memory** %MEMORY

  ; Code: .L_4198d2:	 RIP: 4198d2	 Bytes: 0
  br label %block_.L_4198d2
block_.L_4198d2:

  ; Code: jmpq .L_4198d7	 RIP: 4198d2	 Bytes: 5
  %loadMem_4198d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4198d2 = call %struct.Memory* @routine_jmpq_.L_4198d7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4198d2, i64 5, i64 5)
  store %struct.Memory* %call_4198d2, %struct.Memory** %MEMORY

  br label %block_.L_4198d7

  ; Code: .L_4198d7:	 RIP: 4198d7	 Bytes: 0
block_.L_4198d7:

  ; Code: movl -0x20(%rbp), %eax	 RIP: 4198d7	 Bytes: 3
  %loadMem_4198d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4198d7 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4198d7)
  store %struct.Memory* %call_4198d7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4198da	 Bytes: 3
  %loadMem_4198da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4198da = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4198da)
  store %struct.Memory* %call_4198da, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 4198dd	 Bytes: 3
  %loadMem_4198dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4198dd = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4198dd)
  store %struct.Memory* %call_4198dd, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41981b	 RIP: 4198e0	 Bytes: 5
  %loadMem_4198e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4198e0 = call %struct.Memory* @routine_jmpq_.L_41981b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4198e0, i64 -197, i64 5)
  store %struct.Memory* %call_4198e0, %struct.Memory** %MEMORY

  br label %block_.L_41981b

  ; Code: .L_4198e5:	 RIP: 4198e5	 Bytes: 0
block_.L_4198e5:

  ; Code: movl $0x0, -0x20(%rbp)	 RIP: 4198e5	 Bytes: 7
  %loadMem_4198e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4198e5 = call %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4198e5)
  store %struct.Memory* %call_4198e5, %struct.Memory** %MEMORY

  ; Code: .L_4198ec:	 RIP: 4198ec	 Bytes: 0
  br label %block_.L_4198ec
block_.L_4198ec:

  ; Code: cmpl $0x2, -0x20(%rbp)	 RIP: 4198ec	 Bytes: 4
  %loadMem_4198ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4198ec = call %struct.Memory* @routine_cmpl__0x2__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4198ec)
  store %struct.Memory* %call_4198ec, %struct.Memory** %MEMORY

  ; Code: jge .L_4199a8	 RIP: 4198f0	 Bytes: 6
  %loadMem_4198f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4198f0 = call %struct.Memory* @routine_jge_.L_4199a8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4198f0, i8* %BRANCH_TAKEN, i64 184, i64 6, i64 6)
  store %struct.Memory* %call_4198f0, %struct.Memory** %MEMORY

  %loadBr_4198f0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4198f0 = icmp eq i8 %loadBr_4198f0, 1
  br i1 %cmpBr_4198f0, label %block_.L_4199a8, label %block_4198f6

block_4198f6:
  ; Code: movq 0x6cb900, %rax	 RIP: 4198f6	 Bytes: 8
  %loadMem_4198f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4198f6 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4198f6)
  store %struct.Memory* %call_4198f6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x18(%rax)	 RIP: 4198fe	 Bytes: 4
  %loadMem_4198fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4198fe = call %struct.Memory* @routine_cmpl__0x2__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4198fe)
  store %struct.Memory* %call_4198fe, %struct.Memory** %MEMORY

  ; Code: jne .L_419951	 RIP: 419902	 Bytes: 6
  %loadMem_419902 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419902 = call %struct.Memory* @routine_jne_.L_419951(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419902, i8* %BRANCH_TAKEN, i64 79, i64 6, i64 6)
  store %struct.Memory* %call_419902, %struct.Memory** %MEMORY

  %loadBr_419902 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419902 = icmp eq i8 %loadBr_419902, 1
  br i1 %cmpBr_419902, label %block_.L_419951, label %block_419908

block_419908:
  ; Code: movq $0x4b3e70, %rax	 RIP: 419908	 Bytes: 10
  %loadMem_419908 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419908 = call %struct.Memory* @routine_movq__0x4b3e70___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419908)
  store %struct.Memory* %call_419908, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 419912	 Bytes: 4
  %loadMem_419912 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419912 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419912)
  store %struct.Memory* %call_419912, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 419916	 Bytes: 4
  %loadMem_419916 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419916 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419916)
  store %struct.Memory* %call_419916, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 41991a	 Bytes: 4
  %loadMem_41991a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41991a = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41991a)
  store %struct.Memory* %call_41991a, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 41991e	 Bytes: 3
  %loadMem_41991e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41991e = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41991e)
  store %struct.Memory* %call_41991e, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 419921	 Bytes: 4
  %loadMem_419921 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419921 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419921)
  store %struct.Memory* %call_419921, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 419925	 Bytes: 4
  %loadMem_419925 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419925 = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419925)
  store %struct.Memory* %call_419925, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 419929	 Bytes: 3
  %loadMem_419929 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419929 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419929)
  store %struct.Memory* %call_419929, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 41992c	 Bytes: 4
  %loadMem_41992c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41992c = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41992c)
  store %struct.Memory* %call_41992c, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 419930	 Bytes: 4
  %loadMem_419930 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419930 = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419930)
  store %struct.Memory* %call_419930, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 419934	 Bytes: 3
  %loadMem_419934 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419934 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419934)
  store %struct.Memory* %call_419934, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 419937	 Bytes: 3
  %loadMem_419937 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419937 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419937)
  store %struct.Memory* %call_419937, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 41993a	 Bytes: 3
  %loadMem_41993a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41993a = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41993a)
  store %struct.Memory* %call_41993a, %struct.Memory** %MEMORY

  ; Code: callq .XRate	 RIP: 41993d	 Bytes: 5
  %loadMem1_41993d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41993d = call %struct.Memory* @routine_callq_.XRate(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41993d, i64 -2493, i64 5, i64 5)
  store %struct.Memory* %call1_41993d, %struct.Memory** %MEMORY

  %loadMem2_41993d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41993d = load i64, i64* %3
  %call2_41993d = call %struct.Memory* @sub_418f80.XRate(%struct.State* %0, i64  %loadPC_41993d, %struct.Memory* %loadMem2_41993d)
  store %struct.Memory* %call2_41993d, %struct.Memory** %MEMORY

  ; Code: addsd -0x30(%rbp), %xmm0	 RIP: 419942	 Bytes: 5
  %loadMem_419942 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419942 = call %struct.Memory* @routine_addsd_MINUS0x30__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419942)
  store %struct.Memory* %call_419942, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x30(%rbp)	 RIP: 419947	 Bytes: 5
  %loadMem_419947 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419947 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419947)
  store %struct.Memory* %call_419947, %struct.Memory** %MEMORY

  ; Code: jmpq .L_419995	 RIP: 41994c	 Bytes: 5
  %loadMem_41994c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41994c = call %struct.Memory* @routine_jmpq_.L_419995(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41994c, i64 73, i64 5)
  store %struct.Memory* %call_41994c, %struct.Memory** %MEMORY

  br label %block_.L_419995

  ; Code: .L_419951:	 RIP: 419951	 Bytes: 0
block_.L_419951:

  ; Code: movq $0x4b3e80, %rax	 RIP: 419951	 Bytes: 10
  %loadMem_419951 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419951 = call %struct.Memory* @routine_movq__0x4b3e80___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419951)
  store %struct.Memory* %call_419951, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 41995b	 Bytes: 4
  %loadMem_41995b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41995b = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41995b)
  store %struct.Memory* %call_41995b, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 41995f	 Bytes: 4
  %loadMem_41995f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41995f = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41995f)
  store %struct.Memory* %call_41995f, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 419963	 Bytes: 4
  %loadMem_419963 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419963 = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419963)
  store %struct.Memory* %call_419963, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 419967	 Bytes: 3
  %loadMem_419967 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419967 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419967)
  store %struct.Memory* %call_419967, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 41996a	 Bytes: 4
  %loadMem_41996a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41996a = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41996a)
  store %struct.Memory* %call_41996a, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 41996e	 Bytes: 4
  %loadMem_41996e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41996e = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41996e)
  store %struct.Memory* %call_41996e, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 419972	 Bytes: 3
  %loadMem_419972 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419972 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419972)
  store %struct.Memory* %call_419972, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 419975	 Bytes: 4
  %loadMem_419975 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419975 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419975)
  store %struct.Memory* %call_419975, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 419979	 Bytes: 4
  %loadMem_419979 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419979 = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419979)
  store %struct.Memory* %call_419979, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41997d	 Bytes: 3
  %loadMem_41997d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41997d = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41997d)
  store %struct.Memory* %call_41997d, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 419980	 Bytes: 3
  %loadMem_419980 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419980 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419980)
  store %struct.Memory* %call_419980, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 419983	 Bytes: 3
  %loadMem_419983 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419983 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419983)
  store %struct.Memory* %call_419983, %struct.Memory** %MEMORY

  ; Code: callq .XRate	 RIP: 419986	 Bytes: 5
  %loadMem1_419986 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_419986 = call %struct.Memory* @routine_callq_.XRate(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_419986, i64 -2566, i64 5, i64 5)
  store %struct.Memory* %call1_419986, %struct.Memory** %MEMORY

  %loadMem2_419986 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_419986 = load i64, i64* %3
  %call2_419986 = call %struct.Memory* @sub_418f80.XRate(%struct.State* %0, i64  %loadPC_419986, %struct.Memory* %loadMem2_419986)
  store %struct.Memory* %call2_419986, %struct.Memory** %MEMORY

  ; Code: addsd -0x30(%rbp), %xmm0	 RIP: 41998b	 Bytes: 5
  %loadMem_41998b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41998b = call %struct.Memory* @routine_addsd_MINUS0x30__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41998b)
  store %struct.Memory* %call_41998b, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x30(%rbp)	 RIP: 419990	 Bytes: 5
  %loadMem_419990 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419990 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419990)
  store %struct.Memory* %call_419990, %struct.Memory** %MEMORY

  ; Code: .L_419995:	 RIP: 419995	 Bytes: 0
  br label %block_.L_419995
block_.L_419995:

  ; Code: jmpq .L_41999a	 RIP: 419995	 Bytes: 5
  %loadMem_419995 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419995 = call %struct.Memory* @routine_jmpq_.L_41999a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419995, i64 5, i64 5)
  store %struct.Memory* %call_419995, %struct.Memory** %MEMORY

  br label %block_.L_41999a

  ; Code: .L_41999a:	 RIP: 41999a	 Bytes: 0
block_.L_41999a:

  ; Code: movl -0x20(%rbp), %eax	 RIP: 41999a	 Bytes: 3
  %loadMem_41999a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41999a = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41999a)
  store %struct.Memory* %call_41999a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41999d	 Bytes: 3
  %loadMem_41999d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41999d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41999d)
  store %struct.Memory* %call_41999d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 4199a0	 Bytes: 3
  %loadMem_4199a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4199a0 = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4199a0)
  store %struct.Memory* %call_4199a0, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4198ec	 RIP: 4199a3	 Bytes: 5
  %loadMem_4199a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4199a3 = call %struct.Memory* @routine_jmpq_.L_4198ec(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4199a3, i64 -183, i64 5)
  store %struct.Memory* %call_4199a3, %struct.Memory** %MEMORY

  br label %block_.L_4198ec

  ; Code: .L_4199a8:	 RIP: 4199a8	 Bytes: 0
block_.L_4199a8:

  ; Code: movl $0x0, -0x20(%rbp)	 RIP: 4199a8	 Bytes: 7
  %loadMem_4199a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4199a8 = call %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4199a8)
  store %struct.Memory* %call_4199a8, %struct.Memory** %MEMORY

  ; Code: .L_4199af:	 RIP: 4199af	 Bytes: 0
  br label %block_.L_4199af
block_.L_4199af:

  ; Code: cmpl $0x4, -0x20(%rbp)	 RIP: 4199af	 Bytes: 4
  %loadMem_4199af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4199af = call %struct.Memory* @routine_cmpl__0x4__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4199af)
  store %struct.Memory* %call_4199af, %struct.Memory** %MEMORY

  ; Code: jge .L_419a73	 RIP: 4199b3	 Bytes: 6
  %loadMem_4199b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4199b3 = call %struct.Memory* @routine_jge_.L_419a73(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4199b3, i8* %BRANCH_TAKEN, i64 192, i64 6, i64 6)
  store %struct.Memory* %call_4199b3, %struct.Memory** %MEMORY

  %loadBr_4199b3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4199b3 = icmp eq i8 %loadBr_4199b3, 1
  br i1 %cmpBr_4199b3, label %block_.L_419a73, label %block_4199b9

block_4199b9:
  ; Code: movq 0x6cb900, %rax	 RIP: 4199b9	 Bytes: 8
  %loadMem_4199b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4199b9 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4199b9)
  store %struct.Memory* %call_4199b9, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x18(%rax)	 RIP: 4199c1	 Bytes: 4
  %loadMem_4199c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4199c1 = call %struct.Memory* @routine_cmpl__0x2__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4199c1)
  store %struct.Memory* %call_4199c1, %struct.Memory** %MEMORY

  ; Code: jne .L_419a18	 RIP: 4199c5	 Bytes: 6
  %loadMem_4199c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4199c5 = call %struct.Memory* @routine_jne_.L_419a18(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4199c5, i8* %BRANCH_TAKEN, i64 83, i64 6, i64 6)
  store %struct.Memory* %call_4199c5, %struct.Memory** %MEMORY

  %loadBr_4199c5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4199c5 = icmp eq i8 %loadBr_4199c5, 1
  br i1 %cmpBr_4199c5, label %block_.L_419a18, label %block_4199cb

block_4199cb:
  ; Code: movq $0x4b3eb0, %rax	 RIP: 4199cb	 Bytes: 10
  %loadMem_4199cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4199cb = call %struct.Memory* @routine_movq__0x4b3eb0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4199cb)
  store %struct.Memory* %call_4199cb, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4199d5	 Bytes: 4
  %loadMem_4199d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4199d5 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4199d5)
  store %struct.Memory* %call_4199d5, %struct.Memory** %MEMORY

  ; Code: addq $0x20, %rcx	 RIP: 4199d9	 Bytes: 4
  %loadMem_4199d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4199d9 = call %struct.Memory* @routine_addq__0x20___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4199d9)
  store %struct.Memory* %call_4199d9, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 4199dd	 Bytes: 4
  %loadMem_4199dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4199dd = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4199dd)
  store %struct.Memory* %call_4199dd, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 4199e1	 Bytes: 4
  %loadMem_4199e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4199e1 = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4199e1)
  store %struct.Memory* %call_4199e1, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4199e5	 Bytes: 3
  %loadMem_4199e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4199e5 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4199e5)
  store %struct.Memory* %call_4199e5, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 4199e8	 Bytes: 4
  %loadMem_4199e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4199e8 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4199e8)
  store %struct.Memory* %call_4199e8, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 4199ec	 Bytes: 4
  %loadMem_4199ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4199ec = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4199ec)
  store %struct.Memory* %call_4199ec, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4199f0	 Bytes: 3
  %loadMem_4199f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4199f0 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4199f0)
  store %struct.Memory* %call_4199f0, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 4199f3	 Bytes: 4
  %loadMem_4199f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4199f3 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4199f3)
  store %struct.Memory* %call_4199f3, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 4199f7	 Bytes: 4
  %loadMem_4199f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4199f7 = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4199f7)
  store %struct.Memory* %call_4199f7, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4199fb	 Bytes: 3
  %loadMem_4199fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4199fb = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4199fb)
  store %struct.Memory* %call_4199fb, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 4199fe	 Bytes: 3
  %loadMem_4199fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4199fe = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4199fe)
  store %struct.Memory* %call_4199fe, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 419a01	 Bytes: 3
  %loadMem_419a01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419a01 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419a01)
  store %struct.Memory* %call_419a01, %struct.Memory** %MEMORY

  ; Code: callq .XRate	 RIP: 419a04	 Bytes: 5
  %loadMem1_419a04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_419a04 = call %struct.Memory* @routine_callq_.XRate(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_419a04, i64 -2692, i64 5, i64 5)
  store %struct.Memory* %call1_419a04, %struct.Memory** %MEMORY

  %loadMem2_419a04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_419a04 = load i64, i64* %3
  %call2_419a04 = call %struct.Memory* @sub_418f80.XRate(%struct.State* %0, i64  %loadPC_419a04, %struct.Memory* %loadMem2_419a04)
  store %struct.Memory* %call2_419a04, %struct.Memory** %MEMORY

  ; Code: addsd -0x30(%rbp), %xmm0	 RIP: 419a09	 Bytes: 5
  %loadMem_419a09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419a09 = call %struct.Memory* @routine_addsd_MINUS0x30__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419a09)
  store %struct.Memory* %call_419a09, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x30(%rbp)	 RIP: 419a0e	 Bytes: 5
  %loadMem_419a0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419a0e = call %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419a0e)
  store %struct.Memory* %call_419a0e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_419a60	 RIP: 419a13	 Bytes: 5
  %loadMem_419a13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419a13 = call %struct.Memory* @routine_jmpq_.L_419a60(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419a13, i64 77, i64 5)
  store %struct.Memory* %call_419a13, %struct.Memory** %MEMORY

  br label %block_.L_419a60

  ; Code: .L_419a18:	 RIP: 419a18	 Bytes: 0
block_.L_419a18:

  ; Code: movq $0x4b3ed0, %rax	 RIP: 419a18	 Bytes: 10
  %loadMem_419a18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419a18 = call %struct.Memory* @routine_movq__0x4b3ed0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419a18)
  store %struct.Memory* %call_419a18, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 419a22	 Bytes: 4
  %loadMem_419a22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419a22 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419a22)
  store %struct.Memory* %call_419a22, %struct.Memory** %MEMORY

  ; Code: addq $0x20, %rcx	 RIP: 419a26	 Bytes: 4
  %loadMem_419a26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419a26 = call %struct.Memory* @routine_addq__0x20___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419a26)
  store %struct.Memory* %call_419a26, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 419a2a	 Bytes: 4
  %loadMem_419a2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419a2a = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419a2a)
  store %struct.Memory* %call_419a2a, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 419a2e	 Bytes: 4
  %loadMem_419a2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419a2e = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419a2e)
  store %struct.Memory* %call_419a2e, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 419a32	 Bytes: 3
  %loadMem_419a32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419a32 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419a32)
  store %struct.Memory* %call_419a32, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 419a35	 Bytes: 4
  %loadMem_419a35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419a35 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419a35)
  store %struct.Memory* %call_419a35, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 419a39	 Bytes: 4
  %loadMem_419a39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419a39 = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419a39)
  store %struct.Memory* %call_419a39, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 419a3d	 Bytes: 3
  %loadMem_419a3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419a3d = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419a3d)
  store %struct.Memory* %call_419a3d, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 419a40	 Bytes: 4
  %loadMem_419a40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419a40 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419a40)
  store %struct.Memory* %call_419a40, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 419a44	 Bytes: 4
  %loadMem_419a44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419a44 = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419a44)
  store %struct.Memory* %call_419a44, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 419a48	 Bytes: 3
  %loadMem_419a48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419a48 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419a48)
  store %struct.Memory* %call_419a48, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 419a4b	 Bytes: 3
  %loadMem_419a4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419a4b = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419a4b)
  store %struct.Memory* %call_419a4b, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 419a4e	 Bytes: 3
  %loadMem_419a4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419a4e = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419a4e)
  store %struct.Memory* %call_419a4e, %struct.Memory** %MEMORY

  ; Code: callq .XRate	 RIP: 419a51	 Bytes: 5
  %loadMem1_419a51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_419a51 = call %struct.Memory* @routine_callq_.XRate(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_419a51, i64 -2769, i64 5, i64 5)
  store %struct.Memory* %call1_419a51, %struct.Memory** %MEMORY

  %loadMem2_419a51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_419a51 = load i64, i64* %3
  %call2_419a51 = call %struct.Memory* @sub_418f80.XRate(%struct.State* %0, i64  %loadPC_419a51, %struct.Memory* %loadMem2_419a51)
  store %struct.Memory* %call2_419a51, %struct.Memory** %MEMORY

  ; Code: addsd -0x30(%rbp), %xmm0	 RIP: 419a56	 Bytes: 5
  %loadMem_419a56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419a56 = call %struct.Memory* @routine_addsd_MINUS0x30__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419a56)
  store %struct.Memory* %call_419a56, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x30(%rbp)	 RIP: 419a5b	 Bytes: 5
  %loadMem_419a5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419a5b = call %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419a5b)
  store %struct.Memory* %call_419a5b, %struct.Memory** %MEMORY

  ; Code: .L_419a60:	 RIP: 419a60	 Bytes: 0
  br label %block_.L_419a60
block_.L_419a60:

  ; Code: jmpq .L_419a65	 RIP: 419a60	 Bytes: 5
  %loadMem_419a60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419a60 = call %struct.Memory* @routine_jmpq_.L_419a65(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419a60, i64 5, i64 5)
  store %struct.Memory* %call_419a60, %struct.Memory** %MEMORY

  br label %block_.L_419a65

  ; Code: .L_419a65:	 RIP: 419a65	 Bytes: 0
block_.L_419a65:

  ; Code: movl -0x20(%rbp), %eax	 RIP: 419a65	 Bytes: 3
  %loadMem_419a65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419a65 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419a65)
  store %struct.Memory* %call_419a65, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 419a68	 Bytes: 3
  %loadMem_419a68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419a68 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419a68)
  store %struct.Memory* %call_419a68, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 419a6b	 Bytes: 3
  %loadMem_419a6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419a6b = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419a6b)
  store %struct.Memory* %call_419a6b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4199af	 RIP: 419a6e	 Bytes: 5
  %loadMem_419a6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419a6e = call %struct.Memory* @routine_jmpq_.L_4199af(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419a6e, i64 -191, i64 5)
  store %struct.Memory* %call_419a6e, %struct.Memory** %MEMORY

  br label %block_.L_4199af

  ; Code: .L_419a73:	 RIP: 419a73	 Bytes: 0
block_.L_419a73:

  ; Code: movl $0x0, -0x24(%rbp)	 RIP: 419a73	 Bytes: 7
  %loadMem_419a73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419a73 = call %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419a73)
  store %struct.Memory* %call_419a73, %struct.Memory** %MEMORY

  ; Code: .L_419a7a:	 RIP: 419a7a	 Bytes: 0
  br label %block_.L_419a7a
block_.L_419a7a:

  ; Code: cmpl $0x3, -0x24(%rbp)	 RIP: 419a7a	 Bytes: 4
  %loadMem_419a7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419a7a = call %struct.Memory* @routine_cmpl__0x3__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419a7a)
  store %struct.Memory* %call_419a7a, %struct.Memory** %MEMORY

  ; Code: jge .L_419b8e	 RIP: 419a7e	 Bytes: 6
  %loadMem_419a7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419a7e = call %struct.Memory* @routine_jge_.L_419b8e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419a7e, i8* %BRANCH_TAKEN, i64 272, i64 6, i64 6)
  store %struct.Memory* %call_419a7e, %struct.Memory** %MEMORY

  %loadBr_419a7e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419a7e = icmp eq i8 %loadBr_419a7e, 1
  br i1 %cmpBr_419a7e, label %block_.L_419b8e, label %block_419a84

block_419a84:
  ; Code: movl $0x0, -0x20(%rbp)	 RIP: 419a84	 Bytes: 7
  %loadMem_419a84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419a84 = call %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419a84)
  store %struct.Memory* %call_419a84, %struct.Memory** %MEMORY

  ; Code: .L_419a8b:	 RIP: 419a8b	 Bytes: 0
  br label %block_.L_419a8b
block_.L_419a8b:

  ; Code: cmpl $0x4, -0x20(%rbp)	 RIP: 419a8b	 Bytes: 4
  %loadMem_419a8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419a8b = call %struct.Memory* @routine_cmpl__0x4__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419a8b)
  store %struct.Memory* %call_419a8b, %struct.Memory** %MEMORY

  ; Code: jge .L_419b7b	 RIP: 419a8f	 Bytes: 6
  %loadMem_419a8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419a8f = call %struct.Memory* @routine_jge_.L_419b7b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419a8f, i8* %BRANCH_TAKEN, i64 236, i64 6, i64 6)
  store %struct.Memory* %call_419a8f, %struct.Memory** %MEMORY

  %loadBr_419a8f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419a8f = icmp eq i8 %loadBr_419a8f, 1
  br i1 %cmpBr_419a8f, label %block_.L_419b7b, label %block_419a95

block_419a95:
  ; Code: movq 0x6cb900, %rax	 RIP: 419a95	 Bytes: 8
  %loadMem_419a95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419a95 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419a95)
  store %struct.Memory* %call_419a95, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x18(%rax)	 RIP: 419a9d	 Bytes: 4
  %loadMem_419a9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419a9d = call %struct.Memory* @routine_cmpl__0x2__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419a9d)
  store %struct.Memory* %call_419a9d, %struct.Memory** %MEMORY

  ; Code: jne .L_419b0a	 RIP: 419aa1	 Bytes: 6
  %loadMem_419aa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419aa1 = call %struct.Memory* @routine_jne_.L_419b0a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419aa1, i8* %BRANCH_TAKEN, i64 105, i64 6, i64 6)
  store %struct.Memory* %call_419aa1, %struct.Memory** %MEMORY

  %loadBr_419aa1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419aa1 = icmp eq i8 %loadBr_419aa1, 1
  br i1 %cmpBr_419aa1, label %block_.L_419b0a, label %block_419aa7

block_419aa7:
  ; Code: movq $0x4b3f30, %rax	 RIP: 419aa7	 Bytes: 10
  %loadMem_419aa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419aa7 = call %struct.Memory* @routine_movq__0x4b3f30___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419aa7)
  store %struct.Memory* %call_419aa7, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 419ab1	 Bytes: 4
  %loadMem_419ab1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ab1 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ab1)
  store %struct.Memory* %call_419ab1, %struct.Memory** %MEMORY

  ; Code: addq $0x60, %rcx	 RIP: 419ab5	 Bytes: 4
  %loadMem_419ab5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ab5 = call %struct.Memory* @routine_addq__0x60___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ab5)
  store %struct.Memory* %call_419ab5, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 419ab9	 Bytes: 4
  %loadMem_419ab9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ab9 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ab9)
  store %struct.Memory* %call_419ab9, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 419abd	 Bytes: 4
  %loadMem_419abd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419abd = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419abd)
  store %struct.Memory* %call_419abd, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 419ac1	 Bytes: 3
  %loadMem_419ac1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ac1 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ac1)
  store %struct.Memory* %call_419ac1, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 419ac4	 Bytes: 4
  %loadMem_419ac4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ac4 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ac4)
  store %struct.Memory* %call_419ac4, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 419ac8	 Bytes: 4
  %loadMem_419ac8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ac8 = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ac8)
  store %struct.Memory* %call_419ac8, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 419acc	 Bytes: 3
  %loadMem_419acc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419acc = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419acc)
  store %struct.Memory* %call_419acc, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 419acf	 Bytes: 4
  %loadMem_419acf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419acf = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419acf)
  store %struct.Memory* %call_419acf, %struct.Memory** %MEMORY

  ; Code: imulq $0x60, %rdx, %rdx	 RIP: 419ad3	 Bytes: 4
  %loadMem_419ad3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ad3 = call %struct.Memory* @routine_imulq__0x60___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ad3)
  store %struct.Memory* %call_419ad3, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 419ad7	 Bytes: 3
  %loadMem_419ad7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ad7 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ad7)
  store %struct.Memory* %call_419ad7, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 419ada	 Bytes: 4
  %loadMem_419ada = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ada = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ada)
  store %struct.Memory* %call_419ada, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 419ade	 Bytes: 4
  %loadMem_419ade = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ade = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ade)
  store %struct.Memory* %call_419ade, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 419ae2	 Bytes: 3
  %loadMem_419ae2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ae2 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ae2)
  store %struct.Memory* %call_419ae2, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 419ae5	 Bytes: 4
  %loadMem_419ae5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ae5 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ae5)
  store %struct.Memory* %call_419ae5, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 419ae9	 Bytes: 4
  %loadMem_419ae9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ae9 = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ae9)
  store %struct.Memory* %call_419ae9, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 419aed	 Bytes: 3
  %loadMem_419aed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419aed = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419aed)
  store %struct.Memory* %call_419aed, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 419af0	 Bytes: 3
  %loadMem_419af0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419af0 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419af0)
  store %struct.Memory* %call_419af0, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 419af3	 Bytes: 3
  %loadMem_419af3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419af3 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419af3)
  store %struct.Memory* %call_419af3, %struct.Memory** %MEMORY

  ; Code: callq .XRate	 RIP: 419af6	 Bytes: 5
  %loadMem1_419af6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_419af6 = call %struct.Memory* @routine_callq_.XRate(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_419af6, i64 -2934, i64 5, i64 5)
  store %struct.Memory* %call1_419af6, %struct.Memory** %MEMORY

  %loadMem2_419af6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_419af6 = load i64, i64* %3
  %call2_419af6 = call %struct.Memory* @sub_418f80.XRate(%struct.State* %0, i64  %loadPC_419af6, %struct.Memory* %loadMem2_419af6)
  store %struct.Memory* %call2_419af6, %struct.Memory** %MEMORY

  ; Code: addsd -0x30(%rbp), %xmm0	 RIP: 419afb	 Bytes: 5
  %loadMem_419afb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419afb = call %struct.Memory* @routine_addsd_MINUS0x30__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419afb)
  store %struct.Memory* %call_419afb, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x30(%rbp)	 RIP: 419b00	 Bytes: 5
  %loadMem_419b00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b00 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b00)
  store %struct.Memory* %call_419b00, %struct.Memory** %MEMORY

  ; Code: jmpq .L_419b68	 RIP: 419b05	 Bytes: 5
  %loadMem_419b05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b05 = call %struct.Memory* @routine_jmpq_.L_419b68(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b05, i64 99, i64 5)
  store %struct.Memory* %call_419b05, %struct.Memory** %MEMORY

  br label %block_.L_419b68

  ; Code: .L_419b0a:	 RIP: 419b0a	 Bytes: 0
block_.L_419b0a:

  ; Code: movq $0x4b3f90, %rax	 RIP: 419b0a	 Bytes: 10
  %loadMem_419b0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b0a = call %struct.Memory* @routine_movq__0x4b3f90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b0a)
  store %struct.Memory* %call_419b0a, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 419b14	 Bytes: 4
  %loadMem_419b14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b14 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b14)
  store %struct.Memory* %call_419b14, %struct.Memory** %MEMORY

  ; Code: addq $0x60, %rcx	 RIP: 419b18	 Bytes: 4
  %loadMem_419b18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b18 = call %struct.Memory* @routine_addq__0x60___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b18)
  store %struct.Memory* %call_419b18, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 419b1c	 Bytes: 4
  %loadMem_419b1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b1c = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b1c)
  store %struct.Memory* %call_419b1c, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 419b20	 Bytes: 4
  %loadMem_419b20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b20 = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b20)
  store %struct.Memory* %call_419b20, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 419b24	 Bytes: 3
  %loadMem_419b24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b24 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b24)
  store %struct.Memory* %call_419b24, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 419b27	 Bytes: 4
  %loadMem_419b27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b27 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b27)
  store %struct.Memory* %call_419b27, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 419b2b	 Bytes: 4
  %loadMem_419b2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b2b = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b2b)
  store %struct.Memory* %call_419b2b, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 419b2f	 Bytes: 3
  %loadMem_419b2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b2f = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b2f)
  store %struct.Memory* %call_419b2f, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 419b32	 Bytes: 4
  %loadMem_419b32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b32 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b32)
  store %struct.Memory* %call_419b32, %struct.Memory** %MEMORY

  ; Code: imulq $0x60, %rdx, %rdx	 RIP: 419b36	 Bytes: 4
  %loadMem_419b36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b36 = call %struct.Memory* @routine_imulq__0x60___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b36)
  store %struct.Memory* %call_419b36, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 419b3a	 Bytes: 3
  %loadMem_419b3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b3a = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b3a)
  store %struct.Memory* %call_419b3a, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 419b3d	 Bytes: 4
  %loadMem_419b3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b3d = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b3d)
  store %struct.Memory* %call_419b3d, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 419b41	 Bytes: 4
  %loadMem_419b41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b41 = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b41)
  store %struct.Memory* %call_419b41, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 419b45	 Bytes: 3
  %loadMem_419b45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b45 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b45)
  store %struct.Memory* %call_419b45, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 419b48	 Bytes: 4
  %loadMem_419b48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b48 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b48)
  store %struct.Memory* %call_419b48, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 419b4c	 Bytes: 4
  %loadMem_419b4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b4c = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b4c)
  store %struct.Memory* %call_419b4c, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 419b50	 Bytes: 3
  %loadMem_419b50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b50 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b50)
  store %struct.Memory* %call_419b50, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 419b53	 Bytes: 3
  %loadMem_419b53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b53 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b53)
  store %struct.Memory* %call_419b53, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 419b56	 Bytes: 3
  %loadMem_419b56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b56 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b56)
  store %struct.Memory* %call_419b56, %struct.Memory** %MEMORY

  ; Code: callq .XRate	 RIP: 419b59	 Bytes: 5
  %loadMem1_419b59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_419b59 = call %struct.Memory* @routine_callq_.XRate(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_419b59, i64 -3033, i64 5, i64 5)
  store %struct.Memory* %call1_419b59, %struct.Memory** %MEMORY

  %loadMem2_419b59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_419b59 = load i64, i64* %3
  %call2_419b59 = call %struct.Memory* @sub_418f80.XRate(%struct.State* %0, i64  %loadPC_419b59, %struct.Memory* %loadMem2_419b59)
  store %struct.Memory* %call2_419b59, %struct.Memory** %MEMORY

  ; Code: addsd -0x30(%rbp), %xmm0	 RIP: 419b5e	 Bytes: 5
  %loadMem_419b5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b5e = call %struct.Memory* @routine_addsd_MINUS0x30__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b5e)
  store %struct.Memory* %call_419b5e, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x30(%rbp)	 RIP: 419b63	 Bytes: 5
  %loadMem_419b63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b63 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b63)
  store %struct.Memory* %call_419b63, %struct.Memory** %MEMORY

  ; Code: .L_419b68:	 RIP: 419b68	 Bytes: 0
  br label %block_.L_419b68
block_.L_419b68:

  ; Code: jmpq .L_419b6d	 RIP: 419b68	 Bytes: 5
  %loadMem_419b68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b68 = call %struct.Memory* @routine_jmpq_.L_419b6d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b68, i64 5, i64 5)
  store %struct.Memory* %call_419b68, %struct.Memory** %MEMORY

  br label %block_.L_419b6d

  ; Code: .L_419b6d:	 RIP: 419b6d	 Bytes: 0
block_.L_419b6d:

  ; Code: movl -0x20(%rbp), %eax	 RIP: 419b6d	 Bytes: 3
  %loadMem_419b6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b6d = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b6d)
  store %struct.Memory* %call_419b6d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 419b70	 Bytes: 3
  %loadMem_419b70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b70 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b70)
  store %struct.Memory* %call_419b70, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 419b73	 Bytes: 3
  %loadMem_419b73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b73 = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b73)
  store %struct.Memory* %call_419b73, %struct.Memory** %MEMORY

  ; Code: jmpq .L_419a8b	 RIP: 419b76	 Bytes: 5
  %loadMem_419b76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b76 = call %struct.Memory* @routine_jmpq_.L_419a8b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b76, i64 -235, i64 5)
  store %struct.Memory* %call_419b76, %struct.Memory** %MEMORY

  br label %block_.L_419a8b

  ; Code: .L_419b7b:	 RIP: 419b7b	 Bytes: 0
block_.L_419b7b:

  ; Code: jmpq .L_419b80	 RIP: 419b7b	 Bytes: 5
  %loadMem_419b7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b7b = call %struct.Memory* @routine_jmpq_.L_419b80(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b7b, i64 5, i64 5)
  store %struct.Memory* %call_419b7b, %struct.Memory** %MEMORY

  br label %block_.L_419b80

  ; Code: .L_419b80:	 RIP: 419b80	 Bytes: 0
block_.L_419b80:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 419b80	 Bytes: 3
  %loadMem_419b80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b80 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b80)
  store %struct.Memory* %call_419b80, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 419b83	 Bytes: 3
  %loadMem_419b83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b83 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b83)
  store %struct.Memory* %call_419b83, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 419b86	 Bytes: 3
  %loadMem_419b86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b86 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b86)
  store %struct.Memory* %call_419b86, %struct.Memory** %MEMORY

  ; Code: jmpq .L_419a7a	 RIP: 419b89	 Bytes: 5
  %loadMem_419b89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b89 = call %struct.Memory* @routine_jmpq_.L_419a7a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b89, i64 -271, i64 5)
  store %struct.Memory* %call_419b89, %struct.Memory** %MEMORY

  br label %block_.L_419a7a

  ; Code: .L_419b8e:	 RIP: 419b8e	 Bytes: 0
block_.L_419b8e:

  ; Code: movl $0x0, -0x24(%rbp)	 RIP: 419b8e	 Bytes: 7
  %loadMem_419b8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b8e = call %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b8e)
  store %struct.Memory* %call_419b8e, %struct.Memory** %MEMORY

  ; Code: .L_419b95:	 RIP: 419b95	 Bytes: 0
  br label %block_.L_419b95
block_.L_419b95:

  ; Code: cmpl $0xa, -0x24(%rbp)	 RIP: 419b95	 Bytes: 4
  %loadMem_419b95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b95 = call %struct.Memory* @routine_cmpl__0xa__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b95)
  store %struct.Memory* %call_419b95, %struct.Memory** %MEMORY

  ; Code: jge .L_419caf	 RIP: 419b99	 Bytes: 6
  %loadMem_419b99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b99 = call %struct.Memory* @routine_jge_.L_419caf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b99, i8* %BRANCH_TAKEN, i64 278, i64 6, i64 6)
  store %struct.Memory* %call_419b99, %struct.Memory** %MEMORY

  %loadBr_419b99 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419b99 = icmp eq i8 %loadBr_419b99, 1
  br i1 %cmpBr_419b99, label %block_.L_419caf, label %block_419b9f

block_419b9f:
  ; Code: movl $0x0, -0x20(%rbp)	 RIP: 419b9f	 Bytes: 7
  %loadMem_419b9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419b9f = call %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419b9f)
  store %struct.Memory* %call_419b9f, %struct.Memory** %MEMORY

  ; Code: .L_419ba6:	 RIP: 419ba6	 Bytes: 0
  br label %block_.L_419ba6
block_.L_419ba6:

  ; Code: cmpl $0x4, -0x20(%rbp)	 RIP: 419ba6	 Bytes: 4
  %loadMem_419ba6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ba6 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ba6)
  store %struct.Memory* %call_419ba6, %struct.Memory** %MEMORY

  ; Code: jge .L_419c9c	 RIP: 419baa	 Bytes: 6
  %loadMem_419baa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419baa = call %struct.Memory* @routine_jge_.L_419c9c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419baa, i8* %BRANCH_TAKEN, i64 242, i64 6, i64 6)
  store %struct.Memory* %call_419baa, %struct.Memory** %MEMORY

  %loadBr_419baa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419baa = icmp eq i8 %loadBr_419baa, 1
  br i1 %cmpBr_419baa, label %block_.L_419c9c, label %block_419bb0

block_419bb0:
  ; Code: movq 0x6cb900, %rax	 RIP: 419bb0	 Bytes: 8
  %loadMem_419bb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419bb0 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419bb0)
  store %struct.Memory* %call_419bb0, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x18(%rax)	 RIP: 419bb8	 Bytes: 4
  %loadMem_419bb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419bb8 = call %struct.Memory* @routine_cmpl__0x2__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419bb8)
  store %struct.Memory* %call_419bb8, %struct.Memory** %MEMORY

  ; Code: jne .L_419c28	 RIP: 419bbc	 Bytes: 6
  %loadMem_419bbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419bbc = call %struct.Memory* @routine_jne_.L_419c28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419bbc, i8* %BRANCH_TAKEN, i64 108, i64 6, i64 6)
  store %struct.Memory* %call_419bbc, %struct.Memory** %MEMORY

  %loadBr_419bbc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419bbc = icmp eq i8 %loadBr_419bbc, 1
  br i1 %cmpBr_419bbc, label %block_.L_419c28, label %block_419bc2

block_419bc2:
  ; Code: movq $0x4b40b0, %rax	 RIP: 419bc2	 Bytes: 10
  %loadMem_419bc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419bc2 = call %struct.Memory* @routine_movq__0x4b40b0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419bc2)
  store %struct.Memory* %call_419bc2, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 419bcc	 Bytes: 4
  %loadMem_419bcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419bcc = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419bcc)
  store %struct.Memory* %call_419bcc, %struct.Memory** %MEMORY

  ; Code: addq $0x120, %rcx	 RIP: 419bd0	 Bytes: 7
  %loadMem_419bd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419bd0 = call %struct.Memory* @routine_addq__0x120___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419bd0)
  store %struct.Memory* %call_419bd0, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 419bd7	 Bytes: 4
  %loadMem_419bd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419bd7 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419bd7)
  store %struct.Memory* %call_419bd7, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 419bdb	 Bytes: 4
  %loadMem_419bdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419bdb = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419bdb)
  store %struct.Memory* %call_419bdb, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 419bdf	 Bytes: 3
  %loadMem_419bdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419bdf = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419bdf)
  store %struct.Memory* %call_419bdf, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 419be2	 Bytes: 4
  %loadMem_419be2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419be2 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419be2)
  store %struct.Memory* %call_419be2, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 419be6	 Bytes: 4
  %loadMem_419be6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419be6 = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419be6)
  store %struct.Memory* %call_419be6, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 419bea	 Bytes: 3
  %loadMem_419bea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419bea = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419bea)
  store %struct.Memory* %call_419bea, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 419bed	 Bytes: 4
  %loadMem_419bed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419bed = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419bed)
  store %struct.Memory* %call_419bed, %struct.Memory** %MEMORY

  ; Code: shlq $0x8, %rdx	 RIP: 419bf1	 Bytes: 4
  %loadMem_419bf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419bf1 = call %struct.Memory* @routine_shlq__0x8___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419bf1)
  store %struct.Memory* %call_419bf1, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 419bf5	 Bytes: 3
  %loadMem_419bf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419bf5 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419bf5)
  store %struct.Memory* %call_419bf5, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 419bf8	 Bytes: 4
  %loadMem_419bf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419bf8 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419bf8)
  store %struct.Memory* %call_419bf8, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 419bfc	 Bytes: 4
  %loadMem_419bfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419bfc = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419bfc)
  store %struct.Memory* %call_419bfc, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 419c00	 Bytes: 3
  %loadMem_419c00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c00 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c00)
  store %struct.Memory* %call_419c00, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 419c03	 Bytes: 4
  %loadMem_419c03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c03 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c03)
  store %struct.Memory* %call_419c03, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 419c07	 Bytes: 4
  %loadMem_419c07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c07 = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c07)
  store %struct.Memory* %call_419c07, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 419c0b	 Bytes: 3
  %loadMem_419c0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c0b = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c0b)
  store %struct.Memory* %call_419c0b, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 419c0e	 Bytes: 3
  %loadMem_419c0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c0e = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c0e)
  store %struct.Memory* %call_419c0e, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 419c11	 Bytes: 3
  %loadMem_419c11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c11 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c11)
  store %struct.Memory* %call_419c11, %struct.Memory** %MEMORY

  ; Code: callq .XRate	 RIP: 419c14	 Bytes: 5
  %loadMem1_419c14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_419c14 = call %struct.Memory* @routine_callq_.XRate(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_419c14, i64 -3220, i64 5, i64 5)
  store %struct.Memory* %call1_419c14, %struct.Memory** %MEMORY

  %loadMem2_419c14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_419c14 = load i64, i64* %3
  %call2_419c14 = call %struct.Memory* @sub_418f80.XRate(%struct.State* %0, i64  %loadPC_419c14, %struct.Memory* %loadMem2_419c14)
  store %struct.Memory* %call2_419c14, %struct.Memory** %MEMORY

  ; Code: addsd -0x30(%rbp), %xmm0	 RIP: 419c19	 Bytes: 5
  %loadMem_419c19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c19 = call %struct.Memory* @routine_addsd_MINUS0x30__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c19)
  store %struct.Memory* %call_419c19, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x30(%rbp)	 RIP: 419c1e	 Bytes: 5
  %loadMem_419c1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c1e = call %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c1e)
  store %struct.Memory* %call_419c1e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_419c89	 RIP: 419c23	 Bytes: 5
  %loadMem_419c23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c23 = call %struct.Memory* @routine_jmpq_.L_419c89(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c23, i64 102, i64 5)
  store %struct.Memory* %call_419c23, %struct.Memory** %MEMORY

  br label %block_.L_419c89

  ; Code: .L_419c28:	 RIP: 419c28	 Bytes: 0
block_.L_419c28:

  ; Code: movq $0x4b41b0, %rax	 RIP: 419c28	 Bytes: 10
  %loadMem_419c28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c28 = call %struct.Memory* @routine_movq__0x4b41b0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c28)
  store %struct.Memory* %call_419c28, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 419c32	 Bytes: 4
  %loadMem_419c32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c32 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c32)
  store %struct.Memory* %call_419c32, %struct.Memory** %MEMORY

  ; Code: addq $0x120, %rcx	 RIP: 419c36	 Bytes: 7
  %loadMem_419c36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c36 = call %struct.Memory* @routine_addq__0x120___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c36)
  store %struct.Memory* %call_419c36, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 419c3d	 Bytes: 4
  %loadMem_419c3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c3d = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c3d)
  store %struct.Memory* %call_419c3d, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 419c41	 Bytes: 4
  %loadMem_419c41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c41 = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c41)
  store %struct.Memory* %call_419c41, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 419c45	 Bytes: 3
  %loadMem_419c45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c45 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c45)
  store %struct.Memory* %call_419c45, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 419c48	 Bytes: 4
  %loadMem_419c48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c48 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c48)
  store %struct.Memory* %call_419c48, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 419c4c	 Bytes: 4
  %loadMem_419c4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c4c = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c4c)
  store %struct.Memory* %call_419c4c, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 419c50	 Bytes: 3
  %loadMem_419c50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c50 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c50)
  store %struct.Memory* %call_419c50, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 419c53	 Bytes: 4
  %loadMem_419c53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c53 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c53)
  store %struct.Memory* %call_419c53, %struct.Memory** %MEMORY

  ; Code: shlq $0x8, %rdx	 RIP: 419c57	 Bytes: 4
  %loadMem_419c57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c57 = call %struct.Memory* @routine_shlq__0x8___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c57)
  store %struct.Memory* %call_419c57, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 419c5b	 Bytes: 3
  %loadMem_419c5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c5b = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c5b)
  store %struct.Memory* %call_419c5b, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 419c5e	 Bytes: 4
  %loadMem_419c5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c5e = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c5e)
  store %struct.Memory* %call_419c5e, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 419c62	 Bytes: 4
  %loadMem_419c62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c62 = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c62)
  store %struct.Memory* %call_419c62, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 419c66	 Bytes: 3
  %loadMem_419c66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c66 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c66)
  store %struct.Memory* %call_419c66, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 419c69	 Bytes: 4
  %loadMem_419c69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c69 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c69)
  store %struct.Memory* %call_419c69, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 419c6d	 Bytes: 4
  %loadMem_419c6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c6d = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c6d)
  store %struct.Memory* %call_419c6d, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 419c71	 Bytes: 3
  %loadMem_419c71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c71 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c71)
  store %struct.Memory* %call_419c71, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 419c74	 Bytes: 3
  %loadMem_419c74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c74 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c74)
  store %struct.Memory* %call_419c74, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 419c77	 Bytes: 3
  %loadMem_419c77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c77 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c77)
  store %struct.Memory* %call_419c77, %struct.Memory** %MEMORY

  ; Code: callq .XRate	 RIP: 419c7a	 Bytes: 5
  %loadMem1_419c7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_419c7a = call %struct.Memory* @routine_callq_.XRate(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_419c7a, i64 -3322, i64 5, i64 5)
  store %struct.Memory* %call1_419c7a, %struct.Memory** %MEMORY

  %loadMem2_419c7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_419c7a = load i64, i64* %3
  %call2_419c7a = call %struct.Memory* @sub_418f80.XRate(%struct.State* %0, i64  %loadPC_419c7a, %struct.Memory* %loadMem2_419c7a)
  store %struct.Memory* %call2_419c7a, %struct.Memory** %MEMORY

  ; Code: addsd -0x30(%rbp), %xmm0	 RIP: 419c7f	 Bytes: 5
  %loadMem_419c7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c7f = call %struct.Memory* @routine_addsd_MINUS0x30__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c7f)
  store %struct.Memory* %call_419c7f, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x30(%rbp)	 RIP: 419c84	 Bytes: 5
  %loadMem_419c84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c84 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c84)
  store %struct.Memory* %call_419c84, %struct.Memory** %MEMORY

  ; Code: .L_419c89:	 RIP: 419c89	 Bytes: 0
  br label %block_.L_419c89
block_.L_419c89:

  ; Code: jmpq .L_419c8e	 RIP: 419c89	 Bytes: 5
  %loadMem_419c89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c89 = call %struct.Memory* @routine_jmpq_.L_419c8e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c89, i64 5, i64 5)
  store %struct.Memory* %call_419c89, %struct.Memory** %MEMORY

  br label %block_.L_419c8e

  ; Code: .L_419c8e:	 RIP: 419c8e	 Bytes: 0
block_.L_419c8e:

  ; Code: movl -0x20(%rbp), %eax	 RIP: 419c8e	 Bytes: 3
  %loadMem_419c8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c8e = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c8e)
  store %struct.Memory* %call_419c8e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 419c91	 Bytes: 3
  %loadMem_419c91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c91 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c91)
  store %struct.Memory* %call_419c91, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 419c94	 Bytes: 3
  %loadMem_419c94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c94 = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c94)
  store %struct.Memory* %call_419c94, %struct.Memory** %MEMORY

  ; Code: jmpq .L_419ba6	 RIP: 419c97	 Bytes: 5
  %loadMem_419c97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c97 = call %struct.Memory* @routine_jmpq_.L_419ba6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c97, i64 -241, i64 5)
  store %struct.Memory* %call_419c97, %struct.Memory** %MEMORY

  br label %block_.L_419ba6

  ; Code: .L_419c9c:	 RIP: 419c9c	 Bytes: 0
block_.L_419c9c:

  ; Code: jmpq .L_419ca1	 RIP: 419c9c	 Bytes: 5
  %loadMem_419c9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419c9c = call %struct.Memory* @routine_jmpq_.L_419ca1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419c9c, i64 5, i64 5)
  store %struct.Memory* %call_419c9c, %struct.Memory** %MEMORY

  br label %block_.L_419ca1

  ; Code: .L_419ca1:	 RIP: 419ca1	 Bytes: 0
block_.L_419ca1:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 419ca1	 Bytes: 3
  %loadMem_419ca1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ca1 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ca1)
  store %struct.Memory* %call_419ca1, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 419ca4	 Bytes: 3
  %loadMem_419ca4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ca4 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ca4)
  store %struct.Memory* %call_419ca4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 419ca7	 Bytes: 3
  %loadMem_419ca7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ca7 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ca7)
  store %struct.Memory* %call_419ca7, %struct.Memory** %MEMORY

  ; Code: jmpq .L_419b95	 RIP: 419caa	 Bytes: 5
  %loadMem_419caa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419caa = call %struct.Memory* @routine_jmpq_.L_419b95(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419caa, i64 -277, i64 5)
  store %struct.Memory* %call_419caa, %struct.Memory** %MEMORY

  br label %block_.L_419b95

  ; Code: .L_419caf:	 RIP: 419caf	 Bytes: 0
block_.L_419caf:

  ; Code: movl $0x0, -0x24(%rbp)	 RIP: 419caf	 Bytes: 7
  %loadMem_419caf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419caf = call %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419caf)
  store %struct.Memory* %call_419caf, %struct.Memory** %MEMORY

  ; Code: .L_419cb6:	 RIP: 419cb6	 Bytes: 0
  br label %block_.L_419cb6
block_.L_419cb6:

  ; Code: cmpl $0xa, -0x24(%rbp)	 RIP: 419cb6	 Bytes: 4
  %loadMem_419cb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419cb6 = call %struct.Memory* @routine_cmpl__0xa__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419cb6)
  store %struct.Memory* %call_419cb6, %struct.Memory** %MEMORY

  ; Code: jge .L_419ddc	 RIP: 419cba	 Bytes: 6
  %loadMem_419cba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419cba = call %struct.Memory* @routine_jge_.L_419ddc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419cba, i8* %BRANCH_TAKEN, i64 290, i64 6, i64 6)
  store %struct.Memory* %call_419cba, %struct.Memory** %MEMORY

  %loadBr_419cba = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419cba = icmp eq i8 %loadBr_419cba, 1
  br i1 %cmpBr_419cba, label %block_.L_419ddc, label %block_419cc0

block_419cc0:
  ; Code: movl $0x0, -0x20(%rbp)	 RIP: 419cc0	 Bytes: 7
  %loadMem_419cc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419cc0 = call %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419cc0)
  store %struct.Memory* %call_419cc0, %struct.Memory** %MEMORY

  ; Code: .L_419cc7:	 RIP: 419cc7	 Bytes: 0
  br label %block_.L_419cc7
block_.L_419cc7:

  ; Code: cmpl $0xf, -0x20(%rbp)	 RIP: 419cc7	 Bytes: 4
  %loadMem_419cc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419cc7 = call %struct.Memory* @routine_cmpl__0xf__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419cc7)
  store %struct.Memory* %call_419cc7, %struct.Memory** %MEMORY

  ; Code: jge .L_419dc9	 RIP: 419ccb	 Bytes: 6
  %loadMem_419ccb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ccb = call %struct.Memory* @routine_jge_.L_419dc9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ccb, i8* %BRANCH_TAKEN, i64 254, i64 6, i64 6)
  store %struct.Memory* %call_419ccb, %struct.Memory** %MEMORY

  %loadBr_419ccb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419ccb = icmp eq i8 %loadBr_419ccb, 1
  br i1 %cmpBr_419ccb, label %block_.L_419dc9, label %block_419cd1

block_419cd1:
  ; Code: movq 0x6cb900, %rax	 RIP: 419cd1	 Bytes: 8
  %loadMem_419cd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419cd1 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419cd1)
  store %struct.Memory* %call_419cd1, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x18(%rax)	 RIP: 419cd9	 Bytes: 4
  %loadMem_419cd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419cd9 = call %struct.Memory* @routine_cmpl__0x2__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419cd9)
  store %struct.Memory* %call_419cd9, %struct.Memory** %MEMORY

  ; Code: jne .L_419d4f	 RIP: 419cdd	 Bytes: 6
  %loadMem_419cdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419cdd = call %struct.Memory* @routine_jne_.L_419d4f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419cdd, i8* %BRANCH_TAKEN, i64 114, i64 6, i64 6)
  store %struct.Memory* %call_419cdd, %struct.Memory** %MEMORY

  %loadBr_419cdd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419cdd = icmp eq i8 %loadBr_419cdd, 1
  br i1 %cmpBr_419cdd, label %block_.L_419d4f, label %block_419ce3

block_419ce3:
  ; Code: movq $0x4b44b0, %rax	 RIP: 419ce3	 Bytes: 10
  %loadMem_419ce3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ce3 = call %struct.Memory* @routine_movq__0x4b44b0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ce3)
  store %struct.Memory* %call_419ce3, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 419ced	 Bytes: 4
  %loadMem_419ced = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ced = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ced)
  store %struct.Memory* %call_419ced, %struct.Memory** %MEMORY

  ; Code: addq $0x3a0, %rcx	 RIP: 419cf1	 Bytes: 7
  %loadMem_419cf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419cf1 = call %struct.Memory* @routine_addq__0x3a0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419cf1)
  store %struct.Memory* %call_419cf1, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 419cf8	 Bytes: 4
  %loadMem_419cf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419cf8 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419cf8)
  store %struct.Memory* %call_419cf8, %struct.Memory** %MEMORY

  ; Code: imulq $0xf0, %rdx, %rdx	 RIP: 419cfc	 Bytes: 7
  %loadMem_419cfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419cfc = call %struct.Memory* @routine_imulq__0xf0___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419cfc)
  store %struct.Memory* %call_419cfc, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 419d03	 Bytes: 3
  %loadMem_419d03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d03 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d03)
  store %struct.Memory* %call_419d03, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 419d06	 Bytes: 4
  %loadMem_419d06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d06 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d06)
  store %struct.Memory* %call_419d06, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 419d0a	 Bytes: 4
  %loadMem_419d0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d0a = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d0a)
  store %struct.Memory* %call_419d0a, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 419d0e	 Bytes: 3
  %loadMem_419d0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d0e = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d0e)
  store %struct.Memory* %call_419d0e, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 419d11	 Bytes: 4
  %loadMem_419d11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d11 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d11)
  store %struct.Memory* %call_419d11, %struct.Memory** %MEMORY

  ; Code: imulq $0x3c0, %rdx, %rdx	 RIP: 419d15	 Bytes: 7
  %loadMem_419d15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d15 = call %struct.Memory* @routine_imulq__0x3c0___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d15)
  store %struct.Memory* %call_419d15, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 419d1c	 Bytes: 3
  %loadMem_419d1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d1c = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d1c)
  store %struct.Memory* %call_419d1c, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 419d1f	 Bytes: 4
  %loadMem_419d1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d1f = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d1f)
  store %struct.Memory* %call_419d1f, %struct.Memory** %MEMORY

  ; Code: imulq $0x78, %rdx, %rdx	 RIP: 419d23	 Bytes: 4
  %loadMem_419d23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d23 = call %struct.Memory* @routine_imulq__0x78___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d23)
  store %struct.Memory* %call_419d23, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 419d27	 Bytes: 3
  %loadMem_419d27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d27 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d27)
  store %struct.Memory* %call_419d27, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 419d2a	 Bytes: 4
  %loadMem_419d2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d2a = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d2a)
  store %struct.Memory* %call_419d2a, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 419d2e	 Bytes: 4
  %loadMem_419d2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d2e = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d2e)
  store %struct.Memory* %call_419d2e, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 419d32	 Bytes: 3
  %loadMem_419d32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d32 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d32)
  store %struct.Memory* %call_419d32, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 419d35	 Bytes: 3
  %loadMem_419d35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d35 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d35)
  store %struct.Memory* %call_419d35, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 419d38	 Bytes: 3
  %loadMem_419d38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d38 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d38)
  store %struct.Memory* %call_419d38, %struct.Memory** %MEMORY

  ; Code: callq .XRate	 RIP: 419d3b	 Bytes: 5
  %loadMem1_419d3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_419d3b = call %struct.Memory* @routine_callq_.XRate(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_419d3b, i64 -3515, i64 5, i64 5)
  store %struct.Memory* %call1_419d3b, %struct.Memory** %MEMORY

  %loadMem2_419d3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_419d3b = load i64, i64* %3
  %call2_419d3b = call %struct.Memory* @sub_418f80.XRate(%struct.State* %0, i64  %loadPC_419d3b, %struct.Memory* %loadMem2_419d3b)
  store %struct.Memory* %call2_419d3b, %struct.Memory** %MEMORY

  ; Code: addsd -0x30(%rbp), %xmm0	 RIP: 419d40	 Bytes: 5
  %loadMem_419d40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d40 = call %struct.Memory* @routine_addsd_MINUS0x30__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d40)
  store %struct.Memory* %call_419d40, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x30(%rbp)	 RIP: 419d45	 Bytes: 5
  %loadMem_419d45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d45 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d45)
  store %struct.Memory* %call_419d45, %struct.Memory** %MEMORY

  ; Code: jmpq .L_419db6	 RIP: 419d4a	 Bytes: 5
  %loadMem_419d4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d4a = call %struct.Memory* @routine_jmpq_.L_419db6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d4a, i64 108, i64 5)
  store %struct.Memory* %call_419d4a, %struct.Memory** %MEMORY

  br label %block_.L_419db6

  ; Code: .L_419d4f:	 RIP: 419d4f	 Bytes: 0
block_.L_419d4f:

  ; Code: movq $0x4b4870, %rax	 RIP: 419d4f	 Bytes: 10
  %loadMem_419d4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d4f = call %struct.Memory* @routine_movq__0x4b4870___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d4f)
  store %struct.Memory* %call_419d4f, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 419d59	 Bytes: 4
  %loadMem_419d59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d59 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d59)
  store %struct.Memory* %call_419d59, %struct.Memory** %MEMORY

  ; Code: addq $0x3a0, %rcx	 RIP: 419d5d	 Bytes: 7
  %loadMem_419d5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d5d = call %struct.Memory* @routine_addq__0x3a0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d5d)
  store %struct.Memory* %call_419d5d, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 419d64	 Bytes: 4
  %loadMem_419d64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d64 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d64)
  store %struct.Memory* %call_419d64, %struct.Memory** %MEMORY

  ; Code: imulq $0xf0, %rdx, %rdx	 RIP: 419d68	 Bytes: 7
  %loadMem_419d68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d68 = call %struct.Memory* @routine_imulq__0xf0___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d68)
  store %struct.Memory* %call_419d68, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 419d6f	 Bytes: 3
  %loadMem_419d6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d6f = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d6f)
  store %struct.Memory* %call_419d6f, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 419d72	 Bytes: 4
  %loadMem_419d72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d72 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d72)
  store %struct.Memory* %call_419d72, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 419d76	 Bytes: 4
  %loadMem_419d76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d76 = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d76)
  store %struct.Memory* %call_419d76, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 419d7a	 Bytes: 3
  %loadMem_419d7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d7a = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d7a)
  store %struct.Memory* %call_419d7a, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 419d7d	 Bytes: 4
  %loadMem_419d7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d7d = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d7d)
  store %struct.Memory* %call_419d7d, %struct.Memory** %MEMORY

  ; Code: imulq $0x3c0, %rdx, %rdx	 RIP: 419d81	 Bytes: 7
  %loadMem_419d81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d81 = call %struct.Memory* @routine_imulq__0x3c0___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d81)
  store %struct.Memory* %call_419d81, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 419d88	 Bytes: 3
  %loadMem_419d88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d88 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d88)
  store %struct.Memory* %call_419d88, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 419d8b	 Bytes: 4
  %loadMem_419d8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d8b = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d8b)
  store %struct.Memory* %call_419d8b, %struct.Memory** %MEMORY

  ; Code: imulq $0x78, %rdx, %rdx	 RIP: 419d8f	 Bytes: 4
  %loadMem_419d8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d8f = call %struct.Memory* @routine_imulq__0x78___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d8f)
  store %struct.Memory* %call_419d8f, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 419d93	 Bytes: 3
  %loadMem_419d93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d93 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d93)
  store %struct.Memory* %call_419d93, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 419d96	 Bytes: 4
  %loadMem_419d96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d96 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d96)
  store %struct.Memory* %call_419d96, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 419d9a	 Bytes: 4
  %loadMem_419d9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d9a = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d9a)
  store %struct.Memory* %call_419d9a, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 419d9e	 Bytes: 3
  %loadMem_419d9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419d9e = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419d9e)
  store %struct.Memory* %call_419d9e, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 419da1	 Bytes: 3
  %loadMem_419da1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419da1 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419da1)
  store %struct.Memory* %call_419da1, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 419da4	 Bytes: 3
  %loadMem_419da4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419da4 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419da4)
  store %struct.Memory* %call_419da4, %struct.Memory** %MEMORY

  ; Code: callq .XRate	 RIP: 419da7	 Bytes: 5
  %loadMem1_419da7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_419da7 = call %struct.Memory* @routine_callq_.XRate(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_419da7, i64 -3623, i64 5, i64 5)
  store %struct.Memory* %call1_419da7, %struct.Memory** %MEMORY

  %loadMem2_419da7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_419da7 = load i64, i64* %3
  %call2_419da7 = call %struct.Memory* @sub_418f80.XRate(%struct.State* %0, i64  %loadPC_419da7, %struct.Memory* %loadMem2_419da7)
  store %struct.Memory* %call2_419da7, %struct.Memory** %MEMORY

  ; Code: addsd -0x30(%rbp), %xmm0	 RIP: 419dac	 Bytes: 5
  %loadMem_419dac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419dac = call %struct.Memory* @routine_addsd_MINUS0x30__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419dac)
  store %struct.Memory* %call_419dac, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x30(%rbp)	 RIP: 419db1	 Bytes: 5
  %loadMem_419db1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419db1 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419db1)
  store %struct.Memory* %call_419db1, %struct.Memory** %MEMORY

  ; Code: .L_419db6:	 RIP: 419db6	 Bytes: 0
  br label %block_.L_419db6
block_.L_419db6:

  ; Code: jmpq .L_419dbb	 RIP: 419db6	 Bytes: 5
  %loadMem_419db6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419db6 = call %struct.Memory* @routine_jmpq_.L_419dbb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419db6, i64 5, i64 5)
  store %struct.Memory* %call_419db6, %struct.Memory** %MEMORY

  br label %block_.L_419dbb

  ; Code: .L_419dbb:	 RIP: 419dbb	 Bytes: 0
block_.L_419dbb:

  ; Code: movl -0x20(%rbp), %eax	 RIP: 419dbb	 Bytes: 3
  %loadMem_419dbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419dbb = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419dbb)
  store %struct.Memory* %call_419dbb, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 419dbe	 Bytes: 3
  %loadMem_419dbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419dbe = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419dbe)
  store %struct.Memory* %call_419dbe, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 419dc1	 Bytes: 3
  %loadMem_419dc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419dc1 = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419dc1)
  store %struct.Memory* %call_419dc1, %struct.Memory** %MEMORY

  ; Code: jmpq .L_419cc7	 RIP: 419dc4	 Bytes: 5
  %loadMem_419dc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419dc4 = call %struct.Memory* @routine_jmpq_.L_419cc7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419dc4, i64 -253, i64 5)
  store %struct.Memory* %call_419dc4, %struct.Memory** %MEMORY

  br label %block_.L_419cc7

  ; Code: .L_419dc9:	 RIP: 419dc9	 Bytes: 0
block_.L_419dc9:

  ; Code: jmpq .L_419dce	 RIP: 419dc9	 Bytes: 5
  %loadMem_419dc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419dc9 = call %struct.Memory* @routine_jmpq_.L_419dce(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419dc9, i64 5, i64 5)
  store %struct.Memory* %call_419dc9, %struct.Memory** %MEMORY

  br label %block_.L_419dce

  ; Code: .L_419dce:	 RIP: 419dce	 Bytes: 0
block_.L_419dce:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 419dce	 Bytes: 3
  %loadMem_419dce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419dce = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419dce)
  store %struct.Memory* %call_419dce, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 419dd1	 Bytes: 3
  %loadMem_419dd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419dd1 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419dd1)
  store %struct.Memory* %call_419dd1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 419dd4	 Bytes: 3
  %loadMem_419dd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419dd4 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419dd4)
  store %struct.Memory* %call_419dd4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_419cb6	 RIP: 419dd7	 Bytes: 5
  %loadMem_419dd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419dd7 = call %struct.Memory* @routine_jmpq_.L_419cb6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419dd7, i64 -289, i64 5)
  store %struct.Memory* %call_419dd7, %struct.Memory** %MEMORY

  br label %block_.L_419cb6

  ; Code: .L_419ddc:	 RIP: 419ddc	 Bytes: 0
block_.L_419ddc:

  ; Code: movl $0x0, -0x24(%rbp)	 RIP: 419ddc	 Bytes: 7
  %loadMem_419ddc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ddc = call %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ddc)
  store %struct.Memory* %call_419ddc, %struct.Memory** %MEMORY

  ; Code: .L_419de3:	 RIP: 419de3	 Bytes: 0
  br label %block_.L_419de3
block_.L_419de3:

  ; Code: cmpl $0xa, -0x24(%rbp)	 RIP: 419de3	 Bytes: 4
  %loadMem_419de3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419de3 = call %struct.Memory* @routine_cmpl__0xa__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419de3)
  store %struct.Memory* %call_419de3, %struct.Memory** %MEMORY

  ; Code: jge .L_419f09	 RIP: 419de7	 Bytes: 6
  %loadMem_419de7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419de7 = call %struct.Memory* @routine_jge_.L_419f09(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419de7, i8* %BRANCH_TAKEN, i64 290, i64 6, i64 6)
  store %struct.Memory* %call_419de7, %struct.Memory** %MEMORY

  %loadBr_419de7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419de7 = icmp eq i8 %loadBr_419de7, 1
  br i1 %cmpBr_419de7, label %block_.L_419f09, label %block_419ded

block_419ded:
  ; Code: movl $0x0, -0x20(%rbp)	 RIP: 419ded	 Bytes: 7
  %loadMem_419ded = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ded = call %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ded)
  store %struct.Memory* %call_419ded, %struct.Memory** %MEMORY

  ; Code: .L_419df4:	 RIP: 419df4	 Bytes: 0
  br label %block_.L_419df4
block_.L_419df4:

  ; Code: cmpl $0xf, -0x20(%rbp)	 RIP: 419df4	 Bytes: 4
  %loadMem_419df4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419df4 = call %struct.Memory* @routine_cmpl__0xf__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419df4)
  store %struct.Memory* %call_419df4, %struct.Memory** %MEMORY

  ; Code: jge .L_419ef6	 RIP: 419df8	 Bytes: 6
  %loadMem_419df8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419df8 = call %struct.Memory* @routine_jge_.L_419ef6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419df8, i8* %BRANCH_TAKEN, i64 254, i64 6, i64 6)
  store %struct.Memory* %call_419df8, %struct.Memory** %MEMORY

  %loadBr_419df8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419df8 = icmp eq i8 %loadBr_419df8, 1
  br i1 %cmpBr_419df8, label %block_.L_419ef6, label %block_419dfe

block_419dfe:
  ; Code: movq 0x6cb900, %rax	 RIP: 419dfe	 Bytes: 8
  %loadMem_419dfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419dfe = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419dfe)
  store %struct.Memory* %call_419dfe, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x18(%rax)	 RIP: 419e06	 Bytes: 4
  %loadMem_419e06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e06 = call %struct.Memory* @routine_cmpl__0x2__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e06)
  store %struct.Memory* %call_419e06, %struct.Memory** %MEMORY

  ; Code: jne .L_419e7c	 RIP: 419e0a	 Bytes: 6
  %loadMem_419e0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e0a = call %struct.Memory* @routine_jne_.L_419e7c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e0a, i8* %BRANCH_TAKEN, i64 114, i64 6, i64 6)
  store %struct.Memory* %call_419e0a, %struct.Memory** %MEMORY

  %loadBr_419e0a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419e0a = icmp eq i8 %loadBr_419e0a, 1
  br i1 %cmpBr_419e0a, label %block_.L_419e7c, label %block_419e10

block_419e10:
  ; Code: movq $0x4b53b0, %rax	 RIP: 419e10	 Bytes: 10
  %loadMem_419e10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e10 = call %struct.Memory* @routine_movq__0x4b53b0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e10)
  store %struct.Memory* %call_419e10, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 419e1a	 Bytes: 4
  %loadMem_419e1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e1a = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e1a)
  store %struct.Memory* %call_419e1a, %struct.Memory** %MEMORY

  ; Code: addq $0xd00, %rcx	 RIP: 419e1e	 Bytes: 7
  %loadMem_419e1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e1e = call %struct.Memory* @routine_addq__0xd00___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e1e)
  store %struct.Memory* %call_419e1e, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 419e25	 Bytes: 4
  %loadMem_419e25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e25 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e25)
  store %struct.Memory* %call_419e25, %struct.Memory** %MEMORY

  ; Code: imulq $0xf0, %rdx, %rdx	 RIP: 419e29	 Bytes: 7
  %loadMem_419e29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e29 = call %struct.Memory* @routine_imulq__0xf0___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e29)
  store %struct.Memory* %call_419e29, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 419e30	 Bytes: 3
  %loadMem_419e30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e30 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e30)
  store %struct.Memory* %call_419e30, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 419e33	 Bytes: 4
  %loadMem_419e33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e33 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e33)
  store %struct.Memory* %call_419e33, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 419e37	 Bytes: 4
  %loadMem_419e37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e37 = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e37)
  store %struct.Memory* %call_419e37, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 419e3b	 Bytes: 3
  %loadMem_419e3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e3b = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e3b)
  store %struct.Memory* %call_419e3b, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 419e3e	 Bytes: 4
  %loadMem_419e3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e3e = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e3e)
  store %struct.Memory* %call_419e3e, %struct.Memory** %MEMORY

  ; Code: imulq $0x3c0, %rdx, %rdx	 RIP: 419e42	 Bytes: 7
  %loadMem_419e42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e42 = call %struct.Memory* @routine_imulq__0x3c0___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e42)
  store %struct.Memory* %call_419e42, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 419e49	 Bytes: 3
  %loadMem_419e49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e49 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e49)
  store %struct.Memory* %call_419e49, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 419e4c	 Bytes: 4
  %loadMem_419e4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e4c = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e4c)
  store %struct.Memory* %call_419e4c, %struct.Memory** %MEMORY

  ; Code: imulq $0x78, %rdx, %rdx	 RIP: 419e50	 Bytes: 4
  %loadMem_419e50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e50 = call %struct.Memory* @routine_imulq__0x78___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e50)
  store %struct.Memory* %call_419e50, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 419e54	 Bytes: 3
  %loadMem_419e54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e54 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e54)
  store %struct.Memory* %call_419e54, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 419e57	 Bytes: 4
  %loadMem_419e57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e57 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e57)
  store %struct.Memory* %call_419e57, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 419e5b	 Bytes: 4
  %loadMem_419e5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e5b = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e5b)
  store %struct.Memory* %call_419e5b, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 419e5f	 Bytes: 3
  %loadMem_419e5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e5f = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e5f)
  store %struct.Memory* %call_419e5f, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 419e62	 Bytes: 3
  %loadMem_419e62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e62 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e62)
  store %struct.Memory* %call_419e62, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 419e65	 Bytes: 3
  %loadMem_419e65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e65 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e65)
  store %struct.Memory* %call_419e65, %struct.Memory** %MEMORY

  ; Code: callq .XRate	 RIP: 419e68	 Bytes: 5
  %loadMem1_419e68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_419e68 = call %struct.Memory* @routine_callq_.XRate(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_419e68, i64 -3816, i64 5, i64 5)
  store %struct.Memory* %call1_419e68, %struct.Memory** %MEMORY

  %loadMem2_419e68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_419e68 = load i64, i64* %3
  %call2_419e68 = call %struct.Memory* @sub_418f80.XRate(%struct.State* %0, i64  %loadPC_419e68, %struct.Memory* %loadMem2_419e68)
  store %struct.Memory* %call2_419e68, %struct.Memory** %MEMORY

  ; Code: addsd -0x30(%rbp), %xmm0	 RIP: 419e6d	 Bytes: 5
  %loadMem_419e6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e6d = call %struct.Memory* @routine_addsd_MINUS0x30__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e6d)
  store %struct.Memory* %call_419e6d, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x30(%rbp)	 RIP: 419e72	 Bytes: 5
  %loadMem_419e72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e72 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e72)
  store %struct.Memory* %call_419e72, %struct.Memory** %MEMORY

  ; Code: jmpq .L_419ee3	 RIP: 419e77	 Bytes: 5
  %loadMem_419e77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e77 = call %struct.Memory* @routine_jmpq_.L_419ee3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e77, i64 108, i64 5)
  store %struct.Memory* %call_419e77, %struct.Memory** %MEMORY

  br label %block_.L_419ee3

  ; Code: .L_419e7c:	 RIP: 419e7c	 Bytes: 0
block_.L_419e7c:

  ; Code: movq $0x4b5770, %rax	 RIP: 419e7c	 Bytes: 10
  %loadMem_419e7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e7c = call %struct.Memory* @routine_movq__0x4b5770___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e7c)
  store %struct.Memory* %call_419e7c, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 419e86	 Bytes: 4
  %loadMem_419e86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e86 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e86)
  store %struct.Memory* %call_419e86, %struct.Memory** %MEMORY

  ; Code: addq $0xd00, %rcx	 RIP: 419e8a	 Bytes: 7
  %loadMem_419e8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e8a = call %struct.Memory* @routine_addq__0xd00___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e8a)
  store %struct.Memory* %call_419e8a, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 419e91	 Bytes: 4
  %loadMem_419e91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e91 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e91)
  store %struct.Memory* %call_419e91, %struct.Memory** %MEMORY

  ; Code: imulq $0xf0, %rdx, %rdx	 RIP: 419e95	 Bytes: 7
  %loadMem_419e95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e95 = call %struct.Memory* @routine_imulq__0xf0___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e95)
  store %struct.Memory* %call_419e95, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 419e9c	 Bytes: 3
  %loadMem_419e9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e9c = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e9c)
  store %struct.Memory* %call_419e9c, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 419e9f	 Bytes: 4
  %loadMem_419e9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419e9f = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419e9f)
  store %struct.Memory* %call_419e9f, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 419ea3	 Bytes: 4
  %loadMem_419ea3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ea3 = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ea3)
  store %struct.Memory* %call_419ea3, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 419ea7	 Bytes: 3
  %loadMem_419ea7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ea7 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ea7)
  store %struct.Memory* %call_419ea7, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 419eaa	 Bytes: 4
  %loadMem_419eaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419eaa = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419eaa)
  store %struct.Memory* %call_419eaa, %struct.Memory** %MEMORY

  ; Code: imulq $0x3c0, %rdx, %rdx	 RIP: 419eae	 Bytes: 7
  %loadMem_419eae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419eae = call %struct.Memory* @routine_imulq__0x3c0___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419eae)
  store %struct.Memory* %call_419eae, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 419eb5	 Bytes: 3
  %loadMem_419eb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419eb5 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419eb5)
  store %struct.Memory* %call_419eb5, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 419eb8	 Bytes: 4
  %loadMem_419eb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419eb8 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419eb8)
  store %struct.Memory* %call_419eb8, %struct.Memory** %MEMORY

  ; Code: imulq $0x78, %rdx, %rdx	 RIP: 419ebc	 Bytes: 4
  %loadMem_419ebc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ebc = call %struct.Memory* @routine_imulq__0x78___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ebc)
  store %struct.Memory* %call_419ebc, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 419ec0	 Bytes: 3
  %loadMem_419ec0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ec0 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ec0)
  store %struct.Memory* %call_419ec0, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 419ec3	 Bytes: 4
  %loadMem_419ec3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ec3 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ec3)
  store %struct.Memory* %call_419ec3, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 419ec7	 Bytes: 4
  %loadMem_419ec7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ec7 = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ec7)
  store %struct.Memory* %call_419ec7, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 419ecb	 Bytes: 3
  %loadMem_419ecb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ecb = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ecb)
  store %struct.Memory* %call_419ecb, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 419ece	 Bytes: 3
  %loadMem_419ece = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ece = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ece)
  store %struct.Memory* %call_419ece, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 419ed1	 Bytes: 3
  %loadMem_419ed1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ed1 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ed1)
  store %struct.Memory* %call_419ed1, %struct.Memory** %MEMORY

  ; Code: callq .XRate	 RIP: 419ed4	 Bytes: 5
  %loadMem1_419ed4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_419ed4 = call %struct.Memory* @routine_callq_.XRate(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_419ed4, i64 -3924, i64 5, i64 5)
  store %struct.Memory* %call1_419ed4, %struct.Memory** %MEMORY

  %loadMem2_419ed4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_419ed4 = load i64, i64* %3
  %call2_419ed4 = call %struct.Memory* @sub_418f80.XRate(%struct.State* %0, i64  %loadPC_419ed4, %struct.Memory* %loadMem2_419ed4)
  store %struct.Memory* %call2_419ed4, %struct.Memory** %MEMORY

  ; Code: addsd -0x30(%rbp), %xmm0	 RIP: 419ed9	 Bytes: 5
  %loadMem_419ed9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ed9 = call %struct.Memory* @routine_addsd_MINUS0x30__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ed9)
  store %struct.Memory* %call_419ed9, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x30(%rbp)	 RIP: 419ede	 Bytes: 5
  %loadMem_419ede = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ede = call %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ede)
  store %struct.Memory* %call_419ede, %struct.Memory** %MEMORY

  ; Code: .L_419ee3:	 RIP: 419ee3	 Bytes: 0
  br label %block_.L_419ee3
block_.L_419ee3:

  ; Code: jmpq .L_419ee8	 RIP: 419ee3	 Bytes: 5
  %loadMem_419ee3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ee3 = call %struct.Memory* @routine_jmpq_.L_419ee8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ee3, i64 5, i64 5)
  store %struct.Memory* %call_419ee3, %struct.Memory** %MEMORY

  br label %block_.L_419ee8

  ; Code: .L_419ee8:	 RIP: 419ee8	 Bytes: 0
block_.L_419ee8:

  ; Code: movl -0x20(%rbp), %eax	 RIP: 419ee8	 Bytes: 3
  %loadMem_419ee8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ee8 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ee8)
  store %struct.Memory* %call_419ee8, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 419eeb	 Bytes: 3
  %loadMem_419eeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419eeb = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419eeb)
  store %struct.Memory* %call_419eeb, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 419eee	 Bytes: 3
  %loadMem_419eee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419eee = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419eee)
  store %struct.Memory* %call_419eee, %struct.Memory** %MEMORY

  ; Code: jmpq .L_419df4	 RIP: 419ef1	 Bytes: 5
  %loadMem_419ef1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ef1 = call %struct.Memory* @routine_jmpq_.L_419df4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ef1, i64 -253, i64 5)
  store %struct.Memory* %call_419ef1, %struct.Memory** %MEMORY

  br label %block_.L_419df4

  ; Code: .L_419ef6:	 RIP: 419ef6	 Bytes: 0
block_.L_419ef6:

  ; Code: jmpq .L_419efb	 RIP: 419ef6	 Bytes: 5
  %loadMem_419ef6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ef6 = call %struct.Memory* @routine_jmpq_.L_419efb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ef6, i64 5, i64 5)
  store %struct.Memory* %call_419ef6, %struct.Memory** %MEMORY

  br label %block_.L_419efb

  ; Code: .L_419efb:	 RIP: 419efb	 Bytes: 0
block_.L_419efb:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 419efb	 Bytes: 3
  %loadMem_419efb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419efb = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419efb)
  store %struct.Memory* %call_419efb, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 419efe	 Bytes: 3
  %loadMem_419efe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419efe = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419efe)
  store %struct.Memory* %call_419efe, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 419f01	 Bytes: 3
  %loadMem_419f01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419f01 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419f01)
  store %struct.Memory* %call_419f01, %struct.Memory** %MEMORY

  ; Code: jmpq .L_419de3	 RIP: 419f04	 Bytes: 5
  %loadMem_419f04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419f04 = call %struct.Memory* @routine_jmpq_.L_419de3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419f04, i64 -289, i64 5)
  store %struct.Memory* %call_419f04, %struct.Memory** %MEMORY

  br label %block_.L_419de3

  ; Code: .L_419f09:	 RIP: 419f09	 Bytes: 0
block_.L_419f09:

  ; Code: movl $0x0, -0x24(%rbp)	 RIP: 419f09	 Bytes: 7
  %loadMem_419f09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419f09 = call %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419f09)
  store %struct.Memory* %call_419f09, %struct.Memory** %MEMORY

  ; Code: .L_419f10:	 RIP: 419f10	 Bytes: 0
  br label %block_.L_419f10
block_.L_419f10:

  ; Code: cmpl $0xa, -0x24(%rbp)	 RIP: 419f10	 Bytes: 4
  %loadMem_419f10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419f10 = call %struct.Memory* @routine_cmpl__0xa__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419f10)
  store %struct.Memory* %call_419f10, %struct.Memory** %MEMORY

  ; Code: jge .L_41a030	 RIP: 419f14	 Bytes: 6
  %loadMem_419f14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419f14 = call %struct.Memory* @routine_jge_.L_41a030(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419f14, i8* %BRANCH_TAKEN, i64 284, i64 6, i64 6)
  store %struct.Memory* %call_419f14, %struct.Memory** %MEMORY

  %loadBr_419f14 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419f14 = icmp eq i8 %loadBr_419f14, 1
  br i1 %cmpBr_419f14, label %block_.L_41a030, label %block_419f1a

block_419f1a:
  ; Code: movl $0x0, -0x20(%rbp)	 RIP: 419f1a	 Bytes: 7
  %loadMem_419f1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419f1a = call %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419f1a)
  store %struct.Memory* %call_419f1a, %struct.Memory** %MEMORY

  ; Code: .L_419f21:	 RIP: 419f21	 Bytes: 0
  br label %block_.L_419f21
block_.L_419f21:

  ; Code: cmpl $0x5, -0x20(%rbp)	 RIP: 419f21	 Bytes: 4
  %loadMem_419f21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419f21 = call %struct.Memory* @routine_cmpl__0x5__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419f21)
  store %struct.Memory* %call_419f21, %struct.Memory** %MEMORY

  ; Code: jge .L_41a01d	 RIP: 419f25	 Bytes: 6
  %loadMem_419f25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419f25 = call %struct.Memory* @routine_jge_.L_41a01d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419f25, i8* %BRANCH_TAKEN, i64 248, i64 6, i64 6)
  store %struct.Memory* %call_419f25, %struct.Memory** %MEMORY

  %loadBr_419f25 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419f25 = icmp eq i8 %loadBr_419f25, 1
  br i1 %cmpBr_419f25, label %block_.L_41a01d, label %block_419f2b

block_419f2b:
  ; Code: movq 0x6cb900, %rax	 RIP: 419f2b	 Bytes: 8
  %loadMem_419f2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419f2b = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419f2b)
  store %struct.Memory* %call_419f2b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x18(%rax)	 RIP: 419f33	 Bytes: 4
  %loadMem_419f33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419f33 = call %struct.Memory* @routine_cmpl__0x2__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419f33)
  store %struct.Memory* %call_419f33, %struct.Memory** %MEMORY

  ; Code: jne .L_419fa6	 RIP: 419f37	 Bytes: 6
  %loadMem_419f37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419f37 = call %struct.Memory* @routine_jne_.L_419fa6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419f37, i8* %BRANCH_TAKEN, i64 111, i64 6, i64 6)
  store %struct.Memory* %call_419f37, %struct.Memory** %MEMORY

  %loadBr_419f37 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419f37 = icmp eq i8 %loadBr_419f37, 1
  br i1 %cmpBr_419f37, label %block_.L_419fa6, label %block_419f3d

block_419f3d:
  ; Code: movq $0x4b62b0, %rax	 RIP: 419f3d	 Bytes: 10
  %loadMem_419f3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419f3d = call %struct.Memory* @routine_movq__0x4b62b0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419f3d)
  store %struct.Memory* %call_419f3d, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 419f47	 Bytes: 4
  %loadMem_419f47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419f47 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419f47)
  store %struct.Memory* %call_419f47, %struct.Memory** %MEMORY

  ; Code: addq $0x1660, %rcx	 RIP: 419f4b	 Bytes: 7
  %loadMem_419f4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419f4b = call %struct.Memory* @routine_addq__0x1660___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419f4b)
  store %struct.Memory* %call_419f4b, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 419f52	 Bytes: 4
  %loadMem_419f52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419f52 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419f52)
  store %struct.Memory* %call_419f52, %struct.Memory** %MEMORY

  ; Code: imulq $0x50, %rdx, %rdx	 RIP: 419f56	 Bytes: 4
  %loadMem_419f56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419f56 = call %struct.Memory* @routine_imulq__0x50___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419f56)
  store %struct.Memory* %call_419f56, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 419f5a	 Bytes: 3
  %loadMem_419f5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419f5a = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419f5a)
  store %struct.Memory* %call_419f5a, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 419f5d	 Bytes: 4
  %loadMem_419f5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419f5d = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419f5d)
  store %struct.Memory* %call_419f5d, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 419f61	 Bytes: 4
  %loadMem_419f61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419f61 = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419f61)
  store %struct.Memory* %call_419f61, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 419f65	 Bytes: 3
  %loadMem_419f65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419f65 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419f65)
  store %struct.Memory* %call_419f65, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 419f68	 Bytes: 4
  %loadMem_419f68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419f68 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419f68)
  store %struct.Memory* %call_419f68, %struct.Memory** %MEMORY

  ; Code: imulq $0x140, %rdx, %rdx	 RIP: 419f6c	 Bytes: 7
  %loadMem_419f6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419f6c = call %struct.Memory* @routine_imulq__0x140___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419f6c)
  store %struct.Memory* %call_419f6c, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 419f73	 Bytes: 3
  %loadMem_419f73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419f73 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419f73)
  store %struct.Memory* %call_419f73, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 419f76	 Bytes: 4
  %loadMem_419f76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419f76 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419f76)
  store %struct.Memory* %call_419f76, %struct.Memory** %MEMORY

  ; Code: imulq $0x28, %rdx, %rdx	 RIP: 419f7a	 Bytes: 4
  %loadMem_419f7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419f7a = call %struct.Memory* @routine_imulq__0x28___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419f7a)
  store %struct.Memory* %call_419f7a, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 419f7e	 Bytes: 3
  %loadMem_419f7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419f7e = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419f7e)
  store %struct.Memory* %call_419f7e, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 419f81	 Bytes: 4
  %loadMem_419f81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419f81 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419f81)
  store %struct.Memory* %call_419f81, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 419f85	 Bytes: 4
  %loadMem_419f85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419f85 = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419f85)
  store %struct.Memory* %call_419f85, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 419f89	 Bytes: 3
  %loadMem_419f89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419f89 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419f89)
  store %struct.Memory* %call_419f89, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 419f8c	 Bytes: 3
  %loadMem_419f8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419f8c = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419f8c)
  store %struct.Memory* %call_419f8c, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 419f8f	 Bytes: 3
  %loadMem_419f8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419f8f = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419f8f)
  store %struct.Memory* %call_419f8f, %struct.Memory** %MEMORY

  ; Code: callq .XRate	 RIP: 419f92	 Bytes: 5
  %loadMem1_419f92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_419f92 = call %struct.Memory* @routine_callq_.XRate(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_419f92, i64 -4114, i64 5, i64 5)
  store %struct.Memory* %call1_419f92, %struct.Memory** %MEMORY

  %loadMem2_419f92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_419f92 = load i64, i64* %3
  %call2_419f92 = call %struct.Memory* @sub_418f80.XRate(%struct.State* %0, i64  %loadPC_419f92, %struct.Memory* %loadMem2_419f92)
  store %struct.Memory* %call2_419f92, %struct.Memory** %MEMORY

  ; Code: addsd -0x30(%rbp), %xmm0	 RIP: 419f97	 Bytes: 5
  %loadMem_419f97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419f97 = call %struct.Memory* @routine_addsd_MINUS0x30__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419f97)
  store %struct.Memory* %call_419f97, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x30(%rbp)	 RIP: 419f9c	 Bytes: 5
  %loadMem_419f9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419f9c = call %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419f9c)
  store %struct.Memory* %call_419f9c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41a00a	 RIP: 419fa1	 Bytes: 5
  %loadMem_419fa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419fa1 = call %struct.Memory* @routine_jmpq_.L_41a00a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419fa1, i64 105, i64 5)
  store %struct.Memory* %call_419fa1, %struct.Memory** %MEMORY

  br label %block_.L_41a00a

  ; Code: .L_419fa6:	 RIP: 419fa6	 Bytes: 0
block_.L_419fa6:

  ; Code: movq $0x4b63f0, %rax	 RIP: 419fa6	 Bytes: 10
  %loadMem_419fa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419fa6 = call %struct.Memory* @routine_movq__0x4b63f0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419fa6)
  store %struct.Memory* %call_419fa6, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 419fb0	 Bytes: 4
  %loadMem_419fb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419fb0 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419fb0)
  store %struct.Memory* %call_419fb0, %struct.Memory** %MEMORY

  ; Code: addq $0x1660, %rcx	 RIP: 419fb4	 Bytes: 7
  %loadMem_419fb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419fb4 = call %struct.Memory* @routine_addq__0x1660___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419fb4)
  store %struct.Memory* %call_419fb4, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 419fbb	 Bytes: 4
  %loadMem_419fbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419fbb = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419fbb)
  store %struct.Memory* %call_419fbb, %struct.Memory** %MEMORY

  ; Code: imulq $0x50, %rdx, %rdx	 RIP: 419fbf	 Bytes: 4
  %loadMem_419fbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419fbf = call %struct.Memory* @routine_imulq__0x50___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419fbf)
  store %struct.Memory* %call_419fbf, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 419fc3	 Bytes: 3
  %loadMem_419fc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419fc3 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419fc3)
  store %struct.Memory* %call_419fc3, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 419fc6	 Bytes: 4
  %loadMem_419fc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419fc6 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419fc6)
  store %struct.Memory* %call_419fc6, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 419fca	 Bytes: 4
  %loadMem_419fca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419fca = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419fca)
  store %struct.Memory* %call_419fca, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 419fce	 Bytes: 3
  %loadMem_419fce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419fce = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419fce)
  store %struct.Memory* %call_419fce, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 419fd1	 Bytes: 4
  %loadMem_419fd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419fd1 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419fd1)
  store %struct.Memory* %call_419fd1, %struct.Memory** %MEMORY

  ; Code: imulq $0x140, %rdx, %rdx	 RIP: 419fd5	 Bytes: 7
  %loadMem_419fd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419fd5 = call %struct.Memory* @routine_imulq__0x140___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419fd5)
  store %struct.Memory* %call_419fd5, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 419fdc	 Bytes: 3
  %loadMem_419fdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419fdc = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419fdc)
  store %struct.Memory* %call_419fdc, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 419fdf	 Bytes: 4
  %loadMem_419fdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419fdf = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419fdf)
  store %struct.Memory* %call_419fdf, %struct.Memory** %MEMORY

  ; Code: imulq $0x28, %rdx, %rdx	 RIP: 419fe3	 Bytes: 4
  %loadMem_419fe3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419fe3 = call %struct.Memory* @routine_imulq__0x28___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419fe3)
  store %struct.Memory* %call_419fe3, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 419fe7	 Bytes: 3
  %loadMem_419fe7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419fe7 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419fe7)
  store %struct.Memory* %call_419fe7, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 419fea	 Bytes: 4
  %loadMem_419fea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419fea = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419fea)
  store %struct.Memory* %call_419fea, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 419fee	 Bytes: 4
  %loadMem_419fee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419fee = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419fee)
  store %struct.Memory* %call_419fee, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 419ff2	 Bytes: 3
  %loadMem_419ff2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ff2 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ff2)
  store %struct.Memory* %call_419ff2, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 419ff5	 Bytes: 3
  %loadMem_419ff5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ff5 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ff5)
  store %struct.Memory* %call_419ff5, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 419ff8	 Bytes: 3
  %loadMem_419ff8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_419ff8 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_419ff8)
  store %struct.Memory* %call_419ff8, %struct.Memory** %MEMORY

  ; Code: callq .XRate	 RIP: 419ffb	 Bytes: 5
  %loadMem1_419ffb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_419ffb = call %struct.Memory* @routine_callq_.XRate(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_419ffb, i64 -4219, i64 5, i64 5)
  store %struct.Memory* %call1_419ffb, %struct.Memory** %MEMORY

  %loadMem2_419ffb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_419ffb = load i64, i64* %3
  %call2_419ffb = call %struct.Memory* @sub_418f80.XRate(%struct.State* %0, i64  %loadPC_419ffb, %struct.Memory* %loadMem2_419ffb)
  store %struct.Memory* %call2_419ffb, %struct.Memory** %MEMORY

  ; Code: addsd -0x30(%rbp), %xmm0	 RIP: 41a000	 Bytes: 5
  %loadMem_41a000 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a000 = call %struct.Memory* @routine_addsd_MINUS0x30__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a000)
  store %struct.Memory* %call_41a000, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x30(%rbp)	 RIP: 41a005	 Bytes: 5
  %loadMem_41a005 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a005 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a005)
  store %struct.Memory* %call_41a005, %struct.Memory** %MEMORY

  ; Code: .L_41a00a:	 RIP: 41a00a	 Bytes: 0
  br label %block_.L_41a00a
block_.L_41a00a:

  ; Code: jmpq .L_41a00f	 RIP: 41a00a	 Bytes: 5
  %loadMem_41a00a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a00a = call %struct.Memory* @routine_jmpq_.L_41a00f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a00a, i64 5, i64 5)
  store %struct.Memory* %call_41a00a, %struct.Memory** %MEMORY

  br label %block_.L_41a00f

  ; Code: .L_41a00f:	 RIP: 41a00f	 Bytes: 0
block_.L_41a00f:

  ; Code: movl -0x20(%rbp), %eax	 RIP: 41a00f	 Bytes: 3
  %loadMem_41a00f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a00f = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a00f)
  store %struct.Memory* %call_41a00f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41a012	 Bytes: 3
  %loadMem_41a012 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a012 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a012)
  store %struct.Memory* %call_41a012, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 41a015	 Bytes: 3
  %loadMem_41a015 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a015 = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a015)
  store %struct.Memory* %call_41a015, %struct.Memory** %MEMORY

  ; Code: jmpq .L_419f21	 RIP: 41a018	 Bytes: 5
  %loadMem_41a018 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a018 = call %struct.Memory* @routine_jmpq_.L_419f21(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a018, i64 -247, i64 5)
  store %struct.Memory* %call_41a018, %struct.Memory** %MEMORY

  br label %block_.L_419f21

  ; Code: .L_41a01d:	 RIP: 41a01d	 Bytes: 0
block_.L_41a01d:

  ; Code: jmpq .L_41a022	 RIP: 41a01d	 Bytes: 5
  %loadMem_41a01d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a01d = call %struct.Memory* @routine_jmpq_.L_41a022(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a01d, i64 5, i64 5)
  store %struct.Memory* %call_41a01d, %struct.Memory** %MEMORY

  br label %block_.L_41a022

  ; Code: .L_41a022:	 RIP: 41a022	 Bytes: 0
block_.L_41a022:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 41a022	 Bytes: 3
  %loadMem_41a022 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a022 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a022)
  store %struct.Memory* %call_41a022, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41a025	 Bytes: 3
  %loadMem_41a025 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a025 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a025)
  store %struct.Memory* %call_41a025, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 41a028	 Bytes: 3
  %loadMem_41a028 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a028 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a028)
  store %struct.Memory* %call_41a028, %struct.Memory** %MEMORY

  ; Code: jmpq .L_419f10	 RIP: 41a02b	 Bytes: 5
  %loadMem_41a02b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a02b = call %struct.Memory* @routine_jmpq_.L_419f10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a02b, i64 -283, i64 5)
  store %struct.Memory* %call_41a02b, %struct.Memory** %MEMORY

  br label %block_.L_419f10

  ; Code: .L_41a030:	 RIP: 41a030	 Bytes: 0
block_.L_41a030:

  ; Code: movl $0x0, -0x24(%rbp)	 RIP: 41a030	 Bytes: 7
  %loadMem_41a030 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a030 = call %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a030)
  store %struct.Memory* %call_41a030, %struct.Memory** %MEMORY

  ; Code: .L_41a037:	 RIP: 41a037	 Bytes: 0
  br label %block_.L_41a037
block_.L_41a037:

  ; Code: cmpl $0xa, -0x24(%rbp)	 RIP: 41a037	 Bytes: 4
  %loadMem_41a037 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a037 = call %struct.Memory* @routine_cmpl__0xa__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a037)
  store %struct.Memory* %call_41a037, %struct.Memory** %MEMORY

  ; Code: jge .L_41a157	 RIP: 41a03b	 Bytes: 6
  %loadMem_41a03b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a03b = call %struct.Memory* @routine_jge_.L_41a157(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a03b, i8* %BRANCH_TAKEN, i64 284, i64 6, i64 6)
  store %struct.Memory* %call_41a03b, %struct.Memory** %MEMORY

  %loadBr_41a03b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a03b = icmp eq i8 %loadBr_41a03b, 1
  br i1 %cmpBr_41a03b, label %block_.L_41a157, label %block_41a041

block_41a041:
  ; Code: movl $0x0, -0x20(%rbp)	 RIP: 41a041	 Bytes: 7
  %loadMem_41a041 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a041 = call %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a041)
  store %struct.Memory* %call_41a041, %struct.Memory** %MEMORY

  ; Code: .L_41a048:	 RIP: 41a048	 Bytes: 0
  br label %block_.L_41a048
block_.L_41a048:

  ; Code: cmpl $0x5, -0x20(%rbp)	 RIP: 41a048	 Bytes: 4
  %loadMem_41a048 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a048 = call %struct.Memory* @routine_cmpl__0x5__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a048)
  store %struct.Memory* %call_41a048, %struct.Memory** %MEMORY

  ; Code: jge .L_41a144	 RIP: 41a04c	 Bytes: 6
  %loadMem_41a04c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a04c = call %struct.Memory* @routine_jge_.L_41a144(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a04c, i8* %BRANCH_TAKEN, i64 248, i64 6, i64 6)
  store %struct.Memory* %call_41a04c, %struct.Memory** %MEMORY

  %loadBr_41a04c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a04c = icmp eq i8 %loadBr_41a04c, 1
  br i1 %cmpBr_41a04c, label %block_.L_41a144, label %block_41a052

block_41a052:
  ; Code: movq 0x6cb900, %rax	 RIP: 41a052	 Bytes: 8
  %loadMem_41a052 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a052 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a052)
  store %struct.Memory* %call_41a052, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x18(%rax)	 RIP: 41a05a	 Bytes: 4
  %loadMem_41a05a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a05a = call %struct.Memory* @routine_cmpl__0x2__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a05a)
  store %struct.Memory* %call_41a05a, %struct.Memory** %MEMORY

  ; Code: jne .L_41a0cd	 RIP: 41a05e	 Bytes: 6
  %loadMem_41a05e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a05e = call %struct.Memory* @routine_jne_.L_41a0cd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a05e, i8* %BRANCH_TAKEN, i64 111, i64 6, i64 6)
  store %struct.Memory* %call_41a05e, %struct.Memory** %MEMORY

  %loadBr_41a05e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a05e = icmp eq i8 %loadBr_41a05e, 1
  br i1 %cmpBr_41a05e, label %block_.L_41a0cd, label %block_41a064

block_41a064:
  ; Code: movq $0x4b67b0, %rax	 RIP: 41a064	 Bytes: 10
  %loadMem_41a064 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a064 = call %struct.Memory* @routine_movq__0x4b67b0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a064)
  store %struct.Memory* %call_41a064, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 41a06e	 Bytes: 4
  %loadMem_41a06e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a06e = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a06e)
  store %struct.Memory* %call_41a06e, %struct.Memory** %MEMORY

  ; Code: addq $0x1980, %rcx	 RIP: 41a072	 Bytes: 7
  %loadMem_41a072 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a072 = call %struct.Memory* @routine_addq__0x1980___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a072)
  store %struct.Memory* %call_41a072, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 41a079	 Bytes: 4
  %loadMem_41a079 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a079 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a079)
  store %struct.Memory* %call_41a079, %struct.Memory** %MEMORY

  ; Code: imulq $0x50, %rdx, %rdx	 RIP: 41a07d	 Bytes: 4
  %loadMem_41a07d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a07d = call %struct.Memory* @routine_imulq__0x50___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a07d)
  store %struct.Memory* %call_41a07d, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 41a081	 Bytes: 3
  %loadMem_41a081 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a081 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a081)
  store %struct.Memory* %call_41a081, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 41a084	 Bytes: 4
  %loadMem_41a084 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a084 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a084)
  store %struct.Memory* %call_41a084, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 41a088	 Bytes: 4
  %loadMem_41a088 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a088 = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a088)
  store %struct.Memory* %call_41a088, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 41a08c	 Bytes: 3
  %loadMem_41a08c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a08c = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a08c)
  store %struct.Memory* %call_41a08c, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 41a08f	 Bytes: 4
  %loadMem_41a08f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a08f = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a08f)
  store %struct.Memory* %call_41a08f, %struct.Memory** %MEMORY

  ; Code: imulq $0x140, %rdx, %rdx	 RIP: 41a093	 Bytes: 7
  %loadMem_41a093 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a093 = call %struct.Memory* @routine_imulq__0x140___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a093)
  store %struct.Memory* %call_41a093, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41a09a	 Bytes: 3
  %loadMem_41a09a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a09a = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a09a)
  store %struct.Memory* %call_41a09a, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 41a09d	 Bytes: 4
  %loadMem_41a09d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a09d = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a09d)
  store %struct.Memory* %call_41a09d, %struct.Memory** %MEMORY

  ; Code: imulq $0x28, %rdx, %rdx	 RIP: 41a0a1	 Bytes: 4
  %loadMem_41a0a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a0a1 = call %struct.Memory* @routine_imulq__0x28___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a0a1)
  store %struct.Memory* %call_41a0a1, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41a0a5	 Bytes: 3
  %loadMem_41a0a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a0a5 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a0a5)
  store %struct.Memory* %call_41a0a5, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 41a0a8	 Bytes: 4
  %loadMem_41a0a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a0a8 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a0a8)
  store %struct.Memory* %call_41a0a8, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 41a0ac	 Bytes: 4
  %loadMem_41a0ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a0ac = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a0ac)
  store %struct.Memory* %call_41a0ac, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41a0b0	 Bytes: 3
  %loadMem_41a0b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a0b0 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a0b0)
  store %struct.Memory* %call_41a0b0, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 41a0b3	 Bytes: 3
  %loadMem_41a0b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a0b3 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a0b3)
  store %struct.Memory* %call_41a0b3, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 41a0b6	 Bytes: 3
  %loadMem_41a0b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a0b6 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a0b6)
  store %struct.Memory* %call_41a0b6, %struct.Memory** %MEMORY

  ; Code: callq .XRate	 RIP: 41a0b9	 Bytes: 5
  %loadMem1_41a0b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41a0b9 = call %struct.Memory* @routine_callq_.XRate(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41a0b9, i64 -4409, i64 5, i64 5)
  store %struct.Memory* %call1_41a0b9, %struct.Memory** %MEMORY

  %loadMem2_41a0b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41a0b9 = load i64, i64* %3
  %call2_41a0b9 = call %struct.Memory* @sub_418f80.XRate(%struct.State* %0, i64  %loadPC_41a0b9, %struct.Memory* %loadMem2_41a0b9)
  store %struct.Memory* %call2_41a0b9, %struct.Memory** %MEMORY

  ; Code: addsd -0x30(%rbp), %xmm0	 RIP: 41a0be	 Bytes: 5
  %loadMem_41a0be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a0be = call %struct.Memory* @routine_addsd_MINUS0x30__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a0be)
  store %struct.Memory* %call_41a0be, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x30(%rbp)	 RIP: 41a0c3	 Bytes: 5
  %loadMem_41a0c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a0c3 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a0c3)
  store %struct.Memory* %call_41a0c3, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41a131	 RIP: 41a0c8	 Bytes: 5
  %loadMem_41a0c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a0c8 = call %struct.Memory* @routine_jmpq_.L_41a131(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a0c8, i64 105, i64 5)
  store %struct.Memory* %call_41a0c8, %struct.Memory** %MEMORY

  br label %block_.L_41a131

  ; Code: .L_41a0cd:	 RIP: 41a0cd	 Bytes: 0
block_.L_41a0cd:

  ; Code: movq $0x4b68f0, %rax	 RIP: 41a0cd	 Bytes: 10
  %loadMem_41a0cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a0cd = call %struct.Memory* @routine_movq__0x4b68f0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a0cd)
  store %struct.Memory* %call_41a0cd, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 41a0d7	 Bytes: 4
  %loadMem_41a0d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a0d7 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a0d7)
  store %struct.Memory* %call_41a0d7, %struct.Memory** %MEMORY

  ; Code: addq $0x1980, %rcx	 RIP: 41a0db	 Bytes: 7
  %loadMem_41a0db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a0db = call %struct.Memory* @routine_addq__0x1980___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a0db)
  store %struct.Memory* %call_41a0db, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 41a0e2	 Bytes: 4
  %loadMem_41a0e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a0e2 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a0e2)
  store %struct.Memory* %call_41a0e2, %struct.Memory** %MEMORY

  ; Code: imulq $0x50, %rdx, %rdx	 RIP: 41a0e6	 Bytes: 4
  %loadMem_41a0e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a0e6 = call %struct.Memory* @routine_imulq__0x50___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a0e6)
  store %struct.Memory* %call_41a0e6, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 41a0ea	 Bytes: 3
  %loadMem_41a0ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a0ea = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a0ea)
  store %struct.Memory* %call_41a0ea, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 41a0ed	 Bytes: 4
  %loadMem_41a0ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a0ed = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a0ed)
  store %struct.Memory* %call_41a0ed, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 41a0f1	 Bytes: 4
  %loadMem_41a0f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a0f1 = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a0f1)
  store %struct.Memory* %call_41a0f1, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 41a0f5	 Bytes: 3
  %loadMem_41a0f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a0f5 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a0f5)
  store %struct.Memory* %call_41a0f5, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 41a0f8	 Bytes: 4
  %loadMem_41a0f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a0f8 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a0f8)
  store %struct.Memory* %call_41a0f8, %struct.Memory** %MEMORY

  ; Code: imulq $0x140, %rdx, %rdx	 RIP: 41a0fc	 Bytes: 7
  %loadMem_41a0fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a0fc = call %struct.Memory* @routine_imulq__0x140___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a0fc)
  store %struct.Memory* %call_41a0fc, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41a103	 Bytes: 3
  %loadMem_41a103 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a103 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a103)
  store %struct.Memory* %call_41a103, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 41a106	 Bytes: 4
  %loadMem_41a106 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a106 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a106)
  store %struct.Memory* %call_41a106, %struct.Memory** %MEMORY

  ; Code: imulq $0x28, %rdx, %rdx	 RIP: 41a10a	 Bytes: 4
  %loadMem_41a10a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a10a = call %struct.Memory* @routine_imulq__0x28___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a10a)
  store %struct.Memory* %call_41a10a, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41a10e	 Bytes: 3
  %loadMem_41a10e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a10e = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a10e)
  store %struct.Memory* %call_41a10e, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 41a111	 Bytes: 4
  %loadMem_41a111 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a111 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a111)
  store %struct.Memory* %call_41a111, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 41a115	 Bytes: 4
  %loadMem_41a115 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a115 = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a115)
  store %struct.Memory* %call_41a115, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41a119	 Bytes: 3
  %loadMem_41a119 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a119 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a119)
  store %struct.Memory* %call_41a119, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 41a11c	 Bytes: 3
  %loadMem_41a11c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a11c = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a11c)
  store %struct.Memory* %call_41a11c, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 41a11f	 Bytes: 3
  %loadMem_41a11f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a11f = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a11f)
  store %struct.Memory* %call_41a11f, %struct.Memory** %MEMORY

  ; Code: callq .XRate	 RIP: 41a122	 Bytes: 5
  %loadMem1_41a122 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41a122 = call %struct.Memory* @routine_callq_.XRate(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41a122, i64 -4514, i64 5, i64 5)
  store %struct.Memory* %call1_41a122, %struct.Memory** %MEMORY

  %loadMem2_41a122 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41a122 = load i64, i64* %3
  %call2_41a122 = call %struct.Memory* @sub_418f80.XRate(%struct.State* %0, i64  %loadPC_41a122, %struct.Memory* %loadMem2_41a122)
  store %struct.Memory* %call2_41a122, %struct.Memory** %MEMORY

  ; Code: addsd -0x30(%rbp), %xmm0	 RIP: 41a127	 Bytes: 5
  %loadMem_41a127 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a127 = call %struct.Memory* @routine_addsd_MINUS0x30__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a127)
  store %struct.Memory* %call_41a127, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x30(%rbp)	 RIP: 41a12c	 Bytes: 5
  %loadMem_41a12c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a12c = call %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a12c)
  store %struct.Memory* %call_41a12c, %struct.Memory** %MEMORY

  ; Code: .L_41a131:	 RIP: 41a131	 Bytes: 0
  br label %block_.L_41a131
block_.L_41a131:

  ; Code: jmpq .L_41a136	 RIP: 41a131	 Bytes: 5
  %loadMem_41a131 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a131 = call %struct.Memory* @routine_jmpq_.L_41a136(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a131, i64 5, i64 5)
  store %struct.Memory* %call_41a131, %struct.Memory** %MEMORY

  br label %block_.L_41a136

  ; Code: .L_41a136:	 RIP: 41a136	 Bytes: 0
block_.L_41a136:

  ; Code: movl -0x20(%rbp), %eax	 RIP: 41a136	 Bytes: 3
  %loadMem_41a136 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a136 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a136)
  store %struct.Memory* %call_41a136, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41a139	 Bytes: 3
  %loadMem_41a139 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a139 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a139)
  store %struct.Memory* %call_41a139, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 41a13c	 Bytes: 3
  %loadMem_41a13c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a13c = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a13c)
  store %struct.Memory* %call_41a13c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41a048	 RIP: 41a13f	 Bytes: 5
  %loadMem_41a13f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a13f = call %struct.Memory* @routine_jmpq_.L_41a048(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a13f, i64 -247, i64 5)
  store %struct.Memory* %call_41a13f, %struct.Memory** %MEMORY

  br label %block_.L_41a048

  ; Code: .L_41a144:	 RIP: 41a144	 Bytes: 0
block_.L_41a144:

  ; Code: jmpq .L_41a149	 RIP: 41a144	 Bytes: 5
  %loadMem_41a144 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a144 = call %struct.Memory* @routine_jmpq_.L_41a149(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a144, i64 5, i64 5)
  store %struct.Memory* %call_41a144, %struct.Memory** %MEMORY

  br label %block_.L_41a149

  ; Code: .L_41a149:	 RIP: 41a149	 Bytes: 0
block_.L_41a149:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 41a149	 Bytes: 3
  %loadMem_41a149 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a149 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a149)
  store %struct.Memory* %call_41a149, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41a14c	 Bytes: 3
  %loadMem_41a14c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a14c = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a14c)
  store %struct.Memory* %call_41a14c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 41a14f	 Bytes: 3
  %loadMem_41a14f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a14f = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a14f)
  store %struct.Memory* %call_41a14f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41a037	 RIP: 41a152	 Bytes: 5
  %loadMem_41a152 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a152 = call %struct.Memory* @routine_jmpq_.L_41a037(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a152, i64 -283, i64 5)
  store %struct.Memory* %call_41a152, %struct.Memory** %MEMORY

  br label %block_.L_41a037

  ; Code: .L_41a157:	 RIP: 41a157	 Bytes: 0
block_.L_41a157:

  ; Code: movl $0x0, -0x24(%rbp)	 RIP: 41a157	 Bytes: 7
  %loadMem_41a157 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a157 = call %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a157)
  store %struct.Memory* %call_41a157, %struct.Memory** %MEMORY

  ; Code: .L_41a15e:	 RIP: 41a15e	 Bytes: 0
  br label %block_.L_41a15e
block_.L_41a15e:

  ; Code: cmpl $0xa, -0x24(%rbp)	 RIP: 41a15e	 Bytes: 4
  %loadMem_41a15e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a15e = call %struct.Memory* @routine_cmpl__0xa__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a15e)
  store %struct.Memory* %call_41a15e, %struct.Memory** %MEMORY

  ; Code: jge .L_41a284	 RIP: 41a162	 Bytes: 6
  %loadMem_41a162 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a162 = call %struct.Memory* @routine_jge_.L_41a284(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a162, i8* %BRANCH_TAKEN, i64 290, i64 6, i64 6)
  store %struct.Memory* %call_41a162, %struct.Memory** %MEMORY

  %loadBr_41a162 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a162 = icmp eq i8 %loadBr_41a162, 1
  br i1 %cmpBr_41a162, label %block_.L_41a284, label %block_41a168

block_41a168:
  ; Code: movl $0x0, -0x20(%rbp)	 RIP: 41a168	 Bytes: 7
  %loadMem_41a168 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a168 = call %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a168)
  store %struct.Memory* %call_41a168, %struct.Memory** %MEMORY

  ; Code: .L_41a16f:	 RIP: 41a16f	 Bytes: 0
  br label %block_.L_41a16f
block_.L_41a16f:

  ; Code: cmpl $0xf, -0x20(%rbp)	 RIP: 41a16f	 Bytes: 4
  %loadMem_41a16f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a16f = call %struct.Memory* @routine_cmpl__0xf__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a16f)
  store %struct.Memory* %call_41a16f, %struct.Memory** %MEMORY

  ; Code: jge .L_41a271	 RIP: 41a173	 Bytes: 6
  %loadMem_41a173 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a173 = call %struct.Memory* @routine_jge_.L_41a271(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a173, i8* %BRANCH_TAKEN, i64 254, i64 6, i64 6)
  store %struct.Memory* %call_41a173, %struct.Memory** %MEMORY

  %loadBr_41a173 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a173 = icmp eq i8 %loadBr_41a173, 1
  br i1 %cmpBr_41a173, label %block_.L_41a271, label %block_41a179

block_41a179:
  ; Code: movq 0x6cb900, %rax	 RIP: 41a179	 Bytes: 8
  %loadMem_41a179 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a179 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a179)
  store %struct.Memory* %call_41a179, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x18(%rax)	 RIP: 41a181	 Bytes: 4
  %loadMem_41a181 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a181 = call %struct.Memory* @routine_cmpl__0x2__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a181)
  store %struct.Memory* %call_41a181, %struct.Memory** %MEMORY

  ; Code: jne .L_41a1f7	 RIP: 41a185	 Bytes: 6
  %loadMem_41a185 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a185 = call %struct.Memory* @routine_jne_.L_41a1f7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a185, i8* %BRANCH_TAKEN, i64 114, i64 6, i64 6)
  store %struct.Memory* %call_41a185, %struct.Memory** %MEMORY

  %loadBr_41a185 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a185 = icmp eq i8 %loadBr_41a185, 1
  br i1 %cmpBr_41a185, label %block_.L_41a1f7, label %block_41a18b

block_41a18b:
  ; Code: movq $0x4b6cb0, %rax	 RIP: 41a18b	 Bytes: 10
  %loadMem_41a18b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a18b = call %struct.Memory* @routine_movq__0x4b6cb0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a18b)
  store %struct.Memory* %call_41a18b, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 41a195	 Bytes: 4
  %loadMem_41a195 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a195 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a195)
  store %struct.Memory* %call_41a195, %struct.Memory** %MEMORY

  ; Code: addq $0x1ca0, %rcx	 RIP: 41a199	 Bytes: 7
  %loadMem_41a199 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a199 = call %struct.Memory* @routine_addq__0x1ca0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a199)
  store %struct.Memory* %call_41a199, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 41a1a0	 Bytes: 4
  %loadMem_41a1a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a1a0 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a1a0)
  store %struct.Memory* %call_41a1a0, %struct.Memory** %MEMORY

  ; Code: imulq $0xf0, %rdx, %rdx	 RIP: 41a1a4	 Bytes: 7
  %loadMem_41a1a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a1a4 = call %struct.Memory* @routine_imulq__0xf0___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a1a4)
  store %struct.Memory* %call_41a1a4, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 41a1ab	 Bytes: 3
  %loadMem_41a1ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a1ab = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a1ab)
  store %struct.Memory* %call_41a1ab, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 41a1ae	 Bytes: 4
  %loadMem_41a1ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a1ae = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a1ae)
  store %struct.Memory* %call_41a1ae, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 41a1b2	 Bytes: 4
  %loadMem_41a1b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a1b2 = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a1b2)
  store %struct.Memory* %call_41a1b2, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 41a1b6	 Bytes: 3
  %loadMem_41a1b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a1b6 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a1b6)
  store %struct.Memory* %call_41a1b6, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 41a1b9	 Bytes: 4
  %loadMem_41a1b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a1b9 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a1b9)
  store %struct.Memory* %call_41a1b9, %struct.Memory** %MEMORY

  ; Code: imulq $0x3c0, %rdx, %rdx	 RIP: 41a1bd	 Bytes: 7
  %loadMem_41a1bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a1bd = call %struct.Memory* @routine_imulq__0x3c0___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a1bd)
  store %struct.Memory* %call_41a1bd, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41a1c4	 Bytes: 3
  %loadMem_41a1c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a1c4 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a1c4)
  store %struct.Memory* %call_41a1c4, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 41a1c7	 Bytes: 4
  %loadMem_41a1c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a1c7 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a1c7)
  store %struct.Memory* %call_41a1c7, %struct.Memory** %MEMORY

  ; Code: imulq $0x78, %rdx, %rdx	 RIP: 41a1cb	 Bytes: 4
  %loadMem_41a1cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a1cb = call %struct.Memory* @routine_imulq__0x78___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a1cb)
  store %struct.Memory* %call_41a1cb, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41a1cf	 Bytes: 3
  %loadMem_41a1cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a1cf = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a1cf)
  store %struct.Memory* %call_41a1cf, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 41a1d2	 Bytes: 4
  %loadMem_41a1d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a1d2 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a1d2)
  store %struct.Memory* %call_41a1d2, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 41a1d6	 Bytes: 4
  %loadMem_41a1d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a1d6 = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a1d6)
  store %struct.Memory* %call_41a1d6, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41a1da	 Bytes: 3
  %loadMem_41a1da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a1da = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a1da)
  store %struct.Memory* %call_41a1da, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 41a1dd	 Bytes: 3
  %loadMem_41a1dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a1dd = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a1dd)
  store %struct.Memory* %call_41a1dd, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 41a1e0	 Bytes: 3
  %loadMem_41a1e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a1e0 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a1e0)
  store %struct.Memory* %call_41a1e0, %struct.Memory** %MEMORY

  ; Code: callq .XRate	 RIP: 41a1e3	 Bytes: 5
  %loadMem1_41a1e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41a1e3 = call %struct.Memory* @routine_callq_.XRate(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41a1e3, i64 -4707, i64 5, i64 5)
  store %struct.Memory* %call1_41a1e3, %struct.Memory** %MEMORY

  %loadMem2_41a1e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41a1e3 = load i64, i64* %3
  %call2_41a1e3 = call %struct.Memory* @sub_418f80.XRate(%struct.State* %0, i64  %loadPC_41a1e3, %struct.Memory* %loadMem2_41a1e3)
  store %struct.Memory* %call2_41a1e3, %struct.Memory** %MEMORY

  ; Code: addsd -0x30(%rbp), %xmm0	 RIP: 41a1e8	 Bytes: 5
  %loadMem_41a1e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a1e8 = call %struct.Memory* @routine_addsd_MINUS0x30__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a1e8)
  store %struct.Memory* %call_41a1e8, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x30(%rbp)	 RIP: 41a1ed	 Bytes: 5
  %loadMem_41a1ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a1ed = call %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a1ed)
  store %struct.Memory* %call_41a1ed, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41a25e	 RIP: 41a1f2	 Bytes: 5
  %loadMem_41a1f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a1f2 = call %struct.Memory* @routine_jmpq_.L_41a25e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a1f2, i64 108, i64 5)
  store %struct.Memory* %call_41a1f2, %struct.Memory** %MEMORY

  br label %block_.L_41a25e

  ; Code: .L_41a1f7:	 RIP: 41a1f7	 Bytes: 0
block_.L_41a1f7:

  ; Code: movq $0x4b7070, %rax	 RIP: 41a1f7	 Bytes: 10
  %loadMem_41a1f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a1f7 = call %struct.Memory* @routine_movq__0x4b7070___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a1f7)
  store %struct.Memory* %call_41a1f7, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 41a201	 Bytes: 4
  %loadMem_41a201 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a201 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a201)
  store %struct.Memory* %call_41a201, %struct.Memory** %MEMORY

  ; Code: addq $0x1ca0, %rcx	 RIP: 41a205	 Bytes: 7
  %loadMem_41a205 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a205 = call %struct.Memory* @routine_addq__0x1ca0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a205)
  store %struct.Memory* %call_41a205, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 41a20c	 Bytes: 4
  %loadMem_41a20c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a20c = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a20c)
  store %struct.Memory* %call_41a20c, %struct.Memory** %MEMORY

  ; Code: imulq $0xf0, %rdx, %rdx	 RIP: 41a210	 Bytes: 7
  %loadMem_41a210 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a210 = call %struct.Memory* @routine_imulq__0xf0___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a210)
  store %struct.Memory* %call_41a210, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 41a217	 Bytes: 3
  %loadMem_41a217 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a217 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a217)
  store %struct.Memory* %call_41a217, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 41a21a	 Bytes: 4
  %loadMem_41a21a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a21a = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a21a)
  store %struct.Memory* %call_41a21a, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 41a21e	 Bytes: 4
  %loadMem_41a21e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a21e = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a21e)
  store %struct.Memory* %call_41a21e, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 41a222	 Bytes: 3
  %loadMem_41a222 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a222 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a222)
  store %struct.Memory* %call_41a222, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 41a225	 Bytes: 4
  %loadMem_41a225 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a225 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a225)
  store %struct.Memory* %call_41a225, %struct.Memory** %MEMORY

  ; Code: imulq $0x3c0, %rdx, %rdx	 RIP: 41a229	 Bytes: 7
  %loadMem_41a229 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a229 = call %struct.Memory* @routine_imulq__0x3c0___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a229)
  store %struct.Memory* %call_41a229, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41a230	 Bytes: 3
  %loadMem_41a230 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a230 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a230)
  store %struct.Memory* %call_41a230, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 41a233	 Bytes: 4
  %loadMem_41a233 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a233 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a233)
  store %struct.Memory* %call_41a233, %struct.Memory** %MEMORY

  ; Code: imulq $0x78, %rdx, %rdx	 RIP: 41a237	 Bytes: 4
  %loadMem_41a237 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a237 = call %struct.Memory* @routine_imulq__0x78___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a237)
  store %struct.Memory* %call_41a237, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41a23b	 Bytes: 3
  %loadMem_41a23b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a23b = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a23b)
  store %struct.Memory* %call_41a23b, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 41a23e	 Bytes: 4
  %loadMem_41a23e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a23e = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a23e)
  store %struct.Memory* %call_41a23e, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 41a242	 Bytes: 4
  %loadMem_41a242 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a242 = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a242)
  store %struct.Memory* %call_41a242, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41a246	 Bytes: 3
  %loadMem_41a246 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a246 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a246)
  store %struct.Memory* %call_41a246, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 41a249	 Bytes: 3
  %loadMem_41a249 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a249 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a249)
  store %struct.Memory* %call_41a249, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 41a24c	 Bytes: 3
  %loadMem_41a24c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a24c = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a24c)
  store %struct.Memory* %call_41a24c, %struct.Memory** %MEMORY

  ; Code: callq .XRate	 RIP: 41a24f	 Bytes: 5
  %loadMem1_41a24f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41a24f = call %struct.Memory* @routine_callq_.XRate(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41a24f, i64 -4815, i64 5, i64 5)
  store %struct.Memory* %call1_41a24f, %struct.Memory** %MEMORY

  %loadMem2_41a24f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41a24f = load i64, i64* %3
  %call2_41a24f = call %struct.Memory* @sub_418f80.XRate(%struct.State* %0, i64  %loadPC_41a24f, %struct.Memory* %loadMem2_41a24f)
  store %struct.Memory* %call2_41a24f, %struct.Memory** %MEMORY

  ; Code: addsd -0x30(%rbp), %xmm0	 RIP: 41a254	 Bytes: 5
  %loadMem_41a254 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a254 = call %struct.Memory* @routine_addsd_MINUS0x30__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a254)
  store %struct.Memory* %call_41a254, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x30(%rbp)	 RIP: 41a259	 Bytes: 5
  %loadMem_41a259 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a259 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a259)
  store %struct.Memory* %call_41a259, %struct.Memory** %MEMORY

  ; Code: .L_41a25e:	 RIP: 41a25e	 Bytes: 0
  br label %block_.L_41a25e
block_.L_41a25e:

  ; Code: jmpq .L_41a263	 RIP: 41a25e	 Bytes: 5
  %loadMem_41a25e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a25e = call %struct.Memory* @routine_jmpq_.L_41a263(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a25e, i64 5, i64 5)
  store %struct.Memory* %call_41a25e, %struct.Memory** %MEMORY

  br label %block_.L_41a263

  ; Code: .L_41a263:	 RIP: 41a263	 Bytes: 0
block_.L_41a263:

  ; Code: movl -0x20(%rbp), %eax	 RIP: 41a263	 Bytes: 3
  %loadMem_41a263 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a263 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a263)
  store %struct.Memory* %call_41a263, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41a266	 Bytes: 3
  %loadMem_41a266 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a266 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a266)
  store %struct.Memory* %call_41a266, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 41a269	 Bytes: 3
  %loadMem_41a269 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a269 = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a269)
  store %struct.Memory* %call_41a269, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41a16f	 RIP: 41a26c	 Bytes: 5
  %loadMem_41a26c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a26c = call %struct.Memory* @routine_jmpq_.L_41a16f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a26c, i64 -253, i64 5)
  store %struct.Memory* %call_41a26c, %struct.Memory** %MEMORY

  br label %block_.L_41a16f

  ; Code: .L_41a271:	 RIP: 41a271	 Bytes: 0
block_.L_41a271:

  ; Code: jmpq .L_41a276	 RIP: 41a271	 Bytes: 5
  %loadMem_41a271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a271 = call %struct.Memory* @routine_jmpq_.L_41a276(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a271, i64 5, i64 5)
  store %struct.Memory* %call_41a271, %struct.Memory** %MEMORY

  br label %block_.L_41a276

  ; Code: .L_41a276:	 RIP: 41a276	 Bytes: 0
block_.L_41a276:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 41a276	 Bytes: 3
  %loadMem_41a276 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a276 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a276)
  store %struct.Memory* %call_41a276, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41a279	 Bytes: 3
  %loadMem_41a279 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a279 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a279)
  store %struct.Memory* %call_41a279, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 41a27c	 Bytes: 3
  %loadMem_41a27c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a27c = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a27c)
  store %struct.Memory* %call_41a27c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41a15e	 RIP: 41a27f	 Bytes: 5
  %loadMem_41a27f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a27f = call %struct.Memory* @routine_jmpq_.L_41a15e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a27f, i64 -289, i64 5)
  store %struct.Memory* %call_41a27f, %struct.Memory** %MEMORY

  br label %block_.L_41a15e

  ; Code: .L_41a284:	 RIP: 41a284	 Bytes: 0
block_.L_41a284:

  ; Code: movl $0x0, -0x24(%rbp)	 RIP: 41a284	 Bytes: 7
  %loadMem_41a284 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a284 = call %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a284)
  store %struct.Memory* %call_41a284, %struct.Memory** %MEMORY

  ; Code: .L_41a28b:	 RIP: 41a28b	 Bytes: 0
  br label %block_.L_41a28b
block_.L_41a28b:

  ; Code: cmpl $0xa, -0x24(%rbp)	 RIP: 41a28b	 Bytes: 4
  %loadMem_41a28b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a28b = call %struct.Memory* @routine_cmpl__0xa__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a28b)
  store %struct.Memory* %call_41a28b, %struct.Memory** %MEMORY

  ; Code: jge .L_41a3b1	 RIP: 41a28f	 Bytes: 6
  %loadMem_41a28f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a28f = call %struct.Memory* @routine_jge_.L_41a3b1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a28f, i8* %BRANCH_TAKEN, i64 290, i64 6, i64 6)
  store %struct.Memory* %call_41a28f, %struct.Memory** %MEMORY

  %loadBr_41a28f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a28f = icmp eq i8 %loadBr_41a28f, 1
  br i1 %cmpBr_41a28f, label %block_.L_41a3b1, label %block_41a295

block_41a295:
  ; Code: movl $0x0, -0x20(%rbp)	 RIP: 41a295	 Bytes: 7
  %loadMem_41a295 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a295 = call %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a295)
  store %struct.Memory* %call_41a295, %struct.Memory** %MEMORY

  ; Code: .L_41a29c:	 RIP: 41a29c	 Bytes: 0
  br label %block_.L_41a29c
block_.L_41a29c:

  ; Code: cmpl $0xf, -0x20(%rbp)	 RIP: 41a29c	 Bytes: 4
  %loadMem_41a29c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a29c = call %struct.Memory* @routine_cmpl__0xf__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a29c)
  store %struct.Memory* %call_41a29c, %struct.Memory** %MEMORY

  ; Code: jge .L_41a39e	 RIP: 41a2a0	 Bytes: 6
  %loadMem_41a2a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a2a0 = call %struct.Memory* @routine_jge_.L_41a39e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a2a0, i8* %BRANCH_TAKEN, i64 254, i64 6, i64 6)
  store %struct.Memory* %call_41a2a0, %struct.Memory** %MEMORY

  %loadBr_41a2a0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a2a0 = icmp eq i8 %loadBr_41a2a0, 1
  br i1 %cmpBr_41a2a0, label %block_.L_41a39e, label %block_41a2a6

block_41a2a6:
  ; Code: movq 0x6cb900, %rax	 RIP: 41a2a6	 Bytes: 8
  %loadMem_41a2a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a2a6 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a2a6)
  store %struct.Memory* %call_41a2a6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x18(%rax)	 RIP: 41a2ae	 Bytes: 4
  %loadMem_41a2ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a2ae = call %struct.Memory* @routine_cmpl__0x2__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a2ae)
  store %struct.Memory* %call_41a2ae, %struct.Memory** %MEMORY

  ; Code: jne .L_41a324	 RIP: 41a2b2	 Bytes: 6
  %loadMem_41a2b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a2b2 = call %struct.Memory* @routine_jne_.L_41a324(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a2b2, i8* %BRANCH_TAKEN, i64 114, i64 6, i64 6)
  store %struct.Memory* %call_41a2b2, %struct.Memory** %MEMORY

  %loadBr_41a2b2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a2b2 = icmp eq i8 %loadBr_41a2b2, 1
  br i1 %cmpBr_41a2b2, label %block_.L_41a324, label %block_41a2b8

block_41a2b8:
  ; Code: movq $0x4b7bb0, %rax	 RIP: 41a2b8	 Bytes: 10
  %loadMem_41a2b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a2b8 = call %struct.Memory* @routine_movq__0x4b7bb0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a2b8)
  store %struct.Memory* %call_41a2b8, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 41a2c2	 Bytes: 4
  %loadMem_41a2c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a2c2 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a2c2)
  store %struct.Memory* %call_41a2c2, %struct.Memory** %MEMORY

  ; Code: addq $0x2600, %rcx	 RIP: 41a2c6	 Bytes: 7
  %loadMem_41a2c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a2c6 = call %struct.Memory* @routine_addq__0x2600___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a2c6)
  store %struct.Memory* %call_41a2c6, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 41a2cd	 Bytes: 4
  %loadMem_41a2cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a2cd = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a2cd)
  store %struct.Memory* %call_41a2cd, %struct.Memory** %MEMORY

  ; Code: imulq $0xf0, %rdx, %rdx	 RIP: 41a2d1	 Bytes: 7
  %loadMem_41a2d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a2d1 = call %struct.Memory* @routine_imulq__0xf0___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a2d1)
  store %struct.Memory* %call_41a2d1, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 41a2d8	 Bytes: 3
  %loadMem_41a2d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a2d8 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a2d8)
  store %struct.Memory* %call_41a2d8, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 41a2db	 Bytes: 4
  %loadMem_41a2db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a2db = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a2db)
  store %struct.Memory* %call_41a2db, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 41a2df	 Bytes: 4
  %loadMem_41a2df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a2df = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a2df)
  store %struct.Memory* %call_41a2df, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 41a2e3	 Bytes: 3
  %loadMem_41a2e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a2e3 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a2e3)
  store %struct.Memory* %call_41a2e3, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 41a2e6	 Bytes: 4
  %loadMem_41a2e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a2e6 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a2e6)
  store %struct.Memory* %call_41a2e6, %struct.Memory** %MEMORY

  ; Code: imulq $0x3c0, %rdx, %rdx	 RIP: 41a2ea	 Bytes: 7
  %loadMem_41a2ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a2ea = call %struct.Memory* @routine_imulq__0x3c0___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a2ea)
  store %struct.Memory* %call_41a2ea, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41a2f1	 Bytes: 3
  %loadMem_41a2f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a2f1 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a2f1)
  store %struct.Memory* %call_41a2f1, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 41a2f4	 Bytes: 4
  %loadMem_41a2f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a2f4 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a2f4)
  store %struct.Memory* %call_41a2f4, %struct.Memory** %MEMORY

  ; Code: imulq $0x78, %rdx, %rdx	 RIP: 41a2f8	 Bytes: 4
  %loadMem_41a2f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a2f8 = call %struct.Memory* @routine_imulq__0x78___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a2f8)
  store %struct.Memory* %call_41a2f8, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41a2fc	 Bytes: 3
  %loadMem_41a2fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a2fc = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a2fc)
  store %struct.Memory* %call_41a2fc, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 41a2ff	 Bytes: 4
  %loadMem_41a2ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a2ff = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a2ff)
  store %struct.Memory* %call_41a2ff, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 41a303	 Bytes: 4
  %loadMem_41a303 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a303 = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a303)
  store %struct.Memory* %call_41a303, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41a307	 Bytes: 3
  %loadMem_41a307 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a307 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a307)
  store %struct.Memory* %call_41a307, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 41a30a	 Bytes: 3
  %loadMem_41a30a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a30a = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a30a)
  store %struct.Memory* %call_41a30a, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 41a30d	 Bytes: 3
  %loadMem_41a30d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a30d = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a30d)
  store %struct.Memory* %call_41a30d, %struct.Memory** %MEMORY

  ; Code: callq .XRate	 RIP: 41a310	 Bytes: 5
  %loadMem1_41a310 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41a310 = call %struct.Memory* @routine_callq_.XRate(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41a310, i64 -5008, i64 5, i64 5)
  store %struct.Memory* %call1_41a310, %struct.Memory** %MEMORY

  %loadMem2_41a310 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41a310 = load i64, i64* %3
  %call2_41a310 = call %struct.Memory* @sub_418f80.XRate(%struct.State* %0, i64  %loadPC_41a310, %struct.Memory* %loadMem2_41a310)
  store %struct.Memory* %call2_41a310, %struct.Memory** %MEMORY

  ; Code: addsd -0x30(%rbp), %xmm0	 RIP: 41a315	 Bytes: 5
  %loadMem_41a315 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a315 = call %struct.Memory* @routine_addsd_MINUS0x30__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a315)
  store %struct.Memory* %call_41a315, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x30(%rbp)	 RIP: 41a31a	 Bytes: 5
  %loadMem_41a31a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a31a = call %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a31a)
  store %struct.Memory* %call_41a31a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41a38b	 RIP: 41a31f	 Bytes: 5
  %loadMem_41a31f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a31f = call %struct.Memory* @routine_jmpq_.L_41a38b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a31f, i64 108, i64 5)
  store %struct.Memory* %call_41a31f, %struct.Memory** %MEMORY

  br label %block_.L_41a38b

  ; Code: .L_41a324:	 RIP: 41a324	 Bytes: 0
block_.L_41a324:

  ; Code: movq $0x4b7f70, %rax	 RIP: 41a324	 Bytes: 10
  %loadMem_41a324 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a324 = call %struct.Memory* @routine_movq__0x4b7f70___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a324)
  store %struct.Memory* %call_41a324, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 41a32e	 Bytes: 4
  %loadMem_41a32e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a32e = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a32e)
  store %struct.Memory* %call_41a32e, %struct.Memory** %MEMORY

  ; Code: addq $0x2600, %rcx	 RIP: 41a332	 Bytes: 7
  %loadMem_41a332 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a332 = call %struct.Memory* @routine_addq__0x2600___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a332)
  store %struct.Memory* %call_41a332, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 41a339	 Bytes: 4
  %loadMem_41a339 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a339 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a339)
  store %struct.Memory* %call_41a339, %struct.Memory** %MEMORY

  ; Code: imulq $0xf0, %rdx, %rdx	 RIP: 41a33d	 Bytes: 7
  %loadMem_41a33d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a33d = call %struct.Memory* @routine_imulq__0xf0___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a33d)
  store %struct.Memory* %call_41a33d, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 41a344	 Bytes: 3
  %loadMem_41a344 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a344 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a344)
  store %struct.Memory* %call_41a344, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 41a347	 Bytes: 4
  %loadMem_41a347 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a347 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a347)
  store %struct.Memory* %call_41a347, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 41a34b	 Bytes: 4
  %loadMem_41a34b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a34b = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a34b)
  store %struct.Memory* %call_41a34b, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 41a34f	 Bytes: 3
  %loadMem_41a34f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a34f = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a34f)
  store %struct.Memory* %call_41a34f, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 41a352	 Bytes: 4
  %loadMem_41a352 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a352 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a352)
  store %struct.Memory* %call_41a352, %struct.Memory** %MEMORY

  ; Code: imulq $0x3c0, %rdx, %rdx	 RIP: 41a356	 Bytes: 7
  %loadMem_41a356 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a356 = call %struct.Memory* @routine_imulq__0x3c0___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a356)
  store %struct.Memory* %call_41a356, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41a35d	 Bytes: 3
  %loadMem_41a35d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a35d = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a35d)
  store %struct.Memory* %call_41a35d, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 41a360	 Bytes: 4
  %loadMem_41a360 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a360 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a360)
  store %struct.Memory* %call_41a360, %struct.Memory** %MEMORY

  ; Code: imulq $0x78, %rdx, %rdx	 RIP: 41a364	 Bytes: 4
  %loadMem_41a364 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a364 = call %struct.Memory* @routine_imulq__0x78___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a364)
  store %struct.Memory* %call_41a364, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41a368	 Bytes: 3
  %loadMem_41a368 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a368 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a368)
  store %struct.Memory* %call_41a368, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 41a36b	 Bytes: 4
  %loadMem_41a36b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a36b = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a36b)
  store %struct.Memory* %call_41a36b, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 41a36f	 Bytes: 4
  %loadMem_41a36f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a36f = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a36f)
  store %struct.Memory* %call_41a36f, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41a373	 Bytes: 3
  %loadMem_41a373 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a373 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a373)
  store %struct.Memory* %call_41a373, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 41a376	 Bytes: 3
  %loadMem_41a376 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a376 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a376)
  store %struct.Memory* %call_41a376, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 41a379	 Bytes: 3
  %loadMem_41a379 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a379 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a379)
  store %struct.Memory* %call_41a379, %struct.Memory** %MEMORY

  ; Code: callq .XRate	 RIP: 41a37c	 Bytes: 5
  %loadMem1_41a37c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41a37c = call %struct.Memory* @routine_callq_.XRate(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41a37c, i64 -5116, i64 5, i64 5)
  store %struct.Memory* %call1_41a37c, %struct.Memory** %MEMORY

  %loadMem2_41a37c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41a37c = load i64, i64* %3
  %call2_41a37c = call %struct.Memory* @sub_418f80.XRate(%struct.State* %0, i64  %loadPC_41a37c, %struct.Memory* %loadMem2_41a37c)
  store %struct.Memory* %call2_41a37c, %struct.Memory** %MEMORY

  ; Code: addsd -0x30(%rbp), %xmm0	 RIP: 41a381	 Bytes: 5
  %loadMem_41a381 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a381 = call %struct.Memory* @routine_addsd_MINUS0x30__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a381)
  store %struct.Memory* %call_41a381, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x30(%rbp)	 RIP: 41a386	 Bytes: 5
  %loadMem_41a386 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a386 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a386)
  store %struct.Memory* %call_41a386, %struct.Memory** %MEMORY

  ; Code: .L_41a38b:	 RIP: 41a38b	 Bytes: 0
  br label %block_.L_41a38b
block_.L_41a38b:

  ; Code: jmpq .L_41a390	 RIP: 41a38b	 Bytes: 5
  %loadMem_41a38b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a38b = call %struct.Memory* @routine_jmpq_.L_41a390(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a38b, i64 5, i64 5)
  store %struct.Memory* %call_41a38b, %struct.Memory** %MEMORY

  br label %block_.L_41a390

  ; Code: .L_41a390:	 RIP: 41a390	 Bytes: 0
block_.L_41a390:

  ; Code: movl -0x20(%rbp), %eax	 RIP: 41a390	 Bytes: 3
  %loadMem_41a390 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a390 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a390)
  store %struct.Memory* %call_41a390, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41a393	 Bytes: 3
  %loadMem_41a393 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a393 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a393)
  store %struct.Memory* %call_41a393, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 41a396	 Bytes: 3
  %loadMem_41a396 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a396 = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a396)
  store %struct.Memory* %call_41a396, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41a29c	 RIP: 41a399	 Bytes: 5
  %loadMem_41a399 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a399 = call %struct.Memory* @routine_jmpq_.L_41a29c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a399, i64 -253, i64 5)
  store %struct.Memory* %call_41a399, %struct.Memory** %MEMORY

  br label %block_.L_41a29c

  ; Code: .L_41a39e:	 RIP: 41a39e	 Bytes: 0
block_.L_41a39e:

  ; Code: jmpq .L_41a3a3	 RIP: 41a39e	 Bytes: 5
  %loadMem_41a39e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a39e = call %struct.Memory* @routine_jmpq_.L_41a3a3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a39e, i64 5, i64 5)
  store %struct.Memory* %call_41a39e, %struct.Memory** %MEMORY

  br label %block_.L_41a3a3

  ; Code: .L_41a3a3:	 RIP: 41a3a3	 Bytes: 0
block_.L_41a3a3:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 41a3a3	 Bytes: 3
  %loadMem_41a3a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a3a3 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a3a3)
  store %struct.Memory* %call_41a3a3, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41a3a6	 Bytes: 3
  %loadMem_41a3a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a3a6 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a3a6)
  store %struct.Memory* %call_41a3a6, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 41a3a9	 Bytes: 3
  %loadMem_41a3a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a3a9 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a3a9)
  store %struct.Memory* %call_41a3a9, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41a28b	 RIP: 41a3ac	 Bytes: 5
  %loadMem_41a3ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a3ac = call %struct.Memory* @routine_jmpq_.L_41a28b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a3ac, i64 -289, i64 5)
  store %struct.Memory* %call_41a3ac, %struct.Memory** %MEMORY

  br label %block_.L_41a28b

  ; Code: .L_41a3b1:	 RIP: 41a3b1	 Bytes: 0
block_.L_41a3b1:

  ; Code: movsd -0x30(%rbp), %xmm0	 RIP: 41a3b1	 Bytes: 5
  %loadMem_41a3b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a3b1 = call %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a3b1)
  store %struct.Memory* %call_41a3b1, %struct.Memory** %MEMORY

  ; Code: movsd -0x38(%rbp), %xmm1	 RIP: 41a3b6	 Bytes: 5
  %loadMem_41a3b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a3b6 = call %struct.Memory* @routine_movsd_MINUS0x38__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a3b6)
  store %struct.Memory* %call_41a3b6, %struct.Memory** %MEMORY

  ; Code: ucomisd %xmm0, %xmm1	 RIP: 41a3bb	 Bytes: 4
  %loadMem_41a3bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a3bb = call %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a3bb)
  store %struct.Memory* %call_41a3bb, %struct.Memory** %MEMORY

  ; Code: jbe .L_41a3d8	 RIP: 41a3bf	 Bytes: 6
  %loadMem_41a3bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a3bf = call %struct.Memory* @routine_jbe_.L_41a3d8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a3bf, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_41a3bf, %struct.Memory** %MEMORY

  %loadBr_41a3bf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a3bf = icmp eq i8 %loadBr_41a3bf, 1
  br i1 %cmpBr_41a3bf, label %block_.L_41a3d8, label %block_41a3c5

block_41a3c5:
  ; Code: movsd -0x30(%rbp), %xmm0	 RIP: 41a3c5	 Bytes: 5
  %loadMem_41a3c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a3c5 = call %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a3c5)
  store %struct.Memory* %call_41a3c5, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x38(%rbp)	 RIP: 41a3ca	 Bytes: 5
  %loadMem_41a3ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a3ca = call %struct.Memory* @routine_movsd__xmm0__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a3ca)
  store %struct.Memory* %call_41a3ca, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 41a3cf	 Bytes: 3
  %loadMem_41a3cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a3cf = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a3cf)
  store %struct.Memory* %call_41a3cf, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 41a3d2	 Bytes: 4
  %loadMem_41a3d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a3d2 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a3d2)
  store %struct.Memory* %call_41a3d2, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx)	 RIP: 41a3d6	 Bytes: 2
  %loadMem_41a3d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a3d6 = call %struct.Memory* @routine_movl__eax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a3d6)
  store %struct.Memory* %call_41a3d6, %struct.Memory** %MEMORY

  ; Code: .L_41a3d8:	 RIP: 41a3d8	 Bytes: 0
  br label %block_.L_41a3d8
block_.L_41a3d8:

  ; Code: jmpq .L_41a3dd	 RIP: 41a3d8	 Bytes: 5
  %loadMem_41a3d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a3d8 = call %struct.Memory* @routine_jmpq_.L_41a3dd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a3d8, i64 5, i64 5)
  store %struct.Memory* %call_41a3d8, %struct.Memory** %MEMORY

  br label %block_.L_41a3dd

  ; Code: .L_41a3dd:	 RIP: 41a3dd	 Bytes: 0
block_.L_41a3dd:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 41a3dd	 Bytes: 3
  %loadMem_41a3dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a3dd = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a3dd)
  store %struct.Memory* %call_41a3dd, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41a3e0	 Bytes: 3
  %loadMem_41a3e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a3e0 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a3e0)
  store %struct.Memory* %call_41a3e0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 41a3e3	 Bytes: 3
  %loadMem_41a3e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a3e3 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a3e3)
  store %struct.Memory* %call_41a3e3, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4191c4	 RIP: 41a3e6	 Bytes: 5
  %loadMem_41a3e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a3e6 = call %struct.Memory* @routine_jmpq_.L_4191c4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a3e6, i64 -4642, i64 5)
  store %struct.Memory* %call_41a3e6, %struct.Memory** %MEMORY

  br label %block_.L_4191c4

  ; Code: .L_41a3eb:	 RIP: 41a3eb	 Bytes: 0
block_.L_41a3eb:

  ; Code: addq $0x40, %rsp	 RIP: 41a3eb	 Bytes: 4
  %loadMem_41a3eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a3eb = call %struct.Memory* @routine_addq__0x40___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a3eb)
  store %struct.Memory* %call_41a3eb, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 41a3ef	 Bytes: 1
  %loadMem_41a3ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a3ef = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a3ef)
  store %struct.Memory* %call_41a3ef, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 41a3f0	 Bytes: 1
  %loadMem_41a3f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a3f0 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a3f0)
  store %struct.Memory* %call_41a3f0, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_41a3f0
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

define %struct.Memory* @routine_subq__0x40___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 64)
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

define %struct.Memory* @routine_movsd_0x986e0__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x986e0__rip__type* @G_0x986e0__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movl__0x1___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 1)
  ret %struct.Memory* %11
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G_0x6cb900_type* @G_0x6cb900 to i64))
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

define %struct.Memory* @routine_cmpl__0x2__0x18__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5CMOVZI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readonly dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %6 = load i8, i8* %5, align 1
  %7 = icmp ne i8 %6, 0
  %8 = load i64, i64* %2, align 8
  %9 = select i1 %7, i64 %3, i64 %8
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cmovel__ecx___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5CMOVZI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 40
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i8* nocapture readonly) #7 {
  %5 = bitcast i8* %3 to double*
  %6 = load double, double* %5, align 1
  %7 = inttoptr i64 %2 to double*
  store double %6, double* %7
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_cmpl_MINUS0x28__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 40
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

define %struct.Memory* @routine_jge_.L_41a3eb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x3__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_4192f7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0xb__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 11)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_4192e4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x2__0x18__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_jne_.L_419271(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x4b3290___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x4b3290_type* @G__0x4b3290 to i64))
  ret %struct.Memory* %11
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_imulq__0xb0___rdx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 176)
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


define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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




define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_imulq__0x108___rdx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 264)
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




define %struct.Memory* @routine_imulq__0x58___rdx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 88)
  ret %struct.Memory* %12
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

define %struct.Memory* @routine_callq_.XRate(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i64) #0 {
  %6 = bitcast i8* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to double*
  %12 = load double, double* %11
  %13 = fadd double %7, %12
  %14 = bitcast i8* %2 to double*
  store double %13, double* %14, align 1
  %15 = getelementptr inbounds i8, i8* %2, i64 8
  %16 = bitcast i8* %15 to i64*
  store i64 %10, i64* %16, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_addsd_MINUS0x30__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 48
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_4192d1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x4b33a0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x4b33a0_type* @G__0x4b33a0 to i64))
  ret %struct.Memory* %11
}












































define %struct.Memory* @routine_jmpq_.L_4192d6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_4191f0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_4192e9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_jmpq_.L_4191df(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_cmpl__0x2__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_419424(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x9__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 9)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_419411(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_419397(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4b36c0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x4b36c0_type* @G__0x4b36c0 to i64))
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_addq__0x210___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 528)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_imulq__0x90___rdx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 144)
  ret %struct.Memory* %12
}


















define %struct.Memory* @routine_imulq__0x48___rdx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 72)
  ret %struct.Memory* %12
}




















define %struct.Memory* @routine_jmpq_.L_4193fe(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x4b3750___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x4b3750_type* @G__0x4b3750 to i64))
  ret %struct.Memory* %11
}














































define %struct.Memory* @routine_jmpq_.L_419403(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_41930f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_419416(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_4192fe(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_jge_.L_419551(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0xa__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_41953e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_4194c4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4b3900___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x4b3900_type* @G__0x4b3900 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_addq__0x330___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 816)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_imulq__0xa0___rdx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 160)
  ret %struct.Memory* %12
}


















define %struct.Memory* @routine_imulq__0x50___rdx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 80)
  ret %struct.Memory* %12
}




















define %struct.Memory* @routine_jmpq_.L_41952b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x4b39a0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x4b39a0_type* @G__0x4b39a0 to i64))
  ret %struct.Memory* %11
}














































define %struct.Memory* @routine_jmpq_.L_419530(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_41943c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_419543(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_41942b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_jge_.L_419672(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x6__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 6)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_41965f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_4195eb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4b3b80___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x4b3b80_type* @G__0x4b3b80 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_addq__0x470___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 1136)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_imulq__0x60___rdx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 96)
  ret %struct.Memory* %12
}


















define %struct.Memory* @routine_imulq__0x30___rdx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 48)
  ret %struct.Memory* %12
}




















define %struct.Memory* @routine_jmpq_.L_41964c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x4b3be0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x4b3be0_type* @G__0x4b3be0 to i64))
  ret %struct.Memory* %11
}














































define %struct.Memory* @routine_jmpq_.L_419651(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_419569(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_419664(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_419558(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_cmpl__0x4__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 4)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_419743(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_4196e5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4b3d00___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x4b3d00_type* @G__0x4b3d00 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_addq__0x530___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 1328)
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_shlq__0x5___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 5)
  ret %struct.Memory* %12
}




















define %struct.Memory* @routine_jmpq_.L_419730(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x4b3d20___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x4b3d20_type* @G__0x4b3d20 to i64))
  ret %struct.Memory* %11
}


































define %struct.Memory* @routine_jmpq_.L_419735(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_419679(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_jge_.L_419814(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_4197b6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4b3d80___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x4b3d80_type* @G__0x4b3d80 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_addq__0x570___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 1392)
  ret %struct.Memory* %12
}






























define %struct.Memory* @routine_jmpq_.L_419801(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x4b3da0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x4b3da0_type* @G__0x4b3da0 to i64))
  ret %struct.Memory* %11
}


































define %struct.Memory* @routine_jmpq_.L_419806(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_41974a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_cmpl__0x3__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_4198e5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_419887(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4b3e00___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x4b3e00_type* @G__0x4b3e00 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_addq__0x5b0___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 1456)
  ret %struct.Memory* %12
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




















define %struct.Memory* @routine_jmpq_.L_4198d2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x4b3e20___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x4b3e20_type* @G__0x4b3e20 to i64))
  ret %struct.Memory* %11
}


































define %struct.Memory* @routine_jmpq_.L_4198d7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_41981b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_cmpl__0x2__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_4199a8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_419951(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4b3e70___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x4b3e70_type* @G__0x4b3e70 to i64))
  ret %struct.Memory* %11
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






























define %struct.Memory* @routine_jmpq_.L_419995(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x4b3e80___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x4b3e80_type* @G__0x4b3e80 to i64))
  ret %struct.Memory* %11
}
































define %struct.Memory* @routine_jmpq_.L_41999a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_4198ec(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_jge_.L_419a73(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_419a18(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4b3eb0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x4b3eb0_type* @G__0x4b3eb0 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_addq__0x20___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 32)
  ret %struct.Memory* %12
}






























define %struct.Memory* @routine_jmpq_.L_419a60(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x4b3ed0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x4b3ed0_type* @G__0x4b3ed0 to i64))
  ret %struct.Memory* %11
}


































define %struct.Memory* @routine_jmpq_.L_419a65(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_4199af(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_jge_.L_419b8e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_419b7b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_419b0a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4b3f30___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x4b3f30_type* @G__0x4b3f30 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_addq__0x60___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 96)
  ret %struct.Memory* %12
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






































define %struct.Memory* @routine_jmpq_.L_419b68(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x4b3f90___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x4b3f90_type* @G__0x4b3f90 to i64))
  ret %struct.Memory* %11
}














































define %struct.Memory* @routine_jmpq_.L_419b6d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_419a8b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_419b80(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_419a7a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_cmpl__0xa__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_419caf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_419c9c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_419c28(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4b40b0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x4b40b0_type* @G__0x4b40b0 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_addq__0x120___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 288)
  ret %struct.Memory* %12
}
















define %struct.Memory* @routine_shlq__0x8___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 8)
  ret %struct.Memory* %12
}


























define %struct.Memory* @routine_jmpq_.L_419c89(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x4b41b0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x4b41b0_type* @G__0x4b41b0 to i64))
  ret %struct.Memory* %11
}














































define %struct.Memory* @routine_jmpq_.L_419c8e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_419ba6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_419ca1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_419b95(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_jge_.L_419ddc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0xf__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 15)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_419dc9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_419d4f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4b44b0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x4b44b0_type* @G__0x4b44b0 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_addq__0x3a0___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 928)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_imulq__0xf0___rdx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 240)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_imulq__0x3c0___rdx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 960)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_imulq__0x78___rdx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 120)
  ret %struct.Memory* %12
}




















define %struct.Memory* @routine_jmpq_.L_419db6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x4b4870___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x4b4870_type* @G__0x4b4870 to i64))
  ret %struct.Memory* %11
}














































define %struct.Memory* @routine_jmpq_.L_419dbb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_419cc7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_419dce(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_419cb6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_jge_.L_419f09(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_419ef6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_419e7c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4b53b0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x4b53b0_type* @G__0x4b53b0 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_addq__0xd00___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 3328)
  ret %struct.Memory* %12
}










































define %struct.Memory* @routine_jmpq_.L_419ee3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x4b5770___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x4b5770_type* @G__0x4b5770 to i64))
  ret %struct.Memory* %11
}














































define %struct.Memory* @routine_jmpq_.L_419ee8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_419df4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_419efb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_419de3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_jge_.L_41a030(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x5__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 5)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_41a01d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_419fa6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4b62b0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x4b62b0_type* @G__0x4b62b0 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_addq__0x1660___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 5728)
  ret %struct.Memory* %12
}
















define %struct.Memory* @routine_imulq__0x140___rdx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 320)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_imulq__0x28___rdx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 40)
  ret %struct.Memory* %12
}




















define %struct.Memory* @routine_jmpq_.L_41a00a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x4b63f0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x4b63f0_type* @G__0x4b63f0 to i64))
  ret %struct.Memory* %11
}














































define %struct.Memory* @routine_jmpq_.L_41a00f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_419f21(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_41a022(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_419f10(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_jge_.L_41a157(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_41a144(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_41a0cd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4b67b0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x4b67b0_type* @G__0x4b67b0 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_addq__0x1980___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 6528)
  ret %struct.Memory* %12
}










































define %struct.Memory* @routine_jmpq_.L_41a131(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x4b68f0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x4b68f0_type* @G__0x4b68f0 to i64))
  ret %struct.Memory* %11
}














































define %struct.Memory* @routine_jmpq_.L_41a136(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_41a048(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_41a149(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_41a037(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_jge_.L_41a284(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_41a271(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_41a1f7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4b6cb0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x4b6cb0_type* @G__0x4b6cb0 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_addq__0x1ca0___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 7328)
  ret %struct.Memory* %12
}










































define %struct.Memory* @routine_jmpq_.L_41a25e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x4b7070___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x4b7070_type* @G__0x4b7070 to i64))
  ret %struct.Memory* %11
}














































define %struct.Memory* @routine_jmpq_.L_41a263(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_41a16f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_41a276(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_41a15e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_jge_.L_41a3b1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_41a39e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_41a324(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4b7bb0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x4b7bb0_type* @G__0x4b7bb0 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_addq__0x2600___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 9728)
  ret %struct.Memory* %12
}










































define %struct.Memory* @routine_jmpq_.L_41a38b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x4b7f70___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x4b7f70_type* @G__0x4b7f70 to i64))
  ret %struct.Memory* %11
}














































define %struct.Memory* @routine_jmpq_.L_41a390(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_41a29c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_41a3a3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_41a28b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd_MINUS0x38__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
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

define %struct.Memory* @routine_jbe_.L_41a3d8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_jmpq_.L_41a3dd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_4191c4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_addq__0x40___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 64)
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

