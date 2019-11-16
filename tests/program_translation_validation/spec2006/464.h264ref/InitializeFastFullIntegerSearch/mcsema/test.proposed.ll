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

declare %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x6cb8f8_type = type <{ [8 x i8] }>
@G_0x6cb8f8= global %G_0x6cb8f8_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6cb900_type = type <{ [8 x i8] }>
@G_0x6cb900= global %G_0x6cb900_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6cc338_type = type <{ [8 x i8] }>
@G_0x6cc338= global %G_0x6cc338_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6cc340_type = type <{ [8 x i8] }>
@G_0x6cc340= global %G_0x6cc340_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6cc348_type = type <{ [8 x i8] }>
@G_0x6cc348= global %G_0x6cc348_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6cc350_type = type <{ [8 x i8] }>
@G_0x6cc350= global %G_0x6cc350_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6cc358_type = type <{ [8 x i8] }>
@G_0x6cc358= global %G_0x6cc358_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6cc360_type = type <{ [8 x i8] }>
@G_0x6cc360= global %G_0x6cc360_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c2127_type = type <{ [8 x i8] }>
@G__0x4c2127= global %G__0x4c2127_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c2151_type = type <{ [8 x i8] }>
@G__0x4c2151= global %G__0x4c2151_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c2184_type = type <{ [8 x i8] }>
@G__0x4c2184= global %G__0x4c2184_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c21b5_type = type <{ [8 x i8] }>
@G__0x4c21b5= global %G__0x4c21b5_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c21e6_type = type <{ [8 x i8] }>
@G__0x4c21e6= global %G__0x4c21e6_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c220e_type = type <{ [8 x i8] }>
@G__0x4c220e= global %G__0x4c220e_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @InitializeFastFullIntegerSearch(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .InitializeFastFullIntegerSearch:	 RIP: 45a400	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 45a400	 Bytes: 1
  %loadMem_45a400 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a400 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a400)
  store %struct.Memory* %call_45a400, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 45a401	 Bytes: 3
  %loadMem_45a401 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a401 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a401)
  store %struct.Memory* %call_45a401, %struct.Memory** %MEMORY

  ; Code: subq $0x20, %rsp	 RIP: 45a404	 Bytes: 4
  %loadMem_45a404 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a404 = call %struct.Memory* @routine_subq__0x20___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a404)
  store %struct.Memory* %call_45a404, %struct.Memory** %MEMORY

  ; Code: movl $0x10, %eax	 RIP: 45a408	 Bytes: 5
  %loadMem_45a408 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a408 = call %struct.Memory* @routine_movl__0x10___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a408)
  store %struct.Memory* %call_45a408, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 45a40d	 Bytes: 2
  %loadMem_45a40d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a40d = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a40d)
  store %struct.Memory* %call_45a40d, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rcx	 RIP: 45a40f	 Bytes: 8
  %loadMem_45a40f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a40f = call %struct.Memory* @routine_movq_0x6cb8f8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a40f)
  store %struct.Memory* %call_45a40f, %struct.Memory** %MEMORY

  ; Code: movl 0x20(%rcx), %eax	 RIP: 45a417	 Bytes: 3
  %loadMem_45a417 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a417 = call %struct.Memory* @routine_movl_0x20__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a417)
  store %struct.Memory* %call_45a417, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 45a41a	 Bytes: 3
  %loadMem_45a41a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a41a = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a41a)
  store %struct.Memory* %call_45a41a, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %eax	 RIP: 45a41d	 Bytes: 3
  %loadMem_45a41d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a41d = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a41d)
  store %struct.Memory* %call_45a41d, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 45a420	 Bytes: 3
  %loadMem_45a420 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a420 = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a420)
  store %struct.Memory* %call_45a420, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 45a423	 Bytes: 3
  %loadMem_45a423 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a423 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a423)
  store %struct.Memory* %call_45a423, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %edx	 RIP: 45a426	 Bytes: 3
  %loadMem_45a426 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a426 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a426)
  store %struct.Memory* %call_45a426, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %edx	 RIP: 45a429	 Bytes: 3
  %loadMem_45a429 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a429 = call %struct.Memory* @routine_shll__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a429)
  store %struct.Memory* %call_45a429, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 45a42c	 Bytes: 3
  %loadMem_45a42c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a42c = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a42c)
  store %struct.Memory* %call_45a42c, %struct.Memory** %MEMORY

  ; Code: imull %edx, %eax	 RIP: 45a42f	 Bytes: 3
  %loadMem_45a42f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a42f = call %struct.Memory* @routine_imull__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a42f)
  store %struct.Memory* %call_45a42f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 45a432	 Bytes: 3
  %loadMem_45a432 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a432 = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a432)
  store %struct.Memory* %call_45a432, %struct.Memory** %MEMORY

  ; Code: callq .malloc_plt	 RIP: 45a435	 Bytes: 5
  %loadMem1_45a435 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45a435 = call %struct.Memory* @routine_callq_.malloc_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45a435, i64 -365285, i64 5, i64 5)
  store %struct.Memory* %call1_45a435, %struct.Memory** %MEMORY

  %loadMem2_45a435 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45a435 = load i64, i64* %3
  %call2_45a435 = call %struct.Memory* @ext_malloc(%struct.State* %0, i64  %loadPC_45a435, %struct.Memory* %loadMem2_45a435)
  store %struct.Memory* %call2_45a435, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x6cc338	 RIP: 45a43a	 Bytes: 8
  %loadMem_45a43a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a43a = call %struct.Memory* @routine_movq__rax__0x6cc338(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a43a)
  store %struct.Memory* %call_45a43a, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 45a442	 Bytes: 4
  %loadMem_45a442 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a442 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a442)
  store %struct.Memory* %call_45a442, %struct.Memory** %MEMORY

  ; Code: jne .L_45a45b	 RIP: 45a446	 Bytes: 6
  %loadMem_45a446 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a446 = call %struct.Memory* @routine_jne_.L_45a45b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a446, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_45a446, %struct.Memory** %MEMORY

  %loadBr_45a446 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45a446 = icmp eq i8 %loadBr_45a446, 1
  br i1 %cmpBr_45a446, label %block_.L_45a45b, label %block_45a44c

block_45a44c:
  ; Code: movq $0x4c2127, %rdi	 RIP: 45a44c	 Bytes: 10
  %loadMem_45a44c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a44c = call %struct.Memory* @routine_movq__0x4c2127___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a44c)
  store %struct.Memory* %call_45a44c, %struct.Memory** %MEMORY

  ; Code: callq .no_mem_exit	 RIP: 45a456	 Bytes: 5
  %loadMem1_45a456 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45a456 = call %struct.Memory* @routine_callq_.no_mem_exit(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45a456, i64 -4198, i64 5, i64 5)
  store %struct.Memory* %call1_45a456, %struct.Memory** %MEMORY

  %loadMem2_45a456 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45a456 = load i64, i64* %3
  %call2_45a456 = call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* %0, i64  %loadPC_45a456, %struct.Memory* %loadMem2_45a456)
  store %struct.Memory* %call2_45a456, %struct.Memory** %MEMORY

  ; Code: .L_45a45b:	 RIP: 45a45b	 Bytes: 0
  br label %block_.L_45a45b
block_.L_45a45b:

  ; Code: movl $0x0, -0x10(%rbp)	 RIP: 45a45b	 Bytes: 7
  %loadMem_45a45b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a45b = call %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a45b)
  store %struct.Memory* %call_45a45b, %struct.Memory** %MEMORY

  ; Code: .L_45a462:	 RIP: 45a462	 Bytes: 0
  br label %block_.L_45a462
block_.L_45a462:

  ; Code: cmpl $0x2, -0x10(%rbp)	 RIP: 45a462	 Bytes: 4
  %loadMem_45a462 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a462 = call %struct.Memory* @routine_cmpl__0x2__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a462)
  store %struct.Memory* %call_45a462, %struct.Memory** %MEMORY

  ; Code: jge .L_45a60e	 RIP: 45a466	 Bytes: 6
  %loadMem_45a466 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a466 = call %struct.Memory* @routine_jge_.L_45a60e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a466, i8* %BRANCH_TAKEN, i64 424, i64 6, i64 6)
  store %struct.Memory* %call_45a466, %struct.Memory** %MEMORY

  %loadBr_45a466 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45a466 = icmp eq i8 %loadBr_45a466, 1
  br i1 %cmpBr_45a466, label %block_.L_45a60e, label %block_45a46c

block_45a46c:
  ; Code: movq 0x6cb900, %rax	 RIP: 45a46c	 Bytes: 8
  %loadMem_45a46c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a46c = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a46c)
  store %struct.Memory* %call_45a46c, %struct.Memory** %MEMORY

  ; Code: movl 0x24(%rax), %ecx	 RIP: 45a474	 Bytes: 3
  %loadMem_45a474 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a474 = call %struct.Memory* @routine_movl_0x24__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a474)
  store %struct.Memory* %call_45a474, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 45a477	 Bytes: 3
  %loadMem_45a477 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a477 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a477)
  store %struct.Memory* %call_45a477, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rax	 RIP: 45a47a	 Bytes: 3
  %loadMem_45a47a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a47a = call %struct.Memory* @routine_movslq__ecx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a47a)
  store %struct.Memory* %call_45a47a, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rax	 RIP: 45a47d	 Bytes: 4
  %loadMem_45a47d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a47d = call %struct.Memory* @routine_shlq__0x3___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a47d)
  store %struct.Memory* %call_45a47d, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 45a481	 Bytes: 3
  %loadMem_45a481 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a481 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a481)
  store %struct.Memory* %call_45a481, %struct.Memory** %MEMORY

  ; Code: callq .malloc_plt	 RIP: 45a484	 Bytes: 5
  %loadMem1_45a484 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45a484 = call %struct.Memory* @routine_callq_.malloc_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45a484, i64 -365364, i64 5, i64 5)
  store %struct.Memory* %call1_45a484, %struct.Memory** %MEMORY

  %loadMem2_45a484 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45a484 = load i64, i64* %3
  %call2_45a484 = call %struct.Memory* @ext_malloc(%struct.State* %0, i64  %loadPC_45a484, %struct.Memory* %loadMem2_45a484)
  store %struct.Memory* %call2_45a484, %struct.Memory** %MEMORY

  ; Code: movq 0x6cc338, %rdi	 RIP: 45a489	 Bytes: 8
  %loadMem_45a489 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a489 = call %struct.Memory* @routine_movq_0x6cc338___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a489)
  store %struct.Memory* %call_45a489, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 45a491	 Bytes: 4
  %loadMem_45a491 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a491 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a491)
  store %struct.Memory* %call_45a491, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rdi,%rdx,8)	 RIP: 45a495	 Bytes: 4
  %loadMem_45a495 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a495 = call %struct.Memory* @routine_movq__rax____rdi__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a495)
  store %struct.Memory* %call_45a495, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 45a499	 Bytes: 4
  %loadMem_45a499 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a499 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a499)
  store %struct.Memory* %call_45a499, %struct.Memory** %MEMORY

  ; Code: jne .L_45a4b2	 RIP: 45a49d	 Bytes: 6
  %loadMem_45a49d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a49d = call %struct.Memory* @routine_jne_.L_45a4b2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a49d, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_45a49d, %struct.Memory** %MEMORY

  %loadBr_45a49d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45a49d = icmp eq i8 %loadBr_45a49d, 1
  br i1 %cmpBr_45a49d, label %block_.L_45a4b2, label %block_45a4a3

block_45a4a3:
  ; Code: movq $0x4c2127, %rdi	 RIP: 45a4a3	 Bytes: 10
  %loadMem_45a4a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a4a3 = call %struct.Memory* @routine_movq__0x4c2127___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a4a3)
  store %struct.Memory* %call_45a4a3, %struct.Memory** %MEMORY

  ; Code: callq .no_mem_exit	 RIP: 45a4ad	 Bytes: 5
  %loadMem1_45a4ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45a4ad = call %struct.Memory* @routine_callq_.no_mem_exit(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45a4ad, i64 -4285, i64 5, i64 5)
  store %struct.Memory* %call1_45a4ad, %struct.Memory** %MEMORY

  %loadMem2_45a4ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45a4ad = load i64, i64* %3
  %call2_45a4ad = call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* %0, i64  %loadPC_45a4ad, %struct.Memory* %loadMem2_45a4ad)
  store %struct.Memory* %call2_45a4ad, %struct.Memory** %MEMORY

  ; Code: .L_45a4b2:	 RIP: 45a4b2	 Bytes: 0
  br label %block_.L_45a4b2
block_.L_45a4b2:

  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 45a4b2	 Bytes: 7
  %loadMem_45a4b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a4b2 = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a4b2)
  store %struct.Memory* %call_45a4b2, %struct.Memory** %MEMORY

  ; Code: .L_45a4b9:	 RIP: 45a4b9	 Bytes: 0
  br label %block_.L_45a4b9
block_.L_45a4b9:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 45a4b9	 Bytes: 3
  %loadMem_45a4b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a4b9 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a4b9)
  store %struct.Memory* %call_45a4b9, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 45a4bc	 Bytes: 8
  %loadMem_45a4bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a4bc = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a4bc)
  store %struct.Memory* %call_45a4bc, %struct.Memory** %MEMORY

  ; Code: cmpl 0x24(%rcx), %eax	 RIP: 45a4c4	 Bytes: 3
  %loadMem_45a4c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a4c4 = call %struct.Memory* @routine_cmpl_0x24__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a4c4)
  store %struct.Memory* %call_45a4c4, %struct.Memory** %MEMORY

  ; Code: jg .L_45a5fb	 RIP: 45a4c7	 Bytes: 6
  %loadMem_45a4c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a4c7 = call %struct.Memory* @routine_jg_.L_45a5fb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a4c7, i8* %BRANCH_TAKEN, i64 308, i64 6, i64 6)
  store %struct.Memory* %call_45a4c7, %struct.Memory** %MEMORY

  %loadBr_45a4c7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45a4c7 = icmp eq i8 %loadBr_45a4c7, 1
  br i1 %cmpBr_45a4c7, label %block_.L_45a5fb, label %block_45a4cd

block_45a4cd:
  ; Code: movl $0x40, %eax	 RIP: 45a4cd	 Bytes: 5
  %loadMem_45a4cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a4cd = call %struct.Memory* @routine_movl__0x40___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a4cd)
  store %struct.Memory* %call_45a4cd, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 45a4d2	 Bytes: 2
  %loadMem_45a4d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a4d2 = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a4d2)
  store %struct.Memory* %call_45a4d2, %struct.Memory** %MEMORY

  ; Code: callq .malloc_plt	 RIP: 45a4d4	 Bytes: 5
  %loadMem1_45a4d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45a4d4 = call %struct.Memory* @routine_callq_.malloc_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45a4d4, i64 -365444, i64 5, i64 5)
  store %struct.Memory* %call1_45a4d4, %struct.Memory** %MEMORY

  %loadMem2_45a4d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45a4d4 = load i64, i64* %3
  %call2_45a4d4 = call %struct.Memory* @ext_malloc(%struct.State* %0, i64  %loadPC_45a4d4, %struct.Memory* %loadMem2_45a4d4)
  store %struct.Memory* %call2_45a4d4, %struct.Memory** %MEMORY

  ; Code: movq 0x6cc338, %rdi	 RIP: 45a4d9	 Bytes: 8
  %loadMem_45a4d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a4d9 = call %struct.Memory* @routine_movq_0x6cc338___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a4d9)
  store %struct.Memory* %call_45a4d9, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 45a4e1	 Bytes: 4
  %loadMem_45a4e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a4e1 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a4e1)
  store %struct.Memory* %call_45a4e1, %struct.Memory** %MEMORY

  ; Code: movq (%rdi,%rcx,8), %rcx	 RIP: 45a4e5	 Bytes: 4
  %loadMem_45a4e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a4e5 = call %struct.Memory* @routine_movq___rdi__rcx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a4e5)
  store %struct.Memory* %call_45a4e5, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdi	 RIP: 45a4e9	 Bytes: 4
  %loadMem_45a4e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a4e9 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a4e9)
  store %struct.Memory* %call_45a4e9, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rcx,%rdi,8)	 RIP: 45a4ed	 Bytes: 4
  %loadMem_45a4ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a4ed = call %struct.Memory* @routine_movq__rax____rcx__rdi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a4ed)
  store %struct.Memory* %call_45a4ed, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 45a4f1	 Bytes: 4
  %loadMem_45a4f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a4f1 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a4f1)
  store %struct.Memory* %call_45a4f1, %struct.Memory** %MEMORY

  ; Code: jne .L_45a50a	 RIP: 45a4f5	 Bytes: 6
  %loadMem_45a4f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a4f5 = call %struct.Memory* @routine_jne_.L_45a50a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a4f5, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_45a4f5, %struct.Memory** %MEMORY

  %loadBr_45a4f5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45a4f5 = icmp eq i8 %loadBr_45a4f5, 1
  br i1 %cmpBr_45a4f5, label %block_.L_45a50a, label %block_45a4fb

block_45a4fb:
  ; Code: movq $0x4c2127, %rdi	 RIP: 45a4fb	 Bytes: 10
  %loadMem_45a4fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a4fb = call %struct.Memory* @routine_movq__0x4c2127___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a4fb)
  store %struct.Memory* %call_45a4fb, %struct.Memory** %MEMORY

  ; Code: callq .no_mem_exit	 RIP: 45a505	 Bytes: 5
  %loadMem1_45a505 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45a505 = call %struct.Memory* @routine_callq_.no_mem_exit(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45a505, i64 -4373, i64 5, i64 5)
  store %struct.Memory* %call1_45a505, %struct.Memory** %MEMORY

  %loadMem2_45a505 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45a505 = load i64, i64* %3
  %call2_45a505 = call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* %0, i64  %loadPC_45a505, %struct.Memory* %loadMem2_45a505)
  store %struct.Memory* %call2_45a505, %struct.Memory** %MEMORY

  ; Code: .L_45a50a:	 RIP: 45a50a	 Bytes: 0
  br label %block_.L_45a50a
block_.L_45a50a:

  ; Code: movl $0x1, -0x8(%rbp)	 RIP: 45a50a	 Bytes: 7
  %loadMem_45a50a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a50a = call %struct.Memory* @routine_movl__0x1__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a50a)
  store %struct.Memory* %call_45a50a, %struct.Memory** %MEMORY

  ; Code: .L_45a511:	 RIP: 45a511	 Bytes: 0
  br label %block_.L_45a511
block_.L_45a511:

  ; Code: cmpl $0x8, -0x8(%rbp)	 RIP: 45a511	 Bytes: 4
  %loadMem_45a511 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a511 = call %struct.Memory* @routine_cmpl__0x8__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a511)
  store %struct.Memory* %call_45a511, %struct.Memory** %MEMORY

  ; Code: jge .L_45a5e8	 RIP: 45a515	 Bytes: 6
  %loadMem_45a515 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a515 = call %struct.Memory* @routine_jge_.L_45a5e8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a515, i8* %BRANCH_TAKEN, i64 211, i64 6, i64 6)
  store %struct.Memory* %call_45a515, %struct.Memory** %MEMORY

  %loadBr_45a515 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45a515 = icmp eq i8 %loadBr_45a515, 1
  br i1 %cmpBr_45a515, label %block_.L_45a5e8, label %block_45a51b

block_45a51b:
  ; Code: movl $0x80, %eax	 RIP: 45a51b	 Bytes: 5
  %loadMem_45a51b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a51b = call %struct.Memory* @routine_movl__0x80___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a51b)
  store %struct.Memory* %call_45a51b, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 45a520	 Bytes: 2
  %loadMem_45a520 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a520 = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a520)
  store %struct.Memory* %call_45a520, %struct.Memory** %MEMORY

  ; Code: callq .malloc_plt	 RIP: 45a522	 Bytes: 5
  %loadMem1_45a522 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45a522 = call %struct.Memory* @routine_callq_.malloc_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45a522, i64 -365522, i64 5, i64 5)
  store %struct.Memory* %call1_45a522, %struct.Memory** %MEMORY

  %loadMem2_45a522 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45a522 = load i64, i64* %3
  %call2_45a522 = call %struct.Memory* @ext_malloc(%struct.State* %0, i64  %loadPC_45a522, %struct.Memory* %loadMem2_45a522)
  store %struct.Memory* %call2_45a522, %struct.Memory** %MEMORY

  ; Code: movq 0x6cc338, %rdi	 RIP: 45a527	 Bytes: 8
  %loadMem_45a527 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a527 = call %struct.Memory* @routine_movq_0x6cc338___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a527)
  store %struct.Memory* %call_45a527, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 45a52f	 Bytes: 4
  %loadMem_45a52f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a52f = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a52f)
  store %struct.Memory* %call_45a52f, %struct.Memory** %MEMORY

  ; Code: movq (%rdi,%rcx,8), %rcx	 RIP: 45a533	 Bytes: 4
  %loadMem_45a533 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a533 = call %struct.Memory* @routine_movq___rdi__rcx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a533)
  store %struct.Memory* %call_45a533, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdi	 RIP: 45a537	 Bytes: 4
  %loadMem_45a537 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a537 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a537)
  store %struct.Memory* %call_45a537, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdi,8), %rcx	 RIP: 45a53b	 Bytes: 4
  %loadMem_45a53b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a53b = call %struct.Memory* @routine_movq___rcx__rdi_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a53b)
  store %struct.Memory* %call_45a53b, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdi	 RIP: 45a53f	 Bytes: 4
  %loadMem_45a53f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a53f = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a53f)
  store %struct.Memory* %call_45a53f, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rcx,%rdi,8)	 RIP: 45a543	 Bytes: 4
  %loadMem_45a543 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a543 = call %struct.Memory* @routine_movq__rax____rcx__rdi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a543)
  store %struct.Memory* %call_45a543, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 45a547	 Bytes: 4
  %loadMem_45a547 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a547 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a547)
  store %struct.Memory* %call_45a547, %struct.Memory** %MEMORY

  ; Code: jne .L_45a560	 RIP: 45a54b	 Bytes: 6
  %loadMem_45a54b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a54b = call %struct.Memory* @routine_jne_.L_45a560(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a54b, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_45a54b, %struct.Memory** %MEMORY

  %loadBr_45a54b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45a54b = icmp eq i8 %loadBr_45a54b, 1
  br i1 %cmpBr_45a54b, label %block_.L_45a560, label %block_45a551

block_45a551:
  ; Code: movq $0x4c2127, %rdi	 RIP: 45a551	 Bytes: 10
  %loadMem_45a551 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a551 = call %struct.Memory* @routine_movq__0x4c2127___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a551)
  store %struct.Memory* %call_45a551, %struct.Memory** %MEMORY

  ; Code: callq .no_mem_exit	 RIP: 45a55b	 Bytes: 5
  %loadMem1_45a55b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45a55b = call %struct.Memory* @routine_callq_.no_mem_exit(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45a55b, i64 -4459, i64 5, i64 5)
  store %struct.Memory* %call1_45a55b, %struct.Memory** %MEMORY

  %loadMem2_45a55b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45a55b = load i64, i64* %3
  %call2_45a55b = call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* %0, i64  %loadPC_45a55b, %struct.Memory* %loadMem2_45a55b)
  store %struct.Memory* %call2_45a55b, %struct.Memory** %MEMORY

  ; Code: .L_45a560:	 RIP: 45a560	 Bytes: 0
  br label %block_.L_45a560
block_.L_45a560:

  ; Code: movl $0x0, -0xc(%rbp)	 RIP: 45a560	 Bytes: 7
  %loadMem_45a560 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a560 = call %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a560)
  store %struct.Memory* %call_45a560, %struct.Memory** %MEMORY

  ; Code: .L_45a567:	 RIP: 45a567	 Bytes: 0
  br label %block_.L_45a567
block_.L_45a567:

  ; Code: cmpl $0x10, -0xc(%rbp)	 RIP: 45a567	 Bytes: 4
  %loadMem_45a567 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a567 = call %struct.Memory* @routine_cmpl__0x10__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a567)
  store %struct.Memory* %call_45a567, %struct.Memory** %MEMORY

  ; Code: jge .L_45a5d5	 RIP: 45a56b	 Bytes: 6
  %loadMem_45a56b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a56b = call %struct.Memory* @routine_jge_.L_45a5d5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a56b, i8* %BRANCH_TAKEN, i64 106, i64 6, i64 6)
  store %struct.Memory* %call_45a56b, %struct.Memory** %MEMORY

  %loadBr_45a56b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45a56b = icmp eq i8 %loadBr_45a56b, 1
  br i1 %cmpBr_45a56b, label %block_.L_45a5d5, label %block_45a571

block_45a571:
  ; Code: movslq -0x18(%rbp), %rax	 RIP: 45a571	 Bytes: 4
  %loadMem_45a571 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a571 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a571)
  store %struct.Memory* %call_45a571, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rax	 RIP: 45a575	 Bytes: 4
  %loadMem_45a575 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a575 = call %struct.Memory* @routine_shlq__0x2___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a575)
  store %struct.Memory* %call_45a575, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 45a579	 Bytes: 3
  %loadMem_45a579 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a579 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a579)
  store %struct.Memory* %call_45a579, %struct.Memory** %MEMORY

  ; Code: callq .malloc_plt	 RIP: 45a57c	 Bytes: 5
  %loadMem1_45a57c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45a57c = call %struct.Memory* @routine_callq_.malloc_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45a57c, i64 -365612, i64 5, i64 5)
  store %struct.Memory* %call1_45a57c, %struct.Memory** %MEMORY

  %loadMem2_45a57c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45a57c = load i64, i64* %3
  %call2_45a57c = call %struct.Memory* @ext_malloc(%struct.State* %0, i64  %loadPC_45a57c, %struct.Memory* %loadMem2_45a57c)
  store %struct.Memory* %call2_45a57c, %struct.Memory** %MEMORY

  ; Code: movq 0x6cc338, %rdi	 RIP: 45a581	 Bytes: 8
  %loadMem_45a581 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a581 = call %struct.Memory* @routine_movq_0x6cc338___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a581)
  store %struct.Memory* %call_45a581, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 45a589	 Bytes: 4
  %loadMem_45a589 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a589 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a589)
  store %struct.Memory* %call_45a589, %struct.Memory** %MEMORY

  ; Code: movq (%rdi,%rcx,8), %rcx	 RIP: 45a58d	 Bytes: 4
  %loadMem_45a58d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a58d = call %struct.Memory* @routine_movq___rdi__rcx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a58d)
  store %struct.Memory* %call_45a58d, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdi	 RIP: 45a591	 Bytes: 4
  %loadMem_45a591 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a591 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a591)
  store %struct.Memory* %call_45a591, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdi,8), %rcx	 RIP: 45a595	 Bytes: 4
  %loadMem_45a595 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a595 = call %struct.Memory* @routine_movq___rcx__rdi_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a595)
  store %struct.Memory* %call_45a595, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdi	 RIP: 45a599	 Bytes: 4
  %loadMem_45a599 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a599 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a599)
  store %struct.Memory* %call_45a599, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdi,8), %rcx	 RIP: 45a59d	 Bytes: 4
  %loadMem_45a59d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a59d = call %struct.Memory* @routine_movq___rcx__rdi_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a59d)
  store %struct.Memory* %call_45a59d, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rdi	 RIP: 45a5a1	 Bytes: 4
  %loadMem_45a5a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a5a1 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a5a1)
  store %struct.Memory* %call_45a5a1, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rcx,%rdi,8)	 RIP: 45a5a5	 Bytes: 4
  %loadMem_45a5a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a5a5 = call %struct.Memory* @routine_movq__rax____rcx__rdi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a5a5)
  store %struct.Memory* %call_45a5a5, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 45a5a9	 Bytes: 4
  %loadMem_45a5a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a5a9 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a5a9)
  store %struct.Memory* %call_45a5a9, %struct.Memory** %MEMORY

  ; Code: jne .L_45a5c2	 RIP: 45a5ad	 Bytes: 6
  %loadMem_45a5ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a5ad = call %struct.Memory* @routine_jne_.L_45a5c2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a5ad, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_45a5ad, %struct.Memory** %MEMORY

  %loadBr_45a5ad = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45a5ad = icmp eq i8 %loadBr_45a5ad, 1
  br i1 %cmpBr_45a5ad, label %block_.L_45a5c2, label %block_45a5b3

block_45a5b3:
  ; Code: movq $0x4c2127, %rdi	 RIP: 45a5b3	 Bytes: 10
  %loadMem_45a5b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a5b3 = call %struct.Memory* @routine_movq__0x4c2127___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a5b3)
  store %struct.Memory* %call_45a5b3, %struct.Memory** %MEMORY

  ; Code: callq .no_mem_exit	 RIP: 45a5bd	 Bytes: 5
  %loadMem1_45a5bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45a5bd = call %struct.Memory* @routine_callq_.no_mem_exit(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45a5bd, i64 -4557, i64 5, i64 5)
  store %struct.Memory* %call1_45a5bd, %struct.Memory** %MEMORY

  %loadMem2_45a5bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45a5bd = load i64, i64* %3
  %call2_45a5bd = call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* %0, i64  %loadPC_45a5bd, %struct.Memory* %loadMem2_45a5bd)
  store %struct.Memory* %call2_45a5bd, %struct.Memory** %MEMORY

  ; Code: .L_45a5c2:	 RIP: 45a5c2	 Bytes: 0
  br label %block_.L_45a5c2
block_.L_45a5c2:

  ; Code: jmpq .L_45a5c7	 RIP: 45a5c2	 Bytes: 5
  %loadMem_45a5c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a5c2 = call %struct.Memory* @routine_jmpq_.L_45a5c7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a5c2, i64 5, i64 5)
  store %struct.Memory* %call_45a5c2, %struct.Memory** %MEMORY

  br label %block_.L_45a5c7

  ; Code: .L_45a5c7:	 RIP: 45a5c7	 Bytes: 0
block_.L_45a5c7:

  ; Code: movl -0xc(%rbp), %eax	 RIP: 45a5c7	 Bytes: 3
  %loadMem_45a5c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a5c7 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a5c7)
  store %struct.Memory* %call_45a5c7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 45a5ca	 Bytes: 3
  %loadMem_45a5ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a5ca = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a5ca)
  store %struct.Memory* %call_45a5ca, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 45a5cd	 Bytes: 3
  %loadMem_45a5cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a5cd = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a5cd)
  store %struct.Memory* %call_45a5cd, %struct.Memory** %MEMORY

  ; Code: jmpq .L_45a567	 RIP: 45a5d0	 Bytes: 5
  %loadMem_45a5d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a5d0 = call %struct.Memory* @routine_jmpq_.L_45a567(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a5d0, i64 -105, i64 5)
  store %struct.Memory* %call_45a5d0, %struct.Memory** %MEMORY

  br label %block_.L_45a567

  ; Code: .L_45a5d5:	 RIP: 45a5d5	 Bytes: 0
block_.L_45a5d5:

  ; Code: jmpq .L_45a5da	 RIP: 45a5d5	 Bytes: 5
  %loadMem_45a5d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a5d5 = call %struct.Memory* @routine_jmpq_.L_45a5da(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a5d5, i64 5, i64 5)
  store %struct.Memory* %call_45a5d5, %struct.Memory** %MEMORY

  br label %block_.L_45a5da

  ; Code: .L_45a5da:	 RIP: 45a5da	 Bytes: 0
block_.L_45a5da:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 45a5da	 Bytes: 3
  %loadMem_45a5da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a5da = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a5da)
  store %struct.Memory* %call_45a5da, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 45a5dd	 Bytes: 3
  %loadMem_45a5dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a5dd = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a5dd)
  store %struct.Memory* %call_45a5dd, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8(%rbp)	 RIP: 45a5e0	 Bytes: 3
  %loadMem_45a5e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a5e0 = call %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a5e0)
  store %struct.Memory* %call_45a5e0, %struct.Memory** %MEMORY

  ; Code: jmpq .L_45a511	 RIP: 45a5e3	 Bytes: 5
  %loadMem_45a5e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a5e3 = call %struct.Memory* @routine_jmpq_.L_45a511(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a5e3, i64 -210, i64 5)
  store %struct.Memory* %call_45a5e3, %struct.Memory** %MEMORY

  br label %block_.L_45a511

  ; Code: .L_45a5e8:	 RIP: 45a5e8	 Bytes: 0
block_.L_45a5e8:

  ; Code: jmpq .L_45a5ed	 RIP: 45a5e8	 Bytes: 5
  %loadMem_45a5e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a5e8 = call %struct.Memory* @routine_jmpq_.L_45a5ed(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a5e8, i64 5, i64 5)
  store %struct.Memory* %call_45a5e8, %struct.Memory** %MEMORY

  br label %block_.L_45a5ed

  ; Code: .L_45a5ed:	 RIP: 45a5ed	 Bytes: 0
block_.L_45a5ed:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 45a5ed	 Bytes: 3
  %loadMem_45a5ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a5ed = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a5ed)
  store %struct.Memory* %call_45a5ed, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 45a5f0	 Bytes: 3
  %loadMem_45a5f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a5f0 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a5f0)
  store %struct.Memory* %call_45a5f0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 45a5f3	 Bytes: 3
  %loadMem_45a5f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a5f3 = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a5f3)
  store %struct.Memory* %call_45a5f3, %struct.Memory** %MEMORY

  ; Code: jmpq .L_45a4b9	 RIP: 45a5f6	 Bytes: 5
  %loadMem_45a5f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a5f6 = call %struct.Memory* @routine_jmpq_.L_45a4b9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a5f6, i64 -317, i64 5)
  store %struct.Memory* %call_45a5f6, %struct.Memory** %MEMORY

  br label %block_.L_45a4b9

  ; Code: .L_45a5fb:	 RIP: 45a5fb	 Bytes: 0
block_.L_45a5fb:

  ; Code: jmpq .L_45a600	 RIP: 45a5fb	 Bytes: 5
  %loadMem_45a5fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a5fb = call %struct.Memory* @routine_jmpq_.L_45a600(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a5fb, i64 5, i64 5)
  store %struct.Memory* %call_45a5fb, %struct.Memory** %MEMORY

  br label %block_.L_45a600

  ; Code: .L_45a600:	 RIP: 45a600	 Bytes: 0
block_.L_45a600:

  ; Code: movl -0x10(%rbp), %eax	 RIP: 45a600	 Bytes: 3
  %loadMem_45a600 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a600 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a600)
  store %struct.Memory* %call_45a600, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 45a603	 Bytes: 3
  %loadMem_45a603 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a603 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a603)
  store %struct.Memory* %call_45a603, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x10(%rbp)	 RIP: 45a606	 Bytes: 3
  %loadMem_45a606 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a606 = call %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a606)
  store %struct.Memory* %call_45a606, %struct.Memory** %MEMORY

  ; Code: jmpq .L_45a462	 RIP: 45a609	 Bytes: 5
  %loadMem_45a609 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a609 = call %struct.Memory* @routine_jmpq_.L_45a462(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a609, i64 -423, i64 5)
  store %struct.Memory* %call_45a609, %struct.Memory** %MEMORY

  br label %block_.L_45a462

  ; Code: .L_45a60e:	 RIP: 45a60e	 Bytes: 0
block_.L_45a60e:

  ; Code: movl $0x10, %eax	 RIP: 45a60e	 Bytes: 5
  %loadMem_45a60e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a60e = call %struct.Memory* @routine_movl__0x10___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a60e)
  store %struct.Memory* %call_45a60e, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 45a613	 Bytes: 2
  %loadMem_45a613 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a613 = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a613)
  store %struct.Memory* %call_45a613, %struct.Memory** %MEMORY

  ; Code: callq .malloc_plt	 RIP: 45a615	 Bytes: 5
  %loadMem1_45a615 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45a615 = call %struct.Memory* @routine_callq_.malloc_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45a615, i64 -365765, i64 5, i64 5)
  store %struct.Memory* %call1_45a615, %struct.Memory** %MEMORY

  %loadMem2_45a615 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45a615 = load i64, i64* %3
  %call2_45a615 = call %struct.Memory* @ext_malloc(%struct.State* %0, i64  %loadPC_45a615, %struct.Memory* %loadMem2_45a615)
  store %struct.Memory* %call2_45a615, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x6cc340	 RIP: 45a61a	 Bytes: 8
  %loadMem_45a61a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a61a = call %struct.Memory* @routine_movq__rax__0x6cc340(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a61a)
  store %struct.Memory* %call_45a61a, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 45a622	 Bytes: 4
  %loadMem_45a622 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a622 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a622)
  store %struct.Memory* %call_45a622, %struct.Memory** %MEMORY

  ; Code: jne .L_45a63b	 RIP: 45a626	 Bytes: 6
  %loadMem_45a626 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a626 = call %struct.Memory* @routine_jne_.L_45a63b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a626, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_45a626, %struct.Memory** %MEMORY

  %loadBr_45a626 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45a626 = icmp eq i8 %loadBr_45a626, 1
  br i1 %cmpBr_45a626, label %block_.L_45a63b, label %block_45a62c

block_45a62c:
  ; Code: movq $0x4c2151, %rdi	 RIP: 45a62c	 Bytes: 10
  %loadMem_45a62c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a62c = call %struct.Memory* @routine_movq__0x4c2151___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a62c)
  store %struct.Memory* %call_45a62c, %struct.Memory** %MEMORY

  ; Code: callq .no_mem_exit	 RIP: 45a636	 Bytes: 5
  %loadMem1_45a636 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45a636 = call %struct.Memory* @routine_callq_.no_mem_exit(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45a636, i64 -4678, i64 5, i64 5)
  store %struct.Memory* %call1_45a636, %struct.Memory** %MEMORY

  %loadMem2_45a636 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45a636 = load i64, i64* %3
  %call2_45a636 = call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* %0, i64  %loadPC_45a636, %struct.Memory* %loadMem2_45a636)
  store %struct.Memory* %call2_45a636, %struct.Memory** %MEMORY

  ; Code: .L_45a63b:	 RIP: 45a63b	 Bytes: 0
  br label %block_.L_45a63b
block_.L_45a63b:

  ; Code: movl $0x10, %eax	 RIP: 45a63b	 Bytes: 5
  %loadMem_45a63b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a63b = call %struct.Memory* @routine_movl__0x10___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a63b)
  store %struct.Memory* %call_45a63b, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 45a640	 Bytes: 2
  %loadMem_45a640 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a640 = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a640)
  store %struct.Memory* %call_45a640, %struct.Memory** %MEMORY

  ; Code: callq .malloc_plt	 RIP: 45a642	 Bytes: 5
  %loadMem1_45a642 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45a642 = call %struct.Memory* @routine_callq_.malloc_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45a642, i64 -365810, i64 5, i64 5)
  store %struct.Memory* %call1_45a642, %struct.Memory** %MEMORY

  %loadMem2_45a642 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45a642 = load i64, i64* %3
  %call2_45a642 = call %struct.Memory* @ext_malloc(%struct.State* %0, i64  %loadPC_45a642, %struct.Memory* %loadMem2_45a642)
  store %struct.Memory* %call2_45a642, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x6cc348	 RIP: 45a647	 Bytes: 8
  %loadMem_45a647 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a647 = call %struct.Memory* @routine_movq__rax__0x6cc348(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a647)
  store %struct.Memory* %call_45a647, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 45a64f	 Bytes: 4
  %loadMem_45a64f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a64f = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a64f)
  store %struct.Memory* %call_45a64f, %struct.Memory** %MEMORY

  ; Code: jne .L_45a668	 RIP: 45a653	 Bytes: 6
  %loadMem_45a653 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a653 = call %struct.Memory* @routine_jne_.L_45a668(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a653, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_45a653, %struct.Memory** %MEMORY

  %loadBr_45a653 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45a653 = icmp eq i8 %loadBr_45a653, 1
  br i1 %cmpBr_45a653, label %block_.L_45a668, label %block_45a659

block_45a659:
  ; Code: movq $0x4c2184, %rdi	 RIP: 45a659	 Bytes: 10
  %loadMem_45a659 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a659 = call %struct.Memory* @routine_movq__0x4c2184___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a659)
  store %struct.Memory* %call_45a659, %struct.Memory** %MEMORY

  ; Code: callq .no_mem_exit	 RIP: 45a663	 Bytes: 5
  %loadMem1_45a663 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45a663 = call %struct.Memory* @routine_callq_.no_mem_exit(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45a663, i64 -4723, i64 5, i64 5)
  store %struct.Memory* %call1_45a663, %struct.Memory** %MEMORY

  %loadMem2_45a663 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45a663 = load i64, i64* %3
  %call2_45a663 = call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* %0, i64  %loadPC_45a663, %struct.Memory* %loadMem2_45a663)
  store %struct.Memory* %call2_45a663, %struct.Memory** %MEMORY

  ; Code: .L_45a668:	 RIP: 45a668	 Bytes: 0
  br label %block_.L_45a668
block_.L_45a668:

  ; Code: movl $0x10, %eax	 RIP: 45a668	 Bytes: 5
  %loadMem_45a668 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a668 = call %struct.Memory* @routine_movl__0x10___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a668)
  store %struct.Memory* %call_45a668, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 45a66d	 Bytes: 2
  %loadMem_45a66d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a66d = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a66d)
  store %struct.Memory* %call_45a66d, %struct.Memory** %MEMORY

  ; Code: callq .malloc_plt	 RIP: 45a66f	 Bytes: 5
  %loadMem1_45a66f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45a66f = call %struct.Memory* @routine_callq_.malloc_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45a66f, i64 -365855, i64 5, i64 5)
  store %struct.Memory* %call1_45a66f, %struct.Memory** %MEMORY

  %loadMem2_45a66f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45a66f = load i64, i64* %3
  %call2_45a66f = call %struct.Memory* @ext_malloc(%struct.State* %0, i64  %loadPC_45a66f, %struct.Memory* %loadMem2_45a66f)
  store %struct.Memory* %call2_45a66f, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x6cc350	 RIP: 45a674	 Bytes: 8
  %loadMem_45a674 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a674 = call %struct.Memory* @routine_movq__rax__0x6cc350(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a674)
  store %struct.Memory* %call_45a674, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 45a67c	 Bytes: 4
  %loadMem_45a67c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a67c = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a67c)
  store %struct.Memory* %call_45a67c, %struct.Memory** %MEMORY

  ; Code: jne .L_45a695	 RIP: 45a680	 Bytes: 6
  %loadMem_45a680 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a680 = call %struct.Memory* @routine_jne_.L_45a695(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a680, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_45a680, %struct.Memory** %MEMORY

  %loadBr_45a680 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45a680 = icmp eq i8 %loadBr_45a680, 1
  br i1 %cmpBr_45a680, label %block_.L_45a695, label %block_45a686

block_45a686:
  ; Code: movq $0x4c21b5, %rdi	 RIP: 45a686	 Bytes: 10
  %loadMem_45a686 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a686 = call %struct.Memory* @routine_movq__0x4c21b5___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a686)
  store %struct.Memory* %call_45a686, %struct.Memory** %MEMORY

  ; Code: callq .no_mem_exit	 RIP: 45a690	 Bytes: 5
  %loadMem1_45a690 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45a690 = call %struct.Memory* @routine_callq_.no_mem_exit(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45a690, i64 -4768, i64 5, i64 5)
  store %struct.Memory* %call1_45a690, %struct.Memory** %MEMORY

  %loadMem2_45a690 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45a690 = load i64, i64* %3
  %call2_45a690 = call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* %0, i64  %loadPC_45a690, %struct.Memory* %loadMem2_45a690)
  store %struct.Memory* %call2_45a690, %struct.Memory** %MEMORY

  ; Code: .L_45a695:	 RIP: 45a695	 Bytes: 0
  br label %block_.L_45a695
block_.L_45a695:

  ; Code: movl $0x10, %eax	 RIP: 45a695	 Bytes: 5
  %loadMem_45a695 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a695 = call %struct.Memory* @routine_movl__0x10___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a695)
  store %struct.Memory* %call_45a695, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 45a69a	 Bytes: 2
  %loadMem_45a69a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a69a = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a69a)
  store %struct.Memory* %call_45a69a, %struct.Memory** %MEMORY

  ; Code: callq .malloc_plt	 RIP: 45a69c	 Bytes: 5
  %loadMem1_45a69c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45a69c = call %struct.Memory* @routine_callq_.malloc_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45a69c, i64 -365900, i64 5, i64 5)
  store %struct.Memory* %call1_45a69c, %struct.Memory** %MEMORY

  %loadMem2_45a69c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45a69c = load i64, i64* %3
  %call2_45a69c = call %struct.Memory* @ext_malloc(%struct.State* %0, i64  %loadPC_45a69c, %struct.Memory* %loadMem2_45a69c)
  store %struct.Memory* %call2_45a69c, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x6cc358	 RIP: 45a6a1	 Bytes: 8
  %loadMem_45a6a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a6a1 = call %struct.Memory* @routine_movq__rax__0x6cc358(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a6a1)
  store %struct.Memory* %call_45a6a1, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 45a6a9	 Bytes: 4
  %loadMem_45a6a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a6a9 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a6a9)
  store %struct.Memory* %call_45a6a9, %struct.Memory** %MEMORY

  ; Code: jne .L_45a6c2	 RIP: 45a6ad	 Bytes: 6
  %loadMem_45a6ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a6ad = call %struct.Memory* @routine_jne_.L_45a6c2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a6ad, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_45a6ad, %struct.Memory** %MEMORY

  %loadBr_45a6ad = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45a6ad = icmp eq i8 %loadBr_45a6ad, 1
  br i1 %cmpBr_45a6ad, label %block_.L_45a6c2, label %block_45a6b3

block_45a6b3:
  ; Code: movq $0x4c21e6, %rdi	 RIP: 45a6b3	 Bytes: 10
  %loadMem_45a6b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a6b3 = call %struct.Memory* @routine_movq__0x4c21e6___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a6b3)
  store %struct.Memory* %call_45a6b3, %struct.Memory** %MEMORY

  ; Code: callq .no_mem_exit	 RIP: 45a6bd	 Bytes: 5
  %loadMem1_45a6bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45a6bd = call %struct.Memory* @routine_callq_.no_mem_exit(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45a6bd, i64 -4813, i64 5, i64 5)
  store %struct.Memory* %call1_45a6bd, %struct.Memory** %MEMORY

  %loadMem2_45a6bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45a6bd = load i64, i64* %3
  %call2_45a6bd = call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* %0, i64  %loadPC_45a6bd, %struct.Memory* %loadMem2_45a6bd)
  store %struct.Memory* %call2_45a6bd, %struct.Memory** %MEMORY

  ; Code: .L_45a6c2:	 RIP: 45a6c2	 Bytes: 0
  br label %block_.L_45a6c2
block_.L_45a6c2:

  ; Code: movl $0x10, %eax	 RIP: 45a6c2	 Bytes: 5
  %loadMem_45a6c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a6c2 = call %struct.Memory* @routine_movl__0x10___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a6c2)
  store %struct.Memory* %call_45a6c2, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 45a6c7	 Bytes: 2
  %loadMem_45a6c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a6c7 = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a6c7)
  store %struct.Memory* %call_45a6c7, %struct.Memory** %MEMORY

  ; Code: callq .malloc_plt	 RIP: 45a6c9	 Bytes: 5
  %loadMem1_45a6c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45a6c9 = call %struct.Memory* @routine_callq_.malloc_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45a6c9, i64 -365945, i64 5, i64 5)
  store %struct.Memory* %call1_45a6c9, %struct.Memory** %MEMORY

  %loadMem2_45a6c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45a6c9 = load i64, i64* %3
  %call2_45a6c9 = call %struct.Memory* @ext_malloc(%struct.State* %0, i64  %loadPC_45a6c9, %struct.Memory* %loadMem2_45a6c9)
  store %struct.Memory* %call2_45a6c9, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x6cc360	 RIP: 45a6ce	 Bytes: 8
  %loadMem_45a6ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a6ce = call %struct.Memory* @routine_movq__rax__0x6cc360(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a6ce)
  store %struct.Memory* %call_45a6ce, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 45a6d6	 Bytes: 4
  %loadMem_45a6d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a6d6 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a6d6)
  store %struct.Memory* %call_45a6d6, %struct.Memory** %MEMORY

  ; Code: jne .L_45a6ef	 RIP: 45a6da	 Bytes: 6
  %loadMem_45a6da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a6da = call %struct.Memory* @routine_jne_.L_45a6ef(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a6da, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_45a6da, %struct.Memory** %MEMORY

  %loadBr_45a6da = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45a6da = icmp eq i8 %loadBr_45a6da, 1
  br i1 %cmpBr_45a6da, label %block_.L_45a6ef, label %block_45a6e0

block_45a6e0:
  ; Code: movq $0x4c220e, %rdi	 RIP: 45a6e0	 Bytes: 10
  %loadMem_45a6e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a6e0 = call %struct.Memory* @routine_movq__0x4c220e___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a6e0)
  store %struct.Memory* %call_45a6e0, %struct.Memory** %MEMORY

  ; Code: callq .no_mem_exit	 RIP: 45a6ea	 Bytes: 5
  %loadMem1_45a6ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45a6ea = call %struct.Memory* @routine_callq_.no_mem_exit(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45a6ea, i64 -4858, i64 5, i64 5)
  store %struct.Memory* %call1_45a6ea, %struct.Memory** %MEMORY

  %loadMem2_45a6ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45a6ea = load i64, i64* %3
  %call2_45a6ea = call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* %0, i64  %loadPC_45a6ea, %struct.Memory* %loadMem2_45a6ea)
  store %struct.Memory* %call2_45a6ea, %struct.Memory** %MEMORY

  ; Code: .L_45a6ef:	 RIP: 45a6ef	 Bytes: 0
  br label %block_.L_45a6ef
block_.L_45a6ef:

  ; Code: movl $0x0, -0x10(%rbp)	 RIP: 45a6ef	 Bytes: 7
  %loadMem_45a6ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a6ef = call %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a6ef)
  store %struct.Memory* %call_45a6ef, %struct.Memory** %MEMORY

  ; Code: .L_45a6f6:	 RIP: 45a6f6	 Bytes: 0
  br label %block_.L_45a6f6
block_.L_45a6f6:

  ; Code: cmpl $0x2, -0x10(%rbp)	 RIP: 45a6f6	 Bytes: 4
  %loadMem_45a6f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a6f6 = call %struct.Memory* @routine_cmpl__0x2__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a6f6)
  store %struct.Memory* %call_45a6f6, %struct.Memory** %MEMORY

  ; Code: jge .L_45a871	 RIP: 45a6fa	 Bytes: 6
  %loadMem_45a6fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a6fa = call %struct.Memory* @routine_jge_.L_45a871(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a6fa, i8* %BRANCH_TAKEN, i64 375, i64 6, i64 6)
  store %struct.Memory* %call_45a6fa, %struct.Memory** %MEMORY

  %loadBr_45a6fa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45a6fa = icmp eq i8 %loadBr_45a6fa, 1
  br i1 %cmpBr_45a6fa, label %block_.L_45a871, label %block_45a700

block_45a700:
  ; Code: movq 0x6cb900, %rax	 RIP: 45a700	 Bytes: 8
  %loadMem_45a700 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a700 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a700)
  store %struct.Memory* %call_45a700, %struct.Memory** %MEMORY

  ; Code: movl 0x24(%rax), %ecx	 RIP: 45a708	 Bytes: 3
  %loadMem_45a708 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a708 = call %struct.Memory* @routine_movl_0x24__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a708)
  store %struct.Memory* %call_45a708, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 45a70b	 Bytes: 3
  %loadMem_45a70b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a70b = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a70b)
  store %struct.Memory* %call_45a70b, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rax	 RIP: 45a70e	 Bytes: 3
  %loadMem_45a70e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a70e = call %struct.Memory* @routine_movslq__ecx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a70e)
  store %struct.Memory* %call_45a70e, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rax	 RIP: 45a711	 Bytes: 4
  %loadMem_45a711 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a711 = call %struct.Memory* @routine_shlq__0x2___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a711)
  store %struct.Memory* %call_45a711, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 45a715	 Bytes: 3
  %loadMem_45a715 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a715 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a715)
  store %struct.Memory* %call_45a715, %struct.Memory** %MEMORY

  ; Code: callq .malloc_plt	 RIP: 45a718	 Bytes: 5
  %loadMem1_45a718 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45a718 = call %struct.Memory* @routine_callq_.malloc_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45a718, i64 -366024, i64 5, i64 5)
  store %struct.Memory* %call1_45a718, %struct.Memory** %MEMORY

  %loadMem2_45a718 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45a718 = load i64, i64* %3
  %call2_45a718 = call %struct.Memory* @ext_malloc(%struct.State* %0, i64  %loadPC_45a718, %struct.Memory* %loadMem2_45a718)
  store %struct.Memory* %call2_45a718, %struct.Memory** %MEMORY

  ; Code: movq 0x6cc340, %rdi	 RIP: 45a71d	 Bytes: 8
  %loadMem_45a71d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a71d = call %struct.Memory* @routine_movq_0x6cc340___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a71d)
  store %struct.Memory* %call_45a71d, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 45a725	 Bytes: 4
  %loadMem_45a725 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a725 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a725)
  store %struct.Memory* %call_45a725, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rdi,%rdx,8)	 RIP: 45a729	 Bytes: 4
  %loadMem_45a729 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a729 = call %struct.Memory* @routine_movq__rax____rdi__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a729)
  store %struct.Memory* %call_45a729, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 45a72d	 Bytes: 4
  %loadMem_45a72d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a72d = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a72d)
  store %struct.Memory* %call_45a72d, %struct.Memory** %MEMORY

  ; Code: jne .L_45a746	 RIP: 45a731	 Bytes: 6
  %loadMem_45a731 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a731 = call %struct.Memory* @routine_jne_.L_45a746(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a731, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_45a731, %struct.Memory** %MEMORY

  %loadBr_45a731 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45a731 = icmp eq i8 %loadBr_45a731, 1
  br i1 %cmpBr_45a731, label %block_.L_45a746, label %block_45a737

block_45a737:
  ; Code: movq $0x4c2151, %rdi	 RIP: 45a737	 Bytes: 10
  %loadMem_45a737 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a737 = call %struct.Memory* @routine_movq__0x4c2151___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a737)
  store %struct.Memory* %call_45a737, %struct.Memory** %MEMORY

  ; Code: callq .no_mem_exit	 RIP: 45a741	 Bytes: 5
  %loadMem1_45a741 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45a741 = call %struct.Memory* @routine_callq_.no_mem_exit(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45a741, i64 -4945, i64 5, i64 5)
  store %struct.Memory* %call1_45a741, %struct.Memory** %MEMORY

  %loadMem2_45a741 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45a741 = load i64, i64* %3
  %call2_45a741 = call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* %0, i64  %loadPC_45a741, %struct.Memory* %loadMem2_45a741)
  store %struct.Memory* %call2_45a741, %struct.Memory** %MEMORY

  ; Code: .L_45a746:	 RIP: 45a746	 Bytes: 0
  br label %block_.L_45a746
block_.L_45a746:

  ; Code: movq 0x6cb900, %rax	 RIP: 45a746	 Bytes: 8
  %loadMem_45a746 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a746 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a746)
  store %struct.Memory* %call_45a746, %struct.Memory** %MEMORY

  ; Code: movl 0x24(%rax), %ecx	 RIP: 45a74e	 Bytes: 3
  %loadMem_45a74e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a74e = call %struct.Memory* @routine_movl_0x24__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a74e)
  store %struct.Memory* %call_45a74e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 45a751	 Bytes: 3
  %loadMem_45a751 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a751 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a751)
  store %struct.Memory* %call_45a751, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rax	 RIP: 45a754	 Bytes: 3
  %loadMem_45a754 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a754 = call %struct.Memory* @routine_movslq__ecx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a754)
  store %struct.Memory* %call_45a754, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rax	 RIP: 45a757	 Bytes: 4
  %loadMem_45a757 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a757 = call %struct.Memory* @routine_shlq__0x2___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a757)
  store %struct.Memory* %call_45a757, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 45a75b	 Bytes: 3
  %loadMem_45a75b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a75b = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a75b)
  store %struct.Memory* %call_45a75b, %struct.Memory** %MEMORY

  ; Code: callq .malloc_plt	 RIP: 45a75e	 Bytes: 5
  %loadMem1_45a75e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45a75e = call %struct.Memory* @routine_callq_.malloc_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45a75e, i64 -366094, i64 5, i64 5)
  store %struct.Memory* %call1_45a75e, %struct.Memory** %MEMORY

  %loadMem2_45a75e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45a75e = load i64, i64* %3
  %call2_45a75e = call %struct.Memory* @ext_malloc(%struct.State* %0, i64  %loadPC_45a75e, %struct.Memory* %loadMem2_45a75e)
  store %struct.Memory* %call2_45a75e, %struct.Memory** %MEMORY

  ; Code: movq 0x6cc348, %rdi	 RIP: 45a763	 Bytes: 8
  %loadMem_45a763 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a763 = call %struct.Memory* @routine_movq_0x6cc348___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a763)
  store %struct.Memory* %call_45a763, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 45a76b	 Bytes: 4
  %loadMem_45a76b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a76b = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a76b)
  store %struct.Memory* %call_45a76b, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rdi,%rdx,8)	 RIP: 45a76f	 Bytes: 4
  %loadMem_45a76f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a76f = call %struct.Memory* @routine_movq__rax____rdi__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a76f)
  store %struct.Memory* %call_45a76f, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 45a773	 Bytes: 4
  %loadMem_45a773 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a773 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a773)
  store %struct.Memory* %call_45a773, %struct.Memory** %MEMORY

  ; Code: jne .L_45a78c	 RIP: 45a777	 Bytes: 6
  %loadMem_45a777 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a777 = call %struct.Memory* @routine_jne_.L_45a78c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a777, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_45a777, %struct.Memory** %MEMORY

  %loadBr_45a777 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45a777 = icmp eq i8 %loadBr_45a777, 1
  br i1 %cmpBr_45a777, label %block_.L_45a78c, label %block_45a77d

block_45a77d:
  ; Code: movq $0x4c2184, %rdi	 RIP: 45a77d	 Bytes: 10
  %loadMem_45a77d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a77d = call %struct.Memory* @routine_movq__0x4c2184___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a77d)
  store %struct.Memory* %call_45a77d, %struct.Memory** %MEMORY

  ; Code: callq .no_mem_exit	 RIP: 45a787	 Bytes: 5
  %loadMem1_45a787 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45a787 = call %struct.Memory* @routine_callq_.no_mem_exit(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45a787, i64 -5015, i64 5, i64 5)
  store %struct.Memory* %call1_45a787, %struct.Memory** %MEMORY

  %loadMem2_45a787 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45a787 = load i64, i64* %3
  %call2_45a787 = call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* %0, i64  %loadPC_45a787, %struct.Memory* %loadMem2_45a787)
  store %struct.Memory* %call2_45a787, %struct.Memory** %MEMORY

  ; Code: .L_45a78c:	 RIP: 45a78c	 Bytes: 0
  br label %block_.L_45a78c
block_.L_45a78c:

  ; Code: movq 0x6cb900, %rax	 RIP: 45a78c	 Bytes: 8
  %loadMem_45a78c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a78c = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a78c)
  store %struct.Memory* %call_45a78c, %struct.Memory** %MEMORY

  ; Code: movl 0x24(%rax), %ecx	 RIP: 45a794	 Bytes: 3
  %loadMem_45a794 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a794 = call %struct.Memory* @routine_movl_0x24__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a794)
  store %struct.Memory* %call_45a794, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 45a797	 Bytes: 3
  %loadMem_45a797 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a797 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a797)
  store %struct.Memory* %call_45a797, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rax	 RIP: 45a79a	 Bytes: 3
  %loadMem_45a79a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a79a = call %struct.Memory* @routine_movslq__ecx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a79a)
  store %struct.Memory* %call_45a79a, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rax	 RIP: 45a79d	 Bytes: 4
  %loadMem_45a79d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a79d = call %struct.Memory* @routine_shlq__0x2___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a79d)
  store %struct.Memory* %call_45a79d, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 45a7a1	 Bytes: 3
  %loadMem_45a7a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a7a1 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a7a1)
  store %struct.Memory* %call_45a7a1, %struct.Memory** %MEMORY

  ; Code: callq .malloc_plt	 RIP: 45a7a4	 Bytes: 5
  %loadMem1_45a7a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45a7a4 = call %struct.Memory* @routine_callq_.malloc_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45a7a4, i64 -366164, i64 5, i64 5)
  store %struct.Memory* %call1_45a7a4, %struct.Memory** %MEMORY

  %loadMem2_45a7a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45a7a4 = load i64, i64* %3
  %call2_45a7a4 = call %struct.Memory* @ext_malloc(%struct.State* %0, i64  %loadPC_45a7a4, %struct.Memory* %loadMem2_45a7a4)
  store %struct.Memory* %call2_45a7a4, %struct.Memory** %MEMORY

  ; Code: movq 0x6cc350, %rdi	 RIP: 45a7a9	 Bytes: 8
  %loadMem_45a7a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a7a9 = call %struct.Memory* @routine_movq_0x6cc350___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a7a9)
  store %struct.Memory* %call_45a7a9, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 45a7b1	 Bytes: 4
  %loadMem_45a7b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a7b1 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a7b1)
  store %struct.Memory* %call_45a7b1, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rdi,%rdx,8)	 RIP: 45a7b5	 Bytes: 4
  %loadMem_45a7b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a7b5 = call %struct.Memory* @routine_movq__rax____rdi__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a7b5)
  store %struct.Memory* %call_45a7b5, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 45a7b9	 Bytes: 4
  %loadMem_45a7b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a7b9 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a7b9)
  store %struct.Memory* %call_45a7b9, %struct.Memory** %MEMORY

  ; Code: jne .L_45a7d2	 RIP: 45a7bd	 Bytes: 6
  %loadMem_45a7bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a7bd = call %struct.Memory* @routine_jne_.L_45a7d2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a7bd, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_45a7bd, %struct.Memory** %MEMORY

  %loadBr_45a7bd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45a7bd = icmp eq i8 %loadBr_45a7bd, 1
  br i1 %cmpBr_45a7bd, label %block_.L_45a7d2, label %block_45a7c3

block_45a7c3:
  ; Code: movq $0x4c21b5, %rdi	 RIP: 45a7c3	 Bytes: 10
  %loadMem_45a7c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a7c3 = call %struct.Memory* @routine_movq__0x4c21b5___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a7c3)
  store %struct.Memory* %call_45a7c3, %struct.Memory** %MEMORY

  ; Code: callq .no_mem_exit	 RIP: 45a7cd	 Bytes: 5
  %loadMem1_45a7cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45a7cd = call %struct.Memory* @routine_callq_.no_mem_exit(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45a7cd, i64 -5085, i64 5, i64 5)
  store %struct.Memory* %call1_45a7cd, %struct.Memory** %MEMORY

  %loadMem2_45a7cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45a7cd = load i64, i64* %3
  %call2_45a7cd = call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* %0, i64  %loadPC_45a7cd, %struct.Memory* %loadMem2_45a7cd)
  store %struct.Memory* %call2_45a7cd, %struct.Memory** %MEMORY

  ; Code: .L_45a7d2:	 RIP: 45a7d2	 Bytes: 0
  br label %block_.L_45a7d2
block_.L_45a7d2:

  ; Code: movq 0x6cb900, %rax	 RIP: 45a7d2	 Bytes: 8
  %loadMem_45a7d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a7d2 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a7d2)
  store %struct.Memory* %call_45a7d2, %struct.Memory** %MEMORY

  ; Code: movl 0x24(%rax), %ecx	 RIP: 45a7da	 Bytes: 3
  %loadMem_45a7da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a7da = call %struct.Memory* @routine_movl_0x24__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a7da)
  store %struct.Memory* %call_45a7da, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 45a7dd	 Bytes: 3
  %loadMem_45a7dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a7dd = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a7dd)
  store %struct.Memory* %call_45a7dd, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rax	 RIP: 45a7e0	 Bytes: 3
  %loadMem_45a7e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a7e0 = call %struct.Memory* @routine_movslq__ecx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a7e0)
  store %struct.Memory* %call_45a7e0, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rax	 RIP: 45a7e3	 Bytes: 4
  %loadMem_45a7e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a7e3 = call %struct.Memory* @routine_shlq__0x2___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a7e3)
  store %struct.Memory* %call_45a7e3, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 45a7e7	 Bytes: 3
  %loadMem_45a7e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a7e7 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a7e7)
  store %struct.Memory* %call_45a7e7, %struct.Memory** %MEMORY

  ; Code: callq .malloc_plt	 RIP: 45a7ea	 Bytes: 5
  %loadMem1_45a7ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45a7ea = call %struct.Memory* @routine_callq_.malloc_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45a7ea, i64 -366234, i64 5, i64 5)
  store %struct.Memory* %call1_45a7ea, %struct.Memory** %MEMORY

  %loadMem2_45a7ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45a7ea = load i64, i64* %3
  %call2_45a7ea = call %struct.Memory* @ext_malloc(%struct.State* %0, i64  %loadPC_45a7ea, %struct.Memory* %loadMem2_45a7ea)
  store %struct.Memory* %call2_45a7ea, %struct.Memory** %MEMORY

  ; Code: movq 0x6cc358, %rdi	 RIP: 45a7ef	 Bytes: 8
  %loadMem_45a7ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a7ef = call %struct.Memory* @routine_movq_0x6cc358___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a7ef)
  store %struct.Memory* %call_45a7ef, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 45a7f7	 Bytes: 4
  %loadMem_45a7f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a7f7 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a7f7)
  store %struct.Memory* %call_45a7f7, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rdi,%rdx,8)	 RIP: 45a7fb	 Bytes: 4
  %loadMem_45a7fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a7fb = call %struct.Memory* @routine_movq__rax____rdi__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a7fb)
  store %struct.Memory* %call_45a7fb, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 45a7ff	 Bytes: 4
  %loadMem_45a7ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a7ff = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a7ff)
  store %struct.Memory* %call_45a7ff, %struct.Memory** %MEMORY

  ; Code: jne .L_45a818	 RIP: 45a803	 Bytes: 6
  %loadMem_45a803 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a803 = call %struct.Memory* @routine_jne_.L_45a818(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a803, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_45a803, %struct.Memory** %MEMORY

  %loadBr_45a803 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45a803 = icmp eq i8 %loadBr_45a803, 1
  br i1 %cmpBr_45a803, label %block_.L_45a818, label %block_45a809

block_45a809:
  ; Code: movq $0x4c21e6, %rdi	 RIP: 45a809	 Bytes: 10
  %loadMem_45a809 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a809 = call %struct.Memory* @routine_movq__0x4c21e6___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a809)
  store %struct.Memory* %call_45a809, %struct.Memory** %MEMORY

  ; Code: callq .no_mem_exit	 RIP: 45a813	 Bytes: 5
  %loadMem1_45a813 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45a813 = call %struct.Memory* @routine_callq_.no_mem_exit(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45a813, i64 -5155, i64 5, i64 5)
  store %struct.Memory* %call1_45a813, %struct.Memory** %MEMORY

  %loadMem2_45a813 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45a813 = load i64, i64* %3
  %call2_45a813 = call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* %0, i64  %loadPC_45a813, %struct.Memory* %loadMem2_45a813)
  store %struct.Memory* %call2_45a813, %struct.Memory** %MEMORY

  ; Code: .L_45a818:	 RIP: 45a818	 Bytes: 0
  br label %block_.L_45a818
block_.L_45a818:

  ; Code: movq 0x6cb900, %rax	 RIP: 45a818	 Bytes: 8
  %loadMem_45a818 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a818 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a818)
  store %struct.Memory* %call_45a818, %struct.Memory** %MEMORY

  ; Code: movl 0x24(%rax), %ecx	 RIP: 45a820	 Bytes: 3
  %loadMem_45a820 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a820 = call %struct.Memory* @routine_movl_0x24__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a820)
  store %struct.Memory* %call_45a820, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 45a823	 Bytes: 3
  %loadMem_45a823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a823 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a823)
  store %struct.Memory* %call_45a823, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rax	 RIP: 45a826	 Bytes: 3
  %loadMem_45a826 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a826 = call %struct.Memory* @routine_movslq__ecx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a826)
  store %struct.Memory* %call_45a826, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rax	 RIP: 45a829	 Bytes: 4
  %loadMem_45a829 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a829 = call %struct.Memory* @routine_shlq__0x2___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a829)
  store %struct.Memory* %call_45a829, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 45a82d	 Bytes: 3
  %loadMem_45a82d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a82d = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a82d)
  store %struct.Memory* %call_45a82d, %struct.Memory** %MEMORY

  ; Code: callq .malloc_plt	 RIP: 45a830	 Bytes: 5
  %loadMem1_45a830 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45a830 = call %struct.Memory* @routine_callq_.malloc_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45a830, i64 -366304, i64 5, i64 5)
  store %struct.Memory* %call1_45a830, %struct.Memory** %MEMORY

  %loadMem2_45a830 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45a830 = load i64, i64* %3
  %call2_45a830 = call %struct.Memory* @ext_malloc(%struct.State* %0, i64  %loadPC_45a830, %struct.Memory* %loadMem2_45a830)
  store %struct.Memory* %call2_45a830, %struct.Memory** %MEMORY

  ; Code: movq 0x6cc360, %rdi	 RIP: 45a835	 Bytes: 8
  %loadMem_45a835 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a835 = call %struct.Memory* @routine_movq_0x6cc360___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a835)
  store %struct.Memory* %call_45a835, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 45a83d	 Bytes: 4
  %loadMem_45a83d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a83d = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a83d)
  store %struct.Memory* %call_45a83d, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rdi,%rdx,8)	 RIP: 45a841	 Bytes: 4
  %loadMem_45a841 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a841 = call %struct.Memory* @routine_movq__rax____rdi__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a841)
  store %struct.Memory* %call_45a841, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 45a845	 Bytes: 4
  %loadMem_45a845 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a845 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a845)
  store %struct.Memory* %call_45a845, %struct.Memory** %MEMORY

  ; Code: jne .L_45a85e	 RIP: 45a849	 Bytes: 6
  %loadMem_45a849 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a849 = call %struct.Memory* @routine_jne_.L_45a85e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a849, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_45a849, %struct.Memory** %MEMORY

  %loadBr_45a849 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45a849 = icmp eq i8 %loadBr_45a849, 1
  br i1 %cmpBr_45a849, label %block_.L_45a85e, label %block_45a84f

block_45a84f:
  ; Code: movq $0x4c220e, %rdi	 RIP: 45a84f	 Bytes: 10
  %loadMem_45a84f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a84f = call %struct.Memory* @routine_movq__0x4c220e___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a84f)
  store %struct.Memory* %call_45a84f, %struct.Memory** %MEMORY

  ; Code: callq .no_mem_exit	 RIP: 45a859	 Bytes: 5
  %loadMem1_45a859 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45a859 = call %struct.Memory* @routine_callq_.no_mem_exit(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45a859, i64 -5225, i64 5, i64 5)
  store %struct.Memory* %call1_45a859, %struct.Memory** %MEMORY

  %loadMem2_45a859 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45a859 = load i64, i64* %3
  %call2_45a859 = call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* %0, i64  %loadPC_45a859, %struct.Memory* %loadMem2_45a859)
  store %struct.Memory* %call2_45a859, %struct.Memory** %MEMORY

  ; Code: .L_45a85e:	 RIP: 45a85e	 Bytes: 0
  br label %block_.L_45a85e
block_.L_45a85e:

  ; Code: jmpq .L_45a863	 RIP: 45a85e	 Bytes: 5
  %loadMem_45a85e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a85e = call %struct.Memory* @routine_jmpq_.L_45a863(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a85e, i64 5, i64 5)
  store %struct.Memory* %call_45a85e, %struct.Memory** %MEMORY

  br label %block_.L_45a863

  ; Code: .L_45a863:	 RIP: 45a863	 Bytes: 0
block_.L_45a863:

  ; Code: movl -0x10(%rbp), %eax	 RIP: 45a863	 Bytes: 3
  %loadMem_45a863 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a863 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a863)
  store %struct.Memory* %call_45a863, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 45a866	 Bytes: 3
  %loadMem_45a866 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a866 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a866)
  store %struct.Memory* %call_45a866, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x10(%rbp)	 RIP: 45a869	 Bytes: 3
  %loadMem_45a869 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a869 = call %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a869)
  store %struct.Memory* %call_45a869, %struct.Memory** %MEMORY

  ; Code: jmpq .L_45a6f6	 RIP: 45a86c	 Bytes: 5
  %loadMem_45a86c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a86c = call %struct.Memory* @routine_jmpq_.L_45a6f6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a86c, i64 -374, i64 5)
  store %struct.Memory* %call_45a86c, %struct.Memory** %MEMORY

  br label %block_.L_45a6f6

  ; Code: .L_45a871:	 RIP: 45a871	 Bytes: 0
block_.L_45a871:

  ; Code: movq 0x6cb8f8, %rax	 RIP: 45a871	 Bytes: 8
  %loadMem_45a871 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a871 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a871)
  store %struct.Memory* %call_45a871, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x984(%rax)	 RIP: 45a879	 Bytes: 7
  %loadMem_45a879 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a879 = call %struct.Memory* @routine_cmpl__0x2__0x984__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a879)
  store %struct.Memory* %call_45a879, %struct.Memory** %MEMORY

  ; Code: jne .L_45a8f2	 RIP: 45a880	 Bytes: 6
  %loadMem_45a880 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a880 = call %struct.Memory* @routine_jne_.L_45a8f2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a880, i8* %BRANCH_TAKEN, i64 114, i64 6, i64 6)
  store %struct.Memory* %call_45a880, %struct.Memory** %MEMORY

  %loadBr_45a880 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45a880 = icmp eq i8 %loadBr_45a880, 1
  br i1 %cmpBr_45a880, label %block_.L_45a8f2, label %block_45a886

block_45a886:
  ; Code: movl $0x0, -0x10(%rbp)	 RIP: 45a886	 Bytes: 7
  %loadMem_45a886 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a886 = call %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a886)
  store %struct.Memory* %call_45a886, %struct.Memory** %MEMORY

  ; Code: .L_45a88d:	 RIP: 45a88d	 Bytes: 0
  br label %block_.L_45a88d
block_.L_45a88d:

  ; Code: cmpl $0x2, -0x10(%rbp)	 RIP: 45a88d	 Bytes: 4
  %loadMem_45a88d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a88d = call %struct.Memory* @routine_cmpl__0x2__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a88d)
  store %struct.Memory* %call_45a88d, %struct.Memory** %MEMORY

  ; Code: jge .L_45a8ed	 RIP: 45a891	 Bytes: 6
  %loadMem_45a891 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a891 = call %struct.Memory* @routine_jge_.L_45a8ed(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a891, i8* %BRANCH_TAKEN, i64 92, i64 6, i64 6)
  store %struct.Memory* %call_45a891, %struct.Memory** %MEMORY

  %loadBr_45a891 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45a891 = icmp eq i8 %loadBr_45a891, 1
  br i1 %cmpBr_45a891, label %block_.L_45a8ed, label %block_45a897

block_45a897:
  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 45a897	 Bytes: 7
  %loadMem_45a897 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a897 = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a897)
  store %struct.Memory* %call_45a897, %struct.Memory** %MEMORY

  ; Code: .L_45a89e:	 RIP: 45a89e	 Bytes: 0
  br label %block_.L_45a89e
block_.L_45a89e:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 45a89e	 Bytes: 3
  %loadMem_45a89e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a89e = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a89e)
  store %struct.Memory* %call_45a89e, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 45a8a1	 Bytes: 8
  %loadMem_45a8a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a8a1 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a8a1)
  store %struct.Memory* %call_45a8a1, %struct.Memory** %MEMORY

  ; Code: cmpl 0x24(%rcx), %eax	 RIP: 45a8a9	 Bytes: 3
  %loadMem_45a8a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a8a9 = call %struct.Memory* @routine_cmpl_0x24__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a8a9)
  store %struct.Memory* %call_45a8a9, %struct.Memory** %MEMORY

  ; Code: jg .L_45a8da	 RIP: 45a8ac	 Bytes: 6
  %loadMem_45a8ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a8ac = call %struct.Memory* @routine_jg_.L_45a8da(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a8ac, i8* %BRANCH_TAKEN, i64 46, i64 6, i64 6)
  store %struct.Memory* %call_45a8ac, %struct.Memory** %MEMORY

  %loadBr_45a8ac = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45a8ac = icmp eq i8 %loadBr_45a8ac, 1
  br i1 %cmpBr_45a8ac, label %block_.L_45a8da, label %block_45a8b2

block_45a8b2:
  ; Code: movl -0x14(%rbp), %eax	 RIP: 45a8b2	 Bytes: 3
  %loadMem_45a8b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a8b2 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a8b2)
  store %struct.Memory* %call_45a8b2, %struct.Memory** %MEMORY

  ; Code: movq 0x6cc360, %rcx	 RIP: 45a8b5	 Bytes: 8
  %loadMem_45a8b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a8b5 = call %struct.Memory* @routine_movq_0x6cc360___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a8b5)
  store %struct.Memory* %call_45a8b5, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 45a8bd	 Bytes: 4
  %loadMem_45a8bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a8bd = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a8bd)
  store %struct.Memory* %call_45a8bd, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 45a8c1	 Bytes: 4
  %loadMem_45a8c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a8c1 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a8c1)
  store %struct.Memory* %call_45a8c1, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 45a8c5	 Bytes: 4
  %loadMem_45a8c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a8c5 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a8c5)
  store %struct.Memory* %call_45a8c5, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 45a8c9	 Bytes: 3
  %loadMem_45a8c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a8c9 = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a8c9)
  store %struct.Memory* %call_45a8c9, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %eax	 RIP: 45a8cc	 Bytes: 3
  %loadMem_45a8cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a8cc = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a8cc)
  store %struct.Memory* %call_45a8cc, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 45a8cf	 Bytes: 3
  %loadMem_45a8cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a8cf = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a8cf)
  store %struct.Memory* %call_45a8cf, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 45a8d2	 Bytes: 3
  %loadMem_45a8d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a8d2 = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a8d2)
  store %struct.Memory* %call_45a8d2, %struct.Memory** %MEMORY

  ; Code: jmpq .L_45a89e	 RIP: 45a8d5	 Bytes: 5
  %loadMem_45a8d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a8d5 = call %struct.Memory* @routine_jmpq_.L_45a89e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a8d5, i64 -55, i64 5)
  store %struct.Memory* %call_45a8d5, %struct.Memory** %MEMORY

  br label %block_.L_45a89e

  ; Code: .L_45a8da:	 RIP: 45a8da	 Bytes: 0
block_.L_45a8da:

  ; Code: jmpq .L_45a8df	 RIP: 45a8da	 Bytes: 5
  %loadMem_45a8da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a8da = call %struct.Memory* @routine_jmpq_.L_45a8df(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a8da, i64 5, i64 5)
  store %struct.Memory* %call_45a8da, %struct.Memory** %MEMORY

  br label %block_.L_45a8df

  ; Code: .L_45a8df:	 RIP: 45a8df	 Bytes: 0
block_.L_45a8df:

  ; Code: movl -0x10(%rbp), %eax	 RIP: 45a8df	 Bytes: 3
  %loadMem_45a8df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a8df = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a8df)
  store %struct.Memory* %call_45a8df, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 45a8e2	 Bytes: 3
  %loadMem_45a8e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a8e2 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a8e2)
  store %struct.Memory* %call_45a8e2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x10(%rbp)	 RIP: 45a8e5	 Bytes: 3
  %loadMem_45a8e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a8e5 = call %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a8e5)
  store %struct.Memory* %call_45a8e5, %struct.Memory** %MEMORY

  ; Code: jmpq .L_45a88d	 RIP: 45a8e8	 Bytes: 5
  %loadMem_45a8e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a8e8 = call %struct.Memory* @routine_jmpq_.L_45a88d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a8e8, i64 -91, i64 5)
  store %struct.Memory* %call_45a8e8, %struct.Memory** %MEMORY

  br label %block_.L_45a88d

  ; Code: .L_45a8ed:	 RIP: 45a8ed	 Bytes: 0
block_.L_45a8ed:

  ; Code: jmpq .L_45a9a2	 RIP: 45a8ed	 Bytes: 5
  %loadMem_45a8ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a8ed = call %struct.Memory* @routine_jmpq_.L_45a9a2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a8ed, i64 181, i64 5)
  store %struct.Memory* %call_45a8ed, %struct.Memory** %MEMORY

  br label %block_.L_45a9a2

  ; Code: .L_45a8f2:	 RIP: 45a8f2	 Bytes: 0
block_.L_45a8f2:

  ; Code: movl $0x0, -0x10(%rbp)	 RIP: 45a8f2	 Bytes: 7
  %loadMem_45a8f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a8f2 = call %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a8f2)
  store %struct.Memory* %call_45a8f2, %struct.Memory** %MEMORY

  ; Code: .L_45a8f9:	 RIP: 45a8f9	 Bytes: 0
  br label %block_.L_45a8f9
block_.L_45a8f9:

  ; Code: cmpl $0x2, -0x10(%rbp)	 RIP: 45a8f9	 Bytes: 4
  %loadMem_45a8f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a8f9 = call %struct.Memory* @routine_cmpl__0x2__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a8f9)
  store %struct.Memory* %call_45a8f9, %struct.Memory** %MEMORY

  ; Code: jge .L_45a99d	 RIP: 45a8fd	 Bytes: 6
  %loadMem_45a8fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a8fd = call %struct.Memory* @routine_jge_.L_45a99d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a8fd, i8* %BRANCH_TAKEN, i64 160, i64 6, i64 6)
  store %struct.Memory* %call_45a8fd, %struct.Memory** %MEMORY

  %loadBr_45a8fd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45a8fd = icmp eq i8 %loadBr_45a8fd, 1
  br i1 %cmpBr_45a8fd, label %block_.L_45a99d, label %block_45a903

block_45a903:
  ; Code: movl -0x14(%rbp), %eax	 RIP: 45a903	 Bytes: 3
  %loadMem_45a903 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a903 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a903)
  store %struct.Memory* %call_45a903, %struct.Memory** %MEMORY

  ; Code: movq 0x6cc360, %rcx	 RIP: 45a906	 Bytes: 8
  %loadMem_45a906 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a906 = call %struct.Memory* @routine_movq_0x6cc360___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a906)
  store %struct.Memory* %call_45a906, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 45a90e	 Bytes: 4
  %loadMem_45a90e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a90e = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a90e)
  store %struct.Memory* %call_45a90e, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 45a912	 Bytes: 4
  %loadMem_45a912 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a912 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a912)
  store %struct.Memory* %call_45a912, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 45a916	 Bytes: 8
  %loadMem_45a916 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a916 = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a916)
  store %struct.Memory* %call_45a916, %struct.Memory** %MEMORY

  ; Code: movslq 0x24(%rdx), %rdx	 RIP: 45a91e	 Bytes: 4
  %loadMem_45a91e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a91e = call %struct.Memory* @routine_movslq_0x24__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a91e)
  store %struct.Memory* %call_45a91e, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 45a922	 Bytes: 3
  %loadMem_45a922 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a922 = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a922)
  store %struct.Memory* %call_45a922, %struct.Memory** %MEMORY

  ; Code: movq 0x6cc360, %rcx	 RIP: 45a925	 Bytes: 8
  %loadMem_45a925 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a925 = call %struct.Memory* @routine_movq_0x6cc360___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a925)
  store %struct.Memory* %call_45a925, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 45a92d	 Bytes: 4
  %loadMem_45a92d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a92d = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a92d)
  store %struct.Memory* %call_45a92d, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 45a931	 Bytes: 4
  %loadMem_45a931 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a931 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a931)
  store %struct.Memory* %call_45a931, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx)	 RIP: 45a935	 Bytes: 2
  %loadMem_45a935 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a935 = call %struct.Memory* @routine_movl__eax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a935)
  store %struct.Memory* %call_45a935, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x4(%rbp)	 RIP: 45a937	 Bytes: 7
  %loadMem_45a937 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a937 = call %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a937)
  store %struct.Memory* %call_45a937, %struct.Memory** %MEMORY

  ; Code: .L_45a93e:	 RIP: 45a93e	 Bytes: 0
  br label %block_.L_45a93e
block_.L_45a93e:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 45a93e	 Bytes: 3
  %loadMem_45a93e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a93e = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a93e)
  store %struct.Memory* %call_45a93e, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 45a941	 Bytes: 8
  %loadMem_45a941 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a941 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a941)
  store %struct.Memory* %call_45a941, %struct.Memory** %MEMORY

  ; Code: cmpl 0x24(%rcx), %eax	 RIP: 45a949	 Bytes: 3
  %loadMem_45a949 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a949 = call %struct.Memory* @routine_cmpl_0x24__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a949)
  store %struct.Memory* %call_45a949, %struct.Memory** %MEMORY

  ; Code: jge .L_45a98a	 RIP: 45a94c	 Bytes: 6
  %loadMem_45a94c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a94c = call %struct.Memory* @routine_jge_.L_45a98a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a94c, i8* %BRANCH_TAKEN, i64 62, i64 6, i64 6)
  store %struct.Memory* %call_45a94c, %struct.Memory** %MEMORY

  %loadBr_45a94c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45a94c = icmp eq i8 %loadBr_45a94c, 1
  br i1 %cmpBr_45a94c, label %block_.L_45a98a, label %block_45a952

block_45a952:
  ; Code: movl $0x2, %eax	 RIP: 45a952	 Bytes: 5
  %loadMem_45a952 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a952 = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a952)
  store %struct.Memory* %call_45a952, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 45a957	 Bytes: 3
  %loadMem_45a957 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a957 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a957)
  store %struct.Memory* %call_45a957, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 45a95a	 Bytes: 3
  %loadMem_45a95a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a95a = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a95a)
  store %struct.Memory* %call_45a95a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 45a95d	 Bytes: 2
  %loadMem_45a95d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a95d = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a95d)
  store %struct.Memory* %call_45a95d, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 45a95f	 Bytes: 1
  %loadMem_45a95f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a95f = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a95f)
  store %struct.Memory* %call_45a95f, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 45a960	 Bytes: 3
  %loadMem_45a960 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a960 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a960)
  store %struct.Memory* %call_45a960, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 45a963	 Bytes: 2
  %loadMem_45a963 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a963 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a963)
  store %struct.Memory* %call_45a963, %struct.Memory** %MEMORY

  ; Code: movq 0x6cc360, %rsi	 RIP: 45a965	 Bytes: 8
  %loadMem_45a965 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a965 = call %struct.Memory* @routine_movq_0x6cc360___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a965)
  store %struct.Memory* %call_45a965, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdi	 RIP: 45a96d	 Bytes: 4
  %loadMem_45a96d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a96d = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a96d)
  store %struct.Memory* %call_45a96d, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%rdi,8), %rsi	 RIP: 45a971	 Bytes: 4
  %loadMem_45a971 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a971 = call %struct.Memory* @routine_movq___rsi__rdi_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a971)
  store %struct.Memory* %call_45a971, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdi	 RIP: 45a975	 Bytes: 4
  %loadMem_45a975 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a975 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a975)
  store %struct.Memory* %call_45a975, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rsi,%rdi,4)	 RIP: 45a979	 Bytes: 3
  %loadMem_45a979 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a979 = call %struct.Memory* @routine_movl__eax____rsi__rdi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a979)
  store %struct.Memory* %call_45a979, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %eax	 RIP: 45a97c	 Bytes: 3
  %loadMem_45a97c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a97c = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a97c)
  store %struct.Memory* %call_45a97c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 45a97f	 Bytes: 3
  %loadMem_45a97f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a97f = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a97f)
  store %struct.Memory* %call_45a97f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 45a982	 Bytes: 3
  %loadMem_45a982 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a982 = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a982)
  store %struct.Memory* %call_45a982, %struct.Memory** %MEMORY

  ; Code: jmpq .L_45a93e	 RIP: 45a985	 Bytes: 5
  %loadMem_45a985 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a985 = call %struct.Memory* @routine_jmpq_.L_45a93e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a985, i64 -71, i64 5)
  store %struct.Memory* %call_45a985, %struct.Memory** %MEMORY

  br label %block_.L_45a93e

  ; Code: .L_45a98a:	 RIP: 45a98a	 Bytes: 0
block_.L_45a98a:

  ; Code: jmpq .L_45a98f	 RIP: 45a98a	 Bytes: 5
  %loadMem_45a98a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a98a = call %struct.Memory* @routine_jmpq_.L_45a98f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a98a, i64 5, i64 5)
  store %struct.Memory* %call_45a98a, %struct.Memory** %MEMORY

  br label %block_.L_45a98f

  ; Code: .L_45a98f:	 RIP: 45a98f	 Bytes: 0
block_.L_45a98f:

  ; Code: movl -0x10(%rbp), %eax	 RIP: 45a98f	 Bytes: 3
  %loadMem_45a98f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a98f = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a98f)
  store %struct.Memory* %call_45a98f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 45a992	 Bytes: 3
  %loadMem_45a992 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a992 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a992)
  store %struct.Memory* %call_45a992, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x10(%rbp)	 RIP: 45a995	 Bytes: 3
  %loadMem_45a995 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a995 = call %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a995)
  store %struct.Memory* %call_45a995, %struct.Memory** %MEMORY

  ; Code: jmpq .L_45a8f9	 RIP: 45a998	 Bytes: 5
  %loadMem_45a998 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a998 = call %struct.Memory* @routine_jmpq_.L_45a8f9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a998, i64 -159, i64 5)
  store %struct.Memory* %call_45a998, %struct.Memory** %MEMORY

  br label %block_.L_45a8f9

  ; Code: .L_45a99d:	 RIP: 45a99d	 Bytes: 0
block_.L_45a99d:

  ; Code: jmpq .L_45a9a2	 RIP: 45a99d	 Bytes: 5
  %loadMem_45a99d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a99d = call %struct.Memory* @routine_jmpq_.L_45a9a2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a99d, i64 5, i64 5)
  store %struct.Memory* %call_45a99d, %struct.Memory** %MEMORY

  br label %block_.L_45a9a2

  ; Code: .L_45a9a2:	 RIP: 45a9a2	 Bytes: 0
block_.L_45a9a2:

  ; Code: addq $0x20, %rsp	 RIP: 45a9a2	 Bytes: 4
  %loadMem_45a9a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a9a2 = call %struct.Memory* @routine_addq__0x20___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a9a2)
  store %struct.Memory* %call_45a9a2, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 45a9a6	 Bytes: 1
  %loadMem_45a9a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a9a6 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a9a6)
  store %struct.Memory* %call_45a9a6, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 45a9a7	 Bytes: 1
  %loadMem_45a9a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45a9a7 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45a9a7)
  store %struct.Memory* %call_45a9a7, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_45a9a7
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

define %struct.Memory* @routine_subq__0x20___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 32)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x10___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 16)
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq_0x6cb8f8___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x6cb8f8_type* @G_0x6cb8f8 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_0x20__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_movl_MINUS0x14__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_shll__0x1___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 1)
  ret %struct.Memory* %12
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = shl i64 %3, 32
  %7 = ashr exact i64 %6, 32
  %8 = shl i64 %4, 32
  %9 = ashr exact i64 %8, 32
  %10 = mul  i64 %9, %7
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967295
  store i64 %12, i64* %2, align 8
  %13 = shl i64 %10, 32
  %14 = ashr exact i64 %13, 32
  %15 = icmp ne i64 %14, %10
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %11, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18) #22
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 0, i8* %25, align 1
  %26 = lshr i32 %11, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %16, i8* %29, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_imull__edx___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RAX
  %13 = load i32, i32* %EDX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
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

define %struct.Memory* @routine_callq_.malloc_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rax__0x6cc338(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6cc338_type* @G_0x6cc338 to i64), i64 %9)
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

define %struct.Memory* @routine_jne_.L_45a45b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x4c2127___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4c2127_type* @G__0x4c2127 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_callq_.no_mem_exit(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_cmpl__0x2__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
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

define %struct.Memory* @routine_jge_.L_45a60e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_0x24__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_movslq__ecx___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
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

define %struct.Memory* @routine_shlq__0x3___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 3)
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




define %struct.Memory* @routine_movq_0x6cc338___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G_0x6cc338_type* @G_0x6cc338 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movq__rax____rdi__rdx_8_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDI
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %RAX
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %19)
  ret %struct.Memory* %22
}




define %struct.Memory* @routine_jne_.L_45a4b2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl_0x24__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 36
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
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

define %struct.Memory* @routine_jg_.L_45a5fb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x40___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 64)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq___rdi__rcx_8____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %RCX
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax____rcx__rdi_8_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RDI
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %RAX
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %19)
  ret %struct.Memory* %22
}




define %struct.Memory* @routine_jne_.L_45a50a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__0x1__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x8__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 8)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_45a5e8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x80___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 128)
  ret %struct.Memory* %11
}














define %struct.Memory* @routine_movq___rcx__rdi_8____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jne_.L_45a560(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x10__MINUS0xc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 16)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_45a5d5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_shlq__0x2___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 2)
  ret %struct.Memory* %12
}




















define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jne_.L_45a5c2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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





define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_45a5c7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_jmpq_.L_45a567(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_45a5da(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_jmpq_.L_45a511(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_45a5ed(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_jmpq_.L_45a4b9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_45a600(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_jmpq_.L_45a462(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_movq__rax__0x6cc340(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6cc340_type* @G_0x6cc340 to i64), i64 %9)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_jne_.L_45a63b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4c2151___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4c2151_type* @G__0x4c2151 to i64))
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_movq__rax__0x6cc348(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6cc348_type* @G_0x6cc348 to i64), i64 %9)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_jne_.L_45a668(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4c2184___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4c2184_type* @G__0x4c2184 to i64))
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_movq__rax__0x6cc350(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6cc350_type* @G_0x6cc350 to i64), i64 %9)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_jne_.L_45a695(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4c21b5___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4c21b5_type* @G__0x4c21b5 to i64))
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_movq__rax__0x6cc358(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6cc358_type* @G_0x6cc358 to i64), i64 %9)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_jne_.L_45a6c2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4c21e6___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4c21e6_type* @G__0x4c21e6 to i64))
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_movq__rax__0x6cc360(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6cc360_type* @G_0x6cc360 to i64), i64 %9)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_jne_.L_45a6ef(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4c220e___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4c220e_type* @G__0x4c220e to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_jge_.L_45a871(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_movq_0x6cc340___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G_0x6cc340_type* @G_0x6cc340 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_jne_.L_45a746(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_movq_0x6cc348___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G_0x6cc348_type* @G_0x6cc348 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_jne_.L_45a78c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_movq_0x6cc350___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G_0x6cc350_type* @G_0x6cc350 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_jne_.L_45a7d2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_movq_0x6cc358___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G_0x6cc358_type* @G_0x6cc358 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_jne_.L_45a818(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_movq_0x6cc360___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G_0x6cc360_type* @G_0x6cc360 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_jne_.L_45a85e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jmpq_.L_45a863(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_45a6f6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_cmpl__0x2__0x984__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 2436
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_45a8f2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_45a8ed(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jg_.L_45a8da(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_0x6cc360___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x6cc360_type* @G_0x6cc360 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RDX
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








define %struct.Memory* @routine_jmpq_.L_45a89e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_45a8df(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_45a88d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_45a9a2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jge_.L_45a99d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_0x24__rdx____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 36
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %10)
  ret %struct.Memory* %13
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








define %struct.Memory* @routine_jge_.L_45a98a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_0x6cc360___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0x6cc360_type* @G_0x6cc360 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq___rsi__rdi_8____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RDI
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl__eax____rsi__rdi_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %RDI
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








define %struct.Memory* @routine_jmpq_.L_45a93e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_45a98f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_45a8f9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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

define %struct.Memory* @routine_addq__0x20___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 32)
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

